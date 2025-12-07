@interface PFPosterExtensionInstance(PRAdditions)
- (id)pr_assetUpdaterWithError:()PRAdditions;
- (id)pr_refreshConfigurationOperationQueue;
- (id)pr_refreshConfigurationOperations;
- (id)pr_reloadDescriptorOperationQueue;
- (id)pr_reloadDescriptorOperations;
- (id)pr_updateDescriptors:()PRAdditions sessionInfo:;
- (id)pr_updateSuggestions:()PRAdditions forConfiguration:sessionInfo:;
- (void)pr_acquireAssetUpdaterWithBlock:()PRAdditions;
- (void)pr_addRefreshConfigurationOperation:()PRAdditions waitUntilFinished:;
- (void)pr_addReloadDescriptorOperation:()PRAdditions;
@end

@implementation PFPosterExtensionInstance(PRAdditions)

- (id)pr_reloadDescriptorOperationQueue
{
  key = a2;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v4 = objc_getAssociatedObject(selfCopy, a2);
  if (!v4)
  {
    instanceIdentifier = [selfCopy instanceIdentifier];
    uUIDString = [instanceIdentifier UUIDString];

    processIdentity = [selfCopy processIdentity];
    v4 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.posterboard.reloadDescriptorsQueue-%@-%@", uUIDString, processIdentity];
    [v4 setName:v8];

    [v4 setQualityOfService:25];
    [v4 setMaxConcurrentOperationCount:1];
    objc_setAssociatedObject(selfCopy, &key, v4, 1);
  }

  objc_sync_exit(selfCopy);

  return v4;
}

- (id)pr_refreshConfigurationOperationQueue
{
  key = a2;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v4 = objc_getAssociatedObject(selfCopy, a2);
  if (!v4)
  {
    instanceIdentifier = [selfCopy instanceIdentifier];
    uUIDString = [instanceIdentifier UUIDString];

    processIdentity = [selfCopy processIdentity];
    v4 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.posterboard.refreshConfigurationQueue-%@-%@", uUIDString, processIdentity];
    [v4 setName:v8];

    [v4 setQualityOfService:25];
    [v4 setMaxConcurrentOperationCount:1];
    objc_setAssociatedObject(selfCopy, &key, v4, 1);
  }

  objc_sync_exit(selfCopy);

  return v4;
}

