@interface TRIFBFactorPackStorage
+ (id)relPathForMAReferenceWithFactorName:(id)name;
- (BOOL)_linkAssetsUpdatingFactorLevel:(id)level fromFactorPackWithId:(id)id usingAssetStore:(id)store currentFactorPackPath:(id)path futureFactorPackPath:(id)packPath;
- (BOOL)_referenceMAAssetWithId:(id)id assetStore:(id)store forFactorName:(id)name isFileFactor:(BOOL)factor currentFactorPackPath:(id)path futureFactorPackPath:(id)packPath;
- (BOOL)_removeUnreferencedFactorPackSetsWithNamespaceName:(id)name removedCount:(unsigned int *)count;
- (BOOL)_removeUnreferencedFactorPackSetsWithParentDir:(id)dir removedCount:(unsigned int *)count;
- (BOOL)removeUnreferencedFactorLevelsWithRemovedCount:(unsigned int *)count;
- (BOOL)removeUnreferencedGlobalFactorPacksWithRemovedCount:(unsigned int *)count;
- (BOOL)saveFactorLevelsForFactorPack:(id)pack populatingAssetsForFactorNames:(id)names aliasToUnaliasMap:(id)map factorLevelsByNamePath:(id *)path factorLevelsByIdPath:(id *)idPath;
- (BOOL)saveFactorPackToGlobal:(id)global forFactorNames:(id)names aliasToUnaliasMap:(id)map;
- (BOOL)updateSavedFactorLevelsWithFactorPackId:(id)id namespaceName:(id)name deletingAssetsWithFactorNames:(id)names inUseAssetBehavior:(unsigned __int8)behavior;
- (BOOL)updateSavedFactorLevelsWithFactorPackId:(id)id namespaceName:(id)name populatingAssetsForFactorNames:(id)names aliasToUnaliasMap:(id)map;
- (BOOL)updateSavedGlobalFactorPackAt:(id)at deletingAssetsWithFactorNames:(id)names;
- (BOOL)updateSavedGlobalFactorPackAt:(id)at populatingAssetsForFactorNames:(id)names;
- (TRIFBFactorPackStorage)initWithPaths:(id)paths;
- (TRIFBFactorPackStorage)initWithPaths:(id)paths extractor:(id)extractor;
- (id)_globalFactorPackProviderPlist;
- (id)_legacyParentDirForFactorLevelsWithNamespaceName:(id)name;
- (id)_legacyPathForFactorLevelsWithFactorPackId:(id)id namespaceName:(id)name;
- (id)_linkAssetWithId:(id)id assetStore:(id)store forFactorName:(id)name currentFactorPackPath:(id)path futureFactorPackPath:(id)packPath;
- (id)_linkAssetsForFactorNames:(id)names aliasToUnaliasMap:(id)map copyingModifiedFactorLevelsWithPath:(id)path tempDirRef:(id)ref;
- (id)_parentDirForFactorLevelsWithNamespaceName:(id)name;
- (id)_pathForFactorLevelsWithFactorPackId:(id)id namespaceName:(id)name;
- (id)_removeAssetsWithFactorNames:(id)names copyingModifiedFactorLevelsWithPath:(id)path appendingToPathsToRemove:(id)remove appendingToMARefsToRemove:(id)toRemove tempDirRef:(id)ref;
- (id)_writeFactorPack:(id)pack futurePath:(id)path forFactorNames:(id)names aliasToUnaliasMap:(id)map assetStore:(id)store tempDirRef:(id)ref;
- (id)_writeIdBasedFactorPack:(id)pack forFactorNames:(id)names aliasToUnaliasMap:(id)map assetStore:(id)store tempDirRef:(id)ref;
- (id)legacyPathForFactorLevelsWithFactorPackId:(id)id namespaceName:(id)name;
- (id)loadFactorLevelsWithDir:(id)dir bufferSize:(unint64_t *)size;
- (id)loadFactorLevelsWithFactorPackId:(id)id namespaceName:(id)name;
- (id)pathForFactorLevelsWithFactorPackId:(id)id namespaceName:(id)name;
- (void)_reportFactorPackDiskUsagesWithNamespaceName:(id)name namespaceDirName:(id)dirName context:(id)context;
- (void)reportFactorPackDiskUsagesUsingContext:(id)context;
@end

@implementation TRIFBFactorPackStorage

- (TRIFBFactorPackStorage)initWithPaths:(id)paths extractor:(id)extractor
{
  pathsCopy = paths;
  extractorCopy = extractor;
  v12.receiver = self;
  v12.super_class = TRIFBFactorPackStorage;
  v9 = [(TRIFBFactorPackStorage *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_paths, paths);
    objc_storeStrong(&v10->_extractor, extractor);
  }

  return v10;
}

- (TRIFBFactorPackStorage)initWithPaths:(id)paths
{
  pathsCopy = paths;
  v5 = [[TRIRemoteAssetExtractor alloc] initWithMonitoredActivity:0];
  v6 = [(TRIFBFactorPackStorage *)self initWithPaths:pathsCopy extractor:v5];

  return v6;
}

- (BOOL)saveFactorLevelsForFactorPack:(id)pack populatingAssetsForFactorNames:(id)names aliasToUnaliasMap:(id)map factorLevelsByNamePath:(id *)path factorLevelsByIdPath:(id *)idPath
{
  v59 = *MEMORY[0x277D85DE8];
  packCopy = pack;
  namesCopy = names;
  mapCopy = map;
  v15 = objc_autoreleasePoolPush();
  if (([packCopy hasFactorPackId] & 1) == 0)
  {
    v19 = TRILogCategory_Server();
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

    *buf = 0;
    v40 = "TRIClientFactorPack has missing factorPackId";
LABEL_30:
    _os_log_error_impl(&dword_26F567000, v19, OS_LOG_TYPE_ERROR, v40, buf, 2u);
    goto LABEL_24;
  }

  if (![packCopy hasSelectedNamespace] || (objc_msgSend(packCopy, "selectedNamespace"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "hasName"), v16, (v17 & 1) == 0))
  {
    v19 = TRILogCategory_Server();
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

    *buf = 0;
    v40 = "TRIClientFactorPack has missing namespaceName";
    goto LABEL_30;
  }

  factorPackId = [packCopy factorPackId];
  v19 = TRIValidateFactorPackId();

  if (!v19)
  {
LABEL_24:
    LOBYTE(v37) = 0;
    goto LABEL_25;
  }

  location = idPath;
  selectedNamespace = [packCopy selectedNamespace];
  name = [selectedNamespace name];
  v22 = [(TRIFBFactorPackStorage *)self _pathForFactorLevelsWithFactorPackId:v19 namespaceName:name];

  if (!v22)
  {
    v42 = TRILogCategory_Server();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      factorPackId2 = [packCopy factorPackId];
      selectedNamespace2 = [packCopy selectedNamespace];
      name2 = [selectedNamespace2 name];
      *buf = 138543618;
      v56 = factorPackId2;
      v57 = 2114;
      v58 = name2;
      _os_log_error_impl(&dword_26F567000, v42, OS_LOG_TYPE_ERROR, "Failed to resolve location for factor pack %{public}@ with namespace %{public}@.", buf, 0x16u);
    }

    goto LABEL_24;
  }

  v54 = v22;
  v23 = [TRIAssetStore alloc];
  paths = self->_paths;
  extractor = self->_extractor;
  v25 = [[TRIRemoteAssetPatcher alloc] initWithMonitoredActivity:0];
  v26 = [(TRIAssetStore *)v23 initWithPaths:paths extractor:extractor patcher:v25];

  v27 = [TRITempDirScopeGuard alloc];
  localTempDir = [(TRIPaths *)self->_paths localTempDir];
  v29 = [(TRITempDirScopeGuard *)v27 initWithPath:localTempDir];

  v30 = v29;
  if (v29)
  {
    v31 = v54;
    v53 = v26;
    v50 = v30;
    v32 = [(TRIFBFactorPackStorage *)self _writeFactorPack:packCopy futurePath:v54 forFactorNames:namesCopy aliasToUnaliasMap:mapCopy assetStore:v26 tempDirRef:?];
    if (v32)
    {
      v49 = v32;
      stringByDeletingLastPathComponent = [v54 stringByDeletingLastPathComponent];
      v48 = stringByDeletingLastPathComponent;
      if ([MEMORY[0x277CCAA00] triIdempotentCreateDirectoryOrFaultWithPath:stringByDeletingLastPathComponent] && objc_msgSend(MEMORY[0x277CCAA00], "triRemoveFileProtectionIfPresentForPath:", stringByDeletingLastPathComponent))
      {
        v34 = [v54 stringByAppendingPathComponent:@"factorPack.pb"];
        v46 = [v49 stringByAppendingPathComponent:@"factorPack.pb"];
        defaultManager = [MEMORY[0x277CCAA00] defaultManager];
        v47 = v34;
        LODWORD(v34) = [defaultManager isReadableFileAtPath:v34];

        if (v34)
        {
          defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
          [defaultManager2 triSafeCopyItemAtPath:v47 toPath:v46 error:0];
        }

        v31 = v54;
        v37 = [MEMORY[0x277CCAA00] triForceRenameWithSourcePath:v49 destPath:v54];
        if (v37)
        {
          v38 = TRILogCategory_Server();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            v56 = v19;
            v57 = 2114;
            v58 = v54;
            _os_log_impl(&dword_26F567000, v38, OS_LOG_TYPE_DEFAULT, "Wrote factor pack %{public}@ --> %{public}@", buf, 0x16u);
          }

          v39 = [(TRIFBFactorPackStorage *)self _writeIdBasedFactorPack:packCopy forFactorNames:namesCopy aliasToUnaliasMap:mapCopy assetStore:v53 tempDirRef:v50];
          if (path)
          {
            objc_storeStrong(path, v54);
          }

          if (location)
          {
            objc_storeStrong(location, v39);
          }
        }
      }

      else
      {
        LOBYTE(v37) = 0;
      }

      v26 = v53;

      v32 = v49;
    }

    else
    {
      LOBYTE(v37) = 0;
    }

    v30 = v50;
  }

  else
  {
    LOBYTE(v37) = 0;
    v31 = v54;
  }

LABEL_25:
  objc_autoreleasePoolPop(v15);

  return v37;
}

- (id)_writeIdBasedFactorPack:(id)pack forFactorNames:(id)names aliasToUnaliasMap:(id)map assetStore:(id)store tempDirRef:(id)ref
{
  v39 = *MEMORY[0x277D85DE8];
  packCopy = pack;
  namesCopy = names;
  mapCopy = map;
  storeCopy = store;
  refCopy = ref;
  factorPackId = [packCopy factorPackId];
  v18 = TRIValidateFactorPackId();

  if (v18)
  {
    selectedNamespace = [packCopy selectedNamespace];
    name = [selectedNamespace name];
    v21 = [(TRIFBFactorPackStorage *)self _legacyPathForFactorLevelsWithFactorPackId:v18 namespaceName:name];

    if (v21)
    {
      v22 = [(TRIFBFactorPackStorage *)self _writeFactorPack:packCopy futurePath:v21 forFactorNames:namesCopy aliasToUnaliasMap:mapCopy assetStore:storeCopy tempDirRef:refCopy];
      if (v22)
      {
        stringByDeletingLastPathComponent = [v21 stringByDeletingLastPathComponent];
        if ([MEMORY[0x277CCAA00] triIdempotentCreateDirectoryOrFaultWithPath:stringByDeletingLastPathComponent] && objc_msgSend(MEMORY[0x277CCAA00], "triRemoveFileProtectionIfPresentForPath:", stringByDeletingLastPathComponent))
        {
          v34 = [v21 stringByAppendingPathComponent:@"factorPack.pb"];
          v33 = [v22 stringByAppendingPathComponent:@"factorPack.pb"];
          defaultManager = [MEMORY[0x277CCAA00] defaultManager];
          v32 = [defaultManager isReadableFileAtPath:v34];

          if (v32)
          {
            defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
            [defaultManager2 triSafeCopyItemAtPath:v34 toPath:v33 error:0];
          }

          if ([MEMORY[0x277CCAA00] triForceRenameWithSourcePath:v22 destPath:v21])
          {
            v26 = TRILogCategory_Server();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543618;
              v36 = v18;
              v37 = 2114;
              v38 = v21;
              _os_log_impl(&dword_26F567000, v26, OS_LOG_TYPE_DEFAULT, "Wrote factor pack %{public}@ --> %{public}@ (legacy id-based directory).", buf, 0x16u);
            }

            v27 = v21;
          }

          else
          {
            v27 = 0;
          }
        }

        else
        {
          v27 = 0;
        }
      }

      else
      {
        v27 = 0;
      }
    }

    else
    {
      v21 = TRILogCategory_Server();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        factorPackId2 = [packCopy factorPackId];
        selectedNamespace2 = [packCopy selectedNamespace];
        name2 = [selectedNamespace2 name];
        *buf = 138543618;
        v36 = factorPackId2;
        v37 = 2114;
        v38 = name2;
        _os_log_impl(&dword_26F567000, v21, OS_LOG_TYPE_INFO, "Failed to resolve location for factor pack %{public}@ with namespace %{public}@.", buf, 0x16u);
      }

      v27 = 0;
    }
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

