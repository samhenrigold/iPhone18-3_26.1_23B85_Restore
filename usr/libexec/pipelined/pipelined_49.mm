id sub_1002EF4F4(uint64_t a1)
{
  if (qword_10045B050 == -1)
  {
    v2 = qword_10045B058;
  }

  else
  {
    sub_100386CCC();
    v2 = qword_10045B058;
  }

  return v2;
}

intptr_t sub_1002EF914(uint64_t a1)
{
  if (qword_10045B050 != -1)
  {
    sub_100386CCC();
    v2 = qword_10045B058;
    if (!os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
    {
      return dispatch_semaphore_signal(*(a1 + 32));
    }

    goto LABEL_3;
  }

  v2 = qword_10045B058;
  if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
  {
LABEL_3:
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Runloop has started, allowing init to continue", v4, 2u);
  }

  return dispatch_semaphore_signal(*(a1 + 32));
}

void sub_1002EFF18(uint64_t a1)
{
  if (*(*(a1 + 32) + 32))
  {
    if (qword_10045B050 == -1)
    {
      v2 = qword_10045B058;
      if (!os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
      {
        goto LABEL_5;
      }
    }

    else
    {
      sub_100386CCC();
      v2 = qword_10045B058;
      if (!os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
      {
LABEL_5:
        [*(a1 + 32) onQueueTeardown];
        if (qword_10045B050 == -1)
        {
          v3 = qword_10045B058;
          if (!os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
          {
LABEL_8:
            **(a1 + 40) = 1;
            return;
          }
        }

        else
        {
          sub_100386CE0();
          v3 = qword_10045B058;
          if (!os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
          {
            goto LABEL_8;
          }
        }

        *v5 = 0;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Wi-Fi callbacks unregistered.", v5, 2u);
        goto LABEL_8;
      }
    }

    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Unregistering all Wi-Fi callbacks.", buf, 2u);
    goto LABEL_5;
  }

  if (qword_10045B050 == -1)
  {
    v4 = qword_10045B058;
    if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
    {
LABEL_12:
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Wi-Fi thread already shut-down", v7, 2u);
    }
  }

  else
  {
    sub_100386CCC();
    v4 = qword_10045B058;
    if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
    {
      goto LABEL_12;
    }
  }
}

id sub_1002F00C4(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  v5 = *(a2 + 40);
  *(a1 + 32) = result;
  *(a1 + 40) = v5;
  return result;
}

void sub_1002F0550(uint64_t a1)
{
  if (qword_10045B050 == -1)
  {
    v2 = qword_10045B058;
    if (!os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  sub_100386CCC();
  v2 = qword_10045B058;
  if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
  {
LABEL_3:
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "Freeing old WiFi manager", buf, 2u);
  }

LABEL_4:
  CFRelease(*(a1 + 40));
  if (qword_10045B050 != -1)
  {
    sub_100386CE0();
    v3 = qword_10045B058;
    if (!os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v3 = qword_10045B058;
  if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
  {
LABEL_6:
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Stopping the WiFi runloop", v4, 2u);
  }

LABEL_7:
  [*(a1 + 32) setStopExpected];
  CFRunLoopStop(*(a1 + 48));
  CFRelease(*(a1 + 56));
}

void sub_1002F0890(uint64_t a1, void *a2)
{
  if (qword_10045B050 != -1)
  {
    sub_100386CCC();
  }

  v3 = qword_10045B058;
  if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = a2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "wifid restarted. refcon %p", &buf, 0xCu);
  }

  v8 = a2;
  v4 = v8;
  v5 = v4;
  if (v4)
  {
    v6 = v4[3];
    if (v6)
    {
      *&buf = _NSConcreteStackBlock;
      *(&buf + 1) = 3321888768;
      v10 = sub_1002F3E14;
      v11 = &unk_1004482B8;
      v12 = v4;
      v13 = &v8;
      v7 = v6;
      dispatch_sync(v7, &buf);
    }
  }
}

void sub_1002F09F0(uint64_t a1, void *a2, void *a3)
{
  if (qword_10045B050 != -1)
  {
    sub_100386CCC();
  }

  v5 = qword_10045B058;
  if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = a3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "wifi device attached. refcon %p", &buf, 0xCu);
  }

  v10[0] = a3;
  v10[1] = a2;
  v6 = v10[0];
  v7 = v6;
  if (v6)
  {
    v8 = v6[3];
    if (v8)
    {
      *&buf = _NSConcreteStackBlock;
      *(&buf + 1) = 3321888768;
      v12 = sub_1002F3EB0;
      v13 = &unk_1004482E8;
      v14 = v6;
      v15 = v10;
      v9 = v8;
      dispatch_sync(v9, &buf);
    }
  }
}

void sub_1002F0DDC(void ***a1, unint64_t a2)
{
  if (a2 > a1[2] - *a1)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_10000FC84();
  }
}

void sub_1002F1060(uint64_t a1, int a2)
{
  if (*(a1 + 8))
  {
    *(a1 + 64) = a2;
    v4 = *(a1 + 56) - std::chrono::steady_clock::now().__d_.__rep_;
    v5 = [*(a1 + 24) estimatedScanTime];
    v6 = (v4 + 1000000 * v5) & ~((v4 + 1000000 * v5) >> 63);
    if (a2 == 82)
    {
      if (qword_10045B050 != -1)
      {
        sub_100386CCC();
      }

      v7 = qword_10045B058;
      if (!os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_16;
      }

      *v19 = 134217984;
      *&v19[4] = v6 / 0xF4240;
      v8 = "Wifi is powered off - cancellation will be handled in %lld ms";
      v9 = v7;
      v10 = OS_LOG_TYPE_DEBUG;
      v11 = 12;
    }

    else
    {
      if (qword_10045B050 != -1)
      {
        sub_100386CCC();
      }

      v13 = qword_10045B058;
      if (!os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_16;
      }

      *v19 = 67109376;
      *&v19[4] = a2;
      *&v19[8] = 2048;
      *&v19[10] = v6 / 0xF4240;
      v8 = "Cancelling pending scan due to wifi error %d.  Cancellation will be handled in %lld ms";
      v9 = v13;
      v10 = OS_LOG_TYPE_ERROR;
      v11 = 18;
    }

    _os_log_impl(&_mh_execute_header, v9, v10, v8, v19, v11);
LABEL_16:
    v14 = *(a1 + 8);
    *(a1 + 8) = 0;
    if (v14)
    {
      CFRelease(v14);
    }

    v16 = (a1 + 40);
    v15 = *(a1 + 40);
    *v19 = _NSConcreteStackBlock;
    *&v19[8] = 3321888768;
    *&v19[16] = sub_1002F3F4C;
    v20 = &unk_100448318;
    v21 = a1;
    v17 = objc_retainBlock(v19);
    dispatch_source_set_event_handler(v15, v17);

    v18 = dispatch_time(0, v6);
    dispatch_source_set_timer(*v16, v18, 0xFFFFFFFFFFFFFFFFLL, 0);
    return;
  }

  if (qword_10045B050 != -1)
  {
    sub_100386CCC();
  }

  v12 = qword_10045B058;
  if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_ERROR))
  {
    *v19 = 67109120;
    *&v19[4] = a2;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Ignoring request to invalidate scan with error: %d. Already invalidated", v19, 8u);
  }
}

void sub_1002F12F8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10000D388(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1002F1598(uint64_t a1)
{
  v5 = 0u;
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v1 = *(*(a1 + 32) + 48);
  v2 = [v1 countByEnumeratingWithState:&v5 objects:v9 count:16];
  if (v2)
  {
    v3 = *v6;
    do
    {
      v4 = 0;
      do
      {
        if (*v6 != v3)
        {
          objc_enumerationMutation(v1);
        }

        WiFiDeviceClientRegisterScanUpdateCallback();
        ++v4;
      }

      while (v2 != v4);
      v2 = [v1 countByEnumeratingWithState:&v5 objects:v9 count:16];
    }

    while (v2);
  }
}

id sub_1002F16CC(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  *(a1 + 32) = result;
  return result;
}

void sub_1002F179C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = *(v1 + 48);
  v3 = [v2 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v3)
  {
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v2);
        }

        WiFiDeviceClientRegisterScanUpdateCallback();
        ++v5;
      }

      while (v3 != v5);
      v3 = [v2 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

id sub_1002F18C0(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  *(a1 + 32) = result;
  return result;
}

id sub_1002F19F0(uint64_t a1)
{
  v1 = atomic_load((*(a1 + 32) + 112));
  v3 = v1;
  if (v1)
  {
    sub_1000474A4(v5, "");
    sub_1001F2AF4(&v7, "Only 1 scan allowed at a time: ");
    sub_100181374(&v3, &v8);
    sub_1000E661C(v5, &v7, 2);
    if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v8.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v7.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_5:
        if ((v6 & 0x80000000) == 0)
        {
          goto LABEL_6;
        }

LABEL_9:
        operator delete(v5[0]);
LABEL_6:
        sub_10003F5D0(&__p);
      }
    }

    else if ((SHIBYTE(v7.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    operator delete(v7.__r_.__value_.__l.__data_);
    if ((v6 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_9;
  }

  return [*(a1 + 32) onQueueInitiateScan:*(a1 + 40) initiated:{*(a1 + 48), 0}];
}

void sub_1002F1B10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

id sub_1002F1B6C(void *a1, id *a2)
{
  a1[4] = a2[4];
  a1[5] = a2[5];
  result = objc_retainBlock(a2[6]);
  a1[6] = result;
  return result;
}

void sub_1002F1BB4(uint64_t a1)
{
  v2 = *(a1 + 32);
}

void sub_1002F1EA8(_Unwind_Exception *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  sub_1000D2D54((v20 + 32));
  sub_1002F4E7C(va);

  _Unwind_Resume(a1);
}

void sub_1002F1EE8(uint64_t a1, unint64_t a2)
{
  [*(*(a1 + 32) + 48) objectAtIndexedSubscript:a2];

  v4 = objc_autoreleasePoolPush();
  os_activity_scope_enter(*(a1 + 40), &state);
  v5 = *(a1 + 32);
  if (v5)
  {
    objc_msgSend_initiateScanOnDevice_withSettings_deviceNumber_(v5);
    v6 = **(a1 + 56);
    if (a2 < (*(*(a1 + 56) + 8) - v6) >> 3)
    {
      goto LABEL_3;
    }

LABEL_7:
    sub_1000BFF58();
  }

  v8 = 0;
  v6 = **(a1 + 56);
  if (a2 >= (*(*(a1 + 56) + 8) - v6) >> 3)
  {
    goto LABEL_7;
  }

LABEL_3:
  v7 = *(v6 + 8 * a2);
  *(v6 + 8 * a2) = v8;
  if (v7)
  {
    sub_1002F42F8(v7);
    operator delete();
  }

  os_activity_scope_leave(&state);
  objc_autoreleasePoolPop(v4);
}

void sub_1002F1FFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1002F2C2C(va);
  _Unwind_Resume(a1);
}

id sub_1002F2010(void *a1, uint64_t a2)
{
  a1[4] = *(a2 + 32);
  a1[5] = *(a2 + 40);
  result = *(a2 + 48);
  v5 = *(a2 + 56);
  a1[6] = result;
  a1[7] = v5;
  return result;
}

void sub_1002F205C(uint64_t a1)
{
  v2 = *(a1 + 32);
}

void sub_1002F27EC(uint64_t a1, CFTypeRef cf, uint64_t a3, id *a4)
{
  if (!cf)
  {
    v9 = 0;
    goto LABEL_5;
  }

  v5 = a1;
  v6 = a3;
  v7 = a4;
  v8 = CFGetTypeID(cf);
  if (v8 == CFArrayGetTypeID())
  {
    a4 = v7;
    LODWORD(a3) = v6;
    a1 = v5;
    v9 = cf;
LABEL_5:

    sub_1002F45D4(a1, v9, a3, a4);
    return;
  }

  if (qword_10045B050 != -1)
  {
    sub_100386CCC();
  }

  v10 = qword_10045B058;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = CFGetTypeID(cf);
    v12 = CFCopyTypeIDDescription(v11);
    v13 = 136315138;
    CStringPtr = CFStringGetCStringPtr(v12, 0x8000100u);
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "We expect that networkScan is of type CFArray, but it's not. Memory smasher? Got %s", &v13, 0xCu);
  }
}

void sub_1002F2980(uint64_t a1, CFTypeRef cf, uint64_t a3, id *a4)
{
  if (cf)
  {
    v5 = a1;
    v6 = a4;
    v7 = a3;
    v8 = CFGetTypeID(cf);
    TypeID = CFArrayGetTypeID();
    LODWORD(a3) = v7;
    a4 = v6;
    v10 = TypeID;
    a1 = v5;
    if (v8 != v10)
    {
      v11 = sub_1002EF4F4(v5);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        v12 = CFGetTypeID(cf);
        v13 = CFCopyTypeIDDescription(v12);
        *buf = 68289795;
        v25 = 0;
        v26 = 2082;
        v27 = "";
        v28 = 2082;
        CStringPtr = CFStringGetCStringPtr(v13, 0x8000100u);
        v30 = 2082;
        v31 = "assert";
        v32 = 2081;
        v33 = "networkScan == __null || CFGetTypeID(networkScan) == CFArrayGetTypeID()";
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:We expect that networkScan is of type CFArray, but it's not. Memory smasher?, networkScanType:%{public, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
      }

      v15 = sub_1002EF4F4(v14);
      if (os_signpost_enabled(v15))
      {
        v16 = CFGetTypeID(cf);
        v17 = CFCopyTypeIDDescription(v16);
        v18 = CFStringGetCStringPtr(v17, 0x8000100u);
        *buf = 68289795;
        v25 = 0;
        v26 = 2082;
        v27 = "";
        v28 = 2082;
        CStringPtr = v18;
        v30 = 2082;
        v31 = "assert";
        v32 = 2081;
        v33 = "networkScan == __null || CFGetTypeID(networkScan) == CFArrayGetTypeID()";
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v15, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "We expect that networkScan is of type CFArray, but it's not. Memory smasher?", "{msg%{public}.0s:We expect that networkScan is of type CFArray, but it's not. Memory smasher?, networkScanType:%{public, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
      }

      v20 = sub_1002EF4F4(v19);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = CFGetTypeID(cf);
        v22 = CFCopyTypeIDDescription(v21);
        v23 = CFStringGetCStringPtr(v22, 0x8000100u);
        sub_100386FC8(v23, buf, v20);
      }

      abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/purpleslam/common/wifiscanning/sensor/backend/IOSWifiScannerBackend.mm", 452, "ScanCallback_bounce_internal");
      __break(1u);
    }
  }

  sub_1002F45D4(a1, cf, a3, a4);
}

id **sub_1002F2C2C(id **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_1002F42F8(v2);
    operator delete();
  }

  return a1;
}

void sub_1002F3A5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1002F3DD0(id a1)
{
  v1 = os_log_create("com.apple.locationd.Pipeline", "Generic");
  v2 = qword_10045B058;
  qword_10045B058 = v1;
}

void sub_1002F3E14(uint64_t a1)
{
  if (*(*(a1 + 32) + 32))
  {
    v2 = objc_autoreleasePoolPush();
    [**(a1 + 40) onQueueHandlerServerRestart];

    objc_autoreleasePoolPop(v2);
  }
}

id sub_1002F3E74(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  v5 = *(a2 + 40);
  *(a1 + 32) = result;
  *(a1 + 40) = v5;
  return result;
}

void sub_1002F3EB0(uint64_t a1)
{
  if (*(*(a1 + 32) + 32))
  {
    v2 = objc_autoreleasePoolPush();
    [**(a1 + 40) onQueueHandleDeviceAttached:*(*(a1 + 40) + 8)];

    objc_autoreleasePoolPop(v2);
  }
}

id sub_1002F3F10(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  v5 = *(a2 + 40);
  *(a1 + 32) = result;
  *(a1 + 40) = v5;
  return result;
}

void sub_1002F3F78(CFTypeID TypeID, uint64_t a2, CFTypeRef cf, int a4, void *a5)
{
  if (cf && (v10 = CFGetTypeID(cf), v10 != CFArrayGetTypeID()))
  {
    v13 = CFGetTypeID(cf);
    v14 = CFCopyTypeIDDescription(v13);
    if (qword_10045B050 != -1)
    {
      sub_100386CCC();
    }

    v15 = qword_10045B058;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      *&buf[4] = CFStringGetCStringPtr(v14, 0x8000100u);
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "We expect that networkScanResults is of type CFArray, but it's not. Memory smasher? Got %s", buf, 0xCu);
    }

    CFRelease(v14);
  }

  else
  {
    if (qword_10045B050 != -1)
    {
      sub_100386CCC();
    }

    v11 = qword_10045B058;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      if (cf)
      {
        Count = CFArrayGetCount(cf);
      }

      else
      {
        Count = -1;
      }

      *buf = 134218496;
      *&buf[4] = Count;
      *&buf[12] = 1024;
      *&buf[14] = a4;
      *&buf[18] = 2048;
      *&buf[20] = a5;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Got cached scan from framework: %ld APs, errcode %d, refcon %p", buf, 0x1Cu);
    }

    v20 = TypeID;
    v21 = a5;
    v22 = a2;
    v23 = cf;
    v24 = a4;
    v16 = v21;
    v17 = v16;
    if (v16)
    {
      v18 = v16[3];
      if (v18)
      {
        *buf = _NSConcreteStackBlock;
        *&buf[8] = 3321888768;
        *&buf[16] = sub_1002F420C;
        *&buf[24] = &unk_100448348;
        v26 = v16;
        v27 = &v20;
        v19 = v18;
        dispatch_sync(v19, buf);
      }
    }
  }
}

void sub_1002F420C(uint64_t a1)
{
  if (*(*(a1 + 32) + 32))
  {
    v2 = objc_autoreleasePoolPush();
    v3 = *(a1 + 40);
    v4 = [WifiScannerCommonDarwin dictionaryToScanSettings:*(v3 + 16)];
    [*(v3 + 8) onQueueHandleScanFor:*v3 withResults:*(v3 + 24) forScan:0 withSettings:v4 withRequest:*(v3 + 16) withError:*(v3 + 32)];

    objc_autoreleasePoolPop(v2);
  }
}

id sub_1002F42BC(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  v5 = *(a2 + 40);
  *(a1 + 32) = result;
  *(a1 + 40) = v5;
  return result;
}

