void sub_23C492AC8(uint64_t *result, unint64_t a2)
{
  qword_27E1F6690 = 0;
  qword_27E1F6698 = 0;
  qword_27E1F66A0 = 0;
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_23C492B88();
  }
}

uint64_t sub_23C492B54(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t sub_23C492B98()
{
  v0 = 0x27E1F6000uLL;
  if ((atomic_load_explicit(&qword_27E1F66B8, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_27E1F66B8);
    v0 = 10705920000;
    if (v2)
    {
      qword_27E1F66B0 = os_log_create("com.apple.agx", "AGCEnv");
      __cxa_guard_release(&qword_27E1F66B8);
      v0 = 10705920000;
    }
  }

  return *(v0 + 1712);
}

void *sub_23C492C18(void *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_23C492B88();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  *(a1 + 23) = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  *(a1 + v5) = 0;
  return a1;
}

void sub_23C492CD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 8);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_23C492D50;
  v5[3] = &unk_278BBEE20;
  v5[4] = a2;
  v5[5] = a3;
  v5[6] = a1;
  v5[7] = a4;
  dispatch_sync(v4, v5);
}

void sub_23C492D50(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = sub_23C492DEC(v2, *(a1 + 32), *(a1 + 40));
  xpc_dictionary_set_string(v3, "log_file_name", *(a1 + 56));
  v4 = xpc_connection_send_message_with_reply_sync(*(v2 + 88), v3);
  if (MEMORY[0x23EED39E0]() == MEMORY[0x277D86480])
  {
    syslog(3, "AGX compiler connection: Failed to log build request");
  }

  xpc_release(v3);

  xpc_release(v4);
}

xpc_object_t sub_23C492DEC(uint64_t a1, NSObject *a2, NSObject *a3)
{
  v6 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v6, "architecture", *(a1 + 20));
  v7 = *(a1 + 47);
  if ((v7 & 0x8000000000000000) != 0)
  {
    v8 = *(a1 + 24);
    v7 = *(a1 + 32);
  }

  else
  {
    v8 = (a1 + 24);
  }

  v9 = xpc_data_create(v8, v7);
  xpc_dictionary_set_value(v6, "compiler_options", v9);
  xpc_release(v9);
  v10 = xpc_data_create_with_dispatch_data(a2);
  xpc_dictionary_set_value(v6, "state", v10);
  xpc_release(v10);
  if (a3)
  {
    v11 = xpc_data_create_with_dispatch_data(a3);
    xpc_dictionary_set_value(v6, "bitcode", v11);
    xpc_release(v11);
  }

  return v6;
}

uint64_t sub_23C492ED0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v52 = *MEMORY[0x277D85DE8];
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 0;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  v7 = a1[1];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = sub_23C49330C;
  v29[3] = &unk_278BBEDF8;
  v29[4] = a2;
  v29[5] = a3;
  v29[6] = a4;
  v29[7] = &v30;
  v29[8] = &v34;
  v29[9] = a1;
  dispatch_sync(v7, v29);
  if (*(v31 + 24) == 1 && MGGetBoolAnswer())
  {
    sub_23C492C18(&v42, &unk_23C4951A9);
    v8 = getpid();
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    buffer = 0u;
    v45 = 0u;
    v9 = proc_name(v8, &buffer, 0x80u);
    if (v9)
    {
      v10 = v9;
      p_buffer = &buffer;
      v12 = MEMORY[0x277D85DE0];
      do
      {
        v13 = *p_buffer;
        if ((v13 & 0x80000000) != 0)
        {
          v14 = __maskrune(v13, 0x500uLL);
        }

        else
        {
          v14 = *(v12 + 4 * v13 + 60) & 0x500;
        }

        if (!v14)
        {
          *p_buffer = 95;
        }

        p_buffer = (p_buffer + 1);
        --v10;
      }

      while (v10);
    }

    std::string::append(&v42, &buffer);
    v43 = v42;
    memset(&v42, 0, sizeof(v42));
    v15 = getpid();
    std::to_string(&v39, v15);
    v16 = std::string::insert(&v39, 0, "_");
    v17 = *&v16->__r_.__value_.__l.__data_;
    v40.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
    *&v40.__r_.__value_.__l.__data_ = v17;
    v16->__r_.__value_.__l.__size_ = 0;
    v16->__r_.__value_.__r.__words[2] = 0;
    v16->__r_.__value_.__r.__words[0] = 0;
    v18 = std::string::append(&v40, "_");
    v19 = *&v18->__r_.__value_.__l.__data_;
    v41.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
    *&v41.__r_.__value_.__l.__data_ = v19;
    v18->__r_.__value_.__l.__size_ = 0;
    v18->__r_.__value_.__r.__words[2] = 0;
    v18->__r_.__value_.__r.__words[0] = 0;
    LODWORD(v18) = dword_27E1F66D0++;
    std::to_string(&v38, v18);
    if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v20 = &v38;
    }

    else
    {
      v20 = v38.__r_.__value_.__r.__words[0];
    }

    if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v38.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v38.__r_.__value_.__l.__size_;
    }

    v22 = std::string::append(&v41, v20, size);
    v23 = *&v22->__r_.__value_.__l.__data_;
    *&v45 = *(&v22->__r_.__value_.__l + 2);
    buffer = v23;
    v22->__r_.__value_.__l.__size_ = 0;
    v22->__r_.__value_.__r.__words[2] = 0;
    v22->__r_.__value_.__r.__words[0] = 0;
    if ((SBYTE7(v45) & 0x80u) == 0)
    {
      v24 = &buffer;
    }

    else
    {
      v24 = buffer;
    }

    if ((SBYTE7(v45) & 0x80u) == 0)
    {
      v25 = BYTE7(v45);
    }

    else
    {
      v25 = *(&buffer + 1);
    }

    std::string::append(&v43, v24, v25);
    if (SBYTE7(v45) < 0)
    {
      operator delete(buffer);
    }

    if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v38.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v41.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v40.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v39.__r_.__value_.__l.__data_);
    }

    if ((v43.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v26 = &v43;
    }

    else
    {
      v26 = v43.__r_.__value_.__r.__words[0];
    }

    (*(*a1 + 24))(a1, a2, a3, v26);
    if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v43.__r_.__value_.__l.__data_);
    }
  }

  v27 = *(v35 + 6);
  _Block_object_dispose(&v30, 8);
  _Block_object_dispose(&v34, 8);
  return v27;
}

