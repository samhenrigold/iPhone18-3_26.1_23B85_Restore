void sub_1002DF544(uint64_t a1)
{
  v1[0] = _NSConcreteStackBlock;
  v1[1] = 3221225472;
  v1[2] = sub_1002DF5B4;
  v1[3] = &unk_101E26008;
  v1[4] = a1;
  sub_100076974((a1 + 8), v1);
}

void sub_1002DF5B4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Show Get Transfer Credentail Failure Alert", buf, 2u);
  }

  ServiceMap = Registry::getServiceMap(*(v1 + 72));
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
        goto LABEL_9;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v11 = 0;
  }

  std::mutex::unlock(v4);
  v10 = 0;
  v12 = 1;
  if (!v11)
  {
LABEL_9:
    v13 = *(v1 + 40);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#E invalid localization", buf, 2u);
    }

    goto LABEL_20;
  }

LABEL_13:
  alertMessage = 0;
  alertHeader = 0;
  defaultButtonTitle = 0;
  v14 = kCBMessageLocalizationTable;
  (*(*v11 + 40))(&v18, v11, kCBMessageLocalizationTable, @"GET_TRANSFER_CREDENTIAL_FAILURE_TITLE", 0);
  v15 = alertHeader;
  alertHeader = v18;
  *buf = v15;
  v18 = 0;
  sub_100005978(buf);
  sub_100005978(&v18);
  (*(*v11 + 40))(&v18, v11, v14, @"GET_TRANSFER_CREDENTIAL_FAILURE", 0);
  *buf = alertMessage;
  alertMessage = v18;
  v18 = 0;
  sub_100005978(buf);
  sub_100005978(&v18);
  (*(*v11 + 40))(&v18, v11, v14, @"OK", 0);
  v16 = v18;
  *buf = defaultButtonTitle;
  v18 = 0;
  defaultButtonTitle = v16;
  sub_100005978(buf);
  sub_100005978(&v18);
  if (alertHeader && alertMessage && defaultButtonTitle)
  {
    *buf = 0;
    CFUserNotificationDisplayAlert(0.0, 3uLL, 0, 0, 0, alertHeader, alertMessage, defaultButtonTitle, 0, 0, buf);
  }

  else
  {
    v17 = *(v1 + 40);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#E localization string does not exist", buf, 2u);
    }
  }

  sub_100005978(&defaultButtonTitle);
  sub_100005978(&alertMessage);
  sub_100005978(&alertHeader);
LABEL_20:
  if ((v12 & 1) == 0)
  {
    sub_100004A34(v10);
  }
}

void sub_1002DF8D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va2, a7);
  va_start(va1, a7);
  va_start(va, a7);
  v10 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v12 = va_arg(va2, const void *);
  sub_100005978(va);
  sub_100005978(va1);
  sub_100005978(va2);
  if ((v8 & 1) == 0)
  {
    sub_100004A34(v7);
  }

  _Unwind_Resume(a1);
}

void sub_1002DF910(uint64_t a1)
{
  v1[0] = _NSConcreteStackBlock;
  v1[1] = 3221225472;
  v1[2] = sub_1002DF980;
  v1[3] = &unk_101E26008;
  v1[4] = a1;
  sub_100076974((a1 + 8), v1);
}

void sub_1002DF980(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(v1 + 64);
    v4 = *(v1 + 65);
    v5[0] = 67109376;
    v5[1] = v3;
    v6 = 1024;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Alerts State -- fDidShowExpiredAlert: %d, fDidShowMonitorModeAlert: %d", v5, 0xEu);
  }
}

void sub_1002DFA30(uint64_t a1, char a2)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1002DFAA4;
  v2[3] = &unk_101E26058;
  v2[4] = a1;
  v3 = a2;
  sub_100076974((a1 + 8), v2);
}

void sub_1002DFAA4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v7[0] = @"FlowTypeKey";
  v3 = [NSNumber numberWithInt:1];
  v4 = v3;
  v7[1] = @"ConfirmationCodeRequiredKey";
  if (*(a1 + 40))
  {
    v5 = &__kCFBooleanTrue;
  }

  else
  {
    v5 = &__kCFBooleanFalse;
  }

  v8[0] = v3;
  v8[1] = v5;
  v6 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:2];

  [*(v2 + 56) launchWithServiceName:@"com.apple.SIMSetupUIService" viewControllerClassName:@"TSSIMSetupSupportViewController" options:v6];
}

void sub_1002DFBBC(uint64_t a1, const void **a2)
{
  sub_100010024(&v3 + 1, a2);
  v4[0] = 0;
  v4[1] = 0;
  sub_100004AA0(v4, (a1 + 8));
  operator new();
}

void sub_1002DFCC0(uint64_t a1, BOOL a2)
{
  v18 = 0;
  v3 = xpc_dictionary_create(0, 0, 0);
  v4 = v3;
  if (v3)
  {
    v18 = v3;
  }

  else
  {
    v4 = xpc_null_create();
    v18 = v4;
    if (!v4)
    {
      v5 = xpc_null_create();
      v4 = 0;
      goto LABEL_8;
    }
  }

  if (xpc_get_type(v4) == &_xpc_type_dictionary)
  {
    xpc_retain(v4);
    goto LABEL_9;
  }

  v5 = xpc_null_create();
LABEL_8:
  v18 = v5;
LABEL_9:
  xpc_release(v4);
  __p = 0;
  v17 = 0uLL;
  sub_10000501C(&__p, "");
  v19 = 0;
  v20 = 0uLL;
  ctu::cf::assign();
  v6 = v19;
  v21[0] = v20;
  *(v21 + 7) = *(&v20 + 7);
  v7 = HIBYTE(v20);
  if (SHIBYTE(v17) < 0)
  {
    operator delete(__p);
  }

  __p = v6;
  *&v17 = v21[0];
  *(&v17 + 7) = *(v21 + 7);
  HIBYTE(v17) = v7;
  v14 = xpc_BOOL_create(a2);
  if (!v14)
  {
    v14 = xpc_null_create();
  }

  p_p = &__p;
  if (v17 < 0)
  {
    p_p = __p;
  }

  v19 = &v18;
  *&v20 = p_p;
  sub_10000F688(&v19, &v14, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v14);
  v14 = 0;
  v19 = 0;
  v20 = 0uLL;
  ctu::cf::assign();
  v9 = v19;
  v21[0] = v20;
  *(v21 + 7) = *(&v20 + 7);
  v10 = HIBYTE(v20);
  if (SHIBYTE(v17) < 0)
  {
    operator delete(__p);
  }

  __p = v9;
  *&v17 = v21[0];
  *(&v17 + 7) = *(v21 + 7);
  HIBYTE(v17) = v10;
  v12 = xpc_BOOL_create(0);
  if (!v12)
  {
    v12 = xpc_null_create();
  }

  v11 = &__p;
  if (v17 < 0)
  {
    v11 = __p;
  }

  v19 = &v18;
  *&v20 = v11;
  sub_10000F688(&v19, &v12, &v13);
  xpc_release(v13);
  v13 = 0;
  xpc_release(v12);
  v12 = 0;
  v19 = v18;
  if (v18)
  {
    xpc_retain(v18);
  }

  else
  {
    v19 = xpc_null_create();
  }

  v21[0] = xpc_null_create();
  sub_10002A37C(85, &v19, v21);
  xpc_release(v21[0]);
  xpc_release(v19);
  if (SHIBYTE(v17) < 0)
  {
    operator delete(__p);
  }

  xpc_release(v18);
}

void sub_1002DFF6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, xpc_object_t a19, xpc_object_t object, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

void *sub_1002E00A8(void *a1, void *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E3DF88;
  sub_1002D7740((a1 + 3), a2);
  return a1;
}

void sub_1002E0124(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E3DF88;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1002E0220(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E3DFD8;
  a2[1] = v2;
  return result;
}

uint64_t sub_1002E024C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1002E0298(__CFDictionary *a1, void *cf, uint64_t a3)
{
  key = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  v6 = a3;
  if (a3)
  {
    CFRetain(a3);
    if (key)
    {
      CFDictionaryAddValue(a1, key, a3);
      a3 = 1;
    }

    else
    {
      a3 = 0;
    }
  }

  sub_100DA3324(&v6);
  sub_100DA3324(&key);
  return a3;
}

void sub_1002E0318(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_100DA3324(&a9);
  sub_100DA3324(va);
  _Unwind_Resume(a1);
}

void sub_1002E033C(uint64_t *__return_ptr a1@<X8>, std::mutex *this@<X0>)
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

uint64_t sub_1002E0470(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E3E090;
  a2[1] = v2;
  return result;
}

void sub_1002E049C(uint64_t result, _BYTE *a2)
{
  if ((*a2 & 1) == 0 && os_log_type_enabled(*(*(result + 8) + 40), OS_LOG_TYPE_ERROR))
  {
    sub_10176A028();
  }
}

uint64_t sub_1002E04E8(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101E3E0F0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_1002E0534(void *a1)
{
  [*(**a1 + 56) launchWithServiceName:@"com.apple.SIMSetupUIService" viewControllerClassName:@"TSSIMSetupSupportViewController" options:{*(*a1 + 8), a1, *a1}];
  sub_10004B740(&v3);
  return sub_1000049E0(&v2);
}

void sub_1002E058C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10004B740(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

void sub_1002E05A8()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

uint64_t sub_1002E05D0(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = a3;
  strcpy(__p, "RCSMessageProvisioning");
  v13 = 22;
  AnalyticsEvent::AnalyticsEvent(a1, __p, a2);
  if (v13 < 0)
  {
    operator delete(*__p);
  }

  ctu::OsLogContext::OsLogContext(&v10, kCtLoggingSystemName, "lazuli.prov.metric");
  ctu::OsLogLogger::OsLogLogger(v11, &v10);
  ctu::OsLogLogger::OsLogLogger((a1 + 56), v11);
  ctu::OsLogLogger::~OsLogLogger(v11);
  ctu::OsLogContext::~OsLogContext(&v10);
  v14[0] = off_101E2B528;
  v14[1] = sub_1000A7B14;
  v14[3] = v14;
  sub_1002E0824((a1 + 64), a2, v14);
  sub_1000A8744(v14);
  *a1 = off_101E3E110;
  *(a1 + 72) = v3;
  if (v3 && v3 != 3)
  {
    v6 = analytics::simSlotAsSubsId();
    v8 = xpc_int64_create(v6);
    if (!v8)
    {
      v8 = xpc_null_create();
    }

    v10.var0 = (a1 + 32);
    v10.var1.fRef = "subs_id";
    sub_10000F688(&v10, &v8, &object);
    xpc_release(object);
    object = 0;
    xpc_release(v8);
  }

  return a1;
}

void sub_1002E0784(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002E080C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1002E0804);
}

capabilities::ct *sub_1002E0824(capabilities::ct *a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0;
  if ((capabilities::ct::supportsGemini(a1) & 1) == 0)
  {
    operator new();
  }

  if (!*a1)
  {
    operator new();
  }

  return a1;
}

void sub_1002E097C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000A8744(va);
  operator delete();
}

void sub_1002E09EC(void **a1)
{
  v2 = a1[8];
  a1[8] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 7));

  AnalyticsEvent::~AnalyticsEvent(a1);
}

void sub_1002E0A5C(void **a1)
{
  sub_1002E09EC(a1);

  operator delete();
}

void sub_1002E0A94(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) >= 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = *a2;
  }

  v5 = xpc_string_create(v3);
  if (!v5)
  {
    v5 = xpc_null_create();
  }

  v4[0] = a1 + 32;
  v4[1] = "PhoneNumberSource";
  sub_10000F688(v4, &v5, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v5);
}

void sub_1002E0B24(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 176) == 1)
  {
    v24 = xpc_int64_create(*(a2 + 168));
    if (!v24)
    {
      v24 = xpc_null_create();
    }

    v22 = a1 + 32;
    v23 = "Timer_T1";
    sub_10000F688(&v22, &v24, &v25);
    xpc_release(v25);
    v25 = 0;
    xpc_release(v24);
    v24 = 0;
  }

  if (*(a2 + 192) == 1)
  {
    v20 = xpc_int64_create(*(a2 + 184));
    if (!v20)
    {
      v20 = xpc_null_create();
    }

    v22 = a1 + 32;
    v23 = "Timer_T2";
    sub_10000F688(&v22, &v20, &v21);
    xpc_release(v21);
    v21 = 0;
    xpc_release(v20);
    v20 = 0;
  }

  if (*(a2 + 208) == 1)
  {
    v18 = xpc_int64_create(*(a2 + 200));
    if (!v18)
    {
      v18 = xpc_null_create();
    }

    v22 = a1 + 32;
    v23 = "Timer_T4";
    sub_10000F688(&v22, &v18, &v19);
    xpc_release(v19);
    v19 = 0;
    xpc_release(v18);
    v18 = 0;
  }

  if (*(a2 + 224) == 1)
  {
    object = xpc_int64_create(*(a2 + 216));
    if (!object)
    {
      object = xpc_null_create();
    }

    v22 = a1 + 32;
    v23 = "StandaloneMsgSwitchoverSize";
    sub_10000F688(&v22, &object, &v17);
    xpc_release(v17);
    v17 = 0;
    xpc_release(object);
    object = 0;
  }

  if (*(a2 + 233) == 1)
  {
    v14 = xpc_BOOL_create(*(a2 + 232));
    if (!v14)
    {
      v14 = xpc_null_create();
    }

    v22 = a1 + 32;
    v23 = "Is_psSignallingSIPoTLS";
    sub_10000F688(&v22, &v14, &v15);
    xpc_release(v15);
    v15 = 0;
    xpc_release(v14);
    v14 = 0;
  }

  if (*(a2 + 237) == 1)
  {
    v12 = xpc_BOOL_create(*(a2 + 236));
    if (!v12)
    {
      v12 = xpc_null_create();
    }

    v22 = a1 + 32;
    v23 = "Is_psSignallingRoamingSIPoTLS";
    sub_10000F688(&v22, &v12, &v13);
    xpc_release(v13);
    v13 = 0;
    xpc_release(v12);
    v12 = 0;
  }

  if (*(a2 + 235) == 1)
  {
    v10 = xpc_BOOL_create(*(a2 + 234));
    if (!v10)
    {
      v10 = xpc_null_create();
    }

    v22 = a1 + 32;
    v23 = "Is_psMediaMSRPoTLS";
    sub_10000F688(&v22, &v10, &v11);
    xpc_release(v11);
    v11 = 0;
    xpc_release(v10);
    v10 = 0;
  }

  if (*(a2 + 239) == 1)
  {
    v8 = xpc_BOOL_create(*(a2 + 238));
    if (!v8)
    {
      v8 = xpc_null_create();
    }

    v22 = a1 + 32;
    v23 = "Is_psMediaRoamingMSRPoTLS";
    sub_10000F688(&v22, &v8, &v9);
    xpc_release(v9);
    v9 = 0;
    xpc_release(v8);
    v8 = 0;
  }

  if (*(a2 + 241) == 1)
  {
    v6 = xpc_BOOL_create(*(a2 + 240));
    if (!v6)
    {
      v6 = xpc_null_create();
    }

    v22 = a1 + 32;
    v23 = "Is_WiFiMediaMSRPoTLS";
    sub_10000F688(&v22, &v6, &v7);
    xpc_release(v7);
    v7 = 0;
    xpc_release(v6);
    v6 = 0;
  }

  if (*(a2 + 243) == 1)
  {
    v4 = xpc_BOOL_create(*(a2 + 242));
    if (!v4)
    {
      v4 = xpc_null_create();
    }

    v22 = a1 + 32;
    v23 = "Is_WiFiSignallingSIPoTLS";
    sub_10000F688(&v22, &v4, &v5);
    xpc_release(v5);
    v5 = 0;
    xpc_release(v4);
  }
}

void sub_1002E0F84(uint64_t a1, uint64_t a2, const char *a3)
{
  if (*(a2 + 23) >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  v13 = xpc_string_create(v5);
  if (!v13)
  {
    v13 = xpc_null_create();
  }

  v6 = a1 + 32;
  v11 = v6;
  v12 = "VendorValidityFailureReason";
  sub_10000F688(&v11, &v13, &v14);
  xpc_release(v14);
  v14 = 0;
  xpc_release(v13);
  v13 = 0;
  if (a3[24] == 1)
  {
    if (a3[23] < 0)
    {
      a3 = *a3;
    }

    v9 = xpc_string_create(a3);
    if (!v9)
    {
      v9 = xpc_null_create();
    }

    v11 = v6;
    v12 = "UnsupportedVendorName";
    sub_10000F688(&v11, &v9, &object);
    xpc_release(object);
    object = 0;
    xpc_release(v9);
    v9 = 0;
  }

  v7 = xpc_int64_create(0);
  if (!v7)
  {
    v7 = xpc_null_create();
  }

  v11 = v6;
  v12 = "phase";
  sub_10000F688(&v11, &v7, &v8);
  xpc_release(v8);
  v8 = 0;
  xpc_release(v7);
}

void sub_1002E10E8(uint64_t a1, uint64_t a2)
{
  v11 = xpc_int64_create(*(a2 + 72));
  if (!v11)
  {
    v11 = xpc_null_create();
  }

  v4 = a1 + 32;
  v9 = v4;
  v10 = "ChatbotMsgTech";
  sub_10000F688(&v9, &v11, &v12);
  xpc_release(v12);
  v12 = 0;
  xpc_release(v11);
  v11 = 0;
  v7 = xpc_BOOL_create(*(a2 + 80));
  if (!v7)
  {
    v7 = xpc_null_create();
  }

  v9 = v4;
  v10 = "ChatbotPrivacyDisable";
  sub_10000F688(&v9, &v7, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v7);
  v7 = 0;
  v5 = xpc_BOOL_create(*(a2 + 81));
  if (!v5)
  {
    v5 = xpc_null_create();
  }

  v9 = v4;
  v10 = "ChatbotIdentityInEnrichedSearch";
  sub_10000F688(&v9, &v5, &v6);
  xpc_release(v6);
  v6 = 0;
  xpc_release(v5);
}

void sub_1002E1228(uint64_t a1, uint64_t a2, int *a3)
{
  v33 = 0;
  sub_1007025BC(a3, &v33);
  if (xpc_get_type(v33) != &_xpc_type_dictionary)
  {
    goto LABEL_25;
  }

  applier[0] = _NSConcreteStackBlock;
  applier[1] = 0x40000000;
  applier[2] = sub_1002E16A0;
  applier[3] = &unk_101E3E120;
  applier[4] = a1;
  xpc_dictionary_apply(v33, applier);
  v31 = 0;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  *__p = 0u;
  v20 = 0u;
  v17 = 0u;
  *__src = 0u;
  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  sub_10000C320(&v14);
  sub_100701DAC(&v15, a3);
  v6 = *(*(**(a1 + 64) + 16))(*(a1 + 64), *(a1 + 72));
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    if ((BYTE8(v21) & 0x10) != 0)
    {
      v8 = v21;
      if (v21 < __src[1])
      {
        *&v21 = __src[1];
        v8 = __src[1];
      }

      v9 = __src[0];
    }

    else
    {
      if ((BYTE8(v21) & 8) == 0)
      {
        v7 = 0;
        v13 = 0;
LABEL_16:
        *(&__dst + v7) = 0;
        p_dst = &__dst;
        if (v13 < 0)
        {
          p_dst = __dst;
        }

        *buf = 136446210;
        v35 = p_dst;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Submitting metric: %{public}s", buf, 0xCu);
        if (v13 < 0)
        {
          operator delete(__dst);
        }

        goto LABEL_20;
      }

      v9 = *(&v16 + 1);
      v8 = *(&v17 + 1);
    }

    v7 = v8 - v9;
    if ((v8 - v9) >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_1000A2378();
    }

    if (v7 >= 0x17)
    {
      operator new();
    }

    v13 = v8 - v9;
    if (v7)
    {
      memmove(&__dst, v9, v7);
    }

    goto LABEL_16;
  }

LABEL_20:
  sub_100702C08(a3, &__dst);
  sub_100A9B39C(a1 + 40, a2, &__dst);
  if (v13 < 0)
  {
    operator delete(__dst);
  }

  *&v15 = v11;
  if (SHIBYTE(v20) < 0)
  {
    operator delete(__p[1]);
  }

  std::locale::~locale(&v16);
  std::iostream::~basic_iostream();
  std::ios::~ios();
LABEL_25:
  xpc_release(v33);
}

void sub_1002E1620(_Unwind_Exception *a1, uint64_t a2, void *__p, uint64_t a4, int a5, __int16 a6, char a7, char a8, char a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  std::ios::~ios();
  xpc_release(*(v24 - 120));
  _Unwind_Resume(a1);
}

uint64_t sub_1002E16A0(uint64_t a1, uint64_t a2, xpc_object_t object)
{
  v4 = *(a1 + 32);
  v7 = object;
  if (object)
  {
    xpc_retain(object);
  }

  else
  {
    v7 = xpc_null_create();
  }

  v6[0] = v4 + 32;
  v6[1] = a2;
  sub_10000F688(v6, &v7, &objecta);
  xpc_release(objecta);
  objecta = 0;
  xpc_release(v7);
  return 1;
}

void sub_1002E1724(uint64_t a1, BOOL value)
{
  v4 = xpc_BOOL_create(value);
  if (!v4)
  {
    v4 = xpc_null_create();
  }

  v3[0] = a1 + 32;
  v3[1] = "IsSignedSipEnabled";
  sub_10000F688(v3, &v4, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v4);
}

void sub_1002E17A8(uint64_t a1, BOOL value)
{
  v4 = xpc_BOOL_create(value);
  if (!v4)
  {
    v4 = xpc_null_create();
  }

  v3[0] = a1 + 32;
  v3[1] = "IsEncrypted";
  sub_10000F688(v3, &v4, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v4);
}

void sub_1002E182C(uint64_t a1, BOOL value)
{
  v4 = xpc_BOOL_create(value);
  if (!v4)
  {
    v4 = xpc_null_create();
  }

  v3[0] = a1 + 32;
  v3[1] = "IsPush";
  sub_10000F688(v3, &v4, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v4);
}

void sub_1002E18B0(uint64_t a1, BOOL value)
{
  v4 = xpc_BOOL_create(value);
  if (!v4)
  {
    v4 = xpc_null_create();
  }

  v3[0] = a1 + 32;
  v3[1] = "configWPushEnabled";
  sub_10000F688(v3, &v4, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v4);
}

void sub_1002E1934(uint64_t a1, BOOL value)
{
  v4 = xpc_BOOL_create(value);
  if (!v4)
  {
    v4 = xpc_null_create();
  }

  v3[0] = a1 + 32;
  v3[1] = "IsPR";
  sub_10000F688(v3, &v4, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v4);
}

_DWORD *sub_1002E19DC(int a1)
{
  result = malloc_type_calloc(0x10uLL, 1uLL, 0x1020040EDED9539uLL);
  if (result)
  {
    result[3] = a1;
  }

  return result;
}

void sub_1002E1A20(uint64_t *a1)
{
  if (a1)
  {
    v2 = *a1;
    if (*a1)
    {
      do
      {
        v3 = *(v2 + 16);
        if (*v2)
        {
          free(*v2);
        }

        free(v2);
        v2 = v3;
      }

      while (v3);
    }

    free(a1);
  }
}

uint64_t sub_1002E1A8C(uint64_t *a1, char a2, unsigned int a3, const void *a4, unsigned int a5, int a6)
{
  if (!a1 || !a4 && a5 || a4 && !a5)
  {
    return 1;
  }

  v13 = a5 + 16;
  v14 = malloc_type_malloc(a5 + 16, 0x100004077774924uLL);
  if (!v14)
  {
    return 2;
  }

  v15 = v14;
  if (a3 > 0x1E)
  {
    v18 = 0;
    v39 = 0;
    do
    {
      *(&v39 + v18++) = a3 & 0x7F;
      v19 = a3 > 0x7F;
      a3 >>= 7;
    }

    while (v19);
    v20 = v14;
    if (v13 <= v18)
    {
      goto LABEL_19;
    }

    *v14 = (a2 << 6) | (32 * (a6 != 0)) | 0x1F;
    v17 = v14 + 1;
    if (v18 != 1)
    {
      v21 = v18 - 1;
      do
      {
        *v17++ = *(&v39 + v21--) | 0x80;
      }

      while (v21);
    }

    v16 = v39;
  }

  else
  {
    if (!v13)
    {
LABEL_39:
      free(v14);
      return 3;
    }

    v16 = (a2 << 6) | (32 * (a6 != 0)) | a3;
    v17 = v14;
  }

  *v17 = v16;
  v20 = v17 + 1;
LABEL_19:
  v22 = v20 - v14;
  if (v20 == v14)
  {
    goto LABEL_39;
  }

  v23 = &v14[v22];
  if (a5 > 0x7E)
  {
    v25 = 0;
    v26 = v13 - v22;
    v39 = 0;
    v27 = a5;
    do
    {
      *(&v39 + v25++) = v27;
      v19 = v27 > 0xFF;
      v27 >>= 8;
    }

    while (v19);
    LODWORD(v24) = v23;
    if (v26 > v25)
    {
      *v23 = v25 | 0x80;
      v24 = v23 + 1;
      do
      {
        *v24++ = *(&v39 + --v25);
      }

      while (v25);
    }
  }

  else
  {
    LODWORD(v24) = v14 + v22;
    if (v13 != v22)
    {
      *v23 = a5;
      LODWORD(v24) = v23 + 1;
    }
  }

  if (v24 == v23)
  {
    goto LABEL_39;
  }

  v28 = v24;
  if (a5)
  {
    memcpy(&v23[v24 - v23], a4, a5);
    v28 += a5;
  }

  v29 = malloc_type_calloc(0x18uLL, 1uLL, 0x1030040B20C17F8uLL);
  if (!v29)
  {
    free(v15);
    return 2;
  }

  v30 = v29;
  v31 = v28 - v15;
  *v29 = v15;
  v29[2] = v28 - v15;
  v32 = *a1;
  if (*a1)
  {
    if (*(a1 + 3))
    {
      v33 = *(v32 + 8);
      if (v31 >= v33)
      {
        v34 = v33;
      }

      else
      {
        v34 = v31;
      }

      if (memcmp(v15, *v32, v34) < 0)
      {
        goto LABEL_38;
      }

      for (i = *(v32 + 16); i; i = *(i + 16))
      {
        v37 = *(i + 8);
        if (v37 >= v31)
        {
          v38 = v31;
        }

        else
        {
          v38 = v37;
        }

        if ((memcmp(*i, v15, v38) & 0x80000000) == 0)
        {
          break;
        }

        v32 = i;
      }
    }

    else
    {
      for (j = *(v32 + 16); j; j = *(j + 16))
      {
        v32 = j;
      }

      i = 0;
    }

    *(v32 + 16) = v30;
    *(v30 + 16) = i;
    goto LABEL_52;
  }

LABEL_38:
  *(v30 + 16) = v32;
  *a1 = v30;
LABEL_52:
  result = 0;
  *(a1 + 2) += v31;
  return result;
}

