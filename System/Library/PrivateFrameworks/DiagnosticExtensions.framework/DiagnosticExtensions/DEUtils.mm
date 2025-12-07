@interface DEUtils
+ (BOOL)copyAllFilesFromDir:(id)dir toDir:(id)toDir keepSourceDir:(BOOL)sourceDir;
+ (BOOL)copyFile:(id)file toDir:(id)dir;
+ (BOOL)isValidDirectory:(id)directory;
+ (id)applicationSupportDirectoryForApp:(id)app;
+ (id)componentsByRemovingComponentsBeforeComponent:(id)component sourceURL:(id)l keepingComponent:(BOOL)keepingComponent;
+ (id)copyAndReturn:(id)return toDir:(id)dir;
+ (id)copyAndReturn:(id)return toDir:(id)dir withNewFileName:(id)name;
+ (id)copyItem:(id)item toDestinationDir:(id)dir zipped:(BOOL)zipped;
+ (id)copyPath:(id)path toDestinationDir:(id)dir zipped:(BOOL)zipped;
+ (id)copyPaths:(id)paths toDestinationDir:(id)dir withZipName:(id)name;
+ (id)createDirectoryWithClassCDataProtection:(id)protection;
+ (id)createUserOwnedDirectoryAtUrl:(id)url;
+ (id)dirForTarGz:(id)gz;
+ (id)enumeratorForAllItems:(id)items;
+ (id)findAllItems:(id)items includeDirs:(BOOL)dirs;
+ (id)findEntriesInDirectory:(id)directory createdAfter:(id)after matchingPattern:(id)pattern;
+ (id)lsDir:(id)dir sorted:(BOOL)sorted;
+ (id)moveItem:(id)item toDestinationDir:(id)dir;
+ (id)pathComponentsInURL:(id)l removingBaseURLComponents:(id)components keepingFirstComponent:(BOOL)component;
+ (id)processErrorResponse:(id)response;
+ (id)tarGzForDirectoryUrl:(id)url validatesUrl:(BOOL)validatesUrl;
+ (id)uniqueDateString;
+ (id)uniqueTemporaryDirectory;
+ (id)urlByRemovingComponentsBefore:(id)before source:(id)source keepComponent:(BOOL)component;
+ (id)userLibraryDirectoryForApp:(id)app;
+ (unint64_t)getDirectorySize:(id)size;
+ (unint64_t)getFileSystemItemSize:(id)size;
+ (void)excludeFromBackup:(id)backup;
+ (void)removeFile:(id)file;
+ (void)uniqueTemporaryDirectory;
@end

@implementation DEUtils

+ (unint64_t)getFileSystemItemSize:(id)size
{
  sizeCopy = size;
  v19 = 0;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  path = [sizeCopy path];
  v7 = [defaultManager fileExistsAtPath:path isDirectory:&v19];

  if (v7)
  {
    if (v19 == 1)
    {
      unsignedIntegerValue = [self getDirectorySize:sizeCopy];
    }

    else
    {
      v18 = 0;
      v11 = *MEMORY[0x277CBE838];
      v17 = 0;
      [sizeCopy getResourceValue:&v18 forKey:v11 error:&v17];
      v12 = v18;
      v13 = v17;
      v14 = v13;
      if (v13 || !v12)
      {
        v15 = Log_3(v13);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          +[DEUtils getFileSystemItemSize:];
        }

        unsignedIntegerValue = 0;
      }

      else
      {
        unsignedIntegerValue = [v12 unsignedIntegerValue];
      }
    }
  }

  else
  {
    v10 = Log_3(v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [DEUtils getFileSystemItemSize:sizeCopy];
    }

    unsignedIntegerValue = 0;
  }

  return unsignedIntegerValue;
}

