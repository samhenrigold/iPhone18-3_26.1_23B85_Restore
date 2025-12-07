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
  result = [MFAccountLoader accountClassForPersistentAccount:account error:error];
  if (result)
  {
    v6 = [[result alloc] initWithPersistentAccount:account];

    return v6;
  }

  return result;
}

+ (Class)accountClassForPersistentAccount:(id)account error:(id *)error
{
  if (!account)
  {
    return 0;
  }

  v6 = [self _accountClassStringWithPersistentAccount:? error:?];
  if (!v6)
  {
    return 0;
  }

  return [self _accountClassForString:v6 error:error];
}

+ (id)_accountClassStringWithPersistentAccount:(id)account error:(id *)error
{
  if (!account)
  {
    return 0;
  }

  result = [account accountPropertyForKey:@"Class"];
  if (error)
  {
    if (!result)
    {
      v6 = [MEMORY[0x277CCA9B8] errorWithDomain:@"MFAccountLoaderErrorDomain" code:1 userInfo:0];
      result = 0;
      *error = v6;
    }
  }

  return result;
}

+ (Class)_accountClassForString:(id)string error:(id *)error
{
  if (!string)
  {
    goto LABEL_6;
  }

  result = NSClassFromString(string);
  if (result)
  {
    return result;
  }

  if ([self loadBundleForAccountClassString:string error:error])
  {
    result = NSClassFromString(string);
    if (!error)
    {
      return result;
    }
  }

  else
  {
LABEL_6:
    result = 0;
    if (!error)
    {
      return result;
    }
  }

  if (!result)
  {
    if (*error)
    {
      return 0;
    }

    else
    {
      v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"MFAccountLoaderErrorDomain" code:2 userInfo:0];
      result = 0;
      *error = v8;
    }
  }

  return result;
}

+ (BOOL)loadBundleForAccountClassString:(id)string error:(id *)error
{
  v14 = *MEMORY[0x277D85DE8];
  if (!string)
  {
    return 0;
  }

  v6 = [self _bundlePathForAccountClassString:?];
  if (!v6)
  {
    if (error)
    {
      v8 = 0;
      *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"MFAccountLoaderErrorDomain" code:3 userInfo:0];
      return v8;
    }

    return 0;
  }

  v7 = v6;
  objc_sync_enter(self);
  if ([0 containsObject:v7])
  {
    v8 = 1;
  }

  else
  {
    v9 = [MEMORY[0x277CCA8D8] bundleWithPath:v7];
    if (v9 && [v9 loadAndReturnError:error])
    {
      [0 addObject:v7];
      v10 = MFLogGeneral();
      v8 = 1;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v12 = 138412290;
        v13 = v7;
        _os_log_impl(&dword_258BDA000, v10, OS_LOG_TYPE_INFO, "Loaded bundle at %@", &v12, 0xCu);
      }
    }

    else
    {
      v8 = 0;
    }
  }

  objc_sync_exit(self);
  return v8;
}

+ (id)_bundlePathForAccountClassString:(id)string
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__MFAccountLoader__bundlePathForAccountClassString___block_invoke;
  block[3] = &unk_2798B61C0;
  block[4] = self;
  if (_bundlePathForAccountClassString__onceToken == -1)
  {
    if (string)
    {
      return [_bundlePathForAccountClassString__sAccountClassToBundlePathMap objectForKey:string];
    }
  }

  else
  {
    dispatch_once(&_bundlePathForAccountClassString__onceToken, block);
    if (string)
    {
      return [_bundlePathForAccountClassString__sAccountClassToBundlePathMap objectForKey:string];
    }
  }

  return 0;
}

void *__52__MFAccountLoader__bundlePathForAccountClassString___block_invoke(uint64_t a1)
{
  v35 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v19 = [objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8] bundleForClass:{*(a1 + 32)), "bundlePath"), "stringByAppendingPathComponent:", @"MailServices"}];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = [objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")];
  result = [obj countByEnumeratingWithState:&v25 objects:v34 count:16];
  v20 = result;
  if (result)
  {
    v18 = *v26;
    do
    {
      v4 = 0;
      do
      {
        if (*v26 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v25 + 1) + 8 * v4);
        v6 = [v19 stringByAppendingPathComponent:v5];
        v7 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:{objc_msgSend(v6, "stringByAppendingPathComponent:", @"Info.plist"}];
        if (v7)
        {
          v8 = [MEMORY[0x277CCAC58] propertyListWithData:v7 options:0 format:0 error:0];
          if (v8)
          {
            v9 = v8;
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v10 = [v9 objectForKey:@"InstantiableMailAccountClasses"];
              v21 = 0u;
              v22 = 0u;
              v23 = 0u;
              v24 = 0u;
              v11 = [v10 countByEnumeratingWithState:&v21 objects:v33 count:16];
              if (v11)
              {
                v12 = v11;
                v13 = *v22;
                do
                {
                  for (i = 0; i != v12; ++i)
                  {
                    if (*v22 != v13)
                    {
                      objc_enumerationMutation(v10);
                    }

                    v15 = *(*(&v21 + 1) + 8 * i);
                    if ([v2 objectForKey:v15])
                    {
                      v16 = MFLogGeneral();
                      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 138412546;
                        v30 = v5;
                        v31 = 2112;
                        v32 = v15;
                        _os_log_error_impl(&dword_258BDA000, v16, OS_LOG_TYPE_ERROR, "Ignoring MailServices bundle %@ for %@", buf, 0x16u);
                      }
                    }

                    else
                    {
                      [v2 setObject:v6 forKey:v15];
                    }
                  }

                  v12 = [v10 countByEnumeratingWithState:&v21 objects:v33 count:16];
                }

                while (v12);
              }
            }
          }
        }

        v4 = v4 + 1;
      }

      while (v4 != v20);
      result = [obj countByEnumeratingWithState:&v25 objects:v34 count:16];
      v20 = result;
    }

    while (result);
  }

  _bundlePathForAccountClassString__sAccountClassToBundlePathMap = v2;
  return result;
}

+ (id)accountWithAccountTypeIdentifier:(id)identifier error:(id *)error
{
  v12[6] = *MEMORY[0x277D85DE8];
  v6 = *MEMORY[0x277CB8C40];
  v11[0] = *MEMORY[0x277CB8B98];
  v11[1] = v6;
  v12[0] = @"AOLAccount";
  v12[1] = @"GmailAccount";
  v7 = *MEMORY[0x277CB8C60];
  v11[2] = *MEMORY[0x277CB8D38];
  v11[3] = v7;
  v12[2] = @"YahooAccount";
  v12[3] = @"IMAPAccount";
  v8 = *MEMORY[0x277CB8CF8];
  v11[4] = *MEMORY[0x277CB8CD8];
  v11[5] = v8;
  v12[4] = @"POPAccount";
  v12[5] = @"SMTPAccount";
  v9 = [objc_msgSend(MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:{6), "objectForKeyedSubscript:", identifier}];
  if (v9)
  {
    v9 = [self _accountClassForString:v9 error:error];
    if (v9)
    {
      v9 = objc_alloc_init(v9);
    }
  }

  return v9;
}

@end