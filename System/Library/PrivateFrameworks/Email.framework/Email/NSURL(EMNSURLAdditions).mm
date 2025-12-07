@interface NSURL(EMNSURLAdditions)
+ (id)em_mailToFromQueryItemKey;
- (BOOL)em_isAccountURL;
- (BOOL)em_isInternalMessageURL;
- (BOOL)em_isMailboxURL;
- (BOOL)em_isMessageURL;
- (EMInternalMessageID)em_internalMessageID;
- (id)em_messageIDHeader;
@end

@implementation NSURL(EMNSURLAdditions)

+ (id)em_mailToFromQueryItemKey
{
  if (em_mailToFromQueryItemKey_onceToken != -1)
  {
    +[NSURL(EMNSURLAdditions) em_mailToFromQueryItemKey];
  }

  v2 = em_mailToFromQueryItemKey_mailToFromQueryItem;

  return v2;
}

- (BOOL)em_isMessageURL
{
  em_messageIDHeader = [self em_messageIDHeader];
  v2 = em_messageIDHeader != 0;

  return v2;
}

- (id)em_messageIDHeader
{
  if ([self ef_hasScheme:@"message"])
  {
    v2 = [MEMORY[0x1E696AF20] componentsWithURL:self resolvingAgainstBaseURL:0];
    [v2 setQuery:0];
    v3 = [v2 URL];
    absoluteString = [v3 absoluteString];

    v5 = [absoluteString substringFromIndex:{objc_msgSend(@"message", "length") + 1}];
    if ([v5 hasPrefix:@"//"])
    {
      v6 = [v5 substringFromIndex:{objc_msgSend(@"//", "length")}];

      v5 = v6;
    }

    stringByRemovingPercentEncoding = [v5 stringByRemovingPercentEncoding];

    if ([(NSURL *)self _isValidMessageID:stringByRemovingPercentEncoding])
    {
      v8 = stringByRemovingPercentEncoding;
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)em_isInternalMessageURL
{
  _databaseID = [(NSURL *)self _databaseID];
  v2 = _databaseID != 0;

  return v2;
}

- (EMInternalMessageID)em_internalMessageID
{
  v19 = *MEMORY[0x1E69E9840];
  _databaseID = [(NSURL *)self _databaseID];
  if (_databaseID)
  {
    v3 = [MEMORY[0x1E696AF20] componentsWithURL:self resolvingAgainstBaseURL:0];
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    queryItems = [v3 queryItems];
    value2 = [queryItems countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (value2)
    {
      v6 = *v15;
      while (2)
      {
        for (i = 0; i != value2; i = i + 1)
        {
          if (*v15 != v6)
          {
            objc_enumerationMutation(queryItems);
          }

          v8 = *(*(&v14 + 1) + 8 * i);
          name = [v8 name];
          if ([name caseInsensitiveCompare:@"uuid"])
          {
          }

          else
          {
            value = [v8 value];
            v11 = value == 0;

            if (!v11)
            {
              value2 = [v8 value];
              goto LABEL_15;
            }
          }
        }

        value2 = [queryItems countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (value2)
        {
          continue;
        }

        break;
      }
    }

LABEL_15:

    v12 = -[EMInternalMessageID initWithDatabaseID:externalID:]([EMInternalMessageID alloc], "initWithDatabaseID:externalID:", [_databaseID longLongValue], value2);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)em_isAccountURL
{
  if (![(NSURL *)self _hasAccountScheme])
  {
    return 0;
  }

  host = [self host];
  v3 = [host length];

  if (!v3)
  {
    return 0;
  }

  pathComponents = [self pathComponents];
  v5 = [pathComponents count] < 2;

  return v5;
}

- (BOOL)em_isMailboxURL
{
  if (![(NSURL *)self _hasAccountScheme])
  {
    return 0;
  }

  host = [self host];
  v3 = [host length];

  if (!v3)
  {
    return 0;
  }

  pathComponents = [self pathComponents];
  v5 = [pathComponents count] > 1;

  return v5;
}

@end