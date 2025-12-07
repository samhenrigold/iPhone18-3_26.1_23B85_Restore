@interface SULoadSectionsOperation
- (BOOL)_loadSectionsFromCacheForVersion:(id)version;
- (BOOL)_loadSectionsFromNetworkWithDictionary:(id)dictionary;
- (BOOL)shouldUseCache;
- (NSString)activeSectionVersionString;
- (SULoadSectionsOperation)init;
- (SULoadSectionsOperation)initWithClientInterface:(id)interface;
- (SUSectionsResponse)sectionsResponse;
- (id)_cachePathForVersion:(id)version create:(BOOL)create;
- (void)_setSectionsResponse:(id)response;
- (void)_writeSectionsResponseToCache:(id)cache forVersion:(id)version;
- (void)dealloc;
- (void)run;
- (void)setActiveSectionVersionString:(id)string;
- (void)setShouldUseCache:(BOOL)cache;
@end

@implementation SULoadSectionsOperation

- (SULoadSectionsOperation)init
{
  v3 = +[SUClientDispatch clientInterface];

  return [(SULoadSectionsOperation *)self initWithClientInterface:v3];
}

- (SULoadSectionsOperation)initWithClientInterface:(id)interface
{
  v6.receiver = self;
  v6.super_class = SULoadSectionsOperation;
  v4 = [(SULoadSectionsOperation *)&v6 init];
  if (v4)
  {
    v4->_clientInterface = interface;
    v4->_shouldUseCache = 1;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SULoadSectionsOperation;
  [(SULoadSectionsOperation *)&v3 dealloc];
}

- (NSString)activeSectionVersionString
{
  [(SULoadSectionsOperation *)self lock];
  v3 = self->_activeSectionVersionString;
  [(SULoadSectionsOperation *)self unlock];
  return v3;
}

- (SUSectionsResponse)sectionsResponse
{
  [(SULoadSectionsOperation *)self lock];
  v3 = self->_sectionsResponse;
  [(SULoadSectionsOperation *)self unlock];
  return v3;
}

- (void)setActiveSectionVersionString:(id)string
{
  [(SULoadSectionsOperation *)self lock];
  activeSectionVersionString = self->_activeSectionVersionString;
  if (activeSectionVersionString != string)
  {

    self->_activeSectionVersionString = [string copy];
  }

  [(SULoadSectionsOperation *)self unlock];
}

- (void)setShouldUseCache:(BOOL)cache
{
  [(SULoadSectionsOperation *)self lock];
  self->_shouldUseCache = cache;

  [(SULoadSectionsOperation *)self unlock];
}

- (BOOL)shouldUseCache
{
  [(SULoadSectionsOperation *)self lock];
  shouldUseCache = self->_shouldUseCache;
  [(SULoadSectionsOperation *)self unlock];
  return shouldUseCache;
}

- (void)run
{
  v44 = *MEMORY[0x1E69E9840];
  v37 = 0;
  v3 = [MEMORY[0x1E69D49F8] contextWithBagType:0];
  if (([(SULoadSectionsOperation *)self loadURLBagWithContext:v3 returningError:&v37]& 1) != 0)
  {
    Current = CFAbsoluteTimeGetCurrent();
    mEMORY[0x1E69D4938] = [MEMORY[0x1E69D4938] sharedConfig];
    shouldLog = [mEMORY[0x1E69D4938] shouldLog];
    if ([mEMORY[0x1E69D4938] shouldLogToDisk])
    {
      LODWORD(v7) = shouldLog | 2;
    }

    else
    {
      LODWORD(v7) = shouldLog;
    }

    oSLogObject = [mEMORY[0x1E69D4938] OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v7;
    }

    else
    {
      v7 &= 2u;
    }

    if (v7)
    {
      v9 = objc_opt_class();
      v38 = 138412546;
      v39 = v9;
      v40 = 2048;
      v41 = Current;
      v10 = _os_log_send_and_compose_impl(v7, 0, 0, 0, &dword_1C21AF000, oSLogObject, 0, "%@: Loading footer sections [%.2f]", &v38, 22);
      if (v10)
      {
        v11 = v10;
        v12 = [MEMORY[0x1E696AEC0] stringWithCString:v10 encoding:4];
        free(v11);
        v34 = v12;
        SSFileLog();
      }
    }

    sharedCache = [objc_msgSend(objc_msgSend(MEMORY[0x1E69E47F8] sharedCache];
    objc_opt_class();
    v16 = (objc_opt_isKindOfClass() & 1) == 0 || (v14 = -[SUClientInterface clientIdentifier](self->_clientInterface, "clientIdentifier")) == 0 || (v15 = [sharedCache objectForKey:v14]) == 0 || -[SULoadSectionsOperation _loadSectionsFromNetworkWithDictionary:](self, "_loadSectionsFromNetworkWithDictionary:", v15);
    v25 = CFAbsoluteTimeGetCurrent();
    mEMORY[0x1E69D4938]2 = [MEMORY[0x1E69D4938] sharedConfig];
    shouldLog2 = [mEMORY[0x1E69D4938]2 shouldLog];
    if ([mEMORY[0x1E69D4938]2 shouldLogToDisk])
    {
      LODWORD(v28) = shouldLog2 | 2;
    }

    else
    {
      LODWORD(v28) = shouldLog2;
    }

    oSLogObject2 = [mEMORY[0x1E69D4938]2 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
    {
      v28 = v28;
    }

    else
    {
      v28 &= 2u;
    }

    if (v28)
    {
      v30 = objc_opt_class();
      v38 = 138412802;
      v39 = v30;
      v40 = 2048;
      v41 = v25;
      v42 = 2048;
      v43 = v25 - Current;
      LODWORD(v36) = 32;
      v31 = _os_log_send_and_compose_impl(v28, 0, 0, 0, &dword_1C21AF000, oSLogObject2, 0, "%@: Loaded footer sections: [%.2f, %.2fs]", &v38, v36);
      if (v31)
      {
        v32 = v31;
        v33 = [MEMORY[0x1E696AEC0] stringWithCString:v31 encoding:4];
        free(v32);
        v35 = v33;
        SSFileLog();
      }
    }
  }

  else
  {
    mEMORY[0x1E69D4938]3 = [MEMORY[0x1E69D4938] sharedConfig];
    shouldLog3 = [mEMORY[0x1E69D4938]3 shouldLog];
    if ([mEMORY[0x1E69D4938]3 shouldLogToDisk])
    {
      LODWORD(v19) = shouldLog3 | 2;
    }

    else
    {
      LODWORD(v19) = shouldLog3;
    }

    oSLogObject3 = [mEMORY[0x1E69D4938]3 OSLogObject];
    if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
    {
      v19 = v19;
    }

    else
    {
      v19 &= 2u;
    }

    if (v19)
    {
      v21 = objc_opt_class();
      v38 = 138412290;
      v39 = v21;
      v22 = _os_log_send_and_compose_impl(v19, 0, 0, 0, &dword_1C21AF000, oSLogObject3, 0, "%@: Could not load URL bag", &v38, 12);
      if (v22)
      {
        v23 = v22;
        v24 = [MEMORY[0x1E696AEC0] stringWithCString:v22 encoding:4];
        free(v23);
        v34 = v24;
        SSFileLog();
      }
    }

    [(SULoadSectionsOperation *)self setError:v37, v34];
    v16 = 0;
  }

  [(SULoadSectionsOperation *)self setSuccess:v16, v35];
}

- (id)_cachePathForVersion:(id)version create:(BOOL)create
{
  createCopy = create;
  v6 = +[SUSectionsResponse sectionsCacheDirectory];
  if (!v6)
  {
    return 0;
  }

  v7 = [v6 stringByAppendingPathComponent:version];
  if (createCopy && ![MEMORY[0x1E696AC08] ensureDirectoryExists:v7])
  {
    return 0;
  }

  return v7;
}

- (BOOL)_loadSectionsFromCacheForVersion:(id)version
{
  v4 = [(SULoadSectionsOperation *)self _cachePathForVersion:version create:0];
  if (!v4)
  {
    return 0;
  }

  v5 = [[SUSectionsResponse alloc] initWithClientInterface:self->_clientInterface cacheDirectory:v4];
  [(SULoadSectionsOperation *)self _setSectionsResponse:v5];
  v6 = v5 != 0;
  if (v5)
  {
    [SUSectionsResponse setLastCachedVersionIdentifier:[(SUSectionsResponse *)v5 versionString]];
  }

  return v6;
}

- (BOOL)_loadSectionsFromNetworkWithDictionary:(id)dictionary
{
  v49 = *MEMORY[0x1E69E9840];
  stringValue = [dictionary objectForKey:@"version"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    stringValue = [stringValue stringValue];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      stringValue = 0;
      goto LABEL_9;
    }
  }

  if (!stringValue)
  {
LABEL_9:
    v6 = 0;
    goto LABEL_11;
  }

  if ([(SULoadSectionsOperation *)self shouldUseCache])
  {
    v6 = 1;
    if ([(SULoadSectionsOperation *)self _loadSectionsFromCacheForVersion:stringValue])
    {
      return v6;
    }
  }

  else
  {
    v6 = 1;
  }

LABEL_11:
  mEMORY[0x1E69D4938] = [MEMORY[0x1E69D4938] sharedConfig];
  shouldLog = [mEMORY[0x1E69D4938] shouldLog];
  if ([mEMORY[0x1E69D4938] shouldLogToDisk])
  {
    LODWORD(v9) = shouldLog | 2;
  }

  else
  {
    LODWORD(v9) = shouldLog;
  }

  oSLogObject = [mEMORY[0x1E69D4938] OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v9;
  }

  else
  {
    v9 &= 2u;
  }

  if (v9)
  {
    v47 = 138412290;
    v48 = objc_opt_class();
    v11 = _os_log_send_and_compose_impl(v9, 0, 0, 0, &dword_1C21AF000, oSLogObject, 0, "%@: Missed section cache, loading from server", &v47, 12);
    if (v11)
    {
      v12 = v11;
      v13 = [MEMORY[0x1E696AEC0] stringWithCString:v11 encoding:4];
      free(v12);
      v40 = v13;
      SSFileLog();
    }
  }

  v14 = [dictionary objectForKey:{@"url", v40}];
  if (v14)
  {
    v15 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v14];
    if (v15)
    {
      v16 = v15;
      v17 = [[SULoadNetworkSectionsOperation alloc] initWithURL:v15 clientInterface:self->_clientInterface];
      [(SULoadNetworkSectionsOperation *)v17 setExpectedVersionString:stringValue];
      v46 = 0;
      if (([(SULoadSectionsOperation *)self runSubOperation:v17 returningError:&v46]& 1) != 0)
      {
        sectionsResponse = [(SULoadNetworkSectionsOperation *)v17 sectionsResponse];
        standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
        versionString = [(SUSectionsResponse *)sectionsResponse versionString];
        if ([(NSString *)versionString isEqualToString:+[SUSectionsResponse lastCachedVersionIdentifier]])
        {
          mEMORY[0x1E69D4938]2 = [MEMORY[0x1E69D4938] sharedConfig];
          shouldLog2 = [mEMORY[0x1E69D4938]2 shouldLog];
          if ([mEMORY[0x1E69D4938]2 shouldLogToDisk])
          {
            shouldLog2 |= 2u;
          }

          oSLogObject2 = [mEMORY[0x1E69D4938]2 OSLogObject];
          if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEBUG))
          {
            v23 = shouldLog2;
          }

          else
          {
            v23 = shouldLog2 & 2;
          }

          if (v23)
          {
            v24 = objc_opt_class();
            v47 = 138412290;
            v48 = v24;
            LODWORD(v42) = 12;
            v25 = _os_log_send_and_compose_impl(v23, 0, 0, 0, &dword_1C21AF000, oSLogObject2, 2, "%@: Ignoring reset ordering because version matches what we saw last", &v47, v42);
            if (v25)
            {
              v26 = v25;
              v27 = [MEMORY[0x1E696AEC0] stringWithCString:v25 encoding:4];
              free(v26);
              v41 = v27;
              SSFileLog();
            }
          }

          [(SUSectionsResponse *)sectionsResponse setShouldResetUserOrdering:0, v41];
          v28 = versionString;
        }

        else
        {
          shouldResetUserOrdering = [(SUSectionsResponse *)sectionsResponse shouldResetUserOrdering];
          v30 = [standardUserDefaults stringForKey:@"SULastSectionsStoreFront"];
          v31 = [objc_msgSend(MEMORY[0x1E69D48B0] "currentDevice")];
          v44 = v31;
          if (v30 && ([v30 isEqualToString:v31] & 1) == 0)
          {
            mEMORY[0x1E69D4938]3 = [MEMORY[0x1E69D4938] sharedConfig];
            shouldLog3 = [mEMORY[0x1E69D4938]3 shouldLog];
            if ([mEMORY[0x1E69D4938]3 shouldLogToDisk])
            {
              shouldLog3 |= 2u;
            }

            oSLogObject3 = [mEMORY[0x1E69D4938]3 OSLogObject];
            if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEBUG))
            {
              v34 = shouldLog3;
            }

            else
            {
              v34 = shouldLog3 & 2;
            }

            if (v34)
            {
              v35 = objc_opt_class();
              v47 = 138412290;
              v48 = v35;
              LODWORD(v42) = 12;
              v36 = _os_log_send_and_compose_impl(v34, 0, 0, 0, &dword_1C21AF000, oSLogObject3, 2, "%@: Resetting user ordering because storefront changed", &v47, v42);
              if (v36)
              {
                v37 = v36;
                v38 = [MEMORY[0x1E696AEC0] stringWithCString:v36 encoding:4];
                free(v37);
                v41 = v38;
                SSFileLog();
              }
            }

            shouldResetUserOrdering = 1;
          }

          [(SUSectionsResponse *)sectionsResponse setShouldResetUserOrdering:shouldResetUserOrdering, v41];
          v28 = versionString;
          if (versionString)
          {
            [SUSectionsResponse setLastCachedVersionIdentifier:versionString];
          }

          if (v44)
          {
            [standardUserDefaults setObject:v44 forKey:@"SULastSectionsStoreFront"];
          }

          [standardUserDefaults synchronize];
        }

        [(SULoadSectionsOperation *)self _setSectionsResponse:sectionsResponse];
        if ([(NSArray *)[(SUSectionsResponse *)sectionsResponse allSections] count])
        {
          if ((v6 & -[SUSectionsResponse isCacheable](sectionsResponse, "isCacheable")) == 1 && (!v28 || [stringValue isEqualToString:v28]))
          {
            [(SULoadSectionsOperation *)self _writeSectionsResponseToCache:sectionsResponse forVersion:stringValue];
          }

          LOBYTE(v6) = 1;
          goto LABEL_58;
        }
      }

      else
      {
        [(SULoadSectionsOperation *)self setError:v46];
      }

      LOBYTE(v6) = 0;
LABEL_58:

      return v6;
    }
  }

  LOBYTE(v6) = 0;
  return v6;
}

