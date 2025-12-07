@interface EPScalablePipeManager
- (CBScalablePipeManager)manager;
- (void)scalablePipeManager:(id)manager didRegisterEndpoint:(id)endpoint error:(id)error;
- (void)scalablePipeManager:(id)manager didUnregisterEndpoint:(id)endpoint;
- (void)scalablePipeManager:(id)manager pipeDidConnect:(id)connect;
- (void)scalablePipeManager:(id)manager pipeDidDisconnect:(id)disconnect error:(id)error;
- (void)scalablePipeManagerDidUpdateState:(id)state;
@end

@implementation EPScalablePipeManager

- (CBScalablePipeManager)manager
{
  managerManager = [(EPScalablePipeManager *)self managerManager];
  manager = [managerManager manager];

  return manager;
}

- (void)scalablePipeManagerDidUpdateState:(id)state
{
  stateCopy = state;
  ownerDelegate = [(EPResource *)self ownerDelegate];
  v6 = objc_opt_respondsToSelector();
  if (v6)
  {
    v7 = sub_1000A98C0(v6);
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

    if (v8)
    {
      v10 = sub_1000A98C0(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        v13 = +[EPPairingAgentManager stringFromCBManagerState:](EPPairingAgentManager, "stringFromCBManagerState:", [stateCopy state]);
        v14 = 138412802;
        v15 = v12;
        v16 = 2048;
        v17 = ownerDelegate;
        v18 = 2112;
        v19 = v13;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Calling scalablePipeManagerDidUpdateState: on %@[%p] state %@", &v14, 0x20u);
      }
    }

    [ownerDelegate scalablePipeManagerDidUpdateState:stateCopy];
  }
}

- (void)scalablePipeManager:(id)manager pipeDidConnect:(id)connect
{
  managerCopy = manager;
  connectCopy = connect;
  ownerDelegate = [(EPResource *)self ownerDelegate];
  v9 = objc_opt_respondsToSelector();
  if (v9)
  {
    v10 = sub_1000A98C0(v9);
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

    if (v11)
    {
      v13 = sub_1000A98C0(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = objc_opt_class();
        v15 = NSStringFromClass(v14);
        v16 = 138412546;
        v17 = v15;
        v18 = 2048;
        v19 = ownerDelegate;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Calling scalablePipeManager:pipeDidConnect: on %@[%p]", &v16, 0x16u);
      }
    }

    [ownerDelegate scalablePipeManager:managerCopy pipeDidConnect:connectCopy];
  }
}

- (void)scalablePipeManager:(id)manager didUnregisterEndpoint:(id)endpoint
{
  managerCopy = manager;
  endpointCopy = endpoint;
  ownerDelegate = [(EPResource *)self ownerDelegate];
  v9 = objc_opt_respondsToSelector();
  if (v9)
  {
    v10 = sub_1000A98C0(v9);
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

    if (v11)
    {
      v13 = sub_1000A98C0(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = objc_opt_class();
        v15 = NSStringFromClass(v14);
        v16 = 138412802;
        v17 = v15;
        v18 = 2048;
        v19 = ownerDelegate;
        v20 = 2112;
        v21 = endpointCopy;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Calling scalablePipeManager:didUnregisterEndpoint: on %@[%p] endpoint %@", &v16, 0x20u);
      }
    }

    [ownerDelegate scalablePipeManager:managerCopy didUnregisterEndpoint:endpointCopy];
  }
}

- (void)scalablePipeManager:(id)manager pipeDidDisconnect:(id)disconnect error:(id)error
{
  managerCopy = manager;
  disconnectCopy = disconnect;
  errorCopy = error;
  ownerDelegate = [(EPResource *)self ownerDelegate];
  v12 = objc_opt_respondsToSelector();
  if (v12)
  {
    v13 = sub_1000A98C0(v12);
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);

    if (v14)
    {
      v16 = sub_1000A98C0(v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = objc_opt_class();
        v18 = NSStringFromClass(v17);
        v19 = 138412546;
        v20 = v18;
        v21 = 2048;
        v22 = ownerDelegate;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Calling scalablePipeManager:pipeDidDisconnect: on %@[%p]", &v19, 0x16u);
      }
    }

    [ownerDelegate scalablePipeManager:managerCopy pipeDidDisconnect:disconnectCopy error:errorCopy];
  }
}

- (void)scalablePipeManager:(id)manager didRegisterEndpoint:(id)endpoint error:(id)error
{
  managerCopy = manager;
  endpointCopy = endpoint;
  errorCopy = error;
  ownerDelegate = [(EPResource *)self ownerDelegate];
  v12 = objc_opt_respondsToSelector();
  if (v12)
  {
    v13 = sub_1000A98C0(v12);
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);

    if (v14)
    {
      v16 = sub_1000A98C0(v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = objc_opt_class();
        v18 = NSStringFromClass(v17);
        v19 = 138412802;
        v20 = v18;
        v21 = 2048;
        v22 = ownerDelegate;
        v23 = 2112;
        v24 = endpointCopy;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Calling scalablePipeManager:didRegisterEndpoint: on %@[%p] endpoint %@", &v19, 0x20u);
      }
    }

    [ownerDelegate scalablePipeManager:managerCopy didRegisterEndpoint:endpointCopy error:errorCopy];
  }
}

@end