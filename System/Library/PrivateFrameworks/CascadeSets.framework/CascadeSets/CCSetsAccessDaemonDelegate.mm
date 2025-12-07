@interface CCSetsAccessDaemonDelegate
+ (id)_loadResourceGenerationCounter:(BOOL)counter baseSystemPath:(id)path error:(id *)error;
+ (id)defaultInstance;
+ (id)readDefaultLocalDeviceUUID:(id *)d;
- (BOOL)_validateCurrentLocalDeviceUUIDsAgainstContainerInfo:(id)info container:(id)container;
- (BOOL)_validateCurrentSchemaAgainstContainerInfo:(id)info container:(id)container;
- (BOOL)_validateReadOnlyContainer:(id)container;
- (BOOL)loadOrCreateResourceGenerationCounter;
- (BOOL)prepareContainer:(id)container;
- (BOOL)prepareResource:(id)resource withMode:(unint64_t)mode inContainer:(id)container;
- (BOOL)setLastMaintenanceDateForResourceContainer:(id)container date:(id)date error:(id *)error;
- (BOOL)teardownResource:(id)resource inContainer:(id)container;
- (CCSetsAccessDaemonDelegate)initWithBaseSystemPath:(id)path notifySourcesOnReset:(BOOL)reset;
- (id)_loadOrCreateContainerInfo:(id)info readOnly:(BOOL)only;
- (id)_resetSetsDirectory:(id)directory;
- (id)_storedLocalIDSIdentifierInContainer:(id)container;
- (id)incrementResourceGenerationCounter;
- (id)lastMaintenanceDateForResourceContainer:(id)container;
- (id)setsDirectoryInContainer:(id)container;
- (void)incrementResourceGenerationCounter;
- (void)loadOrCreateResourceGenerationCounter;
@end

@implementation CCSetsAccessDaemonDelegate

- (BOOL)loadOrCreateResourceGenerationCounter
{
  v25 = *MEMORY[0x1E69E9840];
  p_resourceGenerationCounter = &self->_resourceGenerationCounter;
  if (self->_resourceGenerationCounter)
  {
    return 1;
  }

  v5 = objc_opt_class();
  baseSystemPath = self->_baseSystemPath;
  v20 = 0;
  v7 = [v5 _loadResourceGenerationCounter:0 baseSystemPath:baseSystemPath error:&v20];
  v8 = v20;
  v9 = v8;
  if (v7)
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 0;
  }

  v3 = v10;
  if (v10)
  {
    objc_storeStrong(p_resourceGenerationCounter, v7);
    fileUUID = [(BMFileBackedCounter *)self->_resourceGenerationCounter fileUUID];
    localDeviceUUID = self->_localDeviceUUID;
    self->_localDeviceUUID = fileUUID;

    v17 = __biome_log_for_category();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v13 = objc_opt_class();
      v14 = self->_localDeviceUUID;
      v15 = v13;
      uUIDString = [(NSUUID *)v14 UUIDString];
      *buf = 138412546;
      v22 = v13;
      v23 = 2112;
      v24 = uUIDString;
      _os_log_impl(&dword_1B6DB2000, v17, OS_LOG_TYPE_INFO, "%@ resourceGeneration counter loaded with deviceUUID: %@", buf, 0x16u);
    }
  }

  else
  {
    v17 = __biome_log_for_category();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      [CCSetsAccessDaemonDelegate loadOrCreateResourceGenerationCounter];
    }
  }

  return v3;
}

+ (id)defaultInstance
{
  v2 = [self alloc];
  v3 = [MEMORY[0x1E698E9C8] biomeDirectoryForDomain:1];
  v4 = [v2 initWithBaseSystemPath:v3 notifySourcesOnReset:1];

  return v4;
}

- (CCSetsAccessDaemonDelegate)initWithBaseSystemPath:(id)path notifySourcesOnReset:(BOOL)reset
{
  pathCopy = path;
  v15.receiver = self;
  v15.super_class = CCSetsAccessDaemonDelegate;
  v8 = [(CCSetsAccessDaemonDelegate *)&v15 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_baseSystemPath, path);
    v9->_notifySourcesOnReset = reset;
    v10 = objc_alloc(MEMORY[0x1E69C5D60]);
    v11 = objc_opt_new();
    v12 = [v10 initWithGuardedData:v11];
    preparedContainers = v9->_preparedContainers;
    v9->_preparedContainers = v12;
  }

  return v9;
}