uint64_t sub_1002E1D88(uint64_t *a1, void *a2, unsigned int *a3)
{
  if (!a1)
  {
    return 1;
  }

  v6 = *(a1 + 2);
  v7 = malloc_type_malloc(v6, 0x100004077774924uLL);
  if (!v7)
  {
    return 2;
  }

  v8 = v7;
  v9 = *a1;
  if (*a1)
  {
    v10 = v7;
    do
    {
      memcpy(v10, *v9, *(v9 + 8));
      v10 += *(v9 + 8);
      v9 = *(v9 + 16);
    }

    while (v9);
  }

  if (a3)
  {
    *a3 = v6;
  }

  if (a2)
  {
    result = 0;
    *a2 = v8;
  }

  else
  {
    free(v8);
    return 0;
  }

  return result;
}

uint64_t sub_1002E1E4C(uint64_t *a1, uint64_t *a2, char a3, unsigned int a4)
{
  v9 = 0;
  v4 = 0xFFFFFFFFLL;
  if (a1 && a2)
  {
    v10 = 0;
    v4 = sub_1002E1D88(a1, &v9, &v10);
    if (!v4)
    {
      v4 = sub_1002E1A8C(a2, a3, a4, v9, v10, 1);
    }

    if (v9)
    {
      free(v9);
    }
  }

  return v4;
}

void *sGetCellularPlanSettingsDeviceLog(void)
{
  if ((atomic_load_explicit(&qword_101FBA1D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_101FBA1D8))
  {
    ctu::OsLogLogger::OsLogLogger(&unk_101FBA1D0, kCtLoggingSystemName, "cp.set");
    __cxa_guard_release(&qword_101FBA1D8);
  }

  return &unk_101FBA1D0;
}

void CellularPlanSettingsDevice::CellularPlanSettingsDevice(uint64_t a1, void *a2)
{
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *a1 = off_101E3E208;
  *(a1 + 8) = &off_101E3E6F8;
  *(a1 + 16) = off_101E3E730;
  *(a1 + 24) = off_101E3E758;
  *(a1 + 32) = off_101E3E7C0;
  *(a1 + 56) = *a2;
  v4 = a2[1];
  *(a1 + 64) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  CCPreferences::create(a1);
  *(a1 + 72) = v6;
  v5 = a2[1];
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  sub_100AAAE3C();
}

void sub_1002E20E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  v12 = v10[10];
  if (v12)
  {
    sub_100004A34(v12);
  }

  v13 = v10[8];
  if (v13)
  {
    sub_100004A34(v13);
  }

  v14 = v10[6];
  if (v14)
  {
    std::__shared_weak_count::__release_weak(v14);
  }

  TMKXPCServer.shutdown()();
  TMKXPCServer.shutdown()();
  TMKXPCServer.shutdown()();
  TMKXPCServer.shutdown()();
  TMKXPCServer.shutdown()();
  _Unwind_Resume(a1);
}

uint64_t CellularPlanSettingsDevice::supportsHydra(Registry **this)
{
  result = capabilities::ct::supportsHydra(this);
  if (!result)
  {
    return result;
  }

  ServiceMap = Registry::getServiceMap(this[7]);
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
  v14 = v5;
  v9 = sub_100009510(&v4[1].__m_.__sig, &v14);
  if (!v9)
  {
    v11 = 0;
    goto LABEL_9;
  }

  v11 = v9[3];
  v10 = v9[4];
  if (!v10)
  {
LABEL_9:
    std::mutex::unlock(v4);
    v10 = 0;
    v12 = 1;
    goto LABEL_10;
  }

  atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v4);
  atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v10);
  v12 = 0;
LABEL_10:
  v13 = (*(*v11 + 128))(v11);
  if ((v12 & 1) == 0)
  {
    sub_100004A34(v10);
  }

  return (~v13 & 0x100000010) != 0;
}

void sub_1002E228C(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CellularPlanSettingsDevice::getVinylSlotId(CellularPlanSettingsDevice *this)
{
  capabilities::ct::defaultVinylSlotID(this);

  return VinylSlotIdFromCapabilities();
}

void CellularPlanSettingsDevice::getMatchingCarrierBundleValuesByKeys(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, const void **a7@<X6>, CFDictionaryRef *a8@<X8>)
{
  v9 = *(a2 + 23);
  if ((v9 & 0x80u) != 0)
  {
    v9 = *(a2 + 8);
  }

  if (!v9)
  {
    goto LABEL_11;
  }

  v10 = *(a3 + 23);
  if ((v10 & 0x80u) != 0)
  {
    v10 = *(a3 + 8);
  }

  if (!v10)
  {
LABEL_11:
    *a8 = 0;
    return;
  }

  v40 = 0u;
  v41 = 0u;
  MCC::MCC();
  *v38 = 0u;
  v39 = 0u;
  MNC::MNC();
  v36[0] = 0;
  v36[1] = 0;
  v37 = 0;
  formPLMN(&v40, v38);
  *v35 = 0;
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    v17 = *v35;
    *v35 = Mutable;
    *&v45 = v17;
    sub_1000296E0(&v45);
  }

  if (SHIBYTE(v37) < 0)
  {
    sub_100005F2C(__p, v36[0], v36[1]);
  }

  else
  {
    *__p = *v36;
    v33 = v37;
  }

  if (SHIBYTE(v33) < 0)
  {
    sub_100005F2C(&__dst, __p[0], __p[1]);
  }

  else
  {
    __dst = *__p;
    v44 = v33;
  }

  v42 = 0;
  if (SHIBYTE(v44) < 0)
  {
    sub_100005F2C(&v45, __dst, *(&__dst + 1));
  }

  else
  {
    v45 = __dst;
    v46 = v44;
  }

  v47 = 0;
  if (ctu::cf::convert_copy())
  {
    v18 = v42;
    v42 = v47;
    v48 = v18;
    sub_100005978(&v48);
  }

  if (SHIBYTE(v46) < 0)
  {
    operator delete(v45);
  }

  v34 = v42;
  v42 = 0;
  sub_100005978(&v42);
  if (SHIBYTE(v44) < 0)
  {
    operator delete(__dst);
  }

  sub_1001768B8(*v35, qword_101FCB6F0, v34);
  sub_100005978(&v34);
  if (SHIBYTE(v33) < 0)
  {
    operator delete(__p[0]);
  }

  if (*(a4 + 23) < 0)
  {
    sub_100005F2C(v30, *a4, *(a4 + 8));
  }

  else
  {
    *v30 = *a4;
    v31 = *(a4 + 16);
  }

  if (SHIBYTE(v31) < 0)
  {
    sub_100005F2C(&__dst, v30[0], v30[1]);
  }

  else
  {
    __dst = *v30;
    v44 = v31;
  }

  v42 = 0;
  if (SHIBYTE(v44) < 0)
  {
    sub_100005F2C(&v45, __dst, *(&__dst + 1));
  }

  else
  {
    v45 = __dst;
    v46 = v44;
  }

  v47 = 0;
  if (ctu::cf::convert_copy())
  {
    v19 = v42;
    v42 = v47;
    v48 = v19;
    sub_100005978(&v48);
  }

  if (SHIBYTE(v46) < 0)
  {
    operator delete(v45);
  }

  v34 = v42;
  v42 = 0;
  sub_100005978(&v42);
  if (SHIBYTE(v44) < 0)
  {
    operator delete(__dst);
  }

  sub_1001768B8(*v35, @"GID1", v34);
  sub_100005978(&v34);
  if (SHIBYTE(v31) < 0)
  {
    operator delete(v30[0]);
  }

  if (*(a5 + 23) < 0)
  {
    sub_100005F2C(v28, *a5, *(a5 + 8));
  }

  else
  {
    *v28 = *a5;
    v29 = *(a5 + 16);
  }

  if (SHIBYTE(v29) < 0)
  {
    sub_100005F2C(&__dst, v28[0], v28[1]);
  }

  else
  {
    __dst = *v28;
    v44 = v29;
  }

  v42 = 0;
  if (SHIBYTE(v44) < 0)
  {
    sub_100005F2C(&v45, __dst, *(&__dst + 1));
  }

  else
  {
    v45 = __dst;
    v46 = v44;
  }

  v47 = 0;
  if (ctu::cf::convert_copy())
  {
    v20 = v42;
    v42 = v47;
    v48 = v20;
    sub_100005978(&v48);
  }

  if (SHIBYTE(v46) < 0)
  {
    operator delete(v45);
  }

  v34 = v42;
  v42 = 0;
  sub_100005978(&v42);
  if (SHIBYTE(v44) < 0)
  {
    operator delete(__dst);
  }

  sub_1001768B8(*v35, @"GID2", v34);
  sub_100005978(&v34);
  if (SHIBYTE(v29) < 0)
  {
    operator delete(v28[0]);
  }

  if (*(a6 + 23) < 0)
  {
    v21 = *(a6 + 8);
    if (v21)
    {
      sub_100005F2C(v26, *a6, v21);
      goto LABEL_66;
    }
  }

  else if (*(a6 + 23))
  {
    *v26 = *a6;
    v27 = *(a6 + 16);
LABEL_66:
    if (SHIBYTE(v27) < 0)
    {
      sub_100005F2C(&__dst, v26[0], v26[1]);
    }

    else
    {
      __dst = *v26;
      v44 = v27;
    }

    v42 = 0;
    if (SHIBYTE(v44) < 0)
    {
      sub_100005F2C(&v45, __dst, *(&__dst + 1));
    }

    else
    {
      v45 = __dst;
      v46 = v44;
    }

    v47 = 0;
    if (ctu::cf::convert_copy())
    {
      v22 = v42;
      v42 = v47;
      v48 = v22;
      sub_100005978(&v48);
    }

    if (SHIBYTE(v46) < 0)
    {
      operator delete(v45);
    }

    v23 = v42;
    v34 = v42;
    v42 = 0;
    sub_100005978(&v42);
    if (SHIBYTE(v44) < 0)
    {
      operator delete(__dst);
    }

    sub_1001768B8(*v35, qword_101FCB6E8, v23);
    sub_100005978(&v34);
    if (SHIBYTE(v27) < 0)
    {
      operator delete(v26[0]);
    }
  }

  sub_100010180(&v25, v35);
  sub_10006F22C(&v24, a7);
  sub_1002E2AC4((a1 + 56), &v25, &v24, a8);
  sub_100010250(&v24);
  sub_10001021C(&v25);
  sub_1000296E0(v35);
  if (SHIBYTE(v37) < 0)
  {
    operator delete(v36[0]);
  }

  if (SHIBYTE(v39) < 0)
  {
    operator delete(v38[1]);
  }

  if (SHIBYTE(v41) < 0)
  {
    operator delete(*(&v40 + 1));
  }
}

void sub_1002E28D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, char a38, int a39, const void *a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46, uint64_t a47, void *a48, uint64_t a49, int a50, __int16 a51, char a52, char a53)
{
  sub_100005978((v53 - 152));
  if (*(v53 - 121) < 0)
  {
    operator delete(*(v53 - 144));
  }

  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_1000296E0(&a40);
  if (a46 < 0)
  {
    operator delete(a41);
  }

  if (a53 < 0)
  {
    operator delete(a48);
  }

  if (*(v53 - 161) < 0)
  {
    operator delete(*(v53 - 184));
  }

  _Unwind_Resume(a1);
}

void sub_1002E2AC4(Registry **a1@<X0>, const void **a2@<X1>, CFArrayRef *a3@<X2>, CFDictionaryRef *a4@<X8>)
{
  v60 = 0;
  v58 = 0u;
  *v59 = 0u;
  v56 = 0u;
  *v57 = 0u;
  *v54 = 0u;
  *v55 = 0u;
  *v52 = 0u;
  v53 = 0u;
  *v51 = 0u;
  ServiceMap = Registry::getServiceMap(*a1);
  v9 = ServiceMap;
  if (v10 < 0)
  {
    v11 = (v10 & 0x7FFFFFFFFFFFFFFFLL);
    v12 = 5381;
    do
    {
      v10 = v12;
      v13 = *v11++;
      v12 = (33 * v12) ^ v13;
    }

    while (v13);
  }

  std::mutex::lock(ServiceMap);
  v41[0] = v10;
  v14 = sub_100009510(&v9[1].__m_.__sig, v41);
  if (v14)
  {
    v16 = v14[3];
    v15 = v14[4];
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v9);
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v15);
      v17 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v16 = 0;
  }

  std::mutex::unlock(v9);
  v15 = 0;
  v17 = 1;
LABEL_9:
  sub_100010024(&v50, a2);
  (*(*v16 + 32))(v51, v16, &v50);
  sub_10001021C(&v50);
  if ((v17 & 1) == 0)
  {
    sub_100004A34(v15);
  }

  __dst[0] = 0;
  __dst[1] = 0;
  v49 = 0;
  if (SHIBYTE(v60) < 0)
  {
    sub_100005F2C(__dst, v59[0], v59[1]);
  }

  else
  {
    *__dst = *v59;
    v49 = v60;
  }

  *v46 = 0u;
  v47 = 0u;
  *v44 = 0u;
  v45 = 0u;
  *v43 = 0u;
  *v41 = 0u;
  memset(v42, 0, sizeof(v42));
  sub_10004964C(v41, v51);
  v18 = HIBYTE(v49);
  if (v49 < 0)
  {
    v18 = __dst[1];
  }

  if (v18)
  {
    theDict = 0;
    Registry::getFileSystemInterface(&v64, *a1);
    (*(*v64 + 152))(&theDict);
    if (*(&v64 + 1))
    {
      sub_100004A34(*(&v64 + 1));
    }

    if (theDict && *a3)
    {
      v39 = 0;
      Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      if (Mutable)
      {
        v21 = v39;
        v39 = Mutable;
        *&v64 = v21;
        sub_1000296E0(&v64);
      }

      v67 = 0;
      *&v62 = 0;
      if (ctu::cf::convert_copy(&v62, off_101FB1820, 0x8000100, kCFAllocatorDefault, v20))
      {
        v22 = v67;
        v67 = v62;
        *&v64 = v22;
        sub_100005978(&v64);
      }

      v38 = v67;
      v67 = 0;
      sub_100005978(&v67);
      v23 = v38;
      if (SHIBYTE(v42[0]) < 0)
      {
        sub_100005F2C(__p, v41[0], v41[1]);
      }

      else
      {
        *__p = *v41;
        v36 = v42[0];
      }

      if (SHIBYTE(v36) < 0)
      {
        sub_100005F2C(&v62, __p[0], __p[1]);
      }

      else
      {
        v62 = *__p;
        v63 = v36;
      }

      v61 = 0;
      if (SHIBYTE(v63) < 0)
      {
        sub_100005F2C(&v64, v62, *(&v62 + 1));
      }

      else
      {
        v64 = v62;
        v65 = v63;
      }

      v66 = 0;
      if (ctu::cf::convert_copy())
      {
        v24 = v61;
        v61 = v66;
        v67 = v24;
        sub_100005978(&v67);
      }

      if (SHIBYTE(v65) < 0)
      {
        operator delete(v64);
      }

      v37 = v61;
      v61 = 0;
      sub_100005978(&v61);
      if (SHIBYTE(v63) < 0)
      {
        operator delete(v62);
      }

      sub_1001768B8(v39, v23, v37);
      sub_100005978(&v37);
      if (SHIBYTE(v36) < 0)
      {
        operator delete(__p[0]);
      }

      sub_100005978(&v38);
      Count = CFArrayGetCount(*a3);
      if (Count >= 1)
      {
        for (i = 0; i != Count; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*a3, i);
          v28 = ValueAtIndex;
          if (ValueAtIndex)
          {
            v29 = CFGetTypeID(ValueAtIndex);
            if (v29 != CFStringGetTypeID())
            {
              v28 = 0;
            }
          }

          Value = CFDictionaryGetValue(theDict, v28);
          if (Value)
          {
            sub_1002F2708(v39, v28, Value);
          }

          else if (CFStringCompare(v28, @"BundleIdentifier", 0) == kCFCompareEqualTo)
          {
            v38 = 0;
            if (SHIBYTE(v42[3]) < 0)
            {
              sub_100005F2C(v33, v42[1], v42[2]);
            }

            else
            {
              *v33 = *&v42[1];
              v34 = v42[3];
            }

            if (SHIBYTE(v34) < 0)
            {
              sub_100005F2C(&v62, v33[0], v33[1]);
            }

            else
            {
              v62 = *v33;
              v63 = v34;
            }

            v61 = 0;
            if (SHIBYTE(v63) < 0)
            {
              sub_100005F2C(&v64, v62, *(&v62 + 1));
            }

            else
            {
              v64 = v62;
              v65 = v63;
            }

            v66 = 0;
            if (ctu::cf::convert_copy())
            {
              v31 = v61;
              v61 = v66;
              v67 = v31;
              sub_100005978(&v67);
            }

            if (SHIBYTE(v65) < 0)
            {
              operator delete(v64);
            }

            v38 = v61;
            v61 = 0;
            sub_100005978(&v61);
            if (SHIBYTE(v63) < 0)
            {
              operator delete(v62);
            }

            if (SHIBYTE(v34) < 0)
            {
              operator delete(v33[0]);
            }

            sub_1001768B8(v39, v28, v38);
            sub_100005978(&v38);
          }
        }
      }

      if (CFDictionaryGetCount(v39))
      {
        v32 = v39;
        v39 = 0;
      }

      else
      {
        v32 = 0;
      }

      *a4 = v32;
      sub_1000296E0(&v39);
    }

    else
    {
      *a4 = 0;
    }

    sub_10001021C(&theDict);
  }

  else
  {
    *a4 = 0;
  }

  if (SBYTE7(v47) < 0)
  {
    operator delete(v46[0]);
  }

  if (SHIBYTE(v45) < 0)
  {
    operator delete(v44[1]);
  }

  if (SHIBYTE(v44[0]) < 0)
  {
    operator delete(v43[0]);
  }

  if (SHIBYTE(v42[3]) < 0)
  {
    operator delete(v42[1]);
  }

  if (SHIBYTE(v42[0]) < 0)
  {
    operator delete(v41[0]);
  }

  if (SHIBYTE(v49) < 0)
  {
    operator delete(__dst[0]);
  }

  if (SHIBYTE(v60) < 0)
  {
    operator delete(v59[0]);
  }

  if (SBYTE7(v58) < 0)
  {
    operator delete(v57[0]);
  }

  if (SHIBYTE(v56) < 0)
  {
    operator delete(v55[1]);
  }

  if (SHIBYTE(v55[0]) < 0)
  {
    operator delete(v54[0]);
  }

  if (SHIBYTE(v53) < 0)
  {
    operator delete(v52[1]);
  }

  if (SHIBYTE(v52[0]) < 0)
  {
    operator delete(v51[0]);
  }
}

void sub_1002E3148(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, const void *a21, const void *a22, const void *a23, __int16 a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, __int16 a47)
{
  sub_100005978((v47 - 168));
  if (*(v47 - 137) < 0)
  {
    operator delete(*(v47 - 160));
  }

  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_100005978(&a21);
  sub_1000296E0(&a22);
  sub_10001021C(&a23);
  sub_10016C520(&a24);
  if (a45 < 0)
  {
    operator delete(a40);
  }

  sub_1002F27AC(&a47);
  _Unwind_Resume(a1);
}

const void **CellularPlanSettingsDevice::createCountryBundleLookupInfo@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  values = @"HomeBundleIdentifier";
  v14 = CFArrayCreate(kCFAllocatorDefault, &values, 1, &kCFTypeArrayCallBacks);
  theDict = 0;
  v23 = v14;
  v21 = v14;
  if (v14)
  {
    CFRetain(v14);
  }

  CellularPlanSettingsDevice::getMatchingCarrierBundleValuesByKeys(a1, a2, a3, a4, a5, a6, &v21, &theDict);
  sub_100010250(&v21);
  if (!theDict)
  {
    v17 = *sGetCellularPlanSettingsDeviceLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a6 + 23) >= 0)
      {
        v18 = a6;
      }

      else
      {
        v18 = *a6;
      }

      goto LABEL_16;
    }

LABEL_17:
    *a7 = 0;
    goto LABEL_18;
  }

  if (!CFDictionaryContainsKey(theDict, @"HomeBundleIdentifier"))
  {
    v17 = *sGetCellularPlanSettingsDeviceLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a6 + 23) >= 0)
      {
        v18 = a6;
      }

      else
      {
        v18 = *a6;
      }

LABEL_16:
      *buf = 138412546;
      *&buf[4] = @"HomeBundleIdentifier";
      v25 = 2080;
      v26 = v18;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I %@ is not defined for (%s)", buf, 0x16u);
      goto LABEL_17;
    }

    goto LABEL_17;
  }

  Value = CFDictionaryGetValue(theDict, @"HomeBundleIdentifier");
  *v20 = 0;
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    *v20 = Mutable;
    *buf = 0;
    sub_1000296E0(buf);
    Mutable = *v20;
  }

  sub_1001768B8(Mutable, @"HomeBundleIdentifier", Value);
  sub_100010180(a7, v20);
  sub_1000296E0(v20);
LABEL_18:
  sub_1000296E0(&theDict);
  return sub_100010250(&v23);
}

void sub_1002E3504(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, const void *);
  sub_1000296E0(va);
  sub_100010250(va1);
  _Unwind_Resume(a1);
}

