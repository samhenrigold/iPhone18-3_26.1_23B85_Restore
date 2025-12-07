void sub_1014D51A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10001021C(va);
  _Unwind_Resume(a1);
}

unint64_t sub_1014D51B4(uint64_t a1)
{
  v2 = capabilities::ct::supportsCellularHealthDiagnostics(a1);
  v3 = *(a1 + 32);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      v5 = *(a1 + 114);
      v6 = radioStateAsString();
      v7 = *(a1 + 100);
      if (v7 > 2)
      {
        v8 = "???";
      }

      else
      {
        v8 = off_101F43BB0[v7];
      }

      v10 = *(a1 + 96);
      if (v10 > 2)
      {
        v11 = "???";
      }

      else
      {
        v11 = off_101F43BB0[v10];
      }

      v12 = *(a1 + 108);
      if (v12 > 2)
      {
        v13 = "???";
      }

      else
      {
        v13 = off_101F43BB0[v12];
      }

      v14 = *(a1 + 112);
      v20 = 33555970;
      *v21 = v5;
      *&v21[2] = 2080;
      *&v21[4] = v6;
      v22 = 2080;
      v23 = v8;
      v24 = 2080;
      v25 = v11;
      v26 = 2080;
      v27 = v13;
      v28 = 256;
      v29 = v14;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I ReportHealthIssueMask: 0x%hx, RadioState: %s, eUICCStatus: %s, RffeScanStatus:%s, AnomalyStatus:%s, AnomalyCode:%d", &v20, 0x31u);
    }

    v15 = *(a1 + 114);
    if (v15)
    {
      if ((v15 & 1) != 0 && *(a1 + 104) == 2)
      {
        v16 = 0;
        v17 = 1;
LABEL_30:
        v18 = *(a1 + 32);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v19 = cellularDiagnosticsStateAsString();
          v20 = 136315138;
          *v21 = v19;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I Returning Diagnostics Status as [%s]", &v20, 0xCu);
        }

        *(a1 + 116) = v17;
        return v16 | v17;
      }

      if ((v15 & 2) != 0 && *(a1 + 100) == 2)
      {
        v16 = 0;
        v17 = 2;
        goto LABEL_30;
      }

      if ((v15 & 4) != 0 && *(a1 + 96) == 2)
      {
        v16 = 0;
        v17 = 3;
        goto LABEL_30;
      }

      if ((v15 & 8) != 0 && *(a1 + 108) == 2)
      {
        v16 = *(a1 + 112) << 32;
        v17 = 4;
        goto LABEL_30;
      }
    }

    v17 = 0;
    v16 = 0;
    goto LABEL_30;
  }

  if (v4)
  {
    LOWORD(v20) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Cellular Health Diagnostics is not supported", &v20, 2u);
  }

  result = 4294967294;
  *(a1 + 116) = -2;
  return result;
}

void sub_1014D5418(uint64_t a1, int a2)
{
  *(a1 + 96) = a2;
  v3 = *(a1 + 32);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = off_101F43BB0[a2];
    v5 = 136315138;
    v6 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Set RFFEScan health status to %s", &v5, 0xCu);
  }
}

void sub_1014D54C4(uint64_t a1, int a2)
{
  *(a1 + 100) = a2;
  v3 = *(a1 + 32);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = off_101F43BB0[a2];
    v5 = 136315138;
    v6 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Set eUICC health status to %s", &v5, 0xCu);
  }
}

void sub_1014D5570(void *a1, const void **a2)
{
  v3 = a1[6];
  if (v3)
  {
    v5 = a1[4];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      if (a1[5])
      {
        v8[0] = 0;
        v8[1] = 0;
        sub_1001126E0(v8, a2);
        v7 = *(v5 + 8);
        if (v7)
        {
          if (std::__shared_weak_count::lock(v7))
          {
            operator new();
          }
        }

        sub_100013CC4();
      }

      sub_100004A34(v6);
    }
  }
}

uint64_t sub_1014D56C8(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1014D56E4(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1014D56F4(uint64_t a1, int a2)
{
  *(a1 + 104) = a2;
  v3 = *(a1 + 32);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = off_101F43BB0[a2];
    v5 = 136315138;
    v6 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Set Baseband FW health status to %s", &v5, 0xCu);
  }
}

void sub_1014D586C(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[2], v1, sub_1014D5940);
  __cxa_rethrow();
}

void sub_1014D58AC(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1014D5900(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1014D5940(uint64_t result)
{
  if (result)
  {
    v1 = result;
    sub_100083940((result + 88));
    v2 = v1[8];
    if (v2)
    {
      sub_100004A34(v2);
    }

    v3 = v1[6];
    if (v3)
    {
      sub_100004A34(v3);
    }

    ctu::OsLogLogger::~OsLogLogger((v1 + 4));
    sub_1000C0544(v1);

    operator delete();
  }

  return result;
}

__n128 sub_1014D5A34(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F439B0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1014D5A6C(void *a1, xpc *this, uint64_t a3)
{
  v4 = a1[1];
  v5 = *v4;
  *v4 = xpc::dyn_cast_or_default(this, 0, a3);
  v6 = a1[3];
  v7 = a1[4];
  v8 = (a1[2] + (v7 >> 1));
  if (v7)
  {
    v6 = *(*v8 + v6);
  }

  return v6(v8, v5);
}

uint64_t sub_1014D5AE4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1014D5B30(void *a1)
{
  v1 = a1[5];
  v2 = a1[6];
  v3 = (a1[4] + (v2 >> 1));
  if (v2)
  {
    return (*(*v3 + v1))();
  }

  else
  {
    return v1(v3);
  }
}

void *sub_1014D5B58(void *a1)
{
  *a1 = off_101F43A50;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_1014D5BA4(void *a1)
{
  *a1 = off_101F43A50;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

void sub_1014D5C10(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::lock(v2);
  }

  operator new();
}

void sub_1014D5CC0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1014D5D64(void *a1)
{
  *a1 = off_101F43AA0;
  v2 = a1[2];
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

void sub_1014D5DB0(void *a1)
{
  *a1 = off_101F43AA0;
  v1 = a1[2];
  if (v1)
  {
    sub_100004A34(v1);
  }

  operator delete();
}

void sub_1014D5E88(void *a1, uint64_t a2)
{
  v3 = a1[5];
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      if (a1[4])
      {
        sub_100135ED0(a1 + 6, a2);
      }

      sub_100004A34(v6);
    }
  }
}

void *sub_1014D5F14(void *a1, void *a2)
{
  v3 = a2[5];
  a1[4] = a2[4];
  a1[5] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  result = a2[6];
  if (result)
  {
    result = _Block_copy(result);
  }

  a1[6] = result;
  return result;
}

void sub_1014D5F60(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    _Block_release(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

void sub_1014D5FB4(void *a1, const void **a2)
{
  v3 = a1[5];
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      if (a1[4])
      {
        v6 = a1[7];
        if (v6)
        {
          _Block_copy(v6);
        }

        sub_100010024(&v7, a2);
        operator new();
      }

      sub_100004A34(v5);
    }
  }
}

void *sub_1014D60C0(void *a1, void *a2)
{
  v4 = a2[5];
  a1[4] = a2[4];
  a1[5] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  v5 = a2[6];
  a1[6] = v5;
  if (v5)
  {
    dispatch_retain(v5);
  }

  result = a2[7];
  if (result)
  {
    result = _Block_copy(result);
  }

  a1[7] = result;
  return result;
}

void sub_1014D6120(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    _Block_release(v2);
  }

  v3 = a1[6];
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = a1[5];
  if (v4)
  {

    std::__shared_weak_count::__release_weak(v4);
  }
}

const void ***sub_1014D6180(const void ***a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    sub_10001021C(v1 + 1);
    if (*v1)
    {
      _Block_release(*v1);
    }

    operator delete();
  }

  return a1;
}

const void ***sub_1014D61E0(const void **a1)
{
  v3 = a1;
  v1 = *a1;
  sub_100010024(&v4, a1 + 1);
  v1[2](v1, &v4);
  sub_10001021C(&v4);
  return sub_1014D6180(&v3);
}

void sub_1014D623C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void **a9, const void *a10)
{
  sub_10001021C(&a10);
  sub_1014D6180(&a9);
  _Unwind_Resume(a1);
}

void sub_1014D6258(uint64_t **a1)
{
  v1 = **a1;
  if (((*a1)[1] & 0xFE) == 2)
  {
    v6 = 0;
    v7 = 0;
    sub_10005B8C8(&v6);
    if (v6)
    {
      v2 = *(v1 + 8);
      if (v2)
      {
        v3 = std::__shared_weak_count::lock(v2);
        if (v3)
        {
          atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v3);
          v10 = 0;
          operator new();
        }
      }

      sub_100013CC4();
    }

    v5 = *(v1 + 32);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I RadioModule is not ready", buf, 2u);
    }

    sub_1014D5418(v1, 0);
    if (v7)
    {
      sub_100004A34(v7);
    }
  }

  else
  {
    v4 = *(v1 + 32);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v9 = asString();
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Operating mode is %s, skip RFFEScanData check", buf, 0xCu);
    }
  }

  operator delete();
}

void sub_1014D6458(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, std::__shared_weak_count *a6, ...)
{
  va_start(va, a6);
  sub_1006648E4(va);
  if (a6)
  {
    sub_100004A34(a6);
  }

  operator delete();
}

void *sub_1014D64B8(void *a1)
{
  *a1 = off_101F43B40;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_1014D6504(void *a1)
{
  *a1 = off_101F43B40;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_1014D65E4(uint64_t result, uint64_t a2)
{
  *a2 = off_101F43B40;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1014D6624(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1014D6634(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_1014D6674(void *a1, char *a2, __int128 *a3)
{
  v4 = a1[3];
  if (v4)
  {
    v6 = a1[1];
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      if (a1[2])
      {
        sub_10129B234(&v9, a3);
        v8 = *(v6 + 8);
        if (v8)
        {
          if (std::__shared_weak_count::lock(v8))
          {
            operator new();
          }
        }

        sub_100013CC4();
      }

      sub_100004A34(v7);
    }
  }
}

uint64_t sub_1014D6818(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1014D6864(uint64_t **a1)
{
  v15 = a1;
  v1 = *a1;
  v2 = **a1;
  if (*(*a1 + 8) == 1)
  {
    v3 = *(v2 + 32);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(v1 + 36);
      v5 = *(v1 + 60);
      v6 = *(v1 + 18);
      *buf = 67109632;
      v17 = v4;
      v18 = 1024;
      v19 = v5;
      v20 = 1024;
      v21 = v6;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I RFFEScanData: init_pass=%d, scan_pass=%d, num_of_missing_devices=%d", buf, 0x14u);
    }

    if (*(v1 + 60))
    {
LABEL_5:
      v7 = 1;
      goto LABEL_13;
    }

    v8 = v1[11];
    v9 = v1[10];
    if (v8 != v9)
    {
      do
      {
        if (*v9 - 17 >= 6)
        {
          goto LABEL_12;
        }

        ++v9;
      }

      while (v9 != v8);
      v10 = *(v2 + 32);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I RFFEScanData: ignore non-critical error", buf, 2u);
      }

      goto LABEL_5;
    }

LABEL_12:
    v7 = 2;
  }

  else
  {
    v7 = 0;
  }

LABEL_13:
  sub_1014D5418(v2, v7);
  v11 = v1[19];
  if (v11)
  {
    v1[20] = v11;
    operator delete(v11);
  }

  v12 = v1[16];
  if (v12)
  {
    v1[17] = v12;
    operator delete(v12);
  }

  v13 = v1[13];
  if (v13)
  {
    v1[14] = v13;
    operator delete(v13);
  }

  v14 = v1[10];
  if (v14)
  {
    v1[11] = v14;
    operator delete(v14);
  }

  operator delete();
}

uint64_t *sub_1014D6A30(uint64_t *a1)
{
  v1 = *a1;
  v11 = a1;
  v12 = v1;
  v2 = *v1;
  v3 = *(v1 + 8);
  if (v3 == 2)
  {
    v4 = *(v2 + 32);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      *&buf[4] = asString();
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Failed to get eUICC info: %s", buf, 0xCu);
    }

LABEL_12:
    sub_1014D54C4(v2, 0);
    goto LABEL_18;
  }

  *buf = 0;
  if (v3 != 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    ctu::ResultIsEmptyError::ResultIsEmptyError(exception);
  }

  sub_100010024(buf, (v1 + 16));
  if (!*buf)
  {
    v7 = *(v2 + 32);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(object[0]) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I No eUICC FwUpdateData returned", object, 2u);
    }

    sub_10001021C(buf);
    goto LABEL_12;
  }

  ctu::cf_to_xpc(*buf, v5);
  v6 = object[0];
  if (object[0] && xpc_get_type(object[0]) == &_xpc_type_dictionary)
  {
    xpc_retain(object[0]);
  }

  else
  {
    v6 = xpc_null_create();
  }

  xpc_release(object[0]);
  if (xpc_dictionary_get_value(v6, kVinylFwUpdateCsn))
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  sub_1014D54C4(v2, v8);
  xpc_release(v6);
  sub_10001021C(buf);
LABEL_18:
  sub_1014D6C90(&v12);
  return sub_1000049E0(&v11);
}

void sub_1014D6C28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  __cxa_free_exception(v13);
  sub_1014D6C90(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1014D6C90(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    if (*(v1 + 8) == 1)
    {
      sub_10001021C((v1 + 16));
    }

    *(v1 + 8) = 0;
    operator delete();
  }

  return a1;
}

void sub_1014D6CF0(uint64_t a1)
{
  *a1 = off_101F43BD8;
  sub_100009970(a1 + 80, *(a1 + 88));
  v2 = *(a1 + 72);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    sub_100004A34(v3);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 40));
  sub_1000C0544((a1 + 8));

  PersonalWallet::~PersonalWallet(a1);
}

void sub_1014D6D78(uint64_t a1)
{
  sub_1014D6CF0(a1);

  operator delete();
}

void sub_1014D7220(uint64_t a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  ctu::OsLogLogger::~OsLogLogger(va1);
  sub_1000C0544(v3);
  ctu::OsLogContext::~OsLogContext(va);
  PersonalWallet::~PersonalWallet(v2);
  operator delete();
}

const void **sub_1014D728C(uint64_t a1, uint64_t a2, uint64_t a3, const __CFString *a4, const __CFString *a5, char **a6, uint64_t a7)
{
  v18 = 0;
  sub_10005C624(&v18, a3);
  v19 = @"PersonalWallet";
  v20 = v18;
  __dst = 0;
  v17 = 0;
  __p = 0;
  sub_10005B328(&__p, &v19, &v21, 2uLL);
  v19 = 0;
  v20 = 0;
  sub_10005B574(&v19, a5, a7);
  if ((v19 & 1) == 0)
  {
    if (v20)
    {
      v14 = v20;
      sub_100ED3374(&__p, &v14);
    }

    a5 = 0;
  }

  if (a6)
  {
    sub_10005B678(&__p, __dst, *a6, a6[1], (a6[1] - *a6) >> 3);
  }

  sub_100060EBC(*(a2 + 64), a4, a5, &__p, a7, a1);
  sub_100005978(&v20);
  if (__p)
  {
    __dst = __p;
    operator delete(__p);
  }

  return sub_100005978(&v18);
}

void sub_1014D73E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, const void *a13)
{
  sub_100005978((v13 + 8));
  if (__p)
  {
    operator delete(__p);
  }

  sub_100005978(&a13);
  _Unwind_Resume(a1);
}

const void **sub_1014D742C(uint64_t a1, uint64_t a2, const __CFString *a3, const void *a4, const __CFString *a5, uint64_t a6)
{
  result = isReal();
  if (result)
  {
    v17 = 0;
    sub_10005C624(&v17, a2);
    v18 = @"PersonalWallet";
    v19 = v17;
    v15 = 0;
    v16 = 0;
    __p = 0;
    sub_10005B328(&__p, &v18, &v20, 2uLL);
    v18 = 0;
    v19 = 0;
    sub_10005B574(&v18, a5, a6);
    if ((v18 & 1) == 0)
    {
      if (v19)
      {
        v13 = v19;
        sub_100ED3374(&__p, &v13);
      }

      a5 = 0;
    }

    sub_10071B99C(*(a1 + 64), a3, a4, a5, &__p, a6, 0, @"PWallet");
    sub_100005978(&v19);
    if (__p)
    {
      v15 = __p;
      operator delete(__p);
    }

    return sub_100005978(&v17);
  }

  return result;
}

void sub_1014D7574(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, const void *a13)
{
  sub_100005978((v13 + 8));
  if (__p)
  {
    operator delete(__p);
  }

  sub_100005978(&a13);
  _Unwind_Resume(a1);
}

const void **sub_1014D75BC(uint64_t a1, uint64_t a2, const __CFString *a3, const __CFString *a4, char **a5, uint64_t a6)
{
  v16 = 0;
  sub_10005C624(&v16, a2);
  v17 = @"PersonalWallet";
  v18 = v16;
  __dst = 0;
  v15 = 0;
  __p = 0;
  sub_10005B328(&__p, &v17, &v19, 2uLL);
  v17 = 0;
  v18 = 0;
  sub_10005B574(&v17, a4, a6);
  if ((v17 & 1) == 0)
  {
    if (v18)
    {
      v12 = v18;
      sub_100ED3374(&__p, &v12);
    }

    a4 = 0;
  }

  if (a5)
  {
    sub_10005B678(&__p, __dst, *a5, a5[1], (a5[1] - *a5) >> 3);
  }

  sub_10071BE7C(*(a1 + 64), a3, a4, &__p, a6);
  sub_100005978(&v18);
  if (__p)
  {
    __dst = __p;
    operator delete(__p);
  }

  return sub_100005978(&v16);
}

void sub_1014D76FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, const void *a13)
{
  sub_100005978((v13 + 8));
  if (__p)
  {
    operator delete(__p);
  }

  sub_100005978(&a13);
  _Unwind_Resume(a1);
}

void sub_1014D7748(void *a1, dispatch_object_t object)
{
  if (object)
  {
    dispatch_retain(object);
    dispatch_group_enter(object);
  }

  v4 = a1[2];
  if (v4)
  {
    if (std::__shared_weak_count::lock(v4))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_1014D7848(uint64_t a1, uint64_t a2)
{
  v4[0] = a2;
  v4[1] = a1;
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_1014DBA00;
  block[3] = &unk_101F43E88;
  block[4] = a1 + 8;
  block[5] = v4;
  v3 = a1 + 24;
  v2 = *(a1 + 24);
  if (*(v3 + 8))
  {
    dispatch_async_and_wait(v2, block);
  }

  else
  {
    dispatch_sync(v2, block);
  }
}

void sub_1014D78D0(uint64_t a1, uint64_t a2)
{
  v3 = a1 + 8;
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v6 = *(a2 + 16);
  }

  v7 = a1;
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_1014DBB04;
  block[3] = &unk_101F43EA8;
  block[4] = v3;
  block[5] = __p;
  v4 = *(a1 + 24);
  if (*(a1 + 32))
  {
    dispatch_async_and_wait(v4, block);
  }

  else
  {
    dispatch_sync(v4, block);
  }

  if (SHIBYTE(v6) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1014D799C(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  sub_10005C624(&v4, a2);
  os_unfair_lock_lock((*(a1 + 64) + 32));
  os_unfair_lock_lock((*(a1 + 64) + 36));
  v5 = @"PersonalWallet";
  memset(__p, 0, sizeof(__p));
  sub_10005B328(__p, &v5, &v6, 1uLL);
  v5 = 0;
  v6 = 0;
  sub_10071AC44();
}

void sub_1014D7B14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, const void *a13, const void *a14, uint64_t a15)
{
  sub_100005978(&a14);
  if (__p)
  {
    operator delete(__p);
  }

  os_unfair_lock_unlock(v16 + 9);
  os_unfair_lock_unlock(v15 + 8);
  sub_100005978(&a13);
  _Unwind_Resume(a1);
}

void sub_1014D7B84(uint64_t a1, const __CFString *a2, const __CFString *a3)
{
  v7 = 0;
  v8 = 0;
  v9 = 0;
  if (!sub_100BB3670(a1 + 48, 0, a2, &v7))
  {
    v5 = v7;
    v6 = v8;
    while (v5 != v6)
    {
      if (!a3 || !CFStringHasPrefix(*v5, a3))
      {
        sub_100BB40F4(a1 + 48, *v5);
      }

      ++v5;
    }
  }

  v10 = &v7;
  sub_100222314(&v10);
}

void sub_1014D7C1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  sub_100222314(&a12);
  _Unwind_Resume(a1);
}

void sub_1014D7C3C(uint64_t a1, const __CFString *a2)
{
  v25 = 0;
  v26 = 0;
  v27 = 0;
  if (!sub_100BB3670(a1 + 48, 0, a2, &v25))
  {
    Length = CFStringGetLength(a2);
    memset(&v30, 0, sizeof(v30));
    ctu::cf::assign();
    v24 = v30;
    v5 = v25;
    v6 = v26;
    if (v25 != v26)
    {
      while (1)
      {
        v22 = 0;
        v23 = 0;
        v21 = 0;
        if (!sub_100BB2634(a1 + 48, *v5, &v23, &v22, &v21))
        {
          break;
        }

LABEL_33:
        sub_100BB40F4(a1 + 48, *v5);
        sub_100005978(&v21);
        sub_10002D760(&v22);
        sub_10002D760(&v23);
        if (++v5 == v6)
        {
          goto LABEL_38;
        }
      }

      memset(&__str, 0, sizeof(__str));
      memset(&v30, 0, sizeof(v30));
      ctu::cf::assign();
      __str = v30;
      size = v30.__r_.__value_.__l.__size_;
      v8 = HIBYTE(v30.__r_.__value_.__r.__words[2]);
      if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      }

      if (size <= Length)
      {
LABEL_31:
        if (v8 < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        goto LABEL_33;
      }

      v9 = std::string::basic_string(&v30, &__str, Length, 0xFFFFFFFFFFFFFFFFLL, &__p);
      if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v10 = &v24;
      }

      else
      {
        v10 = v24.__r_.__value_.__r.__words[0];
      }

      if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v11 = HIBYTE(v24.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v11 = v24.__r_.__value_.__l.__size_;
      }

      v12 = std::string::insert(v9, 0, v10, v11);
      v13 = v12->__r_.__value_.__r.__words[0];
      v14 = v12->__r_.__value_.__l.__size_;
      v19[0] = v12->__r_.__value_.__r.__words[2];
      *(v19 + 3) = *(&v12->__r_.__value_.__r.__words[2] + 3);
      v15 = SHIBYTE(v12->__r_.__value_.__r.__words[2]);
      v12->__r_.__value_.__l.__size_ = 0;
      v12->__r_.__value_.__r.__words[2] = 0;
      v12->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v30.__r_.__value_.__l.__data_);
        if ((v15 & 0x80000000) == 0)
        {
          goto LABEL_15;
        }
      }

      else if ((v15 & 0x80000000) == 0)
      {
LABEL_15:
        __dst.__r_.__value_.__r.__words[0] = v13;
        __dst.__r_.__value_.__l.__size_ = v14;
        LODWORD(__dst.__r_.__value_.__r.__words[2]) = v19[0];
        *(&__dst.__r_.__value_.__r.__words[2] + 3) = *(v19 + 3);
        *(&__dst.__r_.__value_.__s + 23) = v15;
        goto LABEL_18;
      }

      sub_100005F2C(&__dst, v13, v14);
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        sub_100005F2C(&__p, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
LABEL_19:
        v28 = 0;
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          sub_100005F2C(&v30, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
        }

        else
        {
          v30 = __p;
        }

        v31 = 0;
        if (ctu::cf::convert_copy())
        {
          v16 = v28;
          v28 = v31;
          v32 = v16;
          sub_100005978(&v32);
        }

        if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v30.__r_.__value_.__l.__data_);
        }

        v18 = v28;
        v28 = 0;
        sub_100005978(&v28);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        sub_100BB3A84(a1 + 48, v18, &v23, &v22, v21);
        sub_100005978(&v18);
        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
          if ((v15 & 0x80000000) == 0)
          {
            goto LABEL_30;
          }
        }

        else if ((v15 & 0x80000000) == 0)
        {
LABEL_30:
          v8 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
          goto LABEL_31;
        }

        operator delete(v13);
        goto LABEL_30;
      }

