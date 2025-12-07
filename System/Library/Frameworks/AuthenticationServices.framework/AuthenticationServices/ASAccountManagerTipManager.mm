@interface ASAccountManagerTipManager
@end

@implementation ASAccountManagerTipManager

void __46___ASAccountManagerTipManager_fetchTipToShow___block_invoke(uint64_t a1)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __46___ASAccountManagerTipManager_fetchTipToShow___block_invoke_2;
  v5[3] = &unk_1E7AF7B50;
  v2 = *(a1 + 40);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = v3;
  v7 = v4;
  [v2 _checkEligibilityForiCloudKeychainTipWithCompletionHandler:v5];
}

void __46___ASAccountManagerTipManager_fetchTipToShow___block_invoke_2(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = *(*(a1 + 32) + 16);
  }

  else
  {
    if ([MEMORY[0x1E69C8880] isOngoingCredentialSharingEnabled])
    {
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __46___ASAccountManagerTipManager_fetchTipToShow___block_invoke_3;
      v7[3] = &unk_1E7AF7B50;
      v4 = *(a1 + 40);
      v5 = *(a1 + 32);
      v6 = *(a1 + 40);
      v8 = v5;
      v9 = v6;
      [v4 _checkEligibilityForFamilySharingTipWithCompletionHandler:v7];

      return;
    }

    v3 = *(*(a1 + 32) + 16);
  }

  v3();
}

void __46___ASAccountManagerTipManager_fetchTipToShow___block_invoke_3(uint64_t a1, int a2)
{
  if (a2)
  {
    v4 = *(*(a1 + 32) + 16);

    v4();
  }

  else
  {
    v8 = v2;
    v9 = v3;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __46___ASAccountManagerTipManager_fetchTipToShow___block_invoke_4;
    v6[3] = &unk_1E7AF7B28;
    v5 = *(a1 + 40);
    v7 = *(a1 + 32);
    [v5 _checkEligibilityForGeneralSharingTipWithCompletionHandler:v6];
  }
}

uint64_t __46___ASAccountManagerTipManager_fetchTipToShow___block_invoke_4(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = 3;
  }

  else
  {
    v3 = 0;
  }

  return (*(v2 + 16))(v2, v3);
}

void __74___ASAccountManagerTipManager_fetchSharingGroupsThatIncludeFamilyMembers___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 members];
  v8 = [v7 count];

  if (v8 > 1)
  {
    v13 = [MEMORY[0x1E69C88B8] sharedMonitor];
    v14 = [v13 isKeychainSyncEnabled];

    if (v14)
    {
      v15 = [MEMORY[0x1E697AA68] sharedInstance];
      v16 = [MEMORY[0x1E697AA58] all];
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __74___ASAccountManagerTipManager_fetchSharingGroupsThatIncludeFamilyMembers___block_invoke_34;
      v19[3] = &unk_1E7AF7BB8;
      v21 = *(a1 + 32);
      v20 = v5;
      [v15 getGroupsWithRequest:v16 completion:v19];
    }

    else
    {
      v17 = *(a1 + 32);
      v18 = [MEMORY[0x1E696ABC0] errorWithDomain:@"_ASAccountManagerTipManagerErrorDomain" code:1 userInfo:0];
      (*(v17 + 16))(v17, 0, v18);
    }
  }

  else
  {
    if (v6)
    {
      v11 = WBS_LOG_CHANNEL_PREFIXPasswordManager(v9, v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        __74___ASAccountManagerTipManager_fetchSharingGroupsThatIncludeFamilyMembers___block_invoke_cold_1(v11);
      }

      v12 = *(*(a1 + 32) + 16);
    }

    else
    {
      v12 = *(*(a1 + 32) + 16);
    }

    v12();
  }
}

void __74___ASAccountManagerTipManager_fetchSharingGroupsThatIncludeFamilyMembers___block_invoke_34(uint64_t a1, void *a2, void *a3)
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v8 = v6;
  if (v6)
  {
    v9 = WBS_LOG_CHANNEL_PREFIXPasswordManager(v6, v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __74___ASAccountManagerTipManager_fetchSharingGroupsThatIncludeFamilyMembers___block_invoke_34_cold_1(v9);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v26 = a1;
    v10 = MEMORY[0x1E695DFD8];
    v11 = [*(a1 + 32) members];
    v12 = [v11 safari_mapAndFilterObjectsUsingBlock:&__block_literal_global_1];
    v13 = [v10 setWithArray:v12];

    [MEMORY[0x1E695DF70] array];
    v28 = v27 = v5;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v14 = v5;
    v15 = [v14 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v30;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v30 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v29 + 1) + 8 * i);
          v20 = MEMORY[0x1E695DFD8];
          v21 = [v19 participants];
          v22 = [v21 safari_mapObjectsUsingBlock:&__block_literal_global_41];
          v23 = [v20 setWithArray:v22];

          if ([v13 intersectsSet:v23])
          {
            [v28 addObject:v19];
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v16);
    }

    v24 = *(v26 + 40);
    v25 = [v28 copy];
    (*(v24 + 16))(v24, v25, 0);

    v8 = 0;
    v5 = v27;
  }
}

