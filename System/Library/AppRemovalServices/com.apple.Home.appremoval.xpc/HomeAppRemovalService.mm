@interface HomeAppRemovalService
- (id)_appSupportDirectoryURL;
- (id)_deleteAllUserDefaults;
- (void)removeAppWithReply:(id)reply;
@end

@implementation HomeAppRemovalService

- (void)removeAppWithReply:(id)reply
{
  replyCopy = reply;
  v5 = os_log_appremoval(replyCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = @"com.apple.Home";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Removing User Defaults for %@", buf, 0xCu);
  }

  _deleteAllUserDefaults = [(HomeAppRemovalService *)self _deleteAllUserDefaults];
  if (_deleteAllUserDefaults)
  {
    v7 = _deleteAllUserDefaults;
    v8 = os_log_appremoval(_deleteAllUserDefaults);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v17 = @"com.apple.Home";
      v18 = 2112;
      v19 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Error removing user defaults %@: %@", buf, 0x16u);
    }

    replyCopy[2](replyCopy, v7);
  }

  else
  {
    _appSupportDirectoryURL = [(HomeAppRemovalService *)self _appSupportDirectoryURL];
    v10 = _appSupportDirectoryURL;
    if (!_appSupportDirectoryURL)
    {
      goto LABEL_14;
    }

    v11 = os_log_appremoval(_appSupportDirectoryURL);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v17 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Removing App Support Directory @ %@", buf, 0xCu);
    }

    v12 = +[NSFileManager defaultManager];
    v15 = 0;
    [v12 removeItemAtURL:v10 error:&v15];
    v7 = v15;

    if (v7)
    {
      v14 = os_log_appremoval(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v17 = v10;
        v18 = 2112;
        v19 = v7;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Error removing App Support Directory '%@': %@", buf, 0x16u);
      }

      replyCopy[2](replyCopy, v7);
    }

    else
    {
LABEL_14:
      replyCopy[2](replyCopy, 0);
      v7 = 0;
    }
  }
}

- (id)_deleteAllUserDefaults
{
  v2 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.Home"];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  dictionaryRepresentation = [v2 dictionaryRepresentation];
  allKeys = [dictionaryRepresentation allKeys];

  v5 = [allKeys countByEnumeratingWithState:&v14 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      v8 = 0;
      do
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(allKeys);
        }

        v9 = *(*(&v14 + 1) + 8 * v8);
        v10 = os_log_appremoval(v5);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v21 = v9;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Removing User Default key %@", buf, 0xCu);
        }

        v5 = [v2 removeObjectForKey:v9];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v5 = [allKeys countByEnumeratingWithState:&v14 objects:v22 count:16];
      v6 = v5;
    }

    while (v5);
  }

  if ([v2 synchronize])
  {
    v11 = 0;
  }

  else
  {
    v18[0] = NSLocalizedDescriptionKey;
    v18[1] = @"BundleId";
    v19[0] = @"Unable to synchronize NSUserDefaults for AppRemoval.";
    v19[1] = @"com.apple.Home";
    v12 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:2];
    v11 = [NSError errorWithDomain:@"com.apple.Home.appremoval.errorDomain" code:-1 userInfo:v12];
  }

  return v11;
}

- (id)_appSupportDirectoryURL
{
  v2 = NSSearchPathForDirectoriesInDomains(NSApplicationSupportDirectory, 1uLL, 1);
  firstObject = [v2 firstObject];
  v4 = [firstObject stringByAppendingPathComponent:@"com.apple.Home"];
  v5 = [NSURL fileURLWithPath:v4 isDirectory:1];
  v6 = 0;
  if ([v5 checkResourceIsReachableAndReturnError:0])
  {
    v6 = v5;
  }

  return v6;
}

@end