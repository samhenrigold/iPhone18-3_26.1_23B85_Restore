@interface TRIFPNamespaceFactorProvider
- (TRIFPNamespaceFactorProvider)initWithParentId:(id)id deploymentId:(int)deploymentId promotable:(BOOL)promotable;
- (TRIFPNamespaceFactorProvider)initWithPath:(id)path parentId:(id)id deploymentId:(int)deploymentId treatmentId:(id)treatmentId promotable:(BOOL)promotable;
- (id)_factorLevelsWithFactorPackData:(id)data referencePath:(id)path outFactorPackId:(id *)id outNamespaceName:(id *)name outNCVs:(id *)vs;
- (id)_readAllFactorLevelsFromStorage;
- (id)factorLevels;
- (id)levelForFactor:(id)factor;
- (id)namespaceName;
- (id)rolloutId;
- (id)treatmentId;
- (unsigned)namespaceCompatibilityVersion;
- (unsigned)namespaceId;
- (void)cacheFactorLevels;
- (void)dealloc;
@end

@implementation TRIFPNamespaceFactorProvider

- (id)treatmentId
{
  *&v19[13] = *MEMORY[0x277D85DE8];
  if (self->_isFlatbufferWriteEnabled && !self->_isFlatbufferReadEnabled)
  {
    sourceAsFactorPackId = [(TRIFBFastFactorLevels *)self->_fastFactorLevels sourceAsFactorPackId];

    if (sourceAsFactorPackId)
    {
      sourceAsFactorPackId2 = [(TRIFBFastFactorLevels *)self->_fastFactorLevels sourceAsFactorPackId];
      v5 = TRIValidateFactorPackId(sourceAsFactorPackId2);

      if (([v5 isEqualToString:self->_factorPackId]& 1) == 0)
      {
        v6 = TRILogCategory_ClientFramework();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          factorPackId = self->_factorPackId;
          v16 = 138412546;
          v17 = v5;
          v18 = 2112;
          *v19 = factorPackId;
          _os_log_error_impl(&dword_22EA6B000, v6, OS_LOG_TYPE_ERROR, "Flatbuffer factor pack id: %@ does not match with protobuf factor pack id: %@", &v16, 0x16u);
        }
      }
    }

    else
    {
      v5 = TRILogCategory_ClientFramework();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        parentId = self->_parentId;
        deploymentId = self->_deploymentId;
        v14 = self->_factorPackId;
        v16 = 138543874;
        v17 = parentId;
        v18 = 1024;
        *v19 = deploymentId;
        v19[2] = 2114;
        *&v19[3] = v14;
        _os_log_error_impl(&dword_22EA6B000, v5, OS_LOG_TYPE_ERROR, "Failed to find factor pack identifier within TRIFBFastFactorLevels object for rollout:%{public}@ deployment:%d, factor-pack: %{public}@", &v16, 0x1Cu);
      }
    }
  }

  p_treatmentId = &self->_treatmentId;
  if (self->_treatmentId)
  {
    v8 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *p_treatmentId;
      v16 = 138543362;
      v17 = v9;
      _os_log_impl(&dword_22EA6B000, v8, OS_LOG_TYPE_DEFAULT, "Factor pack had explicit treatment ID, returning that instead of factor pack ID as the treatment ID: %{public}@", &v16, 0xCu);
    }
  }

  else
  {
    p_treatmentId = &self->_factorPackId;
  }

  v10 = *p_treatmentId;

  return v10;
}

- (void)dealloc
{
  [(TRIFPNamespaceFactorProvider *)self dispose];
  v3.receiver = self;
  v3.super_class = TRIFPNamespaceFactorProvider;
  [(TRIFPNamespaceFactorProvider *)&v3 dealloc];
}

