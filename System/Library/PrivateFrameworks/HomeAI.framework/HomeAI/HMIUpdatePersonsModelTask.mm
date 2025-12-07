@interface HMIUpdatePersonsModelTask
- (HMIUpdatePersonsModelTask)initWithTaskID:(int)d homeUUID:(id)iD sourceUUID:(id)uID dataSource:(id)source externalLibrary:(BOOL)library removeExcessFaceCrops:(BOOL)crops;
- (id)limitEnforcedSubsetFromPersons:(id)persons;
- (id)logIdentifier;
- (void)mainInsideAutoreleasePool;
- (void)subsampleFacesForPersons:(id)persons withFaceObservationsMap:(id)map dataSource:(id)source vnUUIDToFaceCropUUIDMap:(id)dMap;
@end

@implementation HMIUpdatePersonsModelTask

- (HMIUpdatePersonsModelTask)initWithTaskID:(int)d homeUUID:(id)iD sourceUUID:(id)uID dataSource:(id)source externalLibrary:(BOOL)library removeExcessFaceCrops:(BOOL)crops
{
  v13 = *&d;
  uIDCopy = uID;
  sourceCopy = source;
  v20.receiver = self;
  v20.super_class = HMIUpdatePersonsModelTask;
  v17 = [(HMIHomeTask *)&v20 initWithTaskID:v13 homeUUID:iD timeout:500.0];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_sourceUUID, uID);
    objc_storeStrong(&v18->_dataSource, source);
    v18->_externalLibrary = library;
    v18->_removeExcessFaceCrops = crops;
  }

  return v18;
}

