@interface TRINamespaceFactorProviderChain
+ (id)factorProviderWithPaths:(id)paths namespaceName:(id)name;
+ (id)factorProviderWithPaths:(id)paths namespaceName:(id)name excludingTreatmentLayers:(unint64_t)layers;
+ (id)factorProviderWithPaths:(id)paths namespaceName:(id)name resolver:(id)resolver faultOnMissingInstalledFactors:(BOOL)factors;
- (BOOL)hasAnyTreatmentInLayers:(unint64_t)layers;
- (TRINamespaceFactorProviderChain)initWithNamespaceName:(id)name typedProviderChain:(id)chain paths:(id)paths excludingTreatmentLayers:(unint64_t)layers;
- (id)_dealiasedFactorLevelForFactorLevel:(id)level unaliasedName:(id)name;
- (id)experimentId;
- (id)factorLevels;
- (id)factorNamesWithObfuscation:(id)obfuscation;
- (id)levelForFactor:(id)factor outProvider:(id *)provider;
- (id)promotableFactorPackId;
- (id)providerForTreatmentLayer:(unint64_t)layer;
- (id)treatmentId;
- (int)deploymentId;
- (unsigned)namespaceCompatibilityVersion;
- (unsigned)namespaceId;
- (void)cacheFactorLevels;
- (void)computeTreatmentAssetIndexes:(id *)indexes withAssociatedExperimentIds:(id *)ids andFactorPackAssetIds:(id *)assetIds withAssociatedRolloutDeployments:(id *)deployments withExperimentFactorNames:(id *)names andRolloutFactorNames:(id *)factorNames forFactors:(id)factors usingFilter:(id)self0;
- (void)dispose;
@end

@implementation TRINamespaceFactorProviderChain

- (id)factorLevels
{
  v39 = *MEMORY[0x277D85DE8];
  context = objc_autoreleasePoolPush();
  v3 = objc_opt_new();
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = [(NSArray *)self->_providerChain reverseObjectEnumerator];
  v26 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v26)
  {
    v25 = *v34;
    do
    {
      v4 = 0;
      do
      {
        if (*v34 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v27 = v4;
        v5 = *(*(&v33 + 1) + 8 * v4);
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        factorLevels = [v5 factorLevels];
        v6 = [factorLevels countByEnumeratingWithState:&v29 objects:v37 count:16];
        if (v6)
        {
          v7 = v6;
          v8 = *v30;
          do
          {
            for (i = 0; i != v7; ++i)
            {
              if (*v30 != v8)
              {
                objc_enumerationMutation(factorLevels);
              }

              v10 = *(*(&v29 + 1) + 8 * i);
              v11 = objc_autoreleasePoolPush();
              v12 = v10;
              aliasMap = self->_aliasMap;
              factor = [v12 factor];
              name = [factor name];
              v16 = [(NSDictionary *)aliasMap allKeysForObject:name];

              if (v16 && [v16 count] == 1)
              {
                v17 = [v16 objectAtIndexedSubscript:0];
                v18 = [(TRINamespaceFactorProviderChain *)self _dealiasedFactorLevelForFactorLevel:v12 unaliasedName:v17];

                v12 = v18;
              }

              factor2 = [v12 factor];
              name2 = [factor2 name];
              [v3 setObject:v12 forKeyedSubscript:name2];

              objc_autoreleasePoolPop(v11);
            }

            v7 = [factorLevels countByEnumeratingWithState:&v29 objects:v37 count:16];
          }

          while (v7);
        }

        v4 = v27 + 1;
      }

      while (v27 + 1 != v26);
      v26 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v26);
  }

  allValues = [v3 allValues];

  objc_autoreleasePoolPop(context);

  return allValues;
}

