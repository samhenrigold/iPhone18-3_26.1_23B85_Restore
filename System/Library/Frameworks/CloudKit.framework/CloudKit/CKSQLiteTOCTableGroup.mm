@interface CKSQLiteTOCTableGroup
+ (id)TOCTableGroupInDatabase:(id)database;
+ (id)TOCTableGroupInDatabase:(id)database options:(unint64_t)options;
+ (id)createNewTOCInDatabase:(id)database;
+ (id)createTOCInDatabase:(id)database options:(unint64_t)options error:(id *)error;
+ (id)genericTOCTableGroupInDatabase:(id)database error:(id *)error;
+ (id)migrationTOCInDatabase:(id)database error:(id *)error;
- (BOOL)needsMigration:(id *)migration;
- (CKSQLiteTOCTableGroup)initWithName:(id)name options:(unint64_t)options database:(id)database;
- (id)_tableClasses;
- (id)_tablesByNameInitializer;
- (id)addTOCEntriesForTOCTableGroup:(id)group;
- (id)isUseable;
- (id)migrateDataFromGroup:(id)group;
- (id)prepareNewlyOpenedDatabase;
- (id)resetValidation;
- (id)setLastUsedEpoch:(int64_t)epoch;
- (id)tocImageInfoTable;
- (id)tocTable;
- (id)tocTableGroupTable;
- (void)databaseValidationSuccess;
- (void)removeDeletedGroups;
@end

@implementation CKSQLiteTOCTableGroup

- (id)tocTableGroupTable
{
  v4 = objc_msgSend_logicalTableName(CKSQLiteTOCTableGroupTable, a2, v2);
  v6 = objc_msgSend_tableWithName_(self, v5, v4);

  return v6;
}

- (id)tocTable
{
  v4 = objc_msgSend_logicalTableName(CKSQLiteTOCTable, a2, v2);
  v6 = objc_msgSend_tableWithName_(self, v5, v4);

  return v6;
}

- (id)addTOCEntriesForTOCTableGroup:(id)group
{
  v34 = *MEMORY[0x1E69E9840];
  groupCopy = group;
  v7 = objc_msgSend_tocTableGroupTable(self, v5, v6);
  v10 = objc_msgSend_date(MEMORY[0x1E695DF00], v8, v9);
  objc_msgSend_setLastUsed_(groupCopy, v11, v10);
  objc_msgSend_setCreationDate_(groupCopy, v12, v10);
  v16 = objc_msgSend_insertObject_(v7, v13, groupCopy);
  if (!v16)
  {
    v17 = objc_msgSend_tocTable(self, v14, v15);
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v20 = objc_msgSend_allTables(groupCopy, v18, v19, 0);
    v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v21, &v29, v33, 16);
    if (v22)
    {
      v24 = v22;
      v25 = *v30;
      while (2)
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v30 != v25)
          {
            objc_enumerationMutation(v20);
          }

          v27 = objc_msgSend_addEntryForTable_(v17, v23, *(*(&v29 + 1) + 8 * i));
          if (v27)
          {
            v16 = v27;
            goto LABEL_12;
          }
        }

        v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v23, &v29, v33, 16);
        if (v24)
        {
          continue;
        }

        break;
      }
    }

    v16 = 0;
LABEL_12:
  }

  return v16;
}

