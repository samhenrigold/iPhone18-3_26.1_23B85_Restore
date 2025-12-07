@interface WebBookmarksApplicationObserver
+ (id)sharedObserver;
- (WebBookmarksApplicationObserver)init;
- (void)_safariWasUninstalled;
- (void)applicationsDidInstall:(id)install;
- (void)applicationsDidUninstall:(id)uninstall;
- (void)databaseWasRebuilt;
- (void)dealloc;
@end

@implementation WebBookmarksApplicationObserver

- (WebBookmarksApplicationObserver)init
{
  v10.receiver = self;
  v10.super_class = WebBookmarksApplicationObserver;
  v2 = [(WebBookmarksApplicationObserver *)&v10 init];
  v4 = v2;
  if (v2)
  {
    v5 = sub_100014764(v2, v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Checking system app migration status", buf, 2u);
    }

    objc_initWeak(buf, v4);
    objc_copyWeak(&v8, buf);
    MobileInstallationWaitForSystemAppMigrationWithCompletion();
    v6 = v4;
    objc_destroyWeak(&v8);
    objc_destroyWeak(buf);
  }

  return v4;
}

- (void)dealloc
{
  v3 = +[LSApplicationWorkspace defaultWorkspace];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = WebBookmarksApplicationObserver;
  [(WebBookmarksApplicationObserver *)&v4 dealloc];
}

+ (id)sharedObserver
{
  if (qword_10002E938 != -1)
  {
    sub_100017780();
  }

  v3 = qword_10002E930;

  return v3;
}

- (void)_safariWasUninstalled
{
  v2 = sub_100014764(self, a2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Safari deleting Safari Library data", buf, 2u);
  }

  sub_100013F28();
  sub_100013FA0();
  sub_100013F64();
  v3 = WBSafariDirectoryPath();
  v4 = +[NSFileManager defaultManager];
  v12 = 0;
  [v4 removeItemAtPath:v3 error:&v12];
  v5 = v12;

  v8 = sub_100014764(v6, v7);
  v9 = v8;
  if (v5)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = v9;
      safari_privacyPreservingDescription = [v5 safari_privacyPreservingDescription];
      *buf = 138543362;
      v14 = safari_privacyPreservingDescription;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Failed to delete Safari directory %{public}@", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Safari data deleted", buf, 2u);
  }

  exit(0);
}

- (void)applicationsDidUninstall:(id)uninstall
{
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  uninstallCopy = uninstall;
  v5 = [uninstallCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    v8 = safariMobileApplicationBundleIdentifier;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(uninstallCopy);
        }

        bundleIdentifier = [*(*(&v16 + 1) + 8 * i) bundleIdentifier];
        v11 = [bundleIdentifier isEqualToString:v8];

        if (v11)
        {
          v14 = sub_100014764(v12, v13);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            *v15 = 0;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Received Safari did uninstalled notification", v15, 2u);
          }

          [(WebBookmarksApplicationObserver *)self _safariWasUninstalled];
          goto LABEL_13;
        }
      }

      v6 = [uninstallCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:
}

- (void)databaseWasRebuilt
{
  v3 = sub_100014764(self, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Received LS database rebuilt notification", buf, 2u);
  }

  v4 = +[NSBundle safari_isMobileSafariInstalled];
  if ((v4 & 1) == 0)
  {
    v6 = sub_100014764(v4, v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Safari is uninstalled after app database rebuilt", v7, 2u);
    }

    [(WebBookmarksApplicationObserver *)self _safariWasUninstalled];
  }
}

- (void)applicationsDidInstall:(id)install
{
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  installCopy = install;
  v4 = [installCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    v7 = safariMobileApplicationBundleIdentifier;
    do
    {
      v8 = 0;
      do
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(installCopy);
        }

        bundleIdentifier = [*(*(&v15 + 1) + 8 * v8) bundleIdentifier];
        v10 = [bundleIdentifier isEqualToString:v7];

        if (v10)
        {
          v13 = sub_100014400(v11, v12);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *v14 = 0;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Received LS applicationsDidInstall notification", v14, 2u);
          }

          exit(0);
        }

        v8 = v8 + 1;
      }

      while (v5 != v8);
      v5 = [installCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }
}

@end