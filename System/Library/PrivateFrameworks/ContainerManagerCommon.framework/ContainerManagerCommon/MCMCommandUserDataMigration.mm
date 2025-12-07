@interface MCMCommandUserDataMigration
+ (Class)incomingMessageClass;
- (BOOL)_bundleContainerExistsForDataContainer:(id)container error:(id *)error;
- (BOOL)_repairTmpDirWithMigrationStatus:(id)status error:(id *)error;
- (BOOL)preflightClientAllowed;
- (int)_intendedDataProtectionClassBasedOnEntitlementsForIdentifier:(id)identifier;
- (void)_setDataProtectionIfNecessaryOnContainer:(id)container;
- (void)execute;
@end

@implementation MCMCommandUserDataMigration

+ (Class)incomingMessageClass
{

  return objc_opt_class();
}

- (BOOL)_bundleContainerExistsForDataContainer:(id)container error:(id *)error
{
  v52 = *MEMORY[0x1E69E9840];
  containerCopy = container;
  v47 = 1;
  if ([containerCopy containerClass] == 2)
  {
    v7 = containermanager_copy_global_configuration();
    v8 = [v7 dispositionForContainerClass:1];

    if (v8 == 2)
    {
      container_query_create();
      container_query_set_class();
      identifier = [containerCopy identifier];
      v10 = xpc_string_create([identifier UTF8String]);
      container_query_set_identifiers();

      count_results = container_query_count_results();
      v12 = count_results > 0;
      if (count_results < 0)
      {
        v13 = [[MCMError alloc] initWithLibsystemError:container_query_get_last_error()];
      }

      else
      {
        v13 = 0;
      }

      container_query_free();
      goto LABEL_41;
    }

    context = [(MCMCommand *)self context];
    globalConfiguration = [context globalConfiguration];
    staticConfig = [globalConfiguration staticConfig];
    v16 = [staticConfig configForContainerClass:1];

    userIdentity = [containerCopy userIdentity];
    identifier2 = [containerCopy identifier];
    context2 = [(MCMCommand *)self context];
    userIdentityCache = [context2 userIdentityCache];
    v28 = [MCMContainerIdentity containerIdentityWithUserIdentity:userIdentity identifier:identifier2 containerConfig:v16 platform:0 userIdentityCache:userIdentityCache error:&v47];

    if (v28)
    {
      v46 = 0;
      v29 = [gContainerCache entryForContainerIdentity:v28 error:&v46];
      v30 = v46;
      v13 = v30;
      if (v29)
      {
        v12 = 1;
LABEL_39:

        goto LABEL_40;
      }

      if (v30 && [(MCMError *)v30 type]== 21)
      {

        v29 = 0;
        v13 = 0;
      }

      else
      {
        v29 = 0;
      }
    }

    else
    {
      v32 = [MCMError alloc];
      v13 = [(MCMError *)v32 initWithErrorType:v47];
      v29 = container_log_handle_for_category();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        identifier3 = [containerCopy identifier];
        *buf = 138412546;
        containerClass = identifier3;
        v50 = 2112;
        v51 = v13;
        _os_log_error_impl(&dword_1DF2C3000, v29, OS_LOG_TYPE_ERROR, "Could not create container identity from [%@]: %@", buf, 0x16u);
      }
    }

    v12 = 0;
    goto LABEL_39;
  }

  if ([containerCopy containerClass] == 4)
  {
    childParentMapCache = [gCodeSigningMapping childParentMapCache];
    identifier4 = [containerCopy identifier];
    v16 = [childParentMapCache parentIdentifierForChildIdentifier:identifier4];

    if (!v16)
    {
      v13 = 0;
      v12 = 0;
LABEL_40:

      goto LABEL_41;
    }

    v17 = containermanager_copy_global_configuration();
    v18 = [v17 dispositionForContainerClass:1];

    if (v18 == 2)
    {
      container_query_create();
      container_query_set_class();
      v19 = xpc_string_create([v16 UTF8String]);
      container_query_set_identifiers();

      v20 = container_query_count_results();
      v12 = v20 > 0;
      if (v20 < 0)
      {
        v13 = [[MCMError alloc] initWithLibsystemError:container_query_get_last_error()];
      }

      else
      {
        v13 = 0;
      }

      container_query_free();
      goto LABEL_40;
    }

    context3 = [(MCMCommand *)self context];
    globalConfiguration2 = [context3 globalConfiguration];
    staticConfig2 = [globalConfiguration2 staticConfig];
    v28 = [staticConfig2 configForContainerClass:1];

    userIdentity2 = [containerCopy userIdentity];
    context4 = [(MCMCommand *)self context];
    userIdentityCache2 = [context4 userIdentityCache];
    v29 = [MCMContainerIdentity containerIdentityWithUserIdentity:userIdentity2 identifier:v16 containerConfig:v28 platform:0 userIdentityCache:userIdentityCache2 error:&v47];

    if (v29)
    {
      v45 = 0;
      v40 = [gContainerCache entryForContainerIdentity:v29 error:&v45];
      v41 = v45;
      v13 = v41;
      if (v40)
      {
        v12 = 1;
LABEL_38:

        goto LABEL_39;
      }

      if (v41 && [(MCMError *)v41 type]== 21)
      {

        v40 = 0;
        v13 = 0;
      }

      else
      {
        v40 = 0;
      }
    }

    else
    {
      v42 = [MCMError alloc];
      v13 = [(MCMError *)v42 initWithErrorType:v47];
      v40 = container_log_handle_for_category();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        containerClass = v16;
        v50 = 2112;
        v51 = v13;
        _os_log_error_impl(&dword_1DF2C3000, v40, OS_LOG_TYPE_ERROR, "Could not create container identity from [%@]: %@", buf, 0x16u);
      }
    }

    v12 = 0;
    goto LABEL_38;
  }

  v13 = [[MCMError alloc] initWithErrorType:20];
  v31 = container_log_handle_for_category();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
  {
    *buf = 134217984;
    containerClass = [containerCopy containerClass];
    _os_log_error_impl(&dword_1DF2C3000, v31, OS_LOG_TYPE_ERROR, "Passed an unexpected container type: %llu", buf, 0xCu);
  }

  v12 = 0;