id *sub_1002F42F8(id *a1)
{
  v2 = a1[5];
  if (v2)
  {
    dispatch_source_set_timer(v2, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
    dispatch_source_set_event_handler(a1[5], &stru_100448378);
    dispatch_source_cancel(a1[5]);
    v3 = a1[5];
  }

  else
  {
    v3 = 0;
  }

  objc_destroyWeak(a1 + 2);
  v4 = a1[1];
  a1[1] = 0;
  if (v4)
  {
    CFRelease(v4);
  }

  if (qword_10045B050 != -1)
  {
    sub_100386CCC();
    v5 = qword_10045B058;
    if (!os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
    {
      return a1;
    }

    goto LABEL_8;
  }

  v5 = qword_10045B058;
  if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
  {
LABEL_8:
    v6 = *a1;
    v8 = 134217984;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Pending scan information destroyed: %p", &v8, 0xCu);
  }

  return a1;
}

void sub_1002F4440(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10000D388(a1);
}

dispatch_source_t *sub_1002F444C(dispatch_source_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    dispatch_source_set_timer(v2, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
    dispatch_source_set_event_handler(*a1, &stru_100448378);
    dispatch_source_cancel(*a1);
  }

  else
  {
  }

  return a1;
}

const void **sub_1002F44C4(const void **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t *sub_1002F44FC(uint64_t *a1)
{
  if (qword_10045B050 != -1)
  {
    sub_100386CCC();
    v2 = qword_10045B058;
    if (!os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
    {
      return a1;
    }

    goto LABEL_3;
  }

  v2 = qword_10045B058;
  if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
  {
LABEL_3:
    v3 = *a1;
    v5 = 134217984;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Pending scan information destroyed: %p", &v5, 0xCu);
  }

  return a1;
}

void sub_1002F45D4(uint64_t a1, const __CFArray *a2, int a3, id *a4)
{
  v8 = objc_autoreleasePoolPush();
  if (qword_10045B050 != -1)
  {
    sub_100386CCC();
  }

  v9 = qword_10045B058;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    if (a2)
    {
      Count = CFArrayGetCount(a2);
    }

    else
    {
      Count = -1;
    }

    *buf = 134218496;
    *&buf[4] = Count;
    *&buf[12] = 1024;
    *&buf[14] = a3;
    *&buf[18] = 2048;
    *&buf[20] = a4;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Got scan result from framework: %ld APs, errcode %d, refcon %p", buf, 0x1Cu);
  }

  WeakRetained = objc_loadWeakRetained(a4 + 2);
  v12 = a4[3];
  v13 = a4[4];
  if (!v12)
  {
    sub_1000474A4(block, "");
    sub_10017ED90(buf, "Lost track of wifi settings for request");
    sub_1000E661C(block, buf, 1);
    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    if (SHIBYTE(v32) < 0)
    {
      operator delete(block[0]);
    }

    sub_10003F5D0(__p);
  }

  if (!v13)
  {
    sub_1000474A4(block, "");
    sub_10017ED90(buf, "Lost track of wifi settings for request");
    sub_1000E661C(block, buf, 1);
    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    if (SHIBYTE(v32) < 0)
    {
      operator delete(block[0]);
    }

    sub_10003F5D0(__p);
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v15 = objc_opt_class();
  v16 = NSStringFromClass(v15);
  v17 = v16;
  v29 = [v16 UTF8String];
  if ((isKindOfClass & 1) == 0)
  {
    sub_1000474A4(block, "");
    sub_1002F4BD4(buf, "We expect that settingsDictionary is of type NSDictionary, but it's not. Memory smasher? Got ");
    sub_1002C60F8(&v29, &buf[24]);
    sub_1000E661C(block, buf, 2);
    if (SHIBYTE(v38) < 0)
    {
      operator delete(*&buf[24]);
      if ((buf[23] & 0x80000000) == 0)
      {
LABEL_28:
        if ((SHIBYTE(v32) & 0x80000000) == 0)
        {
          goto LABEL_29;
        }

LABEL_36:
        operator delete(block[0]);
LABEL_29:
        sub_10003F5D0(__p);
      }
    }

    else if ((buf[23] & 0x80000000) == 0)
    {
      goto LABEL_28;
    }

    operator delete(*buf);
    if ((SHIBYTE(v32) & 0x80000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_36;
  }

  objc_opt_class();
  v18 = objc_opt_isKindOfClass();
  v19 = objc_opt_class();
  v20 = NSStringFromClass(v19);
  v21 = v20;
  v29 = [v20 UTF8String];
  if ((v18 & 1) == 0)
  {
    sub_1000474A4(block, "");
    sub_1001E926C(buf, "We expect that settings is of type WifiScannerSettings, but it's not. Memory smasher? Got ");
    sub_1002C60F8(&v29, &buf[24]);
    sub_1000E661C(block, buf, 2);
    if (SHIBYTE(v38) < 0)
    {
      operator delete(*&buf[24]);
      if ((buf[23] & 0x80000000) == 0)
      {
LABEL_32:
        if ((SHIBYTE(v32) & 0x80000000) == 0)
        {
          goto LABEL_33;
        }

LABEL_39:
        operator delete(block[0]);
LABEL_33:
        sub_10003F5D0(__p);
      }
    }

    else if ((buf[23] & 0x80000000) == 0)
    {
      goto LABEL_32;
    }

    operator delete(*buf);
    if ((SHIBYTE(v32) & 0x80000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_39;
  }

  v22 = WeakRetained;
  *buf = v22;
  *&buf[8] = a1;
  *&buf[16] = a4;
  v23 = v12;
  *&buf[24] = v23;
  v24 = v13;
  v37 = v24;
  v38 = a2;
  v39 = a3;
  v25 = v22;
  v26 = v25;
  if (v25)
  {
    v27 = v25[3];
    if (v27)
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3321888768;
      v32 = sub_1002F4C24;
      v33 = &unk_100448398;
      v34 = v25;
      v35 = buf;
      v28 = v27;
      dispatch_sync(v28, block);
    }
  }

  objc_autoreleasePoolPop(v8);
}

void sub_1002F4ABC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

std::string *sub_1002F4BD4@<X0>(std::string *__return_ptr a1@<X8>, std::string::value_type *__s@<X0>)
{
  *&a1->__r_.__value_.__l.__data_ = 0uLL;
  a1->__r_.__value_.__r.__words[2] = 0;
  return std::string::assign(a1, __s);
}

void sub_1002F4C08(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002F4C24(uint64_t a1)
{
  if (*(*(a1 + 32) + 32))
  {
    v2 = objc_autoreleasePoolPush();
    v3 = *(a1 + 40);
    [*v3 onQueueHandleScanFor:*(v3 + 8) withResults:*(v3 + 40) forScan:*(v3 + 16) withSettings:*(v3 + 24) withRequest:*(v3 + 32) withError:*(v3 + 48)];

    objc_autoreleasePoolPop(v2);
  }
}

id sub_1002F4C90(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  v5 = *(a2 + 40);
  *(a1 + 32) = result;
  *(a1 + 40) = v5;
  return result;
}

void *sub_1002F4CCC(void ***a1, uint64_t *a2)
{
  v2 = a1[1] - *a1;
  v3 = v2 >> 3;
  v4 = (v2 >> 3) + 1;
  if (v4 >> 61)
  {
    sub_10000FC84();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 2 > v4)
  {
    v4 = v6 >> 2;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    v7 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v4;
  }

  if (v7)
  {
    if (!(v7 >> 61))
    {
      operator new();
    }

    sub_10000D444();
  }

  v8 = *a2;
  *a2 = 0;
  v9 = *a1;
  v10 = a1[1];
  v11 = 8 * v3 - (v10 - *a1);
  *(8 * v3) = v8;
  v12 = v10 - v9;
  if (v10 != v9)
  {
    v13 = v12 - 8;
    v14 = v9;
    v15 = v11;
    if ((v12 - 8) < 0x98)
    {
      goto LABEL_30;
    }

    v16 = v9 >= v2 + (v13 & 0xFFFFFFFFFFFFFFF8) - v12 + 8 || v11 >= v9 + (v13 & 0xFFFFFFFFFFFFFFF8) + 8;
    v14 = v9;
    v15 = v11;
    if (!v16)
    {
      goto LABEL_30;
    }

    v17 = v12 >> 3;
    v18 = (v13 >> 3) + 1;
    v19 = v18 & 0x3FFFFFFFFFFFFFFCLL;
    v14 = &v9[v19];
    v15 = (v11 + v19 * 8);
    v20 = (-8 * v17 + 8 * v3 + 16);
    v21 = (v9 + 2);
    v22 = v18 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v23 = *(v21 - 1);
      v24 = *v21;
      *(v21 - 1) = 0uLL;
      *v21 = 0uLL;
      *(v20 - 1) = v23;
      *v20 = v24;
      v20 += 2;
      v21 += 2;
      v22 -= 4;
    }

    while (v22);
    if (v18 != (v18 & 0x3FFFFFFFFFFFFFFCLL))
    {
LABEL_30:
      do
      {
        v25 = *v14;
        *v14++ = 0;
        *v15++ = v25;
      }

      while (v14 != v10);
    }

    do
    {
      v26 = *v9++;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = (8 * v3 + 8);
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return (8 * v3 + 8);
}

void *sub_1002F4E7C(void *a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v6 = *--v3;
        v5 = v6;
        *v3 = 0;
        if (v6)
        {
          sub_1002F42F8(v5);
          operator delete();
        }
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_1002F4F04(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2 <= (v3 - v4) >> 3)
  {
    if (a2)
    {
      v10 = 8 * a2;
      bzero(*(a1 + 8), 8 * a2);
      v4 += v10;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = v4 - *a1;
    v7 = (v6 >> 3) + a2;
    if (v7 >> 61)
    {
      sub_10000FC84();
    }

    v8 = v3 - v5;
    if (v8 >> 2 > v7)
    {
      v7 = v8 >> 2;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (!(v9 >> 61))
      {
        operator new();
      }

      sub_10000D444();
    }

    v11 = (8 * (v6 >> 3));
    v12 = 8 * a2;
    bzero(v11, 8 * a2);
    memcpy(0, v5, v6);
    *a1 = 0;
    *(a1 + 8) = &v11[v12];
    *(a1 + 16) = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

uint64_t *sub_1002F5058(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (a3 != a4)
  {
    operator new();
  }

  return a2;
}

void sub_1002F5150(void *a1)
{
  __cxa_begin_catch(a1);
  sub_100387050(v1);
  __cxa_rethrow();
}

void sub_1002F5178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_10010C670();
  v8.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  v9 = *(a2 + 56);
  v10 = v7 - v8.__d_.__rep_;
  WeakRetained = objc_loadWeakRetained((a2 + 16));
  [WeakRetained onQueueScanTimedOut:a2 withReason:a3 errorCode:a4 forScanInitiated:v10 + v9];
}

id *sub_1002F5218(id *a1, const void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  *a1 = a1;
  if (qword_10045B050 != -1)
  {
    sub_100386CCC();
  }

  v15 = qword_10045B058;
  if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
  {
    v16 = *a1;
    LODWORD(v22) = 134217984;
    *(&v22 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Pending scan information created: %p", &v22, 0xCu);
  }

  a1[1] = CFRetain(a2);
  objc_initWeak(a1 + 2, v11);
  a1[3] = [v12 copy];
  a1[4] = v13;
  a1[5] = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v11[3]);
  a1[6] = [v14 copy];
  v17.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  v18 = a1[5];
  a1[7] = v17.__d_.__rep_;
  *(a1 + 16) = 0;
  *&v22 = _NSConcreteStackBlock;
  *(&v22 + 1) = 3321888768;
  v23 = sub_1002F549C;
  v24 = &unk_1004483F8;
  rep = v17.__d_.__rep_;
  v19 = objc_retainBlock(&v22);
  dispatch_source_set_event_handler(v18, v19);

  v20 = dispatch_time(0, 30000000000);
  dispatch_source_set_timer(a1[5], v20, 0x6FC23AC00uLL, 0);
  dispatch_resume(a1[5]);

  return a1;
}

void sub_1002F5434(_Unwind_Exception *a1)
{
  sub_1002F444C(v5);

  objc_destroyWeak((v2 + 16));
  sub_1002F44C4((v2 + 8));
  sub_1002F44FC(v2);

  _Unwind_Resume(a1);
}

void sub_1002F54A4(void *a1)
{
  if (qword_10045B050 != -1)
  {
    sub_100386CCC();
  }

  v2 = qword_10045B058;
  if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_ERROR))
  {
    v3 = v2;
    v4 = (std::chrono::steady_clock::now().__d_.__rep_ - *a1) / 1000000000;
    v5 = 134218240;
    v6 = 30;
    v7 = 2048;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Timeout from Wi-Fi framework, shouldn't take longer than %lld seconds. Last scan was %lld seconds ago", &v5, 0x16u);
  }
}

std::string *sub_1002F55B0@<X0>(std::string *__return_ptr a1@<X8>, std::string::value_type *__s@<X0>)
{
  *&a1->__r_.__value_.__l.__data_ = 0uLL;
  a1->__r_.__value_.__r.__words[2] = 0;
  return std::string::assign(a1, __s);
}

void sub_1002F55E4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_1002F5600@<X0>(std::string *__return_ptr a1@<X8>, std::string::value_type *__s@<X0>)
{
  *&a1->__r_.__value_.__l.__data_ = 0uLL;
  a1->__r_.__value_.__r.__words[2] = 0;
  return std::string::assign(a1, __s);
}

void sub_1002F5634(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002F5650()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_1002F56C0()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void sub_1002F5730()
{
  v0 = objc_autoreleasePoolPush();
  qword_10045D480 = kWiFiDeviceScanRequestClientPid;
  qword_10045D488 = kWiFiDeviceScanRequestReceiptTimestamp;

  objc_autoreleasePoolPop(v0);
}

void sub_1002F5AA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

WifiScanResult *__cdecl sub_1002F6580(id a1, id a2)
{
  v2 = a2;
  Property = WiFiNetworkGetProperty();
  v4 = WiFiNetworkGetProperty();
  v5 = WiFiNetworkGetProperty();
  v6 = WiFiNetworkGetProperty();
  v7 = WiFiNetworkGetProperty();
  v8 = WiFiNetworkGetProperty();
  IsAdHoc = WiFiNetworkIsAdHoc();
  IsCaptive = WiFiNetworkIsCaptive();
  v11 = WiFiNetworkGetProperty();
  LOBYTE(v15) = WiFiNetworkIsApplePersonalHotspot() != 0;
  BYTE1(v14) = IsCaptive != 0;
  LOBYTE(v14) = IsAdHoc != 0;
  v12 = [WifiScannerCommonDarwin scanResultWithAge:Property bssid:v4 ssid:v5 channel:v6 rssi:v7 flags:v8 adHoc:v14 captive:v11 mode:v15 personalHotspot:?];

  return v12;
}

void sub_1002F68BC(id a1)
{
  v1 = os_log_create("com.apple.locationd.Pipeline", "Generic");
  v2 = qword_10045B058;
  qword_10045B058 = v1;
}

void sub_1002F6900()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_1002F6970()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void sub_1002F69E0()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

void sub_1002F6B3C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained onQueueTick];
}

void sub_1002F6C58(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, objc_super a10)
{
  a10.super_class = DispatchMonotonicTimer;
  [(_Unwind_Exception *)&a10 dealloc:a3];
  _Unwind_Resume(a1);
}

void sub_1002F6E64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a17 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002F7044(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002F7260(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002F74AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a16 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002F751C(id a1)
{
  v1 = os_log_create("com.apple.locationd.Pipeline", "Generic");
  v2 = qword_10045B058;
  qword_10045B058 = v1;
}

void sub_1002F7560()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_1002F75D0()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void sub_1002F7640()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

void sub_1002F7688(std::__shared_weak_count *a1)
{
  a1->__vftable = off_1004484E8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1002F76DC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v5 = *v2;
      v6 = v2[4];
      if (v6)
      {
        v2[5] = v6;
        operator delete(v6);
      }

      operator delete(v2);
      v2 = v5;
    }

    while (v5);
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return a1;
}

void sub_1002F7748(uint64_t a1)
{
  sub_10000ACB4(a1);

  operator delete();
}

WifiScannerSettings *sub_1002F779C(uint64_t a1, uint64_t a2, void *a3)
{
  v286 = a3;
  v293 = a2;
  v295 = a1;
  if (a2 || [v286 count])
  {
    v292 = v286;
    *v300 = 0u;
    v301 = 0u;
    v302 = 0u;
    v303 = 0u;
    obj = *(a1 + 56);
    v5 = [obj countByEnumeratingWithState:v300 objects:v307 count:16];
    if (!v5)
    {
      goto LABEL_66;
    }

    v6 = (a1 + 16);
    v290 = *v301;
    while (1)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v301 != v290)
        {
          objc_enumerationMutation(obj);
        }

        v8 = [*(v300[1] + i) intValue];
        v9 = sub_10000AA28(v8);
        v10 = *(a1 + 24);
        if (!v10)
        {
          goto LABEL_30;
        }

        v11 = vcnt_s8(v10);
        v11.i16[0] = vaddlv_u8(v11);
        if (v11.u32[0] > 1uLL)
        {
          v12 = v9;
          if (v10 <= v9)
          {
            v12 = v9 % v10;
          }
        }

        else
        {
          v12 = (v10 - 1) & v9;
        }

        v13 = *(*v6 + 8 * v12);
        if (!v13 || (v14 = *v13) == 0)
        {
LABEL_30:
          operator new();
        }

        if (v11.u32[0] < 2uLL)
        {
          while (1)
          {
            v16 = v14[1];
            if (v16 == v9)
            {
              if (*(v14 + 4) == v9)
              {
                goto LABEL_31;
              }
            }

            else if ((v16 & (v10 - 1)) != v12)
            {
              goto LABEL_30;
            }

            v14 = *v14;
            if (!v14)
            {
              goto LABEL_30;
            }
          }
        }

        while (1)
        {
          v15 = v14[1];
          if (v15 == v9)
          {
            break;
          }

          if (v15 >= v10)
          {
            v15 %= v10;
          }

          if (v15 != v12)
          {
            goto LABEL_30;
          }

LABEL_20:
          v14 = *v14;
          if (!v14)
          {
            goto LABEL_30;
          }
        }

        if (*(v14 + 4) != v9)
        {
          goto LABEL_20;
        }

LABEL_31:
        v298 = 0u;
        v299 = 0u;
        *v296 = 0u;
        v297 = 0u;
        v17 = v292;
        v18 = 0;
        v19 = [v17 countByEnumeratingWithState:v296 objects:__p count:16];
        if (v19)
        {
          v20 = *v297;
          do
          {
            for (j = 0; j != v19; ++j)
            {
              if (*v297 != v20)
              {
                objc_enumerationMutation(v17);
              }

              if ([*(v296[1] + j) channel] == v8)
              {
                ++v18;
              }
            }

            v19 = [v17 countByEnumeratingWithState:v296 objects:__p count:16];
          }

          while (v19);
        }

        v23 = v14[5];
        v22 = v14[6];
        if (v23 < v22)
        {
          *v23 = v293;
          *(v23 + 8) = v18;
          v24 = v23 + 16;
          goto LABEL_53;
        }

        v25 = v14[4];
        v26 = v23 - v25;
        v27 = (v23 - v25) >> 4;
        v28 = v27 + 1;
        if ((v27 + 1) >> 60)
        {
LABEL_419:
          sub_10000FC84();
        }

        v29 = v22 - v25;
        if (v29 >> 3 > v28)
        {
          v28 = v29 >> 3;
        }

        if (v29 >= 0x7FFFFFFFFFFFFFF0)
        {
          v30 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v30 = v28;
        }

        if (v30)
        {
          if (!(v30 >> 60))
          {
            operator new();
          }

          sub_10000D444();
        }

        v31 = 16 * v27;
        *v31 = v293;
        *(v31 + 8) = v18;
        v24 = 16 * v27 + 16;
        memcpy(0, v25, v26);
        v14[4] = 0;
        v14[5] = v24;
        v14[6] = 0;
        if (v25)
        {
          operator delete(v25);
        }

LABEL_53:
        a1 = v295;
        v14[5] = v24;
        v32 = v14[4];
        if (v24 - v32 == 16)
        {
          *(v14 + 14) = 1;
        }

        else if (v24 != v32)
        {
          v33 = 0;
          v34 = ((v24 - v32) >> 4) - 1;
          if ((v24 - v32) >> 4 != 1)
          {
            v35 = *(v32 + 16 * v34);
            v36 = v14[3];
            v37 = v14[4];
            while (1)
            {
              v38 = *v37;
              v37 += 2;
              if (v36 >= v35 - v38)
              {
                break;
              }

              ++v33;
              *(v14 + 14) = 2;
              if (v34 == v33)
              {
                goto LABEL_61;
              }
            }
          }

          if (v33 == v34)
          {
LABEL_61:
            *(v14 + 14) = 1;
            v33 = ((v24 - v32) >> 4) - 1;
          }

          if (v33)
          {
            if ((v33 & 0x8000000000000000) == 0)
            {
              operator new();
            }

            goto LABEL_419;
          }
        }

        v14[8] = v293;
      }

      v5 = [obj countByEnumeratingWithState:v300 objects:v307 count:16];
      if (!v5)
      {
LABEL_66:

        a1 = v295;
        break;
      }
    }
  }

  if (*(a1 + 8))
  {
    v39 = [WifiScannerSettings alloc];
    v40 = v295;
    v41 = *(v295 + 128);
    *v307 = 0u;
    *v308 = 0u;
    v309 = 1065353216;
    v310 = v41;
    v42 = *(v295 + 8);
    if (!v42)
    {
      sub_1000474A4(v300, "");
      sub_1001EDF78(__p, "Cannot pickChannels in UNINITALIZED state ");
      sub_1000E661C(v300, __p, 1);
      if (SBYTE7(v306) < 0)
      {
        operator delete(__p[0]);
      }

      if (SBYTE7(v301) < 0)
      {
        operator delete(v300[0]);
      }

      sub_10003F5D0(v296);
    }

    if (v42 == 1)
    {
      v43 = *(v295 + 88);
      v44 = (v43 - *(v295 + 80)) >> 2 >= v41 - v308[1] ? v41 - v308[1] : (v43 - *(v295 + 80)) >> 2;
      if (v44)
      {
        do
        {
          LODWORD(v304) = *(v43 - 4);
          sub_1002F9648(v307, &v304, &v304);
          if (v308[1] > v310)
          {
            sub_1000474A4(v300, "");
            sub_10023FC08("Selected channels cannot exceed channelsPerScanCount", __p);
            sub_1000E661C(v300, __p, 1);
            if (SBYTE7(v306) < 0)
            {
              operator delete(__p[0]);
            }

            if (SBYTE7(v301) < 0)
            {
              operator delete(v300[0]);
            }

            sub_10003F5D0(v296);
          }

          v43 = *(v295 + 88) - 4;
          *(v295 + 88) = v43;
          --v44;
        }

        while (v44);
        v41 = v310;
        v40 = v295;
      }
    }

    v53 = v308[1];
    if (v308[1] >= v41)
    {
      v77 = sub_1002F95A0(v307);
      v79 = v308[0];
      if (!v308[0])
      {
        goto LABEL_124;
      }

      goto LABEL_123;
    }

    v291 = v39;
    v54 = *(v40 + 32);
    if (v54)
    {
      v55 = 0;
      while (1)
      {
        v56 = sub_1000E0718(*(v54 + 4));
        if (!v307[1])
        {
          goto LABEL_109;
        }

        v57 = vcnt_s8(v307[1]);
        v57.i16[0] = vaddlv_u8(v57);
        if (v57.u32[0] > 1uLL)
        {
          v58 = v56;
          if (v307[1] <= v56)
          {
            v58 = v56 % v307[1];
          }
        }

        else
        {
          v58 = (v307[1] - 1) & v56;
        }

        v59 = *(v307[0] + v58);
        if (!v59 || (v60 = *v59) == 0)
        {
LABEL_109:
          v63 = v54[4];
          v64 = v54[5];
          if (v63 != v64)
          {
            v65 = v64 - v63 - 16;
            if (v65 >= 0x80)
            {
              v68 = (v65 >> 4) + 1;
              v69 = v68 & 7;
              if ((v68 & 7) == 0)
              {
                v69 = 8;
              }

              v70 = v68 - v69;
              v67 = v63 + 16 * v70;
              v71 = (v63 + 72);
              v72 = 0uLL;
              v73 = 0uLL;
              do
              {
                v74 = v71 - 16;
                v75 = vld4q_f32(v74);
                v76 = vld4q_f32(v71);
                v72 = vaddq_s32(v75, v72);
                v73 = vaddq_s32(v76, v73);
                v71 += 32;
                v70 -= 8;
              }

              while (v70);
              v66 = vaddvq_s32(vaddq_s32(v73, v72));
            }

            else
            {
              v66 = 0;
              v67 = v54[4];
            }

            do
            {
              v66 += *(v67 + 8);
              v67 += 16;
            }

            while (v67 != v64);
          }

          operator new();
        }

        if (v57.u32[0] < 2uLL)
        {
          while (1)
          {
            v62 = v60[1];
            if (v62 == v56)
            {
              if (*(v60 + 4) == v56)
              {
                goto LABEL_120;
              }
            }

            else if ((v62 & (v307[1] - 1)) != v58)
            {
              goto LABEL_109;
            }

            v60 = *v60;
            if (!v60)
            {
              goto LABEL_109;
            }
          }
        }

        while (1)
        {
          v61 = v60[1];
          if (v61 == v56)
          {
            break;
          }

          if (v61 >= v307[1])
          {
            v61 %= v307[1];
          }

          if (v61 != v58)
          {
            goto LABEL_109;
          }

LABEL_99:
          v60 = *v60;
          if (!v60)
          {
            goto LABEL_109;
          }
        }

        if (*(v60 + 4) != v56)
        {
          goto LABEL_99;
        }

LABEL_120:
        v54 = *v54;
        if (!v54)
        {
          v53 = v308[1];
          v41 = v310;
          goto LABEL_147;
        }
      }
    }

    v55 = 0;
LABEL_147:
    v96 = v41 - v53;
    if (v96)
    {
      LODWORD(v96) = 0;
    }

    v300[0] = v40;
    v294 = 32 * v96;
    if (!v294)
    {
      goto LABEL_150;
    }

    v100 = 0;
    while (1)
    {
      v101 = (v55 - v100) >> 5;
      if (v101 < 2)
      {
        goto LABEL_150;
      }

      if (v101 == 3)
      {
        sub_1002F997C(v100, (v100 + 32), v55 - 4, v300);
        goto LABEL_150;
      }

      if (v101 == 2)
      {
        break;
      }

      if (v101 <= 7)
      {
        if (v55 - 4 == v100)
        {
          goto LABEL_150;
        }

LABEL_385:
        if (v100 == v55)
        {
          goto LABEL_384;
        }

        v259 = (v100 + 32);
        if ((v100 + 32) == v55)
        {
          goto LABEL_384;
        }

        v260 = *(v295 + 144);
        v261 = 1000000 * *(v295 + 136) + 50000000;
        v262 = 1000000 * v260;
        v263 = v260 * 1000000.0;
        v264 = v100;
        while (1)
        {
          v265 = *v259;
          v266 = *v259 + v261;
          v267 = *v264;
          v268 = *v264 + v261;
          if (v266 < v262 && v268 < v262)
          {
            v270 = v266 / v263;
            if (*(v295 + 152))
            {
              v271 = v270 * (1.0 - exp(-v259[1]));
              v272 = v268 / v263 * (1.0 - exp(-v264[1]));
              v273 = v271 == v272;
              if (v271 <= v272)
              {
                goto LABEL_401;
              }
            }

            else
            {
              v274 = v268 / v263;
              v273 = v270 == v274;
              if (v270 <= v274)
              {
LABEL_401:
                if (!v273)
                {
                  goto LABEL_389;
                }

LABEL_403:
                if (*(v264 + 6) <= *(v259 + 6))
                {
                  goto LABEL_389;
                }
              }
            }
          }

          else if (*&v267 >= *&v265)
          {
            if (*&v265 != *&v267)
            {
              goto LABEL_389;
            }

            goto LABEL_403;
          }

          v264 = v259;
LABEL_389:
          v259 += 4;
          if (v259 == v55)
          {
            if (v264 != v100)
            {
              v275 = *(v100 + 16);
              *__p = *v100;
              v306 = v275;
              v276 = *(v264 + 1);
              *v100 = *v264;
              *(v100 + 16) = v276;
              v277 = v306;
              *v264 = *__p;
              *(v264 + 1) = v277;
            }

LABEL_384:
            v100 += 32;
            if (v100 != v55 - 4)
            {
              goto LABEL_385;
            }

LABEL_150:
            v97 = sub_1002F95A0(v307);
            v39 = v291;
            if (v294)
            {
              for (k = 0; k != v294; k += 32)
              {
                v99 = [NSNumber numberWithInt:sub_1000E0718(*(k + 24))];
                [v97 addObject:v99];
              }
            }

            v77 = v97;

            v40 = v295;
            v79 = v308[0];
            if (!v308[0])
            {
LABEL_124:
              v81 = v307[0];
              v307[0] = 0;
              if (v81)
              {
                operator delete(v81);
              }

              v82 = *(v40 + 64);
              v83 = atomic_load((v40 + 72));
              LODWORD(v78) = v83;
              LOBYTE(v83) = atomic_load((v40 + 104));
              v84 = [(WifiScannerSettings *)v39 initWithChannels:v77 dwell:v82 scanType:2 includingOffChannelResults:0 atDutyCycle:v83 & 1 asLowPriority:v78];

              goto LABEL_137;
            }

            do
            {
LABEL_123:
              v80 = *v79;
              operator delete(v79);
              v79 = v80;
            }

            while (v80);
            goto LABEL_124;
          }
        }
      }

      v102 = v100 + 32 * ((v55 - v100) >> 6);
      v103 = (v55 - 4);
      v104 = sub_1002F997C(v100, v102, v55 - 4, v300);
      v105 = *(v295 + 144);
      v106 = *v100;
      v107 = 1000000 * *(v295 + 136) + 50000000;
      v108 = v107 + *v100;
      v109 = 1000000 * v105;
      v110 = *v102;
      v111 = *v102 + v107;
      if (v108 < 1000000 * v105 && v111 < v109)
      {
        v113 = v105 * 1000000.0;
        v114 = v108 / v113;
        if (*(v295 + 152))
        {
          v284 = *(v295 + 144);
          v285 = v107 + *v100;
          v115 = v114 * (1.0 - exp(-*(v100 + 8)));
          v116 = exp(-*(v102 + 8));
          v105 = v284;
          v108 = v285;
          v117 = v111 / v113 * (1.0 - v116);
          v118 = v115 == v117;
          if (v115 > v117)
          {
            goto LABEL_185;
          }
        }

        else
        {
          v119 = v111 / v113;
          v118 = v114 == v119;
          if (v114 > v119)
          {
            goto LABEL_185;
          }
        }

        if (v118)
        {
LABEL_173:
          if (*(v102 + 24) > *(v100 + 24))
          {
            goto LABEL_185;
          }
        }
      }

      else
      {
        if (*&v110 < *&v106)
        {
          goto LABEL_185;
        }

        if (*&v106 == *&v110)
        {
          goto LABEL_173;
        }
      }

      v120 = (v55 - 8);
      if (v100 == v55 - 8)
      {
LABEL_251:
        v172 = v100 + 32;
        v173 = *v103;
        if (v108 >= v109 || (v174 = v173 + v107, v173 + v107 >= v109))
        {
          if (v173 < *&v106)
          {
            goto LABEL_325;
          }

          if (*&v106 == v173)
          {
            goto LABEL_308;
          }

          goto LABEL_309;
        }

        v175 = v105 * 1000000.0;
        v176 = v108 / v175;
        if (*(v295 + 152))
        {
          v177 = v108;
          v178 = v105;
          v176 = v176 * (1.0 - exp(-*(v100 + 8)));
          v179 = exp(-*(v55 - 3));
          v105 = v178;
          v108 = v177;
          v180 = v174 / v175 * (1.0 - v179);
        }

        else
        {
          v180 = v174 / v175;
        }

        if (v176 <= v180)
        {
          if (v176 == v180)
          {
LABEL_308:
            if (*(v55 - 2) > *(v100 + 24))
            {
              goto LABEL_325;
            }
          }

LABEL_309:
          if (v172 == v103)
          {
            goto LABEL_150;
          }

          v213 = v105 * 1000000.0;
          v214 = v108 / v213;
          while (2)
          {
            v215 = *v172;
            if (v108 >= v109 || (v216 = v215 + v107, v215 + v107 >= v109))
            {
              if (v215 < *&v106)
              {
                goto LABEL_324;
              }

              if (*&v106 == v215)
              {
                goto LABEL_311;
              }
            }

            else
            {
              if (*(v295 + 152))
              {
                v217 = v108;
                v218 = v214 * (1.0 - exp(-*(v100 + 8)));
                v219 = exp(-*(v172 + 8));
                v108 = v217;
                v220 = v216 / v213 * (1.0 - v219);
              }

              else
              {
                v220 = v216 / v213;
                v218 = v214;
              }

              if (v218 > v220)
              {
LABEL_324:
                v221 = *(v172 + 16);
                *__p = *v172;
                v306 = v221;
                v222 = *(v55 - 1);
                *v172 = *v103;
                *(v172 + 16) = v222;
                v172 += 32;
                v223 = v306;
                *v103 = *__p;
                *(v55 - 1) = v223;
                break;
              }

              if (v218 != v220)
              {
                goto LABEL_312;
              }

LABEL_311:
              if (*(v172 + 24) > *(v100 + 24))
              {
                goto LABEL_324;
              }
            }

LABEL_312:
            v172 += 32;
            if (v172 == v103)
            {
              goto LABEL_150;
            }

            continue;
          }
        }

LABEL_325:
        if (v172 == v103)
        {
          goto LABEL_150;
        }

        v224 = v295;
        while (1)
        {
          v225 = *(v224 + 144);
          v226 = *v100;
          v227 = 1000000 * *(v224 + 136) + 50000000;
          v228 = v227 + *v100;
          v229 = 1000000 * v225;
          v230 = v225 * 1000000.0;
          v231 = v228 / v230;
          if (v228 < 1000000 * v225)
          {
            while (1)
            {
              v233 = *v172;
              v234 = *v172 + v227;
              if (v234 >= v229)
              {
                if (v233 < *&v226)
                {
                  v224 = v295;
                  if (v228 < v229)
                  {
                    goto LABEL_361;
                  }

                  goto LABEL_349;
                }

                if (*&v226 == v233 && *(v172 + 24) > *(v100 + 24))
                {
                  v224 = v295;
                  if (v228 < v229)
                  {
                    goto LABEL_361;
                  }

                  goto LABEL_349;
                }
              }

              else
              {
                if (*(v295 + 152))
                {
                  v235 = v231 * (1.0 - exp(-*(v100 + 8)));
                  v236 = v234 / v230 * (1.0 - exp(-*(v172 + 8)));
                  v237 = v235 == v236;
                  if (v235 > v236)
                  {
                    goto LABEL_353;
                  }
                }

                else
                {
                  v238 = v234 / v230;
                  v237 = v231 == v238;
                  if (v231 > v238)
                  {
LABEL_353:
                    v224 = v295;
                    if (v228 < v229)
                    {
                      goto LABEL_361;
                    }

                    goto LABEL_349;
                  }
                }

                if (v237 && *(v172 + 24) > *(v100 + 24))
                {
                  v224 = v295;
                  if (v228 < v229)
                  {
                    goto LABEL_361;
                  }

                  goto LABEL_349;
                }
              }

              v172 += 32;
            }
          }

          v232 = *v172;
          if (*v172 >= *&v226)
          {
            do
            {
              if (*&v226 == v232 && *(v172 + 24) > *(v100 + 24))
              {
                break;
              }

              v239 = *(v172 + 32);
              v172 += 32;
              v232 = v239;
            }

            while (v239 >= *&v226);
            if (v228 < v229)
            {
              break;
            }
          }

          do
          {
            do
            {
LABEL_349:
              v241 = *(v103 - 32);
              v103 -= 32;
              v240 = v241;
            }

            while (v241 < *&v226);
          }

          while (*&v226 == v240 && *(v103 + 24) > *(v100 + 24));
LABEL_369:
          if (v172 >= v103)
          {
            if (v172 > v294)
            {
              goto LABEL_150;
            }

            goto LABEL_372;
          }

          v249 = *(v172 + 16);
          *__p = *v172;
          v306 = v249;
          v250 = *(v103 + 16);
          *v172 = *v103;
          *(v172 + 16) = v250;
          v172 += 32;
          v251 = v306;
          *v103 = *__p;
          *(v103 + 16) = v251;
        }

        while (1)
        {
LABEL_361:
          v243 = *(v103 - 32);
          v103 -= 32;
          v242 = v243;
          v244 = v243 + v227;
          if (v243 + v227 >= v229)
          {
            if (v242 < *&v226)
            {
              continue;
            }

            if (*&v226 != v242)
            {
              goto LABEL_369;
            }
          }

          else
          {
            if (*(v224 + 152))
            {
              v245 = v231 * (1.0 - exp(-*(v100 + 8)));
              v246 = v244 / v230 * (1.0 - exp(-*(v103 + 8)));
              v247 = v245 == v246;
              if (v245 > v246)
              {
                continue;
              }
            }

            else
            {
              v248 = v244 / v230;
              v247 = v231 == v248;
              if (v231 > v248)
              {
                continue;
              }
            }

            if (!v247)
            {
              goto LABEL_369;
            }
          }

          if (*(v103 + 24) <= *(v100 + 24))
          {
            goto LABEL_369;
          }
        }
      }

      if (*&v110 + v107 < v109)
      {
        v121 = v105 * 1000000.0;
        v122 = (*&v110 + v107) / v121;
        v287 = v107;
        obja = v109;
        while (1)
        {
          v156 = *v120;
          v157 = *v120 + v107;
          if (v157 >= v109)
          {
            if (*&v110 < v156)
            {
              goto LABEL_181;
            }

            if (v156 == *&v110)
            {
              goto LABEL_231;
            }
          }

          else
          {
            v158 = v157 / v121;
            if (*(v295 + 152))
            {
              v159 = v106;
              v160 = v108;
              v161 = v105;
              v158 = v158 * (1.0 - exp(-*(v120 + 8)));
              v162 = exp(-*(v102 + 8));
              v105 = v161;
              v108 = v160;
              v106 = v159;
              v107 = v287;
              v109 = obja;
              v163 = v122 * (1.0 - v162);
            }

            else
            {
              v163 = v122;
            }

            if (v158 > v163)
            {
              goto LABEL_181;
            }

            if (v158 == v163)
            {
LABEL_231:
              if (*(v102 + 24) > *(v120 + 24))
              {
                goto LABEL_181;
              }
            }
          }

          v120 -= 32;
          if (v120 == v100)
          {
            goto LABEL_251;
          }
        }
      }

      while (*&v110 >= *v120 && (*v120 != *&v110 || *(v102 + 24) <= *(v120 + 24)))
      {
        v120 -= 32;
        if (v120 == v100)
        {
          goto LABEL_251;
        }
      }

LABEL_181:
      v123 = *(v100 + 16);
      *__p = *v100;
      v306 = v123;
      v124 = *(v120 + 16);
      *v100 = *v120;
      *(v100 + 16) = v124;
      v125 = v306;
      *v120 = *__p;
      *(v120 + 16) = v125;
      if (v104)
      {
        v104 = 2;
      }

      else
      {
        v104 = 1;
      }

      v103 = v120;
LABEL_185:
      v126 = v295;
      v127 = 32;
      if (v100 + 32 < v103)
      {
        while (1)
        {
          v128 = *(v126 + 144);
          v129 = 1000000 * *(v126 + 136) + 50000000;
          v130 = 1000000 * v128;
          v131 = *v102;
          v132 = *v102 + v129;
          v133 = v128 * 1000000.0;
          v134 = v132 / v133;
          v135 = v132 < 1000000 * v128;
          if (v132 < 1000000 * v128)
          {
            while (1)
            {
              v145 = *(v100 + v127);
              if (v145 + v129 >= v130)
              {
                if (*&v131 < v145)
                {
                  goto LABEL_210;
                }

                if (v145 != *&v131)
                {
                  goto LABEL_192;
                }
              }

              else
              {
                v146 = (v145 + v129) / v133;
                if (*(v295 + 152))
                {
                  v147 = v146 * (1.0 - exp(-*(v100 + v127 + 8)));
                  v148 = v134 * (1.0 - exp(-*(v102 + 8)));
                  v149 = v147 == v148;
                  if (v147 > v148)
                  {
                    goto LABEL_210;
                  }
                }

                else
                {
                  v149 = v146 == v134;
                  if (v146 > v134)
                  {
                    goto LABEL_210;
                  }
                }

                if (!v149)
                {
                  goto LABEL_192;
                }
              }

              if (*(v102 + 24) <= *(v100 + v127 + 24))
              {
                goto LABEL_192;
              }

LABEL_210:
              v127 += 32;
            }
          }

          while (1)
          {
            v136 = *(v100 + v127);
            if (*&v131 >= v136 && (v136 != *&v131 || *(v102 + 24) <= *(v100 + v127 + 24)))
            {
              break;
            }

            v127 += 32;
          }

LABEL_192:
          if (v135)
          {
            break;
          }

          v151 = *(v103 - 32);
          v103 -= 32;
          v150 = v151;
          v126 = v295;
          if (*&v131 >= v151)
          {
            do
            {
              if (v150 == *&v131 && *(v102 + 24) > *(v103 + 24))
              {
                break;
              }

              v152 = *(v103 - 32);
              v103 -= 32;
              v150 = v152;
            }

            while (*&v131 >= v152);
          }

LABEL_227:
          v144 = (v100 + v127);
          if (v100 + v127 >= v103)
          {
            goto LABEL_243;
          }

LABEL_228:
          v153 = v144[1];
          *__p = *v144;
          v306 = v153;
          v154 = *(v103 + 16);
          *v144 = *v103;
          v144[1] = v154;
          v155 = v306;
          *v103 = *__p;
          *(v103 + 16) = v155;
          ++v104;
          if (v102 == v144)
          {
            v102 = v103;
          }

          v127 += 32;
        }

        do
        {
          while (1)
          {
            v138 = *(v103 - 32);
            v103 -= 32;
            v137 = v138;
            v139 = v138 + v129;
            if (v138 + v129 < v130)
            {
              break;
            }

            if (*&v131 < v137)
            {
              v126 = v295;
              goto LABEL_227;
            }

            if (v137 == *&v131 && *(v102 + 24) > *(v103 + 24))
            {
              goto LABEL_205;
            }
          }

          v140 = v139 / v133;
          if (*(v295 + 152))
          {
            v141 = v140 * (1.0 - exp(-*(v103 + 8)));
            v142 = v134 * (1.0 - exp(-*(v102 + 8)));
            v143 = v141 == v142;
            if (v141 > v142)
            {
              break;
            }
          }

          else
          {
            v143 = v140 == v134;
            if (v140 > v134)
            {
              break;
            }
          }
        }

        while (!v143 || *(v102 + 24) <= *(v103 + 24));
LABEL_205:
        v126 = v295;
        v144 = (v100 + v127);
        if (v100 + v127 < v103)
        {
          goto LABEL_228;
        }
      }

LABEL_243:
      v164 = v100 + v127;
      if (v100 + v127 != v102)
      {
        v165 = *(v126 + 144);
        v166 = *v102;
        v167 = 1000000 * *(v126 + 136) + 50000000;
        v168 = v167 + *v102;
        v169 = *v164;
        v170 = *v164 + v167;
        if (v168 < 1000000 * v165 && v170 < 1000000 * v165)
        {
          v181 = v165 * 1000000.0;
          v182 = v168 / v181;
          if (*(v126 + 152))
          {
            v182 = v182 * (1.0 - exp(-*(v102 + 8)));
            v183 = v170 / v181 * (1.0 - exp(-*(v164 + 8)));
          }

          else
          {
            v183 = v170 / v181;
          }

          if (v182 <= v183)
          {
            if (v182 != v183)
            {
              goto LABEL_265;
            }

LABEL_263:
            if (*(v164 + 24) <= *(v102 + 24))
            {
              goto LABEL_265;
            }
          }

LABEL_264:
          v184 = *(v164 + 16);
          *__p = *v164;
          v306 = v184;
          v185 = *(v102 + 16);
          *v164 = *v102;
          *(v164 + 16) = v185;
          v186 = v306;
          *v102 = *__p;
          *(v102 + 16) = v186;
          ++v104;
          goto LABEL_265;
        }

        if (v169 < *&v166)
        {
          goto LABEL_264;
        }

        if (*&v166 == v169)
        {
          goto LABEL_263;
        }
      }

LABEL_265:
      if (v164 == v294)
      {
        goto LABEL_150;
      }

      if (!v104)
      {
        if (v164 > v294)
        {
          v187 = v127 - 32;
          if (!v187)
          {
            goto LABEL_150;
          }

          v188 = *(v295 + 144);
          v189 = 1000000 * *(v295 + 136) + 50000000;
          v190 = 1000000 * v188;
          v191 = v188 * 1000000.0;
          v193 = (v100 + 56);
          v192 = *v100;
          while (2)
          {
            v194 = *(v193 - 3);
            v195 = *&v192 + v189;
            if (*&v194 + v189 < v190 && v195 < v190)
            {
              v197 = (*&v194 + v189) / v191;
              if (*(v295 + 152))
              {
                v197 = v197 * (1.0 - exp(-*(v193 - 2)));
                v198 = v195 / v191 * (1.0 - exp(-*(v193 - 6)));
              }

              else
              {
                v198 = v195 / v191;
              }

              if (v197 > v198)
              {
                goto LABEL_267;
              }

              if (v197 != v198)
              {
                goto LABEL_274;
              }
            }

            else
            {
              if (*&v192 < *&v194)
              {
                goto LABEL_267;
              }

              if (*&v194 != *&v192)
              {
                goto LABEL_274;
              }
            }

            if (*(v193 - 8) > *v193)
            {
              goto LABEL_267;
            }

LABEL_274:
            v193 += 4;
            v192 = v194;
            v187 -= 32;
            if (!v187)
            {
              goto LABEL_150;
            }

            continue;
          }
        }

        if ((v164 + 32) == v55)
        {
          goto LABEL_150;
        }

        v199 = *(v295 + 144);
        v200 = 1000000 * *(v295 + 136) + 50000000;
        v201 = 1000000 * v199;
        v202 = v199 * 1000000.0;
        v203 = (v100 + v127);
        v206 = *v203;
        v205 = v203 + 7;
        v204 = v206;
        while (2)
        {
          v208 = *(v205 - 3);
          v209 = v204 + v200;
          if (v208 + v200 < v201 && v209 < v201)
          {
            v211 = (v208 + v200) / v202;
            if (*(v295 + 152))
            {
              v211 = v211 * (1.0 - exp(-*(v205 - 2)));
              v212 = v209 / v202 * (1.0 - exp(-*(v205 - 6)));
            }

            else
            {
              v212 = v209 / v202;
            }

            if (v211 > v212)
            {
              break;
            }

            if (v211 != v212)
            {
              goto LABEL_291;
            }
          }

          else
          {
            if (v204 < v208)
            {
              break;
            }

            if (v208 != v204)
            {
              goto LABEL_291;
            }
          }

          if (*(v205 - 8) > *v205)
          {
            break;
          }

LABEL_291:
          v207 = (v205 + 2);
          v205 += 8;
          v204 = v208;
          if (v207 == v55)
          {
            goto LABEL_150;
          }

          continue;
        }
      }

LABEL_267:
      if (v164 <= v294)
      {
        v172 = v164 + 32;
      }

      else
      {
        v55 = v164;
        v172 = v100;
      }

LABEL_372:
      v100 = v172;
      if (v55 == v294)
      {
        goto LABEL_150;
      }
    }

    v253 = v55 - 4;
    v252 = *(v55 - 4);
    v254 = *(v295 + 144);
    v255 = 1000000 * *(v295 + 136) + 50000000;
    v256 = *v100;
    v257 = *v100 + v255;
    if (v255 + v252 < 1000000 * v254 && v257 < 1000000 * v254)
    {
      v278 = v254 * 1000000.0;
      v279 = (v255 + v252) / v278;
      if (*(v295 + 152))
      {
        v279 = v279 * (1.0 - exp(-*(v55 - 3)));
        v280 = v257 / v278 * (1.0 - exp(-*(v100 + 8)));
      }

      else
      {
        v280 = v257 / v278;
      }

      if (v279 <= v280)
      {
        if (v279 != v280)
        {
          goto LABEL_150;
        }

LABEL_412:
        if (*(v100 + 24) <= *(v55 - 2))
        {
          goto LABEL_150;
        }
      }
    }

    else if (*&v256 >= v252)
    {
      if (v252 != *&v256)
      {
        goto LABEL_150;
      }

      goto LABEL_412;
    }

    v281 = *(v100 + 16);
    *__p = *v100;
    v306 = v281;
    v282 = *(v55 - 1);
    *v100 = *v253;
    *(v100 + 16) = v282;
    v283 = v306;
    *v253 = *__p;
    *(v55 - 1) = v283;
    goto LABEL_150;
  }

  v45 = (*(**(a1 + 112) + 40))(*(a1 + 112), v293, v286);
  m = v295;
  v48 = *(v295 + 80);
  v47 = *(v295 + 88);
  if (v48 != v47)
  {
    while (1)
    {
      v49 = *v48;
      v50 = [(WifiScannerSettings *)v45 channels];
      v51 = [NSNumber numberWithInt:v49];
      v52 = [v50 containsObject:v51];

      if (v52)
      {
        break;
      }

      if (++v48 == v47)
      {
        v48 = v47;
LABEL_133:
        m = v295;
        goto LABEL_134;
      }
    }

    if (v48 == v47)
    {
      goto LABEL_133;
    }

    v85 = v48 + 1;
    for (m = v295; v85 != v47; ++v85)
    {
      v86 = *v85;
      v87 = [(WifiScannerSettings *)v45 channels];
      v88 = [NSNumber numberWithInt:v86];
      v89 = [v87 containsObject:v88];

      if ((v89 & 1) == 0)
      {
        *v48++ = *v85;
      }

      m = v295;
    }
  }

LABEL_134:
  if (v48 != *(m + 88))
  {
    *(v295 + 88) = v48;
  }

  v84 = v45;
LABEL_137:
  v90 = [(WifiScannerSettings *)v84 channels];
  v91 = [v90 copy];
  v92 = *(v295 + 56);
  *(v295 + 56) = v91;

  v93 = *(v295 + 8);
  if (v93)
  {
    if (v93 != 1)
    {
      goto LABEL_145;
    }

    goto LABEL_139;
  }

  if (!(*(**(v295 + 112) + 16))(*(v295 + 112)))
  {
    if (*(v295 + 8) != 1)
    {
      goto LABEL_145;
    }

LABEL_139:
    if (*(v295 + 80) == *(v295 + 88))
    {
      goto LABEL_143;
    }

    goto LABEL_145;
  }

  *(v295 + 8) = 1;
  if (*(v295 + 80) == *(v295 + 88))
  {
LABEL_143:
    *(v295 + 8) = 2;
  }

LABEL_145:
  v94 = v84;

  return v84;
}

void sub_1002F93C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  sub_1001F9AF8(&a61);

  _Unwind_Resume(a1);
}

void **sub_1002F9538(void **a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    if (*(v1 + 16) == 1)
    {
      v4 = v2[4];
      if (v4)
      {
        v2[5] = v4;
        v5 = v2;
        operator delete(v4);
        v2 = v5;
      }
    }

    operator delete(v2);
    return v3;
  }

  return v1;
}

id sub_1002F95A0(uint64_t a1)
{
  v2 = objc_alloc_init(NSMutableArray);
  for (i = *(a1 + 16); i; i = *i)
  {
    v4 = [NSNumber numberWithInt:*(i + 4)];
    [v2 addObject:v4];
  }

  return v2;
}

uint64_t *sub_1002F9648(void *a1, int *a2, _DWORD *a3)
{
  v3 = *a2;
  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_23;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = *a2;
    if (*&v4 <= v3)
    {
      v6 = v3 % *&v4;
    }
  }

  else
  {
    v6 = (*&v4 - 1) & v3;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_23:
    operator new();
  }

  if (v5.u32[0] < 2uLL)
  {
    while (1)
    {
      v10 = v8[1];
      if (v10 == v3)
      {
        if (*(v8 + 4) == v3)
        {
          return v8;
        }
      }

      else if ((v10 & (*&v4 - 1)) != v6)
      {
        goto LABEL_23;
      }

      v8 = *v8;
      if (!v8)
      {
        goto LABEL_23;
      }
    }
  }

  while (1)
  {
    v9 = v8[1];
    if (v9 == v3)
    {
      break;
    }

    if (v9 >= *&v4)
    {
      v9 %= *&v4;
    }

    if (v9 != v6)
    {
      goto LABEL_23;
    }

LABEL_12:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_23;
    }
  }

  if (*(v8 + 4) != v3)
  {
    goto LABEL_12;
  }

  return v8;
}

uint64_t sub_1002F997C(double *a1, double *a2, uint64_t *a3, uint64_t *a4)
{
  v8 = *a4;
  v9 = *(*a4 + 144);
  v10 = *a2;
  v11 = 1000000 * *(*a4 + 136) + 50000000;
  v12 = v11 + *a2;
  v13 = 1000000 * v9;
  v14 = *a1;
  v15 = *a1 + v11;
  if (v12 < 1000000 * v9 && v15 < v13)
  {
    v31 = *(v8 + 152);
    v20 = v9 * 1000000.0;
    v32 = v12 / v20;
    if (v31)
    {
      v33 = *(v8 + 152);
      v34 = v32 * (1.0 - exp(-a2[1]));
      v35 = exp(-a1[1]);
      v31 = v33;
      v36 = v15 / v20 * (1.0 - v35);
      v37 = v34 == v36;
      if (v34 <= v36)
      {
LABEL_26:
        if (!v37)
        {
          v17 = *a3;
          v58 = *a3 + v11;
          goto LABEL_50;
        }

        v17 = *a3;
        v58 = *a3 + v11;
        if (*(a1 + 6) <= *(a2 + 6))
        {
LABEL_50:
          if (v58 >= v13)
          {
            goto LABEL_55;
          }

          v27 = v58 / v20;
          if (v31)
          {
            goto LABEL_22;
          }

LABEL_52:
          v59 = v12 / v20;
          v30 = v27 == v59;
          if (v27 > v59)
          {
            goto LABEL_58;
          }

LABEL_53:
          if (!v30)
          {
            return 0;
          }

LABEL_57:
          if (*(a2 + 6) > *(a3 + 6))
          {
            goto LABEL_58;
          }

          return 0;
        }

        if (v58 >= v13)
        {
          goto LABEL_36;
        }

LABEL_30:
        v21 = v58 / v20;
        if (v31)
        {
LABEL_12:
          v22 = v21 * (1.0 - exp(-*(a3 + 1)));
          v23 = v12 / v20 * (1.0 - exp(-a2[1]));
          v24 = v22 == v23;
          if (v22 > v23)
          {
            goto LABEL_39;
          }

          goto LABEL_32;
        }

LABEL_31:
        v38 = v12 / v20;
        v24 = v21 == v38;
        if (v21 > v38)
        {
          goto LABEL_39;
        }

LABEL_32:
        if (!v24)
        {
          goto LABEL_40;
        }

        goto LABEL_38;
      }
    }

    else
    {
      v39 = v15 / v20;
      v37 = v32 == v39;
      if (v32 <= v39)
      {
        goto LABEL_26;
      }
    }

    v17 = *a3;
    v58 = *a3 + v11;
    if (v58 >= v13)
    {
      goto LABEL_36;
    }

    goto LABEL_30;
  }

  if (v14 < v10 || v10 == v14 && *(a1 + 6) > *(a2 + 6))
  {
    v17 = *a3;
    v18 = *a3 + v11;
    if (v12 >= v13 || v18 >= v13)
    {
LABEL_36:
      if (v10 >= v17)
      {
        if (v17 != v10)
        {
          goto LABEL_40;
        }

LABEL_38:
        if (*(a2 + 6) > *(a3 + 6))
        {
          goto LABEL_39;
        }

LABEL_40:
        v44 = *a1;
        v43 = *(a1 + 1);
        v45 = *(a2 + 1);
        *a1 = *a2;
        *(a1 + 1) = v45;
        *a2 = v44;
        *(a2 + 1) = v43;
        v46 = *(*a4 + 144);
        v47 = *a3;
        v48 = 1000000 * *(*a4 + 136) + 50000000;
        v49 = v48 + *a3;
        v50 = *a2;
        v51 = *a2 + v48;
        if (v49 >= 1000000 * v46 || v51 >= 1000000 * v46)
        {
          if (v50 >= v47)
          {
            if (v47 != v50)
            {
              return 1;
            }

LABEL_77:
            if (*(a2 + 6) <= *(a3 + 6))
            {
              return 1;
            }
          }

LABEL_78:
          v41 = *a2;
          v40 = *(a2 + 1);
          v81 = *(a3 + 1);
          *a2 = *a3;
          *(a2 + 1) = v81;
          goto LABEL_79;
        }

        v53 = v46 * 1000000.0;
        v54 = v49 / v53;
        if (*(*a4 + 152))
        {
          v55 = v54 * (1.0 - exp(-*(a3 + 1)));
          v56 = v51 / v53 * (1.0 - exp(-a2[1]));
          v57 = v55 == v56;
          if (v55 > v56)
          {
            goto LABEL_78;
          }
        }

        else
        {
          v80 = v51 / v53;
          v57 = v54 == v80;
          if (v54 > v80)
          {
            goto LABEL_78;
          }
        }

        if (!v57)
        {
          return 1;
        }

        goto LABEL_77;
      }

LABEL_39:
      v41 = *a1;
      v40 = *(a1 + 1);
      v42 = *(a3 + 1);
      *a1 = *a3;
      *(a1 + 1) = v42;
LABEL_79:
      *a3 = v41;
      *(a3 + 1) = v40;
      return 1;
    }

    v20 = v9 * 1000000.0;
    v21 = v18 / v20;
    if (*(v8 + 152))
    {
      goto LABEL_12;
    }

    goto LABEL_31;
  }

  v17 = *a3;
  v25 = *a3 + v11;
  if (v12 >= v13 || v25 >= v13)
  {
LABEL_55:
    if (v10 < v17)
    {
      goto LABEL_58;
    }

    if (v17 != v10)
    {
      return 0;
    }

    goto LABEL_57;
  }

  v20 = v9 * 1000000.0;
  v27 = v25 / v20;
  if ((*(v8 + 152) & 1) == 0)
  {
    goto LABEL_52;
  }

LABEL_22:
  v28 = v27 * (1.0 - exp(-*(a3 + 1)));
  v29 = v12 / v20 * (1.0 - exp(-a2[1]));
  v30 = v28 == v29;
  if (v28 <= v29)
  {
    goto LABEL_53;
  }

LABEL_58:
  v61 = *a2;
  v60 = *(a2 + 1);
  v62 = *(a3 + 1);
  *a2 = *a3;
  *(a2 + 1) = v62;
  *a3 = v61;
  *(a3 + 1) = v60;
  v63 = *(*a4 + 144);
  v64 = *a2;
  v65 = 1000000 * *(*a4 + 136) + 50000000;
  v66 = v65 + *a2;
  v67 = *a1;
  v68 = *a1 + v65;
  if (v66 < 1000000 * v63 && v68 < 1000000 * v63)
  {
    v71 = v63 * 1000000.0;
    v72 = v66 / v71;
    if (*(*a4 + 152))
    {
      v73 = v72 * (1.0 - exp(-a2[1]));
      v74 = v68 / v71 * (1.0 - exp(-a1[1]));
      v75 = v73 == v74;
      if (v73 > v74)
      {
        goto LABEL_73;
      }
    }

    else
    {
      v76 = v68 / v71;
      v75 = v72 == v76;
      if (v72 > v76)
      {
        goto LABEL_73;
      }
    }

    if (!v75)
    {
      return 1;
    }

    goto LABEL_72;
  }

  if (v67 < v64)
  {
LABEL_73:
    v78 = *a1;
    v77 = *(a1 + 1);
    v79 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 1) = v79;
    *a2 = v78;
    *(a2 + 1) = v77;
    return 1;
  }

  if (v64 != v67)
  {
    return 1;
  }

LABEL_72:
  if (*(a1 + 6) > *(a2 + 6))
  {
    goto LABEL_73;
  }

  return 1;
}

void sub_1002F9E80()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_1002F9EF0()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void sub_1002F9F60()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

void sub_1002F9F88(uint64_t a1, uint64_t a2, char a3, char a4, char a5, char a6, float a8)
{
  v13 = a1;
  v12 = a8;
  v11 = a3;
  v10 = a4;
  v9 = a5;
  v8 = a6;
  operator new();
}

void sub_1002FA044(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_1002FA07C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_100448590;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1002FA0F8(uint64_t a1, uint64_t a2, uint64_t *a3, float *a4, void *a5, char *a6, char *a7, char *a8, char *a9)
{
  v9 = *a3;
  v10 = *a4;
  v13 = 0;
  v14 = 0;
  __p = 0;
  v11 = a5[1];
  if (v11 != *a5)
  {
    if (((v11 - *a5) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_10000FC84();
  }

  sub_1002FA1F8(a2, v9, &__p, *a6, *a7, *a8, *a9, v10);
  if (__p)
  {
    v13 = __p;
    operator delete(__p);
  }
}

void sub_1002FA1DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1002FA1F8(uint64_t a1, uint64_t a2, void *a3, char a4, char a5, char a6, char a7, float a8)
{
  *a1 = off_1004485E0;
  *(a1 + 8) = a2;
  *(a1 + 24) = 0;
  *(a1 + 16) = a8;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v8 = a3[1];
  if (v8 != *a3)
  {
    if (((v8 - *a3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_10000FC84();
  }

  *(a1 + 48) = a4;
  *(a1 + 49) = a5;
  *(a1 + 50) = a6;
  *(a1 + 51) = a7;
  *(a1 + 56) = 0;
  if (a2 > 0x10000)
  {
    sub_100014A08(v10, "");
    sub_10017FD24(&__p, "Dwell requested is too long");
    sub_1000E661C(v10, &__p, 1);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v11 < 0)
    {
      operator delete(v10[0]);
    }

    sub_10003F5D0(&v9);
  }

  return a1;
}

void sub_1002FA388(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  v23 = *v21;
  if (*v21)
  {
    *(v20 + 32) = v23;
    operator delete(v23);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1002FA3D8(void *result)
{
  *result = off_1004485E0;
  v1 = result[3];
  if (v1)
  {
    result[4] = v1;
    v2 = result;
    operator delete(v1);
    return v2;
  }

  return result;
}

void sub_1002FA430(void *a1)
{
  *a1 = off_1004485E0;
  v2 = a1[3];
  if (v2)
  {
    a1[4] = v2;
    operator delete(v2);
    v1 = vars8;
  }

  operator delete();
}

WifiScannerSettings *sub_1002FA4C8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (*(a1 + 48) == 1)
  {
    v5 = [[NSMutableArray alloc] initWithCapacity:(*(a1 + 32) - *(a1 + 24)) >> 2];
    v6 = *(a1 + 24);
    for (i = *(a1 + 32); v6 != i; ++v6)
    {
      v8 = [NSNumber numberWithInt:*v6];
      [v5 addObject:v8];
    }
  }

  else
  {
    v9 = *(a1 + 24);
    if (v9 == *(a1 + 32))
    {
      v5 = 0;
    }

    else
    {
      v10 = [NSNumber numberWithInt:*(v9 + 4 * *(a1 + 56))];
      v20 = v10;
      v5 = [NSArray arrayWithObjects:&v20 count:1];

      *(a1 + 56) = (*(a1 + 56) + 1) % ((*(a1 + 32) - *(a1 + 24)) >> 2);
    }
  }

  v11 = *(a1 + 49);
  v12 = [WifiScannerSettings alloc];
  if (v11)
  {
    v14 = 1;
  }

  else
  {
    v14 = 2;
  }

  v15 = *(a1 + 8);
  v16 = *(a1 + 50);
  v17 = atomic_load((a1 + 16));
  LODWORD(v13) = v17;
  LOBYTE(v17) = atomic_load((a1 + 51));
  v18 = [(WifiScannerSettings *)v12 initWithChannels:v5 dwell:v15 scanType:v14 includingOffChannelResults:v16 atDutyCycle:v17 & 1 asLowPriority:v13];

  return v18;
}

void sub_1002FA6D4()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_1002FA744()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void sub_1002FA7B4()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

uint64_t *sub_1002FA7DC(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_1002FB024(v2);
    operator delete();
  }

  return a1;
}

uint64_t sub_1002FA8C8(uint64_t a1)
{
  *a1 = 1;
  *(a1 + 8) = 30000;
  *(a1 + 16) = 1065353216;
  *(a1 + 20) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  sub_100142E78(a1 + 40);
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  v2 = sub_1003012EC((a1 + 152));
  v8 = 0;
  if (sub_1002C2A18(v2, v3))
  {
    v6 = sub_1000DD690();
    v7 = v4;
    *(a1 + 120) = sub_100008F80(&v6, &v8) & 1;
  }

  else
  {
    *(a1 + 120) = 0;
  }

  return a1;
}

void sub_1002FA988(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1002FA94CLL);
}

void sub_1002FA99C(_Unwind_Exception *a1)
{
  sub_1002FBEDC(v3);
  sub_100149854((v1 + 40));
  sub_10002BB1C(v2);
  _Unwind_Resume(a1);
}

void sub_1002FA9F4(uint64_t a1, uint64_t a2)
{
  *(a1 + 20) = a2;
  sub_100008150(a1, &v4);
  (*(*v4 + 24))(v4, a2);
  v3 = v5;
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);

    std::__shared_weak_count::__release_weak(v3);
  }
}

void sub_1002FAACC(uint64_t a1, uint64_t a2)
{
  sub_10014AA58(a1 + 40, a2);
  v3 = *(a1 + 72);
  if (v3 <= 2)
  {
    *(a1 + 20) = 0x10100u >> (8 * v3);
  }

  v4 = *(a1 + 88);
  if (v4)
  {
    if ((v4 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_10000FC84();
  }

  __p = 0;
  v6 = 0;
  v7 = 0;
  sub_1003012F0(a1 + 152, &__p);
  if (__p)
  {
    v6 = __p;
    operator delete(__p);
  }

  sub_100008DCC(a1);
}

void sub_1002FACFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (v11)
  {
    operator delete(v11);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002FAD40(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(byte_10045D4B0, memory_order_acquire) & 1) == 0)
  {
    v2 = a1;
    v3 = a2;
    sub_100387198();
    a1 = v2;
    a2 = v3;
  }

  v5[0] = 0;
  v5[1] = v5;
  v5[2] = 0x3802000000;
  v5[3] = sub_1002FBF6C;
  v5[4] = nullsub_205;
  v5[5] = a1;
  v5[6] = a2;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 0x40000000;
  v4[2] = sub_1002FBF7C;
  v4[3] = &unk_100448788;
  v4[4] = v5;
  sub_10000AE28(&qword_10045D4A8, v4);
  _Block_object_dispose(v5, 8);
}

uint64_t sub_1002FAE24(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v4 = 0;
  if ((atomic_load_explicit(byte_10045D4B0, memory_order_acquire) & 1) == 0)
  {
    v3 = a1;
    sub_100387198();
    a1 = v3;
  }

  v7[0] = 0;
  v7[1] = v7;
  v7[2] = 0x4002000000;
  v7[3] = sub_1002FBF90;
  v7[4] = nullsub_206;
  v7[5] = a1;
  v7[6] = &v5;
  v7[7] = &v4;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 0x40000000;
  v6[2] = sub_1002FBFA8;
  v6[3] = &unk_1004487B0;
  v6[4] = v7;
  sub_10000AE28(&qword_10045D4A8, v6);
  _Block_object_dispose(v7, 8);
  return v4;
}

uint64_t sub_1002FAF1C(uint64_t a1)
{
  if (*(a1 + 88) == 1)
  {
    v2 = *(a1 + 112);
    if (v2)
    {
      *(a1 + 120) = v2;
      operator delete(v2);
    }

    *(a1 + 88) = 0;
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    *(a1 + 48) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    *(a1 + 24) = v4;
    operator delete(v4);
  }

  return a1;
}

void *sub_1002FAF80(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    a1[4] = v2;
    operator delete(v2);
  }

  sub_1002FAFC0(a1, a1[1]);
  return a1;
}

void sub_1002FAFC0(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_1002FAFC0(a1, *a2);
    sub_1002FAFC0(a1, a2[1]);
    v4 = a2[5];
    if (v4)
    {
      a2[6] = v4;
      operator delete(v4);
    }

    operator delete(a2);
  }
}

uint64_t sub_1002FB024(uint64_t a1)
{
  v2 = *(a1 + 176);
  if (v2)
  {
    *(a1 + 184) = v2;
    operator delete(v2);
  }

  sub_1002FAFC0(a1 + 152, *(a1 + 160));
  v3 = *(a1 + 128);
  if (v3)
  {
    v4 = *(a1 + 136);
    v5 = *(a1 + 128);
    if (v4 != v3)
    {
      do
      {
        v7 = *--v4;
        v6 = v7;
        *v4 = 0;
        if (v7)
        {
          (*(*v6 + 8))(v6);
        }
      }

      while (v4 != v3);
      v5 = *(a1 + 128);
    }

    *(a1 + 136) = v3;
    operator delete(v5);
  }

  sub_100149854((a1 + 40));
  v8 = *(a1 + 32);
  if (!v8 || atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v8->__on_zero_shared)(v8);
  std::__shared_weak_count::__release_weak(v8);
  return a1;
}

__n128 sub_1002FB134(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

float sub_1002FB174(_DWORD *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = (a1 + 2);
  v5 = v4 ^ (v4 >> 31);
  if (v5 <= 2)
  {
    if (!v5)
    {

      sub_1002FB258();
    }

    if (v5 == 1)
    {
      return *v3;
    }

    else
    {
      return *v3;
    }
  }

  else
  {
    if (v5 > 4)
    {
      if (v5 == 5)
      {

        sub_1002FBBD4();
      }

      sub_1002FBD58();
    }

    if (v5 == 3)
    {

      return sub_1002FB3DC(a2, v3);
    }

    else
    {
      v7 = *v3;
      sub_1002FBB2C(*v3);
      return v7;
    }
  }
}

void sub_1002FB33C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, std::runtime_error a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::runtime_error::~runtime_error(&a18);
  if (a17 < 0)
  {
    operator delete(a12);
  }

  _Unwind_Resume(a1);
}

void sub_1002FB3A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
    __cxa_free_exception(v17);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x1002FB394);
}

