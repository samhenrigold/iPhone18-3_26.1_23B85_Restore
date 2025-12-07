@interface CXCallDirectoryStoreMigrator
- (CXCallDirectoryStoreMigrator)init;
- (id)_performMigrationsStartingAtSchemaVersion:(int64_t)version error:(id *)error;
- (id)performMigrationsWithError:(id *)error;
@end

@implementation CXCallDirectoryStoreMigrator

- (CXCallDirectoryStoreMigrator)init
{
  v7.receiver = self;
  v7.super_class = CXCallDirectoryStoreMigrator;
  v2 = [(CXCallDirectoryStoreMigrator *)&v7 init];
  v3 = v2;
  if (v2)
  {
    storeCreationBlock = v2->_storeCreationBlock;
    v2->_storeCreationBlock = &__block_literal_global_7;

    retrieveExtensionBlock = v3->_retrieveExtensionBlock;
    v3->_retrieveExtensionBlock = &__block_literal_global_3;
  }

  return v3;
}

id __36__CXCallDirectoryStoreMigrator_init__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [[CXCallDirectoryStore alloc] initForReadingAndWritingWithError:a2];

  return v2;
}

- (id)performMigrationsWithError:(id *)error
{
  storeCreationBlock = [(CXCallDirectoryStoreMigrator *)self storeCreationBlock];
  v6 = (storeCreationBlock)[2](storeCreationBlock, error);
  [(CXCallDirectoryStoreMigrator *)self setStore:v6];

  store = [(CXCallDirectoryStoreMigrator *)self store];

  if (!store || (-[CXCallDirectoryStoreMigrator store](self, "store"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 schemaVersion], v8, v9 == -1))
  {
    v10 = 0;
  }

  else
  {
    v10 = [(CXCallDirectoryStoreMigrator *)self _performMigrationsStartingAtSchemaVersion:v9 error:error];
  }

  return v10;
}

- (id)_performMigrationsStartingAtSchemaVersion:(int64_t)version error:(id *)error
{
  v54 = *MEMORY[0x1E69E9840];
  v7 = objc_alloc_init(CXCallDirectoryStoreMigrationResult);
  [(CXCallDirectoryStoreMigrationResult *)v7 setStartingSchemaVersion:version];
  [(CXCallDirectoryStoreMigrationResult *)v7 setEndingSchemaVersion:5];
  [(CXCallDirectoryStoreMigrationResult *)v7 setRequiresExtensionDisablement:0];
  [(CXCallDirectoryStoreMigrationResult *)v7 setRequiresExtensionSynchronization:0];
  if (version <= 1)
  {
    if ((version + 1) >= 3)
    {
      goto LABEL_31;
    }

    store = [(CXCallDirectoryStoreMigrator *)self store];
    p_super = [store url];

    [(CXCallDirectoryStoreMigrator *)self setStore:0];
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v11 = [defaultManager removeItemAtURL:p_super error:error];

    if (!v11)
    {
      goto LABEL_30;
    }

    v13 = CXDefaultLog(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v53 = p_super;
      _os_log_impl(&dword_1B47F3000, v13, OS_LOG_TYPE_DEFAULT, "Successfully removed DB at URL %@", buf, 0xCu);
    }

    storeCreationBlock = [(CXCallDirectoryStoreMigrator *)self storeCreationBlock];
    v15 = (storeCreationBlock)[2](storeCreationBlock, error);
    [(CXCallDirectoryStoreMigrator *)self setStore:v15];

    store2 = [(CXCallDirectoryStoreMigrator *)self store];

    if (!store2)
    {
LABEL_30:

      goto LABEL_37;
    }

    [(CXCallDirectoryStoreMigrationResult *)v7 setRequiresExtensionDisablement:1];
    [(CXCallDirectoryStoreMigrationResult *)v7 setRequiresExtensionSynchronization:1];

LABEL_14:
    store3 = [(CXCallDirectoryStoreMigrator *)self store];
    database = [store3 database];
    p_super = [database namesOfColumnsInTableWithName:@"Extension" error:error];

    if (p_super)
    {
      if (([p_super containsObject:@"state"]& 1) != 0)
      {
LABEL_18:
        v51[0] = MEMORY[0x1E69E9820];
        v51[1] = 3221225472;
        v51[2] = __80__CXCallDirectoryStoreMigrator__performMigrationsStartingAtSchemaVersion_error___block_invoke;
        v51[3] = &unk_1E7C070F0;
        v51[4] = self;
        v29 = MEMORY[0x1B8C78C60](v51);
        store4 = [(CXCallDirectoryStoreMigrator *)self store];
        database2 = [store4 database];
        v32 = [database2 selectSQL:@"SELECT id withBindings:bundle_id FROM Extension" expectedColumnCount:MEMORY[0x1E695E0F0] resultRowHandler:2 error:{v29, error}];

        if (v32 && (-[CXCallDirectoryStoreMigrator store](self, "store"), v33 = objc_claimAutoreleasedReturnValue(), [v33 database], v34 = objc_claimAutoreleasedReturnValue(), v35 = objc_msgSend(v34, "executeSQL:withBindings:error:", @"UPDATE SchemaVersion SET version = ?", &unk_1F2CA5FA8, error), v34, v33, (v35 & 1) != 0))
        {
          v36 = 1;
        }

        else
        {

          v36 = 0;
          v7 = 0;
        }

        if (!v36)
        {
          goto LABEL_31;
        }

        goto LABEL_24;
      }

      v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"ALTER TABLE Extension ADD COLUMN state INTEGER NOT NULL DEFAULT %ld", 1];
      store5 = [(CXCallDirectoryStoreMigrator *)self store];
      database3 = [store5 database];
      v28 = [database3 executeSQL:v25 error:error];

      if (v28)
      {

        goto LABEL_18;
      }
    }

    else
    {
      v25 = v7;
    }

    goto LABEL_37;
  }

  if (version == 2)
  {
    goto LABEL_14;
  }

  if (version != 3)
  {
    if (version != 4)
    {
      goto LABEL_31;
    }

    goto LABEL_11;
  }

