void _bsd_log_spd(uint64_t a1, char *a2, ...)
{
  va_start(va, a2);
  if (_bsd_log_spd_once != -1)
  {
    _bsd_log_spd_cold_1();
  }

  if (_bsd_log_spd_alt_logger)
  {
    _bsd_log_spd_alt_logger(a1, a2, va);
  }

  else
  {
    vsyslog(a1, a2, va);
  }
}

void *___bsd_log_spd_block_invoke()
{
  result = dlsym(0xFFFFFFFFFFFFFFFELL, "_bsd_alt_log");
  _bsd_log_spd_alt_logger = result;
  return result;
}

uint64_t _spd_os_log(uint64_t a1, uint64_t a2)
{
  if (_spd_os_log_onceToken != -1)
  {
    _spd_os_log_cold_1();
  }

  return _spd_os_log_gOSLog;
}

os_log_t ___spd_os_log_block_invoke()
{
  result = os_log_create("com.apple.network.spd", &unk_2998F38F9);
  _spd_os_log_gOSLog = result;
  return result;
}

uint64_t spd_client_session_queue(uint64_t a1, uint64_t a2)
{
  if (spd_client_session_queue_once != -1)
  {
    spd_client_session_queue_cold_1();
  }

  return spd_client_session_queue_queue;
}

dispatch_queue_t __spd_client_session_queue_block_invoke()
{
  result = dispatch_queue_create("com.apple.libspd.client-sessions", 0);
  spd_client_session_queue_queue = result;
  return result;
}

uint64_t spd_register_for_notifications(void *a1)
{
  if (!a1)
  {
    return 4;
  }

  v2 = _spd_helper_send_async(10, 0, 0xFFFFFFFFLL);
  if (v2)
  {
    v4 = _spd_os_log(v2, v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      spd_register_for_notifications_cold_1();
    }
  }

  v5 = _s_spd_notification_client_sessions;
  *a1 = _s_spd_notification_client_sessions;
  if (v5)
  {
    *(v5 + 8) = a1;
  }

  result = 0;
  _s_spd_notification_client_sessions = a1;
  a1[1] = &_s_spd_notification_client_sessions;
  return result;
}

uint64_t _spd_helper_send_async(int64_t a1, const unsigned __int8 *a2, uint64_t a3)
{
  v3 = a3;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2000000000;
  v28 = 0;
  message = _spd_helper_create_message(a1, -1, a2, a3);
  if (message)
  {
    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 0x40000000;
    v17 = ___spd_helper_send_async_block_invoke;
    v18 = &unk_29EF702E0;
    v21 = a1;
    v22 = a2;
    v23 = -1;
    v24 = v3;
    v19 = &v25;
    v20 = message;
    pthread_mutex_lock(&_spd_connection_mutex);
    inited = _spd_xpc_init_locked();
    if (_spd_connection)
    {
      v9 = pthread_mutex_unlock(&_spd_connection_mutex);
      v11 = _spd_os_log(v9, v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_2998F1000, v11, OS_LOG_TYPE_INFO, "Executing when_connected block immediately.", buf, 2u);
      }

      (v17)(aBlock);
    }

    else
    {
      v12 = _spd_os_log(inited, v8);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_2998F1000, v12, OS_LOG_TYPE_INFO, "Enqueuing when_connected block.", buf, 2u);
      }

      v13 = _spd_pending;
      if (_spd_pending)
      {
        *buf = MEMORY[0x29EDCA5F8];
        v30 = 0x40000000;
        v31 = ___spd_when_connected_block_invoke;
        v32 = &unk_29EF70308;
        v33 = _spd_pending;
        v34 = aBlock;
        _spd_pending = _Block_copy(buf);
        _Block_release(v13);
      }

      else
      {
        _spd_pending = _Block_copy(aBlock);
      }

      pthread_mutex_unlock(&_spd_connection_mutex);
    }
  }

  v14 = *(v26 + 6);
  _Block_object_dispose(&v25, 8);
  return v14;
}

