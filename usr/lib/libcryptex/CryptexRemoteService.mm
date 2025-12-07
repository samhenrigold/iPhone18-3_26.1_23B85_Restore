@interface CryptexRemoteService
- (BOOL)supportsFeature:(const char *)feature;
- (CryptexRemoteService)initWithDevice:(id)device queue:(id)queue flags:(unint64_t)flags;
- (__CFError)initService;
- (__CFError)sendRequestSync:(id)sync response:(id *)response;
- (id)remote_conn;
- (void)dealloc;
- (void)initService;
@end

@implementation CryptexRemoteService

- (CryptexRemoteService)initWithDevice:(id)device queue:(id)queue flags:(unint64_t)flags
{
  deviceCopy = device;
  queueCopy = queue;
  v20.receiver = self;
  v20.super_class = CryptexRemoteService;
  v10 = [(CryptexRemoteService *)&v20 init];
  device = v10->_device;
  v10->_device = deviceCopy;
  v12 = deviceCopy;

  client_queue = v10->_client_queue;
  v10->_client_queue = queueCopy;
  v14 = queueCopy;

  v10->_flags = flags;
  v15 = dispatch_queue_create("com.apple.security.libcryptex.remote_service", 0);
  internal_queue = v10->_internal_queue;
  v10->_internal_queue = v15;

  service = v10->service;
  v10->service = 0;

  connection = v10->connection;
  v10->connection = 0;

  return v10;
}

- (void)dealloc
{
  v11 = *MEMORY[0x29EDCA608];
  if (self->connection)
  {
    v3 = __error();
    v4 = *v3;
    v5 = _remote_service_log(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      connection = self->connection;
      *buf = 138543362;
      v10 = connection;
      _os_log_impl(&dword_2986C0000, v5, OS_LOG_TYPE_DEBUG, "canceling RXPC connection '%{public}@'", buf, 0xCu);
    }

    *__error() = v4;
    xpc_remote_connection_cancel();
    v7 = self->connection;
    self->connection = 0;
  }

  v8.receiver = self;
  v8.super_class = CryptexRemoteService;
  [(CryptexRemoteService *)&v8 dealloc];
}

- (id)remote_conn
{
  v15 = *MEMORY[0x29EDCA608];
  connection = self->connection;
  if (!connection)
  {
    internal_queue = [(CryptexRemoteService *)self internal_queue];
    v5 = xpc_remote_connection_create_with_remote_service();
    v6 = self->connection;
    self->connection = v5;

    xpc_remote_connection_set_event_handler();
    xpc_remote_connection_activate();
    v7 = __error();
    v8 = *v7;
    v9 = _remote_service_log(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = self->connection;
      v13 = 138543362;
      v14 = v10;
      _os_log_impl(&dword_2986C0000, v9, OS_LOG_TYPE_DEBUG, "establish RXPC connection '%{public}@'", &v13, 0xCu);
    }

    *__error() = v8;
    connection = self->connection;
  }

  v11 = connection;

  return v11;
}

int *__35__CryptexRemoteService_remote_conn__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x29C28F4F0](a2);
  v3 = MEMORY[0x29EDCAA18];
  v4 = __error();
  v5 = *v4;
  v6 = _remote_service_log(v4);
  v7 = v6;
  if (v2 == v3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      v8 = "error received on remote connection";
      v9 = buf;
      v10 = v7;
      v11 = OS_LOG_TYPE_DEBUG;
      goto LABEL_6;
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v13 = 0;
    v8 = "unexpected message from remote connection";
    v9 = &v13;
    v10 = v7;
    v11 = OS_LOG_TYPE_ERROR;
LABEL_6:
    _os_log_impl(&dword_2986C0000, v10, v11, v8, v9, 2u);
  }

  result = __error();
  *result = v5;
  return result;
}

