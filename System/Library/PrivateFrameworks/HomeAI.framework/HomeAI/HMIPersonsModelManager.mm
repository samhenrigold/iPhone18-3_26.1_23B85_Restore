@interface HMIPersonsModelManager
+ (BOOL)persistModel:(id)model toPath:(id)path error:(id *)error;
+ (BOOL)persistTorsoToFaceCrop:(id)crop forHomeUUID:(id)d error:(id *)error;
+ (BOOL)persistTorsoprinterVersionForHomeUUID:(id)d error:(id *)error;
+ (BOOL)persistUserDefinedPersonLinks:(id)links forHomeUUID:(id)d error:(id *)error;
+ (HMIPersonsModelManager)sharedInstance;
+ (id)faceObservationFromTorsoprint:(id)torsoprint;
+ (id)getModelStoragePathForHome:(id)home error:(id *)error;
+ (id)getModelStoragePathForModel:(id)model error:(id *)error;
+ (id)getRootModelStoragePathWithError:(id *)error;
+ (id)getTorsoModelStoragePathForHomeUUID:(id)d error:(id *)error;
+ (id)getTorsoSubdirectoryPathForHomeUUID:(id)d error:(id *)error;
+ (id)getTorsoToFaceCropStoragePathForHomeUUID:(id)d error:(id *)error;
+ (id)getTorsoprinterVersionStoragePathForHomeUUID:(id)d error:(id *)error;
+ (id)getUserDefinedPersonLinksStoragePathForHomeUUID:(id)d error:(id *)error;
+ (id)loadModelAtPath:(id)path error:(id *)error;
+ (id)loadTorsoToFaceCrop:(id)crop error:(id *)error;
+ (id)loadTorsoprinterVersion:(id)version error:(id *)error;
+ (id)loadUserDefinedPersonLinksForHomeUUID:(id)d error:(id *)error;
+ (id)minimumUUIDInEquivalencyCell:(id)cell;
+ (id)personsModelWithFaceObservationsByID:(id)d error:(id *)error;
- (BOOL)_hasTorsoprinterVersionChangedForHome:(id)home;
- (BOOL)_isTorsoFaceCropMapStale:(id)stale;
- (BOOL)_resetStaleTorsoStateForHome:(id)home torsoToFaceCropMap:(id)map;
- (BOOL)buildPersonsModelForHomeUUID:(id)d sourceUUID:(id)iD externalLibrary:(BOOL)library faceObservationsByPerson:(id)person error:(id *)error;
- (BOOL)loadModelsWithError:(id *)error;
- (BOOL)removePersonsModelForHomeUUID:(id)d sourceUUID:(id)iD error:(id *)error;
- (BOOL)updateTorsoModelForHome:(id)home torsoAnnotations:(id)annotations error:(id *)error;
- (HMIPersonsModelManager)init;
- (id)buildEquivalencyMapForPersonsModels:(id)models userDefinedPersonLinks:(id)links error:(id *)error;
- (id)equivalencyCellForPerson:(id)person homeUUID:(id)d error:(id *)error;
- (id)faceCropFromTorsoModelForHomeUUID:(id)d personUUID:(id)iD sourceUUID:(id)uID;
- (id)homePersonsModelForHomeWithUUID:(id)d;
- (id)linkedPredictionsForPrediction:(id)prediction homeUUID:(id)d error:(id *)error;
- (id)loadPersonsModelFromURL:(id)l externalLibrary:(BOOL)library homeUUID:(id)d error:(id *)error;
- (id)modelURLsFromPath:(id)path error:(id *)error;
- (id)personsModelWithFaceObservations:(id)observations error:(id *)error;
- (id)predictHomePersonFromFaceObservation:(id)observation homeUUID:(id)d error:(id *)error;
- (id)predictPersonFromFaceObservation:(id)observation homeUUID:(id)d error:(id *)error;
- (id)predictPersonFromTorsoObservation:(id)observation homeUUID:(id)d error:(id *)error;
- (id)summaryForHomeUUID:(id)d error:(id *)error;
- (void)_loadTorsoDataForHomeUUID:(id)d intoTorsoModelsByHome:(id)home torsoToFaceCropByHome:(id)byHome;
- (void)_reset;
- (void)reset;
- (void)timerDidFire:(id)fire;
@end

@implementation HMIPersonsModelManager

- (HMIPersonsModelManager)init
{
  v13.receiver = self;
  v13.super_class = HMIPersonsModelManager;
  v2 = [(HMIPersonsModelManager *)&v13 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:? options:?];
    watchdogTimer = v3->_watchdogTimer;
    v3->_watchdogTimer = v4;

    [(HMFTimer *)v3->_watchdogTimer setDelegate:?];
    personsModelsByHome = v3->_personsModelsByHome;
    v3->_personsModelsByHome = 0;

    equivalencyTablesByHome = v3->_equivalencyTablesByHome;
    v3->_equivalencyTablesByHome = 0;

    torsoModelsByHome = v3->_torsoModelsByHome;
    v3->_torsoModelsByHome = 0;

    torsoToFaceCropByHome = v3->_torsoToFaceCropByHome;
    v3->_torsoToFaceCropByHome = 0;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    userDefinedPersonLinksByHome = v3->_userDefinedPersonLinksByHome;
    v3->_userDefinedPersonLinksByHome = dictionary;
  }

  return v3;
}

+ (HMIPersonsModelManager)sharedInstance
{
  if (sharedInstance_onceToken_0 != -1)
  {
    +[HMIPersonsModelManager sharedInstance];
  }

  v3 = sharedInstance_sharedInstance_0;

  return v3;
}

uint64_t __40__HMIPersonsModelManager_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(HMIPersonsModelManager);
  v1 = sharedInstance_sharedInstance_0;
  sharedInstance_sharedInstance_0 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (id)buildEquivalencyMapForPersonsModels:(id)models userDefinedPersonLinks:(id)links error:(id *)error
{
  linksCopy = links;
  modelsCopy = models;
  v8 = [HMIPersonsModelEquivalencyTable initWithPersonsModels:"initWithPersonsModels:userDefinedPersonLinks:error:" userDefinedPersonLinks:? error:?];

  return v8;
}

- (id)homePersonsModelForHomeWithUUID:(id)d
{
  dCopy = d;
  personsModelsByHome = [(HMIPersonsModelManager *)self personsModelsByHome];
  v6 = [personsModelsByHome objectForKeyedSubscript:?];

  if (v6)
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x3032000000;
    v12 = __Block_byref_object_copy__6;
    v13 = __Block_byref_object_dispose__6;
    v14 = 0;
    [v6 enumerateKeysAndObjectsUsingBlock:?];
    v7 = v10[5];
    _Block_object_dispose(&v9, 8);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __58__HMIPersonsModelManager_homePersonsModelForHomeWithUUID___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v7 = a3;
  if (([v7 isExternalLibrary] & 1) == 0)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
    *a4 = 1;
  }
}

- (id)personsModelWithFaceObservations:(id)observations error:(id *)error
{
  v4 = MEMORY[0x277CBEB38];
  observationsCopy = observations;
  dictionary = [v4 dictionary];
  v6 = dictionary;
  [observationsCopy enumerateKeysAndObjectsUsingBlock:?];

  v7 = [HMIPersonsModelManager personsModelWithFaceObservationsByID:"personsModelWithFaceObservationsByID:error:" error:?];

  return v7;
}

void __65__HMIPersonsModelManager_personsModelWithFaceObservations_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v9 = [a3 allObjects];
  v6 = *(a1 + 32);
  v7 = [v5 UUID];

  v8 = [v7 UUIDString];
  [v6 setObject:? forKeyedSubscript:?];
}

+ (id)personsModelWithFaceObservationsByID:(id)d error:(id *)error
{
  dCopy = d;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__6;
  v20 = __Block_byref_object_dispose__6;
  v21 = 0;
  v6 = objc_alloc_init(MEMORY[0x277CE2D80]);
  [v6 setMaximumIdentities:?];
  [v6 setMaximumTrainingFaceprintsPerIdentity:?];
  v7 = [objc_alloc(MEMORY[0x277CE2D68]) initWithConfiguration:?];
  v15 = MEMORY[0x277D85DD0];
  v8 = v7;
  [dCopy enumerateKeysAndObjectsUsingBlock:{v15, 3221225472, __69__HMIPersonsModelManager_personsModelWithFaceObservationsByID_error___block_invoke, &unk_278754C20}];
  v9 = v17[5];
  if (v9)
  {
    v10 = v9;
    v11 = v10;
    if (error)
    {
      v12 = v10;
      *error = v11;
    }

    HMIErrorLogC(v11);

    v13 = 0;
  }

  else
  {
    v13 = v8;
  }

  _Block_object_dispose(&v16, 8);

  return v13;
}

void __69__HMIPersonsModelManager_personsModelWithFaceObservationsByID_error___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = *(a1 + 32);
  v14 = 0;
  v8 = [v7 addFaceObservations:? toPersonWithUniqueIdentifier:? error:?];
  v9 = v14;
  if ((v8 & 1) == 0)
  {
    *a4 = 1;
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:v6];
    v11 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:? description:? underlyingError:?];
    v12 = *(*(a1 + 40) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;
  }
}

