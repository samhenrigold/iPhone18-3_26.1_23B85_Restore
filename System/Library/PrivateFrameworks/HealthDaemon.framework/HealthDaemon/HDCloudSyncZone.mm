@interface HDCloudSyncZone
- (BOOL)_addSubscriptionRecord:(id)record error:(id *)error;
- (BOOL)addRecord:(id)record error:(id *)error;
- (CKRecordID)zoneShareRecordID;
- (HDCloudSyncRepository)repository;
- (NSArray)recordNames;
- (NSArray)records;
- (NSUUID)storeIdentifier;
- (id)description;
- (id)initForZoneIdentifier:(id)identifier repository:(id)repository type:(int64_t)type;
- (void)removeRecord:(id)record;
@end

@implementation HDCloudSyncZone

- (id)initForZoneIdentifier:(id)identifier repository:(id)repository type:(int64_t)type
{
  identifierCopy = identifier;
  repositoryCopy = repository;
  v25.receiver = self;
  v25.super_class = HDCloudSyncZone;
  v10 = [(HDCloudSyncZone *)&v25 init];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_repository, repositoryCopy);
    v12 = objc_msgSend_copy(identifierCopy);
    zoneIdentifier = v11->_zoneIdentifier;
    v11->_zoneIdentifier = v12;

    v11->_zoneType = type;
    v11->_purpose = 2;
    v11->_validatedForSharing = [identifierCopy scope] == 2;
    v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
    storeRecords = v11->_storeRecords;
    v11->_storeRecords = v14;

    v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
    orphanedSequenceRecords = v11->_orphanedSequenceRecords;
    v11->_orphanedSequenceRecords = v16;

    v18 = objc_alloc_init(MEMORY[0x277CBEB18]);
    participantRecords = v11->_participantRecords;
    v11->_participantRecords = v18;

    v20 = objc_alloc_init(MEMORY[0x277CBEB18]);
    authorizationRecords = v11->_authorizationRecords;
    v11->_authorizationRecords = v20;

    v22 = objc_alloc_init(MEMORY[0x277CBEB18]);
    transactionRecords = v11->_transactionRecords;
    v11->_transactionRecords = v22;
  }

  return v11;
}

