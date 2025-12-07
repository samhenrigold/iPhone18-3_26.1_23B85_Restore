@interface MSDMacAppPkg
+ (BOOL)isMacApp:(id)app;
+ (id)codeSignaturePath:(id)path;
@end

@implementation MSDMacAppPkg

+ (BOOL)isMacApp:(id)app
{
  appCopy = app;
  v24 = 0;
  v4 = [NSBundle bundleWithPath:appCopy];
  v5 = v4;
  if (!v4)
  {
    v9 = sub_100063A54(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1000CDA6C();
    }

    goto LABEL_19;
  }

  infoDictionary = [v4 infoDictionary];

  if (!infoDictionary)
  {
    v9 = sub_100063A54(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1000CD9EC();
    }

LABEL_19:
    v18 = 0;
    goto LABEL_20;
  }

  infoDictionary2 = [v5 infoDictionary];
  v9 = [infoDictionary2 objectForKey:@"CFBundleSupportedPlatforms"];

  if (v9)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v10 = v9;
      v11 = [v10 countByEnumeratingWithState:&v20 objects:v25 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v21;
        while (2)
        {
          for (i = 0; i != v12; i = i + 1)
          {
            if (*v21 != v13)
            {
              objc_enumerationMutation(v10);
            }

            if ([*(*(&v20 + 1) + 8 * i) isEqualToString:{@"MacOSX", v20}])
            {

              v18 = 1;
              v9 = v10;
              goto LABEL_20;
            }
          }

          v12 = [v10 countByEnumeratingWithState:&v20 objects:v25 count:16];
          if (v12)
          {
            continue;
          }

          break;
        }
      }
    }
  }

  v15 = +[NSFileManager defaultManager];
  v16 = [appCopy stringByAppendingPathComponent:@"Contents/MacOS"];
  v17 = [v15 fileExistsAtPath:v16 isDirectory:&v24];
  v18 = v17 & v24;

LABEL_20:
  return v18;
}

+ (id)codeSignaturePath:(id)path
{
  v3 = [path stringByAppendingPathComponent:@"Contents"];
  v4 = [v3 stringByAppendingPathComponent:@"_CodeSignature"];

  return v4;
}

@end