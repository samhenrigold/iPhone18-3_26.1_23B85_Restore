uint64_t sub_101296D50(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F24438))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_101296DC8(uint64_t a1)
{

  operator delete();
}

id sub_101296E7C(uint64_t a1, void *a2)
{
  *a2 = off_101F243C8;
  result = objc_retainBlock(*(a1 + 8));
  a2[1] = result;
  return result;
}

void sub_101296ECC(id *a1)
{

  operator delete(a1);
}

uint64_t sub_101296F28(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F24428))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_101297000(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F244B8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1012970D8(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F24538))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_101297124(uint64_t a1)
{
  *a1 = off_101F24558;

  v2 = *(a1 + 24);
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

void sub_101297180(uint64_t a1)
{
  *a1 = off_101F24558;

  v2 = *(a1 + 24);
  if (v2)
  {
    sub_100004A34(v2);
  }

  operator delete();
}

id sub_101297290(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F24558;
  v4 = *(a1 + 8);
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  *(a2 + 8) = v4;
  *(a2 + 16) = v6;
  *(a2 + 24) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  *(a2 + 32) = *(a1 + 32);
  result = objc_retainBlock(*(a1 + 40));
  *(a2 + 40) = result;
  return result;
}

void sub_101297308(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 8);
}

void sub_101297350(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    sub_100004A34(v2);
  }

  operator delete(a1);
}

void sub_1012973A0(uint64_t a1)
{
  v2 = *(a1 + 8) + 200;
  v3 = **(a1 + 16);
  v6 = *(v2 + 8);
  v5 = v2 + 8;
  v4 = v6;
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = v5;
  do
  {
    v8 = *(v4 + 32);
    v9 = v8 >= v3;
    v10 = v8 < v3;
    if (v9)
    {
      v7 = v4;
    }

    v4 = *(v4 + 8 * v10);
  }

  while (v4);
  if (v7 == v5 || v3 < *(v7 + 32))
  {
LABEL_9:
    v7 = v5;
  }

  v11 = *(a1 + 8);
  if (v7 == v11 + 26)
  {
    if (v11)
    {
      objc_msgSend_getLogContext(v11);
      v26 = *(&buf + 1);
    }

    else
    {
      v26 = 0;
      buf = 0uLL;
    }

    ctu::OsLogContext::~OsLogContext(&buf);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v29 = asStringBool(*(a1 + 32));
      LODWORD(buf) = 136315138;
      *(&buf + 4) = v29;
      v30 = "updateVoipCallTrafficStatus: xpc connection for VoIP Call (isStart = %s) not found";
LABEL_38:
      _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, v30, &buf, 0xCu);
    }
  }

  else
  {
    v12 = *(v7 + 40);
    if (v12)
    {
      v13 = *v12;
      ServiceMap = Registry::getServiceMap(v11[23]);
      v15 = ServiceMap;
      if (v16 < 0)
      {
        v17 = (v16 & 0x7FFFFFFFFFFFFFFFLL);
        v18 = 5381;
        do
        {
          v16 = v18;
          v19 = *v17++;
          v18 = (33 * v18) ^ v19;
        }

        while (v19);
      }

      std::mutex::lock(ServiceMap);
      *&buf = v16;
      v20 = sub_100009510(&v15[1].__m_.__sig, &buf);
      if (v20)
      {
        v22 = v20[3];
        v21 = v20[4];
        if (v21)
        {
          atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v15);
          atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v21);
          v23 = 0;
          if (!v22)
          {
LABEL_18:
            v24 = *(a1 + 8);
            if (v24)
            {
              objc_msgSend_getLogContext(v24);
              v25 = *(&buf + 1);
            }

            else
            {
              v25 = 0;
              buf = 0uLL;
            }

            ctu::OsLogContext::~OsLogContext(&buf);
            if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
            {
              LOWORD(buf) = 0;
              _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "DataService uninitialized", &buf, 2u);
            }

            (*(*(a1 + 40) + 16))();
LABEL_43:
            if ((v23 & 1) == 0)
            {
              sub_100004A34(v21);
            }

            return;
          }

LABEL_26:
          v27 = *(a1 + 8);
          if (v27)
          {
            objc_msgSend_getLogContext(v27);
            v28 = *(&buf + 1);
          }

          else
          {
            v28 = 0;
            buf = 0uLL;
          }

          ctu::OsLogContext::~OsLogContext(&buf);
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            v31 = asStringBool(*(a1 + 32));
            LODWORD(buf) = 136315138;
            *(&buf + 4) = v31;
            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "updateVoipCallTrafficStatus: isStart = %s", &buf, 0xCu);
          }

          v37 = 0;
          v32 = objc_retainBlock(*(a1 + 40));
          *&buf = off_101F245C8;
          *(&buf + 1) = v32;
          p_buf = &buf;
          v33 = *(a1 + 32);
          sub_1000224C8(v35, &buf);
          (*(*v22 + 952))(v22, v13, v33, v35);
          sub_10000FF50(v35);
          sub_10000FF50(&buf);
          goto LABEL_43;
        }
      }

      else
      {
        v22 = 0;
      }

      std::mutex::unlock(v15);
      v21 = 0;
      v23 = 1;
      if (!v22)
      {
        goto LABEL_18;
      }

      goto LABEL_26;
    }

    if (v11)
    {
      objc_msgSend_getLogContext(v11);
      v26 = *(&buf + 1);
    }

    else
    {
      v26 = 0;
      buf = 0uLL;
    }

    ctu::OsLogContext::~OsLogContext(&buf);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v34 = asStringBool(*(a1 + 32));
      LODWORD(buf) = 136315138;
      *(&buf + 4) = v34;
      v30 = "updateVoipCallTrafficStatus: process info for VoIP Call (isStart = %s) not found";
      goto LABEL_38;
    }
  }
}

void sub_101297784(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  if ((v14 & 1) == 0)
  {
    sub_100004A34(v13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1012977E4(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F24638))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10129785C(uint64_t a1)
{

  operator delete();
}

id sub_101297910(uint64_t a1, void *a2)
{
  *a2 = off_101F245C8;
  result = objc_retainBlock(*(a1 + 8));
  a2[1] = result;
  return result;
}

void sub_101297960(id *a1)
{

  operator delete(a1);
}

uint64_t sub_1012979BC(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F24628))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_101297A94(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F246B8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_101297B0C(uint64_t a1)
{
  objc_destroyWeak((a1 + 8));

  operator delete();
}

void sub_101297BF0(id *a1)
{
  objc_destroyWeak(a1 + 1);

  operator delete(a1);
}

uint64_t sub_101297C2C(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F24738))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_101297CA4(uint64_t a1)
{

  operator delete();
}

id sub_101297D58(uint64_t a1, void *a2)
{
  *a2 = off_101F24758;
  result = *(a1 + 8);
  a2[1] = result;
  return result;
}

void sub_101297DA8(id *a1)
{

  operator delete(a1);
}

uint64_t sub_101297DE4(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v7 = *a3;
  *a3 = 0uLL;
  v4 = xpc_null_create();
  v5 = *(a1 + 8);
  v9 = v4;
  v10 = v7;
  v8[1] = 0;
  v8[2] = 0;
  v8[0] = xpc_null_create();
  [v5 _handleGetClientsQuery_sync:&v9];
  sub_101297EC4(&v9);
  return sub_101297EC4(v8);
}

void sub_101297E54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  sub_101297EC4(va1);
  sub_101297EC4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_101297E78(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F247B8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_101297EC4(uint64_t a1)
{
  if (*(a1 + 8))
  {
    v2 = *a1;
    if (*a1)
    {
      xpc_retain(*a1);
    }

    else
    {
      v2 = xpc_null_create();
    }

    v3 = *(a1 + 8);
    v4 = *v3;
    *v3 = v2;
    xpc_release(v4);
  }

  v5 = *(a1 + 16);
  if (v5)
  {
    sub_100004A34(v5);
  }

  xpc_release(*a1);
  *a1 = 0;
  return a1;
}

void sub_101297F60(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F247D8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_101297FB4(uint64_t a1)
{
  *a1 = off_101F24828;
  ctu::OsLogContext::~OsLogContext((a1 + 32));
  v2 = *(a1 + 24);
  if (v2)
  {
    sub_100004A34(v2);
  }

  objc_destroyWeak((a1 + 8));
  return a1;
}

void sub_10129800C(uint64_t a1)
{
  *a1 = off_101F24828;
  ctu::OsLogContext::~OsLogContext((a1 + 32));
  v2 = *(a1 + 24);
  if (v2)
  {
    sub_100004A34(v2);
  }

  objc_destroyWeak((a1 + 8));

  operator delete();
}

uint64_t sub_10129810C(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F24828;
  objc_copyWeak((a2 + 8), (a1 + 8));
  v4 = *(a1 + 24);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 24) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  return ctu::OsLogContext::OsLogContext((a2 + 32), (a1 + 32));
}

void sub_101298188(uint64_t a1)
{
  ctu::OsLogContext::~OsLogContext((a1 + 32));
  v2 = *(a1 + 24);
  if (v2)
  {
    sub_100004A34(v2);
  }

  objc_destroyWeak((a1 + 8));
}

void sub_1012981D0(uint64_t a1)
{
  ctu::OsLogContext::~OsLogContext((a1 + 32));
  v2 = *(a1 + 24);
  if (v2)
  {
    sub_100004A34(v2);
  }

  objc_destroyWeak((a1 + 8));

  operator delete(a1);
}

void sub_101298220(uint64_t a1, xpc_object_t *a2)
{
  object = *a2;
  *a2 = xpc_null_create();
  v7 = 0;
  rest::read_rest_value(&v7, &object, v3);
  WeakRetained = objc_loadWeakRetained((a1 + 8));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _processAppEntitlement_sync:a1 + 16 appInfo:{&v7, object}];
  }

  xpc_release(object);
}

uint64_t sub_1012982C4(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F24888))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_101298344(uint64_t a1)
{

  operator delete();
}

id sub_10129840C(uint64_t a1, void *a2)
{
  *a2 = off_101F248A8;
  a2[1] = *(a1 + 8);
  result = *(a1 + 16);
  a2[2] = result;
  return result;
}

void sub_101298464(uint64_t a1)
{
  v2 = *(a1 + 8);
}

void sub_1012984A0(id *a1)
{

  operator delete(a1);
}

void sub_1012984E4(uint64_t a1)
{
  v2 = [*(*(a1 + 8) + 152) requiredEntitlementForNotification:{objc_msgSend(*(a1 + 16), "selector")}];
  v4 = *(a1 + 8);
  v5 = v4 + 26;
  v6 = v4[25];
  if (v6 != v4 + 26)
  {
    v7 = 0;
    *&v3 = 136315394;
    v37 = v3;
    while (1)
    {
      v8 = v6[5];
      if (!v8)
      {
        break;
      }

      v9 = (*(**(v8 + 32) + 16))(*(v8 + 32), v2);
      v10 = *(a1 + 8);
      if (v9 != 1)
      {
        goto LABEL_9;
      }

      v11 = [v10[19] accessControlListForRequest:{objc_msgSend(*(a1 + 16), "selector")}];
      if (!v11)
      {
        goto LABEL_30;
      }

      v12 = v6[4];
      v13 = v6[5];
      v14 = *(v13 + 4);
      if (v12)
      {
        objc_msgSend_auditToken(v12);
        v13 = v6[5];
      }

      else
      {
        memset(buf, 0, sizeof(buf));
      }

      v19 = *v13;
      if (*(v13 + 31) < 0)
      {
        sub_100005F2C(__dst, *(v13 + 1), *(v13 + 2));
      }

      else
      {
        v20 = *(v13 + 2);
        v39 = *(v13 + 3);
        *__dst = v20;
      }

      *__p = v19;
      if (SHIBYTE(v39) < 0)
      {
        sub_100005F2C(&__p[8], __dst[0], __dst[1]);
      }

      else
      {
        *&__p[8] = *__dst;
        v41 = v39;
      }

      v21 = (*(*v14 + 32))(v14, buf, __p, v11);
      if (SHIBYTE(v41) < 0)
      {
        operator delete(*&__p[8]);
      }

      if (SHIBYTE(v39) < 0)
      {
        operator delete(__dst[0]);
        if (v21)
        {
LABEL_30:
          v7 += [*(a1 + 8) _sendNotification_sync:*(a1 + 16) connection:{v6[4], v37}];
          goto LABEL_36;
        }
      }

      else if (v21)
      {
        goto LABEL_30;
      }

      v22 = *(a1 + 8);
      if (v22)
      {
        objc_msgSend_getLogContext(v22);
        v23 = *&buf[8];
      }

      else
      {
        v23 = 0;
        *buf = 0;
        *&buf[8] = 0;
      }

      ctu::OsLogContext::~OsLogContext(buf);
      if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_36;
      }

      sub_10000A318(buf, v6[5]);
      if ((buf[23] & 0x80u) == 0)
      {
        v27 = buf;
      }

      else
      {
        v27 = *buf;
      }

      v18 = NSStringFromSelector([*(a1 + 16) selector]);
      *__p = v37;
      *&__p[4] = v27;
      *&__p[12] = 2112;
      *&__p[14] = v18;
      _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Client [%s] is not allowed for notification %@", __p, 0x16u);
      if (buf[23] < 0)
      {
        operator delete(*buf);
      }

LABEL_18:

LABEL_36:
      v24 = v6[1];
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
          v25 = v6[2];
          v26 = *v25 == v6;
          v6 = v25;
        }

        while (!v26);
      }

      v6 = v25;
      if (v25 == v5)
      {
        v4 = *(a1 + 8);
        goto LABEL_50;
      }
    }

    v10 = *(a1 + 8);
LABEL_9:
    if (v10)
    {
      objc_msgSend_getLogContext(v10);
      v15 = *&buf[8];
    }

    else
    {
      v15 = 0;
      *buf = 0;
      *&buf[8] = 0;
    }

    ctu::OsLogContext::~OsLogContext(buf);
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_36;
    }

    sub_10000A318(__p, v6[5]);
    if (__p[23] >= 0)
    {
      v16 = __p;
    }

    else
    {
      v16 = *__p;
    }

    v17 = sub_100016788(v2);
    v18 = NSStringFromSelector([*(a1 + 16) selector]);
    *buf = 136315650;
    *&buf[4] = v16;
    *&buf[12] = 2080;
    *&buf[14] = v17;
    *&buf[22] = 2112;
    *&buf[24] = v18;
    _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "Client [%s] entitlement failed: '%s', required for notification %@", buf, 0x20u);
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    goto LABEL_18;
  }

  v7 = 0;
LABEL_50:
  v28 = [v4 factory];
  v29 = [v28 createSensitiveObjectClassifier];

  v30 = [*(a1 + 16) invocationDescriptionWithClassifier:v29];
  if ([v29 foundSensitiveObject])
  {
    v31 = *(a1 + 8);
    if (v31)
    {
      objc_msgSend_getLogContext(v31);
      v32 = *&buf[8];
    }

    else
    {
      v32 = 0;
      *buf = 0;
      *&buf[8] = 0;
    }

    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v34 = *(*(a1 + 8) + 216);
      *buf = 134218499;
      *&buf[4] = v7;
      *&buf[12] = 2048;
      *&buf[14] = v34;
      *&buf[22] = 2117;
      *&buf[24] = v30;
      v35 = "Sent notification to %zu (of %zu) clients: %{sensitive}@";
LABEL_61:
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, v35, buf, 0x20u);
    }
  }

  else
  {
    v33 = *(a1 + 8);
    if (v33)
    {
      objc_msgSend_getLogContext(v33);
      v32 = *&buf[8];
    }

    else
    {
      v32 = 0;
      *buf = 0;
      *&buf[8] = 0;
    }

    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v36 = *(*(a1 + 8) + 216);
      *buf = 134218498;
      *&buf[4] = v7;
      *&buf[12] = 2048;
      *&buf[14] = v36;
      *&buf[22] = 2112;
      *&buf[24] = v30;
      v35 = "Sent notification to %zu (of %zu) clients: %@";
      goto LABEL_61;
    }
  }
}

uint64_t sub_101298ADC(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F24908))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_101298B28()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

_OWORD *sub_101298B50(_OWORD *a1)
{
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  if (TelephonyRadiosGetRadioVendor() == 1)
  {
    operator new();
  }

  return a1;
}

void sub_101298C40(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v2);
  operator delete(v4);
  v5 = v1[5];
  if (v5)
  {
    sub_100004A34(v5);
  }

  v6 = v1[3];
  if (v6)
  {
    sub_100004A34(v6);
  }

  v7 = v1[1];
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }

  _Unwind_Resume(a1);
}

void *sub_101298CFC(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101F24928;
  sub_101298B50(a1 + 3);
  return a1;
}

