@interface CCSnapshotUtilities
+ (id)_filenameWithTimestamp:(id)timestamp set:(id)set format:(unsigned __int8)format;
+ (id)pathFromDate:(id)date;
+ (id)snapshotSets:(id)sets directory:(id)directory useCase:(id)case format:(unsigned __int8)format date:(id)date error:(id *)error;
@end

@implementation CCSnapshotUtilities

+ (id)_filenameWithTimestamp:(id)timestamp set:(id)set format:(unsigned __int8)format
{
  formatCopy = format;
  timestampCopy = timestamp;
  setCopy = set;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v10 = CCTypeIdentifierRegistryBridge(isKindOfClass);
    v11 = [v10 setIdentifierForItemType:{objc_msgSend(setCopy, "itemType")}];

    descriptors = [setCopy descriptors];
    v13 = [descriptors count];

    if (v13)
    {
      v14 = MEMORY[0x1E696AEC0];
      encodedDescriptors = [setCopy encodedDescriptors];
      v16 = [v14 stringWithFormat:@"_[%@]", encodedDescriptors];
    }

    else
    {
      v16 = &stru_1F2EBB700;
    }

    if (formatCopy == 1)
    {
      v18 = @"dat";
    }

    else
    {
      if (formatCopy != 2)
      {
        v19 = __biome_log_for_category();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          [CCSnapshotUtilities _filenameWithTimestamp:formatCopy set:v19 format:?];
        }

        v17 = 0;
        goto LABEL_16;
      }

      v18 = @"json";
    }

    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@_%@.%@", v11, v16, timestampCopy, v18];
LABEL_16:

    goto LABEL_17;
  }

  v11 = __biome_log_for_category();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    [CCSnapshotUtilities _filenameWithTimestamp:setCopy set:v11 format:?];
  }

  v17 = 0;
LABEL_17:

  return v17;
}

+ (id)pathFromDate:(id)date
{
  v3 = MEMORY[0x1E696AB78];
  dateCopy = date;
  v5 = objc_alloc_init(v3);
  [v5 setDateFormat:@"yyyy.MM.dd_hh-mm-ss.SSSZZZ"];
  v6 = [v5 stringFromDate:dateCopy];

  return v6;
}

+ (id)snapshotSets:(id)sets directory:(id)directory useCase:(id)case format:(unsigned __int8)format date:(id)date error:(id *)error
{
  formatCopy = format;
  v57 = *MEMORY[0x1E69E9840];
  setsCopy = sets;
  directoryCopy = directory;
  caseCopy = case;
  dateCopy = date;
  v43 = [objc_opt_class() pathFromDate:dateCopy];
  v13 = __biome_log_for_category();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109890;
    *v56 = [setsCopy count];
    *&v56[4] = 2112;
    *&v56[6] = v43;
    *&v56[14] = 2112;
    *&v56[16] = directoryCopy;
    *&v56[24] = 2112;
    *&v56[26] = setsCopy;
    _os_log_impl(&dword_1B6DB2000, v13, OS_LOG_TYPE_DEFAULT, "Capturing %u set snapshot(s) with timestamp: %@ to directory: %@ [%@]", buf, 0x26u);
  }

  v45 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(setsCopy, "count")}];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  obj = setsCopy;
  v42 = [obj countByEnumeratingWithState:&v48 objects:v54 count:16];
  v14 = 0;
  if (v42)
  {
    v40 = *v49;
    v36 = *MEMORY[0x1E696A278];
    v37 = *MEMORY[0x1E696A250];
    v41 = directoryCopy;
    do
    {
      v15 = 0;
      v16 = v14;
      do
      {
        if (*v49 != v40)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v48 + 1) + 8 * v15);
        v18 = objc_autoreleasePoolPush();
        v19 = [objc_opt_class() _filenameWithTimestamp:v43 set:v17 format:formatCopy];
        v20 = [MEMORY[0x1E695DFF8] fileURLWithPath:v19 isDirectory:0 relativeToURL:directoryCopy];
        v21 = [MEMORY[0x1E695DFC0] outputStreamWithURL:v20 append:0];
        [v21 open];
        if ([v21 streamStatus] != 2)
        {
          v28 = MEMORY[0x1E696ABC0];
          v52 = v36;
          directoryCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to open NSOutputStream with filename: %@ directory: %@", v19, directoryCopy];
          v53 = directoryCopy;
          v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v53 forKeys:&v52 count:1];
          v14 = [v28 errorWithDomain:v37 code:-1000 userInfo:v30];

          v31 = __biome_log_for_category();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            *v56 = v17;
            *&v56[8] = 2112;
            *&v56[10] = v14;
            _os_log_error_impl(&dword_1B6DB2000, v31, OS_LOG_TYPE_ERROR, "Failed to create snapshot file for set: %@ error: %@", buf, 0x16u);
          }

          v27 = 0;
          v22 = v45;
          goto LABEL_20;
        }

        v47 = v16;
        v22 = [v17 serializeWithUseCase:caseCopy error:&v47];
        v14 = v47;

        if (!v22)
        {
          v32 = __biome_log_for_category();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            *v56 = v17;
            *&v56[8] = 2112;
            *&v56[10] = v14;
            _os_log_error_impl(&dword_1B6DB2000, v32, OS_LOG_TYPE_ERROR, "Failed to serialize set: %@ error: %@", buf, 0x16u);
          }

          v27 = 0;
LABEL_20:
          v45 = 0;
          goto LABEL_25;
        }

        v46 = v14;
        v23 = [v22 writeToStream:v21 format:formatCopy error:&v46];
        v24 = v46;

        v25 = __biome_log_for_category();
        v26 = v25;
        if (v23)
        {
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            *v56 = v20;
            _os_log_impl(&dword_1B6DB2000, v26, OS_LOG_TYPE_DEFAULT, "Snapshot written to file: %@", buf, 0xCu);
          }

          [v45 addObject:v20];
          v27 = 1;
        }

        else
        {
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412802;
            *v56 = v22;
            *&v56[8] = 2112;
            *&v56[10] = v21;
            *&v56[18] = 2112;
            *&v56[20] = v24;
            _os_log_error_impl(&dword_1B6DB2000, v26, OS_LOG_TYPE_ERROR, "Failed to write serialized set: %@ to stream: %@ error: %@", buf, 0x20u);
          }

          v27 = 0;
          v45 = 0;
        }

        v14 = v24;
LABEL_25:
        directoryCopy = v41;

        objc_autoreleasePoolPop(v18);
        if (!v27)
        {
          goto LABEL_28;
        }

        ++v15;
        v16 = v14;
      }

      while (v42 != v15);
      v42 = [obj countByEnumeratingWithState:&v48 objects:v54 count:16];
    }

    while (v42);
  }

LABEL_28:

  CCSetError(error, v14);

  return v45;
}

+ (void)_filenameWithTimestamp:(uint64_t)a1 set:(NSObject *)a2 format:.cold.1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = 138412290;
  v6 = v4;
  _os_log_error_impl(&dword_1B6DB2000, a2, OS_LOG_TYPE_ERROR, "Unexpected set: %@", &v5, 0xCu);
}

+ (void)_filenameWithTimestamp:(int)a1 set:(NSObject *)a2 format:.cold.2(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_1B6DB2000, a2, OS_LOG_TYPE_ERROR, "Unexpected format: %u", v2, 8u);
}

@end