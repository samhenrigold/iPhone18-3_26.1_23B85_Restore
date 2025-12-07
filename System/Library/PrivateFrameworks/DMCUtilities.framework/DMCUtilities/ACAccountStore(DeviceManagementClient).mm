@interface ACAccountStore(DeviceManagementClient)
- (DMCHangDetectionQueue)_dmc_workerQueue;
- (id)_dmc_AccountAssociatedWithRemoteManagementWithAccountTypeIdentifier:()DeviceManagementClient;
- (id)_dmc_AccountAssociatedWithRemoteManagementWithAccountTypeIdentifier:()DeviceManagementClient altDSID:;
- (id)_dmc_accountWithType:()DeviceManagementClient error:criteria:;
- (id)dmc_RemoteManagementAccounts;
- (id)dmc_accountsWithPredicateBlock:()DeviceManagementClient;
- (id)dmc_iCloudAccountWithUsername:()DeviceManagementClient;
- (id)dmc_remoteManagementAccountForAltDSID:()DeviceManagementClient;
- (id)dmc_remoteManagementAccountForDSID:()DeviceManagementClient;
- (id)dmc_remoteManagementAccountForEnrollmentURL:()DeviceManagementClient;
- (id)dmc_remoteManagementAccountForIdentifier:()DeviceManagementClient;
- (id)dmc_remoteManagementAccountForManagementProfileIdentifier:()DeviceManagementClient;
- (id)dmc_visibleRemoteManagementAccounts;
- (id)dmc_visibleSecondaryRemoteManagementAccounts;
- (uint64_t)_dmc_updateAccount:()DeviceManagementClient error:updateBlock:;
- (uint64_t)dmc_conflictingAccountsExistWithAltDSID:()DeviceManagementClient error:;
- (uint64_t)dmc_conflictingAccountsExistWithUsername:()DeviceManagementClient error:;
- (uint64_t)dmc_hasPrimaryAccount:()DeviceManagementClient;
- (uint64_t)dmc_updateAccountWithIdentifier:()DeviceManagementClient error:updateBlock:;
- (uint64_t)dmc_updateAccountWithTypeIdentifier:()DeviceManagementClient altDSID:error:updateBlock:;
- (uint64_t)dmc_updateAppleAccountWithPersonaID:()DeviceManagementClient error:updateBlock:;
- (void)dmc_removeAccountWithIdentifier:()DeviceManagementClient asynchronous:;
- (void)dmc_removeAccounts:()DeviceManagementClient asynchronous:;
- (void)dmc_removeMAIDRelatedAccountsWithAltDSID:()DeviceManagementClient asynchronous:;
- (void)dmc_removeMAIDRelatedAccountsWithPersonaID:()DeviceManagementClient asynchronous:;
@end

@implementation ACAccountStore(DeviceManagementClient)

- (id)dmc_visibleSecondaryRemoteManagementAccounts
{
  dmc_visibleRemoteManagementAccounts = [self dmc_visibleRemoteManagementAccounts];
  v2 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_2];
  v3 = [dmc_visibleRemoteManagementAccounts filteredArrayUsingPredicate:v2];

  return v3;
}

- (id)dmc_visibleRemoteManagementAccounts
{
  dmc_RemoteManagementAccounts = [self dmc_RemoteManagementAccounts];
  if (dmc_RemoteManagementAccounts)
  {
    v2 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global];
    v3 = [dmc_RemoteManagementAccounts filteredArrayUsingPredicate:v2];
  }

  else
  {
    v3 = MEMORY[0x1E695E0F0];
  }

  return v3;
}

- (id)dmc_RemoteManagementAccounts
{
  dmc_RemoteManagementAccountType = [self dmc_RemoteManagementAccountType];
  v3 = [self accountsWithAccountType:dmc_RemoteManagementAccountType];

  return v3;
}

