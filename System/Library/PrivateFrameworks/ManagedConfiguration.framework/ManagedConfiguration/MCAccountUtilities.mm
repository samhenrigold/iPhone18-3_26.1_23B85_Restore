@interface MCAccountUtilities
+ (BOOL)hasManagedAccountOfDataclasses:(id)dataclasses;
+ (id)accountDataclassesForBundleID:(id)d;
+ (id)appStoreAccountIdentifierForPersona:(id)persona;
+ (void)checkAccountConsistencyAndReleaseOrphanedAccounts;
- (MCAccountUtilities)init;
@end

@implementation MCAccountUtilities

- (MCAccountUtilities)init
{
  v6.receiver = self;
  v6.super_class = MCAccountUtilities;
  v2 = [(MCAccountUtilities *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("MCAccountUtilities queue", 0);
    signInQueue = v2->_signInQueue;
    v2->_signInQueue = v3;
  }

  return v2;
}

+ (void)checkAccountConsistencyAndReleaseOrphanedAccounts
{
  v66 = *MEMORY[0x1E69E9840];
  v2 = +[MCManifest sharedManifest];
  allInstalledProfileIdentifiers = [v2 allInstalledProfileIdentifiers];
  [MEMORY[0x1E6959A48] defaultStore];
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v47 = v56 = 0u;
  obj = [v47 accounts];
  v4 = [obj countByEnumeratingWithState:&v53 objects:v65 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v54;
    v46 = *MEMORY[0x1E69597A0];
    *&v5 = 138543874;
    v43 = v5;
    v44 = v2;
    v45 = allInstalledProfileIdentifiers;
    v48 = *v54;
    do
    {
      v8 = 0;
      v49 = v6;
      do
      {
        if (*v54 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v53 + 1) + 8 * v8);
        mcConfigurationProfileIdentifier = [v9 mcConfigurationProfileIdentifier];
        v11 = MCMailAccountManagedTag();
        v12 = [v9 accountPropertyForKey:v11];

        if (mcConfigurationProfileIdentifier | v12)
        {
          mcProfileUUID = [v9 mcProfileUUID];
          mcPayloadUUID = [v9 mcPayloadUUID];
          if (mcConfigurationProfileIdentifier)
          {
            if ([allInstalledProfileIdentifiers containsObject:mcConfigurationProfileIdentifier])
            {
              v15 = [v2 installedProfileWithIdentifier:mcConfigurationProfileIdentifier];
              uUID = [v15 UUID];
              v17 = [uUID isEqualToString:mcProfileUUID];

              if (v17)
              {
                v18 = [v15 payloadWithUUID:mcPayloadUUID];
                if (v18)
                {

                  allInstalledProfileIdentifiers = v45;
LABEL_33:

                  v7 = v48;
                  v6 = v49;
                  goto LABEL_34;
                }

                v32 = _MCLogObjects;
                if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
                {
                  v29 = v32;
                  identifier = [v9 identifier];
                  *buf = v43;
                  v58 = identifier;
                  v59 = 2114;
                  v60 = mcConfigurationProfileIdentifier;
                  v61 = 2114;
                  v62 = mcPayloadUUID;
                  _os_log_impl(&dword_1A795B000, v29, OS_LOG_TYPE_ERROR, "Found account (%{public}@) with installed profile identifier (%{public}@) whose payload UUID (%{public}@) does not match any payload in that profile", buf, 0x20u);
LABEL_23:
                }
              }

              else
              {
                v28 = _MCLogObjects;
                if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
                {
                  v29 = v28;
                  identifier = [v9 identifier];
                  uUID2 = [v15 UUID];
                  *buf = 138544130;
                  v58 = identifier;
                  v59 = 2114;
                  v60 = mcConfigurationProfileIdentifier;
                  v61 = 2114;
                  v62 = mcProfileUUID;
                  v63 = 2114;
                  v64 = uUID2;
                  _os_log_impl(&dword_1A795B000, v29, OS_LOG_TYPE_ERROR, "Found account (%{public}@) with installed profile identifier (%{public}@) whose UUID (%{public}@) does not match that of the profile (%{public}@)", buf, 0x2Au);

                  v2 = v44;
                  goto LABEL_23;
                }
              }

              allInstalledProfileIdentifiers = v45;
LABEL_25:
              v33 = _MCLogObjects;
              if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEFAULT))
              {
                v34 = v33;
                identifier2 = [v9 identifier];
                *buf = 138543362;
                v58 = identifier2;
                _os_log_impl(&dword_1A795B000, v34, OS_LOG_TYPE_DEFAULT, "Removing profile information from account %{public}@", buf, 0xCu);
              }

              [v9 setMcProfileUUID:0];
              [v9 setMcPayloadUUID:0];
              [v9 setMcConfigurationProfileIdentifier:0];
              [v9 setManagingSourceName:0];
              [v9 setManagingOwnerIdentifier:0];
              [v9 setAccountProperty:0 forKey:v46];
              v36 = MCMailAccountManagedTag();
              [v9 setAccountProperty:0 forKey:v36];

              v37 = _MCLogObjects;
              if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEFAULT))
              {
                v38 = v37;
                identifier3 = [v9 identifier];
                *buf = 138543362;
                v58 = identifier3;
                _os_log_impl(&dword_1A795B000, v38, OS_LOG_TYPE_DEFAULT, "Saving account %{public}@...", buf, 0xCu);
              }

              v40 = dispatch_semaphore_create(0);
              v51[0] = MEMORY[0x1E69E9820];
              v51[1] = 3221225472;
              v51[2] = __71__MCAccountUtilities_checkAccountConsistencyAndReleaseOrphanedAccounts__block_invoke;
              v51[3] = &unk_1E77D2CB0;
              v51[4] = v9;
              v15 = v40;
              v52 = v15;
              [v47 saveVerifiedAccount:v9 withCompletionHandler:v51];
              v41 = dispatch_time(0, 120000000000);
              if (dispatch_semaphore_wait(v15, v41))
              {
                v42 = _MCLogObjects;
                if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&dword_1A795B000, v42, OS_LOG_TYPE_DEFAULT, "Timed out waiting for account to save; moving on...", buf, 2u);
                }
              }

              goto LABEL_33;
            }

            v27 = _MCLogObjects;
            if (!os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_25;
            }

            v23 = v27;
            identifier4 = [v9 identifier];
            *buf = 138543618;
            v58 = identifier4;
            v59 = 2114;
            v60 = mcConfigurationProfileIdentifier;
            v25 = v23;
            v26 = "Found account (%{public}@) with uninstalled profile identifier (%{public}@)";
          }

          else
          {
            v22 = _MCLogObjects;
            if (!os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_25;
            }

            v23 = v22;
            identifier4 = [v9 identifier];
            *buf = 138543618;
            v58 = identifier4;
            v59 = 2114;
            v60 = v12;
            v25 = v23;
            v26 = "Found account (%{public}@) with just a managed tag  (%{public}@)";
          }

          _os_log_impl(&dword_1A795B000, v25, OS_LOG_TYPE_ERROR, v26, buf, 0x16u);

          goto LABEL_25;
        }

        v19 = _MCLogObjects;
        if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEBUG))
        {
          v20 = v19;
          identifier5 = [v9 identifier];
          *buf = 138543362;
          v58 = identifier5;
          _os_log_impl(&dword_1A795B000, v20, OS_LOG_TYPE_DEBUG, "Skipping unmanaged account with identifier: %{public}@", buf, 0xCu);
        }