float sub_1002FB3DC(uint64_t a1, uint64_t a2)
{
  v9 = 0.0;
  v2 = *(a2 + 23);
  if (v2 >= 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = *a2;
  }

  if (v2 < 0)
  {
    v2 = *(a2 + 8);
  }

  v10.__vftable = v3;
  v11 = (v3 + v2);
  if (!sub_1002FB73C(v3, v3 + v2, &v9, "NAN", "nan", "INFINITY", "infinity", 0x28u, 0x29u))
  {
    if (!sub_1002FB4F8(&v10, &v9) || ((v4 = *(v11 - 1) - 43, v5 = v4 > 0x3A, v6 = (1 << v4) & 0x400000004000005, !v5) ? (v7 = v6 == 0) : (v7 = 1), !v7))
    {
      std::bad_cast::bad_cast(&v10);
      v10.__vftable = &off_100434090;
      sub_100049F88(&v10);
    }
  }

  return v9;
}

BOOL sub_1002FB4F8(std::locale::__imp **a1, uint64_t a2)
{
  std::locale::locale(v15);
  memset(&v15[4], 0, 24);
  v3 = *a1;
  v4 = a1[1];
  __sb = off_1004486E0;
  v15[1].__locale_ = v3;
  v15[2].__locale_ = v3;
  v15[3].__locale_ = v4;
  v11.__loc_ = 0;
  v10[1] = 0;
  std::ios_base::init(&v11, &__sb);
  v12 = 0;
  v13 = -1;
  v5->__exceptions_ = 1;
  std::ios_base::clear(v5, v5->__rdstate_);
  v6 = v10[0];
  *(&v10[1] + *(v10[0] - 24)) &= ~0x1000u;
  *(&v10[2] + *(v6 - 24)) = 9;
  v7 = std::istream::operator>>();
  v8 = (*(v7 + *(*v7 - 24) + 32) & 5) == 0 && std::istream::get() == -1;
  std::istream::~istream();
  std::locale::~locale(v15);
  return v8;
}

