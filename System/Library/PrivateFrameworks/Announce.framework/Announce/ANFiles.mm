@interface ANFiles
+ (id)createTemporaryFileWithData:(id)data extension:(id)extension directory:(id)directory;
+ (id)createTemporaryURLWithFileExtension:(id)extension directory:(id)directory;
+ (id)shared;
+ (id)temporaryDirectoryUrl;
+ (void)purgeTemporarySubDirectory:(id)directory;
+ (void)removeItem:(id)item;
- (id)createDirectory:(id)directory andFileURLWithExtension:(id)extension;
- (id)createTemporaryFileWithData:(id)data extension:(id)extension directory:(id)directory;
- (void)purgeTemporarySubDirectory:(id)directory;
- (void)removeDirectoryIfEmpty:(id)empty;
- (void)removeItem:(id)item;
@end

@implementation ANFiles

+ (id)shared
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __17__ANFiles_shared__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (shared_onceToken != -1)
  {
    dispatch_once(&shared_onceToken, block);
  }

  v2 = shared_shared;

  return v2;
}

uint64_t __17__ANFiles_shared__block_invoke(uint64_t a1, uint64_t a2)
{
  shared_shared = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

+ (id)createTemporaryFileWithData:(id)data extension:(id)extension directory:(id)directory
{
  directoryCopy = directory;
  extensionCopy = extension;
  dataCopy = data;
  v10 = +[ANFiles shared];
  v11 = [v10 createTemporaryFileWithData:dataCopy extension:extensionCopy directory:directoryCopy];

  return v11;
}

+ (id)createTemporaryURLWithFileExtension:(id)extension directory:(id)directory
{
  directoryCopy = directory;
  extensionCopy = extension;
  v7 = +[ANFiles shared];
  v8 = [v7 createTemporaryURLWithExtension:extensionCopy directory:directoryCopy];

  return v8;
}

+ (void)purgeTemporarySubDirectory:(id)directory
{
  directoryCopy = directory;
  v4 = +[ANFiles shared];
  [v4 purgeTemporarySubDirectory:directoryCopy];
}

+ (void)removeItem:(id)item
{
  itemCopy = item;
  v4 = +[ANFiles shared];
  [v4 removeItem:itemCopy];
}

+ (id)temporaryDirectoryUrl
{
  v2 = MEMORY[0x277CBEBC0];
  v3 = NSTemporaryDirectory();
  v4 = [v2 fileURLWithPath:v3];

  return v4;
}

- (id)createTemporaryFileWithData:(id)data extension:(id)extension directory:(id)directory
{
  v21 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v9 = [(ANFiles *)self createDirectory:directory andFileURLWithExtension:extension];
  if (!v9)
  {
    goto LABEL_4;
  }

  v16 = 0;
  v10 = [dataCopy writeToURL:v9 options:1 error:&v16];
  v11 = v16;
  v12 = v11;
  if (v10)
  {

LABEL_4:
    v13 = v9;
    goto LABEL_8;
  }

  v14 = ANLogHandleFiles(v11);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    v18 = &stru_2836DAA20;
    v19 = 2112;
    v20 = v12;
    _os_log_impl(&dword_2237C8000, v14, OS_LOG_TYPE_ERROR, "%@ANFiles: failed to write to temporary file: %@", buf, 0x16u);
  }

  v13 = 0;
LABEL_8:

  return v13;
}

- (void)purgeTemporarySubDirectory:(id)directory
{
  v33 = *MEMORY[0x277D85DE8];
  directoryCopy = directory;
  v4 = +[ANFiles temporaryDirectoryUrl];
  v5 = [v4 URLByAppendingPathComponent:directoryCopy isDirectory:1];

  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];

  v8 = +[ANFiles temporaryDirectoryUrl];
  v9 = [v8 URLByAppendingPathComponent:uUIDString isDirectory:1];

  fileSystemRepresentation = [v5 fileSystemRepresentation];
  fileSystemRepresentation2 = [v9 fileSystemRepresentation];
  rename(fileSystemRepresentation, fileSystemRepresentation2, v12);
  if (v13)
  {
    v14 = __error();
    v15 = *v14;
    v16 = ANLogHandleFiles(v14);
    v17 = v16;
    if (v15 == 2)
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v28 = &stru_2836DAA20;
        v18 = "%@ANFiles: skipping purge, directory does not exist";
        v19 = v17;
        v20 = OS_LOG_TYPE_DEFAULT;
        v21 = 12;
LABEL_11:
        _os_log_impl(&dword_2237C8000, v19, v20, v18, buf, v21);
      }
    }

    else if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v25 = *__error();
      *buf = 138412546;
      v28 = &stru_2836DAA20;
      v29 = 1024;
      LODWORD(v30) = v25;
      v18 = "%@ANFiles: failed to rename directory before safely purging: %d";
      v19 = v17;
      v20 = OS_LOG_TYPE_ERROR;
      v21 = 18;
      goto LABEL_11;
    }
  }

  else
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v26 = 0;
    [defaultManager removeItemAtURL:v9 error:&v26];
    v17 = v26;

    if (v17)
    {
      v24 = ANLogHandleFiles(v23);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        v28 = &stru_2836DAA20;
        v29 = 2112;
        v30 = v9;
        v31 = 2112;
        v32 = v17;
        _os_log_impl(&dword_2237C8000, v24, OS_LOG_TYPE_ERROR, "%@ANFiles: failed to remove temporary sub directory at %@: %@", buf, 0x20u);
      }
    }
  }
}

