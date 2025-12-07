void __xpc_remote_channel_arm_read_block_invoke(uint64_t a1, void *a2, void *a3, char a4, void *a5)
{
  v48 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a3;
  v11 = a5;
  v12 = *(a1 + 32);
  v13 = v9;
  v14 = v11;
  v15 = v14;
  if (!v14)
  {
    if (!v13)
    {
      if ((a4 & 1) == 0)
      {
        v14 = _os_assumes_log();
      }

      v27 = _log_0(v14);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        *&buf[4] = v12;
        _os_log_impl(&dword_23039D000, v27, OS_LOG_TYPE_INFO, "[%p] Header read returned without data, disconnecting", buf, 0xCu);
      }

      v18 = v12;
      error_code = 57;
      goto LABEL_5;
    }

    size_ptr = 0;
    buffer_ptr = 0;
    v19 = dispatch_data_create_map(v13, &buffer_ptr, &size_ptr);
    v20 = _log_0(v19);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      __xpc_remote_channel_arm_read_block_invoke_cold_1();
    }

    if (size_ptr == 24 && *buffer_ptr == 699403154)
    {
      if (*(buffer_ptr + 4) == *(v12 + 73))
      {
        v22 = *(buffer_ptr + 1);
        if (!(v22 >> 27))
        {
          v33 = *(buffer_ptr + 2);
          v34 = *(buffer_ptr + 5);
          v35 = *(buffer_ptr + 3);
          v36 = v34 | (v35 << 16);
          if (v22)
          {
            if (v12[2])
            {
              v37 = _log_0(v21);
              if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
              {
                __xpc_remote_channel_arm_read_block_invoke_cold_2();
              }

              v38 = v12[2];
              *buf = MEMORY[0x277D85DD0];
              *&buf[8] = 3221225472;
              *&buf[16] = ___xpc_remote_channel_header_handler_block_invoke;
              *&buf[24] = &unk_2788BF498;
              v44 = v12;
              v45 = v33;
              v46 = v36;
              v47 = v22;
              nw_connection_receive(v38, v22, v22, buf);
            }

            else
            {
              if (*(v12 + 10) <= 2u)
              {
                __xpc_remote_channel_arm_read_block_invoke_cold_4(v40, buf);
              }

              v39 = _log_0(v21);
              if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
              {
                __xpc_remote_channel_arm_read_block_invoke_cold_3();
              }
            }
          }

          else
          {
            _xpc_remote_channel_deliver_message(v12, v33, v34 | (v35 << 16), 0);
          }

          goto LABEL_19;
        }

        v23 = _log_0(v21);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          __xpc_remote_channel_arm_read_block_invoke_cold_5();
        }

        v24 = v12;
        v25 = 40;
LABEL_18:
        xpc_remote_channel_cancel(v24, v25);
LABEL_19:

        goto LABEL_20;
      }

      v26 = _log_0(v21);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v28 = *(buffer_ptr + 4);
        v29 = *(v12 + 73);
        *buf = 134218496;
        *&buf[4] = v12;
        *&buf[12] = 1024;
        *&buf[14] = v28;
        *&buf[18] = 1024;
        *&buf[20] = v29;
        v30 = "[%p] Invalid wire version: %d != %d";
        v31 = v26;
        v32 = 24;
LABEL_34:
        _os_log_error_impl(&dword_23039D000, v31, OS_LOG_TYPE_ERROR, v30, buf, v32);
      }
    }

    else
    {
      v26 = _log_0(v21);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218498;
        *&buf[4] = v12;
        *&buf[12] = 1040;
        *&buf[14] = size_ptr;
        *&buf[18] = 2096;
        *&buf[20] = buffer_ptr;
        v30 = "[%p] Invalid header received: %.*P";
        v31 = v26;
        v32 = 28;
        goto LABEL_34;
      }
    }

    v24 = v12;
    v25 = 22;
    goto LABEL_18;
  }

  v16 = _log_0(v14);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    *buf = 134218242;
    *&buf[4] = v12;
    *&buf[12] = 2112;
    *&buf[14] = v15;
    _os_log_impl(&dword_23039D000, v16, OS_LOG_TYPE_INFO, "[%p] Header read returned with error=%@, disconnecting", buf, 0x16u);
  }

  error_code = nw_error_get_error_code(v15);
  v18 = v12;
LABEL_5:
  xpc_remote_channel_cancel(v18, error_code);
LABEL_20:
}

void ___xpc_remote_channel_header_handler_block_invoke(uint64_t a1, void *a2, void *a3, char a4, void *a5)
{
  v32 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a3;
  v11 = a5;
  v12 = *(a1 + 56);
  v13 = *(a1 + 40);
  v14 = *(a1 + 48);
  v15 = *(a1 + 32);
  v16 = v9;
  v17 = v11;
  v18 = v17;
  if (v17)
  {
    v19 = _log_0(v17);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      ___xpc_remote_channel_header_handler_block_invoke_cold_1();
    }

    error_code = nw_error_get_error_code(v18);
    v21 = v15;
LABEL_5:
    xpc_remote_channel_cancel(v21, error_code);
    goto LABEL_6;
  }

  if (!v16)
  {
    if ((a4 & 1) == 0)
    {
      v17 = _os_assumes_log();
    }

    v25 = _log_0(v17);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      ___xpc_remote_channel_header_handler_block_invoke_cold_3();
    }

    v21 = v15;
    error_code = 57;
    goto LABEL_5;
  }

  size = dispatch_data_get_size(v16);
  v23 = _log_0(size);
  v24 = v23;
  if (size != v12)
  {
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v26 = 134218496;
      v27 = v15;
      v28 = 2048;
      v29 = v12;
      v30 = 2048;
      v31 = dispatch_data_get_size(v16);
      _os_log_error_impl(&dword_23039D000, v24, OS_LOG_TYPE_ERROR, "[%p] Body read returned with short data (message_size=%llu, data_size=%zu), disconnecting", &v26, 0x20u);
    }

    v21 = v15;
    error_code = 22;
    goto LABEL_5;
  }

  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    ___xpc_remote_channel_header_handler_block_invoke_cold_2();
  }

  _xpc_remote_channel_deliver_message(v15, v13, v14, v16);
LABEL_6:
}

id _log(uint64_t a1)
{
  if (_log_onceToken != -1)
  {
    _log_cold_1();
  }

  v2 = _log_logger;

  return v2;
}

id _log_0(uint64_t a1)
{
  if (_log_onceToken_0 != -1)
  {
    _log_cold_1_0();
  }

  v2 = _log_logger_0;

  return v2;
}

void _xpc_remote_channel_deliver_message(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a1;
  v8 = v7[1];
  v9 = a4;
  dispatch_assert_queue_V2(v8);
  v11 = _log_0(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    _xpc_remote_channel_deliver_message_cold_1(a2, a3, v7, v11);
  }

  (*(v7[4] + 16))();
}

void _xpc_remote_connection_handle_read(void *a1, void *a2, objc_class *a3, uint64_t a4, void *a5)
{
  v91 = *MEMORY[0x277D85DE8];
  v9 = a1;
  v10 = a2;
  v11 = a5;
  v12 = v11;
  if (a4 == 2)
  {
    v15 = _log(v11);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      *&buf[4] = v9;
      _os_log_impl(&dword_23039D000, v15, OS_LOG_TYPE_INFO, "[%p] Received a PING", buf, 0xCu);
    }

    goto LABEL_8;
  }

  if (!a4)
  {
    v13 = [v9 state];
    if (v13 >= 5)
    {
      v14 = _log(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        *&buf[4] = v9;
        _os_log_impl(&dword_23039D000, v14, OS_LOG_TYPE_INFO, "[%p] Ignoring HELO received after disconnect", buf, 0xCu);
      }

      goto LABEL_100;
    }

    if (v9[5].isa != v10)
    {
      if (v9[7].isa != v10)
      {
        v16 = _log(v13);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          _xpc_remote_connection_handle_read_cold_1();
        }

LABEL_62:

        v36 = v9;
LABEL_63:
        _xpc_remote_connection_disconnect(v36, 53);
        goto LABEL_101;
      }

      if (LOBYTE(v9[6].isa) == 1)
      {
        v16 = _log(v13);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          _xpc_remote_connection_handle_read_cold_2();
        }

        goto LABEL_62;
      }

      LOBYTE(v9[6].isa) = 1;
      v22 = _log(v13);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        *&buf[4] = v9;
        _os_log_impl(&dword_23039D000, v22, OS_LOG_TYPE_INFO, "[%p] Received reply channel HELO", buf, 0xCu);
      }

LABEL_54:

      v15 = v9;
      v34 = [v15 state];
      if (v34 != 3)
      {
        _xpc_remote_connection_handle_read_cold_6(&size_ptr, buf);
      }

      if (v15[4].isa)
      {
        if (v15[6].isa)
        {
          [v15 setState:4];
          _xpc_remote_connection_wakeup(v15);
LABEL_8:

LABEL_9:
          xpc_remote_channel_arm_read(v10);
          goto LABEL_101;
        }

        v35 = _log(v34);
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
        {
          _xpc_remote_connection_handle_read_cold_8();
        }
      }

      else
      {
        v35 = _log(v34);
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
        {
          _xpc_remote_connection_handle_read_cold_7();
        }
      }

      goto LABEL_8;
    }

    if (LOBYTE(v9[4].isa) == 1)
    {
      v16 = _log(v13);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        _xpc_remote_connection_handle_read_cold_9();
      }

      goto LABEL_62;
    }

    LOBYTE(v9[4].isa) = 1;
    v20 = _log(v13);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      *&buf[4] = v9;
      _os_log_impl(&dword_23039D000, v20, OS_LOG_TYPE_INFO, "[%p] Received root channel HELO", buf, 0xCu);
    }

    v21 = v9;
    v22 = v21;
    if (v12 != MEMORY[0x277D85CC8] && v12)
    {
      size_ptr = 0;
      *buf = 0;
      v23 = dispatch_data_create_map(v12, buf, &size_ptr);
      v24 = xpc_create_from_serialization();
      v25 = v24;
      if (v24)
      {
        v26 = MEMORY[0x231914DB0](v24);
        v27 = MEMORY[0x277D86468];

        if (v26 == v27)
        {
          v28 = MEMORY[0x231914CE0](v25);
          v29 = _log(v28);
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
          {
            _xpc_remote_connection_handle_read_cold_3();
          }

          free(v28);
          int64 = xpc_dictionary_get_int64(v25, "ServiceVersion");
          if (int64)
          {
            v31 = int64;
            v32 = _log(int64);
            if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
            {
              *buf = 134218240;
              *&buf[4] = v22;
              v87 = 2048;
              v88 = v31;
              _os_log_impl(&dword_23039D000, v32, OS_LOG_TYPE_INFO, "[%p] HELO message specified ServiceVersion %lld", buf, 0x16u);
            }

            v22[21].isa = v31;
          }

LABEL_53:

          goto LABEL_54;
        }
      }

      else
      {
      }

      v57 = _log(v56);
      if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
      {
        _xpc_remote_connection_handle_read_cold_4();
      }

      v36 = v22;
      goto LABEL_63;
    }

    v25 = _log(v21);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      _xpc_remote_connection_handle_read_cold_5();
    }

    goto LABEL_53;
  }

  if (a4 != 1 || !a3)
  {
    goto LABEL_9;
  }

  if ((~a4 & 0x30000) == 0)
  {
    v16 = _log(v11);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      _xpc_remote_connection_handle_read_cold_15();
    }

    goto LABEL_62;
  }

  if ((a4 & 0x20000) != 0)
  {
    if (v9[7].isa != v10 && (v9[9].isa & 4) != 0)
    {
      v16 = _log(v11);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        _xpc_remote_connection_handle_read_cold_10();
      }

      goto LABEL_62;
    }

    if (!v11)
    {
      v14 = MEMORY[0x277D863F0];
      v19 = MEMORY[0x277D863F0];
LABEL_65:
      v37 = _log(v19);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
      {
        v60 = "(wanting reply)";
        *buf = 134218498;
        *&buf[4] = v9;
        if ((a4 & 0x10000) == 0)
        {
          v60 = &unk_2303AECDA;
        }

        v87 = 2048;
        v88 = a3;
        v89 = 2082;
        v90 = v60;
        _os_log_debug_impl(&dword_23039D000, v37, OS_LOG_TYPE_DEBUG, "[%p] Message %llx received %{public}s, dispatching handler block", buf, 0x20u);
      }

      if ((a4 & 0x20000) == 0)
      {
        v38 = [v9 event_handler];
        v39 = [v9 target_queue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = ___xpc_remote_connection_handle_read_block_invoke_2;
        block[3] = &unk_2788BF220;
        v71 = v9;
        v72 = v14;
        v74 = v38;
        v75 = a3;
        v76 = a4;
        v73 = v10;
        v14 = v14;
        v40 = v38;
        dispatch_async(v39, block);

        v41 = v71;
LABEL_99:

LABEL_100:
        goto LABEL_101;
      }

      v42 = v9;
      v43 = v42 + 16;
      v44 = v42[16];
      if (!v44)
      {
LABEL_72:

        v48 = _log(v47);
        if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
        {
          _xpc_remote_connection_handle_read_cold_12();
        }

        _xpc_remote_connection_disconnect(v42, 53);
        goto LABEL_100;
      }

      v45 = v44;
      while (v45[1] != a3)
      {
        v46 = v45[4];

        v45 = v46;
        if (!v46)
        {
          goto LABEL_72;
        }
      }

      v49 = v42;
      v50 = v45;
      v51 = v42[16];
      v52 = v51;
      v53 = v52;
      if (v51 == v50)
      {
        objc_storeStrong(v43, v52[4]);
        v58 = v53[4];
        if (!v58)
        {
          v59 = v49[17];
          v49[17] = 0;

          v58 = v53[4];
        }

        v53[4] = 0;
      }

      else
      {
        if (!v52)
        {
LABEL_98:

          v68 = v50[3];
          v77[0] = MEMORY[0x277D85DD0];
          v77[1] = 3221225472;
          v77[2] = ___xpc_remote_connection_handle_read_block_invoke_247;
          v77[3] = &unk_2788BEEC8;
          v78 = v50;
          v79 = v14;
          v40 = v50;
          dispatch_async(v68, v77);
          xpc_remote_channel_arm_read(v10);

          v41 = v78;
          goto LABEL_99;
        }

        while (1)
        {
          v54 = v53[4];
          if (v54 == v50)
          {
            break;
          }

          v55 = v54;

          v53 = v55;
          if (!v55)
          {
            goto LABEL_98;
          }
        }

        v58 = v53;
        v61 = v53[4];
        if (!v61)
        {
          _xpc_remote_connection_handle_read_cold_11(&size_ptr, buf);
        }

        v62 = v61;

        v63 = v62[4];
        v64 = v63;
        v65 = v63;
        v66 = v64;
        objc_storeStrong(v53 + 4, v65);
        if (!v66)
        {
          objc_storeStrong(v49 + 17, v53);
        }

        v67 = v62[4];
        v62[4] = 0;

        v53 = v58;
      }

      goto LABEL_98;
    }
  }

  else if (!v11)
  {
    v16 = _log(0);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      _xpc_remote_connection_handle_read_cold_14();
    }

    goto LABEL_62;
  }

  size_ptr = 0;
  *buf = 0;
  location = dispatch_data_create_map(v11, buf, &size_ptr);
  MEMORY[0x231914E00]();
  v80 = MEMORY[0x277D85DD0];
  v81 = 3221225472;
  v82 = ___xpc_remote_connection_handle_read_block_invoke;
  v83 = &unk_2788BF1D0;
  v17 = v9;
  v84 = v17;
  v18 = xpc_receive_remote_msg();
  if (v18)
  {
    v14 = v18;

    goto LABEL_65;
  }

  v33 = _log(0);
  if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
  {
    _xpc_remote_connection_handle_read_cold_13();
  }

  _xpc_remote_connection_disconnect(v17, 53);
LABEL_101:
}

void ___xpc_remote_connection_handle_read_block_invoke_2(uint64_t a1)
{
  if ([*(a1 + 32) state] <= 5)
  {
    (*(*(a1 + 56) + 16))();
  }

  v2 = [*(a1 + 32) internal_queue];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = ___xpc_remote_connection_handle_read_block_invoke_3;
  v3[3] = &unk_2788BF1F8;
  v4 = *(a1 + 32);
  v6 = *(a1 + 64);
  v5 = *(a1 + 48);
  dispatch_async(v2, v3);
}

void xpc_remote_connection_send_reply(void *a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v1 = xpc_dictionary_get_remote_connection(v3);
  if (!v1)
  {
    xpc_remote_connection_send_reply_cold_1(&v4, v5);
  }

  v2 = v1;

  xpc_remote_connection_send_message(v2, v3);
}

void xpc_remote_connection_send_message(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (MEMORY[0x231914DB0]() != MEMORY[0x277D86468])
  {
    xpc_remote_connection_send_message_cold_1();
  }

  v5 = [v3 internal_queue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __xpc_remote_connection_send_message_block_invoke;
  v8[3] = &unk_2788BEEC8;
  v9 = v3;
  v10 = v4;
  v6 = v4;
  v7 = v3;
  dispatch_sync(v5, v8);
}

void __xpc_remote_connection_send_message_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  if ([*(a1 + 32) type] == 2)
  {
    __xpc_remote_connection_send_message_block_invoke_cold_3(&v7, v8);
  }

  if ([*v2 state] <= 5)
  {
    reply_msg_id = _xpc_dictionary_get_reply_msg_id();
    if (!reply_msg_id || [*v2 state] == 4)
    {
      v4 = _xpc_remote_message_create(*(a1 + 32), *(a1 + 40));
      v5 = _log(v4);
      v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);
      if (reply_msg_id)
      {
        if (v6)
        {
          __xpc_remote_connection_send_message_block_invoke_cold_1();
        }

        _xpc_remote_connection_send_reply_message(*v2, v4);
      }

      else
      {
        if (v6)
        {
          __xpc_remote_connection_send_message_block_invoke_cold_2();
        }

        _xpc_remote_connection_enqueue_message(*v2, v4);
      }
    }
  }
}

OS_xpc_remote_message *_xpc_remote_message_create(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = objc_opt_new();
  reply_msg_id = _xpc_dictionary_extract_reply_msg_id();
  v5[1] = reply_msg_id;
  if (reply_msg_id)
  {
    v7 = xpc_dictionary_get_remote_connection(v4);

    if (v7 != v3)
    {
      _xpc_remote_message_create_cold_1();
    }
  }

  else
  {
    v8 = v3[18];
    v5[1] = v8;
    v3[18] = v8 + 2;
  }

  v20 = 0;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = ___xpc_remote_message_create_block_invoke;
  v17[3] = &unk_2788BF360;
  v9 = v5;
  v18 = v9;
  v10 = v3;
  v19 = v10;
  v11 = MEMORY[0x231914DE0](v4, &v20, v17);
  if (!v11 || !v20)
  {
    _xpc_remote_message_create_cold_2();
  }

  v12 = dispatch_data_create(v11, v20, 0, *MEMORY[0x277D85CB0]);
  v13 = v9[3];
  v9[3] = v12;

  v14 = v19;
  v15 = v9;

  return v15;
}

void _xpc_remote_connection_send_reply_message(void *a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  if (!v4[1] || (v4[1] & 1) != v3[65])
  {
    v15 = 0;
    memset(v20, 0, sizeof(v20));
    v9 = MEMORY[0x277D86220];
    v10 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    v11 = v4[1];
    if (v10)
    {
      v12 = 3;
    }

    else
    {
      v12 = 2;
    }

    v16 = 134218240;
    v17 = v3;
    v18 = 2048;
    v19 = v11;
    _os_log_send_and_compose_impl(v12, &v15, v20, 80, &dword_23039D000, v9, 16, "assertion failure: [%p] Attempted to send non-reply msg %llu on the reply channel", &v16, 22);
    _os_crash_msg();
    __break(1u);
LABEL_9:
    _xpc_remote_connection_send_reply_message_cold_1(&v16, v20);
  }

  if ([v3 state] != 4)
  {
    goto LABEL_9;
  }

  v5 = v4[1];
  _xpc_remote_connection_send_ool_message_content(v3, v4);
  v6 = *(v3 + 7);
  v7 = v4[3];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = ___xpc_remote_connection_send_reply_message_block_invoke;
  v13[3] = &unk_2788BF158;
  v14 = v3;
  v8 = v3;
  xpc_remote_channel_send(v6, v5, 131073, v7, v13);
}