- (id)pr_assetUpdaterWithError:()PRAdditions
{
  v2 = [self bootupExtensionInstanceWithError:?];
  v3 = v2;
  if (v2)
  {
    v4 = MEMORY[0x1E698E620];
    objc_msgSend_auditToken(v2);
    v5 = [v4 tokenFromAuditToken:&v11];
    v6 = MEMORY[0x1E69C7640];
    processIdentity = [self processIdentity];
    v8 = [v6 targetWithProcessIdentity:processIdentity];

    v9 = [PRUpdatingService updatingServiceWithProcess:v3 auditToken:v5 target:v8];
    [self addInstanceObserver:v9];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)pr_acquireAssetUpdaterWithBlock:()PRAdditions
{
  v4 = a3;
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __74__PFPosterExtensionInstance_PRAdditions__pr_acquireAssetUpdaterWithBlock___block_invoke;
  v6[3] = &unk_1E7844E28;
  v5 = v4;
  v6[4] = self;
  v7 = v5;
  objc_copyWeak(&v8, &location);
  [self bootupExtensionInstance:v6];
  objc_destroyWeak(&v8);

  objc_destroyWeak(&location);
}

- (id)pr_reloadDescriptorOperations
{
  pr_reloadDescriptorOperationQueue = [self pr_reloadDescriptorOperationQueue];
  operations = [pr_reloadDescriptorOperationQueue operations];

  return operations;
}

- (void)pr_addReloadDescriptorOperation:()PRAdditions
{
  v4 = a3;
  pr_refreshConfigurationOperationQueue = [self pr_refreshConfigurationOperationQueue];
  [pr_refreshConfigurationOperationQueue addOperation:v4];
}

- (id)pr_refreshConfigurationOperations
{
  pr_refreshConfigurationOperationQueue = [self pr_refreshConfigurationOperationQueue];
  operations = [pr_refreshConfigurationOperationQueue operations];

  return operations;
}

- (void)pr_addRefreshConfigurationOperation:()PRAdditions waitUntilFinished:
{
  v9[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  pr_refreshConfigurationOperationQueue = [self pr_refreshConfigurationOperationQueue];
  v9[0] = v6;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];

  [pr_refreshConfigurationOperationQueue addOperations:v8 waitUntilFinished:a4];
}

- (id)pr_updateDescriptors:()PRAdditions sessionInfo:
{
  v76 = *MEMORY[0x1E69E9840];
  v44 = a3;
  v43 = a4;
  v6 = PRLogUpdatingService(v43);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v44;
    _os_log_impl(&dword_1A8AA7000, v6, OS_LOG_TYPE_DEFAULT, "pr_updateDescriptors:sessionInfo: starting for descriptors: %{pubic}@", &buf, 0xCu);
  }

  v7 = MEMORY[0x1E69C5268];
  pr_reloadDescriptorOperationQueue = [self pr_reloadDescriptorOperationQueue];
  v46 = [v7 operationQueueSchedulerWithOperationQueue:pr_reloadDescriptorOperationQueue qualityOfService:4];

  v9 = objc_alloc_init(MEMORY[0x1E69C5260]);
  future = [v9 future];
  v10 = objc_opt_new();
  v11 = objc_opt_new();
  v66[0] = MEMORY[0x1E69E9820];
  v66[1] = 3221225472;
  v66[2] = __75__PFPosterExtensionInstance_PRAdditions__pr_updateDescriptors_sessionInfo___block_invoke;
  v66[3] = &unk_1E7843070;
  v42 = v11;
  v67 = v42;
  v12 = v10;
  v68 = v12;
  v13 = MEMORY[0x1AC574C60](v66);
  v14 = objc_opt_new();
  v62[0] = MEMORY[0x1E69E9820];
  v62[1] = 3221225472;
  v62[2] = __75__PFPosterExtensionInstance_PRAdditions__pr_updateDescriptors_sessionInfo___block_invoke_26;
  v62[3] = &unk_1E7844E70;
  v15 = v14;
  v63 = v15;
  v16 = v9;
  v64 = v16;
  v17 = v13;
  v65 = v17;
  v18 = MEMORY[0x1AC574C60](v62);
  *&buf = 0;
  *(&buf + 1) = &buf;
  v72 = 0x3032000000;
  v73 = __Block_byref_object_copy__5;
  v74 = __Block_byref_object_dispose__5;
  v75 = 0;
  extension = [self extension];
  posterExtensionBundleIdentifier = [extension posterExtensionBundleIdentifier];

  v22 = PRLogUpdatingService(v21);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *v69 = 138543362;
    v70 = posterExtensionBundleIdentifier;
    _os_log_impl(&dword_1A8AA7000, v22, OS_LOG_TYPE_DEFAULT, "pr_updateDescriptors:sessionInfo: creating finishTask assertion for bundle: %{public}@", v69, 0xCu);
  }

  v58[0] = MEMORY[0x1E69E9820];
  v58[1] = 3221225472;
  v58[2] = __75__PFPosterExtensionInstance_PRAdditions__pr_updateDescriptors_sessionInfo___block_invoke_29;
  v58[3] = &unk_1E7844EC0;
  p_buf = &buf;
  v23 = posterExtensionBundleIdentifier;
  v59 = v23;
  v24 = v18;
  v60 = v24;
  v25 = PRLogUpdatingService([v12 mutateUserInfo:v58]);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    *v69 = 0;
    _os_log_impl(&dword_1A8AA7000, v25, OS_LOG_TYPE_DEFAULT, "pr_updateDescriptors:sessionInfo: acquiring finishTask assertion", v69, 2u);
  }

  v26 = *(*(&buf + 1) + 40);
  v57 = 0;
  [v26 acquireWithError:&v57];
  v27 = v57;
  v28 = v27;
  if (v27)
  {
    v29 = PRLogUpdatingService(v27);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      [PFPosterExtensionInstance(PRAdditions) pr_updateDescriptors:sessionInfo:];
    }
  }

  else
  {
    v29 = PRLogUpdatingService(0);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *v69 = 0;
      _os_log_impl(&dword_1A8AA7000, v29, OS_LOG_TYPE_DEFAULT, "pr_updateDescriptors:sessionInfo: finishTask assertion acquired successfully", v69, 2u);
    }
  }

  v31 = PRLogUpdatingService(v30);
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    *v69 = 0;
    _os_log_impl(&dword_1A8AA7000, v31, OS_LOG_TYPE_DEFAULT, "pr_updateDescriptors:sessionInfo: scheduling work on operation queue", v69, 2u);
  }

  v49[0] = MEMORY[0x1E69E9820];
  v49[1] = 3221225472;
  v49[2] = __75__PFPosterExtensionInstance_PRAdditions__pr_updateDescriptors_sessionInfo___block_invoke_34;
  v49[3] = &unk_1E7844FB0;
  v49[4] = self;
  v32 = v24;
  v55 = v32;
  v33 = v12;
  v50 = v33;
  v34 = v23;
  v51 = v34;
  v35 = v44;
  v52 = v35;
  v36 = v43;
  v53 = v36;
  v37 = v16;
  v54 = v37;
  v38 = v17;
  v56 = v38;
  [v46 performBlock:v49];
  v47[0] = MEMORY[0x1E69E9820];
  v47[1] = 3221225472;
  v47[2] = __75__PFPosterExtensionInstance_PRAdditions__pr_updateDescriptors_sessionInfo___block_invoke_70;
  v47[3] = &unk_1E7844E98;
  v39 = v32;
  v48 = v39;
  v40 = [future timeoutAfter:v47 cleanup:300.0];

  _Block_object_dispose(&buf, 8);

  return future;
}