void CellularPlanSettingsDevice::getISOAlpha2CountryCodes(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, std::string::size_type a6@<X5>, uint64_t a7@<X8>)
{
  v14 = *(a1 + 56);
  v15 = *(a1 + 64);
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  ServiceMap = Registry::getServiceMap(v14);
  v17 = ServiceMap;
  if ((v18 & 0x8000000000000000) != 0)
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
  __p.__r_.__value_.__r.__words[0] = v18;
  v22 = sub_100009510(&v17[1].__m_.__sig, &__p);
  v43 = a2;
  v44 = a3;
  if (!v22)
  {
    v24 = 0;
LABEL_11:
    std::mutex::unlock(v17);
    v25 = 0;
    v26 = 1;
    if (!v15)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v24 = v22[3];
  v23 = v22[4];
  if (!v23)
  {
    goto LABEL_11;
  }

  atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v17);
  atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
  v25 = v23;
  sub_100004A34(v23);
  v26 = 0;
  if (v15)
  {
LABEL_12:
    sub_100004A34(v15);
  }

LABEL_13:
  if (v24)
  {
    cf = 0;
    CellularPlanSettingsDevice::createCountryBundleLookupInfo(a1, v43, v44, a4, a5, a6, &cf);
    if (!cf)
    {
      v39 = *sGetCellularPlanSettingsDeviceLog();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        if (*(a6 + 23) >= 0)
        {
          v40 = a6;
        }

        else
        {
          v40 = *a6;
        }

        LODWORD(__p.__r_.__value_.__l.__data_) = 136315138;
        *(__p.__r_.__value_.__r.__words + 4) = v40;
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "#I no country bundle for %s", &__p, 0xCu);
      }

      *(a7 + 16) = 0;
      *(a7 + 8) = 0;
      *a7 = a7 + 8;
LABEL_50:
      sub_10001021C(&cf);
      if (v26)
      {
        return;
      }

      goto LABEL_51;
    }

    v45 = cf;
    v46 = 0;
    CFRetain(cf);
    buf.__r_.__value_.__r.__words[0] = @"ISOAlpha2CountryCode";
    memset(&__p, 0, sizeof(__p));
    sub_10005B328(&__p, &buf, &buf.__r_.__value_.__l.__size_, 1uLL);
    (*(*v24 + 304))(&v46, v24, &v45, &__p);
    if (__p.__r_.__value_.__r.__words[0])
    {
      __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    sub_10001021C(&v45);
    if (v46)
    {
      TypeID = CFArrayGetTypeID();
      if (TypeID == CFGetTypeID(v46))
      {
        v28 = v26;
        v29 = v25;
        v30 = v46;
        Count = CFArrayGetCount(v46);
        *(a7 + 8) = 0;
        *(a7 + 16) = 0;
        *a7 = a7 + 8;
        if (Count >= 1)
        {
          for (i = 0; i != Count; ++i)
          {
            memset(&buf, 0, sizeof(buf));
            CFArrayGetValueAtIndex(v30, i);
            memset(&__p, 0, sizeof(__p));
            ctu::cf::assign();
            buf = __p;
            sub_100073EE8(a7, &buf, &buf);
            if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(buf.__r_.__value_.__l.__data_);
            }
          }
        }

        v33 = *sGetCellularPlanSettingsDeviceLog();
        v26 = v28;
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          v34 = *(a6 + 23);
          v35 = *a6;
          sub_100074B94(*a7, (a7 + 8), ",", 1, &__p);
          if (v34 >= 0)
          {
            v36 = a6;
          }

          else
          {
            v36 = v35;
          }

          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p.__r_.__value_.__r.__words[0];
          }

          LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
          *(buf.__r_.__value_.__r.__words + 4) = v36;
          WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
          *(&buf.__r_.__value_.__r.__words[1] + 6) = p_p;
          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "#I (%s) country codes : (%s)", &buf, 0x16u);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          v26 = v28;
        }

        goto LABEL_49;
      }

      CellularPlanSettingsDeviceLog = sGetCellularPlanSettingsDeviceLog();
      if (os_log_type_enabled(*CellularPlanSettingsDeviceLog, OS_LOG_TYPE_ERROR))
      {
        sub_10176A094();
      }
    }

    else
    {
      v41 = sGetCellularPlanSettingsDeviceLog();
      if (os_log_type_enabled(*v41, OS_LOG_TYPE_ERROR))
      {
        sub_10176A104();
      }
    }

    v29 = v25;
    *(a7 + 16) = 0;
    *(a7 + 8) = 0;
    *a7 = a7 + 8;
LABEL_49:
    sub_10000A1EC(&v46);
    v25 = v29;
    goto LABEL_50;
  }

  v38 = sGetCellularPlanSettingsDeviceLog();
  if (os_log_type_enabled(*v38, OS_LOG_TYPE_ERROR))
  {
    sub_10176A174();
  }

  *(a7 + 16) = 0;
  *(a7 + 8) = 0;
  *a7 = a7 + 8;
  if ((v26 & 1) == 0)
  {
LABEL_51:
    sub_100004A34(v25);
  }
}

void sub_1002E3A08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, int a13, const void *a14, const void *a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  sub_100009970(v28, *(v28 + 8));
  sub_10000A1EC(&a14);
  sub_10001021C(&a15);
  if ((v30 & 1) == 0)
  {
    sub_100004A34(v29);
  }

  _Unwind_Resume(a1);
}

uint64_t CellularPlanSettingsDevice::geteSIMLimitForChina(CellularPlanSettingsDevice *this)
{
  v2 = *(this + 7);
  v3 = *(this + 8);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  ServiceMap = Registry::getServiceMap(v2);
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
  __p[0] = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, __p);
  if (!v10)
  {
    v12 = 0;
LABEL_11:
    std::mutex::unlock(v5);
    v11 = 0;
    v13 = 1;
    if (!v3)
    {
      goto LABEL_13;
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
  if (v3)
  {
LABEL_12:
    sub_100004A34(v3);
  }

LABEL_13:
  if (v12)
  {
    *v37 = 0;
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (Mutable)
    {
      v15 = *v37;
      *v37 = Mutable;
      __p[0] = v15;
      sub_1000296E0(__p);
    }

    sub_1001768B8(*v37, @"HomeBundleIdentifier", @"com.apple.China");
    cf = 0;
    sub_100010180(&v35, v37);
    v39 = @"TotalAllowedeSIMCountOnDevice";
    memset(__p, 0, sizeof(__p));
    sub_10005B328(__p, &v39, __p, 1uLL);
    (*(*v12 + 304))(&cf, v12, &v35, __p);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    sub_10001021C(&v35);
    v39 = 0;
    sub_100010180(&v34, v37);
    v38 = @"AllowedInRegioneSIMCountOnDevice";
    memset(__p, 0, sizeof(__p));
    sub_10005B328(__p, &v38, &v39, 1uLL);
    (*(*v12 + 304))(&v39, v12, &v34, __p);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    sub_10001021C(&v34);
    v16 = *sGetCellularPlanSettingsDeviceLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(__p[0]) = 138412546;
      *(__p + 4) = cf;
      WORD2(__p[1]) = 2112;
      *(&__p[1] + 6) = v39;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I total:%@, china:%@", __p, 0x16u);
    }

    v33 = cf;
    if (cf && (CFRetain(cf), TypeID = CFNumberGetTypeID(), TypeID == CFGetTypeID(v33)))
    {
      v18 = CFGetTypeID(v33);
      if (v18 == CFNumberGetTypeID())
      {
        v20 = v33;
      }

      else
      {
        v20 = 0;
      }

      LODWORD(__p[0]) = 0;
      ctu::cf::assign(__p, v20, v19);
      v21 = __p[0];
    }

    else
    {
      v21 = 2;
    }

    sub_10000A1EC(&v33);
    v32 = v39;
    if (v39 && (CFRetain(v39), v22 = CFNumberGetTypeID(), v22 == CFGetTypeID(v32)))
    {
      v23 = CFGetTypeID(v32);
      if (v23 == CFNumberGetTypeID())
      {
        v25 = v32;
      }

      else
      {
        v25 = 0;
      }

      LODWORD(__p[0]) = 0;
      ctu::cf::assign(__p, v25, v24);
      v26 = LODWORD(__p[0]);
    }

    else
    {
      v26 = 2;
    }

    sub_10000A1EC(&v32);
    v27 = *sGetCellularPlanSettingsDeviceLog();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(__p[0]) = 67109376;
      HIDWORD(__p[0]) = v21;
      LOWORD(__p[1]) = 1024;
      *(&__p[1] + 2) = v26;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#I AllowedeSIMCountOnDevice=%u, AllowedeSIMCountInChina=%u", __p, 0xEu);
    }

    sub_10000A1EC(&v39);
    sub_10000A1EC(&cf);
    sub_1000296E0(v37);
    v28 = v26 << 32;
    v29 = v21;
    if ((v13 & 1) == 0)
    {
LABEL_37:
      sub_100004A34(v11);
    }
  }

  else
  {
    CellularPlanSettingsDeviceLog = sGetCellularPlanSettingsDeviceLog();
    if (os_log_type_enabled(*CellularPlanSettingsDeviceLog, OS_LOG_TYPE_ERROR))
    {
      sub_10176A174();
    }

    v28 = 0x200000000;
    v29 = 2;
    if ((v13 & 1) == 0)
    {
      goto LABEL_37;
    }
  }

  return v28 | v29;
}

void sub_1002E40A0()
{
  if (v0)
  {
    JUMPOUT(0x1002E4094);
  }

  JUMPOUT(0x1002E4098);
}

uint64_t CellularPlanSettingsDevice::hardwareSupportseSIMRestriction(CellularPlanSettingsDevice *this)
{
  v2 = *(this + 7);
  v3 = *(this + 8);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  ServiceMap = Registry::getServiceMap(v2);
  v5 = ServiceMap;
  if ((v6 & 0x8000000000000000) != 0)
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
  v17 = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, &v17);
  if (!v10)
  {
    v12 = 0;
LABEL_11:
    std::mutex::unlock(v5);
    v11 = 0;
    v13 = 1;
    if (!v3)
    {
      goto LABEL_13;
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
  if (v3)
  {
LABEL_12:
    sub_100004A34(v3);
  }

LABEL_13:
  v14 = (*(*v12 + 80))(v12);
  if (v14)
  {
    v15 = capabilities::ct::supportseSIMCountRestriction(v14);
    if (v13)
    {
      return v15;
    }

    goto LABEL_17;
  }

  v15 = 0;
  if ((v13 & 1) == 0)
  {
LABEL_17:
    sub_100004A34(v11);
  }

  return v15;
}

void sub_1002E41F8(_Unwind_Exception *exception_object)
{
  v3 = v2;
  if ((v3 & 1) == 0)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

const void **CellularPlanSettingsDevice::getMatchingCountryBundleValuesByKeys@<X0>(const void **result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, CFArrayRef *a4@<X3>, void *a5@<X8>)
{
  v6 = *(a2 + 23);
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a2 + 8);
  }

  if (!v6)
  {
    goto LABEL_10;
  }

  v7 = *(a3 + 23);
  if ((v7 & 0x80u) != 0)
  {
    v7 = *(a3 + 8);
  }

  if (!v7)
  {
LABEL_10:
    *a5 = 0;
    return result;
  }

  v9 = result;
  *v46 = 0;
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    v11 = *v46;
    *v46 = Mutable;
    v44[0] = v11;
    sub_1000296E0(v44);
  }

  *v44 = 0u;
  v45 = 0u;
  MCC::MCC();
  *v42 = 0u;
  v43 = 0u;
  MNC::MNC();
  v40[0] = 0;
  v40[1] = 0;
  v41 = 0;
  formPLMN(v44, v42);
  *__dst = *v40;
  v38 = 0;
  if (SHIBYTE(v38) < 0)
  {
    sub_100005F2C(&__p, __dst[0], __dst[1]);
  }

  else
  {
    __p = *__dst;
    v49 = v38;
  }

  v47 = 0;
  if (SHIBYTE(v49) < 0)
  {
    sub_100005F2C(&v50, __p, *(&__p + 1));
  }

  else
  {
    v50 = __p;
    v51 = v49;
  }

  v52 = 0;
  if (ctu::cf::convert_copy())
  {
    v12 = v47;
    v47 = v52;
    v53 = v12;
    sub_100005978(&v53);
  }

  if (SHIBYTE(v51) < 0)
  {
    operator delete(v50);
  }

  v39 = v47;
  v47 = 0;
  sub_100005978(&v47);
  if (SHIBYTE(v49) < 0)
  {
    operator delete(__p);
  }

  sub_1001768B8(*v46, qword_101FCB6F0, v39);
  sub_100005978(&v39);
  if (SHIBYTE(v38) < 0)
  {
    operator delete(__dst[0]);
  }

  v50 = 0uLL;
  v51 = 0;
  Count = CFArrayGetCount(*a4);
  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*a4, i);
      v16 = ValueAtIndex;
      if (ValueAtIndex)
      {
        v17 = CFGetTypeID(ValueAtIndex);
        if (v17 != CFStringGetTypeID())
        {
          v16 = 0;
        }
      }

      v18 = *(&v50 + 1);
      if (*(&v50 + 1) >= v51)
      {
        v20 = (*(&v50 + 1) - v50) >> 3;
        if ((v20 + 1) >> 61)
        {
          sub_1000CE3D4();
        }

        v21 = (v51 - v50) >> 2;
        if (v21 <= v20 + 1)
        {
          v21 = v20 + 1;
        }

        if (v51 - v50 >= 0x7FFFFFFFFFFFFFF8)
        {
          v22 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v22 = v21;
        }

        if (v22)
        {
          sub_10005B2E0(&v50, v22);
        }

        v23 = (8 * v20);
        *v23 = v16;
        v19 = 8 * v20 + 8;
        v24 = v23 - (*(&v50 + 1) - v50);
        memcpy(v24, v50, *(&v50 + 1) - v50);
        v25 = v50;
        *&v50 = v24;
        *(&v50 + 1) = v19;
        v51 = 0;
        if (v25)
        {
          operator delete(v25);
        }
      }

      else
      {
        **(&v50 + 1) = v16;
        v19 = v18 + 8;
      }

      *(&v50 + 1) = v19;
    }
  }

  ServiceMap = Registry::getServiceMap(v9[7]);
  v27 = ServiceMap;
  if (v28 < 0)
  {
    v29 = (v28 & 0x7FFFFFFFFFFFFFFFLL);
    v30 = 5381;
    do
    {
      v28 = v30;
      v31 = *v29++;
      v30 = (33 * v30) ^ v31;
    }

    while (v31);
  }

  std::mutex::lock(ServiceMap);
  *&__p = v28;
  v32 = sub_100009510(&v27[1].__m_.__sig, &__p);
  if (!v32)
  {
    v34 = 0;
    goto LABEL_50;
  }

  v34 = v32[3];
  v33 = v32[4];
  if (!v33)
  {
LABEL_50:
    std::mutex::unlock(v27);
    v33 = 0;
    v35 = 1;
    goto LABEL_51;
  }

  atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v27);
  atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v33);
  v35 = 0;
LABEL_51:
  sub_100010180(&v36, v46);
  (*(*v34 + 304))(v34, &v36, &v50);
  sub_10001021C(&v36);
  if ((v35 & 1) == 0)
  {
    sub_100004A34(v33);
  }

  if (v50)
  {
    *(&v50 + 1) = v50;
    operator delete(v50);
  }

  if (SHIBYTE(v41) < 0)
  {
    operator delete(v40[0]);
  }

  if (SHIBYTE(v43) < 0)
  {
    operator delete(v42[1]);
  }

  if (SHIBYTE(v45) < 0)
  {
    operator delete(v44[1]);
  }

  return sub_1000296E0(v46);
}

void sub_1002E4690(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, const void *a39, const void *a40, void *__p, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  sub_100005978(&a40);
  if (a46 < 0)
  {
    operator delete(__p);
  }

  if (a16 < 0)
  {
    operator delete(a11);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  if (a31 < 0)
  {
    operator delete(a26);
  }

  if (a38 < 0)
  {
    operator delete(a33);
  }

  sub_1000296E0(&a39);
  _Unwind_Resume(a1);
}

const void **CellularPlanSettingsDevice::getCarrierNameWithSimInfo@<X0>(const void **result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t *a8@<X8>)
{
  v9 = *(a2 + 23);
  if ((v9 & 0x80u) != 0)
  {
    v9 = *(a2 + 8);
  }

  if (!v9)
  {
    goto LABEL_34;
  }

  v11 = *(a3 + 23);
  if ((v11 & 0x80u) != 0)
  {
    v11 = *(a3 + 8);
  }

  if (v11)
  {
    v17 = result;
    *values = *off_101E3E7F0;
    v18 = CFArrayCreate(kCFAllocatorDefault, values, 2, &kCFTypeArrayCallBacks);
    theDict = 0;
    v31 = v18;
    v29 = v18;
    if (v18)
    {
      CFRetain(v18);
    }

    CellularPlanSettingsDevice::getMatchingCarrierBundleValuesByKeys(v17, a2, a3, a4, a5, a6, &v29, buf);
    sub_100010180(&theDict, buf);
    sub_1000296E0(buf);
    sub_100010250(&v29);
    if (!theDict || a7 && (Value = CFDictionaryGetValue(theDict, @"BundleIdentifier"), (v20 = Value) != 0) && (v21 = CFGetTypeID(Value), v21 == CFStringGetTypeID()) && CFStringCompare(v20, @"com.apple.Unknown", 0) == kCFCompareEqualTo)
    {
      *a8 = 0;
      a8[1] = 0;
      a8[2] = 0;
    }

    else
    {
      *a8 = 0;
      a8[1] = 0;
      a8[2] = 0;
      CFDictionaryGetValue(theDict, @"CarrierName");
      memset(buf, 0, sizeof(buf));
      ctu::cf::assign();
      *a8 = *buf;
      a8[2] = *&buf[16];
      v22 = *sGetCellularPlanSettingsDeviceLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        if (*(a8 + 23) >= 0)
        {
          v23 = a8;
        }

        else
        {
          v23 = *a8;
        }

        if (*(a6 + 23) >= 0)
        {
          v24 = a6;
        }

        else
        {
          v24 = *a6;
        }

        if (*(a2 + 23) >= 0)
        {
          v25 = a2;
        }

        else
        {
          v25 = *a2;
        }

        if (*(a3 + 23) >= 0)
        {
          v26 = a3;
        }

        else
        {
          v26 = *a3;
        }

        if (*(a4 + 23) >= 0)
        {
          v27 = a4;
        }

        else
        {
          v27 = *a4;
        }

        if (*(a5 + 23) >= 0)
        {
          v28 = a5;
        }

        else
        {
          v28 = *a5;
        }

        *buf = 136316418;
        *&buf[4] = v23;
        *&buf[12] = 2080;
        *&buf[14] = v24;
        *&buf[22] = 2080;
        v33 = v25;
        v34 = 2080;
        v35 = v26;
        v36 = 2080;
        v37 = v27;
        v38 = 2080;
        v39 = v28;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I Carrier name %s for iccid %s mcc %s mnc %s gid1 %s gid2 %s", buf, 0x3Eu);
      }
    }

    sub_10001021C(&theDict);
    return sub_100010250(&v31);
  }

  else
  {
LABEL_34:
    *a8 = 0;
    a8[1] = 0;
    a8[2] = 0;
  }

  return result;
}

void sub_1002E4A60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v7 = va_arg(va1, const void *);
  if (*(v5 + 23) < 0)
  {
    operator delete(*v5);
  }

  sub_10001021C(va);
  sub_100010250(va1);
  _Unwind_Resume(a1);
}

uint64_t CellularPlanSettingsDevice::preferCarrierNameFromMetadata(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a2 + 23);
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a2 + 8);
  }

  if (!v6)
  {
    goto LABEL_14;
  }

  v8 = *(a3 + 23);
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a3 + 8);
  }

  if (v8)
  {
    values = @"PreferCarrierNameFromMetadata";
    v14 = CFArrayCreate(kCFAllocatorDefault, &values, 1, &kCFTypeArrayCallBacks);
    theDict = 0;
    v25 = v14;
    v23 = v14;
    if (v14)
    {
      CFRetain(v14);
    }

    CellularPlanSettingsDevice::getMatchingCarrierBundleValuesByKeys(a1, a2, a3, a4, a5, a6, &v23, buf);
    sub_100010180(&theDict, buf);
    sub_1000296E0(buf);
    sub_100010250(&v23);
    if (theDict && CFDictionaryContainsKey(theDict, @"PreferCarrierNameFromMetadata"))
    {
      Value = CFDictionaryGetValue(theDict, @"PreferCarrierNameFromMetadata");
      v16 = Value;
      buf[0] = 0;
      if (Value && (v17 = CFGetTypeID(Value), v17 == CFBooleanGetTypeID()))
      {
        ctu::cf::assign(buf, v16, v18);
        v19 = buf[0];
      }

      else
      {
        v19 = 0;
      }

      v20 = *sGetCellularPlanSettingsDeviceLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = "no";
        if (v19)
        {
          v21 = "yes";
        }

        *buf = 136315138;
        v27 = v21;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I Carrier prefers name from metadata: [%s]", buf, 0xCu);
      }
    }

    else
    {
      v19 = 0;
    }

    sub_10001021C(&theDict);
    sub_100010250(&v25);
  }

  else
  {
LABEL_14:
    v19 = 0;
  }

  return v19 & 1;
}

void sub_1002E4CF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, const void *);
  sub_10001021C(va);
  sub_100010250(va1);
  _Unwind_Resume(a1);
}

uint64_t CellularPlanSettingsDevice::getiCloudAddOnPlanFlowType(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  values = @"iCloudAddOnPlanFlowType";
  v12 = CFArrayCreate(kCFAllocatorDefault, &values, 1, &kCFTypeArrayCallBacks);
  theDict = 0;
  v28 = v12;
  v26 = v12;
  if (v12)
  {
    CFRetain(v12);
  }

  CellularPlanSettingsDevice::getMatchingCarrierBundleValuesByKeys(a1, a2, a3, a4, a5, a6, &v26, buf);
  sub_100010180(&theDict, buf);
  sub_1000296E0(buf);
  sub_100010250(&v26);
  if (!theDict || !CFDictionaryContainsKey(theDict, @"iCloudAddOnPlanFlowType"))
  {
    v15 = 0;
    goto LABEL_36;
  }

  CFDictionaryGetValue(theDict, @"iCloudAddOnPlanFlowType");
  memset(buf, 0, sizeof(buf));
  v31 = 0;
  ctu::cf::assign();
  v25 = v31;
  *__p = *buf;
  v13 = HIBYTE(v31);
  if ((SHIBYTE(v31) & 0x80000000) == 0)
  {
    if (HIBYTE(v31) == 14)
    {
      v15 = __p[0] == 0x7461726765746E49 && *(__p + 6) == 0x776F6C4664657461;
      goto LABEL_32;
    }

    if (HIBYTE(v31) == 15)
    {
      v14 = __p;
      goto LABEL_17;
    }

LABEL_20:
    v15 = 0;
    goto LABEL_32;
  }

  if (__p[1] == 14 && *__p[0] == 0x7461726765746E49 && *(__p[0] + 6) == 0x776F6C4664657461)
  {
    v15 = 1;
    goto LABEL_32;
  }

  if (__p[1] != 15)
  {
    goto LABEL_20;
  }

  v14 = __p[0];
LABEL_17:
  v17 = 0x456E7469746C656DLL;
  v18 = bswap64(*v14);
  if (v18 == 0x456E7469746C656DLL && (v17 = 0x6D656E74466C6F77, v18 = bswap64(*(v14 + 7)), v18 == 0x6D656E74466C6F77))
  {
    v19 = 0;
  }

  else if (v18 < v17)
  {
    v19 = -1;
  }

  else
  {
    v19 = 1;
  }

  v15 = 2 * (v19 == 0);
LABEL_32:
  v21 = *sGetCellularPlanSettingsDeviceLog();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = asString();
    *buf = 136315138;
    *&buf[4] = v22;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I iCloud add on plan flow type: [%s]", buf, 0xCu);
  }

  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

LABEL_36:
  sub_10001021C(&theDict);
  sub_100010250(&v28);
  return v15;
}

void sub_1002E5028(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, char a13, int a14, const void *a15, const void *a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (v23 < 0)
  {
    operator delete(__p);
  }

  sub_10001021C(&a15);
  sub_100010250(&a16);
  _Unwind_Resume(a1);
}

uint64_t CellularPlanSettingsDevice::requiresPeriodicProfileEnablement(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  theDict = 0;
  sub_10000501C(__p, "");
  CellularPlanSettingsDevice::getCellularDataPlanSettingsFromBundle(a1, a2, a3, a4, a5, __p, &theDict);
  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"CellularDataPlanSettings");
    __p[0] = Value;
    if (Value && (CFRetain(Value), __p[0]))
    {
      if (CFDictionaryContainsKey(__p[0], @"RequiresPeriodicProfileEnablement"))
      {
        v11 = CFDictionaryGetValue(__p[0], @"RequiresPeriodicProfileEnablement");
        v12 = v11;
        v22 = 0;
        if (!v11)
        {
LABEL_13:
          sub_10001021C(__p);
          goto LABEL_17;
        }

        v13 = CFGetTypeID(v11);
        if (v13 == CFBooleanGetTypeID())
        {
          ctu::cf::assign(&v22, v12, v14);
          LOBYTE(v12) = v22;
          goto LABEL_13;
        }
      }

      else
      {
        CellularPlanSettingsDeviceLog = sGetCellularPlanSettingsDeviceLog();
        if (os_log_type_enabled(*CellularPlanSettingsDeviceLog, OS_LOG_TYPE_ERROR))
        {
          sub_10176A1A8();
        }
      }
    }

    else
    {
      v15 = sGetCellularPlanSettingsDeviceLog();
      if (os_log_type_enabled(*v15, OS_LOG_TYPE_ERROR))
      {
        sub_10176A1DC();
      }
    }

    LOBYTE(v12) = 0;
    goto LABEL_13;
  }

  v16 = sGetCellularPlanSettingsDeviceLog();
  if (os_log_type_enabled(*v16, OS_LOG_TYPE_ERROR))
  {
    sub_10176A210();
  }

  LOBYTE(v12) = 0;
LABEL_17:
  sub_10001021C(&theDict);
  return v12 & 1;
}

void sub_1002E5244(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, const void *);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_10001021C(va);
  sub_10001021C(va1);
  _Unwind_Resume(a1);
}

void sub_1002E5278(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1002E5270);
}

