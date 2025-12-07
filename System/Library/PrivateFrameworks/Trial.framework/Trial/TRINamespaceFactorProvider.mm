@interface TRINamespaceFactorProvider
+ (id)_assetFilenameForFactor:(id)factor;
+ (id)_maAutoAssetReferencedInDir:(id)dir byFactorName:(id)name;
+ (id)factorLevelsWithTreatmentData:(id)data referencePath:(id)path filteredByNamespaceName:(id)name outTreatmentId:(id *)id error:(id *)error;
+ (id)factorProviderWithNamespaceDescriptor:(id)descriptor paths:(id)paths faultOnMissingFactors:(BOOL)factors shouldLockFactorDirectory:(BOOL)directory;
+ (id)factorProviderWithNamespaceName:(id)name paths:(id)paths treatmentLayer:(unint64_t)layer faultOnMissingFactors:(BOOL)factors shouldLockFactorDirectory:(BOOL)directory;
+ (id)pathForFactor:(id)factor directory:(id)directory;
+ (id)populateMAPathsForFactorLevels:(id)levels loadedFromParentDir:(id)dir;
- (BOOL)overwriteItemAtPath:(id)path withItemAtPath:(id)atPath error:(id *)error;
- (BOOL)saveToPath:(id)path copyAssets:(BOOL)assets;
- (TRINamespaceFactorProvider)initWithNamespaceName:(id)name namespaceCompatibilityVersion:(unsigned int)version paths:(id)paths referencePath:(id)path factorLevels:(id)levels fastFactorLevels:(id)factorLevels treatmentId:(id)id factorDirectoryLock:(id)self0;
- (TRINamespaceFactorProvider)initWithNamespaceName:(id)name treatmentData:(id)data namespaceCompatibilityVersion:(unsigned int)version paths:(id)paths referencePath:(id)path isFlatbufferStorage:(BOOL)storage factorDirectoryLock:(id)lock error:(id *)self0;
- (id)_copyAssetsToDirectory:(id)directory;
- (id)_readAllFactorLevelsFromStorage;
- (id)experimentId;
- (id)factorLevels;
- (id)flatbufferLevelForFactor:(id)factor;
- (id)levelForFactor:(id)factor;
- (id)protobufLevelForFactor:(id)factor;
- (int)deploymentId;
- (unsigned)namespaceId;
- (void)cacheFactorLevels;
@end

@implementation TRINamespaceFactorProvider

- (id)factorLevels
{
  if ([(NSMutableDictionary *)self->_warmupPersistentFactorLevelCache count])
  {
    [(NSMutableDictionary *)self->_warmupPersistentFactorLevelCache allValues];
  }

  else
  {
    [(TRINamespaceFactorProvider *)self _readAllFactorLevelsFromStorage];
  }
  v3 = ;

  return v3;
}

- (id)_readAllFactorLevelsFromStorage
{
  v3 = objc_autoreleasePoolPush();
  v4 = objc_opt_new();
  fastFactorLevels = self->_fastFactorLevels;
  if (fastFactorLevels)
  {
    goto LABEL_4;
  }

  if (_os_feature_enabled_impl())
  {
    fastFactorLevels = self->_fastFactorLevels;
LABEL_4:
    levels = [(TRIFBFastFactorLevels *)fastFactorLevels levels];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __61__TRINamespaceFactorProvider__readAllFactorLevelsFromStorage__block_invoke_2;
    v13[3] = &unk_27885E558;
    v13[4] = self;
    v14 = v4;
    [levels enumerateObjectsUsingBlock:v13];

    v7 = v14;
    goto LABEL_5;
  }

  factorLevels = self->_factorLevels;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __61__TRINamespaceFactorProvider__readAllFactorLevelsFromStorage__block_invoke;
  v15[3] = &unk_27885E530;
  v16 = v4;
  [(TRIFactorLevelCaching *)factorLevels enumerateFactorLevelsUsingBlock:v15];
  v7 = v16;
LABEL_5:

  v8 = objc_alloc(MEMORY[0x277CBEB18]);
  if (v4)
  {
    v9 = v4;
  }

  else
  {
    v9 = MEMORY[0x277CBEBF8];
  }

  v10 = [v8 initWithArray:v9 copyItems:1];

  objc_autoreleasePoolPop(v3);

  return v10;
}

void __61__TRINamespaceFactorProvider__readAllFactorLevelsFromStorage__block_invoke_2(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = objc_autoreleasePoolPush();
  v4 = *(a1 + 32);
  v5 = *(v4 + 80);
  v6 = [*(v4 + 72) namespaceName];
  v7 = [TRIFlatbufferUtils convertFBFactorLevelToProtoFactorLevel:v8 parentDir:v5 namespaceName:v6 isRelativePath:1];

  [*(a1 + 40) addObject:v7];
  objc_autoreleasePoolPop(v3);
}