- (unsigned)namespaceCompatibilityVersion
{
  v31 = *MEMORY[0x277D85DE8];
  if (self->_isFlatbufferWriteEnabled && !self->_isFlatbufferReadEnabled)
  {
    ncvs = [(TRIFBFastFactorLevels *)self->_fastFactorLevels ncvs];
    if (ncvs)
    {
      v4 = ncvs;
      namespaceCompatibilityVersions = self->_namespaceCompatibilityVersions;
      v6 = MEMORY[0x277CBEB98];
      ncvs2 = [(TRIFBFastFactorLevels *)self->_fastFactorLevels ncvs];
      v8 = [v6 setWithArray:ncvs2];
      LOBYTE(namespaceCompatibilityVersions) = [(NSSet *)namespaceCompatibilityVersions isEqual:v8];

      if ((namespaceCompatibilityVersions & 1) == 0)
      {
        v9 = TRILogCategory_ClientFramework();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          v18 = MEMORY[0x277CBEB98];
          ncvs3 = [(TRIFBFastFactorLevels *)self->_fastFactorLevels ncvs];
          v20 = [v18 setWithArray:ncvs3];
          v21 = self->_namespaceCompatibilityVersions;
          *buf = 138412546;
          v28 = v20;
          v29 = 2112;
          v30 = v21;
          _os_log_error_impl(&dword_22EA6B000, v9, OS_LOG_TYPE_ERROR, "Flatbuffer ncvs:%@ do not match with protobuf ncvs: %@", buf, 0x16u);
        }
      }
    }
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v10 = self->_namespaceCompatibilityVersions;
  v11 = [(NSSet *)v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (!v11)
  {

    return 0;
  }

  v12 = v11;
  v13 = *v23;
  v14 = 0x80000000;
  do
  {
    for (i = 0; i != v12; ++i)
    {
      if (*v23 != v13)
      {
        objc_enumerationMutation(v10);
      }

      intValue = [*(*(&v22 + 1) + 8 * i) intValue];
      if (v14 <= intValue)
      {
        v14 = intValue;
      }
    }

    v12 = [(NSSet *)v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
  }

  while (v12);

  if (v14 == 0x80000000)
  {
    return 0;
  }

  return v14;
}

- (id)factorLevels
{
  if ([(NSMutableDictionary *)self->_warmupPersistentFactorLevelCache count])
  {
    [(NSMutableDictionary *)self->_warmupPersistentFactorLevelCache allValues];
  }

  else
  {
    [(TRIFPNamespaceFactorProvider *)self _readAllFactorLevelsFromStorage];
  }
  v3 = ;

  return v3;
}

- (id)_readAllFactorLevelsFromStorage
{
  v65 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  if (self->_isFlatbufferReadEnabled)
  {
    v4 = 0;
  }

  else
  {
    v5 = objc_opt_new();
    factorLevels = self->_factorLevels;
    v57[0] = MEMORY[0x277D85DD0];
    v57[1] = 3221225472;
    v57[2] = __63__TRIFPNamespaceFactorProvider__readAllFactorLevelsFromStorage__block_invoke;
    v57[3] = &unk_27885E530;
    v4 = v5;
    v58 = v4;
    [(TRIFactorLevelCaching *)factorLevels enumerateFactorLevelsUsingBlock:v57];
  }

  if (self->_isFlatbufferWriteEnabled)
  {
    v7 = objc_alloc(MEMORY[0x277CBEB18]);
    levels = [(TRIFBFastFactorLevels *)self->_fastFactorLevels levels];
    v9 = [v7 initWithCapacity:{objc_msgSend(levels, "count")}];

    levels2 = [(TRIFBFastFactorLevels *)self->_fastFactorLevels levels];
    v55[0] = MEMORY[0x277D85DD0];
    v55[1] = 3221225472;
    v55[2] = __63__TRIFPNamespaceFactorProvider__readAllFactorLevelsFromStorage__block_invoke_2;
    v55[3] = &unk_27885E558;
    v55[4] = self;
    v11 = v9;
    v56 = v11;
    [levels2 enumerateObjectsUsingBlock:v55];

    if (!self->_isFlatbufferReadEnabled)
    {
      v51 = v3;
      context = objc_autoreleasePoolPush();
      v12 = [v4 sortedArrayUsingComparator:&__block_literal_global_4];
      v50 = v11;
      v54 = [v11 sortedArrayUsingComparator:&__block_literal_global_4];
      if (([v12 isEqual:?] & 1) == 0)
      {
        v13 = [v12 count];
        if (v13 == [v54 count])
        {
          if ([v12 count])
          {
            v15 = 0;
            v52 = 0;
            *&v14 = 138412290;
            v48 = v14;
            v53 = v12;
            while (1)
            {
              v16 = [v12 objectAtIndexedSubscript:{v15, v48}];
              v17 = [v54 objectAtIndexedSubscript:v15];
              factor = [v16 factor];
              id_p = [factor id_p];
              factor2 = [v17 factor];
              id_p2 = [factor2 id_p];
              v22 = [id_p isEqualToString:id_p2];

              if (v22)
              {
                break;
              }

              v32 = v52;
              if (v52 <= 2)
              {
                v34 = TRILogCategory_ClientFramework();
                if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
                {
                  factor3 = [v16 factor];
                  id_p3 = [factor3 id_p];
                  factor4 = [v17 factor];
                  id_p4 = [factor4 id_p];
                  *buf = 138412546;
                  v60 = id_p3;
                  v61 = 2112;
                  v62 = id_p4;
                  _os_log_error_impl(&dword_22EA6B000, v34, OS_LOG_TYPE_ERROR, "primary id does not match for factors in arrays, pb:%@, fb:%@", buf, 0x16u);

                  v32 = v52;
                }

LABEL_22:

                v52 = v32 + 1;
              }

LABEL_23:

              ++v15;
              v12 = v53;
              if ([v53 count] <= v15)
              {
                goto LABEL_29;
              }
            }

            if ([v16 isEqual:v17])
            {
              goto LABEL_23;
            }

            factor5 = [v17 factor];
            metadataKeysArray = [factor5 metadataKeysArray];
            factor6 = [v16 factor];
            metadataKeysArray2 = [factor6 metadataKeysArray];

            if (metadataKeysArray == metadataKeysArray2)
            {
              goto LABEL_23;
            }

            level = [v17 level];
            metadata = [level metadata];
            level2 = [v16 level];
            metadata2 = [level2 metadata];
            v31 = [metadata isEqualToDictionary:metadata2];

            if (v31)
            {
              goto LABEL_23;
            }

            v32 = v52;
            if (v52 > 2)
            {
              goto LABEL_23;
            }

            v33 = TRILogCategory_ClientFramework();
            if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
            {
              *buf = v48;
              v60 = v17;
              _os_log_error_impl(&dword_22EA6B000, v33, OS_LOG_TYPE_ERROR, "factor level from flatbuffer storage:%@ does not match factor level from pb", buf, 0xCu);
            }

            v34 = TRILogCategory_ClientFramework();
            if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
            {
              *buf = v48;
              v60 = v16;
              _os_log_error_impl(&dword_22EA6B000, v34, OS_LOG_TYPE_ERROR, "factor level from flatbuffer storage does not match factor level from pb: %@", buf, 0xCu);
            }

            goto LABEL_22;
          }
        }

        else
        {
          v39 = TRILogCategory_ClientFramework();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
          {
            namespaceName = self->_namespaceName;
            v46 = [v12 count];
            v47 = [v54 count];
            *buf = 138412802;
            v60 = namespaceName;
            v61 = 2048;
            v62 = v46;
            v63 = 2048;
            v64 = v47;
            _os_log_error_impl(&dword_22EA6B000, v39, OS_LOG_TYPE_ERROR, "Factor levels from flatbuffers do not match factor levels for protobuf for namespace: %@, with counts forPb:%lu forFb:%lu", buf, 0x20u);
          }
        }
      }

LABEL_29:

      objc_autoreleasePoolPop(context);
      v11 = v50;
      v3 = v51;
    }
  }

  else
  {
    v11 = 0;
  }

  if (self->_isFlatbufferReadEnabled)
  {
    v40 = v11;

    v4 = v40;
  }

  v41 = objc_alloc(MEMORY[0x277CBEB18]);
  if (v4)
  {
    v42 = v4;
  }

  else
  {
    v42 = MEMORY[0x277CBEBF8];
  }

  v43 = [v41 initWithArray:v42 copyItems:1];

  objc_autoreleasePoolPop(v3);

  return v43;
}

void __63__TRIFPNamespaceFactorProvider__readAllFactorLevelsFromStorage__block_invoke_2(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = objc_autoreleasePoolPush();
  v4 = [*(*(a1 + 32) + 104) stringByDeletingLastPathComponent];
  v5 = [*(*(a1 + 32) + 80) namespaceName];
  v6 = [TRIFlatbufferUtils convertFBFactorLevelToProtoFactorLevel:v7 parentDir:v4 namespaceName:v5 isRelativePath:0];

  [*(a1 + 40) addObject:v6];
  objc_autoreleasePoolPop(v3);
}

- (TRIFPNamespaceFactorProvider)initWithParentId:(id)id deploymentId:(int)deploymentId promotable:(BOOL)promotable
{
  idCopy = id;
  v13.receiver = self;
  v13.super_class = TRIFPNamespaceFactorProvider;
  v10 = [(TRIFPNamespaceFactorProvider *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_parentId, id);
    v11->_deploymentId = deploymentId;
    v11->_promotable = promotable;
  }

  return v11;
}

- (TRIFPNamespaceFactorProvider)initWithPath:(id)path parentId:(id)id deploymentId:(int)deploymentId treatmentId:(id)treatmentId promotable:(BOOL)promotable
{
  location[3] = *MEMORY[0x277D85DE8];
  pathCopy = path;
  idCopy = id;
  treatmentIdCopy = treatmentId;
  if (!pathCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFPNamespaceFactorProvider.m" lineNumber:76 description:{@"Invalid parameter not satisfying: %@", @"path"}];
  }

  v68.receiver = self;
  v68.super_class = TRIFPNamespaceFactorProvider;
  v17 = [(TRIFPNamespaceFactorProvider *)&v68 init];
  v18 = v17;
  if (!v17)
  {
    goto LABEL_36;
  }

  objc_storeStrong(&v17->_parentId, id);
  v18->_deploymentId = deploymentId;
  objc_storeStrong(&v18->_treatmentId, treatmentId);
  v18->_promotable = promotable;
  v19 = [[TRIReferenceManagedDirReaderLock alloc] initWithDir:pathCopy];
  dirLock = v18->_dirLock;
  v18->_dirLock = v19;

  if (!v18->_dirLock)
  {
LABEL_43:
    v56 = 0;
    goto LABEL_44;
  }

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v22 = [pathCopy stringByAppendingPathComponent:@"factorPack.fb"];
  if ([defaultManager fileExistsAtPath:v22])
  {
    v18->_isFlatbufferReadEnabled = _os_feature_enabled_impl();
    v18->_isFlatbufferWriteEnabled = _os_feature_enabled_impl();
    objc_storeStrong(&v18->_fbFactorPath, v22);
  }

  if (v18->_isFlatbufferReadEnabled && !v18->_isFlatbufferWriteEnabled)
  {
    v23 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      LOWORD(location[0]) = 0;
      _os_log_error_impl(&dword_22EA6B000, v23, OS_LOG_TYPE_ERROR, "Invalid configuration for flatbuffer storage", location, 2u);
    }
  }

  if (v18->_fbFactorPath && v18->_isFlatbufferWriteEnabled)
  {
    v24 = objc_alloc(MEMORY[0x277CBEA90]);
    fbFactorPath = v18->_fbFactorPath;
    v67 = 0;
    v26 = [v24 initWithContentsOfFile:fbFactorPath options:8 error:&v67];
    v27 = v67;
    if (!v26)
    {
      v43 = TRILogCategory_ClientFramework();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        LODWORD(location[0]) = 138412290;
        *(location + 4) = v27;
        _os_log_error_impl(&dword_22EA6B000, v43, OS_LOG_TYPE_ERROR, "Failed to open factor pack: %@", location, 0xCu);
      }

      goto LABEL_42;
    }

    v28 = objc_alloc_init(MEMORY[0x277CBEB38]);
    warmupPersistentFactorLevelCache = v18->_warmupPersistentFactorLevelCache;
    v18->_warmupPersistentFactorLevelCache = v28;

    v30 = [[TRIFBFastFactorLevels alloc] initVerifiedRootObjectFromData:v26];
    fastFactorLevels = v18->_fastFactorLevels;
    v18->_fastFactorLevels = v30;

    objc_storeStrong(&v18->_referencePath, path);
    ncvs = [(TRIFBFastFactorLevels *)v18->_fastFactorLevels ncvs];

    if (ncvs)
    {
      v33 = MEMORY[0x277CBEB98];
      ncvs2 = [(TRIFBFastFactorLevels *)v18->_fastFactorLevels ncvs];
      v35 = [v33 setWithArray:ncvs2];
      namespaceCompatibilityVersions = v18->_namespaceCompatibilityVersions;
      v18->_namespaceCompatibilityVersions = v35;
    }

    if (v18->_isFlatbufferReadEnabled)
    {
      namespaceName = [(TRIFBFastFactorLevels *)v18->_fastFactorLevels namespaceName];
      namespaceName = v18->_namespaceName;
      v18->_namespaceName = namespaceName;

      sourceAsFactorPackId = [(TRIFBFastFactorLevels *)v18->_fastFactorLevels sourceAsFactorPackId];
      v40 = sourceAsFactorPackId == 0;

      if (v40)
      {
        v42 = TRILogCategory_ClientFramework();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
        {
          v60 = v18->_fbFactorPath;
          LODWORD(location[0]) = 138412290;
          *(location + 4) = v60;
          _os_log_error_impl(&dword_22EA6B000, v42, OS_LOG_TYPE_ERROR, "Failed to find factor pack identifier in TRIFBFastFactorLevels object for path: %@", location, 0xCu);
        }
      }

      else
      {
        sourceAsFactorPackId2 = [(TRIFBFastFactorLevels *)v18->_fastFactorLevels sourceAsFactorPackId];
        v42 = TRIValidateFactorPackId(sourceAsFactorPackId2);

        if (v42)
        {
          objc_storeStrong(&v18->_factorPackId, v42);
        }
      }
    }
  }

  if (!v18->_isFlatbufferReadEnabled)
  {
    v44 = [pathCopy stringByAppendingPathComponent:@"factorPack.pb"];
    pbFactorPath = v18->_pbFactorPath;
    v18->_pbFactorPath = v44;

    defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
    v47 = [defaultManager2 fileExistsAtPath:v18->_pbFactorPath];

    if (v47)
    {
      v48 = objc_alloc(MEMORY[0x277CBEA90]);
      v49 = v18->_pbFactorPath;
      v66 = 0;
      v50 = [v48 initWithContentsOfFile:v49 options:8 error:&v66];
      v27 = v66;
      if (v50)
      {
        v51 = [(TRIFPNamespaceFactorProvider *)v18 _factorLevelsWithFactorPackData:v50 referencePath:pathCopy outFactorPackId:&v18->_factorPackId outNamespaceName:&v18->_namespaceName outNCVs:&v18->_namespaceCompatibilityVersions];
        v52 = v51;
        if (v51)
        {
          if ([v51 count] < 0x11)
          {
            v58 = [[TRINaiveFactorLevelCache alloc] initWithFactorLevels:v52];
            factorLevels = v18->_factorLevels;
            v18->_factorLevels = v58;
          }

          else
          {
            objc_initWeak(location, v18);
            v53 = [TRIPruningFactorLevelCache alloc];
            v62[0] = MEMORY[0x277D85DD0];
            v62[1] = 3221225472;
            v62[2] = __90__TRIFPNamespaceFactorProvider_initWithPath_parentId_deploymentId_treatmentId_promotable___block_invoke;
            v62[3] = &unk_27885E4B8;
            objc_copyWeak(&v65, location);
            v63 = v50;
            v64 = pathCopy;
            v54 = [(TRIPruningFactorLevelCache *)v53 initWithPruningDelaySeconds:v62 loadFactorLevels:5.0];
            v55 = v18->_factorLevels;
            v18->_factorLevels = v54;

            objc_destroyWeak(&v65);
            objc_destroyWeak(location);
          }

          goto LABEL_35;
        }
      }

      else
      {
        v50 = TRILogCategory_ClientFramework();
        if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
        {
          LODWORD(location[0]) = 138412290;
          *(location + 4) = v27;
          _os_log_error_impl(&dword_22EA6B000, v50, OS_LOG_TYPE_ERROR, "Failed to open factor pack: %@", location, 0xCu);
        }
      }

      goto LABEL_42;
    }
  }

  if (!v18->_fbFactorPath)
  {
    v27 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      LOWORD(location[0]) = 0;
      _os_log_error_impl(&dword_22EA6B000, v27, OS_LOG_TYPE_ERROR, "Failed to open factor pack storage based on any storage type", location, 2u);
    }

LABEL_42:

    goto LABEL_43;
  }

