@interface TRIInternalAgentToSystemServiceRequestHandler
- (BOOL)_getOnDemandReferenceCountsAtGlobalPath:(id)path onDemandFactorsPerUser:(id *)user error:(id *)error;
- (BOOL)_updateOnDemandReferenceCountsForUser:(id)user atGlobalPath:(id)path addingFactors:(id)factors removingFactors:(id)removingFactors newlyUnreferencedFactors:(id *)unreferencedFactors;
- (TRIInternalAgentToSystemServiceRequestHandler)initWithEntitlementWitness:(id)witness;
- (void)addSymlinkFromAssetWithIdentifier:(id)identifier toPath:(id)path flockWitness:(TRIFlockWitness_ *)witness completion:(id)completion;
- (void)collectGarbageOlderThanNumScans:(unsigned int)scans deletedAssetSize:(unint64_t *)size ignoreRecentlyCreatedAssets:(BOOL)assets dryRun:(BOOL)run includedCacheDeletableAssetIds:(id)ids completion:(id)completion;
- (void)fixFileProtectionForAssetStoreWithCompletion:(id)completion;
- (void)getOnDemandReferenceCountsPerUserAtGlobalPath:(id)path completion:(id)completion;
- (void)logSystemCovariates;
- (void)migrateToGlobalAssetStoreIfNeededFromLocalStore:(id)store sourceExtension:(id)extension completion:(id)completion;
- (void)overwriteGlobalActiveFactorProvidersWithNamespaceMap:(id)map factorPackMap:(id)packMap rolloutDeploymentMap:(id)deploymentMap completion:(id)completion;
- (void)referenceMAAutoAssetWithId:(id)id futurePath:(id)path currentPath:(id)currentPath isFileFactor:(BOOL)factor sourceExtension:(id)extension completion:(id)completion;
- (void)removeAssetWithIdentifier:(id)identifier completion:(id)completion;
- (void)removeUnreferencedGlobalFactorPacksWithCompletion:(id)completion;
- (void)saveAssetWithIdentifier:(id)identifier sourcePath:(id)path flockWitness:(TRIFlockWitness_ *)witness removeSourceOnFailure:(BOOL)failure sourceExtension:(id)extension completion:(id)completion;
- (void)saveFactorPackForUserId:(id)id toGlobalPath:(id)path fromTemporaryPath:(id)temporaryPath factors:(id)factors sourceExtension:(id)extension completion:(id)completion;
- (void)updateFactorPackForUserId:(id)id atGlobalPath:(id)path deletingFactors:(id)factors completion:(id)completion;
- (void)updateFactorPackForUserId:(id)id atGlobalPath:(id)path populatingFactors:(id)factors completion:(id)completion;
@end

@implementation TRIInternalAgentToSystemServiceRequestHandler

- (TRIInternalAgentToSystemServiceRequestHandler)initWithEntitlementWitness:(id)witness
{
  witnessCopy = witness;
  v19.receiver = self;
  v19.super_class = TRIInternalAgentToSystemServiceRequestHandler;
  v6 = [(TRIInternalAgentToSystemServiceRequestHandler *)&v19 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_entitlementWitness, witness);
    v8 = [TRIAssetStore alloc];
    mEMORY[0x277D737E0] = [MEMORY[0x277D737E0] sharedPaths];
    v10 = [(TRIAssetStore *)v8 initWithPaths:mEMORY[0x277D737E0]];
    store = v7->_store;
    v7->_store = v10;

    v12 = objc_opt_new();
    storageManagement = v7->_storageManagement;
    v7->_storageManagement = v12;

    v14 = [TRIAssetStoreOperator alloc];
    mEMORY[0x277D737E0]2 = [MEMORY[0x277D737E0] sharedPaths];
    v16 = [(TRIAssetStoreOperator *)v14 initWithPaths:mEMORY[0x277D737E0]2 storageManagement:v7->_storageManagement assetStore:v7->_store];
    operator = v7->_operator;
    v7->_operator = v16;
  }

  return v7;
}

- (void)saveAssetWithIdentifier:(id)identifier sourcePath:(id)path flockWitness:(TRIFlockWitness_ *)witness removeSourceOnFailure:(BOOL)failure sourceExtension:(id)extension completion:(id)completion
{
  failureCopy = failure;
  identifierCopy = identifier;
  pathCopy = path;
  extensionCopy = extension;
  completionCopy = completion;
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __146__TRIInternalAgentToSystemServiceRequestHandler_saveAssetWithIdentifier_sourcePath_flockWitness_removeSourceOnFailure_sourceExtension_completion___block_invoke;
  v29[3] = &unk_279DE0370;
  v29[4] = self;
  v17 = identifierCopy;
  v30 = v17;
  v18 = pathCopy;
  v31 = v18;
  v32 = failureCopy;
  v19 = MEMORY[0x2743948D0](v29);
  v19[2](v19, 0);
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __146__TRIInternalAgentToSystemServiceRequestHandler_saveAssetWithIdentifier_sourcePath_flockWitness_removeSourceOnFailure_sourceExtension_completion___block_invoke_43;
  v27[3] = &unk_279DE0398;
  v20 = v19;
  v28 = v20;
  v21 = MEMORY[0x2743948D0](v27);
  [extensionCopy UTF8String];
  v22 = sandbox_extension_consume();
  v23 = TRILogCategory_Server();
  v24 = v23;
  if (v22 == -1)
  {
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26F567000, v24, OS_LOG_TYPE_ERROR, "Failed to consume a sandbox extension", buf, 2u);
    }
  }

  else if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_26F567000, v24, OS_LOG_TYPE_DEBUG, "Successfully consumed save asset extension.", buf, 2u);
  }

  completionCopy[2](completionCopy, [(TRIAssetStoreOperator *)self->_operator saveAssetWithIdentifier:v17 sourcePath:v18 flockWitness:witness removeSourceOnFailure:failureCopy]);
  if (v22 != -1)
  {
    sandbox_extension_release();
  }

  if (v21)
  {
    v21[2](v21);
  }
}

