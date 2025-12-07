@interface MSDConfigurationProfileInstallOperation
- (BOOL)_installConfigurationProfile;
- (id)methodSelectors;
@end

@implementation MSDConfigurationProfileInstallOperation

- (id)methodSelectors
{
  v2 = [NSValue valueWithPointer:"_installConfigurationProfile"];
  v3 = [NSArray arrayWithObjects:v2, 0];

  return v3;
}

- (BOOL)_installConfigurationProfile
{
  context = [(MSDOperation *)self context];
  v3 = +[NSFileManager defaultManager];
  stagingRootPath = [context stagingRootPath];
  fileHash = [context fileHash];
  v6 = [stagingRootPath stringByAppendingPathComponent:fileHash];
  profileIdentifier = [context profileIdentifier];
  v8 = [[MSDConfigurationProfile alloc] initWithFile:v6 andIdentifier:profileIdentifier];
  v9 = sub_100063A54(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [context identifier];
    *buf = 138543362;
    v23 = identifier;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Installing standalone configuration profile: %{public}@", buf, 0xCu);
  }

  v11 = +[MSDContentCacheManager sharedInstance];
  v12 = [v11 copyFileIfPresentInCache:fileHash toLocation:v6 verifyHash:{objc_msgSend(context, "verifyFileHash")}];

  if (v12)
  {
    v14 = +[MSDConfigurationProfileManager sharedInstance];
    v15 = [v14 installConfigurationProfile:v8];
  }

  else
  {
    v14 = sub_100063A54(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_1000C57EC(fileHash, v14);
    }

    v15 = 0;
  }

  if ([v3 fileExistsAtPath:v6])
  {
    v21 = 0;
    v16 = [v3 removeItemAtPath:v6 error:&v21];
    v17 = v21;
    v18 = v17;
    if ((v16 & 1) == 0)
    {
      v19 = sub_100063A54(v17);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_1000C5864(v18, v19);
      }
    }
  }

  return v15;
}

@end