LABEL_35:

LABEL_36:
  v56 = v18;
LABEL_44:

  return v56;
}

id __90__TRIFPNamespaceFactorProvider_initWithPath_parentId_deploymentId_treatmentId_promotable___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained _factorLevelsWithFactorPackData:*(a1 + 32) referencePath:*(a1 + 40) outFactorPackId:0 outNamespaceName:0 outNCVs:0];
  }

  else
  {
    v4 = MEMORY[0x277CBEBF8];
  }

  return v4;
}

- (id)_factorLevelsWithFactorPackData:(id)data referencePath:(id)path outFactorPackId:(id *)id outNamespaceName:(id *)name outNCVs:(id *)vs
{
  v61 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  pathCopy = path;
  v13 = objc_autoreleasePoolPush();
  v56 = 0;
  v14 = [[TRIClientFactorPackStreamingParser alloc] initWithData:dataCopy error:&v56];
  v15 = v14;
  if (!v14)
  {
    v24 = TRILogCategory_ClientFramework();
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    *buf = 138412546;
    v58 = pathCopy;
    v59 = 2112;
    v60 = v56;
    v45 = "Unable to parse factor pack %@: %@";
    v46 = v24;
    v47 = 22;
LABEL_26:
    _os_log_error_impl(&dword_22EA6B000, v46, OS_LOG_TYPE_ERROR, v45, buf, v47);
    goto LABEL_18;
  }

  if (![(TRIClientFactorPackStreamingParser *)v14 hasSelectedNamespace])
  {
    goto LABEL_17;
  }

  selectedNamespace = [(TRIClientFactorPackStreamingParser *)v15 selectedNamespace];
  if (([selectedNamespace hasName] & 1) == 0)
  {

    goto LABEL_17;
  }

  [(TRIClientFactorPackStreamingParser *)v15 selectedNamespace];
  v17 = v49 = dataCopy;
  [v17 name];
  v18 = pathCopy;
  v20 = v19 = v13;
  v21 = [v20 length];

  v13 = v19;
  pathCopy = v18;
  vsCopy = vs;

  dataCopy = v49;
  if (!v21)
  {
LABEL_17:
    v24 = TRILogCategory_ClientFramework();
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    *buf = 138412290;
    v58 = pathCopy;
    v45 = "Factor pack has unset or empty namespace name: %@";
    goto LABEL_25;
  }

  if (![(TRIClientFactorPackStreamingParser *)v15 hasFactorPackId])
  {
    v24 = TRILogCategory_ClientFramework();
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    *buf = 138412290;
    v58 = pathCopy;
    v45 = "Factor pack has unset factor pack id: %@";
LABEL_25:
    v46 = v24;
    v47 = 12;
    goto LABEL_26;
  }

  factorPackId = [(TRIClientFactorPackStreamingParser *)v15 factorPackId];
  v24 = TRIValidateFactorPackId(factorPackId);

  if (!v24)
  {
LABEL_18:
    v44 = 0;
    goto LABEL_19;
  }

  if (id)
  {
    objc_storeStrong(id, v24);
  }

  if (name)
  {
    selectedNamespace2 = [(TRIClientFactorPackStreamingParser *)v15 selectedNamespace];
    name = [selectedNamespace2 name];
    v27 = *name;
    *name = name;
  }

  if (vsCopy)
  {
    v28 = objc_alloc(MEMORY[0x277CBEB58]);
    selectedNamespace3 = [(TRIClientFactorPackStreamingParser *)v15 selectedNamespace];
    v30 = [v28 initWithCapacity:{objc_msgSend(selectedNamespace3, "compatibilityVersionArray_Count")}];

    selectedNamespace4 = [(TRIClientFactorPackStreamingParser *)v15 selectedNamespace];
    compatibilityVersionArray = [selectedNamespace4 compatibilityVersionArray];
    v54[0] = MEMORY[0x277D85DD0];
    v54[1] = 3221225472;
    v54[2] = __119__TRIFPNamespaceFactorProvider__factorLevelsWithFactorPackData_referencePath_outFactorPackId_outNamespaceName_outNCVs___block_invoke;
    v54[3] = &unk_27885E4E0;
    v33 = v30;
    v55 = v33;
    [compatibilityVersionArray enumerateValuesWithBlock:v54];

    v34 = *vsCopy;
    *vsCopy = v33;
    v35 = v33;
  }

  v36 = [objc_alloc(MEMORY[0x277D425C0]) initWithBehavior:1 copyWithZone:0];
  selectedNamespace5 = [(TRIClientFactorPackStreamingParser *)v15 selectedNamespace];
  name2 = [selectedNamespace5 name];
  v39 = [v36 intern:name2];

  v40 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 3221225472;
  v50[2] = __119__TRIFPNamespaceFactorProvider__factorLevelsWithFactorPackData_referencePath_outFactorPackId_outNamespaceName_outNCVs___block_invoke_2;
  v50[3] = &unk_27885E508;
  v41 = pathCopy;
  v51 = v41;
  v52 = v36;
  v53 = v40;
  v42 = v40;
  v43 = v36;
  [(TRIClientFactorPackStreamingParser *)v15 enumerateFactorLevelsWithBlock:v50];
  v44 = [TRINamespaceFactorProvider populateMAPathsForFactorLevels:v42 loadedFromParentDir:v41];

  dataCopy = v49;
LABEL_19:

  objc_autoreleasePoolPop(v13);

  return v44;
}