void __146__TRIInternalAgentToSystemServiceRequestHandler_saveAssetWithIdentifier_sourcePath_flockWitness_removeSourceOnFailure_sourceExtension_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = TRILogCategory_Server();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = v6;
    v8 = "end";
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11 = *(a1 + 48);
    if (!a2)
    {
      v8 = "begin";
    }

    v12 = *(a1 + 56);
    v13 = 138544642;
    v14 = v6;
    v15 = 2048;
    v16 = v9;
    v17 = 2080;
    v18 = v8;
    v19 = 2112;
    v20 = v10;
    v21 = 2112;
    v22 = v11;
    v23 = 1024;
    v24 = v12;
    _os_log_impl(&dword_26F567000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ %p: %s saveAssetWithIdentifier:%@ sourcePath:%@ removeSourceOnFailure:%d", &v13, 0x3Au);
  }
}

- (void)removeAssetWithIdentifier:(id)identifier completion:(id)completion
{
  operator = self->_operator;
  completionCopy = completion;
  completionCopy[2](completionCopy, [(TRIAssetStoreOperator *)operator removeAssetWithIdentifier:identifier]);
}

- (void)addSymlinkFromAssetWithIdentifier:(id)identifier toPath:(id)path flockWitness:(TRIFlockWitness_ *)witness completion:(id)completion
{
  operator = self->_operator;
  completionCopy = completion;
  completionCopy[2](completionCopy, [(TRIAssetStoreOperator *)operator addSymlinkFromAssetWithIdentifier:identifier toPath:path flockWitness:witness]);
}

- (void)referenceMAAutoAssetWithId:(id)id futurePath:(id)path currentPath:(id)currentPath isFileFactor:(BOOL)factor sourceExtension:(id)extension completion:(id)completion
{
  factorCopy = factor;
  idCopy = id;
  pathCopy = path;
  currentPathCopy = currentPath;
  extensionCopy = extension;
  completionCopy = completion;
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __139__TRIInternalAgentToSystemServiceRequestHandler_referenceMAAutoAssetWithId_futurePath_currentPath_isFileFactor_sourceExtension_completion___block_invoke;
  v32[3] = &unk_279DE03C0;
  v32[4] = self;
  v19 = idCopy;
  v33 = v19;
  v20 = pathCopy;
  v34 = v20;
  v21 = currentPathCopy;
  v35 = v21;
  v36 = factorCopy;
  v22 = MEMORY[0x2743948D0](v32);
  v22[2](v22, 0);
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __139__TRIInternalAgentToSystemServiceRequestHandler_referenceMAAutoAssetWithId_futurePath_currentPath_isFileFactor_sourceExtension_completion___block_invoke_45;
  v30[3] = &unk_279DE0398;
  v23 = v22;
  v31 = v23;
  v24 = MEMORY[0x2743948D0](v30);
  v28 = extensionCopy;
  [extensionCopy UTF8String];
  v25 = sandbox_extension_consume();
  if (v25 == -1)
  {
    v26 = TRILogCategory_Server();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26F567000, v26, OS_LOG_TYPE_ERROR, "failed to consume a sandbox extension", buf, 2u);
    }
  }

  v27 = [(TRIAssetStoreOperator *)self->_operator referenceMAAutoAssetWithId:v19 futurePath:v20 currentPath:v21 isFileFactor:factorCopy];
  completionCopy[2](completionCopy, v27);

  if (v25 != -1)
  {
    sandbox_extension_release();
  }

  if (v24)
  {
    v24[2](v24);
  }
}

void __139__TRIInternalAgentToSystemServiceRequestHandler_referenceMAAutoAssetWithId_futurePath_currentPath_isFileFactor_sourceExtension_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = TRILogCategory_Server();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = v6;
    v8 = "end";
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    if (!a2)
    {
      v8 = "begin";
    }

    v11 = *(a1 + 48);
    v12 = *(a1 + 56);
    v13 = *(a1 + 64);
    v14 = 138544898;
    v15 = v6;
    v16 = 2048;
    v17 = v9;
    v18 = 2080;
    v19 = v8;
    v20 = 2112;
    v21 = v10;
    v22 = 2112;
    v23 = v11;
    v24 = 2112;
    v25 = v12;
    v26 = 1024;
    v27 = v13;
    _os_log_impl(&dword_26F567000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ %p: %s referenceMAAutoAssetWithId:%@ futurePath:%@ currentPath:%@ isFileFactor:%d", &v14, 0x44u);
  }
}

- (void)collectGarbageOlderThanNumScans:(unsigned int)scans deletedAssetSize:(unint64_t *)size ignoreRecentlyCreatedAssets:(BOOL)assets dryRun:(BOOL)run includedCacheDeletableAssetIds:(id)ids completion:(id)completion
{
  runCopy = run;
  assetsCopy = assets;
  v12 = *&scans;
  idsCopy = ids;
  completionCopy = completion;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __175__TRIInternalAgentToSystemServiceRequestHandler_collectGarbageOlderThanNumScans_deletedAssetSize_ignoreRecentlyCreatedAssets_dryRun_includedCacheDeletableAssetIds_completion___block_invoke;
  v23[3] = &unk_279DE03E8;
  v23[4] = self;
  v24 = v12;
  v25 = assetsCopy;
  v26 = runCopy;
  v16 = MEMORY[0x2743948D0](v23);
  v16[2](v16, 0);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __175__TRIInternalAgentToSystemServiceRequestHandler_collectGarbageOlderThanNumScans_deletedAssetSize_ignoreRecentlyCreatedAssets_dryRun_includedCacheDeletableAssetIds_completion___block_invoke_46;
  v21[3] = &unk_279DE0398;
  v17 = v16;
  v22 = v17;
  v18 = MEMORY[0x2743948D0](v21);
  v20 = objc_opt_new();
  v19 = [(TRIAssetStoreOperator *)self->_operator collectGarbageOlderThanNumScans:v12 deletedAssetSize:size ignoreRecentlyCreatedAssets:assetsCopy dryRun:runCopy includedCacheDeletableAssetIds:idsCopy deletedAssetIds:&v20];
  completionCopy[2](completionCopy, v19, v20);

  if (v18)
  {
    v18[2](v18);
  }
}

