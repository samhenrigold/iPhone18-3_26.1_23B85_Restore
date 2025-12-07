@interface _GCGenericPhysicalDevicePending
- (_GCGenericPhysicalDevicePending)init;
- (_GCGenericPhysicalDevicePending)initWithHIDService:(id)service manager:(id)manager;
- (void)_onqueue_prepareDeviceWithConnection:(uint64_t)connection;
- (void)dealloc;
- (void)setDriverConnection:(id)connection invalidatingPrevious:(BOOL)previous;
- (void)setFilterConnection:(id)connection invalidatingPrevious:(BOOL)previous;
@end

@implementation _GCGenericPhysicalDevicePending

- (_GCGenericPhysicalDevicePending)initWithHIDService:(id)service manager:(id)manager
{
  serviceCopy = service;
  managerCopy = manager;
  v23.receiver = self;
  v23.super_class = _GCGenericPhysicalDevicePending;
  v9 = [(_GCGenericPhysicalDevicePending *)&v23 init];
  if (!serviceCopy)
  {
    [_GCGenericPhysicalDevicePending initWithHIDService:a2 manager:v9];
    if (managerCopy)
    {
      goto LABEL_3;
    }

LABEL_5:
    [_GCGenericPhysicalDevicePending initWithHIDService:a2 manager:v9];
    goto LABEL_3;
  }

  if (!managerCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  v10 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, -1);
  v11 = dispatch_queue_create("GenericDevice.Pending", v10);
  queue = v9->_queue;
  v9->_queue = v11;

  serviceInfo = v9->_serviceInfo;
  v9->_serviceInfo = serviceCopy;
  v14 = serviceCopy;

  manager = v9->_manager;
  v9->_manager = managerCopy;
  v16 = managerCopy;

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __62___GCGenericPhysicalDevicePending_initWithHIDService_manager___block_invoke;
  v21[3] = &unk_1E84154D8;
  v17 = v9;
  v22 = v17;
  v18 = [GCFuture futureWithBlock:v21];
  deviceFuture = v17->_deviceFuture;
  v17->_deviceFuture = v18;

  return v17;
}

