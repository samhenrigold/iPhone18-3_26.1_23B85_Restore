@interface MFAccountLoader
+ (BOOL)loadBundleForAccountClassString:(id)string error:(id *)error;
+ (Class)_accountClassForString:(id)string error:(id *)error;
+ (Class)accountClassForPersistentAccount:(id)account error:(id *)error;
+ (id)_accountClassStringWithPersistentAccount:(id)account error:(id *)error;
+ (id)_bundlePathForAccountClassString:(id)string;
+ (id)accountWithAccountTypeIdentifier:(id)identifier error:(id *)error;
+ (id)accountWithPersistentAccount:(id)account error:(id *)error;
@end

@implementation MFAccountLoader

+ (id)accountWithPersistentAccount:(id)account error:(id *)error
{
  accountCopy = account;
  v6 = [MFAccountLoader accountClassForPersistentAccount:accountCopy error:error];
  if (v6)
  {
    v7 = [[v6 alloc] initWithPersistentAccount:accountCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (Class)accountClassForPersistentAccount:(id)account error:(id *)error
{
  accountCopy = account;
  if (accountCopy)
  {
    v7 = [self _accountClassStringWithPersistentAccount:accountCopy error:error];
    if (v7)
    {
      v8 = [self _accountClassForString:v7 error:error];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  return v8;
}

+ (id)_accountClassStringWithPersistentAccount:(id)account error:(id *)error
{
  accountCopy = account;
  v6 = accountCopy;
  if (accountCopy)
  {
    v7 = [accountCopy accountPropertyForKey:@"Class"];
    v8 = v7;
    if (error && !v7)
    {
      [MEMORY[0x1E696ABC0] errorWithDomain:@"MFAccountLoaderErrorDomain" code:1 userInfo:0];
      *error = v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (Class)_accountClassForString:(id)string error:(id *)error
{
  stringCopy = string;
  v7 = stringCopy;
  if (!stringCopy)
  {
    goto LABEL_6;
  }

  v8 = NSClassFromString(stringCopy);
  if (v8)
  {
    goto LABEL_11;
  }

  if ([self loadBundleForAccountClassString:v7 error:error])
  {
    v8 = NSClassFromString(v7);
    if (!error)
    {
      goto LABEL_11;
    }
  }

  else
  {
LABEL_6:
    v8 = 0;
    if (!error)
    {
      goto LABEL_11;
    }
  }

  if (!v8)
  {
    if (*error)
    {
      v8 = 0;
    }

    else
    {
      [MEMORY[0x1E696ABC0] errorWithDomain:@"MFAccountLoaderErrorDomain" code:2 userInfo:0];
      *error = v8 = 0;
    }
  }

LABEL_11:
  v9 = v8;

  return v8;
}

+ (BOOL)loadBundleForAccountClassString:(id)string error:(id *)error
{
  v16 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  if (stringCopy)
  {
    v7 = [self _bundlePathForAccountClassString:stringCopy];
    if (v7)
    {
      selfCopy = self;
      objc_sync_enter(selfCopy);
      if ([0 containsObject:v7])
      {
        v9 = 1;
      }

      else
      {
        v10 = [MEMORY[0x1E696AAE8] bundleWithPath:v7];
        v11 = v10;
        if (v10 && [v10 loadAndReturnError:error])
        {
          [0 addObject:v7];
          v12 = MFLogGeneral();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
          {
            v14 = 138412290;
            v15 = v7;
            _os_log_impl(&dword_1B0389000, v12, OS_LOG_TYPE_INFO, "Loaded bundle at %@", &v14, 0xCu);
          }

          v9 = 1;
        }

        else
        {
          v9 = 0;
        }
      }

      objc_sync_exit(selfCopy);
    }

    else if (error)
    {
      [MEMORY[0x1E696ABC0] errorWithDomain:@"MFAccountLoaderErrorDomain" code:3 userInfo:0];
      *error = v9 = 0;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)_bundlePathForAccountClassString:(id)string
{
  stringCopy = string;
  v5 = stringCopy;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__MFAccountLoader__bundlePathForAccountClassString___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (_bundlePathForAccountClassString__onceToken == -1)
  {
    if (stringCopy)
    {
LABEL_3:
      v6 = [_bundlePathForAccountClassString__sAccountClassToBundlePathMap objectForKey:v5];
      goto LABEL_6;
    }
  }

  else
  {
    dispatch_once(&_bundlePathForAccountClassString__onceToken, block);
    if (v5)
    {
      goto LABEL_3;
    }
  }

  v6 = 0;
LABEL_6:

  return v6;
}

void __52__MFAccountLoader__bundlePathForAccountClassString___block_invoke(uint64_t a1)
{
  v45 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v3 = [MEMORY[0x1E696AAE8] bundleForClass:*(a1 + 32)];
  v4 = [v3 bundlePath];
  v28 = [v4 stringByAppendingPathComponent:@"MailServices"];

  v5 = [MEMORY[0x1E696AC08] defaultManager];
  v6 = [v5 contentsOfDirectoryAtPath:v28 error:0];

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = v6;
  v7 = [obj countByEnumeratingWithState:&v35 objects:v44 count:16];
  if (v7)
  {
    v27 = *v36;
    do
    {
      v29 = v7;
      for (i = 0; i != v29; ++i)
      {
        if (*v36 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v35 + 1) + 8 * i);
        v10 = [v28 stringByAppendingPathComponent:v9];
        v11 = MEMORY[0x1E695DEF0];
        v12 = [v10 stringByAppendingPathComponent:@"Info.plist"];
        v30 = [v11 dataWithContentsOfFile:v12];

        v13 = v30;
        if (v30)
        {
          v14 = [MEMORY[0x1E696AE40] propertyListWithData:v30 options:0 format:0 error:0];
          if (v14)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v15 = [v14 objectForKey:@"InstantiableMailAccountClasses"];
              v33 = 0u;
              v34 = 0u;
              v31 = 0u;
              v32 = 0u;
              v16 = v15;
              v25 = v14;
              v17 = [v16 countByEnumeratingWithState:&v31 objects:v43 count:16];
              if (v17)
              {
                v18 = *v32;
                do
                {
                  for (j = 0; j != v17; ++j)
                  {
                    if (*v32 != v18)
                    {
                      objc_enumerationMutation(v16);
                    }

                    v20 = *(*(&v31 + 1) + 8 * j);
                    v21 = [v2 objectForKey:v20];
                    v22 = v21 == 0;

                    if (v22)
                    {
                      [v2 setObject:v10 forKey:v20];
                    }

                    else
                    {
                      v23 = MFLogGeneral();
                      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 138412546;
                        v40 = v9;
                        v41 = 2112;
                        v42 = v20;
                        _os_log_error_impl(&dword_1B0389000, v23, OS_LOG_TYPE_ERROR, "Ignoring MailServices bundle %@ for %@", buf, 0x16u);
                      }
                    }
                  }

                  v17 = [v16 countByEnumeratingWithState:&v31 objects:v43 count:16];
                }

                while (v17);
              }

              v14 = v25;
            }
          }

          v13 = v30;
        }
      }

      v7 = [obj countByEnumeratingWithState:&v35 objects:v44 count:16];
    }

    while (v7);
  }

  v24 = _bundlePathForAccountClassString__sAccountClassToBundlePathMap;
  _bundlePathForAccountClassString__sAccountClassToBundlePathMap = v2;
}

+ (id)accountWithAccountTypeIdentifier:(id)identifier error:(id *)error
{
  v16[6] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v7 = *MEMORY[0x1E6959868];
  v15[0] = *MEMORY[0x1E69597F0];
  v15[1] = v7;
  v16[0] = @"AOLAccount";
  v16[1] = @"GmailAccount";
  v8 = *MEMORY[0x1E6959890];
  v15[2] = *MEMORY[0x1E6959918];
  v15[3] = v8;
  v16[2] = @"YahooAccount";
  v16[3] = @"IMAPAccount";
  v9 = *MEMORY[0x1E69598F0];
  v15[4] = *MEMORY[0x1E69598D8];
  v15[5] = v9;
  v16[4] = @"POPAccount";
  v16[5] = @"SMTPAccount";
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:6];
  v11 = [v10 objectForKeyedSubscript:identifierCopy];
  if (v11 && (v12 = [self _accountClassForString:v11 error:error]) != 0)
  {
    v13 = objc_alloc_init(v12);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end