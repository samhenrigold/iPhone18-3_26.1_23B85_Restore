@interface MFAttachmentBundle
+ (BOOL)isFileBundleURL:(id)l;
+ (id)_stripBundlePath:(id)path entryPath:(id)entryPath;
+ (id)dataForFileBundleURL:(id)l;
@end

@implementation MFAttachmentBundle

+ (BOOL)isFileBundleURL:(id)l
{
  lCopy = l;
  v7 = 0;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  path = [lCopy path];
  [defaultManager fileExistsAtPath:path isDirectory:&v7];

  LOBYTE(defaultManager) = v7;
  return defaultManager;
}

+ (id)_stripBundlePath:(id)path entryPath:(id)entryPath
{
  entryPathCopy = entryPath;
  path = [path path];
  v7 = [path length];
  v8 = [path hasSuffix:@"/"];
  path2 = [entryPathCopy path];
  v10 = [path2 substringFromIndex:v7 + (v8 ^ 1u)];

  return v10;
}

+ (id)dataForFileBundleURL:(id)l
{
  v44[1] = *MEMORY[0x1E69E9840];
  lCopy = l;
  v31 = [MFAttachmentSecurityScope securityScopedURL:?];
  if (![v31 isBundle])
  {
    v21 = MFLogGeneral();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      +[MFAttachmentBundle dataForFileBundleURL:];
    }

    goto LABEL_23;
  }

  if ([self isFileBundleURL:lCopy])
  {
    v29 = +[MFFileArchiveDirectory archiveDirectory];
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v5 = *MEMORY[0x1E695DB78];
    v44[0] = *MEMORY[0x1E695DB78];
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:1];
    v7 = [defaultManager enumeratorAtURL:lCopy includingPropertiesForKeys:v6 options:0 errorHandler:&__block_literal_global_110];

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v37 objects:v43 count:16];
    if (v9)
    {
      v11 = *v38;
      *&v10 = 138412290;
      v28 = v10;
      do
      {
        v12 = 0;
        do
        {
          if (*v38 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v37 + 1) + 8 * v12);
          v36 = 0;
          [v13 getResourceValue:&v36 forKey:v5 error:{0, v28}];
          v14 = v36;
          if (([v14 BOOLValue] & 1) == 0)
          {
            data = [v31 data];
            if (data)
            {
              v16 = [self _stripBundlePath:lCopy entryPath:v13];
              v17 = [[MFFileArchiveEntry alloc] initWithContents:data path:v16];
              [v29 setArchiveEntry:v17];
            }

            else
            {
              v16 = MFLogGeneral();
              if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
              {
                *buf = v28;
                v42 = v13;
                _os_log_error_impl(&dword_1B0389000, v16, OS_LOG_TYPE_ERROR, "#Attachments Failed to read bundle URL [%@]", buf, 0xCu);
              }
            }
          }

          ++v12;
        }

        while (v9 != v12);
        v9 = [v8 countByEnumeratingWithState:&v37 objects:v43 count:16];
      }

      while (v9);
    }

    promise = [MEMORY[0x1E699B868] promise];
    v19 = +[MFFileArchive archive];
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __43__MFAttachmentBundle_dataForFileBundleURL___block_invoke_113;
    v33[3] = &unk_1E7AA5028;
    v20 = promise;
    v34 = v20;
    v21 = v29;
    v35 = v21;
    [v19 compressContents:v21 completion:v33];

    future = [v20 future];
    v32 = 0;
    data2 = [future resultWithTimeout:&v32 error:300.0];
    v24 = v32;

    if (!data2)
    {
      v25 = MFLogGeneral();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        ef_publicDescription = [v24 ef_publicDescription];
        [(MFAttachmentBundle *)lCopy dataForFileBundleURL:ef_publicDescription, buf];
      }
    }

    goto LABEL_24;
  }

  if (![v31 isReadable])
  {
    v21 = MFLogGeneral();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      +[MFAttachmentBundle dataForFileBundleURL:];
    }

    goto LABEL_23;
  }

  data2 = [v31 data];
  if (!data2)
  {
    v21 = MFLogGeneral();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      +[MFAttachmentBundle dataForFileBundleURL:];
    }

LABEL_23:
    data2 = 0;
LABEL_24:
  }

  return data2;
}

uint64_t __43__MFAttachmentBundle_dataForFileBundleURL___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9[3] = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  v6 = MFLogGeneral();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = [v5 ef_publicDescription];
    __43__MFAttachmentBundle_dataForFileBundleURL___block_invoke_cold_1(v4, v7, v9);
  }

  return 1;
}

uint64_t __43__MFAttachmentBundle_dataForFileBundleURL___block_invoke_113(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v3)
  {
    [*(a1 + 32) finishWithError:v3];
  }

  else
  {
    v5 = [*(a1 + 40) contents];
    [v4 finishWithResult:v5];
  }

  return 1;
}

+ (void)dataForFileBundleURL:(uint64_t)a3 .cold.4(uint64_t a1, void *a2, uint64_t a3)
{
  OUTLINED_FUNCTION_1_1(a1, a2, a3, 5.778e-34);
  OUTLINED_FUNCTION_4_0(&dword_1B0389000, "#Attachments Failed to archive bundle attachment URL: %@ due to error: %{public}@", v4, v5);
}

void __43__MFAttachmentBundle_dataForFileBundleURL___block_invoke_cold_1(uint64_t a1, void *a2, uint64_t a3)
{
  OUTLINED_FUNCTION_1_1(a1, a2, a3, 5.778e-34);
  OUTLINED_FUNCTION_4_0(&dword_1B0389000, "#Attachments Failed to enumerate URL [%@] due to error [%{public}@]", v4, v5);
}

@end