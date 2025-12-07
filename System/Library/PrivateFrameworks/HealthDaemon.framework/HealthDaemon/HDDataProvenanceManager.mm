@interface HDDataProvenanceManager
- (HDDataProvenanceManager)initWithProfile:(id)profile;
- (NSString)description;
- (id)_localTimeZoneName;
- (id)deviceNoneID;
- (id)localDataProvenanceForSourceEntity:(id)entity version:(id)version deviceEntity:(id)deviceEntity;
- (id)localDataProvenanceForSourceEntity:(id)entity version:(id)version deviceEntity:(id)deviceEntity timezone:(id)timezone OSVersion:(id *)sVersion;
- (id)localDeviceID;
- (id)localSourceID;
- (id)noneContributorReference;
- (id)originProvenanceForPersistentID:(id)d transaction:(id)transaction error:(id *)error;
- (id)primaryUserContributorReference;
- (id)provenanceEntityForProvenance:(id)provenance error:(id *)error;
- (id)provenanceEntityForProvenance:(id)provenance transaction:(id)transaction error:(id *)error;
- (void)_loadDefaults;
@end

@implementation HDDataProvenanceManager

- (void)_loadDefaults
{
  v28 = *MEMORY[0x277D85DE8];
  if (!self)
  {
    return;
  }

  v2 = atomic_load((self + 72));
  if (v2)
  {
    return;
  }

  noneContributorReference = [(HDDataProvenanceManager *)self noneContributorReference];

  if (!noneContributorReference)
  {
    v4 = +[HDContributorReference contributorReferenceForNoContributor];
    v5 = v4;
    if (v4)
    {
      v6 = v4;
      v7 = *(self + 24);
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __56__HDDataProvenanceManager__setNoneContributorReference___block_invoke;
      v25 = &unk_278613920;
      selfCopy2 = self;
      v8 = v6;
      v27 = v8;
      [v7 hk_withLock:buf];
    }
  }

  WeakRetained = objc_loadWeakRetained((self + 8));
  if ([WeakRetained profileType] != 1)
  {
    primaryUserContributorReference = [(HDDataProvenanceManager *)self primaryUserContributorReference];

    if (primaryUserContributorReference)
    {
      goto LABEL_10;
    }

    v17 = +[HDContributorReference contributorReferenceForPrimaryUser];
    if (v17)
    {
      v18 = v17;
      v19 = *(self + 24);
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __63__HDDataProvenanceManager__setPrimaryUserContributorReference___block_invoke;
      v25 = &unk_278613920;
      selfCopy2 = self;
      WeakRetained = v18;
      v27 = WeakRetained;
      [v19 hk_withLock:buf];
    }

    else
    {
      WeakRetained = 0;
    }
  }

LABEL_10:
  v11 = objc_loadWeakRetained((self + 8));
  database = [v11 database];
  v13 = +[HDDatabaseTransactionContext contextForWriting];
  v22[4] = self;
  v23 = 0;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __40__HDDataProvenanceManager__loadDefaults__block_invoke;
  v22[3] = &unk_278616048;
  v14 = [database performTransactionWithContext:v13 error:&v23 block:v22 inaccessibilityHandler:0];
  v15 = v23;

  if ((v14 & 1) == 0)
  {
    _HKInitializeLogging();
    v16 = *MEMORY[0x277CCC2A0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
    {
      v20 = v16;
      v21 = objc_opt_class();
      *buf = 138412546;
      *&buf[4] = v21;
      *&buf[12] = 2114;
      *&buf[14] = v15;
      _os_log_error_impl(&dword_228986000, v20, OS_LOG_TYPE_ERROR, "%@: Failed to load data provenance default values: %{public}@", buf, 0x16u);
    }
  }
}

- (id)localSourceID
{
  if (self)
  {
    v1 = atomic_load((self + 72));
    if (v1)
    {
      v2 = *(self + 32);
    }

    else
    {
      v6 = 0;
      v7 = &v6;
      v8 = 0x3032000000;
      v9 = __Block_byref_object_copy__84;
      v10 = __Block_byref_object_dispose__84;
      v11 = 0;
      v3 = *(self + 24);
      v5[0] = MEMORY[0x277D85DD0];
      v5[1] = 3221225472;
      v5[2] = __40__HDDataProvenanceManager_localSourceID__block_invoke;
      v5[3] = &unk_278613990;
      v5[4] = self;
      v5[5] = &v6;
      [v3 hk_withLock:v5];
      v2 = v7[5];
      _Block_object_dispose(&v6, 8);
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)_localTimeZoneName
{
  if (self)
  {
    WeakRetained = objc_loadWeakRetained((self + 8));
    daemon = [WeakRetained daemon];
    behavior = [daemon behavior];
    localTimeZone = [behavior localTimeZone];
    name = [localTimeZone name];
  }

  else
  {
    name = 0;
  }

  return name;
}

- (id)deviceNoneID
{
  if (self)
  {
    v1 = atomic_load((self + 72));
    if (v1)
    {
      v2 = *(self + 48);
    }

    else
    {
      v6 = 0;
      v7 = &v6;
      v8 = 0x3032000000;
      v9 = __Block_byref_object_copy__84;
      v10 = __Block_byref_object_dispose__84;
      v11 = 0;
      v3 = *(self + 24);
      v5[0] = MEMORY[0x277D85DD0];
      v5[1] = 3221225472;
      v5[2] = __39__HDDataProvenanceManager_deviceNoneID__block_invoke;
      v5[3] = &unk_278613990;
      v5[4] = self;
      v5[5] = &v6;
      [v3 hk_withLock:v5];
      v2 = v7[5];
      _Block_object_dispose(&v6, 8);
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (HDDataProvenanceManager)initWithProfile:(id)profile
{
  profileCopy = profile;
  v29.receiver = self;
  v29.super_class = HDDataProvenanceManager;
  v5 = [(HDDataProvenanceManager *)&v29 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    propertyLock = v5->_propertyLock;
    v5->_propertyLock = v6;

    v8 = objc_storeWeak(&v5->_profile, profileCopy);
    daemon = [profileCopy daemon];
    behavior = [daemon behavior];

    currentOSBuild = [behavior currentOSBuild];
    v12 = currentOSBuild;
    if (currentOSBuild)
    {
      v13 = currentOSBuild;
    }

    else
    {
      v13 = @"UnknownBuild";
    }

    objc_storeStrong(&v5->_localSystemBuild, v13);

    currentDeviceProductType = [behavior currentDeviceProductType];
    v15 = currentDeviceProductType;
    if (currentDeviceProductType)
    {
      v16 = currentDeviceProductType;
    }

    else
    {
      v16 = @"UnknownDevice";
    }

    objc_storeStrong(&v5->_localProductType, v16);

    v17 = objc_msgSend_currentOSVersion(behavior);
    v18 = v17;
    if (v17)
    {
      v19 = v17;
    }

    else
    {
      v19 = &stru_283BF39C8;
    }

    objc_storeStrong(&v5->_localSourceVersion, v19);

    v20 = [HDDatabaseValueCache alloc];
    v21 = [(HDDataProvenanceManager *)v5 hk_classNameWithTag:@"persistent-ids"];
    v22 = [(HDDatabaseValueCache *)v20 initWithName:v21];
    persistentIDsByProvenanceKey = v5->_persistentIDsByProvenanceKey;
    v5->_persistentIDsByProvenanceKey = v22;

    v24 = [HDDatabaseValueCache alloc];
    v25 = [(HDDataProvenanceManager *)v5 hk_classNameWithTag:@"provenances"];
    v26 = [(HDDatabaseValueCache *)v24 initWithName:v25 cacheScope:2];
    originProvenanceByPersistentID = v5->_originProvenanceByPersistentID;
    v5->_originProvenanceByPersistentID = v26;
  }

  return v5;
}

- (id)provenanceEntityForProvenance:(id)provenance error:(id *)error
{
  provenanceCopy = provenance;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__84;
  v20 = __Block_byref_object_dispose__84;
  v21 = 0;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  database = [WeakRetained database];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __63__HDDataProvenanceManager_provenanceEntityForProvenance_error___block_invoke;
  v13[3] = &unk_278614288;
  v15 = &v16;
  v13[4] = self;
  v9 = provenanceCopy;
  v14 = v9;
  LODWORD(error) = [(HDHealthEntity *)HDDataProvenanceEntity performWriteTransactionWithHealthDatabase:database error:error block:v13];

  if (error)
  {
    v10 = v17[5];
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  _Block_object_dispose(&v16, 8);

  return v11;
}

BOOL __63__HDDataProvenanceManager_provenanceEntityForProvenance_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [*(a1 + 32) provenanceEntityForProvenance:*(a1 + 40) transaction:a2 error:a3];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  return *(*(*(a1 + 48) + 8) + 40) != 0;
}

- (id)provenanceEntityForProvenance:(id)provenance transaction:(id)transaction error:(id *)error
{
  provenanceCopy = provenance;
  transactionCopy = transaction;
  if (!self)
  {
    goto LABEL_21;
  }

  [(HDDataProvenanceManager *)self _loadDefaults];
  sourceVersion = [provenanceCopy sourceVersion];
  v11 = [sourceVersion length];

  if (!v11)
  {
    [provenanceCopy setSourceVersion:&stru_283BF39C8];
  }

  deviceID = [provenanceCopy deviceID];

  if (!deviceID)
  {
    deviceNoneID = [(HDDataProvenanceManager *)self deviceNoneID];
    [provenanceCopy setDeviceID:deviceNoneID];
  }

  contributorReference = [provenanceCopy contributorReference];

  if (!contributorReference)
  {
    noneContributorReference = [(HDDataProvenanceManager *)self noneContributorReference];
    [provenanceCopy setContributorReference:noneContributorReference];
  }

  sourceID = [provenanceCopy sourceID];
  if (!sourceID)
  {
    goto LABEL_14;
  }

  v17 = sourceID;
  deviceID2 = [provenanceCopy deviceID];
  if (!deviceID2)
  {

    goto LABEL_14;
  }

  v19 = deviceID2;
  contributorReference2 = [provenanceCopy contributorReference];

  if (!contributorReference2)
  {
LABEL_14:
    v42 = MEMORY[0x277CCA9B8];
    sourceID2 = [provenanceCopy sourceID];
    deviceID3 = [provenanceCopy deviceID];
    contributorReference3 = [provenanceCopy contributorReference];
    [v42 hk_assignError:error code:3 format:{@"Missing data provenance source (%@), device (%@) id or contributor (%@)", sourceID2, deviceID3, contributorReference3}];

    self = 0;
    goto LABEL_21;
  }

  WeakRetained = objc_loadWeakRetained(&self->_profile);
  contributorManager = [WeakRetained contributorManager];
  contributorReference4 = [provenanceCopy contributorReference];
  v54 = 0;
  v24 = [contributorManager insertOrLookupContributorEntityWithReference:contributorReference4 transaction:transactionCopy error:&v54];
  v25 = v54;

  if (!v24)
  {
    v31 = v25;
    if (v31)
    {
      if (error)
      {
        v46 = v31;
        self = 0;
        *error = v31;
        goto LABEL_20;
      }

      _HKLogDroppedError();
    }

    self = 0;
    goto LABEL_20;
  }

  v49 = v25;
  localSystemBuild = self->_localSystemBuild;
  v27 = self->_localProductType;
  v28 = localSystemBuild;
  v29 = v27;
  v30 = provenanceCopy;
  objc_opt_self();
  v31 = objc_alloc_init(_HDDataProvenanceKey);
  v32 = objc_msgSend_copy(v30);

  dataProvenance = v31->_dataProvenance;
  v31->_dataProvenance = v32;

  v34 = objc_msgSend_copy(v29);
  localProductType = v31->_localProductType;
  v31->_localProductType = v34;

  v36 = objc_msgSend_copy(v28);
  v37 = v31->_localSystemBuild;
  v31->_localSystemBuild = v36;

  v38 = [(HDDataOriginProvenance *)v31->_dataProvenance hash];
  v39 = [(NSString *)v31->_localProductType hash]^ v38;
  v31->_hash = v39 ^ [(NSString *)v31->_localSystemBuild hash];

  persistentIDsByProvenanceKey = self->_persistentIDsByProvenanceKey;
  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 3221225472;
  v50[2] = __71__HDDataProvenanceManager__lookupOrInsertProvenance_transaction_error___block_invoke;
  v50[3] = &unk_27861FE88;
  v51 = v30;
  selfCopy = self;
  v53 = v24;
  v41 = persistentIDsByProvenanceKey;
  v25 = v49;
  self = [(HDDatabaseValueCache *)v41 fetchObjectForKey:v31 transaction:transactionCopy error:error faultHandler:v50];

LABEL_20:
LABEL_21:

  if (self)
  {
    v47 = [(HDSQLiteEntity *)[HDDataProvenanceEntity alloc] initWithPersistentID:[(HDDataProvenanceManager *)self longLongValue]];
  }

  else
  {
    v47 = 0;
  }

  return v47;
}

- (id)noneContributorReference
{
  if (self)
  {
    v1 = atomic_load((self + 72));
    if (v1)
    {
      v2 = *(self + 56);
    }

    else
    {
      v6 = 0;
      v7 = &v6;
      v8 = 0x3032000000;
      v9 = __Block_byref_object_copy__84;
      v10 = __Block_byref_object_dispose__84;
      v11 = 0;
      v3 = *(self + 24);
      v5[0] = MEMORY[0x277D85DD0];
      v5[1] = 3221225472;
      v5[2] = __51__HDDataProvenanceManager_noneContributorReference__block_invoke;
      v5[3] = &unk_278613990;
      v5[4] = self;
      v5[5] = &v6;
      [v3 hk_withLock:v5];
      v2 = v7[5];
      _Block_object_dispose(&v6, 8);
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id __71__HDDataProvenanceManager__lookupOrInsertProvenance_transaction_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  v5 = [*(a1 + 32) syncProvenance];
  v21 = [*(a1 + 32) syncIdentity];
  v23 = [*(a1 + 32) productType];
  v22 = [*(a1 + 32) systemBuild];
  v6 = *(a1 + 32);
  if (v6)
  {
    objc_msgSend_operatingSystemVersion(v6);
  }

  else
  {
    memset(v24, 0, 24);
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    v9 = v7 + 12;
    v7 = v7[12];
    v8 = v9[1];
  }

  else
  {
    v8 = 0;
  }

  v10 = *(a1 + 32);
  v11 = v7;
  v19 = v8;
  v17 = [v10 sourceVersion];
  v12 = [*(a1 + 32) timeZoneName];
  v13 = [*(a1 + 32) sourceID];
  v18 = [*(a1 + 32) deviceID];
  v14 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(*(a1 + 48), "persistentID")}];
  v15 = [HDDataProvenanceEntity insertOrLookupDataProvenanceForSyncProvenance:v5 syncIdentity:v21 originProductType:v23 originSystemBuild:v22 originOSVersion:v24 localProductType:v19 localSystemBuild:v11 sourceVersion:v17 timeZoneName:v12 sourceID:v13 deviceID:v18 contributorID:v14 transaction:v4 error:a3];

  if (v15)
  {
    [*(*(a1 + 40) + 88) setObject:*(a1 + 32) forKey:v15 transaction:v4];
  }

  return v15;
}

- (id)localDataProvenanceForSourceEntity:(id)entity version:(id)version deviceEntity:(id)deviceEntity
{
  v47 = *MEMORY[0x277D85DE8];
  entityCopy = entity;
  deviceEntityCopy = deviceEntity;
  versionCopy = version;
  [(HDDataProvenanceManager *)self _loadDefaults];
  if (entityCopy)
  {
    v11 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(entityCopy, "persistentID")}];
    if (deviceEntityCopy)
    {
LABEL_3:
      v12 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(deviceEntityCopy, "persistentID")}];
      goto LABEL_6;
    }
  }

  else
  {
    v11 = 0;
    if (deviceEntityCopy)
    {
      goto LABEL_3;
    }
  }

  v12 = 0;
LABEL_6:
  primaryUserContributorReference = [(HDDataProvenanceManager *)self primaryUserContributorReference];
  v14 = v11;
  v42 = versionCopy;
  v15 = v12;
  v16 = primaryUserContributorReference;
  v17 = v16;
  v41 = v14;
  if (self)
  {
    localSourceID = v14;
    if (!v14)
    {
      localSourceID = [(HDDataProvenanceManager *)self localSourceID];
    }

    deviceNoneID = v15;
    if (!v15)
    {
      deviceNoneID = [(HDDataProvenanceManager *)self deviceNoneID];
    }

    noneContributorReference = v17;
    if (!v17)
    {
      noneContributorReference = [(HDDataProvenanceManager *)self noneContributorReference];
    }

    if (localSourceID && deviceNoneID && noneContributorReference)
    {
      memset(buf, 0, sizeof(buf));
      processInfo = [MEMORY[0x277CCAC38] processInfo];
      v22 = processInfo;
      v37 = deviceEntityCopy;
      v38 = entityCopy;
      v36 = v15;
      v39 = v17;
      if (processInfo)
      {
        objc_msgSend_operatingSystemVersion(processInfo);
      }

      else
      {
        memset(buf, 0, sizeof(buf));
      }

      WeakRetained = objc_loadWeakRetained(&self->_profile);
      currentSyncIdentityPersistentID = [WeakRetained currentSyncIdentityPersistentID];
      localSystemBuild = self->_localSystemBuild;
      localProductType = self->_localProductType;
      localSourceVersion = v42;
      if (!v42)
      {
        localSourceVersion = self->_localSourceVersion;
      }

      _localTimeZoneName = [(HDDataProvenanceManager *)self _localTimeZoneName];
      v43 = *buf;
      v44 = *&buf[16];
      self = [HDDataOriginProvenance dataProvenanceWithSyncProvenance:0 syncIdentity:currentSyncIdentityPersistentID productType:localProductType systemBuild:localSystemBuild operatingSystemVersion:&v43 sourceVersion:localSourceVersion timeZoneName:_localTimeZoneName sourceID:localSourceID deviceID:deviceNoneID contributorReference:noneContributorReference];

      deviceEntityCopy = v37;
      entityCopy = v38;
      v15 = v36;
      v17 = v39;
    }

    else
    {
      _HKInitializeLogging();
      v23 = *MEMORY[0x277CCC2A0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
      {
        v31 = v23;
        localSourceID2 = [(HDDataProvenanceManager *)self localSourceID];
        [(HDDataProvenanceManager *)self deviceNoneID];
        v33 = v40 = v17;
        [(HDDataProvenanceManager *)self noneContributorReference];
        v35 = v34 = v15;
        *buf = 138543874;
        *&buf[4] = localSourceID2;
        *&buf[12] = 2114;
        *&buf[14] = v33;
        *&buf[22] = 2114;
        v46 = v35;
        _os_log_error_impl(&dword_228986000, v31, OS_LOG_TYPE_ERROR, "Missing local source (%{public}@), device (%{public}@) id or contributor (%{public}@)", buf, 0x20u);

        v15 = v34;
        v17 = v40;
      }

      self = 0;
    }
  }

  else
  {
    noneContributorReference = v16;
    deviceNoneID = v15;
    localSourceID = v14;
  }

  return self;
}

- (id)primaryUserContributorReference
{
  if (self)
  {
    v1 = atomic_load((self + 72));
    if (v1)
    {
      v2 = *(self + 64);
    }

    else
    {
      v6 = 0;
      v7 = &v6;
      v8 = 0x3032000000;
      v9 = __Block_byref_object_copy__84;
      v10 = __Block_byref_object_dispose__84;
      v11 = 0;
      v3 = *(self + 24);
      v5[0] = MEMORY[0x277D85DD0];
      v5[1] = 3221225472;
      v5[2] = __58__HDDataProvenanceManager_primaryUserContributorReference__block_invoke;
      v5[3] = &unk_278613990;
      v5[4] = self;
      v5[5] = &v6;
      [v3 hk_withLock:v5];
      v2 = v7[5];
      _Block_object_dispose(&v6, 8);
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)localDataProvenanceForSourceEntity:(id)entity version:(id)version deviceEntity:(id)deviceEntity timezone:(id)timezone OSVersion:(id *)sVersion
{
  v56 = *MEMORY[0x277D85DE8];
  entityCopy = entity;
  deviceEntityCopy = deviceEntity;
  timezoneCopy = timezone;
  versionCopy = version;
  [(HDDataProvenanceManager *)self _loadDefaults];
  if (entityCopy)
  {
    v16 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(entityCopy, "persistentID")}];
    if (deviceEntityCopy)
    {
LABEL_3:
      v17 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(deviceEntityCopy, "persistentID")}];
      goto LABEL_6;
    }
  }

  else
  {
    v16 = 0;
    if (deviceEntityCopy)
    {
      goto LABEL_3;
    }
  }

  v17 = 0;
LABEL_6:
  v51 = deviceEntityCopy;
  primaryUserContributorReference = [(HDDataProvenanceManager *)self primaryUserContributorReference];
  v52 = *&sVersion->var0;
  var2 = sVersion->var2;
  v19 = v16;
  v20 = versionCopy;
  v21 = v17;
  v22 = timezoneCopy;
  v23 = primaryUserContributorReference;
  v24 = v23;
  v49 = v21;
  v50 = v19;
  if (self)
  {
    localSourceID = v19;
    if (!v19)
    {
      localSourceID = [(HDDataProvenanceManager *)self localSourceID];
    }

    deviceNoneID = v21;
    if (!v21)
    {
      deviceNoneID = [(HDDataProvenanceManager *)self deviceNoneID];
    }

    noneContributorReference = v24;
    if (!v24)
    {
      noneContributorReference = [(HDDataProvenanceManager *)self noneContributorReference];
    }

    if (localSourceID && deviceNoneID && noneContributorReference)
    {
      v47 = entityCopy;
      WeakRetained = objc_loadWeakRetained(&self->_profile);
      currentSyncIdentityPersistentID = [WeakRetained currentSyncIdentityPersistentID];
      localSystemBuild = self->_localSystemBuild;
      localProductType = self->_localProductType;
      localSourceVersion = v20;
      if (!v20)
      {
        localSourceVersion = self->_localSourceVersion;
      }

      v33 = v22;
      if (!v22)
      {
        selfCopy = self;
        v35 = currentSyncIdentityPersistentID;
        v36 = self->_localProductType;
        v46 = v24;
        v37 = v20;
        v38 = localSystemBuild;
        _localTimeZoneName = [(HDDataProvenanceManager *)selfCopy _localTimeZoneName];
        localSystemBuild = v38;
        v20 = v37;
        v24 = v46;
        localProductType = v36;
        currentSyncIdentityPersistentID = v35;
        v33 = _localTimeZoneName;
      }

      *buf = v52;
      *&buf[16] = var2;
      self = [HDDataOriginProvenance dataProvenanceWithSyncProvenance:0 syncIdentity:currentSyncIdentityPersistentID productType:localProductType systemBuild:localSystemBuild operatingSystemVersion:buf sourceVersion:localSourceVersion timeZoneName:v33 sourceID:localSourceID deviceID:deviceNoneID contributorReference:noneContributorReference];
      if (!v22)
      {
      }

      entityCopy = v47;
    }

    else
    {
      _HKInitializeLogging();
      v40 = *MEMORY[0x277CCC2A0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
      {
        v42 = v40;
        localSourceID2 = [(HDDataProvenanceManager *)self localSourceID];
        [(HDDataProvenanceManager *)self deviceNoneID];
        v44 = v48 = entityCopy;
        noneContributorReference2 = [(HDDataProvenanceManager *)self noneContributorReference];
        *buf = 138543874;
        *&buf[4] = localSourceID2;
        *&buf[12] = 2114;
        *&buf[14] = v44;
        *&buf[22] = 2114;
        v55 = noneContributorReference2;
        _os_log_error_impl(&dword_228986000, v42, OS_LOG_TYPE_ERROR, "Missing local source (%{public}@), device (%{public}@) id or contributor (%{public}@)", buf, 0x20u);

        entityCopy = v48;
      }

      self = 0;
    }
  }

  else
  {
    noneContributorReference = v23;
    localSourceID = v19;
    deviceNoneID = v21;
  }

  return self;
}

- (id)originProvenanceForPersistentID:(id)d transaction:(id)transaction error:(id *)error
{
  dCopy = d;
  originProvenanceByPersistentID = self->_originProvenanceByPersistentID;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __77__HDDataProvenanceManager_originProvenanceForPersistentID_transaction_error___block_invoke;
  v13[3] = &unk_27861FEB0;
  v14 = dCopy;
  v10 = dCopy;
  v11 = [(HDDatabaseValueCache *)originProvenanceByPersistentID fetchObjectForKey:v10 transaction:transaction error:error faultHandler:v13];

  return v11;
}

id __77__HDDataProvenanceManager_originProvenanceForPersistentID_transaction_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [v5 databaseForEntityClass:objc_opt_class()];

  v7 = +[HDDataProvenanceEntity originProvenanceForPersistentID:database:error:](HDDataProvenanceEntity, "originProvenanceForPersistentID:database:error:", [*(a1 + 32) longLongValue], v6, a3);

  return v7;
}

uint64_t __40__HDDataProvenanceManager__loadDefaults__block_invoke(uint64_t a1, void *a2)
{
  v51 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [(HDDataProvenanceManager *)*(a1 + 32) deviceNoneID];

  if (v4)
  {
    v5 = 0;
    goto LABEL_10;
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v7 = [WeakRetained deviceManager];
  v46 = 0;
  v8 = [v7 deviceEntityForNoDeviceWithError:&v46];
  v5 = v46;

  if (v8)
  {
    v9 = *(a1 + 32);
    v10 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v8, "persistentID")}];
    v11 = v10;
    if (v9)
    {
      v12 = *(v9 + 24);
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __44__HDDataProvenanceManager__setDeviceNoneID___block_invoke;
      v48 = &unk_278613920;
      v49 = v9;
      v50 = v10;
      [v12 hk_withLock:buf];
    }
  }

  else
  {
    _HKInitializeLogging();
    v13 = *MEMORY[0x277CCC2A0];
    if (!os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    v11 = v13;
    v35 = objc_opt_class();
    *buf = 138412546;
    *&buf[4] = v35;
    *&buf[12] = 2114;
    *&buf[14] = v5;
    _os_log_error_impl(&dword_228986000, v11, OS_LOG_TYPE_ERROR, "%@: Failed to get device Entity for no device: %{public}@", buf, 0x16u);
  }

LABEL_9:
LABEL_10:
  v14 = [(HDDataProvenanceManager *)*(a1 + 32) localSourceID];

  if (v14)
  {
    v15 = v5;
    goto LABEL_19;
  }

  v16 = objc_loadWeakRetained((*(a1 + 32) + 8));
  v17 = [v16 sourceManager];
  v45 = v5;
  v18 = [v17 localDeviceSourceWithError:&v45];
  v15 = v45;

  if (v18)
  {
    v19 = *(a1 + 32);
    v20 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v18, "persistentID")}];
    v21 = v20;
    if (v19)
    {
      v22 = *(v19 + 24);
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __45__HDDataProvenanceManager__setLocalSourceID___block_invoke;
      v48 = &unk_278613920;
      v49 = v19;
      v50 = v20;
      [v22 hk_withLock:buf];
    }
  }

  else
  {
    _HKInitializeLogging();
    v23 = *MEMORY[0x277CCC2A0];
    if (!os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    v21 = v23;
    v36 = objc_opt_class();
    *buf = 138412546;
    *&buf[4] = v36;
    *&buf[12] = 2114;
    *&buf[14] = v15;
    _os_log_error_impl(&dword_228986000, v21, OS_LOG_TYPE_ERROR, "%@: Failed to get local device source: %{public}@", buf, 0x16u);
  }

LABEL_18:
LABEL_19:
  v24 = [(HDDataProvenanceManager *)*(a1 + 32) localDeviceID];

  if (!v24)
  {
    v26 = objc_loadWeakRetained((*(a1 + 32) + 8));
    v27 = [v26 deviceManager];
    v44 = v15;
    v28 = [v27 currentDeviceEntityWithError:&v44];
    v25 = v44;

    if (v28)
    {
      v29 = *(a1 + 32);
      v30 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v28, "persistentID")}];
      v31 = v30;
      if (v29)
      {
        v32 = *(v29 + 24);
        *buf = MEMORY[0x277D85DD0];
        *&buf[8] = 3221225472;
        *&buf[16] = __45__HDDataProvenanceManager__setLocalDeviceID___block_invoke;
        v48 = &unk_278613920;
        v49 = v29;
        v50 = v30;
        [v32 hk_withLock:buf];
      }
    }

    else
    {
      _HKInitializeLogging();
      v33 = *MEMORY[0x277CCC2A0];
      if (!os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_27;
      }

      v31 = v33;
      v37 = objc_opt_class();
      *buf = 138412546;
      *&buf[4] = v37;
      *&buf[12] = 2114;
      *&buf[14] = v25;
      _os_log_error_impl(&dword_228986000, v31, OS_LOG_TYPE_ERROR, "%@: Failed to get current device entity: %{public}@", buf, 0x16u);
    }

