@interface NSCKMetadataAsset
- (BOOL)_validate:(_BOOL8)result;
- (BOOL)validateForInsert:(id *)insert;
- (BOOL)validateForUpdate:(id *)update;
@end

@implementation NSCKMetadataAsset

- (BOOL)validateForInsert:(id *)insert
{
  v7.receiver = self;
  v7.super_class = NSCKMetadataAsset;
  v5 = [(NSManagedObject *)&v7 validateForInsert:?];
  if (v5)
  {
    LOBYTE(v5) = [(NSCKMetadataAsset *)self _validate:insert];
  }

  return v5;
}

- (BOOL)_validate:(_BOOL8)result
{
  v18[2] = *MEMORY[0x1E69E9840];
  if (result)
  {
    v3 = result;
    if ([result binaryData] || objc_msgSend(v3, "externalBinaryData"))
    {
      return 1;
    }

    v4 = MEMORY[0x1E696ABC0];
    v5 = *MEMORY[0x1E696A250];
    v17[0] = *MEMORY[0x1E696A588];
    v6 = MEMORY[0x1E696AEC0];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v17[1] = @"offendingObject";
    v18[0] = objc_msgSend_stringWithFormat_(v6, v8);
    v18[1] = [v3 objectID];
    v9 = [v4 errorWithDomain:v5 code:134060 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v18, v17, 2)}];
    if (v9)
    {
      if (a2)
      {
        v10 = v9;
        result = 0;
        *a2 = v10;
        return result;
      }

      return 0;
    }

    LogStream = _PFLogGetLogStream(17);
    if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v14 = "/Library/Caches/com.apple.xbs/Sources/Persistence/Classes/Persistency/CloudKit/Metadata/Entities/NSCKMetadataAsset.m";
      v15 = 1024;
      v16 = 70;
      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
    }

    v12 = _PFLogGetLogStream(17);
    result = os_log_type_enabled(v12, OS_LOG_TYPE_FAULT);
    if (result)
    {
      *buf = 136315394;
      v14 = "/Library/Caches/com.apple.xbs/Sources/Persistence/Classes/Persistency/CloudKit/Metadata/Entities/NSCKMetadataAsset.m";
      v15 = 1024;
      v16 = 70;
      _os_log_fault_impl(&dword_18565F000, v12, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
      return 0;
    }
  }

  return result;
}

- (BOOL)validateForUpdate:(id *)update
{
  v7.receiver = self;
  v7.super_class = NSCKMetadataAsset;
  v5 = [(NSManagedObject *)&v7 validateForUpdate:?];
  if (v5)
  {
    LOBYTE(v5) = [(NSCKMetadataAsset *)self _validate:update];
  }

  return v5;
}

@end