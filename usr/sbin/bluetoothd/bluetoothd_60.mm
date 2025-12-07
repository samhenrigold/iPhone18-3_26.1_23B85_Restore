void sub_100409CAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  if (*(v32 - 105) < 0)
  {
    operator delete(*(v32 - 128));
  }

  _Unwind_Resume(exception_object);
}

void sub_100409E40(uint64_t a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100828C38();
  }

  v2 = off_100B50A98;
  if (*(a1 + 55) < 0)
  {
    sub_100008904(__dst, *(a1 + 32), *(a1 + 40));
  }

  else
  {
    *__dst = *(a1 + 32);
    v5 = *(a1 + 48);
  }

  sub_100007E30(__p, "");
  sub_1005A24D4(v2, 3703, __dst, 0, 0, 0, __p);
}

void sub_100409F00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_100409F34(IOBTDebug *a1, const char *a2)
{
  if (*(a1 + 184) == 1)
  {
    IOBTDebug::create(a1);
  }

  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "FW log streaming disabled, skipping BTDebug log dump", v3, 2u);
  }
}

void sub_100409FF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1003E772C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10040A014(unsigned __int8 *a1, uint64_t a2, char *a3, char **a4)
{
  v6 = a2;
  v54 = 0;
  v55 = &v54;
  v56 = 0x2020000000;
  v57 = -536870186;
  v8 = sub_10000C7D0(a1, a2);
  v10 = sub_100410F0C(v8, v9);
  if (v10 && a1[200] == 1)
  {
    IOBTDebug::create(v10);
  }

  v12 = sub_10000C7D0(v10, v11);
  v14 = sub_100410F34(v12, v13);
  if (v14 && a1[200] == 1)
  {
    connect = 0;
    v16 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = "triggerPcieCoreDump";
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
    }

    values = @"AppleSunriseBluetooth";
    keys = @"IOUserClass";
    v17 = sub_10022EB48(&keys, &values, 1);
    MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v17);
    v19 = MatchingService;
    if (!MatchingService)
    {
      v29 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "PCIe could not find AppleSunriseBluetooth service", buf, 2u);
      }

      goto LABEL_61;
    }

    v20 = IOServiceOpen(MatchingService, mach_task_self_, 0, &connect);
    if (v20)
    {
      v21 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "triggerPcieCoreDump";
        *&buf[12] = 1024;
        *&buf[14] = v20;
        v22 = v21;
LABEL_27:
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%s failed: %#x", buf, 0x12u);
      }
    }

    else
    {
      v30 = IOConnectCallScalarMethod(connect, 4u, 0, 0, 0, 0);
      v31 = qword_100BCE8D8;
      v32 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT);
      if (!v30)
      {
        if (v32)
        {
          *buf = 136315138;
          *&buf[4] = "triggerPcieCoreDump";
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "%s Done...", buf, 0xCu);
        }

        if (v6 == 1214)
        {
          v33 = qword_100BCE8D8;
          if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            *&buf[4] = "triggerPcieCoreDump";
            _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "%s: FW Crash - Checking for AppleSunriseFWDumpReason", buf, 0xCu);
          }

          v34 = 0;
          while (1)
          {
            v35 = IORegistryEntrySearchCFProperty(v19, "IOService", @"AppleSunriseFWDumpReason", kCFAllocatorDefault, 1u);
            v36 = v35;
            if (!v35)
            {
              break;
            }

            CStringPtr = CFStringGetCStringPtr(v35, 0x600u);
            v38 = CStringPtr;
            if (!CStringPtr)
            {
              if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
              {
                sub_1008290BC();
              }

              goto LABEL_58;
            }

            if (*CStringPtr)
            {
              memset(__dst, 0, sizeof(__dst));
              strlcpy(__dst, CStringPtr, 0x80uLL);
              v41 = strtok(__dst, "-");
              v76 = 0;
              v74 = 0u;
              v75 = 0u;
              v72 = 0u;
              v73 = 0u;
              v70 = 0u;
              v71 = 0u;
              v68 = 0u;
              v69 = 0u;
              v66 = 0u;
              v67 = 0u;
              v64 = 0u;
              v65 = 0u;
              memset(v63, 0, sizeof(v63));
              memset(buf, 0, sizeof(buf));
              sub_100007AD0(buf);
              __p[0] = 0;
              __p[1] = 0;
              v52 = 0;
              sub_100007E30(__p, v41);
              sub_10050DFDC(__p);
              v42 = *&buf[16];
              *&buf[*(*&buf[16] - 24) + 24] = *&buf[*(*&buf[16] - 24) + 24] & 0xFFFFFFB5 | 8;
              *&buf[*(v42 - 24) + 24] |= 0x4000u;
              v43 = &buf[*(v42 - 24) + 16];
              if (*(v43 + 36) == -1)
              {
                std::ios_base::getloc(&buf[*(v42 - 24) + 16]);
                v44 = std::locale::use_facet(&v49, &std::ctype<char>::id);
                (v44->__vftable[2].~facet_0)(v44, 32);
                std::locale::~locale(&v49);
              }

              *(v43 + 36) = 48;
              std::ostream::operator<<();
              v45 = qword_100BCE8D8;
              if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
              {
                std::stringbuf::str();
                v46 = v50 >= 0 ? &v49 : v49.__locale_;
                *v58 = 136315394;
                v59 = v46;
                v60 = 2080;
                v61 = v38;
                _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "fwCrashSignature (%s) %s\n", v58, 0x16u);
                if (v50 < 0)
                {
                  operator delete(v49.__locale_);
                }
              }

              if (SHIBYTE(v52) < 0)
              {
                operator delete(__p[0]);
              }

              *&buf[16] = v47;
              if (SHIBYTE(v65) < 0)
              {
                operator delete(*(&v64 + 1));
              }

              std::locale::~locale(v63);
              std::iostream::~basic_iostream();
              std::ios::~ios();
LABEL_58:
              CFRelease(v36);
              goto LABEL_59;
            }

            v39 = qword_100BCE8D8;
            if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315394;
              *&buf[4] = "triggerPcieCoreDump";
              *&buf[12] = 1024;
              *&buf[14] = v34;
              _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "%s: fwCrashSignature is empty, retry count = %d\n", buf, 0x12u);
            }

            usleep(0x2710u);
            if (++v34 == 20)
            {
              goto LABEL_58;
            }
          }

          v40 = qword_100BCE8D8;
          if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            *&buf[4] = "triggerPcieCoreDump";
            _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "%s: Checking for AppleSunriseFWDumpReason - fwProperty not found", buf, 0xCu);
          }
        }

LABEL_59:
        *(v55 + 6) = 0;
        goto LABEL_60;
      }

      if (v32)
      {
        *buf = 136315394;
        *&buf[4] = "triggerPcieCoreDump";
        *&buf[12] = 1024;
        *&buf[14] = v30;
        v22 = v31;
        goto LABEL_27;
      }
    }

LABEL_60:
    IOObjectRelease(v19);
LABEL_61:
    if (connect)
    {
      IOServiceClose(connect);
    }

LABEL_63:
    v28 = 1;
    goto LABEL_64;
  }

  v23 = sub_10000C7D0(v14, v15);
  if (*(v23 + 800) >= 0x7D0u)
  {
    v25 = sub_10000C7D0(v23, v24);
    if (*(v25 + 800) <= 0xF9Fu && *(sub_10000C7D0(v25, v26) + 800) >= 0xBB8u)
    {
      if (sub_1001A63E4(a3, 1, a1[200], a4) && os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
      {
        sub_100829034();
      }

      *(v55 + 6) = 0;
      goto LABEL_63;
    }
  }

  v27 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "FW PCIe core dumps disabled or not supported", buf, 2u);
  }

  v28 = 0;
LABEL_64:
  if (*(v55 + 6))
  {
    (*(*a1 + 504))(a1, a3);
  }

  _Block_object_dispose(&v54, 8);
  return v28;
}

void sub_10040AAFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, std::locale a5, uint64_t a6, uint64_t a7, void *__p, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, std::locale a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, ...)
{
  if (SHIBYTE(a20) < 0)
  {
    operator delete(a18);
  }

  std::ios::~ios();
  _Block_object_dispose(&a28, 8);
  _Unwind_Resume(a1);
}

void sub_10040ABAC(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  *(*(v2 + 8) + 24) = a2;
  dispatch_group_leave(v3);
}

void sub_10040ABBC(void *a1, uint64_t a2)
{
  v3 = objc_retainBlock(a1);
  v4 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109120;
    v5[1] = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "PCIe core dump complete: 0x%08X", v5, 8u);
  }

  v3[2](v3, a2);
}

void sub_10040ACA0(uint64_t a1)
{
  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v14 = 67109376;
    v15 = v3;
    v16 = 2048;
    v17 = qword_100B6D6E0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "setDoubleHeightStatusBar: %d %p", &v14, 0x12u);
  }

  v4 = dword_100B6D6F8;
  if (!dword_100B6D6F8)
  {
    v4 = getpid();
    dword_100B6D6F8 = v4;
  }

  v5 = qword_100B6D6E0;
  if (v4)
  {
    v6 = qword_100B6D6E0 == 0;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    v7 = [SBSStatusBarStyleOverridesAssertion assertionWithStatusBarStyleOverrides:0x200000 forPID:v4 exclusive:0 showsWhenForeground:1];
    v8 = qword_100B6D6E0;
    qword_100B6D6E0 = v7;

    LODWORD(v4) = dword_100B6D6F8;
    v5 = qword_100B6D6E0;
  }

  if (v4 && v5)
  {
    if (*(a1 + 32) == 1)
    {
      if (qword_100B6D6F0)
      {
        [qword_100B6D6F0 invalidate];
        v9 = qword_100B6D6F0;
        qword_100B6D6F0 = 0;
      }

      if ((byte_100B6D6E8 & 1) == 0)
      {
        v10 = qword_100BCE8D8;
        if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v14) = 0;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Acquire assertion", &v14, 2u);
        }

        [qword_100B6D6E0 acquireWithHandler:&stru_100AF3500 invalidationHandler:&stru_100AF3520];
        [qword_100B6D6E0 setStatusString:@"Recording Bluetooth Data"];
      }
    }

    else if (byte_100B6D6E8 == 1 && !qword_100B6D6F0)
    {
      v12 = [NSTimer scheduledTimerWithTimeInterval:0 repeats:&stru_100AF3560 block:2.0];
      v13 = qword_100B6D6F0;
      qword_100B6D6F0 = v12;
    }
  }

  else
  {
    v11 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 67109376;
      v15 = v4;
      v16 = 2048;
      v17 = v5;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Couldn't get pid: %d or assertion: %p", &v14, 0x12u);
    }
  }
}

void sub_10040AF0C(id a1, BOOL a2)
{
  v2 = a2;
  v3 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 67109120;
    v4[1] = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "SBSStatusBarStyleOverridesAssertion: Acquire handler, acquired: %d", v4, 8u);
  }

  byte_100B6D6E8 = v2;
}

void sub_10040AFB8(id a1)
{
  v1 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "SBSStatusBarStyleOverridesAssertion: Invalidation handler", v2, 2u);
  }

  byte_100B6D6E8 = 0;
}

void sub_10040B028(id a1, NSTimer *a2)
{
  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Invalidating assert", v3, 2u);
  }

  [qword_100B6D6E0 invalidate];
  byte_100B6D6E8 = 0;
}

uint64_t sub_10040B0CC(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10040B15C;
  block[3] = &unk_100ADF8F8;
  block[4] = a1;
  if (qword_100B6D700 != -1)
  {
    dispatch_once(&qword_100B6D700, block);
  }

  return byte_100B6D6FC;
}

void sub_10040B15C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "ForcePhyStats");
  v3 = (*(*v2 + 72))(v2, buf, __p, &byte_100B6D6FC);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  if (v9 < 0)
  {
    operator delete(*buf);
    if (!v3)
    {
      return;
    }
  }

  else if (!v3)
  {
    return;
  }

  v4 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    if (byte_100B6D6FC)
    {
      v5 = "enabled";
    }

    else
    {
      v5 = "disabled";
    }

    *buf = 136446210;
    *&buf[4] = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Forcing PHY Stats - %{public}s", buf, 0xCu);
  }

  *(v1 + 201) = byte_100B6D6FC;
}

void sub_10040B2C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10040B2FC(uint64_t a1, uint64_t a2)
{
  if (qword_100B6D710 != -1)
  {
    sub_100829264();
  }

  return byte_100B6D708;
}

void sub_10040B334(id a1)
{
  v1 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "ForceLatencyStats");
  v2 = (*(*v1 + 72))(v1, buf, __p, &byte_100B6D708);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8 < 0)
  {
    operator delete(*buf);
    if (!v2)
    {
      return;
    }
  }

  else if (!v2)
  {
    return;
  }

  v3 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    if (byte_100B6D708)
    {
      v4 = "enabled";
    }

    else
    {
      v4 = "disabled";
    }

    *buf = 136446210;
    *&buf[4] = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Forcing Latency Stats - %{public}s", buf, 0xCu);
  }
}

void sub_10040B484(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10040B4C0(uint64_t a1, uint64_t a2)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10040B550;
  block[3] = &unk_100ADF8F8;
  block[4] = a2;
  if (qword_100B6D720 != -1)
  {
    dispatch_once(&qword_100B6D720, block);
  }

  return byte_100B6D718;
}

void sub_10040B550(uint64_t a1)
{
  v12 = 0;
  v2 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "ScanAllowListEnabled");
  (*(*v2 + 72))(v2, buf, __p, &v12 + 1);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  if (v14 < 0)
  {
    operator delete(*buf);
  }

  v3 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    if (HIBYTE(v12))
    {
      v4 = "enabled";
    }

    else
    {
      v4 = "disabled";
    }

    *buf = 136315138;
    *&buf[4] = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "ScanAllowList is %s", buf, 0xCu);
  }

  if (HIBYTE(v12) == 1)
  {
    byte_100B6D718 = 1;
    v5 = sub_10000E92C();
    sub_100007E30(buf, "LEScanAgentList");
    (*(*v5 + 48))(v5, buf, *(a1 + 32));
    goto LABEL_23;
  }

  v6 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "ScanDenyListEnabled");
  (*(*v6 + 72))(v6, buf, __p, &v12);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  if (v14 < 0)
  {
    operator delete(*buf);
  }

  v7 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    if (v12)
    {
      v8 = "enabled";
    }

    else
    {
      v8 = "disabled";
    }

    *buf = 136315138;
    *&buf[4] = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "ScanDenyList is %s", buf, 0xCu);
  }

  if (v12 == 1)
  {
    byte_100B6D718 = 2;
    v9 = sub_10000E92C();
    sub_100007E30(buf, "LEScanAgentList");
    (*(*v9 + 48))(v9, buf, *(a1 + 32));
LABEL_23:
    if (v14 < 0)
    {
      operator delete(*buf);
    }
  }
}

void sub_10040B84C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10040B898(uint64_t a1, uint64_t a2)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10040B928;
  block[3] = &unk_100ADF8F8;
  block[4] = a2;
  if (qword_100B6D730 != -1)
  {
    dispatch_once(&qword_100B6D730, block);
  }

  return byte_100B6D728;
}

void sub_10040B928(uint64_t a1)
{
  v12 = 0;
  v2 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "ConnectionScanAllowListEnabled");
  (*(*v2 + 72))(v2, buf, __p, &v12 + 1);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  if (v14 < 0)
  {
    operator delete(*buf);
  }

  v3 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    if (HIBYTE(v12))
    {
      v4 = "enabled";
    }

    else
    {
      v4 = "disabled";
    }

    *buf = 136315138;
    *&buf[4] = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "ConnectionScanAllowList is %s", buf, 0xCu);
  }

  if (HIBYTE(v12) == 1)
  {
    byte_100B6D728 = 1;
    v5 = sub_10000E92C();
    sub_100007E30(buf, "LEConnectionScanAgentList");
    (*(*v5 + 48))(v5, buf, *(a1 + 32));
    goto LABEL_23;
  }

  v6 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "ConnectionScanDenyListEnabled");
  (*(*v6 + 72))(v6, buf, __p, &v12);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  if (v14 < 0)
  {
    operator delete(*buf);
  }

  v7 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    if (v12)
    {
      v8 = "enabled";
    }

    else
    {
      v8 = "disabled";
    }

    *buf = 136315138;
    *&buf[4] = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "ConnectionScanDenyList is %s", buf, 0xCu);
  }

  if (v12 == 1)
  {
    byte_100B6D728 = 2;
    v9 = sub_10000E92C();
    sub_100007E30(buf, "LEConnectionScanAgentList");
    (*(*v9 + 48))(v9, buf, *(a1 + 32));
LABEL_23:
    if (v14 < 0)
    {
      operator delete(*buf);
    }
  }
}

void sub_10040BC24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10040BC70(uint64_t a1, uint64_t a2)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10040BD00;
  block[3] = &unk_100ADF8F8;
  block[4] = a2;
  if (qword_100B6D740 != -1)
  {
    dispatch_once(&qword_100B6D740, block);
  }

  return byte_100B6D738;
}

void sub_10040BD00(uint64_t a1)
{
  v12 = 0;
  v2 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "advAllowListEnabled");
  (*(*v2 + 72))(v2, buf, __p, &v12 + 1);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  if (v14 < 0)
  {
    operator delete(*buf);
  }

  v3 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    if (HIBYTE(v12))
    {
      v4 = "enabled";
    }

    else
    {
      v4 = "disabled";
    }

    *buf = 136315138;
    *&buf[4] = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "AdvAllowList is %s", buf, 0xCu);
  }

  if (HIBYTE(v12) == 1)
  {
    byte_100B6D738 = 1;
    v5 = sub_10000E92C();
    sub_100007E30(buf, "AdvAgentList");
    (*(*v5 + 48))(v5, buf, *(a1 + 32));
    goto LABEL_23;
  }

  v6 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "AdvDenyListEnabled");
  (*(*v6 + 72))(v6, buf, __p, &v12);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  if (v14 < 0)
  {
    operator delete(*buf);
  }

  v7 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    if (v12)
    {
      v8 = "enabled";
    }

    else
    {
      v8 = "disabled";
    }

    *buf = 136315138;
    *&buf[4] = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "AdvDenyList is %s", buf, 0xCu);
  }

  if (v12 == 1)
  {
    byte_100B6D738 = 2;
    v9 = sub_10000E92C();
    sub_100007E30(buf, "AdvAgentList");
    (*(*v9 + 48))(v9, buf, *(a1 + 32));
LABEL_23:
    if (v14 < 0)
    {
      operator delete(*buf);
    }
  }
}

void sub_10040BFFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10040C0D0(uint64_t a1, char *a2, _BYTE *a3, uint64_t a4, uint64_t a5)
{
  memset(&__str, 0, sizeof(__str));
  *a4 = 0;
  *(a4 + 8) = 0;
  sub_100007E30(buf, "Diversity");
  sub_100007E30(__p, a2);
  v10 = (*(*a1 + 56))(a1, buf, __p, &__str);
  *a3 = v10;
  if (v18 < 0)
  {
    operator delete(__p[0]);
  }

  if (v23 < 0)
  {
    operator delete(*buf);
  }

  if (*a3 == 1)
  {
    if (sub_10040C308(v10, &__str, a4))
    {
      v11 = qword_100BCE8D8;
      if (!os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_14;
      }

      p_str = &__str;
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        p_str = __str.__r_.__value_.__r.__words[0];
      }

      *buf = 136315394;
      *&buf[4] = a5;
      v21 = 2080;
      v22 = p_str;
      v13 = "Diversity coex %s override: %s";
      v14 = v11;
      v15 = 22;
    }

    else
    {
      *a3 = 0;
      v16 = qword_100BCE8D8;
      if (!os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_14;
      }

      *buf = 136315138;
      *&buf[4] = a5;
      v13 = "Warning: Diversity coex %s override: Invalid.  Override disabled.";
      v14 = v16;
      v15 = 12;
    }

    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v13, buf, v15);
  }

LABEL_14:
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }
}

void sub_10040C2B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_10040C308(int a1, std::string *__str, uint64_t a3)
{
  size = HIBYTE(__str->__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) != 0)
  {
    size = __str->__r_.__value_.__l.__size_;
  }

  if (size == 20)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v15 = 0;
    v14 = 0;
    while (1)
    {
      memset(&v13, 0, sizeof(v13));
      std::string::basic_string(&v13, __str, v6, 2uLL, &__endptr);
      __endptr = 0;
      v9 = (v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v13 : v13.__r_.__value_.__r.__words[0];
      *(&v14 + v7) = strtol(v9, &__endptr, 16);
      v10 = *__endptr;
      if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v13.__r_.__value_.__l.__data_);
      }

      if (v10)
      {
        break;
      }

      v8 = v7 > 8;
      v6 += 2;
      if (++v7 == 10)
      {
        *a3 = v14;
        *(a3 + 8) = v15;
        return 1;
      }
    }
  }

  else
  {
    return 0;
  }

  return v8;
}

void sub_10040C4C8(_BYTE *a1, uint64_t a2)
{
  v2 = a2;
  v4 = sub_10000C798(a1, a2);
  if ((*(*v4 + 384))(v4))
  {
    if (a1[253] != v2)
    {
      a1[253] = v2;
      if (v2)
      {
        v5 = @"yes";
      }

      else
      {
        v5 = @"no";
      }

      CFPreferencesSetAppValue(@"ENLoggingEntitledApp", v5, @"com.apple.MobileBluetooth.debug");
      CFPreferencesAppSynchronize(@"com.apple.MobileBluetooth.debug");
      v6 = (*(*a1 + 208))(a1);
      v7 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        v8 = a1[253];
        v10[0] = 67109376;
        v10[1] = v8;
        v11 = 1024;
        v12 = v6;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "fENAppHasLoggingEntitlement:%d plistEntitled:%d", v10, 0xEu);
      }

      (*(*a1 + 256))(a1);
      sub_100404A30(a1);
    }

    v9 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10[0]) = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "setENAppHasLoggingEntitlement", v10, 2u);
    }
  }
}

void sub_10040C6B4(uint64_t a1, char a2, char a3)
{
  v3 = *(a1 + 24);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10040C730;
  v4[3] = &unk_100AEB940;
  v4[4] = a1;
  v5 = a2;
  v6 = a3;
  dispatch_sync(v3, v4);
}

void sub_10040C730(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = sub_10000C798(a1, a2);
  if ((*(*v4 + 384))(v4))
  {
    v5 = *(a1 + 40);
    if (v5 == v3[255])
    {
      v6 = *(a1 + 41);
      v7 = v3[254];
      if (v6 == v7)
      {
LABEL_15:
        v10 = qword_100BCE8D8;
        if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
        {
          *v11 = 0;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "setENLoggingParams", v11, 2u);
        }

        return;
      }
    }

    else
    {
      v3[255] = v5;
      if (v5)
      {
        v8 = @"yes";
      }

      else
      {
        v8 = @"no";
      }

      CFPreferencesSetAppValue(@"rpiLogging", v8, @"com.apple.MobileBluetooth.debug");
      CFPreferencesAppSynchronize(@"com.apple.MobileBluetooth.debug");
      v6 = *(a1 + 41);
      v7 = v3[254];
    }

    if (v6 != v7)
    {
      v3[254] = v6;
      if (v6)
      {
        v9 = @"yes";
      }

      else
      {
        v9 = @"no";
      }

      CFPreferencesSetAppValue(@"sensitiveLogging", v9, @"com.apple.MobileBluetooth.debug");
      CFPreferencesAppSynchronize(@"com.apple.MobileBluetooth.debug");
    }

    (*(*v3 + 256))(v3);
    sub_100404A30(v3);
    goto LABEL_15;
  }
}

BOOL sub_10040C8C0()
{
  v0 = CFPreferencesCopyAppValue(@"ENLoggingEntitledApp", @"com.apple.MobileBluetooth.debug");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = CFEqual(v0, @"yes") != 0;
  CFRelease(v1);
  return v2;
}

BOOL sub_10040C920()
{
  v0 = CFPreferencesCopyAppValue(@"sensitiveLogging", @"com.apple.MobileBluetooth.debug");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = CFEqual(v0, @"yes") != 0;
  CFRelease(v1);
  return v2;
}

BOOL sub_10040C980()
{
  v0 = CFPreferencesCopyAppValue(@"rpiLogging", @"com.apple.MobileBluetooth.debug");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = CFEqual(v0, @"yes") != 0;
  CFRelease(v1);
  return v2;
}

void sub_10040C9E0(_BYTE *a1)
{
  a1[257] = a1[254];
  if (((*(*a1 + 8))(a1) && a1[256] != 1 || a1[253] == 1) && a1[254] == 1)
  {
    v2 = a1[255];
  }

  else
  {
    v2 = 0;
  }

  v3 = v2 & 1;
  a1[258] = v2 & 1;
  v4 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a1[254];
    v6 = a1[255];
    v7 = a1[256];
    v8 = a1[253];
    v9 = a1[257];
    v10[0] = 67110400;
    v10[1] = v5;
    v11 = 1024;
    v12 = v6;
    v13 = 1024;
    v14 = v7;
    v15 = 1024;
    v16 = v8;
    v17 = 1024;
    v18 = v9;
    v19 = 1024;
    v20 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "fENSensitiveLogging: %d, fENRPILogging: %d, fRequireENLoggingProfileOnInternal:%d, fENAppHasLoggingEntitlement:%d, fPrivacySensitiveENLoggingEnabled:%d fRPIENLoggingEnabled: %d", v10, 0x26u);
  }
}

uint64_t sub_10040CB34(_BYTE *a1)
{
  if (((*(*a1 + 8))(a1) & 1) != 0 || a1[253] == 1)
  {
    v2 = a1[252];
  }

  else
  {
    v2 = 0;
  }

  v3 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v4 = a1[253];
    v5 = a1[252];
    v7[0] = 67109376;
    v7[1] = v4;
    v8 = 1024;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "fENAppHasLoggingEntitlement:%d fInsecureDatabasePath:%d", v7, 0xEu);
  }

  return v2 & 1;
}