+ (unint64_t)getDirectorySize:(id)size
{
  v54[2] = *MEMORY[0x277D85DE8];
  sizeCopy = size;
  v48 = 0;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  path = [sizeCopy path];
  v6 = [defaultManager fileExistsAtPath:path isDirectory:&v48];
  v7 = v48;

  if (v6 && (v7 & 1) != 0)
  {
    defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
    v10 = *MEMORY[0x277CBE868];
    v11 = *MEMORY[0x277CBE838];
    v54[0] = *MEMORY[0x277CBE868];
    v54[1] = v11;
    v38 = v11;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v54 count:2];
    v37 = sizeCopy;
    v13 = [defaultManager2 enumeratorAtURL:sizeCopy includingPropertiesForKeys:v12 options:0 errorHandler:&__block_literal_global_68];

    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v14 = v13;
    v15 = [v14 countByEnumeratingWithState:&v44 objects:v53 count:16];
    if (v15)
    {
      v16 = v15;
      v39 = 0;
      v17 = *v45;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v45 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v44 + 1) + 8 * i);
          v42 = 0;
          v43 = 0;
          [v19 getResourceValue:&v43 forKey:v10 error:&v42];
          v20 = v43;
          v21 = v42;
          if (v21)
          {
            v22 = 1;
          }

          else
          {
            v22 = v20 == 0;
          }

          if (v22)
          {
            v23 = v21;
            v24 = Log_3(v21);
            if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
            {
              path2 = [v19 path];
              *buf = 138543618;
              v50 = path2;
              v51 = 2114;
              v52 = v23;
              _os_log_error_impl(&dword_248AB3000, v24, OS_LOG_TYPE_ERROR, "Could not get isDir for file [%{public}@] with error [%{public}@]", buf, 0x16u);
            }

            v25 = 0;
          }

          else
          {
            bOOLValue = [v20 BOOLValue];
            if (bOOLValue)
            {
              v25 = 0;
              v23 = 0;
            }

            else
            {
              v40 = 0;
              v41 = 0;
              [v19 getResourceValue:&v41 forKey:v38 error:&v40];
              v25 = v41;
              v27 = v40;
              v23 = v27;
              if (v27 || !v25)
              {
                v28 = Log_3(v27);
                if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
                {
                  path3 = [v19 path];
                  *buf = 138543618;
                  v50 = path3;
                  v51 = 2114;
                  v52 = v23;
                  _os_log_error_impl(&dword_248AB3000, v28, OS_LOG_TYPE_ERROR, "Could not get file size for file [%{public}@] with error [%{public}@]", buf, 0x16u);
                }
              }

              else
              {
                v23 = 0;
                v39 += [v25 unsignedIntegerValue];
              }
            }
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v44 objects:v53 count:16];
      }

      while (v16);
    }

    else
    {
      v39 = 0;
    }

    v33 = Log_3(v32);
    sizeCopy = v37;
    v31 = v39;
    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      path4 = [v37 path];
      v35 = [MEMORY[0x277CCA8E8] stringFromByteCount:v39 countStyle:0];
      *buf = 138543618;
      v50 = path4;
      v51 = 2114;
      v52 = v35;
      _os_log_impl(&dword_248AB3000, v33, OS_LOG_TYPE_INFO, "[%{public}@] size: [%{public}@]", buf, 0x16u);
    }
  }

  else
  {
    v14 = Log_3(v8);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [DEUtils getDirectorySize:sizeCopy];
    }

    v31 = 0;
  }

  return v31;
}

uint64_t __28__DEUtils_getDirectorySize___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = Log_3(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __28__DEUtils_getDirectorySize___block_invoke_cold_1();
  }

  return 1;
}

+ (void)excludeFromBackup:(id)backup
{
  backupCopy = backup;
  v4 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v5 = *MEMORY[0x277CBE878];
  v10 = 0;
  v6 = [backupCopy setResourceValue:v4 forKey:v5 error:&v10];
  v7 = v10;

  if ((v6 & 1) == 0)
  {
    v9 = Log_3(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [DEUtils excludeFromBackup:backupCopy];
    }
  }
}

+ (id)tarGzForDirectoryUrl:(id)url validatesUrl:(BOOL)validatesUrl
{
  validatesUrlCopy = validatesUrl;
  urlCopy = url;
  v7 = Log_3(urlCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    +[DEUtils tarGzForDirectoryUrl:validatesUrl:];
  }

  if (validatesUrlCopy)
  {
    v8 = [self isValidDirectory:urlCopy];
  }

  else
  {
    v8 = 1;
  }

  v9 = 0;
  if (urlCopy && v8)
  {
    lastPathComponent = [urlCopy lastPathComponent];
    v11 = [lastPathComponent stringByAppendingPathExtension:@"tar.gz"];

    uRLByDeletingLastPathComponent = [urlCopy URLByDeletingLastPathComponent];
    v9 = [uRLByDeletingLastPathComponent URLByAppendingPathComponent:v11];
  }

  return v9;
}