- (__CFError)initService
{
  v37 = *MEMORY[0x29EDCA608];
  if (self->service)
  {
    [(CryptexRemoteService *)&v35 initService];
  }

  device = [(CryptexRemoteService *)self device];
  state = remote_device_get_state();

  if (state != 2)
  {
    v10 = _remote_service_log(v5);

    if (v10)
    {
      v12 = _remote_service_log(v11);
      v13 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
      device2 = [(CryptexRemoteService *)self device];
      if (v13)
      {
        v15 = 3;
      }

      else
      {
        v15 = 2;
      }

      LODWORD(v36[0]) = 138412290;
      *(v36 + 4) = device2;
      v16 = _os_log_send_and_compose_impl(v15, 0, 0, 0, &dword_2986C0000, v12, 16, "remote device %@ not connected", v36, 12);
    }

    else
    {
      v17 = MEMORY[0x29EDCA988];
      device3 = [(CryptexRemoteService *)self device];
      LODWORD(v36[0]) = 138412290;
      *(v36 + 4) = device3;
      v16 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "remote device %@ not connected", v36, 12);

      v12 = MEMORY[0x29EDCA988];
    }

    Error = createError("[CryptexRemoteService initService]", "remote_service.m", 172, "com.apple.security.cryptex", 57, 0, v16);
    goto LABEL_12;
  }

  device4 = [(CryptexRemoteService *)self device];
  v7 = remote_device_copy_service();
  service = self->service;
  self->service = v7;

  if (!self->service)
  {
    v21 = __error();
    v22 = *v21;
    if (*v21 == 83)
    {
      v27 = _remote_service_log(v21);

      if (v27)
      {
        v29 = _remote_service_log(v28);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          v30 = 3;
        }

        else
        {
          v30 = 2;
        }

        *&v36[0] = 0x5304000100;
        v16 = _os_log_send_and_compose_impl(v30, 0, 0, 0, &dword_2986C0000, v29, 16, "remote device has disconnected %{darwin.errno}d", v36, 8);
      }

      else
      {
        *&v36[0] = 0x5304000100;
        v16 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "remote device has disconnected %{darwin.errno}d", v36, 8);
      }

      Error = createError("[CryptexRemoteService initService]", "remote_service.m", 191, "com.apple.security.cryptex.posix", 83, 0, v16);
    }

    else if (v22 == 3)
    {
      v23 = _remote_service_log(v21);

      if (v23)
      {
        v25 = _remote_service_log(v24);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          v26 = 3;
        }

        else
        {
          v26 = 2;
        }

        *&v36[0] = 0x304000100;
        v16 = _os_log_send_and_compose_impl(v26, 0, 0, 0, &dword_2986C0000, v25, 16, "cryptex remote service not found on remote device %{darwin.errno}d", v36, 8);
      }

      else
      {
        *&v36[0] = 0x304000100;
        v16 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "cryptex remote service not found on remote device %{darwin.errno}d", v36, 8);
      }

      Error = createError("[CryptexRemoteService initService]", "remote_service.m", 185, "com.apple.security.cryptex.posix", 3, 0, v16);
    }

    else
    {
      v31 = _remote_service_log(v21);

      if (v31)
      {
        v33 = _remote_service_log(v32);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          v34 = 3;
        }

        else
        {
          v34 = 2;
        }

        LODWORD(v36[0]) = 67109120;
        DWORD1(v36[0]) = v22;
        v16 = _os_log_send_and_compose_impl(v34, 0, 0, 0, &dword_2986C0000, v33, 16, "unknown error %{darwin.errno}d", v36, 8);
      }

      else
      {
        LODWORD(v36[0]) = 67109120;
        DWORD1(v36[0]) = v22;
        v16 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "unknown error %{darwin.errno}d", v36, 8);
      }

      Error = createError("[CryptexRemoteService initService]", "remote_service.m", 197, "com.apple.security.cryptex.posix", v22, 0, v16);
    }

LABEL_12:
    v9 = Error;
    free(v16);
    return v9;
  }

  return 0;
}

- (BOOL)supportsFeature:(const char *)feature
{
  v14 = *MEMORY[0x29EDCA608];
  service = self->service;
  if (service)
  {
LABEL_2:

    return MEMORY[0x2A1C68F00](service, feature);
  }

  initService = [(CryptexRemoteService *)self initService];
  if (!initService)
  {
    service = self->service;
    goto LABEL_2;
  }

  v7 = initService;
  v8 = __error();
  v9 = *v8;
  v10 = _remote_service_log(v8);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v12 = 138412290;
    v13 = v7;
    _os_log_impl(&dword_2986C0000, v10, OS_LOG_TYPE_ERROR, "failed to init service: %@", &v12, 0xCu);
  }

  *__error() = v9;
  CFRelease(v7);
  return 0;
}

