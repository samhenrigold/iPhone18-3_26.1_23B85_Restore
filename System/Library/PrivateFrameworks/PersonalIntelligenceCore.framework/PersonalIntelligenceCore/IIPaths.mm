@interface IIPaths
+ (id)filename:(id)filename createIfNeeded:(BOOL)needed;
+ (id)resourcesDirectory;
+ (id)subdirectory:(id)subdirectory createIfNeeded:(BOOL)needed;
+ (id)topDirectoryCreateIfNeeded:(BOOL)needed;
+ (id)topDirectoryWithName:(id)name createIfNeeded:(BOOL)needed;
@end

@implementation IIPaths

+ (id)resourcesDirectory
{
  v4 = objc_autoreleasePoolPush();
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  objc_autoreleasePoolPop(v4);
  resourcePath = [v5 resourcePath];
  if (!resourcePath)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"IIPaths.m" lineNumber:161 description:@"Error: Unable to find resource directory"];
  }

  return resourcePath;
}

+ (id)subdirectory:(id)subdirectory createIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  v25 = *MEMORY[0x277D85DE8];
  subdirectoryCopy = subdirectory;
  v8 = objc_autoreleasePoolPush();
  v9 = [self topDirectoryCreateIfNeeded:neededCopy];
  v10 = [v9 stringByAppendingPathComponent:subdirectoryCopy];

  objc_autoreleasePoolPop(v8);
  if (neededCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v22 = 0;
    [defaultManager createDirectoryAtPath:v10 withIntermediateDirectories:1 attributes:0 error:&v22];
    v13 = v22;

    objc_sync_exit(selfCopy);
    if (v13)
    {
      if ([v13 code] == 640)
      {
        domain = [v13 domain];
        v15 = [domain isEqualToString:*MEMORY[0x277CCA050]];

        if (v15)
        {
          v20 = ii_default_log_handle();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v24 = v13;
            _os_log_error_impl(&dword_231C94000, v20, OS_LOG_TYPE_ERROR, "IIPaths: failed to create subdirectory due to lack of space: %@", buf, 0xCu);
          }

          if ([MEMORY[0x277D42590] isInternalBuild])
          {
            v21 = ii_default_log_handle();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
            {
              *buf = 0;
              _os_log_fault_impl(&dword_231C94000, v21, OS_LOG_TYPE_FAULT, "IIPaths: unable to create directory due to lack of space.", buf, 2u);
            }
          }

          IIExit(4002);
        }
      }

      if ([v13 code] == 513)
      {
        v18 = ii_default_log_handle();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v24 = v13;
          _os_log_error_impl(&dword_231C94000, v18, OS_LOG_TYPE_ERROR, "IIPaths: failed to create subdirectory due to lack of permissions: %@", buf, 0xCu);
        }

        if ([MEMORY[0x277D42590] isInternalBuild])
        {
          v19 = ii_default_log_handle();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
          {
            *buf = 0;
            _os_log_fault_impl(&dword_231C94000, v19, OS_LOG_TYPE_FAULT, "IIPaths: unable to create directory due to lack of permissions.", buf, 2u);
          }
        }

        IIExit(4003);
      }

      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:selfCopy file:@"IIPaths.m" lineNumber:134 description:{@"Error creating subdirectory: %@", v13}];
    }
  }

  return v10;
}

+ (id)filename:(id)filename createIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  filenameCopy = filename;
  v7 = objc_autoreleasePoolPush();
  v8 = [self topDirectoryCreateIfNeeded:neededCopy];
  v9 = [v8 stringByAppendingPathComponent:filenameCopy];

  objc_autoreleasePoolPop(v7);

  return v9;
}

+ (id)topDirectoryWithName:(id)name createIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  v29 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v8 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 1uLL, 1);
  v9 = [v8 objectAtIndexedSubscript:0];

  if (!v9 || ![v9 length])
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"IIPaths.m" lineNumber:47 description:@"failed to construct the root path"];
  }

  v10 = objc_autoreleasePoolPush();
  v11 = [v9 stringByAppendingPathComponent:nameCopy];
  objc_autoreleasePoolPop(v10);
  v12 = topDirectoryWithName_createIfNeeded__dir;
  topDirectoryWithName_createIfNeeded__dir = v11;

  v13 = ii_default_log_handle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v28 = topDirectoryWithName_createIfNeeded__dir;
    _os_log_debug_impl(&dword_231C94000, v13, OS_LOG_TYPE_DEBUG, "using top directory: %@", buf, 0xCu);
  }

  if (neededCopy)
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v26 = 0;
    [defaultManager createDirectoryAtPath:topDirectoryWithName_createIfNeeded__dir withIntermediateDirectories:1 attributes:0 error:&v26];
    v15 = v26;
    v16 = v15;
    if (v15)
    {
      if ([v15 code] == 640)
      {
        domain = [v16 domain];
        v18 = [domain isEqualToString:*MEMORY[0x277CCA050]];

        if (v18)
        {
          v25 = ii_default_log_handle();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v28 = v16;
            _os_log_error_impl(&dword_231C94000, v25, OS_LOG_TYPE_ERROR, "IIPaths: failed to create directory due to lack of space: %@", buf, 0xCu);
          }

          IIExit(4002);
        }
      }

      if ([v16 code] == 513)
      {
        v24 = ii_default_log_handle();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v28 = v16;
          _os_log_error_impl(&dword_231C94000, v24, OS_LOG_TYPE_ERROR, "IIPaths: failed to create directory due to lack of permissions: %@", buf, 0xCu);
        }

        IIExit(4003);
      }

      currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"IIPaths.m" lineNumber:65 description:{@"Error creating directory for %@: %@", nameCopy, v16}];
    }
  }

  v20 = topDirectoryWithName_createIfNeeded__dir;
  v21 = topDirectoryWithName_createIfNeeded__dir;

  return v20;
}

+ (id)topDirectoryCreateIfNeeded:(BOOL)needed
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __38__IIPaths_topDirectoryCreateIfNeeded___block_invoke;
  v5[3] = &__block_descriptor_41_e5_v8__0l;
  v5[4] = self;
  neededCopy = needed;
  if (topDirectoryCreateIfNeeded___pasOnceToken2 != -1)
  {
    dispatch_once(&topDirectoryCreateIfNeeded___pasOnceToken2, v5);
  }

  v3 = topDirectoryCreateIfNeeded___pasExprOnceResult;

  return v3;
}

void __38__IIPaths_topDirectoryCreateIfNeeded___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) topDirectoryWithName:@"Suggestions" createIfNeeded:*(a1 + 40)];
  v4 = topDirectoryCreateIfNeeded___pasExprOnceResult;
  topDirectoryCreateIfNeeded___pasExprOnceResult = v3;

  objc_autoreleasePoolPop(v2);
}

@end