+ (id)dirForTarGz:(id)gz
{
  gzCopy = gz;
  v4 = gzCopy;
  if (gzCopy && ([gzCopy path], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v6 = v5;
    v7 = [v5 stringByReplacingOccurrencesOfString:@".tar.gz" withString:@"/"];
    v8 = [MEMORY[0x277CBEBC0] fileURLWithPath:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (BOOL)isValidDirectory:(id)directory
{
  directoryCopy = directory;
  v4 = directoryCopy;
  if (!directoryCopy)
  {
    v8 = Log_3(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      +[DEUtils isValidDirectory:];
    }

    goto LABEL_12;
  }

  v5 = [directoryCopy checkResourceIsReachableAndReturnError:0];
  if ((v5 & 1) == 0)
  {
    v8 = Log_3(v5);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      +[DEUtils isValidDirectory:];
    }

LABEL_12:
    bOOLValue = 0;
    goto LABEL_13;
  }

  v12 = 0;
  v6 = [v4 getResourceValue:&v12 forKey:*MEMORY[0x277CBE868] error:0];
  v7 = v12;
  v8 = v7;
  if ((v6 & 1) == 0)
  {
    v9 = Log_3(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      +[DEUtils isValidDirectory:];
    }
  }

  bOOLValue = [v8 BOOLValue];
LABEL_13:

  return bOOLValue;
}

+ (BOOL)copyAllFilesFromDir:(id)dir toDir:(id)toDir keepSourceDir:(BOOL)sourceDir
{
  sourceDirCopy = sourceDir;
  v64 = *MEMORY[0x277D85DE8];
  dirCopy = dir;
  toDirCopy = toDir;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v47 = dirCopy;
  v8 = [DEUtils enumeratorForAllItems:dirCopy];
  v9 = Log_3(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v33 = @"NO";
    *buf = 138412802;
    v59 = v47;
    v60 = 2112;
    if (sourceDirCopy)
    {
      v33 = @"YES";
    }

    v61 = toDirCopy;
    v62 = 2112;
    v63 = v33;
    _os_log_debug_impl(&dword_248AB3000, v9, OS_LOG_TYPE_DEBUG, "copying files from [%@] to [%@], keeping source dir? [%@]", buf, 0x20u);
  }

  if (v8)
  {
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    obj = v8;
    v48 = [obj countByEnumeratingWithState:&v51 objects:v57 count:16];
    if (!v48)
    {
      v31 = 0;
      v30 = 1;
      goto LABEL_29;
    }

    v34 = v8;
    v39 = 0;
    v11 = 0;
    v44 = 0;
    v42 = *MEMORY[0x277CBE868];
    v43 = *v52;
    selfCopy = self;
    while (1)
    {
      v12 = 0;
      v13 = v11;
      do
      {
        if (*v52 != v43)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v51 + 1) + 8 * v12);
        v15 = objc_autoreleasePoolPush();
        v16 = [self pathComponentsInURL:v14 removingBaseURLComponents:v47 keepingFirstComponent:sourceDirCopy];
        pathComponents = [toDirCopy pathComponents];
        v18 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:pathComponents];
        [v18 addObjectsFromArray:v16];
        v11 = [MEMORY[0x277CBEBC0] fileURLWithPathComponents:v18];

        uRLByDeletingLastPathComponent = [v11 URLByDeletingLastPathComponent];
        if (([uRLByDeletingLastPathComponent checkResourceIsReachableAndReturnError:0] & 1) == 0)
        {
          v20 = [self createDirectoryWithClassCDataProtection:uRLByDeletingLastPathComponent];
        }

        v50 = 0;
        [v14 getResourceValue:&v50 forKey:v42 error:0];
        v21 = v50;
        if (![v21 BOOLValue])
        {
          v49 = 0;
          [defaultManager copyItemAtURL:v14 toURL:v11 error:&v49];
          v26 = v49;
          v25 = v26;
          if (v26)
          {
            v38 = v15;
            v27 = Log_3(v26);
            if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
            {
              path = [v14 path];
              path2 = [v11 path];
              localizedDescription = [v25 localizedDescription];
              *buf = 138543874;
              v59 = path;
              v60 = 2114;
              v61 = path2;
              v62 = 2114;
              v63 = localizedDescription;
              _os_log_error_impl(&dword_248AB3000, v27, OS_LOG_TYPE_ERROR, "Failed to copy file [%{public}@] to [%{public}@] error [%{public}@]", buf, 0x20u);
            }

            v39 = 1;
            v15 = v38;
          }

          goto LABEL_19;
        }

        v22 = v15;
        v23 = [self createDirectoryWithClassCDataProtection:v11];

        if (v23)
        {
          v25 = Log_3(v24);
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            [(DEUtils *)v55 copyAllFilesFromDir:v11 toDir:&v56 keepSourceDir:v25];
          }

          v39 = 1;
          v44 = v23;
          v15 = v22;
LABEL_19:

          self = selfCopy;
          goto LABEL_20;
        }

        v44 = 0;
        v15 = v22;
LABEL_20:

        objc_autoreleasePoolPop(v15);
        ++v12;
        v13 = v11;
      }

      while (v48 != v12);
      v29 = [obj countByEnumeratingWithState:&v51 objects:v57 count:16];
      v48 = v29;
      if (!v29)
      {
        v30 = v39 ^ 1;

        v8 = v34;
        v31 = v44;
        goto LABEL_29;
      }
    }
  }

  obj = Log_3(v10);
  if (os_log_type_enabled(obj, OS_LOG_TYPE_ERROR))
  {
    +[DEUtils copyAllFilesFromDir:toDir:keepSourceDir:];
  }

  v31 = 0;
  v30 = 0;
LABEL_29:

  return v30 & 1;
}

+ (id)copyItem:(id)item toDestinationDir:(id)dir zipped:(BOOL)zipped
{
  zippedCopy = zipped;
  v27 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  dirCopy = dir;
  lastPathComponent = [itemCopy lastPathComponent];
  v10 = [dirCopy URLByAppendingPathComponent:lastPathComponent];

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  if (([dirCopy checkResourceIsReachableAndReturnError:0] & 1) == 0)
  {
    v12 = [defaultManager createDirectoryAtURL:dirCopy withIntermediateDirectories:1 attributes:0 error:0];
    v13 = v12;
    v14 = Log_3(v12);
    v15 = v14;
    if (v13)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *v26 = 138412290;
        *&v26[4] = dirCopy;
        _os_log_impl(&dword_248AB3000, v15, OS_LOG_TYPE_DEFAULT, "Created folder [%@]", v26, 0xCu);
      }
    }

    else if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      +[DEUtils copyItem:toDestinationDir:zipped:];
    }
  }

  v26[0] = 0;
  path = [itemCopy path];
  v17 = [defaultManager fileExistsAtPath:path isDirectory:v26];
  v18 = v26[0];

  if (v17 && (v18 & 1) != 0)
  {
    v19 = [DEUtils copyAllFilesFromDir:itemCopy toDir:v10 keepSourceDir:0];
    if ((v19 & 1) == 0)
    {
      goto LABEL_11;
    }

LABEL_16:
    v23 = Log_3(v19);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      +[DEUtils copyItem:toDestinationDir:zipped:];
    }

    goto LABEL_19;
  }

  v22 = [DEUtils copyAndReturn:itemCopy toDir:dirCopy];

  if (v22)
  {
    goto LABEL_16;
  }

