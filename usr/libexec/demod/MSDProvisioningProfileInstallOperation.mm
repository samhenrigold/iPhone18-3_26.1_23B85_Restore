@interface MSDProvisioningProfileInstallOperation
- (BOOL)_installProvisioningProfiles;
- (BOOL)_installProvisioningProfilesInBackup;
- (BOOL)_installStandaloneProvisioningProfile;
- (id)methodSelectors;
@end

@implementation MSDProvisioningProfileInstallOperation

- (id)methodSelectors
{
  v2 = [NSValue valueWithPointer:"_installProvisioningProfiles"];
  v3 = [NSArray arrayWithObjects:v2, 0];

  return v3;
}

- (BOOL)_installProvisioningProfiles
{
  context = [(MSDOperation *)self context];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {

    return [(MSDProvisioningProfileInstallOperation *)self _installProvisioningProfilesInBackup];
  }

  else
  {
    context2 = [(MSDOperation *)self context];
    objc_opt_class();
    v6 = objc_opt_isKindOfClass();

    if (v6)
    {

      return [(MSDProvisioningProfileInstallOperation *)self _installStandaloneProvisioningProfile];
    }

    else
    {
      v8 = sub_100063A54(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Unrecognized operation context.", v10, 2u);
      }

      return 0;
    }
  }
}

- (BOOL)_installProvisioningProfilesInBackup
{
  context = [(MSDOperation *)self context];
  v3 = +[NSFileManager defaultManager];
  secondaryStagingRootPath = [context secondaryStagingRootPath];
  v5 = [secondaryStagingRootPath stringByAppendingPathComponent:@"/var/MobileDevice/ProvisioningProfiles"];
  v6 = sub_100063A54(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v38 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Provisioning profile directory: %{public}@", buf, 0xCu);
  }

  v36 = 0;
  v7 = [v3 contentsOfDirectoryAtPath:v5 error:&v36];
  v8 = v36;
  v9 = v8;
  if (!v7)
  {
    obj = sub_100063A54(v8);
    if (os_log_type_enabled(obj, OS_LOG_TYPE_ERROR))
    {
      sub_1000E04AC(v9);
    }

    goto LABEL_26;
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = v7;
  v10 = [obj countByEnumeratingWithState:&v32 objects:v41 count:16];
  if (!v10)
  {
LABEL_26:
    v23 = 1;
    goto LABEL_27;
  }

  v11 = v10;
  v25 = v9;
  v26 = v7;
  v27 = secondaryStagingRootPath;
  v28 = v3;
  v29 = context;
  v12 = *v33;
  v30 = 1;
  do
  {
    for (i = 0; i != v11; i = i + 1)
    {
      if (*v33 != v12)
      {
        objc_enumerationMutation(obj);
      }

      v14 = *(*(&v32 + 1) + 8 * i);
      if (([v14 hasPrefix:@"."] & 1) == 0)
      {
        v15 = v5;
        v16 = [v5 stringByAppendingPathComponent:v14];
        v17 = sub_100063A54(v16);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v38 = v16;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Installing provisioning profile: %{public}@", buf, 0xCu);
        }

        v18 = MISProfileCreateWithFile();
        if (v18)
        {
          v19 = v18;
          v20 = MISInstallProvisioningProfile();
          if (v20)
          {
            v21 = MISCopyErrorStringForErrorCode();
            v22 = sub_100063A54(v21);
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543618;
              v38 = v16;
              v39 = 2114;
              v40 = v21;
              _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Failed to install %{public}@ with error %{public}@", buf, 0x16u);
            }

            v30 = 0;
          }

          else
          {
            v21 = sub_100063A54(v20);
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              v38 = v16;
              _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Install success for %{public}@", buf, 0xCu);
            }
          }

          CFRelease(v19);
        }

        v5 = v15;
      }
    }

    v11 = [obj countByEnumeratingWithState:&v32 objects:v41 count:16];
  }

  while (v11);
  v3 = v28;
  context = v29;
  v7 = v26;
  secondaryStagingRootPath = v27;
  v9 = v25;
  v23 = v30;
LABEL_27:

  return v23 & 1;
}

- (BOOL)_installStandaloneProvisioningProfile
{
  context = [(MSDOperation *)self context];
  v3 = +[NSFileManager defaultManager];
  stagingRootPath = [context stagingRootPath];
  fileHash = [context fileHash];
  v6 = [stagingRootPath stringByAppendingPathComponent:fileHash];
  identifier = [context identifier];
  v8 = sub_100063A54(identifier);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v19 = identifier;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "INFO - Installing provisioning profile: %{public}@", buf, 0xCu);
  }

  v9 = +[MSDContentCacheManager sharedInstance];
  v10 = [v9 copyFileIfPresentInCache:fileHash toLocation:v6 verifyHash:{objc_msgSend(context, "verifyFileHash")}];

  if (v10)
  {
    v11 = [MSDProvisioningProfileUtils installProvisioningProfile:v6];
  }

  else
  {
    sub_1000E0534(fileHash);
    v11 = 0;
  }

  if ([v3 fileExistsAtPath:v6])
  {
    v17 = 0;
    v12 = [v3 removeItemAtPath:v6 error:&v17];
    v13 = v17;
    v14 = v13;
    if ((v12 & 1) == 0)
    {
      v15 = sub_100063A54(v13);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_1000E05CC(v14);
      }
    }
  }

  return v11;
}

@end