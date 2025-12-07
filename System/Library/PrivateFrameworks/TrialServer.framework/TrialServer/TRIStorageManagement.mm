@interface TRIStorageManagement
- (BOOL)_clearContainerStorage;
- (BOOL)_clearStorage;
- (BOOL)_readDeviceIdWithSchemaVersion:(unsigned int)version intoData:(id *)data;
- (BOOL)_readSchemaVersion:(unsigned int *)version fileExists:(BOOL *)exists;
- (BOOL)_runNamespaceDatabaseBlock:(id)block;
- (BOOL)_writeDeviceIdWithData:(id)data schemaVersion:(unsigned int)version;
- (BOOL)_writeSchemaVersion:(unsigned int)version;
- (BOOL)prepareTrialStorage;
- (BOOL)requestTrialStorageResetOnNextLaunch;
- (void)_eliminateAllMAAssets;
- (void)_notifyNamespaceUpdated;
@end

@implementation TRIStorageManagement

- (BOOL)prepareTrialStorage
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = os_transaction_create();
  legacySchemaVersion = [MEMORY[0x277D737E0] legacySchemaVersion];
  v23 = 0;
  v4 = 0;
  if ([(TRIStorageManagement *)self _readSchemaVersion:&legacySchemaVersion fileExists:&v23])
  {
    v5 = TRILogCategory_Server();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = legacySchemaVersion;
      _os_log_impl(&dword_26F567000, v5, OS_LOG_TYPE_DEFAULT, "TRIStorageManagement on-disk schema version is %u.", buf, 8u);
    }

    v6 = legacySchemaVersion;
    if (v6 == [MEMORY[0x277D737E0] currentSchemaVersion])
    {
LABEL_5:
      v4 = 1;
      goto LABEL_26;
    }

    v7 = legacySchemaVersion;
    resetStorageRequestSchemaVersion = [MEMORY[0x277D737E0] resetStorageRequestSchemaVersion];
    v9 = TRILogCategory_Server();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (v7 == resetStorageRequestSchemaVersion)
    {
      if (!v10)
      {
        goto LABEL_12;
      }

      *buf = 67109120;
      *&buf[4] = legacySchemaVersion;
      v11 = "TRIStorageManagement schema version %u indicates an explicit request for storage reset; will attempt to clear user data.";
      v12 = v9;
      v13 = 8;
    }

    else
    {
      if (!v10)
      {
        goto LABEL_12;
      }

      v14 = legacySchemaVersion;
      currentSchemaVersion = [MEMORY[0x277D737E0] currentSchemaVersion];
      *buf = 67109376;
      *&buf[4] = v14;
      v28 = 1024;
      v29 = currentSchemaVersion;
      v11 = "TRIStorageManagement schema version has changed (%u --> %u); will attempt to clear user data.";
      v12 = v9;
      v13 = 14;
    }

    _os_log_impl(&dword_26F567000, v12, OS_LOG_TYPE_DEFAULT, v11, buf, v13);
LABEL_12:

    *buf = 0;
    if (![(TRIStorageManagement *)self _readDeviceIdWithSchemaVersion:legacySchemaVersion intoData:buf])
    {
      goto LABEL_25;
    }

    if (v23 == 1)
    {
      [(TRIStorageManagement *)self _eliminateAllMAAssets];
    }

    _clearStorage = [(TRIStorageManagement *)self _clearStorage];
    v17 = _clearStorage;
    v18 = *buf;
    if (*buf)
    {
      if (_clearStorage)
      {
        currentSchemaVersion2 = [MEMORY[0x277D737E0] currentSchemaVersion];
        v18 = *buf;
      }

      else
      {
        currentSchemaVersion2 = legacySchemaVersion;
      }

      [(TRIStorageManagement *)self _writeDeviceIdWithData:v18 schemaVersion:currentSchemaVersion2];
    }

    if (!v17 || (-[TRIStorageManagement _notifyNamespaceUpdated](self, "_notifyNamespaceUpdated"), !-[TRIStorageManagement _writeSchemaVersion:](self, "_writeSchemaVersion:", [MEMORY[0x277D737E0] currentSchemaVersion])))
    {
LABEL_25:

      v4 = 0;
      goto LABEL_26;
    }

    v20 = TRILogCategory_Server();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      currentSchemaVersion3 = [MEMORY[0x277D737E0] currentSchemaVersion];
      *v25 = 67109120;
      v26 = currentSchemaVersion3;
      _os_log_impl(&dword_26F567000, v20, OS_LOG_TYPE_DEFAULT, "TRIStorageManagement user data cleared successfully; schema version is now %u.", v25, 8u);
    }

    goto LABEL_5;
  }

