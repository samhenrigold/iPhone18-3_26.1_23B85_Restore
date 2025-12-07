@interface InstallSoftwareOperation
- (BOOL)_installPackage:(id *)package;
- (BOOL)_verifyApplication:(id)application error:(id *)error;
- (InstallSoftwareOperation)initWithSoftwareProperties:(id)properties;
- (SoftwareProperties)softwareProperties;
- (id)_newInstallationOptions;
- (void)dealloc;
- (void)main;
- (void)run;
@end

@implementation InstallSoftwareOperation

- (InstallSoftwareOperation)initWithSoftwareProperties:(id)properties
{
  v6.receiver = self;
  v6.super_class = InstallSoftwareOperation;
  v4 = [(InstallSoftwareOperation *)&v6 init];
  if (v4)
  {
    v4->_softwareProperties = [properties copy];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = InstallSoftwareOperation;
  [(InstallSoftwareOperation *)&v3 dealloc];
}

- (SoftwareProperties)softwareProperties
{
  v2 = [(SoftwareProperties *)self->_softwareProperties copy];

  return v2;
}

- (void)main
{
  if ([+[ApplicationWorkspace defaultWorkspace](ApplicationWorkspace "defaultWorkspace")])
  {
    v3 = [[NSString alloc] initWithFormat:@"com.apple.itunesstored.install_software.%@", -[NSUUID UUIDString](+[NSUUID UUID](NSUUID, "UUID"), "UUIDString")];
    AssertionID = 0;
    v4 = IOPMAssertionCreateWithDescription(@"PreventUserIdleSystemSleep", v3, 0, @"itunesstored install software", 0, 180.0, @"TimeoutActionRelease", &AssertionID);
    v5 = +[SSLogConfig sharedDaemonConfig];
    v6 = v5;
    if (v4)
    {
      if (!v5)
      {
        v6 = +[SSLogConfig sharedConfig];
      }

      shouldLog = [v6 shouldLog];
      if ([v6 shouldLogToDisk])
      {
        LODWORD(v8) = shouldLog | 2;
      }

      else
      {
        LODWORD(v8) = shouldLog;
      }

      oSLogObject = [v6 OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
      {
        v8 = v8;
      }

      else
      {
        v8 &= 2u;
      }

      if (v8)
      {
        v10 = objc_opt_class();
        v26 = 138412546;
        v27 = v10;
        v28 = 1024;
        LODWORD(v29) = v4;
        v11 = _os_log_send_and_compose_impl(v8, 0, 0, 0, &_mh_execute_header, oSLogObject, 1, "%@: Power assertion failed with error: %d", &v26, 18);
        if (v11)
        {
          v12 = v11;
          v13 = [NSString stringWithCString:v11 encoding:4];
          free(v12);
          v21 = v13;
          SSFileLog();
        }
      }

      v23.receiver = self;
      v23.super_class = InstallSoftwareOperation;
      [(InstallSoftwareOperation *)&v23 main];
    }

    else
    {
      if (!v5)
      {
        v6 = +[SSLogConfig sharedConfig];
      }

      shouldLog2 = [v6 shouldLog];
      if ([v6 shouldLogToDisk])
      {
        LODWORD(v15) = shouldLog2 | 2;
      }

      else
      {
        LODWORD(v15) = shouldLog2;
      }

      oSLogObject2 = [v6 OSLogObject];
      if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_INFO))
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
        v26 = 138412546;
        v27 = v17;
        v28 = 2112;
        v29 = v3;
        v18 = _os_log_send_and_compose_impl(v15, 0, 0, 0, &_mh_execute_header, oSLogObject2, 1, "%@: Took power assertion: %@", &v26, 22);
        if (v18)
        {
          v19 = v18;
          v20 = [NSString stringWithCString:v18 encoding:4];
          free(v19);
          v21 = v20;
          SSFileLog();
        }
      }

      v24.receiver = self;
      v24.super_class = InstallSoftwareOperation;
      [(InstallSoftwareOperation *)&v24 main];
      IOPMAssertionRelease(AssertionID);
    }
  }

  else
  {
    v22.receiver = self;
    v22.super_class = InstallSoftwareOperation;
    [(InstallSoftwareOperation *)&v22 main];
  }
}

- (void)run
{
  v3 = objc_autoreleasePoolPush();
  v4 = OBJC_IVAR___ISOperation__progress;
  [*&self->ISOperation_opaque[OBJC_IVAR___ISOperation__progress] setMaxValue:100];
  [*&self->ISOperation_opaque[v4] setOperationType:1];
  [(InstallSoftwareOperation *)self sendProgressToDelegate];
  v6 = 0;
  if ([(InstallSoftwareOperation *)self _installPackage:&v6])
  {
    v5 = +[DistributedNotificationCenter defaultCenter];
    [v5 postNotificationName:kISSoftwareMapInvalidatedNotification];
    [(InstallSoftwareOperation *)self setSuccess:1];
  }

  else
  {
    if (!v6)
    {
      ISError();
    }

    [(InstallSoftwareOperation *)self setError:?];
  }

  objc_autoreleasePoolPop(v3);
}