- (id)_dmc_AccountAssociatedWithRemoteManagementWithAccountTypeIdentifier:()DeviceManagementClient
{
  v4 = a3;
  dmc_RemoteManagementAccounts = [self dmc_RemoteManagementAccounts];
  firstObject = [dmc_RemoteManagementAccounts firstObject];

  if (firstObject)
  {
    dmc_altDSID = [firstObject dmc_altDSID];
    v8 = [self _dmc_AccountAssociatedWithRemoteManagementWithAccountTypeIdentifier:v4 altDSID:dmc_altDSID];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_dmc_AccountAssociatedWithRemoteManagementWithAccountTypeIdentifier:()DeviceManagementClient altDSID:
{
  v25[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v25[0] = v6;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:1];
  v23 = 0;
  v9 = [self accountsWithAccountTypeIdentifiers:v8 preloadedProperties:0 error:&v23];
  v10 = v23;

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v11 = v9;
  v12 = [v11 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v12)
  {
    v13 = *v20;
    while (2)
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = *(*(&v19 + 1) + 8 * i);
        dmc_altDSID = [v15 dmc_altDSID];
        v17 = [dmc_altDSID isEqualToString:v7];

        if (v17)
        {
          v12 = v15;
          goto LABEL_11;
        }
      }

      v12 = [v11 countByEnumeratingWithState:&v19 objects:v24 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v12;
}

- (id)dmc_remoteManagementAccountForAltDSID:()DeviceManagementClient
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [self dmc_RemoteManagementAccounts];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v16 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        dmc_altDSID = [v9 dmc_altDSID];
        v11 = [dmc_altDSID isEqualToString:v4];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (id)dmc_remoteManagementAccountForDSID:()DeviceManagementClient
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [self dmc_RemoteManagementAccounts];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v16 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        dmc_DSID = [v9 dmc_DSID];
        v11 = [dmc_DSID isEqualToNumber:v4];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (id)dmc_remoteManagementAccountForIdentifier:()DeviceManagementClient
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [self dmc_RemoteManagementAccounts];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v16 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        identifier = [v9 identifier];
        v11 = [identifier isEqualToString:v4];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (id)dmc_remoteManagementAccountForEnrollmentURL:()DeviceManagementClient
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [self dmc_RemoteManagementAccounts];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v16 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        dmc_enrollmentURL = [v9 dmc_enrollmentURL];
        v11 = [dmc_enrollmentURL isEqualToString:v4];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (id)dmc_remoteManagementAccountForManagementProfileIdentifier:()DeviceManagementClient
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [self dmc_RemoteManagementAccounts];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v16 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        dmc_managementProfileIdentifier = [v9 dmc_managementProfileIdentifier];
        v11 = [dmc_managementProfileIdentifier isEqualToString:v4];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (uint64_t)dmc_hasPrimaryAccount:()DeviceManagementClient
{
  v28[2] = *MEMORY[0x1E69E9840];
  v5 = *MEMORY[0x1E69597F8];
  v6 = *MEMORY[0x1E6959930];
  v28[0] = *MEMORY[0x1E69597F8];
  v28[1] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:2];
  v8 = [self accountsWithAccountTypeIdentifiers:v7 error:a3];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v24;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v24 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v23 + 1) + 8 * i);
        accountType = [v14 accountType];
        identifier = [accountType identifier];
        if ([identifier isEqualToString:v5])
        {
          dmc_isPrimaryAccount = [v14 dmc_isPrimaryAccount];

          if (dmc_isPrimaryAccount)
          {
            goto LABEL_17;
          }
        }

        else
        {
        }

        accountType2 = [v14 accountType];
        identifier2 = [accountType2 identifier];
        if ([identifier2 isEqualToString:v6])
        {
          isActive = [v14 isActive];

          if (isActive)
          {
LABEL_17:
            v21 = 1;
            goto LABEL_18;
          }
        }

        else
        {
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v21 = 0;
LABEL_18:

  return v21;
}

- (uint64_t)dmc_conflictingAccountsExistWithUsername:()DeviceManagementClient error:
{
  v32 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = *MEMORY[0x1E69597F8];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __89__ACAccountStore_DeviceManagementClient__dmc_conflictingAccountsExistWithUsername_error___block_invoke;
  v24[3] = &unk_1E7ADC258;
  v9 = v7;
  v25 = v9;
  v10 = [self _dmc_accountWithType:v8 error:a4 criteria:v24];
  v12 = v10;
  v13 = v10;
  if (!v10)
  {
    v14 = *MEMORY[0x1E6959930];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __89__ACAccountStore_DeviceManagementClient__dmc_conflictingAccountsExistWithUsername_error___block_invoke_2;
    v22[3] = &unk_1E7ADC258;
    v4 = &v23;
    v23 = v9;
    v10 = [self _dmc_accountWithType:v14 error:a4 criteria:v22];
    v13 = v10;
    if (!v10)
    {
      v20 = 0;
LABEL_8:

      goto LABEL_9;
    }
  }

  v15 = *DMCLogObjects(v10, v11);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = v15;
    identifier = [v13 identifier];
    accountType = [v13 accountType];
    accountTypeDescription = [accountType accountTypeDescription];
    *buf = 138543874;
    v27 = v9;
    v28 = 2112;
    v29 = identifier;
    v30 = 2114;
    v31 = accountTypeDescription;
    _os_log_impl(&dword_1B1630000, v16, OS_LOG_TYPE_DEFAULT, "Conflicting account with username (%{public}@) exists. Identifier: %@, type: %{public}@", buf, 0x20u);
  }

  v20 = 1;
  if (!v12)
  {
    goto LABEL_8;
  }

LABEL_9:

  return v20;
}

