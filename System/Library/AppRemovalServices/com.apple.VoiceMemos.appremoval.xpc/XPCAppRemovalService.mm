@interface XPCAppRemovalService
- (id)_deleteAllUserDefaults;
- (void)removeAppWithReply:(id)reply;
@end

@implementation XPCAppRemovalService

- (void)removeAppWithReply:(id)reply
{
  replyCopy = reply;
  v5 = sub_100000D2C(replyCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_100001318();
  }

  _deleteAllUserDefaults = [(XPCAppRemovalService *)self _deleteAllUserDefaults];
  v7 = sub_100000D2C(_deleteAllUserDefaults);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
  if (_deleteAllUserDefaults)
  {
    if (v8)
    {
      sub_10000139C();
    }

    replyCopy[2](replyCopy, _deleteAllUserDefaults);
  }

  else
  {
    if (v8)
    {
      sub_100001410();
    }

    v9 = +[RCSSavedRecordingService sharedService];
    if (v9 || (v15[0] = NSLocalizedDescriptionKey, v15[1] = @"BundleId", v16[0] = @"Unable to connect to RCSSavedRecordingService.  Aborting.", v16[1] = RCVoiceMemosBundleID, [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:2], v10 = objc_claimAutoreleasedReturnValue(), [NSError errorWithDomain:@"com.apple.VoiceMemos.appremoval.errorDomain" code:-1 userInfo:v10], _deleteAllUserDefaults = objc_claimAutoreleasedReturnValue(), v10, !_deleteAllUserDefaults))
    {
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_100001034;
      v13[3] = &unk_100004160;
      v14 = replyCopy;
      [v9 removeAllUserDataWithCompletion:v13];

      _deleteAllUserDefaults = 0;
    }

    else
    {
      v12 = sub_100000D2C(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_10000139C();
      }

      replyCopy[2](replyCopy, _deleteAllUserDefaults);
    }
  }
}

- (id)_deleteAllUserDefaults
{
  v2 = +[NSUserDefaults standardUserDefaults];
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
        v10 = sub_100000D2C(v5);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v21 = v9;
          _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Removing User Default key %@", buf, 0xCu);
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
    v19[1] = RCVoiceMemosBundleID;
    v12 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:2];
    v11 = [NSError errorWithDomain:@"com.apple.VoiceMemos.appremoval.errorDomain" code:-1 userInfo:v12];
  }

  return v11;
}

@end