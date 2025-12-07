@interface HDFreezeQuantitySampleSeriesOperation
- (BOOL)performWithProfile:(id)profile transaction:(id)transaction error:(id *)error;
- (HDFreezeQuantitySampleSeriesOperation)initWithCoder:(id)coder;
- (HDFreezeQuantitySampleSeriesOperation)initWithIdentifier:(id)identifier metadata:(id)metadata endDate:(id)date;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HDFreezeQuantitySampleSeriesOperation

- (HDFreezeQuantitySampleSeriesOperation)initWithIdentifier:(id)identifier metadata:(id)metadata endDate:(id)date
{
  identifierCopy = identifier;
  metadataCopy = metadata;
  dateCopy = date;
  v19.receiver = self;
  v19.super_class = HDFreezeQuantitySampleSeriesOperation;
  v11 = [(HDFreezeQuantitySampleSeriesOperation *)&v19 init];
  if (v11)
  {
    v12 = objc_msgSend_copy(identifierCopy);
    identifier = v11->_identifier;
    v11->_identifier = v12;

    v14 = objc_msgSend_copy(metadataCopy);
    metadata = v11->_metadata;
    v11->_metadata = v14;

    v16 = objc_msgSend_copy(dateCopy);
    endDate = v11->_endDate;
    v11->_endDate = v16;

    v11->_freezeResult = 0;
  }

  return v11;
}