- (BOOL)saveFactorPackToGlobal:(id)global forFactorNames:(id)names aliasToUnaliasMap:(id)map
{
  v56 = *MEMORY[0x277D85DE8];
  globalCopy = global;
  namesCopy = names;
  mapCopy = map;
  factorPackId = [globalCopy factorPackId];
  v10 = TRIValidateFactorPackId();

  if (v10)
  {
    v11 = objc_autoreleasePoolPush();
    v12 = [(TRIPaths *)self->_paths treatmentsDirUsingGlobal:1];
    v13 = objc_alloc(MEMORY[0x277CCACA8]);
    selectedNamespace = [globalCopy selectedNamespace];
    name = [selectedNamespace name];
    v16 = [v13 initWithFormat:@"%@/factorPacks", name];
    v17 = [v12 stringByAppendingPathComponent:v16];
    v18 = [v17 stringByAppendingPathComponent:v10];

    objc_autoreleasePoolPop(v11);
    if (v18)
    {
      v19 = [TRIAssetStore alloc];
      paths = self->_paths;
      extractor = self->_extractor;
      v22 = [[TRIRemoteAssetPatcher alloc] initWithMonitoredActivity:0];
      v42 = [(TRIAssetStore *)v19 initWithPaths:paths extractor:extractor patcher:v22];

      v23 = [TRITempDirScopeGuard alloc];
      localTempDir = [(TRIPaths *)self->_paths localTempDir];
      v25 = [(TRITempDirScopeGuard *)v23 initWithPath:localTempDir];

      if (v25)
      {
        v26 = [(TRIFBFactorPackStorage *)self _writeFactorPack:globalCopy futurePath:v18 forFactorNames:namesCopy aliasToUnaliasMap:mapCopy assetStore:v42 tempDirRef:v25];
        if (v26)
        {
          v27 = [v18 stringByAppendingPathComponent:@"factorPack.pb"];
          v28 = [v26 stringByAppendingPathComponent:@"factorPack.pb"];
          defaultManager = [MEMORY[0x277CCAA00] defaultManager];
          v41 = v26;
          v30 = [defaultManager isReadableFileAtPath:v27];

          if (v30)
          {
            defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
            [defaultManager2 triSafeCopyItemAtPath:v27 toPath:v28 error:0];
          }

          *v52 = 0;
          *&v52[8] = v52;
          *&v52[16] = 0x3032000000;
          v53 = __Block_byref_object_copy__33;
          v54 = __Block_byref_object_dispose__33;
          v26 = v41;
          v55 = objc_alloc_init(MEMORY[0x277CBEB58]);
          v45[0] = MEMORY[0x277D85DD0];
          v45[1] = 3221225472;
          v45[2] = __82__TRIFBFactorPackStorage_saveFactorPackToGlobal_forFactorNames_aliasToUnaliasMap___block_invoke;
          v45[3] = &unk_279DDF720;
          v46 = namesCopy;
          v47 = v52;
          [globalCopy enumerateFactorLevelsWithBlock:v45];
          v32 = [[TRIRemoteAssetStoreOperator alloc] initWithPaths:self->_paths];
          v33 = [(TRIRemoteAssetStoreOperator *)v32 saveFactorPackToGlobalPath:v18 fromTemporaryPath:v41 factors:*(*&v52[8] + 40)];
          v34 = TRILogCategory_Server();
          v35 = v34;
          if (v33)
          {
            if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543618;
              v49 = v10;
              v50 = 2114;
              v51 = v18;
              _os_log_impl(&dword_26F567000, v35, OS_LOG_TYPE_DEFAULT, "Wrote global factor pack %{public}@ --> %{public}@", buf, 0x16u);
            }
          }

          else if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v49 = v18;
            _os_log_error_impl(&dword_26F567000, v35, OS_LOG_TYPE_ERROR, "Failed to write global factor pack to %@", buf, 0xCu);
          }

          _Block_object_dispose(v52, 8);
        }

        else
        {
          v36 = TRILogCategory_Server();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            *v52 = 0;
            _os_log_error_impl(&dword_26F567000, v36, OS_LOG_TYPE_ERROR, "Failed to create or copy global fb factor pack to a temporary directory.", v52, 2u);
          }

          LOBYTE(v33) = 0;
        }
      }

      else
      {
        LOBYTE(v33) = 0;
      }
    }

    else
    {
      v18 = TRILogCategory_Server();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        factorPackId2 = [globalCopy factorPackId];
        selectedNamespace2 = [globalCopy selectedNamespace];
        name2 = [selectedNamespace2 name];
        *v52 = 138543618;
        *&v52[4] = factorPackId2;
        *&v52[12] = 2114;
        *&v52[14] = name2;
        _os_log_error_impl(&dword_26F567000, v18, OS_LOG_TYPE_ERROR, "Failed to resolve location for factor pack %{public}@ with namespace %{public}@.", v52, 0x16u);
      }

      LOBYTE(v33) = 0;
    }
  }

  else
  {
    LOBYTE(v33) = 0;
  }

  return v33;
}

void __82__TRIFBFactorPackStorage_saveFactorPackToGlobal_forFactorNames_aliasToUnaliasMap___block_invoke(uint64_t a1, void *a2)
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
  v94 = *MEMORY[0x277D85DE8];
  packCopy = pack;
  pathCopy = path;
  namesCopy = names;
  mapCopy = map;
  storeCopy = store;
  refCopy = ref;
  if (([packCopy hasFactorPackId] & 1) == 0)
  {
    v20 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      *&buf[4] = pathCopy;
      _os_log_error_impl(&dword_26F567000, v20, OS_LOG_TYPE_ERROR, "Failed to find factor pack identifier when writing factor pack to path: %{public}@", buf, 0xCu);
    }

    goto LABEL_11;
  }

  factorPackId = [packCopy factorPackId];
  v20 = TRIValidateFactorPackId();

  if (!v20)
  {
LABEL_11:
    v29 = 0;
    goto LABEL_12;
  }

  v21 = objc_alloc(MEMORY[0x277CCACA8]);
  v22 = objc_opt_new();
  uUIDString = [v22 UUIDString];
  v24 = [v21 initWithFormat:@"fl-%@-%@", v20, uUIDString];

  path = [refCopy path];
  v57 = [path stringByAppendingPathComponent:v24];

  if (![MEMORY[0x277CCAA00] triIdempotentCreateDirectoryOrFaultWithPath:v57] || !objc_msgSend(MEMORY[0x277CCAA00], "triRemoveFileProtectionIfPresentForPath:", v57))
  {

    goto LABEL_11;
  }

  data = [packCopy data];
  v27 = [data length];

  v55 = [v57 stringByAppendingPathComponent:@"factorPack.fb"];
  v87 = 0;
  v56 = [objc_alloc(MEMORY[0x277CED180]) initWithFileAtPath:v55 capacity:2 * v27 error:&v87];
  v53 = v87;
  if (!v56)
  {
    v54 = TRILogCategory_Server();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      *&buf[4] = v57;
      *&buf[12] = 2114;
      *&buf[14] = v53;
      _os_log_error_impl(&dword_26F567000, v54, OS_LOG_TYPE_ERROR, "Failed to create factor levels fb at %{public}@: %{public}@", buf, 0x16u);
    }

    v29 = 0;
    goto LABEL_29;
  }

  v28 = objc_opt_new();
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v93 = 0;
  v85[0] = 0;
  v85[1] = v85;
  v85[2] = 0x2020000000;
  v86 = 0;
  v81 = 0;
  v82 = &v81;
  v83 = 0x2020000000;
  v84 = 0;
  v68[0] = MEMORY[0x277D85DD0];
  v68[1] = 3221225472;
  v68[2] = __109__TRIFBFactorPackStorage__writeFactorPack_futurePath_forFactorNames_aliasToUnaliasMap_assetStore_tempDirRef___block_invoke;
  v68[3] = &unk_279DE2DA0;
  v78 = &v81;
  v51 = v20;
  v69 = v51;
  v79 = buf;
  v70 = mapCopy;
  v52 = v56;
  v71 = v52;
  v80 = v85;
  v54 = v28;
  v72 = v54;
  v73 = namesCopy;
  selfCopy = self;
  v75 = storeCopy;
  v50 = v57;
  v76 = v50;
  v77 = pathCopy;
  [packCopy enumerateFactorLevelsWithBlock:v68];
  if ((*(*&buf[8] + 24) & 1) == 0)
  {
    v31 = [v54 count];
    if (v31 != v82[3])
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFBFactorPackStorage.m" lineNumber:663 description:@"Failed to serialize one or more factor levels"];
    }

    v32 = [v52 trifbCreateSortedVectorOfFactorLevelWithOffsets:v54];
    v48 = [v52 createString:v51];
    selectedNamespace = [packCopy selectedNamespace];
    name = [selectedNamespace name];
    v35 = [v52 createString:name];

    selectedNamespace2 = [packCopy selectedNamespace];
    compatibilityVersionArray_Count = [selectedNamespace2 compatibilityVersionArray_Count];
    v66[0] = MEMORY[0x277D85DD0];
    v66[1] = 3221225472;
    v66[2] = __109__TRIFBFactorPackStorage__writeFactorPack_futurePath_forFactorNames_aliasToUnaliasMap_assetStore_tempDirRef___block_invoke_421;
    v66[3] = &unk_279DE2DC8;
    v67 = packCopy;
    v38 = [v52 createVectorOfUInt32WithCount:compatibilityVersionArray_Count block:v66];

    v61[0] = MEMORY[0x277D85DD0];
    v61[1] = 3221225472;
    v61[2] = __109__TRIFBFactorPackStorage__writeFactorPack_futurePath_forFactorNames_aliasToUnaliasMap_assetStore_tempDirRef___block_invoke_2_423;
    v61[3] = &unk_279DE2DF0;
    v47 = v32;
    v62 = v47;
    v49 = v48;
    v63 = v49;
    v39 = v35;
    v64 = v39;
    v40 = v38;
    v65 = v40;
    v41 = [v52 trifbCreateFastFactorLevelsUsingBlock:v61];
    v60 = 0;
    LOBYTE(name) = [v52 trifbFinishBufferWithRootFastFactorLevelsOfs:v41 error:&v60];
    v42 = v60;
    v46 = v39;
    if (name)
    {
      v43 = v40;
      if ([TRIReferenceManagedDir createFromDir:v50])
      {
        v29 = v50;
LABEL_27:

        goto LABEL_28;
      }
    }

    else
    {
      v43 = v40;
      v44 = TRILogCategory_Server();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        *v88 = 138543618;
        v89 = v51;
        v90 = 2114;
        v91 = v42;
        _os_log_error_impl(&dword_26F567000, v44, OS_LOG_TYPE_ERROR, "Failed to write factor levels for factor pack %{public}@: %{public}@", v88, 0x16u);
      }
    }

    v29 = 0;
    goto LABEL_27;
  }

  v29 = 0;
