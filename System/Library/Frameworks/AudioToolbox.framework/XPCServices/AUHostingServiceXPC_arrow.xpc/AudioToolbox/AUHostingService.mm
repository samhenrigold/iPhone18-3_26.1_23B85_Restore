@interface AUHostingService
+ (BOOL)conformsToProtocol:(id)protocol;
+ (BOOL)instancesRespondToSelector:(SEL)selector;
- (AUHostingService)initWithConnection:(id)connection;
- (id).cxx_construct;
- (id)forwardingTargetForSelector:(SEL)selector;
- (void)closeHost:(id)host;
- (void)dealloc;
- (void)loadAudioUnitInRemoteHost:(AudioComponentDescription *)host config:(id)config reply:(id)reply;
- (void)retrieveAudioUnitInstanceID:(id)d;
@end

@implementation AUHostingService

- (id).cxx_construct
{
  *(self + 3) = 0uLL;
  *(self + 8) = 0;
  return self;
}

- (void)dealloc
{
  if (self->_host)
  {
    v3 = +[AUHostingServiceInstanceMap sharedInstance];
    audioUnitUUID = [(AURemoteHost *)self->_host audioUnitUUID];
    [v3 unregisterInstance:audioUnitUUID];

    host = self->_host;
    self->_host = 0;
  }

  v6.receiver = self;
  v6.super_class = AUHostingService;
  [(AUHostingService *)&v6 dealloc];
}

- (void)closeHost:(id)host
{
  hostCopy = host;
  WeakRetained = objc_loadWeakRetained(&self->_connection);
  v6 = WeakRetained;
  if (WeakRetained)
  {
    objc_msgSend_auditToken(WeakRetained);
  }

  else
  {
    memset(&task_info_out[1], 0, sizeof(audit_token_t));
  }

  task_info_outCnt.val[0] = 8;
  if (task_info(mach_task_self_, 0xFu, task_info_out, task_info_outCnt.val))
  {
    _os_assert_log();
    _os_crash();
    __break(1u);
  }

  else
  {
    task_info_outCnt = task_info_out[1];
    v7 = audit_token_to_pid(&task_info_outCnt);
    task_info_outCnt = task_info_out[0];
    if (v7 == audit_token_to_pid(&task_info_outCnt))
    {
      task_info_outCnt = task_info_out[1];
      v8 = audit_token_to_pidversion(&task_info_outCnt);
      task_info_outCnt = task_info_out[0];
      v9 = v8 == audit_token_to_pidversion(&task_info_outCnt);
    }

    else
    {
      v9 = 0;
    }

    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000056D8;
    v15[3] = &unk_100010AF8;
    v15[4] = self;
    v17 = v9;
    v10 = hostCopy;
    v16 = v10;
    v11 = objc_retainBlock(v15);
    v12 = v11;
    v13 = atomic_fetch_add(dword_100015400, 0xFFFFFFFF) - 1;
    if (v9)
    {
      v14 = (v11[2])(v11, v13 == 0);
      v14[2]();
    }

    else
    {
      (*(v10 + 2))(v10, 0, v13);
      v14 = (v12)[2](v12, v13 == 0);
      dispatch_async(&_dispatch_main_q, v14);
    }
  }
}