- (uint64_t)dmc_conflictingAccountsExistWithAltDSID:()DeviceManagementClient error:
{
  v32 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = *MEMORY[0x1E69597F8];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __88__ACAccountStore_DeviceManagementClient__dmc_conflictingAccountsExistWithAltDSID_error___block_invoke;
  v24[3] = &unk_1E7ADC258;
  v9 = v7;
  v25 = v9;
  v10 = [self _dmc_accountWithType:v8 error:a4 criteria:v24];
  v12 = v10;
  v13 = v10;
  if (!v10)
  {
    v14 = *MEMORY[0x1E6959930];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __88__ACAccountStore_DeviceManagementClient__dmc_conflictingAccountsExistWithAltDSID_error___block_invoke_2;
    v22[3] = &unk_1E7ADC258;
    v4 = &v23;
    v23 = v9;
    v10 = [self _dmc_accountWithType:v14 error:a4 criteria:v22];
    v13 = v10;
    if (!v10)
    {
      v20 = 0;
LABEL_8:

      goto LABEL_9;
    }
  }

  v15 = *DMCLogObjects(v10, v11);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = v15;
    identifier = [v13 identifier];
    accountType = [v13 accountType];
    accountTypeDescription = [accountType accountTypeDescription];
    *buf = 138543874;
    v27 = v9;
    v28 = 2112;
    v29 = identifier;
    v30 = 2114;
    v31 = accountTypeDescription;
    _os_log_impl(&dword_1B1630000, v16, OS_LOG_TYPE_DEFAULT, "Conflicting account with altDSID (%{public}@) exists. Identifier: %@, type: %{public}@", buf, 0x20u);
  }

  v20 = 1;
  if (!v12)
  {
    goto LABEL_8;
  }

LABEL_9:

  return v20;
}

- (id)dmc_iCloudAccountWithUsername:()DeviceManagementClient
{
  v4 = a3;
  v5 = *MEMORY[0x1E69597F8];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __72__ACAccountStore_DeviceManagementClient__dmc_iCloudAccountWithUsername___block_invoke;
  v9[3] = &unk_1E7ADC258;
  v10 = v4;
  v6 = v4;
  v7 = [self _dmc_accountWithType:v5 error:0 criteria:v9];

  return v7;
}