void __175__TRIInternalAgentToSystemServiceRequestHandler_collectGarbageOlderThanNumScans_deletedAssetSize_ignoreRecentlyCreatedAssets_dryRun_includedCacheDeletableAssetIds_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = TRILogCategory_Server();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = v6;
    v8 = *(a1 + 32);
    v9 = "end";
    v10 = *(a1 + 40);
    v11 = *(a1 + 44);
    if (!a2)
    {
      v9 = "begin";
    }

    v12 = *(a1 + 45);
    v13 = 138544642;
    v14 = v6;
    v15 = 2048;
    v16 = v8;
    v17 = 2080;
    v18 = v9;
    v19 = 1024;
    v20 = v10;
    v21 = 1024;
    v22 = v11;
    v23 = 1024;
    v24 = v12;
    _os_log_impl(&dword_26F567000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ %p: %s collectGarbageOlderThanNumScans:%d ignoreRecentlyCreatedAssets:%d dryRun:%d", &v13, 0x32u);
  }
}

- (void)fixFileProtectionForAssetStoreWithCompletion:(id)completion
{
  operator = self->_operator;
  completionCopy = completion;
  completionCopy[2](completionCopy, [(TRIAssetStoreOperator *)operator fixFileProtectionForAssetStoreFiles]);
}

- (void)saveFactorPackForUserId:(id)id toGlobalPath:(id)path fromTemporaryPath:(id)temporaryPath factors:(id)factors sourceExtension:(id)extension completion:(id)completion
{
  v60 = *MEMORY[0x277D85DE8];
  idCopy = id;
  pathCopy = path;
  temporaryPathCopy = temporaryPath;
  factorsCopy = factors;
  extensionCopy = extension;
  completionCopy = completion;
  v51[0] = MEMORY[0x277D85DD0];
  v51[1] = 3221225472;
  v51[2] = __139__TRIInternalAgentToSystemServiceRequestHandler_saveFactorPackForUserId_toGlobalPath_fromTemporaryPath_factors_sourceExtension_completion___block_invoke;
  v51[3] = &unk_279DE0410;
  selfCopy = self;
  v51[4] = self;
  v45 = idCopy;
  v52 = v45;
  v18 = pathCopy;
  v53 = v18;
  v19 = temporaryPathCopy;
  v54 = v19;
  v46 = factorsCopy;
  v55 = v46;
  v20 = MEMORY[0x2743948D0](v51);
  v20[2](v20, 0);
  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = __139__TRIInternalAgentToSystemServiceRequestHandler_saveFactorPackForUserId_toGlobalPath_fromTemporaryPath_factors_sourceExtension_completion___block_invoke_48;
  v49[3] = &unk_279DE0398;
  v44 = v20;
  v50 = v44;
  v21 = MEMORY[0x2743948D0](v49);
  mEMORY[0x277D737E0] = [MEMORY[0x277D737E0] sharedPaths];
  v23 = [mEMORY[0x277D737E0] treatmentsDirUsingGlobal:1];
  LOBYTE(extension) = [v18 hasPrefix:v23];

  if (extension)
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v25 = [v18 stringByAppendingPathComponent:@"factorPack.pb"];
    v26 = [defaultManager fileExistsAtPath:v25];

    defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
    v28 = [v19 stringByAppendingPathComponent:@"factorPack.pb"];
    v29 = [defaultManager2 fileExistsAtPath:v28];

    defaultManager3 = [MEMORY[0x277CCAA00] defaultManager];
    v31 = [v18 stringByAppendingPathComponent:@"factorPack.fb"];
    v32 = [defaultManager3 fileExistsAtPath:v31];

    defaultManager4 = [MEMORY[0x277CCAA00] defaultManager];
    v34 = [v19 stringByAppendingPathComponent:@"factorPack.fb"];
    v35 = [defaultManager4 fileExistsAtPath:v34];

    if (v26 & 1 | ((v29 & 1) == 0) && ((v32 | v35 ^ 1) & 1) != 0)
    {
      v36 = TRILogCategory_Server();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_26F567000, v36, OS_LOG_TYPE_DEFAULT, "Factor pack already exists in the global directory. Updating the factorpack instead.", buf, 2u);
      }

      [(TRIInternalAgentToSystemServiceRequestHandler *)selfCopy updateFactorPackForUserId:v45 atGlobalPath:v18 populatingFactors:v46 completion:completionCopy];
    }

    else
    {
      v38 = extensionCopy;
      [extensionCopy UTF8String];
      v39 = sandbox_extension_consume();
      if (v39 == -1)
      {
        v40 = TRILogCategory_Server();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_26F567000, v40, OS_LOG_TYPE_ERROR, "failed to consume a sandbox extension", buf, 2u);
        }
      }

      stringByDeletingLastPathComponent = [v18 stringByDeletingLastPathComponent];
      if ([MEMORY[0x277CCAA00] triIdempotentCreateDirectoryOrFaultWithPath:stringByDeletingLastPathComponent])
      {
        completionCopy[2](completionCopy, [MEMORY[0x277CCAA00] triForceRenameWithSourcePath:v19 destPath:v18] & objc_msgSend(v43, "_updateOnDemandReferenceCountsForUser:atGlobalPath:addingFactors:removingFactors:newlyUnreferencedFactors:", v45, v18, v46, 0, 0));
      }

      else
      {
        completionCopy[2](completionCopy, 0);
      }

      if (v39 != -1)
      {
        sandbox_extension_release();
      }
    }
  }

  else
  {
    v37 = TRILogCategory_Server();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v57 = v19;
      v58 = 2112;
      v59 = v18;
      _os_log_error_impl(&dword_26F567000, v37, OS_LOG_TYPE_ERROR, "Asked to save factor pack at %@ to non-treatment directory location: %@", buf, 0x16u);
    }

    completionCopy[2](completionCopy, 0);
  }

  if (v21)
  {
    v21[2](v21);
  }
}

