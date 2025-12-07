@interface NSURL(_QL_Utilities)
+ (id)_QLCreateTemporaryDirectory:()_QL_Utilities;
+ (id)_QLCreateTemporaryDirectoryForOriginalFileAtURL:()_QL_Utilities error:;
+ (id)_QLTemporaryFileURLWithType:()_QL_Utilities filename:;
+ (id)_QLTemporaryFileURLWithType:()_QL_Utilities uuid:;
+ (void)_QLTemporaryFileURLWithType:()_QL_Utilities forOriginalFileAtURL:temporaryFileURL:temporaryDirectoryURL:fallbackUUID:;
- (id)_QLSingleFileSizeForURL:()_QL_Utilities;
- (id)_QLUrlFileSize;
- (uint64_t)_QLDownloadingStatusIsNotCurrent;
- (uint64_t)_QLIsHiddenFile;
- (uint64_t)_QLIsPackageURL;
@end

@implementation NSURL(_QL_Utilities)

- (uint64_t)_QLIsPackageURL
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0;
  v2 = *MEMORY[0x277CBE890];
  v10 = 0;
  v3 = [self getResourceValue:&v11 forKey:v2 error:&v10];
  v4 = v11;
  v5 = v10;
  if ((v3 & 1) == 0)
  {
    v6 = MEMORY[0x277D43EF8];
    v7 = *MEMORY[0x277D43EF8];
    if (!*MEMORY[0x277D43EF8])
    {
      QLSInitLogging();
      v7 = *v6;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      selfCopy = self;
      v14 = 2112;
      v15 = v5;
      _os_log_impl(&dword_261653000, v7, OS_LOG_TYPE_ERROR, "Failed to determine if url is package: %@ (%@) #Generic", buf, 0x16u);
    }
  }

  bOOLValue = [v4 BOOLValue];

  return bOOLValue;
}

- (uint64_t)_QLDownloadingStatusIsNotCurrent
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0;
  v2 = *MEMORY[0x277CBE948];
  v10 = 0;
  v3 = [self getPromisedItemResourceValue:&v11 forKey:v2 error:&v10];
  v4 = v11;
  v5 = v10;
  if ((v3 & 1) == 0)
  {
    v7 = MEMORY[0x277D43EF8];
    v8 = *MEMORY[0x277D43EF8];
    if (!*MEMORY[0x277D43EF8])
    {
      QLSInitLogging();
      v8 = *v7;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      selfCopy = self;
      v14 = 2112;
      v15 = v5;
      _os_log_impl(&dword_261653000, v8, OS_LOG_TYPE_ERROR, "Failed to get download status for url:%@ error:%@ #Generic", buf, 0x16u);
    }

    goto LABEL_9;
  }

  if (!v4 || [v4 isEqualToString:*MEMORY[0x277CBE938]])
  {
LABEL_9:
    v6 = 0;
    goto LABEL_10;
  }

  v6 = 1;
LABEL_10:

  return v6;
}

- (uint64_t)_QLIsHiddenFile
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0;
  v2 = *MEMORY[0x277CBE888];
  v10 = 0;
  v3 = [self getPromisedItemResourceValue:&v11 forKey:v2 error:&v10];
  v4 = v11;
  v5 = v10;
  if (v3)
  {
    bOOLValue = [v4 BOOLValue];
  }

  else
  {
    v7 = MEMORY[0x277D43EF8];
    v8 = *MEMORY[0x277D43EF8];
    if (!*MEMORY[0x277D43EF8])
    {
      QLSInitLogging();
      v8 = *v7;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      selfCopy = self;
      v14 = 2112;
      v15 = v5;
      _os_log_impl(&dword_261653000, v8, OS_LOG_TYPE_ERROR, "Failed to determine if file is hidden for url: %@ error: %@ #Generic", buf, 0x16u);
    }

    bOOLValue = 0;
  }

  return bOOLValue;
}

- (id)_QLSingleFileSizeForURL:()_QL_Utilities
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v12 = 0;
  v4 = *MEMORY[0x277CBE838];
  v11 = 0;
  v5 = [v3 getPromisedItemResourceValue:&v12 forKey:v4 error:&v11];
  v6 = v12;
  v7 = v11;
  if ((v5 & 1) == 0)
  {
    v8 = MEMORY[0x277D43EF8];
    v9 = *MEMORY[0x277D43EF8];
    if (!*MEMORY[0x277D43EF8])
    {
      QLSInitLogging();
      v9 = *v8;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v14 = v3;
      v15 = 2112;
      v16 = v7;
      _os_log_impl(&dword_261653000, v9, OS_LOG_TYPE_ERROR, "Error getting the size of file(%@) with error (%@) #Generic", buf, 0x16u);
    }
  }

  return v6;
}

