@interface SSTrialManager
+ (BOOL)didAllNamespacesLoadForClient:(id)client;
+ (BOOL)isValidNamespace:(unsigned int)namespace forClient:(id)client;
+ (id)currentTrialManagerForClient:(id)client;
+ (id)getTTRLogsForClient:(id)client;
+ (id)resolveMultipleSpotlightExperiments;
+ (id)sharedSpotlightKnowledgeTrialClient;
+ (id)sharedSpotlightKnowledgeTrialManager;
+ (id)sharedSpotlightMailTrialManager;
+ (id)sharedSpotlightModelTrialManager;
+ (id)sharedSpotlightPolicyTrialManager;
+ (id)sharedSpotlightRankingTrialManager;
+ (id)sharedSpotlightTrialClient;
+ (id)sharedSpotlightUITrialManager;
+ (id)trialManagerForNamespaceId:(id)id;
+ (void)resolveMultipleSpotlightExperiments;
+ (void)setTrialOverridePath;
+ (void)setTrialUpdateHandler:(id)handler;
- (SSTrialManager)initWithNameSpace:(unsigned int)space forClient:(id)client;
- (id)description;
- (id)getFactorDictionary;
- (id)getLevelForFactor:(id)factor;
- (void)loadWithUpdateHandler:(id)handler;
@end

@implementation SSTrialManager

void __38__SSTrialManager_setTrialOverridePath__block_invoke()
{
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  v6 = [v0 stringForKey:@"com.apple.triald.namespacedescriptor.path"];

  v1 = MEMORY[0x1E696AEC0];
  if (v6)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/devOverride/", v6];
    v3 = sTrialOverrideDirectoryPath;
    sTrialOverrideDirectoryPath = v2;
  }

  else
  {
    v3 = NSHomeDirectory();
    v4 = [v1 stringWithFormat:@"%@/Library/Trial/NamespaceDescriptors/devOverride/", v3];
    v5 = sTrialOverrideDirectoryPath;
    sTrialOverrideDirectoryPath = v4;
  }
}

+ (void)setTrialOverridePath
{
  if (setTrialOverridePath_onceToken != -1)
  {
    +[SSTrialManager setTrialOverridePath];
  }
}

+ (id)sharedSpotlightRankingTrialManager
{
  if (sharedSpotlightRankingTrialManager_onceToken != -1)
  {
    +[SSTrialManager sharedSpotlightRankingTrialManager];
  }

  v3 = sharedSpotlightRankingTrialManager_trialRankingManager;

  return v3;
}

uint64_t __52__SSTrialManager_sharedSpotlightRankingTrialManager__block_invoke(uint64_t a1)
{
  result = trialFlagsForProcess(a1);
  if (result)
  {
    sharedSpotlightRankingTrialManager_trialRankingManager = [[SSTrialManager alloc] initWithNameSpace:334 forClient:@"Spotlight"];

    return MEMORY[0x1EEE66BB8]();
  }

  return result;
}

+ (id)sharedSpotlightModelTrialManager
{
  if (sharedSpotlightModelTrialManager_onceToken != -1)
  {
    +[SSTrialManager sharedSpotlightModelTrialManager];
  }

  v3 = sharedSpotlightModelTrialManager_trialModelManager;

  return v3;
}

uint64_t __50__SSTrialManager_sharedSpotlightModelTrialManager__block_invoke(uint64_t a1)
{
  result = trialFlagsForProcess(a1);
  if (result)
  {
    sharedSpotlightModelTrialManager_trialModelManager = [[SSTrialManager alloc] initWithNameSpace:332 forClient:@"Spotlight"];

    return MEMORY[0x1EEE66BB8]();
  }

  return result;
}

+ (id)sharedSpotlightTrialClient
{
  if (sharedSpotlightTrialClient_onceToken != -1)
  {
    +[SSTrialManager sharedSpotlightTrialClient];
  }

  v3 = sharedSpotlightTrialClient_trialClient;

  return v3;
}

