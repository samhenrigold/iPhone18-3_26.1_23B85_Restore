@interface ASDTChangeRequestQueue
+ (id)forObject:(id)object withName:(id)name andManager:(id)manager;
- (ASDObject)object;
- (ASDTChangeRequestManager)manager;
- (BOOL)addChangeRequest:(id)request;
- (id)initForObject:(id)object withName:(id)name andManager:(id)manager;
- (void)execute;
- (void)executeChangeRequest:(id)request;
@end

@implementation ASDTChangeRequestQueue

- (id)initForObject:(id)object withName:(id)name andManager:(id)manager
{
  objectCopy = object;
  nameCopy = name;
  managerCopy = manager;
  v20.receiver = self;
  v20.super_class = ASDTChangeRequestQueue;
  v11 = [(ASDTChangeRequestQueue *)&v20 init];
  v12 = v11;
  if (!v11)
  {
    goto LABEL_6;
  }

  v13 = 0;
  if (objectCopy && nameCopy && managerCopy)
  {
    [(ASDTChangeRequestQueue *)v11 setManager:managerCopy];
    [(ASDTChangeRequestQueue *)v12 setObject:objectCopy];
    [(ASDTChangeRequestQueue *)v12 setName:nameCopy];
    v14 = [MEMORY[0x277CBEB18] arrayWithCapacity:2];
    [(ASDTChangeRequestQueue *)v12 setQueue:v14];

    queue = [(ASDTChangeRequestQueue *)v12 queue];

    if (queue)
    {
LABEL_6:
      v13 = v12;
      goto LABEL_7;
    }

    v19 = ASDTBaseLogType(v16, v17);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [ASDTChangeRequestQueue initForObject:v19 withName:? andManager:?];
    }

    v13 = 0;
  }

LABEL_7:

  return v13;
}

+ (id)forObject:(id)object withName:(id)name andManager:(id)manager
{
  managerCopy = manager;
  nameCopy = name;
  objectCopy = object;
  v11 = [[self alloc] initForObject:objectCopy withName:nameCopy andManager:managerCopy];

  return v11;
}

- (BOOL)addChangeRequest:(id)request
{
  v25 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  if (([(ASDTChangeRequestQueue *)self flags]& 2) != 0 && (v5 = pthread_self(), v5 == [(ASDTChangeRequestQueue *)self executionThread]))
  {
    manager = [(ASDTChangeRequestQueue *)self manager];
    changeRequestLock = [manager changeRequestLock];
    [changeRequestLock unlock];

    v13 = ASDTBaseLogType(v11, v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      manager2 = [(ASDTChangeRequestQueue *)self manager];
      bundleID = [manager2 bundleID];
      name = [(ASDTChangeRequestQueue *)self name];
      v19 = 138412802;
      v20 = bundleID;
      v21 = 2112;
      v22 = name;
      v23 = 1024;
      index = [requestCopy index];
      _os_log_impl(&dword_241659000, v13, OS_LOG_TYPE_DEFAULT, "%@: Change requests already running for %@; running request %u inline.", &v19, 0x1Cu);
    }

    [(ASDTChangeRequestQueue *)self executeChangeRequest:requestCopy];
    manager3 = [(ASDTChangeRequestQueue *)self manager];
    changeRequestLock2 = [manager3 changeRequestLock];
    [changeRequestLock2 lock];

    [(ASDTChangeRequestQueue *)self setChangeRequestsExecuted:[(ASDTChangeRequestQueue *)self changeRequestsExecuted]+ 1];
    v7 = 0;
  }

  else
  {
    queue = [(ASDTChangeRequestQueue *)self queue];
    [queue addObject:requestCopy];

    v7 = [(ASDTChangeRequestQueue *)self flags]== 0;
    [(ASDTChangeRequestQueue *)self setFlags:[(ASDTChangeRequestQueue *)self flags]| 1];
  }

  return v7;
}

- (void)executeChangeRequest:(id)request
{
  v26 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v6 = ASDTBaseLogType(requestCopy, v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    manager = [(ASDTChangeRequestQueue *)self manager];
    bundleID = [manager bundleID];
    index = [requestCopy index];
    name = [(ASDTChangeRequestQueue *)self name];
    v20 = 138412802;
    v21 = bundleID;
    v22 = 1024;
    v23 = index;
    v24 = 2112;
    v25 = name;
    _os_log_impl(&dword_241659000, v6, OS_LOG_TYPE_DEFAULT, "%@: Starting config change %u for device: %@", &v20, 0x1Cu);
  }

  block = [requestCopy block];

  if (block)
  {
    block2 = [requestCopy block];
    block2[2]();
  }

  v15 = ASDTBaseLogType(v12, v13);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    manager2 = [(ASDTChangeRequestQueue *)self manager];
    bundleID2 = [manager2 bundleID];
    index2 = [requestCopy index];
    name2 = [(ASDTChangeRequestQueue *)self name];
    v20 = 138412802;
    v21 = bundleID2;
    v22 = 1024;
    v23 = index2;
    v24 = 2112;
    v25 = name2;
    _os_log_impl(&dword_241659000, v15, OS_LOG_TYPE_DEFAULT, "%@: Completed config change %u for device: %@", &v20, 0x1Cu);
  }
}