+ (id)createTOCInDatabase:(id)database options:(unint64_t)options error:(id *)error
{
  v61 = *MEMORY[0x1E69E9840];
  databaseCopy = database;
  v10 = objc_msgSend_TOCTableGroupInDatabase_options_(self, v9, databaseCopy, options);
  v13 = objc_msgSend_tocTableGroupTable(v10, v11, v12);
  isMigrationTOC = objc_msgSend_isMigrationTOC(v10, v14, v15);
  v19 = objc_msgSend_tocTable(v10, v17, v18);
  v22 = objc_msgSend_createTableSQL(v19, v20, v21);
  v55 = databaseCopy;
  v24 = objc_msgSend_executeSQL_(databaseCopy, v23, v22);
  v27 = v24;
  if (isMigrationTOC)
  {
    if (v24)
    {
LABEL_3:
      if (isMigrationTOC)
      {
        goto LABEL_4;
      }

      goto LABEL_29;
    }
  }

  else
  {
    if (v24)
    {
      goto LABEL_29;
    }

    v27 = objc_msgSend_addEntryForTable_(v19, v25, v19);
    if (v27)
    {
      goto LABEL_29;
    }

    v27 = objc_msgSend_setSchema_forTable_(v19, v25, v22, v19);
    if (v27)
    {
      goto LABEL_3;
    }
  }

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  obj = objc_msgSend_allTables(v10, v25, v26);
  v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v28, &v56, v60, 16);
  if (v29)
  {
    v30 = v29;
    v51 = v22;
    errorCopy = error;
    v53 = v13;
    v31 = *v57;
    while (2)
    {
      for (i = 0; i != v30; ++i)
      {
        if (*v57 != v31)
        {
          objc_enumerationMutation(obj);
        }

        v33 = *(*(&v56 + 1) + 8 * i);
        v36 = objc_autoreleasePoolPush();
        if (v33 != v19)
        {
          v37 = objc_msgSend_createTableSQL(v33, v34, v35);
          v39 = objc_msgSend_executeSQL_(v55, v38, v37);
          v27 = v39;
          if ((isMigrationTOC & 1) == 0)
          {
            if (v39)
            {
              goto LABEL_25;
            }

            v41 = objc_msgSend_addEntryForTable_(v19, v40, v33);
            if (v41)
            {
              v27 = v41;
LABEL_25:

LABEL_26:
              objc_autoreleasePoolPop(v36);
              goto LABEL_27;
            }

            v27 = objc_msgSend_setSchema_forTable_(v19, v42, v37, v33);
          }

          if (v27)
          {
            goto LABEL_26;
          }
        }

        objc_autoreleasePoolPop(v36);
      }

      v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v43, &v56, v60, 16);
      if (v30)
      {
        continue;
      }

      break;
    }

    v27 = 0;
LABEL_27:
    error = errorCopy;
    v13 = v53;
    v22 = v51;
  }

  else
  {
    v27 = 0;
  }

  if (isMigrationTOC)
  {
LABEL_4:
    if (!v27)
    {
      goto LABEL_35;
    }

    goto LABEL_32;
  }

LABEL_29:
  v44 = objc_msgSend_date(MEMORY[0x1E695DF00], v25, v26);
  objc_msgSend_setLastUsed_(v10, v45, v44);
  objc_msgSend_setCreationDate_(v10, v46, v44);
  if (!v27)
  {
    v27 = objc_msgSend_insertObject_(v13, v47, v10);
  }

  if (v27)
  {
LABEL_32:
    if (error)
    {
      v48 = v27;
      *error = v27;
    }

    v10 = 0;
  }

LABEL_35:
  v49 = v10;

  return v10;
}

+ (id)createNewTOCInDatabase:(id)database
{
  databaseCopy = database;
  v7 = objc_msgSend_isInMemoryDatabase(databaseCopy, v5, v6);
  v21 = 0;
  v9 = objc_msgSend_createTOCInDatabase_options_error_(self, v8, databaseCopy, v7, &v21);
  v10 = v21;
  v13 = objc_msgSend_databaseWasCreated(databaseCopy, v11, v12);

  if (v13)
  {
    v16 = objc_msgSend_tocImageInfoTable(v9, v14, v15);
    v19 = objc_msgSend_addEntriesForCurrentProcess(v16, v17, v18);
  }

  return v10;
}

+ (id)migrationTOCInDatabase:(id)database error:(id *)error
{
  databaseCopy = database;
  v15 = 0;
  v7 = objc_msgSend_createTOCInDatabase_options_error_(CKSQLiteMigrationTOCTableGroup, v6, databaseCopy, 0, &v15);
  v9 = v15;
  if (!v9)
  {
    v10 = objc_msgSend_TOCTableGroupInDatabase_(CKSQLiteTOCTableGroup, v8, databaseCopy);
    objc_msgSend_setGroupID_(v10, v11, 0);
    v9 = objc_msgSend_addTOCEntriesForTOCTableGroup_(v7, v12, v10);
  }

  if (error && v9)
  {
    v13 = v9;
    *error = v9;
  }

  return v7;
}

