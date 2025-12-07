@interface HAPPowerManager
+ (id)logCategory;
+ (id)sharedInstance;
- (HAPPowerManager)init;
- (void)deRegisterFromSleepWake:(id)wake;
- (void)dealloc;
- (void)registerForSleepWake:(id)wake queue:(id)queue;
- (void)systemPowerChanged:(unsigned int)changed notificationID:(void *)d;
@end

@implementation HAPPowerManager

+ (id)sharedInstance
{
  if (qword_1002ACC38 != -1)
  {
    sub_1001F8A68();
  }

  v3 = qword_1002ACC30;

  return v3;
}

- (HAPPowerManager)init
{
  v16.receiver = self;
  v16.super_class = HAPPowerManager;
  v2 = [(HAPPowerManager *)&v16 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("HAPPowerManager", v3);
    v5 = *(v2 + 1);
    *(v2 + 1) = v4;

    v6 = +[NSMapTable weakToWeakObjectsMapTable];
    v7 = *(v2 + 4);
    *(v2 + 4) = v6;

    v8 = IORegisterForSystemPower(v2, v2 + 3, j__objc_msgSend_systemPowerChanged_notificationID_, v2 + 5);
    *(v2 + 4) = v8;
    if (v8)
    {
      IONotificationPortSetDispatchQueue([v2 systemPowerPort], *(v2 + 1));
    }

    else
    {
      v9 = v2;
      v10 = sub_10007FAA0(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = sub_10007FAFC(v9);
        *buf = 138543362;
        v18 = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%{public}@Error registering for system power", buf, 0xCu);
      }
    }
  }

  v12 = v2;
  v13 = sub_10007FAA0(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = sub_10007FAFC(v12);
    *buf = 138543362;
    v18 = v14;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%{public}@Initialized Power Manager.", buf, 0xCu);
  }

  return v12;
}

- (void)dealloc
{
  p_systemPowerNotifier = &self->_systemPowerNotifier;
  if (self->_systemPowerNotifier)
  {
    v4 = IODeregisterForSystemPower(&self->_systemPowerNotifier);
    if (v4)
    {
      v5 = v4;
      selfCopy = self;
      v7 = sub_10007FAA0(selfCopy);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = sub_10007FAFC(selfCopy);
        *buf = 138543618;
        v21 = v8;
        v22 = 1024;
        v23 = v5;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%{public}@Failed to deregister from system power with error: %d", buf, 0x12u);
      }
    }

    *p_systemPowerNotifier = 0;
  }

  systemPowerPort = self->_systemPowerPort;
  if (systemPowerPort)
  {
    IONotificationPortDestroy(systemPowerPort);
    self->_systemPowerPort = 0;
  }

  systemPowerMgr = self->_systemPowerMgr;
  if (systemPowerMgr)
  {
    v11 = IOServiceClose(systemPowerMgr);
    if (v11)
    {
      v12 = v11;
      selfCopy2 = self;
      v14 = sub_10007FAA0(selfCopy2);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = sub_10007FAFC(selfCopy2);
        *buf = 138543618;
        v21 = v15;
        v22 = 1024;
        v23 = v12;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%{public}@Failed to close power IO Service with error: %d", buf, 0x12u);
      }
    }

    self->_systemPowerMgr = 0;
  }

  selfCopy3 = self;
  v17 = sub_10007FAA0(selfCopy3);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = sub_10007FAFC(selfCopy3);
    *buf = 138543362;
    v21 = v18;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "%{public}@Deallocating Power Manager", buf, 0xCu);
  }

  v19.receiver = selfCopy3;
  v19.super_class = HAPPowerManager;
  [(HAPPowerManager *)&v19 dealloc];
}

- (void)registerForSleepWake:(id)wake queue:(id)queue
{
  wakeCopy = wake;
  queueCopy = queue;
  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10007C8C0;
  block[3] = &unk_100273748;
  block[4] = self;
  v12 = wakeCopy;
  v13 = queueCopy;
  v9 = queueCopy;
  v10 = wakeCopy;
  dispatch_async(workQueue, block);
}

- (void)deRegisterFromSleepWake:(id)wake
{
  wakeCopy = wake;
  workQueue = self->_workQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10007C9C8;
  v7[3] = &unk_100273370;
  v7[4] = self;
  v8 = wakeCopy;
  v6 = wakeCopy;
  dispatch_async(workQueue, v7);
}

- (void)systemPowerChanged:(unsigned int)changed notificationID:(void *)d
{
  v5 = *&changed;
  selfCopy = self;
  v7 = sub_10007FAA0(selfCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = sub_10007FAFC(selfCopy);
    v9 = sub_10007CD10(v5);
    *buf = 138543618;
    v30 = v8;
    v31 = 2112;
    v32 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%{public}@System power changed: %@", buf, 0x16u);
  }

  switch(v5)
  {
    case 0xE0000270:
      goto LABEL_14;
    case 0xE0000280:
      v10 = 1;
      [(HAPPowerManager *)selfCopy delegatesMap:1];
      break;
    case 0xE0000320:
      v10 = 2;
      [(HAPPowerManager *)selfCopy delegatesMap:0];
      break;
    default:
      return;
  }
  v11 = ;
  keyEnumerator = [v11 keyEnumerator];

  nextObject = [keyEnumerator nextObject];
  if (nextObject)
  {
    v14 = nextObject;
    do
    {
      delegatesMap = [(HAPPowerManager *)selfCopy delegatesMap];
      v16 = [delegatesMap objectForKey:v14];

      if (v16)
      {
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10007CD9C;
        block[3] = &unk_100274660;
        v27 = v14;
        v28 = v10;
        dispatch_async(v16, block);
      }

      nextObject2 = [keyEnumerator nextObject];

      v14 = nextObject2;
    }

    while (nextObject2);
  }

  d = v25;
  if (v24)
  {
LABEL_14:
    v18 = IOAllowPowerChange([(HAPPowerManager *)selfCopy systemPowerMgr], d);
    if (v18)
    {
      v19 = v18;
      v20 = selfCopy;
      v21 = sub_10007FAA0(v20);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = sub_10007FAFC(v20);
        v23 = sub_10007CD10(v5);
        *buf = 138543874;
        v30 = v22;
        v31 = 2112;
        v32 = v23;
        v33 = 1024;
        v34 = v19;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%{public}@Falied to allow for %@ with error: %d", buf, 0x1Cu);
      }
    }
  }
}

+ (id)logCategory
{
  if (qword_1002ACC40 != -1)
  {
    sub_1001F8A7C();
  }

  v3 = qword_1002ACC48;

  return v3;
}

@end