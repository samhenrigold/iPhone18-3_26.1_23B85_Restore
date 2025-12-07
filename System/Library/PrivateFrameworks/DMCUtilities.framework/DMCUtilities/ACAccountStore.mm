@interface ACAccountStore
@end

@implementation ACAccountStore

uint64_t __86__ACAccountStore_DeviceManagementClient__dmc_visibleSecondaryRemoteManagementAccounts__block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = [v2 dmc_altDSID];

  if (v3)
  {
    v4 = [MEMORY[0x1E6959A48] defaultStore];
    v5 = [v2 dmc_altDSID];
    v6 = [v4 dmc_iCloudAccountForRemoteManagingAccountWithAltDSID:v5];

    if (v6)
    {
      v9 = [v6 dmc_isPrimaryAccount] ^ 1;
    }

    else
    {
      v10 = *DMCLogObjects(v7, v8);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = v10;
        v12 = [v2 dmc_altDSID];
        v14 = 138543362;
        v15 = v12;
        _os_log_impl(&dword_1B1630000, v11, OS_LOG_TYPE_ERROR, "No iCloud account for altDSID: %{public}@", &v14, 0xCu);
      }

      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

BOOL __89__ACAccountStore_DeviceManagementClient__dmc_conflictingAccountsExistWithUsername_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 username];
  v4 = [v3 caseInsensitiveCompare:*(a1 + 32)] == 0;

  return v4;
}

uint64_t __89__ACAccountStore_DeviceManagementClient__dmc_conflictingAccountsExistWithUsername_error___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 username];
  if ([v4 caseInsensitiveCompare:*(a1 + 32)])
  {
    v5 = 0;
  }

  else
  {
    v5 = [v3 isActive];
  }

  return v5;
}

uint64_t __88__ACAccountStore_DeviceManagementClient__dmc_conflictingAccountsExistWithAltDSID_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 dmc_altDSID];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

uint64_t __88__ACAccountStore_DeviceManagementClient__dmc_conflictingAccountsExistWithAltDSID_error___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 dmc_altDSID];
  if ([v4 isEqualToString:*(a1 + 32)])
  {
    v5 = [v3 isActive];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

BOOL __72__ACAccountStore_DeviceManagementClient__dmc_iCloudAccountWithUsername___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 username];
  v4 = [v3 caseInsensitiveCompare:*(a1 + 32)] == 0;

  return v4;
}

uint64_t __96__ACAccountStore_DeviceManagementClient__dmc_updateAppleAccountWithPersonaID_error_updateBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 dmc_personaIdentifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

void __79__ACAccountStore_DeviceManagementClient___dmc_updateAccount_error_updateBlock___block_invoke(uint64_t a1)
{
  v2 = dispatch_semaphore_create(0);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __79__ACAccountStore_DeviceManagementClient___dmc_updateAccount_error_updateBlock___block_invoke_2;
  v6[3] = &unk_1E7ADC280;
  v8 = *(a1 + 48);
  v7 = v2;
  v5 = v2;
  [v3 saveVerifiedAccount:v4 withCompletionHandler:v6];
  dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
}

void __79__ACAccountStore_DeviceManagementClient___dmc_updateAccount_error_updateBlock___block_invoke_2(uint64_t a1, char a2, id obj)
{
  *(*(*(a1 + 40) + 8) + 24) = a2;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), obj);
  v5 = obj;
  dispatch_semaphore_signal(*(a1 + 32));
}

uint64_t __96__ACAccountStore_DeviceManagementClient__dmc_removeMAIDRelatedAccountsWithAltDSID_asynchronous___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 dmc_altDSID];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

uint64_t __98__ACAccountStore_DeviceManagementClient__dmc_removeMAIDRelatedAccountsWithPersonaID_asynchronous___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 dmc_personaIdentifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

int64_t __73__ACAccountStore_DeviceManagementClient__dmc_accountsWithPredicateBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [a2 accountType];
  v8 = [v7 identifier];
  v9 = [v5 indexOfObject:v8];
  v10 = *(a1 + 32);
  v11 = [v6 accountType];

  v12 = [v11 identifier];
  v13 = v9 - [v10 indexOfObject:v12];

  return v13;
}

uint64_t __74__ACAccountStore_DeviceManagementClient__dmc_removeAccounts_asynchronous___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [a2 accountType];
  v8 = [v7 identifier];
  v9 = [v5 indexOfObject:v8];

  v10 = *(a1 + 32);
  v11 = [v6 accountType];

  v12 = [v11 identifier];
  v13 = [v10 indexOfObject:v12];

  if (v9 < v13)
  {
    return -1;
  }

  else
  {
    return v9 > v13;
  }
}

void __74__ACAccountStore_DeviceManagementClient__dmc_removeAccounts_asynchronous___block_invoke_2(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = dispatch_semaphore_create(0);
  v4 = *DMCLogObjects(v2, v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = v4;
    v7 = [v5 identifier];
    v8 = [*(a1 + 32) accountType];
    v9 = [v8 description];
    *buf = 138543618;
    v17 = v7;
    v18 = 2114;
    v19 = v9;
    _os_log_impl(&dword_1B1630000, v6, OS_LOG_TYPE_DEFAULT, "Will remove account: %{public}@ , type: %{public}@", buf, 0x16u);
  }

  v12 = a1 + 32;
  v10 = *(a1 + 32);
  v11 = *(v12 + 8);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __74__ACAccountStore_DeviceManagementClient__dmc_removeAccounts_asynchronous___block_invoke_11;
  v14[3] = &unk_1E7ADC320;
  v14[4] = v10;
  v15 = v2;
  v13 = v2;
  [v11 removeAccount:v10 withCompletionHandler:v14];
  dispatch_semaphore_wait(v13, 0xFFFFFFFFFFFFFFFFLL);
}

void __74__ACAccountStore_DeviceManagementClient__dmc_removeAccounts_asynchronous___block_invoke_11(uint64_t a1, char a2, void *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v7 = *DMCLogObjects(v5, v6);
  if ((a2 & 1) == 0)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v13 = *(a1 + 32);
      v14 = v7;
      v15 = [v13 identifier];
      *buf = 138412546;
      v26 = v15;
      v27 = 2114;
      v28 = v5;
      _os_log_impl(&dword_1B1630000, v14, OS_LOG_TYPE_ERROR, "Cannot remove account with ID: %@. Error: %{public}@", buf, 0x16u);
    }

    v9 = objc_opt_new();
    v16 = [*(a1 + 32) identifier];
    v10 = v16;
    if (v16)
    {
      v17 = v16;
    }

    else
    {
      v17 = &stru_1F2860120;
    }

    v23[1] = @"Type";
    v24[0] = v17;
    v18 = [*(a1 + 32) accountType];
    v19 = [v18 identifier];
    v20 = v19;
    if (v19)
    {
      v21 = v19;
    }

    else
    {
      v21 = &stru_1F2860120;
    }

    v24[1] = v21;
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:2];
    [v9 logErrorEventForTopic:@"Accounts" reason:@"Account Removal Failed" error:v5 details:v22];

    goto LABEL_13;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = v7;
    v10 = [v8 identifier];
    v11 = [*(a1 + 32) accountType];
    v12 = [v11 description];
    *buf = 138543618;
    v26 = v10;
    v27 = 2114;
    v28 = v12;
    _os_log_impl(&dword_1B1630000, v9, OS_LOG_TYPE_DEFAULT, "Account removed: %{public}@ , type: %{public}@", buf, 0x16u);

LABEL_13:
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

@end