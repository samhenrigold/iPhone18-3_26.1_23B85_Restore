@interface SUScriptAccessSecurity
- (BOOL)_canAccessType:(id)type inFrame:(id)frame error:(id *)error;
- (BOOL)_canAccessType:(id)type withURL:(id)l inFrame:(id)frame error:(id *)error;
- (BOOL)_url:(id)_url matchesExpressions:(id)expressions;
- (BOOL)_urls:(id)_urls matchPatternStrings:(id)strings;
- (id)_accessDictionaryForType:(id)type;
- (id)_copyResourceURLsForWebFrame:(id)frame;
@end

@implementation SUScriptAccessSecurity

- (id)_accessDictionaryForType:(id)type
{
  v4 = [MEMORY[0x1E69D49F8] contextWithBagType:0];
  v5 = [objc_msgSend(objc_msgSend(MEMORY[0x1E69E47F8] "sharedCache")];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  result = 0;
  if (isKindOfClass)
  {
    v8 = [v5 objectForKey:type];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      return v8;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (BOOL)_canAccessType:(id)type inFrame:(id)frame error:(id *)error
{
  if ([(SUScriptAccessSecurity *)self _accessDictionaryForType:type])
  {
    v8 = [(SUScriptAccessSecurity *)self _copyResourceURLsForWebFrame:frame];
    v9 = [(SUScriptAccessSecurity *)self _urls:v8 matchPatternStrings:&unk_1F41EAA78];

    if (!error)
    {
      return v9;
    }
  }

  else
  {
    v9 = 0;
    if (!error)
    {
      return v9;
    }
  }

  if (!v9)
  {
    *error = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69D4C28] code:107 userInfo:0];
  }

  return v9;
}

- (BOOL)_canAccessType:(id)type withURL:(id)l inFrame:(id)frame error:(id *)error
{
  selfCopy = self;
  v21 = *MEMORY[0x1E69E9840];
  v10 = [(SUScriptAccessSecurity *)self _accessDictionaryForType:type];
  if (!v10)
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
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v16;
    }

    else
    {
      v16 &= 2u;
    }

    if (v16)
    {
      v19 = 138412290;
      v20 = objc_opt_class();
      selfCopy = _os_log_send_and_compose_impl(v16, 0, 0, 0, &dword_1C21AF000, oSLogObject, 0, "%@: Rejecting access: no access rules", &v19, 12);
      if (!selfCopy)
      {
        goto LABEL_14;
      }

      [MEMORY[0x1E696AEC0] stringWithCString:selfCopy encoding:4];
      free(selfCopy);
      SSFileLog();
    }

LABEL_13:
    LOBYTE(selfCopy) = 0;
    goto LABEL_14;
  }

  v11 = v10;
  v12 = [v10 objectForKey:@"request-patterns"];
  if (![selfCopy _urls:objc_msgSend(MEMORY[0x1E695DEC8] matchPatternStrings:{"arrayWithObjects:", l, 0), v12}])
  {
    goto LABEL_13;
  }

  v13 = [selfCopy _copyResourceURLsForWebFrame:frame];
  LOBYTE(selfCopy) = [selfCopy _urls:v13 matchPatternStrings:{objc_msgSend(v11, "objectForKey:", @"origin-patterns"}];

LABEL_14:
  if (error && (selfCopy & 1) == 0)
  {
    *error = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69D4C28] code:107 userInfo:0];
  }

  return selfCopy;
}

- (id)_copyResourceURLsForWebFrame:(id)frame
{
  v17 = *MEMORY[0x1E69E9840];
  dataSource = [frame dataSource];
  v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{objc_msgSend(objc_msgSend(dataSource, "mainResource"), "URL"), 0}];
  subresources = [dataSource subresources];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [subresources countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(subresources);
        }

        v10 = [*(*(&v12 + 1) + 8 * v9) URL];
        if (v10)
        {
          [v4 addObject:v10];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [subresources countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

- (BOOL)_url:(id)_url matchesExpressions:(id)expressions
{
  v17 = *MEMORY[0x1E69E9840];
  absoluteString = [_url absoluteString];
  v6 = [absoluteString length];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = [expressions countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    while (2)
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(expressions);
        }

        if ([*(*(&v12 + 1) + 8 * v10) rangeOfFirstMatchInString:absoluteString options:0 range:{0, v6}] != 0x7FFFFFFFFFFFFFFFLL)
        {
          LOBYTE(v7) = 1;
          return v7;
        }

        ++v10;
      }

      while (v8 != v10);
      v7 = [expressions countByEnumeratingWithState:&v12 objects:v16 count:16];
      v8 = v7;
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  return v7;
}

- (BOOL)_urls:(id)_urls matchPatternStrings:(id)strings
{
  v45 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v8 = [strings countByEnumeratingWithState:&v35 objects:v44 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v36;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v36 != v10)
          {
            objc_enumerationMutation(strings);
          }

          v12 = [objc_alloc(MEMORY[0x1E696AE70]) initWithPattern:*(*(&v35 + 1) + 8 * i) options:1 error:0];
          if (v12)
          {
            v13 = v12;
            [v7 addObject:v12];
          }
        }

        v9 = [strings countByEnumeratingWithState:&v35 objects:v44 count:16];
      }

      while (v9);
    }

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v14 = [_urls countByEnumeratingWithState:&v31 objects:v43 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = 0;
      v17 = *v32;
      while (2)
      {
        v18 = 0;
        v19 = v16;
        v16 += v15;
        do
        {
          if (*v32 != v17)
          {
            objc_enumerationMutation(_urls);
          }

          v20 = *(*(&v31 + 1) + 8 * v18);
          if (![(SUScriptAccessSecurity *)self _url:v20 matchesExpressions:v7])
          {
            mEMORY[0x1E69D4938] = [MEMORY[0x1E69D4938] sharedConfig];
            shouldLog = [mEMORY[0x1E69D4938] shouldLog];
            if ([mEMORY[0x1E69D4938] shouldLogToDisk])
            {
              LODWORD(v23) = shouldLog | 2;
            }

            else
            {
              LODWORD(v23) = shouldLog;
            }

            oSLogObject = [mEMORY[0x1E69D4938] OSLogObject];
            if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
            {
              v23 = v23;
            }

            else
            {
              v23 &= 2u;
            }

            if (v23)
            {
              v25 = objc_opt_class();
              v39 = 138412546;
              v40 = v25;
              v41 = 2112;
              v42 = v20;
              v26 = _os_log_send_and_compose_impl(v23, 0, 0, 0, &dword_1C21AF000, oSLogObject, 0, "%@: Rejecting URL: %@", &v39, 22);
              if (v26)
              {
                v27 = v26;
                v28 = [MEMORY[0x1E696AEC0] stringWithCString:v26 encoding:4];
                free(v27);
                v30 = v28;
                SSFileLog();
              }
            }

            v16 = v19;
            goto LABEL_32;
          }

          ++v19;
          ++v18;
        }

        while (v15 != v18);
        v15 = [_urls countByEnumeratingWithState:&v31 objects:v43 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v16 = 0;
    }

LABEL_32:
  }

  else
  {
    v16 = 0;
  }

  return v16 == [_urls count];
}

@end