void _xpc_remote_connection_send_ool_message_content(void *a1, void *a2)
{
  v71 = *MEMORY[0x277D85DE8];
  v38 = a1;
  v34 = a2;
  if (v34[8] >= 1)
  {
    v3 = 0;
    v35 = v34 + 10;
    do
    {
      v4 = *&v35[2 * v3];
      if (MEMORY[0x231914DB0]() != MEMORY[0x277D86490])
      {
        _xpc_remote_connection_send_ool_message_content_cold_1();
      }

      v5 = v38;
      v6 = v4;
      transfer_id = xpc_file_transfer_get_transfer_id();
      v8 = xpc_file_transfer_copy_io();
      v39[0] = MEMORY[0x277D85DD0];
      v39[1] = 3221225472;
      v39[2] = ___send_file_transfer_block_invoke;
      v39[3] = &unk_2788BF270;
      v36 = v6;
      v40 = v36;
      v41 = v5;
      v9 = v41;
      v10 = v8;
      v37 = v39;
      v11 = [v9 internal_queue];
      dispatch_assert_queue_V2(v11);

      v12 = [v9 state];
      if (v12 != 4)
      {
        _xpc_remote_connection_send_ool_message_content_cold_2(&v55, buf);
      }

      v13 = _log(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218496;
        *&buf[4] = v38;
        *&buf[12] = 2048;
        *&buf[14] = transfer_id;
        *&buf[22] = 1024;
        LODWORD(v68) = 1;
        _os_log_impl(&dword_23039D000, v13, OS_LOG_TYPE_DEFAULT, "[%p] Opening stream_id %lld with direction %x", buf, 0x1Cu);
      }

      v14 = _xpc_remote_connection_create_sub_nw_connection(v9);
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v68 = __Block_byref_object_copy__250;
      v69 = __Block_byref_object_dispose__251;
      v70 = MEMORY[0x231914A00](v37);
      v55 = 0;
      v56 = &v55;
      v57 = 0x3032000000;
      v58 = __Block_byref_object_copy_;
      v59 = __Block_byref_object_dispose_;
      v60 = 0;
      v49[0] = MEMORY[0x277D85DD0];
      v49[1] = 3221225472;
      v49[2] = ___xpc_remote_connection_open_stream_block_invoke;
      v49[3] = &unk_2788BF298;
      v51 = &v55;
      v53 = transfer_id;
      v54 = 1;
      v15 = v9;
      v50 = v15;
      v52 = buf;
      v16 = MEMORY[0x231914A00](v49);
      v42[0] = MEMORY[0x277D85DD0];
      v42[1] = 3221225472;
      v42[2] = ___xpc_remote_connection_open_stream_block_invoke_252;
      v42[3] = &unk_2788BF2C0;
      v17 = v15;
      v47 = transfer_id;
      v43 = v17;
      v45 = &v55;
      v48 = 1;
      v18 = v10;
      v44 = v18;
      v46 = buf;
      v19 = MEMORY[0x231914A00](v42);
      v20 = [v17 internal_queue];
      v21 = xpc_remote_channel_create(v14, v20, *(v38 + 66), 0, v16, v19);
      v22 = v56[5];
      v56[5] = v21;

      v23 = objc_opt_new();
      objc_storeStrong(v23 + 1, v56[5]);
      v24 = v17;
      v25 = v23;
      v26 = v25;
      if (*(v38 + 14))
      {
        v27 = *(v38 + 15);
        objc_storeStrong(v27 + 2, v23);
      }

      else
      {
        v28 = v25;
        v27 = *(v38 + 14);
        *(v38 + 14) = v28;
      }

      v29 = *(v38 + 15);
      *(v38 + 15) = v26;

      v31 = _log(v30);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        v32 = v56[5];
        *v61 = 134218496;
        v62 = v38;
        v63 = 2048;
        v64 = transfer_id;
        v65 = 2048;
        v66 = v32;
        _os_log_impl(&dword_23039D000, v31, OS_LOG_TYPE_DEFAULT, "[%p] Opened stream %lld (%p)", v61, 0x20u);
      }

      _Block_object_dispose(&v55, 8);
      _Block_object_dispose(buf, 8);

      v33 = *&v35[2 * v3];
      *&v35[2 * v3] = 0;

      ++v3;
    }

    while (v3 < v34[8]);
  }
}

void sub_23039FD48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, ...)
{
  va_start(va, a40);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v40 - 208), 8);
  _Unwind_Resume(a1);
}

void xpc_remote_channel_send(void *a1, uint64_t a2, int a3, void *a4, void *a5)
{
  v35 = *MEMORY[0x277D85DE8];
  v9 = a1;
  v10 = a4;
  v11 = a5;
  dispatch_assert_queue_V2(v9[1]);
  if (v11 && *(v9 + 10) >= 3u)
  {
    v11[2](v11, 89);
  }

  if (!v10)
  {
    v10 = MEMORY[0x277D85CC8];
    v12 = MEMORY[0x277D85CC8];
  }

  LODWORD(buffer) = 699403154;
  BYTE4(buffer) = *(v9 + 73);
  BYTE5(buffer) = a3;
  WORD3(buffer) = HIWORD(a3);
  *(&buffer + 1) = dispatch_data_get_size(v10);
  v28 = a2;
  v13 = dispatch_data_create(&buffer, 0x18uLL, 0, 0);
  concat = dispatch_data_create_concat(v13, v10);
  v15 = _log_0(concat);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v20 = v28;
    size = dispatch_data_get_size(v10);
    *buf = 134218496;
    v30 = v9;
    v31 = 2048;
    v32 = v20;
    v33 = 2048;
    v34 = size;
    _os_log_debug_impl(&dword_23039D000, v15, OS_LOG_TYPE_DEBUG, "[%p] Starting write of msg_id %llu (%zd bytes).", buf, 0x20u);
  }

  v16 = v9[2];
  v17 = *MEMORY[0x277CD9218];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __xpc_remote_channel_send_block_invoke;
  v22[3] = &unk_2788BF420;
  v25 = buffer;
  v26 = v28;
  v23 = v9;
  v24 = v11;
  v18 = v11;
  v19 = v9;
  nw_connection_send(v16, concat, v17, 1, v22);
}

void ___xpc_remote_connection_handle_read_block_invoke_3(uint64_t a1)
{
  v2 = _log(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    ___xpc_remote_connection_handle_read_block_invoke_3_cold_1();
  }

  xpc_remote_channel_arm_read(*(a1 + 40));
}

void xpc_remote_channel_arm_read(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = v1;
  if (!*(v1 + 12))
  {
    if (v1[2])
    {
      v3 = _log_0(v1);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
      {
        xpc_remote_channel_arm_read_cold_1();
      }

      v4 = v2[2];
      completion[0] = MEMORY[0x277D85DD0];
      completion[1] = 3221225472;
      completion[2] = __xpc_remote_channel_arm_read_block_invoke;
      completion[3] = &unk_2788BF3F8;
      v7 = v2;
      nw_connection_receive(v4, 0x18u, 0x18u, completion);
      v5 = v7;
    }

    else
    {
      if (*(v1 + 10) <= 2u)
      {
        xpc_remote_channel_arm_read_cold_3(&v8, v9);
      }

      v5 = _log_0(v1);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        xpc_remote_channel_arm_read_cold_2();
      }
    }
  }
}

void __xpc_remote_channel_send_block_invoke(void *a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _log_0(v3);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v6 = a1[4];
      v7 = a1[8];
      v10 = 134218498;
      v11 = v6;
      v12 = 2048;
      v13 = v7;
      v14 = 2112;
      v15 = v3;
      _os_log_impl(&dword_23039D000, v5, OS_LOG_TYPE_INFO, "[%p] Send of msg_id %llu complete with error=%@.", &v10, 0x20u);
    }

    error_code = nw_error_get_error_code(v3);
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __xpc_remote_channel_send_block_invoke_cold_1();
    }

    error_code = 0;
  }

  v9 = a1[5];
  if (v9)
  {
    (*(v9 + 16))(v9, error_code);
  }
}

void ___xpc_remote_connection_send_reply_message_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = _log(a1);
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      ___xpc_remote_connection_send_reply_message_block_invoke_cold_1();
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    ___xpc_remote_connection_send_reply_message_block_invoke_cold_2();
  }
}

void __xpc_remote_channel_create_block_invoke_27(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = _log_0(a1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = "not viable";
    v6 = *(a1 + 32);
    if (a2)
    {
      v5 = "viable";
    }

    *buf = 134218242;
    v11 = v6;
    v12 = 2080;
    v13 = v5;
    _os_log_impl(&dword_23039D000, v4, OS_LOG_TYPE_INFO, "[%p] connection viability changed: %s", buf, 0x16u);
  }

  if (a2)
  {
    v7 = *(a1 + 32);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __xpc_remote_channel_create_block_invoke_30;
    v8[3] = &unk_2788BF158;
    v9 = v7;
    xpc_remote_channel_send(v9, 0, 2, MEMORY[0x277D85CC8], v8);
  }
}

void xpc_remote_connection_cancel(void *a1)
{
  v1 = a1;
  v2 = [v1 internal_queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __xpc_remote_connection_cancel_block_invoke;
  block[3] = &unk_2788BEEA0;
  v5 = v1;
  v3 = v1;
  dispatch_sync(v2, block);
}

void _xpc_remote_connection_cancel(void *a1)
{
  v2 = a1;
  v1 = [v2 internal_queue];
  dispatch_assert_queue_V2(v1);

  __xpc_remote_connection_teardown(v2, 0, 89);
}

void __xpc_remote_connection_teardown(void *a1, int a2, uint64_t a3)
{
  v43 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = [v5 internal_queue];
  dispatch_assert_queue_V2(v6);

  v7 = [v5 state];
  if (v7 != 7)
  {
    v9 = [v5 state];
    if (a2)
    {
      if (v9 < 5)
      {
        v10 = _log(v9);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v11 = state2str[[v5 state]];
          *buf = 134218498;
          v38 = v5;
          v39 = 2082;
          v40 = v11;
          v41 = 1024;
          v42 = a3;
          _os_log_impl(&dword_23039D000, v10, OS_LOG_TYPE_DEFAULT, "[%p] Connection Disconnected (state: %{public}s, error %{errno}d)", buf, 0x1Cu);
        }

LABEL_20:

        *(v5 + 45) = a3;
        if ([v5 type])
        {
          v16 = a2 == 0;
        }

        else
        {
          v16 = 1;
        }

        if (v16)
        {
          v17 = 6;
        }

        else
        {
          v17 = 5;
        }

        [v5 setState:v17];
        v18 = *(v5 + 3);
        if (v18)
        {
          nw_listener_cancel(v18);
        }

        v19 = *(v5 + 5);
        if (v19)
        {
          xpc_remote_channel_cancel(v19, a3);
        }

        else if (![v5 type])
        {
          v20 = *(v5 + 48);
          if (v20 != -1)
          {
            if (close(v20) == -1)
            {
              _xpc_remote_connection_connect_complete_cold_5();
            }

            *(v5 + 48) = -1;
          }
        }

        v21 = *(v5 + 7);
        if (v21)
        {
          xpc_remote_channel_cancel(v21, a3);
        }

        v22 = v5;
        v23 = *(v22 + 12);
        if (v23)
        {
          v24 = 0;
          do
          {
            v25 = v23;
            objc_storeStrong(v22 + 12, v25[7]);
            v26 = v25[7];
            if (!v26)
            {
              v27 = *(v22 + 13);
              *(v22 + 13) = 0;

              v26 = v25[7];
            }

            v25[7] = 0;

            v28 = v25[5];
            if (v28)
            {
              v28[2](v28, a3);
            }

            v29 = v22;
            v23 = *(v22 + 12);
            v24 = v25;
          }

          while (v23);
        }

        else
        {
          v25 = 0;
        }

        v30 = *(v5 + 45);
        v31 = v22;
        v32 = v31[14];
        if (v32)
        {
          v33 = v32;
          do
          {
            v34 = _log(v32);
            if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
            {
              v36 = v33[1];
              *buf = 134218240;
              v38 = v31;
              v39 = 2048;
              v40 = v36;
              _os_log_debug_impl(&dword_23039D000, v34, OS_LOG_TYPE_DEBUG, "[%p] Canceling channel (%p)", buf, 0x16u);
            }

            xpc_remote_channel_cancel(v33[1], v30);
            v35 = v33[2];

            v33 = v35;
          }

          while (v35);
        }

        v14 = v31;
LABEL_52:
        __xpc_remote_connection_teardown_continue(v14);
        goto LABEL_53;
      }
    }

    else
    {
      if (v9 == 5)
      {
        v12 = _log([v5 setState:6]);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          *buf = 134217984;
          v38 = v5;
          _os_log_impl(&dword_23039D000, v12, OS_LOG_TYPE_INFO, "[%p] disconnect => cancel promotion", buf, 0xCu);
        }
      }

      v9 = [v5 state];
      if (v9 <= 4)
      {
        v10 = _log(v9);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v15 = state2str[[v5 state]];
          *buf = 134218242;
          v38 = v5;
          v39 = 2082;
          v40 = v15;
          _os_log_impl(&dword_23039D000, v10, OS_LOG_TYPE_DEFAULT, "[%p] Connection Canceled (state: %{public}s)", buf, 0x16u);
        }

        a3 = 89;
        goto LABEL_20;
      }
    }

    v13 = _log(v9);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v38 = v5;
      _os_log_impl(&dword_23039D000, v13, OS_LOG_TYPE_DEFAULT, "[%p] disconnect: already disconnecting", buf, 0xCu);
    }

    v14 = v5;
    goto LABEL_52;
  }

  v8 = _log(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v38 = v5;
    _os_log_impl(&dword_23039D000, v8, OS_LOG_TYPE_DEFAULT, "[%p] disconnect: already canceled", buf, 0xCu);
  }

LABEL_53:
}

void xpc_remote_channel_cancel(void *a1, unsigned int a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a1;
  dispatch_assert_queue_V2(v3[1]);
  v5 = *(v3 + 10);
  if (v5 != 4)
  {
    if (v5 <= 2)
    {
      v6 = _log_0(v4);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = state2str_0[*(v3 + 10)];
        v18 = 134218498;
        v19 = v3;
        v20 = 1024;
        v21 = a2;
        v22 = 2082;
        v23 = v7;
        _os_log_impl(&dword_23039D000, v6, OS_LOG_TYPE_INFO, "[%p] Canceling with error %d (from state %{public}s)", &v18, 0x1Cu);
      }

      *(v3 + 10) = 3;
      *(v3 + 11) = a2;
    }

    if (v3[2])
    {
      v8 = _log_0(v4);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        xpc_remote_channel_cancel_cold_1();
      }

      nw_connection_cancel(v3[2]);
    }

    else
    {
      v9 = v3[8];
      if (v9)
      {
        dispatch_io_close(v9, 0);
        v10 = v3[8];
        v3[8] = 0;

        v12 = _log_0(v11);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          xpc_remote_channel_cancel_cold_2();
        }
      }

      v13 = v3[7];
      v14 = _log_0(v9);
      v15 = v14;
      if (v13)
      {
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          xpc_remote_channel_cancel_cold_3();
        }

        dispatch_io_close(v3[7], 1uLL);
      }

      else
      {
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          v18 = 134217984;
          v19 = v3;
          _os_log_impl(&dword_23039D000, v15, OS_LOG_TYPE_INFO, "[%p] Cancelation complete", &v18, 0xCu);
        }

        *(v3 + 10) = 4;
        (v3[3][2].isa)();
        v16 = v3[3];
        v3[3] = 0;

        v17 = v3[4];
        v3[4] = 0;
      }
    }
  }
}

void __xpc_remote_connection_teardown_continue(void *a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [v1 internal_queue];
  dispatch_assert_queue_V2(v2);

  v3 = [v1 state];
  if (v3 != 5)
  {
    v3 = [v1 state];
    if (v3 != 6)
    {
      __xpc_remote_connection_teardown_continue_cold_1(&v20, buf);
    }
  }

  if (*(v1 + 5))
  {
    v4 = _log(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *&buf[4] = v1;
      v5 = "[%p] disconnect_continue: root_channel still present";
LABEL_15:
      _os_log_impl(&dword_23039D000, v4, OS_LOG_TYPE_DEFAULT, v5, buf, 0xCu);
    }
  }

  else if (*(v1 + 7))
  {
    v4 = _log(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *&buf[4] = v1;
      v5 = "[%p] disconnect_continue: reply_channel still present";
      goto LABEL_15;
    }
  }

  else if (*(v1 + 3))
  {
    v4 = _log(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *&buf[4] = v1;
      v5 = "[%p] disconnect_continue: root_listener still present";
      goto LABEL_15;
    }
  }

  else if (*(v1 + 14))
  {
    v4 = _log(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *&buf[4] = v1;
      v5 = "[%p] disconnect_continue: at least one stream channel still present";
      goto LABEL_15;
    }
  }

  else
  {
    v6 = [v1 event_handler];
    v7 = [v1 state];
    if (v7 == 5)
    {
      v8 = _log(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        *&buf[4] = v1;
        _os_log_impl(&dword_23039D000, v8, OS_LOG_TYPE_DEFAULT, "[%p] Disconnect complete, delivering XPC_ERROR_CONNECTION_INTERRUTPED", buf, 0xCu);
      }

      [v1 setState:1];
      v9 = MEMORY[0x277D863F0];
      v10 = MEMORY[0x277D863F0];
    }

    else
    {
      v11 = [v1 state];
      if (v11 != 6)
      {
        __xpc_remote_connection_teardown_continue_cold_2();
      }

      v12 = _log(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        *&buf[4] = v1;
        _os_log_impl(&dword_23039D000, v12, OS_LOG_TYPE_DEFAULT, "[%p] Cancel complete, delivering XPC_ERROR_CONNECTION_INVALID", buf, 0xCu);
      }

      [v1 setState:7];
      v9 = MEMORY[0x277D863F8];
      v13 = MEMORY[0x277D863F8];
      [v1 setEvent_handler:0];
    }

    _xpc_remote_connection_flush(v1, v9);
    if (*(v1 + 12))
    {
      __xpc_remote_connection_teardown_continue_cold_3(&v20, buf);
    }

    *(v1 + 45) = 0;
    v14 = [v1 target_queue];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = ____xpc_remote_connection_teardown_continue_block_invoke;
    v16[3] = &unk_2788BF108;
    v19 = v6;
    v17 = v9;
    v18 = v1;
    v15 = v9;
    v4 = v6;
    dispatch_async(v14, v16);
  }
}

void ___xpc_remote_connection_setup_nw_listener_block_invoke(uint64_t a1, unsigned int a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  error_domain = a3;
  v6 = error_domain;
  if (error_domain && (error_domain = nw_error_get_error_domain(error_domain), error_domain == 1))
  {
    error_code = nw_error_get_error_code(v6);
    v8 = _log(error_code);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      ___xpc_remote_connection_setup_nw_listener_block_invoke_cold_1();
    }
  }

  else
  {
    error_code = 0;
  }

  v9 = _log(error_domain);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = *(a1 + 32);
    v13 = 134218240;
    v14 = v10;
    v15 = 1024;
    v16 = a2;
    _os_log_impl(&dword_23039D000, v9, OS_LOG_TYPE_INFO, "[%p] listener moved to state %d", &v13, 0x12u);
  }

  if (a2 >= 3)
  {
    if (a2 == 4)
    {
      v11 = *(a1 + 32);
      v12 = *(v11 + 24);
      *(v11 + 24) = 0;
    }

    _xpc_remote_connection_disconnect(*(a1 + 32), error_code);
  }
}

void _xpc_remote_connection_disconnect(void *a1, uint64_t a2)
{
  v4 = a1;
  v3 = [v4 internal_queue];
  dispatch_assert_queue_V2(v3);

  __xpc_remote_connection_teardown(v4, 1, a2);
}

void __xpc_remote_channel_create_block_invoke_22(uint64_t a1)
{
  v2 = _log_0(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __xpc_remote_channel_create_block_invoke_22_cold_1();
  }

  v3 = *(a1 + 32);
  v4 = v3;
  v5 = *(v3 + 12);
  switch(v5)
  {
    case 2:
      v7 = _log_0(v3);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        __xpc_remote_channel_create_block_invoke_22_cold_2();
      }

      goto LABEL_13;
    case 1:
      v7 = _log_0(v3);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        __xpc_remote_channel_create_block_invoke_22_cold_4();
      }

LABEL_13:

      break;
    case 0:
      v6 = _log_0(v3);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        __xpc_remote_channel_create_block_invoke_22_cold_3();
      }

      xpc_remote_channel_cancel(v4, 0);
      break;
  }
}

