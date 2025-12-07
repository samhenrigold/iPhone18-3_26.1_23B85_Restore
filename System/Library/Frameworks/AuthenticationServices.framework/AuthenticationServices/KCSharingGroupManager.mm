@interface KCSharingGroupManager
@end

@implementation KCSharingGroupManager

void __120__KCSharingGroupManager_AuthenticationServicesExtras__as_getKCSharingParticipantsForFamilyMembersWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v7 = v5;
  if (v5)
  {
    v8 = WBS_LOG_CHANNEL_PREFIXPasswordManager(v5, v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __120__KCSharingGroupManager_AuthenticationServicesExtras__as_getKCSharingParticipantsForFamilyMembersWithCompletionHandler___block_invoke_cold_1(v8, v7);
    }
  }

  else
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v9 = [a2 members];
    v10 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v23;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v23 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v22 + 1) + 8 * i);
          if (([v14 isMe] & 1) == 0)
          {
            dispatch_group_enter(*(a1 + 32));
            v15 = [v14 appleID];
            v16 = [MEMORY[0x1E697AA68] sharedInstance];
            v18[0] = MEMORY[0x1E69E9820];
            v18[1] = 3221225472;
            v18[2] = __120__KCSharingGroupManager_AuthenticationServicesExtras__as_getKCSharingParticipantsForFamilyMembersWithCompletionHandler___block_invoke_18;
            v18[3] = &unk_1E7AF8000;
            v19 = v15;
            v20 = *(a1 + 40);
            v21 = *(a1 + 32);
            v17 = v15;
            [v16 checkAvailabilityForHandle:v17 completion:v18];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v11);
    }

    v7 = 0;
  }

  dispatch_group_leave(*(a1 + 32));
}

void __120__KCSharingGroupManager_AuthenticationServicesExtras__as_getKCSharingParticipantsForFamilyMembersWithCompletionHandler___block_invoke_18(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v7 = v5;
  if (v5)
  {
    v8 = WBS_LOG_CHANNEL_PREFIXPasswordManager(v5, v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __120__KCSharingGroupManager_AuthenticationServicesExtras__as_getKCSharingParticipantsForFamilyMembersWithCompletionHandler___block_invoke_18_cold_1(v8, v7);
      if (!a2)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  if (a2)
  {
LABEL_4:
    v9 = [objc_alloc(MEMORY[0x1E697AA78]) initWithHandle:*(a1 + 32) permissionLevel:1];
    v10 = *(a1 + 40);
    objc_sync_enter(v10);
    [*(a1 + 40) addObject:v9];
    objc_sync_exit(v10);
  }

LABEL_5:
  dispatch_group_leave(*(a1 + 48));
}

void __120__KCSharingGroupManager_AuthenticationServicesExtras__as_getKCSharingParticipantsForFamilyMembersWithCompletionHandler___block_invoke_cold_1(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  LODWORD(v11) = 138543362;
  *(&v11 + 4) = v4;
  OUTLINED_FUNCTION_0_0(&dword_1B1C8D000, v5, v6, "Failed to fetch FAFamilyCircle with error: %{public}@", v7, v8, v9, v10, v11, DWORD2(v11));
}

void __120__KCSharingGroupManager_AuthenticationServicesExtras__as_getKCSharingParticipantsForFamilyMembersWithCompletionHandler___block_invoke_18_cold_1(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  LODWORD(v11) = 138412290;
  *(&v11 + 4) = v4;
  OUTLINED_FUNCTION_0_0(&dword_1B1C8D000, v5, v6, "Failed to check recipient eligibility for shared account groups with error: %@", v7, v8, v9, v10, v11, DWORD2(v11));
}

@end