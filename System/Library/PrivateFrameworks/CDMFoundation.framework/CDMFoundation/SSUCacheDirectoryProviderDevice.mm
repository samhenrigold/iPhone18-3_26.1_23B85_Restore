@interface SSUCacheDirectoryProviderDevice
- (id)lookupOrCreateCacheDirectory:(id *)directory;
@end

@implementation SSUCacheDirectoryProviderDevice

- (id)lookupOrCreateCacheDirectory:(id *)directory
{
  v39[2] = *MEMORY[0x1E69E9840];
  getUserCacheDirectoriesList = [objc_opt_class() getUserCacheDirectoriesList];
  if ([getUserCacheDirectoriesList count] == 1)
  {
    v5 = MEMORY[0x1E695DFF8];
    v6 = [getUserCacheDirectoriesList objectAtIndexedSubscript:0];
    v7 = [v5 fileURLWithPath:v6 isDirectory:1];

    v8 = [v7 URLByAppendingPathComponent:@"ssu" isDirectory:1];
    v29 = 0;
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    path = [v8 path];
    v11 = [defaultManager fileExistsAtPath:path isDirectory:&v29];

    if (v11)
    {
      if ((v29 & 1) == 0)
      {
        if (directory)
        {
          v12 = *MEMORY[0x1E696A588];
          v36[0] = *MEMORY[0x1E696A578];
          v36[1] = v12;
          v37[0] = @"Could not lookup/create cache directory.";
          v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"There is already a non-directory file at path: %@.", v8];
          v37[1] = v13;
          v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:v36 count:2];

          *directory = [MEMORY[0x1E696ABC0] errorWithDomain:@"SSUCacheDirectoryProviderErrorDomain" code:1 userInfo:v14];
        }

LABEL_17:
        v18 = 0;
        goto LABEL_18;
      }
    }

    else
    {
      v19 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315394;
        v33 = "[SSUCacheDirectoryProviderDevice lookupOrCreateCacheDirectory:]";
        v34 = 2112;
        v35 = v8;
        _os_log_debug_impl(&dword_1DC287000, v19, OS_LOG_TYPE_DEBUG, "%s SSU cache directory does not already exist. Creating it at path: %@", buf, 0x16u);
      }

      defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
      createDirectoryAttributes = [objc_opt_class() createDirectoryAttributes];
      v28 = 0;
      v22 = [defaultManager2 createDirectoryAtURL:v8 withIntermediateDirectories:1 attributes:createDirectoryAttributes error:&v28];
      v23 = v28;

      if ((v22 & 1) == 0)
      {
        if (directory)
        {
          v24 = *MEMORY[0x1E696A588];
          v30[0] = *MEMORY[0x1E696A578];
          v30[1] = v24;
          v31[0] = @"Could not lookup/create cache directory.";
          v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error creating directory at path: %@. Error: %@.", v8, v23];
          v31[1] = v25;
          v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:v30 count:2];

          *directory = [MEMORY[0x1E696ABC0] errorWithDomain:@"SSUCacheDirectoryProviderErrorDomain" code:2 userInfo:v26];
        }

        goto LABEL_17;
      }
    }

    v18 = v8;
LABEL_18:

    goto LABEL_19;
  }

  if (!directory)
  {
    v18 = 0;
    goto LABEL_20;
  }

  v15 = *MEMORY[0x1E696A578];
  v39[0] = @"Could not lookup/create cache directory.";
  v16 = *MEMORY[0x1E696A588];
  v38[0] = v15;
  v38[1] = v16;
  v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Expected a unique user cache directory, but received: %@.", getUserCacheDirectoriesList];
  v39[1] = v17;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:v38 count:2];

  [MEMORY[0x1E696ABC0] errorWithDomain:@"SSUCacheDirectoryProviderErrorDomain" code:0 userInfo:v7];
  *directory = v18 = 0;
LABEL_19:

LABEL_20:

  return v18;
}

@end