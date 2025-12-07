@interface _LSDAppProtectionAccessManager
+ (id)sharedInstance;
- (_LSDAppProtectionAccessManager)init;
- (id)readFromDBWithError:(id *)error;
- (id)writeToDB:(id)b;
@end

@implementation _LSDAppProtectionAccessManager

- (_LSDAppProtectionAccessManager)init
{
  v3.receiver = self;
  v3.super_class = _LSDAppProtectionAccessManager;
  result = [(_LSDAppProtectionAccessManager *)&v3 init];
  if (result)
  {
    result->_dbLock._os_unfair_lock_opaque = 0;
  }

  return result;
}

+ (id)sharedInstance
{
  if (+[_LSDAppProtectionAccessManager sharedInstance]::onceToken != -1)
  {
    +[_LSDAppProtectionAccessManager sharedInstance];
  }

  v3 = +[_LSDAppProtectionAccessManager sharedInstance]::sharedInstance;

  return v3;
}

- (id)readFromDBWithError:(id *)error
{
  v27[2] = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_dbLock);
  cache = self->_cache;
  if (!cache)
  {
    v26[0] = @"hiddenBundleIDs";
    v26[1] = @"lockedBundleIDs";
    v27[0] = MEMORY[0x1E695E0F0];
    v27[1] = MEMORY[0x1E695E0F0];
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:2];
    v7 = self->_cache;
    self->_cache = v6;

    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v10 = [__LSDefaultsGetSharedInstance(defaultManager v9)];
    path = [v10 path];
    v12 = [defaultManager fileExistsAtPath:path];

    if ((v12 & 1) == 0)
    {
      v15 = _LSAppProtectionLog(v13);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        [_LSDAppProtectionAccessManager readFromDBWithError:v15];
      }

      v16 = self->_cache;
      v19 = [__LSDefaultsGetSharedInstance(v17 v18)];
      [(NSDictionary *)v16 writeToURL:v19 error:error];
    }

    v20 = MEMORY[0x1E695DF20];
    v21 = [__LSDefaultsGetSharedInstance(v13 v14)];
    v22 = [v20 dictionaryWithContentsOfURL:v21 error:error];
    v23 = self->_cache;
    self->_cache = v22;

    cache = self->_cache;
  }

  v24 = [(NSDictionary *)cache copy];
  os_unfair_lock_unlock(&self->_dbLock);

  return v24;
}

- (id)writeToDB:(id)b
{
  bCopy = b;
  os_unfair_lock_lock(&self->_dbLock);
  v5 = [bCopy copy];
  cache = self->_cache;
  self->_cache = v5;

  v7 = self->_cache;
  v10 = [__LSDefaultsGetSharedInstance(v8 v9)];
  v13 = 0;
  [(NSDictionary *)v7 writeToURL:v10 error:&v13];
  v11 = v13;

  os_unfair_lock_unlock(&self->_dbLock);

  return v11;
}

@end