+ (id)factorProviderWithNamespaceName:(id)name paths:(id)paths treatmentLayer:(unint64_t)layer faultOnMissingFactors:(BOOL)factors shouldLockFactorDirectory:(BOOL)directory
{
  directoryCopy = directory;
  factorsCopy = factors;
  v31 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  pathsCopy = paths;
  v15 = pathsCopy;
  if (layer <= 3)
  {
    if (layer != 1)
    {
      if (layer == 2)
      {
        v17 = TRILogCategory_ClientFramework();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_22EA6B000, v17, OS_LOG_TYPE_ERROR, "V1 Rollouts are deprecated. Cannot instantiate a TRINamespaceFactorProvider with a treatmentLayer type of TRITreatmentLayer_Rollout", buf, 2u);
        }
      }

      goto LABEL_11;
    }

    namespaceDescriptorsDefaultDir = [pathsCopy namespaceDescriptorsDefaultDir];
LABEL_14:
    v19 = namespaceDescriptorsDefaultDir;
    if (namespaceDescriptorsDefaultDir)
    {
      goto LABEL_15;
    }

    goto LABEL_11;
  }

  switch(layer)
  {
    case 4uLL:
LABEL_5:
      namespaceDescriptorsDefaultDir = [pathsCopy namespaceDescriptorsExperimentDir];
      goto LABEL_14;
    case 8uLL:
      namespaceDescriptorsDefaultDir = [pathsCopy namespaceDescriptorsDevOverrideDir];
      goto LABEL_14;
    case 0x20uLL:
      goto LABEL_5;
  }

LABEL_11:
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"TRINamespaceFactorProvider.m" lineNumber:77 description:{@"Invalid parameter not satisfying: %@", @"directory"}];

  v19 = 0;
LABEL_15:
  v20 = [TRINamespaceDescriptor loadWithNamespaceName:nameCopy fromDirectory:v19];
  v21 = v20;
  if (v20 && ([v20 namespaceName], v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v22, "isEqualToString:", nameCopy), v22, (v23 & 1) != 0))
  {
    v24 = [TRINamespaceFactorProvider factorProviderWithNamespaceDescriptor:v21 paths:v15 faultOnMissingFactors:factorsCopy shouldLockFactorDirectory:directoryCopy];
  }

  else
  {
    v25 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v28 = nameCopy;
      v29 = 2048;
      layerCopy = layer;
      _os_log_error_impl(&dword_22EA6B000, v25, OS_LOG_TYPE_ERROR, "Requested namespace descriptor %@ doesn't exist (for treatment layer: 0x%llx)", buf, 0x16u);
    }

    v24 = 0;
  }

  return v24;
}

+ (id)factorProviderWithNamespaceDescriptor:(id)descriptor paths:(id)paths faultOnMissingFactors:(BOOL)factors shouldLockFactorDirectory:(BOOL)directory
{
  directoryCopy = directory;
  factorsCopy = factors;
  v40 = *MEMORY[0x277D85DE8];
  descriptorCopy = descriptor;
  pathsCopy = paths;
  if (+[TRIProcessInfo hostingProcessIsTriald])
  {
    v12 = 0;
  }

  else
  {
    v12 = +[TRIProcessInfo hostingProcessIsTrialdSystem]^ 1;
  }

  v13 = [descriptorCopy factorsAbsolutePathAsOwner:v12];
  if (!v13)
  {
    v18 = [TRINaiveFactorLevelCache alloc];
    stringByDeletingLastPathComponent = [(TRINaiveFactorLevelCache *)v18 initWithFactorLevels:MEMORY[0x277CBEBF8]];
    v19 = [self alloc];
    namespaceName = [descriptorCopy namespaceName];
    v15 = [v19 initWithNamespaceName:namespaceName namespaceCompatibilityVersion:objc_msgSend(descriptorCopy paths:"downloadNCV") referencePath:pathsCopy factorLevels:0 fastFactorLevels:stringByDeletingLastPathComponent treatmentId:0 factorDirectoryLock:{0, 0}];

LABEL_36:
    goto LABEL_37;
  }

  *__error() = 0;
  if (factorsCopy || !access([v13 fileSystemRepresentation], 4) || *__error() != 1)
  {
    stringByDeletingLastPathComponent = [v13 stringByDeletingLastPathComponent];
    if (directoryCopy)
    {
      v17 = [[TRIReferenceManagedDirReaderLock alloc] initWithDir:stringByDeletingLastPathComponent];
      if (!v17)
      {
        v17 = TRILogCategory_ClientFramework();
        if (os_log_type_enabled(&v17->super, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v35 = v13;
          _os_log_impl(&dword_22EA6B000, &v17->super, OS_LOG_TYPE_DEFAULT, "Unable to acquire lock on factory directory: %@. Returning nil factor provider", buf, 0xCu);
        }

        v15 = 0;
        goto LABEL_35;
      }
    }

    else
    {
      v17 = 0;
    }

    v33 = 0;
    v21 = [objc_alloc(MEMORY[0x277CBEA90]) initWithContentsOfFile:v13 options:8 error:&v33];
    v22 = v33;
    if (v21)
    {
      if ([v21 length])
      {
        v23 = [v13 hasSuffix:@".bin"];
        v32 = 0;
        v24 = [self alloc];
        namespaceName2 = [descriptorCopy namespaceName];
        v15 = [v24 initWithNamespaceName:namespaceName2 treatmentData:v21 namespaceCompatibilityVersion:objc_msgSend(descriptorCopy paths:"downloadNCV") referencePath:pathsCopy isFlatbufferStorage:stringByDeletingLastPathComponent factorDirectoryLock:v23 error:{v17, &v32}];

        if (!v15)
        {
          v26 = TRILogCategory_ClientFramework();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v35 = v13;
            v36 = 2112;
            v37 = v32;
            _os_log_error_impl(&dword_22EA6B000, v26, OS_LOG_TYPE_ERROR, "Failed to parse ClientTreatment from file %@: %@", buf, 0x16u);
          }
        }

        goto LABEL_34;
      }

      v28 = TRILogCategory_ClientFramework();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        namespaceName3 = [descriptorCopy namespaceName];
        *buf = 138412546;
        v35 = namespaceName3;
        v36 = 2112;
        v37 = v13;
        _os_log_impl(&dword_22EA6B000, v28, OS_LOG_TYPE_DEFAULT, "Factors file for namespace %@ at path %@ was empty, acting as if the file didn't exist", buf, 0x16u);
      }
    }

    else
    {
      if (factorsCopy)
      {
        v27 = TRILogCategory_ClientFramework();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
        {
          namespaceName4 = [descriptorCopy namespaceName];
          *buf = 138412802;
          v35 = namespaceName4;
          v36 = 2112;
          v37 = v13;
          v38 = 2112;
          v39 = v22;
          _os_log_fault_impl(&dword_22EA6B000, v27, OS_LOG_TYPE_FAULT, "No factor for namespace %@ found at path: %@ (%@)", buf, 0x20u);
        }
      }

      v28 = TRILogCategory_ClientFramework();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v35 = v13;
        v36 = 2112;
        v37 = v22;
        _os_log_error_impl(&dword_22EA6B000, v28, OS_LOG_TYPE_ERROR, "Failed to read data from file %@: %@", buf, 0x16u);
      }
    }

    v15 = 0;
