@interface EPFactory
+ (BOOL)signalProcessNamed:(id)named withSignal:(int)signal;
+ (id)newService:(id)service;
+ (id)sharedFactoryWithQueue:(id)queue;
+ (void)killProcessNamed:(id)named;
- (id)initBase;
- (id)newAdvertiserWithDelegate:(id)delegate;
- (id)newCentralManagerWithDelegate:(id)delegate;
- (id)newDiscovererWithDelegate:(id)delegate;
- (id)newKeyGeneratorWithDelegate:(id)delegate;
- (id)newNullResourceWithDelegate:(id)delegate;
- (id)newPeripheralManagerWithDelegate:(id)delegate;
- (void)killBluetoothDaemon;
@end

@implementation EPFactory

+ (id)newService:(id)service
{
  queue = [service queue];
  v5 = [self sharedFactoryWithQueue:queue];

  return v5;
}

+ (id)sharedFactoryWithQueue:(id)queue
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000CC760;
  v9[3] = &unk_1001761C0;
  queueCopy = queue;
  selfCopy = self;
  v4 = qword_1001B3A78;
  v5 = queueCopy;
  if (v4 != -1)
  {
    dispatch_once(&qword_1001B3A78, v9);
  }

  v6 = qword_1001B3A80;
  v7 = qword_1001B3A80;

  return v6;
}

- (id)initBase
{
  v21.receiver = self;
  v21.super_class = EPFactory;
  v2 = [(EPFactory *)&v21 init];
  if (v2)
  {
    v3 = +[EPFactory queue];
    dispatch_assert_queue_V2(v3);

    v4 = objc_opt_new();
    agentManager = v2->_agentManager;
    v2->_agentManager = v4;

    v6 = objc_opt_new();
    keyGeneratorManager = v2->_keyGeneratorManager;
    v2->_keyGeneratorManager = v6;

    v8 = objc_opt_new();
    advertiserManager = v2->_advertiserManager;
    v2->_advertiserManager = v8;

    v10 = objc_opt_new();
    discovererManager = v2->_discovererManager;
    v2->_discovererManager = v10;

    v12 = objc_opt_new();
    centralManagerManager = v2->_centralManagerManager;
    v2->_centralManagerManager = v12;

    v14 = objc_opt_new();
    peripheralManagerManager = v2->_peripheralManagerManager;
    v2->_peripheralManagerManager = v14;

    v16 = [EPNullResourceManager alloc];
    v17 = +[EPFactory queue];
    v18 = [(EPResourceManager *)v16 initWithQueue:v17];
    nullManager = v2->_nullManager;
    v2->_nullManager = v18;
  }

  return v2;
}

- (void)killBluetoothDaemon
{
  v2 = sub_1000A98C0(self);
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);

  if (v3)
  {
    v5 = sub_1000A98C0(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10010368C(v5);
    }
  }
}

+ (void)killProcessNamed:(id)named
{
  namedCopy = named;
  [objc_opt_class() signalProcessNamed:namedCopy withSignal:9];
}

+ (BOOL)signalProcessNamed:(id)named withSignal:(int)signal
{
  namedCopy = named;
  *v55 = xmmword_100126498;
  v56 = 0;
  size = 0;
  v6 = sysctl(v55, 3u, 0, &size, 0, 0);
  if (v6 == -1)
  {
    v17 = sub_1000A98C0(v6);
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);

    if (!v18)
    {
      goto LABEL_32;
    }

    v20 = sub_1000A98C0(v19);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = *__error();
      *buf = 138412546;
      v50 = namedCopy;
      v51 = 1024;
      LODWORD(v52) = v21;
      v22 = "Error calling sysctl, trying to kill process %@ error %d";
      v23 = v20;
      v24 = 18;
LABEL_24:
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, v22, buf, v24);
    }

