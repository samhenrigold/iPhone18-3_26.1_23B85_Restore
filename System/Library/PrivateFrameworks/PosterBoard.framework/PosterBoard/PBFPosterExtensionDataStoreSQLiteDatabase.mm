@interface PBFPosterExtensionDataStoreSQLiteDatabase
- (BOOL)checkIfPosterUUIDs:(id)ds belongToRole:(id)role error:(id *)error;
- (BOOL)performChanges:(id)changes error:(id *)error;
- (BOOL)validateDatabaseWithError:(id *)error;
- (PBFPosterExtensionDataStoreSQLiteDatabase)initWithURL:(id)l options:(unint64_t)options error:(id *)error;
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
- (id)sortedPosterUUIDsForRole:(id)role error:(id *)error;
- (id)underlyingReadonlyDatabaseConnection;
- (unint64_t)version;
- (void)cancel;
- (void)invalidate;
@end

@implementation PBFPosterExtensionDataStoreSQLiteDatabase

- (PBFPosterExtensionDataStoreSQLiteDatabase)initWithURL:(id)l options:(unint64_t)options error:(id *)error
{
  v72 = *MEMORY[0x277D85DE8];
  lCopy = l;
  if (!lCopy)
  {
    [PBFPosterExtensionDataStoreSQLiteDatabase initWithURL:a2 options:? error:?];
  }

  v10 = lCopy;
  v65.receiver = self;
  v65.super_class = PBFPosterExtensionDataStoreSQLiteDatabase;
  v11 = [(PBFPosterExtensionDataStoreSQLiteDatabase *)&v65 init];
  if (!v11)
  {
    goto LABEL_48;
  }

  v12 = [v10 copy];
  URL = v11->_URL;
  v11->_URL = v12;

  v11->_options = options;
  [(PBFPosterExtensionDataStoreSQLiteDatabase *)v11 setCheckpointWALOnInvalidate:1];
  v11->_lock._os_unfair_lock_opaque = 0;
  v11->_readwriteLock._os_unfair_lock_opaque = 0;
  v14 = MEMORY[0x277CBEBC0];
  path = [v10 path];
  v16 = [path stringByAppendingString:@"-shm"];
  v17 = [v14 fileURLWithPath:v16];

  v18 = MEMORY[0x277CBEBC0];
  path2 = [v10 path];
  v20 = [path2 stringByAppendingString:@"-wal"];
  v21 = [v18 fileURLWithPath:v20];

  errorCopy = error;
  v54 = v11;
  if ((options & 0xA) != 0)
  {
    v22 = [_PBFPosterExtensionDataStoreSQLiteDatabaseImpl alloc];
    if ((options & 2) != 0)
    {
      v23 = 6;
    }

    else
    {
      v23 = 2;
    }

    if ((options & 4) != 0)
    {
      v24 = 1;
    }

    else
    {
      v24 = v23;
    }

    v64 = 0;
    v25 = [(_PBFPosterExtensionDataStoreSQLiteDatabaseImpl *)v22 initWithURL:v10 options:v24 error:&v64];
    v26 = v64;
    v27 = v26;
    if (((options & 8) != 0 || (options & 2) != 0) && !v26)
    {
      setup = [(_PBFPosterExtensionDataStoreSQLiteDatabaseImpl *)v25 setup];

      v27 = setup;
    }

    [(_PBFPosterExtensionDataStoreSQLiteDatabaseImpl *)v25 invalidate];
    goto LABEL_15;
  }

  if ((options & 4) != 0)
  {
    if (![v17 checkResourceIsReachableAndReturnError:0] || (objc_msgSend(v21, "checkResourceIsReachableAndReturnError:", 0) & 1) == 0)
    {
      v63 = 0;
      v25 = [[_PBFPosterExtensionDataStoreSQLiteDatabaseImpl alloc] initWithURL:v10 options:2 error:&v63];
      [(_PBFPosterExtensionDataStoreSQLiteDatabaseImpl *)v25 invalidate];
LABEL_15:

      goto LABEL_16;
    }
  }

  else if ((options & 1) == 0)
  {
    v50 = _PBFPosterExtensionDataStoreSQLiteDatabaseError(1, 0, 0, 0);
    goto LABEL_16;
  }

  v50 = 0;
LABEL_16:
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v52 = v21;
  v70[0] = v17;
  v70[1] = v21;
  v55 = v10;
  v70[2] = v10;
  v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v70 count:{3, v50}];
  v30 = [v29 countByEnumeratingWithState:&v59 objects:v71 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v60;
    do
    {
      for (i = 0; i != v31; ++i)
      {
        if (*v60 != v32)
        {
          objc_enumerationMutation(v29);
        }

        v34 = *(*(&v59 + 1) + 8 * i);
        pf_allowSuspendWithOpenFileHandle = [v34 pf_allowSuspendWithOpenFileHandle];
        v36 = pf_allowSuspendWithOpenFileHandle;
        v37 = PBFLogSQLite(pf_allowSuspendWithOpenFileHandle);
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          v67 = v34;
          v68 = 1024;
          LODWORD(v69) = v36;
          _os_log_impl(&dword_21B526000, v37, OS_LOG_TYPE_DEFAULT, "Database file at %{public}@ allowSuspendWithOpenFileHandle: %{BOOL}u", buf, 0x12u);
        }

        if ((v36 & 1) == 0)
        {
          v58 = 0;
          v38 = [v34 pf_setAllowSuspendWithOpenFileHandle:1 error:&v58];
          v39 = v58;
          v40 = PBFLogSQLite(v39);
          v41 = v40;
          if (v38)
          {
            if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
            {
              pf_allowSuspendWithOpenFileHandle2 = [v34 pf_allowSuspendWithOpenFileHandle];
              *buf = 138543618;
              v67 = v34;
              v68 = 1024;
              LODWORD(v69) = pf_allowSuspendWithOpenFileHandle2;
              _os_log_impl(&dword_21B526000, v41, OS_LOG_TYPE_DEFAULT, "Database file at %{public}@ was updated to allowSuspendWithOpenFileHandle: %{BOOL}u", buf, 0x12u);
            }
          }

          else if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543618;
            v67 = v34;
            v68 = 2114;
            v69 = v39;
            _os_log_error_impl(&dword_21B526000, v41, OS_LOG_TYPE_ERROR, "Database file at %{public}@ failed to update allowSuspendWithOpenFileHandle! Error: %{public}@", buf, 0x16u);
          }
        }
      }

      v31 = [v29 countByEnumeratingWithState:&v59 objects:v71 count:16];
    }

    while (v31);
  }

  v11 = v54;
  v10 = v55;
  v43 = v51;
  if (!v51)
  {
    v57 = 0;
    v44 = [[_PBFPosterExtensionDataStoreSQLiteDatabaseImpl alloc] initWithURL:v55 options:1 error:&v57];
    v43 = v57;
    lock_readonlyImpl = v54->_lock_readonlyImpl;
    v54->_lock_readonlyImpl = v44;

    if (!v43)
    {
      v56 = 0;
      [(PBFPosterExtensionDataStoreSQLiteDatabase *)v54 validateDatabaseWithError:&v56];
      v48 = v56;
      if (v48)
      {
        v43 = v48;
        if (!errorCopy)
        {
          goto LABEL_36;
        }

        goto LABEL_35;
      }

LABEL_48:
      v47 = v11;
      goto LABEL_49;
    }
  }

  if (errorCopy)
  {
LABEL_35:
    v46 = v43;
    *errorCopy = v43;
  }

