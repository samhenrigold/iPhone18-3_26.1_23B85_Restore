@interface IOGCFastPathProxyClient
@end

@implementation IOGCFastPathProxyClient

void __55___IOGCFastPathProxyClient_initWithIncomingConnection___block_invoke(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = MEMORY[0x1D38AB9A0]();
  if (v4 == MEMORY[0x1E69E9E80])
  {
    v10 = _gc_log_iokit(v4);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = v3;
      _os_log_impl(&dword_1D2C3B000, v10, OS_LOG_TYPE_DEFAULT, "Client received message: %@", buf, 0xCu);
    }

    *buf = 0u;
    v28 = 0u;
    xpc_dictionary_get_audit_token();
    v11 = *(a1 + 32);
    if (*buf == v11[3] && *&buf[8] == v11[4] && v28 == v11[5] && *(&v28 + 1) == v11[6])
    {
      [(_IOGCFastPathProxyClient *)v11 handleMessage:v3];
      goto LABEL_21;
    }

    v5 = _gc_log_iokit(v11);
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_20;
    }

    v26 = 0;
    v6 = "Bad audit token.";
    v7 = &v26;
    v8 = v5;
    v9 = 2;
    goto LABEL_19;
  }

  if (v4 != MEMORY[0x1E69E9E98])
  {
    v5 = _gc_log_iokit(v4);
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
LABEL_20:

      xpc_connection_cancel(*(*(a1 + 32) + 16));
      goto LABEL_21;
    }

    *buf = 138412290;
    *&buf[4] = v3;
    v6 = "Client received unknown event: %@";
    v7 = buf;
    v8 = v5;
    v9 = 12;
LABEL_19:
    _os_log_impl(&dword_1D2C3B000, v8, OS_LOG_TYPE_DEFAULT, v6, v7, v9);
    goto LABEL_20;
  }

  v15 = MEMORY[0x1E69E9E20];
  v16 = _gc_log_iokit(v4);
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
  if (v3 == v15)
  {
    if (v17)
    {
      __55___IOGCFastPathProxyClient_initWithIncomingConnection___block_invoke_cold_2(v16);
    }

    xpc_connection_set_event_handler(*(*(a1 + 32) + 16), &__block_literal_global_19);
    xpc_connection_cancel(*(*(a1 + 32) + 16));
    v24 = *(a1 + 32);
    v25 = *(v24 + 16);
    *(v24 + 16) = 0;
  }

  else
  {
    if (v17)
    {
      __55___IOGCFastPathProxyClient_initWithIncomingConnection___block_invoke_cold_1(v3, v16, v18, v19, v20, v21, v22, v23);
    }
  }

LABEL_21:
}

uint64_t __42___IOGCFastPathProxyClient_handleMessage___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = MEMORY[0x1E695DFB0];
  v5 = a3;
  v6 = [v4 null];
  v7 = MEMORY[0x1E696AEC0];
  string_ptr = xpc_string_get_string_ptr(v5);

  v9 = [v7 stringWithUTF8String:string_ptr];
  [v3 setObject:v6 forKey:v9];

  return 1;
}

void __42___IOGCFastPathProxyClient_handleMessage___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    xpc_dictionary_set_uint64(*(a1 + 32), [v6 UTF8String], objc_msgSend(v5, "unsignedLongLongValue"));
  }
}

void __55___IOGCFastPathProxyClient_initWithIncomingConnection___block_invoke_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_5_6(&dword_1D2C3B000, a2, a3, "Proxy client received error: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end