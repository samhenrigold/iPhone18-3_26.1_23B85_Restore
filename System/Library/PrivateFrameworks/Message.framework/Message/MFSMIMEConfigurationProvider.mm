@interface MFSMIMEConfigurationProvider
- (BOOL)encryptionIsConfigured;
- (BOOL)encryptionIsEnabledByDefault;
- (BOOL)signingEnabledByDefault;
- (BOOL)signingIsConfigured;
@end

@implementation MFSMIMEConfigurationProvider

- (BOOL)signingIsConfigured
{
  v25 = *MEMORY[0x1E69E9840];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = +[MailAccount activeAccounts];
  v2 = [obj countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v2)
  {
    v3 = *v20;
    do
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v20 != v3)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v19 + 1) + 8 * i);
        v15 = 0u;
        v16 = 0u;
        v17 = 0u;
        v18 = 0u;
        emailAddresses = [v5 emailAddresses];
        v7 = [emailAddresses countByEnumeratingWithState:&v15 objects:v23 count:16];
        if (v7)
        {
          v8 = *v16;
          while (2)
          {
            for (j = 0; j != v7; ++j)
            {
              if (*v16 != v8)
              {
                objc_enumerationMutation(emailAddresses);
              }

              v10 = [MFMessageKeychainManager copyAllSigningIdentitiesForAddress:*(*(&v15 + 1) + 8 * j) error:0];
              v11 = [v10 count] == 0;

              if (!v11)
              {

                v12 = 1;
                goto LABEL_19;
              }
            }

            v7 = [emailAddresses countByEnumeratingWithState:&v15 objects:v23 count:16];
            if (v7)
            {
              continue;
            }

            break;
          }
        }
      }

      v2 = [obj countByEnumeratingWithState:&v19 objects:v24 count:16];
      v12 = 0;
    }

    while (v2);
  }

  else
  {
    v12 = 0;
  }

LABEL_19:

  return v12;
}

- (BOOL)signingEnabledByDefault
{
  v23 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v2 = +[MailAccount activeAccounts];
  v3 = 0;
  v4 = [v2 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v4)
  {
    v5 = *v18;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v18 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v17 + 1) + 8 * i);
        v13 = 0u;
        v14 = 0u;
        v15 = 0u;
        v16 = 0u;
        emailAddresses = [v7 emailAddresses];
        v9 = [emailAddresses countByEnumeratingWithState:&v13 objects:v21 count:16];
        if (v9)
        {
          v10 = *v14;
          while (2)
          {
            for (j = 0; j != v9; ++j)
            {
              if (*v14 != v10)
              {
                objc_enumerationMutation(emailAddresses);
              }

              if ([v7 secureCompositionSigningPolicyForAddress:*(*(&v13 + 1) + 8 * j)] > 0)
              {
                v3 = 1;
                goto LABEL_16;
              }
            }

            v9 = [emailAddresses countByEnumeratingWithState:&v13 objects:v21 count:16];
            if (v9)
            {
              continue;
            }

            break;
          }

          v3 = 0;
        }

LABEL_16:
      }

      v4 = [v2 countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v4);
  }

  return v3 & 1;
}

- (BOOL)encryptionIsConfigured
{
  v25 = *MEMORY[0x1E69E9840];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = +[MailAccount activeAccounts];
  v2 = [obj countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v2)
  {
    v3 = *v20;
    do
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v20 != v3)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v19 + 1) + 8 * i);
        v15 = 0u;
        v16 = 0u;
        v17 = 0u;
        v18 = 0u;
        emailAddresses = [v5 emailAddresses];
        v7 = [emailAddresses countByEnumeratingWithState:&v15 objects:v23 count:16];
        if (v7)
        {
          v8 = *v16;
          while (2)
          {
            for (j = 0; j != v7; ++j)
            {
              if (*v16 != v8)
              {
                objc_enumerationMutation(emailAddresses);
              }

              v10 = [MFMessageKeychainManager copyAllEncryptionIdentitiesForAddress:*(*(&v15 + 1) + 8 * j) error:0];
              v11 = [v10 count] == 0;

              if (!v11)
              {

                v12 = 1;
                goto LABEL_19;
              }
            }

            v7 = [emailAddresses countByEnumeratingWithState:&v15 objects:v23 count:16];
            if (v7)
            {
              continue;
            }

            break;
          }
        }
      }

      v2 = [obj countByEnumeratingWithState:&v19 objects:v24 count:16];
      v12 = 0;
    }

    while (v2);
  }

  else
  {
    v12 = 0;
  }

LABEL_19:

  return v12;
}

- (BOOL)encryptionIsEnabledByDefault
{
  v23 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v2 = +[MailAccount activeAccounts];
  v3 = 0;
  v4 = [v2 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v4)
  {
    v5 = *v18;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v18 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v17 + 1) + 8 * i);
        v13 = 0u;
        v14 = 0u;
        v15 = 0u;
        v16 = 0u;
        emailAddresses = [v7 emailAddresses];
        v9 = [emailAddresses countByEnumeratingWithState:&v13 objects:v21 count:16];
        if (v9)
        {
          v10 = *v14;
          while (2)
          {
            for (j = 0; j != v9; ++j)
            {
              if (*v14 != v10)
              {
                objc_enumerationMutation(emailAddresses);
              }

              if ([v7 secureCompositionEncryptionPolicyForAddress:*(*(&v13 + 1) + 8 * j)] > 0)
              {
                v3 = 1;
                goto LABEL_16;
              }
            }

            v9 = [emailAddresses countByEnumeratingWithState:&v13 objects:v21 count:16];
            if (v9)
            {
              continue;
            }

            break;
          }

          v3 = 0;
        }

LABEL_16:
      }

      v4 = [v2 countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v4);
  }

  return v3 & 1;
}

@end