- (BOOL)buildPersonsModelForHomeUUID:(id)d sourceUUID:(id)iD externalLibrary:(BOOL)library faceObservationsByPerson:(id)person error:(id *)error
{
  v121 = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  personCopy = person;
  if (library)
  {
    v13 = 0;
  }

  else
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    allKeys = [personCopy allKeys];
    v114 = iDCopy;
    v16 = dictionary;
    [allKeys na_each:?];

    userDefinedPersonLinksByHome = [(HMIPersonsModelManager *)self userDefinedPersonLinksByHome];
    v18 = [userDefinedPersonLinksByHome objectForKeyedSubscript:?];

    if ([v18 isEqualToDictionary:?])
    {
      v13 = 0;
    }

    else
    {
      v19 = objc_autoreleasePoolPush();
      selfCopy = self;
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        v22 = HMFGetLogIdentifier();
        *buf = 138543618;
        v116 = v22;
        v117 = 2112;
        v118 = dCopy;
        _os_log_impl(&dword_22D12F000, v21, OS_LOG_TYPE_DEBUG, "%{public}@Writing updated userDefinedPersonLinksByHome[%@] to disk", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v19);
      userDefinedPersonLinksByHome2 = [(HMIPersonsModelManager *)selfCopy userDefinedPersonLinksByHome];
      v24 = [userDefinedPersonLinksByHome2 mutableCopy];

      v25 = [v16 copy];
      [NSDictionary setObject:v24 forKeyedSubscript:"setObject:forKeyedSubscript:"];

      userDefinedPersonLinksByHome = selfCopy->_userDefinedPersonLinksByHome;
      selfCopy->_userDefinedPersonLinksByHome = v24;
      v27 = v24;

      [HMIPersonsModelManager persistUserDefinedPersonLinks:"persistUserDefinedPersonLinks:forHomeUUID:error:" forHomeUUID:? error:?];
      v13 = 0;
    }
  }

  v28 = [HMIPersonsModelManager personsModelWithFaceObservations:"personsModelWithFaceObservations:error:" error:?];
  v29 = v13;

  if (v28)
  {
    v111 = [HMIPersonsModel initWithPersonsModel:"initWithPersonsModel:homeUUID:sourceUUID:externalLibrary:" homeUUID:? sourceUUID:? externalLibrary:?];
    os_unfair_lock_lock_with_options();
    v30 = [(HMIPersonsModelManager *)self loadModelsWithError:?];
    v31 = v29;

    if ((v30 & 1) == 0)
    {
      v60 = v31;
      v33 = v60;
      if (error)
      {
        v61 = v60;
        *error = v33;
      }

      HMIErrorLog(self, v33);
      v59 = 0;
      v29 = v33;
      goto LABEL_51;
    }

    v32 = [(HMIPersonsModelManager *)self homePersonsModelForHomeWithUUID:?];
    v33 = v32;
    if (library || !v32 || ([v32 sourceUUID], v34 = objc_claimAutoreleasedReturnValue(), v35 = objc_msgSend(v34, "isEqual:"), v34, (v35 & 1) != 0))
    {
      v36 = v31;
    }

    else
    {
      v70 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v71 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v71, OS_LOG_TYPE_INFO))
      {
        v72 = HMFGetLogIdentifier();
        sourceUUID = [v33 sourceUUID];
        *buf = 138543874;
        v116 = v72;
        v117 = 2112;
        v118 = dCopy;
        v119 = 2112;
        v120 = sourceUUID;
        _os_log_impl(&dword_22D12F000, v71, OS_LOG_TYPE_INFO, "%{public}@Stale Home VNPersonsModel with homeUUID: %@ sourceUUID: %@ detected, attempting to remove...", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v70);
      v110 = [HMIPersonsModelManager getModelStoragePathForModel:"getModelStoragePathForModel:error:" error:?];
      v38 = 0;
      if (!v110)
      {
        v84 = MEMORY[0x277CCACA8];
        sourceUUID2 = [v33 sourceUUID];
        v108 = [v84 stringWithFormat:dCopy, sourceUUID2];

        v86 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:? description:? underlyingError:?];

        v87 = v86;
        v43 = v87;
        if (error)
        {
          v88 = v87;
          *error = v43;
        }

        HMIErrorLog(selfCopy2, v43);
        goto LABEL_47;
      }

      defaultManager = [MEMORY[0x277CCAA00] defaultManager];
      v75 = [defaultManager fileExistsAtPath:?];

      if (v75)
      {
        defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
        v77 = [defaultManager2 removeItemAtPath:? error:?];
        v78 = v38;

        if ((v77 & 1) == 0)
        {
          v98 = MEMORY[0x277CCACA8];
          sourceUUID3 = [v33 sourceUUID];
          v108 = [v98 stringWithFormat:dCopy, sourceUUID3];

          v100 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:? description:? underlyingError:?];

          v101 = v100;
          v43 = v101;
          if (error)
          {
            v102 = v101;
            *error = v43;
          }

          HMIErrorLog(selfCopy2, v43);
          v59 = 0;
          v38 = v78;
          goto LABEL_48;
        }

        v38 = v78;
      }

      else
      {
        v109 = objc_autoreleasePoolPush();
        v90 = selfCopy2;
        v91 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v91, OS_LOG_TYPE_INFO))
        {
          v92 = HMFGetLogIdentifier();
          *buf = 138543362;
          v116 = v92;
          _os_log_impl(&dword_22D12F000, v91, OS_LOG_TYPE_INFO, "%{public}@Stale model path no longer on disk, proceeding with building persons model...", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v109);
      }

      personsModelsByHome = selfCopy2->_personsModelsByHome;
      selfCopy2->_personsModelsByHome = 0;

      equivalencyTablesByHome = selfCopy2->_equivalencyTablesByHome;
      selfCopy2->_equivalencyTablesByHome = 0;

      v95 = [(HMIPersonsModelManager *)selfCopy2 loadModelsWithError:?];
      v36 = v31;

      if ((v95 & 1) == 0)
      {
        v96 = v36;
        v29 = v96;
        if (error)
        {
          v97 = v96;
          *error = v29;
        }

        HMIErrorLog(selfCopy2, v29);
        v59 = 0;

        goto LABEL_50;
      }
    }

    v37 = [HMIPersonsModelManager getModelStoragePathForModel:"getModelStoragePathForModel:error:" error:?];
    v38 = 0;
    v110 = v37;
    if (v37)
    {
      v39 = [HMIPersonsModelManager persistModel:"persistModel:toPath:error:" toPath:? error:?];
      v106 = v38;

      if (v39)
      {
        personsModelsByHome = [(HMIPersonsModelManager *)self personsModelsByHome];
        v41 = [personsModelsByHome objectForKeyedSubscript:?];

        if (v41)
        {
          v42 = v41;
        }

        else
        {
          v42 = MEMORY[0x277CBEC10];
        }

        v43 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:?];
        [v43 setObject:? forKeyedSubscript:?];
        v108 = v42;
        v44 = objc_alloc(MEMORY[0x277CBEB38]);
        personsModelsByHome2 = [(HMIPersonsModelManager *)self personsModelsByHome];
        v105 = [v44 initWithDictionary:?];

        v46 = [v43 copy];
        [v105 setObject:? forKeyedSubscript:?];

        v47 = [v105 copy];
        v48 = self->_personsModelsByHome;
        self->_personsModelsByHome = v47;

        personsModelsByHome3 = [(HMIPersonsModelManager *)self personsModelsByHome];
        v50 = [personsModelsByHome3 objectForKeyedSubscript:?];
        userDefinedPersonLinksByHome3 = [(HMIPersonsModelManager *)self userDefinedPersonLinksByHome];
        v52 = [userDefinedPersonLinksByHome3 objectForKeyedSubscript:?];
        v104 = [HMIPersonsModelManager buildEquivalencyMapForPersonsModels:"buildEquivalencyMapForPersonsModels:userDefinedPersonLinks:error:" userDefinedPersonLinks:? error:?];
        v53 = v36;
        v54 = v36;
        v29 = v53;

        v55 = objc_alloc(MEMORY[0x277CBEB38]);
        equivalencyTablesByHome = [(HMIPersonsModelManager *)self equivalencyTablesByHome];
        v57 = [v55 initWithDictionary:?];

        if (v104)
        {
          [v57 setObject:? forKeyedSubscript:?];
        }

        else
        {
          [v57 removeObjectForKey:?];
        }

        v79 = [v57 copy];
        v80 = self->_equivalencyTablesByHome;
        self->_equivalencyTablesByHome = v79;

        context = objc_autoreleasePoolPush();
        selfCopy3 = self;
        v82 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v82, OS_LOG_TYPE_INFO))
        {
          v83 = HMFGetLogIdentifier();
          *buf = 138543874;
          v116 = v83;
          v117 = 2112;
          v118 = dCopy;
          v119 = 2112;
          v120 = iDCopy;
          _os_log_impl(&dword_22D12F000, v82, OS_LOG_TYPE_INFO, "%{public}@Persisted VNPersonsModel for homeUUID: %@ sourceUUID: %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(context);
        v59 = 1;
        v38 = v106;
        goto LABEL_49;
      }

      v66 = [MEMORY[0x277CCACA8] stringWithFormat:dCopy, iDCopy, v37];
      v67 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:? description:? underlyingError:?];
      v108 = v66;

      v68 = v67;
      v43 = v68;
      if (error)
      {
        v69 = v68;
        *error = v43;
      }

      HMIErrorLog(self, v43);
      v59 = 0;
      v38 = v106;
LABEL_48:
      v29 = v43;
LABEL_49:

LABEL_50:
LABEL_51:

      os_unfair_lock_unlock(&self->_lock);
      goto LABEL_52;
    }

    iDCopy = [MEMORY[0x277CCACA8] stringWithFormat:dCopy, iDCopy];
    v63 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:? description:? underlyingError:?];
    v108 = iDCopy;

    v64 = v63;
    v43 = v64;
    if (error)
    {
      v65 = v64;
      *error = v43;
    }

    HMIErrorLog(self, v43);
LABEL_47:
    v59 = 0;
    goto LABEL_48;
  }

  if (error)
  {
    v58 = v29;
    *error = v29;
  }

  HMIErrorLog(self, v29);
  v59 = 0;
LABEL_52:

  return v59;
}

void __113__HMIPersonsModelManager_buildPersonsModelForHomeUUID_sourceUUID_externalLibrary_faceObservationsByPerson_error___block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [v9 personLinks];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [HMIPersonSourceUUIDPair alloc];
    v6 = [v9 UUID];
    v7 = [HMIPersonSourceUUIDPair initWithPersonUUID:v5 sourceUUID:"initWithPersonUUID:sourceUUID:"];

    v8 = [v9 personLinks];
    [*(a1 + 40) setObject:? forKeyedSubscript:?];
  }
}

- (BOOL)removePersonsModelForHomeUUID:(id)d sourceUUID:(id)iD error:(id *)error
{
  v81 = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  os_unfair_lock_lock_with_options();
  v10 = [(HMIPersonsModelManager *)self loadModelsWithError:?];
  v11 = 0;
  v12 = v11;
  if (v10)
  {
    personsModelsByHome = [(HMIPersonsModelManager *)self personsModelsByHome];
    v14 = [personsModelsByHome objectForKeyedSubscript:?];

    if (v14)
    {
      v15 = [v14 objectForKeyedSubscript:?];
      if (v15)
      {
        v70 = v15;
        v71 = [HMIPersonsModelManager getModelStoragePathForModel:"getModelStoragePathForModel:error:" error:?];
        v72 = 0;
        if (v71)
        {
          if (([v70 isExternalLibrary] & 1) == 0)
          {
            v68 = [HMIPersonsModelManager getUserDefinedPersonLinksStoragePathForHomeUUID:"getUserDefinedPersonLinksStoragePathForHomeUUID:error:" error:?];
            v16 = 0;
            defaultManager = [MEMORY[0x277CCAA00] defaultManager];
            v18 = [defaultManager removeItemAtPath:? error:?];
            v66 = v16;

            context = objc_autoreleasePoolPush();
            selfCopy = self;
            if (v18)
            {
              v20 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
              {
                v21 = HMFGetLogIdentifier();
                *buf = 138543618;
                v76 = v21;
                v77 = 2112;
                v78 = dCopy;
                _os_log_impl(&dword_22D12F000, v20, OS_LOG_TYPE_INFO, "%{public}@Removed userDefinedPersonLinksByHome for homeUUID: %@", buf, 0x16u);
              }
            }

            else
            {
              v20 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
              {
                v34 = HMFGetLogIdentifier();
                *buf = 138543618;
                v76 = v34;
                v77 = 2112;
                v78 = v66;
                _os_log_impl(&dword_22D12F000, v20, OS_LOG_TYPE_ERROR, "%{public}@Error removing user defined person links file: %@", buf, 0x16u);
              }
            }

            objc_autoreleasePoolPop(context);
            userDefinedPersonLinksByHome = [(HMIPersonsModelManager *)selfCopy userDefinedPersonLinksByHome];
            v36 = [userDefinedPersonLinksByHome mutableCopy];

            [v36 removeObjectForKey:?];
            v37 = [v36 copy];
            userDefinedPersonLinksByHome = selfCopy->_userDefinedPersonLinksByHome;
            selfCopy->_userDefinedPersonLinksByHome = v37;
          }

          defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
          v40 = [defaultManager2 removeItemAtPath:? error:?];
          v67 = v72;

          if (v40)
          {
            v41 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:?];
            [v41 removeObjectForKey:?];
            v69 = v41;
            v42 = objc_alloc(MEMORY[0x277CBEB38]);
            personsModelsByHome2 = [(HMIPersonsModelManager *)self personsModelsByHome];
            v32 = [v42 initWithDictionary:?];

            v44 = [v69 copy];
            [v32 setObject:? forKeyedSubscript:?];

            v45 = [v32 copy];
            personsModelsByHome = self->_personsModelsByHome;
            self->_personsModelsByHome = v45;

            personsModelsByHome3 = [(HMIPersonsModelManager *)self personsModelsByHome];
            v47 = [personsModelsByHome3 objectForKeyedSubscript:?];
            userDefinedPersonLinksByHome2 = [(HMIPersonsModelManager *)self userDefinedPersonLinksByHome];
            v49 = [userDefinedPersonLinksByHome2 objectForKeyedSubscript:?];
            contexta = [HMIPersonsModelManager buildEquivalencyMapForPersonsModels:"buildEquivalencyMapForPersonsModels:userDefinedPersonLinks:error:" userDefinedPersonLinks:? error:?];
            v63 = v12;

            v50 = objc_alloc(MEMORY[0x277CBEB38]);
            equivalencyTablesByHome = [(HMIPersonsModelManager *)self equivalencyTablesByHome];
            v52 = [v50 initWithDictionary:?];

            if (contexta)
            {
              [v52 setObject:? forKeyedSubscript:?];
            }

            else
            {
              [v52 removeObjectForKey:?];
            }

            v57 = [v52 copy];
            equivalencyTablesByHome = self->_equivalencyTablesByHome;
            self->_equivalencyTablesByHome = v57;

            v74 = objc_autoreleasePoolPush();
            selfCopy2 = self;
            v60 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
            {
              v61 = HMFGetLogIdentifier();
              *buf = 138543874;
              v76 = v61;
              v77 = 2112;
              v78 = dCopy;
              v79 = 2112;
              v80 = iDCopy;
              _os_log_impl(&dword_22D12F000, v60, OS_LOG_TYPE_INFO, "%{public}@Removed VNPersonsModel for homeUUID: %@ sourceUUID:%@", buf, 0x20u);
            }

            objc_autoreleasePoolPop(v74);
            v24 = 1;
            v72 = v67;
            v12 = v63;
            goto LABEL_32;
          }

          v53 = [MEMORY[0x277CCACA8] stringWithFormat:dCopy, iDCopy, v71];
          v54 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:? description:? underlyingError:?];
          v69 = v53;

          v55 = v54;
          v32 = v55;
          if (error)
          {
            v56 = v55;
            *error = v32;
          }

          HMIErrorLog(self, v32);
          v24 = 0;
          v72 = v67;
        }

        else
        {
          iDCopy = [MEMORY[0x277CCACA8] stringWithFormat:dCopy, iDCopy];
          v30 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:? description:? underlyingError:?];
          v69 = iDCopy;

          v31 = v30;
          v32 = v31;
          if (error)
          {
            v33 = v31;
            *error = v32;
          }

          HMIErrorLog(self, v32);
          v24 = 0;
        }

        v12 = v32;
LABEL_32:

        goto LABEL_33;
      }
    }

    v25 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      v28 = HMFGetLogIdentifier();
      *buf = 138543874;
      v76 = v28;
      v77 = 2112;
      v78 = dCopy;
      v79 = 2112;
      v80 = iDCopy;
      _os_log_impl(&dword_22D12F000, v27, OS_LOG_TYPE_INFO, "%{public}@Did not remove VNPersonsModel for homeUUID: %@ sourceUUID: %@, no model found", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v25);
    v24 = 1;
  }

  else
  {
    v22 = v11;
    v14 = v22;
    if (error)
    {
      v23 = v22;
      *error = v14;
    }

    HMIErrorLog(self, v14);
    v24 = 0;
    v12 = v14;
  }

LABEL_33:

  os_unfair_lock_unlock(&self->_lock);
  return v24;
}