- (_GCGenericPhysicalDevicePending)init
{
  [(_GCGenericPhysicalDevicePending *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (void)dealloc
{
  [(GCPromise *)self->_devicePromise cancel];
  v3.receiver = self;
  v3.super_class = _GCGenericPhysicalDevicePending;
  [(_GCGenericPhysicalDevicePending *)&v3 dealloc];
}

- (void)setDriverConnection:(id)connection invalidatingPrevious:(BOOL)previous
{
  connectionCopy = connection;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([connectionCopy isEqual:selfCopy->_driverConnection])
  {
    objc_sync_exit(selfCopy);
  }

  else
  {
    v9 = selfCopy->_driverConnection;
    [(_GCGenericPhysicalDevicePending *)selfCopy willChangeValueForKey:@"driverConnection"];
    objc_setProperty_atomic(selfCopy, a2, connectionCopy, 48);
    [(_GCGenericPhysicalDevicePending *)selfCopy didChangeValueForKey:@"driverConnection"];
    objc_sync_exit(selfCopy);

    queue = selfCopy->_queue;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __76___GCGenericPhysicalDevicePending_setDriverConnection_invalidatingPrevious___block_invoke;
    v12[3] = &unk_1E8415500;
    v12[4] = selfCopy;
    v13 = connectionCopy;
    v14 = v9;
    previousCopy = previous;
    v11 = v9;
    dispatch_async(queue, v12);
  }
}

- (void)_onqueue_prepareDeviceWithConnection:(uint64_t)connection
{
  v47 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (connection)
  {
    dispatch_assert_queue_V2(*(connection + 8));
    v4 = _os_activity_create(&dword_1D2C3B000, "[Generic Physical Device (Pending)] Prepare Device", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v4, &state);
    if (!v3)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel__onqueue_prepareDeviceWithConnection_ object:connection file:@"_GCGenericPhysicalDevicePending.m" lineNumber:164 description:{@"Invalid parameter not satisfying: %s", "connection != nil"}];
      goto LABEL_16;
    }

    if ([v3 isInvalid])
    {
      goto LABEL_17;
    }

    isCancelled = [*(connection + 24) isCancelled];
    if (isCancelled)
    {
      goto LABEL_17;
    }

    v6 = _gc_log_generic_device(isCancelled);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [(_GCGenericPhysicalDevicePending *)connection _onqueue_prepareDeviceWithConnection:v6];
    }

    v7 = [(_GCDeviceDriverServiceConnection *)_GCGenericDeviceDriverConfigurationServiceConnection connectionToServiceInDriver:v3 withClient:connection];
    v42 = 0;
    v43 = 0;
    v8 = [v7 waitForResult:&v43 error:&v42];
    v9 = v43;
    currentHandler = v42;

    if (!v8)
    {
      goto LABEL_14;
    }

    if (v8 == 1)
    {
      v12 = _gc_log_generic_device(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [_GCGenericPhysicalDevicePending _onqueue_prepareDeviceWithConnection:];
      }

      v13 = 0;
      goto LABEL_12;
    }

    isCancelled2 = [*(connection + 24) isCancelled];
    if (isCancelled2)
    {
LABEL_14:
      v13 = 0;
      goto LABEL_15;
    }

    v15 = _gc_log_generic_device(isCancelled2);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      [(_GCGenericPhysicalDevicePending *)connection _onqueue_prepareDeviceWithConnection:v15];
    }

    fetchDeviceSnapshot = [v9 fetchDeviceSnapshot];
    v40 = 0;
    v41 = 0;
    v17 = [fetchDeviceSnapshot waitForResult:&v41 error:&v40];
    v13 = v41;
    v18 = v40;

    if (!v17)
    {
      goto LABEL_26;
    }

    if (v17 == 1)
    {
      v12 = _gc_log_generic_device(v19);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [_GCGenericPhysicalDevicePending _onqueue_prepareDeviceWithConnection:];
      }

      goto LABEL_42;
    }

    if ([*(connection + 24) isCancelled])
    {
LABEL_26:
      currentHandler = v18;
      goto LABEL_15;
    }

    v20 = GCLookupService(*(connection + 32), &unk_1F4E3BA08, 0, 0);
    v36 = v20;
    if (v20)
    {
      v21 = _gc_log_generic_device(v20);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        v22 = [v13 debugDescription];
        [(_GCGenericPhysicalDevicePending *)connection _onqueue_prepareDeviceWithConnection:v22, v46];
      }

      v23 = [v36 preparedModelForDevice:v13];
      v38 = 0;
      v39 = 0;
      v24 = [v23 waitForResult:&v39 error:&v38];
      v12 = v39;
      v25 = v38;

      if (v24)
      {
        if (v24 == 1)
        {
          v27 = _gc_log_generic_device(v26);
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            [_GCGenericPhysicalDevicePending _onqueue_prepareDeviceWithConnection:];
          }

          v18 = v25;
LABEL_38:

LABEL_41:
LABEL_42:
          currentHandler = v18;
LABEL_12:

LABEL_15:
LABEL_16:

LABEL_17:
          os_activity_scope_leave(&state);

          goto LABEL_18;
        }

        isCancelled3 = [*(connection + 24) isCancelled];
        if ((isCancelled3 & 1) == 0)
        {
          v29 = _gc_log_generic_device(isCancelled3);
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
          {
            driver = [v12 driver];
            [(_GCGenericPhysicalDevicePending *)connection _onqueue_prepareDeviceWithConnection:driver, v45];
          }

          driver2 = [v12 driver];
          v32 = [v9 applyConfiguration:driver2];
          v37 = 0;
          v35 = [v32 waitForResult:0 error:&v37];
          v18 = v37;

          if (!v35)
          {
            goto LABEL_41;
          }

          if (v35 == 1)
          {
            v27 = _gc_log_generic_device(v33);
            if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
            {
              [_GCGenericPhysicalDevicePending _onqueue_prepareDeviceWithConnection:];
            }
          }

          else
          {
            v27 = [connection _onqueue_createDeviceWithModel:v12 service:*(connection + 56)];
            if (v27)
            {
              if (objc_opt_respondsToSelector())
              {
                [v27 setDriverConnection:*(connection + 48)];
              }

              if ((objc_opt_respondsToSelector() & 1) != 0 && *(connection + 40))
              {
                [v27 setFilterConnection:?];
              }

              [*(connection + 24) succeedWithResult:v27];
            }

            else
            {
              v34 = _gc_log_generic_device(0);
              [(_GCGenericPhysicalDevicePending *)v34 _onqueue_prepareDeviceWithConnection:connection];
            }
          }

          goto LABEL_38;
        }
      }

      v18 = v25;
      goto LABEL_41;
    }

    v27 = _gc_log_generic_device(0);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      [(_GCGenericPhysicalDevicePending *)connection _onqueue_prepareDeviceWithConnection:v27];
    }

    v12 = 0;
    goto LABEL_38;
  }

