@interface DIIODaemonDelegate
+ (id)requestsStatsToNSArrayWithArray:(DIRequestsStatsArray *)array;
- (BOOL)createNotificationPortWithError:(id *)error;
- (BOOL)setupNewConnection:(id)connection;
- (BOOL)setupTerminationNotificationWithError:(id *)error;
- (BOOL)tryAttachWithParams:(id)params error:(id *)error;
- (BOOL)validateDeserializationWithParams:(id)params reply:(id)reply;
- (DIIODaemonDelegate)initWithIsRAM:(BOOL)m;
- (id)serviceName;
- (void)attachToExistingDeviceWithParams:(id)params reply:(id)reply;
- (void)attachToNewDeviceWithParams:(id)params reply:(id)reply;
- (void)destroyNotificationPort;
- (void)exitDaemon;
- (void)exitWithUnmount;
- (void)onClientInvalidateWithConnection:(id)connection;
- (void)retrieveStatsWithParams:(id)params reply:(id)reply;
- (void)runIOmanager;
- (void)setupExitDaemonWatchdog;
- (void)setupSigtermHandler;
- (void)unmountAll;
- (void)validateConnection;
- (void)validateInstance;
@end

@implementation DIIODaemonDelegate

- (DIIODaemonDelegate)initWithIsRAM:(BOOL)m
{
  v12.receiver = self;
  v12.super_class = DIIODaemonDelegate;
  v4 = [(DIBaseServiceDelegate *)&v12 init];
  v5 = v4;
  if (!v4 || (atomic_store(0, &v4->_unmountStarted), v4->_isRAM = m, v6 = objc_alloc_init(NSMutableSet), activeConnections = v5->_activeConnections, v5->_activeConnections = v6, activeConnections, [(DIIODaemonDelegate *)v5 validateInstance], [(DIIODaemonDelegate *)v5 createNotificationPortWithError:0]) && ([(DIIODaemonDelegate *)v5 setupSigtermHandler], [DIDiskArb diskArbWithError:0], v8 = objc_claimAutoreleasedReturnValue(), diskArbDisappear = v5->_diskArbDisappear, v5->_diskArbDisappear = v8, diskArbDisappear, v5->_diskArbDisappear))
  {
    v10 = v5;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)setupExitDaemonWatchdog
{
  v3 = dispatch_time(0, 8000000000);
  dispatchQueue = [(DIBaseServiceDelegate *)self dispatchQueue];
  dispatch_after(v3, dispatchQueue, &stru_1001F5780);
}

- (void)setupSigtermHandler
{
  signal(15, 1);
  v3 = dispatch_source_create(&_dispatch_source_type_signal, 0xFuLL, 0, &_dispatch_main_q);
  sigtermHandler = self->_sigtermHandler;
  self->_sigtermHandler = v3;

  v5 = self->_sigtermHandler;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100006C18;
  handler[3] = &unk_1001F57A8;
  handler[4] = self;
  dispatch_source_set_event_handler(v5, handler);
  dispatch_resume(self->_sigtermHandler);
}

- (void)destroyNotificationPort
{
  if ([(DIIODaemonDelegate *)self runLoopSource])
  {
    Current = CFRunLoopGetCurrent();
    CFRunLoopRemoveSource(Current, [(DIIODaemonDelegate *)self runLoopSource], kCFRunLoopDefaultMode);
    [(DIIODaemonDelegate *)self setRunLoopSource:0];
  }

  if ([(DIIODaemonDelegate *)self notificationPort])
  {
    IONotificationPortDestroy([(DIIODaemonDelegate *)self notificationPort]);
    [(DIIODaemonDelegate *)self setNotificationPort:0];
  }

  notificationIterator = self->_notificationIterator;
  if (notificationIterator)
  {
    IOObjectRelease(notificationIterator);
    self->_notificationIterator = 0;
  }
}

- (BOOL)createNotificationPortWithError:(id *)error
{
  [(DIIODaemonDelegate *)self setNotificationPort:IONotificationPortCreate(kIOMainPortDefault)];
  if ([(DIIODaemonDelegate *)self notificationPort])
  {
    [(DIIODaemonDelegate *)self setRunLoopSource:IONotificationPortGetRunLoopSource(self->_notificationPort)];
    if ([(DIIODaemonDelegate *)self runLoopSource])
    {
      Current = CFRunLoopGetCurrent();
      CFRunLoopAddSource(Current, [(DIIODaemonDelegate *)self runLoopSource], kCFRunLoopDefaultMode);
      return 1;
    }

    [(DIIODaemonDelegate *)self destroyNotificationPort];
    v7 = @"Failed getting runloop source";
  }

  else
  {
    v7 = @"Failed creating notification port";
  }

  return [DIError failWithEnumValue:153 verboseInfo:v7 error:error];
}

- (BOOL)setupTerminationNotificationWithError:(id *)error
{
  v5 = IOServiceMatching("AppleDiskImageDevice");
  if (IOServiceAddMatchingNotification(self->_notificationPort, "IOServiceTerminate", v5, sub_100006FFC, self, &self->_notificationIterator))
  {

    return [DIError failWithEnumValue:153 verboseInfo:@"Failed adding matching notification" error:error];
  }

  else
  {
    sub_100006FFC(self, self->_notificationIterator);
    return 1;
  }
}

- (void)exitDaemon
{
  v4 = *__error();
  v5 = sub_1000E95F0();
  if (v5)
  {
    v46 = 0;
    v7 = sub_1000E957C(v5, v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 3;
    }

    else
    {
      v8 = 2;
    }

    deviceHandle = [(DIIODaemonDelegate *)self deviceHandle];
    if (deviceHandle)
    {
      deviceHandle2 = [(DIIODaemonDelegate *)self deviceHandle];
      bSDName = [deviceHandle2 BSDName];
    }

    else
    {
      bSDName = @"an unprepared device";
    }

    *buf = 68158210;
    v48 = 32;
    v49 = 2080;
    v50 = "[DIIODaemonDelegate exitDaemon]";
    v51 = 2114;
    v52 = bSDName;
    v11 = _os_log_send_and_compose_impl(v8, &v46, 0, 0, &_mh_execute_header, v7, 0, "%.*s: IO daemon of %{public}@ is shutting down, stopping IO channels", buf, 28);
    if (deviceHandle)
    {
    }

    if (v11)
    {
      fprintf(__stderrp, "%s\n", v11);
      free(v11);
    }
  }

  else
  {
    v12 = sub_1000E957C(v5, v6);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      deviceHandle3 = [(DIIODaemonDelegate *)self deviceHandle];
      if (deviceHandle3)
      {
        deviceHandle2 = [(DIIODaemonDelegate *)self deviceHandle];
        bSDName2 = [deviceHandle2 BSDName];
      }

      else
      {
        bSDName2 = @"an unprepared device";
      }

      *buf = 68158210;
      v48 = 32;
      v49 = 2080;
      v50 = "[DIIODaemonDelegate exitDaemon]";
      v51 = 2114;
      v52 = bSDName2;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%.*s: IO daemon of %{public}@ is shutting down, stopping IO channels", buf, 0x1Cu);
      if (deviceHandle3)
      {
      }
    }
  }

  *__error() = v4;
  [(DIIODaemonDelegate *)self setupExitDaemonWatchdog];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  listener = [(DIBaseServiceDelegate *)selfCopy listener];
  [listener invalidate];

  clientDelegate = [(DIIODaemonDelegate *)selfCopy clientDelegate];
  v18 = clientDelegate == 0;

  if (!v18)
  {
    clientDelegate2 = [(DIIODaemonDelegate *)selfCopy clientDelegate];
    listener2 = [clientDelegate2 listener];
    [listener2 invalidate];
  }

  v19 = *__error();
  v20 = sub_1000E95F0();
  if (v20)
  {
    v46 = 0;
    v22 = sub_1000E957C(v20, v21);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 3;
    }

    else
    {
      v23 = 2;
    }

    activeConnections = [(DIIODaemonDelegate *)selfCopy activeConnections];
    v25 = [activeConnections count];
    *buf = 68158210;
    v48 = 32;
    v49 = 2080;
    v50 = "[DIIODaemonDelegate exitDaemon]";
    v51 = 2048;
    v52 = v25;
    LODWORD(v44) = 28;
    v26 = _os_log_send_and_compose_impl(v23, &v46, 0, 0, &_mh_execute_header, v22, 0, "%.*s: # client connections at time of daemon termination: %lu", buf, v44, v45);

    if (v26)
    {
      fprintf(__stderrp, "%s\n", v26);
      free(v26);
    }
  }

  else
  {
    v29 = sub_1000E957C(v20, v21);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      activeConnections2 = [(DIIODaemonDelegate *)selfCopy activeConnections];
      v31 = [activeConnections2 count];
      *buf = 68158210;
      v48 = 32;
      v49 = 2080;
      v50 = "[DIIODaemonDelegate exitDaemon]";
      v51 = 2048;
      v52 = v31;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "%.*s: # client connections at time of daemon termination: %lu", buf, 0x1Cu);
    }
  }

  *__error() = v19;
  [(DIIODaemonDelegate *)selfCopy destroyNotificationPort];
  diskArbDisappear = [(DIIODaemonDelegate *)selfCopy diskArbDisappear];
  [diskArbDisappear stop];

  sigtermHandler = [(DIIODaemonDelegate *)selfCopy sigtermHandler];
  v34 = sigtermHandler == 0;

  if (!v34)
  {
    sigtermHandler2 = [(DIIODaemonDelegate *)selfCopy sigtermHandler];
    dispatch_source_cancel(sigtermHandler2);

    [(DIIODaemonDelegate *)selfCopy setSigtermHandler:0];
  }

  ioManager = selfCopy->_ioManager;
  if (!ioManager)
  {
    v36 = *__error();
    v37 = sub_1000E95F0();
    if (v37)
    {
      v46 = 0;
      v39 = sub_1000E957C(v37, v38);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        v40 = 3;
      }

      else
      {
        v40 = 2;
      }

      *buf = 68157954;
      v48 = 32;
      v49 = 2080;
      v50 = "[DIIODaemonDelegate exitDaemon]";
      LODWORD(v44) = 18;
      v41 = _os_log_send_and_compose_impl(v40, &v46, 0, 0, &_mh_execute_header, v39, 0, "%.*s: _ioManager was not initialized yet, quitting immediately", buf, v44);

      if (v41)
      {
        fprintf(__stderrp, "%s\n", v41);
        free(v41);
      }
    }

    else
    {
      v43 = sub_1000E957C(v37, v38);
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68157954;
        v48 = 32;
        v49 = 2080;
        v50 = "[DIIODaemonDelegate exitDaemon]";
        _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "%.*s: _ioManager was not initialized yet, quitting immediately", buf, 0x12u);
      }
    }

    *__error() = v36;
    exit(0);
  }

  sub_10000E33C(ioManager);
  while (1)
  {
    sleep(0xAu);
  }
}

