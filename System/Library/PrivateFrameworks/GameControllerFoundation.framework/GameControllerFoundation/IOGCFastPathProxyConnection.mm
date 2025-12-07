@interface IOGCFastPathProxyConnection
+ (id)connectTo:(unsigned int)to withProxyService:(id)service error:(int *)error;
- (IOGCFastPathProxyConnection)init;
- (id)createInputQueueWithOptions:(id)options error:(int *)error;
- (id)description;
- (id)getProperty:(id)property;
- (int)close;
- (int)mapSharedMemoryAt:(unint64_t *)at ofSize:(unint64_t *)size options:(unsigned int)options;
- (int)open;
- (void)close;
- (void)dealloc;
- (void)open;
- (xpc_connection_t)_initWithService:(void *)service withProxyService:(_DWORD *)proxyService error:;
@end

@implementation IOGCFastPathProxyConnection

+ (id)connectTo:(unsigned int)to withProxyService:(id)service error:(int *)error
{
  v6 = *&to;
  serviceCopy = service;
  v9 = [(IOGCFastPathProxyConnection *)[self alloc] _initWithService:v6 withProxyService:serviceCopy error:error];

  return v9;
}

void __71__IOGCFastPathProxyConnection__initWithService_withProxyService_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x1D38AB9A0]();
  if (v4 == MEMORY[0x1E69E9E80])
  {
    v5 = _gc_log_iokit(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __71__IOGCFastPathProxyConnection__initWithService_withProxyService_error___block_invoke_cold_4();
    }
  }

  else if (v4 == MEMORY[0x1E69E9E98])
  {
    v6 = MEMORY[0x1E69E9E20];
    v5 = _gc_log_iokit(v4);
    v7 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
    if (v3 == v6)
    {
      if (v7)
      {
        __71__IOGCFastPathProxyConnection__initWithService_withProxyService_error___block_invoke_cold_3(v5);
      }

      xpc_connection_set_event_handler(*(*(a1 + 32) + 16), &__block_literal_global_17);
      xpc_connection_cancel(*(*(a1 + 32) + 16));
      v8 = *(a1 + 32);
      v5 = *(v8 + 16);
      *(v8 + 16) = 0;
    }

    else if (v7)
    {
      __71__IOGCFastPathProxyConnection__initWithService_withProxyService_error___block_invoke_cold_2();
    }
  }

  else
  {
    v5 = _gc_log_iokit(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __71__IOGCFastPathProxyConnection__initWithService_withProxyService_error___block_invoke_cold_1();
    }
  }
}

- (IOGCFastPathProxyConnection)init
{
  [(IOGCFastPathProxyConnection *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (void)dealloc
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = _gc_log_iokit(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_1D2C3B000, v3, OS_LOG_TYPE_DEFAULT, "%@::dealloc", buf, 0xCu);
  }

  connection = self->_connection;
  if (connection)
  {
    xpc_connection_cancel(connection);
    v5 = self->_connection;
    self->_connection = 0;
  }

  service = self->_service;
  if (service)
  {
    IOObjectRelease(service);
    self->_service = 0;
  }

  v7.receiver = self;
  v7.super_class = IOGCFastPathProxyConnection;
  [(IOGCFastPathProxyConnection *)&v7 dealloc];
}

- (int)mapSharedMemoryAt:(unint64_t *)at ofSize:(unint64_t *)size options:(unsigned int)options
{
  keys[1] = *MEMORY[0x1E69E9840];
  v8 = _gc_log_iokit(self);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [IOGCFastPathProxyConnection mapSharedMemoryAt:ofSize:options:];
  }

  keys[0] = "selector";
  Name = sel_getName(sel_mapSharedMemory);
  values = xpc_string_create(Name);
  v10 = xpc_dictionary_create(keys, &values, 1uLL);
  v11 = xpc_connection_send_message_with_reply_sync(self->_connection, v10);
  v12 = MEMORY[0x1D38AB9A0]();
  if (v12 == MEMORY[0x1E69E9E80])
  {
    v17 = xpc_dictionary_get_value(v11, "status");
    v18 = MEMORY[0x1D38AB9A0]();
    if (v18 == MEMORY[0x1E69E9F18])
    {
      value = xpc_uint64_get_value(v17);
      v20 = _gc_log_iokit(value);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        [IOGCFastPathProxyConnection mapSharedMemoryAt:ofSize:options:];
      }

      if (value)
      {
        goto LABEL_19;
      }

      v22 = xpc_dictionary_copy_mach_send();
      v23 = v22;
      if (v22)
      {
        uint64 = xpc_dictionary_get_uint64(v11, "memory_size");
        if (uint64)
        {
          v25 = mach_vm_map(*MEMORY[0x1E69E9A60], at, uint64, 0, 1, v23, 0, 0, 1, 1, 0);
          LODWORD(value) = v25;
          if (v25)
          {
            v26 = _gc_log_iokit(v25);
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67109120;
              LODWORD(selfCopy4) = value;
              _os_log_impl(&dword_1D2C3B000, v26, OS_LOG_TYPE_DEFAULT, "vm_map returns %{mach.errno}d", buf, 8u);
            }
          }

          *size = uint64;
          goto LABEL_19;
        }

        v27 = _gc_log_iokit(0);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          selfCopy4 = self;
          _os_log_impl(&dword_1D2C3B000, v27, OS_LOG_TYPE_DEFAULT, "mapSharedMemory reply for %@ missing 'memory_size' argument", buf, 0xCu);
        }
      }

      else
      {
        v27 = _gc_log_iokit(v22);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          selfCopy4 = self;
          _os_log_impl(&dword_1D2C3B000, v27, OS_LOG_TYPE_DEFAULT, "mapSharedMemory reply for %@ missing 'memory' argument", buf, 0xCu);
        }
      }

      xpc_connection_cancel(self->_connection);
    }

    else
    {
      v19 = _gc_log_iokit(v18);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        [IOGCFastPathProxyConnection mapSharedMemoryAt:ofSize:options:];
      }
    }

    LODWORD(value) = -536870209;
