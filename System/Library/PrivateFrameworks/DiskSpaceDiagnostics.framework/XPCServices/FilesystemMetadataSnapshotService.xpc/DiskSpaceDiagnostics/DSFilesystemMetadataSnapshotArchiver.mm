@interface DSFilesystemMetadataSnapshotArchiver
+ (BOOL)compressSnapshotWithName:(id)name atPath:(id)path withLogFile:(__sFILE *)file archiveName:(id *)archiveName;
@end

@implementation DSFilesystemMetadataSnapshotArchiver

+ (BOOL)compressSnapshotWithName:(id)name atPath:(id)path withLogFile:(__sFILE *)file archiveName:(id *)archiveName
{
  nameCopy = name;
  pathCopy = path;
  v11 = fprintf(file, "Compressing %s at %s\n", [nameCopy UTF8String], objc_msgSend(pathCopy, "UTF8String"));
  if (v11 == -1)
  {
    v11 = __error();
    if ((byte_10006E538 & 1) == 0)
    {
      byte_10006E538 = 1;
      v12 = shared_filesystem_metadata_snapshot_service_log_handle(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        sub_10002FC44();
      }
    }
  }

  v13 = shared_filesystem_metadata_snapshot_service_log_handle(v11);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = nameCopy;
    uTF8String = [nameCopy UTF8String];
    v16 = pathCopy;
    *buf = 136315394;
    *&buf[4] = uTF8String;
    *&buf[12] = 2080;
    *&buf[14] = [pathCopy UTF8String];
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Compressing %s at %s", buf, 0x16u);
  }

  v17 = pathCopy;
  chdir([pathCopy UTF8String]);
  fflush(file);
  *&v57 = 0;
  nameCopy = [NSString stringWithFormat:@"%@.tgz", nameCopy];
  v19 = nameCopy;
  if (archiveName)
  {
    v20 = nameCopy;
    *archiveName = v19;
  }

  v57 = 0u;
  v58 = 0u;
  memset(buf, 0, sizeof(buf));
  v21 = v19;
  *&buf[8] = [v19 UTF8String];
  v22 = nameCopy;
  uTF8String2 = [nameCopy UTF8String];
  fileCopy = __stderrp;
  if (file)
  {
    fileCopy = file;
  }

  *&buf[16] = uTF8String2;
  *&buf[24] = fileCopy;
  v25 = shared_filesystem_metadata_snapshot_service_log_handle(uTF8String2);
  v26 = v57;
  *&v57 = v25;

  archive_snapshot_directory(buf);
  if (*buf)
  {
    v27 = fprintf(file, "Failed to compress %s\n", *&buf[16]);
    if (v27 == -1)
    {
      v27 = __error();
      if ((byte_10006E539 & 1) == 0)
      {
        byte_10006E539 = 1;
        v28 = shared_filesystem_metadata_snapshot_service_log_handle(v27);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
        {
          sub_10002FC44();
        }
      }
    }

    v29 = shared_filesystem_metadata_snapshot_service_log_handle(v27);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      sub_100030080(&buf[16], v29);
    }

    v30 = +[NSFileManager defaultManager];
    v31 = [NSString stringWithFormat:@"%@/%@", pathCopy, v19];
    if ([v30 fileExistsAtPath:v31])
    {
      v32 = fprintf(file, "Deleting failed compressed archive %s\n", *&buf[8]);
      if (v32 == -1)
      {
        v32 = __error();
        if ((byte_10006E53A & 1) == 0)
        {
          byte_10006E53A = 1;
          v33 = shared_filesystem_metadata_snapshot_service_log_handle(v32);
          if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
          {
            sub_10002FC44();
          }
        }
      }

      v34 = shared_filesystem_metadata_snapshot_service_log_handle(v32);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        *v52 = 136315138;
        v53 = *&buf[8];
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Deleting failed compressed archive %s", v52, 0xCu);
      }

      v51 = 0;
      v35 = [v30 removeItemAtPath:v31 error:&v51];
      v36 = v51;
      v37 = v36;
      if ((v35 & 1) == 0)
      {
        v38 = *&buf[8];
        localizedDescription = [v36 localizedDescription];
        v40 = localizedDescription;
        v41 = fprintf(file, "Failed to delete compressed archive %s: %s\n", v38, [localizedDescription UTF8String]) == -1;

        if (v41)
        {
          v42 = __error();
          if ((byte_10006E53B & 1) == 0)
          {
            byte_10006E53B = 1;
            v43 = shared_filesystem_metadata_snapshot_service_log_handle(v42);
            if (os_log_type_enabled(v43, OS_LOG_TYPE_FAULT))
            {
              sub_10002FC44();
            }
          }
        }

        v44 = shared_filesystem_metadata_snapshot_service_log_handle(v42);
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          v47 = *&buf[8];
          localizedDescription2 = [v37 localizedDescription];
          v49 = localizedDescription2;
          uTF8String3 = [localizedDescription2 UTF8String];
          *v52 = 136315394;
          v53 = v47;
          v54 = 2080;
          v55 = uTF8String3;
          _os_log_error_impl(&_mh_execute_header, v44, OS_LOG_TYPE_ERROR, "Failed to delete compressed archive %s: %s", v52, 0x16u);
        }
      }
    }

    v45 = *buf == 0;
  }

  else
  {
    v45 = 1;
  }

  return v45;
}

@end