@interface TRIPurgeableOnDemandFactorsEnumerator
- (TRIPurgeableOnDemandFactorsEnumerator)initWithPaths:(id)paths namespaceResolver:(id)resolver;
- (void)_enumerateExperimentOnDemandFactorsWithNamespaceName:(id)name block:(id)block;
- (void)_enumerateRolloutOnDemandFactorsWithNamespaceName:(id)name block:(id)block;
- (void)_filterOndemandAssetsForFactorLevels:(id)levels forFactorPackId:(id)id treatmentId:(id)treatmentId block:(id)block;
- (void)enumerateExperimentOnDemandFactorsPurgeCandidatesFromNamespaceNames:(id)names purgeableFactorFilterBlock:(id)block block:(id)a5;
- (void)enumerateRolloutOnDemandFactorsPurgeCandidatesFromNamespaceNames:(id)names purgeableFactorFilterBlock:(id)block block:(id)a5;
@end

@implementation TRIPurgeableOnDemandFactorsEnumerator

- (TRIPurgeableOnDemandFactorsEnumerator)initWithPaths:(id)paths namespaceResolver:(id)resolver
{
  pathsCopy = paths;
  resolverCopy = resolver;
  v12.receiver = self;
  v12.super_class = TRIPurgeableOnDemandFactorsEnumerator;
  v9 = [(TRIPurgeableOnDemandFactorsEnumerator *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_paths, paths);
    objc_storeStrong(&v10->_namespaceResolver, resolver);
  }

  return v10;
}