LABEL_11:
  v20 = Log_3(v19);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    [DEUtils copyItem:itemCopy toDestinationDir:dirCopy zipped:?];
  }

  if (v26[0] != 1)
  {
    v21 = 0;
    goto LABEL_25;
  }

LABEL_19:
  if (zippedCopy)
  {
    if (v26[0] == 1)
    {
      [DEArchiver archiveDirectoryAt:v10];
    }

    else
    {
      [DEArchiver archiveFile:v10];
    }
    v24 = ;

    v10 = v24;
  }

  v10 = v10;
  v21 = v10;
LABEL_25:

  return v21;
}

+ (id)moveItem:(id)item toDestinationDir:(id)dir
{
  v23 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  dirCopy = dir;
  v7 = Log_3(dirCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v18 = "+[DEUtils moveItem:toDestinationDir:]";
    v19 = 2114;
    v20 = itemCopy;
    v21 = 2114;
    v22 = dirCopy;
    _os_log_impl(&dword_248AB3000, v7, OS_LOG_TYPE_DEFAULT, "%{public}s [%{public}@] [%{public}@]", buf, 0x20u);
  }

  lastPathComponent = [itemCopy lastPathComponent];
  v9 = [dirCopy URLByAppendingPathComponent:lastPathComponent];

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v16 = 0;
  [defaultManager moveItemAtURL:itemCopy toURL:v9 error:&v16];
  v11 = v16;

  if (v11)
  {
    v13 = Log_3(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v18 = "+[DEUtils moveItem:toDestinationDir:]";
      v19 = 2114;
      v20 = v11;
      _os_log_impl(&dword_248AB3000, v13, OS_LOG_TYPE_DEFAULT, "%{public}s error [%{public}@]", buf, 0x16u);
    }

    v14 = 0;
  }

  else
  {
    v14 = v9;
  }

  return v14;
}

+ (BOOL)copyFile:(id)file toDir:(id)dir
{
  v4 = [self copyAndReturn:file toDir:dir];
  v5 = v4 != 0;

  return v5;
}

+ (id)copyAndReturn:(id)return toDir:(id)dir withNewFileName:(id)name
{
  v31 = *MEMORY[0x277D85DE8];
  returnCopy = return;
  dirCopy = dir;
  nameCopy = name;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v24 = 0;
  [returnCopy getResourceValue:&v24 forKey:*MEMORY[0x277CBE868] error:0];
  v11 = v24;
  bOOLValue = [v11 BOOLValue];
  if (bOOLValue)
  {
    v13 = Log_3(bOOLValue);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [DEUtils copyAndReturn:returnCopy toDir:? withNewFileName:?];
    }

    v14 = 0;
  }

  else
  {
    v13 = [dirCopy URLByAppendingPathComponent:nameCopy];
    v23 = 0;
    [defaultManager copyItemAtURL:returnCopy toURL:v13 error:&v23];
    v15 = v23;
    v14 = v15;
    if (!v15)
    {
      v13 = v13;
      v17 = v13;
      goto LABEL_10;
    }

    v16 = Log_3(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      path = [returnCopy path];
      path2 = [v13 path];
      localizedDescription = [v14 localizedDescription];
      *buf = 138543874;
      v26 = path;
      v27 = 2114;
      v28 = path2;
      v29 = 2114;
      v30 = localizedDescription;
      v21 = localizedDescription;
      _os_log_error_impl(&dword_248AB3000, v16, OS_LOG_TYPE_ERROR, "Failed to copy file [%{public}@] to [%{public}@] error [%{public}@]", buf, 0x20u);
    }
  }

  v17 = 0;
LABEL_10:

  return v17;
}

+ (id)copyAndReturn:(id)return toDir:(id)dir
{
  v29 = *MEMORY[0x277D85DE8];
  returnCopy = return;
  dirCopy = dir;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v22 = 0;
  [returnCopy getResourceValue:&v22 forKey:*MEMORY[0x277CBE868] error:0];
  v8 = v22;
  bOOLValue = [v8 BOOLValue];
  if (bOOLValue)
  {
    lastPathComponent = Log_3(bOOLValue);
    if (os_log_type_enabled(lastPathComponent, OS_LOG_TYPE_ERROR))
    {
      [DEUtils copyAndReturn:returnCopy toDir:? withNewFileName:?];
    }

    v11 = 0;
    v12 = 0;
  }

  else
  {
    lastPathComponent = [returnCopy lastPathComponent];
    v13 = [dirCopy URLByAppendingPathComponent:lastPathComponent];
    v21 = 0;
    [defaultManager copyItemAtURL:returnCopy toURL:v13 error:&v21];
    v14 = v21;
    v11 = v14;
    if (v14)
    {
      v15 = Log_3(v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        path = [returnCopy path];
        path2 = [v13 path];
        localizedDescription = [v11 localizedDescription];
        *buf = 138543874;
        v24 = path;
        v25 = 2114;
        v26 = path2;
        v27 = 2114;
        v28 = localizedDescription;
        v19 = localizedDescription;
        _os_log_error_impl(&dword_248AB3000, v15, OS_LOG_TYPE_ERROR, "Failed to copy file [%{public}@] to [%{public}@] error [%{public}@]", buf, 0x20u);
      }

      v12 = 0;
    }

    else
    {
      v12 = v13;
    }
  }

  return v12;
}

