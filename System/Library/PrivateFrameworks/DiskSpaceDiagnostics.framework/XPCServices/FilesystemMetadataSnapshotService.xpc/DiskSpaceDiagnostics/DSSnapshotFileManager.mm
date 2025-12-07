@interface DSSnapshotFileManager
- (BOOL)__createReadmeFileWithError:(id *)error;
- (BOOL)__createSharedDirectoriesMapFileWithError:(id *)error;
- (BOOL)__createSharedLogFileWithError:(id *)error;
- (BOOL)cleanupWithError:(id *)error;
- (BOOL)createWorkingDirectoryAndSharedFilesWithError:(id *)error;
- (BOOL)writeFileForMetadata:(id)metadata error:(id *)error;
- (DSSnapshotRequest)_snapshotRequest;
- (__sFILE)createFileForWritingWithName:(id)name error:(id *)error;
- (id)__workingDirectoryParentPath;
- (id)_archiveToDirectoryAtPath:(id)path error:(id *)error;
- (id)fileURLForFileNamed:(id)named error:(id *)error;
- (id)initForSnapshotRequest:(id)request;
- (void)__closeFiles;
- (void)__flushFiles;
- (void)dealloc;
@end

@implementation DSSnapshotFileManager

- (id)__workingDirectoryParentPath
{
  if (qword_10006E500 != -1)
  {
    sub_10002FAA4();
  }

  v3 = qword_10006E4F8;

  return v3;
}

- (BOOL)__createReadmeFileWithError:(id *)error
{
  v5 = shared_filesystem_metadata_snapshot_service_log_handle(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Creating readme file", buf, 2u);
  }

  if (error)
  {
    *error = 0;
  }

  v12 = 0;
  v6 = [(DSSnapshotFileManager *)self createFileForWritingWithName:@"README.txt" error:&v12];
  v7 = v12;
  v8 = v7;
  if (v6)
  {
    fputs("A filesystem metadata snapshot contains information necessary to investigate reports of issues with disk space.\n\nUse dsf(1) to inspect the contents:\n\n   xcrun -sdk iphoneos dsf -h\n\nSee man page for more:\n\n   man $(xcrun --show-sdk-platform-path -sdk iphoneos)/usr/local/share/man/man1/dsf.1\n", v6);
    if (error)
    {
LABEL_7:
      v9 = v8;
      *error = v8;
    }
  }

  else
  {
    v11 = shared_filesystem_metadata_snapshot_service_log_handle(v7);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10002FAB8(v8);
    }

    if (error)
    {
      goto LABEL_7;
    }
  }

  return v6 != 0;
}

- (BOOL)__createSharedDirectoriesMapFileWithError:(id *)error
{
  if (error)
  {
    *error = 0;
  }

  shouldHashVolumeListings = [(DSSnapshotFileManager *)self shouldHashVolumeListings];
  if (!shouldHashVolumeListings)
  {
    v10 = 0;
    v11 = 1;
    if (!error)
    {
      goto LABEL_14;
    }

LABEL_13:
    v16 = v10;
    *error = v10;
    goto LABEL_14;
  }

  v6 = shared_filesystem_metadata_snapshot_service_log_handle(shouldHashVolumeListings);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Creating shared directories map file", buf, 2u);
  }

  v18 = 0;
  v7 = [(DSSnapshotFileManager *)self createFileForWritingWithName:@"directories.fsmap" error:&v18];
  v8 = v18;
  self->_sharedDirectoriesMapFile = v7;
  sharedDirectoriesMapFile = [(DSSnapshotFileManager *)self sharedDirectoriesMapFile];
  v10 = 0;
  v11 = sharedDirectoriesMapFile != 0;
  if (!sharedDirectoriesMapFile)
  {
    v12 = [NSString stringWithFormat:@"Failed to create mapping file for directories (%@): %@", @"directories.fsmap", v8];
    v20[0] = NSUnderlyingErrorKey;
    v20[1] = NSLocalizedDescriptionKey;
    v21[0] = v8;
    v21[1] = v12;
    v13 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:2];
    v10 = [NSError errorWithDomain:@"com.apple.FilesystemMetadataSnapshot" code:65543 userInfo:v13];

    v15 = shared_filesystem_metadata_snapshot_service_log_handle(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_10002FB3C(v8);
    }
  }

  if (error)
  {
    goto LABEL_13;
  }