+ (id)_loadResourceGenerationCounter:(BOOL)counter baseSystemPath:(id)path error:(id *)error
{
  counterCopy = counter;
  v7 = [MEMORY[0x1E695DFF8] fileURLWithPath:path isDirectory:1];
  v8 = [objc_alloc(MEMORY[0x1E698E9A8]) initWithFilename:@"resourceGeneration" protectionClass:4 directory:v7 domain:1 readOnly:counterCopy error:error];

  return v8;
}

+ (id)readDefaultLocalDeviceUUID:(id *)d
{
  v4 = objc_opt_class();
  v5 = [MEMORY[0x1E698E9C8] biomeDirectoryForDomain:1];
  v6 = [v4 _loadResourceGenerationCounter:1 baseSystemPath:v5 error:d];

  fileUUID = [v6 fileUUID];

  return fileUUID;
}

- (id)incrementResourceGenerationCounter
{
  resourceGenerationCounter = self->_resourceGenerationCounter;
  v10 = 0;
  v11 = 0;
  v3 = [(BMFileBackedCounter *)resourceGenerationCounter incrementCount:&v11 error:&v10];
  v4 = v11;
  v5 = v10;
  v6 = __biome_log_for_category();
  v7 = v6;
  if (v3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [CCSetsAccessDaemonDelegate incrementResourceGenerationCounter];
    }

    v8 = v4;
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [CCSetsAccessDaemonDelegate incrementResourceGenerationCounter];
    }

    v8 = 0;
  }

  return v8;
}

- (BOOL)prepareResource:(id)resource withMode:(unint64_t)mode inContainer:(id)container
{
  modeCopy = mode;
  v40 = *MEMORY[0x1E69E9840];
  resourceCopy = resource;
  containerCopy = container;
  v10 = __biome_log_for_category();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v27 = objc_opt_class();
    v28 = v27;
    v29 = BMAccessModePrintableDescription();
    *buf = 138413058;
    v33 = v27;
    v34 = 2114;
    v35 = resourceCopy;
    v36 = 2114;
    v37 = v29;
    v38 = 2114;
    v39 = containerCopy;
    _os_log_debug_impl(&dword_1B6DB2000, v10, OS_LOG_TYPE_DEBUG, "%@ preparing resource %{public}@ for mode %{public}@ with container %{public}@", buf, 0x2Au);
  }

  if ((modeCopy & 2) != 0)
  {
    if ([(CCSetsAccessDaemonDelegate *)self prepareContainer:containerCopy])
    {
      name = [resourceCopy name];
      v13 = [name isEqual:*MEMORY[0x1E698E900]];

      if (v13)
      {
        v11 = 1;
      }

      else
      {
        v14 = [CCDataResource dataResourceFromSpecifier:resourceCopy inContainer:containerCopy];
        v31 = 0;
        v15 = [v14 databaseFileExists:&v31];
        v16 = v31;
        if (v15)
        {
          v11 = 1;
        }

        else
        {
          v17 = __biome_log_for_category();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            v18 = objc_opt_class();
            localizedFailureReason = [v16 localizedFailureReason];
            *buf = 138412802;
            v33 = v18;
            v34 = 2112;
            v35 = resourceCopy;
            v36 = 2112;
            v37 = localizedFailureReason;
            _os_log_impl(&dword_1B6DB2000, v17, OS_LOG_TYPE_DEFAULT, "%@ Resource %@ has not been prepared yet (%@)", buf, 0x20u);
          }

          incrementResourceGenerationCounter = [(CCSetsAccessDaemonDelegate *)self incrementResourceGenerationCounter];
          if (incrementResourceGenerationCounter)
          {
            v21 = [[CCDataResourceWriter alloc] initWithDataResource:v14 accessAssertion:0];
            localDeviceUUID = self->_localDeviceUUID;
            v23 = [(CCSetsAccessDaemonDelegate *)self _storedLocalIDSIdentifierInContainer:containerCopy];
            v24 = +[CCDeviceSite deviceSiteForLocalDeviceUUID:resourceGeneration:idsDeviceId:platform:](CCDeviceSite, "deviceSiteForLocalDeviceUUID:resourceGeneration:idsDeviceId:platform:", localDeviceUUID, incrementResourceGenerationCounter, v23, [MEMORY[0x1E698E9A0] platform]);

            v11 = [(CCDataResourceWriter *)v21 initializeDatabaseWithLocalDeviceSite:v24];
            v25 = __biome_log_for_category();
            v26 = v25;
            if (v11)
            {
              if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
              {
                [CCSetsAccessDaemonDelegate prepareResource:withMode:inContainer:];
              }
            }

            else if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
            {
              [CCSetsAccessDaemonDelegate prepareResource:withMode:inContainer:];
            }
          }

          else
          {
            v11 = 0;
          }
        }
      }
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = [(CCSetsAccessDaemonDelegate *)self _validateReadOnlyContainer:containerCopy];
  }

  return v11;
}