void __xpc_remote_channel_create_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a2;
  v20 = *MEMORY[0x277D85DE8];
  error_domain = a3;
  v6 = error_domain;
  if (error_domain)
  {
    v7 = nw_error_copy_cf_error(error_domain);
    error_domain = nw_error_get_error_domain(v6);
    if (error_domain == 1)
    {
      error_domain = nw_error_get_error_code(v6);
      v8 = error_domain;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  if (v3 <= 3)
  {
    if (v3 == 2)
    {
      goto LABEL_28;
    }

    if (v3 == 3)
    {
      v9 = _log_0(error_domain);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        __xpc_remote_channel_create_block_invoke_cold_1();
      }

      v10 = *(a1 + 32);
      v11 = v10;
      v12 = *(v10 + 10);
      if (v12 <= 2)
      {
        if (v12 != 1)
        {
          __xpc_remote_channel_create_block_invoke_cold_2(&v18, v19);
        }

        *(v10 + 10) = 2;
        v13 = _log_0(v10);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          __xpc_remote_channel_create_block_invoke_cold_3();
        }

        (*(v11[3] + 16))();
        xpc_remote_channel_arm_read(v11);
      }

      goto LABEL_28;
    }

    goto LABEL_25;
  }

  if (v3 == 5)
  {
    goto LABEL_28;
  }

  if (v3 != 4)
  {
LABEL_25:
    v17 = _log_0(error_domain);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      __xpc_remote_channel_create_block_invoke_cold_5();
    }

    goto LABEL_28;
  }

  v14 = _log_0(error_domain);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    __xpc_remote_channel_create_block_invoke_cold_4();
  }

  v15 = *(a1 + 32);
  if (v15[72])
  {
    v16 = 0;
  }

  else
  {
    v16 = v8;
  }

  xpc_remote_channel_cancel(v15, v16);
LABEL_28:
}

void __xpc_remote_channel_create_block_invoke_25(uint64_t a1)
{
  v2 = _log_0(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __xpc_remote_channel_create_block_invoke_25_cold_1();
  }

  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  *(v3 + 16) = 0;

  xpc_remote_channel_cancel(*(a1 + 32), 0x59u);
}

void ___xpc_remote_connection_connect_complete_block_invoke(uint64_t a1, int a2, uint64_t a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = *(*(*(a1 + 40) + 8) + 40);
  v6 = *(a1 + 32);
  v7 = v5;
  v8 = [v6 internal_queue];
  dispatch_assert_queue_V2(v8);

  if (v6[5] != v7)
  {
    ___xpc_remote_connection_connect_complete_block_invoke_cold_1(&size, &buf);
  }

  if (a2 == 2)
  {
    if ([v6 state] < 2 || (v17 = objc_msgSend(v6, "state"), v17 >= 7))
    {
      ___xpc_remote_connection_connect_complete_block_invoke_cold_2(&size, &buf);
    }

    v18 = _log(v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = v6;
      _os_log_impl(&dword_23039D000, v18, OS_LOG_TYPE_INFO, "[%p] Root channel received canceled event", &buf, 0xCu);
    }

    v19 = v6[2];
    v6[2] = 0;

    v20 = v6[5];
    v6[5] = 0;

    _xpc_remote_connection_disconnect(v6, a3);
  }

  else if (a2 == 1)
  {
    v10 = _log(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = v6;
      _os_log_impl(&dword_23039D000, v10, OS_LOG_TYPE_INFO, "[%p] Root channel ready, sending HELO", &buf, 0xCu);
    }

    v11 = v6;
    if ([v11 state] <= 4)
    {
      if ([v11 state] == 2)
      {
        v12 = [v11 setState:3];
        if (*(v11 + 208) == 1)
        {
          v13 = _log(v12);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(buf) = 0;
            _os_log_impl(&dword_23039D000, v13, OS_LOG_TYPE_DEFAULT, "_xpc_remote_connection_ready setup_nw_listener", &buf, 2u);
          }

          _xpc_remote_connection_setup_nw_listener(v11);
        }

        v14 = MEMORY[0x277D85CC8];
        v15 = xpc_dictionary_create(0, 0, 0);
        v16 = v11[20];
        if (v16)
        {
          xpc_dictionary_set_int64(v15, "ServiceVersion", v16);
        }

        size = 0;
        xpc_make_serialization();
        ___xpc_remote_connection_connect_complete_block_invoke_cold_4(&v21, &buf);
      }

      ___xpc_remote_connection_connect_complete_block_invoke_cold_3(&size, &buf);
    }
  }
}

void ___xpc_remote_connection_handle_new_channel_block_invoke(uint64_t a1, int a2, uint64_t a3)
{
  v27 = *MEMORY[0x277D85DE8];
  if (a2 == 2)
  {
    v6 = *(a1 + 32);
    v7 = (a1 + 32);
    v8 = v6[7];
    if (*(*(*(a1 + 40) + 8) + 40) == v8)
    {
      v6[7] = 0;

      if ([*v7 state] < 2 || (v15 = objc_msgSend(*v7, "state"), v15 >= 7))
      {
        ___xpc_remote_connection_handle_new_channel_block_invoke_cold_1(v20, buf);
      }

      v16 = _log(v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = *v7;
        *buf = 134218240;
        v22 = v17;
        v23 = 1024;
        LODWORD(v24) = a3;
        _os_log_impl(&dword_23039D000, v16, OS_LOG_TYPE_INFO, "[%p] Reply channel received CANCELED event with error %{errno}d", buf, 0x12u);
      }

      _xpc_remote_connection_disconnect(*v7, a3);
    }

    else
    {
      v9 = _xpc_remote_pending_stream_find(v6, *(*(*(a1 + 48) + 8) + 24));
      v10 = _log(v9);
      v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
      if (v9)
      {
        if (v11)
        {
          v12 = *(a1 + 32);
          v13 = *(*(*(a1 + 48) + 8) + 24);
          *buf = 134218496;
          v22 = v12;
          v23 = 2048;
          v24 = v13;
          v25 = 1024;
          v26 = a3;
          _os_log_impl(&dword_23039D000, v10, OS_LOG_TYPE_INFO, "[%p] Stream %llu canceled with error %d, leaving tombstone", buf, 0x1Cu);
        }

        v14 = *(v9 + 16);
        *(v9 + 16) = 0;

        *(v9 + 48) = a3;
        _xpc_remote_pending_stream_insert(*v7, v9);
      }

      else
      {
        if (v11)
        {
          v18 = *(a1 + 32);
          v19 = *(*(*(a1 + 48) + 8) + 24);
          *buf = 134218240;
          v22 = v18;
          v23 = 2048;
          v24 = v19;
          _os_log_impl(&dword_23039D000, v10, OS_LOG_TYPE_INFO, "[%p] Stream %llu canceled but not pending", buf, 0x16u);
        }
      }

      _xpc_remote_stream_remove(*(a1 + 32), *(*(*(a1 + 40) + 8) + 40));
      if ([*(a1 + 32) state] >= 5)
      {
        __xpc_remote_connection_teardown_continue(*v7);
      }
    }
  }

  else if (a2 == 1)
  {
    v4 = _log(a1);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      ___xpc_remote_connection_handle_new_channel_block_invoke_cold_2();
    }
  }
}

void _xpc_remote_connection_flush(void *a1, void *a2)
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = [v3 internal_queue];
  dispatch_assert_queue_V2(v5);

  v7 = _log(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v34 = v3;
    _os_log_impl(&dword_23039D000, v7, OS_LOG_TYPE_DEFAULT, "[%p] Flushing outgoing messages", buf, 0xCu);
  }

  v8 = _xpc_remote_connection_dequeue_message(v3);
  if (v8)
  {
    v9 = v8;
    v10 = MEMORY[0x277D86490];
    do
    {
      if (*(v9 + 32) >= 1)
      {
        v11 = 0;
        v12 = v9 + 40;
        do
        {
          v13 = *(v12 + 8 * v11);
          if (MEMORY[0x231914DB0]() != v10)
          {
            _xpc_remote_connection_flush_cold_1();
          }

          v14 = v3;
          v15 = v13;
          v16 = xpc_file_transfer_copy_io();
          dispatch_io_close(v16, 0);
          v17 = [v14 target_queue];

          xpc_file_transfer_send_finished();
          v18 = *(v12 + 8 * v11);
          *(v12 + 8 * v11) = 0;

          ++v11;
        }

        while (v11 < *(v9 + 32));
      }

      if (*(v9 + 16))
      {
        v19 = [v3 target_queue];
        dispatch_async(v19, *(v9 + 16));
      }

      v20 = _xpc_remote_connection_dequeue_message(v3);

      v9 = v20;
    }

    while (v20);
  }

  v21 = _log(v8);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v34 = v3;
    _os_log_impl(&dword_23039D000, v21, OS_LOG_TYPE_DEFAULT, "[%p] Flushing outstanding replies", buf, 0xCu);
  }

  v22 = v3;
  v23 = *(v22 + 16);
  if (v23)
  {
    v24 = 0;
    do
    {
      v25 = v23;
      objc_storeStrong(v22 + 16, *(v25 + 4));
      v26 = *(v25 + 4);
      if (!v26)
      {
        v27 = *(v22 + 17);
        *(v22 + 17) = 0;

        v26 = *(v25 + 4);
      }

      *(v25 + 4) = 0;

      v28 = *(v25 + 3);
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = ___xpc_remote_connection_flush_block_invoke;
      v30[3] = &unk_2788BEEC8;
      v24 = v25;
      v31 = v24;
      v32 = v4;
      dispatch_async(v28, v30);

      v29 = v22;
      v23 = *(v22 + 16);
    }

    while (v23);
  }

  else
  {
    v24 = 0;
  }
}

id _xpc_remote_connection_dequeue_message(void *a1)
{
  v1 = a1;
  v2 = [v1 internal_queue];
  dispatch_assert_queue_V2(v2);

  v3 = v1;
  v4 = *(v3 + 10);
  if (v4)
  {
    v5 = v4;
    objc_storeStrong(v3 + 10, v5[21]);
    v6 = v5[21];
    if (!v6)
    {
      v7 = *(v3 + 11);
      *(v3 + 11) = 0;

      v6 = v5[21];
    }

    v5[21] = 0;
  }

  return v4;
}

void ____xpc_remote_connection_teardown_continue_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = *(v2 + 16);

    v3();
  }

  else
  {
    v4 = _log(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 40);
      v6 = 134217984;
      v7 = v5;
      _os_log_impl(&dword_23039D000, v4, OS_LOG_TYPE_DEFAULT, "[%p] No event handler to deliver teardown complete", &v6, 0xCu);
    }
  }
}

uint64_t _xpc_remote_connection_debug_desc(void *a1, char *a2, size_t a3)
{
  if (a3 < 2)
  {
    return 1;
  }

  v4 = a1;
  v10 = type2str[[v4 type]];
  v9 = state2str[[v4 state]];
  remote_service_name = _xpc_remote_connection_get_remote_service_name(v4);
  v6 = snprintf(a2, a3, "<%s: %p> { type = %s, state = %s, remote service name = %s, server mode = %d, protocol version number = %u, protocol feature flags = 0x%llx, local service version = %llu, remote service version = %llu, traffic class = %u, (root, reply) helo received = (%d, %d), next msg id = %llu, first msg id = %llu, send in progress = %d, preexisting socket = %d", "remote connection", v4, v10, v9, remote_service_name, v4[65], v4[66], *(v4 + 9), *(v4 + 20), *(v4 + 21), *(v4 + 44), v4[32], v4[48], *(v4 + 18), *(v4 + 19), [v4 send_in_progress], *(v4 + 48));

  v7 = v6;
  if (v6 >= a3)
  {
    v7 = a3 - 1;
  }

  return v7 + 1;
}

const char *_xpc_remote_connection_get_remote_service_name(void *a1)
{
  v1 = a1;
  v2 = v1;
  name = v1[1];
  if (!name)
  {
    if (v1[23])
    {
      name = remote_service_get_name();
    }

    else
    {
      name = "(null)";
    }
  }

  return name;
}

uint64_t xpc_remote_connection_get_remote_service_version(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    xpc_remote_connection_get_remote_service_version_cold_1();
  }

  v2 = v1;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v3 = [v1 internal_queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __xpc_remote_connection_get_remote_service_version_block_invoke;
  v7[3] = &unk_2788BEDE0;
  v8 = v2;
  v9 = &v10;
  v4 = v2;
  dispatch_sync(v3, v7);

  v5 = v11[3];
  _Block_object_dispose(&v10, 8);
  return v5;
}

void sub_2303A2738(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void xpc_remote_connection_set_local_service_version(void *a1, uint64_t a2)
{
  v3 = a1;
  if (!v3)
  {
    xpc_remote_connection_get_remote_service_version_cold_1();
  }

  v4 = v3;
  v5 = [v3 internal_queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __xpc_remote_connection_set_local_service_version_block_invoke;
  v7[3] = &unk_2788BEE08;
  v8 = v4;
  v9 = a2;
  v6 = v4;
  dispatch_sync(v5, v7);
}

void *__xpc_remote_connection_set_local_service_version_block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) state];
  if (result)
  {
    __xpc_remote_connection_set_local_service_version_block_invoke_cold_1();
  }

  *(*(a1 + 32) + 160) = *(a1 + 40);
  return result;
}

OS_xpc_remote_connection *xpc_remote_connection_create_with_remote_service(void *a1, void *a2, uint64_t a3)
{
  v3 = a3;
  v6 = a1;
  v7 = a2;
  if (!v6)
  {
    xpc_remote_connection_create_with_remote_service_cold_3();
  }

  v8 = v7;
  v9 = _xpc_remote_connection_alloc();
  [(OS_xpc_remote_connection *)v9 setType:1];
  [(OS_xpc_remote_connection *)v9 setTarget_queue:v8];
  objc_storeStrong(&v9->remote_service, a1);
  v9->remote_service_version = remote_service_get_version();
  xpc_remote_connection_version_flags = remote_service_get_xpc_remote_connection_version_flags();
  if (!xpc_remote_connection_version_flags)
  {
    goto LABEL_8;
  }

  v11 = xpc_remote_connection_version_flags;
  if (!HIBYTE(xpc_remote_connection_version_flags) || (xpc_remote_connection_version_flags & 1) != 0)
  {
    v12 = _log(xpc_remote_connection_version_flags);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      xpc_remote_connection_create_with_remote_service_cold_1(v12, v13, v14, v15, v16, v17, v18, v19);
    }

LABEL_8:
    v11 = 0x100000000000000;
  }

  if (remote_service_xpc_remote_connection_tls_enabled())
  {
    v20 = remote_service_copy_xpc_remote_connection_tls_identity();
    if (!v20)
    {
      xpc_remote_connection_create_with_remote_service_cold_2();
    }

    v21 = v20;
    v22 = remote_service_copy_xpc_remote_connection_tls_verify_block();
    v23 = [(OS_xpc_remote_connection *)v9 internal_queue];
    xpc_remote_connection_set_tls(v9, v21, v22, v23);
  }

  v24 = remote_service_copy_device();
  xpc_remote_connection_mode_flags = remote_device_get_xpc_remote_connection_mode_flags();
  _xpc_remote_connection_parse_flags(v9, v11, xpc_remote_connection_mode_flags | v3);

  return v9;
}

OS_xpc_remote_connection *_xpc_remote_connection_alloc()
{
  if (install_libxpc_hooks_onceToken != -1)
  {
    _xpc_remote_connection_alloc_cold_1();
  }

  v0 = objc_opt_new();
  v1 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v2 = dispatch_queue_create("com.apple.xpc.remote.internal", v1);
  [v0 setInternal_queue:v2];

  *(v0 + 192) = -1;
  *(v0 + 144) = 1;
  return v0;
}

void xpc_remote_connection_set_tls(void *a1, void *a2, void *a3, void *a4)
{
  v11 = a1;
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if ([v11 state])
  {
    xpc_remote_connection_set_tls_cold_1();
  }

  if (![v11 type] && v11[25])
  {
    xpc_remote_connection_set_tls_cold_2();
  }

  if (!v7)
  {
    xpc_remote_connection_set_tls_cold_3();
  }

  [v11 setTls_identity:v7];
  v10 = [v8 copy];
  [v11 setTls_verify:v10];

  [v11 setTls_verify_queue:v9];
}

void _xpc_remote_connection_parse_flags(void *a1, unint64_t a2, char a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a1;
  _xpc_remote_connection_parse_mode_flags(v5, a3);
  v6 = v5;
  v7 = HIBYTE(a2);
  if (!HIBYTE(a2) || (a2 & 1) != 0)
  {
    _xpc_remote_connection_parse_flags_cold_1(&v9, v10);
  }

  if (XPC_REMOTE_CONNECTION_PROTOCOL_VERSION_CURRENT < v7)
  {
    LOBYTE(v7) = XPC_REMOTE_CONNECTION_PROTOCOL_VERSION_CURRENT;
  }

  v6[66] = v7;
  *(v6 + 9) = a2 & 6;
  v8 = v6;
}

OS_xpc_remote_connection *xpc_remote_connection_create_with_connected_fd(int a1, void *a2, unint64_t a3, char a4)
{
  v7 = a2;
  v8 = _xpc_remote_connection_alloc();
  [(OS_xpc_remote_connection *)v8 setType:0];
  [(OS_xpc_remote_connection *)v8 setTarget_queue:v7];

  v8->preexisting_socket = a1;
  _xpc_remote_connection_parse_flags(v8, a3, a4);
  return v8;
}

OS_xpc_remote_connection *xpc_remote_connection_create_with_nw_connection(void *a1, void *a2, unint64_t a3, char a4)
{
  v7 = a1;
  v8 = a2;
  v9 = _xpc_remote_connection_alloc();
  [(OS_xpc_remote_connection *)v9 setType:0];
  [(OS_xpc_remote_connection *)v9 setTarget_queue:v8];

  preexisting_connection = v9->preexisting_connection;
  v9->preexisting_connection = v7;

  _xpc_remote_connection_parse_flags(v9, a3, a4);
  return v9;
}

OS_xpc_remote_connection *xpc_remote_connection_create_remote_service_listener(const char *a1, void *a2, uint64_t a3)
{
  v3 = a3;
  v5 = a2;
  if (!a1)
  {
    xpc_remote_connection_create_remote_service_listener_cold_1();
  }

  v6 = v5;
  v7 = _xpc_remote_connection_alloc();
  [(OS_xpc_remote_connection *)v7 setType:2];
  v7->remote_service_name = strdup(a1);
  [(OS_xpc_remote_connection *)v7 setTarget_queue:v6];
  _xpc_remote_connection_parse_mode_flags(v7, v3 | 1);

  return v7;
}

void _xpc_remote_connection_parse_mode_flags(void *a1, char a2)
{
  v3 = a1;
  v4 = v3;
  if (a2)
  {
    v3[65] = 1;
    *(v3 + 18) = 2;
    v5 = _log(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      _xpc_remote_connection_parse_mode_flags_cold_1();
    }
  }

  if ((a2 & 2) != 0)
  {
    v4[208] = 1;
  }

  v4[64] = (a2 & 4) != 0;
}

void xpc_remote_connection_create_connected_pair(void *a1, void *a2, void *a3, unint64_t a4, char a5)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10[0] = 0;
  if (!socketpair(1, 1, 0, v10))
  {
    *a1 = xpc_remote_connection_create_with_connected_fd(v10[0], v9, a4, a5);
    *a2 = xpc_remote_connection_create_with_connected_fd(SHIDWORD(v10[0]), v9, a4, a5 | 1u);
  }
}

uint64_t xpc_remote_connection_create_asymmetric_connected_ipv6_pair(void *a1, unint64_t a2, uint64_t a3, void *a4, unint64_t a5, uint64_t a6, void *a7)
{
  v7 = a6;
  v10 = a3;
  v13 = a7;
  v14 = _log(v13);
  connected_ipv6_pair = remote_socket_create_connected_ipv6_pair();

  if (!connected_ipv6_pair)
  {
    *a1 = xpc_remote_connection_create_with_connected_fd(0, v13, a2, v10);
    *a4 = xpc_remote_connection_create_with_connected_fd(0, v13, a5, v7 | 1u);
  }

  return connected_ipv6_pair;
}