void __119__TRIFPNamespaceFactorProvider__factorLevelsWithFactorPackData_referencePath_outFactorPackId_outNamespaceName_outNCVs___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a2];
  [v2 addObject:v3];
}

void __119__TRIFPNamespaceFactorProvider__factorLevelsWithFactorPackData_referencePath_outFactorPackId_outNamespaceName_outNCVs___block_invoke_2(uint64_t a1, void *a2)
{
  v18 = a2;
  if ([v18 hasFactor])
  {
    v3 = [v18 factor];
    if ([v3 hasName])
    {
      v4 = [v18 hasLevel];

      if (!v4)
      {
        goto LABEL_12;
      }

      v5 = [v18 level];
      v3 = [v5 fileOrDirectoryLevelWithIsDir:0];

      if (v3)
      {
        if ([v3 hasPath])
        {
          v6 = [v3 path];
          v7 = [v6 isAbsolutePath];

          if ((v7 & 1) == 0)
          {
            v8 = *(a1 + 32);
            v9 = [v3 path];
            v10 = [v8 stringByAppendingPathComponent:v9];
            [v3 setPath:v10];
          }
        }
      }

      v11 = [v18 factor];
      v12 = [v11 hasNamespaceName];

      if (v12)
      {
        v13 = *(a1 + 40);
        v14 = [v18 factor];
        v15 = [v14 namespaceName];
        v16 = [v13 intern:v15];
        v17 = [v18 factor];
        [v17 setNamespaceName:v16];
      }

      [*(a1 + 48) addObject:v18];
    }
  }

LABEL_12:
}