- (void)validateInstance
{
  v2 = getenv("LaunchInstanceID");
  if (v2)
  {
    v3 = v2;
    v4 = *__error();
    v5 = sub_1000E95F0();
    if (v5)
    {
      v11 = 0;
      v7 = sub_1000E957C(v5, v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = 3;
      }

      else
      {
        v8 = 2;
      }

      *buf = 68158210;
      v13 = 38;
      v14 = 2080;
      v15 = "[DIIODaemonDelegate validateInstance]";
      v16 = 2082;
      v17 = v3;
      v9 = _os_log_send_and_compose_impl(v8, &v11, 0, 0, &_mh_execute_header, v7, 0, "%.*s: Instance ID: %{public}s", buf, 28);

      if (v9)
      {
        fprintf(__stderrp, "%s\n", v9);
        free(v9);
      }
    }

    else
    {
      v10 = sub_1000E957C(v5, v6);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68158210;
        v13 = 38;
        v14 = 2080;
        v15 = "[DIIODaemonDelegate validateInstance]";
        v16 = 2082;
        v17 = v3;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%.*s: Instance ID: %{public}s", buf, 0x1Cu);
      }
    }

    *__error() = v4;
  }
}

- (id)serviceName
{
  if (getuid())
  {
    isRAM = [(DIIODaemonDelegate *)self isRAM];
    v4 = @"com.apple.diskimagesiod";
    if (isRAM)
    {
      v4 = @"com.apple.diskimagesiod.ram";
    }

    v5 = v4;
  }

  else
  {
    v5 = @"com.apple.diskimagesiod.spb";
  }

  return v5;
}

