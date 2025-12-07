@interface TRISetupAssistantFetchUtils
+ (BOOL)removeNamespaceNamesWithRolloutForServerContext:(id)context namespaceNames:(id)names;
+ (BOOL)setValueInKeyValueStore:(id)store key:(id)key value:(id)value error:(id *)error;
+ (BOOL)stopSetupAssistantFetchWithServerContext:(id)context namespaceNames:(id)names error:(id *)error;
+ (id)getIncompatibleNamespaceNamesForTriClientRollout:(id)rollout namespaceDescriptorProvider:(id)provider;
+ (id)getNamespaceNamesWithFetchDuringSetupAssistantEnabledWithTRIPaths:(id)paths;
+ (id)getValueInKeyValueStore:(id)store key:(id)key error:(id *)error;
+ (id)registerFinalizeBlockForDownloadLatencyTelemetryWithServerContext:(id)context;
@end

@implementation TRISetupAssistantFetchUtils

+ (BOOL)stopSetupAssistantFetchWithServerContext:(id)context namespaceNames:(id)names error:(id *)error
{
  v30[1] = *MEMORY[0x277D85DE8];
  contextCopy = context;
  namesCopy = names;
  if (namesCopy)
  {
    v10 = [objc_alloc(MEMORY[0x277CBEB58]) initWithSet:namesCopy];
  }

  else
  {
    paths = [contextCopy paths];
    v11 = [self getNamespaceNamesWithFetchDuringSetupAssistantEnabledWithTRIPaths:paths];

    if (!v11 || ![v11 count])
    {
      v10 = TRILogCategory_Server();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v25) = 0;
        _os_log_impl(&dword_26F567000, v10, OS_LOG_TYPE_DEFAULT, "setup-assistant-fetch is not needed, no descriptors found with enableFetchDuringSetupAssistant flag enabled", &v25, 2u);
      }

      goto LABEL_22;
    }

    v10 = [objc_alloc(MEMORY[0x277CBEB58]) initWithSet:v11];
  }

  v11 = [objc_alloc(MEMORY[0x277CBEB58]) initWithSet:v10];
  if (([self removeNamespaceNamesWithRolloutForServerContext:contextCopy namespaceNames:v11] & 1) == 0)
  {
    v15 = TRILogCategory_Server();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v25) = 0;
      _os_log_error_impl(&dword_26F567000, v15, OS_LOG_TYPE_ERROR, "The rollout database query failed.", &v25, 2u);
    }

    v16 = objc_alloc(MEMORY[0x277CCA9B8]);
    v29 = *MEMORY[0x277CCA450];
    v30[0] = @"Unable to retrieve records for active rollouts";
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:&v29 count:1];
    v18 = [v16 initWithDomain:@"TRIGeneralErrorDomain" code:1 userInfo:v17];

    if (error)
    {
      v19 = v18;
      *error = v18;
    }

    goto LABEL_13;
  }

  if (![v11 count])
  {
    v22 = TRILogCategory_Server();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      allObjects = [v10 allObjects];
      v25 = 138543362;
      v26 = allObjects;
      _os_log_impl(&dword_26F567000, v22, OS_LOG_TYPE_DEFAULT, "setup-assistant-fetch is not needed, ncv-compatible rollout v2 are present for namespaces names: %{public}@", &v25, 0xCu);
    }

LABEL_22:
    v20 = 1;
    goto LABEL_23;
  }

  [v10 minusSet:v11];
  v12 = TRILogCategory_Server();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    allObjects2 = [v11 allObjects];
    allObjects3 = [v10 allObjects];
    v25 = 138412546;
    v26 = allObjects2;
    v27 = 2112;
    v28 = allObjects3;
    _os_log_impl(&dword_26F567000, v12, OS_LOG_TYPE_DEFAULT, "setup-assistant-fetch is needed, ncv-compatible rollout v2 are not present for namespace names: %@ and are present for namespace names: {public}%@", &v25, 0x16u);
  }

LABEL_13:
  v20 = 0;
LABEL_23:

  return v20;
}

