@interface TRIFBClientTreatmentStorage
+ (id)relPathForMAReferenceWithFactorName:(id)name;
- (BOOL)_deleteOnDemandAssetsWithFactorNames:(id)names treatment:(id)treatment namespace:(id)namespace;
- (BOOL)_linkAssetsUpdatingTreatment:(id)treatment;
- (BOOL)_linkAssetsWithIds:(id)ids updatingTreatment:(id)treatment;
- (BOOL)_removeFactorsWithDescriptor:(id)descriptor descriptorDir:(id)dir treatmentLayer:(unint64_t)layer namespaceName:(id)name;
- (BOOL)_removeFactorsWithTreatmentId:(id)id namespaceName:(id)name;
- (BOOL)_removeFactorsWithURL:(id)l;
- (BOOL)_resolveAssetPathsInTreatment:(id)treatment usingReferenceURL:(id)l;
- (BOOL)_saveNamespacePartitionedTreatmentsForTreatment:(id)treatment forNamespaceNames:(id)names;
- (BOOL)_savePersistedTreatment:(id)treatment;
- (BOOL)_writeFactorLevelsToDisk:(id)disk namespaceName:(id)name writeToPath:(id)path;
- (BOOL)removeTreatmentFromLayer:(unint64_t)layer withNamespaceName:(id)name upgradeNCVs:(id)vs;
- (BOOL)removeTreatmentWithTreatmentId:(id)id;
- (BOOL)removeUnreferencedTreatmentsWithRemovedCount:(unsigned int *)count;
- (TRIFBClientTreatmentStorage)initWithPaths:(id)paths;
- (TRIFBClientTreatmentStorage)initWithPaths:(id)paths extractor:(id)extractor;
- (id)_assetURLForFactor:(id)factor treatmentId:(id)id;
- (id)_baseUrlForTreatment:(id)treatment namespaceName:(id)name;
- (id)_collectTreatments;
- (id)_convertFastFactorLevelToClientTreatment:(id)treatment;
- (id)_copyFileFromURL:(id)l to:(id)to;
- (id)_linkAssetWithId:(id)id treatmentId:(id)treatmentId assetStore:(id)store factor:(id)factor;
- (id)loadTreatmentWithTreatmentId:(id)id isFilePresent:(BOOL *)present;
- (id)saveTreatment:(id)treatment;
- (id)updateSavedTreatmentWithTreatmentId:(id)id deletingAssetsWithFactorNames:(id)names forNamespaceName:(id)name;
- (id)updateSavedTreatmentWithTreatmentId:(id)id linkingNewAssetIds:(id)ids forNamespaceNames:(id)names;
- (id)urlForFactorsWithTreatmentId:(id)id namespaceName:(id)name;
- (id)urlForTreatmentWithTreatmentId:(id)id;
@end

@implementation TRIFBClientTreatmentStorage

- (TRIFBClientTreatmentStorage)initWithPaths:(id)paths
{
  pathsCopy = paths;
  v5 = [[TRIRemoteAssetExtractor alloc] initWithMonitoredActivity:0];
  v6 = [(TRIFBClientTreatmentStorage *)self initWithPaths:pathsCopy extractor:v5];

  return v6;
}

- (TRIFBClientTreatmentStorage)initWithPaths:(id)paths extractor:(id)extractor
{
  pathsCopy = paths;
  extractorCopy = extractor;
  v12.receiver = self;
  v12.super_class = TRIFBClientTreatmentStorage;
  v9 = [(TRIFBClientTreatmentStorage *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_paths, paths);
    objc_storeStrong(&v10->_extractor, extractor);
  }

  return v10;
}

- (id)loadTreatmentWithTreatmentId:(id)id isFilePresent:(BOOL *)present
{
  v28 = *MEMORY[0x277D85DE8];
  idCopy = id;
  v7 = objc_autoreleasePoolPush();
  if (present)
  {
    *present = 1;
  }

  v8 = objc_alloc(MEMORY[0x277CBEA90]);
  v9 = [(TRIFBClientTreatmentStorage *)self urlForTreatmentWithTreatmentId:idCopy];
  v21 = 0;
  v10 = [v8 initWithContentsOfURL:v9 options:1 error:&v21];
  v11 = v21;

  if (v10)
  {
    v12 = [objc_alloc(MEMORY[0x277D736F8]) initVerifiedRootObjectFromData:v10];
    if (v12)
    {
      v13 = v12;
      v14 = [(TRIFBClientTreatmentStorage *)self _convertFastFactorLevelToClientTreatment:v12];
      goto LABEL_17;
    }

    v17 = TRILogCategory_Server();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v23 = idCopy;
      _os_log_error_impl(&dword_26F567000, v17, OS_LOG_TYPE_ERROR, "Failed to verify content of factor levels: %{public}@", buf, 0xCu);
    }

    v13 = 0;
  }

  else
  {
    domain = [v11 domain];
    v16 = domain;
    if (domain == *MEMORY[0x277CCA050])
    {
      code = [v11 code];

      if (present && code == 260)
      {
        *present = 0;
      }
    }

    else
    {
    }

    v13 = TRILogCategory_Server();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v20 = [(TRIFBClientTreatmentStorage *)self urlForTreatmentWithTreatmentId:idCopy];
      *buf = 138412802;
      v23 = idCopy;
      v24 = 2112;
      v25 = v20;
      v26 = 2114;
      v27 = v11;
      _os_log_error_impl(&dword_26F567000, v13, OS_LOG_TYPE_ERROR, "Unable to read treatment with ID %@ from %@: %{public}@", buf, 0x20u);
    }
  }

  v14 = 0;
LABEL_17:

  objc_autoreleasePoolPop(v7);

  return v14;
}

- (id)saveTreatment:(id)treatment
{
  v57 = *MEMORY[0x277D85DE8];
  treatmentCopy = treatment;
  v6 = objc_autoreleasePoolPush();
  if ([treatmentCopy hasTreatmentId] && (objc_msgSend(treatmentCopy, "treatmentId"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "length"), v7, v8))
  {
    v9 = [treatmentCopy copy];
    if ([v9 factorLevelArray_Count])
    {
      selfCopy = self;
      v43 = v6;
      context = objc_autoreleasePoolPush();
      v48 = 0u;
      v49 = 0u;
      v50 = 0u;
      v51 = 0u;
      v42 = v9;
      obj = [v9 factorLevelArray];
      v47 = [obj countByEnumeratingWithState:&v48 objects:v56 count:16];
      v11 = 0;
      if (!v47)
      {
        goto LABEL_33;
      }

      v46 = *v49;
      *&v10 = 138543362;
      v39 = v10;
      while (1)
      {
        v12 = 0;
        do
        {
          if (*v49 != v46)
          {
            objc_enumerationMutation(obj);
          }

          v13 = treatmentCopy;
          v14 = *(*(&v48 + 1) + 8 * v12);
          if (!v11)
          {
            factor = [*(*(&v48 + 1) + 8 * v12) factor];
            namespaceName = [factor namespaceName];
            v11 = [TRIClientFactorPackUtils aliasesInNamespace:namespaceName];
          }

          factor2 = [v14 factor];
          name = [factor2 name];
          v19 = [v11 objectForKeyedSubscript:name];
          v20 = v19;
          if (!v19)
          {
            factor3 = [v14 factor];
            name2 = [factor3 name];
            v20 = name2;
          }

          factor4 = [v14 factor];
          [factor4 setName:v20];

          if (!v19)
          {
          }

          treatmentCopy = v13;
          if ([v14 hasLevel])
          {
            level = [v14 level];
            v23 = [level fileOrDirectoryLevelWithIsDir:0];

            if ([v13 hasTreatmentId])
            {
              if ([v23 hasAsset])
              {
                asset = [v23 asset];
                hasTreatmentId = [asset hasTreatmentId];

                if ((hasTreatmentId & 1) == 0)
                {
                  v26 = TRILogCategory_Server();
                  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
                  {
                    treatmentId = [v13 treatmentId];
                    factor5 = [v14 factor];
                    name3 = [factor5 name];
                    *buf = 138412546;
                    v53 = treatmentId;
                    v54 = 2114;
                    v55 = name3;
                    _os_log_debug_impl(&dword_26F567000, v26, OS_LOG_TYPE_DEBUG, "Populating treatmentId %@ on asset for %{public}@", buf, 0x16u);

                    treatmentCopy = v13;
                  }

                  treatmentId2 = [treatmentCopy treatmentId];
                  asset2 = [v23 asset];
                  [asset2 setTreatmentId:treatmentId2];
                }
              }
            }

            if ([treatmentCopy hasTreatmentId] && objc_msgSend(v23, "hasAsset"))
            {
              asset3 = [v23 asset];
              if ([asset3 hasCloudKitContainer])
              {
                goto LABEL_29;
              }

              isOnDemand = [v23 isOnDemand];

              if (isOnDemand)
              {
                v31 = TRILogCategory_Server();
                if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
                {
                  factor6 = [v14 factor];
                  name4 = [factor6 name];
                  *buf = v39;
                  v53 = name4;
                  _os_log_debug_impl(&dword_26F567000, v31, OS_LOG_TYPE_DEBUG, "Populating system default cloudKitContainer on asset for %{public}@", buf, 0xCu);
                }

                asset3 = [v23 asset];
                [asset3 setCloudKitContainer:1];
LABEL_29:
              }
            }
          }

          ++v12;
        }

        while (v47 != v12);
        v47 = [obj countByEnumeratingWithState:&v48 objects:v56 count:16];
        if (!v47)
        {
LABEL_33:

          objc_autoreleasePoolPop(context);
          v9 = v42;
          v6 = v43;
          self = selfCopy;
          break;
        }
      }
    }

    if ([(TRIFBClientTreatmentStorage *)self _linkAssetsUpdatingTreatment:v9]&& [(TRIFBClientTreatmentStorage *)self _saveNamespacePartitionedTreatmentsForTreatment:v9 forNamespaceNames:0]&& [(TRIFBClientTreatmentStorage *)self _savePersistedTreatment:v9])
    {
      v9 = v9;
      v37 = v9;
      goto LABEL_41;
    }
  }

  else
  {
    v9 = TRILogCategory_Server();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26F567000, v9, OS_LOG_TYPE_ERROR, "TRIClientTreatmentArtifact has nil or empty treatmentId", buf, 2u);
    }
  }

  v37 = 0;
LABEL_41:

  objc_autoreleasePoolPop(v6);

  return v37;
}

- (id)_convertFastFactorLevelToClientTreatment:(id)treatment
{
  v33 = *MEMORY[0x277D85DE8];
  treatmentCopy = treatment;
  context = objc_autoreleasePoolPush();
  v5 = objc_alloc_init(MEMORY[0x277D73AF0]);
  sourceAsTreatmentId = [treatmentCopy sourceAsTreatmentId];
  v25 = v5;
  [v5 setTreatmentId:sourceAsTreatmentId];

  v7 = objc_alloc(MEMORY[0x277CBEB18]);
  levels = [treatmentCopy levels];
  v9 = [v7 initWithCapacity:{objc_msgSend(levels, "count")}];

  namespaceName = [treatmentCopy namespaceName];
  sourceAsTreatmentId2 = [treatmentCopy sourceAsTreatmentId];
  v12 = [(TRIFBClientTreatmentStorage *)self _baseUrlForTreatment:sourceAsTreatmentId2 namespaceName:namespaceName];

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = treatmentCopy;
  obj = [treatmentCopy levels];
  v13 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v29;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v29 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v28 + 1) + 8 * i);
        v18 = objc_autoreleasePoolPush();
        v19 = MEMORY[0x277D73738];
        path = [v12 path];
        v21 = [v19 convertFBFactorLevelToProtoFactorLevel:v17 parentDir:path namespaceName:namespaceName isRelativePath:0];

        [v9 addObject:v21];
        objc_autoreleasePoolPop(v18);
      }

      v14 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v14);
  }

  v22 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:v9 copyItems:1];
  [v25 setFactorLevelArray:v22];

  objc_autoreleasePoolPop(context);

  return v25;
}