LABEL_28:

  _Block_object_dispose(&v81, 8);
  _Block_object_dispose(v85, 8);
  _Block_object_dispose(buf, 8);
LABEL_29:

LABEL_12:

  return v29;
}

void __109__TRIFBFactorPackStorage__writeFactorPack_futurePath_forFactorNames_aliasToUnaliasMap_assetStore_tempDirRef___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v178 = *MEMORY[0x277D85DE8];
  v4 = a2;
  ++*(*(*(a1 + 104) + 8) + 24);
  if ([v4 hasFactor] && (objc_msgSend(v4, "factor"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "hasName"), v5, (v6 & 1) != 0))
  {
    if ([v4 hasLevel])
    {
      v7 = *(a1 + 40);
      v8 = [v4 factor];
      v9 = [v8 name];
      v10 = [v7 objectForKeyedSubscript:v9];
      v11 = v10;
      if (v10)
      {
        v12 = v10;
      }

      else
      {
        v14 = [v4 factor];
        v12 = [v14 name];
      }

      v127 = v12;
      v15 = [*(a1 + 48) createString:v12];
      v16 = [v4 factor];
      [v16 setName:v12];

      v17 = *(a1 + 48);
      v18 = [v4 factor];
      v19 = [v18 id_p];
      v20 = [v17 createString:v19];

      v21 = objc_alloc(MEMORY[0x277CBEB18]);
      v22 = [v4 level];
      v23 = [v21 initWithCapacity:{objc_msgSend(v22, "metadata_Count")}];

      v24 = [v4 level];
      v25 = [v24 metadata];
      v169[0] = MEMORY[0x277D85DD0];
      v169[1] = 3221225472;
      v169[2] = __109__TRIFBFactorPackStorage__writeFactorPack_futurePath_forFactorNames_aliasToUnaliasMap_assetStore_tempDirRef___block_invoke_399;
      v169[3] = &unk_279DE2C28;
      v170 = *(a1 + 48);
      v171 = v23;
      v26 = v23;
      [v25 enumerateKeysAndObjectsUsingBlock:v169];

      v27 = [*(a1 + 48) trifbCreateSortedVectorOfFactorMetadataKeyValueWithOffsets:v26];

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      v177 = 0;
      v162[0] = MEMORY[0x277D85DD0];
      v162[1] = 3221225472;
      v162[2] = __109__TRIFBFactorPackStorage__writeFactorPack_futurePath_forFactorNames_aliasToUnaliasMap_assetStore_tempDirRef___block_invoke_3;
      v162[3] = &unk_279DE2D78;
      v125 = v20;
      v163 = v125;
      v124 = v15;
      v164 = v124;
      v28 = v4;
      v165 = v28;
      v29 = v27;
      v30 = *(a1 + 120);
      v126 = v29;
      v166 = v29;
      v167 = v30;
      v168 = buf;
      v31 = MEMORY[0x2743948D0](v162);
      v32 = [v28 level];
      v33 = [v32 levelOneOfCase];

      if (v33 <= 14)
      {
        switch(v33)
        {
          case 10:
            v90 = objc_alloc(MEMORY[0x277D736D8]);
            v91 = [v28 level];
            v36 = [v90 initWithVal:{objc_msgSend(v91, "BOOLeanValue")}];

            v92 = [*(a1 + 48) trifbCreateBoxedBoolFromBoxedBool:v36];
            v93 = *(a1 + 48);
            v159[0] = MEMORY[0x277D85DD0];
            v159[1] = 3221225472;
            v159[2] = __109__TRIFBFactorPackStorage__writeFactorPack_futurePath_forFactorNames_aliasToUnaliasMap_assetStore_tempDirRef___block_invoke_4;
            v159[3] = &unk_279DE2C78;
            v39 = v92;
            v160 = v39;
            v161 = v31;
            v94 = [v93 trifbCreateFactorLevelUsingBlock:v159];
            [*(a1 + 56) addObject:v94];

            goto LABEL_41;
          case 11:
            v95 = *(a1 + 48);
            v96 = [v28 level];
            v97 = [v96 stringValue];
            v98 = [v95 createString:v97];

            v99 = *(a1 + 48);
            v156[0] = MEMORY[0x277D85DD0];
            v156[1] = 3221225472;
            v156[2] = __109__TRIFBFactorPackStorage__writeFactorPack_futurePath_forFactorNames_aliasToUnaliasMap_assetStore_tempDirRef___block_invoke_5;
            v156[3] = &unk_279DE2C78;
            v36 = v98;
            v157 = v36;
            v158 = v31;
            v100 = [v99 trifbCreateFactorLevelUsingBlock:v156];
            [*(a1 + 56) addObject:v100];

            v39 = v157;
            goto LABEL_41;
          case 13:
            v34 = objc_alloc(MEMORY[0x277D736E8]);
            v35 = [v28 level];
            v36 = [v34 initWithVal:{objc_msgSend(v35, "longValue")}];

            v37 = [*(a1 + 48) trifbCreateBoxedInt64FromBoxedInt64:v36];
            v38 = *(a1 + 48);
            v153[0] = MEMORY[0x277D85DD0];
            v153[1] = 3221225472;
            v153[2] = __109__TRIFBFactorPackStorage__writeFactorPack_futurePath_forFactorNames_aliasToUnaliasMap_assetStore_tempDirRef___block_invoke_6;
            v153[3] = &unk_279DE2C78;
            v39 = v37;
            v154 = v39;
            v155 = v31;
            v40 = [v38 trifbCreateFactorLevelUsingBlock:v153];
            [*(a1 + 56) addObject:v40];

LABEL_41:
            break;
        }

LABEL_42:
        if (*(*&buf[8] + 24))
        {
LABEL_47:

          _Block_object_dispose(buf, 8);
          goto LABEL_9;
        }

        v106 = TRILogCategory_Server();
        if (os_log_type_enabled(v106, OS_LOG_TYPE_ERROR))
        {
          v111 = [v28 factor];
          v112 = [v111 name];
          v113 = [v28 level];
          v114 = [v113 levelOneOfCase];
          *v172 = 138543618;
          v173 = v112;
          v174 = 1024;
          LODWORD(v175) = v114;
          _os_log_error_impl(&dword_26F567000, v106, OS_LOG_TYPE_ERROR, "Factor %{public}@ has unsupported factor level with type %d.", v172, 0x12u);
        }

LABEL_46:
        *(*(*(a1 + 112) + 8) + 24) = 1;
        *a3 = 1;
        goto LABEL_47;
      }

      if ((v33 - 100) >= 2)
      {
        if (v33 == 15)
        {
          v101 = objc_alloc(MEMORY[0x277D736E0]);
          v102 = [v28 level];
          [v102 doubleValue];
          v36 = [v101 initWithVal:?];

          v103 = [*(a1 + 48) trifbCreateBoxedDoubleFromBoxedDouble:v36];
          v104 = *(a1 + 48);
          v150[0] = MEMORY[0x277D85DD0];
          v150[1] = 3221225472;
          v150[2] = __109__TRIFBFactorPackStorage__writeFactorPack_futurePath_forFactorNames_aliasToUnaliasMap_assetStore_tempDirRef___block_invoke_7;
          v150[3] = &unk_279DE2C78;
          v39 = v103;
          v151 = v39;
          v152 = v31;
          v105 = [v104 trifbCreateFactorLevelUsingBlock:v150];
          [*(a1 + 56) addObject:v105];

          goto LABEL_41;
        }

        if (v33 == 104)
        {
          if ([*(a1 + 64) containsObject:v127] && (objc_msgSend(*(a1 + 72), "_linkAssetsUpdatingFactorLevel:fromFactorPackWithId:usingAssetStore:currentFactorPackPath:futureFactorPackPath:", v28, *(a1 + 32), *(a1 + 80), *(a1 + 88), *(a1 + 96)) & 1) == 0)
          {
            goto LABEL_46;
          }

          v41 = [v28 level];
          v42 = [v41 mobileAssetReferenceValue];

          if (![v42 hasAssetType] || !objc_msgSend(v42, "hasAssetSpecifier") || (objc_msgSend(v42, "hasAssetVersion") & 1) == 0)
          {
            v107 = TRILogCategory_Server();
            if (os_log_type_enabled(v107, OS_LOG_TYPE_ERROR))
            {
              v115 = [v28 factor];
              v116 = [v115 name];
              v117 = *(a1 + 32);
              *v172 = 138543618;
              v173 = v116;
              v174 = 2114;
              v175 = v117;
              _os_log_error_impl(&dword_26F567000, v107, OS_LOG_TYPE_ERROR, "Factor %{public}@ has missing MAAutoAsset metadata in factor pack %{public}@.", v172, 0x16u);
            }

            *(*(*(a1 + 112) + 8) + 24) = 1;
            *a3 = 1;

            goto LABEL_47;
          }

          v43 = *(a1 + 48);
          v44 = [v42 assetType];
          v45 = [v43 createString:v44];

          v46 = *(a1 + 48);
          v47 = [v42 assetSpecifier];
          v48 = [v46 createString:v47];

          v49 = *(a1 + 48);
          v50 = [v42 assetVersion];
          v51 = [v49 createString:v50];

          v52 = *(a1 + 48);
          v132[0] = MEMORY[0x277D85DD0];
          v132[1] = 3221225472;
          v132[2] = __109__TRIFBFactorPackStorage__writeFactorPack_futurePath_forFactorNames_aliasToUnaliasMap_assetStore_tempDirRef___block_invoke_411;
          v132[3] = &unk_279DE2CF0;
          v39 = v45;
          v133 = v39;
          v53 = v48;
          v134 = v53;
          v54 = v51;
          v135 = v54;
          v36 = v42;
          v136 = v36;
          v55 = [v52 trifbCreateMobileAssetReferenceUsingBlock:v132];
          v56 = *(a1 + 48);
          v129[0] = MEMORY[0x277D85DD0];
          v129[1] = 3221225472;
          v129[2] = __109__TRIFBFactorPackStorage__writeFactorPack_futurePath_forFactorNames_aliasToUnaliasMap_assetStore_tempDirRef___block_invoke_2_413;
          v129[3] = &unk_279DE2C78;
          v57 = v55;
          v130 = v57;
          v131 = v31;
          v58 = [v56 trifbCreateFactorLevelUsingBlock:v129];
          [*(a1 + 56) addObject:v58];

          goto LABEL_41;
        }

        goto LABEL_42;
      }

      v60 = [v28 level];
      v61 = [v60 fileOrDirectoryLevelWithIsDir:0];

      v62 = [v61 hasAsset];
      v63 = v127;
      if (v62)
      {
        v64 = [v61 asset];
        if (([v64 hasCloudKitContainer] & 1) == 0)
        {
          v65 = [v61 isOnDemand];

          v63 = v127;
          if (!v65)
          {
            goto LABEL_35;
          }

          v66 = TRILogCategory_Server();
          if (os_log_type_enabled(v66, OS_LOG_TYPE_DEBUG))
          {
            v118 = [v28 factor];
            v119 = [v118 name];
            *v172 = 138543362;
            v173 = v119;
            _os_log_debug_impl(&dword_26F567000, v66, OS_LOG_TYPE_DEBUG, "Populating system default cloudKitContainer on asset for %{public}@", v172, 0xCu);
          }

          v64 = [v61 asset];
          [v64 setCloudKitContainer:1];
        }

        v63 = v127;
      }

LABEL_35:
      if ([*(a1 + 64) containsObject:v63] && (objc_msgSend(*(a1 + 72), "_linkAssetsUpdatingFactorLevel:fromFactorPackWithId:usingAssetStore:currentFactorPackPath:futureFactorPackPath:", v28, *(a1 + 32), *(a1 + 80), *(a1 + 88), *(a1 + 96)) & 1) == 0)
      {
        *(*(*(a1 + 112) + 8) + 24) = 1;
        *a3 = 1;

        goto LABEL_47;
      }

      v67 = *(a1 + 48);
      v68 = [v61 path];
      v122 = [v67 createString:v68];

      v69 = *(a1 + 48);
      v70 = [v61 asset];
      v71 = [v70 assetId];
      v121 = [v69 createString:v71];

      v72 = *(a1 + 48);
      v73 = [v61 asset];
      v74 = [v73 treatmentId];
      v75 = [v72 createString:v74];

      v76 = *(a1 + 48);
      v77 = [v61 asset];
      v78 = [v77 name];
      v79 = [v76 createString:v78];

      v80 = *(a1 + 48);
      v147[0] = MEMORY[0x277D85DD0];
      v147[1] = 3221225472;
      v147[2] = __109__TRIFBFactorPackStorage__writeFactorPack_futurePath_forFactorNames_aliasToUnaliasMap_assetStore_tempDirRef___block_invoke_406;
      v147[3] = &unk_279DE2CA0;
      v81 = v61;
      v148 = v81;
      v120 = v75;
      v149 = v120;
      v82 = [v80 trifbCreateCloudKitTreatmentRecordAssetUsingBlock:v147];
      v83 = *(a1 + 48);
      v140[0] = MEMORY[0x277D85DD0];
      v140[1] = 3221225472;
      v140[2] = __109__TRIFBFactorPackStorage__writeFactorPack_futurePath_forFactorNames_aliasToUnaliasMap_assetStore_tempDirRef___block_invoke_2_408;
      v140[3] = &unk_279DE2CC8;
      v36 = v81;
      v141 = v36;
      v39 = v122;
      v142 = v39;
      v143 = v28;
      v123 = v121;
      v144 = v123;
      v84 = v82;
      v145 = v84;
      v85 = v79;
      v146 = v85;
      v86 = [v83 trifbCreateTrialManagedAssetUsingBlock:v140];
      v87 = *(a1 + 48);
      v137[0] = MEMORY[0x277D85DD0];
      v137[1] = 3221225472;
      v137[2] = __109__TRIFBFactorPackStorage__writeFactorPack_futurePath_forFactorNames_aliasToUnaliasMap_assetStore_tempDirRef___block_invoke_3_410;
      v137[3] = &unk_279DE2C78;
      v88 = v86;
      v138 = v88;
      v139 = v31;
      v89 = [v87 trifbCreateFactorLevelUsingBlock:v137];
      [*(a1 + 56) addObject:v89];

      goto LABEL_41;
    }

    v13 = TRILogCategory_Server();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v108 = [v4 factor];
      v109 = [v108 name];
      v110 = *(a1 + 32);
      *buf = 138543618;
      *&buf[4] = v109;
      *&buf[12] = 2114;
      *&buf[14] = v110;
      _os_log_error_impl(&dword_26F567000, v13, OS_LOG_TYPE_ERROR, "Factor %{public}@ has missing level in factor pack %{public}@.", buf, 0x16u);
    }
  }

  else
  {
    v13 = TRILogCategory_Server();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v59 = *(a1 + 32);
      *buf = 138543362;
      *&buf[4] = v59;
      _os_log_error_impl(&dword_26F567000, v13, OS_LOG_TYPE_ERROR, "Factor level has missing factor name in factor pack %{public}@.", buf, 0xCu);
    }
  }

  *(*(*(a1 + 112) + 8) + 24) = 1;
  *a3 = 1;