LABEL_18:
      __p = __dst;
      goto LABEL_19;
    }

LABEL_38:
    if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v24.__r_.__value_.__l.__data_);
    }
  }

  v30.__r_.__value_.__r.__words[0] = &v25;
  sub_100222314(&v30);
}

void sub_1014D7F70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, const void *a24, const void *a25, const void *a26, char *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (v44 < 0)
  {
    operator delete(v43);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  sub_100005978(&a24);
  sub_10002D760(&a25);
  sub_10002D760(&a26);
  if (a32 < 0)
  {
    operator delete(a27);
  }

  a27 = &a34;
  sub_100222314(&a27);
  _Unwind_Resume(a1);
}

void sub_1014D8090(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a2 + 23);
    v8 = (v7 & 0x80u) != 0;
    if ((v7 & 0x80u) != 0)
    {
      v7 = *(a2 + 8);
    }

    if (v8)
    {
      v9 = *a2;
    }

    else
    {
      v9 = a2;
    }

    if (v7)
    {
      v10 = v9;
    }

    else
    {
      v10 = "<invalid>";
    }

    v11 = *(a3 + 23);
    v12 = (v11 & 0x80u) != 0;
    if ((v11 & 0x80u) != 0)
    {
      v11 = *(a3 + 8);
    }

    if (v12)
    {
      v13 = *a3;
    }

    else
    {
      v13 = a3;
    }

    if (v11)
    {
      v14 = v13;
    }

    else
    {
      v14 = "<invalid>";
    }

    *buf = 136315394;
    *&buf[4] = v10;
    *&buf[12] = 2080;
    *&buf[14] = v14;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I renaming wallet %s to %s", buf, 0x16u);
  }

  if (isReal() && isReal())
  {
    v25[0] = 0;
    sub_10005C624(v25, a2);
    v24 = 0;
    sub_10005C624(&v24, a3);
    os_unfair_lock_lock((*(a1 + 64) + 32));
    os_unfair_lock_lock((*(a1 + 64) + 36));
    v26 = @"PersonalWallet";
    memset(buf, 0, sizeof(buf));
    sub_10005B328(buf, &v26, &v27, 1uLL);
    v25[3] = 0;
    v25[4] = 0;
    sub_10071AC44();
  }

  v15 = *(a1 + 40);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = *(a2 + 23);
    v17 = (v16 & 0x80u) != 0;
    if ((v16 & 0x80u) != 0)
    {
      v16 = *(a2 + 8);
    }

    if (v17)
    {
      v18 = *a2;
    }

    else
    {
      v18 = a2;
    }

    if (v16)
    {
      v19 = v18;
    }

    else
    {
      v19 = "<invalid>";
    }

    v20 = *(a3 + 23);
    v21 = (v20 & 0x80u) != 0;
    if ((v20 & 0x80u) != 0)
    {
      v20 = *(a3 + 8);
    }

    if (v21)
    {
      v22 = *a3;
    }

    else
    {
      v22 = a3;
    }

    if (v20)
    {
      v23 = v22;
    }

    else
    {
      v23 = "<invalid>";
    }

    *buf = 136315394;
    *&buf[4] = v19;
    *&buf[12] = 2080;
    *&buf[14] = v23;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#E cannot renameWallet since FROM '%s' or TO '%s' is invalid", buf, 0x16u);
  }
}

void sub_1014D8454(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, const void *a11, const void *a12, const void *a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22)
{
  sub_100005978(&a10);
  sub_100005978(&a13);
  if (__p)
  {
    a16 = __p;
    operator delete(__p);
  }

  if (a18)
  {
    a19 = a18;
    operator delete(a18);
  }

  if (a21)
  {
    a22 = a21;
    operator delete(a21);
  }

  os_unfair_lock_unlock(v23 + 9);
  os_unfair_lock_unlock(v22 + 8);
  sub_100005978(&a11);
  sub_100005978(&a12);
  _Unwind_Resume(a1);
}

void sub_1014D8528(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1[5];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a2 + 23);
    v8 = (v7 & 0x80u) != 0;
    if ((v7 & 0x80u) != 0)
    {
      v7 = *(a2 + 8);
    }

    if (v8)
    {
      v9 = *a2;
    }

    else
    {
      v9 = a2;
    }

    if (v7)
    {
      v10 = v9;
    }

    else
    {
      v10 = "<invalid>";
    }

    v11 = *(a3 + 23);
    v12 = (v11 & 0x80u) != 0;
    if ((v11 & 0x80u) != 0)
    {
      v11 = *(a3 + 8);
    }

    if (v12)
    {
      v13 = *a3;
    }

    else
    {
      v13 = a3;
    }

    if (v11)
    {
      v14 = v13;
    }

    else
    {
      v14 = "<invalid>";
    }

    *buf = 136315394;
    *&buf[4] = v10;
    *&buf[12] = 2080;
    *&buf[14] = v14;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I transferring wallet %s to %s", buf, 0x16u);
  }

  if (isReal() && isReal())
  {
    v27 = 0;
    sub_10005C624(&v27, a2);
    v26 = 0;
    sub_10005C624(&v26, a3);
    os_unfair_lock_lock((a1[8] + 32));
    os_unfair_lock_lock((a1[8] + 36));
    __p = @"PersonalWallet";
    v31 = v27;
    memset(buf, 0, sizeof(buf));
    sub_10005B328(buf, &__p, &v32, 2uLL);
    v28[0] = @"PersonalWallet";
    v28[1] = v26;
    v31 = 0;
    v32 = 0;
    __p = 0;
    sub_10005B328(&__p, v28, &v29, 2uLL);
    v24 = 0;
    v25 = 0;
    sub_10071AC44();
  }

  v15 = a1[5];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = *(a2 + 23);
    v17 = (v16 & 0x80u) != 0;
    if ((v16 & 0x80u) != 0)
    {
      v16 = *(a2 + 8);
    }

    if (v17)
    {
      v18 = *a2;
    }

    else
    {
      v18 = a2;
    }

    if (v16)
    {
      v19 = v18;
    }

    else
    {
      v19 = "<invalid>";
    }

    v20 = *(a3 + 23);
    v21 = (v20 & 0x80u) != 0;
    if ((v20 & 0x80u) != 0)
    {
      v20 = *(a3 + 8);
    }

    if (v21)
    {
      v22 = *a3;
    }

    else
    {
      v22 = a3;
    }

    if (v20)
    {
      v23 = v22;
    }

    else
    {
      v23 = "<invalid>";
    }

    *buf = 136315394;
    *&buf[4] = v19;
    *&buf[12] = 2080;
    *&buf[14] = v23;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#E cannot transferWallet since FROM '%s' or TO '%s' is invalid", buf, 0x16u);
  }
}

void sub_1014D88EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, const void *a11, const void *a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, void *a21, uint64_t a22)
{
  sub_100005978(&a11);
  sub_100005978(&a12);
  _Unwind_Resume(a1);
}

void sub_1014D89B4(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v3 >= v2)
  {
    v5 = (v3 - *a1) >> 3;
    if ((v5 + 1) >> 61)
    {
      sub_1000CE3D4();
    }

    v6 = v2 - *a1;
    v7 = v6 >> 2;
    if (v6 >> 2 <= (v5 + 1))
    {
      v7 = v5 + 1;
    }

    if (v6 >= 0x7FFFFFFFFFFFFFF8)
    {
      v8 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = v7;
    }

    if (v8)
    {
      sub_10005B2E0(a1, v8);
    }

    *(8 * v5) = @"s";
    v4 = 8 * v5 + 8;
    v9 = *(a1 + 8) - *a1;
    v10 = (8 * v5 - v9);
    memcpy(v10, *a1, v9);
    v11 = *a1;
    *a1 = v10;
    *(a1 + 8) = v4;
    *(a1 + 16) = 0;
    if (v11)
    {
      operator delete(v11);
    }
  }

  else
  {
    *v3 = @"s";
    v4 = (v3 + 1);
  }

  *(a1 + 8) = v4;
}

void sub_1014D8A8C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a2 + 23);
    v6 = (v5 & 0x80u) != 0;
    if ((v5 & 0x80u) != 0)
    {
      v5 = *(a2 + 8);
    }

    if (v6)
    {
      v7 = *a2;
    }

    else
    {
      v7 = a2;
    }

    if (v5)
    {
      v8 = v7;
    }

    else
    {
      v8 = "<invalid>";
    }

    LODWORD(buf) = 136315138;
    *(&buf + 4) = v8;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I delete non-transferrable wallet part for %s", &buf, 0xCu);
  }

  if (isReal())
  {
    v16 = 0;
    sub_10005C624(&v16, a2);
    os_unfair_lock_lock((*(a1 + 64) + 32));
    os_unfair_lock_lock((*(a1 + 64) + 36));
    v21 = @"PersonalWallet";
    v24 = 0;
    buf = 0uLL;
    sub_10005B328(&buf, &v21, v22, 1uLL);
    __p = @"PersonalWallet";
    v19 = v16;
    v22[0] = 0;
    v22[1] = 0;
    v21 = 0;
    sub_10005B328(&v21, &__p, &v20, 2uLL);
    v17[0] = @"PersonalWallet";
    v17[1] = v16;
    v17[2] = @"s";
    __p = 0;
    v19 = 0;
    v20 = 0;
    sub_10005B328(&__p, v17, &__p, 3uLL);
    v14 = 0;
    v15 = 0;
    sub_10071AC44();
  }

  v9 = *(a1 + 40);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a2 + 23);
    v11 = (v10 & 0x80u) != 0;
    if ((v10 & 0x80u) != 0)
    {
      v10 = *(a2 + 8);
    }

    if (v11)
    {
      v12 = *a2;
    }

    else
    {
      v12 = a2;
    }

    if (v10)
    {
      v13 = v12;
    }

    else
    {
      v13 = "<invalid>";
    }

    LODWORD(buf) = 136315138;
    *(&buf + 4) = v13;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#E deleteNonTransferrableWalletPart, persona '%s' is invalid - ignore", &buf, 0xCu);
  }
}

void sub_1014D8DE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, const void *a11, const void *a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22)
{
  sub_100005978(&a9);
  sub_100005978(&a12);
  if (__p)
  {
    a16 = __p;
    operator delete(__p);
  }

  if (a18)
  {
    a19 = a18;
    operator delete(a18);
  }

  if (a21)
  {
    a22 = a21;
    operator delete(a21);
  }

  os_unfair_lock_unlock(v23 + 9);
  os_unfair_lock_unlock(v22 + 8);
  sub_100005978(&a11);
  _Unwind_Resume(a1);
}

void sub_1014D8EA4(uint64_t *a1)
{
  v4 = 0;
  v5 = 0;
  v6 = 0;
  (*(*a1 + 80))(&v4);
  v2 = v4;
  v3 = v5;
  while (v2 != v3)
  {
    (*(*a1 + 112))(a1, v2);
    v2 += 24;
  }

  sub_10071C340(a1[8], @"unique-sim-label-store", 0, 0);
  v7 = &v4;
  sub_10005AAF8(&v7);
}

void sub_1014D8F70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  sub_10005AAF8(&a12);
  _Unwind_Resume(a1);
}

const void **sub_1014D8F90@<X0>(char **a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  theDict = 0;
  sub_10071C330(&v20, *(a2 + 64), @"PersonalWallet", 0, a3);
  sub_100010180(&theDict, &v20);
  sub_10000A1EC(&v20);
  if (theDict)
  {
    Count = CFDictionaryGetCount(theDict);
    keys = 0;
    v17 = 0;
    v18 = 0;
    sub_10007D780(&keys, Count);
    CFDictionaryGetKeysAndValues(theDict, keys, 0);
    v5 = keys;
    v6 = v17;
    if (keys != v17)
    {
      while (1)
      {
        v20 = 0;
        v21 = 0;
        v22 = 0;
        ctu::cf::assign();
        v7 = v20;
        v13 = v22;
        HIBYTE(v13) = BYTE3(v22);
        v8 = SHIBYTE(v22);
        if (SHIBYTE(v22) < 0)
        {
          sub_100005F2C(__p, v20, v21);
        }

        else
        {
          __p[0] = v20;
          __p[1] = v21;
          LODWORD(v15) = v13;
          *(&v15 + 3) = *(&v22 + 3);
          HIBYTE(v15) = HIBYTE(v22);
        }

        v9 = a1[1];
        if (v9 >= a1[2])
        {
          v11 = sub_10005A410(a1, __p);
        }

        else
        {
          if (SHIBYTE(v15) < 0)
          {
            sub_100005F2C(a1[1], __p[0], __p[1]);
          }

          else
          {
            v10 = *__p;
            *(v9 + 2) = v15;
            *v9 = v10;
          }

          v11 = (v9 + 24);
        }

        a1[1] = v11;
        if (SHIBYTE(v15) < 0)
        {
          operator delete(__p[0]);
          if (v8 < 0)
          {
LABEL_17:
            operator delete(v7);
          }
        }

        else if (v8 < 0)
        {
          goto LABEL_17;
        }

        if (++v5 == v6)
        {
          v5 = keys;
          break;
        }
      }
    }

    if (v5)
    {
      v17 = v5;
      operator delete(v5);
    }
  }

  return sub_10001021C(&theDict);
}

void sub_1014D9144(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, uint64_t a19, const void *a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (__p)
  {
    a18 = __p;
    operator delete(__p);
  }

  sub_10001021C(&a20);
  sub_10005AAF8(&__p);
  _Unwind_Resume(a1);
}

uint64_t sub_1014D91E4(uint64_t a1, uint64_t a2, const __CFString *a3, const void *a4, const __CFString *a5, char **a6, uint64_t a7, const void *a8)
{
  if (!isReal())
  {
    return 1;
  }

  v22 = 0;
  sub_10005C624(&v22, a2);
  v23 = @"PersonalWallet";
  v24 = v22;
  __dst = 0;
  v21 = 0;
  __p = 0;
  sub_10005B328(&__p, &v23, &v25, 2uLL);
  v23 = 0;
  v24 = 0;
  sub_10005B574(&v23, a5, a7);
  if ((v23 & 1) == 0)
  {
    if (v24)
    {
      v18 = v24;
      sub_100ED3374(&__p, &v18);
    }

    a5 = 0;
  }

  if (a6)
  {
    sub_10005B678(&__p, __dst, *a6, a6[1], (a6[1] - *a6) >> 3);
  }

  v16 = sub_10071B8E0(*(a1 + 64), a3, a4, a5, &__p, a7, a8, @"PWallet");
  sub_100005978(&v24);
  if (__p)
  {
    __dst = __p;
    operator delete(__p);
  }

  sub_100005978(&v22);
  return v16;
}

void sub_1014D9368(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, const void *a13)
{
  sub_100005978((v13 + 8));
  if (__p)
  {
    operator delete(__p);
  }

  sub_100005978(&a13);
  _Unwind_Resume(a1);
}

const void **sub_1014D93B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, const __CFString *a3@<X2>, const __CFString *a4@<X3>, char **a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v18 = 0;
  sub_10005C624(&v18, a2);
  v19 = @"PersonalWallet";
  v20 = v18;
  __dst = 0;
  v17 = 0;
  __p = 0;
  sub_10005B328(&__p, &v19, &v21, 2uLL);
  v19 = 0;
  v20 = 0;
  sub_10005B574(&v19, a4, a6);
  if ((v19 & 1) == 0)
  {
    if (v20)
    {
      v14 = v20;
      sub_100ED3374(&__p, &v14);
    }

    a4 = 0;
  }

  if (a5)
  {
    sub_10005B678(&__p, __dst, *a5, a5[1], (a5[1] - *a5) >> 3);
  }

  sub_10005B920(*(a1 + 64), a3, a4, &__p, a6, a7);
  sub_100005978(&v20);
  if (__p)
  {
    __dst = __p;
    operator delete(__p);
  }

  return sub_100005978(&v18);
}

void sub_1014D9504(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, const void *a13)
{
  sub_100005978((v13 + 8));
  if (__p)
  {
    operator delete(__p);
  }

  sub_100005978(&a13);
  _Unwind_Resume(a1);
}

uint64_t sub_1014D9550(uint64_t a1, uint64_t a2, const __CFString *a3, const __CFString *a4, char **a5, uint64_t a6)
{
  v17 = 0;
  sub_10005C624(&v17, a2);
  v18 = @"PersonalWallet";
  v19 = v17;
  __dst = 0;
  v16 = 0;
  __p = 0;
  sub_10005B328(&__p, &v18, &v20, 2uLL);
  v18 = 0;
  v19 = 0;
  sub_10005B574(&v18, a4, a6);
  if ((v18 & 1) == 0)
  {
    if (v19)
    {
      v13 = v19;
      sub_100ED3374(&__p, &v13);
    }

    a4 = 0;
  }

  if (a5)
  {
    sub_10005B678(&__p, __dst, *a5, a5[1], (a5[1] - *a5) >> 3);
  }

  v11 = sub_10071BDE8(*(a1 + 64), a3, a4, &__p, a6);
  sub_100005978(&v19);
  if (__p)
  {
    __dst = __p;
    operator delete(__p);
  }

  sub_100005978(&v17);
  return v11;
}

void sub_1014D9698(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, const void *a13)
{
  sub_100005978((v13 + 8));
  if (__p)
  {
    operator delete(__p);
  }

  sub_100005978(&a13);
  _Unwind_Resume(a1);
}

uint64_t sub_1014D96E4(uint64_t a1, uint64_t a2, const __CFString *a3, const void *a4, const __CFString *a5, char **a6, uint64_t a7, const void *a8)
{
  v21 = 0;
  sub_10005C624(&v21, a2);
  v22 = @"PersonalWallet";
  v23[0] = v21;
  v23[1] = @"s";
  __dst = 0;
  v20 = 0;
  __p = 0;
  sub_10005B328(&__p, &v22, &v24, 3uLL);
  v22 = 0;
  v23[0] = 0;
  sub_10005B574(&v22, a5, a7);
  if ((v22 & 1) == 0)
  {
    if (v23[0])
    {
      v17 = v23[0];
      sub_100ED3374(&__p, &v17);
    }

    a5 = 0;
  }

  if (a6)
  {
    sub_10005B678(&__p, __dst, *a6, a6[1], (a6[1] - *a6) >> 3);
  }

  v15 = sub_10071B8E0(*(a1 + 64), a3, a4, a5, &__p, a7, a8, @"PWallet");
  sub_100005978(v23);
  if (__p)
  {
    __dst = __p;
    operator delete(__p);
  }

  sub_100005978(&v21);
  return v15;
}

void sub_1014D9858(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, const void *a14)
{
  sub_100005978((v14 + 8));
  if (__p)
  {
    operator delete(__p);
  }

  sub_100005978(&a14);
  _Unwind_Resume(a1);
}

const void **sub_1014D98A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, const __CFString *a3@<X2>, const __CFString *a4@<X3>, char **a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v18 = 0;
  sub_10005C624(&v18, a2);
  v19 = @"PersonalWallet";
  v20[0] = v18;
  v20[1] = @"s";
  __dst = 0;
  v17 = 0;
  __p = 0;
  sub_10005B328(&__p, &v19, &v21, 3uLL);
  v19 = 0;
  v20[0] = 0;
  sub_10005B574(&v19, a4, a6);
  if ((v19 & 1) == 0)
  {
    if (v20[0])
    {
      v14 = v20[0];
      sub_100ED3374(&__p, &v14);
    }

    a4 = 0;
  }

  if (a5)
  {
    sub_10005B678(&__p, __dst, *a5, a5[1], (a5[1] - *a5) >> 3);
  }

  sub_10005B920(*(a1 + 64), a3, a4, &__p, a6, a7);
  sub_100005978(v20);
  if (__p)
  {
    __dst = __p;
    operator delete(__p);
  }

  return sub_100005978(&v18);
}

void sub_1014D9A00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, const void *a14)
{
  sub_100005978((v14 + 8));
  if (__p)
  {
    operator delete(__p);
  }

  sub_100005978(&a14);
  _Unwind_Resume(a1);
}

const void **sub_1014D9A4C@<X0>(uint64_t a1@<X1>, const __CFString *a2@<X3>, char **a3@<X4>, uint64_t a4@<X5>, void *a5@<X8>, uint64_t a6@<X0>, const __CFString *a7@<X2>)
{
  v18 = 0;
  sub_10005C624(&v18, a1);
  v19 = @"PersonalWallet";
  v20[0] = v18;
  v20[1] = @"s";
  __dst = 0;
  v17 = 0;
  __p = 0;
  sub_10005B328(&__p, &v19, &v21, 3uLL);
  v19 = 0;
  v20[0] = 0;
  sub_10005B574(&v19, a2, a4);
  if ((v19 & 1) == 0)
  {
    if (v20[0])
    {
      v14 = v20[0];
      sub_100ED3374(&__p, &v14);
    }

    a2 = 0;
  }

  if (a3)
  {
    sub_10005B678(&__p, __dst, *a3, a3[1], (a3[1] - *a3) >> 3);
  }

  sub_10005B878(a5, *(a6 + 64), a7, a2, &__p, a4);
  sub_100005978(v20);
  if (__p)
  {
    __dst = __p;
    operator delete(__p);
  }

  return sub_100005978(&v18);
}

void sub_1014D9BA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, const void *a14)
{
  sub_100005978((v14 + 8));
  if (__p)
  {
    operator delete(__p);
  }

  sub_100005978(&a14);
  _Unwind_Resume(a1);
}

uint64_t sub_1014D9BF4(uint64_t a1, uint64_t a2, const __CFString *a3, const __CFString *a4, char **a5, uint64_t a6)
{
  v17 = 0;
  sub_10005C624(&v17, a2);
  v18 = @"PersonalWallet";
  v19[0] = v17;
  v19[1] = @"s";
  __dst = 0;
  v16 = 0;
  __p = 0;
  sub_10005B328(&__p, &v18, &v20, 3uLL);
  v18 = 0;
  v19[0] = 0;
  sub_10005B574(&v18, a4, a6);
  if ((v18 & 1) == 0)
  {
    if (v19[0])
    {
      v13 = v19[0];
      sub_100ED3374(&__p, &v13);
    }

    a4 = 0;
  }

  if (a5)
  {
    sub_10005B678(&__p, __dst, *a5, a5[1], (a5[1] - *a5) >> 3);
  }

  v11 = sub_10071BDE8(*(a1 + 64), a3, a4, &__p, a6);
  sub_100005978(v19);
  if (__p)
  {
    __dst = __p;
    operator delete(__p);
  }

  sub_100005978(&v17);
  return v11;
}