void sub_23C493238(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, void *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51, char a52, uint64_t a53, int a54, __int16 a55, char a56, char a57)
{
  if (*(v57 - 233) < 0)
  {
    operator delete(*(v57 - 256));
  }

  _Block_object_dispose(&a19, 8);
  _Block_object_dispose(&a23, 8);
  _Unwind_Resume(a1);
}

void sub_23C49330C(uint64_t a1)
{
  v41 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 72);
  v3 = _os_activity_create(&dword_23C492000, "compiling shader", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v3, &state);
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  block = 0;
  *&v36 = &block;
  *(&v36 + 1) = 0x9812000000;
  v37 = sub_23C4944D8;
  v38 = nullsub_4;
  v39 = "";
  CC_SHA256_Init(&v40);
  applier = MEMORY[0x277D85DD0];
  p_applier = 3221225472;
  v32 = sub_23C494508;
  v33 = &unk_278BBEE68;
  p_block = &block;
  dispatch_data_apply(v5, &applier);
  if (v4)
  {
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = sub_23C494538;
    v29[3] = &unk_278BBEE68;
    v29[4] = &block;
    dispatch_data_apply(v4, v29);
  }

  CC_SHA256_Final((v2 + 48), (v36 + 48));
  _Block_object_dispose(&block, 8);
  v6 = *(v2 + 80);
  v7 = *(a1 + 48);
  applier = 0;
  p_applier = &applier;
  v32 = 0x2020000000;
  LODWORD(v33) = 0;
  if (*v6)
  {
    v8 = *(v6 + 24);
    block = MEMORY[0x277D85DD0];
    *&v36 = 3221225472;
    *(&v36 + 1) = sub_23C4945C4;
    v37 = &unk_278BBEE90;
    *v40.count = v6;
    *v40.hash = v2 + 48;
    v38 = v7;
    v39 = &applier;
    dispatch_sync(v8, &block);
    v9 = *(p_applier + 24);
    _Block_object_dispose(&applier, 8);
    if (v9)
    {
      *(*(*(a1 + 64) + 8) + 24) = 2;
      goto LABEL_36;
    }
  }

  else
  {
    _Block_object_dispose(&applier, 8);
  }

  v26 = a1;
  v27 = v3;
  v10 = sub_23C492DEC(v2, *(a1 + 32), *(a1 + 40));
  v11 = 0;
  v12 = 1;
  v13 = MEMORY[0x277D86480];
  v14 = MEMORY[0x277D863F0];
  while (1)
  {
    v15 = v11;
    if ((v12 & 1) == 0)
    {
      v16 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_BOOL(v16, "connection_ping", 1);
      v17 = mach_absolute_time();
      v18 = 0;
      do
      {
        if (v18 == 5)
        {
          sleep(1u);
        }

        v19 = xpc_connection_send_message_with_reply_sync(*(v2 + 88), v16);
        v20 = MEMORY[0x23EED39E0]();
        xpc_release(v19);
        if (v18 > 8)
        {
          break;
        }

        ++v18;
      }

      while (v20 == v13);
      xpc_release(v16);
      if (v20 == v13)
      {
        v3 = v27;
        v25 = mach_absolute_time();
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
        {
          if (qword_27E1F66C8 != -1)
          {
            dispatch_once(&qword_27E1F66C8, &unk_284F11648);
          }

          block = 0xA04000200;
          LOWORD(v36) = 2048;
          *(&v36 + 2) = (*algn_27E1F66C4 + (v25 - v17) * dword_27E1F66C0 - 1) / *algn_27E1F66C4;
          _os_log_fault_impl(&dword_23C492000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "AGXCompiler: failed to ping the compiler service %u times over %llu ns", &block, 0x12u);
        }

        v22 = v26[7];
        goto LABEL_33;
      }
    }

    v21 = xpc_connection_send_message_with_reply_sync(*(v2 + 88), v10);
    if (MEMORY[0x23EED39E0]() != v13)
    {
      break;
    }

    if (v21 == v14)
    {
      syslog(4, "Compiler connection failed with XPC_ERROR_CONNECTION_INTERRUPTED");
    }

    else
    {
      if (v21 == MEMORY[0x277D863F8])
      {
        syslog(3, "Compiler connection failed with XPC_ERROR_CONNECTION_INVALID");
LABEL_23:
        sub_23C4939A4(v2);
        goto LABEL_24;
      }

      if (v21 == MEMORY[0x277D86420])
      {
        syslog(3, "Compiler connection failed  with XPC_ERROR_TERMINATION_IMMINENT");
        goto LABEL_23;
      }

      syslog(3, "Compiler connection failed with unknown XPC error");
    }

LABEL_24:
    v12 = 0;
    v11 = 1;
    if (v15)
    {
      sub_23C4938F4(v21);
      v3 = v27;
      v22 = v26[7];
LABEL_33:
      *(*(v22 + 8) + 24) = 1;
      goto LABEL_36;
    }
  }

  xpc_release(v10);
  applier = 0;
  v3 = v27;
  v29[0] = xpc_dictionary_get_data(v21, "reply", &applier);
  if (v29[0])
  {
    (*(v26[6] + 16))();
    if (xpc_dictionary_get_BOOL(v21, "error"))
    {
      v23 = *(v2 + 80);
      if (*v23)
      {
        v24 = *(v23 + 24);
        block = MEMORY[0x277D85DD0];
        *&v36 = 3221225472;
        *(&v36 + 1) = sub_23C49477C;
        v37 = &unk_278BBEEB0;
        v38 = v23;
        v39 = v29;
        *v40.count = &applier;
        *v40.hash = v2 + 48;
        dispatch_sync(v24, &block);
      }

      *(*(v26[8] + 8) + 24) = 1;
    }
  }

  else
  {
    sub_23C4938F4(v21);
    *(*(v26[7] + 8) + 24) = 1;
  }

  xpc_release(v21);