- (id)_QLUrlFileSize
{
  selfCopy = self;
  v46 = *MEMORY[0x277D85DE8];
  if ([self _QLDownloadingStatusIsNotCurrent])
  {
    goto LABEL_15;
  }

  v40 = 0;
  v2 = *MEMORY[0x277CBE868];
  v39 = 0;
  v3 = [selfCopy getResourceValue:&v40 forKey:v2 error:&v39];
  v4 = v40;
  v5 = v39;
  if ((v3 & 1) == 0)
  {
    v13 = MEMORY[0x277D43EF8];
    v14 = *MEMORY[0x277D43EF8];
    if (!*MEMORY[0x277D43EF8])
    {
      QLSInitLogging();
      v14 = *v13;
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v43 = selfCopy;
      v44 = 2112;
      v45 = v5;
      _os_log_impl(&dword_261653000, v14, OS_LOG_TYPE_ERROR, "Failed to determine if the URL (%@) is a directory error: %@ #Generic", buf, 0x16u);
    }

    goto LABEL_14;
  }

  if (![v4 BOOLValue])
  {
LABEL_14:

LABEL_15:
    v12 = [selfCopy _QLSingleFileSizeForURL:{selfCopy, v28, v29, v30, v31, v32}];
    goto LABEL_16;
  }

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  path = [selfCopy path];
  v38 = 0;
  v8 = [defaultManager contentsOfDirectoryAtPath:path error:&v38];
  v9 = v38;

  if (v9)
  {
    v10 = MEMORY[0x277D43EF8];
    v11 = *MEMORY[0x277D43EF8];
    if (!*MEMORY[0x277D43EF8])
    {
      QLSInitLogging();
      v11 = *v10;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v43 = selfCopy;
      v44 = 2112;
      v45 = v9;
      _os_log_impl(&dword_261653000, v11, OS_LOG_TYPE_ERROR, "Failed to get the contents of folder at URL (%@) with error: %@ #Generic", buf, 0x16u);
    }

    v12 = 0;
  }

  else
  {
    v28 = 0;
    v29 = v8;
    v30 = defaultManager;
    v31 = v5;
    v32 = v4;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    obj = v8;
    v16 = [obj countByEnumeratingWithState:&v34 objects:v41 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = 0;
      v19 = *v35;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v35 != v19)
          {
            objc_enumerationMutation(obj);
          }

          v21 = *(*(&v34 + 1) + 8 * i);
          v22 = MEMORY[0x277CBEBC0];
          path2 = [selfCopy path];
          v24 = [path2 stringByAppendingPathComponent:v21];
          v25 = [v22 fileURLWithPath:v24];
          [v25 _QLUrlFileSize];
          v27 = v26 = selfCopy;
          v18 += [v27 unsignedLongLongValue];

          selfCopy = v26;
        }

        v17 = [obj countByEnumeratingWithState:&v34 objects:v41 count:16];
      }

      while (v17);
    }

    else
    {
      v18 = 0;
    }

    v12 = [MEMORY[0x277CCABB0] numberWithLong:v18];
    v5 = v31;
    v4 = v32;
    v8 = v29;
    defaultManager = v30;
    v9 = v28;
  }

  if (!v12)
  {
    goto LABEL_15;
  }

LABEL_16:

  return v12;
}