uint64_t spd_deregister_for_notifications(uint64_t *a1, uint64_t a2)
{
  if (a1)
  {
    v3 = *a1;
    v4 = a1[1];
    if (*a1)
    {
      *(v3 + 8) = v4;
    }

    *v4 = v3;
    v5 = a1[3];
    if (v5)
    {
      _Block_release(v5);
    }

    v6 = a1[4];
    if (v6)
    {
      _Block_release(v6);
    }

    free(a1);
    v7 = _spd_helper_send_async(11, 0, 0xFFFFFFFFLL);
    v9 = v7;
    if (v7)
    {
      v10 = _spd_os_log(v7, v8);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        spd_deregister_for_notifications_cold_1();
      }
    }
  }

  else
  {
    v11 = _spd_os_log(0, a2);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      spd_deregister_for_notifications_cold_2();
    }

    return 4;
  }

  return v9;
}

int64_t spd_checkin_socket(uint64_t a1, unsigned __int8 *a2)
{
  v3 = a1;
  v47 = *MEMORY[0x29EDCA608];
  if (dyld_program_sdk_at_least())
  {
    spd_checkin_socket_cold_4();
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0;
  v40 = 0u;
  LODWORD(v36.tv_sec) = 128;
  if (getsockname(v3, &v39, &v36))
  {
    return 5;
  }

  LODWORD(v36.tv_sec) = 128;
  if (getpeername(v3, &v39, &v36))
  {
    return 5;
  }

  message = _spd_helper_create_message(40, v3, 0, 0xFFFFFFFF);
  if (!message)
  {
    return 5;
  }

  v7 = message;
  v8 = MEMORY[0x29C2A3920]();
  v9 = MEMORY[0x29EDCAA00];
  if (v8 == MEMORY[0x29EDCAA00])
  {
    v31 = a2;
    v11 = 0;
    v12 = 1;
LABEL_10:
    v13 = v12;
    pthread_mutex_lock(&_spd_connection_mutex);
    while (1)
    {
      v14 = _spd_connection;
      if (_spd_connection)
      {
        break;
      }

      inited = _spd_xpc_init_locked();
      if ((inited & 1) == 0)
      {
        v25 = _spd_os_log(inited, v16);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          spd_checkin_socket_cold_1(&v37, v38);
        }

LABEL_22:
        v26 = pthread_mutex_unlock(&_spd_connection_mutex);
        v28 = _spd_os_log(v26, v27);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          spd_checkin_socket_cold_3(&v32, v33);
        }

LABEL_24:
        v12 = 0;
        v11 = 1;
        if (v13)
        {
          goto LABEL_10;
        }

        goto LABEL_29;
      }

      *&v39.sa_len = 0;
      *&v39.sa_data[6] = 0;
      v36.tv_sec = 0;
      v36.tv_nsec = 0;
      gettimeofday(&v39, 0);
      v36.tv_sec = *&v39.sa_len + 2;
      v36.tv_nsec = 0;
      v17 = pthread_cond_timedwait(&_spd_connection_cond, &_spd_connection_mutex, &v36);
      if (v17 == 60)
      {
        v19 = _spd_os_log(v17, v18);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          spd_checkin_socket_cold_2(&v34, v35);
        }

        goto LABEL_22;
      }
    }

    xpc_retain(_spd_connection);
    pthread_mutex_unlock(&_spd_connection_mutex);
    v20 = xpc_connection_send_message_with_reply_sync(v14, v7);
    v21 = MEMORY[0x29C2A3920]();
    if (v21 != v9)
    {
      v23 = v9;
      v24 = _spd_os_log(v21, v22);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *&v39.sa_len = 67109120;
        *&v39.sa_data[2] = v11;
        _os_log_error_impl(&dword_2998F1000, v24, OS_LOG_TYPE_ERROR, "Attempt #%d: got error when sending message!", &v39.sa_len, 8u);
      }

      xpc_release(v20);
      xpc_release(v14);
      v9 = v23;
      goto LABEL_24;
    }

    xpc_release(v14);
    if (!v20)
    {
LABEL_29:
      v10 = 0;
      int64 = 5;
      a2 = v31;
      goto LABEL_32;
    }

    a2 = v31;
    if (xpc_dictionary_get_value(v20, "result"))
    {
      int64 = xpc_dictionary_get_int64(v20, "result");
    }

    else
    {
      int64 = 5;
    }

    v10 = xpc_retain(v20);
    xpc_release(v20);
  }

  else
  {
    v10 = 0;
    int64 = 5;
  }