LABEL_14:

  return v11;
}

- (BOOL)__createSharedLogFileWithError:(id *)error
{
  v5 = shared_filesystem_metadata_snapshot_service_log_handle(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Creating log file", buf, 2u);
  }

  if (error)
  {
    *error = 0;
  }

  v12 = 0;
  v6 = [(DSSnapshotFileManager *)self createFileForWritingWithName:@"log.log" error:&v12];
  v7 = v12;
  self->_sharedLogFile = v6;
  sharedLogFile = [(DSSnapshotFileManager *)self sharedLogFile];
  if (!sharedLogFile)
  {
    self->_sharedLogFile = __stderrp;
    v9 = shared_filesystem_metadata_snapshot_service_log_handle(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10002FBC0(v7);
    }
  }

  if (error)
  {
    v10 = v7;
    *error = v7;
  }

  return sharedLogFile != 0;
}

- (void)__flushFiles
{
  v3 = shared_filesystem_metadata_snapshot_service_log_handle(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Flushing files", v11, 2u);
  }

  __openFiles = [(DSSnapshotFileManager *)self __openFiles];
  [__openFiles compact];

  __openFiles2 = [(DSSnapshotFileManager *)self __openFiles];
  v6 = [__openFiles2 count];

  if (v6)
  {
    v7 = 0;
    do
    {
      __openFiles3 = [(DSSnapshotFileManager *)self __openFiles];
      fflush([__openFiles3 pointerAtIndex:v7]);

      ++v7;
      __openFiles4 = [(DSSnapshotFileManager *)self __openFiles];
      v10 = [__openFiles4 count];
    }

    while (v7 < v10);
  }
}

- (void)__closeFiles
{
  v3 = shared_filesystem_metadata_snapshot_service_log_handle(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Closing files", v12, 2u);
  }

  __openFiles = [(DSSnapshotFileManager *)self __openFiles];
  [__openFiles compact];

  __openFiles2 = [(DSSnapshotFileManager *)self __openFiles];
  v6 = [__openFiles2 count];

  if (v6)
  {
    v7 = 0;
    do
    {
      __openFiles3 = [(DSSnapshotFileManager *)self __openFiles];
      [__openFiles3 replacePointerAtIndex:v7 withPointer:0];

      __openFiles4 = [(DSSnapshotFileManager *)self __openFiles];
      fclose([__openFiles4 pointerAtIndex:v7]);

      ++v7;
      __openFiles5 = [(DSSnapshotFileManager *)self __openFiles];
      v11 = [__openFiles5 count];
    }

    while (v7 < v11);
  }
}