- (void)enumerateRolloutOnDemandFactorsPurgeCandidatesFromNamespaceNames:(id)names purgeableFactorFilterBlock:(id)block block:(id)a5
{
  v46 = *MEMORY[0x277D85DE8];
  namesCopy = names;
  blockCopy = block;
  v22 = a5;
  v26 = objc_opt_new();
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = namesCopy;
  v9 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
  if (v9)
  {
    v23 = *v42;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v42 != v23)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(*(&v41 + 1) + 8 * v10);
      v12 = objc_autoreleasePoolPush();
      v13 = objc_opt_new();
      v35 = 0;
      v36 = &v35;
      v37 = 0x3032000000;
      v38 = __Block_byref_object_copy__5;
      v39 = __Block_byref_object_dispose__5;
      v40 = 0;
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __139__TRIPurgeableOnDemandFactorsEnumerator_enumerateRolloutOnDemandFactorsPurgeCandidatesFromNamespaceNames_purgeableFactorFilterBlock_block___block_invoke;
      v28[3] = &unk_279DDFFB8;
      v32 = blockCopy;
      v33 = &v35;
      v28[4] = v11;
      v14 = v13;
      v29 = v14;
      v15 = v26;
      v34 = a2;
      v30 = v15;
      selfCopy = self;
      v16 = MEMORY[0x2743948D0](v28);
      [(TRIPurgeableOnDemandFactorsEnumerator *)self _enumerateRolloutOnDemandFactorsWithNamespaceName:v11 block:v16];
      v20 = 1;
      if (v36[5])
      {
        v27 = 0;
        v17 = [TRIPurgeableConstruct alloc];
        v18 = [(TRIPurgeableConstruct *)v17 initWithFactorPackId:v36[5] treatmentId:0 namespaceName:v11 purgeableAssetFactorNames:v14];
        v22[2](v22, v18, v15, &v27);
        v19 = v27;

        if (v19)
        {
          v20 = 0;
        }
      }

      _Block_object_dispose(&v35, 8);
      objc_autoreleasePoolPop(v12);
      if (!v20)
      {
        break;
      }

      if (v9 == ++v10)
      {
        v9 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

void __139__TRIPurgeableOnDemandFactorsEnumerator_enumerateRolloutOnDemandFactorsPurgeCandidatesFromNamespaceNames_purgeableFactorFilterBlock_block___block_invoke(uint64_t a1, void *a2)
{
  v42 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  v5 = *(a1 + 64);
  if (!v5 || ([v3 factorName], v6 = objc_claimAutoreleasedReturnValue(), v7 = (*(v5 + 16))(v5, v6, *(a1 + 32)), v6, v7))
  {
    v8 = *(*(a1 + 72) + 8);
    v9 = *(v8 + 40);
    if (v9)
    {
      v10 = v9;
      v11 = *(v8 + 40);
      *(v8 + 40) = v10;
    }

    else
    {
      v12 = [v4 factorPackId];
      v13 = *(*(a1 + 72) + 8);
      v11 = *(v13 + 40);
      *(v13 + 40) = v12;
    }

    v14 = [v4 filePath];
    if (v14)
    {
      v15 = *(a1 + 40);
      v16 = [v4 factorName];
      [v15 addObject:v16];

      v17 = [v4 assetId];
      v18 = [*(a1 + 48) objectForKeyedSubscript:v17];
      if (v18)
      {
        [*(a1 + 48) setObject:v18 forKeyedSubscript:v17];
      }

      else
      {
        v19 = objc_opt_new();
        [*(a1 + 48) setObject:v19 forKeyedSubscript:v17];
      }

      v20 = [*(a1 + 48) objectForKeyedSubscript:v17];
      [v20 addObject:v14];

      if (!*(*(*(a1 + 72) + 8) + 40))
      {
        v34 = [MEMORY[0x277CCA890] currentHandler];
        [v34 handleFailureInMethod:*(a1 + 80) object:*(a1 + 56) file:@"TRIPurgeableOnDemandFactorsEnumerator.m" lineNumber:62 description:@"Expected a valid factorPackId."];
      }

      v21 = [[TRIFactorPackStorage alloc] initWithPaths:*(*(a1 + 56) + 8)];
      v22 = [(TRIFactorPackStorage *)v21 legacyPathForFactorPackWithId:*(*(*(a1 + 72) + 8) + 40) namespaceName:*(a1 + 32)];
      if (v22)
      {
        v23 = v22;
        if (_os_feature_enabled_impl())
        {
          v24 = [[TRIFBFactorPackStorage alloc] initWithPaths:*(*(a1 + 56) + 8)];
          v25 = [(TRIFBFactorPackStorage *)v24 legacyPathForFactorLevelsWithFactorPackId:*(*(*(a1 + 72) + 8) + 40) namespaceName:*(a1 + 32)];
          if ([v25 isEqualToString:v23])
          {
            if (_os_feature_enabled_impl())
            {
              v26 = v25;

              v23 = v26;
            }
          }

          else
          {
            v27 = TRILogCategory_Server();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
            {
              v33 = *(*(*(a1 + 72) + 8) + 40);
              *buf = 138543874;
              v37 = v25;
              v38 = 2114;
              v39 = v23;
              v40 = 2114;
              v41 = v33;
              _os_log_error_impl(&dword_26F567000, v27, OS_LOG_TYPE_ERROR, "Legacy path from flatbuffers: %{public}@ does not match path from protobuf: %{public}@ for factor pack id: %{public}@", buf, 0x20u);
            }
          }
        }

        v28 = [v14 lastPathComponent];
        v29 = MEMORY[0x277CCACA8];
        v35[0] = v23;
        v35[1] = @"assets";
        v35[2] = v28;
        v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:3];
        v31 = [v29 pathWithComponents:v30];

        v32 = [*(a1 + 48) objectForKeyedSubscript:v17];
        [v32 addObject:v31];
      }
    }
  }
}

- (void)enumerateExperimentOnDemandFactorsPurgeCandidatesFromNamespaceNames:(id)names purgeableFactorFilterBlock:(id)block block:(id)a5
{
  v51 = *MEMORY[0x277D85DE8];
  namesCopy = names;
  blockCopy = block;
  v21 = a5;
  v24 = objc_opt_new();
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  obj = namesCopy;
  v25 = [obj countByEnumeratingWithState:&v46 objects:v50 count:16];
  if (v25)
  {
    v22 = *v47;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v47 != v22)
      {
        objc_enumerationMutation(obj);
      }

      v19 = 1;
      v10 = *(*(&v46 + 1) + 8 * v9);
      v11 = objc_autoreleasePoolPush();
      v12 = objc_opt_new();
      v40 = 0;
      v41 = &v40;
      v42 = 0x3032000000;
      v43 = __Block_byref_object_copy__5;
      v44 = __Block_byref_object_dispose__5;
      v45 = 0;
      v34 = 0;
      v35 = &v34;
      v36 = 0x3032000000;
      v37 = __Block_byref_object_copy__5;
      v38 = __Block_byref_object_dispose__5;
      v39 = 0;
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __142__TRIPurgeableOnDemandFactorsEnumerator_enumerateExperimentOnDemandFactorsPurgeCandidatesFromNamespaceNames_purgeableFactorFilterBlock_block___block_invoke;
      v27[3] = &unk_279DDFFE0;
      v31 = blockCopy;
      v32 = &v40;
      v27[4] = v10;
      v33 = &v34;
      v13 = v12;
      v28 = v13;
      v14 = v24;
      v29 = v14;
      selfCopy = self;
      v15 = MEMORY[0x2743948D0](v27);
      [(TRIPurgeableOnDemandFactorsEnumerator *)self _enumerateExperimentOnDemandFactorsWithNamespaceName:v10 block:v15];
      if (v41[5] || v35[5])
      {
        v26 = 0;
        v16 = [TRIPurgeableConstruct alloc];
        v17 = [(TRIPurgeableConstruct *)v16 initWithFactorPackId:v41[5] treatmentId:v35[5] namespaceName:v10 purgeableAssetFactorNames:v13];
        v21[2](v21, v17, v14, &v26);
        v18 = v26;

        if (v18)
        {
          v19 = 0;
        }
      }

      _Block_object_dispose(&v34, 8);
      _Block_object_dispose(&v40, 8);

      objc_autoreleasePoolPop(v11);
      if (!v19)
      {
        break;
      }

      if (v25 == ++v9)
      {
        v25 = [obj countByEnumeratingWithState:&v46 objects:v50 count:16];
        if (v25)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

void __142__TRIPurgeableOnDemandFactorsEnumerator_enumerateExperimentOnDemandFactorsPurgeCandidatesFromNamespaceNames_purgeableFactorFilterBlock_block___block_invoke(uint64_t a1, void *a2)
{
  v49 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  v5 = *(a1 + 64);
  if (!v5 || ([v3 factorName], v6 = objc_claimAutoreleasedReturnValue(), v7 = (*(v5 + 16))(v5, v6, *(a1 + 32)), v6, v7))
  {
    v8 = *(*(a1 + 72) + 8);
    v9 = *(v8 + 40);
    if (v9)
    {
      v10 = v9;
      v11 = *(v8 + 40);
      *(v8 + 40) = v10;
    }

    else
    {
      v12 = [v4 factorPackId];
      v13 = *(*(a1 + 72) + 8);
      v11 = *(v13 + 40);
      *(v13 + 40) = v12;
    }

    v14 = *(*(a1 + 80) + 8);
    v15 = *(v14 + 40);
    if (v15)
    {
      v16 = v15;
      v17 = *(v14 + 40);
      *(v14 + 40) = v16;
    }

    else
    {
      v18 = [v4 treatmentId];
      v19 = *(*(a1 + 80) + 8);
      v17 = *(v19 + 40);
      *(v19 + 40) = v18;
    }

    v20 = [v4 filePath];
    if (v20)
    {
      v21 = *(a1 + 40);
      v22 = [v4 factorName];
      [v21 addObject:v22];

      v23 = [v4 assetId];
      v24 = [*(a1 + 48) objectForKeyedSubscript:v23];
      if (v24)
      {
        [*(a1 + 48) setObject:v24 forKeyedSubscript:v23];
      }

      else
      {
        v25 = objc_opt_new();
        [*(a1 + 48) setObject:v25 forKeyedSubscript:v23];
      }

      v26 = [*(a1 + 48) objectForKeyedSubscript:v23];
      [v26 addObject:v20];

      v27 = [v4 factorPackId];

      if (v27)
      {
        v28 = [[TRIFactorPackStorage alloc] initWithPaths:*(*(a1 + 56) + 8)];
        v29 = [v4 factorPackId];
        v30 = [(TRIFactorPackStorage *)v28 legacyPathForFactorPackWithId:v29 namespaceName:*(a1 + 32)];

        if (v30)
        {
          if (_os_feature_enabled_impl())
          {
            v31 = [[TRIFBFactorPackStorage alloc] initWithPaths:*(*(a1 + 56) + 8)];
            v32 = [v4 factorPackId];
            v33 = [(TRIFBFactorPackStorage *)v31 legacyPathForFactorLevelsWithFactorPackId:v32 namespaceName:*(a1 + 32)];

            if ([v33 isEqualToString:v30])
            {
              if (_os_feature_enabled_impl())
              {
                v34 = v33;

                v30 = v34;
              }
            }

            else
            {
              v35 = TRILogCategory_Server();
              if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
              {
                v41 = *(*(*(a1 + 72) + 8) + 40);
                *buf = 138543874;
                v44 = v33;
                v45 = 2114;
                v46 = v30;
                v47 = 2114;
                v48 = v41;
                _os_log_error_impl(&dword_26F567000, v35, OS_LOG_TYPE_ERROR, "Legacy path from flatbuffers: %{public}@ does not match path from protobuf: %{public}@ for factor pack id: %{public}@", buf, 0x20u);
              }
            }
          }

          v36 = [v20 lastPathComponent];
          v37 = MEMORY[0x277CCACA8];
          v42[0] = v30;
          v42[1] = @"assets";
          v42[2] = v36;
          v38 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:3];
          v39 = [v37 pathWithComponents:v38];

          v40 = [*(a1 + 48) objectForKeyedSubscript:v23];
          [v40 addObject:v39];
        }
      }
    }
  }
}

- (void)_enumerateRolloutOnDemandFactorsWithNamespaceName:(id)name block:(id)block
{
  v25 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  blockCopy = block;
  v8 = objc_autoreleasePoolPush();
  v9 = [MEMORY[0x277D73760] factorProviderWithPaths:self->_paths namespaceName:nameCopy resolver:self->_namespaceResolver faultOnMissingInstalledFactors:0];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __97__TRIPurgeableOnDemandFactorsEnumerator__enumerateRolloutOnDemandFactorsWithNamespaceName_block___block_invoke;
  v19[3] = &unk_279DDEEE0;
  v10 = v9;
  v20 = v10;
  v11 = MEMORY[0x2743948D0](v19);
  if ([v10 hasAnyTreatmentInLayers:2])
  {
    v12 = [v10 providerForTreatmentLayer:2];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = v12;
      factorPackId = [v18 factorPackId];
      if (factorPackId && ([v18 factorPackId], v14 = objc_claimAutoreleasedReturnValue(), TRIValidateFactorPackId(), v15 = objc_claimAutoreleasedReturnValue(), v14, factorPackId, v15))
      {
        factorLevels = [v18 factorLevels];
        [(TRIPurgeableOnDemandFactorsEnumerator *)self _filterOndemandAssetsForFactorLevels:factorLevels forFactorPackId:v15 treatmentId:0 block:blockCopy];
      }

      else
      {
        v15 = TRILogCategory_Server();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          rolloutId = [v18 rolloutId];
          *buf = 138543618;
          v22 = nameCopy;
          v23 = 2114;
          v24 = rolloutId;
          _os_log_error_impl(&dword_26F567000, v15, OS_LOG_TYPE_ERROR, "Found invalid factor pack ID for namespace %{public}@ from rollout provider with rolloutId %{public}@", buf, 0x16u);
        }
      }
    }
  }

  if (v11)
  {
    v11[2](v11);
  }

  objc_autoreleasePoolPop(v8);
}

