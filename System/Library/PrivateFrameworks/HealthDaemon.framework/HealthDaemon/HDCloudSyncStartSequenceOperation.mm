@interface HDCloudSyncStartSequenceOperation
- (BOOL)performWithError:(id *)error;
- (HDCloudSyncStartSequenceOperation)initWithConfiguration:(id)configuration cloudState:(id)state;
- (HDCloudSyncStartSequenceOperation)initWithConfiguration:(id)configuration cloudState:(id)state target:(id)target sequence:(id)sequence replacingSequence:(id)replacingSequence shouldClearRebaselineDeadline:(BOOL)deadline;
- (uint64_t)_updateDisplayNameForRegistryRecord:(uint64_t)record error:;
@end

@implementation HDCloudSyncStartSequenceOperation

- (HDCloudSyncStartSequenceOperation)initWithConfiguration:(id)configuration cloudState:(id)state
{
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE660];
  v7 = NSStringFromSelector(a2);
  [v5 raise:v6 format:{@"The -%@ method is not available on %@", v7, objc_opt_class()}];

  return 0;
}

- (HDCloudSyncStartSequenceOperation)initWithConfiguration:(id)configuration cloudState:(id)state target:(id)target sequence:(id)sequence replacingSequence:(id)replacingSequence shouldClearRebaselineDeadline:(BOOL)deadline
{
  targetCopy = target;
  sequenceCopy = sequence;
  replacingSequenceCopy = replacingSequence;
  v21.receiver = self;
  v21.super_class = HDCloudSyncStartSequenceOperation;
  v18 = [(HDCloudSyncOperation *)&v21 initWithConfiguration:configuration cloudState:state];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_target, target);
    objc_storeStrong(&v19->_sequenceRecord, sequence);
    objc_storeStrong(&v19->_replacedSequenceRecord, replacingSequence);
    v19->_shouldClearRebaselineDeadline = deadline;
  }

  return v19;
}