- (void)unmountAll
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy;
  deviceHandle = [(DIIODaemonDelegate *)selfCopy deviceHandle];
  if (!deviceHandle || (-[DIIODaemonDelegate deviceHandle](selfCopy, "deviceHandle"), v5 = objc_claimAutoreleasedReturnValue(), [v5 BSDName], v6 = objc_claimAutoreleasedReturnValue(), v6, v5, deviceHandle, !v6))
  {
LABEL_15:
    objc_sync_exit(v3);
    goto LABEL_16;
  }

  ioManager = v3->_ioManager;
  if (!ioManager || (ioManager[112] & 1) != 0)
  {
    v8 = *__error();
    v9 = sub_1000E95F0();
    if (v9)
    {
      v58 = 0;
      v11 = sub_1000E957C(v9, v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 3;
      }

      else
      {
        v12 = 2;
      }

      *buf = 68157954;
      v60 = 32;
      v61 = 2080;
      v62 = "[DIIODaemonDelegate unmountAll]";
      LODWORD(v51) = 18;
      v13 = _os_log_send_and_compose_impl(v12, &v58, 0, 0, &_mh_execute_header, v11, 0, "%.*s: Device is already ejected, skipping unmount", buf, v51);

      if (v13)
      {
        fprintf(__stderrp, "%s\n", v13);
        free(v13);
      }
    }

    else
    {
      v14 = sub_1000E957C(v9, v10);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68157954;
        v60 = 32;
        v61 = 2080;
        v62 = "[DIIODaemonDelegate unmountAll]";
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%.*s: Device is already ejected, skipping unmount", buf, 0x12u);
      }
    }

    *__error() = v8;
    goto LABEL_15;
  }

  objc_sync_exit(v3);

  v15 = [DIAttachedDeviceInfo alloc];
  deviceHandle2 = [(DIIODaemonDelegate *)v3 deviceHandle];
  bSDName = [deviceHandle2 BSDName];
  v3 = [(DIAttachedDeviceInfo *)v15 initWithBSDName:bSDName error:0];

  if (v3)
  {
    v52 = v3;
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    obj = [(DIIODaemonDelegate *)v3 copyEntitiesList];
    v18 = [obj countByEnumeratingWithState:&v54 objects:v67 count:16];
    if (v18)
    {
      v19 = *v55;
      do
      {
        for (i = 0; i != v18; i = i + 1)
        {
          if (*v55 != v19)
          {
            objc_enumerationMutation(obj);
          }

          v21 = *(*(&v54 + 1) + 8 * i);
          v22 = [v21 objectForKeyedSubscript:@"Mount Point"];
          if (v22)
          {
            v23 = *__error();
            v24 = sub_1000E95F0();
            if (v24)
            {
              v58 = 0;
              v26 = sub_1000E957C(v24, v25);
              v27 = os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);
              v28 = [v21 objectForKeyedSubscript:@"BSD Name"];
              *buf = 68158467;
              if (v27)
              {
                v29 = 3;
              }

              else
              {
                v29 = 2;
              }

              v60 = 32;
              v61 = 2080;
              v62 = "[DIIODaemonDelegate unmountAll]";
              v63 = 2113;
              v64 = v22;
              v65 = 2114;
              v66 = v28;
              LODWORD(v51) = 38;
              v30 = _os_log_send_and_compose_impl(v29, &v58, 0, 0, &_mh_execute_header, v26, 0, "%.*s: Forcing unmount of %{private}@ (%{public}@)", buf, v51);

              if (v30)
              {
                fprintf(__stderrp, "%s\n", v30);
                free(v30);
              }
            }

            else
            {
              v31 = sub_1000E957C(v24, v25);
              if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
              {
                v32 = [v21 objectForKeyedSubscript:@"BSD Name"];
                *buf = 68158467;
                v60 = 32;
                v61 = 2080;
                v62 = "[DIIODaemonDelegate unmountAll]";
                v63 = 2113;
                v64 = v22;
                v65 = 2114;
                v66 = v32;
                _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "%.*s: Forcing unmount of %{private}@ (%{public}@)", buf, 0x26u);
              }
            }

            *__error() = v23;
            v33 = v22;
            if (unmount([v22 fileSystemRepresentation], 0x80000))
            {
              v34 = *__error();
              v35 = sub_1000E95F0();
              if (v35)
              {
                v58 = 0;
                v37 = sub_1000E957C(v35, v36);
                v38 = os_log_type_enabled(v37, OS_LOG_TYPE_ERROR);
                v39 = *__error();
                if (v38)
                {
                  v40 = 3;
                }

                else
                {
                  v40 = 2;
                }

                *buf = 68158467;
                v60 = 32;
                v61 = 2080;
                v62 = "[DIIODaemonDelegate unmountAll]";
                v63 = 2113;
                v64 = v22;
                v65 = 1024;
                LODWORD(v66) = v39;
                LODWORD(v51) = 34;
                v41 = _os_log_send_and_compose_impl(v40, &v58, 0, 0, &_mh_execute_header, v37, 16, "%.*s: Force unmount of %{private}@ failed with errno %d", buf, v51);

                if (v41)
                {
                  fprintf(__stderrp, "%s\n", v41);
                  free(v41);
                }
              }

              else
              {
                v42 = sub_1000E957C(v35, v36);
                if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
                {
                  v43 = *__error();
                  *buf = 68158467;
                  v60 = 32;
                  v61 = 2080;
                  v62 = "[DIIODaemonDelegate unmountAll]";
                  v63 = 2113;
                  v64 = v22;
                  v65 = 1024;
                  LODWORD(v66) = v43;
                  _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, "%.*s: Force unmount of %{private}@ failed with errno %d", buf, 0x22u);
                }
              }

              *__error() = v34;
            }
          }
        }

        v18 = [obj countByEnumeratingWithState:&v54 objects:v67 count:16];
      }

      while (v18);
    }

    v44 = *__error();
    v45 = sub_1000E95F0();
    if (v45)
    {
      v58 = 0;
      v47 = sub_1000E957C(v45, v46);
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
      {
        v48 = 3;
      }

      else
      {
        v48 = 2;
      }

      *buf = 68157954;
      v60 = 32;
      v61 = 2080;
      v62 = "[DIIODaemonDelegate unmountAll]";
      LODWORD(v51) = 18;
      v49 = _os_log_send_and_compose_impl(v48, &v58, 0, 0, &_mh_execute_header, v47, 0, "%.*s: Unmount done", buf, v51);

      if (v49)
      {
        fprintf(__stderrp, "%s\n", v49);
        free(v49);
      }
    }

    else
    {
      v50 = sub_1000E957C(v45, v46);
      if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68157954;
        v60 = 32;
        v61 = 2080;
        v62 = "[DIIODaemonDelegate unmountAll]";
        _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "%.*s: Unmount done", buf, 0x12u);
      }
    }

    *__error() = v44;

    v3 = v52;
  }

LABEL_16:
}