uint64_t sub_10040CC70(uint64_t a1, const std::string::value_type *a2, _BYTE *a3, _BYTE *a4, _BYTE *a5, _BYTE *a6, _BYTE *a7)
{
  v13 = *a3;
  v50 = *a4;
  v51 = v13;
  v14 = *a5;
  v15 = *a6;
  v48 = *a7;
  v49 = v14;
  memset(&v47, 0, sizeof(v47));
  sub_100007E30(&v47, "LEConnectionPrioritization");
  std::string::append(&v47, a2);
  v16 = sub_10000E92C();
  if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = &v47;
  }

  else
  {
    v17 = v47.__r_.__value_.__r.__words[0];
  }

  sub_100007E30(buf, v17);
  sub_100007E30(__p, "priority");
  v18 = (*(*v16 + 128))(v16, buf, __p, &v51);
  if (v46 < 0)
  {
    operator delete(__p[0]);
  }

  if (v55 < 0)
  {
    operator delete(*buf);
    if (!v18)
    {
      goto LABEL_14;
    }
  }

  else if (!v18)
  {
    goto LABEL_14;
  }

  v19 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v20 = &v47;
    if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v20 = v47.__r_.__value_.__r.__words[0];
    }

    *buf = 136315394;
    *&buf[4] = v20;
    v53 = 1024;
    v54 = v51;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%s priority parameter set to %d", buf, 0x12u);
  }

LABEL_14:
  v21 = sub_10000E92C();
  if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v22 = &v47;
  }

  else
  {
    v22 = v47.__r_.__value_.__r.__words[0];
  }

  sub_100007E30(buf, v22);
  sub_100007E30(__p, "protectWLAN");
  v23 = (*(*v21 + 128))(v21, buf, __p, &v50);
  if (v46 < 0)
  {
    operator delete(__p[0]);
  }

  if (v55 < 0)
  {
    operator delete(*buf);
    if (!v23)
    {
      goto LABEL_28;
    }
  }

  else if (!v23)
  {
    goto LABEL_28;
  }

  v24 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v25 = &v47;
    if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v25 = v47.__r_.__value_.__r.__words[0];
    }

    *buf = 136315394;
    *&buf[4] = v25;
    v53 = 1024;
    v54 = v50;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%s protectWLAN parameter set to %d", buf, 0x12u);
  }

  v18 = 1;
LABEL_28:
  v26 = sub_10000E92C();
  if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v27 = &v47;
  }

  else
  {
    v27 = v47.__r_.__value_.__r.__words[0];
  }

  sub_100007E30(buf, v27);
  sub_100007E30(__p, "protectLEA");
  v28 = (*(*v26 + 128))(v26, buf, __p, &v49);
  if (v46 < 0)
  {
    operator delete(__p[0]);
  }

  if (v55 < 0)
  {
    operator delete(*buf);
    if (!v28)
    {
      goto LABEL_42;
    }
  }

  else if (!v28)
  {
    goto LABEL_42;
  }

  v29 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v30 = &v47;
    if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v30 = v47.__r_.__value_.__r.__words[0];
    }

    *buf = 136315394;
    *&buf[4] = v30;
    v53 = 1024;
    v54 = v49;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "%s protectLEA parameter set to %d", buf, 0x12u);
  }

  v18 = 1;
LABEL_42:
  v31 = sub_10000E92C();
  if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v32 = &v47;
  }

  else
  {
    v32 = v47.__r_.__value_.__r.__words[0];
  }

  sub_100007E30(buf, v32);
  sub_100007E30(__p, "protectHFPA2DP");
  v33 = (*(*v31 + 128))(v31, buf, __p, &v49);
  if (v46 < 0)
  {
    operator delete(__p[0]);
  }

  if (v55 < 0)
  {
    operator delete(*buf);
    if (!v33)
    {
      goto LABEL_56;
    }
  }

  else if (!v33)
  {
    goto LABEL_56;
  }

  v34 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v35 = &v47;
    if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v35 = v47.__r_.__value_.__r.__words[0];
    }

    *buf = 136315394;
    *&buf[4] = v35;
    v53 = 1024;
    v54 = v15;
    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "%s protectHFPA2DP parameter set to %d", buf, 0x12u);
  }

  v18 = 1;
LABEL_56:
  v36 = sub_10000E92C();
  if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v37 = &v47;
  }

  else
  {
    v37 = v47.__r_.__value_.__r.__words[0];
  }

  sub_100007E30(buf, v37);
  sub_100007E30(__p, "percentageWithCriticalPriority");
  v38 = (*(*v36 + 128))(v36, buf, __p, &v48);
  if (v46 < 0)
  {
    operator delete(__p[0]);
  }

  if (v55 < 0)
  {
    operator delete(*buf);
    if (v38)
    {
LABEL_63:
      v39 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        v40 = &v47;
        if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v40 = v47.__r_.__value_.__r.__words[0];
        }

        *buf = 136315394;
        *&buf[4] = v40;
        v53 = 1024;
        v54 = v48;
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "%s percentageWithCriticalPriority parameter set to %d", buf, 0x12u);
      }

      goto LABEL_69;
    }
  }

  else if (v38)
  {
    goto LABEL_63;
  }

  if (v18)
  {
LABEL_69:
    v41 = v50;
    *a3 = v51;
    *a4 = v41;
    v42 = v48;
    *a5 = v49;
    *a6 = v15;
    *a7 = v42;
    v43 = 1;
    goto LABEL_71;
  }

  v43 = 0;
LABEL_71:
  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v47.__r_.__value_.__l.__data_);
  }

  return v43;
}

void sub_10040D2B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10040D39C(uint64_t a1)
{
  if (!(*(*a1 + 8))(a1))
  {
    goto LABEL_7;
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10040D48C;
  block[3] = &unk_100ADF8F8;
  block[4] = a1;
  if (qword_100B6D750 != -1)
  {
    dispatch_once(&qword_100B6D750, block);
  }

  if (byte_100B6D748 == 1 && byte_100B6D749 == 1)
  {
    v2 = byte_100B6D74A;
  }

  else
  {
LABEL_7:
    v2 = 0;
  }

  return v2 & 1;
}

void sub_10040D48C(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "LEAudioLiveOnEnable");
  v2 = (*(*v1 + 72))(v1, buf, __p, &byte_100B6D748);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  if (v14 < 0)
  {
    operator delete(*buf);
  }

  v4 = sub_10000C7D0(v2, v3);
  byte_100B6D749 = (*(*v4 + 4336))(v4);
  v5 = _os_feature_enabled_impl();
  byte_100B6D74A = v5;
  v6 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109632;
    *&buf[4] = byte_100B6D748;
    v10 = 1024;
    v11 = byte_100B6D749;
    v12 = 1024;
    v13 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "LEAudio LiveOn, liveon enabled:%d, platform supported:%d, feature enabled:%d", buf, 0x14u);
  }
}

void sub_10040D628(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10040D904(uint64_t a1)
{
  *a1 = &off_100AF3678;
  (***(a1 + 8))(*(a1 + 8));
  return a1;
}

void sub_10040D96C(uint64_t a1)
{
  *a1 = &off_100AF3678;
  (***(a1 + 8))(*(a1 + 8));

  operator delete();
}

void sub_10040DA24(uint64_t a1, uint64_t a2)
{
  if (qword_100B50950 != -1)
  {
    sub_100829278();
  }

  v3 = off_100B50948;

  sub_10035B748(v3, a2);
}

void sub_10040DAF8(void (***a1)(void, void, const UInt8 *, void))
{
  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v3[0]) = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Firmware Debug Settings", v3, 2u);
  }

  memset(v3, 0, sizeof(v3));
  if (sub_10040DD2C(@"com.apple.MobileBluetooth.debug", @"fw.TraceMode", -1, 7, off_100B54228) != -1)
  {
    sub_10040E03C();
  }

  if (sub_10040DD2C(@"com.apple.MobileBluetooth.debug", @"fw.TraceLevel", -1, 7, off_100B54268) != -1)
  {
    sub_10040E0D0();
  }

  if (sub_10040E164(@"com.apple.MobileBluetooth.debug", @"fw.TraceMask", v3, 32))
  {
    sub_10040E444();
  }

  if (sub_10040E164(@"com.apple.MobileBluetooth.debug", @"phy.TraceMask", v3, 32))
  {
    sub_10040E4D8();
  }

  if (sub_10040DD2C(@"com.apple.MobileBluetooth.debug", @"phy.TraceLevel", -1, 256, 0) != -1)
  {
    sub_10040E56C();
  }

  if (sub_10040DD2C(@"com.apple.MobileBluetooth.debug", @"fw.CaptureTimeout", -1, &_mh_execute_header, 0) != -1)
  {
    sub_10040E600();
  }

  if (sub_10040DD2C(@"com.apple.MobileBluetooth.debug", @"fw.TriggerCapture", -1, &_mh_execute_header, 0) != -1)
  {
    sub_10040E694();
  }

  if (sub_10040DD2C(@"com.apple.MobileBluetooth.debug", @"fw.TapToRadar", -1, 2, 0) != -1)
  {
    sub_10040E7D8();
  }

  sub_10040E86C(a1, @"com.apple.MobileBluetooth.debug", @"fw.GeneralDebug");
}

uint64_t sub_10040DD2C(const __CFString *a1, CFStringRef theString, uint64_t a3, uint64_t a4, const char **a5)
{
  v7 = a3;
  valuePtr = a3;
  CStringPtr = CFStringGetCStringPtr(theString, 0x8000100u);
  v11 = CFPreferencesCopyAppValue(theString, a1);
  v12 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = CStringPtr;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Checking for %s", buf, 0xCu);
  }

  if (v11)
  {
    v13 = CFGetTypeID(v11);
    if (v13 == CFNumberGetTypeID())
    {
      Value = CFNumberGetValue(v11, kCFNumberSInt64Type, &valuePtr);
      v15 = valuePtr;
      v16 = "";
      if (Value && valuePtr > v7 && valuePtr < a4)
      {
        if (a5)
        {
LABEL_9:
          v16 = a5[v15];
          goto LABEL_31;
        }

LABEL_30:
        v16 = "int";
      }
    }

    else
    {
      v17 = CFGetTypeID(v11);
      if (v17 != CFStringGetTypeID() || (v18 = CFStringGetCStringPtr(v11, 0x8000100u)) == 0)
      {
        v16 = "";
        v15 = v7;
        goto LABEL_35;
      }

      v16 = v18;
      if (!a5)
      {
        goto LABEL_21;
      }

      v19 = *a5;
      if (*a5)
      {
        v20 = 0;
        v21 = a5 + 1;
        while (strcasecmp(v16, v19))
        {
          v22 = *v21++;
          v19 = v22;
          v20 += 0x100000000000000;
          if (!v22)
          {
            goto LABEL_17;
          }
        }

        v15 = v20 >> 56;
      }

      else
      {
LABEL_17:
        v15 = -1;
      }

      valuePtr = v15;
      if (v15 == v7)
      {
LABEL_21:
        *buf = 0;
        v23 = strtoq(v16, buf, 0);
        valuePtr = v23;
        if (**buf)
        {
          v24 = 1;
        }

        else
        {
          v24 = v23 <= v7;
        }

        if (v24 || v23 >= a4)
        {
          valuePtr = v7;
          v15 = v7;
          goto LABEL_31;
        }

        v15 = v23;
        if (a5)
        {
          goto LABEL_9;
        }

        goto LABEL_30;
      }
    }

LABEL_31:
    if (*v16 && v15 != v7)
    {
      v26 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        *&buf[4] = CStringPtr;
        v31 = 2080;
        v32 = v16;
        v33 = 2048;
        v34 = v15;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "\t%s = %s(%lld)", buf, 0x20u);
      }

LABEL_38:
      CFRelease(v11);
      return valuePtr;
    }

LABEL_35:
    v27 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      *&buf[4] = CStringPtr;
      v31 = 2080;
      v32 = v16;
      v33 = 2048;
      v34 = v15;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Warning: \tIllegal %s value %s(%lld), ignoring!", buf, 0x20u);
    }

    valuePtr = v7;
    goto LABEL_38;
  }

  return v7;
}

void sub_10040E03C()
{
  sub_1000031B0();
  v0 = sub_1002A7B14();
  sub_10000C198();
  if (v0)
  {
    v1 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *v2 = 0;
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Warning: BT_VSC_SetTraceMode not implemented for current chipset!", v2, 2u);
    }
  }
}

void sub_10040E0D0()
{
  sub_1000031B0();
  v0 = sub_1002A7BA0();
  sub_10000C198();
  if (v0)
  {
    v1 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *v2 = 0;
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Warning: BT_VSC_SetTraceLevel not implemented for current chipset!", v2, 2u);
    }
  }
}

void *sub_10040E164(const __CFString *a1, CFStringRef theString, void *a3, int a4)
{
  CStringPtr = CFStringGetCStringPtr(theString, 0x8000100u);
  v9 = CFPreferencesCopyAppValue(theString, a1);
  v10 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v24 = CStringPtr;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Checking for %s", buf, 0xCu);
  }

  if (!v9)
  {
    return 0;
  }

  v11 = CFGetTypeID(v9);
  if (v11 == CFDataGetTypeID())
  {
    Length = CFDataGetLength(v9);
    BytePtr = CFDataGetBytePtr(v9);
    v14 = 0;
    if (BytePtr && Length)
    {
      v15 = BytePtr;
      __chkstk_darwin(BytePtr);
      v17 = &buf[-((v16 + 16) & 0xFFFFFFFFFFFFFFF0)];
      bzero(v17, 3 * Length + 1);
      sub_100304ACC(v17, (3 * Length + 1), "%@", v15, Length);
      v18 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v24 = CStringPtr;
        v25 = 2080;
        *v26 = v17;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "\t%s = <%s>", buf, 0x16u);
      }

      if (Length == a4)
      {
        memcpy(a3, v15, Length);
      }

      else
      {
        v21 = qword_100BCE8D8;
        if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v24 = CStringPtr;
          v25 = 1024;
          *v26 = Length;
          *&v26[4] = 1024;
          *&v26[6] = a4;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Warning: \t\tIllegal %s value len %d expecting %d, ignoring!", buf, 0x18u);
        }

        a3 = 0;
      }

      v14 = a3;
    }
  }

  else
  {
    v19 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      v20 = CFGetTypeID(v9);
      *buf = 136315394;
      v24 = CStringPtr;
      v25 = 2048;
      *v26 = v20;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Warning: \tIllegal %s data type %lu should be Data, ignoring!", buf, 0x16u);
    }

    v14 = 0;
  }

  CFRelease(v9);
  return v14;
}

void sub_10040E444()
{
  sub_1000031B0();
  v0 = sub_1002A7CB8();
  sub_10000C198();
  if (v0)
  {
    v1 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *v2 = 0;
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Warning: BT_VSC_SetTraceMask not implemented for current chipset!", v2, 2u);
    }
  }
}

void sub_10040E4D8()
{
  sub_1000031B0();
  v0 = sub_1002A7D44();
  sub_10000C198();
  if (v0)
  {
    v1 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *v2 = 0;
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Warning: BT_VSC_SetPhyTraceMask not implemented for current chipset!", v2, 2u);
    }
  }
}

void sub_10040E56C()
{
  sub_1000031B0();
  v0 = sub_1002A7C2C();
  sub_10000C198();
  if (v0)
  {
    v1 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *v2 = 0;
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Warning: BT_VSC_SetPhyTraceLevel not implemented for current chipset!", v2, 2u);
    }
  }
}

void sub_10040E600()
{
  sub_1000031B0();
  v0 = sub_1002A7DD0();
  sub_10000C198();
  if (v0)
  {
    v1 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *v2 = 0;
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Warning: BT_VSC_SetCaptureTimeout not implemented for current chipset!", v2, 2u);
    }
  }
}

void sub_10040E694()
{
  v0 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "initiating FW triggerCapture", buf, 2u);
  }

  sub_1000031B0();
  v1 = sub_1002A7E5C();
  sub_10000C198();
  v2 = qword_100BCE8D8;
  v3 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT);
  if (v1)
  {
    if (!v3)
    {
      return;
    }

    v8 = 0;
    v4 = "Warning: BT_VSC_TriggerCapture not implemented for current chipset!";
    v5 = &v8;
    goto LABEL_10;
  }

  if (v3)
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "waiting for FW triggerCapture completion...", v7, 2u);
  }

  sub_1001B2E28(byte_100B6D758, 0);
  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 0;
    v4 = "FW triggerCapture Completed";
    v5 = &v6;
LABEL_10:
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, v4, v5, 2u);
  }
}

void sub_10040E7D8()
{
  sub_1000031B0();
  v0 = sub_1002A7EE8();
  sub_10000C198();
  if (v0)
  {
    v1 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *v2 = 0;
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Warning: BT_VSC_EnableTapToRadar not implemented for current chipset!", v2, 2u);
    }
  }
}

void sub_10040E86C(void (***a1)(void, void, const UInt8 *, void), const __CFString *a2, CFStringRef theString)
{
  CStringPtr = CFStringGetCStringPtr(theString, 0x8000100u);
  v7 = CFPreferencesCopyAppValue(theString, a2);
  v8 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v48 = CStringPtr;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Checking for %s", buf, 0xCu);
  }

  if (v7)
  {
    v9 = CFGetTypeID(v7);
    if (v9 == CFArrayGetTypeID())
    {
      Count = CFArrayGetCount(v7);
      v11 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v48 = CStringPtr;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "\t%s = (", buf, 0xCu);
      }

      if (Count >= 1)
      {
        v13 = 0;
        *&v12 = 67109120;
        v45 = v12;
        *&v12 = 136315138;
        v46 = v12;
        v44[0] = a1;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v7, v13);
          v15 = qword_100BCE8D8;
          if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "\t\t{", buf, 2u);
          }

          Value = CFDictionaryGetValue(ValueAtIndex, @"Description");
          if (Value)
          {
            v17 = Value;
            v18 = CFGetTypeID(Value);
            if (v18 == CFStringGetTypeID())
            {
              v19 = CFStringGetCStringPtr(v17, 0x8000100u);
              v20 = qword_100BCE8D8;
              if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
              {
                *buf = v46;
                v48 = v19;
                _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "\t\t\tDescription: %s;", buf, 0xCu);
              }
            }
          }

          v21 = CFDictionaryGetValue(ValueAtIndex, @"Code");
          if (v21 && (v22 = v21, v23 = CFGetTypeID(v21), v23 == CFDataGetTypeID()) && CFDataGetLength(v22) == 2)
          {
            BytePtr = CFDataGetBytePtr(v22);
            v25 = qword_100BCE8D8;
            if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
            {
              v26 = bswap32(*BytePtr) >> 16;
              *buf = v45;
              LODWORD(v48) = v26;
              _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "\t\t\tCode: <%04X>;", buf, 8u);
            }

            v27 = CFDictionaryGetValue(ValueAtIndex, @"Value");
            if (!v27)
            {
              v36 = qword_100BCE8D8;
              if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Warning: \t\t\tValue: <empty>;", buf, 2u);
              }

              LOWORD(Length) = 0;
              v31 = "";
              goto LABEL_34;
            }

            v28 = v27;
            v29 = CFGetTypeID(v27);
            if (v29 == CFDataGetTypeID())
            {
              Length = CFDataGetLength(v28);
              v31 = CFDataGetBytePtr(v28);
              v44[1] = v44;
              __chkstk_darwin(v31);
              v33 = v44 - ((v32 + 16) & 0xFFFFFFFFFFFFFFF0);
              bzero(v33, 3 * Length + 1);
              sub_100304ACC(v33, (3 * Length + 1), "%@", v31, Length);
              v34 = qword_100BCE8D8;
              if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
              {
                *buf = v46;
                v48 = v33;
                _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "\t\t\tValue: <%s>;", buf, 0xCu);
              }

              a1 = v44[0];
LABEL_34:
              v37 = qword_100BCE8D8;
              if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "\t\t}", buf, 2u);
              }

              (**a1)(a1, *BytePtr, v31, Length);
              goto LABEL_29;
            }

            v35 = qword_100BCE8D8;
            if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Warning: \t\t\tValue: wrong type, ignoring this entry!", buf, 2u);
              v35 = qword_100BCE8D8;
            }

            if (!os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_29;
            }
          }

          else
          {
            v35 = qword_100BCE8D8;
            if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Warning: \t\t\tCode: missing or wrong type or len, ignoring this entry!", buf, 2u);
              v35 = qword_100BCE8D8;
            }

            if (!os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_29;
            }
          }

          *buf = 0;
          _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "\t\t}", buf, 2u);
LABEL_29:
          ++v13;
        }

        while (Count != v13);
      }

      v43 = qword_100BCE8D8;
      if (!os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_46;
      }

      *buf = 0;
      v40 = "\t)";
      v41 = v43;
      v42 = 2;
    }

    else
    {
      v38 = qword_100BCE8D8;
      if (!os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
LABEL_46:
        CFRelease(v7);
        return;
      }

      v39 = CFGetTypeID(v7);
      *buf = 136315394;
      v48 = CStringPtr;
      v49 = 2048;
      v50 = v39;
      v40 = "Warning: \tIllegal %s data type %lu should be Array, ignoring!";
      v41 = v38;
      v42 = 22;
    }

    _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, v40, buf, v42);
    goto LABEL_46;
  }
}

void sub_10040EE98()
{
  sub_1000031B0();
  v0 = sub_1002A7F74();
  sub_10000C198();
  if (v0)
  {
    v1 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *v2 = 0;
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Warning: BT_VSC_GeneralDebug not implemented for current chipset!", v2, 2u);
    }
  }
}

void sub_10040EF44(int a1)
{
  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v3[0] = 67109120;
    v3[1] = a1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "BT_VSC_SetTraceMode completed with status 0x%08X", v3, 8u);
  }
}

void sub_10040EFE8(int a1)
{
  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v3[0] = 67109120;
    v3[1] = a1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "BT_VSC_SetTraceLevel completed with status 0x%08X", v3, 8u);
  }
}

void sub_10040F08C(int a1)
{
  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v3[0] = 67109120;
    v3[1] = a1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "BT_VSC_SetPhyTraceLevel completed with status 0x%08X", v3, 8u);
  }
}

void sub_10040F130(int a1)
{
  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v3[0] = 67109120;
    v3[1] = a1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "BT_VSC_SetTraceMask completed with status 0x%08X", v3, 8u);
  }
}

void sub_10040F1D4(int a1)
{
  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v3[0] = 67109120;
    v3[1] = a1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "BT_VSC_SetPhyTraceMask completed with status 0x%08X", v3, 8u);
  }
}

void sub_10040F278(int a1)
{
  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v3[0] = 67109120;
    v3[1] = a1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "BT_VSC_SetCaptureTimeout completed with status 0x%08X", v3, 8u);
  }
}

uint64_t sub_10040F31C(int a1)
{
  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 67109120;
    v4[1] = a1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "BT_VSC_TriggerCapture completed with status 0x%08X", v4, 8u);
  }

  return sub_1001B30F0(byte_100B6D758);
}

void sub_10040F3CC(int a1)
{
  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v3[0] = 67109120;
    v3[1] = a1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "BT_VSC_EnableTapToRadar completed with status 0x%08X", v3, 8u);
  }
}

void sub_10040F470(int a1)
{
  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v3[0] = 67109120;
    v3[1] = a1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "BT_VSC_GeneralDebug completed with status 0x%08X", v3, 8u);
  }
}

void *sub_10040F514(void *a1)
{
  *a1 = &off_100AF3708;
  v9 = 0;
  sub_1002972C0(a1 + 1, &v9);
  v2 = a1[1];
  v3 = qword_100BCE8D8;
  v4 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      *buf = 134217984;
      v11 = v2;
      v5 = "Warning: BT driver=0x%08llX";
      v6 = v3;
      v7 = 12;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v5, buf, v7);
    }
  }

  else if (v4)
  {
    *buf = 0;
    v5 = "Warning: BT driver not ready yet!, skipping";
    v6 = v3;
    v7 = 2;
    goto LABEL_6;
  }

  return a1;
}

void sub_10040F628(uint64_t a1)
{
  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Driver Debug Settings", buf, 2u);
  }

  *buf = 0u;
  v12 = 0u;
  if (*(a1 + 8))
  {
    v3 = sub_10040DD2C(@"com.apple.MobileBluetooth.debug", @"driver.TraceMode", -1, 5, off_100B542A8);
    if (v3 != -1)
    {
      sub_10040F86C(a1, v3);
    }

    v4 = sub_10040DD2C(@"com.apple.MobileBluetooth.debug", @"driver.TraceLevel", -1, 7, off_100B542D8);
    if (v4 != -1)
    {
      sub_10040F96C(a1, v4);
    }

    v5 = sub_10040E164(@"com.apple.MobileBluetooth.debug", @"driver.TraceMask", buf, 32);
    if (v5)
    {
      sub_10040FA6C(a1, v5);
    }

    v6 = sub_10040DD2C(@"com.apple.MobileBluetooth.debug", @"driver.CaptureTimeout", -1, &_mh_execute_header, 0);
    if (v6 != -1)
    {
      sub_10040FB6C(a1, v6);
    }

    v7 = sub_10040DD2C(@"com.apple.MobileBluetooth.debug", @"driver.TriggerCapture", -1, &_mh_execute_header, 0);
    if (v7 != -1)
    {
      sub_10040FC6C(a1, v7);
    }

    v8 = sub_10040DD2C(@"com.apple.MobileBluetooth.debug", @"driver.TapToRadar", -1, 2, 0);
    if (v8 != -1)
    {
      sub_10040FD6C(a1, v8 != 0);
    }

    sub_10040E86C(a1, @"com.apple.MobileBluetooth.debug", @"driver.GeneralDebug");
  }

  else
  {
    v9 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Warning: BT driver not ready yet!, skipping", v10, 2u);
    }
  }
}