void sub_1002FB6DC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  std::istream::~istream();
  *(v4 - 112) = v2;
  std::locale::~locale(v3 + 1);
  _Unwind_Resume(a1);
}

void sub_1002FB6FC(_Unwind_Exception *a1)
{
  std::ios::~ios();
  *(v3 - 112) = v1;
  std::locale::~locale(v2 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_1002FB73C(unsigned __int8 *a1, unsigned __int8 *a2, float *a3, unsigned __int8 *a4, unsigned __int8 *a5, unsigned __int8 *a6, unsigned __int8 *a7, unsigned __int8 a8, unsigned __int8 a9)
{
  if (a1 == a2)
  {
    return 0;
  }

  v9 = *a1;
  v10 = v9 == 45 || v9 == 43;
  v11 = v10 ? a1 + 1 : a1;
  v12 = (a2 - v11);
  if (a2 - v11 < 3)
  {
    return 0;
  }

  v14 = *v11;
  if (v14 == *a5 || v14 == *a4)
  {
    v15 = v11[1];
    if (v15 == a5[1] || v15 == a4[1])
    {
      v16 = v11[2];
      if (v16 == a5[2] || v16 == a4[2])
      {
        v17 = v11 + 3;
        if (v17 == a2 || a2 - v17 >= 2 && *v17 == a8 && *(a2 - 1) == a9)
        {
          v18 = NAN;
          if (v9 == 45)
          {
            v18 = NAN;
          }

          *a3 = v18;
          return 1;
        }

        return 0;
      }
    }
  }

  if (v12 == 3)
  {
    if (v14 != *a7 && v14 != *a6)
    {
      return 0;
    }

    v26 = v11[1];
    if (v26 != a7[1] && v26 != a6[1])
    {
      return 0;
    }

    v27 = v11[2];
    if (v27 != a7[2] && v27 != a6[2])
    {
      return 0;
    }
  }

  else
  {
    if (v12 != 8 || v14 != *a7 && v14 != *a6)
    {
      return 0;
    }

    v19 = v11[1];
    if (v19 != a7[1] && v19 != a6[1])
    {
      return 0;
    }

    v20 = v11[2];
    if (v20 != a7[2] && v20 != a6[2])
    {
      return 0;
    }

    v21 = v11[3];
    if (v21 != a7[3] && v21 != a6[3])
    {
      return 0;
    }

    v22 = v11[4];
    if (v22 != a7[4] && v22 != a6[4])
    {
      return 0;
    }

    v23 = v11[5];
    if (v23 != a7[5] && v23 != a6[5])
    {
      return 0;
    }

    v24 = v11[6];
    if (v24 != a7[6] && v24 != a6[6])
    {
      return 0;
    }

    v25 = v11[7];
    if (v25 != a7[7] && v25 != a6[7])
    {
      return 0;
    }
  }

  v28 = INFINITY;
  if (v9 == 45)
  {
    v28 = -INFINITY;
  }

  *a3 = v28;
  return 1;
}

void *sub_1002FB97C(void *result, uint64_t a2, uint64_t a3)
{
  result[2] = a2;
  result[3] = a2;
  result[4] = a2 + a3;
  return result;
}

std::locale *sub_1002FB98C(std::locale *a1)
{
  std::locale::~locale(a1 + 1);
  return a1;
}

void sub_1002FB9D0(std::locale *a1)
{
  std::locale::~locale(a1 + 1);

  operator delete();
}

double sub_1002FBA34@<D0>(void *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, char a4@<W3>, uint64_t a5@<X8>)
{
  if ((a4 & 0x10) != 0)
  {
    v7 = -1;
    goto LABEL_19;
  }

  v5 = a1[2];
  v6 = a1[4] - v5;
  if (!a3)
  {
    v7 = -1;
    if (a2 < 0 || v6 < a2)
    {
      goto LABEL_19;
    }

    v9 = v5 + a2;
LABEL_15:
    v8 = a1[4];
    goto LABEL_16;
  }

  if (a3 == 1)
  {
    v7 = -1;
    v10 = a1[3] - v5 + a2;
    if (v10 < 0 || v10 > v6)
    {
      goto LABEL_19;
    }

    v9 = a1[3] + a2;
    goto LABEL_15;
  }

  if (a3 != 2)
  {
    v9 = a1[3];
    goto LABEL_18;
  }

  v7 = -1;
  if ((a2 & 0x8000000000000000) == 0 && v6 >= a2)
  {
    v8 = a1[4];
    v9 = v8 - a2;
LABEL_16:
    a1[3] = v9;
    a1[4] = v8;
LABEL_18:
    v7 = v9 - v5;
  }

LABEL_19:
  result = 0.0;
  *(a5 + 96) = 0u;
  *(a5 + 112) = 0u;
  *(a5 + 64) = 0u;
  *(a5 + 80) = 0u;
  *(a5 + 32) = 0u;
  *(a5 + 48) = 0u;
  *a5 = 0u;
  *(a5 + 16) = 0u;
  *(a5 + 128) = v7;
  return result;
}

double sub_1002FBAE4@<D0>(void *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  if ((a3 & 0x10) == 0)
  {
    v4 = a1[2];
    v5 = *(a2 + 128);
    if (v5 <= a1[4] - v4)
    {
      v6 = v4 + v5;
      v7 = a1[4];
      a1[3] = v6;
      a1[4] = v7;
    }
  }

  result = 0.0;
  *(a4 + 96) = 0u;
  *(a4 + 112) = 0u;
  *(a4 + 64) = 0u;
  *(a4 + 80) = 0u;
  *(a4 + 32) = 0u;
  *(a4 + 48) = 0u;
  *a4 = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 128) = -1;
  return result;
}

void sub_1002FBB2C(double a1)
{
  v1 = 2 * (a1 > 3.40282347e38);
  if (a1 < -3.40282347e38)
  {
    v1 = 1;
  }

  if (v1 == 2)
  {
    exception = __cxa_allocate_exception(8uLL);
    exception->__vftable = 0;
    v3 = sub_1000D8810(exception);
  }

  if (v1 == 1)
  {
    v4 = __cxa_allocate_exception(8uLL);
    v4->__vftable = 0;
    v5 = sub_1000D87D8(v4);
  }
}

void sub_1002FBCB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, std::runtime_error a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::runtime_error::~runtime_error(&a18);
  if (a17 < 0)
  {
    operator delete(a12);
  }

  _Unwind_Resume(a1);
}

