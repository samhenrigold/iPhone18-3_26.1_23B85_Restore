@interface TRIActiveFactorProvidersParser
- (TRIActiveFactorProvidersParser)initWithPaths:(id)paths;
- (char)_realpathWithFileSystemRepresentation:(const char *)representation buffer:(char *)buffer;
- (id)_deploymentIdForExperiment:(id)experiment fromResolverList:(id)list;
- (id)_experimentIdForNamespace:(id)namespace fromResolverList:(id)list;
- (id)_getFactorPackPathForNamespaceName:(id)name withCandidatePath:(id)path parentId:(id)id deploymentId:(int)deploymentId promotable:(BOOL *)promotable;
- (id)_resolveCounterfactualTreatmentsMap;
- (id)_resolveTreatmentFactorPackSetIdMap;
- (id)_resolverPropertyListWithGlobalRolloutsResolvedPath:(id *)path;
- (id)_resolverPropertyListWithResolvedPath:(id *)path;
- (id)_treatmentIdForExperiment:(id)experiment fromResolverList:(id)list;
- (id)counterfactualFactorsStatesForNamespace:(id)namespace;
- (id)experimentIdentifiersForNamespace:(id)namespace;
- (id)factorProviderForNamespaceName:(id)name parentId:(id)id deploymentId:(int)deploymentId treatmentId:(id)treatmentId fromFactorPackSetWithDir:(id)dir resolvedPath:(id *)path;
- (id)globalFactorProviderForNamespaceName:(id)name parentId:(id)id deploymentId:(int)deploymentId treatmentId:(id)treatmentId fromFactorPackId:(id)packId resolvedPath:(id *)path;
- (id)resolvePropertyListFactorProviderChainForNamespaceName:(id)name;
- (id)resolvePropertyListGlobalFactorProviderChainForNamespaceName:(id)name;
- (id)resolveTargetedFactorPackSetForExperimentDeployment:(id)deployment;
- (id)resolveTargetedFactorPackSetForExperimentFactorsState:(id)state;
- (id)resolveTargetedFactorPackSetForRolloutDeployment:(id)deployment;
- (void)_faultOnceWithMessage:(id)message;
- (void)dealloc;
@end

@implementation TRIActiveFactorProvidersParser

uint64_t __41__TRIActiveFactorProvidersParser_dispose__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2[3];
  v3 = a2;
  [v2 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_113];
  [v3[4] enumerateKeysAndObjectsUsingBlock:&__block_literal_global_116];
  v4 = v3[5];

  return [v4 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_119];
}

- (void)dealloc
{
  [(TRIActiveFactorProvidersParser *)self dispose];
  v3.receiver = self;
  v3.super_class = TRIActiveFactorProvidersParser;
  [(TRIActiveFactorProvidersParser *)&v3 dealloc];
}

void __41__TRIActiveFactorProvidersParser_dispose__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = [a3 lock];
  [v3 unlock];
}

- (TRIActiveFactorProvidersParser)initWithPaths:(id)paths
{
  pathsCopy = paths;
  v20.receiver = self;
  v20.super_class = TRIActiveFactorProvidersParser;
  v6 = [(TRIActiveFactorProvidersParser *)&v20 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_paths, paths);
    v8 = objc_opt_new();
    v9 = *(v8 + 8);
    *(v8 + 8) = 0;

    v10 = *(v8 + 16);
    *(v8 + 16) = 0;

    *(v8 + 48) = 0;
    v11 = objc_opt_new();
    v12 = *(v8 + 24);
    *(v8 + 24) = v11;

    v13 = objc_opt_new();
    v14 = *(v8 + 32);
    *(v8 + 32) = v13;

    v15 = objc_opt_new();
    v16 = *(v8 + 40);
    *(v8 + 40) = v15;

    v17 = [objc_alloc(MEMORY[0x277D425F8]) initWithGuardedData:v8];
    lock = v7->_lock;
    v7->_lock = v17;
  }

  return v7;
}

void __41__TRIActiveFactorProvidersParser_dispose__block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = [a3 lock];
  [v3 unlock];
}

void __41__TRIActiveFactorProvidersParser_dispose__block_invoke_4(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = [a3 lock];
  [v3 unlock];
}