void sub_10040F86C(uint64_t a1, unsigned __int8 a2)
{
  v2 = *(*(a1 + 8) + 64);
  if (!v2)
  {
    v9 = qword_100BCE8D8;
    if (!os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    LOWORD(v10[0]) = 0;
    v6 = "Warning: HciDriver_t::setTraceMode not implemented for current chipset!";
    v7 = v9;
    v8 = 2;
    goto LABEL_7;
  }

  v3 = v2(a2);
  if (v3)
  {
    v4 = v3;
    v5 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      v10[0] = 67109120;
      v10[1] = v4;
      v6 = "Warning: Calling HciDriver_t::setTraceMode failed with status 0x%08X!";
      v7 = v5;
      v8 = 8;
LABEL_7:
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v6, v10, v8);
    }
  }
}

void sub_10040F96C(uint64_t a1, unsigned __int8 a2)
{
  v2 = *(*(a1 + 8) + 72);
  if (!v2)
  {
    v9 = qword_100BCE8D8;
    if (!os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    LOWORD(v10[0]) = 0;
    v6 = "Warning: HciDriver_t::setTraceLevel not implemented for current chipset!";
    v7 = v9;
    v8 = 2;
    goto LABEL_7;
  }

  v3 = v2(a2);
  if (v3)
  {
    v4 = v3;
    v5 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      v10[0] = 67109120;
      v10[1] = v4;
      v6 = "Warning: Calling HciDriver_t::setTraceLevel failed with status 0x%08X!";
      v7 = v5;
      v8 = 8;
LABEL_7:
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v6, v10, v8);
    }
  }
}

void sub_10040FA6C(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 8) + 80);
  if (!v2)
  {
    v9 = qword_100BCE8D8;
    if (!os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    LOWORD(v10[0]) = 0;
    v6 = "Warning: HciDriver_t::setTraceMask not implemented for current chipset!";
    v7 = v9;
    v8 = 2;
    goto LABEL_7;
  }

  v3 = v2(a2);
  if (v3)
  {
    v4 = v3;
    v5 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      v10[0] = 67109120;
      v10[1] = v4;
      v6 = "Warning: Calling HciDriver_t::setTraceMask failed with status 0x%08X!";
      v7 = v5;
      v8 = 8;
LABEL_7:
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v6, v10, v8);
    }
  }
}

void sub_10040FB6C(uint64_t a1, unsigned __int16 a2)
{
  v2 = *(*(a1 + 8) + 88);
  if (!v2)
  {
    v9 = qword_100BCE8D8;
    if (!os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    LOWORD(v10[0]) = 0;
    v6 = "Warning: HciDriver_t::setCaptureTimeout not implemented for current chipset!";
    v7 = v9;
    v8 = 2;
    goto LABEL_7;
  }

  v3 = v2(a2);
  if (v3)
  {
    v4 = v3;
    v5 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      v10[0] = 67109120;
      v10[1] = v4;
      v6 = "Warning: Calling HciDriver_t::setCaptureTimeout failed with status 0x%08X!";
      v7 = v5;
      v8 = 8;
LABEL_7:
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v6, v10, v8);
    }
  }
}

void sub_10040FC6C(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 8) + 96);
  if (!v2)
  {
    v9 = qword_100BCE8D8;
    if (!os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    LOWORD(v10[0]) = 0;
    v6 = "Warning: HciDriver_t::triggerCapture not implemented for current chipset!";
    v7 = v9;
    v8 = 2;
    goto LABEL_7;
  }

  v3 = v2(a2);
  if (v3)
  {
    v4 = v3;
    v5 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      v10[0] = 67109120;
      v10[1] = v4;
      v6 = "Warning: Calling HciDriver_t::triggerCapture failed with status 0x%08X!";
      v7 = v5;
      v8 = 8;
LABEL_7:
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v6, v10, v8);
    }
  }
}

void sub_10040FD6C(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 8) + 104);
  if (!v2)
  {
    v9 = qword_100BCE8D8;
    if (!os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    LOWORD(v10[0]) = 0;
    v6 = "Warning: HciDriver_t::enableTapToRadar not implemented for current chipset!";
    v7 = v9;
    v8 = 2;
    goto LABEL_7;
  }

  v3 = v2(a2);
  if (v3)
  {
    v4 = v3;
    v5 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      v10[0] = 67109120;
      v10[1] = v4;
      v6 = "Warning: Calling HciDriver_t::enableTapToRadar failed with status 0x%08X!";
      v7 = v5;
      v8 = 8;
LABEL_7:
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v6, v10, v8);
    }
  }
}

void sub_10040FE6C(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 8) + 120);
  if (!v2)
  {
    v9 = qword_100BCE8D8;
    if (!os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    LOWORD(v10[0]) = 0;
    v6 = "Warning: HciDriver_t::enableBtDriverFwTraces not implemented for current chipset!";
    v7 = v9;
    v8 = 2;
    goto LABEL_7;
  }

  v3 = v2(a2);
  if (v3)
  {
    v4 = v3;
    v5 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      v10[0] = 67109120;
      v10[1] = v4;
      v6 = "Warning: Calling HciDriver_t::enableBtDriverFwTraces failed with status 0x%08X!";
      v7 = v5;
      v8 = 8;
LABEL_7:
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v6, v10, v8);
    }
  }
}

void sub_10040FF6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(*(a1 + 8) + 112);
  if (!v4)
  {
    v11 = qword_100BCE8D8;
    if (!os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    LOWORD(v12[0]) = 0;
    v8 = "Warning: HciDriver_t::generalDebug not implemented for current chipset!";
    v9 = v11;
    v10 = 2;
    goto LABEL_7;
  }

  v5 = v4(a2, a3, a4);
  if (v5)
  {
    v6 = v5;
    v7 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      v12[0] = 67109120;
      v12[1] = v6;
      v8 = "Warning: Calling HciDriver_t::generalDebug failed with status 0x%08X!";
      v9 = v7;
      v10 = 8;
LABEL_7:
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v8, v12, v10);
    }
  }
}

uint64_t sub_100410074()
{
  result = _os_feature_enabled_impl();
  if (result)
  {
    v1 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEBUG))
    {
      sub_100829394(v1);
    }

    return (sub_1000271F0() & 0xFFFFFFFE) == 44;
  }

  return result;
}

uint64_t sub_1004100E0(uint64_t a1, uint64_t a2)
{
  v2 = *(sub_10000C7D0(a1, a2) + 800);
  v3 = v2 - 1;
  v4 = v2 - 2000 < 0x7D0 || v2 - 4000 < 0x7D0;
  v5 = v2 >= 0xA;
  v6 = 0x1F3u >> v2;
  if (v5)
  {
    LOBYTE(v6) = 1;
  }

  if (v3 > 0x7CE)
  {
    LOBYTE(v6) = v4;
  }

  return v6 & 1;
}

uint64_t sub_100410138(uint64_t a1, uint64_t a2)
{
  v2 = sub_10000C7D0(a1, a2);
  v3 = *(v2 + 800);
  v5 = sub_10000C798(v2, v4);
  v6 = (*(*v5 + 416))(v5);
  if (v6)
  {
    if ((v3 - 18) <= 0x7BD)
    {
      v8 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 0;
        v9 = "UWBS supported, Mac, Chipset >= BCM_4364B3";
        v10 = &v16;
LABEL_12:
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v9, v10, 2u);
        goto LABEL_13;
      }

      goto LABEL_13;
    }

LABEL_14:
    LOBYTE(v13) = (v3 - 4000) < 0x7D0 || (v3 - 3000) < 0x3E8;
    return v13 & 1;
  }

  v11 = sub_10000C798(v6, v7);
  if (!(*(*v11 + 360))(v11))
  {
    if ((v3 - 12) <= 0x7C3)
    {
      v8 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 0;
        v9 = "UWBS supported, Chipset >= BCM_4355C0";
        v10 = &v15;
        goto LABEL_12;
      }

LABEL_13:
      LOBYTE(v13) = 1;
      return v13 & 1;
    }

    goto LABEL_14;
  }

  if (_os_feature_enabled_impl())
  {
    v12 = sub_1000271F0();
    v13 = 0x2F01u >> (v12 + 93);
    if ((v12 - 163) >= 0xE)
    {
      LOBYTE(v13) = 0;
    }
  }

  else
  {
    LOBYTE(v13) = 0;
  }

  return v13 & 1;
}

uint64_t sub_1004102C4(uint64_t a1, uint64_t a2)
{
  v2 = sub_10000C7D0(a1, a2);
  v3 = *(v2 + 800);
  v5 = sub_10000C798(v2, v4);
  v6 = (*(*v5 + 416))(v5);
  if (!v6)
  {
    v9 = sub_10000C798(v6, v7);
    v10 = (*(*v9 + 352))(v9);
    if (v10 && v3 - 1 <= 0x7CE)
    {
      if (v3 <= 0x12)
      {
        v8 = 1;
        v12 = sub_1000271F0();
        if ((v12 - 88) > 0x1D || ((1 << (v12 - 88)) & 0x30C00003) == 0)
        {
          v8 = v12 == 19;
        }

        return v8 & 1;
      }
    }

    else
    {
      v13 = sub_10000C798(v10, v11);
      if ((*(*v13 + 360))(v13))
      {
        v14 = sub_1000271F0();
        if ((v14 - 163) >= 0xE)
        {
          v8 = 0;
        }

        else
        {
          v8 = 0x2F01u >> (v14 + 93);
        }

        return v8 & 1;
      }

      if (v3 - 5000 >= 0x3E8)
      {
LABEL_4:
        v8 = v3 - 3000 < 0x3E8;
        return v8 & 1;
      }
    }

    v8 = 1;
    return v8 & 1;
  }

  v8 = 1;
  if (v3 - 20 >= 0x7BC && v3 - 5000 >= 0x3E8)
  {
    goto LABEL_4;
  }

  return v8 & 1;
}

uint64_t sub_100410430(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 800);
  v3 = sub_10000C798(a1, a2);
  v4 = (*(*v3 + 352))(v3);
  if ((v2 - 15) < 0x7C1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0;
  }

  result = 1;
  if ((v6 & 1) == 0 && (v2 - 4000) >= 0x7D0)
  {
    v8 = sub_10000C798(1, v5);
    LODWORD(result) = (*(*v8 + 352))(v8);
    if ((v2 - 3000) < 0x3E8)
    {
      return result;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

BOOL sub_1004104DC(uint64_t a1)
{
  v1 = *(a1 + 800);
  v2 = v1 - 20;
  v3 = v1 - 5000;
  v4 = (v1 - 3000) < 0x3E8;
  if (v3 < 0x3E8)
  {
    v4 = 1;
  }

  return v2 < 0x7BC || v4;
}

uint64_t sub_100410510(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 800);
  v3 = sub_10000C798(a1, a2);
  v4 = (*(*v3 + 352))(v3);
  if ((v4 & 1) != 0 || (v6 = sub_10000C798(v4, v5), result = (*(*v6 + 416))(v6), result))
  {
    result = _os_feature_enabled_impl();
    if (result)
    {
      return (v2 - 23) < 0x7B9 || (v2 - 3000) < 0x3E8;
    }
  }

  return result;
}

BOOL sub_10041062C(uint64_t a1, uint64_t a2)
{
  v3 = *(sub_10000C7D0(a1, a2) + 800);
  result = 1;
  if ((v3 - 3000) >= 0x3E8 && (v3 - 5000) >= 0x3E8)
  {
    v5 = sub_10000C798(1, v2);
    if ((*(*v5 + 416))(v5))
    {
      v6 = (v3 - 20) >= 0x7BC;
    }

    else
    {
      v6 = (v3 - 19) >= 0x7BD;
    }

    return !v6;
  }

  return result;
}

BOOL sub_1004106D0(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 800);
  if (!v2)
  {
    return 0;
  }

  if (a2 - 1 <= 0x7CE && v2 < 0x7D0)
  {
    return v2 >= a2;
  }

  if (v2 < 0x7D0)
  {
    return 0;
  }

  if (a2 - 2000 <= 0x7CF && v2 < 0xFA0)
  {
    return v2 >= a2;
  }

  if (v2 >> 3 < 0x271)
  {
    return 0;
  }

  result = 0;
  if (a2 - 5000 <= 0x3E7 && v2 >> 4 <= 0x176)
  {
    return v2 >= a2;
  }

  return result;
}

BOOL sub_10041074C(uint64_t a1, uint64_t a2)
{
  v2 = sub_10000C7D0(a1, a2);
  v4 = *(v2 + 800);
  if ((v4 - 5000) < 0x3E8)
  {
    return 1;
  }

  v6 = sub_10000C798(v2, v3);
  if (!(*(*v6 + 416))(v6))
  {
    return (v4 - 12) < 0xF94;
  }

  if ((v4 - 3000) >= 0x3E8)
  {
    return (v4 - 20) < 0x7BC;
  }

  return 1;
}

uint64_t sub_100410814(uint64_t a1, uint64_t a2)
{
  v2 = *(*sub_10000C798(a1, a2) + 456);

  return v2();
}

uint64_t sub_100410864(uint64_t a1, uint64_t a2)
{
  v3 = *(sub_10000C7D0(a1, a2) + 800);
  v5 = v3 <= 0x19 && ((1 << v3) & 0x2D89040) != 0 || v3 - 2001 < 2;
  v6 = v3 - 4000 < 0x7D0 || v5;
  if ((*(a1 + 800) - 3000) < 0x3E8)
  {
    return 1;
  }

  else
  {
    return v6;
  }
}

uint64_t sub_1004108D4()
{
  v0 = qword_100BCE8D8;
  v1 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT);
  if (v1)
  {
    LOWORD(v20[0]) = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "supports PER based power control check", v20, 2u);
  }

  v3 = sub_10000C7D0(v1, v2);
  v4 = *(v3 + 800);
  v6 = sub_10000C798(v3, v5);
  v7 = (*(*v6 + 384))(v6);
  if (v7 & 1) != 0 || (v9 = sub_10000C798(v7, v8), v10 = (*(*v9 + 392))(v9), (v10) || (v12 = sub_10000C798(v10, v11), v13 = (*(*v12 + 408))(v12), (v13))
  {
    v15 = 1;
  }

  else
  {
    v19 = sub_10000C798(v13, v14);
    v15 = (*(*v19 + 456))(v19);
  }

  v16 = ((v4 - 2000) < 0x7D0) & v15;
  v17 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v20[0] = 67109120;
    v20[1] = v16;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "supports PER based power control check return : %d", v20, 8u);
  }

  return v16;
}

BOOL sub_100410AA0(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 800) - 3000) < 0x3E8)
  {
    return 1;
  }

  v3 = sub_10000C798(a1, a2);
  v4 = (*(*v3 + 416))(v3);
  v5 = v4;
  v7 = *(sub_10000C7D0(v4, v6) + 800);
  if (v5)
  {
    v9 = v7 == 14 || v7 > 0x12;
    return v7 - 1 <= 0x7CE && v9;
  }

  else
  {
    v10 = sub_1000271F0();
    v2 = (v10 - 162) <= 0xA && ((1 << (v10 + 94)) & 0x60B) != 0 || v10 < 4;
    v12 = sub_10000C798(v10, v11);
    v13 = (*(*v12 + 384))(v12);
    if (v13 & 1) != 0 || (v15 = sub_10000C798(v13, v14), v16 = (*(*v15 + 392))(v15), (v16) || (v18 = sub_10000C798(v16, v17), v19 = (*(*v18 + 408))(v18), (v19))
    {
      v21 = 1;
    }

    else
    {
      v25 = sub_10000C798(v19, v20);
      v21 = (*(*v25 + 456))(v25);
    }

    if (v7 - 1 <= 0x7CE)
    {
      v23 = v7 > 0xB || v7 == 9;
      return v2 | v23 & v21;
    }
  }

  return v2;
}

uint64_t sub_100410C60(uint64_t a1, uint64_t a2)
{
  v2 = sub_10000C798(a1, a2);
  v3 = (*(*v2 + 352))(v2);
  if (v3)
  {
    v3 = sub_10000C7D0(v3, v4);
    if ((*(v3 + 800) - 4000) > 0xFFFFFC17)
    {
      return 1;
    }
  }

  v5 = sub_10000C798(v3, v4);
  v6 = 0;
  if (((*(*v5 + 416))(v5) & 1) == 0)
  {
    switch(sub_1000271F0())
    {
      case 0x10u:
      case 0x11u:
      case 0x12u:
      case 0x14u:
      case 0x15u:
      case 0x16u:
      case 0x17u:
      case 0x1Cu:
      case 0x1Du:
      case 0x1Eu:
      case 0x1Fu:
      case 0x20u:
      case 0x21u:
      case 0x22u:
      case 0x23u:
      case 0x24u:
      case 0x25u:
      case 0x26u:
      case 0x27u:
      case 0x28u:
      case 0x29u:
      case 0x2Au:
      case 0x2Bu:
      case 0x2Cu:
      case 0x2Du:
      case 0x2Eu:
      case 0x2Fu:
      case 0x30u:
      case 0x31u:
      case 0x32u:
      case 0x35u:
      case 0x36u:
      case 0x37u:
      case 0x39u:
      case 0x4Au:
      case 0x4Bu:
      case 0x4Cu:
      case 0x4Du:
      case 0x4Eu:
      case 0x4Fu:
      case 0x50u:
      case 0x51u:
      case 0x60u:
      case 0x61u:
      case 0x62u:
      case 0x63u:
      case 0x64u:
      case 0x65u:
      case 0x66u:
      case 0x67u:
      case 0x68u:
      case 0x69u:
      case 0x6Au:
      case 0x6Bu:
      case 0x6Cu:
      case 0x6Du:
      case 0x70u:
      case 0x71u:
      case 0x72u:
      case 0x73u:
      case 0x76u:
      case 0x77u:
      case 0x78u:
      case 0x79u:
      case 0x7Au:
      case 0x7Bu:
      case 0x7Cu:
      case 0x7Fu:
      case 0x80u:
      case 0x81u:
      case 0x82u:
      case 0x84u:
      case 0x85u:
      case 0x86u:
      case 0x87u:
      case 0x88u:
      case 0x89u:
      case 0x8Eu:
      case 0x8Fu:
      case 0x90u:
      case 0x91u:
      case 0x92u:
      case 0x93u:
      case 0x9Au:
      case 0x9Bu:
      case 0x9Cu:
      case 0x9Du:
      case 0x9Eu:
      case 0x9Fu:
      case 0xA0u:
      case 0xA7u:
        return 1;
      default:
        return v6;
    }
  }

  return v6;
}

BOOL sub_100410D34(uint64_t a1, uint64_t a2)
{
  v2 = sub_10000C798(a1, a2);
  if ((*(*v2 + 416))(v2))
  {
    return 0;
  }

  v4 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v8[0]) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "supports PER based power control check", v8, 2u);
  }

  v5 = sub_1000271F0();
  v3 = (v5 - 185) <= 0x39 && ((1 << (v5 + 71)) & 0x3FFF7FFFFFE1E0FLL) != 0 || (v5 - 169) < 2 || v5 == 27;
  v6 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109120;
    v8[1] = v3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "supports PER based power control check return : %d", v8, 8u);
  }

  return v3;
}

uint64_t sub_100410E9C(uint64_t a1, uint64_t a2)
{
  v2 = *(sub_10000C7D0(a1, a2) + 800);
  v4 = (v2 - 5000) < 0x3E8 || (v2 - 3000) < 0x3E8;
  return ((v2 - 19) < 0x7BD) | v4;
}

uint64_t sub_100410F60(uint64_t a1, uint64_t a2)
{
  v2 = *(sub_10000C7D0(a1, a2) + 800);
  if (v2 - 1 > 0x7CE)
  {
    goto LABEL_18;
  }

  if (v2 > 0xE)
  {
    v3 = 76;
    goto LABEL_31;
  }

  v4 = v2 > 0xB || v2 == 9;
  if (!v4 && v2 != 6)
  {
LABEL_18:
    v3 = 34;
    goto LABEL_31;
  }

  LODWORD(v3) = 34;
  v6 = sub_1000271F0();
  if (v6 <= 68)
  {
    if (v6 >= 4)
    {
      if ((v6 - 64) >= 2)
      {
        if (v6 == 68)
        {
          LODWORD(v3) = 48;
        }

        goto LABEL_28;
      }

      goto LABEL_24;
    }

LABEL_20:
    LODWORD(v3) = 32;
    goto LABEL_28;
  }

  if (v6 > 176)
  {
    if ((v6 - 177) < 4)
    {
      LODWORD(v3) = 42;
    }

    goto LABEL_28;
  }

  if ((v6 - 86) < 2)
  {
    goto LABEL_20;
  }

  if (v6 == 69)
  {
    LODWORD(v3) = 44;
    goto LABEL_28;
  }

  if (v6 == 95)
  {
LABEL_24:
    LODWORD(v3) = 36;
  }

LABEL_28:
  v8 = sub_10000C798(v6, v7);
  if ((*(*v8 + 416))(v8))
  {
    v3 = 56;
  }

  else
  {
    v3 = v3;
  }

LABEL_31:
  v9 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v11[0] = 67109120;
    v11[1] = v3;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "ePA low Tx power is : %d", v11, 8u);
  }

  return v3;
}

uint64_t sub_100411100(uint64_t a1, uint64_t a2)
{
  v2 = *(sub_10000C7D0(a1, a2) + 800);
  if (v2 - 1 > 0x7CE)
  {
    goto LABEL_17;
  }

  if (v2 >= 0xF)
  {
    if (sub_1000271F0() == 162)
    {
      v3 = 42;
    }

    else
    {
      v3 = 76;
    }

    goto LABEL_31;
  }

  v4 = v2 > 0xB || v2 == 9;
  if (!v4 && v2 != 6)
  {
LABEL_17:
    v3 = 34;
    goto LABEL_31;
  }

  v6 = sub_1000271F0();
  v8 = v6 - 64;
  if ((v6 - 64) <= 0x35)
  {
    if (((1 << v8) & 0x10400081540011) != 0)
    {
LABEL_16:
      LODWORD(v3) = 52;
      goto LABEL_28;
    }

    if (((1 << v8) & 0x20800002A80022) != 0)
    {
      LODWORD(v3) = 44;
      goto LABEL_28;
    }
  }

  if (v6 > 9)
  {
    goto LABEL_25;
  }

  if (((1 << v6) & 0x3C0) == 0)
  {
    if (((1 << v6) & 3) != 0)
    {
      goto LABEL_16;
    }

    if (((1 << v6) & 0xC) != 0)
    {
      LODWORD(v3) = 48;
      goto LABEL_28;
    }

LABEL_25:
    if ((v6 - 177) >= 4)
    {
      LODWORD(v3) = 34;
    }

    else
    {
      LODWORD(v3) = 42;
    }

    goto LABEL_28;
  }

  LODWORD(v3) = 54;
LABEL_28:
  v9 = sub_10000C798(v6, v7);
  if ((*(*v9 + 416))(v9))
  {
    v3 = 56;
  }

  else
  {
    v3 = v3;
  }

LABEL_31:
  v10 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v12[0] = 67109120;
    v12[1] = v3;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "ePA high Tx power is : %d", v12, 8u);
  }

  return v3;
}

uint64_t sub_1004112E4(uint64_t a1, uint64_t a2)
{
  if ((*(sub_10000C7D0(a1, a2) + 800) - 12) > 0x7C3)
  {
    v3 = 34;
  }

  else
  {
    v2 = sub_1000271F0();
    if ((v2 - 6) <= 3)
    {
      v3 = 0x2E2A2E2Au >> (8 * (v2 - 6));
    }

    else
    {
      v3 = 34;
    }
  }

  v4 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "ePA mid Tx power is : %d", v6, 8u);
  }

  return v3;
}

uint64_t sub_1004113F4(uint64_t a1, uint64_t a2)
{
  v2 = sub_10000C798(a1, a2);
  v3 = (*(*v2 + 384))(v2);
  if (v3)
  {
    v5 = *(sub_10000C7D0(v3, v4) + 800);
    if ((v5 - 3000) >= 0x3E8)
    {
      v6 = (v5 - 20) >= 0x7BC;
      return !v6;
    }

    return 1;
  }

  v7 = sub_10000C798(v3, v4);
  result = (*(*v7 + 392))(v7);
  if (!result)
  {
    return result;
  }

  v10 = *(sub_10000C7D0(result, v9) + 800);
  if ((v10 - 5000) < 0x3E8)
  {
    return 1;
  }

  v6 = (v10 - 23) >= 0x7B9;
  return !v6;
}

uint64_t sub_1004114BC(uint64_t a1)
{
  result = _os_feature_enabled_impl();
  if (result)
  {
    v4 = sub_10000C7D0(result, v3);
    return (*(a1 + 800) - 5000) < 0x3E8 || (*(v4 + 800) - 22) < 0x7BA;
  }

  return result;
}

uint64_t sub_100411524()
{
  v8 = 0;
  v0 = sub_10000E92C();
  sub_100007E30(v6, "Device");
  sub_100007E30(__p, "MaxConnUpdateInst");
  v1 = (*(*v0 + 72))(v0, v6, __p, &v8);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
    if (!v1)
    {
      return v8;
    }
  }

  else if (!v1)
  {
    return v8;
  }

  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEBUG))
  {
    sub_1008293D8(&v8, v2);
  }

  return v8;
}