- (id)predictHomePersonFromFaceObservation:(id)observation homeUUID:(id)d error:(id *)error
{
  observationCopy = observation;
  dCopy = d;
  os_unfair_lock_lock_with_options();
  LOBYTE(d) = [(HMIPersonsModelManager *)self loadModelsWithError:?];
  v10 = 0;
  v11 = v10;
  if (d)
  {
    v12 = [(HMIPersonsModelManager *)self homePersonsModelForHomeWithUUID:?];
    v13 = v12;
    if (v12)
    {
      visionPersonsModel = [v12 visionPersonsModel];
      v15 = [visionPersonsModel predictPersonFromFaceObservation:? limit:? canceller:? error:?];
      v16 = observationCopy;
      v17 = v11;

      if (v15)
      {
        v38 = v15;
        firstObject = [v15 firstObject];
        v19 = objc_alloc(MEMORY[0x277CCAD78]);
        predictedPersonUniqueIdentifier = [firstObject predictedPersonUniqueIdentifier];
        v21 = [v19 initWithUUIDString:?];

        v22 = MEMORY[0x277CCABB0];
        [firstObject confidence];
        v23 = [v22 numberWithFloat:?];
        v24 = [HMIPersonsModelPrediction alloc];
        sourceUUID = [v13 sourceUUID];
        v26 = [HMIPersonsModelPrediction initWithSourceUUID:v24 personUUID:"initWithSourceUUID:personUUID:confidence:linkedEntityUUID:" confidence:? linkedEntityUUID:?];

        v27 = v38;
      }

      else
      {
        v27 = 0;
        firstObject = [MEMORY[0x277CCACA8] stringWithFormat:?];
        v34 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:? description:? underlyingError:?];

        v35 = v34;
        v21 = v35;
        if (error)
        {
          v36 = v35;
          *error = v21;
        }

        HMIErrorLog(self, v21);
        v26 = 0;
        v17 = v21;
      }
    }

    else
    {
      v30 = [MEMORY[0x277CCACA8] stringWithFormat:dCopy];
      v31 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:? description:?];
      v27 = v30;

      v32 = v31;
      firstObject = v32;
      if (error)
      {
        v33 = v32;
        *error = firstObject;
      }

      v16 = observationCopy;
      HMIErrorLog(self, firstObject);
      v26 = 0;
      v17 = firstObject;
    }
  }

  else
  {
    v28 = v10;
    v13 = v28;
    if (error)
    {
      v29 = v28;
      *error = v13;
    }

    v16 = observationCopy;
    HMIErrorLog(self, v13);
    v26 = 0;
    v17 = v13;
  }

  os_unfair_lock_unlock(&self->_lock);

  return v26;
}

- (id)equivalencyCellForPerson:(id)person homeUUID:(id)d error:(id *)error
{
  v40 = *MEMORY[0x277D85DE8];
  personCopy = person;
  dCopy = d;
  os_unfair_lock_lock_with_options();
  v9 = [(HMIPersonsModelManager *)self loadModelsWithError:?];
  v10 = 0;
  v11 = v10;
  if (v9)
  {
    equivalencyTablesByHome = [(HMIPersonsModelManager *)self equivalencyTablesByHome];
    v13 = [equivalencyTablesByHome objectForKeyedSubscript:?];

    if (v13)
    {
      v14 = v11;
LABEL_9:
      v27 = [v13 equivalencyCellForPerson:?];
      v18 = [v27 copy];

      v16 = v13;
      goto LABEL_10;
    }

    personsModelsByHome = [(HMIPersonsModelManager *)self personsModelsByHome];
    v20 = [personsModelsByHome objectForKeyedSubscript:?];
    userDefinedPersonLinksByHome = [(HMIPersonsModelManager *)self userDefinedPersonLinksByHome];
    v22 = [userDefinedPersonLinksByHome objectForKeyedSubscript:?];
    v13 = [HMIPersonsModelManager buildEquivalencyMapForPersonsModels:"buildEquivalencyMapForPersonsModels:userDefinedPersonLinks:error:" userDefinedPersonLinks:? error:?];
    v14 = v11;

    v23 = objc_alloc(MEMORY[0x277CBEB38]);
    equivalencyTablesByHome2 = [(HMIPersonsModelManager *)self equivalencyTablesByHome];
    v16 = [v23 initWithDictionary:?];

    if (v13)
    {
      [v16 setObject:? forKeyedSubscript:?];
      v25 = [v16 copy];
      equivalencyTablesByHome = self->_equivalencyTablesByHome;
      self->_equivalencyTablesByHome = v25;

      goto LABEL_9;
    }

    v29 = objc_autoreleasePoolPush();
    selfCopy = self;
    v31 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = HMFGetLogIdentifier();
      *buf = 138543874;
      v35 = v32;
      v36 = 2112;
      v37 = dCopy;
      v38 = 2112;
      v39 = v14;
      _os_log_impl(&dword_22D12F000, v31, OS_LOG_TYPE_ERROR, "%{public}@Unable to build equivalency map for homeUUID: %@, error: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v29);
    v18 = 0;
  }

  else
  {
    v15 = v10;
    v16 = v15;
    if (error)
    {
      v17 = v15;
      *error = v16;
    }

    HMIErrorLog(self, v16);
    v18 = 0;
    v14 = v16;
  }

LABEL_10:

  os_unfair_lock_unlock(&self->_lock);

  return v18;
}

- (id)predictPersonFromFaceObservation:(id)observation homeUUID:(id)d error:(id *)error
{
  v88 = *MEMORY[0x277D85DE8];
  observationCopy = observation;
  dCopy = d;
  v76 = 0;
  v77 = &v76;
  v78 = 0x3032000000;
  v79 = __Block_byref_object_copy__6;
  v80 = __Block_byref_object_dispose__6;
  v81 = 0;
  v72 = 0;
  v73 = &v72;
  v74 = 0x2020000000;
  v75 = 1;
  v66 = 0;
  v67 = &v66;
  v68 = 0x3032000000;
  v69 = __Block_byref_object_copy__6;
  v70 = __Block_byref_object_dispose__6;
  v71 = 0;
  v60 = 0;
  v61 = &v60;
  v62 = 0x3032000000;
  v63 = __Block_byref_object_copy__6;
  v64 = __Block_byref_object_dispose__6;
  v65 = 0;
  os_unfair_lock_lock_with_options();
  v10 = v77;
  obj = v77[5];
  v11 = [(HMIPersonsModelManager *)self loadModelsWithError:?];
  objc_storeStrong(v10 + 5, obj);
  if ((v11 & 1) == 0)
  {
    v25 = v77[5];
    v26 = v25;
    if (error)
    {
      v27 = v25;
      *error = v26;
    }

    HMIErrorLog(self, v26);

    goto LABEL_16;
  }

  personsModelsByHome = [(HMIPersonsModelManager *)self personsModelsByHome];
  v13 = [personsModelsByHome objectForKeyedSubscript:?];

  if (!v13)
  {
    v28 = MEMORY[0x277CCACA8];
    personsModelsByHome2 = [(HMIPersonsModelManager *)self personsModelsByHome];
    v30 = @"not";
    if (!personsModelsByHome2)
    {
      v30 = &stru_284057FB8;
    }

    v31 = [v28 stringWithFormat:dCopy, v30];

    v32 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:? description:?];
    v33 = v77[5];
    v77[5] = v32;

    v34 = v77[5];
    v35 = v34;
    if (error)
    {
      v36 = v34;
      *error = v35;
    }

    HMIErrorLog(self, v35);

LABEL_16:
    os_unfair_lock_unlock(&self->_lock);
LABEL_17:
    v37 = 0;
    goto LABEL_18;
  }

  equivalencyTablesByHome = [(HMIPersonsModelManager *)self equivalencyTablesByHome];
  v15 = [equivalencyTablesByHome objectForKeyedSubscript:?];

  v16 = 0x277CBE000;
  if (!v15)
  {
    userDefinedPersonLinksByHome = [(HMIPersonsModelManager *)self userDefinedPersonLinksByHome];
    v18 = [userDefinedPersonLinksByHome objectForKeyedSubscript:?];

    if (!v18)
    {
      v18 = MEMORY[0x277CBEC10];
    }

    v19 = v77;
    v58 = v77[5];
    v15 = [HMIPersonsModelManager buildEquivalencyMapForPersonsModels:"buildEquivalencyMapForPersonsModels:userDefinedPersonLinks:error:" userDefinedPersonLinks:? error:?];
    objc_storeStrong(v19 + 5, v58);
    v20 = objc_alloc(MEMORY[0x277CBEB38]);
    equivalencyTablesByHome2 = [(HMIPersonsModelManager *)self equivalencyTablesByHome];
    v22 = [v20 initWithDictionary:?];

    if (v15)
    {
      [v22 setObject:? forKeyedSubscript:?];
      v23 = [v22 copy];
      equivalencyTablesByHome = self->_equivalencyTablesByHome;
      self->_equivalencyTablesByHome = v23;
    }

    else
    {
      context = objc_autoreleasePoolPush();
      selfCopy = self;
      v39 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        v40 = HMFGetLogIdentifier();
        v41 = v77[5];
        *buf = 138543874;
        v83 = v40;
        v84 = 2112;
        v85 = dCopy;
        v86 = 2112;
        v87 = v41;
        v51 = v40;
        _os_log_impl(&dword_22D12F000, v39, OS_LOG_TYPE_ERROR, "%{public}@Unable to build equivalency map for homeUUID: %@, error: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(context);
    }

    v16 = 0x277CBE000uLL;
  }

  dictionary = [*(v16 + 2872) dictionary];
  v43 = v67[5];
  v67[5] = dictionary;

  v44 = [MEMORY[0x277CBEB58] set];
  v45 = v61[5];
  v61[5] = v44;

  v55 = observationCopy;
  v56 = dCopy;
  v57 = v15;
  [v13 enumerateKeysAndObjectsUsingBlock:?];

  os_unfair_lock_unlock(&self->_lock);
  if ((v73[3] & 1) == 0)
  {
    v48 = v77[5];
    v49 = v48;
    if (error)
    {
      v50 = v48;
      *error = v49;
    }

    HMIErrorLog(self, v49);

    goto LABEL_17;
  }

  v46 = [MEMORY[0x277CBEB58] set];
  v47 = v67[5];
  v54 = v46;
  [v47 enumerateKeysAndObjectsUsingBlock:?];
  [v54 unionSet:?];
  v37 = [v54 copy];

LABEL_18:
  _Block_object_dispose(&v60, 8);

  _Block_object_dispose(&v66, 8);
  _Block_object_dispose(&v72, 8);
  _Block_object_dispose(&v76, 8);

  return v37;
}

void __74__HMIPersonsModelManager_predictPersonFromFaceObservation_homeUUID_error___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v53 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = [v8 visionPersonsModel];
  v10 = [v9 predictPersonFromFaceObservation:? limit:? canceller:? error:?];
  v11 = 0;

  if (v10)
  {
    v12 = [v10 firstObject];
    if (v12)
    {
      v45 = v11;
      v46 = v8;
      v13 = objc_alloc(MEMORY[0x277CCAD78]);
      v14 = [v12 predictedPersonUniqueIdentifier];
      v15 = [v13 initWithUUIDString:?];

      v44 = v15;
      v16 = [HMIPersonSourceUUIDPair initWithPersonUUID:"initWithPersonUUID:sourceUUID:" sourceUUID:?];
      v17 = [*(a1 + 48) equivalencyCellForPerson:?];
      if (!v17)
      {
        v18 = objc_autoreleasePoolPush();
        v19 = *(a1 + 56);
        v20 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          v21 = HMFGetLogIdentifier();
          v22 = *(a1 + 48);
          *buf = 138543874;
          v48 = v21;
          if (v22)
          {
            v23 = @" not";
          }

          else
          {
            v23 = &stru_284057FB8;
          }

          v49 = 2112;
          v50 = v16;
          v51 = 2112;
          v52 = v23;
          _os_log_impl(&dword_22D12F000, v20, OS_LOG_TYPE_ERROR, "%{public}@Failure to lookup equivalency cell for %@ (equivalencyCellForHome is%@ nil)", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v18);
        v17 = [MEMORY[0x277CBEB98] setWithObject:?];
      }

      v43 = v16;
      v24 = [*(*(*(a1 + 88) + 8) + 40) objectForKeyedSubscript:?];
      v25 = v24;
      if (!v24 || ([v24 confidence], v26 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v26, "floatValue"), v28 = v27, objc_msgSend(v12, "confidence"), v30 = v29, v26, v28 < v30))
      {
        v31 = objc_alloc(MEMORY[0x277CCAD78]);
        v32 = [v12 predictedPersonUniqueIdentifier];
        v33 = [v31 initWithUUIDString:?];

        v34 = MEMORY[0x277CCABB0];
        [v12 confidence];
        v35 = [v34 numberWithFloat:?];
        if (v25)
        {
          [v25 linkedEntityUUID];
        }

        else
        {
          [HMIPersonsModelManager minimumUUIDInEquivalencyCell:?];
        }
        v41 = ;
        v42 = [HMIPersonsModelPrediction initWithSourceUUID:"initWithSourceUUID:personUUID:confidence:linkedEntityUUID:" personUUID:? confidence:? linkedEntityUUID:?];
        [*(*(*(a1 + 88) + 8) + 40) setObject:? forKeyedSubscript:?];
      }

      v11 = v45;
      v8 = v46;
      v40 = v44;
    }

    else
    {
      v39 = *(*(*(a1 + 80) + 8) + 40);
      v40 = [HMIPersonsModelPrediction initWithSourceUUID:"initWithSourceUUID:personUUID:confidence:linkedEntityUUID:" personUUID:? confidence:? linkedEntityUUID:?];
      [v39 addObject:?];
    }
  }

  else
  {
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:*(a1 + 40), v7];
    v36 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:? description:? underlyingError:?];
    v37 = *(*(a1 + 64) + 8);
    v38 = *(v37 + 40);
    *(v37 + 40) = v36;

    *(*(*(a1 + 72) + 8) + 24) = 0;
    *a4 = 1;
  }
}