uint64_t xpc_remote_connection_copy_remote_address_string(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    xpc_remote_connection_get_remote_service_version_cold_1();
  }

  v2 = v1;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v3 = [v1 internal_queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __xpc_remote_connection_copy_remote_address_string_block_invoke;
  v7[3] = &unk_2788BEE30;
  v8 = v2;
  v9 = &v10;
  v4 = v2;
  dispatch_sync(v3, v7);

  v5 = v11[3];
  _Block_object_dispose(&v10, 8);
  return v5;
}

void sub_2303A30D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __xpc_remote_connection_copy_remote_address_string_block_invoke(uint64_t a1)
{
  if (*(*(a1 + 32) + 16))
  {
    v2 = nw_connection_copy_connected_remote_endpoint();
    if (v2)
    {
      v3 = v2;
      *(*(*(a1 + 40) + 8) + 24) = nw_endpoint_copy_address_string(v2);
      v2 = v3;
    }
  }
}

id xpc_remote_connection_copy_remote_endpoint(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    xpc_remote_connection_get_remote_service_version_cold_1();
  }

  v2 = v1;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy_;
  v14 = __Block_byref_object_dispose_;
  v15 = 0;
  v3 = [v1 internal_queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __xpc_remote_connection_copy_remote_endpoint_block_invoke;
  v7[3] = &unk_2788BEE30;
  v8 = v2;
  v9 = &v10;
  v4 = v2;
  dispatch_sync(v3, v7);

  v5 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v5;
}

void sub_2303A3274(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __xpc_remote_connection_copy_remote_endpoint_block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 16);
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 40) = nw_connection_copy_connected_remote_endpoint();

    return MEMORY[0x2821F96F8]();
  }

  return result;
}

void xpc_remote_connection_set_event_handler(void *a1, void *a2)
{
  v4 = a1;
  v3 = a2;
  if ([v4 state])
  {
    xpc_remote_connection_set_tls_cold_1();
  }

  [v4 setEvent_handler:v3];
}

void xpc_remote_connection_set_target_queue(void *a1, void *a2)
{
  v4 = a1;
  v3 = a2;
  if ([v4 state])
  {
    xpc_remote_connection_set_tls_cold_1();
  }

  [v4 setTarget_queue:v3];
}

void xpc_remote_connection_set_traffic_class(void *a1, int a2)
{
  v3 = a1;
  if ([v3 state])
  {
    xpc_remote_connection_set_tls_cold_1();
  }

  v3[44] = a2;
}

uint64_t xpc_remote_connection_is_server(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    xpc_remote_connection_get_remote_service_version_cold_1();
  }

  v2 = v1[65];

  return v2;
}

uint64_t xpc_remote_connection_create_configure_tls_block(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __xpc_remote_connection_create_configure_tls_block_block_invoke;
  v13[3] = &unk_2788BEE58;
  v15 = v7;
  v16 = v6;
  v14 = v5;
  v8 = v7;
  v9 = v6;
  v10 = v5;
  v11 = [v13 copy];

  return v11;
}

void __xpc_remote_connection_create_configure_tls_block_block_invoke(uint64_t a1, id a2)
{
  options = a2;
  sec_protocol_options_set_local_identity(options, *(a1 + 32));
  sec_protocol_options_set_min_tls_protocol_version(options, tls_protocol_version_TLSv12);
  sec_protocol_options_set_max_tls_protocol_version(options, tls_protocol_version_TLSv12);
  sec_protocol_options_append_tls_ciphersuite_group(options, tls_ciphersuite_group_default);
  sec_protocol_options_set_peer_authentication_required(options, 1);
  v3 = *(a1 + 48);
  if (v3)
  {
    v4 = *(a1 + 40);
    if (v4)
    {
      sec_protocol_options_set_verify_block(options, v3, v4);
    }
  }
}

void xpc_remote_connection_setup_nw_parameters(void *a1, char a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = a1;
  nw_protocol_http2_transport_identifier();
  v3 = nw_parameters_create_protocol_parameters();
  if (!v3)
  {
    xpc_remote_connection_setup_nw_parameters_cold_2(&v7, buf);
  }

  v4 = v3;

  if (xpc_remote_connection_setup_nw_parameters_pred != -1)
  {
    xpc_remote_connection_setup_nw_parameters_cold_1();
  }

  if (xpc_remote_connection_setup_nw_parameters_window_size != 0x100000)
  {
    v6 = _log(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = xpc_remote_connection_setup_nw_parameters_window_size;
      _os_log_impl(&dword_23039D000, v6, OS_LOG_TYPE_DEFAULT, "Using non-default XPC_REMOTE_CONNECTION_H2_WINDOW_SIZE=%d", buf, 8u);
    }
  }

  nw_protocol_http2_transport_parameters_set_stream_receive_window_size();
  nw_protocol_http2_transport_parameters_set_connection_receive_window_size();
  nw_parameters_set_data_mode();
  nw_parameters_set_server_mode();
  nw_parameters_add_protocol_stack_member();
}

const char *__xpc_remote_connection_setup_nw_parameters_block_invoke()
{
  result = getenv("XPC_REMOTE_CONNECTION_H2_WINDOW_SIZE");
  if (result)
  {
    result = strtoul(result, 0, 0);
    if (result)
    {
      xpc_remote_connection_setup_nw_parameters_window_size = result;
    }
  }

  return result;
}

void xpc_remote_connection_activate(void *a1)
{
  v1 = a1;
  v2 = [v1 internal_queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __xpc_remote_connection_activate_block_invoke;
  block[3] = &unk_2788BEEA0;
  v5 = v1;
  v3 = v1;
  dispatch_sync(v2, block);
}

void __xpc_remote_connection_activate_block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  if (![*(a1 + 32) state])
  {
    v2 = [*(a1 + 32) event_handler];

    if (!v2)
    {
      __xpc_remote_connection_activate_block_invoke_cold_3();
    }

    v3 = [*(a1 + 32) target_queue];

    if (!v3)
    {
      v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v5 = dispatch_queue_create("com.apple.xpc.remote.target", v4);
      [*(a1 + 32) setTarget_queue:v5];
    }

    v6 = [*(a1 + 32) type];
    v7 = *(a1 + 32);
    if (v6 == 2)
    {
      v8 = v7;
      v9 = [v8 internal_queue];
      dispatch_assert_queue_V2(v9);

      if ([v8 type] != 2)
      {
        __xpc_remote_connection_activate_block_invoke_cold_1(&v15, &v16);
      }

      if ([v8 state])
      {
        __xpc_remote_connection_activate_block_invoke_cold_2(&v15, &v16);
      }

      [v8 setState:4];
      v10 = v8[1];
      v11 = [v8 internal_queue];
      *&v16 = MEMORY[0x277D85DD0];
      *(&v16 + 1) = 3221225472;
      v17 = ___xpc_remote_connection_listen_block_invoke;
      v18 = &unk_2788BEFB8;
      v19 = v8;
      v12 = v8;
      v13 = xpc_remote_listener_create_for_remote_service(v10, v11, &v16, &__block_literal_global_215);
      [v12 setListener:v13];
    }

    else
    {
      [v7 setState:1];
      if (![*(a1 + 32) type])
      {
        v14 = *(a1 + 32);

        _xpc_remote_connection_connect(v14);
      }
    }
  }
}

void _xpc_remote_connection_connect(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [v1 internal_queue];
  dispatch_assert_queue_V2(v2);

  if ([v1 state] != 1)
  {
    _xpc_remote_connection_connect_cold_1(&v7, buf);
  }

  v3 = _log([v1 setState:2]);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    *&buf[4] = v1;
    _os_log_impl(&dword_23039D000, v3, OS_LOG_TYPE_INFO, "[%p] Connecting", buf, 0xCu);
  }

  v1[19] = v1[18];
  v4 = [v1 type];
  switch(v4)
  {
    case 0:
      _xpc_remote_connection_connect_complete(v1, 0xFFFFFFFFLL);
      break;
    case 1:
      goto LABEL_8;
    case 2:
      __break(1u);
LABEL_8:
      v5 = [v1 internal_queue];
      v6 = v1;
      remote_service_connect_socket();

      break;
  }
}

void _xpc_remote_connection_enqueue_message(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 internal_queue];
  dispatch_assert_queue_V2(v5);

  v6 = v3[10];
  v12 = v3;
  v7 = v4;
  v8 = v7;
  if (v3[10])
  {
    v9 = v12[11];
    objc_storeStrong(v9 + 21, a2);
  }

  else
  {
    v10 = v7;
    v9 = v3[10];
    v3[10] = v10;
  }

  v11 = v12[11];
  v12[11] = v8;

  if (!v6)
  {
    _xpc_remote_connection_wakeup(v12);
  }
}

void xpc_remote_connection_send_barrier(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 internal_queue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __xpc_remote_connection_send_barrier_block_invoke;
  v8[3] = &unk_2788BEEF0;
  v9 = v3;
  v10 = v4;
  v6 = v4;
  v7 = v3;
  dispatch_sync(v5, v8);
}

void __xpc_remote_connection_send_barrier_block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  if ([*(a1 + 32) type] == 2)
  {
    __xpc_remote_connection_send_message_block_invoke_cold_3(&v9, v10);
  }

  if ([*(a1 + 32) state] < 6)
  {
    v3 = objc_opt_new();
    v4 = MEMORY[0x231914A00](*(a1 + 40));
    v5 = v3[2];
    v3[2] = v4;

    v7 = _log(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __xpc_remote_connection_send_barrier_block_invoke_cold_1();
    }

    _xpc_remote_connection_enqueue_message(*v2, v3);
  }

  else
  {
    v8 = [*(a1 + 32) target_queue];
    dispatch_async(v8, *(a1 + 40));
  }
}

void xpc_remote_connection_send_message_with_reply(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  if (MEMORY[0x231914DB0](v8) != MEMORY[0x277D86468])
  {
    xpc_remote_connection_send_message_cold_1();
  }

  v11 = [v7 internal_queue];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __xpc_remote_connection_send_message_with_reply_block_invoke;
  v16[3] = &unk_2788BEF40;
  v17 = v7;
  v18 = v8;
  v19 = v9;
  v20 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  v15 = v7;
  dispatch_sync(v11, v16);
}

void __xpc_remote_connection_send_message_with_reply_block_invoke(id *a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = a1 + 4;
  if ([a1[4] type] == 2)
  {
    __xpc_remote_connection_send_message_block_invoke_cold_3(v19, v20);
  }

  if (_xpc_dictionary_get_reply_msg_id())
  {
    __xpc_remote_connection_send_message_with_reply_block_invoke_cold_1(v19, v20);
  }

  v3 = a1[6];
  if (!v3)
  {
    v3 = dispatch_get_global_queue(0, 0);
  }

  if ([*v2 state] < 6)
  {
    v4 = _xpc_remote_message_create(a1[4], a1[5]);
    *(v4 + 176) = 1;
    v5 = _log(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __xpc_remote_connection_send_message_with_reply_block_invoke_cold_2();
    }

    _xpc_remote_connection_enqueue_message(a1[4], v4);
    v6 = objc_opt_new();
    *(v6 + 8) = *(v4 + 8);
    objc_storeStrong((v6 + 24), v3);
    v7 = MEMORY[0x231914A00](a1[7]);
    v8 = *(v6 + 16);
    *(v6 + 16) = v7;

    v9 = a1[4];
    v10 = v6;
    v11 = v10;
    v12 = v9 + 16;
    if (v9[16])
    {
      v12 = (v9[17] + 32);
    }

    v13 = *v12;
    *v12 = v10;
    v14 = v9;
    v15 = v11;

    v16 = v14[17];
    v14[17] = v15;
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __xpc_remote_connection_send_message_with_reply_block_invoke_60;
    block[3] = &unk_2788BEF18;
    v18 = a1[7];
    dispatch_async(v3, block);
    v4 = v18;
  }
}

id xpc_remote_connection_send_message_with_reply_sync(void *a1, void *a2)
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = [v3 internal_queue];
  dispatch_assert_queue_not_V2(v5);

  v7 = _log(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    xpc_remote_connection_send_message_with_reply_sync_cold_1();
  }

  v8 = dispatch_semaphore_create(0);
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy_;
  v29 = __Block_byref_object_dispose_;
  v30 = 0;
  v9 = [v3 internal_queue];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __xpc_remote_connection_send_message_with_reply_sync_block_invoke;
  v21[3] = &unk_2788BEF68;
  v24 = &v25;
  v10 = v3;
  v22 = v10;
  v11 = v8;
  v23 = v11;
  xpc_remote_connection_send_message_with_reply(v10, v4, v9, v21);

  v13 = _log(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    xpc_remote_connection_send_message_with_reply_sync_cold_2();
  }

  v14 = dispatch_semaphore_wait(v11, 0xFFFFFFFFFFFFFFFFLL);
  if (!v26[5])
  {
    v20 = 0;
    memset(v33, 0, sizeof(v33));
    v18 = MEMORY[0x277D86220];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v19 = 3;
    }

    else
    {
      v19 = 2;
    }

    v31 = 134217984;
    v32 = 0;
    _os_log_send_and_compose_impl(v19, &v20, v33, 80, &dword_23039D000, v18, 16, "assertion failure: reply != ((void*)0) -> %llu", &v31);
    _os_crash_msg();
    xpc_remote_connection_send_message_with_reply_sync_cold_4();
  }

  v15 = _log(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    xpc_remote_connection_send_message_with_reply_sync_cold_3();
  }

  v16 = v26[5];
  _Block_object_dispose(&v25, 8);

  return v16;
}

void sub_2303A4520(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __xpc_remote_connection_send_message_with_reply_sync_block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  v6 = _log(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    __xpc_remote_connection_send_message_with_reply_sync_block_invoke_cold_1();
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

uint64_t _xpc_remote_connection_desc(void *a1, char *a2, size_t a3)
{
  if (a3 < 2)
  {
    return 1;
  }

  v5 = a1;
  v6 = type2str[[v5 type]];
  v7 = state2str[[v5 state]];
  remote_service_name = _xpc_remote_connection_get_remote_service_name(v5);
  LODWORD(a2) = snprintf(a2, a3, "<%s: %p> { type = %s, state = %s, remote service name = %s, server mode = %d, protocol version number = %u, protocol feature flags = 0x%llx, local service version = %llu, remote service version = %llu, traffic class = %u }", "remote connection", v5, v6, v7, remote_service_name, v5[65], v5[66], *(v5 + 9), *(v5 + 20), *(v5 + 21), *(v5 + 44));

  v9 = a2;
  if (a2 >= a3)
  {
    v9 = a3 - 1;
  }

  return v9 + 1;
}

uint64_t __install_libxpc_hooks_block_invoke()
{
  xpc_extension_type_init();
  qword_280B13288 = objc_opt_class();

  return MEMORY[0x282205AC0](&hooks);
}

void xpc_remote_connection_message_dispose(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = [v3 internal_queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __xpc_remote_connection_message_dispose_block_invoke;
  v6[3] = &unk_2788BEE08;
  v7 = v3;
  v8 = a2;
  v5 = v3;
  dispatch_async(v4, v6);
}

void __xpc_remote_connection_message_dispose_block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) type] == 2)
  {
    __xpc_remote_connection_send_message_block_invoke_cold_3(&v10, buf);
  }

  if ([*(a1 + 32) state] == 4)
  {
    v2 = *(a1 + 40);
    v3 = *(a1 + 32);
    if (!v2)
    {
      __xpc_remote_connection_message_dispose_block_invoke_cold_1(&v10, buf);
    }

    v4 = v3;
    v5 = objc_opt_new();
    *(v5 + 8) = v2;
    objc_storeStrong((v5 + 24), MEMORY[0x277D85CC8]);

    v7 = _log(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 32);
      v9 = *(a1 + 40);
      *buf = 134218240;
      v12 = v8;
      v13 = 2048;
      v14 = v9;
      _os_log_impl(&dword_23039D000, v7, OS_LOG_TYPE_INFO, "[%p] Sending error reply for msg_id %llu", buf, 0x16u);
    }

    _xpc_remote_connection_send_reply_message(*(a1 + 32), v5);
  }
}

uint64_t ___log_block_invoke()
{
  _log_logger = os_log_create("com.apple.xpc.remote", "connection");

  return MEMORY[0x2821F96F8]();
}

void ___xpc_remote_connection_listen_block_invoke(uint64_t a1, void *a2, int a3)
{
  v38 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (!v5)
  {
    ___xpc_remote_connection_listen_block_invoke_cold_4(&v36, v37);
  }

  if (a3 == -1)
  {
    ___xpc_remote_connection_listen_block_invoke_cold_3(&v36, v37);
  }

  v6 = v5;
  xpc_remote_connection_mode_flags = remote_device_get_xpc_remote_connection_mode_flags();
  xpc_remote_connection_version_flags = remote_device_get_xpc_remote_connection_version_flags();
  if (!xpc_remote_connection_version_flags)
  {
    goto LABEL_9;
  }

  v9 = xpc_remote_connection_version_flags;
  if (!HIBYTE(xpc_remote_connection_version_flags) || (xpc_remote_connection_version_flags & 1) != 0)
  {
    v10 = _log(xpc_remote_connection_version_flags);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      ___xpc_remote_connection_listen_block_invoke_cold_1(v10, v11, v12, v13, v14, v15, v16, v17);
    }

LABEL_9:
    v9 = 0x100000000000000;
  }

  v18 = [*(a1 + 32) target_queue];
  v19 = xpc_remote_connection_create_with_connected_fd(a3, v18, v9, xpc_remote_connection_mode_flags | 1u);

  v20 = *(a1 + 32);
  v21 = *(v20 + 160);
  if (v21)
  {
    xpc_remote_connection_set_local_service_version(v19, v21);
    v20 = *(a1 + 32);
  }

  v22 = *(v20 + 176);
  if (v22)
  {
    xpc_remote_connection_set_traffic_class(v19, v22);
  }

  if (remote_device_xpc_remote_connection_tls_enabled())
  {
    v23 = remote_device_copy_xpc_remote_connection_tls_identity();
    if (!v23)
    {
      ___xpc_remote_connection_listen_block_invoke_cold_2();
    }

    v24 = v23;
    v25 = remote_device_copy_xpc_remote_connection_tls_verify_block();
    v26 = [*(a1 + 32) internal_queue];
    xpc_remote_connection_set_tls(v19, v24, v25, v26);
  }

  v27 = [*(a1 + 32) event_handler];
  v28 = [*(a1 + 32) target_queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = ___xpc_remote_connection_listen_block_invoke_211;
  block[3] = &unk_2788BEF90;
  v29 = *(a1 + 32);
  v34 = v19;
  v35 = v27;
  v33 = v29;
  v30 = v19;
  v31 = v27;
  dispatch_async(v28, block);
}

void *___xpc_remote_connection_listen_block_invoke_211(uint64_t a1)
{
  result = [*(a1 + 32) state];
  if (result <= 5)
  {
    v3 = *(*(a1 + 48) + 16);

    return v3();
  }

  return result;
}