- (id)updateSavedTreatmentWithTreatmentId:(id)id linkingNewAssetIds:(id)ids forNamespaceNames:(id)names
{
  v24 = *MEMORY[0x277D85DE8];
  idCopy = id;
  idsCopy = ids;
  namesCopy = names;
  v11 = objc_autoreleasePoolPush();
  v19 = 0;
  v12 = [(TRIFBClientTreatmentStorage *)self loadTreatmentWithTreatmentId:idCopy isFilePresent:&v19];
  if (v12)
  {
    v13 = TRILogCategory_Server();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v17 = [idsCopy count];
      *buf = 134218242;
      v21 = v17;
      v22 = 2112;
      v23 = idCopy;
      _os_log_debug_impl(&dword_26F567000, v13, OS_LOG_TYPE_DEBUG, "Merging %tu assets for treatment %@.", buf, 0x16u);
    }

    if ([(TRIFBClientTreatmentStorage *)self _linkAssetsWithIds:idsCopy updatingTreatment:v12]&& [(TRIFBClientTreatmentStorage *)self _saveNamespacePartitionedTreatmentsForTreatment:v12 forNamespaceNames:namesCopy]&& [(TRIFBClientTreatmentStorage *)self _savePersistedTreatment:v12])
    {
      v14 = v12;
      goto LABEL_13;
    }
  }

  else if ((v19 & 1) == 0)
  {
    v15 = TRILogCategory_Server();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v18 = [(TRIFBClientTreatmentStorage *)self urlForTreatmentWithTreatmentId:idCopy];
      *buf = 138412290;
      v21 = v18;
      _os_log_error_impl(&dword_26F567000, v15, OS_LOG_TYPE_ERROR, "updateSavedTreatmentWithTreatmentId failed because preexisting treatment is not present: %@", buf, 0xCu);
    }
  }

  v14 = 0;
LABEL_13:

  objc_autoreleasePoolPop(v11);

  return v14;
}

- (BOOL)_linkAssetsWithIds:(id)ids updatingTreatment:(id)treatment
{
  v39 = *MEMORY[0x277D85DE8];
  idsCopy = ids;
  treatmentCopy = treatment;
  v7 = [TRIAssetStore alloc];
  paths = self->_paths;
  extractor = self->_extractor;
  selfCopy = self;
  v10 = [[TRIRemoteAssetPatcher alloc] initWithMonitoredActivity:0];
  v31 = [(TRIAssetStore *)v7 initWithPaths:paths extractor:extractor patcher:v10];

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = treatmentCopy;
  factorLevelArray = [treatmentCopy factorLevelArray];
  v12 = [factorLevelArray countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v35;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v35 != v14)
        {
          objc_enumerationMutation(factorLevelArray);
        }

        v16 = *(*(&v34 + 1) + 8 * i);
        v17 = objc_autoreleasePoolPush();
        level = [v16 level];
        v19 = [level fileOrDirectoryLevelWithIsDir:0];

        if (v19)
        {
          if (([v19 hasPath] & 1) == 0)
          {
            if ([v19 hasAsset])
            {
              asset = [v19 asset];
              hasAssetId = [asset hasAssetId];

              if (hasAssetId)
              {
                asset2 = [v19 asset];
                assetId = [asset2 assetId];
                v24 = TRIValidateAssetId();

                if (v24 && [idsCopy containsObject:v24])
                {
                  treatmentId = [v32 treatmentId];
                  factor = [v16 factor];
                  v27 = [(TRIFBClientTreatmentStorage *)selfCopy _linkAssetWithId:v24 treatmentId:treatmentId assetStore:v31 factor:factor];

                  if (!v27)
                  {

                    objc_autoreleasePoolPop(v17);
                    v28 = 0;
                    goto LABEL_19;
                  }

                  [v19 setPath:v27];
                }
              }
            }
          }
        }

        objc_autoreleasePoolPop(v17);
      }

      v13 = [factorLevelArray countByEnumeratingWithState:&v34 objects:v38 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  v28 = 1;
LABEL_19:

  return v28;
}

- (id)_linkAssetWithId:(id)id treatmentId:(id)treatmentId assetStore:(id)store factor:(id)factor
{
  idCopy = id;
  treatmentIdCopy = treatmentId;
  storeCopy = store;
  factorCopy = factor;
  v15 = objc_autoreleasePoolPush();
  v16 = [(TRIFBClientTreatmentStorage *)self _assetURLForFactor:factorCopy treatmentId:treatmentIdCopy];
  uRLByDeletingLastPathComponent = [v16 URLByDeletingLastPathComponent];
  path = [uRLByDeletingLastPathComponent path];

  if (!path)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFBClientTreatmentStorage.m" lineNumber:266 description:{@"Expression was unexpectedly nil/false: %@", @"[assetURL URLByDeletingLastPathComponent].path"}];
  }

  [MEMORY[0x277CCAA00] triIdempotentCreateDirectoryOrFaultWithPath:path];
  path2 = [v16 path];
  if (!path2)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"TRIFBClientTreatmentStorage.m" lineNumber:269 description:{@"Expression was unexpectedly nil/false: %@", @"assetURL.path"}];
  }

  if ([storeCopy linkAssetWithIdentifier:idCopy toCurrentPath:path2 futurePath:path2])
  {
    v20 = path2;
  }

  else
  {
    v20 = 0;
  }

  v21 = v20;

  objc_autoreleasePoolPop(v15);

  return v21;
}

- (id)updateSavedTreatmentWithTreatmentId:(id)id deletingAssetsWithFactorNames:(id)names forNamespaceName:(id)name
{
  v22 = *MEMORY[0x277D85DE8];
  idCopy = id;
  namesCopy = names;
  nameCopy = name;
  v11 = objc_autoreleasePoolPush();
  v19 = 0;
  v12 = [(TRIFBClientTreatmentStorage *)self loadTreatmentWithTreatmentId:idCopy isFilePresent:&v19];
  if (v12)
  {
    [(TRIFBClientTreatmentStorage *)self _deleteOnDemandAssetsWithFactorNames:namesCopy treatment:v12 namespace:nameCopy];
    v13 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{nameCopy, 0}];
    v14 = [(TRIFBClientTreatmentStorage *)self _saveNamespacePartitionedTreatmentsForTreatment:v12 forNamespaceNames:v13];

    if (v14 && [(TRIFBClientTreatmentStorage *)self _savePersistedTreatment:v12])
    {
      v15 = v12;
      goto LABEL_10;
    }
  }

  else if ((v19 & 1) == 0)
  {
    v16 = TRILogCategory_Server();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v18 = [(TRIFBClientTreatmentStorage *)self urlForTreatmentWithTreatmentId:idCopy];
      *buf = 138412290;
      v21 = v18;
      _os_log_error_impl(&dword_26F567000, v16, OS_LOG_TYPE_ERROR, "updateSavedTreatmentWithTreatmentId failed because preexisting treatment is not present: %@", buf, 0xCu);
    }
  }

  v15 = 0;
LABEL_10:

  objc_autoreleasePoolPop(v11);

  return v15;
}

- (BOOL)removeUnreferencedTreatmentsWithRemovedCount:(unsigned int *)count
{
  v49 = *MEMORY[0x277D85DE8];
  _collectTreatments = [(TRIFBClientTreatmentStorage *)self _collectTreatments];
  if (_collectTreatments)
  {
    v5 = [TRITempDirScopeGuard alloc];
    localTempDir = [(TRIPaths *)self->_paths localTempDir];
    v7 = [(TRITempDirScopeGuard *)v5 initWithPath:localTempDir];

    v34 = v7;
    if (v7)
    {
      v32 = [[TRINamespaceDescriptorSetStorage alloc] initWithPaths:self->_paths];
      parentDirForNamespaceDescriptorSets = [(TRINamespaceDescriptorSetStorage *)v32 parentDirForNamespaceDescriptorSets];
      defaultManager = [MEMORY[0x277CCAA00] defaultManager];
      v9 = [defaultManager fileExistsAtPath:parentDirForNamespaceDescriptorSets];

      if (v9)
      {
        v36 = objc_alloc_init(MEMORY[0x277CBEB58]);
        context = objc_autoreleasePoolPush();
        defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
        v11 = [MEMORY[0x277CBEBC0] fileURLWithPath:parentDirForNamespaceDescriptorSets isDirectory:1];
        v12 = [defaultManager2 enumeratorAtURL:v11 includingPropertiesForKeys:0 options:0 errorHandler:0];

        v13 = objc_autoreleasePoolPush();
        nextObject = [v12 nextObject];
        if (nextObject)
        {
          *&v15 = 138412290;
          v30 = v15;
          do
          {
            path = [nextObject path];
            v17 = [path hasSuffix:@".plist"];

            if (v17)
            {
              v18 = MEMORY[0x277CBEAC0];
              path2 = [nextObject path];
              v20 = [v18 dictionaryWithContentsOfFile:path2];

              if (v20)
              {
                v21 = [objc_alloc(MEMORY[0x277D73750]) initWithDictionary:v20];
                factorsURL = [v21 factorsURL];
                path3 = [factorsURL path];
                stringByDeletingLastPathComponent = [path3 stringByDeletingLastPathComponent];
                [v36 addObject:stringByDeletingLastPathComponent];
              }

              else
              {
                v21 = TRILogCategory_Server();
                if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
                {
                  path4 = [nextObject path];
                  LODWORD(buf) = v30;
                  *(&buf + 4) = path4;
                  _os_log_error_impl(&dword_26F567000, v21, OS_LOG_TYPE_ERROR, "failed to parse dictionary from file: %@", &buf, 0xCu);
                }
              }
            }

            objc_autoreleasePoolPop(v13);
            v13 = objc_autoreleasePoolPush();
            nextObject = [v12 nextObject];
          }

          while (nextObject);
        }

        objc_autoreleasePoolPop(v13);

        objc_autoreleasePoolPop(context);
        *&buf = 0;
        *(&buf + 1) = &buf;
        v47 = 0x2020000000;
        v48 = 0;
        v42 = 0;
        v43 = &v42;
        v44 = 0x2020000000;
        v45 = 1;
        v37[0] = MEMORY[0x277D85DD0];
        v37[1] = 3221225472;
        v37[2] = __76__TRIFBClientTreatmentStorage_removeUnreferencedTreatmentsWithRemovedCount___block_invoke;
        v37[3] = &unk_279DE2810;
        v27 = v36;
        v38 = v27;
        v40 = &v42;
        v39 = v34;
        p_buf = &buf;
        v28 = [_collectTreatments enumerateStringsWithBlock:v37];
        if (count)
        {
          *count = *(*(&buf + 1) + 24);
        }

        if (v28)
        {
          v26 = *(v43 + 24);
        }

        else
        {
          v26 = 0;
        }

        _Block_object_dispose(&v42, 8);
        _Block_object_dispose(&buf, 8);
      }

      else
      {
        v27 = TRILogCategory_Server();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf) = 138543362;
          *(&buf + 4) = parentDirForNamespaceDescriptorSets;
          _os_log_impl(&dword_26F567000, v27, OS_LOG_TYPE_DEFAULT, "Experiment namespace descriptor directory does not exist at %{public}@", &buf, 0xCu);
        }

        v26 = 1;
      }
    }

    else
    {
      v26 = 0;
    }
  }

  else
  {
    v26 = 0;
  }

  return v26 & 1;
}

void __76__TRIFBClientTreatmentStorage_removeUnreferencedTreatmentsWithRemovedCount___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([*(a1 + 32) containsObject:v3])
  {
    v4 = TRILogCategory_Server();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138412290;
      v7 = v3;
      _os_log_impl(&dword_26F567000, v4, OS_LOG_TYPE_DEFAULT, "Treatment managed-dir %@ is referenced. Looking to see if there are any deferred-deletion items to remove", &v6, 0xCu);
    }

    *(*(*(a1 + 48) + 8) + 24) &= [TRIReferenceManagedDir collectDeferredDeletionItemsWithManagedDir:v3];
  }

  else
  {
    LOBYTE(v6) = 0;
    v5 = [*(a1 + 40) path];
    *(*(*(a1 + 48) + 8) + 24) &= [TRIReferenceManagedDir collectGarbageForManagedDir:v3 withExternalReferenceStore:0 usingTempDir:v5 managedDirWasDeleted:&v6];

    if (v6 == 1)
    {
      ++*(*(*(a1 + 56) + 8) + 24);
    }
  }
}