- (BOOL)performWithProfile:(id)profile transaction:(id)transaction error:(id *)error
{
  v90 = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  transactionCopy = transaction;
  objc_storeStrong(&self->_frozenIdentifier, self->_identifier);
  self->_freezeResult = 1;
  protectedDatabase = [transactionCopy protectedDatabase];
  v11 = HDDataEntityPredicateForDataUUID();
  v86 = 0;
  v79 = protectedDatabase;
  v12 = [(HDDataEntity *)HDQuantitySampleSeriesEntity anyInDatabase:protectedDatabase predicate:v11 error:&v86];
  v13 = v86;

  v78 = transactionCopy;
  if (v12)
  {
    v14 = [v12 hasSeriesDataWithTransaction:transactionCopy error:error];
    v15 = v14;
    if (!v14)
    {
      v21 = 0;
      v22 = 0;
      v19 = profileCopy;
LABEL_71:

LABEL_72:
      goto LABEL_73;
    }

    v16 = transactionCopy;
    if ([v14 BOOLValue])
    {

      errorCopy = error;
      v17 = [v12 countForSeriesWithTransaction:transactionCopy error:error];
      v18 = v17;
      if (v17)
      {
        v19 = profileCopy;
        if ([v17 integerValue] == 1)
        {
          v20 = [v12 HFDKeyWithDatabase:v79 error:error];
          if (!v20)
          {
            v13 = 0;
LABEL_28:
            v21 = 0;
            v22 = 0;
LABEL_69:

            goto LABEL_70;
          }
        }

        else
        {
          v20 = 0;
        }

        v13 = [v12 freezeWithEndDate:self->_endDate transaction:v16 profile:profileCopy error:error];

        if (!v13)
        {
          v12 = 0;
          goto LABEL_28;
        }

        v72 = v13;
        v25 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v13, "persistentID")}];
        if (!self->_metadata)
        {
          v21 = 0;
          v35 = off_27860F000;
          if (!v20)
          {
LABEL_51:
            v48 = v35[59];
            identifier = self->_identifier;
            v82 = 0;
            v50 = [(__objc2_class *)v48 objectWithUUID:identifier encodingOptions:0 profile:v19 error:&v82];
            v13 = v82;
            if (v50)
            {
              [(HDSQLiteEntity *)HDDataEntity entityWithPersistentID:v25];
              v75 = v81 = v13;
              v51 = [v75 numberForProperty:@"provenance" transaction:v78 error:&v81];
              v69 = v81;

              v71 = v20;
              v77 = v50;
              v74 = v51;
              if (v51)
              {
                v52 = v51;
                dataProvenanceManager = [v19 dataProvenanceManager];
                v80 = v69;
                v54 = [dataProvenanceManager originProvenanceForPersistentID:v52 transaction:v78 error:&v80];
                v13 = v80;

                v55 = v25;
                if (!v54)
                {
                  _HKInitializeLogging();
                  v56 = *MEMORY[0x277CCC2A0];
                  if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138543362;
                    v89 = v13;
                    _os_log_error_impl(&dword_228986000, v56, OS_LOG_TYPE_ERROR, "Failed to look up provenance for series after freezing: %{public}@", buf, 0xCu);
                  }

                  v54 = 0;
                }
              }

              else
              {
                v55 = v25;
                _HKInitializeLogging();
                v59 = *MEMORY[0x277CCC2A0];
                if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
                {
                  *buf = 138543362;
                  v89 = v69;
                  _os_log_error_impl(&dword_228986000, v59, OS_LOG_TYPE_ERROR, "Failed to look up provenance ID for series after freezing: %{public}@", buf, 0xCu);
                }

                v54 = 0;
                v13 = v69;
              }

              dataManager = [v19 dataManager];
              v87 = v77;
              v22 = 1;
              v61 = [MEMORY[0x277CBEA60] arrayWithObjects:&v87 count:1];
              [dataManager shouldNotifyForDataObjects:v61 provenance:v54 database:v79 anchor:v55];

              v25 = v55;
              v39 = v77;

              v20 = v71;
            }

            else
            {
              v57 = v25;
              _HKInitializeLogging();
              v58 = *MEMORY[0x277CCC2A0];
              if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
              {
                *buf = 138543362;
                v89 = v13;
                _os_log_error_impl(&dword_228986000, v58, OS_LOG_TYPE_ERROR, "Failed to look up series after freezing: %{public}@", buf, 0xCu);
              }

              v39 = 0;
              v22 = 1;
              v25 = v57;
            }

            goto LABEL_67;
          }

LABEL_50:
          v44 = v25;
          v45 = v35[59];
          longLongValue = [v20 longLongValue];
          v47 = v45;
          v25 = v44;
          if ([(__objc2_class *)v47 deleteSeriesDataWithKey:longLongValue database:v79 error:errorCopy])
          {
            goto LABEL_51;
          }

          v13 = 0;
          goto LABEL_59;
        }

        v85 = 0;
        v26 = [(HDDataEntity *)HDQuantitySampleSeriesEntity objectWithID:v25 encodingOptions:0 profile:profileCopy error:&v85];
        v27 = v85;
        if (!v26)
        {
          if (v27)
          {
            v39 = v27;
          }

          else
          {
            v39 = [MEMORY[0x277CCA9B8] hk_error:100 format:{@"Could not find sample with ID %@", v25}];
            if (!v39)
            {
              v13 = 0;
              v21 = 0;
LABEL_59:
              v22 = 0;
              goto LABEL_68;
            }
          }

          if (errorCopy)
          {
            v43 = v39;
            *errorCopy = v39;
          }

          else
          {
            _HKLogDroppedError();
          }

          v13 = 0;
          v21 = 0;
          v22 = 0;
LABEL_67:

          goto LABEL_68;
        }

        v66 = v27;
        v67 = v25;
        v70 = v20;
        [v26 _setMetadata:self->_metadata];
        [v26 sourceRevision];
        v29 = v28 = v16;
        source = [v29 source];
        _sourceID = [source _sourceID];

        v84 = 0;
        v83 = 0;
        v65 = v26;
        v68 = _sourceID;
        v32 = [(HDDataEntity *)HDQuantitySampleSeriesEntity shouldInsertObject:v26 sourceID:_sourceID profile:profileCopy transaction:v28 objectToReplace:&v84 objectID:&v83 error:errorCopy];
        v33 = v84;
        v34 = v83;
        v63 = v34;
        v64 = v33;
        if (v32 == 2)
        {
          v40 = 0;
          v21 = 0;
          v20 = v70;
          v25 = v67;
          v38 = v26;
        }

        else
        {
          if (v32 == 1)
          {
            v35 = off_27860F000;
            v25 = v67;
            v20 = v70;
            if (![HDQuantitySampleSeriesEntity deleteSeriesWithID:v67 deleteSeriesData:1 profile:profileCopy transaction:v78 error:errorCopy])
            {
              v40 = 0;
              v21 = 0;
              v38 = v65;
              goto LABEL_48;
            }

            uUID = [v33 UUID];
            frozenIdentifier = self->_frozenIdentifier;
            self->_frozenIdentifier = uUID;

            v21 = 0;
            v38 = v65;
LABEL_37:
            v40 = 1;
LABEL_48:

            if (!v40)
            {
              v13 = 0;
              v22 = 0;
              v19 = profileCopy;
LABEL_68:

              v12 = v72;
              goto LABEL_69;
            }

            v19 = profileCopy;
            if (!v20)
            {
              goto LABEL_51;
            }

            goto LABEL_50;
          }

          v21 = v34;
          metadataManager = [profileCopy metadataManager];
          v38 = v26;
          v42 = [metadataManager insertMetadata:self->_metadata forObjectID:v67 sourceID:v68 externalSyncObjectCode:objc_msgSend(v26 objectDeleted:"_externalSyncObjectCode") error:{0, errorCopy}];

          v20 = v70;
          if (v42)
          {
            v25 = v67;
            if ([HDQuantitySampleSeriesEntity replaceObjectID:v21 replacementObjectID:v67 deleteOriginalSeriesData:1 profile:profileCopy transaction:v78 error:errorCopy])
            {
              v35 = off_27860F000;
              goto LABEL_37;
            }

            v40 = 0;
          }

          else
          {
            v40 = 0;
            v25 = v67;
          }
        }

        v35 = off_27860F000;
        goto LABEL_48;
      }

      v13 = 0;
      v21 = 0;
      v22 = 0;
      v19 = profileCopy;
    }

    else
    {
      v23 = self->_frozenIdentifier;
      self->_frozenIdentifier = 0;

      self->_freezeResult = 2;
      v18 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v12, "persistentID")}];
      v19 = profileCopy;
      v22 = [HDQuantitySampleSeriesEntity deleteSeriesWithID:v18 deleteSeriesData:1 profile:profileCopy transaction:transactionCopy error:error];
      v21 = 0;
    }