- (BOOL)addRecord:(id)record error:(id *)error
{
  v80 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  records = self->_records;
  if (!records)
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v10 = self->_records;
    self->_records = v9;

    records = self->_records;
  }

  [(NSMutableArray *)records addObject:recordCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [(HDCloudSyncZone *)self _addSubscriptionRecord:recordCopy error:error];
    goto LABEL_16;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    p_registryRecord = &self->_registryRecord;
LABEL_7:
    objc_storeStrong(p_registryRecord, record);
LABEL_15:
    v11 = 1;
    goto LABEL_16;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    participantRecords = self->_participantRecords;
LABEL_14:
    [(NSMutableArray *)participantRecords addObject:recordCopy];
    goto LABEL_15;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    participantRecords = self->_authorizationRecords;
    goto LABEL_14;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    participantRecords = self->_transactionRecords;
    goto LABEL_14;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    p_registryRecord = &self->_masterRecord;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = recordCopy;
    zoneType = [(HDCloudSyncZone *)self zoneType];
    v11 = 1;
    if (zoneType > 3)
    {
      if (zoneType > 5)
      {
        if (zoneType == 6)
        {
          v41 = MEMORY[0x277CCA9B8];
          storeIdentifier = [v15 storeIdentifier];
          [v41 hk_assignError:error code:719 format:{@"%@: Unexpected store record %@ in state sync zone.", self, storeIdentifier}];
        }

        else
        {
          if (zoneType != 7)
          {
            goto LABEL_68;
          }

          v29 = MEMORY[0x277CCA9B8];
          storeIdentifier = [v15 storeIdentifier];
          [v29 hk_assignError:error code:719 format:{@"%@: Unexpected store record %@ in context sync zone.", self, storeIdentifier}];
        }
      }

      else
      {
        v25 = MEMORY[0x277CCA9B8];
        if (zoneType == 4)
        {
          storeIdentifier = [v15 storeIdentifier];
          [v25 hk_assignError:error code:719 format:{@"%@: Unexpected store record %@ in private metadata zone.", self, storeIdentifier}];
        }

        else
        {
          storeIdentifier = [v15 storeIdentifier];
          [v25 hk_assignError:error code:719 format:{@"%@: Unexpected store record %@ attachment zone.", self, storeIdentifier}];
        }
      }
    }

    else if (zoneType > 1)
    {
      if (zoneType == 2)
      {
        [(NSMutableArray *)self->_storeRecords addObject:v15];
        v67 = 0u;
        v68 = 0u;
        v65 = 0u;
        v66 = 0u;
        obj = objc_msgSend_copy(self->_orphanedSequenceRecords);
        v31 = [(NSMutableArray *)obj countByEnumeratingWithState:&v65 objects:v78 count:16];
        if (v31)
        {
          v32 = v31;
          v33 = *v66;
          do
          {
            for (i = 0; i != v32; ++i)
            {
              if (*v66 != v33)
              {
                objc_enumerationMutation(obj);
              }

              v35 = *(*(&v65 + 1) + 8 * i);
              storeIdentifier2 = [v35 storeIdentifier];
              [v15 storeIdentifier];
              v38 = v37 = v15;
              v39 = [storeIdentifier2 isEqual:v38];

              v15 = v37;
              if (v39)
              {
                [v37 addSequenceHeaderRecord:v35];
                [(NSMutableArray *)self->_orphanedSequenceRecords removeObject:v35];
              }
            }

            v32 = [(NSMutableArray *)obj countByEnumeratingWithState:&v65 objects:v78 count:16];
          }

          while (v32);
        }

        orphanedSequenceRecords = obj;
LABEL_65:

        v11 = 1;
        goto LABEL_68;
      }

      v28 = MEMORY[0x277CCA9B8];
      storeIdentifier = [v15 storeIdentifier];
      [v28 hk_assignError:error code:719 format:{@"%@: Unexpected store record %@ in shared summary zone.", self, storeIdentifier}];
    }

    else
    {
      if (zoneType)
      {
        if (zoneType == 1)
        {
          storeIdentifier3 = [v15 storeIdentifier];
          zoneIdentifier = [(HDCloudSyncZoneIdentifier *)self->_zoneIdentifier zoneIdentifier];
          hd_storeIdentifier = [zoneIdentifier hd_storeIdentifier];
          v20 = v15;
          v21 = [storeIdentifier3 isEqual:hd_storeIdentifier];

          if ((v21 & 1) == 0)
          {
            v50 = MEMORY[0x277CCA9B8];
            zoneIdentifier = self->_zoneIdentifier;
            storeIdentifier4 = [v20 storeIdentifier];
            [v50 hk_assignError:error code:719 format:{@"%@: Store record for zone %@ has unexpected store identifier %@", self, zoneIdentifier, storeIdentifier4}];

            v11 = 0;
            goto LABEL_84;
          }

          if ([(NSMutableArray *)self->_storeRecords count])
          {
            v11 = 1;
LABEL_84:
            v15 = v20;
            goto LABEL_68;
          }

          v15 = v20;
          [(NSMutableArray *)self->_storeRecords addObject:v20];
          v71 = 0u;
          v72 = 0u;
          v69 = 0u;
          v70 = 0u;
          v54 = self->_orphanedSequenceRecords;
          v55 = [(NSMutableArray *)v54 countByEnumeratingWithState:&v69 objects:v79 count:16];
          if (v55)
          {
            v56 = v55;
            v57 = *v70;
            do
            {
              for (j = 0; j != v56; ++j)
              {
                if (*v70 != v57)
                {
                  objc_enumerationMutation(v54);
                }

                [v20 addSequenceHeaderRecord:*(*(&v69 + 1) + 8 * j)];
              }

              v56 = [(NSMutableArray *)v54 countByEnumeratingWithState:&v69 objects:v79 count:16];
            }

            while (v56);
          }

          orphanedSequenceRecords = self->_orphanedSequenceRecords;
          self->_orphanedSequenceRecords = 0;
          goto LABEL_65;
        }

LABEL_68:

        goto LABEL_16;
      }

      v30 = MEMORY[0x277CCA9B8];
      storeIdentifier = [v15 storeIdentifier];
      [v30 hk_assignError:error code:719 format:{@"%@: Unexpected store record %@ in master zone.", self, storeIdentifier}];
    }

    v11 = 0;
    goto LABEL_68;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v22 = recordCopy;
    zoneType2 = [(HDCloudSyncZone *)self zoneType];
    v11 = 1;
    if (zoneType2 > 3)
    {
      if (zoneType2 > 5)
      {
        if (zoneType2 == 6)
        {
          [MEMORY[0x277CCA9B8] hk_assignError:error code:719 format:{@"%@: Unexpected sequence record %@ in state sync zone.", self, v22}];
        }

        else
        {
          if (zoneType2 != 7)
          {
LABEL_82:

            goto LABEL_16;
          }

          [MEMORY[0x277CCA9B8] hk_assignError:error code:719 format:{@"%@: Unexpected sequence record %@ in context sync zone.", self, v22}];
        }
      }

      else if (zoneType2 == 4)
      {
        [MEMORY[0x277CCA9B8] hk_assignError:error code:719 format:{@"%@: Unexpected sequence record %@ in Private Metadata zone.", self, v22}];
      }

      else
      {
        [MEMORY[0x277CCA9B8] hk_assignError:error code:719 format:{@"%@: Unexpected sequence record %@ in Attachment zone.", self, v22}];
      }
    }

    else if (zoneType2 > 1)
    {
      if (zoneType2 == 2)
      {
        v63 = 0u;
        v64 = 0u;
        v61 = 0u;
        v62 = 0u;
        obja = self->_storeRecords;
        v42 = [(NSMutableArray *)obja countByEnumeratingWithState:&v61 objects:v77 count:16];
        if (v42)
        {
          v43 = v42;
          v44 = *v62;
          while (2)
          {
            for (k = 0; k != v43; ++k)
            {
              if (*v62 != v44)
              {
                objc_enumerationMutation(obja);
              }

              v46 = *(*(&v61 + 1) + 8 * k);
              storeIdentifier5 = [v22 storeIdentifier];
              storeIdentifier6 = [v46 storeIdentifier];
              v49 = [storeIdentifier5 isEqual:storeIdentifier6];

              if (v49)
              {
                [v46 addSequenceHeaderRecord:v22];

                goto LABEL_86;
              }
            }

            v43 = [(NSMutableArray *)obja countByEnumeratingWithState:&v61 objects:v77 count:16];
            if (v43)
            {
              continue;
            }

            break;
          }
        }

        [(NSMutableArray *)self->_orphanedSequenceRecords addObject:v22];
LABEL_86:
        v11 = 1;
        goto LABEL_82;
      }

      [MEMORY[0x277CCA9B8] hk_assignError:error code:719 format:{@"%@: Unexpected sequence record %@ in shared summary zone.", self, v22}];
    }

    else
    {
      if (zoneType2)
      {
        if (zoneType2 == 1)
        {
          if ([(NSMutableArray *)self->_storeRecords count])
          {
            firstObject = [(NSMutableArray *)self->_storeRecords firstObject];
            [firstObject addSequenceHeaderRecord:v22];
          }

          else
          {
            [(NSMutableArray *)self->_orphanedSequenceRecords addObject:v22];
          }
        }

        goto LABEL_82;
      }

      [MEMORY[0x277CCA9B8] hk_assignError:error code:719 format:{@"%@: Unexpected sequence record %@ in master zone.", self, v22}];
    }

    v11 = 0;
    goto LABEL_82;
  }

  _HKInitializeLogging();
  v27 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
  {
    v53 = v27;
    *buf = 138543618;
    v74 = recordCopy;
    v75 = 2114;
    v76 = objc_opt_class();
    _os_log_error_impl(&dword_228986000, v53, OS_LOG_TYPE_ERROR, "Ignoring cloud sync record '%{public}@' because it is of unexpected type '%{public}@'", buf, 0x16u);
  }

  v11 = 0;
