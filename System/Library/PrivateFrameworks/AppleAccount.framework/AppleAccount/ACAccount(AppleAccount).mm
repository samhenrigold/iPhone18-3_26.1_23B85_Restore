@interface ACAccount(AppleAccount)
- (AARegionInfo)aa_regionInfo;
- (AASuspensionInfo)aa_suspensionInfo;
- (BOOL)_hasMailDataclassProperties;
- (BOOL)aa_isAuthKitAccount;
- (BOOL)aa_isRemotelyManaged;
- (BOOL)aa_isUsingiCloud;
- (BOOL)aa_updateAccountClassIfNecessary;
- (BOOL)aa_updateTokensWithProvisioningResponse:()AppleAccount;
- (__CFString)aa_accountClass;
- (id)_aa_rawPassword;
- (id)aa_authToken;
- (id)aa_authTokenWithError:()AppleAccount;
- (id)aa_childMailAccount;
- (id)aa_cloudKitAccount;
- (id)aa_fetchUserAcknowledgementForAgeMigrationAlertForAllBundleIDs;
- (id)aa_fetchUserAcknowledgementForAgeMigrationAlertForBundleID:()AppleAccount;
- (id)aa_fmfAccount;
- (id)aa_fmipAccount;
- (id)aa_fmipToken;
- (id)aa_formattedUsername;
- (id)aa_fullName;
- (id)aa_mapsToken;
- (id)aa_mdmServerToken;
- (id)aa_normalizedPersonID;
- (id)aa_password;
- (id)aa_pendingDOB;
- (id)aa_personID;
- (id)aa_repairState;
- (uint64_t)_aa_isExistingAccount:()AppleAccount;
- (uint64_t)_dataclassIsDisabledForProperties:()AppleAccount;
- (uint64_t)aa_ageCategory;
- (uint64_t)aa_allowUnlimitedUpdatesForDataclass:()AppleAccount;
- (uint64_t)aa_clearUserAcknowledgeMigrationAlertForAllBundles;
- (uint64_t)aa_hasDuplicateAccount;
- (uint64_t)aa_hasOptionalTerms;
- (uint64_t)aa_hsaTokenWithError:()AppleAccount;
- (uint64_t)aa_isAccountClass:()AppleAccount;
- (uint64_t)aa_isCloudDocsMigrationComplete;
- (uint64_t)aa_isCloudSubscriber;
- (uint64_t)aa_isDuplicateAccount:()AppleAccount;
- (uint64_t)aa_isFamilyEligible;
- (uint64_t)aa_isManagedAppleID;
- (uint64_t)aa_isNotesMigrated;
- (uint64_t)aa_isPrimaryAccount;
- (uint64_t)aa_isPrimaryEmailVerified;
- (uint64_t)aa_isProtoAccount;
- (uint64_t)aa_isRemindersAutoMigratableToCK;
- (uint64_t)aa_isRemindersMigrated;
- (uint64_t)aa_isSandboxAccount;
- (uint64_t)aa_isSuspended;
- (uint64_t)aa_isUsingCloudDocs;
- (uint64_t)aa_needsToVerifyTerms;
- (uint64_t)aa_serverDisabledDataclass:()AppleAccount;
- (uint64_t)aa_setPrimaryAccount:()AppleAccount;
- (uint64_t)aa_useCellularForDataclass:()AppleAccount;
- (void)_aa_clearRawPassword;
- (void)_aa_setAltDSID:()AppleAccount;
- (void)_aa_setAppleID:()AppleAccount;
- (void)_aa_setPrimaryEmail:()AppleAccount;
- (void)_aa_setRawPassword:()AppleAccount;
- (void)aa_clearUserAcknowledgeMigrationAlertForAllBundles;
- (void)aa_fetchUserAcknowledgementForAgeMigrationAlertForAllBundleIDs;
- (void)aa_hasDuplicateAccount;
- (void)aa_isChildProtoAccount;
- (void)aa_isPrimaryAccount;
- (void)aa_isTeenProtoAccount;
- (void)aa_needsEmailConfiguration;
- (void)aa_saveUserAcknowledgementForAgeMigrationAlertForBundleID:()AppleAccount actionDetails:;
- (void)aa_setAccountClass:()AppleAccount;
- (void)aa_setAllowUnlimitedUpdates:()AppleAccount forDataclass:;
- (void)aa_setAuthToken:()AppleAccount;
- (void)aa_setCloudDocsMigrationComplete:()AppleAccount;
- (void)aa_setFirstName:()AppleAccount;
- (void)aa_setIsCloudSubscriber:()AppleAccount;
- (void)aa_setLastName:()AppleAccount;
- (void)aa_setMDMServerToken:()AppleAccount;
- (void)aa_setMapsToken:()AppleAccount;
- (void)aa_setMiddleName:()AppleAccount;
- (void)aa_setNeedsToVerifyTerms:()AppleAccount;
- (void)aa_setPassword:()AppleAccount;
- (void)aa_setPendingDOB:()AppleAccount;
- (void)aa_setPrimaryEmailVerified:()AppleAccount;
- (void)aa_setRepairState:()AppleAccount;
- (void)aa_setUseCellular:()AppleAccount forDataclass:;
- (void)aa_setUsesCloudDocs:()AppleAccount;
- (void)aa_updateWithProvisioningResponse:()AppleAccount;
@end

@implementation ACAccount(AppleAccount)

- (__CFString)aa_accountClass
{
  objc_opt_class();
  v2 = [self objectForKeyedSubscript:@"accountClass"];
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    v4 = v3;
  }

  else
  {
    objc_opt_class();
    v5 = [self objectForKeyedSubscript:@"primaryAccount"];
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    bOOLValue = [v6 BOOLValue];
    v8 = @"basic";
    if (bOOLValue)
    {
      v8 = @"primary";
    }

    v4 = v8;
  }

  return v4;
}

- (id)aa_personID
{
  v1 = [self accountPropertyForKey:@"personID"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    stringValue = [v1 stringValue];
  }

  else
  {
    stringValue = v1;
  }

  v3 = stringValue;

  return v3;
}

- (id)aa_fmfAccount
{
  v1 = [self childAccountsWithAccountTypeIdentifier:*MEMORY[0x1E6959850]];
  firstObject = [v1 firstObject];

  return firstObject;
}

