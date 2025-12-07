@interface _PBFPosterExtensionDataStoreSQLiteDatabaseImpl
- (BOOL)addPosterUUID:(id)d provider:(id)provider error:(id *)error;
- (BOOL)addRole:(id)role displayName:(id)name error:(id *)error;
- (BOOL)assignPosterUUID:(id)d toRole:(id)role error:(id *)error;
- (BOOL)checkIfPosterUUIDs:(id)ds belongToRole:(id)role error:(id *)error;
- (BOOL)markPosterUUIDAsSelected:(id)selected roleId:(id)id error:(id *)error;
- (BOOL)mutateAttributeForPoster:(id)poster roleId:(id)id attributeId:(id)attributeId attributePayload:(id)payload error:(id *)error;
- (BOOL)mutateDataStoreMetadataForKey:(id)key value:(id)value error:(id *)error;
- (BOOL)mutateSortOrder:(id)order roleId:(id)id error:(id *)error;
- (BOOL)performChanges:(id)changes error:(id *)error;
- (BOOL)removePosterUUID:(id)d error:(id *)error;
- (BOOL)removeRole:(id)role error:(id *)error;
- (BOOL)unassignPosterUUID:(id)d fromRole:(id)role error:(id *)error;
- (BOOL)validateDatabaseWithError:(id *)error;
- (_PBFPosterExtensionDataStoreSQLiteDatabaseImpl)initWithURL:(id)l options:(int)options error:(id *)error;
- (id)attributeForPoster:(id)poster roleId:(id)id attributeId:(id)attributeId error:(id *)error;
- (id)attributeIdentifiersForPoster:(id)poster roleId:(id)id error:(id *)error;
- (id)attributesForPoster:(id)poster roleId:(id)id attributeIdentifiers:(id)identifiers error:(id *)error;
- (id)dataStoreMetadataWithError:(id *)error;
- (id)extensionIdentifierForPosterUUID:(id)d error:(id *)error;
- (id)extensionIdentifiersForRole:(id)role error:(id *)error;
- (id)posterUUIDsForExtensionIdentifier:(id)identifier role:(id)role error:(id *)error;
- (id)roleDisplayNamesForIdentifiers:(id)identifiers error:(id *)error;
- (id)roleIdentifiersWithError:(id *)error;
- (id)selectedPosterUUIDForRole:(id)role error:(id *)error;
- (id)setup;
- (id)sortedPosterUUIDsForRole:(id)role error:(id *)error;
- (unint64_t)version;
- (void)cancel;
- (void)dealloc;
- (void)invalidate;
- (void)setup;
@end

@implementation _PBFPosterExtensionDataStoreSQLiteDatabaseImpl

- (_PBFPosterExtensionDataStoreSQLiteDatabaseImpl)initWithURL:(id)l options:(int)options error:(id *)error
{
  v6 = *&options;
  v54 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v44.receiver = self;
  v44.super_class = _PBFPosterExtensionDataStoreSQLiteDatabaseImpl;
  v10 = [(_PBFPosterExtensionDataStoreSQLiteDatabaseImpl *)&v44 init];
  v11 = v10;
  if (!v10)
  {
LABEL_33:
    v32 = v11;
    goto LABEL_34;
  }

  v10->_sqliteFlags = v6;
  objc_storeStrong(&v10->_databaseURL, l);
  v12 = [objc_alloc(MEMORY[0x277CF0B78]) initWithFlag:0];
  invalidationFlag = v11->_invalidationFlag;
  v11->_invalidationFlag = v12;

  v15 = PBFLogSQLite(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218498;
    v46 = v11;
    v47 = 2114;
    v48 = lCopy;
    v49 = 1024;
    *v50 = v6;
    _os_log_impl(&dword_21B526000, v15, OS_LOG_TYPE_DEFAULT, "[%p] opening database at %{public}@ w/ flags %d", buf, 0x1Cu);
  }

  v43 = 0;
  v16 = [objc_alloc(MEMORY[0x277D3EB90]) initWithFileURL:lCopy options:v6 dataProtectionClass:1 error:&v43];
  v17 = v43;
  connection = v11->_connection;
  v11->_connection = v16;

  v20 = v11->_connection;
  if (v20 && !v17)
  {
    errorCopy = error;
    v21 = PBFLogSQLite(v19);
    [(PFSQLiteDatabaseConnection *)v20 setLoggingCategory:v21];

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v22 = [&unk_282D0A288 countByEnumeratingWithState:&v39 objects:v53 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v40;
LABEL_8:
      v25 = 0;
      while (1)
      {
        if (*v40 != v24)
        {
          objc_enumerationMutation(&unk_282D0A288);
        }

        v26 = *(*(&v39 + 1) + 8 * v25);
        v27 = v11->_connection;
        v38 = 0;
        errorCopy = [(PFSQLiteDatabaseConnection *)v27 executeQuery:v26 error:&v38, errorCopy];
        v29 = v38;
        v17 = v29;
        if ((errorCopy & 1) == 0)
        {
          break;
        }

        if (v23 == ++v25)
        {
          v22 = [&unk_282D0A288 countByEnumeratingWithState:&v39 objects:v53 count:16];
          v23 = v22;
          if (v22)
          {
            goto LABEL_8;
          }

          goto LABEL_30;
        }
      }

      v31 = PBFLogSQLite(v29);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        *buf = 134219010;
        v46 = v11;
        v47 = 2114;
        v48 = v26;
        v49 = 2114;
        *v50 = lCopy;
        *&v50[8] = 1024;
        *&v50[10] = v6;
        v51 = 2114;
        v52 = v17;
        _os_log_error_impl(&dword_21B526000, v31, OS_LOG_TYPE_ERROR, "[%p] failed to run pragma '%{public}@' on database at %{public}@ w/ flags %d: %{public}@", buf, 0x30u);
      }

      if (v17)
      {
        if (errorCopy)
        {
          v22 = v17;
          *errorCopy = v17;
        }

        v30 = PBFLogSQLite(v22);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          [_PBFPosterExtensionDataStoreSQLiteDatabaseImpl initWithURL:options:error:];
        }

        goto LABEL_29;
      }
    }

LABEL_30:
    v33 = PBFLogSQLite(v22);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v46 = v11;
      _os_log_impl(&dword_21B526000, v33, OS_LOG_TYPE_DEFAULT, "[%p] successful init", buf, 0xCu);
    }

    v34 = objc_opt_new();
    providerForPosterUUIDCache = v11->_providerForPosterUUIDCache;
    v11->_providerForPosterUUIDCache = v34;

    [(NSCache *)v11->_providerForPosterUUIDCache setCountLimit:10];
    goto LABEL_33;
  }

  if (!v17)
  {
    v19 = _PBFPosterExtensionDataStoreSQLiteDatabaseError(2, 0, 0, 0);
    v17 = v19;
  }

  if (error && v17)
  {
    v19 = v17;
    *error = v17;
  }

  v30 = PBFLogSQLite(v19);
  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
  {
    *buf = 134218754;
    v46 = v11;
    v47 = 2114;
    v48 = lCopy;
    v49 = 1024;
    *v50 = v6;
    *&v50[4] = 2114;
    *&v50[6] = v17;
    _os_log_error_impl(&dword_21B526000, v30, OS_LOG_TYPE_ERROR, "[%p] failed open database at %{public}@ w/ flags %d: %{public}@", buf, 0x26u);
  }

LABEL_29:

  v32 = 0;
LABEL_34:

  return v32;
}

- (void)dealloc
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = PBFLogSQLite(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_21B526000, v3, OS_LOG_TYPE_DEFAULT, "[%p] dealloc", buf, 0xCu);
  }

  [(_PBFPosterExtensionDataStoreSQLiteDatabaseImpl *)self invalidate];
  v4.receiver = self;
  v4.super_class = _PBFPosterExtensionDataStoreSQLiteDatabaseImpl;
  [(_PBFPosterExtensionDataStoreSQLiteDatabaseImpl *)&v4 dealloc];
}