- (id)resolvePropertyListFactorProviderChainForNamespaceName:(id)name
{
  v82 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v80 = 0;
  v5 = [(TRIActiveFactorProvidersParser *)self _resolverPropertyListWithResolvedPath:&v80];
  v6 = v5;
  if (!v5)
  {
    v12 = MEMORY[0x277CBEBF8];
    goto LABEL_55;
  }

  v7 = [v5 objectForKeyedSubscript:@"namespaceMap"];
  v8 = [v6 objectForKeyedSubscript:@"rolloutV2Deployments"];
  v9 = [v6 objectForKeyedSubscript:@"experimentDeployments"];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = objc_opt_new();
  }

  v13 = v11;

  v14 = [v6 objectForKeyedSubscript:@"experimentTreatments"];
  v15 = v14;
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = objc_opt_new();
  }

  v17 = v16;

  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || !v8 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || !v13 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || !v17 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v45 = objc_alloc(MEMORY[0x277CCACA8]);
    v18 = [v45 initWithFormat:@"plplist contains unexpected toplevel content: %@", v80];
    [(TRIActiveFactorProvidersParser *)self _faultOnceWithMessage:v18];
    goto LABEL_53;
  }

  v18 = [v7 objectForKeyedSubscript:nameCopy];
  if (!v18)
  {
LABEL_53:
    v12 = MEMORY[0x277CBEBF8];
    goto LABEL_54;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v47 = objc_alloc(MEMORY[0x277CCACA8]);
    v44 = [v47 initWithFormat:@"plplist contains non-array provider chain: %@", v80];
    [(TRIActiveFactorProvidersParser *)self _faultOnceWithMessage:v44];
    v12 = MEMORY[0x277CBEBF8];
    goto LABEL_65;
  }

  v19 = objc_opt_new();
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  obj = v18;
  v71 = [obj countByEnumeratingWithState:&v76 objects:v81 count:16];
  if (!v71)
  {
    goto LABEL_51;
  }

  v72 = *v77;
  v73 = v17;
  v65 = v19;
  while (2)
  {
    v20 = 0;
    do
    {
      if (*v77 != v72)
      {
        objc_enumerationMutation(obj);
      }

      v74 = v20;
      v21 = *(*(&v76 + 1) + 8 * v20);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || [v21 count] != 2)
      {
        v48 = objc_alloc(MEMORY[0x277CCACA8]);
        v24 = [v48 initWithFormat:@"plplist contains bad provider chain: %@", v80];
        [(TRIActiveFactorProvidersParser *)self _faultOnceWithMessage:v24];
LABEL_64:

        v12 = MEMORY[0x277CBEBF8];
        v44 = v65;
        goto LABEL_65;
      }

      v22 = [v21 objectAtIndexedSubscript:0];
      if ([@"rolloutV2" isEqual:v22])
      {
        v23 = [v21 objectAtIndexedSubscript:1];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v24 = [v21 objectAtIndexedSubscript:1];
          v25 = [v8 objectForKeyedSubscript:v24];
          if (!v25 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {
            v49 = objc_alloc(MEMORY[0x277CCACA8]);
            v50 = [v49 initWithFormat:@"plplist contains bad rollout deployment: %@", v80];
            [(TRIActiveFactorProvidersParser *)self _faultOnceWithMessage:v50];

LABEL_63:
            v17 = v73;
            goto LABEL_64;
          }

          v26 = -[TRIRolloutDeployment initWithRolloutId:deploymentId:]([TRIRolloutDeployment alloc], "initWithRolloutId:deploymentId:", v24, [v25 intValue]);
          v27 = [(TRIActiveFactorProvidersParser *)self resolveTargetedFactorPackSetForRolloutDeployment:v26];
          if (v27)
          {
            v60 = v25;
            v75 = 0;
            v28 = v27;
            rolloutId = [(TRIRolloutDeployment *)v26 rolloutId];
            v68 = v26;
            deploymentId = [(TRIRolloutDeployment *)v26 deploymentId];
            v62 = v28;
            path = [v28 path];
            v56 = [(TRIActiveFactorProvidersParser *)self factorProviderForNamespaceName:nameCopy parentId:rolloutId deploymentId:deploymentId treatmentId:0 fromFactorPackSetWithDir:path resolvedPath:&v75];

            if (v56)
            {
              v30 = [TRITypedFactorProvider alloc];
              v31 = [(TRITypedFactorProvider *)v30 initWithType:2 provider:v56 logDesc:v75];
              [v65 addObject:v31];
            }

            v26 = v68;
            v25 = v60;
            v27 = v62;
          }

          goto LABEL_49;
        }
      }

      else
      {
      }

      v32 = [v21 objectAtIndexedSubscript:0];
      if (([@"experiment" isEqual:v32] & 1) == 0)
      {

LABEL_48:
        v43 = objc_alloc(MEMORY[0x277CCACA8]);
        v24 = [v43 initWithFormat:@"plplist at %@ contains unsupported provider chain element: %@", v80, v21];
        [(TRIActiveFactorProvidersParser *)self _faultOnceWithMessage:v24];
        goto LABEL_49;
      }

      v33 = [v21 objectAtIndexedSubscript:1];
      objc_opt_class();
      v69 = objc_opt_isKindOfClass();

      if ((v69 & 1) == 0)
      {
        goto LABEL_48;
      }

      v24 = [v21 objectAtIndexedSubscript:1];
      [v13 objectForKeyedSubscript:v24];
      v70 = v17 = v73;
      if (!v70 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        v51 = objc_alloc(MEMORY[0x277CCACA8]);
        v52 = [v51 initWithFormat:@"plplist contains bad experiment deployment: %@ for map: %@", v80, v13];
        [(TRIActiveFactorProvidersParser *)self _faultOnceWithMessage:v52];

        goto LABEL_64;
      }

      v34 = [v73 objectForKeyedSubscript:v24];
      if (!v34 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        v53 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"plplist contains experiment deployment with bad treatment ID: %@", v34];
        [(TRIActiveFactorProvidersParser *)self _faultOnceWithMessage:v53];

        goto LABEL_63;
      }

      v35 = -[TRIExperimentDeployment initWithExperimentId:deploymentId:]([TRIExperimentDeployment alloc], "initWithExperimentId:deploymentId:", v24, [v70 intValue]);
      v36 = [(TRIActiveFactorProvidersParser *)self resolveTargetedFactorPackSetForExperimentDeployment:v35];
      if (v36)
      {
        v75 = 0;
        v57 = v34;
        v37 = v36;
        [(TRIExperimentDeployment *)v35 experimentId];
        v63 = v61 = v35;
        deploymentId2 = [(TRIExperimentDeployment *)v35 deploymentId];
        v59 = v37;
        v39 = v37;
        v34 = v57;
        path2 = [v39 path];
        v40 = [(TRIActiveFactorProvidersParser *)self factorProviderForNamespaceName:nameCopy parentId:v63 deploymentId:deploymentId2 treatmentId:v57 fromFactorPackSetWithDir:path2 resolvedPath:&v75];

        if (v40)
        {
          v41 = [TRITypedFactorProvider alloc];
          v64 = v40;
          v42 = [(TRITypedFactorProvider *)v41 initWithType:32 provider:v40 logDesc:v75];
          [v65 addObject:v42];

          v40 = v64;
        }

        v36 = v59;
        v35 = v61;
      }

LABEL_49:
      v17 = v73;

      v20 = v74 + 1;
    }

    while (v71 != v74 + 1);
    v19 = v65;
    v71 = [obj countByEnumeratingWithState:&v76 objects:v81 count:16];
    if (v71)
    {
      continue;
    }

    break;
  }

LABEL_51:

  v44 = v19;
  v12 = v44;
LABEL_65:

LABEL_54:
LABEL_55:

  return v12;
}