LABEL_36:

  os_activity_scope_leave(&state);
}

void sub_23C4938F4(uint64_t a1)
{
  if (a1 == MEMORY[0x277D863F0])
  {
    v1 = "XPC_ERROR_CONNECTION_INTERRUPTED";
  }

  else if (a1 == MEMORY[0x277D863F8])
  {
    v1 = "XPC_ERROR_CONNECTION_INVALID";
  }

  else if (a1 == MEMORY[0x277D86420])
  {
    v1 = "XPC_ERROR_TERMINATION_IMMINENT";
  }

  else if (a1 && MEMORY[0x23EED39E0]() == MEMORY[0x277D86480])
  {
    v1 = "XPC_TYPE_ERROR_UNKNOWN";
  }

  else
  {
    v1 = "XPC_SERVICE_BUILD_FAILURE";
  }

  syslog(3, "AGX compiler connection %s", v1);
}

void sub_23C4939A4(uint64_t a1)
{
  syslog(3, "Deleting compiler connection and creating a new one");
  xpc_connection_cancel(*(a1 + 88));
  xpc_release(*(a1 + 88));
  v2 = xpc_connection_create("com.apple.AGXCompilerService-S2A8", 0);
  *(a1 + 88) = v2;
  xpc_connection_set_event_handler(v2, &unk_284F11698);
  v3 = *(a1 + 88);

  xpc_connection_resume(v3);
}

void sub_23C493A1C(uint64_t a1)
{
  sub_23C493A54(a1);

  JUMPOUT(0x23EED3610);
}

