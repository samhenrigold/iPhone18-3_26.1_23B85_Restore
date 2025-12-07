@interface TRINamespaceResolver
+ (id)_namespacePathComponentsFromEntitlements;
+ (id)preferredPathForFactorDataWithCandidatePaths:(id)paths;
+ (id)promotionDirForNamespaceName:(id)name withPaths:(id)paths;
- (BOOL)_hasOverrideExperimentFactorsState;
- (BOOL)_prepareFactorsState:(id)state;
- (BOOL)_prepareFactorsStateForCounterfactualsOrInvestigationsForFactorsState:(id)state;
- (TRINamespaceResolver)initWithPaths:(id)paths;
- (TRINamespaceResolver)initWithPaths:(id)paths activeFactorProvidersParser:(id)parser;
- (TRINamespaceResolver)initWithPaths:(id)paths factorsState:(id)state activeFactorProvidersParser:(id)parser;
- (char)_realpathWithFileSystemRepresentation:(const char *)representation buffer:(char *)buffer;
- (id)counterfactualFactorsStatesForNamespace:(id)namespace;
- (id)resolveFactorProviderChainForNamespaceName:(id)name faultOnMissingInstalledFactors:(BOOL)factors installedFactorsAccessible:(BOOL *)accessible;
- (void)dealloc;
@end

@implementation TRINamespaceResolver

- (void)dealloc
{
  [(TRINamespaceResolver *)self dispose];
  v3.receiver = self;
  v3.super_class = TRINamespaceResolver;
  [(TRINamespaceResolver *)&v3 dealloc];
}

- (BOOL)_hasOverrideExperimentFactorsState
{
  namespacesInFactorsState = [(TRINamespaceResolver *)self namespacesInFactorsState];
  if (namespacesInFactorsState)
  {
    overrideExperimentFactorsState = [(TRINamespaceResolver *)self overrideExperimentFactorsState];
    v5 = overrideExperimentFactorsState != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (TRINamespaceResolver)initWithPaths:(id)paths
{
  v4 = [(TRINamespaceResolver *)self initWithPaths:paths factorsState:0];
  if (!v4)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:0 file:@"TRINamespaceResolver.m" lineNumber:53 description:{@"Expression was unexpectedly nil/false: %@", @"[self initWithPaths:paths factorsState:nil]"}];
  }

  return v4;
}

- (TRINamespaceResolver)initWithPaths:(id)paths activeFactorProvidersParser:(id)parser
{
  v5 = [(TRINamespaceResolver *)self initWithPaths:paths factorsState:0 activeFactorProvidersParser:parser];
  if (!v5)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:0 file:@"TRINamespaceResolver.m" lineNumber:58 description:{@"Expression was unexpectedly nil/false: %@", @"[self initWithPaths:paths factorsState:nil activeFactorProvidersParser:activeFactorProvidersParser]"}];
  }

  return v5;
}

- (TRINamespaceResolver)initWithPaths:(id)paths factorsState:(id)state activeFactorProvidersParser:(id)parser
{
  v22 = *MEMORY[0x277D85DE8];
  pathsCopy = paths;
  stateCopy = state;
  parserCopy = parser;
  v19.receiver = self;
  v19.super_class = TRINamespaceResolver;
  v12 = [(TRINamespaceResolver *)&v19 init];
  v13 = v12;
  if (v12 && ((objc_storeStrong(&v12->_paths, paths), !parserCopy) ? (v14 = [[TRIActiveFactorProvidersParser alloc] initWithPaths:pathsCopy]) : (v14 = parserCopy), activeFactorProvidersParser = v13->_activeFactorProvidersParser, v13->_activeFactorProvidersParser = v14, activeFactorProvidersParser, ![(TRINamespaceResolver *)v13 _prepareFactorsState:stateCopy]))
  {
    v17 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v21 = stateCopy;
      _os_log_error_impl(&dword_22EA6B000, v17, OS_LOG_TYPE_ERROR, "Failed to prepare factorsState: %{public}@", buf, 0xCu);
    }

    v16 = 0;
  }

  else
  {
    v16 = v13;
  }

  return v16;
}

