@interface MCMDataProtectionManager
+ (id)defaultManager;
- (MCMDataProtectionManager)init;
- (int)desiredDataProtectionClassForMetadata:(id)metadata clientIdentity:(id)identity;
- (int)intendedDataProtectionClassBasedOnEntitlementsForIdentifier:(id)identifier clientIdentity:(id)identity containerClass:(unint64_t)class info:(id)info;
- (void)_startDataProtectionChangeOperation:(id)operation withCompletion:(id)completion;
- (void)restartPendingDataProtectionOperations;
- (void)setDataProtectionOnDataContainerForMetadata:(id)metadata isSecondOrThirdPartyApp:(BOOL)app retryIfLocked:(BOOL)locked deferUntilNextLaunch:(BOOL)launch withCompletion:(id)completion;
@end

@implementation MCMDataProtectionManager

- (int)desiredDataProtectionClassForMetadata:(id)metadata clientIdentity:(id)identity
{
  metadataCopy = metadata;
  identityCopy = identity;
  containerPath = [metadataCopy containerPath];
  containerClassPath = [containerPath containerClassPath];
  supportsDataProtection = [containerClassPath supportsDataProtection];

  if (supportsDataProtection)
  {
    v10 = +[MCMDataProtectionManager defaultManager];
    identifier = [metadataCopy identifier];
    containerClass = [metadataCopy containerClass];
    info = [metadataCopy info];
    v14 = [v10 intendedDataProtectionClassBasedOnEntitlementsForIdentifier:identifier clientIdentity:identityCopy containerClass:containerClass info:info];
  }

  else
  {
    v14 = -1;
  }

  return v14;
}

- (int)intendedDataProtectionClassBasedOnEntitlementsForIdentifier:(id)identifier clientIdentity:(id)identity containerClass:(unint64_t)class info:(id)info
{
  identifierCopy = identifier;
  identityCopy = identity;
  infoCopy = info;
  v12 = 0;
  if (class <= 0xB && ((1 << class) & 0xE54) != 0)
  {
    codeSignInfo = [identityCopy codeSignInfo];
    identifier = [codeSignInfo identifier];
    v15 = [identifierCopy isEqualToString:identifier];

    if (v15)
    {
      codeSignInfo2 = [identityCopy codeSignInfo];
      entitlements = [codeSignInfo2 entitlements];
    }

    else
    {
      if (infoCopy && ([identityCopy isKernel] & 1) == 0)
      {
        v18 = [infoCopy objectForKeyedSubscript:@"com.apple.MobileInstallation.ContentProtectionClass"];
        objc_opt_class();
        v19 = v18;
        entitlements = (objc_opt_isKindOfClass() & 1) != 0 ? v19 : 0;

        if (entitlements)
        {
          intValue = [entitlements intValue];
LABEL_15:
          v12 = intValue;

          goto LABEL_16;
        }
      }

      v21 = [gCodeSigningMapping entitlementsForIdentifier:identifierCopy];
      if (!v21)
      {
        v12 = 0;
        goto LABEL_16;
      }

      entitlements = v21;
    }

    intValue = [entitlements intendedDataProtectionClass];
    goto LABEL_15;
  }

LABEL_16:

  return v12;
}

