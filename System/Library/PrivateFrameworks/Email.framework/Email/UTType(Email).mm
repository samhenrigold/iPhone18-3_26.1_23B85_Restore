@interface UTType(Email)
+ (id)em_contentTypeForFilename:()Email fileURL:;
+ (id)log;
@end

@implementation UTType(Email)

+ (id)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __20__UTType_Email__log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken_41 != -1)
  {
    dispatch_once(&log_onceToken_41, block);
  }

  v1 = log_log_41;

  return v1;
}

+ (id)em_contentTypeForFilename:()Email fileURL:
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  pathExtension = [v5 pathExtension];
  v8 = MEMORY[0x1E6982D60];
  if (pathExtension && ([MEMORY[0x1E6982C40] typeWithFilenameExtension:pathExtension conformingToType:*MEMORY[0x1E6982D60]], (v9 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v10 = [MEMORY[0x1E6982C40] log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v15 = 138543874;
      v16 = v9;
      v17 = 2112;
      v18 = v5;
      v19 = 2112;
      v20 = v6;
      _os_log_debug_impl(&dword_1C6655000, v10, OS_LOG_TYPE_DEBUG, "Content type is %{public}@ for attachment file name '%@', file URL '%@'", &v15, 0x20u);
    }
  }

  else
  {
    pathExtension2 = [v6 pathExtension];

    if (pathExtension2 && ([MEMORY[0x1E6982C40] typeWithFilenameExtension:pathExtension2 conformingToType:*v8], (v9 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v12 = [MEMORY[0x1E6982C40] log];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v15 = 138412802;
        v16 = v5;
        v17 = 2112;
        v18 = v6;
        v19 = 2112;
        v20 = v9;
        _os_log_error_impl(&dword_1C6655000, v12, OS_LOG_TYPE_ERROR, "Unable to determine content type for item from its filename '%@'. Falling back to attachment file URL '%@': %@", &v15, 0x20u);
      }
    }

    else
    {
      v13 = [MEMORY[0x1E6982C40] log];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [(UTType(Email) *)v5 em_contentTypeForFilename:v6 fileURL:v13];
      }

      v9 = *v8;
    }

    pathExtension = pathExtension2;
  }

  return v9;
}

+ (void)em_contentTypeForFilename:()Email fileURL:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_1C6655000, log, OS_LOG_TYPE_ERROR, "Unable to determine content type for item. Attachment file name '%@', file URL: '%@'", &v3, 0x16u);
}

@end