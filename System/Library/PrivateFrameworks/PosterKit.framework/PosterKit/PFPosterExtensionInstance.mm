@interface PFPosterExtensionInstance
@end

@implementation PFPosterExtensionInstance

void __74__PFPosterExtensionInstance_PRAdditions__pr_acquireAssetUpdaterWithBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v7 = MEMORY[0x1E698E620];
    if (v5)
    {
      objc_msgSend_auditToken(v5);
    }

    else
    {
      memset(v16, 0, sizeof(v16));
    }

    v8 = [v7 tokenFromAuditToken:v16];
    v9 = MEMORY[0x1E69C7640];
    v10 = [*(a1 + 32) processIdentity];
    v11 = [v9 targetWithProcessIdentity:v10];

    v12 = [PRUpdatingService updatingServiceWithProcess:v5 auditToken:v8 target:v11];
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [WeakRetained addInstanceObserver:v12];

    v14 = *(a1 + 40);
    v15 = [PRUpdatingService updatingServiceWithProcess:v5 auditToken:v8 target:v11];
    (*(v14 + 16))(v14, v15, 0);
  }
}

void __75__PFPosterExtensionInstance_PRAdditions__pr_updateDescriptors_sessionInfo___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) signal];
  if (v2)
  {
    v3 = PRLogUpdatingService(v2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A8AA7000, v3, OS_LOG_TYPE_DEFAULT, "pr_updateDescriptors:sessionInfo: invalidating all assertions", buf, 2u);
    }

    v4 = PRLogUpdatingService([*(a1 + 40) mutateUserInfo:&__block_literal_global_35]);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_1A8AA7000, v4, OS_LOG_TYPE_DEFAULT, "pr_updateDescriptors:sessionInfo: all assertions invalidated", v5, 2u);
    }
  }
}

void __75__PFPosterExtensionInstance_PRAdditions__pr_updateDescriptors_sessionInfo___block_invoke_14(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 objectForKeyedSubscript:@"finishTaskInterruptable"];
  v4 = v3;
  if (v3)
  {
    v5 = PRLogUpdatingService(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A8AA7000, v5, OS_LOG_TYPE_DEFAULT, "Invalidating finishTaskInterruptable", buf, 2u);
    }

    [v4 invalidate];
    [v2 setObject:0 forKeyedSubscript:@"finishTaskInterruptable"];
  }

  v6 = [v2 objectForKeyedSubscript:@"posterRuntimeAssertion"];
  v7 = v6;
  if (v6)
  {
    v8 = PRLogUpdatingService(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&dword_1A8AA7000, v8, OS_LOG_TYPE_DEFAULT, "Invalidating posterRuntimeAssertion", v13, 2u);
    }

    [v7 invalidate];
    [v2 setObject:0 forKeyedSubscript:@"posterRuntimeAssertion"];
  }

  v9 = [v2 objectForKeyedSubscript:@"posterMemoryAssertion"];
  v10 = v9;
  if (v9)
  {
    v11 = PRLogUpdatingService(v9);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_1A8AA7000, v11, OS_LOG_TYPE_DEFAULT, "Invalidating posterMemoryAssertion", v12, 2u);
    }

    [v10 invalidate];
    [v2 setObject:0 forKeyedSubscript:@"posterMemoryAssertion"];
  }
}

void __75__PFPosterExtensionInstance_PRAdditions__pr_updateDescriptors_sessionInfo___block_invoke_26(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) signal];
  if (v4)
  {
    if (!v3)
    {
      v4 = [MEMORY[0x1E696ABC0] pr_errorWithCode:0];
      v3 = v4;
    }

    v5 = PRLogUpdatingService(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138543362;
      v7 = v3;
      _os_log_impl(&dword_1A8AA7000, v5, OS_LOG_TYPE_DEFAULT, "pr_updateDescriptors:sessionInfo: ended with error:%{public}@", &v6, 0xCu);
    }

    [*(a1 + 40) finishWithError:v3];
    (*(*(a1 + 48) + 16))();
  }
}

void __75__PFPosterExtensionInstance_PRAdditions__pr_updateDescriptors_sessionInfo___block_invoke_29(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E69C7548];
  v4 = MEMORY[0x1E696AEC0];
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v4 stringWithFormat:@"Refresh descriptors for '%@'", v5];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __75__PFPosterExtensionInstance_PRAdditions__pr_updateDescriptors_sessionInfo___block_invoke_2;
  v11[3] = &unk_1E7844E98;
  v12 = *(a1 + 40);
  v8 = [v3 pf_finishTaskInterruptableWithExplanation:v7 invalidationHandler:v11];
  [v6 setObject:v8 forKeyedSubscript:@"finishTaskInterruptable"];

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