- (unint64_t)version
{
  v2 = [(_PBFPosterExtensionDataStoreSQLiteDatabaseImpl *)self dataStoreMetadataWithError:0];
  v3 = [v2 objectForKey:@"version"];

  if (v3)
  {
    integerValue = [v3 integerValue];
  }

  else
  {
    integerValue = 0x7FFFFFFFFFFFFFFFLL;
  }

  return integerValue;
}

- (id)setup
{
  v59[2] = *MEMORY[0x277D85DE8];
  if ([(BSAtomicFlag *)self->_invalidationFlag getFlag])
  {
    v3 = [MEMORY[0x277CCA9B8] pbf_generalErrorWithCode:3 userInfo:0];
    goto LABEL_20;
  }

  v4 = [(_PBFPosterExtensionDataStoreSQLiteDatabaseImpl *)self dataStoreMetadataWithError:0];
  v5 = [v4 objectForKey:@"version"];

  v7 = PBFLogSQLite(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    selfCopy8 = self;
    _os_log_impl(&dword_21B526000, v7, OS_LOG_TYPE_DEFAULT, "[%p] setup", buf, 0xCu);
  }

  v42 = v5;
  if (self->_sqliteFlags)
  {
    v16 = PBFLogSQLite(v8);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      selfCopy8 = self;
      _os_log_impl(&dword_21B526000, v16, OS_LOG_TYPE_DEFAULT, "[%p] setup bail; is readonly", buf, 0xCu);
    }

    v3 = 0;
    goto LABEL_19;
  }

  connection = self->_connection;
  v51 = 0;
  v10 = [(PFSQLiteDatabaseConnection *)connection executeQuery:@"BEGIN TRANSACTION;" error:&v51];
  integerValue = v51;
  v3 = integerValue;
  if ((v10 & 1) == 0)
  {
    v16 = PBFLogSQLite(integerValue);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [_PBFPosterExtensionDataStoreSQLiteDatabaseImpl setup];
    }

    goto LABEL_19;
  }

  if (v5)
  {
    integerValue = [v5 integerValue];
    v12 = integerValue;
    if (integerValue > 1)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v12 = -1;
  }

  do
  {
    v18 = PBFLogSQLite(integerValue);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      selfCopy8 = self;
      v54 = 2048;
      v55 = v12;
      _os_log_impl(&dword_21B526000, v18, OS_LOG_TYPE_DEFAULT, "[%p] setup update database to version %lu", buf, 0x16u);
    }

    if (v12 < 0)
    {
      v22 = &unk_282D0A2A0;
    }

    else if (v12 == 1)
    {
      v59[0] = @"UPDATE posterMetadata SET value = 2 WHERE key = version;";
      v19 = MEMORY[0x277CCACA8];
      mEMORY[0x277CF0CA8] = [MEMORY[0x277CF0CA8] sharedInstance];
      v21 = [v19 stringWithFormat:@"INSERT INTO posterMetadata(key, value) VALUES(deviceClass, %d)", objc_msgSend(mEMORY[0x277CF0CA8], "deviceClass")];;
      v59[1] = v21;
      v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v59 count:2];
    }

    else
    {
      v22 = 0;
    }

    if ([v22 count])
    {
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v23 = v22;
      v24 = [v23 countByEnumeratingWithState:&v47 objects:v58 count:16];
      if (v24)
      {
        v25 = v24;
        v26 = *v48;
        v27 = v3;
        while (2)
        {
          for (i = 0; i != v25; ++i)
          {
            if (*v48 != v26)
            {
              objc_enumerationMutation(v23);
            }

            v29 = *(*(&v47 + 1) + 8 * i);
            v30 = self->_connection;
            v46 = 0;
            [(PFSQLiteDatabaseConnection *)v30 executeQuery:v29 error:&v46];
            v3 = v46;

            v32 = PBFLogSQLite(v31);
            v33 = v32;
            if (v3)
            {
              if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
              {
                databaseURL = self->_databaseURL;
                *buf = 134218754;
                selfCopy8 = self;
                v54 = 2114;
                v55 = v29;
                v56 = 2114;
                *v57 = databaseURL;
                *&v57[8] = 2114;
                *&v57[10] = v3;
                _os_log_error_impl(&dword_21B526000, v33, OS_LOG_TYPE_ERROR, "[%p] failed to execute setup query '%{public}@' on database at %{public}@: %{public}@", buf, 0x2Au);
              }

              goto LABEL_48;
            }

            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134218242;
              selfCopy8 = self;
              v54 = 2114;
              v55 = v29;
              _os_log_impl(&dword_21B526000, v33, OS_LOG_TYPE_DEFAULT, "[%p] success setup query '%{public}@'", buf, 0x16u);
            }

            v27 = 0;
          }

          v25 = [v23 countByEnumeratingWithState:&v47 objects:v58 count:16];
          v27 = 0;
          if (v25)
          {
            continue;
          }

          break;
        }

        v3 = 0;
      }
    }

    else
    {
      v23 = PBFLogSQLite(0);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        selfCopy8 = self;
        v54 = 2048;
        v55 = v12;
        _os_log_impl(&dword_21B526000, v23, OS_LOG_TYPE_DEFAULT, "[%p] skip setup for version %lu", buf, 0x16u);
      }
    }

LABEL_48:

    ++v12;
  }

  while (v12 != 2);
LABEL_9:
  v13 = self->_connection;
  if (!v3)
  {
    v45 = 0;
    [(PFSQLiteDatabaseConnection *)v13 executeQuery:@"COMMIT TRANSACTION;" error:&v45];
    v35 = v45;
    if (v35)
    {
      v3 = v35;
      v16 = PBFLogSQLite(v35);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v36 = self->_databaseURL;
        sqliteFlags = self->_sqliteFlags;
        *buf = 134218754;
        selfCopy8 = self;
        v54 = 2114;
        v55 = v36;
        v56 = 1024;
        *v57 = sqliteFlags;
        *&v57[4] = 2114;
        *&v57[6] = v3;
        _os_log_error_impl(&dword_21B526000, v16, OS_LOG_TYPE_ERROR, "[%p] failed to commit transaction on database at %{public}@ w/ flags %d: %{public}@", buf, 0x26u);
      }

      goto LABEL_19;
    }

    goto LABEL_53;
  }

  v44 = 0;
  [(PFSQLiteDatabaseConnection *)v13 executeQuery:@"ROLLBACK TRANSACTION;" error:&v44];
  v14 = v44;

  if (!v14)
  {
LABEL_53:
    if (v12 == 2)
    {
      v43 = 0;
      v38 = [(_PBFPosterExtensionDataStoreSQLiteDatabaseImpl *)self dataStoreMetadataWithError:&v43];
      v3 = v43;
      v16 = [v38 objectForKey:@"version"];

      if ([v16 integerValue]!= 2 && !v3)
      {
        v3 = _PBFPosterExtensionDataStoreSQLiteDatabaseError(1, 0, @"Database migration failed final version not equal to expected version", 0);;
        v39 = PBFLogSQLite(v3);
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          [_PBFPosterExtensionDataStoreSQLiteDatabaseImpl setup];
        }
      }
    }

    else
    {
      v3 = _PBFPosterExtensionDataStoreSQLiteDatabaseError(1, 0, @"Database migration failed.", 0);
      v16 = PBFLogSQLite(v3);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [_PBFPosterExtensionDataStoreSQLiteDatabaseImpl setup];
      }
    }

    goto LABEL_19;
  }

  v16 = PBFLogSQLite(v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    v40 = self->_databaseURL;
    v41 = self->_sqliteFlags;
    *buf = 134218754;
    selfCopy8 = self;
    v54 = 2114;
    v55 = v40;
    v56 = 1024;
    *v57 = v41;
    *&v57[4] = 2114;
    *&v57[6] = v14;
    _os_log_error_impl(&dword_21B526000, v16, OS_LOG_TYPE_ERROR, "[%p] failed to rollback transaction on database at %{public}@ w/ flags %d: %{public}@", buf, 0x26u);
  }

  v3 = v14;
LABEL_19:

LABEL_20:

  return v3;
}

