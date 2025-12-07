@interface IXGlobalConfiguration
+ (id)sharedInstance;
- (BOOL)isiPad;
- (IXGlobalConfiguration)init;
- (NSURL)frameworkURL;
- (NSURL)userVolumeURL;
- (id)_dataStorageHomeURLWithError:(id *)error;
- (id)_userTempDirURLWithError:(id *)error;
- (id)dataDirectoryAbortingOnError;
- (id)dataDirectoryWithError:(id *)error;
- (id)extractedInstallableStagingDirectory:(id *)directory;
- (id)iconStagingDirectoryWithError:(id *)error;
- (id)promiseStagingRootAbortingOnErrorForInstallLocation:(id)location usingUniqueName:(id)name;
- (id)promiseStagingRootForInstallLocation:(id)location usingUniqueName:(id)name error:(id *)error;
- (id)remoteInstallationStagingDirectory:(id *)directory;
- (id)removabilityDirectoryAbortingOnError;
- (id)removabilityDirectoryWithError:(id *)error;
- (void)createDirectories;
@end

@implementation IXGlobalConfiguration

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100008620;
  block[3] = &unk_100100D40;
  block[4] = self;
  if (qword_100121C48 != -1)
  {
    dispatch_once(&qword_100121C48, block);
  }

  v2 = qword_100121C40;

  return v2;
}

- (IXGlobalConfiguration)init
{
  v14.receiver = self;
  v14.super_class = IXGlobalConfiguration;
  v2 = [(IXGlobalConfiguration *)&v14 init];
  v3 = v2;
  if (v2)
  {
    v2->_dynamicPropertyLock._os_unfair_lock_opaque = 0;
    v4 = sysconf(71);
    if (v4 == -1)
    {
      sub_100097FA8(&v13, v15);
    }

    memset(&v13, 0, sizeof(v13));
    v12 = 0;
    if (getpwnam_r("mobile", &v13, &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v4, &v12) || !v12)
    {
      sub_100097EF0(&v11, v15);
    }

    pw_dir = v13.pw_dir;
    v3->_daemonUID = v13.pw_uid;
    v3->_daemonGID = v13.pw_gid;
    v6 = [NSURL fileURLWithFileSystemRepresentation:pw_dir isDirectory:1 relativeToURL:0];
    daemonUserHome = v3->_daemonUserHome;
    v3->_daemonUserHome = v6;

    v8 = [NSURL fileURLWithFileSystemRepresentation:"/" isDirectory:1 relativeToURL:0];
    rootPath = v3->_rootPath;
    v3->_rootPath = v8;
  }

  return v3;
}

- (BOOL)isiPad
{
  v2 = MGGetStringAnswer();
  v3 = [v2 isEqualToString:@"iPad"];

  return v3;
}