void __139__TRIInternalAgentToSystemServiceRequestHandler_saveFactorPackForUserId_toGlobalPath_fromTemporaryPath_factors_sourceExtension_completion___block_invoke(void *a1, uint64_t a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = TRILogCategory_Server();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = v6;
    v8 = "end";
    v9 = a1[4];
    v10 = a1[5];
    if (!a2)
    {
      v8 = "begin";
    }

    v11 = a1[6];
    v12 = a1[7];
    v13 = a1[8];
    v14 = 138544898;
    v15 = v6;
    v16 = 2048;
    v17 = v9;
    v18 = 2080;
    v19 = v8;
    v20 = 2112;
    v21 = v10;
    v22 = 2112;
    v23 = v11;
    v24 = 2112;
    v25 = v12;
    v26 = 2112;
    v27 = v13;
    _os_log_impl(&dword_26F567000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ %p: %s saveFactorPackForUserId:%@ toGlobalPath:%@ fromTemporaryPath:%@ factors:%@", &v14, 0x48u);
  }
}

- (void)updateFactorPackForUserId:(id)id atGlobalPath:(id)path populatingFactors:(id)factors completion:(id)completion
{
  v39 = *MEMORY[0x277D85DE8];
  idCopy = id;
  pathCopy = path;
  factorsCopy = factors;
  completionCopy = completion;
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __117__TRIInternalAgentToSystemServiceRequestHandler_updateFactorPackForUserId_atGlobalPath_populatingFactors_completion___block_invoke;
  v33[3] = &unk_279DE0438;
  v33[4] = self;
  v30 = idCopy;
  v34 = v30;
  v14 = pathCopy;
  v35 = v14;
  v15 = factorsCopy;
  v36 = v15;
  v16 = MEMORY[0x2743948D0](v33);
  v16[2](v16, 0);
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __117__TRIInternalAgentToSystemServiceRequestHandler_updateFactorPackForUserId_atGlobalPath_populatingFactors_completion___block_invoke_56;
  v31[3] = &unk_279DE0398;
  v29 = v16;
  v32 = v29;
  v17 = MEMORY[0x2743948D0](v31);
  mEMORY[0x277D737E0] = [MEMORY[0x277D737E0] sharedPaths];
  v19 = [mEMORY[0x277D737E0] treatmentsDirUsingGlobal:1];
  v20 = [v14 hasPrefix:v19];

  if (v20)
  {
    v21 = [TRIFactorPackStorage alloc];
    mEMORY[0x277D737E0]2 = [MEMORY[0x277D737E0] sharedPaths];
    v23 = [(TRIFactorPackStorage *)v21 initWithPaths:mEMORY[0x277D737E0]2];

    v24 = [(TRIFactorPackStorage *)v23 updateSavedGlobalFactorPackAt:v14 populatingAssetsForFactorNames:v15];
    if (_os_feature_enabled_impl())
    {
      v25 = [TRIFBFactorPackStorage alloc];
      mEMORY[0x277D737E0]3 = [MEMORY[0x277D737E0] sharedPaths];
      v27 = [(TRIFBFactorPackStorage *)v25 initWithPaths:mEMORY[0x277D737E0]3];

      LODWORD(mEMORY[0x277D737E0]3) = [(TRIFBFactorPackStorage *)v27 updateSavedGlobalFactorPackAt:v14 populatingAssetsForFactorNames:v15];
      v24 &= mEMORY[0x277D737E0]3;
    }

    completionCopy[2](completionCopy, v24 & [(TRIInternalAgentToSystemServiceRequestHandler *)self _updateOnDemandReferenceCountsForUser:v30 atGlobalPath:v14 addingFactors:v15 removingFactors:0 newlyUnreferencedFactors:0, self]);
  }

  else
  {
    v28 = TRILogCategory_Server();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v38 = v14;
      _os_log_error_impl(&dword_26F567000, v28, OS_LOG_TYPE_ERROR, "Asked to update factor pack at non-global or non-treatment directory location: %@", buf, 0xCu);
    }

    completionCopy[2](completionCopy, 0);
  }

  if (v17)
  {
    v17[2](v17);
  }
}

void __117__TRIInternalAgentToSystemServiceRequestHandler_updateFactorPackForUserId_atGlobalPath_populatingFactors_completion___block_invoke(void *a1, uint64_t a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = TRILogCategory_Server();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = v6;
    v8 = "end";
    v9 = a1[4];
    v10 = a1[5];
    if (!a2)
    {
      v8 = "begin";
    }

    v11 = a1[6];
    v12 = a1[7];
    v13 = 138544642;
    v14 = v6;
    v15 = 2048;
    v16 = v9;
    v17 = 2080;
    v18 = v8;
    v19 = 2112;
    v20 = v10;
    v21 = 2112;
    v22 = v11;
    v23 = 2112;
    v24 = v12;
    _os_log_impl(&dword_26F567000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ %p: %s updateFactorPackForUserId:%@ atGlobalPath:%@ populatingFactors:%@", &v13, 0x3Eu);
  }
}

