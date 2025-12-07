@interface HDCloudSyncSequenceRecord
+ (BOOL)hasFutureSchema:(id)schema;
+ (BOOL)isSequenceRecord:(id)record;
+ (HDCloudSyncSequenceRecord)recordWithCKRecord:(id)record error:(id *)error;
+ (id)_recordIDWithIndividualZoneID:(uint64_t)d sequenceSlot:;
+ (id)_recordIDWithOwnerIdentifier:(void *)identifier storeIdentifier:(void *)storeIdentifier zoneID:(uint64_t)d sequenceSlot:;
+ (id)fieldsForUnprotectedSerialization;
+ (id)recordIDsForOwnerIdentifier:(id)identifier storeIdentifier:(id)storeIdentifier zoneID:(id)d;
+ (id)recordIDsWithIndividualZoneID:(id)d;
+ (void)_recordNameForSequenceSlot:(uint64_t)slot;
- (BOOL)hasFutureSyncEntityVersions:(id)versions;
- (BOOL)isEqual:(id)equal;
- (CKRecordID)firstUnfrozenChangeRecord;
- (CKReference)parentRecordReference;
- (HDCloudSyncSequenceRecord)initWithCKRecord:(id)record schemaVersion:(int64_t)version;
- (HDCodableSyncEntityVersionMap)syncEntityVersionMap;
- (HDSyncAnchorMap)frozenSyncAnchorMap;
- (HDSyncAnchorMap)syncAnchorMap;
- (NSSet)includedChildSyncIdentities;
- (NSSet)includedIdentifiers;
- (NSSet)includedSyncIdentities;
- (id)initForSequenceSlot:(int)slot syncAnchorMap:(id)map changeIndex:(unint64_t)index baselineEpoch:(int64_t)epoch includedIdentifiers:(id)identifiers includedSyncIdentities:(id)identities includedChildSyncIdentities:(id)syncIdentities storeRecord:(id)self0;
- (id)initWithCKRecord:(uint64_t)record schemaVersion:(void *)version underlyingSequence:;
- (void)_unitTest_setChildRecordCount:(unint64_t)count;
- (void)decrementChildRecordCount:(unint64_t)count;
- (void)incrementChangeIndex;
- (void)incrementChildRecordCount;
- (void)replaceSyncAnchorMapWithSyncAnchorMap:(id)map;
- (void)resetChangeIndex:(unint64_t)index;
- (void)setActive:(BOOL)active;
- (void)setFirstUnfrozenChangeRecord:(id)record;
- (void)setIncludedChildSyncIdentities:(id)identities;
- (void)setProtocolVersion:(int)version;
- (void)updateFrozenSyncAnchorMapWithSyncAnchorMap:(id)map;
- (void)updateSyncAnchorMapWithSyncAnchorMap:(id)map;
- (void)updateSyncProtocolVersion:(int)version syncEntityVersions:(id)versions;
@end

@implementation HDCloudSyncSequenceRecord

+ (id)_recordIDWithOwnerIdentifier:(void *)identifier storeIdentifier:(void *)storeIdentifier zoneID:(uint64_t)d sequenceSlot:
{
  dCopy = d;
  storeIdentifierCopy = storeIdentifier;
  identifierCopy = identifier;
  v10 = a2;
  v11 = objc_opt_self();
  v12 = MEMORY[0x277CCACA8];
  uUIDString = [identifierCopy UUIDString];

  v14 = [(HDCloudSyncSequenceRecord *)v11 _recordNameForSequenceSlot:dCopy];
  v15 = [v12 stringWithFormat:@"%@/%@/%@", v10, uUIDString, v14];

  v16 = [objc_alloc(MEMORY[0x277CBC5D0]) initWithRecordName:v15 zoneID:storeIdentifierCopy];

  return v16;
}

+ (id)_recordIDWithIndividualZoneID:(uint64_t)d sequenceSlot:
{
  dCopy = d;
  v4 = a2;
  v5 = objc_opt_self();
  v6 = [(HDCloudSyncSequenceRecord *)v5 _recordNameForSequenceSlot:dCopy];
  v7 = [objc_alloc(MEMORY[0x277CBC5D0]) initWithRecordName:v6 zoneID:v4];

  return v7;
}

- (HDCloudSyncSequenceRecord)initWithCKRecord:(id)record schemaVersion:(int64_t)version
{
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE660];
  v7 = NSStringFromSelector(a2);
  [v5 raise:v6 format:{@"The -%@ method is not available on %@", v7, objc_opt_class()}];

  return 0;
}

- (id)initForSequenceSlot:(int)slot syncAnchorMap:(id)map changeIndex:(unint64_t)index baselineEpoch:(int64_t)epoch includedIdentifiers:(id)identifiers includedSyncIdentities:(id)identities includedChildSyncIdentities:(id)syncIdentities storeRecord:(id)self0
{
  v13 = *&slot;
  recordCopy = record;
  syncIdentitiesCopy = syncIdentities;
  identitiesCopy = identities;
  identifiersCopy = identifiers;
  mapCopy = map;
  v18 = recordCopy;
  objc_opt_self();
  recordID = [v18 recordID];
  zoneID = [recordID zoneID];

  v65 = 0;
  if ([zoneID hd_isUnifiedSyncZoneIDForSyncCircleIdentifier:&v65])
  {
    ownerIdentifier = [v18 ownerIdentifier];
    storeIdentifier = [v18 storeIdentifier];
    v23 = v13;
    v24 = [HDCloudSyncSequenceRecord _recordIDWithOwnerIdentifier:ownerIdentifier storeIdentifier:storeIdentifier zoneID:zoneID sequenceSlot:v13];
  }

  else
  {
    ownerIdentifier = [v18 record];
    storeIdentifier = [ownerIdentifier recordID];
    zoneID2 = [storeIdentifier zoneID];
    v26 = v13;
    v27 = zoneID2;
    v23 = v26;
    v24 = [HDCloudSyncSequenceRecord _recordIDWithIndividualZoneID:zoneID2 sequenceSlot:v26];
  }

  v28 = [objc_alloc(MEMORY[0x277CBC5A0]) initWithRecordType:@"CloudSyncSequenceRecord" recordID:v24];
  record = [v18 record];

  recordID2 = [record recordID];
  v31 = mapCopy;
  v32 = identifiersCopy;
  v33 = identitiesCopy;
  v34 = syncIdentitiesCopy;
  v35 = recordID2;
  v36 = v28;
  v63 = v24;
  if (!self)
  {
    v52 = 0;
    goto LABEL_12;
  }

  v37 = v23;
  if (!v32)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:sel_initForSequenceSlot_syncAnchorMap_active_changeIndex_childRecordCount_baselineEpoch_includedIdentifiers_includedSyncIdentities_includedChildSyncIdentities_protocolVersion_storeRecordID_record_schemaVersion_ object:self file:@"HDCloudSyncSequenceRecord.m" lineNumber:147 description:{@"Invalid parameter not satisfying: %@", @"includedIdentifiers"}];

    v37 = v23;
    if (v35)
    {
      goto LABEL_7;
    }