void sub_100411608(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

const char *sub_10041163C(int a1)
{
  if (a1 > 1)
  {
    if (a1 != 2)
    {
      if (a1 == 240)
      {
        return "Advanced Sniff";
      }

      return "Unknown";
    }

    return "Sniff";
  }

  else
  {
    if (a1)
    {
      if (a1 == 1)
      {
        return "Reserved";
      }

      return "Unknown";
    }

    return "Active";
  }
}

uint64_t sub_10041169C(uint64_t a1)
{
  v2 = a1 + 317;
  v3 = *(a1 + 800);
  v4 = a1 + 168;
  bzero((a1 + 168), 0x276uLL);
  if (v3 - 1 <= 0x7CE)
  {
    *(a1 + 171) = 257;
    *(a1 + 174) = 1;
    *(a1 + 176) = 1;
    *(a1 + 178) = 257;
    *(a1 + 189) = 1;
    *(a1 + 193) = 1;
    *(a1 + 195) = 1;
    *(a1 + 353) = 257;
    *(a1 + 356) = 257;
    *(a1 + 361) = 257;
    *(a1 + 367) = 1;
    *(a1 + 369) = 257;
    *(a1 + 198) = 257;
    *(a1 + 374) = 1;
    *(a1 + 298) = 1;
    *(a1 + 453) = 1;
    *(a1 + 351) = 1;
    *(a1 + 347) = 16843009;
    *(a1 + 400) = 16843009;
    *(a1 + 397) = 16843009;
    *(v2 + 89) = 0x101010101010101;
    v7 = sub_10000C7D0(v5, v6);
    *(a1 + 214) = (*(v7 + 800) - 19) < 0x7BD;
    *(a1 + 310) = (*(sub_10000C7D0(v7, v8) + 800) - 20) < 0x7BC;
    *(a1 + 192) = 1;
    *(a1 + 364) = 1;
    *(a1 + 205) = 257;
    *(a1 + 201) = 16843009;
    v9 = (*(*a1 + 2512))(a1);
    v11 = v9 ^ 1;
    if (v3 == 9)
    {
      v11 = 0;
    }

    *(a1 + 373) = v11;
    *(a1 + 419) = 1;
    *(a1 + 175) = 1;
    *(a1 + 177) = 1;
    *(a1 + 183) = 1;
    *(a1 + 181) = 257;
    *(a1 + 358) = 1;
    *(a1 + 417) = 257;
    v14 = v3 != 1 && v3 != 11 && v3 != 16;
    *(a1 + 169) = 257;
    *(a1 + 211) = v14;
    *(a1 + 368) = 1;
    *(a1 + 194) = 1;
    *(a1 + 190) = 257;
    *(a1 + 185) = 257;
    *(a1 + 370) = 1;
    *(a1 + 365) = 1;
    *(a1 + 414) = 257;
    *(a1 + 200) = 1;
    v71[0] = v3 - 6;
    if (v3 == 6)
    {
      v15 = 0;
      v16 = 0;
      *(a1 + 375) = 1;
      *(a1 + 209) = 1;
      *(a1 + 372) = 1;
      goto LABEL_107;
    }

    if (v3 >= 0xA)
    {
      *(a1 + 196) = 1;
      if (v3 == 10)
      {
        goto LABEL_106;
      }

      *(a1 + 180) = 1;
      *(a1 + 209) = 1;
      *(a1 + 372) = 1;
      *(a1 + 173) = 1;
      *(a1 + 221) = 1;
      *(a1 + 224) = 1;
    }

    if (v3 == 15)
    {
      v15 = 0;
      v16 = 0;
      *(a1 + 351) = 256;
      *(a1 + 187) = 257;
      *(a1 + 375) = 1;
      *(a1 + 215) = 1;
      *(a1 + 220) = 1;
      *(a1 + 371) = 1;
      *(a1 + 377) = 1;
      *(a1 + 210) = 1;
      *(a1 + 353) = 0;
      goto LABEL_107;
    }

    if (v3 != 9)
    {
LABEL_43:
      if (v3 < 0xC)
      {
        goto LABEL_106;
      }

      *(a1 + 351) = 256;
      *(a1 + 353) = 0;
      if (v3 < 0x13)
      {
        goto LABEL_106;
      }

      *(a1 + 226) = 257;
      *(a1 + 228) = 1;
      *(a1 + 232) = 1;
      *(a1 + 265) = 257;
      *(a1 + 233) = 257;
      *(a1 + 371) = 1;
      *(a1 + 377) = 1;
      *(a1 + 379) = 1;
      if (v3 <= 0x14)
      {
        *(a1 + 188) = 1;
      }

      *(a1 + 376) = 1;
      *(a1 + 212) = 1;
      *(a1 + 449) = 1;
      *(a1 + 359) = 257;
      *(a1 + 269) = 1;
      *(a1 + 277) = 1;
      *(a1 + 287) = (*(*a1 + 2696))(a1) != 0;
      *(a1 + 278) = 257;
      *(a1 + 284) = 1;
      *(a1 + 288) = 257;
      *(a1 + 290) = 1;
      *(a1 + 420) = 257;
      *(a1 + 422) = 1;
      *(a1 + 425) = 1;
      *(a1 + 427) = 1;
      *(a1 + 431) = 257;
      *(a1 + 433) = 1;
      *(a1 + 404) = 257;
      *(a1 + 261) = 257;
      *(a1 + 392) = 1;
      *(a1 + 210) = 1;
      *(a1 + 385) = 1;
      *(a1 + 381) = 16843009;
      *(v2 + 145) = 16843009;
      if (v3 == 19)
      {
        *(a1 + 268) = 1;
      }

      else if ((v3 & 0x7FE) == 0x14)
      {
        goto LABEL_95;
      }

      (*(*a1 + 16))(&__p, a1);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        if (__p.__r_.__value_.__l.__size_ != 2)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
          goto LABEL_97;
        }

        v25 = *__p.__r_.__value_.__l.__data_;
        operator delete(__p.__r_.__value_.__l.__data_);
        if (v25 != 12355)
        {
LABEL_97:
          if (v3 == 21)
          {
            v26 = 0;
            v15 = 1;
            *(a1 + 426) = 1;
            *(a1 + 270) = 1;
            *(a1 + 380) = 1;
            *(a1 + 245) = 1;
            v27 = 1;
            v16 = 1;
            goto LABEL_110;
          }

          if (v3 >= 0x16)
          {
            *(a1 + 388) = 1;
            *(a1 + 426) = 1;
            *(a1 + 235) = 1;
            *(a1 + 457) = 1;
            *(a1 + 439) = 1;
            *(a1 + 436) = 1;
            (*(*a1 + 16))(&__p, a1);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              if (__p.__r_.__value_.__l.__size_ == 2)
              {
                v67 = *__p.__r_.__value_.__l.__data_;
                operator delete(__p.__r_.__value_.__l.__data_);
                if (v67 == 12355)
                {
                  goto LABEL_241;
                }
              }

              else
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }
            }

            else if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) == 2 && LOWORD(__p.__r_.__value_.__l.__data_) == 12355)
            {
              goto LABEL_241;
            }

            *(a1 + 456) = 1;
            *(a1 + 458) = 1;
LABEL_241:
            (*(*a1 + 16))(&__p, a1);
            v69 = std::string::compare(&__p, "C3");
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            if ((v69 & 0x80000000) == 0)
            {
              *(a1 + 260) = 1;
            }

            if ((*(*a1 + 4152))(a1))
            {
              *(a1 + 428) = 1;
            }

            v15 = 1;
            *(a1 + 270) = 1;
            if ((v3 & 0x7FE) == 0x14)
            {
              goto LABEL_248;
            }

            (*(*a1 + 16))(&__p, a1);
            v70 = std::string::compare(&__p, "C2");
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            if (v3 - 23 < 3 || (v70 & 0x80000000) == 0)
            {
LABEL_248:
              *(a1 + 380) = 1;
              *(a1 + 245) = 1;
            }

            v16 = 1;
LABEL_107:
            (*(*a1 + 16))(&__p, a1);
            v28 = std::string::compare(&__p, "C2");
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            v27 = 0;
            v29 = 0;
            v26 = v15;
            if (v28 < 0)
            {
LABEL_111:
              if (v3 >= 0x17)
              {
                *(a1 + 240) = 1;
                *(a1 + 236) = 16843009;
                *(a1 + 241) = 16842752;
                *(a1 + 248) = 1;
                *(a1 + 246) = 257;
                *(a1 + 184) = 1;
                *(a1 + 366) = 1;
                *(a1 + 303) = 1;
                *(a1 + 459) = 257;
                *(a1 + 312) = 257;
                *(a1 + 470) = 257;
                *(a1 + 252) = 0x101010101010101;
                *(a1 + 260) = 1;
              }

              if ((*(*a1 + 3256))(a1))
              {
                *(a1 + 445) = 1;
                *(a1 + 441) = 16843009;
              }

              if ((*(*a1 + 3272))(a1))
              {
                *(a1 + 446) = 257;
              }

              if ((*(*a1 + 2440))(a1))
              {
                *(a1 + 477) = 1;
              }

              if ((*(*a1 + 3032))(a1))
              {
                *(a1 + 475) = 1;
              }

              if ((*(*a1 + 3040))(a1))
              {
                *(a1 + 440) = 1;
              }

              v30 = (*(*a1 + 4336))(a1);
              if (v30)
              {
                *(a1 + 396) = 1;
              }

              if (v3 > 11)
              {
                if (v3 == 13)
                {
                  memset(&__p, 0, sizeof(__p));
                  v38 = sub_10009BD9C(v30, v31);
                  v30 = (*(*v38 + 64))(v38, &__p);
                  if (!v30)
                  {
                    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
                    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                    {
                      size = __p.__r_.__value_.__l.__size_;
                    }

                    if (size)
                    {
                      if (sub_1003D2140(&__p, "Figaro", 0) != -1 || (v30 = sub_1003D2140(&__p, "Rudder", 0), v30 != -1))
                      {
                        v40 = qword_100BCE8D8;
                        v30 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT);
                        if (v30)
                        {
                          *buf = 0;
                          _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "BCM_4355C1 that supports Wireless Splitter", buf, 2u);
                        }

                        *(a1 + 276) = 1;
                      }
                    }
                  }

LABEL_167:
                  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(__p.__r_.__value_.__l.__data_);
                    if (v16)
                    {
LABEL_169:
                      if ((v3 & 0x7FE) == 0x14)
                      {
                        goto LABEL_173;
                      }

                      (*(*a1 + 16))(&__p, a1);
                      v30 = std::string::compare(&__p, "C2");
                      v41 = v30;
                      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                      {
                        operator delete(__p.__r_.__value_.__l.__data_);
                      }

                      if ((v41 & 0x80000000) == 0 || v3 == 25 || v3 == 23)
                      {
LABEL_173:
                        *(a1 + 434) = 257;
                      }

                      v42 = sub_10000C798(v30, v31);
                      if ((*(*v42 + 440))(v42))
                      {
                        *(a1 + 389) = 257;
                      }

                      *(a1 + 192) = 0;
                      *(a1 + 355) = 1;
                      *(a1 + 391) = 1;
                      *(a1 + 429) = 1;
                      *(a1 + 227) = 1;
                      *(a1 + 277) = 1;
                      v43 = (*(*a1 + 2696))(a1);
                      *(a1 + 287) = v43 != 0;
                      *(a1 + 278) = 257;
                      if (v3 == 20)
                      {
                        v45 = sub_10000C798(v43, v44);
                        if ((*(*v45 + 352))(v45))
                        {
                          *(a1 + 282) = 1;
                        }
                      }

                      *(a1 + 284) = 1;
                      *(a1 + 288) = 257;
                      *(a1 + 290) = 1;
                      *(a1 + 297) = 1;
                      *(a1 + 300) = 257;
                      *(a1 + 307) = 1;
                      *(a1 + 387) = 1;
                      *(a1 + 314) = 1;
                      *(a1 + 302) = 1;
                      v30 = sub_10006CDA4(a1);
                      if (v30)
                      {
                        *(a1 + 295) = 257;
                        *(a1 + 291) = 16843009;
                      }

                      *(a1 + 450) = 1;
                    }

LABEL_182:
                    if (v26)
                    {
                      *(a1 + 386) = 1;
                      *(a1 + 309) = 1;
                      *(a1 + 429) = 1;
                      *(a1 + 311) = 1;
                      *(a1 + 437) = 1;
                      *(a1 + 227) = 1;
                      *(a1 + 277) = 1;
                      v46 = (*(*a1 + 2696))(a1);
                      *(a1 + 287) = v46 != 0;
                      *(a1 + 278) = 257;
                      *(a1 + 282) = 1;
                      *(a1 + 284) = 257;
                      *(a1 + 286) = 1;
                      *(a1 + 288) = 257;
                      *(a1 + 290) = 1;
                      *(a1 + 430) = 1;
                      *(a1 + 395) = 1;
                      v48 = sub_10000C798(v46, v47);
                      v49 = (*(*v48 + 352))(v48);
                      if (v49)
                      {
                        *(a1 + 283) = 1;
                      }

                      v51 = sub_10000C798(v49, v50);
                      v30 = (*(*v51 + 376))(v51);
                      if (v30)
                      {
                        *(a1 + 308) = 1;
                      }
                    }

                    v52 = sub_10000C798(v30, v31);
                    v53 = (*(*v52 + 384))(v52);
                    if (v53)
                    {
                      if (v71[0] < 0xF && ((0x6251u >> SLOBYTE(v71[0])) & 1) != 0)
                      {
                        v55 = 1;
                      }

                      else
                      {
                        (*(*a1 + 16))(&__p, a1);
                        v53 = std::string::compare(&__p, "C2");
                        v55 = v3 == 23 || v3 == 25 || v53 >= 0;
                      }

                      if ((v3 > 0x14 || ((1 << v3) & 0x189440) == 0) && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                      {
                        operator delete(__p.__r_.__value_.__l.__data_);
                      }

                      if (v55)
                      {
                        *(a1 + 393) = 1;
                      }
                    }

                    v58 = sub_10000C798(v53, v54);
                    if ((v29 & (*(*v58 + 440))(v58)) == 1)
                    {
                      *(a1 + 393) = 1;
                    }

                    *(a1 + 448) = 0;
                    if (v15)
                    {
                      *(a1 + 394) = 1;
                    }

                    if (v3 - 21 <= 4)
                    {
                      *(a1 + 272) = 257;
                      *(a1 + 315) = 257;
                    }

                    if ((*(*a1 + 3280))(a1))
                    {
                      *v2 = 16843009;
                    }

                    if ((*(*a1 + 3104))(a1))
                    {
                      *(a1 + 478) = 1;
                    }

                    *(a1 + 306) = 1;
                    if (v3 >= 0xE)
                    {
                      *(a1 + 304) = 257;
                    }

                    goto LABEL_216;
                  }

LABEL_168:
                  if (v16)
                  {
                    goto LABEL_169;
                  }

                  goto LABEL_182;
                }

                if (v3 == 12)
                {
                  memset(&__p, 0, sizeof(__p));
                  v36 = sub_10009BD9C(v30, v31);
                  v30 = (*(*v36 + 64))(v36, &__p);
                  if (v30)
                  {
                    goto LABEL_152;
                  }

                  v37 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
                  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                  {
                    v37 = __p.__r_.__value_.__l.__size_;
                  }

                  if (!v37)
                  {
                    goto LABEL_152;
                  }

                  if (sub_1003D2140(&__p, "Joy", 0) == -1 && sub_1003D2140(&__p, "Anger", 0) == -1 && sub_1003D2140(&__p, "Fear", 0) == -1 && sub_1003D2140(&__p, "Elsa", 0) == -1 && sub_1003D2140(&__p, "Kristoff", 0) == -1 && sub_1003D2140(&__p, "Olaf", 0) == -1)
                  {
                    v30 = sub_1003D2140(&__p, "Sven", 0);
                    if (v30 == -1)
                    {
                      goto LABEL_152;
                    }
                  }

                  v34 = qword_100BCE8D8;
                  v30 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT);
                  if (!v30)
                  {
                    goto LABEL_151;
                  }

                  *buf = 0;
                  v35 = "BCM_4355C0 that supports Wireless Splitter";
                  goto LABEL_150;
                }
              }

              else
              {
                if (v3 == 6)
                {
                  *(a1 + 210) = 1;
                  if (v16)
                  {
                    goto LABEL_169;
                  }

                  goto LABEL_182;
                }

                if (v3 == 10)
                {
                  memset(&__p, 0, sizeof(__p));
                  v32 = sub_10009BD9C(v30, v31);
                  v30 = (*(*v32 + 64))(v32, &__p);
                  if (v30)
                  {
                    goto LABEL_152;
                  }

                  v33 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
                  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                  {
                    v33 = __p.__r_.__value_.__l.__size_;
                  }

                  if (!v33)
                  {
                    goto LABEL_152;
                  }

                  v30 = sub_1003D2140(&__p, "Bacchus", 0);
                  if (v30 == -1)
                  {
                    goto LABEL_152;
                  }

                  v34 = qword_100BCE8D8;
                  v30 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT);
                  if (!v30)
                  {
LABEL_151:
                    *(a1 + 276) = 1;
LABEL_152:
                    *(a1 + 210) = 1;
                    goto LABEL_167;
                  }

                  *buf = 0;
                  v35 = "BCM_43452 that supports Wireless Splitter";
LABEL_150:
                  _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, v35, buf, 2u);
                  goto LABEL_151;
                }
              }

              if (v3 >= 0xF)
              {
                *(a1 + 261) = 1;
                *(a1 + 276) = 1;
                *(a1 + 299) = 1;
                if (v16)
                {
                  goto LABEL_169;
                }

                goto LABEL_182;
              }

              goto LABEL_168;
            }

LABEL_110:
            *(a1 + 438) = 1;
            v29 = v27;
            goto LABEL_111;
          }

          if (v3 == 20)
          {
            v15 = 0;
            v16 = 1;
            *(a1 + 380) = 1;
            *(a1 + 245) = 1;
            goto LABEL_107;
          }

LABEL_106:
          v15 = 0;
          v16 = 0;
          goto LABEL_107;
        }
      }

      else if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) != 2 || LOWORD(__p.__r_.__value_.__l.__data_) != 12355)
      {
        goto LABEL_97;
      }

LABEL_95:
      *(a1 + 385) = 0;
      goto LABEL_97;
    }

    memset(&__p, 0, sizeof(__p));
    v18 = sub_10009BD9C(v9, v10);
    if ((*(*v18 + 64))(v18, &__p))
    {
LABEL_38:
      v19 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "43430B0", buf, 2u);
      }

      *(a1 + 401) = 0;
      *(a1 + 403) = 0;
      *(a1 + 373) = 0;
      *(a1 + 211) = 0;
      *(v2 + 89) = 0;
LABEL_41:
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      goto LABEL_43;
    }

    v20 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      v20 = __p.__r_.__value_.__l.__size_;
      if (!__p.__r_.__value_.__l.__size_)
      {
        goto LABEL_38;
      }

      p_p = __p.__r_.__value_.__r.__words[0];
    }

    else
    {
      if (!*(&__p.__r_.__value_.__s + 23))
      {
        goto LABEL_38;
      }

      p_p = &__p;
    }

    if (v20 >= 2)
    {
      v22 = p_p + v20;
      v23 = p_p;
      while (1)
      {
        v24 = memchr(v23, 66, v20 - 1);
        if (!v24)
        {
          break;
        }

        if (*v24 == 12610)
        {
          if (v24 == v22 || v24 - p_p == -1)
          {
            goto LABEL_38;
          }

          v68 = qword_100BCE8D8;
          if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_DEFAULT, "43430B1", buf, 2u);
          }

          *(a1 + 209) = 1;
          goto LABEL_41;
        }

        v23 = (v24 + 1);
        v20 = v22 - v23;
        if (v22 - v23 < 2)
        {
          goto LABEL_38;
        }
      }
    }

    goto LABEL_38;
  }

  if (v3 - 2000 > 0x7CF)
  {
    if (v3 - 5000 > 0x3E7)
    {
      if (v3 - 4000 > 0x3E7)
      {
        if (v3 == 6000)
        {
          *(a1 + 465) = 1;
          *(a1 + 474) = 1;
          *(v2 + 80) = 16843009;
        }
      }

      else
      {
        *(a1 + 354) = 257;
        *(a1 + 467) = 1;
        *(a1 + 465) = 257;
        *(a1 + 176) = 1;
        *(a1 + 349) = 1;
        *(a1 + 211) = 1;
      }
    }

    else
    {
      *(a1 + 196) = 1;
      *(v2 + 149) = 16843009;
      *(a1 + 227) = 257;
      *(a1 + 171) = 257;
      *(a1 + 394) = 1;
      *(a1 + 348) = 257;
      *(a1 + 200) = 1;
      *(a1 + 189) = 1;
      *(a1 + 210) = 257;
      *(a1 + 272) = 1;
      *(a1 + 398) = 257;
      *(a1 + 176) = 1;
      *(a1 + 371) = 257;
      *(a1 + 474) = 1;
      *(a1 + 381) = 1;
      *(a1 + 420) = 257;
      *(a1 + 423) = 257;
      *(a1 + 409) = 1;
      *(a1 + 419) = 1;
      *(a1 + 402) = 1;
      *(a1 + 406) = 1;
      *(a1 + 408) = 1;
      *(a1 + 411) = 1;
      *(a1 + 392) = 1;
      *(a1 + 347) = 1;
      *(a1 + 361) = 1;
      *(a1 + 435) = 1;
      *(a1 + 439) = 1;
      *(a1 + 277) = 257;
      *(a1 + 284) = 1;
      *(a1 + 286) = 257;
      *(a1 + 261) = 1;
      *(a1 + 359) = 1;
      *(a1 + 430) = 1;
      *(a1 + 315) = 257;
      *(a1 + 190) = 1;
      *(a1 + 224) = 1;
      *(a1 + 376) = 1;
      *(a1 + 374) = 1;
      *(a1 + 173) = 1;
      *(a1 + 354) = 257;
      *(a1 + 352) = 1;
      *(a1 + 368) = 1;
      *(a1 + 273) = 1;
      *(a1 + 269) = 257;
      *(a1 + 383) = 1;
      *(a1 + 386) = 1;
      *(a1 + 365) = 1;
      *(a1 + 462) = 1;
      *(a1 + 259) = 257;
      *(a1 + 198) = 1;
      *(a1 + 476) = 1;
      *(a1 + 306) = 1;
      if ((*(*a1 + 2440))(a1))
      {
        *(a1 + 477) = 1;
      }

      *(a1 + 478) = 257;
      *(a1 + 380) = 1;
      *(a1 + 262) = 1;
      *(a1 + 276) = 1;
      *(a1 + 304) = 257;
      if ((*(*a1 + 4336))(a1))
      {
        *(a1 + 396) = 1;
      }

      *(a1 + 470) = 257;
      *(a1 + 472) = 1;
      *(a1 + 444) = 16843009;
      *(a1 + 441) = 16843009;
      if (sub_10006CDA4(a1))
      {
        *(a1 + 473) = 1;
        *(a1 + 292) = 257;
      }

      if ((*(*a1 + 2848))(a1))
      {
        *(a1 + 279) = 1;
        *(a1 + 288) = 1;
        *(a1 + 282) = 1;
      }
    }
  }

  else
  {
    *(a1 + 169) = 1;
    *(a1 + 176) = 1;
    *(a1 + 189) = 1;
    *(a1 + 197) = 1;
    *(a1 + 191) = 1;
    *(a1 + 171) = 257;
    *(a1 + 211) = 1;
    *(a1 + 199) = 1;
    *(a1 + 180) = 1;
    *(a1 + 213) = 1;
    *(a1 + 222) = 1;
    *(a1 + 216) = 16843009;
    if (v3 <= 0xBB7)
    {
      *(a1 + 223) = 1;
    }

    *(a1 + 185) = 1;
    *(a1 + 264) = 1;
    *(a1 + 298) = 1;
    *(a1 + 349) = 1;
    *(a1 + 347) = 1;
    *(a1 + 361) = 257;
    *(a1 + 367) = 1;
    *(a1 + 357) = 1;
    *(a1 + 374) = 1;
    *(a1 + 225) = 1;
    *(a1 + 378) = 1;
    *(a1 + 402) = 1;
    *(a1 + 415) = 257;
    *(a1 + 261) = 1;
    *(a1 + 267) = 1;
    *(a1 + 274) = 257;
    *(v2 + 80) = 16843009;
    *(v2 + 89) = 0x101010101010101;
    if (v3 <= 0x7D0)
    {
      v17 = 0;
    }

    else
    {
      *(a1 + 226) = 257;
      *(a1 + 228) = 1;
      *(a1 + 232) = 1;
      *(a1 + 263) = 1;
      *(a1 + 354) = 1;
      *(a1 + 425) = 1;
      *(a1 + 427) = 1;
      *(a1 + 448) = 1;
      *(v2 + 102) = 16843009;
      if ((*(*a1 + 4040))(a1))
      {
        *(a1 + 451) = 1;
      }

      if (sub_10006CDA4(a1))
      {
        *(a1 + 293) = 1;
        *(a1 + 296) = 1;
      }

      *(a1 + 308) = 0;
      *(a1 + 314) = 1;
      *(a1 + 404) = 257;
      *(a1 + 429) = 1;
      *(a1 + 454) = 257;
      *(a1 + 474) = 1;
      *(a1 + 461) = 1;
      *(a1 + 315) = 257;
      *(a1 + 439) = 1;
      *(a1 + 365) = 1;
      *(a1 + 383) = 1;
      *(a1 + 323) = 1;
      *(a1 + 321) = 257;
      *(a1 + 481) = 0;
      if (v3 == 2001 || (*(a1 + 452) = 1, *(a1 + 480) = 1, v3 < 0xBB8))
      {
        v17 = 0;
      }

      else
      {
        *(a1 + 465) = 1;
        *(a1 + 235) = 1;
        *(a1 + 324) = 1;
        *(a1 + 352) = 1;
        *(a1 + 372) = 1;
        *(a1 + 299) = 1;
        *(a1 + 383) = 1;
        *(a1 + 385) = 257;
        *(a1 + 368) = 1;
        *(a1 + 233) = 257;
        *(a1 + 185) = 0;
        *(a1 + 480) = 1;
        *(a1 + 474) = 1;
        *(a1 + 307) = 1;
        *(a1 + 272) = 1;
        *(a1 + 224) = sub_100411524();
        *(a1 + 311) = 1;
        *(a1 + 437) = 1;
        *(a1 + 430) = 1;
        *(a1 + 380) = 1;
        *(a1 + 269) = 1;
        *(a1 + 346) = 1;
        *(a1 + 344) = 257;
        *(a1 + 394) = 1;
        *(a1 + 477) = 257;
        *(a1 + 248) = 1;
        *(a1 + 246) = 257;
        *(a1 + 273) = 1;
        *(a1 + 190) = 1;
        *(a1 + 355) = 1;
        *(a1 + 198) = 1;
        *(a1 + 459) = 257;
        *(a1 + 304) = 257;
        *(a1 + 306) = 1;
        *(a1 + 392) = 1;
        *(a1 + 276) = 1;
        *(a1 + 381) = 1;
        *(a1 + 376) = 1;
        *(a1 + 236) = 0x101010101010101;
        *(a1 + 244) = 1;
        *(a1 + 327) = 0x101010101010101;
        *(a1 + 332) = 0x101010101010101;
        if (sub_10006CDA4(a1))
        {
          *(a1 + 292) = 257;
          *(a1 + 295) = 257;
        }

        *(a1 + 257) = 257;
        *(a1 + 252) = 16843009;
        if ((*(*a1 + 3256))(a1))
        {
          *(a1 + 445) = 1;
          *(a1 + 441) = 16843009;
        }

        if ((*(*a1 + 4336))(a1))
        {
          *(a1 + 396) = 1;
        }

        *(a1 + 359) = 257;
        *(a1 + 481) = 257;
        v17 = 1;
        *(a1 + 262) = 1;
        *(a1 + 260) = 1;
        *(a1 + 229) = 257;
        *(a1 + 231) = 1;
        *(a1 + 340) = 16843009;
      }
    }

    if ((*(*a1 + 2688))(a1))
    {
      *(a1 + 277) = 257;
      if (v17)
      {
        *(a1 + 285) = 257;
        *(a1 + 287) = 1;
        *(a1 + 325) = 257;
      }
    }

    if ((*(*a1 + 2688))(a1) || (*(*a1 + 2848))(a1))
    {
      *(a1 + 284) = 1;
    }

    if ((*(*a1 + 2848))(a1))
    {
      *(a1 + 290) = 1;
      *(a1 + 279) = 1;
      *(a1 + 288) = 257;
      *(a1 + 280) = 257;
    }

    if ((*(*a1 + 3032))(a1))
    {
      *(a1 + 475) = 1;
    }

    if ((*(*a1 + 3040))(a1))
    {
      *(a1 + 440) = 1;
    }
  }