- (AASuspensionInfo)aa_suspensionInfo
{
  parentAccount = [self parentAccount];

  if (parentAccount)
  {
    parentAccount2 = [self parentAccount];
    aa_suspensionInfo = [parentAccount2 aa_suspensionInfo];
LABEL_8:
    v6 = aa_suspensionInfo;
    goto LABEL_9;
  }

  objc_opt_class();
  v5 = [self accountPropertyForKey:@"suspendedInfo"];
  if (objc_opt_isKindOfClass())
  {
    parentAccount2 = v5;
  }

  else
  {
    parentAccount2 = 0;
  }

  if (parentAccount2)
  {
    aa_suspensionInfo = [[AASuspensionInfo alloc] initWithDictionary:parentAccount2];
    goto LABEL_8;
  }

  v6 = 0;
LABEL_9:

  return v6;
}

- (uint64_t)aa_needsToVerifyTerms
{
  parentAccount = [self parentAccount];

  if (parentAccount)
  {
    parentAccount2 = [self parentAccount];
    aa_needsToVerifyTerms = [parentAccount2 aa_needsToVerifyTerms];
  }

  else
  {
    parentAccount2 = [self accountPropertyForKey:@"needsToVerifyTerms"];
    aa_needsToVerifyTerms = [parentAccount2 BOOLValue];
  }

  v5 = aa_needsToVerifyTerms;

  return v5;
}

- (uint64_t)aa_isSuspended
{
  aa_suspensionInfo = [self aa_suspensionInfo];
  if (aa_suspensionInfo)
  {
    aa_needsToVerifyTerms = 1;
  }

  else
  {
    aa_needsToVerifyTerms = [self aa_needsToVerifyTerms];
  }

  return aa_needsToVerifyTerms;
}

- (id)aa_fmipAccount
{
  v1 = [self childAccountsWithAccountTypeIdentifier:*MEMORY[0x1E6959838]];
  firstObject = [v1 firstObject];

  return firstObject;
}

- (uint64_t)aa_isManagedAppleID
{
  v1 = [self accountPropertyForKey:@"isManagedAppleID"];
  bOOLValue = [v1 BOOLValue];

  return bOOLValue;
}

- (id)aa_cloudKitAccount
{
  v1 = [self childAccountsWithAccountTypeIdentifier:*MEMORY[0x1E6959828]];
  firstObject = [v1 firstObject];

  return firstObject;
}

- (uint64_t)aa_isPrimaryEmailVerified
{
  v1 = [self accountPropertyForKey:@"primaryEmailVerified"];
  bOOLValue = [v1 BOOLValue];

  return bOOLValue;
}

- (id)aa_authToken
{
  credential = [self credential];
  token = [credential token];

  return token;
}

- (id)aa_formattedUsername
{
  v1 = MEMORY[0x1E698DE10];
  username = [self username];
  v3 = [v1 formattedUsernameFromUsername:username];

  return v3;
}

- (void)aa_setFirstName:()AppleAccount
{
  v4 = [a3 copy];
  [self setAccountProperty:v4 forKey:@"firstName"];
}

- (void)aa_setMiddleName:()AppleAccount
{
  v4 = [a3 copy];
  [self setAccountProperty:v4 forKey:@"middleName"];
}

- (void)aa_setLastName:()AppleAccount
{
  v4 = [a3 copy];
  [self setAccountProperty:v4 forKey:@"lastName"];
}

- (id)aa_fullName
{
  v2 = objc_alloc_init(MEMORY[0x1E696ADF0]);
  aa_firstName = [self aa_firstName];
  [v2 setGivenName:aa_firstName];

  aa_lastName = [self aa_lastName];
  [v2 setFamilyName:aa_lastName];

  v5 = [MEMORY[0x1E696ADF8] localizedStringFromPersonNameComponents:v2 style:2 options:0];
  if (![v5 length])
  {
    v6 = [self accountPropertyForKey:*MEMORY[0x1E6959758]];

    v5 = v6;
  }

  return v5;
}

- (AARegionInfo)aa_regionInfo
{
  v1 = [self accountPropertyForKey:@"regionInfo"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [[AARegionInfo alloc] initWithDictionary:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)aa_normalizedPersonID
{
  v2 = [self accountPropertyForKey:*MEMORY[0x1E698C210]];
  if (!v2)
  {
    goto LABEL_5;
  }

  v3 = v2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_10;
  }

  stringValue = [v3 stringValue];

  if (stringValue)
  {
    v3 = stringValue;
  }

  else
  {
LABEL_5:
    accountType = [self accountType];
    identifier = [accountType identifier];
    v7 = [identifier isEqualToString:*MEMORY[0x1E69598B0]];

    if (!v7 || ([self accountPropertyForKey:@"profile-id"], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "stringByReplacingOccurrencesOfString:withString:", @"D:", &stru_1F2EF6280), v3 = objc_claimAutoreleasedReturnValue(), v8, !v3))
    {
      accountType2 = [self accountType];
      identifier2 = [accountType2 identifier];
      v11 = [identifier2 isEqualToString:*MEMORY[0x1E69597F8]];

      if (v11)
      {
        v3 = [self accountPropertyForKey:@"personID"];
      }

      else
      {
        v3 = 0;
      }
    }
  }

LABEL_10:

  return v3;
}

- (uint64_t)aa_isPrimaryAccount
{
  aa_accountClass = [self aa_accountClass];
  if (aa_accountClass)
  {
    bOOLValue = [self aa_isAccountClass:@"primary"];
  }

  else
  {
    v4 = _AALogSystem(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [ACAccount(AppleAccount) aa_isPrimaryAccount];
    }

    objc_opt_class();
    v5 = [self objectForKeyedSubscript:@"primaryAccount"];
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    bOOLValue = [v6 BOOLValue];
  }

  return bOOLValue;
}

- (uint64_t)aa_setPrimaryAccount:()AppleAccount
{
  if (a3)
  {
    v4 = @"primary";
  }

  else if (+[AAPreferences isMultipleFullAccountsEnabled])
  {
    v4 = @"full";
  }

  else
  {
    v4 = @"basic";
  }

  return [self aa_setAccountClass:v4];
}

- (uint64_t)aa_isAccountClass:()AppleAccount
{
  v4 = a3;
  aa_accountClass = [self aa_accountClass];
  v6 = [aa_accountClass isEqualToString:v4];

  return v6;
}

- (void)aa_setAccountClass:()AppleAccount
{
  v5 = a3;
  accountType = [self accountType];
  identifier = [accountType identifier];
  v8 = [identifier isEqualToString:*MEMORY[0x1E69597F8]];

  if ((v8 & 1) == 0)
  {
    [(ACAccount(AppleAccount) *)a2 aa_setAccountClass:self];
  }

  v10 = _AALogSystem(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [ACAccount(AppleAccount) aa_setAccountClass:];
  }

  [self setObject:v5 forKeyedSubscript:@"accountClass"];
  v11 = [v5 isEqualToString:@"primary"];
  v12 = [MEMORY[0x1E696AD98] numberWithBool:v11];
  [self setObject:v12 forKeyedSubscript:@"primaryAccount"];
}

