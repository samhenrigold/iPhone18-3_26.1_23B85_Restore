@interface HMDBackingStoreLocal
+ (id)logCategory;
+ (void)cleanDatastoreFilesAt:(id)at everything:(BOOL)everything;
- (BOOL)_insertArchive:(id)archive identifier:(id)identifier controllerUserName:(id)name error:(id *)error;
- (BOOL)_selectArchiveWithIdentifier:(id)identifier archive:(id *)archive controllerUserName:(id *)name error:(id *)error;
- (HMDBackingStoreLocal)initWithDB:(id)b migrate:(BOOL)migrate error:(id *)error;
- (HMDBackingStoreLocal)initWithDatastore:(id)datastore;
- (id)_commit;
- (id)_createDatastoreTables:(id)tables;
- (id)_createNewDatastore:(id)datastore;
- (id)_deleteGroupWithID:(int64_t)d;
- (id)_deleteLog:(int64_t)log;
- (id)_deleteRecordWithGroupID:(int64_t)d recordName:(id)name;
- (id)_deleteZoneWithID:(int64_t)d;
- (id)_dropUncommittedUnpushedTransactions;
- (id)_fetchGroupsForZone:(id)zone withError:(id *)error;
- (id)_fetchRecordWithUUID:(id)d root:(id)root error:(id *)error;
- (id)_fetchUncommittedAndPushedTransactions;
- (id)_fetchZonesWithError:(id *)error;
- (id)_fillStoreCache;
- (id)_fillZoneCache;
- (id)_insertLogOptionsWithID:(int64_t)d options:(id)options;
- (id)_instantiateResources:(BOOL)resources migrate:(BOOL)migrate;
- (id)_selectLogOptionsWithID:(int64_t)d;
- (id)_updateGroupWithID:(int64_t)d serverChangeToken:(id)token;
- (id)_updateGroupWithID:(int64_t)d subscription:(id)subscription;
- (id)_updateLog:(int64_t)log mask:(int64_t)mask set:(int64_t)set;
- (id)_updateRecordWithGroupID:(int64_t)d name:(id)name schema:(id)schema;
- (id)_updateRecordWithGroupID:(int64_t)d store:(int64_t)store name:(id)name model:(id)model;
- (id)_updateRecordWithGroupID:(int64_t)d store:(int64_t)store name:(id)name record:(id)record uuid:(id)uuid parentUUID:(id)iD type:(id)type data:(id)self0 encoding:(int64_t)self1 schema:(id)self2;
- (id)_updateRecordWithGroupID:(int64_t)d store:(int64_t)store record:(id)record;
- (id)_updateRecordWithGroupID:(int64_t)d store:(int64_t)store record:(id)record data:(id)data encoding:(int64_t)encoding;
- (id)flush:(BOOL)flush;
- (int64_t)_insertGroupWithZoneID:(int64_t)d root:(id)root owner:(id)owner subscription:(id)subscription error:(id *)error;
- (int64_t)_insertZoneWithName:(id)name error:(id *)error;
- (int64_t)_numUncommittedTransactions;
- (unint64_t)_fetchIDForStore:(id)store error:(id *)error;
- (unint64_t)_insertLogWithRoot:(id)root transaction:(id)transaction set:(int64_t)set error:(id *)error;
- (void)_fetchRecordCountWithGroupID:(int64_t)d callback:(id)callback;
- (void)_fetchRecordMapWithGroupID:(int64_t)d callback:(id)callback;
- (void)_fetchRecordTypeSchemaWithGroupID:(int64_t)d callback:(id)callback;
- (void)_fetchRecordsWithGroupID:(int64_t)d callback:(id)callback;
- (void)_fetchRecordsWithGroupID:(int64_t)d names:(id)names callback:(id)callback;
- (void)_fetchRecordsWithGroupID:(int64_t)d parent:(id)parent type:(id)type callback:(id)callback;
- (void)_fetchRecordsWithGroupID:(int64_t)d parentUuids:(id)uuids callback:(id)callback;
- (void)_fetchRecordsWithGroupID:(int64_t)d uuids:(id)uuids callback:(id)callback;
- (void)_rollback;
- (void)_selectAllLog:(id)log;
- (void)_selectAllRecords:(id)records;
- (void)_selectLogWithMask:(int64_t)mask compare:(int64_t)compare callback:(id)callback;
- (void)_selectLogWithRoot:(id)root after:(int64_t)after mask:(int64_t)mask compare:(int64_t)compare callback:(id)callback;
- (void)dealloc;
@end

@implementation HMDBackingStoreLocal

- (BOOL)_selectArchiveWithIdentifier:(id)identifier archive:(id *)archive controllerUserName:(id *)name error:(id *)error
{
  selectArchive = self->selectArchive;
  v21 = 0;
  bindStringSQLite3(selectArchive, 1, identifier, &v21);
  v11 = v21;
  v12 = self->selectArchive;
  if (v11)
  {
    sqlite3_reset(v12);
    if (error)
    {
      v13 = v11;
      v14 = 0;
      *error = v11;
      goto LABEL_17;
    }

LABEL_16:
    v14 = 0;
    goto LABEL_17;
  }

  v15 = sqlite3_step(v12);
  if (v15 != 100)
  {
    if (v15 == 101)
    {
      if (error)
      {
        v16 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
LABEL_14:
        *error = v16;
      }
    }

    else if (error)
    {
      v16 = [MEMORY[0x277CCA9B8] errorWithSQLite3Statement:self->selectArchive];
      goto LABEL_14;
    }

    sqlite3_reset(self->selectArchive);
    goto LABEL_16;
  }

  v17 = [MEMORY[0x277CCACA8] stringWithSQLite3Column:self->selectArchive column:1];
  v18 = [MEMORY[0x277CBEA90] dataWithSQLite3Column:self->selectArchive column:2];
  v19 = sqlite3_step(self->selectArchive);
  if (error && v19 != 101)
  {
    *error = [MEMORY[0x277CCA9B8] errorWithSQLite3Statement:self->selectArchive];
  }

  sqlite3_reset(self->selectArchive);
  *archive = objc_msgSend_copy(v18);
  *name = objc_msgSend_copy(v17);

  v14 = 1;
LABEL_17:

  return v14;
}

- (BOOL)_insertArchive:(id)archive identifier:(id)identifier controllerUserName:(id)name error:(id *)error
{
  archiveCopy = archive;
  identifierCopy = identifier;
  nameCopy = name;
  v13 = execSQLite3(self->updateLogToDiskCommited);
  v14 = v13;
  if (!v13)
  {
    bindStringSQLite3(self->insertArchive, 1, identifierCopy, error);
    bindStringSQLite3(self->insertArchive, 2, nameCopy, error);
    bindDataSQLite3(self->insertArchive, 3, archiveCopy, error);
    if (!*error)
    {
      v16 = steplastrowresetSQLite3(self->insertArchive, error) != 0;
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  if (!error)
  {
LABEL_5:
    v16 = 0;
    goto LABEL_7;
  }

  v15 = v13;
  v16 = 0;
  *error = v14;
LABEL_7:

  return v16;
}

- (id)_deleteLog:(int64_t)log
{
  deleteLog = self->deleteLog;
  v10 = 0;
  bindIntSQLite3(deleteLog, 1, log, &v10);
  v5 = v10;
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = execSQLite3(self->deleteLog);
  }

  v8 = v7;

  return v8;
}

- (id)_updateLog:(int64_t)log mask:(int64_t)mask set:(int64_t)set
{
  updateLog = self->updateLog;
  v19 = 0;
  bindIntSQLite3(updateLog, 1, mask, &v19);
  v9 = v19;
  v10 = self->updateLog;
  v18 = v9;
  bindIntSQLite3(v10, 2, set, &v18);
  v11 = v18;

  v12 = self->updateLog;
  v17 = v11;
  bindIntSQLite3(v12, 3, log, &v17);
  v13 = v17;

  if (v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = execSQLite3(self->updateLog);
  }

  v15 = v14;

  return v15;
}

- (void)_selectAllLog:(id)log
{
  logCopy = log;
  while (1)
  {
    v4 = sqlite3_step(self->selectAllLog);
    if (v4 != 100)
    {
      break;
    }

    v5 = sqlite3_column_int64(self->selectAllLog, 0);
    v6 = sqlite3_column_int64(self->selectAllLog, 1);
    v7 = sqlite3_column_int64(self->selectAllLog, 2);
    v8 = sqlite3_column_int64(self->selectAllLog, 5);
    v9 = sqlite3_column_int64(self->selectAllLog, 6);
    v10 = [MEMORY[0x277CCACA8] stringWithSQLite3Column:self->selectAllLog column:3];
    v11 = [MEMORY[0x277CBEA90] dataWithSQLite3Column:self->selectAllLog column:4];
    LOBYTE(v5) = logCopy[2](logCopy, v5, v6, v7, v8, v9, v10, v11, 0);

    if (v5)
    {
      goto LABEL_7;
    }
  }

  if ((v4 & 0xFFFFFFFE) != 0x64)
  {
    v12 = [MEMORY[0x277CCA9B8] errorWithSQLite3Statement:self->selectAllLog];
    (logCopy)[2](logCopy, 0, 0, 0, 0, 0, 0, 0, v12);
  }

LABEL_7:
  sqlite3_reset(self->selectAllLog);
}

- (id)_selectLogOptionsWithID:(int64_t)d
{
  v25 = *MEMORY[0x277D85DE8];
  selectLogOptions = self->selectLogOptions;
  v20 = 0;
  bindIntSQLite3(selectLogOptions, 1, d, &v20);
  v19 = v20;
  v6 = 0;
  while (1)
  {
    v7 = sqlite3_step(self->selectLogOptions);
    if (v7 != 100)
    {
      break;
    }

    if (v6)
    {
      v8 = objc_autoreleasePoolPush();
      selfCopy = self;
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = HMFGetLogIdentifier();
        *buf = 138543618;
        v22 = v11;
        v23 = 2048;
        dCopy = d;
        _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Got multiple results for xact_block %lu (using first one)", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v8);
    }

    else
    {
      v6 = [MEMORY[0x277CBEA90] dataWithSQLite3Column:self->selectLogOptions column:0];
    }
  }

  if (v7 != 101)
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v16 = [MEMORY[0x277CCA9B8] errorWithSQLite3Statement:self->selectLogOptions];
      *buf = 138543618;
      v22 = v15;
      v23 = 2112;
      dCopy = v16;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@unexpected error to selectLogOptions: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
  }

  sqlite3_reset(self->selectLogOptions);
  if (v6)
  {
    v17 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v6 error:0];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)_insertLogOptionsWithID:(int64_t)d options:(id)options
{
  insertLogOptions = self->insertLogOptions;
  v14 = 0;
  optionsCopy = options;
  bindIntSQLite3(insertLogOptions, 1, d, &v14);
  v8 = v14;
  v9 = self->insertLogOptions;
  v10 = encodeRootObject();

  v13 = v8;
  bindDataSQLite3(v9, 2, v10, &v13);
  v11 = v13;

  if (!v11)
  {
    v11 = execSQLite3(self->insertLogOptions);
  }

  return v11;
}

- (void)_selectLogWithMask:(int64_t)mask compare:(int64_t)compare callback:(id)callback
{
  callbackCopy = callback;
  selectChangeExistsLog = self->selectChangeExistsLog;
  v21 = 0;
  bindIntSQLite3(selectChangeExistsLog, 1, mask, &v21);
  v9 = v21;
  v10 = self->selectChangeExistsLog;
  v20 = v9;
  bindIntSQLite3(v10, 2, compare, &v20);
  v11 = v20;

  if (v11)
  {
    callbackCopy[2]();
  }

  else
  {
    while (1)
    {
      v12 = sqlite3_step(self->selectChangeExistsLog);
      if (v12 != 100)
      {
        break;
      }

      v13 = sqlite3_column_int64(self->selectChangeExistsLog, 0);
      v14 = sqlite3_column_int64(self->selectChangeExistsLog, 1);
      v15 = MEMORY[0x277CBC5D0];
      v16 = [MEMORY[0x277CCACA8] stringWithSQLite3Column:self->selectChangeExistsLog column:2];
      v17 = [v15 parseFromString:v16];
      LOBYTE(v13) = (callbackCopy[2])(callbackCopy, v13, v14, v17, 0);

      if (v13)
      {
        goto LABEL_8;
      }
    }

    if ((v12 & 0xFFFFFFFE) != 0x64)
    {
      v18 = [MEMORY[0x277CCA9B8] errorWithSQLite3Statement:self->selectChangeExistsLog];
      (callbackCopy[2])(callbackCopy, 0, 0, 0, v18);
    }

LABEL_8:
    sqlite3_reset(self->selectChangeExistsLog);
  }
}