LABEL_34:

        ++v8;
      }

      while (v6 != v8);
      v6 = [obj countByEnumeratingWithState:&v53 objects:v65 count:16];
    }

    while (v6);
  }
}

void __71__MCAccountUtilities_checkAccountConsistencyAndReleaseOrphanedAccounts__block_invoke(uint64_t a1, int a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = _MCLogObjects;
  if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = v6;
    v9 = [v7 identifier];
    v10 = v9;
    v11 = @"OK";
    if (!a2)
    {
      v11 = v5;
    }

    v12 = 138543618;
    v13 = v9;
    v14 = 2114;
    v15 = v11;
    _os_log_impl(&dword_1A795B000, v8, OS_LOG_TYPE_DEFAULT, "Save account %{public}@ completed: %{public}@", &v12, 0x16u);
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

+ (id)accountDataclassesForBundleID:(id)d
{
  v14[1] = *MEMORY[0x1E69E9840];
  dCopy = d;
  if (([dCopy isEqualToString:@"com.apple.mobilemail"] & 1) != 0 || objc_msgSend(dCopy, "isEqualToString:", @"com.apple.MailCompositionService"))
  {
    v14[0] = *MEMORY[0x1E6959B28];
    v4 = MEMORY[0x1E695DEC8];
    v5 = v14;
LABEL_4:
    v6 = 1;
LABEL_5:
    v7 = [v4 arrayWithObjects:v5 count:v6];
    goto LABEL_6;
  }

  if ([dCopy isEqualToString:@"com.apple.mobilecal"])
  {
    v13 = *MEMORY[0x1E6959AE0];
    v4 = MEMORY[0x1E695DEC8];
    v5 = &v13;
    goto LABEL_4;
  }

  if ([dCopy isEqualToString:@"com.apple.mobilenotes"])
  {
    v12 = *MEMORY[0x1E6959B40];
    v4 = MEMORY[0x1E695DEC8];
    v5 = &v12;
    goto LABEL_4;
  }

  if ([dCopy isEqualToString:@"com.apple.reminders"])
  {
    v11 = *MEMORY[0x1E6959B48];
    v4 = MEMORY[0x1E695DEC8];
    v5 = &v11;
    goto LABEL_4;
  }

  if (([dCopy isEqualToString:@"com.apple.MobileAddressBook"] & 1) != 0 || objc_msgSend(dCopy, "isEqualToString:", @"com.apple.mobilephone"))
  {
    v9 = *MEMORY[0x1E6959AF8];
    v10[0] = *MEMORY[0x1E6959AF0];
    v10[1] = v9;
    v4 = MEMORY[0x1E695DEC8];
    v5 = v10;
    v6 = 2;
    goto LABEL_5;
  }

  v7 = 0;
LABEL_6:

  return v7;
}

+ (id)appStoreAccountIdentifierForPersona:(id)persona
{
  v30[1] = *MEMORY[0x1E69E9840];
  personaCopy = persona;
  if (personaCopy)
  {
    defaultStore = [MEMORY[0x1E6959A48] defaultStore];
    v30[0] = *MEMORY[0x1E6959930];
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:1];
    v24 = 0;
    v6 = [defaultStore accountsWithAccountTypeIdentifiers:v5 preloadedProperties:0 error:&v24];
    v19 = v24;

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v20 objects:v29 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v21;
      v11 = *MEMORY[0x1E69597A0];
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v21 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v13 = *(*(&v20 + 1) + 8 * i);
          v14 = [v13 objectForKeyedSubscript:v11];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && [v14 isEqualToString:personaCopy])
          {
            ams_DSID = [v13 ams_DSID];
            v17 = _MCLogObjects;
            if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543618;
              v26 = personaCopy;
              v27 = 2114;
              v28 = ams_DSID;
              _os_log_impl(&dword_1A795B000, v17, OS_LOG_TYPE_DEFAULT, "appStoreAccountIdentifierForPersona FOUND persona:%{public}@ -> accountIdentifier:%{public}@", buf, 0x16u);
            }

            goto LABEL_18;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v20 objects:v29 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v15 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v26 = personaCopy;
      _os_log_impl(&dword_1A795B000, v15, OS_LOG_TYPE_DEFAULT, "appStoreAccountIdentifierForPersona NOT FOUND persona:%{public}@", buf, 0xCu);
    }

    ams_DSID = 0;
