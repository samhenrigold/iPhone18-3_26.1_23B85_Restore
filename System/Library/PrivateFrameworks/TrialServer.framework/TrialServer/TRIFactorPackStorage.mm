@interface TRIFactorPackStorage
+ (id)relPathForMAReferenceWithFactorName:(id)name;
- (BOOL)_linkAssetsUpdatingFactorLevel:(id)level fromFactorPackWithId:(id)id usingAssetStore:(id)store currentFactorPackPath:(id)path futureFactorPackPath:(id)packPath;
- (BOOL)_referenceMAAssetWithId:(id)id assetStore:(id)store forFactorName:(id)name isFileFactor:(BOOL)factor currentFactorPackPath:(id)path futureFactorPackPath:(id)packPath;
- (BOOL)_removeUnreferencedFactorPackSetsWithNamespaceName:(id)name removedCount:(unsigned int *)count;
- (BOOL)_removeUnreferencedFactorPackSetsWithParentDir:(id)dir removedCount:(unsigned int *)count;
- (BOOL)removeUnreferencedFactorPacksWithRemovedCount:(unsigned int *)count;
- (BOOL)saveFactorPack:(id)pack populatingAssetsForFactorNames:(id)names aliasToUnaliasMap:(id)map factorPackByNamePath:(id *)path factorPackByIdPath:(id *)idPath;
- (BOOL)saveFactorPackToGlobal:(id)global forFactorNames:(id)names aliasToUnaliasMap:(id)map;
- (BOOL)updateSavedFactorPackWithId:(id)id namespaceName:(id)name deletingAssetsWithFactorNames:(id)names inUseAssetBehavior:(unsigned __int8)behavior;
- (BOOL)updateSavedFactorPackWithId:(id)id namespaceName:(id)name populatingAssetsForFactorNames:(id)names aliasToUnaliasMap:(id)map;
- (BOOL)updateSavedGlobalFactorPackAt:(id)at deletingAssetsWithFactorNames:(id)names;
- (BOOL)updateSavedGlobalFactorPackAt:(id)at populatingAssetsForFactorNames:(id)names;
- (TRIFactorPackStorage)initWithPaths:(id)paths;
- (TRIFactorPackStorage)initWithPaths:(id)paths extractor:(id)extractor;
- (id)_legacyParentDirForFactorPackWithNamespaceName:(id)name;
- (id)_legacyPathForFactorPackWithId:(id)id namespaceName:(id)name;
- (id)_linkAssetWithId:(id)id assetStore:(id)store forFactorName:(id)name currentFactorPackPath:(id)path futureFactorPackPath:(id)packPath;
- (id)_linkAssetsForFactorNames:(id)names aliasToUnaliasMap:(id)map copyingModifiedFactorPackWithPath:(id)path tempDirRef:(id)ref;
- (id)_parentDirForFactorPackWithNamespaceName:(id)name;
- (id)_pathForFactorPackWithId:(id)id namespaceName:(id)name;
- (id)_removeAssetsWithFactorNames:(id)names copyingModifiedFactorPackWithPath:(id)path appendingToPathsToRemove:(id)remove appendingToMARefsToRemove:(id)toRemove tempDirRef:(id)ref;
- (id)_writeFactorPack:(id)pack futurePath:(id)path forFactorNames:(id)names aliasToUnaliasMap:(id)map assetStore:(id)store tempDirRef:(id)ref;
- (id)_writeFactorPackToLegacyPath:(id)path forFactorNames:(id)names aliasToUnaliasMap:(id)map assetStore:(id)store tempDirRef:(id)ref;
- (id)legacyPathForFactorPackWithId:(id)id namespaceName:(id)name;
- (id)loadFactorPackWithDir:(id)dir;
- (id)loadFactorPackWithId:(id)id namespaceName:(id)name;
- (id)loadParsedFactorPackWithDir:(id)dir;
- (id)loadParsedFactorPackWithId:(id)id namespaceName:(id)name;
- (id)pathForFactorPackWithId:(id)id namespaceName:(id)name;
@end

@implementation TRIFactorPackStorage

- (TRIFactorPackStorage)initWithPaths:(id)paths extractor:(id)extractor
{
  pathsCopy = paths;
  extractorCopy = extractor;
  v12.receiver = self;
  v12.super_class = TRIFactorPackStorage;
  v9 = [(TRIFactorPackStorage *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_paths, paths);
    objc_storeStrong(&v10->_extractor, extractor);
  }

  return v10;
}

- (TRIFactorPackStorage)initWithPaths:(id)paths
{
  pathsCopy = paths;
  v5 = [[TRIRemoteAssetExtractor alloc] initWithMonitoredActivity:0];
  v6 = [(TRIFactorPackStorage *)self initWithPaths:pathsCopy extractor:v5];

  return v6;
}

- (BOOL)saveFactorPack:(id)pack populatingAssetsForFactorNames:(id)names aliasToUnaliasMap:(id)map factorPackByNamePath:(id *)path factorPackByIdPath:(id *)idPath
{
  v49 = *MEMORY[0x277D85DE8];
  packCopy = pack;
  namesCopy = names;
  mapCopy = map;
  v15 = objc_autoreleasePoolPush();
  if (([packCopy hasFactorPackId] & 1) == 0)
  {
    v17 = TRILogCategory_Server();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26F567000, v17, OS_LOG_TYPE_ERROR, "TRIClientFactorPack has nil factorPackId", buf, 2u);
    }

    goto LABEL_17;
  }

  factorPackId = [packCopy factorPackId];
  v17 = TRIValidateFactorPackId();

  if (!v17)
  {
LABEL_17:
    LOBYTE(v28) = 0;
    goto LABEL_18;
  }

  pathCopy = path;
  selectedNamespace = [packCopy selectedNamespace];
  name = [selectedNamespace name];
  v20 = [(TRIFactorPackStorage *)self _pathForFactorPackWithId:v17 namespaceName:name];

  if (!v20)
  {
    v36 = TRILogCategory_Server();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      factorPackId2 = [packCopy factorPackId];
      selectedNamespace2 = [packCopy selectedNamespace];
      name2 = [selectedNamespace2 name];
      *buf = 138543618;
      v46 = factorPackId2;
      v47 = 2114;
      v48 = name2;
      _os_log_error_impl(&dword_26F567000, v36, OS_LOG_TYPE_ERROR, "Failed to resolve location for factor pack %{public}@ with namespace %{public}@.", buf, 0x16u);
    }

    goto LABEL_17;
  }

  v43 = v20;
  idPathCopy = idPath;
  v21 = [TRIAssetStore alloc];
  paths = self->_paths;
  extractor = self->_extractor;
  v24 = [[TRIRemoteAssetPatcher alloc] initWithMonitoredActivity:0];
  v25 = [(TRIAssetStore *)v21 initWithPaths:paths extractor:extractor patcher:v24];

  v26 = [TRITempDirScopeGuard alloc];
  localTempDir = [(TRIPaths *)self->_paths localTempDir];
  v28 = [(TRITempDirScopeGuard *)v26 initWithPath:localTempDir];

  v44 = v28;
  if (v28)
  {
    v29 = v43;
    v30 = [(TRIFactorPackStorage *)self _writeFactorPack:packCopy futurePath:v43 forFactorNames:namesCopy aliasToUnaliasMap:mapCopy assetStore:v25 tempDirRef:v28];
    if (v30)
    {
      v40 = v30;
      stringByDeletingLastPathComponent = [v43 stringByDeletingLastPathComponent];
      v32 = [MEMORY[0x277CCAA00] triIdempotentCreateDirectoryOrFaultWithPath:stringByDeletingLastPathComponent];

      if (v32)
      {
        v29 = v43;
        if ([MEMORY[0x277CCAA00] triForceRenameWithSourcePath:v40 destPath:v43])
        {
          v33 = TRILogCategory_Server();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            v46 = v17;
            v47 = 2114;
            v48 = v43;
            _os_log_impl(&dword_26F567000, v33, OS_LOG_TYPE_DEFAULT, "Wrote factor pack %{public}@ --> %{public}@", buf, 0x16u);
          }

          v34 = [(TRIFactorPackStorage *)self _writeFactorPackToLegacyPath:packCopy forFactorNames:namesCopy aliasToUnaliasMap:mapCopy assetStore:v25 tempDirRef:v44];
          if (pathCopy)
          {
            objc_storeStrong(pathCopy, v43);
          }

          if (idPathCopy)
          {
            objc_storeStrong(idPathCopy, v34);
          }

          LOBYTE(v28) = 1;
        }

        else
        {
          LOBYTE(v28) = 0;
        }
      }

      else
      {
        LOBYTE(v28) = 0;
        v29 = v43;
      }

      v30 = v40;
    }

    else
    {
      LOBYTE(v28) = 0;
    }
  }

  else
  {
    v29 = v43;
  }

LABEL_18:
  objc_autoreleasePoolPop(v15);

  return v28;
}

