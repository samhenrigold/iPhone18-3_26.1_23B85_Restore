@interface MSDIPAUninstallOperation
- (BOOL)_IXUninstallAppIPA;
- (id)methodSelectors;
@end

@implementation MSDIPAUninstallOperation

- (id)methodSelectors
{
  v2 = [NSValue valueWithPointer:"_IXUninstallAppIPA"];
  v3 = [NSArray arrayWithObjects:v2, 0];

  return v3;
}

- (BOOL)_IXUninstallAppIPA
{
  context = [(MSDOperation *)self context];
  identifier = [context identifier];

  v5 = sub_100063A54(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = identifier;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Uninstallig app: %{public}@", &buf, 0xCu);
  }

  v6 = dispatch_semaphore_create(0);
  *&buf = 0;
  *(&buf + 1) = &buf;
  v27 = 0x2020000000;
  v28 = 0;
  v7 = objc_alloc_init(IXUninstallOptions);
  [v7 setRequestUserConfirmation:0];
  [v7 setWaitForDeletion:0];
  [v7 setIgnoreRestrictions:1];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100084564;
  v22[3] = &unk_10016B940;
  v8 = identifier;
  v23 = v8;
  p_buf = &buf;
  v9 = v6;
  v24 = v9;
  [IXAppInstallCoordinator uninstallAppWithBundleID:v8 options:v7 completion:v22];
  v10 = dispatch_time(0, 300000000000);
  v11 = dispatch_semaphore_wait(v9, v10);
  if (v11)
  {
    v12 = sub_100063A54(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Timed out waiting for app removal to finish.", v21, 2u);
    }
  }

  v13 = *(*(&buf + 1) + 24);
  if (v13 == 1)
  {
    v14 = +[MSDCache sharedInstance];
    v15 = [v14 containerExist:v8];

    if (v15)
    {
      v16 = +[MSDCache sharedInstance];
      v17 = [v16 deleteContainer:v8];

      if ((v17 & 1) == 0)
      {
        v19 = sub_100063A54(v18);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          sub_1000DDAF8(v8, v19);
        }
      }
    }
  }

  _Block_object_dispose(&buf, 8);
  return v13;
}

@end