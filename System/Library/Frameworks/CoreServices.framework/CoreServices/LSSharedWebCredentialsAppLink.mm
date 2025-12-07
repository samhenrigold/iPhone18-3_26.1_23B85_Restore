@interface LSSharedWebCredentialsAppLink
@end

@implementation LSSharedWebCredentialsAppLink

void __88___LSSharedWebCredentialsAppLink_afterAppLinksBecomeAvailableForURL_limit_performBlock___block_invoke(uint64_t a1)
{
  v43 = *MEMORY[0x1E69E9840];
  v24 = [objc_alloc(MEMORY[0x1E696AF20]) initWithURL:*(a1 + 32) resolvingAgainstBaseURL:1];
  v2 = [v24 host];
  if (v2)
  {
    v3 = objc_alloc(_LSSWCServiceSpecifierClass());
    v4 = _LSSWCServiceTypeAppLinks();
    v5 = [v3 initWithServiceType:v4 applicationIdentifier:0 domain:v2];

    v23 = v5;
    v39 = 0;
    v6 = [(objc_class *)_LSSWCServiceDetailsClass() serviceDetailsWithServiceSpecifier:v5 error:&v39];
    v22 = v39;
    if (v6)
    {
      v21 = v6;
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = __88___LSSharedWebCredentialsAppLink_afterAppLinksBecomeAvailableForURL_limit_performBlock___block_invoke_2;
      v35[3] = &unk_1E6A1A4F8;
      v7 = *(a1 + 32);
      v9 = *(a1 + 40);
      v8 = *(a1 + 48);
      v36 = v7;
      v38 = v8;
      v37 = v9;
      block = MEMORY[0x1865D71B0](v35);
      if ([v6 count] == 1)
      {
        v10 = [v6 firstObject];
        v31[0] = MEMORY[0x1E69E9820];
        v31[1] = 3221225472;
        v31[2] = __88___LSSharedWebCredentialsAppLink_afterAppLinksBecomeAvailableForURL_limit_performBlock___block_invoke_3;
        v31[3] = &unk_1E6A1A570;
        v34 = *(a1 + 56);
        v32 = block;
        v33 = *(a1 + 40);
        [v10 waitForSiteApprovalWithCompletionHandler:v31];

        v11 = v32;
      }

      else
      {
        v11 = dispatch_group_create();
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v14 = v6;
        v15 = [v14 countByEnumeratingWithState:&v27 objects:v42 count:16];
        if (v15)
        {
          v16 = *v28;
          do
          {
            for (i = 0; i != v15; ++i)
            {
              if (*v28 != v16)
              {
                objc_enumerationMutation(v14);
              }

              v18 = *(*(&v27 + 1) + 8 * i);
              dispatch_group_enter(v11);
              v25[0] = MEMORY[0x1E69E9820];
              v25[1] = 3221225472;
              v25[2] = __88___LSSharedWebCredentialsAppLink_afterAppLinksBecomeAvailableForURL_limit_performBlock___block_invoke_4;
              v25[3] = &unk_1E6A1A598;
              v25[4] = v18;
              v26 = v11;
              [v18 waitForSiteApprovalWithCompletionHandler:v25];
            }

            v15 = [v14 countByEnumeratingWithState:&v27 objects:v42 count:16];
          }

          while (v15);
        }

        v19 = [*(a1 + 56) _dispatchQueue];
        dispatch_group_notify(v11, v19, block);
      }

      v6 = v21;
    }

    else
    {
      (*(*(a1 + 40) + 16))();
    }

    v13 = v22;
  }

  else
  {
    v12 = *(a1 + 40);
    v40 = *MEMORY[0x1E696A278];
    v41 = @"aURL";
    v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
    v13 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v23, "+[_LSSharedWebCredentialsAppLink afterAppLinksBecomeAvailableForURL:limit:performBlock:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSAppLinkPlugIn.mm", 315);
    (*(v12 + 16))(v12, 0, v13);
  }
}

void __88___LSSharedWebCredentialsAppLink_afterAppLinksBecomeAvailableForURL_limit_performBlock___block_invoke_2(void *a1)
{
  v2 = a1[4];
  v3 = a1[6];
  v6 = 0;
  v4 = [LSAppLink appLinksWithURL:v2 limit:v3 error:&v6];
  v5 = v6;
  (*(a1[5] + 16))();
}

void __88___LSSharedWebCredentialsAppLink_afterAppLinksBecomeAvailableForURL_limit_performBlock___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  if (a2)
  {
    v5 = [*(a1 + 48) _dispatchQueue];
    dispatch_async(v5, *(a1 + 32));
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void __88___LSSharedWebCredentialsAppLink_afterAppLinksBecomeAvailableForURL_limit_performBlock___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5)
  {
    v8 = _LSDefaultLog(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = [*(a1 + 32) serviceSpecifier];
      __88___LSSharedWebCredentialsAppLink_afterAppLinksBecomeAvailableForURL_limit_performBlock___block_invoke_4_cold_1(v9, v7, v10, v8);
    }
  }

  dispatch_group_leave(*(a1 + 40));
}

void __88___LSSharedWebCredentialsAppLink_afterAppLinksBecomeAvailableForURL_limit_performBlock___block_invoke_4_cold_1(void *a1, uint64_t a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_error_impl(&dword_18162D000, log, OS_LOG_TYPE_ERROR, "Error getting updated SWC service details for %@ (ignoring due to batch operation): %@", buf, 0x16u);
}

@end