void sub_1014D9D48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, const void *a14)
{
  sub_100005978((v14 + 8));
  if (__p)
  {
    operator delete(__p);
  }

  sub_100005978(&a14);
  _Unwind_Resume(a1);
}

const void **sub_1014D9D94(uint64_t a1, uint64_t a2, const __CFString *a3, const void *a4, char **a5, const void *a6)
{
  v16 = 0;
  sub_10005C624(&v16, a2);
  v17 = @"PersonalWallet";
  v18[0] = v16;
  v18[1] = @"s";
  __dst = 0;
  v15 = 0;
  __p = 0;
  sub_10005B328(&__p, &v17, &v19, 3uLL);
  v17 = 0;
  v18[0] = 0;
  sub_10005B574(&v17, 0, 1);
  if ((v17 & 1) == 0 && v18[0])
  {
    v12 = v18[0];
    sub_100ED3374(&__p, &v12);
  }

  if (a5)
  {
    sub_10005B678(&__p, __dst, *a5, a5[1], (a5[1] - *a5) >> 3);
  }

  sub_10071B99C(*(a1 + 64), a3, a4, 0, &__p, 1, a6, @"PWallet");
  sub_100005978(v18);
  if (__p)
  {
    __dst = __p;
    operator delete(__p);
  }

  return sub_100005978(&v16);
}

void sub_1014D9EEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, const void *a14)
{
  sub_100005978((v14 + 8));
  if (__p)
  {
    operator delete(__p);
  }

  sub_100005978(&a14);
  _Unwind_Resume(a1);
}

const void **sub_1014D9F38(uint64_t a1, uint64_t a2)
{
  sub_100060DE8(&v6, (a2 + 8));
  v3 = *(a1 + 8);
  if (v3 != &v6)
  {
    v4 = *v3;
    *v3 = 0;
    v7 = v4;
    *v3 = v6;
    v6 = 0;
    sub_100005978(&v7);
  }

  return sub_100005978(&v6);
}

void sub_1014D9FA8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1014D9FFC(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1014DA03C(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_1014DA068(ServiceManager::Service *this)
{
  *this = off_101F43E10;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);
}

void sub_1014DA0C4(ServiceManager::Service *this)
{
  *this = off_101F43E10;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);

  operator delete();
}

uint64_t *sub_1014DA144@<X0>(uint64_t *a1@<X8>)
{
  v2 = 2;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  return sub_1000FF040(a1, &v2, &vars0, 1);
}

void sub_1014DA188(uint64_t a1, dispatch_object_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v3);
    sub_1014D7748(v2, v3);
  }

  v4 = *(a1 + 8);

  sub_1014D7748(v4, 0);
}

void sub_1014DA224(uint64_t a1, xpc_object_t *a2, NSObject **a3)
{
  v4 = *a2;
  if (*a2)
  {
    xpc_retain(*a2);
  }

  else
  {
    v4 = xpc_null_create();
  }

  v5 = *a3;
  if (v5)
  {
    dispatch_retain(v5);
    dispatch_group_enter(v5);
    dispatch_group_leave(v5);
    dispatch_release(v5);
  }

  xpc_release(v4);
}

void sub_1014DA29C(uint64_t a1, int a2, ServiceStage *this)
{
  v3 = *(a1 + 8);
  ServiceStage::holdOffStage(&group[1], this);
  v4 = *(v3 + 16);
  if (v4)
  {
    if (std::__shared_weak_count::lock(v4))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_1014DA3B0(ServiceManager::Service *this)
{
  *this = off_101F43E10;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);
}

void sub_1014DA40C(ServiceManager::Service *this)
{
  *this = off_101F43E10;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);

  operator delete();
}

uint64_t *sub_1014DA490(uint64_t *a1)
{
  v1 = *a1;
  v24 = a1;
  v25 = v1;
  v2 = *v1;
  sub_10071C330(cf, *(*v1 + 64), @"pw_ver", 0, 0);
  v3 = cf[0];
  LODWORD(__p) = 1;
  if (cf[0] && (v4 = CFGetTypeID(cf[0]), v4 == CFNumberGetTypeID()))
  {
    ctu::cf::assign(&__p, v3, v5);
    v6 = __p;
    sub_10000A1EC(cf);
    if (v6 > 3)
    {
      goto LABEL_92;
    }

    v7 = v6;
  }

  else
  {
    sub_10000A1EC(cf);
    v6 = 1;
    v7 = 1;
  }

  v8 = v2[5];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(cf[0]) = 134218240;
    *(cf + 4) = v6;
    WORD2(cf[1]) = 2048;
    *(&cf[1] + 6) = 4;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I migrating wallets from ver %zu to %zu", cf, 0x16u);
  }

  v26 = 0;
  v27 = 0;
  v28 = 0;
  (*(*v2 + 80))(&v26, v2, 0);
  v21 = v2[8];
  os_unfair_lock_lock(v21 + 8);
  v22 = v2[8];
  os_unfair_lock_lock(v22 + 9);
  if (v7 <= 1)
  {
    v9 = v26;
    for (i = v27; v9 != i; v9 += 24)
    {
      __p = 0;
      v30 = 0;
      v31 = 0;
      memset(cf, 0, 24);
      sub_1014D728C(cf, v2, v9, @"GSMASettingsSwitchState", 0, &__p, 1);
      sub_1014D9D94(v2, v9, @"GSMASettingsSwitchState", cf[1], &__p, cf[2]);
      if (cf[1])
      {
        sub_1014D75BC(v2, v9, @"GSMASettingsSwitchState", 0, &__p, 1);
      }

      sub_10000A1EC(&cf[2]);
      sub_10000A1EC(&cf[1]);
      if (__p)
      {
        v30 = __p;
        operator delete(__p);
      }

      v34 = @"MaxDataRate";
      v30 = 0;
      v31 = 0;
      __p = 0;
      sub_10005B328(&__p, &v34, &v35, 1uLL);
      memset(cf, 0, 24);
      sub_1014D728C(cf, v2, v9, @"Enable5G", 0, &__p, 1);
      sub_1014D9D94(v2, v9, @"Enable5G", cf[1], &__p, cf[2]);
      if (cf[1])
      {
        sub_1014D75BC(v2, v9, @"Enable5G", 0, &__p, 1);
      }

      sub_10000A1EC(&cf[2]);
      sub_10000A1EC(&cf[1]);
      if (__p)
      {
        v30 = __p;
        operator delete(__p);
      }

      v34 = @"MaxDataRate";
      v30 = 0;
      v31 = 0;
      __p = 0;
      sub_10005B328(&__p, &v34, &v35, 1uLL);
      memset(cf, 0, 24);
      sub_1014D728C(cf, v2, v9, @"EnableLTE", 0, &__p, 1);
      sub_1014D9D94(v2, v9, @"EnableLTE", cf[1], &__p, cf[2]);
      if (cf[1])
      {
        sub_1014D75BC(v2, v9, @"EnableLTE", 0, &__p, 1);
      }

      sub_10000A1EC(&cf[2]);
      sub_10000A1EC(&cf[1]);
      if (__p)
      {
        v30 = __p;
        operator delete(__p);
      }

      v34 = @"MaxDataRate";
      v30 = 0;
      v31 = 0;
      __p = 0;
      sub_10005B328(&__p, &v34, &v35, 1uLL);
      memset(cf, 0, 24);
      sub_1014D728C(cf, v2, v9, @"Enable3G", 0, &__p, 1);
      sub_1014D9D94(v2, v9, @"Enable3G", cf[1], &__p, cf[2]);
      if (cf[1])
      {
        sub_1014D75BC(v2, v9, @"Enable3G", 0, &__p, 1);
      }

      sub_10000A1EC(&cf[2]);
      sub_10000A1EC(&cf[1]);
      if (__p)
      {
        v30 = __p;
        operator delete(__p);
      }

      v34 = @"MaxDataRate";
      v30 = 0;
      v31 = 0;
      __p = 0;
      sub_10005B328(&__p, &v34, &v35, 1uLL);
      memset(cf, 0, 24);
      sub_1014D728C(cf, v2, v9, @"Enable5GSwitchSupport", 0, &__p, 1);
      sub_1014D9D94(v2, v9, @"Enable5GSwitchSupport", cf[1], &__p, cf[2]);
      if (cf[1])
      {
        sub_1014D75BC(v2, v9, @"Enable5GSwitchSupport", 0, &__p, 1);
      }

      sub_10000A1EC(&cf[2]);
      sub_10000A1EC(&cf[1]);
      if (__p)
      {
        v30 = __p;
        operator delete(__p);
      }

      v34 = @"MaxDataRate";
      v30 = 0;
      v31 = 0;
      __p = 0;
      sub_10005B328(&__p, &v34, &v35, 1uLL);
      memset(cf, 0, 24);
      sub_1014D728C(cf, v2, v9, @"EnableLTESwitchSupport", 0, &__p, 1);
      sub_1014D9D94(v2, v9, @"EnableLTESwitchSupport", cf[1], &__p, cf[2]);
      if (cf[1])
      {
        sub_1014D75BC(v2, v9, @"EnableLTESwitchSupport", 0, &__p, 1);
      }

      sub_10000A1EC(&cf[2]);
      sub_10000A1EC(&cf[1]);
      if (__p)
      {
        v30 = __p;
        operator delete(__p);
      }

      v34 = @"MaxDataRate";
      v30 = 0;
      v31 = 0;
      __p = 0;
      sub_10005B328(&__p, &v34, &v35, 1uLL);
      memset(cf, 0, 24);
      sub_1014D728C(cf, v2, v9, @"Enable3GSwitchSupport", 0, &__p, 1);
      sub_1014D9D94(v2, v9, @"Enable3GSwitchSupport", cf[1], &__p, cf[2]);
      if (cf[1])
      {
        sub_1014D75BC(v2, v9, @"Enable3GSwitchSupport", 0, &__p, 1);
      }

      sub_10000A1EC(&cf[2]);
      sub_10000A1EC(&cf[1]);
      if (__p)
      {
        v30 = __p;
        operator delete(__p);
      }

      v34 = @"PhoneServices";
      v30 = 0;
      v31 = 0;
      __p = 0;
      sub_10005B328(&__p, &v34, &v35, 1uLL);
      memset(cf, 0, 24);
      sub_1014D728C(cf, v2, v9, @"VoLTEUserPreference", 0, &__p, 1);
      sub_1014D9D94(v2, v9, @"VoLTEUserPreference", cf[1], &__p, cf[2]);
      if (cf[1])
      {
        sub_1014D75BC(v2, v9, @"VoLTEUserPreference", 0, &__p, 1);
      }

      sub_10000A1EC(&cf[2]);
      sub_10000A1EC(&cf[1]);
      if (__p)
      {
        v30 = __p;
        operator delete(__p);
      }

      v34 = @"PhoneServices";
      v30 = 0;
      v31 = 0;
      __p = 0;
      sub_10005B328(&__p, &v34, &v35, 1uLL);
      memset(cf, 0, 24);
      sub_1014D728C(cf, v2, v9, @"thumper.switch.status", 0, &__p, 1);
      sub_1014D9D94(v2, v9, @"thumper.switch.status", cf[1], &__p, cf[2]);
      if (cf[1])
      {
        sub_1014D75BC(v2, v9, @"thumper.switch.status", 0, &__p, 1);
      }

      sub_10000A1EC(&cf[2]);
      sub_10000A1EC(&cf[1]);
      if (__p)
      {
        v30 = __p;
        operator delete(__p);
      }

      v34 = @"PhoneServices";
      v30 = 0;
      v31 = 0;
      __p = 0;
      sub_10005B328(&__p, &v34, &v35, 1uLL);
      memset(cf, 0, 24);
      sub_1014D728C(cf, v2, v9, @"last.icloud.ver", 0, &__p, 1);
      sub_1014D9D94(v2, v9, @"last.icloud.ver", cf[1], &__p, cf[2]);
      if (cf[1])
      {
        sub_1014D75BC(v2, v9, @"last.icloud.ver", 0, &__p, 1);
      }

      sub_10000A1EC(&cf[2]);
      sub_10000A1EC(&cf[1]);
      if (__p)
      {
        v30 = __p;
        operator delete(__p);
      }

      v34 = @"PhoneServices";
      v30 = 0;
      v31 = 0;
      __p = 0;
      sub_10005B328(&__p, &v34, &v35, 1uLL);
      memset(cf, 0, 24);
      sub_1014D728C(cf, v2, v9, @"vowifi.switch.status", 0, &__p, 1);
      sub_1014D9D94(v2, v9, @"vowifi.switch.status", cf[1], &__p, cf[2]);
      if (cf[1])
      {
        sub_1014D75BC(v2, v9, @"vowifi.switch.status", 0, &__p, 1);
      }

      sub_10000A1EC(&cf[2]);
      sub_10000A1EC(&cf[1]);
      if (__p)
      {
        v30 = __p;
        operator delete(__p);
      }

      v34 = @"PhoneServices";
      v30 = 0;
      v31 = 0;
      __p = 0;
      sub_10005B328(&__p, &v34, &v35, 1uLL);
      memset(cf, 0, 24);
      sub_1014D728C(cf, v2, v9, @"vowifi.roaming_switch.status", 0, &__p, 1);
      sub_1014D9D94(v2, v9, @"vowifi.roaming_switch.status", cf[1], &__p, cf[2]);
      if (cf[1])
      {
        sub_1014D75BC(v2, v9, @"vowifi.roaming_switch.status", 0, &__p, 1);
      }

      sub_10000A1EC(&cf[2]);
      sub_10000A1EC(&cf[1]);
      if (__p)
      {
        v30 = __p;
        operator delete(__p);
      }

      v34 = @"RegistrationModel";
      v30 = 0;
      v31 = 0;
      __p = 0;
      sub_10005B328(&__p, &v34, &v35, 1uLL);
      memset(cf, 0, 24);
      sub_1014D728C(cf, v2, v9, @"5GStandaloneEnabled", 0, &__p, 1);
      sub_1014D9D94(v2, v9, @"5GStandaloneEnabled", cf[1], &__p, cf[2]);
      if (cf[1])
      {
        sub_1014D75BC(v2, v9, @"5GStandaloneEnabled", 0, &__p, 1);
      }

      sub_10000A1EC(&cf[2]);
      sub_10000A1EC(&cf[1]);
      if (__p)
      {
        v30 = __p;
        operator delete(__p);
      }

      __p = 0;
      v30 = 0;
      v31 = 0;
      memset(cf, 0, 24);
      sub_1014D728C(cf, v2, v9, @"InternationalRoamingEDGE", 0, &__p, 1);
      sub_1014D9D94(v2, v9, @"InternationalRoamingEDGE", cf[1], &__p, cf[2]);
      if (cf[1])
      {
        sub_1014D75BC(v2, v9, @"InternationalRoamingEDGE", 0, &__p, 1);
      }

      sub_10000A1EC(&cf[2]);
      sub_10000A1EC(&cf[1]);
      if (__p)
      {
        v30 = __p;
        operator delete(__p);
      }

      v34 = @"DataService";
      v30 = 0;
      v31 = 0;
      __p = 0;
      sub_10005B328(&__p, &v34, &v35, 1uLL);
      memset(cf, 0, 24);
      sub_1014D728C(cf, v2, v9, @"SupportDynamicDataSimSwitch", 0, &__p, 1);
      sub_1014D9D94(v2, v9, @"SupportDynamicDataSimSwitch", cf[1], &__p, cf[2]);
      if (cf[1])
      {
        sub_1014D75BC(v2, v9, @"SupportDynamicDataSimSwitch", 0, &__p, 1);
      }

      sub_10000A1EC(&cf[2]);
      sub_10000A1EC(&cf[1]);
      if (__p)
      {
        v30 = __p;
        operator delete(__p);
      }
    }

    goto LABEL_73;
  }

  if (v7 != 3)
  {
LABEL_73:
    v10 = v26;
    for (j = v27; v10 != j; v10 += 24)
    {
      v34 = 0;
      sub_1014D728C(cf, v2, v10, @"lastGoodImsi", @"SatMsg", 0, 1);
      __p = &unk_101870047;
      v30 = &v34;
      v31 = &unk_101870047;
      sub_1014D9F38(&__p, cf);
      sub_10000A1EC(&cf[2]);
      sub_10000A1EC(&cf[1]);
      if (v34)
      {
        sub_1014D742C(v2, v10, @"homeIMSI", v34, 0, 1);
        sub_1014D75BC(v2, v10, @"lastGoodImsi", @"SatMsg", 0, 1);
      }

      else
      {
        sub_1014D728C(cf, v2, v10, @"lastGoodImsi", @"CarrierEntitlements", 0, 1);
        __p = &unk_101870047;
        v30 = &v34;
        v31 = &unk_101870047;
        sub_1014D9F38(&__p, cf);
        sub_10000A1EC(&cf[2]);
        sub_10000A1EC(&cf[1]);
        if (v34)
        {
          sub_1014D742C(v2, v10, @"homeIMSI", v34, 0, 1);
        }
      }

      sub_100005978(&v34);
    }
  }

  v12 = v26;
  for (k = v27; v12 != k; v12 += 24)
  {
    BOOLean = 0;
    sub_1014D728C(cf, v2, v12, @"data-only-plan", @"info", 0, 0);
    sub_10002FE1C(&v34, &cf[1]);
    __p = BOOLean;
    BOOLean = v34;
    v34 = 0;
    sub_100045C8C(&__p);
    sub_100045C8C(&v34);
    sub_10000A1EC(&cf[2]);
    sub_10000A1EC(&cf[1]);
    if (BOOLean)
    {
      sub_1014D75BC(v2, v12, @"data-only-plan", @"info", 0, 0);
      if (CFBooleanGetValue(BOOLean))
      {
        __p = 0;
        cf[0] = 1;
        v14 = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongLongType, cf);
        if (v14)
        {
          v15 = __p;
          __p = v14;
          cf[0] = v15;
          sub_100029A48(cf);
        }

        v34 = __p;
        __p = 0;
        sub_100029A48(&__p);
        sub_1014D742C(v2, v12, @"data-only-plan", v34, @"info", 0);
        sub_100029A48(&v34);
      }
    }

    sub_100045C8C(&BOOLean);
  }

  v16 = v2[8];
  __p = 0;
  cf[0] = 4;
  v17 = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongLongType, cf);
  if (v17)
  {
    __p = v17;
    cf[0] = 0;
    sub_100029A48(cf);
    v18 = __p;
  }

  else
  {
    v18 = 0;
  }

  v34 = v18;
  __p = 0;
  sub_100029A48(&__p);
  sub_10071B99C(v16, @"pw_ver", v18, 0, 0, 0, 0, 0);
  sub_100029A48(&v34);
  v19 = v2[5];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(cf[0]) = 134217984;
    *(cf + 4) = 4;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I migrated wallets to ver %zu", cf, 0xCu);
  }

  os_unfair_lock_unlock(v22 + 9);
  os_unfair_lock_unlock(v21 + 8);
  cf[0] = &v26;
  sub_10005AAF8(cf);
LABEL_92:
  sub_10024BAAC(&v25);
  return sub_1000049E0(&v24);
}

void sub_1014DB430(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, os_unfair_lock_s *a9, os_unfair_lock_s *a10, uint64_t a11, uint64_t a12, uint64_t a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, __int16 *a22, char a23)
{
  sub_100029A48((v23 - 96));
  os_unfair_lock_unlock(a10 + 9);
  os_unfair_lock_unlock(a9 + 8);
  a22 = &a14;
  sub_10005AAF8(&a22);
  sub_10024BAAC(&a13);
  sub_1000049E0(&a12);
  _Unwind_Resume(a1);
}

void sub_1014DB5C0(uint64_t **a1)
{
  v5 = a1;
  v1 = *a1;
  v2 = **a1;
  if (*(v2 + 104))
  {
    os_state_remove_handler();
    *(v2 + 104) = 0;
  }

  v3 = v1[1];
  if (v3)
  {
    dispatch_group_leave(v3);
    v4 = v1[1];
    if (v4)
    {
      dispatch_release(v4);
    }
  }

  operator delete();
}

void sub_1014DB638(uint64_t **a1)
{
  v7 = a1;
  v1 = *a1;
  v2 = **a1;
  v9 = _NSConcreteStackBlock;
  v10 = 0x40000000;
  v11 = sub_1014DB73C;
  v12 = &unk_101F43E68;
  v13 = v2;
  v3 = os_state_add_handler();
  *(v2 + 104) = v3;
  if (!v3)
  {
    v4 = *(v2 + 40);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Could not add state capture handler", buf, 2u);
    }
  }

  v5 = v1[1];
  if (v5)
  {
    dispatch_group_leave(v5);
    v6 = v1[1];
    if (v6)
    {
      dispatch_release(v6);
    }
  }

  operator delete();
}

char *sub_1014DB73C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a2 + 16);
  if (v3 == 3)
  {
    propertyList = 0;
    v4 = kCommCenterPreferencesNoBackupAppID;
    *error = CFPreferencesCopyValue(@"PersonalWallet", kCommCenterPreferencesNoBackupAppID, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
    sub_100138C38(&propertyList, error);
    if (propertyList)
    {
      err = 0;
      *error = 0;
      *&error[8] = &err;
      Data = CFPropertyListCreateData(0, propertyList, kCFPropertyListBinaryFormat_v1_0, 0, error);
      theData = Data;
      sub_1003A5C24(error);
      if (Data)
      {
        Length = CFDataGetLength(Data);
        v7 = malloc_type_calloc(1uLL, Length + 200, 0x1000040BEF03554uLL);
        *v7 = 1;
        *(v7 + 1) = Length;
        strlcpy(v7 + 136, "PersonalWallet", 0x40uLL);
        BytePtr = CFDataGetBytePtr(theData);
        memcpy(v7 + 200, BytePtr, Length);
      }

      else
      {
        v11 = CFErrorCopyDescription(err);
        v14 = v11;
        v12 = *(v2 + 40);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          *error = 138412290;
          *&error[4] = v11;
          _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Could not convert PersonalWallet to serialized CF representation: %@", error, 0xCu);
        }

        sub_100005978(&v14);
        v7 = 0;
      }

      sub_10002D760(&theData);
      sub_1003A5A8C(&err);
      if (Data)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v10 = *(v2 + 40);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *error = 138412546;
        *&error[4] = @"PersonalWallet";
        *&error[12] = 2112;
        *&error[14] = v4;
        _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Failed to get contents of %@ at %@", error, 0x16u);
      }
    }

    v7 = 0;
LABEL_15:
    sub_10001021C(&propertyList);
    return v7;
  }

  v9 = *(v2 + 40);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *error = 67109120;
    *&error[4] = v3;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Skipping state handler for %d", error, 8u);
  }

  return 0;
}

void sub_1014DB9C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v6 = va_arg(va2, const void *);
  sub_10002D760(va);
  sub_1003A5A8C(va1);
  sub_10001021C(va2);
  _Unwind_Resume(a1);
}

