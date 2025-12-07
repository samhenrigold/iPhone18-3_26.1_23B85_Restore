@interface HDBinarySampleSyncEntity
+ (BOOL)_insertObjectsFromCodableObjectCollection:(id)collection syncStore:(id)store profile:(id)profile error:(id *)error;
+ (id)_basePruningPredicateForDate:(id)date profile:(id)profile;
+ (id)_objectWithCodable:(id)codable collection:(id)collection;
+ (id)_predicateForSyncSession:(id)session;
+ (unint64_t)supportedNanoSyncDirectionsForProtocolVersion:(int)version;
@end

@implementation HDBinarySampleSyncEntity

+ (unint64_t)supportedNanoSyncDirectionsForProtocolVersion:(int)version
{
  if (version >= 6)
  {
    return 3;
  }

  else
  {
    return 0;
  }
}

+ (id)_objectWithCodable:(id)codable collection:(id)collection
{
  v17 = *MEMORY[0x277D85DE8];
  codableCopy = codable;
  sample = [codableCopy sample];
  [sample dataType];
  v7 = _HKValidDataTypeCode();

  if (v7)
  {
    v8 = [MEMORY[0x277CCD8A8] createWithCodable:codableCopy];
  }

  else
  {
    _HKInitializeLogging();
    v9 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      v10 = v9;
      sample2 = [codableCopy sample];
      v13 = 138543618;
      selfCopy = self;
      v15 = 2048;
      dataType = [sample2 dataType];
      _os_log_impl(&dword_228986000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: Ignorning unknown data type code %lld", &v13, 0x16u);
    }

    v8 = 0;
  }

  return v8;
}

+ (BOOL)_insertObjectsFromCodableObjectCollection:(id)collection syncStore:(id)store profile:(id)profile error:(id *)error
{
  v75 = *MEMORY[0x277D85DE8];
  collectionCopy = collection;
  storeCopy = store;
  profileCopy = profile;
  v13 = [objc_msgSend(self "healthEntityClass")];
  v67 = 0;
  v59 = collectionCopy;
  v14 = [HDDataSyncUtilities provenanceFromCollection:collectionCopy syncStore:storeCopy profile:profileCopy error:&v67];
  v61 = v67;
  v15 = v14 == 0;
  if (v14)
  {
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    obj = v13;
    v16 = [obj countByEnumeratingWithState:&v63 objects:v69 count:16];
    if (v16)
    {
      v17 = v16;
      errorCopy = error;
      v53 = v14 == 0;
      v54 = v13;
      v18 = *v64;
      v56 = profileCopy;
      v57 = storeCopy;
      v55 = *v64;
LABEL_4:
      v19 = 0;
      v58 = v17;
      while (1)
      {
        if (*v64 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v63 + 1) + 8 * v19);
        sample = [v20 sample];
        dataType = [sample dataType];

        if (dataType != 144)
        {
          break;
        }

        v62 = 0;
        v23 = [HDECGSampleEntity _insertECGWithCodableBinarySample:v20 syncStore:storeCopy profile:profileCopy provenance:v14 error:&v62];
        v24 = v62;
        v25 = v24;
        if (!v23)
        {
          if ([v24 hk_isHealthKitErrorWithCode:123])
          {
            v49 = v25;
            autoBugCaptureReporter2 = v49;
            v13 = v54;
            v15 = v53;
            if (v49)
            {
              if (errorCopy)
              {
                v50 = v49;
                *errorCopy = autoBugCaptureReporter2;
              }

              else
              {
                _HKLogDroppedError();
              }
            }

            goto LABEL_40;
          }

          _HKInitializeLogging();
          v26 = *MEMORY[0x277CCC328];
          if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
          {
            *buf = 138543618;
            v72 = storeCopy;
            v73 = 2114;
            v74 = v25;
            _os_log_error_impl(&dword_228986000, v26, OS_LOG_TYPE_ERROR, "failed to insert ECG sample from binary sample synced from store %{public}@: %{public}@", buf, 0x16u);
          }

LABEL_25:
          daemon = [profileCopy daemon];
          autoBugCaptureReporter = [daemon autoBugCaptureReporter];
          [autoBugCaptureReporter reportApplyDataFailure:objc_opt_class() duringSyncFromStore:storeCopy error:v61];
        }

LABEL_26:

        if (v17 == ++v19)
        {
          v17 = [obj countByEnumeratingWithState:&v63 objects:v69 count:16];
          v46 = 1;
          if (v17)
          {
            goto LABEL_4;
          }

          goto LABEL_34;
        }
      }

      v27 = v20;
      v28 = profileCopy;
      v29 = v14;
      v30 = v14;
      v31 = v59;
      v32 = objc_opt_self();
      v33 = HKDefaultObjectValidationConfigurationIgnoringAllOptions();
      v35 = v34;
      v36 = [v32 _objectWithCodable:v27 collection:v31];

      if (v36)
      {
        v37 = [v36 _validateWithConfiguration:{v33, v35}];
        if (v37)
        {
          _HKInitializeLogging();
          v38 = *MEMORY[0x277CCC328];
          if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v72 = v27;
            v73 = 2114;
            v74 = v37;
            _os_log_error_impl(&dword_228986000, v38, OS_LOG_TYPE_ERROR, "Codable object %@ failed validation: %{public}@", buf, 0x16u);
          }
        }

        dataManager = [v28 dataManager];
        v70 = v36;
        v40 = [MEMORY[0x277CBEA60] arrayWithObjects:&v70 count:1];
        v68 = 0;
        v41 = [dataManager insertDataObjects:v40 withProvenance:v30 creationDate:1 skipInsertionFilter:0 updateSourceOrder:0 resolveAssociations:&v68 error:2.22507386e-308];

        v25 = 0;
        profileCopy = v56;
        storeCopy = v57;
        v14 = v29;
        v18 = v55;
        v17 = v58;
        if (v41)
        {
          goto LABEL_26;
        }
      }

      else
      {
        _HKInitializeLogging();
        v42 = *MEMORY[0x277CCC328];
        if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v72 = v27;
          _os_log_error_impl(&dword_228986000, v42, OS_LOG_TYPE_ERROR, "failed to create client object with codable %@", buf, 0xCu);
        }

        profileCopy = v56;
        storeCopy = v57;
        v14 = v29;
        v18 = v55;
        v17 = v58;
      }

      if ([0 hk_isHealthKitErrorWithCode:123])
      {
        v46 = 0;
LABEL_34:
        v13 = v54;
        goto LABEL_41;
      }

      _HKInitializeLogging();
      v43 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v72 = storeCopy;
        v73 = 2114;
        v74 = v61;
        _os_log_error_impl(&dword_228986000, v43, OS_LOG_TYPE_ERROR, "failed to insert objects synced from store %{public}@: %{public}@", buf, 0x16u);
      }

      v25 = 0;
      goto LABEL_25;
    }

    v46 = 1;
  }

  else
  {
    _HKInitializeLogging();
    v47 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v72 = storeCopy;
      v73 = 2114;
      v74 = v61;
      _os_log_impl(&dword_228986000, v47, OS_LOG_TYPE_DEFAULT, "Failed to create provenance for codable object collection from store %{public}@: %{public}@", buf, 0x16u);
    }

    obj = [profileCopy daemon];
    autoBugCaptureReporter2 = [obj autoBugCaptureReporter];
    [autoBugCaptureReporter2 reportApplyDataFailure:objc_opt_class() duringSyncFromStore:storeCopy error:v61];
