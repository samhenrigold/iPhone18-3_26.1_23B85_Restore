@interface MSDFileDownloadCredentials
+ (MSDFileDownloadCredentials)sharedInstance;
- (BOOL)isCachingHubAvailable;
- (BOOL)isExpired:(id)expired;
- (BOOL)isValidForOriginServer:(id)server;
- (BOOL)loadFromFile;
- (BOOL)saveInfoToFile:(id)file;
- (BOOL)updateWithResponseFromGetFileDownloadCredentials:(id)credentials;
- (BOOL)updateWithResponseFromGetManifestInfo:(id)info;
- (NSDictionary)manifestInfo;
- (id)localCredentialForOriginServer:(id)server;
- (id)remoteCredentialForOriginServer:(id)server;
@end

@implementation MSDFileDownloadCredentials

+ (MSDFileDownloadCredentials)sharedInstance
{
  if (qword_1001A59B0 != -1)
  {
    sub_1000E5AA8();
  }

  v3 = qword_1001A59A8;

  return v3;
}

- (BOOL)updateWithResponseFromGetManifestInfo:(id)info
{
  infoCopy = info;
  v5 = infoCopy;
  if (infoCopy)
  {
    v6 = [infoCopy objectForKey:@"FileDownloadCredentials"];
    [(MSDFileDownloadCredentials *)self setCredentials:v6];

    credentials = [(MSDFileDownloadCredentials *)self credentials];

    if (!credentials)
    {
      v8 = +[NSDictionary dictionary];
      [(MSDFileDownloadCredentials *)self setCredentials:v8];
    }

    v9 = [v5 mutableCopy];
    [v9 removeObjectForKey:@"FileDownloadCredentials"];
    v10 = [v9 mutableCopy];
    [(MSDFileDownloadCredentials *)self setManifestInfo:v10];

    credentials2 = [(MSDFileDownloadCredentials *)self credentials];
    [v9 setObject:credentials2 forKey:@"FileDownloadCredentials"];

    v12 = [(MSDFileDownloadCredentials *)self saveInfoToFile:v9];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)updateWithResponseFromGetFileDownloadCredentials:(id)credentials
{
  credentialsCopy = credentials;
  manifestInfo = [(MSDFileDownloadCredentials *)self manifestInfo];
  v6 = [manifestInfo mutableCopy];

  [(MSDFileDownloadCredentials *)self setCredentials:credentialsCopy];
  credentials = [(MSDFileDownloadCredentials *)self credentials];

  if (!credentials)
  {
    v8 = +[NSDictionary dictionary];
    [(MSDFileDownloadCredentials *)self setCredentials:v8];
  }

  credentials2 = [(MSDFileDownloadCredentials *)self credentials];
  [v6 setObject:credentials2 forKey:@"FileDownloadCredentials"];

  v10 = [(MSDFileDownloadCredentials *)self saveInfoToFile:v6];
  return v10;
}

- (id)localCredentialForOriginServer:(id)server
{
  serverCopy = server;
  if (serverCopy)
  {
    v5 = serverCopy;
  }

  else
  {
    v5 = @"default";
  }

  credentials = [(MSDFileDownloadCredentials *)self credentials];
  v7 = [credentials objectForKey:@"local"];

  if (v7)
  {
    v8 = [v7 objectForKey:v5];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)remoteCredentialForOriginServer:(id)server
{
  serverCopy = server;
  if (serverCopy)
  {
    v5 = serverCopy;
  }

  else
  {
    v5 = @"default";
  }

  credentials = [(MSDFileDownloadCredentials *)self credentials];
  v7 = [credentials objectForKey:@"remote"];

  if (v7)
  {
    v8 = [v7 objectForKey:v5];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)isValidForOriginServer:(id)server
{
  serverCopy = server;
  v5 = [(MSDFileDownloadCredentials *)self localCredentialForOriginServer:serverCopy];
  v6 = [(MSDFileDownloadCredentials *)self remoteCredentialForOriginServer:serverCopy];

  if (v5 | v6 && ![(MSDFileDownloadCredentials *)self isExpired:v5])
  {
    v7 = ![(MSDFileDownloadCredentials *)self isExpired:v6];
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (BOOL)isCachingHubAvailable
{
  credentials = [(MSDFileDownloadCredentials *)self credentials];
  v3 = [credentials objectForKey:@"local"];
  v4 = v3 != 0;

  return v4;
}

- (BOOL)isExpired:(id)expired
{
  expiredCopy = expired;
  v4 = +[NSDate date];
  [v4 timeIntervalSince1970];
  v6 = v5;

  if (expiredCopy)
  {
    isKindOfClass = [expiredCopy objectForKey:@"Expires"];
    v8 = isKindOfClass;
    if (isKindOfClass && (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), (isKindOfClass & 1) != 0))
    {
      v9 = [v8 longLongValue] < v6 + 30;
    }

    else
    {
      sub_1000E5ABC(isKindOfClass);
      v9 = 1;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)loadFromFile
{
  v3 = +[MSDTargetDevice sharedInstance];
  manifestAndFileDownloadInfoPath = [v3 manifestAndFileDownloadInfoPath];
  v5 = [NSURL fileURLWithPath:manifestAndFileDownloadInfoPath];

  v12 = 0;
  v6 = [NSDictionary dictionaryWithContentsOfURL:v5 error:&v12];
  v7 = v12;
  v8 = v7;
  if (v6)
  {
    v9 = [NSMutableDictionary dictionaryWithDictionary:v6];
    v10 = [v9 objectForKey:@"FileDownloadCredentials"];
    [(MSDFileDownloadCredentials *)self setCredentials:v10];

    [v9 removeObjectForKey:@"FileDownloadCredentials"];
    [(MSDFileDownloadCredentials *)self setManifestInfo:v9];
  }

  else
  {
    v9 = sub_100063A54(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1000E5B24(v5, v8);
    }
  }

  return v6 != 0;
}

- (BOOL)saveInfoToFile:(id)file
{
  fileCopy = file;
  v4 = +[NSFileManager defaultManager];
  v5 = +[MSDTargetDevice sharedInstance];
  manifestAndFileDownloadInfoPath = [v5 manifestAndFileDownloadInfoPath];

  stringByDeletingLastPathComponent = [manifestAndFileDownloadInfoPath stringByDeletingLastPathComponent];
  if ([v4 fileExistsAtPath:stringByDeletingLastPathComponent])
  {
    v8 = 0;
  }

  else
  {
    v19 = 0;
    v9 = [v4 createDirectoryAtPath:stringByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:&v19];
    v10 = v19;
    v8 = v10;
    if ((v9 & 1) == 0)
    {
      v17 = sub_100063A54(v10);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_1000E5BD4(stringByDeletingLastPathComponent, v8);
      }

      v12 = 0;
      goto LABEL_12;
    }
  }

  v11 = v8;
  v12 = [NSURL fileURLWithPath:manifestAndFileDownloadInfoPath];
  v18 = v8;
  v13 = [fileCopy writeToURL:v12 error:&v18];
  v8 = v18;

  if ((v13 & 1) == 0)
  {
    v17 = sub_100063A54(v14);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_1000E5C88(v12, v8);
    }

LABEL_12:

    v15 = 0;
    goto LABEL_6;
  }

  v15 = 1;
LABEL_6:

  return v15;
}

- (NSDictionary)manifestInfo
{
  manifestInfo = self->_manifestInfo;
  if (manifestInfo)
  {
    goto LABEL_4;
  }

  if ([(MSDFileDownloadCredentials *)self loadFromFile])
  {
    manifestInfo = self->_manifestInfo;
LABEL_4:
    v4 = manifestInfo;
    goto LABEL_5;
  }

  v4 = 0;
LABEL_5:

  return v4;
}

@end