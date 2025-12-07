@interface ACAccountStore(AppleIDAuthentication)
- (id)_primaryiCloudAccount;
- (id)aida_AppleIDAuthenticationAccounts;
- (id)aida_accountForAltDSID:()AppleIDAuthentication;
- (id)aida_accountForPrimaryiCloudAccount;
- (id)aida_accountForiCloudAccount:()AppleIDAuthentication;
- (id)aida_iCloudAccountMatchingAppleIDAuthAccount:()AppleIDAuthentication;
- (void)aida_renewCredentialsForAccount:()AppleIDAuthentication services:force:completion:;
@end

@implementation ACAccountStore(AppleIDAuthentication)

- (id)aida_accountForPrimaryiCloudAccount
{
  _primaryiCloudAccount = [self _primaryiCloudAccount];
  v3 = [self aida_accountForiCloudAccount:_primaryiCloudAccount];

  return v3;
}

- (id)_primaryiCloudAccount
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = [self accountTypeWithAccountTypeIdentifier:*MEMORY[0x1E69597F8]];
  [self accountsWithAccountType:v2];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = v16 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        v9 = [v8 accountPropertyForKey:{@"primaryAccount", v13}];
        bOOLValue = [v9 BOOLValue];

        if (bOOLValue)
        {
          v11 = v8;
          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  return v11;
}

- (id)aida_AppleIDAuthenticationAccounts
{
  aida_AppleIDAuthenticationAccountType = [self aida_AppleIDAuthenticationAccountType];
  v3 = [self accountsWithAccountType:aida_AppleIDAuthenticationAccountType];

  return v3;
}

- (id)aida_accountForiCloudAccount:()AppleIDAuthentication
{
  v24 = *MEMORY[0x1E69E9840];
  v18 = a3;
  aida_alternateDSID = [v18 aida_alternateDSID];
  [self aida_AppleIDAuthenticationAccounts];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = v22 = 0u;
  v5 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v20;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v19 + 1) + 8 * i);
        aida_alternateDSID2 = [v9 aida_alternateDSID];
        if ([aida_alternateDSID2 isEqualToString:aida_alternateDSID])
        {
          goto LABEL_14;
        }

        v11 = [v9 accountPropertyForKey:@"adsid"];
        if ([v11 isEqualToString:aida_alternateDSID])
        {

LABEL_14:
LABEL_15:
          v15 = v9;
          goto LABEL_16;
        }

        username = [v9 username];
        username2 = [v18 username];
        v14 = [username isEqualToString:username2];

        if (v14)
        {
          goto LABEL_15;
        }
      }

      v6 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
      v15 = 0;
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v15 = 0;
  }

LABEL_16:

  return v15;
}

- (id)aida_accountForAltDSID:()AppleIDAuthentication
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [self aida_AppleIDAuthenticationAccounts];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = v19 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        aida_alternateDSID = [v10 aida_alternateDSID];
        if ([aida_alternateDSID isEqualToString:v4])
        {

LABEL_13:
          v14 = v10;
          goto LABEL_14;
        }

        v12 = [v10 accountPropertyForKey:@"adsid"];
        v13 = [v12 isEqualToString:v4];

        if (v13)
        {
          goto LABEL_13;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      v14 = 0;
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v14 = 0;
  }

LABEL_14:

  return v14;
}

- (id)aida_iCloudAccountMatchingAppleIDAuthAccount:()AppleIDAuthentication
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 accountPropertyForKey:@"altDSID"];
  if (!v5)
  {
    v6 = [v4 accountPropertyForKey:@"adsid"];
  }

  v7 = [self accountTypeWithAccountTypeIdentifier:*MEMORY[0x1E69597F8]];
  [self accountsWithAccountType:v7];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = v22 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v18 = v4;
    v11 = *v20;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        v14 = [v13 accountPropertyForKey:@"altDSID"];
        v15 = [v14 isEqual:v5];

        if (v15)
        {
          v16 = v13;
          goto LABEL_13;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }

    v16 = 0;
LABEL_13:
    v4 = v18;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (void)aida_renewCredentialsForAccount:()AppleIDAuthentication services:force:completion:
{
  v18[2] = *MEMORY[0x1E69E9840];
  v10 = *MEMORY[0x1E6959AA8];
  v17[0] = @"Services";
  v17[1] = v10;
  v18[0] = a4;
  v11 = MEMORY[0x1E696AD98];
  v12 = a6;
  v13 = a4;
  v14 = a3;
  v15 = [v11 numberWithBool:a5];
  v18[1] = v15;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:2];

  [self renewCredentialsForAccount:v14 options:v16 completion:v12];
}

@end