- (void)_selectLogWithRoot:(id)root after:(int64_t)after mask:(int64_t)mask compare:(int64_t)compare callback:(id)callback
{
  callbackCopy = callback;
  selectLog = self->selectLog;
  encodeForKey = [root encodeForKey];
  v35 = 0;
  bindStringSQLite3(selectLog, 1, encodeForKey, &v35);
  v14 = v35;

  v15 = self->selectLog;
  v34 = v14;
  bindIntSQLite3(v15, 2, mask, &v34);
  v16 = v34;

  v17 = self->selectLog;
  v33 = v16;
  bindIntSQLite3(v17, 3, compare, &v33);
  v18 = v33;

  v19 = self->selectLog;
  v32 = v18;
  bindIntSQLite3(v19, 4, after, &v32);
  v20 = v32;

  if (v20)
  {
    (*(callbackCopy + 2))(callbackCopy, 0, 0, 0, 0, 0, 0, v20);
  }

  else
  {
    v21 = self->selectLog;
    v22 = callbackCopy;
    while (1)
    {
      v23 = sqlite3_step(v21);
      if (v23 != 100)
      {
        break;
      }

      v24 = sqlite3_column_int64(v21, 0);
      v25 = sqlite3_column_int64(v21, 1);
      v26 = sqlite3_column_int64(v21, 2);
      v27 = sqlite3_column_int64(v21, 4);
      v28 = sqlite3_column_int64(v21, 5);
      v29 = [MEMORY[0x277CBEA90] dataWithSQLite3Column:v21 column:3];
      LOBYTE(v24) = v22[2](v22, v24, v25, v26, v27, v28, v29, 0);

      if (v24)
      {
        goto LABEL_9;
      }
    }

    if ((v23 & 0xFFFFFFFE) != 0x64)
    {
      v30 = [MEMORY[0x277CCA9B8] errorWithSQLite3Statement:v21];
      (v22)[2](v22, 0, 0, 0, 0, 0, 0, v30);
    }

LABEL_9:
    sqlite3_reset(v21);

    v20 = 0;
  }
}

- (unint64_t)_insertLogWithRoot:(id)root transaction:(id)transaction set:(int64_t)set error:(id *)error
{
  v62 = *MEMORY[0x277D85DE8];
  rootCopy = root;
  transactionCopy = transaction;
  encodeForKey = [rootCopy encodeForKey];
  v13 = execSQLite3(self->flushPushedXact);
  if (v13)
  {
    v14 = v13;
    if (error)
    {
LABEL_3:
      v15 = v14;
      insert_rowid = 0;
      *error = v14;
      goto LABEL_28;
    }

LABEL_27:
    insert_rowid = 0;
    goto LABEL_28;
  }

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  obj = [transactionCopy objects];
  v46 = [obj countByEnumeratingWithState:&v57 objects:v61 count:16];
  if (v46)
  {
    setCopy = set;
    errorCopy = error;
    v43 = rootCopy;
    insert_rowid = 0;
    v48 = *v58;
    v44 = transactionCopy;
LABEL_6:
    v17 = 0;
    while (1)
    {
      if (*v58 != v48)
      {
        objc_enumerationMutation(obj);
      }

      v18 = *(*(&v57 + 1) + 8 * v17);
      v19 = objc_autoreleasePoolPush();
      change = [v18 change];
      v56 = 0;
      v21 = [change encodeWithEncoding:1 error:&v56];
      v14 = v56;

      if (!v21)
      {
        break;
      }

      p_insertLog = &self->insertLog;
      insertLog = self->insertLog;
      v55 = v14;
      bindIntSQLite3(insertLog, 1, setCopy, &v55);
      v24 = v55;

      v25 = self->insertLog;
      v54 = v24;
      bindStringSQLite3(v25, 2, encodeForKey, &v54);
      v26 = v54;

      v27 = self->insertLog;
      v53 = v26;
      bindDataSQLite3(v27, 3, v21, &v53);
      v28 = v53;

      v29 = self->insertLog;
      v52 = v28;
      bindIntSQLite3(v29, 4, insert_rowid, &v52);
      v30 = v52;

      v31 = self->insertLog;
      change2 = [v18 change];
      objectChangeType = [change2 objectChangeType];
      v51 = v30;
      bindIntSQLite3(v31, 5, objectChangeType, &v51);
      v34 = v51;

      v35 = self->insertLog;
      v50 = v34;
      bindIntSQLite3(v35, 6, 1, &v50);
      v14 = v50;

      if (v14)
      {
        break;
      }

      v36 = execSQLite3(*p_insertLog);
      if (v36)
      {
        goto LABEL_24;
      }

      if (!insert_rowid)
      {
        insert_rowid = sqlite3_last_insert_rowid(self->connection);
        p_updateLogXactID = &self->updateLogXactID;
        updateLogXactID = self->updateLogXactID;
        v49 = 0;
        bindIntSQLite3(updateLogXactID, 1, insert_rowid, &v49);
        v39 = v49;
        v14 = execSQLite3(self->updateLogXactID);

        if (v14)
        {
          break;
        }

        if (sqlite3_reset(*p_updateLogXactID))
        {
          goto LABEL_23;
        }

        options = [v44 options];
        v14 = [(HMDBackingStoreLocal *)self _insertLogOptionsWithID:insert_rowid options:options];

        if (v14)
        {
          break;
        }
      }

      if (sqlite3_reset(*p_insertLog))
      {
        p_updateLogXactID = &self->insertLog;
LABEL_23:
        v36 = [MEMORY[0x277CCA9B8] errorWithSQLite3Statement:*p_updateLogXactID];
LABEL_24:
        v14 = v36;
        break;
      }

      objc_autoreleasePoolPop(v19);
      if (v46 == ++v17)
      {
        rootCopy = v43;
        transactionCopy = v44;
        v46 = [obj countByEnumeratingWithState:&v57 objects:v61 count:16];
        if (v46)
        {
          goto LABEL_6;
        }

        goto LABEL_21;
      }
    }

    rootCopy = v43;
    transactionCopy = v44;

    objc_autoreleasePoolPop(v19);
    if (!v14)
    {
      goto LABEL_28;
    }

    error = errorCopy;
    if (errorCopy)
    {
      goto LABEL_3;
    }

    goto LABEL_27;
  }

  insert_rowid = 0;
LABEL_21:

  v14 = 0;
LABEL_28:

  return insert_rowid;
}

- (void)_selectAllRecords:(id)records
{
  recordsCopy = records;
  while (1)
  {
    v4 = sqlite3_step(self->selectRecords);
    if (v4 != 100)
    {
      break;
    }

    v5 = [MEMORY[0x277CCACA8] stringWithSQLite3Column:self->selectRecords column:0];
    v6 = sqlite3_column_int64(self->selectRecords, 1);
    v7 = sqlite3_column_int64(self->selectRecords, 2);
    v8 = [MEMORY[0x277CCACA8] stringWithSQLite3Column:self->selectRecords column:3];
    v9 = [MEMORY[0x277CCACA8] stringWithSQLite3Column:self->selectRecords column:4];
    v10 = sqlite3_column_int64(self->selectRecords, 5);
    v11 = [MEMORY[0x277CBEA90] dataWithSQLite3Column:self->selectRecords column:6];
    v12 = [MEMORY[0x277CBEA90] dataWithSQLite3Column:self->selectRecords column:7];
    LOBYTE(v6) = recordsCopy[2](recordsCopy, v5, v6, v7, v8, v9, v10, v11, v12, 0);

    if (v6)
    {
      goto LABEL_7;
    }
  }

  if ((v4 & 0xFFFFFFFE) != 0x64)
  {
    v13 = [MEMORY[0x277CCA9B8] errorWithSQLite3Statement:self->selectRecords];
    (recordsCopy)[2](recordsCopy, 0, 0, 0, 0, 0, 0, 0, 0, v13);
  }

LABEL_7:
  sqlite3_reset(self->selectRecords);
}

- (void)_fetchRecordsWithGroupID:(int64_t)d names:(id)names callback:(id)callback
{
  v25 = *MEMORY[0x277D85DE8];
  namesCopy = names;
  callbackCopy = callback;
  if (d)
  {
    selectRecordName = self->selectRecordName;
    v23 = 0;
    bindIntSQLite3(selectRecordName, 2, d, &v23);
    d = v23;
  }

  else
  {
    selectRecordName = self->selectRecordNameNoShare;
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v11 = namesCopy;
  v12 = [v11 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v20;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v19 + 1) + 8 * i);
        dCopy = d;
        bindStringSQLite3(selectRecordName, 1, v16, &dCopy);
        dCopy2 = dCopy;

        if (dCopy2)
        {
          (*(callbackCopy + 2))(callbackCopy, 0, 0, 0, 0, dCopy2);
          goto LABEL_17;
        }

        d = _handleFetchWithRawCallback(selectRecordName, callbackCopy);

        if (d)
        {
          dCopy2 = 0;
          goto LABEL_17;
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v19 objects:v24 count:16];
      d = 0;
      dCopy2 = 0;
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    dCopy2 = d;
  }

LABEL_17:
}

- (void)_fetchRecordsWithGroupID:(int64_t)d parent:(id)parent type:(id)type callback:(id)callback
{
  parentCopy = parent;
  typeCopy = type;
  callbackCopy = callback;
  if (d)
  {
    selectRecordParent = self->selectRecordParent;
    v21 = 0;
    bindIntSQLite3(selectRecordParent, 3, d, &v21);
    d = v21;
  }

  else
  {
    selectRecordParent = self->selectRecordParentNoShare;
  }

  uUIDString = [parentCopy UUIDString];
  dCopy = d;
  bindStringSQLite3(selectRecordParent, 1, uUIDString, &dCopy);
  v14 = dCopy;

  v19 = v14;
  bindStringSQLite3(selectRecordParent, 2, typeCopy, &v19);
  v15 = v19;

  if (v15)
  {
    sqlite3_reset(selectRecordParent);
    (*(callbackCopy + 2))(callbackCopy, 0, 0, 0, 0, v15);
  }

  else
  {
    v16 = _handleFetchWithRawCallback(selectRecordParent, callbackCopy);
  }
}

- (void)_fetchRecordsWithGroupID:(int64_t)d parentUuids:(id)uuids callback:(id)callback
{
  v28 = *MEMORY[0x277D85DE8];
  uuidsCopy = uuids;
  callbackCopy = callback;
  selectRecordParentUUID = self->selectRecordParentUUID;
  v26 = 0;
  bindIntSQLite3(selectRecordParentUUID, 2, d, &v26);
  v11 = v26;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v12 = uuidsCopy;
  v13 = [v12 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v23;
    while (2)
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v23 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = self->selectRecordParentUUID;
        uUIDString = [*(*(&v22 + 1) + 8 * i) UUIDString];
        v21 = v11;
        bindStringSQLite3(v17, 1, uUIDString, &v21);
        v19 = v21;

        v20 = self->selectRecordParentUUID;
        if (v19)
        {
          sqlite3_reset(v20);
          (*(callbackCopy + 2))(callbackCopy, 0, 0, 0, 0, v19);
          goto LABEL_14;
        }

        v11 = _handleFetchWithRawCallback(v20, callbackCopy);

        if (v11)
        {
          v19 = 0;
          goto LABEL_14;
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v22 objects:v27 count:16];
      v11 = 0;
      v19 = 0;
      if (v14)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v19 = v11;
  }

LABEL_14:
}

- (id)_fetchRecordWithUUID:(id)d root:(id)root error:(id *)error
{
  if (error)
  {
    *error = 0;
  }

  selectRecordUUIDNoShare = self->selectRecordUUIDNoShare;
  uUIDString = [d UUIDString];
  v21 = 0;
  bindStringSQLite3(selectRecordUUIDNoShare, 1, uUIDString, &v21);
  v9 = v21;

  sqlite3_reset(self->selectRecordUUIDNoShare);
  if (v9)
  {
    if (error)
    {
      v10 = v9;
      v11 = 0;
      v12 = 0;
      *error = v9;
      goto LABEL_22;
    }

    goto LABEL_18;
  }

  v13 = sqlite3_step(self->selectRecordUUIDNoShare);
  if (v13 != 100)
  {
    if (error && v13 != 101)
    {
      *error = [MEMORY[0x277CCA9B8] errorWithSQLite3Statement:self->selectRecordUUIDNoShare];
    }

    sqlite3_reset(self->selectRecordUUIDNoShare);
    v9 = 0;
LABEL_18:
    v11 = 0;
    v12 = 0;
    goto LABEL_22;
  }

  v14 = sqlite3_column_int64(self->selectRecordUUIDNoShare, 2);
  v15 = [MEMORY[0x277CBEA90] dataWithSQLite3Column:self->selectRecordUUIDNoShare column:1];
  v16 = sqlite3_step(self->selectRecordUUIDNoShare);
  if (error && v16 != 101)
  {
    *error = [MEMORY[0x277CCA9B8] errorWithSQLite3Statement:self->selectRecordUUIDNoShare];
  }

  sqlite3_reset(self->selectRecordUUIDNoShare);
  v20 = 0;
  v11 = [HMDBackingStoreModelObject objectFromData:v15 encoding:v14 error:&v20];
  v17 = v20;
  v9 = v17;
  if (v17)
  {
    if (error && !*error)
    {
      v18 = v17;
      v12 = 0;
      *error = v9;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = v11;
  }

LABEL_22:

  return v12;
}

- (void)_fetchRecordsWithGroupID:(int64_t)d uuids:(id)uuids callback:(id)callback
{
  v25 = *MEMORY[0x277D85DE8];
  uuidsCopy = uuids;
  callbackCopy = callback;
  if (d)
  {
    selectRecordUUID = self->selectRecordUUID;
    v23 = 0;
    bindIntSQLite3(selectRecordUUID, 2, d, &v23);
    d = v23;
  }

  else
  {
    selectRecordUUID = self->selectRecordUUIDNoShare;
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v11 = uuidsCopy;
  v12 = [v11 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v20;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(v11);
        }

        uUIDString = [*(*(&v19 + 1) + 8 * i) UUIDString];
        dCopy = d;
        bindStringSQLite3(selectRecordUUID, 1, uUIDString, &dCopy);
        dCopy2 = dCopy;

        if (dCopy2)
        {
          sqlite3_reset(selectRecordUUID);
          (*(callbackCopy + 2))(callbackCopy, 0, 0, 0, 0, dCopy2);
          goto LABEL_17;
        }

        d = _handleFetchWithRawCallback(selectRecordUUID, callbackCopy);

        if (d)
        {
          dCopy2 = 0;
          goto LABEL_17;
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v19 objects:v24 count:16];
      d = 0;
      dCopy2 = 0;
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    dCopy2 = d;
  }

LABEL_17:
}

- (void)_fetchRecordsWithGroupID:(int64_t)d callback:(id)callback
{
  callbackCopy = callback;
  v18 = 0;
  bindIntSQLite3(self->selectRecordGroup, 1, d, &v18);
  v6 = v18;
  if (v6)
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = sqlite3_step(self->selectRecordGroup);
    if (v7 != 100)
    {
      break;
    }

    v8 = [MEMORY[0x277CCACA8] stringWithSQLite3Column:self->selectRecordGroup column:0];
    v9 = [MEMORY[0x277CBEA90] dataWithSQLite3Column:self->selectRecordGroup column:1];
    v10 = sqlite3_column_int64(self->selectRecordGroup, 2);
    v11 = [MEMORY[0x277CBEA90] dataWithSQLite3Column:self->selectRecordGroup column:3];
    v12 = [MEMORY[0x277CCACA8] stringWithSQLite3Column:self->selectRecordGroup column:4];
    v13 = [MEMORY[0x277CCACA8] stringWithSQLite3Column:self->selectRecordGroup column:5];
    v14 = [MEMORY[0x277CCACA8] stringWithSQLite3Column:self->selectRecordGroup column:6];
    v15 = [MEMORY[0x277CCACA8] stringWithSQLite3Column:self->selectRecordGroup column:7];
    callbackCopy[2](callbackCopy, v8, v9, v10, v11, v12, v13, v14, v15, 0);
  }

  if (v7 == 101)
  {
    sqlite3_reset(self->selectRecordGroup);
    goto LABEL_7;
  }

  v6 = [MEMORY[0x277CCA9B8] errorWithSQLite3Statement:self->selectRecordGroup];
  sqlite3_reset(self->selectRecordGroup);
  v16 = callbackCopy;
  if (v6)
  {
LABEL_2:
    (callbackCopy[2])(callbackCopy, 0);

LABEL_7:
    v16 = callbackCopy;
  }
}