LABEL_14:
    [MEMORY[0x277CCA890] currentHandler];
    v55 = v62 = v37;
    [v55 handleFailureInMethod:sel_initForSequenceSlot_syncAnchorMap_active_changeIndex_childRecordCount_baselineEpoch_includedIdentifiers_includedSyncIdentities_includedChildSyncIdentities_protocolVersion_storeRecordID_record_schemaVersion_ object:self file:@"HDCloudSyncSequenceRecord.m" lineNumber:148 description:{@"Invalid parameter not satisfying: %@", @"storeRecordID"}];

    v37 = v62;
    goto LABEL_7;
  }

  if (!v35)
  {
    goto LABEL_14;
  }

LABEL_7:
  v61 = record;
  if (!v36)
  {
    [MEMORY[0x277CCA890] currentHandler];
    v57 = v56 = v37;
    [v57 handleFailureInMethod:sel_initForSequenceSlot_syncAnchorMap_active_changeIndex_childRecordCount_baselineEpoch_includedIdentifiers_includedSyncIdentities_includedChildSyncIdentities_protocolVersion_storeRecordID_record_schemaVersion_ object:self file:@"HDCloudSyncSequenceRecord.m" lineNumber:149 description:{@"Invalid parameter not satisfying: %@", @"record"}];

    v37 = v56;
  }

  v38 = objc_alloc_init(HDCloudSyncCodableSequence);
  [(HDCloudSyncCodableSequence *)v38 setSlot:v37];
  [(HDCloudSyncCodableSequence *)v38 setActive:0];
  [(HDCloudSyncCodableSequence *)v38 setChangeIndex:index];
  [(HDCloudSyncCodableSequence *)v38 setChildRecordCount:0];
  [(HDCloudSyncCodableSequence *)v38 setEpoch:epoch];
  [(HDCloudSyncCodableSequence *)v38 setProtocolVersion:17];
  codableSyncAnchorRangeMap = [v31 codableSyncAnchorRangeMap];
  [(HDCloudSyncCodableSequence *)v38 setAnchorMap:codableSyncAnchorRangeMap];

  allObjects = [v32 allObjects];
  v41 = [allObjects hk_map:&__block_literal_global_62];
  v42 = [v41 mutableCopy];
  [(HDCloudSyncCodableSequence *)v38 setIncludedStoreIdentifiers:v42];

  allObjects2 = [v33 allObjects];
  v44 = [allObjects2 hk_map:&__block_literal_global_362];
  v45 = [v44 mutableCopy];
  [(HDCloudSyncCodableSequence *)v38 setIncludedSyncIdentities:v45];

  allObjects3 = [v34 allObjects];
  v47 = [allObjects3 hk_map:&__block_literal_global_364];
  v48 = [v47 mutableCopy];
  [(HDCloudSyncCodableSequence *)v38 setIncludedChildSyncIdentities:v48];

  v49 = objc_alloc_init(HDCodableSyncEntityVersionMap);
  [(HDCloudSyncCodableSequence *)v38 setSyncEntityVersionMap:v49];

  v50 = [(HDCloudSyncSequenceRecord *)self initWithCKRecord:v36 schemaVersion:1 underlyingSequence:v38];
  if (v50)
  {
    v51 = [objc_alloc(MEMORY[0x277CBC620]) initWithRecordID:v35 action:_os_feature_enabled_impl() ^ 1];
    [v36 setObject:v51 forKeyedSubscript:@"StoreRecord"];
  }

  v52 = v50;

  record = v61;
LABEL_12:

  return v52;
}

- (id)initWithCKRecord:(uint64_t)record schemaVersion:(void *)version underlyingSequence:
{
  v72[7] = *MEMORY[0x277D85DE8];
  v7 = a2;
  versionCopy = version;
  if (!self)
  {
    v10 = 0;
    goto LABEL_25;
  }

  v66.receiver = self;
  v66.super_class = HDCloudSyncSequenceRecord;
  v9 = objc_msgSendSuper2(&v66, sel_initWithCKRecord_schemaVersion_, v7, record);
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(v9 + 3, version);
    recordID = [v7 recordID];
    zoneID = [recordID zoneID];
    v65 = 0;
    v13 = [zoneID hd_isUnifiedSyncZoneIDForSyncCircleIdentifier:&v65];
    v14 = v65;

    recordID2 = [v7 recordID];
    v16 = recordID2;
    if (v13)
    {
      recordName = [recordID2 recordName];
      v18 = [recordName componentsSeparatedByString:@"/"];

      if ([v18 count] != 3)
      {
        v54 = v10;
        v10 = 0;
LABEL_24:

        goto LABEL_25;
      }

      v19 = objc_alloc(MEMORY[0x277CCAD78]);
      v20 = [v18 objectAtIndexedSubscript:1];
      v21 = [v19 initWithUUIDString:v20];
      v22 = v10[4];
      v10[4] = v21;

      v23 = 0;
      v58 = v14;
    }

    else
    {
      zoneID2 = [recordID2 zoneID];
      v63 = v14;
      v64 = 0;
      v25 = [zoneID2 hd_isIndividualSyncZoneIDForStoreIdentifier:&v64 syncCircleIdentifier:&v63];
      v23 = v64;
      v58 = v63;

      if (!v25)
      {
LABEL_9:
        v59 = v23;
        v60 = versionCopy;
        v61 = v7;
        includedStoreIdentifiers = [v10[3] includedStoreIdentifiers];

        if (!includedStoreIdentifiers)
        {
          v28 = objc_alloc_init(MEMORY[0x277CBEB18]);
          [v10[3] setIncludedStoreIdentifiers:v28];
        }

        v71[0] = @"Slot";
        v56 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v10[3], "slot")}];
        v72[0] = v56;
        v71[1] = @"Active";
        v29 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v10[3], "active")}];
        v72[1] = v29;
        v71[2] = @"ChangeIndex";
        v30 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v10[3], "changeIndex")}];
        v72[2] = v30;
        v71[3] = @"ChildRecordCount";
        v31 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v10[3], "childRecordCount")}];
        v72[3] = v31;
        v71[4] = @"BaselineEpoch";
        v32 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v10[3], "epoch")}];
        v72[4] = v32;
        v71[5] = @"ProtocolVersion";
        v33 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v10[3], "protocolVersion")}];
        v72[5] = v33;
        v71[6] = @"IncludedIdentifiers";
        includedStoreIdentifiers2 = [v10[3] includedStoreIdentifiers];
        v35 = objc_msgSend_copy(includedStoreIdentifiers2);
        v72[6] = v35;
        v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v72 forKeys:v71 count:7];
        v57 = [v7 hd_setValuesIfChanged:v36];

        encryptedValues = [v7 encryptedValues];
        v18 = [encryptedValues objectForKeyedSubscript:@"EntityAnchorMap"];

        if (v18)
        {
          v62 = 0;
          v38 = [MEMORY[0x277CCAAC8] hk_unarchivedObjectOfClass:objc_opt_class() forKey:@"EntityAnchorMap" data:v18 error:&v62];
        }

        else
        {
          v38 = 0;
        }

        anchorMap = [v10[3] anchorMap];
        v40 = [HDSyncAnchorMap syncAnchorMapWithCodableSyncAnchorRangeMap:anchorMap];
        v41 = [v38 isEqual:v40];

        if (v41)
        {
          v14 = v59;
          versionCopy = v60;
          v42 = v57;
        }

        else
        {
          v43 = [objc_alloc(MEMORY[0x277CCAAB0]) initRequiringSecureCoding:1];
          syncAnchorMap = [v10 syncAnchorMap];
          [v43 encodeObject:syncAnchorMap forKey:@"EntityAnchorMap"];

          encodedData = [v43 encodedData];
          v42 = [v7 hd_setEncryptedValue:encodedData ifChangedForKey:@"EntityAnchorMap"] | v57;

          v14 = v59;
          versionCopy = v60;
        }

        if ([v10 unsaved] & 1) == 0 && (v42)
        {
          _HKInitializeLogging();
          v46 = *MEMORY[0x277CCC328];
          if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
          {
            v47 = v46;
            recordID3 = [v10 recordID];
            changedKeys = [v7 changedKeys];
            encryptedValueStore = [v7 encryptedValueStore];
            changedKeys2 = [encryptedValueStore changedKeys];
            v52 = [changedKeys arrayByAddingObjectsFromArray:changedKeys2];
            v53 = [v52 componentsJoinedByString:{@", "}];
            *buf = 138543618;
            v68 = recordID3;
            v69 = 2114;
            v70 = v53;
            _os_log_impl(&dword_228986000, v47, OS_LOG_TYPE_DEFAULT, "%{public}@: Repaired during init (updated keys: %{public}@)", buf, 0x16u);

            v14 = v59;
            versionCopy = v60;

            v7 = v61;
          }

          [v10 setRepaired:1];
        }

        v54 = v58;
        goto LABEL_24;
      }

      v26 = objc_msgSend_copy(v23);
      v18 = v10[4];
      v10[4] = v26;
    }

    goto LABEL_9;
  }