id __74___ASAccountManagerTipManager_fetchSharingGroupsThatIncludeFamilyMembers___block_invoke_36(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isMe])
  {
    v3 = 0;
  }

  else
  {
    v3 = [v2 appleID];
  }

  return v3;
}

void __89___ASAccountManagerTipManager__checkEligibilityForFamilySharingTipWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 members];
  v8 = [v7 count];

  if (v8 > 1)
  {
    v12 = [v5 members];
    v13 = [v12 safari_firstObjectPassingTest:&__block_literal_global_51];

    if ([v13 isChildAccount])
    {
      [*(a1 + 40) _acknowledgeTip:2];
      (*(*(a1 + 32) + 16))();
    }

    else
    {
      v14 = [MEMORY[0x1E697AA68] sharedInstance];
      v15 = [MEMORY[0x1E697AA58] all];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __89___ASAccountManagerTipManager__checkEligibilityForFamilySharingTipWithCompletionHandler___block_invoke_2;
      v18[3] = &unk_1E7AF7C50;
      v20 = *(a1 + 32);
      v16 = v5;
      v17 = *(a1 + 40);
      v19 = v16;
      v21 = v17;
      [v14 getGroupsWithRequest:v15 completion:v18];
    }
  }

  else
  {
    if (v6)
    {
      v11 = WBS_LOG_CHANNEL_PREFIXPasswordManager(v9, v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        __74___ASAccountManagerTipManager_fetchSharingGroupsThatIncludeFamilyMembers___block_invoke_cold_1(v11);
      }
    }

    (*(*(a1 + 32) + 16))();
  }
}

void __89___ASAccountManagerTipManager__checkEligibilityForFamilySharingTipWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v43 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v8 = v6;
  if (v6)
  {
    v9 = WBS_LOG_CHANNEL_PREFIXPasswordManager(v6, v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __74___ASAccountManagerTipManager_fetchSharingGroupsThatIncludeFamilyMembers___block_invoke_34_cold_1(v9);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v25 = a1;
    v10 = [MEMORY[0x1E695DFA8] set];
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    obj = v5;
    v28 = [obj countByEnumeratingWithState:&v35 objects:v42 count:16];
    if (v28)
    {
      v27 = *v36;
      do
      {
        for (i = 0; i != v28; ++i)
        {
          if (*v36 != v27)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v35 + 1) + 8 * i);
          v31 = 0u;
          v32 = 0u;
          v33 = 0u;
          v34 = 0u;
          v13 = [v12 participants];
          v14 = [v13 countByEnumeratingWithState:&v31 objects:v41 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v32;
            do
            {
              for (j = 0; j != v15; ++j)
              {
                if (*v32 != v16)
                {
                  objc_enumerationMutation(v13);
                }

                v18 = *(*(&v31 + 1) + 8 * j);
                if (([v18 isCurrentUser] & 1) == 0)
                {
                  v20 = [v18 handle];
                  if (v20)
                  {
                    [v10 addObject:v20];
                  }

                  else
                  {
                    v21 = WBS_LOG_CHANNEL_PREFIXPasswordManager(0, v19);
                    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
                    {
                      __89___ASAccountManagerTipManager__checkEligibilityForFamilySharingTipWithCompletionHandler___block_invoke_2_cold_2(v39, v21, v18, &v40);
                    }
                  }
                }
              }

              v15 = [v13 countByEnumeratingWithState:&v31 objects:v41 count:16];
            }

            while (v15);
          }
        }

        v28 = [obj countByEnumeratingWithState:&v35 objects:v42 count:16];
      }

      while (v28);
    }

    v22 = [*(v25 + 32) members];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __89___ASAccountManagerTipManager__checkEligibilityForFamilySharingTipWithCompletionHandler___block_invoke_53;
    v29[3] = &unk_1E7AF7C28;
    v30 = v10;
    v23 = v10;
    v24 = [v22 safari_containsObjectPassingTest:v29];

    if (v24)
    {
      [*(v25 + 48) _acknowledgeTip:2];
    }

    (*(*(v25 + 40) + 16))();

    v8 = 0;
  }
}

uint64_t __89___ASAccountManagerTipManager__checkEligibilityForFamilySharingTipWithCompletionHandler___block_invoke_53(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 appleID];
  v4 = [v2 containsObject:v3];

  return v4;
}

void __74___ASAccountManagerTipManager_fetchSharingGroupsThatIncludeFamilyMembers___block_invoke_cold_1(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_1_1() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_1B1C8D000, v4, v5, "Failed to get FamilyCircle with error: %@", v6, v7, v8, v9);
}

void __74___ASAccountManagerTipManager_fetchSharingGroupsThatIncludeFamilyMembers___block_invoke_34_cold_1(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_1_1() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_1B1C8D000, v4, v5, "Failed to fetch groups with error: %@", v6, v7, v8, v9);
}

void __89___ASAccountManagerTipManager__checkEligibilityForFamilySharingTipWithCompletionHandler___block_invoke_2_cold_2(uint8_t *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = [a3 description];
  *a1 = 138739971;
  *a4 = v8;
  _os_log_error_impl(&dword_1B1C8D000, v7, OS_LOG_TYPE_ERROR, "Received KCSharingParticipant with nil handle %{sensitive}@.", a1, 0xCu);
}

@end