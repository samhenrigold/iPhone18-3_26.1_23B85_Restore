@interface ACAccountStore
@end

@implementation ACAccountStore

void __54__ACAccountStore_GameCenter___gkMapAccountsWithBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *MEMORY[0x277CB8C38];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__ACAccountStore_GameCenter___gkMapAccountsWithBlock___block_invoke_2;
  v7[3] = &unk_2785E08C0;
  v5 = *(a1 + 32);
  v9 = v3;
  v7[4] = v5;
  v10 = *(a1 + 48);
  v8 = *(a1 + 40);
  v6 = v3;
  [v5 accountTypeWithIdentifier:v4 completion:v7];
}

void __54__ACAccountStore_GameCenter___gkMapAccountsWithBlock___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (!os_log_GKGeneral)
    {
      v7 = GKOSLoggers();
    }

    v8 = os_log_GKDaemon;
    if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_227904000, v8, OS_LOG_TYPE_INFO, "NOT GRANTED ACCESS TO GAME CENTER ACCOUNTS DUE TO AN ACCOUNT INTERNAL ERROR", buf, 2u);
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v9 = *(a1 + 32);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __54__ACAccountStore_GameCenter___gkMapAccountsWithBlock___block_invoke_78;
    v10[3] = &unk_2785E0898;
    v10[4] = v9;
    v11 = v5;
    v13 = *(a1 + 56);
    v12 = *(a1 + 40);
    v14 = *(a1 + 48);
    [v9 requestAccessToAccountsWithType:v11 options:0 completion:v10];
  }
}

void __54__ACAccountStore_GameCenter___gkMapAccountsWithBlock___block_invoke_78(uint64_t a1, char a2, void *a3)
{
  v88 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (a2)
  {
    v6 = [*(a1 + 32) accountsWithAccountType:*(a1 + 40)];
    v7 = [MEMORY[0x277CBEB18] array];
    v58 = v5;
    if (![v6 count])
    {
      obj = v6;
      goto LABEL_26;
    }

    v8 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"username" ascending:0];
    v9 = [MEMORY[0x277CBEA60] arrayWithObject:v8];
    v10 = [v6 sortedArrayUsingDescriptors:v9];

    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    v11 = v10;
    obj = v11;
    v12 = [v11 countByEnumeratingWithState:&v79 objects:v87 count:16];
    if (v12)
    {
      v13 = v12;
      v56 = v9;
      v59 = v8;
      v11 = 0;
      v14 = *v80;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v80 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v79 + 1) + 8 * i);
          if (v11)
          {
            v17 = [*(*(&v79 + 1) + 8 * i) username];
            v18 = [v11 username];
            v19 = [v17 isEqual:v18];

            if (v19)
            {
              v20 = [v16 creationDate];
              v21 = [v11 creationDate];
              v22 = [v20 compare:v21];

              v23 = *(a1 + 32);
              if (v22 == 1)
              {
                v77[0] = MEMORY[0x277D85DD0];
                v77[1] = 3221225472;
                v77[2] = __54__ACAccountStore_GameCenter___gkMapAccountsWithBlock___block_invoke_84;
                v77[3] = &unk_2785E0848;
                v78 = v11;
                v24 = v11;
                [v23 removeAccount:v24 withCompletionHandler:v77];
                v11 = v16;
              }

              else
              {
                v76[0] = MEMORY[0x277D85DD0];
                v76[1] = 3221225472;
                v76[2] = __54__ACAccountStore_GameCenter___gkMapAccountsWithBlock___block_invoke_86;
                v76[3] = &unk_2785E0848;
                v76[4] = v16;
                [v23 removeAccount:v16 withCompletionHandler:v76];
              }
            }

            else
            {
              [v7 addObject:v11];
              v25 = v16;

              v11 = v25;
            }
          }

          else
          {
            v11 = v16;
          }
        }

        v13 = [obj countByEnumeratingWithState:&v79 objects:v87 count:16];
      }

      while (v13);

      v8 = v59;
      v9 = v56;
      if (!v11)
      {
        goto LABEL_20;
      }

      [v7 addObject:v11];
    }

LABEL_20:
    v5 = v58;
