@interface SCROBrailleUIPersistenceManager
+ (id)sharedInstance;
- (id)_brailleUIDataDirectory;
- (id)_cloudDataDirectory;
- (id)_filePathForCache:(id)cache;
- (id)_loadDataFromFile:(id)file;
- (id)_localDataDirectory;
- (id)getValueForKey:(id)key cache:(id)cache;
- (void)_accessCache:(id)cache withKey:(id)key setValue:(id)value getValue:(id *)getValue maxRecordCount:(int64_t)count;
@end

@implementation SCROBrailleUIPersistenceManager

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_2 != -1)
  {
    +[SCROBrailleUIPersistenceManager sharedInstance];
  }

  v3 = sharedInstance__sharedInstance_0;

  return v3;
}

uint64_t __49__SCROBrailleUIPersistenceManager_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(SCROBrailleUIPersistenceManager);
  sharedInstance__sharedInstance_0 = v0;

  return MEMORY[0x2821F96F8](v0);
}

- (id)getValueForKey:(id)key cache:(id)cache
{
  v6 = 0;
  [(SCROBrailleUIPersistenceManager *)self _accessCache:cache withKey:key setValue:0 getValue:&v6 maxRecordCount:0x7FFFFFFFFFFFFFFFLL];
  v4 = v6;

  return v4;
}

- (void)_accessCache:(id)cache withKey:(id)key setValue:(id)value getValue:(id *)getValue maxRecordCount:(int64_t)count
{
  v52 = *MEMORY[0x277D85DE8];
  cacheCopy = cache;
  keyCopy = key;
  valueCopy = value;
  v39 = [(SCROBrailleUIPersistenceManager *)self _filePathForCache:cacheCopy];
  v13 = [(SCROBrailleUIPersistenceManager *)self _loadDataFromFile:?];
  v14 = objc_opt_new();
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v15 = v13;
  v16 = [v15 countByEnumeratingWithState:&v41 objects:v51 count:16];
  v38 = valueCopy;
  if (v16)
  {
    v35 = cacheCopy;
    v17 = 0;
    v18 = *v42;
    do
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v42 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v41 + 1) + 8 * i);
        v21 = [v20 count];
        if (v21 == 2)
        {
          v22 = [v20 objectAtIndex:0];
          v23 = [keyCopy isEqualToString:v22];

          if (v23)
          {
            v24 = [v20 objectAtIndex:1];

            v17 = v24;
          }

          else
          {
            [v14 addObject:v20];
          }
        }

        else
        {
          v25 = _SCROD_LOG(v21);
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v46 = v39;
            _os_log_impl(&dword_26490B000, v25, OS_LOG_TYPE_DEFAULT, "Corrupted Braille UI repository file: %{public}@", buf, 0xCu);
          }
        }
      }

      v16 = [v15 countByEnumeratingWithState:&v41 objects:v51 count:16];
    }

    while (v16);

    valueCopy = v38;
    if (!v38)
    {
      cacheCopy = v35;
      if (!v17)
      {
        v26 = 0;
        v16 = 0;
        goto LABEL_21;
      }

      v49 = keyCopy;
      v27 = &v49;
      v16 = v17;
      goto LABEL_19;
    }

    cacheCopy = v35;
  }

  else
  {

    v17 = 0;
    v26 = 0;
    if (!valueCopy)
    {
      goto LABEL_21;
    }
  }

  v16 = v17;
  v50 = keyCopy;
  v27 = &v50;
  v17 = valueCopy;
LABEL_19:
  v27[1] = v17;
  v26 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
  if (v26)
  {
    [v14 insertObject:v26 atIndex:0];
  }

