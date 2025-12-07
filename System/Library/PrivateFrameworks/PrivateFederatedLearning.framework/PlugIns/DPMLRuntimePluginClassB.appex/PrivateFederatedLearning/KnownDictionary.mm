@interface KnownDictionary
+ (id)processTokens:(id)tokens knownTokensFile:(id)file unknownTokens:(id)unknownTokens error:(id *)error;
+ (void)recordData:(id)data baseKey:(id)key metadata:(id)metadata;
@end

@implementation KnownDictionary

+ (id)processTokens:(id)tokens knownTokensFile:(id)file unknownTokens:(id)unknownTokens error:(id *)error
{
  tokensCopy = tokens;
  fileCopy = file;
  unknownTokensCopy = unknownTokens;
  v11 = [[SqliteClient alloc] initWithFile:fileCopy error:error];
  if (v11)
  {
    v29 = fileCopy;
    v31 = +[NSMutableArray array];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v30 = tokensCopy;
    v12 = tokensCopy;
    v13 = [v12 countByEnumeratingWithState:&v33 objects:v41 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v34;
      v16 = 0xFFFFFFFFLL;
      do
      {
        v17 = 0;
        do
        {
          if (*v34 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v18 = *(*(&v33 + 1) + 8 * v17);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && [v18 length])
          {
            v19 = [(SqliteClient *)v11 findWord:v18 error:error];
            if (v16 == v19)
            {
              if (unknownTokensCopy)
              {
                [unknownTokensCopy addObject:v18];
              }
            }

            else
            {
              v20 = v19;
              v21 = v12;
              v22 = v16;
              v23 = v11;
              errorCopy = error;
              v25 = +[_PFLLog extension];
              if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412546;
                v38 = v18;
                v39 = 1024;
                v40 = v20;
                _os_log_debug_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "Index of %@ is %i", buf, 0x12u);
              }

              v26 = [NSNumber numberWithInt:v20];
              [v31 addObject:v26];

              error = errorCopy;
              v11 = v23;
              v16 = v22;
              v12 = v21;
            }
          }

          v17 = v17 + 1;
        }

        while (v14 != v17);
        v14 = [v12 countByEnumeratingWithState:&v33 objects:v41 count:16];
      }

      while (v14);
    }

    fileCopy = v29;
    tokensCopy = v30;
  }

  else
  {
    v27 = +[_PFLLog extension];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      sub_10001C788(v27);
    }

    if (error)
    {
      [_DPMLRuntimeError errorWithCode:300 description:@"Failed to load sqlite DB."];
      *error = v31 = 0;
    }

    else
    {
      v31 = 0;
    }
  }

  return v31;
}

+ (void)recordData:(id)data baseKey:(id)key metadata:(id)metadata
{
  keyCopy = key;
  LODWORD(data) = [FedStatsDataEncoder record:data metadata:metadata baseKey:keyCopy];
  v8 = +[_PFLLog extension];
  v9 = v8;
  if (data)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v10 = 138412290;
      v11 = keyCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Record %@ data succeed.", &v10, 0xCu);
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_10001C7CC(v9);
  }
}

@end