- (void)dispose
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = self->_providerChain;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) dispose];
      }

      while (v4 != v6);
      v4 = [(NSArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

+ (id)factorProviderWithPaths:(id)paths namespaceName:(id)name
{
  nameCopy = name;
  pathsCopy = paths;
  v8 = [[TRINamespaceResolver alloc] initWithPaths:pathsCopy];
  v9 = [self factorProviderWithPaths:pathsCopy namespaceName:nameCopy resolver:v8 faultOnMissingInstalledFactors:0];

  return v9;
}

+ (id)factorProviderWithPaths:(id)paths namespaceName:(id)name excludingTreatmentLayers:(unint64_t)layers
{
  nameCopy = name;
  pathsCopy = paths;
  v10 = [[TRINamespaceResolver alloc] initWithPaths:pathsCopy];
  v11 = [(TRINamespaceResolver *)v10 resolveFactorProviderChainForNamespaceName:nameCopy faultOnMissingInstalledFactors:0 installedFactorsAccessible:0];
  v12 = [[self alloc] initWithNamespaceName:nameCopy typedProviderChain:v11 paths:pathsCopy excludingTreatmentLayers:layers];

  return v12;
}

+ (id)factorProviderWithPaths:(id)paths namespaceName:(id)name resolver:(id)resolver faultOnMissingInstalledFactors:(BOOL)factors
{
  factorsCopy = factors;
  nameCopy = name;
  pathsCopy = paths;
  v12 = [resolver resolveFactorProviderChainForNamespaceName:nameCopy faultOnMissingInstalledFactors:factorsCopy installedFactorsAccessible:0];
  v13 = [[self alloc] initWithNamespaceName:nameCopy typedProviderChain:v12 paths:pathsCopy];

  return v13;
}

- (TRINamespaceFactorProviderChain)initWithNamespaceName:(id)name typedProviderChain:(id)chain paths:(id)paths excludingTreatmentLayers:(unint64_t)layers
{
  v115 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  chainCopy = chain;
  pathsCopy = paths;
  if (!nameCopy)
  {
    v85 = pathsCopy;
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRINamespaceFactorProviderChain.m" lineNumber:89 description:{@"Invalid parameter not satisfying: %@", @"namespaceName"}];

    pathsCopy = v85;
  }

  v89 = pathsCopy;
  if (!pathsCopy)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"TRINamespaceFactorProviderChain.m" lineNumber:90 description:{@"Invalid parameter not satisfying: %@", @"paths"}];
  }

  v108.receiver = self;
  v108.super_class = TRINamespaceFactorProviderChain;
  v13 = [(TRINamespaceFactorProviderChain *)&v108 init];
  v14 = chainCopy;
  v91 = v13;
  if (!v13)
  {
    goto LABEL_84;
  }

  v15 = v13;
  objc_storeStrong(&v13->_namespaceName, name);
  objc_storeStrong(&v15->_paths, paths);
  v94 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(chainCopy, "count")}];
  namespaceDescriptorsDefaultDir = [v89 namespaceDescriptorsDefaultDir];
  v96 = [TRINamespaceDescriptor loadWithNamespaceName:nameCopy fromDirectory:namespaceDescriptorsDefaultDir];

  lastObject = [chainCopy lastObject];
  if (lastObject)
  {
    lastObject2 = [chainCopy lastObject];
    provider = [lastObject2 provider];
    v20 = chainCopy;
    namespaceCompatibilityVersion = [provider namespaceCompatibilityVersion];
  }

  else
  {
    v20 = chainCopy;
    namespaceCompatibilityVersion = 0;
  }

  v106 = 0u;
  v107 = 0u;
  v104 = 0u;
  v105 = 0u;
  v22 = v20;
  v23 = [v22 countByEnumeratingWithState:&v104 objects:v114 count:16];
  v88 = nameCopy;
  if (!v23)
  {

    v97 = 0;
    v14 = chainCopy;
    v50 = v91;
    p_rolloutProvider = &v91->_rolloutProvider;
    goto LABEL_46;
  }

  v24 = v23;
  v25 = *v105;
  v92 = &v91->_rolloutProvider;
  v97 = 0;
  do
  {
    for (i = 0; i != v24; ++i)
    {
      if (*v105 != v25)
      {
        objc_enumerationMutation(v22);
      }

      v27 = *(*(&v104 + 1) + 8 * i);
      provider2 = [v27 provider];
      namespaceCompatibilityVersion2 = [provider2 namespaceCompatibilityVersion];

      type = [v27 type];
      if (namespaceCompatibilityVersion2 != namespaceCompatibilityVersion)
      {
        if (type == 2 && ([v96 upgradeNCVs], v32 = objc_claimAutoreleasedReturnValue(), v33 = MEMORY[0x277CCABB0], objc_msgSend(v27, "provider"), v34 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v33, "numberWithUnsignedInteger:", objc_msgSend(v34, "namespaceCompatibilityVersion")), v35 = objc_claimAutoreleasedReturnValue(), v36 = objc_msgSend(v32, "containsObject:", v35), v35, v34, v32, v36))
        {
          v37 = TRILogCategory_ClientFramework();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
          {
            logDesc = [v27 logDesc];
            *buf = 138412290;
            v111 = logDesc;
            _os_log_impl(&dword_22EA6B000, v37, OS_LOG_TYPE_DEFAULT, "Namespace factor provider %@ is upgrade compatible. Keeping it in case there's no factor provider matching the download NCV.", buf, 0xCu);
          }

          provider5 = v97;
          v97 = v27;
        }

        else
        {
          provider5 = TRILogCategory_ClientFramework();
          if (os_log_type_enabled(provider5, OS_LOG_TYPE_DEFAULT))
          {
            logDesc2 = [v27 logDesc];
            provider3 = [v27 provider];
            namespaceCompatibilityVersion3 = [provider3 namespaceCompatibilityVersion];
            *buf = 138412802;
            v111 = logDesc2;
            v112 = 1024;
            *v113 = namespaceCompatibilityVersion;
            *&v113[4] = 1024;
            *&v113[6] = namespaceCompatibilityVersion3;
            _os_log_impl(&dword_22EA6B000, provider5, OS_LOG_TYPE_DEFAULT, "Omitting namespace factor provider %@ due to NCV incompatibility (exp %u, act %u).", buf, 0x18u);
          }
        }

        goto LABEL_34;
      }

      if (type <= 3)
      {
        if (type == 1)
        {
          p_installedProvider = &v91->_installedProvider;
        }

        else
        {
          p_installedProvider = &v91->_rolloutProvider;
          if (type != 2)
          {
            goto LABEL_32;
          }
        }
      }

      else
      {
        p_installedProvider = &v91->_experimentProvider;
        if (type != 4)
        {
          p_installedProvider = &v91->_devOverrideProvider;
          if (type != 8)
          {
            p_installedProvider = &v91->_factorPackExperimentProvider;
            if (type != 32)
            {
              goto LABEL_32;
            }
          }
        }
      }

      provider4 = [v27 provider];
      v44 = *p_installedProvider;
      *p_installedProvider = provider4;

LABEL_32:
      if (([v27 type] & layers) != 0)
      {
        continue;
      }

      provider5 = [v27 provider];
      [(NSArray *)v94 addObject:provider5];
LABEL_34:
    }

    v24 = [v22 countByEnumeratingWithState:&v104 objects:v114 count:16];
  }

  while (v24);

  p_rolloutProvider = &v91->_rolloutProvider;
  if (*v92)
  {
    nameCopy = v88;
    v14 = chainCopy;
  }

  else
  {
    nameCopy = v88;
    v14 = chainCopy;
    if (v97)
    {
      v46 = TRILogCategory_ClientFramework();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
      {
        logDesc3 = [v97 logDesc];
        *buf = 138412290;
        v111 = logDesc3;
        _os_log_impl(&dword_22EA6B000, v46, OS_LOG_TYPE_DEFAULT, "Didn't find a download-NCV compatible rollout namespace factor provider. Using upgrade-NCV compatible factor provider instead: %@.", buf, 0xCu);

        v14 = chainCopy;
      }

      provider6 = [v97 provider];
      v49 = *v92;
      *v92 = provider6;

      if ((layers & 2) == 0)
      {
        [(NSArray *)v94 insertObject:*v92 atIndex:0];
      }
    }
  }

  v50 = v91;
