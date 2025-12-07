@interface GEORequestCountPowerLogger
+ (id)sharedInstance;
- (uint64_t)_readFromDisk;
@end

@implementation GEORequestCountPowerLogger

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_41017[0] != -1)
  {
    dispatch_once(sharedInstance_onceToken_41017, &__block_literal_global_41018);
  }

  v3 = sharedInstance__instance;

  return v3;
}

- (uint64_t)_readFromDisk
{
  v36 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    geo_assert_not_isolated();
    v2 = atomic_load((v1 + 16));
    if (v2)
    {
      return 1;
    }

    v3 = +[GEOKeyBagNotification sharedObject];
    v4 = [v3 canAccessFilesWithProtection:1];

    if (v4)
    {
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __43__GEORequestCountPowerLogger__readFromDisk__block_invoke;
      aBlock[3] = &unk_1E7054D58;
      aBlock[4] = v1;
      v5 = _Block_copy(aBlock);
      v6 = +[GEORequestCountPowerLogger cacheFileURL];
      defaultManager = [MEMORY[0x1E696AC08] defaultManager];
      path = [v6 path];
      v9 = [defaultManager fileExistsAtPath:path];

      if ((v9 & 1) == 0)
      {
        v27 = GEOGetRequestCountPowerLoggerLog();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v33 = v6;
          _os_log_impl(&dword_18660C000, v27, OS_LOG_TYPE_DEBUG, "Resetting counters, cache does not exist at %@", buf, 0xCu);
        }

        v5[2](v5, 0);
        goto LABEL_24;
      }

      v30 = 0;
      v10 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfURL:v6 options:0 error:&v30];
      v11 = v30;
      v12 = v11;
      if (!v10 || v11)
      {
        v28 = GEOGetRequestCountPowerLoggerLog();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v33 = v6;
          v34 = 2112;
          v35 = v12;
          _os_log_impl(&dword_18660C000, v28, OS_LOG_TYPE_ERROR, "Resetting counters, failed to read %@: %@", buf, 0x16u);
        }

        v5[2](v5, 0);
        goto LABEL_23;
      }

      v13 = MEMORY[0x1E695DFD8];
      v14 = objc_opt_class();
      v15 = objc_opt_class();
      v16 = objc_opt_class();
      v17 = [v13 setWithObjects:{v14, v15, v16, objc_opt_class(), 0}];
      v29 = 0;
      v18 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClasses:v17 fromData:v10 error:&v29];
      v12 = v29;
      v19 = (v5[2])(v5, v18);
      v20 = GEOGetRequestCountPowerLoggerLog();
      v21 = v20;
      if (v19)
      {
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          v22 = "Successfuly read counters";
          v23 = v21;
          v24 = OS_LOG_TYPE_DEBUG;
          v25 = 2;
LABEL_21:
          _os_log_impl(&dword_18660C000, v23, v24, v22, buf, v25);
        }
      }

      else if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v33 = v6;
        v34 = 2112;
        v35 = v12;
        v22 = "Resetting counters, failed to unarchive %@: %@";
        v23 = v21;
        v24 = OS_LOG_TYPE_ERROR;
        v25 = 22;
        goto LABEL_21;
      }

LABEL_23:
LABEL_24:

      return 1;
    }

    v26 = GEOGetRequestCountPowerLoggerLog();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_18660C000, v26, OS_LOG_TYPE_INFO, "Refusing to read counters, device has not been unlocked.", buf, 2u);
    }

    return 0;
  }

  return result;
}

@end