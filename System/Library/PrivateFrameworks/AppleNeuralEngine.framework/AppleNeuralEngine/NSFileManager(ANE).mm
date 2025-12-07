@interface NSFileManager(ANE)
+ (uint64_t)ane_addWriteModeForPath:()ANE;
+ (uint64_t)ane_addWriteModeIfMissing:()ANE originalMode:;
@end

@implementation NSFileManager(ANE)

+ (uint64_t)ane_addWriteModeIfMissing:()ANE originalMode:
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = v6;
  if ((a4 & 0x80) == 0 && chmod([v6 fileSystemRepresentation], a4 | 0x80) == -1)
  {
    v10 = +[_ANELog common];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = NSStringFromSelector(a2);
      v12 = *__error();
      v13 = 138413058;
      v14 = v11;
      v15 = 2112;
      v16 = v7;
      v17 = 1024;
      v18 = a4;
      v19 = 1024;
      v20 = v12;
      _os_log_error_impl(&dword_1AD246000, v10, OS_LOG_TYPE_ERROR, "%@: fail to chmod (%@) with originalMode=0x%x errno=%{darwin:errno}d", &v13, 0x22u);
    }

    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

+ (uint64_t)ane_addWriteModeForPath:()ANE
{
  v5 = a3;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  memset(&v20, 0, sizeof(v20));
  if (stat([v5 fileSystemRepresentation], &v20) == -1)
  {
    v8 = +[_ANELog common];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(NSFileManager(ANE) *)a2 ane_addWriteModeForPath:v5, v8];
    }

    v7 = 0;
  }

  else
  {
    v7 = [self ane_addWriteModeIfMissing:v5 originalMode:v20.st_mode];
  }

  v19 = defaultManager;
  v9 = [defaultManager enumeratorAtPath:v5];
  nextObject = [v9 nextObject];
  if (nextObject)
  {
    v11 = nextObject;
    v12 = *MEMORY[0x1E696A370];
    do
    {
      v13 = objc_autoreleasePoolPush();
      v14 = [v5 stringByAppendingPathComponent:v11];
      fileAttributes = [v9 fileAttributes];
      v16 = [fileAttributes objectForKeyedSubscript:v12];

      v7 = [self ane_addWriteModeIfMissing:v14 originalMode:{objc_msgSend(v16, "unsignedShortValue")}] & v7;
      objc_autoreleasePoolPop(v13);
      nextObject2 = [v9 nextObject];

      v11 = nextObject2;
    }

    while (nextObject2);
  }

  return v7;
}

+ (void)ane_addWriteModeForPath:()ANE .cold.1(const char *a1, uint64_t a2, NSObject *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = NSStringFromSelector(a1);
  v6 = *__error();
  v7 = 138412802;
  v8 = v5;
  v9 = 2112;
  v10 = a2;
  v11 = 1024;
  v12 = v6;
  _os_log_error_impl(&dword_1AD246000, a3, OS_LOG_TYPE_ERROR, "%@: fail to stat (%@) with errno=%{darwin:errno}d", &v7, 0x1Cu);
}

@end