- (id)_dmc_accountWithType:()DeviceManagementClient error:criteria:
{
  v33[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v33[0] = v8;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:1];
  v29 = 0;
  v11 = [self accountsWithAccountTypeIdentifiers:v10 error:&v29];
  v12 = v29;

  if (v12)
  {
    v15 = *DMCLogObjects(v13, v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v32 = v12;
      _os_log_impl(&dword_1B1630000, v15, OS_LOG_TYPE_ERROR, "Failed to fetch accounts with error: %{public}@", buf, 0xCu);
    }

    if (a4)
    {
      v16 = v12;
      v17 = 0;
      *a4 = v12;
      goto LABEL_17;
    }
  }

  else
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v18 = v11;
    v19 = [v18 countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v26;
      while (2)
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v26 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v25 + 1) + 8 * i);
          if (v9[2](v9, v23))
          {
            v17 = v23;

            goto LABEL_17;
          }
        }

        v20 = [v18 countByEnumeratingWithState:&v25 objects:v30 count:16];
        if (v20)
        {
          continue;
        }

        break;
      }
    }
  }

  v17 = 0;
LABEL_17:

  return v17;
}

- (uint64_t)dmc_updateAccountWithTypeIdentifier:()DeviceManagementClient altDSID:error:updateBlock:
{
  v22 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v14 = [self _dmc_AccountAssociatedWithRemoteManagementWithAccountTypeIdentifier:v10 altDSID:v11];
  if (v14)
  {
    v15 = [self _dmc_updateAccount:v14 error:a5 updateBlock:v12];
  }

  else
  {
    v16 = *DMCLogObjects(0, v13);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v18 = 138543618;
      v19 = v10;
      v20 = 2114;
      v21 = v11;
      _os_log_impl(&dword_1B1630000, v16, OS_LOG_TYPE_ERROR, "Couldn't find account with type: %{public}@, altDSID: %{public}@.", &v18, 0x16u);
    }

    if (a5)
    {
      [self _dmc_missingAccountError];
      *a5 = v15 = 0;
    }

    else
    {
      v15 = 0;
    }
  }

  return v15;
}