- (void)exitWithUnmount
{
  v2 = 0;
  atomic_compare_exchange_strong(&self->_unmountStarted.__a_.__a_value, &v2, 1u);
  if (v2)
  {
    v14 = *__error();
    v15 = sub_1000E95F0();
    if (v15)
    {
      v32 = 0;
      v17 = sub_1000E957C(v15, v16);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 3;
      }

      else
      {
        v18 = 2;
      }

      *buf = 68157954;
      v34 = 37;
      v35 = 2080;
      v36 = "[DIIODaemonDelegate exitWithUnmount]";
      LODWORD(v29) = 18;
      v19 = _os_log_send_and_compose_impl(v18, &v32, 0, 0, &_mh_execute_header, v17, 0, "%.*s: Exit already in progress", buf, v29);

      if (v19)
      {
        fprintf(__stderrp, "%s\n", v19);
        free(v19);
      }
    }

    else
    {
      v20 = sub_1000E957C(v15, v16);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68157954;
        v34 = 37;
        v35 = 2080;
        v36 = "[DIIODaemonDelegate exitWithUnmount]";
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%.*s: Exit already in progress", buf, 0x12u);
      }
    }

    *__error() = v14;
  }

  else
  {
    v4 = dispatch_semaphore_create(0);
    if (!v4)
    {
      v22 = *__error();
      v23 = sub_1000E95F0();
      if (v23)
      {
        v32 = 0;
        v25 = sub_1000E957C(v23, v24);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          v26 = 3;
        }

        else
        {
          v26 = 2;
        }

        *buf = 68157954;
        v34 = 37;
        v35 = 2080;
        v36 = "[DIIODaemonDelegate exitWithUnmount]";
        LODWORD(v29) = 18;
        v27 = _os_log_send_and_compose_impl(v26, &v32, 0, 0, &_mh_execute_header, v25, 16, "%.*s: Failed creating unmount done semaphore", buf, v29);

        if (v27)
        {
          fprintf(__stderrp, "%s\n", v27);
          free(v27);
        }
      }

      else
      {
        v28 = sub_1000E957C(v23, v24);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          *buf = 68157954;
          v34 = 37;
          v35 = 2080;
          v36 = "[DIIODaemonDelegate exitWithUnmount]";
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "%.*s: Failed creating unmount done semaphore", buf, 0x12u);
        }
      }

      *__error() = v22;
      exit(0);
    }

    dispatchQueue = [(DIBaseServiceDelegate *)self dispatchQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100008960;
    block[3] = &unk_1001F57D0;
    block[4] = self;
    v6 = v4;
    v31 = v6;
    dispatch_async(dispatchQueue, block);

    v7 = dispatch_time(0, 30000000000);
    if (dispatch_semaphore_wait(v6, v7))
    {
      v8 = *__error();
      v9 = sub_1000E95F0();
      if (v9)
      {
        v32 = 0;
        v11 = sub_1000E957C(v9, v10);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          v12 = 3;
        }

        else
        {
          v12 = 2;
        }

        *buf = 68157954;
        v34 = 37;
        v35 = 2080;
        v36 = "[DIIODaemonDelegate exitWithUnmount]";
        LODWORD(v29) = 18;
        v13 = _os_log_send_and_compose_impl(v12, &v32, 0, 0, &_mh_execute_header, v11, 16, "%.*s: Unmount timeout occurred", buf, v29);

        if (v13)
        {
          fprintf(__stderrp, "%s\n", v13);
          free(v13);
        }
      }

      else
      {
        v21 = sub_1000E957C(v9, v10);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          *buf = 68157954;
          v34 = 37;
          v35 = 2080;
          v36 = "[DIIODaemonDelegate exitWithUnmount]";
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%.*s: Unmount timeout occurred", buf, 0x12u);
        }
      }

      *__error() = v8;
    }

    [(DIIODaemonDelegate *)self exitDaemon];
  }
}

- (void)onClientInvalidateWithConnection:(id)connection
{
  connectionCopy = connection;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  activeConnections = [(DIIODaemonDelegate *)selfCopy activeConnections];
  [activeConnections removeObject:connectionCopy];

  deviceHandle = [(DIIODaemonDelegate *)selfCopy deviceHandle];

  if (!deviceHandle)
  {
    v8 = *__error();
    v9 = sub_1000E95F0();
    if (v9)
    {
      v39 = 0;
      v11 = sub_1000E957C(v9, v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 3;
      }

      else
      {
        v12 = 2;
      }

      *buf = 68157954;
      v41 = 55;
      v42 = 2080;
      v43 = "[DIIODaemonDelegate onClientInvalidateWithConnection:]";
      LODWORD(v37) = 18;
      v13 = _os_log_send_and_compose_impl(v12, &v39, 0, 0, &_mh_execute_header, v11, 0, "%.*s: Reached XPC invalidation/interruption before device initialization, quitting.", buf, v37);

      if (v13)
      {
        fprintf(__stderrp, "%s\n", v13);
        free(v13);
      }
    }

    else
    {
      v14 = sub_1000E957C(v9, v10);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68157954;
        v41 = 55;
        v42 = 2080;
        v43 = "[DIIODaemonDelegate onClientInvalidateWithConnection:]";
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%.*s: Reached XPC invalidation/interruption before device initialization, quitting.", buf, 0x12u);
      }
    }

    *__error() = v8;
    [(DIIODaemonDelegate *)selfCopy exitDaemon];
  }

  if (![(DIIODaemonDelegate *)selfCopy handleRefCount])
  {
    v17 = *__error();
    v25 = sub_1000E95F0();
    if (!v25)
    {
      v31 = sub_1000E957C(v25, v26);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        activeConnections2 = [(DIIODaemonDelegate *)selfCopy activeConnections];
        v33 = [activeConnections2 count];
        *buf = 68158210;
        v41 = 55;
        v42 = 2080;
        v43 = "[DIIODaemonDelegate onClientInvalidateWithConnection:]";
        v44 = 2048;
        v45 = v33;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "%.*s: Unmanaged attach, ignoring XPC disconnection (# open connections left: %lu)", buf, 0x1Cu);
      }

      goto LABEL_34;
    }

    v39 = 0;
    v27 = sub_1000E957C(v25, v26);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = 3;
    }

    else
    {
      v28 = 2;
    }

    activeConnections3 = [(DIIODaemonDelegate *)selfCopy activeConnections];
    v30 = [activeConnections3 count];
    *buf = 68158210;
    v41 = 55;
    v42 = 2080;
    v43 = "[DIIODaemonDelegate onClientInvalidateWithConnection:]";
    v44 = 2048;
    v45 = v30;
    LODWORD(v37) = 28;
    v24 = _os_log_send_and_compose_impl(v28, &v39, 0, 0, &_mh_execute_header, v27, 0, "%.*s: Unmanaged attach, ignoring XPC disconnection (# open connections left: %lu)", buf, v37, v38);

    if (v24)
    {
LABEL_19:
      fprintf(__stderrp, "%s\n", v24);
      free(v24);
    }