LABEL_25:

  return v10;
}

+ (void)_recordNameForSequenceSlot:(uint64_t)slot
{
  v3 = objc_opt_self();
  if ((a2 - 1) >= 3)
  {
    v4 = v3;
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:sel__recordNameForSequenceSlot_ object:v4 file:@"HDCloudSyncSequenceRecord.m" lineNumber:249 description:{@"Invalid sequence record slot identifier %ld", a2}];
  }
}

+ (id)recordIDsWithIndividualZoneID:(id)d
{
  v10[3] = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = [(HDCloudSyncSequenceRecord *)self _recordIDWithIndividualZoneID:dCopy sequenceSlot:1];
  v10[0] = v5;
  v6 = [(HDCloudSyncSequenceRecord *)self _recordIDWithIndividualZoneID:dCopy sequenceSlot:2];
  v10[1] = v6;
  v7 = [(HDCloudSyncSequenceRecord *)self _recordIDWithIndividualZoneID:dCopy sequenceSlot:3];

  v10[2] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:3];

  return v8;
}

+ (id)recordIDsForOwnerIdentifier:(id)identifier storeIdentifier:(id)storeIdentifier zoneID:(id)d
{
  v16[3] = *MEMORY[0x277D85DE8];
  dCopy = d;
  storeIdentifierCopy = storeIdentifier;
  identifierCopy = identifier;
  v11 = [(HDCloudSyncSequenceRecord *)self _recordIDWithOwnerIdentifier:identifierCopy storeIdentifier:storeIdentifierCopy zoneID:dCopy sequenceSlot:1];
  v16[0] = v11;
  v12 = [(HDCloudSyncSequenceRecord *)self _recordIDWithOwnerIdentifier:identifierCopy storeIdentifier:storeIdentifierCopy zoneID:dCopy sequenceSlot:2];
  v16[1] = v12;
  v13 = [(HDCloudSyncSequenceRecord *)self _recordIDWithOwnerIdentifier:identifierCopy storeIdentifier:storeIdentifierCopy zoneID:dCopy sequenceSlot:3];

  v16[2] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:3];

  return v14;
}

+ (BOOL)isSequenceRecord:(id)record
{
  recordType = [record recordType];
  v4 = [recordType isEqualToString:@"CloudSyncSequenceRecord"];

  return v4;
}

+ (BOOL)hasFutureSchema:(id)schema
{
  v3 = [schema objectForKeyedSubscript:@"Version"];
  v4 = v3;
  v5 = v3 && [v3 integerValue] > 1;

  return v5;
}