LABEL_9:
}

void __109__TRIFBFactorPackStorage__writeFactorPack_futurePath_forFactorNames_aliasToUnaliasMap_assetStore_tempDirRef___block_invoke_399(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 createString:a2];
  v8 = [*(a1 + 32) createString:v6];

  v9 = *(a1 + 32);
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __109__TRIFBFactorPackStorage__writeFactorPack_futurePath_forFactorNames_aliasToUnaliasMap_assetStore_tempDirRef___block_invoke_2;
  v16 = &unk_279DE2C00;
  v17 = v7;
  v18 = v8;
  v10 = v8;
  v11 = v7;
  v12 = [v9 trifbCreateFactorMetadataKeyValueUsingBlock:&v13];
  [*(a1 + 40) addObject:{v12, v13, v14, v15, v16}];
}

void __109__TRIFBFactorPackStorage__writeFactorPack_futurePath_forFactorNames_aliasToUnaliasMap_assetStore_tempDirRef___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setKey:v3];
  [v4 setVal:*(a1 + 40)];
}

void __109__TRIFBFactorPackStorage__writeFactorPack_futurePath_forFactorNames_aliasToUnaliasMap_assetStore_tempDirRef___block_invoke_3(uint64_t a1, void *a2)
{
  v6 = a2;
  [v6 setFactorId:*(a1 + 32)];
  [v6 setName:*(a1 + 40)];
  if (populateNamespaceIdInSchema == 1)
  {
    v3 = [*(a1 + 48) factor];
    v4 = [v3 hasNamespaceId];

    if (v4)
    {
      v5 = [*(a1 + 48) factor];
      [v6 setNamespaceId:{objc_msgSend(v5, "namespaceId")}];
    }
  }

  [v6 setMetadata:*(a1 + 56)];
  ++*(*(*(a1 + 64) + 8) + 24);
  [v6 setCacheKey:?];
  *(*(*(a1 + 72) + 8) + 24) = 1;
}

void __109__TRIFBFactorPackStorage__writeFactorPack_futurePath_forFactorNames_aliasToUnaliasMap_assetStore_tempDirRef___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setLevelWithBoolVal:v3];
  (*(*(a1 + 40) + 16))();
}

void __109__TRIFBFactorPackStorage__writeFactorPack_futurePath_forFactorNames_aliasToUnaliasMap_assetStore_tempDirRef___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setLevelWithStringVal:v3];
  (*(*(a1 + 40) + 16))();
}

void __109__TRIFBFactorPackStorage__writeFactorPack_futurePath_forFactorNames_aliasToUnaliasMap_assetStore_tempDirRef___block_invoke_6(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setLevelWithInt64Val:v3];
  (*(*(a1 + 40) + 16))();
}

void __109__TRIFBFactorPackStorage__writeFactorPack_futurePath_forFactorNames_aliasToUnaliasMap_assetStore_tempDirRef___block_invoke_7(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setLevelWithDoubleVal:v3];
  (*(*(a1 + 40) + 16))();
}

void __109__TRIFBFactorPackStorage__writeFactorPack_futurePath_forFactorNames_aliasToUnaliasMap_assetStore_tempDirRef___block_invoke_406(uint64_t a1, void *a2)
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

void __109__TRIFBFactorPackStorage__writeFactorPack_futurePath_forFactorNames_aliasToUnaliasMap_assetStore_tempDirRef___block_invoke_2_408(uint64_t a1, void *a2)
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

void __109__TRIFBFactorPackStorage__writeFactorPack_futurePath_forFactorNames_aliasToUnaliasMap_assetStore_tempDirRef___block_invoke_3_410(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setLevelWithTrialAssetVal:v3];
  (*(*(a1 + 40) + 16))();
}

void __109__TRIFBFactorPackStorage__writeFactorPack_futurePath_forFactorNames_aliasToUnaliasMap_assetStore_tempDirRef___block_invoke_411(uint64_t a1, void *a2)
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

void __109__TRIFBFactorPackStorage__writeFactorPack_futurePath_forFactorNames_aliasToUnaliasMap_assetStore_tempDirRef___block_invoke_2_413(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setLevelWithMaRefVal:v3];
  (*(*(a1 + 40) + 16))();
}

void __109__TRIFBFactorPackStorage__writeFactorPack_futurePath_forFactorNames_aliasToUnaliasMap_assetStore_tempDirRef___block_invoke_421(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v6 = [*(a1 + 32) selectedNamespace];
  v5 = [v6 compatibilityVersionArray];
  *a3 = [v5 valueAtIndex:a2];
}

void __109__TRIFBFactorPackStorage__writeFactorPack_futurePath_forFactorNames_aliasToUnaliasMap_assetStore_tempDirRef___block_invoke_2_423(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  [v4 setLevels:v3];
  [v4 setSourceWithFactorPackId:a1[5]];
  [v4 setNamespaceName:a1[6]];
  [v4 setNcvs:a1[7]];
}

- (id)loadFactorLevelsWithFactorPackId:(id)id namespaceName:(id)name
{
  v5 = [(TRIFBFactorPackStorage *)self pathForFactorLevelsWithFactorPackId:id namespaceName:name];
  if (v5)
  {
    v6 = [(TRIFBFactorPackStorage *)self loadFactorLevelsWithDir:v5 bufferSize:0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)loadFactorLevelsWithDir:(id)dir bufferSize:(unint64_t *)size
{
  v20 = *MEMORY[0x277D85DE8];
  dirCopy = dir;
  v6 = objc_autoreleasePoolPush();
  v15 = 0;
  v7 = [dirCopy stringByAppendingPathComponent:@"factorPack.fb"];
  v8 = [MEMORY[0x277CBEA90] triVerifiedMappedDataWithFile:v7 error:&v15];
  v9 = v8;
  if (v8)
  {
    if (size)
    {
      *size = [v8 length];
    }

    v10 = [objc_alloc(MEMORY[0x277D736F8]) initVerifiedRootObjectFromData:v9];
    if (v10)
    {
      v11 = v10;
      v12 = v11;
      goto LABEL_12;
    }

    v13 = TRILogCategory_Server();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v17 = v7;
      _os_log_error_impl(&dword_26F567000, v13, OS_LOG_TYPE_ERROR, "Failed to verify content of factor levels: %{public}@", buf, 0xCu);
    }

    v11 = 0;
  }

  else
  {
    v11 = TRILogCategory_Server();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v17 = dirCopy;
      v18 = 2114;
      v19 = v15;
      _os_log_error_impl(&dword_26F567000, v11, OS_LOG_TYPE_ERROR, "Failed to load factor levels from factor pack directory at %{public}@: %{public}@", buf, 0x16u);
    }
  }

  v12 = 0;
LABEL_12:

  objc_autoreleasePoolPop(v6);

  return v12;
}