LABEL_46:
  if (![(NSArray *)v94 count])
  {
    v51 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
    {
      v52 = [v22 _pas_mappedArrayWithTransform:&__block_literal_global_5];
      *buf = 138412546;
      v111 = nameCopy;
      v112 = 2112;
      *v113 = v52;
      _os_log_impl(&dword_22EA6B000, v51, OS_LOG_TYPE_DEFAULT, "no factor providers loaded for namespace %@ from directories %@", buf, 0x16u);

      v14 = chainCopy;
    }

    v50 = v91;
  }

  v53 = &v50->_installedProvider;
  if (!v50->_installedProvider)
  {
    goto LABEL_71;
  }

  v93 = p_rolloutProvider;
  v98 = objc_opt_new();
  v102 = 0u;
  v103 = 0u;
  v100 = 0u;
  v101 = 0u;
  v95 = &v50->_installedProvider;
  factorLevels = [*v53 factorLevels];
  v55 = [factorLevels countByEnumeratingWithState:&v100 objects:v109 count:16];
  if (!v55)
  {
    goto LABEL_62;
  }

  v56 = v55;
  v57 = *v101;
  while (2)
  {
    v58 = 0;
    while (2)
    {
      if (*v101 != v57)
      {
        objc_enumerationMutation(factorLevels);
      }

      v59 = *(*(&v100 + 1) + 8 * v58);
      factor = [v59 factor];
      if ([factor hasAlias])
      {
        factor2 = [v59 factor];
        alias = [factor2 alias];
        v63 = [alias isEqual:&stru_28435FC98];

        if ((v63 & 1) == 0)
        {
          factor = [v59 factor];
          alias2 = [factor alias];
          factor3 = [v59 factor];
          name = [factor3 name];
          [(NSDictionary *)v98 setObject:alias2 forKeyedSubscript:name];

          goto LABEL_59;
        }
      }

      else
      {
LABEL_59:
      }

      if (v56 != ++v58)
      {
        continue;
      }

      break;
    }

    v56 = [factorLevels countByEnumeratingWithState:&v100 objects:v109 count:16];
    if (v56)
    {
      continue;
    }

    break;
  }

LABEL_62:

  allKeys = [(NSDictionary *)v98 allKeys];
  v68 = [allKeys count];
  allValues = [(NSDictionary *)v98 allValues];
  v70 = [allValues count];

  if (v68 > v70)
  {
    v71 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_22EA6B000, v71, OS_LOG_TYPE_ERROR, "Found multiple factor names sharing a common alias. Every factor name and any corresponding alias should be unique and 1-1 within a given namespace.", buf, 2u);
    }

    nameCopy = v88;
    v14 = chainCopy;
    v50 = v91;
    v53 = v95;
    goto LABEL_69;
  }

  allKeys2 = [(NSDictionary *)v98 allKeys];
  v73 = [allKeys2 count];
  allValues2 = [(NSDictionary *)v98 allValues];
  v75 = [allValues2 count];

  v76 = v73 >= v75;
  nameCopy = v88;
  v14 = chainCopy;
  v50 = v91;
  v53 = v95;
  if (!v76)
  {
    v71 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_22EA6B000, v71, OS_LOG_TYPE_ERROR, "Found multiple aliases for a given factor name. Every factor name and any corresponding alias should be unique and 1-1 within a given namespace.", buf, 2u);
    }