- (uint64_t)dmc_updateAccountWithIdentifier:()DeviceManagementClient error:updateBlock:
{
  v17 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v11 = [self dmc_remoteManagementAccountForIdentifier:v8];
  if (v11)
  {
    v12 = [self _dmc_updateAccount:v11 error:a4 updateBlock:v9];
  }

  else
  {
    v13 = *DMCLogObjects(0, v10);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v15 = 138543362;
      v16 = v8;
      _os_log_impl(&dword_1B1630000, v13, OS_LOG_TYPE_ERROR, "Couldn't find account with identifier: %{public}@", &v15, 0xCu);
    }

    if (a4)
    {
      [self _dmc_missingAccountError];
      *a4 = v12 = 0;
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (uint64_t)dmc_updateAppleAccountWithPersonaID:()DeviceManagementClient error:updateBlock:
{
  v21 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = *MEMORY[0x1E69597F8];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __96__ACAccountStore_DeviceManagementClient__dmc_updateAppleAccountWithPersonaID_error_updateBlock___block_invoke;
  v17[3] = &unk_1E7ADC258;
  v11 = v8;
  v18 = v11;
  v13 = [self _dmc_accountWithType:v10 error:a4 criteria:v17];
  if (v13)
  {
    v14 = [self _dmc_updateAccount:v13 error:a4 updateBlock:v9];
  }

  else
  {
    v15 = *DMCLogObjects(0, v12);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v20 = v11;
      _os_log_impl(&dword_1B1630000, v15, OS_LOG_TYPE_ERROR, "Couldn't find apple account with persona ID: %{public}@", buf, 0xCu);
    }

    v14 = 0;
  }

  return v14;
}

- (uint64_t)_dmc_updateAccount:()DeviceManagementClient error:updateBlock:
{
  v37 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v11 = *DMCLogObjects(v9, v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    accountType = [v8 accountType];
    accountTypeDescription = [accountType accountTypeDescription];
    dmc_altDSID = [v8 dmc_altDSID];
    *buf = 138543618;
    *&buf[4] = accountTypeDescription;
    *&buf[12] = 2114;
    *&buf[14] = dmc_altDSID;
    _os_log_impl(&dword_1B1630000, v12, OS_LOG_TYPE_DEFAULT, "Will update account with type: %{public}@, altDSID: %{public}@.", buf, 0x16u);
  }

  v9[2](v9, v8);
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 1;
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v34 = __Block_byref_object_copy__0;
  v35 = __Block_byref_object_dispose__0;
  v36 = 0;
  _dmc_workerQueue = [self _dmc_workerQueue];
  v21 = MEMORY[0x1E69E9820];
  v22 = 3221225472;
  v23 = __79__ACAccountStore_DeviceManagementClient___dmc_updateAccount_error_updateBlock___block_invoke;
  v24 = &unk_1E7ADC2A8;
  selfCopy = self;
  v17 = v8;
  v26 = v17;
  v27 = &v29;
  v28 = buf;
  [_dmc_workerQueue queueBlock:&v21];

  _dmc_workerQueue2 = [self _dmc_workerQueue];
  [_dmc_workerQueue2 waitUntilAllBlocksAreFinished];

  if (a4)
  {
    *a4 = *(*&buf[8] + 40);
  }

  v19 = *(v30 + 24);

  _Block_object_dispose(buf, 8);
  _Block_object_dispose(&v29, 8);

  return v19 & 1;
}

- (void)dmc_removeMAIDRelatedAccountsWithAltDSID:()DeviceManagementClient asynchronous:
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v8 = *DMCLogObjects(v6, v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v14 = v6;
    _os_log_impl(&dword_1B1630000, v8, OS_LOG_TYPE_INFO, "Will sign out accounts with altDSID: %{public}@", buf, 0xCu);
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __96__ACAccountStore_DeviceManagementClient__dmc_removeMAIDRelatedAccountsWithAltDSID_asynchronous___block_invoke;
  v11[3] = &unk_1E7ADC2D0;
  v12 = v6;
  v9 = v6;
  v10 = [self dmc_accountsWithPredicateBlock:v11];
  [self dmc_removeAccounts:v10 asynchronous:a4];
}

- (void)dmc_removeMAIDRelatedAccountsWithPersonaID:()DeviceManagementClient asynchronous:
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v8 = *DMCLogObjects(v6, v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v14 = v6;
    _os_log_impl(&dword_1B1630000, v8, OS_LOG_TYPE_INFO, "Will remove accounts with personaID: %{public}@", buf, 0xCu);
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __98__ACAccountStore_DeviceManagementClient__dmc_removeMAIDRelatedAccountsWithPersonaID_asynchronous___block_invoke;
  v11[3] = &unk_1E7ADC2D0;
  v12 = v6;
  v9 = v6;
  v10 = [self dmc_accountsWithPredicateBlock:v11];
  [self dmc_removeAccounts:v10 asynchronous:a4];
}

- (void)dmc_removeAccountWithIdentifier:()DeviceManagementClient asynchronous:
{
  v9[1] = *MEMORY[0x1E69E9840];
  v6 = [self accountWithIdentifier:a3];
  v7 = v6;
  if (v6)
  {
    v9[0] = v6;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
    [self dmc_removeAccounts:v8 asynchronous:a4];
  }
}

- (id)dmc_accountsWithPredicateBlock:()DeviceManagementClient
{
  v23[7] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = *MEMORY[0x1E69598B0];
  v23[0] = *MEMORY[0x1E6959930];
  v23[1] = v5;
  v6 = *MEMORY[0x1E6959810];
  v23[2] = *MEMORY[0x1E69597F8];
  v23[3] = v6;
  v7 = *MEMORY[0x1E69598E8];
  v23[4] = *MEMORY[0x1E6959888];
  v23[5] = v7;
  v23[6] = *MEMORY[0x1E6959860];
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:7];
  v20 = 0;
  v9 = [self accountsWithAccountTypeIdentifiers:v8 preloadedProperties:0 error:&v20];
  v10 = v20;
  v12 = v10;
  if (v10)
  {
    v13 = *DMCLogObjects(v10, v11);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v22 = v12;
      _os_log_impl(&dword_1B1630000, v13, OS_LOG_TYPE_ERROR, "Fetching accounts failed with error: %{public}@", buf, 0xCu);
    }

    v14 = 0;
  }

  else
  {
    v15 = [MEMORY[0x1E696AE18] predicateWithBlock:v4];
    v16 = [v9 filteredArrayUsingPredicate:v15];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __73__ACAccountStore_DeviceManagementClient__dmc_accountsWithPredicateBlock___block_invoke;
    v18[3] = &unk_1E7ADC2F8;
    v19 = v8;
    v14 = [v16 sortedArrayUsingComparator:v18];
  }

  return v14;
}