- (void)createDirectories
{
  v3 = +[IXFileManager defaultManager];
  v33 = 0;
  v4 = [(IXGlobalConfiguration *)self _dataStorageHomeURLWithError:&v33];
  v5 = v33;
  v6 = v5;
  if (!v4)
  {
    sub_100098124(&v34, buf);
  }

  v32 = v5;
  v7 = [v4 setResourceValue:&__kCFBooleanTrue forKey:NSURLIsExcludedFromBackupKey error:&v32];
  v8 = v32;

  if ((v7 & 1) == 0)
  {
    v9 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      path = [v4 path];
      *buf = 136315650;
      *&buf[4] = "[IXGlobalConfiguration createDirectories]";
      *&buf[12] = 2112;
      *&buf[14] = path;
      *&buf[22] = 2112;
      *&buf[24] = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s: Failed to set backup exclusion on %@ : %@", buf, 0x20u);
    }
  }

  v31 = v8;
  v11 = [(IXGlobalConfiguration *)self dataDirectoryWithError:&v31];
  v12 = v31;

  if (!v11)
  {
    sub_1000980B8(&v34, buf);
  }

  v30 = v12;
  v13 = [v3 createDirectoryAtURL:v11 withIntermediateDirectories:1 mode:489 class:4 error:&v30];
  v14 = v30;

  if ((v13 & 1) == 0)
  {
    v29 = 0;
    v40 = 0u;
    v41 = 0u;
    v39 = 0u;
    memset(buf, 0, sizeof(buf));
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v23 = 3;
    }

    else
    {
      v23 = 2;
    }

    path2 = [v11 path];
    v34 = 138412546;
    v35 = path2;
    v36 = 2112;
    v37 = v14;
    _os_log_send_and_compose_impl(v23, &v29, buf, 80, &_mh_execute_header, &_os_log_default, 16, "Failed to create data directory at %@ : %@", &v34, 22);

    _os_crash_msg();
    __break(1u);
    goto LABEL_21;
  }

  v15 = sub_1000031B0(off_100121958);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    path3 = [v11 path];
    *buf = 136315394;
    *&buf[4] = "[IXGlobalConfiguration createDirectories]";
    *&buf[12] = 2112;
    *&buf[14] = path3;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%s: Created %@", buf, 0x16u);
  }

  v28 = v14;
  v17 = [(IXGlobalConfiguration *)self removabilityDirectoryWithError:&v28];
  v18 = v28;

  if (!v17)
  {
LABEL_21:
    sub_10009804C(&v34, buf);
  }

  v27 = v18;
  v19 = [v3 createDirectoryAtURL:v17 withIntermediateDirectories:1 mode:489 class:4 error:&v27];
  v20 = v27;

  if ((v19 & 1) == 0)
  {
    v29 = 0;
    v40 = 0u;
    v41 = 0u;
    v39 = 0u;
    memset(buf, 0, sizeof(buf));
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v25 = 3;
    }

    else
    {
      v25 = 2;
    }

    path4 = [v17 path];
    v34 = 138412546;
    v35 = path4;
    v36 = 2112;
    v37 = v20;
    _os_log_send_and_compose_impl(v25, &v29, buf, 80, &_mh_execute_header, &_os_log_default, 16, "Failed to create removability directory at %@ : %@", &v34, 22);

    _os_crash_msg();
    __break(1u);
  }

  v21 = sub_1000031B0(off_100121958);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    path5 = [v17 path];
    *buf = 136315394;
    *&buf[4] = "[IXGlobalConfiguration createDirectories]";
    *&buf[12] = 2112;
    *&buf[14] = path5;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%s: Created %@", buf, 0x16u);
  }
}

- (id)_dataStorageHomeURLWithError:(id *)error
{
  os_unfair_lock_lock(&self->_dynamicPropertyLock);
  dataStorageHome = self->_dataStorageHome;
  if (dataStorageHome)
  {
    v6 = 0;
  }

  else
  {
    v16 = 0;
    v7 = container_system_group_path_for_identifier();
    if (v7)
    {
      v8 = v7;
      v9 = [NSURL fileURLWithFileSystemRepresentation:v7 isDirectory:1 relativeToURL:0];
      v10 = self->_dataStorageHome;
      self->_dataStorageHome = v9;

      free(v8);
      v6 = 0;
    }

    else
    {
      v11 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_100098190(&v16, v11);
      }

      v6 = sub_1000405FC("[IXGlobalConfiguration _dataStorageHomeURLWithError:]", 220, @"IXErrorDomain", 1uLL, 0, 0, @"Failed to get group container path for group 'systemgroup.com.apple.installcoordinationd' container_system_group_path_for_identifier returned %llu", v12, v16);;
    }

    dataStorageHome = self->_dataStorageHome;
  }

  v13 = dataStorageHome;
  os_unfair_lock_unlock(&self->_dynamicPropertyLock);
  if (error && !v13)
  {
    v14 = v6;
    *error = v6;
  }

  return v13;
}

- (id)dataDirectoryWithError:(id *)error
{
  v3 = [(IXGlobalConfiguration *)self _dataStorageHomeURLWithError:error];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 urlByAppendingPathComponents:&off_10010DF10 lastIsDirectory:1];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)dataDirectoryAbortingOnError
{
  v6 = 0;
  v2 = [(IXGlobalConfiguration *)self dataDirectoryWithError:&v6];
  v3 = v6;
  if (!v2)
  {
    sub_10009822C(&v5, v7);
  }

  return v2;
}

- (id)promiseStagingRootForInstallLocation:(id)location usingUniqueName:(id)name error:(id *)error
{
  nameCopy = name;
  locationCopy = location;
  v9 = +[MIHelperServiceFrameworkClient sharedInstance];
  v10 = [v9 stagingLocationForInstallLocation:locationCopy withinStagingSubsytem:2 usingUniqueName:nameCopy error:error];

  if (v10)
  {
    v11 = v10;
  }

  return v10;
}

