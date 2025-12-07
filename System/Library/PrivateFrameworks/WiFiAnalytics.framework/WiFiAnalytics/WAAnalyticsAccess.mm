@interface WAAnalyticsAccess
+ (WAAnalyticsAccess)accessWithPersistentContainer:(id)container;
+ (void)initialize;
- (WAAnalyticsAccess)initWithOptions:(unint64_t)options andContainer:(id)container;
- (id)_performFetch:(id)fetch error:(id *)error onMoc:(id)moc;
- (id)_performFetchWithBlockAndWait:(id)wait error:(id *)error onMoc:(id)moc;
- (id)performFetchWithBlockAndWait:(id)wait error:(id *)error;
- (id)performFetchWithBlockAndWaitOnBbMoc:(id)moc error:(id *)error;
- (id)persistentStoreCoordinator;
- (unint64_t)_countForFetchRequest:(id)request error:(id *)error onMoc:(id)moc;
- (unint64_t)_countForFetchRequestWithBlockAndWait:(id)wait error:(id *)error onMoc:(id)moc;
- (unint64_t)countForFetchRequestWithBlockAndWait:(id)wait error:(id *)error;
- (unint64_t)countForFetchRequestWithBlockAndWaitOnBbMoc:(id)moc error:(id *)error;
@end

@implementation WAAnalyticsAccess

+ (void)initialize
{
  registry = objc_alloc_init(MEMORY[0x1E695DF90]);

  MEMORY[0x1EEE66BB8]();
}

+ (WAAnalyticsAccess)accessWithPersistentContainer:(id)container
{
  v14 = *MEMORY[0x1E69E9840];
  containerCopy = container;
  v4 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136446722;
    v9 = "+[WAAnalyticsAccess accessWithPersistentContainer:]";
    v10 = 1024;
    v11 = 66;
    v12 = 2112;
    v13 = @"read";
    _os_log_impl(&dword_1C8460000, v4, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Initializing WAAnalyticsAccess with option %@", &v8, 0x1Cu);
  }

  v5 = registry;
  objc_sync_enter(v5);
  v6 = [registry objectForKey:@"WAAccessReadOnly"];
  if (!v6)
  {
    v6 = [[WAAnalyticsAccess alloc] initWithOptions:1 andContainer:containerCopy];
    [registry setObject:v6 forKey:@"WAAccessReadOnly"];
  }

  objc_sync_exit(v5);

  return v6;
}

- (WAAnalyticsAccess)initWithOptions:(unint64_t)options andContainer:(id)container
{
  containerCopy = container;
  v11.receiver = self;
  v11.super_class = WAAnalyticsAccess;
  v8 = [(WAAnalyticsAccess *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_options = options;
    objc_storeStrong(&v8->_persistentContainer, container);
  }

  return v9;
}

- (unint64_t)countForFetchRequestWithBlockAndWaitOnBbMoc:(id)moc error:(id *)error
{
  mocCopy = moc;
  backgroundMOC = [(WAAnalyticsAccess *)self backgroundMOC];
  v8 = [(WAAnalyticsAccess *)self _countForFetchRequestWithBlockAndWait:mocCopy error:error onMoc:backgroundMOC];

  return v8;
}

- (id)performFetchWithBlockAndWaitOnBbMoc:(id)moc error:(id *)error
{
  mocCopy = moc;
  backgroundMOC = [(WAAnalyticsAccess *)self backgroundMOC];
  v8 = [(WAAnalyticsAccess *)self _performFetchWithBlockAndWait:mocCopy error:error onMoc:backgroundMOC];

  return v8;
}

- (id)persistentStoreCoordinator
{
  v12 = *MEMORY[0x1E69E9840];
  if (self->_options)
  {
    v5 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136446466;
      v7 = "[WAAnalyticsAccess persistentStoreCoordinator]";
      v8 = 1024;
      v9 = 149;
      _os_log_impl(&dword_1C8460000, v5, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Return no persistentStoreCoordinator for WAAccessReadOnly", &v6, 0x12u);
    }

    persistentStoreCoordinator = 0;
  }

  else
  {
    persistentStoreCoordinator = [(NSPersistentContainer *)self->_persistentContainer persistentStoreCoordinator];
  }

  v3 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v6 = 136446722;
    v7 = "[WAAnalyticsAccess persistentStoreCoordinator]";
    v8 = 1024;
    v9 = 154;
    v10 = 2112;
    v11 = persistentStoreCoordinator;
    _os_log_impl(&dword_1C8460000, v3, OS_LOG_TYPE_DEBUG, "%{public}s::%d:ret: %@", &v6, 0x1Cu);
  }

  return persistentStoreCoordinator;
}