- (id)_collectTreatments
{
  v59 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  if (!v3)
  {
    v31 = 0;
    goto LABEL_33;
  }

  treatmentsDir = [(TRIPaths *)self->_paths treatmentsDir];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v53 = 0;
  v6 = [defaultManager contentsOfDirectoryAtPath:treatmentsDir error:&v53];
  v7 = v53;

  if (v6)
  {
    v38 = v7;
    v40 = v3;
    v46 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v39 = v6;
    obj = v6;
    v8 = [obj countByEnumeratingWithState:&v49 objects:v54 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v50;
      v41 = *v50;
      v42 = treatmentsDir;
      do
      {
        v11 = 0;
        v43 = v9;
        do
        {
          if (*v50 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v49 + 1) + 8 * v11);
          v13 = objc_autoreleasePoolPush();
          v14 = [treatmentsDir stringByAppendingPathComponent:v12];
          buf[0] = 0;
          defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
          [defaultManager2 fileExistsAtPath:v14 isDirectory:buf];

          if (buf[0] == 1)
          {
            v45 = v13;
            defaultManager3 = [MEMORY[0x277CCAA00] defaultManager];
            v17 = [MEMORY[0x277CBEBC0] fileURLWithPath:v14 isDirectory:1];
            v18 = [defaultManager3 enumeratorAtURL:v17 includingPropertiesForKeys:0 options:1 errorHandler:0];

            v19 = objc_autoreleasePoolPush();
            nextObject = [v18 nextObject];
            if (nextObject)
            {
              nextObject2 = nextObject;
              while (1)
              {
                v22 = [nextObject2 URLByAppendingPathComponent:{@"treatment.fb", v38}];
                path = [v22 path];
                if (path)
                {
                  v24 = path;
                  defaultManager4 = [MEMORY[0x277CCAA00] defaultManager];
                  path2 = [v22 path];
                  v27 = [defaultManager4 fileExistsAtPath:path2];

                  if (!v27)
                  {
                    break;
                  }
                }

                path3 = [nextObject2 path];

                if (path3)
                {
                  path4 = [nextObject2 path];
                  [v46 addObject:path4];
                }

                objc_autoreleasePoolPop(v19);
                v19 = objc_autoreleasePoolPush();
                nextObject2 = [v18 nextObject];
                if (!nextObject2)
                {
                  goto LABEL_18;
                }
              }
            }

LABEL_18:
            objc_autoreleasePoolPop(v19);

            v10 = v41;
            treatmentsDir = v42;
            v9 = v43;
            v13 = v45;
          }

          objc_autoreleasePoolPop(v13);
          ++v11;
        }

        while (v11 != v9);
        v9 = [obj countByEnumeratingWithState:&v49 objects:v54 count:16];
      }

      while (v9);
    }

    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = __49__TRIFBClientTreatmentStorage__collectTreatments__block_invoke;
    v47[3] = &unk_279DE2838;
    v3 = v40;
    v30 = v40;
    v48 = v30;
    [v46 enumerateObjectsUsingBlock:v47];
    v31 = v30;

    v7 = v38;
    v6 = v39;
    goto LABEL_32;
  }

  domain = [v7 domain];
  v33 = domain;
  if (domain == *MEMORY[0x277CCA050])
  {
    code = [v7 code];

    if (code == 260)
    {
      v35 = TRILogCategory_Server();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v56 = treatmentsDir;
        _os_log_impl(&dword_26F567000, v35, OS_LOG_TYPE_DEFAULT, "Treatments folder does not exist at %{public}@. Treating as empty", buf, 0xCu);
      }

      v31 = v3;
      goto LABEL_32;
    }
  }

  else
  {
  }

  v36 = TRILogCategory_Server();
  if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543618;
    v56 = treatmentsDir;
    v57 = 2112;
    v58 = v7;
    _os_log_error_impl(&dword_26F567000, v36, OS_LOG_TYPE_ERROR, "Unable to gather contents of treatment directory %{public}@: %@", buf, 0x16u);
  }

  v31 = 0;
LABEL_32:

LABEL_33:

  return v31;
}

void __49__TRIFBClientTreatmentStorage__collectTreatments__block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (([*(a1 + 32) addString:v3] & 1) == 0)
  {
    v4 = TRILogCategory_Server();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 138412290;
      v6 = v3;
      _os_log_error_impl(&dword_26F567000, v4, OS_LOG_TYPE_ERROR, "Failed to add string %@ to file-backed mutable array", &v5, 0xCu);
    }
  }
}

- (BOOL)removeTreatmentFromLayer:(unint64_t)layer withNamespaceName:(id)name upgradeNCVs:(id)vs
{
  v43 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  vsCopy = vs;
  if (layer != 32 && layer != 4)
  {
    if (layer == 1)
    {
      v10 = TRILogCategory_Server();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v37 = nameCopy;
        _os_log_error_impl(&dword_26F567000, v10, OS_LOG_TYPE_ERROR, "cannot remove treatment from 'installed' layer for namespace %{public}@", buf, 0xCu);
      }
    }

    goto LABEL_12;
  }

  namespaceDescriptorsExperimentDir = [(TRIPaths *)self->_paths namespaceDescriptorsExperimentDir];
  if (!namespaceDescriptorsExperimentDir)
  {
LABEL_12:
    v12 = TRILogCategory_Server();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      LODWORD(v37) = layer;
      _os_log_error_impl(&dword_26F567000, v12, OS_LOG_TYPE_ERROR, "cannot remove treatment from unknown treatment layer %u", buf, 8u);
    }

    v18 = 0;
    goto LABEL_38;
  }

  v12 = namespaceDescriptorsExperimentDir;
  v13 = [MEMORY[0x277D73750] loadWithNamespaceName:nameCopy fromDirectory:namespaceDescriptorsExperimentDir];
  if (v13)
  {
    v14 = [MEMORY[0x277D73758] factorProviderWithNamespaceDescriptor:v13 paths:self->_paths faultOnMissingFactors:0 shouldLockFactorDirectory:0];
    v15 = v14;
    if (layer == 4)
    {
      treatmentId = [v14 treatmentId];

      if (treatmentId)
      {
        treatmentId2 = [v15 treatmentId];
        v18 = [(TRIFBClientTreatmentStorage *)self removeTreatmentWithTreatmentId:treatmentId2];
      }

      else
      {
        v18 = 1;
      }
    }

    else if (vsCopy)
    {
      v30 = v14;
      v31 = v13;
      namespaceCompatibilityVersion = [v14 namespaceCompatibilityVersion];
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v20 = vsCopy;
      v21 = [v20 countByEnumeratingWithState:&v32 objects:v42 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v33;
        while (2)
        {
          for (i = 0; i != v22; ++i)
          {
            if (*v33 != v23)
            {
              objc_enumerationMutation(v20);
            }

            if ([*(*(&v32 + 1) + 8 * i) intValue] > namespaceCompatibilityVersion)
            {
              v27 = TRILogCategory_Server();
              if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
              {
                *buf = 138543874;
                v37 = nameCopy;
                v38 = 2112;
                v39 = v20;
                v40 = 1024;
                v41 = namespaceCompatibilityVersion;
                _os_log_error_impl(&dword_26F567000, v27, OS_LOG_TYPE_ERROR, "Error for namespace %{public}@. Every element of Namespace Upgrade Compatibility Versions %@ must be less than or equal to the current rollout Namespace Compatibility Version %u", buf, 0x1Cu);
              }

              v18 = 0;
              v15 = v30;
              v13 = v31;
              goto LABEL_36;
            }
          }

          v22 = [v20 countByEnumeratingWithState:&v32 objects:v42 count:16];
          if (v22)
          {
            continue;
          }

          break;
        }
      }

      v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:namespaceCompatibilityVersion];
      v26 = [v20 containsObject:v25];

      if (v26)
      {
        v18 = 1;
        v13 = v31;
      }

      else
      {
        v13 = v31;
        v18 = [(TRIFBClientTreatmentStorage *)self _removeFactorsWithDescriptor:v31 descriptorDir:v12 treatmentLayer:layer namespaceName:nameCopy];
      }

      v15 = v30;
      v28 = TRILogCategory_Server();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v37 = nameCopy;
        v38 = 2114;
        v39 = v20;
        _os_log_impl(&dword_26F567000, v28, OS_LOG_TYPE_DEFAULT, "Not deleting rollout for namespace %{public}@ due to upgrade NCVS %{public}@", buf, 0x16u);
      }
    }

    else
    {
      v18 = [(TRIFBClientTreatmentStorage *)self _removeFactorsWithDescriptor:v13 descriptorDir:v12 treatmentLayer:layer namespaceName:nameCopy];
    }

LABEL_36:
  }

  else
  {
    v18 = 1;
  }

LABEL_38:
  return v18;
}

- (BOOL)removeTreatmentWithTreatmentId:(id)id
{
  v30 = *MEMORY[0x277D85DE8];
  idCopy = id;
  v6 = objc_autoreleasePoolPush();
  v27 = 0;
  v7 = [(TRIFBClientTreatmentStorage *)self loadTreatmentWithTreatmentId:idCopy isFilePresent:&v27];
  v8 = v7;
  if (v7)
  {
    factorLevelArray = [v7 factorLevelArray];
    firstObject = [factorLevelArray firstObject];

    if (!firstObject || ([firstObject factor], v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "namespaceName"), v12 = objc_claimAutoreleasedReturnValue(), v13 = -[TRIFBClientTreatmentStorage _removeFactorsWithTreatmentId:namespaceName:](self, "_removeFactorsWithTreatmentId:namespaceName:", idCopy, v12), v12, v11, !v13))
    {
      v19 = 0;
LABEL_17:

      goto LABEL_18;
    }

    v14 = [(TRIFBClientTreatmentStorage *)self urlForTreatmentWithTreatmentId:idCopy];
    path = [v14 path];
    if (!path)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFBClientTreatmentStorage.m" lineNumber:526 description:{@"Invalid parameter not satisfying: %@", @"artifactPath"}];
    }

    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v26 = 0;
    v17 = [defaultManager triForceRemoveItemAtPath:path error:&v26];
    v18 = v26;

    if (v17)
    {
      goto LABEL_7;
    }

    domain = [v18 domain];
    v21 = domain;
    if (domain == *MEMORY[0x277CCA050])
    {
      code = [v18 code];

      if (code == 4)
      {
LABEL_7:
        v19 = 1;
LABEL_16:

        goto LABEL_17;
      }
    }

    else
    {
    }

    v23 = TRILogCategory_Server();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v29 = v18;
      _os_log_error_impl(&dword_26F567000, v23, OS_LOG_TYPE_ERROR, "Failed to remove artifact: %{public}@", buf, 0xCu);
    }

    v19 = 0;
    goto LABEL_16;
  }

  v19 = v27 ^ 1;
LABEL_18:

  objc_autoreleasePoolPop(v6);
  return v19 & 1;
}

- (BOOL)_removeFactorsWithTreatmentId:(id)id namespaceName:(id)name
{
  selfCopy = self;
  v5 = [(TRIFBClientTreatmentStorage *)self urlForFactorsWithTreatmentId:id namespaceName:name];
  LOBYTE(selfCopy) = [(TRIFBClientTreatmentStorage *)selfCopy _removeFactorsWithURL:v5];

  return selfCopy;
}