void sub_1002FBD20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
    __cxa_free_exception(v17);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x1002FBD10);
}

void sub_1002FBE3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, std::runtime_error a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::runtime_error::~runtime_error(&a18);
  if (a17 < 0)
  {
    operator delete(a12);
  }

  _Unwind_Resume(a1);
}

void sub_1002FBEA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
    __cxa_free_exception(v17);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x1002FBE94);
}

void *sub_1002FBEDC(void *a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v6 = *--v3;
        v5 = v6;
        *v3 = 0;
        if (v6)
        {
          (*(*v5 + 8))(v5);
        }
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

__n128 sub_1002FBF6C(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

__n128 sub_1002FBF90(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = result;
  return result;
}

void *sub_1002FBFA8(void *result)
{
  v1 = *(result[4] + 8);
  v2 = *(v1 + 40);
  v3 = *(v2 + 128);
  v4 = *(v2 + 136);
  if (v3 != v4)
  {
    v5 = *(v1 + 48);
    while (*v3 != *v5)
    {
      if (++v3 == v4)
      {
        **(v1 + 56) = 0;
        return result;
      }
    }

    if (v3 != v4)
    {
      v6 = v3 + 1;
      if (v3 + 1 != v4)
      {
        do
        {
          v7 = *v6;
          if (*v6 != *v5)
          {
            *v6 = 0;
            result = *v3;
            *v3 = v7;
            if (result)
            {
              result = (*(*result + 8))(result);
            }

            ++v3;
          }

          ++v6;
        }

        while (v6 != v4);
        v4 = *(v2 + 136);
      }
    }
  }

  **(v1 + 56) = v3 != v4;
  if (v3 != v4)
  {
    while (v4 != v3)
    {
      v8 = *--v4;
      result = v8;
      *v4 = 0;
      if (v8)
      {
        result = (*(*result + 8))(result);
      }
    }

    *(v2 + 136) = v3;
  }

  return result;
}

uint64_t sub_1002FC150(uint64_t a1, uint64_t a2, void *a3)
{

  return __cxa_atexit(sub_10031E47C, v3, a3);
}

void sub_1002FC174()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_1002FC1E4()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void sub_1002FC278(uint64_t a1, uint64_t a2)
{
  *a1 = off_1004487E0;
  v3 = sub_100007FA8(a1, a2);
  *(a1 + 8) = v3;
  *(a1 + 16) = 0;
  v4 = sub_1002491F0(v3);
  sub_1002FCBD4(a1 + 32, *(v4 + 60));
}

void sub_1002FC2E8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  if (*a2 && (*v2 ^ (*v2 >> 31)) == 0xE)
  {
    v3 = *(v2 + 8);
    if (*(*(v2 + 16) + 48) == 1)
    {
      sub_1002FC31C(result, v3);
    }

    else
    {
      sub_1002FC70C(result, v3);
    }
  }
}

void sub_1002FC31C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  v4->i64[0] |= 1 << v5;
  if (v5 == 63)
  {
    v6 = 0;
    v4 = (v4 + 8);
    *(a1 + 56) = v4;
  }

  else
  {
    v6 = v5 + 1;
  }

  *(a1 + 64) = v6;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  if (v4 == (v8 + 8 * (v7 >> 6)) && v6 == (v7 & 0x3F))
  {
    *(a1 + 56) = v8;
    *(a1 + 64) = 0;
  }

  v10 = v7 - 64;
  if (v7 < 0x40)
  {
    v11 = 0;
    v12 = v8;
    goto LABEL_18;
  }

  if (v10 < 0xC0)
  {
    v11 = 0;
    v12 = v8;
    do
    {
LABEL_17:
      v18 = *v12++;
      v19 = vcnt_s8(v18);
      v19.i16[0] = vaddlv_u8(v19);
      v11 += v19.u32[0];
      v7 -= 64;
    }

    while (v7 > 0x3F);
    goto LABEL_18;
  }

  v13 = (v10 >> 6) + 1;
  v12 = v8 + (v13 & 0x7FFFFFFFFFFFFFCLL);
  v7 -= (v13 & 0x7FFFFFFFFFFFFFCLL) << 6;
  v14 = v8 + 1;
  v15 = 0uLL;
  v16 = v13 & 0x7FFFFFFFFFFFFFCLL;
  v17 = 0uLL;
  do
  {
    v15 = vpadalq_u32(v15, vpaddlq_u16(vpaddlq_u8(vcntq_s8(v14[-1]))));
    v17 = vpadalq_u32(v17, vpaddlq_u16(vpaddlq_u8(vcntq_s8(*v14))));
    v14 += 2;
    v16 -= 4;
  }

  while (v16);
  v11 = vaddvq_s64(vaddq_s64(v17, v15));
  if (v13 != (v13 & 0x7FFFFFFFFFFFFFCLL))
  {
    goto LABEL_17;
  }

LABEL_18:
  if (v7)
  {
    v20 = vcnt_s8((*v12 & (0xFFFFFFFFFFFFFFFFLL >> -v7)));
    v20.i16[0] = vaddlv_u8(v20);
    v11 += v20.u32[0];
  }

  if (qword_10045B050 != -1)
  {
    sub_100387230();
  }

  v21 = qword_10045B058;
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    if (sub_1002FA9EC(*(a1 + 8)))
    {
      v22 = &__p[3];
      qmemcpy(__p, "LOW", 3);
      v23 = 3;
    }

    else
    {
      v22 = &__p[4];
      *__p = 1212631368;
      v23 = 4;
    }

    *v22 = 0;
    v31 = v23;
    *buf = 136315394;
    v33 = __p;
    v34 = 2048;
    v35 = v11 & ~(v11 >> 63);
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "Wifi Scan error. Priority %s. Num rejected scans in window: %llu", buf, 0x16u);
    if (v31 < 0)
    {
      operator delete(*__p);
    }
  }

  v24 = sub_1002491F0(*(a1 + 8));
  if (*(v24 + 32) == 2)
  {
    if (sub_1002FA9EC(*(a1 + 8)))
    {
      if (v11 <= *(v24 + 64))
      {
        if (qword_10045B050 != -1)
        {
          sub_100387244();
        }

        v29 = qword_10045B058;
        if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
        {
          *__p = 134217984;
          *&__p[4] = v11 & ~(v11 >> 63);
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEBUG, "Wifi Scan failed but still allowing roaming. Num rejected scans in window: %llu", __p, 0xCu);
        }
      }

      else
      {
        if (qword_10045B050 != -1)
        {
          sub_100387244();
        }

        v25 = qword_10045B058;
        if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
        {
          *__p = 0;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "Wifi Scan failed and roaming has been allowed long enough. Switching to high priority scans", __p, 2u);
        }

        v26 = *(a1 + 32);
        v27 = *(a1 + 40);
        if (v27 >= 1)
        {
          v28 = v27 >> 6;
          if (v27 >= 0x40)
          {
            bzero(*(a1 + 32), 8 * v28);
          }

          if ((v27 & 0x3F) != 0)
          {
            *(v26 + 8 * v28) &= ~(0xFFFFFFFFFFFFFFFFLL >> -(v27 & 0x3F));
          }
        }

        *(a1 + 56) = v26;
        *(a1 + 64) = 0;
        if ((*(a1 + 16) & 1) == 0)
        {
          *(a1 + 16) = 1;
        }

        *(a1 + 24) = a2;
        sub_1002FA9F4(*(a1 + 8), 0);
      }
    }

    else
    {
      sub_1002FCA3C(a1, a2);
    }
  }
}

void sub_1002FC70C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1002491F0(*(a1 + 8));
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  *v5 &= ~(1 << v6);
  if (v6 == 63)
  {
    v7 = 0;
    *(a1 + 56) = ++v5;
  }

  else
  {
    v7 = v6 + 1;
  }

  *(a1 + 64) = v7;
  v8 = *(a1 + 32);
  if (v5 == (v8 + 8 * (*(a1 + 40) >> 6)) && v7 == (*(a1 + 40) & 0x3F))
  {
    *(a1 + 56) = v8;
    *(a1 + 64) = 0;
  }

  if (qword_10045B050 != -1)
  {
    sub_100387230();
  }

  v10 = qword_10045B058;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    if (sub_1002FA9EC(*(a1 + 8)))
    {
      LODWORD(__p[0]) = 5721932;
      v27 = 3;
      v12 = *(a1 + 32);
      v11 = *(a1 + 40);
      v13 = v11 - 64;
      if (v11 < 0x40)
      {
LABEL_15:
        v14 = 0;
        v15 = v12;
        goto LABEL_23;
      }
    }

    else
    {
      strcpy(__p, "HIGH");
      v27 = 4;
      v12 = *(a1 + 32);
      v11 = *(a1 + 40);
      v13 = v11 - 64;
      if (v11 < 0x40)
      {
        goto LABEL_15;
      }
    }

    if (v13 >= 0xC0)
    {
      v16 = (v13 >> 6) + 1;
      v15 = v12 + (v16 & 0x7FFFFFFFFFFFFFCLL);
      v11 -= (v16 & 0x7FFFFFFFFFFFFFCLL) << 6;
      v17 = v12 + 1;
      v18 = 0uLL;
      v19 = v16 & 0x7FFFFFFFFFFFFFCLL;
      v20 = 0uLL;
      do
      {
        v18 = vpadalq_u32(v18, vpaddlq_u16(vpaddlq_u8(vcntq_s8(v17[-1]))));
        v20 = vpadalq_u32(v20, vpaddlq_u16(vpaddlq_u8(vcntq_s8(*v17))));
        v17 += 2;
        v19 -= 4;
      }

      while (v19);
      v14 = vaddvq_s64(vaddq_s64(v20, v18));
      if (v16 == (v16 & 0x7FFFFFFFFFFFFFCLL))
      {
        goto LABEL_23;
      }
    }

    else
    {
      v14 = 0;
      v15 = v12;
    }

    do
    {
      v21 = *v15++;
      v22 = vcnt_s8(v21);
      v22.i16[0] = vaddlv_u8(v22);
      v14 += v22.u32[0];
      v11 -= 64;
    }

    while (v11 > 0x3F);
LABEL_23:
    if (v11)
    {
      v23 = vcnt_s8((*v15 & (0xFFFFFFFFFFFFFFFFLL >> -v11)));
      v23.i16[0] = vaddlv_u8(v23);
      v14 += v23.u32[0];
    }

    *buf = 136315394;
    v29 = __p;
    v30 = 2048;
    v31 = v14 & ~(v14 >> 63);
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "Wifi Scan success. Priority %s. Num rejected scans in window: %llu", buf, 0x16u);
    if (v27 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v24 = sub_1002FA9EC(*(a1 + 8));
  if (*(v4 + 32) == 2)
  {
    v25 = v24;
  }

  else
  {
    v25 = 1;
  }

  if ((v25 & 1) == 0)
  {
    sub_1002FCA3C(a1, a2);
  }
}

void sub_1002FCA3C(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    sub_1000474A4(buf, "");
    sub_1002FCEC4(v6, "Should have a high priority start timestamp if we're scanning in high priority");
    sub_100382FC4(v6, __p, buf);
    sub_1000BC6D8(__p);
  }

  if (*(sub_1002491F0(*(a1 + 8)) + 56) * 1000000000.0 < (a2 - *(a1 + 24)))
  {
    if (qword_10045B050 != -1)
    {
      sub_100387244();
    }

    v3 = qword_10045B058;
    if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Scanning on High Priority too long -- switching to low priority scans", buf, 2u);
    }

    if (*(a1 + 16) == 1)
    {
      *(a1 + 16) = 0;
    }

    sub_1002FA9F4(*(a1 + 8), 1);
  }
}

void sub_1002FCB90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002FCBD4(uint64_t a1, unint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_10000FC84();
  }

  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  sub_1000474A4(v3, "");
  sub_1002FCF14(&v5, "Atempting to initialize with window size of <=0. Most likely the wifi scan parameters weren't set before constructing this class.");
  sub_1000E661C(v3, &v5, 1);
  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
    if ((v4 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }
  }

  else if ((v4 & 0x80000000) == 0)
  {
    goto LABEL_6;
  }

  operator delete(v3[0]);
LABEL_6:
  sub_10003F5D0(&__p);
}

void sub_1002FCD54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (*v20)
  {
    operator delete(*v20);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1002FCD9C(uint64_t result)
{
  *result = off_1004487E0;
  if (*(result + 32))
  {
    v1 = result;
    operator delete(*(result + 32));
    result = v1;
  }

  if (*(result + 16) == 1)
  {
    *(result + 16) = 0;
  }

  return result;
}

void sub_1002FCE00(uint64_t a1)
{
  *a1 = off_1004487E0;
  if (*(a1 + 32))
  {
    v2 = a1;
    operator delete(*(a1 + 32));
    a1 = v2;
    v1 = vars8;
  }

  if (*(a1 + 16) == 1)
  {
    *(a1 + 16) = 0;
  }

  operator delete();
}

void sub_1002FCE80(id a1)
{
  v1 = os_log_create("com.apple.locationd.Pipeline", "Generic");
  v2 = qword_10045B058;
  qword_10045B058 = v1;
}

std::string *sub_1002FCEC4@<X0>(std::string *__return_ptr a1@<X8>, std::string::value_type *__s@<X0>)
{
  *&a1->__r_.__value_.__l.__data_ = 0uLL;
  a1->__r_.__value_.__r.__words[2] = 0;
  return std::string::assign(a1, __s);
}

void sub_1002FCEF8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_1002FCF14@<X0>(std::string *__return_ptr a1@<X8>, std::string::value_type *__s@<X0>)
{
  *&a1->__r_.__value_.__l.__data_ = 0uLL;
  a1->__r_.__value_.__r.__words[2] = 0;
  return std::string::assign(a1, __s);
}

void sub_1002FCF48(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002FCF64()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_1002FCFD4()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void sub_1002FD044()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

id sub_1002FD3FC(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  v5 = *(a2 + 40);
  *(a1 + 32) = result;
  *(a1 + 40) = v5;
  return result;
}

void sub_1002FD5C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a21 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

id sub_1002FD6FC(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  v5 = *(a2 + 40);
  *(a1 + 32) = result;
  *(a1 + 40) = v5;
  return result;
}

void sub_1002FD8B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a21 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002FDA10(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 32), *(a1 + 40));
  v2 = [*(a1 + 48) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_1002FDACC()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_1002FDB3C()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void sub_1002FDBAC()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

void sub_1002FDF74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1002FDFCC(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained onQueueHandleScanTimer];

  objc_autoreleasePoolPop(v2);
}

void sub_1002FE114(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = NewWifiScanner;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

void sub_1002FE2D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, std::future<void> a11, std::promise<void> a12)
{
  std::future<void>::~future(&a11);
  std::promise<void>::~promise(&a12);

  _Unwind_Resume(a1);
}

id sub_1002FE530(uint64_t a1)
{
  result = [*(*(a1 + 32) + 8) sensorPresent];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_1002FE638(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  std::future<void>::~future((v11 - 32));
  std::promise<void>::~promise((v11 - 24));

  _Unwind_Resume(a1);
}

void sub_1002FE758(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  std::future<void>::~future((v11 - 32));
  std::promise<void>::~promise((v11 - 24));

  _Unwind_Resume(a1);
}

void sub_1002FE81C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) onQueueStartScanning];

  objc_autoreleasePoolPop(v2);
}

void sub_1002FE8D4(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) onQueueStopScanning];

  objc_autoreleasePoolPop(v2);
}