+ (HDCloudSyncSequenceRecord)recordWithCKRecord:(id)record error:(id *)error
{
  v103 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  recordType = [recordCopy recordType];
  v9 = [recordType isEqualToString:@"CloudSyncSequenceRecord"];

  if ((v9 & 1) == 0)
  {
    v17 = MEMORY[0x277CCA9B8];
    v18 = objc_opt_class();
    recordType2 = [recordCopy recordType];
    v20 = [v17 hk_errorForInvalidArgument:@"@" class:v18 selector:a2 format:{@"record has type (%@), but expected (%@)", recordType2, @"CloudSyncSequenceRecord"}];
    if (v20)
    {
      if (error)
      {
        v21 = v20;
        *error = v20;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v16 = 0;
    goto LABEL_94;
  }

  v10 = [recordCopy hd_requiredValueForKey:@"Version" type:objc_opt_class() error:error];
  if (!v10)
  {
    v16 = 0;
    goto LABEL_93;
  }

  v11 = [recordCopy hd_requiredValueForKey:@"StoreRecord" type:objc_opt_class() error:error];
  if (!v11)
  {
    v16 = 0;
    goto LABEL_92;
  }

  v98 = 0;
  v12 = [recordCopy hd_optionalEncryptedValueForKey:@"UnderlyingMessage" type:objc_opt_class() error:&v98];
  v13 = v98;
  v14 = v13;
  if (!v12 && v13)
  {
    if (error)
    {
      v15 = v13;
      v16 = 0;
      *error = v14;
    }

    else
    {
      _HKLogDroppedError();
      v16 = 0;
    }

    goto LABEL_91;
  }

  if (v12)
  {
    v22 = [[HDCloudSyncCodableSequence alloc] initWithData:v12];
    if (v22)
    {
      v23 = v14;
      v24 = [HDCloudSyncSequenceRecord alloc];
      integerValue = [v10 integerValue];
      v26 = v24;
      v14 = v23;
      v16 = [(HDCloudSyncSequenceRecord *)v26 initWithCKRecord:recordCopy schemaVersion:integerValue underlyingSequence:v22];
      goto LABEL_90;
    }

    [MEMORY[0x277CCA9B8] hk_assignError:error code:3 format:@"Underlying message present but does not decode."];
    goto LABEL_49;
  }

  v27 = [recordCopy hd_requiredValueForKey:@"Slot" type:objc_opt_class() error:error];
  v22 = v27;
  if (!v27)
  {
LABEL_49:
    v16 = 0;
    goto LABEL_90;
  }

  v92 = v14;
  if ([(HDCloudSyncCodableSequence *)v27 integerValue]!= 1 && [(HDCloudSyncCodableSequence *)v22 integerValue]!= 2 && [(HDCloudSyncCodableSequence *)v22 integerValue]!= 3)
  {
    v69 = [MEMORY[0x277CCA9B8] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:a2 format:{@"record identity (%ld) is not a valid HDCloudSyncSequenceRecordIdentity value", -[HDCloudSyncCodableSequence integerValue](v22, "integerValue")}];
    if (v69)
    {
      if (error)
      {
        v70 = v69;
        v16 = 0;
        *error = v69;
      }

      else
      {
        _HKLogDroppedError();
        v16 = 0;
      }

      recordID2 = v69;
    }

    else
    {
      recordID2 = 0;
      v16 = 0;
    }

    goto LABEL_88;
  }

  v90 = v11;
  recordID = [recordCopy recordID];
  [recordID recordName];
  v29 = v28 = v22;
  v30 = [(HDCloudSyncSequenceRecord *)self _recordNameForSequenceSlot:?];
  v31 = [v29 hasSuffix:v30];

  v91 = v28;
  if ((v31 & 1) == 0)
  {
    v63 = MEMORY[0x277CCA9B8];
    v64 = objc_opt_class();
    integerValue2 = [(HDCloudSyncCodableSequence *)v28 integerValue];
    recordID2 = [recordCopy recordID];
    recordName = [recordID2 recordName];
    v67 = [v63 hk_errorForInvalidArgument:@"@" class:v64 selector:a2 format:{@"sequence slot (%ld) does not match the record name (%@)", integerValue2, recordName}];
    v12 = 0;
    v11 = v90;
    v14 = v92;
    if (v67)
    {
      if (error)
      {
        v68 = v67;
        *error = v67;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v16 = 0;
    v22 = v91;
    v69 = recordName;
    goto LABEL_88;
  }

  [recordCopy hd_requiredValueForKey:@"Active" type:objc_opt_class() error:error];
  v11 = v90;
  v86 = v14 = v92;
  if (!v86)
  {
    recordID2 = 0;
    v16 = 0;
    v12 = 0;
    v22 = v91;
    goto LABEL_89;
  }

  [recordCopy hd_requiredValueForKey:@"ChangeIndex" type:objc_opt_class() error:error];
  v88 = v22 = v91;
  if (!v88)
  {
    v69 = 0;
    v16 = 0;
    v12 = 0;
    recordID2 = v86;
    goto LABEL_88;
  }

  v32 = [recordCopy hd_requiredValueForKey:@"BaselineEpoch" type:objc_opt_class() error:error];
  if (!v32)
  {
    v16 = 0;
    v69 = v88;
    v12 = 0;
    recordID2 = v86;
    goto LABEL_87;
  }

  v84 = v32;
  v33 = [recordCopy hd_requiredValueForKey:@"ChildRecordCount" type:objc_opt_class() error:error];
  if (!v33)
  {
    v16 = 0;
    v69 = v88;
    v12 = 0;
    recordID2 = v86;
    goto LABEL_86;
  }

  v82 = v33;
  v34 = [recordCopy hd_requiredValueForKey:@"ProtocolVersion" type:objc_opt_class() error:error];
  if (!v34)
  {
    v16 = 0;
    v69 = v88;
    v12 = 0;
    recordID2 = v86;
    goto LABEL_85;
  }

  v81 = v34;
  v35 = [recordCopy hd_requiredValueForKey:@"IncludedIdentifiers" type:objc_opt_class() error:error];
  if (!v35)
  {
    v16 = 0;
    v69 = v88;
    v12 = 0;
    recordID2 = v86;
    goto LABEL_84;
  }

  v36 = v35;
  v85 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v35, "count")}];
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  v80 = v36;
  v37 = v36;
  v38 = [v37 countByEnumeratingWithState:&v94 objects:v102 count:16];
  if (!v38)
  {
    goto LABEL_38;
  }

  v39 = v38;
  v40 = *v95;
  obj = v37;
  while (2)
  {
    for (i = 0; i != v39; ++i)
    {
      if (*v95 != v40)
      {
        objc_enumerationMutation(obj);
      }

      objc_opt_class();
      v42 = HKSafeObject();
      if (!v42)
      {
        goto LABEL_67;
      }

      v43 = v42;
      v44 = [MEMORY[0x277CCAD78] hk_UUIDWithData:v42];
      if (!v44)
      {
        v79 = v43;
        v59 = [MEMORY[0x277CCA9B8] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:a2 format:{@"record has invalid owner UUID data '%@'", v43}];
        if (v59)
        {
          if (error)
          {
            v71 = v59;
            v16 = 0;
            *error = v59;
LABEL_74:
            v53 = v59;
            goto LABEL_81;
          }

          _HKLogDroppedError();
        }

        v16 = 0;
        goto LABEL_74;
      }

      v45 = v44;
      [v85 addObject:v44];

      v14 = v92;
    }

    v37 = obj;
    v39 = [obj countByEnumeratingWithState:&v94 objects:v102 count:16];
    if (v39)
    {
      continue;
    }

    break;
  }

LABEL_38:

  v46 = [recordCopy hd_requiredEncryptedValueForKey:@"EntityAnchorMap" type:objc_opt_class() error:error];
  obj = v46;
  if (v46)
  {
    v79 = [MEMORY[0x277CCAAC8] hk_unarchivedObjectOfClass:objc_opt_class() forKey:@"EntityAnchorMap" data:v46 error:error];
    if (v79 && (([recordCopy encryptedValues], v47 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v47, "objectForKeyedSubscript:", @"FrozenAnchorMap"), v48 = objc_claimAutoreleasedReturnValue(), v48, v47, !v48) || (objc_msgSend(recordCopy, "hd_requiredEncryptedValueForKey:type:error:", @"FrozenAnchorMap", objc_opt_class(), error), v49 = objc_claimAutoreleasedReturnValue(), objc_msgSend(MEMORY[0x277CCAAC8], "unarchivedObjectOfClass:fromData:error:", objc_opt_class(), v49, error), v50 = objc_claimAutoreleasedReturnValue(), v50, v49, v50)) && ((objc_msgSend(recordCopy, "objectForKeyedSubscript:", @"FirstUnfrozenChange"), v51 = objc_claimAutoreleasedReturnValue(), v51, !v51) || (objc_msgSend(recordCopy, "hd_requiredValueForKey:type:error:", @"FirstUnfrozenChange", objc_opt_class(), error), v52 = objc_claimAutoreleasedReturnValue(), v52, v52)))
    {
      v53 = objc_alloc_init(HDCloudSyncCodableSequence);
      [(HDCloudSyncCodableSequence *)v53 setSlot:[(HDCloudSyncCodableSequence *)v91 integerValue]];
      -[HDCloudSyncCodableSequence setActive:](v53, "setActive:", [v86 BOOLValue]);
      -[HDCloudSyncCodableSequence setChangeIndex:](v53, "setChangeIndex:", [v88 longLongValue]);
      -[HDCloudSyncCodableSequence setChildRecordCount:](v53, "setChildRecordCount:", [v82 longLongValue]);
      -[HDCloudSyncCodableSequence setEpoch:](v53, "setEpoch:", [v84 longLongValue]);
      -[HDCloudSyncCodableSequence setProtocolVersion:](v53, "setProtocolVersion:", [v81 integerValue]);
      codableSyncAnchorRangeMap = [v79 codableSyncAnchorRangeMap];
      [(HDCloudSyncCodableSequence *)v53 setAnchorMap:codableSyncAnchorRangeMap];

      allObjects = [v85 allObjects];
      v56 = [allObjects hk_map:&__block_literal_global_417_0];
      v57 = [v56 mutableCopy];
      [(HDCloudSyncCodableSequence *)v53 setIncludedStoreIdentifiers:v57];

      encryptedValues = [recordCopy encryptedValues];
      v59 = [encryptedValues objectForKeyedSubscript:@"FrozenAnchorMap"];

      if (v59)
      {
        v93 = 0;
        v60 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v59 error:&v93];
        v61 = v93;
        if (v60)
        {
          codableSyncAnchorRangeMap2 = [v60 codableSyncAnchorRangeMap];
          [(HDCloudSyncCodableSequence *)v53 setFrozenAnchorMap:codableSyncAnchorRangeMap2];
        }

        else
        {
          _HKInitializeLogging();
          v72 = *MEMORY[0x277CCC328];
          if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v101 = v61;
            _os_log_error_impl(&dword_228986000, v72, OS_LOG_TYPE_ERROR, "Failed to decode frozen anchor map: %{public}@", buf, 0xCu);
          }
        }
      }

      v73 = [recordCopy objectForKeyedSubscript:@"FirstUnfrozenChange"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        recordID3 = [v73 recordID];
        recordName2 = [recordID3 recordName];
        v99 = recordName2;
        v76 = [MEMORY[0x277CBEA60] arrayWithObjects:&v99 count:1];
        v77 = [v76 mutableCopy];
        [(HDCloudSyncCodableSequence *)v53 setUnfrozenChangeRecordNames:v77];
      }

      v16 = -[HDCloudSyncSequenceRecord initWithCKRecord:schemaVersion:underlyingSequence:]([HDCloudSyncSequenceRecord alloc], recordCopy, [v10 integerValue], v53);

LABEL_81:
      v12 = 0;
      v11 = v90;
      v22 = v91;
      v14 = v92;
      recordID2 = v86;
    }

    else
    {
      v16 = 0;
      v12 = 0;
      v11 = v90;
      v22 = v91;
      v14 = v92;
      recordID2 = v86;
    }
  }

  else
  {
LABEL_67:
    v16 = 0;
    v12 = 0;
    v11 = v90;
    v22 = v91;
    recordID2 = v86;
  }

  v69 = v88;

  v35 = v80;