LABEL_216:
  v59 = qword_100BCE8D8;
  v60 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT);
  if (v60)
  {
    v61 = sub_10009B750(v60, v3);
    *buf = 136446210;
    v74 = v61;
    _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "%{public}s supports the following VSCs", buf, 0xCu);
  }

  for (i = 0; i != 315; ++i)
  {
    if (*(v4 + i) == 1)
    {
      v63 = qword_100BCE8D8;
      v64 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO);
      if (v64)
      {
        v65 = sub_100020304(v64, i);
        *buf = 136446210;
        v74 = v65;
        _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_INFO, "%{public}s", buf, 0xCu);
      }
    }
  }

  return 0;
}

void sub_100413068(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100413098(int *a1)
{
  if (!(*(*a1 + 1256))(a1, a1 + 202))
  {
    result = sub_10029F7EC(a1[200], (a1 + 202));
    if (!result)
    {
      return result;
    }

    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_10082960C();
    }
  }

  return 110;
}

uint64_t sub_100413134()
{
  result = sub_10018F22C(sub_10041319C);
  if (result)
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_100829714();
    }

    return 110;
  }

  return result;
}

void sub_10041319C(uint64_t a1, uint64_t a2, char *a3)
{
  if (qword_100B50AA0 != -1)
  {
    sub_10082977C();
  }

  v6 = off_100B50A98;

  sub_1005A28CC(v6, a1, a2, a3);
}

uint64_t sub_100413208()
{
  result = sub_10018F23C(sub_100413270);
  if (result)
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_100829790();
    }

    return 110;
  }

  return result;
}

void sub_100413270(uint64_t a1)
{
  v1 = a1;
  if (qword_100B50AA0 != -1)
  {
    sub_10082977C();
  }

  v2 = off_100B50A98;

  sub_1005A278C(v2, v1);
}

uint64_t sub_1004132C4(uint64_t a1, unint64_t a2)
{
  v4[1] = 0;
  v5 = a2;
  v4[0] = 0;
  sub_100007F88(v4, a1 + 8);
  sub_1000452CC(a1 + 136, &v5, &v5);
  return sub_1000088CC(v4);
}

void sub_100413318(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10041332C(uint64_t a1, unint64_t a2)
{
  v4[1] = 0;
  v5 = a2;
  v4[0] = 0;
  sub_100007F88(v4, a1 + 8);
  sub_100075DC4((a1 + 136), &v5);
  return sub_1000088CC(v4);
}

void sub_10041337C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100413390(_DWORD *a1, uint64_t a2, int a3)
{
  if (a1[41] == a3)
  {
    return 0;
  }

  result = 1;
  if (a3 > 2)
  {
    if (a3 == 3)
    {
      result = (*(*a1 + 4376))(a1, a2);
      if (result)
      {
        return result;
      }

      goto LABEL_15;
    }

    if (a3 == 4)
    {
      result = (*(*a1 + 4384))(a1, a2);
      if (!result)
      {
        goto LABEL_15;
      }
    }
  }

  else
  {
    if (a3 == 1)
    {
      result = (*(*a1 + 4368))(a1, a2);
      if (result)
      {
        return result;
      }

      goto LABEL_15;
    }

    if (a3 == 2)
    {
      result = (*(*a1 + 4360))(a1, a2);
      if (!result)
      {
LABEL_15:
        a1[41] = a3;
      }
    }
  }

  return result;
}

BOOL sub_1004134D8(uint64_t a1, uint64_t a2)
{
  v2 = *(sub_10000C7D0(a1, a2) + 800);
  if ((v2 - 1) < 0x7CF)
  {
    return 1;
  }

  if ((v2 - 2000) < 0x7D0)
  {
    return 0;
  }

  if ((v2 - 5000) < 0x3E8)
  {
    return 1;
  }

  result = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR);
  if (result)
  {
    sub_1008297F8();
    return 0;
  }

  return result;
}

uint64_t sub_100413560(uint64_t a1, uint64_t a2)
{
  v2 = sub_10000C7D0(a1, a2);
  v4 = *(v2 + 800);
  if ((v4 - 19) < 0x7BD)
  {
    return 2;
  }

  if ((*(sub_10000C7D0(v2, v3) + 800) - 3000) >= 0x3E8)
  {
    return 8 * ((v4 - 5000) < 0x3E8);
  }

  return 3;
}

uint64_t sub_1004135C8(uint64_t a1, uint64_t a2)
{
  v2 = *(sub_10000C7D0(a1, a2) + 800);
  if ((v2 - 19) > 0x7BC)
  {
    if ((v2 - 2001) >= 0x7CF)
    {
      return 8 * ((v2 - 5000) < 0x3E8);
    }

    else
    {
      return 3;
    }
  }

  else if (v2 == 19)
  {
    return 1;
  }

  else
  {
    return 4;
  }
}

BOOL sub_100413640(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000C7D0(a1, a2);
  v4 = *(v3 + 800);
  v6 = sub_10000C798(v3, v5);
  if ((*(*v6 + 368))(v6))
  {
    return 1;
  }

  v8 = *(a1 + 800);
  if (v8 - 2000 > 0x7CF)
  {
    if ((v4 - 5000) < 0x3E8)
    {
      return 1;
    }

    return (v4 - 19) < 0x7BD;
  }

  result = 1;
  if (v8 <= 0xBB7 && (v4 - 5000) >= 0x3E8)
  {
    return (v4 - 19) < 0x7BD;
  }

  return result;
}

void sub_10041373C()
{
  if (qword_100B6D760 != -1)
  {
    sub_100829860();
  }

  if (dword_100B54318 == 3)
  {
    v0 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "BT Sleep now", buf, 2u);
    }

    v1 = 0;
    sub_1000216B4(&v1);
    sub_1001B3150();
    sub_100022214(&v1);
    sub_10002249C(&v1);
  }
}

uint64_t sub_100413820(uint64_t a1, uint64_t a2)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1004138B0;
  block[3] = &unk_100ADF8F8;
  block[4] = a2;
  if (qword_100B6D770 != -1)
  {
    dispatch_once(&qword_100B6D770, block);
  }

  return byte_100B6D768;
}

void sub_1004138B0(uint64_t a1)
{
  **(a1 + 32) = 0;
  v2 = sub_10000E92C();
  sub_100007E30(buf, "Device");
  sub_100007E30(__p, "GazeOnHeadOverride");
  v3 = (*(*v2 + 72))(v2, buf, __p, *(a1 + 32));
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  if ((v9 & 0x80000000) == 0)
  {
    if (!v3)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  operator delete(*buf);
  if (v3)
  {
LABEL_5:
    byte_100B6D768 = 1;
  }

LABEL_6:
  v4 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v5 = **(a1 + 32);
    *buf = 67109120;
    *&buf[4] = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "gazeOverrideConfiguration is %d", buf, 8u);
  }
}

void sub_1004139FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100413A38(uint64_t a1, uint64_t a2)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100413AC8;
  block[3] = &unk_100ADF8F8;
  block[4] = a2;
  if (qword_100B6D780 != -1)
  {
    dispatch_once(&qword_100B6D780, block);
  }

  return byte_100B6D778;
}

void sub_100413AC8(uint64_t a1)
{
  **(a1 + 32) = 0;
  v2 = sub_10000E92C();
  sub_100007E30(buf, "Device");
  sub_100007E30(__p, "GazePresentOverride");
  v3 = (*(*v2 + 72))(v2, buf, __p, *(a1 + 32));
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  if ((v9 & 0x80000000) == 0)
  {
    if (!v3)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  operator delete(*buf);
  if (v3)
  {
LABEL_5:
    byte_100B6D778 = 1;
  }

LABEL_6:
  v4 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v5 = **(a1 + 32);
    *buf = 67109120;
    *&buf[4] = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "forceGazePresentOverride is %d", buf, 8u);
  }
}

void sub_100413C14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100413C50(uint64_t a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_10082977C();
  }

  return sub_100022748(a1, 280);
}

uint64_t sub_100413CA0(_DWORD *a1, char a2)
{
  if ((a1[200] - 2001) > 0x7CE)
  {
    return 0;
  }

  v9 = v2;
  v10 = v3;
  if ((*(*a1 + 3160))(a1))
  {
    a1[201] |= 1u;
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100413D88;
  v7[3] = &unk_100AF2210;
  v7[4] = a1;
  v8 = a2;
  return sub_10002173C(a1, 280, 1, v7, 0);
}

uint64_t sub_100413DB0(uint64_t a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_10082977C();
  }

  return sub_100022748(a1, 138);
}

uint64_t sub_100413E00(uint64_t a1, int a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100413E78;
  v3[3] = &unk_100AF24D0;
  v4 = a2;
  return sub_10002173C(a1, 138, 1, v3, 0);
}

BOOL sub_100413E90(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 800) - 3000) < 0x3E8)
  {
    return 1;
  }

  v3 = *(sub_10000C7D0(a1, a2) + 800);
  v4 = v3 - 5000;
  v5 = (v3 - 19) < 0x7BD;
  return v4 < 0x3E8 || v5;
}

BOOL sub_100413EE8(uint64_t a1, uint64_t a2)
{
  v2 = *(sub_10000C7D0(a1, a2) + 800);
  if ((v2 - 1) > 0x7CE)
  {
    return 0;
  }

  return v2 == 15 || (v2 & 0x7FE) == 12 || v2 == 19;
}

BOOL sub_100413F44(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 800);
  if (!v2)
  {
    return 0;
  }

  if (a2 - 1 <= 0x7CE && v2 < 0x7D0)
  {
    return v2 <= a2;
  }

  if (v2 < 0x7D0)
  {
    return 0;
  }

  if (a2 - 2000 <= 0x7CF && v2 < 0xFA0)
  {
    return v2 <= a2;
  }

  if (v2 >> 3 < 0x271)
  {
    return 0;
  }

  result = 0;
  if (a2 - 5000 <= 0x3E7 && v2 >> 4 <= 0x176)
  {
    return v2 <= a2;
  }

  return result;
}

void sub_100413FC4(uint64_t a1)
{
  sub_1003D1F6C(a1);

  operator delete();
}

uint64_t sub_100415098(uint64_t a1)
{
  *sub_100589578(a1, "LEConnectedAudioService", 0x1000000) = &off_100AF4898;
  if (qword_100B54328 != -1)
  {
    sub_100829874();
  }

  sub_100589880(a1, qword_100B54320);
  return a1;
}

uint64_t sub_100415128(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  sub_100016250(&v5);
  *&v4 = v5;
  *(&v4 + 1) = SWORD2(v5);
  return sub_100539554(a2, 0x1000000u, 1, &v4, 0);
}

void sub_100415184(uint64_t a1)
{
  sub_100589670(a1);

  operator delete();
}

uint64_t sub_10041522C(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  sub_100044BBC((a1 + 16));
  return a1;
}

uint64_t sub_100415258(uint64_t a1)
{
  v10[0] = 0;
  v10[1] = 0;
  sub_100007F88(v10, a1 + 16);
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = dispatch_time(0, 10000000000);
    dispatch_source_set_timer(v2, v3, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
  }

  else
  {
    global_queue = dispatch_get_global_queue(0, 0);
    v5 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, global_queue);
    *(a1 + 8) = v5;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100415384;
    handler[3] = &unk_100ADF8F8;
    handler[4] = a1;
    dispatch_source_set_event_handler(v5, handler);
    v6 = *(a1 + 8);
    v7 = dispatch_time(0, 10000000000);
    dispatch_source_set_timer(v6, v7, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
    dispatch_resume(*(a1 + 8));
  }

  return sub_1000088CC(v10);
}

uint64_t sub_10041538C(uint64_t a1)
{
  v6[0] = 0;
  v6[1] = 0;
  sub_100007F88(v6, a1 + 16);
  if (*a1)
  {
    sqlite3_close(*a1);
    *a1 = 0;
    v2 = qword_100BCE940;
    if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Closed device database", v5, 2u);
    }
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    dispatch_source_cancel(v3);
    dispatch_release(*(a1 + 8));
    *(a1 + 8) = 0;
  }

  return sub_1000088CC(v6);
}

void sub_100415438(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_10041544C(uint64_t a1@<X8>)
{
  __p[0] = 0;
  __p[1] = 0;
  v17 = 0;
  sub_100007E30(__p, "/Library/Application Support/BTServer/pincode_defaults.db");
  if (qword_100B54220 != -1)
  {
    sub_100829888();
  }

  v2 = sub_1003C62F8(qword_100B54218, 1);
  if (v2)
  {
    v14[0] = 0;
    v14[1] = 0;
    v15 = 0;
    sub_1005C4A00(v2, v14);
    v3 = HIBYTE(v15);
    v4 = HIBYTE(v15);
    if (v15 < 0)
    {
      v3 = v14[1];
    }

    if (v3)
    {
      *a1 = *v14;
      v5 = v15;
LABEL_12:
      *(a1 + 16) = v5;
      goto LABEL_13;
    }

    if (SHIBYTE(v17) < 0)
    {
      sub_100008904(a1, __p[0], __p[1]);
      if ((v15 & 0x8000000000000000) == 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      *a1 = *__p;
      *(a1 + 16) = v17;
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_13;
      }
    }

    operator delete(v14[0]);
  }

  else
  {
    v6 = qword_100BCE940;
    if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_FAULT))
    {
      sub_1008298B0(v6, v7, v8, v9, v10, v11, v12, v13);
    }

    if ((SHIBYTE(v17) & 0x80000000) == 0)
    {
      *a1 = *__p;
      v5 = v17;
      goto LABEL_12;
    }

    sub_100008904(a1, __p[0], __p[1]);
  }

LABEL_13:
  if (SHIBYTE(v17) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_100415590(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1004155C8(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  v4 = a2[23];
  if (v4 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if (v4 >= 0)
  {
    v6 = a2[23];
  }

  else
  {
    v6 = *(a2 + 1);
  }

  v7 = a3[23];
  if ((v7 & 0x80u) == 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  if ((v7 & 0x80u) != 0)
  {
    v7 = *(a3 + 1);
  }

  if (!v7)
  {
LABEL_24:
    v9 = v5;
    goto LABEL_25;
  }

  v9 = &v5[v6];
  if (v6 >= v7)
  {
    v10 = &v9[-v7 + 1];
    if (v10 != v5)
    {
      v11 = v8 + 1;
      v12 = v7 - 1;
      v23 = v7 - 1;
LABEL_16:
      while (1)
      {
        v13 = *v8;
        v14 = __toupper(*v5);
        if (v14 == __toupper(v13))
        {
          break;
        }

        if (++v5 == v10)
        {
          goto LABEL_25;
        }
      }

      v15 = v5 + 1;
      while (v12)
      {
        v17 = *v15++;
        v16 = v17;
        v18 = *v11++;
        v19 = __toupper(v16);
        --v12;
        if (v19 != __toupper(v18))
        {
          ++v5;
          v12 = v23;
          v11 = v8 + 1;
          if (v5 != v10)
          {
            goto LABEL_16;
          }

          goto LABEL_25;
        }
      }

      goto LABEL_24;
    }
  }

LABEL_25:
  v20 = v3[23];
  if (v20 < 0)
  {
    v21 = v3;
    v3 = *v3;
    v20 = *(v21 + 1);
  }

  if (&v3[v20] == v9)
  {
    return -1;
  }

  else
  {
    return v9 - v3;
  }
}

void sub_100415704(const std::string *a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v3 = a2;
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v19 = 0uLL;
  v20 = 0;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  *__p = 0u;
  v8 = 0u;
  memset(v6, 0, sizeof(v6));
  sub_100415918(v6, a1, 8);
  while (1)
  {
    v5 = sub_100415A9C(v6, &v19, v3);
    if ((*(v5 + *(*v5 - 24) + 32) & 5) != 0)
    {
      break;
    }

    sub_100338878(a3, &v19);
  }

  if (SBYTE7(v8) < 0)
  {
    operator delete(__p[0]);
  }

  std::locale::~locale(&v6[1] + 1);
  std::istream::~istream();
  std::ios::~ios();
  if (SHIBYTE(v20) < 0)
  {
    operator delete(v19);
  }
}

void (__cdecl ***sub_100415918(void (__cdecl ***a1)(std::istringstream *__hidden this), const std::string *a2, int a3))(std::istringstream *__hidden this)
{
  a1[21] = 0;
  *a1 = v7;
  *(*(v7 - 3) + a1) = v6;
  a1[1] = 0;
  v8 = (*(*a1 - 3) + a1);
  std::ios_base::init(v8, a1 + 2);
  v8[1].__vftable = 0;
  v8[1].__fmtflags_ = -1;
  sub_1004183A0((a1 + 2), a2, a3 | 8);
  return a1;
}

void sub_100415A74(_Unwind_Exception *a1)
{
  std::istream::~istream();
  std::ios::~ios();
  _Unwind_Resume(a1);
}

sqlite3_stmt *sub_100415C00(sqlite3 **a1, const std::string::value_type *a2)
{
  if (!*a1)
  {
    v4 = qword_100BCE940;
    if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_FAULT))
    {
      sub_100829928(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  memset(&v19, 0, sizeof(v19));
  sub_100007E30(&v19, "SELECT ");
  v12 = "devices.id";
  for (i = 8; ; --i)
  {
    std::string::append(&v19, v12);
    if (!i)
    {
      break;
    }

    std::string::append(&v19, ", ");
    v12 += 136;
  }

  std::string::append(&v19, a2);
  v18 = 0;
  if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v14 = &v19;
  }

  else
  {
    v14 = v19.__r_.__value_.__r.__words[0];
  }

  if (sqlite3_prepare(*a1, v14, -1, &v18, 0) && os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_ERROR))
  {
    v15 = sqlite3_errmsg(*a1);
    sub_1008299A0(v15, v20);
  }

  v16 = v18;
  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }

  return v16;
}

void sub_100415D6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

sqlite3_stmt *sub_100415D9C(sqlite3 **a1)
{
  if (!*a1)
  {
    v2 = qword_100BCE940;
    if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_FAULT))
    {
      sub_100829928(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  __p[0] = 0;
  __p[1] = 0;
  v16 = 0;
  sub_100007E30(__p, "SELECT makes.name, makes.common_abbreviation, makes.make_name_match_BOOLean_modifiers FROM makes WHERE makes.name IS NOT NULL");
  v14 = 0;
  if (v16 >= 0)
  {
    v10 = __p;
  }

  else
  {
    v10 = __p[0];
  }

  if (sqlite3_prepare(*a1, v10, -1, &v14, 0) && os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_ERROR))
  {
    v11 = sqlite3_errmsg(*a1);
    sub_1008299A0(v11, v17);
  }

  v12 = v14;
  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p[0]);
  }

  return v12;
}

void sub_100415EAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

sqlite3_stmt *sub_100415ED4(sqlite3 **a1)
{
  if (!*a1)
  {
    v2 = qword_100BCE940;
    if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_FAULT))
    {
      sub_100829928(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  __p[0] = 0;
  __p[1] = 0;
  v16 = 0;
  sub_100007E30(__p, "SELECT makeGroups.make_group_name, makeGroups.make_group_friendly_names FROM makeGroups WHERE makeGroups.make_group_friendly_names IS NOT NULL");
  v14 = 0;
  if (v16 >= 0)
  {
    v10 = __p;
  }

  else
  {
    v10 = __p[0];
  }

  if (sqlite3_prepare(*a1, v10, -1, &v14, 0) && os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_ERROR))
  {
    v11 = sqlite3_errmsg(*a1);
    sub_1008299A0(v11, v17);
  }

  v12 = v14;
  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p[0]);
  }

  return v12;
}

void sub_100415FE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10041600C(sqlite3 **a1, sqlite3_stmt *a2, uint64_t a3)
{
  v4 = a1;
  if (!*a1)
  {
    v5 = qword_100BCE940;
    if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_FAULT))
    {
      sub_100829928(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  v13 = 0;
  while (1)
  {
    while (1)
    {
      v14 = sqlite3_step(a2);
      if (v14 != 100)
      {
        break;
      }

      if (v13)
      {
        v15 = qword_100BCE940;
        if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_ERROR))
        {
          v16 = sqlite3_column_int(a2, 0);
          *buf = 67109376;
          v27 = v13;
          v28 = 1024;
          v29 = v16;
          _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Device database returned more than one row (%d and %d) - db is corrupt", buf, 0xEu);
        }
      }

      else
      {
        v13 = sqlite3_column_int(a2, 0);
        if (sqlite3_column_count(a2) >= 2)
        {
          v24 = v4;
          v17 = 1;
          do
          {
            v18 = sqlite3_column_name(a2, v17);
            v19 = sqlite3_column_text(a2, v17);
            if (v18)
            {
              v20 = v19;
              if (v19)
              {
                v21 = 8;
                v22 = "BOOLeanProperties";
                while (strcmp(v18, v22))
                {
                  v22 += 136;
                  if (!--v21)
                  {
                    goto LABEL_22;
                  }
                }

                (*(v22 + 8))(a3, v20);
              }
            }

LABEL_22:
            ++v17;
          }

          while (v17 < sqlite3_column_count(a2));
          v4 = v24;
        }
      }
    }

    if (v14 == 1 || v14 == 21)
    {
      break;
    }

    if (v14 == 101)
    {
      return v13;
    }
  }

  if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_ERROR))
  {
    sub_1008299D8(v4);
  }

  return v13;
}

