@interface _HDDataEntityEncoder
- (BOOL)applyPropertiesToObject:(id)object persistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error;
- (_HDDataEntityEncoder)initWithHealthEntityClass:(Class)class profile:(id)profile transaction:(id)transaction purpose:(int64_t)purpose encodingOptions:(id)options authorizationFilter:(id)filter;
- (id)_copyBaseMetadataForRow:(uint64_t)row;
- (id)codableRepresentationForPersistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error;
- (id)objectForPersistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error;
- (id)orderedProperties;
- (void)finish;
@end

@implementation _HDDataEntityEncoder

- (id)orderedProperties
{
  v7[4] = *MEMORY[0x277D85DE8];
  v7[0] = @"uuid";
  v7[1] = @"provenance";
  v7[2] = @"creation_date";
  v7[3] = @"external_sync_ids.object_code";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:4];
  v4 = v3;
  if (self->_includeAutomaticTimeZones)
  {
    v5 = [v3 arrayByAddingObject:@"data_provenances.tz_name"];

    v4 = v5;
  }

  return v4;
}

- (void)finish
{
  [(HDSQLiteStatement *)self->_metadataValueStatement finish];
  v3.receiver = self;
  v3.super_class = _HDDataEntityEncoder;
  [(HDEntityEncoder *)&v3 finish];
}

- (_HDDataEntityEncoder)initWithHealthEntityClass:(Class)class profile:(id)profile transaction:(id)transaction purpose:(int64_t)purpose encodingOptions:(id)options authorizationFilter:(id)filter
{
  profileCopy = profile;
  transactionCopy = transaction;
  optionsCopy = options;
  v28.receiver = self;
  v28.super_class = _HDDataEntityEncoder;
  v17 = [(HDEntityEncoder *)&v28 initWithHealthEntityClass:class profile:profileCopy transaction:transactionCopy purpose:purpose encodingOptions:optionsCopy authorizationFilter:filter];
  if (v17)
  {
    v18 = [HDMetadataValueStatement metadataValueStatementWithTransaction:transactionCopy];
    metadataValueStatement = v17->_metadataValueStatement;
    v17->_metadataValueStatement = v18;

    v20 = [[HDDataProvenanceCache alloc] initWithProfile:profileCopy transaction:transactionCopy purpose:purpose];
    dataProvenanceCache = v17->_dataProvenanceCache;
    v17->_dataProvenanceCache = v20;

    v22 = [optionsCopy objectForKeyedSubscript:@"IncludeAutomaticTimeZone"];
    v17->_includeAutomaticTimeZones = [v22 BOOLValue];

    v23 = [optionsCopy objectForKeyedSubscript:@"IncludeContributorInformation"];
    v17->_includeContributorInformation = [v23 BOOLValue];

    v24 = [optionsCopy objectForKeyedSubscript:@"ExcludePrivateMetadata"];
    bOOLValue = [v24 BOOLValue];

    if (bOOLValue)
    {
      metadataKeyFilter = v17->_metadataKeyFilter;
      v17->_metadataKeyFilter = &__block_literal_global_711;
    }
  }

  return v17;
}