- (__CFError)sendRequestSync:(id)sync response:(id *)response
{
  v52 = *MEMORY[0x29EDCA608];
  syncCopy = sync;
  cf = 0;
  if (self->service || (Error = [(CryptexRemoteService *)self initService]) == 0)
  {
    v7 = xpc_copy_debug_description();
    v8 = __error();
    v9 = *v8;
    v10 = _remote_service_log(v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446210;
      v51 = v7;
      _os_log_impl(&dword_2986C0000, v10, OS_LOG_TYPE_DEBUG, "sending request: %{public}s", buf, 0xCu);
    }

    *__error() = v9;
    free(v7);
    remote_conn = [(CryptexRemoteService *)self remote_conn];
    v12 = xpc_remote_connection_send_message_with_reply_sync();

    if (MEMORY[0x29C28F4F0](v12) == MEMORY[0x29EDCAA18])
    {
      v28 = xpc_copy_debug_description();
      v29 = _remote_service_log(v28);

      if (v29)
      {
        v31 = _remote_service_log(v30);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          v32 = 3;
        }

        else
        {
          v32 = 2;
        }

        *buf = 136446210;
        v51 = v28;
        v33 = _os_log_send_and_compose_impl(v32, 0, 0, 0, &dword_2986C0000, v31, 16, "RemoteXPC error: %{public}s", buf, 12);
      }

      else
      {
        *buf = 136446210;
        v51 = v28;
        v33 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "RemoteXPC error: %{public}s", buf, 12);
      }

      Error = createError("[CryptexRemoteService sendRequestSync:response:]", "remote_service.m", 249, "com.apple.security.cryptex", 54, 0, v33);
      free(v33);
      free(v28);
    }

    else
    {
      v13 = xpc_copy_debug_description();
      v14 = __error();
      v15 = *v14;
      v16 = _remote_service_log(v14);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446210;
        v51 = v13;
        _os_log_impl(&dword_2986C0000, v16, OS_LOG_TYPE_DEBUG, "got reply: %{public}s", buf, 0xCu);
      }

      *__error() = v15;
      free(v13);
      cferr = _xpc_reply_get_cferr(v12, &cf);
      v18 = cferr;
      if (cferr)
      {
        v19 = _remote_service_log(cferr);

        if (v19)
        {
          v21 = _remote_service_log(v20);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            v22 = 3;
          }

          else
          {
            v22 = 2;
          }

          *buf = 0;
          v23 = _os_log_send_and_compose_impl(v22, 0, 0, 0, &dword_2986C0000, v21, 16, "malformed response: cannot fetch error", buf, 2);
        }

        else
        {
          *buf = 0;
          v23 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "malformed response: cannot fetch error", buf, 2);
        }

        Error = createError("[CryptexRemoteService sendRequestSync:response:]", "remote_service.m", 261, "com.apple.security.cryptex", v18, 0, v23);
        free(v23);
      }

      else if (cf)
      {
        v34 = _remote_service_log(cferr);

        if (v34)
        {
          v36 = _remote_service_log(v35);
          if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            v37 = 3;
          }

          else
          {
            v37 = 2;
          }

          *buf = 0;
          v38 = _os_log_send_and_compose_impl(v37, 0, 0, 0, &dword_2986C0000, v36, 16, "routine error", buf, 2);
        }

        else
        {
          *buf = 0;
          v38 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "routine error", buf, 2);
        }

        Error = createError("[CryptexRemoteService sendRequestSync:response:]", "remote_service.m", 269, "com.apple.security.cryptex", 16, cf, v38);
        free(v38);
      }

      else
      {
        v48 = 0;
        argv = _xpc_reply_get_argv(v12, &v48);
        v40 = v48;
        v41 = v40;
        if (argv)
        {
          v42 = _remote_service_log(v40);

          if (v42)
          {
            v44 = _remote_service_log(v43);
            if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
            {
              v45 = 3;
            }

            else
            {
              v45 = 2;
            }

            *buf = 0;
            v46 = _os_log_send_and_compose_impl(v45, 0, 0, 0, &dword_2986C0000, v44, 16, "malformed response: cannot fetch response", buf, 2);
          }

          else
          {
            *buf = 0;
            v46 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "malformed response: cannot fetch response", buf, 2);
          }

          Error = createError("[CryptexRemoteService sendRequestSync:response:]", "remote_service.m", 276, "com.apple.security.cryptex", argv, 0, v46);
          free(v46);
        }

        else
        {
          *response = xpc_copy(v40);

          Error = 0;
        }
      }
    }
  }

  else
  {
    v25 = __error();
    v26 = *v25;
    v27 = _remote_service_log(v25);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v51 = Error;
      _os_log_impl(&dword_2986C0000, v27, OS_LOG_TYPE_ERROR, "failed to init service: %@", buf, 0xCu);
    }

    *__error() = v26;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return Error;
}

- (void)initService
{
  OUTLINED_FUNCTION_2(self, a2);
  if (OUTLINED_FUNCTION_4())
  {
    v7 = 3;
  }

  else
  {
    v7 = 2;
  }

  OUTLINED_FUNCTION_0_0(v7, self, v3, v4, &dword_2986C0000, v5, v6, "assertion failure: self->service -> %llu");
  _os_crash_msg();
  __break(1u);
}

@end