BOOL sub_100416234(sqlite3 **a1, sqlite3_stmt *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  sub_1000DEEA4(a4, &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    size = __str.__r_.__value_.__l.__size_;
    operator delete(__str.__r_.__value_.__l.__data_);
    if (size)
    {
LABEL_3:
      if (!*a1)
      {
        v7 = qword_100BCE940;
        if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_FAULT))
        {
          sub_100829928(v7, v8, v9, v10, v11, v12, v13, v14);
        }
      }

      v76 = a3;
      v74 = v4;
      while (1)
      {
        while (1)
        {
          while (1)
          {
            v15 = sqlite3_step(a2);
            if (v15 > 20)
            {
              break;
            }

            if (v15 != 5)
            {
              if (v15 == 1)
              {
                goto LABEL_141;
              }

              goto LABEL_143;
            }
          }

          if (v15 != 100)
          {
            if (v15 == 21)
            {
LABEL_141:
              result = os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_ERROR);
              if (!result)
              {
                return result;
              }

              sub_100829A5C(a1);
              return 0;
            }

            if (v15 == 101)
            {
              return 0;
            }

LABEL_143:
            v71 = qword_100BCE940;
            result = os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_ERROR);
            if (!result)
            {
              return result;
            }

            sub_100829AE4(v4, v71, v72);
            return 0;
          }

          if (sqlite3_column_count(a2) >= 1)
          {
            __s = 0;
            v16 = 0;
            v17 = 0;
            LOBYTE(v18) = 0;
            LOBYTE(v19) = 0;
            v20 = 0;
            do
            {
              v21 = sqlite3_column_name(a2, v20);
              v22 = sqlite3_column_text(a2, v20);
              if (v21)
              {
                v23 = v22;
                if (!strcmp(v21, "name"))
                {
                  __s = v23;
                }

                else if (!strcmp(v21, "common_abbreviation"))
                {
                  v16 = v23;
                }

                else if (!strcmp(v21, "make_name_match_BOOLean_modifiers"))
                {
                  v24 = atol(v23);
                  v17 = v24 & 1;
                  v18 = (v24 >> 1) & 1;
                  v19 = (v24 >> 2) & 1;
                }
              }

              ++v20;
            }

            while (v20 < sqlite3_column_count(a2));
            if (__s)
            {
              break;
            }
          }
        }

        memset(&v79, 0, sizeof(v79));
        if (v18)
        {
          std::string::assign(&v79, " ");
        }

        std::string::append(&v79, __s);
        if (v19)
        {
          std::string::append(&v79, " ");
        }

        if (v17)
        {
          sub_1000DEEA4(v4, &__str);
          v25 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
          v26 = SHIBYTE(__str.__r_.__value_.__r.__words[2]);
          v27 = __str.__r_.__value_.__r.__words[0];
          if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_str = &__str;
          }

          else
          {
            p_str = __str.__r_.__value_.__r.__words[0];
          }

          if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v25 = __str.__r_.__value_.__l.__size_;
          }

          if ((v79.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v29 = &v79;
          }

          else
          {
            v29 = v79.__r_.__value_.__r.__words[0];
          }

          if ((v79.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v30 = HIBYTE(v79.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v30 = v79.__r_.__value_.__l.__size_;
          }

          if (v30)
          {
            if (v25 >= v30)
            {
              v38 = p_str + v25;
              v39 = v29->__r_.__value_.__s.__data_[0];
              v40 = p_str;
              do
              {
                v41 = v25 - v30;
                if (v41 == -1)
                {
                  break;
                }

                v42 = memchr(v40, v39, v41 + 1);
                if (!v42)
                {
                  break;
                }

                v43 = v42;
                if (!memcmp(v42, v29, v30))
                {
                  goto LABEL_59;
                }

                v40 = (v43 + 1);
                v25 = v38 - (v43 + 1);
              }

              while (v25 >= v30);
              v43 = v38;
LABEL_59:
              v31 = v43 != v38 && v43 - p_str != -1;
              v4 = v74;
            }

            else
            {
              v31 = 0;
            }
          }

          else
          {
            v31 = 1;
          }

          a3 = v76;
          if (v26 < 0)
          {
            operator delete(v27);
            if (v31)
            {
LABEL_68:
              sub_100007E30(&__str, __s);
              std::string::operator=((v76 + 88), &__str);
              *(v76 + 80) = 1;
              if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__str.__r_.__value_.__l.__data_);
              }

              v45 = qword_100BCE940;
              if (!os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEBUG))
              {
                goto LABEL_122;
              }

              sub_1000DEEA4(v4, &__p);
              p_p = &__p;
              if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                p_p = __p.__r_.__value_.__r.__words[0];
              }

              v47 = &v79;
              if ((v79.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                v47 = v79.__r_.__value_.__r.__words[0];
              }

              LODWORD(__str.__r_.__value_.__l.__data_) = 136446722;
              *(__str.__r_.__value_.__r.__words + 4) = p_p;
              WORD2(__str.__r_.__value_.__r.__words[1]) = 2080;
              *(&__str.__r_.__value_.__r.__words[1] + 6) = v47;
              HIWORD(__str.__r_.__value_.__r.__words[2]) = 1024;
              v85 = 1;
              v37 = v45;
LABEL_76:
              _os_log_debug_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEBUG, "Friendly Name: %{public}s to Make Name substring matched: %s, require case sensitive match: %d", &__str, 0x1Cu);
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }

              goto LABEL_122;
            }
          }

          else if (v31)
          {
            goto LABEL_68;
          }
        }

        else
        {
          v32 = sub_1000DEEA4(v4, &__str);
          v33 = sub_1004155C8(v32, &__str, &v79);
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

          if (v33 != -1)
          {
            sub_100007E30(&__str, __s);
            std::string::operator=((a3 + 88), &__str);
            *(a3 + 80) = 1;
            if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__str.__r_.__value_.__l.__data_);
            }

            v34 = qword_100BCE940;
            if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEBUG))
            {
              sub_1000DEEA4(v4, &__p);
              v35 = &__p;
              if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                v35 = __p.__r_.__value_.__r.__words[0];
              }

              v36 = &v79;
              if ((v79.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                v36 = v79.__r_.__value_.__r.__words[0];
              }

              LODWORD(__str.__r_.__value_.__l.__data_) = 136446722;
              *(__str.__r_.__value_.__r.__words + 4) = v35;
              WORD2(__str.__r_.__value_.__r.__words[1]) = 2080;
              *(&__str.__r_.__value_.__r.__words[1] + 6) = v36;
              HIWORD(__str.__r_.__value_.__r.__words[2]) = 1024;
              v85 = 0;
              v37 = v34;
              goto LABEL_76;
            }

LABEL_122:
            v64 = 0;
            goto LABEL_123;
          }
        }

        if (v16)
        {
          memset(&__str, 0, sizeof(__str));
          sub_100007E30(&__p, v16);
          sub_100415704(&__p, 44, &__str);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          v75 = __str.__r_.__value_.__l.__size_;
          for (i = __str.__r_.__value_.__r.__words[0]; i != v75; i += 24)
          {
            sub_1000DEEA4(v4, &__p);
            v49 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
            v50 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
            v51 = __p.__r_.__value_.__r.__words[0];
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v52 = &__p;
            }

            else
            {
              v52 = __p.__r_.__value_.__r.__words[0];
            }

            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v49 = __p.__r_.__value_.__l.__size_;
            }

            v53 = *(i + 23);
            if (v53 >= 0)
            {
              v54 = i;
            }

            else
            {
              v54 = *i;
            }

            if (v53 >= 0)
            {
              v55 = *(i + 23);
            }

            else
            {
              v55 = *(i + 8);
            }

            if (v55)
            {
              v56 = v52 + v49;
              if (v49 >= v55)
              {
                v60 = *v54;
                v61 = v52;
                do
                {
                  v62 = v49 - v55;
                  if (v62 == -1)
                  {
                    break;
                  }

                  v63 = memchr(v61, v60, v62 + 1);
                  if (!v63)
                  {
                    break;
                  }

                  v57 = v63;
                  if (!memcmp(v63, v54, v55))
                  {
                    goto LABEL_97;
                  }

                  v61 = (v57 + 1);
                  v49 = v56 - (v57 + 1);
                }

                while (v49 >= v55);
              }

              v57 = v56;
LABEL_97:
              v59 = v57 == v56 || v57 - v52 == -1;
              v4 = v74;
              if (v50 < 0)
              {
LABEL_104:
                operator delete(v51);
              }
            }

            else
            {
              v59 = 0;
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                goto LABEL_104;
              }
            }

            if (!v59)
            {
              sub_100007E30(&__p, __s);
              a3 = v76;
              std::string::operator=((v76 + 88), &__p);
              *(v76 + 80) = 1;
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }

              v65 = qword_100BCE940;
              if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEBUG))
              {
                sub_1000DEEA4(v4, &__p);
                v66 = &__p;
                if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  v66 = __p.__r_.__value_.__r.__words[0];
                }

                if (*(i + 23) < 0)
                {
                  i = *i;
                }

                *buf = 136446466;
                v81 = v66;
                v82 = 2082;
                v83 = i;
                _os_log_debug_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEBUG, "Friendly Name: %{public}s to Make Abbreviation matched: %{public}s", buf, 0x16u);
                if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__p.__r_.__value_.__l.__data_);
                }
              }

              __p.__r_.__value_.__r.__words[0] = &__str;
              sub_1000161FC(&__p);
              goto LABEL_122;
            }

            a3 = v76;
          }

          __p.__r_.__value_.__r.__words[0] = &__str;
          sub_1000161FC(&__p);
        }

        v64 = 1;
LABEL_123:
        if (SHIBYTE(v79.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v79.__r_.__value_.__l.__data_);
          if ((v64 & 1) == 0)
          {
            return 1;
          }
        }

        else if ((v64 & 1) == 0)
        {
          return 1;
        }
      }
    }
  }

  else if (*(&__str.__r_.__value_.__s + 23))
  {
    goto LABEL_3;
  }

  v68 = qword_100BCE940;
  result = os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEBUG);
  if (result)
  {
    sub_100829B78(v4, v68, v70);
    return 0;
  }

  return result;
}

void sub_1004169EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  a19 = (v30 - 128);
  sub_1000161FC(&a19);
  if (a30 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

BOOL sub_100416A98(sqlite3 **a1, sqlite3_stmt *a2, uint64_t a3, uint64_t a4)
{
  sub_1000DEEA4(a4, &v53);
  if ((SHIBYTE(v55) & 0x80000000) == 0)
  {
    if (HIBYTE(v55))
    {
      goto LABEL_3;
    }

LABEL_61:
    v39 = qword_100BCE940;
    result = os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEBUG);
    if (!result)
    {
      return result;
    }

    sub_100829D24(a4, v39, v41);
    return 0;
  }

  v38 = v54;
  operator delete(v53);
  if (!v38)
  {
    goto LABEL_61;
  }

LABEL_3:
  if (!*a1)
  {
    v6 = qword_100BCE940;
    if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_FAULT))
    {
      sub_100829928(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  v47 = a1;
  while (1)
  {
LABEL_7:
    while (1)
    {
      v14 = sqlite3_step(a2);
      if (v14 > 20)
      {
        break;
      }

      if (v14 != 5)
      {
        if (v14 != 1)
        {
LABEL_73:
          v43 = qword_100BCE940;
          result = os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_ERROR);
          if (!result)
          {
            return result;
          }

          sub_100829C90(a4, v43, v44);
          return 0;
        }

        goto LABEL_71;
      }
    }

    if (v14 != 100)
    {
      if (v14 != 21)
      {
        if (v14 != 101)
        {
          goto LABEL_73;
        }

        return 0;
      }

LABEL_71:
      result = os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      sub_100829C08(a1);
      return 0;
    }

    if (sqlite3_column_count(a2) >= 1)
    {
      v15 = 0;
      v16 = 0;
      v17 = 0;
      do
      {
        v18 = sqlite3_column_name(a2, v17);
        v19 = sqlite3_column_text(a2, v17);
        if (v18)
        {
          v20 = v19;
          if (!strcmp(v18, "make_group_name"))
          {
            v15 = v20;
          }

          else if (!strcmp(v18, "make_group_friendly_names"))
          {
            v16 = v20;
          }
        }

        ++v17;
      }

      while (v17 < sqlite3_column_count(a2));
      if (v15 && v16)
      {
        break;
      }
    }
  }

  v53 = 0;
  v54 = 0;
  v55 = 0;
  sub_100007E30(&__p, v16);
  sub_100415704(&__p, 44, &v53);
  __s = v15;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v22 = v53;
  v21 = v54;
  v50 = v54;
  while (2)
  {
    if (v22 == v21)
    {
      __p.__r_.__value_.__r.__words[0] = &v53;
      sub_1000161FC(&__p);
      a1 = v47;
      goto LABEL_7;
    }

    sub_1000DEEA4(a4, &__p);
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    v24 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    v25 = __p.__r_.__value_.__r.__words[0];
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    v27 = v22[23];
    if (v27 >= 0)
    {
      v28 = v22;
    }

    else
    {
      v28 = *v22;
    }

    if (v27 >= 0)
    {
      v29 = v22[23];
    }

    else
    {
      v29 = *(v22 + 1);
    }

    if (v29)
    {
      v30 = p_p + size;
      if (size >= v29)
      {
        v49 = __p.__r_.__value_.__r.__words[0];
        v33 = *v28;
        v34 = p_p;
        do
        {
          v35 = size - v29;
          if (v35 == -1)
          {
            break;
          }

          v36 = memchr(v34, v33, v35 + 1);
          if (!v36)
          {
            break;
          }

          v31 = v36;
          if (!memcmp(v36, v28, v29))
          {
            goto LABEL_46;
          }

          v34 = (v31 + 1);
          size = v30 - (v31 + 1);
        }

        while (size >= v29);
        v31 = v30;
LABEL_46:
        v25 = v49;
      }

      else
      {
        v31 = p_p + size;
      }

      v32 = v31 == v30 || v31 - p_p == -1;
      if (v24 < 0)
      {
LABEL_54:
        operator delete(v25);
      }
    }

    else
    {
      v32 = 0;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_54;
      }
    }

    if (v32)
    {
      v22 += 24;
      v21 = v50;
      continue;
    }

    break;
  }

  sub_100007E30(&__p, __s);
  std::string::operator=((a3 + 88), &__p);
  *(a3 + 80) = 1;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v42 = qword_100BCE940;
  if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEBUG))
  {
    sub_1000DEEA4(a4, &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v45 = &__p;
    }

    else
    {
      v45 = __p.__r_.__value_.__r.__words[0];
    }

    if (v22[23] < 0)
    {
      v22 = *v22;
    }

    *buf = 136446466;
    v57 = v45;
    v58 = 2082;
    v59 = v22;
    _os_log_debug_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEBUG, "Friendly Name: %{public}s to Make Group matched: %{public}s", buf, 0x16u);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  __p.__r_.__value_.__r.__words[0] = &v53;
  sub_1000161FC(&__p);
  return 1;
}

void sub_100416EF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21)
{
  __p = &a21;
  sub_1000161FC(&__p);
  _Unwind_Resume(a1);
}

uint64_t sub_100416F50(sqlite3 **a1, uint64_t a2)
{
  v68[0] = 0;
  v68[1] = 0;
  sub_100007F88(v68, (a1 + 2));
  v90 = 0;
  v89 = 0u;
  memset(v88, 0, sizeof(v88));
  v86 = 0u;
  *__p = 0u;
  v84 = 0u;
  *v85 = 0u;
  v82 = 0u;
  *v83 = 0u;
  sub_1000DE474(&v82 + 1);
  BYTE2(v83[0]) = 0;
  BYTE4(v83[0]) = 0;
  BYTE2(v85[0]) = 0;
  BYTE4(v85[0]) = 0;
  DWORD1(v88[1]) = 0;
  v84 = 0uLL;
  v83[1] = 0;
  LOBYTE(v85[0]) = 0;
  v86 = 0uLL;
  v85[1] = 0;
  LOBYTE(__p[0]) = 0;
  memset(v88, 0, 19);
  __p[1] = 0;
  BYTE8(v88[1]) = 1;
  *(&v88[1] + 14) = 0;
  *(&v88[1] + 9) = 0;
  v89 = 0uLL;
  *(&v88[2] + 1) = 0;
  LOBYTE(v90) = 0;
  *(&v90 + 2) = 0;
  if (!*a1)
  {
    memset(v73, 0, 24);
    sub_10041544C(v73);
    v4 = v73[23] >= 0 ? v73 : *v73;
    v5 = sqlite3_open_v2(v4, a1, 1, 0);
    v6 = qword_100BCE940;
    if (v5)
    {
      if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_ERROR))
      {
        v7 = sqlite3_errmsg(*a1);
        sub_100829DB4(v7, v81);
      }

      sub_10041538C(a1);
    }

    else if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
    {
      v21 = v73;
      if (v73[23] < 0)
      {
        v21 = *v73;
      }

      LODWORD(__str.__r_.__value_.__l.__data_) = 136315138;
      *(__str.__r_.__value_.__r.__words + 4) = v21;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Opened device database at location %s", &__str, 0xCu);
    }

    if ((v73[23] & 0x80000000) != 0)
    {
      operator delete(*v73);
    }

    if (v5)
    {
      v22 = 1;
      goto LABEL_159;
    }
  }

  sub_1000DEEA4(a2, v73);
  if ((v73[23] & 0x80000000) != 0)
  {
    v8 = *&v73[8];
    operator delete(*v73);
    if (!v8)
    {
LABEL_43:
      v18 = 0;
      goto LABEL_44;
    }
  }

  else if (!v73[23])
  {
    goto LABEL_43;
  }

  v9 = sub_100415C00(a1, " FROM devices, manufacturers, matching_rules_oui, oui_assignments, makes WHERE ((oui_assignments.oui = ?1) AND (matching_rules_oui.manufacturer_id = oui_assignments.manufacturer_id)) AND (matching_rules_oui.name = ?2) AND (matching_rules_oui.manufacturer_id = manufacturers.id) AND (matching_rules_oui.device_id = devices.id) AND CASE WHEN devices.make_id is NULL THEN (makes.id = 0) ELSE (devices.make_id = makes.id) END");
  if (!v9)
  {
    goto LABEL_43;
  }

  memset(v73, 0, 24);
  sub_1000BE6F8((a2 + 128), &__str);
  std::string::basic_string(v73, &__str, 0, 8uLL, buf);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  memset(&__str, 0, sizeof(__str));
  sub_1000DEEA4(a2, &__str);
  v10 = qword_100BCE940;
  if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v73;
    if (v73[23] < 0)
    {
      v11 = *v73;
    }

    p_str = &__str;
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_str = __str.__r_.__value_.__r.__words[0];
    }

    *buf = 136315394;
    *&buf[4] = v11;
    *&buf[12] = 2080;
    *&buf[14] = p_str;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Looking up by OUI %s and Name %s", buf, 0x16u);
  }

  if (v73[23] >= 0)
  {
    v13 = v73;
  }

  else
  {
    v13 = *v73;
  }

  if (v73[23] >= 0)
  {
    v14 = v73[23];
  }

  else
  {
    v14 = *&v73[8];
  }

  if (sqlite3_bind_text(v9, 1, v13, v14, 0) || ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v15 = &__str) : (v15 = __str.__r_.__value_.__r.__words[0]), (__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v16 = HIBYTE(__str.__r_.__value_.__r.__words[2])) : (v16 = __str.__r_.__value_.__r.__words[1]), sqlite3_bind_text(v9, 2, v15, v16, 0)))
  {
    if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_ERROR))
    {
      v17 = sqlite3_errmsg(*a1);
      sub_100829DEC(v17, v77);
    }
  }

  else
  {
    v57 = sub_10041600C(a1, v9, &v82);
    if (v57)
    {
      v58 = qword_100BCE940;
      if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000E5A58(a2, buf);
        v59 = v79 >= 0 ? buf : *buf;
        v76[0].n128_u32[0] = 136446466;
        *(v76[0].n128_u64 + 4) = v59;
        v76[0].n128_u16[6] = 1024;
        *(&v76[0].n128_u32[3] + 2) = v57;
        _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "Found a OUI profile for device %{public}s at row %d", v76, 0x12u);
        if (v79 < 0)
        {
          operator delete(*buf);
        }
      }

      v18 = 1;
      goto LABEL_39;
    }
  }

  v18 = 0;
LABEL_39:
  sqlite3_finalize(v9);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if ((v73[23] & 0x80000000) != 0)
  {
    operator delete(*v73);
  }

LABEL_44:
  sub_1000DEEA4(a2, v73);
  if ((v73[23] & 0x80000000) != 0)
  {
    if (!*&v73[8])
    {
      v23 = *v73;
LABEL_82:
      operator delete(v23);
      goto LABEL_83;
    }
  }

  else if (!v73[23])
  {
    goto LABEL_83;
  }

  if (sub_100543D44(a2))
  {
    if ((v73[23] & 0x80000000) != 0)
    {
      operator delete(*v73);
    }

    goto LABEL_64;
  }

  v19 = sub_100543D74(a2);
  v20 = v19;
  if ((v73[23] & 0x80000000) == 0)
  {
    if ((v19 & 1) == 0)
    {
      goto LABEL_83;
    }

    goto LABEL_64;
  }

  operator delete(*v73);
  if (v20)
  {
LABEL_64:
    v24 = sub_100415C00(a1, " FROM devices, matching_rules_hash, makes WHERE ((matching_rules_hash.name IS NULL) OR (matching_rules_hash.name = ?1)) AND ((matching_rules_hash.primaryHash IS NULL) OR (matching_rules_hash.primaryHash = ?2)) AND ((matching_rules_hash.secondaryHash IS NULL) OR (matching_rules_hash.secondaryHash = ?3)) AND (matching_rules_hash.device_id = devices.id) AND CASE WHEN devices.make_id is NULL THEN (makes.id = 0) ELSE (devices.make_id = makes.id) END");
    if (!v24)
    {
      goto LABEL_83;
    }

    memset(&__str, 0, sizeof(__str));
    sub_1000DEEA4(a2, &__str);
    memset(buf, 0, 20);
    sub_100543D4C(a2, buf);
    memset(v76, 0, 20);
    sub_100543D7C(a2, v76);
    v25 = qword_100BCE940;
    if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
    {
      v26 = &__str;
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v26 = __str.__r_.__value_.__r.__words[0];
      }

      *v73 = 136316162;
      *&v73[4] = v26;
      *&v73[12] = 1042;
      *&v73[14] = 20;
      *&v73[18] = 2098;
      *&v73[20] = buf;
      v74 = 0x832000000140412;
      v75 = v76;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Looking up by name %s, primaryHash %{public}.20P, secondaryHash %{public}.20P", v73, 0x2Cu);
    }

    v27 = (__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__str : __str.__r_.__value_.__r.__words[0];
    v28 = (__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(__str.__r_.__value_.__r.__words[2]) : LODWORD(__str.__r_.__value_.__r.__words[1]);
    if (sqlite3_bind_text(v24, 1, v27, v28, 0) || sqlite3_bind_blob(v24, 2, buf, 20, 0) || sqlite3_bind_blob(v24, 3, v76, 20, 0))
    {
      if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_ERROR))
      {
        v29 = sqlite3_errmsg(*a1);
        sub_100829DEC(v29, v69);
      }
    }

    else
    {
      v60 = sub_10041600C(a1, v24, &v82);
      if (v60)
      {
        v61 = qword_100BCE940;
        if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
        {
          sub_1000E5A58(a2, v73);
          v62 = v73[23] >= 0 ? v73 : *v73;
          *v69 = 136446466;
          v70 = v62;
          v71 = 1024;
          v72 = v60;
          _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "Found a hash profile for device %{public}s at row %d", v69, 0x12u);
          if ((v73[23] & 0x80000000) != 0)
          {
            operator delete(*v73);
          }
        }

        v18 = 1;
      }
    }

    sqlite3_finalize(v24);
    if ((SHIBYTE(__str.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_83;
    }

    v23 = __str.__r_.__value_.__r.__words[0];
    goto LABEL_82;
  }

LABEL_83:
  *v66 = 0;
  *v67 = 0;
  if (sub_1000C2364(a2, &v67[1], v67, &v66[1], v66))
  {
    v30 = qword_100BCE940;
    if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
    {
      v31 = v18;
      v33 = v67[0];
      v32 = v67[1];
      v34 = v66[0];
      v35 = v66[1];
      sub_1000E5A58(a2, &__str);
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v36 = &__str;
      }

      else
      {
        v36 = __str.__r_.__value_.__r.__words[0];
      }

      *v73 = 67110146;
      *&v73[4] = v32;
      *&v73[8] = 1024;
      *&v73[10] = v33;
      *&v73[14] = 1024;
      *&v73[16] = v35;
      *&v73[20] = 1024;
      *&v73[22] = v34;
      *&v73[26] = 2080;
      v74 = v36;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Looking up by vidSrc 0x%x vid 0x%x pid 0x%x version 0x%x for %s", v73, 0x24u);
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      v18 = v31;
    }

    v37 = sub_100415C00(a1, " FROM devices, matching_rules_did, makes WHERE ((matching_rules_did.vid_src IS NULL) OR (matching_rules_did.vid_src = ?1)) AND ((matching_rules_did.vid IS NULL) OR (matching_rules_did.vid = ?2)) AND ((matching_rules_did.pid IS NULL) OR (matching_rules_did.pid = ?3)) AND ((matching_rules_did.version IS NULL) OR (matching_rules_did.version = ?4)) AND (matching_rules_did.device_id = devices.id) AND CASE WHEN devices.make_id is NULL THEN (makes.id = 0) ELSE (devices.make_id = makes.id) END");
    v38 = v37;
    if (v37)
    {
      if (sqlite3_bind_int(v37, 1, v67[1]) || sqlite3_bind_int(v38, 2, v67[0]) || sqlite3_bind_int(v38, 3, v66[1]) || sqlite3_bind_int(v38, 4, v66[0]))
      {
        if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_ERROR))
        {
          v39 = sqlite3_errmsg(*a1);
          sub_100829DEC(v39, v76);
        }
      }

      else
      {
        v63 = sub_10041600C(a1, v38, &v82);
        if (v63)
        {
          v64 = qword_100BCE940;
          if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
          {
            sub_1000E5A58(a2, v73);
            v65 = v73[23] >= 0 ? v73 : *v73;
            LODWORD(__str.__r_.__value_.__l.__data_) = 136446466;
            *(__str.__r_.__value_.__r.__words + 4) = v65;
            WORD2(__str.__r_.__value_.__r.__words[1]) = 1024;
            *(&__str.__r_.__value_.__r.__words[1] + 6) = v63;
            _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "Found a DID profile for device %{public}s at row %d", &__str, 0x12u);
            if ((v73[23] & 0x80000000) != 0)
            {
              operator delete(*v73);
            }
          }

          v18 = 1;
        }
      }

      sqlite3_finalize(v38);
    }
  }

  memset(v73, 0, 24);
  if (LOBYTE(__p[0]) != 1 || (std::string::operator=(v73, &__p[1]), (__p[0] & 1) == 0))
  {
    v40 = qword_100BCE940;
    if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(a2, &__str);
      v41 = (__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__str : __str.__r_.__value_.__r.__words[0];
      *buf = 136446210;
      *&buf[4] = v41;
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Performing substring search for make name of device %{public}s", buf, 0xCu);
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }
    }

    v42 = sub_100415D9C(a1);
    if (v42)
    {
      if (sub_100416234(a1, v42, &v82, a2))
      {
        if (LOBYTE(__p[0]) == 1)
        {
          std::string::operator=(v73, &__p[1]);
        }

        v43 = qword_100BCE940;
        if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
        {
          sub_1000E5A58(a2, &__str);
          if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v44 = &__str;
          }

          else
          {
            v44 = __str.__r_.__value_.__r.__words[0];
          }

          v45 = v73;
          if (v73[23] < 0)
          {
            v45 = *v73;
          }

          *buf = 136446466;
          *&buf[4] = v44;
          *&buf[12] = 2082;
          *&buf[14] = v45;
          _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "Found make of device: %{public}s, Make: %{public}s", buf, 0x16u);
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }
        }

        v18 = 1;
      }

      else
      {
        v46 = qword_100BCE940;
        if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
        {
          sub_1000E5A58(a2, &__str);
          v47 = (__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__str : __str.__r_.__value_.__r.__words[0];
          *buf = 136446210;
          *&buf[4] = v47;
          _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "No make name found for device %{public}s", buf, 0xCu);
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }
        }
      }

      sqlite3_finalize(v42);
      if (LOBYTE(__p[0]) != 1 || (std::string::operator=(v73, &__p[1]), (__p[0] & 1) == 0))
      {
        v48 = sub_100415ED4(a1);
        if (v48)
        {
          v49 = qword_100BCE940;
          if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
          {
            sub_1000E5A58(a2, &__str);
            v50 = (__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__str : __str.__r_.__value_.__r.__words[0];
            *buf = 136446210;
            *&buf[4] = v50;
            _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "Performing friendly name search for make group of device %{public}s", buf, 0xCu);
            if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__str.__r_.__value_.__l.__data_);
            }
          }

          if (sub_100416A98(a1, v48, &v82, a2))
          {
            if (LOBYTE(__p[0]) == 1)
            {
              std::string::operator=(v73, &__p[1]);
            }

            v51 = qword_100BCE940;
            if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
            {
              sub_1000E5A58(a2, &__str);
              if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v52 = &__str;
              }

              else
              {
                v52 = __str.__r_.__value_.__r.__words[0];
              }

              v53 = v73;
              if (v73[23] < 0)
              {
                v53 = *v73;
              }

              *buf = 136446466;
              *&buf[4] = v52;
              *&buf[12] = 2082;
              *&buf[14] = v53;
              _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "Found make group of device: %{public}s, Make Group: %{public}s", buf, 0x16u);
              if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__str.__r_.__value_.__l.__data_);
              }
            }

            v18 = 1;
          }

          else
          {
            v54 = qword_100BCE940;
            if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
            {
              sub_1000E5A58(a2, &__str);
              v55 = (__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__str : __str.__r_.__value_.__r.__words[0];
              *buf = 136446210;
              *&buf[4] = v55;
              _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "No make group found for device %{public}s", buf, 0xCu);
              if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__str.__r_.__value_.__l.__data_);
              }
            }
          }

          sqlite3_finalize(v48);
        }
      }
    }
  }

  sub_100415258(a1);
  if (v18)
  {
    sub_10053988C(a2);
    sub_1005398FC(a2, &v82);
  }

  if ((v73[23] & 0x80000000) != 0)
  {
    operator delete(*v73);
  }

  v22 = 0;
