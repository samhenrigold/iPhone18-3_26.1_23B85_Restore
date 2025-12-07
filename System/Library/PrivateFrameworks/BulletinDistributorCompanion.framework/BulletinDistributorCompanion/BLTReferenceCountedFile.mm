@interface BLTReferenceCountedFile
+ (BOOL)release:(id)release;
+ (BOOL)retain:(id)retain;
+ (BOOL)retain:(id)retain fileData:(id)data;
+ (BOOL)writeRetainCount:(int64_t)count oldMetadata:(id)metadata to:(id)to;
+ (id)metadataForFile:(id)file;
@end

@implementation BLTReferenceCountedFile

+ (BOOL)retain:(id)retain fileData:(id)data
{
  retainCopy = retain;
  dataCopy = data;
  os_unfair_lock_lock(&__read_write_lock);
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  relativePath = [retainCopy relativePath];
  v10 = [defaultManager fileExistsAtPath:relativePath];

  if (!v10)
  {
    v12 = [dataCopy writeToURL:retainCopy atomically:1];
    if (v12)
    {
      blt_metadataURL = [retainCopy blt_metadataURL];
      v14 = [self writeRetainCount:1 oldMetadata:MEMORY[0x277CBEC10] to:blt_metadataURL];

      if (v14)
      {
        os_unfair_lock_unlock(&__read_write_lock);
        v11 = 1;
        goto LABEL_15;
      }

      defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
      v22 = 0;
      v17 = [defaultManager2 removeItemAtURL:retainCopy error:&v22];
      v18 = v22;

      if ((v17 & 1) == 0)
      {
        v20 = blt_general_log(v19);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          +[BLTReferenceCountedFile retain:fileData:];
        }
      }

      os_unfair_lock_unlock(&__read_write_lock);
    }

    else
    {
      v15 = blt_general_log(v12);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        +[BLTReferenceCountedFile retain:fileData:];
      }

      os_unfair_lock_unlock(&__read_write_lock);
    }

    v11 = 0;
    goto LABEL_15;
  }

  v11 = [self retain:retainCopy];
  os_unfair_lock_unlock(&__read_write_lock);
LABEL_15:

  return v11;
}

+ (BOOL)retain:(id)retain
{
  retainCopy = retain;
  os_unfair_lock_assert_owner(&__read_write_lock);
  v5 = [self metadataForFile:retainCopy];
  v6 = v5;
  if (!v5)
  {
    v8 = blt_general_log(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      +[BLTReferenceCountedFile retain:];
    }

    goto LABEL_9;
  }

  v7 = [v5 objectForKeyedSubscript:@"refCount"];
  v8 = v7;
  if (!v7)
  {
    v12 = blt_general_log(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      +[BLTReferenceCountedFile retain:];
    }

LABEL_9:
    v11 = 0;
    goto LABEL_10;
  }

  v9 = ([v7 intValue]+ 1);
  blt_metadataURL = [retainCopy blt_metadataURL];
  v11 = [self writeRetainCount:v9 oldMetadata:v6 to:blt_metadataURL];

LABEL_10:
  return v11;
}

+ (id)metadataForFile:(id)file
{
  fileCopy = file;
  os_unfair_lock_assert_owner(&__read_write_lock);
  blt_metadataURL = [fileCopy blt_metadataURL];

  v5 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:blt_metadataURL];
  if (!v5)
  {
    v6 = blt_general_log(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      +[BLTReferenceCountedFile retain:];
    }
  }

  return v5;
}

+ (BOOL)writeRetainCount:(int64_t)count oldMetadata:(id)metadata to:(id)to
{
  toCopy = to;
  metadataCopy = metadata;
  os_unfair_lock_assert_owner(&__read_write_lock);
  v9 = [metadataCopy mutableCopy];

  v10 = [MEMORY[0x277CCABB0] numberWithInteger:count];
  [v9 setObject:v10 forKeyedSubscript:@"refCount"];

  v11 = [v9 writeToURL:toCopy atomically:1];
  v12 = v11;
  if ((v11 & 1) == 0)
  {
    v13 = blt_general_log(v11);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      +[BLTReferenceCountedFile writeRetainCount:oldMetadata:to:];
    }
  }

  return v12;
}

+ (BOOL)release:(id)release
{
  releaseCopy = release;
  os_unfair_lock_lock(&__read_write_lock);
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  relativePath = [releaseCopy relativePath];
  v7 = [defaultManager fileExistsAtPath:relativePath];

  if (v7)
  {
    v9 = [self metadataForFile:releaseCopy];
    v10 = [v9 objectForKeyedSubscript:@"refCount"];
    v11 = v10;
    if (v9 && v10)
    {
      intValue = [v10 intValue];
      if (intValue < 2)
      {
        defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
        v32 = 0;
        v17 = [defaultManager2 removeItemAtURL:releaseCopy error:&v32];
        v21 = v32;

        if ((v17 & 1) == 0)
        {
          v23 = blt_general_log(v22);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            +[BLTReferenceCountedFile release:];
          }
        }

        defaultManager3 = [MEMORY[0x277CCAA00] defaultManager];
        blt_metadataURL = [releaseCopy blt_metadataURL];
        v31 = v21;
        v26 = [defaultManager3 removeItemAtURL:blt_metadataURL error:&v31];
        v27 = v31;

        if ((v26 & 1) == 0)
        {
          v29 = blt_general_log(v28);
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            +[BLTReferenceCountedFile release:];
          }

          v17 = 0;
        }

        os_unfair_lock_unlock(&__read_write_lock);

        goto LABEL_22;
      }

      v13 = (intValue - 1);
      blt_metadataURL2 = [releaseCopy blt_metadataURL];
      v15 = [self writeRetainCount:v13 oldMetadata:v9 to:blt_metadataURL2];

      if (v15)
      {
        os_unfair_lock_unlock(&__read_write_lock);
        v17 = 1;
LABEL_22:

        goto LABEL_23;
      }

      v19 = blt_general_log(v16);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        +[BLTReferenceCountedFile release:];
      }
    }

    else
    {
      v19 = blt_general_log(v10);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        +[BLTReferenceCountedFile release:];
      }
    }

    os_unfair_lock_unlock(&__read_write_lock);
    v17 = 0;
    goto LABEL_22;
  }

  v18 = blt_general_log(v8);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    +[BLTReferenceCountedFile release:];
  }

  os_unfair_lock_unlock(&__read_write_lock);
  v17 = 0;
LABEL_23:

  return v17;
}

@end