const void **CellularPlanSettingsDevice::getCellularDataPlanSettingsFromBundle@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  values = @"CellularDataPlanSettings";
  v14 = CFArrayCreate(kCFAllocatorDefault, &values, 1, &kCFTypeArrayCallBacks);
  theDict = 0;
  v29 = v14;
  v27 = v14;
  if (v14)
  {
    CFRetain(v14);
  }

  CellularPlanSettingsDevice::getMatchingCarrierBundleValuesByKeys(a1, a2, a3, a4, a5, a6, &v27, &theDict);
  sub_100010250(&v27);
  value = 0;
  if (theDict)
  {
    v15 = CFDictionaryGetValue(theDict, @"CellularDataPlanSettings");
    v16 = v15;
    if (v15 && (v17 = CFGetTypeID(v15), v17 == CFDictionaryGetTypeID()))
    {
      MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v16);
      v19 = value;
      value = MutableCopy;
      v30 = v19;
      sub_1000296E0(&v30);
    }

    else
    {
      v20 = *sGetCellularPlanSettingsDeviceLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_10176A244(v20, v21, v22);
      }
    }
  }

  v25 = 0;
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    v25 = Mutable;
    v30 = 0;
    sub_1000296E0(&v30);
  }

  if (value)
  {
    CFDictionaryAddValue(v25, @"CellularDataPlanSettings", value);
  }

  sub_100010180(a7, &v25);
  sub_1000296E0(&v25);
  sub_1000296E0(&value);
  sub_1000296E0(&theDict);
  return sub_100010250(&v29);
}

void sub_1002E5478(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, const void *);
  v6 = va_arg(va1, void);
  va_copy(va2, va1);
  v7 = va_arg(va2, const void *);
  sub_1000296E0(va);
  sub_1000296E0(va1);
  sub_100010250(va2);
  _Unwind_Resume(a1);
}

uint64_t CellularPlanSettingsDevice::supportManageAccountUrlOverEntitlement(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  theDict = 0;
  v14 = 0;
  (*(*a1 + 232))(&theDict);
  if (!theDict)
  {
    CellularPlanSettingsDeviceLog = sGetCellularPlanSettingsDeviceLog();
    if (os_log_type_enabled(*CellularPlanSettingsDeviceLog, OS_LOG_TYPE_ERROR))
    {
      sub_10176A334();
    }

    goto LABEL_10;
  }

  if (!CFDictionaryContainsKey(theDict, @"SupportManageAccountUrlOverEntitlement"))
  {
    v11 = sGetCellularPlanSettingsDeviceLog();
    if (os_log_type_enabled(*v11, OS_LOG_TYPE_ERROR))
    {
      sub_10176A2C4();
    }

    goto LABEL_10;
  }

  Value = CFDictionaryGetValue(theDict, @"SupportManageAccountUrlOverEntitlement");
  v7 = Value;
  v15 = 0;
  if (Value)
  {
    v8 = CFGetTypeID(Value);
    if (v8 == CFBooleanGetTypeID())
    {
      ctu::cf::assign(&v15, v7, v9);
      LOBYTE(v7) = v15;
      goto LABEL_11;
    }

LABEL_10:
    LOBYTE(v7) = 0;
  }

LABEL_11:
  sub_10001021C(&v14);
  sub_10001021C(&theDict);
  return v7 & 1;
}

void sub_1002E55FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, const void *);
  sub_10001021C(va1);
  sub_10001021C(va);
  _Unwind_Resume(a1);
}

uint64_t CellularPlanSettingsDevice::supportsEligibilityOniPhoneForAddOnPlan(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  theDict = 0;
  v14 = 0;
  (*(*a1 + 232))(&theDict);
  if (!theDict)
  {
    CellularPlanSettingsDeviceLog = sGetCellularPlanSettingsDeviceLog();
    if (os_log_type_enabled(*CellularPlanSettingsDeviceLog, OS_LOG_TYPE_ERROR))
    {
      sub_10176A334();
    }

    goto LABEL_10;
  }

  if (!CFDictionaryContainsKey(theDict, @"SupportsEligibilityOniPhoneForAddOnPlan"))
  {
    v11 = sGetCellularPlanSettingsDeviceLog();
    if (os_log_type_enabled(*v11, OS_LOG_TYPE_ERROR))
    {
      sub_10176A3A4();
    }

LABEL_10:
    LOBYTE(v7) = 1;
    goto LABEL_11;
  }

  Value = CFDictionaryGetValue(theDict, @"SupportsEligibilityOniPhoneForAddOnPlan");
  v7 = Value;
  v15 = 0;
  if (Value)
  {
    v8 = CFGetTypeID(Value);
    if (v8 == CFBooleanGetTypeID())
    {
      ctu::cf::assign(&v15, v7, v9);
      LOBYTE(v7) = v15;
    }

    else
    {
      LOBYTE(v7) = 0;
    }
  }

LABEL_11:
  sub_10001021C(&v14);
  sub_10001021C(&theDict);
  return v7 & 1;
}

void sub_1002E574C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, const void *);
  sub_10001021C(va1);
  sub_10001021C(va);
  _Unwind_Resume(a1);
}

const void **CellularPlanSettingsDevice::cellularDataPlanAccountURLForESim@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = 0;
  *(a7 + 8) = 0;
  *(a7 + 16) = 0;
  theDict = 0;
  CellularPlanSettingsDevice::getCellularDataPlanSettingsFromBundle(a1, a2, a3, a4, a5, a6, &theDict);
  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"CellularDataPlanSettings");
    v21 = Value;
    if (Value)
    {
      CFRetain(Value);
      if (CFDictionaryContainsKey(v21, @"CellularDataPlanAccountURLForESim"))
      {
        CFDictionaryGetValue(v21, @"CellularDataPlanAccountURLForESim");
        memset(buf, 0, sizeof(buf));
        ctu::cf::assign();
        v11 = *buf;
        v10 = *&buf[8];
        v12 = *&buf[15];
        *a7 = *buf;
        *(a7 + 8) = v10;
        *(a7 + 15) = v12;
        v13 = buf[23];
        *(a7 + 23) = buf[23];
        v14 = *sGetCellularPlanSettingsDeviceLog();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          if (*(a6 + 23) >= 0)
          {
            v15 = a6;
          }

          else
          {
            v15 = *a6;
          }

          if (v13 >= 0)
          {
            v16 = a7;
          }

          else
          {
            v16 = v11;
          }

          *buf = 136315394;
          *&buf[4] = v15;
          *&buf[12] = 2080;
          *&buf[14] = v16;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I CellularDataPlanAccountURLForESim for iccid: [%s] is [%s]", buf, 0x16u);
        }
      }

      else
      {
        CellularPlanSettingsDeviceLog = sGetCellularPlanSettingsDeviceLog();
        if (os_log_type_enabled(*CellularPlanSettingsDeviceLog, OS_LOG_TYPE_ERROR))
        {
          sub_10176A414();
        }
      }
    }

    else
    {
      v17 = sGetCellularPlanSettingsDeviceLog();
      if (os_log_type_enabled(*v17, OS_LOG_TYPE_ERROR))
      {
        sub_10176A334();
      }
    }

    sub_10001021C(&v21);
  }

  else
  {
    v18 = sGetCellularPlanSettingsDeviceLog();
    if (os_log_type_enabled(*v18, OS_LOG_TYPE_ERROR))
    {
      sub_10176A484();
    }
  }

  return sub_10001021C(&theDict);
}

void sub_1002E595C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  sub_10001021C(&a9);
  sub_10001021C(&a10);
  _Unwind_Resume(a1);
}

uint64_t CellularPlanSettingsDevice::cellularPlanStatusFromPlanExpiryDetection(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  theDict = 0;
  CellularPlanSettingsDevice::getCellularDataPlanSettingsFromBundle(a1, a2, a3, a4, a5, a6, &theDict);
  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"CellularDataPlanSettings");
    v15 = Value;
    if (Value)
    {
      CFRetain(Value);
      if (CFDictionaryContainsKey(v15, @"CellularPlanStatusFromPlanExpiryDetection"))
      {
        v7 = CFDictionaryGetValue(v15, @"CellularPlanStatusFromPlanExpiryDetection");
        v8 = v7;
        v17 = 0;
        if (!v7)
        {
LABEL_10:
          sub_10001021C(&v15);
          goto LABEL_14;
        }

        v9 = CFGetTypeID(v7);
        if (v9 == CFBooleanGetTypeID())
        {
          ctu::cf::assign(&v17, v8, v10);
          LOBYTE(v8) = v17;
          goto LABEL_10;
        }
      }

      else
      {
        CellularPlanSettingsDeviceLog = sGetCellularPlanSettingsDeviceLog();
        if (os_log_type_enabled(*CellularPlanSettingsDeviceLog, OS_LOG_TYPE_ERROR))
        {
          sub_10176A4F4();
        }
      }
    }

    else
    {
      v11 = sGetCellularPlanSettingsDeviceLog();
      if (os_log_type_enabled(*v11, OS_LOG_TYPE_ERROR))
      {
        sub_10176A334();
      }
    }

    LOBYTE(v8) = 0;
    goto LABEL_10;
  }

  v12 = sGetCellularPlanSettingsDeviceLog();
  if (os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
  {
    sub_10176A484();
  }

  LOBYTE(v8) = 0;
LABEL_14:
  sub_10001021C(&theDict);
  return v8 & 1;
}

void sub_1002E5B38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, const void *);
  sub_10001021C(va);
  sub_10001021C(va1);
  _Unwind_Resume(a1);
}

uint64_t CellularPlanSettingsDevice::requiresChinaCertOnEuiccCheck(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a2 + 23);
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a2 + 8);
  }

  if (v6)
  {
    v8 = *(a3 + 23);
    if ((v8 & 0x80u) != 0)
    {
      v8 = *(a3 + 8);
    }

    if (v8)
    {
      values = @"CellularPlanProvisioningSettings";
      v14 = CFArrayCreate(kCFAllocatorDefault, &values, 1, &kCFTypeArrayCallBacks);
      theDict = 0;
      v29 = v14;
      v26 = v14;
      if (v14)
      {
        CFRetain(v14);
      }

      CellularPlanSettingsDevice::getMatchingCarrierBundleValuesByKeys(a1, a2, a3, a4, a5, a6, &v26, &v27);
      sub_100010180(&theDict, &v27);
      sub_1000296E0(&v27);
      sub_100010250(&v26);
      if (theDict)
      {
        Value = CFDictionaryGetValue(theDict, @"CellularPlanProvisioningSettings");
        v16 = Value;
        if (Value && (v17 = CFGetTypeID(Value), v17 == CFDictionaryGetTypeID()))
        {
          if (CFDictionaryContainsKey(v16, @"RequiresChinaCertOnEuiccCheck"))
          {
            v18 = CFDictionaryGetValue(v16, @"RequiresChinaCertOnEuiccCheck");
            v19 = v18;
            LOBYTE(v27) = 0;
            if (!v18)
            {
LABEL_22:
              sub_10001021C(&theDict);
              sub_100010250(&v29);
              return v19 & 1;
            }

            v20 = CFGetTypeID(v18);
            if (v20 == CFBooleanGetTypeID())
            {
              ctu::cf::assign(&v27, v19, v21);
              LOBYTE(v19) = v27;
              goto LABEL_22;
            }
          }

          else
          {
            CellularPlanSettingsDeviceLog = sGetCellularPlanSettingsDeviceLog();
            if (os_log_type_enabled(*CellularPlanSettingsDeviceLog, OS_LOG_TYPE_ERROR))
            {
              sub_10176A564();
            }
          }
        }

        else
        {
          v22 = sGetCellularPlanSettingsDeviceLog();
          if (os_log_type_enabled(*v22, OS_LOG_TYPE_ERROR))
          {
            sub_10176A598();
          }
        }
      }

      else
      {
        v23 = sGetCellularPlanSettingsDeviceLog();
        if (os_log_type_enabled(*v23, OS_LOG_TYPE_ERROR))
        {
          sub_10176A5CC();
        }
      }

      LOBYTE(v19) = 0;
      goto LABEL_22;
    }
  }

  LOBYTE(v19) = 0;
  return v19 & 1;
}

void sub_1002E5DA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, const void *);
  sub_10001021C(va);
  sub_100010250(va1);
  _Unwind_Resume(a1);
}

uint64_t CellularPlanSettingsDevice::suppressMonitorModeFailureAlert(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a2 + 23);
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a2 + 8);
  }

  if (v6)
  {
    v8 = *(a3 + 23);
    if ((v8 & 0x80u) != 0)
    {
      v8 = *(a3 + 8);
    }

    if (v8)
    {
      values = @"CellularPlanProvisioningSettings";
      v14 = CFArrayCreate(kCFAllocatorDefault, &values, 1, &kCFTypeArrayCallBacks);
      theDict = 0;
      v29 = v14;
      v26 = v14;
      if (v14)
      {
        CFRetain(v14);
      }

      CellularPlanSettingsDevice::getMatchingCarrierBundleValuesByKeys(a1, a2, a3, a4, a5, a6, &v26, &v27);
      sub_100010180(&theDict, &v27);
      sub_1000296E0(&v27);
      sub_100010250(&v26);
      if (theDict)
      {
        Value = CFDictionaryGetValue(theDict, @"CellularPlanProvisioningSettings");
        v16 = Value;
        if (Value && (v17 = CFGetTypeID(Value), v17 == CFDictionaryGetTypeID()))
        {
          if (CFDictionaryContainsKey(v16, @"SuppressMonitorModeFailureAlert"))
          {
            v18 = CFDictionaryGetValue(v16, @"SuppressMonitorModeFailureAlert");
            v19 = v18;
            LOBYTE(v27) = 0;
            if (!v18)
            {
LABEL_22:
              sub_10001021C(&theDict);
              sub_100010250(&v29);
              return v19 & 1;
            }

            v20 = CFGetTypeID(v18);
            if (v20 == CFBooleanGetTypeID())
            {
              ctu::cf::assign(&v27, v19, v21);
              LOBYTE(v19) = v27;
              goto LABEL_22;
            }
          }

          else
          {
            CellularPlanSettingsDeviceLog = sGetCellularPlanSettingsDeviceLog();
            if (os_log_type_enabled(*CellularPlanSettingsDeviceLog, OS_LOG_TYPE_ERROR))
            {
              sub_10176A600();
            }
          }
        }

        else
        {
          v22 = sGetCellularPlanSettingsDeviceLog();
          if (os_log_type_enabled(*v22, OS_LOG_TYPE_ERROR))
          {
            sub_10176A670();
          }
        }
      }

      else
      {
        v23 = sGetCellularPlanSettingsDeviceLog();
        if (os_log_type_enabled(*v23, OS_LOG_TYPE_ERROR))
        {
          sub_10176A5CC();
        }
      }

      LOBYTE(v19) = 0;
      goto LABEL_22;
    }
  }

  LOBYTE(v19) = 0;
  return v19 & 1;
}

void sub_1002E604C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, const void *);
  sub_10001021C(va);
  sub_100010250(va1);
  _Unwind_Resume(a1);
}

unsigned int *CellularPlanSettingsDevice::getWaitTimeForProfileRelease(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a2 + 23);
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a2 + 8);
  }

  if (!v6)
  {
    return 0;
  }

  v8 = *(a3 + 23);
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a3 + 8);
  }

  if (!v8)
  {
    return 0;
  }

  values = @"WaitTimeForProfileRelease";
  v14 = CFArrayCreate(kCFAllocatorDefault, &values, 1, &kCFTypeArrayCallBacks);
  theDict = 0;
  v23 = v14;
  v21 = v14;
  if (v14)
  {
    CFRetain(v14);
  }

  CellularPlanSettingsDevice::getMatchingCarrierBundleValuesByKeys(a1, a2, a3, a4, a5, a6, &v21, buf);
  sub_100010180(&theDict, buf);
  sub_1000296E0(buf);
  sub_100010250(&v21);
  if (theDict && CFDictionaryContainsKey(theDict, @"WaitTimeForProfileRelease"))
  {
    Value = CFDictionaryGetValue(theDict, @"WaitTimeForProfileRelease");
    v16 = Value;
    *buf = 0;
    if (Value)
    {
      v17 = CFGetTypeID(Value);
      if (v17 == CFNumberGetTypeID())
      {
        ctu::cf::assign(buf, v16, v18);
        v16 = *buf;
      }

      else
      {
        v16 = 0;
      }
    }

    v19 = *sGetCellularPlanSettingsDeviceLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v16;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I Wait time for profile install: [%u]", buf, 8u);
    }
  }

  else
  {
    v16 = 0;
  }

  sub_10001021C(&theDict);
  sub_100010250(&v23);
  return v16;
}

void sub_1002E62A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, const void *);
  sub_10001021C(va);
  sub_100010250(va1);
  _Unwind_Resume(a1);
}

void CellularPlanSettingsDevice::getCarrierNameFromSlot(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 56));
  v6 = ServiceMap;
  if ((v7 & 0x8000000000000000) != 0)
  {
    v8 = (v7 & 0x7FFFFFFFFFFFFFFFLL);
    v9 = 5381;
    do
    {
      v7 = v9;
      v10 = *v8++;
      v9 = (33 * v9) ^ v10;
    }

    while (v10);
  }

  std::mutex::lock(ServiceMap);
  v16 = v7;
  v11 = sub_100009510(&v6[1].__m_.__sig, &v16);
  if (v11)
  {
    v13 = v11[3];
    v12 = v11[4];
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v6);
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v12);
      v14 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v13 = 0;
  }

  std::mutex::unlock(v6);
  v12 = 0;
  v14 = 1;
LABEL_9:
  (*(*v13 + 80))(&v15, v13, a2, 1, @"CarrierName", 0, 0);
  sub_100060DE8(a3, &v15);
  sub_10000A1EC(&v15);
  if ((v14 & 1) == 0)
  {
    sub_100004A34(v12);
  }
}

void sub_1002E643C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9)
{
  sub_10000A1EC(&a9);
  if ((v10 & 1) == 0)
  {
    sub_100004A34(v9);
  }

  _Unwind_Resume(a1);
}

void CellularPlanSettingsDevice::getCarrierName(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 56));
  v6 = ServiceMap;
  if ((v7 & 0x8000000000000000) != 0)
  {
    v8 = (v7 & 0x7FFFFFFFFFFFFFFFLL);
    v9 = 5381;
    do
    {
      v7 = v9;
      v10 = *v8++;
      v9 = (33 * v9) ^ v10;
    }

    while (v10);
  }

  std::mutex::lock(ServiceMap);
  v16 = v7;
  v11 = sub_100009510(&v6[1].__m_.__sig, &v16);
  if (v11)
  {
    v13 = v11[3];
    v12 = v11[4];
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v6);
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v12);
      v14 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v13 = 0;
  }

  std::mutex::unlock(v6);
  v12 = 0;
  v14 = 1;
LABEL_9:
  (*(*v13 + 80))(&v15, v13, a2, 1, @"CarrierName", 0, 0);
  sub_100060DE8(a3, &v15);
  sub_10000A1EC(&v15);
  if ((v14 & 1) == 0)
  {
    sub_100004A34(v12);
  }
}

void sub_1002E65A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9)
{
  sub_10000A1EC(&a9);
  if ((v10 & 1) == 0)
  {
    sub_100004A34(v9);
  }

  _Unwind_Resume(a1);
}

void sub_1002E6634(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void CellularPlanSettingsDevice::createBootstrapProvisioningController(uint64_t a1@<X0>, dispatch_object_t *a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v8 = *a2;
  *a2 = 0;
  *v7 = *a3;
  *a3 = 0;
  *(a3 + 8) = 0;
  sub_100004AA0(&v5, (a1 + 40));
  v6 = v5;
  v5 = 0uLL;
  sub_10057CCE4(&v6, &v9);
  *a4 = v9;
  v9 = 0uLL;
  if (*(&v6 + 1))
  {
    sub_100004A34(*(&v6 + 1));
  }

  if (*(&v5 + 1))
  {
    sub_100004A34(*(&v5 + 1));
  }

  if (v7[1])
  {
    std::__shared_weak_count::__release_weak(v7[1]);
  }

  if (v8)
  {
    dispatch_release(v8);
  }
}

void sub_1002E66F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  if (a10)
  {
    sub_100004A34(a10);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_weak(a14);
  }

  v16 = *(v14 - 40);
  if (v16)
  {
    dispatch_release(v16);
  }

  _Unwind_Resume(exception_object);
}

void CellularPlanSettingsDevice::createMultiplexer(capabilities::ct *a1@<X0>, NSObject **a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  if ((atomic_load_explicit(byte_101FBA1F0, memory_order_acquire) & 1) == 0)
  {
    sub_10176A6E0();
  }

  if (!xmmword_101FBA200)
  {
    __src = 0;
    v22 = 0;
    v23 = 0;
    v8 = capabilities::ct::supportsRemoteCellularPlan(a1);
    if (v8)
    {
      sub_100004AA0(&v19, a1 + 5);
      sub_1002F35CC();
    }

    if (capabilities::ct::supportedVinylSlotCount(v8))
    {
      v9 = *a2;
      object = v9;
      if (v9)
      {
        dispatch_retain(v9);
      }

      sub_100004AA0(&v17, a1 + 5);
      v19 = v17;
      v17 = 0uLL;
      sub_10010DF94(&v20);
    }

    if (capabilities::ct::supportsRegisteredIDSService(0))
    {
      v20 = 0uLL;
      sub_100004AA0(&v24, a1 + 5);
      sub_1002F3A04();
    }

    v10 = *a2;
    v16[3] = v10;
    if (v10)
    {
      dispatch_retain(v10);
    }

    memset(v16, 0, 24);
    sub_1002F2830(v16, __src, v22, (v22 - __src) >> 4);
    sub_1009E105C();
  }

  if (*a3)
  {
    v11 = xmmword_101FBA200;
    v12 = a3[1];
    v14 = *a3;
    v15 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v11 + 16))(v11, &v14);
    if (v15)
    {
      sub_100004A34(v15);
    }
  }

  v13 = *(&xmmword_101FBA200 + 1);
  *a4 = xmmword_101FBA200;
  a4[1] = v13;
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }
}

void sub_1002E6D6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, dispatch_object_t object, uint64_t a19, uint64_t a20, char *a21, std::__shared_weak_count *a22, uint64_t a23, char a24)
{
  if (a22)
  {
    sub_100004A34(a22);
  }

  a21 = &a24;
  sub_1000212F4(&a21);
  _Unwind_Resume(a1);
}

uint64_t sub_1002E6E68(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

void sub_1002E6F10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void CellularPlanSettingsDevice::createSubscriptionPushObserver(uint64_t a1@<X0>, NSObject **a2@<X1>, uint64_t *a3@<X2>, _OWORD *a4@<X8>)
{
  v7 = *a2;
  object = v7;
  if (v7)
  {
    dispatch_retain(v7);
  }

  v8 = a3[1];
  v11 = *a3;
  v12 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_100004AA0(&v9, (a1 + 40));
  v10 = v9;
  v9 = 0uLL;
  sub_100188F04(&object, &v14);
  *a4 = v14;
  v14 = 0uLL;
  if (*(&v10 + 1))
  {
    sub_100004A34(*(&v10 + 1));
  }

  if (*(&v9 + 1))
  {
    sub_100004A34(*(&v9 + 1));
  }

  if (v12)
  {
    sub_100004A34(v12);
  }

  if (object)
  {
    dispatch_release(object);
  }
}

void sub_1002E6FF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, dispatch_object_t object)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  if (a10)
  {
    sub_100004A34(a10);
  }

  if (a15)
  {
    sub_100004A34(a15);
  }

  if (object)
  {
    dispatch_release(object);
  }

  _Unwind_Resume(exception_object);
}

void CellularPlanSettingsDevice::createEntitlementsController(CellularPlanSettingsDevice *this, queue a2)
{
  v3 = *(this + 8);
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  if (*a2.fObj.fObj)
  {
    dispatch_retain(*a2.fObj.fObj);
  }

  sub_100AB2484(&v4);
}

void sub_1002E70B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, uint64_t a11, std::__shared_weak_count *a12)
{
  if (object)
  {
    dispatch_release(object);
  }

  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(exception_object);
}

void CellularPlanSettingsDevice::createCellularPlanSourceTransferAuthController(void *a1@<X1>, void *a2@<X2>, void *a3@<X8>)
{
  if (*a1)
  {
    v3 = *a2 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    sub_1002F3E84();
  }

  *a3 = 0;
  a3[1] = 0;
}