const char **sub_1014DBA00(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = v1[1];
  result = isReal();
  if (result)
  {
    result = sub_100007A6C((v2 + 10), *v1);
    if (v2 + 11 == result)
    {
      v4 = v2[5];
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = *v1;
        v6 = *(*v1 + 23);
        v7 = v6 < 0;
        if (v6 < 0)
        {
          v6 = (*v1)[1];
        }

        if (v7)
        {
          v5 = **v1;
        }

        if (!v6)
        {
          v5 = "<invalid>";
        }

        v8 = 136315138;
        v9 = v5;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I activating wallet %s", &v8, 0xCu);
      }

      return sub_1013B731C(v2 + 10, *v1, *v1);
    }
  }

  return result;
}

void sub_1014DBB04(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(v1 + 24);
  v3 = *(v2 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(v1 + 23);
    v5 = (v4 & 0x80u) != 0;
    if ((v4 & 0x80u) != 0)
    {
      v4 = *(v1 + 8);
    }

    if (v5)
    {
      v6 = *v1;
    }

    else
    {
      v6 = v1;
    }

    if (v4)
    {
      v7 = v6;
    }

    else
    {
      v7 = "<invalid>";
    }

    buf = 136315138;
    *buf_4 = v7;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I removing wallet %s", &buf, 0xCu);
  }

  sub_1000727F0((v2 + 80), v1);
  sub_1014D799C(v2, v1);
}

void sub_1014DBE28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *aBlock, dispatch_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, std::__shared_weak_count *a33)
{
  if (object)
  {
    dispatch_release(object);
  }

  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a18)
  {
    sub_100004A34(a18);
  }

  _Block_object_dispose(&a20, 8);
  if (a26)
  {
    std::__shared_weak_count::__release_weak(a26);
  }

  _Block_object_dispose(&a27, 8);
  if (a33)
  {
    sub_100004A34(a33);
  }

  _Unwind_Resume(a1);
}

__n128 sub_1014DBF20(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  return result;
}

void sub_1014DBF30(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    sub_100004A34(v1);
  }
}

__n128 sub_1014DBF40(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  return result;
}

void sub_1014DBF50(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1014DBF60(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v3 = *(v2 + 48);
  if (v3)
  {
    v4 = *(a1 + 48);
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      if (*(v2 + 40) && v4 + 88 == sub_100007A6C(v4 + 80, (a1 + 56)))
      {
        v7 = *(v4 + 40);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v8 = *(a1 + 79);
          v9 = (v8 & 0x80u) != 0;
          if ((v8 & 0x80u) != 0)
          {
            v8 = *(a1 + 64);
          }

          if (v9)
          {
            v10 = *(a1 + 56);
          }

          else
          {
            v10 = (a1 + 56);
          }

          if (v8)
          {
            v11 = v10;
          }

          else
          {
            v11 = "<invalid>";
          }

          v14 = 136315138;
          v15 = v11;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I postmortem wallet cleanup %s", &v14, 0xCu);
        }

        sub_1014D799C(v4, a1 + 56);
      }

      sub_100004A34(v6);
    }
  }

  v12 = *(*(a1 + 40) + 8);
  v13 = *(v12 + 48);
  *(v12 + 40) = 0;
  *(v12 + 48) = 0;
  if (v13)
  {
    sub_100004A34(v13);
  }
}

char *sub_1014DC0BC(char *result, uint64_t a2)
{
  if (*(a2 + 79) < 0)
  {
    return sub_100005F2C(result + 56, *(a2 + 56), *(a2 + 64));
  }

  v2 = *(a2 + 56);
  *(result + 9) = *(a2 + 72);
  *(result + 56) = v2;
  return result;
}

void sub_1014DC0E8(uint64_t a1)
{
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }
}

void sub_1014DC0FC(uint64_t *a2@<X8>)
{
  v3 = off_101FB97F8();
  *a2 = 0;
  a2[1] = 0;
  if (v3)
  {
    operator new();
  }
}

void sub_1014DC430(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, dispatch_object_t a9, std::__shared_weak_count *a10, dispatch_object_t object, void *__p, std::__shared_weak_count *a13, int a14, __int16 a15, char a16, char a17)
{
  if (object)
  {
    (*(object->isa + 1))(object, a2, a3, a4, a5, a6, a7, a8);
  }

  if (a10)
  {
    sub_100004A34(a10);
  }

  if (a13)
  {
    sub_100004A34(a13);
  }

  sub_100004A34(v17);
  _Unwind_Resume(a1);
}

void sub_1014DC578(void *a1, dispatch_object_t object)
{
  if (object)
  {
    dispatch_retain(object);
    dispatch_group_enter(object);
  }

  v4 = a1[2];
  if (v4)
  {
    if (std::__shared_weak_count::lock(v4))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_1014DC6A0(uint64_t result, int a2)
{
  if (*(result + 80) != a2)
  {
    sub_1014DC6E8(@"com.apple.coretelephony.ToggleAirplaneMode");

    sub_1014DC6E8(@"com.apple.coretelephony.ToggleCellularData");
  }
}

void sub_1014DC6E8(uint64_t a1)
{
  v2 = [(objc_class *)off_101FB97F8() sharedInstance];
  [v2 reloadControlsForExtension:a1 kind:a1 reason:@"com.apple.commcenter"];
}

void sub_1014DC764(uint64_t a1, int a2)
{
  if (*(a1 + 81) != a2)
  {
    sub_1014DC6E8(@"com.apple.coretelephony.ToggleCellularData");
  }
}

void sub_1014DC780(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 88);
  v3 = *(a1 + 96);
  v4 = *a2;
  if (v3 - v2 == a2[1] - *a2)
  {
    while (v2 != v3)
    {
      if (!BasicSimInfo::operator==())
      {
        goto LABEL_5;
      }

      v2 += 168;
      v4 += 168;
    }
  }

  else
  {
LABEL_5:

    sub_1014DC6E8(@"com.apple.coretelephony.ToggleCellularData");
  }
}

void sub_1014DC808(uint64_t a1)
{
  *a1 = off_101F43F10;
  v4 = (a1 + 88);
  sub_1000B2AF8(&v4);
  v2 = *(a1 + 72);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    sub_100004A34(v3);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 40));
  sub_1000C0544((a1 + 8));
  ToggleSettingsManagerInterface::~ToggleSettingsManagerInterface(a1);
}

void sub_1014DC890(uint64_t a1)
{
  sub_1014DC808(a1);

  operator delete();
}

Class sub_1014DC8C8()
{
  if (qword_101FCACA0 != -1)
  {
    dispatch_once(&qword_101FCACA0, &stru_101F43FC8);
  }

  result = objc_getClass("CHSControlService");
  qword_101FCAC98 = result;
  off_101FB97F8 = sub_1014DC92C;
  return result;
}

void sub_1014DC968(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1014DC9BC(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1014DC9FC(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_1014DCA28(ServiceManager::Service *this)
{
  *this = off_101F44058;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);
}

void sub_1014DCA84(ServiceManager::Service *this)
{
  *this = off_101F44058;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);

  operator delete();
}

uint64_t *sub_1014DCB04@<X0>(uint64_t *a1@<X8>)
{
  v2 = 0;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  return sub_1000FF040(a1, &v2, &vars0, 1);
}

void sub_1014DCB44(uint64_t a1, dispatch_object_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v3);
    sub_1014DC578(v2, v3);
  }

  v4 = *(a1 + 8);

  sub_1014DC578(v4, 0);
}

