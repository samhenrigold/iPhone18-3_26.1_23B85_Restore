@interface NSData(DeviceManagement)
- (uint64_t)dm_atomicWriteToURL:()DeviceManagement error:;
@end

@implementation NSData(DeviceManagement)

- (uint64_t)dm_atomicWriteToURL:()DeviceManagement error:
{
  v6 = a3;
  v41 = 0;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  path = [v6 path];
  v9 = [defaultManager fileExistsAtPath:path isDirectory:&v41];
  v10 = v41;

  if (v9 && (v10 & 1) != 0)
  {
    v12 = DMFAtomicFileWritingLog(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [NSData(DeviceManagement) dm_atomicWriteToURL:error:];
    }

    DMFErrorWithCodeAndUserInfo(6, 0);
    *a4 = v13 = 0;
  }

  else
  {
    uRLByDeletingLastPathComponent = [v6 URLByDeletingLastPathComponent];
    v15 = MEMORY[0x1E696AEC0];
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    v18 = [uUIDString substringToIndex:8];
    lastPathComponent = [v6 lastPathComponent];
    v20 = [v15 stringWithFormat:@".temp-%@-%@", v18, lastPathComponent];

    v21 = [uRLByDeletingLastPathComponent URLByAppendingPathComponent:v20];
    v40 = 0;
    LOBYTE(uUIDString) = [self writeToURL:v21 options:0 error:&v40];
    v22 = v40;
    v23 = v22;
    if (uUIDString)
    {
      defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
      v39 = v23;
      v25 = [defaultManager2 replaceItemAtURL:v6 withItemAtURL:v21 backupItemName:0 options:1 resultingItemURL:0 error:&v39];
      v26 = v39;

      v28 = DMFAtomicFileWritingLog(v27);
      v29 = v28;
      if (v25)
      {
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
        {
          [NSData(DeviceManagement) dm_atomicWriteToURL:error:];
        }

        v13 = 1;
        v23 = v26;
      }

      else
      {
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          [NSData(DeviceManagement) dm_atomicWriteToURL:error:];
        }

        v32 = v26;
        *a4 = v26;
        defaultManager3 = [MEMORY[0x1E696AC08] defaultManager];
        v38 = v26;
        v34 = [defaultManager3 removeItemAtURL:v21 error:&v38];
        v23 = v38;

        if ((v34 & 1) == 0)
        {
          v36 = DMFAtomicFileWritingLog(v35);
          if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            [NSData(DeviceManagement) dm_atomicWriteToURL:error:];
          }
        }

        v13 = 0;
      }
    }

    else
    {
      v30 = DMFAtomicFileWritingLog(v22);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        [NSData(DeviceManagement) dm_atomicWriteToURL:error:];
      }

      v31 = v23;
      v13 = 0;
      *a4 = v23;
    }
  }

  return v13;
}

- (void)dm_atomicWriteToURL:()DeviceManagement error:.cold.4()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&dword_1DBFFF000, v0, OS_LOG_TYPE_DEBUG, "Wrote file atomically in-place: %{public}@", v1, 0xCu);
}

@end