LABEL_26:

  return v4;
}

- (BOOL)requestTrialStorageResetOnNextLaunch
{
  resetStorageRequestSchemaVersion = [MEMORY[0x277D737E0] resetStorageRequestSchemaVersion];

  return [(TRIStorageManagement *)self _writeSchemaVersion:resetStorageRequestSchemaVersion];
}

- (BOOL)_readSchemaVersion:(unsigned int *)version fileExists:(BOOL *)exists
{
  v40 = *MEMORY[0x277D85DE8];
  if (!version)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIStorageManagement.m" lineNumber:101 description:{@"Invalid parameter not satisfying: %@", @"version"}];
  }

  v6 = objc_autoreleasePoolPush();
  v7 = objc_alloc(MEMORY[0x277CBEA90]);
  schemaVersionFile = [MEMORY[0x277D737E0] schemaVersionFile];
  v33 = 0;
  v9 = [v7 initWithContentsOfFile:schemaVersionFile options:1 error:&v33];
  v10 = v33;

  if (v9)
  {
    v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v9 encoding:4];
    *exists = 1;
    if (v11)
    {
      v32 = -1;
      if (![MEMORY[0x277D73748] convertFromString:v11 usingBase:10 toI64:&v32] || (legacySchemaVersion2 = v32, HIDWORD(v32)))
      {
        v13 = TRILogCategory_Server();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          schemaVersionFile2 = [MEMORY[0x277D737E0] schemaVersionFile];
          legacySchemaVersion = [MEMORY[0x277D737E0] legacySchemaVersion];
          *buf = 138543874;
          v35 = v11;
          v36 = 2114;
          v37 = schemaVersionFile2;
          v38 = 1024;
          v39 = legacySchemaVersion;
          _os_log_error_impl(&dword_26F567000, v13, OS_LOG_TYPE_ERROR, "Could not parse string %{public}@ from schema version file %{public}@ as an unsigned int; treating as version %u.", buf, 0x1Cu);
        }

        legacySchemaVersion2 = [MEMORY[0x277D737E0] legacySchemaVersion];
      }

      *version = legacySchemaVersion2;
    }

    else
    {
      v16 = TRILogCategory_Server();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        schemaVersionFile3 = [MEMORY[0x277D737E0] schemaVersionFile];
        legacySchemaVersion3 = [MEMORY[0x277D737E0] legacySchemaVersion];
        *buf = 138543618;
        v35 = schemaVersionFile3;
        v36 = 1024;
        LODWORD(v37) = legacySchemaVersion3;
        _os_log_error_impl(&dword_26F567000, v16, OS_LOG_TYPE_ERROR, "Schema version file %{public}@ contains non-UTF-8 content; treating as version %u.", buf, 0x12u);
      }

      *version = [MEMORY[0x277D737E0] legacySchemaVersion];
    }

LABEL_17:
    v17 = 1;
    goto LABEL_25;
  }

  domain = [v10 domain];
  v15 = domain;
  if (domain == *MEMORY[0x277CCA050])
  {
    code = [v10 code];

    if (code == 260)
    {
      *exists = 0;
      v19 = TRILogCategory_Server();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        schemaVersionFile4 = [MEMORY[0x277D737E0] schemaVersionFile];
        legacySchemaVersion4 = [MEMORY[0x277D737E0] legacySchemaVersion];
        *buf = 138543618;
        v35 = schemaVersionFile4;
        v36 = 1024;
        LODWORD(v37) = legacySchemaVersion4;
        _os_log_impl(&dword_26F567000, v19, OS_LOG_TYPE_DEFAULT, "Schema version file %{public}@ is not present; treating as version %u.", buf, 0x12u);
      }

      *version = [MEMORY[0x277D737E0] legacySchemaVersion];
      goto LABEL_17;
    }
  }

  else
  {
  }

  v22 = TRILogCategory_Server();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    schemaVersionFile5 = [MEMORY[0x277D737E0] schemaVersionFile];
    *buf = 138543618;
    v35 = schemaVersionFile5;
    v36 = 2114;
    v37 = v10;
    _os_log_error_impl(&dword_26F567000, v22, OS_LOG_TYPE_ERROR, "Schema version file %{public}@ is unreadable: %{public}@", buf, 0x16u);
  }

  v17 = 0;