- (id)_writeFactorPackToLegacyPath:(id)path forFactorNames:(id)names aliasToUnaliasMap:(id)map assetStore:(id)store tempDirRef:(id)ref
{
  v34 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  namesCopy = names;
  mapCopy = map;
  storeCopy = store;
  refCopy = ref;
  factorPackId = [pathCopy factorPackId];
  v18 = TRIValidateFactorPackId();

  if (v18)
  {
    selectedNamespace = [pathCopy selectedNamespace];
    name = [selectedNamespace name];
    v21 = [(TRIFactorPackStorage *)self _legacyPathForFactorPackWithId:v18 namespaceName:name];

    if (v21)
    {
      v22 = [(TRIFactorPackStorage *)self _writeFactorPack:pathCopy futurePath:v21 forFactorNames:namesCopy aliasToUnaliasMap:mapCopy assetStore:storeCopy tempDirRef:refCopy];
      if (v22)
      {
        stringByDeletingLastPathComponent = [v21 stringByDeletingLastPathComponent];
        if ([MEMORY[0x277CCAA00] triIdempotentCreateDirectoryOrFaultWithPath:stringByDeletingLastPathComponent] && objc_msgSend(MEMORY[0x277CCAA00], "triForceRenameWithSourcePath:destPath:", v22, v21))
        {
          v24 = TRILogCategory_Server();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            v30 = 138543618;
            v31 = v18;
            v32 = 2114;
            v33 = v21;
            _os_log_impl(&dword_26F567000, v24, OS_LOG_TYPE_DEFAULT, "Wrote factor pack %{public}@ --> %{public}@ (legacy id-based directory).", &v30, 0x16u);
          }

          v25 = v21;
        }

        else
        {
          v25 = 0;
        }
      }

      else
      {
        v25 = 0;
      }
    }

    else
    {
      v21 = TRILogCategory_Server();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        factorPackId2 = [pathCopy factorPackId];
        selectedNamespace2 = [pathCopy selectedNamespace];
        name2 = [selectedNamespace2 name];
        v30 = 138543618;
        v31 = factorPackId2;
        v32 = 2114;
        v33 = name2;
        _os_log_impl(&dword_26F567000, v21, OS_LOG_TYPE_INFO, "Failed to resolve id based location for factor pack %{public}@ with namespace %{public}@.", &v30, 0x16u);
      }

      v25 = 0;
    }
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

- (BOOL)saveFactorPackToGlobal:(id)global forFactorNames:(id)names aliasToUnaliasMap:(id)map
{
  v49 = *MEMORY[0x277D85DE8];
  globalCopy = global;
  namesCopy = names;
  mapCopy = map;
  if (([globalCopy hasFactorPackId] & 1) == 0)
  {
    v12 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *v45 = 0;
      _os_log_error_impl(&dword_26F567000, v12, OS_LOG_TYPE_ERROR, "Failed to find factor pack identifier when saving factor pack globally", v45, 2u);
    }

    goto LABEL_11;
  }

  factorPackId = [globalCopy factorPackId];
  v12 = TRIValidateFactorPackId();

  if (!v12)
  {
LABEL_11:
    LOBYTE(v28) = 0;
    goto LABEL_12;
  }

  v13 = objc_autoreleasePoolPush();
  v14 = [(TRIPaths *)self->_paths treatmentsDirUsingGlobal:1];
  v15 = objc_alloc(MEMORY[0x277CCACA8]);
  selectedNamespace = [globalCopy selectedNamespace];
  name = [selectedNamespace name];
  v18 = [v15 initWithFormat:@"%@/factorPacks/%@", name, v12];
  v37 = [v14 stringByAppendingPathComponent:v18];

  objc_autoreleasePoolPop(v13);
  if (!v37)
  {
    v32 = TRILogCategory_Server();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      selectedNamespace2 = [globalCopy selectedNamespace];
      name2 = [selectedNamespace2 name];
      *v45 = 138543618;
      *&v45[4] = v12;
      *&v45[12] = 2114;
      *&v45[14] = name2;
      _os_log_error_impl(&dword_26F567000, v32, OS_LOG_TYPE_ERROR, "Failed to resolve location for factor pack %{public}@ with namespace %{public}@.", v45, 0x16u);
    }

    goto LABEL_11;
  }

  v19 = [TRIAssetStore alloc];
  paths = self->_paths;
  extractor = self->_extractor;
  v22 = [[TRIRemoteAssetPatcher alloc] initWithMonitoredActivity:0];
  v36 = [(TRIAssetStore *)v19 initWithPaths:paths extractor:extractor patcher:v22];

  v23 = [TRITempDirScopeGuard alloc];
  localTempDir = [(TRIPaths *)self->_paths localTempDir];
  v25 = [(TRITempDirScopeGuard *)v23 initWithPath:localTempDir];

  if (v25)
  {
    v26 = [(TRIFactorPackStorage *)self _writeFactorPack:globalCopy futurePath:v37 forFactorNames:namesCopy aliasToUnaliasMap:mapCopy assetStore:v36 tempDirRef:v25];
    if (v26)
    {
      *v45 = 0;
      *&v45[8] = v45;
      *&v45[16] = 0x3032000000;
      v46 = __Block_byref_object_copy__32;
      v47 = __Block_byref_object_dispose__32;
      v48 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v38[0] = MEMORY[0x277D85DD0];
      v38[1] = 3221225472;
      v38[2] = __80__TRIFactorPackStorage_saveFactorPackToGlobal_forFactorNames_aliasToUnaliasMap___block_invoke;
      v38[3] = &unk_279DDF720;
      v39 = namesCopy;
      v40 = v45;
      [globalCopy enumerateFactorLevelsWithBlock:v38];
      v27 = [[TRIRemoteAssetStoreOperator alloc] initWithPaths:self->_paths];
      v28 = [(TRIRemoteAssetStoreOperator *)v27 saveFactorPackToGlobalPath:v37 fromTemporaryPath:v26 factors:*(*&v45[8] + 40)];
      v29 = TRILogCategory_Server();
      v30 = v29;
      if (v28)
      {
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          v42 = v12;
          v43 = 2114;
          v44 = v37;
          _os_log_impl(&dword_26F567000, v30, OS_LOG_TYPE_DEFAULT, "Wrote global factor pack %{public}@ --> %{public}@", buf, 0x16u);
        }
      }

      else if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v42 = v37;
        _os_log_error_impl(&dword_26F567000, v30, OS_LOG_TYPE_ERROR, "Failed to write global factor pack to %@", buf, 0xCu);
      }

      _Block_object_dispose(v45, 8);
    }

    else
    {
      v33 = TRILogCategory_Server();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        *v45 = 0;
        _os_log_error_impl(&dword_26F567000, v33, OS_LOG_TYPE_ERROR, "Failed to create or copy global factor pack to a temporary directory.", v45, 2u);
      }

      LOBYTE(v28) = 0;
    }
  }

  else
  {
    LOBYTE(v28) = 0;
  }

LABEL_12:
  return v28;
}

void __80__TRIFactorPackStorage_saveFactorPackToGlobal_forFactorNames_aliasToUnaliasMap___block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  if ([v9 hasLevel])
  {
    v3 = [v9 level];
    if ([v3 isFactorOnDemand])
    {
      v4 = *(a1 + 32);
      v5 = [v9 factor];
      v6 = [v5 name];
      LODWORD(v4) = [v4 containsObject:v6];

      if (!v4)
      {
        goto LABEL_6;
      }

      v7 = *(*(*(a1 + 40) + 8) + 40);
      v3 = [v9 factor];
      v8 = [v3 name];
      [v7 addObject:v8];
    }
  }

LABEL_6:
}

- (id)_writeFactorPack:(id)pack futurePath:(id)path forFactorNames:(id)names aliasToUnaliasMap:(id)map assetStore:(id)store tempDirRef:(id)ref
{
  v51 = *MEMORY[0x277D85DE8];
  packCopy = pack;
  pathCopy = path;
  namesCopy = names;
  mapCopy = map;
  storeCopy = store;
  refCopy = ref;
  if (([packCopy hasFactorPackId] & 1) == 0)
  {
    v20 = TRILogCategory_Server();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138543362;
      *(&buf + 4) = pathCopy;
      _os_log_error_impl(&dword_26F567000, v20, OS_LOG_TYPE_ERROR, "Failed to find factor pack identifier when writing factor pack to path: %{public}@", &buf, 0xCu);
    }

    goto LABEL_12;
  }

  factorPackId = [packCopy factorPackId];
  v20 = TRIValidateFactorPackId();

  if (!v20)
  {
LABEL_12:
    v30 = 0;
    goto LABEL_13;
  }

  v21 = objc_alloc(MEMORY[0x277CCACA8]);
  v22 = objc_opt_new();
  uUIDString = [v22 UUIDString];
  v24 = [v21 initWithFormat:@"fp-%@-%@", v20, uUIDString];

  path = [refCopy path];
  v26 = [path stringByAppendingPathComponent:v24];

  if (![MEMORY[0x277CCAA00] triIdempotentCreateDirectoryOrFaultWithPath:v26])
  {

    goto LABEL_12;
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v49 = 0x2020000000;
  v50 = 0;
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __107__TRIFactorPackStorage__writeFactorPack_futurePath_forFactorNames_aliasToUnaliasMap_assetStore_tempDirRef___block_invoke;
  v35[3] = &unk_279DE2B60;
  p_buf = &buf;
  v36 = mapCopy;
  v37 = namesCopy;
  selfCopy = self;
  v20 = v20;
  v39 = v20;
  v40 = storeCopy;
  v27 = v26;
  v41 = v27;
  v42 = pathCopy;
  v32 = MEMORY[0x2743948D0](v35);
  v28 = [v27 stringByAppendingPathComponent:@"factorPack.pb"];
  v34 = 0;
  if (([MEMORY[0x277D73678] copySourceFactorPack:packCopy toDestPath:v28 error:&v34 modifyFactorLevel:v32] & 1) == 0)
  {
    v29 = TRILogCategory_Server();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *v44 = 138543618;
      v45 = v27;
      v46 = 2114;
      v47 = v34;
      _os_log_error_impl(&dword_26F567000, v29, OS_LOG_TYPE_ERROR, "Failed to copy factor pack to %{public}@: %{public}@", v44, 0x16u);
    }

    goto LABEL_18;
  }

  if (*(*(&buf + 1) + 24) == 1)
  {
    v29 = TRILogCategory_Server();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *v44 = 138412290;
      v45 = v20;
      _os_log_error_impl(&dword_26F567000, v29, OS_LOG_TYPE_ERROR, "Failed to link assets for factor pack with Id: %@", v44, 0xCu);
    }