- (id)resolvePropertyListGlobalFactorProviderChainForNamespaceName:(id)name
{
  v79 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v77 = 0;
  v5 = [(TRIActiveFactorProvidersParser *)self _resolverPropertyListWithGlobalRolloutsResolvedPath:&v77];
  v6 = v5;
  if (!v5)
  {
    v13 = MEMORY[0x277CBEBF8];
    goto LABEL_56;
  }

  v7 = [v5 objectForKeyedSubscript:@"namespaceMap"];
  v8 = [v6 objectForKeyedSubscript:@"namespaceFactorPackMap"];
  v9 = [v6 objectForKeyedSubscript:@"rolloutV2Deployments"];
  v10 = [v6 objectForKeyedSubscript:@"experimentDeployments"];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = objc_opt_new();
  }

  v14 = v12;

  v15 = [v6 objectForKeyedSubscript:@"experimentTreatments"];
  v16 = v15;
  if (v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = objc_opt_new();
  }

  v18 = v17;

  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || !v9 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || !v8 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || !v14 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || !v18 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v39 = objc_alloc(MEMORY[0x277CCACA8]);
    v19 = [v39 initWithFormat:@"plplist contains unexpected toplevel content: %@", v77];
    [(TRIActiveFactorProvidersParser *)self _faultOnceWithMessage:v19];
    goto LABEL_54;
  }

  v19 = [v7 objectForKeyedSubscript:nameCopy];
  if (!v19)
  {
LABEL_54:
    v13 = MEMORY[0x277CBEBF8];
    goto LABEL_55;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v41 = objc_alloc(MEMORY[0x277CCACA8]);
    v20 = [v41 initWithFormat:@"plplist contains non-array provider chain: %@", v77];
    [(TRIActiveFactorProvidersParser *)self _faultOnceWithMessage:v20];
    v13 = MEMORY[0x277CBEBF8];
    goto LABEL_67;
  }

  v20 = objc_opt_new();
  v55 = [v8 objectForKeyedSubscript:nameCopy];
  if (!v55)
  {
    goto LABEL_52;
  }

  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  obj = v19;
  v60 = [obj countByEnumeratingWithState:&v73 objects:v78 count:16];
  if (!v60)
  {
    goto LABEL_51;
  }

  v61 = *v74;
  v62 = v20;
  while (2)
  {
    v21 = 0;
    do
    {
      if (*v74 != v61)
      {
        v22 = v21;
        objc_enumerationMutation(obj);
        v21 = v22;
      }

      v71 = v21;
      v23 = *(*(&v73 + 1) + 8 * v21);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || [v23 count] != 2)
      {
        v42 = objc_alloc(MEMORY[0x277CCACA8]);
        v43 = [v42 initWithFormat:@"plplist contains bad provider chain: %@", v77];
        [(TRIActiveFactorProvidersParser *)self _faultOnceWithMessage:v43];
LABEL_65:

        v13 = MEMORY[0x277CBEBF8];
        v20 = v62;
        goto LABEL_66;
      }

      v68 = [v23 objectAtIndexedSubscript:0];
      if ([@"rolloutV2" isEqual:?])
      {
        v63 = [v23 objectAtIndexedSubscript:1];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v69 = [v23 objectAtIndexedSubscript:1];
          v24 = [v9 objectForKeyedSubscript:?];
          v57 = v24;
          if (!v24 || (v25 = v24, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {
            v44 = objc_alloc(MEMORY[0x277CCACA8]);
            v45 = [v44 initWithFormat:@"plplist contains bad rollout deployment: %@", v77];
            [(TRIActiveFactorProvidersParser *)self _faultOnceWithMessage:v45];

            v46 = v57;
LABEL_64:

            v43 = v69;
            goto LABEL_65;
          }

          v26 = -[TRIRolloutDeployment initWithRolloutId:deploymentId:]([TRIRolloutDeployment alloc], "initWithRolloutId:deploymentId:", v69, [v25 intValue]);
          v72 = 0;
          rolloutId = [(TRIRolloutDeployment *)v26 rolloutId];
          v51 = v26;
          v27 = [(TRIActiveFactorProvidersParser *)self globalFactorProviderForNamespaceName:nameCopy parentId:rolloutId deploymentId:[(TRIRolloutDeployment *)v26 deploymentId] treatmentId:0 fromFactorPackId:v55 resolvedPath:&v72];

          if (v27)
          {
            v28 = [TRITypedFactorProvider alloc];
            v65 = v27;
            v29 = [(TRITypedFactorProvider *)v28 initWithType:2 provider:v27 logDesc:v72];
            [v62 addObject:v29];

            v27 = v65;
          }

          v30 = v57;
LABEL_46:

          v37 = v69;
          goto LABEL_49;
        }
      }

      else
      {
      }

      v70 = [v23 objectAtIndexedSubscript:0];
      if ([@"experiment" isEqual:?])
      {
        v66 = [v23 objectAtIndexedSubscript:1];
        objc_opt_class();
        v58 = objc_opt_isKindOfClass();

        if (v58)
        {
          v31 = [v23 objectAtIndexedSubscript:1];
          v67 = [v14 objectForKeyedSubscript:v31];
          v69 = v31;
          if (!v67 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {
            v47 = objc_alloc(MEMORY[0x277CCACA8]);
            v48 = [v47 initWithFormat:@"plplist (global) contains bad experiment deployment: %@ for map: %@", v77, v14];
            [(TRIActiveFactorProvidersParser *)self _faultOnceWithMessage:v48];

            v43 = v69;
            goto LABEL_65;
          }

          v32 = [v18 objectForKeyedSubscript:v31];
          v59 = v32;
          if (!v32 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {
            v49 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"plplist contains experiment deployment with bad treatment ID: %@", v32];
            [(TRIActiveFactorProvidersParser *)self _faultOnceWithMessage:v49];

            v46 = v67;
            goto LABEL_64;
          }

          v33 = -[TRIExperimentDeployment initWithExperimentId:deploymentId:]([TRIExperimentDeployment alloc], "initWithExperimentId:deploymentId:", v69, [v67 intValue]);
          v72 = 0;
          [(TRIExperimentDeployment *)v33 experimentId];
          v52 = v50 = v33;
          v34 = [(TRIActiveFactorProvidersParser *)self globalFactorProviderForNamespaceName:nameCopy parentId:v52 deploymentId:[(TRIExperimentDeployment *)v33 deploymentId] treatmentId:v59 fromFactorPackId:v55 resolvedPath:&v72];

          if (v34)
          {
            v35 = [TRITypedFactorProvider alloc];
            v53 = v34;
            v36 = [(TRITypedFactorProvider *)v35 initWithType:32 provider:v34 logDesc:v72];
            [v62 addObject:v36];

            v34 = v53;
          }

          v30 = v67;
          goto LABEL_46;
        }
      }

      else
      {
      }

      v38 = objc_alloc(MEMORY[0x277CCACA8]);
      v37 = [v38 initWithFormat:@"plplist at %@ contains unsupported provider chain element: %@", v77, v23];
      [(TRIActiveFactorProvidersParser *)self _faultOnceWithMessage:v37];
LABEL_49:

      v21 = v71 + 1;
      v20 = v62;
    }

    while (v60 != v71 + 1);
    v60 = [obj countByEnumeratingWithState:&v73 objects:v78 count:16];
    if (v60)
    {
      continue;
    }

    break;
  }

LABEL_51:

LABEL_52:
  v13 = v20;
LABEL_66:

LABEL_67:
LABEL_55:

LABEL_56:

  return v13;
}

- (id)resolveTargetedFactorPackSetForRolloutDeployment:(id)deployment
{
  deploymentCopy = deployment;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy_;
  v19 = __Block_byref_object_dispose_;
  v20 = 0;
  lock = self->_lock;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __83__TRIActiveFactorProvidersParser_resolveTargetedFactorPackSetForRolloutDeployment___block_invoke;
  v10[3] = &unk_27885E028;
  v13 = &v15;
  v7 = deploymentCopy;
  v11 = v7;
  selfCopy = self;
  v14 = a2;
  [(_PASLock *)lock runWithLockAcquired:v10];
  v8 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v8;
}

void __83__TRIActiveFactorProvidersParser_resolveTargetedFactorPackSetForRolloutDeployment___block_invoke(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3[3] objectForKeyedSubscript:*(a1 + 32)];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v7 = [*(*(a1 + 40) + 8) namespaceDescriptorsDir];
    v8 = objc_alloc(MEMORY[0x277CCACA8]);
    v9 = [*(a1 + 32) rolloutId];
    v10 = [v8 initWithFormat:@"v2/rolloutV2/%@/%d/%@", v9, objc_msgSend(*(a1 + 32), "deploymentId"), @"targetedFactorPackSet"];
    v11 = [v7 stringByAppendingPathComponent:v10];

    bzero(v31, 0x400uLL);
    *__error() = 0;
    v12 = [*(a1 + 40) _realpathWithFileSystemRepresentation:objc_msgSend(v11 buffer:{"fileSystemRepresentation"), v31}];
    if (v12)
    {
      v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v12];
      if (!v13)
      {
        v24 = [MEMORY[0x277CCA890] currentHandler];
        [v24 handleFailureInMethod:*(a1 + 56) object:*(a1 + 40) file:@"TRIActiveFactorProvidersParser.m" lineNumber:375 description:{@"Expression was unexpectedly nil/false: %@", @"[[NSString alloc] initWithUTF8String:expandedPath]"}];
      }

      v14 = [v13 lastPathComponent];
      v15 = TRIValidateFactorPackSetId(v14);
      if (v15)
      {
        v16 = [[TRIReferenceManagedDirReaderLock alloc] initWithDir:v13];
        if (v16)
        {
          v17 = v16;
          v18 = [[TRILockedFactorPackSet alloc] initWithFactorPackSetId:v15 path:v13 lock:v16];
          v19 = *(*(a1 + 48) + 8);
          v20 = *(v19 + 40);
          *(v19 + 40) = v18;

          [v3[3] setObject:*(*(*(a1 + 48) + 8) + 40) forKeyedSubscript:*(a1 + 32)];
        }
      }
    }

    else
    {
      if (*__error() == 2)
      {
LABEL_13:

        goto LABEL_14;
      }

      v13 = TRILogCategory_ClientFramework();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v21 = __error();
        v22 = strerror(*v21);
        v23 = *__error();
        *buf = 138412802;
        v26 = v11;
        v27 = 2080;
        v28 = v22;
        v29 = 1024;
        v30 = v23;
        _os_log_error_impl(&dword_22EA6B000, v13, OS_LOG_TYPE_ERROR, "Unable to resolve rollout deployment %@: %s (%d)", buf, 0x1Cu);
      }
    }

    goto LABEL_13;
  }

LABEL_14:
}

- (id)resolveTargetedFactorPackSetForExperimentDeployment:(id)deployment
{
  deploymentCopy = deployment;
  v6 = deploymentCopy;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy_;
  v19 = __Block_byref_object_dispose_;
  v20 = 0;
  if (deploymentCopy)
  {
    lock = self->_lock;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __86__TRIActiveFactorProvidersParser_resolveTargetedFactorPackSetForExperimentDeployment___block_invoke;
    v10[3] = &unk_27885E028;
    v13 = &v15;
    v11 = deploymentCopy;
    selfCopy = self;
    v14 = a2;
    [(_PASLock *)lock runWithLockAcquired:v10];
    v8 = v16[5];
  }

  else
  {
    v8 = 0;
  }

  _Block_object_dispose(&v15, 8);

  return v8;
}