void _xpc_remote_connection_connect_complete(void *a1, uint64_t a2)
{
  v2 = a2;
  v55 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = v3 + 5;
  if (v3[5])
  {
    _xpc_remote_connection_connect_complete_cold_1(&v42, buf);
  }

  v5 = v3;
  if ([v3 type])
  {
    if (v2 == -1)
    {
      _xpc_remote_connection_connect_complete_cold_2(&v42, buf);
    }
  }

  else if (v2 != -1)
  {
    _xpc_remote_connection_connect_complete_cold_3(&v42, buf);
  }

  if ([v5 state] == 2)
  {
    if ([v5 type] || (v11 = *(v5 + 48), v11 == -1))
    {
      if (v2 == -1)
      {
        v6 = v5[25];
        if (!v6)
        {
          _xpc_remote_connection_connect_complete_cold_12();
        }

        objc_storeStrong(v5 + 2, v6);
        v7 = v5[25];
        v5[25] = 0;

        goto LABEL_26;
      }
    }

    else
    {
      *(v5 + 48) = -1;
      v2 = v11;
    }

    if (fcntl(v2, 4, 4) == -1)
    {
      _xpc_remote_connection_connect_complete_cold_9(&v42, buf);
    }

    if (fcntl(v2, 73, 1) == -1)
    {
      v29 = __error();
      if (*v29 != 22)
      {
        _xpc_remote_connection_connect_complete_cold_8(&v42, buf);
      }

      v30 = _log(v29);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        *&buf[4] = v5;
        _os_log_impl(&dword_23039D000, v30, OS_LOG_TYPE_DEFAULT, "[%p] fcntl(F_SETNOSIGPIPE) failed with EINVAL", buf, 0xCu);
      }

      _xpc_remote_connection_connect_doa(v5, v2);
    }

    else if (*(v5 + 44) && (v48 = *(v5 + 44), setsockopt(v2, 0xFFFF, 4230, &v48, 4u) == -1))
    {
      v32 = __error();
      if (*v32 != 22)
      {
        _xpc_remote_connection_connect_complete_cold_7(&v42, buf);
      }

      v33 = _log(v32);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        *&buf[4] = v5;
        _os_log_impl(&dword_23039D000, v33, OS_LOG_TYPE_DEFAULT, "[%p] fcntl(SO_TRAFFIC_CLASS) failed with EINVAL", buf, 0xCu);
      }

      _xpc_remote_connection_connect_doa(v5, v2);
    }

    else
    {
      v12 = _xpc_remote_connection_create_nw_parameters(v5);
      v13 = nw_connection_create_with_connected_socket_and_parameters();
      if (v13)
      {
        v14 = v5[2];
        v5[2] = v13;

LABEL_26:
        if ((v5[26] & 1) == 0)
        {
          v15 = _log(v8);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_23039D000, v15, OS_LOG_TYPE_DEFAULT, "xpc_remote_connection_connect_complete setup_nw_listener", buf, 2u);
          }

          _xpc_remote_connection_setup_nw_listener(v5);
        }

        v42 = 0;
        v43 = &v42;
        v44 = 0x3032000000;
        v45 = __Block_byref_object_copy_;
        v46 = __Block_byref_object_dispose_;
        v47 = 0;
        v39[0] = MEMORY[0x277D85DD0];
        v39[1] = 3221225472;
        v39[2] = ___xpc_remote_connection_connect_complete_block_invoke;
        v39[3] = &unk_2788BF068;
        v16 = v5;
        v40 = v16;
        v41 = &v42;
        v17 = MEMORY[0x231914A00](v39);
        v37[0] = MEMORY[0x277D85DD0];
        v37[1] = 3221225472;
        v37[2] = ___xpc_remote_connection_connect_complete_block_invoke_2;
        v37[3] = &unk_2788BF090;
        v18 = v16;
        v38 = v18;
        v19 = MEMORY[0x231914A00](v37);
        v20 = v18[64];
        v21 = *(v18 + 2);
        v22 = [v18 internal_queue];
        if (v20)
        {
          v23 = 2;
        }

        else
        {
          v23 = 3;
        }

        v24 = xpc_remote_channel_create(v21, v22, v18[66], v23, v17, v19);
        v25 = v43[5];
        v43[5] = v24;

        v26 = v43[5];
        if (!v26)
        {
          v36 = 0;
          v53 = 0u;
          v54 = 0u;
          v51 = 0u;
          v52 = 0u;
          *buf = 0u;
          v34 = MEMORY[0x277D86220];
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            v35 = 3;
          }

          else
          {
            v35 = 2;
          }

          v48 = 134217984;
          v49 = 0;
          _os_log_send_and_compose_impl(v35, &v36, buf, 80, &dword_23039D000, v34, 16, "assertion failure: channel != ((void*)0) -> %llu", &v48);
          _os_crash_msg();
          xpc_remote_connection_send_message_with_reply_sync_cold_4();
        }

        objc_storeStrong(v4, v26);
        v28 = _log(v27);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
        {
          _xpc_remote_connection_connect_complete_cold_10();
        }

        v18[32] = 0;
        v18[48] = 0;

        _Block_object_dispose(&v42, 8);
        goto LABEL_48;
      }

      v31 = _log(0);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        *&buf[4] = v5;
        _os_log_impl(&dword_23039D000, v31, OS_LOG_TYPE_DEFAULT, "[%p] Couldn't create nw_connection", buf, 0xCu);
      }

      _xpc_remote_connection_connect_doa(v5, v2);
    }
  }

  else
  {
    v9 = [v5 state];
    if (v9 <= 5)
    {
      _xpc_remote_connection_connect_complete_cold_6(&v42, buf, v5);
    }

    v10 = _log(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      _xpc_remote_connection_connect_complete_cold_4();
    }

    if (v2 != -1 && close(v2) == -1)
    {
      _xpc_remote_connection_connect_complete_cold_5();
    }
  }

LABEL_48:
}

void sub_2303A52D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ___xpc_remote_connection_connect_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = _log(a1);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (a2 == -1)
  {
    if (v7)
    {
      v9 = *(a1 + 32);
      v10 = 134218240;
      v11 = v9;
      v12 = 1024;
      v13 = a3;
      _os_log_impl(&dword_23039D000, v6, OS_LOG_TYPE_INFO, "[%p] remote_service_connect_socket: %{errno}d", &v10, 0x12u);
    }

    _xpc_remote_connection_connect_failed(*(a1 + 32), a3);
  }

  else
  {
    if (v7)
    {
      v8 = *(a1 + 32);
      v10 = 134217984;
      v11 = v8;
      _os_log_impl(&dword_23039D000, v6, OS_LOG_TYPE_INFO, "[%p] Got socket to Remote Service.", &v10, 0xCu);
    }

    _xpc_remote_connection_connect_complete(*(a1 + 32), a2);
  }
}

void _xpc_remote_connection_connect_failed(void *a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a1;
  if (v3[5])
  {
    _xpc_remote_connection_connect_failed_cold_1(&v7, v8);
  }

  v4 = v3;
  if (v3[2])
  {
    _xpc_remote_connection_connect_failed_cold_2(&v7, v8);
  }

  if ([v3 state] == 2)
  {
    if (a2 == 83)
    {
      if ([v4 type] != 1)
      {
        _xpc_remote_connection_connect_failed_cold_5(&v7, v8);
      }

      _xpc_remote_connection_cancel(v4);
    }

    else
    {
      _xpc_remote_connection_disconnect(v4, a2);
    }
  }

  else
  {
    v5 = [v4 state];
    if (v5 <= 5)
    {
      _xpc_remote_connection_connect_failed_cold_4(&v7, v8);
    }

    v6 = _log(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      _xpc_remote_connection_connect_failed_cold_3();
    }
  }
}

void _xpc_remote_connection_connect_doa(void *a1, int a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = _log(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    *&buf[4] = v3;
    _os_log_impl(&dword_23039D000, v4, OS_LOG_TYPE_DEFAULT, "[%p] fd is DOA; connect failed", buf, 0xCu);
  }

  if (v3[2])
  {
    _xpc_remote_connection_connect_failed_cold_2(&v5, buf);
  }

  if (v3[3])
  {
    _xpc_remote_connection_connect_doa_cold_2(&v5, buf);
  }

  if (v3[5])
  {
    _xpc_remote_connection_connect_failed_cold_1(&v5, buf);
  }

  if (close(a2) == -1)
  {
    _xpc_remote_connection_connect_complete_cold_5();
  }

  _xpc_remote_connection_connect_failed(v3, 22);
}

id _xpc_remote_connection_create_nw_parameters(void *a1)
{
  v1 = a1;
  v2 = MEMORY[0x2319147F0]();
  v3 = [v1 target_queue];
  qos_class = dispatch_queue_get_qos_class(v3, 0);

  if (qos_class >= 0x16)
  {
    if (_xpc_remote_connection_set_nw_context_onceToken != -1)
    {
      _xpc_remote_connection_create_nw_parameters_cold_1();
    }

    nw_parameters_set_context();
  }

  xpc_remote_connection_setup_nw_parameters(v2, v1[65]);
  v5 = [v1 tls_identity];

  if (v5)
  {
    v6 = [v1 tls_identity];
    v7 = [v1 tls_verify];
    v8 = [v1 tls_verify_queue];
    v9 = v6;
    v10 = v7;
    options = nw_tls_create_options();
    configure_tls_block = xpc_remote_connection_create_configure_tls_block(v9, v10, v8);

    (configure_tls_block)[2](configure_tls_block, options);
    nw_parameters_add_protocol_stack_member();
  }

  return v2;
}

void _xpc_remote_connection_setup_nw_listener(void *a1)
{
  v1 = a1;
  v2 = _xpc_remote_connection_create_nw_parameters(v1);
  v3 = nw_listener_create_with_connection(v1[2], v2);
  v4 = [(nw_connection_t *)v1 internal_queue];
  nw_listener_set_queue(v3, v4);

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = ___xpc_remote_connection_setup_nw_listener_block_invoke;
  v11[3] = &unk_2788BF0B8;
  v5 = v1;
  v12 = v5;
  MEMORY[0x231914790](v3, v11);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = ___xpc_remote_connection_setup_nw_listener_block_invoke_233;
  v9[3] = &unk_2788BF0E0;
  v10 = v5;
  v6 = v5;
  nw_listener_set_new_connection_handler(v3, v9);
  nw_listener_start(v3);
  v7 = v6[3];
  v6[3] = v3;
  v8 = v3;
}

uint64_t ___xpc_remote_connection_set_nw_context_block_invoke()
{
  v0 = nw_context_create();
  v1 = _xpc_remote_connection_set_nw_context_context;
  _xpc_remote_connection_set_nw_context_context = v0;

  nw_context_set_isolate_protocol_stack();
  v2 = _xpc_remote_connection_set_nw_context_context;

  return MEMORY[0x282126938](v2, 1);
}

void ___xpc_remote_connection_setup_nw_listener_block_invoke_233(uint64_t a1, void *a2)
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = v3;
  v6 = [v4 internal_queue];
  dispatch_assert_queue_V2(v6);

  v7 = [v4 state];
  if (v7 < 5)
  {
    v8 = _log(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = v4;
      _os_log_impl(&dword_23039D000, v8, OS_LOG_TYPE_DEFAULT, "[%p] Got incoming h2 stream", &buf, 0xCu);
    }

    v33[0] = 0;
    v33[1] = v33;
    v33[2] = 0x2020000000;
    v27 = 0;
    v28 = &v27;
    v29 = 0x3032000000;
    v30 = __Block_byref_object_copy_;
    v31 = __Block_byref_object_dispose_;
    v32 = 0;
    v33[3] = 0;
    *&buf = MEMORY[0x277D85DD0];
    *(&buf + 1) = 3221225472;
    v35 = ___xpc_remote_connection_handle_new_channel_block_invoke;
    v36 = &unk_2788BF130;
    v9 = v4;
    v37 = v9;
    v38 = &v27;
    v39 = v33;
    v10 = MEMORY[0x231914A00](&buf);
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = ___xpc_remote_connection_handle_new_channel_block_invoke_237;
    v23[3] = &unk_2788BF180;
    v11 = v9;
    v24 = v11;
    v25 = &v27;
    v26 = v33;
    v12 = MEMORY[0x231914A00](v23);
    v13 = [v11 internal_queue];
    v14 = xpc_remote_channel_create(v5, v13, *(v11 + 66), 0, v10, v12);
    v15 = v28[5];
    v28[5] = v14;

    if (*(v11 + 65) == 1 && !*(v11 + 7))
    {
      objc_storeStrong(v11 + 7, v28[5]);
    }

    else
    {
      v16 = objc_opt_new();
      objc_storeStrong(v16 + 1, v28[5]);
      v17 = v11;
      v18 = v16;
      v19 = v18;
      if (*(v17 + 14))
      {
        v20 = *(v17 + 15);
        objc_storeStrong(v20 + 2, v16);
      }

      else
      {
        v21 = v18;
        v20 = *(v17 + 14);
        *(v17 + 14) = v21;
      }

      v22 = *(v17 + 15);
      *(v17 + 15) = v19;
    }

    _Block_object_dispose(&v27, 8);
    _Block_object_dispose(v33, 8);
  }

  else
  {
    nw_connection_cancel(v5);
  }
}

void sub_2303A5CDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v17 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

id *_xpc_remote_pending_stream_find(void *a1, id *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = v3;
  if (a2)
  {
    v5 = v3[12];
    if (!v5)
    {
LABEL_6:
      a2 = 0;
      goto LABEL_24;
    }

    v6 = v5;
    while (v6[1] != a2)
    {
      v7 = v6[7];

      v6 = v7;
      if (!v7)
      {
        goto LABEL_6;
      }
    }

    v8 = v4;
    a2 = v6;
    v9 = v4[12];
    if (v9 == a2)
    {
      if (!v9)
      {
LABEL_22:

        goto LABEL_23;
      }

      v9 = v9;
      objc_storeStrong(v4 + 12, v9[7]);
      v14 = v9[7];
      if (!v14)
      {
        v15 = v8[13];
        v8[13] = 0;

        v14 = v9[7];
      }

      v9[7] = 0;
    }

    else
    {
      v10 = v9;
      if (!v10)
      {
LABEL_23:

        goto LABEL_24;
      }

      v11 = v10;
      while (1)
      {
        v12 = v11[7];
        if (v12 == a2)
        {
          break;
        }

        v13 = v12;

        v11 = v13;
        if (!v13)
        {
          goto LABEL_23;
        }
      }

      v14 = v11;
      v16 = v11[7];
      if (!v16)
      {
        _xpc_remote_connection_handle_read_cold_11(&v22, v23);
      }

      v17 = v16;

      v18 = v17[7];
      v19 = v18;
      objc_storeStrong(v11 + 7, v18);
      if (!v19)
      {
        objc_storeStrong(v8 + 13, v11);
      }

      v20 = v17[7];
      v17[7] = 0;

      v9 = v14;
    }

    goto LABEL_22;
  }

LABEL_24:

  return a2;
}

void _xpc_remote_pending_stream_insert(id *a1, void *a2)
{
  v7 = a2;
  v4 = a1 + 12;
  if (a1[12])
  {
    v4 = (a1[13] + 56);
  }

  objc_storeStrong(v4, a2);
  v5 = a1;
  v6 = v5[13];
  v5[13] = v7;
}

void _xpc_remote_stream_remove(void *a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v21 = a1;
  v3 = a2;
  v4 = v21[14];
  if (v4)
  {
    v5 = v4;
    while (v5[1] != v3)
    {
      v6 = v5[2];

      v5 = v6;
      if (!v6)
      {
        goto LABEL_23;
      }
    }

    v7 = v21;
    v8 = v5;
    v9 = v21[14];
    if (v9 == v8)
    {
      if (!v9)
      {
LABEL_21:

        goto LABEL_22;
      }

      v9 = v9;
      objc_storeStrong(v21 + 14, v9[2]);
      v14 = v9[2];
      if (!v14)
      {
        v15 = v7[15];
        v7[15] = 0;

        v14 = v9[2];
      }

      v9[2] = 0;
    }

    else
    {
      v10 = v9;
      if (!v10)
      {
LABEL_22:

        goto LABEL_23;
      }

      v11 = v10;
      while (1)
      {
        v12 = v11[2];
        if (v12 == v8)
        {
          break;
        }

        v13 = v12;

        v11 = v13;
        if (!v13)
        {
          goto LABEL_22;
        }
      }

      v14 = v11;
      v16 = v11[2];
      if (!v16)
      {
        _xpc_remote_connection_handle_read_cold_11(v22, v23);
      }

      v17 = v16;

      v18 = v17[2];
      v19 = v18;
      objc_storeStrong(v11 + 2, v18);
      if (!v19)
      {
        objc_storeStrong(v7 + 15, v11);
      }

      v20 = v17[2];
      v17[2] = 0;

      v9 = v14;
    }

    goto LABEL_21;
  }

LABEL_23:
}

void ___xpc_remote_connection_handle_new_channel_block_invoke_237(uint64_t a1, objc_class *a2, unint64_t a3, void *a4)
{
  v54 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v9 = (a1 + 32);
  v8 = *(a1 + 32);
  if (*(v8 + 48) == 1)
  {
    v10 = *(*(*(a1 + 40) + 8) + 40);
    if (*(v8 + 56) == v10)
    {
      _xpc_remote_connection_handle_read(v8, v10, a2, a3, v7);
      goto LABEL_10;
    }
  }

  v11 = [v8 state];
  if (v11 <= 4)
  {
    if (a3)
    {
      v12 = _log(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        ___xpc_remote_connection_handle_new_channel_block_invoke_237_cold_1();
      }

LABEL_7:

LABEL_8:
      _xpc_remote_connection_disconnect(*v9, 53);
      goto LABEL_10;
    }

    v13 = a3 >> 16;
    if (((a3 >> 16) & 0x40) != 0)
    {
      v30 = _log(v11);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        v31 = *v9;
        *buf = 134217984;
        v50 = v31;
        _os_log_impl(&dword_23039D000, v30, OS_LOG_TYPE_INFO, "[%p] Got HEADER for reply channel", buf, 0xCu);
      }

      v33 = *v9;
      if (*(*v9 + 65))
      {
        v34 = v33[7];
        v36 = *(a1 + 40);
        v35 = a1 + 40;
        if (v34 == *(*(v36 + 8) + 40))
        {
          v47[0] = MEMORY[0x277D85DD0];
          v47[1] = 3221225472;
          v47[2] = ___xpc_remote_connection_handle_new_channel_block_invoke_238;
          v47[3] = &unk_2788BF158;
          v48 = v33;
          xpc_remote_channel_send(v34, 0, 0x400000, MEMORY[0x277D85CC8], v47);
          _xpc_remote_connection_handle_read(*v9, *(*(*v35 + 8) + 40), a2, a3, v7);

          goto LABEL_10;
        }

        v37 = _log(v32);
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          ___xpc_remote_connection_handle_new_channel_block_invoke_237_cold_3();
        }

        xpc_remote_channel_cancel(*(*(*v35 + 8) + 40), 0x35u);
      }

      else
      {
        v38 = _log(v32);
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          ___xpc_remote_connection_handle_new_channel_block_invoke_237_cold_2();
        }
      }

      goto LABEL_8;
    }

    v14 = WORD1(a3);
    if (*(*(a1 + 32) + 56) == *(*(*(a1 + 40) + 8) + 40))
    {
      v15 = _log(v11);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        ___xpc_remote_connection_handle_new_channel_block_invoke_237_cold_4();
      }
    }

    v16 = _log(v11);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = *(a1 + 32);
      v18 = *(*(*(a1 + 48) + 8) + 24);
      *buf = 134218496;
      v50 = v17;
      v51 = 2048;
      *v52 = v18;
      *&v52[8] = 1024;
      v53 = v14;
      _os_log_impl(&dword_23039D000, v16, OS_LOG_TYPE_INFO, "[%p] Got HEADER for stream %lld, flags = 0x%x", buf, 0x1Cu);
    }

    v20 = (v13 >> 3) & 2 | (v13 >> 5) & 1;
    if (!v20)
    {
      v12 = _log(v19);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        ___xpc_remote_connection_handle_new_channel_block_invoke_237_cold_6();
      }

      goto LABEL_7;
    }

    *(*(*(a1 + 48) + 8) + 24) = a2;
    v21 = *(*(*(a1 + 48) + 8) + 24);
    if (!v21)
    {
      v12 = _log(v19);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        ___xpc_remote_connection_handle_new_channel_block_invoke_237_cold_5();
      }

      goto LABEL_7;
    }

    v22 = _xpc_remote_pending_stream_find(*v9, v21);
    if (v22)
    {
      v23 = v22;
      v24 = *(v22 + 24);
      v25 = _log(v22);
      v26 = os_log_type_enabled(v25, OS_LOG_TYPE_INFO);
      if (v24)
      {
        if (v26)
        {
          v27 = *(a1 + 32);
          v28 = *(*(*(a1 + 48) + 8) + 24);
          *buf = 134218240;
          v50 = v27;
          v51 = 2048;
          *v52 = v28;
          _os_log_impl(&dword_23039D000, v25, OS_LOG_TYPE_INFO, "[%p] Found pending stream ID for %lld", buf, 0x16u);
        }

        if (*(v23 + 32) == v20)
        {
          _xpc_remote_channel_send_stream_header(*(*(*(a1 + 40) + 8) + 40), *(*(*(a1 + 48) + 8) + 24), v20);
          xpc_remote_channel_attach_stream(*(*(*(a1 + 40) + 8) + 40), *(v23 + 32), *(v23 + 24), *(v23 + 40));
        }

        else
        {
          v44 = _log(v29);
          if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
          {
            v45 = *v9;
            v46 = *(v23 + 32);
            *buf = 134218496;
            v50 = v45;
            v51 = 1024;
            *v52 = v46;
            *&v52[4] = 1024;
            *&v52[6] = v20;
            _os_log_error_impl(&dword_23039D000, v44, OS_LOG_TYPE_ERROR, "[%p] Pending stream direction mismatch: %d != %d", buf, 0x18u);
          }

          _xpc_remote_connection_disconnect(*v9, 53);
        }
      }

      else
      {
        if (v26)
        {
          v42 = *(a1 + 32);
          v43 = *(*(*(a1 + 48) + 8) + 24);
          *buf = 134218240;
          v50 = v42;
          v51 = 2048;
          *v52 = v43;
          _os_log_impl(&dword_23039D000, v25, OS_LOG_TYPE_INFO, "[%p] Found pending tombstone ID for %lld", buf, 0x16u);
        }

        xpc_remote_channel_cancel(*(*(*(a1 + 40) + 8) + 40), 0x59u);
      }
    }

    else
    {
      v39 = _log(0);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
      {
        v40 = *(a1 + 32);
        v41 = *(*(*(a1 + 48) + 8) + 24);
        *buf = 134218240;
        v50 = v40;
        v51 = 2048;
        *v52 = v41;
        _os_log_impl(&dword_23039D000, v39, OS_LOG_TYPE_INFO, "[%p] Pending incoming stream %lld", buf, 0x16u);
      }

      v23 = objc_opt_new();
      *(v23 + 8) = *(*(*(a1 + 48) + 8) + 24);
      *(v23 + 32) = v20;
      objc_storeStrong((v23 + 16), *(*(*(a1 + 40) + 8) + 40));
      _xpc_remote_pending_stream_insert(*(a1 + 32), v23);
    }
  }

