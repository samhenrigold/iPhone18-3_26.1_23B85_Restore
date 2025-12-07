@interface IXATestAppRelayServer
+ (id)sharedServer;
- (BOOL)_checkEntitlement:(id)entitlement withAuditToken:(id *)token;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (IXATestAppRelayServer)init;
- (void)dealloc;
- (void)fetchEndpointForServiceName:(id)name completion:(id)completion;
- (void)registerEndpoint:(id)endpoint forServiceName:(id)name withEntitlement:(id)entitlement canReplace:(BOOL)replace completion:(id)completion;
- (void)unregisterEndpointForServiceName:(id)name completion:(id)completion;
@end

@implementation IXATestAppRelayServer

+ (id)sharedServer
{
  if (qword_100026540 != -1)
  {
    sub_10000D340();
  }

  v3 = qword_100026538;

  return v3;
}

- (IXATestAppRelayServer)init
{
  v15.receiver = self;
  v15.super_class = IXATestAppRelayServer;
  v2 = [(IXATestAppRelayServer *)&v15 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_UTILITY, 0);

    v5 = dispatch_queue_create("com.apple.inputanalytics.testAppRelay", v4);
    queue = v2->_queue;
    v2->_queue = v5;

    v7 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.inputanalytics.testAppRelay"];
    listener = v2->_listener;
    v2->_listener = v7;

    [(NSXPCListener *)v2->_listener _setQueue:v2->_queue];
    [(NSXPCListener *)v2->_listener setDelegate:v2];
    [(NSXPCListener *)v2->_listener resume];
    v9 = +[NSMutableDictionary dictionary];
    registrations = v2->_registrations;
    v2->_registrations = v9;

    v12 = IXATestAppRelayLog(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "The service was initialized.", v14, 2u);
    }
  }

  return v2;
}

- (void)dealloc
{
  registrations = self->_registrations;
  self->_registrations = 0;

  [(NSXPCListener *)self->_listener setDelegate:0];
  [(NSXPCListener *)self->_listener invalidate];
  v4.receiver = self;
  v4.super_class = IXATestAppRelayServer;
  [(IXATestAppRelayServer *)&v4 dealloc];
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  if ((TI_IS_INTERNAL_INSTALL() & 1) == 0)
  {
    v6 = IXATestAppRelayLog([connectionCopy invalidate]);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10000D354();
    }

    goto LABEL_13;
  }

  if (connectionCopy)
  {
    objc_msgSend_auditToken(connectionCopy);
  }

  else
  {
    memset(v13, 0, sizeof(v13));
  }

  v7 = [(IXATestAppRelayServer *)self _checkEntitlement:@"com.apple.inputanalytics.testAppRelay" withAuditToken:v13];
  if ((v7 & 1) == 0)
  {
    v6 = IXATestAppRelayLog([connectionCopy invalidate]);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10000D390();
    }

LABEL_13:

    v11 = 0;
    goto LABEL_14;
  }

  v8 = IXATestAppRelayLog(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    processIdentifier = [connectionCopy processIdentifier];
    LODWORD(v13[0]) = 67109120;
    DWORD1(v13[0]) = processIdentifier;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Accepting connection from client (pid=%d).", v13, 8u);
  }

  [connectionCopy setExportedObject:self];
  v10 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___IXATestAppRelayProtocol];
  [connectionCopy setExportedInterface:v10];

  [connectionCopy resume];
  v11 = 1;
LABEL_14:

  return v11;
}

- (void)registerEndpoint:(id)endpoint forServiceName:(id)name withEntitlement:(id)entitlement canReplace:(BOOL)replace completion:(id)completion
{
  replaceCopy = replace;
  endpointCopy = endpoint;
  nameCopy = name;
  entitlementCopy = entitlement;
  completionCopy = completion;
  v16 = TI_IS_INTERNAL_INSTALL();
  if ((v16 & 1) == 0)
  {
    v24 = IXATestAppRelayLog(v16);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      sub_10000D354();
    }

    goto LABEL_14;
  }

  if (!endpointCopy || (v16 = [nameCopy length]) == 0 || (v16 = objc_msgSend(entitlementCopy, "length")) == 0)
  {
    v24 = IXATestAppRelayLog(v16);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      sub_10000D440();
    }