uint64_t __44__SSTrialManager_sharedSpotlightTrialClient__block_invoke(uint64_t a1)
{
  result = trialFlagsForProcess(a1);
  if ((result & 5) != 0)
  {
    sharedSpotlightTrialClient_trialClient = [MEMORY[0x1E69DB518] clientWithIdentifier:232];

    return MEMORY[0x1EEE66BB8]();
  }

  return result;
}

+ (id)sharedSpotlightUITrialManager
{
  if (sharedSpotlightUITrialManager_onceToken != -1)
  {
    +[SSTrialManager sharedSpotlightUITrialManager];
  }

  v3 = sharedSpotlightUITrialManager_trialUIManager;

  return v3;
}

uint64_t __47__SSTrialManager_sharedSpotlightUITrialManager__block_invoke(uint64_t a1)
{
  result = trialFlagsForProcess(a1);
  if (result)
  {
    sharedSpotlightUITrialManager_trialUIManager = [[SSTrialManager alloc] initWithNameSpace:333 forClient:@"Spotlight"];

    return MEMORY[0x1EEE66BB8]();
  }

  return result;
}

+ (id)sharedSpotlightMailTrialManager
{
  if (sharedSpotlightMailTrialManager_onceToken != -1)
  {
    +[SSTrialManager sharedSpotlightMailTrialManager];
  }

  v3 = sharedSpotlightMailTrialManager_trialMailManager;

  return v3;
}

uint64_t __49__SSTrialManager_sharedSpotlightMailTrialManager__block_invoke(uint64_t a1)
{
  result = trialFlagsForProcess(a1);
  if ((result & 4) != 0)
  {
    sharedSpotlightMailTrialManager_trialMailManager = [[SSTrialManager alloc] initWithNameSpace:337 forClient:@"Mail"];

    return MEMORY[0x1EEE66BB8]();
  }

  return result;
}

+ (id)resolveMultipleSpotlightExperiments
{
  v27 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&sTrialLock);
  if (sCurrentActiveTrialManagers)
  {
    v2 = [sCurrentActiveTrialManagers count];
    if (v2 >= 2)
    {
      v3 = SRLogCategoryTrial(v2);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        +[(SSTrialManager *)v3];
      }
    }

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v4 = [&unk_1F2427BD8 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v22;
      while (2)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v22 != v6)
          {
            objc_enumerationMutation(&unk_1F2427BD8);
          }

          v8 = *(*(&v21 + 1) + 8 * i);
          v9 = [sCurrentActiveTrialManagers objectForKeyedSubscript:v8];
          if (v9)
          {
            v10 = v9;
            v11 = SRLogCategoryTrial(v9);
            if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
            {
              [(SSTrialManager *)v8 resolveMultipleSpotlightExperiments:v11];
            }

            goto LABEL_18;
          }
        }

        v5 = [&unk_1F2427BD8 countByEnumeratingWithState:&v21 objects:v26 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

    v10 = 0;
LABEL_18:
    os_unfair_lock_unlock(&sTrialLock);
  }

  else
  {
    os_unfair_lock_unlock(&sTrialLock);
    v19 = SRLogCategoryTrial(v18);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1AE58E000, v19, OS_LOG_TYPE_INFO, "No active Spotlight experiment on device", buf, 2u);
    }

    v10 = 0;
  }

  return v10;
}

+ (void)setTrialUpdateHandler:(id)handler
{
  sTrialUpdateHandler_0 = MEMORY[0x1B2704E40](handler, a2);

  MEMORY[0x1EEE66BB8]();
}

+ (id)sharedSpotlightKnowledgeTrialClient
{
  if (sharedSpotlightKnowledgeTrialClient_onceToken != -1)
  {
    +[SSTrialManager sharedSpotlightKnowledgeTrialClient];
  }

  v3 = sharedSpotlightKnowledgeTrialClient_trialClient;

  return v3;
}

uint64_t __53__SSTrialManager_sharedSpotlightKnowledgeTrialClient__block_invoke(uint64_t a1)
{
  result = trialFlagsForProcess(a1);
  if ((result & 2) != 0)
  {
    sharedSpotlightKnowledgeTrialClient_trialClient = [MEMORY[0x1E69DB518] clientWithIdentifier:268];

    return MEMORY[0x1EEE66BB8]();
  }

  return result;
}