- (BOOL)aa_updateAccountClassIfNecessary
{
  objc_opt_class();
  v2 = [self objectForKeyedSubscript:@"accountClass"];
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  if (!v3)
  {
    objc_opt_class();
    v4 = [self objectForKeyedSubscript:@"primaryAccount"];
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    bOOLValue = [v5 BOOLValue];
    v8 = _AALogSystem(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [ACAccount(AppleAccount) aa_updateAccountClassIfNecessary];
    }

    if (bOOLValue)
    {
      v9 = @"primary";
    }

    else
    {
      v9 = @"basic";
    }

    [self setObject:v9 forKeyedSubscript:@"accountClass"];
  }

  return v3 == 0;
}

- (void)aa_setPrimaryEmailVerified:()AppleAccount
{
  v2 = [MEMORY[0x1E696AD98] numberWithBool:?];
  [self setAccountProperty:v2 forKey:@"primaryEmailVerified"];
}

- (void)aa_setNeedsToVerifyTerms:()AppleAccount
{
  parentAccount = [self parentAccount];

  if (parentAccount)
  {
    parentAccount2 = [self parentAccount];
    [parentAccount2 aa_setNeedsToVerifyTerms:a3];
  }

  else
  {
    parentAccount2 = [MEMORY[0x1E696AD98] numberWithBool:a3];
    [self setAccountProperty:? forKey:?];
  }
}

- (uint64_t)aa_isUsingCloudDocs
{
  v1 = [self accountPropertyForKey:@"usesCloudDocs"];
  bOOLValue = [v1 BOOLValue];

  return bOOLValue;
}

- (void)aa_setUsesCloudDocs:()AppleAccount
{
  v2 = [MEMORY[0x1E696AD98] numberWithBool:?];
  [self setAccountProperty:v2 forKey:@"usesCloudDocs"];
}

- (uint64_t)aa_isCloudSubscriber
{
  v1 = [self accountPropertyForKey:@"isCloudSubscriber"];
  bOOLValue = [v1 BOOLValue];

  return bOOLValue;
}

- (void)aa_setIsCloudSubscriber:()AppleAccount
{
  v2 = [MEMORY[0x1E696AD98] numberWithBool:?];
  [self setAccountProperty:v2 forKey:@"isCloudSubscriber"];
}

- (uint64_t)aa_isCloudDocsMigrationComplete
{
  v1 = [self accountPropertyForKey:@"cloudDocsMigrationComplete"];
  bOOLValue = [v1 BOOLValue];

  return bOOLValue;
}

- (void)aa_setCloudDocsMigrationComplete:()AppleAccount
{
  v2 = [MEMORY[0x1E696AD98] numberWithBool:?];
  [self setAccountProperty:v2 forKey:@"cloudDocsMigrationComplete"];
}

- (BOOL)aa_isUsingiCloud
{
  enabledDataclasses = [self enabledDataclasses];
  v2 = [enabledDataclasses count] != 0;

  return v2;
}

- (BOOL)aa_isRemotelyManaged
{
  v1 = [self accountPropertyForKey:*MEMORY[0x1E69597B0]];
  v2 = v1 != 0;

  return v2;
}

- (uint64_t)aa_isNotesMigrated
{
  v1 = [self accountPropertyForKey:@"notesMigrated"];
  bOOLValue = [v1 BOOLValue];

  return bOOLValue;
}

- (uint64_t)aa_isRemindersMigrated
{
  v1 = [self accountPropertyForKey:@"remindersMigrated"];
  bOOLValue = [v1 BOOLValue];

  return bOOLValue;
}

- (uint64_t)aa_isRemindersAutoMigratableToCK
{
  v1 = [self accountPropertyForKey:@"remindersAutoMigratableToCK"];
  bOOLValue = [v1 BOOLValue];

  return bOOLValue;
}

- (uint64_t)aa_isSandboxAccount
{
  v1 = [self accountPropertyForKey:@"isSandboxAcct"];
  bOOLValue = [v1 BOOLValue];

  return bOOLValue;
}

- (BOOL)aa_isAuthKitAccount
{
  accountType = [self accountType];
  identifier = [accountType identifier];
  v3 = [identifier compare:*MEMORY[0x1E6959888] options:4] == 0;

  return v3;
}

- (uint64_t)aa_hasOptionalTerms
{
  v1 = [self objectForKeyedSubscript:@"hasOptionalTerms"];
  bOOLValue = [v1 BOOLValue];

  return bOOLValue;
}

- (id)aa_repairState
{
  parentAccount = [self parentAccount];

  if (parentAccount)
  {
    parentAccount2 = [self parentAccount];
    aa_repairState = [parentAccount2 aa_repairState];
  }

  else
  {
    aa_repairState = [self accountPropertyForKey:@"repairState"];
  }

  return aa_repairState;
}

- (void)aa_setRepairState:()AppleAccount
{
  v6 = a3;
  parentAccount = [self parentAccount];

  if (parentAccount)
  {
    parentAccount2 = [self parentAccount];
    [parentAccount2 aa_setRepairState:v6];
  }

  else
  {
    [self setAccountProperty:v6 forKey:@"repairState"];
  }
}

- (void)aa_needsEmailConfiguration
{
  result = [self isProvisionedForDataclass:*MEMORY[0x1E6959B28]];
  if (result)
  {
    aa_childMailAccount = [self aa_childMailAccount];

    if (aa_childMailAccount)
    {
      return 0;
    }

    else
    {
      return ([self _hasMailDataclassProperties] ^ 1);
    }
  }

  return result;
}