LABEL_19:

    goto LABEL_20;
  }

  v13 = v12 == MEMORY[0x1E69E9E98];
  v14 = _gc_log_iokit(v12);
  LODWORD(value) = -536870209;
  v16 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
  if (v13)
  {
    if (v16)
    {
      *buf = 138412546;
      selfCopy4 = self;
      v30 = 2112;
      v31 = v11;
      _os_log_impl(&dword_1D2C3B000, v14, OS_LOG_TYPE_DEFAULT, "Handshake for %@ failed: %@", buf, 0x16u);
    }
  }

  else if (v16)
  {
    *buf = 138412546;
    selfCopy4 = self;
    v30 = 2112;
    v31 = v11;
    _os_log_impl(&dword_1D2C3B000, v14, OS_LOG_TYPE_DEFAULT, "Handshake for %@ unknown response: %@", buf, 0x16u);
  }

  xpc_connection_cancel(self->_connection);
LABEL_20:

  return value;
}

- (int)open
{
  keys[1] = *MEMORY[0x1E69E9840];
  keys[0] = "selector";
  Name = sel_getName(sel_open);
  values = xpc_string_create(Name);
  v4 = xpc_dictionary_create(keys, &values, 1uLL);
  v5 = xpc_connection_send_message_with_reply_sync(self->_connection, v4);
  v6 = MEMORY[0x1D38AB9A0]();
  if (v6 == MEMORY[0x1E69E9E80])
  {
    v11 = xpc_dictionary_get_value(v5, "status");
    v12 = MEMORY[0x1D38AB9A0]();
    if (v12 == MEMORY[0x1E69E9F18])
    {
      value = xpc_uint64_get_value(v11);
    }

    else
    {
      v13 = _gc_log_iokit(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        [IOGCFastPathProxyConnection open];
      }

      value = -536870209;
    }
  }

  else
  {
    v7 = v6 == MEMORY[0x1E69E9E98];
    v8 = _gc_log_iokit(v6);
    value = -536870209;
    v10 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      if (v10)
      {
        v15 = 138412546;
        selfCopy2 = self;
        v17 = 2112;
        v18 = v5;
        _os_log_impl(&dword_1D2C3B000, v8, OS_LOG_TYPE_DEFAULT, "Open for %@ failed: %@", &v15, 0x16u);
      }
    }

    else if (v10)
    {
      v15 = 138412546;
      selfCopy2 = self;
      v17 = 2112;
      v18 = v5;
      _os_log_impl(&dword_1D2C3B000, v8, OS_LOG_TYPE_DEFAULT, "Open for %@ unknown response: %@", &v15, 0x16u);
    }

    xpc_connection_cancel(self->_connection);
  }

  return value;
}

