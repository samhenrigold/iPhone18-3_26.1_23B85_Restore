@interface BCRemoteManagedObjectIDMonitor
- (BCRemoteManagedObjectIDMonitor)initWithCoordinator:(id)coordinator entityName:(id)name historyToken:(id)token predicate:(id)predicate mapProperty:(id)property propertiesOfInterest:(id)interest observer:(id)observer;
- (BCRemoteManagedObjectIDMonitorObserver)observer;
- (BOOL)_objectHasChangesOfInterest:(id)interest;
- (id)_fetchPersistentHistoryWithHistoryToken:(id)token;
- (id)description;
- (void)_persistentStoreRemoteDidChange:(id)change;
- (void)dealloc;
@end

@implementation BCRemoteManagedObjectIDMonitor

- (BCRemoteManagedObjectIDMonitor)initWithCoordinator:(id)coordinator entityName:(id)name historyToken:(id)token predicate:(id)predicate mapProperty:(id)property propertiesOfInterest:(id)interest observer:(id)observer
{
  coordinatorCopy = coordinator;
  nameCopy = name;
  tokenCopy = token;
  predicateCopy = predicate;
  propertyCopy = property;
  interestCopy = interest;
  observerCopy = observer;
  v66.receiver = self;
  v66.super_class = BCRemoteManagedObjectIDMonitor;
  v20 = [(BCRemoteManagedObjectIDMonitor *)&v66 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_coordinator, coordinator);
    v22 = [nameCopy copy];
    entityName = v21->_entityName;
    v21->_entityName = v22;

    objc_storeStrong(&v21->_historyToken, token);
    objc_storeStrong(&v21->_predicate, predicate);
    v24 = [propertyCopy copy];
    mapProperty = v21->_mapProperty;
    v21->_mapProperty = v24;

    v26 = [interestCopy copy];
    propertiesOfInterest = v21->_propertiesOfInterest;
    v21->_propertiesOfInterest = v26;

    objc_storeWeak(&v21->_observer, observerCopy);
    v28 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v29 = dispatch_queue_create("BCRemoteManagedObjectIDMonitor.sync", v28);
    sync = v21->_sync;
    v21->_sync = v29;

    v31 = objc_alloc_init(NSMutableSet);
    currentObjectIdentifiers = v21->_currentObjectIdentifiers;
    v21->_currentObjectIdentifiers = v31;

    persistentStores = [coordinatorCopy persistentStores];
    v34 = [persistentStores count] == 0;

    if (v34)
    {
      identifier = @"empty";
    }

    else
    {
      persistentStores2 = [coordinatorCopy persistentStores];
      firstObject = [persistentStores2 firstObject];
      identifier = [firstObject identifier];
    }

    v38 = BCRemoteManagedObjectIDMonitorLog(v35);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      observer = [(BCRemoteManagedObjectIDMonitor *)v21 observer];
      remoteManagerObserverId = [observer remoteManagerObserverId];
      historyToken = [(BCRemoteManagedObjectIDMonitor *)v21 historyToken];
      persistentStores3 = [coordinatorCopy persistentStores];
      v43 = [persistentStores3 count];
      *buf = 138413826;
      *&buf[4] = v21;
      *&buf[12] = 2112;
      *&buf[14] = coordinatorCopy;
      *&buf[22] = 2112;
      v68 = remoteManagerObserverId;
      *v69 = 2112;
      *&v69[2] = historyToken;
      *&v69[10] = 2048;
      *&v69[12] = v43;
      v70 = 2112;
      v71 = identifier;
      v72 = 2112;
      v73 = predicateCopy;
      _os_log_impl(&dword_0, v38, OS_LOG_TYPE_DEFAULT, "BCRemoteManagedObjectIDMonitor %@ initialized %@ with observer:%@ token:%@ storeCount:%lu persistentstoreID:(%@), predicate:%@", buf, 0x48u);
    }

    v44 = +[NSNotificationCenter defaultCenter];
    [v44 addObserver:v21 selector:"_persistentStoreRemoteDidChange:" name:NSPersistentStoreRemoteChangeNotification object:v21->_coordinator];

    v45 = [[NSManagedObjectContext alloc] initWithConcurrencyType:1];
    context = v21->_context;
    v21->_context = v45;

    [(NSManagedObjectContext *)v21->_context setPersistentStoreCoordinator:v21->_coordinator];
    [(NSManagedObjectContext *)v21->_context setUndoManager:0];
    [(NSManagedObjectContext *)v21->_context setMergePolicy:NSMergeByPropertyObjectTrumpMergePolicy];
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v68 = sub_3F760;
    *v69 = sub_3F770;
    *&v69[8] = 0;
    v47 = dispatch_semaphore_create(0);
    v48 = v21->_sync;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_3F778;
    block[3] = &unk_2C8838;
    v49 = v47;
    v63 = v49;
    v50 = v21;
    v64 = v50;
    v65 = buf;
    dispatch_async(v48, block);
    v51 = v21->_context;
    v58[0] = _NSConcreteStackBlock;
    v58[1] = 3221225472;
    v58[2] = sub_3F7C4;
    v58[3] = &unk_2C95A0;
    v59 = v50;
    v61 = buf;
    v52 = v49;
    v60 = v52;
    [(NSManagedObjectContext *)v51 performBlock:v58];

    _Block_object_dispose(buf, 8);
  }

  return v21;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:NSPersistentStoreRemoteChangeNotification object:self->_coordinator];

  v4.receiver = self;
  v4.super_class = BCRemoteManagedObjectIDMonitor;
  [(BCRemoteManagedObjectIDMonitor *)&v4 dealloc];
}