const void **CellularPlanSettingsDevice::createProximityTransportController@<X0>(const void **result@<X0>, int a2@<W1>, const void **a3@<X2>, NSObject **a4@<X3>, uint64_t a6@<X5>, const void **a7@<X6>, uint64_t a8@<X8>)
{
  v10 = result;
  if (a2 == 2)
  {
    sub_100010024(v23, a3);
    v13 = *a4;
    object = v13;
    if (v13)
    {
      dispatch_retain(v13);
    }

    sub_100004AA0(&v29, v10 + 5);
    v20 = v29;
    v21 = v30;
    v29 = 0;
    v30 = 0;
    if (*(a6 + 23) < 0)
    {
      sub_100005F2C(v16, *a6, *(a6 + 8));
    }

    else
    {
      *v16 = *a6;
      v17 = *(a6 + 16);
    }

    if (*(a6 + 47) < 0)
    {
      sub_100005F2C(v18, *(a6 + 24), *(a6 + 32));
    }

    else
    {
      *v18 = *(a6 + 24);
      v19 = *(a6 + 40);
    }

    sub_100186218(2, &v35);
    *a8 = v35;
    v35 = 0uLL;
    if (SHIBYTE(v19) < 0)
    {
      operator delete(v18[0]);
    }

    if (SHIBYTE(v17) < 0)
    {
      operator delete(v16[0]);
    }

    if (v21)
    {
      sub_100004A34(v21);
    }

    if (v30)
    {
      sub_100004A34(v30);
    }

    if (object)
    {
      dispatch_release(object);
    }

    v15 = v23;
  }

  else
  {
    if (a2 != 1)
    {
      *a8 = 0;
      *(a8 + 8) = 0;
      return result;
    }

    sub_100010024(&v34, a3);
    v33 = *a4;
    if (v33)
    {
      dispatch_retain(v33);
    }

    sub_100004AA0(&v29, v10 + 5);
    v31 = v29;
    v32 = v30;
    v29 = 0;
    v30 = 0;
    if (*(a6 + 23) < 0)
    {
      sub_100005F2C(__dst, *a6, *(a6 + 8));
    }

    else
    {
      *__dst = *a6;
      v26 = *(a6 + 16);
    }

    if (*(a6 + 47) < 0)
    {
      sub_100005F2C(&__p, *(a6 + 24), *(a6 + 32));
    }

    else
    {
      __p = *(a6 + 24);
      v28 = *(a6 + 40);
    }

    v14 = a7[1];
    v23[1] = *a7;
    v24 = v14;
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_100906F30(1, &v35);
    *a8 = v35;
    v35 = 0uLL;
    if (v24)
    {
      sub_100004A34(v24);
    }

    if (SHIBYTE(v28) < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v26) < 0)
    {
      operator delete(__dst[0]);
    }

    if (v32)
    {
      sub_100004A34(v32);
    }

    if (v30)
    {
      sub_100004A34(v30);
    }

    if (v33)
    {
      dispatch_release(v33);
    }

    v15 = &v34;
  }

  return sub_10001021C(v15);
}

void sub_1002E73D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, dispatch_object_t object, const void *a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (v29)
  {
    sub_100004A34(v29);
  }

  v32 = *(v30 - 120);
  if (v32)
  {
    sub_100004A34(v32);
  }

  if (object)
  {
    dispatch_release(object);
  }

  sub_10001021C(&a21);
  _Unwind_Resume(a1);
}

void CellularPlanSettingsDevice::createTransferFlowController(uint64_t a1@<X0>, int a2@<W1>, char a3@<W2>, void *a9@<X8>)
{
  v10 = a3;
  if (a2 == 1)
  {
    sub_100004AA0(&v9, (a1 + 40));
    sub_1002F4278();
  }

  if (a2 == 2)
  {
    sub_100004AA0(&v9, (a1 + 40));
    sub_1002F4018();
  }

  *a9 = 0;
  a9[1] = 0;
}

void sub_1002E7594(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void CellularPlanSettingsDevice::createPrivateNetworksController(capabilities::ct *a1@<X0>, NSObject **a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, void *a5@<X8>)
{
  if (capabilities::ct::supportsCerberus(a1))
  {
    v10 = *a2;
    object = v10;
    if (v10)
    {
      dispatch_retain(v10);
    }

    v11 = a4[1];
    v16 = *a4;
    v17 = v11;
    if (v11)
    {
      atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    }

    v12 = a3[1];
    v14 = *a3;
    v15 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
    }

    sub_100004AA0(v13, a1 + 5);
    v13[1] = v13[0];
    v13[0] = 0uLL;
    CellularPlanPrivateNetworksController::create();
  }

  *a5 = 0;
  a5[1] = 0;
}

void sub_1002E76C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, std::__shared_weak_count *a17, dispatch_object_t object)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  if (a10)
  {
    sub_100004A34(a10);
  }

  if (a15)
  {
    sub_100004A34(a15);
  }

  if (a17)
  {
    sub_100004A34(a17);
  }

  if (object)
  {
    dispatch_release(object);
  }

  _Unwind_Resume(exception_object);
}

void CellularPlanSettingsDevice::createPrivateNetworkTelemetryController(CellularPlanSettingsDevice *this, queue a2)
{
  v4 = *a2.fObj.fObj;
  object = v4;
  if (v4)
  {
    dispatch_retain(v4);
  }

  sub_100004AA0(v5, this + 5);
  v5[1] = v5[0];
  v5[0] = 0uLL;
  PrivateNetworkTelemetryController::create();
}

void sub_1002E77D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, dispatch_object_t object)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  if (a10)
  {
    sub_100004A34(a10);
  }

  if (object)
  {
    dispatch_release(object);
  }

  _Unwind_Resume(exception_object);
}

void CellularPlanSettingsDevice::createCountryEstimator(CellularPlanSettingsDevice *this@<X0>, _OWORD *a2@<X8>)
{
  sub_100004AA0(&v3, this + 5);
  v4 = v3;
  v3 = 0uLL;
  sub_100991158(&v4, &v5);
  *a2 = v5;
  v5 = 0uLL;
  if (*(&v4 + 1))
  {
    sub_100004A34(*(&v4 + 1));
  }

  if (*(&v3 + 1))
  {
    sub_100004A34(*(&v3 + 1));
  }
}

void sub_1002E787C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void CellularPlanSettingsDevice::createBootstrapPolicyManager(uint64_t a1@<X0>, NSObject **a2@<X1>, uint64_t *a3@<X2>, __n128 *a4@<X8>)
{
  v7 = *a2;
  object = v7;
  if (v7)
  {
    dispatch_retain(v7);
  }

  v8 = a3[1];
  v11 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 16), 1uLL, memory_order_relaxed);
  }

  v9 = *(a1 + 64);
  v10 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  BootstrapPolicyManager::create(&object, a4);
  if (v10)
  {
    sub_100004A34(v10);
  }

  if (v11)
  {
    std::__shared_weak_count::__release_weak(v11);
  }

  if (object)
  {
    dispatch_release(object);
  }
}

void sub_1002E7950(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13, dispatch_object_t object)
{
  if (a11)
  {
    sub_100004A34(a11);
  }

  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  if (object)
  {
    dispatch_release(object);
  }

  _Unwind_Resume(exception_object);
}

void CellularPlanSettingsDevice::createCellularPlanPolicyManager(CellularPlanSettingsDevice *this, queue a2)
{
  v5 = *a2.fObj.fObj;
  if (v5)
  {
    dispatch_retain(v5);
  }

  sub_100004AA0(v4, this + 5);
  v4[1] = v4[0];
  v4[0] = 0uLL;
  v3 = *(this + 8);
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  sub_1003956A4();
}

void sub_1002E7A30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  if (a14)
  {
    sub_100004A34(a14);
  }

  if (a12)
  {
    sub_100004A34(a12);
  }

  v16 = *(v14 - 24);
  if (v16)
  {
    dispatch_release(v16);
  }

  _Unwind_Resume(exception_object);
}

void CellularPlanSettingsDevice::createOffloadSIMController(uint64_t a1, dispatch_object_t *a2, uint64_t *a3)
{
  v9 = *a2;
  if (v9)
  {
    dispatch_retain(v9);
  }

  v5 = a3[1];
  v7 = *a3;
  v8 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  sub_100004AA0(v6, (a1 + 40));
  v6[1] = v6[0];
  v6[0] = 0uLL;
  sub_100643F7C();
}

void sub_1002E7B6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  if (a10)
  {
    sub_100004A34(a10);
  }

  if (a15)
  {
    sub_100004A34(a15);
  }

  v17 = *(v15 - 40);
  if (v17)
  {
    dispatch_release(v17);
  }

  _Unwind_Resume(exception_object);
}

void CellularPlanSettingsDevice::createCoreUtilsMessageSessionHandler(uint64_t a1@<X0>, uint64_t **a2@<X1>, uint64_t *a3@<X2>, _OWORD *a4@<X8>)
{
  v5 = *(a1 + 64);
  v11 = *(a1 + 56);
  v12 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = a2[1];
  v9 = *a2;
  v10 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = a3[1];
  v8 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 16), 1uLL, memory_order_relaxed);
  }

  sub_10031E46C(&v9, &v13);
  *a4 = v13;
  v13 = 0uLL;
  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }

  if (v10)
  {
    sub_100004A34(v10);
  }

  if (v12)
  {
    sub_100004A34(v12);
  }
}

void sub_1002E7CAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_weak(a10);
  }

  sub_10176A750(v10 + 8);
  _Unwind_Resume(a1);
}

void CellularPlanSettingsDevice::createCellularPlanDeliveryModel(uint64_t a1, NSObject **a2, void *a3)
{
  sub_100004AA0(v6, (a1 + 40));
  v6[1] = v6[0];
  v6[0] = 0uLL;
  if (*a2)
  {
    dispatch_retain(*a2);
  }

  *a3 = 0;
  a3[1] = 0;
  CellularPlanDeliveryModel::create();
}

void sub_1002E7D98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, ...)
{
  va_start(va, a11);
  if (a10)
  {
    std::__shared_weak_count::__release_weak(a10);
  }

  sub_10176A784(va);
  _Unwind_Resume(a1);
}

void sub_1002E7E28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002E7EAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100004A34(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CellularPlanSettingsDevice::createCellularPlanControllerPhone(capabilities::ct *a1, NSObject **a2, uint64_t *a3, uint64_t *a4, void *a5, void *a6)
{
  v10 = capabilities::ct::supportsSIMProvisioningAsSignupSource(a1);
  if (v10)
  {
    v17[0] = 0;
    v17[1] = 0;
    v11 = *a2;
    object = v11;
    if (v11)
    {
      dispatch_retain(v11);
    }

    sub_100004AA0(v15, a1 + 5);
    v15[1] = v15[0];
    v15[0] = 0uLL;
    v12 = a3[1];
    if (v12)
    {
      atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
    }

    v13 = a4[1];
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
    }

    cellplan::CellularPlanControllerPhone::create(v17);
  }

  return v10;
}

void sub_1002E8138(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, dispatch_object_t object, uint64_t a19, std::__shared_weak_count *a20)
{
  if (a20)
  {
    sub_100004A34(a20);
  }

  _Unwind_Resume(exception_object);
}

void CellularPlanSettingsDevice::createCellularPlanControllerWatch(capabilities::ct *a1@<X0>, NSObject **a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  if (capabilities::ct::supportsSIMProvisioningAsSignupDestination(a1))
  {
    v8 = *a2;
    object = v8;
    if (v8)
    {
      dispatch_retain(v8);
    }

    sub_100004AA0(v10, a1 + 5);
    v10[1] = v10[0];
    v10[0] = 0uLL;
    v9 = a3[1];
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
    }

    sub_100322AE8(&v12);
  }

  *a4 = 0;
  a4[1] = 0;
}

void sub_1002E8278(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, dispatch_object_t object)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  if (a14)
  {
    sub_100004A34(a14);
  }

  if (a12)
  {
    sub_100004A34(a12);
  }

  if (object)
  {
    dispatch_release(object);
  }

  _Unwind_Resume(exception_object);
}

void CellularPlanSettingsDevice::createSelectionControllerWatch(uint64_t a1, NSObject **a2, uint64_t *a3)
{
  v6 = *a2;
  object = v6;
  if (v6)
  {
    dispatch_retain(v6);
  }

  sub_100004AA0(v8, (a1 + 40));
  v8[1] = v8[0];
  v8[0] = 0uLL;
  v7 = a3[1];
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  sub_100C022BC(&v10);
}

void sub_1002E8384(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, dispatch_object_t object)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  if (a14)
  {
    sub_100004A34(a14);
  }

  if (a12)
  {
    sub_100004A34(a12);
  }

  if (object)
  {
    dispatch_release(object);
  }

  _Unwind_Resume(exception_object);
}

void CellularPlanSettingsDevice::createEntitlementProvisioningMonitorMode(uint64_t a1@<X0>, NSObject **a2@<X1>, uint64_t *a3@<X2>, uint64_t a5@<X4>, void *a7@<X8>)
{
  v11 = *a2;
  object = v11;
  if (v11)
  {
    dispatch_retain(v11);
  }

  v12 = *(a1 + 64);
  v15 = *(a1 + 56);
  v16 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v13 = a3[1];
  v14 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }

  sub_10013CFE4(&v15, a5, a7);
  if (v14)
  {
    sub_100004A34(v14);
  }

  if (v16)
  {
    sub_100004A34(v16);
  }

  if (object)
  {
    dispatch_release(object);
  }
}

void sub_1002E8498(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13, dispatch_object_t object)
{
  if (a11)
  {
    sub_100004A34(a11);
  }

  if (a13)
  {
    sub_100004A34(a13);
  }

  if (object)
  {
    dispatch_release(object);
  }

  _Unwind_Resume(exception_object);
}

void CellularPlanSettingsDevice::createProvisioningMonitorMode(uint64_t a1@<X0>, int a2@<W1>, NSObject **a3@<X2>, uint64_t *a4@<X3>, unsigned int *a5@<X4>, uint64_t *a6@<X5>, __int128 *a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, char a10)
{
  if (((1 << a2) & 0x35) == 0)
  {
    v10 = a8;
    if (a2 == 1)
    {
      v16 = *a3;
      object = v16;
      if (v16)
      {
        dispatch_retain(v16);
      }

      v17 = *(a1 + 64);
      v31 = *(a1 + 56);
      v32 = v17;
      if (v17)
      {
        atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
      }

      v18 = a4[1];
      v30[0] = *a4;
      v30[1] = v18;
      if (v18)
      {
        atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
      }

      v19 = *a5;
      v21 = *a6;
      v20 = a6[1];
      v38 = *a7;
      if (*(a7 + 39) < 0)
      {
        sub_100005F2C(&__p, *(a7 + 2), *(a7 + 3));
      }

      else
      {
        __p = a7[1];
        v40 = *(a7 + 4);
      }

      v41 = *(a7 + 40);
      CellularPlanAttachProvisioningMonitorMode::create(&object, &v31, v30, v19, v21, v20, &v38, v10, 0);
    }

    v22 = *a3;
    v29 = v22;
    if (v22)
    {
      dispatch_retain(v22);
    }

    v23 = *(a1 + 64);
    v31 = *(a1 + 56);
    v32 = v23;
    if (v23)
    {
      atomic_fetch_add_explicit((v23 + 8), 1uLL, memory_order_relaxed);
    }

    v24 = a4[1];
    v28[0] = *a4;
    v28[1] = v24;
    if (v24)
    {
      atomic_fetch_add_explicit((v24 + 8), 1uLL, memory_order_relaxed);
    }

    v25 = *a5;
    v27 = *a6;
    v26 = a6[1];
    v34 = *a7;
    if (*(a7 + 39) < 0)
    {
      sub_100005F2C(&v35, *(a7 + 2), *(a7 + 3));
    }

    else
    {
      v35 = a7[1];
      v36 = *(a7 + 4);
    }

    v37 = *(a7 + 40);
    CellularPlanAttachProvisioningMonitorMode::create(&v29, &v31, v28, v25, v27, v26, &v34, v10, a10);
  }

  *a9 = 0;
  a9[1] = 0;
}

void sub_1002E8744(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, dispatch_object_t object, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  if (a17)
  {
    sub_100004A34(a17);
  }

  if (object)
  {
    dispatch_release(object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002E8794(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  if (a15)
  {
    sub_100004A34(a15);
  }

  if (a17)
  {
    sub_100004A34(a17);
  }

  if (!a18)
  {
    JUMPOUT(0x1002E878CLL);
  }

  JUMPOUT(0x1002E8788);
}

void *CellularPlanSettingsDevice::createRemoteCommandReceiver@<X0>(capabilities::ct *a1@<X0>, void *a5@<X8>)
{
  v6 = capabilities::ct::supportsSIMProvisioningAsSignupDestination(a1);
  if (v6 || (result = capabilities::ct::supportsRegisteredIDSService(v6), result))
  {
    sub_1002F4E54();
  }

  *a5 = 0;
  a5[1] = 0;
  return result;
}

void CellularPlanSettingsDevice::createCellularPlanCarrierEntitlementHelper(uint64_t a1, dispatch_object_t *a2, uint64_t *a3)
{
  v9 = *a2;
  if (v9)
  {
    dispatch_retain(v9);
  }

  v5 = a3[1];
  v7 = *a3;
  v8 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  sub_100004AA0(v6, (a1 + 40));
  v6[1] = v6[0];
  v6[0] = 0uLL;
  sub_100BFE980();
}

void sub_1002E8904(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  if (a10)
  {
    sub_100004A34(a10);
  }

  if (a15)
  {
    sub_100004A34(a15);
  }

  v17 = *(v15 - 40);
  if (v17)
  {
    dispatch_release(v17);
  }

  _Unwind_Resume(exception_object);
}

void *CellularPlanSettingsDevice::getCellularPlanControllerPhoneSettings@<X0>(CellularPlanSettingsDevice *this@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100004AA0(v6, this + 5);
  v4 = v6[1];
  if (v6[0])
  {
    v5 = v6[0] + 8;
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
  a2[1] = v4;
  return result;
}

void CellularPlanSettingsDevice::createDatabaseController(CellularPlanSettingsDevice *this, queue a2)
{
  WirelessUserDirectory = _GetWirelessUserDirectory();
  v6 = sub_10000501C(&v18, WirelessUserDirectory);
  v7 = std::string::append(v6, "/Library/Preferences/no_backup", 0x1EuLL);
  v20 = *v7;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v19) < 0)
  {
    operator delete(v18);
  }

  v8 = SHIBYTE(v20.__r_.__value_.__r.__words[2]);
  size = v20.__r_.__value_.__l.__size_;
  if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v10 = HIBYTE(v20.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v10 = v20.__r_.__value_.__l.__size_;
  }

  memset(&v17, 0, sizeof(v17));
  v11 = &v17;
  sub_1000677C4(&v17, v10 + 1);
  if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v11 = v17.__r_.__value_.__r.__words[0];
  }

  if (v10)
  {
    if (v8 >= 0)
    {
      v12 = &v20;
    }

    else
    {
      v12 = v20.__r_.__value_.__r.__words[0];
    }

    memmove(v11, v12, v10);
  }

  *(&v11->__r_.__value_.__l.__data_ + v10) = 47;
  v13 = std::string::append(&v17, "remoteplandb.sqlite", 0x13uLL);
  v14 = *&v13->__r_.__value_.__l.__data_;
  v19 = v13->__r_.__value_.__r.__words[2];
  v18 = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3321888768;
  block[2] = sub_1002E8C98;
  block[3] = &unk_101E3E800;
  block[4] = this;
  if (v8 < 0)
  {
    sub_100005F2C(&__p, v20.__r_.__value_.__l.__data_, size);
  }

  else
  {
    __p = v20;
  }

  if (qword_101FBA1E0 != -1)
  {
    dispatch_once(&qword_101FBA1E0, block);
  }

  if (*a2.fObj.fObj)
  {
    dispatch_retain(*a2.fObj.fObj);
  }

  sub_1002F50AC();
}

void sub_1002E8BFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, dispatch_object_t object, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (*(v32 - 105) < 0)
  {
    operator delete(*(v32 - 128));
  }

  if (v31 < 0)
  {
    operator delete(*(v32 - 96));
  }

  _Unwind_Resume(exception_object);
}

void sub_1002E8C84()
{
  if (*(v0 - 105) < 0)
  {
    JUMPOUT(0x1002E8C78);
  }

  JUMPOUT(0x1002E8C7CLL);
}

void sub_1002E8C98(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = 0;
  v4 = 0;
  Registry::getFileSystemInterface(&v3, *(v2 + 56));
  if (v3 && ((*(*v3 + 88))(v3, a1 + 40) & 1) == 0)
  {
    (*(*v3 + 72))();
  }

  if (v4)
  {
    sub_100004A34(v4);
  }
}

void sub_1002E8D58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

char *sub_1002E8D70(char *result, uint64_t a2)
{
  if (*(a2 + 63) < 0)
  {
    return sub_100005F2C(result + 40, *(a2 + 40), *(a2 + 48));
  }

  v2 = *(a2 + 40);
  *(result + 7) = *(a2 + 56);
  *(result + 40) = v2;
  return result;
}

void sub_1002E8D9C(uint64_t a1)
{
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }
}

uint64_t CellularPlanSettingsDevice::shouldResetVolteOnSignupIntent(uint64_t a1, uint64_t a2)
{
  theDict = 0;
  ServiceMap = Registry::getServiceMap(*(a1 + 56));
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
  v20 = v5;
  v9 = sub_100009510(&v4[1].__m_.__sig, &v20);
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
  (*(*v11 + 80))(&v18, v11, a2, 1, @"RemoteCardProvisioningSettings", 0, 0);
  sub_100010180(&theDict, &v18);
  sub_10000A1EC(&v18);
  if ((v12 & 1) == 0)
  {
    sub_100004A34(v10);
  }

  if (!theDict)
  {
    goto LABEL_15;
  }

  Value = CFDictionaryGetValue(theDict, @"ResetVolteSettingOnSignupIntent");
  v14 = Value;
  LOBYTE(v20) = 0;
  if (Value)
  {
    v15 = CFGetTypeID(Value);
    if (v15 == CFBooleanGetTypeID())
    {
      ctu::cf::assign(&v20, v14, v16);
      LOBYTE(v14) = v20;
      goto LABEL_16;
    }

LABEL_15:
    LOBYTE(v14) = 0;
  }

LABEL_16:
  sub_10001021C(&theDict);
  return v14 & 1;
}

void sub_1002E8F44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10000A1EC(va);
  if ((v4 & 1) == 0)
  {
    sub_100004A34(v3);
  }

  _Unwind_Resume(a1);
}

void CellularPlanSettingsDevice::resetVolteToDefault(Registry **this)
{
  ServiceMap = Registry::getServiceMap(this[7]);
  v2 = ServiceMap;
  if ((v3 & 0x8000000000000000) != 0)
  {
    v4 = (v3 & 0x7FFFFFFFFFFFFFFFLL);
    v5 = 5381;
    do
    {
      v3 = v5;
      v6 = *v4++;
      v5 = (33 * v5) ^ v6;
    }

    while (v6);
  }

  std::mutex::lock(ServiceMap);
  v13 = v3;
  v7 = sub_100009510(&v2[1].__m_.__sig, &v13);
  if (v7)
  {
    v9 = v7[3];
    v8 = v7[4];
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v2);
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v8);
      v10 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v9 = 0;
  }

  std::mutex::unlock(v2);
  v8 = 0;
  v10 = 1;
LABEL_9:
  (*(*v9 + 8))(&v11, v9, 1);
  (*(*v11 + 64))(v11, 2);
  if (v12)
  {
    sub_100004A34(v12);
  }

  if ((v10 & 1) == 0)
  {
    sub_100004A34(v8);
  }
}

void sub_1002E90C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100004A34(a11);
  }

  if ((v12 & 1) == 0)
  {
    sub_100004A34(v11);
  }

  _Unwind_Resume(exception_object);
}

void CellularPlanSettingsDevice::enableLte(Registry **this)
{
  ServiceMap = Registry::getServiceMap(this[7]);
  v2 = ServiceMap;
  if ((v3 & 0x8000000000000000) != 0)
  {
    v4 = (v3 & 0x7FFFFFFFFFFFFFFFLL);
    v5 = 5381;
    do
    {
      v3 = v5;
      v6 = *v4++;
      v5 = (33 * v5) ^ v6;
    }

    while (v6);
  }

  std::mutex::lock(ServiceMap);
  v11 = v3;
  v7 = sub_100009510(&v2[1].__m_.__sig, &v11);
  if (v7)
  {
    v9 = v7[3];
    v8 = v7[4];
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v2);
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v8);
      v10 = 0;
      if (!v9)
      {
        goto LABEL_12;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v9 = 0;
  }

  std::mutex::unlock(v2);
  v8 = 0;
  v10 = 1;
  if (!v9)
  {
    goto LABEL_12;
  }

LABEL_10:
  if (MaxDataRateInterface::getUserPreferenceEnableLTE(v9) != 2)
  {
    v13 = 0;
    (*(*v9 + 24))(v9, 1, 3, v12);
    sub_1002F5210(v12);
  }

LABEL_12:
  if ((v10 & 1) == 0)
  {
    sub_100004A34(v8);
  }
}

void sub_1002E925C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1002F5210(va);
  if ((v4 & 1) == 0)
  {
    sub_100004A34(v3);
  }

  _Unwind_Resume(a1);
}

void CellularPlanSettingsDevice::createConnectivityProbe(CellularPlanSettingsDevice *this, queue a2, char a3)
{
  v5 = a3;
  sub_100004AA0(&v4, this + 5);
  sub_1002F5290();
}

void sub_1002E9310(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002E93A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void CellularPlanSettingsDevice::createUploadTriggersModel(uint64_t a1@<X0>, uint64_t *a6@<X5>, uint64_t *a7@<X6>, void *a8@<X8>)
{
  if (*(a1 + 56))
  {
    sub_100004AA0(v12, (a1 + 40));
    v12[1] = v12[0];
    v12[0] = 0uLL;
    v10 = a6[1];
    if (v10)
    {
      atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
    }

    v11 = a7[1];
    if (v11)
    {
      atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    }

    sub_10078D2AC(&v13);
  }

  *a8 = 0;
  a8[1] = 0;
}

void sub_1002E958C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  sub_10176A7C4(v10 + 8);
  _Unwind_Resume(a1);
}