LABEL_159:
  if (SHIBYTE(v88[0]) < 0)
  {
    operator delete(__p[1]);
  }

  if (SHIBYTE(v86) < 0)
  {
    operator delete(v85[1]);
  }

  if (SHIBYTE(v84) < 0)
  {
    operator delete(v83[1]);
  }

  nullsub_21();
  sub_1000088CC(v68);
  return v22;
}

void sub_100417CEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *__p, uint64_t a37, int a38, __int16 a39, char a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  sub_100320BE8(&a45);
  sub_1000088CC(&a11);
  _Unwind_Resume(a1);
}

uint64_t sub_100417DDC(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[3];
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  std::locale::~locale((a1 + 24));

  return std::istream::~istream();
}

int8x8_t sub_100417EF8(uint64_t a1, char *a2)
{
  v3 = atol(a2);
  *(a1 + 49) = v3 & 1;
  *(a1 + 48) = 1;
  *(a1 + 19) = (v3 & 2) != 0;
  *(a1 + 18) = 1;
  *(a1 + 51) = (v3 & 4) != 0;
  *(a1 + 50) = 1;
  *(a1 + 112) = (v3 & 8) != 0;
  *(a1 + 113) = (v3 & 0x10) != 0;
  *(a1 + 114) = (v3 & 0x20) != 0;
  *(a1 + 121) = (v3 & 0x40) != 0;
  *(a1 + 122) = (v3 & 0x80) != 0;
  *(a1 + 123) = BYTE1(v3) & 1;
  *(a1 + 132) = (v3 & 0x200) != 0;
  *(a1 + 133) = (v3 & 0x400) != 0;
  *(a1 + 120) = (v3 & 0x800) != 0;
  v4 = vdupq_n_s64(v3);
  *(a1 + 156) = vuzp1_s8(vand_s8(vmovn_s32(vuzp1q_s32(vshlq_u64(v4, xmmword_1008A6B00), vshlq_u64(v4, xmmword_1008A6AF0))), 0x1000100010001), *v4.i8).u32[0];
  *(a1 + 160) = (v3 & 0xFFFFFFFF80000000) != 0;
  v5.i64[0] = 0x101010101010101;
  v5.i64[1] = 0x101010101010101;
  *(a1 + 140) = vandq_s8(vuzp1q_s8(vuzp1q_s16(vuzp1q_s32(vshlq_u64(v4, xmmword_1008A6B20), vshlq_u64(v4, xmmword_1008A6B10)), vuzp1q_s32(vshlq_u64(v4, xmmword_1008A6B40), vshlq_u64(v4, xmmword_1008A6B30))), vuzp1q_s16(vuzp1q_s32(vshlq_u64(v4, xmmword_1008A6B60), vshlq_u64(v4, xmmword_1008A6B50)), vuzp1q_s32(vshlq_u64(v4, xmmword_1008A6B80), vshlq_u64(v4, xmmword_1008A6B70)))), v5);
  *v4.i8 = vand_s8(vmovn_s32(vuzp1q_s32(vshlq_u64(v4, xmmword_1008A6BA0), vshlq_u64(v4, xmmword_1008A6B90))), 0x1000100010001);
  result = vuzp1_s8(*v4.i8, *v4.i8);
  *(a1 + 161) = result.i32[0];
  *(a1 + 165) = (v3 & 0x8000000000) != 0;
  *(a1 + 166) = (v3 & 0x4000000000) != 0;
  return result;
}

void sub_100418094(std::string *a1, char *a2)
{
  sub_100007E30(&__str, a2);
  std::string::operator=(a1 + 1, &__str);
  a1->__r_.__value_.__s.__data_[20] = 1;
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }
}

void sub_1004180E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100418104(_BYTE *a1, char *a2)
{
  sub_1006E5ED8(&v3, a2);
  sub_1006E5F04((a1 + 1), &v3);
  *a1 = 1;
  nullsub_21();
}

uint64_t sub_100418198(uint64_t a1, char *a2)
{
  if (a2)
  {
    result = atoi(a2);
  }

  else
  {
    result = 0;
  }

  *(a1 + 136) = result;
  return result;
}

uint64_t sub_1004181D0(uint64_t a1, char *a2)
{
  if (a2)
  {
    result = atoi(a2);
  }

  else
  {
    result = 0;
  }

  *(a1 + 128) = result;
  return result;
}

uint64_t sub_100418214(uint64_t a1, char *a2)
{
  if (a2)
  {
    result = atoi(a2);
  }

  else
  {
    result = 0;
  }

  *(a1 + 116) = result;
  return result;
}

void sub_10041824C(uint64_t a1, char *a2)
{
  sub_100007E30(&__str, a2);
  std::string::operator=((a1 + 88), &__str);
  *(a1 + 80) = 1;
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }
}

void sub_1004182A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100418360(_Unwind_Exception *a1)
{
  v4 = *v3;
  if (*v3)
  {
    *(v1 + 48) = v4;
    operator delete(v4);
  }

  sub_1003C95E8(v2, *(v1 + 16));

  operator delete();
}

uint64_t sub_1004183A0(uint64_t a1, const std::string *a2, int a3)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a3;
  std::string::operator=((a1 + 64), a2);
  sub_10000766C(a1);
  return a1;
}

void sub_10041844C(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void sub_100418474(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, v5, OS_LOG_TYPE_ERROR, a4, a5, 0xCu);
}

uint64_t sub_100418490(uint64_t a1)
{
  *a1 = &off_100AF4EA0;
  sub_100044BBC((a1 + 8));
  v2 = objc_autoreleasePoolPush();
  sub_1000BE8A8();
  v3 = _CFPreferencesCopyKeyListWithContainer();
  v4 = CFPreferencesCopyKeyList(@"com.apple.MobileBluetooth.devices", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  if (![v3 count] && -[__CFArray count](v4, "count"))
  {
    v5 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Using legacy keys", v7, 2u);
    }

    byte_100B54330 = 0;
  }

  objc_autoreleasePoolPop(v2);
  return a1;
}

void *sub_1004185F4(void *a1)
{
  *a1 = &off_100AF4EA0;
  sub_10007A068((a1 + 1));
  return a1;
}

void sub_100418638(void *a1)
{
  *a1 = &off_100AF4EA0;
  sub_10007A068((a1 + 1));

  operator delete();
}

uint64_t sub_10041869C(uint64_t a1, uint64_t a2)
{
  context = objc_autoreleasePoolPush();
  if (byte_100B54330 == 1)
  {
    sub_1000BE8A8();
    v3 = _CFPreferencesCopyKeyListWithContainer();
  }

  else
  {
    v3 = CFPreferencesCopyKeyList(@"com.apple.MobileBluetooth.devices", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  }

  v4 = v3;
  if (v3)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v5 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_FAULT))
      {
        sub_100829E24(v5, v6, v7, v8, v9, v10, v11, v12);
      }
    }
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v13 = v4;
  v14 = [v13 countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v14)
  {
    v15 = *v35;
    do
    {
      v16 = 0;
      do
      {
        if (*v35 != v15)
        {
          objc_enumerationMutation(v13);
        }

        v17 = *(*(&v34 + 1) + 8 * v16);
        v33 = 0;
        v32 = 0;
        if (sub_10009D0B4(&v32, [v17 UTF8String]))
        {
          if (qword_100B508F0 != -1)
          {
            sub_100829E9C();
          }

          v18 = sub_1000E6554(off_100B508E8, &v32, 1);
          v20 = *(a2 + 8);
          v19 = *(a2 + 16);
          if (v20 >= v19)
          {
            v22 = (v20 - *a2) >> 3;
            if ((v22 + 1) >> 61)
            {
              sub_1000C7698();
            }

            v23 = v19 - *a2;
            v24 = v23 >> 2;
            if (v23 >> 2 <= (v22 + 1))
            {
              v24 = v22 + 1;
            }

            if (v23 >= 0x7FFFFFFFFFFFFFF8)
            {
              v25 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v25 = v24;
            }

            if (v25)
            {
              sub_100008108(a2, v25);
            }

            v26 = (8 * v22);
            *v26 = v18;
            v21 = 8 * v22 + 8;
            v27 = *(a2 + 8) - *a2;
            v28 = v26 - v27;
            memcpy(v26 - v27, *a2, v27);
            v29 = *a2;
            *a2 = v28;
            *(a2 + 8) = v21;
            *(a2 + 16) = 0;
            if (v29)
            {
              operator delete(v29);
            }
          }

          else
          {
            *v20 = v18;
            v21 = (v20 + 1);
          }

          *(a2 + 8) = v21;
        }

        v16 = v16 + 1;
      }

      while (v14 != v16);
      v14 = [v13 countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v14);
  }

  objc_autoreleasePoolPop(context);
  return 0;
}

uint64_t sub_100418984()
{
  if (byte_100B54330)
  {
    v0 = &kCFPreferencesAnyUser;
  }

  else
  {
    v0 = &kCFPreferencesCurrentUser;
  }

  return __CFPreferencesFlushCachesForIdentifier(@"com.apple.MobileBluetooth.devices", *v0);
}

uint64_t sub_1004189B4()
{
  v0 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "Disable cfprefs daemon cache", v2, 2u);
  }

  return _CFPreferencesSetDaemonCacheEnabled();
}

uint64_t sub_100418A48(uint64_t a1, uint64_t a2)
{
  if (qword_100B508F0 != -1)
  {
    sub_100829EC4();
  }

  v3 = sub_1000BE6E8(off_100B508E8);
  v4 = qword_100BCE8D8;
  if (v3)
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000DEEA4(a2, __p);
      v5 = v20 >= 0 ? __p : __p[0];
      *buf = 136315138;
      v22 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Trying to delete device %s", buf, 0xCu);
      if (v20 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v6 = objc_autoreleasePoolPush();
    v8 = *(a2 + 128);
    v7 = (a2 + 128);
    *buf = v8;
    LOWORD(v22) = *(v7 + 2);
    sub_1000BE6F8(buf, __p);
    if (v20 >= 0)
    {
      v9 = __p;
    }

    else
    {
      v9 = __p[0];
    }

    v10 = [NSString stringWithUTF8String:v9];
    if (v20 < 0)
    {
      operator delete(__p[0]);
    }

    sub_100418D60(v10, 0);

    objc_autoreleasePoolPop(v6);
    v17 = *v7;
    v18 = *(v7 + 2);
    sub_1000BE6F8(&v17, __p);
    if (v20 >= 0)
    {
      v11 = __p;
    }

    else
    {
      v11 = __p[0];
    }

    v12 = [NSString stringWithUTF8String:v11];
    if (v20 < 0)
    {
      operator delete(__p[0]);
    }

    v13 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000BE6F8(&v17, __p);
      v14 = v20 >= 0 ? __p : __p[0];
      *buf = 136446210;
      v22 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Deleting address %{public}s", buf, 0xCu);
      if (v20 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v15 = sub_1000BE814(v12);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_FAULT))
    {
      sub_100829F6C();
    }

    return 0;
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_100829ED8();
    }

    return 1;
  }
}

void sub_100418D60(CFStringRef key, CFPropertyListRef value)
{
  if (byte_100B54330 == 1)
  {
    v4 = sub_1000BE8A8();

    __CFPreferencesSetAppValueWithContainer(key, value, @"com.apple.MobileBluetooth.devices", v4);
  }

  else
  {

    CFPreferencesSetValue(key, value, @"com.apple.MobileBluetooth.devices", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  }
}

uint64_t sub_100418E10(uint64_t a1, unsigned __int8 *a2, const char *a3, std::string *a4)
{
  v7 = objc_autoreleasePoolPush();
  v8 = sub_1000BE4EC(v7, a2, a3);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    std::string::assign(a4, [v8 UTF8String]);

    objc_autoreleasePoolPop(v7);
    return 0;
  }

  else
  {

    objc_autoreleasePoolPop(v7);
    if (!strncmp("Name", a3, 4uLL) && sub_1000295DC(a2) && os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_100829FAC();
    }

    return 1;
  }
}

uint64_t sub_100418F44(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  v8 = objc_autoreleasePoolPush();
  if (*(a4 + 23) >= 0)
  {
    v9 = a4;
  }

  else
  {
    v9 = *a4;
  }

  v10 = [NSString stringWithUTF8String:v9];
  sub_10041ACA8(a1, a2, a3, v10);

  objc_autoreleasePoolPop(v8);
  return 0;
}

uint64_t sub_100418FF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, id a5)
{
  v9 = objc_autoreleasePoolPush();
  v10 = sub_1000BE4EC(v9, a2, a3);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v10 length] == a5)
  {
    [v10 getBytes:a4 length:a5];
    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  objc_autoreleasePoolPop(v9);
  return v11;
}

uint64_t sub_1004190E0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = objc_autoreleasePoolPush();
  if (a4)
  {
    v11 = [NSData dataWithBytes:a4 length:a5];
  }

  else
  {
    v11 = 0;
  }

  sub_10041ACA8(a1, a2, a3, v11);

  objc_autoreleasePoolPop(v10);
  return 0;
}

uint64_t sub_100419404(uint64_t a1, unsigned __int8 *a2, void *a3)
{
  v6 = a3 + 1;
  sub_10000CEDC(a3, a3[1]);
  *a3 = v6;
  a3[2] = 0;
  *v6 = 0;
  memset(&__p, 0, sizeof(__p));
  v7 = 1;
  if (!sub_100418E10(a1, a2, "ServiceHandsfree", &__p))
  {
    v8 = sub_100419A38(0, &__p);
    v24 = 1;
    v26 = &v24;
    v7 = 0;
    *(sub_100023DF0(a3, &v24, &unk_1008A9BD0, &v26) + 8) = v8;
  }

  if (!sub_100418E10(a1, a2, "ServicePhoneBook", &__p))
  {
    v9 = sub_100419A38(0, &__p);
    v24 = 2;
    v26 = &v24;
    v7 = 0;
    *(sub_100023DF0(a3, &v24, &unk_1008A9BD0, &v26) + 8) = v9;
  }

  if (!sub_100418E10(a1, a2, "ServiceRemote", &__p))
  {
    v10 = sub_100419A38(0, &__p);
    v24 = 8;
    v26 = &v24;
    v7 = 0;
    *(sub_100023DF0(a3, &v24, &unk_1008A9BD0, &v26) + 8) = v10;
  }

  if (!sub_100418E10(a1, a2, "ServiceA2DP", &__p))
  {
    v11 = sub_100419A38(0, &__p);
    v24 = 16;
    v26 = &v24;
    v7 = 0;
    *(sub_100023DF0(a3, &v24, &unk_1008A9BD0, &v26) + 8) = v11;
  }

  if (!sub_100418E10(a1, a2, "ServiceHID", &__p))
  {
    v12 = sub_100419A38(0, &__p);
    v24 = 32;
    v26 = &v24;
    v7 = 0;
    *(sub_100023DF0(a3, &v24, &unk_1008A9BD0, &v26) + 8) = v12;
  }

  if (!sub_100418E10(a1, a2, "ServiceWiAP", &__p))
  {
    v13 = sub_100419A38(0, &__p);
    v24 = 128;
    v26 = &v24;
    v7 = 0;
    *(sub_100023DF0(a3, &v24, &unk_1008A9BD0, &v26) + 8) = v13;
  }

  if (!sub_100418E10(a1, a2, "ServiceNetSharing", &__p))
  {
    v14 = sub_100419A38(0, &__p);
    v24 = 256;
    v26 = &v24;
    v7 = 0;
    *(sub_100023DF0(a3, &v24, &unk_1008A9BD0, &v26) + 8) = v14;
  }

  if (!sub_100418E10(a1, a2, "ServiceNetSharingUser", &__p))
  {
    v15 = sub_100419A38(0, &__p);
    v24 = 4096;
    v26 = &v24;
    v7 = 0;
    *(sub_100023DF0(a3, &v24, &unk_1008A9BD0, &v26) + 8) = v15;
  }

  if (!sub_100418E10(a1, a2, "ServiceGaming", &__p))
  {
    v16 = sub_100419A38(0, &__p);
    v24 = 2048;
    v26 = &v24;
    v7 = 0;
    *(sub_100023DF0(a3, &v24, &unk_1008A9BD0, &v26) + 8) = v16;
  }

  if (!sub_100418E10(a1, a2, "ServiceBraille", &__p))
  {
    v17 = sub_100419A38(0, &__p);
    v24 = 0x2000;
    v26 = &v24;
    v7 = 0;
    *(sub_100023DF0(a3, &v24, &unk_1008A9BD0, &v26) + 8) = v17;
  }

  if (!sub_100418E10(a1, a2, "ServiceMAP", &__p))
  {
    v18 = sub_100419A38(0, &__p);
    v24 = 512;
    v26 = &v24;
    v7 = 0;
    *(sub_100023DF0(a3, &v24, &unk_1008A9BD0, &v26) + 8) = v18;
  }

  if (!sub_100418E10(a1, a2, "ServiceWiAPSink", &__p))
  {
    v19 = sub_100419A38(0, &__p);
    v24 = 0x20000;
    v26 = &v24;
    v7 = 0;
    *(sub_100023DF0(a3, &v24, &unk_1008A9BD0, &v26) + 8) = v19;
  }

  if (!sub_100418E10(a1, a2, "ServiceWirelessCarPlay", &__p))
  {
    v20 = sub_100419A38(0, &__p);
    v24 = 0x40000;
    v26 = &v24;
    v7 = 0;
    *(sub_100023DF0(a3, &v24, &unk_1008A9BD0, &v26) + 8) = v20;
  }

  if (!sub_100418E10(a1, a2, "ServiceAACP", &__p))
  {
    v21 = sub_100419A38(0, &__p);
    v24 = 0x80000;
    v26 = &v24;
    v7 = 0;
    *(sub_100023DF0(a3, &v24, &unk_1008A9BD0, &v26) + 8) = v21;
  }

  if (!sub_100418E10(a1, a2, "ServiceGATT", &__p))
  {
    v22 = sub_100419A38(0, &__p);
    v24 = 0x100000;
    v26 = &v24;
    v7 = 0;
    *(sub_100023DF0(a3, &v24, &unk_1008A9BD0, &v26) + 8) = v22;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v7;
}

void sub_1004199E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100419A38(int a1, std::string *this)
{
  result = std::string::compare(this, "Unknown");
  if (result)
  {
    if (!std::string::compare(this, "Unsupported"))
    {
      return 1;
    }

    else if (!std::string::compare(this, "Unlikely"))
    {
      return 2;
    }

    else if (!std::string::compare(this, "Likely"))
    {
      return 3;
    }

    else
    {
      return 4 * (std::string::compare(this, "Supported") == 0);
    }
  }

  return result;
}

uint64_t sub_100419ADC(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3 + 1;
  v4 = *a3;
  if (*a3 != a3 + 1)
  {
    do
    {
      v7 = *(v4 + 7);
      if (v7 <= 511)
      {
        if (v7 <= 15)
        {
          switch(v7)
          {
            case 1:
              sub_100419EEC(v4 + 8, &__p);
              sub_100418F44(a1, a2, "ServiceHandsfree", &__p);
LABEL_38:
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }

              break;
            case 2:
              sub_100419EEC(v4 + 8, &__p);
              sub_100418F44(a1, a2, "ServicePhoneBook", &__p);
              goto LABEL_38;
            case 8:
              sub_100419EEC(v4 + 8, &__p);
              sub_100418F44(a1, a2, "ServiceRemote", &__p);
              goto LABEL_38;
          }
        }

        else if (v7 > 127)
        {
          if (v7 == 128)
          {
            sub_100419EEC(v4 + 8, &__p);
            sub_100418F44(a1, a2, "ServiceWiAP", &__p);
            goto LABEL_38;
          }

          if (v7 == 256)
          {
            sub_100419EEC(v4 + 8, &__p);
            sub_100418F44(a1, a2, "ServiceNetSharing", &__p);
            goto LABEL_38;
          }
        }

        else
        {
          if (v7 == 16)
          {
            sub_100419EEC(v4 + 8, &__p);
            sub_100418F44(a1, a2, "ServiceA2DP", &__p);
            goto LABEL_38;
          }

          if (v7 == 32)
          {
            sub_100419EEC(v4 + 8, &__p);
            sub_100418F44(a1, a2, "ServiceHID", &__p);
            goto LABEL_38;
          }
        }
      }

      else if (v7 >= 0x20000)
      {
        if (v7 >= 0x80000)
        {
          if (v7 == 0x80000)
          {
            sub_100419EEC(v4 + 8, &__p);
            sub_100418F44(a1, a2, "ServiceAACP", &__p);
            goto LABEL_38;
          }

          if (v7 == 0x100000)
          {
            sub_100419EEC(v4 + 8, &__p);
            sub_100418F44(a1, a2, "ServiceGATT", &__p);
            goto LABEL_38;
          }
        }

        else
        {
          if (v7 == 0x20000)
          {
            sub_100419EEC(v4 + 8, &__p);
            sub_100418F44(a1, a2, "ServiceWiAPSink", &__p);
            goto LABEL_38;
          }

          if (v7 == 0x40000)
          {
            sub_100419EEC(v4 + 8, &__p);
            sub_100418F44(a1, a2, "ServiceWirelessCarPlay", &__p);
            goto LABEL_38;
          }
        }
      }

      else if (v7 > 4095)
      {
        if (v7 == 4096)
        {
          sub_100419EEC(v4 + 8, &__p);
          sub_100418F44(a1, a2, "ServiceNetSharingUser", &__p);
          goto LABEL_38;
        }

        if (v7 == 0x2000)
        {
          sub_100419EEC(v4 + 8, &__p);
          sub_100418F44(a1, a2, "ServiceBraille", &__p);
          goto LABEL_38;
        }
      }

      else
      {
        if (v7 == 512)
        {
          sub_100419EEC(v4 + 8, &__p);
          sub_100418F44(a1, a2, "ServiceMAP", &__p);
          goto LABEL_38;
        }

        if (v7 == 2048)
        {
          sub_100419EEC(v4 + 8, &__p);
          sub_100418F44(a1, a2, "ServiceGaming", &__p);
          goto LABEL_38;
        }
      }

      v8 = v4[1];
      if (v8)
      {
        do
        {
          v9 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v9 = v4[2];
          v10 = *v9 == v4;
          v4 = v9;
        }

        while (!v10);
      }

      v4 = v9;
    }

    while (v9 != v3);
  }

  return 0;
}

void sub_100419E98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_100419EEC@<X0>(unsigned int *a1@<X1>, std::string *a2@<X8>)
{
  *&a2->__r_.__value_.__l.__data_ = 0uLL;
  a2->__r_.__value_.__r.__words[2] = 0;
  v3 = *a1;
  if (v3 < 5)
  {
    return std::string::assign(a2, off_100AF54D8[v3]);
  }

  return result;
}

void sub_100419F34(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_100419F60(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v7 = objc_autoreleasePoolPush();
  v8 = sub_1000BE4EC(v7, a2, a3);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    *a4 = [v8 intValue];
  }

  objc_autoreleasePoolPop(v7);
  return (isKindOfClass & 1) == 0;
}

uint64_t sub_10041A024(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = objc_autoreleasePoolPush();
  v9 = [NSNumber numberWithInt:a4];
  sub_10041ACA8(a1, a2, a3, v9);

  objc_autoreleasePoolPop(v8);
  return 0;
}

uint64_t sub_10041A0B4(uint64_t a1, uint64_t a2, int **a3)
{
  v21 = -1;
  v6 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *a3 == a3[1];
    *buf = 67109120;
    v23 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Group list is empty: %d", buf, 8u);
  }

  sub_100419F60(a1, a2, "PhonebookSyncGroup", &v21);
  v8 = *a3;
  a3[1] = *a3;
  v9 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v23 = v21;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Read group ID: %d", buf, 8u);
    v8 = a3[1];
  }

  v10 = a3[2];
  if (v8 >= v10)
  {
    v12 = *a3;
    v13 = v8 - *a3;
    v14 = v13 >> 2;
    v15 = (v13 >> 2) + 1;
    if (v15 >> 62)
    {
      sub_1000C7698();
    }

    v16 = v10 - v12;
    if (v16 >> 1 > v15)
    {
      v15 = v16 >> 1;
    }

    v17 = v16 >= 0x7FFFFFFFFFFFFFFCLL;
    v18 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v17)
    {
      v18 = v15;
    }

    if (v18)
    {
      sub_10036F560(a3, v18);
    }

    *(4 * v14) = v21;
    v11 = (4 * v14 + 4);
    memcpy(0, v12, v13);
    v19 = *a3;
    *a3 = 0;
    a3[1] = v11;
    a3[2] = 0;
    if (v19)
    {
      operator delete(v19);
    }
  }

  else
  {
    *v8 = v21;
    v11 = v8 + 1;
  }

  a3[1] = v11;
  return 0;
}