- (BOOL)validateDatabaseWithError:(id *)error
{
  v50[3] = *MEMORY[0x277D85DE8];
  if (![(BSAtomicFlag *)self->_invalidationFlag getFlag])
  {
    errorCopy = error;
    v6 = [(_PBFPosterExtensionDataStoreSQLiteDatabaseImpl *)self dataStoreMetadataWithError:error];
    v39 = [v6 objectForKey:@"version"];

    v8 = v39;
    if (v39)
    {
      integerValue = [v39 integerValue];
      if (integerValue > 2)
      {
        v5 = 1;
LABEL_41:

        return v5;
      }

      v10 = integerValue;
      v11 = 0;
      while (v10 == 1)
      {
        v12 = objc_opt_new();
        connection = self->_connection;
        v43[0] = MEMORY[0x277D85DD0];
        v43[1] = 3221225472;
        v43[2] = __76___PBFPosterExtensionDataStoreSQLiteDatabaseImpl_validateDatabaseWithError___block_invoke;
        v43[3] = &unk_2782C91C8;
        v14 = v12;
        v44 = v14;
        v42 = 0;
        [(PFSQLiteDatabaseConnection *)connection executeQuery:@"SELECT tbl_name from sqlite_master WHERE type = 'table' AND tbl_name NOT LIKE 'sqlite_%'" resultRowHandler:v43 error:&v42];
        v15 = v42;

        v16 = [MEMORY[0x277CBEB98] setWithObjects:{@"poster", @"posterMetadata", @"posterAttributes", @"posterRoles", @"posterRoleMembership", 0}];
        if (([v16 isEqual:v14] & 1) == 0)
        {
          v49[0] = @"version";
          v25 = [MEMORY[0x277CCABB0] numberWithInteger:1];
          v50[0] = v25;
          v49[1] = @"expectingTableNames";
          allObjects = [v16 allObjects];
          v27 = allObjects;
          v28 = MEMORY[0x277CBEBF8];
          if (allObjects)
          {
            v29 = allObjects;
          }

          else
          {
            v29 = MEMORY[0x277CBEBF8];
          }

          v50[1] = v29;
          v49[2] = @"tableNames";
          allObjects2 = [v14 allObjects];
          v31 = allObjects2;
          if (allObjects2)
          {
            v32 = allObjects2;
          }

          else
          {
            v32 = v28;
          }

          v50[2] = v32;
          v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v50 forKeys:v49 count:3];
          v34 = _PBFPosterExtensionDataStoreSQLiteDatabaseError(5, 0, 0, v33);

          if (errorCopy)
          {
            v35 = v34;
            *errorCopy = v34;
          }

          v36 = PBFLogSQLite(v35);
          if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            [_PBFPosterExtensionDataStoreSQLiteDatabaseImpl validateDatabaseWithError:];
          }

          goto LABEL_39;
        }

        v11 = v15;
        v10 = 2;
      }

      if (v10 == 2)
      {
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3032000000;
        v46 = __Block_byref_object_copy__8;
        v47 = __Block_byref_object_dispose__8;
        v48 = 0;
        v17 = self->_connection;
        v40 = 0;
        v41[0] = MEMORY[0x277D85DD0];
        v41[1] = 3221225472;
        v41[2] = __76___PBFPosterExtensionDataStoreSQLiteDatabaseImpl_validateDatabaseWithError___block_invoke_250;
        v41[3] = &unk_2782C91F0;
        v41[4] = buf;
        [(PFSQLiteDatabaseConnection *)v17 executeQuery:@"SELECT value FROM posterMetadata WHERE key = 'version';" resultRowHandler:v41 error:&v40];
        v18 = v40;
        v19 = v18;
        if (v18)
        {
          if (errorCopy)
          {
            v18 = v18;
            *errorCopy = v19;
          }

          v20 = PBFLogSQLite(v18);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            [_PBFPosterExtensionDataStoreSQLiteDatabaseImpl validateDatabaseWithError:];
          }
        }

        v5 = [*(*&buf[8] + 40) integerValue] > 0;
        _Block_object_dispose(buf, 8);
      }

      else
      {
        v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"Version check failed for version %ld", v10];
        v22 = _PBFPosterExtensionDataStoreSQLiteDatabaseError(5, 0, v21, 0);

        if (errorCopy)
        {
          v23 = v22;
          *errorCopy = v22;
        }

        v24 = PBFLogSQLite(v23);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218498;
          *&buf[4] = self;
          *&buf[12] = 2048;
          *&buf[14] = v10;
          *&buf[22] = 2114;
          v46 = v22;
          _os_log_error_impl(&dword_21B526000, v24, OS_LOG_TYPE_ERROR, "[%p] failed validateDatabaseWithError for version %lu with error: %{public}@", buf, 0x20u);
        }

        v5 = 0;
      }

      v15 = v11;
    }

    else
    {
      v15 = PBFLogSQLite(v7);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [(_PBFPosterExtensionDataStoreSQLiteDatabaseImpl *)self validateDatabaseWithError:v15];
      }

LABEL_39:
      v5 = 0;
    }

    v8 = v39;
    goto LABEL_41;
  }

  if (!error)
  {
    return 0;
  }

  [MEMORY[0x277CCA9B8] pbf_generalErrorWithCode:3 userInfo:0];
  *error = v5 = 0;
  return v5;
}

- (BOOL)performChanges:(id)changes error:(id *)error
{
  changesCopy = changes;
  if (![(BSAtomicFlag *)self->_invalidationFlag getFlag])
  {
    connection = self->_connection;
    v28 = 0;
    v9 = [(PFSQLiteDatabaseConnection *)connection executeQuery:@"BEGIN TRANSACTION;" error:&v28];
    v10 = v28;
    v11 = v10;
    if (v9)
    {
      v12 = changesCopy[2](changesCopy, self);
      v13 = self->_connection;
      if (v12)
      {
        v27 = 0;
        v7 = [(PFSQLiteDatabaseConnection *)v13 executeQuery:@"COMMIT TRANSACTION;" error:&v27];
        v14 = v27;
        v15 = v14;
        if ((v7 & 1) == 0)
        {
          v16 = PBFLogSQLite(v14);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            [_PBFPosterExtensionDataStoreSQLiteDatabaseImpl performChanges:error:];
          }

          if (error)
          {
            v17 = v15;
            *error = v15;
          }
        }

        goto LABEL_24;
      }

      v26 = 0;
      v20 = [(PFSQLiteDatabaseConnection *)v13 executeQuery:@"ROLLBACK TRANSACTION;" error:&v26];
      v21 = v26;
      v22 = v21;
      if ((v20 & 1) == 0)
      {
        v23 = PBFLogSQLite(v21);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          [_PBFPosterExtensionDataStoreSQLiteDatabaseImpl performChanges:error:];
        }

        if (error)
        {
          v24 = v22;
          *error = v22;
        }
      }
    }

    else
    {
      v18 = PBFLogSQLite(v10);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [_PBFPosterExtensionDataStoreSQLiteDatabaseImpl performChanges:error:];
      }

      if (error)
      {
        v19 = v11;
        v7 = 0;
        *error = v11;
LABEL_24:

        goto LABEL_25;
      }
    }

    v7 = 0;
    goto LABEL_24;
  }

  if (error)
  {
    [MEMORY[0x277CCA9B8] pbf_generalErrorWithCode:3 userInfo:0];
    *error = v7 = 0;
  }

  else
  {
    v7 = 0;
  }

LABEL_25:

  return v7;
}