void __75__PFPosterExtensionInstance_PRAdditions__pr_updateDescriptors_sessionInfo___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PRLogUpdatingService(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __75__PFPosterExtensionInstance_PRAdditions__pr_updateDescriptors_sessionInfo___block_invoke_2_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __75__PFPosterExtensionInstance_PRAdditions__pr_updateDescriptors_sessionInfo___block_invoke_34(uint64_t a1)
{
  v54 = *MEMORY[0x1E69E9840];
  v2 = PRLogUpdatingService(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A8AA7000, v2, OS_LOG_TYPE_DEFAULT, "pr_updateDescriptors:sessionInfo: starting work on operation queue", buf, 2u);
  }

  v4 = PRLogUpdatingService(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A8AA7000, v4, OS_LOG_TYPE_DEFAULT, "pr_updateDescriptors:sessionInfo: creating updating service", buf, 2u);
  }

  v5 = *(a1 + 32);
  v51 = 0;
  v6 = [v5 pr_assetUpdaterWithError:&v51];
  v7 = v51;
  v8 = v7;
  if (v6 && (v7 = [v6 isValid], v7) && !v8)
  {
    v9 = PRLogUpdatingService(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A8AA7000, v9, OS_LOG_TYPE_DEFAULT, "pr_updateDescriptors:sessionInfo: updating service created successfully", buf, 2u);
    }

    v10 = objc_msgSend_auditToken(v6);
    v11 = v10;
    if (v10 && (v12 = [v10 isInvalid], !v12))
    {
      v18 = PRLogUpdatingService(v12);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A8AA7000, v18, OS_LOG_TYPE_DEFAULT, "pr_updateDescriptors:sessionInfo: audit token validated", buf, 2u);
      }

      v19 = [v6 target];
      v20 = v19;
      if (v19)
      {
        v21 = PRLogUpdatingService(v19);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1A8AA7000, v21, OS_LOG_TYPE_DEFAULT, "pr_updateDescriptors:sessionInfo: RBS target obtained", buf, 2u);
        }

        v23 = PRLogUpdatingService(v22);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1A8AA7000, v23, OS_LOG_TYPE_DEFAULT, "pr_updateDescriptors:sessionInfo: creating runtime and memory assertions", buf, 2u);
        }

        v24 = *(a1 + 40);
        v44[0] = MEMORY[0x1E69E9820];
        v44[1] = 3221225472;
        v44[2] = __75__PFPosterExtensionInstance_PRAdditions__pr_updateDescriptors_sessionInfo___block_invoke_47;
        v44[3] = &unk_1E7844F10;
        v45 = v20;
        v50 = *(a1 + 80);
        v46 = v11;
        v47 = *(a1 + 48);
        v25 = v6;
        v48 = v25;
        v49 = 0;
        [v24 mutateUserInfo:v44];

        v26 = [*(a1 + 56) postersOrderedByCreationDate];
        v27 = [v26 array];
        v28 = __PFServerPosterPathFromPFPosterContents();
        v29 = [v27 bs_mapNoNulls:v28];
        v30 = v29;
        v31 = MEMORY[0x1E695E0F0];
        if (v29)
        {
          v31 = v29;
        }

        v32 = v31;

        v34 = PRLogUpdatingService(v33);
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          v35 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v32, "count")}];
          *buf = 138543362;
          v53 = v35;
          _os_log_impl(&dword_1A8AA7000, v34, OS_LOG_TYPE_DEFAULT, "pr_updateDescriptors:sessionInfo: calling updateDescriptors with %{public}@ paths", buf, 0xCu);
        }

        v36 = *(a1 + 64);
        v40[0] = MEMORY[0x1E69E9820];
        v40[1] = 3221225472;
        v40[2] = __75__PFPosterExtensionInstance_PRAdditions__pr_updateDescriptors_sessionInfo___block_invoke_59;
        v40[3] = &unk_1E7844F88;
        v42 = *(a1 + 80);
        v41 = *(a1 + 72);
        v43 = *(a1 + 88);
        [v25 updateDescriptors:v32 sessionInfo:v36 completion:v40];

        v8 = 0;
      }

      else
      {
        v37 = PFFunctionNameForAddress();
        v8 = PFGeneralErrorFromObjectWithLocalizedFailureReason();

        v39 = PRLogUpdatingService(v38);
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          __75__PFPosterExtensionInstance_PRAdditions__pr_updateDescriptors_sessionInfo___block_invoke_34_cold_1();
        }

        (*(*(a1 + 80) + 16))(*(a1 + 80));
      }
    }

    else
    {
      v13 = PFFunctionNameForAddress();
      v8 = PFGeneralErrorFromObjectWithLocalizedFailureReason();

      v15 = PRLogUpdatingService(v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        __75__PFPosterExtensionInstance_PRAdditions__pr_updateDescriptors_sessionInfo___block_invoke_34_cold_2();
      }

      (*(*(a1 + 80) + 16))(*(a1 + 80));
    }
  }

  else
  {
    if (!v8)
    {
      v16 = PFFunctionNameForAddress();
      v8 = PFGeneralErrorFromObjectWithLocalizedFailureReason();
    }

    v17 = PRLogUpdatingService(v7);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      __75__PFPosterExtensionInstance_PRAdditions__pr_updateDescriptors_sessionInfo___block_invoke_34_cold_3();
    }

    (*(*(a1 + 80) + 16))(*(a1 + 80));
  }
}