LABEL_84:

  v34 = v81;
LABEL_85:

  v33 = v82;
LABEL_86:

  v32 = v84;
LABEL_87:

LABEL_88:
LABEL_89:

LABEL_90:
LABEL_91:

LABEL_92:
LABEL_93:

LABEL_94:

  return v16;
}

+ (id)fieldsForUnprotectedSerialization
{
  v40[11] = *MEMORY[0x277D85DE8];
  v28.receiver = self;
  v28.super_class = &OBJC_METACLASS___HDCloudSyncSequenceRecord;
  v23 = objc_msgSendSuper2(&v28, sel_fieldsForUnprotectedSerialization);
  v39 = objc_opt_class();
  v27 = [MEMORY[0x277CBEA60] arrayWithObjects:&v39 count:1];
  v26 = [HDCloudSyncSerializedField fieldForKey:@"StoreRecord" classes:v27 encrypted:0];
  v40[0] = v26;
  v38 = objc_opt_class();
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:&v38 count:1];
  v24 = [HDCloudSyncSerializedField fieldForKey:@"Slot" classes:v25 encrypted:0];
  v40[1] = v24;
  v37 = objc_opt_class();
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v37 count:1];
  v21 = [HDCloudSyncSerializedField fieldForKey:@"Active" classes:v22 encrypted:0];
  v40[2] = v21;
  v36 = objc_opt_class();
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v36 count:1];
  v19 = [HDCloudSyncSerializedField fieldForKey:@"BaselineEpoch" classes:v20 encrypted:0];
  v40[3] = v19;
  v35 = objc_opt_class();
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v35 count:1];
  v17 = [HDCloudSyncSerializedField fieldForKey:@"EntityAnchorMap" classes:v18 encrypted:1];
  v40[4] = v17;
  v34 = objc_opt_class();
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v34 count:1];
  v15 = [HDCloudSyncSerializedField fieldForKey:@"FrozenAnchorMap" classes:v16 encrypted:1];
  v40[5] = v15;
  v33 = objc_opt_class();
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v33 count:1];
  v13 = [HDCloudSyncSerializedField fieldForKey:@"ChangeIndex" classes:v14 encrypted:0];
  v40[6] = v13;
  v32 = objc_opt_class();
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:&v32 count:1];
  v3 = [HDCloudSyncSerializedField fieldForKey:@"ChildRecordCount" classes:v2 encrypted:0];
  v40[7] = v3;
  v31 = objc_opt_class();
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:&v31 count:1];
  v5 = [HDCloudSyncSerializedField fieldForKey:@"ProtocolVersion" classes:v4 encrypted:0];
  v40[8] = v5;
  v30[0] = objc_opt_class();
  v30[1] = objc_opt_class();
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:2];
  v7 = [HDCloudSyncSerializedField fieldForKey:@"IncludedIdentifiers" classes:v6 encrypted:0];
  v40[9] = v7;
  v29 = objc_opt_class();
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v29 count:1];
  v9 = [HDCloudSyncSerializedField fieldForKey:@"FirstUnfrozenChange" classes:v8 encrypted:0];
  v40[10] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:11];
  v12 = [v23 arrayByAddingObjectsFromArray:v10];

  return v12;
}

- (void)setActive:(BOOL)active
{
  activeCopy = active;
  if ([(HDCloudSyncCodableSequence *)self->_underlyingSequence active]!= active)
  {
    [(HDCloudSyncCodableSequence *)self->_underlyingSequence setActive:activeCopy];
    v6 = [MEMORY[0x277CCABB0] numberWithBool:activeCopy];
    record = [(HDCloudSyncRecord *)self record];
    [record setObject:v6 forKeyedSubscript:@"Active"];
  }
}

- (void)setProtocolVersion:(int)version
{
  v3 = *&version;
  [(HDCloudSyncCodableSequence *)self->_underlyingSequence setProtocolVersion:version];
  v6 = [MEMORY[0x277CCABB0] numberWithInt:v3];
  record = [(HDCloudSyncRecord *)self record];
  [record setObject:v6 forKeyedSubscript:@"ProtocolVersion"];
}

- (void)incrementChangeIndex
{
  [(HDCloudSyncCodableSequence *)self->_underlyingSequence setChangeIndex:[(HDCloudSyncCodableSequence *)self->_underlyingSequence changeIndex]+ 1];
  v4 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[HDCloudSyncCodableSequence changeIndex](self->_underlyingSequence, "changeIndex")}];
  record = [(HDCloudSyncRecord *)self record];
  [record setObject:v4 forKeyedSubscript:@"ChangeIndex"];
}

- (void)resetChangeIndex:(unint64_t)index
{
  [(HDCloudSyncCodableSequence *)self->_underlyingSequence setChangeIndex:index];
  v5 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[HDCloudSyncCodableSequence changeIndex](self->_underlyingSequence, "changeIndex")}];
  record = [(HDCloudSyncRecord *)self record];
  [record setObject:v5 forKeyedSubscript:@"ChangeIndex"];
}

- (void)updateSyncProtocolVersion:(int)version syncEntityVersions:(id)versions
{
  v4 = *&version;
  versionsCopy = versions;
  [(HDCloudSyncSequenceRecord *)self setProtocolVersion:v4];
  entityVersionRanges = [versionsCopy entityVersionRanges];

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __74__HDCloudSyncSequenceRecord_updateSyncProtocolVersion_syncEntityVersions___block_invoke;
  v8[3] = &unk_27861B9C8;
  v8[4] = self;
  [entityVersionRanges enumerateObjectsUsingBlock:v8];
}