LABEL_18:

    goto LABEL_19;
  }

  if ([MEMORY[0x277CCAA00] triRemoveFileProtectionIfPresentForPath:v28] && +[TRIReferenceManagedDir createFromDir:](TRIReferenceManagedDir, "createFromDir:", v27))
  {
    v30 = v27;
    goto LABEL_20;
  }

LABEL_19:
  v30 = 0;
LABEL_20:

  _Block_object_dispose(&buf, 8);
LABEL_13:

  return v30;
}

id __107__TRIFactorPackStorage__writeFactorPack_futurePath_forFactorNames_aliasToUnaliasMap_assetStore_tempDirRef___block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (*(*(*(a1 + 88) + 8) + 24))
  {
    goto LABEL_20;
  }

  if ([v3 hasLevel])
  {
    v5 = [v4 level];
    v6 = [v5 fileOrDirectoryLevelWithIsDir:0];

    if ([v6 hasAsset])
    {
      v7 = [v6 asset];
      if ([v7 hasCloudKitContainer])
      {
LABEL_9:

        goto LABEL_10;
      }

      v8 = [v6 isOnDemand];

      if (v8)
      {
        v9 = TRILogCategory_Server();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          v20 = [v4 factor];
          v21 = [v20 name];
          v22 = 138543362;
          v23 = v21;
          _os_log_debug_impl(&dword_26F567000, v9, OS_LOG_TYPE_DEBUG, "Populating system default cloudKitContainer on asset for %{public}@", &v22, 0xCu);
        }

        v7 = [v6 asset];
        [v7 setCloudKitContainer:1];
        goto LABEL_9;
      }
    }

LABEL_10:
  }

  v10 = *(a1 + 32);
  v11 = [v4 factor];
  v12 = [v11 name];
  v13 = [v10 objectForKeyedSubscript:v12];
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v16 = [v4 factor];
    v15 = [v16 name];
  }

  v17 = [v4 factor];
  [v17 setName:v15];

  if ([*(a1 + 40) containsObject:v15] && (objc_msgSend(*(a1 + 48), "_linkAssetsUpdatingFactorLevel:fromFactorPackWithId:usingAssetStore:currentFactorPackPath:futureFactorPackPath:", v4, *(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80)) & 1) == 0)
  {
    v18 = TRILogCategory_Server();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v22 = 138412290;
      v23 = v15;
      _os_log_error_impl(&dword_26F567000, v18, OS_LOG_TYPE_ERROR, "Failed to link asset for factor name: %@", &v22, 0xCu);
    }

    *(*(*(a1 + 88) + 8) + 24) = 1;
  }

LABEL_20:

  return v4;
}

- (id)loadParsedFactorPackWithId:(id)id namespaceName:(id)name
{
  v5 = [(TRIFactorPackStorage *)self pathForFactorPackWithId:id namespaceName:name];
  if (v5)
  {
    v6 = [(TRIFactorPackStorage *)self loadParsedFactorPackWithDir:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)loadFactorPackWithDir:(id)dir
{
  v20 = *MEMORY[0x277D85DE8];
  dirCopy = dir;
  v4 = objc_autoreleasePoolPush();
  v5 = [dirCopy stringByAppendingPathComponent:@"factorPack.pb"];
  v14 = 0;
  v6 = [objc_alloc(MEMORY[0x277CBEA90]) initWithContentsOfFile:v5 options:8 error:&v14];
  v7 = v14;
  v8 = v7;
  v15 = v7;
  if (v6)
  {
    v15 = 0;

    v9 = [objc_alloc(MEMORY[0x277D73670]) initWithData:v6 error:&v15];
    if (v9)
    {
      v10 = v9;
      v11 = v10;
      goto LABEL_10;
    }

    v12 = TRILogCategory_Server();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v17 = v5;
      v18 = 2114;
      v19 = v15;
      _os_log_error_impl(&dword_26F567000, v12, OS_LOG_TYPE_ERROR, "Failed to parse TRIClientFactorPack at %{public}@: %{public}@", buf, 0x16u);
    }

    v10 = 0;
  }

  else
  {
    v10 = TRILogCategory_Server();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v17 = dirCopy;
      v18 = 2114;
      v19 = v8;
      _os_log_error_impl(&dword_26F567000, v10, OS_LOG_TYPE_ERROR, "Failed to load TRIClientFactorPack from factor pack directory at %{public}@: %{public}@", buf, 0x16u);
    }
  }

  v11 = 0;
LABEL_10:

  objc_autoreleasePoolPop(v4);

  return v11;
}

- (id)loadParsedFactorPackWithDir:(id)dir
{
  v20 = *MEMORY[0x277D85DE8];
  dirCopy = dir;
  v4 = objc_autoreleasePoolPush();
  v5 = [dirCopy stringByAppendingPathComponent:@"factorPack.pb"];
  v15 = 0;
  v6 = [objc_alloc(MEMORY[0x277CBEA90]) initWithContentsOfFile:v5 options:8 error:&v15];
  v7 = v15;
  v8 = v7;
  if (v6)
  {

    v14 = 0;
    v9 = [MEMORY[0x277D73AD8] parseFromData:v6 error:&v14];
    v8 = v14;
    if (v9)
    {
      v10 = v9;
      v11 = v10;
      goto LABEL_10;
    }

    v12 = TRILogCategory_Server();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v17 = v5;
      v18 = 2114;
      v19 = v8;
      _os_log_error_impl(&dword_26F567000, v12, OS_LOG_TYPE_ERROR, "Failed to parse TRIClientFactorPack at %{public}@: %{public}@", buf, 0x16u);
    }

    v10 = 0;
  }

  else
  {
    v10 = TRILogCategory_Server();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v17 = dirCopy;
      v18 = 2114;
      v19 = v8;
      _os_log_error_impl(&dword_26F567000, v10, OS_LOG_TYPE_ERROR, "Failed to load TRIClientFactorPack from factor pack directory at %{public}@: %{public}@", buf, 0x16u);
    }
  }

  v11 = 0;
LABEL_10:

  objc_autoreleasePoolPop(v4);

  return v11;
}

- (id)loadFactorPackWithId:(id)id namespaceName:(id)name
{
  idCopy = id;
  nameCopy = name;
  v8 = objc_autoreleasePoolPush();
  v9 = [(TRIFactorPackStorage *)self pathForFactorPackWithId:idCopy namespaceName:nameCopy];
  if (v9)
  {
    v10 = [(TRIFactorPackStorage *)self loadFactorPackWithDir:v9];
  }

  else
  {
    v10 = 0;
  }

  objc_autoreleasePoolPop(v8);

  return v10;
}