- (BOOL)teardownResource:(id)resource inContainer:(id)container
{
  v24 = *MEMORY[0x1E69E9840];
  resourceCopy = resource;
  containerCopy = container;
  v8 = __biome_log_for_category();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    v19 = objc_opt_class();
    v20 = 2114;
    v21 = resourceCopy;
    v22 = 2114;
    v23 = containerCopy;
    v16 = v19;
    _os_log_debug_impl(&dword_1B6DB2000, v8, OS_LOG_TYPE_DEBUG, "%@ tearing down resource %{public}@ with container %{public}@", buf, 0x20u);
  }

  if ([(CCSetsAccessDaemonDelegate *)self prepareContainer:containerCopy])
  {
    v9 = [CCDataResource dataResourceFromSpecifier:resourceCopy inContainer:containerCopy];
    v10 = [[CCDataResourceWriter alloc] initWithDataResource:v9 accessAssertion:0];
    v17 = 0;
    v11 = [(CCDataResourceWriter *)v10 removeResource:&v17];
    v12 = v17;
    if (v12)
    {
      v11 = 0;
    }

    v13 = __biome_log_for_category();
    v14 = v13;
    if (v11)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        [CCSetsAccessDaemonDelegate teardownResource:inContainer:];
      }
    }

    else if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [CCSetsAccessDaemonDelegate teardownResource:inContainer:];
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)prepareContainer:(id)container
{
  containerCopy = container;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 1;
  preparedContainers = self->_preparedContainers;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __47__CCSetsAccessDaemonDelegate_prepareContainer___block_invoke;
  v8[3] = &unk_1E7C8BCF0;
  v8[4] = self;
  v10 = &v11;
  v6 = containerCopy;
  v9 = v6;
  [(_PASLock *)preparedContainers runWithLockAcquired:v8];
  LOBYTE(preparedContainers) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return preparedContainers;
}