+ (id)pathComponentsInURL:(id)l removingBaseURLComponents:(id)components keepingFirstComponent:(BOOL)component
{
  componentCopy = component;
  componentsCopy = components;
  uRLByResolvingSymlinksInPath = [l URLByResolvingSymlinksInPath];
  uRLByStandardizingPath = [uRLByResolvingSymlinksInPath URLByStandardizingPath];

  uRLByResolvingSymlinksInPath2 = [componentsCopy URLByResolvingSymlinksInPath];

  uRLByStandardizingPath2 = [uRLByResolvingSymlinksInPath2 URLByStandardizingPath];

  pathComponents = [uRLByStandardizingPath2 pathComponents];
  v13 = [pathComponents count];

  v14 = v13 - componentCopy;
  v15 = MEMORY[0x277CBEB18];
  pathComponents2 = [uRLByStandardizingPath pathComponents];
  v17 = [v15 arrayWithArray:pathComponents2];

  [v17 removeObjectsInRange:{0, v14}];

  return v17;
}

+ (id)componentsByRemovingComponentsBeforeComponent:(id)component sourceURL:(id)l keepingComponent:(BOOL)keepingComponent
{
  keepingComponentCopy = keepingComponent;
  componentCopy = component;
  pathComponents = [l pathComponents];
  v9 = [pathComponents indexOfObject:componentCopy];

  v10 = pathComponents;
  if (v9 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = v9 + !keepingComponentCopy;
    v10 = pathComponents;
    if (v11 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = pathComponents;
      if (v11 < [pathComponents count])
      {
        v10 = [pathComponents subarrayWithRange:{v11, objc_msgSend(pathComponents, "count") - v11}];
      }
    }
  }

  return v10;
}

+ (id)urlByRemovingComponentsBefore:(id)before source:(id)source keepComponent:(BOOL)component
{
  v5 = [self componentsByRemovingComponentsBeforeComponent:before sourceURL:source keepingComponent:component];
  v6 = [v5 componentsJoinedByString:@"/"];
  escape = [v6 escape];

  v8 = [MEMORY[0x277CBEBC0] URLWithString:escape];

  return v8;
}

+ (id)enumeratorForAllItems:(id)items
{
  v10[2] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCAA00];
  itemsCopy = items;
  defaultManager = [v3 defaultManager];
  v6 = *MEMORY[0x277CBE868];
  v10[0] = *MEMORY[0x277CBE8E8];
  v10[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];
  v8 = [defaultManager enumeratorAtURL:itemsCopy includingPropertiesForKeys:v7 options:4 errorHandler:&__block_literal_global_91];

  return v8;
}

uint64_t __33__DEUtils_enumeratorForAllItems___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  v6 = Log_3(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8 = 138543618;
    v9 = v5;
    v10 = 2114;
    v11 = v4;
    _os_log_impl(&dword_248AB3000, v6, OS_LOG_TYPE_INFO, "Error [%{public}@] enumerating url [%{public}@]", &v8, 0x16u);
  }

  return 1;
}

+ (id)findAllItems:(id)items includeDirs:(BOOL)dirs
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = [self enumeratorForAllItems:items];
  array = [MEMORY[0x277CBEB18] array];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = 0;
    v11 = *v23;
    v12 = *MEMORY[0x277CBE868];
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(v6);
        }

        v14 = *(*(&v22 + 1) + 8 * i);

        v20 = 0;
        v21 = 0;
        [v14 getResourceValue:&v21 forKey:v12 error:&v20];
        v9 = v21;
        v15 = v20;
        v10 = v15;
        if (v15)
        {
          v16 = Log_3(v15);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            v27 = v10;
            v28 = 2112;
            v29 = v14;
            _os_log_impl(&dword_248AB3000, v16, OS_LOG_TYPE_INFO, "Error [%@] getting NSURLIsDirectoryKey for url [%@]", buf, 0x16u);
          }
        }

        else if (dirs || ([v9 BOOLValue] & 1) == 0)
        {
          [array addObject:v14];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v8);
  }

  v17 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:array copyItems:1];

  return v17;
}

+ (id)lsDir:(id)dir sorted:(BOOL)sorted
{
  sortedCopy = sorted;
  v21[2] = *MEMORY[0x277D85DE8];
  dirCopy = dir;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  if (sortedCopy)
  {
    v7 = *MEMORY[0x277CBE868];
    v21[0] = *MEMORY[0x277CBE7B0];
    v21[1] = v7;
    v8 = MEMORY[0x277CBEA60];
    v9 = v21;
    v10 = 2;
  }

  else
  {
    v20 = *MEMORY[0x277CBE868];
    v8 = MEMORY[0x277CBEA60];
    v9 = &v20;
    v10 = 1;
  }

  v11 = [v8 arrayWithObjects:v9 count:v10];
  v19 = 0;
  v12 = [defaultManager contentsOfDirectoryAtURL:dirCopy includingPropertiesForKeys:v11 options:4 error:&v19];
  v13 = v19;
  v14 = v13;
  if (v13 || !v12)
  {
    v16 = Log_3(v13);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      +[DEUtils lsDir:sorted:];
    }

    v17 = MEMORY[0x277CBEBF8];
  }

  else
  {
    if (sortedCopy)
    {
      v15 = [v12 sortedArrayUsingComparator:&__block_literal_global_94];
    }

    else
    {
      v15 = v12;
    }

    v17 = v15;
  }

  return v17;
}