LABEL_40:

    v46 = v15;
  }

LABEL_41:

  return v46;
}

+ (id)_basePruningPredicateForDate:(id)date profile:(id)profile
{
  dateCopy = date;
  daemon = [profile daemon];
  behavior = [daemon behavior];
  supportsSampleExpiration = [behavior supportsSampleExpiration];

  if (supportsSampleExpiration)
  {
    currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
    _allBinarySampleTypes = [MEMORY[0x277CCD720] _allBinarySampleTypes];
    v11 = [currentCalendar hd_predicateForSamplesWithTypes:_allBinarySampleTypes endingBeforeDate:dateCopy minusDays:*MEMORY[0x277CCCEE8]];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)_predicateForSyncSession:(id)session
{
  v16[1] = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  v15.receiver = self;
  v15.super_class = &OBJC_METACLASS___HDBinarySampleSyncEntity;
  v5 = objc_msgSendSuper2(&v15, sel__predicateForSyncSession_, sessionCopy);
  unprocessedBloodOxygenDataType = [MEMORY[0x277CCD720] unprocessedBloodOxygenDataType];
  v16[0] = unprocessedBloodOxygenDataType;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
  v8 = HDSampleEntityPredicateForDataTypes(v7);

  v9 = [MEMORY[0x277D10B20] negatedPredicate:v8];
  syncStore = [sessionCopy syncStore];
  syncStoreType = [syncStore syncStoreType];

  if (syncStoreType == 2 || _isCompanionSyncToUSLegallyCompliantOxygenSaturationDeviceForSyncSession(sessionCopy))
  {
    v12 = [MEMORY[0x277D10B20] compoundPredicateWithPredicate:v5 otherPredicate:v9];
  }

  else
  {
    v12 = v5;
  }

  v13 = v12;

  return v13;
}

@end