+ (id)_QLCreateTemporaryDirectory:()_QL_Utilities
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEBC0];
  v5 = NSTemporaryDirectory();
  v6 = [v4 fileURLWithPath:v5];
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  v9 = [v6 URLByAppendingPathComponent:uUIDString isDirectory:1];

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v17 = 0;
  LOBYTE(uUID) = [defaultManager createDirectoryAtURL:v9 withIntermediateDirectories:1 attributes:0 error:&v17];
  v11 = v17;

  if (uUID)
  {
    v12 = v9;
  }

  else
  {
    v13 = MEMORY[0x277D43EF8];
    v14 = *MEMORY[0x277D43EF8];
    if (!*MEMORY[0x277D43EF8])
    {
      QLSInitLogging();
      v14 = *v13;
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v19 = v9;
      v20 = 2112;
      v21 = v11;
      _os_log_impl(&dword_261653000, v14, OS_LOG_TYPE_ERROR, "Failed to create a temporary directory URL for URL: %@. Error: %@ #Generic", buf, 0x16u);
    }

    if (a3)
    {
      v15 = v11;
      v12 = 0;
      *a3 = v11;
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

+ (id)_QLTemporaryFileURLWithType:()_QL_Utilities filename:
{
  v5 = a4;
  preferredFilenameExtension = [a3 preferredFilenameExtension];
  stringByDeletingPathExtension = [v5 stringByDeletingPathExtension];

  v8 = MEMORY[0x277CBEBC0];
  v9 = NSTemporaryDirectory();
  v10 = [v8 fileURLWithPath:v9];
  v11 = [v10 URLByAppendingPathComponent:stringByDeletingPathExtension];
  v12 = [v11 URLByAppendingPathExtension:preferredFilenameExtension];

  return v12;
}

+ (id)_QLTemporaryFileURLWithType:()_QL_Utilities uuid:
{
  v5 = MEMORY[0x277CBEBC0];
  v6 = a3;
  uUIDString = [a4 UUIDString];
  v8 = [v5 _QLTemporaryFileURLWithType:v6 filename:uUIDString];

  return v8;
}

+ (void)_QLTemporaryFileURLWithType:()_QL_Utilities forOriginalFileAtURL:temporaryFileURL:temporaryDirectoryURL:fallbackUUID:
{
  v29 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a7;
  preferredFilenameExtension = [v11 preferredFilenameExtension];
  v15 = *a6;
  if (*a6)
  {
    goto LABEL_9;
  }

  v16 = MEMORY[0x277D43EF8];
  v17 = *MEMORY[0x277D43EF8];
  if (!*MEMORY[0x277D43EF8])
  {
    QLSInitLogging();
    v17 = *v16;
  }

  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_261653000, v17, OS_LOG_TYPE_INFO, "No temporary directory passed from host #Generic", buf, 2u);
  }

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v24 = 0;
  lastPathComponent = [defaultManager URLForDirectory:99 inDomain:1 appropriateForURL:v12 create:1 error:&v24];
  uRLByDeletingPathExtension = v24;

  if (lastPathComponent && !uRLByDeletingPathExtension)
  {
    v21 = lastPathComponent;
    *a6 = lastPathComponent;

    v15 = *a6;
LABEL_9:
    uRLByDeletingPathExtension = [v12 URLByDeletingPathExtension];
    lastPathComponent = [uRLByDeletingPathExtension lastPathComponent];
    v22 = [v15 URLByAppendingPathComponent:lastPathComponent];
    *a5 = [v22 URLByAppendingPathExtension:preferredFilenameExtension];

    goto LABEL_10;
  }

  v23 = *v16;
  if (!*v16)
  {
    QLSInitLogging();
    v23 = *v16;
  }

  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    v26 = v12;
    v27 = 2112;
    v28 = uRLByDeletingPathExtension;
    _os_log_impl(&dword_261653000, v23, OS_LOG_TYPE_ERROR, "Failed to create a temporary directory URL for URL: %@. Error: %@ #Generic", buf, 0x16u);
  }

  if (a5)
  {
    *a5 = [MEMORY[0x277CBEBC0] _QLTemporaryFileURLWithType:v11 uuid:v13];
  }

LABEL_10:
}

+ (id)_QLCreateTemporaryDirectoryForOriginalFileAtURL:()_QL_Utilities error:
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v15 = 0;
  v7 = [defaultManager URLForDirectory:99 inDomain:1 appropriateForURL:v5 create:1 error:&v15];
  v8 = v15;

  if (v7)
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    v12 = v7;
  }

  else
  {
    v10 = MEMORY[0x277D43EF8];
    v11 = *MEMORY[0x277D43EF8];
    if (!*MEMORY[0x277D43EF8])
    {
      QLSInitLogging();
      v11 = *v10;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v17 = v5;
      v18 = 2112;
      v19 = v8;
      _os_log_impl(&dword_261653000, v11, OS_LOG_TYPE_ERROR, "Failed to create a temporary directory URL for URL: %@. Error: %@ #Generic", buf, 0x16u);
    }

    v12 = [MEMORY[0x277CBEBC0] _QLCreateTemporaryDirectory:a4];
  }

  v13 = v12;

  return v13;
}

@end