LABEL_34:
    *__error() = v17;
    objc_sync_exit(selfCopy);

    goto LABEL_35;
  }

  activeConnections4 = [(DIIODaemonDelegate *)selfCopy activeConnections];
  v16 = [activeConnections4 count] == 0;

  if (!v16)
  {
    v17 = *__error();
    v18 = sub_1000E95F0();
    if (!v18)
    {
      v34 = sub_1000E957C(v18, v19);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        activeConnections5 = [(DIIODaemonDelegate *)selfCopy activeConnections];
        v36 = [activeConnections5 count];
        *buf = 68158210;
        v41 = 55;
        v42 = 2080;
        v43 = "[DIIODaemonDelegate onClientInvalidateWithConnection:]";
        v44 = 2048;
        v45 = v36;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "%.*s: XPC connection closed for a managed attach, # open connections left: %lu", buf, 0x1Cu);
      }

      goto LABEL_34;
    }

    v39 = 0;
    v20 = sub_1000E957C(v18, v19);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 3;
    }

    else
    {
      v21 = 2;
    }

    activeConnections6 = [(DIIODaemonDelegate *)selfCopy activeConnections];
    v23 = [activeConnections6 count];
    *buf = 68158210;
    v41 = 55;
    v42 = 2080;
    v43 = "[DIIODaemonDelegate onClientInvalidateWithConnection:]";
    v44 = 2048;
    v45 = v23;
    LODWORD(v37) = 28;
    v24 = _os_log_send_and_compose_impl(v21, &v39, 0, 0, &_mh_execute_header, v20, 0, "%.*s: XPC connection closed for a managed attach, # open connections left: %lu", buf, v37, v38);

    if (v24)
    {
      goto LABEL_19;
    }

    goto LABEL_34;
  }

  objc_sync_exit(selfCopy);

  [(DIIODaemonDelegate *)selfCopy exitWithUnmount];
LABEL_35:
}

- (void)runIOmanager
{
  sub_10000E300(self->_ioManager);
  ioManager = self->_ioManager;
  if (ioManager)
  {
    sub_10000E2FC(ioManager);
    operator delete();
  }

  v4 = *__error();
  v5 = sub_1000E95F0();
  if (v5)
  {
    v12 = 0;
    v7 = sub_1000E957C(v5, v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 3;
    }

    else
    {
      v8 = 2;
    }

    *buf = 68157954;
    v14 = 34;
    v15 = 2080;
    v16 = "[DIIODaemonDelegate runIOmanager]";
    LODWORD(v11) = 18;
    v9 = _os_log_send_and_compose_impl(v8, &v12, 0, 0, &_mh_execute_header, v7, 0, "%.*s: Shutdown is complete", buf, v11);

    if (v9)
    {
      fprintf(__stderrp, "%s\n", v9);
      free(v9);
    }
  }

  else
  {
    v10 = sub_1000E957C(v5, v6);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68157954;
      v14 = 34;
      v15 = 2080;
      v16 = "[DIIODaemonDelegate runIOmanager]";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%.*s: Shutdown is complete", buf, 0x12u);
    }
  }

  *__error() = v4;
  [(DIIODaemonDelegate *)self setAttachedTransaction:0];
  exit(0);
}

- (BOOL)tryAttachWithParams:(id)params error:(id *)error
{
  paramsCopy = params;
  objc_initWeak(&location, self);
  -[DIIODaemonDelegate setHandleRefCount:](self, "setHandleRefCount:", [paramsCopy handleRefCount]);
  if ([(DIIODaemonDelegate *)self handleRefCount])
  {
    v7 = [[DIIOClientDelegate alloc] initWithIODaemon:self];
    [(DIIODaemonDelegate *)self setClientDelegate:v7];

    clientDelegate = [(DIIODaemonDelegate *)self clientDelegate];
    [clientDelegate startXPClistener];

    v9 = [DIDeviceHandle alloc];
    regEntryID = [paramsCopy regEntryID];
    clientDelegate2 = [(DIIODaemonDelegate *)self clientDelegate];
    xpcEndpoint = [(DIDeviceHandle *)clientDelegate2 xpcEndpoint];
    v13 = [(DIDeviceHandle *)v9 initWithRegEntryID:regEntryID xpcEndpoint:xpcEndpoint];
    [(DIIODaemonDelegate *)self setDeviceHandle:v13];
  }

  else
  {
    clientDelegate2 = -[DIDeviceHandle initWithRegEntryID:]([DIDeviceHandle alloc], "initWithRegEntryID:", [paramsCopy regEntryID]);
    [(DIIODaemonDelegate *)self setDeviceHandle:clientDelegate2];
  }

  deviceHandle = [(DIIODaemonDelegate *)self deviceHandle];
  v29 = +[DIBlockDevice copyUnmatchedDiskImageWithRegEntryID:error:](DIBlockDevice, "copyUnmatchedDiskImageWithRegEntryID:error:", [deviceHandle regEntryID], error);

  if (v29)
  {
    IOObjectRetain([v29 ioObj]);
    if ([(DIIODaemonDelegate *)self setupTerminationNotificationWithError:error])
    {
      diskArbDisappear = [(DIIODaemonDelegate *)self diskArbDisappear];
      inputStatFS = [paramsCopy inputStatFS];
      if (inputStatFS)
      {
        inputStatFS2 = [paramsCopy inputStatFS];
        mountedOnURL = [inputStatFS2 mountedOnURL];
      }

      else
      {
        mountedOnURL = 0;
      }

      shadowChain = [paramsCopy shadowChain];
      mountPoints = [shadowChain mountPoints];
      [diskArbDisappear addDisappearedCallbackWithMountPoint:mountedOnURL shadowMountPoints:mountPoints delegate:self];

      if (inputStatFS)
      {
      }

      v20 = *__error();
      v21 = sub_1000E95F0();
      if (v21)
      {
        v31 = 0;
        v23 = sub_1000E957C(v21, v22);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          v24 = 3;
        }

        else
        {
          v24 = 2;
        }

        *buf = 68157954;
        v34 = 48;
        v35 = 2080;
        v36 = "[DIIODaemonDelegate tryAttachWithParams:error:]";
        LODWORD(v28) = 18;
        v25 = _os_log_send_and_compose_impl(v24, &v31, 0, 0, &_mh_execute_header, v23, 0, "%.*s: Dispatching DIIOManager", buf, v28);

        if (v25)
        {
          fprintf(__stderrp, "%s\n", v25);
          free(v25);
        }
      }

      else
      {
        v26 = sub_1000E957C(v21, v22);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 68157954;
          v34 = 48;
          v35 = 2080;
          v36 = "[DIIODaemonDelegate tryAttachWithParams:error:]";
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "%.*s: Dispatching DIIOManager", buf, 0x12u);
        }
      }

      *__error() = v20;
      operator new();
    }
  }

  objc_destroyWeak(&location);
  return 0;
}

