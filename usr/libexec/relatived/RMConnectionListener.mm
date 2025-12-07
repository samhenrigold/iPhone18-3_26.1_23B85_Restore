@interface RMConnectionListener
- (BOOL)isEndpointConnectionAllowed:(id)allowed;
- (RMConnectionListener)initWithQueue:(id)queue entitlement:(id)entitlement tccService:(id)service messageHandlerConstructor:(id)constructor;
- (id)_initWithQueue:(id)queue entitlement:(id)entitlement tccService:(id)service messageHandlerConstructor:(id)constructor;
- (void)endpointWasInterrupted:(id)interrupted;
- (void)endpointWasInvalidated:(id)invalidated;
- (void)invalidate;
- (void)startListeningForService:(id)service;
- (void)traverseEndpointsAsynchronously:(id)asynchronously;
@end

@implementation RMConnectionListener

- (id)_initWithQueue:(id)queue entitlement:(id)entitlement tccService:(id)service messageHandlerConstructor:(id)constructor
{
  queueCopy = queue;
  entitlementCopy = entitlement;
  serviceCopy = service;
  constructorCopy = constructor;
  v18.receiver = self;
  v18.super_class = RMConnectionListener;
  v14 = [(RMConnectionListener *)&v18 init];
  v15 = v14;
  if (v14)
  {
    [(RMConnectionListener *)v14 setQueue:queueCopy];
    v16 = objc_opt_new();
    [(RMConnectionListener *)v15 setConnections:v16];

    [(RMConnectionListener *)v15 setMessageHandlerConstructor:constructorCopy];
    [(RMConnectionListener *)v15 setEntitlement:entitlementCopy];
    [(RMConnectionListener *)v15 setTccService:serviceCopy];
  }

  return v15;
}

- (RMConnectionListener)initWithQueue:(id)queue entitlement:(id)entitlement tccService:(id)service messageHandlerConstructor:(id)constructor
{
  queueCopy = queue;
  entitlementCopy = entitlement;
  serviceCopy = service;
  constructorCopy = constructor;
  if (entitlementCopy)
  {
    if (serviceCopy)
    {
      v14 = constructorCopy;
      v15 = [(RMConnectionListener *)self _initWithQueue:queueCopy entitlement:entitlementCopy tccService:serviceCopy messageHandlerConstructor:constructorCopy];

      return v15;
    }
  }

  else
  {
    sub_100012ED4(constructorCopy);
  }

  v17 = sub_100012DB0(constructorCopy);
  return sub_100007640(v17);
}

- (BOOL)isEndpointConnectionAllowed:(id)allowed
{
  allowedCopy = allowed;
  entitlement = [(RMConnectionListener *)self entitlement];

  if (entitlement)
  {
    entitlement2 = [(RMConnectionListener *)self entitlement];
    LODWORD(entitlement) = sub_100012420(allowedCopy, entitlement2);
  }

  tccService = [(RMConnectionListener *)self tccService];

  if (tccService)
  {
    entitlement3 = [(RMConnectionListener *)self entitlement];

    if (!entitlement3)
    {
      sub_10001300C(v10);
LABEL_27:
      sub_100013130();
      goto LABEL_21;
    }

    tccService2 = [(RMConnectionListener *)self tccService];
    LODWORD(tccService) = sub_1000128E4(allowedCopy, tccService2);
  }

  if (qword_10002C0B8 != -1)
  {
    sub_100012FF8();
  }

  p_info = RMFacePoseCaptureContext.info;
  v12 = qword_10002C0C0;
  if (os_log_type_enabled(qword_10002C0C0, OS_LOG_TYPE_DEFAULT))
  {
    v13 = "NO";
    if (entitlement)
    {
      v14 = "YES";
    }

    else
    {
      v14 = "NO";
    }

    if (tccService)
    {
      v13 = "YES";
    }

    v29 = 136446466;
    v30 = v14;
    v31 = 2082;
    *v32 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Client status: Entitled: %{public}s Authorized: %{public}s", &v29, 0x16u);
  }

  if ((entitlement | tccService))
  {
    goto LABEL_23;
  }

  entitlement4 = [(RMConnectionListener *)self entitlement];

  if (!entitlement4)
  {
    goto LABEL_23;
  }

  entitlement5 = [(RMConnectionListener *)self entitlement];
  if (!entitlement5 || (v17 = entitlement5, [(RMConnectionListener *)self deprecatedEntitlement], v18 = objc_claimAutoreleasedReturnValue(), v18, v17, !v18) || ([(RMConnectionListener *)self deprecatedEntitlement], v19 = objc_claimAutoreleasedReturnValue(), v20 = sub_100012420(allowedCopy, v19), v19, !v20))
  {
    v27 = 0;
    goto LABEL_25;
  }

  if (qword_10002C0B8 != -1)
  {
    goto LABEL_27;
  }

LABEL_21:
  v21 = p_info[24];
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    v22 = v21;
    v23 = sub_100012944(allowedCopy);
    v24 = sub_100012990(allowedCopy);
    deprecatedEntitlement = [(RMConnectionListener *)self deprecatedEntitlement];
    entitlement6 = [(RMConnectionListener *)self entitlement];
    v29 = 138544131;
    v30 = v23;
    v31 = 1025;
    *v32 = v24;
    *&v32[4] = 2114;
    *&v32[6] = deprecatedEntitlement;
    v33 = 2114;
    v34 = entitlement6;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Client %{public}@ (%{private}d) uses deprecated entitlement %{public}@: please use %{public}@ instead", &v29, 0x26u);
  }