LABEL_25:

    goto LABEL_32;
  }

  v7 = malloc_type_malloc(size, 0xBE14A793uLL);
  if (!v7)
  {
    v25 = sub_1000A98C0(0);
    v26 = os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);

    if (!v26)
    {
      goto LABEL_32;
    }

    v20 = sub_1000A98C0(v27);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      v50 = size;
      v51 = 2112;
      v52 = namedCopy;
      v22 = "Failed to allocate memory, %zu bytes trying to kill process %@";
      v23 = v20;
      v24 = 22;
      goto LABEL_24;
    }

    goto LABEL_25;
  }

  while (1)
  {
    v8 = v7;
    if (sysctl(v55, 3u, v7, &size, 0, 0) != -1)
    {
      break;
    }

    v9 = __error();
    if (*v9 != 12)
    {
      v37 = sub_1000A98C0(v9);
      v38 = os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT);

      if (v38)
      {
        v13 = sub_1000A98C0(v39);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v40 = *__error();
          *buf = 138412546;
          v50 = namedCopy;
          v51 = 1024;
          LODWORD(v52) = v40;
          v14 = "Error calling sysctl, trying to kill process %@ error %d";
          v15 = v13;
          v16 = 18;
LABEL_29:
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, v14, buf, v16);
        }

LABEL_30:
      }

LABEL_31:
      free(v8);
      goto LABEL_32;
    }

    size += size / 0xA;
    v7 = malloc_type_realloc(v8, size, 0x5E904C92uLL);
    if (!v7)
    {
      v10 = sub_1000A98C0(0);
      v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

      if (v11)
      {
        v13 = sub_1000A98C0(v12);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218242;
          v50 = size;
          v51 = 2112;
          v52 = namedCopy;
          v14 = "Failed to reallocate memory, %zu bytes trying to kill process %@";
          v15 = v13;
          v16 = 22;
          goto LABEL_29;
        }

        goto LABEL_30;
      }

      goto LABEL_31;
    }
  }

  uTF8String = [namedCopy UTF8String];
  if (size < 0x288)
  {
LABEL_20:
    free(v8);
    goto LABEL_21;
  }

  v29 = uTF8String;
  v30 = size / 0x288;
  v31 = v8 + 243;
  while (1)
  {
    v32 = *(v31 - 203);
    if (v32)
    {
      if (!strncmp(v29, v31, 0x10uLL))
      {
        break;
      }
    }

    v31 += 648;
    if (!--v30)
    {
      goto LABEL_20;
    }
  }

  free(v8);
  if (v32 == -1)
  {
LABEL_21:
    v34 = sub_1000A98C0(v33);
    v35 = os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT);

    if (!v35)
    {
      goto LABEL_32;
    }

    v20 = sub_1000A98C0(v36);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v50 = namedCopy;
      v22 = "Did not find process named %@";
      v23 = v20;
      v24 = 12;
      goto LABEL_24;
    }

    goto LABEL_25;
  }

  v43 = kill(v32, signal);
  if (v43 != -1)
  {
    v41 = 1;
    goto LABEL_33;
  }

  v44 = sub_1000A98C0(v43);
  v45 = os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT);

  if (v45)
  {
    v20 = sub_1000A98C0(v46);
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_25;
    }

    v47 = *__error();
    *buf = 134218498;
    v50 = v32;
    v51 = 2112;
    v52 = namedCopy;
    v53 = 1024;
    v54 = v47;
    v22 = "Failed to kill pid %lu for process named %@, error %d";
    v23 = v20;
    v24 = 28;
    goto LABEL_24;
  }

LABEL_32:
  v41 = 0;
LABEL_33:

  return v41;
}

- (id)newKeyGeneratorWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v5 = +[EPFactory queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(EPOOBKeyGeneratorManager *)self->_keyGeneratorManager newGeneratorWithDelegate:delegateCopy];
  return v6;
}

- (id)newDiscovererWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v5 = +[EPFactory queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(EPDiscovererManager *)self->_discovererManager newDiscovererWithDelegate:delegateCopy];
  return v6;
}

- (id)newAdvertiserWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v5 = +[EPFactory queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(EPAdvertiserManager *)self->_advertiserManager newAdvertiserWithDelegate:delegateCopy];
  return v6;
}

- (id)newCentralManagerWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v5 = +[EPFactory queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(EPCentralManagerManager *)self->_centralManagerManager newManagerWithDelegate:delegateCopy];
  return v6;
}

- (id)newPeripheralManagerWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v5 = +[EPFactory queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(EPPeripheralManagerManager *)self->_peripheralManagerManager newManagerWithDelegate:delegateCopy];
  return v6;
}

- (id)newNullResourceWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v5 = +[EPFactory queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(EPResourceManager *)self->_nullManager newResourceWithDelegate:delegateCopy];
  return v6;
}

@end