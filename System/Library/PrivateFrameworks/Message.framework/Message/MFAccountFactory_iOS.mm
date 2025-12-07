@interface MFAccountFactory_iOS
- (id)accountWithIdentifier:(id)identifier;
- (id)accountWithSystemAccount:(id)account;
@end

@implementation MFAccountFactory_iOS

- (id)accountWithIdentifier:(id)identifier
{
  v24 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v22 = 0;
  v4 = [MailAccount activeAccountsWithError:&v22];
  v5 = v22;
  v17 = [v4 mutableCopy];

  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = v17;
    v6 = 0;
    v8 = [v7 countByEnumeratingWithState:&v18 objects:v23 count:16];
    if (v8)
    {
      v9 = *v19;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v19 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v18 + 1) + 8 * i);
          identifier = [v11 identifier];
          v13 = [identifier isEqualToString:identifierCopy];

          if (v13)
          {
            v14 = v11;

            v6 = v14;
          }
        }

        v8 = [v7 countByEnumeratingWithState:&v18 objects:v23 count:16];
      }

      while (v8);
    }
  }

  v15 = v6;

  return v6;
}

- (id)accountWithSystemAccount:(id)account
{
  identifier = [account identifier];
  v5 = [(MFAccountFactory_iOS *)self accountWithIdentifier:identifier];

  return v5;
}

@end