- (uint64_t)aa_serverDisabledDataclass:()AppleAccount
{
  v4 = a3;
  if ([self aa_isManagedAppleID] && (objc_msgSend(self, "dataclassProperties"), v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    dataclassProperties = [self dataclassProperties];
    v7 = [dataclassProperties objectForKeyedSubscript:v4];
    v8 = [self _dataclassIsDisabledForProperties:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (uint64_t)_dataclassIsDisabledForProperties:()AppleAccount
{
  v3 = [a3 objectForKeyedSubscript:@"status"];
  v4 = [v3 isEqualToString:@"disabled"];

  return v4;
}

- (BOOL)_hasMailDataclassProperties
{
  v1 = [self propertiesForDataclass:*MEMORY[0x1E6959B28]];
  v2 = v1;
  if (v1)
  {
    allKeys = [v1 allKeys];
    v4 = [allKeys count] != 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (uint64_t)aa_isFamilyEligible
{
  v1 = [self accountPropertyForKey:@"familyEligible"];
  bOOLValue = [v1 BOOLValue];

  return bOOLValue;
}

- (uint64_t)aa_ageCategory
{
  v1 = [self accountPropertyForKey:@"ageCategory"];
  integerValue = [v1 integerValue];

  return integerValue;
}

- (id)aa_pendingDOB
{
  v2 = objc_opt_new();
  ageMigrationFeatureEnabled = [v2 ageMigrationFeatureEnabled];

  if (ageMigrationFeatureEnabled)
  {
    v4 = [self accountPropertyForKey:@"pendingDOB"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)aa_setPendingDOB:()AppleAccount
{
  v6 = a3;
  v4 = objc_opt_new();
  ageMigrationFeatureEnabled = [v4 ageMigrationFeatureEnabled];

  if (ageMigrationFeatureEnabled)
  {
    [self setAccountProperty:v6 forKey:@"pendingDOB"];
  }
}

- (id)aa_childMailAccount
{
  if ([self isProvisionedForDataclass:*MEMORY[0x1E6959B28]])
  {
    v2 = [self childAccountsWithAccountTypeIdentifier:*MEMORY[0x1E6959898]];
    firstObject = [v2 firstObject];
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

- (id)aa_password
{
  credential = [self credential];
  password = [credential password];

  return password;
}

- (void)aa_setPassword:()AppleAccount
{
  v9 = a3;
  credential = [self credential];
  password = [credential password];
  v6 = [v9 isEqualToString:password];

  if ((v6 & 1) == 0)
  {
    credential2 = [self credential];

    if (credential2)
    {
      credential3 = [self credential];
      [credential3 setPassword:v9];
    }

    else
    {
      credential3 = [objc_alloc(MEMORY[0x1E6959A30]) initWithPassword:v9];
      [self setCredential:credential3];
    }
  }
}

- (void)aa_setAuthToken:()AppleAccount
{
  v9 = a3;
  credential = [self credential];
  token = [credential token];
  v6 = [v9 isEqualToString:token];

  if ((v6 & 1) == 0)
  {
    credential2 = [self credential];

    if (credential2)
    {
      credential3 = [self credential];
      [credential3 setToken:v9];
    }

    else
    {
      credential3 = objc_alloc_init(MEMORY[0x1E6959A30]);
      [credential3 setToken:v9];
      [self setCredential:credential3];
    }

    [self setAuthenticated:1];
  }
}

- (id)aa_fmipToken
{
  aa_fmipAccount = [self aa_fmipAccount];
  v3 = aa_fmipAccount;
  if (aa_fmipAccount)
  {
    credential = [aa_fmipAccount credential];
    token = [credential token];
  }

  else
  {
    v6 = _AALogSystem(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_1B6F6A000, v6, OS_LOG_TYPE_DEFAULT, "ERROR: Didn't find a child account, returning findMyiPhoneToken", v9, 2u);
    }

    credential = [self credential];
    token = [credential findMyiPhoneToken];
  }

  v7 = token;

  return v7;
}

- (id)aa_mapsToken
{
  credential = [self credential];
  mapsToken = [credential mapsToken];

  return mapsToken;
}

- (void)aa_setMapsToken:()AppleAccount
{
  v4 = a3;
  if (v4)
  {
    v10 = v4;
    credential = [self credential];
    mapsToken = [credential mapsToken];
    v7 = [v10 isEqualToString:mapsToken];

    v4 = v10;
    if ((v7 & 1) == 0)
    {
      credential2 = [self credential];

      if (credential2)
      {
        credential3 = [self credential];
        [credential3 setMapsToken:v10];
      }

      else
      {
        credential3 = objc_alloc_init(MEMORY[0x1E6959A30]);
        [credential3 setMapsToken:v10];
        [self setCredential:credential3];
      }

      v4 = v10;
    }
  }
}

- (id)aa_mdmServerToken
{
  credential = [self credential];
  mdmServerToken = [credential mdmServerToken];

  return mdmServerToken;
}

- (void)aa_setMDMServerToken:()AppleAccount
{
  v4 = a3;
  if (v4)
  {
    v10 = v4;
    credential = [self credential];
    mdmServerToken = [credential mdmServerToken];
    v7 = [v10 isEqualToString:mdmServerToken];

    v4 = v10;
    if ((v7 & 1) == 0)
    {
      credential2 = [self credential];

      if (credential2)
      {
        credential3 = [self credential];
        [credential3 setMdmServerToken:v10];
      }

      else
      {
        credential3 = objc_alloc_init(MEMORY[0x1E6959A30]);
        [credential3 setMdmServerToken:v10];
        [self setCredential:credential3];
      }

      v4 = v10;
    }
  }
}

- (id)aa_authTokenWithError:()AppleAccount
{
  v10 = 0;
  v4 = [self credentialWithError:&v10];
  v5 = v10;
  v6 = v5;
  if (a3 && v5)
  {
    v7 = v5;
    token = 0;
    *a3 = v6;
  }

  else
  {
    token = [v4 token];
  }

  return token;
}

- (uint64_t)aa_hsaTokenWithError:()AppleAccount
{
  v1 = _AALogSystem(self);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    [ACAccount(AppleAccount) aa_hsaTokenWithError:];
  }

  return 0;
}

- (uint64_t)aa_useCellularForDataclass:()AppleAccount
{
  v4 = a3;
  v5 = [self accountPropertyForKey:@"dataclassesDisabledForCellular"];
  v6 = [v5 containsObject:v4];

  return v6 ^ 1u;
}

- (void)aa_setUseCellular:()AppleAccount forDataclass:
{
  v8 = a4;
  v6 = [self accountPropertyForKey:@"dataclassesDisabledForCellular"];
  v7 = [v6 mutableCopy];

  if (!v7)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  if (a3)
  {
    [v7 removeObject:v8];
  }

  else
  {
    [v7 addObject:v8];
  }

  [self setAccountProperty:v7 forKey:@"dataclassesDisabledForCellular"];
}

- (uint64_t)aa_allowUnlimitedUpdatesForDataclass:()AppleAccount
{
  v4 = a3;
  v5 = [self accountPropertyForKey:@"unlimitedUpdates"];
  v6 = [v5 containsObject:v4];

  return v6;
}

- (void)aa_setAllowUnlimitedUpdates:()AppleAccount forDataclass:
{
  v8 = a4;
  v6 = [self accountPropertyForKey:@"unlimitedUpdates"];
  v7 = [v6 mutableCopy];

  if (!v7)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  if (a3)
  {
    [v7 addObject:v8];
  }

  else
  {
    [v7 removeObject:v8];
  }

  [self setAccountProperty:v7 forKey:@"unlimitedUpdates"];
}

- (void)aa_updateWithProvisioningResponse:()AppleAccount
{
  v90 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if (!v5)
  {
    [(ACAccount(AppleAccount) *)a2 aa_updateWithProvisioningResponse:self];
  }

  v7 = _AALogSystem(v5);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    username = [self username];
    *buf = 138412290;
    v89 = username;
    _os_log_impl(&dword_1B6F6A000, v7, OS_LOG_TYPE_DEFAULT, "Updating account %@ with provisioning response.", buf, 0xCu);
  }

  if ([self aa_needsToVerifyTerms])
  {
    [self aa_setNeedsToVerifyTerms:0];
  }

  aa_suspensionInfo = [self aa_suspensionInfo];

  if (aa_suspensionInfo)
  {
    [self setAccountProperty:0 forKey:@"suspendedInfo"];
  }

  altDSID = [v6 altDSID];
  if (altDSID)
  {
    [self setAccountProperty:altDSID forKey:@"altDSID"];
  }

  dataclassProperties = [v6 dataclassProperties];
  [self _aa_setDataclassProperties:dataclassProperties];

  personID = [v6 personID];
  [self setAccountProperty:personID forKey:@"personID"];

  firstName = [v6 firstName];
  [self setAccountProperty:firstName forKey:@"firstName"];

  lastName = [v6 lastName];
  [self setAccountProperty:lastName forKey:@"lastName"];

  primaryEmail = [v6 primaryEmail];
  [self setAccountProperty:primaryEmail forKey:@"primaryEmail"];

  primaryEmailVerified = [v6 primaryEmailVerified];
  [self setAccountProperty:primaryEmailVerified forKey:@"primaryEmailVerified"];

  appleIDAliases = [v6 appleIDAliases];
  [self setAccountProperty:appleIDAliases forKey:@"appleIDAliases"];

  protocolVersion = [v6 protocolVersion];
  [self setAccountProperty:protocolVersion forKey:@"protocolVersion"];

  appleID = [v6 appleID];
  [self setAccountProperty:appleID forKey:@"appleId"];

  regionInfo = [v6 regionInfo];
  [self setAccountProperty:regionInfo forKey:@"regionInfo"];

  v21 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v6, "isManagedAppleID")}];
  [self setAccountProperty:v21 forKey:@"isManagedAppleID"];

  v22 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v6, "isNotesMigrated")}];
  [self setAccountProperty:v22 forKey:@"notesMigrated"];

  v23 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v6, "isRemindersMigrated")}];
  [self setAccountProperty:v23 forKey:@"remindersMigrated"];

  v24 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v6, "isRemindersAutoMigratableToCK")}];
  [self setAccountProperty:v24 forKey:@"remindersAutoMigratableToCK"];

  v25 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v6, "isSandboxAccount")}];
  [self setAccountProperty:v25 forKey:@"isSandboxAcct"];

  v26 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v6, "isCloudDocsMigrated")}];
  [self setAccountProperty:v26 forKey:@"cloudDocsMigrationComplete"];

  v27 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v6, "isCloudDocsMigrated")}];
  [self setAccountProperty:v27 forKey:@"usesCloudDocs"];

  v28 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v6, "hasOptionalTerms")}];
  [self setAccountProperty:v28 forKey:@"hasOptionalTerms"];

  v29 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v6, "isFamilyEligible")}];
  [self setAccountProperty:v29 forKey:@"familyEligible"];

  v30 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v6, "ageCategory")}];
  [self setAccountProperty:v30 forKey:@"ageCategory"];

  v31 = MEMORY[0x1E695DFD8];
  v67 = v6;
  provisionedDataclasses = [v6 provisionedDataclasses];
  v33 = [v31 setWithArray:provisionedDataclasses];

  v34 = +[AADataclassManager sharedManager];
  v35 = [v34 filteredServerProvidedFeatures:v33 forAccount:self];

  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  v36 = v35;
  v37 = [v36 countByEnumeratingWithState:&v80 objects:v87 count:16];
  if (v37)
  {
    v38 = v37;
    v39 = *v81;
    do
    {
      for (i = 0; i != v38; ++i)
      {
        if (*v81 != v39)
        {
          objc_enumerationMutation(v36);
        }

        [self setProvisioned:1 forDataclass:*(*(&v80 + 1) + 8 * i)];
      }

      v38 = [v36 countByEnumeratingWithState:&v80 objects:v87 count:16];
    }

    while (v38);
  }

  v65 = v33;
  v66 = altDSID;

  [self enabledDataclasses];
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v41 = v79 = 0u;
  v42 = [v41 countByEnumeratingWithState:&v76 objects:v86 count:16];
  if (v42)
  {
    v43 = v42;
    v44 = *v77;
    do
    {
      for (j = 0; j != v43; ++j)
      {
        if (*v77 != v44)
        {
          objc_enumerationMutation(v41);
        }

        v46 = *(*(&v76 + 1) + 8 * j);
        v47 = [v36 containsObject:v46];
        if ((v47 & 1) == 0)
        {
          v48 = _AALogSystem(v47);
          if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v89 = v46;
            _os_log_impl(&dword_1B6F6A000, v48, OS_LOG_TYPE_DEFAULT, "Disabling dataclass %@ because it is not provisioned.", buf, 0xCu);
          }

          [self setEnabled:0 forDataclass:v46];
        }
      }

      v43 = [v41 countByEnumeratingWithState:&v76 objects:v86 count:16];
    }

    while (v43);
  }

  provisionedDataclasses2 = [self provisionedDataclasses];
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v50 = [provisionedDataclasses2 countByEnumeratingWithState:&v72 objects:v85 count:16];
  if (v50)
  {
    v51 = v50;
    v52 = *v73;
    do
    {
      for (k = 0; k != v51; ++k)
      {
        if (*v73 != v52)
        {
          objc_enumerationMutation(provisionedDataclasses2);
        }

        v54 = *(*(&v72 + 1) + 8 * k);
        v55 = [v36 containsObject:v54];
        if ((v55 & 1) == 0)
        {
          v56 = _AALogSystem(v55);
          if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v89 = v54;
            _os_log_impl(&dword_1B6F6A000, v56, OS_LOG_TYPE_DEFAULT, "Removing dataclass provisioning %@ because it is not provisioned.", buf, 0xCu);
          }

          [self setProvisioned:0 forDataclass:v54];
        }
      }

      v51 = [provisionedDataclasses2 countByEnumeratingWithState:&v72 objects:v85 count:16];
    }

    while (v51);
  }

  if ([self aa_isManagedAppleID])
  {
    enabledDataclasses = [self enabledDataclasses];

    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v41 = enabledDataclasses;
    v58 = [v41 countByEnumeratingWithState:&v68 objects:v84 count:16];
    if (v58)
    {
      v59 = v58;
      v60 = *v69;
      do
      {
        for (m = 0; m != v59; ++m)
        {
          if (*v69 != v60)
          {
            objc_enumerationMutation(v41);
          }

          v62 = *(*(&v68 + 1) + 8 * m);
          v63 = [self aa_serverDisabledDataclass:v62];
          if (v63)
          {
            v64 = _AALogSystem(v63);
            if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v89 = v62;
              _os_log_impl(&dword_1B6F6A000, v64, OS_LOG_TYPE_DEFAULT, "Disabling dataclass %@ because it has been restricted by the server.", buf, 0xCu);
            }

            [self setEnabled:0 forDataclass:v62];
          }
        }

        v59 = [v41 countByEnumeratingWithState:&v68 objects:v84 count:16];
      }

      while (v59);
    }
  }

  [self aa_updateTokensWithProvisioningResponse:v67];
}