+ (id)TOCTableGroupInDatabase:(id)database options:(unint64_t)options
{
  databaseCopy = database;
  v7 = [self alloc];
  v10 = objc_msgSend_groupName(self, v8, v9);
  v12 = objc_msgSend_initWithName_options_database_(v7, v11, v10, options | 0xC0000, databaseCopy);

  objc_msgSend_setGroupID_(v12, v13, &unk_1EFA85620);
  v14 = NSStringFromClass(self);
  objc_msgSend_setCreatingClass_(v12, v15, v14);

  return v12;
}

+ (id)TOCTableGroupInDatabase:(id)database
{
  databaseCopy = database;
  v7 = objc_msgSend_isInMemoryDatabase(databaseCopy, v5, v6);
  v9 = objc_msgSend_TOCTableGroupInDatabase_options_(self, v8, databaseCopy, v7);

  return v9;
}

+ (id)genericTOCTableGroupInDatabase:(id)database error:(id *)error
{
  databaseCopy = database;
  v9 = objc_msgSend_groupName(self, v7, v8);
  v11 = objc_msgSend_tableGroupInDatabase_withName_error_(CKSQLiteGenericTableGroup, v10, databaseCopy, v9, error);

  return v11;
}

- (id)tocImageInfoTable
{
  v4 = objc_msgSend_logicalTableName(CKSQLiteTOCImageInfoTable, a2, v2);
  v6 = objc_msgSend_tableWithName_(self, v5, v4);

  return v6;
}

- (id)_tableClasses
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = objc_msgSend_options(self, a2, v2);
  v4 = objc_opt_class();
  if (v3)
  {
    v9 = v4;
    v10 = objc_opt_class();
    objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v6, &v9, 2, v9, v10, v11, v12, v13);
  }

  else
  {
    v11 = v4;
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v5, &v11, 3, v9, v10, v11, v12, v13);
  }
  v7 = ;

  return v7;
}

- (id)_tablesByNameInitializer
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v6 = objc_msgSend__tableClasses(self, v4, v5, 0);
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v28, v32, 16);
  if (v8)
  {
    v11 = v8;
    v12 = *v29;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v29 != v12)
        {
          objc_enumerationMutation(v6);
        }

        v14 = *(*(&v28 + 1) + 8 * i);
        v15 = objc_msgSend_logicalTableName(v14, v9, v10);
        v16 = [v14 alloc];
        v18 = objc_msgSend_initWithLogicalTableName_(v16, v17, v15);
        v21 = objc_msgSend_dbTableName(v14, v19, v20);
        objc_msgSend_setDbTableName_(v18, v22, v21);

        objc_msgSend_setObject_forKey_(v3, v23, v18, v15);
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v9, &v28, v32, 16);
    }

    while (v11);
  }

  v26 = objc_msgSend_copy(v3, v24, v25);

  return v26;
}

- (CKSQLiteTOCTableGroup)initWithName:(id)name options:(unint64_t)options database:(id)database
{
  v30 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  databaseCopy = database;
  v11 = objc_msgSend_setFlag_(self, v10, 1);
  v28.receiver = self;
  v28.super_class = CKSQLiteTOCTableGroup;
  v12 = [(CKSQLiteTableGroup *)&v28 initWithName:nameCopy options:options database:databaseCopy];
  v15 = v12;
  if (v12)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v16 = objc_msgSend_allTables(v12, v13, v14, 0);
    v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v17, &v24, v29, 16);
    if (v18)
    {
      v20 = v18;
      v21 = *v25;
      do
      {
        v22 = 0;
        do
        {
          if (*v25 != v21)
          {
            objc_enumerationMutation(v16);
          }

          objc_msgSend_setTableGroup_(*(*(&v24 + 1) + 8 * v22++), v19, v15);
        }

        while (v20 != v22);
        v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v19, &v24, v29, 16);
      }

      while (v20);
    }
  }

  return v15;
}