LABEL_25:

  objc_autoreleasePoolPop(v6);
  return v17;
}

- (BOOL)_writeSchemaVersion:(unsigned int)version
{
  v3 = *&version;
  v24 = *MEMORY[0x277D85DE8];
  v6 = objc_autoreleasePoolPush();
  v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%u\n", v3];
  v8 = [v7 dataUsingEncoding:4];
  if (!v8)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIStorageManagement.m" lineNumber:151 description:@"Failed to generate UTF-8 representation of schemaVersion"];
  }

  schemaVersionFile = [MEMORY[0x277D737E0] schemaVersionFile];
  stringByDeletingLastPathComponent = [schemaVersionFile stringByDeletingLastPathComponent];

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  [defaultManager createDirectoryAtPath:stringByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:0];

  schemaVersionFile2 = [MEMORY[0x277D737E0] schemaVersionFile];
  v19 = 0;
  v13 = [v8 writeToFile:schemaVersionFile2 options:268435457 error:&v19];
  v14 = v19;

  if ((v13 & 1) == 0)
  {
    v15 = TRILogCategory_Server();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      schemaVersionFile3 = [MEMORY[0x277D737E0] schemaVersionFile];
      *buf = 138543618;
      v21 = schemaVersionFile3;
      v22 = 2114;
      v23 = v14;
      _os_log_error_impl(&dword_26F567000, v15, OS_LOG_TYPE_ERROR, "Failed to write schema version file %{public}@: %{public}@", buf, 0x16u);
    }
  }

  objc_autoreleasePoolPop(v6);
  return v13;
}

- (void)_eliminateAllMAAssets
{
  v2 = +[TRIMobileAssetUtil eliminableAssetTypes];
  v3 = TRILogCategory_Server();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_26F567000, v3, OS_LOG_TYPE_DEFAULT, "Attempting to eliminate all MA assets that exist on the device", v4, 2u);
  }

  [v2 enumerateObjectsUsingBlock:&__block_literal_global_34];
}

void __45__TRIStorageManagement__eliminateAllMAAssets__block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = [MEMORY[0x277D289E0] eliminateAllForAssetTypeSync:v2];
  if (v3)
  {
    v4 = TRILogCategory_Server();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 138543618;
      v6 = v2;
      v7 = 2114;
      v8 = v3;
      _os_log_error_impl(&dword_26F567000, v4, OS_LOG_TYPE_ERROR, "Failed to eliminate asset type %{public}@ : %{public}@", &v5, 0x16u);
    }
  }
}

- (BOOL)_clearStorage
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = TRILogCategory_Server();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_26F567000, v3, OS_LOG_TYPE_DEBUG, "attempting to delete Trial data dirs from containers", buf, 2u);
  }

  if (![(TRIStorageManagement *)self _clearContainerStorage])
  {
    v4 = TRILogCategory_Server();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26F567000, v4, OS_LOG_TYPE_ERROR, "failed to delete Trial data dirs from all containers", buf, 2u);
    }
  }

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  mEMORY[0x277D737E0] = [MEMORY[0x277D737E0] sharedPaths];
  trialRootDir = [mEMORY[0x277D737E0] trialRootDir];
  v18 = 0;
  v8 = [defaultManager triForceRemoveItemAtPath:trialRootDir error:&v18];
  v9 = v18;

  if (v8)
  {
    goto LABEL_8;
  }

  domain = [v9 domain];
  v12 = domain;
  if (domain == *MEMORY[0x277CCA050])
  {
    code = [v9 code];

    if (code == 4)
    {
LABEL_8:
      v10 = 1;
      goto LABEL_15;
    }
  }

  else
  {
  }

  v14 = TRILogCategory_Server();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    mEMORY[0x277D737E0]2 = [MEMORY[0x277D737E0] sharedPaths];
    trialRootDir2 = [mEMORY[0x277D737E0]2 trialRootDir];
    *buf = 138543618;
    v20 = trialRootDir2;
    v21 = 2114;
    v22 = v9;
    _os_log_error_impl(&dword_26F567000, v14, OS_LOG_TYPE_ERROR, "Failed to remove Trial data directory %{public}@: %{public}@", buf, 0x16u);
  }

  v10 = 0;