LABEL_69:
  }

  aliasMap = v50->_aliasMap;
  v50->_aliasMap = v98;

  p_rolloutProvider = v93;
LABEL_71:
  if ((layers & 2) != 0)
  {
    v78 = 0;
  }

  else
  {
    v78 = *p_rolloutProvider;
  }

  objc_storeStrong(p_rolloutProvider, v78);
  if ((layers & 0x20) != 0)
  {
    factorPackExperimentProvider = 0;
  }

  else
  {
    factorPackExperimentProvider = v50->_factorPackExperimentProvider;
  }

  objc_storeStrong(&v50->_factorPackExperimentProvider, factorPackExperimentProvider);
  if ((layers & 4) != 0)
  {
    experimentProvider = 0;
  }

  else
  {
    experimentProvider = v50->_experimentProvider;
  }

  objc_storeStrong(&v50->_experimentProvider, experimentProvider);
  if (layers)
  {
    v81 = 0;
  }

  else
  {
    v81 = *v53;
  }

  objc_storeStrong(v53, v81);
  providerChain = v50->_providerChain;
  v50->_providerChain = v94;
  v83 = v94;

LABEL_84:
  return v91;
}

- (id)experimentId
{
  firstObject = [(NSArray *)self->_providerChain firstObject];
  experimentId = [firstObject experimentId];

  return experimentId;
}

- (int)deploymentId
{
  firstObject = [(NSArray *)self->_providerChain firstObject];
  deploymentId = [firstObject deploymentId];

  return deploymentId;
}

- (id)treatmentId
{
  firstObject = [(NSArray *)self->_providerChain firstObject];
  treatmentId = [firstObject treatmentId];

  return treatmentId;
}

- (id)providerForTreatmentLayer:(unint64_t)layer
{
  if (layer <= 3)
  {
    if (layer == 1)
    {
      installedProvider = self->_installedProvider;
      goto LABEL_12;
    }

    if (layer == 2)
    {
      installedProvider = self->_rolloutProvider;
      goto LABEL_12;
    }
  }

  else
  {
    switch(layer)
    {
      case 4uLL:
        installedProvider = self->_experimentProvider;
        goto LABEL_12;
      case 8uLL:
        installedProvider = self->_devOverrideProvider;
        goto LABEL_12;
      case 0x20uLL:
        installedProvider = self->_factorPackExperimentProvider;
LABEL_12:
        v7 = installedProvider;
        goto LABEL_13;
    }
  }

  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"TRINamespaceFactorProviderChain.m" lineNumber:208 description:{@"Bad layer 0x%llx", layer}];

LABEL_13:

  return v7;
}

- (unsigned)namespaceCompatibilityVersion
{
  lastObject = [(NSArray *)self->_providerChain lastObject];
  namespaceCompatibilityVersion = [lastObject namespaceCompatibilityVersion];

  return namespaceCompatibilityVersion;
}

- (BOOL)hasAnyTreatmentInLayers:(unint64_t)layers
{
  if ((layers & 1) != 0 && self->_installedProvider || (layers & 2) != 0 && self->_rolloutProvider || (layers & 4) != 0 && self->_experimentProvider)
  {
    return 1;
  }

  if ((layers & 0x20) != 0)
  {
    return self->_factorPackExperimentProvider != 0;
  }

  return 0;
}