void __86__TRIActiveFactorProvidersParser_resolveTargetedFactorPackSetForExperimentDeployment___block_invoke(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3[4] objectForKeyedSubscript:*(a1 + 32)];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v7 = [*(*(a1 + 40) + 8) namespaceDescriptorsDir];
    v8 = objc_alloc(MEMORY[0x277CCACA8]);
    v9 = [*(a1 + 32) experimentId];
    v10 = [v8 initWithFormat:@"v2/experiment/%@/%d/%@", v9, objc_msgSend(*(a1 + 32), "deploymentId"), @"targetedFactorPackSet"];
    v11 = [v7 stringByAppendingPathComponent:v10];

    bzero(v31, 0x400uLL);
    v12 = [*(a1 + 40) _realpathWithFileSystemRepresentation:objc_msgSend(v11 buffer:{"fileSystemRepresentation"), v31}];
    if (v12)
    {
      v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v12];
      if (!v13)
      {
        v24 = [MEMORY[0x277CCA890] currentHandler];
        [v24 handleFailureInMethod:*(a1 + 56) object:*(a1 + 40) file:@"TRIActiveFactorProvidersParser.m" lineNumber:419 description:{@"Expression was unexpectedly nil/false: %@", @"[[NSString alloc] initWithUTF8String:expandedPath]"}];
      }

      v14 = [v13 lastPathComponent];
      v15 = TRIValidateFactorPackSetId(v14);
      if (v15)
      {
        v16 = [[TRIReferenceManagedDirReaderLock alloc] initWithDir:v13];
        if (v16)
        {
          v17 = v16;
          v18 = [[TRILockedFactorPackSet alloc] initWithFactorPackSetId:v15 path:v13 lock:v16];
          v19 = *(*(a1 + 48) + 8);
          v20 = *(v19 + 40);
          *(v19 + 40) = v18;

          [v3[4] setObject:*(*(*(a1 + 48) + 8) + 40) forKeyedSubscript:*(a1 + 32)];
        }
      }
    }

    else
    {
      if (*__error() == 2)
      {
LABEL_13:

        goto LABEL_14;
      }

      v13 = TRILogCategory_ClientFramework();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v21 = __error();
        v22 = strerror(*v21);
        v23 = *__error();
        *buf = 138412802;
        v26 = v11;
        v27 = 2080;
        v28 = v22;
        v29 = 1024;
        v30 = v23;
        _os_log_error_impl(&dword_22EA6B000, v13, OS_LOG_TYPE_ERROR, "Unable to resolve experiment deployment %@: %s (%d)", buf, 0x1Cu);
      }
    }

    goto LABEL_13;
  }

LABEL_14:
}

- (id)resolveTargetedFactorPackSetForExperimentFactorsState:(id)state
{
  stateCopy = state;
  v6 = stateCopy;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy_;
  v20 = __Block_byref_object_dispose_;
  v21 = 0;
  if (stateCopy && ([stateCopy treatmentId], v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
  {
    lock = self->_lock;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __88__TRIActiveFactorProvidersParser_resolveTargetedFactorPackSetForExperimentFactorsState___block_invoke;
    v11[3] = &unk_27885E028;
    v14 = &v16;
    v12 = v6;
    selfCopy = self;
    v15 = a2;
    [(_PASLock *)lock runWithLockAcquired:v11];
    v9 = v17[5];
  }

  else
  {
    v9 = 0;
  }

  _Block_object_dispose(&v16, 8);

  return v9;
}

void __88__TRIActiveFactorProvidersParser_resolveTargetedFactorPackSetForExperimentFactorsState___block_invoke(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3[5] objectForKeyedSubscript:*(a1 + 32)];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v7 = [*(a1 + 40) _resolveTreatmentFactorPackSetIdMap];
    v8 = [*(a1 + 32) treatmentId];
    if (!v8)
    {
      v20 = [MEMORY[0x277CCA890] currentHandler];
      [v20 handleFailureInMethod:*(a1 + 56) object:*(a1 + 40) file:@"TRIActiveFactorProvidersParser.m" lineNumber:459 description:{@"Expression was unexpectedly nil/false: %@", @"experimentFactorsState.treatmentId"}];
    }

    v9 = [v7 objectForKeyedSubscript:v8];

    if (!v9)
    {
      v12 = TRILogCategory_ClientFramework();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v19 = *(a1 + 32);
        *buf = 138412290;
        v25 = v19;
        _os_log_error_impl(&dword_22EA6B000, v12, OS_LOG_TYPE_ERROR, "No FPS ID found trying to resolve factors state %@", buf, 0xCu);
      }

      goto LABEL_17;
    }

    v10 = [*(*(a1 + 40) + 8) namespaceDescriptorsDir];
    v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"v2/factorPackSets/%@", v9];
    v12 = [v10 stringByAppendingPathComponent:v11];

    bzero(buf, 0x400uLL);
    v13 = [*(a1 + 40) _realpathWithFileSystemRepresentation:-[NSObject fileSystemRepresentation](v12 buffer:{"fileSystemRepresentation"), buf}];
    if (v13)
    {
      v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v13];
      if (!v14)
      {
        v21 = [MEMORY[0x277CCA890] currentHandler];
        [v21 handleFailureInMethod:*(a1 + 56) object:*(a1 + 40) file:@"TRIActiveFactorProvidersParser.m" lineNumber:478 description:{@"Expression was unexpectedly nil/false: %@", @"[[NSString alloc] initWithUTF8String:expandedPath]"}];
      }

      v15 = [[TRIReferenceManagedDirReaderLock alloc] initWithDir:v14];
      if (v15)
      {
        v16 = [[TRILockedFactorPackSet alloc] initWithFactorPackSetId:v9 path:v14 lock:v15];
        v17 = *(*(a1 + 48) + 8);
        v18 = *(v17 + 40);
        *(v17 + 40) = v16;

        [v3[5] setObject:*(*(*(a1 + 48) + 8) + 40) forKeyedSubscript:*(a1 + 32)];
      }
    }

    else
    {
      if (*__error() == 2)
      {
LABEL_17:

        goto LABEL_18;
      }

      v14 = TRILogCategory_ClientFramework();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *v22 = 138412290;
        v23 = v12;
        _os_log_error_impl(&dword_22EA6B000, v14, OS_LOG_TYPE_ERROR, "Unable to resolve factor pack set path %@", v22, 0xCu);
      }
    }

    goto LABEL_17;
  }

LABEL_18:
}