LABEL_23:
  v27 = 1;
LABEL_25:

  return v27;
}

- (void)startListeningForService:(id)service
{
  serviceCopy = service;
  uTF8String = [serviceCopy UTF8String];
  queue = [(RMConnectionListener *)self queue];
  mach_service = xpc_connection_create_mach_service(uTF8String, queue, 1uLL);
  [(RMConnectionListener *)self setListener:mach_service];

  listener = [(RMConnectionListener *)self listener];

  if (!listener)
  {
    sub_100013158(serviceCopy);
  }

  if (qword_10002C0B8 != -1)
  {
    sub_100012FF8();
  }

  v9 = qword_10002C0C0;
  if (os_log_type_enabled(qword_10002C0C0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138477827;
    v15 = serviceCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Registering handler for service: %{private}@", buf, 0xCu);
  }

  listener2 = [(RMConnectionListener *)self listener];
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100007B84;
  handler[3] = &unk_100024D50;
  handler[4] = self;
  xpc_connection_set_event_handler(listener2, handler);

  listener3 = [(RMConnectionListener *)self listener];
  xpc_connection_resume(listener3);

  if (qword_10002C0B8 != -1)
  {
    sub_100013130();
  }

  v12 = qword_10002C0C0;
  if (os_log_type_enabled(qword_10002C0C0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138477827;
    v15 = serviceCopy;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Listener started for service: %{private}@", buf, 0xCu);
  }
}

- (void)traverseEndpointsAsynchronously:(id)asynchronously
{
  asynchronouslyCopy = asynchronously;
  queue = [(RMConnectionListener *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100008030;
  v7[3] = &unk_100024D78;
  v7[4] = self;
  v8 = asynchronouslyCopy;
  v6 = asynchronouslyCopy;
  dispatch_async(queue, v7);
}

- (void)invalidate
{
  queue = [(RMConnectionListener *)self queue];
  dispatch_assert_queue_V2(queue);

  connections = [(RMConnectionListener *)self connections];
  v5 = [connections copy];

  [v5 enumerateObjectsUsingBlock:&stru_100024DB8];
  connections2 = [(RMConnectionListener *)self connections];
  [connections2 removeAllObjects];

  listener = [(RMConnectionListener *)self listener];
  xpc_connection_cancel(listener);

  [(RMConnectionListener *)self setListener:0];
}

- (void)endpointWasInterrupted:(id)interrupted
{
  interruptedCopy = interrupted;
  if (qword_10002C0B8 != -1)
  {
    goto LABEL_13;
  }

  while (1)
  {
    v4 = qword_10002C0C0;
    if (os_log_type_enabled(qword_10002C0C0, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v8 = 0;
      v9 = 2082;
      v10 = &unk_10001E8F6;
      v11 = 2082;
      v12 = "assert";
      v13 = 2081;
      v14 = "0";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Interruption events shouldn't be received by the daemon, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    if (qword_10002C0B8 != -1)
    {
      dispatch_once(&qword_10002C0B8, &stru_100024DD8);
    }

    v5 = qword_10002C0C0;
    if (os_signpost_enabled(qword_10002C0C0))
    {
      *buf = 68289539;
      v8 = 0;
      v9 = 2082;
      v10 = &unk_10001E8F6;
      v11 = 2082;
      v12 = "assert";
      v13 = 2081;
      v14 = "0";
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Interruption events shouldn't be received by the daemon", "{msg%{public}.0s:Interruption events shouldn't be received by the daemon, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    if (qword_10002C0B8 != -1)
    {
      dispatch_once(&qword_10002C0B8, &stru_100024DD8);
    }

    v6 = qword_10002C0C0;
    if (os_log_type_enabled(qword_10002C0C0, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v8 = 0;
      v9 = 2082;
      v10 = &unk_10001E8F6;
      v11 = 2082;
      v12 = "assert";
      v13 = 2081;
      v14 = "0";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Interruption events shouldn't be received by the daemon, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/RelativeMotion/Common/RMConnectionListener.m", 191, "[RMConnectionListener endpointWasInterrupted:]");
LABEL_13:
    dispatch_once(&qword_10002C0B8, &stru_100024DD8);
  }
}

- (void)endpointWasInvalidated:(id)invalidated
{
  invalidatedCopy = invalidated;
  queue = [(RMConnectionListener *)self queue];
  dispatch_assert_queue_V2(queue);

  sub_10001540C(invalidatedCopy, 0);
  v6 = sub_100014DC4(invalidatedCopy);

  if (v6)
  {
    sub_10001335C(self, invalidatedCopy);
  }

  else
  {
    sub_1000133F8(v7);
    [(RMConnectionListener *)v8 deprecatedEntitlement];
  }
}

@end