- (BOOL)updateSavedFactorLevelsWithFactorPackId:(id)id namespaceName:(id)name populatingAssetsForFactorNames:(id)names aliasToUnaliasMap:(id)map
{
  v43 = *MEMORY[0x277D85DE8];
  idCopy = id;
  nameCopy = name;
  namesCopy = names;
  mapCopy = map;
  v14 = objc_autoreleasePoolPush();
  if ([namesCopy count])
  {
    v15 = [(TRIFBFactorPackStorage *)self pathForFactorLevelsWithFactorPackId:idCopy namespaceName:nameCopy];
    v16 = [(TRIFBFactorPackStorage *)self legacyPathForFactorLevelsWithFactorPackId:idCopy namespaceName:nameCopy];
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
          v20 = [(TRIFBFactorPackStorage *)self _linkAssetsForFactorNames:namesCopy aliasToUnaliasMap:mapCopy copyingModifiedFactorLevelsWithPath:v15 tempDirRef:v19];
          if (v16)
          {
LABEL_8:
            v21 = [(TRIFBFactorPackStorage *)self _linkAssetsForFactorNames:namesCopy aliasToUnaliasMap:mapCopy copyingModifiedFactorLevelsWithPath:v16 tempDirRef:v19];
            goto LABEL_15;
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
LABEL_15:
        v22 = (v20 | v21) != 0;
        v37 = v14;
        v38 = v21;
        if (v20 | v21)
        {
          v36 = v20;
          if (v20)
          {
            v33 = MEMORY[0x277CCAA00];
            v23 = [v15 stringByAppendingPathComponent:@"factorPack.fb"];
            LODWORD(v20) = [v33 triRenameOrFaultWithSourcePath:v20 destPath:v23];

            v21 = v38;
          }

          if (v21)
          {
            v24 = v21;
            v32 = MEMORY[0x277CCAA00];
            [v16 stringByAppendingPathComponent:@"factorPack.fb"];
            v20 = v34 = v20;
            LODWORD(v24) = [v32 triRenameOrFaultWithSourcePath:v24 destPath:v20];

            LODWORD(v20) = v34;
            v25 = v24;
          }

          else
          {
            v25 = 0;
          }

          v26 = v36;
          if (((v20 | v25) & 1) == 0)
          {
            v22 = 0;
            goto LABEL_38;
          }

          if (v20)
          {
            v35 = v25;
            v28 = TRILogCategory_Server();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543618;
              *v40 = idCopy;
              *&v40[8] = 2114;
              *&v40[10] = v15;
              _os_log_impl(&dword_26F567000, v28, OS_LOG_TYPE_DEFAULT, "Updated factor pack %{public}@ --> %{public}@", buf, 0x16u);
            }

            v25 = v35;
          }

          if (v25)
          {
            v29 = TRILogCategory_Server();
            if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543618;
              *v40 = idCopy;
              *&v40[8] = 2114;
              *&v40[10] = v16;
              _os_log_impl(&dword_26F567000, v29, OS_LOG_TYPE_DEFAULT, "Updated factor pack %{public}@ --> %{public}@", buf, 0x16u);
            }
          }

          v30 = TRILogCategory_Server();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            *v40 = idCopy;
            *&v40[8] = 2114;
            *&v40[10] = v15;
            _os_log_impl(&dword_26F567000, v30, OS_LOG_TYPE_DEFAULT, "Updated factor pack %{public}@ --> %{public}@", buf, 0x16u);
          }

          v27 = TRILogCategory_Server();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            *v40 = idCopy;
            *&v40[8] = 2114;
            *&v40[10] = v16;
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
            *v40 = 1;
            *&v40[4] = 2114;
            *&v40[6] = v15;
            *&v40[14] = 1024;
            *&v40[16] = 1;
            v41 = 2114;
            v42 = v16;
            _os_log_error_impl(&dword_26F567000, v27, OS_LOG_TYPE_ERROR, "updateSavedFactorLevelsWithFactorPackId failed to link temp based factor pack for: name based directory (%d): %{public}@ OR identifier based directory (%d): %{public}@.", buf, 0x22u);
          }
        }

LABEL_38:
        v14 = v37;
        goto LABEL_39;
      }
    }

    else
    {
      v19 = TRILogCategory_Server();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        *v40 = idCopy;
        _os_log_error_impl(&dword_26F567000, v19, OS_LOG_TYPE_ERROR, "updateSavedFactorLevelsWithFactorPackId failed because preexisting factor pack %{public}@ is not present on disk.", buf, 0xCu);
      }
    }

    v22 = 0;
LABEL_39:

    goto LABEL_40;
  }

  v22 = 1;
LABEL_40:
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
    v13 = [(TRIFBFactorPackStorage *)self _linkAssetsForFactorNames:namesCopy aliasToUnaliasMap:MEMORY[0x277CBEC10] copyingModifiedFactorLevelsWithPath:atCopy tempDirRef:v12];
    if (v13)
    {
      v14 = MEMORY[0x277CCAA00];
      v15 = [atCopy stringByAppendingPathComponent:@"factorPack.fb"];
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
  v68 = *MEMORY[0x277D85DE8];
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
      v63 = idCopy;
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

    factor2 = [levelCopy factor];
    name = [factor2 name];
    *buf = 138543618;
    v63 = idCopy;
    v64 = 2114;
    v65 = name;
    _os_log_error_impl(&dword_26F567000, v21, OS_LOG_TYPE_ERROR, "Factor pack %{public}@ has factor %{public}@ with missing level.", buf, 0x16u);
    goto LABEL_29;
  }

  level = [levelCopy level];
  v21 = [level fileOrDirectoryLevelWithIsDir:0];

  if (!v21)
  {
    level2 = [levelCopy level];
    levelOneOfCase = [level2 levelOneOfCase];

    if (levelOneOfCase != 104)
    {
      goto LABEL_43;
    }

    factor3 = [levelCopy factor];
    namespaceString = [factor3 namespaceString];

    if (namespaceString)
    {
      level3 = [levelCopy level];
      mobileAssetReferenceValue = [level3 mobileAssetReferenceValue];

      if ([mobileAssetReferenceValue hasAssetType] && objc_msgSend(mobileAssetReferenceValue, "hasAssetSpecifier") && (objc_msgSend(mobileAssetReferenceValue, "hasAssetVersion") & 1) != 0)
      {
        v54 = objc_alloc(MEMORY[0x277D73740]);
        assetType = [mobileAssetReferenceValue assetType];
        assetSpecifier = [mobileAssetReferenceValue assetSpecifier];
        assetVersion = [mobileAssetReferenceValue assetVersion];
        v55 = [v54 initWithType:assetType specifier:assetSpecifier version:?];

        factor4 = [levelCopy factor];
        name2 = [factor4 name];
        if ([mobileAssetReferenceValue hasIsFileFactor])
        {
          isFileFactor = [mobileAssetReferenceValue isFileFactor];
        }

        else
        {
          isFileFactor = 0;
        }

        v53 = [(TRIFBFactorPackStorage *)self _referenceMAAssetWithId:v55 assetStore:storeCopy forFactorName:name2 isFileFactor:isFileFactor currentFactorPackPath:pathCopy futureFactorPackPath:packPathCopy];

        if (v53)
        {
          goto LABEL_43;
        }
      }

      else
      {
        v46 = TRILogCategory_Server();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
        {
          name3 = [factor name];
          *buf = 138543618;
          v63 = idCopy;
          v64 = 2114;
          v65 = name3;
          _os_log_error_impl(&dword_26F567000, v46, OS_LOG_TYPE_ERROR, "Factor pack %{public}@ has factor %{public}@ with incomplete MobileAssetReference.", buf, 0x16u);
        }
      }
    }

    else
    {
      v47 = TRILogCategory_Server();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        name4 = [factor name];
        *buf = 138543618;
        v63 = idCopy;
        v64 = 2114;
        v65 = name4;
        _os_log_error_impl(&dword_26F567000, v47, OS_LOG_TYPE_ERROR, "Factor pack %{public}@ has factor %{public}@ with missing namespaceString.", buf, 0x16u);
      }
    }

    v21 = 0;
    goto LABEL_13;
  }

  factor5 = [levelCopy factor];
  namespaceString2 = [factor5 namespaceString];

  if (!namespaceString2)
  {
    factor2 = TRILogCategory_Server();
    if (os_log_type_enabled(factor2, OS_LOG_TYPE_ERROR))
    {
      name = [levelCopy factor];
      v34Name = [name name];
      *buf = 138543618;
      v63 = idCopy;
      v64 = 2114;
      v65 = v34Name;
      v45 = "Factor pack %{public}@ has factor %{public}@ with missing namespaceString.";
      goto LABEL_28;
    }

LABEL_39:

    goto LABEL_13;
  }

  if (!-[NSObject hasAsset](v21, "hasAsset") || (-[NSObject asset](v21, "asset"), v24 = objc_claimAutoreleasedReturnValue(), v25 = [v24 hasAssetId], v24, (v25 & 1) == 0))
  {
    factor2 = TRILogCategory_Server();
    if (os_log_type_enabled(factor2, OS_LOG_TYPE_ERROR))
    {
      name = [levelCopy factor];
      v34Name = [name name];
      *buf = 138543618;
      v63 = idCopy;
      v64 = 2114;
      v65 = v34Name;
      v45 = "Factor pack %{public}@ has factor %{public}@ with missing assetId.";
LABEL_28:
      _os_log_error_impl(&dword_26F567000, factor2, OS_LOG_TYPE_ERROR, v45, buf, 0x16u);

LABEL_29:
      goto LABEL_39;
    }

    goto LABEL_39;
  }

  asset = [v21 asset];
  assetId = [asset assetId];
  v27 = TRIValidateAssetId();

  v58 = v27;
  if (!v27)
  {
    factor2 = TRILogCategory_Server();
    if (os_log_type_enabled(factor2, OS_LOG_TYPE_ERROR))
    {
      asset2 = [v21 asset];
      assetId2 = [asset2 assetId];
      factor6 = [levelCopy factor];
      name5 = [factor6 name];
      *buf = 138543874;
      v63 = idCopy;
      v64 = 2114;
      v65 = assetId2;
      v66 = 2114;
      v67 = name5;
      _os_log_error_impl(&dword_26F567000, factor2, OS_LOG_TYPE_ERROR, "Factor pack %{public}@ has unsuitable asset id %{public}@ for factor %{public}@.", buf, 0x20u);
    }

    goto LABEL_39;
  }

  factor7 = [levelCopy factor];
  name6 = [factor7 name];
  v30 = [(TRIFBFactorPackStorage *)self _linkAssetWithId:v58 assetStore:storeCopy forFactorName:name6 currentFactorPackPath:pathCopy futureFactorPackPath:packPathCopy];

  if (v30)
  {
    v31 = [packPathCopy stringByAppendingPathComponent:v30];
    [v21 setPath:v31];

LABEL_43:
    LOBYTE(v30) = 1;
    goto LABEL_14;
  }

LABEL_14:
  return v30;
}