void sub_101298D78(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F24928;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_101298DCC(void *a1)
{
  v2 = a1[8];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[6];
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = a1[4];
  if (v4)
  {

    std::__shared_weak_count::__release_weak(v4);
  }
}

void sub_101298E4C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F24978;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_101299064(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, std::__shared_weak_count *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_10000FF50(va);
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(a1);
}

void sub_101299258(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, std::__shared_weak_count *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_1006647E4(va);
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(a1);
}

void sub_101299480(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_1006648E4(va);
  sub_1012994E8(&a9);
  if (a14)
  {
    sub_100004A34(a14);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1012994E8(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    dispatch_release(v2);
  }

  return a1;
}

void sub_1012997A4(_Unwind_Exception *a1)
{
  if ((v3 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(a1);
}

void sub_101299A60(_Unwind_Exception *a1)
{
  if ((v3 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(a1);
}

void sub_101299C64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, std::__shared_weak_count *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_100664864(va);
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(a1);
}

void sub_101299F64(_Unwind_Exception *a1)
{
  if ((v5 & 1) == 0)
  {
    sub_100004A34(v3);
  }

  _Unwind_Resume(a1);
}

void sub_10129A298(_Unwind_Exception *a1)
{
  if ((v5 & 1) == 0)
  {
    sub_100004A34(v3);
  }

  _Unwind_Resume(a1);
}

void sub_10129A5B0(_Unwind_Exception *a1)
{
  if ((v5 & 1) == 0)
  {
    sub_100004A34(v3);
  }

  _Unwind_Resume(a1);
}

void sub_10129A650(uint64_t a1)
{

  operator delete();
}

id sub_10129A704(uint64_t a1, void *a2)
{
  *a2 = off_101F249C8;
  result = objc_retainBlock(*(a1 + 8));
  a2[1] = result;
  return result;
}

void sub_10129A754(id *a1)
{

  operator delete(a1);
}

uint64_t sub_10129A7A8(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F24A28))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10129A820(uint64_t a1)
{

  operator delete();
}

id sub_10129A8D4(uint64_t a1, void *a2)
{
  *a2 = off_101F24A48;
  result = objc_retainBlock(*(a1 + 8));
  a2[1] = result;
  return result;
}

void sub_10129A924(id *a1)
{

  operator delete(a1);
}

uint64_t sub_10129A97C(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F24AB8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10129A9C8(uint64_t a1)
{
  *a1 = off_101F24AD8;
  v2 = *(a1 + 16);
  if (v2)
  {
    dispatch_release(v2);
  }

  return a1;
}

void sub_10129AA1C(uint64_t a1)
{
  *a1 = off_101F24AD8;
  v2 = *(a1 + 16);
  if (v2)
  {
    dispatch_release(v2);
  }

  operator delete();
}

void sub_10129AB08(uint64_t a1, void *a2)
{
  *a2 = off_101F24AD8;
  v4 = objc_retainBlock(*(a1 + 8));
  v5 = *(a1 + 16);
  a2[1] = v4;
  a2[2] = v5;
  if (v5)
  {

    dispatch_retain(v5);
  }
}

void sub_10129AB84(char *a1)
{
  sub_10129AD4C((a1 + 8));

  operator delete(a1);
}

void sub_10129ABC0(uint64_t a1, char *a2, __int128 *a3)
{
  objc_retainBlock(*(a1 + 8));
  sub_10129B234(&v4, a3);
  operator new();
}

uint64_t sub_10129AD00(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F24B48))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10129AD4C(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *a1;
}

uint64_t *sub_10129AD8C(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    v2 = *(v1 + 152);
    if (v2)
    {
      *(v1 + 160) = v2;
      operator delete(v2);
    }

    v3 = *(v1 + 128);
    if (v3)
    {
      *(v1 + 136) = v3;
      operator delete(v3);
    }

    v4 = *(v1 + 104);
    if (v4)
    {
      *(v1 + 112) = v4;
      operator delete(v4);
    }

    v5 = *(v1 + 80);
    if (v5)
    {
      *(v1 + 88) = v5;
      operator delete(v5);
    }

    operator delete();
  }

  return a1;
}

uint64_t *sub_10129AE1C(uint64_t *a1)
{
  v38 = a1;
  if (*(a1 + 8) == 1)
  {
    v2 = objc_alloc_init(CTRadioFrequencyFrontEndScanData);
    [v2 setVersion:*(a1 + 4)];
    [v2 setHwPrdId:*(a1 + 5)];
    [v2 setHwSku:*(a1 + 6)];
    [v2 setHwRev:*(a1 + 7)];
    [v2 setHwHousing:*(a1 + 8)];
    [v2 setRfcInitPass:*(a1 + 36)];
    [v2 setRfcHwid:*(a1 + 10)];
    [v2 setRfcRev:*(a1 + 11)];
    [v2 setRfcMmwHwid:*(a1 + 12)];
    [v2 setRfcMmwRev:*(a1 + 13)];
    [v2 setFr2TrxRev:*(a1 + 14)];
    [v2 setRffeScanPass:*(a1 + 60)];
    [v2 setNumExpectedDevices:*(a1 + 16)];
    [v2 setNumDetectedDevices:*(a1 + 17)];
    [v2 setNumMissingDevices:*(a1 + 18)];
    v4 = a1[10];
    v3 = a1[11];
    v5 = v3 - v4;
    if (v3 != v4)
    {
      v6 = [[NSMutableArray alloc] initWithCapacity:v5];
      [v2 setRffeScanInfo:v6];

      v7 = 0;
      v8 = 1;
      do
      {
        v9 = [v2 rffeScanInfo];
        v10 = [NSNumber numberWithInteger:*(a1[10] + v7)];
        [v9 addObject:v10];

        v7 = v8;
        v11 = v5 > v8++;
      }

      while (v11);
    }

    v13 = a1[13];
    v12 = a1[14];
    v14 = v12 - v13;
    if (v12 != v13)
    {
      v15 = [[NSMutableArray alloc] initWithCapacity:v14];
      [v2 setMissingRffeDevices:v15];

      v16 = 0;
      v17 = 1;
      do
      {
        v18 = [v2 missingRffeDevices];
        v19 = [NSNumber numberWithInteger:*(a1[13] + v16)];
        [v18 addObject:v19];

        v16 = v17;
        v11 = v14 > v17++;
      }

      while (v11);
    }

    v21 = a1[16];
    v20 = a1[17];
    v22 = v20 - v21;
    if (v20 != v21)
    {
      v23 = [[NSMutableArray alloc] initWithCapacity:v22];
      [v2 setMissingAtDevices:v23];

      v24 = 0;
      v25 = 1;
      do
      {
        v26 = [v2 missingAtDevices];
        v27 = [NSNumber numberWithInteger:*(a1[16] + v24)];
        [v26 addObject:v27];

        v24 = v25;
        v11 = v22 > v25++;
      }

      while (v11);
    }

    v29 = a1[19];
    v28 = a1[20];
    v30 = v28 - v29;
    if (v28 != v29)
    {
      v31 = [[NSMutableArray alloc] initWithCapacity:v30];
      [v2 setMissingMmwDevices:v31];

      v32 = 0;
      v33 = 1;
      do
      {
        v34 = [v2 missingMmwDevices];
        v35 = [NSNumber numberWithInteger:*(a1[19] + v32)];
        [v34 addObject:v35];

        v32 = v33;
        v11 = v30 > v33++;
      }

      while (v11);
    }

    (*(*a1 + 16))();
  }

  else
  {
    v36 = *a1;
    v2 = [NSError errorWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
    (*(v36 + 16))(v36, 0, v2);
  }

  return sub_10129AD8C(&v38);
}

void sub_10129B1B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  sub_10129AD8C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10129B234(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 16) = v5;
  *(a1 + 32) = v6;
  *(a1 + 64) = 0;
  *a1 = v4;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  sub_100034C50((a1 + 64), *(a2 + 8), *(a2 + 9), *(a2 + 9) - *(a2 + 8));
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  sub_100034C50((a1 + 88), *(a2 + 11), *(a2 + 12), *(a2 + 12) - *(a2 + 11));
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  sub_100034C50((a1 + 112), *(a2 + 14), *(a2 + 15), *(a2 + 15) - *(a2 + 14));
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  sub_100034C50((a1 + 136), *(a2 + 17), *(a2 + 18), *(a2 + 18) - *(a2 + 17));
  return a1;
}

void sub_10129B2F4(_Unwind_Exception *exception_object)
{
  v6 = *v4;
  if (*v4)
  {
    v1[15] = v6;
    operator delete(v6);
  }

  v7 = *v3;
  if (*v3)
  {
    v1[12] = v7;
    operator delete(v7);
  }

  v8 = *v2;
  if (*v2)
  {
    v1[9] = v8;
    operator delete(v8);
  }

  _Unwind_Resume(exception_object);
}

void sub_10129B36C(uint64_t a1)
{

  operator delete();
}

id sub_10129B420(uint64_t a1, void *a2)
{
  *a2 = off_101F24B68;
  result = objc_retainBlock(*(a1 + 8));
  a2[1] = result;
  return result;
}

void sub_10129B470(id *a1)
{

  operator delete(a1);
}

uint64_t sub_10129B4AC(uint64_t a1, unsigned __int8 *a2)
{
  result = *(a1 + 8);
  if (result)
  {
    return (*(result + 16))(result, *a2);
  }

  return result;
}

uint64_t sub_10129B4C8(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F24BC8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10129B540(uint64_t a1)
{

  operator delete();
}

id sub_10129B5F4(uint64_t a1, void *a2)
{
  *a2 = off_101F24BE8;
  result = objc_retainBlock(*(a1 + 8));
  a2[1] = result;
  return result;
}

void sub_10129B644(id *a1)
{

  operator delete(a1);
}

void sub_10129B680(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(v20, *a2, *(a2 + 8));
  }

  else
  {
    *v20 = *a2;
    v21 = *(a2 + 16);
  }

  if (*(a2 + 47) < 0)
  {
    sub_100005F2C(&v22, *(a2 + 24), *(a2 + 32));
  }

  else
  {
    v22 = *(a2 + 24);
    v23 = *(a2 + 40);
  }

  if (*(a2 + 71) < 0)
  {
    sub_100005F2C(&__p, *(a2 + 48), *(a2 + 56));
  }

  else
  {
    __p = *(a2 + 48);
    v25 = *(a2 + 64);
  }

  v4 = objc_alloc_init(CTCellularConfigUpdateInfo);
  v5 = SHIBYTE(v21);
  v6 = v20[0];
  v7 = +[NSString defaultCStringEncoding];
  if (v5 >= 0)
  {
    v8 = v20;
  }

  else
  {
    v8 = v6;
  }

  v9 = [NSString stringWithCString:v8 encoding:v7, v20[0], v20[1], v21];
  [v4 setConfigType:v9];

  v10 = SHIBYTE(v23);
  v11 = v22;
  v12 = +[NSString defaultCStringEncoding];
  if (v10 >= 0)
  {
    v13 = &v22;
  }

  else
  {
    v13 = v11;
  }

  v14 = [NSString stringWithCString:v13 encoding:v12];
  [v4 setUpdatedTime:v14];

  v15 = SHIBYTE(v25);
  v16 = __p;
  v17 = +[NSString defaultCStringEncoding];
  if (v15 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = v16;
  }

  v19 = [NSString stringWithCString:p_p encoding:v17];
  [v4 setUpdatedDetails:v19];

  (*(*(a1 + 8) + 16))();
  if (SHIBYTE(v25) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v23) < 0)
  {
    operator delete(v22);
  }

  if (SHIBYTE(v21) < 0)
  {
    operator delete(v20[0]);
  }
}

void sub_10129B870(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10129B8E4(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F24C58))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10129B95C(uint64_t a1)
{

  operator delete();
}

id sub_10129BA10(uint64_t a1, void *a2)
{
  *a2 = off_101F24C78;
  result = objc_retainBlock(*(a1 + 8));
  a2[1] = result;
  return result;
}

void sub_10129BA60(id *a1)
{

  operator delete(a1);
}

void sub_10129BA9C(uint64_t a1, unsigned __int8 *a2, unint64_t *a3)
{
  v3 = *(a1 + 8);
  if (HIDWORD(*a3))
  {
    v4 = [NSError errorWithDomain:NSPOSIXErrorDomain code:*a3 >> 32 userInfo:0];
    (*(v3 + 16))(v3, 0);
  }

  else
  {
    v4 = [NSNumber numberWithBool:*a2];
    (*(v3 + 16))(v3);
  }
}

uint64_t sub_10129BB6C(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F24CD8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10129BBE4(uint64_t a1)
{

  operator delete();
}

id sub_10129BC98(uint64_t a1, void *a2)
{
  *a2 = off_101F24CF8;
  result = objc_retainBlock(*(a1 + 8));
  a2[1] = result;
  return result;
}

void sub_10129BCE8(id *a1)
{

  operator delete(a1);
}

void sub_10129BD24(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (HIDWORD(*a2))
  {
    v5 = [NSError errorWithDomain:NSPOSIXErrorDomain code:*a2 >> 32 userInfo:0];
    (*(v2 + 16))(v2);
  }

  else
  {
    v3 = *(v2 + 16);
    v4 = *(a1 + 8);

    v3(v4, 0);
  }
}

uint64_t sub_10129BDF0(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F24D58))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10129C0E4(_Unwind_Exception *a1)
{
  if ((v4 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(a1);
}

void sub_10129C7A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, char a13, void *a14, uint64_t a15, uint64_t a16, char *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  a17 = &a29;
  sub_10129FBD4(&a17);
  if ((a13 & 1) == 0)
  {
    sub_100004A34(v31);
  }

  _Unwind_Resume(a1);
}

void sub_10129CB58(_Unwind_Exception *a1)
{
  if ((v4 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(a1);
}

void sub_10129CE5C(_Unwind_Exception *a1)
{
  if ((v4 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(a1);
}

void sub_10129D1F8(_Unwind_Exception *a1)
{
  if ((v5 & 1) == 0)
  {
    sub_100004A34(v3);
  }

  _Unwind_Resume(a1);
}

void sub_10129D53C(_Unwind_Exception *a1)
{
  if ((v4 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(a1);
}

void sub_10129D8C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  if ((v12 & 1) == 0)
  {
    sub_100004A34(v11);
  }

  _Unwind_Resume(a1);
}

void sub_10129E024(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::__shared_weak_count *a9, int a10, char a11, void *a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, std::__shared_weak_count *a27)
{
  if (a27)
  {
    sub_100004A34(a27);
  }

  if ((a11 & 1) == 0)
  {
    sub_100004A34(a9);
  }

  _Unwind_Resume(a1);
}

void sub_10129E588(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  if ((v14 & 1) == 0)
  {
    sub_100004A34(v12);
  }

  _Unwind_Resume(a1);
}

void sub_10129E99C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  if ((v13 & 1) == 0)
  {
    sub_100004A34(v11);
  }

  _Unwind_Resume(a1);
}

void sub_10129EE54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  if ((v14 & 1) == 0)
  {
    sub_100004A34(v12);
  }

  _Unwind_Resume(a1);
}

void sub_10129F210(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  if ((v12 & 1) == 0)
  {
    sub_100004A34(v11);
  }

  _Unwind_Resume(a1);
}

void sub_10129F5FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  if ((v13 & 1) == 0)
  {
    sub_100004A34(v11);
  }

  _Unwind_Resume(a1);
}

void sub_10129F9F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  if ((v13 & 1) == 0)
  {
    sub_100004A34(v11);
  }

  _Unwind_Resume(a1);
}

void sub_10129FA90(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_100013D10();
}

const void **sub_10129FAE8(const void **result, const void **a2, uint64_t a3)
{
  if (result != a2)
  {
    v4 = result;
    v5 = result;
    do
    {
      *a3 = *v5;
      *(a3 + 8) = 0;
      *(a3 + 8) = v5[1];
      v5[1] = 0;
      *(a3 + 16) = 0;
      *(a3 + 16) = v5[2];
      v5[2] = 0;
      v5 += 3;
      a3 += 24;
    }

    while (v5 != a2);
    do
    {
      sub_10002D760(v4 + 2);
      result = sub_10002D760(v4 + 1);
      v4 += 3;
    }

    while (v4 != a2);
  }

  return result;
}

uint64_t sub_10129FB70(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 24;
    sub_10002D760((i - 8));
    sub_10002D760((i - 16));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_10129FBD4(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_10129FC28(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

const void **sub_10129FC28(const void **result, const void **a2)
{
  v3 = result;
  for (i = result[1]; i != a2; i -= 3)
  {
    sub_10002D760(i - 1);
    result = sub_10002D760(i - 2);
  }

  v3[1] = a2;
  return result;
}

void sub_10129FCB8(uint64_t a1)
{

  operator delete();
}

id sub_10129FD80(uint64_t a1, void *a2)
{
  *a2 = off_101F24D78;
  a2[1] = *(a1 + 8);
  result = objc_retainBlock(*(a1 + 16));
  a2[2] = result;
  return result;
}

void sub_10129FDD8(uint64_t a1)
{
  v2 = *(a1 + 8);
}

void sub_10129FE14(id *a1)
{

  operator delete(a1);
}

void sub_10129FE58(uint64_t a1, unsigned int **a2, uint64_t *a3)
{
  v4 = *a3;
  if (a2[1] == *a2)
  {
    v10 = 0;
  }

  else
  {
    v6 = objc_opt_new();
    v8 = *a2;
    for (i = a2[1]; v8 != i; v8 += 10)
    {
      v9 = [[CTTransportKey alloc] initWithKey:*(v8 + 2) epki:*(v8 + 1) forIdx:*v8 toReplaceEpki:*(v8 + 3) isLastResort:*(v8 + 32)];
      [v6 addObject:v9];
    }

    v10 = v6;
  }

  v11 = *(a1 + 8);
  if (v11)
  {
    objc_msgSend_getLogContext(v11);
    v12 = v16;
  }

  else
  {
    v12 = 0;
    v15 = 0;
    v16 = 0;
  }

  ctu::OsLogContext::~OsLogContext(&v15);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v15) = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "processed getTransportKeysToUpdate", &v15, 2u);
  }

  v13 = *(a1 + 16);
  v14 = [[CTTransportKeysUpdate alloc] initWith:v10 sps:v4];
  (*(v13 + 16))(v13, v14, 0);
}

uint64_t sub_10129FFF0(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F24DE8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1012A003C(uint64_t a1)
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

void sub_1012A00F0(uint64_t a1)
{

  operator delete();
}

id sub_1012A01B8(uint64_t a1, void *a2)
{
  *a2 = off_101F24E08;
  a2[1] = *(a1 + 8);
  result = objc_retainBlock(*(a1 + 16));
  a2[2] = result;
  return result;
}

void sub_1012A0210(uint64_t a1)
{
  v2 = *(a1 + 8);
}

void sub_1012A024C(id *a1)
{

  operator delete(a1);
}

void sub_1012A0290(uint64_t a1, const __CFUUID **a2, uint64_t *a3, uint64_t *a4)
{
  v5 = *a2;
  v6 = *a3;
  v7 = *a4;
  v8 = [CTSatelliteMessagingProvisioning alloc];
  v9 = sub_100185C20(v5);
  v10 = [v8 initWithID:v9 data:v6 sps:v7];

  v11 = *(a1 + 8);
  if (v11)
  {
    objc_msgSend_getLogContext(v11);
    v12 = v14;
  }

  else
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
  }

  ctu::OsLogContext::~OsLogContext(&v13);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v13) = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "processed getSatelliteMsgCfgToUpdate", &v13, 2u);
  }

  (*(*(a1 + 16) + 16))();
}

uint64_t sub_1012A03AC(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F24E78))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1012A03F8(uint64_t a1)
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

void sub_1012A04AC(uint64_t a1)
{

  operator delete();
}

id sub_1012A057C(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F24E98;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 16) = *(a1 + 16);
  result = objc_retainBlock(*(a1 + 24));
  *(a2 + 24) = result;
  return result;
}

void sub_1012A05DC(uint64_t a1)
{
  v2 = *(a1 + 8);
}

void sub_1012A0618(id *a1)
{

  operator delete(a1);
}

uint64_t sub_1012A065C(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 8);
  if (v3)
  {
    objc_msgSend_getLogContext(v3, a2);
    v4 = *(&v7 + 1);
  }

  else
  {
    v4 = 0;
    v7 = 0uLL;
  }

  ctu::OsLogContext::~OsLogContext(&v7);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = asStringBool(*(a1 + 16));
    LODWORD(v7) = 136315138;
    *(&v7 + 4) = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "processed reprovisionSatelliteMsg with wipe:%s", &v7, 0xCu);
  }

  return (*(*(a1 + 24) + 16))();
}

uint64_t sub_1012A073C(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F24EF8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1012A07B4(uint64_t a1)
{

  operator delete();
}

id sub_1012A0868(uint64_t a1, void *a2)
{
  *a2 = off_101F24F18;
  result = objc_retainBlock(*(a1 + 8));
  a2[1] = result;
  return result;
}

void sub_1012A08B8(id *a1)
{

  operator delete(a1);
}

uint64_t sub_1012A0908(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F24F78))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1012A0974(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F24F98;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

const void **sub_1012A09C8(const void **a1)
{
  sub_100005978(a1 + 8);
  sub_100010250(a1 + 6);
  sub_100005978(a1 + 5);
  sub_100010250(a1 + 4);

  return sub_100005978(a1 + 3);
}

void sub_1012A0A4C(uint64_t a1)
{

  operator delete();
}

id sub_1012A0B00(uint64_t a1, void *a2)
{
  *a2 = off_101F24FE8;
  result = objc_retainBlock(*(a1 + 8));
  a2[1] = result;
  return result;
}

void sub_1012A0B50(id *a1)
{

  operator delete(a1);
}

uint64_t sub_1012A0BA4(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F25058))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1012A0C1C(uint64_t a1)
{

  operator delete();
}

id sub_1012A0CD0(uint64_t a1, void *a2)
{
  *a2 = off_101F25078;
  result = objc_retainBlock(*(a1 + 8));
  a2[1] = result;
  return result;
}

void sub_1012A0D20(id *a1)
{

  operator delete(a1);
}

uint64_t sub_1012A0D70(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F250D8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1012A0DE8(uint64_t a1)
{

  operator delete();
}

id sub_1012A0E9C(uint64_t a1, void *a2)
{
  *a2 = off_101F250F8;
  result = objc_retainBlock(*(a1 + 8));
  a2[1] = result;
  return result;
}

void sub_1012A0EEC(id *a1)
{

  operator delete(a1);
}

uint64_t sub_1012A0F3C(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F25158))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1012A0FB4(uint64_t a1)
{

  operator delete();
}

id sub_1012A1068(uint64_t a1, void *a2)
{
  *a2 = off_101F25178;
  result = objc_retainBlock(*(a1 + 8));
  a2[1] = result;
  return result;
}

void sub_1012A10B8(id *a1)
{

  operator delete(a1);
}

uint64_t sub_1012A110C(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F251E8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1012A1184(uint64_t a1)
{

  operator delete();
}

id sub_1012A1238(uint64_t a1, void *a2)
{
  *a2 = off_101F25208;
  result = objc_retainBlock(*(a1 + 8));
  a2[1] = result;
  return result;
}

void sub_1012A1288(id *a1)
{

  operator delete(a1);
}

uint64_t sub_1012A12D8(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F25278))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1012A1350(uint64_t a1)
{

  operator delete();
}

id sub_1012A1404(uint64_t a1, void *a2)
{
  *a2 = off_101F25298;
  result = objc_retainBlock(*(a1 + 8));
  a2[1] = result;
  return result;
}

void sub_1012A1454(id *a1)
{

  operator delete(a1);
}

void sub_1012A1490(uint64_t a1, void **a2)
{
  if (*a2)
  {
    v4 = objc_opt_new();
    [v4 setBitRateMaxUL:**a2];
    [v4 setBitRateMaxDL:(*a2)[1]];
    [v4 setBitRateGuaranteedUL:(*a2)[2]];
    v5 = v4;
    [v4 setBitRateGuaranteedDL:(*a2)[3]];
  }

  else
  {
    v5 = 0;
  }

  (*(*(a1 + 8) + 16))();
}

uint64_t sub_1012A1578(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F25308))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1012A15F0(uint64_t a1)
{

  operator delete();
}

id sub_1012A16A4(uint64_t a1, void *a2)
{
  *a2 = off_101F25328;
  result = objc_retainBlock(*(a1 + 8));
  a2[1] = result;
  return result;
}

void sub_1012A16F4(id *a1)
{

  operator delete(a1);
}

uint64_t sub_1012A1744(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F25388))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1012A1790(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  v2 = (*(*a1 + 40))(v4);
  if (capabilities::ct::supportsGemini(v2))
  {
    sub_101743B0C(&v3);
  }

  sub_101743B0C(&v3);
}

void sub_1012A190C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v20 = 40;
  while (1)
  {
    v21 = *(v18 + v20);
    if (v21)
    {
      sub_100004A34(v21);
    }

    v20 -= 24;
    if (v20 == -8)
    {
      if (a10)
      {
        sub_100004A34(a10);
      }

      if (a12)
      {
        sub_100004A34(a12);
      }

      if (a15)
      {
        sub_100004A34(a15);
      }

      _Unwind_Resume(exception_object);
    }
  }
}

void sub_1012A19AC(uint64_t a1, NSObject **a2)
{
  if (*a2)
  {
    dispatch_retain(*a2);
  }

  BasebandSettingsDeviceStateModel::create(&v3);
}

void sub_1012A1A1C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    dispatch_release(v1);
  }

  _Unwind_Resume(exception_object);
}

double sub_1012A1A3C@<D0>(CCPreferences *a1@<X0>, _OWORD *a2@<X8>)
{
  CCPreferences::create(a1);
  result = *&v4;
  *a2 = v4;
  return result;
}

void sub_1012A1A74(int a1@<W1>, uint64_t *a4@<X8>)
{
  if (a1 > 6)
  {
    if (a1 <= 8)
    {
      if (a1 != 7)
      {
        operator new();
      }

      operator new();
    }

    if (a1 == 9)
    {
      operator new();
    }

    if (a1 == 10)
    {
      operator new();
    }
  }

  else
  {
    if (a1 > 4)
    {
      if (a1 != 5)
      {
        operator new();
      }

      operator new();
    }

    if (!a1)
    {
      operator new();
    }

    if (a1 == 2)
    {
      operator new();
    }
  }

  *a4 = 0;
  a4[1] = 0;
}

