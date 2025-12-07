@interface WebStorageManager
+ (id)_storageDirectoryPath;
+ (id)sharedWebStorageManager;
- (WebStorageManager)init;
- (id)origins;
- (unint64_t)diskUsageForOrigin:(id)origin;
- (void)deleteAllOrigins;
- (void)deleteOrigin:(id)origin;
- (void)syncFileSystemAndTrackerDatabase;
@end

@implementation WebStorageManager

+ (id)sharedWebStorageManager
{
  if (_MergedGlobals_26 == 1)
  {
    return qword_1ED6A62E8;
  }

  result = objc_alloc_init(WebStorageManager);
  qword_1ED6A62E8 = result;
  _MergedGlobals_26 = 1;
  return result;
}

- (WebStorageManager)init
{
  v4.receiver = self;
  v4.super_class = WebStorageManager;
  result = [(WebStorageManager *)&v4 init];
  if (result)
  {
    v3 = result;
    WebKitInitializeStorageIfNecessary();
    return v3;
  }

  return result;
}

- (id)origins
{
  WebKit::StorageTracker::tracker(self, a2);
  WebKit::StorageTracker::origins(v2, v3, &v20);
  v4 = objc_alloc(MEMORY[0x1E695DF70]);
  v6 = [v4 initWithCapacity:v22];
  if (v22)
  {
    v7 = v20;
    v8 = 32 * v22;
    while (1)
    {
      v9 = [WebSecurityOrigin alloc];
      WebCore::SecurityOriginData::securityOrigin(&v23, v7);
      v10 = [(WebSecurityOrigin *)v9 _initWithWebCoreSecurityOrigin:v23];
      v11 = v23;
      v23 = 0;
      if (v11)
      {
        if (atomic_fetch_add(v11, 0xFFFFFFFF) == 1)
        {
          break;
        }
      }

      if (v10)
      {
        goto LABEL_7;
      }

LABEL_3:
      v7 = (v7 + 32);
      v8 -= 32;
      if (!v8)
      {
        goto LABEL_10;
      }
    }

    atomic_store(1u, v11);
    WebCore::SecurityOrigin::~SecurityOrigin(v11, v5);
    WTF::fastFree(v12, v13);
    if (!v10)
    {
      goto LABEL_3;
    }

LABEL_7:
    [v6 addObject:v10];

    goto LABEL_3;
  }

LABEL_10:
  if (v6)
  {
    v14 = v6;
  }

  v15 = v20;
  if (v22)
  {
    v16 = 32 * v22;
    do
    {
      if (!*(v15 + 24))
      {
        v17 = *(v15 + 1);
        *(v15 + 1) = 0;
        if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v17, v5);
        }

        v18 = *v15;
        *v15 = 0;
        if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v18, v5);
        }
      }

      *(v15 + 24) = -1;
      v15 = (v15 + 32);
      v16 -= 32;
    }

    while (v16);
    v15 = v20;
  }

  if (v15)
  {
    v20 = 0;
    v21 = 0;
    WTF::fastFree(v15, v5);
  }

  return v6;
}

- (void)deleteAllOrigins
{
  WebKit::StorageTracker::tracker(self, a2);
  WebKit::StorageTracker::deleteAllOrigins(v2);
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v4 = +[WebStorageManager _storageDirectoryPath];

  [defaultManager removeItemAtPath:v4 error:0];
}

- (void)deleteOrigin:(id)origin
{
  v4 = WebKit::StorageTracker::tracker(self, a2);
  v6 = v5;
  v7 = ([origin _core] + 8);

  WebKit::StorageTracker::deleteOrigin(v6, v7);
}

- (unint64_t)diskUsageForOrigin:(id)origin
{
  v4 = WebKit::StorageTracker::tracker(self, a2);
  v6 = v5;
  _core = [origin _core];

  return WebKit::StorageTracker::diskUsageForOrigin(v6, _core);
}

- (void)syncFileSystemAndTrackerDatabase
{
  WebKit::StorageTracker::tracker(self, a2);

  WebKit::StorageTracker::syncFileSystemAndTrackerDatabase(v2);
}

+ (id)_storageDirectoryPath
{
  if (byte_1ED6A62E1)
  {
    if (qword_1ED6A62F8 == -1)
    {
      return qword_1ED6A62F0;
    }
  }

  else
  {
    qword_1ED6A62F0 = 0;
    byte_1ED6A62E1 = 1;
    if (qword_1ED6A62F8 == -1)
    {
      return qword_1ED6A62F0;
    }
  }

  dispatch_once(&qword_1ED6A62F8, &__block_literal_global_5);
  return qword_1ED6A62F0;
}

void __42__WebStorageManager__storageDirectoryPath__block_invoke()
{
  v9 = [objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")];
  if (v9 && (v0 = v9, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v1 = v9;
  }

  else
  {
    v2 = [-[NSArray objectAtIndex:](NSSearchPathForDirectoriesInDomains(NSLibraryDirectory 1uLL];
    v3 = v2;
    if (v2)
    {
      v4 = v2;
    }

    if (v9)
    {
    }

    v1 = v3;
  }

  v10 = v1;
  v5 = [v1 stringByStandardizingPath];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  v8 = qword_1ED6A62F0;
  qword_1ED6A62F0 = v6;
  if (v8)
  {
  }

  if (v10)
  {
  }
}

@end