LABEL_34:

LABEL_35:
    goto LABEL_36;
  }

  v14 = TRILogCategory_ClientFramework();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v35 = v13;
    _os_log_impl(&dword_22EA6B000, v14, OS_LOG_TYPE_DEFAULT, "factors defined at %@ are not accessible with triald sandbox", buf, 0xCu);
  }

  v15 = 0;
LABEL_37:

  return v15;
}

+ (id)_maAutoAssetReferencedInDir:(id)dir byFactorName:(id)name
{
  v26 = *MEMORY[0x277D85DE8];
  dirCopy = dir;
  nameCopy = name;
  v7 = objc_autoreleasePoolPush();
  triFilenameForFactorName = [nameCopy triFilenameForFactorName];
  v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@/maRefs/%@", dirCopy, triFilenameForFactorName];
  v21 = 0;
  v10 = [MEMORY[0x277CCACA8] stringWithContentsOfFile:v9 encoding:4 error:&v21];
  v11 = v21;
  triTrim = [v10 triTrim];

  if (!triTrim)
  {
    if (v11)
    {
      domain = [v11 domain];
      if ([domain isEqualToString:*MEMORY[0x277CCA050]])
      {
        code = [v11 code];

        if (code == 260)
        {
          goto LABEL_18;
        }
      }

      else
      {
      }
    }

    v19 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v23 = v9;
      v24 = 2112;
      v25 = v11;
      _os_log_error_impl(&dword_22EA6B000, v19, OS_LOG_TYPE_ERROR, "Unable to read MA path from reference path: %{public}@: %@", buf, 0x16u);
    }

LABEL_17:

LABEL_18:
    v16 = 0;
    goto LABEL_19;
  }

  if (![triTrim length])
  {
    v19 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v23 = nameCopy;
      _os_log_impl(&dword_22EA6B000, v19, OS_LOG_TYPE_DEFAULT, "Path for factor %{public}@ is empty. This usually means that the level is about to be deleted.", buf, 0xCu);
    }

    goto LABEL_17;
  }

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v14 = [defaultManager fileExistsAtPath:triTrim];

  if ((v14 & 1) == 0)
  {
    v15 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v23 = triTrim;
      _os_log_error_impl(&dword_22EA6B000, v15, OS_LOG_TYPE_ERROR, "Trial asset path does not exist on disk: %{public}@.", buf, 0xCu);
    }
  }

  v16 = triTrim;
LABEL_19:

  objc_autoreleasePoolPop(v7);

  return v16;
}

+ (id)populateMAPathsForFactorLevels:(id)levels loadedFromParentDir:(id)dir
{
  levelsCopy = levels;
  dirCopy = dir;
  v8 = objc_autoreleasePoolPush();
  if (dirCopy)
  {
    v9 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(levelsCopy, "count")}];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __81__TRINamespaceFactorProvider_populateMAPathsForFactorLevels_loadedFromParentDir___block_invoke;
    v13[3] = &unk_27885E5C8;
    v14 = v9;
    selfCopy = self;
    v15 = dirCopy;
    v10 = v9;
    [levelsCopy enumerateObjectsUsingBlock:v13];
    v11 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:v10 copyItems:1];
  }

  else
  {
    v11 = levelsCopy;
  }

  objc_autoreleasePoolPop(v8);

  return v11;
}