void sub_1012A1E24(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_1012A1E58(BasebandSettingsFactoryInterface *this)
{
  *this = off_101F253A8;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  BasebandSettingsFactoryInterface::~BasebandSettingsFactoryInterface(this);
}

void sub_1012A1EB4(BasebandSettingsFactoryInterface *this)
{
  *this = off_101F253A8;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  BasebandSettingsFactoryInterface::~BasebandSettingsFactoryInterface(this);

  operator delete();
}

uint64_t **sub_1012A1F24(uint64_t **a1, int *a2, uint64_t a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = (a1 + 1);
  if (a3)
  {
    v3 = a2;
    v4 = 0;
    v5 = a1 + 1;
    while (1)
    {
      v6 = a1 + 1;
      if (v5 == a1 + 1)
      {
        goto LABEL_9;
      }

      v7 = v4;
      v8 = a1 + 1;
      if (v4)
      {
        do
        {
          v6 = v7;
          v7 = v7[1];
        }

        while (v7);
      }

      else
      {
        do
        {
          v6 = v8[2];
          v9 = *v6 == v8;
          v8 = v6;
        }

        while (v9);
      }

      v10 = *v3;
      if (*(v6 + 8) < *v3)
      {
LABEL_9:
        if (v4)
        {
          v11 = v6 + 1;
        }

        else
        {
          v11 = a1 + 1;
        }

        if (!*v11)
        {
LABEL_20:
          operator new();
        }
      }

      else
      {
        if (!v4)
        {
          goto LABEL_20;
        }

        while (1)
        {
          while (1)
          {
            v12 = v4;
            v13 = *(v4 + 8);
            if (v13 <= v10)
            {
              break;
            }

            v4 = *v12;
            if (!*v12)
            {
              goto LABEL_20;
            }
          }

          if (v13 >= v10)
          {
            break;
          }

          v4 = v12[1];
          if (!v4)
          {
            goto LABEL_20;
          }
        }
      }

      v3 += 6;
      if (v3 == &a2[6 * a3])
      {
        break;
      }

      v5 = *a1;
      v4 = a1[1];
    }
  }

  return a1;
}

void sub_1012A20EC(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F25408;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1012A2188(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F25458;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1012A2224(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F254A8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1012A22C0(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F254F8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1012A235C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F25548;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1012A23F8(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F25598;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1012A2494(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F255E8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1012A2510(uint64_t a1@<X0>, uint64_t **a3@<X8>)
{
  v9 = 0;
  v10 = 0;
  (*(*a1 + 24))(&v9);
  a3[1] = 0;
  a3[2] = 0;
  *a3 = (a3 + 1);
  subscriber::makeSimSlotRange();
  v4 = v6;
  if (v6 != v7)
  {
    do
    {
      if (v8(*v4))
      {
        break;
      }

      ++v4;
    }

    while (v4 != v7);
    if (v4 != v7)
    {
      v5[0] = 0;
      v5[1] = 0;
      sub_101338EC4(v5);
    }
  }

  if (v10)
  {
    sub_100004A34(v10);
  }
}

void sub_1012A2748(_Unwind_Exception *a1)
{
  sub_10006EC28(v1, *(v1 + 8));
  v4 = *(v2 - 88);
  if (v4)
  {
    sub_100004A34(v4);
  }

  _Unwind_Resume(a1);
}

double sub_1012A27C8@<D0>(CCPreferences *a1@<X0>, _OWORD *a2@<X8>)
{
  CCPreferences::create(a1);
  result = *&v4;
  *a2 = v4;
  return result;
}

void sub_1012A2800(RoamingHandlerFactoryInterface *this)
{
  *this = off_101F25638;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  RoamingHandlerFactoryInterface::~RoamingHandlerFactoryInterface(this);
}

void sub_1012A285C(RoamingHandlerFactoryInterface *this)
{
  *this = off_101F25638;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  RoamingHandlerFactoryInterface::~RoamingHandlerFactoryInterface(this);

  operator delete();
}

void sub_1012A28CC(capabilities::euicc *a1@<X0>, std::__shared_weak_count_vtbl **a2@<X8>)
{
  v3 = capabilities::euicc::supportsVinylSEPPairingVerification(a1);
  if (v3 && !capabilities::euicc::supportsEOS(v3))
  {
    *a2 = 0;
    a2[1] = 0;
    operator new();
  }

  *a2 = 0;
  a2[1] = 0;
}

void sub_1012A2BC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a12)
  {
    (*(*a12 + 8))(a12, a2, a3, a4, a5, a6, a7, a8);
  }

  if (a11)
  {
    sub_100004A34(a11);
  }

  if (a14)
  {
    sub_100004A34(a14);
  }

  sub_100004A34(v14);
  _Unwind_Resume(a1);
}

const void **sub_1012A2CCC(const void **a1)
{
  *a1 = off_101F25680;
  v2 = (a1 + 5);
  sub_1012A2EE4(a1 + 6);
  ctu::OsLogLogger::~OsLogLogger(v2);
  sub_1000C0544(a1 + 1);
  return a1;
}

void sub_1012A2D2C(const void **a1)
{
  sub_1012A2CCC(a1);

  operator delete();
}

const void **sub_1012A2D64@<X0>(uint64_t a1@<X0>, const void **a2@<X1>, void *a3@<X8>)
{
  v5 = a1 + 8;
  v8 = a1;
  sub_10005C7A4(&v9, a2);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 0x40000000;
  v11[2] = sub_1012A3568;
  v11[3] = &unk_101F25820;
  v11[4] = v5;
  v11[5] = &v8;
  v12 = v11;
  v6 = *(a1 + 24);
  if (*(a1 + 32))
  {
    v10 = 0;
    block = _NSConcreteStackBlock;
    v14 = 0x40000000;
    v15 = sub_1012A37E4;
    v16 = &unk_101F25860;
    v17 = &v10;
    v18 = &v12;
    dispatch_async_and_wait(v6, &block);
  }

  else
  {
    v10 = 0;
    block = _NSConcreteStackBlock;
    v14 = 0x40000000;
    v15 = sub_1012A376C;
    v16 = &unk_101F25840;
    v17 = &v10;
    v18 = &v12;
    dispatch_sync(v6, &block);
  }

  sub_100060DE8(a3, &v10);
  sub_10000A1EC(&v10);
  return sub_100005978(&v9);
}

void sub_1012A2EC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10000A1EC(va);
  sub_100005978((v5 + 8));
  _Unwind_Resume(a1);
}

const void **sub_1012A2EE4(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void sub_1012A2F1C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1012A2F70(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1012A2FB0(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_1012A2FDC(ServiceManager::Service *this)
{
  *this = off_101F257B0;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);
}

void sub_1012A3038(ServiceManager::Service *this)
{
  *this = off_101F257B0;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);

  operator delete();
}

uint64_t *sub_1012A3104@<X0>(uint64_t *a1@<X8>)
{
  v2 = 0;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  return sub_1000FF040(a1, &v2, &vars0, 1);
}

void sub_1012A3144(uint64_t a1, dispatch_object_t *a2)
{
  v2 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v2);
    dispatch_group_leave(v2);

    dispatch_release(v2);
  }
}

void sub_1012A31BC(uint64_t a1)
{
  v1 = *(*(a1 + 8) + 16);
  if (v1)
  {
    if (std::__shared_weak_count::lock(v1))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_1012A329C(uint64_t a1, char a2, ServiceStage *this)
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

void sub_1012A33B8(uint64_t **a1)
{
  v1 = **a1;
  if (*(v1 + 48))
  {
    err = 0;
    if ((AMFDRSealingMapVerifySealing() & 1) == 0)
    {
      v2 = *(v1 + 48);
      *(v1 + 48) = 0;
      *buf = v2;
      sub_1012A2EE4(buf);
      if (err)
      {
        v3 = CFErrorCopyDescription(err);
        v5 = v3;
        v4 = *(v1 + 40);
        if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          *&buf[4] = v3;
          _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Error verifying sealing: %@!", buf, 0xCu);
        }

        sub_100005978(&v5);
      }
    }
  }

  operator delete();
}

uint64_t *sub_1012A3500(void *a1)
{
  v5 = a1;
  v1 = *a1;
  if (*a1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      dispatch_group_leave(v2);
      v3 = *(v1 + 8);
      if (v3)
      {
        dispatch_release(v3);
      }
    }

    operator delete();
  }

  return sub_1000049E0(&v5);
}

void sub_1012A3568(uint64_t a1@<X0>, CFStringRef *a2@<X8>)
{
  v3 = *(a1 + 40);
  v4 = *v3;
  if (*(*v3 + 48))
  {
    data = 0;
    *buf = 0;
    p_data = &data;
    v5 = AMFDRDataCopySealingManifestProperty();
    sub_1012A3714(buf);
    if (data)
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    if (v6)
    {
      v7 = CFGetAllocator(*(v4 + 48));
      v8 = CFStringCreateFromExternalRepresentation(v7, data, 0x8000100u);
      *buf = v8;
      if (v8)
      {
        *a2 = v8;
        CFRetain(v8);
      }

      else
      {
        v11 = *(v4 + 40);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          *v12 = 0;
          _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Property not found in FDR manifest", v12, 2u);
        }

        *a2 = 0;
      }

      sub_100005978(buf);
    }

    else
    {
      v10 = *(v4 + 40);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Error copying manifest property!", buf, 2u);
      }

      *a2 = 0;
    }

    sub_10002D760(&data);
  }

  else
  {
    v9 = *(v4 + 40);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "FDR Object is null!", buf, 2u);
    }

    *a2 = 0;
  }
}

void sub_1012A36F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_10002D760(va);
  _Unwind_Resume(a1);
}

const void **sub_1012A3714(const void **a1)
{
  v2 = a1[1];
  if (*a1)
  {
    v3 = *v2;
    *v2 = *a1;
    v6 = v3;
  }

  else
  {
    v4 = *v2;
    *v2 = 0;
    v6 = v4;
  }

  sub_10002D760(&v6);
  return a1;
}

const void **sub_1012A376C(uint64_t a1)
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
    sub_10000A1EC(&v6);
  }

  return sub_10000A1EC(&v5);
}

const void **sub_1012A37E4(uint64_t a1)
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
    sub_10000A1EC(&v6);
  }

  return sub_10000A1EC(&v5);
}

void sub_1012A385C(void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  operator new();
}

uint64_t sub_1012A38E4(uint64_t a1, int a2)
{
  v4 = (a1 + 8);
  v5 = "pb.mdl.?";
  if (a2 == 2)
  {
    v5 = "pb.mdl.2";
  }

  if (a2 == 1)
  {
    v6 = "pb.mdl.1";
  }

  else
  {
    v6 = v5;
  }

  ctu::OsLogContext::OsLogContext(&v8, kCtLoggingSystemName, v6);
  ctu::OsLogLogger::OsLogLogger(v9, &v8);
  ctu::OsLogLogger::OsLogLogger(v4, v9);
  ctu::OsLogLogger::~OsLogLogger(v9);
  ctu::OsLogContext::~OsLogContext(&v8);
  *(a1 + 16) = 0u;
  *a1 = off_101F25890;
  *(a1 + 32) = a2;
  *(a1 + 36) = 0x600000006;
  PBCapabilities::PrimaryNumber::PrimaryNumber((a1 + 44));
  PBCapabilities::Groups::Groups((a1 + 56));
  PBCapabilities::AdditionaNumber::AdditionaNumber((a1 + 58));
  PBCapabilities::Email::Email((a1 + 61));
  PBCapabilities::SecondName::SecondName((a1 + 63));
  PBCapabilities::HiddenRecords::HiddenRecords((a1 + 64));
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 72) = a1 + 80;
  sub_100E3F3A4(a1 + 96);
  *(a1 + 528) = 0;
  CSIPhoneNumber::CSIPhoneNumber((a1 + 536));
  CSIPhoneNumber::CSIPhoneNumber((a1 + 696));
  CSIPhoneNumber::CSIPhoneNumber((a1 + 856));
  *(a1 + 1016) = 1;
  CSIPhoneNumber::CSIPhoneNumber((a1 + 1024));
  *(a1 + 1192) = 0u;
  *(a1 + 1184) = a1 + 1192;
  return a1;
}

void sub_1012A3A54(_Unwind_Exception *a1)
{
  sub_10034F8E8(v1 + 856);
  sub_10034F8E8(v1 + 696);
  sub_10034F8E8(v1 + 536);
  sub_10006BF90((v3 + 2));
  sub_1012A5978(*v3);
  v5 = *(v1 + 3);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  ctu::OsLogLogger::~OsLogLogger(v2);
  PhonebookModelInterface::~PhonebookModelInterface(v1);
  _Unwind_Resume(a1);
}

void sub_1012A3AF4(uint64_t a1)
{
  *a1 = off_101F25890;
  sub_100034450(*(a1 + 1192));
  if (*(a1 + 1175) < 0)
  {
    operator delete(*(a1 + 1152));
  }

  if (*(a1 + 1151) < 0)
  {
    operator delete(*(a1 + 1128));
  }

  if (*(a1 + 1111) < 0)
  {
    operator delete(*(a1 + 1088));
  }

  if (*(a1 + 1079) < 0)
  {
    operator delete(*(a1 + 1056));
  }

  if (*(a1 + 1055) < 0)
  {
    operator delete(*(a1 + 1032));
  }

  if (*(a1 + 1007) < 0)
  {
    operator delete(*(a1 + 984));
  }

  if (*(a1 + 983) < 0)
  {
    operator delete(*(a1 + 960));
  }

  if (*(a1 + 943) < 0)
  {
    operator delete(*(a1 + 920));
  }

  if (*(a1 + 911) < 0)
  {
    operator delete(*(a1 + 888));
  }

  if (*(a1 + 887) < 0)
  {
    operator delete(*(a1 + 864));
  }

  if (*(a1 + 847) < 0)
  {
    operator delete(*(a1 + 824));
  }

  if (*(a1 + 823) < 0)
  {
    operator delete(*(a1 + 800));
  }

  if (*(a1 + 783) < 0)
  {
    operator delete(*(a1 + 760));
  }

  if (*(a1 + 751) < 0)
  {
    operator delete(*(a1 + 728));
  }

  if (*(a1 + 727) < 0)
  {
    operator delete(*(a1 + 704));
  }

  if (*(a1 + 687) < 0)
  {
    operator delete(*(a1 + 664));
  }

  if (*(a1 + 663) < 0)
  {
    operator delete(*(a1 + 640));
  }

  if (*(a1 + 623) < 0)
  {
    operator delete(*(a1 + 600));
  }

  if (*(a1 + 591) < 0)
  {
    operator delete(*(a1 + 568));
  }

  if (*(a1 + 567) < 0)
  {
    operator delete(*(a1 + 544));
  }

  sub_10006BF90(a1 + 96);
  sub_1012A5978(*(a1 + 80));
  v2 = *(a1 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 8));

  PhonebookModelInterface::~PhonebookModelInterface(a1);
}

void sub_1012A3CB4(uint64_t a1)
{
  sub_1012A3AF4(a1);

  operator delete();
}

void sub_1012A3CEC(uint64_t a1)
{
  v1 = (a1 + 80);
  sub_1012A5978(*(a1 + 80));
  *v1 = 0;
  v1[1] = 0;
  *(v1 - 1) = v1;
}

BOOL sub_1012A3D34(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v3 = a2;
  v4 = *(a1 + 88);
  if (v4 > a2)
  {
    v5 = *(a1 + 72);
    if (a2)
    {
      for (i = 0; i != a2; ++i)
      {
        v7 = v5[1];
        if (v7)
        {
          do
          {
            v8 = v7;
            v7 = *v7;
          }

          while (v7);
        }

        else
        {
          do
          {
            v8 = v5[2];
            v9 = *v8 == v5;
            v5 = v8;
          }

          while (!v9);
        }

        v5 = v8;
      }
    }

    else
    {
      v8 = *(a1 + 72);
    }

    sub_1012A3DC4(a3, (v8 + 5));
  }

  return v4 > v3;
}

uint64_t sub_1012A3DC4(uint64_t a1, uint64_t a2)
{
  if (a2 != a1)
  {
    *a1 = *a2;
    std::string::operator=((a1 + 8), (a2 + 8));
    *(a1 + 32) = *(a2 + 32);
    std::string::operator=((a1 + 40), (a2 + 40));
    std::string::operator=((a1 + 64), (a2 + 64));
    v4 = *(a2 + 92);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 92) = v4;
    std::string::operator=((a1 + 96), (a2 + 96));
    v5 = *(a2 + 128);
    *(a1 + 120) = *(a2 + 120);
    *(a1 + 128) = v5;
    std::string::operator=((a1 + 136), (a2 + 136));
    std::string::operator=((a1 + 160), (a2 + 160));
    *(a1 + 184) = *(a2 + 184);
    *(a1 + 192) = *(a2 + 192);
    std::string::operator=((a1 + 200), (a2 + 200));
    std::string::operator=((a1 + 224), (a2 + 224));
    v6 = *(a2 + 252);
    *(a1 + 248) = *(a2 + 248);
    *(a1 + 252) = v6;
    std::string::operator=((a1 + 256), (a2 + 256));
    v7 = *(a2 + 288);
    *(a1 + 280) = *(a2 + 280);
    *(a1 + 288) = v7;
    std::string::operator=((a1 + 296), (a2 + 296));
    std::string::operator=((a1 + 320), (a2 + 320));
    *(a1 + 344) = *(a2 + 344);
    std::string::operator=((a1 + 352), (a2 + 352));
    std::string::operator=((a1 + 376), (a2 + 376));
    std::string::operator=((a1 + 400), (a2 + 400));
    *(a1 + 424) = *(a2 + 424);
  }

  return a1;
}

void sub_1012A3F08(void *a1, unsigned int a2)
{
  v4 = a1 + 10;
  v3 = a1[10];
  if (v3)
  {
    v5 = v4;
    v6 = v3;
    do
    {
      v7 = *(v6 + 8);
      v8 = v7 >= a2;
      v9 = v7 < a2;
      if (v8)
      {
        v5 = v6;
      }

      v6 = v6[v9];
    }

    while (v6);
    if (v5 != v4 && *(v5 + 8) <= a2)
    {
      v10 = v5[1];
      if (v10)
      {
        do
        {
          v11 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        v12 = v5;
        do
        {
          v11 = v12[2];
          v13 = *v11 == v12;
          v12 = v11;
        }

        while (!v13);
      }

      if (a1[9] == v5)
      {
        a1[9] = v11;
      }

      --a1[11];
      sub_100018288(v3, v5);
      sub_10006BF90((v5 + 5));

      operator delete(v5);
    }
  }
}

uint64_t sub_1012A3FEC(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  *(a1 + 57) = *(a2 + 13);
  *(a1 + 44) = v2;
  return (*(*a1 + 264))();
}

void sub_1012A4030(void *a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*a2 != v4)
  {
    v5 = a1 + 10;
    do
    {
      *buf = *v3;
      sub_10006BD80(&buf[8], v3);
      v6 = *v5;
      if (!*v5)
      {
LABEL_9:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          v7 = v6;
          v8 = *(v6 + 32);
          if (v8 <= *buf)
          {
            break;
          }

          v6 = *v7;
          if (!*v7)
          {
            goto LABEL_9;
          }
        }

        if (v8 >= *buf)
        {
          break;
        }

        v6 = v7[1];
        if (!v6)
        {
          goto LABEL_9;
        }
      }

      sub_10006BF90(&buf[8]);
      v3 += 54;
    }

    while (v3 != v4);
  }

  v9 = a1[1];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = a1[11];
    *buf = 134217984;
    *&buf[4] = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Phone Book Size: %ld", buf, 0xCu);
  }

  v11 = a1[9];
  if (v11 != a1 + 10)
  {
    do
    {
      v12 = a1[1];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = v11[5];
        *buf = 134217984;
        *&buf[4] = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Record ID: %ld", buf, 0xCu);
        v12 = a1[1];
      }

      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v14 = v11 + 6;
        if (*(v11 + 71) >= 0)
        {
          v15 = *(v11 + 71);
        }

        else
        {
          v14 = v11[6];
          v15 = v11[7];
        }

        *buf = 136315394;
        *&buf[4] = v14;
        v29 = 2048;
        v30 = v15;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Name: %s, Length:%ld", buf, 0x16u);
        v12 = a1[1];
      }

      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        CSIPhoneNumber::getFullNumber(buf, (v11 + 9));
        v16 = v31;
        v17 = *buf;
        CSIPhoneNumber::getFullNumber(&v32, (v11 + 9));
        if (v16 >= 0)
        {
          v18 = buf;
        }

        else
        {
          v18 = v17;
        }

        v19 = HIBYTE(v33);
        if (v33 < 0)
        {
          v19 = *(&v32 + 1);
        }

        *v34 = 136315394;
        v35 = v18;
        v36 = 2048;
        v37 = v19;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Number: %s, Length: %ld", v34, 0x16u);
        if (SHIBYTE(v33) < 0)
        {
          operator delete(v32);
        }

        if (v31 < 0)
        {
          operator delete(*buf);
        }

        v12 = a1[1];
      }

      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        CSIPhoneNumber::getFullNumber(buf, (v11 + 29));
        if (v31 >= 0)
        {
          v20 = buf;
        }

        else
        {
          v20 = *buf;
        }

        LODWORD(v32) = 136315138;
        *(&v32 + 4) = v20;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Additional Number: %s", &v32, 0xCu);
        if (v31 < 0)
        {
          operator delete(*buf);
        }

        v12 = a1[1];
      }

      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v21 = v11 + 49;
        if (*(v11 + 415) < 0)
        {
          v21 = v11[49];
        }

        *buf = 136315138;
        *&buf[4] = v21;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Group: %s", buf, 0xCu);
        v12 = a1[1];
      }

      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v22 = v11 + 52;
        if (*(v11 + 439) < 0)
        {
          v22 = v11[52];
        }

        *buf = 136315138;
        *&buf[4] = v22;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Second Name: %s", buf, 0xCu);
        v12 = a1[1];
      }

      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v23 = v11 + 55;
        if (*(v11 + 463) < 0)
        {
          v23 = v11[55];
        }

        *buf = 136315138;
        *&buf[4] = v23;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Email: %s", buf, 0xCu);
        v12 = a1[1];
      }

      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v24 = *(v11 + 464);
        *buf = 67109120;
        *&buf[4] = v24;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Hidden: %d", buf, 8u);
      }

      v25 = v11[1];
      if (v25)
      {
        do
        {
          v26 = v25;
          v25 = *v25;
        }

        while (v25);
      }

      else
      {
        do
        {
          v26 = v11[2];
          v27 = *v26 == v11;
          v11 = v26;
        }

        while (!v27);
      }

      v11 = v26;
    }

    while (v26 != a1 + 10);
  }
}