LABEL_27:
    goto LABEL_28;
  }

  v25 = v15;
LABEL_28:
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __40__HDDataProvenanceManager__loadDefaults__block_invoke_313;
  v42[3] = &unk_278613968;
  v43 = *(a1 + 32);
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __40__HDDataProvenanceManager__loadDefaults__block_invoke_2;
  v38[3] = &unk_27861FF00;
  v38[4] = v43;
  v39 = v4 == 0;
  v40 = v14 == 0;
  v41 = v24 == 0;
  [v3 onCommit:v42 orRollback:v38];

  return 1;
}

- (id)localDeviceID
{
  if (self)
  {
    v1 = atomic_load((self + 72));
    if (v1)
    {
      v2 = *(self + 40);
    }

    else
    {
      v6 = 0;
      v7 = &v6;
      v8 = 0x3032000000;
      v9 = __Block_byref_object_copy__84;
      v10 = __Block_byref_object_dispose__84;
      v11 = 0;
      v3 = *(self + 24);
      v5[0] = MEMORY[0x277D85DD0];
      v5[1] = 3221225472;
      v5[2] = __40__HDDataProvenanceManager_localDeviceID__block_invoke;
      v5[3] = &unk_278613990;
      v5[4] = self;
      v5[5] = &v6;
      [v3 hk_withLock:v5];
      v2 = v7[5];
      _Block_object_dispose(&v6, 8);
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void __40__HDDataProvenanceManager__loadDefaults__block_invoke_313(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = atomic_load((v1 + 72));
    if ((v2 & 1) == 0)
    {
      v5[0] = 0;
      v5[1] = v5;
      v5[2] = 0x2020000000;
      v6 = 0;
      v3 = *(v1 + 24);
      v4[0] = MEMORY[0x277D85DD0];
      v4[1] = 3221225472;
      v4[2] = __47__HDDataProvenanceManager__checkDefaultsLoaded__block_invoke;
      v4[3] = &unk_278613990;
      v4[4] = v1;
      v4[5] = v5;
      [v3 hk_withLock:v4];
      _Block_object_dispose(v5, 8);
    }
  }
}

uint64_t __40__HDDataProvenanceManager__loadDefaults__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 24);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __40__HDDataProvenanceManager__loadDefaults__block_invoke_3;
  v4[3] = &unk_27861FED8;
  v5 = *(a1 + 40);
  v4[4] = v1;
  v6 = *(a1 + 41);
  return [v2 hk_withLock:v4];
}