- (BOOL)_removeFactorsWithDescriptor:(id)descriptor descriptorDir:(id)dir treatmentLayer:(unint64_t)layer namespaceName:(id)name
{
  layerCopy = layer;
  v20 = *MEMORY[0x277D85DE8];
  descriptorCopy = descriptor;
  nameCopy = name;
  v12 = [descriptorCopy removeFromDirectory:dir];
  factorsURL = [descriptorCopy factorsURL];

  if (factorsURL)
  {
    factorsURL2 = [descriptorCopy factorsURL];
    v12 &= [(TRIFBClientTreatmentStorage *)self _removeFactorsWithURL:factorsURL2];
  }

  else
  {
    v15 = TRILogCategory_Server();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v17[0] = 67109378;
      v17[1] = layerCopy;
      v18 = 2114;
      v19 = nameCopy;
      _os_log_error_impl(&dword_26F567000, v15, OS_LOG_TYPE_ERROR, "descriptor in layer %u is missing factors URL for namespace %{public}@", v17, 0x12u);
    }
  }

  return v12;
}

- (BOOL)_removeFactorsWithURL:(id)l
{
  v27 = *MEMORY[0x277D85DE8];
  lCopy = l;
  if (!lCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFBClientTreatmentStorage.m" lineNumber:568 description:{@"Invalid parameter not satisfying: %@", @"factorsURL"}];
  }

  v6 = [lCopy triPathAsOwner:0];
  if (v6)
  {
    v7 = [MEMORY[0x277CBEBC0] fileURLWithPath:v6];

    if (v7)
    {
      lCopy = v7;
      uRLByDeletingLastPathComponent = [v7 URLByDeletingLastPathComponent];
      if (!uRLByDeletingLastPathComponent)
      {
        currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
        [currentHandler2 handleFailureInMethod:a2 object:self file:@"TRIFBClientTreatmentStorage.m" lineNumber:588 description:{@"Invalid parameter not satisfying: %@", @"parentURL"}];
      }

      v9 = [uRLByDeletingLastPathComponent triPathAsOwner:0];
      if (!v9)
      {
        currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
        [currentHandler3 handleFailureInMethod:a2 object:self file:@"TRIFBClientTreatmentStorage.m" lineNumber:590 description:{@"Invalid parameter not satisfying: %@", @"parentPath"}];
      }

      v24 = 0;
      path = [lCopy path];
      if (path)
      {
        v11 = path;
        path2 = [lCopy path];
        if ([TRIReferenceManagedDir isPathInManagedDir:path2])
        {
          path3 = [lCopy path];
          v14 = 1;
          v15 = [TRIReferenceManagedDir removeFileInManagedDirWithPath:path3 inUseDeletionBehavior:1 wasDeleted:&v24];

          if (!v15)
          {
            v16 = TRILogCategory_Server();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              v26 = v6;
              _os_log_error_impl(&dword_26F567000, v16, OS_LOG_TYPE_ERROR, "Failed to remove factors path %{public}@ in managed dir", buf, 0xCu);
            }

            v14 = 0;
          }

          goto LABEL_27;
        }
      }

      v14 = 1;
LABEL_27:

      goto LABEL_28;
    }

    lCopy = TRILogCategory_Server();
    if (os_log_type_enabled(lCopy, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v26 = 0;
      _os_log_error_impl(&dword_26F567000, lCopy, OS_LOG_TYPE_ERROR, "Failed to resolve url: %{public}@", buf, 0xCu);
    }

    goto LABEL_24;
  }

  triIsContainerURL = [lCopy triIsContainerURL];
  v18 = TRILogCategory_Server();
  v19 = v18;
  if (!triIsContainerURL)
  {
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v26 = lCopy;
      _os_log_error_impl(&dword_26F567000, v19, OS_LOG_TYPE_ERROR, "Failed to resolve url: %{public}@", buf, 0xCu);
    }

LABEL_24:
    v14 = 0;
    goto LABEL_28;
  }

  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v26 = lCopy;
    _os_log_impl(&dword_26F567000, v19, OS_LOG_TYPE_DEFAULT, "Failed to resolve container url: %{public}@", buf, 0xCu);
  }

  v14 = 1;
LABEL_28:

  return v14;
}

- (id)urlForFactorsWithTreatmentId:(id)id namespaceName:(id)name
{
  v13[2] = *MEMORY[0x277D85DE8];
  v6 = [(TRIFBClientTreatmentStorage *)self _baseUrlForTreatment:id namespaceName:name];
  v7 = MEMORY[0x277CBEBC0];
  path = [v6 path];
  v13[0] = path;
  v13[1] = @"treatment.fb";
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
  v10 = [v7 fileURLWithPathComponents:v9];

  if (!v10)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFBClientTreatmentStorage.m" lineNumber:606 description:@"urlForFactorsWithTreatmentId is nil"];
  }

  return v10;
}

- (BOOL)_savePersistedTreatment:(id)treatment
{
  v25 = *MEMORY[0x277D85DE8];
  treatmentCopy = treatment;
  v6 = objc_autoreleasePoolPush();
  treatmentId = [treatmentCopy treatmentId];
  v8 = [(TRIFBClientTreatmentStorage *)self urlForTreatmentWithTreatmentId:treatmentId];

  uRLByDeletingLastPathComponent = [v8 URLByDeletingLastPathComponent];
  if (!uRLByDeletingLastPathComponent)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFBClientTreatmentStorage.m" lineNumber:615 description:{@"Invalid parameter not satisfying: %@", @"parentDirURL"}];
  }

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v22 = 0;
  v11 = [defaultManager createDirectoryAtURL:uRLByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:&v22];
  v12 = v22;

  if ((v11 & 1) == 0)
  {
    v13 = TRILogCategory_Server();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v24 = v12;
      _os_log_error_impl(&dword_26F567000, v13, OS_LOG_TYPE_ERROR, "Failed to create directory: %{public}@", buf, 0xCu);
    }
  }

  path = [v8 path];

  if (path && ([v8 path], v15 = objc_claimAutoreleasedReturnValue(), v16 = -[TRIFBClientTreatmentStorage _writeFactorLevelsToDisk:namespaceName:writeToPath:](self, "_writeFactorLevelsToDisk:namespaceName:writeToPath:", treatmentCopy, @"0", v15), v15, v16))
  {
    v17 = 1;
  }

  else
  {
    v18 = TRILogCategory_Server();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      treatmentId2 = [treatmentCopy treatmentId];
      *buf = 138412290;
      v24 = treatmentId2;
      _os_log_error_impl(&dword_26F567000, v18, OS_LOG_TYPE_ERROR, "Unable to write persisted treatment for treatment id:%@", buf, 0xCu);
    }

    v17 = 0;
  }

  objc_autoreleasePoolPop(v6);
  return v17;
}

- (BOOL)_deleteOnDemandAssetsWithFactorNames:(id)names treatment:(id)treatment namespace:(id)namespace
{
  v84 = *MEMORY[0x277D85DE8];
  namesCopy = names;
  treatmentCopy = treatment;
  namespaceCopy = namespace;
  treatmentId = [treatmentCopy treatmentId];
  selfCopy = self;
  v59 = namespaceCopy;
  v12 = [(TRIFBClientTreatmentStorage *)self _baseUrlForTreatment:treatmentId namespaceName:namespaceCopy];
  path = [v12 path];

  v60 = treatmentCopy;
  v61 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  factorLevelArray = [treatmentCopy factorLevelArray];
  v14 = [factorLevelArray countByEnumeratingWithState:&v74 objects:v83 count:16];
  if (!v14)
  {
    LOBYTE(v17) = 1;
    goto LABEL_37;
  }

  v15 = v14;
  v58 = a2;
  v16 = *v75;
  LODWORD(v17) = 1;
  v65 = factorLevelArray;
  do
  {
    v18 = 0;
    do
    {
      if (*v75 != v16)
      {
        objc_enumerationMutation(factorLevelArray);
      }

      v19 = *(*(&v74 + 1) + 8 * v18);
      v20 = objc_autoreleasePoolPush();
      level = [v19 level];
      v22 = [level fileOrDirectoryLevelWithIsDir:0];

      if (!v22)
      {
        level2 = [v19 level];
        levelOneOfCase = [level2 levelOneOfCase];

        if (levelOneOfCase != 104)
        {
          goto LABEL_28;
        }

        level3 = [v19 level];
        mobileAssetReferenceValue = [level3 mobileAssetReferenceValue];

        if ([mobileAssetReferenceValue isOnDemand])
        {
          v67 = v17;
          factor = [v19 factor];
          name = [factor name];
          v36 = [namesCopy containsObject:name];

          if (v36)
          {
            v37 = objc_opt_class();
            factor2 = [v19 factor];
            name2 = [factor2 name];
            v40 = [v37 relPathForMAReferenceWithFactorName:name2];

            v41 = [path stringByAppendingPathComponent:v40];
            defaultManager = [MEMORY[0x277CCAA00] defaultManager];
            LODWORD(name2) = [defaultManager fileExistsAtPath:v41];

            if (name2)
            {
              [v61 addObject:v41];
              v43 = objc_opt_new();
              v73 = 0;
              v44 = [v43 writeToFile:v41 options:0x10000000 error:&v73];
              v62 = v73;

              if ((v44 & 1) == 0)
              {
                v45 = TRILogCategory_Server();
                if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
                {
                  buf = 138543362;
                  v80 = v41;
                  _os_log_error_impl(&dword_26F567000, v45, OS_LOG_TYPE_ERROR, "Unable to nil out MARef by creating a blank file at %{public}@", &buf, 0xCu);
                }
              }
            }
          }

          LODWORD(v17) = v67;
LABEL_26:
          factorLevelArray = v65;
        }

LABEL_27:

        goto LABEL_28;
      }

      if (![v22 hasAsset])
      {
        goto LABEL_28;
      }

      mobileAssetReferenceValue = [v22 asset];
      if (![mobileAssetReferenceValue hasCloudKitIndex])
      {
        goto LABEL_27;
      }

      hasPath = [v22 hasPath];

      if (!hasPath)
      {
        goto LABEL_28;
      }

      factor3 = [v19 factor];
      name3 = [factor3 name];
      v27 = [namesCopy containsObject:name3];

      if (v27)
      {
        if ([v22 isOnDemand])
        {
          factor4 = [v19 factor];
          treatmentId2 = [v60 treatmentId];
          v30 = [(TRIFBClientTreatmentStorage *)selfCopy _assetURLForFactor:factor4 treatmentId:treatmentId2];

          mobileAssetReferenceValue = [v30 path];
          if (!mobileAssetReferenceValue)
          {
            currentHandler = [MEMORY[0x277CCA890] currentHandler];
            [currentHandler handleFailureInMethod:v58 object:selfCopy file:@"TRIFBClientTreatmentStorage.m" lineNumber:669 description:{@"Expression was unexpectedly nil/false: %@", @"url.path"}];
          }

          [v61 addObject:mobileAssetReferenceValue];
          [v22 setPath:0];
        }

        else
        {
          mobileAssetReferenceValue = TRILogCategory_Server();
          if (os_log_type_enabled(mobileAssetReferenceValue, OS_LOG_TYPE_ERROR))
          {
            factor5 = [v19 factor];
            name4 = [factor5 name];
            treatmentId3 = [v60 treatmentId];
            buf = 138543618;
            v80 = name4;
            v81 = 2112;
            v82 = treatmentId3;
            _os_log_error_impl(&dword_26F567000, mobileAssetReferenceValue, OS_LOG_TYPE_ERROR, "Factor %{public}@ for treatment %@ is not on-demand.", &buf, 0x16u);
          }

          LODWORD(v17) = 0;
        }

        goto LABEL_26;
      }

      factorLevelArray = v65;
LABEL_28:

      objc_autoreleasePoolPop(v20);
      ++v18;
    }

    while (v15 != v18);
    v50 = [factorLevelArray countByEnumeratingWithState:&v74 objects:v83 count:16];
    v15 = v50;
  }

  while (v50);
LABEL_37:

  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v51 = v61;
  v52 = [v51 countByEnumeratingWithState:&v69 objects:v78 count:16];
  if (v52)
  {
    v53 = v52;
    v54 = *v70;
    do
    {
      for (i = 0; i != v53; ++i)
      {
        if (*v70 != v54)
        {
          objc_enumerationMutation(v51);
        }

        v56 = *(*(&v69 + 1) + 8 * i);
        v68 = 0;
        if (![TRIReferenceManagedDir removeFileInManagedDirWithPath:v56 inUseDeletionBehavior:1 wasDeleted:&v68])
        {
          v17 = TRILogCategory_Server();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            buf = 138543362;
            v80 = v56;
            _os_log_error_impl(&dword_26F567000, v17, OS_LOG_TYPE_ERROR, "Failed to remove file %{public}@ in managed dir", &buf, 0xCu);
          }

          LOBYTE(v17) = 0;
        }
      }

      v53 = [v51 countByEnumeratingWithState:&v69 objects:v78 count:16];
    }

    while (v53);
  }

  return v17 & 1;
}