void sub_1012A4580(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_1012A45E4(uint64_t a1, uint64_t a2)
{
  *(a1 + 536) = *a2;
  std::string::operator=((a1 + 544), (a2 + 8));
  std::string::operator=((a1 + 568), (a2 + 32));
  v4 = *(a2 + 60);
  *(a1 + 592) = *(a2 + 56);
  *(a1 + 596) = v4;
  std::string::operator=((a1 + 600), (a2 + 64));
  v5 = *(a2 + 96);
  *(a1 + 624) = *(a2 + 88);
  *(a1 + 632) = v5;
  std::string::operator=((a1 + 640), (a2 + 104));
  result = std::string::operator=((a1 + 664), (a2 + 128));
  *(a1 + 688) = *(a2 + 152);
  return result;
}

std::string *sub_1012A4670(uint64_t a1, uint64_t a2)
{
  *(a1 + 696) = *a2;
  std::string::operator=((a1 + 704), (a2 + 8));
  std::string::operator=((a1 + 728), (a2 + 32));
  v4 = *(a2 + 60);
  *(a1 + 752) = *(a2 + 56);
  *(a1 + 756) = v4;
  std::string::operator=((a1 + 760), (a2 + 64));
  v5 = *(a2 + 96);
  *(a1 + 784) = *(a2 + 88);
  *(a1 + 792) = v5;
  std::string::operator=((a1 + 800), (a2 + 104));
  result = std::string::operator=((a1 + 824), (a2 + 128));
  *(a1 + 848) = *(a2 + 152);
  return result;
}

std::string *sub_1012A46FC(uint64_t a1, uint64_t a2)
{
  *(a1 + 856) = *a2;
  std::string::operator=((a1 + 864), (a2 + 8));
  std::string::operator=((a1 + 888), (a2 + 32));
  v4 = *(a2 + 60);
  *(a1 + 912) = *(a2 + 56);
  *(a1 + 916) = v4;
  std::string::operator=((a1 + 920), (a2 + 64));
  v5 = *(a2 + 96);
  *(a1 + 944) = *(a2 + 88);
  *(a1 + 952) = v5;
  std::string::operator=((a1 + 960), (a2 + 104));
  result = std::string::operator=((a1 + 984), (a2 + 128));
  *(a1 + 1008) = *(a2 + 152);
  return result;
}

uint64_t sub_1012A4790(_BYTE *a1)
{
  if (a1[1016] == 1 && (a1[528] & 1) == 0)
  {
    v1 = a1[529];
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

std::string *sub_1012A47B8(uint64_t a1, uint64_t a2)
{
  *(a1 + 1024) = *a2;
  std::string::operator=((a1 + 1032), (a2 + 8));
  std::string::operator=((a1 + 1056), (a2 + 32));
  v4 = *(a2 + 60);
  *(a1 + 1080) = *(a2 + 56);
  *(a1 + 1084) = v4;
  std::string::operator=((a1 + 1088), (a2 + 64));
  v5 = *(a2 + 96);
  *(a1 + 1112) = *(a2 + 88);
  *(a1 + 1120) = v5;
  std::string::operator=((a1 + 1128), (a2 + 104));
  result = std::string::operator=((a1 + 1152), (a2 + 128));
  *(a1 + 1176) = *(a2 + 152);
  return result;
}

void sub_1012A484C(void *a1, void *a2)
{
  v2 = (a1 + 148);
  if (a1 + 148 != a2)
  {
    v4 = a2 + 1;
    v5 = *a2;
    if (a1[150])
    {
      v6 = a1[148];
      v7 = (a1 + 149);
      a1[148] = a1 + 149;
      *(a1[149] + 16) = 0;
      *(a1 + 149) = 0u;
      if (*(v6 + 8))
      {
        v8 = *(v6 + 8);
      }

      else
      {
        v8 = v6;
      }

      if (v8)
      {
        v9 = sub_1000685CC(v8);
        if (v5 == v4)
        {
          v11 = v8;
        }

        else
        {
          v10 = v5;
          do
          {
            v11 = v9;
            v12 = *(v10 + 7);
            *(v8 + 28) = v12;
            v13 = *v7;
            v14 = (a1 + 149);
            v15 = (a1 + 149);
            if (*v7)
            {
              do
              {
                while (1)
                {
                  v14 = v13;
                  if (v12 >= *(v13 + 7))
                  {
                    break;
                  }

                  v13 = *v13;
                  v15 = v14;
                  if (!*v14)
                  {
                    goto LABEL_15;
                  }
                }

                v13 = v13[1];
              }

              while (v13);
              v15 = v14 + 1;
            }

LABEL_15:
            sub_1000070DC(v2, v14, v15, v8);
            if (v9)
            {
              v9 = sub_1000685CC(v9);
            }

            else
            {
              v9 = 0;
            }

            v16 = v10[1];
            if (v16)
            {
              do
              {
                v5 = v16;
                v16 = *v16;
              }

              while (v16);
            }

            else
            {
              do
              {
                v5 = v10[2];
                v17 = *v5 == v10;
                v10 = v5;
              }

              while (!v17);
            }

            if (!v11)
            {
              break;
            }

            v8 = v11;
            v10 = v5;
          }

          while (v5 != v4);
        }

        sub_100034450(v11);
        if (!v9)
        {
          goto LABEL_33;
        }

        for (i = v9[2]; i; i = i[2])
        {
          v9 = i;
        }

        v18 = v9;
      }

      else
      {
        v18 = 0;
      }

      sub_100034450(v18);
    }

LABEL_33:
    if (v5 != v4)
    {
      operator new();
    }
  }
}

BOOL sub_1012A4A80(uint64_t a1, int a2)
{
  v2 = *(a1 + 1184);
  v3 = (a1 + 1192);
  if (v2 != (a1 + 1192))
  {
    while (*(v2 + 7) != a2)
    {
      v4 = v2[1];
      if (v4)
      {
        do
        {
          v5 = v4;
          v4 = *v4;
        }

        while (v4);
      }

      else
      {
        do
        {
          v5 = v2[2];
          v6 = *v5 == v2;
          v2 = v5;
        }

        while (!v6);
      }

      v2 = v5;
      if (v5 == v3)
      {
        v2 = (a1 + 1192);
        return v2 != v3;
      }
    }
  }

  return v2 != v3;
}

void sub_1012A4AE4(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v17) = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Phone Book Capabilities", &v17, 2u);
    v2 = *(a1 + 8);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v17) = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Primary:", &v17, 2u);
    v2 = *(a1 + 8);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 44);
    v17 = 67109120;
    v18 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I \t\tfPbType: %d", &v17, 8u);
    v2 = *(a1 + 8);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 48);
    v17 = 67109120;
    v18 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I \t\tfUsedRecords:%d", &v17, 8u);
    v2 = *(a1 + 8);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 50);
    v17 = 67109120;
    v18 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I \t\tfMaxRecords:%d", &v17, 8u);
    v2 = *(a1 + 8);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 52);
    v17 = 67109120;
    v18 = v6;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I \t\tfMaxNumLength:%d", &v17, 8u);
    v2 = *(a1 + 8);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 53);
    v17 = 67109120;
    v18 = v7;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I \t\tfMaxNameLength:%d", &v17, 8u);
    v2 = *(a1 + 8);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v17) = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Groups:", &v17, 2u);
    v2 = *(a1 + 8);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 56);
    v17 = 67109120;
    v18 = v8;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I \t\tfMaxGroups:%d", &v17, 8u);
    v2 = *(a1 + 8);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 57);
    v17 = 67109120;
    v18 = v9;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I \t\tfMaxGroupNameLength:%d", &v17, 8u);
    v2 = *(a1 + 8);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v17) = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I AdditionaNumber:", &v17, 2u);
    v2 = *(a1 + 8);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 58);
    v17 = 67109120;
    v18 = v10;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I \t\tfMaxAddNumbers:%d", &v17, 8u);
    v2 = *(a1 + 8);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 59);
    v17 = 67109120;
    v18 = v11;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I \t\tfMaxAddNumLength:%d", &v17, 8u);
    v2 = *(a1 + 8);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(a1 + 60);
    v17 = 67109120;
    v18 = v12;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I \t\tfMaxNameLength:%d", &v17, 8u);
    v2 = *(a1 + 8);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v17) = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Email:", &v17, 2u);
    v2 = *(a1 + 8);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v13 = *(a1 + 61);
    v17 = 67109120;
    v18 = v13;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I \t\tfMaxEmailsPossible:%d", &v17, 8u);
    v2 = *(a1 + 8);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v14 = *(a1 + 62);
    v17 = 67109120;
    v18 = v14;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I \t\tfMaxEmailLength:%d", &v17, 8u);
    v2 = *(a1 + 8);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v17) = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I SecondName:", &v17, 2u);
    v2 = *(a1 + 8);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v15 = *(a1 + 63);
    v17 = 67109120;
    v18 = v15;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I \t\tfMaxSecondNameLength:%d", &v17, 8u);
    v2 = *(a1 + 8);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v17) = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I HiddenRecords:", &v17, 2u);
    v2 = *(a1 + 8);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v16 = *(a1 + 64);
    v17 = 67109120;
    v18 = v16;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I \t\tisHiddenRecordSupported:%d", &v17, 8u);
  }
}

double sub_1012A50D8(uint64_t a1, char a2)
{
  v4 = *(a1 + 8);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v30.var0) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Resetting the Phone Book Model", &v30, 2u);
  }

  *(a1 + 36) = 0x600000006;
  memset(&v30, 0, 24);
  PBCapabilities::PrimaryNumber::PrimaryNumber(&v30);
  PBCapabilities::Groups::Groups((&v30.var2.__rep_.__l.__data_ + 4));
  PBCapabilities::AdditionaNumber::AdditionaNumber((&v30.var2.__rep_.__l.__data_ + 6));
  PBCapabilities::Email::Email((&v30.var2.__rep_.__l.__size_ + 1));
  PBCapabilities::SecondName::SecondName((&v30.var2.__rep_.__l.__size_ + 3));
  PBCapabilities::HiddenRecords::HiddenRecords((&v30.var2.__rep_.__l.__size_ + 4));
  *(a1 + 44) = *&v30.var0;
  *(a1 + 57) = *(&v30.var2.__rep_.__l.__data_ + 5);
  sub_1012A5978(*(a1 + 80));
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 72) = a1 + 80;
  sub_100E3F3A4(&v30);
  sub_1012A3DC4(a1 + 96, &v30);
  sub_10006BF90(&v30);
  *(a1 + 528) = 0;
  *(a1 + 1016) = 1;
  if ((a2 & 1) == 0)
  {
    CSIPhoneNumber::CSIPhoneNumber(&v30);
    *(a1 + 536) = *&v30.var0;
    v5 = (a1 + 544);
    if (*(a1 + 567) < 0)
    {
      operator delete(*v5);
    }

    *v5 = *v30.var2.__rep_.__s.__data_;
    *(a1 + 560) = *(&v30.var2.__rep_.__l + 2);
    *(&v30.var2.__rep_.__l + 23) = 0;
    v30.var2.__rep_.__s.__data_[0] = 0;
    v6 = (a1 + 568);
    if (*(a1 + 591) < 0)
    {
      operator delete(*v6);
    }

    *v6 = v31;
    *(a1 + 584) = v32;
    HIBYTE(v32) = 0;
    LOBYTE(v31) = 0;
    *(a1 + 592) = v33;
    *(a1 + 596) = v34;
    v7 = (a1 + 600);
    if (*(a1 + 623) < 0)
    {
      operator delete(*v7);
    }

    *v7 = v35;
    *(a1 + 616) = v36;
    HIBYTE(v36) = 0;
    LOBYTE(v35) = 0;
    *(a1 + 624) = v37;
    *(a1 + 632) = v38;
    v8 = (a1 + 640);
    if (*(a1 + 663) < 0)
    {
      operator delete(*v8);
    }

    *v8 = __p;
    *(a1 + 656) = v40;
    HIBYTE(v40) = 0;
    LOBYTE(__p) = 0;
    v9 = (a1 + 664);
    if (*(a1 + 687) < 0)
    {
      operator delete(*(a1 + 664));
      v10 = SHIBYTE(v40);
      *v9 = v41;
      *(a1 + 680) = v42;
      HIBYTE(v42) = 0;
      LOBYTE(v41) = 0;
      *(a1 + 688) = v43;
      if (v10 < 0)
      {
        operator delete(__p);
      }
    }

    else
    {
      *v9 = v41;
      *(a1 + 680) = v42;
      HIBYTE(v42) = 0;
      LOBYTE(v41) = 0;
      *(a1 + 688) = v43;
    }

    if (SHIBYTE(v36) < 0)
    {
      operator delete(v35);
    }

    if (SHIBYTE(v32) < 0)
    {
      operator delete(v31);
    }

    if (*(&v30.var2.__rep_.__l + 23) < 0)
    {
      operator delete(v30.var2.__rep_.__l.__data_);
    }

    CSIPhoneNumber::CSIPhoneNumber(&v30);
    *(a1 + 696) = *&v30.var0;
    v11 = (a1 + 704);
    if (*(a1 + 727) < 0)
    {
      operator delete(*v11);
    }

    *v11 = *v30.var2.__rep_.__s.__data_;
    *(a1 + 720) = *(&v30.var2.__rep_.__l + 2);
    *(&v30.var2.__rep_.__l + 23) = 0;
    v30.var2.__rep_.__s.__data_[0] = 0;
    v12 = (a1 + 728);
    if (*(a1 + 751) < 0)
    {
      operator delete(*v12);
    }

    *v12 = v31;
    *(a1 + 744) = v32;
    HIBYTE(v32) = 0;
    LOBYTE(v31) = 0;
    *(a1 + 752) = v33;
    *(a1 + 756) = v34;
    v13 = (a1 + 760);
    if (*(a1 + 783) < 0)
    {
      operator delete(*v13);
    }

    *v13 = v35;
    *(a1 + 776) = v36;
    HIBYTE(v36) = 0;
    LOBYTE(v35) = 0;
    *(a1 + 784) = v37;
    *(a1 + 792) = v38;
    v14 = (a1 + 800);
    if (*(a1 + 823) < 0)
    {
      operator delete(*v14);
    }

    *v14 = __p;
    *(a1 + 816) = v40;
    HIBYTE(v40) = 0;
    LOBYTE(__p) = 0;
    v15 = (a1 + 824);
    if (*(a1 + 847) < 0)
    {
      operator delete(*(a1 + 824));
      v16 = SHIBYTE(v40);
      *v15 = v41;
      *(a1 + 840) = v42;
      HIBYTE(v42) = 0;
      LOBYTE(v41) = 0;
      *(a1 + 848) = v43;
      if (v16 < 0)
      {
        operator delete(__p);
      }
    }

    else
    {
      *v15 = v41;
      *(a1 + 840) = v42;
      HIBYTE(v42) = 0;
      LOBYTE(v41) = 0;
      *(a1 + 848) = v43;
    }

    if (SHIBYTE(v36) < 0)
    {
      operator delete(v35);
    }

    if (SHIBYTE(v32) < 0)
    {
      operator delete(v31);
    }

    if (*(&v30.var2.__rep_.__l + 23) < 0)
    {
      operator delete(v30.var2.__rep_.__l.__data_);
    }

    CSIPhoneNumber::CSIPhoneNumber(&v30);
    *(a1 + 856) = *&v30.var0;
    v17 = (a1 + 864);
    if (*(a1 + 887) < 0)
    {
      operator delete(*v17);
    }

    *v17 = *v30.var2.__rep_.__s.__data_;
    *(a1 + 880) = *(&v30.var2.__rep_.__l + 2);
    *(&v30.var2.__rep_.__l + 23) = 0;
    v30.var2.__rep_.__s.__data_[0] = 0;
    v18 = (a1 + 888);
    if (*(a1 + 911) < 0)
    {
      operator delete(*v18);
    }

    *v18 = v31;
    *(a1 + 904) = v32;
    HIBYTE(v32) = 0;
    LOBYTE(v31) = 0;
    *(a1 + 912) = v33;
    *(a1 + 916) = v34;
    v19 = (a1 + 920);
    if (*(a1 + 943) < 0)
    {
      operator delete(*v19);
    }

    *v19 = v35;
    *(a1 + 936) = v36;
    HIBYTE(v36) = 0;
    LOBYTE(v35) = 0;
    *(a1 + 944) = v37;
    *(a1 + 952) = v38;
    v20 = (a1 + 960);
    if (*(a1 + 983) < 0)
    {
      operator delete(*v20);
    }

    *v20 = __p;
    *(a1 + 976) = v40;
    HIBYTE(v40) = 0;
    LOBYTE(__p) = 0;
    v21 = (a1 + 984);
    if (*(a1 + 1007) < 0)
    {
      operator delete(*(a1 + 984));
      v22 = SHIBYTE(v40);
      *v21 = v41;
      *(a1 + 1000) = v42;
      HIBYTE(v42) = 0;
      LOBYTE(v41) = 0;
      *(a1 + 1008) = v43;
      if (v22 < 0)
      {
        operator delete(__p);
      }
    }

    else
    {
      *v21 = v41;
      *(a1 + 1000) = v42;
      HIBYTE(v42) = 0;
      LOBYTE(v41) = 0;
      *(a1 + 1008) = v43;
    }

    if (SHIBYTE(v36) < 0)
    {
      operator delete(v35);
    }

    if (SHIBYTE(v32) < 0)
    {
      operator delete(v31);
    }

    if (*(&v30.var2.__rep_.__l + 23) < 0)
    {
      operator delete(v30.var2.__rep_.__l.__data_);
    }
  }

  CSIPhoneNumber::CSIPhoneNumber(&v30);
  *(a1 + 1024) = *&v30.var0;
  v23 = (a1 + 1032);
  if (*(a1 + 1055) < 0)
  {
    operator delete(*v23);
  }

  *v23 = *v30.var2.__rep_.__s.__data_;
  *(a1 + 1048) = *(&v30.var2.__rep_.__l + 2);
  *(&v30.var2.__rep_.__l + 23) = 0;
  v30.var2.__rep_.__s.__data_[0] = 0;
  v24 = (a1 + 1056);
  if (*(a1 + 1079) < 0)
  {
    operator delete(*v24);
  }

  *v24 = v31;
  *(a1 + 1072) = v32;
  HIBYTE(v32) = 0;
  LOBYTE(v31) = 0;
  *(a1 + 1080) = v33;
  *(a1 + 1084) = v34;
  v25 = (a1 + 1088);
  if (*(a1 + 1111) < 0)
  {
    operator delete(*v25);
  }

  *v25 = v35;
  *(a1 + 1104) = v36;
  HIBYTE(v36) = 0;
  LOBYTE(v35) = 0;
  *(a1 + 1112) = v37;
  *(a1 + 1120) = v38;
  v26 = (a1 + 1128);
  if (*(a1 + 1151) < 0)
  {
    operator delete(*v26);
  }

  *v26 = __p;
  *(a1 + 1144) = v40;
  HIBYTE(v40) = 0;
  LOBYTE(__p) = 0;
  v27 = (a1 + 1152);
  if (*(a1 + 1175) < 0)
  {
    operator delete(*(a1 + 1152));
    v28 = SHIBYTE(v40);
    *v27 = v41;
    *(a1 + 1168) = v42;
    HIBYTE(v42) = 0;
    LOBYTE(v41) = 0;
    *(a1 + 1176) = v43;
    if (v28 < 0)
    {
      operator delete(__p);
    }
  }

  else
  {
    *v27 = v41;
    *(a1 + 1168) = v42;
    HIBYTE(v42) = 0;
    LOBYTE(v41) = 0;
    *(a1 + 1176) = v43;
  }

  if (SHIBYTE(v36) < 0)
  {
    operator delete(v35);
  }

  if (SHIBYTE(v32) < 0)
  {
    operator delete(v31);
  }

  if (*(&v30.var2.__rep_.__l + 23) < 0)
  {
    operator delete(v30.var2.__rep_.__l.__data_);
  }

  sub_100034450(*(a1 + 1192));
  *(a1 + 1184) = a1 + 1192;
  result = 0.0;
  *(a1 + 1192) = 0u;
  return result;
}