LABEL_41:
  if (error && v13)
  {
    v43 = v13;
    *error = v13;
  }

  return v12;
}

- (int)_intendedDataProtectionClassBasedOnEntitlementsForIdentifier:(id)identifier
{
  v3 = [gCodeSigningMapping entitlementsForIdentifier:identifier];
  v4 = v3;
  if (v3)
  {
    intendedDataProtectionClass = [v3 intendedDataProtectionClass];
  }

  else
  {
    intendedDataProtectionClass = 0;
  }

  return intendedDataProtectionClass;
}

- (void)_setDataProtectionIfNecessaryOnContainer:(id)container
{
  v26 = *MEMORY[0x1E69E9840];
  containerCopy = container;
  containerPath = [containerCopy containerPath];
  containerClassPath = [containerPath containerClassPath];
  supportsDataProtection = [containerClassPath supportsDataProtection];

  if (supportsDataProtection)
  {
    v21 = 0;
    v8 = [(MCMCommandUserDataMigration *)self _bundleContainerExistsForDataContainer:containerCopy error:&v21];
    v9 = v21;
    identifier = [containerCopy identifier];
    if (v9)
    {
      v11 = container_log_handle_for_category();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v23 = identifier;
        v24 = 2112;
        v25 = v9;
        _os_log_error_impl(&dword_1DF2C3000, v11, OS_LOG_TYPE_ERROR, "Error looking up bundle container for %@ : %@", buf, 0x16u);
      }
    }

    else
    {
      if (v8)
      {
LABEL_8:

        goto LABEL_9;
      }

      v12 = [(MCMCommandUserDataMigration *)self _intendedDataProtectionClassBasedOnEntitlementsForIdentifier:identifier];
      v13 = [MCMResultPromise alloc];
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __72__MCMCommandUserDataMigration__setDataProtectionIfNecessaryOnContainer___block_invoke;
      v19[3] = &unk_1E86AFE80;
      v20 = identifier;
      v14 = [(MCMResultPromise *)v13 initWithCompletion:v19];
      v15 = [MCMCommandSetDataProtection alloc];
      containerIdentity = [containerCopy containerIdentity];
      context = [(MCMCommand *)self context];
      v18 = [(MCMCommandSetDataProtection *)v15 initWithContainerIdentity:containerIdentity thirdParty:0 dataProtectionClass:v12 retryIfLocked:0 skipIfUnchanged:1 context:context resultPromise:v14];

      [(MCMCommandSetDataProtection *)v18 execute];
      v11 = v20;
    }

    goto LABEL_8;
  }