LABEL_36:
  [(PBFPosterExtensionDataStoreSQLiteDatabase *)v54 invalidate];

  v47 = 0;
LABEL_49:

  return v47;
}

- (unint64_t)version
{
  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_invalidated)
  {
    version = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    version = [(_PBFPosterExtensionDataStoreSQLiteDatabaseImpl *)self->_lock_readonlyImpl version];
  }

  os_unfair_lock_unlock(&self->_lock);
  return version;
}

- (id)underlyingReadonlyDatabaseConnection
{
  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_invalidated)
  {
    connection = 0;
  }

  else
  {
    connection = [(_PBFPosterExtensionDataStoreSQLiteDatabaseImpl *)self->_lock_readonlyImpl connection];
  }

  os_unfair_lock_unlock(&self->_lock);

  return connection;
}

- (BOOL)validateDatabaseWithError:(id *)error
{
  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_invalidated)
  {
    if (error)
    {
      _PBFPosterExtensionDataStoreSQLiteDatabaseError(3, 0, 0, 0);
      *error = v5 = 0;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = [(_PBFPosterExtensionDataStoreSQLiteDatabaseImpl *)self->_lock_readonlyImpl validateDatabaseWithError:error];
  }

  os_unfair_lock_unlock(&self->_lock);
  return v5;
}