void __47__CCSetsAccessDaemonDelegate_prepareContainer___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([*(a1 + 32) loadOrCreateResourceGenerationCounter])
  {
    v4 = [v3 objectForKey:*(a1 + 40)];
    v5 = [*(a1 + 32) setsDirectoryInContainer:*(a1 + 40)];
    if (v4)
    {
      if ([*(a1 + 32) _validateCurrentLocalDeviceUUIDsAgainstContainerInfo:v4 container:*(a1 + 40)])
      {
        *(*(*(a1 + 48) + 8) + 24) = 1;
LABEL_18:

LABEL_20:
        goto LABEL_21;
      }
    }

    else
    {
      v6 = BMGetOrCreateDirectoryURL();
      v7 = 0;

      if (!v6)
      {
        v9 = __biome_log_for_category();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          v13 = *(a1 + 40);
          *buf = 138412802;
          v15 = v5;
          v16 = 2112;
          v17 = v13;
          v18 = 2112;
          v19 = v7;
          _os_log_error_impl(&dword_1B6DB2000, v9, OS_LOG_TYPE_ERROR, "Failed to resolve / create sets directory (%@) in container: %@ error: %@", buf, 0x20u);
        }

        *(*(*(a1 + 48) + 8) + 24) = 0;
        goto LABEL_20;
      }

      v4 = [*(a1 + 32) _loadOrCreateContainerInfo:v5 readOnly:0];
      if ([*(a1 + 32) _validateCurrentSchemaAgainstContainerInfo:v4 container:*(a1 + 40)])
      {
        v8 = [*(a1 + 32) _validateCurrentLocalDeviceUUIDsAgainstContainerInfo:v4 container:*(a1 + 40)];

        if (v8)
        {
LABEL_15:
          v11 = __biome_log_for_category();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            v12 = *(a1 + 40);
            *buf = 138412290;
            v15 = v12;
            _os_log_impl(&dword_1B6DB2000, v11, OS_LOG_TYPE_DEFAULT, "Prepared container: %@", buf, 0xCu);
          }

          [v3 setObject:v4 forKey:*(a1 + 40)];
          goto LABEL_18;
        }
      }

      else
      {
      }
    }

    v10 = [*(a1 + 32) _resetSetsDirectory:v5];

    v4 = v10;
    if (!v10)
    {
      *(*(*(a1 + 48) + 8) + 24) = 0;
      goto LABEL_20;
    }

    goto LABEL_15;
  }

  *(*(*(a1 + 48) + 8) + 24) = 0;
LABEL_21:
}

- (id)_storedLocalIDSIdentifierInContainer:(id)container
{
  containerCopy = container;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__11;
  v16 = __Block_byref_object_dispose__11;
  v17 = 0;
  preparedContainers = self->_preparedContainers;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __67__CCSetsAccessDaemonDelegate__storedLocalIDSIdentifierInContainer___block_invoke;
  v9[3] = &unk_1E7C8BD18;
  v6 = containerCopy;
  v10 = v6;
  v11 = &v12;
  [(_PASLock *)preparedContainers runWithLockAcquired:v9];
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __67__CCSetsAccessDaemonDelegate__storedLocalIDSIdentifierInContainer___block_invoke(uint64_t a1, void *a2)
{
  v6 = [a2 objectForKey:*(a1 + 32)];
  v3 = [v6 objectForKey:@"idsDeviceId"];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (BOOL)_validateCurrentLocalDeviceUUIDsAgainstContainerInfo:(id)info container:(id)container
{
  v28 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  containerCopy = container;
  v8 = [infoCopy objectForKey:@"localDeviceUUID"];
  if (v8)
  {
    v9 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:{objc_msgSend(v8, "bytes")}];
  }

  else
  {
    v9 = 0;
  }

  if (([(NSUUID *)self->_localDeviceUUID isEqual:v9]& 1) != 0)
  {
    localIDSDeviceId = [(CCSetsAccessDaemonDelegate *)self localIDSDeviceId];
    if (localIDSDeviceId)
    {
      v11 = [infoCopy objectForKey:@"idsDeviceId"];
      v12 = [localIDSDeviceId isEqual:v11];
      if ((v12 & 1) == 0)
      {
        v13 = __biome_log_for_category();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v20 = 138413058;
          v21 = objc_opt_class();
          v22 = 2112;
          v23 = localIDSDeviceId;
          v24 = 2112;
          v25 = v11;
          v26 = 2112;
          v27 = containerCopy;
          v14 = v21;
          _os_log_impl(&dword_1B6DB2000, v13, OS_LOG_TYPE_DEFAULT, "%@ Local IDS device identifier %@ is not equal to stored %@ in container: %@", &v20, 0x2Au);
        }
      }
    }

    else
    {
      v11 = __biome_log_for_category();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        [CCSetsAccessDaemonDelegate _validateCurrentLocalDeviceUUIDsAgainstContainerInfo:? container:?];
      }

      v12 = 1;
    }
  }

  else
  {
    localIDSDeviceId = __biome_log_for_category();
    if (os_log_type_enabled(localIDSDeviceId, OS_LOG_TYPE_DEFAULT))
    {
      v15 = objc_opt_class();
      localDeviceUUID = self->_localDeviceUUID;
      v17 = v15;
      uUIDString = [v9 UUIDString];
      v20 = 138413058;
      v21 = v15;
      v22 = 2112;
      v23 = localDeviceUUID;
      v24 = 2112;
      v25 = uUIDString;
      v26 = 2112;
      v27 = containerCopy;
      _os_log_impl(&dword_1B6DB2000, localIDSDeviceId, OS_LOG_TYPE_DEFAULT, "%@ Local device identifier %@ is not equal to stored: %@ in container: %@", &v20, 0x2Au);
    }

    v12 = 0;
  }

  return v12;
}