void sub_1012A5894(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1012A58D0(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1012A5908(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_1012A5938(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_1012A5978(void *a1)
{
  if (a1)
  {
    sub_1012A5978(*a1);
    sub_1012A5978(a1[1]);
    sub_10006BF90((a1 + 5));

    operator delete(a1);
  }
}

uint64_t sub_1012A59CC(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_10006BF90(v2 + 40);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t sub_1012A5A18(uint64_t a1)
{
  v1 = [off_101FB96A0(a1) sharedInstance];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 getPowerMode] == 1;

    v4 = 1;
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  return v3 | (v4 << 8);
}

void sub_1012A5BA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_100004A34(a14);
  }

  sub_100004A34(v14);
  _Unwind_Resume(a1);
}

uint64_t sub_1012A5BD8(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1012A5BF4(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    sub_100004A34(v1);
  }
}

Class sub_1012A5C04()
{
  if (qword_101FCA8D0 != -1)
  {
    dispatch_once(&qword_101FCA8D0, &stru_101F25AB0);
  }

  result = objc_getClass("_PMLowPowerMode");
  qword_101FCA8C8 = result;
  off_101FB96A0 = sub_1012A5C68;
  return result;
}

void sub_1012A5CA0(uint64_t *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  operator new();
}

void sub_1012A64D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  ctu::OsLogLogger::~OsLogLogger(va);
  sub_1000C0544((v10 + 8));
  ctu::OsLogContext::~OsLogContext(va1);
  JUMPOUT(0x1012A64BCLL);
}

void sub_1012A6500(void *a1, dispatch_object_t object)
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

uint64_t sub_1012A6600(uint64_t a1)
{
  *a1 = off_101F25AE0;
  sub_1002FED80(a1 + 232);
  v11 = (a1 + 200);
  sub_1000B2AF8(&v11);
  v2 = *(a1 + 192);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 176);
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = *(a1 + 160);
  if (v4)
  {
    sub_100004A34(v4);
  }

  v5 = *(a1 + 144);
  if (v5)
  {
    sub_100004A34(v5);
  }

  v6 = *(a1 + 120);
  if (v6)
  {
    sub_100004A34(v6);
  }

  v7 = *(a1 + 104);
  if (v7)
  {
    sub_100004A34(v7);
  }

  v8 = *(a1 + 88);
  if (v8)
  {
    sub_100004A34(v8);
  }

  sub_1000FEFCC((a1 + 56));
  v9 = *(a1 + 48);
  *(a1 + 48) = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  ActivationInterface::~ActivationInterface(a1);
  ctu::OsLogLogger::~OsLogLogger((a1 + 40));
  sub_1000C0544((a1 + 8));
  return a1;
}

void sub_1012A6704(uint64_t a1)
{
  sub_1012A6600(a1);

  operator delete();
}

void sub_1012A673C(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  v4[0] = a2;
  v4[1] = a1;
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_1012ACE00;
  block[3] = &unk_101F25E98;
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

void sub_1012A67C8(uint64_t a1, const void **a2)
{
  v4 = *(a1 + 152);
  sub_100010024(&v8, a2);
  v5 = (*(*v4 + 40))(v4, &v8);
  sub_10001021C(&v8);
  v9 = v5;
  (*(**(a1 + 112) + 384))(*(a1 + 112), v5);
  v7[0] = &v9;
  v7[1] = a1;
  v7[2] = a2;
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_1012ACE90;
  block[3] = &unk_101F25EB8;
  block[4] = a1 + 8;
  block[5] = v7;
  v6 = *(a1 + 24);
  if (*(a1 + 32))
  {
    dispatch_async_and_wait(v6, block);
  }

  else
  {
    dispatch_sync(v6, block);
  }
}

void sub_1012A68EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_10001021C(va);
  _Unwind_Resume(a1);
}

void sub_1012A691C(void *a1)
{
  DevicePersistentSaveValue(kPostponementTicketLock, kCFBooleanFalse);
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

void sub_1012A6A18(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  v4[0] = a2;
  v4[1] = a1;
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_1012AD438;
  block[3] = &unk_101F25ED8;
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

uint64_t sub_1012A6AA4(uint64_t a1)
{
  v4 = a1;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = sub_1012AD4C8;
  v5[3] = &unk_101F25EF8;
  v5[4] = a1 + 8;
  v5[5] = &v4;
  v6 = v5;
  v2 = a1 + 24;
  v1 = *(a1 + 24);
  if (*(v2 + 8))
  {
    v13 = 0;
    block = _NSConcreteStackBlock;
    v8 = 0x40000000;
    v9 = sub_10006A3C8;
    v10 = &unk_101F25F38;
    v11 = &v13;
    v12 = &v6;
    dispatch_async_and_wait(v1, &block);
  }

  else
  {
    v13 = 0;
    block = _NSConcreteStackBlock;
    v8 = 0x40000000;
    v9 = sub_10005946C;
    v10 = &unk_101F25F18;
    v11 = &v13;
    v12 = &v6;
    dispatch_sync(v1, &block);
  }

  return v13 & 1;
}

uint64_t sub_1012A6BD0(uint64_t a1)
{
  v4 = a1;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = sub_1012AD638;
  v5[3] = &unk_101F25F58;
  v5[4] = a1 + 8;
  v5[5] = &v4;
  v6 = v5;
  v2 = a1 + 24;
  v1 = *(a1 + 24);
  if (*(v2 + 8))
  {
    v13 = 0;
    block = _NSConcreteStackBlock;
    v8 = 0x40000000;
    v9 = sub_10006A3C8;
    v10 = &unk_101F25F38;
    v11 = &v13;
    v12 = &v6;
    dispatch_async_and_wait(v1, &block);
  }

  else
  {
    v13 = 0;
    block = _NSConcreteStackBlock;
    v8 = 0x40000000;
    v9 = sub_10005946C;
    v10 = &unk_101F25F18;
    v11 = &v13;
    v12 = &v6;
    dispatch_sync(v1, &block);
  }

  return v13 & 1;
}

uint64_t sub_1012A6CFC(uint64_t a1)
{
  v4 = a1;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = sub_1012AD668;
  v5[3] = &unk_101F25F78;
  v5[4] = a1 + 8;
  v5[5] = &v4;
  v6 = v5;
  v2 = a1 + 24;
  v1 = *(a1 + 24);
  if (*(v2 + 8))
  {
    v13 = 0;
    block = _NSConcreteStackBlock;
    v8 = 0x40000000;
    v9 = sub_10006A3C8;
    v10 = &unk_101F25F38;
    v11 = &v13;
    v12 = &v6;
    dispatch_async_and_wait(v1, &block);
  }

  else
  {
    v13 = 0;
    block = _NSConcreteStackBlock;
    v8 = 0x40000000;
    v9 = sub_10005946C;
    v10 = &unk_101F25F18;
    v11 = &v13;
    v12 = &v6;
    dispatch_sync(v1, &block);
  }

  return v13 & 1;
}

uint64_t sub_1012A6E28(uint64_t a1)
{
  v4 = a1;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = sub_1012AD698;
  v5[3] = &unk_101F25FB8;
  v5[4] = a1 + 8;
  v5[5] = &v4;
  v6 = v5;
  v2 = a1 + 24;
  v1 = *(a1 + 24);
  if (*(v2 + 8))
  {
    v13 = 0;
    block = _NSConcreteStackBlock;
    v8 = 0x40000000;
    v9 = sub_10006A3C8;
    v10 = &unk_101F25F38;
    v11 = &v13;
    v12 = &v6;
    dispatch_async_and_wait(v1, &block);
  }

  else
  {
    v13 = 0;
    block = _NSConcreteStackBlock;
    v8 = 0x40000000;
    v9 = sub_10005946C;
    v10 = &unk_101F25F18;
    v11 = &v13;
    v12 = &v6;
    dispatch_sync(v1, &block);
  }

  return v13 & 1;
}

uint64_t sub_1012A6F54(uint64_t a1)
{
  v4 = a1;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = sub_1012AD6C8;
  v5[3] = &unk_101F25FD8;
  v5[4] = a1 + 8;
  v5[5] = &v4;
  v6 = v5;
  v2 = a1 + 24;
  v1 = *(a1 + 24);
  if (*(v2 + 8))
  {
    v13 = 0;
    block = _NSConcreteStackBlock;
    v8 = 0x40000000;
    v9 = sub_10006A3C8;
    v10 = &unk_101F25F38;
    v11 = &v13;
    v12 = &v6;
    dispatch_async_and_wait(v1, &block);
  }

  else
  {
    v13 = 0;
    block = _NSConcreteStackBlock;
    v8 = 0x40000000;
    v9 = sub_10005946C;
    v10 = &unk_101F25F18;
    v11 = &v13;
    v12 = &v6;
    dispatch_sync(v1, &block);
  }

  return v13 & 1;
}

void sub_1012A7080(void *a1, uint64_t a2)
{
  v4 = a1;
  sub_1000224C8(&v5, a2);
  v3 = a1[2];
  if (v3)
  {
    if (std::__shared_weak_count::lock(v3))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_1012A71B0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

uint64_t sub_1012A71C8(uint64_t a1)
{
  v4 = a1;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = sub_1012AD798;
  v5[3] = &unk_101F25FF8;
  v5[4] = a1 + 8;
  v5[5] = &v4;
  v6 = v5;
  v2 = a1 + 24;
  v1 = *(a1 + 24);
  if (*(v2 + 8))
  {
    v13 = 0;
    block = _NSConcreteStackBlock;
    v8 = 0x40000000;
    v9 = sub_10006A3C8;
    v10 = &unk_101F25F38;
    v11 = &v13;
    v12 = &v6;
    dispatch_async_and_wait(v1, &block);
  }

  else
  {
    v13 = 0;
    block = _NSConcreteStackBlock;
    v8 = 0x40000000;
    v9 = sub_10005946C;
    v10 = &unk_101F25F18;
    v11 = &v13;
    v12 = &v6;
    dispatch_sync(v1, &block);
  }

  return v13 & 1;
}

void sub_1012A72F4(void *a1, char a2, uint64_t a3)
{
  v5 = a1;
  v6 = a2;
  sub_1000224C8(&v7, a3);
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

void sub_1012A7438(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

void sub_1012A7450(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v6 = a1[25];
  if (v6 == a1[26])
  {
    v7 = a1[5];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to get Carrier Information for Post Buddy Ticket Refresh Metric: (no valid sim)", buf, 2u);
    }

    sub_10000501C(&v12, "no_sim");
  }

  else
  {
    memset(__p, 0, 32);
    *v16 = 0u;
    sub_100A34BC8(v16);
    if (SHIBYTE(__p[0]) < 0)
    {
      sub_100005F2C(buf, v16[0], v16[1]);
    }

    else
    {
      *buf = *v16;
      v21 = __p[0];
    }

    if (SHIBYTE(__p[3]) < 0)
    {
      sub_100005F2C(&v22, __p[1], __p[2]);
    }

    else
    {
      v22 = *&__p[1];
      v23 = __p[3];
    }

    if (*(v6 + 143) < 0)
    {
      sub_100005F2C(&v24, *(v6 + 120), *(v6 + 128));
    }

    else
    {
      v24 = *(v6 + 120);
      v25 = *(v6 + 136);
    }

    if (*(v6 + 167) < 0)
    {
      sub_100005F2C(&v26, *(v6 + 144), *(v6 + 152));
    }

    else
    {
      v26 = *(v6 + 144);
      v27[0] = *(v6 + 160);
    }

    v13 = 0;
    v14 = 0;
    v15 = 0;
    sub_10016FB64(&v13, buf, &v27[1], 4uLL);
    for (i = 0; i != -12; i -= 3)
    {
      if (SHIBYTE(v27[i]) < 0)
      {
        operator delete(v27[i - 2]);
      }
    }

    sub_1000D1184(&v12, v13, v14, "/", 1uLL);
    *buf = &v13;
    sub_1000087B4(buf);
    if (SHIBYTE(__p[3]) < 0)
    {
      operator delete(__p[1]);
    }

    if (SHIBYTE(__p[0]) < 0)
    {
      operator delete(v16[0]);
    }
  }

  __p[4] = a1;
  v9 = a1[2];
  if (v9)
  {
    v10 = a1[1];
    v11 = std::__shared_weak_count::lock(v9);
    if (v11)
    {
      __p[5] = v10;
      __p[6] = v11;
      atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v11);
      v18 = v4;
      sub_1000224C8(v19, a3);
      v19[7] = 0;
      operator new();
    }
  }

  sub_100013CC4();
}

uint64_t sub_1012A7878(uint64_t a1)
{
  sub_10000FF50(a1 + 32);
  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_1012A78B0(void *a1, int a2, uint64_t a3)
{
  v5 = a1;
  v6 = a2;
  sub_1000224C8(&v7, a3);
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

void sub_1012A79F4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

void sub_1012A7A0C(void *a1, int a2, uint64_t a3)
{
  v4 = *(a3 + 24);
  if (v4)
  {
    if (v4 == a3)
    {
      v7 = v6;
      (*(*v4 + 24))(v4, v6);
    }

    else
    {
      v7 = (*(*v4 + 16))(v4);
    }
  }

  else
  {
    v7 = 0;
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

void sub_1012A7C04(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1012A7C20(uint64_t a1)
{
  v4 = a1;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = sub_1012AEDEC;
  v5[3] = &unk_101F26188;
  v5[4] = a1 + 8;
  v5[5] = &v4;
  v6 = v5;
  v2 = a1 + 24;
  v1 = *(a1 + 24);
  if (*(v2 + 8))
  {
    v13 = 0;
    block = _NSConcreteStackBlock;
    v8 = 0x40000000;
    v9 = sub_1012AEE60;
    v10 = &unk_101F261C8;
    v11 = &v13;
    v12 = &v6;
    dispatch_async_and_wait(v1, &block);
  }

  else
  {
    v13 = 0;
    block = _NSConcreteStackBlock;
    v8 = 0x40000000;
    v9 = sub_1012AEE24;
    v10 = &unk_101F261A8;
    v11 = &v13;
    v12 = &v6;
    dispatch_sync(v1, &block);
  }

  return v13;
}

void sub_1012A7D48(uint64_t a1)
{
  v1 = *(a1 + 208);
  v2 = *(a1 + 200);
  if (v2 != v1)
  {
    v4 = 1;
LABEL_3:
    v45 = v4;
    do
    {
      v5 = (*(**(a1 + 112) + 192))(*(a1 + 112), *v2);
      if ((subscriber::isSimReady() & 1) != 0 || (v2[2] == HIDWORD(v5) ? (v6 = v2[1] == v5) : (v6 = 0), !v6))
      {
        if (!subscriber::isSimSettled())
        {
          v4 = 0;
          v2 += 42;
          if (v2 != v1)
          {
            goto LABEL_3;
          }

          goto LABEL_25;
        }

        *v47 = 0;
        ActivationSimInfo::ActivationSimInfo(v47);
        if (capabilities::ct::activationSIMInfoHardwareSlotBased(v7))
        {
          *v47 = v2[1];
          v8 = *v2;
        }

        else
        {
          v8 = *v2;
          if (v8 == 2 || v8 == 1)
          {
            *v47 = *v2;
          }
        }

        *&v47[4] = v2[2];
        v9 = *(a1 + 40);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = subscriber::asString();
          v11 = subscriber::asString();
          v12 = subscriber::asString();
          v13 = subscriber::asString();
          v14 = subscriber::asString();
          *buf = 136316162;
          *&buf[4] = v10;
          *&buf[12] = 2080;
          *&buf[14] = v11;
          *&buf[22] = 2080;
          *&buf[24] = v12;
          *&buf[32] = 2080;
          *&buf[34] = v13;
          *&buf[42] = 2080;
          *&buf[44] = v14;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I SIM[%s] changing from %s - %s to %s - %s", buf, 0x34u);
          v8 = *v2;
        }

        (*(**(a1 + 112) + 184))(*(a1 + 112), v8, v47);
      }

      v2 += 42;
    }

    while (v2 != v1);
    if (v45)
    {
      (*(**(a1 + 112) + 192))(*(a1 + 112), 1);
      if (subscriber::isSimReady())
      {
        (*(**(a1 + 112) + 240))(*(a1 + 112), 1);
        sub_1012AA35C(a1);
        return;
      }

      v16 = *(a1 + 200);
      if (*(a1 + 208) == v16)
      {
        sub_1002030E0();
      }

      v58 = 0;
      v56 = 0u;
      __p = 0u;
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      memset(buf, 0, sizeof(buf));
      sub_100032BFC(buf, v16);
      isSimAbsent = subscriber::isSimAbsent();
      isSimUnreadable = subscriber::isSimUnreadable();
      isSimSettled = subscriber::isSimSettled();
      isEmptyEsimCapableCard = BasicSimInfo::isEmptyEsimCapableCard(buf);
      if (isEmptyEsimCapableCard && (capabilities::ct::supportsHydra(isEmptyEsimCapableCard) & 1) == 0)
      {
        v40 = *(a1 + 40);
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          *v47 = 0;
          _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "#I SIM with no active profile", v47, 2u);
        }

        if ((*(**(a1 + 112) + 232))(*(a1 + 112)))
        {
          v41 = *(a1 + 40);
          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
          {
            *v47 = 0;
            _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "#I clearing service provisioning in progress", v47, 2u);
          }

          (*(**(a1 + 112) + 224))(*(a1 + 112), 0);
        }

        (*(**(a1 + 112) + 176))(*(a1 + 112));
      }

      else
      {
        if (isSimSettled)
        {
          (*(**(a1 + 112) + 176))(*(a1 + 112));
          if ((isSimAbsent | isSimUnreadable))
          {
            if (isSimAbsent)
            {
              v21 = *(a1 + 40);
              if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
              {
                *v47 = 0;
                _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I There is no SIM, clearing OTASP attempts", v47, 2u);
              }

              ServiceMap = Registry::getServiceMap(*(a1 + 80));
              v23 = ServiceMap;
              if (v24 < 0)
              {
                v25 = (v24 & 0x7FFFFFFFFFFFFFFFLL);
                v26 = 5381;
                do
                {
                  v24 = v26;
                  v27 = *v25++;
                  v26 = (33 * v26) ^ v27;
                }

                while (v27);
              }

              std::mutex::lock(ServiceMap);
              *v47 = v24;
              v28 = sub_100009510(&v23[1].__m_.__sig, v47);
              if (v28)
              {
                v30 = v28[3];
                v29 = v28[4];
                if (v29)
                {
                  atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
                  std::mutex::unlock(v23);
                  atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
                  sub_100004A34(v29);
                  v31 = 0;
                  goto LABEL_64;
                }
              }

              else
              {
                v30 = 0;
              }

              std::mutex::unlock(v23);
              v29 = 0;
              v31 = 1;
LABEL_64:
              (*(*v30 + 40))(v30);
              if ((v31 & 1) == 0)
              {
                sub_100004A34(v29);
              }

              (*(**(a1 + 112) + 296))(*(a1 + 112), 0);
              (*(**(a1 + 112) + 344))(*(a1 + 112), 0);
              (*(**(a1 + 112) + 224))(*(a1 + 112), 0);
              (*(**(a1 + 112) + 280))(*(a1 + 112), 0);
              if (*(a1 + 132) == 1)
              {
                v42 = *(a1 + 40);
                if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
                {
                  *v47 = 0;
                  _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "#I Ticket was previously rejected, attempting to unbrick", v47, 2u);
                }

                (*(**(a1 + 152) + 24))(*(a1 + 152));
              }
            }

            v43 = *(a1 + 40);
            if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
            {
              *v47 = 0;
              _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "#I The SIM state has gone to a non ready state, and marking SIM event as pending", v47, 2u);
            }

            (*(**(a1 + 112) + 240))(*(a1 + 112), 1);
            sub_1012AA35C(a1);
          }
        }

        else
        {
          v32 = *&buf[16];
          v33 = *&buf[24];
          v50[0] = ",";
          v50[1] = 1;
          memset(&v46, 0, sizeof(v46));
          if (*&buf[16] != *&buf[24])
          {
            v34 = subscriber::asString();
            sub_100016890(&v46, v34);
            for (i = v32 + 4; i != v33; i += 4)
            {
              sub_100074CFC(v50, v47);
              if ((v49 & 0x80u) == 0)
              {
                v36 = v47;
              }

              else
              {
                v36 = *v47;
              }

              if ((v49 & 0x80u) == 0)
              {
                v37 = v49;
              }

              else
              {
                v37 = v48;
              }

              std::string::append(&v46, v36, v37);
              if (v49 < 0)
              {
                operator delete(*v47);
              }

              v38 = subscriber::asString();
              v39 = strlen(v38);
              std::string::append(&v46, v38, v39);
            }

            if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v46.__r_.__value_.__l.__data_);
            }
          }
        }

        if ((((*(**(a1 + 112) + 152))(*(a1 + 112)) != 4) & isSimUnreadable) == 1)
        {
          v44 = *(a1 + 40);
          if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
          {
            *v47 = 0;
            _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "#I Making the BB go online due to unreadable SIM", v47, 2u);
          }

          sub_100083E9C(&event::activation::basebandActivated, 0);
        }
      }

      if (SHIBYTE(v58) < 0)
      {
        operator delete(__p);
      }

      if (SHIBYTE(v56) < 0)
      {
        operator delete(*(&v55 + 1));
      }

      if (SBYTE7(v55) < 0)
      {
        operator delete(v54);
      }

      if (SHIBYTE(v53) < 0)
      {
        operator delete(*(&v52 + 1));
      }

      *v47 = &buf[40];
      sub_100034D1C(v47);
      if (*&buf[16])
      {
        *&buf[24] = *&buf[16];
        operator delete(*&buf[16]);
      }

      return;
    }

LABEL_25:
    v15 = *(a1 + 40);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I SIM states haven't settled yet, waiting until they have", buf, 2u);
    }
  }
}