- (id)_linkAssetsForFactorNames:(id)names aliasToUnaliasMap:(id)map copyingModifiedFactorLevelsWithPath:(id)path tempDirRef:(id)ref
{
  v65 = *MEMORY[0x277D85DE8];
  namesCopy = names;
  mapCopy = map;
  pathCopy = path;
  refCopy = ref;
  v59 = 0;
  v13 = [(TRIFBFactorPackStorage *)self loadFactorLevelsWithDir:pathCopy bufferSize:&v59];
  if (v13)
  {
    path = [refCopy path];
    v15 = objc_alloc(MEMORY[0x277CCACA8]);
    v16 = objc_opt_new();
    uUIDString = [v16 UUIDString];
    v18 = [v15 initWithFormat:@"fl-update-%@.fb", uUIDString];
    v46 = [path stringByAppendingPathComponent:v18];

    v19 = [TRIAssetStore alloc];
    paths = self->_paths;
    extractor = self->_extractor;
    v22 = [[TRIRemoteAssetPatcher alloc] initWithMonitoredActivity:0];
    v45 = [(TRIAssetStore *)v19 initWithPaths:paths extractor:extractor patcher:v22];

    v23 = objc_alloc(MEMORY[0x277CED180]);
    v24 = *MEMORY[0x277CCA1B8];
    v58 = 0;
    v25 = [v23 initWithFileAtPath:v46 protection:v24 capacity:(3 * v59) >> 1 error:&v58];
    v44 = v58;
    if (v25)
    {
      v26 = objc_alloc(MEMORY[0x277CBEB18]);
      levels = [v13 levels];
      v28 = [v26 initWithCapacity:{objc_msgSend(levels, "count")}];

      *&buf = 0;
      *(&buf + 1) = &buf;
      v63 = 0x2020000000;
      v64 = 0;
      levels2 = [v13 levels];
      v49[0] = MEMORY[0x277D85DD0];
      v49[1] = 3221225472;
      v49[2] = __117__TRIFBFactorPackStorage__linkAssetsForFactorNames_aliasToUnaliasMap_copyingModifiedFactorLevelsWithPath_tempDirRef___block_invoke;
      v49[3] = &unk_279DE2E18;
      v50 = mapCopy;
      p_buf = &buf;
      v51 = namesCopy;
      selfCopy = self;
      v53 = v45;
      v54 = pathCopy;
      v30 = v25;
      v55 = v30;
      v31 = v28;
      v56 = v31;
      [levels2 enumerateObjectsUsingBlock:v49];

      if (*(*(&buf + 1) + 24))
      {
        v32 = 0;
      }

      else
      {
        v33 = [v31 count];
        levels3 = [v13 levels];
        LOBYTE(v33) = v33 == [levels3 count];

        if ((v33 & 1) == 0)
        {
          currentHandler = [MEMORY[0x277CCA890] currentHandler];
          [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFBFactorPackStorage.m" lineNumber:1061 description:@"dropped factor level during update operation"];
        }

        v35 = [v30 trifbCreateSortedVectorOfFactorLevelWithOffsets:v31];
        v36 = objc_opt_new();
        [v36 replaceLevels:v35];
        v37 = [v13 deepCopyUsingBufferBuilder:v30 changes:v36];

        v48 = 0;
        v38 = [v30 trifbFinishBufferWithRootFastFactorLevelsOfs:v37 error:&v48];
        v39 = v48;
        if (v38)
        {
          v32 = v46;
        }

        else
        {
          v40 = TRILogCategory_Server();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
          {
            *v60 = 138543362;
            v61 = v39;
            _os_log_error_impl(&dword_26F567000, v40, OS_LOG_TYPE_ERROR, "Failed to write updated factor levels: %{public}@", v60, 0xCu);
          }

          v32 = 0;
        }
      }

      _Block_object_dispose(&buf, 8);
    }

    else
    {
      v31 = TRILogCategory_Server();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v44;
        _os_log_error_impl(&dword_26F567000, v31, OS_LOG_TYPE_ERROR, "Failed to instantiate buffer builder: %{public}@", &buf, 0xCu);
      }

      v32 = 0;
    }
  }

  else
  {
    v32 = 0;
  }

  return v32;
}

void __117__TRIFBFactorPackStorage__linkAssetsForFactorNames_aliasToUnaliasMap_copyingModifiedFactorLevelsWithPath_tempDirRef___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v38 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = *(a1 + 32);
  v8 = [v6 name];
  v9 = [v7 objectForKeyedSubscript:v8];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = [v6 name];
  }

  v12 = v11;

  if (![*(a1 + 40) containsObject:v12])
  {
    goto LABEL_19;
  }

  v13 = [v6 levelType];
  if (v13 == 6)
  {
    v14 = [v6 levelAsMaRefVal];
    v29 = objc_alloc(MEMORY[0x277D73740]);
    v30 = [v14 type];
    v31 = [v14 specifier];
    v32 = [v14 version];
    v17 = [v29 initWithType:v30 specifier:v31 version:v32];

    v33 = *(a1 + 48);
    v34 = *(a1 + 56);
    v35 = [v6 name];
    LOBYTE(v33) = [v33 _referenceMAAssetWithId:v17 assetStore:v34 forFactorName:v35 isFileFactor:objc_msgSend(v14 currentFactorPackPath:"hasFileType") futureFactorPackPath:{*(a1 + 64), *(a1 + 64)}];

    if ((v33 & 1) == 0)
    {
      goto LABEL_22;
    }

LABEL_18:
    goto LABEL_19;
  }

  if (v13 == 5)
  {
    v14 = [v6 levelAsTrialAssetVal];
    v15 = [v14 path];

    if (!v15)
    {
      v16 = [v14 assetId];
      v17 = TRIValidateAssetId();

      if (!v17)
      {
        *(*(*(a1 + 88) + 8) + 24) = 1;
        *a4 = 1;
        goto LABEL_23;
      }

      v18 = *(a1 + 48);
      v19 = *(a1 + 56);
      v20 = [v6 name];
      v21 = [v18 _linkAssetWithId:v17 assetStore:v19 forFactorName:v20 currentFactorPackPath:*(a1 + 64) futureFactorPackPath:*(a1 + 64)];

      if (v21)
      {
        v22 = [*(a1 + 64) stringByAppendingPathComponent:v21];
        if (![TRIReferenceManagedDir saveFromGarbageCollectionItemWithPath:v22])
        {
          v23 = TRILogCategory_Server();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            v36 = 138543362;
            v37 = v22;
            _os_log_error_impl(&dword_26F567000, v23, OS_LOG_TYPE_ERROR, "Unable to prevent newly linked asset at path %{public}@ from being garbage collected in the future", &v36, 0xCu);
          }
        }

        v24 = [*(a1 + 72) createString:v22];
        v25 = objc_opt_new();
        [v25 replacePath:v24];
        v26 = [v14 deepCopyUsingBufferBuilder:*(a1 + 72) changes:v25];

        v27 = objc_opt_new();
        [v27 replaceLevelWithTrialAssetVal:v26];
        v28 = [v6 deepCopyUsingBufferBuilder:*(a1 + 72) changes:v27];

        if (v28)
        {
          goto LABEL_20;
        }

        goto LABEL_19;
      }

LABEL_22:
      *(*(*(a1 + 88) + 8) + 24) = 1;
      *a4 = 1;

LABEL_23:
      goto LABEL_21;
    }

    goto LABEL_18;
  }

LABEL_19:
  v28 = [v6 deepCopyUsingBufferBuilder:*(a1 + 72)];
LABEL_20:
  [*(a1 + 80) addObject:v28];

LABEL_21:
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

- (BOOL)updateSavedFactorLevelsWithFactorPackId:(id)id namespaceName:(id)name deletingAssetsWithFactorNames:(id)names inUseAssetBehavior:(unsigned __int8)behavior
{
  behaviorCopy = behavior;
  v79 = *MEMORY[0x277D85DE8];
  idCopy = id;
  nameCopy = name;
  namesCopy = names;
  v13 = objc_autoreleasePoolPush();
  v14 = [(TRIFBFactorPackStorage *)self pathForFactorLevelsWithFactorPackId:idCopy namespaceName:nameCopy];
  v15 = [(TRIFBFactorPackStorage *)self legacyPathForFactorLevelsWithFactorPackId:idCopy namespaceName:nameCopy];
  v16 = v15;
  if (v14 | v15)
  {
    v66 = v15;
    v17 = [TRITempDirScopeGuard alloc];
    localTempDir = [(TRIPaths *)self->_paths localTempDir];
    v19 = [(TRITempDirScopeGuard *)v17 initWithPath:localTempDir];

    v20 = v19;
    if (v19)
    {
      v21 = objc_opt_new();
      v22 = objc_opt_new();
      v65 = v22;
      v63 = v21;
      if (v14)
      {
        v23 = [(TRIFBFactorPackStorage *)self _removeAssetsWithFactorNames:namesCopy copyingModifiedFactorLevelsWithPath:v14 appendingToPathsToRemove:v21 appendingToMARefsToRemove:v22 tempDirRef:v20];
      }

      else
      {
        v23 = 0;
      }

      v16 = v66;
      v62 = v23;
      if (v66)
      {
        v25 = [(TRIFBFactorPackStorage *)self _removeAssetsWithFactorNames:namesCopy copyingModifiedFactorLevelsWithPath:v66 appendingToPathsToRemove:v63 appendingToMARefsToRemove:0 tempDirRef:v20];
        v23 = v62;
      }

      else
      {
        v25 = 0;
      }

      if (v23 | v25)
      {
        v60 = v20;
        v61 = v14;
        v26 = v23;
        if (v23)
        {
          v27 = MEMORY[0x277CCAA00];
          v28 = [v14 stringByAppendingPathComponent:@"factorPack.fb"];
          LODWORD(v26) = [v27 triRenameOrFaultWithSourcePath:v26 destPath:v28];
        }

        v59 = v25;
        if (v25)
        {
          v29 = MEMORY[0x277CCAA00];
          v30 = [v66 stringByAppendingPathComponent:@"factorPack.fb"];
          v31 = [v29 triRenameOrFaultWithSourcePath:v25 destPath:v30];
        }

        else
        {
          v31 = 0;
        }

        v20 = v60;
        if ((v26 | v31))
        {
          if (v26)
          {
            v32 = TRILogCategory_Server();
            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543618;
              v76 = idCopy;
              v77 = 2114;
              v78 = v14;
              _os_log_impl(&dword_26F567000, v32, OS_LOG_TYPE_DEFAULT, "Updated factor pack %{public}@ --> %{public}@", buf, 0x16u);
            }
          }

          v56 = v13;
          v57 = namesCopy;
          v58 = nameCopy;
          if (v31)
          {
            v33 = TRILogCategory_Server();
            if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543618;
              v76 = idCopy;
              v77 = 2114;
              v78 = v66;
              _os_log_impl(&dword_26F567000, v33, OS_LOG_TYPE_DEFAULT, "Updated factor pack %{public}@ --> %{public}@", buf, 0x16u);
            }
          }

          v72 = 0u;
          v73 = 0u;
          v70 = 0u;
          v71 = 0u;
          v34 = v63;
          v35 = [v34 countByEnumeratingWithState:&v70 objects:v74 count:16];
          if (v35)
          {
            v36 = v35;
            v55 = idCopy;
            v37 = *v71;
            v38 = off_279DDE000;
            v39 = "TrialXP";
            v40 = v65;
            while (2)
            {
              for (i = 0; i != v36; ++i)
              {
                if (*v71 != v37)
                {
                  objc_enumerationMutation(v34);
                }

                v42 = *(*(&v70 + 1) + 8 * i);
                v69 = 0;
                if ([(__objc2_class *)v38[9] removeFileInManagedDirWithPath:v42 inUseDeletionBehavior:behaviorCopy wasDeleted:&v69])
                {
                  if (behaviorCopy == 3)
                  {
                    v43 = [v40 objectForKeyedSubscript:v42];

                    if (v43)
                    {
                      v64 = [v40 objectForKeyedSubscript:v42];
                      v44 = objc_opt_new();
                      v45 = [v44 createAutoAssetWithId:v64 decryptionKey:0 error:0];
                      [v45 assetSelector];
                      v46 = v37;
                      v47 = behaviorCopy;
                      v48 = v38;
                      v49 = v34;
                      v51 = v50 = v39;
                      v67[0] = MEMORY[0x277D85DD0];
                      v67[1] = 3221225472;
                      v67[2] = __129__TRIFBFactorPackStorage_updateSavedFactorLevelsWithFactorPackId_namespaceName_deletingAssetsWithFactorNames_inUseAssetBehavior___block_invoke;
                      v67[3] = &unk_279DE25E8;
                      v68 = v45;
                      v52 = v45;
                      [v44 eliminateAllForSelector:v51 completion:v67];

                      v39 = v50;
                      v34 = v49;
                      v38 = v48;
                      behaviorCopy = v47;
                      v37 = v46;

                      v40 = v65;
                    }
                  }
                }

                else if ((_os_feature_enabled_impl() & 1) == 0)
                {
                  v53 = TRILogCategory_Server();
                  if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138543362;
                    v76 = v34;
                    _os_log_error_impl(&dword_26F567000, v53, OS_LOG_TYPE_ERROR, "Failed to remove files %{public}@ in managed dir", buf, 0xCu);
                  }

                  v24 = 0;
                  goto LABEL_46;
                }
              }

              v36 = [v34 countByEnumeratingWithState:&v70 objects:v74 count:16];
              if (v36)
              {
                continue;
              }

              break;
            }

            v24 = 1;
LABEL_46:
            idCopy = v55;
            v13 = v56;
            namesCopy = v57;
            nameCopy = v58;
            v14 = v61;
          }

          else
          {
            v24 = 1;
          }

          v16 = v66;

          v20 = v60;
        }

        else
        {
          v24 = 0;
          v16 = v66;
        }

        v25 = v59;
      }

      else
      {
        v24 = 0;
      }
    }

    else
    {
      v24 = 0;
      v16 = v66;
    }
  }

  else
  {
    v20 = TRILogCategory_Server();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v76 = idCopy;
      _os_log_error_impl(&dword_26F567000, v20, OS_LOG_TYPE_ERROR, "updateSavedFactorLevelsWithFactorPackId failed because preexisting factor pack %{public}@ is not present on disk.", buf, 0xCu);
    }

    v24 = 0;
  }

  objc_autoreleasePoolPop(v13);
  return v24;
}