- (id)promiseStagingRootAbortingOnErrorForInstallLocation:(id)location usingUniqueName:(id)name
{
  locationCopy = location;
  nameCopy = name;
  v15 = 0;
  v8 = [(IXGlobalConfiguration *)self promiseStagingRootForInstallLocation:locationCopy usingUniqueName:nameCopy error:&v15];
  v9 = v15;
  if (!v8)
  {
    v14 = 0;
    memset(v22, 0, sizeof(v22));
    v11 = v9;
    v12 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    v16 = 138412802;
    if (v12)
    {
      v13 = 3;
    }

    else
    {
      v13 = 2;
    }

    v17 = locationCopy;
    v18 = 2112;
    v19 = nameCopy;
    v20 = 2112;
    v21 = v11;
    _os_log_send_and_compose_impl(v13, &v14, v22, 80, &_mh_execute_header, &_os_log_default, 16, "Failed to get promise staging directory for install location %@ with uniqueName %@: %@", &v16, 32);
    _os_crash_msg();
    __break(1u);
  }

  return v8;
}

- (id)removabilityDirectoryWithError:(id *)error
{
  v3 = [(IXGlobalConfiguration *)self dataDirectoryWithError:error];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 URLByAppendingPathComponent:@"Removability" isDirectory:1];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)removabilityDirectoryAbortingOnError
{
  v6 = 0;
  v2 = [(IXGlobalConfiguration *)self removabilityDirectoryWithError:&v6];
  v3 = v6;
  if (!v2)
  {
    sub_10009804C(&v5, v7);
  }

  return v2;
}

- (id)remoteInstallationStagingDirectory:(id *)directory
{
  v3 = [(IXGlobalConfiguration *)self dataDirectoryWithError:directory];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 URLByAppendingPathComponent:@"RemoteInstallStaging" isDirectory:1];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_userTempDirURLWithError:(id *)error
{
  bzero(v10, 0x400uLL);
  if (confstr(65537, v10, 0x400uLL))
  {
    v4 = [NSURL fileURLWithFileSystemRepresentation:v10 isDirectory:1 relativeToURL:0];
    v5 = 0;
    if (!error)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v6 = __error();
    v7 = *v6;
    strerror(*v6);
    v5 = sub_1000405FC("[IXGlobalConfiguration _userTempDirURLWithError:]", 312, NSPOSIXErrorDomain, v7, 0, 0, @"Failed to initialize temporary directory: error = %d (%s)", v8, v7);
    v4 = 0;
    if (!error)
    {
      goto LABEL_7;
    }
  }

  if (!v4)
  {
    v5 = v5;
    *error = v5;
  }

LABEL_7:

  return v4;
}

- (id)iconStagingDirectoryWithError:(id *)error
{
  v9 = 0;
  v4 = [(IXGlobalConfiguration *)self _userTempDirURLWithError:&v9];
  v5 = v9;
  if (v4)
  {
    v6 = [v4 URLByAppendingPathComponent:@"TempIcons" isDirectory:1];
    if (!error)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v6 = 0;
    if (!error)
    {
      goto LABEL_7;
    }
  }

  if (!v6)
  {
    v7 = v5;
    *error = v5;
  }

LABEL_7:

  return v6;
}

- (id)extractedInstallableStagingDirectory:(id *)directory
{
  v9 = 0;
  v4 = [(IXGlobalConfiguration *)self _userTempDirURLWithError:&v9];
  v5 = v9;
  if (v4)
  {
    v6 = [v4 URLByAppendingPathComponent:@"ExtractedApps" isDirectory:1];
    if (!directory)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v6 = 0;
    if (!directory)
    {
      goto LABEL_7;
    }
  }

  if (!v6)
  {
    v7 = v5;
    *directory = v5;
  }

LABEL_7:

  return v6;
}

- (NSURL)frameworkURL
{
  rootPath = [(IXGlobalConfiguration *)self rootPath];
  v3 = [rootPath urlByAppendingPathComponents:&off_10010DF28 lastIsDirectory:1];

  return v3;
}

- (NSURL)userVolumeURL
{
  rootPath = [(IXGlobalConfiguration *)self rootPath];
  v3 = [rootPath urlByAppendingPathComponents:&off_10010DF40 lastIsDirectory:1];

  return v3;
}

@end