- (BOOL)_validateCurrentSchemaAgainstContainerInfo:(id)info container:(id)container
{
  v19 = *MEMORY[0x1E69E9840];
  containerCopy = container;
  v7 = [info objectForKey:@"schemaVersion"];
  currentSchemaVersion = [(CCSetsAccessDaemonDelegate *)self currentSchemaVersion];
  v9 = [currentSchemaVersion isEqual:v7];

  if ((v9 & 1) == 0)
  {
    v10 = __biome_log_for_category();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = @"empty";
      v13 = 138412802;
      v14 = &unk_1F2EC9420;
      v15 = 2112;
      if (v7)
      {
        v11 = v7;
      }

      v16 = v11;
      v17 = 2112;
      v18 = containerCopy;
      _os_log_impl(&dword_1B6DB2000, v10, OS_LOG_TYPE_DEFAULT, "Current schema (expected: %@) not initialized yet (found: %@) in container: %@", &v13, 0x20u);
    }
  }

  return v9;
}

- (BOOL)_validateReadOnlyContainer:(id)container
{
  containerCopy = container;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  preparedContainers = self->_preparedContainers;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __57__CCSetsAccessDaemonDelegate__validateReadOnlyContainer___block_invoke;
  v8[3] = &unk_1E7C8BD40;
  v6 = containerCopy;
  v9 = v6;
  selfCopy = self;
  v11 = &v12;
  [(_PASLock *)preparedContainers runWithLockAcquired:v8];
  LOBYTE(self) = *(v13 + 24);

  _Block_object_dispose(&v12, 8);
  return self;
}

void __57__CCSetsAccessDaemonDelegate__validateReadOnlyContainer___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKey:*(a1 + 32)];
  if (!v3)
  {
    v4 = *(a1 + 40);
    v5 = [v4 setsDirectoryInContainer:*(a1 + 32)];
    v6 = [v4 _loadOrCreateContainerInfo:v5 readOnly:1];

    v3 = v6;
  }

  v7 = v3;
  *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 40) _validateCurrentSchemaAgainstContainerInfo:v3 container:*(a1 + 32)];
}

- (id)setsDirectoryInContainer:(id)container
{
  v3 = MEMORY[0x1E695DFF8];
  v4 = [MEMORY[0x1E698E9C8] setsDirectoryInContainer:container];
  v5 = [v3 fileURLWithPath:v4 isDirectory:1];

  return v5;
}

- (id)_loadOrCreateContainerInfo:(id)info readOnly:(BOOL)only
{
  onlyCopy = only;
  v5 = MEMORY[0x1E698E9B0];
  infoCopy = info;
  v11 = 0;
  v7 = [[v5 alloc] initWithFilename:@"info" protectionClass:4 directory:infoCopy readOnly:onlyCopy create:onlyCopy ^ 1 initialDictionary:0 error:&v11];

  v8 = v11;
  if (!v7)
  {
    v9 = __biome_log_for_category();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [CCSetsAccessDaemonDelegate _loadOrCreateContainerInfo:readOnly:];
    }
  }

  return v7;
}