void sub_1012A8644(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  if ((v29 & 1) == 0)
  {
    sub_100004A34(v30);
  }

  sub_100D1F238(&a29);
  _Unwind_Resume(a1);
}

void sub_1012A86C8(uint64_t a1, void **a2)
{
  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v5 = a2;
    }

    else
    {
      v5 = *a2;
    }

    v6 = CSIBOOLAsString(*(a2 + 24));
    *buf = 136315394;
    *&buf[4] = v5;
    *&buf[12] = 2080;
    *&buf[14] = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Received request to reset BB (%s) want logs (%s)", buf, 0x16u);
  }

  (*(**(a1 + 112) + 216))(*(a1 + 112));
  dispatch_get_global_queue(0, 0);
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(buf, *a2, a2[1]);
  }

  else
  {
    *buf = *a2;
    *&buf[16] = a2[2];
  }

  v8 = *(a2 + 24);
  operator new();
}

void sub_1012A8888(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1012A8894(uint64_t a1, char a2)
{
  (*(**(a1 + 112) + 320))(*(a1 + 112));
  if ((a2 & 1) == 0)
  {
    v4 = *(a1 + 40);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I All OTA activation assertions have been removed, kicking the state machine", v6, 2u);
    }

    (*(**(a1 + 112) + 240))(*(a1 + 112), 1);
    v5 = (*(**(a1 + 112) + 128))(*(a1 + 112));
    sub_1012A93EC(a1, v5);
  }
}

uint64_t sub_1012A8990(uint64_t result, int a2)
{
  v2 = result;
  if (a2 == 2)
  {
    v6 = *(result + 40);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Service provisioning has failed", v9, 2u);
    }

    (*(**(v2 + 112) + 224))(*(v2 + 112), 0);
    result = (*(**(v2 + 112) + 248))(*(v2 + 112));
    if (result)
    {
      v7 = *(v2 + 40);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v8 = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I There is a pending SIM event to process, querying BB for activation status", v8, 2u);
      }

      return (*(**(v2 + 96) + 40))(*(v2 + 96));
    }
  }

  else
  {
    if (a2 == 1)
    {
      v5 = *(result + 40);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Service provisioning has ended", v10, 2u);
      }

      v4 = *(**(v2 + 112) + 224);
    }

    else
    {
      if (a2)
      {
        return result;
      }

      v3 = *(result + 40);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Service provisioning has started", buf, 2u);
      }

      v4 = *(**(v2 + 112) + 224);
    }

    return v4();
  }

  return result;
}

void sub_1012A8B8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v4 = a2;
  v6 = *(a1 + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = asString();
    *&buf[12] = 2080;
    *&buf[14] = asString();
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Postponement status changing from %s to %s", buf, 0x16u);
  }

  if (v4 != 2 && v3 == 2)
  {
    *(a1 + 132) = 0;
    *buf = 0;
    DevicePersistentCopyValue(kPostponementTicketPlist, 0);
    sub_100010180(buf, v21);
    sub_10000A1EC(v21);
    if (*buf)
    {
      v20 = *buf;
      CFRetain(*buf);
      sub_1012AA48C(a1, &v20);
      sub_10001021C(&v20);
LABEL_32:
      sub_10001021C(buf);
      return;
    }

    if ((*(**(a1 + 112) + 376))(*(a1 + 112)))
    {
      v8 = (*(**(a1 + 112) + 88))(*(a1 + 112));
      if (*v8 != v8[1])
      {
        v9 = *(a1 + 96);
        v10 = (*(**(a1 + 112) + 88))(*(a1 + 112));
        (*(*v9 + 48))(v9, v10);
        ++*(a1 + 128);
        goto LABEL_32;
      }

      v19 = *(a1 + 40);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v21[0]) = 0;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#N No prepared ticket found", v21, 2u);
      }

      v16 = *(a1 + 152);
      v15 = (*(**(a1 + 112) + 376))(*(a1 + 112));
      v17 = (*v16 + 16);
    }

    else
    {
      v14 = *(a1 + 40);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v21[0]) = 0;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I No stored ticket found", v21, 2u);
      }

      v15 = (*(**(a1 + 112) + 264))(*(a1 + 112));
      v16 = *(a1 + 152);
      v17 = (*v16 + 32);
    }

    (*v17)(v16, v15);
    goto LABEL_32;
  }

  if (v3 == 3)
  {
    if ((*(**(a1 + 112) + 416))(*(a1 + 112)) == 2)
    {
      if (*(a1 + 132) != 1)
      {
        *(a1 + 132) = 1;
        v18 = *(a1 + 40);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I Request to update baseband ticket", buf, 2u);
        }

        *buf = off_101F26810;
        *&buf[8] = a1;
        v23 = buf;
        sub_1012A7450(a1, 0, buf);
      }

      v7 = *(a1 + 40);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I Ticket was previously rejected, wait for next sim activation", buf, 2u);
      }
    }

    else
    {
      *(a1 + 132) = 1;
      v11 = *(a1 + 40);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I Ticket was rejected, requesting reactivation", buf, 2u);
      }

      v12 = *(a1 + 152);
      v13 = (*(**(a1 + 112) + 376))(*(a1 + 112));
      (*(*v12 + 16))(v12, v13);
    }
  }

  else
  {
    if (v4 == 3)
    {
      *(a1 + 132) = 0;
    }

    if (v3 == 4)
    {
      (*(**(a1 + 152) + 24))(*(a1 + 152));
    }
  }
}

void sub_1012A90F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_10000FF50(va);
  _Unwind_Resume(a1);
}

void sub_1012A9150(uint64_t a1)
{
  (*(**(a1 + 112) + 96))(*(a1 + 112));
  (*(**(a1 + 152) + 48))(*(a1 + 152));
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = CSIBOOLAsString(*(a1 + 132));
    v4 = 136315138;
    v5 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I fTicketPreviouslyRejected = %s", &v4, 0xCu);
  }
}

void sub_1012A9244(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 224);
  v5 = *(a1 + 40);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4 == v2)
  {
    if (v6)
    {
      v8 = 136315138;
      v9 = subscriber::asString();
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Preferred data slot remains at %s", &v8, 0xCu);
    }
  }

  else
  {
    if (v6)
    {
      v8 = 136315394;
      v9 = subscriber::asString();
      v10 = 2080;
      v11 = subscriber::asString();
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Preferred data slot changed from %s to %s", &v8, 0x16u);
      v4 = *(a1 + 224);
    }

    if (v4)
    {
      (*(**(a1 + 112) + 240))(*(a1 + 112), 1);
      (*(**(a1 + 96) + 40))(*(a1 + 96));
      v7 = (*(**(a1 + 112) + 128))(*(a1 + 112));
      sub_1012A93EC(a1, v7);
    }
  }
}

void sub_1012A93EC(uint64_t a1, unsigned int *a2)
{
  v3 = *a2;
  if (v3 > 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = dword_101942B78[v3];
  }

  v5 = (*(**(a1 + 112) + 152))(*(a1 + 112));
  v6 = *((*(**(a1 + 112) + 128))(*(a1 + 112)) + 4);
  v7 = a2[1];
  v8 = *((*(**(a1 + 112) + 128))(*(a1 + 112)) + 8);
  v9 = *(a2 + 8);
  v10 = *((*(**(a1 + 112) + 128))(*(a1 + 112)) + 9);
  v11 = *(a2 + 9);
  (*(**(a1 + 112) + 120))(*(a1 + 112), a2);
  v12 = *(a1 + 40);
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  v15 = v5 == v4 && v6 == v7 && v8 == v9;
  v73 = v11;
  if (v15 && v10 == v11)
  {
    if (v13)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I State has not changed, but we have pending SIM event to process", buf, 2u);
    }
  }

  else
  {
    v17 = v9;
    if (v13)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I State has not changed but we support async activation, process it", buf, 2u);
    }

    if (capabilities::ct::getCardProvisioningStatusVersion(v13) != 1)
    {
      subscriber::makeSimSlotRange();
      v19 = *buf;
      v18 = *&buf[8];
      if (*buf != *&buf[8])
      {
        v20 = v80;
        do
        {
          if (v20(*v19))
          {
            break;
          }

          ++v19;
        }

        while (v19 != v18);
        v21 = *&buf[8];
        if (v19 != *&buf[8])
        {
          v75 = v10;
          v74 = v8;
          v72 = v9;
          while (1)
          {
            v22 = *v19;
            v23 = v22 != 2 || v75 == v73;
            v24 = v23;
            v25 = v74 != v17 && v22 == 1;
            if (v25 || !v24)
            {
              break;
            }

            v29 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *v19);
            if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
            {
              *v81 = 0;
              _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "Not handling service provisioned change", v81, 2u);
            }

            do
            {
LABEL_63:
              ++v19;
            }

            while (v19 != v18 && (v20(*v19) & 1) == 0);
            if (v19 == v21)
            {
              goto LABEL_69;
            }
          }

          v27 = v73;
          if (v22 == 1)
          {
            v27 = v17;
          }

          v28 = v27 - 1;
          if (v28 > 2u)
          {
            v76 = 0;
          }

          else
          {
            v76 = dword_101942B84[v28];
          }

          v31 = (*(**(a1 + 48) + 16))(*(a1 + 48), v22);
          v32 = *v31;
          v33 = os_log_type_enabled(*v31, OS_LOG_TYPE_DEFAULT);
          if (v33)
          {
            v34 = subscriber::asString();
            *v81 = 136315138;
            *&v81[4] = v34;
            _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "#I Received card provisioning status: %s", v81, 0xCu);
          }

          if (capabilities::ct::getCardProvisioningStatusVersion(v33) == 1)
          {
            (*(**(a1 + 112) + 344))(*(a1 + 112), v76);
          }

          v35 = (*(**(a1 + 112) + 208))(*(a1 + 112));
          v36 = *v31;
          v37 = os_log_type_enabled(*v31, OS_LOG_TYPE_DEFAULT);
          if (!v35)
          {
            if (v37)
            {
              *v81 = 0;
              _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "#I Baseband is not activated, delaying the card provisioned state notification", v81, 2u);
            }

            goto LABEL_63;
          }

          if (v37)
          {
            *v81 = 0;
            _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "#I Baseband is activated, notifying the card provisioned state now", v81, 2u);
          }

          ServiceMap = Registry::getServiceMap(*(a1 + 80));
          v39 = ServiceMap;
          if (v40 < 0)
          {
            v41 = (v40 & 0x7FFFFFFFFFFFFFFFLL);
            v42 = 5381;
            do
            {
              v40 = v42;
              v43 = *v41++;
              v42 = (33 * v42) ^ v43;
            }

            while (v43);
          }

          std::mutex::lock(ServiceMap);
          *v81 = v40;
          v44 = sub_100009510(&v39[1].__m_.__sig, v81);
          if (v44)
          {
            v45 = v44[3];
            v46 = v44[4];
            if (v46)
            {
              atomic_fetch_add_explicit(&v46->__shared_owners_, 1uLL, memory_order_relaxed);
              std::mutex::unlock(v39);
              atomic_fetch_add_explicit(&v46->__shared_owners_, 1uLL, memory_order_relaxed);
              v17 = v72;
              sub_100004A34(v46);
              v47 = 0;
              goto LABEL_61;
            }
          }

          else
          {
            v45 = 0;
          }

          std::mutex::unlock(v39);
          v46 = 0;
          v47 = 1;
LABEL_61:
          (*(*v45 + 16))(v45, v22, v76);
          if ((v47 & 1) == 0)
          {
            sub_100004A34(v46);
          }

          goto LABEL_63;
        }
      }
    }
  }

LABEL_69:
  (*(**(a1 + 112) + 240))(*(a1 + 112), 0);
  memset(buf, 0, sizeof(buf));
  v80 = 0;
  if (!*a2)
  {
    (*(**(a1 + 112) + 144))(*(a1 + 112), 4);
    if ((a2[1] | 2) != 2)
    {
      v70 = *(a1 + 40);
      if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
      {
        *v81 = 0;
        _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEFAULT, "#N Baseband activation result is unexpected!", v81, 2u);
      }
    }

    if ((*(**(a1 + 112) + 328))(*(a1 + 112)))
    {
      v54 = *(a1 + 40);
      if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
      {
        *v81 = 0;
        _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "#I Baseband is activated, but we still have active OTA assertions. Dropping activated state", v81, 2u);
      }

      goto LABEL_84;
    }

    if (*((*(**(a1 + 112) + 128))(*(a1 + 112)) + 456) != 1)
    {
      v71 = *(a1 + 40);
      if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
      {
        *v81 = 0;
        _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_DEFAULT, "#I BB activated, but there is no SIM, making the BB go online", v81, 2u);
      }

      sub_100083E9C(&event::activation::basebandActivated, 1);
      goto LABEL_85;
    }

    v55 = *(a1 + 136);
    (*(**(a1 + 112) + 48))(&v78);
    (*(*v55 + 48))(v55, 2, &v78);
    sub_10001021C(&v78);
    v56 = (*(**(a1 + 112) + 336))(*(a1 + 112));
    if (capabilities::ct::getCardProvisioningStatusVersion(v56) != 1 || !v56)
    {
      goto LABEL_85;
    }

    v57 = *(a1 + 40);
    if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
    {
      v58 = subscriber::asString();
      *v81 = 136315138;
      *&v81[4] = v58;
      _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "#I Baseband has moved to activated state, notifying card provisioned state: %s", v81, 0xCu);
    }

    v59 = Registry::getServiceMap(*(a1 + 80));
    v60 = v59;
    if (v61 < 0)
    {
      v62 = (v61 & 0x7FFFFFFFFFFFFFFFLL);
      v63 = 5381;
      do
      {
        v61 = v63;
        v64 = *v62++;
        v63 = (33 * v63) ^ v64;
      }

      while (v64);
    }

    std::mutex::lock(v59);
    *v81 = v61;
    v65 = sub_100009510(&v60[1].__m_.__sig, v81);
    if (v65)
    {
      v67 = v65[3];
      v66 = v65[4];
      if (v66)
      {
        atomic_fetch_add_explicit(&v66->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v60);
        atomic_fetch_add_explicit(&v66->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v66);
        v68 = 0;
        goto LABEL_117;
      }
    }

    else
    {
      v67 = 0;
    }

    std::mutex::unlock(v60);
    v66 = 0;
    v68 = 1;
LABEL_117:
    (*(*v67 + 16))(v67, 1, v56);
    if ((v68 & 1) == 0)
    {
      sub_100004A34(v66);
    }

    goto LABEL_85;
  }

  if (*a2 != 1)
  {
    (*(**(a1 + 112) + 144))(*(a1 + 112), 5);
    (*(**(a1 + 112) + 168))(*(a1 + 112), 1);
LABEL_84:
    sub_1012AA21C();
    goto LABEL_85;
  }

  v48 = a2[1];
  if (v48 == 1)
  {
    (*(**(a1 + 112) + 144))(*(a1 + 112), 3);
    sub_1012AA0B8(a1);
    if (*(a2 + 456) == 1)
    {
      if (*(a2 + 525) == 1 && (a2[131] & 1) == 0)
      {
        sub_1012AA2A4(v81, a2 + 104, v69);
      }

      else
      {
        if (*(a2 + 527) != 1 || (*(a2 + 526) & 1) != 0)
        {
          goto LABEL_85;
        }

        sub_1012AA2A4(v81, a2 + 280, v69);
      }

      *buf = *v81;
      v80 = v82;
    }
  }

  else
  {
    if (v48 != 2)
    {
      goto LABEL_85;
    }

    v49 = (*(**(a1 + 112) + 128))(*(a1 + 112));
    if ((*(v49 + 88) & 1) == 0 && *(v49 + 456) != 1)
    {
      (*(**(a1 + 112) + 144))(*(a1 + 112), 5);
      v53 = (**(a1 + 112) + 168);
LABEL_114:
      (*v53)();
      sub_1012AA21C();
      goto LABEL_85;
    }

    v50 = (*(**(a1 + 112) + 352))(*(a1 + 112));
    v51 = *(a1 + 40);
    v52 = os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT);
    if (v50)
    {
      if (v52)
      {
        *v81 = 0;
        _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "#I Ticket is present", v81, 2u);
      }

      v53 = (**(a1 + 112) + 144);
      goto LABEL_114;
    }

    if (v52)
    {
      *v81 = 0;
      _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "#I Ticket is not present", v81, 2u);
    }

    sub_1012AA0B8(a1);
  }

LABEL_85:
  (*(**(a1 + 112) + 136))(*(a1 + 112), buf);
  if (SHIBYTE(v80) < 0)
  {
    operator delete(*buf);
  }
}

void sub_1012AA030(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_1012AA0B8(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I sending kDefaultCarrierActivationInfoAvailable", buf, 2u);
  }

  v3 = *(a1 + 136);
  (*(**(a1 + 112) + 48))(&v5);
  (*(*v3 + 48))(v3, 1, &v5);
  return sub_10001021C(&v5);
}

void sub_1012AA184(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10001021C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1012AA198(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 96);
  v3 = (*(**(v1 + 112) + 88))(*(v1 + 112));
  v4 = *(*v2 + 48);

  return v4(v2, v3);
}

void sub_1012AA21C()
{
  v1 = xpc_null_create();
  object = xpc_null_create();
  sub_10002A37C(95, &v1, &object);
  xpc_release(object);
  xpc_release(v1);
}

void sub_1012AA278(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, xpc_object_t a10)
{
  xpc_release(object);
  xpc_release(a10);
  _Unwind_Resume(a1);
}

uint64_t *sub_1012AA2A4(uint64_t *result, _BYTE *a2, unint64_t a3)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2[168] == 1 && a2[19] == 1)
  {
    v3 = result;
    result = ctu::hex((a2 + 9), 0xA, a3);
    *v3 = v8;
    v3[2] = v9;
    v4 = *(v3 + 23);
    if (v4 < 0)
    {
      v7 = *v3;
      v6 = v3[1];
      if (*(*v3 + v6 - 1) != 102)
      {
        return result;
      }

      v5 = v6 - 1;
      v3[1] = v5;
      v3 = v7;
    }

    else
    {
      if (*(v3 + v4 - 1) != 102)
      {
        return result;
      }

      v5 = v4 - 1;
      *(v3 + 23) = v5 & 0x7F;
    }

    *(v3 + v5) = 0;
  }

  return result;
}

void sub_1012AA35C(uint64_t a1)
{
  v2 = (*(**(a1 + 112) + 256))(*(a1 + 112));
  v3 = *(a1 + 40);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Reached steady state, querying activation status from BB", buf, 2u);
    }

    (*(**(a1 + 96) + 40))(*(a1 + 96));
    v5 = (*(**(a1 + 112) + 128))(*(a1 + 112));
    sub_1012A93EC(a1, v5);
  }

  else if (v4)
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I We don't have steady state, ignoring SIM event for now", v6, 2u);
  }
}

const void **sub_1012AA48C(uint64_t a1, const void **a2)
{
  v20 = 0;
  DevicePersistentCopyValue(kPostponementTicketLock, kCFBooleanFalse);
  sub_10002FE1C(&v20, buf);
  sub_10000A1EC(buf);
  if (v20 == kCFBooleanTrue)
  {
    v8 = *(a1 + 40);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      return sub_100045C8C(&v20);
    }

    LOWORD(buf[0]) = 0;
    v9 = "#I Aborting ticket push because ticket lock is enabled";
LABEL_12:
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v9, buf, 2u);
    return sub_100045C8C(&v20);
  }

  if (((*(**(a1 + 112) + 264))(*(a1 + 112)) & 1) == 0)
  {
    v8 = *(a1 + 40);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      return sub_100045C8C(&v20);
    }

    LOWORD(buf[0]) = 0;
    v9 = "#I Aborting ticket push because BB activation not enabled";
    goto LABEL_12;
  }

  v4 = *(a1 + 112);
  sub_100010024(&v18, a2);
  LOBYTE(v4) = (*(*v4 + 80))(v4, &v18);
  sub_10001021C(&v18);
  v5 = *(a1 + 40);
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Issuing stored ticket", buf, 2u);
    }

    v6 = *(a1 + 96);
    v7 = (*(**(a1 + 112) + 88))(*(a1 + 112));
    if ((*(*v6 + 48))(v6, v7))
    {
      ++*(a1 + 128);
    }

    else
    {
      v12 = *(a1 + 40);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Failed to issue a ticket", buf, 2u);
      }

      v13 = *(a1 + 152);
      v14 = (*(**(a1 + 112) + 376))(*(a1 + 112));
      (*(*v13 + 16))(v13, v14);
    }

    v15 = *(a1 + 168);
    if (!v15)
    {
      v8 = *(a1 + 40);
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        return sub_100045C8C(&v20);
      }

      LOWORD(buf[0]) = 0;
      v9 = "#I No Activation push controller";
      goto LABEL_12;
    }

    if (!(*(*v15 + 48))(v15))
    {
      v16 = *(a1 + 168);
      v21[0] = off_101F26890;
      v21[1] = a1;
      v21[3] = v21;
      (*(*v16 + 40))(v16, v21);
      sub_10002B644(v21);
      (*(**(a1 + 168) + 32))(*(a1 + 168));
      return sub_100045C8C(&v20);
    }

    v8 = *(a1 + 40);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      v9 = "#I Activation Push token is registered";
      goto LABEL_12;
    }
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf[0]) = 0;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Failed to prepare ticket", buf, 2u);
    }

    v10 = *(a1 + 152);
    v11 = (*(**(a1 + 112) + 376))(*(a1 + 112));
    (*(*v10 + 16))(v10, v11);
  }

  return sub_100045C8C(&v20);
}