+ (BOOL)isValidNamespace:(unsigned int)namespace forClient:(id)client
{
  clientCopy = client;
  if ([clientCopy isEqualToString:@"Spotlight"])
  {
    v6 = (namespace & 0xFFFFFFFC) == 332;
    goto LABEL_5;
  }

  if ([clientCopy isEqualToString:@"SpotlightKnowledge"])
  {
    v6 = namespace == 336;
LABEL_5:
    v7 = v6;
    goto LABEL_11;
  }

  v8 = [clientCopy isEqualToString:@"Mail"];
  if (namespace == 337)
  {
    v7 = v8;
  }

  else
  {
    v7 = 0;
  }

LABEL_11:

  return v7;
}

- (SSTrialManager)initWithNameSpace:(unsigned int)space forClient:(id)client
{
  v5 = *&space;
  clientCopy = client;
  if ([SSTrialManager isValidNamespace:v5 forClient:clientCopy])
  {
    v8 = [clientCopy isEqualToString:@"Spotlight"];
    v9 = [clientCopy isEqualToString:@"SpotlightKnowledge"];
    v10 = [clientCopy isEqualToString:@"Mail"];
    if ((v8 & 1) != 0 || (v9 & 1) != 0 || v10)
    {
      v50.receiver = self;
      v50.super_class = SSTrialManager;
      self = [(SSTrialManager *)&v50 init];
      if (self)
      {
        if (v9)
        {
          +[SSTrialManager sharedSpotlightKnowledgeTrialClient];
        }

        else
        {
          +[SSTrialManager sharedSpotlightTrialClient];
        }
        v13 = ;
        trialClient = self->_trialClient;
        self->_trialClient = v13;

        if (!self->_trialClient)
        {
          v35 = SRLogCategoryTrial(v15);
          if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
          {
            [SSTrialManager initWithNameSpace:clientCopy forClient:v35];
          }

          goto LABEL_5;
        }

        objc_storeStrong(&self->_client, client);
        v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", v5];
        namespaceId = self->_namespaceId;
        self->_namespaceId = v16;

        v18 = [MEMORY[0x1E69DB548] namespaceNameFromId:v5];
        namespaceName = self->_namespaceName;
        self->_namespaceName = v18;

        self->_wasLoadedSinceLaunch = 0;
        os_unfair_lock_lock(&sTrialLock);
        v20 = sTrialManagerInstances;
        if (!sTrialManagerInstances)
        {
          dictionary = [MEMORY[0x1E695DF90] dictionary];
          v22 = sTrialManagerInstances;
          sTrialManagerInstances = dictionary;

          v20 = sTrialManagerInstances;
        }

        v23 = [v20 objectForKeyedSubscript:clientCopy];

        if (!v23)
        {
          array = [MEMORY[0x1E695DF70] array];
          [sTrialManagerInstances setObject:array forKeyedSubscript:clientCopy];
        }

        v25 = [sTrialManagerInstances objectForKeyedSubscript:clientCopy];
        [v25 addObject:self];

        os_unfair_lock_unlock(&sTrialLock);
        v26 = [(TRIClient *)self->_trialClient experimentIdentifiersWithNamespaceName:self->_namespaceName];
        v27 = v26;
        if (v26)
        {
          self->_hasActiveExperiment = 1;
          experimentId = [v26 experimentId];
          experimentId = self->_experimentId;
          self->_experimentId = experimentId;

          treatmentId = [v27 treatmentId];
          treatmentId = self->_treatmentId;
          self->_treatmentId = treatmentId;

          self->_experimentDeploymentId = [v27 deploymentId];
          if (v8)
          {
            os_unfair_lock_lock(&sTrialLock);
            v32 = sCurrentActiveTrialManagers;
            if (!sCurrentActiveTrialManagers)
            {
              dictionary2 = [MEMORY[0x1E695DF90] dictionary];
              v34 = sCurrentActiveTrialManagers;
              sCurrentActiveTrialManagers = dictionary2;

              v32 = sCurrentActiveTrialManagers;
            }

            [v32 setObject:self forKey:self->_namespaceId];
            os_unfair_lock_unlock(&sTrialLock);
          }
        }

        else
        {
          self->_hasActiveExperiment = 0;
          v36 = self->_experimentId;
          self->_experimentId = 0;

          v37 = self->_treatmentId;
          self->_treatmentId = 0;

          self->_experimentDeploymentId = -1;
        }

        v38 = [(TRIClient *)self->_trialClient rolloutIdentifiersWithNamespaceName:self->_namespaceName];
        v39 = v38;
        if (v38)
        {
          self->_hasRollout = 1;
          rolloutId = [v38 rolloutId];
          rolloutId = self->_rolloutId;
          self->_rolloutId = rolloutId;

          deploymentId = [v39 deploymentId];
        }

        else
        {
          self->_hasRollout = 0;
          v43 = self->_rolloutId;
          self->_rolloutId = 0;

          deploymentId = -1;
        }

        self->_rolloutDeploymentId = deploymentId;
        objc_initWeak(&location, self);
        v44 = self->_trialClient;
        v45 = self->_namespaceName;
        v47[0] = MEMORY[0x1E69E9820];
        v47[1] = 3221225472;
        v47[2] = __46__SSTrialManager_initWithNameSpace_forClient___block_invoke;
        v47[3] = &unk_1E7A2B0B0;
        objc_copyWeak(&v48, &location);
        v46 = [(TRIClient *)v44 addUpdateHandlerForNamespaceName:v45 usingBlock:v47];
        objc_destroyWeak(&v48);
        objc_destroyWeak(&location);
      }

      self = self;
      selfCopy = self;
      goto LABEL_6;
    }
  }

LABEL_5:
  selfCopy = 0;
LABEL_6:

  return selfCopy;
}