void __75__PFPosterExtensionInstance_PRAdditions__pr_updateDescriptors_sessionInfo___block_invoke_47(uint64_t a1, void *a2)
{
  v53 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_opt_new();
  v5 = MEMORY[0x1E69C7548];
  v6 = *(a1 + 32);
  v7 = *MEMORY[0x1E69C5250];
  v48[0] = MEMORY[0x1E69E9820];
  v48[1] = 3221225472;
  v48[2] = __75__PFPosterExtensionInstance_PRAdditions__pr_updateDescriptors_sessionInfo___block_invoke_2_52;
  v48[3] = &unk_1E7844E98;
  v49 = *(a1 + 72);
  v8 = [v5 pf_assertionForTarget:v6 assertionIdentifier:v7 explanation:@"Updating descriptors" invalidationHandler:v48];
  [v3 setObject:v8 forKeyedSubscript:@"posterRuntimeAssertion"];

  v9 = [v3 objectForKeyedSubscript:@"posterRuntimeAssertion"];
  [v4 bs_safeAddObject:v9];

  v10 = MEMORY[0x1E69C7548];
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  v13 = *(a1 + 48);
  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = __75__PFPosterExtensionInstance_PRAdditions__pr_updateDescriptors_sessionInfo___block_invoke_53;
  v46[3] = &unk_1E7844E98;
  v47 = *(a1 + 72);
  v14 = [v10 pf_posterUpdateMemoryAssertionForReason:@"Updating descriptors" target:v11 auditToken:v12 posterProviderBundleIdentifier:v13 invalidationHandler:v46];
  [v3 setObject:v14 forKeyedSubscript:@"posterMemoryAssertion"];

  v15 = [v3 objectForKeyedSubscript:@"posterMemoryAssertion"];
  [v4 bs_safeAddObject:v15];

  v17 = PRLogUpdatingService(v16);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v4, "count")}];
    *buf = 138543362;
    v52 = v18;
    _os_log_impl(&dword_1A8AA7000, v17, OS_LOG_TYPE_DEFAULT, "pr_updateDescriptors:sessionInfo: acquiring %{public}@ assertions", buf, 0xCu);
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v19 = v4;
  v20 = [v19 countByEnumeratingWithState:&v42 objects:v50 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v43;
    while (2)
    {
      v23 = 0;
      do
      {
        if (*v43 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v42 + 1) + 8 * v23);
        v41 = 0;
        v25 = [v24 acquireWithError:&v41];
        v26 = v41;
        v27 = v26;
        if ((v25 & 1) == 0)
        {
          v30 = PRLogUpdatingService(v26);
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            __75__PFPosterExtensionInstance_PRAdditions__pr_updateDescriptors_sessionInfo___block_invoke_47_cold_1();
          }

          v37[0] = MEMORY[0x1E69E9820];
          v37[1] = 3221225472;
          v37[2] = __75__PFPosterExtensionInstance_PRAdditions__pr_updateDescriptors_sessionInfo___block_invoke_55;
          v37[3] = &unk_1E7844EE8;
          v31 = *(a1 + 72);
          v38 = v27;
          v32 = *(a1 + 56);
          v33 = *(a1 + 64);
          *&v34 = *(a1 + 48);
          *(&v34 + 1) = v31;
          *&v35 = v32;
          *(&v35 + 1) = v33;
          v39 = v35;
          v40 = v34;
          v36 = v27;
          dispatch_async(MEMORY[0x1E69E96A0], v37);

          v29 = v19;
          goto LABEL_16;
        }

        ++v23;
      }

      while (v21 != v23);
      v21 = [v19 countByEnumeratingWithState:&v42 objects:v50 count:16];
      if (v21)
      {
        continue;
      }

      break;
    }
  }

  v29 = PRLogUpdatingService(v28);
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A8AA7000, v29, OS_LOG_TYPE_DEFAULT, "pr_updateDescriptors:sessionInfo: all assertions acquired successfully", buf, 2u);
  }