- (id)levelForFactor:(id)factor outProvider:(id *)provider
{
  v33 = *MEMORY[0x277D85DE8];
  factorCopy = factor;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v7 = self->_providerChain;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v25;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v24 + 1) + 8 * i);
        v13 = [v12 levelForFactor:{factorCopy, v24}];
        if (v13)
        {
          v20 = v13;
          if (provider)
          {
            objc_storeStrong(provider, v12);
          }

          v21 = v20;
          v16 = v21;
          goto LABEL_28;
        }

        v14 = [(NSDictionary *)self->_aliasMap objectForKeyedSubscript:factorCopy];

        if (v14)
        {
          v15 = [(NSDictionary *)self->_aliasMap objectForKeyedSubscript:factorCopy];
          v16 = [v12 levelForFactor:v15];

          if (v16)
          {
            if (provider)
            {
              objc_storeStrong(provider, v12);
            }

            v21 = 0;
            goto LABEL_28;
          }
        }
      }

      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v24 objects:v32 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  namespaceName = self->_namespaceName;
  namespaceDescriptorsDefaultDir = [(TRIPaths *)self->_paths namespaceDescriptorsDefaultDir];
  v7 = [TRINamespaceDescriptor loadWithNamespaceName:namespaceName fromDirectory:namespaceDescriptorsDefaultDir];

  if (([(NSArray *)v7 optedOutOfDefaults]& 1) == 0 && [(NSArray *)self->_providerChain count])
  {
    if ((+[TRIProcessInfo hostingProcessIsTriald](TRIProcessInfo, "hostingProcessIsTriald") || +[TRIProcessInfo hostingProcessIsTrialdSystem]) && ![(NSString *)self->_namespaceName hasPrefix:@"TRIAL_", v24])
    {
      v19 = TRILogCategory_ClientFramework();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
LABEL_32:
        v23 = self->_namespaceName;
        *buf = 138412546;
        v29 = v23;
        v30 = 2112;
        v31 = factorCopy;
        _os_log_error_impl(&dword_22EA6B000, v19, OS_LOG_TYPE_ERROR, "Namespace %@ does not provide a factor with name %@.  Please check your factor name against your factor definitions on trial.apple.com.", buf, 0x16u);
      }
    }

    else
    {
      v19 = TRILogCategory_ClientFramework();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_32;
      }
    }
  }

  v16 = 0;
  if (provider)
  {
    v21 = *provider;
    *provider = 0;
LABEL_28:
  }

  return v16;
}