- (id)factorProviderForNamespaceName:(id)name parentId:(id)id deploymentId:(int)deploymentId treatmentId:(id)treatmentId fromFactorPackSetWithDir:(id)dir resolvedPath:(id *)path
{
  v11 = *&deploymentId;
  v45[2] = *MEMORY[0x277D85DE8];
  nameCopy = name;
  idCopy = id;
  treatmentIdCopy = treatmentId;
  dirCopy = dir;
  nameCopy = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@/%@", @"factorPacks", nameCopy];
  v18 = [dirCopy stringByAppendingPathComponent:nameCopy];

  nameCopy2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@/%@", @"legacyNamespaceFactorPacks", nameCopy];
  v20 = [dirCopy stringByAppendingPathComponent:nameCopy2];

  v45[0] = v18;
  v45[1] = v20;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:2];
  v22 = [TRINamespaceResolver preferredPathForFactorDataWithCandidatePaths:v21];
  v23 = *path;
  *path = v22;

  memset(&v44, 0, sizeof(v44));
  if (lstat([*path fileSystemRepresentation], &v44) && *__error() == 2)
  {
    v24 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      lastPathComponent = [dirCopy lastPathComponent];
      *buf = 138413058;
      v37 = idCopy;
      v38 = 1024;
      v39 = v11;
      v40 = 2112;
      v41 = lastPathComponent;
      v42 = 2112;
      v43 = nameCopy;
      _os_log_impl(&dword_22EA6B000, v24, OS_LOG_TYPE_DEFAULT, "Deployment %@.%d resolves to factor pack set %@ with no factor pack for %@.", buf, 0x26u);
    }

    v26 = 0;
    v27 = treatmentIdCopy;
  }

  else
  {
    buf[0] = 0;
    v28 = [(TRIActiveFactorProvidersParser *)self _getFactorPackPathForNamespaceName:nameCopy withCandidatePath:*path parentId:idCopy deploymentId:v11 promotable:buf];
    v29 = *path;
    *path = v28;

    triStringByResolvingSymlinksInPath = [*path triStringByResolvingSymlinksInPath];
    v31 = [TRIFPNamespaceFactorProvider alloc];
    v27 = treatmentIdCopy;
    v32 = [(TRIFPNamespaceFactorProvider *)v31 initWithPath:*path parentId:idCopy deploymentId:v11 treatmentId:treatmentIdCopy promotable:buf[0]];
    if (!v32)
    {
      v33 = TRILogCategory_ClientFramework();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        v44.st_dev = 138412290;
        *&v44.st_mode = triStringByResolvingSymlinksInPath;
        _os_log_error_impl(&dword_22EA6B000, v33, OS_LOG_TYPE_ERROR, "Failed to open factor pack: %@", &v44, 0xCu);
      }
    }

    v26 = v32;
  }

  return v26;
}

- (id)globalFactorProviderForNamespaceName:(id)name parentId:(id)id deploymentId:(int)deploymentId treatmentId:(id)treatmentId fromFactorPackId:(id)packId resolvedPath:(id *)path
{
  v10 = *&deploymentId;
  v29 = *MEMORY[0x277D85DE8];
  paths = self->_paths;
  packIdCopy = packId;
  treatmentIdCopy = treatmentId;
  idCopy = id;
  nameCopy = name;
  v18 = [(TRIPaths *)paths treatmentsDirUsingGlobal:1];
  packIdCopy = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@/%@/%@", nameCopy, @"factorPacks", packIdCopy];

  v20 = [v18 stringByAppendingPathComponent:packIdCopy];
  v21 = *path;
  *path = v20;

  triStringByResolvingSymlinksInPath = [*path triStringByResolvingSymlinksInPath];
  v23 = [[TRIFPNamespaceFactorProvider alloc] initWithPath:*path parentId:idCopy deploymentId:v10 treatmentId:treatmentIdCopy promotable:1];

  v24 = TRILogCategory_ClientFramework();
  v25 = v24;
  if (v23)
  {
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v28 = triStringByResolvingSymlinksInPath;
      _os_log_impl(&dword_22EA6B000, v25, OS_LOG_TYPE_DEFAULT, "Factor provider found path to factor pack: %@", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v28 = triStringByResolvingSymlinksInPath;
    _os_log_error_impl(&dword_22EA6B000, v25, OS_LOG_TYPE_ERROR, "Failed to open factor pack: %@", buf, 0xCu);
  }

  return v23;
}

- (id)counterfactualFactorsStatesForNamespace:(id)namespace
{
  namespaceCopy = namespace;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy_;
  v27 = __Block_byref_object_dispose_;
  v28 = 0;
  v6 = [(TRIActiveFactorProvidersParser *)self resolvePropertyListFactorProviderChainForNamespaceName:namespaceCopy];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __74__TRIActiveFactorProvidersParser_counterfactualFactorsStatesForNamespace___block_invoke;
  v22[3] = &unk_27885E050;
  v22[5] = &v23;
  v22[6] = a2;
  v22[4] = self;
  [v6 enumerateObjectsUsingBlock:v22];
  if (v24[5])
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x3032000000;
    v19 = __Block_byref_object_copy_;
    v20 = __Block_byref_object_dispose_;
    v21 = 0;
    lock = self->_lock;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __74__TRIActiveFactorProvidersParser_counterfactualFactorsStatesForNamespace___block_invoke_2;
    v15[3] = &unk_27885E078;
    v15[4] = self;
    v15[5] = &v23;
    v15[6] = &v16;
    [(_PASLock *)lock runWithLockAcquired:v15];
    if (v17[5])
    {
      v8 = objc_opt_new();
      v9 = v17[5];
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __74__TRIActiveFactorProvidersParser_counterfactualFactorsStatesForNamespace___block_invoke_3;
      v12[3] = &unk_27885DF30;
      v10 = v8;
      v13 = v10;
      v14 = &v23;
      [v9 enumerateObjectsUsingBlock:v12];
    }

    else
    {
      v10 = objc_opt_new();
    }

    _Block_object_dispose(&v16, 8);
  }

  else
  {
    v10 = objc_opt_new();
  }

  _Block_object_dispose(&v23, 8);

  return v10;
}

void __74__TRIActiveFactorProvidersParser_counterfactualFactorsStatesForNamespace___block_invoke(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v16 = a2;
  if ([v16 type] == 32)
  {
    v6 = [v16 provider];
    v7 = [v6 experimentId];

    if (v7)
    {
      v8 = [TRIExperimentDeployment alloc];
      v9 = [v16 provider];
      v10 = [v9 experimentId];

      if (!v10)
      {
        v15 = [MEMORY[0x277CCA890] currentHandler];
        [v15 handleFailureInMethod:a1[6] object:a1[4] file:@"TRIActiveFactorProvidersParser.m" lineNumber:586 description:{@"Expression was unexpectedly nil/false: %@", @"factorProvider.provider.experimentId"}];
      }

      v11 = [v16 provider];
      v12 = -[TRIExperimentDeployment initWithExperimentId:deploymentId:](v8, "initWithExperimentId:deploymentId:", v10, [v11 deploymentId]);
      v13 = *(a1[5] + 8);
      v14 = *(v13 + 40);
      *(v13 + 40) = v12;

      *a4 = 1;
    }
  }
}

void __74__TRIActiveFactorProvidersParser_counterfactualFactorsStatesForNamespace___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) _resolveCounterfactualTreatmentsMap];
  v3 = [*(*(*(a1 + 40) + 8) + 40) experimentId];
  obj = [v2 objectForKeyedSubscript:v3];

  v4 = obj;
  if (obj)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), obj);
    v4 = obj;
  }
}

void __74__TRIActiveFactorProvidersParser_counterfactualFactorsStatesForNamespace___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [[TRIExperimentFactorsState alloc] initWithDeployment:*(*(*(a1 + 40) + 8) + 40) treatmentId:v4];

  [v3 addObject:v5];
}