- (int)close
{
  keys[1] = *MEMORY[0x1E69E9840];
  keys[0] = "selector";
  Name = sel_getName(sel_close);
  values = xpc_string_create(Name);
  v4 = xpc_dictionary_create(keys, &values, 1uLL);
  v5 = xpc_connection_send_message_with_reply_sync(self->_connection, v4);
  v6 = MEMORY[0x1D38AB9A0]();
  if (v6 == MEMORY[0x1E69E9E80])
  {
    v11 = xpc_dictionary_get_value(v5, "status");
    v12 = MEMORY[0x1D38AB9A0]();
    if (v12 == MEMORY[0x1E69E9F18])
    {
      value = xpc_uint64_get_value(v11);
    }

    else
    {
      v13 = _gc_log_iokit(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        [IOGCFastPathProxyConnection close];
      }

      value = -536870209;
    }
  }

  else
  {
    v7 = v6 == MEMORY[0x1E69E9E98];
    v8 = _gc_log_iokit(v6);
    value = -536870209;
    v10 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      if (v10)
      {
        v15 = 138412546;
        selfCopy2 = self;
        v17 = 2112;
        v18 = v5;
        _os_log_impl(&dword_1D2C3B000, v8, OS_LOG_TYPE_DEFAULT, "Close for %@ failed: %@", &v15, 0x16u);
      }
    }

    else if (v10)
    {
      v15 = 138412546;
      selfCopy2 = self;
      v17 = 2112;
      v18 = v5;
      _os_log_impl(&dword_1D2C3B000, v8, OS_LOG_TYPE_DEFAULT, "Close for %@ unknown response: %@", &v15, 0x16u);
    }

    xpc_connection_cancel(self->_connection);
  }

  return value;
}

- (id)getProperty:(id)property
{
  v25 = *MEMORY[0x1E69E9840];
  propertyCopy = property;
  *keys = xmmword_1E8415470;
  Name = sel_getName(sel_getProperty_);
  values[0] = xpc_string_create(Name);
  values[1] = xpc_string_create([propertyCopy UTF8String]);
  v6 = xpc_dictionary_create(keys, values, 2uLL);
  v7 = xpc_connection_send_message_with_reply_sync(self->_connection, v6);
  v8 = MEMORY[0x1D38AB9A0]();
  if (v8 == MEMORY[0x1E69E9E80])
  {
    v12 = xpc_dictionary_get_value(v7, "value");
    v13 = v12;
    if (v12)
    {
      if (MEMORY[0x1D38AB9A0](v12) == MEMORY[0x1E69E9F18])
      {
        v14 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:xpc_uint64_get_value(v13)];
        goto LABEL_20;
      }

      if (MEMORY[0x1D38AB9A0](v13) == MEMORY[0x1E69E9EB0])
      {
        v14 = [MEMORY[0x1E696AD98] numberWithLongLong:xpc_int64_get_value(v13)];
        goto LABEL_20;
      }

      if (MEMORY[0x1D38AB9A0](v13) == MEMORY[0x1E69E9F10])
      {
        v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:xpc_string_get_string_ptr(v13)];
LABEL_20:
        v15 = v14;
        goto LABEL_21;
      }
    }

    else
    {
      v16 = _gc_log_iokit(0);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        [IOGCFastPathProxyConnection getProperty:];
      }
    }

    v15 = 0;
LABEL_21:

    goto LABEL_22;
  }

  v9 = v8 == MEMORY[0x1E69E9E98];
  v10 = _gc_log_iokit(v8);
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    if (v11)
    {
      v19 = 138412546;
      selfCopy2 = self;
      v21 = 2112;
      v22 = v7;
      _os_log_impl(&dword_1D2C3B000, v10, OS_LOG_TYPE_DEFAULT, "getProperty for %@ failed: %@", &v19, 0x16u);
    }
  }

  else if (v11)
  {
    v19 = 138412546;
    selfCopy2 = self;
    v21 = 2112;
    v22 = v7;
    _os_log_impl(&dword_1D2C3B000, v10, OS_LOG_TYPE_DEFAULT, "getProperty for %@ unknown response: %@", &v19, 0x16u);
  }

  xpc_connection_cancel(self->_connection);
  v15 = 0;
LABEL_22:

  for (i = 1; i != -1; --i)
  {
  }

  return v15;
}