void CellularPlanSettingsDevice::createCloudMonitor(void x0_0, uint64_t *a1, NSObject **a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v9 = a1[1];
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  if (*a2)
  {
    dispatch_retain(*a2);
  }

  v10 = a3[1];
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  v11 = a4[1];
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  v12 = a5[1];
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }

  sub_100938A40();
}

void sub_1002E96D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, ...)
{
  if (a11)
  {
    sub_100004A34(a11);
  }

  sub_10176A804(v11 + 8);
  _Unwind_Resume(a1);
}

void CellularPlanSettingsDevice::createCellularPlanSourceTransferModel(uint64_t a1, NSObject **a2, uint64_t *a3)
{
  sub_100004AA0(v7, (a1 + 40));
  v7[1] = v7[0];
  v7[0] = 0uLL;
  if (*a2)
  {
    dispatch_retain(*a2);
  }

  v6 = a3[1];
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  CellularPlanSourceTransferModel::create(&v8);
}

void sub_1002E97D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, uint64_t a5, uint64_t a6, std::__shared_weak_count *a7, ...)
{
  va_start(va, a7);
  if (a7)
  {
    sub_100004A34(a7);
  }

  sub_10176A784(va);
  _Unwind_Resume(a1);
}

void CellularPlanSettingsDevice::createCellularPlanMultiplePlanInstallScheduler(uint64_t a1, NSObject **a2, uint64_t *a3)
{
  sub_100004AA0(v7, (a1 + 40));
  v7[1] = v7[0];
  v7[0] = 0uLL;
  if (*a2)
  {
    dispatch_retain(*a2);
  }

  v6 = a3[1];
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 16), 1uLL, memory_order_relaxed);
  }

  sub_10063E1E0();
}

void sub_1002E98CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, ...)
{
  va_start(va, a11);
  if (a11)
  {
    std::__shared_weak_count::__release_weak(a11);
  }

  sub_10176A784(va);
  _Unwind_Resume(a1);
}

const void **CellularPlanSettingsDevice::getPhoneAccountTransferDict_sync@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  values = @"PhoneAccountTransfer";
  v14 = CFArrayCreate(kCFAllocatorDefault, &values, 1, &kCFTypeArrayCallBacks);
  v17 = 0;
  v18 = v14;
  v16 = v14;
  if (v14)
  {
    CFRetain(v14);
  }

  CellularPlanSettingsDevice::getMatchingCarrierBundleValuesByKeys(a1, a2, a3, a4, a5, a6, &v16, &v17);
  sub_100010250(&v16);
  sub_100010180(a7, &v17);
  sub_1000296E0(&v17);
  return sub_100010250(&v18);
}

void sub_1002E99FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

const void **CellularPlanSettingsDevice::getLocalSmdpUrl_sync@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = 0;
  *(a7 + 8) = 0;
  *(a7 + 16) = 0;
  theDict = 0;
  CellularPlanSettingsDevice::getPhoneAccountTransferDict_sync(a1, a2, a3, a4, a5, a6, &theDict);
  if (theDict && CFDictionaryContainsKey(theDict, @"PhoneAccountTransfer"))
  {
    Value = CFDictionaryGetValue(theDict, @"PhoneAccountTransfer");
    v9 = Value;
    if (Value && (v10 = CFGetTypeID(Value), v10 == CFDictionaryGetTypeID()))
    {
      if (CFDictionaryContainsKey(v9, @"LocalInstallSMDPURL"))
      {
        CFDictionaryGetValue(v9, @"LocalInstallSMDPURL");
        v18 = 0;
        v19 = 0uLL;
        ctu::cf::assign();
        v11 = v19;
        v12 = *(&v19 + 7);
        *a7 = v18;
        *(a7 + 8) = v11;
        *(a7 + 15) = v12;
        *(a7 + 23) = HIBYTE(v19);
      }
    }

    else
    {
      v13 = *sGetCellularPlanSettingsDeviceLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_10176A858(v13, v14, v15);
      }
    }
  }

  return sub_10001021C(&theDict);
}

void sub_1002E9B4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_10001021C(&a9);
  _Unwind_Resume(a1);
}

const void **CellularPlanSettingsDevice::getTransferWebsheetUrl_sync@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = 0;
  *(a7 + 8) = 0;
  *(a7 + 16) = 0;
  theDict = 0;
  CellularPlanSettingsDevice::getPhoneAccountTransferDict_sync(a1, a2, a3, a4, a5, a6, &theDict);
  if (theDict && CFDictionaryContainsKey(theDict, @"PhoneAccountTransfer"))
  {
    Value = CFDictionaryGetValue(theDict, @"PhoneAccountTransfer");
    v9 = Value;
    if (Value && (v10 = CFGetTypeID(Value), v10 == CFDictionaryGetTypeID()))
    {
      if (CFDictionaryContainsKey(v9, @"TransferPageURL"))
      {
        CFDictionaryGetValue(v9, @"TransferPageURL");
        v18 = 0;
        v19 = 0uLL;
        ctu::cf::assign();
        v11 = v19;
        v12 = *(&v19 + 7);
        *a7 = v18;
        *(a7 + 8) = v11;
        *(a7 + 15) = v12;
        *(a7 + 23) = HIBYTE(v19);
      }
    }

    else
    {
      v13 = *sGetCellularPlanSettingsDeviceLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_10176A858(v13, v14, v15);
      }
    }
  }

  return sub_10001021C(&theDict);
}

void sub_1002E9C94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_10001021C(&a9);
  _Unwind_Resume(a1);
}

const void **CellularPlanSettingsDevice::getCarrierAuthHost_sync@<X0>(const void **result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = 0;
  *(a7 + 8) = 0;
  *(a7 + 16) = 0;
  v8 = *(a2 + 23);
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a2 + 8);
  }

  if (v8)
  {
    v10 = *(a3 + 23);
    if ((v10 & 0x80u) != 0)
    {
      v10 = *(a3 + 8);
    }

    if (v10)
    {
      v15 = result;
      values = @"CarrierAuthHost";
      v16 = CFArrayCreate(kCFAllocatorDefault, &values, 1, &kCFTypeArrayCallBacks);
      theDict = 0;
      v25 = v16;
      v23 = v16;
      if (v16)
      {
        CFRetain(v16);
      }

      CellularPlanSettingsDevice::getMatchingCarrierBundleValuesByKeys(v15, a2, a3, a4, a5, a6, &v23, buf);
      sub_100010180(&theDict, buf);
      sub_1000296E0(buf);
      sub_100010250(&v23);
      if (theDict)
      {
        if (CFDictionaryContainsKey(theDict, @"CarrierAuthHost"))
        {
          CFDictionaryGetValue(theDict, @"CarrierAuthHost");
          memset(buf, 0, sizeof(buf));
          ctu::cf::assign();
          v18 = *buf;
          v17 = *&buf[8];
          v19 = *&buf[15];
          *a7 = *buf;
          *(a7 + 8) = v17;
          *(a7 + 15) = v19;
          v20 = buf[23];
          *(a7 + 23) = buf[23];
          v21 = *sGetCellularPlanSettingsDeviceLog();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            if (v20 >= 0)
            {
              v22 = a7;
            }

            else
            {
              v22 = v18;
            }

            *buf = 136315138;
            *&buf[4] = v22;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I Carrier auth host endpoint: [%s]", buf, 0xCu);
          }
        }
      }

      sub_10001021C(&theDict);
      return sub_100010250(&v25);
    }
  }

  return result;
}

void sub_1002E9EC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, const void *a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_10001021C(&a10);
  sub_100010250(&a11);
  if (v19 < 0)
  {
    operator delete(v18);
  }

  _Unwind_Resume(a1);
}

void CellularPlanSettingsDevice::getCarrierAuthHostWithCarrierIdentification_sync(const void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, const void **a6@<X5>, uint64_t a7@<X8>)
{
  v7 = *(a6 + 23);
  if (v7 < 0)
  {
    v7 = a6[1];
  }

  if (!v7)
  {
    v12 = *sGetCellularPlanSettingsDeviceLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Carrier identification is empty", buf, 2u);
    }

    sub_10000501C(buf, "");
    CellularPlanSettingsDevice::getCarrierAuthHost_sync(a1, a2, a3, a4, a5, buf, a7);
    if (SBYTE7(v52) < 0)
    {
      operator delete(*buf);
    }

    return;
  }

  values = @"CarrierIdentificationToCarrierInformation";
  v9 = CFArrayCreate(kCFAllocatorDefault, &values, 1, &kCFTypeArrayCallBacks);
  v64 = 0;
  v65 = v9;
  v63 = v9;
  if (v9)
  {
    CFRetain(v9);
  }

  CellularPlanSettingsDevice::getMatchingCountryBundleValuesByKeys(a1, a2, a3, &v63, &v64);
  sub_100010250(&v63);
  if (!v64 || (TypeID = CFArrayGetTypeID(), TypeID != CFGetTypeID(v64)))
  {
    v11 = *sGetCellularPlanSettingsDeviceLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I Failed to find key from country bundle", buf, 2u);
    }

    sub_10000501C(buf, "");
    CellularPlanSettingsDevice::getCarrierAuthHost_sync(a1, a2, a3, a4, a5, buf, a7);
    goto LABEL_93;
  }

  v62 = v64;
  if (v64)
  {
    CFRetain(v64);
    *&v60 = v62;
    CFRetain(v62);
  }

  else
  {
    *&v60 = 0;
  }

  v59.__r_.__value_.__r.__words[0] = 0;
  *buf = 0;
  sub_10006DD00(buf, &v60);
  if (*buf)
  {
    sub_1002F5980(&v59.__r_.__value_.__l.__data_, buf);
  }

  sub_100010250(buf);
  *v49 = v59.__r_.__value_.__r.__words[0];
  v59.__r_.__value_.__r.__words[0] = 0;
  sub_100010250(&v59.__r_.__value_.__l.__data_);
  sub_10000A1EC(&v60);
  v13 = *v49;
  sub_100010250(v49);
  sub_10000A1EC(&v62);
  Count = CFArrayGetCount(v13);
  if (Count < 1)
  {
    goto LABEL_90;
  }

  v15 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v13, v15);
    v17 = ValueAtIndex;
    if (ValueAtIndex)
    {
      v18 = CFGetTypeID(ValueAtIndex);
      if (v18 != CFDictionaryGetTypeID())
      {
        v17 = 0;
      }
    }

    Value = CFDictionaryGetValue(v17, @"CarrierIdentification");
    if (Value)
    {
      CFGetTypeID(Value);
      CFStringGetTypeID();
    }

    memset(buf, 0, sizeof(buf));
    *&v52 = 0;
    ctu::cf::assign();
    v61 = v52;
    v60 = *buf;
    v20 = a6[1];
    v21 = *(a6 + 23);
    v22 = SBYTE7(v52);
    if ((SBYTE7(v52) & 0x80u) == 0)
    {
      v23 = HIBYTE(v61);
    }

    else
    {
      v23 = *(&v60 + 1);
    }

    if (v21 >= 0)
    {
      v20 = *(a6 + 23);
    }

    if (v23 != v20)
    {
      v26 = 0;
      if ((SBYTE7(v52) & 0x80000000) == 0)
      {
        goto LABEL_43;
      }

LABEL_42:
      operator delete(v60);
      goto LABEL_43;
    }

    if ((SBYTE7(v52) & 0x80u) == 0)
    {
      v24 = &v60;
    }

    else
    {
      v24 = v60;
    }

    if (v21 >= 0)
    {
      v25 = a6;
    }

    else
    {
      v25 = *a6;
    }

    v26 = memcmp(v24, v25, v23) == 0;
    if (v22 < 0)
    {
      goto LABEL_42;
    }

LABEL_43:
    if (v26)
    {
      break;
    }

    if (Count == ++v15)
    {
      goto LABEL_90;
    }
  }

  v27 = *sGetCellularPlanSettingsDeviceLog();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#I Found a matching carrier identification from bundle", buf, 2u);
  }

  v28 = CFDictionaryGetValue(v17, @"CarrierInformation");
  v29 = v28;
  if (v28)
  {
    v30 = CFGetTypeID(v28);
    if (v30 == CFArrayGetTypeID())
    {
      v60 = 0uLL;
      v61 = 0;
      sub_10000501C(&v60, "");
      v31 = CFArrayGetCount(v29);
      if (v31 < 1)
      {
LABEL_84:
        v38 = *sGetCellularPlanSettingsDeviceLog();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "#I Fallback to carrier bundle again", buf, 2u);
        }

        sub_10000501C(buf, "");
        CellularPlanSettingsDevice::getCarrierAuthHost_sync(a1, a2, a3, a4, a5, buf, a7);
        if (SBYTE7(v52) < 0)
        {
          operator delete(*buf);
        }
      }

      else
      {
        v32 = 0;
        while (1)
        {
          memset(&v59, 0, sizeof(v59));
          CFArrayGetValueAtIndex(v29, v32);
          memset(buf, 0, sizeof(buf));
          *&v52 = 0;
          ctu::cf::assign();
          *&v59.__r_.__value_.__l.__data_ = *buf;
          v59.__r_.__value_.__r.__words[2] = v52;
          v58 = 0;
          v56 = 0u;
          v57 = 0u;
          *v54 = 0u;
          *v55 = 0u;
          v52 = 0u;
          v53 = 0u;
          *buf = 0u;
          getCarrierInformation(&v59, buf);
          v33 = HIBYTE(v58);
          if (v58 < 0)
          {
            v33 = *(&v57 + 1);
          }

          if (v33)
          {
            sub_10000501C(__p, "");
            CellularPlanSettingsDevice::getCarrierAuthHost_sync(a1, &v52 + 8, v54, &v55[1], &v57, __p, v49);
            if (SHIBYTE(v61) < 0)
            {
              operator delete(v60);
            }

            v60 = *v49;
            v61 = v50;
            HIBYTE(v50) = 0;
            v49[0] = 0;
            if (v48 < 0)
            {
              operator delete(__p[0]);
            }

            v34 = HIBYTE(v61);
            if (v61 < 0)
            {
              v34 = *(&v60 + 1);
            }

            if (v34)
            {
              v35 = *sGetCellularPlanSettingsDeviceLog();
              if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
              {
                *v49 = 0;
                _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "#I Found a carrier auth URL with carrier identification", v49, 2u);
              }

              *a7 = v60;
              *(a7 + 16) = v61;
              v61 = 0;
              v60 = 0uLL;
              v36 = 1;
            }

            else
            {
              v36 = 0;
            }
          }

          else
          {
            v37 = *sGetCellularPlanSettingsDeviceLog();
            if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
            {
              *v49 = 0;
              _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "#I Skip using carrier information with empty GID2", v49, 2u);
            }

            v36 = 15;
          }

          if (SHIBYTE(v58) < 0)
          {
            operator delete(v57);
          }

          if (SHIBYTE(v56) < 0)
          {
            operator delete(v55[1]);
          }

          if (SHIBYTE(v55[0]) < 0)
          {
            operator delete(v54[0]);
          }

          if (SHIBYTE(v53) < 0)
          {
            operator delete(*(&v52 + 1));
          }

          if (SBYTE7(v52) < 0)
          {
            operator delete(*buf);
          }

          if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v59.__r_.__value_.__l.__data_);
          }

          if (v36 != 15 && v36)
          {
            break;
          }

          if (v31 == ++v32)
          {
            goto LABEL_84;
          }
        }
      }

      if (SHIBYTE(v61) < 0)
      {
        v39 = v60;
        goto LABEL_95;
      }

      goto LABEL_96;
    }
  }

LABEL_90:
  v40 = *sGetCellularPlanSettingsDeviceLog();
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "#I No matching carrier identification from country bundle and fallback to carrier bundle", buf, 2u);
  }

  sub_10000501C(buf, "");
  CellularPlanSettingsDevice::getCarrierAuthHost_sync(a1, a2, a3, a4, a5, buf, a7);
LABEL_93:
  if (SBYTE7(v52) < 0)
  {
    v39 = *buf;
LABEL_95:
    operator delete(v39);
  }

LABEL_96:
  sub_10000A1EC(&v64);
  sub_100010250(&v65);
}

void sub_1002EA6DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a31 < 0)
  {
    operator delete(__p);
  }

  if (*(v31 - 153) < 0)
  {
    operator delete(*(v31 - 176));
  }

  sub_10000A1EC((v31 - 128));
  sub_100010250((v31 - 120));
  _Unwind_Resume(a1);
}

uint64_t CellularPlanSettingsDevice::getRemoteProvisioningSettings@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 96);
  *a2 = *(this + 88);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

uint64_t *non-virtual thunk toCellularPlanSettingsDevice::getTimerService_sync@<X0>(Registry **this@<X0>, uint64_t *a2@<X8>)
{
  return Registry::getTimerService(a2, this[4]);
}

{
  return Registry::getTimerService(a2, this[3]);
}

void CellularPlanSettingsDevice::createBootstrapDataConnectionAssertion(uint64_t a1@<X0>, uint64_t *x8_0@<X8>)
{
  v4 = *(a1 + 64);
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  sub_1006CB7F4(x8_0);
}

void sub_1002EA8B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void CellularPlanSettingsDevice::createProbeHttpRequest(void *a1@<X8>)
{
  v5[0] = 0;
  v5[1] = 0;
  v4 = v5;
  *a1 = 0;
  a1[1] = 0;
  sub_10000501C(&__p, "http://www.apple.com/library/test/success.html");
  ctu::Http::HttpRequest::create();
  if (v3 < 0)
  {
    operator delete(__p);
  }

  if (*a1)
  {
    (*(**a1 + 152))(*a1, kCTDataConnectionServiceTypeInternetProbe);
    (*(**a1 + 176))(*a1, 1);
  }

  sub_1000DD0AC(&v4, v5[0]);
}

void sub_1002EA9DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_1000DD0AC(&a17, a18);
  _Unwind_Resume(a1);
}

void CellularPlanSettingsDevice::createSimCommandOperationControl(CellularPlanSettingsDevice *this, queue a2)
{
  v4 = *a2.fObj.fObj;
  object = v4;
  if (v4)
  {
    dispatch_retain(v4);
  }

  sub_100004AA0(&v6, this + 5);
  if (v6)
  {
    v5 = v6 + 24;
  }

  else
  {
    v5 = 0;
  }

  v8 = v5;
  v9 = v7;
  v6 = 0;
  v7 = 0;
  sub_100460DE4(&v11);
}

void sub_1002EAAE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13, dispatch_object_t object)
{
  if (a13)
  {
    sub_100004A34(a13);
  }

  if (a11)
  {
    sub_100004A34(a11);
  }

  if (object)
  {
    dispatch_release(object);
  }

  _Unwind_Resume(exception_object);
}

void CellularPlanSettingsDevice::resetSim_sync(Registry **this)
{
  v2 = *sGetCellularPlanSettingsDeviceLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Send sim reprovision APDU", v3, 2u);
  }

  CellularPlanSettingsDevice::reprovisionSim_sync(this);
}

void CellularPlanSettingsDevice::reprovisionSim_sync(Registry **this)
{
  v3 = 0x15F14430000000A0;
  v4 = 16868198;
  qmemcpy(v5, "CI1", sizeof(v5));
  v2 = 0;
  memset(buf, 0, sizeof(buf));
  sub_1000DCF88(buf, &v3, &v6, 15);
  operator new();
}

void sub_1002EAEBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, char a16)
{
  if ((v19 & 1) == 0)
  {
    sub_100004A34(v18);
  }

  sub_100004A34(v17);
  sub_100004A34(v16);
  _Unwind_Resume(a1);
}

void sub_1002EAF78(id a1, BOOL a2)
{
  v2 = a2;
  v3 = *sGetCellularPlanSettingsDeviceLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 67109120;
    v4[1] = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Sent SIM reprovision: %d", v4, 8u);
  }
}

uint64_t CellularPlanSettingsDevice::saveLastIccidToReset_sync(uint64_t a1, uint64_t a2)
{
  if (*a2 == 1)
  {
    if (*(a2 + 31) < 0)
    {
      sub_100005F2C(v6, *(a2 + 8), *(a2 + 16));
    }

    else
    {
      *v6 = *(a2 + 8);
      v7 = *(a2 + 24);
    }

    if (SHIBYTE(v7) < 0)
    {
      sub_100005F2C(__p, v6[0], v6[1]);
    }

    else
    {
      *__p = *v6;
      v11 = v7;
    }

    v9 = 0;
    if (SHIBYTE(v11) < 0)
    {
      sub_100005F2C(&__dst, __p[0], __p[1]);
    }

    else
    {
      __dst = *__p;
      v13 = v11;
    }

    v14 = 0;
    if (ctu::cf::convert_copy())
    {
      v3 = v9;
      v9 = v14;
      v15 = v3;
      sub_100005978(&v15);
    }

    if (SHIBYTE(v13) < 0)
    {
      operator delete(__dst);
    }

    v4 = v9;
    v8 = v9;
    v9 = 0;
    sub_100005978(&v9);
    if (SHIBYTE(v11) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v7) < 0)
    {
      operator delete(v6[0]);
    }

    v2 = kRemoteCellularPlanStorage;
    if (v4)
    {
      CFPreferencesSetAppValue(@"RemotePlanSimOperationLastResetKey", v4, kRemoteCellularPlanStorage);
    }

    sub_100005978(&v8);
  }

  else
  {
    v2 = kRemoteCellularPlanStorage;
    CFPreferencesSetAppValue(@"RemotePlanSimOperationLastResetKey", 0, kRemoteCellularPlanStorage);
  }

  return CFPreferencesAppSynchronize(v2);
}

void sub_1002EB1A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, int a17, const void *a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  sub_100005978(&a18);
  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(a1);
}

const void **CellularPlanSettingsDevice::loadLastIccidToReset_sync@<X0>(uint64_t a1@<X8>)
{
  v5 = 0;
  v6 = CFPreferencesCopyAppValue(@"RemotePlanSimOperationLastResetKey", kRemoteCellularPlanStorage);
  sub_100222990(&v5, &v6);
  if (v5)
  {
    v6 = 0;
    v7 = 0uLL;
    ctu::cf::assign();
    *&v8[7] = *(&v7 + 7);
    *v8 = v7;
    v2 = HIBYTE(v7);
    v3 = v7;
    *(a1 + 8) = v6;
    *(a1 + 16) = v3;
    *(a1 + 23) = *&v8[7];
    *(a1 + 31) = v2;
    *a1 = 1;
  }

  else
  {
    *a1 = 0;
  }

  return sub_100005978(&v5);
}

void sub_1002EB2E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_100005978(&a10);
  _Unwind_Resume(a1);
}

uint64_t CellularPlanSettingsDevice::getCBSettingNeedsSimReset_sync(Registry **this)
{
  cf = 0;
  ServiceMap = Registry::getServiceMap(this[7]);
  v2 = ServiceMap;
  if ((v3 & 0x8000000000000000) != 0)
  {
    v4 = (v3 & 0x7FFFFFFFFFFFFFFFLL);
    v5 = 5381;
    do
    {
      v3 = v5;
      v6 = *v4++;
      v5 = (33 * v5) ^ v6;
    }

    while (v6);
  }

  std::mutex::lock(ServiceMap);
  v16 = v3;
  v7 = sub_100009510(&v2[1].__m_.__sig, &v16);
  if (v7)
  {
    v9 = v7[3];
    v8 = v7[4];
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v2);
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v8);
      v10 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v9 = 0;
  }

  std::mutex::unlock(v2);
  v8 = 0;
  v10 = 1;
LABEL_9:
  (*(*v9 + 40))(&cf, v9, kCarrier1BundleId, @"CardProvisioningRequiresResetTrigger", 0, 0);
  if ((v10 & 1) == 0)
  {
    sub_100004A34(v8);
  }

  v11 = cf;
  LOBYTE(v16) = 0;
  if (cf)
  {
    v12 = CFGetTypeID(cf);
    if (v12 == CFBooleanGetTypeID())
    {
      ctu::cf::assign(&v16, v11, v13);
      LOBYTE(v11) = v16;
    }

    else
    {
      LOBYTE(v11) = 0;
    }
  }

  sub_10000A1EC(&cf);
  return v11 & 1;
}