- (id)_archiveToDirectoryAtPath:(id)path error:(id *)error
{
  pathCopy = path;
  v7 = shared_filesystem_metadata_snapshot_service_log_handle(pathCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    _workingDirectoryName = [(DSSnapshotFileManager *)self _workingDirectoryName];
    *buf = 138412290;
    v47 = _workingDirectoryName;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Archiving %@", buf, 0xCu);
  }

  if (error)
  {
    *error = 0;
  }

  [(DSSnapshotFileManager *)self __flushFiles];
  v9 = objc_autoreleasePoolPush();
  _workingDirectoryName2 = [(DSSnapshotFileManager *)self _workingDirectoryName];
  __workingDirectoryParentPath = [(DSSnapshotFileManager *)self __workingDirectoryParentPath];
  v43 = 0;
  v12 = [DSFilesystemMetadataSnapshotArchiver compressSnapshotWithName:_workingDirectoryName2 atPath:__workingDirectoryParentPath withLogFile:[(DSSnapshotFileManager *)self sharedLogFile] archiveName:&v43];
  v13 = v43;

  objc_autoreleasePoolPop(v9);
  if (v12)
  {
    sharedLogFile = [(DSSnapshotFileManager *)self sharedLogFile];
    _workingDirectoryName3 = [(DSSnapshotFileManager *)self _workingDirectoryName];
    LODWORD(sharedLogFile) = fprintf(sharedLogFile, "Successfully compressed directory %s into archive %s\n", [_workingDirectoryName3 UTF8String], objc_msgSend(v13, "UTF8String"));

    if (sharedLogFile == -1)
    {
      v16 = __error();
      if ((byte_10006E509 & 1) == 0)
      {
        byte_10006E509 = 1;
        v17 = shared_filesystem_metadata_snapshot_service_log_handle(v16);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
        {
          sub_10002FC44();
        }
      }
    }

    v18 = shared_filesystem_metadata_snapshot_service_log_handle(v16);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      _workingDirectoryName4 = [(DSSnapshotFileManager *)self _workingDirectoryName];
      uTF8String = [_workingDirectoryName4 UTF8String];
      uTF8String2 = [v13 UTF8String];
      *buf = 136315394;
      v47 = uTF8String;
      v48 = 2080;
      v49 = uTF8String2;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Successfully compressed directory %s into archive %s", buf, 0x16u);
    }

    __workingDirectoryParentPath2 = [(DSSnapshotFileManager *)self __workingDirectoryParentPath];
    v23 = [NSString stringWithFormat:@"%@/%@", __workingDirectoryParentPath2, v13];

    v24 = [NSString stringWithFormat:@"%@/%@", pathCopy, v13];
    v25 = +[NSFileManager defaultManager];
    v42 = 0;
    v26 = [v25 moveItemAtPath:v23 toPath:v24 error:&v42];
    v27 = v42;

    if (v26)
    {
      v28 = v24;
      v29 = 0;
    }

    else
    {
      v35 = [NSString stringWithFormat:@"Failed to move %@ to %@", v23, v24];
      v44[0] = NSUnderlyingErrorKey;
      v44[1] = NSLocalizedDescriptionKey;
      v45[0] = v27;
      v45[1] = v35;
      v36 = [NSDictionary dictionaryWithObjects:v45 forKeys:v44 count:2];
      v29 = [NSError errorWithDomain:@"com.apple.FilesystemMetadataSnapshot" code:65543 userInfo:v36];

      if (error)
      {
        v37 = v29;
        *error = v29;
      }

      v38 = fprintf(-[DSSnapshotFileManager sharedLogFile](self, "sharedLogFile"), "%s\n", [v35 UTF8String]);
      if (v38 == -1)
      {
        v38 = __error();
        if ((byte_10006E50A & 1) == 0)
        {
          byte_10006E50A = 1;
          v39 = shared_filesystem_metadata_snapshot_service_log_handle(v38);
          if (os_log_type_enabled(v39, OS_LOG_TYPE_FAULT))
          {
            sub_10002FC44();
          }
        }
      }

      v40 = shared_filesystem_metadata_snapshot_service_log_handle(v38);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        sub_10002FCAC(v35);
      }

      v28 = 0;
    }
  }

  else
  {
    _workingDirectoryName5 = [(DSSnapshotFileManager *)self _workingDirectoryName];
    v23 = [NSString stringWithFormat:@"Failed to compress directory %@", _workingDirectoryName5];

    v50 = NSLocalizedDescriptionKey;
    v51 = v23;
    v31 = [NSDictionary dictionaryWithObjects:&v51 forKeys:&v50 count:1];
    v29 = [NSError errorWithDomain:@"com.apple.FilesystemMetadataSnapshot" code:131073 userInfo:v31];

    if (error)
    {
      v32 = v29;
      *error = v29;
    }

    v33 = fprintf(-[DSSnapshotFileManager sharedLogFile](self, "sharedLogFile"), "%s\n", [v23 UTF8String]);
    if (v33 == -1)
    {
      v33 = __error();
      if ((byte_10006E508 & 1) == 0)
      {
        byte_10006E508 = 1;
        v34 = shared_filesystem_metadata_snapshot_service_log_handle(v33);
        if (os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
        {
          sub_10002FC44();
        }
      }
    }

    v24 = shared_filesystem_metadata_snapshot_service_log_handle(v33);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      sub_10002FCAC(v23);
    }

    v28 = 0;
  }

  return v28;
}