- (void)setDataProtectionOnDataContainerForMetadata:(id)metadata isSecondOrThirdPartyApp:(BOOL)app retryIfLocked:(BOOL)locked deferUntilNextLaunch:(BOOL)launch withCompletion:(id)completion
{
  launchCopy = launch;
  lockedCopy = locked;
  appCopy = app;
  v59 = *MEMORY[0x1E69E9840];
  metadataCopy = metadata;
  completionCopy = completion;
  v48 = 0;
  v49 = &v48;
  v50 = 0x2020000000;
  v51 = 1;
  dataProtectionClass = [metadataCopy dataProtectionClass];
  containerClass = [metadataCopy containerClass];
  if (containerClass > 0xB || ((1 << containerClass) & 0xED4) == 0 || (v15 = [metadataCopy containerClass], v15 == 13) || v15 == 7)
  {
    v49[3] = 11;
    v16 = container_log_handle_for_category();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
LABEL_6:
      v17 = 0;
      goto LABEL_7;
    }

    *buf = 138412290;
    *v53 = metadataCopy;
    v27 = "Can't act on an invalid object: %@";
    goto LABEL_21;
  }

  containerPath = [metadataCopy containerPath];
  containerClassPath = [containerPath containerClassPath];
  supportsDataProtection = [containerClassPath supportsDataProtection];

  if ((supportsDataProtection & 1) == 0)
  {
    v49[3] = 72;
    v16 = container_log_handle_for_category();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_6;
    }

    containerClass2 = [metadataCopy containerClass];
    *buf = 134217984;
    *v53 = containerClass2;
    v27 = "Data protection not supported for containers of class [%llu]";
LABEL_21:
    v28 = v16;
    v29 = 12;
LABEL_22:
    _os_log_error_impl(&dword_1DF2C3000, v28, OS_LOG_TYPE_ERROR, v27, buf, v29);
    goto LABEL_6;
  }

  info = [metadataCopy info];

  if (info)
  {
    info2 = [metadataCopy info];
    v23 = [info2 objectForKeyedSubscript:@"com.apple.MobileInstallation.ContentProtectionClass"];
    objc_opt_class();
    v24 = v23;
    if (objc_opt_isKindOfClass())
    {
      v25 = v24;
    }

    else
    {
      v25 = 0;
    }

    if (v25)
    {
      info = [v25 intValue];
    }

    else
    {
      info = 0;
    }
  }

  v30 = [MEMORY[0x1E696AD98] numberWithInt:info];
  v31 = [MEMORY[0x1E696AD98] numberWithInt:dataProtectionClass];
  v32 = [MCMFileHandle compareDataProtectionClassTarget:v30 withExisting:v31];

  if (v32 == 3)
  {
    protectionOperationFileQueue = [(MCMDataProtectionManager *)self protectionOperationFileQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __146__MCMDataProtectionManager_setDataProtectionOnDataContainerForMetadata_isSecondOrThirdPartyApp_retryIfLocked_deferUntilNextLaunch_withCompletion___block_invoke;
    block[3] = &unk_1E86B07A8;
    v46 = metadataCopy;
    v47 = &v48;
    dispatch_sync(protectionOperationFileQueue, block);

    if (completionCopy && v49[3] == 1)
    {
      completionCopy[2](completionCopy, 1);

      completionCopy = 0;
    }

    v17 = 0;
    v16 = v46;
  }

  else
  {
    if (!v32)
    {
      v49[3] = 72;
      v16 = container_log_handle_for_category();
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_6;
      }

      *buf = 67109376;
      *v53 = info;
      *&v53[4] = 1024;
      *&v53[6] = dataProtectionClass;
      v27 = "Unable to determine precedence of data protection; desired = %d, original = %d";
      v28 = v16;
      v29 = 14;
      goto LABEL_22;
    }

    if (info == 2)
    {
      v49[3] = 38;
      v16 = container_log_handle_for_category();
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_6;
      }

      *buf = 67109120;
      *v53 = 2;
      v27 = "Data protection class %d is not allowed";
      goto LABEL_36;
    }

    if (appCopy && (info > 7 || ((1 << info) & 0x8B) == 0))
    {
      v49[3] = 38;
      v16 = container_log_handle_for_category();
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_6;
      }

      *buf = 67109120;
      *v53 = info;
      v27 = "Data protection class %d is invalid for 2nd and 3rd party apps";