- (BOOL)validateDeserializationWithParams:(id)params reply:(id)reply
{
  paramsCopy = params;
  replyCopy = reply;
  v10 = 0;
  v7 = [paramsCopy validateDeserializationWithError:&v10];
  v8 = v10;
  if ((v7 & 1) == 0)
  {
    replyCopy[2](replyCopy, 0, v8);
  }

  return v7;
}

- (void)attachToNewDeviceWithParams:(id)params reply:(id)reply
{
  paramsCopy = params;
  replyCopy = reply;
  objc_initWeak(&location, self);
  if ([(DIIODaemonDelegate *)self validateDeserializationWithParams:paramsCopy reply:replyCopy])
  {
    v8 = *__error();
    v9 = sub_1000E95F0();
    if (v9)
    {
      v25 = 0;
      v11 = sub_1000E957C(v9, v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 3;
      }

      else
      {
        v12 = 2;
      }

      instanceID = [paramsCopy instanceID];
      regEntryID = [paramsCopy regEntryID];
      *buf = 68158466;
      v28 = 56;
      v29 = 2080;
      v30 = "[DIIODaemonDelegate attachToNewDeviceWithParams:reply:]";
      v31 = 2114;
      v32 = instanceID;
      v33 = 2048;
      v34 = regEntryID;
      v15 = _os_log_send_and_compose_impl(v12, &v25, 0, 0, &_mh_execute_header, v11, 0, "%.*s: entry, instance ID = %{public}@, registry entry ID = 0x%llx", buf, 38);

      if (v15)
      {
        fprintf(__stderrp, "%s\n", v15);
        free(v15);
      }
    }

    else
    {
      v16 = sub_1000E957C(v9, v10);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        instanceID2 = [paramsCopy instanceID];
        regEntryID2 = [paramsCopy regEntryID];
        *buf = 68158466;
        v28 = 56;
        v29 = 2080;
        v30 = "[DIIODaemonDelegate attachToNewDeviceWithParams:reply:]";
        v31 = 2114;
        v32 = instanceID2;
        v33 = 2048;
        v34 = regEntryID2;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%.*s: entry, instance ID = %{public}@, registry entry ID = 0x%llx", buf, 0x26u);
      }
    }

    *__error() = v8;
    if (!getuid() && ([paramsCopy requiresRootDaemon] & 1) == 0)
    {
      v19 = [DIError errorWithPOSIXCode:1 verboseInfo:@"Root daemon connection denied"];
      replyCopy[2](replyCopy, 0, v19);
      [(DIIODaemonDelegate *)self exitDaemon];
    }

    dispatchQueue = [(DIBaseServiceDelegate *)self dispatchQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000A0C4;
    block[3] = &unk_1001F5820;
    objc_copyWeak(&v24, &location);
    v23 = replyCopy;
    v22 = paramsCopy;
    dispatch_async(dispatchQueue, block);

    objc_destroyWeak(&v24);
  }

  objc_destroyWeak(&location);
}

