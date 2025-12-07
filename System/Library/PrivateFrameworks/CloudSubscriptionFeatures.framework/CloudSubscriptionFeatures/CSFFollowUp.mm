@interface CSFFollowUp
+ (BOOL)anyUserHasEngagedWithCFU;
+ (BOOL)hasDSID;
+ (BOOL)hasEngagedWithCFU;
+ (NSDate)hasEngagedWithCFUDate;
+ (NSDictionary)persistentDomain;
+ (NSString)userDefaultsKey;
+ (NSUserDefaults)defaults;
+ (void)setHasEngagedWithCFU:(BOOL)u;
+ (void)setHasEngagedWithCFUDate:(id)date;
@end

@implementation CSFFollowUp

+ (NSUserDefaults)defaults
{
  v2 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.CloudSubscriptionFeatures.followup.engagement"];

  return v2;
}

+ (BOOL)hasDSID
{
  defaultStore = [MEMORY[0x1E6959A40] defaultStore];
  aa_primaryAppleAccount = [defaultStore aa_primaryAppleAccount];
  aa_personID = [aa_primaryAppleAccount aa_personID];
  v5 = aa_personID != 0;

  return v5;
}

+ (NSString)userDefaultsKey
{
  defaultStore = [MEMORY[0x1E6959A40] defaultStore];
  aa_primaryAppleAccount = [defaultStore aa_primaryAppleAccount];
  aa_personID = [aa_primaryAppleAccount aa_personID];

  if (aa_personID)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasEngaged.%@", aa_personID];
  }

  else
  {
    v5 = @"hasEngaged.device";
  }

  return v5;
}

+ (BOOL)hasEngagedWithCFU
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = +[CSFFollowUp hasEngagedWithCFUDate];
  if (!v2)
  {
    v8 = +[CSFFollowUp hasDSID];
    v9 = v8;
    v4 = _CSFGetLogSystem(v8);
    v10 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
    if (v9)
    {
      if (v10)
      {
        LOWORD(v18) = 0;
        v11 = "No existing value for hasEngagedWithCFU. Returning NO.";
LABEL_16:
        _os_log_impl(&dword_1DF47C000, v4, OS_LOG_TYPE_DEFAULT, v11, &v18, 2u);
      }
    }

    else
    {
      if (v10)
      {
        v12 = +[CSFFollowUp userDefaultsKey];
        v13 = +[CSFFollowUp persistentDomain];
        v18 = 138412546;
        v19 = v12;
        v20 = 2112;
        v21 = v13;
        _os_log_impl(&dword_1DF47C000, v4, OS_LOG_TYPE_DEFAULT, "No existing value for key %@ (no DSID included). Checking if any users have seen the CFU in persistent domain %@.", &v18, 0x16u);
      }

      v14 = +[CSFFollowUp anyUserHasEngagedWithCFU];
      v15 = v14;
      v4 = _CSFGetLogSystem(v14);
      v16 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
      if (v15)
      {
        if (v16)
        {
          LOWORD(v18) = 0;
          _os_log_impl(&dword_1DF47C000, v4, OS_LOG_TYPE_DEFAULT, "Previous DSID has engaged with CFU. Returning YES.", &v18, 2u);
        }

        goto LABEL_5;
      }

      if (v16)
      {
        LOWORD(v18) = 0;
        v11 = "No user on this device has ever engaged with CFU. Returning NO.";
        goto LABEL_16;
      }
    }

    v7 = 0;
    goto LABEL_18;
  }

  v3 = objc_alloc_init(MEMORY[0x1E696AC80]);
  v4 = [v3 stringFromDate:v2];

  v6 = _CSFGetLogSystem(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138412290;
    v19 = v4;
    _os_log_impl(&dword_1DF47C000, v6, OS_LOG_TYPE_DEFAULT, "User has engaged with CFU? YES - on Date %@", &v18, 0xCu);
  }

LABEL_5:
  v7 = 1;
LABEL_18:

  return v7;
}

+ (void)setHasEngagedWithCFU:(BOOL)u
{
  v5 = _CSFGetLogSystem(self);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (u)
  {
    if (v6)
    {
      *v7 = 0;
      _os_log_impl(&dword_1DF47C000, v5, OS_LOG_TYPE_DEFAULT, "Overwriting existing hasEngagedWithCFU value.", v7, 2u);
    }

    v5 = [MEMORY[0x1E695DF00] now];
    [self setHasEngagedWithCFUDate:v5];
  }

  else if (v6)
  {
    *buf = 0;
    _os_log_impl(&dword_1DF47C000, v5, OS_LOG_TYPE_DEFAULT, "Provided hasEngagedWithCFU value is false. Will not set a date.", buf, 2u);
  }
}

+ (NSDate)hasEngagedWithCFUDate
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = +[CSFFollowUp defaults];
  v3 = +[CSFFollowUp userDefaultsKey];
  v4 = [v2 objectForKey:v3];

  if (v4)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v7 = v4;
      goto LABEL_11;
    }

    v10 = _CSFGetLogSystem(isKindOfClass);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&dword_1DF47C000, v10, OS_LOG_TYPE_DEFAULT, "Existing value is not NSDate. Resetting to nil.", &v12, 2u);
    }

    [CSFFollowUp setHasEngagedWithCFU:0];
  }

  else
  {
    v8 = _CSFGetLogSystem(v5);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = +[CSFFollowUp userDefaultsKey];
      v12 = 138412290;
      v13 = v9;
      _os_log_impl(&dword_1DF47C000, v8, OS_LOG_TYPE_DEFAULT, "No existing value for key %@, returning nil.", &v12, 0xCu);
    }
  }

  v7 = 0;
LABEL_11:

  return v7;
}

+ (void)setHasEngagedWithCFUDate:(id)date
{
  v15 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  v4 = +[CSFFollowUp defaults];
  v5 = +[CSFFollowUp userDefaultsKey];
  [v4 setObject:dateCopy forKey:v5];

  v6 = objc_alloc_init(MEMORY[0x1E696AC80]);
  v7 = [v6 stringFromDate:dateCopy];

  v9 = _CSFGetLogSystem(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = +[CSFFollowUp userDefaultsKey];
    v11 = 138412546;
    v12 = v10;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&dword_1DF47C000, v9, OS_LOG_TYPE_DEFAULT, "Set hasEngagedWithCFUDate (key %@) to value: %@", &v11, 0x16u);
  }
}

+ (BOOL)anyUserHasEngagedWithCFU
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = +[CSFFollowUp persistentDomain];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  allKeys = [v2 allKeys];
  v4 = [allKeys countByEnumeratingWithState:&v11 objects:v17 count:16];
  if (v4)
  {
    v5 = *v12;
    while (2)
    {
      for (i = 0; i != v4; i = (i + 1))
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(allKeys);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        v8 = [v2 objectForKeyedSubscript:v7];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        if (isKindOfClass)
        {
          v4 = _CSFGetLogSystem(isKindOfClass);
          if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v16 = v7;
            _os_log_impl(&dword_1DF47C000, v4, OS_LOG_TYPE_DEFAULT, "Found user has engaged with CFU with key %@", buf, 0xCu);
          }

          LOBYTE(v4) = 1;
          goto LABEL_13;
        }
      }

      v4 = [allKeys countByEnumeratingWithState:&v11 objects:v17 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  return v4;
}

+ (NSDictionary)persistentDomain
{
  v2 = +[CSFFollowUp defaults];
  v3 = [v2 persistentDomainForName:@"com.apple.CloudSubscriptionFeatures.followup.engagement"];

  return v3;
}

@end