- (void)_enumerateExperimentOnDemandFactorsWithNamespaceName:(id)name block:(id)block
{
  v29 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  blockCopy = block;
  context = objc_autoreleasePoolPush();
  v8 = [MEMORY[0x277D73760] factorProviderWithPaths:self->_paths namespaceName:nameCopy resolver:self->_namespaceResolver faultOnMissingInstalledFactors:0];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __100__TRIPurgeableOnDemandFactorsEnumerator__enumerateExperimentOnDemandFactorsWithNamespaceName_block___block_invoke;
  v23[3] = &unk_279DDEEE0;
  v9 = v8;
  v24 = v9;
  v10 = MEMORY[0x2743948D0](v23);
  if ([v9 hasAnyTreatmentInLayers:32])
  {
    v11 = [v9 providerForTreatmentLayer:32];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
      factorPackId = [v12 factorPackId];
      if (factorPackId && ([v12 factorPackId], v14 = objc_claimAutoreleasedReturnValue(), TRIValidateFactorPackId(), v15 = objc_claimAutoreleasedReturnValue(), v14, factorPackId, v15))
      {
        factorLevels = [v12 factorLevels];
        [(TRIPurgeableOnDemandFactorsEnumerator *)self _filterOndemandAssetsForFactorLevels:factorLevels forFactorPackId:v15 treatmentId:0 block:blockCopy];
      }

      else
      {
        v15 = TRILogCategory_Server();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          experimentId = [v12 experimentId];
          *buf = 138543618;
          v26 = nameCopy;
          v27 = 2114;
          v28 = experimentId;
          _os_log_error_impl(&dword_26F567000, v15, OS_LOG_TYPE_ERROR, "Found invalid treatmentID or factorPackId for namespace %{public}@ from experiment provider with experiment %{public}@", buf, 0x16u);
        }
      }
    }
  }

  if ([v9 hasAnyTreatmentInLayers:4])
  {
    v17 = [v9 providerForTreatmentLayer:4];
    treatmentId = [v17 treatmentId];
    if (treatmentId)
    {
      factorLevels2 = [v17 factorLevels];
      [(TRIPurgeableOnDemandFactorsEnumerator *)self _filterOndemandAssetsForFactorLevels:factorLevels2 forFactorPackId:0 treatmentId:treatmentId block:blockCopy];
    }

    else
    {
      factorLevels2 = TRILogCategory_Server();
      if (os_log_type_enabled(factorLevels2, OS_LOG_TYPE_ERROR))
      {
        experimentId2 = [v17 experimentId];
        *buf = 138543618;
        v26 = nameCopy;
        v27 = 2114;
        v28 = experimentId2;
        _os_log_error_impl(&dword_26F567000, factorLevels2, OS_LOG_TYPE_ERROR, "Found invalid treatmentID for namespace %{public}@ from experiment provider with experiment %{public}@", buf, 0x16u);
      }
    }
  }

  if (v10)
  {
    v10[2](v10);
  }

  objc_autoreleasePoolPop(context);
}