- (id)codableRepresentationForPersistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error
{
  profile = [(HDEntityEncoder *)self profile];
  metadataManager = [profile metadataManager];

  v11 = [(_HDDataEntityEncoder *)self _copyBaseMetadataForRow:row];
  v12 = [metadataManager metadataForObjectID:d baseMetadata:v11 keyFilter:self->_metadataKeyFilter statement:self->_metadataValueStatement error:error];

  if (v12)
  {
    v13 = objc_alloc_init(HDCodableHealthObject);
    HDSQLiteColumnWithNameAsDouble();
    [(HDCodableHealthObject *)v13 setCreationDate:?];
    v14 = HDSQLiteColumnWithNameAsData();
    [(HDCodableHealthObject *)v13 setUuid:v14];

    if ((HDSQLiteColumnWithNameIsNull() & 1) == 0)
    {
      [(HDCodableHealthObject *)v13 setExternalSyncObjectCode:HDSQLiteColumnWithNameAsInt64()];
    }

    if ([v12 count])
    {
      hk_codableMetadata = [v12 hk_codableMetadata];
      [(HDCodableHealthObject *)v13 setMetadataDictionary:hk_codableMetadata];
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)_copyBaseMetadataForRow:(uint64_t)row
{
  if (!row || *(row + 96) != 1)
  {
    return 0;
  }

  v2 = HDSQLiteColumnWithNameAsString();
  if ([v2 length])
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [v3 setObject:v2 forKeyedSubscript:*MEMORY[0x277CCDFB0]];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)objectForPersistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error
{
  _init = [objc_alloc(MEMORY[0x277CCD6F0]) _init];
  if ([(_HDDataEntityEncoder *)self applyPropertiesToObject:_init persistentID:d row:row error:error])
  {
    v10 = _init;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)applyPropertiesToObject:(id)object persistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error
{
  v54 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDDataEntity.m" lineNumber:1597 description:{@"Invalid parameter not satisfying: %@", @"[object isKindOfClass:[HKObject class]]"}];
  }

  HDSQLiteColumnWithNameAsDouble();
  [objectCopy _setCreationTimestamp:?];
  v11 = HDSQLiteColumnWithNameAsUUID();
  [objectCopy _setUUID:v11];

  v12 = [MEMORY[0x277CCABB0] numberWithLongLong:HDSQLiteColumnWithNameAsInt64()];
  v13 = [(HDDataProvenanceCache *)self->_dataProvenanceCache provenanceWithID:v12];
  profile = [(HDEntityEncoder *)self profile];
  dataProvenanceCache = self->_dataProvenanceCache;
  v51 = 0;
  v16 = [(HDDataProvenanceCache *)dataProvenanceCache sourceRevisionForProvenanceID:v12 dataProvenance:v13 profile:profile error:&v51];
  v17 = v51;
  v46 = v16;
  v47 = v13;
  if (v16)
  {
    errorCopy = error;
    [objectCopy _setSourceRevision:v16];
    deviceID = [v13 deviceID];
    if (deviceID)
    {
      v19 = self->_dataProvenanceCache;
      v50 = v17;
      v20 = [(HDDataProvenanceCache *)v19 deviceForPersistentID:deviceID profile:profile error:&v50];
      v21 = v50;

      if (!v20 && v21)
      {
        _HKInitializeLogging();
        v22 = *MEMORY[0x277CCC2A0];
        if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v53 = v21;
          _os_log_error_impl(&dword_228986000, v22, OS_LOG_TYPE_ERROR, "Expected device not found. %{public}@", buf, 0xCu);
        }

        if (errorCopy)
        {
          v23 = v21;
          v24 = 0;
          *errorCopy = v21;
          goto LABEL_47;
        }

        _HKLogDroppedError();
LABEL_41:
        v24 = 0;
        goto LABEL_47;
      }

      [objectCopy _setDevice:v20];

      v13 = v47;
    }

    else
    {
      v21 = v17;
    }

    if (self->_includeContributorInformation)
    {
      v27 = self->_dataProvenanceCache;
      contributorReference = [v13 contributorReference];
      v49 = v21;
      v29 = [(HDDataProvenanceCache *)v27 contributorForReference:contributorReference profile:profile error:&v49];
      v30 = v49;

      if (!v29 && v30)
      {
        _HKInitializeLogging();
        v31 = *MEMORY[0x277CCC2A0];
        if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v53 = v30;
          _os_log_error_impl(&dword_228986000, v31, OS_LOG_TYPE_ERROR, "Expected contributor not found. %{public}@", buf, 0xCu);
        }

        if (errorCopy)
        {
          v32 = v30;
          v24 = 0;
          *errorCopy = v30;
        }

        else
        {
          _HKLogDroppedError();
          v24 = 0;
        }

        v21 = v30;
        goto LABEL_47;
      }

      if (v29)
      {
        [objectCopy _setContributor:v29];
      }
    }

    else
    {
      v30 = v21;
    }

    metadataManager = [profile metadataManager];
    v34 = [(_HDDataEntityEncoder *)self _copyBaseMetadataForRow:row];
    metadataKeyFilter = self->_metadataKeyFilter;
    metadataValueStatement = self->_metadataValueStatement;
    v48 = v30;
    v37 = [metadataManager metadataForObjectID:d baseMetadata:v34 keyFilter:metadataKeyFilter statement:metadataValueStatement error:&v48];
    v21 = v48;

    v24 = v37 != 0;
    if (v37)
    {
      if ([v37 count])
      {
        [objectCopy _setMetadata:v37];
      }
    }

    else
    {
      _HKInitializeLogging();
      v38 = *MEMORY[0x277CCC2A0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v53 = v21;
        _os_log_error_impl(&dword_228986000, v38, OS_LOG_TYPE_ERROR, "Error retrieving metadata: %{public}@", buf, 0xCu);
      }

      v39 = v21;
      v40 = v39;
      if (v39)
      {
        if (errorCopy)
        {
          v41 = v39;
          *errorCopy = v40;
        }

        else
        {
          _HKLogDroppedError();
        }
      }
    }
  }

  else
  {
    _HKInitializeLogging();
    v25 = *MEMORY[0x277CCC2A0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v53 = v17;
      _os_log_error_impl(&dword_228986000, v25, OS_LOG_TYPE_ERROR, "sourceRevision not found. %{public}@", buf, 0xCu);
    }

    deviceID = v17;
    if (!deviceID)
    {
      v21 = 0;
      goto LABEL_41;
    }

    if (error)
    {
      v26 = deviceID;
      v24 = 0;
      *error = deviceID;
    }

    else
    {
      _HKLogDroppedError();
      v24 = 0;
    }

    v21 = deviceID;
  }

LABEL_47:

  return v24;
}

@end