void sub_1014DCBE8(uint64_t a1, char a2, ServiceStage *this)
{
  v3 = *(a1 + 8);
  ServiceStage::holdOffStage(&group, this);
  v4 = *(v3 + 16);
  if (v4)
  {
    if (std::__shared_weak_count::lock(v4))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_1014DCD10(uint64_t *a1)
{
  Registry::createRestModuleOneTimeUseConnection(&v1, *(**a1 + 48));
  ctu::RestModule::connect();
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_10000501C(&__p, "/cc/props/airplane_mode");
  operator new();
}

void sub_1014DD104(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  sub_10002B644(&a19);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if ((v21 & 1) == 0)
  {
    sub_100004A34(v20);
  }

  std::__shared_weak_count::__release_weak(v19);
  sub_1000FF844(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

__n128 sub_1014DD24C(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F440D8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1014DD284(void *a1, xpc *this, BOOL a3)
{
  v4 = a1[1];
  v5 = *v4;
  *v4 = xpc::dyn_cast_or_default(this, 0, a3);
  v6 = a1[3];
  v7 = a1[4];
  v8 = (a1[2] + (v7 >> 1));
  if (v7)
  {
    v6 = *(*v8 + v6);
  }

  return v6(v8, v5);
}

uint64_t sub_1014DD31C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1014DD3E4(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F44158;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1014DD41C(void *a1, xpc *this, BOOL a3)
{
  v4 = a1[1];
  v5 = *v4;
  *v4 = xpc::dyn_cast_or_default(this, 0, a3);
  v6 = a1[3];
  v7 = a1[4];
  v8 = (a1[2] + (v7 >> 1));
  if (v7)
  {
    v6 = *(*v8 + v6);
  }

  return v6(v8, v5);
}

uint64_t sub_1014DD4B4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1014DD57C(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F441D8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_1014DD5B4(void *a1, xpc_object_t *a2)
{
  v3 = a1[1];
  v7 = *v3;
  v8 = v3[2];
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  sub_10010A62C(v3, a2);
  v4 = a1[3];
  v5 = a1[4];
  v6 = (a1[2] + (v5 >> 1));
  if (v5)
  {
    v4 = *(*v6 + v4);
  }

  v4(v6, &v7);
  v9 = &v7;
  sub_1000B2AF8(&v9);
}

void sub_1014DD658(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  sub_1000B2AF8(&a12);
  _Unwind_Resume(a1);
}

uint64_t sub_1014DD674(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_1014DD6C0(void *a1)
{
  *a1 = off_101F44258;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_1014DD70C(void *a1)
{
  *a1 = off_101F44258;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_1014DD7EC(uint64_t result, uint64_t a2)
{
  *a2 = off_101F44258;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1014DD82C(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1014DD83C(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_1014DD87C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      if (*(a1 + 16))
      {
        sub_1014DC6E8(@"com.apple.coretelephony.ToggleCellularData");
      }

      sub_100004A34(v4);
    }
  }
}

uint64_t sub_1014DD8F8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_1014DD944(uint64_t *a1)
{
  v1 = *a1;
  v3 = a1;
  v4 = v1;
  ctu::RestModule::disconnect((*v1 + 64));
  sub_100D89210(&v4);
  return sub_1000049E0(&v3);
}

void sub_1014DD98C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100D89210(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

void sub_1014DDA1C(uint64_t a1, NSObject **a2)
{
  if (*a2)
  {
    dispatch_retain(*a2);
  }

  sub_10159BCDC();
}

void sub_1014DDA94(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    dispatch_release(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1014DDAAC(MMIFactoryInterface *this)
{
  *this = off_101F442D8;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  MMIFactoryInterface::~MMIFactoryInterface(this);
}

void sub_1014DDB08(MMIFactoryInterface *this)
{
  *this = off_101F442D8;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  MMIFactoryInterface::~MMIFactoryInterface(this);

  operator delete();
}

void stewie::TargetInstantAtLocationCacheFactory::createFactory(void *a1@<X0>, __int128 *a2@<X1>, os_log_t *a3@<X2>, uint64_t *a4@<X8>)
{
  if (!*a1)
  {
    v5 = *a3;
    if (!os_log_type_enabled(*a3, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v9 = 0;
    v6 = "targets required";
    v7 = &v9;
LABEL_9:
    _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, v6, v7, 2u);
    goto LABEL_7;
  }

  if (*a2)
  {
    operator new();
  }

  v5 = *a3;
  if (os_log_type_enabled(*a3, OS_LOG_TYPE_ERROR))
  {
    v8 = 0;
    v6 = "targetFactory required";
    v7 = &v8;
    goto LABEL_9;
  }

LABEL_7:
  *a4 = 0;
  a4[1] = 0;
}

void sub_1014DDD40(uint64_t a1@<X0>, void *a3@<X8>)
{
  v3 = *(a1 + 24);
  v7 = *(a1 + 16);
  v8 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 40);
  v5 = *(a1 + 32);
  v6 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  stewie::TargetInstantAtLocationCache::create(&v7, &v5, (a1 + 8), a3);
  if (v6)
  {
    sub_100004A34(v6);
  }

  if (v8)
  {
    sub_100004A34(v8);
  }
}

void sub_1014DDDC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1014DDDE8(void *a1)
{
  *a1 = off_101F44318;
  v2 = a1[5];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    sub_100004A34(v3);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 1));
  return a1;
}

void sub_1014DDE48(void *a1)
{
  *a1 = off_101F44318;
  v2 = a1[5];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    sub_100004A34(v3);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 1));

  operator delete();
}

void sub_1014DDECC(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1014DDF04(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_1014DDF34(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_1014DDF74(capabilities::ct *a1@<X0>, uint64_t *a3@<X8>)
{
  v4 = capabilities::ct::supportsBIPController(a1);
  *a3 = 0;
  a3[1] = 0;
  if (v4)
  {
    operator new();
  }
}

void sub_1014DE2DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, dispatch_object_t object, dispatch_object_t a10, void *__p, std::__shared_weak_count *a12, int a13, __int16 a14, char a15, char a16, dispatch_object_t a17)
{
  if (a17)
  {
    (*(a17->isa + 1))(a17, a2, a3, a4, a5, a6, a7, a8);
  }

  if (a12)
  {
    sub_100004A34(a12);
  }

  sub_100004A34(v17);
  _Unwind_Resume(a1);
}

void sub_1014DE464(uint64_t *a1, dispatch_object_t object)
{
  if (object)
  {
    dispatch_retain(object);
    dispatch_group_enter(object);
  }

  v4 = a1[1];
  if (v4)
  {
    if (std::__shared_weak_count::lock(v4))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

uint64_t sub_1014DE564(uint64_t a1)
{
  result = (*(**(a1 + 56) + 32))(*(a1 + 56));
  if (*(a1 + 120) != result)
  {
    *(a1 + 120) = result;
    result = *(a1 + 112);
    if (result)
    {
      v3 = *(*result + 48);

      return v3();
    }
  }

  return result;
}

uint64_t sub_1014DE604(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void sub_1014DE688(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1014DE6DC(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_1014DE71C(void *result)
{
  if (result)
  {
    v1 = result;
    sub_1014DE604((result + 11));
    v2 = v1[10];
    if (v2)
    {
      sub_100004A34(v2);
    }

    v3 = v1[8];
    if (v3)
    {
      sub_100004A34(v3);
    }

    v4 = v1[6];
    if (v4)
    {
      sub_100004A34(v4);
    }

    ctu::OsLogLogger::~OsLogLogger((v1 + 4));
    sub_1000C0544(v1);

    operator delete();
  }

  return result;
}

void sub_1014DE7A0(ServiceManager::Service *this)
{
  *this = off_101F44460;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);
}

void sub_1014DE7FC(ServiceManager::Service *this)
{
  *this = off_101F44460;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);

  operator delete();
}

uint64_t *sub_1014DE87C@<X0>(uint64_t *a1@<X8>)
{
  v2 = 2;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  return sub_1000FF040(a1, &v2, &vars0, 1);
}

void sub_1014DE8C0(uint64_t a1, dispatch_object_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v3);
    sub_1014DE464(v2, v3);
  }

  v4 = *(a1 + 8);

  sub_1014DE464(v4, 0);
}

void sub_1014DE960(uint64_t a1)
{
  v1 = *(*(a1 + 8) + 8);
  if (v1)
  {
    if (std::__shared_weak_count::lock(v1))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_1014DEA40(uint64_t a1, int a2, ServiceStage *this)
{
  v3 = *(a1 + 8);
  ServiceStage::holdOffStage(&group[1], this);
  v4 = *(v3 + 8);
  if (v4)
  {
    if (std::__shared_weak_count::lock(v4))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

uint64_t *sub_1014DEB54(uint64_t *a1)
{
  v1 = *a1;
  v5 = a1;
  v6 = v1;
  v2 = *v1;
  v3 = *(*v1 + 32);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Shutting down", buf, 2u);
  }

  (*(**(v2 + 56) + 24))(*(v2 + 56));
  ctu::RestModule::disconnect((v2 + 72));
  sub_1000FF844(&v6);
  return sub_1000049E0(&v5);
}

void sub_1014DEC00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1000FF844(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1014DEC1C(uint64_t *a1)
{
  v1 = *a1;
  v9 = a1;
  v10 = v1;
  v2 = *v1;
  v3 = *(*v1 + 32);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Bootstrapping", buf, 2u);
  }

  Registry::createRestModuleOneTimeUseConnection(&v11, *(v2 + 40));
  ctu::RestModule::connect();
  if (v12)
  {
    sub_100004A34(v12);
  }

  v4 = (v2 + 88);
  *buf = off_101F444E0;
  v14 = v2 + 72;
  v15 = buf;
  if (buf != (v2 + 88))
  {
    v5 = *(v2 + 112);
    if (v5 == v4)
    {
      v16[1] = v2 + 72;
      v16[2] = 0;
      v15 = 0;
      v16[0] = off_101F444E0;
      (*(*v5 + 24))(v5, buf);
      (*(**(v2 + 112) + 32))(*(v2 + 112));
      *(v2 + 112) = 0;
      v15 = buf;
      (*(v16[0] + 24))(v16, v2 + 88);
      (*(v16[0] + 32))(v16);
    }

    else
    {
      *(v2 + 88) = off_101F444E0;
      *(v2 + 96) = v2 + 72;
      v15 = v5;
    }

    *(v2 + 112) = v4;
  }

  sub_1014DE604(buf);
  v6 = *(v2 + 112);
  if (v6)
  {
    (*(*v6 + 48))(v6, v2 + 120);
  }

  v7 = *(v2 + 56);
  *buf = off_101F44570;
  v14 = v2;
  v15 = buf;
  (*(*v7 + 16))(v7, buf);
  sub_10002B644(buf);
  sub_1000FF844(&v10);
  return sub_1000049E0(&v9);
}

void sub_1014DEEC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1014DEF80(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F444E0;
  a2[1] = v2;
  return result;
}

void sub_1014DEFAC(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v9 = 0;
  v3 = v2;
  v4 = asString();
  ctu::rest::detail::write_enum_string_value(v3, v4, v5);
  sub_10000501C(&__p, "/cc/props/power_source");
  object = v9;
  if (v9)
  {
    xpc_retain(v9);
  }

  else
  {
    object = xpc_null_create();
  }

  ctu::RestModule::setProperty();
  xpc_release(object);
  if (v8 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v9);
}

void sub_1014DF060(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  xpc_release(*(v16 - 24));
  _Unwind_Resume(a1);
}

uint64_t sub_1014DF0A4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1014DF160(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F44570;
  a2[1] = v2;
  return result;
}

uint64_t sub_1014DF194(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1014DF1E0(uint64_t **a1)
{
  v3 = a1;
  v1 = **a1;
  v2 = *(v1 + 32);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Starting", buf, 2u);
  }

  sub_1014DE564(v1);
  operator delete();
}

void sub_1014DF9E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, void *a13, uint64_t a14, void *a15, void *a16, void *a17, void *a18, void *a19, void *a20, uint64_t a21, void *a22, void *a23, void *a24, ...)
{
  va_start(va, a24);

  sub_1005A16F4(va);
  sub_100010250((v31 - 120));

  _Unwind_Resume(a1);
}

void sub_1014DFC58(_Unwind_Exception *a1)
{
  v8 = v7;

  _Unwind_Resume(a1);
}

void *sub_1014DFCB4(void *a1)
{
  *a1 = off_101F447E8;
  v2 = a1[3];
  a1[2] = 0;
  a1[3] = 0;
  if (v2)
  {
    sub_100004A34(v2);
    v3 = a1[3];
    if (v3)
    {
      sub_100004A34(v3);
    }
  }

  return a1;
}

uint64_t sub_1014DFD18(uint64_t result)
{
  v1 = *(result + 8);
  if (v1[25] == 1 && (v1[26] & 1) == 0 && (v1[27] & 1) == 0)
  {
    operator new();
  }

  return result;
}

void sub_1014DFFE4(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = (*(**(a1 + 48) + 16))(*(a1 + 48));
    v4 = 136315138;
    v5 = sub_10097677C(v3);
    _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "Encountered failure in state:  %s", &v4, 0xCu);
  }

  sub_1014E0F84(a1);
}

void sub_1014E00EC(void *a1, int a2)
{
  v3 = a1[1];
  if (a2)
  {
    v5 = *(v3 + 8);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v7 = sub_10097677C(1u);
      v8 = 2048;
      v9 = 60;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%s Failed to disable GPS within %lld seconds", buf, 0x16u);
      v3 = a1[1];
    }

    sub_1014DFFE4(v3);
  }

  if ((*(v3 + 25) & 1) == 0)
  {
    v4 = *(v3 + 8);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v7 = sub_10097677C(1u);
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s Stewie is no longer required", buf, 0xCu);
      v3 = a1[1];
    }

    sub_1014E0404(v3);
  }

  if (!*(v3 + 32))
  {
    operator new();
  }
}

void sub_1014E03B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_1014E0468(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a1 + 16))
  {
    v7 = 17;
    strcpy(__p, "ReEvaluationTimer");
    v9[0] = off_101F44898;
    v9[1] = a1;
    v9[3] = v9;
    AutoStartTimer::create();
    v4 = v8;
    v8 = 0uLL;
    v5 = *(a1 + 24);
    *(a1 + 16) = v4;
    if (v5)
    {
      sub_100004A34(v5);
      if (*(&v8 + 1))
      {
        sub_100004A34(*(&v8 + 1));
      }
    }

    sub_10002B644(v9);
    if (v7 < 0)
    {
      operator delete(*__p);
    }
  }
}

void sub_1014E055C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  sub_10002B644(&a19);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1014E0588(capabilities::ct *a1, int a2)
{
  v3 = *(a1 + 1);
  if (a2)
  {
    v7 = *(v3 + 8);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v9 = sub_10097677C(2u);
      v10 = 2048;
      v11 = 60;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s Failed to Enter Stewie mode within %lld seconds", buf, 0x16u);
      v3 = *(a1 + 1);
    }

    sub_1014DFFE4(v3);
  }

  if ((*(v3 + 25) & 1) == 0)
  {
    v4 = *(v3 + 8);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v9 = sub_10097677C(2u);
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s Stewie is no longer required", buf, 0xCu);
      v3 = *(a1 + 1);
    }

    sub_1014E0404(v3);
  }

  if (*(v3 + 24) == 1 && *(v3 + 29) == 1 && *(v3 + 28) == 1)
  {
    operator new();
  }

  v5 = capabilities::ct::requiresSeparateOperatingModeForStewie(a1);
  v6 = *(a1 + 1);
  if (!v5 || (*(v6 + 24) & 1) == 0)
  {

    sub_1011350E4(v6);
  }
}

uint64_t sub_1014E0994(uint64_t result)
{
  v1 = result;
  v2 = *(result + 8);
  if ((*(v2 + 24) & 1) == 0)
  {
    v4 = *(v2 + 8);
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    v6 = 136315138;
    v7 = sub_10097677C(3u);
    v5 = "%s Operating mode is no longer Stewie";
    goto LABEL_14;
  }

  if (*(v2 + 29) != 1 || (*(v2 + 28) & 1) == 0)
  {
    v4 = *(v2 + 8);
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    v6 = 136315138;
    v7 = sub_10097677C(3u);
    v5 = "%s Stewie assertion was revoked";
LABEL_14:
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, v5, &v6, 0xCu);
    v2 = *(v1 + 8);
LABEL_11:
    sub_1014DFFE4(v2);
  }

  if ((*(v2 + 25) & 1) == 0)
  {
    v3 = *(result + 8);

    sub_1014E0404(v3);
  }

  return result;
}

uint64_t sub_1014E0B00(uint64_t a1)
{
  sub_101135330(*(a1 + 8));
  v2 = *(a1 + 8);
  if (*(v2 + 24) != 1)
  {
LABEL_4:
    sub_101135420(v2);
    operator new();
  }

  result = capabilities::ct::requiresSeparateOperatingModeForStewie(v2);
  if ((result & 1) == 0)
  {
    v2 = *(a1 + 8);
    goto LABEL_4;
  }

  return result;
}

void sub_1014E0DC4(void *a1)
{
  sub_1014DFCB4(a1);

  operator delete();
}

void *sub_1014E0DFC(void *a1)
{
  *a1 = off_101F44688;
  v2 = a1[5];
  if (v2)
  {
    sub_100004A34(v2);
  }

  return sub_1014DFCB4(a1);
}

void sub_1014E0E58(void *a1)
{
  *a1 = off_101F44688;
  v2 = a1[5];
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_1014DFCB4(a1);

  operator delete();
}

void sub_1014E0ECC(void *a1)
{
  sub_1014DFCB4(a1);

  operator delete();
}

void sub_1014E0F08(void *a1)
{
  sub_1014DFCB4(a1);

  operator delete();
}

void sub_1014E0F44(void *a1)
{
  sub_1014DFCB4(a1);

  operator delete();
}

void *sub_1014E11B0(void *a1)
{
  *a1 = off_101F44818;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_1014E11FC(void *a1)
{
  *a1 = off_101F44818;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_1014E12DC(uint64_t result, uint64_t a2)
{
  *a2 = off_101F44818;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1014E131C(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1014E132C(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_1014E136C(void *a1, char *a2)
{
  v3 = a1[3];
  if (v3)
  {
    v4 = *a2;
    v5 = a1[1];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      if (a1[2])
      {
        v7 = *(v5 + 8);
        v8 = *(v7 + 8);
        if (v4)
        {
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
          {
            v9 = 136315138;
            v10[0] = sub_10097677C(1u);
            _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s Successfully disabled GPS", &v9, 0xCu);
          }

          operator new();
        }

        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          v9 = 136315138;
          v10[0] = sub_10097677C(1u);
          _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s Failed to disable GPS - assertion rejected", &v9, 0xCu);
          v7 = *(v5 + 8);
        }

        sub_1014DFFE4(v7);
      }

      sub_100004A34(v6);
    }
  }
}

void sub_1014E1770(_Unwind_Exception *a1)
{
  (*(*v2 + 8))(v2);
  sub_100004A34(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1014E17F8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1014E18B4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F44898;
  a2[1] = v2;
  return result;
}

uint64_t sub_1014E18E0(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = v1[3];
  v1[2] = 0;
  v1[3] = 0;
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(*v1 + 24);

  return v3(v1, 1);
}

uint64_t sub_1014E1948(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sms::Controller::handleWea(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a5;
  v10 = (*(**(a1 + 48) + 16))(*(a1 + 48));
  v35[0] = 0;
  v35[1] = 0;
  v36 = 0;
  sub_1014E30EC(v35, a3);
  __p = 0;
  v33 = 0;
  v34 = 0;
  sub_1014E30EC(&__p, a4);
  v11 = *v10;
  if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = sms::asString();
    v13 = v35;
    if (v36 < 0)
    {
      v13 = v35[0];
    }

    *buf = 136446466;
    *&buf[4] = v12;
    v39 = 2082;
    v40 = v13;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I WEA format: [%{public}s] pdu: [%{public}s]", buf, 0x16u);
  }

  v14 = HIBYTE(v34);
  v15 = SHIBYTE(v34);
  if (v34 < 0)
  {
    v14 = v33;
  }

  if (v14)
  {
    v16 = *v10;
    if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
    {
      p_p = __p;
      if (v15 >= 0)
      {
        p_p = &__p;
      }

      *buf = 136642819;
      *&buf[4] = p_p;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I WAC pdu: [%{sensitive}s]", buf, 0xCu);
    }
  }

  if (v5 == 3)
  {
    v18 = 4;
  }

  else
  {
    v18 = v5;
  }

  if (v18 == 2)
  {
    *__dst = 0;
    ServiceMap = Registry::getServiceMap(*(a1 + 80));
    v20 = ServiceMap;
    if (v21 < 0)
    {
      v22 = (v21 & 0x7FFFFFFFFFFFFFFFLL);
      v23 = 5381;
      do
      {
        v21 = v23;
        v24 = *v22++;
        v23 = (33 * v23) ^ v24;
      }

      while (v24);
    }

    std::mutex::lock(ServiceMap);
    *buf = v21;
    v25 = sub_100009510(&v20[1].__m_.__sig, buf);
    if (v25)
    {
      v27 = v25[3];
      v26 = v25[4];
      if (v26)
      {
        atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v20);
        atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v26);
        v28 = 0;
        goto LABEL_29;
      }
    }

    else
    {
      v27 = 0;
    }

    std::mutex::unlock(v20);
    v26 = 0;
    v28 = 1;
LABEL_29:
    (*(*v27 + 80))(__dst, v27, a2, 1, @"SMSSettings", 0, 0);
    if ((v28 & 1) == 0)
    {
      sub_100004A34(v26);
    }

    operator new();
  }

  if ((v18 & 0xFFFFFFFE) == 4)
  {
    operator new();
  }

  v29 = *v10;
  if (os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
  {
    v30 = sms::asString();
    *buf = 136446210;
    *&buf[4] = v30;
    _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "Invalid WEA format %{public}s", buf, 0xCu);
  }

  if (SHIBYTE(v34) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v36) < 0)
  {
    operator delete(v35[0]);
  }

  return 2;
}

void sub_1014E2E64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, int a14, uint64_t a15, int a16, int a17, std::__shared_weak_count *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, void *__p, uint64_t a39, int a40, __int16 a41, char a42, char a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53)
{
  if (a26)
  {
    sub_100004A34(a26);
  }

  v57 = *(v55 - 200);
  if (v57)
  {
    sub_100004A34(v57);
  }

  if ((v54 & 1) == 0)
  {
    sub_100004A34(v53);
  }

  sub_100004A34(a18);
  if (a43 < 0)
  {
    operator delete(__p);
  }

  if (a49 < 0)
  {
    operator delete(a44);
  }

  _Unwind_Resume(a1);
}

void sub_1014E30EC(uint64_t *a1, uint64_t a2)
{
  if (*a2 == *(a2 + 8))
  {
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  else
  {
    v3[0] = 0;
    v3[1] = 0;
    ctu::TextConverter::TextConverter(v3);
    ctu::TextConverter::pushConversion();
    ctu::TextConverter::setSource(v3, *a2, *(a2 + 8) - *a2);
    ctu::TextConverter::readChars(v3, 0x7FFFFFFFuLL);
    ctu::TextConverter::~TextConverter(v3);
  }
}

void sub_1014E3190(uint64_t a1, void *a2)
{
  v2 = 0;
  v3 = 0;
  operator new();
}

void sub_1014E34D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20, char a21)
{
  sub_100DBA588(&a21);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if ((v23 & 1) == 0)
  {
    sub_100004A34(v22);
  }

  if (v21)
  {
    sub_100004A34(v21);
  }

  if (a20)
  {
    sub_100004A34(a20);
  }

  _Unwind_Resume(a1);
}

void sms::Controller::dispatchWea(uint64_t a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v3[0] = 0;
  v3[1] = 0;
  sub_100004AA0(v3, (a1 + 8));
  operator new();
}

void sub_1014E3688(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a4)
  {
    atomic_fetch_add_explicit((a4 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = a2[1];
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v6[0] = 0;
  v6[1] = 0;
  sub_100004AA0(v6, (a1 + 8));
  operator new();
}

void sms::Controller::copyCellBroadcastAlertTypes(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v8 = a2;
  v7[0] = a1;
  v7[1] = &v8;
  if (*(a1 + 32))
  {
    if (dispatch_workloop_is_current())
    {
      (*(**(a1 + 2584) + 16))(*(a1 + 2584), v8);
      return;
    }

    v5 = *(a1 + 32) == 0;
  }

  else
  {
    v5 = 1;
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 0x40000000;
  v9[2] = sub_1014E716C;
  v9[3] = &unk_101F44A28;
  v9[4] = a1 + 8;
  v9[5] = v7;
  v10 = v9;
  v6 = *(a1 + 24);
  *a3 = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  if (v5)
  {
    v12 = sub_1014E71A0;
    v13 = &unk_101F44A48;
    v14 = a3;
    v15 = &v10;
    dispatch_sync(v6, block);
  }

  else
  {
    v12 = sub_1014E7218;
    v13 = &unk_101F44A68;
    v14 = a3;
    v15 = &v10;
    dispatch_async_and_wait(v6, block);
  }
}

uint64_t sms::Controller::getCellBroadcastSettingForAlertType(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a2;
  v10[3] = a4;
  v11 = a3;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v11;
  if (*(a1 + 32))
  {
    if (dispatch_workloop_is_current())
    {
      v6 = (*(**(a1 + 2584) + 40))(*(a1 + 2584), v12, v11, a4);
      return v6 & 1;
    }

    v7 = *(a1 + 32) == 0;
  }

  else
  {
    v7 = 1;
  }

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 0x40000000;
  v13[2] = sub_1014E7290;
  v13[3] = &unk_101F44A88;
  v13[4] = a1 + 8;
  v13[5] = v10;
  v14 = v13;
  v8 = *(a1 + 24);
  v20 = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  if (v7)
  {
    v16 = sub_100059610;
    v17 = &unk_101F44AA8;
    v18 = &v20;
    v19 = &v14;
    dispatch_sync(v8, block);
  }

  else
  {
    v16 = sub_10006A56C;
    v17 = &unk_101F44AC8;
    v18 = &v20;
    v19 = &v14;
    dispatch_async_and_wait(v8, block);
  }

  v6 = v20;
  return v6 & 1;
}

uint64_t sms::Controller::setCellBroadcastSettingForAlertType(capabilities::ct *a1, uint64_t a2, uint64_t a3, char a4)
{
  v12 = a2;
  v11 = a3;
  v10 = a4;
  v9[0] = a1;
  v9[1] = &v12;
  v9[2] = &v11;
  v9[3] = &v10;
  if (*(a1 + 4))
  {
    if (dispatch_workloop_is_current())
    {
      v5 = sub_1014E3C90(a1, v12, v11, v10);
      return v5 & 1;
    }

    v6 = *(a1 + 4) == 0;
  }

  else
  {
    v6 = 1;
  }

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 0x40000000;
  v13[2] = sub_1014E72CC;
  v13[3] = &unk_101F44AE8;
  v13[4] = a1 + 8;
  v13[5] = v9;
  v14 = v13;
  v7 = *(a1 + 3);
  v20 = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  if (v6)
  {
    v16 = sub_100059610;
    v17 = &unk_101F44AA8;
    v18 = &v20;
    v19 = &v14;
    dispatch_sync(v7, block);
  }

  else
  {
    v16 = sub_10006A56C;
    v17 = &unk_101F44AC8;
    v18 = &v20;
    v19 = &v14;
    dispatch_async_and_wait(v7, block);
  }

  v5 = v20;
  return v5 & 1;
}

uint64_t sub_1014E3C90(capabilities::ct *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (capabilities::ct::supportsGemini(a1))
  {
    if (a4)
    {
      subscriber::makeSimSlotRange();
      v8 = v16;
      if (v16 == v17)
      {
        goto LABEL_21;
      }

      do
      {
        if (v18(*v8))
        {
          break;
        }

        ++v8;
      }

      while (v8 != v17);
      if (v8 == v17)
      {
LABEL_21:
        v9 = 0;
      }

      else
      {
        v9 = 0;
        do
        {
          v10 = *v8;
          v11 = (*(**(a1 + 323) + 48))(*(a1 + 323), v10, a3, 1);
          v12 = *(*(**(a1 + 6) + 16))(*(a1 + 6), v10);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Cell broadcast setting has been changed, pushing the configuration to baseband again", buf, 2u);
          }

          sms::Controller::setupBasebandForCellBroadcast_sync(a1, v10);
          do
          {
            ++v8;
          }

          while (v8 != v17 && (v18(*v8) & 1) == 0);
          v9 |= v11;
        }

        while (v8 != v17);
      }

      return v9 & 1;
    }

    v13 = *(**(a1 + 323) + 48);
  }

  else
  {
    v13 = *(**(a1 + 323) + 48);
  }

  v9 = v13();
  v14 = *(*(**(a1 + 6) + 16))(*(a1 + 6), a2);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v16) = 0;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I Cell broadcast setting has been changed, pushing the configuration to baseband again", &v16, 2u);
  }

  sms::Controller::setupBasebandForCellBroadcast_sync(a1, a2);
  return v9 & 1;
}

uint64_t sms::Controller::storeMMIAlertPreference(sms::Controller *this, uint64_t a2)
{
  v8 = a2;
  v7[0] = this;
  v7[1] = &v8;
  if (*(this + 4))
  {
    if (dispatch_workloop_is_current())
    {
      v3 = sub_1014E4070(this);
      return v3 & 1;
    }

    v4 = *(this + 4) == 0;
  }

  else
  {
    v4 = 1;
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 0x40000000;
  v9[2] = sub_1014E72E8;
  v9[3] = &unk_101F44B08;
  v9[4] = this + 8;
  v9[5] = v7;
  v10 = v9;
  v5 = *(this + 3);
  v16 = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  if (v4)
  {
    v12 = sub_100059610;
    v13 = &unk_101F44AA8;
    v14 = &v16;
    v15 = &v10;
    dispatch_sync(v5, block);
  }

  else
  {
    v12 = sub_10006A56C;
    v13 = &unk_101F44AC8;
    v14 = &v16;
    v15 = &v10;
    dispatch_async_and_wait(v5, block);
  }

  v3 = v16;
  return v3 & 1;
}

uint64_t sub_1014E4070(uint64_t a1)
{
  v2 = (*(**(a1 + 2584) + 208))(*(a1 + 2584));
  if (v2)
  {
    subscriber::makeSimSlotRange();
    v3 = v6;
    if (v6 != v7)
    {
      do
      {
        if (v8(*v3))
        {
          break;
        }

        ++v3;
      }

      while (v3 != v7);
      while (v3 != v7)
      {
        v4 = *v3++;
        sms::Controller::setupBasebandForCellBroadcast_sync(a1, v4);
        while (v3 != v7 && (v8(*v3) & 1) == 0)
        {
          ++v3;
        }
      }
    }
  }

  return v2;
}

void sms::Controller::setupBasebandForCellBroadcast_sync(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v22 = a2;
  if (subscriber::isValidSimSlot())
  {
    v19 = 0;
    v20 = 0;
    v21 = 0;
    sms::Controller::getDynamicMessageModes_sync(a1, v2, &v19);
    v4 = (*(**(a1 + 48) + 16))(*(a1 + 48), v22);
    v5 = v4;
    v6 = v19;
    if (v19 != v20)
    {
      while (*v6 != 4)
      {
        if (++v6 == v20)
        {
          goto LABEL_16;
        }
      }
    }

    if (v6 == v20)
    {
LABEL_16:
      v12 = *v4;
      if (!os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_26;
      }

      *v16 = 0;
      v13 = "#I Device inherently does not support cell broadcast, not pushing any configuration";
    }

    else
    {
      if ((capabilities::ct::supportsGemini(v4) & 1) != 0 || (*v16 = &v22, *(sub_1002D750C(a1 + 2560, &v22, &unk_101802C98, v16)[5] + 285)))
      {
        *v16 = 0;
        v17 = 0;
        v18 = 0;
        memset(__p, 0, sizeof(__p));
        if (sub_1014E4BD8(a1, v22, v16, __p))
        {
          v7 = *(a1 + 112);
          if (v7)
          {
            (*(*v7 + 120))(v7, v22);
            (*(**(a1 + 112) + 128))(*(a1 + 112), v22);
          }

          v8 = v22;
          v23 = 0;
          v9 = (*(**(a1 + 48) + 16))(*(a1 + 48), v22);
          if ((*(**(a1 + 2584) + 24))(*(a1 + 2584), v8, &v23))
          {
            v10 = *v9;
            if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
            {
              v11 = CSIBOOLAsString(v23);
              *buf = 136315138;
              v25 = v11;
              _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I Alerts enabled: %s", buf, 0xCu);
            }
          }

          sub_1014E46B8(a1, v8, v23);
        }

        else
        {
          v14 = *v5;
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I Deactivating the CMAS as could not read the config from operator bundle", buf, 2u);
          }

          sub_1014E46B8(a1, v22, 0);
        }

        if (__p[0])
        {
          operator delete(__p[0]);
        }

        if (*v16)
        {
          operator delete(*v16);
        }

        goto LABEL_26;
      }

      v12 = *v5;
      if (!os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
      {
LABEL_26:
        if (v19)
        {
          v20 = v19;
          operator delete(v19);
        }

        return;
      }

      *v16 = 0;
      v13 = "#I SMS not ready. Baseband not being setup for CMAS";
    }

    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v13, v16, 2u);
    goto LABEL_26;
  }
}

uint64_t sms::Controller::injectCellBroadcastMessage(uint64_t a1, __int128 *a2, __int128 *a3)
{
  v8 = a1;
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(&v9, *a2, *(a2 + 1));
  }

  else
  {
    v9 = *a2;
    v10 = *(a2 + 2);
  }

  if (*(a3 + 23) < 0)
  {
    sub_100005F2C(&__p, *a3, *(a3 + 1));
  }

  else
  {
    __p = *a3;
    v12 = *(a3 + 2);
  }

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 0x40000000;
  v13[2] = sub_1014E72F8;
  v13[3] = &unk_101F44B28;
  v13[4] = a1 + 8;
  v13[5] = &v8;
  v14 = v13;
  v5 = *(a1 + 24);
  if (*(a1 + 32))
  {
    v21 = 0;
    block = _NSConcreteStackBlock;
    v16 = 0x40000000;
    v17 = sub_10006A56C;
    v18 = &unk_101F44AC8;
    v19 = &v21;
    v20 = &v14;
    dispatch_async_and_wait(v5, &block);
  }

  else
  {
    v21 = 0;
    block = _NSConcreteStackBlock;
    v16 = 0x40000000;
    v17 = sub_100059610;
    v18 = &unk_101F44AA8;
    v19 = &v21;
    v20 = &v14;
    dispatch_sync(v5, &block);
  }

  v6 = v21;
  if (SHIBYTE(v12) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v10) < 0)
  {
    operator delete(v9);
  }

  return v6 & 1;
}

void sub_1014E469C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1014E46B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a2;
  if (subscriber::isValidSimSlot())
  {
    v6 = (*(**(a1 + 48) + 16))(*(a1 + 48), a2);
    *buf = &v21;
    v7 = sub_1002D750C(a1 + 2560, &v21, &unk_101802C98, buf)[5];
    v20 = 1;
    *buf = &v20;
    if (*(sub_100D4E740(v7 + 256, 1, buf) + 32) == 1)
    {
      *buf = &v21;
      v8 = sub_1002D750C(a1 + 2560, &v21, &unk_101802C98, buf)[5];
      v19 = 0;
      *buf = &v19;
      if (*(sub_100D4E740(v8 + 256, 0, buf) + 32) == 1)
      {
        *buf = &v21;
        if (*(sub_1002D750C(a1 + 2560, &v21, &unk_101802C98, buf)[5] + 280) == a3)
        {
          v9 = *v6;
          if (!os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
          {
            return;
          }

          *buf = 67109120;
          *&buf[4] = a3;
          v10 = "#I Activation (%d) has been done before";
          v11 = v9;
          v12 = 8;
          goto LABEL_13;
        }
      }
    }

    v13 = *v6;
    if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
    {
      v14 = sms::asString(a3);
      *buf = 136315138;
      *&buf[4] = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I Going ahead and issuing activation (%s) request to baseband", buf, 0xCu);
    }

    *buf = &v21;
    *(sub_1002D750C(a1 + 2560, &v21, &unk_101802C98, buf)[5] + 280) = a3;
    *buf = &v21;
    v15 = sub_1002D750C(a1 + 2560, &v21, &unk_101802C98, buf)[5];
    v20 = 1;
    *buf = &v20;
    *(sub_100D4E740(v15 + 256, 1, buf) + 32) = 0;
    *buf = &v21;
    v16 = sub_1002D750C(a1 + 2560, &v21, &unk_101802C98, buf)[5];
    v20 = 0;
    *buf = &v20;
    *(sub_100D4E740(v16 + 256, 0, buf) + 32) = 0;
    v17 = *(a1 + 112);
    if (v17)
    {
      (*(*v17 + 96))(v17, 1, a3, v21);
      (*(**(a1 + 112) + 96))(*(a1 + 112), 0, a3, v21);
      return;
    }

    v18 = *v6;
    if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v10 = "#I WMS Driver is not yet available";
      v11 = v18;
      v12 = 2;
LABEL_13:
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v10, buf, v12);
    }
  }
}

void *sms::Controller::handleCBActivation(uint64_t a1, int a2, int a3, uint64_t a4)
{
  v11 = a4;
  v12 = a3;
  result = subscriber::isValidSimSlot();
  if (result)
  {
    v9 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a4);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = CSIBOOLAsString(a2);
      v14 = 2080;
      v15 = sms::asString(a3);
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I SMS Broadcast activation result %s for mode %s", buf, 0x16u);
    }

    *buf = &v11;
    v10 = sub_1002D750C(a1 + 2560, &v11, &unk_101802C98, buf)[5];
    *buf = &v12;
    result = sub_100D4E740(v10 + 256, v12, buf);
    if (a2)
    {
      *(result + 32) = 1;
    }

    else
    {
      *(result + 32) = 0;
    }
  }

  return result;
}