void __74__HDCloudSyncSequenceRecord_updateSyncProtocolVersion_syncEntityVersions___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) syncEntityVersionMap];
  v5 = [v4 entityVersionRanges];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __74__HDCloudSyncSequenceRecord_updateSyncProtocolVersion_syncEntityVersions___block_invoke_2;
  v9[3] = &unk_27861B9A0;
  v6 = v3;
  v10 = v6;
  v7 = [v5 hk_firstObjectPassingTest:v9];

  if (v7)
  {
    v8 = [v6 versionRange];
    [v7 setVersionRange:v8];
  }

  else
  {
    v8 = [*(a1 + 32) syncEntityVersionMap];
    [v8 addEntityVersionRange:v6];
  }
}

uint64_t __74__HDCloudSyncSequenceRecord_updateSyncProtocolVersion_syncEntityVersions___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 entityIdentifier];
  v5 = [v3 entityIdentifier];

  v6 = [v4 isEqual:v5];
  return v6;
}

- (BOOL)hasFutureSyncEntityVersions:(id)versions
{
  v28 = *MEMORY[0x277D85DE8];
  versionsCopy = versions;
  syncEntityVersionMap = [(HDCloudSyncSequenceRecord *)self syncEntityVersionMap];

  if (syncEntityVersionMap)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    syncEntityVersionMap2 = [(HDCloudSyncSequenceRecord *)self syncEntityVersionMap];
    entityVersionRanges = [syncEntityVersionMap2 entityVersionRanges];

    obj = entityVersionRanges;
    v8 = [entityVersionRanges countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v24;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v24 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v23 + 1) + 8 * i);
          entityVersionRanges2 = [versionsCopy entityVersionRanges];
          v22[0] = MEMORY[0x277D85DD0];
          v22[1] = 3221225472;
          v22[2] = __57__HDCloudSyncSequenceRecord_hasFutureSyncEntityVersions___block_invoke;
          v22[3] = &unk_27861B9A0;
          v22[4] = v12;
          v14 = [entityVersionRanges2 hk_firstObjectPassingTest:v22];

          if (v14)
          {
            versionRange = [v14 versionRange];
            current = [versionRange current];
            versionRange2 = [v12 versionRange];
            current2 = [versionRange2 current];

            if (current >= current2)
            {
              continue;
            }
          }

          v19 = 1;
          goto LABEL_15;
        }

        v9 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
        v19 = 0;
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v19 = 0;
    }

LABEL_15:
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

uint64_t __57__HDCloudSyncSequenceRecord_hasFutureSyncEntityVersions___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 entityIdentifier];
  v5 = [v3 entityIdentifier];

  v6 = [v4 isEqual:v5];
  return v6;
}

- (void)incrementChildRecordCount
{
  [(HDCloudSyncCodableSequence *)self->_underlyingSequence setChildRecordCount:[(HDCloudSyncCodableSequence *)self->_underlyingSequence childRecordCount]+ 1];
  v4 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[HDCloudSyncCodableSequence childRecordCount](self->_underlyingSequence, "childRecordCount")}];
  record = [(HDCloudSyncRecord *)self record];
  [record setObject:v4 forKeyedSubscript:@"ChildRecordCount"];
}

- (void)decrementChildRecordCount:(unint64_t)count
{
  childRecordCount = [(HDCloudSyncCodableSequence *)self->_underlyingSequence childRecordCount];
  [(HDCloudSyncCodableSequence *)self->_underlyingSequence setChildRecordCount:(childRecordCount - count) & ~((childRecordCount - count) >> 63)];
  v7 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[HDCloudSyncCodableSequence childRecordCount](self->_underlyingSequence, "childRecordCount")}];
  record = [(HDCloudSyncRecord *)self record];
  [record setObject:v7 forKeyedSubscript:@"ChildRecordCount"];
}

- (NSSet)includedIdentifiers
{
  includedStoreIdentifiers = [(HDCloudSyncCodableSequence *)self->_underlyingSequence includedStoreIdentifiers];
  v4 = [includedStoreIdentifiers count];

  if (v4)
  {
    includedStoreIdentifiers2 = [(HDCloudSyncCodableSequence *)self->_underlyingSequence includedStoreIdentifiers];
    v6 = [includedStoreIdentifiers2 hk_mapToSet:&__block_literal_global_427];
  }

  else
  {
    v6 = [MEMORY[0x277CBEB98] set];
  }

  return v6;
}

- (NSSet)includedSyncIdentities
{
  includedSyncIdentities = [(HDCloudSyncCodableSequence *)self->_underlyingSequence includedSyncIdentities];
  v4 = [includedSyncIdentities count];

  if (v4)
  {
    includedSyncIdentities2 = [(HDCloudSyncCodableSequence *)self->_underlyingSequence includedSyncIdentities];
    v6 = [includedSyncIdentities2 hk_mapToSet:&__block_literal_global_430];
  }

  else
  {
    v6 = [MEMORY[0x277CBEB98] set];
  }

  return v6;
}

id __51__HDCloudSyncSequenceRecord_includedSyncIdentities__block_invoke(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v7 = 0;
  v2 = [HDSyncIdentity syncIdentityWithCodable:a2 error:&v7];
  v3 = v7;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    _HKInitializeLogging();
    v5 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_FAULT))
    {
      *buf = 138543362;
      v9 = v3;
      _os_log_fault_impl(&dword_228986000, v5, OS_LOG_TYPE_FAULT, "Failed to decode codableIdentity with error: %{public}@", buf, 0xCu);
    }
  }

  return v2;
}

- (HDCodableSyncEntityVersionMap)syncEntityVersionMap
{
  if (![(HDCloudSyncCodableSequence *)self->_underlyingSequence hasSyncEntityVersionMap])
  {
    v3 = objc_alloc_init(HDCodableSyncEntityVersionMap);
    [(HDCloudSyncCodableSequence *)self->_underlyingSequence setSyncEntityVersionMap:v3];
  }

  underlyingSequence = self->_underlyingSequence;

  return [(HDCloudSyncCodableSequence *)underlyingSequence syncEntityVersionMap];
}

- (NSSet)includedChildSyncIdentities
{
  includedChildSyncIdentities = [(HDCloudSyncCodableSequence *)self->_underlyingSequence includedChildSyncIdentities];
  v4 = [includedChildSyncIdentities count];

  if (v4)
  {
    includedChildSyncIdentities2 = [(HDCloudSyncCodableSequence *)self->_underlyingSequence includedChildSyncIdentities];
    v6 = [includedChildSyncIdentities2 hk_mapToSet:&__block_literal_global_433];
  }

  else
  {
    v6 = [MEMORY[0x277CBEB98] set];
  }

  return v6;
}

id __56__HDCloudSyncSequenceRecord_includedChildSyncIdentities__block_invoke(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v7 = 0;
  v2 = [HDSyncIdentity syncIdentityWithCodable:a2 error:&v7];
  v3 = v7;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    _HKInitializeLogging();
    v5 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_FAULT))
    {
      *buf = 138543362;
      v9 = v3;
      _os_log_fault_impl(&dword_228986000, v5, OS_LOG_TYPE_FAULT, "Failed to decode codable child sync Identity with error: %{public}@", buf, 0xCu);
    }
  }

  return v2;
}

