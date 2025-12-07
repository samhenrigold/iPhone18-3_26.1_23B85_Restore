uint64_t memgraph_from_task_save_immediate(uint64_t a1, unsigned int a2, int a3, int64_t a4, uint64_t a5)
{
  v28 = *MEMORY[0x277D85DE8];
  if ((a1 - 1) < 0xFFFFFFFE)
  {
    if (a5)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v23 = "memgraph_from_task_save_immediate";
        v5 = MEMORY[0x277D86220];
        v6 = "%s: Context is unused. Clients should provide nil.";
LABEL_25:
        _os_log_error_impl(&dword_2588F2000, v5, OS_LOG_TYPE_ERROR, v6, buf, 0xCu);
        return 0xFFFFFFFFLL;
      }

      return 0xFFFFFFFFLL;
    }

    v12 = sub_2588F2E64();
    if (!v12)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v23 = "memgraph_from_task_save_immediate";
        _os_log_error_impl(&dword_2588F2000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s: Couldn't get RMEGetXPCConnection().", buf, 0xCu);
      }

      v7 = 0xFFFFFFFFLL;
      goto LABEL_23;
    }

    v13 = xpc_dictionary_create(0, 0, 0);
    v14 = v13;
    if (!v13)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v23 = "memgraph_from_task_save_immediate";
        _os_log_error_impl(&dword_2588F2000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s: Couldn't create xpc_dictionary.", buf, 0xCu);
      }

      v7 = 0xFFFFFFFFLL;
      goto LABEL_22;
    }

    xpc_dictionary_set_int64(v13, "MessageType", 3);
    xpc_dictionary_set_mach_send();
    xpc_dictionary_set_int64(v14, "ContentLevel", a2);
    xpc_dictionary_set_fd(v14, "MemgraphFileDescriptor", a3);
    xpc_dictionary_set_int64(v14, "TimeoutSeconds", a4);
    v15 = xpc_connection_send_message_with_reply_sync(v12, v14);
    v16 = v15;
    if (v15 && MEMORY[0x259C8E510](v15) == MEMORY[0x277D86468])
    {
      string = xpc_dictionary_get_string(v16, "ErrorDomain");
      if (!string)
      {
        v7 = 0;
        goto LABEL_15;
      }

      v18 = string;
      int64 = xpc_dictionary_get_int64(v16, "ErrorCode");
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v23 = "memgraph_from_task_save_immediate";
        v24 = 2080;
        v25 = v18;
        v26 = 2048;
        v27 = int64;
        _os_log_error_impl(&dword_2588F2000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s: xpc reply error: %s: %lld", buf, 0x20u);
      }

      v20 = MREErrorDomain;
      v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", v18];
      LODWORD(v20) = [(__CFString *)v20 isEqualToString:v21];

      if (v20 && (int64 - 8) <= 6)
      {
        v7 = dword_2588F3E38[int64 - 8];
        goto LABEL_15;
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v23 = "memgraph_from_task_save_immediate";
      _os_log_error_impl(&dword_2588F2000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s: Couldn't get reply dictionary.", buf, 0xCu);
    }

    v7 = 0xFFFFFFFFLL;
LABEL_15:

LABEL_22:
LABEL_23:

    return v7;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v23 = "memgraph_from_task_save_immediate";
    v5 = MEMORY[0x277D86220];
    v6 = "%s: Invalid task port.";
    goto LABEL_25;
  }

  return 0xFFFFFFFFLL;
}

id sub_2588F2E64()
{
  if (qword_27F969B88 != -1)
  {
    dispatch_once(&qword_27F969B88, &unk_2869C5808);
  }

  v1 = qword_27F969B80;

  return v1;
}

void sub_2588F2EB8()
{
  mach_service = xpc_connection_create_mach_service("com.apple.ReportMemoryException", 0, 2uLL);
  v1 = qword_27F969B80;
  qword_27F969B80 = mach_service;

  if (qword_27F969B80)
  {
    xpc_connection_set_event_handler(qword_27F969B80, &unk_2869C5828);
    v2 = qword_27F969B80;

    xpc_connection_resume(v2);
  }
}