LABEL_16:
}

void __75__PFPosterExtensionInstance_PRAdditions__pr_updateDescriptors_sessionInfo___block_invoke_2_52(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PRLogUpdatingService(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __75__PFPosterExtensionInstance_PRAdditions__pr_updateDescriptors_sessionInfo___block_invoke_2_52_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __75__PFPosterExtensionInstance_PRAdditions__pr_updateDescriptors_sessionInfo___block_invoke_53(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PRLogUpdatingService(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __75__PFPosterExtensionInstance_PRAdditions__pr_updateDescriptors_sessionInfo___block_invoke_53_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __75__PFPosterExtensionInstance_PRAdditions__pr_updateDescriptors_sessionInfo___block_invoke_55(void *a1)
{
  v1 = a1[8];
  if (a1[4])
  {
    v2 = *(v1 + 16);
    v3 = a1[8];

    v2(v3);
  }

  else
  {
    v5 = PFFunctionNameForAddress();
    v4 = PFGeneralErrorFromObjectWithLocalizedFailureReason();
    (*(v1 + 16))(v1, v4);
  }
}

void __75__PFPosterExtensionInstance_PRAdditions__pr_updateDescriptors_sessionInfo___block_invoke_59(uint64_t a1, void *a2, void *a3)
{
  v64 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = PRLogUpdatingService(v6);
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __75__PFPosterExtensionInstance_PRAdditions__pr_updateDescriptors_sessionInfo___block_invoke_59_cold_1();
    }

    (*(*(a1 + 40) + 16))();
    goto LABEL_39;
  }

  v47 = a1;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = MEMORY[0x1E696AD98];
    v10 = [v5 paths];
    v11 = [v9 numberWithUnsignedInteger:{objc_msgSend(v10, "count")}];
    *buf = 138543362;
    v63 = v11;
    _os_log_impl(&dword_1A8AA7000, v8, OS_LOG_TYPE_DEFAULT, "pr_updateDescriptors:sessionInfo: updateDescriptors completed, processing %{public}@ paths", buf, 0xCu);
  }

  v12 = objc_opt_new();
  v13 = objc_opt_new();
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v48 = v5;
  obj = [v5 paths];
  v14 = [obj countByEnumeratingWithState:&v57 objects:v61 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v58;
LABEL_9:
    v17 = 0;
    while (1)
    {
      if (*v58 != v16)
      {
        objc_enumerationMutation(obj);
      }

      v18 = *(*(&v57 + 1) + 8 * v17);
      v19 = [v18 isServerPosterPath];
      if (v19)
      {
        break;
      }

      v23 = [v18 descriptorIdentifier];
      v24 = [v23 length];

      if (v24)
      {
        v26 = PRLogUpdatingService(v25);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          v27 = [v18 descriptorIdentifier];
          *buf = 138543362;
          v63 = v27;
          _os_log_impl(&dword_1A8AA7000, v26, OS_LOG_TYPE_DEFAULT, "pr_updateDescriptors:sessionInfo: processing changed poster path: %{public}@", buf, 0xCu);
        }

        v28 = MEMORY[0x1E69C5178];
        v29 = [v18 descriptorIdentifier];
        v30 = [v18 role];
        v22 = [v28 temporaryDescriptorPathWithIdentifier:v29 role:v30];

        v56 = 0;
        LOBYTE(v28) = [v22 copyContentsOfPath:v18 error:&v56];
        v31 = v56;
        v32 = v31;
        if ((v28 & 1) == 0)
        {
          v42 = PRLogUpdatingService(v31);
          if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
          {
            __75__PFPosterExtensionInstance_PRAdditions__pr_updateDescriptors_sessionInfo___block_invoke_59_cold_2();
          }

          v43 = MEMORY[0x1E698E5F8];
          v52[0] = MEMORY[0x1E69E9820];
          v52[1] = 3221225472;
          v52[2] = __75__PFPosterExtensionInstance_PRAdditions__pr_updateDescriptors_sessionInfo___block_invoke_64;
          v52[3] = &unk_1E7844F38;
          v53 = v12;
          v44 = v47[5];
          v54 = v32;
          v55 = v44;
          v45 = v32;
          v46 = [v43 responderWithHandler:v52];
          v5 = v48;
          [v48 invalidateWithResponder:v46];

          v6 = 0;
          goto LABEL_38;
        }

        v33 = [objc_alloc(MEMORY[0x1E69C4FF0]) _initWithPath:v22];
        [v13 addObject:v33];
        [v12 addObject:v22];

        goto LABEL_21;
      }

LABEL_22:
      if (v15 == ++v17)
      {
        v15 = [obj countByEnumeratingWithState:&v57 objects:v61 count:16];
        if (v15)
        {
          goto LABEL_9;
        }

        goto LABEL_24;
      }
    }

    v20 = PRLogUpdatingService(v19);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = [v18 descriptorIdentifier];
      *buf = 138543362;
      v63 = v21;
      _os_log_impl(&dword_1A8AA7000, v20, OS_LOG_TYPE_DEFAULT, "pr_updateDescriptors:sessionInfo: processing unchanged server poster path: %{public}@", buf, 0xCu);
    }

    v22 = [objc_alloc(MEMORY[0x1E69C5010]) _initWithPath:v18];
    [v13 addObject:v22];
LABEL_21:

    goto LABEL_22;
  }

