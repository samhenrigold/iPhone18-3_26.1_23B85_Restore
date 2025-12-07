@interface UAFExpiredAssets
+ (BOOL)assetsExpired:(id)expired error:(id *)error;
+ (BOOL)markAssetsExpired:(id)expired error:(id *)error;
+ (id)expiredTokens:(id *)tokens;
+ (id)loadToken:(id)token error:(id *)error;
+ (id)tokenDir:(id *)dir;
+ (id)tokenFilename:(id)filename;
+ (void)removeToken:(id)token;
@end

@implementation UAFExpiredAssets

+ (id)tokenDir:(id *)dir
{
  v4 = objc_autoreleasePoolPush();
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v12 = 0;
  v6 = [defaultManager URLForDirectory:13 inDomain:1 appropriateForURL:0 create:1 error:&v12];
  v7 = v12;

  if (v6)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    v9 = [v6 URLByAppendingPathComponent:@"UnifiedAssetFramework" isDirectory:1];

    v6 = [v9 URLByAppendingPathComponent:@"ExpiredAssets" isDirectory:1];
  }

  objc_autoreleasePoolPop(v4);
  if (dir)
  {
    v10 = v7;
    *dir = v7;
  }

  return v6;
}

+ (id)tokenFilename:(id)filename
{
  v3 = MEMORY[0x1E696AEC0];
  assetSetName = [filename assetSetName];
  v5 = [v3 stringWithFormat:@"%@.%@", assetSetName, @"uaftoken"];

  return v5;
}

+ (BOOL)markAssetsExpired:(id)expired error:(id *)error
{
  v36 = *MEMORY[0x1E69E9840];
  expiredCopy = expired;
  v6 = [UAFExpiredAssets tokenDir:error];
  if (v6 && !*error)
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v12 = [defaultManager createDirectoryAtURL:v6 withIntermediateDirectories:1 attributes:0 error:error];

    if ((v12 & 1) == 0)
    {
      v7 = UAFGetLogCategory(&UAFLogContextClient);
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_4;
      }

      v20 = *error;
      v28 = 136315906;
      v29 = "+[UAFExpiredAssets markAssetsExpired:error:]";
      v30 = 2114;
      v31 = v6;
      v32 = 2114;
      v33 = expiredCopy;
      v34 = 2114;
      v35 = v20;
      v21 = "%s Failed to create expired assets token dir %{public}@ for token %{public}@: %{public}@";
      v22 = v7;
      v23 = 42;
LABEL_13:
      _os_log_error_impl(&dword_1BCF2C000, v22, OS_LOG_TYPE_ERROR, v21, &v28, v23);
      goto LABEL_4;
    }

    v13 = [UAFExpiredAssets tokenFilename:expiredCopy];
    v9 = [v6 URLByAppendingPathComponent:v13 isDirectory:0];

    v14 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:expiredCopy requiringSecureCoding:1 error:error];
    v7 = v14;
    if (*error)
    {
      v15 = UAFGetLogCategory(&UAFLogContextClient);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = *error;
        v28 = 136315650;
        v29 = "+[UAFExpiredAssets markAssetsExpired:error:]";
        v30 = 2114;
        v31 = expiredCopy;
        v32 = 2114;
        v33 = v16;
        v17 = "%s Failed to archive expired assets token %{public}@: %{public}@";
        v18 = v15;
        v19 = 32;
LABEL_20:
        _os_log_error_impl(&dword_1BCF2C000, v18, OS_LOG_TYPE_ERROR, v17, &v28, v19);
      }
    }

    else
    {
      v25 = [v14 writeToURL:v9 options:0 error:error];
      v26 = UAFGetLogCategory(&UAFLogContextClient);
      v15 = v26;
      if (v25)
      {
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          v28 = 136315650;
          v29 = "+[UAFExpiredAssets markAssetsExpired:error:]";
          v30 = 2114;
          v31 = v9;
          v32 = 2114;
          v33 = expiredCopy;
          _os_log_impl(&dword_1BCF2C000, v15, OS_LOG_TYPE_DEFAULT, "%s Wrote expired assets token %{public}@ to %{public}@", &v28, 0x20u);
        }

        v8 = 1;
        goto LABEL_22;
      }

      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v27 = *error;
        v28 = 136315906;
        v29 = "+[UAFExpiredAssets markAssetsExpired:error:]";
        v30 = 2114;
        v31 = v9;
        v32 = 2114;
        v33 = expiredCopy;
        v34 = 2114;
        v35 = v27;
        v17 = "%s Failed to write expired assets token %{public}@ to %{public}@: %{public}@";
        v18 = v15;
        v19 = 42;
        goto LABEL_20;
      }
    }

    v8 = 0;