LABEL_26:
    if ([v7 count] >= 2)
    {
      v28 = [MEMORY[0x277CBEB38] dictionary];
      v61 = objc_alloc_init(MEMORY[0x277CF0178]);
      v72 = 0u;
      v73 = 0u;
      v74 = 0u;
      v75 = 0u;
      v57 = v7;
      v29 = v7;
      v30 = [v29 countByEnumeratingWithState:&v72 objects:v86 count:16];
      if (v30)
      {
        v31 = v30;
        v32 = *v73;
        v60 = a1;
        do
        {
          for (j = 0; j != v31; ++j)
          {
            if (*v73 != v32)
            {
              objc_enumerationMutation(v29);
            }

            v34 = *(*(&v72 + 1) + 8 * j);
            v35 = [v34 accountPropertyForKey:{@"playerID", v57}];
            if ([v35 length])
            {
              v36 = [v28 objectForKeyedSubscript:v35];

              if (v36)
              {
                v37 = [v28 objectForKeyedSubscript:v35];
                [v37 addObject:v34];
              }

              else
              {
                v37 = [MEMORY[0x277CBEB18] arrayWithObject:v34];
                [v28 setObject:v37 forKeyedSubscript:v35];
              }
            }

            else
            {
              v37 = [v34 accountPropertyForKey:@"altDSID"];
              if (v37)
              {
                v38 = v31;
                v39 = v32;
                v40 = v28;
                v41 = v29;
                v42 = +[GKPreferences shared];
                v43 = [v42 isInternalBuild];

                if (v43)
                {
                  if (!os_log_GKGeneral)
                  {
                    v44 = GKOSLoggers();
                  }

                  v45 = os_log_GKAccount;
                  if (os_log_type_enabled(os_log_GKAccount, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 138412290;
                    v85 = v37;
                    _os_log_debug_impl(&dword_227904000, v45, OS_LOG_TYPE_DEBUG, "GKAuth:telling authkit account is not in use using altDSID:%@", buf, 0xCu);
                  }
                }

                [v61 setAppleIDWithAltDSID:v37 inUse:0 forService:6];
                v29 = v41;
                v28 = v40;
                v32 = v39;
                v31 = v38;
                a1 = v60;
              }

              [v29 removeObject:v34];
              v46 = *(a1 + 32);
              v71[0] = MEMORY[0x277D85DD0];
              v71[1] = 3221225472;
              v71[2] = __54__ACAccountStore_GameCenter___gkMapAccountsWithBlock___block_invoke_88;
              v71[3] = &unk_2785E0848;
              v71[4] = v34;
              [v46 removeAccount:v34 withCompletionHandler:v71];
            }
          }

          v31 = [v29 countByEnumeratingWithState:&v72 objects:v86 count:16];
        }

        while (v31);
      }

      v67[0] = MEMORY[0x277D85DD0];
      v67[1] = 3221225472;
      v67[2] = __54__ACAccountStore_GameCenter___gkMapAccountsWithBlock___block_invoke_89;
      v67[3] = &unk_2785E0870;
      v68 = v61;
      v47 = v29;
      v48 = *(a1 + 32);
      v69 = v47;
      v70 = v48;
      v49 = v61;
      [v28 enumerateKeysAndObjectsUsingBlock:v67];

      v7 = v57;
      v5 = v58;
    }

    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v50 = v7;
    v51 = [v50 countByEnumeratingWithState:&v63 objects:v83 count:16];
    if (v51)
    {
      v52 = v51;
      v53 = *v64;
      do
      {
        for (k = 0; k != v52; ++k)
        {
          if (*v64 != v53)
          {
            objc_enumerationMutation(v50);
          }

          v55 = (*(*(a1 + 56) + 16))();
          if ([v55 count])
          {
            [*(a1 + 48) addObjectsFromArray:v55];
          }
        }

        v52 = [v50 countByEnumeratingWithState:&v63 objects:v83 count:16];
      }

      while (v52);
    }

    goto LABEL_57;
  }

  if (!os_log_GKGeneral)
  {
    v26 = GKOSLoggers();
  }

  v27 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_227904000, v27, OS_LOG_TYPE_INFO, "NOT GRANTED ACCESS TO GAME CENTER ACCOUNTS", buf, 2u);
  }

LABEL_57:
  (*(*(a1 + 64) + 16))();
}