void __46__SSTrialManager_initWithNameSpace_forClient___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (!sTrialUpdateHandler_0)
  {
    v3 = SRLogCategoryTrial(WeakRetained);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __46__SSTrialManager_initWithNameSpace_forClient___block_invoke_cold_1(v2, v3);
    }
  }

  [v2 loadWithUpdateHandler:?];
}

+ (id)sharedSpotlightPolicyTrialManager
{
  if (sharedSpotlightPolicyTrialManager_onceToken != -1)
  {
    +[SSTrialManager sharedSpotlightPolicyTrialManager];
  }

  v3 = sharedSpotlightPolicyTrialManager_trialPolicyManager;

  return v3;
}

uint64_t __51__SSTrialManager_sharedSpotlightPolicyTrialManager__block_invoke(uint64_t a1)
{
  result = trialFlagsForProcess(a1);
  if (result)
  {
    sharedSpotlightPolicyTrialManager_trialPolicyManager = [[SSTrialManager alloc] initWithNameSpace:335 forClient:@"Spotlight"];

    return MEMORY[0x1EEE66BB8]();
  }

  return result;
}

+ (id)sharedSpotlightKnowledgeTrialManager
{
  if (sharedSpotlightKnowledgeTrialManager_onceToken != -1)
  {
    +[SSTrialManager sharedSpotlightKnowledgeTrialManager];
  }

  v3 = sharedSpotlightKnowledgeTrialManager_trialKnowledgeManager;

  return v3;
}

uint64_t __54__SSTrialManager_sharedSpotlightKnowledgeTrialManager__block_invoke(uint64_t a1)
{
  result = trialFlagsForProcess(a1);
  if ((result & 2) != 0)
  {
    sharedSpotlightKnowledgeTrialManager_trialKnowledgeManager = [[SSTrialManager alloc] initWithNameSpace:336 forClient:@"SpotlightKnowledge"];

    return MEMORY[0x1EEE66BB8]();
  }

  return result;
}

