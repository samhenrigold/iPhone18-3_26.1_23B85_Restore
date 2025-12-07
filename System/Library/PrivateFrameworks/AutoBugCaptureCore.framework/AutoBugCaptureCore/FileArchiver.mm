@interface FileArchiver
+ (id)archiveWithPath:(id)path;
+ (id)archiveWithPath:(id)path destinationDir:(id)dir nameMatches:(id)matches maxAge:(double)age allowDirectories:(BOOL)directories;
+ (id)archiveWithPaths:(id)paths destinationDir:(id)dir deleteSource:(BOOL)source;
+ (id)matchFilesInDirectory:(id)directory filenamePredicate:(id)predicate newerThan:(id)than allowDirectories:(BOOL)directories;
- (FileArchiver)initWithPath:(id)path shouldCompress:(BOOL)compress;
- (int)addDirectoryToArchive:(id)archive withDirName:(id)name;
- (int)addFileToArchive:(id)archive withFileName:(id)name;
- (int)closeArchive;
- (void)moveDirectoryToArchive:(id)archive withDirName:(id)name;
@end

@implementation FileArchiver

+ (id)matchFilesInDirectory:(id)directory filenamePredicate:(id)predicate newerThan:(id)than allowDirectories:(BOOL)directories
{
  v64[3] = *MEMORY[0x277D85DE8];
  directoryCopy = directory;
  predicateCopy = predicate;
  thanCopy = than;
  array = [MEMORY[0x277CBEB18] array];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v12 = [MEMORY[0x277CBEBC0] fileURLWithPath:directoryCopy isDirectory:1];
  v13 = *MEMORY[0x277CBE8E8];
  v14 = *MEMORY[0x277CBE868];
  v64[0] = *MEMORY[0x277CBE8E8];
  v64[1] = v14;
  v44 = v14;
  v15 = *MEMORY[0x277CBE7C0];
  v64[2] = *MEMORY[0x277CBE7C0];
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v64 count:3];
  v60 = 0;
  v17 = [defaultManager contentsOfDirectoryAtURL:v12 includingPropertiesForKeys:v16 options:0 error:&v60];
  v18 = v60;

  v19 = predicateCopy;
  v20 = v17;
  if (!v18)
  {
    v41 = 0;
    v42 = defaultManager;
    v46 = v15;
    v47 = v13;
    v51 = thanCopy;
    v43 = directoryCopy;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    obj = v17;
    v21 = [obj countByEnumeratingWithState:&v56 objects:v63 count:16];
    v22 = v44;
    if (!v21)
    {
      goto LABEL_30;
    }

    v23 = v21;
    v52 = *v57;
    v50 = v19;
    while (1)
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v57 != v52)
        {
          objc_enumerationMutation(obj);
        }

        v25 = *(*(&v56 + 1) + 8 * i);
        v26 = objc_autoreleasePoolPush();
        v55 = 0;
        v27 = v22;
        v28 = [v25 getResourceValue:&v55 forKey:v22 error:0];
        v29 = v55;
        v30 = v29;
        if (v28)
        {
          bOOLValue = [v29 BOOLValue];
          if (bOOLValue)
          {
            if (!directories)
            {
              v32 = archiverLogHandle(bOOLValue);
              if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v62 = v25;
                _os_log_impl(&dword_241804000, v32, OS_LOG_TYPE_DEBUG, "Not archiving %@ because it is a directory and not allowed", buf, 0xCu);
              }

              goto LABEL_27;
            }
          }
        }

        if (!v19)
        {
          v32 = 0;
LABEL_19:
          if (v51)
          {
            v53 = 0;
            v36 = [v25 getResourceValue:&v53 forKey:v46 error:0];
            v37 = v53;
            v38 = v37;
            if (v36 && [v37 compare:v51] == -1)
            {
              path = archiverLogHandle(-1);
              if (os_log_type_enabled(path, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v62 = v25;
                _os_log_impl(&dword_241804000, path, OS_LOG_TYPE_DEBUG, "Not archiving %@ because it didn't match fileCreationDate", buf, 0xCu);
              }

              goto LABEL_26;
            }
          }

          else
          {
            v38 = 0;
          }

          path = [v25 path];
          [array addObject:path];
LABEL_26:

          v19 = v50;
LABEL_27:
          v22 = v27;
          goto LABEL_28;
        }

        v54 = 0;
        v33 = [v25 getResourceValue:&v54 forKey:v47 error:0];
        v32 = v54;
        if (!v33)
        {
          goto LABEL_19;
        }

        v34 = [v19 evaluateWithObject:v32];
        if (v34)
        {
          goto LABEL_19;
        }

        v35 = archiverLogHandle(v34);
        v22 = v27;
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v62 = v25;
          _os_log_impl(&dword_241804000, v35, OS_LOG_TYPE_DEBUG, "Not archiving %@ because it didn't match name filter", buf, 0xCu);
        }

        v19 = v50;