LABEL_32:
  xpc_release(v7);
  if (int64 || !v10)
  {
    if (!v10)
    {
      return int64;
    }
  }

  else
  {
    uuid = xpc_dictionary_get_uuid(v10, "uuid");
    if (uuid && (v30 = uuid, !uuid_is_null(uuid)))
    {
      uuid_copy(a2, v30);
      int64 = 0;
    }

    else
    {
      int64 = 5;
    }
  }

  xpc_release(v10);
  return int64;
}

uint64_t spd_start_monitoring_all_sockets()
{
  v0 = getpid();

  return _spd_helper_send_async(20, 0, v0);
}

uint64_t spd_stop_monitoring_all_sockets()
{
  v0 = getpid();

  return _spd_helper_send_async(21, 0, v0);
}

void *_spd_helper_create_message(int64_t a1, int a2, const unsigned __int8 *a3, unsigned int a4)
{
  v8 = xpc_dictionary_create(0, 0, 0);
  v9 = v8;
  if (v8)
  {
    xpc_dictionary_set_int64(v8, "msg_type", a1);
    v10 = dyld_program_sdk_at_least();
    xpc_dictionary_set_BOOL(v9, "legacy", v10 != 1);
    v11 = dyld_program_sdk_at_least();
    xpc_dictionary_set_BOOL(v9, "modern", v11);
    if (a2 != -1)
    {
      xpc_dictionary_set_fd(v9, "socket", a2);
    }

    if (a3)
    {
      xpc_dictionary_set_uuid(v9, "uuid", a3);
    }

    if ((a4 & 0x80000000) == 0)
    {
      xpc_dictionary_set_int64(v9, "pid", a4);
    }
  }

  return v9;
}

void ___spd_helper_send_async_block_invoke(uint64_t a1, uint64_t a2)
{
  if (_spd_connection)
  {
    xpc_connection_send_message(_spd_connection, *(a1 + 40));
    v5 = _spd_os_log(v3, v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      ___spd_helper_send_async_block_invoke_cold_1(a1, v5);
    }

    v6 = 0;
  }

  else
  {
    v7 = _spd_os_log(0, a2);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      ___spd_helper_send_async_block_invoke_cold_2();
    }

    v6 = 5;
  }

  v8 = *(a1 + 40);
  *(*(*(a1 + 32) + 8) + 24) = v6;
  xpc_release(v8);
}

uint64_t _spd_xpc_init_locked()
{
  if (_spd_xpc_init_locked_once != -1)
  {
    _spd_xpc_init_locked_cold_1();
  }

  v0 = 1;
  if ((_spd_connection_in_progress & 1) == 0 && !_spd_connection)
  {
    _spd_connection_in_progress = 1;
    v1 = xpc_dictionary_create(0, 0, 0);
    if (v1)
    {
      v2 = v1;
      v0 = 1;
      xpc_dictionary_set_int64(v1, "msg_type", 1);
      v3 = getpid();
      xpc_dictionary_set_int64(v2, "pid", v3);
      xpc_set_event();
      xpc_release(v2);
    }

    else
    {
      return 0;
    }
  }

  return v0;
}

uint64_t ___spd_when_connected_block_invoke(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

void ___spd_xpc_init_locked_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = _spd_os_log(a1, a2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    ___spd_xpc_init_locked_block_invoke_cold_1();
  }

  if (_spd_helper_queue_once != -1)
  {
    ___spd_xpc_init_locked_block_invoke_cold_2();
  }

  xpc_set_event_stream_handler("com.apple.spd.matching", _spd_helper_queue_queue, &__block_literal_global_15);
}

dispatch_queue_t ___spd_helper_queue_block_invoke()
{
  result = dispatch_queue_create("com.apple.libspd.internal-queue", 0);
  _spd_helper_queue_queue = result;
  return result;
}