uint64_t __24__DEUtils_lsDir_sorted___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  v20 = 0;
  v6 = *MEMORY[0x277CBE7B0];
  v19 = 0;
  [v4 getResourceValue:&v20 forKey:v6 error:&v19];
  v7 = v20;
  v8 = v19;
  v9 = v8;
  if (v8)
  {
    v10 = Log_3(v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v22 = v4;
      _os_log_impl(&dword_248AB3000, v10, OS_LOG_TYPE_INFO, "failed to get [%@] modifcation date", buf, 0xCu);
    }
  }

  v17 = 0;
  v18 = 0;
  [v5 getResourceValue:&v18 forKey:v6 error:&v17];
  v11 = v18;
  v12 = v17;

  if (v12)
  {
    v14 = Log_3(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v22 = v5;
      _os_log_impl(&dword_248AB3000, v14, OS_LOG_TYPE_INFO, "failed to get [%@] modifcation date", buf, 0xCu);
    }
  }

  v15 = [v11 compare:v7];

  return v15;
}

+ (id)userLibraryDirectoryForApp:(id)app
{
  appCopy = app;
  if (appCopy)
  {
    v4 = getuid();
    if (!v4)
    {
      v5 = Log_3(v4);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *v13 = 0;
        _os_log_impl(&dword_248AB3000, v5, OS_LOG_TYPE_INFO, "WARNING: running as root, user directory be under root domain", v13, 2u);
      }
    }

    v6 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 1uLL, 1);
    v7 = v6;
    if (v6 && [v6 count])
    {
      v8 = MEMORY[0x277CBEBC0];
      firstObject = [v7 firstObject];
      v10 = [v8 fileURLWithPath:firstObject isDirectory:1];

      v11 = [v10 URLByAppendingPathComponent:appCopy isDirectory:1];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)applicationSupportDirectoryForApp:(id)app
{
  appCopy = app;
  v4 = getuid();
  if (!v4)
  {
    v5 = Log_3(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v13 = 0;
      _os_log_impl(&dword_248AB3000, v5, OS_LOG_TYPE_INFO, "WARNING: running as root, user directory be under root domain", v13, 2u);
    }
  }

  v6 = NSSearchPathForDirectoriesInDomains(NSApplicationSupportDirectory, 1uLL, 1);
  v7 = v6;
  if (v6 && [v6 count])
  {
    v8 = MEMORY[0x277CBEBC0];
    firstObject = [v7 firstObject];
    v10 = [v8 fileURLWithPath:firstObject isDirectory:1];

    v11 = [v10 URLByAppendingPathComponent:appCopy isDirectory:1];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)createUserOwnedDirectoryAtUrl:(id)url
{
  v16[2] = *MEMORY[0x277D85DE8];
  urlCopy = url;
  v4 = getuid();
  if (!v4)
  {
    v5 = Log_3(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_248AB3000, v5, OS_LOG_TYPE_INFO, "WARNING: running as root, user directory will be owned by root", buf, 2u);
    }
  }

  v15[0] = *MEMORY[0x277CCA160];
  v6 = NSUserName();
  v16[0] = v6;
  v15[1] = *MEMORY[0x277CCA120];
  v7 = NSUserName();
  v16[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v13 = 0;
  [defaultManager createDirectoryAtURL:urlCopy withIntermediateDirectories:1 attributes:v8 error:&v13];

  v10 = v13;
  v11 = v13;

  return v10;
}

+ (id)createDirectoryWithClassCDataProtection:(id)protection
{
  v19[1] = *MEMORY[0x277D85DE8];
  protectionCopy = protection;
  v4 = getuid();
  if (!v4)
  {
    v5 = Log_3(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_248AB3000, v5, OS_LOG_TYPE_INFO, "WARNING: running as root, directory will be owned by root", buf, 2u);
    }
  }

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v16 = 0;
  [defaultManager createDirectoryAtURL:protectionCopy withIntermediateDirectories:1 attributes:0 error:&v16];
  v7 = v16;

  if (!v7)
  {
    v9 = Log_3(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [DEUtils createDirectoryWithClassCDataProtection:protectionCopy];
    }

    v18 = *MEMORY[0x277CBE7F8];
    v19[0] = *MEMORY[0x277CBE7F0];
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    v15 = 0;
    [protectionCopy setResourceValues:v10 error:&v15];
    v11 = v15;

    if (v11)
    {
      v13 = Log_3(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [DEUtils createDirectoryWithClassCDataProtection:v11];
      }
    }
  }

  return v7;
}