- (void)_filterOndemandAssetsForFactorLevels:(id)levels forFactorPackId:(id)id treatmentId:(id)treatmentId block:(id)block
{
  v39 = *MEMORY[0x277D85DE8];
  levelsCopy = levels;
  idCopy = id;
  treatmentIdCopy = treatmentId;
  blockCopy = block;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v10 = [levelsCopy countByEnumeratingWithState:&v32 objects:v38 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v33;
    v28 = (blockCopy + 2);
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v33 != v12)
        {
          objc_enumerationMutation(levelsCopy);
        }

        v14 = *(*(&v32 + 1) + 8 * i);
        factor = [v14 factor];
        name = [factor name];

        if (name)
        {
          level = [v14 level];
          v18 = [level fileOrDirectoryLevelWithIsDir:0];
          v19 = v18;
          if (v18)
          {
            if ([v18 isOnDemand])
            {
              path = [v19 path];
              v21 = [path length];

              if (v21)
              {
                asset = [v19 asset];
                assetId = [asset assetId];
                v24 = TRIValidateAssetId();

                if (v24)
                {
                  v25 = [TRIPurgeableAsset alloc];
                  path2 = [v19 path];
                  v27 = [(TRIPurgeableAsset *)v25 initWithFactorName:name assetId:v24 filePath:path2 factorPackId:idCopy treatmentId:treatmentIdCopy];

                  blockCopy[2](blockCopy, v27);
                }

                else
                {
                  v27 = TRILogCategory_Server();
                  if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138543362;
                    v37 = v19;
                    _os_log_error_impl(&dword_26F567000, v27, OS_LOG_TYPE_ERROR, "Invalid asset id for fileLevel %{public}@", buf, 0xCu);
                  }
                }
              }
            }
          }
        }

        else
        {
          level = TRILogCategory_Server();
          if (os_log_type_enabled(level, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v37 = v14;
            _os_log_impl(&dword_26F567000, level, OS_LOG_TYPE_DEFAULT, "Got nil factorName for factorLevel %{public}@", buf, 0xCu);
          }
        }
      }

      v11 = [levelsCopy countByEnumeratingWithState:&v32 objects:v38 count:16];
    }

    while (v11);
  }
}

@end