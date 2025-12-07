@interface _IOGCFastPathProxyClient
+ (id)withIncomingConnection:(uint64_t)connection;
- (_IOGCFastPathProxyClient)init;
- (_IOGCFastPathProxyClient)initWithIncomingConnection:(id)connection;
- (void)dealloc;
- (void)handleMessage:(uint64_t)message;
@end

@implementation _IOGCFastPathProxyClient

+ (id)withIncomingConnection:(uint64_t)connection
{
  v2 = a2;
  v3 = [objc_alloc(objc_opt_self()) initWithIncomingConnection:v2];

  return v3;
}

- (_IOGCFastPathProxyClient)initWithIncomingConnection:(id)connection
{
  connectionCopy = connection;
  v15.receiver = self;
  v15.super_class = _IOGCFastPathProxyClient;
  v5 = [(_IOGCFastPathProxyClient *)&v15 init];
  v6 = dispatch_queue_create("_IOGCFastPathProxyClient", 0);
  v7 = *(v5 + 1);
  *(v5 + 1) = v6;

  v8 = *(v5 + 2);
  *(v5 + 2) = connectionCopy;
  v9 = connectionCopy;

  xpc_connection_get_audit_token();
  xpc_connection_set_target_queue(*(v5 + 2), *(v5 + 1));
  v10 = *(v5 + 2);
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __55___IOGCFastPathProxyClient_initWithIncomingConnection___block_invoke;
  handler[3] = &unk_1E8413BA8;
  v11 = v5;
  v14 = v11;
  xpc_connection_set_event_handler(v10, handler);
  xpc_connection_activate(*(v5 + 2));

  return v11;
}