LABEL_22:

    goto LABEL_5;
  }

  v7 = UAFGetLogCategory(&UAFLogContextClient);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v24 = *error;
    v28 = 136315650;
    v29 = "+[UAFExpiredAssets markAssetsExpired:error:]";
    v30 = 2114;
    v31 = expiredCopy;
    v32 = 2114;
    v33 = v24;
    v21 = "%s Failed to get expired assets token dir for %{public}@: %{public}@";
    v22 = v7;
    v23 = 32;
    goto LABEL_13;
  }

LABEL_4:
  v8 = 0;
  v9 = v6;
LABEL_5:

  return v8;
}

+ (void)removeToken:(id)token
{
  v15 = *MEMORY[0x1E69E9840];
  tokenCopy = token;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v8 = 0;
  v5 = [defaultManager removeItemAtURL:tokenCopy error:&v8];
  v6 = v8;

  if ((v5 & 1) == 0)
  {
    v7 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v10 = "+[UAFExpiredAssets removeToken:]";
      v11 = 2114;
      v12 = tokenCopy;
      v13 = 2114;
      v14 = v6;
      _os_log_error_impl(&dword_1BCF2C000, v7, OS_LOG_TYPE_ERROR, "%s Failed to remove token at %{public}@: %{public}@", buf, 0x20u);
    }
  }
}

+ (id)loadToken:(id)token error:(id *)error
{
  v26 = *MEMORY[0x1E69E9840];
  tokenCopy = token;
  v6 = objc_autoreleasePoolPush();
  v19 = 0;
  v7 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:tokenCopy options:0 error:&v19];
  v8 = v19;
  if (v7)
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 0;
  }

  if (!v9)
  {
    v10 = v8;
    v11 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v21 = "+[UAFExpiredAssets loadToken:error:]";
      v22 = 2114;
      v23 = tokenCopy;
      v24 = 2114;
      v25 = v10;
      _os_log_error_impl(&dword_1BCF2C000, v11, OS_LOG_TYPE_ERROR, "%s Failed to read expired assets token from %{public}@: %{public}@", buf, 0x20u);
    }

LABEL_14:

    v11 = 0;
    v15 = v10;
    goto LABEL_16;
  }

  v18 = 0;
  v11 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v7 error:&v18];
  v12 = v18;
  if (v11)
  {
    v13 = v12 == 0;
  }

  else
  {
    v13 = 0;
  }

  if (!v13)
  {
    v10 = v12;
    v14 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v21 = "+[UAFExpiredAssets loadToken:error:]";
      v22 = 2114;
      v23 = tokenCopy;
      v24 = 2114;
      v25 = v10;
      _os_log_error_impl(&dword_1BCF2C000, v14, OS_LOG_TYPE_ERROR, "%s Failed to unarchive expired assets token from %{public}@: %{public}@", buf, 0x20u);
    }

    goto LABEL_14;
  }

  v15 = 0;
LABEL_16:
  objc_autoreleasePoolPop(v6);
  if (error)
  {
    v16 = v15;
    *error = v15;
  }

  return v11;
}