- (BOOL)updateSavedFactorPackWithId:(id)id namespaceName:(id)name populatingAssetsForFactorNames:(id)names aliasToUnaliasMap:(id)map
{
  v41 = *MEMORY[0x277D85DE8];
  idCopy = id;
  nameCopy = name;
  namesCopy = names;
  mapCopy = map;
  v14 = objc_autoreleasePoolPush();
  if ([namesCopy count])
  {
    v15 = [(TRIFactorPackStorage *)self pathForFactorPackWithId:idCopy namespaceName:nameCopy];
    v16 = [(TRIFactorPackStorage *)self legacyPathForFactorPackWithId:idCopy namespaceName:nameCopy];
    if (v15 | v16)
    {
      v17 = [TRITempDirScopeGuard alloc];
      localTempDir = [(TRIPaths *)self->_paths localTempDir];
      v19 = [(TRITempDirScopeGuard *)v17 initWithPath:localTempDir];

      if (v19)
      {
        if (!mapCopy)
        {
          mapCopy = MEMORY[0x277CBEC10];
        }

        if (v15)
        {
          v20 = [(TRIFactorPackStorage *)self _linkAssetsForFactorNames:namesCopy aliasToUnaliasMap:mapCopy copyingModifiedFactorPackWithPath:v15 tempDirRef:v19];
          if (v16)
          {
LABEL_8:
            v21 = [(TRIFactorPackStorage *)self _linkAssetsForFactorNames:namesCopy aliasToUnaliasMap:mapCopy copyingModifiedFactorPackWithPath:v16 tempDirRef:v19];
            goto LABEL_17;
          }
        }

        else
        {
          v20 = 0;
          if (v16)
          {
            goto LABEL_8;
          }
        }

        v21 = 0;
LABEL_17:
        v22 = (v20 | v21) != 0;
        v35 = v14;
        v36 = v21;
        if (v20 | v21)
        {
          v34 = v20;
          if (v20)
          {
            v31 = MEMORY[0x277CCAA00];
            v23 = [v15 stringByAppendingPathComponent:@"factorPack.pb"];
            LODWORD(v20) = [v31 triRenameOrFaultWithSourcePath:v20 destPath:v23];

            v21 = v36;
          }

          if (v21)
          {
            v24 = v21;
            v30 = MEMORY[0x277CCAA00];
            [v16 stringByAppendingPathComponent:@"factorPack.pb"];
            v20 = v32 = v20;
            LODWORD(v24) = [v30 triRenameOrFaultWithSourcePath:v24 destPath:v20];

            LODWORD(v20) = v32;
            v25 = v24;
          }

          else
          {
            v25 = 0;
          }

          v26 = v34;
          if (((v20 | v25) & 1) == 0)
          {
            v22 = 0;
            goto LABEL_36;
          }

          if (v20)
          {
            v33 = v25;
            v28 = TRILogCategory_Server();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543618;
              *v38 = idCopy;
              *&v38[8] = 2114;
              *&v38[10] = v15;
              _os_log_impl(&dword_26F567000, v28, OS_LOG_TYPE_DEFAULT, "Updated factor pack %{public}@ --> %{public}@", buf, 0x16u);
            }

            v25 = v33;
          }

          if (!v25)
          {
            v22 = 1;
            goto LABEL_36;
          }

          v27 = TRILogCategory_Server();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            *v38 = idCopy;
            *&v38[8] = 2114;
            *&v38[10] = v16;
            _os_log_impl(&dword_26F567000, v27, OS_LOG_TYPE_DEFAULT, "Updated factor pack %{public}@ --> %{public}@", buf, 0x16u);
          }
        }

        else
        {
          v26 = v20;
          v27 = TRILogCategory_Server();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109890;
            *v38 = 1;
            *&v38[4] = 2114;
            *&v38[6] = v15;
            *&v38[14] = 1024;
            *&v38[16] = 1;
            v39 = 2114;
            v40 = v16;
            _os_log_error_impl(&dword_26F567000, v27, OS_LOG_TYPE_ERROR, "updateSavedFactorPackWithId failed to link temp based factor pack for: name based directory (%d): %{public}@ OR identifier based directory (%d): %{public}@.", buf, 0x22u);
          }
        }

LABEL_36:
        v14 = v35;
        goto LABEL_37;
      }
    }

    else
    {
      v19 = TRILogCategory_Server();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        *v38 = idCopy;
        _os_log_error_impl(&dword_26F567000, v19, OS_LOG_TYPE_ERROR, "updateSavedFactorPackWithId failed because preexisting factor pack %{public}@ is not present on disk.", buf, 0xCu);
      }
    }

    v22 = 0;
LABEL_37:

    goto LABEL_38;
  }

  v15 = TRILogCategory_Server();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    *v38 = idCopy;
    _os_log_impl(&dword_26F567000, v15, OS_LOG_TYPE_DEFAULT, "Updating factor pack %{public}@ was a no-op. No factor names specified", buf, 0xCu);
  }

  v22 = 1;
LABEL_38:

  objc_autoreleasePoolPop(v14);
  return v22;
}

- (BOOL)updateSavedGlobalFactorPackAt:(id)at populatingAssetsForFactorNames:(id)names
{
  atCopy = at;
  namesCopy = names;
  v8 = NSTemporaryDirectory();
  v9 = objc_opt_new();
  uUIDString = [v9 UUIDString];
  v11 = [v8 stringByAppendingPathComponent:uUIDString];

  v12 = [[TRITempDirScopeGuard alloc] initWithPath:v11];
  if (v12)
  {
    v13 = [(TRIFactorPackStorage *)self _linkAssetsForFactorNames:namesCopy aliasToUnaliasMap:0 copyingModifiedFactorPackWithPath:atCopy tempDirRef:v12];
    if (v13)
    {
      v14 = MEMORY[0x277CCAA00];
      v15 = [atCopy stringByAppendingPathComponent:@"factorPack.pb"];
      v16 = [v14 triRenameOrFaultWithSourcePath:v13 destPath:v15];
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (BOOL)_linkAssetsUpdatingFactorLevel:(id)level fromFactorPackWithId:(id)id usingAssetStore:(id)store currentFactorPackPath:(id)path futureFactorPackPath:(id)packPath
{
  v67 = *MEMORY[0x277D85DE8];
  levelCopy = level;
  idCopy = id;
  storeCopy = store;
  pathCopy = path;
  packPathCopy = packPath;
  factor = [levelCopy factor];
  if (![factor hasName] || (objc_msgSend(factor, "name"), v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "length"), v18, !v19))
  {
    v21 = TRILogCategory_Server();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v62 = idCopy;
      _os_log_error_impl(&dword_26F567000, v21, OS_LOG_TYPE_ERROR, "Factor pack %{public}@ has factor with missing or empty name.", buf, 0xCu);
    }

    goto LABEL_13;
  }

  if (([levelCopy hasLevel] & 1) == 0)
  {
    v21 = TRILogCategory_Server();
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
LABEL_13:
      LOBYTE(v30) = 0;
      goto LABEL_14;
    }

    name = [factor name];
    *buf = 138543618;
    v62 = idCopy;
    v63 = 2114;
    v64 = name;
    _os_log_error_impl(&dword_26F567000, v21, OS_LOG_TYPE_ERROR, "Factor pack %{public}@ has factor %{public}@ with missing level.", buf, 0x16u);
    goto LABEL_27;
  }

  level = [levelCopy level];
  v21 = [level fileOrDirectoryLevelWithIsDir:0];

  if (!v21)
  {
    level2 = [levelCopy level];
    levelOneOfCase = [level2 levelOneOfCase];

    if (levelOneOfCase != 104)
    {
      goto LABEL_42;
    }

    factor2 = [levelCopy factor];
    namespaceString = [factor2 namespaceString];

    if (namespaceString)
    {
      level3 = [levelCopy level];
      mobileAssetReferenceValue = [level3 mobileAssetReferenceValue];

      if ([mobileAssetReferenceValue hasAssetType] && objc_msgSend(mobileAssetReferenceValue, "hasAssetSpecifier") && (objc_msgSend(mobileAssetReferenceValue, "hasAssetVersion") & 1) != 0)
      {
        v53 = objc_alloc(MEMORY[0x277D73740]);
        assetType = [mobileAssetReferenceValue assetType];
        assetSpecifier = [mobileAssetReferenceValue assetSpecifier];
        assetVersion = [mobileAssetReferenceValue assetVersion];
        v54 = [v53 initWithType:assetType specifier:assetSpecifier version:?];

        factor3 = [levelCopy factor];
        name2 = [factor3 name];
        if ([mobileAssetReferenceValue hasIsFileFactor])
        {
          isFileFactor = [mobileAssetReferenceValue isFileFactor];
        }

        else
        {
          isFileFactor = 0;
        }

        v52 = [(TRIFactorPackStorage *)self _referenceMAAssetWithId:v54 assetStore:storeCopy forFactorName:name2 isFileFactor:isFileFactor currentFactorPackPath:pathCopy futureFactorPackPath:packPathCopy];

        if (v52)
        {
          goto LABEL_42;
        }
      }

      else
      {
        v45 = TRILogCategory_Server();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          name3 = [factor name];
          *buf = 138543618;
          v62 = idCopy;
          v63 = 2114;
          v64 = name3;
          _os_log_error_impl(&dword_26F567000, v45, OS_LOG_TYPE_ERROR, "Factor pack %{public}@ has factor %{public}@ with incomplete MobileAssetReference.", buf, 0x16u);
        }
      }
    }

    else
    {
      v46 = TRILogCategory_Server();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        name4 = [factor name];
        *buf = 138543618;
        v62 = idCopy;
        v63 = 2114;
        v64 = name4;
        _os_log_error_impl(&dword_26F567000, v46, OS_LOG_TYPE_ERROR, "Factor pack %{public}@ has factor %{public}@ with missing namespaceString.", buf, 0x16u);
      }
    }

    v21 = 0;
    goto LABEL_13;
  }

  factor4 = [levelCopy factor];
  namespaceString2 = [factor4 namespaceString];

  if (!namespaceString2)
  {
    name = TRILogCategory_Server();
    if (os_log_type_enabled(name, OS_LOG_TYPE_ERROR))
    {
      name5 = [factor name];
      *buf = 138543618;
      v62 = idCopy;
      v63 = 2114;
      v64 = name5;
      v44 = "Factor pack %{public}@ has factor %{public}@ with missing namespaceString.";
      goto LABEL_39;
    }

LABEL_27:

    goto LABEL_13;
  }

  if (!-[NSObject hasAsset](v21, "hasAsset") || (-[NSObject asset](v21, "asset"), v24 = objc_claimAutoreleasedReturnValue(), v25 = [v24 hasAssetId], v24, (v25 & 1) == 0))
  {
    name = TRILogCategory_Server();
    if (os_log_type_enabled(name, OS_LOG_TYPE_ERROR))
    {
      name5 = [factor name];
      *buf = 138543618;
      v62 = idCopy;
      v63 = 2114;
      v64 = name5;
      v44 = "Factor pack %{public}@ has factor %{public}@ with missing assetId.";
LABEL_39:
      _os_log_error_impl(&dword_26F567000, name, OS_LOG_TYPE_ERROR, v44, buf, 0x16u);

      goto LABEL_27;
    }

    goto LABEL_27;
  }

  asset = [v21 asset];
  assetId = [asset assetId];
  v27 = TRIValidateAssetId();

  v57 = v27;
  if (!v27)
  {
    name = TRILogCategory_Server();
    if (os_log_type_enabled(name, OS_LOG_TYPE_ERROR))
    {
      asset2 = [v21 asset];
      assetId2 = [asset2 assetId];
      factor5 = [levelCopy factor];
      name6 = [factor5 name];
      *buf = 138543874;
      v62 = idCopy;
      v63 = 2114;
      v64 = assetId2;
      v65 = 2114;
      v66 = name6;
      _os_log_error_impl(&dword_26F567000, name, OS_LOG_TYPE_ERROR, "Factor pack %{public}@ has unsuitable asset id %{public}@ for factor %{public}@.", buf, 0x20u);
    }

    goto LABEL_27;
  }

  factor6 = [levelCopy factor];
  name7 = [factor6 name];
  v30 = [(TRIFactorPackStorage *)self _linkAssetWithId:v57 assetStore:storeCopy forFactorName:name7 currentFactorPackPath:pathCopy futureFactorPackPath:packPathCopy];

  if (v30)
  {
    v31 = [packPathCopy stringByAppendingPathComponent:v30];
    [v21 setPath:v31];

LABEL_42:
    LOBYTE(v30) = 1;
    goto LABEL_14;
  }