- (unsigned)namespaceId
{
  v5 = 0;
  v3 = TRINamespace_NamespaceId_EnumDescriptor();
  LODWORD(self) = [v3 getValue:&v5 forEnumTextFormatName:self->_namespaceName];

  if (self)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

- (id)namespaceName
{
  v14 = *MEMORY[0x277D85DE8];
  if (self->_isFlatbufferWriteEnabled && !self->_isFlatbufferReadEnabled)
  {
    namespaceName = self->_namespaceName;
    namespaceName = [(TRIFBFastFactorLevels *)self->_fastFactorLevels namespaceName];
    LOBYTE(namespaceName) = [(NSString *)namespaceName isEqualToString:namespaceName];

    if ((namespaceName & 1) == 0)
    {
      v5 = TRILogCategory_ClientFramework();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        namespaceName2 = [(TRIFBFastFactorLevels *)self->_fastFactorLevels namespaceName];
        v9 = self->_namespaceName;
        v10 = 138412546;
        v11 = namespaceName2;
        v12 = 2112;
        v13 = v9;
        _os_log_error_impl(&dword_22EA6B000, v5, OS_LOG_TYPE_ERROR, "Flatbuffer namespace name: %@ does not match with protobuf name: %@", &v10, 0x16u);
      }
    }
  }

  v6 = self->_namespaceName;

  return v6;
}