void spd_xpc_event_stream_handler_block_invoke(uint64_t a1, void *a2)
{
  v3 = _spd_os_log(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    spd_xpc_event_stream_handler_block_invoke_cold_1();
  }

  connection = xpc_dictionary_create_connection(a2, "connection");
  if (connection)
  {
    v6 = connection;
    handler[0] = MEMORY[0x29EDCA5F8];
    handler[1] = 0x40000000;
    handler[2] = spd_xpc_event_stream_handler_block_invoke_2;
    handler[3] = &__block_descriptor_tmp_18;
    handler[4] = connection;
    xpc_connection_set_event_handler(connection, handler);
    if (_spd_helper_queue_once != -1)
    {
      ___spd_xpc_init_locked_block_invoke_cold_2();
    }

    xpc_connection_set_target_queue(v6, _spd_helper_queue_queue);
    pthread_mutex_lock(&_spd_connection_mutex);
    if (_spd_connection)
    {
      _spd_xpc_cleanup_locked();
    }

    _spd_connection_in_progress = 0;
    _spd_connection = v6;
    xpc_connection_resume(v6);
    v7 = _spd_pending;
    _spd_pending = 0;
    pthread_cond_broadcast(&_spd_connection_cond);
    v8 = pthread_mutex_unlock(&_spd_connection_mutex);
    if (v7)
    {
      v10 = _spd_os_log(v8, v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *v12 = 0;
        _os_log_impl(&dword_2998F1000, v10, OS_LOG_TYPE_INFO, "Executing pending block(s).", v12, 2u);
      }

      v7[2](v7);
      _Block_release(v7);
    }
  }

  else
  {
    v11 = _spd_os_log(0, v5);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      spd_xpc_event_stream_handler_block_invoke_cold_3();
    }
  }
}

void spd_xpc_event_stream_handler_block_invoke_2(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x29EDCA608];
  v4 = MEMORY[0x29C2A3920](a2);
  if (v4 == MEMORY[0x29EDCAA18])
  {
    pthread_mutex_lock(&_spd_connection_mutex);
    if (_spd_connection == *(a1 + 32))
    {
      string = xpc_dictionary_get_string(a2, *MEMORY[0x29EDCA9C8]);
      v10 = _spd_os_log(string, v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = "???";
        if (string)
        {
          v11 = string;
        }

        *buf = 136315138;
        v17 = v11;
        _os_log_impl(&dword_2998F1000, v10, OS_LOG_TYPE_DEFAULT, "XPC connection is gone, reason: %s", buf, 0xCu);
      }

      _spd_xpc_cleanup_locked();
    }

    pthread_mutex_unlock(&_spd_connection_mutex);
  }

  else if (v4 == MEMORY[0x29EDCAA00])
  {
    int64 = xpc_dictionary_get_int64(a2, "msg_type");
    if (int64 == 50)
    {
      v7 = xpc_dictionary_get_int64(a2, "pid");
      if (spd_client_session_queue_once != -1)
      {
        spd_client_session_queue_cold_1();
      }

      block[0] = MEMORY[0x29EDCA5F8];
      block[1] = 0x40000000;
      block[2] = spd_xpc_event_stream_handler_block_invoke_3;
      block[3] = &__block_descriptor_tmp_17;
      v15 = v7;
      dispatch_async(spd_client_session_queue_queue, block);
    }

    else
    {
      v12 = int64;
      v13 = _spd_os_log(int64, v6);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        spd_xpc_event_stream_handler_block_invoke_2_cold_1(v12, v13);
      }
    }
  }
}

void _spd_xpc_cleanup_locked()
{
  if (_spd_connection)
  {
    xpc_connection_cancel(_spd_connection);
    xpc_release(_spd_connection);
    _spd_connection = 0;
    _spd_connection_in_progress = 0;
    if (spd_client_session_queue_once != -1)
    {
      spd_client_session_queue_cold_1();
    }

    v0 = spd_client_session_queue_queue;

    dispatch_async(v0, &__block_literal_global_21);
  }

  else
  {
    _spd_connection_in_progress = 0;
  }
}

