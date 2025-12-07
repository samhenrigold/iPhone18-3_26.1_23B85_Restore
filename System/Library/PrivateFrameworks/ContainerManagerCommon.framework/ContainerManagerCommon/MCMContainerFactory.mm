@interface MCMContainerFactory
- (BOOL)deleteURL:(id)l forUserIdentity:(id)identity error:(id *)error;
- (BOOL)deleteURL:(id)l forUserIdentity:(id)identity reclaimSoon:(BOOL)soon error:(id *)error;
- (BOOL)upgradeContainer:(id)container clientIdentity:(id)identity error:(id *)error;
- (MCMContainerFactory)initWithContainerCache:(id)cache clientIdentity:(id)identity userIdentityCache:(id)identityCache;
- (id)_containerPathIdentifierForContainerIdentity:(id)identity;
- (id)_createContainerForContainerIdentity:(id)identity error:(id *)error;
- (id)_generateConcreteContainerIdentityFromContainerIdentity:(id)identity error:(id *)error;
- (id)containerForContainerIdentity:(id)identity createIfNecessary:(BOOL)necessary error:(id *)error;
- (id)createStagedContainerForContainerIdentity:(id)identity finalContainerPath:(id *)path dataProtectionClass:(int)class error:(id *)error;
@end

@implementation MCMContainerFactory

- (id)_containerPathIdentifierForContainerIdentity:(id)identity
{
  identityCopy = identity;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    containerPathIdentifier = [identityCopy containerPathIdentifier];
    goto LABEL_13;
  }

  uUID = [MEMORY[0x1E696AFB0] UUID];
  containerPathIdentifier = [uUID UUIDString];

  containerClass = [identityCopy containerClass];
  [identityCopy platform];
  [identityCopy transient];
  identifier = [identityCopy identifier];
  if ((container_class_supports_randomized_path() & 1) == 0)
  {
    +[MCMContainerPath containerPathIdentifierForCodeSignIdentifier:containerClass:](MCMContainerPath, "containerPathIdentifierForCodeSignIdentifier:containerClass:", identifier, [identityCopy containerClass]);
    containerPathIdentifier = v10 = containerPathIdentifier;
LABEL_11:

    goto LABEL_12;
  }

  if ((containerClass & 0xFFFFFFFFFFFFFFFELL) == 0xC)
  {
    v8 = +[MCMEntitlementBypassList sharedBypassList];
    v9 = v8;
    if (containerClass == 13)
    {
      [v8 wellknownSystemGroupContainerForId:identifier];
    }

    else
    {
      [v8 wellknownSystemContainerForId:identifier];
    }
    v10 = ;

    if (v10)
    {
      v10 = v10;

      containerPathIdentifier = v10;
    }

    goto LABEL_11;
  }

LABEL_12:

LABEL_13:

  return containerPathIdentifier;
}

- (id)_generateConcreteContainerIdentityFromContainerIdentity:(id)identity error:(id *)error
{
  v25[1] = *MEMORY[0x1E69E9840];
  identityCopy = identity;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = identityCopy;
    goto LABEL_13;
  }

  identifier = [identityCopy identifier];
  userIdentity = [identityCopy userIdentity];
  platform = [identityCopy platform];
  transient = [identityCopy transient];
  v25[0] = 1;
  uUID = [MEMORY[0x1E696AFB0] UUID];
  v12 = [(MCMContainerFactory *)self _containerPathIdentifierForContainerIdentity:identityCopy];
  if (!v12)
  {
    v18 = [[MCMError alloc] initWithErrorType:138];
    v17 = userIdentity;
    if (!error)
    {
LABEL_11:
      v7 = 0;
      goto LABEL_12;
    }

LABEL_9:
    v19 = v18;
    v7 = 0;
    *error = v18;
    goto LABEL_12;
  }

  errorCopy = error;
  v13 = identifier;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    uuid = [identityCopy uuid];

    uUID = uuid;
  }

  containerConfig = [identityCopy containerConfig];
  userIdentityCache = [(MCMContainerFactory *)self userIdentityCache];
  BYTE1(v22) = transient;
  LOBYTE(v22) = 0;
  v17 = userIdentity;
  identifier = v13;
  v7 = [MCMConcreteContainerIdentityForLibsystem containerIdentityWithUUID:uUID userIdentity:userIdentity identifier:v13 containerConfig:containerConfig platform:platform containerPathIdentifier:v12 existed:v22 transient:userIdentityCache userIdentityCache:v25 error:?];

  if (!v7)
  {
    v20 = [MCMError alloc];
    v18 = [(MCMError *)v20 initWithErrorType:v25[0]];
    error = errorCopy;
    if (!errorCopy)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v18 = 0;
LABEL_12:

LABEL_13:

  return v7;
}

