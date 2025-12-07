@interface CXSandboxExtendedURL
- (BOOL)csd_isSymbolicLink;
@end

@implementation CXSandboxExtendedURL

- (BOOL)csd_isSymbolicLink
{
  v2 = [(CXSandboxExtendedURL *)self URL];
  path = [v2 path];

  if ([path length])
  {
    v4 = +[NSFileManager defaultManager];
    v11 = 0;
    v5 = [v4 attributesOfItemAtPath:path error:&v11];
    v6 = v11;

    if (v5)
    {
      v8 = [v5 objectForKeyedSubscript:NSFileType];
      v9 = [v8 isEqual:NSFileTypeSymbolicLink];
    }

    else
    {
      v5 = sub_100004778(v7);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_10047D22C(v6, v5);
      }

      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end