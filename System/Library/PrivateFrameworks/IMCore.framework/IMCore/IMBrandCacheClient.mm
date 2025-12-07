@interface IMBrandCacheClient
- (id)brandLogoDataWithIdentifier:(id)identifier;
- (id)brandLogoURLWithIdentifier:(id)identifier;
- (id)brandWithIdentifier:(id)identifier;
@end

@implementation IMBrandCacheClient

- (id)brandWithIdentifier:(id)identifier
{
  v19 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v4 = +[IMChatRegistry sharedRegistry];
  v5 = [v4 cachedChatsWithIdentifier:identifierCopy];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        brandInfo = [*(*(&v14 + 1) + 8 * i) brandInfo];
        if (brandInfo)
        {
          v12 = brandInfo;
          goto LABEL_11;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_11:

  return v12;
}

- (id)brandLogoURLWithIdentifier:(id)identifier
{
  v19 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v4 = +[IMChatRegistry sharedRegistry];
  v5 = [v4 cachedChatsWithIdentifier:identifierCopy];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        brandLogoURL = [*(*(&v14 + 1) + 8 * i) brandLogoURL];
        if (brandLogoURL)
        {
          v12 = brandLogoURL;
          goto LABEL_11;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_11:

  return v12;
}

- (id)brandLogoDataWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = +[IMChatRegistry sharedRegistry];
  v5 = [v4 brandLogoDataFromChatIdentifier:identifierCopy];

  return v5;
}

@end