+ (id)currentTrialManagerForClient:(id)client
{
  clientCopy = client;
  if ([clientCopy isEqualToString:@"Spotlight"])
  {
    v4 = +[SSTrialManager resolveMultipleSpotlightExperiments];
  }

  else if ([clientCopy isEqualToString:@"Mail"])
  {
    v4 = +[SSTrialManager sharedSpotlightMailTrialManager];
  }

  else
  {
    v5 = [clientCopy isEqualToString:@"SpotlightKnowledge"];
    if (!v5)
    {
      v8 = SRLogCategoryTrial(v5);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [SSTrialManager currentTrialManagerForClient:v8];
      }

      v6 = 0;
      goto LABEL_14;
    }

    v4 = +[SSTrialManager sharedSpotlightKnowledgeTrialManager];
  }

  v6 = v4;
  if (!v4)
  {
LABEL_14:
    v7 = 0;
    goto LABEL_15;
  }

  if ([v4 hasActiveExperiment])
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

LABEL_15:
  v9 = v7;

  return v7;
}

- (id)getFactorDictionary
{
  pthread_rwlock_wrlock(&sTrialCacheLock);
  v3 = [(NSDictionary *)self->_cachedValuesForFactor copy];
  pthread_rwlock_unlock(&sTrialCacheLock);

  return v3;
}

- (id)description
{
  v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:5];
  v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"client=%@", self->_client];
  [v3 addObject:v4];

  v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"namespace=%@", self->_namespaceId];
  [v3 addObject:v5];

  v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"experiment id=%@", self->_experimentId];
  [v3 addObject:v6];

  v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"treatment id=%@", self->_treatmentId];
  [v3 addObject:v7];

  v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"rollout id=%@", self->_rolloutId];
  [v3 addObject:v8];

  v9 = objc_alloc(MEMORY[0x1E696AEC0]);
  getFactorDictionary = [(SSTrialManager *)self getFactorDictionary];
  v11 = [v9 initWithFormat:@"factor dictionary=%@", getFactorDictionary];
  [v3 addObject:v11];

  v12 = objc_alloc(MEMORY[0x1E696AEC0]);
  v13 = objc_opt_class();
  v14 = [v3 componentsJoinedByString:{@", "}];
  v15 = [v12 initWithFormat:@"<%@:%p; %@>", v13, self, v14];

  return v15;
}

+ (id)getTTRLogsForClient:(id)client
{
  v19 = *MEMORY[0x1E69E9840];
  clientCopy = client;
  os_unfair_lock_lock(&sTrialLock);
  if (sTrialManagerInstances)
  {
    v4 = [sTrialManagerInstances objectForKeyedSubscript:clientCopy];

    if (v4)
    {
      v5 = [sTrialManagerInstances objectForKeyedSubscript:clientCopy];
      v4 = [v5 copy];
    }
  }

  else
  {
    v4 = 0;
  }

  os_unfair_lock_unlock(&sTrialLock);
  if ([v4 count])
  {
    v6 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"\nTrial A/B info:\n"];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = v4;
    v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v14 + 1) + 8 * i) description];
          [v6 appendFormat:@"%@\n", v12];
        }

        v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v9);
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)getLevelForFactor:(id)factor
{
  factorCopy = factor;
  v5 = [factorCopy isEqualToString:@"codepathIDs"];
  if (v5)
  {
    v6 = SRLogCategoryTrial(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [SSTrialManager getLevelForFactor:];
    }
  }

  if (self->_hasActiveExperiment || self->_hasRollout || self->_hasOverride)
  {
    pthread_rwlock_rdlock(&sTrialCacheLock);
    v7 = [(NSDictionary *)self->_cachedValuesForFactor objectForKey:factorCopy];
    v8 = pthread_rwlock_unlock(&sTrialCacheLock);
    if (v7)
    {
      goto LABEL_13;
    }

    v9 = SRLogCategoryTrial(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [(SSTrialManager *)factorCopy getLevelForFactor:v9, v10, v11, v12, v13, v14, v15];
    }
  }

  v7 = 0;
LABEL_13:

  return v7;
}