uint64_t sub_23C493A54(uint64_t a1)
{
  *a1 = &unk_284F116C8;
  xpc_connection_set_event_handler(*(a1 + 88), &unk_284F11708);
  xpc_connection_cancel(*(a1 + 88));
  xpc_release(*(a1 + 88));

  return sub_23C493AD8(a1);
}

uint64_t sub_23C493AD8(uint64_t a1)
{
  *a1 = &unk_284F11678;
  CompilerFSCacheDestroy((a1 + 80));
  dispatch_release(*(a1 + 8));
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return a1;
}

void sub_23C493FFC(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (*(v37 + 47) < 0)
  {
    operator delete(*v36);
  }

  MEMORY[0x23EED3610](v37, 0x10B3C40B20F9A2BLL, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

uint64_t CompilerConnectionDestroy(uint64_t *a1)
{
  result = *a1;
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t *CompilerFSCacheDestroy(uint64_t *result)
{
  v1 = *result;
  if (*result)
  {
    if (*v1)
    {
      v2 = *(v1 + 24);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_23C4943B0;
      block[3] = &unk_278BBEE40;
      block[4] = v1;
      dispatch_sync(v2, block);
      dispatch_release(*(v1 + 24));
    }

    JUMPOUT(0x23EED3610);
  }

  return result;
}

void sub_23C4943B0(uint64_t a1)
{
  v1 = fscache_close();
  if (v1)
  {
    syslog(3, "Compiler cache close failed with status = %d\n", v1);
  }
}

uint64_t CompilerFSCacheGetShaderCacheKeys(uint64_t a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v1 = *(a1 + 24);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_23C49449C;
  v4[3] = &unk_278BBEED8;
  v4[4] = &v5;
  v4[5] = a1;
  dispatch_sync(v1, v4);
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t sub_23C49449C(uint64_t a1)
{
  result = *(*(a1 + 40) + 40);
  if (result)
  {
    result = fscache_get_cache_keys();
    *(*(*(a1 + 32) + 8) + 24) = result;
  }

  return result;
}

__n128 sub_23C4944D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 48);
  v3 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v3;
  *(a1 + 48) = v2;
  result = *(a2 + 96);
  v5 = *(a2 + 112);
  v6 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v5;
  *(a1 + 128) = v6;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_23C494568(const void *a1, CC_LONG a2, unsigned __int8 *a3)
{
  CC_SHA256_Init(&c);
  CC_SHA256_Update(&c, a1, a2);
  return CC_SHA256_Final(a3, &c);
}

uint64_t sub_23C4945C4(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = a1[6];
  result = fscache_find_and_retain();
  *(*(a1[5] + 8) + 24) = result;
  if (*(*(a1[5] + 8) + 24) == 203)
  {
    ++*(v2 + 36);
    *(*(a1[5] + 8) + 24) = 0;
    return result;
  }

  *(*(a1[5] + 8) + 24) = fscache_element_get_data();
  if (*(*(a1[5] + 8) + 24))
  {
    syslog(3, "Compiler get element from cache failed with status = %d\n", *(*(a1[5] + 8) + 24));
    *(*(a1[5] + 8) + 24) = 0;
    return fscache_release();
  }

  v7 = 0u;
  v8 = 0u;
  sub_23C494568(0x20, 0xFFFFFFE0, &v7);
  if (v7 == MEMORY[0] && *(&v7 + 1) == MEMORY[8] && v8 == MEMORY[0x10] && *(&v8 + 1) == MEMORY[0x18])
  {
    (*(a1[4] + 16))();
    ++*(v2 + 32);
    *(*(a1[5] + 8) + 24) = 1;
    return fscache_release();
  }

  syslog(3, "Compiler get element from cache failed checksum, data corrupted!\n");
  *(*(a1[5] + 8) + 24) = 0;
  return fscache_remove_and_release();
}

void sub_23C49477C(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v5 = 0u;
  v6 = 0u;
  sub_23C494568(**(a1 + 40), **(a1 + 48), &v5);
  v2 = malloc_type_calloc(1uLL, **(a1 + 48) + 32, 0x100004077774924uLL);
  v3 = v6;
  *v2 = v5;
  v2[1] = v3;
  memcpy(v2 + 2, **(a1 + 40), **(a1 + 48));
  v4 = fscache_insert_and_retain();
  free(v2);
  if (v4)
  {
    syslog(3, "Compiler add element to cache failed with status = %d\n", v4);
  }

  else
  {
    if (fscache_element_get_data())
    {
      syslog(3, "Compiler element get data failed with status = %d\n");
    }

    else if (msync(0, (*MEMORY[0x277D85FA0] - 1) & -*MEMORY[0x277D85FA0], 1) < 0)
    {
      __error();
      syslog(3, "Compiler flush pages failed with status = %d\n");
    }

    fscache_release();
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}