LABEL_24:
  store6 = [(CXCallDirectoryStoreMigrator *)self store];
  database4 = [store6 database];
  p_super = [database4 namesOfColumnsInTableWithName:@"Extension" error:error];

  if (!p_super)
  {
    goto LABEL_30;
  }

  if (([p_super containsObject:@"state_last_modified"]& 1) == 0)
  {
    store7 = [(CXCallDirectoryStoreMigrator *)self store];
    database5 = [store7 database];
    v41 = [database5 executeSQL:@"ALTER TABLE Extension ADD COLUMN state_last_modified REAL NOT NULL DEFAULT 0.0" error:error];

    if (!v41)
    {
      goto LABEL_30;
    }
  }

  store8 = [(CXCallDirectoryStoreMigrator *)self store];
  database6 = [store8 database];
  v44 = [database6 executeSQL:@"UPDATE Extension SET state_last_modified = ((julianday('now') - 2440587.5)*86400.0)" error:error];

  if (!v44)
  {
    goto LABEL_30;
  }

  store9 = [(CXCallDirectoryStoreMigrator *)self store];
  database7 = [store9 database];
  v47 = [database7 executeSQL:@"UPDATE SchemaVersion SET version = ?" withBindings:&unk_1F2CA5FC0 error:error];

  if ((v47 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_11:
  store10 = [(CXCallDirectoryStoreMigrator *)self store];
  database8 = [store10 database];
  v19 = [database8 executeSQL:@"CREATE INDEX idx_PhoneNumberIdentificationEntry_FK_Label ON PhoneNumberIdentificationEntry(label_id)" error:error];

  if (!v19 || (-[CXCallDirectoryStoreMigrator store](self, "store"), v20 = objc_claimAutoreleasedReturnValue(), [v20 database], v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v21, "executeSQL:withBindings:error:", @"UPDATE SchemaVersion SET version = ?", &unk_1F2CA5FD8, error), v21, v20, !v22))
  {
    p_super = &v7->super;
LABEL_37:
    v7 = 0;
LABEL_38:

    goto LABEL_39;
  }

LABEL_31:
  if (v7)
  {
    startingSchemaVersion = [(CXCallDirectoryStoreMigrationResult *)v7 startingSchemaVersion];
    endingSchemaVersion = [(CXCallDirectoryStoreMigrationResult *)v7 endingSchemaVersion];
    if (startingSchemaVersion < endingSchemaVersion)
    {
      p_super = CXDefaultLog(endingSchemaVersion);
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v53 = 5;
        _os_log_impl(&dword_1B47F3000, p_super, OS_LOG_TYPE_DEFAULT, "Successfully migrated to schema version %ld", buf, 0xCu);
      }

      goto LABEL_38;
    }
  }

LABEL_39:

  return v7;
}

void __80__CXCallDirectoryStoreMigrator__performMigrationsStartingAtSchemaVersion_error___block_invoke(uint64_t a1, void *a2)
{
  v27[2] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 objectAtIndexedSubscript:0];
  v5 = [v4 longLongValue];

  v6 = [v3 objectAtIndexedSubscript:1];

  v7 = [*(a1 + 32) retrieveExtensionBlock];
  v20 = 0;
  v8 = (v7)[2](v7, v6, &v20);
  v9 = v20;

  if (!v8)
  {
    v18 = CXDefaultLog(v10);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      __80__CXCallDirectoryStoreMigrator__performMigrationsStartingAtSchemaVersion_error___block_invoke_cold_1(v6, v9, v18);
    }

    v16 = v9;
    goto LABEL_9;
  }

  if ([v8 isEnabledViaPlugInKit])
  {
    v11 = [*(a1 + 32) store];
    v12 = [v11 database];
    v27[0] = &unk_1F2CA5F48;
    v13 = [MEMORY[0x1E696AD98] numberWithLongLong:v5];
    v27[1] = v13;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:2];
    v19 = v9;
    v15 = [v12 executeSQL:@"UPDATE Extension SET state = ? WHERE (id = ?)" withBindings:v14 error:&v19];
    v16 = v19;

    if (v15)
    {
LABEL_10:
      v9 = v16;
      goto LABEL_11;
    }

    v18 = CXDefaultLog(v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v22 = v6;
      v23 = 2048;
      v24 = v5;
      v25 = 2112;
      v26 = v16;
      _os_log_error_impl(&dword_1B47F3000, v18, OS_LOG_TYPE_ERROR, "Error setting state to Enabled for extension with identifier '%@' (ID %lld): %@", buf, 0x20u);
    }

LABEL_9:

    goto LABEL_10;
  }

LABEL_11:
}

void __80__CXCallDirectoryStoreMigrator__performMigrationsStartingAtSchemaVersion_error___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_1B47F3000, log, OS_LOG_TYPE_ERROR, "Error retrieving NSExtension with identifier '%@': %@. Not migrating enabled status", &v3, 0x16u);
}

@end