void spd_xpc_event_stream_handler_block_invoke_3(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x29EDCA608];
  v2 = _s_spd_notification_client_sessions;
  if (_s_spd_notification_client_sessions)
  {
    v3 = *(a1 + 32);
    do
    {
      if (v2[2] && v2[3])
      {
        v4 = _spd_os_log(a1, a2);
        if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
        {
          *buf = 67109120;
          LODWORD(v10) = v3;
          _os_log_impl(&dword_2998F1000, v4, OS_LOG_TYPE_INFO, "Calling session client's callback on their queue for client [PID=%d]", buf, 8u);
        }

        v5 = v2[2];
        block[0] = MEMORY[0x29EDCA5F8];
        block[1] = 0x40000000;
        block[2] = __spd_notification_socket_activity_block_invoke;
        block[3] = &__block_descriptor_tmp_22;
        block[4] = v2;
        v8 = v3;
        dispatch_async(v5, block);
      }

      else
      {
        v6 = _spd_os_log(a1, a2);
        a1 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
        if (a1)
        {
          *buf = 134217984;
          v10 = v2;
          _os_log_error_impl(&dword_2998F1000, v6, OS_LOG_TYPE_ERROR, "Unable to dispatch session client's handler [ADDR=%p]", buf, 0xCu);
        }
      }

      v2 = *v2;
    }

    while (v2);
  }
}

void ___spd_xpc_cleanup_locked_block_invoke(uint64_t result, uint64_t a2)
{
  if (_s_spd_notification_client_sessions)
  {
    v2 = _spd_os_log(result, a2);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_2998F1000, v2, OS_LOG_TYPE_INFO, "Old connection went away. Registering again with spd", v6, 2u);
    }

    v3 = _spd_helper_send_async(10, 0, 0xFFFFFFFFLL);
    if (v3)
    {
      v5 = _spd_os_log(v3, v4);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        ___spd_xpc_cleanup_locked_block_invoke_cold_1();
      }
    }
  }
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 2u);
}

_BYTE *OUTLINED_FUNCTION_2(_BYTE *result, _BYTE *a2)
{
  *result = 0;
  *a2 = 0;
  return result;
}

void OUTLINED_FUNCTION_3(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, a5, 2u);
}

uint64_t spd_client_session_create(void *a1, uint64_t a2)
{
  _s_pub_session = spd_client_session_queue(a1, a2);
  if (!a1)
  {
    return 4;
  }

  v3 = malloc_type_calloc(1uLL, 0x28uLL, 0xA004015616432uLL);
  *a1 = v3;
  if (v3)
  {
    return 0;
  }

  else
  {
    return 6;
  }
}

uint64_t spd_client_session_destroy(uint64_t a1)
{
  if (!a1)
  {
    return 4;
  }

  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = __spd_client_session_destroy_block_invoke;
  block[3] = &__block_descriptor_tmp_1;
  block[4] = a1;
  dispatch_async(_s_pub_session, block);
  return 0;
}

void __spd_client_session_destroy_block_invoke(uint64_t a1, uint64_t a2)
{
  if (spd_deregister_for_notifications(*(a1 + 32), a2))
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      if (*(v3 + 32))
      {
        v4 = *(v3 + 16);
        if (v4)
        {
          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 0x40000000;
          block[2] = __spd_client_session_destroy_block_invoke_2;
          block[3] = &__block_descriptor_tmp_1;
          block[4] = v3;
          dispatch_async(v4, block);
        }
      }
    }
  }
}