- (id)experimentIdentifiersForNamespace:(id)namespace
{
  namespaceCopy = namespace;
  v12 = 0;
  v5 = [(TRIActiveFactorProvidersParser *)self _resolverPropertyListWithResolvedPath:&v12];
  if (!v5)
  {
    v6 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *v11 = 0;
      _os_log_impl(&dword_22EA6B000, v6, OS_LOG_TYPE_INFO, "No active factor provider found or it is empty.", v11, 2u);
    }

    goto LABEL_8;
  }

  v6 = [(TRIActiveFactorProvidersParser *)self _experimentIdForNamespace:namespaceCopy fromResolverList:v5];
  if (!v6)
  {
LABEL_8:
    v9 = 0;
    goto LABEL_13;
  }

  v7 = [(TRIActiveFactorProvidersParser *)self _deploymentIdForExperiment:v6 fromResolverList:v5];
  if (v7)
  {
    v8 = [(TRIActiveFactorProvidersParser *)self _treatmentIdForExperiment:v6 fromResolverList:v5];
    if (v8)
    {
      v9 = -[TRIExperimentIdentifiers initWithExperimentId:deploymentId:treatmentId:]([TRIExperimentIdentifiers alloc], "initWithExperimentId:deploymentId:treatmentId:", v6, [v7 intValue], v8);
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

LABEL_13:

  return v9;
}

- (id)_experimentIdForNamespace:(id)namespace fromResolverList:(id)list
{
  v33 = *MEMORY[0x277D85DE8];
  namespaceCopy = namespace;
  v7 = [list objectForKeyedSubscript:@"namespaceMap"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    [(TRIActiveFactorProvidersParser *)self _faultOnceWithMessage:@"plplist contains unexpected toplevel content."];
    v22 = 0;
    goto LABEL_25;
  }

  v8 = [v7 objectForKeyedSubscript:namespaceCopy];
  if (!v8)
  {
    goto LABEL_23;
  }

  v9 = 0x277CBE000uLL;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [(TRIActiveFactorProvidersParser *)self _faultOnceWithMessage:@"plplist contains non-array provider chain."];
    goto LABEL_23;
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = v8;
  v10 = [obj countByEnumeratingWithState:&v26 objects:v32 count:16];
  if (!v10)
  {
    goto LABEL_18;
  }

  v11 = v10;
  v12 = *v27;
  v23 = namespaceCopy;
  v24 = v8;
  while (2)
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v27 != v12)
      {
        objc_enumerationMutation(obj);
      }

      v14 = *(*(&v26 + 1) + 8 * i);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || [v14 count] != 2)
      {
        [(TRIActiveFactorProvidersParser *)self _faultOnceWithMessage:@"plplist contains bad provider chain."];
        v22 = 0;
        goto LABEL_29;
      }

      v15 = [v14 objectAtIndexedSubscript:0];
      if ([@"experiment" isEqual:v15])
      {
        [v14 objectAtIndexedSubscript:1];
        v16 = v12;
        v18 = v17 = v9;
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        v9 = v17;
        v12 = v16;

        if (isKindOfClass)
        {
          v22 = [v14 objectAtIndexedSubscript:1];
LABEL_29:

          namespaceCopy = v23;
          v8 = v24;
          goto LABEL_24;
        }
      }

      else
      {
      }
    }

    v11 = [obj countByEnumeratingWithState:&v26 objects:v32 count:16];
    namespaceCopy = v23;
    v8 = v24;
    if (v11)
    {
      continue;
    }

    break;
  }

LABEL_18:

  v20 = TRILogCategory_ClientFramework();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v31 = namespaceCopy;
    _os_log_impl(&dword_22EA6B000, v20, OS_LOG_TYPE_INFO, "Active factor provider does not contain experiment for %@:", buf, 0xCu);
  }

LABEL_23:
  v22 = 0;
LABEL_24:

LABEL_25:

  return v22;
}

- (id)_deploymentIdForExperiment:(id)experiment fromResolverList:(id)list
{
  experimentCopy = experiment;
  v7 = [list objectForKeyedSubscript:@"experimentDeployments"];
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = [v7 objectForKeyedSubscript:experimentCopy];
    if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v9 = v8;
    }

    else
    {
      [(TRIActiveFactorProvidersParser *)self _faultOnceWithMessage:@"plplist contains bad experiment deployment."];
      v9 = 0;
    }
  }

  else
  {
    [(TRIActiveFactorProvidersParser *)self _faultOnceWithMessage:@"plplist contains unexpected toplevel content."];
    v9 = 0;
  }

  return v9;
}

- (id)_treatmentIdForExperiment:(id)experiment fromResolverList:(id)list
{
  experimentCopy = experiment;
  v7 = [list objectForKeyedSubscript:@"experimentTreatments"];
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = [v7 objectForKeyedSubscript:experimentCopy];
    if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v9 = v8;
    }

    else
    {
      [(TRIActiveFactorProvidersParser *)self _faultOnceWithMessage:@"plplist contains experiment deployment with bad treatment ID."];
      v9 = 0;
    }
  }

  else
  {
    [(TRIActiveFactorProvidersParser *)self _faultOnceWithMessage:@"plplist contains unexpected toplevel content."];
    v9 = 0;
  }

  return v9;
}

- (id)_resolveTreatmentFactorPackSetIdMap
{
  v3 = objc_opt_new();
  v17 = 0;
  v4 = [(TRIActiveFactorProvidersParser *)self _resolverPropertyListWithResolvedPath:&v17];
  v5 = v4;
  if (!v4)
  {
    v8 = v3;
    goto LABEL_12;
  }

  v6 = [v4 objectForKeyedSubscript:@"treatmentFactorPackSetIds"];
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = objc_opt_new();
    if (!v7)
    {
LABEL_8:
      v11 = TRILogCategory_ClientFramework();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_22EA6B000, v11, OS_LOG_TYPE_DEFAULT, "Treatment to FPS mapping not present in plplist", buf, 2u);
      }

      v12 = v3;
      goto LABEL_11;
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_8;
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __69__TRIActiveFactorProvidersParser__resolveTreatmentFactorPackSetIdMap__block_invoke;
  v14[3] = &unk_27885E0A0;
  v14[4] = self;
  v9 = v3;
  v15 = v9;
  [v7 enumerateKeysAndObjectsUsingBlock:v14];
  v10 = v9;

LABEL_11:
LABEL_12:

  return v3;
}

void __69__TRIActiveFactorProvidersParser__resolveTreatmentFactorPackSetIdMap__block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v11 = a2;
  v7 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = TRIValidateFactorPackSetId(v7);
    if (v8)
    {
      [*(a1 + 40) setObject:v8 forKeyedSubscript:v11];
    }

    else
    {
      *a4 = 1;
    }
  }

  else
  {
    v9 = *(a1 + 32);
    v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"plplist contains experiment deployment with bad factor pack set ID: %@", v7];
    [v9 _faultOnceWithMessage:v10];

    *a4 = 1;
  }
}

- (id)_resolveCounterfactualTreatmentsMap
{
  v13 = *MEMORY[0x277D85DE8];
  v10 = 0;
  v2 = [(TRIActiveFactorProvidersParser *)self _resolverPropertyListWithResolvedPath:&v10];
  v3 = v2;
  if (!v2)
  {
    v6 = objc_opt_new();
    goto LABEL_12;
  }

  v4 = [v2 objectForKeyedSubscript:@"counterfactualTreatments"];
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = objc_opt_new();
    if (!v5)
    {
LABEL_8:
      v8 = TRILogCategory_ClientFramework();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v12 = v10;
        _os_log_impl(&dword_22EA6B000, v8, OS_LOG_TYPE_DEFAULT, "Counterfactuals treatments mapping does not exist in plplist: %@", buf, 0xCu);
      }

      v7 = objc_opt_new();
      goto LABEL_11;
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_8;
  }

  v7 = [v5 mutableCopy];
LABEL_11:
  v6 = v7;

LABEL_12:

  return v6;
}

- (id)_resolverPropertyListWithResolvedPath:(id *)path
{
  namespaceDescriptorsDir = [(TRIPaths *)self->_paths namespaceDescriptorsDir];
  v6 = [namespaceDescriptorsDir stringByAppendingPathComponent:@"v2/activeFactorProviders.plplist"];

  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy_;
  v21 = __Block_byref_object_dispose_;
  v22 = 0;
  lock = self->_lock;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __72__TRIActiveFactorProvidersParser__resolverPropertyListWithResolvedPath___block_invoke;
  v13[3] = &unk_27885E0C8;
  v8 = v6;
  v14 = v8;
  selfCopy = self;
  v16 = &v17;
  [(_PASLock *)lock runWithLockAcquired:v13];
  v9 = *path;
  *path = v8;
  v10 = v8;

  v11 = v18[5];
  _Block_object_dispose(&v17, 8);

  return v11;
}