LABEL_24:

  v35 = PRLogUpdatingService(v34);
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
  {
    v36 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v13, "count")}];
    *buf = 138543362;
    v63 = v36;
    _os_log_impl(&dword_1A8AA7000, v35, OS_LOG_TYPE_DEFAULT, "pr_updateDescriptors:sessionInfo: processed all paths, creating collection with %{public}@ descriptors", buf, 0xCu);
  }

  obj = [objc_alloc(MEMORY[0x1E69C5018]) initWithSet:v13];
  v37 = PRLogUpdatingService(obj);
  v5 = v48;
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A8AA7000, v37, OS_LOG_TYPE_DEFAULT, "pr_updateDescriptors:sessionInfo: delivering successful result", buf, 2u);
  }

  v38 = PRLogUpdatingService([v47[4] finishWithResult:obj]);
  v39 = os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT);
  v6 = 0;
  if (v48)
  {
    if (v39)
    {
      *buf = 0;
      _os_log_impl(&dword_1A8AA7000, v38, OS_LOG_TYPE_DEFAULT, "pr_updateDescriptors:sessionInfo: invalidating paths assertion", buf, 2u);
    }

    v40 = MEMORY[0x1E698E5F8];
    v50[0] = MEMORY[0x1E69E9820];
    v50[1] = 3221225472;
    v50[2] = __75__PFPosterExtensionInstance_PRAdditions__pr_updateDescriptors_sessionInfo___block_invoke_68;
    v50[3] = &unk_1E7844F60;
    v51 = v47[6];
    v41 = [v40 responderWithHandler:v50];
    [v48 invalidateWithResponder:v41];
  }

  else
  {
    if (v39)
    {
      *buf = 0;
      _os_log_impl(&dword_1A8AA7000, v38, OS_LOG_TYPE_DEFAULT, "pr_updateDescriptors:sessionInfo: no paths assertion to invalidate", buf, 2u);
    }

    (*(v47[6] + 2))();
  }

LABEL_38:

LABEL_39:
}

uint64_t __75__PFPosterExtensionInstance_PRAdditions__pr_updateDescriptors_sessionInfo___block_invoke_64(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v8 + 1) + 8 * v6++) invalidate];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  [*(a1 + 32) removeAllObjects];
  return (*(*(a1 + 48) + 16))();
}

void __92__PFPosterExtensionInstance_PRAdditions__pr_updateSuggestions_forConfiguration_sessionInfo___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) signal];
  if (v2)
  {
    v3 = PRLogUpdatingService(v2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A8AA7000, v3, OS_LOG_TYPE_DEFAULT, "pr_updateDescriptors:sessionInfo: invalidating all assertions", buf, 2u);
    }

    v4 = PRLogUpdatingService([*(a1 + 40) mutateUserInfo:&__block_literal_global_73]);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_1A8AA7000, v4, OS_LOG_TYPE_DEFAULT, "pr_updateDescriptors:sessionInfo: all assertions invalidated", v5, 2u);
    }
  }
}

