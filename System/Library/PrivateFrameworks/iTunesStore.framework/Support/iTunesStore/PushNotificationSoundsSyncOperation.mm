@interface PushNotificationSoundsSyncOperation
- (BOOL)_downloadSoundFileWithURL:(id)l name:(id)name cache:(id)cache error:(id *)error;
- (BOOL)_downloadSoundFiles:(id)files error:(id *)error;
- (id)_newSoundFileURLCache;
- (void)run;
@end

@implementation PushNotificationSoundsSyncOperation

- (void)run
{
  v17 = 0;
  v3 = [SSURLBagContext contextWithBagType:0];
  if (([(PushNotificationSoundsSyncOperation *)self loadURLBagWithContext:v3 returningError:&v17]& 1) != 0)
  {
    v4 = [objc_msgSend(+[ISURLBagCache sharedCache](ISURLBagCache "sharedCache")];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [v4 objectForKey:@"sound-files"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }

    v15 = [(PushNotificationSoundsSyncOperation *)self _downloadSoundFiles:v6 error:&v17];
  }

  else
  {
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
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v9;
    }

    else
    {
      v9 &= 2u;
    }

    if (v9)
    {
      v11 = objc_opt_class();
      v18 = 138412546;
      v19 = v11;
      v20 = 2112;
      v21 = v17;
      v12 = _os_log_send_and_compose_impl(v9, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "%@: Could not load URL bag: %@", &v18, 22);
      if (v12)
      {
        v13 = v12;
        v14 = [NSString stringWithCString:v12 encoding:4];
        free(v13);
        v16 = v14;
        SSFileLog();
      }
    }

    v15 = 0;
  }

  [(PushNotificationSoundsSyncOperation *)self setError:v17, v16];
  [(PushNotificationSoundsSyncOperation *)self setSuccess:v15];
}

