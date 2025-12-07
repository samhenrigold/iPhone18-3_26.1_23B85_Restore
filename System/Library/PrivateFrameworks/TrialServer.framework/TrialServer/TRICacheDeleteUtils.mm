@interface TRICacheDeleteUtils
+ (BOOL)hasSufficientDiskSpaceForDownload:(unint64_t)download;
+ (id)getFreeDiskSpace;
+ (id)getPurgeableDiskSpace;
@end

@implementation TRICacheDeleteUtils

+ (id)getFreeDiskSpace
{
  v14 = *MEMORY[0x277D85DE8];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v3 = NSHomeDirectory();
  v11 = 0;
  v4 = [defaultManager attributesOfFileSystemForPath:v3 error:&v11];
  v5 = v11;

  if (v4)
  {
    v6 = [v4 objectForKeyedSubscript:*MEMORY[0x277CCA1D0]];
    if (v6)
    {
      v7 = v6;
      v8 = v7;
      goto LABEL_10;
    }

    v9 = TRILogCategory_Server();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26F567000, v9, OS_LOG_TYPE_ERROR, "Filesystem attributes are missing attribute NSFileSystemFreeSize.", buf, 2u);
    }

    v7 = 0;
  }

  else
  {
    v7 = TRILogCategory_Server();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v13 = v5;
      _os_log_error_impl(&dword_26F567000, v7, OS_LOG_TYPE_ERROR, "Error reading attributes: %{public}@", buf, 0xCu);
    }
  }

  v8 = 0;
LABEL_10:

  return v8;
}

+ (id)getPurgeableDiskSpace
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = CacheDeleteCopyPurgeableSpaceWithInfo();
  if (v2)
  {
    v3 = v2;
    v4 = [v2 objectForKeyedSubscript:@"CACHE_DELETE_TOTAL_PURGEABLE"];
    v5 = [v4 objectForKeyedSubscript:@"/private/var"];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v8 = TRILogCategory_Server();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v10 = 138412290;
        v11 = v3;
        _os_log_error_impl(&dword_26F567000, v8, OS_LOG_TYPE_ERROR, "Failed to locate purgeable bytes in Cache Delete Info: %@", &v10, 0xCu);
      }
    }
  }

  else
  {
    v3 = TRILogCategory_Server();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v10) = 0;
      _os_log_error_impl(&dword_26F567000, v3, OS_LOG_TYPE_ERROR, "Failed to retrieve Cache Delete Info.", &v10, 2u);
    }

    v6 = 0;
  }

  return v6;
}

+ (BOOL)hasSufficientDiskSpaceForDownload:(unint64_t)download
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = +[TRICacheDeleteUtils getFreeDiskSpace];
  unsignedLongLongValue = [v4 unsignedLongLongValue];

  v6 = 2 * download;
  v7 = 2 * download >= unsignedLongLongValue;
  v8 = 2 * download - unsignedLongLongValue;
  if (v8 != 0 && v7)
  {
    v9 = +[TRICacheDeleteUtils getPurgeableDiskSpace];
    unsignedLongLongValue2 = [v9 unsignedLongLongValue];

    v11 = TRILogCategory_Server();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (unsignedLongLongValue2 + unsignedLongLongValue >= v6)
    {
      if (v12)
      {
        *buf = 134218496;
        *&buf[4] = unsignedLongLongValue;
        *&buf[12] = 2048;
        *&buf[14] = v6;
        *&buf[22] = 2048;
        v33 = unsignedLongLongValue2;
        _os_log_impl(&dword_26F567000, v11, OS_LOG_TYPE_DEFAULT, "Sufficient disk space, if we purge the cache. Free space: %llu, required space: %llu, purgeable space: %llu", buf, 0x20u);
      }

      v30[0] = @"CACHE_DELETE_VOLUME";
      v30[1] = @"CACHE_DELETE_AMOUNT";
      v31[0] = @"/private/var";
      v16 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v8];
      v31[1] = v16;
      [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:2];

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      LOBYTE(v33) = 1;
      v17 = dispatch_semaphore_create(0);
      v22 = MEMORY[0x277D85DD0];
      v23 = 3221225472;
      v24 = __57__TRICacheDeleteUtils_hasSufficientDiskSpaceForDownload___block_invoke;
      v25 = &unk_279DDFE78;
      v18 = v17;
      v26 = v18;
      v27 = buf;
      v28 = unsignedLongLongValue;
      v29 = v6;
      CacheDeletePurgeSpaceWithInfo();
      if ([MEMORY[0x277D425A0] waitForSemaphore:v18 timeoutSeconds:120.0])
      {
        v19 = TRILogCategory_Server();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          v21[0] = 0;
          _os_log_error_impl(&dword_26F567000, v19, OS_LOG_TYPE_ERROR, "Timeout while attempting to have CacheDelete purge data before starting download.", v21, 2u);
        }

        v13 = 0;
      }

      else
      {
        v13 = *(*&buf[8] + 24);
      }

      _Block_object_dispose(buf, 8);
    }

    else
    {
      if (v12)
      {
        *buf = 134218496;
        *&buf[4] = unsignedLongLongValue;
        *&buf[12] = 2048;
        *&buf[14] = v6;
        *&buf[22] = 2048;
        v33 = unsignedLongLongValue2;
        _os_log_impl(&dword_26F567000, v11, OS_LOG_TYPE_DEFAULT, "Insufficient disk space. Free space: %llu, required space: %llu, purgeable space: %llu", buf, 0x20u);
      }

      v13 = 0;
    }
  }

  else
  {
    v14 = TRILogCategory_Server();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      *&buf[4] = unsignedLongLongValue;
      *&buf[12] = 2048;
      *&buf[14] = v6;
      _os_log_impl(&dword_26F567000, v14, OS_LOG_TYPE_DEFAULT, "Sufficient disk space. Free space: %llu, required space: %llu", buf, 0x16u);
    }

    v13 = 1;
  }

  return v13 & 1;
}

void __57__TRICacheDeleteUtils_hasSufficientDiskSpaceForDownload___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = [a2 objectForKeyedSubscript:@"CACHE_DELETE_AMOUNT"];
  v5 = v4;
  if (v4)
  {
    v6 = *(a1 + 48);
    *(*(*(a1 + 40) + 8) + 24) = ([v4 unsignedLongLongValue] + v6) >= *(a1 + 56);
    v7 = TRILogCategory_Server();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v5 unsignedLongLongValue];
      v10 = *(a1 + 48);
      v9 = *(a1 + 56);
      if (*(*(*(a1 + 40) + 8) + 24))
      {
        v11 = @"YES";
      }

      else
      {
        v11 = @"NO";
      }

      v12 = 134218754;
      v13 = v8;
      v14 = 2048;
      v15 = v10;
      v16 = 2048;
      v17 = v9;
      v18 = 2112;
      v19 = v11;
      _os_log_impl(&dword_26F567000, v7, OS_LOG_TYPE_DEFAULT, "Managed to purge %llu bytes. Free space: %llu, required space: %llu. Sufficient: %@", &v12, 0x2Au);
    }
  }

  else
  {
    v7 = TRILogCategory_Server();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v12 = 138412290;
      v13 = a2;
      _os_log_error_impl(&dword_26F567000, v7, OS_LOG_TYPE_ERROR, "Failed to locate purged bytes in Cache Delete result: %@", &v12, 0xCu);
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

@end