void __74__HMIPersonsModelManager_predictPersonFromFaceObservation_homeUUID_error___block_invoke_280(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __74__HMIPersonsModelManager_predictPersonFromFaceObservation_homeUUID_error___block_invoke_2;
  v10 = &unk_278754C70;
  v11 = v5;
  v12 = *(a1 + 32);
  v6 = v5;
  [a2 enumerateObjectsUsingBlock:{v7, 3221225472, __74__HMIPersonsModelManager_predictPersonFromFaceObservation_homeUUID_error___block_invoke_2, &unk_278754C70}];
}

void __74__HMIPersonsModelManager_predictPersonFromFaceObservation_homeUUID_error___block_invoke_2(uint64_t a1, void *a2)
{
  v13 = a2;
  v3 = [v13 personUUID];
  v4 = [*(a1 + 32) personUUID];
  v5 = [v3 isEqual:?];

  if ((v5 & 1) == 0)
  {
    v6 = *(a1 + 40);
    v7 = [HMIPersonsModelPrediction alloc];
    v8 = [v13 sourceUUID];
    v9 = [v13 personUUID];
    v10 = [*(a1 + 32) confidence];
    v11 = [*(a1 + 32) linkedEntityUUID];
    v12 = [HMIPersonsModelPrediction initWithSourceUUID:v7 personUUID:"initWithSourceUUID:personUUID:confidence:linkedEntityUUID:" confidence:? linkedEntityUUID:?];
    [v6 addObject:?];
  }

  [*(a1 + 40) addObject:?];
}

+ (id)faceObservationFromTorsoprint:(id)torsoprint
{
  v3 = MEMORY[0x277CE2CE0];
  torsoprintCopy = torsoprint;
  v5 = [v3 alloc];
  data = [torsoprintCopy data];

  [data bytes];
  v7 = [v5 initWithData:? elementCount:? elementType:? lengthInBytes:? confidence:? requestRevision:?];

  v8 = [MEMORY[0x277CE2CD0] faceObservationWithRequestRevision:? boundingBox:? andAlignedBoundingBox:?];
  [v8 setFaceprint:?];

  return v8;
}

- (BOOL)updateTorsoModelForHome:(id)home torsoAnnotations:(id)annotations error:(id *)error
{
  v100 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  annotationsCopy = annotations;
  os_unfair_lock_lock_with_options();
  v91 = 0;
  LOBYTE(annotations) = [(HMIPersonsModelManager *)self loadModelsWithError:?];
  v9 = 0;
  v10 = v9;
  if (annotations)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    torsoModelsByHome = [(HMIPersonsModelManager *)self torsoModelsByHome];
    v14 = [torsoModelsByHome objectForKeyedSubscript:?];

    if (!v14)
    {
      v70 = dictionary2;
LABEL_9:
      v22 = [dictionary mutableCopy];
      v23 = [v70 mutableCopy];
      v77 = MEMORY[0x277D85DD0];
      v78 = 3221225472;
      v79 = __73__HMIPersonsModelManager_updateTorsoModelForHome_torsoAnnotations_error___block_invoke_290;
      v80 = &unk_278754D80;
      selfCopy = self;
      v24 = v22;
      v82 = v24;
      v68 = v23;
      v83 = v68;
      [annotationsCopy na_each:?];
      v76 = v10;
      v69 = [HMIPersonsModelManager personsModelWithFaceObservationsByID:"personsModelWithFaceObservationsByID:error:" error:?];
      v25 = v10;

      if (!v69)
      {
        v54 = v25;
        v10 = v54;
        if (error)
        {
          v55 = v54;
          *error = v10;
        }

        HMIErrorLog(self, v10);

        v21 = 0;
        goto LABEL_34;
      }

      v72 = 0;
      v73 = &v72;
      v74 = 0x2020000000;
      v75 = 0;
      allValues = [v24 allValues];
      [allValues na_each:?];

      v27 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v29 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        v30 = HMFGetLogIdentifier();
        v31 = [v24 count];
        v32 = *(v73 + 6);
        *buf = 138544130;
        v93 = v30;
        v94 = 2048;
        v95 = v31;
        v96 = 1024;
        v97 = v32;
        v98 = 2112;
        v99 = homeCopy;
        _os_log_impl(&dword_22D12F000, v29, OS_LOG_TYPE_INFO, "%{public}@Created new torso model with %lu persons and %d total torsoprints for home: %@", buf, 0x26u);
      }

      objc_autoreleasePoolPop(v27);
      v67 = [HMIPersonsModelManager getTorsoModelStoragePathForHomeUUID:"getTorsoModelStoragePathForHomeUUID:error:" error:?];
      v33 = v25;

      v34 = [HMIPersonsModelManager persistModel:"persistModel:toPath:error:" toPath:? error:?];
      v35 = v33;

      if (v34)
      {
        v36 = [HMIPersonsModelManager persistTorsoToFaceCrop:"persistTorsoToFaceCrop:forHomeUUID:error:" forHomeUUID:? error:?];
        v37 = v35;

        if (v36)
        {
          v38 = [HMIPersonsModelManager persistTorsoprinterVersionForHomeUUID:"persistTorsoprinterVersionForHomeUUID:error:" error:?];
          v10 = v37;

          if (v38)
          {
            v39 = objc_autoreleasePoolPush();
            v40 = selfCopy2;
            v41 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
            {
              v42 = HMFGetLogIdentifier();
              *buf = 138543618;
              v93 = v42;
              v94 = 2112;
              v95 = homeCopy;
              _os_log_impl(&dword_22D12F000, v41, OS_LOG_TYPE_INFO, "%{public}@Successfully updated torso model and face crop map for home: %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v39);
            v43 = MEMORY[0x277CBEB38];
            torsoModelsByHome2 = [(HMIPersonsModelManager *)v40 torsoModelsByHome];
            v45 = [v43 dictionaryWithDictionary:?];

            v46 = MEMORY[0x277CBEB38];
            torsoToFaceCropByHome = [(HMIPersonsModelManager *)v40 torsoToFaceCropByHome];
            v48 = [v46 dictionaryWithDictionary:?];

            [v45 setObject:? forKeyedSubscript:?];
            v49 = [v68 copy];
            [v48 setObject:? forKeyedSubscript:?];

            v50 = [v45 copy];
            torsoModelsByHome = v40->_torsoModelsByHome;
            v40->_torsoModelsByHome = v50;

            v52 = [v48 copy];
            torsoToFaceCropByHome = v40->_torsoToFaceCropByHome;
            v40->_torsoToFaceCropByHome = v52;

            v21 = 1;
            goto LABEL_33;
          }

          v64 = v10;
          v45 = v64;
          if (error)
          {
            v65 = v64;
            *error = v45;
          }
        }

        else
        {
          v62 = v37;
          v45 = v62;
          if (error)
          {
            v63 = v62;
            *error = v45;
          }
        }
      }

      else
      {
        v56 = v35;
        v45 = v56;
        if (error)
        {
          v57 = v56;
          *error = v45;
        }
      }

      HMIErrorLog(selfCopy2, v45);
      v21 = 0;
      v10 = v45;
LABEL_33:

      _Block_object_dispose(&v72, 8);
LABEL_34:

      goto LABEL_35;
    }

    torsoToFaceCropByHome2 = [(HMIPersonsModelManager *)self torsoToFaceCropByHome];
    v70 = [torsoToFaceCropByHome2 objectForKeyedSubscript:?];

    if (v70)
    {
      torsoModelsByHome3 = [(HMIPersonsModelManager *)self torsoModelsByHome];
      v17 = [torsoModelsByHome3 objectForKeyedSubscript:?];

      personUniqueIdentifiers = [v17 personUniqueIdentifiers];
      v84 = MEMORY[0x277D85DD0];
      v85 = 3221225472;
      v86 = __73__HMIPersonsModelManager_updateTorsoModelForHome_torsoAnnotations_error___block_invoke;
      v87 = &unk_278754CE0;
      v88 = v17;
      selfCopy3 = self;
      v90 = dictionary;
      [personUniqueIdentifiers na_each:?];

      goto LABEL_9;
    }

    v58 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v60 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
    {
      v61 = HMFGetLogIdentifier();
      *buf = 138543618;
      v93 = v61;
      v94 = 2112;
      v95 = homeCopy;
      _os_log_impl(&dword_22D12F000, v60, OS_LOG_TYPE_ERROR, "%{public}@Found nil torsoToFaceCrop for home %@ with non-nil model!", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v58);
    v21 = 0;
  }

  else
  {
    v19 = v9;
    dictionary = v19;
    if (error)
    {
      v20 = v19;
      *error = dictionary;
    }

    HMIErrorLog(self, dictionary);
    v21 = 0;
    v10 = dictionary;
  }

LABEL_35:

  os_unfair_lock_unlock(&self->_lock);
  return v21;
}

void __73__HMIPersonsModelManager_updateTorsoModelForHome_torsoAnnotations_error___block_invoke(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v20 = 0;
  v5 = [v4 trainingFaceObservationsForPersonWithUniqueIdentifier:? canceller:? error:?];
  v6 = v20;
  if (v5)
  {
    v7 = [v5 sortedArrayUsingComparator:?];

    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 40);
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [v7 count];
      *buf = 138543874;
      v22 = v11;
      v23 = 2112;
      v24 = v3;
      v25 = 2048;
      v26 = v12;
      _os_log_impl(&dword_22D12F000, v10, OS_LOG_TYPE_INFO, "%{public}@Person %@ has %lu torsoprints", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
    v13 = [[HMIPersonSourceUUIDPair alloc] initWithUUIDPairString:?];
    v14 = *(a1 + 48);
    v15 = [(HMIPersonSourceUUIDPair *)v13 UUIDPairString];
    [v14 setObject:? forKeyedSubscript:?];
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    v17 = *(a1 + 40);
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543874;
      v22 = v19;
      v23 = 2112;
      v24 = v3;
      v25 = 2112;
      v26 = v6;
      _os_log_impl(&dword_22D12F000, v18, OS_LOG_TYPE_ERROR, "%{public}@Unable to retrieve torsoprints for person: %@, %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v16);
  }
}

uint64_t __73__HMIPersonsModelManager_updateTorsoModelForHome_torsoAnnotations_error___block_invoke_285(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 faceId];
  if (v6 >= [v5 faceId])
  {
    v8 = [v4 faceId];
    v7 = v8 > [v5 faceId];
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

void __73__HMIPersonsModelManager_updateTorsoModelForHome_torsoAnnotations_error___block_invoke_290(uint64_t a1, void *a2)
{
  v61 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 faceRecognition];
  v43 = [v3 torsoprints];
  v5 = [v4 predictedLinkedEntityUUIDs];
  if (v5 && ([v4 predictedLinkedEntityUUIDs], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "hmf_isEmpty"), v6, v5, !v7))
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v58 = __Block_byref_object_copy__6;
    v59 = __Block_byref_object_dispose__6;
    v60 = 0;
    v12 = [v4 predictedLinkedEntityUUIDs];
    v50 = MEMORY[0x277D85DD0];
    v51 = 3221225472;
    v52 = __73__HMIPersonsModelManager_updateTorsoModelForHome_torsoAnnotations_error___block_invoke_291;
    v53 = &unk_278754D08;
    v54 = buf;
    [v12 na_each:?];

    v44 = 0;
    v45 = &v44;
    v46 = 0x3032000000;
    v47 = __Block_byref_object_copy__6;
    v48 = __Block_byref_object_dispose__6;
    v49 = 0;
    v13 = [v4 classifications];
    [v13 enumerateObjectsUsingBlock:?];

    if (v45[5])
    {
      v14 = [HMIPersonSourceUUIDPair alloc];
      v15 = [v45[5] personUUID];
      v16 = [v45[5] sourceUUID];
      v17 = [HMIPersonSourceUUIDPair initWithPersonUUID:v14 sourceUUID:"initWithPersonUUID:sourceUUID:"];

      *v55 = 0;
      *&v55[8] = v55;
      *&v55[16] = 0x2020000000;
      v18 = *(a1 + 40);
      v19 = [(HMIPersonSourceUUIDPair *)v17 UUIDPairString];
      v20 = [v18 objectForKeyedSubscript:?];
      if ([v20 hmf_isEmpty])
      {
        v21 = 0;
      }

      else
      {
        v26 = *(a1 + 40);
        v27 = [(HMIPersonSourceUUIDPair *)v17 UUIDPairString];
        v28 = [v26 objectForKeyedSubscript:?];
        v29 = [v28 lastObject];
        v21 = [v29 faceId];
      }

      v56 = v21;
      v30 = [v43 na_map:?];
      v31 = *(a1 + 40);
      v32 = [(HMIPersonSourceUUIDPair *)v17 UUIDPairString];
      v33 = [v31 objectForKeyedSubscript:?];

      v34 = *(a1 + 40);
      v35 = [(HMIPersonSourceUUIDPair *)v17 UUIDPairString];
      if (v33)
      {
        v36 = [v34 objectForKeyedSubscript:?];
        v37 = [v36 arrayByAddingObjectsFromArray:?];
        v38 = *(a1 + 40);
        v39 = [(HMIPersonSourceUUIDPair *)v17 UUIDPairString];
        [v38 setObject:? forKeyedSubscript:?];
      }

      else
      {
        [v34 setObject:? forKeyedSubscript:?];
      }

      v40 = [*(a1 + 48) objectForKeyedSubscript:?];
      v41 = v40 == 0;

      if (v41)
      {
        v42 = [v4 faceCrop];
        [*(a1 + 48) setObject:? forKeyedSubscript:?];
      }

      _Block_object_dispose(v55, 8);
    }

    else
    {
      v22 = objc_autoreleasePoolPush();
      v23 = *(a1 + 32);
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = HMFGetLogIdentifier();
        *v55 = 138543618;
        *&v55[4] = v25;
        *&v55[12] = 2112;
        *&v55[14] = v4;
        _os_log_impl(&dword_22D12F000, v24, OS_LOG_TYPE_ERROR, "%{public}@Received torso annotation with no classification corresponding to the linkedEntityUUID: %@", v55, 0x16u);
      }

      objc_autoreleasePoolPop(v22);
    }

    _Block_object_dispose(&v44, 8);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 32);
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543618;
      *&buf[4] = v11;
      *&buf[12] = 2112;
      *&buf[14] = v4;
      _os_log_impl(&dword_22D12F000, v10, OS_LOG_TYPE_ERROR, "%{public}@Received torso annotation with no identifier: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
  }
}

