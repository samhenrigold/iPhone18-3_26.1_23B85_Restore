@interface ExtractFileOperation
- (BOOL)_applyFileAttributesToDirectory:(id)directory error:(id *)error;
- (BOOL)_performBOMCopy:(id *)copy;
- (id)_newBOMCopierOptions;
- (void)_copierFinishedFileWithPath:(const char *)path size:(int64_t)size;
- (void)_copierStartedFileWithPath:(const char *)path size:(int64_t)size;
- (void)_copierUpdatedFileWithPath:(const char *)path size:(int64_t)size;
- (void)_initializeProgress;
- (void)_updateProgressWithByteCount:(int64_t)count;
- (void)dealloc;
- (void)run;
@end

@implementation ExtractFileOperation

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = ExtractFileOperation;
  [(ExtractFileOperation *)&v3 dealloc];
}

- (void)run
{
  [(ExtractFileOperation *)self _initializeProgress];
  v4 = 0;
  v3 = [(ExtractFileOperation *)self _performBOMCopy:&v4];
  if (v3)
  {
    [(ExtractFileOperation *)self _applyFileAttributesToDirectory:[(ExtractFileOperation *)self destinationFilePath] error:0];
  }

  [(ExtractFileOperation *)self setError:v4];
  [(ExtractFileOperation *)self setSuccess:v3];
}

- (BOOL)_applyFileAttributesToDirectory:(id)directory error:(id *)error
{
  v70 = 0;
  v7 = +[SSLogConfig sharedDaemonConfig];
  if (!v7)
  {
    v7 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v7 shouldLog];
  if ([v7 shouldLogToDisk])
  {
    v9 = shouldLog | 2;
  }

  else
  {
    v9 = shouldLog;
  }

  oSLogObject = [v7 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
  {
    v11 = v9;
  }

  else
  {
    v11 = v9 & 2;
  }

  if (v11)
  {
    v77.st_dev = 138412546;
    *&v77.st_mode = objc_opt_class();
    WORD2(v77.st_ino) = 2112;
    *(&v77.st_ino + 6) = directory;
    v12 = _os_log_send_and_compose_impl(v11, 0, 0, 0, &_mh_execute_header, oSLogObject, 1, "%@: Fixing file permissions for %@", &v77, 22);
    if (v12)
    {
      v13 = v12;
      v14 = [NSString stringWithCString:v12 encoding:4];
      free(v13);
      v60 = v14;
      SSFileLog();
    }
  }

  v65 = objc_alloc_init(NSFileManager);
  v15 = [v65 subpathsOfDirectoryAtPath:directory error:&v70];
  if (!v15)
  {
    v28 = +[SSLogConfig sharedDaemonConfig];
    if (!v28)
    {
      v28 = +[SSLogConfig sharedConfig];
    }

    shouldLog2 = [v28 shouldLog];
    if ([v28 shouldLogToDisk])
    {
      v30 = shouldLog2 | 2;
    }

    else
    {
      v30 = shouldLog2;
    }

    oSLogObject2 = [v28 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
    {
      v32 = v30;
    }

    else
    {
      v32 = v30 & 2;
    }

    if (v32)
    {
      v33 = objc_opt_class();
      v77.st_dev = 138412802;
      *&v77.st_mode = v33;
      WORD2(v77.st_ino) = 2112;
      *(&v77.st_ino + 6) = directory;
      HIWORD(v77.st_gid) = 2112;
      *&v77.st_rdev = v70;
      LODWORD(v62) = 32;
      v34 = _os_log_send_and_compose_impl(v32, 0, 0, 0, &_mh_execute_header, oSLogObject2, 0, "%@: Could not get sub-paths of %@: %@", &v77, v62);
      if (v34)
      {
        v35 = v34;
        [NSString stringWithCString:v34 encoding:4];
        free(v35);
        SSFileLog();
      }
    }

    v36 = v70;
    v27 = 0;
    goto LABEL_67;
  }

  v16 = v15;
  v64 = [(NSDictionary *)[(ExtractFileOperation *)self fileAttributes] mutableCopy];
  if (!v64)
  {
    v64 = objc_alloc_init(NSMutableDictionary);
  }

  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v17 = [v16 countByEnumeratingWithState:&v66 objects:v78 count:{16, v60}];
  if (!v17)
  {
    v27 = 1;
    goto LABEL_66;
  }

  v18 = v17;
  errorCopy = error;
  v19 = *v67;
  while (2)
  {
    for (i = 0; i != v18; i = i + 1)
    {
      if (*v67 != v19)
      {
        objc_enumerationMutation(v16);
      }

      v21 = *(*(&v66 + 1) + 8 * i);
      v22 = objc_alloc_init(NSAutoreleasePool);
      v23 = [directory stringByAppendingPathComponent:v21];
      fileSystemRepresentation = [v23 fileSystemRepresentation];
      if (fileSystemRepresentation)
      {
        memset(&v77, 0, sizeof(v77));
        if (stat(fileSystemRepresentation, &v77))
        {
          v37 = +[SSLogConfig sharedDaemonConfig];
          if (!v37)
          {
            v37 = +[SSLogConfig sharedConfig];
          }

          shouldLog3 = [v37 shouldLog];
          if ([v37 shouldLogToDisk])
          {
            v39 = shouldLog3 | 2;
          }

          else
          {
            v39 = shouldLog3;
          }

          oSLogObject3 = [v37 OSLogObject];
          if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
          {
            v41 = v39;
          }

          else
          {
            v41 = v39 & 2;
          }

          if (v41)
          {
            v42 = objc_opt_class();
            v43 = __error();
            v44 = strerror(*v43);
            v71 = 138412802;
            v72 = v42;
            v73 = 2112;
            v74 = v23;
            v75 = 2080;
            v76 = v44;
            LODWORD(v62) = 32;
            v45 = _os_log_send_and_compose_impl(v41, 0, 0, 0, &_mh_execute_header, oSLogObject3, 0, "%@: Could not stat %@: %s", &v71, v62);
            if (v45)
            {
              v46 = v45;
              v47 = [NSString stringWithCString:v45 encoding:4];
              free(v46);
              v61 = v47;
              SSFileLog();
            }
          }

          v70 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:*__error() userInfo:0];
        }

        else
        {
          v25 = [NSNumber alloc];
          0x1B0u = [v25 initWithShort:v77.st_mode | 0x1B0u];
          [v64 setObject:0x1B0u forKey:NSFilePosixPermissions];

          v70 = 0;
          if ([v65 setAttributes:v64 ofItemAtPath:v23 error:&v70])
          {

            goto LABEL_24;
          }

          v48 = +[SSLogConfig sharedDaemonConfig];
          if (!v48)
          {
            v48 = +[SSLogConfig sharedConfig];
          }

          shouldLog4 = [v48 shouldLog];
          if ([v48 shouldLogToDisk])
          {
            v50 = shouldLog4 | 2;
          }

          else
          {
            v50 = shouldLog4;
          }

          oSLogObject4 = [v48 OSLogObject];
          if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_DEFAULT))
          {
            v52 = v50;
          }

          else
          {
            v52 = v50 & 2;
          }

          if (v52)
          {
            v53 = objc_opt_class();
            v71 = 138412802;
            v72 = v53;
            v73 = 2112;
            v74 = v23;
            v75 = 2112;
            v76 = v70;
            LODWORD(v62) = 32;
            v54 = _os_log_send_and_compose_impl(v52, 0, 0, 0, &_mh_execute_header, oSLogObject4, 0, "%@: Could not set file attributes for file: %@, error: %@", &v71, v62);
            if (v54)
            {
              v55 = v54;
              v56 = [NSString stringWithCString:v54 encoding:4];
              free(v55);
              v61 = v56;
              SSFileLog();
            }
          }

          v57 = v70;
        }

        [v22 drain];
        v27 = 0;
        goto LABEL_65;
      }

LABEL_24:
      [v22 drain];
    }

    v18 = [v16 countByEnumeratingWithState:&v66 objects:v78 count:16];
    if (v18)
    {
      continue;
    }

    break;
  }

  v27 = 1;