+ (id)copyPath:(id)path toDestinationDir:(id)dir zipped:(BOOL)zipped
{
  zippedCopy = zipped;
  pathCopy = path;
  dirCopy = dir;
  lastPathComponent = [pathCopy lastPathComponent];
  v10 = [dirCopy URLByAppendingPathComponent:lastPathComponent];

  v11 = dirCopy;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v44 = 0;
  [pathCopy getResourceValue:&v44 forKey:*MEMORY[0x277CBE868] error:0];
  v13 = v44;
  v14 = v11;
  if ([v13 BOOLValue])
  {
    v14 = v11;
    if (!zippedCopy)
    {
      v14 = v10;
    }
  }

  if (([v14 checkResourceIsReachableAndReturnError:0] & 1) == 0)
  {
    v15 = [defaultManager createDirectoryAtURL:v14 withIntermediateDirectories:1 attributes:0 error:0];
    if ((v15 & 1) == 0)
    {
      v16 = Log_3(v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        +[DEUtils copyPath:toDestinationDir:zipped:];
      }
    }
  }

  if (!BOMCopierNew())
  {
    v25 = Log_3(0);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      +[DEUtils copyPath:toDestinationDir:zipped:];
    }

    goto LABEL_27;
  }

  if (!zippedCopy)
  {
    v43 = v14;
    if ([v10 checkResourceIsReachableAndReturnError:0])
    {
      v39 = v13;
      v40 = defaultManager;
      v41 = v11;
      v42 = pathCopy;
      v26 = 0;
      v27 = 1;
      do
      {
        v28 = v26;
        v29 = MEMORY[0x277CCACA8];
        uRLByDeletingPathExtension = [v10 URLByDeletingPathExtension];
        path = [uRLByDeletingPathExtension path];
        v32 = [MEMORY[0x277CCABB0] numberWithInt:v27];
        v33 = [v29 stringWithFormat:@"%@-%@", path, v32];
        pathExtension = [v10 pathExtension];
        v35 = [v33 stringByAppendingPathExtension:pathExtension];

        v26 = [MEMORY[0x277CBEBC0] fileURLWithPath:v35 isDirectory:0];

        v27 = (v27 + 1);
      }

      while (([v26 checkResourceIsReachableAndReturnError:0] & 1) != 0);

      v10 = v26;
      v11 = v41;
      pathCopy = v42;
      v13 = v39;
      defaultManager = v40;
    }

    else
    {
      v26 = v10;
    }

    [pathCopy fileSystemRepresentation];
    [v26 fileSystemRepresentation];
    v36 = BOMCopierCopy();
    if (!v36)
    {
      v19 = v10;
      v14 = v43;
      goto LABEL_30;
    }

    v37 = v36;
    v25 = Log_3(v36);
    v14 = v43;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [DEUtils copyPath:v37 toDestinationDir:? zipped:?];
    }

LABEL_27:

    v24 = 0;
    goto LABEL_31;
  }

  lastPathComponent2 = [pathCopy lastPathComponent];
  v18 = [lastPathComponent2 stringByAppendingPathExtension:@"zip"];

  v19 = [v11 URLByAppendingPathComponent:v18];

  v20 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v21 = MEMORY[0x277CBEC38];
  [v20 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"createPKZip"];
  [v20 setObject:v21 forKeyedSubscript:@"copyResources"];
  if (v13)
  {
    [v20 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"keepParent"];
  }

  [pathCopy fileSystemRepresentation];
  [v19 fileSystemRepresentation];
  v22 = BOMCopierCopyWithOptions();
  if (!v22)
  {

LABEL_30:
    BOMCopierFree();
    v10 = v19;
    v24 = v10;
    goto LABEL_31;
  }

  v23 = Log_3(v22);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    +[DEUtils copyPath:toDestinationDir:zipped:];
  }

  v24 = 0;
  v10 = v19;
LABEL_31:

  return v24;
}

+ (id)copyPaths:(id)paths toDestinationDir:(id)dir withZipName:(id)name
{
  v22 = *MEMORY[0x277D85DE8];
  pathsCopy = paths;
  dirCopy = dir;
  v9 = [dirCopy URLByAppendingPathComponent:name];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = pathsCopy;
  v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    do
    {
      v14 = 0;
      do
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v10);
        }
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v12);
  }

  v15 = [DEUtils copyPath:v9 toDestinationDir:dirCopy zipped:1];
  [DEUtils removeFile:v9];

  return v15;
}

+ (id)uniqueDateString
{
  v2 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v2 setDateFormat:@"yyyy-MM-dd-HHmmssSS"];
  date = [MEMORY[0x277CBEAA8] date];
  v4 = [v2 stringFromDate:date];

  return v4;
}

+ (void)removeFile:(id)file
{
  fileCopy = file;
  if ([fileCopy checkResourceIsReachableAndReturnError:0])
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v12 = 0;
    v5 = [defaultManager removeItemAtURL:fileCopy error:&v12];
    v6 = v12;

    if (!v5 || v6 != 0)
    {
      v9 = Log_3(v7);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [(DEUtils *)fileCopy removeFile:v6];
      }

      if (v6)
      {
        v11 = Log_3(v10);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          [(DEUtils *)fileCopy removeFile:v6];
        }
      }
    }
  }
}

+ (id)findEntriesInDirectory:(id)directory createdAfter:(id)after matchingPattern:(id)pattern
{
  v36[3] = *MEMORY[0x277D85DE8];
  afterCopy = after;
  patternCopy = pattern;
  v9 = MEMORY[0x277CBEB18];
  directoryCopy = directory;
  [v9 array];
  v29 = v28 = afterCopy;
  v11 = [afterCopy dateByAddingTimeInterval:-1.0];
  uRLByResolvingSymlinksInPath = [directoryCopy URLByResolvingSymlinksInPath];

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v14 = *MEMORY[0x277CBE7C0];
  v36[0] = *MEMORY[0x277CBE8E8];
  v36[1] = v14;
  v36[2] = *MEMORY[0x277CBE868];
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:3];
  v27 = uRLByResolvingSymlinksInPath;
  v16 = [defaultManager enumeratorAtURL:uRLByResolvingSymlinksInPath includingPropertiesForKeys:v15 options:1 errorHandler:0];

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v17 = v16;
  v18 = [v17 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v32;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v32 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v31 + 1) + 8 * i);
        v30 = 0;
        [v22 getResourceValue:&v30 forKey:v14 error:0];
        v23 = v30;
        if ([v11 compare:v23] == -1)
        {
          lastPathComponent = [v22 lastPathComponent];
          if ([patternCopy numberOfMatchesInString:lastPathComponent options:0 range:{0, objc_msgSend(lastPathComponent, "length")}] == 1)
          {
            [v29 addObject:v22];
          }
        }
      }

      v19 = [v17 countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v19);
  }

  v25 = [v29 sortedArrayUsingComparator:&__block_literal_global_119];

  return v25;
}