- (id)_createContainerForContainerIdentity:(id)identity error:(id *)error
{
  v97 = *MEMORY[0x1E69E9840];
  identityCopy = identity;
  identifier = [identityCopy identifier];
  containerClass = [identityCopy containerClass];
  userIdentity = [identityCopy userIdentity];
  v10 = +[MCMTestLocks sharedInstance];
  [v10 waitOnLock:7];

  v11 = +[MCMDataProtectionManager defaultManager];
  clientIdentity = [(MCMContainerFactory *)self clientIdentity];
  v13 = [v11 intendedDataProtectionClassBasedOnEntitlementsForIdentifier:identifier clientIdentity:clientIdentity containerClass:containerClass info:0];

  v87 = 0;
  v88 = 0;
  v14 = [(MCMContainerFactory *)self createStagedContainerForContainerIdentity:identityCopy finalContainerPath:&v88 dataProtectionClass:v13 error:&v87];
  v15 = v88;
  v16 = v87;
  if (!v14)
  {
    v82 = 0;
    containerPath = 0;
    v34 = 0;
    v49 = 0;
    if (!error)
    {
      goto LABEL_47;
    }

    goto LABEL_45;
  }

  v79 = containerClass;
  v80 = userIdentity;
  v81 = v16;
  errorCopy = error;
  v77 = identityCopy;
  containerIdentity = [v14 containerIdentity];
  containerPathIdentifier = [containerIdentity containerPathIdentifier];
  v18 = container_log_handle_for_category();
  if (os_signpost_enabled(v18))
  {
    clientIdentity2 = [(MCMContainerFactory *)self clientIdentity];
    codeSignInfo = [clientIdentity2 codeSignInfo];
    identifier2 = [codeSignInfo identifier];
    v22 = identifier2;
    v23 = @"<unknown>";
    *buf = 138478595;
    v90 = containerPathIdentifier;
    if (identifier2)
    {
      v23 = identifier2;
    }

    v91 = 2113;
    v92 = identifier;
    v93 = 2050;
    v94 = v79;
    v95 = 2113;
    v96 = v23;
    _os_signpost_emit_with_name_impl(&dword_1DF2C3000, v18, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CreatingContainer", " uuid=%{private, signpost.description:attribute}@  identifier=%{private, signpost.description:attribute}@  class=%{public, signpost.description:attribute}llu  clientIdentifier=%{private, signpost.description:attribute}@ ", buf, 0x2Au);
  }

  selfCopy = self;
  v82 = containerPathIdentifier;
  v78 = identifier;

  containerPath = [v14 containerPath];
  containerClassPath = [v15 containerClassPath];
  v86 = 0;
  v26 = [containerClassPath createIfNecessaryWithError:&v86];
  v27 = v86;

  if (v26)
  {
    v28 = 0;
    v29 = *MEMORY[0x1E696A798];
    while (1)
    {

      v30 = +[MCMFileManager defaultManager];
      containerRootURL = [containerPath containerRootURL];
      containerRootURL2 = [v15 containerRootURL];
      v85 = 0;
      v33 = [v30 moveItemAtURL:containerRootURL toURL:containerRootURL2 error:&v85];
      v34 = v85;

      if (v33)
      {
        break;
      }

      v35 = container_log_handle_for_category();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        containerRootURL3 = [containerPath containerRootURL];
        path = [containerRootURL3 path];
        containerRootURL4 = [v15 containerRootURL];
        path2 = [containerRootURL4 path];
        *buf = 138412802;
        v90 = path;
        v91 = 2112;
        v92 = path2;
        v93 = 2112;
        v94 = v34;
        _os_log_error_impl(&dword_1DF2C3000, v35, OS_LOG_TYPE_ERROR, "Failed to move staging dir: %@ to live dir: %@; error = %@", buf, 0x20u);
      }

      domain = [v34 domain];
      if ([domain isEqualToString:v29])
      {
        code = [v34 code];

        if (code == 66)
        {

          v62 = [MCMError alloc];
          containerRootURL5 = [v15 containerRootURL];
          path3 = [containerRootURL5 path];
          v65 = [(MCMError *)v62 initWithErrorType:130 category:1 path:path3 POSIXerrno:66];

          p_super = containerRootURL5;
          goto LABEL_21;
        }
      }

      else
      {
      }

      domain2 = [v34 domain];
      if (![domain2 isEqualToString:v29])
      {

LABEL_32:
        v65 = [[MCMError alloc] initWithErrorType:8];
        identifier = v78;
        p_super = &v81->super;
        goto LABEL_33;
      }

      v39 = [v34 code] != 2;

      if ((v28 | v39))
      {
        goto LABEL_32;
      }

      containerClassPath2 = [v15 containerClassPath];
      [containerClassPath2 setExists:0];

      containerClassPath3 = [v15 containerClassPath];
      v86 = v34;
      v42 = [containerClassPath3 createIfNecessaryWithError:&v86];
      v27 = v86;

      v28 = 1;
      if ((v42 & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    identifier = v78;
    if (_os_feature_enabled_impl())
    {
      v50 = +[MCMFileManager defaultManager];
      containerRootURL6 = [v15 containerRootURL];
      v84 = 0;
      v52 = [v50 enableFastDiskUsageForURL:containerRootURL6 error:&v84];
      v53 = v84;

      if ((v52 & 1) == 0)
      {
        v54 = container_log_handle_for_category();
        if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
        {
          containerRootURL7 = [v15 containerRootURL];
          path4 = [containerRootURL7 path];
          *buf = 138412546;
          v90 = path4;
          v91 = 2112;
          v92 = v53;
          _os_log_error_impl(&dword_1DF2C3000, v54, OS_LOG_TYPE_ERROR, "Failed to enable fast disk stats on new container [%@]; error = %@", buf, 0x16u);
        }
      }
    }

    v49 = [v14 metadataByChangingContainerPath:v15];
    containerPath = 0;
  }

  else
  {
LABEL_18:

    v46 = [MCMError alloc];
    containerClassPath4 = [v15 containerClassPath];
    classURL = [containerClassPath4 classURL];
    v65 = [(MCMError *)v46 initWithNSError:v27 url:classURL defaultErrorType:8];

    p_super = container_log_handle_for_category();
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
    {
      classURL2 = [v15 classURL];
      path5 = [classURL2 path];
      *buf = 138412546;
      v90 = path5;
      v91 = 2112;
      v92 = v27;
      _os_log_error_impl(&dword_1DF2C3000, p_super, OS_LOG_TYPE_ERROR, "Failed to create class dir at %@ : %@", buf, 0x16u);
    }

    v34 = v27;
LABEL_21:
    identifier = v78;
LABEL_33:

    userIdentity = v80;
    if (!containerPath)
    {
      v49 = 0;
      v16 = v65;
      error = errorCopy;
      identityCopy = v77;
      goto LABEL_44;
    }

    v55 = containermanager_copy_global_configuration();
    v56 = [v55 isGlobalContainerClass:v79];

    if (v56)
    {
      v57 = 0;
    }

    else
    {
      v57 = v80;
    }

    containerRootURL8 = [containerPath containerRootURL];
    v83 = 0;
    v59 = [(MCMContainerFactory *)selfCopy deleteURL:containerRootURL8 forUserIdentity:v57 reclaimSoon:1 error:&v83];
    v14 = v83;

    if (!v59)
    {
      v60 = container_log_handle_for_category();
      if (os_log_type_enabled(v60, OS_LOG_TYPE_FAULT))
      {
        containerRootURL9 = [containerPath containerRootURL];
        path6 = [containerRootURL9 path];
        *buf = 138412546;
        v90 = path6;
        v91 = 2112;
        v92 = v14;
        _os_log_fault_impl(&dword_1DF2C3000, v60, OS_LOG_TYPE_FAULT, "Failed to remove staging dir: %@; error = %@", buf, 0x16u);

        identifier = v78;
      }
    }

    v49 = 0;
    v81 = v65;
  }

  error = errorCopy;
  identityCopy = v77;
  userIdentity = v80;
  v16 = v81;
LABEL_44:
  v14 = containerIdentity;
  if (!error)
  {
    goto LABEL_47;
  }

LABEL_45:
  if (!v49)
  {
    v16 = v16;
    *error = v16;
  }

LABEL_47:

  return v49;
}

- (BOOL)deleteURL:(id)l forUserIdentity:(id)identity reclaimSoon:(BOOL)soon error:(id *)error
{
  soonCopy = soon;
  v54 = *MEMORY[0x1E69E9840];
  lCopy = l;
  identityCopy = identity;
  v48 = 0;
  v49 = &v48;
  v50 = 0x3032000000;
  v51 = __Block_byref_object_copy__12874;
  v52 = __Block_byref_object_dispose__12875;
  v53 = 0;
  v46[0] = 0;
  v46[1] = v46;
  v46[2] = 0x3032000000;
  v46[3] = __Block_byref_object_copy__12874;
  v46[4] = __Block_byref_object_dispose__12875;
  v47 = 0;
  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  v45 = 0;
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v41 = 0;
  v36[0] = 0;
  v36[1] = v36;
  v36[2] = 0x3032000000;
  v36[3] = __Block_byref_object_copy__12874;
  v36[4] = __Block_byref_object_dispose__12875;
  v37 = 0;
  userIdentityCache = [(MCMContainerFactory *)self userIdentityCache];
  defaultUserIdentity = [userIdentityCache defaultUserIdentity];

  v14 = MCMSharedDeathrowQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__MCMContainerFactory_deleteURL_forUserIdentity_reclaimSoon_error___block_invoke;
  block[3] = &unk_1E86B0C50;
  v15 = identityCopy;
  v27 = v15;
  v31 = &v48;
  v32 = v36;
  v33 = v46;
  v16 = lCopy;
  v28 = v16;
  selfCopy = self;
  v17 = defaultUserIdentity;
  v30 = v17;
  v34 = &v42;
  v35 = &v38;
  dispatch_sync(v14, block);

  if (v43[3])
  {
    if (soonCopy)
    {
      v18 = [MCMCommandContext alloc];
      clientIdentity = [(MCMContainerFactory *)self clientIdentity];
      userIdentityCache2 = [(MCMContainerFactory *)self userIdentityCache];
      v21 = containermanager_copy_global_configuration();
      v22 = [(MCMCommandContext *)v18 initWithClientIdentity:clientIdentity containerCache:0 containerFactory:self userIdentityCache:userIdentityCache2 clientFactory:0 kernelPersonaID:0 globalConfiguration:v21];

      v23 = [[MCMCommandOperationReclaimDiskSpace alloc] initWithAsynchronously:1 context:v22 resultPromise:0];
      [(MCMCommandOperationReclaimDiskSpace *)v23 execute];
    }

    goto LABEL_5;
  }

  if (v39[3])
  {
LABEL_5:
    v24 = 1;
    goto LABEL_6;
  }

  v24 = 0;
  if (error)
  {
    *error = v49[5];
  }

LABEL_6:

  _Block_object_dispose(v36, 8);
  _Block_object_dispose(&v38, 8);
  _Block_object_dispose(&v42, 8);
  _Block_object_dispose(v46, 8);

  _Block_object_dispose(&v48, 8);
  return v24;
}

void __67__MCMContainerFactory_deleteURL_forUserIdentity_reclaimSoon_error___block_invoke(uint64_t a1)
{
  v55 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    [MCMContainerClassDeletedPath deletedURLWithUserIdentity:?];
  }

  else
  {
    +[MCMContainerClassDeletedPath deletedGlobalURL];
  }
  v2 = ;
  if (!v2)
  {
    v21 = [[MCMError alloc] initWithErrorType:13];
    v22 = *(*(a1 + 64) + 8);
    v23 = *(v22 + 40);
    *(v22 + 40) = v21;

    v14 = container_log_handle_for_category();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1DF2C3000, v14, OS_LOG_TYPE_ERROR, "Could not get deathrow URL", buf, 2u);
    }

    goto LABEL_23;
  }

  v3 = +[MCMFileManager defaultManager];
  v4 = *(*(a1 + 80) + 8);
  obj = *(v4 + 40);
  v5 = [v3 createTemporaryDirectoryInDirectoryURL:v2 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = *(*(a1 + 72) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = *(*(*(a1 + 72) + 8) + 40);
  if (v8)
  {
    v9 = [*(a1 + 40) lastPathComponent];
    v10 = [v8 URLByAppendingPathComponent:v9 isDirectory:{objc_msgSend(*(a1 + 40), "hasDirectoryPath")}];
    v11 = *(*(a1 + 72) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;

    v13 = [*(a1 + 48) userIdentityCache];
    v14 = [v13 libraryRepairForUserIdentity:*(a1 + 56)];

    v15 = *(*(a1 + 80) + 8);
    v16 = *(v15 + 40);
    v17 = *(a1 + 40);
    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 3221225472;
    v46[2] = __67__MCMContainerFactory_deleteURL_forUserIdentity_reclaimSoon_error___block_invoke_15;
    v46[3] = &unk_1E86B1090;
    v46[4] = *(a1 + 72);
    v47 = v16;
    v18 = [v14 fixAndRetryIfPermissionsErrorWithURL:v17 error:&v47 duringBlock:v46];
    objc_storeStrong((v15 + 40), v47);
    *(*(*(a1 + 88) + 8) + 24) = v18;
    if (*(*(*(a1 + 88) + 8) + 24))
    {
      goto LABEL_18;
    }

    v19 = [*(*(*(a1 + 80) + 8) + 40) domain];
    if ([v19 isEqualToString:*MEMORY[0x1E696A798]])
    {
      v20 = [*(*(*(a1 + 80) + 8) + 40) code];

      if (v20 == 2)
      {
        *(*(*(a1 + 96) + 8) + 24) = 1;
LABEL_23:

        goto LABEL_24;
      }
    }

    else
    {
    }

    v29 = [[MCMError alloc] initWithErrorType:41];
    v30 = *(*(a1 + 64) + 8);
    v31 = *(v30 + 40);
    *(v30 + 40) = v29;

    v27 = container_log_handle_for_category();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v40 = [*(a1 + 40) path];
      v41 = [*(*(*(a1 + 72) + 8) + 40) path];
      v42 = *(*(*(a1 + 80) + 8) + 40);
      *buf = 138412802;
      v50 = v40;
      v51 = 2112;
      v52 = v41;
      v53 = 2112;
      v54 = v42;
      _os_log_error_impl(&dword_1DF2C3000, v27, OS_LOG_TYPE_ERROR, "Failed to move item at: %@ to: %@; error = %@", buf, 0x20u);
    }
  }

  else
  {
    v24 = [[MCMError alloc] initWithErrorType:41];
    v25 = *(*(a1 + 64) + 8);
    v26 = *(v25 + 40);
    *(v25 + 40) = v24;

    v14 = container_log_handle_for_category();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    v27 = [*(a1 + 40) path];
    v28 = *(*(*(a1 + 80) + 8) + 40);
    *buf = 138412546;
    v50 = v27;
    v51 = 2112;
    v52 = v28;
    _os_log_error_impl(&dword_1DF2C3000, v14, OS_LOG_TYPE_ERROR, "Failed to create unique directory at: %@; error = %@", buf, 0x16u);
  }

LABEL_18:
  if ((*(*(*(a1 + 88) + 8) + 24) & 1) == 0)
  {
    v32 = [*(a1 + 48) userIdentityCache];
    v14 = [v32 libraryRepairForUserIdentity:*(a1 + 56)];

    v33 = *(a1 + 40);
    v34 = *(*(a1 + 80) + 8);
    v45 = *(v34 + 40);
    v35 = [v14 fixAndRetryIfPermissionsErrorWithURL:v33 error:&v45 duringBlock:&__block_literal_global_12883];
    objc_storeStrong((v34 + 40), v45);
    *(*(*(a1 + 96) + 8) + 24) = v35;
    if ((*(*(*(a1 + 96) + 8) + 24) & 1) == 0)
    {
      v36 = [[MCMError alloc] initWithErrorType:41];
      v37 = *(*(a1 + 64) + 8);
      v38 = *(v37 + 40);
      *(v37 + 40) = v36;

      v39 = container_log_handle_for_category();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        v43 = [*(a1 + 40) path];
        v44 = *(*(*(a1 + 80) + 8) + 40);
        *buf = 138412546;
        v50 = v43;
        v51 = 2112;
        v52 = v44;
        _os_log_error_impl(&dword_1DF2C3000, v39, OS_LOG_TYPE_ERROR, "Failed to direct-delete [%@]; error = %@", buf, 0x16u);
      }
    }

    goto LABEL_23;
  }

LABEL_24:
}

uint64_t __67__MCMContainerFactory_deleteURL_forUserIdentity_reclaimSoon_error___block_invoke_15(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = +[MCMFileManager defaultManager];
  v7 = [v6 moveItemAtURL:v5 toURL:*(*(*(a1 + 32) + 8) + 40) error:a3];

  return v7;
}

uint64_t __67__MCMContainerFactory_deleteURL_forUserIdentity_reclaimSoon_error___block_invoke_17(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  v5 = +[MCMFileManager defaultManager];
  v6 = [v5 removeItemAtURL:v4 error:a3];

  return v6;
}

- (BOOL)deleteURL:(id)l forUserIdentity:(id)identity error:(id *)error
{

  return [(MCMContainerFactory *)self deleteURL:l forUserIdentity:identity reclaimSoon:0 error:error];
}

- (id)containerForContainerIdentity:(id)identity createIfNecessary:(BOOL)necessary error:(id *)error
{
  necessaryCopy = necessary;
  v95 = *MEMORY[0x1E69E9840];
  identityCopy = identity;
  transient = [identityCopy transient];
  LODWORD(platform) = [identityCopy platform];
  clientIdentity = [(MCMContainerFactory *)self clientIdentity];
  codeSignInfo = [clientIdentity codeSignInfo];
  identifier = [codeSignInfo identifier];

  userIdentity = [identityCopy userIdentity];
  containerClass = [identityCopy containerClass];
  selfCopy = self;
  if (!platform)
  {
    clientIdentity2 = [(MCMContainerFactory *)self clientIdentity];
    platform = [clientIdentity2 platform];

    v13 = [identityCopy identityBySettingPlatform:platform];

    identityCopy = v13;
  }

  v14 = container_log_handle_for_category();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    [(MCMContainerFactory *)self clientIdentity];
    v44 = v43 = identifier;
    codeSignInfo2 = [v44 codeSignInfo];
    entitlements = [codeSignInfo2 entitlements];
    *buf = 138413570;
    v89 = identityCopy;
    v90 = 1024;
    *v91 = necessaryCopy;
    *&v91[4] = 1024;
    *&v91[6] = platform;
    *v92 = 1024;
    *&v92[2] = transient;
    LOWORD(v93) = 1024;
    *(&v93 + 2) = [entitlements privileged];
    HIWORD(v93) = 2112;
    v94 = v43;
    _os_log_debug_impl(&dword_1DF2C3000, v14, OS_LOG_TYPE_DEBUG, "createOrLookup; identity: %@, createIfNecessary: %d, platform: %u, transient: %d, privileged: %d, clientBundleIdentifier: %@", buf, 0x2Eu);

    identifier = v43;
  }

  if (!identityCopy)
  {
    v18 = [[MCMError alloc] initWithErrorType:38];
    v19 = container_log_handle_for_category();
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    *buf = 0;
    v20 = "Cannot lookup a nil container identity.";
LABEL_64:
    _os_log_error_impl(&dword_1DF2C3000, v19, OS_LOG_TYPE_ERROR, v20, buf, 2u);
LABEL_10:

    v21 = 0;
    v22 = 0;
LABEL_11:
    if (v18)
    {
      v23 = v18;
      v24 = 0;
      *error = v18;
LABEL_13:
      v25 = v18;
    }

    else
    {
      v25 = 0;
      v24 = 0;
    }

    goto LABEL_57;
  }

  v15 = containermanager_copy_global_configuration();
  v16 = [v15 isUnsupportedSystemContainerWithContainerClass:containerClass];

  if (v16)
  {
    v18 = [[MCMError alloc] initWithErrorType:72];
    v19 = container_log_handle_for_category();
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    *buf = 0;
    v20 = "System containers are unsupported on this platform.";
    goto LABEL_64;
  }

  v74 = identifier;
  v75 = containerClass;
  v21 = 0;
  v18 = 0;
  v24 = 0;
  v26 = 0;
  *&v17 = 136315138;
  v73 = v17;
  v27 = selfCopy;
  while (1)
  {
    v28 = v26;
    v29 = v21;

    cache = [(MCMContainerFactory *)v27 cache];
    v21 = [cache classCacheForContainerIdentity:identityCopy];

    cache2 = [(MCMContainerFactory *)v27 cache];
    v87 = 0;
    v24 = [cache2 entryForContainerIdentity:identityCopy classCache:v21 error:&v87];
    v18 = v87;

    if (v24)
    {
      if (!transient || (objc_opt_class(), ((objc_opt_isKindOfClass() | !necessaryCopy) & 1) != 0))
      {
        v22 = 0;
        identifier = v74;
        goto LABEL_49;
      }

      v32 = objc_alloc(MEMORY[0x1E695DFF8]);
      v79 = v24;
      containerPath = [v24 containerPath];
      containerRootURL = [containerPath containerRootURL];
      path = [containerRootURL path];
      v36 = [v32 initFileURLWithPath:path isDirectory:1];

      v37 = containermanager_copy_global_configuration();
      LOBYTE(v32) = [v37 isGlobalContainerClass:v75];

      if (v32)
      {
        v38 = 0;
      }

      else
      {
        v38 = userIdentity;
      }

      v86 = v18;
      v40 = [(MCMContainerFactory *)selfCopy deleteURL:v36 forUserIdentity:v38 reclaimSoon:1 error:&v86, v73];
      v39 = v86;

      if (!v40)
      {
        v18 = [[MCMError alloc] initWithErrorType:5];

        v52 = container_log_handle_for_category();
        if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
        {
          path2 = [v36 path];
          *buf = 138412546;
          v89 = path2;
          v90 = 2112;
          *v91 = v18;
          _os_log_error_impl(&dword_1DF2C3000, v52, OS_LOG_TYPE_ERROR, "Failed to remove transient container at %@; error = %@", buf, 0x16u);
        }

        v22 = 0;
        identifier = v74;
        v24 = v79;
        goto LABEL_49;
      }

      v27 = selfCopy;
      v24 = v79;
    }

    else
    {
      if ([(MCMError *)v18 type]!= 21 && [(MCMError *)v18 type]!= 44 && [(MCMError *)v18 type]!= 108)
      {
        goto LABEL_62;
      }

      if (!necessaryCopy)
      {
        v18 = [[MCMError alloc] initWithErrorType:21];
LABEL_62:
        v22 = 0;
        identifier = v74;
        goto LABEL_11;
      }

      v39 = 0;
    }

    v85 = v39;
    v22 = [(MCMContainerFactory *)v27 _createContainerForContainerIdentity:identityCopy error:&v85, v73];
    v18 = v85;

    if (v22)
    {
      break;
    }

    if ([(MCMError *)v18 type]== 130)
    {
      v41 = container_log_handle_for_category();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        v42 = " Retrying lookup.";
        if (v28)
        {
          v42 = "";
        }

        *buf = v73;
        v89 = v42;
        _os_log_error_impl(&dword_1DF2C3000, v41, OS_LOG_TYPE_ERROR, "Container already exists when trying to create it.%s", buf, 0xCu);
      }

      v26 = 1;
      if ((v28 & 1) == 0)
      {
        continue;
      }
    }

    v22 = 0;
    identifier = v74;
    if (!v24)
    {
      goto LABEL_11;
    }

    goto LABEL_49;
  }

  v84 = v18;
  v47 = [v22 verifyWithError:&v84];
  v48 = v84;

  identifier = v74;
  if (v47)
  {
    cache3 = [(MCMContainerFactory *)selfCopy cache];
    v83 = v48;
    v50 = [cache3 addContainerMetadata:v22 error:&v83];
    v51 = v83;

    if (!v50)
    {
      v18 = [[MCMError alloc] initWithErrorType:45];

      v62 = container_log_handle_for_category();
      if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
      {
        containerPath2 = [v22 containerPath];
        [containerPath2 containerRootURL];
        v69 = identityCopy;
        v71 = v70 = v21;
        path3 = [v71 path];
        *buf = 138413058;
        v89 = v22;
        v90 = 2112;
        *v91 = path3;
        *&v91[8] = 1024;
        *v92 = transient;
        *&v92[4] = 2112;
        v93 = v18;
        _os_log_error_impl(&dword_1DF2C3000, v62, OS_LOG_TYPE_ERROR, "Failed to add to cache: %@, url: %@, transient: %d; error = %@", buf, 0x26u);

        v21 = v70;
        identityCopy = v69;
      }

      goto LABEL_11;
    }

    v24 = [v50 copyWithZone:0];
    v48 = v51;
  }

  else
  {
    v50 = container_log_handle_for_category();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      shortDescription = [v22 shortDescription];
      *buf = 138412546;
      v89 = shortDescription;
      v90 = 2112;
      *v91 = v48;
      _os_log_error_impl(&dword_1DF2C3000, v50, OS_LOG_TYPE_ERROR, "Failed to verify new metadata; metadata = %@, error = %@", buf, 0x16u);
    }
  }

  v18 = v48;
  if (!v24)
  {
    goto LABEL_11;
  }