LABEL_16:

  return v11;
}

- (void)removeRecord:(id)record
{
  recordCopy = record;
  recordID = [(HDCloudSyncRecord *)self->_registryRecord recordID];
  v6 = [recordID isEqual:recordCopy];

  if (v6)
  {
    registryRecord = self->_registryRecord;
    self->_registryRecord = 0;
  }

  recordID2 = [(HDCloudSyncRecord *)self->_masterRecord recordID];
  v9 = [recordID2 isEqual:recordCopy];

  if (v9)
  {
    masterRecord = self->_masterRecord;
    self->_masterRecord = 0;
  }

  participantRecords = self->_participantRecords;
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __32__HDCloudSyncZone_removeRecord___block_invoke;
  v29[3] = &unk_27861AD28;
  v12 = recordCopy;
  v30 = v12;
  [(NSMutableArray *)participantRecords hk_removeObjectsPassingTest:v29];
  authorizationRecords = self->_authorizationRecords;
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __32__HDCloudSyncZone_removeRecord___block_invoke_2;
  v27[3] = &unk_27861AD50;
  v14 = v12;
  v28 = v14;
  [(NSMutableArray *)authorizationRecords hk_removeObjectsPassingTest:v27];
  transactionRecords = self->_transactionRecords;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __32__HDCloudSyncZone_removeRecord___block_invoke_3;
  v25[3] = &unk_27861AD78;
  v16 = v14;
  v26 = v16;
  [(NSMutableArray *)transactionRecords hk_removeObjectsPassingTest:v25];
  storeRecords = self->_storeRecords;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __32__HDCloudSyncZone_removeRecord___block_invoke_4;
  v23[3] = &unk_27861ADA0;
  v18 = v16;
  v24 = v18;
  [(NSMutableArray *)storeRecords hk_removeObjectsPassingTest:v23];
  orphanedSequenceRecords = self->_orphanedSequenceRecords;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __32__HDCloudSyncZone_removeRecord___block_invoke_5;
  v21[3] = &unk_27861ADC8;
  v22 = v18;
  v20 = v18;
  [(NSMutableArray *)orphanedSequenceRecords hk_removeObjectsPassingTest:v21];
}