- (void)dmc_removeAccounts:()DeviceManagementClient asynchronous:
{
  v30[7] = *MEMORY[0x1E69E9840];
  v6 = *MEMORY[0x1E69597F8];
  v30[0] = *MEMORY[0x1E69598E8];
  v30[1] = v6;
  v7 = *MEMORY[0x1E6959860];
  v30[2] = *MEMORY[0x1E69598B0];
  v30[3] = v7;
  v8 = *MEMORY[0x1E6959810];
  v30[4] = *MEMORY[0x1E6959930];
  v30[5] = v8;
  v30[6] = *MEMORY[0x1E6959888];
  v9 = MEMORY[0x1E695DEC8];
  v10 = a3;
  v11 = [v9 arrayWithObjects:v30 count:7];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __74__ACAccountStore_DeviceManagementClient__dmc_removeAccounts_asynchronous___block_invoke;
  v27[3] = &unk_1E7ADC2F8;
  v20 = v11;
  v28 = v20;
  v12 = [v10 sortedArrayUsingComparator:v27];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = v12;
  v13 = [obj countByEnumeratingWithState:&v23 objects:v29 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v24;
    do
    {
      v16 = 0;
      do
      {
        if (*v24 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v23 + 1) + 8 * v16);
        _dmc_workerQueue = [self _dmc_workerQueue];
        v22[0] = MEMORY[0x1E69E9820];
        v22[1] = 3221225472;
        v22[2] = __74__ACAccountStore_DeviceManagementClient__dmc_removeAccounts_asynchronous___block_invoke_2;
        v22[3] = &unk_1E7ADC348;
        v22[4] = v17;
        v22[5] = self;
        [_dmc_workerQueue queueBlock:v22];

        if ((a4 & 1) == 0)
        {
          _dmc_workerQueue2 = [self _dmc_workerQueue];
          [_dmc_workerQueue2 waitUntilAllBlocksAreFinished];
        }

        ++v16;
      }

      while (v14 != v16);
      v14 = [obj countByEnumeratingWithState:&v23 objects:v29 count:16];
    }

    while (v14);
  }
}

- (DMCHangDetectionQueue)_dmc_workerQueue
{
  v4 = objc_getAssociatedObject(self, a2);
  if (!v4)
  {
    v4 = [[DMCHangDetectionQueue alloc] initWithQoS:-1 hangThreshold:@"ACAccountStore+DMC" owner:65.0];
    objc_setAssociatedObject(self, a2, v4, 1);
  }

  return v4;
}

@end