void __54__ACAccountStore_GameCenter___gkMapAccountsWithBlock___block_invoke_84(uint64_t a1, int a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = +[GKPreferences shared];
  v7 = [v6 isInternalBuild];

  if (v7)
  {
    if (!os_log_GKGeneral)
    {
      v8 = GKOSLoggers();
    }

    v9 = os_log_GKAccount;
    if (os_log_type_enabled(os_log_GKAccount, OS_LOG_TYPE_DEBUG))
    {
      v10 = *(a1 + 32);
      v11 = 138412802;
      v12 = v10;
      v13 = 1024;
      v14 = a2;
      v15 = 2112;
      v16 = v5;
      _os_log_debug_impl(&dword_227904000, v9, OS_LOG_TYPE_DEBUG, "DELETE ACCOUNT(%@): success:%d error:%@", &v11, 0x1Cu);
    }
  }
}

void __54__ACAccountStore_GameCenter___gkMapAccountsWithBlock___block_invoke_86(uint64_t a1, int a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = +[GKPreferences shared];
  v7 = [v6 isInternalBuild];

  if (v7)
  {
    if (!os_log_GKGeneral)
    {
      v8 = GKOSLoggers();
    }

    v9 = os_log_GKAccount;
    if (os_log_type_enabled(os_log_GKAccount, OS_LOG_TYPE_DEBUG))
    {
      v10 = *(a1 + 32);
      v11 = 138412802;
      v12 = v10;
      v13 = 1024;
      v14 = a2;
      v15 = 2112;
      v16 = v5;
      _os_log_debug_impl(&dword_227904000, v9, OS_LOG_TYPE_DEBUG, "DELETE ACCOUNT(%@): success:%d error:%@", &v11, 0x1Cu);
    }
  }
}

void __54__ACAccountStore_GameCenter___gkMapAccountsWithBlock___block_invoke_88(uint64_t a1)
{
  v1 = +[GKPreferences shared];
  v2 = [v1 isInternalBuild];

  if (v2)
  {
    if (!os_log_GKGeneral)
    {
      v3 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKAccount, OS_LOG_TYPE_DEBUG))
    {
      __54__ACAccountStore_GameCenter___gkMapAccountsWithBlock___block_invoke_88_cold_1();
    }
  }
}

void __54__ACAccountStore_GameCenter___gkMapAccountsWithBlock___block_invoke_89(uint64_t a1, uint64_t a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 count] >= 2)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v16 = v4;
    obj = v4;
    v5 = [obj countByEnumeratingWithState:&v19 objects:v25 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v20;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v20 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v19 + 1) + 8 * i);
          v10 = [v9 accountPropertyForKey:@"altDSID"];
          if (v10)
          {
            v11 = +[GKPreferences shared];
            v12 = [v11 isInternalBuild];

            if (v12)
            {
              if (!os_log_GKGeneral)
              {
                v13 = GKOSLoggers();
              }

              v14 = os_log_GKAccount;
              if (os_log_type_enabled(os_log_GKAccount, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v24 = v10;
                _os_log_debug_impl(&dword_227904000, v14, OS_LOG_TYPE_DEBUG, "GKAuth:telling authkit account is not in use using altDSID:%@", buf, 0xCu);
              }
            }

            [*(a1 + 32) setAppleIDWithAltDSID:v10 inUse:0 forService:6];
          }

          [*(a1 + 40) removeObject:v9];
          v15 = *(a1 + 48);
          v18[0] = MEMORY[0x277D85DD0];
          v18[1] = 3221225472;
          v18[2] = __54__ACAccountStore_GameCenter___gkMapAccountsWithBlock___block_invoke_90;
          v18[3] = &unk_2785E0848;
          v18[4] = v9;
          [v15 removeAccount:v9 withCompletionHandler:v18];
        }

        v6 = [obj countByEnumeratingWithState:&v19 objects:v25 count:16];
      }

      while (v6);
    }

    v4 = v16;
  }
}

void __54__ACAccountStore_GameCenter___gkMapAccountsWithBlock___block_invoke_90(uint64_t a1)
{
  v1 = +[GKPreferences shared];
  v2 = [v1 isInternalBuild];

  if (v2)
  {
    if (!os_log_GKGeneral)
    {
      v3 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKAccount, OS_LOG_TYPE_DEBUG))
    {
      __54__ACAccountStore_GameCenter___gkMapAccountsWithBlock___block_invoke_90_cold_1();
    }
  }
}