void __40__HDDataProvenanceManager__loadDefaults__block_invoke_3(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    v2 = *(a1 + 32);
    v3 = *(v2 + 48);
    *(v2 + 48) = 0;
  }

  if (*(a1 + 41) == 1)
  {
    v4 = *(a1 + 32);
    v5 = *(v4 + 32);
    *(v4 + 32) = 0;
  }

  if (*(a1 + 42) == 1)
  {
    v6 = *(a1 + 32);
    v7 = *(v6 + 40);
    *(v6 + 40) = 0;
  }
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  localSourceID = [(HDDataProvenanceManager *)self localSourceID];
  localDeviceID = [(HDDataProvenanceManager *)self localDeviceID];
  v14 = *&self->_localSystemBuild;
  localSourceVersion = self->_localSourceVersion;
  _localTimeZoneName = [(HDDataProvenanceManager *)self _localTimeZoneName];
  deviceNoneID = [(HDDataProvenanceManager *)self deviceNoneID];
  noneContributorReference = [(HDDataProvenanceManager *)self noneContributorReference];
  primaryUserContributorReference = [(HDDataProvenanceManager *)self primaryUserContributorReference];
  v12 = [v3 stringWithFormat:@"<%@:%p source=%@, device=%@, build=%@, productType=%@, sourceVersion=%@, tz=%@, noneDevice=%@, noneContributor=%@, primaryUserContributor=%@>", v4, self, localSourceID, localDeviceID, v14, localSourceVersion, _localTimeZoneName, deviceNoneID, noneContributorReference, primaryUserContributorReference];

  return v12;
}