void __81__TRINamespaceFactorProvider_populateMAPathsForFactorLevels_loadedFromParentDir___block_invoke(uint64_t a1, void *a2)
{
  v49 = a2;
  v3 = [v49 level];
  v4 = [v3 levelOneOfCase];

  if (v4 != 104)
  {
    [*(a1 + 32) addObject:v49];
    goto LABEL_15;
  }

  v5 = [v49 copy];
  v6 = objc_opt_new();
  v7 = [v49 level];
  v8 = [v7 mobileAssetReferenceValue];
  v9 = [v8 hasIsOnDemand];

  if (v9)
  {
    v10 = [v49 level];
    v11 = [v10 mobileAssetReferenceValue];
    [v6 setIsOnDemand:{objc_msgSend(v11, "isOnDemand")}];
  }

  v47 = v5;
  v48 = a1;
  v12 = [v49 level];
  v13 = [v12 mobileAssetReferenceValue];
  v14 = [v13 hasSize];

  if (v14)
  {
    v15 = [v49 level];
    v16 = [v15 mobileAssetReferenceValue];
    v17 = [v16 size];
    v18 = [v6 asset];
    [v18 setSize:v17];
  }

  v19 = objc_alloc(MEMORY[0x277CCACA8]);
  v46 = [v49 level];
  v45 = [v46 mobileAssetReferenceValue];
  v20 = [v45 assetType];
  v21 = [v49 level];
  [v21 mobileAssetReferenceValue];
  v23 = v22 = v6;
  v24 = [v23 assetSpecifier];
  v25 = [v49 level];
  v26 = [v25 mobileAssetReferenceValue];
  v27 = [v26 assetVersion];
  v28 = [v19 initWithFormat:@"%@-%@-%@", v20, v24, v27];
  v29 = [v22 asset];
  [v29 setAssetId:v28];

  v30 = v22;
  v32 = *(v48 + 40);
  v31 = *(v48 + 48);
  v33 = [v49 factor];
  v34 = [v33 name];
  v35 = [v31 _maAutoAssetReferencedInDir:v32 byFactorName:v34];

  if (v35)
  {
    [v30 setPath:v35];
  }

  v36 = [v49 level];
  v37 = [v36 mobileAssetReferenceValue];
  if (([v37 hasIsFileFactor] & 1) == 0)
  {

    v41 = v47;
    goto LABEL_13;
  }

  v38 = [v49 level];
  v39 = [v38 mobileAssetReferenceValue];
  v40 = [v39 isFileFactor];

  v41 = v47;
  if (!v40)
  {
LABEL_13:
    v44 = [v41 factor];
    [v44 setType:101];

    v43 = [v41 level];
    [v43 setDirectoryValue:v30];
    goto LABEL_14;
  }

  v42 = [v47 factor];
  [v42 setType:100];

  v43 = [v47 level];
  [v43 setFileValue:v30];
LABEL_14:

  [*(v48 + 32) addObject:v41];
LABEL_15:
}

- (TRINamespaceFactorProvider)initWithNamespaceName:(id)name treatmentData:(id)data namespaceCompatibilityVersion:(unsigned int)version paths:(id)paths referencePath:(id)path isFlatbufferStorage:(BOOL)storage factorDirectoryLock:(id)lock error:(id *)self0
{
  v52 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  dataCopy = data;
  pathsCopy = paths;
  pathCopy = path;
  lockCopy = lock;
  v21 = objc_autoreleasePoolPush();
  if (nameCopy)
  {
    if (dataCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRINamespaceFactorProvider.m" lineNumber:272 description:{@"Invalid parameter not satisfying: %@", @"namespaceName"}];

    if (dataCopy)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"TRINamespaceFactorProvider.m" lineNumber:273 description:{@"Invalid parameter not satisfying: %@", @"treatmentData"}];

LABEL_3:
  v45 = 0;
  v22 = 0;
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    v22 = [objc_opt_class() factorLevelsWithTreatmentData:dataCopy referencePath:pathCopy filteredByNamespaceName:nameCopy outTreatmentId:&v45 error:error];
  }

  if (storage || v22)
  {
    v38 = v21;
    if (storage)
    {
      v24 = [[TRIFBFastFactorLevels alloc] initVerifiedRootObjectFromData:dataCopy];
      v25 = [[TRIFBFastFactorLevels alloc] initVerifiedRootObjectFromData:dataCopy];

      v26 = 0;
    }

    else
    {
      v27 = [v22 count];
      v28 = TRILogCategory_ClientFramework();
      v29 = os_log_type_enabled(v28, OS_LOG_TYPE_INFO);
      if (v27 <= 0x10)
      {
        v21 = v38;
        if (v29)
        {
          v30 = [v22 count];
          *buf = 134218498;
          v47 = v30;
          v48 = 2112;
          v49 = v45;
          v50 = 2112;
          v51 = nameCopy;
          _os_log_impl(&dword_22EA6B000, v28, OS_LOG_TYPE_INFO, "Found %tu factors in treatment %@ for namespace %@; using naive cache", buf, 0x20u);
        }

        v31 = [TRINaiveFactorLevelCache alloc];
        if (v22)
        {
          v32 = v22;
        }

        else
        {
          v32 = MEMORY[0x277CBEBF8];
        }

        v26 = [(TRINaiveFactorLevelCache *)v31 initWithFactorLevels:v32];
        v25 = 0;
        goto LABEL_21;
      }

      if (v29)
      {
        v33 = [v22 count];
        *buf = 134218498;
        v47 = v33;
        v48 = 2112;
        v49 = v45;
        v50 = 2112;
        v51 = nameCopy;
        _os_log_impl(&dword_22EA6B000, v28, OS_LOG_TYPE_INFO, "Found %tu factors in treatment %@ for namespace %@; using pruning cache", buf, 0x20u);
      }

      v40[0] = MEMORY[0x277D85DD0];
      v40[1] = 3221225472;
      v40[2] = __162__TRINamespaceFactorProvider_initWithNamespaceName_treatmentData_namespaceCompatibilityVersion_paths_referencePath_isFlatbufferStorage_factorDirectoryLock_error___block_invoke;
      v40[3] = &unk_27885E5F0;
      v41 = dataCopy;
      v42 = pathCopy;
      v43 = nameCopy;
      errorCopy = error;
      v34 = MEMORY[0x2318F2490](v40);
      v26 = [[TRIPruningFactorLevelCache alloc] initWithPruningDelaySeconds:v34 loadFactorLevels:5.0];

      v25 = 0;
    }

    v21 = v38;
LABEL_21:
    self = [(TRINamespaceFactorProvider *)self initWithNamespaceName:nameCopy namespaceCompatibilityVersion:version paths:pathsCopy referencePath:pathCopy factorLevels:v26 fastFactorLevels:v25 treatmentId:v45 factorDirectoryLock:lockCopy];

    selfCopy = self;
    goto LABEL_22;
  }

  selfCopy = 0;
LABEL_22:

  objc_autoreleasePoolPop(v21);
  return selfCopy;
}