uint64_t sub_1014E4BD8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  theArray = (*(**(a1 + 2584) + 104))(*(a1 + 2584), a2, @"MessageIDParameters3GPP");
  v8 = (*(**(a1 + 48) + 16))(*(a1 + 48), a2);
  v9 = v8;
  v10 = theArray;
  v74 = a4;
  if (theArray)
  {
    v11 = *v8;
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I The CMAS Configuration for 3GPP has been be retrieved", buf, 2u);
      v10 = theArray;
    }

    Count = CFArrayGetCount(v10);
    if (Count >= 1)
    {
      for (i = 0; Count != i; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
        v15 = ValueAtIndex;
        if (ValueAtIndex && (v16 = CFGetTypeID(ValueAtIndex), v16 == CFDictionaryGetTypeID()))
        {
          *&buf[4] = 0;
          *buf = 0;
          Value = CFDictionaryGetValue(v15, @"FromServiceID");
          v18 = Value;
          if (Value && (v19 = CFGetTypeID(Value), v19 == CFNumberGetTypeID()) && CFNumberGetValue(v18, kCFNumberSInt16Type, buf))
          {
            v20 = CFDictionaryGetValue(v15, @"ToServiceID");
            v21 = v20;
            if (v20)
            {
              v22 = CFGetTypeID(v20);
              if (v22 == CFNumberGetTypeID())
              {
                if (CFNumberGetValue(v21, kCFNumberSInt16Type, &buf[2]))
                {
                  buf[4] = 1;
                  v24 = *(a3 + 8);
                  v23 = *(a3 + 16);
                  if (v24 >= v23)
                  {
                    v33 = *a3;
                    v34 = v24 - *a3;
                    v35 = 0xAAAAAAAAAAAAAAABLL * (v34 >> 1) + 1;
                    if (v35 > 0x2AAAAAAAAAAAAAAALL)
                    {
                      sub_1000CE3D4();
                    }

                    v36 = 0xAAAAAAAAAAAAAAABLL * ((v23 - v33) >> 1);
                    if (2 * v36 > v35)
                    {
                      v35 = 2 * v36;
                    }

                    if (v36 >= 0x1555555555555555)
                    {
                      v37 = 0x2AAAAAAAAAAAAAAALL;
                    }

                    else
                    {
                      v37 = v35;
                    }

                    if (v37)
                    {
                      if (v37 <= 0x2AAAAAAAAAAAAAAALL)
                      {
                        operator new();
                      }

                      sub_100013D10();
                    }

                    v38 = 2 * (v34 >> 1);
                    *v38 = *buf;
                    *(v38 + 4) = *&buf[4];
                    v26 = v38 + 6;
                    v39 = v38 - v34;
                    memcpy((v38 - v34), v33, v34);
                    *a3 = v39;
                    *(a3 + 8) = v26;
                    *(a3 + 16) = 0;
                    if (v33)
                    {
                      operator delete(v33);
                    }
                  }

                  else
                  {
                    v25 = *buf;
                    *(v24 + 4) = *&buf[4];
                    *v24 = v25;
                    v26 = v24 + 6;
                  }

                  *(a3 + 8) = v26;
                  continue;
                }
              }
            }

            v32 = *(a1 + 40);
            if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
            {
              *valuePtr = 0;
              v28 = valuePtr;
              v29 = v32;
              v30 = "Failed to retrieve ToServiceID in MessageID dictionary";
              goto LABEL_24;
            }
          }

          else
          {
            v31 = *(a1 + 40);
            if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
            {
              *valuePtr = 0;
              v28 = valuePtr;
              v29 = v31;
              v30 = "Failed to retrieve FromServiceID in MessageID dictionary";
              goto LABEL_24;
            }
          }
        }

        else
        {
          v27 = *(a1 + 40);
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            v28 = buf;
            v29 = v27;
            v30 = "Failed to retrieve MessageID dictionary";
LABEL_24:
            _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, v30, v28, 2u);
          }
        }
      }
    }

    if (*a3 != *(a3 + 8))
    {
      v40 = 1;
      goto LABEL_42;
    }

    v41 = *(a1 + 40);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "#N 3GPP does not have any configuration", buf, 2u);
    }
  }

  v40 = 0;
LABEL_42:
  v42 = (*(**(a1 + 2584) + 104))(*(a1 + 2584), a2, @"MessageIDParameters3GPP2");
  *buf = v42;
  if (v42)
  {
    v43 = *v9;
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      *valuePtr = 0;
      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "#I The CMAS Configuration for 3GPP2 has been be retrieved", valuePtr, 2u);
      v42 = *buf;
    }

    v44 = CFArrayGetCount(v42);
    if (v44 >= 1)
    {
      for (j = 0; v44 != j; ++j)
      {
        v46 = CFArrayGetValueAtIndex(*buf, j);
        v47 = v46;
        if (v46 && (v48 = CFGetTypeID(v46), v48 == CFDictionaryGetTypeID()))
        {
          v77 = 0;
          *valuePtr = 0;
          v49 = CFDictionaryGetValue(v47, @"Category");
          v50 = v49;
          if (v49 && (v51 = CFGetTypeID(v49), v51 == CFNumberGetTypeID()) && CFNumberGetValue(v50, kCFNumberSInt16Type, valuePtr))
          {
            v52 = CFDictionaryGetValue(v47, @"Language");
            v53 = v52;
            if (v52)
            {
              v54 = CFGetTypeID(v52);
              if (v54 == CFNumberGetTypeID())
              {
                if (CFNumberGetValue(v53, kCFNumberSInt16Type, &valuePtr[2]))
                {
                  LOBYTE(v77) = 1;
                  v56 = v74[1];
                  v55 = v74[2];
                  if (v56 >= v55)
                  {
                    v65 = *v74;
                    v66 = v56 - *v74;
                    v67 = 0xAAAAAAAAAAAAAAABLL * (v66 >> 1) + 1;
                    if (v67 > 0x2AAAAAAAAAAAAAAALL)
                    {
                      sub_1000CE3D4();
                    }

                    v68 = 0xAAAAAAAAAAAAAAABLL * ((v55 - v65) >> 1);
                    if (2 * v68 > v67)
                    {
                      v67 = 2 * v68;
                    }

                    if (v68 >= 0x1555555555555555)
                    {
                      v69 = 0x2AAAAAAAAAAAAAAALL;
                    }

                    else
                    {
                      v69 = v67;
                    }

                    if (v69)
                    {
                      if (v69 <= 0x2AAAAAAAAAAAAAAALL)
                      {
                        operator new();
                      }

                      sub_100013D10();
                    }

                    v70 = 2 * (v66 >> 1);
                    *v70 = *valuePtr;
                    *(v70 + 4) = v77;
                    v58 = v70 + 6;
                    v71 = v70 - v66;
                    memcpy((v70 - v66), v65, v66);
                    *v74 = v71;
                    v74[1] = v58;
                    v74[2] = 0;
                    if (v65)
                    {
                      operator delete(v65);
                    }
                  }

                  else
                  {
                    v57 = *valuePtr;
                    *(v56 + 4) = v77;
                    *v56 = v57;
                    v58 = v56 + 6;
                  }

                  v74[1] = v58;
                  continue;
                }
              }
            }

            v64 = *(a1 + 40);
            if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
            {
              *v75 = 0;
              v60 = v75;
              v61 = v64;
              v62 = "Failed to retrieve Language in MessageID dictionary";
              goto LABEL_65;
            }
          }

          else
          {
            v63 = *(a1 + 40);
            if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
            {
              *v75 = 0;
              v60 = v75;
              v61 = v63;
              v62 = "Failed to retrieve Category in MessageID dictionary";
              goto LABEL_65;
            }
          }
        }

        else
        {
          v59 = *(a1 + 40);
          if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
          {
            *valuePtr = 0;
            v60 = valuePtr;
            v61 = v59;
            v62 = "Failed to retrieve MessageID dictionary";
LABEL_65:
            _os_log_error_impl(&_mh_execute_header, v61, OS_LOG_TYPE_ERROR, v62, v60, 2u);
          }
        }
      }
    }

    if (*v74 == v74[1])
    {
      v72 = *(a1 + 40);
      if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
      {
        *valuePtr = 0;
        _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_DEFAULT, "#N 3GPP2 does not have any configuration", valuePtr, 2u);
      }
    }

    else
    {
      v40 = 1;
    }
  }

  sub_100010250(buf);
  sub_100010250(&theArray);
  return v40;
}

void sub_1014E53B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v17 = va_arg(va1, const void *);
  sub_100010250(va);
  sub_100010250(va1);
  _Unwind_Resume(a1);
}

void sms::Controller::handleCBSetConfigResult(uint64_t a1, char a2, int a3, uint64_t a4)
{
  if (subscriber::isValidSimSlot())
  {
    v8 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a4);
    if (a2)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 136315138;
        v10 = sms::asString(a3);
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Set Broadcast Config succeeded for mode %s", &v9, 0xCu);
      }
    }

    else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315138;
      v10 = sms::asString(a3);
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Set Broadcast Config failed for mode %s", &v9, 0xCu);
    }
  }
}

void sms::Controller::handleCBGetConfig3GPP(uint64_t a1, int a2, char ***a3, uint64_t a4)
{
  if (!subscriber::isValidSimSlot())
  {
    return;
  }

  v48 = 0;
  v49 = 0;
  v50 = 0;
  memset(v47, 0, sizeof(v47));
  sub_1014E4BD8(a1, a4, &v48, v47);
  v8 = (*(**(a1 + 48) + 16))(*(a1 + 48), a4);
  v9 = *v8;
  if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = sms::asString(a2);
    *buf = 136315138;
    *&buf[4] = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Get Broadcast Config for 3GPP, activated: %s", buf, 0xCu);
    v9 = *v8;
  }

  v11 = *a3;
  v44 = a4;
  if (*a3)
  {
    v13 = *v11;
    v12 = v11[1];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Broadcast config 3GPP:", buf, 2u);
    }

    v70 = 0;
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    *v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    *buf = 0u;
    sub_10000C320(buf);
    for (; v13 != v12; v13 += 6)
    {
      sub_10000C030(&v54, "[", 1);
      v14 = std::ostream::operator<<();
      sub_10000C030(v14, "-", 1);
      v15 = std::ostream::operator<<();
      v16 = sub_10000C030(v15, ":", 1);
      v17 = CSIBOOLAsString(v13[4] != 0);
      v18 = strlen(v17);
      v19 = sub_10000C030(v16, v17, v18);
      sub_10000C030(v19, "] ", 2);
    }

    v20 = *v8;
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
    {
      sub_100061574(buf, __p);
      v21 = v46 >= 0 ? __p : __p[0];
      *v51 = 136446210;
      v52 = v21;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I %{public}s", v51, 0xCu);
      if (v46 < 0)
      {
        operator delete(__p[0]);
      }
    }

    *&v54 = v22;
    if (SHIBYTE(v59) < 0)
    {
      operator delete(v58[1]);
    }

    std::locale::~locale(&v55);
    std::iostream::~basic_iostream();
    std::ios::~ios();
    v9 = *v8;
  }

  v24 = v48;
  v23 = v49;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Current Broadcast config 3GPP:", buf, 2u);
  }

  v70 = 0;
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  *v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  *buf = 0u;
  sub_10000C320(buf);
  for (; v24 != v23; v24 += 6)
  {
    sub_10000C030(&v54, "[", 1);
    v25 = std::ostream::operator<<();
    sub_10000C030(v25, "-", 1);
    v26 = std::ostream::operator<<();
    v27 = sub_10000C030(v26, ":", 1);
    v28 = CSIBOOLAsString(v24[4] != 0);
    v29 = strlen(v28);
    v30 = sub_10000C030(v27, v28, v29);
    sub_10000C030(v30, "] ", 2);
  }

  v31 = *v8;
  if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
  {
    sub_100061574(buf, __p);
    v32 = v46 >= 0 ? __p : __p[0];
    *v51 = 136446210;
    v52 = v32;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "#I %{public}s", v51, 0xCu);
    if (v46 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (!*a3)
  {
    v40 = *v8;
    if (!os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_47;
    }

    LOWORD(__p[0]) = 0;
    v41 = "#I Sending the 3GPP CMAS config to Baseband";
LABEL_46:
    _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, v41, __p, 2u);
LABEL_47:
    v42 = *(a1 + 112);
    if (v42)
    {
      (*(*v42 + 104))(v42, &v48, v44);
    }

    goto LABEL_49;
  }

  v33 = v49;
  v34 = **a3;
  if (v49 - v48 != (*a3)[1] - v34)
  {
LABEL_42:
    v40 = *v8;
    if (!os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_47;
    }

    LOWORD(__p[0]) = 0;
    v41 = "#I 3GPPs are not equal";
    goto LABEL_46;
  }

  if (v48 != v49)
  {
    v35 = 0;
    while (1)
    {
      v36 = &v34[v35];
      v37 = v48 + v35;
      if (*(v48 + v35) != *&v34[v35] || *(v37 + 1) != v36[1] || v37[4] != *(v36 + 4))
      {
        break;
      }

      v35 += 6;
      if (v37 + 6 == v49)
      {
        goto LABEL_36;
      }
    }

    do
    {
      v39 = v33 - 6;
      if (*(v33 - 3) != *v34 || *(v33 - 2) != *(v34 + 1) || *(v33 - 2) != v34[4])
      {
        goto LABEL_42;
      }

      v34 += 6;
      v33 -= 6;
    }

    while (v39 != v48);
  }

LABEL_36:
  v38 = *v8;
  if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(__p[0]) = 0;
    _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "#I 3GPPs are equal", __p, 2u);
  }

LABEL_49:
  *&v54 = v43;
  if (SHIBYTE(v59) < 0)
  {
    operator delete(v58[1]);
  }

  std::locale::~locale(&v55);
  std::iostream::~basic_iostream();
  std::ios::~ios();
  if (v47[0])
  {
    operator delete(v47[0]);
  }

  if (v48)
  {
    v49 = v48;
    operator delete(v48);
  }
}

void sub_1014E5DDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  sub_10068C9D8(va);
  if (__p)
  {
    operator delete(__p);
  }

  if (a20)
  {
    operator delete(a20);
  }

  _Unwind_Resume(a1);
}

void sms::Controller::handleCBGetConfig3GPP2(uint64_t a1, int a2, char ***a3, uint64_t a4)
{
  if (!subscriber::isValidSimSlot())
  {
    return;
  }

  memset(v50, 0, sizeof(v50));
  v47 = 0;
  v48 = 0;
  v49 = 0;
  sub_1014E4BD8(a1, a4, v50, &v47);
  v8 = (*(**(a1 + 48) + 16))(*(a1 + 48), a4);
  v9 = *v8;
  if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = sms::asString(a2);
    *buf = 136315138;
    *&buf[4] = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Get Broadcast Config for 3GPP2, activated: %s", buf, 0xCu);
    v9 = *v8;
  }

  v11 = *a3;
  v44 = a4;
  if (*a3)
  {
    v13 = *v11;
    v12 = v11[1];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Broadcast config 3GPP2:", buf, 2u);
    }

    v70 = 0;
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    *v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    *buf = 0u;
    sub_10000C320(buf);
    for (; v13 != v12; v13 += 6)
    {
      sub_10000C030(&v54, "[", 1);
      v14 = std::ostream::operator<<();
      sub_10000C030(v14, "-", 1);
      v15 = std::ostream::operator<<();
      v16 = sub_10000C030(v15, ":", 1);
      v17 = CSIBOOLAsString(v13[4] != 0);
      v18 = strlen(v17);
      v19 = sub_10000C030(v16, v17, v18);
      sub_10000C030(v19, "] ", 2);
    }

    v20 = *v8;
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
    {
      sub_100061574(buf, __p);
      v21 = v46 >= 0 ? __p : __p[0];
      *v51 = 136446210;
      v52 = v21;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I %{public}s", v51, 0xCu);
      if (v46 < 0)
      {
        operator delete(__p[0]);
      }
    }

    *&v54 = v22;
    if (SHIBYTE(v59) < 0)
    {
      operator delete(v58[1]);
    }

    std::locale::~locale(&v55);
    std::iostream::~basic_iostream();
    std::ios::~ios();
    v9 = *v8;
  }

  v24 = v47;
  v23 = v48;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Current Broadcast config 3GPP2:", buf, 2u);
  }

  v70 = 0;
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  *v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  *buf = 0u;
  sub_10000C320(buf);
  for (; v24 != v23; v24 += 6)
  {
    sub_10000C030(&v54, "[", 1);
    v25 = std::ostream::operator<<();
    sub_10000C030(v25, "-", 1);
    v26 = std::ostream::operator<<();
    v27 = sub_10000C030(v26, ":", 1);
    v28 = CSIBOOLAsString(v24[4] != 0);
    v29 = strlen(v28);
    v30 = sub_10000C030(v27, v28, v29);
    sub_10000C030(v30, "] ", 2);
  }

  v31 = *v8;
  if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
  {
    sub_100061574(buf, __p);
    v32 = v46 >= 0 ? __p : __p[0];
    *v51 = 136446210;
    v52 = v32;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "#I %{public}s", v51, 0xCu);
    if (v46 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (!*a3)
  {
    v40 = *v8;
    if (!os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_47;
    }

    LOWORD(__p[0]) = 0;
    v41 = "#I Sending the 3GPP2 CMAS config to Baseband";
LABEL_46:
    _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, v41, __p, 2u);
LABEL_47:
    v42 = *(a1 + 112);
    if (v42)
    {
      (*(*v42 + 112))(v42, &v47, v44);
    }

    goto LABEL_49;
  }

  v33 = v48;
  v34 = **a3;
  if (v48 - v47 != (*a3)[1] - v34)
  {
LABEL_42:
    v40 = *v8;
    if (!os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_47;
    }

    LOWORD(__p[0]) = 0;
    v41 = "#I 3GPP2s are not equal";
    goto LABEL_46;
  }

  if (v47 != v48)
  {
    v35 = 0;
    while (1)
    {
      v36 = &v34[v35];
      v37 = v47 + v35;
      if (*(v47 + v35) != *&v34[v35] || *(v37 + 1) != v36[1] || v37[4] != *(v36 + 4))
      {
        break;
      }

      v35 += 6;
      if (v37 + 6 == v48)
      {
        goto LABEL_36;
      }
    }

    do
    {
      v39 = v33 - 6;
      if (*(v33 - 3) != *v34 || *(v33 - 2) != *(v34 + 1) || *(v33 - 2) != v34[4])
      {
        goto LABEL_42;
      }

      v34 += 6;
      v33 -= 6;
    }

    while (v39 != v47);
  }

LABEL_36:
  v38 = *v8;
  if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(__p[0]) = 0;
    _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "#I 3GPP2s are equal", __p, 2u);
  }

LABEL_49:
  *&v54 = v43;
  if (SHIBYTE(v59) < 0)
  {
    operator delete(v58[1]);
  }

  std::locale::~locale(&v55);
  std::iostream::~basic_iostream();
  std::ios::~ios();
  if (v47)
  {
    v48 = v47;
    operator delete(v47);
  }

  if (v50[0])
  {
    operator delete(v50[0]);
  }
}

void sub_1014E66BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  sub_10068C9D8(va);
  if (__p)
  {
    operator delete(__p);
  }

  if (a20)
  {
    operator delete(a20);
  }

  _Unwind_Resume(a1);
}

void sms::Controller::handleCellBroadcast_sync(uint64_t a1, uint64_t a2)
{
  v21 = *(*a2 + 8);
  v4 = v21;
  if (subscriber::isValidSimSlot())
  {
    v18 = 0;
    v19 = 0;
    v20 = 0;
    sms::Controller::getDynamicMessageModes_sync(a1, v21, &v18);
    v5 = v18;
    if (v18 != v19)
    {
      while (*v5 != 4)
      {
        if (++v5 == v19)
        {
          goto LABEL_16;
        }
      }
    }

    if (v5 != v19)
    {
      (*(**a2 + 192))(&__p);
      if ((v17 & 0x80u) == 0)
      {
        v6 = v17;
      }

      else
      {
        v6 = v16;
      }

      v22 = &v21;
      v7 = sub_1002D750C(a1 + 2560, &v21, &unk_101802C98, &v22)[5];
      v9 = *(v7 + 296);
      v8 = *(v7 + 304);
      TransportType = sms::Model::getTransportType(*a2);
      sms::Controller::submitSMSReceivedMetric(a1, v4, v6, (v8 - v9) >> 4, 7, TransportType, 0);
      if (v17 < 0)
      {
        operator delete(__p);
      }

      v11 = *(a1 + 2584);
      v12 = *(a2 + 8);
      v13 = *a2;
      v14 = v12;
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*v11 + 112))(v11, &v13);
      if (v14)
      {
        sub_100004A34(v14);
      }
    }

LABEL_16:
    if (v18)
    {
      v19 = v18;
      operator delete(v18);
    }
  }
}

void sub_1014E68BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1014E6924(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F44918;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1014E69C0(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F44968;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1014E6A14(uint64_t a1)
{
  v2 = *(a1 + 192);
  if (v2)
  {
    sub_100004A34(v2);
  }

  if (*(a1 + 159) < 0)
  {
    operator delete(*(a1 + 136));
  }

  if (*(a1 + 135) < 0)
  {
    operator delete(*(a1 + 112));
  }

  ctu::TextConverter::~TextConverter((a1 + 72));
  v3 = *(a1 + 64);
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = *(a1 + 48);
  if (v4)
  {
    sub_100004A34(v4);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 24));
}

void sub_1014E6A98(void *a1, std::mutex *this)
{
  if ((v4 & 0x8000000000000000) != 0)
  {
    v5 = (v4 & 0x7FFFFFFFFFFFFFFFLL);
    v6 = 5381;
    do
    {
      v4 = v6;
      v7 = *v5++;
      v6 = (33 * v6) ^ v7;
    }

    while (v7);
  }

  std::mutex::lock(this);
  v11 = v4;
  v8 = sub_100009510(&this[1].__m_.__sig, &v11);
  if (v8)
  {
    v10 = v8[3];
    v9 = v8[4];
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v10 = 0;
    v9 = 0;
  }

  std::mutex::unlock(this);
  *a1 = v10;
  a1[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v9);
  }
}

void sub_1014E6B5C(void **a1)
{
  v1 = *a1;
  v4 = a1;
  v5 = v1;
  v3 = v1[1];
  v2 = v1[2];
  v6[0] = *v1;
  v6[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  sub_1014E3190(v2, v6);
}

void sub_1014E6BC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  if (v9)
  {
    sub_100004A34(v9);
  }

  sub_1014E6BF0(va);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1014E6BF0(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      sub_100004A34(v2);
    }

    operator delete();
  }

  return a1;
}

void *sub_1014E6C44(void *a1)
{
  *a1 = off_101F449B8;
  v2 = a1[3];
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

void sub_1014E6C90(void *a1)
{
  *a1 = off_101F449B8;
  v1 = a1[3];
  if (v1)
  {
    sub_100004A34(v1);
  }

  operator delete();
}

uint64_t sub_1014E6D70(uint64_t result, uint64_t a2)
{
  *a2 = off_101F449B8;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1014E6DB0(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    sub_100004A34(v1);
  }
}

void sub_1014E6DC0(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    sub_100004A34(v2);
  }

  operator delete(__p);
}

void sub_1014E6E00(void *a1, uint64_t *a2, char *a3)
{
  v5 = *a2;
  v6 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  v7 = *a3;
  v8 = a1[1];
  v9 = a1[3];
  v10[0] = a1[2];
  v10[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    sub_1014E3688(v8, v10, v5, v6, v7);
  }

  sub_1014E3688(v8, v10, v5, 0, v7);
}