- (BOOL)createWorkingDirectoryAndSharedFilesWithError:(id *)error
{
  v5 = shared_filesystem_metadata_snapshot_service_log_handle(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Setting up files", buf, 2u);
  }

  if (error)
  {
    *error = 0;
  }

  v6 = objc_alloc_init(NSDateFormatter);
  [v6 setDateFormat:@"yyyy-MM-dd-HHmmss"];
  _snapshotRequest = [(DSSnapshotFileManager *)self _snapshotRequest];
  beginDate = [_snapshotRequest beginDate];
  v9 = [v6 stringFromDate:beginDate];

  v10 = [NSString stringWithFormat:@"%@-%@.%@", @"FilesystemMeta", v9, @"fsmeta"];
  workingDirectoryName = self->__workingDirectoryName;
  self->__workingDirectoryName = v10;

  __workingDirectoryParentPath = [(DSSnapshotFileManager *)self __workingDirectoryParentPath];
  _workingDirectoryName = [(DSSnapshotFileManager *)self _workingDirectoryName];
  v14 = [NSString stringWithFormat:@"%@%@", __workingDirectoryParentPath, _workingDirectoryName];
  workingDirectoryPath = self->__workingDirectoryPath;
  self->__workingDirectoryPath = v14;

  v16 = +[NSFileManager defaultManager];
  _workingDirectoryPath = [(DSSnapshotFileManager *)self _workingDirectoryPath];
  v40 = 0;
  v18 = [v16 createDirectoryAtPath:_workingDirectoryPath withIntermediateDirectories:1 attributes:0 error:&v40];
  v19 = v40;

  if (v18)
  {
    v21 = shared_filesystem_metadata_snapshot_service_log_handle(v20);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      _workingDirectoryPath2 = [(DSSnapshotFileManager *)self _workingDirectoryPath];
      *buf = 138412290;
      v42 = _workingDirectoryPath2;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Created working directory at %@", buf, 0xCu);
    }

    v39 = 0;
    v23 = [(DSSnapshotFileManager *)self __createSharedLogFileWithError:&v39];
    v24 = v39;
    v25 = v24;
    if (v23)
    {
      v38 = v24;
      v26 = [(DSSnapshotFileManager *)self __createSharedDirectoriesMapFileWithError:&v38];
      v27 = v38;

      if (v26)
      {
        [(DSSnapshotFileManager *)self __createReadmeFileWithError:0];
        v28 = 1;
LABEL_28:
        v25 = v27;
        goto LABEL_29;
      }

      if (!error)
      {
        v28 = 0;
        goto LABEL_28;
      }

      v25 = v27;
      goto LABEL_26;
    }

    if (error)
    {
LABEL_26:
      v36 = v25;
      v28 = 0;
      *error = v25;
      goto LABEL_29;
    }
  }

  else
  {
    _workingDirectoryPath3 = [(DSSnapshotFileManager *)self _workingDirectoryPath];
    v30 = [NSString stringWithFormat:@"Failed to create directory %@: %@", _workingDirectoryPath3, v19];

    v43[0] = NSUnderlyingErrorKey;
    v43[1] = NSLocalizedDescriptionKey;
    v44[0] = v19;
    v44[1] = v30;
    v31 = [NSDictionary dictionaryWithObjects:v44 forKeys:v43 count:2];
    v25 = [NSError errorWithDomain:@"com.apple.FilesystemMetadataSnapshot" code:65543 userInfo:v31];

    if (error)
    {
      v32 = v25;
      *error = v25;
    }

    v33 = fprintf(__stderrp, "%s\n", [v30 UTF8String]);
    if (v33 == -1)
    {
      v33 = __error();
      if ((byte_10006E50B & 1) == 0)
      {
        byte_10006E50B = 1;
        v34 = shared_filesystem_metadata_snapshot_service_log_handle(v33);
        if (os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
        {
          sub_10002FC44();
        }
      }
    }

    v35 = shared_filesystem_metadata_snapshot_service_log_handle(v33);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      sub_10002FCAC(v30);
    }
  }

  v28 = 0;