- (id)resetValidation
{
  v5 = objc_msgSend_setLastUsedEpoch_(self, a2, 1);
  if (!v5)
  {
    v6 = objc_msgSend_tocImageInfoTable(self, v3, v4);
    v5 = objc_msgSend_resetImageInfo(v6, v7, v8);
  }

  return v5;
}

- (id)isUseable
{
  selfCopy = self;
  v69[1] = *MEMORY[0x1E69E9840];
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v4 = objc_msgSend_allTables(self, a2, v2);
  v55 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v57, v61, 16);
  if (!v55)
  {
    goto LABEL_25;
  }

  v54 = *v58;
  v52 = v4;
  v53 = selfCopy;
  do
  {
    v6 = 0;
    do
    {
      if (*v58 != v54)
      {
        objc_enumerationMutation(v4);
      }

      v7 = *(*(&v57 + 1) + 8 * v6);
      v56 = objc_autoreleasePoolPush();
      v10 = v7;
      if (selfCopy)
      {
        v11 = objc_msgSend_tocTable(selfCopy, v8, v9);
        v14 = objc_msgSend_newEntryObject(v11, v12, v13);
        v17 = objc_msgSend_dbTableName(v10, v15, v16);
        objc_msgSend_setDbTableName_(v14, v18, v17);
        v69[0] = CKSQLiteTOCTableEntryDbVersionPropertyName;
        v20 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v19, v69, 1);
        v68 = CKSQLiteTOCTableEntryDbTablePropertyName;
        v22 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v21, &v68, 1);
        v24 = objc_msgSend_fetchProperties_inObject_matchingDBProperties_label_(v11, v23, v20, v14, v22, 0);

        if (objc_msgSend_CKIsNoMatchingRowError_(MEMORY[0x1E696ABC0], v25, v24))
        {
          if (objc_msgSend__canMigrateWithMissingTable_(selfCopy, v26, v10))
          {

            objc_opt_class();
            v24 = 0;
LABEL_19:

            goto LABEL_20;
          }

          v28 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v27, @"CKErrorDomain", 1, @"Missing TableGroup table in %@", selfCopy);

          v24 = v28;
        }

        v29 = objc_opt_class();
        if (!v24)
        {
          v37 = v29;
          v38 = objc_msgSend_dbVersion(v14, v30, v31);
          v41 = objc_msgSend_unsignedIntegerValue(v38, v39, v40);

          v44 = objc_msgSend_dbVersion(v37, v42, v43);
          if (v41 == v44)
          {
            v24 = 0;
            selfCopy = v53;
            goto LABEL_19;
          }

          v45 = v44;
          v46 = NSStringFromClass(v37);
          v51 = v45;
          selfCopy = v53;
          v4 = v52;
          v24 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v47, @"CKErrorDomain", 1, @"CKSQLiteDatabase<%p>: %@ version changed: database=%lu runtime=%lu", v53, v46, v41, v51);

          if (!v24)
          {
            goto LABEL_19;
          }
        }

        if (ck_log_initialization_predicate != -1)
        {
          dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
        }

        v32 = ck_log_facility_sql;
        if (os_log_type_enabled(ck_log_facility_sql, OS_LOG_TYPE_ERROR))
        {
          v33 = v32;
          v36 = objc_msgSend_logicalTableName(v10, v34, v35);
          *buf = 134218498;
          v63 = v53;
          v64 = 2114;
          v65 = v36;
          v66 = 2114;
          v67 = v24;
          _os_log_error_impl(&dword_1883EA000, v33, OS_LOG_TYPE_ERROR, "CKSQLiteDatabase<%p>: TOC table %{public}@ is unusable, error: %{public}@", buf, 0x20u);

          selfCopy = v53;
        }

        goto LABEL_19;
      }

      v24 = 0;
LABEL_20:

      objc_autoreleasePoolPop(v56);
      if (v24)
      {
        goto LABEL_26;
      }

      ++v6;
    }

    while (v55 != v6);
    v49 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v48, &v57, v61, 16);
    v55 = v49;
  }

  while (v49);
LABEL_25:
  v24 = 0;
LABEL_26:

  return v24;
}