void sub_1002FEC24(uint64_t a1, int a2)
{
  v3 = *(*(a1 + 32) + 16);
  v4 = *(a1 + 40);
  v5 = v3;
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x4012000000;
  v15[3] = sub_100300550;
  v15[4] = sub_100300568;
  v15[5] = "";
  v16 = v4;
  v17 = a2;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3812000000;
  v11 = sub_100300570;
  v12 = sub_100300580;
  v13 = "";
  std::promise<void>::promise(&v14);
  std::promise<void>::get_future(v9 + 6);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100300588;
  block[3] = &unk_1004489B8;
  block[4] = v15;
  block[5] = &v8;
  dispatch_async(v5, block);
  _Block_object_dispose(&v8, 8);
  std::promise<void>::~promise(&v14);
  _Block_object_dispose(v15, 8);

  std::future<void>::~future(&v6);
}

void sub_1002FEDAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  std::promise<void>::~promise(v16 + 6);
  _Block_object_dispose((v17 - 96), 8);

  _Unwind_Resume(a1);
}

id sub_1002FEDF0(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = *(a2 + 32);
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

void sub_1002FEE2C(uint64_t a1)
{
  v2 = *(a1 + 32);
}

void sub_1002FEF2C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) onQueueHandleScan:*(a1 + 40) forSettings:*(a1 + 48)];

  objc_autoreleasePoolPop(v2);
}

void sub_1002FF038(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) onQueueHandleScan:*(a1 + 40) forSettings:*(a1 + 48)];

  objc_autoreleasePoolPop(v2);
}

void sub_1002FF148(id *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [a1[4] settings];
  v4 = [v3 lowPriorityScan];

  if (v4)
  {
    if (qword_10045B050 != -1)
    {
      sub_10038726C();
    }

    v5 = qword_10045B058;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [a1[5] code];
      v11 = 67109120;
      v12 = v6;
      v7 = "WARNING: wifi scan failed with %d";
      v8 = v5;
      v9 = OS_LOG_TYPE_INFO;
LABEL_10:
      _os_log_impl(&_mh_execute_header, v8, v9, v7, &v11, 8u);
    }
  }

  else
  {
    if (qword_10045B050 != -1)
    {
      sub_10038726C();
    }

    v5 = qword_10045B058;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v10 = [a1[5] code];
      v11 = 67109120;
      v12 = v10;
      v7 = "wifi scan failed with %d";
      v8 = v5;
      v9 = OS_LOG_TYPE_ERROR;
      goto LABEL_10;
    }
  }

  [a1[6] onQueueHandleScanFailed:a1[5] forSettings:a1[4]];
  objc_autoreleasePoolPop(v2);
}

void sub_10030031C(id a1)
{
  v1 = os_log_create("com.apple.locationd.Pipeline", "Generic");
  v2 = qword_10045B058;
  qword_10045B058 = v1;
}

void sub_10030039C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::exception_ptr a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  __cxa_begin_catch(a1);
  v15 = *(v14 + 40);
  std::current_exception();
  v16.__ptr_ = v17;
  std::promise<void>::set_exception(v15, v16);
  std::exception_ptr::~exception_ptr(v17);
  __cxa_end_catch();
}

void sub_1003003D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::exception_ptr a10)
{
  std::exception_ptr::~exception_ptr(&a10);
  __cxa_end_catch();
  _Unwind_Resume(a1);
}

void sub_1003003F0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = objc_autoreleasePoolPush();
  [*(*v2 + 8) startListeningCachedScans];
  objc_autoreleasePoolPop(v3);
  std::promise<void>::set_value(*(a1 + 40));
}

void sub_100300448(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::exception_ptr a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  __cxa_begin_catch(a1);
  v17 = *(v16 + 40);
  std::current_exception();
  v18.__ptr_ = v19;
  std::promise<void>::set_exception(v17, v18);
  std::exception_ptr::~exception_ptr(v19);
  __cxa_end_catch();
}

void sub_100300484(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::exception_ptr a10)
{
  std::exception_ptr::~exception_ptr(&a10);
  __cxa_end_catch();
  _Unwind_Resume(a1);
}

void sub_1003004A0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = objc_autoreleasePoolPush();
  [*(*v2 + 8) stopListeningCachedScans];
  objc_autoreleasePoolPop(v3);
  std::promise<void>::set_value(*(a1 + 40));
}

void sub_1003004F8(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::exception_ptr a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  __cxa_begin_catch(a1);
  v17 = *(v16 + 40);
  std::current_exception();
  v18.__ptr_ = v19;
  std::promise<void>::set_exception(v17, v18);
  std::exception_ptr::~exception_ptr(v19);
  __cxa_end_catch();
}

void sub_100300534(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::exception_ptr a10)
{
  std::exception_ptr::~exception_ptr(&a10);
  __cxa_end_catch();
  _Unwind_Resume(a1);
}

uint64_t sub_100300550(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(a2 + 48) = 0;
  *(result + 48) = v2;
  *(result + 56) = *(a2 + 56);
  return result;
}

uint64_t sub_100300570(uint64_t result, uint64_t a2)
{
  *(result + 48) = *(a2 + 48);
  *(a2 + 48) = 0;
  return result;
}

void sub_100300588(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  if (objc_opt_respondsToSelector())
  {
    [*(v2 + 48) wifiScanInitiated:*(v2 + 56)];
  }

  std::promise<void>::set_value((*(*(a1 + 40) + 8) + 48));
}

void sub_1003005E8(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::exception_ptr a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  __cxa_begin_catch(a1);
  v15 = *(*(v14 + 40) + 8);
  std::current_exception();
  v16.__ptr_ = v17;
  std::promise<void>::set_exception(v15 + 6, v16);
  std::exception_ptr::~exception_ptr(v17);
  __cxa_end_catch();
}

void sub_100300624(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::exception_ptr a10)
{
  std::exception_ptr::~exception_ptr(&a10);
  __cxa_end_catch();
  _Unwind_Resume(a1);
}

void sub_100300640()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_1003006B0()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void sub_100300720()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

void sub_1003009D4()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

void sub_1003009FC(uint64_t **a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = (a1 + 1);
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  v1 = xmmword_1003DD640;
  *v2 = unk_1003DD650;
  *&v2[12] = unk_1003DD65C;
  operator new();
}

void sub_1003012A0(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 32) = v4;
    operator delete(v4);
  }

  sub_1002FAFC0(v1, *(v1 + 8));
  _Unwind_Resume(a1);
}

void sub_1003012F0(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 24;
  *(a1 + 32) = *(a1 + 24);
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*a2 != v4)
  {
    do
    {
      sub_10000A688(v2, v3++);
    }

    while (v3 != v4);
  }
}

void *sub_100301344(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 2)
  {
    if (v8)
    {
      result[1] = v8;
      v9 = v8;
      v10 = a4;
      operator delete(v9);
      a4 = v10;
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 62))
    {
      v11 = v7 >> 1;
      if (v7 >> 1 <= a4)
      {
        v11 = a4;
      }

      v12 = v7 >= 0x7FFFFFFFFFFFFFFCLL;
      v13 = 0x3FFFFFFFFFFFFFFFLL;
      if (!v12)
      {
        v13 = v11;
      }

      if (!(v13 >> 62))
      {
        operator new();
      }
    }

    sub_10000FC84();
  }

  v14 = result[1];
  v15 = v14 - v8;
  if (a4 > (v14 - v8) >> 2)
  {
    v16 = &__src[v15];
    if (v14 == v8)
    {
      v17 = result[1];
      v18 = v17;
      if (v16 == a3)
      {
        goto LABEL_26;
      }
    }

    else
    {
      result = memmove(*result, __src, v15);
      v17 = v6[1];
      v18 = v17;
      if (v16 == a3)
      {
        goto LABEL_26;
      }
    }

    v21 = &a3[v8] - &__src[v14] - 4;
    if (v21 >= 0x1C)
    {
      v18 = v17;
      if (v8 + v17 - &__src[v14] >= 0x20)
      {
        v22 = (v21 >> 2) + 1;
        v23 = 4 * (v22 & 0x7FFFFFFFFFFFFFF8);
        v16 += v23;
        v18 = (v17 + v23);
        v24 = (v17 + 16);
        v25 = &__src[v14 - v8 + 16];
        v26 = v22 & 0x7FFFFFFFFFFFFFF8;
        do
        {
          v27 = *v25;
          *(v24 - 1) = *(v25 - 1);
          *v24 = v27;
          v24 += 2;
          v25 += 32;
          v26 -= 8;
        }

        while (v26);
        if (v22 == (v22 & 0x7FFFFFFFFFFFFFF8))
        {
          goto LABEL_26;
        }
      }
    }

    else
    {
      v18 = v17;
    }

    do
    {
      v28 = *v16;
      v16 += 4;
      *v18 = v28;
      v18 += 4;
    }

    while (v16 != a3);
LABEL_26:
    v20 = v18;
    goto LABEL_27;
  }

  v19 = a3 - __src;
  if (v19)
  {
    result = memmove(*result, __src, v19);
  }

  v20 = v8 + v19;
LABEL_27:
  v6[1] = v20;
  return result;
}

void sub_100301838(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = BaseWifiScannerBackend;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

void sub_100301944(id a1)
{
  v1 = os_log_create("com.apple.locationd.Pipeline", "Generic");
  v2 = qword_10045B058;
  qword_10045B058 = v1;
}

void sub_100301988()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

uint64_t sub_1003019B0(unsigned int a1)
{
  if (a1 < 5)
  {
    return a1 + 1;
  }

  else
  {
    return 0;
  }
}

id sub_1003019BC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 96));
  v2 = [WeakRetained sensorPresent];

  return v2;
}

void sub_100301A04(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 96));
  [WeakRetained start];
}

void sub_100301A60(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 96));
  [WeakRetained stop];
}

void sub_100301BB0(_Unwind_Exception *a1)
{
  sub_10002BB1C(v1 - 48);
  nullsub_70();
  _Unwind_Resume(a1);
}

void sub_100301BD0(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  nullsub_70();
  _Unwind_Resume(a1);
}

void sub_100301EEC(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_100301FDC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 8);
  v5 = v3;
  v15 = off_10043D9E8;
  v16 = 0u;
  v17 = 0u;
  v20 = 0;
  v18 = off_10043D9C8;
  v19[0] = 0;
  *(v19 + 6) = 0;
  [v5 timestamp];
  sub_1001294D4(&v15, v6);
  [v5 timestamp];
  v8 = sub_10010C70C(v7);
  sub_10012A88C(&v15, v8);
  v9 = [v5 startDate];
  [v9 timeIntervalSince1970];
  sub_1001294E4(&v15, v10);

  v11 = +[NSDate date];
  [v11 timeIntervalSince1970];
  sub_10012A894(&v15, v12);

  *&v14 = 0;
  *(&v14 + 6) = 0;
  sub_100126648(&v13, [v5 confidence]);
  sub_10012A384(&v13, [v5 stationary]);
  sub_10012A38C(&v13, [v5 walking]);
  sub_10012A394(&v13, [v5 running]);
  sub_10012A39C(&v13, [v5 automotive]);
  sub_10012A3A4(&v13, [v5 unknown]);
  sub_10012A89C(&v15, &v13);
  sub_100301ABC(v4, &v15);
}

void sub_1003021A4(_Unwind_Exception *a1)
{
  nullsub_70();

  _Unwind_Resume(a1);
}

void sub_1003021C8(_Unwind_Exception *a1)
{
  nullsub_70();

  _Unwind_Resume(a1);
}

void sub_1003021E8(_Unwind_Exception *a1)
{
  nullsub_69();
  nullsub_70();

  _Unwind_Resume(a1);
}

uint64_t sub_1003022C8(uint64_t a1)
{
  objc_destroyWeak((a1 + 96));
  *a1 = off_10044A5C0;
  v2 = *(a1 + 72);
  if (v2)
  {
    v3 = *(a1 + 80);
    v4 = *(a1 + 72);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 8);
        if (v5)
        {
          std::__shared_weak_count::__release_weak(v5);
        }

        v3 -= 16;
      }

      while (v3 != v2);
      v4 = *(a1 + 72);
    }

    *(a1 + 80) = v2;
    operator delete(v4);
  }

  std::mutex::~mutex((a1 + 8));
  return a1;
}

void sub_100302364(uint64_t a1)
{
  objc_destroyWeak((a1 + 96));
  *a1 = off_10044A5C0;
  v2 = *(a1 + 72);
  if (v2)
  {
    v3 = *(a1 + 80);
    v4 = *(a1 + 72);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 8);
        if (v5)
        {
          std::__shared_weak_count::__release_weak(v5);
        }

        v3 -= 16;
      }

      while (v3 != v2);
      v4 = *(a1 + 72);
    }

    *(a1 + 80) = v2;
    operator delete(v4);
  }

  std::mutex::~mutex((a1 + 8));

  operator delete();
}

void sub_100302428(id a1)
{
  v1 = os_log_create("com.apple.locationd.Pipeline", "Generic");
  v2 = qword_10045B058;
  qword_10045B058 = v1;
}

void sub_10030246C()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_1003024DC()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void sub_10030254C()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

void sub_1003027C0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v55.receiver = *(a1 + 32);
    v55.super_class = IOSDeviceMotion;
    objc_msgSendSuper2(&v55, "sensorBridge");
    v8 = v5;
    v69 = 18;
    strcpy(buf, "DeviceMotion accel");
    [v8 userAcceleration];
    v10 = v9;
    [v8 userAcceleration];
    v12 = v11;
    [v8 userAcceleration];
    v14 = sub_100303570(buf, v10, v12, v13);
    if (v69 < 0)
    {
      v17 = v14;
      operator delete(*buf);
      if (!v17)
      {
        goto LABEL_29;
      }
    }

    else if (!v14)
    {
      goto LABEL_29;
    }

    v69 = 20;
    strcpy(buf, "DeviceMotion gravity");
    [v8 gravity];
    v19 = v18;
    [v8 gravity];
    v21 = v20;
    [v8 gravity];
    v23 = sub_100303570(buf, v19, v21, v22);
    if (v69 < 0)
    {
      v25 = v23;
      operator delete(*buf);
      if (!v25)
      {
        goto LABEL_29;
      }
    }

    else if (!v23)
    {
LABEL_29:

      v45 = v8;
      [v45 rotationRate];
      v47 = v46;
      v49 = v48;
      v51 = v50;
      [v45 timestamp];
      v53 = sub_10010C70C(v52);
      v56 = off_10043D988;
      v66 = 0;
      v61 = 0;
      v63 = 0;
      v64 = 0;
      v62 = 0;
      v65 = 0;
      v67 = 0;
      v57 = v47;
      v58 = v49;
      v59 = v51;
      v60 = v53;
      [v45 timestamp];
      sub_10012951C(&v56, v54);
      sub_100324028(buf, 0xDu, &v56);
      operator new();
    }

    [v8 userAcceleration];
    v27 = v26;
    [v8 gravity];
    v29 = v28;
    [v8 userAcceleration];
    v31 = v30;
    [v8 gravity];
    v33 = v32;
    [v8 userAcceleration];
    v35 = v34;
    [v8 gravity];
    v37 = v36;
    [v8 timestamp];
    v39 = sub_10010C70C(v38);
    v56 = off_10043D988;
    v66 = 0;
    v61 = 0;
    v63 = 0;
    v64 = 0;
    v62 = 0;
    v65 = 0;
    v67 &= 0xFC00u;
    v57 = v27 + v29;
    v58 = v31 + v33;
    v59 = v35 + v37;
    v60 = v39;
    [v8 timestamp];
    sub_10012951C(&v56, v40);
    v69 = 8;
    strcpy(buf, "rawAccel");
    v41 = sub_100303570(buf, v57, v58, v59);
    if (v69 < 0)
    {
      v42 = v41;
      operator delete(*buf);
      if (!v42)
      {
LABEL_28:
        nullsub_67();
        goto LABEL_29;
      }
    }

    else if (!v41)
    {
      goto LABEL_28;
    }

    [IOSDeviceMotion convertGToAccel:&v56];
    strcpy(buf, "convertGToAccel result");
    v69 = 22;
    v43 = sub_100303570(buf, v57, v58, v59);
    if (v69 < 0)
    {
      v44 = v43;
      operator delete(*buf);
      v43 = v44;
    }

    if (v43)
    {
      sub_100324028(buf, 2u, &v56);
      operator new();
    }

    goto LABEL_28;
  }

  if (v6)
  {
    if (qword_10045B050 != -1)
    {
      sub_100387320();
    }

    v15 = qword_10045B058;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = [v7 description];
      *buf = 136315138;
      *&buf[4] = [v16 UTF8String];
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "error reported: %s", buf, 0xCu);
    }
  }

  else
  {
    if (qword_10045B050 != -1)
    {
      sub_100387320();
    }

    v24 = qword_10045B058;
    if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "no data and no error", buf, 2u);
    }
  }
}

void sub_100303348(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_100050568(va);
  nullsub_67();
  nullsub_67();

  _Unwind_Resume(a1);
}

BOOL sub_100303570(uint64_t *a1, double a2, double a3, double a4)
{
  if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&a3 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000 && (*&a4 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    return 1;
  }

  if (qword_10045B050 == -1)
  {
    v9 = qword_10045B058;
    result = os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_FAULT);
    if (!result)
    {
      return result;
    }
  }

  else
  {
    sub_100387320();
    v9 = qword_10045B058;
    result = os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_FAULT);
    if (!result)
    {
      return result;
    }
  }

  if (*(a1 + 23) >= 0)
  {
    v10 = a1;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 136446978;
  v12 = v10;
  v13 = 2050;
  v14 = a2;
  v15 = 2050;
  v16 = a3;
  v17 = 2050;
  v18 = a4;
  _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_FAULT, "%{public}s failed finite check: %{public}f, %{public}f, %{public}f", &v11, 0x2Au);
  return 0;
}

void sub_100303778(id a1)
{
  v1 = os_log_create("com.apple.locationd.Pipeline", "Generic");
  v2 = qword_10045B058;
  qword_10045B058 = v1;
}

void sub_1003037BC()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_10030382C()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void sub_10030389C()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

id sub_1003038C4(uint64_t a1)
{
  if (qword_10045D4C8 == -1)
  {
    v2 = qword_10045D4D0;
  }

  else
  {
    sub_100387334();
    v2 = qword_10045D4D0;
  }

  return v2;
}

void sub_10030391C(id a1)
{
  v1 = objc_alloc_init(CMMotionManager);
  v2 = qword_10045D4D0;
  qword_10045D4D0 = v1;

  v3 = qword_10045D4D0;

  [v3 setDeviceMotionUpdateInterval:0.01];
}

id *sub_100303970(id *a1, uint64_t *a2, void *a3, void *a4, unsigned int a5, uint64_t a6)
{
  v11 = a3;
  v12 = a4;
  sub_100335BD0(a1, a2);
  sub_100306828(a1 + 11);
  *a1 = off_100448B18;
  if ((a5 & 0x10) == 0)
  {
    v13 = objc_alloc_init(WifiSensor);
    if ([(WifiSensor *)v13 sensorPresent])
    {
      sub_100336404(a1, [(WifiSensor *)v13 getSensor]);
      sub_1003069A8(a1 + 11, v13);
    }
  }

  v14 = objc_alloc_init(IOSPedometry);
  if ([(IOSPedometry *)v14 sensorPresent])
  {
    sub_100336404(a1, [(IOSPedometry *)v14 getSensor]);
    sub_1003069A8(a1 + 11, v14);
  }

  if ((a5 & 1) == 0)
  {
    v15 = [[IOSGps alloc] initWithDisableBackground:(a5 >> 2) & 1];
    if ([(IOSGps *)v15 sensorPresent])
    {
      sub_100336404(a1, [(IOSGps *)v15 getSensor]);
      sub_1003069A8(a1 + 11, v15);
    }
  }

  v16 = [[IOSAltimeter alloc] initWithOperationQueue:v12];
  if ([(IOSAltimeter *)v16 sensorPresent])
  {
    sub_100336404(a1, [(IOSAltimeter *)v16 getSensor]);
    sub_1003069A8(a1 + 11, v16);
  }

  if ((a5 & 0x20) == 0)
  {
    v17 = objc_alloc_init(IOSBeacon);
    if ([(IOSBeacon *)v17 sensorPresent])
    {
      sub_100336404(a1, [(IOSBeacon *)v17 getSensor]);
      sub_1003069A8(a1 + 11, v17);
    }
  }

  if ((a5 & 8) != 0)
  {
    [v11 setDeviceMotionUpdateInterval:0.02];
  }

  v18 = [IOSDeviceMotion alloc];
  if ((a5 & 2) != 0)
  {
    v19 = 1;
  }

  else
  {
    v19 = 4;
  }

  v20 = [(IOSDeviceMotion *)v18 initWithMotionManager:v11 andHandler:v12 usingReferenceFrame:v19];
  if ([(IOSDeviceMotion *)v20 sensorPresent])
  {
    sub_100336404(a1, [(IOSAbstractInertialSensor *)v20 getSensor]);
    sub_1003069A8(a1 + 11, v20);
  }

  if ((atomic_load_explicit(qword_10045D4E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(qword_10045D4E0))
  {
    qword_10045D4D8 = objc_alloc_init(CMMotionActivityManager);
    __cxa_guard_release(qword_10045D4E0);
  }

  v21 = [IOSActivityState alloc];
  v22 = [(IOSActivityState *)v21 initWithMotionActivityManager:qword_10045D4D8 andHandler:v12];
  if ([(IOSActivityState *)v22 sensorPresent])
  {
    sub_100336404(a1, [(IOSActivityState *)v22 getSensor]);
    sub_1003069A8(a1 + 11, v22);
  }

  v23 = [[IOSNearbyObject alloc] initWithType:(a5 >> 6) & 1 reducedRate:(a5 >> 7) & 1];
  if ([(IOSNearbyObject *)v23 sensorPresent])
  {
    sub_100336404(a1, [(IOSNearbyObject *)v23 getSensor]);
    sub_1003069A8(a1 + 11, v23);
  }

  v24 = *(a6 + 24);
  if (v24)
  {
    (*(*v24 + 48))(&v30);
    v25 = v30;
    if (v30 != v31)
    {
      do
      {
        sub_100336404(a1, v25[5]);
        sub_1003069A8(a1 + 11, v25[4]);
        v27 = v25[1];
        if (v27)
        {
          do
          {
            v28 = v27;
            v27 = *v27;
          }

          while (v27);
        }

        else
        {
          do
          {
            v28 = v25[2];
            v29 = *v28 == v25;
            v25 = v28;
          }

          while (!v29);
        }

        v25 = v28;
      }

      while (v28 != v31);
    }

    sub_1003040E0(&v30, v31[0]);
  }

  return a1;
}

void sub_100303D40(_Unwind_Exception *a1)
{
  __cxa_guard_abort(qword_10045D4E0);

  sub_10030685C((v2 + 88));
  sub_100303E4C(v2);

  _Unwind_Resume(a1);
}

void *sub_100303E4C(void *a1)
{
  *a1 = off_10044A4B0;
  v2 = a1[8];
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = a1[6];
  a1[6] = 0;
  if (v4)
  {
    operator delete(v4);
  }

  v5 = a1[3];
  if (v5)
  {
    a1[4] = v5;
    operator delete(v5);
  }

  v6 = a1[2];
  if (!v6 || atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v6->__on_zero_shared)(v6);
  std::__shared_weak_count::__release_weak(v6);
  return a1;
}

id *sub_100303F20(id *a1)
{
  sub_10030685C(a1 + 11);
  *a1 = off_10044A4B0;
  v2 = a1[8];
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = a1[6];
  a1[6] = 0;
  if (v4)
  {
    operator delete(v4);
  }

  v5 = a1[3];
  if (v5)
  {
    a1[4] = v5;
    operator delete(v5);
  }

  v6 = a1[2];
  if (!v6 || atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v6->__on_zero_shared)(v6);
  std::__shared_weak_count::__release_weak(v6);
  return a1;
}

void sub_100303FF8(id *a1)
{
  sub_10030685C(a1 + 11);
  *a1 = off_10044A4B0;
  v2 = a1[8];
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = a1[6];
  a1[6] = 0;
  if (v4)
  {
    operator delete(v4);
  }

  v5 = a1[3];
  if (v5)
  {
    a1[4] = v5;
    operator delete(v5);
  }

  v6 = a1[2];
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  operator delete();
}

void sub_1003040E0(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_1003040E0(a1, *a2);
    sub_1003040E0(a1, a2[1]);

    operator delete(a2);
  }
}

void sub_100304140()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_1003041B0()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void sub_100304220()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

void sub_1003048B4(id a1)
{
  v1 = os_log_create("com.apple.locationd.Pipeline", "Generic");
  v2 = qword_10045B058;
  qword_10045B058 = v1;
}

void sub_1003048F8()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_100304968()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void sub_1003049D8()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

void sub_100304C20(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  if (v3)
  {
    [v3 setDelegate:0];
    v2 = *(a1 + 32);
    v3 = *(v2 + 8);
  }

  *(v2 + 8) = 0;
}

id sub_100304C70(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  *(a1 + 32) = result;
  return result;
}

void sub_100305100(id a1)
{
  v1 = os_log_create("com.apple.locationd.Pipeline", "Generic");
  v2 = qword_10045B058;
  qword_10045B058 = v1;
}

uint64_t sub_100305144(uint64_t a1)
{
  objc_destroyWeak((a1 + 96));
  *a1 = off_10044A5C0;
  v2 = *(a1 + 72);
  if (v2)
  {
    v3 = *(a1 + 80);
    v4 = *(a1 + 72);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 8);
        if (v5)
        {
          std::__shared_weak_count::__release_weak(v5);
        }

        v3 -= 16;
      }

      while (v3 != v2);
      v4 = *(a1 + 72);
    }

    *(a1 + 80) = v2;
    operator delete(v4);
  }

  std::mutex::~mutex((a1 + 8));
  return a1;
}