- (BOOL)aa_updateTokensWithProvisioningResponse:()AppleAccount
{
  v4 = a3;
  authToken = [v4 authToken];
  v6 = authToken != 0;
  if (authToken)
  {
    [self aa_setAuthToken:authToken];
  }

  v56 = authToken;
  mapsToken = [v4 mapsToken];
  v8 = mapsToken;
  if (mapsToken)
  {
    v9 = _AALogSystem(mapsToken);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B6F6A000, v9, OS_LOG_TYPE_DEFAULT, "Saving the Maps token", buf, 2u);
    }

    [self aa_setMapsToken:v8];
    v6 = 1;
  }

  mdmServerToken = [v4 mdmServerToken];
  v11 = mdmServerToken;
  if (mdmServerToken)
  {
    v12 = _AALogSystem(mdmServerToken);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B6F6A000, v12, OS_LOG_TYPE_DEFAULT, "Saving the MDM Server token", buf, 2u);
    }

    [self aa_setMDMServerToken:v11];
    v6 = 1;
  }

  searchPartyToken = [v4 searchPartyToken];
  v14 = searchPartyToken;
  if (searchPartyToken)
  {
    v15 = _AALogSystem(searchPartyToken);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B6F6A000, v15, OS_LOG_TYPE_DEFAULT, "Setting SearchParty token...", buf, 2u);
    }

    credential = [self credential];
    [credential setCredentialItem:v14 forKey:*MEMORY[0x1E6959A08]];

    v6 = 1;
  }

  v53 = v14;
  v54 = v11;
  v55 = v8;
  keyTransparencyToken = [v4 keyTransparencyToken];
  v18 = keyTransparencyToken;
  if (keyTransparencyToken)
  {
    v19 = _AALogSystem(keyTransparencyToken);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B6F6A000, v19, OS_LOG_TYPE_DEFAULT, "Setting KeyTransparency token...", buf, 2u);
    }

    credential2 = [self credential];
    [credential2 setCredentialItem:v18 forKey:*MEMORY[0x1E69599A8]];

    v6 = 1;
  }

  cloudKitToken = [v4 cloudKitToken];
  v22 = cloudKitToken;
  if (cloudKitToken)
  {
    v23 = _AALogSystem(cloudKitToken);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B6F6A000, v23, OS_LOG_TYPE_DEFAULT, "Setting CloudKit token...", buf, 2u);
    }

    credential3 = [self credential];
    [credential3 setCredentialItem:v22 forKey:*MEMORY[0x1E6959940]];

    aa_cloudKitAccount = [self aa_cloudKitAccount];
    v26 = aa_cloudKitAccount;
    if (aa_cloudKitAccount)
    {
      [aa_cloudKitAccount setAuthenticated:1];
      credential4 = [v26 credential];
      [credential4 setToken:v22];

      accountStore = [self accountStore];
      v57 = 0;
      v29 = [accountStore saveVerifiedAccount:v26 error:&v57];
      username = v57;

      if ((v29 & 1) == 0)
      {
        v32 = _AALogSystem(v31);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          [ACAccount(AppleAccount) aa_updateTokensWithProvisioningResponse:];
        }
      }
    }

    else
    {
      v33 = _AALogSystem(0);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1B6F6A000, v33, OS_LOG_TYPE_DEFAULT, "Couldn't find a CloudKit child account - stashing the token away", buf, 2u);
      }

      username = [self username];
      [AAKeychainManager setPassword:v22 forServiceName:@"com.apple.appleaccount.cloudkit.token" username:username accessGroup:@"appleaccount"];
    }

    v6 = 1;
  }

  fmipToken = [v4 fmipToken];
  if (fmipToken)
  {
    credential5 = [self credential];
    [credential5 setFindMyiPhoneToken:fmipToken];

    v6 = 1;
  }

  fmipAppToken = [v4 fmipAppToken];
  v37 = fmipAppToken;
  if (fmipAppToken)
  {
    v38 = _AALogSystem(fmipAppToken);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B6F6A000, v38, OS_LOG_TYPE_DEFAULT, "Setting FMIP App token...", buf, 2u);
    }

    credential6 = [self credential];
    [credential6 setCredentialItem:v37 forKey:*MEMORY[0x1E6959990]];

    v6 = 1;
  }

  fmipSiriToken = [v4 fmipSiriToken];
  v41 = fmipSiriToken;
  if (fmipSiriToken)
  {
    v42 = _AALogSystem(fmipSiriToken);
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B6F6A000, v42, OS_LOG_TYPE_DEFAULT, "Setting FMIP Siri token...", buf, 2u);
    }

    credential7 = [self credential];
    [credential7 setCredentialItem:v41 forKey:*MEMORY[0x1E6959998]];

    v6 = 1;
  }

  fmfToken = [v4 fmfToken];
  v45 = fmfToken;
  if (fmfToken)
  {
    v46 = _AALogSystem(fmfToken);
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
    {
      [ACAccount(AppleAccount) aa_updateTokensWithProvisioningResponse:];
    }

    credential8 = [self credential];
    [credential8 setCredentialItem:v45 forKey:*MEMORY[0x1E6959988]];

    v6 = 1;
  }

  fmfAppToken = [v4 fmfAppToken];
  v49 = fmfAppToken;
  if (fmfAppToken)
  {
    v50 = _AALogSystem(fmfAppToken);
    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
    {
      [ACAccount(AppleAccount) aa_updateTokensWithProvisioningResponse:];
    }

    credential9 = [self credential];
    [credential9 setCredentialItem:v49 forKey:*MEMORY[0x1E6959980]];

    v6 = 1;
  }

  return v6;
}