void sub_1012AA918(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, const void *);
  sub_10002B644(va1);
  sub_100045C8C(va);
  _Unwind_Resume(a1);
}

void sub_1012AA968(void *a1, char a2)
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

void sub_1012AAA5C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1012AAAB0(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1012AAAF0(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_1012AAB1C(ServiceManager::Service *this)
{
  *this = off_101F25CE8;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);
}

void sub_1012AAB78(ServiceManager::Service *this)
{
  *this = off_101F25CE8;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);

  operator delete();
}

uint64_t *sub_1012AABF8@<X0>(uint64_t *a1@<X8>)
{
  v2 = 3;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  return sub_1000FF040(a1, &v2, &vars0, 1);
}

void sub_1012AAC3C(uint64_t a1, dispatch_object_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v3);
    sub_1012A6500(v2, v3);
  }

  v4 = *(a1 + 8);

  sub_1012A6500(v4, 0);
}

void sub_1012AACDC(uint64_t a1)
{
  v1 = *(*(a1 + 8) + 16);
  if (v1)
  {
    if (std::__shared_weak_count::lock(v1))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_1012AADBC(uint64_t a1, int a2, ServiceStage *this)
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

uint64_t *sub_1012AAEF4(void **a1)
{
  v1 = *a1;
  v16 = a1;
  v17 = v1;
  v2 = *v1;
  v3 = *(*v1 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Shutting down", buf, 2u);
  }

  v4 = *(v2 + 112);
  v5 = v1[1];
  *buf = v5;
  if (v5)
  {
    dispatch_retain(v5);
    if (*buf)
    {
      dispatch_group_enter(*buf);
    }
  }

  (*(*v4 + 32))(v4, buf);
  if (*buf)
  {
    dispatch_group_leave(*buf);
    if (*buf)
    {
      dispatch_release(*buf);
    }
  }

  v6 = *(v2 + 136);
  v7 = v1[1];
  group = v7;
  if (v7)
  {
    dispatch_retain(v7);
    dispatch_group_enter(group);
  }

  (*(*v6 + 32))(v6, &group);
  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

  v8 = *(v2 + 96);
  v9 = v1[1];
  object = v9;
  if (v9)
  {
    dispatch_retain(v9);
    dispatch_group_enter(object);
  }

  (*(*v8 + 32))(v8, &object);
  if (object)
  {
    dispatch_group_leave(object);
    if (object)
    {
      dispatch_release(object);
    }
  }

  v10 = *(v2 + 152);
  v11 = v1[1];
  v19 = v11;
  if (v11)
  {
    dispatch_retain(v11);
    dispatch_group_enter(v11);
  }

  (*(*v10 + 72))(v10, &v19);
  if (v19)
  {
    dispatch_group_leave(v19);
    if (v19)
    {
      dispatch_release(v19);
    }
  }

  v12 = *(v2 + 168);
  if (v12)
  {
    v13 = v1[1];
    v18 = v13;
    if (v13)
    {
      dispatch_retain(v13);
      dispatch_group_enter(v13);
    }

    (*(*v12 + 24))(v12, &v18);
    if (v18)
    {
      dispatch_group_leave(v18);
      if (v18)
      {
        dispatch_release(v18);
      }
    }
  }

  for (i = *(v2 + 64); i != v2 + 56; i = *(i + 8))
  {
    sub_1001039A0((i + 16));
  }

  sub_1000FEFCC((v2 + 56));
  ctu::RestModule::disconnect((v2 + 184));
  sub_1000FF844(&v17);
  return sub_1000049E0(&v16);
}

void sub_1012AB1A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, dispatch_group_t group, dispatch_group_t a12, dispatch_group_t a13, dispatch_group_t a14, dispatch_group_t a15)
{
  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

  sub_1000FF844(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

void sub_1012AB250(void *a1)
{
  v1 = *a1;
  v2 = a1;
  v3 = v1;
  sub_10000501C(&__p, "/cc/props/sims_in_use");
  operator new();
}

void sub_1012AC088(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_group_t *a10, __int16 a11, char a12, char a13, uint64_t a14, char a15, uint64_t a16, char a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, dispatch_group_t group, uint64_t a24, dispatch_group_t object, uint64_t a26, dispatch_group_t a27, uint64_t a28, dispatch_group_t a29, uint64_t a30, dispatch_group_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *__p, std::__shared_weak_count *a37, int a38, __int16 a39, char a40, char a41)
{
  sub_1000062D4(v41 - 176);
  if (a41 < 0)
  {
    operator delete(__p);
  }

  sub_100714410(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

void sub_1012AC41C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F25DA8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1012AC498(ActivationCommandDriverDelegateInterface *this)
{
  *this = off_101F25E68;
  v2 = *(this + 2);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  ActivationCommandDriverDelegateInterface::~ActivationCommandDriverDelegateInterface(this);
}

void sub_1012AC4F4(ActivationCommandDriverDelegateInterface *this)
{
  *this = off_101F25E68;
  v2 = *(this + 2);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  ActivationCommandDriverDelegateInterface::~ActivationCommandDriverDelegateInterface(this);

  operator delete();
}

void sub_1012AC564(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = *(a1 + 8);
      if (v7)
      {
        v8 = *(v7 + 40);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v9 = "not ";
          if (a2)
          {
            v9 = "";
          }

          v12 = 136315138;
          v13 = v9;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Command driver is %sready", &v12, 0xCu);
        }

        (*(**(v7 + 112) + 104))(*(v7 + 112), a2);
        if (a2)
        {
          if ((*(**(v7 + 112) + 248))(*(v7 + 112)))
          {
            v10 = *(v7 + 40);
            if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(v12) = 0;
              _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I The command driver is ready and we have a pending SIM event, querying the activation status", &v12, 2u);
            }

            (*(**(v7 + 96) + 40))(*(v7 + 96));
          }
        }

        else
        {
          v11 = *(v7 + 40);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v12) = 0;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I The command driver is not ready, clearing state", &v12, 2u);
          }

          (*(**(v7 + 112) + 144))(*(v7 + 112), 0);
          *(v7 + 128) = 0;
        }
      }

      sub_100004A34(v6);
    }
  }
}

void sub_1012AC7C4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = *(a1 + 8);
      if (v7 && a2 == 1)
      {
        if (HIDWORD(a2) == 4)
        {
          *(v7 + 128) = 0;
          v15 = *(v7 + 40);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(block[0]) = 0;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#N Command driver response was cancelled", block, 2u);
          }
        }

        else if (HIDWORD(a2) == 2)
        {
          *(v7 + 128) = 0;
          v14 = *(v7 + 40);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            LOWORD(block[0]) = 0;
            _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Missing activation/provisioning status", block, 2u);
          }
        }

        else if (HIDWORD(a2) == 1 && *(v7 + 128) == 1)
        {
          v16[0] = _NSConcreteStackBlock;
          v16[1] = 0x40000000;
          v16[2] = sub_1012AA198;
          v16[3] = &unk_101F25B90;
          v16[4] = v7;
          v8 = *(v7 + 16);
          if (!v8 || (v9 = *(v7 + 8), (v10 = std::__shared_weak_count::lock(v8)) == 0))
          {
            sub_100013CC4();
          }

          v11 = v10;
          v12 = *(v7 + 24);
          block[0] = _NSConcreteStackBlock;
          block[1] = 1174405120;
          block[2] = sub_1012B1378;
          block[3] = &unk_101F26750;
          block[5] = v9;
          v18 = v11;
          atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
          block[4] = v16;
          dispatch_async(v12, block);
          if (v18)
          {
            sub_100004A34(v18);
          }

          sub_100004A34(v11);
        }

        else
        {
          *(v7 + 128) = 0;
          (*(**(v7 + 112) + 144))(*(v7 + 112), 3);
          v13 = *(v7 + 40);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(block[0]) = 0;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#N Ticket rejected. Going to setup kDefaultCarrierActivationInfoAvailable", block, 2u);
          }

          sub_1012AA0B8(v7);
        }
      }

      sub_100004A34(v6);
    }
  }
}

void sub_1012ACA68(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = *(a1 + 8);
      if (v7)
      {
        (*(**(v7 + 112) + 112))(*(v7 + 112), a2);
      }

      sub_100004A34(v6);
    }
  }
}

void sub_1012ACB14(uint64_t a1, unsigned int *a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = *(a1 + 8);
      if (v7)
      {
        sub_1012A93EC(v7, a2);
      }

      sub_100004A34(v6);
    }
  }
}

void sub_1012ACB9C(ActivationCommandDriverDelegateInterface *this)
{
  *this = off_101F25E68;
  v2 = *(this + 2);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  ActivationCommandDriverDelegateInterface::~ActivationCommandDriverDelegateInterface(this);
}

void sub_1012ACBF8(ActivationCommandDriverDelegateInterface *this)
{
  *this = off_101F25E68;
  v2 = *(this + 2);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  ActivationCommandDriverDelegateInterface::~ActivationCommandDriverDelegateInterface(this);

  operator delete();
}

void sub_1012ACC68(uint64_t **a1)
{
  v1 = **a1;
  v2 = *(v1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Starting", &buf, 2u);
  }

  Registry::createRestModuleOneTimeUseConnection(&buf, *(v1 + 80));
  ctu::RestModule::connect();
  if (v4)
  {
    sub_100004A34(v4);
  }

  (*(**(v1 + 96) + 24))(*(v1 + 96));
  (*(**(v1 + 152) + 64))(*(v1 + 152));
  (*(**(v1 + 112) + 24))(*(v1 + 112));
  (*(**(v1 + 136) + 24))(*(v1 + 136));
  operator delete();
}

void sub_1012ACDC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  operator delete();
}

const void **sub_1012ACE00(uint64_t a1)
{
  v1 = *(a1 + 40);
  (*(**(*(v1 + 8) + 112) + 40))(&v5);
  v2 = *v1;
  if (*v1 != &v5)
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

void sub_1012ACE90(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = v1[1];
  v3 = **v1;
  v4 = *(v2 + 40);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I FactoryActivation enabled, preparing ticket in memory but not writing to disk", buf, 2u);
    }

    v6 = *(v2 + 112);
    sub_100010024(&v16, v1[2]);
    v7 = (*(*v6 + 80))(v6, &v16);
    sub_10001021C(&v16);
    v8 = *(v2 + 40);
    if (v7)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I prepared ticket successfully, will issue when BB is ready", buf, 2u);
      }
    }

    else
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Failed to prepare the ticket", buf, 2u);
      }

      (*(**(v2 + 152) + 16))(*(v2 + 152), **v1);
    }
  }

  else
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Client is setting postponement ticket", buf, 2u);
    }

    DevicePersistentSaveValue(kPostponementTicketPlist, *v1[2]);
    DevicePersistentSaveValue(kPostponementTicketObliterated, 0);
    _CFPreferencesFlushCachesForIdentifier();
  }

  if ((*(**(v2 + 112) + 152))(*(v2 + 112)) == 2)
  {
    goto LABEL_17;
  }

  if ((*(**(v2 + 112) + 152))(*(v2 + 112)) == 3)
  {
    v9 = *(v2 + 40);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I let's try sending the ticket again", buf, 2u);
    }

LABEL_17:
    sub_100010024(buf, v1[2]);
    sub_1012AA48C(v2, buf);
    sub_10001021C(buf);
    goto LABEL_18;
  }

  if (*(v2 + 133) == 1)
  {
    if ((*(v2 + 264) & 1) == 0)
    {
      *(v2 + 264) = 1;
      v10 = *(v2 + 256);
      if (v10)
      {
        (*(*v10 + 48))(v10, v2 + 264);
      }
    }

    v11 = *(v2 + 40);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I Resetting baseband to update new ticket", buf, 2u);
    }

    sub_10000501C(&__p, "Activation Ticket Updated");
    rest::ResetPayload::ResetPayload();
    sub_100108D68(v2 + 184, buf);
    if (v15 < 0)
    {
      operator delete(*buf);
    }

    if (v13 < 0)
    {
      operator delete(__p);
    }
  }

LABEL_18:
  *(v2 + 133) = 0;
}

void sub_1012AD228(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1012AD27C(uint64_t **a1)
{
  v5 = a1;
  v1 = **a1;
  if ((*(**(v1 + 112) + 152))(*(v1 + 112)) != 2)
  {
LABEL_12:
    operator delete();
  }

  cf = 0;
  DevicePersistentCopyValue(kPostponementTicketPlist, 0);
  sub_100010180(&cf, buf);
  sub_10000A1EC(buf);
  v2 = cf;
  v3 = *(v1 + 40);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (!v2)
  {
    if (v4)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I No cached ticket found after unlock", buf, 2u);
    }

    goto LABEL_11;
  }

  if (v4)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Pushing ticket after unlock", buf, 2u);
    v2 = cf;
    *buf = cf;
    if (!cf)
    {
      goto LABEL_10;
    }
  }

  else
  {
    *buf = v2;
  }

  CFRetain(v2);
LABEL_10:
  sub_1012AA48C(v1, buf);
  sub_10001021C(buf);
LABEL_11:
  sub_10001021C(&cf);
  goto LABEL_12;
}

void sub_1012AD3E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v4 = va_arg(va1, const void *);
  sub_10001021C(va);
  sub_10001021C(va1);
  operator delete();
}

const void **sub_1012AD438(uint64_t a1)
{
  v1 = *(a1 + 40);
  (*(**(*(v1 + 8) + 112) + 48))(&v5);
  v2 = *v1;
  if (*v1 != &v5)
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

uint64_t sub_1012AD4C8(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *v1;
  ServiceMap = Registry::getServiceMap(*(*v1 + 80));
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
  v16 = v5;
  v9 = sub_100009510(&v4[1].__m_.__sig, &v16);
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
      goto LABEL_9;
    }
  }

  else
  {
    v11 = 0;
  }

  std::mutex::unlock(v4);
  v10 = 0;
  v12 = 1;
LABEL_9:
  CarrierBundleTechType = CarrierBundleInterface::getCarrierBundleTechType(v11);
  if (CarrierBundleTechType == 2)
  {
    if ((v12 & 1) == 0)
    {
      sub_100004A34(v10);
    }

    return 1;
  }

  if (capabilities::ct::getCardProvisioningStatusVersion(CarrierBundleTechType) == 1)
  {
    v14 = (*(**(v2 + 112) + 64))(*(v2 + 112));
    if ((v12 & 1) == 0)
    {
      sub_100004A34(v10);
    }

    if (v14)
    {
      return 1;
    }
  }

  else if ((v12 & 1) == 0)
  {
    sub_100004A34(v10);
  }

  return 0;
}

void sub_1012AD620(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_1012AD700(uint64_t *a1)
{
  v1 = *a1;
  v4 = a1;
  v5 = v1;
  v2 = (*(**(*v1 + 112) + 352))(*(*v1 + 112));
  sub_10000FFD0(v1 + 8, v2);
  sub_1007146DC(&v5);
  return sub_1000049E0(&v4);
}

void sub_1012AD77C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1007146DC(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

void sub_1012AD7D0(uint64_t *a1)
{
  v1 = *a1;
  v4 = a1;
  v5 = v1;
  v2 = *v1;
  v3 = *(v1 + 8);
  sub_1000224C8(v6, v1 + 16);
  sub_1012A7450(v2, v3, v6);
}

void sub_1012AD864(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  va_copy(va2, va1);
  v6 = va_arg(va2, void);
  sub_10000FF50(va2);
  sub_100F189A4(va1);
  sub_1000049E0(va);
  _Unwind_Resume(a1);
}

void *sub_1012AD890(void *a1)
{
  *a1 = off_101F26028;
  sub_10000FF50((a1 + 5));
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_1012AD8E0(void *a1)
{
  *a1 = off_101F26028;
  sub_10000FF50((a1 + 5));
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete();
}

void sub_1012AD9E0(_Unwind_Exception *a1)
{
  v3 = v1[3];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1012ADA00(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F26028;
  *(a2 + 8) = *(a1 + 8);
  v2 = *(a1 + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  *(a2 + 32) = *(a1 + 32);
  return sub_1000224C8(a2 + 40, a1 + 40);
}

void sub_1012ADA74(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1012ADA94(char *a1)
{
  sub_1012ADCC0((a1 + 8));

  operator delete(a1);
}

void sub_1012ADAD0(void *a1, char *a2)
{
  v3 = a1[3];
  if (v3)
  {
    v4 = a1[1];
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      if (a1[2])
      {
        sub_1000224C8(&v7, (a1 + 5));
        v6 = *(v4 + 16);
        if (v6)
        {
          if (std::__shared_weak_count::lock(v6))
          {
            operator new();
          }
        }

        sub_100013CC4();
      }

      sub_100004A34(v5);
    }
  }
}

void sub_1012ADC48(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

uint64_t sub_1012ADC74(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1012ADCC0(uint64_t a1)
{
  sub_10000FF50(a1 + 32);
  v2 = *(a1 + 16);
  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

uint64_t *sub_1012ADD0C(unsigned __int8 **a1)
{
  v1 = *a1;
  v9 = a1;
  v10 = v1;
  v2 = *v1;
  v3 = *(*v1 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = CSIBOOLAsString(v1[8]);
    v5 = "failed";
    if (v1[9])
    {
      v5 = "success";
    }

    *buf = 136315394;
    *&buf[4] = v4;
    v14 = 2080;
    v15 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Request to update baseband ticket (fetchBAAOnly : %s) : %s", buf, 0x16u);
  }

  if (v1[9] == 1)
  {
    if (v1[8])
    {
      v6 = 1;
    }

    else
    {
      v7 = *(v2 + 40);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I Resetting baseband to update new fetched ticket", buf, 2u);
      }

      sub_10000501C(&__p, "Activation Ticket Updated");
      rest::ResetPayload::ResetPayload();
      sub_100108D68(v2 + 184, buf);
      if (v16 < 0)
      {
        operator delete(*buf);
      }

      if (v12 < 0)
      {
        operator delete(__p);
      }

      v6 = v1[9];
    }
  }

  else
  {
    v6 = 0;
  }

  sub_10000FFD0((v1 + 16), v6 & 1);
  sub_1012ADF00(&v10);
  return sub_1000049E0(&v9);
}

void sub_1012ADEB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  if (a19 < 0)
  {
    operator delete(a14);
  }

  sub_1012ADF00(&a11);
  sub_1000049E0(&a10);
  _Unwind_Resume(a1);
}

uint64_t *sub_1012ADF00(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    sub_10000FF50(v1 + 16);
    operator delete();
  }

  return a1;
}

uint64_t *sub_1012ADF50(unsigned int **a1)
{
  v1 = *a1;
  v16 = a1;
  v17 = v1;
  v2 = *v1;
  ServiceMap = Registry::getServiceMap(*(*v1 + 80));
  v4 = ServiceMap;
  if (v5 < 0)
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
  *buf = v5;
  v9 = sub_100009510(&v4[1].__m_.__sig, buf);
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
      if (!v11)
      {
        goto LABEL_7;
      }

LABEL_14:
      v15 = v1[2];
      *buf = v2;
      v19 = v15;
      sub_1000224C8(v20, (v1 + 4));
      v20[8] = 0;
      operator new();
    }
  }

  else
  {
    v11 = 0;
  }

  std::mutex::unlock(v4);
  v10 = 0;
  v12 = 1;
  if (v11)
  {
    goto LABEL_14;
  }

LABEL_7:
  v13 = *(*(**(v2 + 48) + 16))(*(v2 + 48), v1[2]);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Could not find CarrierBundleInterface for determining if device is customer ready!", buf, 2u);
  }

  sub_10000FFD0((v1 + 4), 0);
  if ((v12 & 1) == 0)
  {
    sub_100004A34(v10);
  }

  sub_100EDCE18(&v17);
  return sub_1000049E0(&v16);
}

void sub_1012AE1B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_101075254(va);
  sub_10000FF50(v19 + 16);
  if ((v18 & 1) == 0)
  {
    sub_100004A34(v17);
  }

  sub_100EDCE18(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

void *sub_1012AE218(void *a1)
{
  *a1 = off_101F260A8;
  sub_10000FF50((a1 + 3));
  return a1;
}

void sub_1012AE25C(void *a1)
{
  *a1 = off_101F260A8;
  sub_10000FF50((a1 + 3));

  operator delete();
}

uint64_t sub_1012AE348(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F260A8;
  v2 = *(a1 + 8);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 8) = v2;
  return sub_1000224C8(a2 + 24, a1 + 24);
}

void sub_1012AE38C(void *a1)
{
  sub_10000FF50(a1 + 24);

  operator delete(a1);
}

void sub_1012AE3C8(uint64_t a1, char *a2)
{
  v2 = *a2;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = v2;
  sub_1000224C8(&v7, a1 + 24);
  v3 = *(v4 + 16);
  if (v3)
  {
    if (std::__shared_weak_count::lock(v3))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_1012AE51C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

uint64_t sub_1012AE534(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_1012AE580(uint64_t *a1)
{
  v1 = *a1;
  v26 = a1;
  v27 = v1;
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 12);
  v5 = (*(**(*v1 + 48) + 16))(*(*v1 + 48), v3);
  ServiceMap = Registry::getServiceMap(*(v2 + 80));
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
  cf = v8;
  v12 = sub_100009510(&v7[1].__m_.__sig, &cf);
  if (v12)
  {
    v14 = v12[3];
    v13 = v12[4];
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v7);
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v13);
      v15 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v14 = 0;
  }

  std::mutex::unlock(v7);
  v13 = 0;
  v15 = 1;
LABEL_9:
  (*(*v14 + 96))(&cf, v14, v3, 1, @"RequiresServiceProvisioning", kCFBooleanFalse, 0);
  v16 = cf;
  buf[0] = 0;
  if (cf && (v17 = CFGetTypeID(cf), v17 == CFBooleanGetTypeID()))
  {
    ctu::cf::assign(buf, v16, v18);
    v19 = buf[0];
  }

  else
  {
    v19 = 0;
  }

  sub_10000A1EC(&cf);
  v20 = (*(**(v2 + 112) + 208))(*(v2 + 112));
  v21 = (*(**(v2 + 112) + 128))(*(v2 + 112));
  if (v21[12] != 1)
  {
    goto LABEL_17;
  }

  if (v3 == 2)
  {
    v22 = v21[9];
    goto LABEL_19;
  }

  if (v3 != 1)
  {
LABEL_17:
    v23 = 0;
    goto LABEL_20;
  }

  v22 = v21[8];
LABEL_19:
  v23 = v22 == 2;
LABEL_20:
  cf = 0;
  (*(**(v2 + 112) + 48))(&cf);
  if (!cf)
  {
    v24 = *v5;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "No activation Info", buf, 2u);
    }

LABEL_26:
    v20 = 0;
    goto LABEL_27;
  }

  if (v4 != 1)
  {
    if (v4 == 2)
    {
      v20 &= v23;
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  (*(**(v2 + 112) + 264))(*(v2 + 112));
  if ((v19 & 1) != 0 && (*(**(v2 + 112) + 264))(*(v2 + 112)))
  {
    v20 &= v23;
  }

LABEL_27:
  sub_10001021C(&cf);
  if ((v15 & 1) == 0)
  {
    sub_100004A34(v13);
  }

  sub_10000FFD0(v1 + 16, v20);
  sub_1012AE95C(&v27);
  return sub_1000049E0(&v26);
}

void sub_1012AE8F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, const void *a12)
{
  sub_10001021C(&a12);
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v12);
  }

  sub_1012AE95C(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1012AE95C(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    sub_10000FF50(v1 + 16);
    operator delete();
  }

  return a1;
}

