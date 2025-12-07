@interface NSData(DMCUtilities)
+ (id)_DMCCreateFolderExistError;
+ (uint64_t)DMCDataWithCFData:()DMCUtilities;
- (id)DMCHexString;
- (id)DMCSHA256Hash;
- (uint64_t)DMCAtomicWriteToPath:()DMCUtilities writeOptions:error:;
- (uint64_t)DMCAtomicWriteToURL:()DMCUtilities writeOptions:error:;
@end

@implementation NSData(DMCUtilities)

- (id)DMCHexString
{
  v9[1] = *MEMORY[0x1E69E9840];
  v2 = [self length];
  bytes = [self bytes];
  v4 = v9 - ((2 * v2 + 16) & 0xFFFFFFFFFFFFFFF0);
  if (v2)
  {
    v5 = v9 - ((2 * v2 + 16) & 0xFFFFFFFFFFFFFFF0);
    do
    {
      v6 = *bytes++;
      *v5 = DMCHexString_digits[v6 >> 4];
      v4 = v5 + 2;
      v5[1] = DMCHexString_digits[v6 & 0xF];
      v5 += 2;
      --v2;
    }

    while (v2);
  }

  *v4 = 0;
  v7 = [MEMORY[0x1E696AEC0] stringWithCString:? encoding:?];

  return v7;
}

- (id)DMCSHA256Hash
{
  v4 = *MEMORY[0x1E69E9840];
  CC_SHA256([self bytes], objc_msgSend(self, "length"), md);
  v1 = [MEMORY[0x1E695DEF0] dataWithBytes:md length:32];

  return v1;
}

- (uint64_t)DMCAtomicWriteToPath:()DMCUtilities writeOptions:error:
{
  v52 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v49 = 0;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v10 = [defaultManager fileExistsAtPath:v8 isDirectory:&v49];
  v11 = v49;

  if (!v10 || (v11 & 1) == 0)
  {
    v45 = a5;
    v16 = [MEMORY[0x1E695DFF8] fileURLWithPath:v8 isDirectory:0];
    uRLByDeletingLastPathComponent = [v16 URLByDeletingLastPathComponent];
    v18 = MEMORY[0x1E696AEC0];
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    v21 = [uUIDString substringToIndex:8];
    lastPathComponent = [v16 lastPathComponent];
    v23 = [v18 stringWithFormat:@".temp-%@-%@", v21, lastPathComponent];

    v24 = uRLByDeletingLastPathComponent;
    v25 = [uRLByDeletingLastPathComponent URLByAppendingPathComponent:v23];
    v48 = 0;
    LOBYTE(lastPathComponent) = [self writeToURL:v25 options:a4 error:&v48];
    v26 = v48;
    v28 = v26;
    if (lastPathComponent)
    {
      defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
      v47 = v28;
      v30 = [defaultManager2 replaceItemAtURL:v16 withItemAtURL:v25 backupItemName:0 options:1 resultingItemURL:0 error:&v47];
      v31 = v47;

      v34 = *DMCLogObjects(v32, v33);
      v35 = v16;
      if (v30)
      {
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138543362;
          v51 = v16;
          _os_log_impl(&dword_1B1630000, v34, OS_LOG_TYPE_DEBUG, "Wrote file atomically in-place: %{public}@", buf, 0xCu);
        }

        v15 = 1;
        v28 = v31;
        goto LABEL_25;
      }

      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v51 = v31;
        _os_log_impl(&dword_1B1630000, v34, OS_LOG_TYPE_ERROR, "Failed to replace original file: %{public}@", buf, 0xCu);
      }

      if (v45)
      {
        v38 = v31;
        *v45 = v31;
      }

      defaultManager3 = [MEMORY[0x1E696AC08] defaultManager];
      v46 = v31;
      v40 = [defaultManager3 removeItemAtURL:v25 error:&v46];
      v28 = v46;

      if ((v40 & 1) == 0)
      {
        v43 = *DMCLogObjects(v41, v42);
        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v51 = v28;
          _os_log_impl(&dword_1B1630000, v43, OS_LOG_TYPE_ERROR, "Failed to remove temporary file: %{public}@", buf, 0xCu);
        }
      }
    }

    else
    {
      v36 = *DMCLogObjects(v26, v27);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v51 = v28;
        _os_log_impl(&dword_1B1630000, v36, OS_LOG_TYPE_ERROR, "Failed to write temporary file: %{public}@", buf, 0xCu);
      }

      v35 = v16;
      if (v45)
      {
        v37 = v28;
        v15 = 0;
        *v45 = v28;
LABEL_25:

        goto LABEL_26;
      }
    }

    v15 = 0;
    goto LABEL_25;
  }

  v14 = *DMCLogObjects(v12, v13);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v51 = v8;
    _os_log_impl(&dword_1B1630000, v14, OS_LOG_TYPE_ERROR, "Failed to write temporary file since a directory is present: %{public}@", buf, 0xCu);
  }

  if (a5)
  {
    [MEMORY[0x1E695DEF0] _DMCCreateFolderExistError];
    *a5 = v15 = 0;
  }

  else
  {
    v15 = 0;
  }

LABEL_26:

  return v15;
}

- (uint64_t)DMCAtomicWriteToURL:()DMCUtilities writeOptions:error:
{
  path = [a3 path];
  v9 = [self DMCAtomicWriteToPath:path writeOptions:a4 error:a5];

  return v9;
}

+ (uint64_t)DMCDataWithCFData:()DMCUtilities
{
  v4 = MEMORY[0x1E695DEF0];
  BytePtr = CFDataGetBytePtr(theData);
  Length = CFDataGetLength(theData);

  return [v4 dataWithBytes:BytePtr length:Length];
}

+ (id)_DMCCreateFolderExistError
{
  v8 = MEMORY[0x1E696ABC0];
  v9 = DMCErrorArray(@"ERROR_DIRECTORY_EXIST_AT_DESTINATION", a2, a3, a4, a5, a6, a7, a8, 0);
  v10 = [v8 DMCErrorWithDomain:@"DMCInternalErrorDomain" code:5 descriptionArray:v9 errorType:0];

  return v10;
}

@end