void __74__ACAccountStore_GameCenter___gkSetScope_forCredential_completionHandler___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (v5 || (a2 & 1) == 0)
  {
    if (!os_log_GKGeneral)
    {
      v6 = GKOSLoggers();
    }

    v7 = os_log_GKAccount;
    if (os_log_type_enabled(os_log_GKAccount, OS_LOG_TYPE_ERROR))
    {
      __74__ACAccountStore_GameCenter___gkSetScope_forCredential_completionHandler___block_invoke_cold_1(a1, v7, v5);
    }
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    (*(v8 + 16))(v8, v5);
  }
}

uint64_t __65__ACAccountStore_GameCenter___gkPrimaryCredentialForEnvironment___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = [a3 scopeModificationDate];
  v6 = [v4 scopeModificationDate];

  v7 = [v5 compare:v6];
  return v7;
}

void __65__ACAccountStore_GameCenter___gkPrimaryCredentialForEnvironment___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if (([v7 scope] & 4) != 0)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a4 = 1;
  }
}

id __51__ACAccountStore_GameCenter___gkAccountForAppleID___block_invoke(uint64_t a1, void *a2)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 username];
  LODWORD(a1) = [v4 isEqual:*(a1 + 32)];

  if (a1)
  {
    v7[0] = v3;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void __81__ACAccountStore_GameCenter___getAltDSIDFromIDMSForCredential_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *MEMORY[0x277CB8C58];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __81__ACAccountStore_GameCenter___getAltDSIDFromIDMSForCredential_completionHandler___block_invoke_2;
  v8[3] = &unk_2785E09E8;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v11 = v3;
  v8[4] = v6;
  v9 = v5;
  v10 = *(a1 + 48);
  v7 = v3;
  [v6 accountTypeWithIdentifier:v4 completion:v8];
}

void __81__ACAccountStore_GameCenter___getAltDSIDFromIDMSForCredential_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (!os_log_GKGeneral)
    {
      v7 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      __81__ACAccountStore_GameCenter___getAltDSIDFromIDMSForCredential_completionHandler___block_invoke_2_cold_1();
    }

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __81__ACAccountStore_GameCenter___getAltDSIDFromIDMSForCredential_completionHandler___block_invoke_104;
    v11[3] = &unk_2785E09C0;
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v10 = *(a1 + 32);
    v12 = v9;
    v13 = v10;
    v14 = v5;
    v15 = *(a1 + 48);
    v16 = *(a1 + 56);
    [v8 requestAccessToAccountsWithType:v14 options:0 completion:v11];
  }
}

uint64_t __81__ACAccountStore_GameCenter___getAltDSIDFromIDMSForCredential_completionHandler___block_invoke_104(uint64_t a1, char a2)
{
  v22 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) setResult:0];
  if (a2)
  {
    v4 = [*(a1 + 40) accountsWithAccountType:*(a1 + 48)];
    if ([v4 count])
    {
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v5 = v4;
      v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v18;
        while (2)
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v18 != v8)
            {
              objc_enumerationMutation(v5);
            }

            v10 = *(*(&v17 + 1) + 8 * i);
            v11 = [v10 username];
            v12 = [*(a1 + 56) accountName];
            v13 = [v11 isEqualToString:v12];

            if (v13)
            {
              v15 = [v10 aa_altDSID];
              [*(a1 + 32) setResult:v15];

              goto LABEL_17;
            }
          }

          v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
          if (v7)
          {
            continue;
          }

          break;
        }
      }

LABEL_17:
    }
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v14 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      __81__ACAccountStore_GameCenter___getAltDSIDFromIDMSForCredential_completionHandler___block_invoke_104_cold_1();
    }
  }

  return (*(*(a1 + 64) + 16))();
}

void __81__ACAccountStore_GameCenter___getAltDSIDFromIDMSForCredential_completionHandler___block_invoke_105(uint64_t a1)
{
  v2 = *(a1 + 40);
  v4 = [*(a1 + 32) result];
  v3 = [*(a1 + 32) error];
  (*(v2 + 16))(v2, v4, v3);
}