void sub_2588F2F2C(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = MEMORY[0x259C8E510]();
  v4 = v2 != MEMORY[0x277D863F0] && v3 == MEMORY[0x277D86480];
  if (v4 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    string = xpc_dictionary_get_string(v2, *MEMORY[0x277D86400]);
    v6 = 136315138;
    v7 = string;
    _os_log_error_impl(&dword_2588F2000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Got xpc error message: %s\n", &v6, 0xCu);
  }
}

void ReportMemoryExceptionFromTask(uint64_t a1, char a2, const char *a3, void *a4, void *a5)
{
  v44 = *MEMORY[0x277D85DE8];
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if ((a1 - 1) >= 0xFFFFFFFE)
  {
    if (v10)
    {
      v14 = [MEMORY[0x277CCA9B8] errorWithDomain:MREErrorDomain code:9 userInfo:0];
      (v11)[2](v11, v14);
    }

    goto LABEL_29;
  }

  object_addr = 0;
  object_type = 0;
  if (mach_port_kernel_object(*MEMORY[0x277D85F48], a1, &object_type, &object_addr))
  {
    v12 = 0;
  }

  else
  {
    v12 = object_type == 2;
  }

  if (!v12)
  {
    if (v11)
    {
      v13 = [MEMORY[0x277CCA9B8] errorWithDomain:MREErrorDomain code:9 userInfo:0];
      (v11)[2](v11, v13);
LABEL_28:

      goto LABEL_29;
    }

    goto LABEL_29;
  }

  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = sub_2588F38CC;
  v38 = sub_2588F38DC;
  v39 = 0;
  if (a3)
  {
    goto LABEL_13;
  }

  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = sub_2588F38E4;
  v33[3] = &unk_2798A85C0;
  v33[4] = &v34;
  if ((sub_2588F3980(a1, v33) & 1) == 0)
  {
    x = 0;
    if (pid_for_task(a1, &x))
    {
      goto LABEL_18;
    }

    if ((proc_pidpath(x, buf, 0x400u) - 1) <= 0x3FE)
    {
      v22 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:buf];
      v23 = v35[5];
      v35[5] = v22;
    }
  }

  a3 = [v35[5] UTF8String];
  if (a3)
  {
LABEL_13:
    v15 = strncmp(a3, "/usr/libexec/ReportMemoryException", 0x400uLL) == 0;
    _Block_object_dispose(&v34, 8);

    if (!v15)
    {
      if (SMJobIsEnabled())
      {
        v16 = sub_2588F2E64();
        if (v16)
        {
          v17 = v16;
          v24[0] = MEMORY[0x277D85DD0];
          v24[1] = 3221225472;
          v24[2] = sub_2588F3514;
          v24[3] = &unk_2798A8598;
          v27 = v11;
          v28 = a1;
          v29 = a2;
          v13 = v17;
          v25 = v13;
          v26 = v9;
          v18 = MEMORY[0x259C8E370](v24);
          v18[2](v18, 0);

          v19 = v27;
        }

        else
        {
          if (!v11)
          {
            v13 = 0;
            goto LABEL_28;
          }

          v19 = [MEMORY[0x277CCA9B8] errorWithDomain:MREErrorDomain code:7 userInfo:0];
          (v11)[2](v11, v19);
          v13 = 0;
        }
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v43 = @"RME is disabled. To re-enable use 'ReportMemoryExceptionTool --enable'";
          _os_log_impl(&dword_2588F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%@. Aborting.", buf, 0xCu);
        }

        if (!v11)
        {
          goto LABEL_29;
        }

        v20 = MEMORY[0x277CCA9B8];
        v21 = MREErrorDomain;
        v40 = *MEMORY[0x277CCA450];
        v41 = @"RME is disabled. To re-enable use 'ReportMemoryExceptionTool --enable'";
        v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
        v19 = [v20 errorWithDomain:v21 code:17 userInfo:v13];
        (v11)[2](v11, v19);
      }

      goto LABEL_28;
    }

    goto LABEL_19;
  }

LABEL_18:
  _Block_object_dispose(&v34, 8);

LABEL_19:
  if (v11)
  {
    v13 = [MEMORY[0x277CCA9B8] errorWithDomain:MREErrorDomain code:10 userInfo:0];
    (v11)[2](v11, v13);
    goto LABEL_28;
  }

LABEL_29:
}

