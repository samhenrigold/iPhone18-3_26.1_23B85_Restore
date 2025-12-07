@interface NRGResourceCache
+ (id)cacheDirPathForAppBundleID:(id)d withPairedDeviceStorePath:(id)path;
+ (id)cacheDirPathForPairedDevice;
+ (id)cacheDirPathForPairedDeviceStorePath:(id)path;
+ (id)cachePathForIconVariant:(int)variant inBundleID:(id)d withPairedDeviceStorePath:(id)path;
+ (id)iconCacheDirPathForAppBundleID:(id)d withPairedDeviceStorePath:(id)path;
+ (id)iconForIconVariant:(int)variant inBundleID:(id)d withPairedDeviceStorePath:(id)path;
+ (void)createCachePathIfNecessaryWithPairedDeviceStorePath:(id)path;
+ (void)invalidateBundleID:(id)d withPairedDeviceStorePath:(id)path;
+ (void)invalidatePairedDevice:(id)device;
+ (void)setIcon:(id)icon forIconVariant:(int)variant inBundleID:(id)d withPairedDeviceStorePath:(id)path;
@end

@implementation NRGResourceCache

+ (void)setIcon:(id)icon forIconVariant:(int)variant inBundleID:(id)d withPairedDeviceStorePath:(id)path
{
  v8 = *&variant;
  v33 = *MEMORY[0x277D85DE8];
  iconCopy = icon;
  dCopy = d;
  pathCopy = path;
  v13 = [self iconCacheDirPathForAppBundleID:dCopy withPairedDeviceStorePath:pathCopy];
  if (v13)
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v15 = [defaultManager fileExistsAtPath:v13];

    if (v15)
    {
      v16 = 0;
    }

    else
    {
      [self createCachePathIfNecessaryWithPairedDeviceStorePath:pathCopy];
      defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
      v26 = 0;
      v18 = [defaultManager2 createDirectoryAtPath:v13 withIntermediateDirectories:1 attributes:0 error:&v26];
      v16 = v26;

      if ((v18 & 1) == 0)
      {
        v21 = nrg_daemon_log(v19);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v28 = v16;
          v29 = 2112;
          v30 = v13;
          _os_log_impl(&dword_25B66E000, v21, OS_LOG_TYPE_DEFAULT, "setIcon: Error creating cache directory %@ path %@", buf, 0x16u);
        }

        goto LABEL_13;
      }
    }

    v20 = v16;
    v21 = [self cachePathForIconVariant:v8 inBundleID:dCopy withPairedDeviceStorePath:pathCopy];
    v25 = v16;
    v22 = [iconCopy writeToFile:v21 options:268435457 error:&v25];
    v16 = v25;

    if ((v22 & 1) == 0)
    {
      v24 = nrg_daemon_log(v23);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v28 = v21;
        v29 = 2112;
        v30 = v16;
        _os_log_impl(&dword_25B66E000, v24, OS_LOG_TYPE_DEFAULT, "setIcon: Failed writing icon path %@ with error: %@", buf, 0x16u);
      }
    }

LABEL_13:

    goto LABEL_14;
  }

  v16 = nrg_daemon_log(0);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218498;
    v28 = v8;
    v29 = 2112;
    v30 = dCopy;
    v31 = 2112;
    v32 = pathCopy;
    _os_log_impl(&dword_25B66E000, v16, OS_LOG_TYPE_DEFAULT, "setIcon: Error creating icon dir path: iconVariant=%ld appBundleID=%@ pairedDeviceStorePath=%@", buf, 0x20u);
  }

LABEL_14:
}

+ (id)iconForIconVariant:(int)variant inBundleID:(id)d withPairedDeviceStorePath:(id)path
{
  v6 = *&variant;
  v23 = *MEMORY[0x277D85DE8];
  dCopy = d;
  pathCopy = path;
  v10 = [self cachePathForIconVariant:v6 inBundleID:dCopy withPairedDeviceStorePath:pathCopy];
  if (v10)
  {
    v16 = 0;
    v11 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v10 options:0 error:&v16];
    v12 = v16;
    v13 = v12;
    if (v12)
    {
      v14 = nrg_daemon_log(v12);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [NRGResourceCache iconForIconVariant:v13 inBundleID:v14 withPairedDeviceStorePath:?];
      }
    }
  }

  else
  {
    v13 = nrg_daemon_log(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218498;
      v18 = v6;
      v19 = 2112;
      v20 = dCopy;
      v21 = 2112;
      v22 = pathCopy;
      _os_log_error_impl(&dword_25B66E000, v13, OS_LOG_TYPE_ERROR, "iconForIconVariant: Error creating icon path: iconVariant=%ld appBundleID=%@ pairedDeviceStorePath=%@", buf, 0x20u);
    }

    v11 = 0;
  }

  return v11;
}