- (TRINamespaceFactorProvider)initWithNamespaceName:(id)name namespaceCompatibilityVersion:(unsigned int)version paths:(id)paths referencePath:(id)path factorLevels:(id)levels fastFactorLevels:(id)factorLevels treatmentId:(id)id factorDirectoryLock:(id)self0
{
  nameCopy = name;
  pathsCopy = paths;
  pathCopy = path;
  levelsCopy = levels;
  obj = factorLevels;
  factorLevelsCopy = factorLevels;
  idCopy = id;
  lockCopy = lock;
  if (!nameCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRINamespaceFactorProvider.m" lineNumber:339 description:{@"Invalid parameter not satisfying: %@", @"namespaceName"}];
  }

  if (!(levelsCopy | factorLevelsCopy))
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"TRINamespaceFactorProvider.m" lineNumber:342 description:{@"Invalid parameter not satisfying: %@", @"factorLevels"}];
  }

  v33.receiver = self;
  v33.super_class = TRINamespaceFactorProvider;
  v19 = [(TRINamespaceFactorProvider *)&v33 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_namespaceName, name);
    v20->_namespaceCompatibilityVersion = version;
    objc_storeStrong(&v20->_factorLevels, levels);
    objc_storeStrong(&v20->_treatmentId, id);
    objc_storeStrong(&v20->_factorDirectoryLock, lock);
    objc_storeStrong(&v20->_paths, paths);
    if (factorLevelsCopy)
    {
      objc_storeStrong(&v20->_referencePath, path);
      objc_storeStrong(&v20->_fastFactorLevels, obj);
    }

    v21 = objc_alloc_init(MEMORY[0x277CBEB38]);
    warmupPersistentFactorLevelCache = v20->_warmupPersistentFactorLevelCache;
    v20->_warmupPersistentFactorLevelCache = v21;
  }

  return v20;
}

+ (id)factorLevelsWithTreatmentData:(id)data referencePath:(id)path filteredByNamespaceName:(id)name outTreatmentId:(id *)id error:(id *)error
{
  dataCopy = data;
  pathCopy = path;
  nameCopy = name;
  v14 = objc_autoreleasePoolPush();
  v37 = 0;
  v15 = [MEMORY[0x277D73AF0] parseFromData:dataCopy error:&v37];
  v16 = v37;
  if (v15)
  {

    objc_autoreleasePoolPop(v14);
    if (id)
    {
      if ([v15 hasTreatmentId])
      {
        treatmentId = [v15 treatmentId];
      }

      else
      {
        treatmentId = 0;
      }

      v20 = *id;
      *id = treatmentId;
    }

    if ([v15 factorLevelArray_Count])
    {
      v21 = [objc_alloc(MEMORY[0x277D425C0]) initWithBehavior:1 copyWithZone:0];
      v22 = [v21 intern:nameCopy];
      if ([v15 hasTreatmentId])
      {
        treatmentId2 = [v15 treatmentId];
        v24 = [v21 intern:treatmentId2];
      }

      factorLevelArray = [v15 factorLevelArray];
      v30 = MEMORY[0x277D85DD0];
      v31 = 3221225472;
      v32 = __119__TRINamespaceFactorProvider_factorLevelsWithTreatmentData_referencePath_filteredByNamespaceName_outTreatmentId_error___block_invoke;
      v33 = &unk_27885E618;
      v34 = nameCopy;
      v26 = pathCopy;
      v35 = v26;
      v27 = v21;
      v36 = v27;
      v28 = [factorLevelArray _pas_mappedArrayWithTransform:&v30];

      if (v28)
      {
        v19 = [TRINamespaceFactorProvider populateMAPathsForFactorLevels:v28 loadedFromParentDir:v26, v30, v31, v32, v33, v34, v35];
      }

      else
      {
        v19 = 0;
      }
    }

    else
    {
      v19 = MEMORY[0x277CBEBF8];
    }
  }

  else
  {
    v18 = *error;
    *error = v16;

    objc_autoreleasePoolPop(v14);
    v19 = 0;
  }

  return v19;
}