LABEL_49:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    uuid = [v24 uuid];
    uuid2 = [identityCopy uuid];
    v55 = [uuid isEqual:uuid2];

    if ((v55 & 1) == 0)
    {

      v61 = [[MCMError alloc] initWithErrorType:21];
      v18 = v61;
      goto LABEL_11;
    }
  }

  if (!necessaryCopy)
  {
    goto LABEL_13;
  }

  v56 = v21;
  clientIdentity3 = [(MCMContainerFactory *)selfCopy clientIdentity];
  v82 = v18;
  v58 = [(MCMContainerFactory *)selfCopy upgradeContainer:v24 clientIdentity:clientIdentity3 error:&v82];
  v25 = v82;

  if (!v58)
  {
    v59 = container_log_handle_for_category();
    if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
    {
      containerPath3 = [v24 containerPath];
      containerRootURL2 = [containerPath3 containerRootURL];
      path4 = [containerRootURL2 path];
      *buf = 138412546;
      v89 = path4;
      v90 = 2112;
      *v91 = v25;
      _os_log_error_impl(&dword_1DF2C3000, v59, OS_LOG_TYPE_ERROR, "Failed to migrate container at [%@]; error = %@", buf, 0x16u);
    }
  }

  v21 = v56;
LABEL_57:

  return v24;
}