LABEL_65:
  error = errorCopy;
LABEL_66:

LABEL_67:
  v58 = v70;
  if (error)
  {
    *error = v70;
  }

  return v27;
}

- (void)_copierFinishedFileWithPath:(const char *)path size:(int64_t)size
{
  [(ExtractFileOperation *)self _copierUpdatedFileWithPath:path size:size];

  self->_activeFilePath = 0;
}

- (void)_copierStartedFileWithPath:(const char *)path size:(int64_t)size
{
  self->_activeFileBytesCopied = 0;

  self->_activeFilePath = [[NSString alloc] initWithCString:path encoding:4];
}

- (void)_copierUpdatedFileWithPath:(const char *)path size:(int64_t)size
{
  activeFilePath = self->_activeFilePath;
  if (activeFilePath)
  {
    if (!strcmp(path, [(NSString *)activeFilePath cStringUsingEncoding:4]))
    {
      [(ExtractFileOperation *)self _updateProgressWithByteCount:size - self->_activeFileBytesCopied];
      self->_activeFileBytesCopied = size;
    }
  }
}

- (void)_initializeProgress
{
  [(NSString *)[(ExtractFileOperation *)self sourceFilePath] fileSystemRepresentation];
  if (!BOMCopierCountFilesInArchive())
  {
    v3 = OBJC_IVAR___ISOperation__progress;
    [*&self->ISOperation_opaque[OBJC_IVAR___ISOperation__progress] setUnits:1];
    [*&self->ISOperation_opaque[v3] setMaxValue:0];
    [*&self->ISOperation_opaque[v3] resetSnapshots];
    self->_lastSnapshotTime = -1.79769313e308;
    [(ExtractFileOperation *)self _updateProgressWithByteCount:0];
  }
}