void __92__PFPosterExtensionInstance_PRAdditions__pr_updateSuggestions_forConfiguration_sessionInfo___block_invoke_71(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 objectForKeyedSubscript:@"finishTaskInterruptable"];
  v4 = v3;
  if (v3)
  {
    v5 = PRLogUpdatingService(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A8AA7000, v5, OS_LOG_TYPE_DEFAULT, "Invalidating finishTaskInterruptable", buf, 2u);
    }

    [v4 invalidate];
    [v2 setObject:0 forKeyedSubscript:@"finishTaskInterruptable"];
  }

  v6 = [v2 objectForKeyedSubscript:@"posterRuntimeAssertion"];
  v7 = v6;
  if (v6)
  {
    v8 = PRLogUpdatingService(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&dword_1A8AA7000, v8, OS_LOG_TYPE_DEFAULT, "Invalidating posterRuntimeAssertion", v13, 2u);
    }

    [v7 invalidate];
    [v2 setObject:0 forKeyedSubscript:@"posterRuntimeAssertion"];
  }

  v9 = [v2 objectForKeyedSubscript:@"posterMemoryAssertion"];
  v10 = v9;
  if (v9)
  {
    v11 = PRLogUpdatingService(v9);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_1A8AA7000, v11, OS_LOG_TYPE_DEFAULT, "Invalidating posterMemoryAssertion", v12, 2u);
    }

    [v10 invalidate];
    [v2 setObject:0 forKeyedSubscript:@"posterMemoryAssertion"];
  }
}

void __92__PFPosterExtensionInstance_PRAdditions__pr_updateSuggestions_forConfiguration_sessionInfo___block_invoke_74(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) signal];
  if (v4)
  {
    if (!v3)
    {
      v4 = [MEMORY[0x1E696ABC0] pr_errorWithCode:0];
      v3 = v4;
    }

    v5 = PRLogUpdatingService(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138543362;
      v7 = v3;
      _os_log_impl(&dword_1A8AA7000, v5, OS_LOG_TYPE_DEFAULT, "pr_updateSuggestions:forConfiguration:sessionInfo: ended with error:%{public}@", &v6, 0xCu);
    }

    [*(a1 + 40) finishWithError:v3];
    (*(*(a1 + 48) + 16))();
  }
}

void __92__PFPosterExtensionInstance_PRAdditions__pr_updateSuggestions_forConfiguration_sessionInfo___block_invoke_75(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E69C7548];
  v4 = MEMORY[0x1E696AEC0];
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v4 stringWithFormat:@"Refresh suggestion descriptors for '%@'", v5];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __92__PFPosterExtensionInstance_PRAdditions__pr_updateSuggestions_forConfiguration_sessionInfo___block_invoke_2;
  v11[3] = &unk_1E7844E98;
  v12 = *(a1 + 40);
  v8 = [v3 pf_finishTaskInterruptableWithExplanation:v7 invalidationHandler:v11];
  [v6 setObject:v8 forKeyedSubscript:@"finishTaskInterruptable"];

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