uint64_t sub_1012AE9AC(uint64_t a1)
{
  result = (*(**(a1 + 40) + 16))();
  v3 = *(a1 + 32);
  *v3 = result;
  *(v3 + 4) = BYTE4(result);
  return result;
}

uint64_t *sub_1012AE9F0(uint64_t *a1)
{
  v1 = *a1;
  v29 = a1;
  v30 = v1;
  v2 = *v1;
  v3 = *(v1 + 8);
  if (v3 == 3 || v3 == 0)
  {
    v5 = *(v2 + 40);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v34 = subscriber::asString();
      v6 = "#N Requesting invalid instance: %s";
      v7 = v5;
      v8 = 12;
LABEL_8:
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v6, buf, v8);
    }
  }

  else
  {
    v10 = (*(**(v2 + 112) + 128))(*(v2 + 112));
    v11 = v10;
    if (*(v10 + 456))
    {
      v32 = 0;
      v31 = 0;
      v12 = UMTSProvisioningSlotInfo::PriVersion::PriVersion(&v31);
      LOBYTE(v32) = 0;
      if (capabilities::ct::activationSIMInfoHardwareSlotBased(v12))
      {
        v13 = *(v2 + 200);
        v14 = *(v2 + 208);
        if (v13 != v14)
        {
          while (*v13 != *(v1 + 8))
          {
            v13 += 42;
            if (v13 == v14)
            {
              goto LABEL_26;
            }
          }
        }

        if (v13 == v14)
        {
LABEL_26:
          v20 = *(v2 + 40);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            v27 = subscriber::asString();
            *buf = 136315138;
            v34 = v27;
            _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Cannot find instance (%s)", buf, 0xCu);
          }

          goto LABEL_28;
        }

        v18 = v13[1];
        if (v18 == 2)
        {
          v31 = *(v11 + 432);
          v19 = *(v11 + 436);
        }

        else
        {
          if (v18 != 1)
          {
            v25 = *(v2 + 40);
            if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
            {
              v28 = subscriber::asString();
              *buf = 136315138;
              v34 = v28;
              _os_log_fault_impl(&_mh_execute_header, v25, OS_LOG_TYPE_FAULT, "Invalid slot (%s)", buf, 0xCu);
            }

            goto LABEL_35;
          }

          v31 = *(v11 + 256);
          v19 = *(v11 + 260);
        }

        LOBYTE(v32) = v19;
LABEL_35:
        if (v32)
        {
          goto LABEL_36;
        }

        v26 = *(v2 + 40);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#N UMTS slot PRI version is invalid, cannot get PRI version", buf, 2u);
        }

LABEL_28:
        v21 = 0;
        v22 = 0;
        v23 = 0;
LABEL_37:
        sub_1012AED8C(*(v1 + 40), v21, v22, v23);
        goto LABEL_10;
      }

      v16 = *(v1 + 8);
      if (v16 == 1)
      {
        v17 = 256;
      }

      else
      {
        if (v16 != 2)
        {
LABEL_36:
          v21 = BYTE2(v31);
          v22 = HIBYTE(v31);
          v23 = v31;
          goto LABEL_37;
        }

        v17 = 432;
      }

      v24 = v11 + v17;
      v31 = *v24;
      LOBYTE(v32) = *(v24 + 4);
      goto LABEL_36;
    }

    v15 = *(v2 + 40);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v6 = "#N UMTS provisioning info is invalid, cannot get PRI version";
      v7 = v15;
      v8 = 2;
      goto LABEL_8;
    }
  }

  sub_1012AED8C(*(v1 + 40), 0, 0, 0);
LABEL_10:
  sub_1012AED3C(&v30);
  return sub_1000049E0(&v29);
}

void sub_1012AED20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  sub_1012AED3C(va1);
  sub_1000049E0(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_1012AED3C(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    sub_10114B538(v1 + 16);
    operator delete();
  }

  return a1;
}

uint64_t sub_1012AED8C(uint64_t a1, char a2, char a3, __int16 a4)
{
  v7 = a2;
  v6 = a3;
  v5 = a4;
  if (!a1)
  {
    sub_100022DB4();
  }

  return (*(*a1 + 48))(a1, &v7, &v6, &v5);
}

uint64_t sub_1012AEE24(uint64_t a1)
{
  result = (*(**(a1 + 40) + 16))();
  **(a1 + 32) = result;
  return result;
}

uint64_t sub_1012AEE60(uint64_t a1)
{
  result = (*(**(a1 + 40) + 16))();
  **(a1 + 32) = result;
  return result;
}

__n128 sub_1012AEF18(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F261F8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1012AEF50(uint64_t a1, xpc_object_t *a2)
{
  sub_10010A62C(*(a1 + 8), a2);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = (*(a1 + 16) + (v4 >> 1));
  if (v4)
  {
    v3 = *(*v5 + v3);
  }

  return v3(v5);
}

uint64_t sub_1012AEFCC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1012AF018(uint64_t a1, void *a2, unsigned int a3)
{
  if (a3 == 4)
  {
    goto LABEL_2;
  }

  if (a3 <= 1)
  {
    v6 = *a1;
    *a2 = *a1;
    a2[1] = *(a1 + 8);
    dispatch_retain(v6);
    if (a3 != 1)
    {
      return;
    }

    v7 = *a1;
    goto LABEL_10;
  }

  if (a3 != 3)
  {
    if (a3 != 2)
    {
LABEL_2:
      *(a2 + 4) = 0;
      return;
    }

    v7 = *a2;
LABEL_10:

    dispatch_release(v7);
    return;
  }

  v8 = (*(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL);
  if (v8 == ("N3ctu12DispatchSlotIZN20ActivationController16setupEvents_syncEvE3$_0EE" & 0x7FFFFFFFFFFFFFFFLL) || !strcmp(v8, ("N3ctu12DispatchSlotIZN20ActivationController16setupEvents_syncEvE3$_0EE" & 0x7FFFFFFFFFFFFFFFLL)))
  {
    *a2 = a1;
  }

  else
  {
    *a2 = 0;
  }
}

void sub_1012AF0F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = off_101F262A8 + 1;
  *&v4 = v2;
  operator new();
}

uint64_t sub_1012AF248(uint64_t a1)
{
  sub_1003352F8(*(a1 + 32));
  v2 = *(a1 + 32);
  if (v2)
  {
    sub_1009968F0(v2);
    operator delete();
  }

  result = *(a1 + 40);
  if (result)
  {

    operator delete();
  }

  return result;
}

uint64_t sub_1012AF2CC(uint64_t result, _WORD *a2, unsigned int a3)
{
  if (a3 == 4)
  {
    goto LABEL_2;
  }

  v4 = result;
  if (a3 > 1)
  {
    if (a3 != 2)
    {
      if (a3 != 3)
      {
LABEL_2:
        a2[4] = 0;
        return result;
      }

      result = *(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL;
      if (result == ("ZN20ActivationController16setupEvents_syncEvE3$_0" & 0x7FFFFFFFFFFFFFFFLL) || (result = strcmp(result, ("ZN20ActivationController16setupEvents_syncEvE3$_0" & 0x7FFFFFFFFFFFFFFFLL)), !result))
      {
        *a2 = v4;
      }

      else
      {
        *a2 = 0;
      }
    }
  }

  else
  {
    *a2 = *result;
  }

  return result;
}

void sub_1012AF364(uint64_t *a1, char *a2)
{
  v3 = *a1;
  *v4 = 0u;
  v5 = 0u;
  rest::ResetPayload::ResetPayload();
  sub_100016890(v4, a2);
  sub_1012A86C8(v3, v4);
}

void sub_1012AF3E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1012AF41C(void *a1)
{
  *a1 = off_101F262D8;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_1012AF468(void *a1)
{
  *a1 = off_101F262D8;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

void sub_1012AF4D4(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::lock(v2);
  }

  operator new();
}

void sub_1012AF584(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1012AF628(void *a1)
{
  *a1 = off_101F26328;
  v2 = a1[2];
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

void sub_1012AF674(void *a1)
{
  *a1 = off_101F26328;
  v1 = a1[2];
  if (v1)
  {
    sub_100004A34(v1);
  }

  operator delete();
}

__n128 sub_1012AF7C8(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F26368;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_1012AF800(void *a1, uint64_t a2)
{
  *v6 = 0u;
  v7 = 0u;
  rest::ResetPayload::ResetPayload();
  rest::read_rest_value();
  v3 = a1[2];
  v4 = a1[3];
  v5 = (a1[1] + (v4 >> 1));
  if (v4)
  {
    v3 = *(*v5 + v3);
  }

  v3(v5, v6);
  if (SBYTE7(v7) < 0)
  {
    operator delete(v6[0]);
  }
}

void sub_1012AF8C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1012AF8F8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1012AF9C0(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F263E8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1012AF9F8(void *a1, xpc *this, BOOL a3)
{
  v4 = xpc::dyn_cast_or_default(this, 0, a3);
  v5 = a1[2];
  v6 = a1[3];
  v7 = (a1[1] + (v6 >> 1));
  if (v6)
  {
    v5 = *(*v7 + v5);
  }

  return v5(v7, v4);
}

uint64_t sub_1012AFA7C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1012AFAC8(void *a1)
{
  v1 = a1[5];
  v2 = a1[6];
  v3 = (a1[4] + (v2 >> 1) - 8);
  if (v2)
  {
    return (*(*v3 + v1))();
  }

  else
  {
    return v1(v3);
  }
}

void **sub_1012AFB14(void **a1)
{
  sub_1012B0D80(a1 + 3);
  v3 = a1;
  sub_1001018AC(&v3);
  return a1;
}

void sub_1012AFB54(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  memset(v5, 0, sizeof(v5));
  v4 = sub_10004A4A8(a1 + 3);
  sub_100048D3C(v5, v4);
  sub_1012AFC4C(a1, v5);
}

void sub_1012AFC1C(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1012AFC4C(uint64_t *a1, void *x1_0)
{
  v4 = 0;
  v5 = 0;
  sub_1012AFD40(a1, x1_0);
}

void sub_1012AFD28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_10004A724(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_1012AFDD8(uint64_t *a1, void *a2)
{
  v2 = a1[1];
  if (!v2 || atomic_load_explicit((v2 + 8), memory_order_acquire) != 1)
  {
    operator new();
  }

  return sub_100B06FA8(a1, a2, 1, 2);
}

void sub_1012AFEFC(uint64_t a1, uint64_t a2, void *a3)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 28) = 1;
  *a1 = off_101F26488;
  operator new();
}

void sub_1012B000C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1001018AC(va);
  operator delete();
}

void sub_1012B0074(uint64_t a1)
{
  sub_1012B0420(a1);

  operator delete();
}

uint64_t sub_1012B00AC(uint64_t a1)
{
  v6 = 0u;
  memset(v5, 0, sizeof(v5));
  v2 = sub_10004A4A8((a1 + 48));
  sub_100048D3C(v5, v2);
  sub_1012B0498(a1, v5);
  v3 = *(a1 + 24);
  sub_10004A704(*(&v6 + 1));
  sub_10004A6B0(v5);
  return v3;
}

void sub_1012B0158(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1012B0188(uint64_t a1)
{
  v1 = sub_10004ACA4((a1 + 48));

  return sub_100048C68(v1);
}

uint64_t sub_1012B01B4(uint64_t a1)
{
  v1 = sub_10004ACA4((a1 + 48));

  return sub_10004A704(v1);
}

atomic_uint **sub_1012B01E0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 40);
  *a2 = *(a1 + 32);
  a2[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1u, memory_order_relaxed);
    v5 = *(a1 + 40);
  }

  else
  {
    v5 = 0;
  }

  v7[1] = v2;
  v7[2] = v3;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v7[0] = v5;
  return sub_10004A724(v7);
}

void sub_1012B0238(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_1012B02A4(&v2, a2);
}

void sub_1012B0314(void *a1)
{
  __cxa_begin_catch(a1);
  sub_1012B033C(v1);
  __cxa_rethrow();
}

uint64_t sub_1012B033C(uint64_t result)
{
  if (result)
  {
    v1 = result;
    sub_1012B0D80((result + 24));
    v2 = v1;
    sub_1001018AC(&v2);
    operator delete();
  }

  return result;
}

uint64_t sub_1012B03B0(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    sub_1012B0D80((v1 + 24));
    v2 = v1;
    sub_1001018AC(&v2);
    operator delete();
  }

  return result;
}

uint64_t sub_1012B0420(uint64_t a1)
{
  *a1 = off_101F26488;
  v2 = (a1 + 40);
  sub_10004A724((a1 + 56));
  sub_10004A724(v2);
  *a1 = off_101E263F8;
  sub_100083940((a1 + 16));
  return a1;
}

atomic_uint **sub_1012B0498(atomic_uint **result, void *a2)
{
  v2 = (result + 4);
  if (result[4])
  {
    v4 = result;
    for (i = *sub_100B0724C(result + 4); ; i += 6)
    {
      result = sub_100B0724C(v2);
      if (i == result[1])
      {
        break;
      }

      memset(v6, 0, sizeof(v6));
      sub_10004ACE8(i, v6);
      if (sub_100048EA8(i))
      {
        if (*(v4 + 24) == 1)
        {
          *(v4 + 24) = 0;
          sub_100100F00(v4, a2);
        }

        return sub_10004B040(v6);
      }

      sub_10004B040(v6);
    }
  }

  return result;
}

void sub_1012B0580(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10004B040(va);
  _Unwind_Resume(a1);
}

void sub_1012B05A0(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_1012B060C(&v2, a2);
}

void sub_1012B067C(void *a1)
{
  __cxa_begin_catch(a1);
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  __cxa_rethrow();
}

uint64_t sub_1012B06E0(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

NSObject **sub_1012B0728(NSObject **a1, NSObject *a2, void *aBlock)
{
  *a1 = a2;
  if (aBlock)
  {
    v4 = _Block_copy(aBlock);
    a2 = *a1;
  }

  else
  {
    v4 = 0;
  }

  a1[1] = v4;
  dispatch_retain(a2);
  return a1;
}

void (***sub_1012B0778(void (***result)(void, void, uint64_t), void (***a2)(void, void, uint64_t)))(void, void, uint64_t)
{
  if (a2 != result)
  {
    v3 = result;
    memset(v4, 0, sizeof(v4));
    sub_1012B0CC8(v4, result);
    sub_1012B0CC8(v3, a2);
    sub_1012B0CC8(a2, v4);
    return sub_1012B0D80(v4);
  }

  return result;
}

uint64_t sub_1012B07F4(uint64_t result, uint64_t a2, unsigned int a3)
{
  if (a3 == 4)
  {
    goto LABEL_2;
  }

  v5 = result;
  if (a3 <= 1)
  {
    result = sub_1012B0728(a2, *result, *(result + 8));
    if (a3 != 1)
    {
      return result;
    }

    v6 = v5;
    goto LABEL_10;
  }

  if (a3 != 3)
  {
    if (a3 != 2)
    {
LABEL_2:
      *(a2 + 8) = 0;
      return result;
    }

    v6 = a2;
LABEL_10:

    return sub_1012B0DD0(v6);
  }

  result = *(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL;
  if (result == ("N3ctu12DispatchSlotIN8dispatch5blockIU13block_pointerFviEEEEE" & 0x7FFFFFFFFFFFFFFFLL) || (result = strcmp(result, ("N3ctu12DispatchSlotIN8dispatch5blockIU13block_pointerFviEEEEE" & 0x7FFFFFFFFFFFFFFFLL)), !result))
  {
    *a2 = v5;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

void sub_1012B08CC(uint64_t a1, int a2)
{
  v2 = *(a1 + 8);
  if (v2 && (v3 = _Block_copy(v2)) != 0 && (v4 = _Block_copy(v3), (v5 = v4) != 0))
  {
    v6 = _Block_copy(v4);
    v7 = v6;
    if (v6)
    {
      v8 = _Block_copy(v6);
      v9 = v8;
      if (v8)
      {
        v10 = _Block_copy(v8);
        v11 = v10;
        if (v10)
        {
          v12 = _Block_copy(v10);
          v13 = v12;
          if (v12)
          {
            *&v15 = _Block_copy(v12);
            _Block_release(v13);
          }

          else
          {
            *&v15 = 0;
          }

          _Block_release(v11);
        }

        else
        {
          *&v15 = 0;
        }

        _Block_release(v9);
      }

      else
      {
        *&v15 = 0;
      }

      v14 = off_101F26588;
      _Block_release(v7);
    }

    else
    {
      v14 = off_101F26588;
      *&v15 = 0;
    }

    _Block_release(v5);
  }

  else
  {
    v14 = off_101F26588;
    *&v15 = 0;
  }

  operator new();
}

uint64_t sub_1012B0B58(uint64_t a1)
{
  sub_100B07448(*(a1 + 32));
  v2 = *(a1 + 32);
  if (v2)
  {
    sub_1012B0D80(v2);
    operator delete();
  }

  result = *(a1 + 40);
  if (result)
  {

    operator delete();
  }

  return result;
}

void sub_1012B0BDC(void **a1, _WORD *a2, unsigned int a3)
{
  if (a3 == 4)
  {
    goto LABEL_2;
  }

  if (a3 > 1)
  {
    if (a3 == 3)
    {
      v8 = (*(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL);
      if (v8 == ("N8dispatch5blockIU13block_pointerFviEEE" & 0x7FFFFFFFFFFFFFFFLL) || !strcmp(v8, ("N8dispatch5blockIU13block_pointerFviEEE" & 0x7FFFFFFFFFFFFFFFLL)))
      {
        *a2 = a1;
      }

      else
      {
        *a2 = 0;
      }
    }

    else
    {
      if (a3 != 2)
      {
LABEL_2:
        a2[4] = 0;
        return;
      }

      v7 = *a2;
      if (*a2)
      {
LABEL_9:
        _Block_release(v7);
      }
    }
  }

  else
  {
    v6 = *a1;
    if (*a1)
    {
      v6 = _Block_copy(v6);
    }

    *a2 = v6;
    if (a3 == 1)
    {
      v7 = *a1;
      if (*a1)
      {
        goto LABEL_9;
      }
    }
  }
}

uint64_t sub_1012B0CC8(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v2 = a2;
    v3 = result;
    v4 = *a2;
    if (*a2)
    {
      *result = v4;
      if (v4)
      {
        v7 = *(a2 + 8);
        *(result + 24) = *(a2 + 24);
        *(result + 8) = v7;
      }

      else
      {
        result = (*v4)(a2 + 8, result + 8, 1);
      }
    }

    else
    {
      v5 = *result;
      if (!*result)
      {
        return result;
      }

      if ((v5 & 1) == 0)
      {
        v6 = *v5;
        if (v6)
        {
          result = v6(result + 8, result + 8, 2);
        }
      }

      v2 = v3;
    }

    *v2 = 0;
  }

  return result;
}

void sub_1012B0D5C(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_rethrow();
}

void (***sub_1012B0D80(void (***a1)(void, void, uint64_t)))(void, void, uint64_t)
{
  v2 = *a1;
  if (*a1)
  {
    if ((v2 & 1) == 0)
    {
      v3 = *v2;
      if (v3)
      {
        v3(a1 + 1, a1 + 1, 2);
      }
    }

    *a1 = 0;
  }

  return a1;
}

uint64_t sub_1012B0DD0(uint64_t a1)
{
  dispatch_release(*a1);
  v2 = *(a1 + 8);
  if (v2)
  {
    _Block_release(v2);
  }

  return a1;
}

uint64_t sub_1012B0E0C(void *a1)
{
  v1 = a1[5];
  v2 = a1[6];
  v3 = (a1[4] + (v2 >> 1) - 8);
  if (v2)
  {
    return (*(*v3 + v1))();
  }

  else
  {
    return v1(v3);
  }
}