LABEL_9:
}

id __72__MCMCommandUserDataMigration__setDataProtectionIfNecessaryOnContainer___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 error];

  if (v4)
  {
    v5 = container_log_handle_for_category();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v8 = [v3 error];
      v9 = 138412546;
      v10 = v7;
      v11 = 2112;
      v12 = v8;
      _os_log_error_impl(&dword_1DF2C3000, v5, OS_LOG_TYPE_ERROR, "Error processing restored system container %@: %@", &v9, 0x16u);
    }
  }

  return v3;
}

- (BOOL)_repairTmpDirWithMigrationStatus:(id)status error:(id *)error
{
  v62 = *MEMORY[0x1E69E9840];
  statusCopy = status;
  if ([statusCopy hasMigrationOccurredForType:@"RepairTmpDir2"])
  {
    v6 = 0;
    goto LABEL_3;
  }

  v8 = container_log_handle_for_category();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = +[MCMMigrationStatus currentBuildVersion];
    *buf = 138412290;
    v59 = v9;
    _os_log_impl(&dword_1DF2C3000, v8, OS_LOG_TYPE_DEFAULT, "Performing Tmp Dir Repair Migration on %@", buf, 0xCu);
  }

  v49 = +[MCMFileManager defaultManager];
  v10 = +[MCMUserIdentitySharedCache sharedInstance];
  allAccessibleUserIdentities = [v10 allAccessibleUserIdentities];

  v52 = 0;
  v12 = [gContainerCache entriesForUserIdentities:allAccessibleUserIdentities contentClass:2 transient:0 error:&v52];
  v6 = v52;
  if (!v12)
  {
    obj = container_log_handle_for_category();
    if (os_log_type_enabled(obj, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v59 = allAccessibleUserIdentities;
      v60 = 2112;
      v61 = v6;
      _os_log_error_impl(&dword_1DF2C3000, obj, OS_LOG_TYPE_ERROR, "Failed to fetch list of app data containers tmp repair migration: userIdentities = %@, error = %@", buf, 0x16u);
    }

LABEL_33:

    if (error)
    {
      v37 = v6;
      v7 = 0;
      *error = v6;
    }

    else
    {
      v7 = 0;
    }

    goto LABEL_36;
  }

  v44 = v12;
  errorCopy = error;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  obj = v12;
  v13 = [obj countByEnumeratingWithState:&v54 objects:v53 count:16];
  if (!v13)
  {
    goto LABEL_21;
  }

  v14 = v13;
  v48 = *v55;
  v42 = allAccessibleUserIdentities;
  v43 = statusCopy;
  v41 = v6;
  while (2)
  {
    for (i = 0; i != v14; ++i)
    {
      if (*v55 != v48)
      {
        objc_enumerationMutation(obj);
      }

      v16 = *(*(&v54 + 1) + 8 * i);
      v17 = objc_autoreleasePoolPush();
      v51 = 0;
      containerPath = [v16 containerPath];
      containerDataURL = [containerPath containerDataURL];
      v20 = [containerDataURL URLByAppendingPathComponent:@"tmp" isDirectory:1];

      v50 = 0;
      LOBYTE(containerPath) = [v49 itemAtURL:v20 exists:&v51 + 1 isDirectory:&v51 error:&v50];
      v21 = v50;
      if ((containerPath & 1) == 0)
      {
        v33 = container_log_handle_for_category();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
        {
          path = [v20 path];
          *buf = 138412546;
          v59 = path;
          v60 = 2112;
          v61 = v21;
          _os_log_fault_impl(&dword_1DF2C3000, v33, OS_LOG_TYPE_FAULT, "Unable to check for existence of <tmp> dir in container repair migration; path = [%@], error = %@", buf, 0x16u);
        }

        error2 = [[MCMError alloc] initWithNSError:v21 url:v20 defaultErrorType:127];
        goto LABEL_32;
      }

      if (HIBYTE(v51) == 1 && v51 == 1)
      {
        goto LABEL_19;
      }

      v22 = objc_alloc_init(MCMResultPromise);
      v23 = [MCMCommandRecreateContainerStructure alloc];
      containerIdentity = [v16 containerIdentity];
      context = [(MCMCommand *)self context];
      v26 = [(MCMCommandRecreateContainerStructure *)v23 initWithConcreteContainerIdentity:containerIdentity context:context resultPromise:v22];

      [(MCMCommandRecreateContainerStructure *)v26 execute];
      result = [(MCMResultPromise *)v22 result];
      error = [result error];

      if (error)
      {
        result2 = [(MCMResultPromise *)v22 result];
        error2 = [result2 error];

        v36 = container_log_handle_for_category();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
        {
          path2 = [v20 path];
          *buf = 138412546;
          v59 = path2;
          v60 = 2112;
          v61 = error2;
          _os_log_fault_impl(&dword_1DF2C3000, v36, OS_LOG_TYPE_FAULT, "Failed to swap in <tmp> dir in container repair migration; path = [%@], error = %@", buf, 0x16u);
        }

LABEL_32:
        allAccessibleUserIdentities = v42;
        statusCopy = v43;
        v12 = v44;
        error = errorCopy;
        objc_autoreleasePoolPop(v17);
        v6 = error2;
        goto LABEL_33;
      }

      v29 = container_log_handle_for_category();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        path3 = [v20 path];
        *buf = 138412290;
        v59 = path3;
        _os_log_impl(&dword_1DF2C3000, v29, OS_LOG_TYPE_DEFAULT, "Repaired [%@]", buf, 0xCu);
      }

LABEL_19:
      objc_autoreleasePoolPop(v17);
    }

    v14 = [obj countByEnumeratingWithState:&v54 objects:v53 count:16];
    allAccessibleUserIdentities = v42;
    statusCopy = v43;
    v6 = v41;
    if (v14)
    {
      continue;
    }

    break;
  }