- (void)cacheFactorLevels
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = self->_providerChain;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) cacheFactorLevels];
      }

      while (v4 != v6);
      v4 = [(NSArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)computeTreatmentAssetIndexes:(id *)indexes withAssociatedExperimentIds:(id *)ids andFactorPackAssetIds:(id *)assetIds withAssociatedRolloutDeployments:(id *)deployments withExperimentFactorNames:(id *)names andRolloutFactorNames:(id *)factorNames forFactors:(id)factors usingFilter:(id)self0
{
  v118 = *MEMORY[0x277D85DE8];
  factorsCopy = factors;
  filterCopy = filter;
  location = indexes;
  if (indexes)
  {
    if (assetIds)
    {
      goto LABEL_3;
    }

LABEL_77:
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRINamespaceFactorProviderChain.m" lineNumber:284 description:{@"Invalid parameter not satisfying: %@", @"assetIds"}];

    if (factorsCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_78;
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"TRINamespaceFactorProviderChain.m" lineNumber:283 description:{@"Invalid parameter not satisfying: %@", @"assetIndexes"}];

  if (!assetIds)
  {
    goto LABEL_77;
  }

LABEL_3:
  if (factorsCopy)
  {
    goto LABEL_4;
  }

LABEL_78:
  currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"TRINamespaceFactorProviderChain.m" lineNumber:285 description:{@"Invalid parameter not satisfying: %@", @"factorNames"}];

LABEL_4:
  assetIdsCopy = assetIds;
  if (!filterCopy)
  {
    currentHandler4 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler4 handleFailureInMethod:a2 object:self file:@"TRINamespaceFactorProviderChain.m" lineNumber:286 description:{@"Invalid parameter not satisfying: %@", @"filterBlock"}];
  }

  v112[0] = MEMORY[0x277D85DD0];
  v112[1] = 3221225472;
  v112[2] = __218__TRINamespaceFactorProviderChain_computeTreatmentAssetIndexes_withAssociatedExperimentIds_andFactorPackAssetIds_withAssociatedRolloutDeployments_withExperimentFactorNames_andRolloutFactorNames_forFactors_usingFilter___block_invoke;
  v112[3] = &unk_27885E660;
  v15 = filterCopy;
  v113 = v15;
  v112[4] = self;
  v16 = MEMORY[0x2318F2490](v112);
  v17 = objc_opt_new();
  v18 = objc_opt_new();
  v19 = objc_opt_new();
  v78 = objc_opt_new();
  v81 = objc_opt_new();
  v20 = objc_opt_new();
  v108[0] = MEMORY[0x277D85DD0];
  v108[1] = 3221225472;
  v108[2] = __218__TRINamespaceFactorProviderChain_computeTreatmentAssetIndexes_withAssociatedExperimentIds_andFactorPackAssetIds_withAssociatedRolloutDeployments_withExperimentFactorNames_andRolloutFactorNames_forFactors_usingFilter___block_invoke_2;
  v108[3] = &unk_27885E688;
  v21 = v16;
  v111 = v21;
  v71 = v19;
  v22 = v19;
  v109 = v22;
  obj = v18;
  v79 = v18;
  v110 = v79;
  v80 = MEMORY[0x2318F2490](v108);
  v104[0] = MEMORY[0x277D85DD0];
  v104[1] = 3221225472;
  v104[2] = __218__TRINamespaceFactorProviderChain_computeTreatmentAssetIndexes_withAssociatedExperimentIds_andFactorPackAssetIds_withAssociatedRolloutDeployments_withExperimentFactorNames_andRolloutFactorNames_forFactors_usingFilter___block_invoke_3;
  v104[3] = &unk_27885E6B0;
  v93 = v21;
  v107 = v93;
  v70 = v22;
  v105 = v70;
  v68 = v20;
  v69 = v20;
  v106 = v69;
  v94 = MEMORY[0x2318F2490](v104);
  v100 = 0u;
  v101 = 0u;
  v102 = 0u;
  v103 = 0u;
  v23 = factorsCopy;
  v89 = [v23 countByEnumeratingWithState:&v100 objects:v117 count:16];
  if (v89)
  {
    v88 = *v101;
    v24 = 0x27885D000uLL;
    v82 = v23;
    v83 = v17;
    v84 = v15;
    selfCopy = self;
    do
    {
      v25 = 0;
      do
      {
        if (*v101 != v88)
        {
          objc_enumerationMutation(v23);
        }

        v26 = *(*(&v100 + 1) + 8 * v25);
        v27 = objc_autoreleasePoolPush();
        v99 = 0;
        v28 = [(TRINamespaceFactorProviderChain *)self levelForFactor:v26 outProvider:&v99];
        v92 = v28;
        if (!v28)
        {
          (v93[2])(v93, @"Unknown factor", v26, 9);
          goto LABEL_28;
        }

        v90 = v27;
        if (!v99)
        {
          v59 = v28;
          currentHandler5 = [MEMORY[0x277CCA890] currentHandler];
          [currentHandler5 handleFailureInMethod:a2 object:self file:@"TRINamespaceFactorProviderChain.m" lineNumber:370 description:{@"Invalid parameter not satisfying: %@", @"provider"}];

          v28 = v59;
        }

        v29 = [v28 fileOrDirectoryLevelWithIsDir:0];
        v91 = v29;
        if (!v29)
        {
          v31 = v93[2];
LABEL_26:
          v31();
          goto LABEL_27;
        }

        if ((*(v15 + 2))(v15, v26, v29, 0))
        {
          treatmentId = [(TRINamespaceFactorProviding *)v99 treatmentId];
          if (treatmentId)
          {
          }

          else
          {
            rolloutId = [(TRINamespaceFactorProviding *)v99 rolloutId];

            if (!rolloutId)
            {
              goto LABEL_27;
            }
          }

          if (([v91 hasAsset] & 1) == 0)
          {
            v31 = v93[2];
            goto LABEL_26;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            if (v99 == self->_factorPackExperimentProvider)
            {
              v33 = v80[2];
            }

            else
            {
              v33 = v94[2];
            }

            if ((v33() & 1) == 0)
            {
              goto LABEL_27;
            }
          }

          else
          {
            treatmentId2 = [(TRINamespaceFactorProviding *)v99 treatmentId];

            if (!treatmentId2)
            {
              v40 = TRILogCategory_ClientFramework();
              if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
              {
                experimentId = [(TRINamespaceFactorProviding *)v99 experimentId];
                *buf = 138412290;
                v116 = experimentId;
                _os_log_error_impl(&dword_22EA6B000, v40, OS_LOG_TYPE_ERROR, "Provider's treatmentId is unexpectedly nil for experiment %@", buf, 0xCu);
              }

              goto LABEL_27;
            }

            v86 = v25;
            asset = [v91 asset];
            treatmentId3 = [(TRINamespaceFactorProviding *)v99 treatmentId];
            v37 = [v17 objectForKeyedSubscript:treatmentId3];
            v38 = v37;
            if (v37)
            {
              v39 = v37;
            }

            else
            {
              v39 = objc_opt_new();
            }

            v41 = v39;

            if ([asset hasCloudKitIndex])
            {
              asset2 = [v91 asset];
              [v41 addIndex:{-[NSObject cloudKitIndex](asset2, "cloudKitIndex")}];
            }

            else
            {
              asset2 = TRILogCategory_ClientFramework();
              if (os_log_type_enabled(asset2, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543362;
                v116 = v91;
                _os_log_impl(&dword_22EA6B000, asset2, OS_LOG_TYPE_DEFAULT, "Level does not have a cloudKitIndex: %{public}@, this usually implies that the asset is coming from an MA reference", buf, 0xCu);
              }
            }

            v87 = asset;

            treatmentId4 = [(TRINamespaceFactorProviding *)v99 treatmentId];
            [v17 setObject:v41 forKeyedSubscript:treatmentId4];

            experimentId2 = [(TRINamespaceFactorProviding *)v99 experimentId];

            if (experimentId2)
            {
              experimentId3 = [(TRINamespaceFactorProviding *)v99 experimentId];
              [v79 addObject:experimentId3];
            }

            v97 = 0u;
            v98 = 0u;
            v95 = 0u;
            v96 = 0u;
            v46 = self->_providerChain;
            v47 = [(NSArray *)v46 countByEnumeratingWithState:&v95 objects:v114 count:16];
            if (v47)
            {
              v48 = v47;
              v49 = *v96;
              do
              {
                for (i = 0; i != v48; ++i)
                {
                  if (*v96 != v49)
                  {
                    objc_enumerationMutation(v46);
                  }

                  v51 = *(*(&v95 + 1) + 8 * i);
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v52 = [v51 levelForFactor:v26];
                    v53 = v52;
                    if (v52)
                    {
                      v54 = v24;
                      v55 = v41;
                      v56 = [v52 fileOrDirectoryLevelWithIsDir:0];
                      if (v56)
                      {
                        (v94[2])(v94, v51, v26, v56);
                      }

                      else
                      {
                        (v93[2])(v93, @"Not file/directory-typed", v26, 10);
                      }

                      v41 = v55;
                      v24 = v54;
                    }
                  }
                }

                v48 = [(NSArray *)v46 countByEnumeratingWithState:&v95 objects:v114 count:16];
              }

              while (v48);
            }

            v15 = v84;
            self = selfCopy;
            v23 = v82;
            v17 = v83;
            v25 = v86;
          }

          if (v99 == self->_rolloutProvider)
          {
            v57 = v81;
            goto LABEL_65;
          }

          if (v99 == self->_experimentProvider)
          {
            v57 = v78;
LABEL_65:
            [v57 addObject:v26];
          }
        }

LABEL_27:

        v27 = v90;
LABEL_28:

        objc_autoreleasePoolPop(v27);
        ++v25;
      }

      while (v25 != v89);
      v61 = [v23 countByEnumeratingWithState:&v100 objects:v117 count:16];
      v89 = v61;
    }

    while (v61);
  }

  objc_storeStrong(location, v17);
  if (ids)
  {
    objc_storeStrong(ids, obj);
  }

  objc_storeStrong(assetIdsCopy, v71);
  if (names)
  {
    objc_storeStrong(names, v78);
  }

  if (factorNames)
  {
    objc_storeStrong(factorNames, v81);
  }

  if (deployments)
  {
    objc_storeStrong(deployments, v68);
  }
}