- (void)invalidate
{
  os_unfair_lock_lock(&self->_lock);
  [(_PBFPosterExtensionDataStoreSQLiteDatabaseImpl *)self->_lock_readonlyImpl invalidate];
  lock_readonlyImpl = self->_lock_readonlyImpl;
  self->_lock_readonlyImpl = 0;

  self->_lock_invalidated = 1;

  os_unfair_lock_unlock(&self->_lock);
}

- (id)dataStoreMetadataWithError:(id *)error
{
  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_invalidated)
  {
    if (error)
    {
      _PBFPosterExtensionDataStoreSQLiteDatabaseError(3, 0, 0, 0);
      *error = v5 = 0;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = [(_PBFPosterExtensionDataStoreSQLiteDatabaseImpl *)self->_lock_readonlyImpl dataStoreMetadataWithError:error];
  }

  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (id)roleIdentifiersWithError:(id *)error
{
  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_invalidated)
  {
    if (error)
    {
      _PBFPosterExtensionDataStoreSQLiteDatabaseError(3, 0, 0, 0);
      *error = v5 = 0;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = [(_PBFPosterExtensionDataStoreSQLiteDatabaseImpl *)self->_lock_readonlyImpl roleIdentifiersWithError:error];
  }

  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (id)extensionIdentifiersForRole:(id)role error:(id *)error
{
  roleCopy = role;
  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_invalidated)
  {
    if (error)
    {
      _PBFPosterExtensionDataStoreSQLiteDatabaseError(3, 0, 0, 0);
      *error = v7 = 0;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = [(_PBFPosterExtensionDataStoreSQLiteDatabaseImpl *)self->_lock_readonlyImpl extensionIdentifiersForRole:roleCopy error:error];
  }

  os_unfair_lock_unlock(&self->_lock);

  return v7;
}

- (id)attributeIdentifiersForPoster:(id)poster roleId:(id)id error:(id *)error
{
  posterCopy = poster;
  idCopy = id;
  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_invalidated)
  {
    if (error)
    {
      _PBFPosterExtensionDataStoreSQLiteDatabaseError(3, 0, 0, 0);
      *error = v10 = 0;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = [(_PBFPosterExtensionDataStoreSQLiteDatabaseImpl *)self->_lock_readonlyImpl attributeIdentifiersForPoster:posterCopy roleId:idCopy error:error];
  }

  os_unfair_lock_unlock(&self->_lock);

  return v10;
}

- (id)extensionIdentifierForPosterUUID:(id)d error:(id *)error
{
  dCopy = d;
  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_invalidated)
  {
    if (error)
    {
      _PBFPosterExtensionDataStoreSQLiteDatabaseError(3, 0, 0, 0);
      *error = v7 = 0;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = [(_PBFPosterExtensionDataStoreSQLiteDatabaseImpl *)self->_lock_readonlyImpl extensionIdentifierForPosterUUID:dCopy error:error];
  }

  os_unfair_lock_unlock(&self->_lock);

  return v7;
}

- (id)posterUUIDsForExtensionIdentifier:(id)identifier role:(id)role error:(id *)error
{
  identifierCopy = identifier;
  roleCopy = role;
  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_invalidated)
  {
    if (error)
    {
      _PBFPosterExtensionDataStoreSQLiteDatabaseError(3, 0, 0, 0);
      *error = v10 = 0;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = [(_PBFPosterExtensionDataStoreSQLiteDatabaseImpl *)self->_lock_readonlyImpl posterUUIDsForExtensionIdentifier:identifierCopy role:roleCopy error:error];
  }

  os_unfair_lock_unlock(&self->_lock);

  return v10;
}

- (id)sortedPosterUUIDsForRole:(id)role error:(id *)error
{
  roleCopy = role;
  if (!roleCopy)
  {
    [PBFPosterExtensionDataStoreSQLiteDatabase sortedPosterUUIDsForRole:a2 error:?];
  }

  v8 = roleCopy;
  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_invalidated)
  {
    if (error)
    {
      _PBFPosterExtensionDataStoreSQLiteDatabaseError(3, 0, 0, 0);
      *error = v9 = 0;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = [(_PBFPosterExtensionDataStoreSQLiteDatabaseImpl *)self->_lock_readonlyImpl sortedPosterUUIDsForRole:v8 error:error];
  }

  os_unfair_lock_unlock(&self->_lock);

  return v9;
}

- (id)roleDisplayNamesForIdentifiers:(id)identifiers error:(id *)error
{
  identifiersCopy = identifiers;
  if (!identifiersCopy)
  {
    [PBFPosterExtensionDataStoreSQLiteDatabase roleDisplayNamesForIdentifiers:a2 error:?];
  }

  v8 = identifiersCopy;
  if ([identifiersCopy count])
  {
    os_unfair_lock_lock(&self->_lock);
    if (self->_lock_invalidated)
    {
      if (error)
      {
        _PBFPosterExtensionDataStoreSQLiteDatabaseError(3, 0, 0, 0);
        *error = v9 = 0;
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = [(_PBFPosterExtensionDataStoreSQLiteDatabaseImpl *)self->_lock_readonlyImpl roleDisplayNamesForIdentifiers:v8 error:error];
    }

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v9 = MEMORY[0x277CBEC10];
  }

  return v9;
}

- (BOOL)checkIfPosterUUIDs:(id)ds belongToRole:(id)role error:(id *)error
{
  dsCopy = ds;
  roleCopy = role;
  if (!roleCopy)
  {
    [PBFPosterExtensionDataStoreSQLiteDatabase checkIfPosterUUIDs:a2 belongToRole:? error:?];
  }

  v11 = roleCopy;
  if ([dsCopy count])
  {
    os_unfair_lock_lock(&self->_lock);
    if (self->_lock_invalidated)
    {
      if (error)
      {
        _PBFPosterExtensionDataStoreSQLiteDatabaseError(3, 0, 0, 0);
        *error = v12 = 0;
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = [(_PBFPosterExtensionDataStoreSQLiteDatabaseImpl *)self->_lock_readonlyImpl checkIfPosterUUIDs:dsCopy belongToRole:v11 error:error];
    }

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)selectedPosterUUIDForRole:(id)role error:(id *)error
{
  roleCopy = role;
  if (!roleCopy)
  {
    [PBFPosterExtensionDataStoreSQLiteDatabase selectedPosterUUIDForRole:a2 error:?];
  }

  v8 = roleCopy;
  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_invalidated)
  {
    if (error)
    {
      _PBFPosterExtensionDataStoreSQLiteDatabaseError(3, 0, 0, 0);
      *error = v9 = 0;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = [(_PBFPosterExtensionDataStoreSQLiteDatabaseImpl *)self->_lock_readonlyImpl selectedPosterUUIDForRole:v8 error:error];
  }

  os_unfair_lock_unlock(&self->_lock);

  return v9;
}

- (id)attributeForPoster:(id)poster roleId:(id)id attributeId:(id)attributeId error:(id *)error
{
  posterCopy = poster;
  idCopy = id;
  attributeIdCopy = attributeId;
  if (!idCopy)
  {
    [PBFPosterExtensionDataStoreSQLiteDatabase attributeForPoster:a2 roleId:? attributeId:? error:?];
  }

  v14 = attributeIdCopy;
  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_invalidated)
  {
    if (error)
    {
      _PBFPosterExtensionDataStoreSQLiteDatabaseError(3, 0, 0, 0);
      *error = v15 = 0;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = [(_PBFPosterExtensionDataStoreSQLiteDatabaseImpl *)self->_lock_readonlyImpl attributeForPoster:posterCopy roleId:idCopy attributeId:v14 error:error];
  }

  os_unfair_lock_unlock(&self->_lock);

  return v15;
}

- (id)attributesForPoster:(id)poster roleId:(id)id attributeIdentifiers:(id)identifiers error:(id *)error
{
  posterCopy = poster;
  idCopy = id;
  identifiersCopy = identifiers;
  if (!idCopy)
  {
    [PBFPosterExtensionDataStoreSQLiteDatabase attributesForPoster:a2 roleId:? attributeIdentifiers:? error:?];
  }

  v14 = identifiersCopy;
  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_invalidated)
  {
    if (error)
    {
      _PBFPosterExtensionDataStoreSQLiteDatabaseError(3, 0, 0, 0);
      *error = v15 = 0;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = [(_PBFPosterExtensionDataStoreSQLiteDatabaseImpl *)self->_lock_readonlyImpl attributesForPoster:posterCopy roleId:idCopy attributeIdentifiers:v14 error:error];
  }

  os_unfair_lock_unlock(&self->_lock);

  return v15;
}

- (BOOL)performChanges:(id)changes error:(id *)error
{
  changesCopy = changes;
  if (!changesCopy)
  {
    [PBFPosterExtensionDataStoreSQLiteDatabase performChanges:a2 error:?];
  }

  v8 = changesCopy;
  os_unfair_lock_lock(&self->_lock);
  lock_invalidated = self->_lock_invalidated;
  os_unfair_lock_unlock(&self->_lock);
  if (lock_invalidated)
  {
    v10 = 0;
    goto LABEL_20;
  }

  v11 = _os_activity_create(&dword_21B526000, "[PBFPosterExtensionDataStoreSQLiteDatabase performChanges:error:]", MEMORY[0x277D86218], OS_ACTIVITY_FLAG_DETACHED);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v11, &state);
  os_unfair_lock_lock(&self->_readwriteLock);
  if ((self->_options & 4) != 0)
  {
    v16 = _PBFPosterExtensionDataStoreSQLiteDatabaseError(1, 0, @"readonly database", 0);
    v10 = 0;
    goto LABEL_16;
  }

  v12 = [_PBFPosterExtensionDataStoreSQLiteDatabaseImpl alloc];
  URL = self->_URL;
  v22 = 0;
  v14 = [(_PBFPosterExtensionDataStoreSQLiteDatabaseImpl *)v12 initWithURL:URL options:2 error:&v22];
  v15 = v22;
  [(_PBFPosterExtensionDataStoreSQLiteDatabaseImpl *)v14 setCheckpointWALOnInvalidate:[(PBFPosterExtensionDataStoreSQLiteDatabase *)self checkpointWALOnInvalidate]];
  if (!v15)
  {
    if (v14)
    {
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __66__PBFPosterExtensionDataStoreSQLiteDatabase_performChanges_error___block_invoke;
      v20[3] = &unk_2782C91A0;
      v21 = v8;
      v19 = 0;
      v10 = [(_PBFPosterExtensionDataStoreSQLiteDatabaseImpl *)v14 performChanges:v20 error:&v19];
      v16 = v19;

      if (v10)
      {
LABEL_14:
        [(_PBFPosterExtensionDataStoreSQLiteDatabaseImpl *)v14 invalidate];
        goto LABEL_15;
      }
    }

    else
    {
      v10 = 0;
      v16 = 0;
    }

    if (!v16)
    {
      v16 = _PBFPosterExtensionDataStoreSQLiteDatabaseError(4, 0, 0, 0);
    }

    goto LABEL_14;
  }

  v16 = v15;
  v10 = 0;
LABEL_15:

LABEL_16:
  os_activity_scope_leave(&state);
  os_unfair_lock_unlock(&self->_readwriteLock);
  if (error && v16)
  {
    v17 = v16;
    *error = v16;
  }

LABEL_20:
  return v10;
}

- (void)cancel
{
  os_unfair_lock_lock(&self->_lock);
  [(_PBFPosterExtensionDataStoreSQLiteDatabaseImpl *)self->_lock_readonlyImpl cancel];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)initWithURL:(char *)a1 options:error:.cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"databaseURL"];
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

- (void)sortedPosterUUIDsForRole:(char *)a1 error:.cold.1(char *a1)
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

- (void)roleDisplayNamesForIdentifiers:(char *)a1 error:.cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"roleIdentifiers"];
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

- (void)checkIfPosterUUIDs:(char *)a1 belongToRole:error:.cold.1(char *a1)
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

- (void)attributeForPoster:(char *)a1 roleId:attributeId:error:.cold.1(char *a1)
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

- (void)attributesForPoster:(char *)a1 roleId:attributeIdentifiers:error:.cold.1(char *a1)
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

- (void)performChanges:(char *)a1 error:.cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"changeHandler"];
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