void __73__HMIPersonsModelManager_updateTorsoModelForHome_torsoAnnotations_error___block_invoke_291(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  v10 = v4;
  if (v6)
  {
    v7 = [v6 UUIDString];
    v8 = [v10 UUIDString];
    v9 = [v7 compare:?];

    if (v9 != -1)
    {
      goto LABEL_5;
    }

    v5 = *(*(a1 + 32) + 8);
  }

  objc_storeStrong((v5 + 40), a2);
LABEL_5:
}

void __73__HMIPersonsModelManager_updateTorsoModelForHome_torsoAnnotations_error___block_invoke_2(uint64_t a1, void *a2, _BYTE *a3)
{
  v8 = a2;
  v6 = [v8 personUUID];
  v7 = [v6 isEqual:?];

  if (v7)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a3 = 1;
  }
}

id __73__HMIPersonsModelManager_updateTorsoModelForHome_torsoAnnotations_error___block_invoke_294(uint64_t a1, uint64_t a2)
{
  v3 = [HMIPersonsModelManager faceObservationFromTorsoprint:?];
  ++*(*(*(a1 + 32) + 8) + 24);
  [v3 setFaceId:?];

  return v3;
}

void *__73__HMIPersonsModelManager_updateTorsoModelForHome_torsoAnnotations_error___block_invoke_2_297(uint64_t a1, void *a2)
{
  result = [a2 count];
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

- (id)faceCropFromTorsoModelForHomeUUID:(id)d personUUID:(id)iD sourceUUID:(id)uID
{
  dCopy = d;
  iDCopy = iD;
  uIDCopy = uID;
  os_unfair_lock_lock_with_options();
  v11 = [HMIPersonSourceUUIDPair initWithPersonUUID:"initWithPersonUUID:sourceUUID:" sourceUUID:?];
  torsoToFaceCropByHome = [(HMIPersonsModelManager *)self torsoToFaceCropByHome];
  v13 = [torsoToFaceCropByHome objectForKeyedSubscript:?];
  v14 = [v13 objectForKeyedSubscript:?];

  os_unfair_lock_unlock(&self->_lock);

  return v14;
}

- (BOOL)_resetStaleTorsoStateForHome:(id)home torsoToFaceCropMap:(id)map
{
  v34 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  mapCopy = map;
  if (![(HMIPersonsModelManager *)self _isTorsoFaceCropMapStale:?]&& ![(HMIPersonsModelManager *)self _hasTorsoprinterVersionChangedForHome:?])
  {
    v26 = 0;
    goto LABEL_13;
  }

  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543362;
    v29 = v11;
    _os_log_impl(&dword_22D12F000, v10, OS_LOG_TYPE_INFO, "%{public}@Resetting torso model and wiping data", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v8);
  v12 = [HMIPersonsModelManager getTorsoModelStoragePathForHomeUUID:"getTorsoModelStoragePathForHomeUUID:error:" error:?];
  v13 = 0;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v15 = [defaultManager removeItemAtPath:? error:?];
  v16 = v13;

  v17 = objc_autoreleasePoolPush();
  v18 = selfCopy;
  v19 = HMFGetOSLogHandle();
  v20 = v19;
  if (v15)
  {
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543618;
      v29 = v21;
      v30 = 2112;
      v31 = v12;
      v22 = "%{public}@Successfully deleted torso data at path: %@";
      v23 = v20;
      v24 = OS_LOG_TYPE_INFO;
      v25 = 22;
LABEL_10:
      _os_log_impl(&dword_22D12F000, v23, v24, v22, buf, v25);
    }
  }

  else if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    v21 = HMFGetLogIdentifier();
    *buf = 138543874;
    v29 = v21;
    v30 = 2112;
    v31 = v12;
    v32 = 2112;
    v33 = v16;
    v22 = "%{public}@Failed to delete torso directory at path: %@, error: %@";
    v23 = v20;
    v24 = OS_LOG_TYPE_ERROR;
    v25 = 32;
    goto LABEL_10;
  }

  objc_autoreleasePoolPop(v17);
  v26 = 1;
LABEL_13:

  return v26;
}