- (BOOL)needsMigration:(id *)migration
{
  v61[3] = *MEMORY[0x1E69E9840];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = objc_msgSend_allTables(self, a2, migration);
  v46 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v4, &v47, v51, 16);
  if (v46)
  {
    v45 = *v48;
LABEL_3:
    v5 = 0;
    while (1)
    {
      if (*v48 != v45)
      {
        objc_enumerationMutation(obj);
      }

      v8 = *(*(&v47 + 1) + 8 * v5);
      if (self)
      {
        break;
      }

      v25 = 0;
      v37 = 0;
LABEL_20:

      v39 = v25;
      if (v39 || (v37 & 1) != 0)
      {

        if (migration && v39)
        {
          v41 = v39;
          *migration = v39;
        }

        goto LABEL_32;
      }

      if (v46 == ++v5)
      {
        v40 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v38, &v47, v51, 16);
        v46 = v40;
        if (v40)
        {
          goto LABEL_3;
        }

        goto LABEL_28;
      }
    }

    v9 = objc_msgSend_tocTableGroup(self, v6, v7);
    v12 = objc_msgSend_tocTable(v9, v10, v11);
    v15 = objc_msgSend_newEntryObject(v12, v13, v14);
    v18 = objc_msgSend_dbTableName(v8, v16, v17);
    objc_msgSend_setDbTableName_(v15, v19, v18);
    v61[0] = CKSQLiteTOCTableEntryDbVersionPropertyName;
    v61[1] = CKSQLiteTOCTableEntrySchemaPropertyName;
    v61[2] = CKSQLiteTOCTableEntryPropertyDataName;
    v21 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v20, v61, 3);
    v60 = CKSQLiteTOCTableEntryDbTablePropertyName;
    v23 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v22, &v60, 1);
    v25 = objc_msgSend_fetchProperties_inObject_matchingDBProperties_label_(v12, v24, v21, v15, v23, 0);

    if (objc_msgSend_CKIsNoMatchingRowError_(MEMORY[0x1E696ABC0], v26, v25))
    {
      if (objc_msgSend__canMigrateWithMissingTable_(self, v27, v8))
      {
        goto LABEL_14;
      }

      v30 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v29, @"CKErrorDomain", 1, @"Missing TableGroup table in %@", self);

      v25 = v30;
    }

    if (v25)
    {
LABEL_11:
      v31 = v25;
LABEL_12:
      v32 = 0;
LABEL_19:
      buf[0] = v32;

      v37 = buf[0];
      goto LABEL_20;
    }

    v33 = objc_msgSend_tableGroup(v8, v27, v28);
    v25 = objc_msgSend_validateTable_matchesTOCEntry_(v33, v34, v8, v15);

    if ((objc_msgSend_CKIsValidationError_(MEMORY[0x1E696ABC0], v35, v25) & 1) == 0)
    {
      if (!v25)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

LABEL_14:

    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v36 = ck_log_facility_sql;
    if (os_log_type_enabled(ck_log_facility_sql, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218754;
      selfCopy = self;
      v54 = 2114;
      v55 = @"YES";
      v56 = 2114;
      v57 = v18;
      v58 = 2114;
      v59 = 0;
      _os_log_error_impl(&dword_1883EA000, v36, OS_LOG_TYPE_ERROR, "CKSQLiteDatabase<%p>: TOC migration check returning %{public}@ for table %{public}@, error: %{public}@", buf, 0x2Au);
    }

    v25 = 0;
    v32 = 1;
    goto LABEL_19;
  }

LABEL_28:

  v39 = 0;
  v37 = 0;
LABEL_32:

  return v37;
}

