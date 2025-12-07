@interface FMDProtectedContext
+ (id)directoryURLForContextKey:(id)key;
+ (id)rootDirectoryURL;
- (FMDProtectedContext)initWithContextKey:(id)key contextUUID:(id)d;
- (id)context:(id *)context;
- (id)contextForContextKey:(id)key error:(id *)error;
- (id)fileURLForContextKey:(id)key;
- (void)saveContext:(id)context;
- (void)saveForContextKey:(id)key;
- (void)setProtectionClass:(int64_t)class;
- (void)setupDataArchiverWithURL:(id)l;
@end

@implementation FMDProtectedContext

- (FMDProtectedContext)initWithContextKey:(id)key contextUUID:(id)d
{
  keyCopy = key;
  dCopy = d;
  v14.receiver = self;
  v14.super_class = FMDProtectedContext;
  v8 = [(FMDProtectedContext *)&v14 init];
  v9 = v8;
  if (v8)
  {
    [(FMDProtectedContext *)v8 setContextKey:keyCopy];
    if (dCopy)
    {
      [(FMDProtectedContext *)v9 setContextUUID:dCopy];
    }

    else
    {
      v10 = +[NSUUID UUID];
      [(FMDProtectedContext *)v9 setContextUUID:v10];
    }

    [(FMDProtectedContext *)v9 setProtectionClass:2];
    contextKey = [(FMDProtectedContext *)v9 contextKey];
    v12 = [(FMDProtectedContext *)v9 fileURLForContextKey:contextKey];

    [(FMDProtectedContext *)v9 setupDataArchiverWithURL:v12];
  }

  return v9;
}

- (void)setProtectionClass:(int64_t)class
{
  self->_protectionClass = class;
  _fmDataProtectionClass = [(FMDProtectedContext *)self _fmDataProtectionClass];
  dataArchiver = [(FMDProtectedContext *)self dataArchiver];
  [dataArchiver setDataProtectionClass:_fmDataProtectionClass];
}

- (void)setupDataArchiverWithURL:(id)l
{
  lCopy = l;
  if (lCopy)
  {
    v5 = [[FMDataArchiver alloc] initWithFileURL:lCopy];
    [v5 setBackedUp:0];
    [v5 setCreateDirectories:1];
    [v5 setDataProtectionClass:[(FMDProtectedContext *)self _fmDataProtectionClass]];
    [(FMDProtectedContext *)self setDataArchiver:v5];
  }

  else
  {
    v5 = sub_100002880(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100226D88(self, v5);
    }
  }
}

- (void)saveContext:(id)context
{
  contextCopy = context;
  contextKey = [(FMDProtectedContext *)self contextKey];
  v8 = contextKey;
  v9 = contextCopy;
  v6 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];

  [(FMDProtectedContext *)self setContextDictionary:v6];
  contextKey2 = [(FMDProtectedContext *)self contextKey];
  [(FMDProtectedContext *)self saveForContextKey:contextKey2];
}

- (id)context:(id *)context
{
  contextKey = [(FMDProtectedContext *)self contextKey];
  v6 = [(FMDProtectedContext *)self contextForContextKey:contextKey error:context];

  return v6;
}

+ (id)directoryURLForContextKey:(id)key
{
  keyCopy = key;
  v4 = keyCopy;
  if (keyCopy)
  {
    rootDirectoryURL = [objc_opt_class() rootDirectoryURL];
    lastPathComponent = [v4 lastPathComponent];
    v7 = [rootDirectoryURL URLByAppendingPathComponent:lastPathComponent isDirectory:1];
  }

  else
  {
    v7 = 0;
  }

  v8 = sub_100002880(keyCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v10 = 138412290;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "New protected context directory URL %@", &v10, 0xCu);
  }

  return v7;
}

+ (id)rootDirectoryURL
{
  if (+[FMDProtectedContext isUnittest])
  {
    v2 = +[FMDProtectedContext unittestRootURL];
  }

  else
  {
    v3 = objc_alloc_init(FMInternalFileContainer);
    v4 = [v3 url];
    v5 = [v4 fm_preferencesPathURLForDomain:@"com.apple.icloud.findmydeviced.protectedcontext"];

    uRLByDeletingLastPathComponent = [v5 URLByDeletingLastPathComponent];
    v2 = [uRLByDeletingLastPathComponent URLByAppendingPathComponent:@"protectedContexts" isDirectory:1];

    v8 = sub_100002880(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      sub_100226E1C();
    }
  }

  return v2;
}

- (id)fileURLForContextKey:(id)key
{
  v4 = [FMDProtectedContext directoryURLForContextKey:key];
  contextUUID = [(FMDProtectedContext *)self contextUUID];

  if (contextUUID)
  {
    contextUUID2 = [(FMDProtectedContext *)self contextUUID];
    uUIDString = [contextUUID2 UUIDString];

    contextUUID = [v4 URLByAppendingPathComponent:uUIDString isDirectory:0];
    v8 = sub_100002880(contextUUID);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      sub_100226E84();
    }
  }

  return contextUUID;
}

- (id)contextForContextKey:(id)key error:(id *)error
{
  keyCopy = key;
  contextDictionary = [(FMDProtectedContext *)self contextDictionary];
  v8 = [contextDictionary copy];

  if (!v8)
  {
    v10 = sub_100002880(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      sub_100226EEC();
    }

    dataArchiver = [(FMDProtectedContext *)self dataArchiver];
    v12 = [NSSet setWithObject:objc_opt_class()];
    v22 = 0;
    v8 = [dataArchiver readDictionaryAndClasses:v12 error:&v22];
    v13 = v22;

    if (v13)
    {
      v15 = sub_100002880(v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v26 = keyCopy;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Unable to read %@", buf, 0xCu);
      }

      v16 = +[FMDEventLoggerGeneral sharedInstance];
      [v16 sendError:v13 forEventName:@"FMDProtectedContextFailedReadEventName"];

      v23 = NSUnderlyingErrorKey;
      v24 = v13;
      v17 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
      v18 = [NSError errorWithDomain:@"com.apple.icloud.findmydeviced.protectedcontext" code:1 userInfo:v17];

      if (error)
      {
        v19 = v18;
        *error = v18;
      }
    }

    [(FMDProtectedContext *)self setContextDictionary:v8];
  }

  v20 = [v8 objectForKeyedSubscript:keyCopy];

  return v20;
}

- (void)saveForContextKey:(id)key
{
  contextDictionary = [(FMDProtectedContext *)self contextDictionary];

  if (contextDictionary)
  {
    v6 = sub_100002880(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_100226F54(self, v6);
    }

    dataArchiver = [(FMDProtectedContext *)self dataArchiver];
    contextDictionary2 = [(FMDProtectedContext *)self contextDictionary];
    v9 = [dataArchiver saveDictionary:contextDictionary2];

    if (v9)
    {
      v11 = sub_100002880(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_100226FE8(v9, v11);
      }
    }
  }
}

@end