- (BOOL)_linkAssetsUpdatingTreatment:(id)treatment
{
  v107 = *MEMORY[0x277D85DE8];
  treatmentCopy = treatment;
  v89 = [[TRIAssetStore alloc] initWithPaths:self->_paths];
  factorLevelArray = [treatmentCopy factorLevelArray];
  v7 = [factorLevelArray count];

  if (!v7)
  {
    namespaceName = TRILogCategory_Server();
    if (os_log_type_enabled(namespaceName, OS_LOG_TYPE_DEFAULT))
    {
      treatmentId = [treatmentCopy treatmentId];
      *buf = 138412290;
      v101 = treatmentId;
      _os_log_impl(&dword_26F567000, namespaceName, OS_LOG_TYPE_DEFAULT, "Treatment %@ has no factor levels. Proceeding without linking assets.", buf, 0xCu);
    }

    v65 = 1;
    goto LABEL_73;
  }

  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  factorLevelArray2 = [treatmentCopy factorLevelArray];
  v92 = [factorLevelArray2 countByEnumeratingWithState:&v96 objects:v106 count:16];
  if (!v92)
  {

LABEL_56:
    namespaceName = TRILogCategory_Server();
    if (os_log_type_enabled(namespaceName, OS_LOG_TYPE_ERROR))
    {
      treatmentId2 = [treatmentCopy treatmentId];
      *buf = 138543362;
      v101 = treatmentId2;
      _os_log_error_impl(&dword_26F567000, namespaceName, OS_LOG_TYPE_ERROR, "Unable to find a namespace name from factor levels in treatment %{public}@", buf, 0xCu);
    }

LABEL_72:
    v65 = 0;
    goto LABEL_73;
  }

  v82 = a2;
  selfCopy = self;
  namespaceName = 0;
  v91 = *v97;
  v86 = treatmentCopy;
  v88 = factorLevelArray2;
  do
  {
    v10 = 0;
    v11 = namespaceName;
    do
    {
      if (*v97 != v91)
      {
        objc_enumerationMutation(factorLevelArray2);
      }

      v12 = *(*(&v96 + 1) + 8 * v10);
      context = objc_autoreleasePoolPush();
      factor = [v12 factor];
      namespaceName = [factor namespaceName];

      level = [v12 level];
      v15 = [level fileOrDirectoryLevelWithIsDir:0];

      if (!v15)
      {
        level2 = [v12 level];
        levelOneOfCase = [level2 levelOneOfCase];

        if (levelOneOfCase == 104)
        {
          v90 = namespaceName;
          factor2 = [v12 factor];
          namespaceString = [factor2 namespaceString];

          if (!namespaceString)
          {
            mobileAssetReferenceValue = TRILogCategory_Server();
            if (!os_log_type_enabled(mobileAssetReferenceValue, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_65;
            }

            treatmentId3 = [treatmentCopy treatmentId];
            factor3 = [v12 factor];
            name = [factor3 name];
            *buf = 138543618;
            v101 = treatmentId3;
            v102 = 2114;
            v103 = name;
            _os_log_error_impl(&dword_26F567000, mobileAssetReferenceValue, OS_LOG_TYPE_ERROR, "Treatment %{public}@ has factor %{public}@ with missing namespaceString.", buf, 0x16u);
            goto LABEL_75;
          }

          level3 = [v12 level];
          mobileAssetReferenceValue = [level3 mobileAssetReferenceValue];

          if (![mobileAssetReferenceValue hasAssetType]|| ![mobileAssetReferenceValue hasAssetSpecifier]|| ([mobileAssetReferenceValue hasAssetVersion]& 1) == 0)
          {
            treatmentId3 = TRILogCategory_Server();
            if (!os_log_type_enabled(treatmentId3, OS_LOG_TYPE_ERROR))
            {
LABEL_59:

              goto LABEL_65;
            }

            factor3 = [treatmentCopy treatmentId];
            name = [v12 factor];
            v70Name = [name name];
            *buf = 138543618;
            v101 = factor3;
            v102 = 2114;
            v103 = v70Name;
            _os_log_error_impl(&dword_26F567000, treatmentId3, OS_LOG_TYPE_ERROR, "Treatment %{public}@ has factor %{public}@ with incomplete MobileAssetReference.", buf, 0x16u);

LABEL_75:
            factorLevelArray2 = v88;

            goto LABEL_59;
          }

          factor4 = [v12 factor];
          treatmentId4 = [treatmentCopy treatmentId];
          namespaceName2 = [factor4 namespaceName];
          v40 = [(TRIFBClientTreatmentStorage *)selfCopy _baseUrlForTreatment:treatmentId4 namespaceName:namespaceName2];

          v84 = v40;
          path = [v40 path];
          if (!path)
          {
            currentHandler = [MEMORY[0x277CCA890] currentHandler];
            [currentHandler handleFailureInMethod:v82 object:selfCopy file:@"TRIFBClientTreatmentStorage.m" lineNumber:796 description:{@"Expression was unexpectedly nil/false: %@", @"targetURL.path"}];
          }

          v42 = objc_opt_class();
          v85 = factor4;
          name2 = [factor4 name];
          v44 = [v42 relPathForMAReferenceWithFactorName:name2];

          v83 = v44;
          v45 = [path stringByAppendingPathComponent:v44];
          stringByDeletingLastPathComponent = [v45 stringByDeletingLastPathComponent];
          v47 = objc_alloc(MEMORY[0x277D73740]);
          assetType = [mobileAssetReferenceValue assetType];
          assetSpecifier = [mobileAssetReferenceValue assetSpecifier];
          assetVersion = [mobileAssetReferenceValue assetVersion];
          v51 = [v47 initWithType:assetType specifier:assetSpecifier version:assetVersion];

          [MEMORY[0x277CCAA00] triIdempotentCreateDirectoryOrFaultWithPath:stringByDeletingLastPathComponent];
          if ([mobileAssetReferenceValue hasIsFileFactor])
          {
            isFileFactor = [mobileAssetReferenceValue isFileFactor];
          }

          else
          {
            isFileFactor = 0;
          }

          treatmentCopy = v86;
          if (![(TRIAssetStore *)v89 referenceMAAutoAssetWithId:v51 isFileFactor:isFileFactor usingCurrentPath:v45 futurePath:v45])
          {
            v71 = TRILogCategory_Server();
            if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              v101 = v45;
              _os_log_error_impl(&dword_26F567000, v71, OS_LOG_TYPE_ERROR, "Unable to reference maAutoAsset at %{public}@", buf, 0xCu);
            }

            factorLevelArray2 = v88;
LABEL_65:
            v72 = context;
LABEL_70:

            objc_autoreleasePoolPop(v72);
            namespaceName = v90;
LABEL_71:

            goto LABEL_72;
          }

          namespaceName = v90;
          factorLevelArray2 = v88;
        }

LABEL_38:

        objc_autoreleasePoolPop(context);
        goto LABEL_39;
      }

      if (![v15 hasAsset])
      {
        goto LABEL_38;
      }

      asset = [v15 asset];
      hasAssetId = [asset hasAssetId];

      if (!hasAssetId)
      {
        goto LABEL_38;
      }

      v90 = namespaceName;
      asset2 = [v15 asset];
      assetId = [asset2 assetId];
      mobileAssetReferenceValue = TRIValidateAssetId();

      if (!mobileAssetReferenceValue)
      {
        v73 = TRILogCategory_Server();
        if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
        {
          treatmentId5 = [treatmentCopy treatmentId];
          asset3 = [v15 asset];
          assetId2 = [asset3 assetId];
          factor5 = [v12 factor];
          name3 = [factor5 name];
          *buf = 138412802;
          v101 = treatmentId5;
          v102 = 2114;
          v103 = assetId2;
          v104 = 2114;
          v105 = name3;
          _os_log_error_impl(&dword_26F567000, v73, OS_LOG_TYPE_ERROR, "Treatment %@ has unsuitable asset id %{public}@ for factor %{public}@.", buf, 0x20u);

          factorLevelArray2 = v88;
          goto LABEL_77;
        }

LABEL_69:
        v72 = context;

        goto LABEL_70;
      }

      if (([v12 hasFactor] & 1) == 0)
      {
        v73 = TRILogCategory_Server();
        if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
        {
          treatmentId5 = [treatmentCopy treatmentId];
          *buf = 138412290;
          v101 = treatmentId5;
          _os_log_error_impl(&dword_26F567000, v73, OS_LOG_TYPE_ERROR, "Treatment %@ has missing factor.", buf, 0xCu);
LABEL_77:
        }

        goto LABEL_69;
      }

      factor6 = [v12 factor];
      treatmentId6 = [treatmentCopy treatmentId];
      v23 = [(TRIFBClientTreatmentStorage *)selfCopy _assetURLForFactor:factor6 treatmentId:treatmentId6];

      path2 = [v23 path];
      if (!path2)
      {
        currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
        [currentHandler2 handleFailureInMethod:v82 object:selfCopy file:@"TRIFBClientTreatmentStorage.m" lineNumber:751 description:{@"Expression was unexpectedly nil/false: %@", @"targetURL.path"}];
      }

      stringByDeletingLastPathComponent2 = [path2 stringByDeletingLastPathComponent];
      defaultManager = [MEMORY[0x277CCAA00] defaultManager];
      v95 = 0;
      v27 = [defaultManager createDirectoryAtPath:stringByDeletingLastPathComponent2 withIntermediateDirectories:1 attributes:0 error:&v95];
      v28 = v95;

      if ((v27 & 1) == 0)
      {
        v29 = TRILogCategory_Server();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v101 = v28;
          _os_log_error_impl(&dword_26F567000, v29, OS_LOG_TYPE_ERROR, "Failed to create directory for factor: %{public}@", buf, 0xCu);
        }
      }

      if ([v15 hasIsOnDemand] && objc_msgSend(v15, "isOnDemand") && !-[TRIAssetStore hasAssetWithIdentifier:type:](v89, "hasAssetWithIdentifier:type:", mobileAssetReferenceValue, 0))
      {
        v31 = 0;
        v30 = 1;
      }

      else if ([(TRIAssetStore *)v89 linkAssetWithIdentifier:mobileAssetReferenceValue toPath:path2])
      {
        [v15 setPath:path2];
        v30 = 0;
        v31 = 1;
      }

      else
      {
        v31 = 0;
        v30 = 0;
      }

      treatmentCopy = v86;
      namespaceName = v90;
      factorLevelArray2 = v88;
      if (v31)
      {
        goto LABEL_38;
      }

      objc_autoreleasePoolPop(context);
      if (!v30)
      {
        goto LABEL_71;
      }

LABEL_39:
      ++v10;
      v11 = namespaceName;
    }

    while (v92 != v10);
    v55 = [factorLevelArray2 countByEnumeratingWithState:&v96 objects:v106 count:16];
    v92 = v55;
  }

  while (v55);

  if (!namespaceName)
  {
    goto LABEL_56;
  }

  treatmentId7 = [treatmentCopy treatmentId];
  v57 = [(TRIFBClientTreatmentStorage *)selfCopy _baseUrlForTreatment:treatmentId7 namespaceName:namespaceName];
  path3 = [v57 path];

  if (path3)
  {
    defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
    v94 = 0;
    v60 = [defaultManager2 createDirectoryAtPath:path3 withIntermediateDirectories:1 attributes:0 error:&v94];
    v61 = v94;

    if ((v60 & 1) == 0)
    {
      v62 = TRILogCategory_Server();
      if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v101 = path3;
        v102 = 2114;
        v103 = v61;
        _os_log_error_impl(&dword_26F567000, v62, OS_LOG_TYPE_ERROR, "Failed to create directory for treatment at %{public}@: %{public}@", buf, 0x16u);
      }
    }

    v63 = path3;
    v64 = [TRIReferenceManagedDir createFromDir:v63];

    if (v64)
    {
      v65 = 1;
      goto LABEL_84;
    }

    v81 = TRILogCategory_Server();
    if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v101 = v63;
      _os_log_error_impl(&dword_26F567000, v81, OS_LOG_TYPE_ERROR, "Failed to create reference-managed directory at %{public}@ for factor", buf, 0xCu);
    }
  }

  else
  {
    v61 = TRILogCategory_Server();
    if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v101 = treatmentCopy;
      _os_log_error_impl(&dword_26F567000, v61, OS_LOG_TYPE_ERROR, "Could not get base URL path for treatment %{public}@", buf, 0xCu);
    }
  }

  v65 = 0;