LABEL_21:

  v31 = container_log_handle_for_category();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    v32 = +[MCMMigrationStatus currentBuildVersion];
    *buf = 138412546;
    v59 = v32;
    v60 = 1024;
    LODWORD(v61) = 78;
    _os_log_impl(&dword_1DF2C3000, v31, OS_LOG_TYPE_DEFAULT, "Completed Tmp Dir Repair Migration on %@ : Success: %c", buf, 0x12u);
  }

  [statusCopy setMigrationCompleteForType:@"DaemonContainerCleaning"];
LABEL_3:
  v7 = 1;
LABEL_36:

  return v7;
}

- (void)execute
{
  v91 = *MEMORY[0x1E69E9840];
  context = objc_autoreleasePoolPush();
  v74 = 0;
  v75 = &v74;
  v76 = 0x3032000000;
  v77 = __Block_byref_object_copy__2545;
  v78 = __Block_byref_object_dispose__2546;
  v79 = 0;
  v70 = 0;
  v71 = &v70;
  v72 = 0x2020000000;
  v73 = 1;
  v66 = 0;
  v67 = &v66;
  v68 = 0x2020000000;
  v69 = 1;
  v2 = container_log_handle_for_category();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    context = [(MCMCommand *)self context];
    clientIdentity = [context clientIdentity];
    v5 = containermanager_copy_global_configuration();
    defaultUser = [v5 defaultUser];
    *buf = 138412546;
    *v81 = clientIdentity;
    *&v81[8] = 2112;
    *&v81[10] = defaultUser;
    _os_log_impl(&dword_1DF2C3000, v2, OS_LOG_TYPE_DEFAULT, "Container data migration requested by %@ for default user: %@", buf, 0x16u);
  }

  v7 = gCodeSigningMapping;
  context2 = [(MCMCommand *)self context];
  [v7 performAllCodeSigningMigrationAndReconciliationWithContext:context2];

  initForMobileUserMigration = [[MCMMigrationStatus alloc] initForMobileUserMigration];
  if (([initForMobileUserMigration hasMigrationOccurredForType:@"SubdirectoryMigration"] & 1) == 0)
  {
    context3 = [(MCMCommand *)self context];
    userIdentityCache = [context3 userIdentityCache];
    v65[0] = MEMORY[0x1E69E9820];
    v65[1] = 3221225472;
    v65[2] = __38__MCMCommandUserDataMigration_execute__block_invoke;
    v65[3] = &unk_1E86AFFE8;
    v65[4] = self;
    v65[5] = &v74;
    v65[6] = &v70;
    [userIdentityCache forEachAccessibleUserIdentitySynchronouslyExecuteBlock:v65];

    if (*(v71 + 24) == 1)
    {
      [initForMobileUserMigration setMigrationCompleteForType:@"SubdirectoryMigration"];
    }
  }

  context4 = [(MCMCommand *)self context];
  userIdentityCache2 = [context4 userIdentityCache];
  v64[0] = MEMORY[0x1E69E9820];
  v64[1] = 3221225472;
  v64[2] = __38__MCMCommandUserDataMigration_execute__block_invoke_8;
  v64[3] = &unk_1E86AFFE8;
  v64[4] = self;
  v64[5] = &v74;
  v64[6] = &v66;
  [userIdentityCache2 forEachAccessibleUserIdentitySynchronouslyExecuteBlock:v64];

  v63 = 1;
  v57 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(&unk_1F5A75AA0, "count")}];
  v89 = 0u;
  v90 = 0u;
  v87 = 0u;
  v88 = 0u;
  v13 = [&unk_1F5A75AA0 countByEnumeratingWithState:&v87 objects:v86 count:16];
  if (v13)
  {
    v58 = *v88;
    do
    {
      v59 = v13;
      for (i = 0; i != v59; ++i)
      {
        if (*v88 != v58)
        {
          objc_enumerationMutation(&unk_1F5A75AA0);
        }

        v15 = *(*(&v87 + 1) + 8 * i);
        v16 = [&unk_1F5A75AA0 objectForKeyedSubscript:v15];
        unsignedLongLongValue = [v16 unsignedLongLongValue];

        v63 = 1;
        context5 = [(MCMCommand *)self context];
        globalConfiguration = [context5 globalConfiguration];
        staticConfig = [globalConfiguration staticConfig];
        v21 = [staticConfig configForContainerClass:unsignedLongLongValue];

        context6 = [(MCMCommand *)self context];
        userIdentityCache3 = [context6 userIdentityCache];
        context7 = [(MCMCommand *)self context];
        clientIdentity2 = [context7 clientIdentity];
        posixUser = [clientIdentity2 posixUser];
        v27 = [userIdentityCache3 userIdentityForPersonalPersonaWithPOSIXUser:posixUser];

        context8 = [(MCMCommand *)self context];
        userIdentityCache4 = [context8 userIdentityCache];
        v30 = [MCMContainerIdentity containerIdentityWithUserIdentity:v27 identifier:v15 containerConfig:v21 platform:0 userIdentityCache:userIdentityCache4 error:&v63];

        if (v30)
        {
          v31 = (v75 + 5);
          obj = v75[5];
          v32 = [gContainerCache entryForContainerIdentity:v30 error:&obj];
          objc_storeStrong(v31, obj);
          metadataMinimal = [v32 metadataMinimal];
          if (metadataMinimal)
          {
            [v57 addObject:v30];
          }

          else
          {
            if ([v75[5] type] == 21)
            {
              v36 = v75[5];
              v75[5] = 0;
            }

            else
            {
              v36 = container_log_handle_for_category();
              if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
              {
                v37 = v75[5];
                *buf = 134218498;
                *v81 = unsignedLongLongValue;
                *&v81[8] = 2112;
                *&v81[10] = v15;
                v82 = 2112;
                v83 = v37;
                _os_log_error_impl(&dword_1DF2C3000, v36, OS_LOG_TYPE_ERROR, "Failed lookup when trying to remove deprecated [%llu:%@]: %@", buf, 0x20u);
              }
            }
          }
        }

        else
        {
          v32 = container_log_handle_for_category();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            v34 = v63;
            error_description = container_get_error_description();
            *buf = 134218754;
            *v81 = unsignedLongLongValue;
            *&v81[8] = 2112;
            *&v81[10] = v15;
            v82 = 2048;
            v83 = v34;
            v84 = 2080;
            v85 = error_description;
            _os_log_error_impl(&dword_1DF2C3000, v32, OS_LOG_TYPE_ERROR, "Could not create container identity when trying to remove deprecated [%llu:%@]: (%llu) %s", buf, 0x2Au);
          }
        }
      }

      v13 = [&unk_1F5A75AA0 countByEnumeratingWithState:&v87 objects:v86 count:16];
    }

    while (v13);
  }

  if ([v57 count])
  {
    v38 = objc_alloc_init(MCMResultPromise);
    v39 = [v57 copy];
    context9 = [(MCMCommand *)self context];
    v41 = [MCMCommandOperationDelete commandForOperationDeleteWithContainerIdentities:v39 removeAllCodeSignInfo:1 context:context9 resultPromise:v38];

    [v41 execute];
    result = [(MCMResultPromise *)v38 result];
    error = [result error];

    if (error)
    {
      v44 = container_log_handle_for_category();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *v81 = error;
        _os_log_error_impl(&dword_1DF2C3000, v44, OS_LOG_TYPE_ERROR, "Failed to destroy container(s) during user data migration; error = %@", buf, 0xCu);
      }
    }
  }

  v45 = (v75 + 5);
  v61 = v75[5];
  v46 = [(MCMCommandUserDataMigration *)self _repairTmpDirWithMigrationStatus:initForMobileUserMigration error:&v61];
  objc_storeStrong(v45, v61);
  if (*(v71 + 24) == 1)
  {
    v47 = v67[3] & v46;
  }

  else
  {
    v47 = 0;
  }

  v48 = container_log_handle_for_category();
  if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
  {
    v49 = v75[5];
    *buf = 67109378;
    *v81 = v47 & 1;
    *&v81[4] = 2112;
    *&v81[6] = v49;
    _os_log_impl(&dword_1DF2C3000, v48, OS_LOG_TYPE_DEFAULT, "Per user data migration result: %d, error = %@", buf, 0x12u);
  }

  if (v47)
  {
    v50 = objc_opt_new();
  }

  else
  {
    v51 = [MCMResultBase alloc];
    v50 = [(MCMResultBase *)v51 initWithError:v75[5]];
  }

  v52 = v50;
  resultPromise = [(MCMCommand *)self resultPromise];
  [resultPromise completeWithResult:v52];

  _Block_object_dispose(&v66, 8);
  _Block_object_dispose(&v70, 8);

  _Block_object_dispose(&v74, 8);
  objc_autoreleasePoolPop(contexta);
}