void __72__TRIActiveFactorProvidersParser__resolverPropertyListWithResolvedPath___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3[1];
  if (v4)
  {
    goto LABEL_2;
  }

  *__error() = 0;
  if (access([*(a1 + 32) fileSystemRepresentation], 4))
  {
    if (*__error() == 1)
    {
      v5 = *(a1 + 40);
      v6 = objc_alloc(MEMORY[0x277CCACA8]);
      v7 = [*(*(a1 + 40) + 8) namespaceDescriptorsDir];
      v8 = [v6 initWithFormat:@"Cannot access %@ - Please ensure you have set the entitlement <key>com.apple.trial.client</key> to the right value(s)", v7];
      [v5 _faultOnceWithMessage:v8];

      goto LABEL_3;
    }

    if (*__error() == 2)
    {
      v9 = TRILogCategory_ClientFramework();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(a1 + 32);
        *buf = 138412290;
        v18 = v10;
        _os_log_impl(&dword_22EA6B000, v9, OS_LOG_TYPE_DEFAULT, "Namespace resolver file not present: %@", buf, 0xCu);
      }

LABEL_16:

      goto LABEL_3;
    }
  }

  v11 = *(a1 + 32);
  v16 = 0;
  v12 = [MEMORY[0x277D425D8] propertyListWithPath:v11 error:&v16];
  v9 = v16;
  v13 = v3[1];
  v3[1] = v12;

  if (!v3[1])
  {
    if ((v3[6] & 1) == 0)
    {
      v14 = TRILogCategory_ClientFramework();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = *(a1 + 32);
        *buf = 138412546;
        v18 = v15;
        v19 = 2112;
        v20 = v9;
        _os_log_error_impl(&dword_22EA6B000, v14, OS_LOG_TYPE_ERROR, "Error opening namespace resolver file %@: %@", buf, 0x16u);
      }

      *(v3 + 48) = 1;
    }

    goto LABEL_16;
  }

  v4 = v3[1];
LABEL_2:
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), v4);
LABEL_3:
}

- (id)_resolverPropertyListWithGlobalRolloutsResolvedPath:(id *)path
{
  v5 = [(TRIPaths *)self->_paths namespaceDescriptorsDirUsingGlobal:1];
  v6 = [v5 stringByAppendingPathComponent:@"v2/globalActiveFactorProviders.plplist"];

  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy_;
  v21 = __Block_byref_object_dispose_;
  v22 = 0;
  lock = self->_lock;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __86__TRIActiveFactorProvidersParser__resolverPropertyListWithGlobalRolloutsResolvedPath___block_invoke;
  v13[3] = &unk_27885E0C8;
  v8 = v6;
  v14 = v8;
  selfCopy = self;
  v16 = &v17;
  [(_PASLock *)lock runWithLockAcquired:v13];
  v9 = *path;
  *path = v8;
  v10 = v8;

  v11 = v18[5];
  _Block_object_dispose(&v17, 8);

  return v11;
}

void __86__TRIActiveFactorProvidersParser__resolverPropertyListWithGlobalRolloutsResolvedPath___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3[2];
  if (v4)
  {
    goto LABEL_2;
  }

  *__error() = 0;
  if (access([*(a1 + 32) fileSystemRepresentation], 4))
  {
    if (*__error() == 1)
    {
      v5 = *(a1 + 40);
      v6 = objc_alloc(MEMORY[0x277CCACA8]);
      v7 = [*(*(a1 + 40) + 8) namespaceDescriptorsDir];
      v8 = [v6 initWithFormat:@"Cannot access %@ - Please ensure you have set the entitlement <key>com.apple.trial.client</key> to the right value(s)", v7];
      [v5 _faultOnceWithMessage:v8];

      goto LABEL_3;
    }

    if (*__error() == 2)
    {
      v9 = TRILogCategory_ClientFramework();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(a1 + 32);
        *buf = 138412290;
        v18 = v10;
        _os_log_impl(&dword_22EA6B000, v9, OS_LOG_TYPE_DEFAULT, "Namespace resolver file not present: %@", buf, 0xCu);
      }

LABEL_16:

      goto LABEL_3;
    }
  }

  v11 = *(a1 + 32);
  v16 = 0;
  v12 = [MEMORY[0x277D425D8] propertyListWithPath:v11 error:&v16];
  v9 = v16;
  v13 = v3[2];
  v3[2] = v12;

  if (!v3[2])
  {
    if ((v3[6] & 1) == 0)
    {
      v14 = TRILogCategory_ClientFramework();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = *(a1 + 32);
        *buf = 138412546;
        v18 = v15;
        v19 = 2112;
        v20 = v9;
        _os_log_error_impl(&dword_22EA6B000, v14, OS_LOG_TYPE_ERROR, "Error opening namespace resolver file %@: %@", buf, 0x16u);
      }

      *(v3 + 48) = 1;
    }

    goto LABEL_16;
  }

  v4 = v3[2];
LABEL_2:
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), v4);
LABEL_3:
}