- (BOOL)_hasTorsoprinterVersionChangedForHome:(id)home
{
  v17 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  v5 = [HMIPersonsModelManager loadTorsoprinterVersion:"loadTorsoprinterVersion:error:" error:?];
  v6 = 0;
  if (v5 && (+[HMITorsoprinter currentModelUUID](HMITorsoprinter, "currentModelUUID"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v5 hmf_isEqualToUUID:?], v7, (v8 & 1) != 0))
  {
    v9 = 0;
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543362;
      v16 = v13;
      _os_log_impl(&dword_22D12F000, v12, OS_LOG_TYPE_INFO, "%{public}@Torso model version on disk doesn't match current version", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
    v9 = 1;
  }

  return v9;
}

- (BOOL)_isTorsoFaceCropMapStale:(id)stale
{
  v20 = *MEMORY[0x277D85DE8];
  staleCopy = stale;
  v5 = staleCopy;
  if (staleCopy)
  {
    allValues = [staleCopy allValues];
    if ([allValues count])
    {
      [MEMORY[0x277CBEAA8] date];
      v16[0] = 0;
      v16[1] = v16;
      v16[2] = 0x3032000000;
      v16[3] = __Block_byref_object_copy__6;
      v7 = v16[4] = __Block_byref_object_dispose__6;
      v17 = v7;
      [allValues na_each:?];
      currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
      v9 = [currentCalendar isDate:? inSameDayAsDate:?];

      if ((v9 & 1) == 0)
      {
        v10 = objc_autoreleasePoolPush();
        selfCopy = self;
        v12 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          v13 = HMFGetLogIdentifier();
          *buf = 138543362;
          v19 = v13;
          _os_log_impl(&dword_22D12F000, v12, OS_LOG_TYPE_INFO, "%{public}@Found stale torso_to_facecrop file", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v10);
      }

      _Block_object_dispose(v16, 8);

      v14 = v9 ^ 1;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

void __51__HMIPersonsModelManager__isTorsoFaceCropMapStale___block_invoke(uint64_t a1, void *a2)
{
  v6 = [a2 dateCreated];
  v3 = [v6 earlierDate:?];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (id)predictPersonFromTorsoObservation:(id)observation homeUUID:(id)d error:(id *)error
{
  v50 = *MEMORY[0x277D85DE8];
  observationCopy = observation;
  dCopy = d;
  os_unfair_lock_lock_with_options();
  LOBYTE(d) = [(HMIPersonsModelManager *)self loadModelsWithError:?];
  v8 = 0;
  v9 = v8;
  if (d)
  {
    torsoModelsByHome = [(HMIPersonsModelManager *)self torsoModelsByHome];
    v11 = [torsoModelsByHome objectForKeyedSubscript:?];

    if (v11)
    {
      v38 = [HMIPersonsModelManager faceObservationFromTorsoprint:?];
      v12 = [v11 predictPersonFromFaceObservation:? limit:? canceller:? error:?];
      v39 = v12;
      v40 = 0;
      if (v12)
      {
        firstObject = [v12 firstObject];
        predictedPersonUniqueIdentifier = [firstObject predictedPersonUniqueIdentifier];
        v14 = objc_autoreleasePoolPush();
        selfCopy = self;
        v16 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          v17 = HMFGetLogIdentifier();
          [firstObject confidence];
          *buf = 138543874;
          v45 = v17;
          v46 = 2112;
          v47 = predictedPersonUniqueIdentifier;
          v48 = 2048;
          v49 = v18;
          _os_log_impl(&dword_22D12F000, v16, OS_LOG_TYPE_INFO, "%{public}@Torso model predicted person %@ with confidence %f", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v14);
        v19 = [[HMIPersonSourceUUIDPair alloc] initWithUUIDPairString:?];
        v20 = [HMIPersonsModelPrediction alloc];
        sourceUUID = [(HMIPersonSourceUUIDPair *)v19 sourceUUID];
        personUUID = [(HMIPersonSourceUUIDPair *)v19 personUUID];
        v23 = MEMORY[0x277CCABB0];
        [firstObject confidence];
        v24 = [v23 numberWithFloat:?];
        personUUID2 = [(HMIPersonSourceUUIDPair *)v19 personUUID];
        v26 = [HMIPersonsModelPrediction initWithSourceUUID:v20 personUUID:"initWithSourceUUID:personUUID:confidence:linkedEntityUUID:" confidence:? linkedEntityUUID:?];
      }

      else
      {
        v33 = [MEMORY[0x277CCACA8] stringWithFormat:dCopy];
        v34 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:? description:? underlyingError:?];
        firstObject = v33;

        v35 = v34;
        predictedPersonUniqueIdentifier = v35;
        if (error)
        {
          v36 = v35;
          *error = predictedPersonUniqueIdentifier;
        }

        HMIErrorLog(self, predictedPersonUniqueIdentifier);
        v26 = 0;
        v9 = predictedPersonUniqueIdentifier;
      }
    }

    else
    {
      v29 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v31 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        v32 = HMFGetLogIdentifier();
        *buf = 138543618;
        v45 = v32;
        v46 = 2112;
        v47 = dCopy;
        _os_log_impl(&dword_22D12F000, v31, OS_LOG_TYPE_DEBUG, "%{public}@There is no current torso model for home: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v29);
      v26 = 0;
    }
  }

  else
  {
    v27 = v8;
    v11 = v27;
    if (error)
    {
      v28 = v27;
      *error = v11;
    }

    HMIErrorLog(self, v11);
    v26 = 0;
    v9 = v11;
  }

  os_unfair_lock_unlock(&self->_lock);

  return v26;
}

- (id)linkedPredictionsForPrediction:(id)prediction homeUUID:(id)d error:(id *)error
{
  predictionCopy = prediction;
  dCopy = d;
  v9 = [HMIPersonSourceUUIDPair alloc];
  personUUID = [predictionCopy personUUID];
  sourceUUID = [predictionCopy sourceUUID];
  v12 = [HMIPersonSourceUUIDPair initWithPersonUUID:v9 sourceUUID:"initWithPersonUUID:sourceUUID:"];

  v13 = [HMIPersonsModelManager equivalencyCellForPerson:"equivalencyCellForPerson:homeUUID:error:" homeUUID:? error:?];

  if (v13)
  {
    v14 = [HMIPersonsModelManager minimumUUIDInEquivalencyCell:?];
    v18 = MEMORY[0x277D85DD0];
    v19 = predictionCopy;
    v20 = v14;
    v15 = v14;
    v16 = [v13 na_map:{v18, 3221225472, __72__HMIPersonsModelManager_linkedPredictionsForPrediction_homeUUID_error___block_invoke, &unk_278754DF8}];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

HMIPersonsModelPrediction *__72__HMIPersonsModelManager_linkedPredictionsForPrediction_homeUUID_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [HMIPersonsModelPrediction alloc];
  v5 = [v3 sourceUUID];
  v6 = [v3 personUUID];

  v7 = [*(a1 + 32) confidence];
  v8 = [HMIPersonsModelPrediction initWithSourceUUID:v4 personUUID:"initWithSourceUUID:personUUID:confidence:linkedEntityUUID:" confidence:? linkedEntityUUID:?];

  return v8;
}

- (void)timerDidFire:(id)fire
{
  fireCopy = fire;
  v4 = objc_autoreleasePoolPush();
  os_unfair_lock_lock_with_options();
  [(HMIPersonsModelManager *)self _reset];
  watchdogTimer = [(HMIPersonsModelManager *)self watchdogTimer];
  [watchdogTimer suspend];

  [(HMIPersonsModelManager *)self setTransaction:?];
  os_unfair_lock_unlock(&self->_lock);
  objc_autoreleasePoolPop(v4);
}

+ (id)loadModelAtPath:(id)path error:(id *)error
{
  v4 = [MEMORY[0x277CBEBC0] fileURLWithPath:?];
  v5 = objc_opt_new();
  v6 = [MEMORY[0x277CE2D78] modelFromURL:? options:? error:?];

  return v6;
}

+ (BOOL)persistModel:(id)model toPath:(id)path error:(id *)error
{
  modelCopy = model;
  pathCopy = path;
  v8 = [MEMORY[0x277CBEBC0] fileURLWithPath:?];
  uRLByDeletingLastPathComponent = [v8 URLByDeletingLastPathComponent];

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  path = [uRLByDeletingLastPathComponent path];
  v12 = [defaultManager createDirectoryAtPath:? withIntermediateDirectories:? attributes:? error:?];

  if (v12)
  {
    v13 = [MEMORY[0x277CBEBC0] fileURLWithPath:?];
    v14 = objc_alloc_init(MEMORY[0x277CE2D90]);
    [v14 setReadOnly:?];
    v15 = [modelCopy writeToURL:? options:? error:?];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

+ (id)getModelStoragePathForHome:(id)home error:(id *)error
{
  homeCopy = home;
  v5 = [HMIPersonsModelManager getRootModelStoragePathWithError:?];
  if (v5)
  {
    v6 = MEMORY[0x277CCACA8];
    uUIDString = [homeCopy UUIDString];
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
    v8 = [v6 pathWithComponents:?];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)getModelStoragePathForModel:(id)model error:(id *)error
{
  modelCopy = model;
  homeUUID = [modelCopy homeUUID];
  v6 = [HMIPersonsModelManager getModelStoragePathForHome:"getModelStoragePathForHome:error:" error:?];

  if (v6)
  {
    v7 = MEMORY[0x277CCACA8];
    [modelCopy isExternalLibrary];
    v8 = MEMORY[0x277CCACA8];
    sourceUUID = [modelCopy sourceUUID];
    v13 = [v8 stringWithFormat:sourceUUID];
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
    v11 = [v7 pathWithComponents:?];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)getRootModelStoragePathWithError:(id *)error
{
  v3 = HMIURLForCacheDirectory(error);
  if (v3)
  {
    v4 = +[HMIPreference sharedInstance];
    path = [v3 path];
    v6 = [v4 stringPreferenceForKey:? defaultValue:?];

    v7 = [MEMORY[0x277CBEBC0] fileURLWithPath:?];
    v8 = [v7 URLByAppendingPathComponent:? isDirectory:?];

    absoluteURL = [v8 absoluteURL];
    path2 = [absoluteURL path];
  }

  else
  {
    path2 = 0;
  }

  return path2;
}

+ (id)getUserDefinedPersonLinksStoragePathForHomeUUID:(id)d error:(id *)error
{
  v4 = [HMIPersonsModelManager getModelStoragePathForHome:"getModelStoragePathForHome:error:" error:?];
  if (v4)
  {
    v5 = MEMORY[0x277CCACA8];
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
    v7 = [v5 pathWithComponents:?];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (BOOL)persistUserDefinedPersonLinks:(id)links forHomeUUID:(id)d error:(id *)error
{
  linksCopy = links;
  v6 = [HMIPersonsModelManager getUserDefinedPersonLinksStoragePathForHomeUUID:"getUserDefinedPersonLinksStoragePathForHomeUUID:error:" error:?];
  if (v6)
  {
    v7 = [MEMORY[0x277CBEBC0] fileURLWithPath:?];
    uRLByDeletingLastPathComponent = [v7 URLByDeletingLastPathComponent];

    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    path = [uRLByDeletingLastPathComponent path];
    v11 = [defaultManager createDirectoryAtPath:? withIntermediateDirectories:? attributes:? error:?];

    if (v11)
    {
      v12 = [MEMORY[0x277CBEBC0] fileURLWithPath:?];
      v13 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:? requiringSecureCoding:? error:?];
      v14 = v13;
      if (v13)
      {
        v15 = [v13 writeToURL:? atomically:?];
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

+ (id)loadUserDefinedPersonLinksForHomeUUID:(id)d error:(id *)error
{
  v4 = [HMIPersonsModelManager getUserDefinedPersonLinksStoragePathForHomeUUID:"getUserDefinedPersonLinksStoragePathForHomeUUID:error:" error:?];
  if (v4)
  {
    v5 = [MEMORY[0x277CBEBC0] fileURLWithPath:?];
    v6 = [MEMORY[0x277CCA9F8] fileHandleForReadingFromURL:? error:?];
    if (v6)
    {
      v7 = MEMORY[0x277CBEB98];
      objc_opt_class();
      objc_opt_class();
      objc_opt_class();
      objc_opt_class();
      v8 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
      v9 = [v7 setWithArray:?];

      v10 = MEMORY[0x277CCAAC8];
      readDataToEndOfFile = [v6 readDataToEndOfFile];
      v12 = [v10 unarchivedObjectOfClasses:? fromData:? error:?];
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (id)getTorsoSubdirectoryPathForHomeUUID:(id)d error:(id *)error
{
  v4 = [HMIPersonsModelManager getModelStoragePathForHome:"getModelStoragePathForHome:error:" error:?];
  if (v4)
  {
    v5 = MEMORY[0x277CCACA8];
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
    v7 = [v5 pathWithComponents:?];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)getTorsoModelStoragePathForHomeUUID:(id)d error:(id *)error
{
  v4 = [HMIPersonsModelManager getTorsoSubdirectoryPathForHomeUUID:"getTorsoSubdirectoryPathForHomeUUID:error:" error:?];
  if (v4)
  {
    v5 = MEMORY[0x277CCACA8];
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
    v7 = [v5 pathWithComponents:?];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)getTorsoToFaceCropStoragePathForHomeUUID:(id)d error:(id *)error
{
  v4 = [HMIPersonsModelManager getTorsoSubdirectoryPathForHomeUUID:"getTorsoSubdirectoryPathForHomeUUID:error:" error:?];
  if (v4)
  {
    v5 = MEMORY[0x277CCACA8];
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
    v7 = [v5 pathWithComponents:?];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)getTorsoprinterVersionStoragePathForHomeUUID:(id)d error:(id *)error
{
  v4 = [HMIPersonsModelManager getTorsoSubdirectoryPathForHomeUUID:"getTorsoSubdirectoryPathForHomeUUID:error:" error:?];
  if (v4)
  {
    v5 = MEMORY[0x277CBEBC0];
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
    v7 = [v5 fileURLWithPathComponents:?];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (BOOL)persistTorsoToFaceCrop:(id)crop forHomeUUID:(id)d error:(id *)error
{
  cropCopy = crop;
  v6 = [HMIPersonsModelManager getTorsoToFaceCropStoragePathForHomeUUID:"getTorsoToFaceCropStoragePathForHomeUUID:error:" error:?];
  if (v6)
  {
    v7 = [MEMORY[0x277CBEBC0] fileURLWithPath:?];
    uRLByDeletingLastPathComponent = [v7 URLByDeletingLastPathComponent];

    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    path = [uRLByDeletingLastPathComponent path];
    v11 = [defaultManager createDirectoryAtPath:? withIntermediateDirectories:? attributes:? error:?];

    if (v11)
    {
      v12 = [MEMORY[0x277CBEBC0] fileURLWithPath:?];
      v13 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:? requiringSecureCoding:? error:?];
      v14 = v13;
      if (v13)
      {
        v15 = [v13 writeToURL:? atomically:?];
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

+ (BOOL)persistTorsoprinterVersionForHomeUUID:(id)d error:(id *)error
{
  v4 = [HMIPersonsModelManager getTorsoprinterVersionStoragePathForHomeUUID:"getTorsoprinterVersionStoragePathForHomeUUID:error:" error:?];
  v5 = v4;
  if (v4)
  {
    uRLByDeletingLastPathComponent = [v4 URLByDeletingLastPathComponent];
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    path = [uRLByDeletingLastPathComponent path];
    v9 = [defaultManager createDirectoryAtPath:? withIntermediateDirectories:? attributes:? error:?];

    if (v9)
    {
      v10 = +[HMITorsoprinter currentModelUUID];
      v11 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:? requiringSecureCoding:? error:?];
      v12 = v11;
      if (v11)
      {
        v13 = [v11 writeToURL:? atomically:?];
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (id)loadTorsoToFaceCrop:(id)crop error:(id *)error
{
  v4 = [HMIPersonsModelManager getTorsoToFaceCropStoragePathForHomeUUID:"getTorsoToFaceCropStoragePathForHomeUUID:error:" error:?];
  if (v4)
  {
    v5 = [MEMORY[0x277CBEBC0] fileURLWithPath:?];
    v6 = [MEMORY[0x277CCA9F8] fileHandleForReadingFromURL:? error:?];
    if (v6)
    {
      v7 = MEMORY[0x277CBEB98];
      objc_opt_class();
      objc_opt_class();
      objc_opt_class();
      objc_opt_class();
      objc_opt_class();
      objc_opt_class();
      v8 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
      v9 = [v7 setWithArray:?];

      v10 = MEMORY[0x277CCAAC8];
      readDataToEndOfFile = [v6 readDataToEndOfFile];
      v12 = [v10 unarchivedObjectOfClasses:? fromData:? error:?];
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (id)loadTorsoprinterVersion:(id)version error:(id *)error
{
  v4 = [HMIPersonsModelManager getTorsoprinterVersionStoragePathForHomeUUID:"getTorsoprinterVersionStoragePathForHomeUUID:error:" error:?];
  if (v4)
  {
    v5 = [MEMORY[0x277CCA9F8] fileHandleForReadingFromURL:? error:?];
    if (v5)
    {
      v6 = MEMORY[0x277CBEB98];
      v7 = [MEMORY[0x277CBEA60] arrayWithObjects:objc_opt_class() count:?];
      v8 = [v6 setWithArray:?];

      v9 = MEMORY[0x277CCAAC8];
      readDataToEndOfFile = [v5 readDataToEndOfFile];
      v11 = [v9 unarchivedObjectOfClasses:? fromData:? error:?];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)modelURLsFromPath:(id)path error:(id *)error
{
  pathCopy = path;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v8 = [defaultManager createDirectoryAtPath:? withIntermediateDirectories:? attributes:? error:?];
  v9 = 0;
  if (v8)
  {
    v10 = [MEMORY[0x277CBEBC0] URLWithString:?];
    v11 = [defaultManager contentsOfDirectoryAtURL:? includingPropertiesForKeys:? options:? error:?];
    v12 = v9;

    if (v11)
    {
      v13 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:? options:? error:?];
      v14 = v12;

      v23 = v13;
      v15 = v13;
      v16 = [v11 na_filter:?];
      v17 = v23;
      v12 = v14;
    }

    else
    {
      v15 = [MEMORY[0x277CCACA8] stringWithFormat:pathCopy];
      v20 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:? description:? underlyingError:?];
      v17 = v20;
      if (error)
      {
        v21 = v20;
        *error = v17;
      }

      HMIErrorLog(self, v17);
      v16 = 0;
    }

    v9 = v12;
  }

  else
  {
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:pathCopy];
    v18 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:? description:? underlyingError:?];
    v11 = v18;
    if (error)
    {
      v19 = v18;
      *error = v11;
    }

    HMIErrorLog(self, v11);
    v16 = 0;
  }

  return v16;
}

BOOL __50__HMIPersonsModelManager_modelURLsFromPath_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 lastPathComponent];
  v4 = *(a1 + 32);
  [v3 length];
  v5 = [v4 numberOfMatchesInString:? options:? range:?] == 1;

  return v5;
}

- (BOOL)loadModelsWithError:(id *)error
{
  v142 = *MEMORY[0x277D85DE8];
  v5 = +[HMIPreference sharedInstance];
  shouldEnableTorsoRecognition = [v5 shouldEnableTorsoRecognition];

  if (shouldEnableTorsoRecognition)
  {
    torsoModelsByHome = [(HMIPersonsModelManager *)self torsoModelsByHome];
    if (torsoModelsByHome)
    {
      torsoToFaceCropByHome = [(HMIPersonsModelManager *)self torsoToFaceCropByHome];
      v9 = torsoToFaceCropByHome != 0;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 1;
  }

  personsModelsByHome = [(HMIPersonsModelManager *)self personsModelsByHome];

  if (personsModelsByHome && v9)
  {
    watchdogTimer = [(HMIPersonsModelManager *)self watchdogTimer];
    [watchdogTimer kick];

    return 1;
  }

  else
  {
    errorCopy = error;
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    dictionary3 = [MEMORY[0x277CBEB38] dictionary];
    dictionary4 = [MEMORY[0x277CBEB38] dictionary];
    v15 = [HMIPersonsModelManager getRootModelStoragePathWithError:?];
    v16 = 0;
    v17 = v16;
    if (v15)
    {
      v122 = shouldEnableTorsoRecognition;
      v18 = objc_autoreleasePoolPush();
      selfCopy = self;
      v20 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        v21 = HMFGetLogIdentifier();
        *buf = 138543618;
        v137 = v21;
        v138 = 2112;
        v139 = v15;
        _os_log_impl(&dword_22D12F000, v20, OS_LOG_TYPE_DEBUG, "%{public}@Persons Model Storage Path:%@", buf, 0x16u);
      }

      v130 = selfCopy;
      objc_autoreleasePoolPop(v18);
      v117 = v15;
      v22 = [MEMORY[0x277CBEBC0] URLWithString:?];
      defaultManager = [MEMORY[0x277CCAA00] defaultManager];
      path = [v22 path];
      v25 = [defaultManager createDirectoryAtPath:? withIntermediateDirectories:? attributes:? error:?];
      v26 = v17;

      if (v25)
      {
        defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
        v28 = [defaultManager2 contentsOfDirectoryAtURL:? includingPropertiesForKeys:? options:? error:?];
        v29 = v26;

        if (v28)
        {
          v28 = v28;
          v125 = [v28 countByEnumeratingWithState:? objects:? count:?];
          if (v125)
          {
            v124 = MEMORY[0];
            v119 = dictionary3;
            v120 = dictionary2;
            v118 = v22;
            v121 = v28;
            while (2)
            {
              for (i = 0; i != v125; i = (i + 1))
              {
                if (MEMORY[0] != v124)
                {
                  objc_enumerationMutation(v28);
                }

                v31 = *(8 * i);
                v32 = objc_alloc(MEMORY[0x277CCAD78]);
                lastPathComponent = [v31 lastPathComponent];
                v34 = [v32 initWithUUIDString:?];

                v133 = v31;
                if (v34)
                {
                  v126 = i;
                  v132 = objc_alloc_init(MEMORY[0x277CBEB38]);
                  v35 = [v31 URLByAppendingPathComponent:?];
                  path2 = [v35 path];

                  v127 = path2;
                  v37 = [HMIPersonsModelManager modelURLsFromPath:v130 error:"modelURLsFromPath:error:"];
                  v26 = v29;

                  if (!v37)
                  {
                    if (errorCopy)
                    {
                      v110 = v26;
                      *errorCopy = v26;
                    }

                    HMIErrorLog(v130, v26);
                    goto LABEL_88;
                  }

                  v135 = v34;
                  obj = v37;
                  v38 = [obj countByEnumeratingWithState:? objects:? count:?];
                  if (v38)
                  {
                    v39 = v38;
                    v40 = MEMORY[0];
                    v41 = v130;
                    do
                    {
                      v42 = 0;
                      v43 = v26;
                      do
                      {
                        if (MEMORY[0] != v40)
                        {
                          objc_enumerationMutation(obj);
                        }

                        v44 = *(8 * v42);
                        v45 = [HMIPersonsModelManager loadPersonsModelFromURL:v41 externalLibrary:"loadPersonsModelFromURL:externalLibrary:homeUUID:error:" homeUUID:? error:?];
                        v26 = v43;

                        v46 = objc_autoreleasePoolPush();
                        v47 = v41;
                        v48 = HMFGetOSLogHandle();
                        v49 = v48;
                        if (v45)
                        {
                          if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
                          {
                            v50 = HMFGetLogIdentifier();
                            sourceUUID = [v45 sourceUUID];
                            *buf = 138543874;
                            v137 = v50;
                            v138 = 2112;
                            v139 = v135;
                            v140 = 2112;
                            v141 = sourceUUID;
                            _os_log_impl(&dword_22D12F000, v49, OS_LOG_TYPE_INFO, "%{public}@Loaded External HMIPersonsModel for homeUUID: %@ sourceUUID: %@", buf, 0x20u);

                            v41 = v130;
                          }

                          objc_autoreleasePoolPop(v46);
                          sourceUUID2 = [v45 sourceUUID];
                          [v132 setObject:? forKeyedSubscript:?];
                        }

                        else
                        {
                          if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
                          {
                            v53 = HMFGetLogIdentifier();
                            *buf = 138543874;
                            v137 = v53;
                            v138 = 2112;
                            v139 = v44;
                            v140 = 2112;
                            v141 = v26;
                            _os_log_impl(&dword_22D12F000, v49, OS_LOG_TYPE_ERROR, "%{public}@Failed to load External HMIPersonsModel at path: %@, error: %@", buf, 0x20u);

                            v41 = v130;
                          }

                          objc_autoreleasePoolPop(v46);
                        }

                        v42 = (v42 + 1);
                        v43 = v26;
                        v54 = v133;
                      }

                      while (v39 != v42);
                      v39 = [obj countByEnumeratingWithState:? objects:? count:?];
                    }

                    while (v39);
                  }

                  else
                  {
                    v41 = v130;
                    v54 = v31;
                  }

                  v60 = [v54 URLByAppendingPathComponent:?];
                  path3 = [v60 path];

                  v62 = [HMIPersonsModelManager modelURLsFromPath:v41 error:"modelURLsFromPath:error:"];
                  v63 = v26;

                  v34 = v135;
                  if (!v62)
                  {
                    if (errorCopy)
                    {
                      v111 = v63;
                      *errorCopy = v63;
                    }

                    HMIErrorLog(v41, v63);
LABEL_87:

                    v26 = v63;
                    dictionary3 = v119;
                    dictionary2 = v120;
                    v22 = v118;
                    v28 = v121;
LABEL_88:

                    v12 = 0;
                    watchdogTimer2 = v28;
                    goto LABEL_89;
                  }

                  if ([v62 count] >= 2)
                  {
                    v112 = [MEMORY[0x277CCACA8] stringWithFormat:path3, v62];
                    v113 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:? description:? underlyingError:?];
                    v114 = v113;
                    if (errorCopy)
                    {
                      v115 = v113;
                      *errorCopy = v114;
                    }

                    HMIErrorLog(v41, v114);

                    v34 = v135;
                    goto LABEL_87;
                  }

                  v134 = path3;
                  if ([v62 count])
                  {
                    firstObject = [v62 firstObject];
                    v65 = [HMIPersonsModelManager loadPersonsModelFromURL:v41 externalLibrary:"loadPersonsModelFromURL:externalLibrary:homeUUID:error:" homeUUID:? error:?];
                    v66 = v63;

                    v67 = objc_autoreleasePoolPush();
                    v68 = v41;
                    v69 = HMFGetOSLogHandle();
                    v70 = v69;
                    if (v65)
                    {
                      if (os_log_type_enabled(v69, OS_LOG_TYPE_INFO))
                      {
                        HMFGetLogIdentifier();
                        v72 = v71 = v66;
                        sourceUUID3 = [v65 sourceUUID];
                        *buf = 138543874;
                        v137 = v72;
                        v138 = 2112;
                        v139 = v135;
                        v140 = 2112;
                        v141 = sourceUUID3;
                        _os_log_impl(&dword_22D12F000, v70, OS_LOG_TYPE_INFO, "%{public}@Loaded Home HMIPersonsModel for homeUUID: %@ sourceUUID: %@", buf, 0x20u);

                        v41 = v130;
                        v66 = v71;
                      }

                      objc_autoreleasePoolPop(v67);
                      sourceUUID4 = [v65 sourceUUID];
                      [v132 setObject:? forKeyedSubscript:?];
                    }

                    else
                    {
                      if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
                      {
                        HMFGetLogIdentifier();
                        v80 = v79 = v66;
                        *buf = 138543874;
                        v137 = v80;
                        v138 = 2112;
                        v139 = firstObject;
                        v140 = 2112;
                        v141 = v79;
                        _os_log_impl(&dword_22D12F000, v70, OS_LOG_TYPE_ERROR, "%{public}@Failed to load Home HMIPersonsModel at path: %@, error: %@", buf, 0x20u);

                        v66 = v79;
                      }

                      objc_autoreleasePoolPop(v67);
                    }

                    v63 = v66;
                  }

                  else
                  {
                    v75 = objc_autoreleasePoolPush();
                    v76 = v41;
                    v77 = HMFGetOSLogHandle();
                    if (os_log_type_enabled(v77, OS_LOG_TYPE_INFO))
                    {
                      v78 = HMFGetLogIdentifier();
                      *buf = 138543618;
                      v137 = v78;
                      v138 = 2112;
                      v139 = v135;
                      _os_log_impl(&dword_22D12F000, v77, OS_LOG_TYPE_INFO, "%{public}@No home model found for homeUUID: %@", buf, 0x16u);
                    }

                    objc_autoreleasePoolPop(v75);
                  }

                  v81 = [v132 copy];
                  [dictionary setObject:? forKeyedSubscript:?];

                  dictionary5 = [HMIPersonsModelManager loadUserDefinedPersonLinksForHomeUUID:"loadUserDefinedPersonLinksForHomeUUID:error:" error:?];
                  v29 = v63;

                  v83 = objc_autoreleasePoolPush();
                  v84 = v41;
                  v85 = HMFGetOSLogHandle();
                  v86 = os_log_type_enabled(v85, OS_LOG_TYPE_INFO);
                  if (dictionary5)
                  {
                    if (v86)
                    {
                      v87 = HMFGetLogIdentifier();
                      v88 = [dictionary5 count];
                      *buf = 138543874;
                      v137 = v87;
                      v138 = 2048;
                      v139 = v88;
                      v140 = 2112;
                      v141 = v135;
                      _os_log_impl(&dword_22D12F000, v85, OS_LOG_TYPE_INFO, "%{public}@Loaded %lu user defined equivalencies found for home: %@", buf, 0x20u);
                    }

                    objc_autoreleasePoolPop(v83);
                  }

                  else
                  {
                    if (v86)
                    {
                      v89 = HMFGetLogIdentifier();
                      [v29 shortDescription];
                      v91 = v90 = v29;
                      *buf = 138543874;
                      v137 = v89;
                      v138 = 2112;
                      v139 = v135;
                      v140 = 2112;
                      v141 = v91;
                      _os_log_impl(&dword_22D12F000, v85, OS_LOG_TYPE_INFO, "%{public}@No user defined equivalencies found for home: %@ (reason: %@)", buf, 0x20u);

                      v29 = v90;
                    }

                    objc_autoreleasePoolPop(v83);
                    dictionary5 = [MEMORY[0x277CBEAC0] dictionary];
                  }

                  dictionary2 = v120;
                  [v120 setObject:? forKeyedSubscript:?];
                  dictionary3 = v119;
                  if (v122)
                  {
                    [HMIPersonsModelManager _loadTorsoDataForHomeUUID:v84 intoTorsoModelsByHome:"_loadTorsoDataForHomeUUID:intoTorsoModelsByHome:torsoToFaceCropByHome:" torsoToFaceCropByHome:?];
                  }

                  v22 = v118;
                  v28 = v121;
                  i = v126;
                }

                else
                {
                  v55 = objc_autoreleasePoolPush();
                  v56 = v130;
                  v57 = HMFGetOSLogHandle();
                  if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
                  {
                    HMFGetLogIdentifier();
                    v59 = v58 = v29;
                    *buf = 138543618;
                    v137 = v59;
                    v138 = 2112;
                    v139 = v133;
                    _os_log_impl(&dword_22D12F000, v57, OS_LOG_TYPE_ERROR, "%{public}@Failed to parse Home UUID from path: %@", buf, 0x16u);

                    v29 = v58;
                    v28 = v121;
                  }

                  objc_autoreleasePoolPop(v55);
                }
              }

              v125 = [v28 countByEnumeratingWithState:? objects:? count:?];
              if (v125)
              {
                continue;
              }

              break;
            }
          }

          v92 = [dictionary copy];
          personsModelsByHome = v130->_personsModelsByHome;
          v130->_personsModelsByHome = v92;

          v94 = [dictionary2 copy];
          userDefinedPersonLinksByHome = v130->_userDefinedPersonLinksByHome;
          v130->_userDefinedPersonLinksByHome = v94;

          v96 = [dictionary3 copy];
          torsoModelsByHome = v130->_torsoModelsByHome;
          v130->_torsoModelsByHome = v96;

          v98 = [dictionary4 copy];
          torsoToFaceCropByHome = v130->_torsoToFaceCropByHome;
          v130->_torsoToFaceCropByHome = v98;

          v100 = [objc_alloc(MEMORY[0x277D0F880]) initWithName:?];
          [(HMIPersonsModelManager *)v130 setTransaction:?];

          watchdogTimer2 = [(HMIPersonsModelManager *)v130 watchdogTimer];
          [watchdogTimer2 resume];
          v12 = 1;
        }

        else
        {
          watchdogTimer2 = [MEMORY[0x277CCACA8] stringWithFormat:v22];
          v107 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:? description:? underlyingError:?];
          v108 = v107;
          if (errorCopy)
          {
            v109 = v107;
            *errorCopy = v108;
          }

          HMIErrorLog(v130, v108);

          v12 = 0;
        }

        v26 = v29;
      }

      else
      {
        v103 = MEMORY[0x277CCACA8];
        path4 = [v22 path];
        v28 = [v103 stringWithFormat:path4];

        v105 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:? description:? underlyingError:?];
        watchdogTimer2 = v105;
        if (errorCopy)
        {
          v106 = v105;
          *errorCopy = watchdogTimer2;
        }

        HMIErrorLog(v130, watchdogTimer2);
        v12 = 0;
      }

LABEL_89:

      v17 = v26;
      v15 = v117;
    }

    else
    {
      if (error)
      {
        v102 = v16;
        *error = v17;
      }

      HMIErrorLog(self, v17);
      v12 = 0;
    }
  }

  return v12;
}

- (void)_loadTorsoDataForHomeUUID:(id)d intoTorsoModelsByHome:(id)home torsoToFaceCropByHome:(id)byHome
{
  v44 = *MEMORY[0x277D85DE8];
  dCopy = d;
  homeCopy = home;
  byHomeCopy = byHome;
  v11 = [HMIPersonsModelManager getTorsoModelStoragePathForHomeUUID:"getTorsoModelStoragePathForHomeUUID:error:" error:?];
  v12 = 0;
  if (!v11)
  {
    v24 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = HMFGetLogIdentifier();
      *buf = 138543618;
      v39 = v27;
      v40 = 2112;
      v41 = v12;
      v28 = "%{public}@Got nil for torso model file path, error: %@";
      v29 = v26;
      v30 = OS_LOG_TYPE_ERROR;
      v31 = 22;
LABEL_13:
      _os_log_impl(&dword_22D12F000, v29, v30, v28, buf, v31);
    }

LABEL_14:

    objc_autoreleasePoolPop(v24);
    goto LABEL_23;
  }

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v14 = [defaultManager fileExistsAtPath:?];

  if ((v14 & 1) == 0)
  {
    v24 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v27 = HMFGetLogIdentifier();
      *buf = 138543874;
      v39 = v27;
      v40 = 2112;
      v41 = dCopy;
      v42 = 2112;
      v43 = v11;
      v28 = "%{public}@No torso model found for home %@ at path: %@";
      v29 = v26;
      v30 = OS_LOG_TYPE_INFO;
      v31 = 32;
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  v15 = [HMIPersonsModelManager loadTorsoToFaceCrop:"loadTorsoToFaceCrop:error:" error:?];
  v16 = v12;

  if (v15)
  {
    if (![HMIPersonsModelManager _resetStaleTorsoStateForHome:"_resetStaleTorsoStateForHome:torsoToFaceCropMap:" torsoToFaceCropMap:?])
    {
      v17 = [HMIPersonsModelManager loadModelAtPath:"loadModelAtPath:error:" error:?];
      v18 = v16;

      v19 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v21 = HMFGetOSLogHandle();
      v22 = v21;
      if (v17)
      {
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          HMFGetLogIdentifier();
          v23 = v36 = v18;
          *buf = 138543618;
          v39 = v23;
          v40 = 2112;
          v41 = dCopy;
          _os_log_impl(&dword_22D12F000, v22, OS_LOG_TYPE_INFO, "%{public}@Successfully loaded torso model and face crop map for home: %@", buf, 0x16u);

          v18 = v36;
        }

        objc_autoreleasePoolPop(v19);
        [homeCopy setObject:? forKeyedSubscript:?];
        [byHomeCopy setObject:? forKeyedSubscript:?];
      }

      else
      {
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          v37 = HMFGetLogIdentifier();
          *buf = 138543874;
          v39 = v37;
          v40 = 2112;
          v41 = v11;
          v42 = 2112;
          v43 = v18;
          _os_log_impl(&dword_22D12F000, v22, OS_LOG_TYPE_ERROR, "%{public}@Failed to load torso model at path: %@, error: %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v19);
      }

      v16 = v18;
    }
  }

  else
  {
    v32 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v34 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v35 = HMFGetLogIdentifier();
      *buf = 138543618;
      v39 = v35;
      v40 = 2112;
      v41 = v16;
      _os_log_impl(&dword_22D12F000, v34, OS_LOG_TYPE_ERROR, "%{public}@Failed to load torsoToFaceCrop map, error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v32);
  }

  v12 = v16;
LABEL_23:
}

- (id)loadPersonsModelFromURL:(id)l externalLibrary:(BOOL)library homeUUID:(id)d error:(id *)error
{
  lCopy = l;
  dCopy = d;
  uRLByDeletingPathExtension = [lCopy URLByDeletingPathExtension];
  lastPathComponent = [uRLByDeletingPathExtension lastPathComponent];

  v13 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:?];
  if (v13)
  {
    pathExtension = [lCopy pathExtension];
    v15 = [pathExtension isEqualToString:?];

    if (v15)
    {
      v44 = dCopy;
      defaultManager = [MEMORY[0x277CCAA00] defaultManager];
      path = [lCopy path];
      v18 = [defaultManager attributesOfItemAtPath:? error:?];
      v19 = 0;
      fileSize = [v18 fileSize];

      if (fileSize < 0x2800001)
      {
        path2 = [lCopy path];
        v24 = [HMIPersonsModelManager loadModelAtPath:"loadModelAtPath:error:" error:?];
        v36 = v19;

        if (v24)
        {
          dCopy = v44;
          v28 = [HMIPersonsModel initWithPersonsModel:"initWithPersonsModel:homeUUID:sourceUUID:externalLibrary:" homeUUID:? sourceUUID:? externalLibrary:?];
          v19 = v36;
LABEL_16:

          goto LABEL_17;
        }

        v37 = MEMORY[0x277CCACA8];
        path3 = [lCopy path];
        v39 = [v37 stringWithFormat:path3];

        v40 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:? description:? underlyingError:?];
        v41 = v40;
        if (error)
        {
          v42 = v40;
          *error = v41;
        }

        HMIErrorLog(self, v41);

        v28 = 0;
        v19 = v36;
      }

      else
      {
        v21 = MEMORY[0x277CCACA8];
        v22 = NSLocalizedFileSizeDescription();
        path4 = [lCopy path];
        v24 = [v21 stringWithFormat:v22, path4];

        v25 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:? description:? underlyingError:?];
        v26 = v25;
        if (error)
        {
          v27 = v25;
          *error = v26;
        }

        HMIErrorLog(self, v26);

        v28 = 0;
      }

      dCopy = v44;
      goto LABEL_16;
    }
  }

  v29 = MEMORY[0x277CCACA8];
  path5 = [lCopy path];
  v31 = [v29 stringWithFormat:path5];

  v32 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:? description:?];
  v33 = v32;
  if (error)
  {
    v34 = v32;
    *error = v33;
  }

  HMIErrorLog(self, v33);

  v28 = 0;
LABEL_17:

  return v28;
}

- (id)summaryForHomeUUID:(id)d error:(id *)error
{
  dCopy = d;
  v40[0] = 0;
  v40[1] = v40;
  v40[2] = 0x2020000000;
  v40[3] = 0;
  v39[0] = 0;
  v39[1] = v39;
  v39[2] = 0x2020000000;
  v39[3] = 0;
  os_unfair_lock_lock_with_options();
  v38 = 0;
  v7 = [(HMIPersonsModelManager *)self loadModelsWithError:?];
  v8 = 0;
  v9 = v8;
  if (v7)
  {
    personsModelsByHome = [(HMIPersonsModelManager *)self personsModelsByHome];
    v11 = [personsModelsByHome objectForKeyedSubscript:?];

    if (v11)
    {
      v12 = [v11 na_map:?];
      equivalencyTablesByHome = [(HMIPersonsModelManager *)self equivalencyTablesByHome];
      v14 = [equivalencyTablesByHome objectForKeyedSubscript:?];

      if (v14)
      {
LABEL_6:
        v17 = [(HMIPersonsModelManager *)self homePersonsModelForHomeWithUUID:v31];
        v35[0] = 0;
        v35[1] = v35;
        v35[2] = 0x3032000000;
        v35[3] = __Block_byref_object_copy__6;
        v35[4] = __Block_byref_object_dispose__6;
        v36 = [MEMORY[0x277CBEB58] set];
        personToEquivalencyCell = [v14 personToEquivalencyCell];
        v34 = v17;
        [personToEquivalencyCell enumerateKeysAndObjectsUsingBlock:?];

        _Block_object_dispose(v35, 8);
        v19 = 1;
        goto LABEL_14;
      }

      personsModelsByHome2 = [(HMIPersonsModelManager *)self personsModelsByHome];
      v32 = [personsModelsByHome2 objectForKeyedSubscript:?];
      userDefinedPersonLinksByHome = [(HMIPersonsModelManager *)self userDefinedPersonLinksByHome];
      v16 = [userDefinedPersonLinksByHome objectForKeyedSubscript:?];
      v37 = v9;
      v14 = [HMIPersonsModelManager buildEquivalencyMapForPersonsModels:"buildEquivalencyMapForPersonsModels:userDefinedPersonLinks:error:" userDefinedPersonLinks:? error:?];
      v31 = v9;

      if (v14)
      {
        v9 = v31;
        goto LABEL_6;
      }

      v29 = v31;
      v14 = v29;
      if (error)
      {
        v30 = v29;
        *error = v14;
      }

      HMIErrorLog(self, v14);
      v19 = 0;
    }

    else
    {
      v24 = v9;
      v14 = v24;
      if (error)
      {
        v25 = v24;
        *error = v14;
      }

      HMIErrorLog(self, v14);
      v19 = 0;
      v12 = MEMORY[0x277CBEBF8];
    }

    v9 = v14;
LABEL_14:

    os_unfair_lock_unlock(&self->_lock);
    if (v19)
    {
      v26 = [HMIPersonsModelsSummary alloc];
      v27 = [MEMORY[0x277CBEB98] setWithArray:?];
      v23 = [HMIPersonsModelsSummary initWithModelSummaries:v26 homeToExternalEquivalencies:"initWithModelSummaries:homeToExternalEquivalencies:externalToExternalEquivalencies:" externalToExternalEquivalencies:?];
    }

    else
    {
      v23 = 0;
    }

    goto LABEL_17;
  }

  v20 = v8;
  v21 = v20;
  if (error)
  {
    v22 = v20;
    *error = v21;
  }

  HMIErrorLog(self, v21);

  os_unfair_lock_unlock(&self->_lock);
  v23 = 0;
  v12 = MEMORY[0x277CBEBF8];
LABEL_17:
  _Block_object_dispose(v39, 8);
  _Block_object_dispose(v40, 8);

  return v23;
}

void __51__HMIPersonsModelManager_summaryForHomeUUID_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v6 count] >= 2)
  {
    v7 = [v5 sourceUUID];
    v8 = [*(a1 + 32) sourceUUID];
    v9 = [v7 isEqual:?];

    if (v9)
    {
      *(*(*(a1 + 40) + 8) + 24) = [v6 count] + *(*(*(a1 + 40) + 8) + 24) - 1;
      v10 = [v6 count] - 1;
      *(*(*(a1 + 48) + 8) + 24) += (([v6 count] - 2) * v10) >> 1;
    }

    else
    {
      v15 = 0;
      v16 = &v15;
      v17 = 0x2020000000;
      v18 = 0;
      v13[0] = 0;
      v13[1] = v13;
      v13[2] = 0x3032000000;
      v13[3] = __Block_byref_object_copy__6;
      v13[4] = __Block_byref_object_dispose__6;
      v14 = 0;
      v12 = *(a1 + 32);
      [v6 enumerateObjectsUsingBlock:?];
      if ((v16[3] & 1) == 0 && ([*(*(*(a1 + 56) + 8) + 40) containsObject:?] & 1) == 0)
      {
        [*(*(*(a1 + 56) + 8) + 40) addObject:?];
        v11 = [v6 count];
        *(*(*(a1 + 48) + 8) + 24) += (([v6 count] - 1) * v11) >> 1;
      }

      _Block_object_dispose(v13, 8);
      _Block_object_dispose(&v15, 8);
    }
  }
}

void __51__HMIPersonsModelManager_summaryForHomeUUID_error___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 sourceUUID];
  v5 = [*(a1 + 32) sourceUUID];
  *(*(*(a1 + 40) + 8) + 24) = [v4 isEqual:?];

  obj = [v3 personUUID];

  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  if (v7)
  {
    v8 = [v7 UUIDString];
    v9 = [obj UUIDString];
    v10 = [v8 compare:?];

    if (v10 != -1)
    {
      goto LABEL_6;
    }

    v11 = obj;
    v6 = *(*(a1 + 48) + 8);
  }

  else
  {
    v11 = obj;
  }

  objc_storeStrong((v6 + 40), v11);
LABEL_6:
}

+ (id)minimumUUIDInEquivalencyCell:(id)cell
{
  cellCopy = cell;
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__6;
  v10 = __Block_byref_object_dispose__6;
  v11 = 0;
  [cellCopy enumerateObjectsUsingBlock:?];
  v4 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v4;
}

void __55__HMIPersonsModelManager_minimumUUIDInEquivalencyCell___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 personUUID];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  obj = v3;
  if (v5)
  {
    v6 = [v5 UUIDString];
    v7 = [obj UUIDString];
    v8 = [v6 compare:?];

    if (v8 != -1)
    {
      goto LABEL_5;
    }

    v4 = *(*(a1 + 32) + 8);
    v3 = obj;
  }

  objc_storeStrong((v4 + 40), v3);
LABEL_5:
}

- (void)reset
{
  os_unfair_lock_lock_with_options();
  [(HMIPersonsModelManager *)self _reset];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_reset
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v13 = 138543362;
    v14 = v6;
    _os_log_impl(&dword_22D12F000, v5, OS_LOG_TYPE_INFO, "%{public}@Resetting HMIPersonsModelManager", &v13, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  personsModelsByHome = selfCopy->_personsModelsByHome;
  selfCopy->_personsModelsByHome = 0;

  equivalencyTablesByHome = selfCopy->_equivalencyTablesByHome;
  selfCopy->_equivalencyTablesByHome = 0;

  dictionary = [MEMORY[0x277CBEAC0] dictionary];
  userDefinedPersonLinksByHome = selfCopy->_userDefinedPersonLinksByHome;
  selfCopy->_userDefinedPersonLinksByHome = dictionary;

  torsoModelsByHome = selfCopy->_torsoModelsByHome;
  selfCopy->_torsoModelsByHome = 0;

  torsoToFaceCropByHome = selfCopy->_torsoToFaceCropByHome;
  selfCopy->_torsoToFaceCropByHome = 0;
}

@end