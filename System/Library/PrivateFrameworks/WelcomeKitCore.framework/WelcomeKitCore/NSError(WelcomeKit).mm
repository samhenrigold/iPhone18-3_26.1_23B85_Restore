@interface NSError(WelcomeKit)
+ (id)_wl_encodableArrayFromArray:()WelcomeKit;
+ (id)_wl_encodableDictionaryFromDictionary:()WelcomeKit;
+ (id)_wl_encodableObjectFromObject:()WelcomeKit;
+ (id)_wl_encodableSetFromSet:()WelcomeKit;
+ (id)wl_encodableErrorSupportedClasses;
+ (uint64_t)_wl_objectIsKindOfNonCollectionPlistClass:()WelcomeKit;
- (BOOL)wk_representsTransientConnectivityIssueForAttempt:()WelcomeKit;
- (id)wl_encodableError;
@end

@implementation NSError(WelcomeKit)

- (BOOL)wk_representsTransientConnectivityIssueForAttempt:()WelcomeKit
{
  if (a3 <= 2)
  {
    domain = [self domain];
    if ([domain isEqualToString:*MEMORY[0x277CCA738]])
    {
      if ([self code] == -1001 || objc_msgSend(self, "code") == -1005)
      {
        v3 = 1;
LABEL_11:

        return v3;
      }

      code = [self code];

      if (code == -1003)
      {
        return 1;
      }
    }

    else
    {
    }

    domain = [self domain];
    if ([domain isEqualToString:*MEMORY[0x277D6A110]])
    {
      v3 = [self code] == 110;
    }

    else
    {
      v3 = 0;
    }

    goto LABEL_11;
  }

  return 0;
}

- (id)wl_encodableError
{
  userInfo = [self userInfo];
  v3 = [userInfo count];

  if (v3)
  {
    v4 = MEMORY[0x277CCA9B8];
    userInfo2 = [self userInfo];
    v6 = [v4 _wl_encodableDictionaryFromDictionary:userInfo2];

    v7 = MEMORY[0x277CCA9B8];
    domain = [self domain];
    selfCopy = [v7 errorWithDomain:domain code:objc_msgSend(self userInfo:{"code"), v6}];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

+ (id)wl_encodableErrorSupportedClasses
{
  if (wl_encodableErrorSupportedClasses_onceToken != -1)
  {
    +[NSError(WelcomeKit) wl_encodableErrorSupportedClasses];
  }

  v2 = wl_encodableErrorSupportedClasses_supportedClasses;

  return v2;
}

+ (id)_wl_encodableObjectFromObject:()WelcomeKit
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    wl_encodableError = [v4 wl_encodableError];
LABEL_11:
    v6 = wl_encodableError;
    goto LABEL_12;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    wl_encodableError = [self _wl_encodableArrayFromArray:v4];
    goto LABEL_11;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    wl_encodableError = [self _wl_encodableSetFromSet:v4];
    goto LABEL_11;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    wl_encodableError = [self _wl_encodableDictionaryFromDictionary:v4];
    goto LABEL_11;
  }

  if ([MEMORY[0x277CCA9B8] _wl_objectIsKindOfNonCollectionPlistClass:v4])
  {
    wl_encodableError = v4;
    goto LABEL_11;
  }

  v6 = 0;
LABEL_12:

  return v6;
}

+ (id)_wl_encodableArrayFromArray:()WelcomeKit
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v4, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [self _wl_encodableObjectFromObject:{*(*(&v13 + 1) + 8 * i), v13}];
        if (v11)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

+ (id)_wl_encodableSetFromSet:()WelcomeKit
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{objc_msgSend(v4, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [self _wl_encodableObjectFromObject:{*(*(&v13 + 1) + 8 * i), v13}];
        if (v11)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

+ (id)_wl_encodableDictionaryFromDictionary:()WelcomeKit
{
  v4 = MEMORY[0x277CBEB38];
  v5 = a3;
  v6 = [[v4 alloc] initWithCapacity:{objc_msgSend(v5, "count")}];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __61__NSError_WelcomeKit___wl_encodableDictionaryFromDictionary___block_invoke;
  v9[3] = &unk_279EB6488;
  selfCopy = self;
  v7 = v6;
  v10 = v7;
  [v5 enumerateKeysAndObjectsUsingBlock:v9];

  return v7;
}

+ (uint64_t)_wl_objectIsKindOfNonCollectionPlistClass:()WelcomeKit
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (_wl_objectIsKindOfNonCollectionPlistClass__onceToken != -1)
  {
    +[NSError(WelcomeKit) _wl_objectIsKindOfNonCollectionPlistClass:];
  }

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v4 = _wl_objectIsKindOfNonCollectionPlistClass__nonCollectionPlistClasses;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = *v10;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v4);
        }

        if (objc_opt_isKindOfClass())
        {
          v5 = 1;
          goto LABEL_13;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  return v5;
}

@end