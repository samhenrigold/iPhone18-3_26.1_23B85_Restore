@interface SFAnalyticsClient
+ (id)getSharedClientNamed:(id)named orCreateWithStorePath:(id)path requireDeviceAnalytics:(BOOL)analytics requireiCloudAnalytics:(BOOL)cloudAnalytics;
+ (void)clearSFAnalyticsClientGlobalCache;
- (SFAnalyticsClient)initWithStore:(id)store queue:(id)queue name:(id)name requireDeviceAnalytics:(BOOL)analytics requireiCloudAnalytics:(BOOL)cloudAnalytics;
- (SFAnalyticsClient)initWithStorePath:(id)path name:(id)name requireDeviceAnalytics:(BOOL)analytics requireiCloudAnalytics:(BOOL)cloudAnalytics;
- (id)initFromExistingClient:(id)client name:(id)name requireDeviceAnalytics:(BOOL)analytics requireiCloudAnalytics:(BOOL)cloudAnalytics;
- (void)withStore:(id)store;
@end

@implementation SFAnalyticsClient

- (void)withStore:(id)store
{
  storeCopy = store;
  queue = [(SFAnalyticsClient *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100007C04;
  v7[3] = &unk_100020FC0;
  v7[4] = self;
  v8 = storeCopy;
  v6 = storeCopy;
  dispatch_sync(queue, v7);
}

- (SFAnalyticsClient)initWithStore:(id)store queue:(id)queue name:(id)name requireDeviceAnalytics:(BOOL)analytics requireiCloudAnalytics:(BOOL)cloudAnalytics
{
  storeCopy = store;
  queueCopy = queue;
  nameCopy = name;
  v19.receiver = self;
  v19.super_class = SFAnalyticsClient;
  v16 = [(SFAnalyticsClient *)&v19 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_store, store);
    objc_storeStrong(&v17->_queue, queue);
    objc_storeStrong(&v17->_name, name);
    v17->_requireDeviceAnalytics = analytics;
    v17->_requireiCloudAnalytics = cloudAnalytics;
  }

  return v17;
}

- (id)initFromExistingClient:(id)client name:(id)name requireDeviceAnalytics:(BOOL)analytics requireiCloudAnalytics:(BOOL)cloudAnalytics
{
  cloudAnalyticsCopy = cloudAnalytics;
  analyticsCopy = analytics;
  nameCopy = name;
  clientCopy = client;
  nameCopy = [NSString stringWithFormat:@"SFAnalyticsClient queue-%@", nameCopy];
  uTF8String = [nameCopy UTF8String];
  v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  queue = [clientCopy queue];
  v16 = dispatch_queue_create_with_target_V2(uTF8String, v14, queue);

  store = [clientCopy store];

  v18 = [(SFAnalyticsClient *)self initWithStore:store queue:v16 name:nameCopy requireDeviceAnalytics:analyticsCopy requireiCloudAnalytics:cloudAnalyticsCopy];
  return v18;
}

- (SFAnalyticsClient)initWithStorePath:(id)path name:(id)name requireDeviceAnalytics:(BOOL)analytics requireiCloudAnalytics:(BOOL)cloudAnalytics
{
  cloudAnalyticsCopy = cloudAnalytics;
  analyticsCopy = analytics;
  nameCopy = name;
  pathCopy = path;
  v12 = [SFAnalyticsSQLiteStore alloc];
  v13 = [v12 initWithPath:pathCopy schema:SFAnalyticsTableSchema];

  nameCopy = [NSString stringWithFormat:@"SFAnalyticsClient queue-%@", nameCopy];
  uTF8String = [nameCopy UTF8String];
  v16 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v17 = dispatch_queue_create(uTF8String, v16);

  v18 = [(SFAnalyticsClient *)self initWithStore:v13 queue:v17 name:nameCopy requireDeviceAnalytics:analyticsCopy requireiCloudAnalytics:cloudAnalyticsCopy];
  return v18;
}

+ (id)getSharedClientNamed:(id)named orCreateWithStorePath:(id)path requireDeviceAnalytics:(BOOL)analytics requireiCloudAnalytics:(BOOL)cloudAnalytics
{
  cloudAnalyticsCopy = cloudAnalytics;
  analyticsCopy = analytics;
  namedCopy = named;
  pathCopy = path;
  os_unfair_lock_lock(&unk_1000262C8);
  if (!qword_1000262D0)
  {
    v11 = +[NSMutableDictionary dictionary];
    v12 = qword_1000262D0;
    qword_1000262D0 = v11;
  }

  stringByStandardizingPath = [pathCopy stringByStandardizingPath];
  v14 = [qword_1000262D0 objectForKeyedSubscript:stringByStandardizingPath];
  v15 = v14;
  if (!v14)
  {
    v18 = [[SFAnalyticsClient alloc] initWithStorePath:stringByStandardizingPath name:namedCopy requireDeviceAnalytics:analyticsCopy requireiCloudAnalytics:cloudAnalyticsCopy];
    storePath = [(SFAnalyticsClient *)v18 storePath];

    if (namedCopy && storePath)
    {
      v20 = [NSMutableDictionary dictionaryWithObject:v18 forKey:namedCopy];
      v21 = qword_1000262D0;
      storePath2 = [(SFAnalyticsClient *)v18 storePath];
      [v21 setObject:v20 forKeyedSubscript:storePath2];

      goto LABEL_9;
    }

    storePath3 = [(SFAnalyticsClient *)v18 storePath];

    if (storePath3)
    {
      if (namedCopy)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v26 = sub_1000146E4("SecError");
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "SFAnalyticsClient: sharedClient.storePath is unexpectedly nil! Not adding to namedSharedClientsByStorePath", buf, 2u);
      }

      if (namedCopy)
      {
LABEL_14:
        if (v18)
        {
          goto LABEL_19;
        }

        goto LABEL_15;
      }
    }

    v20 = sub_1000146E4("SecError");
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "SFAnalyticsClient: name is unexpectedly nil! Not adding to namedSharedClientsByStorePath", buf, 2u);
    }

LABEL_9:

    if (v18)
    {
      goto LABEL_19;
    }

LABEL_15:
    v17 = sub_1000146E4("SecError");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "SFAnalyticsClient: sharedClient is unexpectedly nil!", buf, 2u);
    }

    v18 = 0;
    goto LABEL_18;
  }

  v16 = [v14 objectForKeyedSubscript:namedCopy];
  if (v16)
  {
    v17 = v16;
    v18 = v17;
  }

  else
  {
    v23 = v15;
    *buf = 0;
    v29 = buf;
    v30 = 0x3032000000;
    v31 = sub_100008448;
    v32 = sub_100008458;
    v33 = 0;
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_100008460;
    v27[3] = &unk_100021368;
    v27[4] = buf;
    [v23 enumerateKeysAndObjectsUsingBlock:v27];
    v17 = *(v29 + 5);
    _Block_object_dispose(buf, 8);

    v18 = [[SFAnalyticsClient alloc] initFromExistingClient:v17 name:namedCopy requireDeviceAnalytics:analyticsCopy requireiCloudAnalytics:cloudAnalyticsCopy];
    [v23 setObject:v18 forKeyedSubscript:namedCopy];
  }

LABEL_18:

LABEL_19:
  os_unfair_lock_unlock(&unk_1000262C8);

  return v18;
}

+ (void)clearSFAnalyticsClientGlobalCache
{
  os_unfair_lock_lock(&unk_1000262C8);
  v2 = qword_1000262D0;
  qword_1000262D0 = 0;

  os_unfair_lock_unlock(&unk_1000262C8);
}

@end