- (BOOL)_prepareFactorsState:(id)state
{
  stateCopy = state;
  if (stateCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [(TRINamespaceResolver *)self _prepareFactorsStateForCounterfactualsOrInvestigationsForFactorsState:stateCopy];
    }

    else
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      v8 = [objc_opt_class() description];
      [currentHandler handleFailureInMethod:a2 object:self file:@"TRINamespaceResolver.m" lineNumber:99 description:{@"Unrecognized TRIFactorsState subclass: %@", v8}];

      v6 = 0;
    }
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (BOOL)_prepareFactorsStateForCounterfactualsOrInvestigationsForFactorsState:(id)state
{
  v23 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  v5 = [(TRIActiveFactorProvidersParser *)self->_activeFactorProvidersParser resolveTargetedFactorPackSetForExperimentFactorsState:stateCopy];
  v6 = v5;
  if (v5)
  {
    path = [v5 path];
    v8 = [path stringByAppendingPathComponent:@"factorPacks"];

    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v20 = 0;
    v10 = [defaultManager contentsOfDirectoryAtPath:v8 error:&v20];
    v11 = v20;

    v12 = v10 != 0;
    if (v10)
    {
      namespacesInFactorsState = self->_namespacesInFactorsState;
      if (namespacesInFactorsState)
      {
        v14 = [(NSSet *)namespacesInFactorsState setByAddingObjectsFromArray:v10];
      }

      else
      {
        v16 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:v10];
        v17 = self->_namespacesInFactorsState;
        self->_namespacesInFactorsState = v16;
      }

      v18 = stateCopy;
      p_super = &self->_overrideExperimentFactorsState->super.super;
      self->_overrideExperimentFactorsState = v18;
    }

    else
    {
      p_super = TRILogCategory_ClientFramework();
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v22 = v11;
        _os_log_error_impl(&dword_22EA6B000, p_super, OS_LOG_TYPE_ERROR, "Failed to enumerate namespace names: %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v8 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v22 = stateCopy;
      _os_log_impl(&dword_22EA6B000, v8, OS_LOG_TYPE_INFO, "Failed to resolve targeted experiment factor pack set for factor state: %@", buf, 0xCu);
    }

    v12 = 0;
  }

  return v12;
}

- (char)_realpathWithFileSystemRepresentation:(const char *)representation buffer:(char *)buffer
{
  *__error() = 0;

  return realpath_DARWIN_EXTSN(representation, buffer);
}

+ (id)promotionDirForNamespaceName:(id)name withPaths:(id)paths
{
  nameCopy = name;
  namespaceDescriptorsDir = [paths namespaceDescriptorsDir];
  nameCopy = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@/%@", @"v2/promotion", nameCopy];

  v8 = [namespaceDescriptorsDir stringByAppendingPathComponent:nameCopy];

  return v8;
}

- (id)counterfactualFactorsStatesForNamespace:(id)namespace
{
  v5 = [(TRIActiveFactorProvidersParser *)self->_activeFactorProvidersParser counterfactualFactorsStatesForNamespace:namespace];
  if (!v5)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRINamespaceResolver.m" lineNumber:165 description:{@"Expression was unexpectedly nil/false: %@", @"[_activeFactorProvidersParser counterfactualFactorsStatesForNamespace:namespaceName]"}];
  }

  return v5;
}