void sub_1003051E0(uint64_t a1)
{
  objc_destroyWeak((a1 + 96));
  *a1 = off_10044A5C0;
  v2 = *(a1 + 72);
  if (v2)
  {
    v3 = *(a1 + 80);
    v4 = *(a1 + 72);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 8);
        if (v5)
        {
          std::__shared_weak_count::__release_weak(v5);
        }

        v3 -= 16;
      }

      while (v3 != v2);
      v4 = *(a1 + 72);
    }

    *(a1 + 80) = v2;
    operator delete(v4);
  }

  std::mutex::~mutex((a1 + 8));

  operator delete();
}

id sub_10030529C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 96));
  v2 = [WeakRetained sensorPresent];

  return v2;
}

void sub_1003052E4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 96));
  [WeakRetained start];
}

void sub_100305340(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 96));
  [WeakRetained stop];
}

void sub_1003053A4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = a3;
  v8 = a4;
  v9 = [v6 identifier];
  v10 = [v9 UUIDString];

  v11 = [v7 objectForKey:CBAdvertisementDataManufacturerDataKey];
  v12 = [v11 length];
  v42 = 0;
  v43 = 0;
  v44 = 0;
  if (v12)
  {
    if ((v12 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_10000FC84();
  }

  [v11 getBytes:0 length:{objc_msgSend(v11, "length")}];
  v13 = [v6 name];
  v14 = v13;
  if (v13)
  {
    objc_msgSend_ps_STLStringOnNil_(v13);
  }

  else
  {
    v39 = 0;
    v40 = 0;
    v41 = 0;
  }

  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  memset(v36, 0, 29);
  memset(&v36[32], 0, 48);
  v31 = off_10043DC28;
  v37 = 0;
  v38 &= 0xF000u;
  v15 = sub_1003396C0();
  v16 = atomic_load(v15 + 20);
  if ((v16 & 1) == 0 && *(v15 + 16) != 1)
  {
    v17 = v15;
    v18 = sub_100008F80(v15, v15 + 9);
    *(v17 + 17) = v18 & 1;
    *(v17 + 16) = 1;
    atomic_store(1u, v17 + 20);
    if ((v18 & 1) == 0)
    {
      goto LABEL_18;
    }

LABEL_12:
    v19 = [v7 objectForKey:CBAdvertisementDataServiceDataKey];
    v20 = [v19 description];

    if (v20)
    {
      objc_msgSend_ps_STLStringOnNil_(v20);
    }

    else
    {
      memset(v29, 0, 24);
    }

    sub_100305B38(v42, v43);
    sub_100130278(&v31, v29);
    sub_1001302AC(&v31, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v29[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_17;
      }
    }

    else if ((SHIBYTE(v29[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_17:

      goto LABEL_18;
    }

    operator delete(v29[0].__r_.__value_.__l.__data_);
    goto LABEL_17;
  }

  if (*(v15 + 17))
  {
    goto LABEL_12;
  }

LABEL_18:
  if (!sub_100321A70(&v42))
  {
    v22 = sub_1003396C0();
    v23 = atomic_load(v22 + 20);
    if ((v23 & 1) != 0 || *(v22 + 16) == 1)
    {
      if ((*(v22 + 17) & 1) == 0)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v24 = v22;
      v25 = sub_100008F80(v22, v22 + 9);
      *(v24 + 17) = v25 & 1;
      *(v24 + 16) = 1;
      atomic_store(1u, v24 + 20);
      if ((v25 & 1) == 0)
      {
        goto LABEL_36;
      }
    }

LABEL_30:
    v26 = sub_10010C758();
    sub_100126648(&v31, v26);
    if (v10)
    {
      objc_msgSend_ps_STLString(v10);
    }

    else
    {
      memset(v29, 0, 24);
    }

    sub_100130270(&v31, v29);
    if (SHIBYTE(v29[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v29[0].__r_.__value_.__l.__data_);
    }

    v27 = [v7 objectForKey:{CBAdvertisementDataTxPowerLevelKey, *&v29[0].__r_.__value_.__l.__data_, v29[0].__r_.__value_.__r.__words[2]}];
    sub_1001302E0(&v31, [v27 intValue]);

    sub_1001302E8(&v31, [v8 intValue]);
    v28 = [v7 objectForKey:CBAdvertisementDataChannel];
    sub_1001302F0(&v31, [v28 intValue]);

    sub_100324800(v29, &v31);
    operator new();
  }

  if (sub_100321C14(&v31, &v42))
  {
    goto LABEL_30;
  }

  if (qword_10045B050 == -1)
  {
    v21 = qword_10045B058;
    if (!os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_36;
    }

    goto LABEL_22;
  }

  sub_100387398();
  v21 = qword_10045B058;
  if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_ERROR))
  {
LABEL_22:
    LOWORD(v29[0].__r_.__value_.__l.__data_) = 0;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "failed to parse Beacon fields!", v29, 2u);
  }

LABEL_36:
  sub_100130234(&v31);
  if (SHIBYTE(v41) < 0)
  {
    operator delete(v39);
  }

  if (v42)
  {
    v43 = v42;
    operator delete(v42);
  }
}

void sub_1003058D8(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1003056C0);
}

void sub_1003058EC(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x10030555CLL);
}

void sub_100305900(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, char a40)
{
  sub_100130234(&a40);
  if (*(v45 - 105) < 0)
  {
    operator delete(*(v45 - 128));
    v47 = *(v45 - 104);
    if (!v47)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v47 = *(v45 - 104);
    if (!v47)
    {
LABEL_6:

      _Unwind_Resume(a1);
    }
  }

  *(v45 - 96) = v47;
  operator delete(v47);
  goto LABEL_6;
}

uint64_t sub_100305B38(unsigned __int8 *a1, unsigned __int8 *a2)
{
  sub_10003BFA8(&v9);
  v5 = v9;
  v6 = &v9 + *(v9 - 24);
  if (*(v6 + 36) == -1)
  {
    std::ios_base::getloc((&v9 + *(v9 - 24)));
    v7 = std::locale::use_facet(&v13, &std::ctype<char>::id);
    (v7->__vftable[2].~facet_0)(v7, 32);
    std::locale::~locale(&v13);
    v5 = v9;
  }

  *(v6 + 36) = 48;
  for (*(&v9 + *(v5 - 24) + 8) = *(&v9 + *(v5 - 24) + 8) & 0xFFFFFFB5 | 8; a1 != a2; ++a1)
  {
    *(&v11[1].__locale_ + *(v9 - 24)) = 2;
    std::ostream::operator<<();
  }

  std::stringbuf::str();
  if (v12 < 0)
  {
    operator delete(v11[7].__locale_);
  }

  std::locale::~locale(v11);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_100305D98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::locale::~locale((v9 - 72));
  sub_10003C1C4(&a9);
  _Unwind_Resume(a1);
}

void sub_100305DDC()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_100305E4C()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void sub_100305EBC()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

uint64_t sub_100305EE4(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  sub_100338704(a1);
  *a1 = off_100448C80;
  *(a1 + 96) = a2;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0x7FEFFFFFFFFFFFFFLL;
  *(a1 + 144) = 0;
  objc_initWeak((a1 + 152), v5);

  return a1;
}

uint64_t sub_100305F78(uint64_t a1)
{
  objc_destroyWeak((a1 + 152));
  *a1 = off_10044A5C0;
  v2 = *(a1 + 72);
  if (v2)
  {
    v3 = *(a1 + 80);
    v4 = *(a1 + 72);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 8);
        if (v5)
        {
          std::__shared_weak_count::__release_weak(v5);
        }

        v3 -= 16;
      }

      while (v3 != v2);
      v4 = *(a1 + 72);
    }

    *(a1 + 80) = v2;
    operator delete(v4);
  }

  std::mutex::~mutex((a1 + 8));
  return a1;
}

void sub_100306014(uint64_t a1)
{
  objc_destroyWeak((a1 + 152));
  *a1 = off_10044A5C0;
  v2 = *(a1 + 72);
  if (v2)
  {
    v3 = *(a1 + 80);
    v4 = *(a1 + 72);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 8);
        if (v5)
        {
          std::__shared_weak_count::__release_weak(v5);
        }

        v3 -= 16;
      }

      while (v3 != v2);
      v4 = *(a1 + 72);
    }

    *(a1 + 80) = v2;
    operator delete(v4);
  }

  std::mutex::~mutex((a1 + 8));

  operator delete();
}

id sub_1003060D0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 152));
  v2 = [WeakRetained sensorPresent];

  return v2;
}

void sub_100306118(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 152));
  [WeakRetained start];
}

void sub_100306174(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 152));
  [WeakRetained stop];
}

void sub_1003061D0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  v4 = sub_10010C670();
  if ((v3 - v4) >= 0)
  {
    v5 = v3 - v4;
  }

  else
  {
    v5 = v4 - v3;
  }

  v6 = v5 / 1000000.0;
  *(a1 + 112) = *(a1 + 112) + v6;
  ++*(a1 + 120);
  v7 = *(a1 + 128);
  v8 = *(a1 + 136);
  if (v7 < v6)
  {
    v7 = v5 / 1000000.0;
  }

  if (v6 < v8)
  {
    v8 = v5 / 1000000.0;
  }

  *(a1 + 128) = v7;
  *(a1 + 136) = v8;
  if (qword_10045B050 != -1)
  {
    sub_1003873C0();
  }

  v9 = qword_10045B058;
  if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
  {
    v10 = *(a1 + 96);
    v12 = *(a1 + 128);
    v11 = *(a1 + 136);
    *buf = 67110144;
    v13 = *(a1 + 112);
    v14 = *(a1 + 120);
    v25 = v10;
    v26 = 2048;
    v27 = v11;
    v28 = 2048;
    v29 = v12;
    v30 = 2048;
    v31 = v13 / v14;
    v32 = 2048;
    v33 = v5 / 1000000.0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Sensor %d time stats - minOffset: %f maxOffset: %f avgOffset: %f currentOffset: %f", buf, 0x30u);
  }

  if (v5 >= 0x3B9ACA01)
  {
    if (qword_10045B050 != -1)
    {
      sub_1003873D4();
    }

    v15 = qword_10045B058;
    if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Sensor time offsets are too high, these events are going to drop and PDR will suffer", buf, 2u);
    }

    if (v5 >= 0xDF8475801)
    {
      if (qword_10045B050 != -1)
      {
        sub_1003873D4();
      }

      v16 = qword_10045B058;
      if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Sensor time offsets are exceedingly high, this may indicate a systemic issue.  If this persists we will crash", buf, 2u);
      }

      v17 = *(a1 + 144) + 1;
      *(a1 + 144) = v17;
      v18 = *(a1 + 120);
      if (qword_10045B050 != -1)
      {
        sub_1003873D4();
      }

      v19 = v17 / v18;
      v20 = qword_10045B058;
      if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_ERROR))
      {
        v21 = *(a1 + 96);
        *buf = 67109632;
        v25 = v21;
        v26 = 2048;
        v27 = v5 / 1000000.0;
        v28 = 2048;
        v29 = v19;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Failed time sanity check, sensor %d, time offset %f ms, failure rate %f", buf, 0x1Cu);
      }

      if (*(a1 + 120) >= 0x1F4uLL && v19 >= 0.1)
      {
        sub_100014A08(v23, "");
        sub_10023FE94("We are consistently seeing a large difference between motion and system timestamps, which violates our assumptions about time and would cause our system to break", buf);
        sub_100382FC4(buf, __p, v23);
        sub_10003F5D0(__p);
      }
    }
  }
}

void sub_1003064E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_100306684(_Unwind_Exception *a1)
{
  sub_10002BB1C(v1 - 48);
  nullsub_67();
  _Unwind_Resume(a1);
}

void sub_1003066A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  std::__shared_weak_count::~__shared_weak_count(v10);
  operator delete(v12);
  nullsub_67();
  _Unwind_Resume(a1);
}

void sub_1003066DC(id a1)
{
  v1 = os_log_create("com.apple.locationd.Pipeline", "Generic");
  v2 = qword_10045B058;
  qword_10045B058 = v1;
}

void sub_100306720()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_100306790()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void sub_100306800()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

id *sub_10030685C(id *a1)
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *a1;
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    do
    {
      v5 = 0;
      do
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v8 + 1) + 8 * v5);
        if (objc_opt_respondsToSelector())
        {
          [v6 invalidate];
        }

        v5 = v5 + 1;
      }

      while (v3 != v5);
      v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v3);
  }

  return a1;
}

void sub_10030698C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10000D388(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1003069A8(id *a1, void *a2)
{
  v3 = a2;
  [*a1 addObject:?];
}

void sub_1003069FC()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

id sub_100306BB4(uint64_t a1)
{
  v2 = objc_alloc_init(CLLocationManager);
  v3 = *(a1 + 32);
  v4 = *(v3 + 24);
  *(v3 + 24) = v2;

  v5 = *(*(a1 + 32) + 24);

  return [v5 setDelegate:?];
}

id sub_100306C08(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  *(a1 + 32) = result;
  return result;
}

void sub_100306CEC(uint64_t a1)
{
  if (+[CLLocationManager authorizationStatus]!= kCLAuthorizationStatusAuthorizedAlways)
  {
    v4 = [*(a1 + 32) locationManager];
    [v4 requestWhenInUseAuthorization];
  }

  v2 = *(a1 + 32);
  if ((v2[16] & 1) == 0)
  {
    v5 = [v2 locationManager];
    v3 = objc_opt_respondsToSelector();

    v2 = *(a1 + 32);
    if (v3)
    {
      v6 = [v2 locationManager];
      [v6 setAllowsBackgroundLocationUpdates:1];

      v2 = *(a1 + 32);
    }
  }

  v7 = [v2 locationManager];
  [v7 startUpdatingLocation];
}

void sub_100306E84(uint64_t a1)
{
  v1 = [*(a1 + 32) locationManager];
  [v1 stopUpdatingLocation];
}

uint64_t sub_100306F88(uint64_t a1)
{
  objc_destroyWeak((a1 + 96));
  *a1 = off_10044A5C0;
  v2 = *(a1 + 72);
  if (v2)
  {
    v3 = *(a1 + 80);
    v4 = *(a1 + 72);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 8);
        if (v5)
        {
          std::__shared_weak_count::__release_weak(v5);
        }

        v3 -= 16;
      }

      while (v3 != v2);
      v4 = *(a1 + 72);
    }

    *(a1 + 80) = v2;
    operator delete(v4);
  }

  std::mutex::~mutex((a1 + 8));
  return a1;
}

void sub_100307024(uint64_t a1)
{
  objc_destroyWeak((a1 + 96));
  *a1 = off_10044A5C0;
  v2 = *(a1 + 72);
  if (v2)
  {
    v3 = *(a1 + 80);
    v4 = *(a1 + 72);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 8);
        if (v5)
        {
          std::__shared_weak_count::__release_weak(v5);
        }

        v3 -= 16;
      }

      while (v3 != v2);
      v4 = *(a1 + 72);
    }

    *(a1 + 80) = v2;
    operator delete(v4);
  }

  std::mutex::~mutex((a1 + 8));

  operator delete();
}

id sub_1003070E0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 96));
  v2 = [WeakRetained sensorPresent];

  return v2;
}

void sub_100307128(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 96));
  [WeakRetained start];
}

void sub_100307184(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 96));
  [WeakRetained stop];
}

void sub_1003071E8(uint64_t a1, void *a2)
{
  v2 = a2;
  v14 = off_10043DBE8;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18[0] = off_10043DB28;
  v18[1] = 0;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v18[2] = 0;
  v19 = 0;
  v27 = off_10043DBC8;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  [v2 horizontalAccuracy];
  sub_10012EA24(&v14, v3);
  [v2 altitude];
  sub_10012EA10(&v14, v4);
  [v2 course];
  sub_10012EA38(&v14, v5);
  [v2 speed];
  sub_10012EA4C(&v14, v6);
  [v2 coordinate];
  sub_1001294D4(v18, v7);
  [v2 coordinate];
  sub_1001294DC(v18, v8);
  v30 |= 8u;
  v9 = sub_10010C758();
  sub_100126648(&v14, v9);
  sub_10012E9CC(&v14, v15);
  std::to_string(__p, [v2 type]);
  sub_10012E9DC(&v14, __p);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  v10 = [v2 timestamp];
  [v10 timeIntervalSince1970];
  v12 = v11;

  sub_10012A88C(&v14, (v12 * 1000000000.0));
  sub_1003245C8(__p, &v14);
  operator new();
}

void sub_100307474(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, ...)
{
  va_start(va, a35);
  sub_10002BB1C(&a34);
  sub_10012E8E4(&a9);
  sub_10012E8E4(va);

  _Unwind_Resume(a1);
}

void sub_1003074B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, ...)
{
  va_start(va, a35);
  sub_10012E8E4(va);

  _Unwind_Resume(a1);
}

void sub_1003074D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, ...)
{
  va_start(va, a35);

  sub_10012E8E4(va);
  _Unwind_Resume(a1);
}

void sub_1003074EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, ...)
{
  va_start(va, a35);
  sub_10012E8E4(va);

  _Unwind_Resume(a1);
}

void sub_100307504(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  if (a14 < 0)
  {
    operator delete(__p);
    sub_10012E8E4(&a39);

    _Unwind_Resume(a1);
  }

  sub_10012E8E4(&a39);

  _Unwind_Resume(a1);
}

void sub_10030758C()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_1003075FC()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void sub_10030766C()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

void sub_100307888(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_10045D4F8);

  _Unwind_Resume(a1);
}

uint64_t sub_1003078D8(uint64_t a1, uint64_t a2)
{
  v4 = a1 + 8;
  if (*a1 == 1)
  {
    WeakRetained = objc_loadWeakRetained((a2 + 96));
    objc_storeWeak((a1 + 104), WeakRetained);

    if (v4 != a2)
    {
      sub_100308200(a1 + 80, *(a2 + 72), *(a2 + 80), (*(a2 + 80) - *(a2 + 72)) >> 4);
    }

    return a1;
  }

  else
  {
    sub_100338704(a1 + 8);
    *(a1 + 8) = off_100448DC8;
    v7 = objc_loadWeakRetained((a2 + 96));
    objc_initWeak((a1 + 104), v7);

    *a1 = 1;
    return a1;
  }
}

void sub_100307A74(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v5;
  v8 = v6;
  if (v7)
  {
    sub_100307F74(*(a1 + 32) + 32, v7);
  }

  if (qword_10045B050 != -1)
  {
    sub_1003873FC();
  }

  v9 = qword_10045B058;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v10 = [v8 description];
    v11 = 136315138;
    v12 = [v10 UTF8String];
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Failed to get data from altimeter: %s", &v11, 0xCu);
  }
}

id sub_100307BF8(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  *(a1 + 32) = result;
  return result;
}

void sub_100307D14(uint64_t a1)
{
  objc_destroyWeak((a1 + 96));
  *a1 = off_10044A5C0;
  v2 = *(a1 + 72);
  if (v2)
  {
    v3 = *(a1 + 80);
    v4 = *(a1 + 72);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 8);
        if (v5)
        {
          std::__shared_weak_count::__release_weak(v5);
        }

        v3 -= 16;
      }

      while (v3 != v2);
      v4 = *(a1 + 72);
    }

    *(a1 + 80) = v2;
    operator delete(v4);
  }

  std::mutex::~mutex((a1 + 8));

  operator delete();
}

id sub_100307DD0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 96));
  v2 = [WeakRetained sensorPresent];

  return v2;
}

void sub_100307E18(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 96));
  [WeakRetained start];
}

void sub_100307E74(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 96));
  [WeakRetained stop];
}