- (id)createStagedContainerForContainerIdentity:(id)identity finalContainerPath:(id *)path dataProtectionClass:(int)class error:(id *)error
{
  v6 = *&class;
  v99 = *MEMORY[0x1E69E9840];
  v9 = MEMORY[0x1E696AFB0];
  identityCopy = identity;
  uUID = [v9 UUID];
  uUIDString = [uUID UUIDString];

  if (path)
  {
    v13 = *path;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;
  v84 = +[MCMFileManager defaultManager];
  v92 = 0;
  v15 = [(MCMContainerFactory *)self _generateConcreteContainerIdentityFromContainerIdentity:identityCopy error:&v92];

  v16 = v92;
  if (!v15)
  {
    v82 = 0;
    v83 = 0;
    v53 = 0;
    v80 = 0;
    v81 = 0;
    v21 = 0;
    v52 = 0;
    v51 = 0;
    v24 = 0;
LABEL_44:
    v42 = v21;
    if (error)
    {
      v65 = v16;
      v43 = 0;
      *error = v16;
    }

    else
    {
      v43 = 0;
    }

    v44 = v16;
    goto LABEL_48;
  }

  containerClass = [v15 containerClass];
  userIdentity = [v15 userIdentity];
  containerPathIdentifier = [v15 containerPathIdentifier];
  transient = [v15 transient];
  v83 = [v15 identityByChangingContainerPathIdentifier:uUIDString];

  if (!v14)
  {
    v20 = off_1E86AF4F0;
    if (!transient)
    {
      v20 = off_1E86AF4E0;
    }

    v14 = [(__objc2_class *)*v20 containerPathForUserIdentity:userIdentity containerClass:containerClass containerPathIdentifier:containerPathIdentifier];
  }

  v77 = containerClass;
  v80 = containerPathIdentifier;
  v21 = [MCMContainerStagingPath stagingContainerPathForDestinationContainerPath:v14 stagingPathIdentifier:uUIDString];
  containerClassPath = [v21 containerClassPath];
  v91 = 0;
  v23 = [containerClassPath createIfNecessaryWithError:&v91];
  v24 = v91;

  v78 = v14;
  if ((v23 & 1) == 0)
  {
    v54 = [MCMError alloc];
    v42 = v21;
    containerClassPath2 = [v21 containerClassPath];
    classURL = [containerClassPath2 classURL];
    v57 = [(MCMError *)v54 initWithNSError:v24 url:classURL defaultErrorType:8];

    v58 = container_log_handle_for_category();
    if (!os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
    {
      v52 = 0;
      v51 = 0;
      v81 = 0;
      v82 = 0;
LABEL_42:
      v53 = userIdentity;
      v21 = v42;
      goto LABEL_43;
    }

    classURL2 = [v42 classURL];
    path = [classURL2 path];
    *buf = 138412546;
    v96 = path;
    v97 = 2112;
    v98 = v24;
    _os_log_error_impl(&dword_1DF2C3000, v58, OS_LOG_TYPE_ERROR, "Failed to create staging class dir at %@ : %@", buf, 0x16u);

    v21 = v42;
    v52 = 0;
    v51 = 0;
    v81 = 0;
    v82 = 0;
LABEL_25:
    v53 = userIdentity;
LABEL_43:

    v16 = v57;
    v14 = v78;
    goto LABEL_44;
  }

  containerClassPath3 = [v21 containerClassPath];
  supportsDataProtection = [containerClassPath3 supportsDataProtection];

  if ((supportsDataProtection & 1) == 0)
  {
    v27 = container_log_handle_for_category();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      containerClassPath4 = [v21 containerClassPath];
      *buf = 138412290;
      v96 = containerClassPath4;
      _os_log_debug_impl(&dword_1DF2C3000, v27, OS_LOG_TYPE_DEBUG, "DP not supported for [%@]", buf, 0xCu);
    }

    v6 = 0xFFFFFFFFLL;
  }

  containerRootURL = [v14 containerRootURL];
  v29 = [v84 quarantineNeededForDirectoryURL:containerRootURL];

  v90 = v24;
  LOBYTE(containerRootURL) = [v21 createIfNecessaryWithDataProtectionClass:v6 quarantine:v29 error:&v90];
  v30 = v90;

  if ((containerRootURL & 1) == 0)
  {
    v59 = [MCMError alloc];
    containerRootURL2 = [v21 containerRootURL];
    v61 = v30;
    v57 = [(MCMError *)v59 initWithNSError:v30 url:containerRootURL2 defaultErrorType:7];

    v58 = container_log_handle_for_category();
    if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
    {
      containerRootURL3 = [v21 containerRootURL];
      [containerRootURL3 path];
      v72 = v71 = v21;
      *buf = 138412546;
      v96 = v72;
      v97 = 2112;
      v98 = v61;
      _os_log_error_impl(&dword_1DF2C3000, v58, OS_LOG_TYPE_ERROR, "Failed to create staging dir at %@ : %@", buf, 0x16u);

      v21 = v71;
    }

    v52 = 0;
    v51 = 0;
    v81 = 0;
    v82 = 0;
    v24 = v61;
    goto LABEL_25;
  }

  pathCopy = path;
  v75 = v30;
  v76 = uUIDString;
  v93 = @"com.apple.MobileInstallation.ContentProtectionClass";
  v31 = [MEMORY[0x1E696AD98] numberWithInt:v6];
  v94 = v31;
  [MEMORY[0x1E695DF20] dictionaryWithObjects:&v94 forKeys:&v93 count:1];
  v82 = v32 = self;

  identifier = [v83 identifier];
  v89 = 0;
  +[MCMContainerSchema schemaIsUpToDateForIdentifier:containerClass:currentSchemaVersion:latestSchemaVersion:](MCMContainerSchema, "schemaIsUpToDateForIdentifier:containerClass:currentSchemaVersion:latestSchemaVersion:", identifier, [v83 containerClass], &unk_1F5A76F78, &v89);
  v34 = v6;
  v35 = v89;

  v36 = [MCMMetadata alloc];
  [(MCMContainerFactory *)v32 clientIdentity];
  v38 = v37 = v21;
  codeSignInfo = [v38 codeSignInfo];
  identifier2 = [codeSignInfo identifier];
  v73 = v32;
  userIdentityCache = [(MCMContainerFactory *)v32 userIdentityCache];
  v42 = v37;
  v81 = v35;
  v43 = [(MCMMetadata *)v36 initWithContainerIdentity:v83 info:v82 containerPath:v37 userManagedAssetsDirName:0 schemaVersion:v35 dataProtectionClass:v34 creator:identifier2 userIdentityCache:userIdentityCache];

  v88 = v16;
  LOBYTE(v36) = [(MCMMetadata *)v43 writeMetadataToDiskWithError:&v88];
  v44 = v88;

  if ((v36 & 1) == 0)
  {

    v57 = [[MCMError alloc] initWithErrorType:34];
    v58 = container_log_handle_for_category();
    if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v96 = v57;
      _os_log_error_impl(&dword_1DF2C3000, v58, OS_LOG_TYPE_ERROR, "Failed to write metadata: %@", buf, 0xCu);
    }

    v52 = 0;
    v51 = 0;
    v24 = v75;
    goto LABEL_41;
  }

  v45 = containermanager_copy_global_configuration();
  v46 = [v45 isGlobalSystemContainerWithContainerClass:v77];

  if (v46)
  {
    containerRootURL4 = [v42 containerRootURL];
    v87 = v75;
    v48 = [v84 setTopLevelSystemContainerACLAtURL:containerRootURL4 error:&v87];
    v24 = v87;

    v14 = v78;
    v49 = v73;
    v50 = pathCopy;
    if (!v48)
    {
      v51 = 0;
      v52 = 0;
      goto LABEL_35;
    }
  }

  else
  {
    v50 = pathCopy;
    v24 = v75;
    v14 = v78;
    v49 = v73;
  }

  v52 = 0;
  if (v77 <= 0xB && ((1 << v77) & 0xED4) != 0)
  {
    userIdentityCache2 = [(MCMContainerFactory *)v49 userIdentityCache];
    v52 = [userIdentityCache2 libraryRepairForUserIdentity:userIdentity];
  }

  v51 = [MCMContainerSchema containerSchemaWithMetadata:v43 finalContainerPath:v14 dataProtectionClass:v34 libraryRepair:v52];
  v86 = v44;
  v63 = [v51 writeSchemaFromVersion:&unk_1F5A76F90 toTargetVersion:v81 error:&v86];
  v57 = v86;

  if ((v63 & 1) == 0)
  {

    v58 = container_log_handle_for_category();
    if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v96 = 0;
      v97 = 2112;
      v98 = v57;
      _os_log_error_impl(&dword_1DF2C3000, v58, OS_LOG_TYPE_ERROR, "Could not create container schema for %@: %@", buf, 0x16u);
    }

LABEL_41:
    uUIDString = v76;
    goto LABEL_42;
  }

  v44 = v57;
  v14 = v78;