- (id)performFetchWithBlockAndWait:(id)wait error:(id *)error
{
  waitCopy = wait;
  mainObjectContext = [(WAAnalyticsAccess *)self mainObjectContext];
  v8 = [(WAAnalyticsAccess *)self _performFetchWithBlockAndWait:waitCopy error:error onMoc:mainObjectContext];

  return v8;
}

- (unint64_t)countForFetchRequestWithBlockAndWait:(id)wait error:(id *)error
{
  waitCopy = wait;
  mainObjectContext = [(WAAnalyticsAccess *)self mainObjectContext];
  v8 = [(WAAnalyticsAccess *)self _countForFetchRequestWithBlockAndWait:waitCopy error:error onMoc:mainObjectContext];

  return v8;
}

- (id)_performFetchWithBlockAndWait:(id)wait error:(id *)error onMoc:(id)moc
{
  waitCopy = wait;
  mocCopy = moc;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__11;
  v23 = __Block_byref_object_dispose__11;
  v24 = 0;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __63__WAAnalyticsAccess__performFetchWithBlockAndWait_error_onMoc___block_invoke;
  v14[3] = &unk_1E830F630;
  v17 = &v19;
  v14[4] = self;
  v10 = waitCopy;
  v15 = v10;
  errorCopy = error;
  v11 = mocCopy;
  v16 = v11;
  [v11 performBlockAndWait:v14];
  v12 = v20[5];

  _Block_object_dispose(&v19, 8);

  return v12;
}

uint64_t __63__WAAnalyticsAccess__performFetchWithBlockAndWait_error_onMoc___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 56) + 8) + 40) = [*(a1 + 32) _performFetch:*(a1 + 40) error:*(a1 + 64) onMoc:*(a1 + 48)];

  return MEMORY[0x1EEE66BB8]();
}

- (unint64_t)_countForFetchRequestWithBlockAndWait:(id)wait error:(id *)error onMoc:(id)moc
{
  waitCopy = wait;
  mocCopy = moc;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __71__WAAnalyticsAccess__countForFetchRequestWithBlockAndWait_error_onMoc___block_invoke;
  v14[3] = &unk_1E830F630;
  v17 = &v19;
  v14[4] = self;
  v10 = waitCopy;
  v15 = v10;
  errorCopy = error;
  v11 = mocCopy;
  v16 = v11;
  [v11 performBlockAndWait:v14];
  v12 = v20[3];

  _Block_object_dispose(&v19, 8);
  return v12;
}

void *__71__WAAnalyticsAccess__countForFetchRequestWithBlockAndWait_error_onMoc___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _countForFetchRequest:*(a1 + 40) error:*(a1 + 64) onMoc:*(a1 + 48)];
  *(*(*(a1 + 56) + 8) + 24) = result;
  return result;
}