void __78__ACAccountStore_GameCenter___gkRenewCredentialForUsername_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v12[2] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) _gkAccountForAppleID:*(a1 + 40)];
  v11[0] = *MEMORY[0x277CB9098];
  v11[1] = @"AARenewShouldPostFollowUp";
  v12[0] = MEMORY[0x277CBEC38];
  v12[1] = MEMORY[0x277CBEC38];
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v6 = *(a1 + 32);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __78__ACAccountStore_GameCenter___gkRenewCredentialForUsername_completionHandler___block_invoke_2;
  v8[3] = &unk_2785DEDB0;
  v9 = *(a1 + 48);
  v10 = v3;
  v7 = v3;
  [v6 renewCredentialsForAccount:v4 options:v5 completion:v8];
}

uint64_t __78__ACAccountStore_GameCenter___gkRenewCredentialForUsername_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setError:?];
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:a2];
  [*(a1 + 32) setResult:v4];

  v5 = *(*(a1 + 40) + 16);

  return v5();
}

void __78__ACAccountStore_GameCenter___gkRenewCredentialForUsername_completionHandler___block_invoke_3(uint64_t a1)
{
  v22[1] = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) error];

  if (!v3)
  {
    v9 = [*v2 result];
    v11 = +[GKPreferences shared];
    v12 = [v11 isInternalBuild];

    if (!v12)
    {
      goto LABEL_12;
    }

    if (!os_log_GKGeneral)
    {
      v13 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKAccount, OS_LOG_TYPE_DEBUG))
    {
      __78__ACAccountStore_GameCenter___gkRenewCredentialForUsername_completionHandler___block_invoke_3_cold_2();
      if (!v9)
      {
        goto LABEL_14;
      }
    }

    else
    {
LABEL_12:
      if (!v9)
      {
        goto LABEL_14;
      }
    }

    v14 = [v9 integerValue];
    if ((v14 - 1) >= 2)
    {
      if (v14)
      {
        goto LABEL_15;
      }

      v10 = *(*(a1 + 48) + 16);
      goto LABEL_7;
    }

LABEL_14:
    v15 = MEMORY[0x277CCA9B8];
    v19 = @"GKCredentialRenewResult";
    v16 = [*(a1 + 32) result];
    v20 = v16;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    v18 = [v15 errorWithDomain:@"GKInternalErrorDomain" code:104 userInfo:v17];

    (*(*(a1 + 48) + 16))();
    goto LABEL_15;
  }

  if (!os_log_GKGeneral)
  {
    v4 = GKOSLoggers();
  }

  v5 = os_log_GKAccount;
  if (os_log_type_enabled(os_log_GKAccount, OS_LOG_TYPE_ERROR))
  {
    __78__ACAccountStore_GameCenter___gkRenewCredentialForUsername_completionHandler___block_invoke_3_cold_1(a1, v2, v5);
  }

  v6 = MEMORY[0x277CCA9B8];
  v21 = *MEMORY[0x277CCA7E8];
  v7 = [*(a1 + 32) error];
  v22[0] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];
  v9 = [v6 errorWithDomain:@"GKInternalErrorDomain" code:104 userInfo:v8];

  v10 = *(*(a1 + 48) + 16);
LABEL_7:
  v10();
LABEL_15:
}

void __66__ACAccountStore_GameCenter___gkSaveCredential_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __66__ACAccountStore_GameCenter___gkSaveCredential_completionHandler___block_invoke_2;
  v7[3] = &unk_2785E0A10;
  v8 = *(a1 + 48);
  v9 = *(a1 + 40);
  v10 = v3;
  v6 = v3;
  [v4 saveVerifiedAccount:v5 withCompletionHandler:v7];
}

void __66__ACAccountStore_GameCenter___gkSaveCredential_completionHandler___block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    [*(a1 + 32) setError:v5];
  }

  v6 = +[GKPreferences shared];
  v7 = [v6 isInternalBuild];

  if (v7)
  {
    if (!os_log_GKGeneral)
    {
      v8 = GKOSLoggers();
    }

    v9 = os_log_GKAccount;
    if (os_log_type_enabled(os_log_GKAccount, OS_LOG_TYPE_DEBUG))
    {
      v10 = *(a1 + 40);
      v11 = 138412802;
      v12 = v10;
      v13 = 1024;
      v14 = a2;
      v15 = 2112;
      v16 = v5;
      _os_log_debug_impl(&dword_227904000, v9, OS_LOG_TYPE_DEBUG, "SAVED ACCOUNT: %@ success:%d error:%@", &v11, 0x1Cu);
    }
  }

  (*(*(a1 + 48) + 16))();
}