LABEL_70:

    goto LABEL_71;
  }

  if (v13)
  {
    v12 = v13;
    v19 = profileCopy;
LABEL_13:
    if (error)
    {
      v24 = v12;
      v21 = 0;
      v22 = 0;
      *error = v12;
    }

    else
    {
      _HKLogDroppedError();
      v21 = 0;
      v22 = 0;
    }

    v13 = v12;
    goto LABEL_72;
  }

  v12 = [MEMORY[0x277CCA9B8] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:a2 format:{@"Unable to find quantity series '%@' when freezing.", self->_identifier}];
  v19 = profileCopy;
  if (v12)
  {
    goto LABEL_13;
  }

  v13 = 0;
  v21 = 0;
  v22 = 0;
LABEL_73:

  return v22;
}

- (HDFreezeQuantitySampleSeriesOperation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"id"];
  hk_secureCodingClasses = [MEMORY[0x277CBEAC0] hk_secureCodingClasses];
  v7 = [coderCopy decodeObjectOfClasses:hk_secureCodingClasses forKey:@"meta"];

  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"end"];

  v9 = [(HDFreezeQuantitySampleSeriesOperation *)self initWithIdentifier:v5 metadata:v7 endDate:v8];
  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = HDFreezeQuantitySampleSeriesOperation;
  coderCopy = coder;
  [(HDJournalableOperation *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_identifier forKey:{@"id", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_metadata forKey:@"meta"];
  [coderCopy encodeObject:self->_endDate forKey:@"end"];
}

@end