- (void)_fetchRecordMapWithGroupID:(int64_t)d callback:(id)callback
{
  callbackCopy = callback;
  v15 = 0;
  bindIntSQLite3(self->selectRecordGroupMap, 1, d, &v15);
  v6 = v15;
  if (v6)
  {
    v7 = *(callbackCopy + 2);
LABEL_3:
    v7();

LABEL_8:
    v13 = callbackCopy;
    goto LABEL_9;
  }

  while (1)
  {
    v8 = sqlite3_step(self->selectRecordGroupMap);
    if (v8 != 100)
    {
      break;
    }

    v9 = [MEMORY[0x277CCACA8] stringWithSQLite3Column:self->selectRecordGroupMap column:0];
    v10 = [MEMORY[0x277CCACA8] stringWithSQLite3Column:self->selectRecordGroupMap column:1];
    v11 = [MEMORY[0x277CCACA8] stringWithSQLite3Column:self->selectRecordGroupMap column:2];
    v12 = [MEMORY[0x277CCACA8] stringWithSQLite3Column:self->selectRecordGroupMap column:3];
    (*(callbackCopy + 2))(callbackCopy, v9, v10, v11, v12, 0);
  }

  if (v8 == 101)
  {
    sqlite3_reset(self->selectRecordGroupMap);
    goto LABEL_8;
  }

  v6 = [MEMORY[0x277CCA9B8] errorWithSQLite3Statement:self->selectRecordGroup];
  sqlite3_reset(self->selectRecordGroupMap);
  v13 = callbackCopy;
  if (v6)
  {
    v7 = *(callbackCopy + 2);
    goto LABEL_3;
  }

LABEL_9:
}

- (void)_fetchRecordTypeSchemaWithGroupID:(int64_t)d callback:(id)callback
{
  callbackCopy = callback;
  v14 = 0;
  bindIntSQLite3(self->selectRecordGroupTypeSchema, 1, d, &v14);
  v6 = v14;
  if (v6)
  {
    v7 = *(callbackCopy + 2);
    goto LABEL_3;
  }

  while (1)
  {
    v8 = sqlite3_step(self->selectRecordGroupTypeSchema);
    if (v8 != 100)
    {
      break;
    }

    v9 = [MEMORY[0x277CCACA8] stringWithSQLite3Column:self->selectRecordGroupTypeSchema column:0];
    v10 = [MEMORY[0x277CCACA8] stringWithSQLite3Column:self->selectRecordGroupTypeSchema column:1];
    v11 = (*(callbackCopy + 2))(callbackCopy, v9, v10, 0);

    if ((v11 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  if (v8 == 101)
  {
LABEL_8:
    sqlite3_reset(self->selectRecordGroupTypeSchema);
    goto LABEL_9;
  }

  v6 = [MEMORY[0x277CCA9B8] errorWithSQLite3Statement:self->selectRecordGroupTypeSchema];
  sqlite3_reset(self->selectRecordGroupTypeSchema);
  v12 = callbackCopy;
  if (v6)
  {
    v7 = *(callbackCopy + 2);
LABEL_3:
    v7();

LABEL_9:
    v12 = callbackCopy;
  }
}

- (void)_fetchRecordCountWithGroupID:(int64_t)d callback:(id)callback
{
  callbackCopy = callback;
  v12 = 0;
  bindIntSQLite3(self->selectRecordCountGroup, 1, d, &v12);
  v6 = v12;
  if (v6)
  {
    v7 = *(callbackCopy + 2);
LABEL_3:
    v7();

LABEL_8:
    v10 = callbackCopy;
    goto LABEL_9;
  }

  while (1)
  {
    v9 = sqlite3_step(self->selectRecordCountGroup);
    if (v9 != 100)
    {
      break;
    }

    v8 = sqlite3_column_int64(self->selectRecordCountGroup, 0);
    (*(callbackCopy + 2))(callbackCopy, v8, 0);
  }

  if (v9 == 101)
  {
    sqlite3_reset(self->selectRecordCountGroup);
    goto LABEL_8;
  }

  v6 = [MEMORY[0x277CCA9B8] errorWithSQLite3Statement:self->selectRecordCountGroup];
  sqlite3_reset(self->selectRecordCountGroup);
  v10 = callbackCopy;
  if (v6)
  {
    v7 = *(callbackCopy + 2);
    goto LABEL_3;
  }

LABEL_9:
}

- (id)_deleteRecordWithGroupID:(int64_t)d recordName:(id)name
{
  deleteRecord = self->deleteRecord;
  v15 = 0;
  nameCopy = name;
  bindIntSQLite3(deleteRecord, 2, d, &v15);
  v8 = v15;
  v9 = self->deleteRecord;
  v14 = v8;
  bindStringSQLite3(v9, 1, nameCopy, &v14);

  v10 = v14;
  if (v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = execSQLite3(self->deleteRecord);
  }

  v12 = v11;

  return v12;
}

- (id)_updateRecordWithGroupID:(int64_t)d store:(int64_t)store name:(id)name model:(id)model
{
  nameCopy = name;
  v19 = 0;
  v11 = [model encodeWithEncoding:1 error:&v19];
  v12 = v19;
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v15 = objc_alloc(MEMORY[0x277CBC5A0]);
    v16 = [objc_alloc(MEMORY[0x277CBC5D0]) initWithRecordName:nameCopy];
    v17 = [v15 initWithRecordType:@"ObjectRecord" recordID:v16];
    v14 = [(HMDBackingStoreLocal *)self _updateRecordWithGroupID:d store:store record:v17 data:v11 encoding:1];
  }

  return v14;
}

- (id)_updateRecordWithGroupID:(int64_t)d store:(int64_t)store record:(id)record
{
  recordCopy = record;
  v9 = [recordCopy objectForKey:@"k00"];
  integerValue = [v9 integerValue];

  if (integerValue)
  {
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"k%02lu", integerValue];
    v12 = [recordCopy objectForKey:v11];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;

    if (v14)
    {
      [(HMDBackingStoreLocal *)self _updateRecordWithGroupID:d store:store record:recordCopy data:v14 encoding:integerValue];
    }

    else
    {
      [MEMORY[0x277CCA9B8] hmfErrorWithCode:8];
    }
    v15 = ;
  }

  else
  {
    v15 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:8];
  }

  return v15;
}

- (id)_updateRecordWithGroupID:(int64_t)d store:(int64_t)store record:(id)record data:(id)data encoding:(int64_t)encoding
{
  recordCopy = record;
  dataCopy = data;
  v14 = objc_autoreleasePoolPush();
  v15 = [objc_alloc(MEMORY[0x277CCAAB0]) initRequiringSecureCoding:1];
  [recordCopy encodeSystemFieldsWithCoder:v15];
  [v15 finishEncoding];
  encodedData = [v15 encodedData];

  objc_autoreleasePoolPop(v14);
  encodingCopy = encoding;
  v37 = 0;
  v17 = [HMDBackingStoreModelObject objectFromData:dataCopy encoding:encoding error:&v37];
  v18 = v37;
  recordID = [recordCopy recordID];
  recordName = [recordID recordName];
  if (v18)
  {
    v21 = [(HMDBackingStoreLocal *)self _updateRecordWithGroupID:d store:store name:recordName record:encodedData uuid:0 parentUUID:0 type:0 data:dataCopy encoding:0 schema:0];
  }

  else
  {
    uuid = [v17 uuid];
    uUIDString = [uuid UUIDString];
    parentUUID = [v17 parentUUID];
    uUIDString2 = [parentUUID UUIDString];
    bsoType = [v17 bsoType];
    +[HMDBackingStoreSingleton sharedInstance];
    v22 = recordCopy;
    v23 = encodedData;
    v25 = v24 = store;
    v26 = [v25 schemaHashForObject:v17];
    selfCopy = self;
    v28 = v26;
    v29 = v24;
    encodedData = v23;
    recordCopy = v22;
    v21 = [(HMDBackingStoreLocal *)selfCopy _updateRecordWithGroupID:d store:v29 name:recordName record:encodedData uuid:uUIDString parentUUID:uUIDString2 type:bsoType data:dataCopy encoding:encodingCopy schema:v26];
  }

  return v21;
}

- (id)_updateRecordWithGroupID:(int64_t)d store:(int64_t)store name:(id)name record:(id)record uuid:(id)uuid parentUUID:(id)iD type:(id)type data:(id)self0 encoding:(int64_t)self1 schema:(id)self2
{
  v80 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  recordCopy = record;
  uuidCopy = uuid;
  iDCopy = iD;
  typeCopy = type;
  dataCopy = data;
  schemaCopy = schema;
  insertRecord = self->insertRecord;
  v65 = 0;
  dCopy = d;
  bindIntSQLite3(insertRecord, 1, d, &v65);
  v23 = v65;
  v24 = self->insertRecord;
  v64 = v23;
  v54 = nameCopy;
  bindStringSQLite3(v24, 2, nameCopy, &v64);
  v25 = v64;

  v26 = self->insertRecord;
  v63 = v25;
  v53 = recordCopy;
  bindDataSQLite3(v26, 3, recordCopy, &v63);
  v27 = v63;

  v28 = self->insertRecord;
  v62 = v27;
  bindStringSQLite3(v28, 4, uuidCopy, &v62);
  v29 = v62;

  v30 = self->insertRecord;
  v61 = v29;
  bindStringSQLite3(v30, 5, iDCopy, &v61);
  v31 = v61;

  v32 = self->insertRecord;
  v60 = v31;
  bindDataSQLite3(v32, 6, dataCopy, &v60);
  v33 = v60;

  v34 = self->insertRecord;
  v59 = v33;
  bindIntSQLite3(v34, 7, encoding, &v59);
  v35 = v59;

  v36 = self->insertRecord;
  v58 = v35;
  bindStringSQLite3(v36, 8, typeCopy, &v58);
  v37 = v58;

  v38 = self->insertRecord;
  v57 = v37;
  bindStringSQLite3(v38, 9, schemaCopy, &v57);
  v39 = v57;

  v40 = self->insertRecord;
  v56 = v39;
  bindIntSQLite3(v40, 10, store, &v56);
  v41 = v56;

  v42 = objc_autoreleasePoolPush();
  selfCopy = self;
  v44 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
  {
    HMFGetLogIdentifier();
    v46 = v45 = schemaCopy;
    *buf = 138544898;
    v67 = v46;
    v68 = 2048;
    v69 = dCopy;
    v70 = 2112;
    v71 = v54;
    v72 = 2112;
    v73 = uuidCopy;
    v74 = 2112;
    v75 = iDCopy;
    v76 = 2112;
    v77 = typeCopy;
    v78 = 2112;
    v79 = v45;
    _os_log_impl(&dword_229538000, v44, OS_LOG_TYPE_DEBUG, "%{public}@Inserting/Updating record group: %lu, name: %@, uuid: %@, parent: %@, type: %@, schema: %@", buf, 0x48u);

    schemaCopy = v45;
  }

  objc_autoreleasePoolPop(v42);
  if (v41)
  {
    v47 = v41;
  }

  else
  {
    v47 = execSQLite3(self->insertRecord);
  }

  v48 = v47;

  return v48;
}