- (id)createInputQueueWithOptions:(id)options error:(int *)error
{
  keys[1] = *MEMORY[0x1E69E9840];
  keys[0] = "selector";
  Name = sel_getName(sel_createInputQueue_);
  values = xpc_string_create(Name);
  v7 = xpc_dictionary_create(keys, &values, 1uLL);
  v8 = xpc_connection_send_message_with_reply_sync(self->_connection, v7);
  v9 = MEMORY[0x1D38AB9A0]();
  if (v9 == MEMORY[0x1E69E9E80])
  {
    v13 = xpc_dictionary_get_value(v8, "status");
    v14 = MEMORY[0x1D38AB9A0]();
    if (v14 == MEMORY[0x1E69E9F18])
    {
      value = xpc_uint64_get_value(v13);
      if (value)
      {
        v16 = 0;
        *error = value;
        goto LABEL_17;
      }

      uint64 = xpc_dictionary_get_uint64(v8, "port");
      if (uint64)
      {
        v16 = [[IOGCFastPathProxyQueue alloc] _initWithConnection:self queue:uint64];
        goto LABEL_17;
      }

      v15 = _gc_log_iokit(0);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        [IOGCFastPathProxyConnection createInputQueueWithOptions:error:];
      }
    }

    else
    {
      v15 = _gc_log_iokit(v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        [IOGCFastPathProxyConnection createInputQueueWithOptions:error:];
      }
    }

    v16 = 0;
    *error = -536870209;
LABEL_17:

    goto LABEL_18;
  }

  v10 = v9 == MEMORY[0x1E69E9E98];
  v11 = _gc_log_iokit(v9);
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (v10)
  {
    if (v12)
    {
      v20 = 138412546;
      selfCopy2 = self;
      v22 = 2112;
      v23 = v8;
      _os_log_impl(&dword_1D2C3B000, v11, OS_LOG_TYPE_DEFAULT, "createInputQueue for %@ failed: %@", &v20, 0x16u);
    }
  }

  else if (v12)
  {
    v20 = 138412546;
    selfCopy2 = self;
    v22 = 2112;
    v23 = v8;
    _os_log_impl(&dword_1D2C3B000, v11, OS_LOG_TYPE_DEFAULT, "createInputQueue for %@ unknown response: %@", &v20, 0x16u);
  }

  xpc_connection_cancel(self->_connection);
  v16 = 0;
LABEL_18:

  return v16;
}

- (id)description
{
  v7 = *MEMORY[0x1E69E9840];
  entryID = 0;
  memset(className, 0, 128);
  IORegistryEntryGetRegistryEntryID(self->_service, &entryID);
  IOObjectGetClass(self->_service, className);
  entryID = [MEMORY[0x1E696AEC0] stringWithFormat:@"(PROXY) %s %#llx", className, entryID];

  return entryID;
}

