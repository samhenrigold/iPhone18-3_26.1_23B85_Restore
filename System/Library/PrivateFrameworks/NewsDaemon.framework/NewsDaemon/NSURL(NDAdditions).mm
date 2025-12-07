@interface NSURL(NDAdditions)
+ (id)newsdDocumentsURL;
+ (id)newsdGroupContainerURL;
+ (void)newsdCachesURL;
@end

@implementation NSURL(NDAdditions)

+ (id)newsdGroupContainerURL
{
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v1 = [defaultManager containerURLForSecurityApplicationGroupIdentifier:@"group.com.apple.newsd"];

  if (!v1)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE648] format:@"newsd was unable to use the group container for content storage"];
  }

  return v1;
}

+ (void)newsdCachesURL
{
  v39 = *MEMORY[0x277D85DE8];
  newsdGroupContainerURL = [MEMORY[0x277CBEBC0] newsdGroupContainerURL];
  v1 = [newsdGroupContainerURL URLByAppendingPathComponent:@"Library/Caches" isDirectory:1];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v29 = newsdGroupContainerURL;
  v3 = [defaultManager contentsOfDirectoryAtURL:newsdGroupContainerURL includingPropertiesForKeys:0 options:4 error:0];

  v4 = [v3 countByEnumeratingWithState:&v32 objects:v38 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v33;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v33 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v32 + 1) + 8 * i);
        lastPathComponent = [v8 lastPathComponent];
        if ([lastPathComponent hasPrefix:@"shared-assets"])
        {
        }

        else
        {
          lastPathComponent2 = [v8 lastPathComponent];
          v11 = [lastPathComponent2 hasPrefix:@"com.apple.news"];

          if (!v11)
          {
            continue;
          }
        }

        lastPathComponent3 = [v8 lastPathComponent];
        v13 = [v1 URLByAppendingPathComponent:lastPathComponent3];

        v14 = *MEMORY[0x277D30B10];
        if (os_log_type_enabled(*MEMORY[0x277D30B10], OS_LOG_TYPE_DEFAULT))
        {
          v15 = v14;
          lastPathComponent4 = [v8 lastPathComponent];
          *buf = 138543362;
          v37 = lastPathComponent4;
          _os_log_impl(&dword_25BE24000, v15, OS_LOG_TYPE_DEFAULT, "will move %{public}@ from group container root to Caches directory", buf, 0xCu);
        }

        defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
        v31 = 0;
        v18 = [defaultManager2 moveItemAtURL:v8 toURL:v13 error:&v31];
        v19 = v31;

        if ((v18 & 1) == 0)
        {
          v20 = *MEMORY[0x277D30B10];
          if (os_log_type_enabled(*MEMORY[0x277D30B10], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v37 = v19;
            _os_log_impl(&dword_25BE24000, v20, OS_LOG_TYPE_DEFAULT, "failed to move file from group container root to Caches directory with error: %{public}@", buf, 0xCu);
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v32 objects:v38 count:16];
    }

    while (v5);
  }

  defaultManager3 = [MEMORY[0x277CCAA00] defaultManager];
  v30 = 0;
  [defaultManager3 createDirectoryAtURL:v1 withIntermediateDirectories:1 attributes:0 error:&v30];
  v22 = v30;

  v23 = FCURLForFeldsparUserAccountHomeDirectory();
  v24 = [v23 URLByAppendingPathComponent:@"newsd" isDirectory:1];

  defaultManager4 = [MEMORY[0x277CCAA00] defaultManager];
  [defaultManager4 fc_removeContentsOfDirectoryAtURL:v24];

  v26 = *MEMORY[0x277D30B10];
  if (os_log_type_enabled(*MEMORY[0x277D30B10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v37 = v1;
    _os_log_impl(&dword_25BE24000, v26, OS_LOG_TYPE_DEFAULT, "will store newsd caches at %{public}@", buf, 0xCu);
  }

  v27 = v1;

  return v1;
}

+ (id)newsdDocumentsURL
{
  v10 = *MEMORY[0x277D85DE8];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v1 = [defaultManager containerURLForSecurityApplicationGroupIdentifier:@"group.com.apple.newsd"];

  v2 = [v1 URLByAppendingPathComponent:@"Documents" isDirectory:1];
  defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
  v7 = 0;
  [defaultManager2 createDirectoryAtURL:v2 withIntermediateDirectories:1 attributes:0 error:&v7];
  v4 = v7;

  v5 = *MEMORY[0x277D30B10];
  if (os_log_type_enabled(*MEMORY[0x277D30B10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v9 = v2;
    _os_log_impl(&dword_25BE24000, v5, OS_LOG_TYPE_DEFAULT, "will store newsd documents at %{public}@", buf, 0xCu);
  }

  return v2;
}

@end