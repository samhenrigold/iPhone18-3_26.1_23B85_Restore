@interface DELoggingPreferences
+ (id)_subsystemPayloadForURL:(id)l error:(id *)error;
+ (id)combinedLoggingPayloadForURLs:(id)ls error:(id *)error;
+ (id)loggingPayloadForURL:(id)l error:(id *)error;
+ (id)managedLoggingProfilesDirectory;
+ (id)managedLoggingProfilesDirectoryForSessionIdentifier:(id)identifier createIfNeeded:(BOOL)needed error:(id *)error;
+ (id)removeLoggingProfileForSessionIdentifier:(id)identifier extensionIdentifier:(id)extensionIdentifier error:(id *)error;
+ (unint64_t)numberOfManagedLoggingPreferences;
+ (void)installLoggingProfile:(id)profile sessionIdentifier:(id)identifier extensionIdentifier:(id)extensionIdentifier error:(id *)error;
@end

@implementation DELoggingPreferences

+ (void)installLoggingProfile:(id)profile sessionIdentifier:(id)identifier extensionIdentifier:(id)extensionIdentifier error:(id *)error
{
  v19 = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  extensionIdentifierCopy = extensionIdentifier;
  v12 = [self managedLoggingProfilesDirectoryForSessionIdentifier:identifier createIfNeeded:1 error:error];
  v13 = [v12 URLByAppendingPathComponent:extensionIdentifierCopy];

  v14 = [v13 URLByAppendingPathExtension:@"plist"];

  [profileCopy writeToURL:v14 error:error];
  if (!*error)
  {
    OSLogInstallProfilePayload();
    if (*error)
    {
      v15 = +[DELogging fwHandle];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v17 = 138543362;
        v18 = v14;
        _os_log_impl(&dword_248AB3000, v15, OS_LOG_TYPE_INFO, "Failed to install logging preference payload. Deleting [%{public}@]", &v17, 0xCu);
      }

      defaultManager = [MEMORY[0x277CCAA00] defaultManager];
      [defaultManager removeItemAtURL:v14 error:0];
    }
  }
}

+ (id)removeLoggingProfileForSessionIdentifier:(id)identifier extensionIdentifier:(id)extensionIdentifier error:(id *)error
{
  v28[1] = *MEMORY[0x277D85DE8];
  extensionIdentifierCopy = extensionIdentifier;
  v9 = [self managedLoggingProfilesDirectoryForSessionIdentifier:identifier createIfNeeded:0 error:0];
  v10 = [v9 URLByAppendingPathComponent:extensionIdentifierCopy];

  v11 = [v10 URLByAppendingPathExtension:@"plist"];

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  path = [v11 path];
  v14 = [defaultManager fileExistsAtPath:path];

  v15 = 0;
  if (v14)
  {
    v15 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithContentsOfURL:v11];
    if (v15)
    {
      OSLogRemoveProfilePayload();
      if (!*error)
      {
        defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
        [defaultManager2 removeItemAtURL:v11 error:error];

        v17 = [DEUtils lsDir:v9];
        v18 = [v17 count];

        if (!v18)
        {
          v19 = +[DELogging fwHandle];
          if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
          {
            v25 = 138543362;
            v26 = v9;
            _os_log_impl(&dword_248AB3000, v19, OS_LOG_TYPE_INFO, "Deleting [%{public}@]", &v25, 0xCu);
          }

          defaultManager3 = [MEMORY[0x277CCAA00] defaultManager];
          [defaultManager3 removeItemAtURL:v9 error:error];
        }
      }

      v21 = v15;
    }

    else
    {
      v22 = MEMORY[0x277CCA9B8];
      v27 = @"url";
      v28[0] = v11;
      v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:&v27 count:1];
      *error = [v22 errorWithDomain:@"DEExtensionErrorDomain" code:3 userInfo:v23];
    }
  }

  return v15;
}