LABEL_36:
      v28 = v16;
      v29 = 8;
      goto LABEL_22;
    }

    v34 = info;
    protectionOperationFileQueue2 = [(MCMDataProtectionManager *)self protectionOperationFileQueue];
    if (v32 == 1)
    {
      v36 = 7;
    }

    else
    {
      v36 = 1;
    }

    v17 = [MCMDataProtectionChangeOperation dataProtectionChangeOperationWithContainerMetadata:metadataCopy settingClass:info retryingIfLocked:lockedCopy changeType:v36 queue:protectionOperationFileQueue2];

    v44 = 0;
    v37 = [v17 writeToDiskWithError:&v44];
    v38 = v44;
    v16 = v38;
    if (v37)
    {
      if (launchCopy)
      {
        v39 = container_log_handle_for_category();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
        {
          identifier = [metadataCopy identifier];
          containerClass3 = [metadataCopy containerClass];
          *buf = 138413058;
          *v53 = identifier;
          *&v53[8] = 2048;
          v54 = containerClass3;
          v55 = 1024;
          v56 = dataProtectionClass;
          v57 = 1024;
          v58 = v34;
          _os_log_debug_impl(&dword_1DF2C3000, v39, OS_LOG_TYPE_DEBUG, "Wrote DP class update operation for [%@(%llu)] %d → %d, deferred until next daemon launch.", buf, 0x22u);
        }
      }

      else
      {
        [(MCMDataProtectionManager *)self _startDataProtectionChangeOperation:v17 withCompletion:completionCopy];
        v39 = completionCopy;
        completionCopy = 0;
      }
    }

    else
    {
      type = [v38 type];
      v49[3] = type;
      v39 = container_log_handle_for_category();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *v53 = v16;
        _os_log_error_impl(&dword_1DF2C3000, v39, OS_LOG_TYPE_ERROR, "Failed to write data protection update file to disk: %@", buf, 0xCu);
      }
    }
  }

LABEL_7:

  if (completionCopy && v49[3] != 1)
  {
    (completionCopy[2])(completionCopy);
  }

  _Block_object_dispose(&v48, 8);
}

void __146__MCMDataProtectionManager_setDataProtectionOnDataContainerForMetadata_isSecondOrThirdPartyApp_retryIfLocked_deferUntilNextLaunch_withCompletion___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) containerIdentity];
  v6 = 0;
  v3 = [MCMDataProtectionChangeOperation deleteUpdateFileWithContainerIdentity:v2 error:&v6];
  v4 = v6;

  if (!v3)
  {
    v5 = container_log_handle_for_category();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v8 = v4;
      _os_log_error_impl(&dword_1DF2C3000, v5, OS_LOG_TYPE_ERROR, "Failed to delete existing data protection update file: %@", buf, 0xCu);
    }

    *(*(*(a1 + 40) + 8) + 24) = [v4 type];
  }
}