LABEL_84:

LABEL_73:
  return v65;
}

+ (id)relPathForMAReferenceWithFactorName:(id)name
{
  triFilenameForFactorName = [name triFilenameForFactorName];
  v4 = [@"maRefs" stringByAppendingPathComponent:triFilenameForFactorName];

  return v4;
}

- (BOOL)_saveNamespacePartitionedTreatmentsForTreatment:(id)treatment forNamespaceNames:(id)names
{
  v37 = *MEMORY[0x277D85DE8];
  treatmentCopy = treatment;
  namesCopy = names;
  v22 = treatmentCopy;
  treatmentId = [treatmentCopy treatmentId];
  if (treatmentId)
  {
    v7 = objc_opt_new();
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    obj = [treatmentCopy factorLevelArray];
    v8 = [obj countByEnumeratingWithState:&v29 objects:v36 count:16];
    if (v8)
    {
      v9 = *v30;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v30 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v29 + 1) + 8 * i);
          v12 = objc_autoreleasePoolPush();
          factor = [v11 factor];
          namespaceString = [factor namespaceString];

          if (!namespaceString)
          {
            v18 = TRILogCategory_Server();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              LODWORD(buf) = 138543362;
              *(&buf + 4) = v11;
              _os_log_error_impl(&dword_26F567000, v18, OS_LOG_TYPE_ERROR, "Can't save namespace-partitioned treatments: namespaceString is nil for %{public}@", &buf, 0xCu);
            }

            objc_autoreleasePoolPop(v12);
            goto LABEL_21;
          }

          if (!namesCopy || [namesCopy containsObject:namespaceString])
          {
            v15 = [v7 objectForKeyedSubscript:namespaceString];
            if (!v15)
            {
              v15 = objc_opt_new();
              [v15 setTreatmentId:treatmentId];
              [v7 setObject:v15 forKeyedSubscript:namespaceString];
            }

            factorLevelArray = [v15 factorLevelArray];
            [factorLevelArray addObject:v11];
          }

          objc_autoreleasePoolPop(v12);
        }

        v8 = [obj countByEnumeratingWithState:&v29 objects:v36 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v34 = 0x2020000000;
    v35 = 1;
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __97__TRIFBClientTreatmentStorage__saveNamespacePartitionedTreatmentsForTreatment_forNamespaceNames___block_invoke;
    v25[3] = &unk_279DE2860;
    v25[4] = self;
    p_buf = &buf;
    v28 = a2;
    v26 = treatmentId;
    [v7 enumerateKeysAndObjectsUsingBlock:v25];
    v17 = *(*(&buf + 1) + 24);

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v7 = TRILogCategory_Server();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf) = 0;
      _os_log_error_impl(&dword_26F567000, v7, OS_LOG_TYPE_ERROR, "Can't save namespace-partitioned treatments: treatmentId is nil", &buf, 2u);
    }

LABEL_21:
    v17 = 0;
  }

  return v17 & 1;
}

void __97__TRIFBClientTreatmentStorage__saveNamespacePartitionedTreatmentsForTreatment_forNamespaceNames___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v33 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = objc_autoreleasePoolPush();
  v10 = [*(a1 + 32) urlForFactorsWithTreatmentId:*(a1 + 40) namespaceName:v7];
  v11 = [v10 URLByDeletingLastPathComponent];
  if (!v11)
  {
    v25 = [MEMORY[0x277CCA890] currentHandler];
    [v25 handleFailureInMethod:*(a1 + 56) object:*(a1 + 32) file:@"TRIFBClientTreatmentStorage.m" lineNumber:883 description:{@"Invalid parameter not satisfying: %@", @"referenceURL"}];
  }

  if ([*(a1 + 32) _resolveAssetPathsInTreatment:v8 usingReferenceURL:v11])
  {
    v27 = v9;
    v12 = [v8 data];
    if (!v12)
    {
      v26 = [MEMORY[0x277CCA890] currentHandler];
      [v26 handleFailureInMethod:*(a1 + 56) object:*(a1 + 32) file:@"TRIFBClientTreatmentStorage.m" lineNumber:894 description:{@"Invalid parameter not satisfying: %@", @"data"}];
    }

    v13 = [MEMORY[0x277CCAA00] defaultManager];
    v28 = 0;
    v14 = [v13 createDirectoryAtURL:v11 withIntermediateDirectories:1 attributes:0 error:&v28];
    v15 = v28;

    if ((v14 & 1) == 0)
    {
      v16 = TRILogCategory_Server();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v30 = v15;
        _os_log_error_impl(&dword_26F567000, v16, OS_LOG_TYPE_ERROR, "Failed to create directory: %{public}@", buf, 0xCu);
      }
    }

    v17 = [v10 path];

    if (v17 && (v18 = *(a1 + 32), [v10 path], v19 = objc_claimAutoreleasedReturnValue(), LOBYTE(v18) = objc_msgSend(v18, "_writeFactorLevelsToDisk:namespaceName:writeToPath:", v8, v7, v19), v19, (v18 & 1) != 0))
    {
      v20 = TRILogCategory_Server();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = *(a1 + 40);
        v22 = [v10 path];
        *buf = 138543618;
        v30 = v21;
        v31 = 2114;
        v32 = v22;
        _os_log_impl(&dword_26F567000, v20, OS_LOG_TYPE_DEFAULT, "Wrote treament %{public}@ --> %{public}@", buf, 0x16u);
      }
    }

    else
    {
      v24 = TRILogCategory_Server();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v30 = v15;
        _os_log_error_impl(&dword_26F567000, v24, OS_LOG_TYPE_ERROR, "Unable to write serialized namespace treatment: %{public}@", buf, 0xCu);
      }

      *(*(*(a1 + 48) + 8) + 24) = 0;
      *a4 = 1;
    }

    v9 = v27;
  }

  else
  {
    v23 = TRILogCategory_Server();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v30 = v11;
      _os_log_error_impl(&dword_26F567000, v23, OS_LOG_TYPE_ERROR, "Unable to resolve asset paths with reference URL %@", buf, 0xCu);
    }

    *(*(*(a1 + 48) + 8) + 24) = 0;
    *a4 = 1;
  }

  objc_autoreleasePoolPop(v9);
}

- (BOOL)_writeFactorLevelsToDisk:(id)disk namespaceName:(id)name writeToPath:(id)path
{
  v61 = *MEMORY[0x277D85DE8];
  diskCopy = disk;
  nameCopy = name;
  pathCopy = path;
  data = [diskCopy data];
  v11 = 2 * [data length];

  v54 = 0;
  v12 = [objc_alloc(MEMORY[0x277CED180]) initWithFileAtPath:pathCopy capacity:v11 error:&v54];
  v33 = v54;
  if (v12)
  {
    v13 = objc_opt_new();
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v60 = 0;
    v52[0] = 0;
    v52[1] = v52;
    v52[2] = 0x2020000000;
    v53 = 0;
    v48 = 0;
    v49 = &v48;
    v50 = 0x2020000000;
    v51 = 0;
    factorLevelArray = [diskCopy factorLevelArray];
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __82__TRIFBClientTreatmentStorage__writeFactorLevelsToDisk_namespaceName_writeToPath___block_invoke;
    v41[3] = &unk_279DE2D18;
    v45 = &v48;
    v15 = diskCopy;
    v42 = v15;
    v46 = buf;
    v16 = v12;
    v43 = v16;
    v47 = v52;
    v17 = v13;
    v44 = v17;
    [factorLevelArray enumerateObjectsUsingBlock:v41];

    if (*(*&buf[8] + 24))
    {
      v18 = 0;
    }

    else
    {
      v19 = [v17 count];
      if (v19 != v49[3])
      {
        currentHandler = [MEMORY[0x277CCA890] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFBClientTreatmentStorage.m" lineNumber:1158 description:@"Failed to serialize one or more factor levels"];
      }

      v20 = [v16 trifbCreateSortedVectorOfFactorLevelWithOffsets:v17];
      treatmentId = [v15 treatmentId];
      v22 = [v16 createString:treatmentId];

      v23 = [v16 createString:nameCopy];
      v37[0] = MEMORY[0x277D85DD0];
      v37[1] = 3221225472;
      v37[2] = __82__TRIFBClientTreatmentStorage__writeFactorLevelsToDisk_namespaceName_writeToPath___block_invoke_140;
      v37[3] = &unk_279DE2D40;
      v32 = v20;
      v38 = v32;
      v24 = v22;
      v39 = v24;
      v25 = v23;
      v40 = v25;
      v26 = [v16 trifbCreateFastFactorLevelsUsingBlock:v37];
      v36 = 0;
      v18 = [v16 trifbFinishBufferWithRootFastFactorLevelsOfs:v26 error:&v36];
      v27 = v36;
      if ((v18 & 1) == 0)
      {
        v28 = TRILogCategory_Server();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          treatmentId2 = [v15 treatmentId];
          *v55 = 138543618;
          v56 = treatmentId2;
          v57 = 2114;
          v58 = v27;
          _os_log_error_impl(&dword_26F567000, v28, OS_LOG_TYPE_ERROR, "Failed to write factor levels for treatment %{public}@: %{public}@", v55, 0x16u);
        }
      }
    }

    _Block_object_dispose(&v48, 8);
    _Block_object_dispose(v52, 8);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v17 = TRILogCategory_Server();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      *&buf[4] = pathCopy;
      *&buf[12] = 2114;
      *&buf[14] = v33;
      _os_log_error_impl(&dword_26F567000, v17, OS_LOG_TYPE_ERROR, "Failed to create factor levels fb at %{public}@: %{public}@", buf, 0x16u);
    }

    v18 = 0;
  }

  return v18;
}