uint64_t spd_client_session_set_callbacks(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = 4;
  if (a1 && a2)
  {
    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 0x40000000;
    aBlock[2] = __spd_client_session_set_callbacks_block_invoke;
    aBlock[3] = &__block_descriptor_tmp_3_0;
    aBlock[4] = a2;
    aBlock[5] = a1;
    aBlock[6] = a4;
    *(a1 + 24) = _Block_copy(aBlock);
    if (a3)
    {
      v9[0] = MEMORY[0x29EDCA5F8];
      v9[1] = 0x40000000;
      v9[2] = __spd_client_session_set_callbacks_block_invoke_2;
      v9[3] = &__block_descriptor_tmp_4_0;
      v9[4] = a3;
      v9[5] = a1;
      v9[6] = a4;
      v8 = _Block_copy(v9);
      result = 0;
      *(a1 + 32) = v8;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t spd_client_session_set_dispatch_queue(uint64_t a1, uint64_t a2)
{
  v2 = 4;
  if (a1 && a2)
  {
    if (*(a1 + 24))
    {
      *(a1 + 16) = a2;
      block[0] = MEMORY[0x29EDCA5F8];
      block[1] = 0x40000000;
      block[2] = __spd_client_session_set_dispatch_queue_block_invoke;
      block[3] = &__block_descriptor_tmp_6;
      block[4] = a1;
      dispatch_async(_s_pub_session, block);
      return 0;
    }

    else
    {
      return 29;
    }
  }

  return v2;
}

void __spd_client_session_set_dispatch_queue_block_invoke(uint64_t a1)
{
  if (spd_register_for_notifications(*(a1 + 32)))
  {
    v2 = *(a1 + 32);
    if (*(v2 + 32))
    {
      v3 = *(v2 + 16);
      block[0] = MEMORY[0x29EDCA5F8];
      block[1] = 0x40000000;
      block[2] = __spd_client_session_set_dispatch_queue_block_invoke_2;
      block[3] = &__block_descriptor_tmp_5_0;
      block[4] = v2;
      dispatch_async(v3, block);
    }
  }
}

uint64_t spd_client_create(void *a1)
{
  if (!a1)
  {
    return 4;
  }

  v2 = malloc_type_calloc(1uLL, 0x14uLL, 0x1000040A86A77D5uLL);
  *a1 = v2;
  if (!v2)
  {
    return 6;
  }

  v3 = v2;
  result = 0;
  *v3 = -1;
  return result;
}

uint64_t spd_client_destroy(void *a1)
{
  if (!a1)
  {
    return 4;
  }

  free(a1);
  return 0;
}

int64_t spd_client_checkin_socket(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 4;
  }

  *a1 = a2;
  return spd_checkin_socket(a2, (a1 + 4));
}

uint64_t spd_client_checkout_socket(uint64_t a1)
{
  if (!a1 || uuid_is_null((a1 + 4)))
  {
    return 4;
  }

  return spd_checkout_socket((a1 + 4));
}

uint64_t spd_client_start_monitoring_socket(uint64_t a1)
{
  if (!a1 || uuid_is_null((a1 + 4)))
  {
    return 4;
  }

  return spd_start_monitoring_socket((a1 + 4));
}

uint64_t spd_client_stop_monitoring_socket(uint64_t a1)
{
  if (!a1 || uuid_is_null((a1 + 4)))
  {
    return 4;
  }

  return spd_stop_monitoring_socket((a1 + 4));
}

void ___spd_helper_send_async_block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v19 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 48);
  v3 = *(a1 + 64);
  v4 = *(a1 + 68);
  v5 = 136316674;
  v6 = "_spd_helper_send_async_block_invoke";
  v7 = 1024;
  v8 = 415;
  v9 = 2048;
  v10 = v2;
  v11 = 1024;
  v12 = v3;
  v13 = 1040;
  v14 = 16;
  v15 = 2096;
  v16 = a1 + 56;
  v17 = 1024;
  v18 = v4;
  _os_log_debug_impl(&dword_2998F1000, a2, OS_LOG_TYPE_DEBUG, "%s:%d sent type: %llu, sfd: %d, %{uuid_t}.16P, pid: %u", &v5, 0x38u);
}

void ___spd_xpc_init_locked_block_invoke_cold_1()
{
  v3 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_4();
  v2 = 163;
  _os_log_debug_impl(&dword_2998F1000, v0, OS_LOG_TYPE_DEBUG, "%s:%d calling xpc_set_event_stream_handler", v1, 0x12u);
}

void spd_xpc_event_stream_handler_block_invoke_cold_1()
{
  v3 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_4();
  v2 = 80;
  _os_log_debug_impl(&dword_2998F1000, v0, OS_LOG_TYPE_DEBUG, "%s:%d spd_xpc_event_stream_handler", v1, 0x12u);
}

void spd_xpc_event_stream_handler_block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x29EDCA608];
  v2 = 134217984;
  v3 = a1;
  _os_log_error_impl(&dword_2998F1000, a2, OS_LOG_TYPE_ERROR, "unknown msg type %lld", &v2, 0xCu);
}