void __129__TRIFBFactorPackStorage_updateSavedFactorLevelsWithFactorPackId_namespaceName_deletingAssetsWithFactorNames_inUseAssetBehavior___block_invoke(uint64_t a1, uint64_t a2, void *a3)
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
    v14 = [(TRIFBFactorPackStorage *)self _removeAssetsWithFactorNames:namesCopy copyingModifiedFactorLevelsWithPath:atCopy appendingToPathsToRemove:v13 appendingToMARefsToRemove:0 tempDirRef:v12];
    v15 = MEMORY[0x277CCAA00];
    v16 = [atCopy stringByAppendingPathComponent:@"factorPack.fb"];
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

- (id)_removeAssetsWithFactorNames:(id)names copyingModifiedFactorLevelsWithPath:(id)path appendingToPathsToRemove:(id)remove appendingToMARefsToRemove:(id)toRemove tempDirRef:(id)ref
{
  v68 = *MEMORY[0x277D85DE8];
  namesCopy = names;
  pathCopy = path;
  removeCopy = remove;
  toRemoveCopy = toRemove;
  refCopy = ref;
  v65 = 0;
  v18 = [(TRIFBFactorPackStorage *)self loadFactorLevelsWithDir:pathCopy bufferSize:&v65];
  if (v18)
  {
    v48 = a2;
    v54 = toRemoveCopy;
    v52 = refCopy;
    path = [refCopy path];
    v20 = objc_alloc(MEMORY[0x277CCACA8]);
    v21 = objc_opt_new();
    uUIDString = [v21 UUIDString];
    v23 = [v20 initWithFormat:@"fl-update-%@.fb", uUIDString];
    v24 = [path stringByAppendingPathComponent:v23];

    v25 = objc_alloc(MEMORY[0x277CED180]);
    v26 = *MEMORY[0x277CCA1B8];
    v64 = 0;
    v53 = v24;
    v27 = [v25 initWithFileAtPath:v24 protection:v26 capacity:(3 * v65) >> 1 error:&v64];
    v28 = v64;
    v51 = v28;
    if (v27)
    {
      v29 = objc_alloc(MEMORY[0x277CBEB18]);
      levels = [v18 levels];
      v31 = [v29 initWithCapacity:{objc_msgSend(levels, "count")}];

      levels2 = [v18 levels];
      v56[0] = MEMORY[0x277D85DD0];
      v56[1] = 3221225472;
      v56[2] = __153__TRIFBFactorPackStorage__removeAssetsWithFactorNames_copyingModifiedFactorLevelsWithPath_appendingToPathsToRemove_appendingToMARefsToRemove_tempDirRef___block_invoke;
      v56[3] = &unk_279DE2E40;
      v50 = namesCopy;
      v57 = namesCopy;
      v49 = removeCopy;
      v58 = removeCopy;
      v33 = v27;
      v59 = v33;
      selfCopy = self;
      v61 = pathCopy;
      v62 = v54;
      v34 = v31;
      v63 = v34;
      [levels2 enumerateObjectsUsingBlock:v56];

      v35 = [v34 count];
      levels3 = [v18 levels];
      v37 = [levels3 count];

      if (v35 != v37)
      {
        currentHandler = [MEMORY[0x277CCA890] currentHandler];
        [currentHandler handleFailureInMethod:v48 object:self file:@"TRIFBFactorPackStorage.m" lineNumber:1378 description:@"dropped factor level during update operation"];
      }

      v38 = [v33 trifbCreateSortedVectorOfFactorLevelWithOffsets:v34];
      v39 = objc_opt_new();
      [v39 replaceLevels:v38];
      v40 = [v18 deepCopyUsingBufferBuilder:v33 changes:v39];

      v55 = 0;
      v41 = [v33 trifbFinishBufferWithRootFastFactorLevelsOfs:v40 error:&v55];
      v42 = v55;
      refCopy = v52;
      if (v41)
      {
        v43 = v53;
        removeCopy = v49;
        namesCopy = v50;
      }

      else
      {
        v45 = TRILogCategory_Server();
        removeCopy = v49;
        namesCopy = v50;
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v67 = v42;
          _os_log_error_impl(&dword_26F567000, v45, OS_LOG_TYPE_ERROR, "Failed to write updated factor levels: %{public}@", buf, 0xCu);
        }

        v43 = 0;
      }

      toRemoveCopy = v54;
    }

    else
    {
      v44 = v28;
      v34 = TRILogCategory_Server();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v67 = v44;
        _os_log_error_impl(&dword_26F567000, v34, OS_LOG_TYPE_ERROR, "Failed to instantiate buffer builder: %{public}@", buf, 0xCu);
      }

      v43 = 0;
      toRemoveCopy = v54;
      refCopy = v52;
    }
  }

  else
  {
    v43 = 0;
  }

  return v43;
}

void __153__TRIFBFactorPackStorage__removeAssetsWithFactorNames_copyingModifiedFactorLevelsWithPath_appendingToPathsToRemove_appendingToMARefsToRemove_tempDirRef___block_invoke(uint64_t a1, void *a2)
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 name];
  LODWORD(v4) = [v4 containsObject:v5];

  if (!v4)
  {
    goto LABEL_20;
  }

  v6 = [v3 levelType];
  if (v6 == 6)
  {
    v7 = [v3 levelAsMaRefVal];
    if ([v7 isOnDemand])
    {
      v15 = *(a1 + 32);
      v16 = [v3 name];
      LODWORD(v15) = [v15 containsObject:v16];

      if (v15)
      {
        v17 = objc_opt_class();
        v18 = [v3 name];
        v19 = [v17 relPathForMAReferenceWithFactorName:v18];

        v20 = [*(a1 + 64) stringByAppendingPathComponent:v19];
        v21 = [MEMORY[0x277CCAA00] defaultManager];
        v22 = [v21 fileExistsAtPath:v20];

        if (v22)
        {
          [*(a1 + 40) addObject:v20];
          v23 = objc_alloc(MEMORY[0x277D73740]);
          v24 = [v7 type];
          v25 = [v7 specifier];
          v26 = [v7 version];
          v27 = [v23 initWithType:v24 specifier:v25 version:v26];

          v28 = *(a1 + 72);
          if (v28)
          {
            [v28 setObject:v27 forKey:v20];
          }

          v29 = objc_opt_new();
          v33 = 0;
          v30 = [v29 writeToFile:v20 options:0x10000000 error:&v33];
          v31 = v33;

          if ((v30 & 1) == 0)
          {
            v32 = TRILogCategory_Server();
            if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              v35 = v20;
              _os_log_error_impl(&dword_26F567000, v32, OS_LOG_TYPE_ERROR, "Unable to nil out MARef by creating a blank file at %{public}@", buf, 0xCu);
            }
          }
        }
      }
    }

    goto LABEL_19;
  }

  if (v6 != 5)
  {
LABEL_20:
    v14 = [v3 deepCopyUsingBufferBuilder:*(a1 + 48)];
    goto LABEL_21;
  }

  v7 = [v3 levelAsTrialAssetVal];
  if (![v7 isOnDemand] || (objc_msgSend(v7, "path"), v8 = objc_claimAutoreleasedReturnValue(), v8, !v8))
  {
LABEL_19:

    goto LABEL_20;
  }

  v9 = *(a1 + 40);
  v10 = [v7 path];
  [v9 addObject:v10];

  v11 = objc_opt_new();
  [v11 omitPath];
  v12 = [v7 deepCopyUsingBufferBuilder:*(a1 + 48) changes:v11];

  v13 = objc_opt_new();
  [v13 replaceLevelWithTrialAssetVal:v12];
  v14 = [v3 deepCopyUsingBufferBuilder:*(a1 + 48) changes:v13];

  if (!v14)
  {
    goto LABEL_20;
  }

LABEL_21:
  [*(a1 + 80) addObject:v14];
}

- (id)pathForFactorLevelsWithFactorPackId:(id)id namespaceName:(id)name
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = [(TRIFBFactorPackStorage *)self _pathForFactorLevelsWithFactorPackId:id namespaceName:name];
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

- (id)_pathForFactorLevelsWithFactorPackId:(id)id namespaceName:(id)name
{
  idCopy = id;
  nameCopy = name;
  v8 = [(TRIFBFactorPackStorage *)self _parentDirForFactorLevelsWithNamespaceName:nameCopy];
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

- (id)_parentDirForFactorLevelsWithNamespaceName:(id)name
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
      v12 = "[TRIFBFactorPackStorage _parentDirForFactorLevelsWithNamespaceName:]";
      _os_log_error_impl(&dword_26F567000, v9, OS_LOG_TYPE_ERROR, "%s has empty path arg: namespaceName", buf, 0xCu);
    }

    v8 = 0;
  }

  return v8;
}

- (id)legacyPathForFactorLevelsWithFactorPackId:(id)id namespaceName:(id)name
{
  v4 = [(TRIFBFactorPackStorage *)self _legacyPathForFactorLevelsWithFactorPackId:id namespaceName:name];
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

- (id)_legacyPathForFactorLevelsWithFactorPackId:(id)id namespaceName:(id)name
{
  idCopy = id;
  nameCopy = name;
  v8 = [(TRIFBFactorPackStorage *)self _legacyParentDirForFactorLevelsWithNamespaceName:nameCopy];
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

- (id)_legacyParentDirForFactorLevelsWithNamespaceName:(id)name
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
      v15 = "[TRIFBFactorPackStorage _legacyParentDirForFactorLevelsWithNamespaceName:]";
      _os_log_error_impl(&dword_26F567000, v12, OS_LOG_TYPE_ERROR, "%s has empty path arg: namespaceName", buf, 0xCu);
    }
  }

  v11 = 0;
LABEL_8:

  return v11;
}