void __38__MCMCommandUserDataMigration_execute__block_invoke(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) context];
  v5 = [v4 userIdentityCache];
  v6 = [MCMCommandContext privilegedWithUserIdentity:v3 userIdentityCache:v5];

  v7 = container_log_handle_for_category();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = +[MCMMigrationStatus currentBuildVersion];
    *buf = 138412546;
    v25 = v3;
    v26 = 2112;
    v27 = v8;
    _os_log_impl(&dword_1DF2C3000, v7, OS_LOG_TYPE_DEFAULT, "Performing Per User Subdirectory Migration for %@ on %@", buf, 0x16u);
  }

  v9 = [*(a1 + 32) context];
  v10 = [v9 classIterator];
  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = __38__MCMCommandUserDataMigration_execute__block_invoke_3;
  v20 = &unk_1E86AFE58;
  v11 = v6;
  v21 = v11;
  v12 = v3;
  v22 = v12;
  v23 = *(a1 + 40);
  [v10 selectUserWithIterator:&v17];

  v13 = container_log_handle_for_category();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [MCMMigrationStatus currentBuildVersion:v17];
    v15 = v14;
    if (*(*(*(a1 + 48) + 8) + 24))
    {
      v16 = 89;
    }

    else
    {
      v16 = 78;
    }

    *buf = 138412802;
    v25 = v12;
    v26 = 2112;
    v27 = v14;
    v28 = 1024;
    v29 = v16;
    _os_log_impl(&dword_1DF2C3000, v13, OS_LOG_TYPE_DEFAULT, "Completed Per User Subdirectory Migration for %@ on %@ : Success: %c", buf, 0x1Cu);
  }
}