- (void)updateFactorPackForUserId:(id)id atGlobalPath:(id)path deletingFactors:(id)factors completion:(id)completion
{
  v41 = *MEMORY[0x277D85DE8];
  idCopy = id;
  pathCopy = path;
  factorsCopy = factors;
  completionCopy = completion;
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __115__TRIInternalAgentToSystemServiceRequestHandler_updateFactorPackForUserId_atGlobalPath_deletingFactors_completion___block_invoke;
  v36[3] = &unk_279DE0438;
  v36[4] = self;
  v33 = idCopy;
  v37 = v33;
  v14 = pathCopy;
  v38 = v14;
  v15 = factorsCopy;
  v39 = v15;
  v16 = MEMORY[0x2743948D0](v36);
  v16[2](v16, 0);
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __115__TRIInternalAgentToSystemServiceRequestHandler_updateFactorPackForUserId_atGlobalPath_deletingFactors_completion___block_invoke_61;
  v34[3] = &unk_279DE0398;
  v32 = v16;
  v35 = v32;
  v17 = MEMORY[0x2743948D0](v34);
  mEMORY[0x277D737E0] = [MEMORY[0x277D737E0] sharedPaths];
  v19 = [mEMORY[0x277D737E0] treatmentsDirUsingGlobal:1];
  v20 = [v14 hasPrefix:v19];

  if (v20)
  {
    *buf = 0;
    v21 = [TRIFactorPackStorage alloc];
    mEMORY[0x277D737E0]2 = [MEMORY[0x277D737E0] sharedPaths];
    v23 = [(TRIFactorPackStorage *)v21 initWithPaths:mEMORY[0x277D737E0]2];

    v24 = [(TRIInternalAgentToSystemServiceRequestHandler *)self _updateOnDemandReferenceCountsForUser:v33 atGlobalPath:v14 addingFactors:0 removingFactors:v15 newlyUnreferencedFactors:buf];
    v25 = *buf;
    if (!v24)
    {
      v25 = v15;
    }

    v26 = v25;
    v27 = v24 & [(TRIFactorPackStorage *)v23 updateSavedGlobalFactorPackAt:v14 deletingAssetsWithFactorNames:v26];
    if (_os_feature_enabled_impl())
    {
      v28 = [TRIFBFactorPackStorage alloc];
      mEMORY[0x277D737E0]3 = [MEMORY[0x277D737E0] sharedPaths];
      v30 = [(TRIFBFactorPackStorage *)v28 initWithPaths:mEMORY[0x277D737E0]3];

      LODWORD(mEMORY[0x277D737E0]3) = [(TRIFBFactorPackStorage *)v30 updateSavedGlobalFactorPackAt:v14 deletingAssetsWithFactorNames:v26];
      v27 = v27 & mEMORY[0x277D737E0]3;
    }

    completionCopy[2](completionCopy, v27);
  }

  else
  {
    v31 = TRILogCategory_Server();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *&buf[4] = v14;
      _os_log_error_impl(&dword_26F567000, v31, OS_LOG_TYPE_ERROR, "Asked to delete factor pack at non-global or non-treatment directory location: %@", buf, 0xCu);
    }

    completionCopy[2](completionCopy, 0);
  }

  if (v17)
  {
    v17[2](v17);
  }
}

void __115__TRIInternalAgentToSystemServiceRequestHandler_updateFactorPackForUserId_atGlobalPath_deletingFactors_completion___block_invoke(void *a1, uint64_t a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = TRILogCategory_Server();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = v6;
    v8 = "end";
    v9 = a1[4];
    v10 = a1[5];
    if (!a2)
    {
      v8 = "begin";
    }

    v11 = a1[6];
    v12 = a1[7];
    v13 = 138544642;
    v14 = v6;
    v15 = 2048;
    v16 = v9;
    v17 = 2080;
    v18 = v8;
    v19 = 2112;
    v20 = v10;
    v21 = 2112;
    v22 = v11;
    v23 = 2112;
    v24 = v12;
    _os_log_impl(&dword_26F567000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ %p: %s updateFactorPackForUserId:%@ atGlobalPath:%@ deletingFactors:%@", &v13, 0x3Eu);
  }
}

- (void)removeUnreferencedGlobalFactorPacksWithCompletion:(id)completion
{
  completionCopy = completion;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __99__TRIInternalAgentToSystemServiceRequestHandler_removeUnreferencedGlobalFactorPacksWithCompletion___block_invoke;
  v15[3] = &unk_279DE0460;
  v15[4] = self;
  v5 = MEMORY[0x2743948D0](v15);
  v5[2](v5, 0);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __99__TRIInternalAgentToSystemServiceRequestHandler_removeUnreferencedGlobalFactorPacksWithCompletion___block_invoke_62;
  v13[3] = &unk_279DE0398;
  v6 = v5;
  v14 = v6;
  v7 = MEMORY[0x2743948D0](v13);
  v8 = [TRIFBFactorPackStorage alloc];
  mEMORY[0x277D737E0] = [MEMORY[0x277D737E0] sharedPaths];
  v10 = [(TRIFBFactorPackStorage *)v8 initWithPaths:mEMORY[0x277D737E0]];

  v12 = 0;
  v11 = [(TRIFBFactorPackStorage *)v10 removeUnreferencedGlobalFactorPacksWithRemovedCount:&v12];
  completionCopy[2](completionCopy, v11, v12);

  if (v7)
  {
    v7[2](v7);
  }
}

void __99__TRIInternalAgentToSystemServiceRequestHandler_removeUnreferencedGlobalFactorPacksWithCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = TRILogCategory_Server();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = *(a1 + 32);
    v8 = "end";
    v9 = 138543874;
    v10 = v6;
    if (!a2)
    {
      v8 = "begin";
    }

    v11 = 2048;
    v12 = v7;
    v13 = 2080;
    v14 = v8;
    _os_log_impl(&dword_26F567000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ %p: %s removeUnreferencedGlobalFactorPacksWithCompletion", &v9, 0x20u);
  }
}

- (void)overwriteGlobalActiveFactorProvidersWithNamespaceMap:(id)map factorPackMap:(id)packMap rolloutDeploymentMap:(id)deploymentMap completion:(id)completion
{
  mapCopy = map;
  packMapCopy = packMap;
  deploymentMapCopy = deploymentMap;
  completionCopy = completion;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __148__TRIInternalAgentToSystemServiceRequestHandler_overwriteGlobalActiveFactorProvidersWithNamespaceMap_factorPackMap_rolloutDeploymentMap_completion___block_invoke;
  v25[3] = &unk_279DE0438;
  v25[4] = self;
  v14 = mapCopy;
  v26 = v14;
  v15 = packMapCopy;
  v27 = v15;
  v16 = deploymentMapCopy;
  v28 = v16;
  v17 = MEMORY[0x2743948D0](v25);
  v17[2](v17, 0);
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __148__TRIInternalAgentToSystemServiceRequestHandler_overwriteGlobalActiveFactorProvidersWithNamespaceMap_factorPackMap_rolloutDeploymentMap_completion___block_invoke_63;
  v23[3] = &unk_279DE0398;
  v18 = v17;
  v24 = v18;
  v19 = MEMORY[0x2743948D0](v23);
  v20 = [TRINamespaceResolverStorage alloc];
  mEMORY[0x277D737E0] = [MEMORY[0x277D737E0] sharedPaths];
  v22 = [(TRINamespaceResolverStorage *)v20 initWithPaths:mEMORY[0x277D737E0]];

  completionCopy[2](completionCopy, [(TRINamespaceResolverStorage *)v22 overwriteGlobalActiveFactorProvidersWithNamespaceMap:v14 factorPackMap:v15 rolloutDeploymentMap:v16]);
  if (v19)
  {
    v19[2](v19);
  }
}