- (void)_setSectionsResponse:(id)response
{
  [(SULoadSectionsOperation *)self lock];
  sectionsResponse = self->_sectionsResponse;
  if (sectionsResponse != response)
  {

    self->_sectionsResponse = response;
  }

  [(SULoadSectionsOperation *)self unlock];
}

- (void)_writeSectionsResponseToCache:(id)cache forVersion:(id)version
{
  v38 = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(MEMORY[0x1E696AC08]);
  selfCopy = self;
  activeSectionVersionString = [(SULoadSectionsOperation *)self activeSectionVersionString];
  v7 = +[SUSectionsResponse sectionsCacheDirectory];
  v28 = v5;
  v8 = [v5 contentsOfDirectoryAtPath:v7 error:0];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v30;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v30 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v29 + 1) + 8 * i);
        if (([v13 isEqualToString:activeSectionVersionString] & 1) == 0)
        {
          mEMORY[0x1E69D4938] = [MEMORY[0x1E69D4938] sharedConfig];
          shouldLog = [mEMORY[0x1E69D4938] shouldLog];
          if ([mEMORY[0x1E69D4938] shouldLogToDisk])
          {
            LODWORD(v16) = shouldLog | 2;
          }

          else
          {
            LODWORD(v16) = shouldLog;
          }

          oSLogObject = [mEMORY[0x1E69D4938] OSLogObject];
          if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
          {
            v16 = v16;
          }

          else
          {
            v16 &= 2u;
          }

          if (v16)
          {
            v18 = objc_opt_class();
            v33 = 138412546;
            v34 = v18;
            v35 = 2112;
            v36 = v13;
            LODWORD(v24) = 22;
            v19 = _os_log_send_and_compose_impl(v16, 0, 0, 0, &dword_1C21AF000, oSLogObject, 2, "%@: Removing section cache: %@", &v33, v24);
            if (v19)
            {
              v20 = v19;
              v21 = [MEMORY[0x1E696AEC0] stringWithCString:v19 encoding:4];
              free(v20);
              v23 = v21;
              SSFileLog();
            }
          }

          [v28 removeItemAtPath:objc_msgSend(v7 error:{"stringByAppendingPathComponent:", v13, v23), 0}];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v10);
  }

  v22 = [(SULoadSectionsOperation *)selfCopy _cachePathForVersion:version create:1];
  if (v22)
  {
    [cache writeToCacheDirectory:v22 error:0];
  }
}

@end