LABEL_18:
  }

  else
  {
    ams_DSID = 0;
  }

  return ams_DSID;
}

+ (BOOL)hasManagedAccountOfDataclasses:(id)dataclasses
{
  v30 = *MEMORY[0x1E69E9840];
  dataclassesCopy = dataclasses;
  if (dataclassesCopy)
  {
    v4 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      v29 = dataclassesCopy;
      _os_log_impl(&dword_1A795B000, v4, OS_LOG_TYPE_DEBUG, "Checking for managed accounts that have one of these dataclasses: %{public}@", buf, 0xCu);
    }

    v22 = dataclassesCopy;
    v5 = [MEMORY[0x1E695DFD8] setWithArray:dataclassesCopy];
    defaultStore = [MEMORY[0x1E6959A48] defaultStore];
    [defaultStore accounts];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v6 = v26 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v24;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v24 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v23 + 1) + 8 * i);
          enabledDataclasses = [v11 enabledDataclasses];
          if ([enabledDataclasses intersectsSet:v5])
          {
            v13 = [v11 accountPropertyForKey:@"MCAccountIsManaged"];
            bOOLValue = [v13 BOOLValue];

            if (bOOLValue)
            {
              v17 = _MCLogObjects;
              if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEBUG))
              {
                v18 = v17;
                identifier = [v11 identifier];
                *buf = 138543362;
                v29 = identifier;
                _os_log_impl(&dword_1A795B000, v18, OS_LOG_TYPE_DEBUG, "Account %{public}@ found.", buf, 0xCu);
              }

              v16 = 1;
              goto LABEL_20;
            }
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v15 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_1A795B000, v15, OS_LOG_TYPE_DEBUG, "No account found.", buf, 2u);
    }

    v16 = 0;
LABEL_20:
    dataclassesCopy = v22;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

@end