+ (BOOL)assetsExpired:(id)expired error:(id *)error
{
  v29 = *MEMORY[0x1E69E9840];
  expiredCopy = expired;
  v6 = [UAFExpiredAssets tokenDir:error];
  if (v6 && !*error)
  {
    v11 = [UAFExpiredAssets tokenFilename:expiredCopy];
    v9 = [v6 URLByAppendingPathComponent:v11 isDirectory:0];

    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    path = [v9 path];
    v14 = [defaultManager fileExistsAtPath:path];

    if (!v14)
    {
      v8 = 0;
      goto LABEL_7;
    }

    v7 = [UAFExpiredAssets loadToken:v9 error:error];
    if (v7 && !*error)
    {
      v15 = [expiredCopy hasIdenticalAssets:v7 includeBootUUID:0];
      v16 = UAFGetLogCategory(&UAFLogContextClient);
      v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
      if (v15)
      {
        if (v17)
        {
          v18 = *error;
          v21 = 136315906;
          v22 = "+[UAFExpiredAssets assetsExpired:error:]";
          v23 = 2114;
          v24 = v9;
          v25 = 2114;
          v26 = expiredCopy;
          v27 = 2114;
          v28 = v18;
          _os_log_impl(&dword_1BCF2C000, v16, OS_LOG_TYPE_DEFAULT, "%s Expired assets token from %{public}@ does match %{public}@: %{public}@", &v21, 0x2Au);
        }

        v8 = 1;
        goto LABEL_6;
      }

      if (v17)
      {
        v20 = *error;
        v21 = 136315906;
        v22 = "+[UAFExpiredAssets assetsExpired:error:]";
        v23 = 2114;
        v24 = v9;
        v25 = 2114;
        v26 = expiredCopy;
        v27 = 2114;
        v28 = v20;
        _os_log_impl(&dword_1BCF2C000, v16, OS_LOG_TYPE_DEFAULT, "%s Expired assets token from %{public}@ does not match %{public}@: %{public}@", &v21, 0x2Au);
      }
    }

    [UAFExpiredAssets removeToken:v9];
    v8 = 0;
  }

  else
  {
    v7 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v19 = *error;
      v21 = 136315650;
      v22 = "+[UAFExpiredAssets assetsExpired:error:]";
      v23 = 2114;
      v24 = expiredCopy;
      v25 = 2114;
      v26 = v19;
      _os_log_error_impl(&dword_1BCF2C000, v7, OS_LOG_TYPE_ERROR, "%s Failed to get expired assets token dir for %{public}@: %{public}@", &v21, 0x20u);
    }

    v8 = 0;
    v9 = v6;
  }

LABEL_6:

LABEL_7:
  return v8;
}

+ (id)expiredTokens:(id *)tokens
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = [UAFExpiredAssets tokenDir:?];
  if (v4 && !*tokens)
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v27 = *MEMORY[0x1E695DBB8];
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v27 count:1];
    v21 = v4;
    v9 = [defaultManager enumeratorAtURL:v4 includingPropertiesForKeys:v8 options:1 errorHandler:0];

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v5 = v9;
    v10 = [v5 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = 0;
      v13 = *v23;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v23 != v13)
          {
            objc_enumerationMutation(v5);
          }

          v15 = *(*(&v22 + 1) + 8 * i);
          pathExtension = [v15 pathExtension];
          v17 = [pathExtension isEqualToString:@"uaftoken"];

          if (v17)
          {
            v18 = [UAFExpiredAssets loadToken:v15 error:tokens];
            if (v18 && !*tokens)
            {
              if (!v12)
              {
                v12 = objc_opt_new();
              }

              [v12 addObject:v18];
            }
          }
        }

        v11 = [v5 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v11);
    }

    else
    {
      v12 = 0;
    }

    v6 = v12;
    v4 = v21;
  }

  else
  {
    v5 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v20 = *tokens;
      *buf = 136315394;
      v29 = "+[UAFExpiredAssets expiredTokens:]";
      v30 = 2114;
      v31 = v20;
      _os_log_error_impl(&dword_1BCF2C000, v5, OS_LOG_TYPE_ERROR, "%s Failed to get expired assets token dir: %{public}@", buf, 0x16u);
    }

    v6 = 0;
  }

  return v6;
}

@end