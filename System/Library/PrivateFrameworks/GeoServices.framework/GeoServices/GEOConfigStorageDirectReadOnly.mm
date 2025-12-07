@interface GEOConfigStorageDirectReadOnly
- (uint64_t)_readStore;
@end

@implementation GEOConfigStorageDirectReadOnly

- (uint64_t)_readStore
{
  v29 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    if (atomic_exchange((result + 40), 1u))
    {
      return 0;
    }

    v2 = *(result + 16);
    v23 = 0;
    v3 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v2 options:1 error:&v23];
    v4 = v23;
    if ([v3 length])
    {
      v22 = 0;
      domain2 = [MEMORY[0x1E696AE40] propertyListWithData:v3 options:1 format:0 error:&v22];
      v6 = v22;

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        os_unfair_lock_lock_with_options();
        objc_storeStrong((v1 + 32), domain2);
        os_unfair_lock_unlock((v1 + 24));
      }

      else
      {
        v10 = GEOGetUserDefaultsLog();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          v11 = *(v1 + 16);
          *buf = 138412546;
          v26 = v11;
          v27 = 2112;
          v28 = v6;
          _os_log_impl(&dword_18660C000, v10, OS_LOG_TYPE_ERROR, "Unable to parse direct store at %@: %@", buf, 0x16u);
        }

        if (+[GEOPlatform isRunningInGeod])
        {
          defaultManager = [MEMORY[0x1E696AC08] defaultManager];
          v13 = *(v1 + 16);
          v21 = v6;
          v14 = [defaultManager removeItemAtURL:v13 error:&v21];
          v4 = v21;

          if ((v14 & 1) == 0)
          {
            v15 = GEOGetUserDefaultsLog();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              v16 = *(v1 + 16);
              *buf = 138412546;
              v26 = v16;
              v27 = 2112;
              v28 = v4;
              _os_log_impl(&dword_18660C000, v15, OS_LOG_TYPE_ERROR, "Unable to remove corrupt store at %@: %@", buf, 0x16u);
            }
          }

          goto LABEL_19;
        }
      }

      v4 = v6;
LABEL_19:

      goto LABEL_20;
    }

    if (!v4)
    {
LABEL_20:
      atomic_store(0, (v1 + 40));
      v17 = 1;
LABEL_21:
      v24 = v17;

      return v24;
    }

    domain = [v4 domain];
    v8 = *MEMORY[0x1E696A250];
    if ([domain isEqual:*MEMORY[0x1E696A250]])
    {
      code = [v4 code];

      if (code == 260)
      {
LABEL_27:
        domain2 = [v4 domain];
        if (![domain2 isEqual:v8])
        {
          goto LABEL_19;
        }

        code2 = [v4 code];

        if (code2 == 257)
        {
          v17 = 0;
          goto LABEL_21;
        }

        goto LABEL_20;
      }
    }

    else
    {
    }

    v18 = GEOGetUserDefaultsLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = *(v1 + 16);
      *buf = 138412546;
      v26 = v19;
      v27 = 2112;
      v28 = v4;
      _os_log_impl(&dword_18660C000, v18, OS_LOG_TYPE_ERROR, "Unable to read direct store at %@: %@", buf, 0x16u);
    }

    goto LABEL_27;
  }

  return result;
}

@end