- (id)_performFetch:(id)fetch error:(id *)error onMoc:(id)moc
{
  v47 = *MEMORY[0x1E69E9840];
  fetchCopy = fetch;
  mocCopy = moc;
  array = [MEMORY[0x1E695DEC8] array];
  persistentStoreCoordinator = [mocCopy persistentStoreCoordinator];
  managedObjectModel = [persistentStoreCoordinator managedObjectModel];
  entitiesByName = [managedObjectModel entitiesByName];

  allKeys = [entitiesByName allKeys];
  entityName = [fetchCopy entityName];
  v16 = [allKeys containsObject:entityName];

  if ((v16 & 1) == 0)
  {
    v23 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      entityName2 = [fetchCopy entityName];
      *buf = 136446722;
      v38 = "[WAAnalyticsAccess _performFetch:error:onMoc:]";
      v39 = 1024;
      v40 = 194;
      v41 = 2112;
      v42 = entityName2;
      _os_log_impl(&dword_1C8460000, v23, OS_LOG_TYPE_ERROR, "%{public}s::%d:entityName %@ doesn't exist", buf, 0x1Cu);
    }

    goto LABEL_11;
  }

  v36 = 0;
  v17 = [(WAAnalyticsAccess *)self _countForFetchRequest:fetchCopy error:&v36 onMoc:mocCopy];
  v18 = v36;
  v19 = WALogCategoryDeviceStoreHandle();
  v20 = v19;
  if (!v18)
  {
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      entityName3 = [fetchCopy entityName];
      *buf = 136446978;
      v38 = "[WAAnalyticsAccess _performFetch:error:onMoc:]";
      v39 = 1024;
      v40 = 200;
      v41 = 2048;
      v42 = v17;
      v43 = 2112;
      v44 = entityName3;
      _os_log_impl(&dword_1C8460000, v20, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:retrieving %lu entries from request.entityName %@", buf, 0x26u);
    }

    if (v17)
    {
      v35 = 0;
      v22 = [mocCopy executeFetchRequest:fetchCopy error:&v35];
      v18 = v35;

      if (v18)
      {
        v31 = WALogCategoryDeviceStoreHandle();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          localizedDescription = [v18 localizedDescription];
          userInfo = [v18 userInfo];
          *buf = 136447234;
          v38 = "[WAAnalyticsAccess _performFetch:error:onMoc:]";
          v39 = 1024;
          v40 = 210;
          v41 = 2112;
          v42 = fetchCopy;
          v43 = 2112;
          v44 = localizedDescription;
          v45 = 2112;
          v46 = userInfo;
          v34 = userInfo;
          _os_log_impl(&dword_1C8460000, v31, OS_LOG_TYPE_ERROR, "%{public}s::%d:Error with executeFetchRequest %@. %@ %@", buf, 0x30u);
        }
      }

      array = v22;
      goto LABEL_12;
    }

LABEL_11:
    v18 = 0;
    goto LABEL_12;
  }

  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    localizedDescription2 = [v18 localizedDescription];
    userInfo2 = [v18 userInfo];
    *buf = 136447234;
    v38 = "[WAAnalyticsAccess _performFetch:error:onMoc:]";
    v39 = 1024;
    v40 = 198;
    v41 = 2112;
    v42 = fetchCopy;
    v43 = 2112;
    v44 = localizedDescription2;
    v45 = 2112;
    v46 = userInfo2;
    v30 = userInfo2;
    _os_log_impl(&dword_1C8460000, v20, OS_LOG_TYPE_ERROR, "%{public}s::%d:Error with countForFetchRequest %@. %@ %@", buf, 0x30u);
  }

LABEL_12:
  if (error)
  {
    v25 = v18;
    *error = v18;
  }

  v26 = array;

  return array;
}

- (unint64_t)_countForFetchRequest:(id)request error:(id *)error onMoc:(id)moc
{
  v36 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  mocCopy = moc;
  persistentStoreCoordinator = [mocCopy persistentStoreCoordinator];
  managedObjectModel = [persistentStoreCoordinator managedObjectModel];
  entitiesByName = [managedObjectModel entitiesByName];

  allKeys = [entitiesByName allKeys];
  entityName = [requestCopy entityName];
  v14 = [allKeys containsObject:entityName];

  if (v14)
  {
    v25 = 0;
    v15 = [mocCopy countForFetchRequest:requestCopy error:&v25];
    v16 = v25;
    if (v16)
    {
      v21 = WALogCategoryDeviceStoreHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        localizedDescription = [v16 localizedDescription];
        userInfo = [v16 userInfo];
        *buf = 136447234;
        v27 = "[WAAnalyticsAccess _countForFetchRequest:error:onMoc:]";
        v28 = 1024;
        v29 = 240;
        v30 = 2112;
        v31 = requestCopy;
        v32 = 2112;
        v33 = localizedDescription;
        v34 = 2112;
        v35 = userInfo;
        v24 = userInfo;
        _os_log_impl(&dword_1C8460000, v21, OS_LOG_TYPE_ERROR, "%{public}s::%d:Error with countForFetchRequest %@. %@ %@", buf, 0x30u);
      }
    }
  }

  else
  {
    v19 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      entityName2 = [requestCopy entityName];
      *buf = 136446722;
      v27 = "[WAAnalyticsAccess _countForFetchRequest:error:onMoc:]";
      v28 = 1024;
      v29 = 228;
      v30 = 2112;
      v31 = entityName2;
      _os_log_impl(&dword_1C8460000, v19, OS_LOG_TYPE_ERROR, "%{public}s::%d:entityName %@ doesn't exist", buf, 0x1Cu);
    }

    v15 = 0;
    v16 = 0;
  }

  if (error)
  {
    v17 = v16;
    *error = v16;
  }

  return v15;
}

@end