- (void)handleMessage:(uint64_t)message
{
  v92 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (!message)
  {
    goto LABEL_65;
  }

  string = xpc_dictionary_get_string(v3, "selector");
  if (!string)
  {
    [(_IOGCFastPathProxyClient *)message handleMessage:v4];
    goto LABEL_65;
  }

  v6 = string;
  Uid = sel_getUid(string);
  if (Uid == sel_connect_)
  {
    v8 = _os_activity_create(&dword_1D2C3B000, "[IOGCFastPathProxyClient] Connect", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    *state = 0;
    *&state[8] = 0;
    os_activity_scope_enter(v8, state);
    v9 = xpc_dictionary_copy_mach_send();
    v10 = v9;
    if (!v9)
    {
      v23 = _gc_log_iokit(v9);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(input.opaque[0]) = 136315138;
        *(input.opaque + 4) = v6;
        _os_log_impl(&dword_1D2C3B000, v23, OS_LOG_TYPE_DEFAULT, "Client received '%s' message with missing 'service' argument", &input, 0xCu);
      }

LABEL_91:

      xpc_connection_cancel(*(message + 16));
      goto LABEL_92;
    }

    if (*(message + 60))
    {
      reply = xpc_dictionary_create_reply(v4);
      xpc_dictionary_set_uint64(reply, "status", 0xFFFFFFFFE00002D5);
      xpc_connection_send_message(*(message + 16), reply);

LABEL_92:
      os_activity_scope_leave(state);

      goto LABEL_65;
    }

    v28 = IOServiceOpen(v9, *MEMORY[0x1E69E9A60], 1u, (message + 64));
    v29 = v28;
    if (!v28)
    {
      *(message + 60) = v10;
    }

    v30 = _gc_log_iokit(v28);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v31 = *(message + 60);
      LODWORD(input.opaque[0]) = 67109376;
      HIDWORD(input.opaque[0]) = v31;
      LOWORD(input.opaque[1]) = 1024;
      *(&input.opaque[1] + 2) = v29;
      _os_log_impl(&dword_1D2C3B000, v30, OS_LOG_TYPE_DEFAULT, "IOServiceOpen(%x) returns %{mach.errno}d", &input, 0xEu);
    }

    v32 = xpc_dictionary_create_reply(v4);
    xpc_dictionary_set_uint64(v32, "status", v29);
    xpc_connection_send_message(*(message + 16), v32);

    os_activity_scope_leave(state);
  }

  else
  {
    if (Uid != sel_mapSharedMemory)
    {
      if (Uid == sel_open)
      {
        v8 = _os_activity_create(&dword_1D2C3B000, "[IOGCFastPathProxyClient] open", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
        *state = 0;
        *&state[8] = 0;
        os_activity_scope_enter(v8, state);
        v19 = *(message + 64);
        if (v19)
        {
          input.opaque[0] = 0;
          v20 = IOConnectCallMethod(v19, 0, input.opaque, 1u, 0, 0, 0, 0, 0, 0);
          v21 = v20;
          v22 = _gc_log_iokit(v20);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            *outputStruct = 67109120;
            *&outputStruct[4] = v21;
            _os_log_impl(&dword_1D2C3B000, v22, OS_LOG_TYPE_DEFAULT, "IOConnectCallMethod() returns %{mach.errno}d", outputStruct, 8u);
          }

          goto LABEL_31;
        }
      }

      else
      {
        if (Uid != sel_close)
        {
          if (Uid == sel_getProperty_)
          {
            v33 = _os_activity_create(&dword_1D2C3B000, "[IOGCFastPathProxyClient] GetProperty", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
            input.opaque[0] = 0;
            input.opaque[1] = 0;
            os_activity_scope_enter(v33, &input);
            if (!*(message + 64))
            {
              v60 = xpc_dictionary_create_reply(v4);
              xpc_dictionary_set_uint64(v60, "status", 0xFFFFFFFFE00002D8);
              xpc_connection_send_message(*(message + 16), v60);

              os_activity_scope_leave(&input);
              goto LABEL_65;
            }

            v34 = xpc_dictionary_get_string(v4, "key");
            if (v34)
            {
              v35 = *(message + 60);
              v36 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v34];
              CFProperty = IORegistryEntryCreateCFProperty(v35, v36, *MEMORY[0x1E695E480], 0);
              v38 = _gc_log_iokit(CFProperty);
              if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
              {
                *state = 136315394;
                *&state[4] = v34;
                *&state[12] = 2112;
                *&state[14] = CFProperty;
                _os_log_impl(&dword_1D2C3B000, v38, OS_LOG_TYPE_DEFAULT, "IORegistryEntryCreateCFProperty(%s) returns %@", state, 0x16u);
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v39 = xpc_dictionary_create_reply(v4);
                xpc_dictionary_set_uint64(v39, "value", [CFProperty unsignedIntegerValue]);
                xpc_connection_send_message(*(message + 16), v39);
              }

              else
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v39 = xpc_dictionary_create_reply(v4);
                  v73 = CFProperty;
                  xpc_dictionary_set_string(v39, "value", [CFProperty UTF8String]);
                }

                else
                {
                  v39 = xpc_dictionary_create_reply(v4);
                }

                xpc_connection_send_message(*(message + 16), v39);
              }

              goto LABEL_84;
            }

            v72 = _gc_log_iokit(0);
            if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
            {
              *state = 136315138;
              *&state[4] = v6;
              _os_log_impl(&dword_1D2C3B000, v72, OS_LOG_TYPE_DEFAULT, "Client received '%s' message with missing 'key' argument", state, 0xCu);
            }

            goto LABEL_75;
          }

          if (Uid != sel_createInputQueue_)
          {
            if (Uid != sel_mapMemoryForQueue_)
            {
              if (Uid != sel_getQueue_properties_)
              {
                [(_IOGCFastPathProxyClient *)message handleMessage:v6];
                goto LABEL_65;
              }

              v8 = _os_activity_create(&dword_1D2C3B000, "[IOGCFastPathProxyClient] GetQueueProperties", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
              *state = 0;
              *&state[8] = 0;
              os_activity_scope_enter(v8, state);
              if (*(message + 64))
              {
                uint64 = xpc_dictionary_get_uint64(v4, "queue");
                if (uint64)
                {
                  v62 = xpc_dictionary_get_array(v4, "keys");
                  if (v62)
                  {
                    input.opaque[0] = uint64;
                    *outputStruct = 0;
                    *buf = -3;
                    *object_handle = 0;
                    v63 = objc_alloc_init(MEMORY[0x1E695DF90]);
                    applier[0] = MEMORY[0x1E69E9820];
                    applier[1] = 3221225472;
                    applier[2] = __42___IOGCFastPathProxyClient_handleMessage___block_invoke;
                    applier[3] = &unk_1E8415550;
                    v64 = v63;
                    v86 = v64;
                    xpc_array_apply(v62, applier);
                    v65 = IOCFSerialize(v64, 0);
                    v66 = v65;
                    if (v65)
                    {
                      v67 = *(message + 64);
                      BytePtr = CFDataGetBytePtr(v65);
                      Length = CFDataGetLength(v66);
                      v70 = IOConnectCallMethod(v67, 5u, input.opaque, 1u, BytePtr, Length, 0, 0, outputStruct, buf);
                      if (v70)
                      {
                        v71 = xpc_dictionary_create_reply(v4);
                        xpc_dictionary_set_uint64(v71, "status", v70);
                        xpc_connection_send_message(*(message + 16), v71);
                      }

                      else
                      {
                        v71 = IOCFUnserializeBinary(*outputStruct, *buf, *MEMORY[0x1E695E480], 0, object_handle);
                        if (v71 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                        {
                          v80 = xpc_dictionary_create_reply(v4);
                          xpc_dictionary_set_uint64(v80, "status", 0);
                          empty = xpc_dictionary_create_empty();
                          v83[0] = MEMORY[0x1E69E9820];
                          v83[1] = 3221225472;
                          v83[2] = __42___IOGCFastPathProxyClient_handleMessage___block_invoke_2;
                          v83[3] = &unk_1E8415578;
                          v82 = empty;
                          v84 = v82;
                          [v71 enumerateKeysAndObjectsUsingBlock:v83];
                          xpc_dictionary_set_value(v80, "properties", v82);
                          xpc_connection_send_message(*(message + 16), v80);
                        }

                        else
                        {
                          v80 = xpc_dictionary_create_reply(v4);
                          xpc_dictionary_set_uint64(v80, "status", 0xFFFFFFFFE00002C9);
                          xpc_connection_send_message(*(message + 16), v80);
                        }
                      }
                    }

                    else
                    {
                      v71 = xpc_dictionary_create_reply(v4);
                      xpc_dictionary_set_uint64(v71, "status", 0xFFFFFFFFE00002C9);
                      xpc_connection_send_message(*(message + 16), v71);
                    }
                  }

                  else
                  {
                    v79 = _gc_log_iokit(0);
                    if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
                    {
                      LODWORD(input.opaque[0]) = 136315138;
                      *(input.opaque + 4) = v6;
                      _os_log_impl(&dword_1D2C3B000, v79, OS_LOG_TYPE_DEFAULT, "Client received '%s' message with missing 'queue' argument", &input, 0xCu);
                    }

                    xpc_connection_cancel(*(message + 16));
                  }

                  os_activity_scope_leave(state);
                  goto LABEL_65;
                }

                v23 = _gc_log_iokit(0);
                if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
                {
                  LODWORD(input.opaque[0]) = 136315138;
                  *(input.opaque + 4) = v6;
                  _os_log_impl(&dword_1D2C3B000, v23, OS_LOG_TYPE_DEFAULT, "Client received '%s' message with missing 'queue' argument", &input, 0xCu);
                }

                goto LABEL_91;
              }

              goto LABEL_44;
            }

            v33 = _os_activity_create(&dword_1D2C3B000, "[IOGCFastPathProxyClient] MapMemoryForQueue", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
            input.opaque[0] = 0;
            input.opaque[1] = 0;
            os_activity_scope_enter(v33, &input);
            if (!*(message + 64))
            {
              v74 = xpc_dictionary_create_reply(v4);
              xpc_dictionary_set_uint64(v74, "status", 0xFFFFFFFFE00002D8);
              xpc_connection_send_message(*(message + 16), v74);

              goto LABEL_84;
            }

            v54 = xpc_dictionary_get_uint64(v4, "queue");
            if (v54)
            {
              *outputStruct = 0;
              *buf = 0;
              v55 = MEMORY[0x1E69E9A60];
              v56 = MEMORY[0x1D38AA7C0](*(message + 64), v54, *MEMORY[0x1E69E9A60], outputStruct, buf, 1);
              v57 = v56;
              v58 = _gc_log_iokit(v56);
              if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
              {
                *state = 67109120;
                *&state[4] = v57;
                _os_log_impl(&dword_1D2C3B000, v58, OS_LOG_TYPE_DEFAULT, "IOConnectMapMemory64() returns %{mach.errno}d", state, 8u);
              }

              if (v57)
              {
                v59 = xpc_dictionary_create_reply(v4);
                xpc_dictionary_set_uint64(v59, "status", v57);
                xpc_connection_send_message(*(message + 16), v59);
              }

              else
              {
                object_handle[0] = 0;
                memory_entry_64 = mach_make_memory_entry_64(*v55, buf, *outputStruct, 1, object_handle, 0);
                v76 = memory_entry_64;
                v77 = _gc_log_iokit(memory_entry_64);
                if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
                {
                  *state = 134218240;
                  *&state[4] = *outputStruct;
                  *&state[12] = 1024;
                  *&state[14] = v76;
                  _os_log_impl(&dword_1D2C3B000, v77, OS_LOG_TYPE_DEFAULT, "mach_make_memory_entry_64(%p) returns %{mach.errno}d", state, 0x12u);
                }

                v78 = xpc_dictionary_create_reply(v4);
                if (v76)
                {
                  xpc_dictionary_set_uint64(v78, "status", v76);
                }

                else
                {
                  xpc_dictionary_set_uint64(v78, "status", 0);
                  xpc_dictionary_set_mach_send();
                  xpc_dictionary_set_uint64(v78, "memory_size", *buf);
                }

                xpc_connection_send_message(*(message + 16), v78);
              }

              os_activity_scope_leave(&input);

              goto LABEL_65;
            }

            v72 = _gc_log_iokit(0);
            if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
            {
              *state = 136315138;
              *&state[4] = v6;
              _os_log_impl(&dword_1D2C3B000, v72, OS_LOG_TYPE_DEFAULT, "Client received '%s' message with missing 'queue' argument", state, 0xCu);
            }

LABEL_75:

            xpc_connection_cancel(*(message + 16));
LABEL_84:
            os_activity_scope_leave(&input);

            goto LABEL_65;
          }

          v12 = _os_activity_create(&dword_1D2C3B000, "[IOGCFastPathProxyClient] CreateInputQueue", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
          *state = 0;
          *&state[8] = 0;
          os_activity_scope_enter(v12, state);
          if (*(message + 64))
          {
            input.opaque[0] = 0;
            *outputStruct = 0;
            object_handle[0] = 1;
            v45 = IOCFSerialize(&unk_1F4E36AB0, 0);
            v46 = v45;
            if (v45)
            {
              v47 = *(message + 64);
              v48 = CFDataGetBytePtr(v45);
              v49 = CFDataGetLength(v46);
              v50 = IOConnectCallMethod(v47, 2u, input.opaque, 1u, v48, v49, outputStruct, object_handle, 0, 0);
              v51 = v50;
              v52 = _gc_log_iokit(v50);
              if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 67109120;
                *&buf[4] = v51;
                _os_log_impl(&dword_1D2C3B000, v52, OS_LOG_TYPE_DEFAULT, "IOConnectCallMethod() returns %{mach.errno}d", buf, 8u);
              }

              v53 = xpc_dictionary_create_reply(v4);
              xpc_dictionary_set_uint64(v53, "status", v51);
              xpc_dictionary_set_uint64(v53, "port", *outputStruct);
              xpc_connection_send_message(*(message + 16), v53);
            }

            else
            {
              v53 = xpc_dictionary_create_reply(v4);
              xpc_dictionary_set_uint64(v53, "status", 0xFFFFFFFFE00002C9);
              xpc_connection_send_message(*(message + 16), v53);
            }

            os_activity_scope_leave(state);
            goto LABEL_65;
          }

LABEL_32:
          v27 = xpc_dictionary_create_reply(v4);
          xpc_dictionary_set_uint64(v27, "status", 0xFFFFFFFFE00002D8);
          xpc_connection_send_message(*(message + 16), v27);

          os_activity_scope_leave(state);
          goto LABEL_65;
        }

        v8 = _os_activity_create(&dword_1D2C3B000, "[IOGCFastPathProxyClient] Close", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
        *state = 0;
        *&state[8] = 0;
        os_activity_scope_enter(v8, state);
        v24 = *(message + 64);
        if (v24)
        {
          input.opaque[0] = 0;
          v25 = IOConnectCallMethod(v24, 1u, input.opaque, 1u, 0, 0, 0, 0, 0, 0);
          v21 = v25;
          v22 = _gc_log_iokit(v25);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            *outputStruct = 67109120;
            *&outputStruct[4] = v21;
            _os_log_impl(&dword_1D2C3B000, v22, OS_LOG_TYPE_DEFAULT, "IOConnectCallMethod() returns %{mach.errno}d", outputStruct, 8u);
          }

LABEL_31:

          v26 = xpc_dictionary_create_reply(v4);
          xpc_dictionary_set_uint64(v26, "status", v21);
          xpc_connection_send_message(*(message + 16), v26);

          goto LABEL_92;
        }
      }

LABEL_44:
      v40 = xpc_dictionary_create_reply(v4);
      xpc_dictionary_set_uint64(v40, "status", 0xFFFFFFFFE00002D8);
      xpc_connection_send_message(*(message + 16), v40);

      goto LABEL_92;
    }

    v12 = _os_activity_create(&dword_1D2C3B000, "[IOGCFastPathProxyClient] mapSharedMemory", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    *state = 0;
    *&state[8] = 0;
    os_activity_scope_enter(v12, state);
    v13 = *(message + 64);
    if (!v13)
    {
      goto LABEL_32;
    }

    input.opaque[0] = 0;
    *outputStruct = 0;
    v14 = MEMORY[0x1E69E9A60];
    v15 = MEMORY[0x1D38AA7C0](v13, 0, *MEMORY[0x1E69E9A60], &input, outputStruct, 1);
    v16 = v15;
    v17 = _gc_log_iokit(v15);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v16;
      _os_log_impl(&dword_1D2C3B000, v17, OS_LOG_TYPE_DEFAULT, "IOConnectMapMemory64() returns %{mach.errno}d", buf, 8u);
    }

    if (v16)
    {
      v18 = xpc_dictionary_create_reply(v4);
      xpc_dictionary_set_uint64(v18, "status", v16);
      xpc_connection_send_message(*(message + 16), v18);
    }

    else
    {
      object_handle[0] = 0;
      v41 = mach_make_memory_entry_64(*v14, outputStruct, input.opaque[0], 1, object_handle, 0);
      v42 = v41;
      v43 = _gc_log_iokit(v41);
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        *&buf[4] = v42;
        _os_log_impl(&dword_1D2C3B000, v43, OS_LOG_TYPE_DEFAULT, "mach_make_memory_entry_64() returns %{mach.errno}d", buf, 8u);
      }

      v44 = xpc_dictionary_create_reply(v4);
      if (v42)
      {
        xpc_dictionary_set_uint64(v44, "status", v42);
      }

      else
      {
        xpc_dictionary_set_uint64(v44, "status", 0);
        xpc_dictionary_set_mach_send();
        xpc_dictionary_set_uint64(v44, "memory_size", *outputStruct);
      }

      xpc_connection_send_message(*(message + 16), v44);
    }

    os_activity_scope_leave(state);
  }

LABEL_65:
}

- (_IOGCFastPathProxyClient)init
{
  [(_IOGCFastPathProxyClient *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (void)dealloc
{
  v9 = *MEMORY[0x1E69E9840];
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

  v6.receiver = self;
  v6.super_class = _IOGCFastPathProxyClient;
  [(_IOGCFastPathProxyClient *)&v6 dealloc];
}

- (void)handleMessage:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = _gc_log_iokit(a1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v11) = 138412290;
    *(&v11 + 4) = a2;
    OUTLINED_FUNCTION_1_14(&dword_1D2C3B000, v5, v6, "Client received message without selector: %@", v7, v8, v9, v10, v11, DWORD2(v11));
  }

  xpc_connection_cancel(*(a1 + 16));
}

- (void)handleMessage:(uint64_t)a1 .cold.2(uint64_t a1, uint64_t a2)
{
  v4 = _gc_log_iokit(a1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v11) = 136315138;
    *(&v11 + 4) = a2;
    OUTLINED_FUNCTION_1_14(&dword_1D2C3B000, v5, v6, "Client received message without unknown selector: %s", v7, v8, v9, v10, v11, DWORD2(v11));
  }

  xpc_connection_cancel(*(a1 + 16));
}

@end