void __82__TRIFBClientTreatmentStorage__writeFactorLevelsToDisk_namespaceName_writeToPath___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v177 = *MEMORY[0x277D85DE8];
  v5 = a2;
  ++*(*(*(a1 + 56) + 8) + 24);
  if ([v5 hasFactor] && (objc_msgSend(v5, "factor"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "hasName"), v6, (v7 & 1) != 0))
  {
    if ([v5 hasLevel])
    {
      v8 = *(a1 + 40);
      v9 = [v5 factor];
      v10 = [v9 name];
      v11 = [v8 createString:v10];

      v12 = *(a1 + 40);
      v13 = [v5 factor];
      v14 = [v13 namespaceName];
      v15 = [v12 createString:v14];

      v16 = *(a1 + 40);
      v17 = [v5 factor];
      v18 = [v17 id_p];
      v19 = [v16 createString:v18];

      v20 = objc_alloc(MEMORY[0x277CBEB18]);
      v21 = [v5 level];
      v22 = [v20 initWithCapacity:{objc_msgSend(v21, "metadata_Count")}];

      v23 = [v5 level];
      v24 = [v23 metadata];
      v168[0] = MEMORY[0x277D85DD0];
      v168[1] = 3221225472;
      v168[2] = __82__TRIFBClientTreatmentStorage__writeFactorLevelsToDisk_namespaceName_writeToPath___block_invoke_121;
      v168[3] = &unk_279DE2C28;
      v169 = *(a1 + 40);
      v170 = v22;
      v25 = v22;
      [v24 enumerateKeysAndObjectsUsingBlock:v168];

      v26 = [*(a1 + 40) trifbCreateSortedVectorOfFactorMetadataKeyValueWithOffsets:v25];

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      v176 = 0;
      v160[0] = MEMORY[0x277D85DD0];
      v160[1] = 3221225472;
      v160[2] = __82__TRIFBClientTreatmentStorage__writeFactorLevelsToDisk_namespaceName_writeToPath___block_invoke_3;
      v160[3] = &unk_279DE2C50;
      v123 = v19;
      v161 = v123;
      v121 = v11;
      v162 = v121;
      v122 = v15;
      v163 = v122;
      v27 = v26;
      v28 = *(a1 + 72);
      v124 = v27;
      v164 = v27;
      v166 = v28;
      v125 = v5;
      v165 = v125;
      v167 = buf;
      v29 = MEMORY[0x2743948D0](v160);
      v30 = [v125 level];
      v31 = [v30 levelOneOfCase];

      if (v31 <= 14)
      {
        switch(v31)
        {
          case 10:
            v89 = objc_alloc(MEMORY[0x277D736D8]);
            v90 = [v125 level];
            v34 = [v89 initWithVal:{objc_msgSend(v90, "BOOLeanValue")}];

            v91 = [*(a1 + 40) trifbCreateBoxedBoolFromBoxedBool:v34];
            v92 = *(a1 + 40);
            v157[0] = MEMORY[0x277D85DD0];
            v157[1] = 3221225472;
            v157[2] = __82__TRIFBClientTreatmentStorage__writeFactorLevelsToDisk_namespaceName_writeToPath___block_invoke_4;
            v157[3] = &unk_279DE2C78;
            v37 = v91;
            v158 = v37;
            v159 = v29;
            v93 = [v92 trifbCreateFactorLevelUsingBlock:v157];
            [*(a1 + 48) addObject:v93];

            break;
          case 11:
            v94 = *(a1 + 40);
            v95 = [v125 level];
            v96 = [v95 stringValue];
            v97 = [v94 createString:v96];

            v98 = *(a1 + 40);
            v154[0] = MEMORY[0x277D85DD0];
            v154[1] = 3221225472;
            v154[2] = __82__TRIFBClientTreatmentStorage__writeFactorLevelsToDisk_namespaceName_writeToPath___block_invoke_5;
            v154[3] = &unk_279DE2C78;
            v34 = v97;
            v155 = v34;
            v156 = v29;
            v99 = [v98 trifbCreateFactorLevelUsingBlock:v154];
            [*(a1 + 48) addObject:v99];

            v37 = v155;
            break;
          case 13:
            v32 = objc_alloc(MEMORY[0x277D736E8]);
            v33 = [v125 level];
            v34 = [v32 initWithVal:{objc_msgSend(v33, "longValue")}];

            v35 = [*(a1 + 40) trifbCreateBoxedInt64FromBoxedInt64:v34];
            v36 = *(a1 + 40);
            v151[0] = MEMORY[0x277D85DD0];
            v151[1] = 3221225472;
            v151[2] = __82__TRIFBClientTreatmentStorage__writeFactorLevelsToDisk_namespaceName_writeToPath___block_invoke_6;
            v151[3] = &unk_279DE2C78;
            v37 = v35;
            v152 = v37;
            v153 = v29;
            v38 = [v36 trifbCreateFactorLevelUsingBlock:v151];
            [*(a1 + 48) addObject:v38];

            break;
          default:
            goto LABEL_35;
        }

        goto LABEL_34;
      }

      if ((v31 - 100) >= 2)
      {
        if (v31 == 15)
        {
          v100 = objc_alloc(MEMORY[0x277D736E0]);
          v101 = [v125 level];
          [v101 doubleValue];
          v34 = [v100 initWithVal:?];

          v102 = [*(a1 + 40) trifbCreateBoxedDoubleFromBoxedDouble:v34];
          v103 = *(a1 + 40);
          v148[0] = MEMORY[0x277D85DD0];
          v148[1] = 3221225472;
          v148[2] = __82__TRIFBClientTreatmentStorage__writeFactorLevelsToDisk_namespaceName_writeToPath___block_invoke_7;
          v148[3] = &unk_279DE2C78;
          v37 = v102;
          v149 = v37;
          v150 = v29;
          v104 = [v103 trifbCreateFactorLevelUsingBlock:v148];
          [*(a1 + 48) addObject:v104];
        }

        else
        {
          if (v31 != 104)
          {
            goto LABEL_35;
          }

          v40 = [v125 level];
          v41 = [v40 mobileAssetReferenceValue];

          if (![v41 hasAssetType] || !objc_msgSend(v41, "hasAssetSpecifier") || (objc_msgSend(v41, "hasAssetVersion") & 1) == 0)
          {
            v106 = TRILogCategory_Server();
            if (os_log_type_enabled(v106, OS_LOG_TYPE_ERROR))
            {
              v114 = [v125 factor];
              v115 = [v114 name];
              v116 = [*(a1 + 32) treatmentId];
              *v171 = 138543618;
              v172 = v115;
              v173 = 2114;
              v174 = v116;
              _os_log_error_impl(&dword_26F567000, v106, OS_LOG_TYPE_ERROR, "Factor %{public}@ has missing MAAutoAsset metadata in treatment %{public}@.", v171, 0x16u);
            }

            *(*(*(a1 + 64) + 8) + 24) = 1;
            *a4 = 1;

            goto LABEL_39;
          }

          v42 = *(a1 + 40);
          v43 = [v41 assetType];
          v44 = [v42 createString:v43];

          v45 = *(a1 + 40);
          v46 = [v41 assetSpecifier];
          v47 = [v45 createString:v46];

          v48 = *(a1 + 40);
          v49 = [v41 assetVersion];
          v50 = [v48 createString:v49];

          v51 = *(a1 + 40);
          v130[0] = MEMORY[0x277D85DD0];
          v130[1] = 3221225472;
          v130[2] = __82__TRIFBClientTreatmentStorage__writeFactorLevelsToDisk_namespaceName_writeToPath___block_invoke_133;
          v130[3] = &unk_279DE2CF0;
          v37 = v44;
          v131 = v37;
          v52 = v47;
          v132 = v52;
          v53 = v50;
          v133 = v53;
          v34 = v41;
          v134 = v34;
          v54 = [v51 trifbCreateMobileAssetReferenceUsingBlock:v130];
          v55 = *(a1 + 40);
          v127[0] = MEMORY[0x277D85DD0];
          v127[1] = 3221225472;
          v127[2] = __82__TRIFBClientTreatmentStorage__writeFactorLevelsToDisk_namespaceName_writeToPath___block_invoke_2_135;
          v127[3] = &unk_279DE2C78;
          v56 = v54;
          v128 = v56;
          v129 = v29;
          v57 = [v55 trifbCreateFactorLevelUsingBlock:v127];
          [*(a1 + 48) addObject:v57];
        }

LABEL_34:

LABEL_35:
        if ((*(*&buf[8] + 24) & 1) == 0)
        {
          v105 = TRILogCategory_Server();
          if (os_log_type_enabled(v105, OS_LOG_TYPE_ERROR))
          {
            v110 = [v125 factor];
            v111 = [v110 name];
            v112 = [v125 level];
            v113 = [v112 levelOneOfCase];
            *v171 = 138543618;
            v172 = v111;
            v173 = 1024;
            LODWORD(v174) = v113;
            _os_log_error_impl(&dword_26F567000, v105, OS_LOG_TYPE_ERROR, "Factor %{public}@ has unsupported factor level with type %d.", v171, 0x12u);
          }

          *(*(*(a1 + 64) + 8) + 24) = 1;
          *a4 = 1;
        }

LABEL_39:

        _Block_object_dispose(buf, 8);
        goto LABEL_12;
      }

      v59 = [v125 level];
      v60 = [v59 fileOrDirectoryLevelWithIsDir:0];

      if ([v60 hasAsset])
      {
        v61 = [v60 asset];
        if ([v61 hasCloudKitContainer])
        {
LABEL_29:

          goto LABEL_30;
        }

        v62 = [v60 isOnDemand];

        if (v62)
        {
          v63 = TRILogCategory_Server();
          if (os_log_type_enabled(v63, OS_LOG_TYPE_DEBUG))
          {
            v117 = [v125 factor];
            v118 = [v117 name];
            *v171 = 138543362;
            v172 = v118;
            _os_log_debug_impl(&dword_26F567000, v63, OS_LOG_TYPE_DEBUG, "Populating system default cloudKitContainer on asset for %{public}@", v171, 0xCu);
          }

          v61 = [v60 asset];
          [v61 setCloudKitContainer:1];
          goto LABEL_29;
        }
      }

LABEL_30:
      v64 = *(a1 + 40);
      v65 = [v60 path];
      v120 = [v64 createString:v65];

      v66 = *(a1 + 40);
      v67 = [v60 asset];
      v68 = [v67 assetId];
      v69 = [v66 createString:v68];

      v70 = *(a1 + 40);
      v71 = [v60 asset];
      v72 = [v71 treatmentId];
      v73 = [v70 createString:v72];

      v74 = *(a1 + 40);
      v75 = [v60 asset];
      v76 = [v75 name];
      v77 = [v74 createString:v76];

      v78 = *(a1 + 40);
      v145[0] = MEMORY[0x277D85DD0];
      v145[1] = 3221225472;
      v145[2] = __82__TRIFBClientTreatmentStorage__writeFactorLevelsToDisk_namespaceName_writeToPath___block_invoke_128;
      v145[3] = &unk_279DE2CA0;
      v79 = v60;
      v146 = v79;
      v119 = v73;
      v147 = v119;
      v80 = [v78 trifbCreateCloudKitTreatmentRecordAssetUsingBlock:v145];
      v81 = *(a1 + 40);
      v138[0] = MEMORY[0x277D85DD0];
      v138[1] = 3221225472;
      v138[2] = __82__TRIFBClientTreatmentStorage__writeFactorLevelsToDisk_namespaceName_writeToPath___block_invoke_2_130;
      v138[3] = &unk_279DE2CC8;
      v34 = v79;
      v139 = v34;
      v37 = v120;
      v140 = v37;
      v141 = v125;
      v82 = v69;
      v142 = v82;
      v83 = v80;
      v143 = v83;
      v84 = v77;
      v144 = v84;
      v85 = [v81 trifbCreateTrialManagedAssetUsingBlock:v138];
      v86 = *(a1 + 40);
      v135[0] = MEMORY[0x277D85DD0];
      v135[1] = 3221225472;
      v135[2] = __82__TRIFBClientTreatmentStorage__writeFactorLevelsToDisk_namespaceName_writeToPath___block_invoke_3_132;
      v135[3] = &unk_279DE2C78;
      v87 = v85;
      v136 = v87;
      v137 = v29;
      v88 = [v86 trifbCreateFactorLevelUsingBlock:v135];
      [*(a1 + 48) addObject:v88];

      goto LABEL_34;
    }

    v39 = TRILogCategory_Server();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      v107 = [v5 factor];
      v108 = [v107 name];
      v109 = [*(a1 + 32) treatmentId];
      *buf = 138543618;
      *&buf[4] = v108;
      *&buf[12] = 2114;
      *&buf[14] = v109;
      _os_log_error_impl(&dword_26F567000, v39, OS_LOG_TYPE_ERROR, "Factor %{public}@ has missing level in treatment %{public}@.", buf, 0x16u);
    }
  }

  else
  {
    v39 = TRILogCategory_Server();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      v58 = [*(a1 + 32) treatmentId];
      *buf = 138543362;
      *&buf[4] = v58;
      _os_log_error_impl(&dword_26F567000, v39, OS_LOG_TYPE_ERROR, "Factor level has missing factor name in treatment %{public}@.", buf, 0xCu);
    }
  }

  *(*(*(a1 + 64) + 8) + 24) = 1;
  *a4 = 1;
LABEL_12:
}