uint64_t sub_10041A318(uint64_t a1, uint64_t a2, int a3)
{
  v4 = a3;
  sub_1004190E0(a1, a2, "DeviceClass", &v4, 4);
  return 0;
}

BOOL sub_10041A360(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v7 = objc_autoreleasePoolPush();
  v8 = sub_1000BE4EC(v7, a2, a3);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    *a4 = [v8 BOOLValue];
  }

  objc_autoreleasePoolPop(v7);
  return (isKindOfClass & 1) == 0;
}

uint64_t sub_10041A3FC(uint64_t a1, uint64_t a2, int a3)
{
  v6 = objc_autoreleasePoolPush();
  if (a3)
  {
    v7 = &__kCFBooleanTrue;
  }

  else
  {
    v7 = &__kCFBooleanFalse;
  }

  sub_10041ACA8(a1, a2, "PincodeHasSucceeded", v7);
  objc_autoreleasePoolPop(v6);
  return 0;
}

uint64_t sub_10041A47C(uint64_t a1, uint64_t a2, int a3)
{
  v6 = objc_autoreleasePoolPush();
  if (a3)
  {
    v7 = &__kCFBooleanTrue;
  }

  else
  {
    v7 = &__kCFBooleanFalse;
  }

  sub_10041ACA8(a1, a2, "AllowScoForTBT", v7);
  objc_autoreleasePoolPop(v6);
  return 0;
}

uint64_t sub_10041A500(uint64_t a1, uint64_t a2, __int16 a3)
{
  v4 = a3;
  sub_1004190E0(a1, a2, "LastAVRCPVersion", &v4, 2);
  return 0;
}

uint64_t sub_10041A54C(uint64_t a1, uint64_t a2, __int16 a3)
{
  v4 = a3;
  sub_1004190E0(a1, a2, "LastPBAPVersion", &v4, 2);
  return 0;
}

uint64_t sub_10041A598(uint64_t a1, uint64_t a2, __int16 a3)
{
  v4 = a3;
  sub_1004190E0(a1, a2, "LastPBAPSupportedFeatures", &v4, 2);
  return 0;
}

uint64_t sub_10041A5E4(uint64_t a1, uint64_t a2, __int16 a3)
{
  v4 = a3;
  sub_1004190E0(a1, a2, "LastAVRCPControllerVersion", &v4, 2);
  return 0;
}

uint64_t sub_10041A630(uint64_t a1, uint64_t a2, __int16 a3)
{
  v4 = a3;
  sub_1004190E0(a1, a2, "LastAVRCPControllerSupportedFeatures", &v4, 2);
  return 0;
}

uint64_t sub_10041A67C(uint64_t a1, uint64_t a2, __int16 a3)
{
  v4 = a3;
  sub_1004190E0(a1, a2, "LastAVRCPTargetVersion", &v4, 2);
  return 0;
}

uint64_t sub_10041A6C8(uint64_t a1, uint64_t a2, __int16 a3)
{
  v4 = a3;
  sub_1004190E0(a1, a2, "LastAVRCPTargetSupportedFeatures", &v4, 2);
  return 0;
}

uint64_t sub_10041A714(uint64_t a1, uint64_t a2, __int16 a3)
{
  v4 = a3;
  sub_1004190E0(a1, a2, "LastHandsfreeVersion", &v4, 2);
  return 0;
}

uint64_t sub_10041A760(uint64_t a1, uint64_t a2, __int16 a3)
{
  v4 = a3;
  sub_1004190E0(a1, a2, "LastHandsfreeSupportedFeatures", &v4, 2);
  return 0;
}

uint64_t sub_10041AA68(uint64_t a1, uint64_t a2, int a3)
{
  v6 = objc_autoreleasePoolPush();
  if (a3)
  {
    v7 = &__kCFBooleanTrue;
  }

  else
  {
    v7 = &__kCFBooleanFalse;
  }

  sub_10041ACA8(a1, a2, "initiateSDPMirroringState", v7);
  objc_autoreleasePoolPop(v6);
  return 0;
}

uint64_t sub_10041AAEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  sub_1004190E0(a1, a2, "AssetLastCheckedTime", &v4, 8);
  return 0;
}

uint64_t sub_10041AB24(uint64_t a1, uint64_t a2, const void **a3)
{
  v6 = objc_autoreleasePoolPush();
  v7 = sub_1000BE4EC(v6, a2, "DeviceTags");
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v12 = 1;
  }

  else
  {
    if (*(a3 + 23) >= 0)
    {
      v8 = a3;
    }

    else
    {
      v8 = *a3;
    }

    v9 = [NSString stringWithUTF8String:v8];
    v10 = [NSMutableSet setWithArray:v7];
    [v10 addObject:v9];
    if (*(a3 + 23) < 0 && a3[1] == 34 && !memcmp(*a3, "_DENY_INCOMING_CLASSIC_CONNECTION_", 0x22uLL))
    {
      sub_100550080(a2, 1);
    }

    v11 = [v10 allObjects];
    v12 = sub_10041ACA8(a1, a2, "DeviceTags", v11);
  }

  objc_autoreleasePoolPop(v6);
  return v12;
}

uint64_t sub_10041ACA8(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a4;
  if (qword_100B508F0 != -1)
  {
    sub_100829EC4();
  }

  if (sub_1000BE6E8(off_100B508E8))
  {
    v25 = *(a2 + 128);
    v26 = *(a2 + 132);
    sub_1000BE6F8(&v25, __p);
    if (v30 >= 0)
    {
      v8 = __p;
    }

    else
    {
      v8 = __p[0];
    }

    v9 = [NSString stringWithUTF8String:v8];
    if (v30 < 0)
    {
      operator delete(__p[0]);
    }

    v10 = [NSString stringWithUTF8String:a3];
    *__p = 0uLL;
    sub_100007F88(__p, a1 + 8);
    v11 = sub_1000BE814(v9);
    if (v11)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v12 = qword_100BCE8D8;
        if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_FAULT))
        {
          sub_10082A040(v12, v13, v14, v15, v16, v17, v18, v19);
        }
      }
    }

    else if (!v7)
    {
      v24 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v28 = a3;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Trying to write property %s but no dictionary", buf, 0xCu);
      }

      goto LABEL_18;
    }

    v22 = [NSMutableDictionary dictionaryWithDictionary:v11];
    [v22 setValue:v7 forKey:v10];
    sub_100418D60(v9, v22);

LABEL_18:
    sub_1000088CC(__p);

    v21 = 0;
    goto LABEL_19;
  }

  v20 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(__p[0]) = 136315138;
    *(__p + 4) = a3;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "System has not passed first unlock (or device prefs not read yet). Do not write device property %s", __p, 0xCu);
  }

  v21 = 1;
LABEL_19:

  return v21;
}

void sub_10041AF18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_1000088CC(&__p);

  _Unwind_Resume(a1);
}

uint64_t sub_10041AF94(uint64_t a1, uint64_t a2, const void **a3)
{
  v6 = objc_autoreleasePoolPush();
  v7 = sub_1000BE4EC(v6, a2, "DeviceTags");
  v8 = [NSMutableArray arrayWithArray:v7];

  if (v8)
  {
    if (*(a3 + 23) >= 0)
    {
      v9 = a3;
    }

    else
    {
      v9 = *a3;
    }

    v10 = [NSString stringWithUTF8String:v9];
    if ([v8 containsObject:v10])
    {
      [v8 removeObject:v10];
      v11 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEBUG))
      {
        v20 = *(a3 + 23);
        v21 = *a3;
        sub_1000E5A58(a2, __p);
        v22 = v20 >= 0 ? a3 : v21;
        v23 = v25 >= 0 ? __p : __p[0];
        *buf = 136446466;
        v27 = v22;
        v28 = 2082;
        v29 = v23;
        _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "Removing tag: %{public}s for %{public}s from device settings", buf, 0x16u);
        if (v25 < 0)
        {
          operator delete(__p[0]);
        }
      }

      v12 = sub_10041ACA8(a1, a2, "DeviceTags", v8);
      if (*(a3 + 23) < 0 && a3[1] == 34 && !memcmp(*a3, "_DENY_INCOMING_CLASSIC_CONNECTION_", 0x22uLL))
      {
        sub_100550080(a2, 0);
      }
    }

    else
    {
      v14 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
      {
        v16 = *(a3 + 23);
        v17 = *a3;
        sub_1000E5A58(a2, __p);
        v18 = v16 >= 0 ? a3 : v17;
        v19 = v25 >= 0 ? __p : __p[0];
        *buf = 136446466;
        v27 = v18;
        v28 = 2082;
        v29 = v19;
        _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Tag: %{public}s wasn't stored for device %{public}s", buf, 0x16u);
        if (v25 < 0)
        {
          operator delete(__p[0]);
        }
      }

      v12 = 1;
    }
  }

  else
  {
    v13 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_1000E5A58(a2, __p);
      sub_10082A0B8(__p, buf, v13);
    }

    v12 = 1;
  }

  objc_autoreleasePoolPop(v6);
  return v12;
}

uint64_t sub_10041B2C0(uint64_t a1, uint64_t a2)
{
  v3 = objc_autoreleasePoolPush();
  sub_10041B520(v3, a2, "DeviceTags");
  objc_autoreleasePoolPop(v3);
  return 0;
}

uint64_t sub_10041B304(uint64_t a1, uint64_t a2)
{
  v3 = objc_autoreleasePoolPush();
  v4 = sub_1000BE4EC(v3, a2, "DeviceTags");
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = qword_100BCE8D8;
    v6 = 0;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "statedump:    Tags: %@", &v8, 0xCu);
      v6 = 0;
    }
  }

  else
  {
    v6 = 1;
  }

  objc_autoreleasePoolPop(v3);
  return v6;
}

id sub_10041B424(uint64_t a1, uint64_t a2)
{
  v3 = objc_autoreleasePoolPush();
  v4 = sub_1000BE4EC(v3, a2, "DeviceTags");
  objc_autoreleasePoolPop(v3);

  return v4;
}

BOOL sub_10041B480(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = objc_autoreleasePoolPush();
  v8 = sub_1000BE4EC(v7, a2, a3);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    *a4 = [v8 intValue];
  }

  objc_autoreleasePoolPop(v7);
  return (isKindOfClass & 1) == 0;
}

uint64_t sub_10041B520(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_100B508F0 != -1)
  {
    sub_100829EC4();
  }

  if (sub_1000BE6E8(off_100B508E8))
  {
    v20 = *(a2 + 128);
    v21 = *(a2 + 132);
    sub_1000BE6F8(&v20, __p);
    if (v23 >= 0)
    {
      v5 = __p;
    }

    else
    {
      v5 = *__p;
    }

    v6 = [NSString stringWithUTF8String:v5];
    if (v23 < 0)
    {
      operator delete(*__p);
    }

    v7 = [NSString stringWithUTF8String:a3];
    v8 = sub_1000BE814(v6);
    if (v8)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v9 = qword_100BCE8D8;
        if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_FAULT))
        {
          sub_10082A040(v9, v10, v11, v12, v13, v14, v15, v16);
        }
      }
    }

    v17 = [NSMutableDictionary dictionaryWithDictionary:v8];
    [v17 removeObjectForKey:v7];
    sub_100418D60(v6, v17);

    return 0;
  }

  else
  {
    v19 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *__p = 136315138;
      *&__p[4] = a3;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "System has not passed first unlock (or device prefs not read yet). Do not delete device property %s", __p, 0xCu);
    }

    return 1;
  }
}

uint64_t sub_10041B758(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = objc_autoreleasePoolPush();
  v9 = [NSNumber numberWithLongLong:a4];
  sub_10041ACA8(a1, a2, a3, v9);

  objc_autoreleasePoolPop(v8);
  return 0;
}

uint64_t sub_10041B7FC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = a3;
  sub_1004190E0(a1, a2, "EnableMAP", &v4, 1);
  return 0;
}

uint64_t sub_10041B848(uint64_t a1, uint64_t a2, int a3)
{
  v4 = a3;
  sub_1004190E0(a1, a2, "WiAPAssoc", &v4, 4);
  return 0;
}

uint64_t sub_10041B880(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v49 = 0;
  v50 = 0;
  v48 = 0;
  v6 = &qword_100BCE8D8;
  v7 = qword_100BCE8D8;
  if (!os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT) || ((sub_1000E5A58(a2, &v53), v54 >= 0) ? (v8 = &v53) : (v8 = v53), *buf = 136446210, *&buf[4] = v8, _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Starting SDP record processing for device %{public}s", buf, 0xCu), (SHIBYTE(v54) & 0x80000000) == 0))
  {
    if (a2)
    {
      goto LABEL_7;
    }

    return 1;
  }

  operator delete(v53);
  if (!a2)
  {
    return 1;
  }

LABEL_7:
  if (*(a3 + 16))
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_10082A124();
    }

    return 1;
  }

  v9 = sub_100419F60(a1, a2, "SdpCacheVersion", &v48);
  v10 = qword_100BCE8D8;
  v11 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    if (v11)
    {
      LOWORD(v53) = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Read SDP cache version failed", &v53, 2u);
    }
  }

  else
  {
    v12 = v48;
    if (v11)
    {
      LODWORD(v53) = 67109120;
      DWORD1(v53) = v48;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Read SDP cache version success %d", &v53, 8u);
    }

    if (v12 != 1)
    {
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
      {
        sub_10082A158();
      }

      v34 = objc_autoreleasePoolPush();
      sub_10041B520(v34, a2, "SdpCacheSize");
      objc_autoreleasePoolPop(v34);
      v35 = objc_autoreleasePoolPush();
      sub_10041B520(v35, a2, "SdpCache");
      objc_autoreleasePoolPop(v35);
      v36 = objc_autoreleasePoolPush();
      sub_10041B520(v36, a2, "SdpCacheVersion");
      objc_autoreleasePoolPop(v36);
      return 1;
    }

    sub_10041A024(a1, a2, "SdpCacheVersion", 0);
  }

  v13 = malloc_type_malloc(0xFA0uLL, 0x100004077774924uLL);
  if (!v13)
  {
    v19 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_FAULT))
    {
      LODWORD(v53) = 136446210;
      *(&v53 + 4) = "pSerializedData";
      _os_log_fault_impl(&_mh_execute_header, v19, OS_LOG_TYPE_FAULT, "Assertion failed: %{public}s", &v53, 0xCu);
      v19 = qword_100BCE8D8;
    }

    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_10082A1F4();
    }

    return 1;
  }

  v14 = sub_100419F60(a1, a2, "SdpCacheSize", &v48 + 1);
  v45 = a3;
  v15 = qword_100BCE8D8;
  v16 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT);
  if (v14)
  {
    if (v16)
    {
      LOWORD(v53) = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "SDP record cache size is empty", &v53, 2u);
    }

    v17 = 0;
    v18 = 1;
  }

  else
  {
    if (v16)
    {
      LODWORD(v53) = 67109120;
      DWORD1(v53) = HIDWORD(v48);
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "SDP record cache size is %d", &v53, 8u);
    }

    if (v9)
    {
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
      {
        sub_10082A18C();
      }

      sub_10041A024(a1, a2, "SdpCacheVersion", 0);
    }

    v20 = HIDWORD(v48);
    if (HIDWORD(v48) - 1) > 0xF9F || (sub_100418FF4(a1, a2, "SdpCache", v13, HIDWORD(v48)))
    {
      goto LABEL_74;
    }

    v49 = v13;
    LOWORD(v50) = v20;
    HIWORD(v50) = 1;
    WORD1(v50) = v20;
    if (v20 <= 1)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Server/Platforms/Darwin/DeviceSettings.mm", 1331, "ByteStream_NumReadBytesAvail(bs) >= 2");
    }

    v21 = *v13;
    WORD2(v50) = 2;
    v44 = v21;
    if (!v21)
    {
      goto LABEL_52;
    }

    v22 = 0;
    v23 = 1;
    v42 = "ByteStream_NumReadBytesAvail(bs) >= 2";
    v43 = a2;
    do
    {
      v47 = malloc_type_calloc(1uLL, 0x10uLL, 0x10F2040C8FBA5E1uLL);
      v24 = sub_10037D640(&v49, v47);
      if (HIBYTE(v50))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Server/Platforms/Darwin/DeviceSettings.mm", 1338, "virtual BTResult BT::DeviceSettings::readSDPRecord(Device *, SdpAttributes &)");
LABEL_70:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Server/Platforms/Darwin/DeviceSettings.mm", 1338, "ByteStream_NumReadBytesAvail(bs) >= 2");
      }

      if (WORD1(v50) - WORD2(v50) <= 1)
      {
        goto LABEL_70;
      }

      if (BYTE6(v50) != 1)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Server/Platforms/Darwin/DeviceSettings.mm", 1338, "(bs).__RWFlag == BYTESTREAM_READ");
      }

      v25 = a1;
      v26 = v13;
      v27 = v6;
      v28 = *(v49 + WORD2(v50));
      v23 &= v24;
      WORD2(v50) += 2;
      *(&v53 + 1) = 0;
      v54 = 0;
      *&v53 = &v53 + 8;
      if (v28)
      {
        v29 = 0;
        while (1)
        {
          v46 = 0;
          memset(buf, 0, sizeof(buf));
          if (HIBYTE(v50))
          {
            break;
          }

          if (WORD1(v50) - WORD2(v50) <= 1)
          {
            goto LABEL_67;
          }

          if (BYTE6(v50) != 1)
          {
            v41 = "(bs).__RWFlag == BYTESTREAM_READ";
            goto LABEL_66;
          }

          v46 = *(v49 + WORD2(v50));
          WORD2(v50) += 2;
          v30 = sub_10037D640(&v49, buf);
          v51 = &v46;
          v31 = sub_10041F130(&v53, &v46, &unk_1008A9BD0, &v51);
          v23 &= v30;
          *(v31 + 5) = *buf;
          if (v28 <= ++v29)
          {
            goto LABEL_48;
          }
        }

        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Server/Platforms/Darwin/DeviceSettings.mm", 1346, "virtual BTResult BT::DeviceSettings::readSDPRecord(Device *, SdpAttributes &)");
        v41 = "ByteStream_NumReadBytesAvail(bs) >= 2";
LABEL_66:
        v42 = v41;
LABEL_67:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Server/Platforms/Darwin/DeviceSettings.mm", 1346, v42);
      }

LABEL_48:
      *buf = &v47;
      v32 = (sub_10041F204(v45, &v47, &unk_1008A9BD0, buf) + 5);
      if (v32 != &v53)
      {
        sub_10041F2E0(v32, v53, &v53 + 1);
      }

      sub_10000CEDC(&v53, *(&v53 + 1));
      ++v22;
      v6 = v27;
      v13 = v26;
      a1 = v25;
      a2 = v43;
    }

    while (v22 != v44);
    if (!v23)
    {
LABEL_74:
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
      {
        sub_10082A1C0();
      }

      v38 = objc_autoreleasePoolPush();
      sub_10041B520(v38, a2, "SdpCacheSize");
      objc_autoreleasePoolPop(v38);
      v39 = objc_autoreleasePoolPush();
      sub_10041B520(v39, a2, "SdpCache");
      objc_autoreleasePoolPop(v39);
      v40 = objc_autoreleasePoolPush();
      sub_10041B520(v40, a2, "SdpCacheVersion");
      objc_autoreleasePoolPop(v40);
    }

    else
    {
LABEL_52:
      sub_10041A024(a1, a2, "SdpCacheVersion", 1);
      v33 = *v6;
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v53) = 0;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "SDP cache read complete, writing version", &v53, 2u);
      }
    }

    v18 = 0;
    v17 = 1;
  }

  *(a2 + 616) = v17;
  free(v13);
  return v18;
}

uint64_t sub_10041C03C(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a2)
  {
    return 1;
  }

  v6 = *a3;
  v7 = malloc_type_malloc(0xFA0uLL, 0x100004077774924uLL);
  v8 = qword_100BCE8D8;
  if (!v7)
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_FAULT))
    {
      LODWORD(__p) = 136446210;
      *(&__p + 4) = "pSerializedData";
      _os_log_fault_impl(&_mh_execute_header, v8, OS_LOG_TYPE_FAULT, "Assertion failed: %{public}s", &__p, 0xCu);
      v8 = qword_100BCE8D8;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10082A1F4();
    }

    return 1;
  }

  v9 = v7;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(a2, &__p);
    v10 = v39 >= 0 ? &__p : __p;
    *buf = 136446210;
    v41 = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Writing SDP record for device %{public}s to disk", buf, 0xCu);
    if (SHIBYTE(v39) < 0)
    {
      operator delete(__p);
    }
  }

  v34 = v9;
  v35 = 4000;
  v37 = 2;
  v36 = 135072;
  v11 = a3 + 1;
  *v9 = 0;
  if (v6 != a3 + 1)
  {
    v12 = 0;
    while (sub_10037DE4C(&v34, v6[4]))
    {
      if (HIBYTE(v37))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Server/Platforms/Darwin/DeviceSettings.mm", 1420, "virtual BTResult BT::DeviceSettings::writeSDPRecord(Device *, SdpAttributes &)");
LABEL_59:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Server/Platforms/Darwin/DeviceSettings.mm", 1420, "ByteStream_NumReadBytesAvail(bs) >= 2");
      }

      v13 = HIWORD(v36);
      if (v36 - HIWORD(v36) <= 1)
      {
        goto LABEL_59;
      }

      if (v37 != 2)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Server/Platforms/Darwin/DeviceSettings.mm", 1420, "(bs).__RWFlag == BYTESTREAM_WRITE");
      }

      *(v34 + HIWORD(v36)) = 0;
      HIWORD(v36) += 2;
      __p = 0uLL;
      v39 = 0;
      sub_10041F568(&__p, (v6 + 5));
      ++v12;
      v14 = __p;
      if (__p == (&__p + 8))
      {
        LOBYTE(v15) = 0;
        v19 = 0;
      }

      else
      {
        v15 = 0;
        while (1)
        {
          if (HIBYTE(v37))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Server/Platforms/Darwin/DeviceSettings.mm", 1427, "virtual BTResult BT::DeviceSettings::writeSDPRecord(Device *, SdpAttributes &)");
LABEL_54:
            v33 = "ByteStream_NumReadBytesAvail(bs) >= 2";
LABEL_56:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Server/Platforms/Darwin/DeviceSettings.mm", 1427, v33);
          }

          if (v36 - HIWORD(v36) <= 1)
          {
            goto LABEL_54;
          }

          if (v37 != 2)
          {
            v33 = "(bs).__RWFlag == BYTESTREAM_WRITE";
            goto LABEL_56;
          }

          *(v34 + HIWORD(v36)) = *(v14 + 8);
          HIWORD(v36) += 2;
          ++v15;
          if (!sub_10037DE4C(&v34, v14 + 40))
          {
            break;
          }

          v16 = *(v14 + 1);
          if (v16)
          {
            do
            {
              v17 = v16;
              v16 = *v16;
            }

            while (v16);
          }

          else
          {
            do
            {
              v17 = *(v14 + 2);
              v18 = *v17 == v14;
              v14 = v17;
            }

            while (!v18);
          }

          v14 = v17;
          if (v17 == (&__p + 8))
          {
            goto LABEL_30;
          }
        }

        v12 = 0;
LABEL_30:
        v19 = HIBYTE(v15);
      }

      *(v34 + v13) = v15;
      *(v34 + v13 + 1) = v19;
      sub_10000CEDC(&__p, *(&__p + 1));
      v20 = v6[1];
      if (v20)
      {
        do
        {
          v21 = v20;
          v20 = *v20;
        }

        while (v20);
      }

      else
      {
        do
        {
          v21 = v6[2];
          v18 = *v21 == v6;
          v6 = v21;
        }

        while (!v18);
      }

      v6 = v21;
      if (v21 == v11)
      {
        if (!v12)
        {
          break;
        }

        *v34 = v12;
        v22 = HIWORD(v36);
        v23 = qword_100BCE8D8;
        if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(__p) = 67109376;
          DWORD1(__p) = v22;
          WORD4(__p) = 1024;
          *(&__p + 10) = v12;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "SDP record cache size %d with %d services", &__p, 0xEu);
        }

        if (v22 <= 0xFA0)
        {
          sub_10041A024(a1, a2, "SdpCacheSize", v22);
          sub_1004190E0(a1, a2, "SdpCache", v34, v22);
          sub_10041A024(a1, a2, "SdpCacheVersion", 1);
          goto LABEL_45;
        }

        v32 = qword_100BCE8D8;
        if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(__p) = 67109120;
          DWORD1(__p) = v22;
          v28 = "SDP record cache size %d larger than storage";
          v29 = v32;
          v30 = 8;
          goto LABEL_44;
        }

        goto LABEL_45;
      }
    }
  }

  v24 = objc_autoreleasePoolPush();
  sub_10041B520(v24, a2, "SdpCacheSize");
  objc_autoreleasePoolPop(v24);
  v25 = objc_autoreleasePoolPush();
  sub_10041B520(v25, a2, "SdpCache");
  objc_autoreleasePoolPop(v25);
  v26 = objc_autoreleasePoolPush();
  sub_10041B520(v26, a2, "SdpCacheVersion");
  objc_autoreleasePoolPop(v26);
  v27 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(__p) = 0;
    v28 = "Exiting Write SDP due to numOfServices being zero, wiping cache";
    v29 = v27;
    v30 = 2;
LABEL_44:
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, v28, &__p, v30);
  }

LABEL_45:
  free(v9);
  return 0;
}