- (id)resolveFactorProviderChainForNamespaceName:(id)name faultOnMissingInstalledFactors:(BOOL)factors installedFactorsAccessible:(BOOL *)accessible
{
  factorsCopy = factors;
  nameCopy = name;
  v10 = objc_opt_new();
  v11 = [TRINamespaceFactorProvider factorProviderWithNamespaceName:nameCopy paths:self->_paths treatmentLayer:1 faultOnMissingFactors:factorsCopy shouldLockFactorDirectory:0];
  if (v11)
  {
    v12 = [TRITypedFactorProvider alloc];
    namespaceDescriptorsDefaultDir = [(TRIPaths *)self->_paths namespaceDescriptorsDefaultDir];
    v14 = [(TRITypedFactorProvider *)v12 initWithType:1 provider:v11 logDesc:namespaceDescriptorsDefaultDir];
    [v10 addObject:v14];
  }

  if (accessible)
  {
    *accessible = v11 != 0;
  }

  v15 = [(TRIActiveFactorProvidersParser *)self->_activeFactorProvidersParser resolvePropertyListFactorProviderChainForNamespaceName:nameCopy];
  v16 = [v15 mutableCopy];

  [v16 addObjectsFromArray:v10];
  if ([(TRINamespaceResolver *)self _hasOverrideExperimentFactorsState])
  {
    namespacesInFactorsState = [(TRINamespaceResolver *)self namespacesInFactorsState];
    v18 = [namespacesInFactorsState containsObject:nameCopy];

    if (v18)
    {
      overrideExperimentFactorsState = [(TRINamespaceResolver *)self overrideExperimentFactorsState];
      if (!overrideExperimentFactorsState)
      {
        currentHandler = [MEMORY[0x277CCA890] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"TRINamespaceResolver.m" lineNumber:255 description:{@"Expression was unexpectedly nil/false: %@", @"self.overrideExperimentFactorsState"}];
      }

      v20 = [(TRIActiveFactorProvidersParser *)self->_activeFactorProvidersParser resolveTargetedFactorPackSetForExperimentFactorsState:overrideExperimentFactorsState];
      if (!v20)
      {
        currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
        [currentHandler2 handleFailureInMethod:a2 object:self file:@"TRINamespaceResolver.m" lineNumber:257 description:@"lockedSet for counterfactuals or investigations unexpectedly not present"];
      }

      v44 = 0;
      activeFactorProvidersParser = self->_activeFactorProvidersParser;
      deployment = [overrideExperimentFactorsState deployment];
      experimentId = [deployment experimentId];
      deployment2 = [overrideExperimentFactorsState deployment];
      deploymentId = [deployment2 deploymentId];
      v43 = overrideExperimentFactorsState;
      treatmentId = [overrideExperimentFactorsState treatmentId];
      v42 = v20;
      path = [v20 path];
      v27 = [(TRIActiveFactorProvidersParser *)activeFactorProvidersParser factorProviderForNamespaceName:nameCopy parentId:experimentId deploymentId:deploymentId treatmentId:treatmentId fromFactorPackSetWithDir:path resolvedPath:&v44];

      if (v27 && v44)
      {
        [v16 triRemoveFirstItemPassingTest:&__block_literal_global_6];
        v28 = [TRITypedFactorProvider alloc];
        v29 = [(TRITypedFactorProvider *)v28 initWithType:32 provider:v27 logDesc:v44];
        [v16 insertObject:v29 atIndex:0];
      }
    }
  }

  if (![(TRINamespaceResolver *)self _hasOverrideExperimentFactorsState])
  {
    v30 = [TRINamespaceFactorProvider factorProviderWithNamespaceName:nameCopy paths:self->_paths treatmentLayer:4 faultOnMissingFactors:1 shouldLockFactorDirectory:1];
    if (v30)
    {
      v31 = [TRITypedFactorProvider alloc];
      namespaceDescriptorsExperimentDir = [(TRIPaths *)self->_paths namespaceDescriptorsExperimentDir];
      v33 = [(TRITypedFactorProvider *)v31 initWithType:4 provider:v30 logDesc:namespaceDescriptorsExperimentDir];

      [v16 insertObject:v33 atIndex:0];
    }

    [v16 triMoveFirstItemToFrontPassingTest:&__block_literal_global_133];
  }

  v34 = [TRINamespaceFactorProvider factorProviderWithNamespaceName:nameCopy paths:self->_paths treatmentLayer:8 faultOnMissingFactors:1 shouldLockFactorDirectory:1];
  if (v34)
  {
    v35 = [TRITypedFactorProvider alloc];
    namespaceDescriptorsExperimentDir2 = [(TRIPaths *)self->_paths namespaceDescriptorsExperimentDir];
    v37 = [(TRITypedFactorProvider *)v35 initWithType:8 provider:v34 logDesc:namespaceDescriptorsExperimentDir2];

    [v16 insertObject:v37 atIndex:0];
  }

  return v16;
}

+ (id)_namespacePathComponentsFromEntitlements
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = [TRIEntitlement objectForCurrentProcessEntitlement:@"com.apple.trial.client"];
  if (!v2)
  {
LABEL_16:
    v8 = 0;
    goto LABEL_17;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_13:
    v9 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      processInfo = [MEMORY[0x277CCAC38] processInfo];
      processName = [processInfo processName];
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      *buf = 138412802;
      v20 = processName;
      v21 = 2112;
      v22 = @"com.apple.trial.client";
      v23 = 2112;
      v24 = v14;
      _os_log_error_impl(&dword_22EA6B000, v9, OS_LOG_TYPE_ERROR, "Process %@ has incorrectly-typed entitlement %@ (expected array of string, decoded %@)", buf, 0x20u);
    }

    goto LABEL_16;
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = v2;
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v25 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v3);
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {

          goto LABEL_13;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v15 objects:v25 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v8 = v3;
LABEL_17:

  return v8;
}