void __38__MCMCommandUserDataMigration_execute__block_invoke_8(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = container_log_handle_for_category();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = +[MCMMigrationStatus currentBuildVersion];
    *buf = 138412546;
    v21 = v3;
    v22 = 2112;
    v23 = v5;
    _os_log_impl(&dword_1DF2C3000, v4, OS_LOG_TYPE_DEFAULT, "Performing User Data Protection Migration for %@ on %@", buf, 0x16u);
  }

  v6 = [*(a1 + 32) context];
  v7 = [v6 classIterator];
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __38__MCMCommandUserDataMigration_execute__block_invoke_9;
  v16 = &unk_1E86AFE58;
  v17 = *(a1 + 32);
  v8 = v3;
  v18 = v8;
  v19 = *(a1 + 40);
  [v7 selectDataProtectedWithIterator:&v13];

  v9 = container_log_handle_for_category();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [MCMMigrationStatus currentBuildVersion:v13];
    v11 = v10;
    if (*(*(*(a1 + 48) + 8) + 24))
    {
      v12 = 89;
    }

    else
    {
      v12 = 78;
    }

    *buf = 138412802;
    v21 = v8;
    v22 = 2112;
    v23 = v10;
    v24 = 1024;
    v25 = v12;
    _os_log_impl(&dword_1DF2C3000, v9, OS_LOG_TYPE_DEFAULT, "Completed User Data Protection Migration for %@ on %@ : Success: %c", buf, 0x1Cu);
  }
}