uint64_t __63__DEUtils_findEntriesInDirectory_createdAfter_matchingPattern___block_invoke(uint64_t a1, void *a2)
{
  v8 = 0;
  v2 = *MEMORY[0x277CBE7C0];
  v3 = a2;
  [v3 getResourceValue:&v8 forKey:v2 error:0];
  v7 = 0;
  v4 = v8;
  [v3 getResourceValue:&v7 forKey:v2 error:0];

  v5 = [v4 compare:v7];
  return v5;
}

+ (id)processErrorResponse:(id)response
{
  v27 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v4 = [&unk_285B71028 countByEnumeratingWithState:&v22 objects:v26 count:16];
  v5 = responseCopy;
  if (v4)
  {
    v6 = v4;
    v7 = 0;
    v8 = *v23;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        v10 = v7;
        if (*v23 != v8)
        {
          objc_enumerationMutation(&unk_285B71028);
        }

        v11 = *(*(&v22 + 1) + 8 * i);
        v21 = v7;
        v12 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:v11 options:0 error:&v21];
        v7 = v21;

        v13 = [v12 matchesInString:responseCopy options:0 range:{0, objc_msgSend(responseCopy, "length")}];
        v14 = v13;
        if (v13)
        {
          if ([v13 count])
          {
            v15 = [v14 objectAtIndexedSubscript:0];
            v16 = [v15 rangeAtIndex:1];

            if (v16 != 0x7FFFFFFFFFFFFFFFLL)
            {
              v17 = [v14 objectAtIndexedSubscript:0];
              v18 = [v17 rangeAtIndex:1];
              v5 = [responseCopy substringWithRange:{v18, v19}];

              goto LABEL_13;
            }
          }
        }
      }

      v6 = [&unk_285B71028 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }

    v5 = responseCopy;
LABEL_13:
  }

  return v5;
}

+ (id)uniqueTemporaryDirectory
{
  v2 = MEMORY[0x277CBEBC0];
  v3 = NSTemporaryDirectory();
  v4 = [v2 fileURLWithPath:v3];

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v12 = 0;
  v6 = [defaultManager URLForDirectory:99 inDomain:1 appropriateForURL:v4 create:1 error:&v12];
  v7 = v12;

  if (v7)
  {
    v9 = Log_3(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      +[(DEUtils *)v7];
    }

    v10 = v4;
    v6 = v10;
  }

  return v6;
}

+ (void)getFileSystemItemSize:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 path];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

+ (void)getFileSystemItemSize:.cold.2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

+ (void)getDirectorySize:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 path];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

+ (void)excludeFromBackup:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 lastPathComponent];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

+ (void)tarGzForDirectoryUrl:validatesUrl:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315394;
  v2 = "+[DEUtils tarGzForDirectoryUrl:validatesUrl:]";
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(&dword_248AB3000, v0, OS_LOG_TYPE_DEBUG, "%s %@", &v1, 0x16u);
}

+ (void)isValidDirectory:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

+ (void)copyAllFilesFromDir:(void *)a3 toDir:(NSObject *)a4 keepSourceDir:.cold.1(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 path];
  *a1 = 138543362;
  *a3 = v7;
  _os_log_error_impl(&dword_248AB3000, a4, OS_LOG_TYPE_ERROR, "Failed to create directory [%{public}@]", a1, 0xCu);
}

+ (void)copyAllFilesFromDir:toDir:keepSourceDir:.cold.2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

+ (void)copyItem:toDestinationDir:zipped:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

+ (void)copyItem:(void *)a1 toDestinationDir:(void *)a2 zipped:.cold.2(void *a1, void *a2)
{
  v3 = [a1 path];
  v9 = [a2 path];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

+ (void)copyItem:toDestinationDir:zipped:.cold.3()
{
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  v3 = v0;
  _os_log_debug_impl(&dword_248AB3000, v1, OS_LOG_TYPE_DEBUG, "Copied [%@] to [%@]", v2, 0x16u);
}

+ (void)copyAndReturn:(void *)a1 toDir:withNewFileName:.cold.1(void *a1)
{
  v1 = [a1 path];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

+ (void)createDirectoryWithClassCDataProtection:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 lastPathComponent];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v2, v3, OS_LOG_TYPE_DEBUG, v4, v5, 0xCu);
}

+ (void)createDirectoryWithClassCDataProtection:(void *)a1 .cold.2(void *a1)
{
  v1 = [a1 description];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

+ (void)copyPath:toDestinationDir:zipped:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

+ (void)copyPath:(uint64_t)a1 toDestinationDir:zipped:.cold.2(uint64_t a1)
{
  v1 = [MEMORY[0x277CCABB0] numberWithInteger:a1];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

+ (void)copyPath:toDestinationDir:zipped:.cold.3()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

+ (void)removeFile:(uint64_t)a1 .cold.1(uint64_t a1, void *a2)
{
  v2 = [a2 localizedDescription];
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

+ (void)uniqueTemporaryDirectory
{
  v1 = [self description];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

@end