- (void)loadAudioUnitInRemoteHost:(AudioComponentDescription *)host config:(id)config reply:(id)reply
{
  configCopy = config;
  replyCopy = reply;
  componentFlagsMask = host->componentFlagsMask;
  *&self->_componentDescription.componentType = *&host->componentType;
  self->_componentDescription.componentFlagsMask = componentFlagsMask;
  v11 = [NSUUID alloc];
  v12 = [configCopy objectForKeyedSubscript:@"audioUnitInstanceUUID"];
  v13 = [v11 initWithUUIDString:v12];

  if (v13)
  {
    if ((atomic_load_explicit(&qword_100015450, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_100015450))
    {
      sub_100005B6C("com.apple.coreaudio", "AUHostingService");
      __cxa_guard_release(&qword_100015450);
    }

    v14 = qword_100015440;
    if (os_log_type_enabled(qword_100015440, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v35 = "AUHostingService.mm";
      v36 = 1024;
      v37 = 148;
      v38 = 2112;
      v39 = v13;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%25s:%-5d Attempting to retrieve %@", buf, 0x1Cu);
    }

    v15 = +[AUHostingServiceInstanceMap sharedInstance];
    v16 = [v15 retrieveInstance:v13];
    host = self->_host;
    self->_host = v16;

    if ((atomic_load_explicit(&qword_100015450, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_100015450))
    {
      sub_100005B6C("com.apple.coreaudio", "AUHostingService");
      __cxa_guard_release(&qword_100015450);
    }

    v18 = qword_100015440;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      audioUnitUUID = [(AURemoteHost *)self->_host audioUnitUUID];
      uUIDString = [audioUnitUUID UUIDString];
      v21 = self->_host;
      *buf = 136315906;
      v35 = "AUHostingService.mm";
      v36 = 1024;
      v37 = 150;
      v38 = 2112;
      v39 = uUIDString;
      v40 = 2112;
      v41 = v21;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%25s:%-5d Connected to Audio Unit with UUID: %@ host instance: %@", buf, 0x26u);
    }
  }

  else
  {
    v22 = [AURemoteHost alloc];
    WeakRetained = objc_loadWeakRetained(&self->_connection);
    v24 = [v22 initWithConnection:WeakRetained config:configCopy];
    v25 = self->_host;
    self->_host = v24;

    if ((atomic_load_explicit(&qword_100015450, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_100015450))
    {
      sub_100005B6C("com.apple.coreaudio", "AUHostingService");
      __cxa_guard_release(&qword_100015450);
    }

    v26 = qword_100015440;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      audioUnitUUID2 = [(AURemoteHost *)self->_host audioUnitUUID];
      uUIDString2 = [audioUnitUUID2 UUIDString];
      v29 = self->_host;
      *buf = 136315906;
      v35 = "AUHostingService.mm";
      v36 = 1024;
      v37 = 153;
      v38 = 2112;
      v39 = uUIDString2;
      v40 = 2112;
      v41 = v29;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "%25s:%-5d Hosting Audio Unit with UUID: %@ host instance: %@", buf, 0x26u);
    }

    v18 = +[AUHostingServiceInstanceMap sharedInstance];
    audioUnitUUID3 = [(AURemoteHost *)self->_host audioUnitUUID];
    [v18 registerInstance:audioUnitUUID3 instance:self->_host];
  }

  if (self->_host)
  {
    CAFormatter::CAFormatter(&v33, &self->_componentDescription);
    if ((atomic_load_explicit(&qword_100015450, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_100015450))
    {
      sub_100005B6C("com.apple.coreaudio", "AUHostingService");
      __cxa_guard_release(&qword_100015450);
    }

    v31 = qword_100015440;
    if (os_log_type_enabled(qword_100015440, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v35 = "AUHostingService.mm";
      v36 = 1024;
      v37 = 164;
      v38 = 2080;
      v39 = v33;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "%25s:%-5d Hosting Audio Unit: %s", buf, 0x1Cu);
    }

    replyCopy[2](replyCopy, 0);
    if (v33)
    {
      free(v33);
    }
  }

  else
  {
    v32 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-10875 userInfo:0];
    (replyCopy)[2](replyCopy, v32);
  }
}

- (void)retrieveAudioUnitInstanceID:(id)d
{
  dCopy = d;
  host = self->_host;
  if (host)
  {
    audioUnitUUID = [(AURemoteHost *)host audioUnitUUID];
    dCopy[2](dCopy, 0, audioUnitUUID);
  }

  else
  {
    audioUnitUUID = [NSError errorWithDomain:NSOSStatusErrorDomain code:-10867 userInfo:0];
    (dCopy)[2](dCopy, audioUnitUUID, 0);
  }
}

- (id)forwardingTargetForSelector:(SEL)selector
{
  host = self->_host;
  if (host)
  {
    if (objc_opt_respondsToSelector())
    {
      host = self->_host;
    }

    else
    {
      host = 0;
    }
  }

  return host;
}

- (AUHostingService)initWithConnection:(id)connection
{
  connectionCopy = connection;
  v18.receiver = self;
  v18.super_class = AUHostingService;
  v5 = [(AUHostingService *)&v18 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_connection, connectionCopy);
    add = atomic_fetch_add(dword_100015400, 1u);
    v8 = +[NSXPCListener _UUID];
    v9 = v8;
    if (v8)
    {
      uUIDString = [v8 UUIDString];
      v11 = uUIDString;
      sub_1000066D8(&v6->_instanceUUID, [uUIDString UTF8String]);
    }

    if (!add)
    {
      if ((atomic_load_explicit(&qword_100015450, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_100015450))
      {
        sub_100005B6C("com.apple.coreaudio", "AUHostingService");
        __cxa_guard_release(&qword_100015450);
      }

      v12 = qword_100015440;
      if (os_log_type_enabled(qword_100015440, OS_LOG_TYPE_INFO))
      {
        p_instanceUUID = &v6->_instanceUUID;
        if (*(&v6->_instanceUUID.__rep_.__l + 23) < 0)
        {
          p_instanceUUID = p_instanceUUID->__data_;
        }

        *buf = 136315650;
        v20 = "AUHostingService.mm";
        v21 = 1024;
        v22 = 96;
        v23 = 2080;
        v24 = p_instanceUUID;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%25s:%-5d Launched new Audio Unit Hosting Service %s", buf, 0x1Cu);
      }
    }

    if ((atomic_load_explicit(&qword_100015450, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_100015450))
    {
      sub_100005B6C("com.apple.coreaudio", "AUHostingService");
      __cxa_guard_release(&qword_100015450);
    }

    v14 = qword_100015440;
    if (os_log_type_enabled(qword_100015440, OS_LOG_TYPE_INFO))
    {
      v15 = &v6->_instanceUUID;
      if (*(&v6->_instanceUUID.__rep_.__l + 23) < 0)
      {
        v15 = v15->__data_;
      }

      *buf = 136315650;
      v20 = "AUHostingService.mm";
      v21 = 1024;
      v22 = 100;
      v23 = 2080;
      v24 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%25s:%-5d New connection with Audio Unit Hosting Service %s", buf, 0x1Cu);
    }

    v16 = v6;
  }

  return v6;
}

+ (BOOL)instancesRespondToSelector:(SEL)selector
{
  if (([AURemoteHost instancesRespondToSelector:?]& 1) != 0)
  {
    return 1;
  }

  v6 = [self superclass];

  return [v6 instancesRespondToSelector:selector];
}

+ (BOOL)conformsToProtocol:(id)protocol
{
  protocolCopy = protocol;
  if (([AURemoteHost conformsToProtocol:protocolCopy]& 1) != 0)
  {
    v5 = 1;
  }

  else
  {
    v5 = [objc_msgSend(self "superclass")];
  }

  return v5;
}

@end