- (void)loadWithUpdateHandler:(id)handler
{
  v82 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v5 = SRLogCategoryTrial([(TRIClient *)self->_trialClient refresh]);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [SSTrialManager loadWithUpdateHandler:];
  }

  v7 = SRLogCategoryTrial(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [(SSTrialManager *)self loadWithUpdateHandler:v7];
  }

  v8 = [(TRIClient *)self->_trialClient experimentIdentifiersWithNamespaceName:self->_namespaceName];
  v62 = v8;
  if (v8)
  {
    v9 = v8;
    self->_hasActiveExperiment = 1;
    experimentId = [v8 experimentId];
    experimentId = self->_experimentId;
    self->_experimentId = experimentId;

    treatmentId = [v9 treatmentId];
    treatmentId = self->_treatmentId;
    self->_treatmentId = treatmentId;

    self->_experimentDeploymentId = [v9 deploymentId];
    if (![(NSString *)self->_client isEqualToString:@"Spotlight"])
    {
      goto LABEL_16;
    }

    os_unfair_lock_lock(&sTrialLock);
    v14 = sCurrentActiveTrialManagers;
    if (!sCurrentActiveTrialManagers)
    {
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      v16 = sCurrentActiveTrialManagers;
      sCurrentActiveTrialManagers = dictionary;

      v14 = sCurrentActiveTrialManagers;
    }

    v17 = [v14 objectForKeyedSubscript:self->_namespaceId];

    if (!v17)
    {
      [sCurrentActiveTrialManagers setObject:self forKey:self->_namespaceId];
    }
  }

  else
  {
    self->_hasActiveExperiment = 0;
    v18 = self->_experimentId;
    self->_experimentId = 0;

    v19 = self->_treatmentId;
    self->_treatmentId = 0;

    self->_experimentDeploymentId = -1;
    if (![(NSString *)self->_client isEqualToString:@"Spotlight"])
    {
      goto LABEL_16;
    }

    os_unfair_lock_lock(&sTrialLock);
    if (sCurrentActiveTrialManagers)
    {
      v20 = [sCurrentActiveTrialManagers objectForKeyedSubscript:self->_namespaceId];

      if (v20)
      {
        [sCurrentActiveTrialManagers removeObjectForKey:self->_namespaceId];
      }
    }
  }

  os_unfair_lock_unlock(&sTrialLock);
LABEL_16:
  v21 = [(TRIClient *)self->_trialClient factorLevelsWithNamespaceName:self->_namespaceName];
  v22 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v21, "count")}];
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v23 = v21;
  v24 = [v23 countByEnumeratingWithState:&v68 objects:v81 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v69;
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v69 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = *(*(&v68 + 1) + 8 * i);
        factor = [v28 factor];
        name = [factor name];

        level = [v28 level];
        [v22 setObject:level forKey:name];
      }

      v25 = [v23 countByEnumeratingWithState:&v68 objects:v81 count:16];
    }

    while (v25);
  }

  pthread_rwlock_wrlock(&sTrialCacheLock);
  v32 = [v22 copy];
  cachedValuesForFactor = self->_cachedValuesForFactor;
  self->_cachedValuesForFactor = v32;

  pthread_rwlock_unlock(&sTrialCacheLock);
  v34 = [(TRIClient *)self->_trialClient rolloutIdentifiersWithNamespaceName:self->_namespaceName];
  v35 = v34;
  if (v34)
  {
    self->_hasRollout = 1;
    rolloutId = [v34 rolloutId];
    rolloutId = self->_rolloutId;
    self->_rolloutId = rolloutId;

    deploymentId = [v35 deploymentId];
  }

  else
  {
    self->_hasRollout = 0;
    v39 = self->_rolloutId;
    self->_rolloutId = 0;

    deploymentId = -1;
  }

  self->_rolloutDeploymentId = deploymentId;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v67 = 0;
  v41 = [defaultManager contentsOfDirectoryAtPath:sTrialOverrideDirectoryPath error:&v67];
  v42 = v67;

  if (!v42)
  {
    v60 = v41;
    v61 = v35;
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v44 = v41;
    v45 = [v44 countByEnumeratingWithState:&v63 objects:v80 count:16];
    if (v45)
    {
      v46 = v45;
      v47 = *v64;
      while (2)
      {
        for (j = 0; j != v46; ++j)
        {
          if (*v64 != v47)
          {
            objc_enumerationMutation(v44);
          }

          v49 = *(*(&v63 + 1) + 8 * j);
          v50 = [MEMORY[0x1E696AEC0] stringWithFormat:@"factor-%@.pb", self->_namespaceName];
          LODWORD(v49) = [v49 isEqualToString:v50];

          if (v49)
          {
            self->_hasOverride = 1;
            goto LABEL_37;
          }
        }

        v46 = [v44 countByEnumeratingWithState:&v63 objects:v80 count:16];
        if (v46)
        {
          continue;
        }

        break;
      }
    }

LABEL_37:

    v35 = v61;
    v42 = 0;
    v41 = v60;
  }

  v51 = SRLogCategoryLifeCycle(v43);
  v52 = v51;
  v53 = loadWithUpdateHandler__updateCount;
  v54 = ++loadWithUpdateHandler__updateCount;
  if (v53 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v51))
  {
    namespaceId = self->_namespaceId;
    if (namespaceId)
    {
      uTF8String = [(NSString *)namespaceId UTF8String];
    }

    else
    {
      uTF8String = "?";
    }

    hasActiveExperiment = self->_hasActiveExperiment;
    hasRollout = self->_hasRollout;
    hasOverride = self->_hasOverride;
    *buf = 136315906;
    v73 = uTF8String;
    v74 = 1024;
    v75 = hasActiveExperiment;
    v76 = 1024;
    v77 = hasRollout;
    v78 = 1024;
    v79 = hasOverride;
    _os_signpost_emit_with_name_impl(&dword_1AE58E000, v52, OS_SIGNPOST_EVENT, v54, "SRResourcesTrialUpdate", "ns:%s, exp:%d, ro:%d, over:%d", buf, 0x1Eu);
  }

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, self->_client, self->_namespaceId, self);
  }
}