+ (void)invalidateBundleID:(id)d withPairedDeviceStorePath:(id)path
{
  dCopy = d;
  pathCopy = path;
  v8 = [self cacheDirPathForAppBundleID:dCopy withPairedDeviceStorePath:pathCopy];
  if (v8)
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v10 = [defaultManager fileExistsAtPath:v8];

    if (v10)
    {
      defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
      v16 = 0;
      v12 = [defaultManager2 removeItemAtPath:v8 error:&v16];
      v13 = v16;

      if ((v12 & 1) == 0)
      {
        v15 = nrg_daemon_log(v14);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          +[NRGResourceCache invalidateBundleID:withPairedDeviceStorePath:];
        }
      }
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = nrg_daemon_log(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      +[NRGResourceCache invalidateBundleID:withPairedDeviceStorePath:];
    }
  }
}

+ (void)invalidatePairedDevice:(id)device
{
  deviceCopy = device;
  v5 = [self cacheDirPathForPairedDeviceStorePath:deviceCopy];
  if (!v5)
  {
    v6 = nrg_daemon_log(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(NRGResourceCache *)deviceCopy invalidatePairedDevice:v6];
    }
  }

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v8 = [defaultManager fileExistsAtPath:v5];

  if (v8)
  {
    defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
    v14 = 0;
    v10 = [defaultManager2 removeItemAtPath:v5 error:&v14];
    v11 = v14;

    if ((v10 & 1) == 0)
    {
      v13 = nrg_daemon_log(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        +[NRGResourceCache invalidatePairedDevice:];
      }
    }
  }

  else
  {
    v11 = 0;
  }
}

+ (id)cacheDirPathForPairedDevice
{
  v2 = NRGGetActivePairedDeviceStorePath();
  v3 = [v2 stringByAppendingPathComponent:@"com.apple.private.nanoresourcegrabber"];

  return v3;
}

+ (id)cacheDirPathForPairedDeviceStorePath:(id)path
{
  pathCopy = path;
  v4 = pathCopy;
  if (pathCopy)
  {
    v5 = [pathCopy stringByAppendingPathComponent:@"com.apple.private.nanoresourcegrabber"];
    v6 = [v5 stringByAppendingPathComponent:@"received"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)cacheDirPathForAppBundleID:(id)d withPairedDeviceStorePath:(id)path
{
  if (d)
  {
    dCopy = d;
    v7 = [self cacheDirPathForPairedDeviceStorePath:path];
    v8 = [v7 stringByAppendingPathComponent:dCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (void)createCachePathIfNecessaryWithPairedDeviceStorePath:(id)path
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = [self cacheDirPathForPairedDeviceStorePath:path];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v5 = [defaultManager fileExistsAtPath:v3];

  if ((v5 & 1) == 0)
  {
    defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
    v18 = 0;
    v7 = [defaultManager2 createDirectoryAtPath:v3 withIntermediateDirectories:1 attributes:0 error:&v18];
    v8 = v18;

    if (v7)
    {
      v10 = [MEMORY[0x277CBEBC0] fileURLWithPath:v3 isDirectory:1];
      v11 = *MEMORY[0x277CBE878];
      v17 = v8;
      v12 = [v10 setResourceValue:MEMORY[0x277CBEC38] forKey:v11 error:&v17];
      v13 = v17;

      v15 = nrg_daemon_log(v14);
      v16 = v15;
      if (v12)
      {
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v20 = v3;
          _os_log_impl(&dword_25B66E000, v16, OS_LOG_TYPE_DEFAULT, "createCachePathIfNecessary created and excludedFromBackup %@", buf, 0xCu);
        }
      }

      else if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        +[NRGResourceCache createCachePathIfNecessaryWithPairedDeviceStorePath:];
      }
    }

    else
    {
      v10 = nrg_daemon_log(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        +[NRGResourceCache createCachePathIfNecessaryWithPairedDeviceStorePath:];
      }

      v13 = v8;
    }
  }
}

+ (id)iconCacheDirPathForAppBundleID:(id)d withPairedDeviceStorePath:(id)path
{
  v4 = [self cacheDirPathForAppBundleID:d withPairedDeviceStorePath:path];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 stringByAppendingPathComponent:@"icons"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)cachePathForIconVariant:(int)variant inBundleID:(id)d withPairedDeviceStorePath:(id)path
{
  v5 = *&variant;
  v6 = [self iconCacheDirPathForAppBundleID:d withPairedDeviceStorePath:path];
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"icon_%d.png", v5];
  if (v6)
  {
    v8 = [v6 stringByAppendingPathComponent:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (void)iconForIconVariant:(uint64_t)a1 inBundleID:(NSObject *)a2 withPairedDeviceStorePath:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_25B66E000, a2, OS_LOG_TYPE_ERROR, "iconForIconVariant: Error reading data %@", &v2, 0xCu);
}

+ (void)invalidatePairedDevice:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_25B66E000, a2, OS_LOG_TYPE_ERROR, "invalidatePairedDevice: Error creating bundle cache dir path: pairedDeviceStorePath=%@", &v2, 0xCu);
}

@end