LABEL_29:

  return v28;
}

- (__sFILE)createFileForWritingWithName:(id)name error:(id *)error
{
  nameCopy = name;
  v7 = shared_filesystem_metadata_snapshot_service_log_handle(nameCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v25 = nameCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Creating file named %@", buf, 0xCu);
  }

  if (error)
  {
    *error = 0;
  }

  _workingDirectoryPath = [(DSSnapshotFileManager *)self _workingDirectoryPath];
  nameCopy = [NSString stringWithFormat:@"%@/%@", _workingDirectoryPath, nameCopy];
  v10 = fopen([nameCopy UTF8String], "w");

  if (v10)
  {
    __openFiles = [(DSSnapshotFileManager *)self __openFiles];
    [__openFiles addPointer:v10];
  }

  else
  {
    v12 = *__error();
    _workingDirectoryPath2 = [(DSSnapshotFileManager *)self _workingDirectoryPath];
    __openFiles = [NSString stringWithFormat:@"Failed to open output file at %@/%@: %s. Aborting.", _workingDirectoryPath2, nameCopy, strerror(v12)];

    v14 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v12 userInfo:0];
    v22[0] = NSUnderlyingErrorKey;
    v22[1] = NSLocalizedDescriptionKey;
    v23[0] = v14;
    v23[1] = __openFiles;
    v15 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:2];
    v16 = [NSError errorWithDomain:@"com.apple.FilesystemMetadataSnapshot" code:65543 userInfo:v15];

    if (error)
    {
      v17 = v16;
      *error = v16;
    }

    v18 = fprintf(-[DSSnapshotFileManager sharedLogFile](self, "sharedLogFile"), "%s\n", [__openFiles UTF8String]);
    if (v18 == -1)
    {
      v18 = __error();
      if ((byte_10006E50C & 1) == 0)
      {
        byte_10006E50C = 1;
        v19 = shared_filesystem_metadata_snapshot_service_log_handle(v18);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
        {
          sub_10002FC44();
        }
      }
    }

    v20 = shared_filesystem_metadata_snapshot_service_log_handle(v18);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_10002FCAC(__openFiles);
    }
  }

  return v10;
}

- (BOOL)writeFileForMetadata:(id)metadata error:(id *)error
{
  metadataCopy = metadata;
  if (error)
  {
    *error = 0;
  }

  v7 = [(DSSnapshotFileManager *)self fileURLForFileNamed:@"metadata.plist" error:error];
  v20 = 0;
  v8 = [metadataCopy writeToURL:v7 error:&v20];
  v9 = v20;
  v10 = v9;
  if (!v8 || v9)
  {
    sharedLogFile = [(DSSnapshotFileManager *)self sharedLogFile];
    localizedDescription = [v10 localizedDescription];
    uTF8String = [localizedDescription UTF8String];
    v14 = [metadataCopy description];
    LODWORD(sharedLogFile) = fprintf(sharedLogFile, "Failed to save metadata to file, %s:\n%s\n", uTF8String, [v14 UTF8String]);

    if (sharedLogFile == -1)
    {
      v15 = __error();
      if ((byte_10006E50D & 1) == 0)
      {
        byte_10006E50D = 1;
        v16 = shared_filesystem_metadata_snapshot_service_log_handle(v15);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
        {
          sub_10002FC44();
        }
      }
    }

    v17 = shared_filesystem_metadata_snapshot_service_log_handle(v15);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_10002FD28(v10, metadataCopy);
    }

    if (error)
    {
      v18 = v10;
      *error = v10;
    }
  }

  return v8;
}