void __92__PFPosterExtensionInstance_PRAdditions__pr_updateSuggestions_forConfiguration_sessionInfo___block_invoke_79(uint64_t a1)
{
  v2 = PRLogUpdatingService(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A8AA7000, v2, OS_LOG_TYPE_DEFAULT, "pr_updateDescriptors:sessionInfo: starting work on operation queue", buf, 2u);
  }

  v4 = PRLogUpdatingService(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A8AA7000, v4, OS_LOG_TYPE_DEFAULT, "pr_updateDescriptors:sessionInfo: creating updating service", buf, 2u);
  }

  v5 = *(a1 + 32);
  v48 = 0;
  v6 = [v5 pr_assetUpdaterWithError:&v48];
  v7 = v48;
  v8 = v7;
  if (v6 && (v7 = [v6 isValid], v7) && !v8)
  {
    v9 = PRLogUpdatingService(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A8AA7000, v9, OS_LOG_TYPE_DEFAULT, "pr_updateDescriptors:sessionInfo: updating service created successfully", buf, 2u);
    }

    v10 = objc_msgSend_auditToken(v6);
    v11 = v10;
    if (v10 && (v12 = [v10 isInvalid], !v12))
    {
      v18 = PRLogUpdatingService(v12);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A8AA7000, v18, OS_LOG_TYPE_DEFAULT, "pr_updateDescriptors:sessionInfo: audit token validated", buf, 2u);
      }

      v19 = [v6 target];
      v20 = v19;
      if (v19)
      {
        v21 = PRLogUpdatingService(v19);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1A8AA7000, v21, OS_LOG_TYPE_DEFAULT, "pr_updateDescriptors:sessionInfo: RBS target obtained", buf, 2u);
        }

        v22 = objc_opt_new();
        v23 = *(a1 + 40);
        v41[0] = MEMORY[0x1E69E9820];
        v41[1] = 3221225472;
        v41[2] = __92__PFPosterExtensionInstance_PRAdditions__pr_updateSuggestions_forConfiguration_sessionInfo___block_invoke_80;
        v41[3] = &unk_1E7844F10;
        v42 = v20;
        v47 = *(a1 + 88);
        v43 = v22;
        v44 = v11;
        v45 = *(a1 + 48);
        v24 = v6;
        v46 = v24;
        v25 = v22;
        [v23 mutateUserInfo:v41];

        v26 = [*(a1 + 56) _path];
        v27 = *(a1 + 64);
        v28 = __PFServerPosterPathFromPFPosterContents();
        v29 = [v27 bs_mapNoNulls:v28];
        v30 = v29;
        v31 = MEMORY[0x1E695E0F0];
        if (v29)
        {
          v31 = v29;
        }

        v32 = v31;

        v33 = *(a1 + 72);
        v37[0] = MEMORY[0x1E69E9820];
        v37[1] = 3221225472;
        v37[2] = __92__PFPosterExtensionInstance_PRAdditions__pr_updateSuggestions_forConfiguration_sessionInfo___block_invoke_5;
        v37[3] = &unk_1E7844F88;
        v39 = *(a1 + 88);
        v38 = *(a1 + 80);
        v40 = *(a1 + 96);
        [v24 updateSuggestionDescriptors:v32 forConfiguration:v26 sessionInfo:v33 completion:v37];

        v8 = 0;
      }

      else
      {
        v34 = PFFunctionNameForAddress();
        v8 = PFGeneralErrorFromObjectWithLocalizedFailureReason();

        v36 = PRLogUpdatingService(v35);
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          __75__PFPosterExtensionInstance_PRAdditions__pr_updateDescriptors_sessionInfo___block_invoke_34_cold_1();
        }

        (*(*(a1 + 88) + 16))(*(a1 + 88));
      }
    }

    else
    {
      v13 = PFFunctionNameForAddress();
      v8 = PFGeneralErrorFromObjectWithLocalizedFailureReason();

      v15 = PRLogUpdatingService(v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        __75__PFPosterExtensionInstance_PRAdditions__pr_updateDescriptors_sessionInfo___block_invoke_34_cold_2();
      }

      (*(*(a1 + 88) + 16))(*(a1 + 88));
    }
  }

  else
  {
    if (!v8)
    {
      v16 = PFFunctionNameForAddress();
      v8 = PFGeneralErrorFromObjectWithLocalizedFailureReason();
    }

    v17 = PRLogUpdatingService(v7);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      __75__PFPosterExtensionInstance_PRAdditions__pr_updateDescriptors_sessionInfo___block_invoke_34_cold_3();
    }

    (*(*(a1 + 88) + 16))(*(a1 + 88));
  }
}

void __92__PFPosterExtensionInstance_PRAdditions__pr_updateSuggestions_forConfiguration_sessionInfo___block_invoke_80(uint64_t a1, void *a2)
{
  v42 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = MEMORY[0x1E69C7548];
  v5 = *(a1 + 32);
  v6 = *MEMORY[0x1E69C5250];
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __92__PFPosterExtensionInstance_PRAdditions__pr_updateSuggestions_forConfiguration_sessionInfo___block_invoke_2_84;
  v39[3] = &unk_1E7844E98;
  v40 = *(a1 + 72);
  v7 = [v4 pf_assertionForTarget:v5 assertionIdentifier:v6 explanation:@"Updating suggestion descriptors" invalidationHandler:v39];
  [v3 setObject:v7 forKeyedSubscript:@"posterRuntimeAssertion"];

  v8 = *(a1 + 40);
  v9 = [v3 objectForKeyedSubscript:@"posterRuntimeAssertion"];
  [v8 bs_safeAddObject:v9];

  v10 = MEMORY[0x1E69C7548];
  v11 = *(a1 + 32);
  v12 = *(a1 + 48);
  v13 = *(a1 + 56);
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __92__PFPosterExtensionInstance_PRAdditions__pr_updateSuggestions_forConfiguration_sessionInfo___block_invoke_3;
  v37[3] = &unk_1E7844E98;
  v38 = *(a1 + 72);
  v14 = [v10 pf_posterUpdateMemoryAssertionForReason:@"Updating suggestion descriptors" target:v11 auditToken:v12 posterProviderBundleIdentifier:v13 invalidationHandler:v37];
  [v3 setObject:v14 forKeyedSubscript:@"posterMemoryAssertion"];

  v15 = *(a1 + 40);
  v16 = [v3 objectForKeyedSubscript:@"posterMemoryAssertion"];
  [v15 bs_safeAddObject:v16];

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v17 = *(a1 + 40);
  v18 = [v17 countByEnumeratingWithState:&v33 objects:v41 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v34;
    while (2)
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v34 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v33 + 1) + 8 * i);
        v32 = 0;
        v23 = [v22 acquireWithError:&v32];
        v24 = v32;
        v25 = v24;
        if ((v23 & 1) == 0)
        {
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __92__PFPosterExtensionInstance_PRAdditions__pr_updateSuggestions_forConfiguration_sessionInfo___block_invoke_4;
          block[3] = &unk_1E7844FD8;
          v31 = *(a1 + 72);
          v28 = *(a1 + 64);
          v29 = v25;
          v30 = *(a1 + 56);
          v26 = v25;
          dispatch_async(MEMORY[0x1E69E96A0], block);

          goto LABEL_11;
        }
      }

      v19 = [v17 countByEnumeratingWithState:&v33 objects:v41 count:16];
      if (v19)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