- (BOOL)_objectHasChangesOfInterest:(id)interest
{
  if (!self->_propertiesOfInterest)
  {
    return 1;
  }

  selfCopy = self;
  changedValues = [interest changedValues];
  allKeys = [changedValues allKeys];
  v6 = [NSSet setWithArray:allKeys];

  LOBYTE(selfCopy) = [v6 intersectsSet:selfCopy->_propertiesOfInterest];
  return selfCopy;
}

- (void)_persistentStoreRemoteDidChange:(id)change
{
  changeCopy = change;
  v5 = _os_activity_create(&dword_0, "BCRemoteMonitorHistoryProcessing", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_3FBBC;
  v7[3] = &unk_2C7BE8;
  v8 = changeCopy;
  selfCopy = self;
  v6 = changeCopy;
  os_activity_apply(v5, v7);
}

- (id)_fetchPersistentHistoryWithHistoryToken:(id)token
{
  tokenCopy = token;
  v5 = [NSPersistentHistoryChangeRequest fetchHistoryAfterToken:tokenCopy];
  context = [(BCRemoteManagedObjectIDMonitor *)self context];
  v17 = 0;
  v7 = [context executeRequest:v5 error:&v17];
  v8 = v17;

  v10 = BCRemoteManagedObjectIDMonitorLog(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    sub_1E5D88(tokenCopy, v7);
  }

  if (!v7)
  {
    v12 = BCRemoteManagedObjectIDMonitorLog(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1E5E2C();
    }
  }

  result = [v7 result];
  if ([result count])
  {
    v14 = result;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;

  return v14;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  observer = [(BCRemoteManagedObjectIDMonitor *)self observer];
  remoteManagerObserverId = [observer remoteManagerObserverId];
  entityName = [(BCRemoteManagedObjectIDMonitor *)self entityName];
  v8 = [NSString stringWithFormat:@"<%@:%p observer:%@-%@>", v4, self, remoteManagerObserverId, entityName];

  return v8;
}

- (BCRemoteManagedObjectIDMonitorObserver)observer
{
  WeakRetained = objc_loadWeakRetained(&self->_observer);

  return WeakRetained;
}

@end