id __119__TRINamespaceFactorProvider_factorLevelsWithTreatmentData_referencePath_filteredByNamespaceName_outTreatmentId_error___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  if (![v3 hasFactor])
  {
    goto LABEL_16;
  }

  v5 = [v3 factor];
  if ([v5 isInNamespaceName:a1[4]])
  {
    v6 = [v3 factor];
    if ([v6 hasName])
    {
      v7 = [v3 hasLevel];

      if (v7)
      {
        v8 = [v3 level];
        v5 = [v8 fileOrDirectoryLevelWithIsDir:0];

        if (a1[5])
        {
          if (v5)
          {
            if ([v5 hasPath])
            {
              v9 = [v5 path];
              v10 = [v9 isAbsolutePath];

              if ((v10 & 1) == 0)
              {
                v11 = a1[5];
                v12 = [v5 path];
                v13 = [v11 stringByAppendingPathComponent:v12];
                [v5 setPath:v13];
              }
            }
          }
        }

        v14 = [v3 factor];
        v15 = [v14 hasNamespaceName];

        if (v15)
        {
          v16 = a1[6];
          v17 = [v3 factor];
          v18 = [v17 namespaceName];
          v19 = [v16 intern:v18];
          v20 = [v3 factor];
          [v20 setNamespaceName:v19];
        }

        if ([v5 hasAsset])
        {
          v21 = [v5 asset];
          v22 = [v21 hasTreatmentId];

          if (v22)
          {
            v23 = a1[6];
            v24 = [v5 asset];
            v25 = [v24 treatmentId];
            v26 = [v23 intern:v25];
            v27 = [v5 asset];
            [v27 setTreatmentId:v26];
          }
        }

        v28 = v3;
        goto LABEL_19;
      }

LABEL_16:
      v28 = 0;
      goto LABEL_20;
    }
  }

  v28 = 0;
LABEL_19:

LABEL_20:
  objc_autoreleasePoolPop(v4);

  return v28;
}

- (id)experimentId
{
  if (self->_treatmentId && self->_namespaceName)
  {
    v2 = [TRITreatmentInfo loadInfoForTreatment:"loadInfoForTreatment:namespaceName:paths:" namespaceName:? paths:?];
    v3 = v2;
    if (v2)
    {
      experimentId = [v2 experimentId];
    }

    else
    {
      experimentId = 0;
    }
  }

  else
  {
    experimentId = 0;
  }

  return experimentId;
}

- (int)deploymentId
{
  if (!self->_treatmentId || !self->_namespaceName)
  {
    return -1;
  }

  v2 = [TRITreatmentInfo loadInfoForTreatment:"loadInfoForTreatment:namespaceName:paths:" namespaceName:? paths:?];
  v3 = v2;
  if (v2)
  {
    deploymentId = [v2 deploymentId];
  }

  else
  {
    deploymentId = -1;
  }

  return deploymentId;
}