LABEL_28:

        objc_autoreleasePoolPop(v26);
      }

      v23 = [obj countByEnumeratingWithState:&v56 objects:v63 count:16];
      if (!v23)
      {
LABEL_30:

        defaultManager = v42;
        directoryCopy = v43;
        thanCopy = v51;
        v18 = v41;
        break;
      }
    }
  }

  return array;
}

+ (id)archiveWithPath:(id)path
{
  v17 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  if ([pathCopy length])
  {
    v4 = [pathCopy stringByAppendingString:@".tar.gz"];
    if (v4)
    {
      v5 = [[FileArchiver alloc] initWithPath:v4 shouldCompress:1];
      v6 = archiverLogHandle(v5);
      v7 = v6;
      if (v5)
      {
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v13 = 138412546;
          v14 = pathCopy;
          v15 = 2112;
          v16 = v4;
          _os_log_impl(&dword_241804000, v7, OS_LOG_TYPE_DEFAULT, "archiving %@ into %@", &v13, 0x16u);
        }

        lastPathComponent = [pathCopy lastPathComponent];
        [(FileArchiver *)v5 moveDirectoryToArchive:pathCopy withDirName:lastPathComponent];

        closeArchive = [(FileArchiver *)v5 closeArchive];
        if (closeArchive)
        {
          v10 = archiverLogHandle(closeArchive);
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            v13 = 138412290;
            v14 = v4;
            _os_log_impl(&dword_241804000, v10, OS_LOG_TYPE_ERROR, "closeArchive failed for %@", &v13, 0xCu);
          }
        }

        v11 = v4;
        goto LABEL_20;
      }

      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v13 = 138412290;
        v14 = v4;
        _os_log_impl(&dword_241804000, v7, OS_LOG_TYPE_ERROR, "failed to create archive: %@", &v13, 0xCu);
      }
    }

    else
    {
      v5 = archiverLogHandle(0);
      if (os_log_type_enabled(&v5->super, OS_LOG_TYPE_ERROR))
      {
        v13 = 138412290;
        v14 = pathCopy;
        _os_log_impl(&dword_241804000, &v5->super, OS_LOG_TYPE_ERROR, "failed to create tarball path from: %@", &v13, 0xCu);
      }
    }

    v11 = 0;
LABEL_20:

    goto LABEL_21;
  }

  v4 = archiverLogHandle(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v13) = 0;
    _os_log_impl(&dword_241804000, v4, OS_LOG_TYPE_ERROR, "no dir_path provided", &v13, 2u);
  }

  v11 = 0;
LABEL_21:

  return v11;
}