- (id)_fetchGroupsForZone:(id)zone withError:(id *)error
{
  zoneCopy = zone;
  [MEMORY[0x277CBEB18] array];
  v24 = v23 = zoneCopy;
  bindIntSQLite3(self->selectGroups, 1, [zoneCopy zoneID], error);
  if (*error)
  {
LABEL_15:
    v20 = 0;
    goto LABEL_16;
  }

  errorCopy = error;
  while (1)
  {
    v7 = sqlite3_step(self->selectGroups);
    if (v7 != 100)
    {
      break;
    }

    v8 = sqlite3_column_int64(self->selectGroups, 0);
    if (v8)
    {
      v9 = v8;
      v10 = [MEMORY[0x277CCACA8] stringWithSQLite3Column:self->selectGroups column:1];
      v11 = [MEMORY[0x277CCACA8] stringWithSQLite3Column:self->selectGroups column:2];
      v12 = [MEMORY[0x277CBEA90] dataWithSQLite3Column:self->selectGroups column:3];
      v13 = [MEMORY[0x277CCACA8] stringWithSQLite3Column:self->selectGroups column:4];
      v14 = [MEMORY[0x277CBEA90] dataWithSQLite3Column:self->selectGroups column:5];
      v15 = v14;
      if (v12)
      {
        v16 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v12 error:errorCopy];
        if (v15)
        {
          goto LABEL_7;
        }
      }

      else
      {
        v16 = 0;
        if (v14)
        {
LABEL_7:
          v17 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v15 error:errorCopy];
          goto LABEL_10;
        }
      }

      v17 = 0;
LABEL_10:
      v18 = [[HMDBackingStoreCacheGroup alloc] initWithGroupID:v9 zone:v23 rootRecord:v10 serverChangeToken:v16 subscriptionName:v13 owner:v11 subscription:v17];
      [v24 addObject:v18];
    }
  }

  if (v7 != 101)
  {
    *errorCopy = [MEMORY[0x277CCA9B8] errorWithSQLite3Statement:self->selectGroups];
  }

  if (!sqlite3_reset(self->selectGroups))
  {
    if (!*errorCopy)
    {
      goto LABEL_20;
    }

    goto LABEL_15;
  }

  v19 = [MEMORY[0x277CCA9B8] errorWithSQLite3Statement:self->selectGroups];
  *errorCopy = v19;
  if (v19)
  {
    goto LABEL_15;
  }

LABEL_20:
  v20 = v24;
LABEL_16:

  return v20;
}

- (id)_updateGroupWithID:(int64_t)d subscription:(id)subscription
{
  updateGroupSubscription = self->updateGroupSubscription;
  v7 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:subscription requiringSecureCoding:1 error:0];
  v15 = 0;
  bindDataSQLite3(updateGroupSubscription, 1, v7, &v15);
  v8 = v15;

  v9 = self->updateGroupSubscription;
  v14 = v8;
  bindIntSQLite3(v9, 2, d, &v14);
  v10 = v14;

  if (v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = execSQLite3(self->updateGroupSubscription);
  }

  v12 = v11;

  return v12;
}

- (id)_updateGroupWithID:(int64_t)d serverChangeToken:(id)token
{
  updateGroupToken = self->updateGroupToken;
  v7 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:token requiringSecureCoding:1 error:0];
  v15 = 0;
  bindDataSQLite3(updateGroupToken, 1, v7, &v15);
  v8 = v15;

  v9 = self->updateGroupToken;
  v14 = v8;
  bindIntSQLite3(v9, 2, d, &v14);
  v10 = v14;

  if (v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = execSQLite3(self->updateGroupToken);
  }

  v12 = v11;

  return v12;
}

- (id)_deleteGroupWithID:(int64_t)d
{
  if (d)
  {
    deleteGroup = self->deleteGroup;
    v8 = 0;
    bindIntSQLite3(deleteGroup, 1, d, &v8);
    v6 = v8;
    if (!v6)
    {
      v6 = execSQLite3(self->deleteGroup);
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (int64_t)_insertGroupWithZoneID:(int64_t)d root:(id)root owner:(id)owner subscription:(id)subscription error:(id *)error
{
  insertGroup = self->insertGroup;
  subscriptionCopy = subscription;
  ownerCopy = owner;
  rootCopy = root;
  bindIntSQLite3(insertGroup, 1, d, error);
  bindStringSQLite3(self->insertGroup, 2, rootCopy, error);

  bindStringSQLite3(self->insertGroup, 3, ownerCopy, error);
  bindStringSQLite3(self->insertGroup, 4, subscriptionCopy, error);

  if (*error)
  {
    return 0;
  }

  v17 = self->insertGroup;

  return steplastrowresetSQLite3(v17, error);
}

- (id)_fetchZonesWithError:(id *)error
{
  array = [MEMORY[0x277CBEB18] array];
  while (1)
  {
    v6 = sqlite3_step(self->selectZones);
    if (v6 != 100)
    {
      break;
    }

    v7 = sqlite3_column_int64(self->selectZones, 0);
    v8 = [MEMORY[0x277CCACA8] stringWithSQLite3Column:self->selectZones column:1];
    if (v7)
    {
      v9 = [[HMDBackingStoreCacheZone alloc] initWithZoneID:v7 name:v8];
      [array addObject:v9];
    }
  }

  if (v6 == 101)
  {
    if (sqlite3_reset(self->selectZones))
    {
      if (error)
      {
        v10 = MEMORY[0x277CCA9B8];
LABEL_15:
        [v10 errorWithSQLite3Statement:self->selectZones];
        *error = v12 = 0;
        goto LABEL_18;
      }

      v12 = 0;
    }

    else
    {
      v12 = array;
    }
  }

  else
  {
    if (error)
    {
      *error = [MEMORY[0x277CCA9B8] errorWithSQLite3Statement:self->selectZones];
    }

    v11 = sqlite3_reset(self->selectZones);
    v12 = 0;
    if (error && v11)
    {
      v10 = MEMORY[0x277CCA9B8];
      goto LABEL_15;
    }
  }

LABEL_18:

  return v12;
}

- (id)_deleteZoneWithID:(int64_t)d
{
  if (d)
  {
    deleteZone = self->deleteZone;
    v8 = 0;
    bindIntSQLite3(deleteZone, 1, d, &v8);
    v6 = v8;
    if (!v6)
    {
      v6 = execSQLite3(self->deleteZone);
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (int64_t)_insertZoneWithName:(id)name error:(id *)error
{
  bindStringSQLite3(self->insertZone, 1, name, error);
  if (*error)
  {
    return 0;
  }

  insertZone = self->insertZone;

  return steplastrowresetSQLite3(insertZone, error);
}

- (id)_fillZoneCache
{
  v21 = *MEMORY[0x277D85DE8];
  v19 = 0;
  v3 = [(HMDBackingStoreLocal *)self _fetchZonesWithError:&v19];
  v4 = v19;
  if (!v4)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v15 objects:v20 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v15 + 1) + 8 * i);
          v14 = 0;
          v11 = [(HMDBackingStoreLocal *)self _fetchGroupsForZone:v10 withError:&v14];
          v12 = v14;
          [v10 setActualGroups:v11];

          if (v12)
          {
            v4 = v12;

            goto LABEL_12;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v15 objects:v20 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    [(HMDBackingStoreLocal *)self setZoneCache:v5];
    v4 = 0;
  }

LABEL_12:

  return v4;
}

- (unint64_t)_fetchIDForStore:(id)store error:(id *)error
{
  storeCopy = store;
  storeCache = [(HMDBackingStoreLocal *)self storeCache];
  v8 = [storeCache objectForKey:storeCopy];

  if (v8)
  {
    unsignedIntegerValue = [v8 unsignedIntegerValue];
  }

  else
  {
    insertStore = self->insertStore;
    v19 = 0;
    bindStringSQLite3(insertStore, 1, storeCopy, &v19);
    v11 = v19;
    v12 = self->insertStore;
    v18 = v11;
    unsignedIntegerValue = steplastrowresetSQLite3(v12, &v18);
    v13 = v18;

    if (error)
    {
      v14 = v13;
      *error = v13;
    }

    if (v13)
    {
      unsignedIntegerValue = 0;
    }

    else
    {
      storeCache2 = [(HMDBackingStoreLocal *)self storeCache];
      v16 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:unsignedIntegerValue];
      [storeCache2 setObject:v16 forKey:storeCopy];
    }
  }

  return unsignedIntegerValue;
}

- (id)_fetchUncommittedAndPushedTransactions
{
  connection = self->connection;
  v6 = 0;
  v3 = selectSQLite3(connection, "SELECT id, xact_id, pushed, data, type, encoding, root FROM xact WHERE ((pushed & 0xffff0000) >> 16) != 0 AND disk_committed=0 ORDER BY root, xact_id, id", MEMORY[0x277CBEC10], &v6);;
  v4 = [v3 na_map:&__block_literal_global_179737];

  return v4;
}

HMDBackingStoreLogRecord *__62__HMDBackingStoreLocal__fetchUncommittedAndPushedTransactions__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[HMDBackingStoreLogRecord alloc] initWithArray:v2];

  return v3;
}

- (id)_dropUncommittedUnpushedTransactions
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = runSQLite3(self->connection, "DELETE FROM xact WHERE ((pushed & 0xffff0000) >> 16) = 0 AND disk_committed=0");
  if (!v3)
  {
    v4 = objc_autoreleasePoolPush();
    selfCopy = self;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = HMFGetLogIdentifier();
      v9 = 138543362;
      v10 = v7;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@Dropped transactions that were not committed to disk.", &v9, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
  }

  return v3;
}

- (int64_t)_numUncommittedTransactions
{
  v24 = *MEMORY[0x277D85DE8];
  connection = self->connection;
  v19 = 0;
  v4 = selectSQLite3(connection, "SELECT count(*) FROM xact WHERE disk_committed=0", MEMORY[0x277CBEC10], &v19);;
  v5 = v19;
  if ([v4 count] && ((objc_msgSend(v4, "objectAtIndexedSubscript:", 0), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "count"), v6, v7) ? (v8 = v5 == 0) : (v8 = 0), v8 && ((objc_msgSend(v4, "objectAtIndexedSubscript:", 0), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "objectAtIndexedSubscript:", 0), v10 = objc_claimAutoreleasedReturnValue(), v9, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) ? (v11 = 0) : (v11 = v10), v12 = v11, v10, v12)))
  {
    integerValue = [v12 integerValue];
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    selfCopy = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543618;
      v21 = v17;
      v22 = 2112;
      v23 = v5;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@Unable to determine number of uncommitted transactions %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
    integerValue = -1;
  }

  return integerValue;
}

- (id)_fillStoreCache
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  while (1)
  {
    v4 = sqlite3_step(self->selectStores);
    if (v4 != 100)
    {
      break;
    }

    v5 = sqlite3_column_int64(self->selectStores, 0);
    v6 = [MEMORY[0x277CCACA8] stringWithSQLite3Column:self->selectStores column:1];
    v7 = [MEMORY[0x277CCABB0] numberWithLongLong:v5];
    [dictionary setValue:v7 forKey:v6];
  }

  if (v4 == 101)
  {
    if (sqlite3_reset(self->selectZones))
    {
      v8 = [MEMORY[0x277CCA9B8] errorWithSQLite3Statement:self->selectZones];
    }

    else
    {
      [(HMDBackingStoreLocal *)self setStoreCache:dictionary];
      v8 = 0;
    }
  }

  else
  {
    v8 = [MEMORY[0x277CCA9B8] errorWithSQLite3Statement:self->selectZones];
    if (sqlite3_reset(self->selectZones))
    {
      v9 = [MEMORY[0x277CCA9B8] errorWithSQLite3Statement:self->selectZones];

      v8 = v9;
    }
  }

  return v8;
}

- (void)_rollback
{
  v13 = *MEMORY[0x277D85DE8];
  connection = self->connection;
  if (connection && !sqlite3_get_autocommit(connection))
  {
    v4 = execSQLite3(self->rollback);
    if (v4)
    {
      v5 = objc_autoreleasePoolPush();
      selfCopy = self;
      v7 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = HMFGetLogIdentifier();
        v9 = 138543618;
        v10 = v8;
        v11 = 2112;
        v12 = v4;
        _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_ERROR, "%{public}@ROLLBACK FAILED!: %@", &v9, 0x16u);
      }

      objc_autoreleasePoolPop(v5);
    }
  }
}

- (id)_commit
{
  if (sqlite3_get_autocommit(self->connection))
  {
    v3 = 0;
  }

  else
  {
    v3 = execSQLite3(self->commit);
  }

  return v3;
}