- (id)setLastUsedEpoch:(int64_t)epoch
{
  v5 = CKProcessStartDate();
  v8 = CKBootDate();
  switch(epoch)
  {
    case 2:
      objc_msgSend_dateByAddingTimeInterval_(v5, v6, v7, 1.0);
      goto LABEL_8;
    case 1:
      objc_msgSend_timeIntervalSinceDate_(v5, v6, v8);
      v9 = v10 * 0.5;
      goto LABEL_6;
    case 0:
      v9 = -1.0;
LABEL_6:
      objc_msgSend_dateByAddingTimeInterval_(v8, v6, v7, v9);
      v11 = LABEL_8:;
      objc_msgSend_setLastUsed_(self, v12, v11);
      goto LABEL_10;
  }

  v11 = 0;
  objc_msgSend_setLastUsed_(self, v6, 0);
LABEL_10:
  v15 = objc_msgSend_tocTableGroupTable(self, v13, v14);
  v17 = objc_msgSend_updateLastUsedDate_(v15, v16, self);

  return v17;
}

- (id)migrateDataFromGroup:(id)group
{
  v34 = *MEMORY[0x1E69E9840];
  groupCopy = group;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = objc_msgSend__tableClasses(self, v5, v6);
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v7, &v29, v33, 16);
  if (v8)
  {
    v11 = v8;
    v12 = *v30;
LABEL_3:
    v13 = 0;
    while (1)
    {
      if (*v30 != v12)
      {
        objc_enumerationMutation(obj);
      }

      v14 = objc_msgSend_logicalTableName(*(*(&v29 + 1) + 8 * v13), v9, v10);
      v16 = objc_msgSend_tableWithName_(self, v15, v14);
      v18 = objc_msgSend_tableWithName_(groupCopy, v17, v14);
      v20 = v18;
      if (!v16 || v18 == 0)
      {
        v22 = 0;
      }

      else
      {
        v28 = 0;
        v23 = objc_msgSend_migrateDataFromTable_error_(v16, v19, v18, &v28);
        v24 = v28;
        v22 = v24;
        if ((v23 & 1) == 0 && !v24)
        {
          v22 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v25, @"CKErrorDomain", 1, @"TOC migration failed for table: %@", v14);
        }
      }

      if (v22)
      {
        break;
      }

      if (v11 == ++v13)
      {
        v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v9, &v29, v33, 16);
        if (v11)
        {
          goto LABEL_3;
        }

        goto LABEL_18;
      }
    }
  }

  else
  {
LABEL_18:
    v22 = 0;
  }

  return v22;
}

- (void)removeDeletedGroups
{
  v4 = objc_msgSend_db(self, a2, v2);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_18869519C;
  v8[3] = &unk_1E70BC178;
  v8[4] = self;
  v9 = v4;
  v5 = v4;
  v7 = objc_msgSend_performDatabaseTransactionWithoutForeignKeyConstraints_(v5, v6, v8);
}