uint64_t __47__HDDataProvenanceManager__checkDefaultsLoaded__block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  v2 = v1[4] && v1[5] && v1[6] && v1[7] != 0;
  *(*(*(result + 40) + 8) + 24) = v2;
  if (*(*(*(result + 40) + 8) + 24) == 1)
  {
    atomic_store(1u, (*(result + 32) + 72));
  }

  return result;
}

uint64_t __45__HDDataProvenanceManager__setLocalSourceID___block_invoke(uint64_t result)
{
  if (!*(*(result + 32) + 32))
  {
    v2 = result;
    v3 = objc_msgSend_copy(*(result + 40));
    v4 = *(v2 + 32);
    v5 = *(v4 + 32);
    *(v4 + 32) = v3;

    return MEMORY[0x2821F96F8](v3, v5);
  }

  return result;
}

uint64_t __45__HDDataProvenanceManager__setLocalDeviceID___block_invoke(uint64_t result)
{
  if (!*(*(result + 32) + 40))
  {
    v2 = result;
    v3 = objc_msgSend_copy(*(result + 40));
    v4 = *(v2 + 32);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    return MEMORY[0x2821F96F8](v3, v5);
  }

  return result;
}

uint64_t __44__HDDataProvenanceManager__setDeviceNoneID___block_invoke(uint64_t result)
{
  if (!*(*(result + 32) + 48))
  {
    v2 = result;
    v3 = objc_msgSend_copy(*(result + 40));
    v4 = *(v2 + 32);
    v5 = *(v4 + 48);
    *(v4 + 48) = v3;

    return MEMORY[0x2821F96F8](v3, v5);
  }

  return result;
}

uint64_t __56__HDDataProvenanceManager__setNoneContributorReference___block_invoke(uint64_t result)
{
  if (!*(*(result + 32) + 56))
  {
    v2 = result;
    v3 = objc_msgSend_copy(*(result + 40));
    v4 = *(v2 + 32);
    v5 = *(v4 + 56);
    *(v4 + 56) = v3;

    return MEMORY[0x2821F96F8](v3, v5);
  }

  return result;
}

uint64_t __63__HDDataProvenanceManager__setPrimaryUserContributorReference___block_invoke(uint64_t result)
{
  if (!*(*(result + 32) + 64))
  {
    v2 = result;
    v3 = objc_msgSend_copy(*(result + 40));
    v4 = *(v2 + 32);
    v5 = *(v4 + 64);
    *(v4 + 64) = v3;

    return MEMORY[0x2821F96F8](v3, v5);
  }

  return result;
}

@end