- (id)_instantiateResources:(BOOL)resources migrate:(BOOL)migrate
{
  resourcesCopy = resources;
  v385 = *MEMORY[0x277D85DE8];
  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    datastoreFile = [(HMDBackingStoreLocal *)selfCopy datastoreFile];
    *buf = 138543618;
    v380 = v10;
    v381 = 2112;
    v382 = datastoreFile;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@SQLite datastore file: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  datastoreFile2 = [(HMDBackingStoreLocal *)selfCopy datastoreFile];

  if (!datastoreFile2)
  {
    _fillStoreCache = [MEMORY[0x277CCA9B8] hmfErrorWithCode:2];
    goto LABEL_31;
  }

  sqlite3_initialize();
  if (resourcesCopy)
  {
    datastoreFile3 = [(HMDBackingStoreLocal *)selfCopy datastoreFile];
    unlink([datastoreFile3 UTF8String]);
  }

  datastoreFile4 = [(HMDBackingStoreLocal *)selfCopy datastoreFile];
  v15 = sqlite3_open_v2([datastoreFile4 UTF8String], &selfCopy->connection, 2, 0);

  datastoreFile5 = [(HMDBackingStoreLocal *)selfCopy datastoreFile];
  v17 = datastoreFile5;
  if (!v15)
  {
    v21 = [datastoreFile5 isEqualToString:@":memory:"];

    if (v21)
    {
      datastoreFile6 = [(HMDBackingStoreLocal *)selfCopy datastoreFile];
      v23 = [(HMDBackingStoreLocal *)selfCopy _createDatastoreTables:datastoreFile6];

      if (v23)
      {
        v19 = v23;
        goto LABEL_13;
      }

      goto LABEL_14;
    }

    connection = selfCopy->connection;
    v377 = 0;
    v27 = selectSQLite3(connection, "PRAGMA user_version", MEMORY[0x277CBEC10], &v377);;
    v327 = v377;
    firstObject = [v27 firstObject];
    v28FirstObject = [firstObject firstObject];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v30 = v28FirstObject;
    }

    else
    {
      v30 = 0;
    }

    v31 = v30;

    v32 = objc_autoreleasePoolPush();
    v33 = selfCopy;
    v34 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      v35 = HMFGetLogIdentifier();
      *buf = 138543618;
      v380 = v35;
      v381 = 2112;
      v382 = v31;
      _os_log_impl(&dword_229538000, v34, OS_LOG_TYPE_DEFAULT, "%{public}@Current schema version: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v32);
    if ([v31 unsignedIntegerValue] == 2)
    {
LABEL_21:

      v25 = v327;
LABEL_22:
      v36 = [MEMORY[0x277CCACA8] stringWithFormat:@"PRAGMA cache_size = %@", &unk_283E73880];;
      v37 = runSQLite3(selfCopy->connection, [v36 UTF8String]);

      if (v37)
      {
        v38 = objc_autoreleasePoolPush();
        v39 = selfCopy;
        v40 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          v41 = HMFGetLogIdentifier();
          *buf = 138543874;
          v380 = v41;
          v381 = 2048;
          v382 = 512;
          v383 = 2112;
          v384 = v37;
          _os_log_impl(&dword_229538000, v40, OS_LOG_TYPE_ERROR, "%{public}@Unable to set sqlite cache size to %ld: %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v38);
        v42 = v37;
      }

      else
      {
        v43 = runSQLite3(selfCopy->connection, "PRAGMA foreign_keys = ON");;
        if (!v43)
        {
          v63 = selfCopy->connection;
          v375 = 0;
          v64 = selectSQLite3(v63, "PRAGMA journal_mode=WAL", MEMORY[0x277CBEC10], &v375);;
          v65 = v375;
          if (v65 || [v64 count])
          {
            v66 = objc_autoreleasePoolPush();
            v67 = selfCopy;
            v68 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
            {
              v69 = HMFGetLogIdentifier();
              firstObject2 = [v64 firstObject];
              v70FirstObject = [firstObject2 firstObject];
              *buf = 138543874;
              v380 = v69;
              v381 = 2112;
              v382 = v70FirstObject;
              v383 = 2112;
              v384 = v65;
              _os_log_impl(&dword_229538000, v68, OS_LOG_TYPE_DEFAULT, "%{public}@turning on WAL resulted in %@ / %@", buf, 0x20u);
            }

            objc_autoreleasePoolPop(v66);
          }

          v72 = selfCopy->connection;
          v374 = v65;
          v73 = prepareSQLite3(v72, "BEGIN;", &v374);
          v74 = v374;

          selfCopy->begin = v73;
          v75 = selfCopy->connection;
          v373 = v74;
          v76 = prepareSQLite3(v75, "COMMIT;", &v373);
          v77 = v373;

          selfCopy->commit = v76;
          v78 = selfCopy->connection;
          v372 = v77;
          v79 = prepareSQLite3(v78, "ROLLBACK;", &v372);
          v80 = v372;

          selfCopy->rollback = v79;
          v81 = selfCopy->connection;
          v371 = v80;
          v82 = prepareSQLite3(v81, "INSERT INTO zone (name) values (?1)", &v371);
          v83 = v371;

          selfCopy->insertZone = v82;
          v84 = selfCopy->connection;
          v370 = v83;
          v85 = prepareSQLite3(v84, "DELETE FROM zone WHERE id=?1;", &v370);
          v86 = v370;

          selfCopy->deleteZone = v85;
          v87 = selfCopy->connection;
          v369 = v86;
          v88 = prepareSQLite3(v87, "SELECT id, name FROM zone;", &v369);
          v89 = v369;

          selfCopy->selectZones = v88;
          v90 = selfCopy->connection;
          v368 = v89;
          v91 = prepareSQLite3(v90, "INSERT INTO store (name) values (?1)", &v368);
          v92 = v368;

          selfCopy->insertStore = v91;
          v93 = selfCopy->connection;
          v367 = v92;
          v94 = prepareSQLite3(v93, "SELECT id, name FROM store;", &v367);
          v95 = v367;

          selfCopy->selectStores = v94;
          v96 = selfCopy->connection;
          v366 = v95;
          v97 = prepareSQLite3(v96, "INSERT INTO zone_group (zone_id, root, owner, subscription) VALUES (?1, ?2, ?3, ?4);", &v366);
          v98 = v366;

          selfCopy->insertGroup = v97;
          v99 = selfCopy->connection;
          v365 = v98;
          v100 = prepareSQLite3(v99, "DELETE FROM zone_group WHERE id=?1;", &v365);
          v101 = v365;

          selfCopy->deleteGroup = v100;
          v102 = selfCopy->connection;
          v364 = v101;
          v103 = prepareSQLite3(v102, "UPDATE zone_group SET token=?1 WHERE id=?2;", &v364);
          v104 = v364;

          selfCopy->updateGroupToken = v103;
          v105 = selfCopy->connection;
          v363 = v104;
          v106 = prepareSQLite3(v105, "UPDATE zone_group SET subscription_data=?1 WHERE id=?2;", &v363);
          v107 = v363;

          selfCopy->updateGroupSubscription = v106;
          v108 = selfCopy->connection;
          v362 = v107;
          v109 = prepareSQLite3(v108, "SELECT id, root, owner, token, subscription, subscription_data FROM zone_group where zone_id=?1", &v362);
          v110 = v362;

          selfCopy->selectGroups = v109;
          v111 = selfCopy->connection;
          v361 = v110;
          v112 = prepareSQLite3(v111, "INSERT INTO zone_share (group_id, root, target) VALUES (?1, ?2, ?3);", &v361);
          v113 = v361;

          selfCopy->insertShare = v112;
          v114 = selfCopy->connection;
          v360 = v113;
          v115 = prepareSQLite3(v114, "DELETE FROM zone_share WHERE id=?1;", &v360);
          v116 = v360;

          selfCopy->deleteShare = v115;
          v117 = selfCopy->connection;
          v359 = v116;
          v118 = prepareSQLite3(v117, "UPDATE zone_share SET share=?1 WHERE id=?2;", &v359);
          v119 = v359;

          selfCopy->updateShareShare = v118;
          v120 = selfCopy->connection;
          v358 = v119;
          v121 = prepareSQLite3(v120, "UPDATE zone_share SET users=?1 WHERE id=?2;", &v358);
          v122 = v358;

          selfCopy->updateShareUsers = v121;
          v123 = selfCopy->connection;
          v357 = v122;
          v124 = prepareSQLite3(v123, "SELECT id, root, target, share, users FROM zone_share WHERE group_id=?1;", &v357);
          v125 = v357;

          selfCopy->selectShares = v124;
          v126 = selfCopy->connection;
          v356 = v125;
          v127 = prepareSQLite3(v126, "INSERT OR REPLACE INTO record (group_id, share_id, name, record, uuid, parent_uuid, data, encoding, type, schema, store_id) VALUES (?1, 0, ?2, ?3, ?4, ?5, ?6, ?7, ?8, ?9, ?10);", &v356);
          v128 = v356;

          selfCopy->insertRecord = v127;
          v129 = selfCopy->connection;
          v355 = v128;
          v130 = prepareSQLite3(v129, "UPDATE record SET schema = ?3 where group_id = ?1 and name = ?2;", &v355);
          v131 = v355;

          selfCopy->updateRecordSchema = v130;
          v132 = selfCopy->connection;
          v354 = v131;
          v133 = prepareSQLite3(v132, "SELECT count(*) FROM record WHERE group_id=?1;", &v354);
          v134 = v354;

          selfCopy->selectRecordCountGroup = v133;
          v135 = selfCopy->connection;
          v353 = v134;
          v136 = prepareSQLite3(v135, "SELECT type, schema FROM record WHERE group_id=?1 GROUP BY type, schema;", &v353);
          v137 = v353;

          selfCopy->selectRecordGroupTypeSchema = v136;
          v138 = selfCopy->connection;
          v352 = v137;
          v139 = prepareSQLite3(v138, "SELECT name, record, encoding, data, uuid, parent_uuid, type, schema FROM record WHERE group_id=?1;", &v352);
          v140 = v352;

          selfCopy->selectRecordGroup = v139;
          v141 = selfCopy->connection;
          v351 = v140;
          v142 = prepareSQLite3(v141, "SELECT name, uuid, parent_uuid, type FROM record WHERE group_id=?1;", &v351);
          v143 = v351;

          selfCopy->selectRecordGroupMap = v142;
          v144 = selfCopy->connection;
          v350 = v143;
          v145 = prepareSQLite3(v144, "SELECT record, data, encoding, uuid FROM record WHERE group_id=?2 AND uuid=?1;", &v350);
          v146 = v350;

          selfCopy->selectRecordUUID = v145;
          v147 = selfCopy->connection;
          v349 = v146;
          v148 = prepareSQLite3(v147, "SELECT record, data, encoding, uuid FROM record WHERE group_id=?2 AND parent_uuid=?1;", &v349);
          v149 = v349;

          selfCopy->selectRecordParentUUID = v148;
          v150 = selfCopy->connection;
          v348 = v149;
          v151 = prepareSQLite3(v150, "SELECT record, data, encoding, uuid FROM record WHERE group_id=?3 and parent_uuid=?1 and type=?2;", &v348);
          v152 = v348;

          selfCopy->selectRecordParent = v151;
          v153 = selfCopy->connection;
          v347 = v152;
          v154 = prepareSQLite3(v153, "SELECT record, data, encoding, uuid FROM record WHERE group_id=?2 AND name=?1;", &v347);
          v155 = v347;

          selfCopy->selectRecordName = v154;
          v156 = selfCopy->connection;
          v346 = v155;
          v157 = prepareSQLite3(v156, "SELECT record, data, encoding, uuid FROM record WHERE uuid=?1;", &v346);
          v158 = v346;

          selfCopy->selectRecordUUIDNoShare = v157;
          v159 = selfCopy->connection;
          v345 = v158;
          v160 = prepareSQLite3(v159, "SELECT record, data, encoding, uuid FROM record WHERE parent_uuid=?1 and type=?2;", &v345);
          v161 = v345;

          selfCopy->selectRecordParentNoShare = v160;
          v162 = selfCopy->connection;
          v344 = v161;
          v163 = prepareSQLite3(v162, "SELECT record, data, encoding, uuid FROM record WHERE name=?1;", &v344);
          v164 = v344;

          selfCopy->selectRecordNameNoShare = v163;
          v165 = selfCopy->connection;
          v343 = v164;
          v166 = prepareSQLite3(v165, "DELETE FROM record WHERE group_id=?2 AND name=?1;", &v343);
          v167 = v343;

          selfCopy->deleteRecord = v166;
          v168 = selfCopy->connection;
          v342 = v167;
          v169 = prepareSQLite3(v168, "SELECT name, group_id, share_id, uuid, parent_uuid, encoding, data, record FROM record ORDER BY group_id, share_id, record;", &v342);
          v170 = v342;

          selfCopy->selectRecords = v169;
          v171 = selfCopy->connection;
          v341 = v170;
          v172 = prepareSQLite3(v171, "SELECT name, group_id, share_id, encoding, data, record, schema FROM record WHERE store_id=?1 ORDER BY group_id, share_id, name;", &v341);
          v173 = v341;

          selfCopy->selectStoreRecords = v172;
          v174 = selfCopy->connection;
          v340 = v173;
          v175 = prepareSQLite3(v174, "UPDATE xact SET xact_id=?1 WHERE id=?1;", &v340);
          v176 = v340;

          selfCopy->updateLogXactID = v175;
          v177 = selfCopy->connection;
          v339 = v176;
          v178 = prepareSQLite3(v177, "INSERT INTO xact (pushed, root, data, xact_id, type, encoding, disk_committed) VALUES (?1, ?2, ?3, ?4, ?5, ?6, 0);", &v339);
          v179 = v339;

          selfCopy->insertLog = v178;
          v180 = selfCopy->connection;
          v338 = v179;
          v181 = prepareSQLite3(v180, "UPDATE xact SET disk_committed=1;", &v338);
          v182 = v338;

          selfCopy->updateLogToDiskCommited = v181;
          v183 = selfCopy->connection;
          v337 = v182;
          v184 = prepareSQLite3(v183, "SELECT id, xact_id, pushed, data, type, encoding FROM xact WHERE root=?1 AND (pushed & ?2) = ?3 AND xact_id>?4 ORDER BY xact_id, id;", &v337);
          v185 = v337;

          selfCopy->selectLog = v184;
          v186 = selfCopy->connection;
          v336 = v185;
          v187 = prepareSQLite3(v186, "SELECT id, xact_id, root FROM xact WHERE (pushed & ?1) = ?2 ORDER BY xact_id, id;", &v336);
          v188 = v336;

          selfCopy->selectChangeExistsLog = v187;
          v189 = selfCopy->connection;
          v335 = v188;
          v190 = prepareSQLite3(v189, "SELECT id, xact_id, pushed, root, data, type, encoding FROM xact ORDER BY root, xact_id, id;", &v335);
          v191 = v335;

          selfCopy->selectAllLog = v190;
          v192 = selfCopy->connection;
          v334 = v191;
          v193 = prepareSQLite3(v192, "INSERT INTO xact_block (id, data) VALUES (?1, ?2);", &v334);
          v194 = v334;

          selfCopy->insertLogOptions = v193;
          v195 = selfCopy->connection;
          v333 = v194;
          v196 = prepareSQLite3(v195, "SELECT data FROM xact_block WHERE id = ?1;", &v333);
          v197 = v333;

          selfCopy->selectLogOptions = v196;
          v198 = selfCopy->connection;
          v332 = v197;
          v199 = prepareSQLite3(v198, "UPDATE xact SET pushed=(((pushed & ?1) | ?2) | (pushed & ~?1)) WHERE id=?3;", &v332);
          v200 = v332;

          selfCopy->updateLog = v199;
          v201 = selfCopy->connection;
          v331 = v200;
          v202 = prepareSQLite3(v201, "DELETE FROM xact WHERE id=?1;", &v331);
          v203 = v331;

          selfCopy->deleteLog = v202;
          v204 = selfCopy->connection;
          v330 = v203;
          v205 = prepareSQLite3(v204, "DELETE FROM xact WHERE ((pushed & 0xffff0000 >> 16) = (pushed & 0x0000ffff)) AND disk_committed=1", &v330);
          v206 = v330;

          selfCopy->flushPushedXact = v205;
          v207 = selfCopy->connection;
          v329 = v206;
          v208 = prepareSQLite3(v207, "REPLACE INTO archive VALUES(?1, ?2, ?3)", &v329);
          v209 = v329;

          selfCopy->insertArchive = v208;
          v210 = selfCopy->connection;
          v328 = v209;
          v211 = prepareSQLite3(v210, "SELECT identifier, controller_username, value from archive where identifier=?1;", &v328);
          v212 = v328;

          selfCopy->selectArchive = v211;
          if (v212)
          {
            v213 = objc_autoreleasePoolPush();
            v214 = selfCopy;
            v215 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v215, OS_LOG_TYPE_ERROR))
            {
              v216 = HMFGetLogIdentifier();
              *buf = 138543618;
              v380 = v216;
              v381 = 2112;
              v382 = v212;
              _os_log_impl(&dword_229538000, v215, OS_LOG_TYPE_ERROR, "%{public}@unable to prepare SQL statements: %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v213);
            v217 = v212;
          }

          else
          {
            if ([(HMDBackingStoreLocal *)selfCopy _numUncommittedTransactions]>= 1)
            {
              v247 = objc_autoreleasePoolPush();
              v248 = selfCopy;
              v249 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v249, OS_LOG_TYPE_ERROR))
              {
                v250 = HMFGetLogIdentifier();
                *buf = 138543362;
                v380 = v250;
                _os_log_impl(&dword_229538000, v249, OS_LOG_TYPE_ERROR, "%{public}@We crashed after running transaction but before saving to disk.", buf, 0xCu);
              }

              objc_autoreleasePoolPop(v247);
            }

            _fillZoneCache = [(HMDBackingStoreLocal *)selfCopy _fillZoneCache];
            if (!_fillZoneCache)
            {
              _fillStoreCache = [(HMDBackingStoreLocal *)selfCopy _fillStoreCache];

              v24 = 0;
              goto LABEL_29;
            }

            v217 = _fillZoneCache;
          }

          v24 = v217;

          _fillStoreCache = v24;
LABEL_29:

          goto LABEL_30;
        }

        v42 = v43;
      }

      v24 = v42;
      _fillStoreCache = v42;
      goto LABEL_29;
    }

    v324 = v31;
    v45 = objc_autoreleasePoolPush();
    v46 = v33;
    v47 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
    {
      v48 = HMFGetLogIdentifier();
      *buf = 138543362;
      v380 = v48;
      _os_log_impl(&dword_229538000, v47, OS_LOG_TYPE_DEFAULT, "%{public}@Validating database.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v45);
    v49 = selfCopy->connection;
    v50 = v327;
    v376 = v327;
    v51 = v46;
    v52 = selectSQLite3(v49, "SELECT name FROM sqlite_master WHERE type='table' AND name='xact_block'", MEMORY[0x277CBEC10], &v376);
    v53 = v52;
    v54 = v376;
    if (v52)
    {
      v55 = v376 == 0;
    }

    else
    {
      v55 = 0;
    }

    v56 = !v55;
    v322 = v56;
    v326 = v51;
    v325 = v27;
    if (v55)
    {
      if (![v52 count])
      {
        v376 = runSQLite3(v49, "CREATE TABLE xact_block (id INTEGER PRIMARY KEY, data BLOB NOT NULL)");;
        if (v376)
        {
LABEL_74:
          v237 = 0;
          goto LABEL_75;
        }
      }
    }

    else
    {
      v57 = objc_autoreleasePoolPush();
      v58 = v51;
      v59 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
      {
        v60 = HMFGetLogIdentifier();
        *buf = 138543874;
        v380 = v60;
        v381 = 2112;
        v382 = v53;
        v383 = 2112;
        v384 = v54;
        _os_log_impl(&dword_229538000, v59, OS_LOG_TYPE_ERROR, "%{public}@initial migration test failed with result / error: %@ / %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v57);
      userInfo = [v54 userInfo];
      v62 = [userInfo objectForKey:@"extcode"];
      if ([v62 isEqual:&unk_283E738B0])
      {

        v51 = v326;
      }

      else
      {
        userInfo2 = [v54 userInfo];
        v219 = [userInfo2 objectForKey:@"extcode"];
        v220 = [v219 isEqual:&unk_283E738C8];

        v51 = v326;
        if (!v220)
        {
          [MEMORY[0x277CCA9B8] hmfErrorWithCode:2];
          v376 = v237 = 0;
          goto LABEL_75;
        }
      }

      if (isInternalBuild())
      {
        v221 = [MEMORY[0x277CBEBC0] fileURLWithFileSystemRepresentation:"/var/mobile/Library/homed" isDirectory:1 relativeToURL:0];
        v222 = +[HMDTTRManager sharedManager];
        v378 = v221;
        v223 = [MEMORY[0x277CBEA60] arrayWithObjects:&v378 count:1];
        [v222 requestRadarWithDisplayReason:@"internal database is corrupt" radarTitle:@"Internal Database Corruption Detected" componentName:@"HomeKit" componentVersion:@"New Bugs" componentID:590644 attachments:v223];

        v51 = v326;
      }
    }

    v224 = selectSQLite3(v49, "SELECT name FROM sqlite_master WHERE type='index' AND name='xact_pushed2'", MEMORY[0x277CBEC10], &v376);

    v225 = v376;
    if (v376)
    {
      v226 = objc_autoreleasePoolPush();
      v227 = v51;
      v228 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v228, OS_LOG_TYPE_ERROR))
      {
        v229 = HMFGetLogIdentifier();
        v230 = [v224 count];
        *buf = 138543874;
        v380 = v229;
        v381 = 2048;
        v382 = v230;
        v383 = 2112;
        v384 = v225;
        _os_log_impl(&dword_229538000, v228, OS_LOG_TYPE_ERROR, "%{public}@xact_pushed2 migration test failed with result %lu items %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v226);
      v51 = v326;
    }

    else if (![v224 count])
    {
      v376 = runSQLite3(v49, "CREATE INDEX xact_pushed2 ON xact(root, xact_id, id)");;
      if (v376)
      {
        v237 = 0;
        v53 = v224;
        goto LABEL_75;
      }
    }

    v53 = selectSQLite3(v49, "SELECT subscription_data FROM zone_group WHERE subscription_data IS NOT NULL LIMIT 1", MEMORY[0x277CBEC10], &v376);

    v231 = v376;
    if (!v53 || v376)
    {
      v232 = objc_autoreleasePoolPush();
      v233 = v51;
      v234 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v234, OS_LOG_TYPE_ERROR))
      {
        v235 = HMFGetLogIdentifier();
        v236 = [v53 count];
        *buf = 138543874;
        v380 = v235;
        v381 = 2048;
        v382 = v236;
        v383 = 2112;
        v384 = v231;
        _os_log_impl(&dword_229538000, v234, OS_LOG_TYPE_ERROR, "%{public}@zone_group.subscription_data migration test failed with result %lu items %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v232);
      v51 = v326;
      if (v231)
      {
        v376 = runSQLite3(v49, "ALTER TABLE zone_group ADD COLUMN subscription_data BLOB");;
        if (v376)
        {
          goto LABEL_74;
        }
      }
    }

    v376 = runSQLite3(v49, "CREATE TABLE IF NOT EXISTS archive (identifier string primary key, controller_username string not null, value blob not null)");;
    if (v376)
    {
      goto LABEL_74;
    }

    v252 = selectSQLite3(v49, "SELECT disk_committed FROM xact WHERE id IS NOT NULL LIMIT 1", MEMORY[0x277CBEC10], &v376);

    v253 = v376;
    if (!v252 || v376)
    {
      v254 = objc_autoreleasePoolPush();
      v255 = v51;
      v256 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v256, OS_LOG_TYPE_ERROR))
      {
        v257 = HMFGetLogIdentifier();
        v258 = [v252 count];
        *buf = 138543874;
        v380 = v257;
        v381 = 2048;
        v382 = v258;
        v383 = 2112;
        v384 = v253;
        _os_log_impl(&dword_229538000, v256, OS_LOG_TYPE_ERROR, "%{public}@xact.disk_committed migration test failed with result %lu items %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v254);
      v51 = v326;
      if (v253)
      {
        v376 = runSQLite3(v49, "ALTER TABLE xact ADD COLUMN disk_committed INTEGER NOT NULL DEFAULT 1");;
        if (v376)
        {
          v237 = 0;
          v53 = v252;
          goto LABEL_75;
        }
      }
    }

    v261 = selectSQLite3(v49, "SELECT schema FROM record WHERE data IS NOT NULL LIMIT 1", MEMORY[0x277CBEC10], &v376);

    v262 = v376;
    if (!v261 || v376)
    {
      v263 = objc_autoreleasePoolPush();
      v264 = v51;
      v265 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v265, OS_LOG_TYPE_ERROR))
      {
        v266 = HMFGetLogIdentifier();
        v267 = [v261 count];
        *buf = 138543874;
        v380 = v266;
        v381 = 2048;
        v382 = v267;
        v383 = 2112;
        v384 = v262;
        _os_log_impl(&dword_229538000, v265, OS_LOG_TYPE_ERROR, "%{public}@record.schema migration test failed with result %lu items %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v263);
      v322 = 1;
      v51 = v326;
    }

    v268 = selectSQLite3(v49, "SELECT name FROM sqlite_master WHERE type='table' AND name='zone_group'", MEMORY[0x277CBEC10], &v376);

    v269 = v376;
    if (!v268 || v376)
    {
      v270 = objc_autoreleasePoolPush();
      v271 = v51;
      v272 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v272, OS_LOG_TYPE_ERROR))
      {
        v273 = HMFGetLogIdentifier();
        v274 = [v268 count];
        *buf = 138543874;
        v380 = v273;
        v381 = 2048;
        v382 = v274;
        v383 = 2112;
        v384 = v269;
        _os_log_impl(&dword_229538000, v272, OS_LOG_TYPE_ERROR, "%{public}@zone_group migration test failed with result %lu items %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v270);
      v51 = v326;
    }

    if ([v268 count])
    {
      v275 = v322;
    }

    else
    {
      v275 = 1;
    }

    v276 = selectSQLite3(v49, "SELECT type FROM record WHERE uuid = ''", MEMORY[0x277CBEC10], &v376);

    v277 = v376;
    if (!v276 || v376)
    {
      v278 = objc_autoreleasePoolPush();
      v279 = v51;
      v280 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v280, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v281 = v323 = v278;
        v282 = [v276 count];
        *buf = 138543874;
        v380 = v281;
        v381 = 2048;
        v382 = v282;
        v383 = 2112;
        v384 = v277;
        _os_log_impl(&dword_229538000, v280, OS_LOG_TYPE_ERROR, "%{public}@record table migration test failed with result %lu items %@", buf, 0x20u);

        v278 = v323;
      }

      objc_autoreleasePoolPop(v278);
      if (!v276)
      {
        v291 = objc_autoreleasePoolPush();
        v298 = v279;
        v293 = HMFGetOSLogHandle();
        v51 = v326;
        if (os_log_type_enabled(v293, OS_LOG_TYPE_ERROR))
        {
          v299 = HMFGetLogIdentifier();
          *buf = 138543362;
          v380 = v299;
          _os_log_impl(&dword_229538000, v293, OS_LOG_TYPE_ERROR, "%{public}@record table migration test failed with nil result", buf, 0xCu);
        }

        v53 = 0;
        goto LABEL_142;
      }

      v51 = v326;
      if (v275)
      {
        goto LABEL_115;
      }
    }

    else if (v275)
    {
LABEL_115:
      v53 = v276;
      goto LABEL_143;
    }

    v53 = selectSQLite3(v49, "SELECT name FROM zone WHERE id = 0", MEMORY[0x277CBEC10], &v376);

    v283 = v376;
    if (!v53 || v376)
    {
      v284 = objc_autoreleasePoolPush();
      v285 = v51;
      v286 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v286, OS_LOG_TYPE_ERROR))
      {
        v287 = HMFGetLogIdentifier();
        v288 = [v53 count];
        *buf = 138543874;
        v380 = v287;
        v381 = 2048;
        v382 = v288;
        v383 = 2112;
        v384 = v283;
        _os_log_impl(&dword_229538000, v286, OS_LOG_TYPE_ERROR, "%{public}@zone migration test failed with result %lu items %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v284);
      v51 = v326;
    }

    if (![v53 count])
    {
      goto LABEL_143;
    }

    v289 = selectSQLite3(v49, "SELECT type FROM xact WHERE id = 0", MEMORY[0x277CBEC10], &v376);
    v290 = v376;
    if (v376)
    {
      v291 = objc_autoreleasePoolPush();
      v292 = v51;
      v293 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v293, OS_LOG_TYPE_ERROR))
      {
        v294 = HMFGetLogIdentifier();
        *buf = 138543618;
        v380 = v294;
        v381 = 2112;
        v382 = v290;
        v295 = "%{public}@xact migration test failed with result %@";
        v296 = v293;
        v297 = 22;
LABEL_141:
        _os_log_impl(&dword_229538000, v296, OS_LOG_TYPE_ERROR, v295, buf, v297);

        goto LABEL_142;
      }

      goto LABEL_142;
    }

    v300 = selectSQLite3(v49, "SELECT id FROM xact WHERE pushed < 0x0100000000000000", MEMORY[0x277CBEC10], &v376);

    v301 = v376;
    if (v376 || [v300 count])
    {
      v53 = v300;
      v291 = objc_autoreleasePoolPush();
      v302 = v51;
      v293 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v293, OS_LOG_TYPE_ERROR))
      {
        v294 = HMFGetLogIdentifier();
        v303 = [v53 count];
        *buf = 138543874;
        v380 = v294;
        v381 = 2048;
        v382 = v303;
        v383 = 2112;
        v384 = v301;
        v295 = "%{public}@xact version migration test failed with result %lu items %@";
        v296 = v293;
        v297 = 32;
        goto LABEL_141;
      }

LABEL_142:

      objc_autoreleasePoolPop(v291);
LABEL_143:
      if (migrate)
      {
        sqlite3_close(v49);
        datastoreFile7 = [(HMDBackingStoreLocal *)v51 datastoreFile];
        v305 = [(HMDBackingStoreLocal *)v51 _createNewDatastore:datastoreFile7];
        v376 = v305;

        if (v305)
        {
          if (v49)
          {
            sqlite3_close(v49);
          }

          v237 = 0;
        }

        else
        {
          v237 = 1;
        }
      }

      else
      {
        v306 = objc_autoreleasePoolPush();
        v307 = v51;
        v308 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v308, OS_LOG_TYPE_ERROR))
        {
          v309 = HMFGetLogIdentifier();
          *buf = 138543362;
          v380 = v309;
          _os_log_impl(&dword_229538000, v308, OS_LOG_TYPE_ERROR, "%{public}@want to rebuild the databse, but not allowed to.", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v306);
        [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
        v376 = v237 = 0;
        v51 = v326;
      }

LABEL_75:

      v238 = v376;
      if (v237)
      {
        v239 = [MEMORY[0x277CCACA8] stringWithFormat:@"PRAGMA user_version = %ld", 2];;
        v240 = runSQLite3(selfCopy->connection, [v239 UTF8String]);

        v241 = objc_autoreleasePoolPush();
        v242 = v51;
        v243 = HMFGetOSLogHandle();
        v244 = v243;
        if (!v240)
        {
          v259 = v243;
          v27 = v325;
          if (os_log_type_enabled(v259, OS_LOG_TYPE_DEFAULT))
          {
            v260 = HMFGetLogIdentifier();
            *buf = 138543618;
            v380 = v260;
            v381 = 2048;
            v382 = 2;
            _os_log_impl(&dword_229538000, v259, OS_LOG_TYPE_DEFAULT, "%{public}@Current schema version: %ld", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v241);
          v327 = 0;
          v31 = v324;
          goto LABEL_21;
        }

        v245 = v325;
        if (os_log_type_enabled(v243, OS_LOG_TYPE_ERROR))
        {
          v246 = HMFGetLogIdentifier();
          *buf = 138543874;
          v380 = v246;
          v381 = 2048;
          v382 = 2;
          v383 = 2112;
          v384 = v240;
          _os_log_impl(&dword_229538000, v244, OS_LOG_TYPE_ERROR, "%{public}@Unable to update schema version to %ld: %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v241);
        v24 = v240;
      }

      else
      {
        v24 = v238;
        v245 = v325;
      }

      _fillStoreCache = v24;
      goto LABEL_30;
    }

    if (isInternalBuild())
    {
      v53 = selectSQLite3(v49, "select uuid, share_id, count(*) from record group by uuid, group_id having count(*)>1", MEMORY[0x277CBEC10], &v376);;

      if ([v53 count])
      {
        v310 = objc_autoreleasePoolPush();
        v311 = v326;
        v312 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v312, OS_LOG_TYPE_ERROR))
        {
          v313 = HMFGetLogIdentifier();
          *buf = 138543362;
          v380 = v313;
          _os_log_impl(&dword_229538000, v312, OS_LOG_TYPE_ERROR, "%{public}@We have duplicate records with different share_ids deleting duplicates.", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v310);
        v376 = runSQLite3(v49, "delete from record where uuid in (select uuid from record group by uuid, group_id having count(*)>1) and share_id!=0");;
        if (v376)
        {
          v291 = objc_autoreleasePoolPush();
          v314 = v311;
          v293 = HMFGetOSLogHandle();
          if (!os_log_type_enabled(v293, OS_LOG_TYPE_ERROR))
          {
LABEL_167:
            v51 = v326;
            v50 = v327;
            goto LABEL_142;
          }

          v315 = HMFGetLogIdentifier();
          *buf = 138543362;
          v380 = v315;
          v316 = "%{public}@Unable to delete duplicate entries";
LABEL_166:
          _os_log_impl(&dword_229538000, v293, OS_LOG_TYPE_ERROR, v316, buf, 0xCu);

          goto LABEL_167;
        }
      }

      v300 = v53;
    }

    v53 = selectSQLite3(v49, "select uuid from record where share_id!=0", MEMORY[0x277CBEC10], &v376);;

    if (![v53 count])
    {
      goto LABEL_168;
    }

    v317 = objc_autoreleasePoolPush();
    v318 = v326;
    v319 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v319, OS_LOG_TYPE_DEFAULT))
    {
      v320 = HMFGetLogIdentifier();
      *buf = 138543362;
      v380 = v320;
      _os_log_impl(&dword_229538000, v319, OS_LOG_TYPE_DEFAULT, "%{public}@Have records with share_id will migrate them.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v317);
    v376 = runSQLite3(v49, "update record set share_id = 0 where share_id != 0");;
    if (!v376)
    {
LABEL_168:
      v237 = 1;
      v51 = v326;
      v50 = v327;
      goto LABEL_75;
    }

    v291 = objc_autoreleasePoolPush();
    v321 = v318;
    v293 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v293, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_167;
    }

    v315 = HMFGetLogIdentifier();
    *buf = 138543362;
    v380 = v315;
    v316 = "%{public}@Unable to migrate share_ids";
    goto LABEL_166;
  }

  v18 = [(HMDBackingStoreLocal *)selfCopy _createNewDatastore:datastoreFile5];

  if (!v18)
  {
LABEL_14:
    v25 = 0;
    goto LABEL_22;
  }

  v19 = v18;