void __92__PFPosterExtensionInstance_PRAdditions__pr_updateSuggestions_forConfiguration_sessionInfo___block_invoke_4(void *a1)
{
  v1 = a1[7];
  v3 = PFFunctionNameForAddress();
  v2 = PFGeneralErrorFromObjectWithLocalizedFailureReason();
  (*(v1 + 16))(v1, v2);
}

void __92__PFPosterExtensionInstance_PRAdditions__pr_updateSuggestions_forConfiguration_sessionInfo___block_invoke_5(uint64_t a1, void *a2, uint64_t a3)
{
  v45 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (a3)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v30 = a1;
    v6 = objc_opt_new();
    v7 = objc_opt_new();
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v31 = v5;
    obj = [v5 paths];
    v8 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v41;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v41 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v40 + 1) + 8 * i);
          if ([v12 isServerPosterPath])
          {
            v13 = [objc_alloc(MEMORY[0x1E69C5010]) _initWithPath:v12];
            [v7 addObject:v13];
          }

          else
          {
            v14 = v6;
            v15 = MEMORY[0x1E69C4FF0];
            v16 = [v12 descriptorIdentifier];
            v17 = [v12 role];
            v13 = [v15 mutableDescriptorWithIdentifier:v16 role:v17];

            v18 = [v13 _path];
            v39 = 0;
            v19 = [v18 copyContentsOfPath:v12 error:&v39];
            v20 = v39;

            if (!v19)
            {
              v26 = MEMORY[0x1E698E5F8];
              v35[0] = MEMORY[0x1E69E9820];
              v35[1] = 3221225472;
              v35[2] = __92__PFPosterExtensionInstance_PRAdditions__pr_updateSuggestions_forConfiguration_sessionInfo___block_invoke_6;
              v35[3] = &unk_1E7844F38;
              v6 = v14;
              v36 = v14;
              v27 = *(v30 + 40);
              v37 = v20;
              v38 = v27;
              v28 = v20;
              v29 = [v26 responderWithHandler:v35];
              v5 = v31;
              [v31 invalidateWithResponder:v29];

              v25 = obj;
              goto LABEL_17;
            }

            [v7 addObject:v13];
            v6 = v14;
            [v14 addObject:v12];
          }
        }

        v9 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v21 = *(v30 + 32);
    v22 = [v7 copy];
    [v21 finishWithResult:v22];

    v5 = v31;
    if (v31)
    {
      v23 = MEMORY[0x1E698E5F8];
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = __92__PFPosterExtensionInstance_PRAdditions__pr_updateSuggestions_forConfiguration_sessionInfo___block_invoke_7;
      v33[3] = &unk_1E7844F60;
      v34 = *(v30 + 48);
      v24 = [v23 responderWithHandler:v33];
      [v31 invalidateWithResponder:v24];

      v25 = v34;
LABEL_17:
    }

    else
    {
      (*(*(v30 + 48) + 16))();
    }
  }
}

uint64_t __92__PFPosterExtensionInstance_PRAdditions__pr_updateSuggestions_forConfiguration_sessionInfo___block_invoke_6(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v8 + 1) + 8 * v6++) invalidate];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  [*(a1 + 32) removeAllObjects];
  return (*(*(a1 + 48) + 16))();
}

@end