+ (id)loggingPayloadForURL:(id)l error:(id *)error
{
  v9[1] = *MEMORY[0x277D85DE8];
  v4 = [self _subsystemPayloadForURL:l error:error];
  v5 = v4;
  if (v4)
  {
    v8 = @"Subsystems";
    v9[0] = v4;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)combinedLoggingPayloadForURLs:(id)ls error:(id *)error
{
  errorCopy = error;
  v40 = *MEMORY[0x277D85DE8];
  lsCopy = ls;
  v26 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(lsCopy, "count")}];
  v28 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(lsCopy, "count")}];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = lsCopy;
  v5 = [obj countByEnumeratingWithState:&v31 objects:v39 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v32;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v32 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v31 + 1) + 8 * i);
        v30 = 0;
        v10 = [self _subsystemPayloadForURL:v9 error:{&v30, errorCopy}];
        v11 = v30;
        if (v10)
        {
          allKeys = [v10 allKeys];
          firstObject = [allKeys firstObject];
          v14 = [v10 objectForKeyedSubscript:firstObject];
          allKeys2 = [v10 allKeys];
          firstObject2 = [allKeys2 firstObject];
          [v28 setObject:v14 forKeyedSubscript:firstObject2];
        }

        else
        {
          [v26 addObject:v11];
        }
      }

      v6 = [obj countByEnumeratingWithState:&v31 objects:v39 count:16];
    }

    while (v6);
  }

  if (errorCopy && [v26 count])
  {
    v17 = MEMORY[0x277CCA9B8];
    v37 = @"errors";
    v18 = [MEMORY[0x277CBEA60] arrayWithArray:v26];
    v38 = v18;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
    *errorCopy = [v17 errorWithDomain:@"DEExtensionErrorDomain" code:1 userInfo:v19];
  }

  allKeys3 = [v28 allKeys];
  v21 = [allKeys3 count];

  if (v21)
  {
    v35 = @"Subsystems";
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v28];
    v36 = v22;
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

+ (id)_subsystemPayloadForURL:(id)l error:(id *)error
{
  v19[1] = *MEMORY[0x277D85DE8];
  lCopy = l;
  v6 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithContentsOfURL:lCopy];
  if (v6)
  {
    uRLByDeletingPathExtension = [lCopy URLByDeletingPathExtension];
    lastPathComponent = [uRLByDeletingPathExtension lastPathComponent];

    if (lastPathComponent)
    {
      v14 = lastPathComponent;
      v15 = v6;
      v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    }

    else
    {
      if (error)
      {
        v11 = MEMORY[0x277CCA9B8];
        v16 = @"url";
        v17 = lCopy;
        v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
        *error = [v11 errorWithDomain:@"DEExtensionErrorDomain" code:4 userInfo:v12];
      }

      v9 = 0;
    }

    goto LABEL_9;
  }

  if (error)
  {
    v10 = MEMORY[0x277CCA9B8];
    v18 = @"url";
    v19[0] = lCopy;
    lastPathComponent = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    [v10 errorWithDomain:@"DEExtensionErrorDomain" code:2 userInfo:lastPathComponent];
    *error = v9 = 0;
LABEL_9:

    goto LABEL_10;
  }

  v9 = 0;
LABEL_10:

  return v9;
}

+ (unint64_t)numberOfManagedLoggingPreferences
{
  v3 = objc_autoreleasePoolPush();
  managedLoggingProfilesDirectory = [self managedLoggingProfilesDirectory];
  v5 = [DEUtils findAllItems:managedLoggingProfilesDirectory includeDirs:0];
  v6 = [v5 count];

  objc_autoreleasePoolPop(v3);
  return v6;
}

+ (id)managedLoggingProfilesDirectory
{
  v2 = [DEUtils applicationSupportDirectoryForApp:@"com.apple.diagnosticextensions"];
  v3 = [v2 URLByAppendingPathComponent:@"LoggingProfiles"];

  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v5 = +[DELogging fwHandle];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      +[(DELoggingPreferences *)v5];
    }

    v6 = MEMORY[0x277CBEBC0];
    v7 = NSHomeDirectory();
    v4 = [v6 fileURLWithPath:v7 isDirectory:1];
  }

  return v4;
}

+ (id)managedLoggingProfilesDirectoryForSessionIdentifier:(id)identifier createIfNeeded:(BOOL)needed error:(id *)error
{
  neededCopy = needed;
  identifierCopy = identifier;
  managedLoggingProfilesDirectory = [self managedLoggingProfilesDirectory];
  v10 = [managedLoggingProfilesDirectory URLByAppendingPathComponent:identifierCopy];

  if (neededCopy)
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    path = [v10 path];
    v13 = [defaultManager fileExistsAtPath:path];

    if ((v13 & 1) == 0)
    {
      defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
      [defaultManager2 createDirectoryAtURL:v10 withIntermediateDirectories:1 attributes:0 error:error];
    }
  }

  return v10;
}

@end