void __82__TRIFBClientTreatmentStorage__writeFactorLevelsToDisk_namespaceName_writeToPath___block_invoke_121(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 createString:a2];
  v8 = [*(a1 + 32) createString:v6];

  v9 = *(a1 + 32);
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __82__TRIFBClientTreatmentStorage__writeFactorLevelsToDisk_namespaceName_writeToPath___block_invoke_2;
  v16 = &unk_279DE2C00;
  v17 = v7;
  v18 = v8;
  v10 = v8;
  v11 = v7;
  v12 = [v9 trifbCreateFactorMetadataKeyValueUsingBlock:&v13];
  [*(a1 + 40) addObject:{v12, v13, v14, v15, v16}];
}

void __82__TRIFBClientTreatmentStorage__writeFactorLevelsToDisk_namespaceName_writeToPath___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setKey:v3];
  [v4 setVal:*(a1 + 40)];
}

void __82__TRIFBClientTreatmentStorage__writeFactorLevelsToDisk_namespaceName_writeToPath___block_invoke_3(uint64_t a1, void *a2)
{
  v6 = a2;
  [v6 setFactorId:*(a1 + 32)];
  [v6 setName:*(a1 + 40)];
  [v6 setFactorNamespaceName:*(a1 + 48)];
  [v6 setMetadata:*(a1 + 56)];
  ++*(*(*(a1 + 72) + 8) + 24);
  [v6 setCacheKey:?];
  if (populateNamespaceIdInTreatmentSchema == 1)
  {
    v3 = [*(a1 + 64) factor];
    v4 = [v3 hasNamespaceId];

    if (v4)
    {
      v5 = [*(a1 + 64) factor];
      [v6 setNamespaceId:{objc_msgSend(v5, "namespaceId")}];
    }
  }

  *(*(*(a1 + 80) + 8) + 24) = 1;
}

void __82__TRIFBClientTreatmentStorage__writeFactorLevelsToDisk_namespaceName_writeToPath___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setLevelWithBoolVal:v3];
  (*(*(a1 + 40) + 16))();
}

void __82__TRIFBClientTreatmentStorage__writeFactorLevelsToDisk_namespaceName_writeToPath___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setLevelWithStringVal:v3];
  (*(*(a1 + 40) + 16))();
}

void __82__TRIFBClientTreatmentStorage__writeFactorLevelsToDisk_namespaceName_writeToPath___block_invoke_6(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setLevelWithInt64Val:v3];
  (*(*(a1 + 40) + 16))();
}

void __82__TRIFBClientTreatmentStorage__writeFactorLevelsToDisk_namespaceName_writeToPath___block_invoke_7(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setLevelWithDoubleVal:v3];
  (*(*(a1 + 40) + 16))();
}

void __82__TRIFBClientTreatmentStorage__writeFactorLevelsToDisk_namespaceName_writeToPath___block_invoke_128(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = [*(a1 + 32) asset];
  v4 = [v3 cloudKitContainer];

  if (v4 == 1)
  {
    v5 = 1;
  }

  else
  {
    v6 = [*(a1 + 32) asset];
    v7 = [v6 cloudKitContainer];

    if (v7 != 2)
    {
      goto LABEL_6;
    }

    v5 = 2;
  }

  [v11 setContainer:v5];
LABEL_6:
  [v11 setTreatmentId:*(a1 + 40)];
  v8 = [*(a1 + 32) asset];
  v9 = [v8 hasCloudKitIndex];

  if (v9)
  {
    v10 = [*(a1 + 32) asset];
    [v11 setAssetIndex:{objc_msgSend(v10, "cloudKitIndex")}];

    [v11 setHasCkIndex:1];
  }
}

void __82__TRIFBClientTreatmentStorage__writeFactorLevelsToDisk_namespaceName_writeToPath___block_invoke_2_130(uint64_t a1, void *a2)
{
  v10 = a2;
  if ([*(a1 + 32) hasPath])
  {
    [v10 setPath:*(a1 + 40)];
  }

  v3 = [*(a1 + 48) level];
  v4 = [v3 levelOneOfCase] != 101;

  [v10 setFileType:v4];
  [v10 setAssetId:*(a1 + 56)];
  if ([*(a1 + 32) hasAsset])
  {
    [v10 setCloudKitMetadataWithTreatment:*(a1 + 64)];
  }

  if ([*(a1 + 32) hasIsOnDemand])
  {
    [v10 setIsOnDemand:{objc_msgSend(*(a1 + 32), "isOnDemand")}];
    [v10 setHasOnDemandFlag:1];
  }

  v5 = [*(a1 + 32) asset];
  v6 = [v5 hasSize];

  if (v6)
  {
    v7 = [*(a1 + 32) asset];
    [v10 setDownloadSize:{objc_msgSend(v7, "size")}];
  }

  v8 = [*(a1 + 32) asset];
  v9 = [v8 hasName];

  if (v9)
  {
    [v10 setAssetName:*(a1 + 72)];
  }
}

void __82__TRIFBClientTreatmentStorage__writeFactorLevelsToDisk_namespaceName_writeToPath___block_invoke_3_132(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setLevelWithTrialAssetVal:v3];
  (*(*(a1 + 40) + 16))();
}

void __82__TRIFBClientTreatmentStorage__writeFactorLevelsToDisk_namespaceName_writeToPath___block_invoke_133(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setType:*(a1 + 32)];
  [v3 setSpecifier:*(a1 + 40)];
  [v3 setVersion:*(a1 + 48)];
  [v3 setFileType:{objc_msgSend(*(a1 + 56), "isFileFactor")}];
  [v3 setIsOnDemand:{objc_msgSend(*(a1 + 56), "isOnDemand")}];
  if ([*(a1 + 56) hasSize])
  {
    [v3 setDownloadSize:{objc_msgSend(*(a1 + 56), "size")}];
  }
}

void __82__TRIFBClientTreatmentStorage__writeFactorLevelsToDisk_namespaceName_writeToPath___block_invoke_2_135(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setLevelWithMaRefVal:v3];
  (*(*(a1 + 40) + 16))();
}

void __82__TRIFBClientTreatmentStorage__writeFactorLevelsToDisk_namespaceName_writeToPath___block_invoke_140(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  [v4 setLevels:v3];
  [v4 setSourceWithTreatmentId:a1[5]];
  [v4 setNamespaceName:a1[6]];
}

- (id)_assetURLForFactor:(id)factor treatmentId:(id)id
{
  idCopy = id;
  factorCopy = factor;
  namespaceString = [factorCopy namespaceString];
  if (!namespaceString)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFBClientTreatmentStorage.m" lineNumber:1187 description:{@"Invalid parameter not satisfying: %@", @"namespaceName"}];
  }

  v10 = [(TRIFBClientTreatmentStorage *)self _baseUrlForTreatment:idCopy namespaceName:namespaceString];
  v11 = MEMORY[0x277D73758];
  path = [v10 path];
  if (!path)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"TRIFBClientTreatmentStorage.m" lineNumber:1189 description:{@"Expression was unexpectedly nil/false: %@", @"dir.path"}];
  }

  v13 = [v11 pathForFactor:factorCopy directory:path];

  v14 = [MEMORY[0x277CBEBC0] fileURLWithPath:v13];

  return v14;
}

- (id)_baseUrlForTreatment:(id)treatment namespaceName:(id)name
{
  v6 = MEMORY[0x277D737F8];
  nameCopy = name;
  treatmentCopy = treatment;
  v9 = [[v6 alloc] initWithPaths:self->_paths];
  v10 = [v9 baseUrlForTreatment:treatmentCopy namespaceName:nameCopy];

  return v10;
}

- (id)_copyFileFromURL:(id)l to:(id)to
{
  v27 = *MEMORY[0x277D85DE8];
  toCopy = to;
  v8 = MEMORY[0x277CBEA90];
  lCopy = l;
  v24 = 0;
  v10 = [[v8 alloc] initWithContentsOfURL:lCopy options:1 error:&v24];

  v11 = v24;
  if (!v10)
  {
    uRLByDeletingLastPathComponent = TRILogCategory_Server();
    if (os_log_type_enabled(uRLByDeletingLastPathComponent, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v26 = v11;
      _os_log_error_impl(&dword_26F567000, uRLByDeletingLastPathComponent, OS_LOG_TYPE_ERROR, "Failed to read source URL: %{public}@", buf, 0xCu);
    }

    goto LABEL_15;
  }

  uRLByDeletingLastPathComponent = [toCopy URLByDeletingLastPathComponent];
  if (!uRLByDeletingLastPathComponent)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFBClientTreatmentStorage.m" lineNumber:1209 description:{@"Invalid parameter not satisfying: %@", @"parentURL"}];
  }

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v23 = 0;
  v14 = [defaultManager createDirectoryAtURL:uRLByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:&v23];
  v15 = v23;

  if ((v14 & 1) == 0)
  {
    v16 = TRILogCategory_Server();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v26 = v15;
      _os_log_error_impl(&dword_26F567000, v16, OS_LOG_TYPE_ERROR, "Failed to create directory for target file: %{public}@", buf, 0xCu);
    }
  }

  v22 = 0;
  v17 = [v10 writeToURL:toCopy options:268435457 error:&v22];
  v11 = v22;
  if ((v17 & 1) == 0)
  {
    v19 = TRILogCategory_Server();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v26 = v11;
      _os_log_error_impl(&dword_26F567000, v19, OS_LOG_TYPE_ERROR, "Failed to write to target URL: %{public}@", buf, 0xCu);
    }

LABEL_15:
    v18 = 0;
    goto LABEL_16;
  }

  v18 = toCopy;
LABEL_16:

  return v18;
}

- (id)urlForTreatmentWithTreatmentId:(id)id
{
  v5 = MEMORY[0x277D737F8];
  idCopy = id;
  v7 = [[v5 alloc] initWithPaths:self->_paths];
  v8 = [v7 baseUrlForTreatment:idCopy namespaceName:@"0"];

  if (!v8)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFBClientTreatmentStorage.m" lineNumber:1234 description:{@"Invalid parameter not satisfying: %@", @"treatmentBasename"}];
  }

  v9 = [v8 URLByAppendingPathExtension:@"fb"];
  if (!v9)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"TRIFBClientTreatmentStorage.m" lineNumber:1236 description:{@"Invalid parameter not satisfying: %@", @"result"}];
  }

  return v9;
}

- (BOOL)_resolveAssetPathsInTreatment:(id)treatment usingReferenceURL:(id)l
{
  v34 = *MEMORY[0x277D85DE8];
  treatmentCopy = treatment;
  lCopy = l;
  if (([lCopy hasDirectoryPath] & 1) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFBClientTreatmentStorage.m" lineNumber:1241 description:@"referenceURL must be a directory"];
  }

  v9 = [lCopy triPathAsOwner:0];
  if (v9)
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    factorLevelArray = [treatmentCopy factorLevelArray];
    v11 = [factorLevelArray countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v11)
    {
      v12 = v11;
      v27 = lCopy;
      v28 = treatmentCopy;
      v13 = *v30;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v30 != v13)
          {
            objc_enumerationMutation(factorLevelArray);
          }

          level = [*(*(&v29 + 1) + 8 * i) level];
          v16 = [level fileOrDirectoryLevelWithIsDir:0];

          if (v16 && [v16 hasPath])
          {
            v17 = MEMORY[0x277CBEBC0];
            path = [v16 path];
            v19 = [v17 triParseURLFromString:path];

            if (!v19)
            {
              goto LABEL_20;
            }

            v20 = [v19 triPathAsOwner:0];
            if (!v20)
            {

LABEL_20:
              v24 = 0;
              goto LABEL_21;
            }

            v21 = v20;
            defaultManager = [MEMORY[0x277CCAA00] defaultManager];
            v23 = [defaultManager triPath:v21 relativeToParentPath:v9];

            [v16 setPath:v23];
          }
        }

        v12 = [factorLevelArray countByEnumeratingWithState:&v29 objects:v33 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }

      v24 = 1;
LABEL_21:
      lCopy = v27;
      treatmentCopy = v28;
    }

    else
    {
      v24 = 1;
    }
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

@end