void __38__MCMCommandUserDataMigration_execute__block_invoke_9(uint64_t a1, void *a2)
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) context];
  v5 = [v4 containerCache];
  v6 = [MEMORY[0x1E695DFD8] setWithObject:*(a1 + 40)];
  v7 = [v3 containerClass];
  v8 = *(*(a1 + 48) + 8);
  obj = *(v8 + 40);
  v9 = [v5 entriesForUserIdentities:v6 contentClass:v7 transient:0 error:&obj];
  objc_storeStrong((v8 + 40), obj);

  if (v9)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v10 = v9;
    v11 = [v10 countByEnumeratingWithState:&v26 objects:v25 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v27;
      do
      {
        v14 = 0;
        do
        {
          if (*v27 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v26 + 1) + 8 * v14);
          v16 = objc_autoreleasePoolPush();
          v17 = *(*(a1 + 48) + 8);
          v23 = *(v17 + 40);
          v18 = [v15 metadataWithError:&v23];
          objc_storeStrong((v17 + 40), v23);
          if (v18)
          {
            [*(a1 + 32) _setDataProtectionIfNecessaryOnContainer:v18];
          }

          objc_autoreleasePoolPop(v16);
          ++v14;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v26 objects:v25 count:16];
      }

      while (v12);
    }
  }

  else
  {
    v19 = container_log_handle_for_category();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = *(a1 + 40);
      v21 = [v3 containerClass];
      v22 = *(*(*(a1 + 48) + 8) + 40);
      *buf = 138412802;
      v31 = v20;
      v32 = 2048;
      v33 = v21;
      v34 = 2112;
      v35 = v22;
      _os_log_error_impl(&dword_1DF2C3000, v19, OS_LOG_TYPE_ERROR, "Failed to fetch list of data containers for userIdentity: %@, class: %ld: %@", buf, 0x20u);
    }

    *(*(*(a1 + 56) + 8) + 24) = 0;
  }
}