- (BOOL)_downloadSoundFileWithURL:(id)l name:(id)name cache:(id)cache error:(id *)error
{
  v53 = 0;
  v10 = [[NSURLRequest alloc] initWithURL:l];
  cacheCopy = cache;
  v11 = [cache cachedResponseForRequest:v10];
  if (!v11)
  {
    goto LABEL_13;
  }

  [objc_msgSend(v11 "response")];
  v13 = v12;
  v14 = +[SSLogConfig sharedDaemonConfig];
  if (!v14)
  {
    v14 = +[SSLogConfig sharedConfig];
  }

  LODWORD(v15) = [v14 shouldLog];
  if ([v14 shouldLogToDisk])
  {
    LODWORD(v15) = v15 | 2;
  }

  oSLogObject = [v14 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
  {
    v15 = v15;
  }

  else
  {
    v15 &= 2u;
  }

  if (v15)
  {
    v17 = objc_opt_class();
    +[NSDate timeIntervalSinceReferenceDate];
    v54 = 138412546;
    v55 = v17;
    v56 = 2048;
    v57 = v13 - v18;
    v19 = _os_log_send_and_compose_impl(v15, 0, 0, 0, &_mh_execute_header, oSLogObject, 1, "%@: Sound file expires in %.2f seconds", &v54, 22);
    if (v19)
    {
      v20 = v19;
      v21 = [NSString stringWithCString:v19 encoding:4];
      free(v20);
      v48 = v21;
      SSFileLog();
    }
  }

  +[NSDate timeIntervalSinceReferenceDate];
  if (v13 >= v22)
  {
    LOBYTE(v34) = 1;
  }

  else
  {
LABEL_13:
    v23 = objc_alloc_init(ISStoreURLOperation);
    v24 = [[SSMutableURLRequestProperties alloc] initWithURL:l];
    [v24 setCachePolicy:1];
    [v23 setRequestProperties:v24];

    v25 = objc_alloc_init(ISHashedDownloadProvider);
    [v25 setLocalFilePath:{objc_msgSend(+[PushNotificationController soundFilesDirectoryPath](PushNotificationController, "soundFilesDirectoryPath"), "stringByAppendingPathComponent:", name)}];
    [v25 resetStream];
    v26 = +[SSLogConfig sharedDaemonConfig];
    if (!v26)
    {
      v26 = +[SSLogConfig sharedConfig];
    }

    LODWORD(v27) = [v26 shouldLog];
    if ([v26 shouldLogToDisk])
    {
      LODWORD(v27) = v27 | 2;
    }

    oSLogObject2 = [v26 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_INFO))
    {
      v27 = v27;
    }

    else
    {
      v27 &= 2u;
    }

    if (v27)
    {
      v29 = objc_opt_class();
      localFilePath = [v25 localFilePath];
      v54 = 138412802;
      v55 = v29;
      v56 = 2112;
      v57 = *&l;
      v58 = 2112;
      v59 = localFilePath;
      LODWORD(v50) = 32;
      v31 = _os_log_send_and_compose_impl(v27, 0, 0, 0, &_mh_execute_header, oSLogObject2, 1, "%@: Downloading sound file %@ to %@", &v54, v50);
      if (v31)
      {
        v32 = v31;
        v33 = [NSString stringWithCString:v31 encoding:4];
        free(v32);
        v48 = v33;
        SSFileLog();
      }
    }

    [v23 setDataProvider:{v25, v48}];

    v34 = [(PushNotificationSoundsSyncOperation *)self runSubOperation:v23 returningError:&v53];
    if (v34)
    {
      v35 = [[NSMutableData alloc] initWithLength:1];
      v36 = [[NSCachedURLResponse alloc] initWithResponse:objc_msgSend(v23 data:{"response"), v35}];
      v37 = +[SSLogConfig sharedDaemonConfig];
      if (!v37)
      {
        v37 = +[SSLogConfig sharedConfig];
      }

      LODWORD(v38) = [v37 shouldLog];
      if ([v37 shouldLogToDisk])
      {
        LODWORD(v38) = v38 | 2;
      }

      oSLogObject3 = [v37 OSLogObject];
      if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_INFO))
      {
        v38 = v38;
      }

      else
      {
        v38 &= 2u;
      }

      if (v38)
      {
        v40 = objc_opt_class();
        [objc_msgSend(v23 "response")];
        v42 = v41;
        +[NSDate timeIntervalSinceReferenceDate];
        v54 = 138412546;
        v55 = v40;
        v56 = 2048;
        v57 = v42 - v43;
        LODWORD(v50) = 22;
        v44 = _os_log_send_and_compose_impl(v38, 0, 0, 0, &_mh_execute_header, oSLogObject3, 1, "%@: Cache sound file expiring in %.2f seconds", &v54, v50);
        if (v44)
        {
          v45 = v44;
          v46 = [NSString stringWithCString:v44 encoding:4];
          free(v45);
          v49 = v46;
          SSFileLog();
        }
      }

      [cacheCopy storeCachedResponse:v36 forRequest:{v10, v49}];
      [cacheCopy saveMemoryCacheToDisk];
    }
  }

  if (error)
  {
    *error = v53;
  }

  return v34;
}