- (id)_getFactorPackPathForNamespaceName:(id)name withCandidatePath:(id)path parentId:(id)id deploymentId:(int)deploymentId promotable:(BOOL *)promotable
{
  v82 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  pathCopy = path;
  idCopy = id;
  *promotable = 1;
  triStringByResolvingSymlinksInPath = [pathCopy triStringByResolvingSymlinksInPath];
  v17 = triStringByResolvingSymlinksInPath;
  if (triStringByResolvingSymlinksInPath)
  {
    lastPathComponent = [triStringByResolvingSymlinksInPath lastPathComponent];
    v19 = TRIValidateFactorPackId(lastPathComponent);

    if (!v19)
    {
      v41 = TRILogCategory_ClientFramework();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v77 = v17;
        v78 = 2112;
        v79 = nameCopy;
        _os_log_error_impl(&dword_22EA6B000, v41, OS_LOG_TYPE_ERROR, "Could not validate factor pack id from %@ for namespace %@", buf, 0x16u);
      }

      v40 = pathCopy;
      goto LABEL_49;
    }

    deploymentIdCopy = deploymentId;
    v68 = nameCopy;
    v20 = [TRINamespaceResolver promotionDirForNamespaceName:nameCopy withPaths:self->_paths];
    v21 = [v20 stringByAppendingPathComponent:@"provisional.pb"];

    v74 = 0;
    v67 = v21;
    v22 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v21 options:0 error:&v74];
    v23 = v74;
    v24 = v23;
    v66 = v22;
    if (v22)
    {
      v73 = v23;
      v25 = [MEMORY[0x277D73BA0] parseFromData:v22 error:&v73];
      v65 = v73;

      if (!v25)
      {
        v46 = TRILogCategory_ClientFramework();
        v42 = v67;
        v45 = v65;
        if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412802;
          v77 = v67;
          v78 = 2112;
          v79 = v68;
          v80 = 2112;
          v81 = v65;
          _os_log_error_impl(&dword_22EA6B000, v46, OS_LOG_TYPE_ERROR, "Error parsing provisional file %@ for namespace %@: %@", buf, 0x20u);
        }

        v40 = pathCopy;
        goto LABEL_47;
      }

      v63 = idCopy;
      if (![v25 hasFactorPackId] || (objc_msgSend(v25, "factorPackId"), v62 = v25, v26 = objc_claimAutoreleasedReturnValue(), v27 = objc_msgSend(v26, "isEqualToString:", v19), v26, v25 = v62, (v27 & 1) == 0))
      {
        v40 = pathCopy;
        idCopy = v63;
        v42 = v67;
        v45 = v65;
LABEL_47:

        v24 = v45;
        goto LABEL_48;
      }

      v75[0] = @"promoted";
      v75[1] = @"legacyPromoted";
      v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v75 count:2];
      v70[0] = MEMORY[0x277D85DD0];
      v70[1] = 3221225472;
      v70[2] = __120__TRIActiveFactorProvidersParser__getFactorPackPathForNamespaceName_withCandidatePath_parentId_deploymentId_promotable___block_invoke;
      v70[3] = &unk_27885E0F0;
      v61 = v68;
      v71 = v61;
      selfCopy = self;
      v29 = [v28 _pas_mappedArrayWithTransform:v70];

      v30 = [TRINamespaceResolver preferredPathForFactorDataWithCandidatePaths:v29];

      defaultManager = [MEMORY[0x277CCAA00] defaultManager];
      v32 = v30;
      if (!v32)
      {
        currentHandler = [MEMORY[0x277CCA890] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"TRIActiveFactorProvidersParser.m" lineNumber:968 description:{@"Expression was unexpectedly nil/false: %@", @"promotedPath"}];
      }

      v33 = [defaultManager fileExistsAtPath:v32];

      v34 = v32;
      if ((v33 & 1) == 0)
      {
        v40 = pathCopy;
        v25 = v62;
        idCopy = v63;
        v42 = v67;
        v45 = v65;
LABEL_46:

        goto LABEL_47;
      }

      triStringByResolvingSymlinksInPath2 = [v32 triStringByResolvingSymlinksInPath];
      v36 = triStringByResolvingSymlinksInPath2;
      v25 = v62;
      if (!triStringByResolvingSymlinksInPath2)
      {
        v48 = TRILogCategory_ClientFramework();
        v45 = v65;
        if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412802;
          v77 = v34;
          v78 = 2112;
          v79 = v61;
          v80 = 2112;
          v81 = v65;
          _os_log_error_impl(&dword_22EA6B000, v48, OS_LOG_TYPE_ERROR, "Could not resolve symlink at %@ for namespace %@: %@", buf, 0x20u);
        }

        v40 = pathCopy;
        idCopy = v63;
        v42 = v67;
        goto LABEL_45;
      }

      lastPathComponent2 = [triStringByResolvingSymlinksInPath2 lastPathComponent];
      v38 = TRIValidateFactorPackId(lastPathComponent2);

      v60 = v38;
      if (!v38)
      {
        v49 = TRILogCategory_ClientFramework();
        idCopy = v63;
        v42 = v67;
        v45 = v65;
        if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v77 = v36;
          v78 = 2112;
          v79 = v61;
          _os_log_error_impl(&dword_22EA6B000, v49, OS_LOG_TYPE_ERROR, "Could not validate factor pack id from %@ for namespace %@", buf, 0x16u);
        }

        v50 = pathCopy;
        goto LABEL_44;
      }

      idCopy = v63;
      if ([v38 isEqualToString:v19])
      {
        *promotable = 0;
      }

      else if ([v62 hasAttempts] && objc_msgSend(v62, "attempts") >= 5)
      {
        *promotable = 0;
        if (!+[TRIProcessInfo hostingProcessIsTriald])
        {
          v45 = v65;
          if (+[TRIProcessInfo hostingProcessIsTrialdSystem])
          {
            v50 = v34;
            idCopy = v63;
          }

          else
          {
            idCopy = v63;
            if (![v62 hasRejected] || (objc_msgSend(v62, "rejected") & 1) == 0)
            {
              v59 = v34;
              v52 = [TRIRolloutDeployment deploymentWithRolloutId:v63 deploymentId:deploymentIdCopy];
              v53 = TRILogCategory_ClientFramework();
              if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412802;
                v77 = v19;
                v78 = 2112;
                v79 = v52;
                v80 = 2112;
                v81 = v61;
                _os_log_error_impl(&dword_22EA6B000, v53, OS_LOG_TYPE_ERROR, "Rejecting factor pack id %@ from rollout deployment %@ for namespace %@", buf, 0x20u);
              }

              v54 = objc_opt_new();
              v69 = v65;
              v55 = [v54 rejectFactorPackId:v19 forNamespaceName:v61 rolloutDeployment:v52 error:&v69];
              v56 = v69;

              v42 = v67;
              if ((v55 & 1) == 0)
              {
                v57 = TRILogCategory_ClientFramework();
                if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412546;
                  v77 = v19;
                  v78 = 2112;
                  v79 = v61;
                  _os_log_error_impl(&dword_22EA6B000, v57, OS_LOG_TYPE_ERROR, "Could not note factor pack id %@ rejected for namespace %@", buf, 0x16u);
                }
              }

              v50 = v59;
              v45 = v56;
              v34 = v59;
              v25 = v62;
              idCopy = v63;
              goto LABEL_44;
            }

            v50 = v34;
          }

          v42 = v67;
LABEL_44:
          v40 = v50;

LABEL_45:
          goto LABEL_46;
        }

        v50 = v34;
        idCopy = v63;
LABEL_43:
        v42 = v67;
        v45 = v65;
        goto LABEL_44;
      }

      v50 = pathCopy;
      goto LABEL_43;
    }

    v42 = v67;
    if (v23)
    {
      domain = [v23 domain];
      if ([domain isEqualToString:*MEMORY[0x277CCA050]])
      {
        code = [v24 code];

        if (code == 260)
        {
LABEL_32:
          v40 = pathCopy;
LABEL_48:

          nameCopy = v68;
LABEL_49:

          goto LABEL_50;
        }
      }

      else
      {
      }
    }

    v47 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v77 = v67;
      v78 = 2112;
      v79 = v68;
      v80 = 2112;
      v81 = v24;
      _os_log_error_impl(&dword_22EA6B000, v47, OS_LOG_TYPE_ERROR, "Error opening provisional file %@ for namespace %@: %@", buf, 0x20u);
    }

    goto LABEL_32;
  }

  v39 = TRILogCategory_ClientFramework();
  if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    v77 = pathCopy;
    v78 = 2112;
    v79 = nameCopy;
    _os_log_error_impl(&dword_22EA6B000, v39, OS_LOG_TYPE_ERROR, "Could not resolved symlink at %@ for namespace %@", buf, 0x16u);
  }

  v40 = pathCopy;
LABEL_50:

  return v40;
}

id __120__TRIActiveFactorProvidersParser__getFactorPackPathForNamespaceName_withCandidatePath_parentId_deploymentId_promotable___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 8);
  v4 = a2;
  v5 = [TRINamespaceResolver promotionDirForNamespaceName:v2 withPaths:v3];
  v6 = [v5 stringByAppendingPathComponent:v4];

  return v6;
}

- (void)_faultOnceWithMessage:(id)message
{
  messageCopy = message;
  lock = self->_lock;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__TRIActiveFactorProvidersParser__faultOnceWithMessage___block_invoke;
  v7[3] = &unk_27885E118;
  v8 = messageCopy;
  v6 = messageCopy;
  [(_PASLock *)lock runWithLockAcquired:v7];
}

void __56__TRIActiveFactorProvidersParser__faultOnceWithMessage___block_invoke(uint64_t a1, _BYTE *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  if ((a2[48] & 1) == 0)
  {
    v4 = a2;
    v5 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v7 = 138412290;
      v8 = v6;
      _os_log_error_impl(&dword_22EA6B000, v5, OS_LOG_TYPE_ERROR, "%@", &v7, 0xCu);
    }

    a2[48] = 1;
  }
}

- (char)_realpathWithFileSystemRepresentation:(const char *)representation buffer:(char *)buffer
{
  *__error() = 0;

  return realpath_DARWIN_EXTSN(representation, buffer);
}

@end