- (void)setIncludedChildSyncIdentities:(id)identities
{
  allObjects = [identities allObjects];
  v4 = [allObjects hk_map:&__block_literal_global_435];
  v5 = [v4 mutableCopy];
  [(HDCloudSyncCodableSequence *)self->_underlyingSequence setIncludedChildSyncIdentities:v5];
}

- (HDSyncAnchorMap)syncAnchorMap
{
  anchorMap = [(HDCloudSyncCodableSequence *)self->_underlyingSequence anchorMap];
  v3 = [HDSyncAnchorMap syncAnchorMapWithCodableSyncAnchorRangeMap:anchorMap];

  return v3;
}

- (CKReference)parentRecordReference
{
  record = [(HDCloudSyncRecord *)self record];
  v3 = [record objectForKeyedSubscript:@"StoreRecord"];

  return v3;
}

- (void)updateSyncAnchorMapWithSyncAnchorMap:(id)map
{
  mapCopy = map;
  if ([mapCopy anchorCount])
  {
    syncAnchorMap = [(HDCloudSyncSequenceRecord *)self syncAnchorMap];
    [syncAnchorMap setAnchorsFromMap:mapCopy];
    codableSyncAnchorRangeMap = [syncAnchorMap codableSyncAnchorRangeMap];
    [(HDCloudSyncCodableSequence *)self->_underlyingSequence setAnchorMap:codableSyncAnchorRangeMap];

    v6 = [objc_alloc(MEMORY[0x277CCAAB0]) initRequiringSecureCoding:1];
    [v6 encodeObject:syncAnchorMap forKey:@"EntityAnchorMap"];
    encodedData = [v6 encodedData];
    record = [(HDCloudSyncRecord *)self record];
    encryptedValues = [record encryptedValues];
    [encryptedValues setObject:encodedData forKeyedSubscript:@"EntityAnchorMap"];
  }
}

- (void)replaceSyncAnchorMapWithSyncAnchorMap:(id)map
{
  mapCopy = map;
  codableSyncAnchorRangeMap = [mapCopy codableSyncAnchorRangeMap];
  [(HDCloudSyncCodableSequence *)self->_underlyingSequence setAnchorMap:codableSyncAnchorRangeMap];

  v9 = [objc_alloc(MEMORY[0x277CCAAB0]) initRequiringSecureCoding:1];
  [v9 encodeObject:mapCopy forKey:@"EntityAnchorMap"];

  encodedData = [v9 encodedData];
  record = [(HDCloudSyncRecord *)self record];
  encryptedValues = [record encryptedValues];
  [encryptedValues setObject:encodedData forKeyedSubscript:@"EntityAnchorMap"];
}

- (HDSyncAnchorMap)frozenSyncAnchorMap
{
  if ([(HDCloudSyncCodableSequence *)self->_underlyingSequence hasFrozenAnchorMap])
  {
    frozenAnchorMap = [(HDCloudSyncCodableSequence *)self->_underlyingSequence frozenAnchorMap];
    v4 = [HDSyncAnchorMap syncAnchorMapWithCodableSyncAnchorRangeMap:frozenAnchorMap];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)updateFrozenSyncAnchorMapWithSyncAnchorMap:(id)map
{
  v15 = *MEMORY[0x277D85DE8];
  mapCopy = map;
  frozenSyncAnchorMap = [(HDCloudSyncSequenceRecord *)self frozenSyncAnchorMap];
  if (!frozenSyncAnchorMap)
  {
    frozenSyncAnchorMap = objc_alloc_init(HDSyncAnchorMap);
  }

  [(HDSyncAnchorMap *)frozenSyncAnchorMap setAnchorsFromMap:mapCopy];
  codableSyncAnchorRangeMap = [(HDSyncAnchorMap *)frozenSyncAnchorMap codableSyncAnchorRangeMap];
  [(HDCloudSyncCodableSequence *)self->_underlyingSequence setFrozenAnchorMap:codableSyncAnchorRangeMap];

  v12 = 0;
  v7 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:frozenSyncAnchorMap requiringSecureCoding:1 error:&v12];
  v8 = v12;
  if (v7)
  {
    record = [(HDCloudSyncRecord *)self record];
    encryptedValues = [record encryptedValues];
    [encryptedValues setObject:v7 forKeyedSubscript:@"FrozenAnchorMap"];
  }

  else
  {
    _HKInitializeLogging();
    v11 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v14 = v8;
      _os_log_error_impl(&dword_228986000, v11, OS_LOG_TYPE_ERROR, "Failed to encode updated frozen anchor map: %{public}@", buf, 0xCu);
    }
  }
}