- (uint64_t)aa_hasDuplicateAccount
{
  v15[1] = *MEMORY[0x1E69E9840];
  accountStore = [self accountStore];
  v15[0] = *MEMORY[0x1E69597F8];
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  v14 = 0;
  v4 = [accountStore accountsWithAccountTypeIdentifiers:v3 error:&v14];
  v5 = v14;

  if (!v4)
  {
    v10 = _AALogSystem(v6);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [ACAccount(AppleAccount) aa_hasDuplicateAccount];
    }

    goto LABEL_8;
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __49__ACAccount_AppleAccount__aa_hasDuplicateAccount__block_invoke;
  v13[3] = &unk_1E7C9B248;
  v13[4] = self;
  v7 = [v4 aaf_firstObjectPassingTest:v13];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __49__ACAccount_AppleAccount__aa_hasDuplicateAccount__block_invoke_2;
  v12[3] = &unk_1E7C9B248;
  v12[4] = self;
  v8 = [v4 aaf_firstObjectPassingTest:v12];

  if (v7 || !v8)
  {
LABEL_8:
    v9 = 0;
    goto LABEL_9;
  }

  v9 = 1;
LABEL_9:

  return v9;
}

- (uint64_t)_aa_isExistingAccount:()AppleAccount
{
  v4 = a3;
  accountType = [self accountType];
  identifier = [accountType identifier];
  accountType2 = [v4 accountType];
  identifier2 = [accountType2 identifier];
  v9 = [identifier isEqualToString:identifier2];

  identifier3 = [self identifier];
  identifier4 = [v4 identifier];

  LODWORD(v4) = [identifier3 isEqualToString:identifier4];
  return v4 & v9;
}