- (id)prepareNewlyOpenedDatabase
{
  v120 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_tocTableGroupTable(self, a2, v2);
  v102 = CKSQLiteTOCTableGroupTableLastUsedPropertyName;
  v6 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v5, &v102, 1);
  v8 = objc_msgSend_fetchProperties_inObject_label_(v4, v7, v6, self, 0);

  if (v8)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v11 = ck_log_facility_sql;
    if (os_log_type_enabled(ck_log_facility_sql, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v8;
      _os_log_error_impl(&dword_1883EA000, v11, OS_LOG_TYPE_ERROR, "Error fetching TOC last used date: %{public}@", &buf, 0xCu);
    }

    v14 = objc_msgSend_distantPast(MEMORY[0x1E695DF00], v12, v13);
    objc_msgSend_setLastUsed_(self, v15, v14);
  }

  if (self)
  {
    v16 = objc_msgSend_tocTableGroupTable(self, v9, v10);
    *v119 = CKSQLiteTOCTableGroupTableCreatingClassPropertyName;
    v18 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v17, v119, 1);
    v101 = 0;
    v20 = objc_msgSend_fetchDistinctProperties_label_error_(v16, v19, v18, 0, &v101);
    v21 = v101;

    v91 = v21;
    if (v21)
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v24 = ck_log_facility_sql;
      if (os_log_type_enabled(ck_log_facility_sql, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v21;
        _os_log_error_impl(&dword_1883EA000, v24, OS_LOG_TYPE_ERROR, "-removeExpiredGroups failed to fetch classes: %{public}@", &buf, 0xCu);
      }
    }

    else
    {
      v90 = v8;
      isFirstInstanceSinceBoot = objc_msgSend_isFirstInstanceSinceBoot(self, v22, v23);
      v95 = objc_msgSend_tocTableGroupTable(self, v25, v26);
      v96 = objc_opt_class();
      *v115 = 0u;
      v116 = 0u;
      v117 = 0u;
      v118 = 0u;
      v89 = v20;
      obj = v20;
      v98 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v27, v115, &buf, 16);
      if (v98)
      {
        v97 = *v116;
        v28 = @"Creating class %@ is not a CKSQLiteTableGroup subclass";
        if (!v96)
        {
          v28 = @"Creating class %@ not found";
        }

        v93 = v28;
        do
        {
          for (i = 0; i != v98; ++i)
          {
            if (*v116 != v97)
            {
              objc_enumerationMutation(obj);
            }

            v30 = *(*&v115[8] + 8 * i);
            v31 = objc_autoreleasePoolPush();
            v34 = objc_msgSend_creatingClass(v30, v32, v33);
            v35 = v34;
            if (v34)
            {
              v36 = NSClassFromString(v34);
              v99 = v35;
              v100 = v31;
              if (v36 && (v38 = v36, objc_msgSend_isSubclassOfClass_(v36, v37, v96)))
              {
                if (isFirstInstanceSinceBoot && objc_msgSend_rebootShouldClearData(v38, v37, v39))
                {
                  v40 = objc_msgSend_tableGroupsWithClass_(v95, v37, v35);
                  v41 = @"rebooted";
                }

                else
                {
                  v44 = objc_msgSend_expirationDate(v38, v37, v39);
                  if (v44)
                  {
                    v40 = objc_msgSend_expiredTableGroupsWithClass_expirationDate_(v95, v43, v35, v44);
                    v41 = @"expired";
                  }

                  else
                  {
                    v40 = 0;
                    v41 = 0;
                  }
                }
              }

              else
              {
                v41 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v37, v93, v35);
                v40 = objc_msgSend_tableGroupsWithClass_(v95, v42, v35);
                v38 = v96;
              }

              v109 = 0u;
              v110 = 0u;
              *v107 = 0u;
              v108 = 0u;
              v45 = v40;
              v47 = objc_msgSend_countByEnumeratingWithState_objects_count_(v45, v46, v107, &v103, 16);
              if (v47)
              {
                v50 = v47;
                v51 = *v108;
                do
                {
                  for (j = 0; j != v50; ++j)
                  {
                    if (*v108 != v51)
                    {
                      objc_enumerationMutation(v45);
                    }

                    v53 = *(*&v107[8] + 8 * j);
                    v54 = objc_msgSend_db(self, v48, v49);
                    objc_msgSend_expireGroup_reason_database_(v38, v55, v53, v41, v54);
                  }

                  v50 = objc_msgSend_countByEnumeratingWithState_objects_count_(v45, v48, v107, &v103, 16);
                }

                while (v50);
              }

              v35 = v99;
              v31 = v100;
            }

            objc_autoreleasePoolPop(v31);
          }

          v98 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v56, v115, &buf, 16);
        }

        while (v98);
      }

      v20 = v89;
      v8 = v90;
    }
  }

  objc_msgSend_removeDeletedGroups(self, v9, v10);
  if (objc_msgSend_isFirstInstanceInProcess(self, v57, v58))
  {
    if (self)
    {
      *&buf = MEMORY[0x1E69E9820];
      *(&buf + 1) = 3221225472;
      v112 = sub_188695408;
      v113 = &unk_1E70BC1A0;
      selfCopy = self;
      v61 = objc_msgSend_performTransaction_(self, v59, &buf);
      if (v61)
      {
        v63 = v61;
        if (ck_log_initialization_predicate != -1)
        {
          dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
        }

        v64 = ck_log_facility_sql;
        if (os_log_type_enabled(ck_log_facility_sql, OS_LOG_TYPE_FAULT))
        {
          LODWORD(v103) = 138543362;
          *(&v103 + 4) = v63;
          _os_log_fault_impl(&dword_1883EA000, v64, OS_LOG_TYPE_FAULT, "Failed to remove empty table group: %{public}@", &v103, 0xCu);
        }
      }

      *&v103 = MEMORY[0x1E69E9820];
      *(&v103 + 1) = 3221225472;
      v104 = sub_1886954E4;
      v105 = &unk_1E70BC1A0;
      selfCopy2 = self;
      v66 = objc_msgSend_performTransaction_(self, v62, &v103);
      if (v66)
      {
        if (ck_log_initialization_predicate != -1)
        {
          dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
        }

        v67 = ck_log_facility_sql;
        if (os_log_type_enabled(ck_log_facility_sql, OS_LOG_TYPE_FAULT))
        {
          *v115 = 138543362;
          *&v115[4] = v66;
          _os_log_fault_impl(&dword_1883EA000, v67, OS_LOG_TYPE_FAULT, "Database table check failed: %{public}@", v115, 0xCu);
        }
      }

      *v115 = MEMORY[0x1E69E9820];
      *&v115[8] = 3221225472;
      *&v116 = sub_1886955CC;
      *(&v116 + 1) = &unk_1E70BC1A0;
      *&v117 = self;
      v68 = objc_msgSend_performTransaction_(self, v65, v115);

      if (v68)
      {
        if (ck_log_initialization_predicate != -1)
        {
          dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
        }

        v71 = ck_log_facility_sql;
        if (os_log_type_enabled(ck_log_facility_sql, OS_LOG_TYPE_FAULT))
        {
          *v107 = 138543362;
          *&v107[4] = v68;
          _os_log_fault_impl(&dword_1883EA000, v71, OS_LOG_TYPE_FAULT, "Failed to remove orphaned TOC entries: %{public}@", v107, 0xCu);
        }
      }

      v72 = objc_msgSend_db(self, v69, v70);
      *v107 = MEMORY[0x1E69E9820];
      *&v107[8] = 3221225472;
      *&v108 = sub_1886956A8;
      *(&v108 + 1) = &unk_1E70BC1A0;
      v73 = v72;
      *&v109 = v73;
      v75 = objc_msgSend_performDatabaseTransactionWithoutForeignKeyConstraints_(v73, v74, v107);

      if (v75)
      {
        if (ck_log_initialization_predicate != -1)
        {
          dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
        }

        v76 = ck_log_facility_sql;
        if (os_log_type_enabled(ck_log_facility_sql, OS_LOG_TYPE_FAULT))
        {
          *v119 = 138543362;
          *&v119[4] = v75;
          _os_log_fault_impl(&dword_1883EA000, v76, OS_LOG_TYPE_FAULT, "failed to remove orphaned database tables: %{public}@", v119, 0xCu);
        }
      }
    }

    v77 = objc_msgSend_date(MEMORY[0x1E695DF00], v59, v60);
    objc_msgSend_setLastUsed_(self, v78, v77);

    v81 = objc_msgSend_tocTableGroupTable(self, v79, v80);
    v83 = objc_msgSend_updateLastUsedDate_(v81, v82, self);

    if (v83)
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v84 = ck_log_facility_sql;
      if (os_log_type_enabled(ck_log_facility_sql, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v83;
        _os_log_error_impl(&dword_1883EA000, v84, OS_LOG_TYPE_ERROR, "Error updating TOC last used date: %{public}@", &buf, 0xCu);
      }
    }
  }

  if (!v8)
  {
    v85 = objc_msgSend_tocImageInfoTable(self, v59, v60);
    v8 = objc_msgSend_databaseMatchesCurrentProcess(v85, v86, v87);
  }

  return v8;
}

- (void)databaseValidationSuccess
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = objc_msgSend_tocImageInfoTable(self, a2, v2);
  v6 = objc_msgSend_updateForCurrentProcess(v3, v4, v5);

  if (v6)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v7 = ck_log_facility_sql;
    if (os_log_type_enabled(ck_log_facility_sql, OS_LOG_TYPE_ERROR))
    {
      v8 = 138543362;
      v9 = v6;
      _os_log_error_impl(&dword_1883EA000, v7, OS_LOG_TYPE_ERROR, "Failed to mark database validation success: %{public}@", &v8, 0xCu);
    }
  }
}

@end