LABEL_18:
}

- (void)setFilterConnection:(id)connection invalidatingPrevious:(BOOL)previous
{
  connectionCopy = connection;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([connectionCopy isEqual:selfCopy->_filterConnection])
  {
    objc_sync_exit(selfCopy);
  }

  else
  {
    v9 = selfCopy->_filterConnection;
    [(_GCGenericPhysicalDevicePending *)selfCopy willChangeValueForKey:@"filterConnection"];
    objc_setProperty_atomic(selfCopy, a2, connectionCopy, 40);
    [(_GCGenericPhysicalDevicePending *)selfCopy didChangeValueForKey:@"filterConnection"];
    objc_sync_exit(selfCopy);

    queue = selfCopy->_queue;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __76___GCGenericPhysicalDevicePending_setFilterConnection_invalidatingPrevious___block_invoke;
    v12[3] = &unk_1E8415500;
    v12[4] = selfCopy;
    v13 = connectionCopy;
    v14 = v9;
    previousCopy = previous;
    v11 = v9;
    dispatch_async(queue, v12);
  }
}

- (void)initWithHIDService:(uint64_t)a1 manager:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"_GCGenericPhysicalDevicePending.m" lineNumber:48 description:{@"Invalid parameter not satisfying: %s", "serviceInfo != nil"}];
}

- (void)initWithHIDService:(uint64_t)a1 manager:(uint64_t)a2 .cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"_GCGenericPhysicalDevicePending.m" lineNumber:49 description:{@"Invalid parameter not satisfying: %s", "manager != nil"}];
}

- (void)_onqueue_prepareDeviceWithConnection:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_1D2C3B000, a2, OS_LOG_TYPE_DEBUG, "%@ Connect to GCGenericDeviceDriverConfigurationService", &v2, 0xCu);
}

- (void)_onqueue_prepareDeviceWithConnection:(uint64_t)a1 .cold.3(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_1D2C3B000, a2, OS_LOG_TYPE_DEBUG, "%@ Fetching HID device snapshot", &v2, 0xCu);
}

- (void)_onqueue_prepareDeviceWithConnection:(uint64_t)a3 .cold.5(uint64_t a1, void *a2, uint64_t a3)
{
  OUTLINED_FUNCTION_2_11(a1, a2, a3, 5.778e-34);
  _os_log_debug_impl(&dword_1D2C3B000, v5, OS_LOG_TYPE_DEBUG, "%@ Fetching HID device model for snapshot %@", v4, 0x16u);
}

- (void)_onqueue_prepareDeviceWithConnection:(uint64_t)a3 .cold.7(uint64_t a1, void *a2, uint64_t a3)
{
  OUTLINED_FUNCTION_2_11(a1, a2, a3, 5.778e-34);
  _os_log_debug_impl(&dword_1D2C3B000, v5, OS_LOG_TYPE_DEBUG, "%@ Configuring driver with model: %@", v4, 0x16u);
}

- (void)_onqueue_prepareDeviceWithConnection:(NSObject *)a1 .cold.9(NSObject *a1, uint64_t a2)
{
  v6 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    v4 = 138412290;
    v5 = a2;
    _os_log_error_impl(&dword_1D2C3B000, a1, OS_LOG_TYPE_ERROR, "%@ Failed to create device with model", &v4, 0xCu);
  }
}

- (void)_onqueue_prepareDeviceWithConnection:(uint64_t)a1 .cold.10(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1D2C3B000, a2, OS_LOG_TYPE_ERROR, "%@ No device DB.", &v2, 0xCu);
}

@end