LABEL_10:
}

void ___xpc_remote_connection_handle_new_channel_block_invoke_238(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v9 = *MEMORY[0x277D85DE8];
  v4 = _log(a1);
  v5 = v4;
  if (v2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      ___xpc_remote_connection_handle_new_channel_block_invoke_238_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = 134217984;
    v8 = v6;
    _os_log_impl(&dword_23039D000, v5, OS_LOG_TYPE_INFO, "[%p] Successfully sent reply HELO", &v7, 0xCu);
  }
}

void _xpc_remote_channel_send_stream_header(void *a1, uint64_t a2, int a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a1;
  if (!a2)
  {
    _xpc_remote_channel_send_stream_header_cold_2(&v8, buf);
  }

  if (!a3)
  {
    _xpc_remote_channel_send_stream_header_cold_1(&v8, buf);
  }

  v6 = v5;
  v7 = _log(v5);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 134218240;
    v10 = v6;
    v11 = 2048;
    v12 = a2;
    _os_log_impl(&dword_23039D000, v7, OS_LOG_TYPE_INFO, "[%p] Sending HEADER for stream %lld", buf, 0x16u);
  }

  xpc_remote_channel_send(v6, a2, (a3 & 3) << 20, MEMORY[0x277D85CC8], 0);
}

void ___xpc_remote_connection_ready_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v9 = *MEMORY[0x277D85DE8];
  v4 = _log(a1);
  v5 = v4;
  if (v2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      ___xpc_remote_connection_ready_block_invoke_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = 134217984;
    v8 = v6;
    _os_log_impl(&dword_23039D000, v5, OS_LOG_TYPE_INFO, "[%p] Successfully sent root channel HELO", &v7, 0xCu);
  }
}

id _xpc_remote_connection_create_sub_nw_connection(void *a1)
{
  v1 = a1[2];
  v2 = a1;
  v3 = nw_connection_copy_parameters(v1);
  v4 = MEMORY[0x2319147E0]();

  nw_parameters_set_data_mode();
  nw_parameters_set_server_mode();

  v5 = nw_connection_create_with_connection();

  return v5;
}

void ___xpc_remote_connection_ready_block_invoke_242(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 2)
  {
    v7 = *(a1 + 32);
    v6 = (a1 + 32);
    v8 = *(v7 + 56);
    *(v7 + 56) = 0;

    v9 = [*v6 state];
    if (v9 <= 4)
    {
      v10 = _log(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        ___xpc_remote_connection_ready_block_invoke_242_cold_1();
      }
    }

    _xpc_remote_connection_disconnect(*v6, a3);
  }

  else if (a2 == 1)
  {
    v3 = *(a1 + 32);
    v4 = v3[7];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = ___xpc_remote_connection_ready_block_invoke_2;
    v11[3] = &unk_2788BF158;
    v12 = v3;
    xpc_remote_channel_send(v4, 0, 0x400000, MEMORY[0x277D85CC8], v11);
  }
}

void ___xpc_remote_connection_ready_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v9 = *MEMORY[0x277D85DE8];
  v4 = _log(a1);
  v5 = v4;
  if (v2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      ___xpc_remote_connection_handle_new_channel_block_invoke_238_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = 134217984;
    v8 = v6;
    _os_log_impl(&dword_23039D000, v5, OS_LOG_TYPE_INFO, "[%p] Successfully sent reply channel HELO", &v7, 0xCu);
  }
}

void ___xpc_remote_connection_handle_read_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (MEMORY[0x231914DB0]() != MEMORY[0x277D86490])
  {
    ___xpc_remote_connection_handle_read_block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  v4 = v5;
  xpc_file_transfer_set_transport_writing_callbacks();
}

void _xpc_remote_connection_wakeup(void *a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [v1 internal_queue];
  dispatch_assert_queue_V2(v2);

  if (([v1 send_in_progress] & 1) == 0)
  {
    v3 = [v1 state];
    if (v3 > 4)
    {
      if ((v3 - 5) < 3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      if ((v3 - 2) < 2)
      {
        goto LABEL_6;
      }

      if (v3 == 1)
      {
        _xpc_remote_connection_connect(v1);
LABEL_6:
        v4 = _log(v3);
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
        {
          _xpc_remote_connection_wakeup_cold_1();
        }

LABEL_8:

        goto LABEL_10;
      }

      if (!v3)
      {
        _xpc_remote_connection_wakeup_cold_2();
      }
    }

    v5 = _xpc_remote_connection_dequeue_message(v1);
    v4 = v5;
    if (v5)
    {
      v7 = (v5 + 8);
      v6 = *(v5 + 8);
      if (v6 && (*(v5 + 8) & 1) == *(v1 + 65))
      {
        v22 = 0;
        memset(v27, 0, sizeof(v27));
        v14 = MEMORY[0x277D86220];
        v15 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
        v16 = *v7;
        if (v15)
        {
          v17 = 3;
        }

        else
        {
          v17 = 2;
        }

        v23 = 134218240;
        v24 = v1;
        v25 = 2048;
        v26 = v16;
        _os_log_send_and_compose_impl(v17, &v22, v27, 80, &dword_23039D000, v14, 16, "assertion failure: [%p] Attempted to send reply msg %llu on the root channel", &v23, 22);
        _os_crash_msg();
        __break(1u);
      }

      if (*(v5 + 176))
      {
        v8 = 65537;
      }

      else
      {
        v8 = 1;
      }

      v9 = _log(v5);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        _xpc_remote_connection_wakeup_cold_3();
      }

      [v1 setSend_in_progress:1];
      _xpc_remote_connection_send_ool_message_content(v1, v4);
      v10 = MEMORY[0x231914A00](v4[2].isa);
      v11 = *(v1 + 5);
      isa = v4[3].isa;
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = ___xpc_remote_connection_wakeup_block_invoke;
      v18[3] = &unk_2788BF248;
      v19 = v1;
      v21 = v10;
      v4 = v4;
      v20 = v4;
      v13 = v10;
      xpc_remote_channel_send(v11, v6, v8, isa, v18);
    }

    goto LABEL_8;
  }

LABEL_10:
}

void ___xpc_remote_connection_wakeup_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = a1 + 32;
  v5 = [*(a1 + 32) setSend_in_progress:0];
  if (*(v4 + 16))
  {
    v6 = [*(a1 + 32) target_queue];
    dispatch_async(v6, *(a1 + 48));
  }

  v7 = _log(v5);
  v8 = v7;
  if (v2)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      ___xpc_remote_connection_wakeup_block_invoke_cold_1();
    }
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      ___xpc_remote_connection_wakeup_block_invoke_cold_2();
    }

    _xpc_remote_connection_wakeup(*v4);
  }
}

void ___send_file_transfer_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 40) target_queue];
  xpc_file_transfer_send_finished();
}

uint64_t __Block_byref_object_copy__250(uint64_t a1, uint64_t a2)
{
  result = MEMORY[0x231914A00](*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void ___xpc_remote_connection_open_stream_block_invoke(uint64_t a1, int a2, uint64_t a3)
{
  v18 = *MEMORY[0x277D85DE8];
  if (a2 == 2)
  {
    v8 = _log(a1);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = *(a1 + 32);
      v10 = *(a1 + 56);
      v14 = 134218240;
      v15 = v9;
      v16 = 2048;
      v17 = v10;
      _os_log_impl(&dword_23039D000, v8, OS_LOG_TYPE_INFO, "[%p] Got CANCELED for stream %lld", &v14, 0x16u);
    }

    v11 = *(*(a1 + 48) + 8);
    v12 = *(v11 + 40);
    if (v12)
    {
      (*(v12 + 16))(v12, a3);
      v11 = *(*(a1 + 48) + 8);
      v13 = *(v11 + 40);
    }

    else
    {
      v13 = 0;
    }

    *(v11 + 40) = 0;

    _xpc_remote_stream_remove(*(a1 + 32), *(*(*(a1 + 40) + 8) + 40));
    if ([*(a1 + 32) state] >= 5)
    {
      __xpc_remote_connection_teardown_continue(*(a1 + 32));
    }
  }

  else if (a2 == 1)
  {
    v4 = *(*(*(a1 + 40) + 8) + 40);
    v5 = *(a1 + 56);
    v6 = *(a1 + 64);

    _xpc_remote_channel_send_stream_header(v4, v5, v6);
  }
}

void ___xpc_remote_connection_open_stream_block_invoke_252(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = _log(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 64);
    v7 = 134218240;
    v8 = v3;
    v9 = 2048;
    v10 = v4;
    _os_log_impl(&dword_23039D000, v2, OS_LOG_TYPE_INFO, "[%p] Got HEADER for stream %lld", &v7, 0x16u);
  }

  xpc_remote_channel_attach_stream(*(*(*(a1 + 48) + 8) + 40), *(a1 + 72), *(a1 + 40), *(*(*(a1 + 56) + 8) + 40));
  v5 = *(*(a1 + 56) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;
}

void ___recv_file_transfer_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) internal_queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = ___recv_file_transfer_block_invoke_2;
  block[3] = &unk_2788BF2E8;
  v11 = *(a1 + 32);
  v12 = v5;
  v13 = v6;
  v8 = v6;
  v9 = v5;
  dispatch_async(v7, block);
}

void ___recv_file_transfer_block_invoke_2(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) state] < 5)
  {
    transfer_id = xpc_file_transfer_get_transfer_id();
    v3 = *(a1 + 48);
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v19 = ___recv_file_transfer_block_invoke_3;
    v20 = &unk_2788BF270;
    v4 = *(a1 + 32);
    v21 = *(a1 + 40);
    v22 = *(a1 + 32);
    v5 = v4;
    v6 = v3;
    v7 = v18;
    v8 = [v5 internal_queue];
    dispatch_assert_queue_V2(v8);

    if ([v5 state] >= 5)
    {
      ___recv_file_transfer_block_invoke_2_cold_1(&v23, buf);
    }

    v9 = _xpc_remote_pending_stream_find(v5, transfer_id);
    if (v9)
    {
      v10 = v9;
      v11 = *(v9 + 16);
      v12 = _log(v9);
      v13 = os_log_type_enabled(v12, OS_LOG_TYPE_INFO);
      if (v11)
      {
        if (v13)
        {
          *buf = 134218240;
          v25 = v5;
          v26 = 2048;
          v27 = transfer_id;
          _os_log_impl(&dword_23039D000, v12, OS_LOG_TYPE_INFO, "[%p] Found pending stream channel for %lld", buf, 0x16u);
        }

        if (*(v10 + 32) != 2)
        {
          ___recv_file_transfer_block_invoke_2_cold_2(&v23, buf);
        }

        _xpc_remote_channel_send_stream_header(*(v10 + 16), transfer_id, 2);
        xpc_remote_channel_attach_stream(*(v10 + 16), 2, v6, v7);
      }

      else
      {
        if (v13)
        {
          *buf = 134218240;
          v25 = v5;
          v26 = 2048;
          v27 = transfer_id;
          _os_log_impl(&dword_23039D000, v12, OS_LOG_TYPE_INFO, "[%p] Found pending tombstone channel for %lld", buf, 0x16u);
        }

        (v19)(v7, *(v10 + 48));
      }
    }

    else
    {
      v14 = _log(0);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 134218240;
        v25 = v5;
        v26 = 2048;
        v27 = transfer_id;
        _os_log_impl(&dword_23039D000, v14, OS_LOG_TYPE_INFO, "[%p] Pending future stream %lld", buf, 0x16u);
      }

      v10 = objc_opt_new();
      *(v10 + 8) = transfer_id;
      *(v10 + 32) = 2;
      objc_storeStrong((v10 + 24), v3);
      v15 = MEMORY[0x231914A00](v7);
      v16 = *(v10 + 40);
      *(v10 + 40) = v15;

      _xpc_remote_pending_stream_insert(v5, v10);
    }
  }

  else
  {
    v17 = [*(a1 + 32) target_queue];
    xpc_file_transfer_write_finished();
  }
}

void ___recv_file_transfer_block_invoke_3(uint64_t a1)
{
  v1 = [*(a1 + 40) target_queue];
  xpc_file_transfer_write_finished();
}

void ___recv_file_transfer_block_invoke_4(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) internal_queue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = ___recv_file_transfer_block_invoke_5;
  v5[3] = &unk_2788BEE08;
  v6 = *(a1 + 32);
  v7 = a2;
  dispatch_async(v4, v5);
}

void ___recv_file_transfer_block_invoke_5(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) state] <= 4)
  {
    v2 = *(a1 + 40);
    v3 = *(a1 + 32);
    v4 = [v3 internal_queue];
    dispatch_assert_queue_V2(v4);

    v5 = _xpc_remote_pending_stream_find(v3, v2);
    if (v5)
    {
      v6 = v5;
      v7 = *(v5 + 16);
      v8 = _log(v5);
      v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
      if (v7)
      {
        if (v9)
        {
          *buf = 134218240;
          v13 = v3;
          v14 = 2048;
          v15 = v2;
          _os_log_impl(&dword_23039D000, v8, OS_LOG_TYPE_INFO, "[%p] Found pending stream channel for canceling %lld", buf, 0x16u);
        }

        if (*(v6 + 32) != 2)
        {
          ___recv_file_transfer_block_invoke_5_cold_1(&v11, buf);
        }

        xpc_remote_channel_cancel(*(v6 + 16), 0x59u);
      }

      else
      {
        if (v9)
        {
          *buf = 134218240;
          v13 = v3;
          v14 = 2048;
          v15 = v2;
          _os_log_impl(&dword_23039D000, v8, OS_LOG_TYPE_INFO, "[%p] Found pending tombstone for canceling %lld", buf, 0x16u);
        }
      }
    }

    else
    {
      v10 = _log(0);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 134218240;
        v13 = v3;
        v14 = 2048;
        v15 = v2;
        _os_log_impl(&dword_23039D000, v10, OS_LOG_TYPE_INFO, "[%p] Leaving stream tombstone %lld", buf, 0x16u);
      }

      v6 = objc_opt_new();
      *(v6 + 8) = v2;
      _xpc_remote_pending_stream_insert(v3, v6);
    }
  }
}

uint64_t ___xpc_remote_message_create_block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = v4;
  if (*(*(a1 + 32) + 32) < 16)
  {
    if (MEMORY[0x231914DB0](v4) == MEMORY[0x277D86490])
    {
      v16 = *(a1 + 32);
      v17 = *(v16 + 32);
      *(v16 + 32) = v17 + 1;
      objc_storeStrong((v16 + 8 * v17 + 40), a2);
      v14 = 1;
      goto LABEL_10;
    }

    if (MEMORY[0x231914DB0](v5) == MEMORY[0x277D86458] && (*(*(a1 + 40) + 72) & 2) == 0 && xpc_data_get_length(v5) > 0x4000)
    {
      ___xpc_remote_message_create_block_invoke_cold_1();
    }
  }

  else
  {
    v6 = _log(v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      ___xpc_remote_message_create_block_invoke_cold_2(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  v14 = 0;
LABEL_10:

  return v14;
}

uint64_t OUTLINED_FUNCTION_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const char *a8)
{

  return _os_log_send_and_compose_impl(a1, v9, v8, 80, a5, v10, 16, a8);
}

uint64_t OUTLINED_FUNCTION_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const char *a8)
{

  return _os_log_send_and_compose_impl(v11, v9, v8, 80, a5, v10, 16, a8);
}

double OUTLINED_FUNCTION_5(void *a1, _OWORD *a2)
{
  *a1 = 0;
  result = 0.0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  return result;
}

double OUTLINED_FUNCTION_7(void *a1, _OWORD *a2)
{
  *a1 = 0;
  result = 0.0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  return result;
}

void OUTLINED_FUNCTION_8(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, va, 0xCu);
}

void OUTLINED_FUNCTION_12(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

double OUTLINED_FUNCTION_14(void *a1, _OWORD *a2)
{
  *a1 = 0;
  result = 0.0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  return result;
}

BOOL OUTLINED_FUNCTION_16()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_ERROR);
}

uint64_t OUTLINED_FUNCTION_17(uint64_t a1)
{

  return _os_crash_msg();
}

BOOL OUTLINED_FUNCTION_19()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_ERROR);
}

void OUTLINED_FUNCTION_20(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, a5, 0x16u);
}

void OUTLINED_FUNCTION_21(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 2u);
}

uint64_t OUTLINED_FUNCTION_22(uint64_t a1)
{

  return _os_crash_msg();
}

OS_xpc_remote_channel *xpc_remote_channel_create(void *a1, void *a2, unsigned __int8 a3, char a4, void *a5, void *a6)
{
  v11 = a1;
  v12 = a2;
  v13 = a6;
  v14 = a5;
  v15 = objc_opt_new();
  objc_storeStrong((v15 + 8), a2);
  *(v15 + 73) = a3;
  v16 = MEMORY[0x231914A00](v14);

  v17 = *(v15 + 24);
  *(v15 + 24) = v16;

  v18 = MEMORY[0x231914A00](v13);
  v19 = *(v15 + 32);
  *(v15 + 32) = v18;

  nw_connection_set_queue(v11, v12);
  v51[0] = MEMORY[0x277D85DD0];
  v51[1] = 3221225472;
  v51[2] = __xpc_remote_channel_create_block_invoke;
  v51[3] = &unk_2788BF0B8;
  v20 = v15;
  v52 = v20;
  MEMORY[0x2319146A0](v11, v51);
  v46 = MEMORY[0x277D85DD0];
  v47 = 3221225472;
  v48 = __xpc_remote_channel_create_block_invoke_22;
  v49 = &unk_2788BEEA0;
  v50 = v20;
  nw_connection_set_read_close_handler();
  v41 = MEMORY[0x277D85DD0];
  v42 = 3221225472;
  v43 = __xpc_remote_channel_create_block_invoke_24;
  v44 = &unk_2788BEEA0;
  v45 = v50;
  nw_connection_set_write_close_handler();
  v36 = MEMORY[0x277D85DD0];
  v37 = 3221225472;
  v38 = __xpc_remote_channel_create_block_invoke_25;
  v39 = &unk_2788BEEA0;
  v21 = v45;
  v40 = v21;
  nw_connection_set_cancel_handler();
  if (a4)
  {
    v31 = MEMORY[0x277D85DD0];
    v32 = 3221225472;
    v33 = __xpc_remote_channel_create_block_invoke_26;
    v34 = &unk_2788BEEA0;
    v35 = v21;
    nw_connection_set_adaptive_write_handler();
  }

  if ((a4 & 2) != 0)
  {
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __xpc_remote_channel_create_block_invoke_27;
    v29[3] = &unk_2788BF3A8;
    v30 = v21;
    nw_connection_set_viability_changed_handler(v11, v29);
  }

  nw_connection_start(v11);
  v22 = *(v21 + 2);
  *(v21 + 2) = v11;
  v23 = v11;

  *(v21 + 10) = 1;
  v25 = _log_0(v24);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    xpc_remote_channel_create_cold_1();
  }

  v26 = v40;
  v27 = v21;

  return v21;
}

void __xpc_remote_channel_create_block_invoke_24(uint64_t a1)
{
  v1 = _log_0(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    __xpc_remote_channel_create_block_invoke_24_cold_1();
  }
}

void __xpc_remote_channel_create_block_invoke_26(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = _log_0(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = 134218240;
    v5 = v3;
    v6 = 1024;
    v7 = 5;
    _os_log_impl(&dword_23039D000, v2, OS_LOG_TYPE_INFO, "[%p] aborting connection after %d retransmits", &v4, 0x12u);
  }

  xpc_remote_channel_cancel(*(a1 + 32), 0x3Cu);
}

