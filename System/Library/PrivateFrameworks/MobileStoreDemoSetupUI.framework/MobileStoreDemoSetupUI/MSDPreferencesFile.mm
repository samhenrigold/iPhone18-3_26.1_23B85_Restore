@interface MSDPreferencesFile
+ (BOOL)preferencesFileExists;
+ (id)preferencesFilePath;
+ (id)preferencesFileUrl;
+ (id)sharedInstance;
- (BOOL)removeObjectForKey:(id)key;
- (BOOL)removeObjectsForKeys:(id)keys;
- (BOOL)saveCache;
- (BOOL)setObject:(id)object forKey:(id)key;
- (MSDPreferencesFile)init;
- (id)deepCopy:(id)copy;
- (id)objectForKey:(id)key;
- (void)populateCache;
- (void)raiseInvalidPropertyListObjectExceptionForObject:(id)object;
- (void)reload;
@end

@implementation MSDPreferencesFile

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[MSDPreferencesFile sharedInstance];
  }

  v3 = sharedInstance_sharedInstance;

  return v3;
}

uint64_t __36__MSDPreferencesFile_sharedInstance__block_invoke()
{
  sharedInstance_sharedInstance = objc_alloc_init(MSDPreferencesFile);

  return MEMORY[0x2821F96F8]();
}

- (MSDPreferencesFile)init
{
  v5.receiver = self;
  v5.super_class = MSDPreferencesFile;
  v2 = [(MSDPreferencesFile *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(MSDPreferencesFile *)v2 populateCache];
  }

  return v3;
}

+ (id)preferencesFilePath
{
  v2 = +[MSDPreferencesFile preferencesFileUrl];
  path = [v2 path];

  return path;
}

+ (BOOL)preferencesFileExists
{
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v3 = +[MSDPreferencesFile preferencesFilePath];
  v4 = [defaultManager fileExistsAtPath:v3];

  return v4;
}

- (void)reload
{
  obj = self;
  objc_sync_enter(obj);
  [(MSDPreferencesFile *)obj populateCache];
  objc_sync_exit(obj);
}

- (id)objectForKey:(id)key
{
  keyCopy = key;
  if (keyCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    cache = [(MSDPreferencesFile *)selfCopy cache];
    v7 = [cache objectForKey:keyCopy];

    objc_sync_exit(selfCopy);
  }

  else
  {
    [MSDPreferencesFile objectForKey:?];
    v7 = 0;
  }

  return v7;
}