- (uint64_t)aa_isDuplicateAccount:()AppleAccount
{
  v4 = a3;
  accountType = [self accountType];
  identifier = [accountType identifier];
  accountType2 = [v4 accountType];
  identifier2 = [accountType2 identifier];
  v9 = [identifier isEqualToString:identifier2];

  identifier3 = [self identifier];
  identifier4 = [v4 identifier];
  LOBYTE(accountType2) = [identifier3 isEqualToString:identifier4];

  username2 = 0;
  if ((accountType2 & 1) == 0 && v9)
  {
    aa_personID = [self aa_personID];
    if (aa_personID && (v14 = aa_personID, [self aa_personID], v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "aa_personID"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v15, "isEqualToString:", v16), v16, v15, v14, v17))
    {
      aa_appleIDAliases = _AALogSystem(v18);
      if (os_log_type_enabled(aa_appleIDAliases, OS_LOG_TYPE_DEBUG))
      {
        [ACAccount(AppleAccount) aa_isDuplicateAccount:self];
      }
    }

    else
    {
      username = [self username];
      if (username && (v21 = username, [self username], v22 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "username"), v23 = objc_claimAutoreleasedReturnValue(), v24 = objc_msgSend(v22, "isEqualToString:", v23), v23, v22, v21, v24))
      {
        aa_appleIDAliases = _AALogSystem(v25);
        if (os_log_type_enabled(aa_appleIDAliases, OS_LOG_TYPE_DEBUG))
        {
          [ACAccount(AppleAccount) aa_isDuplicateAccount:];
        }
      }

      else
      {
        aa_altDSID = [self aa_altDSID];
        if (aa_altDSID && (v27 = aa_altDSID, [self aa_altDSID], v28 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "aa_altDSID"), v29 = objc_claimAutoreleasedReturnValue(), v30 = objc_msgSend(v28, "isEqualToString:", v29), v29, v28, v27, v30))
        {
          aa_appleIDAliases = _AALogSystem(v31);
          if (os_log_type_enabled(aa_appleIDAliases, OS_LOG_TYPE_DEBUG))
          {
            [ACAccount(AppleAccount) aa_isDuplicateAccount:self];
          }
        }

        else
        {
          aa_appleIDAliases = [v4 aa_appleIDAliases];
          username2 = [self username];
          if (!username2)
          {
LABEL_21:

            goto LABEL_22;
          }

          username3 = [self username];
          v33 = [aa_appleIDAliases containsObject:username3];

          if (!v33)
          {
            username2 = 0;
            goto LABEL_21;
          }

          v35 = _AALogSystem(v34);
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
          {
            [ACAccount(AppleAccount) aa_isDuplicateAccount:];
          }
        }
      }
    }

    username2 = 1;
    goto LABEL_21;
  }

LABEL_22:

  return username2;
}

- (void)aa_isChildProtoAccount
{
  result = [self aa_isProtoAccount];
  if (result)
  {
    return ([self proto_ageRange] == 1);
  }

  return result;
}

- (void)aa_isTeenProtoAccount
{
  result = [self aa_isProtoAccount];
  if (result)
  {
    return ([self proto_ageRange] == 2);
  }

  return result;
}

- (uint64_t)aa_isProtoAccount
{
  accountType = [self accountType];
  identifier = [accountType identifier];
  mEMORY[0x1E698DC80] = [MEMORY[0x1E698DC80] sharedInstance];
  protoAccountType = [mEMORY[0x1E698DC80] protoAccountType];
  identifier2 = [protoAccountType identifier];
  v6 = [identifier isEqualToString:identifier2];

  return v6;
}

- (void)_aa_setAppleID:()AppleAccount
{
  v4 = a3;
  if ([v4 length])
  {
    [self setAccountProperty:v4 forKey:@"appleId"];
  }
}

- (void)_aa_setAltDSID:()AppleAccount
{
  v4 = a3;
  if ([v4 length])
  {
    [self setAccountProperty:v4 forKey:@"altDSID"];
  }
}

- (void)_aa_setPrimaryEmail:()AppleAccount
{
  v4 = a3;
  if ([v4 length])
  {
    [self setAccountProperty:v4 forKey:@"primaryEmail"];
  }
}

- (id)_aa_rawPassword
{
  credential = [self credential];
  v2 = [credential credentialItemForKey:*MEMORY[0x1E6959A00]];

  return v2;
}

