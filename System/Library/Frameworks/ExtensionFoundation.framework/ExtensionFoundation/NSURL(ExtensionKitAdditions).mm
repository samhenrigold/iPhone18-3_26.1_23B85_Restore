@interface NSURL(ExtensionKitAdditions)
- (id)_EX_containingApplicationBundleURL;
- (uint64_t)_EX_isApplication;
- (uint64_t)_EX_isContainedInDirectory:()ExtensionKitAdditions;
- (uint64_t)_EX_isDirectory;
@end

@implementation NSURL(ExtensionKitAdditions)

- (uint64_t)_EX_isDirectory
{
  uRLByResolvingSymlinksInPath = [self URLByResolvingSymlinksInPath];
  v11 = 0;
  v2 = *MEMORY[0x1E695DB78];
  v10 = 0;
  v3 = [uRLByResolvingSymlinksInPath getResourceValue:&v11 forKey:v2 error:&v10];
  v4 = v11;
  isKindOfClass = v10;
  v6 = isKindOfClass;
  if (v3 && (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), (isKindOfClass & 1) != 0))
  {
    bOOLValue = [v4 BOOLValue];
  }

  else
  {
    v8 = _EXDefaultLog(isKindOfClass);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [NSURL(ExtensionKitAdditions) _EX_isDirectory];
    }

    bOOLValue = 0;
  }

  return bOOLValue;
}

- (uint64_t)_EX_isApplication
{
  v10 = 0;
  v1 = *MEMORY[0x1E695DB70];
  v9 = 0;
  v2 = [self getResourceValue:&v10 forKey:v1 error:&v9];
  v3 = v10;
  isKindOfClass = v9;
  v5 = isKindOfClass;
  if (v2 && (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), (isKindOfClass & 1) != 0))
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    v7 = _EXDefaultLog(isKindOfClass);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [NSURL(ExtensionKitAdditions) _EX_isApplication];
    }

    bOOLValue = 0;
  }

  return bOOLValue;
}

- (id)_EX_containingApplicationBundleURL
{
  absoluteURL = [self absoluteURL];
  uRLByDeletingLastPathComponent = [absoluteURL URLByDeletingLastPathComponent];

  v3 = objc_autoreleasePoolPush();
  path = [uRLByDeletingLastPathComponent path];
  v5 = [path length];

  if (v5)
  {
    while (![uRLByDeletingLastPathComponent _EX_isApplication])
    {
      v2URLByDeletingLastPathComponent = [uRLByDeletingLastPathComponent URLByDeletingLastPathComponent];

      path2 = [v2URLByDeletingLastPathComponent path];
      v5 = [path2 length];

      uRLByDeletingLastPathComponent = v2URLByDeletingLastPathComponent;
      if (!v5)
      {
        uRLByDeletingLastPathComponent = v2URLByDeletingLastPathComponent;
        goto LABEL_6;
      }
    }

    uRLByDeletingLastPathComponent = uRLByDeletingLastPathComponent;
    v5 = uRLByDeletingLastPathComponent;
  }

LABEL_6:
  objc_autoreleasePoolPop(v3);

  return v5;
}

- (uint64_t)_EX_isContainedInDirectory:()ExtensionKitAdditions
{
  v9 = 2;
  v4 = MEMORY[0x1E696AC08];
  v5 = a3;
  defaultManager = [v4 defaultManager];
  v7 = [defaultManager getRelationship:&v9 ofDirectoryAtURL:v5 toItemAtURL:self error:0];

  if (v9)
  {
    return 0;
  }

  else
  {
    return v7;
  }
}

@end