+ (id)archiveWithPaths:(id)paths destinationDir:(id)dir deleteSource:(BOOL)source
{
  sourceCopy = source;
  v61 = *MEMORY[0x277D85DE8];
  pathsCopy = paths;
  dirCopy = dir;
  if (![dirCopy length])
  {
    v9 = archiverLogHandle(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_241804000, v9, OS_LOG_TYPE_ERROR, "destination path is invalid", buf, 2u);
    }

    v27 = 0;
    goto LABEL_51;
  }

  v9 = [dirCopy stringByAppendingString:@".tar.gz"];
  v46 = [[FileArchiver alloc] initWithPath:v9 shouldCompress:1];
  if (!v46)
  {
    defaultManager = archiverLogHandle(0);
    if (os_log_type_enabled(defaultManager, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *v58 = v9;
      _os_log_impl(&dword_241804000, defaultManager, OS_LOG_TYPE_ERROR, "failed to create archive: %@", buf, 0xCu);
    }

    v27 = 0;
    goto LABEL_50;
  }

  v42 = sourceCopy;
  v43 = v9;
  v56 = 0;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v44 = pathsCopy;
  v11 = pathsCopy;
  v12 = [v11 countByEnumeratingWithState:&v52 objects:v60 count:16];
  if (!v12)
  {
    goto LABEL_32;
  }

  v13 = v12;
  v14 = *v53;
  while (2)
  {
    for (i = 0; i != v13; ++i)
    {
      if (*v53 != v14)
      {
        objc_enumerationMutation(v11);
      }

      v16 = *(*(&v52 + 1) + 8 * i);
      v17 = [defaultManager fileExistsAtPath:v16 isDirectory:&v56];
      if (!v17)
      {
        v21 = archiverLogHandle(v17);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          *v58 = v16;
          v22 = v21;
          v23 = "fileExistsAtPath says %@ doesn't exist!";
          v24 = 12;
          goto LABEL_18;
        }

LABEL_19:

        continue;
      }

      v18 = v56;
      lastPathComponent = [v16 lastPathComponent];
      if (v18 == 1)
      {
        v20 = [(FileArchiver *)v46 addDirectoryToArchive:v16 withDirName:lastPathComponent];
      }

      else
      {
        v20 = [(FileArchiver *)v46 addFileToArchive:v16 withFileName:lastPathComponent];
      }

      v25 = v20;

      if (v25)
      {
        if (v25 == -30)
        {
          v28 = archiverLogHandle(v26);
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            *v58 = v16;
            _os_log_impl(&dword_241804000, v28, OS_LOG_TYPE_ERROR, "ARCHIVE_FATAL for %@", buf, 0xCu);
          }

          goto LABEL_32;
        }

        v21 = archiverLogHandle(v26);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109378;
          *v58 = v25;
          *&v58[4] = 2112;
          *&v58[6] = v16;
          v22 = v21;
          v23 = "Archive ERROR (%d) for %@";
          v24 = 18;
LABEL_18:
          _os_log_impl(&dword_241804000, v22, OS_LOG_TYPE_ERROR, v23, buf, v24);
        }

        goto LABEL_19;
      }
    }

    v13 = [v11 countByEnumeratingWithState:&v52 objects:v60 count:16];
    if (v13)
    {
      continue;
    }

    break;
  }

LABEL_32:

  closeArchive = [(FileArchiver *)v46 closeArchive];
  if (closeArchive)
  {
    v30 = archiverLogHandle(closeArchive);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *v58 = v43;
      _os_log_impl(&dword_241804000, v30, OS_LOG_TYPE_ERROR, "closeArchive failed for %@", buf, 0xCu);
    }
  }

  pathsCopy = v44;
  if (v42)
  {
    v45 = dirCopy;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v31 = v11;
    v32 = [v31 countByEnumeratingWithState:&v48 objects:v59 count:16];
    if (v32)
    {
      v33 = v32;
      v34 = *v49;
      do
      {
        for (j = 0; j != v33; ++j)
        {
          if (*v49 != v34)
          {
            objc_enumerationMutation(v31);
          }

          v36 = *(*(&v48 + 1) + 8 * j);
          v47 = 0;
          v37 = [defaultManager removeItemAtPath:v36 error:&v47];
          v38 = v47;
          v39 = v38;
          if ((v37 & 1) == 0)
          {
            v40 = archiverLogHandle(v38);
            if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              *v58 = v36;
              *&v58[8] = 2112;
              *&v58[10] = v39;
              _os_log_impl(&dword_241804000, v40, OS_LOG_TYPE_ERROR, "Unable to delete: %@ (%@)", buf, 0x16u);
            }
          }
        }

        v33 = [v31 countByEnumeratingWithState:&v48 objects:v59 count:16];
      }

      while (v33);
    }

    pathsCopy = v44;
    dirCopy = v45;
  }

  v9 = v43;
  v27 = v43;
LABEL_50:

LABEL_51:

  return v27;
}