LABEL_13:
  v24 = v19;
  _fillStoreCache = v19;
LABEL_30:

LABEL_31:

  return _fillStoreCache;
}

- (id)_updateRecordWithGroupID:(int64_t)d name:(id)name schema:(id)schema
{
  v34 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  schemaCopy = schema;
  updateRecordSchema = self->updateRecordSchema;
  v25 = 0;
  bindIntSQLite3(updateRecordSchema, 1, d, &v25);
  v11 = v25;
  v12 = self->updateRecordSchema;
  v24 = v11;
  bindStringSQLite3(v12, 2, nameCopy, &v24);
  v13 = v24;

  v14 = self->updateRecordSchema;
  v23 = v13;
  bindStringSQLite3(v14, 3, schemaCopy, &v23);
  v15 = v23;

  v16 = objc_autoreleasePoolPush();
  selfCopy = self;
  v18 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    v19 = HMFGetLogIdentifier();
    *buf = 138544130;
    v27 = v19;
    v28 = 2048;
    dCopy = d;
    v30 = 2112;
    v31 = nameCopy;
    v32 = 2112;
    v33 = schemaCopy;
    _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_DEBUG, "%{public}@Updating record schema: %lu, name: %@, schema: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v16);
  if (v15)
  {
    v20 = v15;
  }

  else
  {
    v20 = execSQLite3(self->updateRecordSchema);
  }

  v21 = v20;

  return v21;
}