LABEL_14:

    completionCopy[2](completionCopy, 0);
    goto LABEL_15;
  }

  registrations = [(IXATestAppRelayServer *)self registrations];
  v18 = [registrations objectForKey:nameCopy];

  if (v18 && (v19 = [v18 canReplace], (v19 & 1) == 0))
  {
    v25 = IXATestAppRelayLog(v19);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      sub_10000D3CC();
    }

    completionCopy[2](completionCopy, 0);
  }

  else
  {
    v20 = [[IXATestAppRelayRegistration alloc] initWithEndpoint:endpointCopy andEntitlement:entitlementCopy canReplace:replaceCopy];
    registrations2 = [(IXATestAppRelayServer *)self registrations];
    [registrations2 setObject:v20 forKey:nameCopy];

    v23 = IXATestAppRelayLog(v22);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v26 = 138412290;
      v27 = nameCopy;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Registered endpoint for service name '%@'.", &v26, 0xCu);
    }

    completionCopy[2](completionCopy, 1);
  }

LABEL_15:
}

- (void)unregisterEndpointForServiceName:(id)name completion:(id)completion
{
  nameCopy = name;
  completionCopy = completion;
  v8 = TI_IS_INTERNAL_INSTALL();
  if (v8)
  {
    registrations = [(IXATestAppRelayServer *)self registrations];
    v10 = [registrations objectForKey:nameCopy];

    if (v10)
    {
      entitlement = [v10 entitlement];
      v13 = +[NSXPCConnection currentConnection];
      v14 = v13;
      if (v13)
      {
        objc_msgSend_auditToken(v13);
      }

      else
      {
        memset(v21, 0, sizeof(v21));
      }

      v17 = [(IXATestAppRelayServer *)self _checkEntitlement:entitlement withAuditToken:v21];

      if (v17)
      {
        registrations2 = [(IXATestAppRelayServer *)self registrations];
        [registrations2 removeObjectForKey:nameCopy];

        v16 = IXATestAppRelayLog(v20);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(v21[0]) = 138412290;
          *(v21 + 4) = nameCopy;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Unregistered endpoint for service name '%@'.", v21, 0xCu);
        }
      }

      else
      {
        v16 = IXATestAppRelayLog(v18);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          sub_10000D47C();
        }
      }
    }

    else
    {
      v16 = IXATestAppRelayLog(v11);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_10000D4B8();
      }
    }

    completionCopy[2](completionCopy);
  }

  else
  {
    v15 = IXATestAppRelayLog(v8);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_10000D354();
    }

    completionCopy[2](completionCopy);
  }
}

- (void)fetchEndpointForServiceName:(id)name completion:(id)completion
{
  nameCopy = name;
  completionCopy = completion;
  v8 = TI_IS_INTERNAL_INSTALL();
  if (v8)
  {
    registrations = [(IXATestAppRelayServer *)self registrations];
    v10 = [registrations objectForKey:nameCopy];

    if (v10)
    {
      entitlement = [v10 entitlement];
      v13 = +[NSXPCConnection currentConnection];
      v14 = v13;
      if (v13)
      {
        objc_msgSend_auditToken(v13);
      }

      else
      {
        memset(v21, 0, sizeof(v21));
      }

      v17 = [(IXATestAppRelayServer *)self _checkEntitlement:entitlement withAuditToken:v21];

      v19 = IXATestAppRelayLog(v18);
      v16 = v19;
      if (v17)
      {
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(v21[0]) = 138412290;
          *(v21 + 4) = nameCopy;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Fetched endpoint for service name '%@'.", v21, 0xCu);
        }

        endpoint = [v10 endpoint];
        completionCopy[2](completionCopy, endpoint);

        goto LABEL_18;
      }

      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_10000D47C();
      }
    }

    else
    {
      v16 = IXATestAppRelayLog(v11);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_10000D4B8();
      }
    }

    completionCopy[2](completionCopy, 0);
LABEL_18:

    goto LABEL_19;
  }

  v15 = IXATestAppRelayLog(v8);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    sub_10000D354();
  }

  completionCopy[2](completionCopy, 0);
LABEL_19:
}

- (BOOL)_checkEntitlement:(id)entitlement withAuditToken:(id *)token
{
  entitlementCopy = entitlement;
  v6 = *&token->var0[4];
  *cf.val = *token->var0;
  *&cf.val[4] = v6;
  v7 = SecTaskCreateWithAuditToken(0, &cf);
  if (v7)
  {
    v8 = v7;
    *cf.val = 0;
    v9 = SecTaskCopyValueForEntitlement(v7, entitlementCopy, &cf);
    if (v9)
    {
      v10 = v9;
      v11 = CFGetTypeID(v9);
      v12 = v11 == CFBooleanGetTypeID() && CFBooleanGetValue(v10) != 0;
      CFRelease(v10);
    }

    else
    {
      if (*cf.val)
      {
        v13 = IXATestAppRelayLog(0);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          sub_10000D52C();
        }

        CFRelease(*cf.val);
      }

      v12 = 0;
    }

    CFRelease(v8);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end