@interface BCSBlastDoorPersistentStore
- (id)fileURLForImageWithName:(id)name error:(id *)error;
- (id)initWithCacheURL:(id *)l;
- (id)updateImageWithName:(id)name error:(id *)error;
- (void)deleteExpiredImages;
- (void)deleteImageWithName:(id)name;
@end

@implementation BCSBlastDoorPersistentStore

- (id)initWithCacheURL:(id *)l
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a2;
  if (l)
  {
    v26.receiver = l;
    v26.super_class = BCSBlastDoorPersistentStore;
    v5 = objc_msgSendSuper2(&v26, sel_init);
    l = v5;
    if (v5)
    {
      objc_storeStrong(v5 + 1, a2);
      v6 = ABSLogCommon();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        cacheURL = [l cacheURL];
        *buf = 138412290;
        *&buf[4] = cacheURL;
        _os_log_debug_impl(&dword_242072000, v6, OS_LOG_TYPE_DEBUG, "Creating BlastDoor image cache at: %@", buf, 0xCu);
      }

      defaultManager = [MEMORY[0x277CCAA00] defaultManager];
      v29 = 0;
      cacheURL2 = [l cacheURL];
      path = [cacheURL2 path];
      v10 = [defaultManager fileExistsAtPath:path isDirectory:&v29];

      if (v10 && (v29 & 1) == 0)
      {
        v22 = ABSLogCommon();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_242072000, v22, OS_LOG_TYPE_ERROR, "Error creating BlastDoor cache store: unexpected state (found file instead of directory)", buf, 2u);
        }

        cacheURL3 = [l cacheURL];
        v28 = 0;
        v24 = [defaultManager removeItemAtURL:cacheURL3 error:&v28];
        v11 = v28;

        if ((v24 & 1) == 0)
        {
          defaultManager3 = ABSLogCommon();
          if (os_log_type_enabled(defaultManager3, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            *&buf[4] = v11;
            _os_log_error_impl(&dword_242072000, defaultManager3, OS_LOG_TYPE_ERROR, "Error removing unexpected file (instead of directory): %@", buf, 0xCu);
          }

          goto LABEL_13;
        }
      }

      else
      {
        v11 = 0;
      }

      v12 = v11;
      defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
      cacheURL4 = [l cacheURL];
      v27 = v11;
      v15 = [defaultManager2 createDirectoryAtURL:cacheURL4 withIntermediateDirectories:1 attributes:0 error:&v27];
      v11 = v27;

      if ((v15 & 1) == 0)
      {
        v16 = ABSLogCommon();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          *&buf[4] = v11;
          _os_log_error_impl(&dword_242072000, v16, OS_LOG_TYPE_ERROR, "Error creating BlastDoor cache store: %@", buf, 0xCu);
        }
      }

      defaultManager3 = [MEMORY[0x277CCAA00] defaultManager];
      v30 = *MEMORY[0x277CCA1B0];
      *buf = *MEMORY[0x277CCA198];
      v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&v30 count:1];
      cacheURL5 = [l cacheURL];
      path2 = [cacheURL5 path];
      [defaultManager3 setAttributes:v18 ofItemAtPath:path2 error:0];

LABEL_13:
    }
  }

  return l;
}

- (id)fileURLForImageWithName:(id)name error:(id *)error
{
  nameCopy = name;
  cacheURL = [(BCSBlastDoorPersistentStore *)self cacheURL];
  nameCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", nameCopy];

  v8 = [cacheURL URLByAppendingPathComponent:nameCopy];

  return v8;
}

- (id)updateImageWithName:(id)name error:(id *)error
{
  v16[2] = *MEMORY[0x277D85DE8];
  v4 = [(BCSBlastDoorPersistentStore *)self fileURLForImageWithName:name error:error];
  if (v4)
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v14 = 0;
    path = [v4 path];
    v7 = [defaultManager fileExistsAtPath:path isDirectory:&v14];

    if (v7 && (v14 & 1) == 0)
    {
      defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
      v15[0] = *MEMORY[0x277CCA150];
      v10 = [MEMORY[0x277CBEAA8] now];
      v15[1] = *MEMORY[0x277CCA1B0];
      v16[0] = v10;
      v16[1] = *MEMORY[0x277CCA198];
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];
      path2 = [v4 path];
      [defaultManager2 setAttributes:v11 ofItemAtPath:path2 error:0];

      v8 = v4;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)deleteImageWithName:(id)name
{
  v10 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v5 = ABSLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v8 = 138412290;
    v9 = nameCopy;
    _os_log_debug_impl(&dword_242072000, v5, OS_LOG_TYPE_DEBUG, "Deleting image named: %@", &v8, 0xCu);
  }

  v6 = [(BCSBlastDoorPersistentStore *)self fileURLForImageWithName:nameCopy error:0];
  if (v6)
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    [defaultManager removeItemAtURL:v6 error:0];
  }

  else
  {
    defaultManager = ABSLogCommon();
    if (os_log_type_enabled(defaultManager, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v8) = 0;
      _os_log_debug_impl(&dword_242072000, defaultManager, OS_LOG_TYPE_DEBUG, "Asked to delete image but unable to construct file URL", &v8, 2u);
    }
  }
}

- (void)deleteExpiredImages
{
  v30[2] = *MEMORY[0x277D85DE8];
  v3 = ABSLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_242072000, v3, OS_LOG_TYPE_DEBUG, "Deleting expired images", buf, 2u);
  }

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  cacheURL = [(BCSBlastDoorPersistentStore *)self cacheURL];
  v6 = *MEMORY[0x277CBE7B0];
  v30[0] = *MEMORY[0x277CBE8E8];
  v30[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:2];
  v21 = defaultManager;
  v8 = [defaultManager enumeratorAtURL:cacheURL includingPropertiesForKeys:v7 options:5 errorHandler:0];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v23 objects:v29 count:16];
  if (v10)
  {
    v12 = v10;
    v13 = *v24;
    *&v11 = 138412290;
    v20 = v11;
    do
    {
      v14 = 0;
      do
      {
        if (*v24 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v23 + 1) + 8 * v14);
        v22 = 0;
        [v15 getResourceValue:&v22 forKey:v6 error:{0, v20}];
        v16 = v22;
        if (v16)
        {
          v17 = [MEMORY[0x277CBEAA8] now];
          v18 = [v17 dateByAddingTimeInterval:2592000.0];

          if ([v16 compare:v18] == 1)
          {
            v19 = ABSLogCommon();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
            {
              *buf = v20;
              v28 = v15;
              _os_log_debug_impl(&dword_242072000, v19, OS_LOG_TYPE_DEBUG, "Removing expired file: %@", buf, 0xCu);
            }

            [v21 removeItemAtURL:v15 error:0];
          }
        }

        else
        {
          v18 = ABSLogCommon();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
          {
            *buf = v20;
            v28 = v15;
            _os_log_debug_impl(&dword_242072000, v18, OS_LOG_TYPE_DEBUG, "Failed to determine modification date for file: %@", buf, 0xCu);
          }
        }

        ++v14;
      }

      while (v12 != v14);
      v12 = [v9 countByEnumeratingWithState:&v23 objects:v29 count:16];
    }

    while (v12);
  }
}

@end