void __148__TRIInternalAgentToSystemServiceRequestHandler_overwriteGlobalActiveFactorProvidersWithNamespaceMap_factorPackMap_rolloutDeploymentMap_completion___block_invoke(void *a1, uint64_t a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = TRILogCategory_Server();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = v6;
    v8 = "end";
    v9 = a1[4];
    v10 = a1[5];
    if (!a2)
    {
      v8 = "begin";
    }

    v11 = a1[6];
    v12 = a1[7];
    v13 = 138544642;
    v14 = v6;
    v15 = 2048;
    v16 = v9;
    v17 = 2080;
    v18 = v8;
    v19 = 2112;
    v20 = v10;
    v21 = 2112;
    v22 = v11;
    v23 = 2112;
    v24 = v12;
    _os_log_impl(&dword_26F567000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ %p: %s overwriteGlobalActiveFactorProvidersWithNamespaceMap:%@ factorPackMap:%@ rolloutDeploymentMap:%@", &v13, 0x3Eu);
  }
}

- (BOOL)_getOnDemandReferenceCountsAtGlobalPath:(id)path onDemandFactorsPerUser:(id *)user error:(id *)error
{
  v31 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  mEMORY[0x277D737E0] = [MEMORY[0x277D737E0] sharedPaths];
  v9 = [mEMORY[0x277D737E0] treatmentsDirUsingGlobal:1];
  v10 = [pathCopy hasPrefix:v9];

  if (v10)
  {
    v11 = [pathCopy stringByAppendingPathComponent:@"onDemandFactorsSubscribedUserMap.plplist"];
    v12 = objc_opt_new();
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v14 = [defaultManager fileExistsAtPath:v11];

    if (v14)
    {
      v26 = 0;
      v15 = [MEMORY[0x277D425D8] dictionaryWithPath:v11 error:&v26];
      v16 = v26;
      v17 = TRILogCategory_Server();
      v18 = v17;
      if (v16)
      {
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          localizedDescription = [v16 localizedDescription];
          *buf = 138543618;
          v28 = localizedDescription;
          v29 = 2112;
          v30 = v11;
          _os_log_error_impl(&dword_26F567000, v18, OS_LOG_TYPE_ERROR, "Failed to open users per factors file with error %{public}@ at path %@", buf, 0x16u);
        }

        if (error)
        {
          v19 = v16;
          *error = v16;
        }

        v20 = 0;
        goto LABEL_18;
      }

      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_26F567000, v18, OS_LOG_TYPE_INFO, "Successfully opened the users per factors file.", buf, 2u);
      }

      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __118__TRIInternalAgentToSystemServiceRequestHandler__getOnDemandReferenceCountsAtGlobalPath_onDemandFactorsPerUser_error___block_invoke;
      v24[3] = &unk_279DE0488;
      v25 = v12;
      [v15 enumerateKeysAndObjectsUsingBlock:v24];
    }

    else
    {
      v15 = TRILogCategory_Server();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_26F567000, v15, OS_LOG_TYPE_INFO, "Couldn't locate a global users per factors file. Will create a new one when saving.", buf, 2u);
      }
    }

    v21 = v12;
    *user = v12;
    v20 = 1;
LABEL_18:

    goto LABEL_19;
  }

  v11 = TRILogCategory_Server();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v28 = pathCopy;
    _os_log_error_impl(&dword_26F567000, v11, OS_LOG_TYPE_ERROR, "Asked to update ref count at non-global or non-treatment directory location: %@", buf, 0xCu);
  }

  v20 = 0;
LABEL_19:

  return v20;
}

void __118__TRIInternalAgentToSystemServiceRequestHandler__getOnDemandReferenceCountsAtGlobalPath_onDemandFactorsPerUser_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [a3 mutableCopy];
  [v4 setValue:v6 forKey:v5];
}