- (void)_aa_setRawPassword:()AppleAccount
{
  v4 = a3;
  if (v4)
  {
    v10 = v4;
    _aa_rawPassword = [self _aa_rawPassword];
    v6 = [v10 isEqualToString:_aa_rawPassword];

    v4 = v10;
    if ((v6 & 1) == 0)
    {
      credential = [self credential];
      v8 = credential;
      if (credential)
      {
        [credential setCredentialItem:v10 forKey:*MEMORY[0x1E6959A00]];
      }

      else
      {
        v9 = objc_alloc_init(MEMORY[0x1E6959A30]);
        [v9 setCredentialItem:v10 forKey:*MEMORY[0x1E6959A00]];
        [self setCredential:v9];
      }

      v4 = v10;
    }
  }
}

- (void)_aa_clearRawPassword
{
  credential = [self credential];
  if (credential)
  {
    v2 = credential;
    [credential setCredentialItem:0 forKey:*MEMORY[0x1E6959A00]];
    credential = v2;
  }
}

- (void)aa_saveUserAcknowledgementForAgeMigrationAlertForBundleID:()AppleAccount actionDetails:
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = _AALogSystem(v7);
  aa_fetchUserAcknowledgementForAgeMigrationAlertForAllBundleIDs = v8;
  if (v6 && v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412546;
      v16 = v7;
      v17 = 2112;
      v18 = v6;
      _os_log_impl(&dword_1B6F6A000, aa_fetchUserAcknowledgementForAgeMigrationAlertForAllBundleIDs, OS_LOG_TYPE_DEFAULT, "Saving user action %@ for bundle id %@", &v15, 0x16u);
    }

    aa_fetchUserAcknowledgementForAgeMigrationAlertForAllBundleIDs = [self aa_fetchUserAcknowledgementForAgeMigrationAlertForAllBundleIDs];
    v10 = _AALogSystem(aa_fetchUserAcknowledgementForAgeMigrationAlertForAllBundleIDs);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [ACAccount(AppleAccount) aa_saveUserAcknowledgementForAgeMigrationAlertForBundleID:aa_fetchUserAcknowledgementForAgeMigrationAlertForAllBundleIDs actionDetails:?];
    }

    v11 = [aa_fetchUserAcknowledgementForAgeMigrationAlertForAllBundleIDs mutableCopy];
    if (!aa_fetchUserAcknowledgementForAgeMigrationAlertForAllBundleIDs)
    {
      v12 = objc_alloc_init(MEMORY[0x1E695DF90]);

      v11 = v12;
    }

    v13 = _AALogSystem([v11 setObject:v7 forKey:v6]);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [v11 count];
      v15 = 134217984;
      v16 = v14;
      _os_log_impl(&dword_1B6F6A000, v13, OS_LOG_TYPE_DEFAULT, "All bundleId count is %lu... saving", &v15, 0xCu);
    }

    [self setAccountProperty:v11 forKey:@"userAcknowledgeMigrationAlert"];
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [ACAccount(AppleAccount) aa_saveUserAcknowledgementForAgeMigrationAlertForBundleID:actionDetails:];
  }
}

- (id)aa_fetchUserAcknowledgementForAgeMigrationAlertForBundleID:()AppleAccount
{
  v4 = a3;
  if (v4)
  {
    aa_fetchUserAcknowledgementForAgeMigrationAlertForAllBundleIDs = [self aa_fetchUserAcknowledgementForAgeMigrationAlertForAllBundleIDs];
    v6 = [aa_fetchUserAcknowledgementForAgeMigrationAlertForAllBundleIDs objectForKeyedSubscript:v4];
    v7 = _AALogSystem(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [ACAccount(AppleAccount) aa_fetchUserAcknowledgementForAgeMigrationAlertForBundleID:];
    }
  }

  else
  {
    aa_fetchUserAcknowledgementForAgeMigrationAlertForAllBundleIDs = _AALogSystem(0);
    if (os_log_type_enabled(aa_fetchUserAcknowledgementForAgeMigrationAlertForAllBundleIDs, OS_LOG_TYPE_ERROR))
    {
      [ACAccount(AppleAccount) aa_fetchUserAcknowledgementForAgeMigrationAlertForBundleID:];
    }

    v6 = 0;
  }

  return v6;
}

- (id)aa_fetchUserAcknowledgementForAgeMigrationAlertForAllBundleIDs
{
  v1 = [self accountPropertyForKey:@"userAcknowledgeMigrationAlert"];
  v2 = _AALogSystem(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    [ACAccount(AppleAccount) aa_fetchUserAcknowledgementForAgeMigrationAlertForAllBundleIDs];
  }

  return v1;
}

- (uint64_t)aa_clearUserAcknowledgeMigrationAlertForAllBundles
{
  v2 = _AALogSystem(self);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    [ACAccount(AppleAccount) aa_clearUserAcknowledgeMigrationAlertForAllBundles];
  }

  return [self setAccountProperty:0 forKey:@"userAcknowledgeMigrationAlert"];
}

- (void)aa_isPrimaryAccount
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)aa_setAccountClass:()AppleAccount .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ACAccount+AppleAccount.m" lineNumber:227 description:@"Attempt to set accountClass on non-iCloud account"];
}

- (void)aa_updateWithProvisioningResponse:()AppleAccount .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ACAccount+AppleAccount.m" lineNumber:635 description:{@"Invalid parameter not satisfying: %@", @"provisioningResponse"}];
}

- (void)aa_updateTokensWithProvisioningResponse:()AppleAccount .cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)aa_hasDuplicateAccount
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)aa_isDuplicateAccount:()AppleAccount .cold.1(void *a1)
{
  v1 = [a1 aa_personID];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x20u);
}

- (void)aa_isDuplicateAccount:()AppleAccount .cold.2()
{
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)aa_isDuplicateAccount:()AppleAccount .cold.3(void *a1)
{
  v1 = [a1 aa_altDSID];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x20u);
}

- (void)aa_isDuplicateAccount:()AppleAccount .cold.4()
{
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)aa_saveUserAcknowledgementForAgeMigrationAlertForBundleID:()AppleAccount actionDetails:.cold.1(void *a1)
{
  [a1 count];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

- (void)aa_saveUserAcknowledgementForAgeMigrationAlertForBundleID:()AppleAccount actionDetails:.cold.2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)aa_fetchUserAcknowledgementForAgeMigrationAlertForBundleID:()AppleAccount .cold.1()
{
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)aa_fetchUserAcknowledgementForAgeMigrationAlertForBundleID:()AppleAccount .cold.2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)aa_fetchUserAcknowledgementForAgeMigrationAlertForAllBundleIDs
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)aa_clearUserAcknowledgeMigrationAlertForAllBundles
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

@end