- (id)_newBOMCopierOptions
{
  v3 = objc_alloc_init(NSMutableDictionary);
  sourceFileType = [(ExtractFileOperation *)self sourceFileType];
  if (sourceFileType == 1)
  {
    v5 = @"extractCPIO";
    goto LABEL_5;
  }

  if (!sourceFileType)
  {
    v5 = @"extractPKZip";
LABEL_5:
    [v3 setObject:kCFBooleanTrue forKey:v5];
  }

  return v3;
}

- (BOOL)_performBOMCopy:(id *)copy
{
  if (!BOMCopierNew())
  {
    v25 = 0;
    v16 = 0;
    if (!copy)
    {
      return v16;
    }

    goto LABEL_30;
  }

  BOMCopierSetUserData();
  BOMCopierSetCopyFileFinishedHandler();
  BOMCopierSetCopyFileStartedHandler();
  BOMCopierSetCopyFileUpdateHandler();
  BOMCopierSetFatalErrorHandler();
  BOMCopierSetFatalFileErrorHandler();
  BOMCopierSetFileConflictErrorHandler();
  BOMCopierSetFileErrorHandler();
  fileSystemRepresentation = [(NSString *)[(ExtractFileOperation *)self sourceFilePath] fileSystemRepresentation];
  fileSystemRepresentation2 = [(NSString *)[(ExtractFileOperation *)self destinationFilePath] fileSystemRepresentation];
  v7 = +[SSLogConfig sharedDaemonConfig];
  if (!v7)
  {
    v7 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v7 shouldLog];
  if ([v7 shouldLogToDisk])
  {
    LODWORD(v9) = shouldLog | 2;
  }

  else
  {
    LODWORD(v9) = shouldLog;
  }

  oSLogObject = [v7 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
  {
    v9 = v9;
  }

  else
  {
    v9 &= 2u;
  }

  if (v9)
  {
    v29 = 138412802;
    v30 = objc_opt_class();
    v31 = 2080;
    v32 = fileSystemRepresentation;
    v33 = 2080;
    v34 = fileSystemRepresentation2;
    v11 = _os_log_send_and_compose_impl(v9, 0, 0, 0, &_mh_execute_header, oSLogObject, 1, "%@: Extracting %s to %s", &v29, 32);
    if (v11)
    {
      v12 = v11;
      v13 = [NSString stringWithCString:v11 encoding:4];
      free(v12);
      v27 = v13;
      SSFileLog();
    }
  }

  _newBOMCopierOptions = [(ExtractFileOperation *)self _newBOMCopierOptions];
  v15 = BOMCopierCopyWithOptions();
  v16 = v15 == 0;
  if (v15)
  {
    v17 = v15;
    v18 = +[SSLogConfig sharedDaemonConfig];
    if (!v18)
    {
      v18 = +[SSLogConfig sharedConfig];
    }

    shouldLog2 = [v18 shouldLog];
    if ([v18 shouldLogToDisk])
    {
      LODWORD(v20) = shouldLog2 | 2;
    }

    else
    {
      LODWORD(v20) = shouldLog2;
    }

    oSLogObject2 = [v18 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
    {
      v20 = v20;
    }

    else
    {
      v20 &= 2u;
    }

    if (v20)
    {
      v22 = objc_opt_class();
      v29 = 138412546;
      v30 = v22;
      v31 = 1024;
      LODWORD(v32) = v17;
      LODWORD(v28) = 18;
      v23 = _os_log_send_and_compose_impl(v20, 0, 0, 0, &_mh_execute_header, oSLogObject2, 0, "%@: BOMCopier failed with error: %d", &v29, v28);
      if (v23)
      {
        v24 = v23;
        [NSString stringWithCString:v23 encoding:4];
        free(v24);
        SSFileLog();
      }
    }

    v25 = ISError();
  }

  else
  {
    v25 = 0;
  }

  BOMCopierFree();
  if (copy)
  {
LABEL_30:
    *copy = v25;
  }

  return v16;
}

- (void)_updateProgressWithByteCount:(int64_t)count
{
  v5 = OBJC_IVAR___ISOperation__progress;
  currentValue = [*&self->ISOperation_opaque[OBJC_IVAR___ISOperation__progress] currentValue];
  maxValue = &currentValue[count];
  if (maxValue >= [*&self->ISOperation_opaque[v5] maxValue])
  {
    maxValue = [*&self->ISOperation_opaque[v5] maxValue];
  }

  if (maxValue != currentValue)
  {
    [*&self->ISOperation_opaque[v5] setCurrentValue:maxValue];
  }

  Current = CFAbsoluteTimeGetCurrent();
  if (self->_lastSnapshotTime + kSSOperationDefaultSnapshotInterval < Current)
  {
    [*&self->ISOperation_opaque[v5] snapshot];
    [(ExtractFileOperation *)self sendProgressToDelegate];
    self->_lastSnapshotTime = Current;
  }
}

@end