- (id)rolloutId
{
  *&v16[13] = *MEMORY[0x277D85DE8];
  if (self->_isFlatbufferWriteEnabled && !self->_isFlatbufferReadEnabled)
  {
    sourceAsFactorPackId = [(TRIFBFastFactorLevels *)self->_fastFactorLevels sourceAsFactorPackId];

    if (sourceAsFactorPackId)
    {
      sourceAsFactorPackId2 = [(TRIFBFastFactorLevels *)self->_fastFactorLevels sourceAsFactorPackId];
      v5 = TRIValidateFactorPackId(sourceAsFactorPackId2);

      if (([v5 isEqualToString:self->_factorPackId]& 1) == 0)
      {
        v6 = TRILogCategory_ClientFramework();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          factorPackId = self->_factorPackId;
          v13 = 138412546;
          v14 = v5;
          v15 = 2112;
          *v16 = factorPackId;
          _os_log_error_impl(&dword_22EA6B000, v6, OS_LOG_TYPE_ERROR, "Flatbuffer rollout id: %@ does not match with protobuf rollout id: %@", &v13, 0x16u);
        }
      }
    }

    else
    {
      v5 = TRILogCategory_ClientFramework();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        parentId = self->_parentId;
        deploymentId = self->_deploymentId;
        v11 = self->_factorPackId;
        v13 = 138543874;
        v14 = parentId;
        v15 = 1024;
        *v16 = deploymentId;
        v16[2] = 2114;
        *&v16[3] = v11;
        _os_log_error_impl(&dword_22EA6B000, v5, OS_LOG_TYPE_ERROR, "Failed to find factor pack identifier within TRIFBFastFactorLevels object for rollout:%{public}@ deployment:%d, factor-pack: %{public}@", &v13, 0x1Cu);
      }
    }
  }

  v7 = self->_factorPackId;

  return v7;
}