void sub_2588F34EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2588F3514(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    v5 = xpc_dictionary_create(0, 0, 0);
    if (v5)
    {
      v19 = 0;
      if (MEMORY[0x259C8E260](*MEMORY[0x277D85F48], *(a1 + 56), 0, &v19) != 15)
      {
        xpc_dictionary_set_int64(v5, "MessageType", 2);
        xpc_dictionary_set_mach_send();
        xpc_dictionary_set_BOOL(v5, "WithMemgraph", *(a1 + 60));
        v11 = *(a1 + 48);
        if (!v11)
        {
          xpc_connection_send_message(*(a1 + 32), v5);
          goto LABEL_14;
        }

        v13 = *(a1 + 32);
        v12 = *(a1 + 40);
        if (v12)
        {
          handler[0] = MEMORY[0x277D85DD0];
          handler[1] = 3221225472;
          handler[2] = sub_2588F376C;
          handler[3] = &unk_2798A8570;
          v17 = v11;
          xpc_connection_send_message_with_reply(v13, v5, v12, handler);

          goto LABEL_14;
        }

        v10 = xpc_connection_send_message_with_reply_sync(*(a1 + 32), v5);
        v14 = *(a1 + 48);
        v15 = sub_2588F37CC(v10);
        (*(v14 + 16))(v14, v15);

        goto LABEL_13;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2588F2000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Timed out on authenticating. Skipping sending corpse to RME for analysis.", buf, 2u);
      }

      v6 = *(a1 + 48);
      if (!v6)
      {
        goto LABEL_14;
      }

      v7 = MEMORY[0x277CCA9B8];
      v8 = MREErrorDomain;
      v9 = 15;
    }

    else
    {
      v6 = *(a1 + 48);
      if (!v6)
      {
LABEL_14:

        goto LABEL_15;
      }

      v7 = MEMORY[0x277CCA9B8];
      v8 = MREErrorDomain;
      v9 = 6;
    }

    v10 = [v7 errorWithDomain:v8 code:v9 userInfo:0];
    (*(v6 + 16))(v6, v10);
LABEL_13:

    goto LABEL_14;
  }

  v4 = *(a1 + 48);
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
  }

LABEL_15:
}

void sub_2588F376C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = sub_2588F37CC(a2);
  (*(v2 + 16))(v2, v3);
}

char *sub_2588F37CC(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 && MEMORY[0x259C8E510](v1) == MEMORY[0x277D86468])
  {
    string = xpc_dictionary_get_string(v2, "ErrorDomain");
    if (string)
    {
      int64 = xpc_dictionary_get_int64(v2, "ErrorCode");
      v6 = MEMORY[0x277CCA9B8];
      v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:string];
      string = [v6 errorWithDomain:v7 code:int64 userInfo:0];
    }
  }

  else
  {
    string = [MEMORY[0x277CCA9B8] errorWithDomain:MREErrorDomain code:7 userInfo:0];
  }

  return string;
}

uint64_t sub_2588F38CC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2588F38E4(uint64_t a1, _DWORD *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  if (*a2 == 2063)
  {
    __strlcpy_chk();
    v3 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v6];
    v4 = *(*(a1 + 32) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
  }
}

uint64_t sub_2588F3980(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!a1)
  {
    goto LABEL_12;
  }

  v9 = 0;
  kcd_addr_begin = 0;
  v4 = MEMORY[0x277D85F48];
  if (task_map_corpse_info_64(*MEMORY[0x277D85F48], a1, &kcd_addr_begin, &v9))
  {
LABEL_11:
    a1 = 0;
    goto LABEL_12;
  }

  v5 = kcd_addr_begin;
  v6 = v9 + kcd_addr_begin;
  v7 = kcd_addr_begin + 16;
  if (kcd_addr_begin + 16 > v9 + kcd_addr_begin || v7 + *(kcd_addr_begin + 4) > v6 || *kcd_addr_begin != -559025833)
  {
    MEMORY[0x259C8E430](*v4, kcd_addr_begin);
    goto LABEL_11;
  }

  do
  {
    if (v7 + v5[1] > v6)
    {
      break;
    }

    if (*v5 == -242132755)
    {
      break;
    }

    v3[2](v3, v5, v6);
    v5 = (v7 + v5[1]);
    v7 = (v5 + 4);
  }

  while ((v5 + 4) <= v6);
  MEMORY[0x259C8E430](*v4, kcd_addr_begin, v9);
  a1 = 1;
LABEL_12:

  return a1;
}