LABEL_14:
  return v30;
}

- (id)_linkAssetsForFactorNames:(id)names aliasToUnaliasMap:(id)map copyingModifiedFactorPackWithPath:(id)path tempDirRef:(id)ref
{
  v45 = *MEMORY[0x277D85DE8];
  namesCopy = names;
  mapCopy = map;
  pathCopy = path;
  refCopy = ref;
  v13 = [(TRIFactorPackStorage *)self loadFactorPackWithDir:pathCopy];
  if (!v13)
  {
    v27 = 0;
    goto LABEL_12;
  }

  path = [refCopy path];
  v15 = objc_alloc(MEMORY[0x277CCACA8]);
  v16 = objc_opt_new();
  uUIDString = [v16 UUIDString];
  v18 = [v15 initWithFormat:@"fp-update-%@.pb", uUIDString];
  v19 = [path stringByAppendingPathComponent:v18];

  v20 = [TRIAssetStore alloc];
  paths = self->_paths;
  extractor = self->_extractor;
  v23 = [[TRIRemoteAssetPatcher alloc] initWithMonitoredActivity:0];
  v24 = [(TRIAssetStore *)v20 initWithPaths:paths extractor:extractor patcher:v23];

  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = 0;
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __113__TRIFactorPackStorage__linkAssetsForFactorNames_aliasToUnaliasMap_copyingModifiedFactorPackWithPath_tempDirRef___block_invoke;
  v32[3] = &unk_279DE2B88;
  v38 = &v39;
  v33 = mapCopy;
  v34 = namesCopy;
  selfCopy = self;
  v25 = v24;
  v36 = v25;
  v37 = pathCopy;
  v26 = MEMORY[0x2743948D0](v32);
  v31 = 0;
  if (([MEMORY[0x277D73678] copySourceFactorPack:v13 toDestPath:v19 error:&v31 modifyFactorLevel:v26] & 1) == 0)
  {
    v28 = TRILogCategory_Server();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v44 = v31;
      _os_log_error_impl(&dword_26F567000, v28, OS_LOG_TYPE_ERROR, "Failed to make modified copy of factor pack: %{public}@", buf, 0xCu);
    }

    goto LABEL_10;
  }

  if ((v40[3] & 1) != 0 || ![MEMORY[0x277CCAA00] triRemoveFileProtectionIfPresentForPath:v19])
  {
LABEL_10:
    v27 = 0;
    goto LABEL_11;
  }

  v27 = v19;
LABEL_11:

  _Block_object_dispose(&v39, 8);
LABEL_12:

  return v27;
}

id __113__TRIFactorPackStorage__linkAssetsForFactorNames_aliasToUnaliasMap_copyingModifiedFactorPackWithPath_tempDirRef___block_invoke(uint64_t a1, void *a2)
{
  v50 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = v4;
  if (*(*(*(a1 + 72) + 8) + 24) == 1 || ![v4 hasFactor] || (objc_msgSend(v5, "factor"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "hasName"), v6, (v7 & 1) == 0))
  {
    v15 = v5;
    goto LABEL_8;
  }

  v8 = *(a1 + 32);
  if (v8 && ([v5 factor], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "name"), v2 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "objectForKeyedSubscript:", v2), (v9 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v10 = v9;
    v11 = *(a1 + 32);
    v12 = [v5 factor];
    v13 = [v12 name];
    v14 = [v11 objectForKeyedSubscript:v13];
  }

  else
  {
    v17 = [v5 factor];
    v14 = [v17 name];

    if (!v8)
    {
      goto LABEL_13;
    }
  }

LABEL_13:
  if ([*(a1 + 40) containsObject:v14])
  {
    v18 = [v5 level];
    v19 = [v18 fileOrDirectoryLevelWithIsDir:0];

    if (v19)
    {
      if ([v19 hasPath])
      {
        goto LABEL_37;
      }

      if (![v19 hasAsset])
      {
        goto LABEL_37;
      }

      v20 = [v19 asset];
      v21 = [v20 hasAssetId];

      if ((v21 & 1) == 0)
      {
        goto LABEL_37;
      }

      v22 = [v19 asset];
      v23 = [v22 assetId];
      v24 = TRIValidateAssetId();

      if (!v24)
      {
        goto LABEL_37;
      }

      v25 = *(a1 + 48);
      v26 = *(a1 + 56);
      v27 = [v5 factor];
      v28 = [v27 name];
      v29 = [v25 _linkAssetWithId:v24 assetStore:v26 forFactorName:v28 currentFactorPackPath:*(a1 + 64) futureFactorPackPath:*(a1 + 64)];

      if (v29)
      {
        v30 = [*(a1 + 64) stringByAppendingPathComponent:v29];
        if (![TRIReferenceManagedDir saveFromGarbageCollectionItemWithPath:v30])
        {
          v31 = TRILogCategory_Server();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            v48 = 138543362;
            v49 = v30;
            _os_log_error_impl(&dword_26F567000, v31, OS_LOG_TYPE_ERROR, "Unable to prevent newly linked asset at path %{public}@ from being garbage collected in the future", &v48, 0xCu);
          }
        }

        [v19 setPath:v30];

        goto LABEL_36;
      }
    }

    else
    {
      v33 = [v5 level];
      v34 = [v33 levelOneOfCase];

      if (v34 != 104)
      {
LABEL_37:
        v47 = v5;
        goto LABEL_38;
      }

      v35 = [v5 level];
      v24 = [v35 mobileAssetReferenceValue];

      if (![v24 hasAssetType] || !objc_msgSend(v24, "hasAssetSpecifier") || (objc_msgSend(v24, "hasAssetVersion") & 1) == 0)
      {
        v45 = v5;

LABEL_38:
        goto LABEL_39;
      }

      v36 = objc_alloc(MEMORY[0x277D73740]);
      v37 = [v24 assetType];
      v38 = [v24 assetSpecifier];
      v39 = [v24 assetVersion];
      v29 = [v36 initWithType:v37 specifier:v38 version:v39];

      v40 = *(a1 + 48);
      v41 = *(a1 + 56);
      v42 = [v5 factor];
      v43 = [v42 name];
      if ([v24 hasIsFileFactor])
      {
        v44 = [v24 isFileFactor];
      }

      else
      {
        v44 = 0;
      }

      v46 = [v40 _referenceMAAssetWithId:v29 assetStore:v41 forFactorName:v43 isFileFactor:v44 currentFactorPackPath:*(a1 + 64) futureFactorPackPath:*(a1 + 64)];

      if (v46)
      {
LABEL_36:

        goto LABEL_37;
      }
    }

    *(*(*(a1 + 72) + 8) + 24) = 1;
    goto LABEL_36;
  }

  v32 = v5;
LABEL_39:

LABEL_8:

  return v5;
}

- (id)_linkAssetWithId:(id)id assetStore:(id)store forFactorName:(id)name currentFactorPackPath:(id)path futureFactorPackPath:(id)packPath
{
  packPathCopy = packPath;
  pathCopy = path;
  storeCopy = store;
  idCopy = id;
  triFilenameForFactorName = [name triFilenameForFactorName];
  v16 = MEMORY[0x277CCAA00];
  v17 = [pathCopy stringByAppendingPathComponent:@"assets"];
  [v16 triIdempotentCreateDirectoryOrFaultWithPath:v17];

  v18 = [@"assets" stringByAppendingPathComponent:triFilenameForFactorName];
  v19 = [pathCopy stringByAppendingPathComponent:v18];

  v20 = [packPathCopy stringByAppendingPathComponent:v18];

  LODWORD(packPathCopy) = [storeCopy linkAssetWithIdentifier:idCopy toCurrentPath:v19 futurePath:v20];
  if (packPathCopy)
  {
    v21 = v18;
  }

  else
  {
    v21 = 0;
  }

  v22 = v21;

  return v21;
}