+ (id)getNamespaceNamesWithFetchDuringSetupAssistantEnabledWithTRIPaths:(id)paths
{
  v3 = MEMORY[0x277D73750];
  namespaceDescriptorsDefaultDir = [paths namespaceDescriptorsDefaultDir];
  v5 = [v3 descriptorsForDirectory:namespaceDescriptorsDefaultDir filterBlock:&__block_literal_global_47];

  if ([v5 count])
  {
    v6 = objc_alloc(MEMORY[0x277CBEB98]);
    v7 = [v5 _pas_mappedArrayWithTransform:&__block_literal_global_50];
    v8 = [v6 initWithArray:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (BOOL)removeNamespaceNamesWithRolloutForServerContext:(id)context namespaceNames:(id)names
{
  namesCopy = names;
  contextCopy = context;
  namespaceDatabase = [contextCopy namespaceDatabase];
  paths = [contextCopy paths];
  namespaceDescriptorsDefaultDir = [paths namespaceDescriptorsDefaultDir];
  v11 = [TRINamespaceDescriptorProvider providerWithNamespaceDatabase:namespaceDatabase defaultDescriptorDirectoryPath:namespaceDescriptorsDefaultDir];

  rolloutDatabase = [contextCopy rolloutDatabase];

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __94__TRISetupAssistantFetchUtils_removeNamespaceNamesWithRolloutForServerContext_namespaceNames___block_invoke;
  v16[3] = &unk_279DE5590;
  v18 = namesCopy;
  selfCopy = self;
  v17 = v11;
  v13 = namesCopy;
  v14 = v11;
  LOBYTE(v11) = [rolloutDatabase enumerateActiveRecordsUsingTransaction:0 block:v16];

  return v11;
}

void __94__TRISetupAssistantFetchUtils_removeNamespaceNamesWithRolloutForServerContext_namespaceNames___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 artifact];
  v5 = [v4 rollout];

  v6 = [*(a1 + 48) getIncompatibleNamespaceNamesForTriClientRollout:v5 namespaceDescriptorProvider:*(a1 + 32)];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [v3 namespaces];
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v13 + 1) + 8 * i);
        if ([*(a1 + 40) containsObject:v12] && (objc_msgSend(v6, "containsObject:", v12) & 1) == 0)
        {
          [*(a1 + 40) removeObject:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

+ (id)getIncompatibleNamespaceNamesForTriClientRollout:(id)rollout namespaceDescriptorProvider:(id)provider
{
  v40 = *MEMORY[0x277D85DE8];
  rolloutCopy = rollout;
  providerCopy = provider;
  v25 = objc_opt_new();
  v26 = rolloutCopy;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = [rolloutCopy selectedNamespaceArray];
  v7 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v7)
  {
    v24 = 0;
    v8 = *v35;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v35 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v34 + 1) + 8 * i);
        v11 = objc_autoreleasePoolPush();
        name = [v10 name];
        v13 = [providerCopy descriptorWithNamespaceName:name];

        if (v13)
        {
          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x2020000000;
          buf[24] = 0;
          v14 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v10, "compatibilityVersionArray_Count")}];
          compatibilityVersionArray = [v10 compatibilityVersionArray];
          v30[0] = MEMORY[0x277D85DD0];
          v30[1] = 3221225472;
          v30[2] = __108__TRISetupAssistantFetchUtils_getIncompatibleNamespaceNamesForTriClientRollout_namespaceDescriptorProvider___block_invoke;
          v30[3] = &unk_279DE55B8;
          v31 = v13;
          v33 = buf;
          v16 = v14;
          v32 = v16;
          [compatibilityVersionArray enumerateValuesWithBlock:v30];

          if (*(*&buf[8] + 24))
          {
            v24 = 1;
          }

          else
          {
            name2 = [v10 name];
            [v25 addObject:name2];
          }

          _Block_object_dispose(buf, 8);
        }

        else
        {
          v17 = TRILogCategory_Server();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            rolloutId = [v26 rolloutId];
            deploymentId = [v26 deploymentId];
            name3 = [v10 name];
            *buf = 138543874;
            *&buf[4] = rolloutId;
            *&buf[12] = 1024;
            *&buf[14] = deploymentId;
            *&buf[18] = 2114;
            *&buf[20] = name3;
            _os_log_impl(&dword_26F567000, v17, OS_LOG_TYPE_DEFAULT, "Note: Rollout %{public}@.%u involves namespace %{public}@ but it is not registered with Trial. Factor packs for this namespace shall not be downloaded.", buf, 0x1Cu);
          }
        }

        objc_autoreleasePoolPop(v11);
      }

      v7 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v7);
  }

  else
  {
    v24 = 0;
  }

  if (!(([v25 count] != 0) | v24 & 1))
  {
    selectedNamespaceArray = [v26 selectedNamespaceArray];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __108__TRISetupAssistantFetchUtils_getIncompatibleNamespaceNamesForTriClientRollout_namespaceDescriptorProvider___block_invoke_2;
    v28[3] = &unk_279DDF680;
    v29 = v25;
    [selectedNamespaceArray enumerateObjectsUsingBlock:v28];
  }

  return v25;
}