- (void)attachToExistingDeviceWithParams:(id)params reply:(id)reply
{
  paramsCopy = params;
  replyCopy = reply;
  if ([(DIIODaemonDelegate *)self validateDeserializationWithParams:paramsCopy reply:replyCopy])
  {
    v8 = *__error();
    v9 = sub_1000E95F0();
    if (v9)
    {
      v48 = 0;
      v11 = sub_1000E957C(v9, v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 3;
      }

      else
      {
        v12 = 2;
      }

      instanceID = [paramsCopy instanceID];
      *buf = 68158466;
      v50 = 61;
      v51 = 2080;
      v52 = "[DIIODaemonDelegate attachToExistingDeviceWithParams:reply:]";
      v53 = 2114;
      v54 = instanceID;
      v55 = 2048;
      regEntryID = [paramsCopy regEntryID];
      v14 = _os_log_send_and_compose_impl(v12, &v48, 0, 0, &_mh_execute_header, v11, 0, "%.*s: entry, instance ID = %{public}@, registry entry ID = 0x%llx", buf, 38);

      if (v14)
      {
        fprintf(__stderrp, "%s\n", v14);
        free(v14);
      }
    }

    else
    {
      v15 = sub_1000E957C(v9, v10);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        instanceID2 = [paramsCopy instanceID];
        *buf = 68158466;
        v50 = 61;
        v51 = 2080;
        v52 = "[DIIODaemonDelegate attachToExistingDeviceWithParams:reply:]";
        v53 = 2114;
        v54 = instanceID2;
        v55 = 2048;
        regEntryID = [paramsCopy regEntryID];
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%.*s: entry, instance ID = %{public}@, registry entry ID = 0x%llx", buf, 0x26u);
      }
    }

    *__error() = v8;
    selfCopy = self;
    objc_sync_enter(selfCopy);
    deviceHandle = [(DIIODaemonDelegate *)selfCopy deviceHandle];
    v19 = deviceHandle == 0;

    if (v19)
    {
      v23 = [DIError errorWithEnumValue:155 verboseInfo:@"A controller XPC service attempted to connect to an existing device, but this daemon instance has no such device yet"];
      replyCopy[2](replyCopy, 0, v23);
    }

    else
    {
      regEntryID2 = [paramsCopy regEntryID];
      deviceHandle2 = [(DIIODaemonDelegate *)selfCopy deviceHandle];
      LOBYTE(regEntryID2) = regEntryID2 == [deviceHandle2 regEntryID];

      if (regEntryID2)
      {
        v22 = atomic_load(&selfCopy->_unmountStarted);
        if (v22)
        {
          v23 = [DIError errorWithEnumValue:170 verboseInfo:@"Unmount already started, notifying controller to retry later"];
          replyCopy[2](replyCopy, 0, v23);
        }

        else
        {
          if ([paramsCopy handleRefCount] && !-[DIIODaemonDelegate handleRefCount](selfCopy, "handleRefCount"))
          {
            v30 = *__error();
            v31 = sub_1000E95F0();
            if (v31)
            {
              v48 = 0;
              v33 = sub_1000E957C(v31, v32);
              if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
              {
                v34 = 3;
              }

              else
              {
                v34 = 2;
              }

              *buf = 68157954;
              v50 = 61;
              v51 = 2080;
              v52 = "[DIIODaemonDelegate attachToExistingDeviceWithParams:reply:]";
              LODWORD(v47) = 18;
              v35 = _os_log_send_and_compose_impl(v34, &v48, 0, 0, &_mh_execute_header, v33, 0, "%.*s: Ignoring client reference counting request as a previous attach was performed without reference counting", buf, v47);

              if (v35)
              {
                fprintf(__stderrp, "%s\n", v35);
                free(v35);
              }
            }

            else
            {
              v36 = sub_1000E957C(v31, v32);
              if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 68157954;
                v50 = 61;
                v51 = 2080;
                v52 = "[DIIODaemonDelegate attachToExistingDeviceWithParams:reply:]";
                _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "%.*s: Ignoring client reference counting request as a previous attach was performed without reference counting", buf, 0x12u);
              }
            }

            *__error() = v30;
          }

          else if (([paramsCopy handleRefCount] & 1) == 0 && -[DIIODaemonDelegate handleRefCount](selfCopy, "handleRefCount"))
          {
            v24 = *__error();
            v25 = sub_1000E95F0();
            if (v25)
            {
              v48 = 0;
              v27 = sub_1000E957C(v25, v26);
              if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
              {
                v28 = 3;
              }

              else
              {
                v28 = 2;
              }

              *buf = 68157954;
              v50 = 61;
              v51 = 2080;
              v52 = "[DIIODaemonDelegate attachToExistingDeviceWithParams:reply:]";
              LODWORD(v47) = 18;
              v29 = _os_log_send_and_compose_impl(v28, &v48, 0, 0, &_mh_execute_header, v27, 0, "%.*s: Disabling reference counting", buf, v47);

              if (v29)
              {
                fprintf(__stderrp, "%s\n", v29);
                free(v29);
              }
            }

            else
            {
              v37 = sub_1000E957C(v25, v26);
              if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 68157954;
                v50 = 61;
                v51 = 2080;
                v52 = "[DIIODaemonDelegate attachToExistingDeviceWithParams:reply:]";
                _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "%.*s: Disabling reference counting", buf, 0x12u);
              }
            }

            *__error() = v24;
            [(DIIODaemonDelegate *)selfCopy setHandleRefCount:0];
            deviceHandle3 = [(DIIODaemonDelegate *)selfCopy deviceHandle];
            [deviceHandle3 setXpcEndpoint:0];
          }

          v39 = *__error();
          v40 = sub_1000E95F0();
          if (v40)
          {
            v48 = 0;
            v42 = sub_1000E957C(v40, v41);
            if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
            {
              v43 = 3;
            }

            else
            {
              v43 = 2;
            }

            *buf = 68157954;
            v50 = 61;
            v51 = 2080;
            v52 = "[DIIODaemonDelegate attachToExistingDeviceWithParams:reply:]";
            LODWORD(v47) = 18;
            v44 = _os_log_send_and_compose_impl(v43, &v48, 0, 0, &_mh_execute_header, v42, 0, "%.*s: Got connection to an existing disk image, returning its handle", buf, v47);

            if (v44)
            {
              fprintf(__stderrp, "%s\n", v44);
              free(v44);
            }
          }

          else
          {
            v45 = sub_1000E957C(v40, v41);
            if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 68157954;
              v50 = 61;
              v51 = 2080;
              v52 = "[DIIODaemonDelegate attachToExistingDeviceWithParams:reply:]";
              _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "%.*s: Got connection to an existing disk image, returning its handle", buf, 0x12u);
            }
          }

          *__error() = v39;
          deviceHandle4 = [(DIIODaemonDelegate *)selfCopy deviceHandle];
          (replyCopy)[2](replyCopy, deviceHandle4, 0);

          v23 = 0;
        }
      }

      else
      {
        v23 = [DIError errorWithEnumValue:150 verboseInfo:@"Registry entry ID mismatch between controller and daemon"];
        replyCopy[2](replyCopy, 0, v23);
      }
    }

    objc_sync_exit(selfCopy);
  }
}

- (void)validateConnection
{
  if (!getenv("LaunchInstanceID"))
  {
    v2 = *__error();
    v3 = sub_1000E95F0();
    if (v3)
    {
      v10 = 0;
      v5 = sub_1000E957C(v3, v4);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = 3;
      }

      else
      {
        v6 = 2;
      }

      *buf = 68157954;
      v12 = 40;
      v13 = 2080;
      v14 = "[DIIODaemonDelegate validateConnection]";
      LODWORD(v9) = 18;
      v7 = _os_log_send_and_compose_impl(v6, &v10, 0, 0, &_mh_execute_header, v5, 0, "%.*s: As we were launched without instance ID, rejecting the connection and killing the daemon.", buf, v9);

      if (v7)
      {
        fprintf(__stderrp, "%s\n", v7);
        free(v7);
      }
    }

    else
    {
      v8 = sub_1000E957C(v3, v4);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68157954;
        v12 = 40;
        v13 = 2080;
        v14 = "[DIIODaemonDelegate validateConnection]";
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%.*s: As we were launched without instance ID, rejecting the connection and killing the daemon.", buf, 0x12u);
      }
    }

    *__error() = v2;
    exit(1);
  }
}