- (id)levelForFactor:(id)factor
{
  factorCopy = factor;
  if ([(NSMutableDictionary *)self->_warmupPersistentFactorLevelCache count])
  {
    v5 = [(NSMutableDictionary *)self->_warmupPersistentFactorLevelCache objectForKey:factorCopy];
    v6 = v5;
    if (v5 && [v5 hasLevel])
    {
      level = [v6 level];
      v8 = [TRILevelChecked wrapLevel:level];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v9 = [(TRINamespaceFactorProvider *)self flatbufferLevelForFactor:factorCopy];
    if (v9)
    {
      v6 = v9;
      v8 = v6;
    }

    else
    {
      v8 = [(TRINamespaceFactorProvider *)self protobufLevelForFactor:factorCopy];
      v6 = 0;
    }
  }

  return v8;
}

- (id)flatbufferLevelForFactor:(id)factor
{
  v26 = *MEMORY[0x277D85DE8];
  factorCopy = factor;
  fastFactorLevels = self->_fastFactorLevels;
  if (fastFactorLevels)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    levels = [(TRIFBFastFactorLevels *)fastFactorLevels levels];
    v7 = [levels countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v22;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v22 != v9)
          {
            objc_enumerationMutation(levels);
          }

          v11 = *(*(&v21 + 1) + 8 * i);
          name = [v11 name];
          v13 = [name isEqualToString:factorCopy];

          if (v13)
          {
            referencePath = self->_referencePath;
            namespaceName = [(TRIFBFastFactorLevels *)self->_fastFactorLevels namespaceName];
            v14 = [TRIFlatbufferUtils convertFBFactorLevelToProtoFactorLevel:v11 parentDir:referencePath namespaceName:namespaceName isRelativePath:1];

            goto LABEL_12;
          }
        }

        v8 = [levels countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v14 = 0;
LABEL_12:

    level = [v14 level];
    if (level)
    {
      level2 = [v14 level];
      v19 = [TRILevelChecked wrapLevel:level2];
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (id)protobufLevelForFactor:(id)factor
{
  factorCopy = factor;
  if (self->_factorLevels && (_os_feature_enabled_impl() & 1) == 0)
  {
    v6 = [(TRIFactorLevelCaching *)self->_factorLevels objectForKeyedSubscript:factorCopy];
    v7 = v6;
    if (v6)
    {
      level = [v6 level];
      if (level)
      {
        v5 = [TRILevelChecked wrapLevel:level];
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)_assetFilenameForFactor:(id)factor
{
  factorCopy = factor;
  if (([factorCopy hasNamespaceName] & 1) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRINamespaceFactorProvider.m" lineNumber:533 description:{@"Invalid parameter not satisfying: %@", @"factor.hasNamespaceName"}];
  }

  if (([factorCopy hasName] & 1) == 0)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"TRINamespaceFactorProvider.m" lineNumber:534 description:{@"Invalid parameter not satisfying: %@", @"factor.hasName"}];
  }

  namespaceName = [factorCopy namespaceName];
  v7 = [namespaceName hash];
  name = [factorCopy name];
  v9 = [name hash];

  v22 = 0;
  namespaceName2 = [factorCopy namespaceName];
  v11 = [namespaceName2 triSanitizedPathComponentWithMaxLength:30 addHash:0 error:&v22];

  if (!v11)
  {
    currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
    namespaceName3 = [factorCopy namespaceName];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"TRINamespaceFactorProvider.m" lineNumber:538 description:{@"Could not get sanitized name for namespace %@: %@", namespaceName3, v22}];
  }

  name2 = [factorCopy name];
  v13 = [name2 triSanitizedPathComponentWithMaxLength:50 addHash:0 error:&v22];

  if (!v13)
  {
    currentHandler4 = [MEMORY[0x277CCA890] currentHandler];
    name3 = [factorCopy name];
    [currentHandler4 handleFailureInMethod:a2 object:self file:@"TRINamespaceFactorProvider.m" lineNumber:540 description:{@"Could not get sanitized name for factor %@: %@", name3, v22}];
  }

  v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"ns-%@.%lu.%@", v11, v9 + 37 * v7, v13];

  return v14;
}

+ (id)pathForFactor:(id)factor directory:(id)directory
{
  v12[3] = *MEMORY[0x277D85DE8];
  directoryCopy = directory;
  v7 = [self _assetFilenameForFactor:factor];
  v8 = MEMORY[0x277CCACA8];
  v12[0] = directoryCopy;
  v12[1] = @"assets";
  v12[2] = v7;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:3];
  v10 = [v8 pathWithComponents:v9];

  return v10;
}

- (BOOL)overwriteItemAtPath:(id)path withItemAtPath:(id)atPath error:(id *)error
{
  v7 = MEMORY[0x277CCAA00];
  atPathCopy = atPath;
  pathCopy = path;
  defaultManager = [v7 defaultManager];
  stringByStandardizingPath = [atPathCopy stringByStandardizingPath];

  stringByStandardizingPath2 = [pathCopy stringByStandardizingPath];

  if ([stringByStandardizingPath isEqualToString:stringByStandardizingPath2])
  {
    v13 = 1;
  }

  else
  {
    v14 = [defaultManager triCreateDirectoryForPath:stringByStandardizingPath2 isDirectory:0 error:error];

    if (v14 && [defaultManager triRemoveItemAtPath:stringByStandardizingPath2 error:error])
    {
      v13 = [defaultManager triSafeCopyItemAtPath:stringByStandardizingPath toPath:stringByStandardizingPath2 error:error];
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

- (id)_copyAssetsToDirectory:(id)directory
{
  v54 = *MEMORY[0x277D85DE8];
  directoryCopy = directory;
  if (_os_feature_enabled_impl())
  {
    v6 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_22EA6B000, v6, OS_LOG_TYPE_ERROR, "Protobuf treatment storage is disabled.", buf, 2u);
    }

    v7 = 0;
  }

  else
  {
    selfCopy = self;
    v9 = objc_autoreleasePoolPush();
    v10 = objc_opt_new();
    v39 = selfCopy;
    factorLevels = selfCopy->_factorLevels;
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __53__TRINamespaceFactorProvider__copyAssetsToDirectory___block_invoke;
    v45[3] = &unk_27885E530;
    v12 = v10;
    v46 = v12;
    [(TRIFactorLevelCaching *)factorLevels enumerateFactorLevelsUsingBlock:v45];
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v13 = v12;
    v14 = [v13 countByEnumeratingWithState:&v41 objects:v53 count:16];
    v7 = v13;
    if (v14)
    {
      v15 = v14;
      v36 = a2;
      v37 = v9;
      v16 = *v42;
      v17 = v39;
      v38 = *v42;
      while (2)
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v42 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v19 = *(*(&v41 + 1) + 8 * i);
          level = [v19 level];
          v21 = [level fileOrDirectoryLevelWithIsDir:0];

          if (v21 && ([v21 isOnDemand] & 1) == 0)
          {
            path = [v21 path];
            v23 = objc_opt_class();
            factor = [v19 factor];
            v25 = [v23 pathForFactor:factor directory:directoryCopy];

            if (!v25)
            {
              currentHandler = [MEMORY[0x277CCA890] currentHandler];
              [currentHandler handleFailureInMethod:v36 object:v17 file:@"TRINamespaceFactorProvider.m" lineNumber:585 description:@"failed to get asset path"];
            }

            v40 = 0;
            v26 = [(TRINamespaceFactorProvider *)v17 overwriteItemAtPath:v25 withItemAtPath:path error:&v40];
            v27 = v40;
            if (!v26)
            {
              v33 = directoryCopy;
              v34 = TRILogCategory_ClientFramework();
              if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412802;
                v48 = path;
                v49 = 2112;
                v50 = v25;
                v51 = 2112;
                v52 = v27;
                _os_log_error_impl(&dword_22EA6B000, v34, OS_LOG_TYPE_ERROR, "failed to copy asset from %@ to %@ -- %@", buf, 0x20u);
              }

              v7 = 0;
              directoryCopy = v33;
              goto LABEL_22;
            }

            defaultManager = [MEMORY[0x277CCAA00] defaultManager];
            [defaultManager triPath:v25 relativeToParentPath:directoryCopy];
            v29 = v13;
            v31 = v30 = directoryCopy;

            [v21 setPath:v31];
            directoryCopy = v30;
            v13 = v29;
            v17 = v39;

            v16 = v38;
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v41 objects:v53 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }

      v7 = v13;
LABEL_22:
      v9 = v37;
    }

    objc_autoreleasePoolPop(v9);
  }

  return v7;
}

void __53__TRINamespaceFactorProvider__copyAssetsToDirectory___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 copy];
  [v2 addObject:v3];
}