+ (id)preferredPathForFactorDataWithCandidatePaths:(id)paths
{
  v57 = *MEMORY[0x277D85DE8];
  pathsCopy = paths;
  if (![pathsCopy count])
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRINamespaceResolver.m" lineNumber:359 description:{@"Invalid parameter not satisfying: %@", @"candidatePaths.count > 0"}];
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__TRINamespaceResolver_preferredPathForFactorDataWithCandidatePaths___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (qword_280ACADD8 != -1)
  {
    dispatch_once(&qword_280ACADD8, block);
  }

  v6 = _MergedGlobals_7;
  v7 = v6;
  if (v6)
  {
    v8 = [v6 count];
    if (([pathsCopy count] * v8) > 0x64)
    {
      v9 = TRILogCategory_ClientFramework();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_22EA6B000, v9, OS_LOG_TYPE_DEFAULT, "Warning: suppressing entitlement-based path resolution due to high complexity.", buf, 2u);
      }
    }

    else
    {
      v35 = v7;
      v9 = [v7 _pas_mappedArrayWithTransform:&__block_literal_global_146];
      v47 = 0u;
      v48 = 0u;
      v49 = 0u;
      v50 = 0u;
      v36 = pathsCopy;
      obj = pathsCopy;
      v10 = [obj countByEnumeratingWithState:&v47 objects:v56 count:16];
      if (v10)
      {
        v11 = v10;
        v38 = *v48;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v48 != v38)
            {
              objc_enumerationMutation(obj);
            }

            v13 = *(*(&v47 + 1) + 8 * i);
            v14 = objc_autoreleasePoolPush();
            triStringByResolvingSymlinksInPath = [v13 triStringByResolvingSymlinksInPath];
            v43 = 0u;
            v44 = 0u;
            v45 = 0u;
            v46 = 0u;
            v16 = v9;
            v17 = v9;
            v18 = [v17 countByEnumeratingWithState:&v43 objects:v55 count:16];
            if (v18)
            {
              v19 = v18;
              v20 = *v44;
LABEL_14:
              v21 = 0;
              while (1)
              {
                if (*v44 != v20)
                {
                  objc_enumerationMutation(v17);
                }

                if ([triStringByResolvingSymlinksInPath containsString:*(*(&v43 + 1) + 8 * v21)])
                {
                  break;
                }

                if (v19 == ++v21)
                {
                  v19 = [v17 countByEnumeratingWithState:&v43 objects:v55 count:16];
                  if (v19)
                  {
                    goto LABEL_14;
                  }

                  goto LABEL_26;
                }
              }

              if (!access([v13 fileSystemRepresentation], 4))
              {
                v32 = v13;

                objc_autoreleasePoolPop(v14);
                v7 = v35;
                pathsCopy = v36;
                goto LABEL_49;
              }

              if (*__error() == 1)
              {
                v22 = TRILogCategory_ClientFramework();
                if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412290;
                  v54 = obj;
                  _os_log_impl(&dword_22EA6B000, v22, OS_LOG_TYPE_INFO, "Sandbox/datavault prevents accessing candidate path: %@", buf, 0xCu);
                }
              }
            }

LABEL_26:

            objc_autoreleasePoolPop(v14);
            v9 = v16;
          }

          v11 = [obj countByEnumeratingWithState:&v47 objects:v56 count:16];
        }

        while (v11);
      }

      v7 = v35;
      pathsCopy = v36;
    }
  }

  v23 = TRILogCategory_ClientFramework();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22EA6B000, v23, OS_LOG_TYPE_DEFAULT, "Unable to resolve candidate path based on calling process entitlement; falling back on naive access() check.", buf, 2u);
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v24 = pathsCopy;
  v25 = [v24 countByEnumeratingWithState:&v39 objects:v52 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v40;
    while (2)
    {
      for (j = 0; j != v26; ++j)
      {
        if (*v40 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = *(*(&v39 + 1) + 8 * j);
        v30 = objc_autoreleasePoolPush();
        if (!access([v29 fileSystemRepresentation], 4))
        {
          v32 = v29;
          objc_autoreleasePoolPop(v30);

          goto LABEL_49;
        }

        if (*__error() == 1)
        {
          v31 = TRILogCategory_ClientFramework();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v54 = v24;
            _os_log_impl(&dword_22EA6B000, v31, OS_LOG_TYPE_INFO, "Sandbox/datavault prevents accessing candidate path: %@", buf, 0xCu);
          }
        }

        objc_autoreleasePoolPop(v30);
      }

      v26 = [v24 countByEnumeratingWithState:&v39 objects:v52 count:16];
      if (v26)
      {
        continue;
      }

      break;
    }
  }

  v32 = [v24 objectAtIndexedSubscript:0];
LABEL_49:

  return v32;
}

void __69__TRINamespaceResolver_preferredPathForFactorDataWithCandidatePaths___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) _namespacePathComponentsFromEntitlements];
  v4 = _MergedGlobals_7;
  _MergedGlobals_7 = v3;

  objc_autoreleasePoolPop(v2);
}

id __69__TRINamespaceResolver_preferredPathForFactorDataWithCandidatePaths___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCACA8];
  v3 = a2;
  v4 = [[v2 alloc] initWithFormat:@"/Treatments/%@/", v3];

  return v4;
}

@end