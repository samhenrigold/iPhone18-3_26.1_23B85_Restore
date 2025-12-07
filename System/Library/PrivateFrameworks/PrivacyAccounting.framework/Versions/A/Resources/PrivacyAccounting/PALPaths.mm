@interface PALPaths
- (BOOL)createDirectories:(id *)directories;
- (NSString)biomeDirectory;
- (NSString)settingsFile;
- (PALPaths)initWithRootDirectory:(id)directory;
- (void)removeBiomeDirectory;
@end

@implementation PALPaths

- (NSString)biomeDirectory
{
  rootDirectory = [(PALPaths *)self rootDirectory];
  v3 = [rootDirectory stringByAppendingPathComponent:@"Biome"];

  return v3;
}

- (PALPaths)initWithRootDirectory:(id)directory
{
  directoryCopy = directory;
  v9.receiver = self;
  v9.super_class = PALPaths;
  v5 = [(PALPaths *)&v9 init];
  if (v5)
  {
    v6 = [directoryCopy copy];
    rootDirectory = v5->_rootDirectory;
    v5->_rootDirectory = v6;
  }

  return v5;
}

- (NSString)settingsFile
{
  rootDirectory = [(PALPaths *)self rootDirectory];
  v3 = [rootDirectory stringByAppendingPathComponent:@"privacyaccountingd.plist"];

  return v3;
}

- (BOOL)createDirectories:(id *)directories
{
  v5 = +[NSFileManager defaultManager];
  rootDirectory = [(PALPaths *)self rootDirectory];
  v32[0] = rootDirectory;
  biomeDirectory = [(PALPaths *)self biomeDirectory];
  v32[1] = biomeDirectory;
  v8 = [NSArray arrayWithObjects:v32 count:2];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v25 objects:v31 count:16];
  if (v10)
  {
    v12 = v10;
    v13 = *v26;
    *&v11 = 138543362;
    v24 = v11;
    while (2)
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v26 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v25 + 1) + 8 * i);
        if (([v5 fileExistsAtPath:{v15, v24, v25}] & 1) == 0)
        {
          v16 = [v5 createDirectoryAtPath:v15 withIntermediateDirectories:1 attributes:0 error:directories];
          v17 = v16;
          v18 = sub_100005738(v16);
          v19 = v18;
          if (!v17)
          {
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              sub_10000588C(v15, directories, v19);
            }

            v22 = sub_100005738(v21);
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              sub_100005918(v22);
            }

            v20 = 0;
            goto LABEL_19;
          }

          if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
          {
            *buf = v24;
            v30 = v15;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Created directory: %{public}@", buf, 0xCu);
          }
        }
      }

      v12 = [v9 countByEnumeratingWithState:&v25 objects:v31 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  v20 = 1;
LABEL_19:

  return v20;
}

- (void)removeBiomeDirectory
{
  v3 = +[NSFileManager defaultManager];
  biomeDirectory = [(PALPaths *)self biomeDirectory];
  v9 = 0;
  v5 = [v3 removeItemAtPath:biomeDirectory error:&v9];
  v6 = v9;

  if ((v5 & 1) == 0)
  {
    v8 = sub_100005738(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100005970(self, v6, v8);
    }
  }
}

@end