- (BOOL)setObject:(id)object forKey:(id)key
{
  v20 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  keyCopy = key;
  v8 = keyCopy;
  if (!objectCopy || !keyCopy)
  {
    selfCopy = defaultLogHandle(keyCopy);
    if (os_log_type_enabled(&selfCopy->super, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 136446210;
      v19 = "[MSDPreferencesFile setObject:forKey:]";
      v16 = "%{public}s - Both object and key must be non-nil.";
LABEL_13:
      _os_log_impl(&dword_259BCA000, &selfCopy->super, OS_LOG_TYPE_DEFAULT, v16, &v18, 0xCu);
    }

LABEL_14:
    saveCache = 0;
    goto LABEL_15;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if ((isKindOfClass & 1) == 0)
  {
    selfCopy = defaultLogHandle(isKindOfClass);
    if (os_log_type_enabled(&selfCopy->super, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 136446210;
      v19 = "[MSDPreferencesFile setObject:forKey:]";
      v16 = "%{public}s - Key must be of type NSString.";
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  v10 = [MEMORY[0x277CCAC58] propertyList:objectCopy isValidForFormat:100];
  if ((v10 & 1) == 0)
  {
    v10 = [(MSDPreferencesFile *)self raiseInvalidPropertyListObjectExceptionForObject:objectCopy];
  }

  v11 = defaultLogHandle(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [(MSDPreferencesFile *)v8 setObject:objectCopy forKey:v11];
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  cache = [(MSDPreferencesFile *)selfCopy cache];
  v14 = [(MSDPreferencesFile *)selfCopy deepCopy:objectCopy];
  [cache setObject:v14 forKey:v8];

  saveCache = [(MSDPreferencesFile *)selfCopy saveCache];
  objc_sync_exit(selfCopy);
LABEL_15:

  return saveCache;
}

- (BOOL)removeObjectForKey:(id)key
{
  keyCopy = key;
  if (keyCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    cache = [(MSDPreferencesFile *)selfCopy cache];
    [cache removeObjectForKey:keyCopy];

    saveCache = [(MSDPreferencesFile *)selfCopy saveCache];
    objc_sync_exit(selfCopy);
  }

  else
  {
    [MSDPreferencesFile removeObjectForKey:?];
    saveCache = 0;
  }

  return saveCache;
}

- (BOOL)removeObjectsForKeys:(id)keys
{
  keysCopy = keys;
  if (keysCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    cache = [(MSDPreferencesFile *)selfCopy cache];
    [cache removeObjectsForKeys:keysCopy];

    saveCache = [(MSDPreferencesFile *)selfCopy saveCache];
    objc_sync_exit(selfCopy);
  }

  else
  {
    [MSDPreferencesFile removeObjectsForKeys:?];
    saveCache = 0;
  }

  return saveCache;
}

- (void)populateCache
{
  v18 = *MEMORY[0x277D85DE8];
  if (!+[MSDPreferencesFile preferencesFileExists])
  {
LABEL_7:
    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [(MSDPreferencesFile *)self setCache:v5];
    goto LABEL_8;
  }

  v3 = MEMORY[0x277CBEAC0];
  v4 = +[MSDPreferencesFile preferencesFileUrl];
  v11 = 0;
  v5 = [v3 dictionaryWithContentsOfURL:v4 error:&v11];
  v6 = v11;

  if (!v5)
  {
    v9 = defaultLogHandle(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = +[MSDPreferencesFile preferencesFilePath];
      *buf = 136446722;
      v13 = "[MSDPreferencesFile populateCache]";
      v14 = 2114;
      v15 = v10;
      v16 = 2114;
      v17 = v6;
      _os_log_impl(&dword_259BCA000, v9, OS_LOG_TYPE_DEFAULT, "%{public}s - Failed to read preferences file:  %{public}@ - Error:  %{public}@", buf, 0x20u);
    }

    goto LABEL_7;
  }

  v8 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v5];
  [(MSDPreferencesFile *)self setCache:v8];

LABEL_8:
}

- (BOOL)saveCache
{
  v17 = *MEMORY[0x277D85DE8];
  cache = [(MSDPreferencesFile *)self cache];
  v3 = +[MSDPreferencesFile preferencesFileUrl];
  v10 = 0;
  v4 = [cache writeToURL:v3 error:&v10];
  v5 = v10;

  if ((v4 & 1) == 0)
  {
    v7 = defaultLogHandle(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = +[MSDPreferencesFile preferencesFilePath];
      *buf = 136446722;
      v12 = "[MSDPreferencesFile saveCache]";
      v13 = 2114;
      v14 = v8;
      v15 = 2114;
      v16 = v5;
      _os_log_impl(&dword_259BCA000, v7, OS_LOG_TYPE_DEFAULT, "%{public}s - Failed to save preferences file:  %{public}@ - Error:  %{public}@", buf, 0x20u);
    }
  }

  return v4;
}

- (void)raiseInvalidPropertyListObjectExceptionForObject:(id)object
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCACA8];
  objectCopy = object;
  v5 = [v3 stringWithFormat:@"Object %@ of type %@ is not a valid property list object.", objectCopy, objc_opt_class()];

  v6 = [MEMORY[0x277CBEAD8] exceptionWithName:@"InvalidPropertyListObject" reason:v5 userInfo:0];
  v7 = defaultLogHandle(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v9 = "[MSDPreferencesFile raiseInvalidPropertyListObjectExceptionForObject:]";
    v10 = 2114;
    v11 = v6;
    _os_log_impl(&dword_259BCA000, v7, OS_LOG_TYPE_DEFAULT, "%{public}s - Exception:  %{public}@", buf, 0x16u);
  }

  [v6 raise];
}

+ (id)preferencesFileUrl
{
  if (preferencesFileUrl_onceToken != -1)
  {
    +[MSDPreferencesFile preferencesFileUrl];
  }

  v3 = preferencesFileUrl_fileUrl;

  return v3;
}

void __40__MSDPreferencesFile_preferencesFileUrl__block_invoke()
{
  v0 = [@"/private/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/Metadata" stringByAppendingPathComponent:@"com.apple.MobileStoreDemo"];
  v3 = [v0 stringByAppendingPathExtension:@"plist"];

  v1 = [MEMORY[0x277CBEBC0] fileURLWithPath:v3 isDirectory:0];
  v2 = preferencesFileUrl_fileUrl;
  preferencesFileUrl_fileUrl = v1;
}

- (id)deepCopy:(id)copy
{
  DeepCopy = CFPropertyListCreateDeepCopy(*MEMORY[0x277CBECE8], copy, 0);

  return DeepCopy;
}

- (void)objectForKey:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v1 = defaultLogHandle(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    LODWORD(v8) = 136446210;
    *(&v8 + 4) = "[MSDPreferencesFile objectForKey:]";
    OUTLINED_FUNCTION_0(&dword_259BCA000, v2, v3, "%{public}s - Key is nil.", v4, v5, v6, v7, v8, DWORD2(v8));
  }
}

- (void)setObject:(os_log_t)log forKey:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138543618;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_debug_impl(&dword_259BCA000, log, OS_LOG_TYPE_DEBUG, "Setting preference %{public}@:%{public}@", &v3, 0x16u);
}

- (void)removeObjectForKey:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v1 = defaultLogHandle(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    LODWORD(v8) = 136446210;
    *(&v8 + 4) = "[MSDPreferencesFile removeObjectForKey:]";
    OUTLINED_FUNCTION_0(&dword_259BCA000, v2, v3, "%{public}s - Key is nil.", v4, v5, v6, v7, v8, DWORD2(v8));
  }
}

- (void)removeObjectsForKeys:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v1 = defaultLogHandle(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    LODWORD(v8) = 136446210;
    *(&v8 + 4) = "[MSDPreferencesFile removeObjectsForKeys:]";
    OUTLINED_FUNCTION_0(&dword_259BCA000, v2, v3, "%{public}s - Keys array pointer is nil.", v4, v5, v6, v7, v8, DWORD2(v8));
  }
}

@end