void __xpc_remote_channel_create_block_invoke_30(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = _log_0(a1);
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __xpc_remote_channel_create_block_invoke_30_cold_1();
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __xpc_remote_channel_create_block_invoke_30_cold_2();
  }
}

void xpc_remote_channel_attach_stream(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a2;
  v30 = *MEMORY[0x277D85DE8];
  v7 = a1;
  v8 = a3;
  v9 = a4;
  v10 = *(v7 + 10);
  if (v10 == 4)
  {
    xpc_remote_channel_attach_stream_cold_7(v28, v29);
  }

  if (*(v7 + 12))
  {
    xpc_remote_channel_attach_stream_cold_1(v28, v29);
  }

  if (v6 == 3)
  {
    xpc_remote_channel_attach_stream_cold_6(v28, v29);
  }

  v11 = v9;
  v12 = _log_0(v9);
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG);
  if (v10 == 3)
  {
    if (v13)
    {
      xpc_remote_channel_attach_stream_cold_5();
    }

    dispatch_io_close(v8, 0);
    v14 = *(v7 + 1);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __xpc_remote_channel_attach_stream_block_invoke;
    block[3] = &unk_2788BF448;
    v15 = &v27;
    v27 = v11;
    v16 = &v26;
    v26 = v7;
    dispatch_async(v14, block);
  }

  else
  {
    if (v13)
    {
      xpc_remote_channel_attach_stream_cold_2();
    }

    *(v7 + 12) = v6;
    objc_storeStrong(v7 + 8, a3);
    v17 = *(v7 + 1);
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __xpc_remote_channel_attach_stream_block_invoke_35;
    v22[3] = &unk_2788BF470;
    v18 = v7;
    v23 = v18;
    v24 = v11;
    v19 = dispatch_io_create_with_io(0, v8, v17, v22);
    v20 = v18[7];
    v18[7] = v19;

    dispatch_io_set_low_water(v18[7], 1uLL);
    if (!v18[7])
    {
      xpc_remote_channel_attach_stream_cold_4(v28, v29);
    }

    v15 = &v23;
    v16 = &v24;
    v21 = *(v7 + 12);
    if (v21 == 2)
    {
      _xpc_remote_channel_enqueue_rx(v18);
    }

    else
    {
      if (v21 != 1)
      {
        xpc_remote_channel_attach_stream_cold_3();
      }

      _xpc_remote_channel_enqueue_tx(v18);
    }
  }
}

uint64_t __xpc_remote_channel_attach_stream_block_invoke_35(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = _log_0(a1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __xpc_remote_channel_attach_stream_block_invoke_35_cold_1();
  }

  v5 = *(a1 + 32);
  v6 = *(v5 + 56);
  *(v5 + 56) = 0;

  xpc_remote_channel_cancel(*(a1 + 32), v2);
  return (*(*(a1 + 40) + 16))();
}

void _xpc_remote_channel_enqueue_tx(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1[10] <= 2u)
  {
    v3 = _log_0(v1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      _xpc_remote_channel_enqueue_tx_cold_1();
    }

    v4 = v2[7];
    v5 = v2[1];
    io_handler[0] = MEMORY[0x277D85DD0];
    io_handler[1] = 3221225472;
    io_handler[2] = ___xpc_remote_channel_enqueue_tx_block_invoke;
    io_handler[3] = &unk_2788BF510;
    v7 = v2;
    dispatch_io_read(v4, 0, 0x20000uLL, v5, io_handler);
  }
}

void _xpc_remote_channel_enqueue_rx(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1[10] <= 2u)
  {
    v3 = _log_0(v1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      _xpc_remote_channel_enqueue_rx_cold_1();
    }

    v4 = v2[2];
    completion[0] = MEMORY[0x277D85DD0];
    completion[1] = 3221225472;
    completion[2] = ___xpc_remote_channel_enqueue_rx_block_invoke;
    completion[3] = &unk_2788BF3F8;
    v6 = v2;
    nw_connection_receive(v4, 1u, 0x20000u, completion);
  }
}

uint64_t ___log_block_invoke_0()
{
  _log_logger_0 = os_log_create("com.apple.xpc.remote", "channel");

  return MEMORY[0x2821F96F8]();
}

void ___xpc_remote_channel_enqueue_tx_block_invoke(uint64_t a1, int a2, void *a3, uint64_t a4)
{
  v4 = a4;
  v42 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v9 = *(a1 + 32);
  v8 = (a1 + 32);
  v10 = *(v9 + 40);
  v11 = _log_0(v7);
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG);
  if (v10 < 3)
  {
    if (v12)
    {
      v26 = *v8;
      if (v7)
      {
        size = dispatch_data_get_size(v7);
      }

      else
      {
        size = 0;
      }

      v28 = "false";
      *buf = 134218754;
      v35 = v26;
      v36 = 2048;
      if (a2)
      {
        v28 = "true";
      }

      v37 = size;
      v38 = 1024;
      v39 = v4;
      v40 = 2080;
      v41 = v28;
      _os_log_debug_impl(&dword_23039D000, v11, OS_LOG_TYPE_DEBUG, "[%p] IO read returned %zd bytes, error = %{errno}d, done = %s", buf, 0x26u);
    }

    v13 = MEMORY[0x277D85CC8];
    v15 = _log_0(v14);
    v16 = v15;
    if (v7 == v13 && !v4 && a2)
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v17 = *v8;
        *buf = 134217984;
        v35 = v17;
        _os_log_impl(&dword_23039D000, v16, OS_LOG_TYPE_INFO, "[%p] IO read returned EOF, calling write_close", buf, 0xCu);
      }

      v18 = *v8;
      v19 = *(*v8 + 2);
      v20 = *MEMORY[0x277CD9220];
      completion[0] = MEMORY[0x277D85DD0];
      completion[1] = 3221225472;
      completion[2] = ___xpc_remote_channel_enqueue_tx_block_invoke_46;
      completion[3] = &unk_2788BF4C0;
      v33 = v18;
      nw_connection_send(v19, 0, v20, 1, completion);
      v11 = v33;
    }

    else
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        ___xpc_remote_channel_enqueue_tx_block_invoke_cold_1();
      }

      v21 = *v8;
      v22 = *(*v8 + 2);
      v23 = *MEMORY[0x277CD9218];
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = ___xpc_remote_channel_enqueue_tx_block_invoke_47;
      v29[3] = &unk_2788BF4E8;
      v30 = v21;
      v31 = a2;
      nw_connection_send(v22, v7, v23, 1, v29);
      if (v4)
      {
        v25 = _log_0(v24);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          ___xpc_remote_channel_enqueue_tx_block_invoke_cold_2();
        }

        xpc_remote_channel_cancel(*v8, v4);
      }

      v11 = v30;
    }
  }

  else if (v12)
  {
    ___xpc_remote_channel_enqueue_tx_block_invoke_cold_3();
  }
}

void ___xpc_remote_channel_enqueue_tx_block_invoke_46(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _log_0(v3);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      ___xpc_remote_channel_enqueue_tx_block_invoke_46_cold_1();
    }
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 32);
      v7 = 134217984;
      v8 = v6;
      _os_log_impl(&dword_23039D000, v5, OS_LOG_TYPE_INFO, "[%p] write-close succeeded, marking successful Tx", &v7, 0xCu);
    }

    *(*(a1 + 32) + 72) = 1;
  }
}

void ___xpc_remote_channel_enqueue_tx_block_invoke_47(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = _log_0(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 32);
      v12 = 134218242;
      v13 = v6;
      v14 = 2112;
      v15 = v4;
      _os_log_impl(&dword_23039D000, v5, OS_LOG_TYPE_INFO, "[%p] Connection write returned error %@", &v12, 0x16u);
    }

    v7 = *(a1 + 32);
    error_code = nw_error_get_error_code(v4);
    xpc_remote_channel_cancel(v7, error_code);
  }

  else
  {
    v9 = *(a1 + 40);
    v10 = _log_0(0);
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG);
    if (v9)
    {
      if (v11)
      {
        ___xpc_remote_channel_enqueue_tx_block_invoke_47_cold_2();
      }

      _xpc_remote_channel_enqueue_tx(*(a1 + 32));
    }

    else
    {
      if (v11)
      {
        ___xpc_remote_channel_enqueue_tx_block_invoke_47_cold_1();
      }
    }
  }
}

void ___xpc_remote_channel_enqueue_rx_block_invoke(uint64_t a1, void *a2, void *a3, int a4, void *a5)
{
  v33 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a3;
  v11 = a5;
  v12 = v11;
  v14 = *(a1 + 32);
  v13 = a1 + 32;
  if (*(v14 + 40) >= 3u)
  {
    v15 = _log_0(v11);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      ___xpc_remote_channel_enqueue_rx_block_invoke_cold_1(v13, v9, v15);
    }
  }

  if (!v9 || v12)
  {
    if (v9 || !a4 || v12)
    {
      if (!v12)
      {
        ___xpc_remote_channel_enqueue_rx_block_invoke_cold_2();
      }

      v24 = _log_0(v11);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v25 = *v13;
        *buf = 134218242;
        v30 = v25;
        v31 = 2112;
        v32 = v12;
        _os_log_impl(&dword_23039D000, v24, OS_LOG_TYPE_INFO, "[%p] Connection read got error %@. Canceling remote channel.", buf, 0x16u);
      }

      v26 = *v13;
      error_code = nw_error_get_error_code(v12);
      v22 = v26;
    }

    else
    {
      v20 = _log_0(v11);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = *v13;
        *buf = 134217984;
        v30 = v21;
        _os_log_impl(&dword_23039D000, v20, OS_LOG_TYPE_INFO, "[%p] Connection read got EOF. Canceling remote channel.", buf, 0xCu);
      }

      v22 = *v13;
      error_code = 0;
    }

    xpc_remote_channel_cancel(v22, error_code);
  }

  else
  {
    v16 = _log_0(v11);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      ___xpc_remote_channel_enqueue_rx_block_invoke_cold_3(v13, v9, v16);
    }

    v17 = *v13;
    v18 = *(*v13 + 56);
    v19 = v17[1];
    io_handler[0] = MEMORY[0x277D85DD0];
    io_handler[1] = 3221225472;
    io_handler[2] = ___xpc_remote_channel_enqueue_rx_block_invoke_49;
    io_handler[3] = &unk_2788BF510;
    v28 = v17;
    dispatch_io_write(v18, 0, v9, v19, io_handler);
  }
}

void ___xpc_remote_channel_enqueue_rx_block_invoke_49(uint64_t a1, int a2, void *a3, unsigned int a4)
{
  v19 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = v7;
  v10 = *(a1 + 32);
  v9 = (a1 + 32);
  if (*(v10 + 40) <= 2u)
  {
    if (a4)
    {
      if ((a2 & 1) == 0)
      {
        ___xpc_remote_channel_enqueue_rx_block_invoke_49_cold_1(&v14, buf);
      }

      v11 = _log_0(v7);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = *v9;
        *buf = 134218240;
        v16 = v12;
        v17 = 1024;
        v18 = a4;
        _os_log_impl(&dword_23039D000, v11, OS_LOG_TYPE_INFO, "[%p] IO write got error %d", buf, 0x12u);
      }

      xpc_remote_channel_cancel(*v9, a4);
LABEL_10:
      _xpc_remote_channel_enqueue_rx(*v9);
      goto LABEL_11;
    }

    v13 = _log_0(v7);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      ___xpc_remote_channel_enqueue_rx_block_invoke_49_cold_2(v9, v8, v13);
    }

    if (a2)
    {
      goto LABEL_10;
    }
  }

LABEL_11:
}

uint64_t OUTLINED_FUNCTION_12_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const char *a8)
{

  return _os_log_send_and_compose_impl(a1, v9, v8, 80, a5, v10, 16, a8);
}

OS_xpc_remote_listener *xpc_remote_listener_create_for_remote_service(uint64_t a1, void *a2, void *a3, void *a4)
{
  v22 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a4;
  v9 = a3;
  v10 = objc_opt_new();
  v11 = v10[1];
  v10[1] = v7;
  v12 = v7;

  v13 = MEMORY[0x231914A00](v9);
  v14 = v10[3];
  v10[3] = v13;

  v15 = MEMORY[0x231914A00](v8);
  v16 = v10[4];
  v10[4] = v15;

  if (_log_onceToken_1 != -1)
  {
    xpc_remote_listener_create_for_remote_service_cold_1();
  }

  v17 = _log_logger_1;
  if (os_log_type_enabled(_log_logger_1, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v21 = a1;
    _os_log_impl(&dword_23039D000, v17, OS_LOG_TYPE_DEFAULT, "Checking in for remote service: %s", buf, 0xCu);
  }

  v19 = v10;
  remote_service_listen_with_device();

  return v19;
}

void xpc_remote_listener_cancel(void *a1)
{
  v1 = a1;
  dispatch_assert_queue_V2(v1[1]);
  if (*(v1 + 4) != 1)
  {
    *(v1 + 40) = 1;
    _os_crash();
    __break(1u);
  }

  v7 = 0;
  memset(v6, 0, sizeof(v6));
  v2 = MEMORY[0x277D86220];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = 3;
  }

  else
  {
    v3 = 2;
  }

  v4 = 134217984;
  v5 = 0;
  _os_log_send_and_compose_impl(v3, &v7, v6, 80, &dword_23039D000, v2, 16, "assertion failure: self->type != XPC_REMOTE_LISTENER_TYPE_RSD -> %llu", &v4);
  _os_crash_msg();
  __break(1u);
}

uint64_t ___log_block_invoke_1()
{
  _log_logger_1 = os_log_create("com.apple.xpc.remote", "listener");

  return MEMORY[0x2821F96F8]();
}

void _xpc_remote_connection_parse_flags_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_7(a1, a2);
  v5 = MEMORY[0x277D86220];
  if (OUTLINED_FUNCTION_19())
  {
    v6 = 3;
  }

  else
  {
    v6 = 2;
  }

  v8 = 134217984;
  v9 = v2;
  v7 = _os_log_send_and_compose_impl(v6, v4, v3, 80, &dword_23039D000, v5, 16, "assertion failure: BUG in client of RemoteXPC: Invalid version flags (%llx)", &v8);
  OUTLINED_FUNCTION_22(v7);
  __break(1u);
}

void xpc_remote_connection_setup_nw_parameters_cold_2(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_5(a1, a2);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_6();
  v8 = OUTLINED_FUNCTION_1(v2, v3, v4, v5, &dword_23039D000, v6, v7, "assertion failure: h2_parameters -> %llu");
  OUTLINED_FUNCTION_17(v8);
  __break(1u);
}

void __xpc_remote_connection_activate_block_invoke_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_5(a1, a2);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_6();
  v8 = OUTLINED_FUNCTION_1(v2, v3, v4, v5, &dword_23039D000, v6, v7, "assertion failure: self.type == XPC_REMOTE_CONNECTION_TYPE_LISTENER -> %llu");
  OUTLINED_FUNCTION_17(v8);
  __break(1u);
}

void __xpc_remote_connection_activate_block_invoke_cold_2(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_5(a1, a2);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_6();
  v8 = OUTLINED_FUNCTION_1(v2, v3, v4, v5, &dword_23039D000, v6, v7, "assertion failure: self.state == XPC_REMOTE_CONNECTION_STATE_INACTIVE -> %llu");
  OUTLINED_FUNCTION_17(v8);
  __break(1u);
}

void _xpc_remote_connection_connect_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_5(a1, a2);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_6();
  v8 = OUTLINED_FUNCTION_1(v2, v3, v4, v5, &dword_23039D000, v6, v7, "assertion failure: self.state == XPC_REMOTE_CONNECTION_STATE_NOT_CONNECTED -> %llu");
  OUTLINED_FUNCTION_17(v8);
  __break(1u);
}

void __xpc_remote_connection_send_message_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_13(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_8(&dword_23039D000, v0, v1, "[%p] Sending reply message", v2, v3, v4, v5);
}

void __xpc_remote_connection_send_message_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_13(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_8(&dword_23039D000, v0, v1, "[%p] Enqueueing message for send", v2, v3, v4, v5);
}

void __xpc_remote_connection_send_message_block_invoke_cold_3(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_5(a1, a2);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_6();
  v8 = OUTLINED_FUNCTION_1(v2, v3, v4, v5, &dword_23039D000, v6, v7, "assertion failure: self.type != XPC_REMOTE_CONNECTION_TYPE_LISTENER -> %llu");
  OUTLINED_FUNCTION_17(v8);
  __break(1u);
}

void _xpc_remote_connection_send_reply_message_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_5(a1, a2);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_6();
  v8 = OUTLINED_FUNCTION_1(v2, v3, v4, v5, &dword_23039D000, v6, v7, "assertion failure: self.state == XPC_REMOTE_CONNECTION_STATE_CONNECTED -> %llu");
  OUTLINED_FUNCTION_17(v8);
  __break(1u);
}

void __xpc_remote_connection_send_barrier_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_13(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_8(&dword_23039D000, v0, v1, "[%p] Enqueueing send barrier", v2, v3, v4, v5);
}

void __xpc_remote_connection_send_message_with_reply_block_invoke_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_5(a1, a2);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_6();
  v8 = OUTLINED_FUNCTION_1(v2, v3, v4, v5, &dword_23039D000, v6, v7, "assertion failure: _xpc_dictionary_get_reply_msg_id(message) == 0 -> %llu");
  OUTLINED_FUNCTION_17(v8);
  __break(1u);
}

void __xpc_remote_connection_send_message_with_reply_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_13(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_20(v0, v1, v2, v3, v4);
}

void __xpc_remote_connection_send_message_with_reply_sync_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_15(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_8(&dword_23039D000, v0, v1, "[%p] Received reply", v2, v3, v4, v5);
}

void xpc_remote_connection_send_reply_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_5(a1, a2);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_6();
  v8 = OUTLINED_FUNCTION_1(v2, v3, v4, v5, &dword_23039D000, v6, v7, "assertion failure: self -> %llu");
  OUTLINED_FUNCTION_17(v8);
  __break(1u);
}

void __xpc_remote_connection_message_dispose_block_invoke_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_5(a1, a2);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_6();
  v8 = OUTLINED_FUNCTION_1(v2, v3, v4, v5, &dword_23039D000, v6, v7, "assertion failure: msg_id != 0 -> %llu");
  OUTLINED_FUNCTION_17(v8);
  __break(1u);
}

void ___xpc_remote_connection_listen_block_invoke_cold_3(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_5(a1, a2);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_6();
  v8 = OUTLINED_FUNCTION_1(v2, v3, v4, v5, &dword_23039D000, v6, v7, "assertion failure: fd != -1 -> %llu");
  OUTLINED_FUNCTION_17(v8);
  __break(1u);
}

void ___xpc_remote_connection_listen_block_invoke_cold_4(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_5(a1, a2);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_6();
  v8 = OUTLINED_FUNCTION_1(v2, v3, v4, v5, &dword_23039D000, v6, v7, "assertion failure: device != ((void*)0) -> %llu");
  OUTLINED_FUNCTION_17(v8);
  __break(1u);
}

void _xpc_remote_connection_connect_complete_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_14(a1, a2);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1(v2, v3, v4, v5, &dword_23039D000, v6, v7, "assertion failure: self->root_channel == ((void*)0) -> %llu");
  _os_crash_msg();
  __break(1u);
}

void _xpc_remote_connection_connect_complete_cold_2(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_14(a1, a2);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1(v2, v3, v4, v5, &dword_23039D000, v6, v7, "assertion failure: fd != -1 -> %llu");
  _os_crash_msg();
  __break(1u);
}

void _xpc_remote_connection_connect_complete_cold_3(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_14(a1, a2);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1(v2, v3, v4, v5, &dword_23039D000, v6, v7, "assertion failure: fd == -1 -> %llu");
  _os_crash_msg();
  __break(1u);
}

void _xpc_remote_connection_connect_complete_cold_6(void *a1, _OWORD *a2, void *a3)
{
  OUTLINED_FUNCTION_14(a1, a2);
  OUTLINED_FUNCTION_19();
  [a3 state];
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_4(v4, v5, v6, v7, &dword_23039D000, v8, v9, "assertion failure: Connection unexpectedly transitioned from CONNECTING to %{public}s.");
  _os_crash_msg();
  __break(1u);
}