- (id)flush:(BOOL)flush
{
  flushCopy = flush;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__179885;
  v17 = __Block_byref_object_dispose__179886;
  v18 = 0;
  v5 = [HMDBackingStoreLocalFlushOperation alloc];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __30__HMDBackingStoreLocal_flush___block_invoke;
  v12[3] = &unk_27867D308;
  v12[4] = &v13;
  v6 = [(HMDBackingStoreLocalFlushOperation *)v5 initWithStore:self clearCloud:flushCopy resultHandler:v12];
  v7 = +[HMDBackingStoreSingleton sharedInstance];
  queue = [v7 queue];
  [queue addOperation:v6];

  [(HMDBackingStoreLocalFlushOperation *)v6 waitUntilFinished];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"HMDBackingStoreLocalDataReset" object:self];

  v10 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v10;
}

- (void)dealloc
{
  if (self->rollback)
  {
    [(HMDBackingStoreLocal *)self _rollback];
  }

  insertZone = self->insertZone;
  if (insertZone)
  {
    sqlite3_finalize(insertZone);
  }

  deleteZone = self->deleteZone;
  if (deleteZone)
  {
    sqlite3_finalize(deleteZone);
  }

  selectZones = self->selectZones;
  if (selectZones)
  {
    sqlite3_finalize(selectZones);
  }

  insertStore = self->insertStore;
  if (insertStore)
  {
    sqlite3_finalize(insertStore);
  }

  selectStores = self->selectStores;
  if (selectStores)
  {
    sqlite3_finalize(selectStores);
  }

  insertGroup = self->insertGroup;
  if (insertGroup)
  {
    sqlite3_finalize(insertGroup);
  }

  deleteGroup = self->deleteGroup;
  if (deleteGroup)
  {
    sqlite3_finalize(deleteGroup);
  }

  updateShareShare = self->updateShareShare;
  if (updateShareShare)
  {
    sqlite3_finalize(updateShareShare);
  }

  updateShareUsers = self->updateShareUsers;
  if (updateShareUsers)
  {
    sqlite3_finalize(updateShareUsers);
  }

  updateGroupToken = self->updateGroupToken;
  if (updateGroupToken)
  {
    sqlite3_finalize(updateGroupToken);
  }

  updateGroupSubscription = self->updateGroupSubscription;
  if (updateGroupSubscription)
  {
    sqlite3_finalize(updateGroupSubscription);
  }

  insertShare = self->insertShare;
  if (insertShare)
  {
    sqlite3_finalize(insertShare);
  }

  deleteShare = self->deleteShare;
  if (deleteShare)
  {
    sqlite3_finalize(deleteShare);
  }

  selectGroups = self->selectGroups;
  if (selectGroups)
  {
    sqlite3_finalize(selectGroups);
  }

  selectShares = self->selectShares;
  if (selectShares)
  {
    sqlite3_finalize(selectShares);
  }

  insertRecord = self->insertRecord;
  if (insertRecord)
  {
    sqlite3_finalize(insertRecord);
  }

  updateRecordSchema = self->updateRecordSchema;
  if (updateRecordSchema)
  {
    sqlite3_finalize(updateRecordSchema);
  }

  selectRecordCountGroup = self->selectRecordCountGroup;
  if (selectRecordCountGroup)
  {
    sqlite3_finalize(selectRecordCountGroup);
  }

  selectRecordGroupTypeSchema = self->selectRecordGroupTypeSchema;
  if (selectRecordGroupTypeSchema)
  {
    sqlite3_finalize(selectRecordGroupTypeSchema);
  }

  selectRecordGroup = self->selectRecordGroup;
  if (selectRecordGroup)
  {
    sqlite3_finalize(selectRecordGroup);
  }

  selectRecordGroupMap = self->selectRecordGroupMap;
  if (selectRecordGroupMap)
  {
    sqlite3_finalize(selectRecordGroupMap);
  }

  selectRecordUUID = self->selectRecordUUID;
  if (selectRecordUUID)
  {
    sqlite3_finalize(selectRecordUUID);
  }

  selectRecordParentUUID = self->selectRecordParentUUID;
  if (selectRecordParentUUID)
  {
    sqlite3_finalize(selectRecordParentUUID);
  }

  selectRecordParent = self->selectRecordParent;
  if (selectRecordParent)
  {
    sqlite3_finalize(selectRecordParent);
  }

  selectRecordName = self->selectRecordName;
  if (selectRecordName)
  {
    sqlite3_finalize(selectRecordName);
  }

  selectRecordUUIDNoShare = self->selectRecordUUIDNoShare;
  if (selectRecordUUIDNoShare)
  {
    sqlite3_finalize(selectRecordUUIDNoShare);
  }

  selectRecordNameNoShare = self->selectRecordNameNoShare;
  if (selectRecordNameNoShare)
  {
    sqlite3_finalize(selectRecordNameNoShare);
  }

  selectRecordParentNoShare = self->selectRecordParentNoShare;
  if (selectRecordParentNoShare)
  {
    sqlite3_finalize(selectRecordParentNoShare);
  }

  selectRecords = self->selectRecords;
  if (selectRecords)
  {
    sqlite3_finalize(selectRecords);
  }

  selectStoreRecords = self->selectStoreRecords;
  if (selectStoreRecords)
  {
    sqlite3_finalize(selectStoreRecords);
  }

  deleteRecord = self->deleteRecord;
  if (deleteRecord)
  {
    sqlite3_finalize(deleteRecord);
  }

  insertLog = self->insertLog;
  if (insertLog)
  {
    sqlite3_finalize(insertLog);
  }

  updateLogToDiskCommited = self->updateLogToDiskCommited;
  if (updateLogToDiskCommited)
  {
    sqlite3_finalize(updateLogToDiskCommited);
  }

  flushPushedXact = self->flushPushedXact;
  if (flushPushedXact)
  {
    sqlite3_finalize(flushPushedXact);
  }

  updateLogXactID = self->updateLogXactID;
  if (updateLogXactID)
  {
    sqlite3_finalize(updateLogXactID);
  }

  selectLog = self->selectLog;
  if (selectLog)
  {
    sqlite3_finalize(selectLog);
  }

  selectChangeExistsLog = self->selectChangeExistsLog;
  if (selectChangeExistsLog)
  {
    sqlite3_finalize(selectChangeExistsLog);
  }

  selectAllLog = self->selectAllLog;
  if (selectAllLog)
  {
    sqlite3_finalize(selectAllLog);
  }

  insertLogOptions = self->insertLogOptions;
  if (insertLogOptions)
  {
    sqlite3_finalize(insertLogOptions);
  }

  selectLogOptions = self->selectLogOptions;
  if (selectLogOptions)
  {
    sqlite3_finalize(selectLogOptions);
  }

  updateLog = self->updateLog;
  if (updateLog)
  {
    sqlite3_finalize(updateLog);
  }

  deleteLog = self->deleteLog;
  if (deleteLog)
  {
    sqlite3_finalize(deleteLog);
  }

  insertArchive = self->insertArchive;
  if (insertArchive)
  {
    sqlite3_finalize(insertArchive);
  }

  selectArchive = self->selectArchive;
  if (selectArchive)
  {
    sqlite3_finalize(selectArchive);
  }

  commit = self->commit;
  if (commit)
  {
    sqlite3_finalize(commit);
  }

  rollback = self->rollback;
  if (rollback)
  {
    sqlite3_finalize(rollback);
  }

  begin = self->begin;
  if (begin)
  {
    sqlite3_finalize(begin);
  }

  connection = self->connection;
  if (connection)
  {
    sqlite3_close(connection);
  }

  v51.receiver = self;
  v51.super_class = HMDBackingStoreLocal;
  [(HMDBackingStoreLocal *)&v51 dealloc];
}

