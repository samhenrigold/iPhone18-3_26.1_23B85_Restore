@interface NSNotification(EKAdditions)
- (uint64_t)cal_changeMayAffectAnyObjectOfType:()EKAdditions;
- (uint64_t)cal_changeMayAffectCalendarsOrSources;
@end

@implementation NSNotification(EKAdditions)

- (uint64_t)cal_changeMayAffectAnyObjectOfType:()EKAdditions
{
  v18 = *MEMORY[0x1E69E9840];
  userInfo = [self userInfo];
  v5 = [userInfo objectForKeyedSubscript:@"EKEventStoreChangedObjectIDsUserInfoKey"];

  if (v5)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      while (2)
      {
        v10 = 0;
        do
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          if ([*(*(&v13 + 1) + 8 * v10) entityType] == a3)
          {
            v11 = 1;
            goto LABEL_12;
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v11 = 0;
LABEL_12:
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

- (uint64_t)cal_changeMayAffectCalendarsOrSources
{
  v17 = *MEMORY[0x1E69E9840];
  userInfo = [self userInfo];
  v2 = [userInfo objectForKeyedSubscript:@"EKEventStoreChangedObjectIDsUserInfoKey"];

  if (v2)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v3 = v2;
    v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v13;
      while (2)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v13 != v6)
          {
            objc_enumerationMutation(v3);
          }

          entityType = [*(*(&v12 + 1) + 8 * i) entityType];
          if (entityType == 1 || entityType == 6)
          {
            v10 = 1;
            goto LABEL_17;
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
        v10 = 0;
        if (v5)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v10 = 0;
    }

LABEL_17:
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

@end