void __218__TRINamespaceFactorProviderChain_computeTreatmentAssetIndexes_withAssociatedExperimentIds_andFactorPackAssetIds_withAssociatedRolloutDeployments_withExperimentFactorNames_andRolloutFactorNames_forFactors_usingFilter___block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277CCA9B8];
  v14 = *MEMORY[0x277CCA450];
  v7 = MEMORY[0x277CCACA8];
  v8 = *(a1 + 40);
  v9 = *(*(a1 + 32) + 8);
  v10 = a3;
  v11 = [v7 stringWithFormat:@"%@, with factor %@ in namespace %@.", a2, v10, v9, v14];
  v15[0] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  v13 = [v6 errorWithDomain:@"TRIGeneralErrorDomain" code:a4 userInfo:v12];
  (*(v8 + 16))(v8, v10, 0, v13);
}

BOOL __218__TRINamespaceFactorProviderChain_computeTreatmentAssetIndexes_withAssociatedExperimentIds_andFactorPackAssetIds_withAssociatedRolloutDeployments_withExperimentFactorNames_andRolloutFactorNames_forFactors_usingFilter___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [v7 factorPackId];
  v11 = v10;
  if (v10)
  {
    v12 = TRIValidateFactorPackId(v10);
    if (v12)
    {
      v13 = [v9 asset];
      v14 = [v13 assetId];
      v15 = TRIValidateAssetId(v14);

      v16 = v15 != 0;
      if (v15)
      {
        v17 = [*(a1 + 32) objectForKeyedSubscript:v12];
        v18 = v17;
        if (v17)
        {
          v19 = v17;
        }

        else
        {
          v19 = objc_opt_new();
        }

        v20 = v19;

        v21 = [[TRIAssetIdFactorName alloc] initWithAssetId:v15 factorName:v8];
        [v20 addObject:v21];

        [*(a1 + 32) setObject:v20 forKeyedSubscript:v12];
        v22 = [v7 experimentId];

        if (v22)
        {
          v23 = *(a1 + 40);
          v24 = [v7 experimentId];
          [v23 addObject:v24];
        }
      }

      else
      {
        (*(*(a1 + 48) + 16))();
      }
    }

    else
    {
      (*(*(a1 + 48) + 16))();
      v16 = 0;
    }
  }

  else
  {
    (*(*(a1 + 48) + 16))();
    v16 = 0;
  }

  return v16;
}