+ (BOOL)didAllNamespacesLoadForClient:(id)client
{
  clientCopy = client;
  v4 = [clientCopy isEqualToString:@"Spotlight"];
  if (!v4)
  {
    v17 = [clientCopy isEqualToString:@"SpotlightKnowledge"];
    if (v17)
    {
      if ((trialFlagsForProcess(v17) & 2) == 0)
      {
        goto LABEL_19;
      }

      v18 = +[SSTrialManager sharedSpotlightKnowledgeTrialManager];
    }

    else
    {
      v19 = [clientCopy isEqualToString:@"Mail"];
      if (!v19 || (trialFlagsForProcess(v19) & 4) == 0)
      {
        goto LABEL_19;
      }

      v18 = +[SSTrialManager sharedSpotlightMailTrialManager];
    }

    v13 = v18;
    wasLoadedSinceLaunch = [v18 wasLoadedSinceLaunch];
LABEL_25:

    goto LABEL_26;
  }

  v5 = SRLogCategoryTrial(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    +[SSTrialManager didAllNamespacesLoadForClient:];
  }

  v7 = SRLogCategoryTrial(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    +[SSTrialManager didAllNamespacesLoadForClient:];
  }

  v9 = SRLogCategoryTrial(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    +[SSTrialManager didAllNamespacesLoadForClient:];
  }

  v11 = SRLogCategoryTrial(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    +[SSTrialManager didAllNamespacesLoadForClient:];
  }

  if (trialFlagsForProcess(v12))
  {
    v13 = +[SSTrialManager sharedSpotlightModelTrialManager];
    if ([v13 wasLoadedSinceLaunch])
    {
      v14 = +[SSTrialManager sharedSpotlightUITrialManager];
      if ([v14 wasLoadedSinceLaunch])
      {
        v15 = +[SSTrialManager sharedSpotlightRankingTrialManager];
        wasLoadedSinceLaunch = [v15 wasLoadedSinceLaunch];
      }

      else
      {
        wasLoadedSinceLaunch = 0;
      }
    }

    else
    {
      wasLoadedSinceLaunch = 0;
    }

    goto LABEL_25;
  }

LABEL_19:
  wasLoadedSinceLaunch = 0;
LABEL_26:

  return wasLoadedSinceLaunch;
}