LABEL_15:

  return v10;
}

- (BOOL)_runNamespaceDatabaseBlock:(id)block
{
  blockCopy = block;
  mEMORY[0x277D737E0] = [MEMORY[0x277D737E0] sharedPaths];
  v6 = [[TRIDatabase alloc] initWithPaths:mEMORY[0x277D737E0] storageManagement:self];
  if (v6)
  {
    v7 = [[TRINamespaceDatabase alloc] initWithDatabase:v6];
    v8 = blockCopy[2](blockCopy, v7);
    [(TRIDatabase *)v6 closePermanently];
  }

  else
  {
    v9 = TRILogCategory_Server();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *v11 = 0;
      _os_log_error_impl(&dword_26F567000, v9, OS_LOG_TYPE_ERROR, "failed to open database.  Cannot delete container Trial data directories", v11, 2u);
    }

    v8 = 0;
  }

  return v8;
}

- (BOOL)_clearContainerStorage
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __46__TRIStorageManagement__clearContainerStorage__block_invoke;
  v32[3] = &unk_279DE3420;
  v4 = v3;
  v33 = v4;
  v5 = [(TRIStorageManagement *)self _runNamespaceDatabaseBlock:v32];
  if ([v4 count])
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    obj = v4;
    v6 = [obj countByEnumeratingWithState:&v28 objects:v38 count:16];
    if (v6)
    {
      v7 = v6;
      v24 = v4;
      v8 = *v29;
      v25 = *MEMORY[0x277CCA050];
      while (1)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v29 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v28 + 1) + 8 * i);
          v11 = objc_autoreleasePoolPush();
          mEMORY[0x277D737E0] = [MEMORY[0x277D737E0] sharedPaths];
          v13 = mEMORY[0x277D737E0];
          if (mEMORY[0x277D737E0])
          {
            trialRootDir = [mEMORY[0x277D737E0] trialRootDir];
            v15 = TRILogCategory_Server();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138543362;
              v35 = trialRootDir;
              _os_log_debug_impl(&dword_26F567000, v15, OS_LOG_TYPE_DEBUG, "removing container Trial data directory %{public}@", buf, 0xCu);
            }

            defaultManager = [MEMORY[0x277CCAA00] defaultManager];
            v27 = 0;
            v17 = [defaultManager triForceRemoveItemAtPath:trialRootDir error:&v27];
            identifier = v27;

            if (v17)
            {
              goto LABEL_19;
            }

            domain = [identifier domain];
            v20 = domain;
            if (domain != v25)
            {

LABEL_16:
              v22 = TRILogCategory_Server();
              if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
              {
                *buf = 138543618;
                v35 = trialRootDir;
                v36 = 2114;
                v37 = identifier;
                _os_log_error_impl(&dword_26F567000, v22, OS_LOG_TYPE_ERROR, "Failed to remove container Trial data directory %{public}@: %{public}@", buf, 0x16u);
              }

              v5 = 0;
              goto LABEL_19;
            }

            code = [identifier code];

            if (code != 4)
            {
              goto LABEL_16;
            }
          }

          else
          {
            trialRootDir = TRILogCategory_Server();
            if (!os_log_type_enabled(trialRootDir, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_20;
            }

            identifier = [v10 identifier];
            *buf = 138543362;
            v35 = identifier;
            _os_log_impl(&dword_26F567000, trialRootDir, OS_LOG_TYPE_DEFAULT, "not clearing Trial data from missing app container: %{public}@", buf, 0xCu);
          }

LABEL_19:

LABEL_20:
          objc_autoreleasePoolPop(v11);
        }

        v7 = [obj countByEnumeratingWithState:&v28 objects:v38 count:16];
        if (!v7)
        {
          v4 = v24;
          break;
        }
      }
    }
  }

  else
  {
    obj = TRILogCategory_Server();
    if (os_log_type_enabled(obj, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_26F567000, obj, OS_LOG_TYPE_DEBUG, "no container Trial data directories to delete", buf, 2u);
    }
  }

  return v5;
}

uint64_t __46__TRIStorageManagement__clearContainerStorage__block_invoke(uint64_t a1, void *a2)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __46__TRIStorageManagement__clearContainerStorage__block_invoke_2;
  v5[3] = &unk_279DDF748;
  v6 = *(a1 + 32);
  v3 = [a2 enumerateDynamicNamespaceRecordsWithBlock:v5];

  return v3;
}

