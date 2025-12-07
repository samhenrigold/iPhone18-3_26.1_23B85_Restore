@interface ACAccountStore(AppleID)
- (id)accountWithAppleID:()AppleID;
- (id)accountsWithAccountType:()AppleID appleID:;
@end

@implementation ACAccountStore(AppleID)

- (id)accountsWithAccountType:()AppleID appleID:
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v22 = v6;
  v8 = [self accountsWithAccountType:v6];
  v9 = v8;
  if (!v7 || (v26 = 0u, v27 = 0u, v24 = 0u, v25 = 0u, (v10 = [v8 countByEnumeratingWithState:&v24 objects:v28 count:16]) == 0))
  {
    v12 = 0;
    goto LABEL_17;
  }

  v11 = v10;
  v12 = 0;
  v13 = *v25;
  obj = v9;
  do
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v25 != v13)
      {
        objc_enumerationMutation(obj);
      }

      v15 = *(*(&v24 + 1) + 8 * i);
      username = [v15 username];
      if ([v7 caseInsensitiveCompare:username])
      {
        accountProperties = [v15 accountProperties];
        v18 = [accountProperties objectForKeyedSubscript:@"originalUsername"];
        v19 = [v7 caseInsensitiveCompare:v18];

        if (v19)
        {
          continue;
        }

        if (v12)
        {
LABEL_10:
          v20 = [v12 arrayByAddingObject:v15];

          v12 = v20;
          continue;
        }
      }

      else
      {

        if (v12)
        {
          goto LABEL_10;
        }
      }

      v12 = [MEMORY[0x1E695DEC8] arrayWithObject:v15];
    }

    v9 = obj;
    v11 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  }

  while (v11);
LABEL_17:

  return v12;
}

- (id)accountWithAppleID:()AppleID
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [self accountTypeWithAccountTypeIdentifier:*MEMORY[0x1E69597F8]];
  [self accountsWithAccountType:v5];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v17 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        username = [v10 username];
        v12 = [username isEqualToString:v4];

        if (v12)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

@end