uint64_t __32__HDCloudSyncZone_removeRecord___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 recordID];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

uint64_t __32__HDCloudSyncZone_removeRecord___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 recordID];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

uint64_t __32__HDCloudSyncZone_removeRecord___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 recordID];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

uint64_t __32__HDCloudSyncZone_removeRecord___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = [a2 recordID];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

uint64_t __32__HDCloudSyncZone_removeRecord___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = [a2 recordID];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

- (NSArray)records
{
  v2 = objc_msgSend_copy(self->_records, a2);

  return v2;
}

- (NSArray)recordNames
{
  v2 = [(NSMutableArray *)self->_records hk_map:&__block_literal_global_56];
  v3 = [v2 sortedArrayUsingSelector:sel_compare_];

  return v3;
}

id __30__HDCloudSyncZone_recordNames__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 record];
  v3 = [v2 recordID];
  v4 = [v3 recordName];

  return v4;
}

- (BOOL)_addSubscriptionRecord:(id)record error:(id *)error
{
  recordCopy = record;
  record = [recordCopy record];
  v8 = [HDCloudSyncDataUploadRequestRecord isDataUploadRequestRecord:record];

  if (v8)
  {
    objc_storeStrong(&self->_dataUploadRequestRecord, record);
  }

  return v8;
}

- (CKRecordID)zoneShareRecordID
{
  v3 = objc_alloc(MEMORY[0x277CBC5D0]);
  v4 = *MEMORY[0x277CBC020];
  zoneIdentifier = [(HDCloudSyncZoneIdentifier *)self->_zoneIdentifier zoneIdentifier];
  v6 = [v3 initWithRecordName:v4 zoneID:zoneIdentifier];

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  zoneIdentifier = self->_zoneIdentifier;
  v6 = HDCloudSyncZoneTypeToString(self->_zoneType);
  v7 = HDCloudSyncZonePurposeToString(self->_purpose);
  v8 = [v3 stringWithFormat:@"<%@:%p %@ (%@, %@)>", v4, self, zoneIdentifier, v6, v7];

  return v8;
}

- (NSUUID)storeIdentifier
{
  storeRecord = [(HDCloudSyncZone *)self storeRecord];
  storeIdentifier = [storeRecord storeIdentifier];

  return storeIdentifier;
}

- (HDCloudSyncRepository)repository
{
  WeakRetained = objc_loadWeakRetained(&self->_repository);

  return WeakRetained;
}

@end