- (HMDBackingStoreLocal)initWithDatastore:(id)datastore
{
  v18 = *MEMORY[0x277D85DE8];
  datastoreCopy = datastore;
  v13 = 0;
  v5 = [(HMDBackingStoreLocal *)self initWithDB:datastoreCopy migrate:1 error:&v13];
  v6 = v13;
  if (v6)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = v5;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543618;
      v15 = v10;
      v16 = 2112;
      v17 = v6;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@unable to instance our resources: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v11 = 0;
  }

  else
  {
    v11 = v5;
  }

  return v11;
}

- (HMDBackingStoreLocal)initWithDB:(id)b migrate:(BOOL)migrate error:(id *)error
{
  migrateCopy = migrate;
  v25 = *MEMORY[0x277D85DE8];
  bCopy = b;
  v20.receiver = self;
  v20.super_class = HMDBackingStoreLocal;
  v10 = [(HMDBackingStoreLocal *)&v20 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_datastoreFile, b);
    [HMDBackingStoreLocal cleanDatastoreFilesAt:bCopy everything:0];
    v12 = [(HMDBackingStoreLocal *)v11 _instantiateResources:0 migrate:migrateCopy];
    if (v12)
    {
      v13 = objc_autoreleasePoolPush();
      v14 = v11;
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = HMFGetLogIdentifier();
        *buf = 138543618;
        v22 = v16;
        v23 = 2112;
        v24 = v12;
        _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@unable to instantiate our resources: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v13);
      if (error)
      {
        v17 = v12;
        v18 = 0;
        *error = v12;
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      v18 = v11;
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (id)_createDatastoreTables:(id)tables
{
  v28 = *MEMORY[0x277D85DE8];
  tablesCopy = tables;
  if (v5 || (runSQLite3(self->connection, "CREATE TABLE store (id INTEGER PRIMARY KEY AUTOINCREMENT, name STRING NOT NULL)"), (v5 = v5 = runSQLite3(self->connection, "CREATE TABLE zone (id INTEGER PRIMARY KEY AUTOINCREMENT, name STRING NOT NULL)");;
  {
    v6 = v5;
    goto LABEL_12;
  }

  if (v13 || (runSQLite3(self->connection, "CREATE UNIQUE INDEX record_group_id_share_id_name_ukey ON record (group_id, share_id, name)"), (v13 = v13 = runSQLite3(self->connection, "CREATE UNIQUE INDEX share_root_group_id_ukey ON zone_share (root, group_id)");;
  {
    v6 = v13;
LABEL_12:
    v7 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543618;
      v23 = v10;
      v24 = 2112;
      v25 = v6;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@unable to initialize SQL context: %@", buf, 0x16u);
    }

LABEL_14:

    objc_autoreleasePoolPop(v7);
    sqlite3_close(self->connection);
    unlink([tablesCopy UTF8String]);
    v11 = v6;
    goto LABEL_15;
  }

  if (v14 || (runSQLite3(self->connection, "INSERT INTO zone_group (id, zone_id, root, owner) VALUES (0, 0, '<NULL>', '<NULL>')"), (v14 = v14 = runSQLite3(self->connection, "INSERT INTO zone (id, name) VALUES (0, '<NULL>')");;
  {
    v6 = v14;
    v7 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543618;
      v23 = v15;
      v24 = 2112;
      v25 = v6;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@initial database row setup failed: %@", buf, 0x16u);
    }

    goto LABEL_14;
  }

  v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"PRAGMA user_version = %ld", 2];;
  v11 = runSQLite3(self->connection, [v16 UTF8String]);
  if (v11)
  {
    v17 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543874;
      v23 = v20;
      v24 = 2048;
      v25 = 2;
      v26 = 2112;
      v27 = v11;
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@unable to set schema version to %ld failed: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v17);
    sqlite3_close(self->connection);
    unlink([tablesCopy UTF8String]);
    v21 = v11;
  }

LABEL_15:

  return v11;
}

- (id)_createNewDatastore:(id)datastore
{
  v46 = *MEMORY[0x277D85DE8];
  datastoreCopy = datastore;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v44[0] = datastoreCopy;
  v5 = [datastoreCopy stringByAppendingString:@"-shm"];
  v44[1] = v5;
  v6 = [datastoreCopy stringByAppendingString:@"-wal"];
  v44[2] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:3];

  v8 = [v7 countByEnumeratingWithState:&v34 objects:v45 count:16];
  if (v8)
  {
    v9 = v8;
    v33 = datastoreCopy;
    v10 = 0;
    v11 = *v35;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v35 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v34 + 1) + 8 * i);
        if (unlink([v13 UTF8String]) && *__error() != 2)
        {
          v14 = objc_autoreleasePoolPush();
          selfCopy = self;
          v16 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            v17 = HMFGetLogIdentifier();
            v18 = __error();
            v19 = strerror(*v18);
            *buf = 138543874;
            v39 = v17;
            v40 = 2112;
            v41 = v13;
            v42 = 2080;
            v43 = v19;
            _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@unable to remove old datastore file %@ (%s)", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v14);
          v10 = 1;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v34 objects:v45 count:16];
    }

    while (v9);

    datastoreCopy = v33;
    if (v10)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  if (sqlite3_open_v2([datastoreCopy UTF8String], &self->connection, 6, 0))
  {
    v20 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543618;
      v39 = v23;
      v40 = 2112;
      v41 = 0;
      _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@unable to open new SQL context: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v20);
LABEL_20:
    v24 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
    goto LABEL_27;
  }

  v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"PRAGMA cache_size = %@", &unk_283E73880];;
  v26 = runSQLite3(self->connection, [v25 UTF8String]);
  if (v26)
  {
    v27 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = HMFGetLogIdentifier();
      *buf = 138543874;
      v39 = v30;
      v40 = 2048;
      v41 = 512;
      v42 = 2112;
      v43 = v26;
      _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_ERROR, "%{public}@Unable to set sqlite cache size to %ld: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v27);
    v31 = v26;
  }

  else
  {
    v31 = [(HMDBackingStoreLocal *)self _createDatastoreTables:datastoreCopy];
  }

  v24 = v31;

LABEL_27:

  return v24;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t59 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t59, &__block_literal_global_202);
  }

  v3 = logCategory__hmf_once_v60;

  return v3;
}

void __35__HMDBackingStoreLocal_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v60;
  logCategory__hmf_once_v60 = v0;
}

+ (void)cleanDatastoreFilesAt:(id)at everything:(BOOL)everything
{
  everythingCopy = everything;
  v58 = *MEMORY[0x277D85DE8];
  atCopy = at;
  if ([atCopy isEqualToString:@":memory:"])
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543362;
      v53 = v10;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Skipping because in memory store was specified.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
  }

  else
  {
    v11 = MEMORY[0x277CCACA8];
    lastPathComponent = [atCopy lastPathComponent];
    v13 = [v11 stringWithFormat:@"^%@(?:|-shm|-wal)(\\..*)?$", lastPathComponent];

    v50 = 0;
    v14 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:v13 options:0 error:&v50];
    v15 = v50;
    if (v15)
    {
      v16 = v15;
      v17 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = HMFGetLogIdentifier();
        *buf = 138543618;
        v53 = v20;
        v54 = 2112;
        v55 = v16;
        _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@unable to compile expression: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v17);
    }

    else
    {
      defaultManager = [MEMORY[0x277CCAA00] defaultManager];
      stringByDeletingLastPathComponent = [atCopy stringByDeletingLastPathComponent];
      v49 = 0;
      v23 = [defaultManager contentsOfDirectoryAtPath:stringByDeletingLastPathComponent error:&v49];
      v24 = v49;
      v25 = [v23 mutableCopy];

      v44 = v24;
      if (v24)
      {
        v26 = objc_autoreleasePoolPush();
        selfCopy3 = self;
        v28 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          v29 = HMFGetLogIdentifier();
          *buf = 138543874;
          v53 = v29;
          v54 = 2112;
          v55 = stringByDeletingLastPathComponent;
          v56 = 2112;
          v57 = v44;
          _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_ERROR, "%{public}@unable to get files in %@ (%@)", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v26);
      }

      else
      {
        v42 = v13;
        v43 = atCopy;
        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        v41 = v25;
        v30 = v25;
        v31 = [v30 countByEnumeratingWithState:&v45 objects:v51 count:16];
        if (v31)
        {
          v32 = v31;
          v33 = *v46;
          do
          {
            for (i = 0; i != v32; ++i)
            {
              if (*v46 != v33)
              {
                objc_enumerationMutation(v30);
              }

              v35 = *(*(&v45 + 1) + 8 * i);
              v36 = [v14 firstMatchInString:v35 options:0 range:{0, objc_msgSend(v35, "length")}];
              v37 = v36;
              if (v36)
              {
                [v36 rangeAtIndex:1];
                if (v38 || everythingCopy)
                {
                  v40 = [stringByDeletingLastPathComponent stringByAppendingPathComponent:v35];
                  [defaultManager removeItemAtPath:v40 error:0];
                }
              }
            }

            v32 = [v30 countByEnumeratingWithState:&v45 objects:v51 count:16];
          }

          while (v32);
        }

        v13 = v42;
        atCopy = v43;
        v25 = v41;
      }

      v16 = v44;
    }
  }
}

@end