- (id)_resetSetsDirectory:(id)directory
{
  v43[2] = *MEMORY[0x1E69E9840];
  directoryCopy = directory;
  v5 = __biome_log_for_category();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v35 = directoryCopy;
    _os_log_impl(&dword_1B6DB2000, v5, OS_LOG_TYPE_DEFAULT, "Clearing sets directory: %@", buf, 0xCu);
  }

  v33 = 0;
  v6 = BMRemoveItemIfExistsAtURL();
  v7 = 0;
  v8 = v7;
  if (v6)
  {
    v32 = v7;
    v9 = BMGetOrCreateDirectoryURL();
    v10 = v32;

    if (v9)
    {
      v11 = [(CCSetsAccessDaemonDelegate *)self _loadOrCreateContainerInfo:directoryCopy readOnly:0];
      currentSchemaVersion = [(CCSetsAccessDaemonDelegate *)self currentSchemaVersion];
      v13 = MEMORY[0x1E695DF70];
      v29 = currentSchemaVersion;
      v43[0] = currentSchemaVersion;
      v14 = BMDataFromNSUUID();
      v43[1] = v14;
      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:2];
      v16 = [v13 arrayWithArray:v15];

      v17 = MEMORY[0x1E695DF70];
      v42[0] = @"schemaVersion";
      v42[1] = @"localDeviceUUID";
      v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:2];
      v19 = [v17 arrayWithArray:v18];

      localIDSDeviceId = [(CCSetsAccessDaemonDelegate *)self localIDSDeviceId];
      if (localIDSDeviceId)
      {
        [v16 addObject:localIDSDeviceId];
        [v19 addObject:@"idsDeviceId"];
      }

      v31 = v10;
      v21 = [v11 writeUpdatedObjects:v16 forKeys:v19 error:&v31, v29];
      v8 = v31;

      v22 = __biome_log_for_category();
      v23 = v22;
      if (v21)
      {
        v24 = v30;
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          uUIDString = [(NSUUID *)self->_localDeviceUUID UUIDString];
          *buf = 138413058;
          v35 = directoryCopy;
          v36 = 2112;
          v37 = v30;
          v38 = 2112;
          v39 = uUIDString;
          v40 = 2112;
          v41 = localIDSDeviceId;
          _os_log_impl(&dword_1B6DB2000, v23, OS_LOG_TYPE_DEFAULT, "Sets directory (%@) initialized with schema version: %@ localDeviceId: %@ idsDeviceId: %@", buf, 0x2Au);
        }

        if (self->_notifySourcesOnReset)
        {
          notify_post([@"com.apple.CascadeSets.DonateNow" UTF8String]);
          v26 = __biome_log_for_category();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v35 = @"com.apple.CascadeSets.DonateNow";
            _os_log_impl(&dword_1B6DB2000, v26, OS_LOG_TYPE_DEFAULT, "Posted notification %@", buf, 0xCu);
          }
        }

        v27 = v11;
      }

      else
      {
        v24 = v30;
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          [CCSetsAccessDaemonDelegate _resetSetsDirectory:];
        }

        v27 = 0;
      }
    }

    else
    {
      v11 = __biome_log_for_category();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [CCSetsAccessDaemonDelegate _resetSetsDirectory:];
      }

      v27 = 0;
      v8 = v10;
    }
  }

  else
  {
    v11 = __biome_log_for_category();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [CCSetsAccessDaemonDelegate _resetSetsDirectory:];
    }

    v27 = 0;
  }

  return v27;
}

- (id)lastMaintenanceDateForResourceContainer:(id)container
{
  containerCopy = container;
  if ([(CCSetsAccessDaemonDelegate *)self prepareContainer:containerCopy])
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = __Block_byref_object_copy__11;
    v16 = __Block_byref_object_dispose__11;
    v17 = 0;
    preparedContainers = self->_preparedContainers;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __70__CCSetsAccessDaemonDelegate_lastMaintenanceDateForResourceContainer___block_invoke;
    v9[3] = &unk_1E7C8BD18;
    v10 = containerCopy;
    v11 = &v12;
    [(_PASLock *)preparedContainers runWithLockAcquired:v9];
    v6 = v13[5];

    _Block_object_dispose(&v12, 8);
  }

  else
  {
    v7 = __biome_log_for_category();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [CCSetsAccessDaemonDelegate lastMaintenanceDateForResourceContainer:];
    }

    v6 = 0;
  }

  return v6;
}