+ (id)relPathForMAReferenceWithFactorName:(id)name
{
  triFilenameForFactorName = [name triFilenameForFactorName];
  v4 = [@"maRefs" stringByAppendingPathComponent:triFilenameForFactorName];

  return v4;
}

- (BOOL)_referenceMAAssetWithId:(id)id assetStore:(id)store forFactorName:(id)name isFileFactor:(BOOL)factor currentFactorPackPath:(id)path futureFactorPackPath:(id)packPath
{
  factorCopy = factor;
  packPathCopy = packPath;
  pathCopy = path;
  nameCopy = name;
  storeCopy = store;
  idCopy = id;
  v18 = [objc_opt_class() relPathForMAReferenceWithFactorName:nameCopy];

  v19 = [pathCopy stringByAppendingPathComponent:v18];
  stringByDeletingLastPathComponent = [v19 stringByDeletingLastPathComponent];

  [MEMORY[0x277CCAA00] triIdempotentCreateDirectoryOrFaultWithPath:stringByDeletingLastPathComponent];
  v21 = [pathCopy stringByAppendingPathComponent:v18];

  v22 = [packPathCopy stringByAppendingPathComponent:v18];

  LOBYTE(factorCopy) = [storeCopy referenceMAAutoAssetWithId:idCopy isFileFactor:factorCopy usingCurrentPath:v21 futurePath:v22];
  return factorCopy;
}

- (BOOL)updateSavedFactorPackWithId:(id)id namespaceName:(id)name deletingAssetsWithFactorNames:(id)names inUseAssetBehavior:(unsigned __int8)behavior
{
  behaviorCopy = behavior;
  v82 = *MEMORY[0x277D85DE8];
  idCopy = id;
  nameCopy = name;
  namesCopy = names;
  v13 = objc_autoreleasePoolPush();
  v14 = [(TRIFactorPackStorage *)self pathForFactorPackWithId:idCopy namespaceName:nameCopy];
  v15 = [(TRIFactorPackStorage *)self legacyPathForFactorPackWithId:idCopy namespaceName:nameCopy];
  v16 = v15;
  if (!(v14 | v15))
  {
    v19 = TRILogCategory_Server();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v79 = idCopy;
      _os_log_error_impl(&dword_26F567000, v19, OS_LOG_TYPE_ERROR, "updateSavedFactorPackWithId failed because preexisting factor pack %{public}@ is not present on disk.", buf, 0xCu);
    }

    v23 = 0;
    goto LABEL_50;
  }

  v65 = v15;
  v17 = [TRITempDirScopeGuard alloc];
  localTempDir = [(TRIPaths *)self->_paths localTempDir];
  v19 = [(TRITempDirScopeGuard *)v17 initWithPath:localTempDir];

  if (!v19)
  {
    v23 = 0;
    v16 = v65;
    goto LABEL_50;
  }

  v20 = objc_opt_new();
  v21 = objc_opt_new();
  v68 = v21;
  v64 = v20;
  if (v14)
  {
    v22 = [(TRIFactorPackStorage *)self _removeAssetsWithFactorNames:namesCopy copyingModifiedFactorPackWithPath:v14 appendingToPathsToRemove:v20 appendingToMARefsToRemove:v21 tempDirRef:v19];
  }

  else
  {
    v22 = 0;
  }

  v16 = v65;
  v63 = v22;
  if (v65)
  {
    v24 = [(TRIFactorPackStorage *)self _removeAssetsWithFactorNames:namesCopy copyingModifiedFactorPackWithPath:v65 appendingToPathsToRemove:v64 appendingToMARefsToRemove:0 tempDirRef:v19];
    v22 = v63;
  }

  else
  {
    v24 = 0;
  }

  if (!(v22 | v24))
  {
    v23 = 0;
    goto LABEL_49;
  }

  v61 = v19;
  v62 = v24;
  v25 = v22;
  if (v22)
  {
    v26 = MEMORY[0x277CCAA00];
    v27 = [v14 stringByAppendingPathComponent:@"factorPack.pb"];
    LODWORD(v25) = [v26 triRenameOrFaultWithSourcePath:v25 destPath:v27];

    v24 = v62;
  }

  if (v24)
  {
    v28 = v24;
    v29 = MEMORY[0x277CCAA00];
    v30 = [v65 stringByAppendingPathComponent:@"factorPack.pb"];
    v31 = [v29 triRenameOrFaultWithSourcePath:v28 destPath:v30];
  }

  else
  {
    v31 = 0;
  }

  if (((v25 | v31) & 1) == 0)
  {
    v23 = 0;
    goto LABEL_48;
  }

  if (v25)
  {
    v32 = TRILogCategory_Server();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v79 = idCopy;
      v80 = 2114;
      v81 = v14;
      _os_log_impl(&dword_26F567000, v32, OS_LOG_TYPE_DEFAULT, "Updated factor pack %{public}@ --> %{public}@", buf, 0x16u);
    }
  }

  v58 = namesCopy;
  if (v31)
  {
    v33 = TRILogCategory_Server();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v79 = idCopy;
      v80 = 2114;
      v81 = v65;
      _os_log_impl(&dword_26F567000, v33, OS_LOG_TYPE_DEFAULT, "Updated factor pack %{public}@ --> %{public}@", buf, 0x16u);
    }
  }

  v56 = v14;
  v57 = v13;
  v59 = nameCopy;
  v60 = idCopy;
  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v34 = v64;
  v35 = [v34 countByEnumeratingWithState:&v73 objects:v77 count:16];
  if (!v35)
  {
    LOBYTE(v38) = 1;
    goto LABEL_47;
  }

  v36 = v35;
  v37 = *v74;
  v38 = 1;
  v39 = off_279DDE000;
  v40 = v68;
  v67 = behaviorCopy;
  v66 = v34;
  do
  {
    for (i = 0; i != v36; ++i)
    {
      if (*v74 != v37)
      {
        objc_enumerationMutation(v34);
      }

      v42 = *(*(&v73 + 1) + 8 * i);
      v72 = 0;
      if (![(__objc2_class *)v39[9] removeFileInManagedDirWithPath:v42 inUseDeletionBehavior:behaviorCopy wasDeleted:&v72, v56, v57])
      {
        v44 = TRILogCategory_Server();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v79 = v42;
          _os_log_error_impl(&dword_26F567000, v44, OS_LOG_TYPE_ERROR, "Failed to remove file %{public}@ in managed dir", buf, 0xCu);
        }

        v38 = 0;
        goto LABEL_41;
      }

      if (behaviorCopy == 3)
      {
        v43 = [v40 objectForKeyedSubscript:v42];

        if (v43)
        {
          v44 = [v40 objectForKeyedSubscript:v42];
          v45 = objc_opt_new();
          v46 = objc_alloc(MEMORY[0x277D73740]);
          [v44 assetType];
          v47 = v69 = v38;
          assetSpecifier = [v44 assetSpecifier];
          [v44 assetVersion];
          v50 = v49 = v39;
          v51 = [v46 initWithType:v47 specifier:assetSpecifier version:v50];

          v39 = v49;
          v52 = [v45 createAutoAssetWithId:v51 decryptionKey:0 error:0];
          assetSelector = [v52 assetSelector];
          v70[0] = MEMORY[0x277D85DD0];
          v70[1] = 3221225472;
          v70[2] = __115__TRIFactorPackStorage_updateSavedFactorPackWithId_namespaceName_deletingAssetsWithFactorNames_inUseAssetBehavior___block_invoke;
          v70[3] = &unk_279DE25E8;
          v71 = v52;
          v54 = v52;
          [v45 eliminateAllForSelector:assetSelector completion:v70];

          v38 = v69;
          behaviorCopy = v67;

          v40 = v68;
          v34 = v66;

LABEL_41:
          continue;
        }
      }
    }

    v36 = [v34 countByEnumeratingWithState:&v73 objects:v77 count:16];
  }

  while (v36);
LABEL_47:
  v23 = v38;

  nameCopy = v59;
  idCopy = v60;
  v13 = v57;
  namesCopy = v58;
  v14 = v56;
LABEL_48:
  v16 = v65;
  v19 = v61;
  v24 = v62;
LABEL_49:

LABEL_50:
  objc_autoreleasePoolPop(v13);

  return v23 & 1;
}

void __115__TRIFactorPackStorage_updateSavedFactorPackWithId_namespaceName_deletingAssetsWithFactorNames_inUseAssetBehavior___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = TRILogCategory_Server();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v9 = 138543618;
      v10 = v7;
      v11 = 2114;
      v12 = v4;
      _os_log_error_impl(&dword_26F567000, v6, OS_LOG_TYPE_ERROR, "Failed to eliminate MAAutoAsset %{public}@: %{public}@", &v9, 0x16u);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = 138543362;
    v10 = v8;
    _os_log_impl(&dword_26F567000, v6, OS_LOG_TYPE_DEFAULT, "Eliminated MAAutoAsset: %{public}@", &v9, 0xCu);
  }
}