- (id)fileURLForFileNamed:(id)named error:(id *)error
{
  namedCopy = named;
  v7 = namedCopy;
  if (error)
  {
    *error = 0;
  }

  if (namedCopy)
  {
    _workingDirectoryPath = [(DSSnapshotFileManager *)self _workingDirectoryPath];
    v9 = [NSString stringWithFormat:@"%@/%@", _workingDirectoryPath, v7];
    v10 = [NSURL fileURLWithPath:v9 isDirectory:0];

    v12 = shared_filesystem_metadata_snapshot_service_log_handle(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v18 = v7;
      v19 = 2112;
      v20 = v10;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "File URL for file named %@: %@", buf, 0x16u);
    }
  }

  else
  {
    v12 = [NSString stringWithFormat:@"Invalid name for file URL: %@", 0];
    v21 = NSLocalizedDescriptionKey;
    v22 = v12;
    v13 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    v14 = [NSError errorWithDomain:@"com.apple.FilesystemMetadataSnapshot" code:65543 userInfo:v13];

    if (error)
    {
      v15 = v14;
      *error = v14;
    }

    v10 = 0;
  }

  return v10;
}

- (BOOL)cleanupWithError:(id *)error
{
  v5 = shared_filesystem_metadata_snapshot_service_log_handle([(DSSnapshotFileManager *)self __closeFiles]);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    _workingDirectoryPath = [(DSSnapshotFileManager *)self _workingDirectoryPath];
    *buf = 138412290;
    v19 = _workingDirectoryPath;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Deleting snapshot directory at %@", buf, 0xCu);
  }

  v7 = +[NSFileManager defaultManager];
  _workingDirectoryPath2 = [(DSSnapshotFileManager *)self _workingDirectoryPath];
  v9 = [v7 removeItemAtPath:_workingDirectoryPath2 error:error];

  if ((v9 & 1) == 0)
  {
    v10 = __stderrp;
    _workingDirectoryPath3 = [(DSSnapshotFileManager *)self _workingDirectoryPath];
    uTF8String = [_workingDirectoryPath3 UTF8String];
    localizedDescription = [*error localizedDescription];
    LODWORD(v10) = fprintf(v10, "Failed to delete directory %s: %s\n", uTF8String, [localizedDescription UTF8String]);

    if (v10 == -1)
    {
      v14 = __error();
      if ((byte_10006E50E & 1) == 0)
      {
        byte_10006E50E = 1;
        v15 = shared_filesystem_metadata_snapshot_service_log_handle(v14);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
        {
          sub_10002FC44();
        }
      }
    }

    v16 = shared_filesystem_metadata_snapshot_service_log_handle(v14);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_10002FDE0(self, error);
    }
  }

  return v9;
}

- (void)dealloc
{
  [(DSSnapshotFileManager *)self __closeFiles];
  v3.receiver = self;
  v3.super_class = DSSnapshotFileManager;
  [(DSSnapshotFileManager *)&v3 dealloc];
}

- (id)initForSnapshotRequest:(id)request
{
  requestCopy = request;
  if (requestCopy)
  {
    v14.receiver = self;
    v14.super_class = DSSnapshotFileManager;
    v5 = [(DSSnapshotFileManager *)&v14 init];
    v6 = v5;
    if (v5)
    {
      v7 = objc_storeWeak(&v5->__snapshotRequest, requestCopy);
      options = [requestCopy options];
      v9 = [options objectForKeyedSubscript:@"FilesystemMetadatSnapshotOptionShouldHashVolumeListings"];
      v6->_shouldHashVolumeListings = [v9 BOOLValue];

      v10 = [[NSPointerArray alloc] initWithOptions:2];
      openFiles = v6->___openFiles;
      v6->___openFiles = v10;
    }

    self = v6;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (DSSnapshotRequest)_snapshotRequest
{
  WeakRetained = objc_loadWeakRetained(&self->__snapshotRequest);

  return WeakRetained;
}

@end