uint64_t sub_1014E6EC0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_1014E6F0C(uint64_t *a1)
{
  v1 = *a1;
  v11 = a1;
  v12 = v1;
  v2 = *v1;
  v4 = *(v1 + 24);
  v3 = *(v1 + 32);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = *(v1 + 8);
  v6 = *(v1 + 16);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    v7 = *(v1 + 40);
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v7 = *(v1 + 40);
  }

  *(v2 + 2600) = v5;
  v8 = *(v2 + 2608);
  *(v2 + 2608) = v6;
  if (v8)
  {
    sub_100004A34(v8);
  }

  v9 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *(v4 + 8));
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v16 = CSIBOOLAsString(v7 & 1);
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Power assertion for CMAS operation created: %s", buf, 0xCu);
  }

  v13 = v4;
  v14 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v2 + 24))(v2, &v13);
  if (v14)
  {
    sub_100004A34(v14);
  }

  if (v6)
  {
    sub_100004A34(v6);
  }

  if (v3)
  {
    sub_100004A34(v3);
  }

  sub_1014E710C(&v12);
  return sub_1000049E0(&v11);
}

void sub_1014E70B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
    if (!v13)
    {
LABEL_3:
      if (!v12)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if (!v13)
  {
    goto LABEL_3;
  }

  sub_100004A34(v13);
  if (!v12)
  {
LABEL_5:
    sub_1014E710C(&a10);
    sub_1000049E0(&a9);
    _Unwind_Resume(a1);
  }

LABEL_4:
  sub_100004A34(v12);
  goto LABEL_5;
}

uint64_t *sub_1014E710C(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    v2 = *(v1 + 32);
    if (v2)
    {
      sub_100004A34(v2);
    }

    v3 = *(v1 + 16);
    if (v3)
    {
      sub_100004A34(v3);
    }

    operator delete();
  }

  return a1;
}

const void **sub_1014E71A0(uint64_t a1)
{
  (*(**(a1 + 40) + 16))(&v5);
  v2 = *(a1 + 32);
  if (v2 != &v5)
  {
    v3 = *v2;
    *v2 = 0;
    v6 = v3;
    *v2 = v5;
    v5 = 0;
    sub_10001021C(&v6);
  }

  return sub_10001021C(&v5);
}

const void **sub_1014E7218(uint64_t a1)
{
  (*(**(a1 + 40) + 16))(&v5);
  v2 = *(a1 + 32);
  if (v2 != &v5)
  {
    v3 = *v2;
    *v2 = 0;
    v6 = v3;
    *v2 = v5;
    v5 = 0;
    sub_10001021C(&v6);
  }

  return sub_10001021C(&v5);
}

uint64_t sub_1014E72F8(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *v1;
  if (((*(**(*v1 + 2584) + 32))(*(*v1 + 2584)) & 1) == 0)
  {
    v13 = *(v2 + 40);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I Inject Cell Broadcast: Device does not support CMAS", &buf, 2u);
    }

    return 0;
  }

  ServiceMap = Registry::getServiceMap(*(v2 + 80));
  v4 = ServiceMap;
  if ((v5 & 0x8000000000000000) != 0)
  {
    v6 = (v5 & 0x7FFFFFFFFFFFFFFFLL);
    v7 = 5381;
    do
    {
      v5 = v7;
      v8 = *v6++;
      v7 = (33 * v7) ^ v8;
    }

    while (v8);
  }

  std::mutex::lock(ServiceMap);
  buf.__r_.__value_.__r.__words[0] = v5;
  v9 = sub_100009510(&v4[1].__m_.__sig, &buf);
  if (v9)
  {
    v11 = v9[3];
    v10 = v9[4];
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v4);
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v10);
      v12 = 0;
      goto LABEL_12;
    }
  }

  else
  {
    v11 = 0;
  }

  std::mutex::unlock(v4);
  v10 = 0;
  v12 = 1;
LABEL_12:
  v14 = (*(*v11 + 32))(v11);
  if ((v12 & 1) == 0)
  {
    sub_100004A34(v10);
  }

  if ((v14 & 1) == 0)
  {
    v15 = *(v2 + 40);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Injecting Cell Broadcast not supported", &buf, 2u);
    }

    return 0;
  }

  if (*(v1 + 55) < 0)
  {
    sub_100005F2C(__p, v1[4], v1[5]);
  }

  else
  {
    *__p = *(v1 + 2);
    v48 = v1[6];
  }

  memset(&buf, 0, sizeof(buf));
  if (*(v1 + 31) < 0)
  {
    sub_100005F2C(&buf, v1[1], v1[2]);
  }

  else
  {
    v18 = *(v1 + 1);
    buf.__r_.__value_.__r.__words[2] = v1[3];
    *&buf.__r_.__value_.__l.__data_ = v18;
  }

  if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (HIBYTE(buf.__r_.__value_.__r.__words[2]) < 8u)
    {
      v19 = *(v2 + 40);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        p_buf = &buf;
LABEL_32:
        LODWORD(v61.__r_.__value_.__l.__data_) = 136315138;
        *(v61.__r_.__value_.__r.__words + 4) = p_buf;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I Invalid message while injecting WEA: [%s]", &v61, 0xCu);
        goto LABEL_48;
      }

      goto LABEL_48;
    }

    v21 = &buf;
LABEL_35:
    if (v21->__r_.__value_.__s.__data_[0] == 50)
    {
      v22 = 2;
    }

    else
    {
      v22 = 1;
    }

    if ((subscriber::isValidSimSlot() & 1) == 0)
    {
      v27 = *(v2 + 40);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v46 = subscriber::asString();
        LODWORD(v61.__r_.__value_.__l.__data_) = 136315138;
        *(v61.__r_.__value_.__r.__words + 4) = v46;
        _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "Invalid slot while injecting WEA: [%s]", &v61, 0xCu);
      }

      goto LABEL_48;
    }

    v23 = (*(**(v2 + 48) + 16))(*(v2 + 48), v22);
    memset(&v61, 0, sizeof(v61));
    std::string::basic_string(&v61, &buf, 2uLL, 5uLL, &v59);
    v24 = SHIBYTE(v61.__r_.__value_.__r.__words[2]);
    if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
    {
      if (v61.__r_.__value_.__l.__size_ != 5)
      {
        v32 = *v23;
        if (os_log_type_enabled(*v23, OS_LOG_TYPE_DEFAULT))
        {
LABEL_68:
          v33 = v61.__r_.__value_.__r.__words[0];
          goto LABEL_69;
        }

        goto LABEL_70;
      }

      v26 = v61.__r_.__value_.__r.__words[0];
      if (*v61.__r_.__value_.__l.__data_ != 544043879 || *(v61.__r_.__value_.__r.__words[0] + 4) != 58)
      {
        goto LABEL_58;
      }
    }

    else
    {
      if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) != 5)
      {
        v32 = *v23;
        if (os_log_type_enabled(*v23, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_66;
        }

        goto LABEL_70;
      }

      if (LODWORD(v61.__r_.__value_.__l.__data_) != 544043879 || v61.__r_.__value_.__s.__data_[4] != 58)
      {
        v26 = &v61;
LABEL_58:
        data = v26->__r_.__value_.__l.__data_;
        v30 = v26->__r_.__value_.__s.__data_[4];
        if (data != 1937010037 || v30 != 58)
        {
          v32 = *v23;
          if (os_log_type_enabled(*v23, OS_LOG_TYPE_DEFAULT))
          {
            if (v24 < 0)
            {
              goto LABEL_68;
            }

LABEL_66:
            v33 = &v61;
LABEL_69:
            LODWORD(v59) = 136315138;
            *(&v59 + 4) = v33;
            _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "#I Unknown PDU type: %s", &v59, 0xCu);
          }

LABEL_70:
          v16 = 0;
LABEL_114:
          if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v61.__r_.__value_.__l.__data_);
          }

          goto LABEL_49;
        }

        v34 = 5;
LABEL_73:
        std::string::erase(&buf, 0, 7uLL);
        v55[0] = 0;
        v55[1] = 0;
        ctu::TextConverter::TextConverter(v55);
        ctu::TextConverter::pushConversion();
        if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v35 = &buf;
        }

        else
        {
          v35 = buf.__r_.__value_.__r.__words[0];
        }

        if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(buf.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = buf.__r_.__value_.__l.__size_;
        }

        ctu::TextConverter::setSource(v55, v35, size);
        v59 = 0uLL;
        v60 = 0;
        ctu::TextConverter::readChars(v55, 0x7FFFFFFFuLL);
        v53[0] = 0;
        v53[1] = 0;
        v54 = 0;
        v37 = HIBYTE(v48);
        if (v48 < 0)
        {
          v37 = __p[1];
        }

        if (v37)
        {
          v52[0] = 0;
          v52[1] = 0;
          ctu::TextConverter::TextConverter(v52);
          ctu::TextConverter::pushConversion();
          if (v48 >= 0)
          {
            v38 = __p;
          }

          else
          {
            v38 = __p[0];
          }

          if (v48 >= 0)
          {
            v39 = HIBYTE(v48);
          }

          else
          {
            v39 = __p[1];
          }

          ctu::TextConverter::setSource(v52, v38, v39);
          v49 = 0;
          v50 = 0;
          v51 = 0;
          ctu::TextConverter::readChars(v52, 0x7FFFFFFFuLL);
          if (v51 >= 0)
          {
            v40 = &v49;
          }

          else
          {
            v40 = v49;
          }

          if (v51 >= 0)
          {
            v41 = HIBYTE(v51);
          }

          else
          {
            v41 = v50;
          }

          v58 = 0;
          memset(v57, 0, sizeof(v57));
          sub_1002853E4(v57, v40, &v40[v41], v41);
          if (v53[0])
          {
            v53[1] = v53[0];
            operator delete(v53[0]);
          }

          *v53 = *v57;
          v54 = v58;
          if (SHIBYTE(v51) < 0)
          {
            operator delete(v49);
          }

          ctu::TextConverter::~TextConverter(v52);
        }

        if (v60 >= 0)
        {
          v42 = &v59;
        }

        else
        {
          v42 = v59;
        }

        if (v60 >= 0)
        {
          v43 = HIBYTE(v60);
        }

        else
        {
          v43 = *(&v59 + 1);
        }

        v50 = 0;
        v51 = 0;
        v49 = 0;
        sub_1002853E4(&v49, v42, &v42[v43], v43);
        (*(*v2 + 384))(v2, v22, &v49, v53, v34);
        v44 = *v23;
        if (os_log_type_enabled(*v23, OS_LOG_TYPE_DEFAULT))
        {
          v45 = sms::asString();
          *v57 = 136315138;
          *&v57[4] = v45;
          _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "#I WEA processing status: %s", v57, 0xCu);
        }

        if (v49)
        {
          v50 = v49;
          operator delete(v49);
        }

        if (v53[0])
        {
          v53[1] = v53[0];
          operator delete(v53[0]);
        }

        if (SHIBYTE(v60) < 0)
        {
          operator delete(v59);
        }

        ctu::TextConverter::~TextConverter(v55);
        v16 = 1;
        goto LABEL_114;
      }
    }

    v34 = 4;
    goto LABEL_73;
  }

  if (buf.__r_.__value_.__l.__size_ >= 8)
  {
    v21 = buf.__r_.__value_.__r.__words[0];
    goto LABEL_35;
  }

  v19 = *(v2 + 40);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    p_buf = buf.__r_.__value_.__r.__words[0];
    goto LABEL_32;
  }

LABEL_48:
  v16 = 0;
LABEL_49:
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v48) < 0)
  {
    operator delete(__p[0]);
  }

  return v16;
}

void sub_1014E7A6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a23)
  {
    operator delete(a23);
  }

  if (*(v34 - 121) < 0)
  {
    operator delete(*(v34 - 144));
  }

  ctu::TextConverter::~TextConverter(&a27);
  if (*(v34 - 89) < 0)
  {
    operator delete(*(v34 - 112));
  }

  if (a34 < 0)
  {
    operator delete(a29);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(a1);
}

uint64_t ImsSmsCommandDriver::ImsSmsCommandDriver(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = CSISMSCommandDriver::CSISMSCommandDriver();
  v22[0] = off_101E2B528;
  v22[1] = sub_1000A8464;
  v22[3] = v22;
  *(v4 + 11) = 0;
  if ((capabilities::ct::supportsGemini(v4) & 1) == 0)
  {
    operator new();
  }

  if (!*(a1 + 88))
  {
    operator new();
  }

  sub_1000A8744(v22);
  *a1 = off_101F44B58;
  *(a1 + 104) = 0;
  *(a1 + 96) = a1 + 104;
  *(a1 + 128) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = a1 + 128;
  *(a1 + 136) = 0;
  *(a1 + 152) = 0;
  *(a1 + 144) = a1 + 152;
  *(a1 + 160) = 0;
  sub_10000501C(&__p, "ImsSmsDriver");
  v5 = *(a1 + 24);
  v18 = v5;
  if (v5)
  {
    dispatch_retain(v5);
  }

  v6 = *(a1 + 32);
  object = v6;
  if (v6)
  {
    dispatch_retain(v6);
  }

  ctu::RestModule::RestModule();
  if (object)
  {
    dispatch_release(object);
  }

  if (v18)
  {
    dispatch_release(v18);
  }

  if (v20 < 0)
  {
    operator delete(__p);
  }

  *(a1 + 192) = 0;
  *(a1 + 184) = a1 + 192;
  *(a1 + 200) = 0;
  *(a1 + 216) = 0;
  *(a1 + 208) = a1 + 216;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  subscriber::makeSimSlotRange();
  v7 = v23;
  v8 = v24;
  if (v23 != v24)
  {
    v9 = v25;
    do
    {
      if (v9(*v7))
      {
        break;
      }

      ++v7;
    }

    while (v7 != v8);
    v10 = v24;
    while (v7 != v10)
    {
      v16 = *v7;
      v21 = &v16;
      *(sub_100051AD8(a1 + 120, &v16, &unk_101802C98, &v21) + 32) = 0;
      v21 = &v16;
      v11 = sub_100E11800((a1 + 144), v16, &v21);
      v12 = v11[6];
      v11[5] = 0;
      v11[6] = 0;
      if (v12)
      {
        sub_100004A34(v12);
      }

      v21 = &v16;
      v13 = sub_100E11800((a1 + 96), v16, &v21);
      v14 = v13[6];
      v13[5] = 0;
      v13[6] = 0;
      if (v14)
      {
        sub_100004A34(v14);
      }

      do
      {
        ++v7;
      }

      while (v7 != v8 && (v9(*v7) & 1) == 0);
    }
  }

  return a1;
}

void sub_1014E80C0(uint64_t a1)
{
  sub_10000501C(__p, "/cc/props/ims_registration_state");
  v4[0] = off_101F44CC8;
  v4[1] = a1 + 208;
  v4[2] = a1;
  v4[3] = v4;
  ctu::RestModule::observeProperty();
  sub_1000062D4(v4);
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  sub_10000501C(__p, "/cc/props/ims_client_state");
  operator new();
}

void sub_1014E8224(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1014E8270(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 184);
  v3 = (a1 + 192);
  if (v2 != (a1 + 192))
  {
    v6 = a2 + 8;
    while (1)
    {
      v26 = SlotIdFromPersonalityIdEx();
      if (!v26)
      {
        v14 = *(a1 + 40);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          v15 = *(v2 + 55);
          v16 = (v15 & 0x80u) != 0;
          if ((v15 & 0x80u) != 0)
          {
            v15 = v2[5];
          }

          if (v16)
          {
            v17 = v2[4];
          }

          else
          {
            v17 = (v2 + 4);
          }

          v18 = v15 == 0;
          v19 = "<invalid>";
          if (!v18)
          {
            v19 = v17;
          }

          *buf = 136315138;
          v28 = v19;
          _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Unknown PersonalityID : %s !", buf, 0xCu);
        }

        goto LABEL_36;
      }

      v7 = (*(**(a1 + 88) + 16))(*(a1 + 88));
      v8 = sub_100007A6C(a2, v2 + 32);
      v9 = *(v2 + 56);
      if (v6 != v8 && *(v8 + 56) == v9)
      {
        v10 = *v7;
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v11 = "not ready";
          if (v9)
          {
            v11 = "ready";
          }

          *buf = 136315138;
          v28 = v11;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I IMS client has not changed state from %s", buf, 0xCu);
        }

        goto LABEL_36;
      }

      v12 = *v7;
      if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
      {
        break;
      }

      if (v9)
      {
        goto LABEL_25;
      }

LABEL_36:
      v24 = v2[1];
      if (v24)
      {
        do
        {
          v25 = v24;
          v24 = *v24;
        }

        while (v24);
      }

      else
      {
        do
        {
          v25 = v2[2];
          v18 = *v25 == v2;
          v2 = v25;
        }

        while (!v18);
      }

      v2 = v25;
      if (v25 == v3)
      {
        return;
      }
    }

    v13 = "not ready";
    if (v9)
    {
      v13 = "ready";
    }

    *buf = 136315138;
    v28 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I IMS client is now %s", buf, 0xCu);
    if ((v2[7] & 1) == 0)
    {
      goto LABEL_36;
    }

LABEL_25:
    if (*sub_1000A8C4C(a1 + 120, &v26) != 1)
    {
LABEL_35:
      sub_1014E9470(a1, v26);
      goto LABEL_36;
    }

    *sub_1000A8C4C(a1 + 120, &v26) = 0;
    v20 = *(a1 + 80);
    if (v20)
    {
      v21 = std::__shared_weak_count::lock(v20);
      if (v21)
      {
        v22 = *(a1 + 72);
        if (v22)
        {
          (*(*v22 + 72))(v22, v26, 0, 1, 0);
LABEL_34:
          sub_100004A34(v21);
          goto LABEL_35;
        }
      }
    }

    else
    {
      v21 = 0;
    }

    v23 = *v7;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Failed to get SMS controller", buf, 2u);
    }

    if (!v21)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }
}

void sub_1014E85DC(uint64_t a1)
{
  *a1 = off_101F44B58;
  v2 = *(a1 + 240);
  *(a1 + 240) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 232);
  *(a1 + 232) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  sub_100009970(a1 + 208, *(a1 + 216));
  sub_100009970(a1 + 184, *(a1 + 192));
  v4 = *(a1 + 176);
  if (v4)
  {
    sub_100004A34(v4);
  }

  sub_100D92208(*(a1 + 152));
  sub_10006DCAC(a1 + 120, *(a1 + 128));
  sub_100D92208(*(a1 + 104));
  v5 = *(a1 + 88);
  *(a1 + 88) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  CSISMSCommandDriver::~CSISMSCommandDriver(a1);
}

void sub_1014E8700(uint64_t a1)
{
  sub_1014E85DC(a1);

  operator delete();
}

void sub_1014E87DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object)
{
  if (object)
  {
    dispatch_release(object);
  }

  if (v10)
  {
    operator delete();
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1014E8804(uint64_t a1, int a2)
{
  v9 = a2;
  v3 = *(a1 + 64);
  v7 = *(a1 + 56);
  v8 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v4 = sub_1014E8898(&v7, a2);
  if (v8)
  {
    sub_100004A34(v8);
  }

  if (v4)
  {
    v5 = *sub_1000A8C4C(a1 + 120, &v9);
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

void sub_1014E8880(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100004A34(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1014E8898(uint64_t a1, int a2)
{
  subscriber::makeSimSlotRange();
  v3 = v8;
  if (v8 == v9)
  {
    goto LABEL_12;
  }

  do
  {
    if (v10(*v3))
    {
      break;
    }

    ++v3;
  }

  while (v3 != v9);
  if (v3 == v9)
  {
LABEL_12:
    v4 = 0;
  }

  else
  {
    v4 = 0;
    do
    {
      v5 = *v3++;
      v6 = v5 == a2;
      while (v3 != v9 && (v10(*v3) & 1) == 0)
      {
        ++v3;
      }

      v4 |= v6;
    }

    while (v3 != v9);
  }

  return v4 & 1;
}

void sub_1014E8960(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Sms Timer (TR1M) expired", buf, 2u);
  }

  v4 = *(v2 + 232);
  *(v2 + 232) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v42 = 0;
  v43 = 0;
  memset(buf, 0, sizeof(buf));
  v5 = *(a1 + 48);
  {
    v42 = v9;
    v43 = v7;
    v10 = buf;
  }

  else
  {
    v10 = &v42;
  }

  *v10 = 0;
  *(v10 + 1) = 0;
  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }

  v11 = v42;
  if (!v42)
  {
    goto LABEL_48;
  }

  v45 = *(a1 + 56);
  v12 = v45;
  v44 = xmmword_10197EB50;
  v13 = (*(*v42[11] + 16))(v42[11], v45);
  *buf = &v45;
  if (!sub_100E11800((v11 + 144), v12, buf)[5])
  {
    v28 = *v13;
    if (os_log_type_enabled(*v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#I No pending actions", buf, 2u);
    }

    goto LABEL_48;
  }

  *buf = &v45;
  v14 = sub_100E11800((v11 + 144), v45, buf);
  v15 = v45;
  if (*(v14[5] + 44) == 1)
  {
    ServiceMap = Registry::getServiceMap(*(v11 + 56));
    v17 = ServiceMap;
    if (v18 < 0)
    {
      v19 = (v18 & 0x7FFFFFFFFFFFFFFFLL);
      v20 = 5381;
      do
      {
        v18 = v20;
        v21 = *v19++;
        v20 = (33 * v20) ^ v21;
      }

      while (v21);
    }

    std::mutex::lock(ServiceMap);
    *buf = v18;
    v22 = sub_100009510(&v17[1].__m_.__sig, buf);
    if (v22)
    {
      v24 = v22[3];
      v23 = v22[4];
      if (v23)
      {
        atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v17);
        atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v23);
        v25 = 0;
        if (!v24)
        {
LABEL_22:
          v26 = *(v11 + 40);
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "Failed to get CarrierSettingsInterface", buf, 2u);
          }

          v27 = 1;
LABEL_37:
          if ((v25 & 1) == 0)
          {
            sub_100004A34(v23);
          }

          BYTE8(v44) = v27;
          v30 = *v13;
          if (!os_log_type_enabled(*v13, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_40;
          }

          v41 = CSIBOOLAsString(v27);
          *buf = 136315138;
          *&buf[4] = v41;
          v32 = "SMS was sent. TR1M expiry error [Fatal: %s]";
          goto LABEL_54;
        }

LABEL_31:
        *buf = *off_101EE8080;
        v51 = *off_101EE8090;
        v48 = 0;
        v49 = 0;
        __p = 0;
        sub_10005B328(&__p, buf, &v52, 4uLL);
        v46 = 0;
        (*(*v24 + 104))(buf, v24, v15, 1, &__p, 0, 0);
        sub_10002FE1C(&v46, buf);
        sub_10000A1EC(buf);
        if (v46)
        {
          v33 = (*(**(v11 + 88) + 16))(*(v11 + 88), v15);
          buf[0] = 1;
          ctu::cf::assign(buf, v46, v34);
          v27 = buf[0];
          v35 = *v33;
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
          {
            v36 = CSIBOOLAsString(v27);
            *buf = 136315138;
            *&buf[4] = v36;
            _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "#I Carrier preference: shouldConsiderAcceptedSmsAsFatal: %s", buf, 0xCu);
          }
        }

        else
        {
          v27 = 1;
        }

        sub_100045C8C(&v46);
        if (__p)
        {
          v48 = __p;
          operator delete(__p);
        }

        goto LABEL_37;
      }
    }

    else
    {
      v24 = 0;
    }

    std::mutex::unlock(v17);
    v23 = 0;
    v25 = 1;
    if (!v24)
    {
      goto LABEL_22;
    }

    goto LABEL_31;
  }

  v29 = sub_1014E9160(v11, v45);
  BYTE8(v44) = v29;
  v30 = *v13;
  if (os_log_type_enabled(*v13, OS_LOG_TYPE_ERROR))
  {
    v31 = CSIBOOLAsString(v29);
    *buf = 136315138;
    *&buf[4] = v31;
    v32 = "SMS was not sent. TR1M expiry error [Fatal: %s]";
LABEL_54:
    _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, v32, buf, 0xCu);
  }

LABEL_40:
  v37 = *(v11 + 80);
  if (v37)
  {
    v38 = std::__shared_weak_count::lock(v37);
    if (v38)
    {
      v39 = *(v11 + 72);
      if (v39)
      {
        (*(*v39 + 48))(v39, v45, &v44);
        goto LABEL_47;
      }
    }
  }

  else
  {
    v38 = 0;
  }

  v40 = *v13;
  if (!os_log_type_enabled(*v13, OS_LOG_TYPE_ERROR))
  {
    if (!v38)
    {
      goto LABEL_48;
    }

    goto LABEL_47;
  }

  *buf = 0;
  _os_log_error_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "Failed to get SMS controller interface during TR1M expiry handling", buf, 2u);
  if (v38)
  {
LABEL_47:
    sub_100004A34(v38);
  }