void __66__ACAccountStore_GameCenter___gkSaveCredential_completionHandler___block_invoke_120(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v2 = [*(a1 + 32) error];
    (*(v1 + 16))(v1, v2);
  }
}

id __69__ACAccountStore_GameCenter___gkDeleteCredentials_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 accountName];
  v4 = [*(a1 + 32) _gkAccountForAppleID:v3];
  if (!v4)
  {
    v5 = +[GKPreferences shared];
    v6 = [v5 isInternalBuild];

    if (v6)
    {
      if (!os_log_GKGeneral)
      {
        v7 = GKOSLoggers();
      }

      if (os_log_type_enabled(os_log_GKAccount, OS_LOG_TYPE_DEBUG))
      {
        __69__ACAccountStore_GameCenter___gkDeleteCredentials_completionHandler___block_invoke_cold_1();
      }
    }
  }

  return v4;
}

void __69__ACAccountStore_GameCenter___gkDeleteCredentials_completionHandler___block_invoke_122(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __69__ACAccountStore_GameCenter___gkDeleteCredentials_completionHandler___block_invoke_2;
  v9[3] = &unk_2785E0A10;
  v6 = *(a1 + 48);
  v7 = *(a1 + 40);
  v10 = v6;
  v11 = v7;
  v12 = v3;
  v8 = v3;
  [v4 removeAccount:v5 withCompletionHandler:v9];
}

void __69__ACAccountStore_GameCenter___gkDeleteCredentials_completionHandler___block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    [*(a1 + 32) setError:v5];
  }

  v6 = +[GKPreferences shared];
  v7 = [v6 isInternalBuild];

  if (v7)
  {
    if (!os_log_GKGeneral)
    {
      v8 = GKOSLoggers();
    }

    v9 = os_log_GKAccount;
    if (os_log_type_enabled(os_log_GKAccount, OS_LOG_TYPE_DEBUG))
    {
      v10 = *(a1 + 40);
      v11 = v9;
      v12 = [v10 username];
      v13 = 138413058;
      v14 = v10;
      v15 = 2112;
      v16 = v12;
      v17 = 1024;
      v18 = a2;
      v19 = 2112;
      v20 = v5;
      _os_log_debug_impl(&dword_227904000, v11, OS_LOG_TYPE_DEBUG, "DELETE ACCOUNT(%@): REMOVED:%@ success:%d error:%@", &v13, 0x26u);
    }
  }

  (*(*(a1 + 48) + 16))();
}

void __69__ACAccountStore_GameCenter___gkDeleteCredentials_completionHandler___block_invoke_123(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) error];
  (*(v1 + 16))(v1, v2);
}

void __74__ACAccountStore_GameCenter___gkSetScope_forCredential_completionHandler___block_invoke_cold_1(uint64_t a1, void *a2, uint64_t a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 48);
  v5 = a2;
  v6 = NSStringFromSelector(v4);
  OUTLINED_FUNCTION_0();
  v9 = 2112;
  v10 = v7;
  v11 = 2112;
  v12 = a3;
  _os_log_error_impl(&dword_227904000, v5, OS_LOG_TYPE_ERROR, "%@: Failed to save credential %@ (%@)", v8, 0x20u);
}

void __78__ACAccountStore_GameCenter___gkRenewCredentialForUsername_completionHandler___block_invoke_3_cold_1(uint64_t a1, void **a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 40);
  v4 = *a2;
  v5 = a3;
  v6 = [v4 error];
  v8 = 138412546;
  v9 = v3;
  OUTLINED_FUNCTION_6();
  v10 = v7;
  _os_log_error_impl(&dword_227904000, v5, OS_LOG_TYPE_ERROR, "Received error while attempting to renew user: %@, error: %@", &v8, 0x16u);
}

void __78__ACAccountStore_GameCenter___gkRenewCredentialForUsername_completionHandler___block_invoke_3_cold_2()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

@end