void sub_1002EB484(_Unwind_Exception *exception_object)
{
  v3 = v1;
  if ((v3 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CellularPlanSettingsDevice::getCBSettingNeedsSimReprovision_sync(Registry **this)
{
  cf = 0;
  ServiceMap = Registry::getServiceMap(this[7]);
  v2 = ServiceMap;
  if ((v3 & 0x8000000000000000) != 0)
  {
    v4 = (v3 & 0x7FFFFFFFFFFFFFFFLL);
    v5 = 5381;
    do
    {
      v3 = v5;
      v6 = *v4++;
      v5 = (33 * v5) ^ v6;
    }

    while (v6);
  }

  std::mutex::lock(ServiceMap);
  v16 = v3;
  v7 = sub_100009510(&v2[1].__m_.__sig, &v16);
  if (v7)
  {
    v9 = v7[3];
    v8 = v7[4];
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v2);
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v8);
      v10 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v9 = 0;
  }

  std::mutex::unlock(v2);
  v8 = 0;
  v10 = 1;
LABEL_9:
  (*(*v9 + 40))(&cf, v9, kCarrier1BundleId, @"CardSupportsReprovisionTrigger", 0, 0);
  if ((v10 & 1) == 0)
  {
    sub_100004A34(v8);
  }

  v11 = cf;
  LOBYTE(v16) = 0;
  if (cf)
  {
    v12 = CFGetTypeID(cf);
    if (v12 == CFBooleanGetTypeID())
    {
      ctu::cf::assign(&v16, v11, v13);
      LOBYTE(v11) = v16;
    }

    else
    {
      LOBYTE(v11) = 0;
    }
  }

  sub_10000A1EC(&cf);
  return v11 & 1;
}

void sub_1002EB628(_Unwind_Exception *exception_object)
{
  v3 = v1;
  if ((v3 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(exception_object);
}

const void **CellularPlanSettingsDevice::getCarrierEntitlementsAndPushSettingsFromBundle@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  values[0] = @"CarrierEntitlements";
  values[1] = @"PushSettings";
  v14 = CFArrayCreate(kCFAllocatorDefault, values, 2, &kCFTypeArrayCallBacks);
  theDict = 0;
  v44 = v14;
  v42 = v14;
  if (v14)
  {
    CFRetain(v14);
  }

  CellularPlanSettingsDevice::getMatchingCarrierBundleValuesByKeys(a1, a2, a3, a4, a5, a6, &v42, &theDict);
  sub_100010250(&v42);
  v41 = 0;
  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"CarrierEntitlements");
    v16 = Value;
    if (Value && (v17 = CFGetTypeID(Value), v17 == CFDictionaryGetTypeID()))
    {
      MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v16);
      v19 = v41;
      v41 = MutableCopy;
      v38 = v19;
      sub_1000296E0(&v38);
      if (CFDictionaryContainsKey(v41, @"SupportedActions"))
      {
        theArray = 0;
        Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
        if (Mutable)
        {
          v21 = theArray;
          theArray = Mutable;
          v38 = v21;
          sub_1000279DC(&v38);
        }

        v22 = CFDictionaryGetValue(v41, @"SupportedActions");
        v23 = v22;
        if (v22)
        {
          v24 = CFGetTypeID(v22);
          if (v24 == CFArrayGetTypeID())
          {
            Count = CFArrayGetCount(v23);
            if (Count >= 1)
            {
              for (i = 0; i != Count; ++i)
              {
                ValueAtIndex = CFArrayGetValueAtIndex(v23, i);
                v28 = ValueAtIndex;
                if (ValueAtIndex)
                {
                  v29 = CFGetTypeID(ValueAtIndex);
                  if (v29 == CFStringGetTypeID() && (CFStringCompare(v28, @"TransferSIMService", 1uLL) == kCFCompareEqualTo || CFStringCompare(v28, @"transferAuthorization", 1uLL) == kCFCompareEqualTo))
                  {
                    sub_1002F5B6C(theArray, v28);
                  }
                }
              }
            }
          }
        }

        CFDictionaryRemoveValue(v41, @"SupportedActions");
        if (CFArrayGetCount(theArray) >= 1)
        {
          sub_1002B24E0(v41, @"SupportedActions", theArray);
        }

        sub_1000279DC(&theArray);
      }
    }

    else
    {
      v30 = *sGetCellularPlanSettingsDeviceLog();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        sub_10176A8D8(@"CarrierEntitlements", v30, v31);
      }
    }

    theArray = 0;
    if (theDict)
    {
      v32 = CFDictionaryGetValue(theDict, @"PushSettings");
      v33 = v32;
      if (v32)
      {
        v34 = CFGetTypeID(v32);
        if (v34 == CFDictionaryGetTypeID())
        {
          v35 = CFDictionaryCreateMutableCopy(0, 0, v33);
          v36 = theArray;
          theArray = v35;
          v38 = v36;
          sub_1000296E0(&v38);
        }
      }
    }
  }

  else
  {
    theArray = 0;
  }

  v38 = v41;
  if (v41)
  {
    CFRetain(v41);
  }

  v39 = theArray;
  if (theArray)
  {
    CFRetain(theArray);
  }

  sub_1002F2978(a7, &v38);
  sub_1000296E0(&v39);
  sub_1000296E0(&v38);
  sub_1000296E0(&theArray);
  sub_1000296E0(&v41);
  sub_1000296E0(&theDict);
  return sub_100010250(&v44);
}

void sub_1002EB9F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va3, a5);
  va_start(va2, a5);
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v8 = va_arg(va2, const void *);
  v10 = va_arg(va2, void);
  va_copy(va3, va2);
  v11 = va_arg(va3, const void *);
  sub_1000279DC(va);
  sub_1000296E0(va1);
  sub_1000296E0(va2);
  sub_100010250(va3);
  _Unwind_Resume(a1);
}

const void **CellularPlanSettingsDevice::getLimitedCarrierEntitlementsBundleFromBundle@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  value = 0;
  v7 = 0;
  (*(*a1 + 232))(&value);
  theDict = 0;
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    theDict = Mutable;
    v8 = 0;
    sub_1000296E0(&v8);
  }

  if (value)
  {
    CFDictionaryAddValue(theDict, @"CarrierEntitlements", value);
  }

  if (v7)
  {
    CFDictionaryAddValue(theDict, @"PushSettings", v7);
  }

  sub_100010180(a2, &theDict);
  sub_1000296E0(&theDict);
  sub_10001021C(&v7);
  return sub_10001021C(&value);
}

void sub_1002EBB8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  sub_1000296E0(&a9);
  sub_10001021C((v10 + 8));
  sub_10001021C(&a10);
  _Unwind_Resume(a1);
}

const void **CellularPlanSettingsDevice::getCarrierSettingsForUsableSIM@<X0>(uint64_t a1@<X0>, const void **a2@<X1>, void *a3@<X8>)
{
  *v10 = 0;
  Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  if (Mutable)
  {
    *v10 = Mutable;
    v11 = 0;
    sub_1000279DC(&v11);
    Mutable = *v10;
  }

  sub_1002F5B6C(Mutable, @"CarrierEntitlements");
  sub_1002F5B6C(*v10, @"PhoneNumberRegistrationGatewayAddress");
  sub_100010024(&v9, a2);
  sub_10002A7D8(&v8, v10);
  sub_1002E2AC4((a1 + 56), &v9, &v8, &v11);
  sub_100010180(a3, &v11);
  sub_1000296E0(&v11);
  sub_100010250(&v8);
  sub_10001021C(&v9);
  return sub_1000279DC(v10);
}

void sub_1002EBCA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, const void *a11, const void *a12)
{
  sub_1000296E0(&a12);
  sub_100010250(&a9);
  sub_10001021C(&a10);
  sub_1000279DC(&a11);
  _Unwind_Resume(a1);
}

unint64_t CellularPlanSettingsDevice::isiPhonePlanTransferSupported_sync(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  values = @"CarrierEntitlements";
  v12 = CFArrayCreate(kCFAllocatorDefault, &values, 1, &kCFTypeArrayCallBacks);
  theDict = 0;
  v25 = v12;
  v23 = v12;
  if (v12)
  {
    CFRetain(v12);
  }

  CellularPlanSettingsDevice::getMatchingCarrierBundleValuesByKeys(a1, a2, a3, a4, a5, a6, &v23, __p);
  sub_100010180(&theDict, __p);
  sub_1000296E0(__p);
  sub_100010250(&v23);
  if (theDict && (Value = CFDictionaryGetValue(theDict, @"CarrierEntitlements"), (v14 = Value) != 0) && (v15 = CFGetTypeID(Value), v15 == CFDictionaryGetTypeID()))
  {
    v21 = 0;
    v22 = 0;
    v16 = *(a1 + 64);
    v20 = v16;
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    __p[0] = 0;
    __p[1] = 0;
    v27 = 0;
    sub_100A80D48(&v21, v14, 8u);
    if (SHIBYTE(v27) < 0)
    {
      operator delete(__p[0]);
    }

    if (v20)
    {
      sub_100004A34(v20);
    }

    if (v21)
    {
      v17 = (sub_100A80E30(v21) >> 13) & 1;
    }

    else
    {
      v17 = 0;
    }

    if (v22)
    {
      sub_100004A34(v22);
    }
  }

  else
  {
    v17 = 0;
  }

  sub_10001021C(&theDict);
  v18 = *sGetCellularPlanSettingsDeviceLog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(__p[0]) = 67109120;
    HIDWORD(__p[0]) = v17;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I iPhone Transfer supported: [%d]", __p, 8u);
  }

  sub_100010250(&v25);
  return v17;
}

void sub_1002EBF04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, char a14, int a15, const void *a16, const void *a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a13)
  {
    sub_100004A34(a13);
  }

  sub_10001021C(&a16);
  sub_100010250(&a17);
  _Unwind_Resume(a1);
}

uint64_t CellularPlanSettingsDevice::isCrossPlatformTransferSupported_sync(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  values = @"CarrierEntitlements";
  v12 = CFArrayCreate(kCFAllocatorDefault, &values, 1, &kCFTypeArrayCallBacks);
  theDict = 0;
  v29 = v12;
  v27 = v12;
  if (v12)
  {
    CFRetain(v12);
  }

  CellularPlanSettingsDevice::getMatchingCarrierBundleValuesByKeys(a1, a2, a3, a4, a5, a6, &v27, __p);
  sub_100010180(&theDict, __p);
  sub_1000296E0(__p);
  sub_100010250(&v27);
  if (theDict && (Value = CFDictionaryGetValue(theDict, @"CarrierEntitlements"), (v14 = Value) != 0) && (v15 = CFGetTypeID(Value), v15 == CFDictionaryGetTypeID()))
  {
    v25 = 0;
    v26 = 0;
    v16 = *(a1 + 64);
    v23 = *(a1 + 56);
    v24 = v16;
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    __p[0] = 0;
    __p[1] = 0;
    v22 = 0;
    sub_100A80D48(&v25, v14, 8u);
    if (SHIBYTE(v22) < 0)
    {
      operator delete(__p[0]);
    }

    if (v24)
    {
      sub_100004A34(v24);
    }

    if (v25)
    {
      sub_100A83764(v25, @"SupportCrossPlatformSIMTransfer", __p);
      v17 = __p[0];
      LOBYTE(v23) = 0;
      if (__p[0])
      {
        v18 = CFGetTypeID(__p[0]);
        if (v18 == CFBooleanGetTypeID())
        {
          ctu::cf::assign(&v23, v17, v19);
          LOBYTE(v17) = v23;
        }

        else
        {
          LOBYTE(v17) = 0;
        }
      }

      sub_10000A1EC(__p);
    }

    else
    {
      LOBYTE(v17) = 0;
    }

    if (v26)
    {
      sub_100004A34(v26);
    }
  }

  else
  {
    LOBYTE(v17) = 0;
  }

  sub_10001021C(&theDict);
  sub_100010250(&v29);
  return v17 & 1;
}

void sub_1002EC1B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, char a19, int a20, const void *a21, const void *a22)
{
  if (a18)
  {
    sub_100004A34(a18);
  }

  sub_10001021C(&a21);
  sub_100010250(&a22);
  _Unwind_Resume(a1);
}

uint64_t CellularPlanSettingsDevice::isPasscodeRequiredForCrossPlatformTransfer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  theDict = 0;
  CellularPlanSettingsDevice::getPhoneAccountTransferDict_sync(a1, a2, a3, a4, a5, a6, &theDict);
  if (!theDict)
  {
    CellularPlanSettingsDeviceLog = sGetCellularPlanSettingsDeviceLog();
    if (os_log_type_enabled(*CellularPlanSettingsDeviceLog, OS_LOG_TYPE_ERROR))
    {
      sub_1017678B8();
    }

    goto LABEL_22;
  }

  if (!CFDictionaryContainsKey(theDict, @"PhoneAccountTransfer"))
  {
    v14 = sGetCellularPlanSettingsDeviceLog();
    if (os_log_type_enabled(*v14, OS_LOG_TYPE_ERROR))
    {
      sub_101767884();
    }

    goto LABEL_22;
  }

  Value = CFDictionaryGetValue(theDict, @"PhoneAccountTransfer");
  if (!CFDictionaryContainsKey(Value, @"RequiresPasscodeForCrossPlatformTransfer"))
  {
    v17 = *sGetCellularPlanSettingsDeviceLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a6 + 23) >= 0)
      {
        v18 = a6;
      }

      else
      {
        v18 = *a6;
      }

      *buf = 136315138;
      v22[0] = v18;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I CrossPlatformPasscodeRequiredForTransfer not present in CB entitlements for ICCID: [%s]", buf, 0xCu);
    }

LABEL_22:
    LOBYTE(v12) = 0;
    goto LABEL_23;
  }

  v8 = CFDictionaryGetValue(Value, @"RequiresPasscodeForCrossPlatformTransfer");
  v9 = v8;
  buf[0] = 0;
  if (v8 && (v10 = CFGetTypeID(v8), v10 == CFBooleanGetTypeID()))
  {
    ctu::cf::assign(buf, v9, v11);
    v12 = buf[0];
  }

  else
  {
    v12 = 0;
  }

  v15 = *sGetCellularPlanSettingsDeviceLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a6 + 23) >= 0)
    {
      v16 = a6;
    }

    else
    {
      v16 = *a6;
    }

    *buf = 67109378;
    LODWORD(v22[0]) = v12;
    WORD2(v22[0]) = 2080;
    *(v22 + 6) = v16;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I CrossPlatformPasscodeRequiredForTransfer is set to %d for ICCID: [%s]", buf, 0x12u);
  }

LABEL_23:
  sub_10001021C(&theDict);
  return v12 & 1;
}

void sub_1002EC460(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10001021C(va);
  _Unwind_Resume(a1);
}

uint64_t CellularPlanSettingsDevice::isEntitlementRequestViaWebServiceEnabled_sync(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *v28 = 0;
  Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  if (Mutable)
  {
    v13 = *v28;
    *v28 = Mutable;
    __p[0] = v13;
    sub_1000279DC(__p);
  }

  sub_1002F5B6C(*v28, @"CarrierEntitlements");
  theDict = 0;
  sub_10002A7D8(&v26, v28);
  CellularPlanSettingsDevice::getMatchingCarrierBundleValuesByKeys(a1, a2, a3, a4, a5, a6, &v26, __p);
  sub_100010180(&theDict, __p);
  sub_1000296E0(__p);
  sub_100010250(&v26);
  if (!theDict)
  {
    goto LABEL_17;
  }

  Value = CFDictionaryGetValue(theDict, @"CarrierEntitlements");
  v15 = Value;
  if (!Value)
  {
    goto LABEL_17;
  }

  v16 = CFGetTypeID(Value);
  if (v16 != CFDictionaryGetTypeID())
  {
    goto LABEL_17;
  }

  v24 = 0;
  v25 = 0;
  v17 = *(a1 + 64);
  v22 = *(a1 + 56);
  v23 = v17;
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  __p[0] = 0;
  __p[1] = 0;
  v21 = 0;
  sub_100A80D48(&v24, v15, 8u);
  if (SHIBYTE(v21) < 0)
  {
    operator delete(__p[0]);
  }

  if (v23)
  {
    sub_100004A34(v23);
  }

  v18 = v24;
  if (v24)
  {
    LOBYTE(a1) = sub_100A8379C(v24, @"EntitlementRequestViaWebService", 0);
  }

  if (v25)
  {
    sub_100004A34(v25);
  }

  if (!v18)
  {
LABEL_17:
    LOBYTE(a1) = 0;
  }

  sub_10001021C(&theDict);
  sub_1000279DC(v28);
  return a1 & 1;
}

void sub_1002EC66C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, char a19, int a20, const void *a21, const void *a22)
{
  if (a18)
  {
    sub_100004A34(a18);
  }

  sub_10001021C(&a21);
  sub_1000279DC(&a22);
  _Unwind_Resume(a1);
}

uint64_t CellularPlanSettingsDevice::isPhysicalToeSIMTransferSupported_sync(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *v28 = 0;
  Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  if (Mutable)
  {
    v13 = *v28;
    *v28 = Mutable;
    __p[0] = v13;
    sub_1000279DC(__p);
  }

  sub_1002F5B6C(*v28, @"CarrierEntitlements");
  theDict = 0;
  sub_10002A7D8(&v26, v28);
  CellularPlanSettingsDevice::getMatchingCarrierBundleValuesByKeys(a1, a2, a3, a4, a5, a6, &v26, __p);
  sub_100010180(&theDict, __p);
  sub_1000296E0(__p);
  sub_100010250(&v26);
  if (!theDict)
  {
    goto LABEL_17;
  }

  Value = CFDictionaryGetValue(theDict, @"CarrierEntitlements");
  v15 = Value;
  if (!Value)
  {
    goto LABEL_17;
  }

  v16 = CFGetTypeID(Value);
  if (v16 != CFDictionaryGetTypeID())
  {
    goto LABEL_17;
  }

  v24 = 0;
  v25 = 0;
  v17 = *(a1 + 64);
  v22 = *(a1 + 56);
  v23 = v17;
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  __p[0] = 0;
  __p[1] = 0;
  v21 = 0;
  sub_100A80D48(&v24, v15, 8u);
  if (SHIBYTE(v21) < 0)
  {
    operator delete(__p[0]);
  }

  if (v23)
  {
    sub_100004A34(v23);
  }

  v18 = v24;
  if (v24)
  {
    LOBYTE(a1) = sub_100A8379C(v24, @"SupportPhysicalSIMtoESIMTransfer", 0);
  }

  if (v25)
  {
    sub_100004A34(v25);
  }

  if (!v18)
  {
LABEL_17:
    LOBYTE(a1) = 0;
  }

  sub_10001021C(&theDict);
  sub_1000279DC(v28);
  return a1 & 1;
}

void sub_1002EC8C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, char a19, int a20, const void *a21, const void *a22)
{
  if (a18)
  {
    sub_100004A34(a18);
  }

  sub_10001021C(&a21);
  sub_1000279DC(&a22);
  _Unwind_Resume(a1);
}

void CellularPlanSettingsDevice::setSubscriberId(uint64_t a1)
{
  v1 = *(a1 + 64);
  v2 = v1;
  if (v1)
  {
    atomic_fetch_add_explicit(&v1->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  CarrierEntitlements::setSubscriberId();
  if (v2)
  {
    sub_100004A34(v2);
  }
}

void sub_1002EC994(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void CellularPlanSettingsDevice::setServiceToken(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 64);
  v4 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  CarrierEntitlements::setServiceToken();
  if (v4)
  {
    sub_100004A34(v4);
  }
}

void sub_1002ECA08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(exception_object);
}

void CellularPlanSettingsDevice::setTransferTargetSlot(uint64_t a1)
{
  v1 = *(a1 + 64);
  v2 = v1;
  if (v1)
  {
    atomic_fetch_add_explicit(&v1->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  CarrierEntitlements::setTransferTargetSlot();
  if (v2)
  {
    sub_100004A34(v2);
  }
}

void sub_1002ECA70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void *CellularPlanSettingsDevice::getCellularPlanControllerWatchSettings@<X0>(CellularPlanSettingsDevice *this@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100004AA0(v6, this + 5);
  v4 = v6[1];
  if (v6[0])
  {
    v5 = v6[0] + 16;
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
  a2[1] = v4;
  return result;
}

void CellularPlanSettingsDevice::sendRemoteSimSubscriptionInfoDidUpdate(uint64_t a1, int a2)
{
  v3 = xpc_dictionary_create(0, 0, 0);
  v4 = v3;
  if (v3)
  {
    v10 = v3;
  }

  else
  {
    v4 = xpc_null_create();
    v10 = v4;
    if (!v4)
    {
      v5 = xpc_null_create();
      v4 = 0;
      goto LABEL_8;
    }
  }

  if (xpc_get_type(v4) == &_xpc_type_dictionary)
  {
    xpc_retain(v4);
    goto LABEL_9;
  }

  v5 = xpc_null_create();
LABEL_8:
  v10 = v5;
LABEL_9:
  xpc_release(v4);
  v8 = xpc_int64_create(a2);
  if (!v8)
  {
    v8 = xpc_null_create();
  }

  v7[0] = &v10;
  v7[1] = "kCTCellularPlanSimSubscriptionStatusKey";
  sub_10000F688(v7, &v8, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v8);
  v8 = 0;
  v7[0] = v10;
  if (v10)
  {
    xpc_retain(v10);
  }

  else
  {
    v7[0] = xpc_null_create();
  }

  v6 = xpc_null_create();
  sub_10002A37C(137, v7, &v6);
  xpc_release(v6);
  xpc_release(v7[0]);
  xpc_release(v10);
}

void sub_1002ECC3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, xpc_object_t a10)
{
  xpc_release(object);
  xpc_release(a10);
  xpc_release(*(v10 - 24));
  _Unwind_Resume(a1);
}

uint64_t CellularPlanSettingsDevice::isLocationAvailable(CellularPlanSettingsDevice *this)
{
  result = +[CTLocationManager sharedManager];
  if (result)
  {
    v2 = result;
    result = [result isLocationServiceAuthorized];
    if (result)
    {
      [v2 startLocationUpdatesWithReason:"Cellular Plan"];
      return 1;
    }
  }

  return result;
}

uint64_t CellularPlanSettingsDevice::translateRegulatoryRestrictionErrorType(CellularPlanSettingsDevice *this)
{
  v1 = +[CTLocationManager sharedManager];
  if (!v1)
  {
    return 58;
  }

  v2 = v1;
  if (![v1 isLocationServiceEnabled])
  {
    return 59;
  }

  if ([v2 isLocationServiceAuthorized])
  {
    return 58;
  }

  return 60;
}

void CellularPlanSettingsDevice::getLatLong(CellularPlanSettingsDevice *this@<X0>, double *a2@<X8>)
{
  *a2 = 0.0;
  a2[1] = 0.0;
  a2[2] = 0.0;
  v4 = [+[CTLocationManager sharedManager](CTLocationManager "sharedManager")];
  v5 = v4;
  if (v4)
  {
    [v4 coordinate];
    v7 = v6;
    [v5 coordinate];
    *(a2 + 1) = v7;
    *(a2 + 2) = v8;
    *a2 = 1;
    v9 = [v5 sourceInformation];
    v10 = v9;
    if (v9)
    {
      if ([v9 isSimulatedBySoftware])
      {
        v11 = 1;
      }

      else
      {
        v11 = [v10 isProducedByAccessory];
      }

      v12 = v11 ^ 1;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  if (sub_10000BAA0())
  {
    cf = 0;
    (*(**(this + 9) + 40))(&cf);
    v13 = cf;
    if (cf)
    {
      LOBYTE(__p[0]) = 0;
      v14 = CFGetTypeID(cf);
      if (v14 == CFBooleanGetTypeID())
      {
        ctu::cf::assign(__p, v13, v15);
      }

      v16 = LOBYTE(__p[0]);
    }

    else
    {
      v16 = 0;
    }

    v26 = 0.0;
    v27 = 0.0;
    v18 = sub_10005D028();
    sub_10000501C(__p, "SequoiaSignIdMap::LatitudeOverride");
    sub_100A107D8(v18, __p, &v27);
    if (v25 < 0)
    {
      operator delete(__p[0]);
    }

    v19 = sub_10005D028();
    sub_10000501C(__p, "SequoiaSignIdMap::LongitureOverride");
    sub_100A107D8(v19, __p, &v26);
    if (v25 < 0)
    {
      operator delete(__p[0]);
    }

    if (v27 == 0.0 && v26 == 0.0)
    {
      sub_10000A1EC(&cf);
      if (((v16 | v12) & 1) != 0 || !v5)
      {
        return;
      }

      goto LABEL_29;
    }

    v21 = *sGetCellularPlanSettingsDeviceLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I overriding lat and long", __p, 2u);
    }

    v23 = v26;
    v22 = v27;
    if (!v5)
    {
      *a2 = 1;
    }

    a2[1] = v22;
    a2[2] = v23;
    sub_10000A1EC(&cf);
  }

  else
  {
    if (v5)
    {
      v17 = v12;
    }

    else
    {
      v17 = 1;
    }

    if ((v17 & 1) == 0)
    {
LABEL_29:
      v20 = *sGetCellularPlanSettingsDeviceLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(__p[0]) = 0;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I block untrusted locations", __p, 2u);
      }

      *a2 = 0;
    }
  }
}

void sub_1002ED034(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, const void *a17)
{
  sub_10000A1EC(&a17);
  if (v18)
  {
    *v17 = 0;
  }

  _Unwind_Resume(a1);
}

void CellularPlanSettingsDevice::writeToFileWithProtection(uint64_t a1, uint64_t *a2, id *a3)
{
  if (*(a2 + 23) >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  v5 = [NSString stringWithUTF8String:v4];
  v7 = 0;
  if (!*a3 || ([*a3 writeToFile:v5 options:0x40000000 error:&v7] & 1) == 0)
  {
    CellularPlanSettingsDeviceLog = sGetCellularPlanSettingsDeviceLog();
    if (os_log_type_enabled(*CellularPlanSettingsDeviceLog, OS_LOG_TYPE_ERROR))
    {
      sub_10176A94C();
    }
  }
}

void CellularPlanSettingsDevice::writeToFile(uint64_t a1, uint64_t *a2, id *a3)
{
  if (*(a2 + 23) >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  v5 = [NSString stringWithUTF8String:v4];
  if (!*a3 || ([*a3 writeToFile:v5 atomically:1] & 1) == 0)
  {
    CellularPlanSettingsDeviceLog = sGetCellularPlanSettingsDeviceLog();
    if (os_log_type_enabled(*CellularPlanSettingsDeviceLog, OS_LOG_TYPE_ERROR))
    {
      sub_10176A9C0();
    }
  }
}

void CellularPlanSettingsDevice::readFromFile(uint64_t a1@<X0>, uint64_t a2@<X1>, const void **a3@<X8>)
{
  *a3 = 0;
  v8 = 0;
  v9 = 0;
  Registry::getFileSystemInterface(&v8, *(a1 + 56));
  if (v8)
  {
    if ((*(*v8 + 88))(v8, a2))
    {
      (*(*v8 + 168))(&v7);
      if (&v7 != a3)
      {
        *buf = *a3;
        *a3 = v7;
        v7 = 0;
        sub_10002D760(buf);
      }

      sub_10002D760(&v7);
    }

    else
    {
      v6 = *sGetCellularPlanSettingsDeviceLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I No cache file to load", buf, 2u);
      }
    }
  }

  else
  {
    CellularPlanSettingsDeviceLog = sGetCellularPlanSettingsDeviceLog();
    if (os_log_type_enabled(*CellularPlanSettingsDeviceLog, OS_LOG_TYPE_ERROR))
    {
      sub_10176A9F4();
    }
  }

  if (v9)
  {
    sub_100004A34(v9);
  }
}

void sub_1002ED2E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  sub_10002D760(v12);
  _Unwind_Resume(a1);
}

void CellularPlanSettingsDevice::removeFile(uint64_t a1, uint64_t *a2)
{
  v7 = 0;
  v8 = 0;
  Registry::getFileSystemInterface(&v7, *(a1 + 56));
  if (v7)
  {
    if ((*(*v7 + 88))(v7, a2))
    {
      if ((*(*v7 + 112))(v7, a2))
      {
        CellularPlanSettingsDeviceLog = sGetCellularPlanSettingsDeviceLog();
        if (os_log_type_enabled(*CellularPlanSettingsDeviceLog, OS_LOG_TYPE_ERROR))
        {
          sub_10176AA28();
        }
      }
    }

    else
    {
      v5 = *sGetCellularPlanSettingsDeviceLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        if (*(a2 + 23) >= 0)
        {
          v6 = a2;
        }

        else
        {
          v6 = *a2;
        }

        *buf = 136315138;
        v10 = v6;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I No cache file to remove: %s", buf, 0xCu);
      }
    }
  }

  else
  {
    v4 = sGetCellularPlanSettingsDeviceLog();
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
    {
      sub_10176A9F4();
    }
  }

  if (v8)
  {
    sub_100004A34(v8);
  }
}

void sub_1002ED498(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CellularPlanSettingsDevice::requiresPairingSupported(uint64_t a1, uint64_t a2)
{
  theDict = 0;
  ServiceMap = Registry::getServiceMap(*(a1 + 56));
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
  v20 = v5;
  v9 = sub_100009510(&v4[1].__m_.__sig, &v20);
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
  (*(*v11 + 80))(&v18, v11, a2, 1, @"RemoteCardProvisioningSettings", 0, 0);
  sub_100010180(&theDict, &v18);
  sub_10000A1EC(&v18);
  if ((v12 & 1) == 0)
  {
    sub_100004A34(v10);
  }

  if (!theDict)
  {
    goto LABEL_15;
  }

  Value = CFDictionaryGetValue(theDict, @"RequiresPairingSupportIndicator");
  v14 = Value;
  LOBYTE(v20) = 0;
  if (Value)
  {
    v15 = CFGetTypeID(Value);
    if (v15 == CFBooleanGetTypeID())
    {
      ctu::cf::assign(&v20, v14, v16);
      LOBYTE(v14) = v20;
      goto LABEL_16;
    }

LABEL_15:
    LOBYTE(v14) = 0;
  }

LABEL_16:
  sub_10001021C(&theDict);
  return v14 & 1;
}

void sub_1002ED658(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10000A1EC(va);
  if ((v4 & 1) == 0)
  {
    sub_100004A34(v3);
  }

  _Unwind_Resume(a1);
}

uint64_t CellularPlanSettingsDevice::getMinWatchOsVersion(uint64_t a1, uint64_t a2, int a3)
{
  theDict = 0;
  ServiceMap = Registry::getServiceMap(*(a1 + 56));
  v6 = ServiceMap;
  if (v7 < 0)
  {
    v8 = (v7 & 0x7FFFFFFFFFFFFFFFLL);
    v9 = 5381;
    do
    {
      v7 = v9;
      v10 = *v8++;
      v9 = (33 * v9) ^ v10;
    }

    while (v10);
  }

  std::mutex::lock(ServiceMap);
  v24 = v7;
  v11 = sub_100009510(&v6[1].__m_.__sig, &v24);
  if (v11)
  {
    v13 = v11[3];
    v12 = v11[4];
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v6);
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v12);
      v14 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v13 = 0;
  }

  std::mutex::unlock(v6);
  v12 = 0;
  v14 = 1;
LABEL_9:
  (*(*v13 + 80))(&v22, v13, a2, 1, @"RemoteCardProvisioningSettings", 0, 0);
  sub_100010180(&theDict, &v22);
  sub_10000A1EC(&v22);
  if ((v14 & 1) == 0)
  {
    sub_100004A34(v12);
  }

  if (theDict)
  {
    if (a3 == 2)
    {
      CFDictionaryGetValue(theDict, @"MinCompatibleWatchOSForStandaloneMode");
    }

    else
    {
      CFDictionaryGetValue(theDict, @"MinCompatibleWatchOS");
    }

    v24 = 0;
    v25 = 0;
    v26 = 0;
    ctu::cf::assign();
    v16 = v24;
    LODWORD(v22) = v26;
    *(&v22 + 3) = *(&v26 + 3);
    v17 = HIBYTE(v26);
    if (v26 < 0)
    {
      sub_100005F2C(__p, v24, v25);
    }

    else
    {
      __p[0] = v24;
      __p[1] = v25;
      *v20 = v22;
      *&v20[3] = *(&v22 + 3);
      v21 = HIBYTE(v26);
    }

    v15 = sub_100927A9C(__p);
    if (v21 < 0)
    {
      operator delete(__p[0]);
      if ((v17 & 0x80) == 0)
      {
        goto LABEL_21;
      }
    }

    else if ((v17 & 0x80) == 0)
    {
      goto LABEL_21;
    }

    operator delete(v16);
    goto LABEL_21;
  }

  v15 = 0;
LABEL_21:
  sub_10001021C(&theDict);
  return v15;
}

void sub_1002ED8B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, int a16, const void *a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  operator delete(v23);
  sub_10001021C(&a17);
  _Unwind_Resume(a1);
}