void _xpc_remote_connection_connect_complete_cold_7(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_14(a1, a2);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v4 = 3;
  }

  else
  {
    v4 = 2;
  }

  __error();
  OUTLINED_FUNCTION_23();
  _os_log_send_and_compose_impl(v4, a1, a2, 80, &dword_23039D000, MEMORY[0x277D86220], 16, "assertion failure: posix_err -> %{errno}d");
  _os_crash_msg();
  __break(1u);
}

void _xpc_remote_connection_connect_complete_cold_8(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_14(a1, a2);
  if (OUTLINED_FUNCTION_16())
  {
    v2 = 3;
  }

  else
  {
    v2 = 2;
  }

  __error();
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_1(v2, v3, v4, v5, &dword_23039D000, v6, v7, "assertion failure: posix_err -> %{errno}d");
  _os_crash_msg();
  __break(1u);
}

void _xpc_remote_connection_connect_complete_cold_9(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_14(a1, a2);
  if (OUTLINED_FUNCTION_16())
  {
    v2 = 3;
  }

  else
  {
    v2 = 2;
  }

  __error();
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_1(v2, v3, v4, v5, &dword_23039D000, v6, v7, "assertion failure: fcntl(fd, 4, 0x00000004) -> %{errno}d");
  _os_crash_msg();
  __break(1u);
}

void _xpc_remote_connection_connect_complete_cold_10()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_20(v0, v1, v2, v3, v4);
}

void _xpc_remote_connection_connect_failed_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_5(a1, a2);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_6();
  v8 = OUTLINED_FUNCTION_1(v2, v3, v4, v5, &dword_23039D000, v6, v7, "assertion failure: self->root_channel == ((void*)0) -> %llu");
  OUTLINED_FUNCTION_17(v8);
  __break(1u);
}

void _xpc_remote_connection_connect_failed_cold_2(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_5(a1, a2);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_6();
  v8 = OUTLINED_FUNCTION_1(v2, v3, v4, v5, &dword_23039D000, v6, v7, "assertion failure: self->root_connection == ((void*)0) -> %llu");
  OUTLINED_FUNCTION_17(v8);
  __break(1u);
}

void _xpc_remote_connection_connect_failed_cold_4(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_7(a1, a2);
  OUTLINED_FUNCTION_19();
  [v2 state];
  OUTLINED_FUNCTION_18();
  v9 = OUTLINED_FUNCTION_4(v3, v4, v5, v6, &dword_23039D000, v7, v8, "assertion failure: Connection unexpectedly transitioned from CONNECTING to %{public}s.");
  OUTLINED_FUNCTION_22(v9);
  __break(1u);
}

void _xpc_remote_connection_connect_failed_cold_5(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_5(a1, a2);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_6();
  v8 = OUTLINED_FUNCTION_1(v2, v3, v4, v5, &dword_23039D000, v6, v7, "assertion failure: self.type == XPC_REMOTE_CONNECTION_TYPE_RSD -> %llu");
  OUTLINED_FUNCTION_17(v8);
  __break(1u);
}

void _xpc_remote_connection_connect_doa_cold_2(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_5(a1, a2);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_6();
  v8 = OUTLINED_FUNCTION_1(v2, v3, v4, v5, &dword_23039D000, v6, v7, "assertion failure: self->root_listener == ((void*)0) -> %llu");
  OUTLINED_FUNCTION_17(v8);
  __break(1u);
}

void ___xpc_remote_connection_connect_complete_block_invoke_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_5(a1, a2);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_6();
  v8 = OUTLINED_FUNCTION_1(v2, v3, v4, v5, &dword_23039D000, v6, v7, "assertion failure: self->root_channel == channel -> %llu");
  OUTLINED_FUNCTION_17(v8);
  __break(1u);
}

void ___xpc_remote_connection_connect_complete_block_invoke_cold_2(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_7(a1, a2);
  OUTLINED_FUNCTION_19();
  [v2 state];
  OUTLINED_FUNCTION_18();
  v9 = OUTLINED_FUNCTION_4(v3, v4, v5, v6, &dword_23039D000, v7, v8, "assertion failure: Unexpected channel canceled event while in state %{public}s.");
  OUTLINED_FUNCTION_22(v9);
  __break(1u);
}

void ___xpc_remote_connection_connect_complete_block_invoke_cold_3(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_5(a1, a2);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_6();
  v8 = OUTLINED_FUNCTION_1(v2, v3, v4, v5, &dword_23039D000, v6, v7, "assertion failure: self.state == XPC_REMOTE_CONNECTION_STATE_CONNECTING -> %llu");
  OUTLINED_FUNCTION_17(v8);
  __break(1u);
}

void ___xpc_remote_connection_connect_complete_block_invoke_cold_4(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_5(a1, a2);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_6();
  v8 = OUTLINED_FUNCTION_1(v2, v3, v4, v5, &dword_23039D000, v6, v7, "assertion failure: body_buf != ((void*)0) && body_len > 0 -> %llu");
  OUTLINED_FUNCTION_17(v8);
  __break(1u);
}

void _xpc_remote_connection_handle_read_cold_3()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_20(v0, v1, v2, v3, v4);
}

void _xpc_remote_connection_handle_read_cold_6(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_7(a1, a2);
  OUTLINED_FUNCTION_19();
  v3 = [v2 state];
  v9 = OUTLINED_FUNCTION_4(v3, v4, v5, v6, &dword_23039D000, v7, v8, "assertion failure: self.state == XPC_REMOTE_CONNECTION_STATE_CHANNEL_SETUP (actually: %d)");
  OUTLINED_FUNCTION_22(v9);
  __break(1u);
}

void _xpc_remote_connection_handle_read_cold_10()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void _xpc_remote_connection_handle_read_cold_11(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_5(a1, a2);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_6();
  v8 = OUTLINED_FUNCTION_1(v2, v3, v4, v5, &dword_23039D000, v6, v7, "assertion failure: _next -> %llu");
  OUTLINED_FUNCTION_17(v8);
  __break(1u);
}

void _xpc_remote_connection_handle_read_cold_12()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void ___xpc_remote_connection_setup_nw_listener_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_15(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void __xpc_remote_connection_teardown_continue_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_7(a1, a2);
  OUTLINED_FUNCTION_19();
  [v2 state];
  OUTLINED_FUNCTION_18();
  v9 = OUTLINED_FUNCTION_4(v3, v4, v5, v6, &dword_23039D000, v7, v8, "assertion failure: connection is not disconnecting: %{public}s");
  OUTLINED_FUNCTION_22(v9);
  __break(1u);
}

void __xpc_remote_connection_teardown_continue_cold_3(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_5(a1, a2);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_6();
  v8 = OUTLINED_FUNCTION_1(v2, v3, v4, v5, &dword_23039D000, v6, v7, "assertion failure: ((self)->pending_streams_stqh_first == ((void*)0)) -> %llu");
  OUTLINED_FUNCTION_17(v8);
  __break(1u);
}

void ___xpc_remote_connection_handle_new_channel_block_invoke_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_7(a1, a2);
  OUTLINED_FUNCTION_19();
  [*v2 state];
  OUTLINED_FUNCTION_18();
  v9 = OUTLINED_FUNCTION_4(v3, v4, v5, v6, &dword_23039D000, v7, v8, "assertion failure: Unexpected channel canceled event while in state %{public}s.");
  OUTLINED_FUNCTION_22(v9);
  __break(1u);
}

void ___xpc_remote_connection_handle_new_channel_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_15(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_8(&dword_23039D000, v0, v1, "[%p] Got READY for incoming stream", v2, v3, v4, v5);
}

void ___xpc_remote_connection_handle_new_channel_block_invoke_237_cold_1()
{
  OUTLINED_FUNCTION_13(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_12(&dword_23039D000, v0, v1, "[%p] Unexpected non-HEADER message", v2, v3, v4, v5);
}

void ___xpc_remote_connection_handle_new_channel_block_invoke_237_cold_2()
{
  OUTLINED_FUNCTION_13(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void ___xpc_remote_connection_handle_new_channel_block_invoke_237_cold_3()
{
  OUTLINED_FUNCTION_13(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void ___xpc_remote_connection_handle_new_channel_block_invoke_237_cold_4()
{
  OUTLINED_FUNCTION_13(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_12(&dword_23039D000, v0, v1, "[%p] First message server reply channel not OPENS_REPLY_CHANNEL", v2, v3, v4, v5);
}

void ___xpc_remote_connection_handle_new_channel_block_invoke_237_cold_5()
{
  OUTLINED_FUNCTION_13(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_12(&dword_23039D000, v0, v1, "[%p] Got HEADER with invalid msg_id 0", v2, v3, v4, v5);
}

void ___xpc_remote_connection_handle_new_channel_block_invoke_237_cold_6()
{
  OUTLINED_FUNCTION_13(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void ___xpc_remote_connection_handle_new_channel_block_invoke_238_cold_1()
{
  OUTLINED_FUNCTION_15(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void _xpc_remote_channel_send_stream_header_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_5(a1, a2);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_6();
  v8 = OUTLINED_FUNCTION_1(v2, v3, v4, v5, &dword_23039D000, v6, v7, "assertion failure: direction != XPC_REMOTE_CHANNEL_STREAM_DIRECTION_MSG_ORIENTED -> %llu");
  OUTLINED_FUNCTION_17(v8);
  __break(1u);
}

void _xpc_remote_channel_send_stream_header_cold_2(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_5(a1, a2);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_6();
  v8 = OUTLINED_FUNCTION_1(v2, v3, v4, v5, &dword_23039D000, v6, v7, "assertion failure: stream_id != 0 -> %llu");
  OUTLINED_FUNCTION_17(v8);
  __break(1u);
}

void ___xpc_remote_connection_ready_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_15(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void ___xpc_remote_connection_ready_block_invoke_242_cold_1()
{
  OUTLINED_FUNCTION_13(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void ___xpc_remote_connection_handle_read_block_invoke_3_cold_1()
{
  OUTLINED_FUNCTION_15(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_20(&dword_23039D000, v0, v1, "[%p] Handler block for %llx complete, re-arming", v2);
}

void _xpc_remote_connection_wakeup_cold_3()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_20(v0, v1, v2, v3, v4);
}

void _xpc_remote_connection_send_ool_message_content_cold_2(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_14(a1, a2);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1(v2, v3, v4, v5, &dword_23039D000, v6, v7, "assertion failure: self.state == XPC_REMOTE_CONNECTION_STATE_CONNECTED -> %llu");
  _os_crash_msg();
  __break(1u);
}

void ___xpc_remote_connection_wakeup_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_13(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void ___xpc_remote_connection_wakeup_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_13(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_20(v0, v1, v2, v3, v4);
}

void ___recv_file_transfer_block_invoke_2_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_5(a1, a2);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_6();
  v8 = OUTLINED_FUNCTION_1(v2, v3, v4, v5, &dword_23039D000, v6, v7, "assertion failure: self.state <= XPC_REMOTE_CONNECTION_STATE_CONNECTED -> %llu");
  OUTLINED_FUNCTION_17(v8);
  __break(1u);
}

void ___recv_file_transfer_block_invoke_2_cold_2(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_5(a1, a2);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_6();
  v8 = OUTLINED_FUNCTION_1(v2, v3, v4, v5, &dword_23039D000, v6, v7, "assertion failure: ps->direction == direction -> %llu");
  OUTLINED_FUNCTION_17(v8);
  __break(1u);
}

void ___recv_file_transfer_block_invoke_5_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_5(a1, a2);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_6();
  v8 = OUTLINED_FUNCTION_1(v2, v3, v4, v5, &dword_23039D000, v6, v7, "assertion failure: ps->direction == XPC_REMOTE_CHANNEL_STREAM_DIRECTION_RX -> %llu");
  OUTLINED_FUNCTION_17(v8);
  __break(1u);
}

void ___xpc_remote_connection_send_reply_message_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_15(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void ___xpc_remote_connection_send_reply_message_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_15(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_8(&dword_23039D000, v0, v1, "[%p] Reply message send completed", v2, v3, v4, v5);
}

void __xpc_remote_channel_create_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_15(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_8(&dword_23039D000, v0, v1, "[%p] Got nw_connection ready", v2, v3, v4, v5);
}

void __xpc_remote_channel_create_block_invoke_cold_2(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_5(a1, a2);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_6();
  v8 = OUTLINED_FUNCTION_1(v2, v3, v4, v5, &dword_23039D000, v6, v7, "assertion failure: self->state == XPC_REMOTE_CHANNEL_STATE_WAITING -> %llu");
  OUTLINED_FUNCTION_17(v8);
  __break(1u);
}

void __xpc_remote_channel_create_block_invoke_cold_4()
{
  OUTLINED_FUNCTION_15(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __xpc_remote_channel_create_block_invoke_cold_5()
{
  OUTLINED_FUNCTION_15(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_11();
  _os_log_error_impl(v0, v1, OS_LOG_TYPE_ERROR, v2, v3, 0x12u);
}

void __xpc_remote_channel_create_block_invoke_22_cold_1()
{
  OUTLINED_FUNCTION_15(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_8(&dword_23039D000, v0, v1, "[%p] Got nw_connection read close", v2, v3, v4, v5);
}

void __xpc_remote_channel_create_block_invoke_24_cold_1()
{
  OUTLINED_FUNCTION_15(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_8(&dword_23039D000, v0, v1, "[%p] Got nw_connection write close", v2, v3, v4, v5);
}

void __xpc_remote_channel_create_block_invoke_25_cold_1()
{
  OUTLINED_FUNCTION_15(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_8(&dword_23039D000, v0, v1, "[%p] Got nw_connection cancel handler", v2, v3, v4, v5);
}

void __xpc_remote_channel_create_block_invoke_30_cold_1()
{
  OUTLINED_FUNCTION_15(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_11();
  _os_log_error_impl(v0, v1, OS_LOG_TYPE_ERROR, v2, v3, 0x12u);
}

void __xpc_remote_channel_create_block_invoke_30_cold_2()
{
  OUTLINED_FUNCTION_15(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_8(&dword_23039D000, v0, v1, "[%p] PING sent successfully", v2, v3, v4, v5);
}

void xpc_remote_channel_arm_read_cold_3(void *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v7 = 3;
  }

  else
  {
    v7 = 2;
  }

  OUTLINED_FUNCTION_12_0(v7, v2, v3, v4, &dword_23039D000, v5, v6, "assertion failure: state should be >= CANCELING if no connection, actually %d");
  _os_crash_msg();
  __break(1u);
}

void __xpc_remote_channel_arm_read_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void __xpc_remote_channel_arm_read_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
}

void __xpc_remote_channel_arm_read_block_invoke_cold_4(void *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v7 = 3;
  }

  else
  {
    v7 = 2;
  }

  OUTLINED_FUNCTION_12_0(v7, v2, v3, v4, &dword_23039D000, v5, v6, "assertion failure: state should be >= CANCELING if no connection, actually %d");
  _os_crash_msg();
  __break(1u);
}

void __xpc_remote_channel_arm_read_block_invoke_cold_5()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_9();
  _os_log_error_impl(&dword_23039D000, v0, OS_LOG_TYPE_ERROR, "[%p] Invalid message size received, disconnecting", v1, 0xCu);
}

void __xpc_remote_channel_send_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_15(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_10();
  v4 = 2048;
  v5 = v0;
  OUTLINED_FUNCTION_20(&dword_23039D000, v1, v2, "[%p] Message %llu send completed successfully", v3);
}

void xpc_remote_channel_attach_stream_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_5(a1, a2);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_6();
  v8 = OUTLINED_FUNCTION_1(v2, v3, v4, v5, &dword_23039D000, v6, v7, "assertion failure: self->stream_direction == XPC_REMOTE_CHANNEL_STREAM_DIRECTION_MSG_ORIENTED -> %llu");
  OUTLINED_FUNCTION_17(v8);
  __break(1u);
}

void xpc_remote_channel_attach_stream_cold_2()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
}

void xpc_remote_channel_attach_stream_cold_4(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_5(a1, a2);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_6();
  v8 = OUTLINED_FUNCTION_1(v2, v3, v4, v5, &dword_23039D000, v6, v7, "assertion failure: self->stream_io != ((void*)0) -> %llu");
  OUTLINED_FUNCTION_17(v8);
  __break(1u);
}

void xpc_remote_channel_attach_stream_cold_6(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_5(a1, a2);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_6();
  v8 = OUTLINED_FUNCTION_1(v2, v3, v4, v5, &dword_23039D000, v6, v7, "assertion failure: direction != XPC_REMOTE_CHANNEL_STREAM_DIRECTION_DUPLEX -> %llu");
  OUTLINED_FUNCTION_17(v8);
  __break(1u);
}

void xpc_remote_channel_attach_stream_cold_7(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_5(a1, a2);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_6();
  v8 = OUTLINED_FUNCTION_1(v2, v3, v4, v5, &dword_23039D000, v6, v7, "assertion failure: self->state != XPC_REMOTE_CHANNEL_STATE_CANCELED -> %llu");
  OUTLINED_FUNCTION_17(v8);
  __break(1u);
}

void __xpc_remote_channel_attach_stream_block_invoke_35_cold_1()
{
  OUTLINED_FUNCTION_15(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
}

void _xpc_remote_channel_enqueue_rx_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_9();
  v2 = 1024;
  v3 = 1;
  v4 = 1024;
  v5 = 0x20000;
  _os_log_debug_impl(&dword_23039D000, v0, OS_LOG_TYPE_DEBUG, "[%p] Enqueueing connection read for %d to %d bytes", v1, 0x18u);
}

void _xpc_remote_channel_deliver_message_cold_1(uint64_t a1, uint64_t a2, uint64_t a3, NSObject *a4)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 134218240;
  v5 = a3;
  v6 = 2048;
  v7 = a1;
  OUTLINED_FUNCTION_20(&dword_23039D000, a4, a3, "[%p] Delivering message %llu to handler", &v4);
}

void ___xpc_remote_channel_header_handler_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_11();
  _os_log_error_impl(v0, v1, OS_LOG_TYPE_ERROR, v2, v3, 0x16u);
}

void ___xpc_remote_channel_header_handler_block_invoke_cold_3()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_9();
  _os_log_error_impl(&dword_23039D000, v0, OS_LOG_TYPE_ERROR, "[%p] Body read returned without data, disconnecting", v1, 0xCu);
}

void ___xpc_remote_channel_enqueue_tx_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
}

void ___xpc_remote_channel_enqueue_tx_block_invoke_46_cold_1()
{
  OUTLINED_FUNCTION_15(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_11();
  _os_log_error_impl(v0, v1, OS_LOG_TYPE_ERROR, v2, v3, 0x16u);
}

void ___xpc_remote_channel_enqueue_tx_block_invoke_47_cold_1()
{
  OUTLINED_FUNCTION_15(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_8(&dword_23039D000, v0, v1, "[%p] Connection write completed, more writes expected", v2, v3, v4, v5);
}

void ___xpc_remote_channel_enqueue_tx_block_invoke_47_cold_2()
{
  OUTLINED_FUNCTION_15(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_8(&dword_23039D000, v0, v1, "[%p] Connection write completed, reenqueueing", v2, v3, v4, v5);
}

void ___xpc_remote_channel_enqueue_rx_block_invoke_cold_1(int a1, dispatch_data_t data, NSObject *a3)
{
  v5 = *MEMORY[0x277D85DE8];
  if (data)
  {
    dispatch_data_get_size(data);
  }

  OUTLINED_FUNCTION_6_0();
  _os_log_error_impl(&dword_23039D000, a3, OS_LOG_TYPE_ERROR, "[%p] DROPPING %zu bytes on canceled stream", v4, 0x16u);
}

void ___xpc_remote_channel_enqueue_rx_block_invoke_cold_3(int a1, dispatch_data_t data, NSObject *a3)
{
  v6 = *MEMORY[0x277D85DE8];
  dispatch_data_get_size(data);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_20(&dword_23039D000, a3, v4, "[%p] Connection read succeeded for %zd bytes. Enqueueing IO write.", v5);
}

void ___xpc_remote_channel_enqueue_rx_block_invoke_49_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_5(a1, a2);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_6();
  v8 = OUTLINED_FUNCTION_1(v2, v3, v4, v5, &dword_23039D000, v6, v7, "assertion failure: done -> %llu");
  OUTLINED_FUNCTION_17(v8);
  __break(1u);
}

void ___xpc_remote_channel_enqueue_rx_block_invoke_49_cold_2(int a1, dispatch_data_t data, NSObject *a3)
{
  v6 = *MEMORY[0x277D85DE8];
  if (data)
  {
    dispatch_data_get_size(data);
  }

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_20(&dword_23039D000, a3, v4, "[%p] IO write complete, %zd bytes remaining", v5);
}