void __46__TRIStorageManagement__clearContainerStorage__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 appContainer];
  [v2 addObject:v3];
}

- (BOOL)_readDeviceIdWithSchemaVersion:(unsigned int)version intoData:(id *)data
{
  v5 = *&version;
  v24 = *MEMORY[0x277D85DE8];
  if (!data)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIStorageManagement.m" lineNumber:262 description:{@"Invalid parameter not satisfying: %@", @"data"}];
  }

  if (([MEMORY[0x277D737A8] callerIsRunningFromSystemContext] & 1) == 0)
  {
    v7 = [objc_alloc(MEMORY[0x277D737E0]) initWithSchemaVersion:v5 forUser:getuid() forTrialdSystem:0];
    v8 = objc_alloc(MEMORY[0x277CBEA90]);
    deviceIdentifierFile = [v7 deviceIdentifierFile];
    v21 = 0;
    v10 = [v8 initWithContentsOfFile:deviceIdentifierFile options:0 error:&v21];
    v11 = v21;

    if (v10)
    {
      v12 = v10;
      v13 = *data;
      *data = v12;
LABEL_7:
      v6 = 1;
LABEL_15:

      return v6;
    }

    domain = [v11 domain];
    v15 = domain;
    if (domain == *MEMORY[0x277CCA050])
    {
      code = [v11 code];

      if (code == 260)
      {
        v13 = *data;
        *data = 0;
        goto LABEL_7;
      }
    }

    else
    {
    }

    v13 = TRILogCategory_Server();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v23 = v11;
      _os_log_error_impl(&dword_26F567000, v13, OS_LOG_TYPE_ERROR, "Failed to read subject identifier prior to storage clear: %{public}@", buf, 0xCu);
    }

    v6 = 0;
    goto LABEL_15;
  }

  return 1;
}

- (BOOL)_writeDeviceIdWithData:(id)data schemaVersion:(unsigned int)version
{
  v4 = *&version;
  v21 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  if (!dataCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIStorageManagement.m" lineNumber:289 description:{@"Invalid parameter not satisfying: %@", @"data"}];
  }

  if ([MEMORY[0x277D737A8] callerIsRunningFromSystemContext])
  {
    v8 = 1;
  }

  else
  {
    v9 = [objc_alloc(MEMORY[0x277D737E0]) initWithSchemaVersion:v4 forUser:getuid() forTrialdSystem:0];
    deviceIdentifierFile = [v9 deviceIdentifierFile];
    stringByDeletingLastPathComponent = [deviceIdentifierFile stringByDeletingLastPathComponent];

    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    [defaultManager createDirectoryAtPath:stringByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:0];

    deviceIdentifierFile2 = [v9 deviceIdentifierFile];
    v18 = 0;
    v8 = [dataCopy writeToFile:deviceIdentifierFile2 options:1 error:&v18];
    v14 = v18;

    if ((v8 & 1) == 0)
    {
      v15 = TRILogCategory_Server();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v20 = v14;
        _os_log_error_impl(&dword_26F567000, v15, OS_LOG_TYPE_ERROR, "Failed to restore subject identifier after storage clear: %{public}@", buf, 0xCu);
      }
    }
  }

  return v8;
}

- (void)_notifyNamespaceUpdated
{
  v2 = TRILogCategory_Server();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v7 = 0;
    _os_log_debug_impl(&dword_26F567000, v2, OS_LOG_TYPE_DEBUG, "Starting notification of namespaces after schema version update", v7, 2u);
  }

  v3 = MEMORY[0x277D73750];
  mEMORY[0x277D737E0] = [MEMORY[0x277D737E0] sharedPaths];
  namespaceDescriptorsDefaultDir = [mEMORY[0x277D737E0] namespaceDescriptorsDefaultDir];
  v6 = [v3 descriptorsForDirectory:namespaceDescriptorsDefaultDir filterBlock:0];

  [v6 enumerateObjectsUsingBlock:&__block_literal_global_346_0];
}

void __47__TRIStorageManagement__notifyNamespaceUpdated__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D73790];
  v3 = [a2 namespaceName];
  [v2 notifyUpdateForNamespaceName:v3];
}

@end