- (BOOL)_updateOnDemandReferenceCountsForUser:(id)user atGlobalPath:(id)path addingFactors:(id)factors removingFactors:(id)removingFactors newlyUnreferencedFactors:(id *)unreferencedFactors
{
  v80 = *MEMORY[0x277D85DE8];
  userCopy = user;
  pathCopy = path;
  factorsCopy = factors;
  removingFactorsCopy = removingFactors;
  v60 = [pathCopy stringByAppendingPathComponent:@"onDemandFactorsSubscribedUserMap.plplist"];
  v16 = objc_opt_new();
  v71 = v16;
  LOBYTE(factors) = [(TRIInternalAgentToSystemServiceRequestHandler *)self _getOnDemandReferenceCountsAtGlobalPath:pathCopy onDemandFactorsPerUser:&v71 error:0];
  v17 = v71;

  if (factors)
  {
    unreferencedFactorsCopy = unreferencedFactors;
    v57 = factorsCopy;
    v58 = pathCopy;
    v59 = removingFactorsCopy;
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v18 = factorsCopy;
    v19 = [v18 countByEnumeratingWithState:&v67 objects:v79 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v68;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v68 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v67 + 1) + 8 * i);
          v24 = [v17 objectForKeyedSubscript:{v23, unreferencedFactorsCopy}];
          if (v24)
          {
            [v17 setObject:v24 forKeyedSubscript:v23];
          }

          else
          {
            v25 = objc_opt_new();
            [v17 setObject:v25 forKeyedSubscript:v23];
          }

          v26 = [v17 objectForKeyedSubscript:v23];
          v27 = [v26 containsObject:userCopy];

          if ((v27 & 1) == 0)
          {
            v28 = [v17 objectForKeyedSubscript:v23];
            [v28 addObject:userCopy];
          }
        }

        v20 = [v18 countByEnumeratingWithState:&v67 objects:v79 count:16];
      }

      while (v20);
    }

    log = objc_opt_new();
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v29 = v59;
    v30 = [v29 countByEnumeratingWithState:&v63 objects:v78 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v64;
      do
      {
        for (j = 0; j != v31; ++j)
        {
          if (*v64 != v32)
          {
            objc_enumerationMutation(v29);
          }

          v34 = *(*(&v63 + 1) + 8 * j);
          v35 = [v17 objectForKeyedSubscript:{v34, unreferencedFactorsCopy}];

          if (v35)
          {
            v36 = [v17 objectForKeyedSubscript:v34];
            [v36 removeObject:userCopy];

            v37 = [v17 objectForKeyedSubscript:v34];
            v38 = [v37 count];

            if (v38)
            {
              continue;
            }

            [v17 removeObjectForKey:v34];
            [log addObject:v34];
            v39 = TRILogCategory_Server();
            if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v73 = v34;
              v40 = v39;
              v41 = "Factor %@ is now unreferenced by all users.";
LABEL_25:
              _os_log_impl(&dword_26F567000, v40, OS_LOG_TYPE_DEFAULT, v41, buf, 0xCu);
            }
          }

          else
          {
            v39 = TRILogCategory_Server();
            if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v73 = v34;
              v40 = v39;
              v41 = "Attempting to remove factor %@ that was not referenced.";
              goto LABEL_25;
            }
          }
        }

        v31 = [v29 countByEnumeratingWithState:&v63 objects:v78 count:16];
      }

      while (v31);
    }

    v62 = 0;
    v42 = v60;
    v43 = [MEMORY[0x277D425D8] fileBackedDataWithPropertyList:v17 writtenToPath:v60 error:&v62];
    v44 = v62;
    v45 = v44;
    if (v43)
    {
      v46 = v44 == 0;
    }

    else
    {
      v46 = 0;
    }

    v47 = v46;
    v48 = TRILogCategory_Server();
    v49 = v48;
    if (v47)
    {
      pathCopy = v58;
      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
      {
        v50 = [v18 count];
        v51 = [v29 count];
        v52 = [log count];
        *buf = 134218496;
        v73 = v50;
        v42 = v60;
        v74 = 2048;
        v75 = v51;
        v76 = 2048;
        v77 = v52;
        _os_log_impl(&dword_26F567000, v49, OS_LOG_TYPE_DEFAULT, "Successfully referenced %lu assets and unreferenced %lu assets for current user. %lu assets are to be deleted as they are not referenced by any users.", buf, 0x20u);
      }

      factorsCopy = v57;
      removingFactorsCopy = v59;
      if (!unreferencedFactorsCopy)
      {
        goto LABEL_47;
      }

      v53 = [objc_alloc(MEMORY[0x277CBEB98]) initWithSet:log];
      v49 = *unreferencedFactorsCopy;
      *unreferencedFactorsCopy = v53;
    }

    else
    {
      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        localizedDescription = [v45 localizedDescription];
        *buf = 138543362;
        v73 = localizedDescription;
        _os_log_error_impl(&dword_26F567000, v49, OS_LOG_TYPE_ERROR, "Failed to write users per factor file to temp path with error: %{public}@", buf, 0xCu);

        v42 = v60;
      }

      factorsCopy = v57;
      pathCopy = v58;
      removingFactorsCopy = v59;
    }

LABEL_47:
    goto LABEL_48;
  }

  log = TRILogCategory_Server();
  if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_26F567000, log, OS_LOG_TYPE_ERROR, "Could not update on demand reference counts since the existing data could not be read", buf, 2u);
  }

  v47 = 0;
  v42 = v60;
LABEL_48:

  return v47;
}

- (void)getOnDemandReferenceCountsPerUserAtGlobalPath:(id)path completion:(id)completion
{
  v38[1] = *MEMORY[0x277D85DE8];
  pathCopy = path;
  completionCopy = completion;
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __106__TRIInternalAgentToSystemServiceRequestHandler_getOnDemandReferenceCountsPerUserAtGlobalPath_completion___block_invoke;
  v33[3] = &unk_279DE0208;
  v33[4] = self;
  v8 = pathCopy;
  v34 = v8;
  v9 = MEMORY[0x2743948D0](v33);
  v9[2](v9, 0);
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __106__TRIInternalAgentToSystemServiceRequestHandler_getOnDemandReferenceCountsPerUserAtGlobalPath_completion___block_invoke_70;
  v31[3] = &unk_279DE0398;
  v10 = v9;
  v32 = v10;
  v11 = MEMORY[0x2743948D0](v31);
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__8;
  v29 = __Block_byref_object_dispose__8;
  v30 = 0;
  v12 = [MEMORY[0x277D73728] arrayFromDirectory:v8];
  if (v12)
  {
    v13 = objc_opt_new();
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __106__TRIInternalAgentToSystemServiceRequestHandler_getOnDemandReferenceCountsPerUserAtGlobalPath_completion___block_invoke_77;
    v21[3] = &unk_279DE04B0;
    v24 = &v25;
    v14 = completionCopy;
    v23 = v14;
    v21[4] = self;
    v15 = v13;
    v22 = v15;
    if (([v12 enumerateStringsWithBlock:v21] & 1) == 0)
    {
      v16 = TRILogCategory_Server();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v36 = v8;
        _os_log_error_impl(&dword_26F567000, v16, OS_LOG_TYPE_ERROR, "Could not iterate through namespaces in %@", buf, 0xCu);
      }
    }

    (*(v14 + 2))(v14, v15, v26[5]);
  }

  else
  {
    v17 = objc_alloc(MEMORY[0x277CCA9B8]);
    v37 = *MEMORY[0x277CCA450];
    v38[0] = @"Unable to iterate through the list of namespaces";
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:&v37 count:1];
    v19 = [v17 initWithDomain:@"TRIGeneralErrorDomain" code:12 userInfo:v18];
    v20 = v26[5];
    v26[5] = v19;

    (*(completionCopy + 2))(completionCopy, 0, v26[5]);
  }

  _Block_object_dispose(&v25, 8);
  if (v11)
  {
    v11[2](v11);
  }
}

void __106__TRIInternalAgentToSystemServiceRequestHandler_getOnDemandReferenceCountsPerUserAtGlobalPath_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = TRILogCategory_Server();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = v6;
    v8 = "end";
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11 = 138544130;
    if (!a2)
    {
      v8 = "begin";
    }

    v12 = v6;
    v13 = 2048;
    v14 = v9;
    v15 = 2080;
    v16 = v8;
    v17 = 2112;
    v18 = v10;
    _os_log_impl(&dword_26F567000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ %p: %s getOnDemandReferenceCountsPerUserAtGlobalPath:%@", &v11, 0x2Au);
  }
}

