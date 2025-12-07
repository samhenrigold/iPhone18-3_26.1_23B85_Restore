@interface SODaemonUtils
+ (BOOL)isAppManagedWithBundleIdentifier:(id)identifier;
+ (BOOL)isInternalBuild;
+ (id)localizedAppNameWithBundleIdentifier:(id)identifier pid:(int)pid;
@end

@implementation SODaemonUtils

+ (BOOL)isAppManagedWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2050000000;
  v4 = qword_100015DC0;
  v15 = qword_100015DC0;
  if (!qword_100015DC0)
  {
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_10000221C;
    v17 = &unk_100010390;
    v18 = &v12;
    sub_10000221C(buf);
    v4 = v13[3];
  }

  v5 = v4;
  _Block_object_dispose(&v12, 8);
  sharedConnection = [v4 sharedConnection];
  v7 = [sharedConnection isAppManaged:identifierCopy];

  v9 = sub_100001EE4(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = @"NO";
    if (v7)
    {
      v10 = @"YES";
    }

    *buf = 138543618;
    *&buf[4] = identifierCopy;
    *&buf[12] = 2114;
    *&buf[14] = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ is managed: %{public}@", buf, 0x16u);
  }

  return v7;
}

+ (id)localizedAppNameWithBundleIdentifier:(id)identifier pid:(int)pid
{
  v4 = *&pid;
  identifierCopy = identifier;
  v6 = [LSApplicationProxy applicationProxyForIdentifier:identifierCopy placeholder:0];
  localizedName = [v6 localizedName];
  v8 = localizedName;
  if (localizedName)
  {
    v9 = localizedName;
  }

  else
  {
    localizedShortName = [v6 localizedShortName];
    v11 = localizedShortName;
    if (localizedShortName)
    {
      v9 = localizedShortName;
    }

    else
    {
      bundleIdentifier = [v6 bundleIdentifier];
      v13 = bundleIdentifier;
      if (bundleIdentifier)
      {
        v14 = bundleIdentifier;
      }

      else
      {
        v14 = identifierCopy;
      }

      v9 = v14;
    }
  }

  v15 = [v9 length];
  if (!v15)
  {
    v16 = sub_100001EE4(0);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      sub_100008390(v4, identifierCopy, v16);
    }

    v17 = [sub_100002114() processNameForPID:v4];

    v9 = v17;
  }

  v18 = sub_100001EE4(v15);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = [NSNumber numberWithInt:v4];
    v21 = 138543874;
    v22 = v19;
    v23 = 2114;
    v24 = identifierCopy;
    v25 = 2114;
    v26 = v9;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@ localized app name: %{public}@", &v21, 0x20u);
  }

  return v9;
}

+ (BOOL)isInternalBuild
{
  v2 = sub_100002114();

  return [v2 isInternalBuild];
}

@end