void __70__CCSetsAccessDaemonDelegate_lastMaintenanceDateForResourceContainer___block_invoke(uint64_t a1, void *a2)
{
  v6 = [a2 objectForKey:*(a1 + 32)];
  v3 = [v6 objectForKey:@"lastMaintenanceDate"];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (BOOL)setLastMaintenanceDateForResourceContainer:(id)container date:(id)date error:(id *)error
{
  containerCopy = container;
  dateCopy = date;
  if ([(CCSetsAccessDaemonDelegate *)self prepareContainer:containerCopy])
  {
    v25 = 0;
    v26 = &v25;
    v27 = 0x2020000000;
    v28 = 0;
    v19 = 0;
    v20 = &v19;
    v21 = 0x3032000000;
    v22 = __Block_byref_object_copy__11;
    v23 = __Block_byref_object_dispose__11;
    v24 = 0;
    preparedContainers = self->_preparedContainers;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __84__CCSetsAccessDaemonDelegate_setLastMaintenanceDateForResourceContainer_date_error___block_invoke;
    v14[3] = &unk_1E7C8BD68;
    v15 = containerCopy;
    v17 = &v25;
    v16 = dateCopy;
    v18 = &v19;
    [(_PASLock *)preparedContainers runWithLockAcquired:v14];
    v11 = *(v26 + 24);
    if (error && (v26[3] & 1) == 0)
    {
      *error = v20[5];
      v11 = *(v26 + 24);
    }

    _Block_object_dispose(&v19, 8);
    _Block_object_dispose(&v25, 8);
  }

  else
  {
    v12 = __biome_log_for_category();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [CCSetsAccessDaemonDelegate setLastMaintenanceDateForResourceContainer:date:error:];
    }

    v11 = 0;
    if (error)
    {
      *error = 0;
    }
  }

  return v11 & 1;
}

void __84__CCSetsAccessDaemonDelegate_setLastMaintenanceDateForResourceContainer_date_error___block_invoke(void *a1, void *a2)
{
  v3 = [a2 objectForKey:a1[4]];
  v4 = a1[5];
  v5 = *(a1[7] + 8);
  obj = *(v5 + 40);
  v6 = [v3 writeUpdatedObject:v4 forKey:@"lastMaintenanceDate" error:&obj];
  objc_storeStrong((v5 + 40), obj);
  *(*(a1[6] + 8) + 24) = v6;
}

- (void)loadOrCreateResourceGenerationCounter
{
  OUTLINED_FUNCTION_4_0();
  objc_opt_class();
  OUTLINED_FUNCTION_0_8();
  v1 = v0;
  OUTLINED_FUNCTION_3_1();
  _os_log_fault_impl(v2, v3, OS_LOG_TYPE_FAULT, v4, v5, 0x16u);
}

- (void)incrementResourceGenerationCounter
{
  OUTLINED_FUNCTION_4_0();
  objc_opt_class();
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, OS_LOG_TYPE_DEBUG, v2, v3, 0x16u);
}

- (void)prepareResource:withMode:inContainer:.cold.1()
{
  OUTLINED_FUNCTION_4_0();
  objc_opt_class();
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, OS_LOG_TYPE_ERROR, v2, v3, 0x16u);
}

- (void)prepareResource:withMode:inContainer:.cold.2()
{
  OUTLINED_FUNCTION_4_0();
  objc_opt_class();
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, OS_LOG_TYPE_DEBUG, v2, v3, 0x16u);
}

- (void)teardownResource:inContainer:.cold.1()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&dword_1B6DB2000, v1, OS_LOG_TYPE_ERROR, "Could not remove resource: %@ error: %@", v2, 0x16u);
}

- (void)teardownResource:inContainer:.cold.2()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(&dword_1B6DB2000, v0, OS_LOG_TYPE_DEBUG, "Removed resource: %@", v1, 0xCu);
}

- (void)_validateCurrentLocalDeviceUUIDsAgainstContainerInfo:(uint64_t)a1 container:.cold.1(uint64_t a1)
{
  objc_opt_class();
  OUTLINED_FUNCTION_0();
  v2 = v1;
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v3, v4, OS_LOG_TYPE_DEBUG, v5, v6, 0xCu);
}

@end