- (CKRecordID)firstUnfrozenChangeRecord
{
  unfrozenChangeRecordNames = [(HDCloudSyncCodableSequence *)self->_underlyingSequence unfrozenChangeRecordNames];
  firstObject = [unfrozenChangeRecordNames firstObject];

  if (firstObject)
  {
    v5 = objc_alloc(MEMORY[0x277CBC5D0]);
    recordID = [(HDCloudSyncRecord *)self recordID];
    zoneID = [recordID zoneID];
    v8 = [v5 initWithRecordName:firstObject zoneID:zoneID];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)setFirstUnfrozenChangeRecord:(id)record
{
  v13[1] = *MEMORY[0x277D85DE8];
  recordCopy = record;
  v5 = recordCopy;
  if (recordCopy)
  {
    recordName = [recordCopy recordName];
    v13[0] = recordName;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
    v8 = [v7 mutableCopy];
    [(HDCloudSyncCodableSequence *)self->_underlyingSequence setUnfrozenChangeRecordNames:v8];

    v9 = [objc_alloc(MEMORY[0x277CBC620]) initWithRecordID:v5 action:0];
    record = [(HDCloudSyncRecord *)self record];
    [record setObject:v9 forKeyedSubscript:@"FirstUnfrozenChange"];
  }

  else
  {
    v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [(HDCloudSyncCodableSequence *)self->_underlyingSequence setUnfrozenChangeRecordNames:v11];

    record2 = [(HDCloudSyncRecord *)self record];
    [record2 setObject:0 forKey:@"FirstUnfrozenChange"];
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      slot = [(HDCloudSyncSequenceRecord *)equalCopy slot];
      if (slot == [(HDCloudSyncCodableSequence *)self->_underlyingSequence slot])
      {
        storeIdentifier = [(HDCloudSyncSequenceRecord *)equalCopy storeIdentifier];
        storeIdentifier = self->_storeIdentifier;
        if (storeIdentifier != storeIdentifier)
        {
          if (!storeIdentifier)
          {
            v11 = 0;
            goto LABEL_32;
          }

          storeIdentifier2 = [(HDCloudSyncSequenceRecord *)equalCopy storeIdentifier];
          if (![storeIdentifier2 isEqual:self->_storeIdentifier])
          {
            v11 = 0;
LABEL_31:

            goto LABEL_32;
          }
        }

        syncAnchorMap = [(HDCloudSyncSequenceRecord *)equalCopy syncAnchorMap];
        syncAnchorMap2 = [(HDCloudSyncSequenceRecord *)self syncAnchorMap];
        if (syncAnchorMap != syncAnchorMap2)
        {
          syncAnchorMap3 = [(HDCloudSyncSequenceRecord *)self syncAnchorMap];
          if (!syncAnchorMap3)
          {
LABEL_29:

            v11 = 0;
            goto LABEL_30;
          }

          v4 = syncAnchorMap3;
          syncAnchorMap4 = [(HDCloudSyncSequenceRecord *)equalCopy syncAnchorMap];
          syncAnchorMap5 = [(HDCloudSyncSequenceRecord *)self syncAnchorMap];
          if (([syncAnchorMap4 isEqual:syncAnchorMap5] & 1) == 0)
          {

LABEL_28:
            goto LABEL_29;
          }

          v60 = syncAnchorMap4;
        }

        isActive = [(HDCloudSyncSequenceRecord *)equalCopy isActive];
        if (isActive != [(HDCloudSyncSequenceRecord *)self isActive]|| (v17 = [(HDCloudSyncSequenceRecord *)equalCopy changeIndex], v17 != [(HDCloudSyncSequenceRecord *)self changeIndex]) || (v18 = [(HDCloudSyncSequenceRecord *)equalCopy baselineEpoch], v18 != [(HDCloudSyncSequenceRecord *)self baselineEpoch]) || (v19 = [(HDCloudSyncSequenceRecord *)equalCopy childRecordCount], v19 != [(HDCloudSyncSequenceRecord *)self childRecordCount]))
        {
          v11 = 0;
LABEL_24:
          if (syncAnchorMap != syncAnchorMap2)
          {
          }

LABEL_30:
          if (storeIdentifier != storeIdentifier)
          {
            goto LABEL_31;
          }

LABEL_32:

          goto LABEL_33;
        }

        includedIdentifiers = [(HDCloudSyncSequenceRecord *)equalCopy includedIdentifiers];
        includedIdentifiers2 = [(HDCloudSyncSequenceRecord *)self includedIdentifiers];
        if (includedIdentifiers == includedIdentifiers2)
        {
          v58 = includedIdentifiers;
        }

        else
        {
          includedIdentifiers3 = [(HDCloudSyncSequenceRecord *)self includedIdentifiers];
          if (!includedIdentifiers3)
          {

            if (syncAnchorMap == syncAnchorMap2)
            {
              goto LABEL_29;
            }

            goto LABEL_40;
          }

          v55 = includedIdentifiers3;
          v58 = includedIdentifiers;
          includedIdentifiers4 = [(HDCloudSyncSequenceRecord *)equalCopy includedIdentifiers];
          includedIdentifiers5 = [(HDCloudSyncSequenceRecord *)self includedIdentifiers];
          v54 = includedIdentifiers4;
          v24 = includedIdentifiers4;
          v25 = includedIdentifiers5;
          if (([v24 isEqual:includedIdentifiers5] & 1) == 0)
          {

            goto LABEL_61;
          }

          v51 = v25;
        }

        includedSyncIdentities = [(HDCloudSyncSequenceRecord *)equalCopy includedSyncIdentities];
        includedSyncIdentities2 = [(HDCloudSyncSequenceRecord *)self includedSyncIdentities];
        if (includedSyncIdentities == includedSyncIdentities2)
        {
          v56 = includedSyncIdentities;
LABEL_42:
          includedChildSyncIdentities = [(HDCloudSyncSequenceRecord *)equalCopy includedChildSyncIdentities];
          includedChildSyncIdentities2 = [(HDCloudSyncSequenceRecord *)self includedChildSyncIdentities];
          v53 = includedChildSyncIdentities;
          if (includedChildSyncIdentities != includedChildSyncIdentities2)
          {
            includedChildSyncIdentities3 = [(HDCloudSyncSequenceRecord *)self includedChildSyncIdentities];
            includedSyncIdentities = v56;
            if (!includedChildSyncIdentities3)
            {
              v11 = 0;
              v39 = v58;
LABEL_68:

              if (v56 != includedSyncIdentities2)
              {
              }

              goto LABEL_71;
            }

            v46 = includedChildSyncIdentities3;
            includedChildSyncIdentities4 = [(HDCloudSyncSequenceRecord *)equalCopy includedChildSyncIdentities];
            includedChildSyncIdentities5 = [(HDCloudSyncSequenceRecord *)self includedChildSyncIdentities];
            if (([includedChildSyncIdentities4 isEqual:?] & 1) == 0)
            {

              v11 = 0;
LABEL_54:
              if (includedSyncIdentities != includedSyncIdentities2)
              {
              }

              goto LABEL_56;
            }
          }

          protocolVersion = [(HDCloudSyncSequenceRecord *)equalCopy protocolVersion];
          if (protocolVersion == [(HDCloudSyncSequenceRecord *)self protocolVersion])
          {
            syncEntityVersionMap = [(HDCloudSyncSequenceRecord *)equalCopy syncEntityVersionMap];
            syncEntityVersionMap2 = [(HDCloudSyncSequenceRecord *)self syncEntityVersionMap];
            if (syncEntityVersionMap == syncEntityVersionMap2)
            {

              v11 = 1;
              goto LABEL_66;
            }

            v44 = syncEntityVersionMap2;
            syncEntityVersionMap3 = [(HDCloudSyncSequenceRecord *)self syncEntityVersionMap];
            if (syncEntityVersionMap3)
            {
              syncEntityVersionMap4 = [(HDCloudSyncSequenceRecord *)equalCopy syncEntityVersionMap];
              [(HDCloudSyncSequenceRecord *)self syncEntityVersionMap];
              v38 = v41 = syncEntityVersionMap;
              v11 = [syncEntityVersionMap4 isEqual:v38];

              if (v53 != includedChildSyncIdentities2)
              {
              }

              includedSyncIdentities = v56;
              goto LABEL_54;
            }
          }

          v11 = 0;
LABEL_66:
          v39 = v58;
          if (v53 != includedChildSyncIdentities2)
          {
          }

          goto LABEL_68;
        }

        includedSyncIdentities3 = [(HDCloudSyncSequenceRecord *)self includedSyncIdentities];
        if (!includedSyncIdentities3)
        {
          v11 = 0;
LABEL_56:

          v39 = v58;
LABEL_71:
          v40 = includedIdentifiers2;
          if (v39 != includedIdentifiers2)
          {

            v40 = includedIdentifiers2;
          }

          goto LABEL_24;
        }

        v56 = includedSyncIdentities;
        v50 = includedSyncIdentities3;
        includedSyncIdentities4 = [(HDCloudSyncSequenceRecord *)equalCopy includedSyncIdentities];
        includedSyncIdentities5 = [(HDCloudSyncSequenceRecord *)self includedSyncIdentities];
        v49 = includedSyncIdentities4;
        v31 = includedSyncIdentities4;
        v32 = includedSyncIdentities5;
        if ([v31 isEqual:includedSyncIdentities5])
        {
          v47 = v32;
          goto LABEL_42;
        }

        if (v58 != includedIdentifiers2)
        {
        }

LABEL_61:
        if (syncAnchorMap == syncAnchorMap2)
        {
          goto LABEL_29;
        }

LABEL_40:

        goto LABEL_28;
      }
    }

    v11 = 0;
  }

LABEL_33:

  return v11;
}

- (void)_unitTest_setChildRecordCount:(unint64_t)count
{
  [(HDCloudSyncCodableSequence *)self->_underlyingSequence setChildRecordCount:count];
  v5 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[HDCloudSyncCodableSequence childRecordCount](self->_underlyingSequence, "childRecordCount")}];
  record = [(HDCloudSyncRecord *)self record];
  [record setObject:v5 forKeyedSubscript:@"ChildRecordCount"];
}

@end