+ (id)trialManagerForNamespaceId:(id)id
{
  idCopy = id;
  if ([idCopy isEqualToString:@"332"])
  {
    v4 = +[SSTrialManager sharedSpotlightModelTrialManager];
LABEL_13:
    v5 = v4;
    goto LABEL_14;
  }

  if ([idCopy isEqualToString:@"333"])
  {
    v4 = +[SSTrialManager sharedSpotlightUITrialManager];
    goto LABEL_13;
  }

  if ([idCopy isEqualToString:@"334"])
  {
    v4 = +[SSTrialManager sharedSpotlightRankingTrialManager];
    goto LABEL_13;
  }

  if ([idCopy isEqualToString:@"335"])
  {
    v4 = +[SSTrialManager sharedSpotlightPolicyTrialManager];
    goto LABEL_13;
  }

  if ([idCopy isEqualToString:@"336"])
  {
    v4 = +[SSTrialManager sharedSpotlightKnowledgeTrialManager];
    goto LABEL_13;
  }

  if ([idCopy isEqualToString:@"337"])
  {
    v4 = +[SSTrialManager sharedSpotlightMailTrialManager];
    goto LABEL_13;
  }

  v5 = 0;
LABEL_14:

  return v5;
}

- (void)initWithNameSpace:(uint64_t)a1 forClient:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1AE58E000, a2, OS_LOG_TYPE_ERROR, "Process not on whitelist for client %@", &v2, 0xCu);
}

void __46__SSTrialManager_initWithNameSpace_forClient___block_invoke_cold_1(void *a1, NSObject *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = [a1 namespaceId];
  v5 = [a1 client];
  v6 = 138412546;
  v7 = v4;
  v8 = 2112;
  v9 = v5;
  _os_log_error_impl(&dword_1AE58E000, a2, OS_LOG_TYPE_ERROR, "Trial update handler is not set when initializing Trial manager for namespace %@ and client %@", &v6, 0x16u);
}

- (void)getLevelForFactor:(uint64_t)a3 .cold.2(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_2_0(&dword_1AE58E000, a2, a3, "Factor not in protobuf: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)loadWithUpdateHandler:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 16);
  v3 = @"NO";
  if (*(a1 + 32))
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  v5 = *(a1 + 34);
  if (*(a1 + 33))
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  v7 = 138413058;
  if (v5)
  {
    v3 = @"YES";
  }

  v8 = v2;
  v9 = 2112;
  v10 = v4;
  v11 = 2112;
  v12 = v6;
  v13 = 2112;
  v14 = v3;
  _os_log_debug_impl(&dword_1AE58E000, a2, OS_LOG_TYPE_DEBUG, "Before loading namespace %@: _hasActiveExperiment = %@, _hasRollout = %@, _hasOverride = %@", &v7, 0x2Au);
}

+ (void)resolveMultipleSpotlightExperiments
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = self;
  OUTLINED_FUNCTION_2_0(&dword_1AE58E000, a2, a3, "Setting current trial manager to %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

+ (void)didAllNamespacesLoadForClient:.cold.1()
{
  v0 = +[SSTrialManager sharedSpotlightModelTrialManager];
  [v0 wasLoadedSinceLaunch];
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_0_1(&dword_1AE58E000, v1, v2, "SPOLIGHT_BLENDING_MODEL = %@", v3, v4, v5, v6);
}

+ (void)didAllNamespacesLoadForClient:.cold.2()
{
  v0 = +[SSTrialManager sharedSpotlightUITrialManager];
  [v0 wasLoadedSinceLaunch];
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_0_1(&dword_1AE58E000, v1, v2, "SPOLIGHT_UI = %@", v3, v4, v5, v6);
}

+ (void)didAllNamespacesLoadForClient:.cold.3()
{
  v0 = +[SSTrialManager sharedSpotlightRankingTrialManager];
  [v0 wasLoadedSinceLaunch];
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_0_1(&dword_1AE58E000, v1, v2, "SPOLIGHT_RANKING_RULES = %@", v3, v4, v5, v6);
}

+ (void)didAllNamespacesLoadForClient:.cold.4()
{
  v0 = +[SSTrialManager sharedSpotlightPolicyTrialManager];
  [v0 wasLoadedSinceLaunch];
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_0_1(&dword_1AE58E000, v1, v2, "SPOLIGHT_RANKING_POLICY = %@", v3, v4, v5, v6);
}

@end