LABEL_35:
  uUIDString = v76;
  if (!v43)
  {
    v16 = v44;
    v53 = userIdentity;
    v21 = v42;
    goto LABEL_44;
  }

  if (v50)
  {
    v64 = v14;
    *v50 = v14;
  }

  v53 = userIdentity;
LABEL_48:

  return v43;
}

- (MCMContainerFactory)initWithContainerCache:(id)cache clientIdentity:(id)identity userIdentityCache:(id)identityCache
{
  v16 = *MEMORY[0x1E69E9840];
  cacheCopy = cache;
  identityCopy = identity;
  identityCacheCopy = identityCache;
  v15.receiver = self;
  v15.super_class = MCMContainerFactory;
  v12 = [(MCMContainerFactory *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_cache, cache);
    objc_storeStrong(&v13->_clientIdentity, identity);
    objc_storeStrong(&v13->_userIdentityCache, identityCache);
  }

  return v13;
}

- (BOOL)upgradeContainer:(id)container clientIdentity:(id)identity error:(id *)error
{
  errorCopy = error;
  v64 = *MEMORY[0x1E69E9840];
  containerCopy = container;
  identityCopy = identity;
  schemaVersion = [containerCopy schemaVersion];
  containerPath = [containerCopy containerPath];
  identifier = [containerCopy identifier];
  containerClass = [containerPath containerClass];
  userIdentityCache = [(MCMContainerFactory *)self userIdentityCache];
  userIdentity = [containerPath userIdentity];
  v46 = [userIdentityCache libraryRepairForUserIdentity:userIdentity];

  [containerPath containerClass];
  if (!container_class_supports_data_subdirectory())
  {
    v45 = 0;
    v14 = 0;
    goto LABEL_7;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v63 = 0;
  v58 = 0;
  v59 = &v58;
  v60 = 0x2020000000;
  v61 = 0;
  containerDataURL = [containerPath containerDataURL];
  v56[5] = &v58;
  v57 = 0;
  v56[0] = MEMORY[0x1E69E9820];
  v56[1] = 3221225472;
  v56[2] = __71__MCMContainerFactory_Upgrades__upgradeContainer_clientIdentity_error___block_invoke;
  v56[3] = &unk_1E86B0C78;
  v56[4] = buf;
  v13 = [v46 fixAndRetryIfPermissionsErrorWithURL:containerDataURL containerPath:containerPath containerIdentifier:identifier error:&v57 duringBlock:v56];
  v45 = v57;

  if ((v13 & 1) == 0)
  {
    v29 = [MCMError alloc];
    containerDataURL2 = [containerPath containerDataURL];
    v14 = [(MCMError *)v29 initWithNSError:v45 url:containerDataURL2 defaultErrorType:105];
    goto LABEL_26;
  }

  if (*(*&buf[8] + 24) != 1 || (v59[3] & 1) == 0)
  {
    v55 = 0;
    containerDataURL2 = [containerCopy metadataWithError:{&v55, errorCopy}];
    v14 = v55;
    if (containerDataURL2)
    {
      v31 = +[MCMDataProtectionManager defaultManager];
      v32 = [v31 desiredDataProtectionClassForMetadata:containerDataURL2 clientIdentity:identityCopy];

      v54 = v45;
      LOBYTE(v31) = [containerPath createDataURLIfNecessaryWithDataProtectionClass:v32 error:&v54];
      v33 = v54;

      if (v31)
      {
        v34 = &unk_1F5A76F90;

        schemaVersion = &unk_1F5A76F90;
        v45 = v33;
        goto LABEL_20;
      }

      v36 = [MCMError alloc];
      containerDataURL3 = [containerPath containerDataURL];
      v38 = [(MCMError *)v36 initWithNSError:v33 url:containerDataURL3 defaultErrorType:106];

      v45 = v33;
      v14 = v38;
    }

LABEL_26:

    _Block_object_dispose(&v58, 8);
    _Block_object_dispose(buf, 8);
    v16 = 0;
LABEL_27:
    if (errorCopy)
    {
      v39 = v14;
      v18 = 0;
      v17 = 0;
      *errorCopy = v14;
    }

    else
    {
      v18 = 0;
      v17 = 0;
    }

    goto LABEL_30;
  }

  v14 = 0;
LABEL_20:
  _Block_object_dispose(&v58, 8);
  _Block_object_dispose(buf, 8);
LABEL_7:
  v53 = 0;
  errorCopy = [MCMContainerSchema schemaIsUpToDateForIdentifier:identifier containerClass:containerClass currentSchemaVersion:schemaVersion latestSchemaVersion:&v53, errorCopy];
  v16 = v53;
  if (errorCopy)
  {
    v17 = 0;
LABEL_9:
    v18 = 1;
    goto LABEL_30;
  }

  v52 = v14;
  v19 = [containerCopy metadataWithError:&v52];
  v20 = v52;

  if (!v19)
  {
    v14 = v20;
    goto LABEL_27;
  }

  v21 = +[MCMDataProtectionManager defaultManager];
  v22 = [v21 desiredDataProtectionClassForMetadata:v19 clientIdentity:identityCopy];

  containerPath2 = [v19 containerPath];
  v24 = [MCMContainerSchema containerSchemaWithMetadata:v19 finalContainerPath:containerPath2 dataProtectionClass:v22 libraryRepair:v46];

  v51 = v20;
  LOBYTE(v21) = [v24 writeSchemaFromVersion:schemaVersion toTargetVersion:v16 error:&v51];
  v14 = v51;

  if ((v21 & 1) == 0)
  {
    v35 = container_log_handle_for_category();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      *&buf[4] = identifier;
      *&buf[12] = 2112;
      *&buf[14] = v14;
      _os_log_error_impl(&dword_1DF2C3000, v35, OS_LOG_TYPE_ERROR, "Could not update container schema for %@: %@", buf, 0x16u);
    }

    goto LABEL_27;
  }

  v17 = [v19 metadataByChangingSchemaVersion:v16];

  if (!v17)
  {
    goto LABEL_9;
  }

  v50 = v14;
  v25 = [v17 writeMetadataToDiskWithError:&v50];
  v26 = v50;

  if (v25)
  {
    cache = [(MCMContainerFactory *)self cache];
    v49 = v26;
    v28 = [cache addContainerMetadata:v17 error:&v49];
    v14 = v49;

    if (v28)
    {
      v18 = 1;
      containerCopy = v28;
      goto LABEL_30;
    }

    v42 = container_log_handle_for_category();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *&buf[4] = v14;
      _os_log_error_impl(&dword_1DF2C3000, v42, OS_LOG_TYPE_ERROR, "Failed to update cache with new metadata during schema update; error = %@", buf, 0xCu);
    }

    containerCopy = 0;
    v14 = 0;
    goto LABEL_9;
  }

  v41 = container_log_handle_for_category();
  if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    *&buf[4] = v17;
    *&buf[12] = 2112;
    *&buf[14] = v26;
    _os_log_error_impl(&dword_1DF2C3000, v41, OS_LOG_TYPE_ERROR, "Could not update container schema version or data protection class in metadata for %@: %@", buf, 0x16u);
  }

  v18 = 1;
  v14 = v26;
LABEL_30:

  return v18;
}

uint64_t __71__MCMContainerFactory_Upgrades__upgradeContainer_clientIdentity_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = +[MCMFileManager defaultManager];
  v7 = [v6 itemAtURL:v5 exists:*(*(a1 + 32) + 8) + 24 isDirectory:*(*(a1 + 40) + 8) + 24 error:a3];

  return v7;
}

@end