LABEL_21:
  v28 = v14;
  if (count != 0x7FFFFFFFFFFFFFFFLL && [v14 count] > count)
  {
    [v14 removeObjectsInRange:{count, objc_msgSend(v14, "count") - count}];
  }

  v29 = [MEMORY[0x277CBEBC0] fileURLWithPath:v39];
  v40 = 0;
  v30 = [v14 writeToURL:v29 error:&v40];
  v31 = v40;

  if (!v30 || v31)
  {
    v33 = _SCROD_LOG(v32);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v46 = v39;
      v47 = 2112;
      v48 = v31;
      _os_log_impl(&dword_26490B000, v33, OS_LOG_TYPE_DEFAULT, "Braille UI failed to save cache to %@ with error %@", buf, 0x16u);
    }
  }

  if (getValue)
  {
    v34 = v16;
    *getValue = v16;
  }
}

- (id)_brailleUIDataDirectory
{
  v18 = *MEMORY[0x277D85DE8];
  _cloudDataDirectory = [(SCROBrailleUIPersistenceManager *)self _cloudDataDirectory];
  _localDataDirectory = [(SCROBrailleUIPersistenceManager *)self _localDataDirectory];
  v5 = _localDataDirectory;
  if (_cloudDataDirectory)
  {
    v6 = _cloudDataDirectory;
  }

  else
  {
    v6 = _localDataDirectory;
  }

  v7 = v6;
  if (v7)
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    if (([defaultManager fileExistsAtPath:v7]& 1) != 0)
    {
LABEL_8:
      v12 = v7;
      goto LABEL_15;
    }

    v15 = 0;
    v9 = [defaultManager createDirectoryAtPath:v7 withIntermediateDirectories:1 attributes:0 error:&v15];
    v10 = v15;
    v11 = v10;
    if (v9)
    {

      goto LABEL_8;
    }

    v13 = _SCROD_LOG(v10);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v17 = v11;
      _os_log_impl(&dword_26490B000, v13, OS_LOG_TYPE_DEFAULT, "Error creating Braille UI directory: %{public}@", buf, 0xCu);
    }
  }

  else
  {
    defaultManager = _SCROD_LOG(0);
    if (os_log_type_enabled(defaultManager, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26490B000, defaultManager, OS_LOG_TYPE_DEFAULT, "Error creating Braille UI directory URL", buf, 2u);
    }
  }

  v12 = 0;
LABEL_15:

  return v12;
}

- (id)_cloudDataDirectory
{
  v2 = +[SCROBrailleUIFinderApp cloudRootURL];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 URLByAppendingPathComponent:@".BrailleUI" isDirectory:1];
    path = [v4 path];
  }

  else
  {
    path = 0;
  }

  return path;
}

- (id)_localDataDirectory
{
  v2 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 1uLL, 1);
  lastObject = [v2 lastObject];

  v4 = [lastObject stringByAppendingPathComponent:@"Accessibility"];
  v5 = [v4 stringByAppendingPathComponent:@"BrailleUI"];

  return v5;
}

- (id)_filePathForCache:(id)cache
{
  cacheCopy = cache;
  _brailleUIDataDirectory = [(SCROBrailleUIPersistenceManager *)self _brailleUIDataDirectory];
  v6 = [cacheCopy stringByAppendingString:@"-cache.plist"];

  v7 = [_brailleUIDataDirectory stringByAppendingPathComponent:v6];

  return v7;
}

- (id)_loadDataFromFile:(id)file
{
  v11 = *MEMORY[0x277D85DE8];
  fileCopy = file;
  v4 = [MEMORY[0x277CBEBC0] URLWithString:fileCopy];
  [SCROBrailleUIUtilities tryDownloadingIfNeededForURL:v4];

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  if ([defaultManager fileExistsAtPath:fileCopy])
  {
    v6 = [MEMORY[0x277CBEA60] arrayWithContentsOfFile:fileCopy];
    if (v6)
    {
      goto LABEL_7;
    }

    v7 = _SCROD_LOG(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138543362;
      v10 = fileCopy;
      _os_log_impl(&dword_26490B000, v7, OS_LOG_TYPE_DEFAULT, "Error loading data from Braille UI repository: %{public}@", &v9, 0xCu);
    }
  }

  v6 = 0;
LABEL_7:

  return v6;
}

@end