uint64_t sub_100307ED8(uint64_t a1)
{
  objc_destroyWeak((a1 + 96));
  *a1 = off_10044A5C0;
  v2 = *(a1 + 72);
  if (v2)
  {
    v3 = *(a1 + 80);
    v4 = *(a1 + 72);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 8);
        if (v5)
        {
          std::__shared_weak_count::__release_weak(v5);
        }

        v3 -= 16;
      }

      while (v3 != v2);
      v4 = *(a1 + 72);
    }

    *(a1 + 80) = v2;
    operator delete(v4);
  }

  std::mutex::~mutex((a1 + 8));
  return a1;
}

void sub_100307F74(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 timestamp];
  v4 = sub_10010C70C(v3);
  v12 = off_10043DA28;
  v13 = 0u;
  memset(v14, 0, sizeof(v14));
  [v2 timestamp];
  sub_1001294D4(&v12, v5);
  v6 = sub_10010C758();
  sub_10012A88C(&v12, v6);
  sub_10012BC28(&v12, v4);
  v7 = [v2 relativeAltitude];
  [v7 doubleValue];
  sub_1001294E4(&v12, v8);

  v9 = [v2 pressure];
  [v9 doubleValue];
  sub_10012A894(&v12, v10);

  sub_100324910(&v11, &v12);
  operator new();
}

void sub_100308118(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_10002BB1C(va);
  nullsub_72();
  nullsub_72();

  _Unwind_Resume(a1);
}

void sub_10030815C(_Unwind_Exception *a1)
{
  nullsub_72();

  _Unwind_Resume(a1);
}

void sub_100308174(_Unwind_Exception *a1)
{
  nullsub_72();

  _Unwind_Resume(a1);
}

void sub_1003081A4(_Unwind_Exception *a1)
{
  nullsub_72();

  _Unwind_Resume(a1);
}

void sub_1003081BC(id a1)
{
  v1 = os_log_create("com.apple.locationd.Pipeline", "Generic");
  v2 = qword_10045B058;
  qword_10045B058 = v1;
}

void sub_100308200(uint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v5 = a2;
  v7 = *(a1 + 16);
  v8 = *a1;
  if (a4 > (v7 - *a1) >> 4)
  {
    if (v8)
    {
      v9 = a4;
      v10 = *(a1 + 8);
      v11 = *a1;
      if (v10 != v8)
      {
        do
        {
          v12 = *(v10 - 1);
          if (v12)
          {
            std::__shared_weak_count::__release_weak(v12);
          }

          v10 -= 2;
        }

        while (v10 != v8);
        v11 = *a1;
      }

      *(a1 + 8) = v8;
      operator delete(v11);
      v7 = 0;
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      a4 = v9;
    }

    if (!(a4 >> 60))
    {
      v21 = v7 >> 3;
      if (v7 >> 3 <= a4)
      {
        v21 = a4;
      }

      v22 = v7 >= 0x7FFFFFFFFFFFFFF0;
      v23 = 0xFFFFFFFFFFFFFFFLL;
      if (!v22)
      {
        v23 = v21;
      }

      if (!(v23 >> 60))
      {
        operator new();
      }
    }

    sub_10000FC84();
  }

  v13 = *(a1 + 8);
  if (a4 <= (v13 - v8) >> 4)
  {
    if (a2 != a3)
    {
      do
      {
        v19 = *v5;
        v18 = v5[1];
        if (v18)
        {
          atomic_fetch_add_explicit((v18 + 16), 1uLL, memory_order_relaxed);
        }

        v20 = v8[1];
        *v8 = v19;
        v8[1] = v18;
        if (v20)
        {
          std::__shared_weak_count::__release_weak(v20);
        }

        v5 += 2;
        v8 += 2;
      }

      while (v5 != a3);
      v13 = *(a1 + 8);
    }

    while (v13 != v8)
    {
      v27 = *(v13 - 1);
      if (v27)
      {
        std::__shared_weak_count::__release_weak(v27);
      }

      v13 -= 2;
    }

    *(a1 + 8) = v8;
  }

  else
  {
    v14 = (a2 + v13 - v8);
    if (v13 != v8)
    {
      do
      {
        v16 = *v5;
        v15 = v5[1];
        if (v15)
        {
          atomic_fetch_add_explicit((v15 + 16), 1uLL, memory_order_relaxed);
        }

        v17 = v8[1];
        *v8 = v16;
        v8[1] = v15;
        if (v17)
        {
          std::__shared_weak_count::__release_weak(v17);
        }

        v5 += 2;
        v8 += 2;
      }

      while (v5 != v14);
      v13 = *(a1 + 8);
    }

    v24 = v13;
    if (v14 != a3)
    {
      v24 = v13;
      v25 = v13;
      do
      {
        v26 = v14[1];
        *v25 = *v14;
        v25[1] = v26;
        if (v26)
        {
          atomic_fetch_add_explicit((v26 + 16), 1uLL, memory_order_relaxed);
        }

        v14 += 2;
        v25 += 2;
        v24 += 2;
      }

      while (v14 != a3);
    }

    *(a1 + 8) = v24;
  }
}

void sub_100308478()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_1003084E8()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void sub_100308558()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

void sub_100308784(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_msgSend_magneticField(v3);
  v5 = v4;
  v7 = v6;
  v9 = v8;
  [v3 timestamp];
  v14[0] = off_10043D988;
  v20 = 0;
  v15 = 0;
  v17 = 0;
  v18 = 0;
  v16 = 0;
  v19 = 0;
  v21 = 0;
  v14[1] = v5;
  v14[2] = v7;
  v14[3] = v9;
  v14[4] = sub_10010C70C(v10);
  [v3 timestamp];
  sub_10012951C(v14, v11);
  v13.receiver = *(a1 + 32);
  v13.super_class = IOSMagnetometer;
  v12 = objc_msgSendSuper2(&v13, "sensorBridge");
  sub_10030652C(v12, v14);
}

void sub_100308868(_Unwind_Exception *a1)
{
  nullsub_67();

  _Unwind_Resume(a1);
}

void sub_100308900()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_100308970()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void sub_1003089E0()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

void sub_100308C3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_100387410(a10);

    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_100308CE8(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = WifiSensor;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

void sub_1003090A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_100309C70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char *a40, uint64_t a41, uint64_t a42, void *__p, uint64_t a44, int a45, __int16 a46, char a47, char a48, uint64_t a49, void *a50, uint64_t a51, int a52, __int16 a53, char a54, char a55)
{
  if (a48 < 0)
  {
    operator delete(__p);
    if ((a55 & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v56 - 153) & 0x80000000) == 0)
      {
LABEL_8:

        sub_100261424(&a40);
        _Unwind_Resume(a1);
      }

LABEL_7:
      operator delete(*(v56 - 176));
      goto LABEL_8;
    }
  }

  else if ((a55 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a50);
  if ((*(v56 - 153) & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void sub_100309E68(char **a1, unint64_t a2)
{
  if (0x2E8BA2E8BA2E8BA3 * ((a1[2] - *a1) >> 3) < a2)
  {
    if (a2 < 0x2E8BA2E8BA2E8BBLL)
    {
      operator new();
    }

    sub_10000FC84();
  }
}

void sub_10030A00C(void *a1, void *a2)
{
  v2 = a2;
  v16[0] = 0;
  if ([v2 wifiError])
  {
    v17 = [v2 wifiError];
    v16[0] = 1;
  }

  v22[128] = 0;
  __p = 0;
  v14 = 0;
  v15 = 0;
  v3 = [v2 settings];
  v4 = [v3 channels];
  v5 = [v4 count];
  if (v5)
  {
    if (!(v5 >> 62))
    {
      operator new();
    }

    sub_10000FC84();
  }

  memset(v12, 0, sizeof(v12));
  v6 = [v2 settings];
  v7 = [v6 channels];

  if ([v7 countByEnumeratingWithState:v12 objects:v22 count:16])
  {
    sub_10000AA28([**(&v12[0] + 1) intValue]);
    operator new();
  }

  [v2 initiatedTimestamp];
  [v2 cachedScan];
  [v2 settings];
  [objc_claimAutoreleasedReturnValue() dwell];
  [v2 settings];
  [objc_claimAutoreleasedReturnValue() includeOffChannelResults];
  [v2 settings];
  [objc_claimAutoreleasedReturnValue() dutyCycle];
  [v2 settings];
  v8 = [objc_claimAutoreleasedReturnValue() scanType];
  if (v8 < 3)
  {
    LOWORD(v19.__r_.__value_.__l.__data_) = [v2 merged];
    v20.__r_.__value_.__r.__words[0] = [v2 scanRssiThreshold];
    LOBYTE(v21.__vftable) = [v2 targettedSsid];
    operator new();
  }

  v9 = v8;
  __cxa_allocate_exception(0x40uLL);
  std::to_string(&v19, v9);
  v10 = std::string::insert(&v19, 0, "invalid scan type ");
  v11 = *&v10->__r_.__value_.__l.__data_;
  v20.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
  *&v20.__r_.__value_.__l.__data_ = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  std::logic_error::logic_error(&v21, &v20);
  sub_10010A984(&v18);
}

void sub_10030A518(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49, std::out_of_range a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a35)
  {
    operator delete(a35);
  }

  std::out_of_range::~out_of_range(&a50);
  if (a49 < 0)
  {
    operator delete(a44);
  }

  if (a43 < 0)
  {
    operator delete(a38);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (*(v69 - 136) == 1 && *(v69 - 105) < 0)
  {
    operator delete(a65);
  }

  _Unwind_Resume(a1);
}

void sub_10030A814(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_10002BB1C(&a9);

  _Unwind_Resume(a1);
}

void sub_10030A944(id a1)
{
  v1 = os_log_create("com.apple.locationd.Pipeline", "Generic");
  v2 = qword_10045B058;
  qword_10045B058 = v1;
}

void sub_10030A9A8(std::__shared_weak_count *a1)
{
  a1->__vftable = off_100448E90;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10030A9FC(uint64_t a1)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    *(a1 + 96) = v2;
    operator delete(v2);
  }

  if (*(a1 + 24) == 1)
  {
    if (*(a1 + 55) < 0)
    {
      operator delete(*(a1 + 32));
    }

    *(a1 + 24) = 0;
  }
}

void sub_10030AA50(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unsigned int *a5, unsigned int *a6, uint64_t a7, uint64_t *a8, uint64_t a9, int *a10, float *a11, int *a12, unsigned __int16 *a13, uint64_t *a14, char *a15)
{
  v15 = *a3;
  v16 = *a4;
  v17 = *a5;
  v18 = *a6;
  v28[0] = 0;
  if (*a7 == 1)
  {
    if (*(a7 + 31) < 0)
    {
      v19 = a8;
      v20 = v18;
      v21 = v17;
      v22 = v16;
      v23 = v15;
      v24 = a2;
      sub_100003228(&v29, *(a7 + 8), *(a7 + 16));
      a2 = v24;
      v15 = v23;
      v16 = v22;
      v17 = v21;
      v18 = v20;
      a8 = v19;
    }

    else
    {
      v29 = *(a7 + 8);
      v30 = *(a7 + 24);
    }

    v28[0] = 1;
  }

  v25 = *a8;
  *__p = *a9;
  v27 = *(a9 + 16);
  *(a9 + 8) = 0;
  *(a9 + 16) = 0;
  *a9 = 0;
  sub_10031BF10(a2, v15, v16, v17, v18, v28, v25, __p, *a11, *a10, *a12, *a13, *a14, *a15);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v28[0] == 1 && SHIBYTE(v30) < 0)
  {
    operator delete(v29);
  }
}

void sub_10030ABCC(std::logic_error *a1, uint64_t a2, uint64_t a3, int a4, void *a5)
{
  std::logic_error::logic_error(&v12, a1);
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = -1;
  v12.__vftable = &off_100448FF8;
  v13 = off_100449020;
  sub_10030B454(&v18, &v12);
  v19 = a2;
  v20 = a3;
  v21 = a4;
  v11[0] = off_100433458;
  memset(&v11[1], 0, 24);
  v10 = a5[1] - *a5;
  if (v10)
  {
    if ((v10 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_10000FC84();
  }

  sub_10030B174(&v18, v11);
}

void sub_10030AEF0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
    sub_10000D388(a1);
  }

  sub_10000D388(a1);
}

void sub_10030AF18(std::out_of_range *a1)
{
  a1[1].__vftable = &off_100431E10;
  imp = a1[1].__imp_.__imp_;
  if (imp)
  {
    v2 = a1;
    v3 = (*(*imp + 32))(a1[1].__imp_.__imp_);
    a1 = v2;
    if (v3)
    {
      v2[1].__imp_.__imp_ = 0;
    }
  }

  std::out_of_range::~out_of_range(a1);
}

uint64_t sub_10030AFAC(uint64_t a1, uint64_t a2)
{
  *(a1 + 56) = &off_100431F30;
  v4 = *(a2 + 24);
  *(a1 + 16) = &off_100431E10;
  *(a1 + 24) = v4;
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  v5 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 32) = v5;
  *a1 = &off_100448F58;
  *(a1 + 16) = off_100448F90;
  *(a1 + 56) = &off_100448FC8;
  return a1;
}

void sub_10030B0E0(std::out_of_range *a1)
{
  a1[1].__vftable = &off_100431E10;
  imp = a1[1].__imp_.__imp_;
  if (imp)
  {
    v2 = a1;
    v3 = (*(*imp + 32))(a1[1].__imp_.__imp_);
    a1 = v2;
    if (v3)
    {
      v2[1].__imp_.__imp_ = 0;
    }
  }

  std::out_of_range::~out_of_range(a1);
}

void sub_10030B410(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_10003B91C(va);
  _Unwind_Resume(a1);
}

void sub_10030B424(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_10003B870(va);
  sub_10003B91C(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_10030B454(uint64_t a1, uint64_t a2)
{
  *(a1 + 56) = &off_100431F30;
  v4 = std::logic_error::logic_error(a1, a2);
  v5 = &v4[1];
  v6 = *(a2 + 24);
  *(a1 + 16) = &off_100431E10;
  *(a1 + 24) = v6;
  if (v6)
  {
    (*(*v6 + 24))(v6);
  }

  v7 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 32) = v7;
  *a1 = &off_100448F58;
  *(a1 + 16) = off_100448F90;
  *(a1 + 56) = &off_100448FC8;
  sub_10000D87C(v5, a2 + 16);
  return a1;
}

void sub_10030B5A8(std::out_of_range *a1)
{
  a1[1].__vftable = &off_100431E10;
  imp = a1[1].__imp_.__imp_;
  if (imp)
  {
    v2 = a1;
    v3 = (*(*imp + 32))(a1[1].__imp_.__imp_);
    a1 = v2;
    if (v3)
    {
      v2[1].__imp_.__imp_ = 0;
    }
  }

  std::out_of_range::~out_of_range(a1);
}

void sub_10030B63C(std::out_of_range *this)
{
  this[1].__vftable = &off_100431E10;
  imp = this[1].__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    this[1].__imp_.__imp_ = 0;
  }

  std::out_of_range::~out_of_range(this);

  operator delete();
}

void sub_10030B75C(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x40uLL);
  sub_10030AFAC(exception, a1);
}

void sub_10030B7B8(std::out_of_range *a1)
{
  a1->__vftable = &off_100431E10;
  imp = a1->__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    a1->__imp_.__imp_ = 0;
  }

  std::out_of_range::~out_of_range(a1 - 1);
}

void sub_10030B840(std::out_of_range *a1)
{
  a1->__vftable = &off_100431E10;
  imp = a1->__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    a1->__imp_.__imp_ = 0;
  }

  std::out_of_range::~out_of_range(a1 - 1);

  operator delete();
}

void sub_10030B970(void *a1)
{
  v2 = *(*a1 - 32);
  exception = __cxa_allocate_exception(0x40uLL);
  sub_10030AFAC(exception, a1 + v2);
}

void sub_10030B9E4(void *a1)
{
  v1 = (a1 + *(*a1 - 40));
  v1[1].__vftable = &off_100431E10;
  imp = v1[1].__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    v1[1].__imp_.__imp_ = 0;
  }

  std::out_of_range::~out_of_range(v1);
}

void sub_10030BA84(void *a1)
{
  v1 = (a1 + *(*a1 - 40));
  v1[1].__vftable = &off_100431E10;
  imp = v1[1].__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    v1[1].__imp_.__imp_ = 0;
  }

  std::out_of_range::~out_of_range(v1);

  operator delete();
}

void sub_10030BB38(std::out_of_range *this)
{
  this[1].__vftable = &off_100431E10;
  imp = this[1].__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    this[1].__imp_.__imp_ = 0;
  }

  std::out_of_range::~out_of_range(this);

  operator delete();
}

void sub_10030BBD8(std::out_of_range *a1)
{
  a1->__vftable = &off_100431E10;
  imp = a1->__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    a1->__imp_.__imp_ = 0;
  }

  std::out_of_range::~out_of_range(a1 - 1);
}

void sub_10030BC60(std::out_of_range *a1)
{
  a1->__vftable = &off_100431E10;
  imp = a1->__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    a1->__imp_.__imp_ = 0;
  }

  std::out_of_range::~out_of_range(a1 - 1);

  operator delete();
}

uint64_t sub_10030BCFC(uint64_t a1, uint64_t a2)
{
  *(a1 + 56) = &off_100431F30;
  v4 = std::logic_error::logic_error(a1, a2);
  v5 = &v4[1];
  v6 = *(a2 + 24);
  *(a1 + 16) = &off_100431E10;
  *(a1 + 24) = v6;
  if (v6)
  {
    (*(*v6 + 24))(v6);
  }

  v7 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 32) = v7;
  *a1 = &off_100448F58;
  *(a1 + 16) = off_100448F90;
  *(a1 + 56) = &off_100448FC8;
  sub_10000D87C(v5, a2 + 16);
  return a1;
}

void sub_10030BE7C(uint64_t a1)
{
  objc_destroyWeak((a1 + 8));

  operator delete();
}

void sub_10030BEC8(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 8));
  [WeakRetained strategyChanged:a2];
}

uint64_t sub_10030BF2C(uint64_t result)
{
  v2 = *(result + 8);
  v1 = *(result + 16);
  if (v1 == v2)
  {
    v3 = *result;
    if (!*result)
    {
      return result;
    }

    goto LABEL_3;
  }

  do
  {
    if (*(v1 - 48) == 1)
    {
      *(v1 - 48) = 0;
    }

    v1 -= 88;
  }

  while (v1 != v2);
  *(result + 16) = v1;
  v3 = *result;
  if (*result)
  {
LABEL_3:
    v4 = result;
    operator delete(v3);
    return v4;
  }

  return result;
}

uint64_t sub_10030BF9C(uint64_t *a1, int *a2, int *a3, int *a4, unsigned int *a5, char *a6, char *a7, unsigned int *a8, double *a9, uint64_t *a10)
{
  v10 = 0x2E8BA2E8BA2E8BA3 * ((a1[1] - *a1) >> 3);
  v11 = v10 + 1;
  if ((v10 + 1) > 0x2E8BA2E8BA2E8BALL)
  {
    sub_10000FC84();
  }

  if (0x5D1745D1745D1746 * ((a1[2] - *a1) >> 3) > v11)
  {
    v11 = 0x5D1745D1745D1746 * ((a1[2] - *a1) >> 3);
  }

  if ((0x2E8BA2E8BA2E8BA3 * ((a1[2] - *a1) >> 3)) >= 0x1745D1745D1745DLL)
  {
    v13 = 0x2E8BA2E8BA2E8BALL;
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    if (v13 <= 0x2E8BA2E8BA2E8BALL)
    {
      operator new();
    }

    sub_10000D444();
  }

  v32 = 8 * ((a1[1] - *a1) >> 3);
  v15 = a2 + 2;
  v14 = *a2;
  v16 = *a2 >> 31;
  if (v16 == *a2)
  {
    *&v36 = *v15;
    v16 = v14;
  }

  else
  {
    v36 = *v15;
    v37 = a2[6];
  }

  v35 = v16 ^ v14;
  v34 = *a4;
  v33[0] = 1;
  sub_100336A18(88 * v10, &v35, v33, *a5, *a6, *a7, *a8, *a10, *a3, *a9);
  v17 = *a1;
  v18 = a1[1];
  v19 = 88 * v10 + *a1 - v18;
  if (v18 != *a1)
  {
    v20 = 0;
    do
    {
      v23 = v19 + v20;
      v25 = &v17[v20 + 8];
      v24 = *&v17[v20];
      if (v24 == v24 >> 31)
      {
        *(v23 + 8) = *v25;
        v26 = v24;
      }

      else
      {
        v27 = *v25;
        *(v23 + 24) = *&v17[v20 + 24];
        *(v23 + 8) = v27;
        v26 = *&v17[v20];
        v24 = v26 >> 31;
      }

      v28 = v26 ^ v24;
      v29 = v19 + v20;
      *v29 = v28;
      v30 = &v17[v20];
      *(v29 + 32) = *&v17[v20 + 32];
      *(v29 + 40) = 0;
      if (v17[v20 + 40] == 1)
      {
        *(v29 + 44) = *(v30 + 11);
        *(v29 + 40) = 1;
      }

      v21 = *(v30 + 3);
      v22 = *(v30 + 4);
      *(v29 + 80) = *(v30 + 20);
      *(v29 + 48) = v21;
      *(v29 + 64) = v22;
      v20 += 88;
    }

    while (&v17[v20] != v18);
    do
    {
      if (v17[40] == 1)
      {
        v17[40] = 0;
      }

      v17 += 88;
    }

    while (v17 != v18);
    v17 = *a1;
  }

  *a1 = v19;
  a1[1] = v32 + 88;
  a1[2] = 0;
  if (v17)
  {
    operator delete(v17);
  }

  return v32 + 88;
}

void sub_10030C268(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10030BF2C(va);
  _Unwind_Resume(a1);
}

void sub_10030C27C()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_10030C2EC()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void sub_10030C35C()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

void sub_10030CD98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, ...)
{
  va_start(va, a36);
  sub_10002BB1C(&a16);
  sub_10030D284(&a18);
  sub_10030D580(va);

  _Unwind_Resume(a1);
}

void sub_10030D240(id a1)
{
  v1 = os_log_create("com.apple.locationd.Pipeline", "Generic");
  v2 = qword_10045B058;
  qword_10045B058 = v1;
}

uint64_t sub_10030D284(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *(a1 + 16);
    v4 = *(a1 + 8);
    if (v3 != v2)
    {
      v5 = v3 - 11;
      v6 = v3 - 11;
      v7 = v3 - 11;
      do
      {
        v8 = *v7;
        v7 -= 11;
        (*v8)(v6);
        v5 -= 11;
        v9 = v6 == v2;
        v6 = v7;
      }

      while (!v9);
      v4 = *(a1 + 8);
    }

    *(a1 + 16) = v2;
    operator delete(v4);
  }

  return a1;
}