@interface NPSPrefPlistSizeUtil
+ (id)_domainPlistPathFor:(id)for inContainer:(id)container;
+ (unint64_t)prefSizeFor:(id)for inContainer:(id)container;
+ (unint64_t)sizeForPlistAtPath:(id)path;
@end

@implementation NPSPrefPlistSizeUtil

+ (unint64_t)sizeForPlistAtPath:(id)path
{
  v21 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  if (!pathCopy || ([MEMORY[0x1E696AC08] defaultManager], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "fileExistsAtPath:", pathCopy), v4, !v5))
  {
    v11 = nps_framework_log;
    if (os_log_type_enabled(nps_framework_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v18 = pathCopy;
      _os_log_impl(&dword_1C0D93000, v11, OS_LOG_TYPE_DEFAULT, "Unable to locate prefs for domain %@", buf, 0xCu);
    }

    goto LABEL_11;
  }

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v16 = 0;
  v7 = [defaultManager attributesOfItemAtPath:pathCopy error:&v16];
  v8 = v16;

  if (!v7 || v8)
  {
    v12 = nps_framework_log;
    if (os_log_type_enabled(nps_framework_log, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v12;
      localizedDescription = [v8 localizedDescription];
      *buf = 138412546;
      v18 = pathCopy;
      v19 = 2112;
      v20 = localizedDescription;
      _os_log_impl(&dword_1C0D93000, v13, OS_LOG_TYPE_DEFAULT, "Unable to extract attributes for %@ : %@", buf, 0x16u);
    }

LABEL_11:
    unsignedLongLongValue = 0;
    goto LABEL_12;
  }

  v9 = [v7 objectForKeyedSubscript:*MEMORY[0x1E696A3B8]];
  unsignedLongLongValue = [v9 unsignedLongLongValue];

LABEL_12:
  return unsignedLongLongValue;
}

+ (unint64_t)prefSizeFor:(id)for inContainer:(id)container
{
  v5 = [self _domainPlistPathFor:for inContainer:container];
  v6 = [self sizeForPlistAtPath:v5];

  return v6;
}

+ (id)_domainPlistPathFor:(id)for inContainer:(id)container
{
  v20 = *MEMORY[0x1E69E9840];
  forCopy = for;
  containerCopy = container;
  v7 = [@"/" stringByAppendingPathComponent:@"var/mobile"];
  if (containerCopy)
  {
    v8 = [containerCopy copy];

    v7 = v8;
  }

  v9 = [v7 stringByAppendingPathComponent:@"Library/Preferences"];

  v10 = [forCopy stringByAppendingString:@".plist"];
  v11 = [v9 stringByAppendingPathComponent:v10];

  v12 = nps_framework_log;
  if (os_log_type_enabled(nps_framework_log, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412802;
    v15 = forCopy;
    v16 = 2112;
    v17 = containerCopy;
    v18 = 2112;
    v19 = v11;
    _os_log_impl(&dword_1C0D93000, v12, OS_LOG_TYPE_DEFAULT, "Domain: %@ Container: %@ Path: %@", &v14, 0x20u);
  }

  return v11;
}

@end