- (id)levelForFactor:(id)factor
{
  v35 = *MEMORY[0x277D85DE8];
  factorCopy = factor;
  if ([(NSMutableDictionary *)self->_warmupPersistentFactorLevelCache count])
  {
    v5 = [(NSMutableDictionary *)self->_warmupPersistentFactorLevelCache objectForKey:factorCopy];
    v6 = v5;
    if (!v5 || ![v5 hasLevel])
    {
      v8 = 0;
      goto LABEL_40;
    }

    level = [v6 level];
    v8 = [TRILevelChecked wrapLevel:level];
  }

  else
  {
    if (self->_isFlatbufferReadEnabled)
    {
      level = 0;
      v6 = 0;
    }

    else
    {
      v9 = [(TRIFactorLevelCaching *)self->_factorLevels objectForKeyedSubscript:factorCopy];
      v6 = v9;
      if (v9)
      {
        level2 = [v9 level];
        if (level2)
        {
          level = [TRILevelChecked wrapLevel:level2];
        }

        else
        {
          level = 0;
        }
      }

      else
      {
        level = 0;
      }
    }

    if (self->_isFlatbufferWriteEnabled)
    {
      levelsAsDict = [(TRIFBFastFactorLevels *)self->_fastFactorLevels levelsAsDict];
      v12 = [levelsAsDict objectForKeyedSubscript:factorCopy];

      if (v12)
      {
        stringByDeletingLastPathComponent = [(NSString *)self->_fbFactorPath stringByDeletingLastPathComponent];
        namespaceName = [(TRIFBFastFactorLevels *)self->_fastFactorLevels namespaceName];
        v15 = [TRIFlatbufferUtils convertFBFactorLevelToProtoFactorLevel:v12 parentDir:stringByDeletingLastPathComponent namespaceName:namespaceName isRelativePath:0];
      }

      else
      {
        v15 = 0;
      }

      if (!self->_isFlatbufferReadEnabled && ([v6 isEqual:v15] & 1) == 0)
      {
        factor = [v15 factor];
        metadataKeysArray = [factor metadataKeysArray];
        factor2 = [v6 factor];
        metadataKeysArray2 = [factor2 metadataKeysArray];

        if (metadataKeysArray != metadataKeysArray2)
        {
          level3 = [v15 level];
          metadata = [level3 metadata];
          level4 = [v6 level];
          metadata2 = [level4 metadata];
          v24 = metadata2;
          v25 = metadata2 ? metadata2 : MEMORY[0x277CBEC10];
          v26 = [metadata isEqualToDictionary:v25];

          if ((v26 & 1) == 0)
          {
            v27 = TRILogCategory_ClientFramework();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v34 = v15;
              _os_log_error_impl(&dword_22EA6B000, v27, OS_LOG_TYPE_ERROR, "factor level from flatbuffer storage:%@ does not match factor level from pb", buf, 0xCu);
            }

            v28 = TRILogCategory_ClientFramework();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v34 = v6;
              _os_log_error_impl(&dword_22EA6B000, v28, OS_LOG_TYPE_ERROR, "factor level from flatbuffer storage does not match factor level from pb: %@", buf, 0xCu);
            }
          }
        }
      }

      if (v15)
      {
        level5 = [v15 level];
        v16 = [TRILevelChecked wrapLevel:level5];
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

    if (self->_isFlatbufferReadEnabled)
    {
      v30 = v16;
    }

    else
    {
      v30 = level;
    }

    v8 = v30;
  }

LABEL_40:

  return v8;
}

uint64_t __63__TRIFPNamespaceFactorProvider__readAllFactorLevelsFromStorage__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 factor];
  v6 = [v5 id_p];
  v7 = [v4 factor];

  v8 = [v7 id_p];
  v9 = [v6 compare:v8];

  return v9;
}

- (void)cacheFactorLevels
{
  _readAllFactorLevelsFromStorage = [(TRIFPNamespaceFactorProvider *)self _readAllFactorLevelsFromStorage];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __49__TRIFPNamespaceFactorProvider_cacheFactorLevels__block_invoke;
  v4[3] = &unk_27885E350;
  v4[4] = self;
  [_readAllFactorLevelsFromStorage enumerateObjectsUsingBlock:v4];
}

void __49__TRIFPNamespaceFactorProvider_cacheFactorLevels__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 72);
  v3 = a2;
  v5 = [v3 factor];
  v4 = [v5 name];
  [v2 setObject:v3 forKey:v4];
}

@end