- (id)dataStoreMetadataWithError:(id *)error
{
  if ([(BSAtomicFlag *)self->_invalidationFlag getFlag])
  {
    if (error)
    {
      [MEMORY[0x277CCA9B8] pbf_generalErrorWithCode:3 userInfo:0];
      *error = v5 = 0;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x3032000000;
    v12 = __Block_byref_object_copy__8;
    v13 = __Block_byref_object_dispose__8;
    v14 = 0;
    v6 = [(PFSQLiteDatabaseConnection *)self->_connection prepareStatement:@"SELECT key, value FROM posterMetadata"];;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __77___PBFPosterExtensionDataStoreSQLiteDatabaseImpl_dataStoreMetadataWithError___block_invoke;
    v8[3] = &unk_2782C91F0;
    v8[4] = &v9;
    [v6 executeWithBindings:0 resultRowHandler:v8 error:error];
    v5 = v10[5];

    _Block_object_dispose(&v9, 8);
  }

  return v5;
}

- (id)roleIdentifiersWithError:(id *)error
{
  if ([(BSAtomicFlag *)self->_invalidationFlag getFlag])
  {
    if (error)
    {
      [MEMORY[0x277CCA9B8] pbf_generalErrorWithCode:3 userInfo:0];
      *error = v5 = 0;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x3032000000;
    v12 = __Block_byref_object_copy__8;
    v13 = __Block_byref_object_dispose__8;
    v14 = 0;
    v6 = [(PFSQLiteDatabaseConnection *)self->_connection prepareStatement:@"SELECT roleIdentifier FROM posterRoles"];;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __75___PBFPosterExtensionDataStoreSQLiteDatabaseImpl_roleIdentifiersWithError___block_invoke;
    v8[3] = &unk_2782C91F0;
    v8[4] = &v9;
    [v6 executeWithBindings:0 resultRowHandler:v8 error:error];
    v5 = v10[5];

    _Block_object_dispose(&v9, 8);
  }

  return v5;
}

- (id)extensionIdentifiersForRole:(id)role error:(id *)error
{
  v19[1] = *MEMORY[0x277D85DE8];
  roleCopy = role;
  if ([(BSAtomicFlag *)self->_invalidationFlag getFlag])
  {
    if (error)
    {
      [MEMORY[0x277CCA9B8] pbf_generalErrorWithCode:3 userInfo:0];
      *error = v7 = 0;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = __Block_byref_object_copy__8;
    v16 = __Block_byref_object_dispose__8;
    v17 = 0;
    v8 = [(PFSQLiteDatabaseConnection *)self->_connection prepareStatement:@"SELECT DISTINCT(providerId) as providerId FROM poster WHERE UUID IN (SELECT posterUUID FROM posterRoleMembership WHERE roleId = :roleIdentifier)"];;
    v18 = @":roleIdentifier";
    v19[0] = roleCopy;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __84___PBFPosterExtensionDataStoreSQLiteDatabaseImpl_extensionIdentifiersForRole_error___block_invoke;
    v11[3] = &unk_2782C91F0;
    v11[4] = &v12;
    [v8 executeWithBindings:v9 resultRowHandler:v11 error:error];

    v7 = v13[5];
    _Block_object_dispose(&v12, 8);
  }

  return v7;
}

- (id)attributeIdentifiersForPoster:(id)poster roleId:(id)id error:(id *)error
{
  v23[2] = *MEMORY[0x277D85DE8];
  posterCopy = poster;
  idCopy = id;
  if ([(BSAtomicFlag *)self->_invalidationFlag getFlag])
  {
    if (error)
    {
      [MEMORY[0x277CCA9B8] pbf_generalErrorWithCode:3 userInfo:0];
      *error = v10 = 0;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x3032000000;
    v19 = __Block_byref_object_copy__8;
    v20 = __Block_byref_object_dispose__8;
    v21 = 0;
    v11 = [(PFSQLiteDatabaseConnection *)self->_connection prepareStatement:@"SELECT DISTINCT(attributeIdentifier) as attributeIdentifier FROM posterAttributes WHERE posterUUID = :posterUUID AND roleId = :roleIdentifier AND attributeIdentifier != 'SELECTED'"];
    v23[0] = idCopy;
    v22[0] = @":roleIdentifier";
    v22[1] = @":posterUUID";
    uUIDString = [posterCopy UUIDString];
    v23[1] = uUIDString;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:2];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __93___PBFPosterExtensionDataStoreSQLiteDatabaseImpl_attributeIdentifiersForPoster_roleId_error___block_invoke;
    v15[3] = &unk_2782C91F0;
    v15[4] = &v16;
    [v11 executeWithBindings:v13 resultRowHandler:v15 error:error];

    v10 = v17[5];
    _Block_object_dispose(&v16, 8);
  }

  return v10;
}

- (id)posterUUIDsForExtensionIdentifier:(id)identifier role:(id)role error:(id *)error
{
  v22[2] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  roleCopy = role;
  if ([(BSAtomicFlag *)self->_invalidationFlag getFlag])
  {
    if (error)
    {
      [MEMORY[0x277CCA9B8] pbf_generalErrorWithCode:3 userInfo:0];
      *error = v10 = 0;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x3032000000;
    v18 = __Block_byref_object_copy__8;
    v19 = __Block_byref_object_dispose__8;
    v20 = 0;
    v11 = [(PFSQLiteDatabaseConnection *)self->_connection prepareStatement:@"SELECT UUID FROM poster WHERE providerId = :extensionIdentifier AND UUID IN (SELECT posterUUID FROM posterRoleMembership WHERE roleId = :roleIdentifier)"];;
    v21[0] = @":extensionIdentifier";
    v21[1] = @":roleIdentifier";
    v22[0] = identifierCopy;
    v22[1] = roleCopy;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:2];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __95___PBFPosterExtensionDataStoreSQLiteDatabaseImpl_posterUUIDsForExtensionIdentifier_role_error___block_invoke;
    v14[3] = &unk_2782C91F0;
    v14[4] = &v15;
    [v11 executeWithBindings:v12 resultRowHandler:v14 error:error];

    v10 = v16[5];
    _Block_object_dispose(&v15, 8);
  }

  return v10;
}

- (id)extensionIdentifierForPosterUUID:(id)d error:(id *)error
{
  v23[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  if ([(BSAtomicFlag *)self->_invalidationFlag getFlag])
  {
    if (error)
    {
      [MEMORY[0x277CCA9B8] pbf_generalErrorWithCode:3 userInfo:0];
      *error = v7 = 0;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x3032000000;
    v19 = __Block_byref_object_copy__8;
    v20 = __Block_byref_object_dispose__8;
    v21 = [(NSCache *)self->_providerForPosterUUIDCache objectForKey:dCopy];
    v8 = v17[5];
    if (v8)
    {
      v7 = v8;
    }

    else
    {
      v9 = [(PFSQLiteDatabaseConnection *)self->_connection prepareStatement:@"SELECT providerID from poster WHERE UUID = :posterUUID"];;
      v22 = @":posterUUID";
      uUIDString = [dCopy UUIDString];
      v23[0] = uUIDString;
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __89___PBFPosterExtensionDataStoreSQLiteDatabaseImpl_extensionIdentifierForPosterUUID_error___block_invoke;
      v15[3] = &unk_2782C91F0;
      v15[4] = &v16;
      [v9 executeWithBindings:v11 resultRowHandler:v15 error:error];

      v12 = v17[5];
      if (v12)
      {
        [(NSCache *)self->_providerForPosterUUIDCache setObject:v12 forKey:dCopy];
        v13 = v17[5];
      }

      else
      {
        v13 = 0;
      }

      v7 = v13;
    }

    _Block_object_dispose(&v16, 8);
  }

  return v7;
}

- (id)sortedPosterUUIDsForRole:(id)role error:(id *)error
{
  v20[1] = *MEMORY[0x277D85DE8];
  roleCopy = role;
  if ([(BSAtomicFlag *)self->_invalidationFlag getFlag])
  {
    if (error)
    {
      [MEMORY[0x277CCA9B8] pbf_generalErrorWithCode:3 userInfo:0];
      *error = v8 = 0;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    if (!roleCopy)
    {
      [_PBFPosterExtensionDataStoreSQLiteDatabaseImpl sortedPosterUUIDsForRole:a2 error:?];
    }

    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = __Block_byref_object_copy__8;
    v17 = __Block_byref_object_dispose__8;
    v18 = 0;
    v9 = [(PFSQLiteDatabaseConnection *)self->_connection prepareStatement:@"SELECT posterUUID FROM posterRoleMembership WHERE roleId = :roleIdentifier ORDER BY roleSortKey"];;
    v19 = @":roleIdentifier";
    v20[0] = roleCopy;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __81___PBFPosterExtensionDataStoreSQLiteDatabaseImpl_sortedPosterUUIDsForRole_error___block_invoke;
    v12[3] = &unk_2782C91F0;
    v12[4] = &v13;
    [v9 executeWithBindings:v10 resultRowHandler:v12 error:error];

    v8 = v14[5];
    _Block_object_dispose(&v13, 8);
  }

  return v8;
}

- (id)roleDisplayNamesForIdentifiers:(id)identifiers error:(id *)error
{
  identifiersCopy = identifiers;
  if ([(BSAtomicFlag *)self->_invalidationFlag getFlag])
  {
    if (error)
    {
      *error = [MEMORY[0x277CCA9B8] pbf_generalErrorWithCode:3 userInfo:0];
    }
  }

  else if ([identifiersCopy count])
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = __Block_byref_object_copy__8;
    v15 = __Block_byref_object_dispose__8;
    v16 = 0;
    v7 = [(PFSQLiteDatabaseConnection *)self->_connection prepareStatement:@"SELECT roleIdentifier, displayName FROM posterMetadata"];;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __87___PBFPosterExtensionDataStoreSQLiteDatabaseImpl_roleDisplayNamesForIdentifiers_error___block_invoke;
    v10[3] = &unk_2782C91F0;
    v10[4] = &v11;
    [v7 executeWithBindings:0 resultRowHandler:v10 error:error];
    v8 = v12[5];

    _Block_object_dispose(&v11, 8);
    goto LABEL_7;
  }

  v8 = MEMORY[0x277CBEC10];
LABEL_7:

  return v8;
}

- (BOOL)checkIfPosterUUIDs:(id)ds belongToRole:(id)role error:(id *)error
{
  v37[1] = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  roleCopy = role;
  if ([(BSAtomicFlag *)self->_invalidationFlag getFlag])
  {
    if (error)
    {
      [MEMORY[0x277CCA9B8] pbf_generalErrorWithCode:3 userInfo:0];
      *error = v11 = 0;
      goto LABEL_20;
    }

LABEL_16:
    v11 = 0;
    goto LABEL_20;
  }

  if (!roleCopy)
  {
    [_PBFPosterExtensionDataStoreSQLiteDatabaseImpl checkIfPosterUUIDs:a2 belongToRole:? error:?];
  }

  if (!dsCopy)
  {
    [_PBFPosterExtensionDataStoreSQLiteDatabaseImpl checkIfPosterUUIDs:a2 belongToRole:? error:?];
  }

  if (![dsCopy count])
  {
    goto LABEL_16;
  }

  v12 = objc_opt_new();
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __88___PBFPosterExtensionDataStoreSQLiteDatabaseImpl_checkIfPosterUUIDs_belongToRole_error___block_invoke;
  v33[3] = &unk_2782C9218;
  v13 = v12;
  v34 = v13;
  [dsCopy bs_each:v33];
  v14 = objc_opt_new();
  v15 = [(PFSQLiteDatabaseConnection *)self->_connection prepareStatement:@"SELECT posterUUID FROM posterRoleMembership WHERE roleId = :roleId"];;
  v36 = @":roleId";
  v37[0] = roleCopy;
  v11 = 1;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:&v36 count:1];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __88___PBFPosterExtensionDataStoreSQLiteDatabaseImpl_checkIfPosterUUIDs_belongToRole_error___block_invoke_2;
  v31[3] = &unk_2782C91C8;
  v17 = v14;
  v32 = v17;
  [v15 executeWithBindings:v16 resultRowHandler:v31 error:error];

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v18 = dsCopy;
  v19 = [v18 countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v19)
  {
    v20 = v19;
    v26 = v13;
    v21 = *v28;
    while (2)
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v28 != v21)
        {
          objc_enumerationMutation(v18);
        }

        uUIDString = [*(*(&v27 + 1) + 8 * i) UUIDString];
        v24 = [v17 containsObject:uUIDString];

        if (!v24)
        {
          v11 = 0;
          goto LABEL_18;
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v27 objects:v35 count:16];
      if (v20)
      {
        continue;
      }

      break;
    }

    v11 = 1;
LABEL_18:
    v13 = v26;
  }

LABEL_20:
  return v11;
}

- (id)selectedPosterUUIDForRole:(id)role error:(id *)error
{
  v21[3] = *MEMORY[0x277D85DE8];
  roleCopy = role;
  if ([(BSAtomicFlag *)self->_invalidationFlag getFlag])
  {
    if (error)
    {
      [MEMORY[0x277CCA9B8] pbf_generalErrorWithCode:3 userInfo:0];
      *error = v8 = 0;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    if (!roleCopy)
    {
      [_PBFPosterExtensionDataStoreSQLiteDatabaseImpl selectedPosterUUIDForRole:a2 error:?];
    }

    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy__8;
    v18 = __Block_byref_object_dispose__8;
    v19 = 0;
    v9 = [(PFSQLiteDatabaseConnection *)self->_connection prepareStatement:@"SELECT posterUUID FROM posterAttributes WHERE (roleId = :roleIdentifier AND attributeIdentifier = :attributeIdentifier AND attributePayload = :attributePayload) LIMIT 1"];;
    v20[0] = @":roleIdentifier";
    v20[1] = @":attributeIdentifier";
    v21[0] = roleCopy;
    v21[1] = @"SELECTED";
    v20[2] = @":attributePayload";
    v21[2] = &unk_282D0A4C8;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:3];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __82___PBFPosterExtensionDataStoreSQLiteDatabaseImpl_selectedPosterUUIDForRole_error___block_invoke;
    v13[3] = &unk_2782C91F0;
    v13[4] = &v14;
    [v9 executeWithBindings:v10 resultRowHandler:v13 error:error];

    if ([v15[5] length])
    {
      v11 = objc_alloc(MEMORY[0x277CCAD78]);
      v8 = [v11 initWithUUIDString:v15[5]];
    }

    else
    {
      v8 = 0;
    }

    _Block_object_dispose(&v14, 8);
  }

  return v8;
}

- (id)attributeForPoster:(id)poster roleId:(id)id attributeId:(id)attributeId error:(id *)error
{
  v27[3] = *MEMORY[0x277D85DE8];
  posterCopy = poster;
  idCopy = id;
  attributeIdCopy = attributeId;
  if ([(BSAtomicFlag *)self->_invalidationFlag getFlag])
  {
    if (error)
    {
      [MEMORY[0x277CCA9B8] pbf_generalErrorWithCode:3 userInfo:0];
      *error = v14 = 0;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    if (!posterCopy)
    {
      [_PBFPosterExtensionDataStoreSQLiteDatabaseImpl attributeForPoster:a2 roleId:? attributeId:? error:?];
    }

    if (!idCopy)
    {
      [_PBFPosterExtensionDataStoreSQLiteDatabaseImpl attributeForPoster:a2 roleId:? attributeId:? error:?];
    }

    if (!attributeIdCopy)
    {
      [_PBFPosterExtensionDataStoreSQLiteDatabaseImpl attributeForPoster:a2 roleId:? attributeId:? error:?];
    }

    v26[0] = @":posterUUID";
    uUIDString = [posterCopy UUIDString];
    v27[0] = uUIDString;
    v27[1] = idCopy;
    v26[1] = @":roleIdentifier";
    v26[2] = @":attributeIdentifier";
    v27[2] = attributeIdCopy;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:3];

    v17 = [(PFSQLiteDatabaseConnection *)self->_connection prepareStatement:@"SELECT attributePayload FROM posterAttributes WHERE (roleId = :roleIdentifier AND attributeIdentifier = :attributeIdentifier AND posterUUID = :posterUUID) LIMIT 1"];;
    v20 = 0;
    v21 = &v20;
    v22 = 0x3032000000;
    v23 = __Block_byref_object_copy__8;
    v24 = __Block_byref_object_dispose__8;
    v25 = 0;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __94___PBFPosterExtensionDataStoreSQLiteDatabaseImpl_attributeForPoster_roleId_attributeId_error___block_invoke;
    v19[3] = &unk_2782C91F0;
    v19[4] = &v20;
    [v17 executeWithBindings:v16 resultRowHandler:v19 error:error];
    v14 = v21[5];
    _Block_object_dispose(&v20, 8);
  }

  return v14;
}

- (id)attributesForPoster:(id)poster roleId:(id)id attributeIdentifiers:(id)identifiers error:(id *)error
{
  v33[2] = *MEMORY[0x277D85DE8];
  posterCopy = poster;
  idCopy = id;
  identifiersCopy = identifiers;
  if ([(BSAtomicFlag *)self->_invalidationFlag getFlag])
  {
    if (error)
    {
      [MEMORY[0x277CCA9B8] pbf_generalErrorWithCode:3 userInfo:0];
      *error = v14 = 0;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    if (!posterCopy)
    {
      [_PBFPosterExtensionDataStoreSQLiteDatabaseImpl attributesForPoster:a2 roleId:? attributeIdentifiers:? error:?];
    }

    if (!idCopy)
    {
      [_PBFPosterExtensionDataStoreSQLiteDatabaseImpl attributesForPoster:a2 roleId:? attributeIdentifiers:? error:?];
    }

    if (!identifiersCopy)
    {
      [_PBFPosterExtensionDataStoreSQLiteDatabaseImpl attributesForPoster:a2 roleId:? attributeIdentifiers:? error:?];
    }

    v26 = 0;
    v27 = &v26;
    v28 = 0x3032000000;
    v29 = __Block_byref_object_copy__8;
    v30 = __Block_byref_object_dispose__8;
    v31 = 0;
    allObjects = [identifiersCopy allObjects];
    v16 = [allObjects sortedArrayUsingSelector:sel_compare_];
    v17 = [v16 bs_map:&__block_literal_global_29];

    v18 = MEMORY[0x277CCACA8];
    v19 = [v17 componentsJoinedByString:{@", "}];
    v20 = objc_msgSend(v18, "stringWithFormat:", @"SELECT attributeIdentifier, attributePayload FROM posterAttributes WHERE (roleId = :roleIdentifier AND posterUUID = :posterUUID AND attributeIdentifier IN (%@)"), v19;

    v32[0] = @":posterUUID";
    uUIDString = [posterCopy UUIDString];
    v32[1] = @":roleIdentifier";
    v33[0] = uUIDString;
    v33[1] = idCopy;
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:2];

    v23 = [(PFSQLiteDatabaseConnection *)self->_connection prepareStatement:v20];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __104___PBFPosterExtensionDataStoreSQLiteDatabaseImpl_attributesForPoster_roleId_attributeIdentifiers_error___block_invoke_2;
    v25[3] = &unk_2782C91F0;
    v25[4] = &v26;
    [v23 executeWithBindings:v22 resultRowHandler:v25 error:error];
    v14 = [v27[5] copy];

    _Block_object_dispose(&v26, 8);
  }

  return v14;
}

- (BOOL)addRole:(id)role displayName:(id)name error:(id *)error
{
  v16[2] = *MEMORY[0x277D85DE8];
  roleCopy = role;
  nameCopy = name;
  if ([(BSAtomicFlag *)self->_invalidationFlag getFlag])
  {
    if (error)
    {
      [MEMORY[0x277CCA9B8] pbf_generalErrorWithCode:3 userInfo:0];
      *error = v11 = 0;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    if (!roleCopy)
    {
      [_PBFPosterExtensionDataStoreSQLiteDatabaseImpl addRole:a2 displayName:? error:?];
    }

    if (!nameCopy)
    {
      [_PBFPosterExtensionDataStoreSQLiteDatabaseImpl addRole:a2 displayName:? error:?];
    }

    v12 = [(PFSQLiteDatabaseConnection *)self->_connection prepareStatement:@"INSERT INTO posterRoles VALUES(:roleIdentifier, :displayName)"];;
    v15[0] = @":roleIdentifier";
    v15[1] = @":displayName";
    v16[0] = roleCopy;
    v16[1] = nameCopy;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];
    v11 = [v12 executeWithBindings:v13 resultRowHandler:0 error:error];
  }

  return v11;
}

- (BOOL)removeRole:(id)role error:(id *)error
{
  v13[1] = *MEMORY[0x277D85DE8];
  roleCopy = role;
  if ([(BSAtomicFlag *)self->_invalidationFlag getFlag])
  {
    if (error)
    {
      [MEMORY[0x277CCA9B8] pbf_generalErrorWithCode:3 userInfo:0];
      *error = v8 = 0;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    if (!roleCopy)
    {
      [_PBFPosterExtensionDataStoreSQLiteDatabaseImpl removeRole:a2 error:?];
    }

    v9 = [(PFSQLiteDatabaseConnection *)self->_connection prepareStatement:@"DELETE FROM posterRoles WHERE roleIdentifier = :roleIdentifier"];;
    v12 = @":roleIdentifier";
    v13[0] = roleCopy;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    v8 = [v9 executeWithBindings:v10 resultRowHandler:0 error:error];
  }

  return v8;
}

- (BOOL)addPosterUUID:(id)d provider:(id)provider error:(id *)error
{
  v17[2] = *MEMORY[0x277D85DE8];
  dCopy = d;
  providerCopy = provider;
  if ([(BSAtomicFlag *)self->_invalidationFlag getFlag])
  {
    if (error)
    {
      [MEMORY[0x277CCA9B8] pbf_generalErrorWithCode:3 userInfo:0];
      *error = v11 = 0;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    if (!dCopy)
    {
      [_PBFPosterExtensionDataStoreSQLiteDatabaseImpl addPosterUUID:a2 provider:? error:?];
    }

    if (!providerCopy)
    {
      [_PBFPosterExtensionDataStoreSQLiteDatabaseImpl addPosterUUID:a2 provider:? error:?];
    }

    v12 = [(PFSQLiteDatabaseConnection *)self->_connection prepareStatement:@"INSERT INTO poster (UUID, providerId) VALUES(:posterUUID, :provider)"];;
    v16[0] = @":posterUUID";
    uUIDString = [dCopy UUIDString];
    v16[1] = @":provider";
    v17[0] = uUIDString;
    v17[1] = providerCopy;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];
    v11 = [v12 executeWithBindings:v14 resultRowHandler:0 error:error];
  }

  return v11;
}

- (BOOL)removePosterUUID:(id)d error:(id *)error
{
  v14[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  if ([(BSAtomicFlag *)self->_invalidationFlag getFlag])
  {
    if (error)
    {
      [MEMORY[0x277CCA9B8] pbf_generalErrorWithCode:3 userInfo:0];
      *error = v8 = 0;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    if (!dCopy)
    {
      [_PBFPosterExtensionDataStoreSQLiteDatabaseImpl removePosterUUID:a2 error:?];
    }

    v9 = [(PFSQLiteDatabaseConnection *)self->_connection prepareStatement:@"DELETE FROM poster WHERE UUID = :posterUUID"];;
    v13 = @":posterUUID";
    uUIDString = [dCopy UUIDString];
    v14[0] = uUIDString;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    v8 = [v9 executeWithBindings:v11 resultRowHandler:0 error:error];
  }

  return v8;
}

- (BOOL)assignPosterUUID:(id)d toRole:(id)role error:(id *)error
{
  v17[3] = *MEMORY[0x277D85DE8];
  dCopy = d;
  roleCopy = role;
  if ([(BSAtomicFlag *)self->_invalidationFlag getFlag])
  {
    if (error)
    {
      [MEMORY[0x277CCA9B8] pbf_generalErrorWithCode:3 userInfo:0];
      *error = v11 = 0;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    if (!dCopy)
    {
      [_PBFPosterExtensionDataStoreSQLiteDatabaseImpl assignPosterUUID:a2 toRole:? error:?];
    }

    if (!roleCopy)
    {
      [_PBFPosterExtensionDataStoreSQLiteDatabaseImpl assignPosterUUID:a2 toRole:? error:?];
    }

    v12 = [(PFSQLiteDatabaseConnection *)self->_connection prepareStatement:@"INSERT INTO posterRoleMembership VALUES(:posterUUID, :roleIdentifier1, IFNULL((SELECT MAX(roleSortKey) + 1 FROM posterRoleMembership WHERE roleId = :roleIdentifier2), 1))"];;
    v16[0] = @":posterUUID";
    uUIDString = [dCopy UUIDString];
    v17[0] = uUIDString;
    v17[1] = roleCopy;
    v16[1] = @":roleIdentifier1";
    v16[2] = @":roleIdentifier2";
    v17[2] = roleCopy;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:3];
    v11 = [v12 executeWithBindings:v14 resultRowHandler:0 error:error];
  }

  return v11;
}

- (BOOL)unassignPosterUUID:(id)d fromRole:(id)role error:(id *)error
{
  v17[2] = *MEMORY[0x277D85DE8];
  dCopy = d;
  roleCopy = role;
  if ([(BSAtomicFlag *)self->_invalidationFlag getFlag])
  {
    if (error)
    {
      [MEMORY[0x277CCA9B8] pbf_generalErrorWithCode:3 userInfo:0];
      *error = v11 = 0;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    if (!dCopy)
    {
      [_PBFPosterExtensionDataStoreSQLiteDatabaseImpl unassignPosterUUID:a2 fromRole:? error:?];
    }

    if (!roleCopy)
    {
      [_PBFPosterExtensionDataStoreSQLiteDatabaseImpl unassignPosterUUID:a2 fromRole:? error:?];
    }

    v12 = [(PFSQLiteDatabaseConnection *)self->_connection prepareStatement:@"DELETE FROM posterRoleMembership WHERE roleId = :roleIdentifier AND posterUUID = :posterUUID"];;
    v16[0] = @":posterUUID";
    uUIDString = [dCopy UUIDString];
    v16[1] = @":roleIdentifier";
    v17[0] = uUIDString;
    v17[1] = roleCopy;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];
    v11 = [v12 executeWithBindings:v14 resultRowHandler:0 error:error];
  }

  return v11;
}

- (BOOL)mutateSortOrder:(id)order roleId:(id)id error:(id *)error
{
  v63 = *MEMORY[0x277D85DE8];
  orderCopy = order;
  idCopy = id;
  if ([(BSAtomicFlag *)self->_invalidationFlag getFlag])
  {
    if (error)
    {
      [MEMORY[0x277CCA9B8] pbf_generalErrorWithCode:3 userInfo:0];
      *error = v9 = 0;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v34 = idCopy;
    errorCopy = error;
    v10 = [(_PBFPosterExtensionDataStoreSQLiteDatabaseImpl *)self sortedPosterUUIDsForRole:idCopy error:0];
    v11 = [v10 mutableCopy];

    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v12 = orderCopy;
    v13 = [v12 countByEnumeratingWithState:&v54 objects:v62 count:16];
    if (v13)
    {
      v14 = *v55;
LABEL_6:
      v15 = 0;
      while (1)
      {
        if (*v55 != v14)
        {
          objc_enumerationMutation(v12);
        }

        v16 = *(*(&v54 + 1) + 8 * v15);
        if (([v11 containsObject:v16] & 1) == 0)
        {
          break;
        }

        if (v13 == ++v15)
        {
          v13 = [v12 countByEnumeratingWithState:&v54 objects:v62 count:16];
          if (v13)
          {
            goto LABEL_6;
          }

          goto LABEL_12;
        }
      }

      if (!errorCopy)
      {
        v9 = 0;
        goto LABEL_41;
      }

      v60 = @"missingUUID";
      uUIDString = [v16 UUIDString];
      v17 = uUIDString;
      v31 = @"(null)";
      if (uUIDString)
      {
        v31 = uUIDString;
      }

      v61 = v31;
      v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v61 forKeys:&v60 count:1];
      *errorCopy = _PBFPosterExtensionDataStoreSQLiteDatabaseError(1, 0, @"newSortOrder contained UUIDs that the database did not, suggesting an out-of-order commit sequence", v32);

      v9 = 0;
    }

    else
    {
LABEL_12:

      v12 = [v12 mutableCopy];
      v17 = objc_opt_new();
      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v18 = v11;
      v19 = [v18 countByEnumeratingWithState:&v50 objects:v59 count:16];
      if (v19)
      {
        v20 = *v51;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v51 != v20)
            {
              objc_enumerationMutation(v18);
            }

            v22 = *(*(&v50 + 1) + 8 * i);
            if (([v12 containsObject:v22] & 1) == 0)
            {
              [v17 addObject:v22];
            }
          }

          v19 = [v18 countByEnumeratingWithState:&v50 objects:v59 count:16];
        }

        while (v19);
      }

      if ([v17 count])
      {
        array = [v17 array];
        v24 = [array sortedArrayUsingComparator:&__block_literal_global_402];

        v48 = 0u;
        v49 = 0u;
        v46 = 0u;
        v47 = 0u;
        v25 = v24;
        v26 = [v25 countByEnumeratingWithState:&v46 objects:v58 count:16];
        if (v26)
        {
          v27 = *v47;
          do
          {
            for (j = 0; j != v26; ++j)
            {
              if (*v47 != v27)
              {
                objc_enumerationMutation(v25);
              }

              [v12 addObject:*(*(&v46 + 1) + 8 * j)];
            }

            v26 = [v25 countByEnumeratingWithState:&v46 objects:v58 count:16];
          }

          while (v26);
        }
      }

      v40 = 0;
      v41 = &v40;
      v42 = 0x3032000000;
      v43 = __Block_byref_object_copy__8;
      v44 = __Block_byref_object_dispose__8;
      v45 = 0;
      v37[0] = MEMORY[0x277D85DD0];
      v37[1] = 3221225472;
      v37[2] = __79___PBFPosterExtensionDataStoreSQLiteDatabaseImpl_mutateSortOrder_roleId_error___block_invoke_2;
      v37[3] = &unk_2782C9280;
      v37[4] = self;
      v38 = v34;
      v39 = &v40;
      [v12 enumerateObjectsUsingBlock:v37];
      v29 = v41[5];
      v9 = v29 == 0;
      if (errorCopy && v29)
      {
        *errorCopy = v29;
      }

      _Block_object_dispose(&v40, 8);
    }

LABEL_41:
    idCopy = v34;
  }

  return v9;
}

- (BOOL)mutateDataStoreMetadataForKey:(id)key value:(id)value error:(id *)error
{
  v19[4] = *MEMORY[0x277D85DE8];
  keyCopy = key;
  valueCopy = value;
  if ([(BSAtomicFlag *)self->_invalidationFlag getFlag])
  {
    if (error)
    {
      [MEMORY[0x277CCA9B8] pbf_generalErrorWithCode:3 userInfo:0];
      *error = v11 = 0;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    if (!keyCopy)
    {
      [_PBFPosterExtensionDataStoreSQLiteDatabaseImpl mutateDataStoreMetadataForKey:a2 value:? error:?];
    }

    connection = self->_connection;
    if (valueCopy)
    {
      v13 = @"INSERT INTO posterMetadata VALUES(:key1, :value1) ON CONFLICT(key) DO UPDATE SET value=:value2 WHERE key=:key2;";
    }

    else
    {
      v13 = @"DELETE FROM posterMetadata WHERE key = :key1;";
    }

    if (valueCopy)
    {
      v14 = valueCopy;
    }

    else
    {
      v14 = &stru_282CD3858;
    }

    v15 = [(PFSQLiteDatabaseConnection *)connection prepareStatement:v13];
    v18[0] = @":key1";
    v18[1] = @":key2";
    v19[0] = keyCopy;
    v19[1] = keyCopy;
    v18[2] = @":value1";
    v18[3] = @":value2";
    v19[2] = v14;
    v19[3] = v14;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:4];
    v11 = [v15 executeWithBindings:v16 resultRowHandler:0 error:error];
  }

  return v11;
}

- (BOOL)markPosterUUIDAsSelected:(id)selected roleId:(id)id error:(id *)error
{
  v17[6] = *MEMORY[0x277D85DE8];
  selectedCopy = selected;
  idCopy = id;
  if ([(BSAtomicFlag *)self->_invalidationFlag getFlag])
  {
    if (error)
    {
      [MEMORY[0x277CCA9B8] pbf_generalErrorWithCode:3 userInfo:0];
      *error = v11 = 0;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    if (!selectedCopy)
    {
      [_PBFPosterExtensionDataStoreSQLiteDatabaseImpl markPosterUUIDAsSelected:a2 roleId:? error:?];
    }

    if (!idCopy)
    {
      [_PBFPosterExtensionDataStoreSQLiteDatabaseImpl markPosterUUIDAsSelected:a2 roleId:? error:?];
    }

    v16[0] = @":posterUUID";
    uUIDString = [selectedCopy UUIDString];
    v17[0] = uUIDString;
    v17[1] = idCopy;
    v16[1] = @":roleIdentifier1";
    v16[2] = @":roleIdentifier2";
    v17[2] = idCopy;
    v17[3] = @"SELECTED";
    v16[3] = @":attributeIdentifier1";
    v16[4] = @":attributeIdentifier2";
    v16[5] = @":attributePayload";
    v17[4] = @"SELECTED";
    v17[5] = &unk_282D0A4C8;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:6];

    v14 = [(PFSQLiteDatabaseConnection *)self->_connection prepareStatement:@"            DELETE FROM posterAttributes WHERE (roleId = :roleIdentifier1 AND attributeIdentifier = :attributeIdentifier1)                INSERT INTO posterAttributes VALUES(:posterUUID, :roleIdentifier2, :attributeIdentifier2, :attributePayload);"];;
    v11 = [v14 executeWithBindings:v13 resultRowHandler:0 error:error];
  }

  return v11;
}

- (BOOL)mutateAttributeForPoster:(id)poster roleId:(id)id attributeId:(id)attributeId attributePayload:(id)payload error:(id *)error
{
  v26[7] = *MEMORY[0x277D85DE8];
  posterCopy = poster;
  idCopy = id;
  attributeIdCopy = attributeId;
  payloadCopy = payload;
  if ([(BSAtomicFlag *)self->_invalidationFlag getFlag])
  {
    if (error)
    {
      [MEMORY[0x277CCA9B8] pbf_generalErrorWithCode:3 userInfo:0];
      *error = v17 = 0;
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    if (!posterCopy)
    {
      [_PBFPosterExtensionDataStoreSQLiteDatabaseImpl mutateAttributeForPoster:a2 roleId:? attributeId:? attributePayload:? error:?];
    }

    if (!idCopy)
    {
      [_PBFPosterExtensionDataStoreSQLiteDatabaseImpl mutateAttributeForPoster:a2 roleId:? attributeId:? attributePayload:? error:?];
    }

    if (!attributeIdCopy)
    {
      [_PBFPosterExtensionDataStoreSQLiteDatabaseImpl mutateAttributeForPoster:a2 roleId:? attributeId:? attributePayload:? error:?];
    }

    v25[0] = @":posterUUID1";
    uUIDString = [posterCopy UUIDString];
    v26[0] = uUIDString;
    v26[1] = idCopy;
    v25[1] = @":roleIdentifier1";
    v25[2] = @":attributeIdentifier1";
    v26[2] = attributeIdCopy;
    v25[3] = @":posterUUID2";
    uUIDString2 = [posterCopy UUIDString];
    v26[3] = uUIDString2;
    v26[4] = idCopy;
    v25[4] = @":roleIdentifier2";
    v25[5] = @":attributeIdentifier2";
    v26[5] = attributeIdCopy;
    v25[6] = @":attributePayload";
    data = payloadCopy;
    if (!payloadCopy)
    {
      data = [MEMORY[0x277CBEA90] data];
    }

    v26[6] = data;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:7];
    if (payloadCopy)
    {
      v22 = @"DELETE FROM posterAttributes WHERE (roleId = :roleIdentifier1 AND attributeIdentifier = :attributeIdentifier1 AND posterUUID = :posterUUID1); INSERT INTO posterAttributes VALUES(:posterUUID2, :roleIdentifier2, :attributeIdentifier2, :attributePayload);";
    }

    else
    {

      v22 = @"DELETE FROM posterAttributes WHERE (roleId = :roleIdentifier1 AND attributeIdentifier = :attributeIdentifier1 AND posterUUID = :posterUUID1);";
    }

    v23 = [(PFSQLiteDatabaseConnection *)self->_connection prepareStatement:v22];
    v17 = [v23 executeWithBindings:v21 resultRowHandler:0 error:error];
  }

  return v17;
}

- (void)cancel
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  _os_log_fault_impl(&dword_21B526000, v0, OS_LOG_TYPE_FAULT, "[%p] wal checkpoint failed: %{public}@", v1, 0x16u);
}

- (void)invalidate
{
  if ([(BSAtomicFlag *)self->_invalidationFlag setFlag:1])
  {
    [(_PBFPosterExtensionDataStoreSQLiteDatabaseImpl *)self cancel];
    connection = self->_connection;

    [(PFSQLiteDatabaseConnection *)connection invalidate];
  }
}

- (void)initWithURL:options:error:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)setup
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)validateDatabaseWithError:.cold.1()
{
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_5_4();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

- (void)validateDatabaseWithError:.cold.2()
{
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_5_4();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

- (void)validateDatabaseWithError:(uint64_t)a1 .cold.3(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 134218242;
  v3 = a1;
  v4 = 2114;
  v5 = @"version string was nil";
  _os_log_error_impl(&dword_21B526000, a2, OS_LOG_TYPE_ERROR, "[%p] failed validateDatabaseWithError with error: %{public}@", &v2, 0x16u);
}

- (void)performChanges:error:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)performChanges:error:.cold.2()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)sortedPosterUUIDsForRole:(char *)a1 error:.cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"roleIdentifier"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v11, v12);
  }

  v10 = v2;
  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)checkIfPosterUUIDs:(char *)a1 belongToRole:error:.cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"posterUUIDs"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)checkIfPosterUUIDs:(char *)a1 belongToRole:error:.cold.2(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"roleId"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)selectedPosterUUIDForRole:(char *)a1 error:.cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"roleIdentifier"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v11, v12);
  }

  v10 = v2;
  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)attributeForPoster:(char *)a1 roleId:attributeId:error:.cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"attributeIdentifier"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v11, v12);
  }

  v10 = v2;
  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)attributeForPoster:(char *)a1 roleId:attributeId:error:.cold.2(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"roleIdentifier"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v11, v12);
  }

  v10 = v2;
  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)attributeForPoster:(char *)a1 roleId:attributeId:error:.cold.3(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"posterUUID"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v11, v12);
  }

  v10 = v2;
  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)attributesForPoster:(char *)a1 roleId:attributeIdentifiers:error:.cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"attributeIdentifiers"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v11, v12);
  }

  v10 = v2;
  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)attributesForPoster:(char *)a1 roleId:attributeIdentifiers:error:.cold.2(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"roleIdentifier"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v11, v12);
  }

  v10 = v2;
  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)attributesForPoster:(char *)a1 roleId:attributeIdentifiers:error:.cold.3(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"posterUUID"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v11, v12);
  }

  v10 = v2;
  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)addRole:(char *)a1 displayName:error:.cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"displayName"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)addRole:(char *)a1 displayName:error:.cold.2(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"roleIdentifier"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)removeRole:(char *)a1 error:.cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"roleIdentifier"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)addPosterUUID:(char *)a1 provider:error:.cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"provider"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)addPosterUUID:(char *)a1 provider:error:.cold.2(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"posterUUID"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)removePosterUUID:(char *)a1 error:.cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"posterUUID"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)assignPosterUUID:(char *)a1 toRole:error:.cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"roleIdentifier"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)assignPosterUUID:(char *)a1 toRole:error:.cold.2(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"posterUUID"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)unassignPosterUUID:(char *)a1 fromRole:error:.cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"roleIdentifier"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)unassignPosterUUID:(char *)a1 fromRole:error:.cold.2(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"posterUUID"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)mutateDataStoreMetadataForKey:(char *)a1 value:error:.cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"key"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)markPosterUUIDAsSelected:(char *)a1 roleId:error:.cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"roleIdentifier"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)markPosterUUIDAsSelected:(char *)a1 roleId:error:.cold.2(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"posterUUID"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)mutateAttributeForPoster:(char *)a1 roleId:attributeId:attributePayload:error:.cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"attributeIdentifier"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)mutateAttributeForPoster:(char *)a1 roleId:attributeId:attributePayload:error:.cold.2(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"roleIdentifier"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)mutateAttributeForPoster:(char *)a1 roleId:attributeId:attributePayload:error:.cold.3(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"posterUUID"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end