void __108__TRISetupAssistantFetchUtils_getIncompatibleNamespaceNamesForTriClientRollout_namespaceDescriptorProvider___block_invoke(uint64_t a1, uint64_t a2)
{
  if ([*(a1 + 32) downloadNCV] == a2)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  v4 = *(a1 + 40);
  v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%u", a2];
  [v4 addObject:v5];
}

void __108__TRISetupAssistantFetchUtils_getIncompatibleNamespaceNamesForTriClientRollout_namespaceDescriptorProvider___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 name];
  [v2 addObject:v3];
}

+ (BOOL)setValueInKeyValueStore:(id)store key:(id)key value:(id)value error:(id *)error
{
  storeCopy = store;
  keyCopy = key;
  valueCopy = value;
  if (!valueCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRISetupAssistantFetchUtils.m" lineNumber:176 description:{@"Invalid parameter not satisfying: %@", @"value != nil"}];
  }

  v20 = 0;
  v14 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:valueCopy requiringSecureCoding:1 error:&v20];
  v15 = v20;
  v16 = v15;
  if (v14)
  {
    [storeCopy setBlob:v14 forKey:keyCopy usingTransaction:0];
  }

  else if (error)
  {
    v17 = v15;
    *error = v16;
  }

  return v14 != 0;
}

+ (id)getValueInKeyValueStore:(id)store key:(id)key error:(id *)error
{
  v6 = [store blobForKey:key usingTransaction:0];
  if (v6)
  {
    v13 = 0;
    v7 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v6 error:&v13];
    v8 = v13;
    v9 = v8;
    if (v7)
    {
      v10 = v7;
    }

    else if (error)
    {
      v11 = v8;
      *error = v9;
    }
  }

  else
  {
    v7 = 0;
    if (error)
    {
      *error = 0;
    }
  }

  return v7;
}

+ (id)registerFinalizeBlockForDownloadLatencyTelemetryWithServerContext:(id)context
{
  contextCopy = context;
  v4 = [TRILatencyMetricTelemetryValidator alloc];
  rolloutDatabase = [contextCopy rolloutDatabase];
  paths = [contextCopy paths];
  v7 = [(TRILatencyMetricTelemetryValidator *)v4 initWithRolloutDatabase:rolloutDatabase paths:paths];

  v8 = [[TRIDownloadLatencyTaskResultTelemetryBuilder alloc] initWithTelemetryValidator:v7];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __97__TRISetupAssistantFetchUtils_registerFinalizeBlockForDownloadLatencyTelemetryWithServerContext___block_invoke;
  v14[3] = &unk_279DE55E0;
  v9 = v8;
  v15 = v9;
  v10 = MEMORY[0x2743948D0](v14);
  taskQueue = [contextCopy taskQueue];

  [taskQueue registerFinalizeBlock:v10];
  v12 = v9;

  return v9;
}

void __97__TRISetupAssistantFetchUtils_registerFinalizeBlockForDownloadLatencyTelemetryWithServerContext___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v11 = a2;
  v8 = a4;
  v9 = a5;
  v10 = objc_autoreleasePoolPush();
  [*(a1 + 32) updateWithTask:v11 runResult:v8];
  objc_autoreleasePoolPop(v10);
}

@end