- (BOOL)updateSavedGlobalFactorPackAt:(id)at deletingAssetsWithFactorNames:(id)names
{
  v41 = *MEMORY[0x277D85DE8];
  atCopy = at;
  namesCopy = names;
  v8 = NSTemporaryDirectory();
  v9 = objc_opt_new();
  uUIDString = [v9 UUIDString];
  v11 = [v8 stringByAppendingPathComponent:uUIDString];

  v12 = [[TRITempDirScopeGuard alloc] initWithPath:v11];
  if (v12)
  {
    v13 = objc_opt_new();
    v14 = [(TRIFactorPackStorage *)self _removeAssetsWithFactorNames:namesCopy copyingModifiedFactorPackWithPath:atCopy appendingToPathsToRemove:v13 appendingToMARefsToRemove:0 tempDirRef:v12];
    v15 = MEMORY[0x277CCAA00];
    v16 = [atCopy stringByAppendingPathComponent:@"factorPack.pb"];
    LOBYTE(v15) = [v15 triRenameOrFaultWithSourcePath:v14 destPath:v16];

    if (v15)
    {
      v27 = v14;
      v28 = v12;
      v29 = namesCopy;
      v30 = atCopy;
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v17 = v13;
      v18 = [v17 countByEnumeratingWithState:&v32 objects:v36 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v33;
        v21 = 1;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v33 != v20)
            {
              objc_enumerationMutation(v17);
            }

            v23 = *(*(&v32 + 1) + 8 * i);
            v31 = 0;
            if (![TRIReferenceManagedDir removeFileInManagedDirWithPath:v23 inUseDeletionBehavior:2 wasDeleted:&v31, v27])
            {
              v24 = TRILogCategory_Server();
              if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
              {
                buf = 138543362;
                v38 = v23;
                _os_log_error_impl(&dword_26F567000, v24, OS_LOG_TYPE_ERROR, "Failed to remove file %{public}@ in global managed dir", &buf, 0xCu);
              }

              v21 = 0;
            }
          }

          v19 = [v17 countByEnumeratingWithState:&v32 objects:v36 count:16];
        }

        while (v19);
      }

      else
      {
        v21 = 1;
      }

      v25 = TRILogCategory_Server();
      v14 = v27;
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_26F567000, v25, OS_LOG_TYPE_INFO, "Successfuly removed factors from global path.", &buf, 2u);
      }

      namesCopy = v29;
      atCopy = v30;
      v12 = v28;
    }

    else
    {
      v25 = TRILogCategory_Server();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        buf = 138543618;
        v38 = v14;
        v39 = 2114;
        v40 = atCopy;
        _os_log_error_impl(&dword_26F567000, v25, OS_LOG_TYPE_ERROR, "Failed to move the temp factorPack.pb file in %{public}@ to the global path %{public}@", &buf, 0x16u);
      }

      v21 = 0;
    }
  }

  else
  {
    v13 = TRILogCategory_Server();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf) = 0;
      _os_log_error_impl(&dword_26F567000, v13, OS_LOG_TYPE_ERROR, "Failed to create temp directory while attempting to delete assets from global directory.", &buf, 2u);
    }

    v21 = 0;
  }

  return v21 & 1;
}

- (id)_removeAssetsWithFactorNames:(id)names copyingModifiedFactorPackWithPath:(id)path appendingToPathsToRemove:(id)remove appendingToMARefsToRemove:(id)toRemove tempDirRef:(id)ref
{
  v44 = *MEMORY[0x277D85DE8];
  namesCopy = names;
  pathCopy = path;
  removeCopy = remove;
  toRemoveCopy = toRemove;
  refCopy = ref;
  v17 = [(TRIFactorPackStorage *)self loadFactorPackWithDir:pathCopy];
  if (!v17)
  {
    v30 = 0;
    goto LABEL_11;
  }

  v34 = refCopy;
  path = [refCopy path];
  selfCopy = self;
  v19 = objc_alloc(MEMORY[0x277CCACA8]);
  v20 = objc_opt_new();
  [v20 UUIDString];
  v21 = v17;
  v22 = pathCopy;
  v23 = toRemoveCopy;
  v25 = v24 = namesCopy;
  v26 = removeCopy;
  v27 = [v19 initWithFormat:@"fp-update-%@.pb", v25];
  v28 = [path stringByAppendingPathComponent:v27];

  removeCopy = v26;
  namesCopy = v24;
  toRemoveCopy = v23;
  pathCopy = v22;
  v17 = v21;

  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __149__TRIFactorPackStorage__removeAssetsWithFactorNames_copyingModifiedFactorPackWithPath_appendingToPathsToRemove_appendingToMARefsToRemove_tempDirRef___block_invoke;
  v36[3] = &unk_279DE2BB0;
  v37 = namesCopy;
  v38 = v26;
  v39 = selfCopy;
  v40 = pathCopy;
  v41 = toRemoveCopy;
  v29 = MEMORY[0x2743948D0](v36);
  v35 = 0;
  if (([MEMORY[0x277D73678] copySourceFactorPack:v17 toDestPath:v28 error:&v35 modifyFactorLevel:v29] & 1) == 0)
  {
    v31 = TRILogCategory_Server();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v43 = v35;
      _os_log_error_impl(&dword_26F567000, v31, OS_LOG_TYPE_ERROR, "Failed to make modified copy of factor pack: %{public}@", buf, 0xCu);
    }

    goto LABEL_9;
  }

  if (![MEMORY[0x277CCAA00] triRemoveFileProtectionIfPresentForPath:v28])
  {
LABEL_9:
    v30 = 0;
    goto LABEL_10;
  }

  v30 = v28;
LABEL_10:
  refCopy = v34;

LABEL_11:

  return v30;
}

id __149__TRIFactorPackStorage__removeAssetsWithFactorNames_copyingModifiedFactorPackWithPath_appendingToPathsToRemove_appendingToMARefsToRemove_tempDirRef___block_invoke(uint64_t a1, void *a2)
{
  v41 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 factor];
  v5 = [v4 hasName];

  if ((v5 & 1) == 0)
  {
    v13 = v3;
    goto LABEL_21;
  }

  v6 = [v3 level];
  v7 = [v6 fileOrDirectoryLevelWithIsDir:0];

  if (v7)
  {
    if ([v7 isOnDemand])
    {
      if ([v7 hasPath])
      {
        v8 = *(a1 + 32);
        v9 = [v3 factor];
        v10 = [v9 name];
        LOBYTE(v8) = [v8 containsObject:v10];

        if (v8)
        {
          v11 = *(a1 + 40);
          v12 = [v7 path];
          [v11 addObject:v12];

          [v7 setPath:0];
        }
      }
    }
  }

  else
  {
    v14 = [v3 level];
    v15 = [v14 levelOneOfCase];

    if (v15 == 104)
    {
      v16 = [v3 level];
      v17 = [v16 mobileAssetReferenceValue];

      if ([v17 isOnDemand] && (v18 = *(a1 + 32), objc_msgSend(v3, "factor"), v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v19, "name"), v20 = objc_claimAutoreleasedReturnValue(), LOBYTE(v18) = objc_msgSend(v18, "containsObject:", v20), v20, v19, (v18 & 1) != 0))
      {
        v21 = objc_opt_class();
        v22 = [v3 factor];
        v23 = [v22 name];
        v24 = [v21 relPathForMAReferenceWithFactorName:v23];

        v25 = [*(a1 + 56) stringByAppendingPathComponent:v24];
        v26 = [MEMORY[0x277CCAA00] defaultManager];
        v27 = [v26 fileExistsAtPath:v25];

        if (v27)
        {
          [*(a1 + 40) addObject:v25];
          v28 = *(a1 + 64);
          if (v28)
          {
            [v28 setObject:v17 forKey:v25];
          }

          v29 = objc_opt_new();
          v38 = 0;
          v30 = [v29 writeToFile:v25 options:0x10000000 error:&v38];
          v31 = v38;

          if ((v30 & 1) == 0)
          {
            v32 = TRILogCategory_Server();
            if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              v40 = v25;
              _os_log_error_impl(&dword_26F567000, v32, OS_LOG_TYPE_ERROR, "Unable to nil out MARef by creating a blank file at %{public}@", buf, 0xCu);
            }
          }

          v33 = v3;
        }

        else
        {
          v37 = v3;
        }
      }

      else
      {
        v36 = v3;
      }

      goto LABEL_20;
    }
  }

  v34 = v3;
LABEL_20:

LABEL_21:

  return v3;
}

- (id)pathForFactorPackWithId:(id)id namespaceName:(id)name
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = [(TRIFactorPackStorage *)self _pathForFactorPackWithId:id namespaceName:name];
  if (v4)
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v6 = [defaultManager fileExistsAtPath:v4];

    if (v6)
    {
      v7 = v4;
      goto LABEL_8;
    }

    v8 = TRILogCategory_Server();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = 138543362;
      v11 = v4;
      _os_log_error_impl(&dword_26F567000, v8, OS_LOG_TYPE_ERROR, "Factor pack does not exist at %{public}@", &v10, 0xCu);
    }
  }

  v7 = 0;
LABEL_8:

  return v7;
}