- (void)mainInsideAutoreleasePool
{
  v157 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v152 = v6;
    _os_log_impl(&dword_22D12F000, v5, OS_LOG_TYPE_INFO, "%{public}@Fetching persons", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = [HMIFetchPersonsOperation alloc];
  dataSource = [(HMIUpdatePersonsModelTask *)selfCopy dataSource];
  v9 = [(HMIFetchPersonsOperation *)v7 initWithDataSource:?];

  [(HMFOperation *)v9 start];
  [(HMIFetchPersonsOperation *)v9 waitUntilFinished];
  error = [(HMFOperation *)v9 error];

  if (error)
  {
    v11 = objc_autoreleasePoolPush();
    v12 = selfCopy;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      error2 = [(HMFOperation *)v9 error];
      *buf = 138543618;
      v152 = v14;
      v153 = 2112;
      v154 = error2;
      _os_log_impl(&dword_22D12F000, v13, OS_LOG_TYPE_ERROR, "%{public}@Error fetching persons, error:%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    v16 = MEMORY[0x277CCA9B8];
    error3 = [(HMFOperation *)v9 error];
    v18 = v16;
    v19 = error3;
    v20 = [v18 hmiPrivateErrorWithCode:? underlyingError:?];
    [(HMFOperation *)v12 cancelWithError:?];
  }

  else
  {
    v127 = v9;
    persons = [(HMIFetchPersonsOperation *)v9 persons];
    v22 = objc_autoreleasePoolPush();
    v23 = selfCopy;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = HMFGetLogIdentifier();
      v26 = [persons count];
      *buf = 138543618;
      v152 = v25;
      v153 = 2048;
      v154 = v26;
      _os_log_impl(&dword_22D12F000, v24, OS_LOG_TYPE_INFO, "%{public}@Fetched %lu persons", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v22);
    v126 = persons;
    v27 = [(HMIUpdatePersonsModelTask *)v23 limitEnforcedSubsetFromPersons:?];
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v136 = objc_alloc_init(HMIFaceprinter);
    v128 = [MEMORY[0x277CBEB58] set];
    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    v147 = 0u;
    v148 = 0u;
    v149 = 0u;
    v150 = 0u;
    v20 = v27;
    v133 = [v20 countByEnumeratingWithState:? objects:? count:?];
    if (v133)
    {
      v134 = *v148;
      v131 = v23;
      v132 = v20;
LABEL_11:
      v28 = 0;
      while (1)
      {
        if (*v148 != v134)
        {
          objc_enumerationMutation(v20);
        }

        v29 = *(*(&v147 + 1) + 8 * v28);
        progressBlock = [(HMITask *)v23 progressBlock];

        if (progressBlock)
        {
          progressBlock2 = [(HMITask *)v23 progressBlock];
          progressBlock2[2](0.0);
        }

        isCancelled = [(HMIUpdatePersonsModelTask *)v23 isCancelled];
        v33 = objc_autoreleasePoolPush();
        v34 = v23;
        v35 = HMFGetOSLogHandle();
        v36 = os_log_type_enabled(v35, OS_LOG_TYPE_INFO);
        if (isCancelled)
        {
          break;
        }

        if (v36)
        {
          v37 = HMFGetLogIdentifier();
          *buf = 138543618;
          v152 = v37;
          v153 = 2112;
          v154 = v29;
          _os_log_impl(&dword_22D12F000, v35, OS_LOG_TYPE_INFO, "%{public}@Fetching face crops for person: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v33);
        v38 = [HMIFetchPersonFaceCropsOperation alloc];
        dataSource2 = [(HMIUpdatePersonsModelTask *)v34 dataSource];
        v40 = [HMIFetchPersonFaceCropsOperation initWithDataSource:v38 person:"initWithDataSource:person:"];

        [(HMFOperation *)v40 start];
        [(HMIFetchPersonFaceCropsOperation *)v40 waitUntilFinished];
        error4 = [(HMFOperation *)v40 error];

        if (error4)
        {
          v97 = objc_autoreleasePoolPush();
          v98 = v34;
          v99 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v99, OS_LOG_TYPE_ERROR))
          {
            v100 = HMFGetLogIdentifier();
            error5 = [(HMFOperation *)v40 error];
            *buf = 138543874;
            v152 = v100;
            v153 = 2112;
            v154 = v29;
            v155 = 2112;
            v156 = error5;
            _os_log_impl(&dword_22D12F000, v99, OS_LOG_TYPE_ERROR, "%{public}@Error fetching facecrops for person:%@, error:%@", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v97);
          v102 = MEMORY[0x277CCA9B8];
          error6 = [(HMFOperation *)v40 error];
          v104 = [v102 hmiPrivateErrorWithCode:? underlyingError:?];
          [(HMFOperation *)v98 cancelWithError:?];

LABEL_54:
          goto LABEL_71;
        }

        v138 = v28;
        personFaceCrops = [(HMIFetchPersonFaceCropsOperation *)v40 personFaceCrops];
        v43 = objc_autoreleasePoolPush();
        v44 = v34;
        v45 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
        {
          v46 = HMFGetLogIdentifier();
          v47 = [personFaceCrops count];
          *buf = 138543874;
          v152 = v46;
          v153 = 2048;
          v154 = v47;
          v155 = 2112;
          v156 = v29;
          _os_log_impl(&dword_22D12F000, v45, OS_LOG_TYPE_INFO, "%{public}@Fetched %lu face crops for person: %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v43);
        if ([personFaceCrops count] >= 0x1F)
        {
          [v128 addObject:?];
        }

        v48 = [personFaceCrops na_map:?];
        v49 = [HMIFetchFaceprintsForFaceCropsOperation alloc];
        dataSource3 = [(HMIUpdatePersonsModelTask *)v44 dataSource];
        v137 = v48;
        v51 = [HMIFetchFaceprintsForFaceCropsOperation initWithDataSource:v49 faceCropUUIDs:"initWithDataSource:faceCropUUIDs:"];

        [(HMFOperation *)v51 start];
        [(HMIFetchFaceprintsForFaceCropsOperation *)v51 waitUntilFinished];
        error7 = [(HMFOperation *)v51 error];

        if (error7)
        {
          v53 = objc_autoreleasePoolPush();
          v54 = v44;
          v55 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
          {
            v56 = HMFGetLogIdentifier();
            error8 = [(HMFOperation *)v51 error];
            *buf = 138543874;
            v152 = v56;
            v153 = 2112;
            v154 = v29;
            v155 = 2112;
            v156 = error8;
            _os_log_impl(&dword_22D12F000, v55, OS_LOG_TYPE_ERROR, "%{public}@Ignoring error fetching faceprints for person:%@, error:%@", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v53);
        }

        faceprints = [(HMIFetchFaceprintsForFaceCropsOperation *)v51 faceprints];
        v146 = 0;
        v59 = [HMIFaceprinter updatedFaceprintsForFaceCrops:v136 withExistingFaceprints:"updatedFaceprintsForFaceCrops:withExistingFaceprints:error:" error:?];
        v60 = 0;

        if (v59)
        {
          v135 = v60;
          allAtCurrentVersion = [v59 allAtCurrentVersion];
          v141 = MEMORY[0x277D85DD0];
          v142 = 3221225472;
          v143 = __54__HMIUpdatePersonsModelTask_mainInsideAutoreleasePool__block_invoke_155;
          v144 = &unk_2787557E0;
          v145 = dictionary2;
          v62 = [allAtCurrentVersion na_map:?];

          [dictionary setObject:? forKeyedSubscript:?];
          v63 = objc_autoreleasePoolPush();
          v64 = v44;
          v65 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
          {
            v66 = HMFGetLogIdentifier();
            createdAtCurrentVersion = [v59 createdAtCurrentVersion];
            *buf = 138543618;
            v152 = v66;
            v153 = 2112;
            v154 = createdAtCurrentVersion;
            _os_log_impl(&dword_22D12F000, v65, OS_LOG_TYPE_INFO, "%{public}@Storing newly created faceprints: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v63);
          createdAtCurrentVersion2 = [v59 createdAtCurrentVersion];
          v69 = [createdAtCurrentVersion2 count];

          if (v69)
          {
            v70 = [HMIStoreFaceprintsOperation alloc];
            dataSource4 = [(HMIUpdatePersonsModelTask *)v64 dataSource];
            createdAtCurrentVersion3 = [v59 createdAtCurrentVersion];
            v73 = [HMIStoreFaceprintsOperation initWithDataSource:v70 faceprints:"initWithDataSource:faceprints:"];

            [(HMFOperation *)v73 start];
            [(HMIStoreFaceprintsOperation *)v73 waitUntilFinished];
          }

          v74 = objc_autoreleasePoolPush();
          v75 = v64;
          v76 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v76, OS_LOG_TYPE_INFO))
          {
            v77 = HMFGetLogIdentifier();
            existingAtOtherVersions = [v59 existingAtOtherVersions];
            *buf = 138543618;
            v152 = v77;
            v153 = 2112;
            v154 = existingAtOtherVersions;
            _os_log_impl(&dword_22D12F000, v76, OS_LOG_TYPE_INFO, "%{public}@Removing existing faceprints at other versions: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v74);
          existingAtOtherVersions2 = [v59 existingAtOtherVersions];
          v80 = [existingAtOtherVersions2 count];

          if (v80)
          {
            existingAtOtherVersions3 = [v59 existingAtOtherVersions];
            v82 = [existingAtOtherVersions3 na_map:?];

            v83 = [HMIRemoveFaceprintsOperation alloc];
            dataSource5 = [(HMIUpdatePersonsModelTask *)v75 dataSource];
            v85 = [HMIRemoveFaceprintsOperation initWithDataSource:v83 faceprintUUIDs:"initWithDataSource:faceprintUUIDs:"];

            [(HMFOperation *)v85 start];
            [(HMIRemoveFaceprintsOperation *)v85 waitUntilFinished];
          }

          v86 = v145;
          v23 = v131;
          v20 = v132;
          v87 = v138;
          v60 = v135;
        }

        else
        {
          v88 = objc_autoreleasePoolPush();
          v89 = v44;
          v90 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
          {
            v91 = HMFGetLogIdentifier();
            *buf = 138543874;
            v152 = v91;
            v153 = 2112;
            v154 = v29;
            v155 = 2112;
            v156 = v60;
            _os_log_impl(&dword_22D12F000, v90, OS_LOG_TYPE_ERROR, "%{public}@Error faceprinting face crops for person:%@, error:%@", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v88);
          v86 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:? underlyingError:?];
          [(HMFOperation *)v89 cancelWithError:?];
          v23 = v131;
          v20 = v132;
          v87 = v138;
        }

        if (!v59)
        {
          goto LABEL_54;
        }

        v28 = (v87 + 1);
        if (v133 == v28)
        {
          v133 = [v20 countByEnumeratingWithState:? objects:? count:?];
          if (v133)
          {
            goto LABEL_11;
          }

          goto LABEL_44;
        }
      }

      if (v36)
      {
        v96 = HMFGetLogIdentifier();
        *buf = 138543362;
        v152 = v96;
        _os_log_impl(&dword_22D12F000, v35, OS_LOG_TYPE_INFO, "%{public}@Exiting early because task was canceled.", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v33);
      goto LABEL_54;
    }

LABEL_44:

    if ([(HMIUpdatePersonsModelTask *)v23 isCancelled])
    {
      v92 = objc_autoreleasePoolPush();
      v93 = v23;
      v94 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v94, OS_LOG_TYPE_INFO))
      {
        v95 = HMFGetLogIdentifier();
        *buf = 138543362;
        v152 = v95;
        _os_log_impl(&dword_22D12F000, v94, OS_LOG_TYPE_INFO, "%{public}@Exiting early because task was canceled.", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v92);
    }

    else
    {
      v105 = +[HMIPersonsModelManager sharedInstance];
      homeUUID = [(HMIHomeTask *)v23 homeUUID];
      sourceUUID = [(HMIUpdatePersonsModelTask *)v23 sourceUUID];
      [(HMIUpdatePersonsModelTask *)v23 isExternalLibrary];
      v140 = 0;
      v108 = [v105 buildPersonsModelForHomeUUID:? sourceUUID:? externalLibrary:? faceObservationsByPerson:? error:?];
      v109 = 0;

      if (v108)
      {
        if (!-[HMIUpdatePersonsModelTask isExternalLibrary](v23, "isExternalLibrary") && -[HMIUpdatePersonsModelTask shouldRemoveExcessFaceCrops](v23, "shouldRemoveExcessFaceCrops") && [v128 count])
        {
          dataSource6 = [(HMIUpdatePersonsModelTask *)v23 dataSource];
          v111 = [dataSource6 conformsToProtocol:?];

          if (v111)
          {
            dataSource7 = [(HMIUpdatePersonsModelTask *)v23 dataSource];
            [HMIUpdatePersonsModelTask subsampleFacesForPersons:v23 withFaceObservationsMap:"subsampleFacesForPersons:withFaceObservationsMap:dataSource:vnUUIDToFaceCropUUIDMap:" dataSource:? vnUUIDToFaceCropUUIDMap:?];
          }

          else
          {
            v118 = objc_autoreleasePoolPush();
            v119 = v23;
            v120 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v120, OS_LOG_TYPE_ERROR))
            {
              v121 = HMFGetLogIdentifier();
              *buf = 138543362;
              v152 = v121;
              _os_log_impl(&dword_22D12F000, v120, OS_LOG_TYPE_ERROR, "%{public}@Invalid configuration: isExternalLibrary is NO but self.dataSource does not conform to HMIHomePersonManagerDataSource protocol!", buf, 0xCu);
            }

            objc_autoreleasePoolPop(v118);
          }
        }

        v122 = objc_autoreleasePoolPush();
        v123 = v23;
        v124 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v124, OS_LOG_TYPE_INFO))
        {
          v125 = HMFGetLogIdentifier();
          *buf = 138543362;
          v152 = v125;
          _os_log_impl(&dword_22D12F000, v124, OS_LOG_TYPE_INFO, "%{public}@Successfully updated persons model", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v122);
        v139.receiver = v123;
        v139.super_class = HMIUpdatePersonsModelTask;
        [(HMFOperation *)&v139 finish];
      }

      else
      {
        v113 = objc_autoreleasePoolPush();
        v114 = v23;
        v115 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v115, OS_LOG_TYPE_ERROR))
        {
          v116 = HMFGetLogIdentifier();
          *buf = 138543618;
          v152 = v116;
          v153 = 2112;
          v154 = v109;
          _os_log_impl(&dword_22D12F000, v115, OS_LOG_TYPE_ERROR, "%{public}@Failed to generate persons model, error:%@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v113);
        v117 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:? underlyingError:?];
        [(HMFOperation *)v114 cancelWithError:?];
      }
    }

LABEL_71:
    v19 = v126;
    v9 = v127;
  }
}

id __54__HMIUpdatePersonsModelTask_mainInsideAutoreleasePool__block_invoke_155(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [HMIFaceUtilities faceObservationFromFaceprint:?];
  v5 = [v3 faceCropUUID];

  v6 = *(a1 + 32);
  v7 = [v4 uuid];
  [v6 setObject:? forKeyedSubscript:?];

  return v4;
}

- (id)limitEnforcedSubsetFromPersons:(id)persons
{
  v24 = *MEMORY[0x277D85DE8];
  personsCopy = persons;
  if ([personsCopy count] > 0x50)
  {
    v6 = [MEMORY[0x277CBEB58] set];
    v7 = [personsCopy na_filter:?];
    if ([v7 count] > 0x50)
    {
      v8 = objc_autoreleasePoolPush();
      selfCopy = self;
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = HMFGetLogIdentifier();
        v18 = 138543874;
        v19 = v11;
        v20 = 2048;
        v21 = [v7 count];
        v22 = 1024;
        v23 = 80;
        _os_log_impl(&dword_22D12F000, v10, OS_LOG_TYPE_ERROR, "%{public}@WARNING: Model has %lu named persons -- limit supported is %d", &v18, 0x1Cu);
      }

      objc_autoreleasePoolPop(v8);
      allObjects = [v7 allObjects];
      v13 = [allObjects subarrayWithRange:?];
      [v6 addObjectsFromArray:?];
    }

    else
    {
      [v6 unionSet:?];
    }

    if ([v6 count] <= 0x4F)
    {
      [v6 count];
      v14 = [personsCopy na_filter:?];
      allObjects2 = [v14 allObjects];
      v16 = [allObjects2 subarrayWithRange:?];
      [v6 addObjectsFromArray:?];
    }

    v5 = [v6 copy];
  }

  else
  {
    v5 = personsCopy;
  }

  return v5;
}

BOOL __60__HMIUpdatePersonsModelTask_limitEnforcedSubsetFromPersons___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 name];
  v3 = v2 != 0;

  return v3;
}

BOOL __60__HMIUpdatePersonsModelTask_limitEnforcedSubsetFromPersons___block_invoke_235(uint64_t a1, void *a2)
{
  v2 = [a2 name];
  v3 = v2 == 0;

  return v3;
}

- (void)subsampleFacesForPersons:(id)persons withFaceObservationsMap:(id)map dataSource:(id)source vnUUIDToFaceCropUUIDMap:(id)dMap
{
  v37 = *MEMORY[0x277D85DE8];
  personsCopy = persons;
  mapCopy = map;
  sourceCopy = source;
  dMapCopy = dMap;
  v14 = [MEMORY[0x277CBEB58] set];
  v28 = MEMORY[0x277D85DD0];
  v15 = mapCopy;
  v29 = v15;
  selfCopy = self;
  v16 = dMapCopy;
  v31 = v16;
  v17 = v14;
  v32 = v17;
  [personsCopy na_each:{v28, 3221225472, __113__HMIUpdatePersonsModelTask_subsampleFacesForPersons_withFaceObservationsMap_dataSource_vnUUIDToFaceCropUUIDMap___block_invoke, &unk_278755870}];
  v18 = [v17 count];
  v19 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v21 = HMFGetOSLogHandle();
  v22 = v21;
  if (v18)
  {
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v23 = HMFGetLogIdentifier();
      v24 = [v17 count];
      *buf = 138543618;
      v34 = v23;
      v35 = 2048;
      v36 = v24;
      _os_log_impl(&dword_22D12F000, v22, OS_LOG_TYPE_INFO, "%{public}@Deleting a total of %lu face crops after subsampling", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v19);
    v25 = [HMIRemoveFaceCropsOperation initWithDataSource:"initWithDataSource:faceCropUUIDs:" faceCropUUIDs:?];
    [(HMFOperation *)v25 start];
    [(HMIRemoveFaceCropsOperation *)v25 waitUntilFinished];
  }

  else
  {
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v26 = HMFGetLogIdentifier();
      v27 = [personsCopy count];
      *buf = 138543618;
      v34 = v26;
      v35 = 2048;
      v36 = v27;
      _os_log_impl(&dword_22D12F000, v22, OS_LOG_TYPE_ERROR, "%{public}@Selected %lu persons for subsampling faces but did not choose any face crops to delete!", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v19);
  }
}

void __113__HMIUpdatePersonsModelTask_subsampleFacesForPersons_withFaceObservationsMap_dataSource_vnUUIDToFaceCropUUIDMap___block_invoke(id *a1, void *a2)
{
  v57 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [a1[4] objectForKeyedSubscript:?];
  v5 = +[HMIPersonsModelManager sharedInstance];
  v6 = [v5 personsModelsByHome];
  v7 = [a1[5] homeUUID];
  v8 = [v6 objectForKeyedSubscript:?];
  v9 = [a1[5] sourceUUID];
  v10 = [v8 objectForKeyedSubscript:?];

  v11 = [v10 visionPersonsModel];
  v12 = [v3 UUID];
  v13 = [v12 UUIDString];
  v50 = 0;
  v14 = [v11 trainingFaceObservationsForPersonWithUniqueIdentifier:? canceller:? error:?];
  v15 = v50;

  if (v14)
  {
    if ([v14 count])
    {
      v44 = v4;
      if ([v14 count] >= 0x15)
      {
        v16 = objc_autoreleasePoolPush();
        v17 = a1[5];
        v18 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v19 = HMFGetLogIdentifier();
          v20 = [v14 count];
          *buf = 138543874;
          v52 = v19;
          v53 = 1024;
          *v54 = 20;
          *&v54[4] = 2048;
          *&v54[6] = v20;
          _os_log_impl(&dword_22D12F000, v18, OS_LOG_TYPE_ERROR, "%{public}@Expected subsampling to leave no more than %d, but got %lu faces selected. Enforcing limit.", buf, 0x1Cu);
        }

        objc_autoreleasePoolPop(v16);
        v21 = [v14 subarrayWithRange:?];

        v14 = v21;
      }

      v43 = v15;
      v22 = objc_autoreleasePoolPush();
      v23 = a1[5];
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v25 = HMFGetLogIdentifier();
        v26 = [v14 count];
        v27 = [v44 count];
        *buf = 138544130;
        v52 = v25;
        v53 = 2048;
        *v54 = v26;
        *&v54[8] = 2048;
        *&v54[10] = v27;
        v55 = 2112;
        v56 = v3;
        _os_log_impl(&dword_22D12F000, v24, OS_LOG_TYPE_INFO, "%{public}@Subsampling will retain %lu from a total of %lu faces for %@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v22);
      v28 = MEMORY[0x277CBEB98];
      v29 = [v14 na_map:?];
      v30 = [v28 setWithArray:?];

      v4 = v44;
      v31 = [v44 na_map:?];
      v32 = [v31 na_setByRemovingObjectsFromSet:?];
      v45 = MEMORY[0x277D85DD0];
      v46 = 3221225472;
      v47 = __113__HMIUpdatePersonsModelTask_subsampleFacesForPersons_withFaceObservationsMap_dataSource_vnUUIDToFaceCropUUIDMap___block_invoke_3;
      v48 = &unk_278755848;
      v49 = a1[6];
      v33 = [v32 na_map:?];

      [a1[7] unionSet:?];
      v15 = v43;
    }

    else
    {
      v38 = objc_autoreleasePoolPush();
      v39 = a1[5];
      v40 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v42 = v41 = v4;
        *buf = 138543618;
        v52 = v42;
        v53 = 2112;
        *v54 = v3;
        _os_log_impl(&dword_22D12F000, v40, OS_LOG_TYPE_ERROR, "%{public}@Fetched 0 training faces for %@, this would remove all face crops! Skipping face crop removal.", buf, 0x16u);

        v4 = v41;
      }

      objc_autoreleasePoolPop(v38);
    }
  }

  else
  {
    v34 = objc_autoreleasePoolPush();
    v35 = a1[5];
    v36 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      v37 = HMFGetLogIdentifier();
      *buf = 138543874;
      v52 = v37;
      v53 = 2112;
      *v54 = v3;
      *&v54[8] = 2112;
      *&v54[10] = v15;
      _os_log_impl(&dword_22D12F000, v36, OS_LOG_TYPE_ERROR, "%{public}@Error fetching faces to subsample for %@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v34);
  }
}

- (id)logIdentifier
{
  v3 = MEMORY[0x277CCACA8];
  sourceUUID = [(HMIUpdatePersonsModelTask *)self sourceUUID];
  isExternalLibrary = [(HMIUpdatePersonsModelTask *)self isExternalLibrary];
  v6 = @"home";
  if (isExternalLibrary)
  {
    v6 = @"external";
  }

  v7 = [v3 stringWithFormat:sourceUUID, v6];

  return v7;
}

@end