+ (id)archiveWithPath:(id)path destinationDir:(id)dir nameMatches:(id)matches maxAge:(double)age allowDirectories:(BOOL)directories
{
  directoriesCopy = directories;
  v25 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  dirCopy = dir;
  matchesCopy = matches;
  if (![pathCopy length])
  {
    v15 = archiverLogHandle(0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v21) = 0;
      v16 = "source directory path is invalid";
      goto LABEL_11;
    }

LABEL_12:
    v17 = 0;
    goto LABEL_13;
  }

  v14 = [dirCopy length];
  if (!v14)
  {
    v15 = archiverLogHandle(0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v21) = 0;
      v16 = "destination directory path is invalid";
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  if (!matchesCopy && age == 0.0)
  {
    v15 = archiverLogHandle(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v21) = 0;
      v16 = "no filename predicate nor file age filter";
LABEL_11:
      _os_log_impl(&dword_241804000, v15, OS_LOG_TYPE_ERROR, v16, &v21, 2u);
      goto LABEL_12;
    }

    goto LABEL_12;
  }

  if (age <= 0.0)
  {
    v15 = 0;
  }

  else
  {
    v15 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-age];
  }

  v19 = [FileArchiver matchFilesInDirectory:pathCopy filenamePredicate:matchesCopy newerThan:v15 allowDirectories:directoriesCopy];
  v20 = archiverLogHandle(v19);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 138412546;
    v22 = pathCopy;
    v23 = 2112;
    v24 = dirCopy;
    _os_log_impl(&dword_241804000, v20, OS_LOG_TYPE_DEFAULT, "archiving filtered contents of %@ into %@.tar.gz", &v21, 0x16u);
  }

  v17 = [FileArchiver archiveWithPaths:v19 destinationDir:dirCopy deleteSource:0];

LABEL_13:

  return v17;
}

- (FileArchiver)initWithPath:(id)path shouldCompress:(BOOL)compress
{
  compressCopy = compress;
  v17 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  v12.receiver = self;
  v12.super_class = FileArchiver;
  v7 = [(FileArchiver *)&v12 init];
  if (v7)
  {
    v7->_archive = archive_write_new();
    if (compressCopy)
    {
      archive_write_add_filter_gzip();
    }

    archive_write_set_format_pax();
    [pathCopy UTF8String];
    v8 = archive_write_open_filename();
    if (v8)
    {
      v9 = v8;
      v10 = archiverLogHandle(v8);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v14 = pathCopy;
        v15 = 1024;
        v16 = v9;
        _os_log_impl(&dword_241804000, v10, OS_LOG_TYPE_ERROR, "Error creating archive at path %@ %d", buf, 0x12u);
      }

      v7 = 0;
    }
  }

  return v7;
}

- (int)addFileToArchive:(id)archive withFileName:(id)name
{
  v46 = *MEMORY[0x277D85DE8];
  archiveCopy = archive;
  nameCopy = name;
  uTF8String = [archiveCopy UTF8String];
  if (!uTF8String)
  {
    v16 = archiverLogHandle(0);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v17 = "No filename!";
LABEL_13:
      v18 = v16;
      v19 = 2;
LABEL_14:
      _os_log_impl(&dword_241804000, v18, OS_LOG_TYPE_ERROR, v17, buf, v19);
    }

LABEL_15:

LABEL_16:
    LODWORD(v12) = -1;
    goto LABEL_17;
  }

  v8 = uTF8String;
  if (!archive_entry_new())
  {
    v16 = archiverLogHandle(0);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v17 = "archive_entry_new() failed!";
      goto LABEL_13;
    }

    goto LABEL_15;
  }

  v9 = open(v8, 0);
  if (v9 == -1)
  {
    v16 = archiverLogHandle(v9);
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    v21 = *__error();
    *buf = 138412546;
    v41 = archiveCopy;
    v42 = 1024;
    v43 = v21;
    v17 = "Error opening file %@  %{errno}d";
    v18 = v16;
    v19 = 18;
    goto LABEL_14;
  }

  v10 = v9;
  v11 = stat(v8, &v33);
  if (v11 == -1)
  {
    v22 = archiverLogHandle(v11);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = *__error();
      *buf = 136315394;
      v41 = v8;
      v42 = 1024;
      v43 = v23;
      _os_log_impl(&dword_241804000, v22, OS_LOG_TYPE_ERROR, "stat() failed for %s: %{errno}d", buf, 0x12u);
    }

    close(v10);
    goto LABEL_16;
  }

  archive_entry_copy_stat();
  [nameCopy UTF8String];
  archive_entry_set_pathname();
  if (archive_write_header())
  {
    v12 = archive_errno();
    v13 = archiverLogHandle(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      uTF8String2 = [nameCopy UTF8String];
      v15 = archive_error_string();
      *buf = 136315650;
      v41 = uTF8String2;
      v42 = 1024;
      v43 = v12;
      v44 = 2080;
      v45 = v15;
      _os_log_impl(&dword_241804000, v13, OS_LOG_TYPE_ERROR, "failed to write header for file, %s, status, %d, reason: %s", buf, 0x1Cu);
    }
  }

  else
  {
    v24 = read(v10, buf, 0x2000uLL);
    if (v24 < 1)
    {
LABEL_28:
      LODWORD(v12) = 0;
    }

    else
    {
      v25 = v24;
      while (1)
      {
        v26 = archive_write_data();
        if ((v26 & 0x8000000000000000) != 0)
        {
          v12 = archiverLogHandle(v26);
          if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_34;
          }

          v28 = archive_error_string();
          *v34 = 136315394;
          v35 = v28;
          v36 = 2112;
          v37 = archiveCopy;
          v29 = "Error (%s) writing file '%@'";
          v30 = v12;
          v31 = 22;
          goto LABEL_33;
        }

        v27 = v26;
        if (v26 < v25)
        {
          break;
        }

        v25 = read(v10, buf, 0x2000uLL);
        if (v25 <= 0)
        {
          goto LABEL_28;
        }
      }

      v12 = archiverLogHandle(v26);
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_34;
      }

      v32 = archive_entry_pathname();
      *v34 = 136315650;
      v35 = v32;
      v36 = 2048;
      v37 = v25;
      v38 = 2048;
      v39 = v27;
      v29 = "%s: Truncated write; file may have grown while being archived (tried to write %ld bytes but wrote %ld bytes)";
      v30 = v12;
      v31 = 32;