- (BOOL)_downloadSoundFiles:(id)files error:(id *)error
{
  v6 = objc_alloc_init(NSFileManager);
  v7 = +[PushNotificationController soundFilesDirectoryPath];
  [v6 createDirectoryAtPath:v7 withIntermediateDirectories:1 attributes:0 error:0];
  v8 = objc_alloc_init(NSMutableSet);
  v9 = [v6 contentsOfDirectoryAtPath:v7 error:0];
  if (v9)
  {
    [v8 addObjectsFromArray:v9];
  }

  filesCopy = files;
  v10 = +[SSLogConfig sharedDaemonConfig];
  if (!v10)
  {
    v10 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v10 shouldLog];
  if ([v10 shouldLogToDisk])
  {
    LODWORD(v12) = shouldLog | 2;
  }

  else
  {
    LODWORD(v12) = shouldLog;
  }

  oSLogObject = [v10 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
  {
    v12 = v12;
  }

  else
  {
    v12 &= 2u;
  }

  if (v12)
  {
    *v62 = 138412546;
    *&v62[4] = objc_opt_class();
    v63 = 2048;
    v64 = [filesCopy count];
    v14 = _os_log_send_and_compose_impl(v12, 0, 0, 0, &_mh_execute_header, oSLogObject, 1, "%@: Loading %lu sound files", v62, 22);
    if (v14)
    {
      v15 = v14;
      v16 = [NSString stringWithCString:v14 encoding:4];
      free(v15);
      v44 = v16;
      SSFileLog();
    }
  }

  v17 = filesCopy;
  if ([filesCopy count])
  {
    _newSoundFileURLCache = [(PushNotificationSoundsSyncOperation *)self _newSoundFileURLCache];
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v18 = [filesCopy countByEnumeratingWithState:&v56 objects:v61 count:16];
    if (v18)
    {
      v19 = v18;
      v49 = 0;
      v20 = *v57;
      v50 = 1;
      do
      {
        for (i = 0; i != v19; i = i + 1)
        {
          if (*v57 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v56 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v23 = [v22 objectForKey:@"name"];
            v24 = [v22 objectForKey:@"url"];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v25 = [[NSURL alloc] initWithString:v24];
                if (v25)
                {
                  v26 = v25;
                  *v62 = 0;
                  v50 &= [(PushNotificationSoundsSyncOperation *)self _downloadSoundFileWithURL:v25 name:v23 cache:_newSoundFileURLCache error:v62];
                  v27 = v49;
                  if (!v49)
                  {
                    v27 = *v62;
                  }

                  v49 = v27;
                  [v8 removeObject:v23];
                }
              }
            }

            v17 = filesCopy;
          }
        }

        v19 = [v17 countByEnumeratingWithState:&v56 objects:v61 count:16];
      }

      while (v19);
    }

    else
    {
      v49 = 0;
      LOBYTE(v50) = 1;
    }

    v29 = v50;
    v28 = v49;
  }

  else
  {
    v28 = 0;
    v29 = 1;
  }

  v30 = +[SSLogConfig sharedDaemonConfig];
  if (!v30)
  {
    v30 = +[SSLogConfig sharedConfig];
  }

  shouldLog2 = [v30 shouldLog];
  if ([v30 shouldLogToDisk])
  {
    LODWORD(v32) = shouldLog2 | 2;
  }

  else
  {
    LODWORD(v32) = shouldLog2;
  }

  oSLogObject2 = [v30 OSLogObject];
  if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_INFO))
  {
    v32 = v32;
  }

  else
  {
    v32 &= 2u;
  }

  if (v32)
  {
    v34 = objc_opt_class();
    v35 = [v8 count];
    *v62 = 138412546;
    *&v62[4] = v34;
    v63 = 2048;
    v64 = v35;
    LODWORD(v46) = 22;
    v36 = _os_log_send_and_compose_impl(v32, 0, 0, 0, &_mh_execute_header, oSLogObject2, 1, "%@: Removing %lu dead sound files", v62, v46);
    if (v36)
    {
      v37 = v36;
      v38 = [NSString stringWithCString:v36 encoding:4];
      free(v37);
      v45 = v38;
      SSFileLog();
    }
  }

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v39 = [v8 countByEnumeratingWithState:&v52 objects:v60 count:{16, v45}];
  if (v39)
  {
    v40 = v39;
    v41 = *v53;
    do
    {
      for (j = 0; j != v40; j = j + 1)
      {
        if (*v53 != v41)
        {
          objc_enumerationMutation(v8);
        }

        [v6 removeItemAtPath:objc_msgSend(v7 error:{"stringByAppendingPathComponent:", *(*(&v52 + 1) + 8 * j)), 0}];
      }

      v40 = [v8 countByEnumeratingWithState:&v52 objects:v60 count:16];
    }

    while (v40);
  }

  if (error)
  {
    *error = v28;
  }

  return v29 & 1;
}

- (id)_newSoundFileURLCache
{
  v2 = objc_alloc_init(ISURLCacheConfiguration);
  [v2 setPersistentIdentifier:@"com.apple.itunesstored.APNS_Sounds_Cache"];
  [v2 setDiskCapacity:10485760];
  [v2 setMemoryCapacity:0x100000];
  v3 = [[ISURLCache alloc] initWithCacheConfiguration:v2];

  return v3;
}

@end