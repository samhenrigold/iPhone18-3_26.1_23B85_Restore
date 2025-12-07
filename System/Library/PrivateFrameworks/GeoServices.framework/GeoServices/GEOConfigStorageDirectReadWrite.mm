@interface GEOConfigStorageDirectReadWrite
- (void)_clearWriteTransaction;
@end

@implementation GEOConfigStorageDirectReadWrite

void __60__GEOConfigStorageDirectReadWrite__scheduleWriteDirectStore__block_invoke(uint64_t a1)
{
  v32[2] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v1 = [MEMORY[0x1E696AC08] defaultManager];
    v2 = [*(WeakRetained + 2) URLByDeletingLastPathComponent];
    v26 = 0;
    v3 = [v1 createDirectoryAtURL:v2 withIntermediateDirectories:1 attributes:0 error:&v26];
    v4 = v26;

    if ((v3 & 1) == 0)
    {
      v5 = GEOGetUserDefaultsLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v28 = v4;
        _os_log_impl(&dword_18660C000, v5, OS_LOG_TYPE_ERROR, "Failed to create parent directory for direct config store: %{public}@", buf, 0xCu);
      }
    }

    v6 = *MEMORY[0x1E696A3A8];
    v7 = *MEMORY[0x1E696A370];
    v31[0] = *MEMORY[0x1E696A3A0];
    v31[1] = v7;
    v32[0] = v6;
    v32[1] = &unk_1EFA216C8;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:v31 count:{2, WeakRetained}];
    v9 = [MEMORY[0x1E696AC08] defaultManager];
    v10 = [*(WeakRetained + 2) absoluteURL];
    v11 = [v10 path];
    [v9 createFileAtPath:v11 contents:0 attributes:v8];

    os_unfair_lock_lock_with_options();
    v12 = *(WeakRetained + 4);
    v25 = 0;
    v13 = [MEMORY[0x1E696AE40] dataWithPropertyList:v12 format:200 options:0 error:&v25];
    v14 = v25;

    os_unfair_lock_unlock(WeakRetained + 6);
    if (!v13 || v14)
    {
      [(GEOConfigStorageDirectReadWrite *)WeakRetained _clearWriteTransaction];
      v15 = GEOGetUserDefaultsLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v28 = v14;
        _os_log_impl(&dword_18660C000, v15, OS_LOG_TYPE_ERROR, "Unable to generate plist from direct store: %@", buf, 0xCu);
      }
    }

    else
    {
      os_unfair_lock_lock_with_options();
      v15 = [*(WeakRetained + 8) copy];
      [*(WeakRetained + 8) removeAllObjects];
      os_unfair_lock_unlock(WeakRetained + 11);
      v16 = *(WeakRetained + 2);
      v24 = 0;
      v17 = [v13 writeToURL:v16 options:268435457 error:&v24];
      v14 = v24;
      if ((v17 & 1) == 0)
      {
        v18 = GEOGetUserDefaultsLog();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v19 = *(WeakRetained + 2);
          *buf = 138412546;
          v28 = v19;
          v29 = 2112;
          v30 = v14;
          _os_log_impl(&dword_18660C000, v18, OS_LOG_TYPE_ERROR, "Unable to write direct store %@: %@", buf, 0x16u);
        }
      }

      if ([v15 count])
      {
        v20 = *(WeakRetained + 1);
        if (v20 > 9)
        {
          v21 = 991232;
        }

        else
        {
          v21 = qword_188020CF8[v20] | 0x2000;
        }

        v22 = [v15 allObjects];
        _GEOConfigPostKeysChangedNotification(v22, v21);
      }

      [(GEOConfigStorageDirectReadWrite *)WeakRetained _clearWriteTransaction];
    }
  }
}

- (void)_clearWriteTransaction
{
  os_unfair_lock_lock((self + 44));
  v2 = *(self + 48);
  *(self + 48) = 0;

  os_unfair_lock_unlock((self + 44));
}

@end