- (BOOL)_installPackage:(id *)package
{
  if (package)
  {
    *package = SSError();
  }

  return 0;
}

- (id)_newInstallationOptions
{
  v3 = objc_alloc_init(NSMutableDictionary);
  artworkData = [(SoftwareProperties *)self->_softwareProperties artworkData];
  if (artworkData)
  {
    [v3 setObject:artworkData forKey:LSiTunesArtworkKey];
  }

  transitMapData = [(SoftwareProperties *)self->_softwareProperties transitMapData];
  if (transitMapData)
  {
    [v3 setObject:transitMapData forKey:LSGeoJSONKey];
  }

  iTunesMetadata = [(SoftwareProperties *)self->_softwareProperties ITunesMetadata];
  if (iTunesMetadata)
  {
    v30 = 0;
    v7 = [NSPropertyListSerialization dataWithPropertyList:iTunesMetadata format:200 options:0 error:&v30];
    v8 = v7 != 0;
    if (v7)
    {
      [v3 setObject:v7 forKey:LSiTunesMetadataKey];
    }

    else
    {
      v21 = +[SSLogConfig sharedDaemonConfig];
      if (!v21)
      {
        v21 = +[SSLogConfig sharedConfig];
      }

      shouldLog = [v21 shouldLog];
      if ([v21 shouldLogToDisk])
      {
        LODWORD(v23) = shouldLog | 2;
      }

      else
      {
        LODWORD(v23) = shouldLog;
      }

      oSLogObject = [v21 OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
      {
        v23 = v23;
      }

      else
      {
        v23 &= 2u;
      }

      if (v23)
      {
        v25 = objc_opt_class();
        v31 = 138412546;
        v32 = v25;
        v33 = 2112;
        v34 = v30;
        v26 = _os_log_send_and_compose_impl(v23, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "%@: Could not serialize metadata: %@", &v31, 22);
        if (v26)
        {
          v27 = v26;
          v28 = [NSString stringWithCString:v26 encoding:4];
          free(v27);
          v29 = v28;
          SSFileLog();
        }
      }
    }
  }

  else
  {
    v9 = +[SSLogConfig sharedDaemonConfig];
    if (!v9)
    {
      v9 = +[SSLogConfig sharedConfig];
    }

    shouldLog2 = [v9 shouldLog];
    if ([v9 shouldLogToDisk])
    {
      LODWORD(v11) = shouldLog2 | 2;
    }

    else
    {
      LODWORD(v11) = shouldLog2;
    }

    oSLogObject2 = [v9 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v11;
    }

    else
    {
      v11 &= 2u;
    }

    if (v11)
    {
      v31 = 138412290;
      v32 = objc_opt_class();
      v13 = _os_log_send_and_compose_impl(v11, 0, 0, 0, &_mh_execute_header, oSLogObject2, 0, "%@: Could not create writable metadata", &v31, 12);
      if (v13)
      {
        v14 = v13;
        v15 = [NSString stringWithCString:v13 encoding:4];
        free(v14);
        v29 = v15;
        SSFileLog();
      }
    }

    v8 = 0;
  }

  sinfData = [(SoftwareProperties *)self->_softwareProperties sinfData];
  if (sinfData)
  {
    [v3 setObject:sinfData forKey:LSApplicationSINFKey];
  }

  installType = [(SoftwareProperties *)self->_softwareProperties installType];
  if (installType)
  {
    [v3 setObject:installType forKey:LSInstallTypeKey];
  }

  v18 = [NSNumber numberWithBool:1];
  [v3 setObject:v18 forKey:LSSupressNotificationKey];
  [v3 setObject:LSPackageTypeCustomer forKey:LSPackageTypeKey];
  bundleIdentifier = [(SoftwareProperties *)self->_softwareProperties bundleIdentifier];
  if ([(NSString *)bundleIdentifier length])
  {
    [v3 setObject:bundleIdentifier forKey:@"CFBundleIdentifier"];
  }

  if (!v8)
  {

    return 0;
  }

  return v3;
}

- (BOOL)_verifyApplication:(id)application error:(id *)error
{
  v7 = objc_opt_new();
  [v7 setSourceURL:application];
  [v7 setBundleIdentifier:{-[SoftwareProperties bundleIdentifier](self->_softwareProperties, "bundleIdentifier")}];
  [v7 setBundleVersion:{-[SoftwareProperties bundleVersion](self->_softwareProperties, "bundleVersion")}];
  v10 = 0;
  v8 = [v7 validate:&v10];

  if (error)
  {
    *error = v10;
  }

  return v8;
}

@end