- (void)restartPendingDataProtectionOperations
{
  v54 = *MEMORY[0x1E69E9840];
  v3 = containermanager_copy_global_configuration();
  managedPathRegistry = [v3 managedPathRegistry];
  containermanagerPendingUpdates = [managedPathRegistry containermanagerPendingUpdates];

  v6 = [containermanagerPendingUpdates url];
  if (v6)
  {
    v7 = +[MCMFileManager defaultManager];
    v44 = 0;
    v8 = [v7 urlsForItemsInDirectoryAtURL:v6 error:&v44];
    v9 = v44;

    if (v8)
    {
      v34 = v9;
      v35 = v6;
      v36 = containermanagerPendingUpdates;
      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v10 = v8;
      v11 = [v10 countByEnumeratingWithState:&v50 objects:v49 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v51;
        v37 = v10;
        do
        {
          v14 = 0;
          do
          {
            if (*v51 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v50 + 1) + 8 * v14);
            v16 = container_log_handle_for_category();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
            {
              path = [v15 path];
              *buf = 138412290;
              *v46 = path;
              _os_log_debug_impl(&dword_1DF2C3000, v16, OS_LOG_TYPE_DEBUG, "Found pending data protection operation at %@", buf, 0xCu);
            }

            protectionOperationFileQueue = [(MCMDataProtectionManager *)self protectionOperationFileQueue];
            v43 = 0;
            v18 = [MCMDataProtectionChangeOperation dataProtectionChangeOperationAtURL:v15 queue:protectionOperationFileQueue error:&v43];
            v19 = v43;

            if (v18)
            {
              v20 = container_log_handle_for_category();
              if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
              {
                newDataProtectionClass = [v18 newDataProtectionClass];
                dataContainerMetadata = [v18 dataContainerMetadata];
                userIdentity = [dataContainerMetadata userIdentity];
                dataContainerMetadata2 = [v18 dataContainerMetadata];
                identifier = [dataContainerMetadata2 identifier];
                dataContainerMetadata3 = [v18 dataContainerMetadata];
                containerClass = [dataContainerMetadata3 containerClass];
                *buf = 67109890;
                *v46 = newDataProtectionClass;
                *&v46[4] = 2112;
                *&v46[6] = userIdentity;
                *&v46[14] = 2112;
                *&v46[16] = identifier;
                v47 = 2048;
                v48 = containerClass;
                _os_log_debug_impl(&dword_1DF2C3000, v20, OS_LOG_TYPE_DEBUG, "Starting pending data protection update to protection class %d for user: %@, ID: %@, containerClass: %llu", buf, 0x26u);

                v10 = v37;
              }

              v21 = MCMDataProtectionQueue();
              block[0] = MEMORY[0x1E69E9820];
              block[1] = 3221225472;
              block[2] = __66__MCMDataProtectionManager_restartPendingDataProtectionOperations__block_invoke;
              block[3] = &unk_1E86B0CC8;
              block[4] = self;
              v42 = v18;
              dispatch_async(v21, block);
            }

            else
            {
              v22 = container_log_handle_for_category();
              if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
              {
                path2 = [v15 path];
                *buf = 138412546;
                *v46 = path2;
                *&v46[8] = 2112;
                *&v46[10] = v19;
                _os_log_error_impl(&dword_1DF2C3000, v22, OS_LOG_TYPE_ERROR, "Failed to read data protection change operation at %@ : %@", buf, 0x16u);
              }
            }

            ++v14;
          }

          while (v12 != v14);
          v12 = [v10 countByEnumeratingWithState:&v50 objects:v49 count:16];
        }

        while (v12);
      }

      v29 = v10;
      v6 = v35;
      containermanagerPendingUpdates = v36;
      v9 = v34;
    }

    else
    {
      domain = [v9 domain];
      if ([domain isEqualToString:*MEMORY[0x1E696A798]])
      {
        code = [v9 code];

        if (code == 2)
        {
          goto LABEL_30;
        }
      }

      else
      {
      }

      v29 = container_log_handle_for_category();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v32 = [containermanagerPendingUpdates url];
        path3 = [v32 path];
        *buf = 138412546;
        *v46 = path3;
        *&v46[8] = 2112;
        *&v46[10] = v9;
        _os_log_error_impl(&dword_1DF2C3000, v29, OS_LOG_TYPE_ERROR, "Failed to get items at pendingUpdates URL %@ : %@", buf, 0x16u);
      }
    }
  }

  else
  {
    v29 = container_log_handle_for_category();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1DF2C3000, v29, OS_LOG_TYPE_ERROR, "Failed to get url for storing pending operations.", buf, 2u);
    }

    v9 = 0;
  }

LABEL_30:
}

uint64_t __66__MCMDataProtectionManager_restartPendingDataProtectionOperations__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 _startDataProtectionChangeOperation:v3 withCompletion:0];
}