- (BOOL)setupNewConnection:(id)connection
{
  connectionCopy = connection;
  v5 = [connectionCopy valueForEntitlement:@"com.apple.diskimages.creator-uc"];
  if (v5 && (objc_opt_respondsToSelector() & 1) != 0 && ([v5 BOOLValue] & 1) != 0)
  {
    v6 = *__error();
    v7 = sub_1000E95F0();
    if (v7)
    {
      location = 0;
      v9 = sub_1000E957C(v7, v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 3;
      }

      else
      {
        v10 = 2;
      }

      buf = 0x2904100202;
      v46 = 2080;
      v47 = "[DIIODaemonDelegate setupNewConnection:]";
      LODWORD(v37) = 18;
      v11 = _os_log_send_and_compose_impl(v10, &location, 0, 0, &_mh_execute_header, v9, 0, "%.*s: Connected client is entitled to attach a disk image", &buf, v37);

      if (v11)
      {
        fprintf(__stderrp, "%s\n", v11);
        free(v11);
      }
    }

    else
    {
      v25 = sub_1000E957C(v7, v8);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        buf = 0x2904100202;
        v46 = 2080;
        v47 = "[DIIODaemonDelegate setupNewConnection:]";
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%.*s: Connected client is entitled to attach a disk image", &buf, 0x12u);
      }
    }

    *__error() = v6;
    v26 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___DIIODaemonProtocol];
    [connectionCopy setExportedInterface:v26];

    [connectionCopy setExportedObject:self];
    objc_initWeak(&buf, self);
    objc_initWeak(&location, connectionCopy);
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v28 = atomic_load(&selfCopy->_unmountStarted);
    if ((v28 & 1) == 0)
    {
      v41[0] = _NSConcreteStackBlock;
      v41[1] = 3221225472;
      v41[2] = sub_10000B46C;
      v41[3] = &unk_1001F5848;
      objc_copyWeak(&v42, &buf);
      objc_copyWeak(&v43, &location);
      [connectionCopy setInterruptionHandler:v41];
      v38[0] = _NSConcreteStackBlock;
      v38[1] = 3221225472;
      v38[2] = sub_10000B64C;
      v38[3] = &unk_1001F5848;
      objc_copyWeak(&v39, &buf);
      objc_copyWeak(&v40, &location);
      [connectionCopy setInvalidationHandler:v38];
      activeConnections = [(DIIODaemonDelegate *)selfCopy activeConnections];
      [activeConnections addObject:connectionCopy];

      objc_destroyWeak(&v40);
      objc_destroyWeak(&v39);
      objc_destroyWeak(&v43);
      objc_destroyWeak(&v42);
    }

    objc_sync_exit(selfCopy);

    objc_destroyWeak(&location);
    objc_destroyWeak(&buf);
    v23 = 1;
  }

  else
  {
    v12 = *__error();
    v13 = sub_1000E95F0();
    if (v13)
    {
      location = 0;
      v15 = sub_1000E957C(v13, v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = 3;
      }

      else
      {
        v16 = 2;
      }

      buf = 0x2904100202;
      v46 = 2080;
      v47 = "[DIIODaemonDelegate setupNewConnection:]";
      LODWORD(v37) = 18;
      v17 = _os_log_send_and_compose_impl(v16, &location, 0, 0, &_mh_execute_header, v15, 16, "%.*s: The connected client is not entitled to attach a disk image, rejecting", &buf, v37);

      if (v17)
      {
        fprintf(__stderrp, "%s\n", v17);
        free(v17);
      }
    }

    else
    {
      v18 = sub_1000E957C(v13, v14);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        buf = 0x2904100202;
        v46 = 2080;
        v47 = "[DIIODaemonDelegate setupNewConnection:]";
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%.*s: The connected client is not entitled to attach a disk image, rejecting", &buf, 0x12u);
      }
    }

    *__error() = v12;
    selfCopy2 = self;
    objc_sync_enter(selfCopy2);
    deviceHandle = [(DIIODaemonDelegate *)selfCopy2 deviceHandle];
    if (deviceHandle)
    {
    }

    else
    {
      activeConnections2 = [(DIIODaemonDelegate *)selfCopy2 activeConnections];
      v22 = [activeConnections2 count] == 0;

      if (v22)
      {
        v30 = *__error();
        v31 = sub_1000E95F0();
        if (v31)
        {
          location = 0;
          v33 = sub_1000E957C(v31, v32);
          if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
          {
            v34 = 3;
          }

          else
          {
            v34 = 2;
          }

          buf = 0x2904100202;
          v46 = 2080;
          v47 = "[DIIODaemonDelegate setupNewConnection:]";
          LODWORD(v37) = 18;
          v35 = _os_log_send_and_compose_impl(v34, &location, 0, 0, &_mh_execute_header, v33, 16, "%.*s: The rejected connection caused a daemon instance to wake up. Killing it", &buf, v37);

          if (v35)
          {
            fprintf(__stderrp, "%s\n", v35);
            free(v35);
          }
        }

        else
        {
          v36 = sub_1000E957C(v31, v32);
          if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            buf = 0x2904100202;
            v46 = 2080;
            v47 = "[DIIODaemonDelegate setupNewConnection:]";
            _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "%.*s: The rejected connection caused a daemon instance to wake up. Killing it", &buf, 0x12u);
          }
        }

        *__error() = v30;
        exit(0);
      }
    }

    objc_sync_exit(selfCopy2);

    v23 = 0;
  }

  return v23;
}

- (void)retrieveStatsWithParams:(id)params reply:(id)reply
{
  paramsCopy = params;
  replyCopy = reply;
  v18 = 0;
  v19 = 0;
  v16 = 0;
  v8 = [paramsCopy validateDeserializationWithError:&v16];
  v9 = v16;
  if (v8)
  {
    if (sub_10000E56C(self->_ioManager, &v19, &v18) && sub_10000E748(self->_ioManager, outputStruct))
    {
      v10 = [NSNumber alloc];
      v11 = [v10 initWithUnsignedLongLong:v19];
      v12 = [NSNumber alloc];
      v13 = [v12 initWithUnsignedLongLong:v18];
      v14 = [DIIODaemonDelegate requestsStatsToNSArrayWithArray:outputStruct];
      v15 = [NSDictionary dictionaryWithObjectsAndKeys:v11, @"hit", v13, @"miss", v14, @"pending_requests", 0];
    }

    else
    {
      v15 = 0;
      [DIError errorWithEnumValue:150 verboseInfo:@"Failed to fetch stats from driver"];
      v9 = v11 = v9;
    }
  }

  else
  {
    v15 = 0;
  }

  replyCopy[2](replyCopy, v15, v9);
}

+ (id)requestsStatsToNSArrayWithArray:(DIRequestsStatsArray *)array
{
  v15 = objc_alloc_init(NSMutableArray);
  arrayCopy = array;
  if (array->var1)
  {
    v4 = 0;
    p_var3 = &array->var0[0].var3;
    do
    {
      v6 = [[NSNumber alloc] initWithUnsignedInt:*(p_var3 - 4)];
      v7 = [[NSNumber alloc] initWithUnsignedLongLong:*(p_var3 - 1)];
      v8 = [[NSNumber alloc] initWithUnsignedLongLong:*p_var3];
      v9 = [[NSNumber alloc] initWithUnsignedLongLong:p_var3[1]];
      v10 = [[NSNumber alloc] initWithUnsignedLongLong:p_var3[2]];
      v11 = [[NSNumber alloc] initWithUnsignedShort:*(p_var3 - 6)];
      v12 = [NSDictionary dictionaryWithObjectsAndKeys:v6, @"index", v7, @"offset", v8, @"absolute_offset", v9, @"size", v10, @"total_size", v11, @"cmd", 0];

      [v15 addObject:v12];
      ++v4;
      p_var3 += 5;
    }

    while (v4 < arrayCopy->var1);
  }

  return v15;
}

@end