BOOL __218__TRINamespaceFactorProviderChain_computeTreatmentAssetIndexes_withAssociatedExperimentIds_andFactorPackAssetIds_withAssociatedRolloutDeployments_withExperimentFactorNames_andRolloutFactorNames_forFactors_usingFilter___block_invoke_3(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [v7 treatmentId];
  v11 = v10;
  if (v10)
  {
    v12 = TRIValidateFactorPackId(v10);
    if (v12)
    {
      v13 = [v9 asset];
      v14 = [v13 assetId];
      v15 = TRIValidateAssetId(v14);

      v16 = v15 != 0;
      if (v15)
      {
        v17 = [*(a1 + 32) objectForKeyedSubscript:v12];
        v18 = v17;
        if (v17)
        {
          v19 = v17;
        }

        else
        {
          v19 = objc_opt_new();
        }

        v20 = v19;

        v21 = [[TRIAssetIdFactorName alloc] initWithAssetId:v15 factorName:v8];
        [v20 addObject:v21];

        v29 = v20;
        [*(a1 + 32) setObject:v20 forKeyedSubscript:v12];
        v22 = [v7 experimentId];
        if (v22)
        {
          v23 = v22;
          v24 = [v7 deploymentId];

          if (v24 != -1)
          {
            v25 = [TRIRolloutDeployment alloc];
            v26 = [v7 experimentId];
            v27 = -[TRIRolloutDeployment initWithRolloutId:deploymentId:](v25, "initWithRolloutId:deploymentId:", v26, [v7 deploymentId]);

            [*(a1 + 40) addObject:v27];
          }
        }
      }

      else
      {
        (*(*(a1 + 48) + 16))();
      }
    }

    else
    {
      (*(*(a1 + 48) + 16))();
      v16 = 0;
    }
  }

  else
  {
    (*(*(a1 + 48) + 16))();
    v16 = 0;
  }

  return v16;
}

- (id)promotableFactorPackId
{
  if (self->_experimentProvider)
  {
    goto LABEL_2;
  }

  rolloutProvider = self->_rolloutProvider;
  if (rolloutProvider)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_2:
      rolloutProvider = 0;
      goto LABEL_3;
    }

    v5 = self->_rolloutProvider;
    rolloutProvider = [(TRINamespaceFactorProviding *)v5 treatmentId];

    if (rolloutProvider)
    {
      if ([(TRINamespaceFactorProviding *)v5 promotable])
      {
        treatmentId = [(TRINamespaceFactorProviding *)v5 treatmentId];
        rolloutProvider = TRIValidateFactorPackId(treatmentId);

        if (rolloutProvider)
        {
          v7 = rolloutProvider;
        }
      }

      else
      {
        rolloutProvider = 0;
      }
    }
  }

LABEL_3:

  return rolloutProvider;
}

- (id)_dealiasedFactorLevelForFactorLevel:(id)level unaliasedName:(id)name
{
  levelCopy = level;
  nameCopy = name;
  descriptor = [levelCopy descriptor];
  fields = [descriptor fields];
  v11 = [fields count];

  if (v11 != 2)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRINamespaceFactorProviderChain.m" lineNumber:502 description:{@"Shallow copy of aliased TRIFactorLevel needs updating, not implemented to copy all currently available fields"}];
  }

  factor = [levelCopy factor];
  descriptor2 = [factor descriptor];
  fields2 = [descriptor2 fields];
  v15 = [fields2 count];

  if (v15 != 7)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"TRINamespaceFactorProviderChain.m" lineNumber:503 description:{@"Shallow copy of aliased TRIFactor needs updating, not implemented to copy all currently available fields"}];
  }

  v16 = objc_opt_new();
  level = [levelCopy level];
  [v16 setLevel:level];

  factor2 = [v16 factor];
  [factor2 setName:nameCopy];

  factor3 = [levelCopy factor];
  id_p = [factor3 id_p];
  factor4 = [v16 factor];
  [factor4 setId_p:id_p];

  factor5 = [levelCopy factor];
  type = [factor5 type];
  factor6 = [v16 factor];
  [factor6 setType:type];

  factor7 = [levelCopy factor];
  namespaceId = [factor7 namespaceId];
  factor8 = [v16 factor];
  [factor8 setNamespaceId:namespaceId];

  factor9 = [levelCopy factor];
  namespaceName = [factor9 namespaceName];
  factor10 = [v16 factor];
  [factor10 setNamespaceName:namespaceName];

  factor11 = [levelCopy factor];
  metadataKeysArray = [factor11 metadataKeysArray];
  factor12 = [v16 factor];
  [factor12 setMetadataKeysArray:metadataKeysArray];

  factor13 = [v16 factor];
  [factor13 setAlias:0];

  return v16;
}

- (id)factorNamesWithObfuscation:(id)obfuscation
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __62__TRINamespaceFactorProviderChain_factorNamesWithObfuscation___block_invoke;
  v5[3] = &unk_27885E6D8;
  v5[4] = self;
  v3 = [obfuscation _pas_mappedArrayWithTransform:v5];

  return v3;
}

id __62__TRINamespaceFactorProviderChain_factorNamesWithObfuscation___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(*(a1 + 32) + 72) objectForKeyedSubscript:v3];
  if (!v4 || ([*(a1 + 32) levelForFactor:v4], v5 = objc_claimAutoreleasedReturnValue(), v5, v6 = v4, !v5))
  {
    v6 = v3;
  }

  v7 = v6;

  return v7;
}

- (unsigned)namespaceId
{
  v5 = -1;
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

@end