- (void)_startDataProtectionChangeOperation:(id)operation withCompletion:(id)completion
{
  v33 = *MEMORY[0x1E69E9840];
  operationCopy = operation;
  completionCopy = completion;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__9329;
  v31 = __Block_byref_object_dispose__9330;
  v32 = 0;
  dataContainerMetadata = [operationCopy dataContainerMetadata];
  objc_initWeak(&location, dataContainerMetadata);

  LODWORD(dataContainerMetadata) = [operationCopy newDataProtectionClass];
  retryIfLocked = [operationCopy retryIfLocked];
  v9 = [MCMApplicationTerminationAssertion alloc];
  v10 = objc_loadWeakRetained(&location);
  identifier = [v10 identifier];
  v12 = [(MCMApplicationTerminationAssertion *)v9 initWithBundleIdentifier:identifier reason:@"preventing app launch during container data protection class change"];
  v13 = v28[5];
  v28[5] = v12;

  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __79__MCMDataProtectionManager__startDataProtectionChangeOperation_withCompletion___block_invoke;
  v24[3] = &unk_1E86B0758;
  v24[4] = &v27;
  objc_copyWeak(&v25, &location);
  [operationCopy setRetryStartBlock:v24];
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __79__MCMDataProtectionManager__startDataProtectionChangeOperation_withCompletion___block_invoke_2;
  v18 = &unk_1E86B0780;
  objc_copyWeak(&v21, &location);
  v22 = dataContainerMetadata;
  v23 = retryIfLocked;
  v20 = &v27;
  v14 = completionCopy;
  v19 = v14;
  [operationCopy setCompletionBlock:&v15];
  [operationCopy performChangeOperation];

  objc_destroyWeak(&v21);
  objc_destroyWeak(&v25);
  objc_destroyWeak(&location);
  _Block_object_dispose(&v27, 8);
}

void __79__MCMDataProtectionManager__startDataProtectionChangeOperation_withCompletion___block_invoke(uint64_t a1)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  if (v2)
  {
    [v2 invalidate];
  }

  v3 = [MCMApplicationTerminationAssertion alloc];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [WeakRetained identifier];
  v5 = [(MCMApplicationTerminationAssertion *)v3 initWithBundleIdentifier:v4 reason:@"preventing app launch during container data protection class change"];
  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void __79__MCMDataProtectionManager__startDataProtectionChangeOperation_withCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (v3)
  {
    v5 = [v3 type];
    v6 = container_log_handle_for_category();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v11 = [WeakRetained identifier];
      v12 = [WeakRetained containerPath];
      v13 = [v12 containerDataURL];
      v14 = [v13 path];
      v15 = *(a1 + 56);
      v16 = 138413058;
      v17 = v11;
      v18 = 2112;
      v19 = v14;
      v20 = 1024;
      v21 = v15;
      v22 = 2112;
      v23 = v3;
      _os_log_error_impl(&dword_1DF2C3000, v6, OS_LOG_TYPE_ERROR, "Failed to set data protection on container with identifier %@ at %@ to %d: %@", &v16, 0x26u);
    }

    if (v5 == 61)
    {
      if (*(a1 + 60) == 1)
      {
        v7 = container_log_handle_for_category();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v16) = 0;
          _os_log_error_impl(&dword_1DF2C3000, v7, OS_LOG_TYPE_ERROR, "Unexpectedly got completion block called while locked", &v16, 2u);
        }
      }

      v5 = 61;
    }
  }

  else
  {
    v5 = 1;
  }

  [*(*(*(a1 + 40) + 8) + 40) invalidate];
  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = 0;

  v10 = *(a1 + 32);
  if (v10)
  {
    (*(v10 + 16))(v10, v5);
  }
}

- (MCMDataProtectionManager)init
{
  v8 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = MCMDataProtectionManager;
  v2 = [(MCMDataProtectionManager *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.MobileContainerManager.ProtectionOperationFileQueue", v3);
    protectionOperationFileQueue = v2->_protectionOperationFileQueue;
    v2->_protectionOperationFileQueue = v4;
  }

  return v2;
}

+ (id)defaultManager
{
  v4[5] = *MEMORY[0x1E69E9840];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __42__MCMDataProtectionManager_defaultManager__block_invoke;
  v4[3] = &__block_descriptor_40_e5_v8__0l;
  v4[4] = self;
  if (defaultManager_onceToken != -1)
  {
    dispatch_once(&defaultManager_onceToken, v4);
  }

  v2 = defaultManager_defaultManager;

  return v2;
}

uint64_t __42__MCMDataProtectionManager_defaultManager__block_invoke(uint64_t a1, uint64_t a2)
{
  defaultManager_defaultManager = objc_alloc_init(objc_opt_class());

  return MEMORY[0x1EEE66BB8]();
}

@end