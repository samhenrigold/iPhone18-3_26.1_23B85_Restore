@interface NSDictionary(LSNormalizePluginDictionary)
- (id)_ls_normalizedPluginPlist;
- (id)ls_fixupExtensionPointIdentifierKey;
- (id)ls_insertExtensionPointVersion:()LSNormalizePluginDictionary;
@end

@implementation NSDictionary(LSNormalizePluginDictionary)

- (id)ls_fixupExtensionPointIdentifierKey
{
  v27 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v2 = objc_opt_class();
  v3 = [selfCopy objectForKey:@"EXAppExtensionAttributes"];
  v4 = v3;
  if (v2)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v4 = 0;
  }

  v6 = objc_opt_class();
  v7 = [v4 objectForKey:@"EXExtensionPointIdentifier"];
  v8 = v7;
  if (v6 && v7)
  {
    if (objc_opt_isKindOfClass())
    {
LABEL_16:
      v9 = [selfCopy mutableCopy];
      v10 = [v9 objectForKey:@"NSExtension"];
      v11 = [v10 mutableCopy];

      if (v11)
      {
        v13 = _LSRegistrationLog(v12);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v14 = objc_opt_class();
          v15 = [selfCopy objectForKey:*MEMORY[0x1E695E4F0]];
          v16 = v15;
          if (v14 && v15 && (objc_opt_isKindOfClass() & 1) == 0)
          {

            v16 = 0;
          }

          v23 = 138412546;
          v24 = v8;
          v25 = 2112;
          v26 = v16;
          _os_log_impl(&dword_18162D000, v13, OS_LOG_TYPE_INFO, "Overriding NSExtension->NSExtensionPointIdentifier to %@ for bundleID %@", &v23, 0x16u);
        }
      }

      else
      {
        v17 = _LSRegistrationLog(v12);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          v18 = objc_opt_class();
          v19 = [selfCopy objectForKey:*MEMORY[0x1E695E4F0]];
          v20 = v19;
          if (v18 && v19 && (objc_opt_isKindOfClass() & 1) == 0)
          {

            v20 = 0;
          }

          v23 = 138412546;
          v24 = v8;
          v25 = 2112;
          v26 = v20;
          _os_log_impl(&dword_18162D000, v17, OS_LOG_TYPE_INFO, "Synthesizing NSExtension->NSExtensionPointIdentifier to %@ for bundleID %@", &v23, 0x16u);
        }

        v11 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:2];
      }

      [v11 setObject:v8 forKey:@"NSExtensionPointIdentifier"];
      [v9 setObject:v11 forKey:@"NSExtension"];
      v21 = [v9 copy];

      selfCopy = v21;
      goto LABEL_32;
    }

    v8 = 0;
  }

  if (!v4 || v8)
  {
    if (!v8)
    {
      goto LABEL_33;
    }

    goto LABEL_16;
  }

  v8 = _LSRegistrationLog(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v23 = 138412546;
    v24 = @"EXExtensionPointIdentifier";
    v25 = 2112;
    v26 = @"EXAppExtensionAttributes";
  }

LABEL_32:

LABEL_33:

  return selfCopy;
}

- (id)ls_insertExtensionPointVersion:()LSNormalizePluginDictionary
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [self objectForKey:@"NSExtension"];
  v7 = v6;
  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v7 = 0;
  }

  v9 = objc_opt_class();
  v10 = [v7 objectForKey:@"NSExtensionAttributes"];
  v11 = v10;
  if (v9 && v10 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v11 = 0;
  }

  v12 = objc_opt_class();
  v13 = [v11 objectForKey:@"NSExtensionVersion"];
  v14 = v13;
  if (!v12 || !v13)
  {
    if (!v13)
    {
      goto LABEL_17;
    }

LABEL_16:
    selfCopy = self;
    goto LABEL_22;
  }

  if (objc_opt_isKindOfClass())
  {
    goto LABEL_16;
  }

LABEL_17:
  selfCopy = [self mutableCopy];
  v14 = [v7 mutableCopy];
  if (!v14)
  {
    v14 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:1];
  }

  v16 = [v11 mutableCopy];
  if (!v16)
  {
    v16 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:1];
  }

  [v16 setObject:v4 forKey:@"NSExtensionVersion"];
  [v14 setObject:v16 forKey:@"NSExtensionAttributes"];
  [selfCopy setObject:v14 forKey:@"NSExtension"];

LABEL_22:

  return selfCopy;
}

- (id)_ls_normalizedPluginPlist
{
  v1 = [self mutableCopy];
  v2 = [v1 objectForKey:@"NSExtension"];

  if (v2)
  {
    v3 = objc_opt_class();
    v4 = [v1 objectForKey:*MEMORY[0x1E695E148]];
    v5 = v4;
    if (v3 && v4 && (objc_opt_isKindOfClass() & 1) == 0)
    {

      v5 = 0;
    }

    if (v5)
    {
      v6 = v5;
    }

    else
    {
      v6 = @"1";
    }

    v7 = [v1 ls_insertExtensionPointVersion:v6];

    v1 = v7;
  }

  v8 = [v1 objectForKey:@"EXAppExtensionAttributes"];

  if (v8)
  {
    ls_fixupExtensionPointIdentifierKey = [v1 ls_fixupExtensionPointIdentifierKey];

    v1 = ls_fixupExtensionPointIdentifierKey;
  }

  return v1;
}

@end