- (void)execute
{
  v42 = *MEMORY[0x277D85DE8];
  manager = [(ASDTChangeRequestQueue *)self manager];
  changeRequestLock = [manager changeRequestLock];
  [changeRequestLock lock];

  object = [(ASDTChangeRequestQueue *)self object];

  if (object)
  {
    [(ASDTChangeRequestQueue *)self setFlags:[(ASDTChangeRequestQueue *)self flags]| 2];
    [(ASDTChangeRequestQueue *)self setExecutionThread:pthread_self()];
    while (1)
    {
      queue = [(ASDTChangeRequestQueue *)self queue];
      v7 = [queue count];

      if (!v7)
      {
        break;
      }

      queue2 = [(ASDTChangeRequestQueue *)self queue];
      v9 = [queue2 objectAtIndex:0];

      queue3 = [(ASDTChangeRequestQueue *)self queue];
      [queue3 removeObjectAtIndex:0];

      manager2 = [(ASDTChangeRequestQueue *)self manager];
      changeRequestLock2 = [manager2 changeRequestLock];
      [changeRequestLock2 unlock];

      [(ASDTChangeRequestQueue *)self executeChangeRequest:v9];
      manager3 = [(ASDTChangeRequestQueue *)self manager];
      changeRequestLock3 = [manager3 changeRequestLock];
      [changeRequestLock3 lock];

      [(ASDTChangeRequestQueue *)self setChangeRequestsExecuted:[(ASDTChangeRequestQueue *)self changeRequestsExecuted]+ 1];
    }

    [(ASDTChangeRequestQueue *)self setFlags:0];
    [(ASDTChangeRequestQueue *)self setExecutionThread:0];
    manager4 = [(ASDTChangeRequestQueue *)self manager];
    changeRequestQueues = [manager4 changeRequestQueues];
    name = [(ASDTChangeRequestQueue *)self name];
    [changeRequestQueues removeObjectForKey:name];

    manager5 = [(ASDTChangeRequestQueue *)self manager];
    changeRequestLock4 = [manager5 changeRequestLock];
    [changeRequestLock4 broadcast];

    manager6 = [(ASDTChangeRequestQueue *)self manager];
    changeRequestLock5 = [manager6 changeRequestLock];
    [changeRequestLock5 unlock];

    v24 = ASDTBaseLogType(v22, v23);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      manager7 = [(ASDTChangeRequestQueue *)self manager];
      bundleID = [manager7 bundleID];
      changeRequestsExecuted = [(ASDTChangeRequestQueue *)self changeRequestsExecuted];
      name2 = [(ASDTChangeRequestQueue *)self name];
      *buf = 138412802;
      v37 = bundleID;
      v38 = 1024;
      v39 = changeRequestsExecuted;
      v40 = 2112;
      v41 = name2;
      _os_log_impl(&dword_241659000, v24, OS_LOG_TYPE_DEFAULT, "%@: Executed %u change requests for device: %@", buf, 0x1Cu);
    }
  }

  else
  {
    manager8 = [(ASDTChangeRequestQueue *)self manager];
    changeRequestQueues2 = [manager8 changeRequestQueues];
    name3 = [(ASDTChangeRequestQueue *)self name];
    [changeRequestQueues2 removeObjectForKey:name3];

    manager9 = [(ASDTChangeRequestQueue *)self manager];
    changeRequestLock6 = [manager9 changeRequestLock];
    [changeRequestLock6 broadcast];

    manager10 = [(ASDTChangeRequestQueue *)self manager];
    changeRequestLock7 = [manager10 changeRequestLock];
    [changeRequestLock7 unlock];
  }
}

- (ASDTChangeRequestManager)manager
{
  WeakRetained = objc_loadWeakRetained(&self->_manager);

  return WeakRetained;
}

- (ASDObject)object
{
  WeakRetained = objc_loadWeakRetained(&self->_object);

  return WeakRetained;
}

@end