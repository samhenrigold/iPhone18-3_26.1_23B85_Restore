@interface BLBooksDEExtensionProvider
- (id)_fileDateSuffix;
- (id)attachmentFromURL:(id)l withName:(id)name archiveFile:(BOOL)file fixPermission:(BOOL)permission;
- (void)addAttachmentFromURL:(id)l withName:(id)name archiveFile:(BOOL)file toArray:(id)array;
- (void)appendDatabaseAttachmentsFromURLs:(id)ls hasSqliteSuffix:(BOOL)suffix toArray:(id)array;
@end

@implementation BLBooksDEExtensionProvider

- (void)appendDatabaseAttachmentsFromURLs:(id)ls hasSqliteSuffix:(BOOL)suffix toArray:(id)array
{
  lsCopy = ls;
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x3032000000;
  v14[3] = sub_100000DAC;
  v14[4] = sub_100000DBC;
  v15 = @"*.sqlite";
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100000DC4;
  v10[3] = &unk_100008200;
  suffixCopy = suffix;
  v12 = v14;
  v10[4] = self;
  arrayCopy = array;
  v11 = arrayCopy;
  [lsCopy enumerateKeysAndObjectsUsingBlock:v10];

  _Block_object_dispose(v14, 8);
}

- (id)attachmentFromURL:(id)l withName:(id)name archiveFile:(BOOL)file fixPermission:(BOOL)permission
{
  permissionCopy = permission;
  fileCopy = file;
  lCopy = l;
  nameCopy = name;
  stringByDeletingPathExtension = [nameCopy stringByDeletingPathExtension];
  _fileDateSuffix = [(BLBooksDEExtensionProvider *)self _fileDateSuffix];
  v13 = [stringByDeletingPathExtension stringByAppendingString:_fileDateSuffix];
  pathExtension = [lCopy pathExtension];
  v15 = [v13 stringByAppendingPathExtension:pathExtension];

  v16 = NSTemporaryDirectory();
  v53[0] = v16;
  v53[1] = v15;
  v17 = [NSArray arrayWithObjects:v53 count:2];
  v18 = [NSURL fileURLWithPathComponents:v17];

  v19 = +[NSFileManager defaultManager];
  v43 = 0;
  v20 = [v19 copyItemAtURL:lCopy toURL:v18 error:&v43];
  v21 = v43;

  if (v20)
  {
    if (permissionCopy)
    {
      memset(&v52, 0, sizeof(v52));
      path = [v18 path];
      v24 = stat([path UTF8String], &v52);

      if (v24)
      {
        v26 = BLBooksDiagnosticExtensionLog(v25);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          path2 = [v18 path];
          v28 = __error();
          v29 = strerror(*v28);
          *buf = 138412546;
          v45 = path2;
          v46 = 2080;
          *v47 = v29;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "Could not stat %@: %s", buf, 0x16u);
        }

        v30 = v21;
      }

      else
      {
        v50 = NSFilePosixPermissions;
        v40 = v52.st_mode | 0x1A4;
        v33 = [NSNumber numberWithUnsignedShort:?];
        v51 = v33;
        v26 = [NSDictionary dictionaryWithObjects:&v51 forKeys:&v50 count:1];

        v34 = +[NSFileManager defaultManager];
        path3 = [v18 path];
        v42 = v21;
        [v34 setAttributes:v26 ofItemAtPath:path3 error:&v42];
        v30 = v42;

        if (v30)
        {
          v37 = BLBooksDiagnosticExtensionLog(v36);
          if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
          {
            *buf = 138413058;
            v45 = nameCopy;
            v46 = 1024;
            *v47 = v40;
            *&v47[4] = 2112;
            *&v47[6] = v18;
            v48 = 2112;
            v49 = v30;
            _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "Failed to set permission %@ to (%3o), exportURL: %@ %@", buf, 0x26u);
          }
        }
      }

      v21 = v30;
    }

    if (fileCopy)
    {
      v38 = [DEArchiver archiveFile:v18 deleteOriginal:1];
      v32 = [DEAttachmentItem attachmentWithPathURL:v38];
    }

    else
    {
      v32 = [DEAttachmentItem attachmentWithPathURL:v18];
    }
  }

  else
  {
    v31 = BLBooksDiagnosticExtensionLog(v22);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v52.st_dev = 138412802;
      *&v52.st_mode = nameCopy;
      WORD2(v52.st_ino) = 2112;
      *(&v52.st_ino + 6) = lCopy;
      HIWORD(v52.st_gid) = 2112;
      *&v52.st_rdev = v21;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "Failed to copy %@, sourceURL: %@ %@", &v52, 0x20u);
    }

    v32 = 0;
  }

  return v32;
}

- (void)addAttachmentFromURL:(id)l withName:(id)name archiveFile:(BOOL)file toArray:(id)array
{
  fileCopy = file;
  arrayCopy = array;
  v10 = [(BLBooksDEExtensionProvider *)self attachmentFromURL:l withName:name archiveFile:fileCopy];
  if (v10)
  {
    [arrayCopy addObject:v10];
  }
}

- (id)_fileDateSuffix
{
  v2 = objc_alloc_init(NSDateFormatter);
  [v2 setDateFormat:@"-yyyy.MM.dd_HH-mm"];
  v3 = +[NSDate date];
  v4 = [v2 stringFromDate:v3];

  return v4;
}

@end