LABEL_33:
      _os_log_impl(&dword_241804000, v30, OS_LOG_TYPE_ERROR, v29, v34, v31);
LABEL_34:

      LODWORD(v12) = archive_errno();
    }
  }

  archive_entry_free();
  close(v10);
LABEL_17:

  return v12;
}

- (int)addDirectoryToArchive:(id)archive withDirName:(id)name
{
  v33 = *MEMORY[0x277D85DE8];
  archiveCopy = archive;
  nameCopy = name;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v7 = [defaultManager contentsOfDirectoryAtPath:archiveCopy error:0];

  if ([v7 count])
  {
    v31 = 0;
    v8 = objc_autoreleasePoolPush();
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v10)
    {
      v11 = v10;
      v23 = v8;
      v24 = v7;
      v12 = *v28;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v28 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v27 + 1) + 8 * i);
          v15 = [archiveCopy stringByAppendingPathComponent:{v14, v23, v24}];
          defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
          v17 = [defaultManager2 fileExistsAtPath:v15 isDirectory:&v31];

          if (v17)
          {
            lastPathComponent = [v14 lastPathComponent];
            v19 = [nameCopy stringByAppendingPathComponent:lastPathComponent];

            if (v31 == 1)
            {
              v20 = [(FileArchiver *)self addDirectoryToArchive:v15 withDirName:v19];
            }

            else
            {
              v20 = [(FileArchiver *)self addFileToArchive:v15 withFileName:v19];
            }

            if (v20 == -30)
            {

              v21 = -30;
              goto LABEL_18;
            }
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v27 objects:v32 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }

      v21 = 0;
LABEL_18:
      v8 = v23;
      v7 = v24;
    }

    else
    {
      v21 = 0;
    }

    objc_autoreleasePoolPop(v8);
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (void)moveDirectoryToArchive:(id)archive withDirName:(id)name
{
  v19 = *MEMORY[0x277D85DE8];
  archiveCopy = archive;
  lastPathComponent = [archiveCopy lastPathComponent];
  [(FileArchiver *)self addDirectoryToArchive:archiveCopy withDirName:lastPathComponent];

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v14 = 0;
  [defaultManager removeItemAtPath:archiveCopy error:&v14];
  v8 = v14;

  if (v8)
  {
    v10 = archiverLogHandle(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      uTF8String = [archiveCopy UTF8String];
      v12 = [v8 description];
      uTF8String2 = [v12 UTF8String];
      *buf = 136315394;
      v16 = uTF8String;
      v17 = 2080;
      v18 = uTF8String2;
      _os_log_impl(&dword_241804000, v10, OS_LOG_TYPE_ERROR, "Failed to clean up source dir: %s, error: %s", buf, 0x16u);
    }
  }
}

- (int)closeArchive
{
  result = archive_write_free();
  self->_archive = 0;
  return result;
}

@end