- (BOOL)saveToPath:(id)path copyAssets:(BOOL)assets
{
  assetsCopy = assets;
  v31 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    v10 = objc_autoreleasePoolPush();
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v26 = 0;
    v12 = [defaultManager triCreateDirectoryForPath:pathCopy isDirectory:0 error:&v26];
    v13 = v26;
    if (v12)
    {
      if (assetsCopy)
      {
        v14 = [(TRINamespaceFactorProvider *)self _copyAssetsToDirectory:v12];
        if (!v14)
        {
          v9 = 0;
LABEL_21:

          objc_autoreleasePoolPop(v10);
          goto LABEL_22;
        }
      }

      else
      {
        v15 = objc_opt_new();
        factorLevels = self->_factorLevels;
        v24[0] = MEMORY[0x277D85DD0];
        v24[1] = 3221225472;
        v24[2] = __52__TRINamespaceFactorProvider_saveToPath_copyAssets___block_invoke;
        v24[3] = &unk_27885E530;
        v14 = v15;
        v25 = v14;
        [(TRIFactorLevelCaching *)factorLevels enumerateFactorLevelsUsingBlock:v24];
      }

      v17 = objc_opt_new();
      [v17 setTreatmentId:self->_treatmentId];
      v18 = [v14 mutableCopy];
      [v17 setFactorLevelArray:v18];

      data = [v17 data];
      if (!data)
      {
        currentHandler = [MEMORY[0x277CCA890] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"TRINamespaceFactorProvider.m" lineNumber:638 description:{@"Invalid parameter not satisfying: %@", @"treatmentData"}];
      }

      v23 = 0;
      v9 = [data writeToFile:pathCopy options:1 error:&v23];
      v13 = v23;
      if ((v9 & 1) == 0)
      {
        v20 = TRILogCategory_ClientFramework();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v28 = pathCopy;
          v29 = 2112;
          v30 = v13;
          _os_log_error_impl(&dword_22EA6B000, v20, OS_LOG_TYPE_ERROR, "failed to save factors to file %@: %@", buf, 0x16u);
        }
      }
    }

    else
    {
      v14 = TRILogCategory_ClientFramework();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v28 = pathCopy;
        v29 = 2112;
        v30 = v13;
        _os_log_error_impl(&dword_22EA6B000, v14, OS_LOG_TYPE_ERROR, "failed to create directory for treatement at path %@ -- %@", buf, 0x16u);
      }

      v9 = 0;
    }

    goto LABEL_21;
  }

  v8 = TRILogCategory_ClientFramework();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_22EA6B000, v8, OS_LOG_TYPE_ERROR, "Protobuf treatment storage is disabled.", buf, 2u);
  }

  v9 = 0;
LABEL_22:

  return v9;
}

- (void)cacheFactorLevels
{
  _readAllFactorLevelsFromStorage = [(TRINamespaceFactorProvider *)self _readAllFactorLevelsFromStorage];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __47__TRINamespaceFactorProvider_cacheFactorLevels__block_invoke;
  v4[3] = &unk_27885E350;
  v4[4] = self;
  [_readAllFactorLevelsFromStorage enumerateObjectsUsingBlock:v4];
}

void __47__TRINamespaceFactorProvider_cacheFactorLevels__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 56);
  v3 = a2;
  v5 = [v3 factor];
  v4 = [v5 name];
  [v2 setObject:v3 forKey:v4];
}

- (unsigned)namespaceId
{
  v2 = MEMORY[0x277D73B50];
  namespaceName = [(TRINamespaceFactorProvider *)self namespaceName];
  LODWORD(v2) = [v2 namespaceIdFromName:namespaceName];

  return v2;
}

@end