- (id)_pathForFactorPackWithId:(id)id namespaceName:(id)name
{
  idCopy = id;
  nameCopy = name;
  v8 = [(TRIFactorPackStorage *)self _parentDirForFactorPackWithNamespaceName:nameCopy];
  if (v8)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = [v8 stringByAppendingPathComponent:idCopy];
    objc_autoreleasePoolPop(v9);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_parentDirForFactorPackWithNamespaceName:(id)name
{
  v13 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  if ([nameCopy length])
  {
    v5 = objc_autoreleasePoolPush();
    treatmentsDir = [(TRIPaths *)self->_paths treatmentsDir];
    nameCopy = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@/factorPacks", nameCopy];
    v8 = [treatmentsDir stringByAppendingPathComponent:nameCopy];

    objc_autoreleasePoolPop(v5);
  }

  else
  {
    v9 = TRILogCategory_Server();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v12 = "[TRIFactorPackStorage _parentDirForFactorPackWithNamespaceName:]";
      _os_log_error_impl(&dword_26F567000, v9, OS_LOG_TYPE_ERROR, "%s has empty path arg: namespaceName", buf, 0xCu);
    }

    v8 = 0;
  }

  return v8;
}

- (id)legacyPathForFactorPackWithId:(id)id namespaceName:(id)name
{
  v4 = [(TRIFactorPackStorage *)self _legacyPathForFactorPackWithId:id namespaceName:name];
  if (v4)
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    if ([defaultManager fileExistsAtPath:v4])
    {
      v6 = v4;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_legacyPathForFactorPackWithId:(id)id namespaceName:(id)name
{
  idCopy = id;
  nameCopy = name;
  v8 = [(TRIFactorPackStorage *)self _legacyParentDirForFactorPackWithNamespaceName:nameCopy];
  if (v8)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = [v8 stringByAppendingPathComponent:idCopy];
    objc_autoreleasePoolPop(v9);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_legacyParentDirForFactorPackWithNamespaceName:(id)name
{
  v16 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  if ([nameCopy length])
  {
    *buf = 0;
    v5 = TRINamespace_NamespaceId_EnumDescriptor();
    v6 = [v5 getValue:buf forEnumTextFormatName:nameCopy];

    if (v6)
    {
      v7 = objc_autoreleasePoolPush();
      treatmentsDir = [(TRIPaths *)self->_paths treatmentsDir];
      v9 = objc_alloc(MEMORY[0x277CCACA8]);
      v10 = [v9 initWithFormat:@"%d/factorPacks", *buf];
      v11 = [treatmentsDir stringByAppendingPathComponent:v10];

      objc_autoreleasePoolPop(v7);
      goto LABEL_8;
    }
  }

  else
  {
    v12 = TRILogCategory_Server();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v15 = "[TRIFactorPackStorage _legacyParentDirForFactorPackWithNamespaceName:]";
      _os_log_error_impl(&dword_26F567000, v12, OS_LOG_TYPE_ERROR, "%s has empty path arg: namespaceName", buf, 0xCu);
    }
  }

  v11 = 0;
LABEL_8:

  return v11;
}

- (BOOL)removeUnreferencedFactorPacksWithRemovedCount:(unsigned int *)count
{
  v24 = *MEMORY[0x277D85DE8];
  v21 = 0;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v5 = MEMORY[0x277CBEBC0];
  treatmentsDir = [(TRIPaths *)self->_paths treatmentsDir];
  v7 = [v5 fileURLWithPath:treatmentsDir];
  LOBYTE(v8) = 1;
  v9 = [defaultManager enumeratorAtURL:v7 includingPropertiesForKeys:0 options:1 errorHandler:0];

  v10 = objc_autoreleasePoolPush();
  nextObject = [v9 nextObject];
  if (nextObject)
  {
    nextObject2 = nextObject;
    v8 = 1;
    *&v12 = 134217984;
    v18 = v12;
    do
    {
      lastPathComponent = [nextObject2 lastPathComponent];
      if (lastPathComponent)
      {
        v20 = -1;
        if ([MEMORY[0x277D73748] convertFromString:lastPathComponent usingBase:10 toI64:&v20])
        {
          if ((v20 - 1) > 0x7FFFFFFE)
          {
            v16 = TRILogCategory_Server();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
            {
              *buf = v18;
              v23 = v20;
              _os_log_debug_impl(&dword_26F567000, v16, OS_LOG_TYPE_DEBUG, "Skipping removal of factor packs for unrecognized id-based namespace: %lld", buf, 0xCu);
            }
          }

          else
          {
            v15 = TRINamespace_NamespaceId_EnumDescriptor();
            v16 = [v15 textFormatNameForValue:v20];

            if (v16)
            {
              v8 &= [(TRIFactorPackStorage *)self _removeUnreferencedFactorPackSetsWithNamespaceName:v16 removedCount:&v21];
            }

            else
            {
              v16 = TRILogCategory_Server();
              if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
              {
                *buf = v18;
                v23 = v20;
                _os_log_debug_impl(&dword_26F567000, v16, OS_LOG_TYPE_DEBUG, "Skipping removal of factor packs for unrecognized id-based namespace: %lld", buf, 0xCu);
              }
            }
          }
        }

        else
        {
          v8 &= [(TRIFactorPackStorage *)self _removeUnreferencedFactorPackSetsWithNamespaceName:lastPathComponent removedCount:&v21];
        }
      }

      objc_autoreleasePoolPop(v10);
      v10 = objc_autoreleasePoolPush();
      nextObject2 = [v9 nextObject];
    }

    while (nextObject2);
  }

  objc_autoreleasePoolPop(v10);
  if (count)
  {
    *count = v21;
  }

  return v8 & 1;
}

- (BOOL)_removeUnreferencedFactorPackSetsWithNamespaceName:(id)name removedCount:(unsigned int *)count
{
  v31 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  if (!count)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFactorPackStorage.m" lineNumber:1172 description:{@"Invalid parameter not satisfying: %@", @"removedCount"}];
  }

  if ([nameCopy length])
  {
    v8 = [(TRIFactorPackStorage *)self _parentDirForFactorPackWithNamespaceName:nameCopy];
    v9 = [(TRIFactorPackStorage *)self _legacyParentDirForFactorPackWithNamespaceName:nameCopy];
    v10 = v9;
    if (v8 && v9)
    {
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v27[0] = v8;
      v27[1] = v9;
      v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:2];
      v12 = [v11 countByEnumeratingWithState:&v23 objects:v28 count:16];
      if (v12)
      {
        v13 = v12;
        v21 = v10;
        v22 = v8;
        v14 = *v24;
        v15 = 1;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v24 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v17 = *(*(&v23 + 1) + 8 * i);
            v18 = objc_autoreleasePoolPush();
            v15 &= [(TRIFactorPackStorage *)self _removeUnreferencedFactorPackSetsWithParentDir:v17 removedCount:count];
            objc_autoreleasePoolPop(v18);
          }

          v13 = [v11 countByEnumeratingWithState:&v23 objects:v28 count:16];
        }

        while (v13);
        v10 = v21;
        v8 = v22;
      }

      else
      {
        LOBYTE(v15) = 1;
      }
    }

    else
    {
      v11 = TRILogCategory_Server();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v30 = nameCopy;
        _os_log_error_impl(&dword_26F567000, v11, OS_LOG_TYPE_ERROR, "Unable to determine parent dir(s) for factor pack with namespace name: %{public}@", buf, 0xCu);
      }

      LOBYTE(v15) = 0;
    }
  }

  else
  {
    v8 = TRILogCategory_Server();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v30 = "[TRIFactorPackStorage _removeUnreferencedFactorPackSetsWithNamespaceName:removedCount:]";
      _os_log_error_impl(&dword_26F567000, v8, OS_LOG_TYPE_ERROR, "%s has empty path arg: namespaceName", buf, 0xCu);
    }

    LOBYTE(v15) = 0;
  }

  return v15;
}

- (BOOL)_removeUnreferencedFactorPackSetsWithParentDir:(id)dir removedCount:(unsigned int *)count
{
  dirCopy = dir;
  v7 = [MEMORY[0x277D73728] arrayFromDirectory:dirCopy];
  if (v7)
  {
    v8 = [TRITempDirScopeGuard alloc];
    localTempDir = [(TRIPaths *)self->_paths localTempDir];
    v10 = [(TRITempDirScopeGuard *)v8 initWithPath:localTempDir];

    if (v10)
    {
      v17 = 0;
      v18 = &v17;
      v19 = 0x2020000000;
      v20 = 1;
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __84__TRIFactorPackStorage__removeUnreferencedFactorPackSetsWithParentDir_removedCount___block_invoke;
      v13[3] = &unk_279DE2BD8;
      v15 = &v17;
      v14 = v10;
      countCopy = count;
      if ([v7 enumerateStringsWithBlock:v13])
      {
        v11 = *(v18 + 24);
      }

      else
      {
        v11 = 0;
      }

      _Block_object_dispose(&v17, 8);
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

void __84__TRIFactorPackStorage__removeUnreferencedFactorPackSetsWithParentDir_removedCount___block_invoke(uint64_t a1, void *a2)
{
  v7 = 0;
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 path];
  v6 = [TRIReferenceManagedDir collectGarbageForManagedDir:v4 withExternalReferenceStore:0 usingTempDir:v5 managedDirWasDeleted:&v7];

  *(*(*(a1 + 40) + 8) + 24) &= v6;
  if (v7 == 1)
  {
    ++**(a1 + 48);
  }
}

@end