- (void)removeItem:(id)item
{
  v16 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v9 = 0;
  [defaultManager removeItemAtURL:itemCopy error:&v9];
  v6 = v9;

  if (v6)
  {
    uRLByDeletingLastPathComponent = ANLogHandleFiles(v7);
    if (os_log_type_enabled(uRLByDeletingLastPathComponent, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v11 = &stru_2836DAA20;
      v12 = 2112;
      v13 = itemCopy;
      v14 = 2112;
      v15 = v6;
      _os_log_impl(&dword_2237C8000, uRLByDeletingLastPathComponent, OS_LOG_TYPE_ERROR, "%@ANFiles: failed to remove item at %@: %@", buf, 0x20u);
    }
  }

  else
  {
    uRLByDeletingLastPathComponent = [itemCopy URLByDeletingLastPathComponent];
    [(ANFiles *)self removeDirectoryIfEmpty:uRLByDeletingLastPathComponent];
  }
}

- (id)createDirectory:(id)directory andFileURLWithExtension:(id)extension
{
  v27 = *MEMORY[0x277D85DE8];
  extensionCopy = extension;
  directoryCopy = directory;
  v7 = +[ANFiles temporaryDirectoryUrl];
  v8 = [v7 URLByAppendingPathComponent:directoryCopy isDirectory:1];

  v10 = ANLogHandleFiles(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v24 = &stru_2836DAA20;
    v25 = 2112;
    v26 = v8;
    _os_log_impl(&dword_2237C8000, v10, OS_LOG_TYPE_DEFAULT, "%@ANFiles: creating directory at: %@", buf, 0x16u);
  }

  if (mkdir([v8 fileSystemRepresentation], 0x1EDu) && (v11 = __error(), *v11 != 17))
  {
    v18 = ANLogHandleFiles(v11);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v21 = *__error();
      *buf = 138412546;
      v24 = &stru_2836DAA20;
      v25 = 1024;
      LODWORD(v26) = v21;
      _os_log_impl(&dword_2237C8000, v18, OS_LOG_TYPE_ERROR, "%@ANFiles: failed to create directory: %d", buf, 0x12u);
    }

    v19 = 0;
  }

  else
  {
    v12 = MEMORY[0x277CCACA8];
    v13 = objc_opt_new();
    uUIDString = [v13 UUIDString];
    v15 = +[ANUtils an_dateFormatterForFilename];
    date = [MEMORY[0x277CBEAA8] date];
    v17 = [v15 stringFromDate:date];
    v18 = [v12 stringWithFormat:@"%@--%@", uUIDString, v17];

    v19 = [v8 URLByAppendingPathComponent:v18 isDirectory:0];
    if ([extensionCopy length])
    {
      v20 = [v19 URLByAppendingPathExtension:extensionCopy];

      v19 = v20;
    }
  }

  return v19;
}

- (void)removeDirectoryIfEmpty:(id)empty
{
  v18 = *MEMORY[0x277D85DE8];
  emptyCopy = empty;
  if (rmdir([emptyCopy fileSystemRepresentation]))
  {
    v4 = __error();
    if (*v4 == 66)
    {
      v5 = ANLogHandleFiles(v4);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 138412290;
        v15 = &stru_2836DAA20;
        v6 = "%@ANFiles: failed to remove directory because it is not empty";
        v7 = v5;
        v8 = OS_LOG_TYPE_DEFAULT;
        v9 = 12;
LABEL_10:
        _os_log_impl(&dword_2237C8000, v7, v8, v6, &v14, v9);
      }
    }

    else
    {
      v10 = __error();
      v11 = *v10;
      v12 = ANLogHandleFiles(v10);
      v5 = v12;
      if (v11 == 20)
      {
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v14 = 138412546;
          v15 = &stru_2836DAA20;
          v16 = 2112;
          v17 = emptyCopy;
          v6 = "%@ANFiles: failed to remove item. %@ is not a directory";
          v7 = v5;
          v8 = OS_LOG_TYPE_DEFAULT;
          v9 = 22;
          goto LABEL_10;
        }
      }

      else if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = *__error();
        v14 = 138412546;
        v15 = &stru_2836DAA20;
        v16 = 1024;
        LODWORD(v17) = v13;
        v6 = "%@ANFiles: failed to remove directory: %d";
        v7 = v5;
        v8 = OS_LOG_TYPE_ERROR;
        v9 = 18;
        goto LABEL_10;
      }
    }
  }
}

@end