- (id)pr_updateSuggestions:()PRAdditions forConfiguration:sessionInfo:
{
  v8 = a3;
  v9 = a4;
  v43 = a5;
  v10 = MEMORY[0x1E69C5268];
  pr_reloadDescriptorOperationQueue = [self pr_reloadDescriptorOperationQueue];
  v45 = [v10 operationQueueSchedulerWithOperationQueue:pr_reloadDescriptorOperationQueue qualityOfService:4];

  v12 = objc_alloc_init(MEMORY[0x1E69C5260]);
  future = [v12 future];
  v13 = objc_opt_new();
  v14 = objc_opt_new();
  v73[0] = MEMORY[0x1E69E9820];
  v73[1] = 3221225472;
  v73[2] = __92__PFPosterExtensionInstance_PRAdditions__pr_updateSuggestions_forConfiguration_sessionInfo___block_invoke;
  v73[3] = &unk_1E7843070;
  v42 = v13;
  v74 = v42;
  v15 = v14;
  v75 = v15;
  v16 = MEMORY[0x1AC574C60](v73);
  v17 = objc_opt_new();
  v69[0] = MEMORY[0x1E69E9820];
  v69[1] = 3221225472;
  v69[2] = __92__PFPosterExtensionInstance_PRAdditions__pr_updateSuggestions_forConfiguration_sessionInfo___block_invoke_74;
  v69[3] = &unk_1E7844E70;
  v41 = v17;
  v70 = v41;
  v18 = v12;
  v71 = v18;
  v19 = v16;
  v72 = v19;
  v20 = MEMORY[0x1AC574C60](v69);
  v63 = 0;
  v64 = &v63;
  v65 = 0x3032000000;
  v66 = __Block_byref_object_copy__5;
  v67 = __Block_byref_object_dispose__5;
  v68 = 0;
  extension = [self extension];
  posterExtensionBundleIdentifier = [extension posterExtensionBundleIdentifier];

  v59[0] = MEMORY[0x1E69E9820];
  v59[1] = 3221225472;
  v59[2] = __92__PFPosterExtensionInstance_PRAdditions__pr_updateSuggestions_forConfiguration_sessionInfo___block_invoke_75;
  v59[3] = &unk_1E7844EC0;
  v62 = &v63;
  v23 = posterExtensionBundleIdentifier;
  v60 = v23;
  v24 = v20;
  v61 = v24;
  [v15 mutateUserInfo:v59];
  v25 = v64[5];
  v58 = 0;
  [v25 acquireWithError:&v58];
  v26 = v58;
  v27 = v26;
  if (v26)
  {
    v28 = PRLogUpdatingService(v26);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      [PFPosterExtensionInstance(PRAdditions) pr_updateSuggestions:forConfiguration:sessionInfo:];
    }
  }

  v29 = PRLogUpdatingService(v26);
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A8AA7000, v29, OS_LOG_TYPE_DEFAULT, "pr_updateDescriptors:sessionInfo: scheduling work on operation queue", buf, 2u);
  }

  v48[0] = MEMORY[0x1E69E9820];
  v48[1] = 3221225472;
  v48[2] = __92__PFPosterExtensionInstance_PRAdditions__pr_updateSuggestions_forConfiguration_sessionInfo___block_invoke_79;
  v48[3] = &unk_1E7845000;
  v48[4] = self;
  v30 = v24;
  v55 = v30;
  v31 = v15;
  v49 = v31;
  v32 = v23;
  v50 = v32;
  v33 = v9;
  v51 = v33;
  v34 = v8;
  v52 = v34;
  v35 = v43;
  v53 = v35;
  v36 = v18;
  v54 = v36;
  v37 = v19;
  v56 = v37;
  [v45 performBlock:v48];
  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = __92__PFPosterExtensionInstance_PRAdditions__pr_updateSuggestions_forConfiguration_sessionInfo___block_invoke_8;
  v46[3] = &unk_1E7844E98;
  v38 = v30;
  v47 = v38;
  v39 = [future timeoutAfter:v46 cleanup:300.0];

  _Block_object_dispose(&v63, 8);

  return future;
}

@end