void CellularPlanSettingsDevice::getCarrierIdsAndAuthRespCodesToDisableColdPhysicalSim(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  memset(v75, 0, sizeof(v75));
  v74 = 0u;
  v71 = 0;
  v72 = 0;
  v73 = 0;
  __src = 0;
  v69 = 0;
  v70 = 0;
  v8 = *(a2 + 23);
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a2 + 8);
  }

  if (!v8)
  {
    goto LABEL_56;
  }

  v10 = *(a3 + 23);
  if ((v10 & 0x80u) != 0)
  {
    v10 = *(a3 + 8);
  }

  if (!v10)
  {
LABEL_56:
    *a7 = 0;
    a7[1] = 0;
    a7[2] = 0;
    a7[3] = 0;
    v74 = 0uLL;
    v75[0] = 0;
    v75[1] = 0;
    a7[4] = 0;
    a7[5] = 0;
    v75[2] = 0;
    v75[3] = 0;
    goto LABEL_68;
  }

  values = @"SupportDualSimSuppressionOnColdPhysicalSIM";
  v16 = CFArrayCreate(kCFAllocatorDefault, &values, 1, &kCFTypeArrayCallBacks);
  theDict = 0;
  v67 = v16;
  v65 = v16;
  if (v16)
  {
    CFRetain(v16);
  }

  CellularPlanSettingsDevice::getMatchingCarrierBundleValuesByKeys(a1, a2, a3, a4, a5, a6, &v65, &v55);
  sub_100010180(&theDict, &v55.__r_.__value_.__l.__data_);
  sub_1000296E0(&v55.__r_.__value_.__l.__data_);
  sub_100010250(&v65);
  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"SupportDualSimSuppressionOnColdPhysicalSIM");
    v18 = Value;
    if (Value && (v19 = CFGetTypeID(Value), v19 == CFDictionaryGetTypeID()))
    {
      if (CFDictionaryContainsKey(v18, @"SIMsRequireSuppression") && CFDictionaryContainsKey(v18, @"AuthRespCodesRequireSuppression"))
      {
        v20 = CFDictionaryGetValue(v18, @"AuthRespCodesRequireSuppression");
        v21 = v20;
        if (v20 && (v22 = CFGetTypeID(v20), v22 == CFArrayGetTypeID()))
        {
          v23 = CFDictionaryGetValue(v18, @"SIMsRequireSuppression");
          v24 = v23;
          if (v23)
          {
            v25 = CFGetTypeID(v23);
            if (v25 == CFArrayGetTypeID())
            {
              Count = CFArrayGetCount(v21);
              if (Count >= 1)
              {
                for (i = 0; i != Count; ++i)
                {
                  ValueAtIndex = CFArrayGetValueAtIndex(v21, i);
                  v30 = ValueAtIndex;
                  if (ValueAtIndex)
                  {
                    v31 = CFGetTypeID(ValueAtIndex);
                    if (v31 == CFNumberGetTypeID())
                    {
                      v32 = v30;
                    }

                    else
                    {
                      v32 = 0;
                    }
                  }

                  else
                  {
                    v32 = 0;
                  }

                  LODWORD(v55.__r_.__value_.__l.__data_) = 0;
                  ctu::cf::assign(&v55, v32, v29);
                  v33 = v69;
                  if (v69 >= v70)
                  {
                    v35 = __src;
                    v36 = v69 - __src;
                    v37 = (v69 - __src) >> 2;
                    v38 = v37 + 1;
                    if ((v37 + 1) >> 62)
                    {
                      sub_1000CE3D4();
                    }

                    v39 = v70 - __src;
                    if ((v70 - __src) >> 1 > v38)
                    {
                      v38 = v39 >> 1;
                    }

                    if (v39 >= 0x7FFFFFFFFFFFFFFCLL)
                    {
                      v40 = 0x3FFFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v40 = v38;
                    }

                    if (v40)
                    {
                      sub_100016740(&__src, v40);
                    }

                    *(4 * v37) = v55.__r_.__value_.__l.__data_;
                    v34 = 4 * v37 + 4;
                    memcpy(0, v35, v36);
                    v41 = __src;
                    __src = 0;
                    v69 = v34;
                    v70 = 0;
                    if (v41)
                    {
                      operator delete(v41);
                    }
                  }

                  else
                  {
                    *v69 = v55.__r_.__value_.__l.__data_;
                    v34 = (v33 + 4);
                  }

                  v69 = v34;
                }
              }

              v42 = CFArrayGetCount(v24);
              if (v42 >= 1)
              {
                for (j = 0; j != v42; ++j)
                {
                  memset(&v64, 0, sizeof(v64));
                  CFArrayGetValueAtIndex(v24, j);
                  memset(&v55, 0, sizeof(v55));
                  ctu::cf::assign();
                  v64 = v55;
                  getCarrierIdentifier(&v64, &v55);
                  v44 = v72;
                  if (v72 >= v73)
                  {
                    v72 = sub_1002F29C4(&v71, &v55);
                    if (SHIBYTE(v63) < 0)
                    {
                      operator delete(__p);
                    }
                  }

                  else
                  {
                    v45 = *&v55.__r_.__value_.__l.__data_;
                    *(v72 + 16) = *(&v55.__r_.__value_.__l + 2);
                    *v44 = v45;
                    memset(&v55, 0, sizeof(v55));
                    v46 = v57;
                    *(v44 + 24) = v56;
                    *(v44 + 40) = v46;
                    v56 = 0uLL;
                    v47 = v58;
                    *(v44 + 64) = v59;
                    *(v44 + 48) = v47;
                    v59 = 0;
                    v57 = 0;
                    v58 = 0uLL;
                    v48 = v60;
                    *(v44 + 88) = v61;
                    *(v44 + 72) = v48;
                    v60 = 0uLL;
                    v49 = __p;
                    *(v44 + 112) = v63;
                    *(v44 + 96) = v49;
                    v61 = 0;
                    __p = 0uLL;
                    v63 = 0;
                    v72 = v44 + 120;
                  }

                  if (SHIBYTE(v61) < 0)
                  {
                    operator delete(v60);
                  }

                  if (SHIBYTE(v59) < 0)
                  {
                    operator delete(v58);
                  }

                  if (SHIBYTE(v57) < 0)
                  {
                    operator delete(v56);
                  }

                  if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v55.__r_.__value_.__l.__data_);
                  }

                  if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v64.__r_.__value_.__l.__data_);
                  }
                }
              }

              sub_1002F2E74(a7, &v71, &__src);
              goto LABEL_66;
            }
          }
        }

        else
        {
          CellularPlanSettingsDeviceLog = sGetCellularPlanSettingsDeviceLog();
          if (os_log_type_enabled(*CellularPlanSettingsDeviceLog, OS_LOG_TYPE_ERROR))
          {
            sub_10176AA98();
          }
        }
      }

      else
      {
        v52 = sGetCellularPlanSettingsDeviceLog();
        if (os_log_type_enabled(*v52, OS_LOG_TYPE_ERROR))
        {
          sub_10176AACC();
        }
      }
    }

    else
    {
      v50 = sGetCellularPlanSettingsDeviceLog();
      if (os_log_type_enabled(*v50, OS_LOG_TYPE_ERROR))
      {
        sub_10176A598();
      }
    }
  }

  else
  {
    v51 = sGetCellularPlanSettingsDeviceLog();
    if (os_log_type_enabled(*v51, OS_LOG_TYPE_ERROR))
    {
      sub_10176A5CC();
    }
  }

  *a7 = v74;
  v54 = v75[3];
  a7[2] = v75[0];
  v74 = 0uLL;
  *(a7 + 3) = *&v75[1];
  a7[5] = v54;
  memset(v75, 0, sizeof(v75));
LABEL_66:
  sub_10001021C(&theDict);
  sub_100010250(&v67);
  if (__src)
  {
    v69 = __src;
    operator delete(__src);
  }

LABEL_68:
  v55.__r_.__value_.__r.__words[0] = &v71;
  sub_10016DD88(&v55);
  if (v75[1])
  {
    v75[2] = v75[1];
    operator delete(v75[1]);
  }

  v55.__r_.__value_.__r.__words[0] = &v74;
  sub_10016DD88(&v55);
}

void sub_1002EDF04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, char a34, int a35, const void *a36, const void *a37, void *__p, uint64_t a39)
{
  sub_10001021C(&a36);
  sub_100010250(&a37);
  if (__p)
  {
    a39 = __p;
    operator delete(__p);
  }

  __p = (v39 - 184);
  sub_10016DD88(&__p);
  sub_10016DD40(v39 - 160);
  _Unwind_Resume(a1);
}

uint64_t CellularPlanSettingsDevice::enableAttachMonitorMode_sync(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a2 + 23);
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a2 + 8);
  }

  if (v6)
  {
    v8 = *(a3 + 23);
    if ((v8 & 0x80u) != 0)
    {
      v8 = *(a3 + 8);
    }

    if (v8)
    {
      values = @"CellularPlanProvisioningSettings";
      v14 = CFArrayCreate(kCFAllocatorDefault, &values, 1, &kCFTypeArrayCallBacks);
      theDict = 0;
      v29 = v14;
      v26 = v14;
      if (v14)
      {
        CFRetain(v14);
      }

      CellularPlanSettingsDevice::getMatchingCarrierBundleValuesByKeys(a1, a2, a3, a4, a5, a6, &v26, &v27);
      sub_100010180(&theDict, &v27);
      sub_1000296E0(&v27);
      sub_100010250(&v26);
      if (theDict)
      {
        Value = CFDictionaryGetValue(theDict, @"CellularPlanProvisioningSettings");
        v16 = Value;
        if (Value && (v17 = CFGetTypeID(Value), v17 == CFDictionaryGetTypeID()))
        {
          if (CFDictionaryContainsKey(v16, @"EnableAttachMonitorMode"))
          {
            v18 = CFDictionaryGetValue(v16, @"EnableAttachMonitorMode");
            v19 = v18;
            LOBYTE(v27) = 0;
            if (v18)
            {
              v20 = CFGetTypeID(v18);
              if (v20 == CFBooleanGetTypeID())
              {
                ctu::cf::assign(&v27, v19, v21);
                LOBYTE(v19) = v27;
              }

              else
              {
                LOBYTE(v19) = 0;
              }
            }

            goto LABEL_22;
          }

          CellularPlanSettingsDeviceLog = sGetCellularPlanSettingsDeviceLog();
          if (os_log_type_enabled(*CellularPlanSettingsDeviceLog, OS_LOG_TYPE_ERROR))
          {
            sub_10176AB00();
          }
        }

        else
        {
          v22 = sGetCellularPlanSettingsDeviceLog();
          if (os_log_type_enabled(*v22, OS_LOG_TYPE_ERROR))
          {
            sub_10176A598();
          }
        }
      }

      else
      {
        v23 = sGetCellularPlanSettingsDeviceLog();
        if (os_log_type_enabled(*v23, OS_LOG_TYPE_ERROR))
        {
          sub_10176A5CC();
        }
      }

      LOBYTE(v19) = 1;
LABEL_22:
      sub_10001021C(&theDict);
      sub_100010250(&v29);
      return v19 & 1;
    }
  }

  LOBYTE(v19) = 0;
  return v19 & 1;
}

void sub_1002EE234(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, const void *);
  sub_10001021C(va);
  sub_100010250(va1);
  _Unwind_Resume(a1);
}

uint64_t CellularPlanSettingsDevice::requireEntitlementCheckForAttachMonitorMode_sync(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a2 + 23);
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a2 + 8);
  }

  if (v6)
  {
    v8 = *(a3 + 23);
    if ((v8 & 0x80u) != 0)
    {
      v8 = *(a3 + 8);
    }

    if (v8)
    {
      values = @"CellularPlanProvisioningSettings";
      v14 = CFArrayCreate(kCFAllocatorDefault, &values, 1, &kCFTypeArrayCallBacks);
      theDict = 0;
      v29 = v14;
      v26 = v14;
      if (v14)
      {
        CFRetain(v14);
      }

      CellularPlanSettingsDevice::getMatchingCarrierBundleValuesByKeys(a1, a2, a3, a4, a5, a6, &v26, &v27);
      sub_100010180(&theDict, &v27);
      sub_1000296E0(&v27);
      sub_100010250(&v26);
      if (theDict)
      {
        Value = CFDictionaryGetValue(theDict, @"CellularPlanProvisioningSettings");
        v16 = Value;
        if (Value && (v17 = CFGetTypeID(Value), v17 == CFDictionaryGetTypeID()))
        {
          if (CFDictionaryContainsKey(v16, @"RequireEntitlementCheckForAttachMonitorMode"))
          {
            v18 = CFDictionaryGetValue(v16, @"RequireEntitlementCheckForAttachMonitorMode");
            v19 = v18;
            LOBYTE(v27) = 0;
            if (!v18)
            {
LABEL_22:
              sub_10001021C(&theDict);
              sub_100010250(&v29);
              return v19 & 1;
            }

            v20 = CFGetTypeID(v18);
            if (v20 == CFBooleanGetTypeID())
            {
              ctu::cf::assign(&v27, v19, v21);
              LOBYTE(v19) = v27;
              goto LABEL_22;
            }
          }

          else
          {
            CellularPlanSettingsDeviceLog = sGetCellularPlanSettingsDeviceLog();
            if (os_log_type_enabled(*CellularPlanSettingsDeviceLog, OS_LOG_TYPE_ERROR))
            {
              sub_10176AB34();
            }
          }
        }

        else
        {
          v22 = sGetCellularPlanSettingsDeviceLog();
          if (os_log_type_enabled(*v22, OS_LOG_TYPE_ERROR))
          {
            sub_10176A598();
          }
        }
      }

      else
      {
        v23 = sGetCellularPlanSettingsDeviceLog();
        if (os_log_type_enabled(*v23, OS_LOG_TYPE_ERROR))
        {
          sub_10176A5CC();
        }
      }

      LOBYTE(v19) = 0;
      goto LABEL_22;
    }
  }

  LOBYTE(v19) = 0;
  return v19 & 1;
}

void sub_1002EE4D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, const void *);
  sub_10001021C(va);
  sub_100010250(va1);
  _Unwind_Resume(a1);
}

void sub_1002EE5F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002EE688(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void *CellularPlanSettingsDevice::getSubscriptionHost@<X0>(void *a1@<X8>)
{
  v7 = -1;
  v2 = sub_10005D028();
  sub_10000501C(__p, "TestEnvIndexKey");
  sub_1002D5DB8(v2, __p, &v7);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 >= 7)
  {
    v3 = "https://sq-device.apple.com/customer/";
  }

  else
  {
    v3 = off_101E3F1E0[v7];
  }

  return sub_10000501C(a1, v3);
}

void sub_1002EE7BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CellularPlanSettingsDevice::saveBootstrapProvisioningInfo(uint64_t a1, CFPropertyListRef *a2)
{
  v2 = kCommCenterPreferencesNoBackupAppID;
  CFPreferencesSetValue(@"BootstrapProvisioningState", *a2, kCommCenterPreferencesNoBackupAppID, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);

  return CFPreferencesSynchronize(v2, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
}

uint64_t CellularPlanSettingsDevice::setValue(CellularPlanSettingsDevice *this, const __CFString *a2, const void *a3)
{
  (*(**(this + 9) + 16))(*(this + 9), a2, a3, kCommCenterPreferencesNoBackupAppID, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  v4 = *(**(this + 9) + 48);

  return v4();
}

void CellularPlanSettingsDevice::createEnablePlanSelectionAlert()
{
  v6 = 0;
  v7 = 0;
  UserAlertGenerationInterface::create();
}

void sub_1002EF2F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, dispatch_object_t object, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, const void *a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, const void *a31, const void *a32, const void *a33, const void *a34, const void *a35, uint64_t a36, std::__shared_weak_count *a37, const void *a38, void *__p, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  sub_100005978(&a38);
  if (a44 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  sub_100005978(&a26);
  sub_100005978(&a31);
  sub_100005978(&a32);
  sub_100005978(&a33);
  sub_100005978(&a34);
  sub_100005978(&a35);
  if ((a11 & 1) == 0)
  {
    sub_100004A34(a12);
  }

  if (a37)
  {
    sub_100004A34(a37);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1002EF58C(uint64_t a1)
{
  sub_1002F31C8(a1 + 72);
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void CellularPlanSettingsDevice::createSecureIntentController(CellularPlanSettingsDevice *this, queue a2)
{
  sub_100004AA0(v4, this + 5);
  v4[1] = v4[0];
  v4[0] = 0uLL;
  if (*a2.fObj.fObj)
  {
    dispatch_retain(*a2.fObj.fObj);
  }

  sub_1009A2DE8();
}

void sub_1002EF690(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object)
{
  if (object)
  {
    dispatch_release(object);
  }

  sub_10176A750(v10 | 8);
  _Unwind_Resume(a1);
}

void CellularPlanSettingsDevice::createDtoEvaluator(CellularPlanSettingsDevice *this, queue a2)
{
  if (*a2.fObj.fObj)
  {
    dispatch_retain(*a2.fObj.fObj);
  }

  sub_100A7EDC0();
}

void sub_1002EF704(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object)
{
  if (object)
  {
    dispatch_release(object);
  }

  _Unwind_Resume(exception_object);
}

void CellularPlanSettingsDevice::createOffloadRecoveryMonitorMode(void x0_0, NSObject **a1, uint64_t a2, uint64_t *a3)
{
  if (*a1)
  {
    dispatch_retain(*a1);
  }

  v7 = a3[1];
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  sub_1005CA214(&v8);
}

void sub_1002EF7CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, dispatch_object_t object)
{
  if (a11)
  {
    sub_100004A34(a11);
  }

  if (object)
  {
    dispatch_release(object);
  }

  _Unwind_Resume(exception_object);
}

void CellularPlanSettingsDevice::createDelayProvisioningMonitorMode(uint64_t a1, NSObject **a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v7 = *a2;
  object = v7;
  if (v7)
  {
    dispatch_retain(v7);
  }

  v8 = a4[1];
  v11 = *a4;
  v12 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  if (*(a5 + 23) < 0)
  {
    sub_100005F2C(__p, *a5, *(a5 + 8));
  }

  else
  {
    *__p = *a5;
    v10 = *(a5 + 16);
  }

  sub_10071D134();
}

void sub_1002EF8BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, std::__shared_weak_count *a16, dispatch_object_t object)
{
  if (a16)
  {
    sub_100004A34(a16);
  }

  if (object)
  {
    dispatch_release(object);
  }

  _Unwind_Resume(exception_object);
}