void __38__MCMCommandUserDataMigration_execute__block_invoke_3(uint64_t a1, void *a2)
{
  v53 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) containerCache];
  v5 = [MEMORY[0x1E695DFD8] setWithObject:*(a1 + 40)];
  v33 = v3;
  v6 = [v3 containerClass];
  v7 = *(*(a1 + 48) + 8);
  obj = *(v7 + 40);
  v8 = [v4 entriesForUserIdentities:v5 contentClass:v6 transient:0 error:&obj];
  objc_storeStrong((v7 + 40), obj);

  if (v8)
  {
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v32 = v8;
    v38 = v8;
    v9 = [v38 countByEnumeratingWithState:&v49 objects:v48 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v50;
      do
      {
        v12 = 0;
        do
        {
          if (*v50 != v11)
          {
            objc_enumerationMutation(v38);
          }

          v13 = *(*(&v49 + 1) + 8 * v12);
          v14 = objc_autoreleasePoolPush();
          v15 = [v13 metadataMinimal];
          v16 = objc_alloc_init(MCMResultPromise);
          v17 = [MCMCommandRecreateContainerStructure alloc];
          v18 = [v15 containerIdentity];
          v19 = [(MCMCommandRecreateContainerStructure *)v17 initWithConcreteContainerIdentity:v18 context:*(a1 + 32) resultPromise:v16];

          [(MCMCommandRecreateContainerStructure *)v19 execute];
          v20 = [(MCMResultPromise *)v16 result];
          v21 = [v20 error];

          if (v21)
          {
            v22 = [(MCMResultPromise *)v16 result];
            v23 = [v22 error];
            v24 = *(*(a1 + 48) + 8);
            v25 = *(v24 + 40);
            *(v24 + 40) = v23;

            v26 = container_log_handle_for_category();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              v37 = [v15 userIdentity];
              v34 = [v33 containerClass];
              v35 = [v15 identifier];
              v36 = [(MCMResultPromise *)v16 result];
              v27 = [v36 error];
              *buf = 138413058;
              v41 = v37;
              v42 = 2048;
              v43 = v34;
              v44 = 2112;
              v45 = v35;
              v46 = 2112;
              v47 = v27;
              v28 = v27;
              _os_log_error_impl(&dword_1DF2C3000, v26, OS_LOG_TYPE_ERROR, "Failed to recreate container directory structure for %@:%ld:%@ : %@", buf, 0x2Au);
            }

            *(*(*(a1 + 56) + 8) + 24) = 0;
          }

          objc_autoreleasePoolPop(v14);
          ++v12;
        }

        while (v10 != v12);
        v10 = [v38 countByEnumeratingWithState:&v49 objects:v48 count:16];
      }

      while (v10);
    }

    v8 = v32;
  }

  else
  {
    v29 = container_log_handle_for_category();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = *(a1 + 40);
      v31 = *(*(*(a1 + 48) + 8) + 40);
      *buf = 138412802;
      v41 = v30;
      v42 = 2048;
      v43 = 0;
      v44 = 2112;
      v45 = v31;
      _os_log_error_impl(&dword_1DF2C3000, v29, OS_LOG_TYPE_ERROR, "Failed to fetch list of containers for userIdentity: %@, class %ld : %@", buf, 0x20u);
    }

    *(*(*(a1 + 56) + 8) + 24) = 0;
  }
}

- (BOOL)preflightClientAllowed
{
  context = [(MCMCommand *)self context];
  clientIdentity = [context clientIdentity];
  isAllowedToStartUserDataMigration = [clientIdentity isAllowedToStartUserDataMigration];

  return isAllowedToStartUserDataMigration;
}

@end