LABEL_48:
  if (v43)
  {
    sub_100004A34(v43);
  }
}

void sub_1014E8F30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, const void *a15, void *__p, uint64_t a17, uint64_t a18, char a19)
{
  sub_100045C8C(&a15);
  if (__p)
  {
    a17 = __p;
    operator delete(__p);
  }

  if ((v20 & 1) == 0)
  {
    sub_100004A34(v19);
  }

  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1014E8FB4(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1014E8FD0(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1014E8FE0(uint64_t a1)
{
  v2 = *(a1 + 232);
  if (v2)
  {
    (*(*v2 + 16))(v2);
    v3 = *(a1 + 232);
    *(a1 + 232) = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = *(a1 + 40);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Sms Timer (TR1M) destroyed", v5, 2u);
    }
  }
}

void sub_1014E90A0(uint64_t a1)
{
  v2 = *(a1 + 240);
  if (v2)
  {
    (*(*v2 + 16))(v2);
    v3 = *(a1 + 240);
    *(a1 + 240) = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = *(a1 + 40);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Sms Timer (SmsRetransmission) destroyed", v5, 2u);
    }
  }
}

uint64_t sub_1014E9160(uint64_t a1, uint64_t a2)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 56));
  v5 = ServiceMap;
  if (v6 < 0)
  {
    v7 = (v6 & 0x7FFFFFFFFFFFFFFFLL);
    v8 = 5381;
    do
    {
      v6 = v8;
      v9 = *v7++;
      v8 = (33 * v8) ^ v9;
    }

    while (v9);
  }

  std::mutex::lock(ServiceMap);
  *buf = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, buf);
  if (!v10)
  {
    v12 = 0;
LABEL_11:
    std::mutex::unlock(v5);
    v11 = 0;
    v13 = 1;
    if (!v12)
    {
      goto LABEL_7;
    }

    goto LABEL_12;
  }

  v12 = v10[3];
  v11 = v10[4];
  if (!v11)
  {
    goto LABEL_11;
  }

  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v5);
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v11);
  v13 = 0;
  if (!v12)
  {
LABEL_7:
    v14 = *(a1 + 40);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Failed to get CarrierSettingsInterface", buf, 2u);
    }

    v15 = 0;
    goto LABEL_18;
  }

LABEL_12:
  *buf = *off_101EE8060;
  v26 = *off_101EE8070;
  v23 = 0;
  v24 = 0;
  __p = 0;
  sub_10005B328(&__p, buf, &v27, 4uLL);
  v21 = 0;
  (*(*v12 + 104))(buf, v12, a2, 1, &__p, 0, 0);
  sub_10002FE1C(&v21, buf);
  sub_10000A1EC(buf);
  if (v21)
  {
    v16 = (*(**(a1 + 88) + 16))(*(a1 + 88), a2);
    buf[0] = 0;
    ctu::cf::assign(buf, v21, v17);
    v15 = buf[0];
    v18 = *v16;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = CSIBOOLAsString(v15);
      *buf = 136315138;
      *&buf[4] = v19;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I Carrier preference: shouldConsiderNonAcceptedSmsAsFatal: %s", buf, 0xCu);
    }
  }

  else
  {
    v15 = 0;
  }

  sub_100045C8C(&v21);
  if (__p)
  {
    v23 = __p;
    operator delete(__p);
  }

LABEL_18:
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v11);
  }

  return v15;
}

void sub_1014E9408(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_100045C8C(&a9);
  if (__p)
  {
    a11 = __p;
    operator delete(__p);
  }

  if ((v14 & 1) == 0)
  {
    sub_100004A34(v13);
  }

  _Unwind_Resume(a1);
}

void sub_1014E9470(uint64_t a1, uint64_t a2)
{
  v12 = a2;
  v4 = *(a1 + 64);
  v10 = *(a1 + 56);
  v11 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = sub_1014E8898(&v10, a2);
  if (v11)
  {
    sub_100004A34(v11);
  }

  if (v5)
  {
    (*(**(a1 + 88) + 16))(*(a1 + 88), a2);
    memset(__p, 0, 24);
    PersonalityIdFromSlotId();
    v6 = *(a1 + 16);
    if (v6)
    {
      v7 = std::__shared_weak_count::lock(v6);
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v7);
        (*(**(a1 + 88) + 16))(*(a1 + 88), a2);
        operator new();
      }
    }

    sub_100013CC4();
  }

  v8 = *(a1 + 40);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    LOWORD(__p[0]) = 0;
    _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Invalid slot for create IMS client", __p, 2u);
  }
}

void sub_1014E9860(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  std::__shared_weak_count::__release_weak(v17);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1014E98C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 208);
  v3 = (a1 + 216);
  if (v2 != (a1 + 216))
  {
    v50 = a2 + 8;
    do
    {
      v54 = 0;
      v55 = 0;
      ServiceMap = Registry::getServiceMap(*(a1 + 56));
      v7 = ServiceMap;
      if (v8 < 0)
      {
        v9 = (v8 & 0x7FFFFFFFFFFFFFFFLL);
        v10 = 5381;
        do
        {
          v8 = v10;
          v11 = *v9++;
          v10 = (33 * v10) ^ v11;
        }

        while (v11);
      }

      std::mutex::lock(ServiceMap);
      *buf = v8;
      v12 = sub_100009510(&v7[1].__m_.__sig, buf);
      if (v12)
      {
        v13 = v12[3];
        v14 = v12[4];
        if (v14)
        {
          atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v7);
          atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v14);
          v15 = 0;
          goto LABEL_11;
        }
      }

      else
      {
        v13 = 0;
      }

      std::mutex::unlock(v7);
      v14 = 0;
      v15 = 1;
LABEL_11:
      (**v13)(&v54, v13, (v2 + 4));
      if ((v15 & 1) == 0)
      {
        sub_100004A34(v14);
      }

      if (!v54)
      {
        goto LABEL_67;
      }

      if (*(v54 + 49))
      {
        v16 = 1;
      }

      else
      {
        v16 = *(v54 + 52);
      }

      v53 = v16;
      v17 = *(a1 + 64);
      v51 = *(a1 + 56);
      v52 = v17;
      if (v17)
      {
        atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v18 = sub_1014E8898(&v51, v16);
      if (v52)
      {
        sub_100004A34(v52);
      }

      if ((v18 & 1) == 0)
      {
        goto LABEL_67;
      }

      v19 = (*(**(a1 + 88) + 16))(*(a1 + 88), v53);
      if (v50 == sub_100007A6C(a2, v2 + 32))
      {
        v24 = *v19;
        if (os_log_type_enabled(*v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v25 = v24;
          v26 = "#I IMS registration status changed: New info added";
          v27 = 2;
          goto LABEL_50;
        }

LABEL_51:
        if (*(v2 + 14) == 1)
        {
          v36 = (*(v2 + 60) >> 1) & 1;
        }

        else
        {
          LOBYTE(v36) = 0;
        }

        *sub_1000A8C4C(a1 + 120, &v53) = v36;
        v37 = *v19;
        if (os_log_type_enabled(*v19, OS_LOG_TYPE_DEFAULT))
        {
          v38 = sub_1000A8C4C(a1 + 120, &v53);
          v39 = CSIBOOLAsString(*v38);
          v40 = CSIBOOLAsString(*(v2 + 64));
          *buf = 136315394;
          *&buf[4] = v39;
          v57 = 2080;
          v58 = v40;
          _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "#I IMS registered : %s , Over Wifi : %s", buf, 0x16u);
        }

        if (*sub_1000A8C4C(a1 + 120, &v53) == 1)
        {
          sub_1014E9470(a1, v53);
        }

        v41 = *(a1 + 80);
        if (v41)
        {
          v42 = std::__shared_weak_count::lock(v41);
          if (v42)
          {
            v43 = *(a1 + 72);
            if (v43)
            {
              v44 = v53;
              v45 = sub_1000A8C4C(a1 + 120, &v53);
              (*(*v43 + 72))(v43, v44, *v45, 1, *(v2 + 64));
LABEL_66:
              sub_100004A34(v42);
              goto LABEL_67;
            }
          }
        }

        else
        {
          v42 = 0;
        }

        v46 = *v19;
        if (os_log_type_enabled(*v19, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&_mh_execute_header, v46, OS_LOG_TYPE_ERROR, "Failed to get SMS controller", buf, 2u);
        }

        if (!v42)
        {
          goto LABEL_67;
        }

        goto LABEL_66;
      }

      *buf = 0;
      v20 = *sub_100005C2C(a2, buf, v2 + 4);
      if (!v20)
      {
        sub_1000A58E4("map::at:  key not found");
      }

      v21 = *(v20 + 64);
      if (*(v20 + 56) == 1)
      {
        v22 = *(v20 + 60);
        v23 = (v22 >> 1) & 1;
        if (*(v2 + 14) == 1)
        {
          if (v23 != (*(v2 + 60) & 2) >> 1)
          {
            goto LABEL_35;
          }
        }

        else if ((v22 & 2) != 0)
        {
LABEL_35:
          v28 = *v19;
          if (!os_log_type_enabled(*v19, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_51;
          }

LABEL_36:
          v29 = CSIBOOLAsString(v23);
          if (*(v2 + 14) == 1)
          {
            v30 = (*(v2 + 60) >> 1) & 1;
          }

          else
          {
            v30 = 0;
          }

          v35 = CSIBOOLAsString(v30);
          *buf = 136315394;
          *&buf[4] = v29;
          v57 = 2080;
          v58 = v35;
          v25 = v28;
          v26 = "#I IMS registration status changed: From %s to %s";
LABEL_49:
          v27 = 22;
LABEL_50:
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, v26, buf, v27);
          goto LABEL_51;
        }
      }

      else if (*(v2 + 14) == 1 && (*(v2 + 60) & 2) != 0)
      {
        v28 = *v19;
        if (!os_log_type_enabled(*v19, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_51;
        }

        v23 = 0;
        goto LABEL_36;
      }

      v31 = *(v2 + 64);
      if (v31 != v21)
      {
        v32 = *v19;
        if (!os_log_type_enabled(*v19, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_51;
        }

        if (v21)
        {
          v33 = "WLAN";
        }

        else
        {
          v33 = "Baseband";
        }

        *buf = 136315394;
        *&buf[4] = v33;
        if (v31)
        {
          v34 = "WLAN";
        }

        else
        {
          v34 = "Baseband";
        }

        v57 = 2080;
        v58 = v34;
        v25 = v32;
        v26 = "#I IMS transport changed: From %s to %s";
        goto LABEL_49;
      }

LABEL_67:
      if (v55)
      {
        sub_100004A34(v55);
      }

      v47 = v2[1];
      if (v47)
      {
        do
        {
          v48 = v47;
          v47 = *v47;
        }

        while (v47);
      }

      else
      {
        do
        {
          v48 = v2[2];
          v49 = *v48 == v2;
          v2 = v48;
        }

        while (!v49);
      }

      v2 = v48;
    }

    while (v48 != v3);
  }
}

void sub_1014E9E50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_100004A34(a16);
  }

  _Unwind_Resume(exception_object);
}

void ImsSmsCommandDriver::handleMessageSendFailure(void *a1, int a2, int *a3)
{
  if (*(a3 + 31) < 0)
  {
    sub_100005F2C(v6, *(a3 + 1), *(a3 + 2));
  }

  else
  {
    *v6 = *(a3 + 2);
    v7 = *(a3 + 3);
  }

  v8 = *(a3 + 16);
  if (*(a3 + 63) < 0)
  {
    sub_100005F2C(__p, *(a3 + 5), *(a3 + 6));
  }

  else
  {
    *__p = *(a3 + 10);
    v10 = *(a3 + 7);
  }

  v5 = a1[2];
  if (v5)
  {
    if (std::__shared_weak_count::lock(v5))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_1014EA0B8(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 + 47) < 0)
  {
    operator delete(*(v17 + 24));
  }

  sub_10004F058(a1);
}

void ImsSmsCommandDriver::handleMessageSendSuccess(void *a1, int a2)
{
  v2 = a1[2];
  if (v2)
  {
    if (std::__shared_weak_count::lock(v2))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_1014EA1EC(uint64_t a1, int a2)
{
  v6 = a2;
  sub_1014E8FE0(a1);
  sub_1014E90A0(a1);
  v7 = &v6;
  v4 = sub_100E11800((a1 + 144), a2, &v7);
  v5 = v4[6];
  v4[5] = 0;
  v4[6] = 0;
  if (v5)
  {
    sub_100004A34(v5);
  }
}

void sub_1014EA254(uint64_t a1, sms::Model **a2)
{
  v53 = *(*a2 + 2);
  v4 = v53;
  v5 = (*(**(a1 + 88) + 16))(*(a1 + 88), v53);
  v50 = 0;
  v51 = 0;
  v52 = 0;
  (*(**a2 + 168))(&v50);
  v6 = *a2;
  v7 = *(*a2 + 12);
  if (v7 == 2)
  {
    v27 = *(v6 + 8);
    sms::Model::getDAForSmsOverIMS(v6, buf);
    __p = 0;
    v57 = 0;
    v58 = 0;
    TextToEmergencyFlag = sms::Model::getTextToEmergencyFlag(*a2);
    v29 = sub_1014EAAE8(a1, v27, 2, &v50, buf, &__p, TextToEmergencyFlag);
    if (SHIBYTE(v58) < 0)
    {
      operator delete(__p);
    }

    if (SBYTE7(v64) < 0)
    {
      operator delete(*buf);
      if (!v29)
      {
        goto LABEL_24;
      }
    }

    else if (!v29)
    {
      goto LABEL_24;
    }

LABEL_7:
    *buf = &v53;
    v11 = sub_100E11800((a1 + 144), v53, buf);
    v13 = *a2;
    v12 = a2[1];
    if (v12)
    {
      atomic_fetch_add_explicit(v12 + 1, 1uLL, memory_order_relaxed);
    }

    v14 = v11[6];
    v11[5] = v13;
    v11[6] = v12;
    if (v14)
    {
      sub_100004A34(v14);
    }

    v15 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I Sms segment sent", buf, 2u);
    }

    v16 = v53;
    v61 = 0;
    v62 = 0;
    Registry::getTimerService(&v61, *(a1 + 56));
    if (!v61)
    {
      v36 = *(a1 + 40);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "Failed to get timer interface.", buf, 2u);
      }

LABEL_70:
      v35 = v62;
      if (!v62)
      {
        goto LABEL_72;
      }

      goto LABEL_71;
    }

    valuePtr = 130;
    ServiceMap = Registry::getServiceMap(*(a1 + 56));
    v18 = ServiceMap;
    if (v19 < 0)
    {
      v20 = (v19 & 0x7FFFFFFFFFFFFFFFLL);
      v21 = 5381;
      do
      {
        v19 = v21;
        v22 = *v20++;
        v21 = (33 * v21) ^ v22;
      }

      while (v22);
    }

    std::mutex::lock(ServiceMap);
    *buf = v19;
    v23 = sub_100009510(&v18[1].__m_.__sig, buf);
    if (v23)
    {
      v25 = v23[3];
      v24 = v23[4];
      if (v24)
      {
        atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v18);
        atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v24);
        v26 = 0;
LABEL_43:
        number = 0;
        *buf = *off_101EE8040;
        v64 = *off_101EE8050;
        v57 = 0;
        v58 = 0;
        __p = 0;
        sub_10005B328(&__p, buf, v65, 4uLL);
        (*(*v25 + 104))(v68, v25, v16, 1, &__p, 0, 0);
        sub_10010B240(&number, v68);
        sub_10000A1EC(v68);
        if (__p)
        {
          v57 = __p;
          operator delete(__p);
        }

        if (number)
        {
          CFNumberGetValue(number, kCFNumberIntType, &valuePtr);
        }

        v37 = *(a1 + 232);
        if (v37 && ((*(*v37 + 24))(v37) & 1) == 0)
        {
          v49 = *(a1 + 40);
          if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "#I Sms Timer (TR1M) active.", buf, 2u);
          }
        }

        else
        {
          v38 = *(a1 + 16);
          if (!v38 || (v39 = *(a1 + 8), (v40 = std::__shared_weak_count::lock(v38)) == 0))
          {
            sub_100013CC4();
          }

          v41 = v40;
          atomic_fetch_add_explicit(&v40->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v40);
          v42 = v61;
          sub_10000501C(&__p, "TR1M timer");
          v43 = valuePtr;
          v44 = *(a1 + 24);
          object = v44;
          if (v44)
          {
            dispatch_retain(v44);
          }

          *buf = _NSConcreteStackBlock;
          *&buf[8] = 1174405120;
          *&v64 = sub_1014E8960;
          *(&v64 + 1) = &unk_101F44C00;
          v65[0] = a1;
          v65[1] = v39;
          v66 = v41;
          atomic_fetch_add_explicit(&v41->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          v67 = v16;
          aBlock = _Block_copy(buf);
          sub_100D23364(v42, &__p, 2, 1000000 * v43, &object, &aBlock);
          v45 = *v68;
          *v68 = 0;
          v46 = *(a1 + 232);
          *(a1 + 232) = v45;
          if (v46)
          {
            (*(*v46 + 8))(v46);
            v47 = *v68;
            *v68 = 0;
            if (v47)
            {
              (*(*v47 + 8))(v47);
            }
          }

          if (aBlock)
          {
            _Block_release(aBlock);
          }

          if (object)
          {
            dispatch_release(object);
          }

          if (SHIBYTE(v58) < 0)
          {
            operator delete(__p);
          }

          if (*(a1 + 232))
          {
            v48 = *(a1 + 40);
            if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
            {
              *v68 = 67109120;
              *&v68[4] = valuePtr;
              _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "#I Sms Timer (TR1M) started: %u sec", v68, 8u);
            }
          }

          if (v66)
          {
            std::__shared_weak_count::__release_weak(v66);
          }

          std::__shared_weak_count::__release_weak(v41);
        }

        sub_100029A48(&number);
        if ((v26 & 1) == 0)
        {
          sub_100004A34(v24);
        }

        goto LABEL_70;
      }
    }

    else
    {
      v25 = 0;
    }

    std::mutex::unlock(v18);
    v24 = 0;
    v26 = 1;
    goto LABEL_43;
  }

  if (v7 != 1)
  {
    goto LABEL_24;
  }

  v8 = *(v6 + 8);
  sms::Model::getDAForSmsOverIMS(v6, buf);
  __p = 0;
  v57 = 0;
  v58 = 0;
  v9 = sms::Model::getTextToEmergencyFlag(*a2);
  v10 = sub_1014EAAE8(a1, v8, 1, &v50, buf, &__p, v9);
  if (SHIBYTE(v58) < 0)
  {
    operator delete(__p);
  }

  if (SBYTE7(v64) < 0)
  {
    operator delete(*buf);
    if ((v10 & 1) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_7;
  }

  if (v10)
  {
    goto LABEL_7;
  }

LABEL_24:
  v30 = *v5;
  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "Sms segment not sent", buf, 2u);
  }

  *buf = xmmword_10197EB60;
  v31 = *(a1 + 80);
  if (v31)
  {
    v32 = std::__shared_weak_count::lock(v31);
    if (v32)
    {
      v33 = *(a1 + 72);
      if (v33)
      {
        (*(*v33 + 48))(v33, v4, buf);
LABEL_34:
        v35 = v32;
LABEL_71:
        sub_100004A34(v35);
        goto LABEL_72;
      }
    }
  }

  else
  {
    v32 = 0;
  }

  v34 = *(a1 + 40);
  if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
  {
    LOWORD(__p) = 0;
    _os_log_error_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "Failed to get SMS controller", &__p, 2u);
  }

  if (v32)
  {
    goto LABEL_34;
  }

LABEL_72:
  if (v50)
  {
    v51 = v50;
    operator delete(v50);
  }
}

void sub_1014EA9B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *aBlock, dispatch_object_t object, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, std::__shared_weak_count *a35)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1014EAAE8(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = a3;
  v28 = a2;
  memset(&__p, 0, sizeof(__p));
  v14 = (*(**(a1 + 88) + 16))(*(a1 + 88));
  if (v11 == 1)
  {
    v15 = "application/vnd.3gpp.sms";
  }

  else
  {
    v15 = "application/vnd.3gpp2.sms";
  }

  if (v11 == 1)
  {
    v16 = 24;
  }

  else
  {
    v16 = 25;
  }

  sub_1000167D4(&__p, v15, v16);
  if (*(a5 + 23) >= 0)
  {
    v17 = *(a5 + 23);
  }

  else
  {
    v17 = *(a5 + 8);
  }

  v18 = *v14;
  v19 = os_log_type_enabled(*v14, OS_LOG_TYPE_DEFAULT);
  if (v17)
  {
    if (v19)
    {
      v20 = sms::asString();
      if (*(a5 + 23) >= 0)
      {
        v21 = a5;
      }

      else
      {
        v21 = *a5;
      }

      if (*(a6 + 23) >= 0)
      {
        v22 = a6;
      }

      else
      {
        v22 = *a6;
      }

      *buf = 136315650;
      *&buf[4] = v20;
      v30 = 2080;
      v31 = v21;
      v32 = 2080;
      v33 = v22;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I Sending SMS start - content type: %s, destination: %s, inReplyTo: %s", buf, 0x20u);
    }

    *buf = &v28;
    if (sub_100E11800((a1 + 96), a2, buf)[5])
    {
      *buf = &v28;
      v23 = sub_100E11800((a1 + 96), v28, buf);
      ImsSmsCommandDriverDelegate::sendSms(v23[5], a5, a6, a4, &__p, a7);
      v24 = 1;
      goto LABEL_26;
    }

    v25 = *v14;
    if (os_log_type_enabled(*v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Invalid delegate while sending SMS", buf, 2u);
    }
  }

  else if (v19)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I Failed to send SMS - Destination not set", buf, 2u);
  }

  v24 = 0;
LABEL_26:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v24;
}