- (BOOL)performWithError:(id *)error
{
  selfCopy = self;
  v110[1] = *MEMORY[0x277D85DE8];
  if (self)
  {
    replacedSequenceRecord = self->_replacedSequenceRecord;
    if (replacedSequenceRecord)
    {
      recordID = [(HDCloudSyncRecord *)replacedSequenceRecord recordID];
      v110[0] = recordID;
      v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v110 count:1];
    }

    else
    {
      v7 = MEMORY[0x277CBEBF8];
    }

    zoneIdentifier = [(HDCloudSyncTarget *)selfCopy->_target zoneIdentifier];
    type = [zoneIdentifier type];

    if (type != 2)
    {
      v33 = [HDCloudSyncSequenceState alloc];
      v34 = [(HDCloudSyncSequenceState *)v33 initWithRecordsToSave:MEMORY[0x277CBEBF8] recordIDsToDelete:v7 shouldClearRebaselineDeadline:selfCopy->_shouldClearRebaselineDeadline];
      sequenceState = selfCopy->_sequenceState;
      selfCopy->_sequenceState = v34;
      LOBYTE(selfCopy) = 1;
LABEL_45:

      return selfCopy;
    }

    v99 = v7;
    configuration = [(HDCloudSyncOperation *)selfCopy configuration];
    repository = [configuration repository];
    configuration2 = [(HDCloudSyncOperation *)selfCopy configuration];
    repository2 = [configuration2 repository];
    primaryCKContainer = [repository2 primaryCKContainer];
    v15 = [repository cachedOwnerIdentifierForContainer:primaryCKContainer];
    sequenceState = [v15 string];

    configuration3 = [(HDCloudSyncOperation *)selfCopy configuration];
    repository3 = [configuration3 repository];
    syncIdentityManager = [repository3 syncIdentityManager];
    currentSyncIdentity = [syncIdentityManager currentSyncIdentity];
    identity = [currentSyncIdentity identity];

    v21 = [HDCloudSyncCachedZone alloc];
    zoneIdentifier2 = [(HDCloudSyncTarget *)selfCopy->_target zoneIdentifier];
    configuration4 = [(HDCloudSyncOperation *)selfCopy configuration];
    repository4 = [configuration4 repository];
    configuration5 = [(HDCloudSyncOperation *)selfCopy configuration];
    accessibilityAssertion = [configuration5 accessibilityAssertion];
    v27 = [(HDCloudSyncCachedZone *)v21 initForZoneIdentifier:zoneIdentifier2 repository:repository4 accessibilityAssertion:accessibilityAssertion];

    v102 = 0;
    v28 = [v27 recordsForClass:objc_opt_class() error:&v102];
    v29 = v102;
    v30 = v29;
    if (!v28 && v29)
    {
      _HKInitializeLogging();
      v31 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        target = selfCopy->_target;
        v86 = v31;
        zoneIdentifier3 = [(HDCloudSyncTarget *)target zoneIdentifier];
        *buf = 138543874;
        *&buf[4] = selfCopy;
        v106 = 2114;
        v107 = zoneIdentifier3;
        v108 = 2114;
        v109 = v30;
        _os_log_error_impl(&dword_228986000, v86, OS_LOG_TYPE_ERROR, "%{public}@ Failed to get registry records for %{public}@, %{public}@", buf, 0x20u);
      }

      if (error)
      {
        v32 = v30;
        LOBYTE(selfCopy) = 0;
        *error = v30;
      }

      else
      {
        _HKLogDroppedError();
        LOBYTE(selfCopy) = 0;
      }

      v7 = v99;
      goto LABEL_44;
    }

    errorCopy = error;
    v96 = sequenceState;
    if ([v28 count] >= 2)
    {
      _HKInitializeLogging();
      v35 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        v88 = selfCopy->_target;
        v89 = v35;
        zoneIdentifier4 = [(HDCloudSyncTarget *)v88 zoneIdentifier];
        *buf = 138543618;
        *&buf[4] = selfCopy;
        v106 = 2114;
        v107 = zoneIdentifier4;
        _os_log_error_impl(&dword_228986000, v89, OS_LOG_TYPE_ERROR, "%{public}@ Retrieved multiple cached registry records for %{public}@,", buf, 0x16u);
      }
    }

    firstObject = [v28 firstObject];
    v94 = firstObject == 0;
    if (!firstObject)
    {
      v91 = v30;
      v97 = v27;
      v37 = [HDCloudSyncRegistryRecord alloc];
      zoneIdentifier5 = [(HDCloudSyncTarget *)selfCopy->_target zoneIdentifier];
      v38ZoneIdentifier = [zoneIdentifier5 zoneIdentifier];
      configuration6 = [(HDCloudSyncOperation *)selfCopy configuration];
      repository5 = [configuration6 repository];
      profile = [repository5 profile];
      profileIdentifier = [profile profileIdentifier];
      v44 = [(HDCloudSyncRegistryRecord *)v37 initInZone:v38ZoneIdentifier ownerProfileIdentifier:profileIdentifier];

      firstObject = v44;
      *buf = 0;
      LODWORD(profileIdentifier) = [(HDCloudSyncStartSequenceOperation *)selfCopy _updateDisplayNameForRegistryRecord:v44 error:buf];
      v45 = *buf;
      if (!profileIdentifier)
      {
        v80 = v45;
        v27 = v97;
        v7 = v99;
        sequenceState = v96;
        v30 = v91;
        if (!v80)
        {
          goto LABEL_42;
        }

        goto LABEL_39;
      }

      v27 = v97;
      v30 = v91;
    }

    v98 = firstObject;
    v46 = [firstObject storeIdentifiersForSyncIdentity:identity];
    store = [(HDCloudSyncTarget *)selfCopy->_target store];
    storeIdentifier = [store storeIdentifier];
    v49 = [v46 containsObject:storeIdentifier];

    if ((v49 & 1) == 0)
    {
      store2 = [(HDCloudSyncTarget *)selfCopy->_target store];
      storeIdentifier2 = [store2 storeIdentifier];
      configuration7 = [(HDCloudSyncOperation *)selfCopy configuration];
      repository6 = [configuration7 repository];
      syncIdentityManager2 = [repository6 syncIdentityManager];
      [syncIdentityManager2 currentSyncIdentity];
      v53 = v28;
      v55 = v54 = v27;
      [v55 identity];
      v57 = v56 = v30;
      [v98 addStoreIdentifier:storeIdentifier2 ownerIdentifier:v96 syncIdentity:v57];

      v30 = v56;
      v27 = v54;
      v28 = v53;

      v94 = 1;
    }

    zoneIdentifier6 = [(HDCloudSyncTarget *)selfCopy->_target zoneIdentifier];
    scope = [zoneIdentifier6 scope];

    if (scope == 2)
    {
      firstObject = v98;
      ownerProfileIdentifier = [v98 ownerProfileIdentifier];

      if (!ownerProfileIdentifier)
      {
        configuration8 = [(HDCloudSyncOperation *)selfCopy configuration];
        repository7 = [configuration8 repository];
        profile2 = [repository7 profile];
        profileIdentifier2 = [profile2 profileIdentifier];
        [v98 setOwnerProfileIdentifier:profileIdentifier2];

        firstObject = v98;
        v94 = 1;
      }

      sharedProfileIdentifier = [firstObject sharedProfileIdentifier];

      if (!sharedProfileIdentifier)
      {
        configuration9 = [(HDCloudSyncOperation *)selfCopy configuration];
        repository8 = [configuration9 repository];
        profile3 = [repository8 profile];
        [profile3 profileIdentifier];
        v69 = v30;
        v70 = v28;
        v72 = v71 = v27;
        v73 = [HDCloudSyncRegistryRecord sharedProfileIdentifierForOwnerProfileIdentifier:v72];
        [v98 setSharedProfileIdentifier:v73];

        v27 = v71;
        v28 = v70;
        v30 = v69;

        firstObject = v98;
        v94 = 1;
      }
    }

    else
    {
      firstObject = v98;
    }

    configuration10 = [(HDCloudSyncOperation *)selfCopy configuration];
    repository9 = [configuration10 repository];
    profileType = [repository9 profileType];

    if (profileType != 3)
    {
      v7 = v99;
      sequenceState = v96;
      if (!v94)
      {
        v80 = MEMORY[0x277CBEBF8];
        goto LABEL_37;
      }

LABEL_31:
      record = [firstObject record];
      v104 = record;
      v80 = [MEMORY[0x277CBEA60] arrayWithObjects:&v104 count:1];

LABEL_37:
      v81 = [[HDCloudSyncSequenceState alloc] initWithRecordsToSave:v80 recordIDsToDelete:v7 shouldClearRebaselineDeadline:selfCopy->_shouldClearRebaselineDeadline];
      v82 = selfCopy->_sequenceState;
      selfCopy->_sequenceState = v81;

      v103 = 1;
LABEL_43:

      LOBYTE(selfCopy) = v103;
LABEL_44:

      goto LABEL_45;
    }

    v101 = 0;
    v77 = [(HDCloudSyncStartSequenceOperation *)selfCopy _updateDisplayNameForRegistryRecord:firstObject error:&v101];
    v78 = v101;
    v7 = v99;
    sequenceState = v96;
    if (v77)
    {

      goto LABEL_31;
    }

    v80 = v78;
    if (!v80)
    {
LABEL_42:

      v103 = v80 == 0;
      goto LABEL_43;
    }

LABEL_39:
    if (errorCopy)
    {
      v83 = v80;
      *errorCopy = v80;
    }

    else
    {
      _HKLogDroppedError();
    }

    goto LABEL_42;
  }

  return selfCopy;
}

- (uint64_t)_updateDisplayNameForRegistryRecord:(uint64_t)record error:
{
  v5 = a2;
  configuration = [self configuration];
  repository = [configuration repository];
  profile = [repository profile];
  legacyRepositoryProfile = [profile legacyRepositoryProfile];
  v14 = 0;
  v15 = 0;
  v10 = [legacyRepositoryProfile fetchDisplayFirstName:&v15 lastName:&v14 error:record];
  v11 = v15;
  v12 = v14;

  if (v10)
  {
    if (v11)
    {
      [v5 setDisplayFirstName:v11];
    }

    if (v12)
    {
      [v5 setDisplayLastName:v12];
    }
  }

  return v10;
}

@end