void __106__TRIInternalAgentToSystemServiceRequestHandler_getOnDemandReferenceCountsPerUserAtGlobalPath_completion___block_invoke_77(uint64_t a1, void *a2)
{
  v31[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 lastPathComponent];
  v5 = objc_autoreleasePoolPush();
  v6 = [v3 stringByAppendingPathComponent:@"factorPacks"];
  objc_autoreleasePoolPop(v5);
  v7 = [MEMORY[0x277D73728] arrayFromDirectory:v6];
  if (v7)
  {
    v8 = objc_opt_new();
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __106__TRIInternalAgentToSystemServiceRequestHandler_getOnDemandReferenceCountsPerUserAtGlobalPath_completion___block_invoke_2;
    v23[3] = &unk_279DE04B0;
    v23[4] = *(a1 + 32);
    v22 = *(a1 + 48);
    v9 = v22;
    v25 = v22;
    v10 = v8;
    v24 = v10;
    if ([v7 enumerateStringsWithBlock:v23])
    {
      [*(a1 + 40) setValue:v10 forKey:v4];
    }

    else
    {
      v16 = TRILogCategory_Server();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v29 = v4;
        _os_log_error_impl(&dword_26F567000, v16, OS_LOG_TYPE_ERROR, "Could not iterate through factor packs for namespace %@", buf, 0xCu);
      }

      v17 = objc_alloc(MEMORY[0x277CCA9B8]);
      v26 = *MEMORY[0x277CCA450];
      v27 = @"Failed to iterate through the list of factor packs";
      v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
      v19 = [v17 initWithDomain:@"TRIGeneralErrorDomain" code:12 userInfo:v18];
      v20 = *(*(a1 + 56) + 8);
      v21 = *(v20 + 40);
      *(v20 + 40) = v19;

      (*(*(a1 + 48) + 16))();
    }
  }

  else
  {
    v11 = objc_alloc(MEMORY[0x277CCA9B8]);
    v30 = *MEMORY[0x277CCA450];
    v31[0] = @"Unable to iterate through the list of factor packs";
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:&v30 count:1];
    v13 = [v11 initWithDomain:@"TRIGeneralErrorDomain" code:12 userInfo:v12];
    v14 = *(*(a1 + 56) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;

    (*(*(a1 + 48) + 16))();
  }
}

void __106__TRIInternalAgentToSystemServiceRequestHandler_getOnDemandReferenceCountsPerUserAtGlobalPath_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 lastPathComponent];
  v5 = objc_opt_new();
  v6 = *(a1 + 32);
  v7 = *(*(a1 + 56) + 8);
  obj = *(v7 + 40);
  v12 = v5;
  v8 = [v6 _getOnDemandReferenceCountsAtGlobalPath:v3 onDemandFactorsPerUser:&v12 error:&obj];
  v9 = v12;

  objc_storeStrong((v7 + 40), obj);
  if (v8)
  {
    [*(a1 + 40) setValue:v9 forKey:v4];
  }

  else
  {
    v10 = TRILogCategory_Server();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v14 = v3;
      _os_log_error_impl(&dword_26F567000, v10, OS_LOG_TYPE_ERROR, "Could not get onDemandReferenceCounts for %@", buf, 0xCu);
    }

    (*(*(a1 + 48) + 16))();
  }
}

- (void)migrateToGlobalAssetStoreIfNeededFromLocalStore:(id)store sourceExtension:(id)extension completion:(id)completion
{
  storeCopy = store;
  extensionCopy = extension;
  completionCopy = completion;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __124__TRIInternalAgentToSystemServiceRequestHandler_migrateToGlobalAssetStoreIfNeededFromLocalStore_sourceExtension_completion___block_invoke;
  v19[3] = &unk_279DE0208;
  v19[4] = self;
  v11 = storeCopy;
  v20 = v11;
  v12 = MEMORY[0x2743948D0](v19);
  v12[2](v12, 0);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __124__TRIInternalAgentToSystemServiceRequestHandler_migrateToGlobalAssetStoreIfNeededFromLocalStore_sourceExtension_completion___block_invoke_88;
  v17[3] = &unk_279DE0398;
  v13 = v12;
  v18 = v13;
  v14 = MEMORY[0x2743948D0](v17);
  [extensionCopy UTF8String];
  if (sandbox_extension_consume() == -1)
  {
    v15 = TRILogCategory_Server();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *v16 = 0;
      _os_log_error_impl(&dword_26F567000, v15, OS_LOG_TYPE_ERROR, "failed to consume a sandbox extension", v16, 2u);
    }

    completionCopy[2](completionCopy, 0);
  }

  else
  {
    (completionCopy)[2](completionCopy, [(TRIAssetStoreOperator *)self->_operator migrateToGlobalAssetStoreFromLocalAssetStore:v11]);
    sandbox_extension_release();
  }

  if (v14)
  {
    v14[2](v14);
  }
}

void __124__TRIInternalAgentToSystemServiceRequestHandler_migrateToGlobalAssetStoreIfNeededFromLocalStore_sourceExtension_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = TRILogCategory_Server();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = v6;
    v8 = "end";
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11 = 138544130;
    if (!a2)
    {
      v8 = "begin";
    }

    v12 = v6;
    v13 = 2048;
    v14 = v9;
    v15 = 2080;
    v16 = v8;
    v17 = 2112;
    v18 = v10;
    _os_log_impl(&dword_26F567000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ %p: %s migrateToGlobalAssetStoreIfNeededFromLocalStore:%@", &v11, 0x2Au);
  }
}

- (void)logSystemCovariates
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = [TRISystemCovariates alloc];
  mEMORY[0x277D737E0] = [MEMORY[0x277D737E0] sharedPaths];
  v4 = [(TRISystemCovariates *)v2 initWithPaths:mEMORY[0x277D737E0]];

  v5 = TRILogCategory_Backtrace();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    dictionary = [(TRISystemCovariates *)v4 dictionary];
    v7 = 138412290;
    v8 = dictionary;
    _os_log_impl(&dword_26F567000, v5, OS_LOG_TYPE_DEFAULT, "System covariates at the time of sysdiagnose: %@", &v7, 0xCu);
  }
}

@end