- (xpc_connection_t)_initWithService:(void *)service withProxyService:(_DWORD *)proxyService error:
{
  v5 = a2;
  v62 = *MEMORY[0x1E69E9840];
  serviceCopy = service;
  v8 = serviceCopy;
  if (!self)
  {
    v12 = 0;
    goto LABEL_27;
  }

  if (serviceCopy)
  {
    if (v5)
    {
      goto LABEL_4;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:sel__initWithService_withProxyService_error_ object:self file:@"IOGCFastPathProxyConnection.m" lineNumber:32 description:{@"Invalid parameter not satisfying: %s", "name"}];

    if (v5)
    {
      goto LABEL_4;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:sel__initWithService_withProxyService_error_ object:self file:@"IOGCFastPathProxyConnection.m" lineNumber:33 description:{@"Invalid parameter not satisfying: %s", "service != IO_OBJECT_NULL"}];

LABEL_4:
  v55.receiver = self;
  v55.super_class = IOGCFastPathProxyConnection;
  v9 = objc_msgSendSuper2(&v55, sel_init);
  entryID = 0;
  memset(className, 0, 128);
  v10 = IOObjectRetain(v5);
  IORegistryEntryGetRegistryEntryID(v5, &entryID);
  Class = IOObjectGetClass(v5, className);
  if (!v10)
  {
    v13 = _gc_log_iokit(Class);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      OUTLINED_FUNCTION_1_12();
      OUTLINED_FUNCTION_7_4(&dword_1D2C3B000, v33, v34, "Opening proxy connection to <%s %#llx>", v35, v36, v37, v38, v47, v48, handler, v50, v51, v52, v53, entryID, v55.receiver, v55.super_class);
    }

    v14 = v8;
    mach_service = xpc_connection_create_mach_service([v8 UTF8String], 0, 2uLL);
    v16 = v9[2];
    v9[2] = mach_service;

    v17 = v9[2];
    handler = MEMORY[0x1E69E9820];
    v50 = 3221225472;
    v51 = __71__IOGCFastPathProxyConnection__initWithService_withProxyService_error___block_invoke;
    v52 = &unk_1E8413BA8;
    v18 = v9;
    v53 = v18;
    xpc_connection_set_event_handler(v17, &handler);
    xpc_connection_activate(v9[2]);
    v20 = _gc_log_iokit(v19);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      OUTLINED_FUNCTION_1_12();
      OUTLINED_FUNCTION_7_4(&dword_1D2C3B000, v39, v40, "Initiate handshake for <%s %#llx>", v41, v42, v43, v44, v47, v48, handler, v50, v51, v52, v53, entryID, v55.receiver, v55.super_class);
    }

    keys = "selector";
    Name = sel_getName(sel_connect_);
    values = xpc_string_create(Name);
    v22 = xpc_dictionary_create(&keys, &values, 1uLL);
    xpc_dictionary_set_mach_send();
    v23 = xpc_connection_send_message_with_reply_sync(v9[2], v22);
    v24 = MEMORY[0x1D38AB9A0]();
    if (v24 == MEMORY[0x1E69E9E80])
    {
      v25 = xpc_dictionary_get_value(v23, "status");
      v26 = MEMORY[0x1D38AB9A0]();
      if (v26 == MEMORY[0x1E69E9F18])
      {
        value = xpc_uint64_get_value(v25);
        v30 = value;
        v31 = _gc_log_iokit(value);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
        {
          OUTLINED_FUNCTION_1_12();
          v57 = 1024;
          LODWORD(v58) = v30;
          _os_log_debug_impl(&dword_1D2C3B000, v31, OS_LOG_TYPE_DEBUG, "Handshake for <%s %#llx> returns %{mach.errno}d", buf, 0x1Cu);
        }

        if (!v30)
        {

          goto LABEL_12;
        }

        xpc_connection_cancel(v9[2]);
        *proxyService = v30;
      }

      else
      {
        v27 = _gc_log_iokit(v26);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
        {
          OUTLINED_FUNCTION_1_12();
          v57 = 2112;
          v58 = v23;
          _os_log_debug_impl(&dword_1D2C3B000, v27, OS_LOG_TYPE_DEBUG, "Handshake for <%s %#llx> returns bad reply: %@", buf, 0x20u);
        }
      }
    }

    else
    {
      if (v24 != MEMORY[0x1E69E9E98])
      {
LABEL_12:

        v12 = v18;
LABEL_25:

        goto LABEL_26;
      }

      v28 = _gc_log_iokit(v24);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_1_12();
        v57 = 2112;
        v58 = v23;
        _os_log_impl(&dword_1D2C3B000, v28, OS_LOG_TYPE_DEFAULT, "Handshake for <%s %#llx> failed: %@", buf, 0x20u);
      }

      xpc_connection_cancel(v9[2]);
      *proxyService = -536870209;
    }

    v12 = 0;
    goto LABEL_25;
  }

  v12 = 0;
LABEL_26:

LABEL_27:
  return v12;
}

- (void)mapSharedMemoryAt:ofSize:options:.cold.2()
{
  OUTLINED_FUNCTION_0_17();
  OUTLINED_FUNCTION_2_10();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)mapSharedMemoryAt:ofSize:options:.cold.3()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_4_5();
  OUTLINED_FUNCTION_2_10();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)open
{
  OUTLINED_FUNCTION_0_17();
  OUTLINED_FUNCTION_2_10();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)close
{
  OUTLINED_FUNCTION_0_17();
  OUTLINED_FUNCTION_2_10();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)getProperty:.cold.1()
{
  OUTLINED_FUNCTION_0_17();
  OUTLINED_FUNCTION_2_10();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)createInputQueueWithOptions:error:.cold.1()
{
  OUTLINED_FUNCTION_0_17();
  OUTLINED_FUNCTION_2_10();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

@end