- (BOOL)removeUnreferencedFactorLevelsWithRemovedCount:(unsigned int *)count
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
              v8 &= [(TRIFBFactorPackStorage *)self _removeUnreferencedFactorPackSetsWithNamespaceName:v16 removedCount:&v21];
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
          v8 &= [(TRIFBFactorPackStorage *)self _removeUnreferencedFactorPackSetsWithNamespaceName:lastPathComponent removedCount:&v21];
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
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFBFactorPackStorage.m" lineNumber:1514 description:{@"Invalid parameter not satisfying: %@", @"removedCount"}];
  }

  if ([nameCopy length])
  {
    v8 = [(TRIFBFactorPackStorage *)self _parentDirForFactorLevelsWithNamespaceName:nameCopy];
    v9 = [(TRIFBFactorPackStorage *)self _legacyParentDirForFactorLevelsWithNamespaceName:nameCopy];
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
            v15 &= [(TRIFBFactorPackStorage *)self _removeUnreferencedFactorPackSetsWithParentDir:v17 removedCount:count];
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
      v30 = "[TRIFBFactorPackStorage _removeUnreferencedFactorPackSetsWithNamespaceName:removedCount:]";
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
      v13[2] = __86__TRIFBFactorPackStorage__removeUnreferencedFactorPackSetsWithParentDir_removedCount___block_invoke;
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

void __86__TRIFBFactorPackStorage__removeUnreferencedFactorPackSetsWithParentDir_removedCount___block_invoke(uint64_t a1, void *a2)
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

- (void)reportFactorPackDiskUsagesUsingContext:(id)context
{
  v25 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v5 = MEMORY[0x277CBEBC0];
  treatmentsDir = [(TRIPaths *)self->_paths treatmentsDir];
  v7 = [v5 fileURLWithPath:treatmentsDir];
  v8 = [defaultManager enumeratorAtURL:v7 includingPropertiesForKeys:0 options:1 errorHandler:0];

  v9 = objc_opt_new();
  v10 = objc_autoreleasePoolPush();
  nextObject = [v8 nextObject];
  if (nextObject)
  {
    nextObject2 = nextObject;
    *&v12 = 138543362;
    v20 = v12;
    while (1)
    {
      lastPathComponent = [nextObject2 lastPathComponent];
      if (lastPathComponent)
      {
        break;
      }

LABEL_16:

      objc_autoreleasePoolPop(v10);
      v10 = objc_autoreleasePoolPush();
      nextObject2 = [v8 nextObject];
      if (!nextObject2)
      {
        goto LABEL_21;
      }
    }

    v15 = lastPathComponent;
    v22 = -1;
    if ([MEMORY[0x277D73748] convertFromString:lastPathComponent usingBase:10 toI64:&v22])
    {
      if ((v22 - 1) > 0x7FFFFFFE)
      {
        v18 = TRILogCategory_Server();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v24 = v22;
          _os_log_impl(&dword_26F567000, v18, OS_LOG_TYPE_DEFAULT, "Skipping reporting disk usage of factor packs for unrecognized id-based namespace: %lld", buf, 0xCu);
        }

        goto LABEL_14;
      }

      v16 = TRINamespace_NamespaceId_EnumDescriptor();
      v17 = [v16 textFormatNameForValue:v22];

      if (!v17)
      {
        v18 = TRILogCategory_Server();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v24 = v22;
          _os_log_impl(&dword_26F567000, v18, OS_LOG_TYPE_DEFAULT, "Skipping reporting disk usage of factor packs for unrecognized id-based namespace: %lld", buf, 0xCu);
        }

        goto LABEL_14;
      }

      v15 = v17;
    }

    if (![v9 containsObject:v15])
    {
      lastPathComponent2 = [nextObject2 lastPathComponent];
      [(TRIFBFactorPackStorage *)self _reportFactorPackDiskUsagesWithNamespaceName:v15 namespaceDirName:lastPathComponent2 context:contextCopy];

      [v9 addObject:v15];
LABEL_15:

      goto LABEL_16;
    }

    v18 = TRILogCategory_Server();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      *buf = v20;
      v24 = v15;
      _os_log_debug_impl(&dword_26F567000, v18, OS_LOG_TYPE_DEBUG, "Skipping reporting disk usage of factor packs for already visited namespace: %{public}@", buf, 0xCu);
    }

LABEL_14:

    goto LABEL_15;
  }

LABEL_21:
  objc_autoreleasePoolPop(v10);
}

- (void)_reportFactorPackDiskUsagesWithNamespaceName:(id)name namespaceDirName:(id)dirName context:(id)context
{
  v20 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  dirNameCopy = dirName;
  contextCopy = context;
  v11 = [(TRIFBFactorPackStorage *)self _parentDirForFactorLevelsWithNamespaceName:dirNameCopy];
  if (v11)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = [MEMORY[0x277D73728] arrayFromDirectory:v11];
    if (v13)
    {
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __96__TRIFBFactorPackStorage__reportFactorPackDiskUsagesWithNamespaceName_namespaceDirName_context___block_invoke;
      v15[3] = &unk_279DE2E68;
      v16 = nameCopy;
      v17 = contextCopy;
      if (([v13 enumerateStringsWithBlock:v15] & 1) == 0)
      {
        v14 = TRILogCategory_Server();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v19 = v13;
          _os_log_error_impl(&dword_26F567000, v14, OS_LOG_TYPE_ERROR, "Failed to enumerate %{public}@ to report factor pack disk usage", buf, 0xCu);
        }
      }
    }

    objc_autoreleasePoolPop(v12);
  }
}

void __96__TRIFBFactorPackStorage__reportFactorPackDiskUsagesWithNamespaceName_namespaceDirName_context___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 lastPathComponent];
  v5 = TRIValidateFactorPackId();

  if (v5)
  {
    v6 = [MEMORY[0x277CCAA00] triDiskUsageForDirectory:v3];
    v7 = v6;
    if (v6)
    {
      v8 = [MEMORY[0x277D73B40] metricWithName:@"triald_disk_usage" integerValue:{-[NSObject compressedSum](v6, "compressedSum")}];
      v9 = objc_opt_new();
      v10 = *(a1 + 32);
      v11 = [v9 ensureFactorFields];
      [v11 setNamespaceName:v10];

      v12 = [v9 ensureFactorFields];
      [v12 setClientFactorPackId:v5];

      v13 = [*(a1 + 40) client];
      v14 = [v13 logger];
      v15 = [*(a1 + 40) client];
      v16 = [v15 trackingId];
      v18 = v8;
      v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v18 count:1];
      [v14 logWithTrackingId:v16 metrics:v17 dimensions:0 trialSystemTelemetry:v9];
    }

    else
    {
      v8 = TRILogCategory_Server();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        v20 = v3;
        _os_log_debug_impl(&dword_26F567000, v8, OS_LOG_TYPE_DEBUG, "Skipping reporting disk usage for dir %{public}@ as it couldn't be determined", buf, 0xCu);
      }
    }
  }

  else
  {
    v7 = TRILogCategory_Server();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      v20 = v3;
      _os_log_debug_impl(&dword_26F567000, v7, OS_LOG_TYPE_DEBUG, "Skipping reporting disk usage for dir %{public}@ whose last path component isn't a valid factor pack id", buf, 0xCu);
    }
  }
}

- (BOOL)removeUnreferencedGlobalFactorPacksWithRemovedCount:(unsigned int *)count
{
  v35 = *MEMORY[0x277D85DE8];
  _globalFactorPackProviderPlist = [(TRIFBFactorPackStorage *)self _globalFactorPackProviderPlist];
  v23 = _globalFactorPackProviderPlist;
  if (_globalFactorPackProviderPlist)
  {
    v24 = [_globalFactorPackProviderPlist objectForKeyedSubscript:@"namespaceFactorPackMap"];
    *v29 = 0;
    v30 = v29;
    v31 = 0x2020000000;
    v32 = 0;
    v5 = [(TRIPaths *)self->_paths treatmentsDirUsingGlobal:1];
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v7 = [MEMORY[0x277CBEBC0] fileURLWithPath:v5];
    v8 = [defaultManager enumeratorAtURL:v7 includingPropertiesForKeys:0 options:1 errorHandler:0];

    v9 = 1;
    do
    {
      v10 = objc_autoreleasePoolPush();
      nextObject = [v8 nextObject];
      v12 = nextObject;
      if (nextObject)
      {
        lastPathComponent = [nextObject lastPathComponent];
        if (lastPathComponent)
        {
          v14 = objc_autoreleasePoolPush();
          v15 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@/factorPacks", lastPathComponent];
          v16 = [v5 stringByAppendingPathComponent:v15];

          objc_autoreleasePoolPop(v14);
          v17 = [MEMORY[0x277D73728] arrayFromDirectory:v16];
          if (v17)
          {
            v25[0] = MEMORY[0x277D85DD0];
            v25[1] = 3221225472;
            v25[2] = __78__TRIFBFactorPackStorage_removeUnreferencedGlobalFactorPacksWithRemovedCount___block_invoke;
            v25[3] = &unk_279DE2E90;
            v26 = v24;
            v27 = lastPathComponent;
            v28 = v29;
            v18 = [v17 enumerateStringsWithBlock:v25];

            v9 &= v18;
            v19 = v26;
          }

          else
          {
            v19 = TRILogCategory_Server();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v34 = lastPathComponent;
              _os_log_error_impl(&dword_26F567000, v19, OS_LOG_TYPE_ERROR, "Couldn't locate global factor packs for namespace name: %@", buf, 0xCu);
            }

            v9 = 0;
          }
        }

        else
        {
          v16 = TRILogCategory_Server();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_26F567000, v16, OS_LOG_TYPE_ERROR, "Invalid namespace name found in global treatment directory.", buf, 2u);
          }
        }
      }

      objc_autoreleasePoolPop(v10);
    }

    while (v12);
    if (count)
    {
      *count = *(v30 + 6);
    }

    _Block_object_dispose(v29, 8);
  }

  else
  {
    v20 = TRILogCategory_Server();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *v29 = 0;
      _os_log_impl(&dword_26F567000, v20, OS_LOG_TYPE_DEFAULT, "Couldn't open global factor pack provider plist. Stopping the removal of unreferenced global factor packs.", v29, 2u);
    }

    v9 = 0;
    if (count)
    {
      *count = 0;
    }
  }

  return v9 & 1;
}

void __78__TRIFBFactorPackStorage_removeUnreferencedGlobalFactorPacksWithRemovedCount___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 lastPathComponent];
  v5 = v4;
  if (!v4 || ![v4 length])
  {
    v10 = TRILogCategory_Server();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v15 = v3;
      _os_log_error_impl(&dword_26F567000, v10, OS_LOG_TYPE_ERROR, "Invalid factor pack Id in global factor pack directory %{public}@", buf, 0xCu);
    }

    goto LABEL_12;
  }

  v6 = [*(a1 + 32) objectForKey:*(a1 + 40)];
  v7 = [v6 isEqualToString:v5];

  if ((v7 & 1) == 0)
  {
    v8 = [MEMORY[0x277CCAA00] defaultManager];
    v13 = 0;
    v9 = [v8 triForceRemoveItemAtPath:v3 error:&v13];
    v10 = v13;

    if (v10)
    {
      v11 = TRILogCategory_Server();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = [v10 localizedDescription];
        *buf = 138543618;
        v15 = v3;
        v16 = 2112;
        v17 = v12;
        _os_log_error_impl(&dword_26F567000, v11, OS_LOG_TYPE_ERROR, "Failed to remove factor pack at %{public}@ with the following error %@", buf, 0x16u);
      }
    }

    if (v9)
    {
      ++*(*(*(a1 + 48) + 8) + 24);
    }

LABEL_12:
  }
}

- (id)_globalFactorPackProviderPlist
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [(TRIPaths *)self->_paths namespaceDescriptorsDirUsingGlobal:1];
  v3 = [v2 stringByAppendingPathComponent:@"v2/globalActiveFactorProviders.plplist"];

  *__error() = 0;
  if (access([v3 fileSystemRepresentation], 4))
  {
    if (*__error() == 1)
    {
      v4 = TRILogCategory_Server();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_26F567000, v4, OS_LOG_TYPE_ERROR, "Cannot access global factor pack provider plplist.", buf, 2u);
      }

LABEL_8:
      v5 = 0;
      goto LABEL_16;
    }

    if (*__error() == 2)
    {
      v4 = TRILogCategory_Server();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v12 = v3;
        _os_log_impl(&dword_26F567000, v4, OS_LOG_TYPE_DEFAULT, "Global factor pack provider plplist file not present: %@", buf, 0xCu);
      }

      goto LABEL_8;
    }
  }

  v10 = 0;
  v5 = [MEMORY[0x277D425D8] propertyListWithPath:v3 error:&v10];
  v6 = v10;
  v4 = v6;
  if (v5)
  {
    v7 = v5;
  }

  else if (v6)
  {
    v8 = TRILogCategory_Server();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v12 = v3;
      v13 = 2112;
      v14 = v4;
      _os_log_error_impl(&dword_26F567000, v8, OS_LOG_TYPE_ERROR, "Error opening global factor pack provider plplist %@: %@", buf, 0x16u);
    }
  }

LABEL_16:

  return v5;
}

@end