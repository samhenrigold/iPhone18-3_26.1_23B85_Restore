CFTypeRef sub_100001FF0(io_registry_entry_t a1)
{

  return IORegistryEntryCreateCFProperty(a1, v1, v2, 0);
}

void sub_100002020(id a1)
{
  v1 = os_log_create("com.apple.BiometricKit", "Library-MesaFactory");
  qword_1000D2040 = v1;
  if (!v1)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100002C48(&v2);
      v1 = v2;
    }

    else
    {
      v1 = 0;
    }
  }

  qword_1000D2048 = v1;
}

uint64_t sub_10000208C(mach_port_t a1, __int16 a2, __int16 a3, const void *a4, size_t a5, void *a6, size_t *a7)
{
  v8 = a5 + 8;
  if (a5 >= 0xFFFFFFFFFFFFFFF8)
  {
    sub_100002D84(a5 >= 0xFFFFFFFFFFFFFFF8, &outputStructCnt);
    return outputStructCnt;
  }

  v15 = malloc_type_malloc(a5 + 8, 0x85702932uLL);
  if (!v15)
  {
    sub_100002CA8();
    return outputStructCnt;
  }

  v16 = v15;
  *v15 = 19778;
  v15[1] = a2;
  v15[2] = 1;
  v15[3] = a3;
  if (a5)
  {
    memmove(v15 + 4, a4, a5);
  }

  if (a7)
  {
    outputStructCnt = *a7;
    v17 = IOConnectCallStructMethod(a1, 0, v16, v8, a6, &outputStructCnt);
    *a7 = outputStructCnt;
  }

  else
  {
    outputStructCnt = 0;
    v17 = IOConnectCallStructMethod(a1, 0, v16, v8, a6, &outputStructCnt);
  }

  free(v16);
  return v17;
}

uint64_t sub_1000021C0()
{
  v0 = sub_10000208C(dword_1000D2054, 2, 1, 0, 0, 0, 0);
  v1 = v0;
  if (v0)
  {
    sub_100002E84();
  }

  return v1;
}

uint64_t sub_100002218()
{
  v2 = 0;
  v1 = 4;
  if (sub_10000208C(dword_1000D2054, 16, 0, 0, 0, &v2, &v1))
  {
    sub_100002F60();
  }

  else if (v1 != 4)
  {
    sub_10000303C(&v2);
  }

  return v2;
}

uint64_t sub_100002290()
{
  if (!dword_1000D2054)
  {
    v0 = IOServiceMatching("AppleBiometricServices");
    MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v0);
    if (!MatchingService)
    {
      sub_100003200();
      return v5;
    }

    v2 = MatchingService;
    if (IOServiceOpen(MatchingService, mach_task_self_, 0, &dword_1000D2054))
    {
      sub_10000311C();
      return v4;
    }

    IOObjectRelease(v2);
  }

  if (!sub_100002218())
  {
    sub_1000021C0();
  }

  return 0;
}

uint64_t sub_10000234C(void *a1, size_t *a2)
{
  if (!a1)
  {
    sub_10000357C();
    return v4;
  }

  if (!a2)
  {
    sub_1000034A0();
    return v4;
  }

  if (!*a2)
  {
    sub_1000033C4();
    return v4;
  }

  v2 = sub_10000208C(dword_1000D2054, 34, 0, 0, 0, a1, a2);
  result = 0;
  if (v2)
  {
    sub_1000032E0();
    return v4;
  }

  return result;
}

uint64_t sub_1000023E4(void *a1, size_t *a2)
{
  if (!a1)
  {
    sub_1000038F4();
    return v4;
  }

  if (!a2)
  {
    sub_100003818();
    return v4;
  }

  if (!*a2)
  {
    sub_10000373C();
    return v4;
  }

  v2 = sub_10000208C(dword_1000D2054, 59, 0, 0, 0, a1, a2);
  result = 0;
  if (v2)
  {
    sub_100003658();
    return v4;
  }

  return result;
}

uint64_t sub_10000247C(void *a1, size_t *a2)
{
  if (qword_1000D1FB0 != -1)
  {
    sub_1000039D0();
  }

  if (qword_1000D2048)
  {
    v4 = qword_1000D2048;
  }

  else
  {
    v4 = &_os_log_default;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 134218240;
    v12 = a1;
    v13 = 2048;
    v14 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "getModuleSerialNumber(%p, %p)\n", &v11, 0x16u);
  }

  if (sub_100002290())
  {
    sub_1000039E4();
  }

  else
  {
    if (!sub_10000234C(a1, a2))
    {
      v5 = 0;
      goto LABEL_11;
    }

    sub_100003AC8();
  }

  v5 = v11;
LABEL_11:
  if (dword_1000D2054)
  {
    IOServiceClose(dword_1000D2054);
    dword_1000D2054 = 0;
  }

  if (v5)
  {
    if (qword_1000D1FB0 != -1)
    {
      sub_100003BAC();
    }

    if (qword_1000D2048)
    {
      v6 = qword_1000D2048;
    }

    else
    {
      v6 = &_os_log_default;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v11 = 67109120;
      LODWORD(v12) = v5;
      v7 = v6;
      v8 = OS_LOG_TYPE_ERROR;
LABEL_28:
      _os_log_impl(&_mh_execute_header, v7, v8, "getModuleSerialNumber -> err:0x%x\n", &v11, 8u);
    }
  }

  else
  {
    if (qword_1000D1FB0 != -1)
    {
      sub_100003BAC();
    }

    if (qword_1000D2048)
    {
      v9 = qword_1000D2048;
    }

    else
    {
      v9 = &_os_log_default;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 67109120;
      LODWORD(v12) = 0;
      v7 = v9;
      v8 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_28;
    }
  }

  return v5;
}

uint64_t sub_100002684(char *a1, size_t *a2)
{
  if (qword_1000D1FB0 != -1)
  {
    sub_1000039D0();
  }

  if (qword_1000D2048)
  {
    v4 = qword_1000D2048;
  }

  else
  {
    v4 = &_os_log_default;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v18 = a1;
    v19 = 2048;
    v20 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "getSensorSerialNumber(%p, %p)\n", buf, 0x16u);
  }

  if (sub_100002290())
  {
    sub_100003BD4();
    v8 = *buf;
  }

  else
  {
    v5 = 0;
    v6 = qword_1000D1FB0;
    while (1)
    {
      if (v6 != -1)
      {
        sub_100003BAC();
      }

      if (qword_1000D2040)
      {
        v7 = qword_1000D2040;
      }

      else
      {
        v7 = &_os_log_default;
      }

      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        LODWORD(v18) = v5;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "getSensorSerialNumber, retry: %d\n", buf, 8u);
      }

      v8 = sub_1000023E4(a1, a2);
      if (!v8)
      {
        break;
      }

      if (qword_1000D1FB0 != -1)
      {
        sub_100003BAC();
      }

      if (qword_1000D2040)
      {
        v9 = qword_1000D2040;
      }

      else
      {
        v9 = &_os_log_default;
      }

      v16 = v9;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316162;
        v18 = "err == 0 ";
        v19 = 2048;
        v20 = v8;
        v21 = 2080;
        v22 = "";
        v23 = 2080;
        v24 = "/Library/Caches/com.apple.xbs/Sources/Mesa/AppleBiometricServices/MesaFactoryC/MesaFactoryC.c";
        v25 = 1024;
        v26 = 656;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
        v6 = qword_1000D1FB0;
        if (++v5 == 10)
        {
          if (qword_1000D1FB0 != -1)
          {
            sub_100003BAC();
          }

LABEL_31:
          if (qword_1000D2040)
          {
            v10 = qword_1000D2040;
          }

          else
          {
            v10 = &_os_log_default;
          }

          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            *buf = 136316162;
            v18 = "err == 0 ";
            v19 = 2048;
            v20 = v8;
            v21 = 2080;
            v22 = "";
            v23 = 2080;
            v24 = "/Library/Caches/com.apple.xbs/Sources/Mesa/AppleBiometricServices/MesaFactoryC/MesaFactoryC.c";
            v25 = 1024;
            v26 = 662;
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
          }

          break;
        }
      }

      else
      {
        ++v5;
        v6 = -1;
        if (v5 == 10)
        {
          goto LABEL_31;
        }
      }
    }
  }

  if (dword_1000D2054)
  {
    IOServiceClose(dword_1000D2054);
    dword_1000D2054 = 0;
  }

  if (v8)
  {
    if (qword_1000D1FB0 != -1)
    {
      sub_100003BAC();
    }

    if (qword_1000D2048)
    {
      v11 = qword_1000D2048;
    }

    else
    {
      v11 = &_os_log_default;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      LODWORD(v18) = v8;
      v12 = v11;
      v13 = OS_LOG_TYPE_ERROR;
LABEL_53:
      _os_log_impl(&_mh_execute_header, v12, v13, "getSensorSerialNumber -> err:0x%x\n", buf, 8u);
    }
  }

  else
  {
    if (qword_1000D1FB0 != -1)
    {
      sub_100003BAC();
    }

    if (qword_1000D2048)
    {
      v14 = qword_1000D2048;
    }

    else
    {
      v14 = &_os_log_default;
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v18) = 0;
      v12 = v14;
      v13 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_53;
    }
  }

  return v8;
}

void sub_100002B44(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0x30u);
}

BOOL sub_100002B64@<W0>(NSObject *a1@<X8>)
{
  if (a1)
  {
    v3 = a1;
  }

  else
  {
    v3 = v1;
  }

  return os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);
}

void sub_100002B84(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0x30u);
}

BOOL sub_100002BA4@<W0>(NSObject *a1@<X8>)
{
  if (a1)
  {
    v3 = a1;
  }

  else
  {
    v3 = v1;
  }

  return os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);
}

uint64_t sub_100002BE0@<X0>(uint64_t a1@<X8>)
{
  if (a1)
  {
    return a1;
  }

  else
  {
    return v1;
  }
}

BOOL sub_100002BFC@<W0>(NSObject *a1@<X8>)
{
  if (a1)
  {
    v3 = a1;
  }

  else
  {
    v3 = v1;
  }

  return os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);
}

void sub_100002C48(void *a1)
{
  *v2 = 0;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Couldn't create OS Log for 'com.apple.BiometricKit.Library-MesaFactory'!\n", v2, 2u);
  *a1 = qword_1000D2040;
}

void sub_100002CA8()
{
  if (qword_1000D1FB0 != -1)
  {
    dispatch_once(&qword_1000D1FB0, &stru_100090978);
  }

  if (sub_100002B64(qword_1000D2040))
  {
    sub_100002AAC();
    sub_100002AEC();
    sub_100002B44(&_mh_execute_header, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  sub_100002C38();
}

void sub_100002D84(uint64_t a1, _DWORD *a2)
{
  if (qword_1000D1FB0 != -1)
  {
    dispatch_once(&qword_1000D1FB0, &stru_100090978);
  }

  if (sub_100002BFC(qword_1000D2040))
  {
    sub_100002B00();
    sub_100002BD4();
    sub_100002AEC();
    sub_100002BC4();
    _os_log_impl(v3, v4, v5, v6, v7, 0x30u);
  }

  *a2 = 1;
}

void sub_100002E84()
{
  if (qword_1000D1FB0 != -1)
  {
    dispatch_once(&qword_1000D1FB0, &stru_100090978);
  }

  if (sub_100002B64(qword_1000D2040))
  {
    sub_100002ACC();
    sub_100002AEC();
    sub_100002B44(&_mh_execute_header, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

void sub_100002F60()
{
  if (qword_1000D1FB0 != -1)
  {
    dispatch_once(&qword_1000D1FB0, &stru_100090978);
  }

  if (sub_100002B64(qword_1000D2040))
  {
    sub_100002ACC();
    sub_100002AEC();
    sub_100002B44(&_mh_execute_header, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

void sub_10000303C(_DWORD *a1)
{
  if (qword_1000D1FB0 != -1)
  {
    dispatch_once(&qword_1000D1FB0, &stru_100090978);
  }

  if (sub_100002B64(qword_1000D2040))
  {
    sub_100002AAC();
    sub_100002AEC();
    sub_100002B44(&_mh_execute_header, v2, v3, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v4, v5, v6, v7);
  }

  *a1 = 0;
}

void sub_10000311C()
{
  sub_100002B14();
  if (qword_1000D1FB0 != -1)
  {
    dispatch_once(&qword_1000D1FB0, &stru_100090978);
  }

  if (sub_100002BA4(qword_1000D2040))
  {
    sub_100002A8C();
    sub_100002AEC();
    sub_100002B84(&_mh_execute_header, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  sub_100002BF0();
}

void sub_100003200()
{
  if (qword_1000D1FB0 != -1)
  {
    dispatch_once(&qword_1000D1FB0, &stru_100090978);
  }

  if (sub_100002B64(qword_1000D2040))
  {
    sub_100002AAC();
    sub_100002AEC();
    sub_100002B44(&_mh_execute_header, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  sub_100002B24(0x2BCu);
}

void sub_1000032E0()
{
  sub_100002B14();
  if (qword_1000D1FB0 != -1)
  {
    dispatch_once(&qword_1000D1FB0, &stru_100090978);
  }

  if (sub_100002BA4(qword_1000D2040))
  {
    sub_100002A8C();
    sub_100002AEC();
    sub_100002B84(&_mh_execute_header, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  sub_100002BF0();
}

void sub_1000033C4()
{
  if (qword_1000D1FB0 != -1)
  {
    dispatch_once(&qword_1000D1FB0, &stru_100090978);
  }

  if (sub_100002B64(qword_1000D2040))
  {
    sub_100002AAC();
    sub_100002AEC();
    sub_100002B44(&_mh_execute_header, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  sub_100002B34();
}

void sub_1000034A0()
{
  if (qword_1000D1FB0 != -1)
  {
    dispatch_once(&qword_1000D1FB0, &stru_100090978);
  }

  if (sub_100002B64(qword_1000D2040))
  {
    sub_100002AAC();
    sub_100002AEC();
    sub_100002B44(&_mh_execute_header, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  sub_100002B34();
}

void sub_10000357C()
{
  if (qword_1000D1FB0 != -1)
  {
    dispatch_once(&qword_1000D1FB0, &stru_100090978);
  }

  if (sub_100002B64(qword_1000D2040))
  {
    sub_100002AAC();
    sub_100002AEC();
    sub_100002B44(&_mh_execute_header, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  sub_100002B34();
}

void sub_100003658()
{
  sub_100002B14();
  if (qword_1000D1FB0 != -1)
  {
    dispatch_once(&qword_1000D1FB0, &stru_100090978);
  }

  if (sub_100002BA4(qword_1000D2040))
  {
    sub_100002A8C();
    sub_100002AEC();
    sub_100002B84(&_mh_execute_header, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  sub_100002BF0();
}

void sub_10000373C()
{
  if (qword_1000D1FB0 != -1)
  {
    dispatch_once(&qword_1000D1FB0, &stru_100090978);
  }

  if (sub_100002B64(qword_1000D2040))
  {
    sub_100002AAC();
    sub_100002AEC();
    sub_100002B44(&_mh_execute_header, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  sub_100002B34();
}

void sub_100003818()
{
  if (qword_1000D1FB0 != -1)
  {
    dispatch_once(&qword_1000D1FB0, &stru_100090978);
  }

  if (sub_100002B64(qword_1000D2040))
  {
    sub_100002AAC();
    sub_100002AEC();
    sub_100002B44(&_mh_execute_header, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  sub_100002B34();
}

void sub_1000038F4()
{
  if (qword_1000D1FB0 != -1)
  {
    dispatch_once(&qword_1000D1FB0, &stru_100090978);
  }

  if (sub_100002B64(qword_1000D2040))
  {
    sub_100002AAC();
    sub_100002AEC();
    sub_100002B44(&_mh_execute_header, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  sub_100002B34();
}

void sub_1000039E4()
{
  sub_100002B14();
  if (qword_1000D1FB0 != -1)
  {
    dispatch_once(&qword_1000D1FB0, &stru_100090978);
  }

  if (sub_100002BA4(qword_1000D2040))
  {
    sub_100002A8C();
    sub_100002AEC();
    sub_100002B84(&_mh_execute_header, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  sub_100002BF0();
}

void sub_100003AC8()
{
  sub_100002B14();
  if (qword_1000D1FB0 != -1)
  {
    dispatch_once(&qword_1000D1FB0, &stru_100090978);
  }

  if (sub_100002BA4(qword_1000D2040))
  {
    sub_100002A8C();
    sub_100002AEC();
    sub_100002B84(&_mh_execute_header, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  sub_100002BF0();
}

void sub_100003BD4()
{
  sub_100002B14();
  if (qword_1000D1FB0 != -1)
  {
    dispatch_once(&qword_1000D1FB0, &stru_100090978);
  }

  if (sub_100002BA4(qword_1000D2040))
  {
    sub_100002A8C();
    sub_100002AEC();
    sub_100002B84(&_mh_execute_header, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  sub_100002BF0();
}

id sub_100003CB8(int a1, int a2, uint64_t a3)
{
  v23 = 0;
  v24 = 0;
  v6 = qword_1000D1FB8;
  if (qword_1000D1FB8)
  {
    v23 = qword_1000D1FB8;
  }

  else
  {
    if (!sub_100020694(&v23))
    {
      sub_100020530("gatherASPFTLData: Could not get nand_exporter_t", v23, v24);
      goto LABEL_19;
    }

    v6 = v23;
  }

  if (!*(v6 + 4))
  {
    sub_100020530("gatherASPFTLData: No io_connection exist", v23, v24);
LABEL_19:
    v12 = 0;
    goto LABEL_42;
  }

  v24 = 0;
  if (!a2)
  {
    v7 = v6[6];
    if (v7)
    {
      goto LABEL_11;
    }

    sub_100020530("gatherASPFTLData: No getReadStatsSelectors exist", v23);
LABEL_25:
    v12 = 0;
    goto LABEL_45;
  }

  v7 = v6[5];
  if (!v7)
  {
    sub_100020530("gatherASPFTLData: No getStatsSelectors exist", v23);
    goto LABEL_25;
  }

  a3 = 0;
LABEL_11:
  v8 = v7();
  v9 = sub_100021C58(v23, *(v8 + 4), 0, a3, &v24, 0, 0);
  v10 = v9;
  if (v9)
  {
    v11 = v24 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    v12 = 0;
    if (!v9)
    {
      goto LABEL_42;
    }
  }

  else
  {
    v13 = malloc_type_calloc(1uLL, 0x20uLL, 0x20040DC1BFBCFuLL);
    if (v13)
    {
      v14 = v13;
      if (a1)
      {
        v15 = (v23[19])(v13, v10, v24);
      }

      else
      {
        v15 = (v23[18])(v13, v10, v24);
      }

      if (v15)
      {
        v12 = sub_1000202BC(v14, 0);
        v16 = [NSString stringWithUTF8String:*v23];
        v17 = [v16 isEqualToString:@"ASPStorage"];

        if (v17)
        {
          v18 = &off_1000C8798;
        }

        else
        {
          v18 = &off_1000C8780;
        }

        [v12 setObject:v18 forKeyedSubscript:{@"com.apple.NANDInfo.IsANS1Controller", v23}];
        if (v12 && ([v12 objectForKey:@"magazineFWVersion_1"], v19 = objc_claimAutoreleasedReturnValue(), v19, v19))
        {
          v20 = &off_1000C8798;
        }

        else
        {
          sub_100020530("Stat Magazine not supported");
          v20 = &off_1000C8780;
        }

        [v12 setObject:v20 forKeyedSubscript:@"com.apple.NANDInfo.IsStatMagSupported"];
      }

      else
      {
        sub_100020530("gatherASPFTLData: parseFTL failed");
        v12 = 0;
      }

      v21 = v23[20];
      if (v21)
      {
        (v21)(v14);
      }

      free(v14);
    }

    else
    {
      sub_100020530("gatherASPFTLData: Could not allocate memory for pcxt.ftlData");
      v12 = 0;
    }
  }

  free(v10);
LABEL_42:
  if (!qword_1000D1FB8 && v23)
  {
    sub_1000207E0(v23);
  }

LABEL_45:

  return v12;
}

void *CopyAppleCareNANDInfo()
{
  v7[0] = @"com.apple.NANDInfo.Health.MaxPercentageNANDUsed";
  v7[1] = @"com.apple.NANDInfo.Health.HostReadErrors";
  v7[2] = @"com.apple.NANDInfo.Health.MaxE2EErrors";
  v7[3] = @"com.apple.NANDInfo.Health.NumGrownBadBlocks";
  v7[4] = @"com.apple.NANDInfo.Health.NumDieFailures";
  v0 = [NSArray arrayWithObjects:v7 count:5];
  v1 = sub_10000407C();
  v2 = v1;
  if (v1)
  {
    v3 = sub_1000203C0(v1, v0);
  }

  else
  {
    sub_100020530("CopyAppleCareNANDInfo: Unable to get health API fields");
    v3 = objc_alloc_init(NSMutableDictionary);
  }

  v4 = v3;
  v5 = [NSString stringWithUTF8String:sub_100020600()];
  [v4 setObject:v5 forKeyedSubscript:off_1000D1B10];

  return v4;
}

id sub_10000407C()
{
  v0 = objc_alloc_init(NSMutableDictionary);
  v59[0] = @"numGrownBad";
  v59[1] = @"spareAvailablePercent";
  v60[0] = @"com.apple.NANDInfo.Health.NumGrownBadBlocks";
  v60[1] = @"com.apple.NANDInfo.Health.SpareAvailablePercent";
  v59[2] = @"numDieFailures";
  v60[2] = @"com.apple.NANDInfo.Health.NumDieFailures";
  v1 = [NSDictionary dictionaryWithObjects:v60 forKeys:v59 count:3];
  v2 = sub_100003CB8(0, 1, 0);
  if (!v2)
  {
    sub_100020530("gatherNANDHealthInfo: Unable to get FTL fields");
    goto LABEL_44;
  }

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v3 = [&off_1000C8660 countByEnumeratingWithState:&v52 objects:v58 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v53;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v53 != v6)
        {
          objc_enumerationMutation(&off_1000C8660);
        }

        v8 = *(*(&v52 + 1) + 8 * i);
        v9 = [v2 objectForKey:v8];

        if (v9)
        {
          v10 = [v2 objectForKey:v8];
          v11 = [v10 intValue];

          if (v5 <= v11)
          {
            v5 = v11;
          }
        }
      }

      v4 = [&off_1000C8660 countByEnumeratingWithState:&v52 objects:v58 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  v12 = [NSNumber numberWithInteger:v5];
  [v0 setObject:v12 forKeyedSubscript:@"com.apple.NANDInfo.Health.MaxPercentageNANDUsed"];

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v13 = [&off_1000C8678 countByEnumeratingWithState:&v48 objects:v57 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = 0;
    v16 = *v49;
    do
    {
      for (j = 0; j != v14; j = j + 1)
      {
        if (*v49 != v16)
        {
          objc_enumerationMutation(&off_1000C8678);
        }

        v18 = *(*(&v48 + 1) + 8 * j);
        v19 = [v2 objectForKey:v18];

        if (v19)
        {
          v20 = [v2 objectForKey:v18];
          v21 = [v20 intValue];

          if (v15 <= v21)
          {
            v15 = v21;
          }
        }
      }

      v14 = [&off_1000C8678 countByEnumeratingWithState:&v48 objects:v57 count:16];
    }

    while (v14);
  }

  else
  {
    v15 = 0;
  }

  v22 = [NSNumber numberWithInteger:v15];
  [v0 setObject:v22 forKeyedSubscript:@"com.apple.NANDInfo.Health.MaxE2EErrors"];

  v23 = [v2 objectForKey:@"com.apple.NANDInfo.IsANS1Controller"];

  if (!v23)
  {
    goto LABEL_32;
  }

  v24 = [v2 objectForKey:@"com.apple.NANDInfo.IsANS1Controller"];
  v25 = [v24 intValue];

  if (!v25)
  {
    v26 = @"raidSmartErrors";
    v32 = [v2 objectForKey:@"raidSmartErrors"];

    if (v32)
    {
      goto LABEL_30;
    }

LABEL_32:
    v31 = 0;
    goto LABEL_33;
  }

  v26 = @"ueccReads";
  v27 = [v2 objectForKey:@"ueccReads"];
  v28 = [v27 intValue];

  if (!v28)
  {
    goto LABEL_32;
  }

LABEL_30:
  v29 = [v2 objectForKey:v26];
  v30 = [v29 intValue];

  v31 = v30 & ~(v30 >> 31);
LABEL_33:
  v33 = [NSNumber numberWithInteger:v31];
  [v0 setObject:v33 forKeyedSubscript:@"com.apple.NANDInfo.Health.HostReadErrors"];

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v34 = v1;
  v35 = [v34 countByEnumeratingWithState:&v44 objects:v56 count:16];
  if (v35)
  {
    v36 = v35;
    v37 = *v45;
    do
    {
      for (k = 0; k != v36; k = k + 1)
      {
        if (*v45 != v37)
        {
          objc_enumerationMutation(v34);
        }

        v39 = *(*(&v44 + 1) + 8 * k);
        v40 = [v2 objectForKey:{v39, v44}];

        if (v40)
        {
          v41 = [v2 objectForKey:v39];
          v42 = [v34 objectForKeyedSubscript:v39];
          [v0 setObject:v41 forKeyedSubscript:v42];
        }

        else
        {
          v41 = [v34 objectForKeyedSubscript:v39];
          [v0 setObject:&off_1000C89D8 forKeyedSubscript:v41];
        }
      }

      v36 = [v34 countByEnumeratingWithState:&v44 objects:v56 count:16];
    }

    while (v36);
  }

LABEL_44:

  return v0;
}

uint64_t sub_1000045B8(uint64_t a1, unint64_t *a2, unsigned int a3)
{
  *(a1 + 36) = -1;
  if (a3 < 8)
  {
    return 0;
  }

  v6 = a3 >> 3;
  while (2)
  {
    v9 = *a2;
    v8 = (a2 + 1);
    v7 = v9;
    v10 = HIDWORD(v9);
    v11 = v6 - 1;
    if (v9 > 0x30000000 || v11 < v10)
    {
      result = 0;
      *(a1 + 32) = 0;
      return result;
    }

    switch(v7)
    {
      case 1:
        v13 = *v8;
        v14 = "version";
        goto LABEL_77;
      case 2:
        v13 = *v8;
        v14 = "hostWriteXacts";
        goto LABEL_77;
      case 3:
        v13 = *v8;
        v14 = "hostReadXacts";
        goto LABEL_77;
      case 4:
        v13 = *v8;
        *(a1 + 72) = *v8;
        v14 = "hostWrites";
        goto LABEL_77;
      case 5:
        v13 = *v8;
        v14 = "hostWritesDyn";
        goto LABEL_77;
      case 6:
        v13 = *v8;
        v14 = "hostWritesStatic";
        goto LABEL_77;
      case 7:
        v13 = *v8;
        *(a1 + 64) = *v8;
        v14 = "hostReads";
        goto LABEL_77;
      case 8:
        v13 = *v8;
        v14 = "validLbas";
        goto LABEL_77;
      case 9:
        v13 = *v8;
        v14 = "shutdowns";
        goto LABEL_77;
      case 10:
        v13 = *v8;
        v14 = "boots";
        goto LABEL_77;
      case 11:
        v13 = *v8;
        v14 = "uncleanBoots";
        goto LABEL_77;
      case 12:
        v13 = *v8;
        *(a1 + 144) = *v8;
        v14 = "IND_pool_free";
        goto LABEL_77;
      case 13:
        v13 = *v8;
        *(a1 + 152) = *v8;
        v14 = "IND_pool_count";
        goto LABEL_77;
      case 14:
        v15 = "hostWriteLogHisto";
        v16 = a1;
        v17 = 14;
        goto LABEL_44;
      case 15:
        v15 = "hostReadLogHisto";
        v16 = a1;
        v17 = 15;
LABEL_44:
        v18 = v8;
        v19 = 10;
        goto LABEL_51;
      case 16:
        v13 = *v8;
        v14 = "gcWrites";
        goto LABEL_77;
      case 17:
        v13 = *v8;
        *(a1 + 88) = *v8;
        v14 = "wearLevMoves";
        goto LABEL_77;
      case 18:
        v13 = *v8;
        *(a1 + 104) = *v8;
        v14 = "nandWrites";
        goto LABEL_77;
      case 19:
        v13 = *v8;
        *(a1 + 96) = *v8;
        v14 = "nandReads";
        goto LABEL_77;
      case 20:
        v13 = *v8;
        *(a1 + 112) = *v8;
        v14 = "bandErases";
        goto LABEL_77;
      case 22:
        v13 = *v8;
        v14 = "numPfail";
        goto LABEL_77;
      case 23:
        v13 = *v8;
        v14 = "numEfail";
        goto LABEL_77;
      case 24:
        v13 = *v8;
        v14 = "numPerformanceRefreshes";
        goto LABEL_77;
      case 27:
        v13 = *v8;
        v14 = "hostWritesMeta";
        goto LABEL_77;
      case 28:
        v13 = *v8;
        *(a1 + 168) = *v8;
        v14 = "numSleepOps";
        goto LABEL_77;
      case 30:
        v13 = *v8;
        v14 = "cntTimeWentBackWardOnBoot";
        goto LABEL_77;
      case 31:
        v13 = *v8;
        v14 = "cntTimeWentBackWard";
        goto LABEL_77;
      case 34:
        v13 = *v8;
        v14 = "powerOnHours";
        goto LABEL_77;
      case 36:
        v13 = *v8;
        v14 = "smartCritWarnings";
        goto LABEL_77;
      case 37:
        v13 = *v8;
        v14 = "numFlushes";
        goto LABEL_77;
      case 38:
        v13 = *v8;
        v14 = "numUnmap";
        goto LABEL_77;
      case 39:
        v13 = *v8;
        v14 = "numUnmapSec";
        goto LABEL_77;
      case 41:
        v13 = *v8;
        v14 = "clogProgram";
        goto LABEL_77;
      case 42:
        v13 = *v8;
        v14 = "clogPFail";
        goto LABEL_77;
      case 43:
        v13 = *v8;
        v14 = "clogRead";
        goto LABEL_77;
      case 44:
        v13 = *v8;
        v14 = "clogRFail";
        goto LABEL_77;
      case 45:
        v13 = *v8;
        *(a1 + 176) = *v8;
        v14 = "maxHighEnduranceBlockErases";
        goto LABEL_77;
      case 46:
        v13 = *v8;
        v14 = "numFactoryBad";
        goto LABEL_77;
      case 47:
        v13 = *v8;
        v14 = "numGrownBad";
        goto LABEL_77;
      case 48:
        v13 = *v8;
        *(a1 + 80) = *v8;
        v14 = "numFreeVirtualBlocks";
        goto LABEL_77;
      case 49:
        v13 = *v8;
        *(a1 + 56) = *v8;
        v14 = "bytesPerPage";
        goto LABEL_77;
      case 50:
        v13 = *v8;
        *(a1 + 52) = *v8;
        v14 = "pagesPerVirtualBlock";
        goto LABEL_77;
      case 51:
        v13 = *v8;
        *(a1 + 48) = *v8;
        v14 = "blocksPerVirtualBlock";
        goto LABEL_77;
      case 52:
        v13 = *v8;
        *(a1 + 44) = *v8;
        v14 = "numVirtualBlocks";
        goto LABEL_77;
      case 53:
        v13 = *v8;
        *(a1 + 32) = *v8;
        v14 = "exportVersion";
        goto LABEL_77;
      case 54:
        v15 = "ECBins";
        v16 = a1;
        v17 = 54;
        goto LABEL_50;
      case 55:
        v15 = "RCBins";
        v16 = a1;
        v17 = 55;
LABEL_50:
        v18 = v8;
        v19 = 100;
        goto LABEL_51;
      case 56:
        v13 = *v8;
        *(a1 + 160) = *v8;
        v14 = "utilFormatTime";
        goto LABEL_77;
      case 57:
        v13 = *v8;
        v14 = "calendarTime";
        goto LABEL_77;
      case 58:
        v13 = *v8;
        v14 = "wallTime";
        goto LABEL_77;
      case 59:
        v13 = *v8;
        v14 = "cmdq_flush_us";
        goto LABEL_77;
      case 60:
        v13 = *v8;
        v14 = "cmdq_unmap_us";
        goto LABEL_77;
      case 61:
        v13 = *v8;
        v14 = "cmdq_pri0_r_us";
        goto LABEL_77;
      case 62:
        v13 = *v8;
        v14 = "cmdq_pri0_w_us";
        goto LABEL_77;
      case 63:
        v13 = *v8;
        v14 = "cmdq_pri1_r_us";
        goto LABEL_77;
      case 64:
        v13 = *v8;
        v14 = "cmdq_pri1_w_us";
        goto LABEL_77;
      case 65:
        v13 = *v8;
        v14 = "cmdq_pri2_r_us";
        goto LABEL_77;
      case 66:
        v13 = *v8;
        v14 = "cmdq_pri2_w_us";
        goto LABEL_77;
      case 67:
        v13 = *v8;
        v14 = "cmdq_pri3_r_us";
        goto LABEL_77;
      case 68:
        v13 = *v8;
        v14 = "cmdq_pri3_w_us";
        goto LABEL_77;
      case 69:
        v13 = *v8;
        v14 = "host_idle_ms";
        goto LABEL_77;
      case 70:
        v13 = *v8;
        v14 = "cmd_hysteresis_window_us";
        goto LABEL_77;
      case 71:
        v13 = *v8;
        v14 = "cmd_lowPriHoldoffDelay_us";
        goto LABEL_77;
      case 72:
        v13 = *v8;
        v14 = "cmd_lowPriHoldoffEnabled";
LABEL_77:
        v20 = a1;
        goto LABEL_78;
      default:
        switch(v7)
        {
          case 73:
            v13 = *v8;
            v14 = "cmd_expedite_num_success";
            goto LABEL_77;
          case 75:
            v13 = *v8;
            v14 = "cmd_expedite_num_failures";
            goto LABEL_77;
          case 76:
            v13 = *v8;
            v14 = "num_trimerase";
            goto LABEL_77;
          case 77:
            v13 = *v8;
            v14 = "staticSizeInMB";
            goto LABEL_77;
          case 80:
            v13 = *v8;
            v14 = "slcInvalidations";
            goto LABEL_77;
          case 81:
            v13 = *v8;
            v14 = "slcGCInvalidations";
            goto LABEL_77;
          case 82:
            v13 = *v8;
            v14 = "hostSectorsDuringGCon";
            goto LABEL_77;
          case 83:
            v13 = *v8;
            v14 = "highWaterMarkSLCUsed";
            goto LABEL_77;
          case 84:
            v13 = *v8;
            v14 = "intermediateBandErases";
            goto LABEL_77;
          case 85:
            v13 = *v8;
            v14 = "intermediatePartitionStart";
            goto LABEL_77;
          case 86:
            v13 = *v8;
            v14 = "userPartitionStart";
            goto LABEL_77;
          case 87:
            v13 = *v8;
            v14 = "iolog_lbas";
            goto LABEL_77;
          case 88:
            v15 = "bandsAgeBins";
            v16 = a1;
            v17 = 88;
            goto LABEL_44;
          case 89:
            v15 = "intermediateBandsAgeBins";
            v16 = a1;
            v17 = 89;
            goto LABEL_44;
          case 90:
            v15 = "qosPerCmdQ";
            v16 = a1;
            v17 = 90;
            v18 = v8;
            v19 = 160;
            goto LABEL_51;
          case 91:
            v15 = "maxQosPerCmdQ";
            v16 = a1;
            v17 = 91;
            goto LABEL_44;
          case 92:
            v13 = *v8;
            v14 = "shutdownDuringGC";
            goto LABEL_77;
          case 93:
            v15 = "numBandsRefreshedForAgePerTier";
            v16 = a1;
            v17 = 93;
LABEL_130:
            v18 = v8;
            v19 = 3;
            goto LABEL_51;
          case 94:
            v15 = "bdrDeltaHot";
            v16 = a1;
            v17 = 94;
            goto LABEL_93;
          case 95:
            v13 = *v8;
            v14 = "numRefreshOnClockLoss";
            goto LABEL_77;
          case 96:
            v13 = *v8;
            v14 = "numRefreshOnErrNandRefreshRel";
            goto LABEL_77;
          case 97:
            v13 = *v8;
            v14 = "numBGRefreshMoves";
            goto LABEL_77;
          case 98:
            v13 = *v8;
            v14 = "numBGPaddingMoves";
            goto LABEL_77;
          case 99:
            v13 = *v8;
            v14 = "hostWritesPhoto";
            goto LABEL_77;
          case 100:
            v13 = *v8;
            v14 = "INDPooldFree";
            goto LABEL_77;
          case 101:
            v13 = *v8;
            v14 = "INDContigCount";
            goto LABEL_77;
          case 102:
            v13 = *v8;
            v14 = "INDValidContigCount";
            goto LABEL_77;
          case 103:
            v13 = *v8;
            v14 = "INDMinContigSize";
            goto LABEL_77;
          case 104:
            v13 = *v8;
            v14 = "INDMaxContigSize";
            goto LABEL_77;
          case 105:
            v13 = *v8;
            v14 = "INDAveContigSize";
            goto LABEL_77;
          case 106:
            v13 = *v8;
            v14 = "INDpoolSize";
            goto LABEL_77;
          case 107:
            v13 = *v8;
            v14 = "pushSyncWrites";
            goto LABEL_77;
          case 109:
            v13 = *v8;
            v14 = "cmd_rw_hysteresis_us";
            goto LABEL_77;
          case 110:
            v13 = *v8;
            v14 = "photoFlowMode";
            goto LABEL_77;
          case 112:
            v13 = *v8;
            v14 = "numBandsPaddedForAge";
            goto LABEL_77;
          case 113:
            v15 = "bandsPerHostFlow";
            v16 = a1;
            v17 = 113;
            goto LABEL_144;
          case 114:
            v15 = "bandsPerSpecialFlow";
            v16 = a1;
            v17 = 114;
            goto LABEL_102;
          case 115:
            v15 = "secsPerHostFlow";
            v16 = a1;
            v17 = 115;
            goto LABEL_144;
          case 116:
            v15 = "secsPerSpecialFlow";
            v16 = a1;
            v17 = 116;
            goto LABEL_102;
          case 118:
            v15 = "overWritesPerHostFlow";
            v16 = a1;
            v17 = 118;
            goto LABEL_144;
          case 119:
            v15 = "overWritesPerSpecialFlow";
            v16 = a1;
            v17 = 119;
            goto LABEL_102;
          case 120:
            v15 = "padSectorsPerFlow";
            v16 = a1;
            v17 = 120;
            goto LABEL_44;
          case 121:
            v15 = "padSizes";
            v16 = a1;
            v17 = 121;
            goto LABEL_144;
          case 122:
            v15 = "unmapsPerHostFlow";
            v16 = a1;
            v17 = 122;
            goto LABEL_144;
          case 123:
            v15 = "unmapsPerSpecialFlow";
            v16 = a1;
            v17 = 123;
LABEL_102:
            v18 = v8;
            v19 = 5;
            goto LABEL_51;
          case 124:
            v15 = "coldestCycle";
            v16 = a1;
            v17 = 124;
            goto LABEL_123;
          case 125:
            v15 = "hottestCycle";
            v16 = a1;
            v17 = 125;
            goto LABEL_123;
          case 126:
            v13 = *v8;
            v14 = "gcLonlyWrites";
            goto LABEL_77;
          case 127:
            v13 = *v8;
            v14 = "gcPLWrites";
            goto LABEL_77;
          case 129:
            v13 = *v8;
            v14 = "pagesPerVirtualBlockSlc";
            goto LABEL_77;
          case 130:
            v13 = *v8;
            v14 = "bdrPadding";
            goto LABEL_77;
          case 131:
            v15 = "errInjCounters";
            v16 = a1;
            v17 = 131;
            goto LABEL_149;
          case 132:
            v13 = *v8;
            v14 = "raidSuccessfulReconstructionInternal";
            goto LABEL_77;
          case 133:
            v13 = *v8;
            v14 = "raidSuccessfulReconstructionHost";
            goto LABEL_77;
          case 134:
            v13 = *v8;
            v14 = "raidFailedReconstructionInternal";
            goto LABEL_77;
          case 135:
            v13 = *v8;
            v14 = "raidFailedReconstructionHost";
            goto LABEL_77;
          case 136:
            v13 = *v8;
            v14 = "raidBandsPerHostFlow";
            goto LABEL_77;
          case 137:
            v13 = *v8;
            v14 = "raidSecsPerHostFlow";
            goto LABEL_77;
          case 138:
            v13 = *v8;
            v14 = "gcFreeL";
            goto LABEL_77;
          case 139:
            v13 = *v8;
            v14 = "gcDestinations";
            goto LABEL_77;
          case 140:
            v13 = *v8;
            v14 = "gcFragments";
            goto LABEL_77;
          case 141:
            v13 = *v8;
            v14 = "numMemChoke";
            goto LABEL_77;
          case 142:
            v13 = *v8;
            v14 = "maxMemChokeDuration";
            goto LABEL_77;
          case 143:
            v13 = *v8;
            v14 = "memChokeDuration";
            goto LABEL_77;
          default:
            switch(v7)
            {
              case 144:
                v13 = *v8;
                v14 = "numMemExtreme";
                goto LABEL_77;
              case 145:
                v13 = *v8;
                v14 = "maxMemExtremeDuration";
                goto LABEL_77;
              case 146:
                v13 = *v8;
                v14 = "memExtremeDuration";
                goto LABEL_77;
              case 147:
                v13 = *v8;
                v14 = "bandGetsExtreme";
                goto LABEL_77;
              case 148:
                v13 = *v8;
                v14 = "bandGetsLow";
                goto LABEL_77;
              case 149:
                v13 = *v8;
                v14 = "numHostChoke";
                goto LABEL_77;
              case 152:
                v13 = *v8;
                v14 = "AbortSkip_ProgramError";
                goto LABEL_77;
              case 153:
                v13 = *v8;
                v14 = "AbortSkip_ReadErrorOpenBand";
                goto LABEL_77;
              case 154:
                v13 = *v8;
                v14 = "AbortSkip_FailedRebuildingParity";
                goto LABEL_77;
              case 155:
                v13 = *v8;
                v14 = "AbortPad_OpenRefreshBand";
                goto LABEL_77;
              case 156:
                v13 = *v8;
                v14 = "AbortPad_CloseBands";
                goto LABEL_77;
              case 157:
                v13 = *v8;
                v14 = "AbortPad_SetPhoto";
                goto LABEL_77;
              case 158:
                v13 = *v8;
                v14 = "AbortPad_GcNoSource";
                goto LABEL_77;
              case 159:
                v13 = *v8;
                v14 = "AbortPad_Format";
                goto LABEL_77;
              case 160:
                v13 = *v8;
                v14 = "nandDiscoveryDuration";
                goto LABEL_77;
              case 161:
                v13 = *v8;
                v14 = "coreCCEnableDuration";
                goto LABEL_77;
              case 163:
                v13 = *v8;
                v14 = "coreOpenDuration";
                goto LABEL_77;
              case 164:
                v13 = *v8;
                v14 = "coreWritableDuration";
                goto LABEL_77;
              case 165:
                v13 = *v8;
                v14 = "coreClogLoadDuration";
                goto LABEL_77;
              case 167:
                v13 = *v8;
                v14 = "bulkPFail";
                goto LABEL_77;
              case 169:
                v13 = *v8;
                v14 = "bulkRFail";
                goto LABEL_77;
              case 172:
                v13 = *v8;
                v14 = "raidSmartErrors";
                goto LABEL_77;
              case 182:
                v13 = *v8;
                v14 = "internalUeccs";
                goto LABEL_77;
              case 183:
                v13 = *v8;
                v14 = "e2eFail";
                goto LABEL_77;
              case 184:
                v13 = *v8;
                v14 = "TempSensorMax";
                goto LABEL_77;
              case 185:
                v13 = *v8;
                v14 = "TempSensorMin";
                goto LABEL_77;
              case 186:
                v13 = *v8;
                v14 = "powerUpFromDDR";
                goto LABEL_77;
              case 187:
                v13 = *v8;
                v14 = "numMemLow";
                goto LABEL_77;
              case 188:
                v13 = *v8;
                v14 = "maxMemLowDuration";
                goto LABEL_77;
              case 189:
                v13 = *v8;
                v14 = "memLowDuration";
                goto LABEL_77;
              case 190:
                v13 = *v8;
                v14 = "numFences";
                goto LABEL_77;
              case 191:
                v13 = *v8;
                v14 = "hostPassiveIO";
                goto LABEL_77;
              case 192:
                v13 = *v8;
                v14 = "odtsMax";
                goto LABEL_77;
              case 193:
                v13 = *v8;
                v14 = "defragMFromOrphans";
                goto LABEL_77;
              case 194:
                v13 = *v8;
                v14 = "defragMFromFragments";
                goto LABEL_77;
              case 195:
                v13 = *v8;
                v14 = "defragMTime";
                goto LABEL_77;
              case 196:
                v13 = *v8;
                v14 = "defragMMaxTime";
                goto LABEL_77;
              case 197:
                v13 = *v8;
                v14 = "raidFailedLbaMismatch";
                goto LABEL_77;
              case 198:
                v13 = *v8;
                v14 = "numSyscfgWrites";
                goto LABEL_77;
              case 199:
                v13 = *v8;
                v14 = "indmbUnitsXfer";
                goto LABEL_77;
              case 200:
                v13 = *v8;
                v14 = "indmbUnitsCache";
                goto LABEL_77;
              case 201:
                v13 = *v8;
                v14 = "indmbUnitsInd";
                goto LABEL_77;
              case 202:
                v13 = *v8;
                v14 = "wcacheFS_Mbytes";
                goto LABEL_77;
              case 203:
                v13 = *v8;
                v14 = "wcacheDS_Mbytes";
                goto LABEL_77;
              case 204:
                v13 = *v8;
                v14 = "powerOnSeconds";
                goto LABEL_77;
              case 205:
                v13 = *v8;
                v14 = "numUnknownTokenHostRead";
                goto LABEL_77;
              case 206:
                v13 = *v8;
                v14 = "numUnmmapedTokenHostRead";
                goto LABEL_77;
              case 207:
                v15 = "numOfThrottlingEntriesPerLevel";
                v16 = a1;
                v17 = 207;
LABEL_213:
                v18 = v8;
                v19 = 25;
                goto LABEL_51;
              case 208:
                v13 = *v8;
                v14 = "wcacheFS_MbytesMin";
                goto LABEL_77;
              case 209:
                v13 = *v8;
                v14 = "wcacheFS_MbytesMax";
                goto LABEL_77;
              case 210:
                v13 = *v8;
                v14 = "prepareForShutdownFailCounter";
                goto LABEL_77;
              case 211:
                v13 = *v8;
                v14 = "lpsrEntry";
                goto LABEL_77;
              case 212:
                v13 = *v8;
                v14 = "lpsrExit";
                goto LABEL_77;
              case 213:
                v15 = "crcInternalReadFail";
                v16 = a1;
                v17 = 213;
                goto LABEL_149;
              case 214:
                v13 = *v8;
                v14 = "wcacheFSEvictCnt";
                goto LABEL_77;
              case 215:
                v13 = *v8;
                v14 = "wcacheFSEvictSize";
                goto LABEL_77;
              case 216:
                v13 = *v8;
                v14 = "wcacheFSWr";
                goto LABEL_77;
              case 217:
                v13 = *v8;
                v14 = "wcacheDSWr";
                goto LABEL_77;
              case 218:
                v15 = "wcacheFSEvictSizeLogDist";
                v16 = a1;
                v17 = 218;
                goto LABEL_44;
              case 219:
                v13 = *v8;
                v14 = "prepareForShutdownTimeoutCounter";
                goto LABEL_77;
              case 220:
                v13 = *v8;
                v14 = "prepareForShutdownCancelCounter";
                goto LABEL_77;
              case 221:
                v13 = *v8;
                v14 = "RD_openBandCount";
                goto LABEL_77;
              case 222:
                v13 = *v8;
                v14 = "RD_openBandNops";
                goto LABEL_77;
              case 223:
                v13 = *v8;
                v14 = "RD_closedBandEvictCount";
                goto LABEL_77;
              default:
                switch(v7)
                {
                  case 224:
                    v13 = *v8;
                    v14 = "RD_closedBandEvictSectors";
                    goto LABEL_77;
                  case 225:
                    v13 = *v8;
                    v14 = "RD_closedBandFragmentCount";
                    goto LABEL_77;
                  case 226:
                    v13 = *v8;
                    v14 = "RD_closedBandFragmentSectors";
                    goto LABEL_77;
                  case 227:
                    v15 = "wcacheFSOverWrLogSizeCnts";
                    v16 = a1;
                    v17 = 227;
                    goto LABEL_44;
                  case 228:
                    v15 = "wcacheFSOverWrSizeByFlow";
                    v16 = a1;
                    v17 = 228;
                    goto LABEL_144;
                  case 229:
                    v15 = "indmbXferCountTo";
                    v16 = a1;
                    v17 = 229;
                    goto LABEL_123;
                  case 230:
                    v15 = "indmbAccumulatedTimeBetweenXfers";
                    v16 = a1;
                    v17 = 230;
                    goto LABEL_123;
                  case 231:
                    v13 = *v8;
                    v14 = "maxGracefulBootTimeMs";
                    goto LABEL_77;
                  case 232:
                    v13 = *v8;
                    v14 = "maxUngracefulBootTimeMs";
                    goto LABEL_77;
                  case 233:
                    v13 = *v8;
                    v14 = "averageGracefulBootTimeMs";
                    goto LABEL_77;
                  case 234:
                    v13 = *v8;
                    v14 = "averageUngracefulBootTimeMs";
                    goto LABEL_77;
                  case 235:
                    v15 = "gracefulBootTimeLogMs";
                    v16 = a1;
                    v17 = 235;
                    goto LABEL_149;
                  case 236:
                    v15 = "ungracefulBootTimeLogMs";
                    v16 = a1;
                    v17 = 236;
                    goto LABEL_149;
                  case 237:
                    v15 = "CalibrationCount";
                    v16 = a1;
                    v17 = 237;
                    goto LABEL_144;
                  case 238:
                    v13 = *v8;
                    v14 = "CalibrationLastTmp";
                    goto LABEL_77;
                  case 239:
                    v13 = *v8;
                    v14 = "CalibrationMaxTmp";
                    goto LABEL_77;
                  case 240:
                    v13 = *v8;
                    v14 = "CalibrationMinTmp";
                    goto LABEL_77;
                  case 241:
                    v13 = *v8;
                    v14 = "ungracefulBootWorstIndicator";
                    goto LABEL_77;
                  case 242:
                    v13 = *v8;
                    v14 = "metaMismatchReread";
                    goto LABEL_77;
                  case 243:
                    v13 = *v8;
                    v14 = "numS3SleepOps";
                    goto LABEL_77;
                  case 244:
                    v13 = *v8;
                    v14 = "odtsCurrent";
                    goto LABEL_77;
                  case 245:
                    v13 = *v8;
                    v14 = "prefetchReads";
                    goto LABEL_77;
                  case 246:
                    v13 = *v8;
                    v14 = "prefetchHits";
                    goto LABEL_77;
                  case 247:
                    v13 = *v8;
                    v14 = "prefetchWritesInvalidation";
                    goto LABEL_77;
                  case 248:
                    v13 = *v8;
                    v14 = "indmbUnitsTotal";
                    goto LABEL_77;
                  case 249:
                    v13 = *v8;
                    v14 = "selfThrottlingEngage";
                    goto LABEL_77;
                  case 250:
                    v13 = *v8;
                    v14 = "selfThrottlingDisengage";
                    goto LABEL_77;
                  case 252:
                    v13 = *v8;
                    v14 = "AbortSkip_WlpMode";
                    goto LABEL_77;
                  case 253:
                    v13 = *v8;
                    v14 = "hostWritesWlpMode";
                    goto LABEL_77;
                  case 254:
                    v13 = *v8;
                    v14 = "numClogDoubleUnc";
                    goto LABEL_77;
                  case 256:
                    v13 = *v8;
                    v14 = "AbortPad_WlpMode";
                    goto LABEL_77;
                  case 257:
                    v13 = *v8;
                    v14 = "bonfireIntermediateBandErases";
                    goto LABEL_77;
                  case 258:
                    v13 = *v8;
                    v14 = "bonfireUserBandErases";
                    goto LABEL_77;
                  case 259:
                    v13 = *v8;
                    v14 = "bonfireIntermediateBandProgs";
                    goto LABEL_77;
                  case 260:
                    v13 = *v8;
                    v14 = "bonfireUserBandProgs";
                    goto LABEL_77;
                  case 261:
                    v13 = *v8;
                    v14 = "bonfireIntermediatePageReads";
                    goto LABEL_77;
                  case 262:
                    v13 = *v8;
                    v14 = "bonfireUserPageReads";
                    goto LABEL_77;
                  case 263:
                    v13 = *v8;
                    v14 = "refreshUtil00";
                    goto LABEL_77;
                  case 264:
                    v13 = *v8;
                    v14 = "failToReadUtil00";
                    goto LABEL_77;
                  case 265:
                    v15 = "readCountHisto";
                    v16 = a1;
                    v17 = 265;
                    goto LABEL_102;
                  case 266:
                    v15 = "readAmpHisto";
                    v16 = a1;
                    v17 = 266;
LABEL_246:
                    v18 = v8;
                    v19 = 16;
                    goto LABEL_51;
                  case 267:
                    v13 = *v8;
                    v14 = "totalReadAmp";
                    goto LABEL_77;
                  case 268:
                    v15 = "nvmeModeSelect";
                    v16 = a1;
                    v17 = 268;
                    goto LABEL_144;
                  case 269:
                    v15 = "numBootBlockRefreshSuccess";
                    v16 = a1;
                    v17 = 269;
                    goto LABEL_149;
                  case 270:
                    v15 = "numBootBlockRefreshFail";
                    v16 = a1;
                    v17 = 270;
                    goto LABEL_149;
                  case 271:
                    v13 = *v8;
                    v14 = "numUnsupportedAsi";
                    goto LABEL_77;
                  case 272:
                    v13 = *v8;
                    v14 = "NumTerminatedProgramSegs";
                    goto LABEL_77;
                  case 273:
                    v13 = *v8;
                    v14 = "indParityPagesDrops";
                    goto LABEL_77;
                  case 274:
                    v13 = *v8;
                    v14 = "indFlowPrograms";
                    goto LABEL_77;
                  case 277:
                    v15 = "powerBudgetSelect";
                    v16 = a1;
                    v17 = 277;
                    goto LABEL_144;
                  case 279:
                    v13 = *v8;
                    v14 = "RxBurnNandWrites";
                    goto LABEL_77;
                  case 280:
                    v15 = "E2EDPErrorCounters";
                    v16 = a1;
                    v17 = 280;
LABEL_282:
                    v18 = v8;
                    v19 = 12;
                    goto LABEL_51;
                  case 281:
                    v13 = *v8;
                    v14 = "wcacheSectorsMax";
                    goto LABEL_77;
                  case 282:
                    v13 = *v8;
                    v14 = "wcacheSectorsMin";
                    goto LABEL_77;
                  case 283:
                    v13 = *v8;
                    v14 = "wcacheSectorsCur";
                    goto LABEL_77;
                  case 284:
                    v13 = *v8;
                    v14 = "wcacheDS_SectorsMax";
                    goto LABEL_77;
                  case 285:
                    v13 = *v8;
                    v14 = "wcacheDS_SectorsMin";
                    goto LABEL_77;
                  case 286:
                    v13 = *v8;
                    v14 = "wcacheDS_SectorsCur";
                    goto LABEL_77;
                  case 287:
                    v13 = *v8;
                    v14 = "wcacheFS_Reads";
                    goto LABEL_77;
                  case 288:
                    v13 = *v8;
                    v14 = "wcacheDS_Reads";
                    goto LABEL_77;
                  case 289:
                    v15 = "mspBootBlockReadFail";
                    v16 = a1;
                    v17 = 289;
                    goto LABEL_284;
                  case 290:
                    v15 = "mspBootBlockProgFail";
                    v16 = a1;
                    v17 = 290;
                    goto LABEL_284;
                  case 291:
                    v15 = "mspBootBlockEraseFail";
                    v16 = a1;
                    v17 = 291;
                    goto LABEL_284;
                  case 292:
                    v13 = *v8;
                    v14 = "bandsRefreshedOnError";
                    goto LABEL_77;
                  default:
                    switch(v7)
                    {
                      case 298:
                        v15 = "perHostReads";
                        v16 = a1;
                        v17 = 298;
                        goto LABEL_123;
                      case 299:
                        v15 = "perHostReadXacts";
                        v16 = a1;
                        v17 = 299;
                        goto LABEL_123;
                      case 300:
                        v15 = "perHostWrites";
                        v16 = a1;
                        v17 = 300;
                        goto LABEL_123;
                      case 301:
                        v15 = "perHostWriteXacts";
                        v16 = a1;
                        v17 = 301;
                        goto LABEL_123;
                      case 302:
                        v15 = "perHostNumFlushes";
                        v16 = a1;
                        v17 = 302;
                        goto LABEL_123;
                      case 303:
                        v15 = "perHostNumFences";
                        v16 = a1;
                        v17 = 303;
                        goto LABEL_123;
                      case 304:
                        v15 = "commitPadSectorsPerFlow";
                        v16 = a1;
                        v17 = 304;
                        goto LABEL_44;
                      case 305:
                        v15 = "wcacheDSOverWrLogSizeCnts";
                        v16 = a1;
                        v17 = 305;
                        goto LABEL_44;
                      case 306:
                        v15 = "wcacheDSOverWrSizeByFlow";
                        v16 = a1;
                        v17 = 306;
                        goto LABEL_144;
                      case 307:
                        v15 = "CmdRaisePrioiryEvents";
                        v16 = a1;
                        v17 = 307;
                        goto LABEL_44;
                      case 308:
                        v13 = *v8;
                        v14 = "utilNumVerification";
                        goto LABEL_77;
                      case 309:
                        v13 = *v8;
                        v14 = "utilRefreshes";
                        goto LABEL_77;
                      case 310:
                        v13 = *v8;
                        v14 = "utilBDRErrors";
                        goto LABEL_77;
                      case 311:
                        v13 = *v8;
                        v14 = "indBandsPerFlow";
                        goto LABEL_77;
                      case 312:
                        v13 = *v8;
                        v14 = "secsPerIndFlow";
                        goto LABEL_77;
                      case 313:
                        v13 = *v8;
                        v14 = "indDecodedECC";
                        goto LABEL_77;
                      case 314:
                        v15 = "numBootBlockValidateSuccess";
                        v16 = a1;
                        v17 = 314;
                        goto LABEL_149;
                      case 315:
                        v15 = "numBootBlockValidateFail";
                        v16 = a1;
                        v17 = 315;
                        goto LABEL_149;
                      case 316:
                        v15 = "clogPagesFillingPercentage";
                        v16 = a1;
                        v17 = 316;
                        goto LABEL_144;
                      case 317:
                        v13 = *v8;
                        v14 = "bdrCalTimeAccFactor";
                        goto LABEL_77;
                      case 318:
                        v13 = *v8;
                        v14 = "bootChainRdError";
                        goto LABEL_77;
                      case 319:
                        v13 = *v8;
                        v14 = "bootChainBlankError";
                        goto LABEL_77;
                      case 320:
                        v13 = *v8;
                        v14 = "bootChainRefreshError";
                        goto LABEL_77;
                      case 321:
                        v13 = *v8;
                        v14 = "bootChainVersionError";
                        goto LABEL_77;
                      case 322:
                        v13 = *v8;
                        v14 = "mspBootBlockMismatch";
                        goto LABEL_77;
                      case 323:
                        v13 = *v8;
                        v14 = "mspBootBlockMismatchErr";
                        goto LABEL_77;
                      case 324:
                        v15 = "bitflipAddr";
                        v16 = a1;
                        v17 = 324;
                        goto LABEL_102;
                      case 325:
                        v15 = "bitflipCount";
                        v16 = a1;
                        v17 = 325;
                        goto LABEL_102;
                      case 326:
                        v15 = "bitflipDupes";
                        v16 = a1;
                        v17 = 326;
                        goto LABEL_102;
                      case 327:
                        v15 = "bandsMaxTempHisto";
                        v16 = a1;
                        v17 = 327;
                        goto LABEL_319;
                      case 328:
                        v15 = "bandsMinTempHisto";
                        v16 = a1;
                        v17 = 328;
                        goto LABEL_319;
                      case 329:
                        v15 = "bandsLifeTimeTempHisto";
                        v16 = a1;
                        v17 = 329;
LABEL_319:
                        v18 = v8;
                        v19 = 30;
                        goto LABEL_51;
                      case 330:
                        v15 = "bandsDeltaTempHisto";
                        v16 = a1;
                        v17 = 330;
                        v18 = v8;
                        v19 = 22;
                        goto LABEL_51;
                      case 331:
                        v15 = "bandsCrossTempHisto";
                        v16 = a1;
                        v17 = 331;
                        v18 = v8;
                        v19 = 45;
                        goto LABEL_51;
                      case 332:
                        v15 = "wcacheWaitLogMs";
                        v16 = a1;
                        v17 = 332;
                        goto LABEL_44;
                      case 333:
                        v15 = "wcacheDS_segsSortedLogSize";
                        v16 = a1;
                        v17 = 333;
                        goto LABEL_44;
                      case 334:
                        v13 = *v8;
                        v14 = "numFirmwareWrites";
                        goto LABEL_77;
                      case 335:
                        v13 = *v8;
                        v14 = "numBisWrites";
                        goto LABEL_77;
                      case 336:
                        v13 = *v8;
                        v14 = "numBootChainUpdates";
                        goto LABEL_77;
                      case 337:
                        v13 = *v8;
                        v14 = "cntCalTimeWentBackWard";
                        goto LABEL_77;
                      case 338:
                        v13 = *v8;
                        v14 = "indBoRecoveries";
                        goto LABEL_77;
                      case 340:
                        v13 = *v8;
                        v14 = "numCrossTempUecc";
                        goto LABEL_77;
                      case 341:
                        v13 = *v8;
                        v14 = "latencyMonitorError";
                        goto LABEL_77;
                      case 343:
                        v13 = *v8;
                        v14 = "utilUeccReads";
                        goto LABEL_77;
                      case 344:
                        v13 = *v8;
                        v14 = "numOfAvoidedGCDueToTemp";
                        goto LABEL_77;
                      case 345:
                        v13 = *v8;
                        v14 = "forceShutdowns";
                        goto LABEL_77;
                      case 346:
                        v13 = *v8;
                        v14 = "gcSlcDestinations";
                        goto LABEL_77;
                      case 347:
                        v13 = *v8;
                        v14 = "indReplayExtUsed";
                        goto LABEL_77;
                      case 348:
                        v13 = *v8;
                        v14 = "defectsPerPackageOverflow";
                        goto LABEL_77;
                      case 349:
                        v13 = *v8;
                        v14 = "RxBurnIntBandsProgrammed";
                        goto LABEL_77;
                      case 350:
                        v13 = *v8;
                        v14 = "RxBurnUsrBandsProgrammed";
                        goto LABEL_77;
                      case 351:
                        v13 = *v8;
                        v14 = "RxBurnIntNandWrites";
                        goto LABEL_77;
                      case 352:
                        v13 = *v8;
                        v14 = "RxBurnUsrNandWrites";
                        goto LABEL_77;
                      case 353:
                        v13 = *v8;
                        v14 = "clogLastStripeUeccs";
                        goto LABEL_77;
                      case 354:
                        v13 = *v8;
                        v14 = "GC_MidDestSrcSwitchSLC2TLC";
                        goto LABEL_77;
                      case 355:
                        v13 = *v8;
                        v14 = "GC_MidDestSrcSwitchTLC2SLC";
                        goto LABEL_77;
                      case 356:
                        v13 = *v8;
                        v14 = "nvme_stats_shutdown_count_host0_normal";
                        goto LABEL_77;
                      case 357:
                        v13 = *v8;
                        v14 = "nvme_stats_shutdown_count_host1_normal";
                        goto LABEL_77;
                      case 358:
                        v13 = *v8;
                        v14 = "nvme_stats_shutdown_count_host0_s2r";
                        goto LABEL_77;
                      case 359:
                        v13 = *v8;
                        v14 = "nvme_stats_shutdown_count_host1_s2r";
                        goto LABEL_77;
                      case 360:
                        v15 = "gcPDusterIntrSrcValidityHisto";
                        v16 = a1;
                        v17 = 360;
                        goto LABEL_246;
                      case 361:
                        v15 = "gcPDusterUserSrcValidityHisto";
                        v16 = a1;
                        v17 = 361;
                        goto LABEL_246;
                      case 362:
                        v13 = *v8;
                        v14 = "raidFailedReadParity";
                        goto LABEL_77;
                      case 364:
                        v13 = *v8;
                        v14 = "lhotNumSkipes";
                        goto LABEL_77;
                      default:
                        switch(v7)
                        {
                          case 365:
                            v13 = *v8;
                            v14 = "lhotNumIsHotCalls";
                            goto LABEL_77;
                          case 366:
                            v13 = *v8;
                            v14 = "lhotFullLap";
                            goto LABEL_77;
                          case 367:
                            v13 = *v8;
                            v14 = "lhotSkipPrecent";
                            goto LABEL_77;
                          case 368:
                            v13 = *v8;
                            v14 = "eraseSuspendEvents";
                            goto LABEL_77;
                          case 369:
                            v13 = *v8;
                            v14 = "eraseSuspendedStatuses";
                            goto LABEL_77;
                          case 370:
                            v13 = *v8;
                            v14 = "eraseSuspendedBands";
                            goto LABEL_77;
                          case 371:
                            v13 = *v8;
                            v14 = "eraseSuspendSituationsBelowThreshold";
                            goto LABEL_77;
                          case 372:
                            v13 = *v8;
                            v14 = "eraseSuspendSituationsAboveThreshold";
                            goto LABEL_77;
                          case 373:
                            v13 = *v8;
                            v14 = "eraseSuspendReadChainsProcessed";
                            goto LABEL_77;
                          case 374:
                            v13 = *v8;
                            v14 = "bdrLastDoneHr";
                            goto LABEL_77;
                          case 375:
                            v13 = *v8;
                            v14 = "bdrBackupThreshHrs";
                            goto LABEL_77;
                          case 376:
                            v13 = *v8;
                            v14 = "clogPortableProgBufs";
                            goto LABEL_77;
                          case 377:
                            v13 = *v8;
                            v14 = "clogPortableDropBufs";
                            goto LABEL_77;
                          case 378:
                            v13 = *v8;
                            v14 = "clogPortablePadSectors";
                            goto LABEL_77;
                          case 379:
                            v13 = *v8;
                            v14 = "numRetiredBlocks";
                            goto LABEL_77;
                          case 381:
                            v13 = *v8;
                            v14 = "numRefreshOnErrNandRefreshPerf";
                            goto LABEL_77;
                          case 382:
                            v13 = *v8;
                            v14 = "raidReconstructReads";
                            goto LABEL_77;
                          case 383:
                            v13 = *v8;
                            v14 = "gcReadsNoBlog";
                            goto LABEL_77;
                          case 384:
                            v13 = *v8;
                            v14 = "AbortSkip_MPBXReadVerifyClosedBand";
                            goto LABEL_77;
                          case 385:
                            v13 = *v8;
                            v14 = "openBandReadFail";
                            goto LABEL_77;
                          case 386:
                            v13 = *v8;
                            v14 = "AbortSkip_MPBXReadVerifyOpenBand";
                            goto LABEL_77;
                          case 387:
                            v13 = *v8;
                            v14 = "AbortSkip_MBPXFailedRebuildingParity";
                            goto LABEL_77;
                          case 388:
                            v13 = *v8;
                            v14 = "raidSuccessfulPMXReconstructionInternal";
                            goto LABEL_77;
                          case 389:
                            v13 = *v8;
                            v14 = "raidSuccessfulPMXReconstructionHost";
                            goto LABEL_77;
                          case 390:
                            v13 = *v8;
                            v14 = "raidFailedPMXReconstructionInternal";
                            goto LABEL_77;
                          case 391:
                            v13 = *v8;
                            v14 = "raidFailedPMXReconstructionHost";
                            goto LABEL_77;
                          case 392:
                            v13 = *v8;
                            v14 = "raidSuccessfulRMXReconstructionInternal";
                            goto LABEL_77;
                          case 393:
                            v13 = *v8;
                            v14 = "raidSuccessfulRMXReconstructionHost";
                            goto LABEL_77;
                          case 394:
                            v13 = *v8;
                            v14 = "raidFailedRMXReconstructionInternal";
                            goto LABEL_77;
                          case 395:
                            v13 = *v8;
                            v14 = "raidFailedRMXReconstructionHost";
                            goto LABEL_77;
                          case 396:
                            v13 = *v8;
                            v14 = "raidFailedReadParityInternal";
                            goto LABEL_77;
                          case 397:
                            v13 = *v8;
                            v14 = "raidFailedReadQParityInternal";
                            goto LABEL_77;
                          case 398:
                            v13 = *v8;
                            v14 = "raidFailedReadQParity";
                            goto LABEL_77;
                          case 399:
                            v13 = *v8;
                            v14 = "raidFailedReadQCopy";
                            goto LABEL_77;
                          case 400:
                            v13 = *v8;
                            v14 = "raidFailedReconstructionQParity";
                            goto LABEL_77;
                          case 401:
                            v13 = *v8;
                            v14 = "offlineBlocksCnt";
                            goto LABEL_77;
                          case 402:
                            v13 = *v8;
                            v14 = "bork0Revectors";
                            goto LABEL_77;
                          case 403:
                            v13 = *v8;
                            v14 = "raidFailedReadBlog";
                            goto LABEL_77;
                          case 404:
                            v13 = *v8;
                            v14 = "numReliabilityRefreshes";
                            goto LABEL_77;
                          case 405:
                            v13 = *v8;
                            v14 = "raidFailedReadQCopyInternal";
                            goto LABEL_77;
                          case 406:
                            v15 = "raidReconstructSuccessFlow";
                            v16 = a1;
                            v17 = 406;
                            goto LABEL_102;
                          case 407:
                            v15 = "raidReconstructFailFlow";
                            v16 = a1;
                            v17 = 407;
                            goto LABEL_102;
                          case 408:
                            v13 = *v8;
                            v14 = "raidReconstructFailP";
                            goto LABEL_77;
                          case 409:
                            v13 = *v8;
                            v14 = "raidReconstructFailQ";
                            goto LABEL_77;
                          case 410:
                            v13 = *v8;
                            v14 = "raidReconstructFailUECC";
                            goto LABEL_77;
                          case 411:
                            v13 = *v8;
                            v14 = "raidReconstructFailUnsupp";
                            goto LABEL_77;
                          case 412:
                            v13 = *v8;
                            v14 = "raidUECCOpenBand";
                            goto LABEL_77;
                          case 414:
                            v13 = *v8;
                            v14 = "ueccReads";
                            goto LABEL_77;
                          case 416:
                            v13 = *v8;
                            v14 = "raidSuccessfulVerify";
                            goto LABEL_77;
                          case 417:
                            v13 = *v8;
                            v14 = "raidFailedVerify";
                            goto LABEL_77;
                          case 418:
                            v13 = *v8;
                            v14 = "numBandsVerified";
                            goto LABEL_77;
                          case 419:
                            v13 = *v8;
                            v14 = "cache_heads";
                            goto LABEL_77;
                          case 420:
                            v13 = *v8;
                            v14 = "AbortSkip_RMXtoMPBX";
                            goto LABEL_77;
                          case 421:
                            v13 = *v8;
                            v14 = "s3eFwVer";
                            goto LABEL_77;
                          case 422:
                            v13 = *v8;
                            v14 = "readVerifyNative";
                            goto LABEL_77;
                          case 423:
                            v13 = *v8;
                            v14 = "reducedReadVerifyNative";
                            goto LABEL_77;
                          case 424:
                            v13 = *v8;
                            v14 = "readVerifySlc";
                            goto LABEL_77;
                          case 425:
                            v13 = *v8;
                            v14 = "reducedReadVerifySlc";
                            goto LABEL_77;
                          case 426:
                            v13 = *v8;
                            v14 = "RxBurnEvictions";
                            goto LABEL_77;
                          case 427:
                            v13 = *v8;
                            v14 = "directToTLCBands";
                            goto LABEL_77;
                          case 428:
                            v13 = *v8;
                            v14 = "nandDesc";
                            goto LABEL_77;
                          case 429:
                            v13 = *v8;
                            v14 = "fwUpdatesPercentUsed";
                            goto LABEL_77;
                          case 430:
                            v13 = *v8;
                            v14 = "slcPercentUsed";
                            goto LABEL_77;
                          case 431:
                            v13 = *v8;
                            v14 = "percentUsed";
                            goto LABEL_77;
                          default:
                            switch(v7)
                            {
                              case 432:
                                v13 = *v8;
                                v14 = "hostAutoWrites";
                                goto LABEL_77;
                              case 433:
                                v13 = *v8;
                                v14 = "hostAutoWriteXacts";
                                goto LABEL_77;
                              case 434:
                                v13 = *v8;
                                v14 = "gcDestDynamic";
                                goto LABEL_77;
                              case 435:
                                v13 = *v8;
                                v14 = "gcDestStatic";
                                goto LABEL_77;
                              case 436:
                                v13 = *v8;
                                v14 = "gcDestWearlevel";
                                goto LABEL_77;
                              case 437:
                                v13 = *v8;
                                v14 = "gcDestParity";
                                goto LABEL_77;
                              case 438:
                                v13 = *v8;
                                v14 = "AbortSkip_Format";
                                goto LABEL_77;
                              case 440:
                                v13 = *v8;
                                v14 = "raidSLCPadding";
                                goto LABEL_77;
                              case 441:
                                v13 = *v8;
                                v14 = "raidGCBands";
                                goto LABEL_77;
                              case 442:
                                v13 = *v8;
                                v14 = "raidGCSectors";
                                goto LABEL_77;
                              case 443:
                                v13 = *v8;
                                v14 = "raidGCPadding";
                                goto LABEL_77;
                              case 444:
                                v13 = *v8;
                                v14 = "raidSLCBandsPerHostFlow";
                                goto LABEL_77;
                              case 445:
                                v13 = *v8;
                                v14 = "raidSLCSecsPerHostFlow";
                                goto LABEL_77;
                              case 446:
                                v13 = *v8;
                                v14 = "rxBurnMinCycleRuns";
                                goto LABEL_77;
                              case 447:
                                v13 = *v8;
                                v14 = "clogNumFastCxt";
                                goto LABEL_77;
                              case 448:
                                v13 = *v8;
                                v14 = "clogNumRapidReboots";
                                goto LABEL_77;
                              case 449:
                                v13 = *v8;
                                v14 = "clogFastCxtAbvThr";
                                goto LABEL_77;
                              case 450:
                                v13 = *v8;
                                v14 = "rxBurnDiffModeRuns";
                                goto LABEL_77;
                              case 452:
                                v13 = *v8;
                                v14 = "indReadVerifyFail";
                                goto LABEL_77;
                              case 453:
                                v15 = "numOfThrottlingEntriesPerReadLevel";
                                v16 = a1;
                                v17 = 453;
                                goto LABEL_213;
                              case 454:
                                v15 = "numOfThrottlingEntriesPerWriteLevel";
                                v16 = a1;
                                v17 = 454;
                                goto LABEL_213;
                              case 456:
                                v15 = "slcFifoDepth";
                                v16 = a1;
                                v17 = 456;
                                goto LABEL_44;
                              case 457:
                                v13 = *v8;
                                v14 = "wcacheSectorsDirtyIdle";
                                goto LABEL_77;
                              case 458:
                                v13 = *v8;
                                v14 = "wcacheDS_SectorsDirtyIdle";
                                goto LABEL_77;
                              case 459:
                                v13 = *v8;
                                v14 = "wcacheFS_MbytesDirtyIdle";
                                goto LABEL_77;
                              case 460:
                                v15 = "CacheDepthVsThroughput";
                                v16 = a1;
                                v17 = 460;
                                v18 = v8;
                                v19 = 256;
                                goto LABEL_51;
                              case 461:
                                v13 = *v8;
                                v14 = "directToTLCSectors";
                                goto LABEL_77;
                              case 462:
                                v13 = *v8;
                                v14 = "fallbackToWaterfall";
                                goto LABEL_77;
                              case 463:
                                v15 = "balanceProportionBucketsHistogram";
                                v16 = a1;
                                v17 = 463;
LABEL_449:
                                v18 = v8;
                                v19 = 11;
                                goto LABEL_51;
                              case 464:
                                v13 = *v8;
                                v14 = "lockToTlc";
                                goto LABEL_77;
                              case 465:
                                v15 = "burstSizeHistogram";
                                v16 = a1;
                                v17 = 465;
                                goto LABEL_44;
                              case 466:
                                v15 = "qosDirectToTLC";
                                v16 = a1;
                                v17 = 466;
                                goto LABEL_471;
                              case 467:
                                v15 = "maxQosDirectToTLC";
                                v16 = a1;
                                v17 = 467;
                                goto LABEL_144;
                              case 468:
                                v15 = "wcacheDirtyAtFlush";
                                v16 = a1;
                                v17 = 468;
                                goto LABEL_246;
                              case 469:
                                v15 = "raidReconstructSuccessPartition";
                                v16 = a1;
                                v17 = 469;
                                goto LABEL_123;
                              case 470:
                                v15 = "raidReconstructFailPartition";
                                v16 = a1;
                                v17 = 470;
                                goto LABEL_123;
                              case 471:
                                v13 = *v8;
                                v14 = "raidUncleanBootBandFail";
                                goto LABEL_77;
                              case 472:
                                v13 = *v8;
                                v14 = "raidReconstructFailBandFlowHost";
                                goto LABEL_77;
                              case 473:
                                v13 = *v8;
                                v14 = "raidReconstructFailBandFlowGC";
                                goto LABEL_77;
                              case 476:
                                v15 = "raidSuccessfulRecoLbaRange";
                                v16 = a1;
                                v17 = 476;
                                goto LABEL_123;
                              case 477:
                                v15 = "raidFailedRecoLbaRange";
                                v16 = a1;
                                v17 = 477;
                                goto LABEL_123;
                              case 481:
                                v15 = "skinnyBandErases_481";
                                v16 = a1;
                                v17 = 481;
                                goto LABEL_284;
                              case 483:
                                v13 = *v8;
                                v14 = "tlcOverHeatWaterfall";
                                goto LABEL_77;
                              case 484:
                                v13 = *v8;
                                v14 = "skinnyCyclesConvert";
                                goto LABEL_77;
                              case 485:
                                v13 = *v8;
                                v14 = "non_proportional_directToTLCSectors";
                                goto LABEL_77;
                              case 486:
                                v13 = *v8;
                                v14 = "maxFailedFastCxtSync";
                                goto LABEL_77;
                              case 487:
                                v13 = *v8;
                                v14 = "numFormatUserArea";
                                goto LABEL_77;
                              case 488:
                                v13 = *v8;
                                v14 = "clogFastCxtSyncAborted";
                                goto LABEL_77;
                              case 489:
                                v15 = "clogOccupationSectors";
                                v16 = a1;
                                v17 = 489;
                                goto LABEL_102;
                              case 490:
                                v15 = "bdrTmpHist";
                                v16 = a1;
                                v17 = 490;
LABEL_471:
                                v18 = v8;
                                v19 = 64;
                                goto LABEL_51;
                              case 491:
                                v13 = *v8;
                                v14 = "numFWUpdates";
                                goto LABEL_77;
                              case 492:
                                v13 = *v8;
                                v14 = "numClogLoadFails";
                                goto LABEL_77;
                              case 493:
                                v13 = *v8;
                                v14 = "rxBurnNumForcedDiffMode";
                                goto LABEL_77;
                              case 494:
                                v13 = *v8;
                                v14 = "RD_numSaves";
                                goto LABEL_77;
                              case 495:
                                v13 = *v8;
                                v14 = "eanCompressWrites";
                                goto LABEL_77;
                              case 496:
                                v13 = *v8;
                                v14 = "eanHostWrites";
                                goto LABEL_77;
                              case 497:
                                v13 = *v8;
                                v14 = "bandPreErases";
                                goto LABEL_77;
                              case 498:
                                v13 = *v8;
                                v14 = "eanHostUnmaps";
                                goto LABEL_77;
                              case 499:
                                v13 = *v8;
                                v14 = "eanHostFlushes";
                                goto LABEL_77;
                              case 500:
                                v13 = *v8;
                                v14 = "eanFastWrites";
                                goto LABEL_77;
                              case 501:
                                v13 = *v8;
                                v14 = "autowriteDS2FSCollisions";
                                goto LABEL_77;
                              case 502:
                                v13 = *v8;
                                v14 = "autowriteWaitTransferTaskBlocks";
                                goto LABEL_77;
                              case 503:
                                v15 = "avgCycle";
                                v16 = a1;
                                v17 = 503;
                                goto LABEL_123;
                              case 504:
                                v13 = *v8;
                                v14 = "RD_DeferredClearsOverflowCnt";
                                goto LABEL_77;
                              default:
                                switch(v7)
                                {
                                  case 505:
                                    v13 = *v8;
                                    v14 = "maxVerticsInBand";
                                    goto LABEL_77;
                                  case 506:
                                    v13 = *v8;
                                    v14 = "numVertics";
                                    goto LABEL_77;
                                  case 507:
                                    v13 = *v8;
                                    v14 = "exceededCVertics";
                                    goto LABEL_77;
                                  case 510:
                                    v13 = *v8;
                                    v14 = "raidReconstructFailMismatch";
                                    goto LABEL_77;
                                  case 511:
                                    v15 = "mspbootBlockRefreshCnt";
                                    v16 = a1;
                                    v17 = 511;
                                    goto LABEL_284;
                                  case 516:
                                    v15 = "mspBootBlockRefreshTime";
                                    v16 = a1;
                                    v17 = 516;
                                    goto LABEL_284;
                                  case 517:
                                    v13 = *v8;
                                    v14 = "mspBootBlockCountPerMsp";
                                    goto LABEL_77;
                                  case 518:
                                    v13 = *v8;
                                    v14 = "skinnyRevectorSLC";
                                    goto LABEL_77;
                                  case 519:
                                    v13 = *v8;
                                    v14 = "skinnyRevectorTLC";
                                    goto LABEL_77;
                                  case 520:
                                    v13 = *v8;
                                    v14 = "perfSetupAttempts";
                                    goto LABEL_77;
                                  case 521:
                                    v13 = *v8;
                                    v14 = "perfSetupSuccesses";
                                    goto LABEL_77;
                                  case 522:
                                    v13 = *v8;
                                    v14 = "perfWriteAttempts";
                                    goto LABEL_77;
                                  case 523:
                                    v13 = *v8;
                                    v14 = "perfWriteSuccesses";
                                    goto LABEL_77;
                                  case 524:
                                    v13 = *v8;
                                    v14 = "perfReadAttempts";
                                    goto LABEL_77;
                                  case 525:
                                    v13 = *v8;
                                    v14 = "perfReadSuccesses";
                                    goto LABEL_77;
                                  case 526:
                                    v13 = *v8;
                                    v14 = "perfCleanupAttempts";
                                    goto LABEL_77;
                                  case 527:
                                    v13 = *v8;
                                    v14 = "perfCleanupSuccesses";
                                    goto LABEL_77;
                                  case 530:
                                    v13 = *v8;
                                    v14 = "firstFailedDieId";
                                    goto LABEL_77;
                                  case 531:
                                    v13 = *v8;
                                    v14 = "numDieFailures";
                                    goto LABEL_77;
                                  case 532:
                                    v13 = *v8;
                                    v14 = "spareAvailablePercent";
                                    goto LABEL_77;
                                  case 533:
                                    v13 = *v8;
                                    v14 = "dataFabricErr";
                                    goto LABEL_77;
                                  case 534:
                                    v13 = *v8;
                                    v14 = "downlinkFabricErr";
                                    goto LABEL_77;
                                  case 535:
                                    v13 = *v8;
                                    v14 = "prpAccTimeoutErr";
                                    goto LABEL_77;
                                  case 537:
                                    v13 = *v8;
                                    v14 = "uplinkFabricErr";
                                    goto LABEL_77;
                                  case 538:
                                    v13 = *v8;
                                    v14 = "skinnyBandsGBB";
                                    goto LABEL_77;
                                  case 539:
                                    v13 = *v8;
                                    v14 = "AbortPad_GcMustPadBand";
                                    goto LABEL_77;
                                  case 540:
                                    v13 = *v8;
                                    v14 = "AbortPad_GcMustPadSkinny";
                                    goto LABEL_77;
                                  case 541:
                                    v13 = *v8;
                                    v14 = "bdrHostPingInitial";
                                    goto LABEL_77;
                                  case 542:
                                    v13 = *v8;
                                    v14 = "bdrHostPingMoreNeeded";
                                    goto LABEL_77;
                                  case 543:
                                    v13 = *v8;
                                    v14 = "bandParityAllocationFailed";
                                    goto LABEL_77;
                                  case 544:
                                    v13 = *v8;
                                    v14 = "fastHwBurstToSlc";
                                    goto LABEL_77;
                                  case 545:
                                    v13 = *v8;
                                    v14 = "slowHwToTlc";
                                    goto LABEL_77;
                                  case 546:
                                    v15 = "slcDemandBurstSizeDetected";
                                    v16 = a1;
                                    v17 = 546;
                                    goto LABEL_44;
                                  case 547:
                                    v15 = "slcDemandBurstDur";
                                    v16 = a1;
                                    v17 = 547;
                                    goto LABEL_44;
                                  case 548:
                                    v13 = *v8;
                                    v14 = "fastHwToTlcBurst";
                                    goto LABEL_77;
                                  case 549:
                                    v15 = "slcDemandBurstSizeSlc";
                                    v16 = a1;
                                    v17 = 549;
                                    goto LABEL_44;
                                  case 551:
                                    v15 = "balanceProportionBucketsHistogramTlc";
                                    v16 = a1;
                                    v17 = 551;
                                    goto LABEL_449;
                                  case 553:
                                    v13 = *v8;
                                    v14 = "slowHwFlushToSlc";
                                    goto LABEL_77;
                                  case 557:
                                    v13 = *v8;
                                    v14 = "slowHwToSlc";
                                    goto LABEL_77;
                                  case 558:
                                    v13 = *v8;
                                    v14 = "flushNwToSlc";
                                    goto LABEL_77;
                                  case 559:
                                    v13 = *v8;
                                    v14 = "flushNwToTlc";
                                    goto LABEL_77;
                                  case 560:
                                    v13 = *v8;
                                    v14 = "oslcHw";
                                    goto LABEL_77;
                                  case 561:
                                    v13 = *v8;
                                    v14 = "oslcTransitions";
                                    goto LABEL_77;
                                  case 563:
                                    v13 = *v8;
                                    v14 = "slcDemandFlushCount";
                                    goto LABEL_77;
                                  case 564:
                                    v13 = *v8;
                                    v14 = "slcDemandBurstCount";
                                    goto LABEL_77;
                                  case 565:
                                    v13 = *v8;
                                    v14 = "oslcBaseAvgPE";
                                    goto LABEL_77;
                                  case 566:
                                    v13 = *v8;
                                    v14 = "raidReconstructFailNoSPBX";
                                    goto LABEL_77;
                                  case 567:
                                    v13 = *v8;
                                    v14 = "raidReconstructFailDouble";
                                    goto LABEL_77;
                                  case 568:
                                    v13 = *v8;
                                    v14 = "oslcFastWAmpUOnOff";
                                    goto LABEL_77;
                                  case 569:
                                    v13 = *v8;
                                    v14 = "oslcSlowWAmpUOnOff";
                                    goto LABEL_77;
                                  case 570:
                                    v13 = *v8;
                                    v14 = "raidReconstructFailInvalid";
                                    goto LABEL_77;
                                  case 572:
                                    v13 = *v8;
                                    v14 = "oslcLastWAmpUx10";
                                    goto LABEL_77;
                                  case 573:
                                    v13 = *v8;
                                    v14 = "raidFailedReadNoBlog";
                                    goto LABEL_77;
                                  case 574:
                                    v13 = *v8;
                                    v14 = "raidReconstructFailBlank";
                                    goto LABEL_77;
                                  case 575:
                                    v13 = *v8;
                                    v14 = "oslcHotTLCOnOff";
                                    goto LABEL_77;
                                  case 576:
                                    v13 = *v8;
                                    v14 = "gcVPackDestinations";
                                    goto LABEL_77;
                                  case 581:
                                    v13 = *v8;
                                    v14 = "averageTLCPECycles";
                                    goto LABEL_77;
                                  case 582:
                                    v13 = *v8;
                                    v14 = "averageSLCPECycles";
                                    goto LABEL_77;
                                  case 583:
                                    v13 = *v8;
                                    v14 = "numAtomicBoots";
                                    goto LABEL_77;
                                  case 584:
                                    v13 = *v8;
                                    v14 = "clogMinorMismatch";
                                    goto LABEL_77;
                                  case 586:
                                    v13 = *v8;
                                    v14 = "raidExpectedFailRMXReconstructionInternal";
                                    goto LABEL_77;
                                  case 587:
                                    v13 = *v8;
                                    v14 = "raidExpectedFailRMXReconstructionHost";
                                    goto LABEL_77;
                                  case 588:
                                    v13 = *v8;
                                    v14 = "oslcGCinvalidations";
                                    goto LABEL_77;
                                  case 589:
                                    v13 = *v8;
                                    v14 = "oslcGCActivateReason";
                                    goto LABEL_77;
                                  default:
                                    switch(v7)
                                    {
                                      case 590:
                                        v13 = *v8;
                                        v14 = "oslcLowCleanBandsUOnOff";
                                        goto LABEL_77;
                                      case 591:
                                        v13 = *v8;
                                        v14 = "oslcTooManyGCMustOnOff";
                                        goto LABEL_77;
                                      case 592:
                                        v13 = *v8;
                                        v14 = "oslcBaseHostWrites";
                                        goto LABEL_77;
                                      case 593:
                                        v13 = *v8;
                                        v14 = "oslcBaseBandErases";
                                        goto LABEL_77;
                                      case 594:
                                        v13 = *v8;
                                        v14 = "oslcBdrBands";
                                        goto LABEL_77;
                                      case 595:
                                        v13 = *v8;
                                        v14 = "oslcBdrValid";
                                        goto LABEL_77;
                                      case 596:
                                        v13 = *v8;
                                        v14 = "unexpectedBlanksInternal";
                                        goto LABEL_77;
                                      case 597:
                                        v13 = *v8;
                                        v14 = "unexpectedBlanksOnRV";
                                        goto LABEL_77;
                                      case 601:
                                        v13 = *v8;
                                        v14 = "waterfallLockSectors";
                                        goto LABEL_77;
                                      case 602:
                                        v13 = *v8;
                                        v14 = "oslcGCActiveWrites";
                                        goto LABEL_77;
                                      case 603:
                                        v13 = *v8;
                                        v14 = "chipIdTemperatureSample";
                                        goto LABEL_77;
                                      case 604:
                                        v13 = *v8;
                                        v14 = "gcVPackWrites";
                                        goto LABEL_77;
                                      case 605:
                                        v15 = "gcActiveReasons";
                                        v16 = a1;
                                        v17 = 605;
                                        goto LABEL_44;
                                      case 606:
                                        v13 = *v8;
                                        v14 = "eanMaxInitTimeMs";
                                        goto LABEL_77;
                                      case 607:
                                        v13 = *v8;
                                        v14 = "eanMinToFirstReadTimeMs";
                                        goto LABEL_77;
                                      case 608:
                                        v13 = *v8;
                                        v14 = "skinnyAPGMRetire";
                                        goto LABEL_77;
                                      case 609:
                                        v13 = *v8;
                                        v14 = "unexpectedBlanksHost";
                                        goto LABEL_77;
                                      case 610:
                                        v15 = "pcieAerCounters";
                                        v16 = a1;
                                        v17 = 610;
                                        goto LABEL_471;
                                      case 611:
                                        v13 = *v8;
                                        v14 = "fastHwToTlcBalance";
                                        goto LABEL_77;
                                      case 612:
                                        v13 = *v8;
                                        v14 = "perfOSLCRuns";
                                        goto LABEL_77;
                                      case 613:
                                        v13 = *v8;
                                        v14 = "slcDemandBurstWritesInGC";
                                        goto LABEL_77;
                                      case 614:
                                        v13 = *v8;
                                        v14 = "slcDemandBurstWritesInTT";
                                        goto LABEL_77;
                                      case 615:
                                        v13 = *v8;
                                        v14 = "slcDemandBurstWritesInNRP";
                                        goto LABEL_77;
                                      case 616:
                                        v13 = *v8;
                                        v14 = "perfTotalDmaMb";
                                        goto LABEL_77;
                                      case 617:
                                        v13 = *v8;
                                        v14 = "eanAvgInitTimeMs";
                                        goto LABEL_77;
                                      case 618:
                                        v13 = *v8;
                                        v14 = "eanAvgToFirstReadTimeMs";
                                        goto LABEL_77;
                                      case 619:
                                        v13 = *v8;
                                        v14 = "eanMaxBootReadTimeMs";
                                        goto LABEL_77;
                                      case 620:
                                        v13 = *v8;
                                        v14 = "eanAvgBootReadTimeMs";
                                        goto LABEL_77;
                                      case 621:
                                        v15 = "eanBootReadsHist";
                                        v16 = a1;
                                        v17 = 621;
                                        goto LABEL_44;
                                      case 622:
                                        v13 = *v8;
                                        v14 = "maxBgInitTimeMs";
                                        goto LABEL_77;
                                      case 623:
                                        v13 = *v8;
                                        v14 = "avgBgInitTimeMs";
                                        goto LABEL_77;
                                      case 624:
                                        v15 = "clogFailReason";
                                        v16 = a1;
                                        v17 = 624;
                                        goto LABEL_246;
                                      case 625:
                                        v13 = *v8;
                                        v14 = "eanMinBootReadMBPerSec";
                                        goto LABEL_77;
                                      case 626:
                                        v13 = *v8;
                                        v14 = "eanAvgBootReadMBPerSec";
                                        goto LABEL_77;
                                      case 627:
                                        v13 = *v8;
                                        v14 = "minSkinnyPECycles";
                                        goto LABEL_77;
                                      case 628:
                                        v13 = *v8;
                                        v14 = "maxSkinnyPECycles";
                                        goto LABEL_77;
                                      case 629:
                                        v13 = *v8;
                                        v14 = "averageSkinnyPECycles";
                                        goto LABEL_77;
                                      case 630:
                                        v15 = "raidSuccessfulRecoEAN";
                                        v16 = a1;
                                        v17 = 630;
                                        goto LABEL_994;
                                      case 631:
                                        v15 = "raidFailedRecoEAN";
                                        v16 = a1;
                                        v17 = 631;
                                        goto LABEL_994;
                                      case 632:
                                        v15 = "eanFirstReadMode";
                                        v16 = a1;
                                        v17 = 632;
LABEL_994:
                                        v18 = v8;
                                        v19 = 6;
                                        goto LABEL_51;
                                      case 635:
                                        v13 = *v8;
                                        v14 = "oslcHwGC";
                                        goto LABEL_77;
                                      case 636:
                                        v13 = *v8;
                                        v14 = "oslcHwTT";
                                        goto LABEL_77;
                                      case 637:
                                        v13 = *v8;
                                        v14 = "oslcHwNRP";
                                        goto LABEL_77;
                                      case 638:
                                        v15 = "oslcDemandBurstSize";
                                        v16 = a1;
                                        v17 = 638;
                                        goto LABEL_44;
                                      case 639:
                                        v13 = *v8;
                                        v14 = "raidReconstructSuccessBandFlowOslc";
                                        goto LABEL_77;
                                      case 640:
                                        v13 = *v8;
                                        v14 = "raidReconstructFailBandFlowOslc";
                                        goto LABEL_77;
                                      case 641:
                                        v13 = *v8;
                                        v14 = "raidFailSectors";
                                        goto LABEL_77;
                                      case 642:
                                        v13 = *v8;
                                        v14 = "eanFailSectors";
                                        goto LABEL_77;
                                      case 643:
                                        v13 = *v8;
                                        v14 = "bdrTimeMode";
                                        goto LABEL_77;
                                      case 644:
                                        v13 = *v8;
                                        v14 = "raidParityNotSavedP";
                                        goto LABEL_77;
                                      case 645:
                                        v13 = *v8;
                                        v14 = "raidParityNotSavedQ";
                                        goto LABEL_77;
                                      case 646:
                                        v13 = *v8;
                                        v14 = "raidParityInvalid";
                                        goto LABEL_77;
                                      case 647:
                                        v13 = *v8;
                                        v14 = "raidParityUnknown";
                                        goto LABEL_77;
                                      case 648:
                                        v13 = *v8;
                                        v14 = "raidParityUnmapped";
                                        goto LABEL_77;
                                      case 649:
                                        v13 = *v8;
                                        v14 = "raidParityGCUnc";
                                        goto LABEL_77;
                                      case 657:
                                        v13 = *v8;
                                        v14 = "AbortSkip_MPBXProbational";
                                        goto LABEL_77;
                                      case 659:
                                        v13 = *v8;
                                        v14 = "raidVerificationReads";
                                        goto LABEL_77;
                                      case 666:
                                        v13 = *v8;
                                        v14 = "nofDies";
                                        goto LABEL_77;
                                      case 671:
                                        v13 = *v8;
                                        v14 = "skinnyBandsNum";
                                        goto LABEL_77;
                                      case 672:
                                        v13 = *v8;
                                        v14 = "skinnyBandsNumDips";
                                        goto LABEL_77;
                                      case 674:
                                        v15 = "oslcNoVotesHw";
                                        v16 = a1;
                                        v17 = 674;
                                        goto LABEL_149;
                                      case 675:
                                        v13 = *v8;
                                        v14 = "totalLbas";
                                        goto LABEL_77;
                                      case 676:
                                        v13 = *v8;
                                        v14 = "bdrHostPingExtra";
                                        goto LABEL_77;
                                      case 677:
                                        v13 = *v8;
                                        v14 = "magazineInstanceMeta";
                                        goto LABEL_77;
                                      default:
                                        switch(v7)
                                        {
                                          case 680:
                                            v15 = "magazineFWVersion";
                                            v16 = a1;
                                            v17 = 680;
                                            goto LABEL_130;
                                          case 681:
                                            v13 = *v8;
                                            v14 = "raidReconstructFailPMXUnsup";
                                            goto LABEL_77;
                                          case 682:
                                            v13 = *v8;
                                            v14 = "raidReconstructFailBMXUnsup";
                                            goto LABEL_77;
                                          case 683:
                                            v13 = *v8;
                                            v14 = "iBootNANDResets";
                                            goto LABEL_77;
                                          case 684:
                                            v13 = *v8;
                                            v14 = "pcieClkreqHighTimeout";
                                            goto LABEL_77;
                                          case 687:
                                            v15 = "cbdrInitSent";
                                            v16 = a1;
                                            v17 = 687;
                                            goto LABEL_130;
                                          case 688:
                                            v13 = *v8;
                                            v14 = "cbdrPauseSent";
                                            goto LABEL_77;
                                          case 689:
                                            v13 = *v8;
                                            v14 = "cbdrResumeSent";
                                            goto LABEL_77;
                                          case 690:
                                            v13 = *v8;
                                            v14 = "cbdrGetResultSent";
                                            goto LABEL_77;
                                          case 691:
                                            v13 = *v8;
                                            v14 = "cbdrEarlyExits";
                                            goto LABEL_77;
                                          case 694:
                                            v15 = "cbdrRefreshGrades";
                                            v16 = a1;
                                            v17 = 694;
                                            goto LABEL_44;
                                          case 695:
                                            v13 = *v8;
                                            v14 = "cbdrNotEnoughReads";
                                            goto LABEL_77;
                                          case 696:
                                            v13 = *v8;
                                            v14 = "cbdrAborts";
                                            goto LABEL_77;
                                          case 697:
                                            v13 = *v8;
                                            v14 = "TurboRaidHostClassifications";
                                            goto LABEL_77;
                                          case 698:
                                            v13 = *v8;
                                            v14 = "TurboRaidInternalClassifications";
                                            goto LABEL_77;
                                          case 699:
                                            v13 = *v8;
                                            v14 = "cbdrFullyDone";
                                            goto LABEL_77;
                                          case 702:
                                            v15 = "vcurve";
                                            v16 = a1;
                                            v17 = 702;
                                            goto LABEL_284;
                                          case 703:
                                            v15 = "injDepth";
                                            v16 = a1;
                                            v17 = 703;
                                            goto LABEL_282;
                                          case 704:
                                            v13 = *v8;
                                            v14 = "logical_disk_occupied_promiles";
                                            goto LABEL_77;
                                          case 711:
                                            v13 = *v8;
                                            v14 = "raidPrevFailedReconstructSkip";
                                            goto LABEL_77;
                                          case 712:
                                            v13 = *v8;
                                            v14 = "TurboRaidSuccessfulHostAuxReads";
                                            goto LABEL_77;
                                          case 713:
                                            v13 = *v8;
                                            v14 = "TurboRaidSuccessfulInternalAuxReads";
                                            goto LABEL_77;
                                          case 714:
                                            v13 = *v8;
                                            v14 = "turboRaidClassificationReliabilityHost";
                                            goto LABEL_77;
                                          case 715:
                                            v13 = *v8;
                                            v14 = "turboRaidClassificationReliabilityInternal";
                                            goto LABEL_77;
                                          case 716:
                                            v13 = *v8;
                                            v14 = "turboRaidClassificationQualityHost";
                                            goto LABEL_77;
                                          case 717:
                                            v13 = *v8;
                                            v14 = "turboRaidClassificationQualityInternal";
                                            goto LABEL_77;
                                          case 719:
                                            v13 = *v8;
                                            v14 = "skinnyBandErases";
                                            goto LABEL_77;
                                          case 721:
                                            v13 = *v8;
                                            v14 = "gcPDusterDestinations";
                                            goto LABEL_77;
                                          case 722:
                                            v13 = *v8;
                                            v14 = "gcPDusterWrites";
                                            goto LABEL_77;
                                          case 730:
                                            v13 = *v8;
                                            v14 = "rvFails";
                                            goto LABEL_77;
                                          case 737:
                                            v13 = *v8;
                                            v14 = "TurboRaidFailedHostAuxReads";
                                            goto LABEL_77;
                                          case 738:
                                            v13 = *v8;
                                            v14 = "TurboRaidFailedInternalAuxReads";
                                            goto LABEL_77;
                                          case 741:
                                            v13 = *v8;
                                            v14 = "autoSkipTriggers";
                                            goto LABEL_77;
                                          case 742:
                                            v13 = *v8;
                                            v14 = "autoSkipPlanes";
                                            goto LABEL_77;
                                          case 744:
                                            v15 = "raidReconstructDurationHisto";
                                            v16 = a1;
                                            v17 = 744;
                                            goto LABEL_149;
                                          case 745:
                                            v15 = "failsOnReconstructHisto";
                                            v16 = a1;
                                            v17 = 745;
                                            goto LABEL_149;
                                          case 746:
                                            v13 = *v8;
                                            v14 = "bandKill_userFlattenExcessive";
                                            goto LABEL_77;
                                          case 747:
                                            v13 = *v8;
                                            v14 = "bandKill_IntFlattenExcessive";
                                            goto LABEL_77;
                                          case 748:
                                            v13 = *v8;
                                            v14 = "bandKill_userFlattenBalance";
                                            goto LABEL_77;
                                          case 749:
                                            v13 = *v8;
                                            v14 = "bandKill_intFlattenBalance";
                                            goto LABEL_77;
                                          case 750:
                                            v13 = *v8;
                                            v14 = "bandKill_formatVertExcessive";
                                            goto LABEL_77;
                                          case 751:
                                            v13 = *v8;
                                            v14 = "bandKill_formatVertBalance";
                                            goto LABEL_77;
                                          case 753:
                                            v13 = *v8;
                                            v14 = "cbdrNumSlowRefreshes";
                                            goto LABEL_77;
                                          case 754:
                                            v13 = *v8;
                                            v14 = "cbdrNumFastRefreshes";
                                            goto LABEL_77;
                                          case 755:
                                            v13 = *v8;
                                            v14 = "cbdrTotalRefreshValidity";
                                            goto LABEL_77;
                                          case 756:
                                            v15 = "cbdrRefreshedAges";
                                            v16 = a1;
                                            v17 = 756;
                                            goto LABEL_673;
                                          case 758:
                                            v13 = *v8;
                                            v14 = "cbdrSkippedBlocks";
                                            goto LABEL_77;
                                          case 759:
                                            v15 = "cbdrScanPct";
                                            v16 = a1;
                                            v17 = 759;
                                            goto LABEL_102;
                                          case 760:
                                            v13 = *v8;
                                            v14 = "raidSuccessfulBMXReconstructionInternal";
                                            goto LABEL_77;
                                          case 761:
                                            v13 = *v8;
                                            v14 = "raidSuccessfulBMXReconstructionHost";
                                            goto LABEL_77;
                                          case 762:
                                            v13 = *v8;
                                            v14 = "raidFailedBMXReconstructionInternal";
                                            goto LABEL_77;
                                          case 763:
                                            v13 = *v8;
                                            v14 = "raidFailedBMXReconstructionHost";
                                            goto LABEL_77;
                                          case 764:
                                            v13 = *v8;
                                            v14 = "ricSPRVFail";
                                            goto LABEL_77;
                                          case 765:
                                            v13 = *v8;
                                            v14 = "ricMPRVFail";
                                            goto LABEL_77;
                                          case 767:
                                            v15 = "cbdrRefreshGradesSLC";
                                            v16 = a1;
                                            v17 = 767;
                                            goto LABEL_44;
                                          case 768:
                                            v15 = "cbdrRefreshedAgesSLC";
                                            v16 = a1;
                                            v17 = 768;
LABEL_673:
                                            v18 = v8;
                                            v19 = 9;
                                            goto LABEL_51;
                                          case 769:
                                            v15 = "cbdrScanPctSLC";
                                            v16 = a1;
                                            v17 = 769;
                                            goto LABEL_102;
                                          case 770:
                                            v15 = "cpuBurstLength";
                                            v16 = a1;
                                            v17 = 770;
                                            goto LABEL_149;
                                          case 771:
                                            v13 = *v8;
                                            v14 = "autoSkipRaidRecoFail";
                                            goto LABEL_77;
                                          case 772:
                                            v15 = "dmReasonsSlc";
                                            v16 = a1;
                                            v17 = 772;
                                            goto LABEL_284;
                                          case 773:
                                            v15 = "dmReasonsTlc";
                                            v16 = a1;
                                            v17 = 773;
                                            goto LABEL_284;
                                          case 774:
                                            v13 = *v8;
                                            v14 = "raidReconstructFailBMXAbort";
                                            goto LABEL_77;
                                          case 775:
                                            v13 = *v8;
                                            v14 = "bandKill_fatBindingNoBlocks";
                                            goto LABEL_77;
                                          case 776:
                                            v13 = *v8;
                                            v14 = "bandKill_fatBindingFewBlocks";
                                            goto LABEL_77;
                                          default:
                                            switch(v7)
                                            {
                                              case 777:
                                                v13 = *v8;
                                                v14 = "numBadBootBlocks";
                                                goto LABEL_77;
                                              case 778:
                                                v13 = *v8;
                                                v14 = "snapshotCPUHigh";
                                                goto LABEL_77;
                                              case 779:
                                                v13 = *v8;
                                                v14 = "snapshotCPULow";
                                                goto LABEL_77;
                                              case 780:
                                                v13 = *v8;
                                                v14 = "gcWithoutBMs";
                                                goto LABEL_77;
                                              case 781:
                                                v15 = "gcSearchTimeHistory";
                                                v16 = a1;
                                                v17 = 781;
                                                goto LABEL_44;
                                              case 785:
                                                v15 = "gcSearchPortion";
                                                v16 = a1;
                                                v17 = 785;
                                                goto LABEL_246;
                                              case 786:
                                                v13 = *v8;
                                                v14 = "raidReconstructFailBmxMp";
                                                goto LABEL_77;
                                              case 787:
                                                v13 = *v8;
                                                v14 = "raidReconstructFailBmx";
                                                goto LABEL_77;
                                              case 788:
                                                v13 = *v8;
                                                v14 = "raidReconstructFailBMXUECC";
                                                goto LABEL_77;
                                              case 789:
                                                v13 = *v8;
                                                v14 = "raidReconstructFailBMXBlank";
                                                goto LABEL_77;
                                              case 790:
                                                v13 = *v8;
                                                v14 = "raidPrevFailedReconstructBmxMpSkip";
                                                goto LABEL_77;
                                              case 792:
                                                v13 = *v8;
                                                v14 = "numTLCFatBands";
                                                goto LABEL_77;
                                              case 793:
                                                v13 = *v8;
                                                v14 = "fatValidity";
                                                goto LABEL_77;
                                              case 794:
                                                v13 = *v8;
                                                v14 = "fatTotal";
                                                goto LABEL_77;
                                              case 798:
                                                v15 = "raidBMXFailP";
                                                v16 = a1;
                                                v17 = 798;
                                                goto LABEL_144;
                                              case 799:
                                                v15 = "raidBMXFailUECC";
                                                v16 = a1;
                                                v17 = 799;
                                                goto LABEL_144;
                                              case 804:
                                                v15 = "raidBMXFailNoSPBX";
                                                v16 = a1;
                                                v17 = 804;
                                                goto LABEL_144;
                                              case 806:
                                                v15 = "raidBMXFailBlank";
                                                v16 = a1;
                                                v17 = 806;
                                                goto LABEL_144;
                                              case 809:
                                                v15 = "raidBMXFailUnsup";
                                                v16 = a1;
                                                v17 = 809;
                                                goto LABEL_144;
                                              case 811:
                                                v15 = "raidBMXFailMpSkip";
                                                v16 = a1;
                                                v17 = 811;
                                                goto LABEL_144;
                                              case 812:
                                                v15 = "raidBMXFailAbort";
                                                v16 = a1;
                                                v17 = 812;
                                                goto LABEL_144;
                                              case 813:
                                                v13 = *v8;
                                                v14 = "TurboRaidIsEnabled";
                                                goto LABEL_77;
                                              case 814:
                                                v15 = "raidBMXFailOther";
                                                v16 = a1;
                                                v17 = 814;
                                                goto LABEL_144;
                                              case 815:
                                                v15 = "raidBMXSuccess";
                                                v16 = a1;
                                                v17 = 815;
                                                goto LABEL_144;
                                              case 816:
                                                v13 = *v8;
                                                v14 = "skinnyBandsExtraDip";
                                                goto LABEL_77;
                                              case 821:
                                                v13 = *v8;
                                                v14 = "writeAmp";
                                                goto LABEL_77;
                                              case 822:
                                                v13 = *v8;
                                                v14 = "ricMaxClogOnlyPages";
                                                goto LABEL_77;
                                              case 823:
                                                v15 = "readClassifyStatusesHisto";
                                                v16 = a1;
                                                v17 = 823;
                                                goto LABEL_130;
                                              case 824:
                                                v15 = "readWithAuxStatusesHisto";
                                                v16 = a1;
                                                v17 = 824;
                                                goto LABEL_44;
                                              case 825:
                                                v15 = "readReconstructStatusesHisto";
                                                v16 = a1;
                                                v17 = 825;
                                                goto LABEL_44;
                                              case 826:
                                                v13 = *v8;
                                                v14 = "bdrBackupChecks";
                                                goto LABEL_77;
                                              case 827:
                                                v13 = *v8;
                                                v14 = "ricExceedClogOnlyPagesTH";
                                                goto LABEL_77;
                                              case 828:
                                                v13 = *v8;
                                                v14 = "numDipFailures";
                                                goto LABEL_77;
                                              case 831:
                                                v13 = *v8;
                                                v14 = "prefetchNextRange";
                                                goto LABEL_77;
                                              case 862:
                                                v13 = *v8;
                                                v14 = "raidSuccessfulSkip";
                                                goto LABEL_77;
                                              case 863:
                                                v13 = *v8;
                                                v14 = "raidFailedSkip";
                                                goto LABEL_77;
                                              case 864:
                                                v13 = *v8;
                                                v14 = "raidSkipAttempts";
                                                goto LABEL_77;
                                              case 865:
                                                v15 = "timeOfThrottlingPerLevel";
                                                v16 = a1;
                                                v17 = 865;
                                                goto LABEL_213;
                                              case 866:
                                                v15 = "timeOfThrottlingPerReadLevel";
                                                v16 = a1;
                                                v17 = 866;
                                                goto LABEL_213;
                                              case 867:
                                                v15 = "timeOfThrottlingPerWriteLevel";
                                                v16 = a1;
                                                v17 = 867;
                                                goto LABEL_213;
                                              case 868:
                                                v15 = "dmReasonsSlc_1bc";
                                                v16 = a1;
                                                v17 = 868;
                                                goto LABEL_284;
                                              case 869:
                                                v15 = "dmReasonsTlc_1bc";
                                                v16 = a1;
                                                v17 = 869;
                                                goto LABEL_284;
                                              case 870:
                                                v15 = "dmReasonsSlc_1bc_he";
                                                v16 = a1;
                                                v17 = 870;
                                                goto LABEL_284;
                                              case 871:
                                                v15 = "dmReasonsTlc_1bc_he";
                                                v16 = a1;
                                                v17 = 871;
                                                goto LABEL_284;
                                              case 876:
                                                v15 = "dmReasonsSlc_mbc";
                                                v16 = a1;
                                                v17 = 876;
                                                goto LABEL_284;
                                              case 877:
                                                v15 = "dmReasonsTlc_mbc";
                                                v16 = a1;
                                                v17 = 877;
                                                goto LABEL_284;
                                              case 883:
                                                v13 = *v8;
                                                v14 = "clogEmptyProgramms";
                                                goto LABEL_77;
                                              case 884:
                                                v13 = *v8;
                                                v14 = "oslcHwCloseBand";
                                                goto LABEL_77;
                                              case 891:
                                                v15 = "turboRaidSuccessAuxPartition";
                                                v16 = a1;
                                                v17 = 891;
                                                goto LABEL_123;
                                              case 892:
                                                v15 = "turboRaidFailAuxPartition";
                                                v16 = a1;
                                                v17 = 892;
                                                goto LABEL_123;
                                              case 893:
                                                v15 = "turboRaidClassifyQualPartition";
                                                v16 = a1;
                                                v17 = 893;
                                                goto LABEL_123;
                                              case 894:
                                                v15 = "turboRaidClassifyRelPartition";
                                                v16 = a1;
                                                v17 = 894;
                                                goto LABEL_123;
                                              case 895:
                                                v13 = *v8;
                                                v14 = "IND_pool_freeMinSilo";
                                                goto LABEL_77;
                                              case 896:
                                                v13 = *v8;
                                                v14 = "autoSweepBlocks";
                                                goto LABEL_77;
                                              case 897:
                                                v15 = "wcWrFragSizes";
                                                v16 = a1;
                                                v17 = 897;
                                                goto LABEL_246;
                                              case 898:
                                                v15 = "indStateAcrossGcDidNoL";
                                                v16 = a1;
                                                v17 = 898;
                                                goto LABEL_246;
                                              case 899:
                                                v15 = "indStateAcrossGcDidL";
                                                v16 = a1;
                                                v17 = 899;
                                                goto LABEL_246;
                                              case 900:
                                                v13 = *v8;
                                                v14 = "turboRaidNoClassifyDueToWasRetire";
                                                goto LABEL_77;
                                              case 901:
                                                v13 = *v8;
                                                v14 = "turboRaidNoClassifyDueToOpenBand";
                                                goto LABEL_77;
                                              case 902:
                                                v13 = *v8;
                                                v14 = "turboRaidNoClassifyDueToQualityBlock";
                                                goto LABEL_77;
                                              case 903:
                                                v13 = *v8;
                                                v14 = "turboRaidGbbOpenBand";
                                                goto LABEL_77;
                                              case 904:
                                                v13 = *v8;
                                                v14 = "turboRaidGbbShouldRetireOnRefresh";
                                                goto LABEL_77;
                                              case 905:
                                                v15 = "turboRaidRelPerBlock";
                                                v16 = a1;
                                                v17 = 905;
                                                goto LABEL_246;
                                              case 906:
                                                v15 = "turboRaidRelBetweenRefreshesPerBlock";
                                                v16 = a1;
                                                v17 = 906;
                                                goto LABEL_246;
                                              default:
                                                if (v7 <= 997)
                                                {
                                                  switch(v7)
                                                  {
                                                    case 907:
                                                      v15 = "turboRaidMaxRelBetweenRefreshesPerBlock";
                                                      v16 = a1;
                                                      v17 = 907;
                                                      goto LABEL_246;
                                                    case 908:
                                                      v15 = "turboRaidMinRelBetweenRefreshesPerBlock";
                                                      v16 = a1;
                                                      v17 = 908;
                                                      goto LABEL_246;
                                                    case 909:
                                                    case 910:
                                                    case 911:
                                                    case 912:
                                                    case 913:
                                                    case 914:
                                                    case 915:
                                                    case 916:
                                                    case 917:
                                                    case 924:
                                                    case 925:
                                                    case 926:
                                                    case 927:
                                                    case 928:
                                                    case 929:
                                                    case 936:
                                                    case 941:
                                                    case 945:
                                                    case 946:
                                                    case 947:
                                                    case 949:
                                                    case 950:
                                                    case 952:
                                                    case 954:
                                                    case 955:
                                                    case 956:
                                                    case 957:
                                                    case 958:
                                                    case 959:
                                                    case 960:
                                                    case 963:
                                                    case 966:
                                                    case 968:
                                                    case 969:
                                                    case 970:
                                                      goto LABEL_858;
                                                    case 918:
                                                      v15 = "turboRaidMaxCyclesBetweenRel";
                                                      v16 = a1;
                                                      v17 = 918;
                                                      goto LABEL_246;
                                                    case 919:
                                                      v15 = "turboRaidMinCyclesBetweenRel";
                                                      v16 = a1;
                                                      v17 = 919;
                                                      goto LABEL_246;
                                                    case 920:
                                                      v15 = "turboRaidAuxPerBlock";
                                                      v16 = a1;
                                                      v17 = 920;
                                                      goto LABEL_246;
                                                    case 921:
                                                      v15 = "turboRaidAuxBetweenRefreshesPerBlock";
                                                      v16 = a1;
                                                      v17 = 921;
                                                      goto LABEL_246;
                                                    case 922:
                                                      v13 = *v8;
                                                      v14 = "turboRaidRelLockMark";
                                                      goto LABEL_77;
                                                    case 923:
                                                      v13 = *v8;
                                                      v14 = "turboRaidAuxLockMark";
                                                      goto LABEL_77;
                                                    case 930:
                                                      v15 = "turboRaidMaxCyclesBetweenAux";
                                                      v16 = a1;
                                                      v17 = 930;
                                                      goto LABEL_246;
                                                    case 931:
                                                      v15 = "turboRaidMinCyclesBetweenAux";
                                                      v16 = a1;
                                                      v17 = 931;
                                                      goto LABEL_246;
                                                    case 932:
                                                      v15 = "turboRaidLastRelPECycles";
                                                      v16 = a1;
                                                      v17 = 932;
                                                      goto LABEL_246;
                                                    case 933:
                                                      v15 = "turboRaidRelQualPECycles";
                                                      v16 = a1;
                                                      v17 = 933;
                                                      goto LABEL_246;
                                                    case 934:
                                                      v15 = "turboRaidLastAuxPECycles";
                                                      v16 = a1;
                                                      v17 = 934;
                                                      goto LABEL_246;
                                                    case 935:
                                                      v15 = "turboRaidAuxQualPECycles";
                                                      v16 = a1;
                                                      v17 = 935;
                                                      goto LABEL_246;
                                                    case 937:
                                                      v13 = *v8;
                                                      v14 = "turboRaidPEFailAfterRel";
                                                      goto LABEL_77;
                                                    case 938:
                                                      v13 = *v8;
                                                      v14 = "turboRaidPEFailAfterAux";
                                                      goto LABEL_77;
                                                    case 939:
                                                      v13 = *v8;
                                                      v14 = "dvfmVotesCPU";
                                                      goto LABEL_77;
                                                    case 940:
                                                      v13 = *v8;
                                                      v14 = "dvfmVotesBandwidth";
                                                      goto LABEL_77;
                                                    case 942:
                                                      v13 = *v8;
                                                      v14 = "maxSLCEndurance";
                                                      goto LABEL_77;
                                                    case 943:
                                                      v13 = *v8;
                                                      v14 = "maxMixedEndurance";
                                                      goto LABEL_77;
                                                    case 944:
                                                      v13 = *v8;
                                                      v14 = "maxNativeEndurance";
                                                      goto LABEL_77;
                                                    case 948:
                                                      v15 = "assertHistory";
                                                      v16 = a1;
                                                      v17 = 948;
                                                      v18 = v8;
                                                      v19 = 40;
                                                      goto LABEL_51;
                                                    case 951:
                                                      v13 = *v8;
                                                      v14 = "asp3Support";
                                                      goto LABEL_77;
                                                    case 953:
                                                      v13 = *v8;
                                                      v14 = "numCrossTempRaidUecc";
                                                      goto LABEL_77;
                                                    case 961:
                                                      v13 = *v8;
                                                      v14 = "osBuildStr";
                                                      goto LABEL_77;
                                                    case 962:
                                                      v13 = *v8;
                                                      v14 = "raidConfig";
                                                      goto LABEL_77;
                                                    case 964:
                                                      v13 = *v8;
                                                      v14 = "raidBlkParityBands";
                                                      goto LABEL_77;
                                                    case 965:
                                                      v13 = *v8;
                                                      v14 = "raidBlkParitySecs";
                                                      goto LABEL_77;
                                                    case 967:
                                                      v15 = "indTrimFrags";
                                                      v16 = a1;
                                                      v17 = 967;
                                                      goto LABEL_282;
                                                    case 971:
                                                      v15 = "indUsedFrags";
                                                      v16 = a1;
                                                      v17 = 971;
                                                      goto LABEL_282;
                                                    default:
                                                      if (v7 == 996)
                                                      {
                                                        v13 = *v8;
                                                        v20 = a1;
                                                        v14 = "clogFindFail";
                                                      }

                                                      else
                                                      {
                                                        if (v7 != 997)
                                                        {
                                                          goto LABEL_858;
                                                        }

                                                        v13 = *v8;
                                                        v20 = a1;
                                                        v14 = "clogFindBlank";
                                                      }

                                                      break;
                                                  }

                                                  goto LABEL_78;
                                                }

                                                if (v7 > 1137)
                                                {
                                                  if (v7 <= 1170)
                                                  {
                                                    if (v7 > 1156)
                                                    {
                                                      if (v7 > 1167)
                                                      {
                                                        if (v7 == 1168)
                                                        {
                                                          v16 = a1;
                                                          v17 = 1168;
                                                          v15 = "poDetectPERemovalTotalCost";
LABEL_123:
                                                          v18 = v8;
                                                          v19 = 2;
                                                          goto LABEL_51;
                                                        }

                                                        if (v7 == 1169)
                                                        {
                                                          v16 = a1;
                                                          v17 = 1169;
                                                          v15 = "poDetectEmptySpotRemovalTotalCost";
                                                          goto LABEL_123;
                                                        }
                                                      }

                                                      else
                                                      {
                                                        if (v7 == 1157)
                                                        {
                                                          v13 = *v8;
                                                          v20 = a1;
                                                          v14 = "eanMaxForceROTimeMs";
                                                          goto LABEL_78;
                                                        }

                                                        if (v7 == 1158)
                                                        {
                                                          v13 = *v8;
                                                          v20 = a1;
                                                          v14 = "eanMaxForceRORecoTimeMs";
                                                          goto LABEL_78;
                                                        }
                                                      }

                                                      goto LABEL_858;
                                                    }

                                                    if (v7 > 1147)
                                                    {
                                                      if (v7 == 1148)
                                                      {
                                                        v16 = a1;
                                                        v17 = 1148;
                                                        v15 = "gc_concurrent_dw_gc1";
                                                      }

                                                      else
                                                      {
                                                        if (v7 != 1149)
                                                        {
                                                          goto LABEL_858;
                                                        }

                                                        v16 = a1;
                                                        v17 = 1149;
                                                        v15 = "gc_concurrent_dw_gc2";
                                                      }
                                                    }

                                                    else
                                                    {
                                                      if (v7 == 1138)
                                                      {
                                                        v13 = *v8;
                                                        v20 = a1;
                                                        v14 = "numOfToHappySwitches";
                                                        goto LABEL_78;
                                                      }

                                                      if (v7 != 1147)
                                                      {
                                                        goto LABEL_858;
                                                      }

                                                      v16 = a1;
                                                      v17 = 1147;
                                                      v15 = "gc_concurrent_dw_gc12";
                                                    }

LABEL_875:
                                                    v18 = v8;
                                                    v19 = 24;
                                                    goto LABEL_51;
                                                  }

                                                  if (v7 > 1180)
                                                  {
                                                    if (v7 > 1182)
                                                    {
                                                      if (v7 != 1183)
                                                      {
                                                        if (v7 != 1184)
                                                        {
                                                          goto LABEL_858;
                                                        }

                                                        v13 = *v8;
                                                        v20 = a1;
                                                        v14 = "unhappy_state";
                                                        goto LABEL_78;
                                                      }

                                                      v16 = a1;
                                                      v17 = 1183;
                                                      v15 = "gc_tot_dw_gc2";
                                                    }

                                                    else
                                                    {
                                                      v16 = a1;
                                                      if (v7 == 1181)
                                                      {
                                                        v17 = 1181;
                                                        v15 = "gc_cur_dw_gc3";
                                                      }

                                                      else
                                                      {
                                                        v17 = 1182;
                                                        v15 = "gc_tot_dw_gc1";
                                                      }
                                                    }
                                                  }

                                                  else
                                                  {
                                                    if (v7 <= 1178)
                                                    {
                                                      if (v7 == 1171)
                                                      {
                                                        v16 = a1;
                                                        v17 = 1171;
                                                        v15 = "poDetectEmptySpotRemovalAge";
                                                        goto LABEL_44;
                                                      }

                                                      if (v7 == 1172)
                                                      {
                                                        v16 = a1;
                                                        v17 = 1172;
                                                        v15 = "poDetectGBBedMostSevereCost";
                                                        goto LABEL_130;
                                                      }

                                                      goto LABEL_858;
                                                    }

                                                    v16 = a1;
                                                    if (v7 == 1179)
                                                    {
                                                      v17 = 1179;
                                                      v15 = "gc_cur_dw_gc1";
                                                    }

                                                    else
                                                    {
                                                      v17 = 1180;
                                                      v15 = "gc_cur_dw_gc2";
                                                    }
                                                  }

LABEL_144:
                                                  v18 = v8;
                                                  v19 = 4;
                                                  goto LABEL_51;
                                                }

                                                if (v7 > 1039)
                                                {
                                                  if (v7 <= 1104)
                                                  {
                                                    if (v7 > 1041)
                                                    {
                                                      if (v7 != 1042)
                                                      {
                                                        if (v7 == 1080)
                                                        {
                                                          v13 = *v8;
                                                          v20 = a1;
                                                          v14 = "raidForceClogLoad";
                                                          goto LABEL_78;
                                                        }

                                                        goto LABEL_858;
                                                      }

                                                      v16 = a1;
                                                      v17 = 1042;
                                                      v15 = "bandsAgeBinsReadSectors";
                                                      v18 = v8;
                                                      v19 = 15;
                                                    }

                                                    else
                                                    {
                                                      v16 = a1;
                                                      if (v7 == 1040)
                                                      {
                                                        v17 = 1040;
                                                        v15 = "bandsAgeBinsV2";
                                                      }

                                                      else
                                                      {
                                                        v17 = 1041;
                                                        v15 = "bandsAgeBinsSnapshot";
                                                      }

                                                      v18 = v8;
                                                      v19 = 31;
                                                    }

LABEL_51:
                                                    sub_10000ADF8(v16, v17, v15, v18, v19);
                                                    goto LABEL_79;
                                                  }

                                                  if (v7 <= 1115)
                                                  {
                                                    if (v7 == 1105)
                                                    {
                                                      v16 = a1;
                                                      v17 = 1105;
                                                      v15 = "hostReadSequential";
                                                      goto LABEL_847;
                                                    }

                                                    if (v7 == 1106)
                                                    {
                                                      v16 = a1;
                                                      v17 = 1106;
                                                      v15 = "GCReadSequential";
LABEL_847:
                                                      v18 = v8;
                                                      v19 = 14;
                                                      goto LABEL_51;
                                                    }

                                                    goto LABEL_858;
                                                  }

                                                  if (v7 == 1116)
                                                  {
                                                    v16 = a1;
                                                    v17 = 1116;
                                                    v15 = "gcwamp";
LABEL_284:
                                                    v18 = v8;
                                                    v19 = 32;
                                                    goto LABEL_51;
                                                  }

                                                  if (v7 == 1137)
                                                  {
                                                    v13 = *v8;
                                                    v20 = a1;
                                                    v14 = "numOfToUnhappySwitches";
                                                    goto LABEL_78;
                                                  }

LABEL_858:
                                                  switch(v7)
                                                  {
                                                    case 1185:
                                                      v13 = *v8;
                                                      v14 = "unhappy_level";
                                                      goto LABEL_77;
                                                    case 1186:
                                                    case 1187:
                                                    case 1188:
                                                    case 1191:
                                                    case 1192:
                                                    case 1193:
                                                    case 1194:
                                                    case 1195:
                                                    case 1200:
                                                    case 1203:
                                                    case 1204:
                                                    case 1205:
                                                    case 1206:
                                                    case 1207:
                                                    case 1208:
                                                    case 1209:
                                                    case 1210:
                                                    case 1212:
                                                    case 1213:
                                                    case 1214:
                                                    case 1219:
                                                    case 1220:
                                                    case 1235:
                                                    case 1236:
                                                    case 1237:
                                                    case 1238:
                                                    case 1239:
                                                    case 1240:
                                                    case 1242:
                                                    case 1243:
                                                    case 1245:
                                                    case 1247:
                                                    case 1248:
                                                    case 1249:
                                                    case 1250:
                                                    case 1251:
                                                    case 1252:
                                                    case 1253:
                                                    case 1254:
                                                    case 1255:
                                                    case 1256:
                                                    case 1257:
                                                    case 1258:
                                                    case 1259:
                                                    case 1260:
                                                    case 1261:
                                                    case 1262:
                                                    case 1263:
LABEL_896:
                                                      if (v7 <= 1447)
                                                      {
                                                        switch(v7)
                                                        {
                                                          case 1354:
                                                            v13 = *v8;
                                                            v14 = "numOfThrottlingLevels";
                                                            goto LABEL_77;
                                                          case 1355:
                                                            v13 = *v8;
                                                            v14 = "crossTempColdEvict";
                                                            goto LABEL_77;
                                                          case 1356:
                                                            v13 = *v8;
                                                            v14 = "crossTempHotEvict";
                                                            goto LABEL_77;
                                                          case 1357:
                                                            v13 = *v8;
                                                            v14 = "crossTempColdHotEvict";
                                                            goto LABEL_77;
                                                          case 1358:
                                                            v15 = "tempChangedHisto";
                                                            v16 = a1;
                                                            v17 = 1358;
                                                            goto LABEL_940;
                                                          case 1359:
                                                            v15 = "tempChangedEnterETHisto";
                                                            v16 = a1;
                                                            v17 = 1359;
LABEL_940:
                                                            v18 = v8;
                                                            v19 = 13;
                                                            goto LABEL_51;
                                                          case 1362:
                                                            v15 = "gcMustReasons";
                                                            v16 = a1;
                                                            v17 = 1362;
                                                            goto LABEL_93;
                                                          case 1367:
                                                            v15 = "asyncMessageHisto";
                                                            v16 = a1;
                                                            v17 = 1367;
                                                            goto LABEL_284;
                                                          case 1368:
                                                            v13 = *v8;
                                                            v14 = "massScanIgnoredTooFrequent";
                                                            goto LABEL_77;
                                                          case 1369:
                                                            v15 = "realGBBPerDipOfFailingDie";
                                                            v16 = a1;
                                                            v17 = 1369;
                                                            goto LABEL_149;
                                                          case 1379:
                                                            v13 = *v8;
                                                            v14 = "boffOrderedReadBlank";
                                                            goto LABEL_77;
                                                          case 1380:
                                                            v13 = *v8;
                                                            v14 = "boffOrderedRaidSuccessValidLba";
                                                            goto LABEL_77;
                                                          case 1381:
                                                            v13 = *v8;
                                                            v14 = "unexpectedRaidFailures";
                                                            goto LABEL_77;
                                                          case 1382:
                                                            v13 = *v8;
                                                            v14 = "boffOrderedUnexpectedBlankValid";
                                                            goto LABEL_77;
                                                          case 1383:
                                                            v13 = *v8;
                                                            v14 = "raidExpectedFailPMXReconstructionInternal";
                                                            goto LABEL_77;
                                                          case 1384:
                                                            v13 = *v8;
                                                            v14 = "raidExpectedFailPMXReconstructionHost";
                                                            goto LABEL_77;
                                                          case 1385:
                                                            v13 = *v8;
                                                            v14 = "raidExpectedFailBMXReconstructionInternal";
                                                            goto LABEL_77;
                                                          case 1386:
                                                            v13 = *v8;
                                                            v14 = "raidExpectedFailBMXReconstructionHost";
                                                            goto LABEL_77;
                                                          case 1392:
                                                            v13 = *v8;
                                                            v14 = "cbdrHPScanHP";
                                                            goto LABEL_77;
                                                          case 1393:
                                                            v13 = *v8;
                                                            v14 = "cbdrMPScanMP";
                                                            goto LABEL_77;
                                                          case 1394:
                                                            v13 = *v8;
                                                            v14 = "cbdrMPScanHP";
                                                            goto LABEL_77;
                                                          case 1401:
                                                            v13 = *v8;
                                                            v14 = "ldefragFailedMemBalancer";
                                                            goto LABEL_77;
                                                          case 1409:
                                                            v13 = *v8;
                                                            v14 = "BP_readThrottleEngagedCnt";
                                                            goto LABEL_77;
                                                          case 1410:
                                                            v13 = *v8;
                                                            v14 = "BP_readThrottleActualSize";
                                                            goto LABEL_77;
                                                          default:
                                                            goto LABEL_79;
                                                        }
                                                      }

                                                      if (v7 > 1535)
                                                      {
                                                        if (v7 > 1542)
                                                        {
                                                          if (v7 <= 1544)
                                                          {
                                                            v16 = a1;
                                                            if (v7 == 1543)
                                                            {
                                                              v17 = 1543;
                                                              v15 = "istkLowNoDIPingIntervals";
                                                            }

                                                            else
                                                            {
                                                              v17 = 1544;
                                                              v15 = "istkLowNoSUIPingIntervals";
                                                            }

                                                            goto LABEL_44;
                                                          }

                                                          if (v7 == 1545)
                                                          {
                                                            v16 = a1;
                                                            v17 = 1545;
                                                            v15 = "istkLowAfterMedIntervals";
                                                            goto LABEL_994;
                                                          }

                                                          if (v7 == 1547)
                                                          {
                                                            v16 = a1;
                                                            v17 = 1547;
                                                            v15 = "istkHWBetweenMed";
                                                            goto LABEL_102;
                                                          }

                                                          if (v7 != 1570)
                                                          {
                                                            goto LABEL_79;
                                                          }

                                                          v13 = *v8;
                                                          v20 = a1;
                                                          v14 = "uptimeSeconds";
                                                        }

                                                        else if (v7 <= 1537)
                                                        {
                                                          v13 = *v8;
                                                          v20 = a1;
                                                          if (v7 == 1536)
                                                          {
                                                            v14 = "istkLowPings";
                                                          }

                                                          else
                                                          {
                                                            v14 = "istkLowNoDIPings";
                                                          }
                                                        }

                                                        else
                                                        {
                                                          switch(v7)
                                                          {
                                                            case 1538:
                                                              v13 = *v8;
                                                              v20 = a1;
                                                              v14 = "istkLowNoSUIPings";
                                                              break;
                                                            case 1539:
                                                              v13 = *v8;
                                                              v20 = a1;
                                                              v14 = "istkMedPings";
                                                              break;
                                                            case 1540:
                                                              v13 = *v8;
                                                              v20 = a1;
                                                              v14 = "istkHighPings";
                                                              break;
                                                            default:
                                                              goto LABEL_79;
                                                          }
                                                        }

                                                        goto LABEL_78;
                                                      }

                                                      if (v7 <= 1462)
                                                      {
                                                        if (v7 <= 1449)
                                                        {
                                                          v13 = *v8;
                                                          v20 = a1;
                                                          if (v7 == 1448)
                                                          {
                                                            v14 = "deviceTempMaxValue";
                                                          }

                                                          else
                                                          {
                                                            v14 = "deviceTempHighValue";
                                                          }

                                                          goto LABEL_78;
                                                        }

                                                        if (v7 == 1450)
                                                        {
                                                          v13 = *v8;
                                                          v20 = a1;
                                                          v14 = "deviceTempLowValue";
                                                          goto LABEL_78;
                                                        }

                                                        if (v7 == 1452)
                                                        {
                                                          v13 = *v8;
                                                          v20 = a1;
                                                          v14 = "selfPanicEnabled";
                                                          goto LABEL_78;
                                                        }

                                                        if (v7 != 1462)
                                                        {
                                                          goto LABEL_79;
                                                        }

                                                        v16 = a1;
                                                        v17 = 1462;
                                                        v15 = "nandWritesByMode";
                                                        goto LABEL_994;
                                                      }

                                                      if (v7 > 1532)
                                                      {
                                                        if (v7 == 1533)
                                                        {
                                                          v16 = a1;
                                                          v17 = 1533;
                                                          v15 = "istkLowPingIntervals";
                                                          goto LABEL_282;
                                                        }

                                                        v16 = a1;
                                                        if (v7 == 1534)
                                                        {
                                                          v17 = 1534;
                                                          v15 = "istkMedPingIntervals";
                                                        }

                                                        else
                                                        {
                                                          v17 = 1535;
                                                          v15 = "istkHighPingIntervals";
                                                        }

                                                        goto LABEL_44;
                                                      }

                                                      if (v7 == 1463)
                                                      {
                                                        v16 = a1;
                                                        v17 = 1463;
                                                        v15 = "nandReadsByMode";
                                                        goto LABEL_994;
                                                      }

                                                      if (v7 != 1494)
                                                      {
                                                        goto LABEL_79;
                                                      }

                                                      v16 = a1;
                                                      v17 = 1494;
                                                      v15 = "throttlingSecPerTTPerMW";
                                                      break;
                                                    case 1189:
                                                      v13 = *v8;
                                                      v14 = "lastLbaFormatTime";
                                                      goto LABEL_77;
                                                    case 1190:
                                                      v15 = "powerDownTime";
                                                      v16 = a1;
                                                      v17 = 1190;
                                                      goto LABEL_449;
                                                    case 1196:
                                                      v15 = "poDetectGBBedTotalCost";
                                                      v16 = a1;
                                                      v17 = 1196;
                                                      goto LABEL_102;
                                                    case 1197:
                                                      v15 = "poDetectGBBedAge";
                                                      v16 = a1;
                                                      v17 = 1197;
                                                      goto LABEL_44;
                                                    case 1198:
                                                      v15 = "poDetectPERemovalMostSevereCost";
                                                      v16 = a1;
                                                      v17 = 1198;
                                                      goto LABEL_130;
                                                    case 1199:
                                                      v13 = *v8;
                                                      v14 = "poDetectCurrentSize";
                                                      goto LABEL_77;
                                                    case 1201:
                                                      v15 = "gcVerticalSuccssfulAlignments";
                                                      v16 = a1;
                                                      v17 = 1201;
                                                      goto LABEL_144;
                                                    case 1202:
                                                      v15 = "gcVerticalNoAlignmentDueToMissingSegs";
                                                      v16 = a1;
                                                      v17 = 1202;
                                                      goto LABEL_144;
                                                    case 1211:
                                                      v15 = "forcedAllocationSmallEraseQ";
                                                      v16 = a1;
                                                      v17 = 1211;
                                                      goto LABEL_875;
                                                    case 1215:
                                                      v15 = "hostWritesPerThrottleZone";
                                                      v16 = a1;
                                                      v17 = 1215;
                                                      goto LABEL_102;
                                                    case 1216:
                                                      v15 = "tlcWLPerDipAvgPEC";
                                                      v16 = a1;
                                                      v17 = 1216;
                                                      goto LABEL_875;
                                                    case 1217:
                                                      v15 = "tlcWLPerDipMaxPEC";
                                                      v16 = a1;
                                                      v17 = 1217;
                                                      goto LABEL_875;
                                                    case 1218:
                                                      v15 = "tlcWLPerDipMinPEC";
                                                      v16 = a1;
                                                      v17 = 1218;
                                                      goto LABEL_875;
                                                    case 1221:
                                                      v13 = *v8;
                                                      v14 = "RD_openBandEvictBlocks";
                                                      goto LABEL_77;
                                                    case 1222:
                                                      v13 = *v8;
                                                      v14 = "RD_closedBandEvictBlocks";
                                                      goto LABEL_77;
                                                    case 1223:
                                                      v15 = "RD_closedBlocksTHHist";
                                                      v16 = a1;
                                                      v17 = 1223;
                                                      goto LABEL_44;
                                                    case 1224:
                                                      v15 = "apfsValidLbaOvershoot";
                                                      v16 = a1;
                                                      v17 = 1224;
                                                      break;
                                                    case 1225:
                                                      v13 = *v8;
                                                      v14 = "HUPolicySwitchPeMinSlc";
                                                      goto LABEL_77;
                                                    case 1226:
                                                      v13 = *v8;
                                                      v14 = "HUPolicySwitchPeInt";
                                                      goto LABEL_77;
                                                    case 1227:
                                                      v13 = *v8;
                                                      v14 = "HUPolicySwitchPeGap";
                                                      goto LABEL_77;
                                                    case 1228:
                                                      v15 = "HUPolicyWidthDown";
                                                      v16 = a1;
                                                      v17 = 1228;
                                                      goto LABEL_994;
                                                    case 1229:
                                                      v15 = "HUPolicyWidthUp";
                                                      v16 = a1;
                                                      v17 = 1229;
                                                      goto LABEL_994;
                                                    case 1230:
                                                      v13 = *v8;
                                                      v14 = "HUPolicyPrevPeSlc";
                                                      goto LABEL_77;
                                                    case 1231:
                                                      v13 = *v8;
                                                      v14 = "HUPolicyPrevPeTlc";
                                                      goto LABEL_77;
                                                    case 1232:
                                                      v13 = *v8;
                                                      v14 = "eanFastSize";
                                                      goto LABEL_77;
                                                    case 1233:
                                                      v13 = *v8;
                                                      v14 = "eanNumSlcEvictions";
                                                      goto LABEL_77;
                                                    case 1234:
                                                      v13 = *v8;
                                                      v14 = "eanNumForcedCompress";
                                                      goto LABEL_77;
                                                    case 1241:
                                                      v15 = "s2rTimeHisto";
                                                      v16 = a1;
                                                      v17 = 1241;
                                                      goto LABEL_44;
                                                    case 1244:
                                                      v13 = *v8;
                                                      v14 = "calendarTimeWentBackward";
                                                      goto LABEL_77;
                                                    case 1246:
                                                      v15 = "bandsUeccCrossTempHisto";
                                                      v16 = a1;
                                                      v17 = 1246;
                                                      goto LABEL_149;
                                                    case 1264:
                                                      v13 = *v8;
                                                      v14 = "numRefreshOnErrNandRefreshPerfOpt";
                                                      goto LABEL_77;
                                                    default:
                                                      switch(v7)
                                                      {
                                                        case 1271:
                                                          v13 = *v8;
                                                          v14 = "deviceTempMax";
                                                          goto LABEL_77;
                                                        case 1272:
                                                          v13 = *v8;
                                                          v14 = "deviceTempHigh";
                                                          goto LABEL_77;
                                                        case 1273:
                                                          v13 = *v8;
                                                          v14 = "deviceTempLow";
                                                          goto LABEL_77;
                                                        case 1282:
                                                          v13 = *v8;
                                                          v14 = "cbdrScanHP";
                                                          goto LABEL_77;
                                                        case 1283:
                                                          v13 = *v8;
                                                          v14 = "cbdrScanMP";
                                                          goto LABEL_77;
                                                        case 1285:
                                                          v13 = *v8;
                                                          v14 = "bitsPerCell";
                                                          goto LABEL_77;
                                                        case 1289:
                                                          v13 = *v8;
                                                          v14 = "numRefreshOnErrNandRefreshPerfOptOpen";
                                                          goto LABEL_77;
                                                        case 1293:
                                                          v15 = "bpZone2EntryTime";
                                                          v16 = a1;
                                                          v17 = 1293;
                                                          goto LABEL_246;
                                                        case 1294:
                                                          v15 = "bpZone2ExitTime";
                                                          v16 = a1;
                                                          v17 = 1294;
                                                          goto LABEL_246;
                                                        case 1295:
                                                          v15 = "bpHostChokeTime";
                                                          v16 = a1;
                                                          v17 = 1295;
                                                          goto LABEL_149;
                                                        case 1296:
                                                          v15 = "bpZone2EntryHW";
                                                          v16 = a1;
                                                          v17 = 1296;
                                                          goto LABEL_246;
                                                        case 1298:
                                                          v15 = "bpZone2ExitHW";
                                                          v16 = a1;
                                                          v17 = 1298;
                                                          goto LABEL_246;
                                                        case 1302:
                                                          v15 = "bpZone2EntryHostTP";
                                                          v16 = a1;
                                                          v17 = 1302;
                                                          goto LABEL_246;
                                                        case 1303:
                                                          v15 = "bpZone2EntryGCTP";
                                                          v16 = a1;
                                                          v17 = 1303;
                                                          goto LABEL_246;
                                                        case 1304:
                                                          v15 = "bpZone2ExitHostTP";
                                                          v16 = a1;
                                                          v17 = 1304;
                                                          goto LABEL_246;
                                                        case 1305:
                                                          v15 = "bpZone2ExitGCTP";
                                                          v16 = a1;
                                                          v17 = 1305;
                                                          goto LABEL_246;
                                                        case 1323:
                                                          v13 = *v8;
                                                          v14 = "prefetchNofHits";
                                                          goto LABEL_77;
                                                        case 1326:
                                                          v13 = *v8;
                                                          v14 = "massScanFullRounds";
                                                          goto LABEL_77;
                                                        case 1327:
                                                          v13 = *v8;
                                                          v14 = "massScanEarlyExits";
                                                          goto LABEL_77;
                                                        case 1328:
                                                          v13 = *v8;
                                                          v14 = "massScanMspFullScanRequests";
                                                          goto LABEL_77;
                                                        case 1329:
                                                          v13 = *v8;
                                                          v14 = "massScanMspEarlyExitRequests";
                                                          goto LABEL_77;
                                                        case 1333:
                                                          v13 = *v8;
                                                          v14 = "gcBoffOrderedRecoverableErrorGbbs";
                                                          goto LABEL_77;
                                                        case 1334:
                                                          v13 = *v8;
                                                          v14 = "gcBoffOrderedUnrecoverableErrorGbbs";
                                                          goto LABEL_77;
                                                        case 1335:
                                                          v13 = *v8;
                                                          v14 = "gcBoffOrderedBandOrphansNumBands";
                                                          goto LABEL_77;
                                                        case 1336:
                                                          v13 = *v8;
                                                          v14 = "gcBoffOrderedBandOrphansNumSectors";
                                                          goto LABEL_77;
                                                        case 1337:
                                                          v13 = *v8;
                                                          v14 = "gcBoffOrderedDefragEvents";
                                                          goto LABEL_77;
                                                        case 1338:
                                                          v13 = *v8;
                                                          v14 = "gcBoffOrderedDefragIterations";
                                                          goto LABEL_77;
                                                        case 1339:
                                                          v13 = *v8;
                                                          v14 = "gcBoffOrderedDefragSectors";
                                                          goto LABEL_77;
                                                        case 1344:
                                                          v15 = "unhappyWideGC1";
                                                          v16 = a1;
                                                          v17 = 1344;
                                                          goto LABEL_144;
                                                        case 1345:
                                                          v15 = "unhappyVertGC";
                                                          v16 = a1;
                                                          v17 = 1345;
                                                          goto LABEL_144;
                                                        case 1348:
                                                          v13 = *v8;
                                                          v14 = "thermalSelfThrottlingSupported";
                                                          goto LABEL_77;
                                                        case 1349:
                                                          v13 = *v8;
                                                          v14 = "thermalSelfThrottlingEnabled";
                                                          goto LABEL_77;
                                                        default:
                                                          goto LABEL_896;
                                                      }
                                                  }

LABEL_93:
                                                  v18 = v8;
                                                  v19 = 20;
                                                  goto LABEL_51;
                                                }

                                                if (v7 <= 1002)
                                                {
                                                  if (v7 > 1000)
                                                  {
                                                    if (v7 != 1001)
                                                    {
                                                      v13 = *v8;
                                                      v20 = a1;
                                                      v14 = "clogReplayTransientError";
                                                      goto LABEL_78;
                                                    }

                                                    v16 = a1;
                                                    v17 = 1001;
                                                    v15 = "clogReplayFailReason";
LABEL_149:
                                                    v18 = v8;
                                                    v19 = 8;
                                                    goto LABEL_51;
                                                  }

                                                  if (v7 == 998)
                                                  {
                                                    v13 = *v8;
                                                    v20 = a1;
                                                    v14 = "clogFindUnc";
                                                    goto LABEL_78;
                                                  }

                                                  if (v7 == 999)
                                                  {
                                                    v13 = *v8;
                                                    v20 = a1;
                                                    v14 = "clogFindUnexpected";
                                                    goto LABEL_78;
                                                  }

                                                  goto LABEL_858;
                                                }

                                                if (v7 <= 1015)
                                                {
                                                  if (v7 == 1003)
                                                  {
                                                    v13 = *v8;
                                                    v20 = a1;
                                                    v14 = "clogReplaySpfError";
                                                    goto LABEL_78;
                                                  }

                                                  if (v7 == 1015)
                                                  {
                                                    v16 = a1;
                                                    v17 = 1015;
                                                    v15 = "eanEarlyBootUeccPage";
                                                    goto LABEL_144;
                                                  }

                                                  goto LABEL_858;
                                                }

                                                if (v7 != 1016)
                                                {
                                                  if (v7 == 1017)
                                                  {
                                                    v13 = *v8;
                                                    v20 = a1;
                                                    v14 = "eanEarlyBootUeccMultiplane";
                                                    goto LABEL_78;
                                                  }

                                                  goto LABEL_858;
                                                }

                                                v13 = *v8;
                                                v20 = a1;
                                                v14 = "eanEarlyBootNumUeccPages";
LABEL_78:
                                                sub_1000201D4(v20, "", v14, v13);
LABEL_79:
                                                a2 = &v8[v10];
                                                v6 = v11 - v10;
                                                if (v11 != v10)
                                                {
                                                  continue;
                                                }

                                                return 1;
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
  }
}

uint64_t sub_10000ADF8(uint64_t result, int a2, const char *a3, uint64_t *a4, unsigned int a5)
{
  v7 = result;
  v8 = *a4;
  if (a2 > 44)
  {
    if (a2 <= 50)
    {
      if (a2 > 48)
      {
        if (a2 == 49)
        {
          *(result + 56) = v8;
          if (!a5)
          {
            return result;
          }
        }

        else
        {
          *(result + 52) = v8;
          if (!a5)
          {
            return result;
          }
        }

        goto LABEL_59;
      }

      if (a2 == 45)
      {
        *(result + 176) = v8;
        if (!a5)
        {
          return result;
        }

        goto LABEL_59;
      }

      if (a2 == 48)
      {
        *(result + 80) = v8;
        if (!a5)
        {
          return result;
        }

        goto LABEL_59;
      }
    }

    else
    {
      if (a2 <= 52)
      {
        if (a2 == 51)
        {
          *(result + 48) = v8;
          if (!a5)
          {
            return result;
          }
        }

        else
        {
          *(result + 44) = v8;
          if (!a5)
          {
            return result;
          }
        }

        goto LABEL_59;
      }

      switch(a2)
      {
        case 53:
          *(result + 32) = v8;
          if (!a5)
          {
            return result;
          }

          goto LABEL_59;
        case 56:
          *(result + 160) = v8;
          if (!a5)
          {
            return result;
          }

          goto LABEL_59;
        case 265:
          if (!a5)
          {
            return result;
          }

          v9 = (result + 184);
          v10 = a5;
          v11 = a4;
          do
          {
            v12 = *v11++;
            *v9++ = v12;
            --v10;
          }

          while (v10);
          break;
      }
    }

    goto LABEL_58;
  }

  if (a2 <= 16)
  {
    if (a2 > 11)
    {
      if (a2 == 12)
      {
        *(result + 144) = v8;
        if (!a5)
        {
          return result;
        }

        goto LABEL_59;
      }

      if (a2 == 13)
      {
        *(result + 152) = v8;
        if (!a5)
        {
          return result;
        }

        goto LABEL_59;
      }
    }

    else
    {
      if (a2 == 4)
      {
        *(result + 72) = v8;
        if (!a5)
        {
          return result;
        }

        goto LABEL_59;
      }

      if (a2 == 7)
      {
        *(result + 64) = v8;
        if (!a5)
        {
          return result;
        }

        goto LABEL_59;
      }
    }

LABEL_58:
    if (!a5)
    {
      return result;
    }

    goto LABEL_59;
  }

  if (a2 <= 18)
  {
    if (a2 != 17)
    {
      *(result + 104) = v8;
      if (!a5)
      {
        return result;
      }

      goto LABEL_59;
    }

    *(result + 88) = v8;
    goto LABEL_58;
  }

  if (a2 == 19)
  {
    *(result + 96) = v8;
    if (!a5)
    {
      return result;
    }

    goto LABEL_59;
  }

  if (a2 == 20)
  {
    *(result + 112) = v8;
    if (!a5)
    {
      return result;
    }

    goto LABEL_59;
  }

  if (a2 != 28)
  {
    goto LABEL_58;
  }

  *(result + 168) = v8;
  if (!a5)
  {
    return result;
  }

LABEL_59:
  if (a5 == 1)
  {

    return sub_1000201D4(result, "", a3, v8);
  }

  else
  {
    v13 = 0;
    v14 = a5;
    do
    {
      snprintf(__str, 0x64uLL, "%d", v13);
      __str[100] = 0;
      result = sub_1000201D4(v7, a3, __str, a4[v13++]);
    }

    while (v14 != v13);
  }

  return result;
}

double sub_10000B0BC(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    do
    {
      v3 = v2[14];
      free(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    do
    {
      v5 = v4[14];
      free(v4);
      v4 = v5;
    }

    while (v5);
  }

  result = 0.0;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_10000B130(uint64_t a1, unint64_t *a2, unsigned int a3)
{
  v5 = 0;
  v6 = a3 >> 3;
  *__str = 0u;
  v17 = 0u;
  do
  {
LABEL_2:
    if (!v6)
    {
      return v5;
    }

    v8 = *a2++;
    v7 = v8;
    --v6;
    v9 = HIDWORD(v8);
  }

  while (!HIDWORD(v8));
  if (v7 == 0xFFFF || v7 > 0x30000000 || v6 < v9)
  {
    return v5;
  }

  switch(v7)
  {
    case 1:
      if ((sub_100020050(a1, "", "version", *a2) & 1) == 0)
      {
        sub_100020530("ASPFTLParseBufferToCxt: version(1) cannot add 1 element to context");
      }

      goto LABEL_161;
    case 2:
      if ((sub_100020050(a1, "", "hostWriteXacts", *a2) & 1) == 0)
      {
        sub_100020530("ASPFTLParseBufferToCxt: hostWriteXacts(2) cannot add 1 element to context");
      }

      goto LABEL_161;
    case 3:
      if ((sub_100020050(a1, "", "hostReadXacts", *a2) & 1) == 0)
      {
        sub_100020530("ASPFTLParseBufferToCxt: hostReadXacts(3) cannot add 1 element to context");
      }

      goto LABEL_161;
    case 4:
      if ((sub_100020050(a1, "", "hostWrites", *a2) & 1) == 0)
      {
        sub_100020530("ASPFTLParseBufferToCxt: hostWrites(4) cannot add 1 element to context");
      }

      goto LABEL_161;
    case 5:
      if ((sub_100020050(a1, "", "hostWritesDyn", *a2) & 1) == 0)
      {
        sub_100020530("ASPFTLParseBufferToCxt: hostWritesDyn(5) cannot add 1 element to context");
      }

      goto LABEL_161;
    case 6:
      if ((sub_100020050(a1, "", "hostWritesStatic", *a2) & 1) == 0)
      {
        sub_100020530("ASPFTLParseBufferToCxt: hostWritesStatic(6) cannot add 1 element to context");
      }

      goto LABEL_161;
    case 7:
      if ((sub_100020050(a1, "", "hostReads", *a2) & 1) == 0)
      {
        sub_100020530("ASPFTLParseBufferToCxt: hostReads(7) cannot add 1 element to context");
      }

      goto LABEL_161;
    case 8:
      if ((sub_100020050(a1, "", "validLbas", *a2) & 1) == 0)
      {
        sub_100020530("ASPFTLParseBufferToCxt: validLbas(8) cannot add 1 element to context");
      }

      goto LABEL_161;
    case 9:
      if ((sub_100020050(a1, "", "shutdowns", *a2) & 1) == 0)
      {
        sub_100020530("ASPFTLParseBufferToCxt: shutdowns(9) cannot add 1 element to context");
      }

      goto LABEL_161;
    case 10:
      if ((sub_100020050(a1, "", "boots", *a2) & 1) == 0)
      {
        sub_100020530("ASPFTLParseBufferToCxt: boots(10) cannot add 1 element to context");
      }

      goto LABEL_161;
    case 11:
      if ((sub_100020050(a1, "", "uncleanBoots", *a2) & 1) == 0)
      {
        sub_100020530("ASPFTLParseBufferToCxt: uncleanBoots(11) cannot add 1 element to context");
      }

      goto LABEL_161;
    case 12:
      if ((sub_100020050(a1, "", "IND_pool_free", *a2) & 1) == 0)
      {
        sub_100020530("ASPFTLParseBufferToCxt: IND_pool_free(12) cannot add 1 element to context");
      }

      goto LABEL_161;
    case 13:
      if ((sub_100020050(a1, "", "IND_pool_count", *a2) & 1) == 0)
      {
        sub_100020530("ASPFTLParseBufferToCxt: IND_pool_count(13) cannot add 1 element to context");
      }

      goto LABEL_161;
    case 14:
      if (v9 != 10)
      {
        sub_100020530("ASPFTLParseBufferToCxt: hostWriteLogHisto(14): (#10) cfg elements != (%d) buffer elements", v9);
      }

      if (v9 >= 0xB)
      {
        v12 = 10;
      }

      else
      {
        v12 = v9;
      }

      if (sub_1000189BC(a1, "hostWriteLogHisto_", a2, 8u, v12))
      {
        goto LABEL_110;
      }

      sub_100020530("ASPFTLParseBufferToCxt: hostWriteLogHisto(14): Cannot add 10 elements to context", v14);
      return v5;
    case 15:
      if (v9 != 10)
      {
        sub_100020530("ASPFTLParseBufferToCxt: hostReadLogHisto(15): (#10) cfg elements != (%d) buffer elements", v9);
      }

      if (v9 >= 0xB)
      {
        v12 = 10;
      }

      else
      {
        v12 = v9;
      }

      if (sub_1000189BC(a1, "hostReadLogHisto_", a2, 8u, v12))
      {
        goto LABEL_110;
      }

      sub_100020530("ASPFTLParseBufferToCxt: hostReadLogHisto(15): Cannot add 10 elements to context", v14);
      return v5;
    case 16:
      if ((sub_100020050(a1, "", "gcWrites", *a2) & 1) == 0)
      {
        sub_100020530("ASPFTLParseBufferToCxt: gcWrites(16) cannot add 1 element to context");
      }

      goto LABEL_161;
    case 17:
      if ((sub_100020050(a1, "", "wearLevMoves", *a2) & 1) == 0)
      {
        sub_100020530("ASPFTLParseBufferToCxt: wearLevMoves(17) cannot add 1 element to context");
      }

      goto LABEL_161;
    case 18:
      if ((sub_100020050(a1, "", "nandWrites", *a2) & 1) == 0)
      {
        sub_100020530("ASPFTLParseBufferToCxt: nandWrites(18) cannot add 1 element to context");
      }

      goto LABEL_161;
    case 19:
      if ((sub_100020050(a1, "", "nandReads", *a2) & 1) == 0)
      {
        sub_100020530("ASPFTLParseBufferToCxt: nandReads(19) cannot add 1 element to context");
      }

      goto LABEL_161;
    case 20:
      if ((sub_100020050(a1, "", "bandErases", *a2) & 1) == 0)
      {
        sub_100020530("ASPFTLParseBufferToCxt: bandErases(20) cannot add 1 element to context");
      }

      goto LABEL_161;
    case 22:
      if ((sub_100020050(a1, "", "numPfail", *a2) & 1) == 0)
      {
        sub_100020530("ASPFTLParseBufferToCxt: numPfail(22) cannot add 1 element to context");
      }

      goto LABEL_161;
    case 23:
      if ((sub_100020050(a1, "", "numEfail", *a2) & 1) == 0)
      {
        sub_100020530("ASPFTLParseBufferToCxt: numEfail(23) cannot add 1 element to context");
      }

      goto LABEL_161;
    case 24:
      if ((sub_100020050(a1, "", "numPerformanceRefreshes", *a2) & 1) == 0)
      {
        sub_100020530("ASPFTLParseBufferToCxt: numPerformanceRefreshes(24) cannot add 1 element to context");
      }

      goto LABEL_161;
    case 27:
      if ((sub_100020050(a1, "", "hostWritesMeta", *a2) & 1) == 0)
      {
        sub_100020530("ASPFTLParseBufferToCxt: hostWritesMeta(27) cannot add 1 element to context");
      }

      goto LABEL_161;
    case 28:
      if ((sub_100020050(a1, "", "numSleepOps", *a2) & 1) == 0)
      {
        sub_100020530("ASPFTLParseBufferToCxt: numSleepOps(28) cannot add 1 element to context");
      }

      goto LABEL_161;
    case 30:
      if ((sub_100020050(a1, "", "cntTimeWentBackWardOnBoot", *a2) & 1) == 0)
      {
        sub_100020530("ASPFTLParseBufferToCxt: cntTimeWentBackWardOnBoot(30) cannot add 1 element to context");
      }

      goto LABEL_161;
    case 31:
      if ((sub_100020050(a1, "", "cntTimeWentBackWard", *a2) & 1) == 0)
      {
        sub_100020530("ASPFTLParseBufferToCxt: cntTimeWentBackWard(31) cannot add 1 element to context");
      }

      goto LABEL_161;
    case 34:
      if ((sub_100020050(a1, "", "powerOnHours", *a2) & 1) == 0)
      {
        sub_100020530("ASPFTLParseBufferToCxt: powerOnHours(34) cannot add 1 element to context");
      }

      goto LABEL_161;
    case 36:
      if ((sub_100020050(a1, "", "smartCritWarnings", *a2) & 1) == 0)
      {
        sub_100020530("ASPFTLParseBufferToCxt: smartCritWarnings(36) cannot add 1 element to context");
      }

      goto LABEL_161;
    case 37:
      if ((sub_100020050(a1, "", "numFlushes", *a2) & 1) == 0)
      {
        sub_100020530("ASPFTLParseBufferToCxt: numFlushes(37) cannot add 1 element to context");
      }

      goto LABEL_161;
    case 38:
      if ((sub_100020050(a1, "", "numUnmap", *a2) & 1) == 0)
      {
        sub_100020530("ASPFTLParseBufferToCxt: numUnmap(38) cannot add 1 element to context");
      }

      goto LABEL_161;
    case 39:
      if ((sub_100020050(a1, "", "numUnmapSec", *a2) & 1) == 0)
      {
        sub_100020530("ASPFTLParseBufferToCxt: numUnmapSec(39) cannot add 1 element to context");
      }

      goto LABEL_161;
    case 41:
      if ((sub_100020050(a1, "", "clogProgram", *a2) & 1) == 0)
      {
        sub_100020530("ASPFTLParseBufferToCxt: clogProgram(41) cannot add 1 element to context");
      }

      goto LABEL_161;
    case 42:
      if ((sub_100020050(a1, "", "clogPFail", *a2) & 1) == 0)
      {
        sub_100020530("ASPFTLParseBufferToCxt: clogPFail(42) cannot add 1 element to context");
      }

      goto LABEL_161;
    case 43:
      if ((sub_100020050(a1, "", "clogRead", *a2) & 1) == 0)
      {
        sub_100020530("ASPFTLParseBufferToCxt: clogRead(43) cannot add 1 element to context");
      }

      goto LABEL_161;
    case 44:
      if ((sub_100020050(a1, "", "clogRFail", *a2) & 1) == 0)
      {
        sub_100020530("ASPFTLParseBufferToCxt: clogRFail(44) cannot add 1 element to context");
      }

      goto LABEL_161;
    case 45:
      if ((sub_100020050(a1, "", "maxHighEnduranceBlockErases", *a2) & 1) == 0)
      {
        sub_100020530("ASPFTLParseBufferToCxt: maxHighEnduranceBlockErases(45) cannot add 1 element to context");
      }

      goto LABEL_161;
    case 46:
      if ((sub_100020050(a1, "", "numFactoryBad", *a2) & 1) == 0)
      {
        sub_100020530("ASPFTLParseBufferToCxt: numFactoryBad(46) cannot add 1 element to context");
      }

      goto LABEL_161;
    case 47:
      if ((sub_100020050(a1, "", "numGrownBad", *a2) & 1) == 0)
      {
        sub_100020530("ASPFTLParseBufferToCxt: numGrownBad(47) cannot add 1 element to context");
      }

      goto LABEL_161;
    case 48:
      if ((sub_100020050(a1, "", "numFreeVirtualBlocks", *a2) & 1) == 0)
      {
        sub_100020530("ASPFTLParseBufferToCxt: numFreeVirtualBlocks(48) cannot add 1 element to context");
      }

      goto LABEL_161;
    case 49:
      if ((sub_100020050(a1, "", "bytesPerPage", *a2) & 1) == 0)
      {
        sub_100020530("ASPFTLParseBufferToCxt: bytesPerPage(49) cannot add 1 element to context");
      }

      goto LABEL_161;
    case 50:
      if ((sub_100020050(a1, "", "pagesPerVirtualBlock", *a2) & 1) == 0)
      {
        sub_100020530("ASPFTLParseBufferToCxt: pagesPerVirtualBlock(50) cannot add 1 element to context");
      }

      goto LABEL_161;
    case 51:
      if ((sub_100020050(a1, "", "blocksPerVirtualBlock", *a2) & 1) == 0)
      {
        sub_100020530("ASPFTLParseBufferToCxt: blocksPerVirtualBlock(51) cannot add 1 element to context");
      }

      goto LABEL_161;
    case 52:
      if ((sub_100020050(a1, "", "numVirtualBlocks", *a2) & 1) == 0)
      {
        sub_100020530("ASPFTLParseBufferToCxt: numVirtualBlocks(52) cannot add 1 element to context");
      }

      goto LABEL_161;
    case 53:
      if ((sub_100020050(a1, "", "exportVersion", *a2) & 1) == 0)
      {
        sub_100020530("ASPFTLParseBufferToCxt: exportVersion(53) cannot add 1 element to context");
      }

      goto LABEL_161;
    case 54:
      if (v9 != 100)
      {
        sub_100020530("ASPFTLParseBufferToCxt: ECBins(54): (#100) cfg elements != (%d) buffer elements", v9);
      }

      if (v9 >= 0x65)
      {
        v12 = 100;
      }

      else
      {
        v12 = v9;
      }

      if (sub_1000189BC(a1, "ECBins_", a2, 8u, v12))
      {
        goto LABEL_110;
      }

      sub_100020530("ASPFTLParseBufferToCxt: ECBins(54): Cannot add 100 elements to context", v14);
      return v5;
    case 55:
      if (v9 != 100)
      {
        sub_100020530("ASPFTLParseBufferToCxt: RCBins(55): (#100) cfg elements != (%d) buffer elements", v9);
      }

      if (v9 >= 0x65)
      {
        v12 = 100;
      }

      else
      {
        v12 = v9;
      }

      if (sub_1000189BC(a1, "RCBins_", a2, 8u, v12))
      {
        goto LABEL_110;
      }

      sub_100020530("ASPFTLParseBufferToCxt: RCBins(55): Cannot add 100 elements to context", v14);
      return v5;
    case 56:
      if ((sub_100020050(a1, "", "utilFormatTime", *a2) & 1) == 0)
      {
        sub_100020530("ASPFTLParseBufferToCxt: utilFormatTime(56) cannot add 1 element to context");
      }

      goto LABEL_161;
    case 57:
      if ((sub_100020050(a1, "", "calendarTime", *a2) & 1) == 0)
      {
        sub_100020530("ASPFTLParseBufferToCxt: calendarTime(57) cannot add 1 element to context");
      }

      goto LABEL_161;
    case 58:
      if ((sub_100020050(a1, "", "wallTime", *a2) & 1) == 0)
      {
        sub_100020530("ASPFTLParseBufferToCxt: wallTime(58) cannot add 1 element to context");
      }

      goto LABEL_161;
    case 59:
      if ((sub_100020050(a1, "", "cmdq_flush_us", *a2) & 1) == 0)
      {
        sub_100020530("ASPFTLParseBufferToCxt: cmdq_flush_us(59) cannot add 1 element to context");
      }

      goto LABEL_161;
    case 60:
      if ((sub_100020050(a1, "", "cmdq_unmap_us", *a2) & 1) == 0)
      {
        sub_100020530("ASPFTLParseBufferToCxt: cmdq_unmap_us(60) cannot add 1 element to context");
      }

      goto LABEL_161;
    case 61:
      if ((sub_100020050(a1, "", "cmdq_pri0_r_us", *a2) & 1) == 0)
      {
        sub_100020530("ASPFTLParseBufferToCxt: cmdq_pri0_r_us(61) cannot add 1 element to context");
      }

      goto LABEL_161;
    case 62:
      if ((sub_100020050(a1, "", "cmdq_pri0_w_us", *a2) & 1) == 0)
      {
        sub_100020530("ASPFTLParseBufferToCxt: cmdq_pri0_w_us(62) cannot add 1 element to context");
      }

      goto LABEL_161;
    case 63:
      if ((sub_100020050(a1, "", "cmdq_pri1_r_us", *a2) & 1) == 0)
      {
        sub_100020530("ASPFTLParseBufferToCxt: cmdq_pri1_r_us(63) cannot add 1 element to context");
      }

      goto LABEL_161;
    case 64:
      if ((sub_100020050(a1, "", "cmdq_pri1_w_us", *a2) & 1) == 0)
      {
        sub_100020530("ASPFTLParseBufferToCxt: cmdq_pri1_w_us(64) cannot add 1 element to context");
      }

      goto LABEL_161;
    case 65:
      if ((sub_100020050(a1, "", "cmdq_pri2_r_us", *a2) & 1) == 0)
      {
        sub_100020530("ASPFTLParseBufferToCxt: cmdq_pri2_r_us(65) cannot add 1 element to context");
      }

      goto LABEL_161;
    case 66:
      if ((sub_100020050(a1, "", "cmdq_pri2_w_us", *a2) & 1) == 0)
      {
        sub_100020530("ASPFTLParseBufferToCxt: cmdq_pri2_w_us(66) cannot add 1 element to context");
      }

      goto LABEL_161;
    case 67:
      if ((sub_100020050(a1, "", "cmdq_pri3_r_us", *a2) & 1) == 0)
      {
        sub_100020530("ASPFTLParseBufferToCxt: cmdq_pri3_r_us(67) cannot add 1 element to context");
      }

      goto LABEL_161;
    case 68:
      if ((sub_100020050(a1, "", "cmdq_pri3_w_us", *a2) & 1) == 0)
      {
        sub_100020530("ASPFTLParseBufferToCxt: cmdq_pri3_w_us(68) cannot add 1 element to context");
      }

      goto LABEL_161;
    case 69:
      if ((sub_100020050(a1, "", "host_idle_ms", *a2) & 1) == 0)
      {
        sub_100020530("ASPFTLParseBufferToCxt: host_idle_ms(69) cannot add 1 element to context");
      }

      goto LABEL_161;
    case 70:
      if ((sub_100020050(a1, "", "cmd_hysteresis_window_us", *a2) & 1) == 0)
      {
        sub_100020530("ASPFTLParseBufferToCxt: cmd_hysteresis_window_us(70) cannot add 1 element to context");
      }

      goto LABEL_161;
    case 71:
      if ((sub_100020050(a1, "", "cmd_lowPriHoldoffDelay_us", *a2) & 1) == 0)
      {
        sub_100020530("ASPFTLParseBufferToCxt: cmd_lowPriHoldoffDelay_us(71) cannot add 1 element to context");
      }

      goto LABEL_161;
    case 72:
      if ((sub_100020050(a1, "", "cmd_lowPriHoldoffEnabled", *a2) & 1) == 0)
      {
        sub_100020530("ASPFTLParseBufferToCxt: cmd_lowPriHoldoffEnabled(72) cannot add 1 element to context");
      }

      goto LABEL_161;
    default:
      switch(v7)
      {
        case 73:
          if ((sub_100020050(a1, "", "cmd_expedite_num_success", *a2) & 1) == 0)
          {
            sub_100020530("ASPFTLParseBufferToCxt: cmd_expedite_num_success(73) cannot add 1 element to context");
          }

          goto LABEL_161;
        case 75:
          if ((sub_100020050(a1, "", "cmd_expedite_num_failures", *a2) & 1) == 0)
          {
            sub_100020530("ASPFTLParseBufferToCxt: cmd_expedite_num_failures(75) cannot add 1 element to context");
          }

          goto LABEL_161;
        case 76:
          if ((sub_100020050(a1, "", "num_trimerase", *a2) & 1) == 0)
          {
            sub_100020530("ASPFTLParseBufferToCxt: num_trimerase(76) cannot add 1 element to context");
          }

          goto LABEL_161;
        case 77:
          if ((sub_100020050(a1, "", "staticSizeInMB", *a2) & 1) == 0)
          {
            sub_100020530("ASPFTLParseBufferToCxt: staticSizeInMB(77) cannot add 1 element to context");
          }

          goto LABEL_161;
        case 80:
          if ((sub_100020050(a1, "", "slcInvalidations", *a2) & 1) == 0)
          {
            sub_100020530("ASPFTLParseBufferToCxt: slcInvalidations(80) cannot add 1 element to context");
          }

          goto LABEL_161;
        case 81:
          if ((sub_100020050(a1, "", "slcGCInvalidations", *a2) & 1) == 0)
          {
            sub_100020530("ASPFTLParseBufferToCxt: slcGCInvalidations(81) cannot add 1 element to context");
          }

          goto LABEL_161;
        case 82:
          if ((sub_100020050(a1, "", "hostSectorsDuringGCon", *a2) & 1) == 0)
          {
            sub_100020530("ASPFTLParseBufferToCxt: hostSectorsDuringGCon(82) cannot add 1 element to context");
          }

          goto LABEL_161;
        case 83:
          if ((sub_100020050(a1, "", "highWaterMarkSLCUsed", *a2) & 1) == 0)
          {
            sub_100020530("ASPFTLParseBufferToCxt: highWaterMarkSLCUsed(83) cannot add 1 element to context");
          }

          goto LABEL_161;
        case 84:
          if ((sub_100020050(a1, "", "intermediateBandErases", *a2) & 1) == 0)
          {
            sub_100020530("ASPFTLParseBufferToCxt: intermediateBandErases(84) cannot add 1 element to context");
          }

          goto LABEL_161;
        case 85:
          if ((sub_100020050(a1, "", "intermediatePartitionStart", *a2) & 1) == 0)
          {
            sub_100020530("ASPFTLParseBufferToCxt: intermediatePartitionStart(85) cannot add 1 element to context");
          }

          goto LABEL_161;
        case 86:
          if ((sub_100020050(a1, "", "userPartitionStart", *a2) & 1) == 0)
          {
            sub_100020530("ASPFTLParseBufferToCxt: userPartitionStart(86) cannot add 1 element to context");
          }

          goto LABEL_161;
        case 87:
          if ((sub_100020050(a1, "", "iolog_lbas", *a2) & 1) == 0)
          {
            sub_100020530("ASPFTLParseBufferToCxt: iolog_lbas(87) cannot add 1 element to context");
          }

          goto LABEL_161;
        case 88:
          if (v9 != 10)
          {
            sub_100020530("ASPFTLParseBufferToCxt: bandsAgeBins(88): (#10) cfg elements != (%d) buffer elements", v9);
          }

          if (v9 >= 0xB)
          {
            v12 = 10;
          }

          else
          {
            v12 = v9;
          }

          if (sub_1000189BC(a1, "bandsAgeBins_", a2, 8u, v12))
          {
            goto LABEL_110;
          }

          sub_100020530("ASPFTLParseBufferToCxt: bandsAgeBins(88): Cannot add 10 elements to context", v14);
          return v5;
        case 89:
          if (v9 != 10)
          {
            sub_100020530("ASPFTLParseBufferToCxt: intermediateBandsAgeBins(89): (#10) cfg elements != (%d) buffer elements", v9);
          }

          if (v9 >= 0xB)
          {
            v12 = 10;
          }

          else
          {
            v12 = v9;
          }

          if (sub_1000189BC(a1, "intermediateBandsAgeBins_", a2, 8u, v12))
          {
            goto LABEL_110;
          }

          sub_100020530("ASPFTLParseBufferToCxt: intermediateBandsAgeBins(89): Cannot add 10 elements to context", v14);
          return v5;
        case 90:
          if (v9 != 160)
          {
            sub_100020530("ASPFTLParseBufferToCxt: qosPerCmdQ(90): (#160) cfg elements != (%d) buffer elements", v9);
          }

          if (v9 >= 0xA1)
          {
            v12 = 160;
          }

          else
          {
            v12 = v9;
          }

          if (sub_1000189BC(a1, "qosPerCmdQ_", a2, 8u, v12))
          {
            goto LABEL_110;
          }

          sub_100020530("ASPFTLParseBufferToCxt: qosPerCmdQ(90): Cannot add 160 elements to context", v14);
          return v5;
        case 91:
          if (v9 != 10)
          {
            sub_100020530("ASPFTLParseBufferToCxt: maxQosPerCmdQ(91): (#10) cfg elements != (%d) buffer elements", v9);
          }

          if (v9 >= 0xB)
          {
            v12 = 10;
          }

          else
          {
            v12 = v9;
          }

          if (sub_1000189BC(a1, "maxQosPerCmdQ_", a2, 8u, v12))
          {
            goto LABEL_110;
          }

          sub_100020530("ASPFTLParseBufferToCxt: maxQosPerCmdQ(91): Cannot add 10 elements to context", v14);
          return v5;
        case 92:
          if ((sub_100020050(a1, "", "shutdownDuringGC", *a2) & 1) == 0)
          {
            sub_100020530("ASPFTLParseBufferToCxt: shutdownDuringGC(92) cannot add 1 element to context");
          }

          goto LABEL_161;
        case 93:
          if (v9 != 3)
          {
            sub_100020530("ASPFTLParseBufferToCxt: numBandsRefreshedForAgePerTier(93): (#3) cfg elements != (%d) buffer elements", v9);
          }

          if (v7 >> 34)
          {
            v12 = 3;
          }

          else
          {
            v12 = v9;
          }

          if (sub_1000189BC(a1, "numBandsRefreshedForAgePerTier_", a2, 8u, v12))
          {
            goto LABEL_110;
          }

          sub_100020530("ASPFTLParseBufferToCxt: numBandsRefreshedForAgePerTier(93): Cannot add 3 elements to context", v14);
          return v5;
        case 94:
          if (v9 != 20)
          {
            sub_100020530("ASPFTLParseBufferToCxt: bdrDeltaHot(94): (#20) cfg elements != (%d) buffer elements", v9);
          }

          if (v9 >= 0x15)
          {
            v12 = 20;
          }

          else
          {
            v12 = v9;
          }

          if (sub_1000189BC(a1, "bdrDeltaHot_", a2, 8u, v12))
          {
            goto LABEL_110;
          }

          sub_100020530("ASPFTLParseBufferToCxt: bdrDeltaHot(94): Cannot add 20 elements to context", v14);
          return v5;
        case 95:
          if ((sub_100020050(a1, "", "numRefreshOnClockLoss", *a2) & 1) == 0)
          {
            sub_100020530("ASPFTLParseBufferToCxt: numRefreshOnClockLoss(95) cannot add 1 element to context");
          }

          goto LABEL_161;
        case 96:
          if ((sub_100020050(a1, "", "numRefreshOnErrNandRefreshRel", *a2) & 1) == 0)
          {
            sub_100020530("ASPFTLParseBufferToCxt: numRefreshOnErrNandRefreshRel(96) cannot add 1 element to context");
          }

          goto LABEL_161;
        case 97:
          if ((sub_100020050(a1, "", "numBGRefreshMoves", *a2) & 1) == 0)
          {
            sub_100020530("ASPFTLParseBufferToCxt: numBGRefreshMoves(97) cannot add 1 element to context");
          }

          goto LABEL_161;
        case 98:
          if ((sub_100020050(a1, "", "numBGPaddingMoves", *a2) & 1) == 0)
          {
            sub_100020530("ASPFTLParseBufferToCxt: numBGPaddingMoves(98) cannot add 1 element to context");
          }

          goto LABEL_161;
        case 99:
          if ((sub_100020050(a1, "", "hostWritesPhoto", *a2) & 1) == 0)
          {
            sub_100020530("ASPFTLParseBufferToCxt: hostWritesPhoto(99) cannot add 1 element to context");
          }

          goto LABEL_161;
        case 100:
          if ((sub_100020050(a1, "", "INDPooldFree", *a2) & 1) == 0)
          {
            sub_100020530("ASPFTLParseBufferToCxt: INDPooldFree(100) cannot add 1 element to context");
          }

          goto LABEL_161;
        case 101:
          if ((sub_100020050(a1, "", "INDContigCount", *a2) & 1) == 0)
          {
            sub_100020530("ASPFTLParseBufferToCxt: INDContigCount(101) cannot add 1 element to context");
          }

          goto LABEL_161;
        case 102:
          if ((sub_100020050(a1, "", "INDValidContigCount", *a2) & 1) == 0)
          {
            sub_100020530("ASPFTLParseBufferToCxt: INDValidContigCount(102) cannot add 1 element to context");
          }

          goto LABEL_161;
        case 103:
          if ((sub_100020050(a1, "", "INDMinContigSize", *a2) & 1) == 0)
          {
            sub_100020530("ASPFTLParseBufferToCxt: INDMinContigSize(103) cannot add 1 element to context");
          }

          goto LABEL_161;
        case 104:
          if ((sub_100020050(a1, "", "INDMaxContigSize", *a2) & 1) == 0)
          {
            sub_100020530("ASPFTLParseBufferToCxt: INDMaxContigSize(104) cannot add 1 element to context");
          }

          goto LABEL_161;
        case 105:
          if ((sub_100020050(a1, "", "INDAveContigSize", *a2) & 1) == 0)
          {
            sub_100020530("ASPFTLParseBufferToCxt: INDAveContigSize(105) cannot add 1 element to context");
          }

          goto LABEL_161;
        case 106:
          if ((sub_100020050(a1, "", "INDpoolSize", *a2) & 1) == 0)
          {
            sub_100020530("ASPFTLParseBufferToCxt: INDpoolSize(106) cannot add 1 element to context");
          }

          goto LABEL_161;
        case 107:
          if ((sub_100020050(a1, "", "pushSyncWrites", *a2) & 1) == 0)
          {
            sub_100020530("ASPFTLParseBufferToCxt: pushSyncWrites(107) cannot add 1 element to context");
          }

          goto LABEL_161;
        case 109:
          if ((sub_100020050(a1, "", "cmd_rw_hysteresis_us", *a2) & 1) == 0)
          {
            sub_100020530("ASPFTLParseBufferToCxt: cmd_rw_hysteresis_us(109) cannot add 1 element to context");
          }

          goto LABEL_161;
        case 110:
          if ((sub_100020050(a1, "", "photoFlowMode", *a2) & 1) == 0)
          {
            sub_100020530("ASPFTLParseBufferToCxt: photoFlowMode(110) cannot add 1 element to context");
          }

          goto LABEL_161;
        case 112:
          if ((sub_100020050(a1, "", "numBandsPaddedForAge", *a2) & 1) == 0)
          {
            sub_100020530("ASPFTLParseBufferToCxt: numBandsPaddedForAge(112) cannot add 1 element to context");
          }

          goto LABEL_161;
        case 113:
          if (v9 != 4)
          {
            sub_100020530("ASPFTLParseBufferToCxt: bandsPerHostFlow(113): (#4) cfg elements != (%d) buffer elements", v9);
          }

          if (v9 >= 5)
          {
            v12 = 4;
          }

          else
          {
            v12 = v9;
          }

          if (sub_1000189BC(a1, "bandsPerHostFlow_", a2, 8u, v12))
          {
            goto LABEL_110;
          }

          sub_100020530("ASPFTLParseBufferToCxt: bandsPerHostFlow(113): Cannot add 4 elements to context", v14);
          return v5;
        case 114:
          if (v9 != 5)
          {
            sub_100020530("ASPFTLParseBufferToCxt: bandsPerSpecialFlow(114): (#5) cfg elements != (%d) buffer elements", v9);
          }

          if (v7 >> 33 >= 3)
          {
            v12 = 5;
          }

          else
          {
            v12 = v9;
          }

          if (sub_1000189BC(a1, "bandsPerSpecialFlow_", a2, 8u, v12))
          {
            goto LABEL_110;
          }

          sub_100020530("ASPFTLParseBufferToCxt: bandsPerSpecialFlow(114): Cannot add 5 elements to context", v14);
          return v5;
        case 115:
          if (v9 != 4)
          {
            sub_100020530("ASPFTLParseBufferToCxt: secsPerHostFlow(115): (#4) cfg elements != (%d) buffer elements", v9);
          }

          if (v9 >= 5)
          {
            v12 = 4;
          }

          else
          {
            v12 = v9;
          }

          if (sub_1000189BC(a1, "secsPerHostFlow_", a2, 8u, v12))
          {
            goto LABEL_110;
          }

          sub_100020530("ASPFTLParseBufferToCxt: secsPerHostFlow(115): Cannot add 4 elements to context", v14);
          return v5;
        case 116:
          if (v9 != 5)
          {
            sub_100020530("ASPFTLParseBufferToCxt: secsPerSpecialFlow(116): (#5) cfg elements != (%d) buffer elements", v9);
          }

          if (v7 >> 33 >= 3)
          {
            v12 = 5;
          }

          else
          {
            v12 = v9;
          }

          if (sub_1000189BC(a1, "secsPerSpecialFlow_", a2, 8u, v12))
          {
            goto LABEL_110;
          }

          sub_100020530("ASPFTLParseBufferToCxt: secsPerSpecialFlow(116): Cannot add 5 elements to context", v14);
          return v5;
        case 118:
          if (v9 != 4)
          {
            sub_100020530("ASPFTLParseBufferToCxt: overWritesPerHostFlow(118): (#4) cfg elements != (%d) buffer elements", v9);
          }

          if (v9 >= 5)
          {
            v12 = 4;
          }

          else
          {
            v12 = v9;
          }

          if (sub_1000189BC(a1, "overWritesPerHostFlow_", a2, 8u, v12))
          {
            goto LABEL_110;
          }

          sub_100020530("ASPFTLParseBufferToCxt: overWritesPerHostFlow(118): Cannot add 4 elements to context", v14);
          return v5;
        case 119:
          if (v9 != 5)
          {
            sub_100020530("ASPFTLParseBufferToCxt: overWritesPerSpecialFlow(119): (#5) cfg elements != (%d) buffer elements", v9);
          }

          if (v7 >> 33 >= 3)
          {
            v12 = 5;
          }

          else
          {
            v12 = v9;
          }

          if (sub_1000189BC(a1, "overWritesPerSpecialFlow_", a2, 8u, v12))
          {
            goto LABEL_110;
          }

          sub_100020530("ASPFTLParseBufferToCxt: overWritesPerSpecialFlow(119): Cannot add 5 elements to context", v14);
          return v5;
        case 120:
          if (v9 != 10)
          {
            sub_100020530("ASPFTLParseBufferToCxt: padSectorsPerFlow(120): (#10) cfg elements != (%d) buffer elements", v9);
          }

          if (v9 >= 0xB)
          {
            v12 = 10;
          }

          else
          {
            v12 = v9;
          }

          if (sub_1000189BC(a1, "padSectorsPerFlow_", a2, 8u, v12))
          {
            goto LABEL_110;
          }

          sub_100020530("ASPFTLParseBufferToCxt: padSectorsPerFlow(120): Cannot add 10 elements to context", v14);
          return v5;
        case 121:
          if (v9 != 4)
          {
            sub_100020530("ASPFTLParseBufferToCxt: padSizes(121): (#4) cfg elements != (%d) buffer elements", v9);
          }

          if (v9 >= 5)
          {
            v12 = 4;
          }

          else
          {
            v12 = v9;
          }

          if (sub_1000189BC(a1, "padSizes_", a2, 8u, v12))
          {
            goto LABEL_110;
          }

          sub_100020530("ASPFTLParseBufferToCxt: padSizes(121): Cannot add 4 elements to context", v14);
          return v5;
        case 122:
          if (v9 != 4)
          {
            sub_100020530("ASPFTLParseBufferToCxt: unmapsPerHostFlow(122): (#4) cfg elements != (%d) buffer elements", v9);
          }

          if (v9 >= 5)
          {
            v12 = 4;
          }

          else
          {
            v12 = v9;
          }

          if (sub_1000189BC(a1, "unmapsPerHostFlow_", a2, 8u, v12))
          {
            goto LABEL_110;
          }

          sub_100020530("ASPFTLParseBufferToCxt: unmapsPerHostFlow(122): Cannot add 4 elements to context", v14);
          return v5;
        case 123:
          if (v9 != 5)
          {
            sub_100020530("ASPFTLParseBufferToCxt: unmapsPerSpecialFlow(123): (#5) cfg elements != (%d) buffer elements", v9);
          }

          if (v7 >> 33 >= 3)
          {
            v12 = 5;
          }

          else
          {
            v12 = v9;
          }

          if (sub_1000189BC(a1, "unmapsPerSpecialFlow_", a2, 8u, v12))
          {
            goto LABEL_110;
          }

          sub_100020530("ASPFTLParseBufferToCxt: unmapsPerSpecialFlow(123): Cannot add 5 elements to context", v14);
          return v5;
        case 124:
          if (v9 != 2)
          {
            sub_100020530("ASPFTLParseBufferToCxt: coldestCycle(124): (#2) cfg elements != (%d) buffer elements", v9);
          }

          if (v9 >= 3)
          {
            v12 = 2;
          }

          else
          {
            v12 = v9;
          }

          if (sub_1000189BC(a1, "coldestCycle_", a2, 8u, v12))
          {
            goto LABEL_110;
          }

          sub_100020530("ASPFTLParseBufferToCxt: coldestCycle(124): Cannot add 2 elements to context", v14);
          return v5;
        case 125:
          if (v9 != 2)
          {
            sub_100020530("ASPFTLParseBufferToCxt: hottestCycle(125): (#2) cfg elements != (%d) buffer elements", v9);
          }

          if (v9 >= 3)
          {
            v12 = 2;
          }

          else
          {
            v12 = v9;
          }

          if (sub_1000189BC(a1, "hottestCycle_", a2, 8u, v12))
          {
            goto LABEL_110;
          }

          sub_100020530("ASPFTLParseBufferToCxt: hottestCycle(125): Cannot add 2 elements to context", v14);
          return v5;
        case 126:
          if ((sub_100020050(a1, "", "gcLonlyWrites", *a2) & 1) == 0)
          {
            sub_100020530("ASPFTLParseBufferToCxt: gcLonlyWrites(126) cannot add 1 element to context");
          }

          goto LABEL_161;
        case 127:
          if ((sub_100020050(a1, "", "gcPLWrites", *a2) & 1) == 0)
          {
            sub_100020530("ASPFTLParseBufferToCxt: gcPLWrites(127) cannot add 1 element to context");
          }

          goto LABEL_161;
        case 129:
          if ((sub_100020050(a1, "", "pagesPerVirtualBlockSlc", *a2) & 1) == 0)
          {
            sub_100020530("ASPFTLParseBufferToCxt: pagesPerVirtualBlockSlc(129) cannot add 1 element to context");
          }

          goto LABEL_161;
        case 130:
          if ((sub_100020050(a1, "", "bdrPadding", *a2) & 1) == 0)
          {
            sub_100020530("ASPFTLParseBufferToCxt: bdrPadding(130) cannot add 1 element to context");
          }

          goto LABEL_161;
        case 131:
          if (v9 != 8)
          {
            sub_100020530("ASPFTLParseBufferToCxt: errInjCounters(131): (#8) cfg elements != (%d) buffer elements", v9);
          }

          if (v9 >= 9)
          {
            v12 = 8;
          }

          else
          {
            v12 = v9;
          }

          if (sub_1000189BC(a1, "errInjCounters_", a2, 8u, v12))
          {
            goto LABEL_110;
          }

          sub_100020530("ASPFTLParseBufferToCxt: errInjCounters(131): Cannot add 8 elements to context", v14);
          return v5;
        case 132:
          if ((sub_100020050(a1, "", "raidSuccessfulReconstructionInternal", *a2) & 1) == 0)
          {
            sub_100020530("ASPFTLParseBufferToCxt: raidSuccessfulReconstructionInternal(132) cannot add 1 element to context");
          }

          goto LABEL_161;
        case 133:
          if ((sub_100020050(a1, "", "raidSuccessfulReconstructionHost", *a2) & 1) == 0)
          {
            sub_100020530("ASPFTLParseBufferToCxt: raidSuccessfulReconstructionHost(133) cannot add 1 element to context");
          }

          goto LABEL_161;
        case 134:
          if ((sub_100020050(a1, "", "raidFailedReconstructionInternal", *a2) & 1) == 0)
          {
            sub_100020530("ASPFTLParseBufferToCxt: raidFailedReconstructionInternal(134) cannot add 1 element to context");
          }

          goto LABEL_161;
        case 135:
          if ((sub_100020050(a1, "", "raidFailedReconstructionHost", *a2) & 1) == 0)
          {
            sub_100020530("ASPFTLParseBufferToCxt: raidFailedReconstructionHost(135) cannot add 1 element to context");
          }

          goto LABEL_161;
        case 136:
          if ((sub_100020050(a1, "", "raidBandsPerHostFlow", *a2) & 1) == 0)
          {
            sub_100020530("ASPFTLParseBufferToCxt: raidBandsPerHostFlow(136) cannot add 1 element to context");
          }

          goto LABEL_161;
        case 137:
          if ((sub_100020050(a1, "", "raidSecsPerHostFlow", *a2) & 1) == 0)
          {
            sub_100020530("ASPFTLParseBufferToCxt: raidSecsPerHostFlow(137) cannot add 1 element to context");
          }

          goto LABEL_161;
        case 138:
          if ((sub_100020050(a1, "", "gcFreeL", *a2) & 1) == 0)
          {
            sub_100020530("ASPFTLParseBufferToCxt: gcFreeL(138) cannot add 1 element to context");
          }

          goto LABEL_161;
        case 139:
          if ((sub_100020050(a1, "", "gcDestinations", *a2) & 1) == 0)
          {
            sub_100020530("ASPFTLParseBufferToCxt: gcDestinations(139) cannot add 1 element to context");
          }

          goto LABEL_161;
        case 140:
          if ((sub_100020050(a1, "", "gcFragments", *a2) & 1) == 0)
          {
            sub_100020530("ASPFTLParseBufferToCxt: gcFragments(140) cannot add 1 element to context");
          }

          goto LABEL_161;
        case 141:
          if ((sub_100020050(a1, "", "numMemChoke", *a2) & 1) == 0)
          {
            sub_100020530("ASPFTLParseBufferToCxt: numMemChoke(141) cannot add 1 element to context");
          }

          goto LABEL_161;
        case 142:
          if ((sub_100020050(a1, "", "maxMemChokeDuration", *a2) & 1) == 0)
          {
            sub_100020530("ASPFTLParseBufferToCxt: maxMemChokeDuration(142) cannot add 1 element to context");
          }

          goto LABEL_161;
        case 143:
          if ((sub_100020050(a1, "", "memChokeDuration", *a2) & 1) == 0)
          {
            sub_100020530("ASPFTLParseBufferToCxt: memChokeDuration(143) cannot add 1 element to context");
          }

          goto LABEL_161;
        default:
          switch(v7)
          {
            case 144:
              if ((sub_100020050(a1, "", "numMemExtreme", *a2) & 1) == 0)
              {
                sub_100020530("ASPFTLParseBufferToCxt: numMemExtreme(144) cannot add 1 element to context");
              }

              goto LABEL_161;
            case 145:
              if ((sub_100020050(a1, "", "maxMemExtremeDuration", *a2) & 1) == 0)
              {
                sub_100020530("ASPFTLParseBufferToCxt: maxMemExtremeDuration(145) cannot add 1 element to context");
              }

              goto LABEL_161;
            case 146:
              if ((sub_100020050(a1, "", "memExtremeDuration", *a2) & 1) == 0)
              {
                sub_100020530("ASPFTLParseBufferToCxt: memExtremeDuration(146) cannot add 1 element to context");
              }

              goto LABEL_161;
            case 147:
              if ((sub_100020050(a1, "", "bandGetsExtreme", *a2) & 1) == 0)
              {
                sub_100020530("ASPFTLParseBufferToCxt: bandGetsExtreme(147) cannot add 1 element to context");
              }

              goto LABEL_161;
            case 148:
              if ((sub_100020050(a1, "", "bandGetsLow", *a2) & 1) == 0)
              {
                sub_100020530("ASPFTLParseBufferToCxt: bandGetsLow(148) cannot add 1 element to context");
              }

              goto LABEL_161;
            case 149:
              if ((sub_100020050(a1, "", "numHostChoke", *a2) & 1) == 0)
              {
                sub_100020530("ASPFTLParseBufferToCxt: numHostChoke(149) cannot add 1 element to context");
              }

              goto LABEL_161;
            case 152:
              if ((sub_100020050(a1, "", "AbortSkip_ProgramError", *a2) & 1) == 0)
              {
                sub_100020530("ASPFTLParseBufferToCxt: AbortSkip_ProgramError(152) cannot add 1 element to context");
              }

              goto LABEL_161;
            case 153:
              if ((sub_100020050(a1, "", "AbortSkip_ReadErrorOpenBand", *a2) & 1) == 0)
              {
                sub_100020530("ASPFTLParseBufferToCxt: AbortSkip_ReadErrorOpenBand(153) cannot add 1 element to context");
              }

              goto LABEL_161;
            case 154:
              if ((sub_100020050(a1, "", "AbortSkip_FailedRebuildingParity", *a2) & 1) == 0)
              {
                sub_100020530("ASPFTLParseBufferToCxt: AbortSkip_FailedRebuildingParity(154) cannot add 1 element to context");
              }

              goto LABEL_161;
            case 155:
              if ((sub_100020050(a1, "", "AbortPad_OpenRefreshBand", *a2) & 1) == 0)
              {
                sub_100020530("ASPFTLParseBufferToCxt: AbortPad_OpenRefreshBand(155) cannot add 1 element to context");
              }

              goto LABEL_161;
            case 156:
              if ((sub_100020050(a1, "", "AbortPad_CloseBands", *a2) & 1) == 0)
              {
                sub_100020530("ASPFTLParseBufferToCxt: AbortPad_CloseBands(156) cannot add 1 element to context");
              }

              goto LABEL_161;
            case 157:
              if ((sub_100020050(a1, "", "AbortPad_SetPhoto", *a2) & 1) == 0)
              {
                sub_100020530("ASPFTLParseBufferToCxt: AbortPad_SetPhoto(157) cannot add 1 element to context");
              }

              goto LABEL_161;
            case 158:
              if ((sub_100020050(a1, "", "AbortPad_GcNoSource", *a2) & 1) == 0)
              {
                sub_100020530("ASPFTLParseBufferToCxt: AbortPad_GcNoSource(158) cannot add 1 element to context");
              }

              goto LABEL_161;
            case 159:
              if ((sub_100020050(a1, "", "AbortPad_Format", *a2) & 1) == 0)
              {
                sub_100020530("ASPFTLParseBufferToCxt: AbortPad_Format(159) cannot add 1 element to context");
              }

              goto LABEL_161;
            case 160:
              if ((sub_100020050(a1, "", "nandDiscoveryDuration", *a2) & 1) == 0)
              {
                sub_100020530("ASPFTLParseBufferToCxt: nandDiscoveryDuration(160) cannot add 1 element to context");
              }

              goto LABEL_161;
            case 161:
              if ((sub_100020050(a1, "", "coreCCEnableDuration", *a2) & 1) == 0)
              {
                sub_100020530("ASPFTLParseBufferToCxt: coreCCEnableDuration(161) cannot add 1 element to context");
              }

              goto LABEL_161;
            case 163:
              if ((sub_100020050(a1, "", "coreOpenDuration", *a2) & 1) == 0)
              {
                sub_100020530("ASPFTLParseBufferToCxt: coreOpenDuration(163) cannot add 1 element to context");
              }

              goto LABEL_161;
            case 164:
              if ((sub_100020050(a1, "", "coreWritableDuration", *a2) & 1) == 0)
              {
                sub_100020530("ASPFTLParseBufferToCxt: coreWritableDuration(164) cannot add 1 element to context");
              }

              goto LABEL_161;
            case 165:
              if ((sub_100020050(a1, "", "coreClogLoadDuration", *a2) & 1) == 0)
              {
                sub_100020530("ASPFTLParseBufferToCxt: coreClogLoadDuration(165) cannot add 1 element to context");
              }

              goto LABEL_161;
            case 167:
              if ((sub_100020050(a1, "", "bulkPFail", *a2) & 1) == 0)
              {
                sub_100020530("ASPFTLParseBufferToCxt: bulkPFail(167) cannot add 1 element to context");
              }

              goto LABEL_161;
            case 169:
              if ((sub_100020050(a1, "", "bulkRFail", *a2) & 1) == 0)
              {
                sub_100020530("ASPFTLParseBufferToCxt: bulkRFail(169) cannot add 1 element to context");
              }

              goto LABEL_161;
            case 172:
              if ((sub_100020050(a1, "", "raidSmartErrors", *a2) & 1) == 0)
              {
                sub_100020530("ASPFTLParseBufferToCxt: raidSmartErrors(172) cannot add 1 element to context");
              }

              goto LABEL_161;
            case 182:
              if ((sub_100020050(a1, "", "internalUeccs", *a2) & 1) == 0)
              {
                sub_100020530("ASPFTLParseBufferToCxt: internalUeccs(182) cannot add 1 element to context");
              }

              goto LABEL_161;
            case 183:
              if ((sub_100020050(a1, "", "e2eFail", *a2) & 1) == 0)
              {
                sub_100020530("ASPFTLParseBufferToCxt: e2eFail(183) cannot add 1 element to context");
              }

              goto LABEL_161;
            case 184:
              if ((sub_100020050(a1, "", "TempSensorMax", *a2) & 1) == 0)
              {
                sub_100020530("ASPFTLParseBufferToCxt: TempSensorMax(184) cannot add 1 element to context");
              }

              goto LABEL_161;
            case 185:
              if ((sub_100020050(a1, "", "TempSensorMin", *a2) & 1) == 0)
              {
                sub_100020530("ASPFTLParseBufferToCxt: TempSensorMin(185) cannot add 1 element to context");
              }

              goto LABEL_161;
            case 186:
              if ((sub_100020050(a1, "", "powerUpFromDDR", *a2) & 1) == 0)
              {
                sub_100020530("ASPFTLParseBufferToCxt: powerUpFromDDR(186) cannot add 1 element to context");
              }

              goto LABEL_161;
            case 187:
              if ((sub_100020050(a1, "", "numMemLow", *a2) & 1) == 0)
              {
                sub_100020530("ASPFTLParseBufferToCxt: numMemLow(187) cannot add 1 element to context");
              }

              goto LABEL_161;
            case 188:
              if ((sub_100020050(a1, "", "maxMemLowDuration", *a2) & 1) == 0)
              {
                sub_100020530("ASPFTLParseBufferToCxt: maxMemLowDuration(188) cannot add 1 element to context");
              }

              goto LABEL_161;
            case 189:
              if ((sub_100020050(a1, "", "memLowDuration", *a2) & 1) == 0)
              {
                sub_100020530("ASPFTLParseBufferToCxt: memLowDuration(189) cannot add 1 element to context");
              }

              goto LABEL_161;
            case 190:
              if ((sub_100020050(a1, "", "numFences", *a2) & 1) == 0)
              {
                sub_100020530("ASPFTLParseBufferToCxt: numFences(190) cannot add 1 element to context");
              }

              goto LABEL_161;
            case 191:
              if ((sub_100020050(a1, "", "hostPassiveIO", *a2) & 1) == 0)
              {
                sub_100020530("ASPFTLParseBufferToCxt: hostPassiveIO(191) cannot add 1 element to context");
              }

              goto LABEL_161;
            case 192:
              if ((sub_100020050(a1, "", "odtsMax", *a2) & 1) == 0)
              {
                sub_100020530("ASPFTLParseBufferToCxt: odtsMax(192) cannot add 1 element to context");
              }

              goto LABEL_161;
            case 193:
              if ((sub_100020050(a1, "", "defragMFromOrphans", *a2) & 1) == 0)
              {
                sub_100020530("ASPFTLParseBufferToCxt: defragMFromOrphans(193) cannot add 1 element to context");
              }

              goto LABEL_161;
            case 194:
              if ((sub_100020050(a1, "", "defragMFromFragments", *a2) & 1) == 0)
              {
                sub_100020530("ASPFTLParseBufferToCxt: defragMFromFragments(194) cannot add 1 element to context");
              }

              goto LABEL_161;
            case 195:
              if ((sub_100020050(a1, "", "defragMTime", *a2) & 1) == 0)
              {
                sub_100020530("ASPFTLParseBufferToCxt: defragMTime(195) cannot add 1 element to context");
              }

              goto LABEL_161;
            case 196:
              if ((sub_100020050(a1, "", "defragMMaxTime", *a2) & 1) == 0)
              {
                sub_100020530("ASPFTLParseBufferToCxt: defragMMaxTime(196) cannot add 1 element to context");
              }

              goto LABEL_161;
            case 197:
              if ((sub_100020050(a1, "", "raidFailedLbaMismatch", *a2) & 1) == 0)
              {
                sub_100020530("ASPFTLParseBufferToCxt: raidFailedLbaMismatch(197) cannot add 1 element to context");
              }

              goto LABEL_161;
            case 198:
              if ((sub_100020050(a1, "", "numSyscfgWrites", *a2) & 1) == 0)
              {
                sub_100020530("ASPFTLParseBufferToCxt: numSyscfgWrites(198) cannot add 1 element to context");
              }

              goto LABEL_161;
            case 199:
              if ((sub_100020050(a1, "", "indmbUnitsXfer", *a2) & 1) == 0)
              {
                sub_100020530("ASPFTLParseBufferToCxt: indmbUnitsXfer(199) cannot add 1 element to context");
              }

              goto LABEL_161;
            case 200:
              if ((sub_100020050(a1, "", "indmbUnitsCache", *a2) & 1) == 0)
              {
                sub_100020530("ASPFTLParseBufferToCxt: indmbUnitsCache(200) cannot add 1 element to context");
              }

              goto LABEL_161;
            case 201:
              if ((sub_100020050(a1, "", "indmbUnitsInd", *a2) & 1) == 0)
              {
                sub_100020530("ASPFTLParseBufferToCxt: indmbUnitsInd(201) cannot add 1 element to context");
              }

              goto LABEL_161;
            case 202:
              if ((sub_100020050(a1, "", "wcacheFS_Mbytes", *a2) & 1) == 0)
              {
                sub_100020530("ASPFTLParseBufferToCxt: wcacheFS_Mbytes(202) cannot add 1 element to context");
              }

              goto LABEL_161;
            case 203:
              if ((sub_100020050(a1, "", "wcacheDS_Mbytes", *a2) & 1) == 0)
              {
                sub_100020530("ASPFTLParseBufferToCxt: wcacheDS_Mbytes(203) cannot add 1 element to context");
              }

              goto LABEL_161;
            case 204:
              if ((sub_100020050(a1, "", "powerOnSeconds", *a2) & 1) == 0)
              {
                sub_100020530("ASPFTLParseBufferToCxt: powerOnSeconds(204) cannot add 1 element to context");
              }

              goto LABEL_161;
            case 205:
              if ((sub_100020050(a1, "", "numUnknownTokenHostRead", *a2) & 1) == 0)
              {
                sub_100020530("ASPFTLParseBufferToCxt: numUnknownTokenHostRead(205) cannot add 1 element to context");
              }

              goto LABEL_161;
            case 206:
              if ((sub_100020050(a1, "", "numUnmmapedTokenHostRead", *a2) & 1) == 0)
              {
                sub_100020530("ASPFTLParseBufferToCxt: numUnmmapedTokenHostRead(206) cannot add 1 element to context");
              }

              goto LABEL_161;
            case 207:
              if (v9 != 25)
              {
                sub_100020530("ASPFTLParseBufferToCxt: numOfThrottlingEntriesPerLevel(207): (#25) cfg elements != (%d) buffer elements", v9);
              }

              if (v7 >> 33 >= 0xD)
              {
                v12 = 25;
              }

              else
              {
                v12 = v9;
              }

              if (sub_1000189BC(a1, "numOfThrottlingEntriesPerLevel_", a2, 8u, v12))
              {
                goto LABEL_110;
              }

              sub_100020530("ASPFTLParseBufferToCxt: numOfThrottlingEntriesPerLevel(207): Cannot add 25 elements to context", v14);
              return v5;
            case 208:
              if ((sub_100020050(a1, "", "wcacheFS_MbytesMin", *a2) & 1) == 0)
              {
                sub_100020530("ASPFTLParseBufferToCxt: wcacheFS_MbytesMin(208) cannot add 1 element to context");
              }

              goto LABEL_161;
            case 209:
              if ((sub_100020050(a1, "", "wcacheFS_MbytesMax", *a2) & 1) == 0)
              {
                sub_100020530("ASPFTLParseBufferToCxt: wcacheFS_MbytesMax(209) cannot add 1 element to context");
              }

              goto LABEL_161;
            case 210:
              if ((sub_100020050(a1, "", "prepareForShutdownFailCounter", *a2) & 1) == 0)
              {
                sub_100020530("ASPFTLParseBufferToCxt: prepareForShutdownFailCounter(210) cannot add 1 element to context");
              }

              goto LABEL_161;
            case 211:
              if ((sub_100020050(a1, "", "lpsrEntry", *a2) & 1) == 0)
              {
                sub_100020530("ASPFTLParseBufferToCxt: lpsrEntry(211) cannot add 1 element to context");
              }

              goto LABEL_161;
            case 212:
              if ((sub_100020050(a1, "", "lpsrExit", *a2) & 1) == 0)
              {
                sub_100020530("ASPFTLParseBufferToCxt: lpsrExit(212) cannot add 1 element to context");
              }

              goto LABEL_161;
            case 213:
              if (v9 != 8)
              {
                sub_100020530("ASPFTLParseBufferToCxt: crcInternalReadFail(213): (#8) cfg elements != (%d) buffer elements", v9);
              }

              if (v9 >= 9)
              {
                v12 = 8;
              }

              else
              {
                v12 = v9;
              }

              if (sub_1000189BC(a1, "crcInternalReadFail_", a2, 8u, v12))
              {
                goto LABEL_110;
              }

              sub_100020530("ASPFTLParseBufferToCxt: crcInternalReadFail(213): Cannot add 8 elements to context", v14);
              return v5;
            case 214:
              if ((sub_100020050(a1, "", "wcacheFSEvictCnt", *a2) & 1) == 0)
              {
                sub_100020530("ASPFTLParseBufferToCxt: wcacheFSEvictCnt(214) cannot add 1 element to context");
              }

              goto LABEL_161;
            case 215:
              if ((sub_100020050(a1, "", "wcacheFSEvictSize", *a2) & 1) == 0)
              {
                sub_100020530("ASPFTLParseBufferToCxt: wcacheFSEvictSize(215) cannot add 1 element to context");
              }

              goto LABEL_161;
            case 216:
              if ((sub_100020050(a1, "", "wcacheFSWr", *a2) & 1) == 0)
              {
                sub_100020530("ASPFTLParseBufferToCxt: wcacheFSWr(216) cannot add 1 element to context");
              }

              goto LABEL_161;
            case 217:
              if ((sub_100020050(a1, "", "wcacheDSWr", *a2) & 1) == 0)
              {
                sub_100020530("ASPFTLParseBufferToCxt: wcacheDSWr(217) cannot add 1 element to context");
              }

              goto LABEL_161;
            case 218:
              if (v9 != 10)
              {
                sub_100020530("ASPFTLParseBufferToCxt: wcacheFSEvictSizeLogDist(218): (#10) cfg elements != (%d) buffer elements", v9);
              }

              if (v9 >= 0xB)
              {
                v12 = 10;
              }

              else
              {
                v12 = v9;
              }

              if (sub_1000189BC(a1, "wcacheFSEvictSizeLogDist_", a2, 8u, v12))
              {
                goto LABEL_110;
              }

              sub_100020530("ASPFTLParseBufferToCxt: wcacheFSEvictSizeLogDist(218): Cannot add 10 elements to context", v14);
              return v5;
            case 219:
              if ((sub_100020050(a1, "", "prepareForShutdownTimeoutCounter", *a2) & 1) == 0)
              {
                sub_100020530("ASPFTLParseBufferToCxt: prepareForShutdownTimeoutCounter(219) cannot add 1 element to context");
              }

              goto LABEL_161;
            case 220:
              if ((sub_100020050(a1, "", "prepareForShutdownCancelCounter", *a2) & 1) == 0)
              {
                sub_100020530("ASPFTLParseBufferToCxt: prepareForShutdownCancelCounter(220) cannot add 1 element to context");
              }

              goto LABEL_161;
            case 221:
              if ((sub_100020050(a1, "", "RD_openBandCount", *a2) & 1) == 0)
              {
                sub_100020530("ASPFTLParseBufferToCxt: RD_openBandCount(221) cannot add 1 element to context");
              }

              goto LABEL_161;
            case 222:
              if ((sub_100020050(a1, "", "RD_openBandNops", *a2) & 1) == 0)
              {
                sub_100020530("ASPFTLParseBufferToCxt: RD_openBandNops(222) cannot add 1 element to context");
              }

              goto LABEL_161;
            case 223:
              if ((sub_100020050(a1, "", "RD_closedBandEvictCount", *a2) & 1) == 0)
              {
                sub_100020530("ASPFTLParseBufferToCxt: RD_closedBandEvictCount(223) cannot add 1 element to context");
              }

              goto LABEL_161;
            default:
              switch(v7)
              {
                case 224:
                  if ((sub_100020050(a1, "", "RD_closedBandEvictSectors", *a2) & 1) == 0)
                  {
                    sub_100020530("ASPFTLParseBufferToCxt: RD_closedBandEvictSectors(224) cannot add 1 element to context");
                  }

                  goto LABEL_161;
                case 225:
                  if ((sub_100020050(a1, "", "RD_closedBandFragmentCount", *a2) & 1) == 0)
                  {
                    sub_100020530("ASPFTLParseBufferToCxt: RD_closedBandFragmentCount(225) cannot add 1 element to context");
                  }

                  goto LABEL_161;
                case 226:
                  if ((sub_100020050(a1, "", "RD_closedBandFragmentSectors", *a2) & 1) == 0)
                  {
                    sub_100020530("ASPFTLParseBufferToCxt: RD_closedBandFragmentSectors(226) cannot add 1 element to context");
                  }

                  goto LABEL_161;
                case 227:
                  if (v9 != 10)
                  {
                    sub_100020530("ASPFTLParseBufferToCxt: wcacheFSOverWrLogSizeCnts(227): (#10) cfg elements != (%d) buffer elements", v9);
                  }

                  if (v9 >= 0xB)
                  {
                    v12 = 10;
                  }

                  else
                  {
                    v12 = v9;
                  }

                  if (sub_1000189BC(a1, "wcacheFSOverWrLogSizeCnts_", a2, 8u, v12))
                  {
                    goto LABEL_110;
                  }

                  sub_100020530("ASPFTLParseBufferToCxt: wcacheFSOverWrLogSizeCnts(227): Cannot add 10 elements to context", v14);
                  return v5;
                case 228:
                  if (v9 != 4)
                  {
                    sub_100020530("ASPFTLParseBufferToCxt: wcacheFSOverWrSizeByFlow(228): (#4) cfg elements != (%d) buffer elements", v9);
                  }

                  if (v9 >= 5)
                  {
                    v12 = 4;
                  }

                  else
                  {
                    v12 = v9;
                  }

                  if (sub_1000189BC(a1, "wcacheFSOverWrSizeByFlow_", a2, 8u, v12))
                  {
                    goto LABEL_110;
                  }

                  sub_100020530("ASPFTLParseBufferToCxt: wcacheFSOverWrSizeByFlow(228): Cannot add 4 elements to context", v14);
                  return v5;
                case 229:
                  if (v9 != 2)
                  {
                    sub_100020530("ASPFTLParseBufferToCxt: indmbXferCountTo(229): (#2) cfg elements != (%d) buffer elements", v9);
                  }

                  if (v9 >= 3)
                  {
                    v12 = 2;
                  }

                  else
                  {
                    v12 = v9;
                  }

                  if (sub_1000189BC(a1, "indmbXferCountTo_", a2, 8u, v12))
                  {
                    goto LABEL_110;
                  }

                  sub_100020530("ASPFTLParseBufferToCxt: indmbXferCountTo(229): Cannot add 2 elements to context", v14);
                  return v5;
                case 230:
                  if (v9 != 2)
                  {
                    sub_100020530("ASPFTLParseBufferToCxt: indmbAccumulatedTimeBetweenXfers(230): (#2) cfg elements != (%d) buffer elements", v9);
                  }

                  if (v9 >= 3)
                  {
                    v12 = 2;
                  }

                  else
                  {
                    v12 = v9;
                  }

                  if (sub_1000189BC(a1, "indmbAccumulatedTimeBetweenXfers_", a2, 8u, v12))
                  {
                    goto LABEL_110;
                  }

                  sub_100020530("ASPFTLParseBufferToCxt: indmbAccumulatedTimeBetweenXfers(230): Cannot add 2 elements to context", v14);
                  return v5;
                case 231:
                  if ((sub_100020050(a1, "", "maxGracefulBootTimeMs", *a2) & 1) == 0)
                  {
                    sub_100020530("ASPFTLParseBufferToCxt: maxGracefulBootTimeMs(231) cannot add 1 element to context");
                  }

                  goto LABEL_161;
                case 232:
                  if ((sub_100020050(a1, "", "maxUngracefulBootTimeMs", *a2) & 1) == 0)
                  {
                    sub_100020530("ASPFTLParseBufferToCxt: maxUngracefulBootTimeMs(232) cannot add 1 element to context");
                  }

                  goto LABEL_161;
                case 233:
                  if ((sub_100020050(a1, "", "averageGracefulBootTimeMs", *a2) & 1) == 0)
                  {
                    sub_100020530("ASPFTLParseBufferToCxt: averageGracefulBootTimeMs(233) cannot add 1 element to context");
                  }

                  goto LABEL_161;
                case 234:
                  if ((sub_100020050(a1, "", "averageUngracefulBootTimeMs", *a2) & 1) == 0)
                  {
                    sub_100020530("ASPFTLParseBufferToCxt: averageUngracefulBootTimeMs(234) cannot add 1 element to context");
                  }

                  goto LABEL_161;
                case 235:
                  if (v9 != 8)
                  {
                    sub_100020530("ASPFTLParseBufferToCxt: gracefulBootTimeLogMs(235): (#8) cfg elements != (%d) buffer elements", v9);
                  }

                  if (v9 >= 9)
                  {
                    v12 = 8;
                  }

                  else
                  {
                    v12 = v9;
                  }

                  if (sub_1000189BC(a1, "gracefulBootTimeLogMs_", a2, 8u, v12))
                  {
                    goto LABEL_110;
                  }

                  sub_100020530("ASPFTLParseBufferToCxt: gracefulBootTimeLogMs(235): Cannot add 8 elements to context", v14);
                  return v5;
                case 236:
                  if (v9 != 8)
                  {
                    sub_100020530("ASPFTLParseBufferToCxt: ungracefulBootTimeLogMs(236): (#8) cfg elements != (%d) buffer elements", v9);
                  }

                  if (v9 >= 9)
                  {
                    v12 = 8;
                  }

                  else
                  {
                    v12 = v9;
                  }

                  if (sub_1000189BC(a1, "ungracefulBootTimeLogMs_", a2, 8u, v12))
                  {
                    goto LABEL_110;
                  }

                  sub_100020530("ASPFTLParseBufferToCxt: ungracefulBootTimeLogMs(236): Cannot add 8 elements to context", v14);
                  return v5;
                case 237:
                  if (v9 != 4)
                  {
                    sub_100020530("ASPFTLParseBufferToCxt: CalibrationCount(237): (#4) cfg elements != (%d) buffer elements", v9);
                  }

                  if (v9 >= 5)
                  {
                    v12 = 4;
                  }

                  else
                  {
                    v12 = v9;
                  }

                  if (sub_1000189BC(a1, "CalibrationCount_", a2, 8u, v12))
                  {
                    goto LABEL_110;
                  }

                  sub_100020530("ASPFTLParseBufferToCxt: CalibrationCount(237): Cannot add 4 elements to context", v14);
                  return v5;
                case 238:
                  if ((sub_100020050(a1, "", "CalibrationLastTmp", *a2) & 1) == 0)
                  {
                    sub_100020530("ASPFTLParseBufferToCxt: CalibrationLastTmp(238) cannot add 1 element to context");
                  }

                  goto LABEL_161;
                case 239:
                  if ((sub_100020050(a1, "", "CalibrationMaxTmp", *a2) & 1) == 0)
                  {
                    sub_100020530("ASPFTLParseBufferToCxt: CalibrationMaxTmp(239) cannot add 1 element to context");
                  }

                  goto LABEL_161;
                case 240:
                  if ((sub_100020050(a1, "", "CalibrationMinTmp", *a2) & 1) == 0)
                  {
                    sub_100020530("ASPFTLParseBufferToCxt: CalibrationMinTmp(240) cannot add 1 element to context");
                  }

                  goto LABEL_161;
                case 241:
                  if ((sub_100020050(a1, "", "ungracefulBootWorstIndicator", *a2) & 1) == 0)
                  {
                    sub_100020530("ASPFTLParseBufferToCxt: ungracefulBootWorstIndicator(241) cannot add 1 element to context");
                  }

                  goto LABEL_161;
                case 242:
                  if ((sub_100020050(a1, "", "metaMismatchReread", *a2) & 1) == 0)
                  {
                    sub_100020530("ASPFTLParseBufferToCxt: metaMismatchReread(242) cannot add 1 element to context");
                  }

                  goto LABEL_161;
                case 243:
                  if ((sub_100020050(a1, "", "numS3SleepOps", *a2) & 1) == 0)
                  {
                    sub_100020530("ASPFTLParseBufferToCxt: numS3SleepOps(243) cannot add 1 element to context");
                  }

                  goto LABEL_161;
                case 244:
                  if ((sub_100020050(a1, "", "odtsCurrent", *a2) & 1) == 0)
                  {
                    sub_100020530("ASPFTLParseBufferToCxt: odtsCurrent(244) cannot add 1 element to context");
                  }

                  goto LABEL_161;
                case 245:
                  if ((sub_100020050(a1, "", "prefetchReads", *a2) & 1) == 0)
                  {
                    sub_100020530("ASPFTLParseBufferToCxt: prefetchReads(245) cannot add 1 element to context");
                  }

                  goto LABEL_161;
                case 246:
                  if ((sub_100020050(a1, "", "prefetchHits", *a2) & 1) == 0)
                  {
                    sub_100020530("ASPFTLParseBufferToCxt: prefetchHits(246) cannot add 1 element to context");
                  }

                  goto LABEL_161;
                case 247:
                  if ((sub_100020050(a1, "", "prefetchWritesInvalidation", *a2) & 1) == 0)
                  {
                    sub_100020530("ASPFTLParseBufferToCxt: prefetchWritesInvalidation(247) cannot add 1 element to context");
                  }

                  goto LABEL_161;
                case 248:
                  if ((sub_100020050(a1, "", "indmbUnitsTotal", *a2) & 1) == 0)
                  {
                    sub_100020530("ASPFTLParseBufferToCxt: indmbUnitsTotal(248) cannot add 1 element to context");
                  }

                  goto LABEL_161;
                case 249:
                  if ((sub_100020050(a1, "", "selfThrottlingEngage", *a2) & 1) == 0)
                  {
                    sub_100020530("ASPFTLParseBufferToCxt: selfThrottlingEngage(249) cannot add 1 element to context");
                  }

                  goto LABEL_161;
                case 250:
                  if ((sub_100020050(a1, "", "selfThrottlingDisengage", *a2) & 1) == 0)
                  {
                    sub_100020530("ASPFTLParseBufferToCxt: selfThrottlingDisengage(250) cannot add 1 element to context");
                  }

                  goto LABEL_161;
                case 252:
                  if ((sub_100020050(a1, "", "AbortSkip_WlpMode", *a2) & 1) == 0)
                  {
                    sub_100020530("ASPFTLParseBufferToCxt: AbortSkip_WlpMode(252) cannot add 1 element to context");
                  }

                  goto LABEL_161;
                case 253:
                  if ((sub_100020050(a1, "", "hostWritesWlpMode", *a2) & 1) == 0)
                  {
                    sub_100020530("ASPFTLParseBufferToCxt: hostWritesWlpMode(253) cannot add 1 element to context");
                  }

                  goto LABEL_161;
                case 254:
                  if ((sub_100020050(a1, "", "numClogDoubleUnc", *a2) & 1) == 0)
                  {
                    sub_100020530("ASPFTLParseBufferToCxt: numClogDoubleUnc(254) cannot add 1 element to context");
                  }

                  goto LABEL_161;
                case 256:
                  if ((sub_100020050(a1, "", "AbortPad_WlpMode", *a2) & 1) == 0)
                  {
                    sub_100020530("ASPFTLParseBufferToCxt: AbortPad_WlpMode(256) cannot add 1 element to context");
                  }

                  goto LABEL_161;
                case 257:
                  if ((sub_100020050(a1, "", "bonfireIntermediateBandErases", *a2) & 1) == 0)
                  {
                    sub_100020530("ASPFTLParseBufferToCxt: bonfireIntermediateBandErases(257) cannot add 1 element to context");
                  }

                  goto LABEL_161;
                case 258:
                  if ((sub_100020050(a1, "", "bonfireUserBandErases", *a2) & 1) == 0)
                  {
                    sub_100020530("ASPFTLParseBufferToCxt: bonfireUserBandErases(258) cannot add 1 element to context");
                  }

                  goto LABEL_161;
                case 259:
                  if ((sub_100020050(a1, "", "bonfireIntermediateBandProgs", *a2) & 1) == 0)
                  {
                    sub_100020530("ASPFTLParseBufferToCxt: bonfireIntermediateBandProgs(259) cannot add 1 element to context");
                  }

                  goto LABEL_161;
                case 260:
                  if ((sub_100020050(a1, "", "bonfireUserBandProgs", *a2) & 1) == 0)
                  {
                    sub_100020530("ASPFTLParseBufferToCxt: bonfireUserBandProgs(260) cannot add 1 element to context");
                  }

                  goto LABEL_161;
                case 261:
                  if ((sub_100020050(a1, "", "bonfireIntermediatePageReads", *a2) & 1) == 0)
                  {
                    sub_100020530("ASPFTLParseBufferToCxt: bonfireIntermediatePageReads(261) cannot add 1 element to context");
                  }

                  goto LABEL_161;
                case 262:
                  if ((sub_100020050(a1, "", "bonfireUserPageReads", *a2) & 1) == 0)
                  {
                    sub_100020530("ASPFTLParseBufferToCxt: bonfireUserPageReads(262) cannot add 1 element to context");
                  }

                  goto LABEL_161;
                case 263:
                  if ((sub_100020050(a1, "", "refreshUtil00", *a2) & 1) == 0)
                  {
                    sub_100020530("ASPFTLParseBufferToCxt: refreshUtil00(263) cannot add 1 element to context");
                  }

                  goto LABEL_161;
                case 264:
                  if ((sub_100020050(a1, "", "failToReadUtil00", *a2) & 1) == 0)
                  {
                    sub_100020530("ASPFTLParseBufferToCxt: failToReadUtil00(264) cannot add 1 element to context");
                  }

                  goto LABEL_161;
                case 265:
                  if (v9 != 5)
                  {
                    sub_100020530("ASPFTLParseBufferToCxt: readCountHisto(265): (#5) cfg elements != (%d) buffer elements", v9);
                  }

                  if (v7 >> 33 >= 3)
                  {
                    v12 = 5;
                  }

                  else
                  {
                    v12 = v9;
                  }

                  if (sub_1000189BC(a1, "readCountHisto_", a2, 8u, v12))
                  {
                    goto LABEL_110;
                  }

                  sub_100020530("ASPFTLParseBufferToCxt: readCountHisto(265): Cannot add 5 elements to context", v14);
                  return v5;
                case 266:
                  if (v9 != 16)
                  {
                    sub_100020530("ASPFTLParseBufferToCxt: readAmpHisto(266): (#16) cfg elements != (%d) buffer elements", v9);
                  }

                  if (v9 >= 0x11)
                  {
                    v12 = 16;
                  }

                  else
                  {
                    v12 = v9;
                  }

                  if (sub_1000189BC(a1, "readAmpHisto_", a2, 8u, v12))
                  {
                    goto LABEL_110;
                  }

                  sub_100020530("ASPFTLParseBufferToCxt: readAmpHisto(266): Cannot add 16 elements to context", v14);
                  return v5;
                case 267:
                  if ((sub_100020050(a1, "", "totalReadAmp", *a2) & 1) == 0)
                  {
                    sub_100020530("ASPFTLParseBufferToCxt: totalReadAmp(267) cannot add 1 element to context");
                  }

                  goto LABEL_161;
                case 268:
                  if (v9 != 4)
                  {
                    sub_100020530("ASPFTLParseBufferToCxt: nvmeModeSelect(268): (#4) cfg elements != (%d) buffer elements", v9);
                  }

                  if (v9 >= 5)
                  {
                    v12 = 4;
                  }

                  else
                  {
                    v12 = v9;
                  }

                  if (sub_1000189BC(a1, "nvmeModeSelect_", a2, 8u, v12))
                  {
                    goto LABEL_110;
                  }

                  sub_100020530("ASPFTLParseBufferToCxt: nvmeModeSelect(268): Cannot add 4 elements to context", v14);
                  return v5;
                case 269:
                  if (v9 != 8)
                  {
                    sub_100020530("ASPFTLParseBufferToCxt: numBootBlockRefreshSuccess(269): (#8) cfg elements != (%d) buffer elements", v9);
                  }

                  if (v9 >= 9)
                  {
                    v12 = 8;
                  }

                  else
                  {
                    v12 = v9;
                  }

                  if (sub_1000189BC(a1, "numBootBlockRefreshSuccess_", a2, 8u, v12))
                  {
                    goto LABEL_110;
                  }

                  sub_100020530("ASPFTLParseBufferToCxt: numBootBlockRefreshSuccess(269): Cannot add 8 elements to context", v14);
                  return v5;
                case 270:
                  if (v9 != 8)
                  {
                    sub_100020530("ASPFTLParseBufferToCxt: numBootBlockRefreshFail(270): (#8) cfg elements != (%d) buffer elements", v9);
                  }

                  if (v9 >= 9)
                  {
                    v12 = 8;
                  }

                  else
                  {
                    v12 = v9;
                  }

                  if (sub_1000189BC(a1, "numBootBlockRefreshFail_", a2, 8u, v12))
                  {
                    goto LABEL_110;
                  }

                  sub_100020530("ASPFTLParseBufferToCxt: numBootBlockRefreshFail(270): Cannot add 8 elements to context", v14);
                  return v5;
                case 271:
                  if ((sub_100020050(a1, "", "numUnsupportedAsi", *a2) & 1) == 0)
                  {
                    sub_100020530("ASPFTLParseBufferToCxt: numUnsupportedAsi(271) cannot add 1 element to context");
                  }

                  goto LABEL_161;
                case 272:
                  if ((sub_100020050(a1, "", "NumTerminatedProgramSegs", *a2) & 1) == 0)
                  {
                    sub_100020530("ASPFTLParseBufferToCxt: NumTerminatedProgramSegs(272) cannot add 1 element to context");
                  }

                  goto LABEL_161;
                case 273:
                  if ((sub_100020050(a1, "", "indParityPagesDrops", *a2) & 1) == 0)
                  {
                    sub_100020530("ASPFTLParseBufferToCxt: indParityPagesDrops(273) cannot add 1 element to context");
                  }

                  goto LABEL_161;
                case 274:
                  if ((sub_100020050(a1, "", "indFlowPrograms", *a2) & 1) == 0)
                  {
                    sub_100020530("ASPFTLParseBufferToCxt: indFlowPrograms(274) cannot add 1 element to context");
                  }

                  goto LABEL_161;
                case 277:
                  if (v9 != 4)
                  {
                    sub_100020530("ASPFTLParseBufferToCxt: powerBudgetSelect(277): (#4) cfg elements != (%d) buffer elements", v9);
                  }

                  if (v9 >= 5)
                  {
                    v12 = 4;
                  }

                  else
                  {
                    v12 = v9;
                  }

                  if (sub_1000189BC(a1, "powerBudgetSelect_", a2, 8u, v12))
                  {
                    goto LABEL_110;
                  }

                  sub_100020530("ASPFTLParseBufferToCxt: powerBudgetSelect(277): Cannot add 4 elements to context", v14);
                  return v5;
                case 279:
                  if ((sub_100020050(a1, "", "RxBurnNandWrites", *a2) & 1) == 0)
                  {
                    sub_100020530("ASPFTLParseBufferToCxt: RxBurnNandWrites(279) cannot add 1 element to context");
                  }

                  goto LABEL_161;
                case 280:
                  if (v9 != 12)
                  {
                    sub_100020530("ASPFTLParseBufferToCxt: E2EDPErrorCounters(280): (#12) cfg elements != (%d) buffer elements", v9);
                  }

                  if (v9 >= 0xD)
                  {
                    v12 = 12;
                  }

                  else
                  {
                    v12 = v9;
                  }

                  if (sub_1000189BC(a1, "E2EDPErrorCounters_", a2, 8u, v12))
                  {
                    goto LABEL_110;
                  }

                  sub_100020530("ASPFTLParseBufferToCxt: E2EDPErrorCounters(280): Cannot add 12 elements to context", v14);
                  return v5;
                case 281:
                  if ((sub_100020050(a1, "", "wcacheSectorsMax", *a2) & 1) == 0)
                  {
                    sub_100020530("ASPFTLParseBufferToCxt: wcacheSectorsMax(281) cannot add 1 element to context");
                  }

                  goto LABEL_161;
                case 282:
                  if ((sub_100020050(a1, "", "wcacheSectorsMin", *a2) & 1) == 0)
                  {
                    sub_100020530("ASPFTLParseBufferToCxt: wcacheSectorsMin(282) cannot add 1 element to context");
                  }

                  goto LABEL_161;
                case 283:
                  if ((sub_100020050(a1, "", "wcacheSectorsCur", *a2) & 1) == 0)
                  {
                    sub_100020530("ASPFTLParseBufferToCxt: wcacheSectorsCur(283) cannot add 1 element to context");
                  }

                  goto LABEL_161;
                case 284:
                  if ((sub_100020050(a1, "", "wcacheDS_SectorsMax", *a2) & 1) == 0)
                  {
                    sub_100020530("ASPFTLParseBufferToCxt: wcacheDS_SectorsMax(284) cannot add 1 element to context");
                  }

                  goto LABEL_161;
                case 285:
                  if ((sub_100020050(a1, "", "wcacheDS_SectorsMin", *a2) & 1) == 0)
                  {
                    sub_100020530("ASPFTLParseBufferToCxt: wcacheDS_SectorsMin(285) cannot add 1 element to context");
                  }

                  goto LABEL_161;
                case 286:
                  if ((sub_100020050(a1, "", "wcacheDS_SectorsCur", *a2) & 1) == 0)
                  {
                    sub_100020530("ASPFTLParseBufferToCxt: wcacheDS_SectorsCur(286) cannot add 1 element to context");
                  }

                  goto LABEL_161;
                case 287:
                  if ((sub_100020050(a1, "", "wcacheFS_Reads", *a2) & 1) == 0)
                  {
                    sub_100020530("ASPFTLParseBufferToCxt: wcacheFS_Reads(287) cannot add 1 element to context");
                  }

                  goto LABEL_161;
                case 288:
                  if ((sub_100020050(a1, "", "wcacheDS_Reads", *a2) & 1) == 0)
                  {
                    sub_100020530("ASPFTLParseBufferToCxt: wcacheDS_Reads(288) cannot add 1 element to context");
                  }

                  goto LABEL_161;
                case 289:
                  if (v9 != 32)
                  {
                    sub_100020530("ASPFTLParseBufferToCxt: mspBootBlockReadFail(289): (#32) cfg elements != (%d) buffer elements", v9);
                  }

                  if (v9 >= 0x21)
                  {
                    v12 = 32;
                  }

                  else
                  {
                    v12 = v9;
                  }

                  if (sub_1000189BC(a1, "mspBootBlockReadFail_", a2, 8u, v12))
                  {
                    goto LABEL_110;
                  }

                  sub_100020530("ASPFTLParseBufferToCxt: mspBootBlockReadFail(289): Cannot add 32 elements to context", v14);
                  return v5;
                case 290:
                  if (v9 != 32)
                  {
                    sub_100020530("ASPFTLParseBufferToCxt: mspBootBlockProgFail(290): (#32) cfg elements != (%d) buffer elements", v9);
                  }

                  if (v9 >= 0x21)
                  {
                    v12 = 32;
                  }

                  else
                  {
                    v12 = v9;
                  }

                  if (sub_1000189BC(a1, "mspBootBlockProgFail_", a2, 8u, v12))
                  {
                    goto LABEL_110;
                  }

                  sub_100020530("ASPFTLParseBufferToCxt: mspBootBlockProgFail(290): Cannot add 32 elements to context", v14);
                  return v5;
                case 291:
                  if (v9 != 32)
                  {
                    sub_100020530("ASPFTLParseBufferToCxt: mspBootBlockEraseFail(291): (#32) cfg elements != (%d) buffer elements", v9);
                  }

                  if (v9 >= 0x21)
                  {
                    v12 = 32;
                  }

                  else
                  {
                    v12 = v9;
                  }

                  if (sub_1000189BC(a1, "mspBootBlockEraseFail_", a2, 8u, v12))
                  {
                    goto LABEL_110;
                  }

                  sub_100020530("ASPFTLParseBufferToCxt: mspBootBlockEraseFail(291): Cannot add 32 elements to context", v14);
                  return v5;
                case 292:
                  if ((sub_100020050(a1, "", "bandsRefreshedOnError", *a2) & 1) == 0)
                  {
                    sub_100020530("ASPFTLParseBufferToCxt: bandsRefreshedOnError(292) cannot add 1 element to context");
                  }

                  goto LABEL_161;
                default:
                  switch(v7)
                  {
                    case 298:
                      if (v9 != 2)
                      {
                        sub_100020530("ASPFTLParseBufferToCxt: perHostReads(298): (#2) cfg elements != (%d) buffer elements", v9);
                      }

                      if (v9 >= 3)
                      {
                        v12 = 2;
                      }

                      else
                      {
                        v12 = v9;
                      }

                      if (sub_1000189BC(a1, "perHostReads_", a2, 8u, v12))
                      {
                        goto LABEL_110;
                      }

                      sub_100020530("ASPFTLParseBufferToCxt: perHostReads(298): Cannot add 2 elements to context", v14);
                      return v5;
                    case 299:
                      if (v9 != 2)
                      {
                        sub_100020530("ASPFTLParseBufferToCxt: perHostReadXacts(299): (#2) cfg elements != (%d) buffer elements", v9);
                      }

                      if (v9 >= 3)
                      {
                        v12 = 2;
                      }

                      else
                      {
                        v12 = v9;
                      }

                      if (sub_1000189BC(a1, "perHostReadXacts_", a2, 8u, v12))
                      {
                        goto LABEL_110;
                      }

                      sub_100020530("ASPFTLParseBufferToCxt: perHostReadXacts(299): Cannot add 2 elements to context", v14);
                      return v5;
                    case 300:
                      if (v9 != 2)
                      {
                        sub_100020530("ASPFTLParseBufferToCxt: perHostWrites(300): (#2) cfg elements != (%d) buffer elements", v9);
                      }

                      if (v9 >= 3)
                      {
                        v12 = 2;
                      }

                      else
                      {
                        v12 = v9;
                      }

                      if (sub_1000189BC(a1, "perHostWrites_", a2, 8u, v12))
                      {
                        goto LABEL_110;
                      }

                      sub_100020530("ASPFTLParseBufferToCxt: perHostWrites(300): Cannot add 2 elements to context", v14);
                      return v5;
                    case 301:
                      if (v9 != 2)
                      {
                        sub_100020530("ASPFTLParseBufferToCxt: perHostWriteXacts(301): (#2) cfg elements != (%d) buffer elements", v9);
                      }

                      if (v9 >= 3)
                      {
                        v12 = 2;
                      }

                      else
                      {
                        v12 = v9;
                      }

                      if (sub_1000189BC(a1, "perHostWriteXacts_", a2, 8u, v12))
                      {
                        goto LABEL_110;
                      }

                      sub_100020530("ASPFTLParseBufferToCxt: perHostWriteXacts(301): Cannot add 2 elements to context", v14);
                      return v5;
                    case 302:
                      if (v9 != 2)
                      {
                        sub_100020530("ASPFTLParseBufferToCxt: perHostNumFlushes(302): (#2) cfg elements != (%d) buffer elements", v9);
                      }

                      if (v9 >= 3)
                      {
                        v12 = 2;
                      }

                      else
                      {
                        v12 = v9;
                      }

                      if (sub_1000189BC(a1, "perHostNumFlushes_", a2, 8u, v12))
                      {
                        goto LABEL_110;
                      }

                      sub_100020530("ASPFTLParseBufferToCxt: perHostNumFlushes(302): Cannot add 2 elements to context", v14);
                      return v5;
                    case 303:
                      if (v9 != 2)
                      {
                        sub_100020530("ASPFTLParseBufferToCxt: perHostNumFences(303): (#2) cfg elements != (%d) buffer elements", v9);
                      }

                      if (v9 >= 3)
                      {
                        v12 = 2;
                      }

                      else
                      {
                        v12 = v9;
                      }

                      if (sub_1000189BC(a1, "perHostNumFences_", a2, 8u, v12))
                      {
                        goto LABEL_110;
                      }

                      sub_100020530("ASPFTLParseBufferToCxt: perHostNumFences(303): Cannot add 2 elements to context", v14);
                      return v5;
                    case 304:
                      if (v9 != 10)
                      {
                        sub_100020530("ASPFTLParseBufferToCxt: commitPadSectorsPerFlow(304): (#10) cfg elements != (%d) buffer elements", v9);
                      }

                      if (v9 >= 0xB)
                      {
                        v12 = 10;
                      }

                      else
                      {
                        v12 = v9;
                      }

                      if (sub_1000189BC(a1, "commitPadSectorsPerFlow_", a2, 8u, v12))
                      {
                        goto LABEL_110;
                      }

                      sub_100020530("ASPFTLParseBufferToCxt: commitPadSectorsPerFlow(304): Cannot add 10 elements to context", v14);
                      return v5;
                    case 305:
                      if (v9 != 10)
                      {
                        sub_100020530("ASPFTLParseBufferToCxt: wcacheDSOverWrLogSizeCnts(305): (#10) cfg elements != (%d) buffer elements", v9);
                      }

                      if (v9 >= 0xB)
                      {
                        v12 = 10;
                      }

                      else
                      {
                        v12 = v9;
                      }

                      if (sub_1000189BC(a1, "wcacheDSOverWrLogSizeCnts_", a2, 8u, v12))
                      {
                        goto LABEL_110;
                      }

                      sub_100020530("ASPFTLParseBufferToCxt: wcacheDSOverWrLogSizeCnts(305): Cannot add 10 elements to context", v14);
                      return v5;
                    case 306:
                      if (v9 != 4)
                      {
                        sub_100020530("ASPFTLParseBufferToCxt: wcacheDSOverWrSizeByFlow(306): (#4) cfg elements != (%d) buffer elements", v9);
                      }

                      if (v9 >= 5)
                      {
                        v12 = 4;
                      }

                      else
                      {
                        v12 = v9;
                      }

                      if (sub_1000189BC(a1, "wcacheDSOverWrSizeByFlow_", a2, 8u, v12))
                      {
                        goto LABEL_110;
                      }

                      sub_100020530("ASPFTLParseBufferToCxt: wcacheDSOverWrSizeByFlow(306): Cannot add 4 elements to context", v14);
                      return v5;
                    case 307:
                      if (v9 != 10)
                      {
                        sub_100020530("ASPFTLParseBufferToCxt: CmdRaisePrioiryEvents(307): (#10) cfg elements != (%d) buffer elements", v9);
                      }

                      if (v9 >= 0xB)
                      {
                        v12 = 10;
                      }

                      else
                      {
                        v12 = v9;
                      }

                      if (sub_1000189BC(a1, "CmdRaisePrioiryEvents_", a2, 8u, v12))
                      {
                        goto LABEL_110;
                      }

                      sub_100020530("ASPFTLParseBufferToCxt: CmdRaisePrioiryEvents(307): Cannot add 10 elements to context", v14);
                      return v5;
                    case 308:
                      if ((sub_100020050(a1, "", "utilNumVerification", *a2) & 1) == 0)
                      {
                        sub_100020530("ASPFTLParseBufferToCxt: utilNumVerification(308) cannot add 1 element to context");
                      }

                      goto LABEL_161;
                    case 309:
                      if ((sub_100020050(a1, "", "utilRefreshes", *a2) & 1) == 0)
                      {
                        sub_100020530("ASPFTLParseBufferToCxt: utilRefreshes(309) cannot add 1 element to context");
                      }

                      goto LABEL_161;
                    case 310:
                      if ((sub_100020050(a1, "", "utilBDRErrors", *a2) & 1) == 0)
                      {
                        sub_100020530("ASPFTLParseBufferToCxt: utilBDRErrors(310) cannot add 1 element to context");
                      }

                      goto LABEL_161;
                    case 311:
                      if ((sub_100020050(a1, "", "indBandsPerFlow", *a2) & 1) == 0)
                      {
                        sub_100020530("ASPFTLParseBufferToCxt: indBandsPerFlow(311) cannot add 1 element to context");
                      }

                      goto LABEL_161;
                    case 312:
                      if ((sub_100020050(a1, "", "secsPerIndFlow", *a2) & 1) == 0)
                      {
                        sub_100020530("ASPFTLParseBufferToCxt: secsPerIndFlow(312) cannot add 1 element to context");
                      }

                      goto LABEL_161;
                    case 313:
                      if ((sub_100020050(a1, "", "indDecodedECC", *a2) & 1) == 0)
                      {
                        sub_100020530("ASPFTLParseBufferToCxt: indDecodedECC(313) cannot add 1 element to context");
                      }

                      goto LABEL_161;
                    case 314:
                      if (v9 != 8)
                      {
                        sub_100020530("ASPFTLParseBufferToCxt: numBootBlockValidateSuccess(314): (#8) cfg elements != (%d) buffer elements", v9);
                      }

                      if (v9 >= 9)
                      {
                        v12 = 8;
                      }

                      else
                      {
                        v12 = v9;
                      }

                      if (sub_1000189BC(a1, "numBootBlockValidateSuccess_", a2, 8u, v12))
                      {
                        goto LABEL_110;
                      }

                      sub_100020530("ASPFTLParseBufferToCxt: numBootBlockValidateSuccess(314): Cannot add 8 elements to context", v14);
                      return v5;
                    case 315:
                      if (v9 != 8)
                      {
                        sub_100020530("ASPFTLParseBufferToCxt: numBootBlockValidateFail(315): (#8) cfg elements != (%d) buffer elements", v9);
                      }

                      if (v9 >= 9)
                      {
                        v12 = 8;
                      }

                      else
                      {
                        v12 = v9;
                      }

                      if (sub_1000189BC(a1, "numBootBlockValidateFail_", a2, 8u, v12))
                      {
                        goto LABEL_110;
                      }

                      sub_100020530("ASPFTLParseBufferToCxt: numBootBlockValidateFail(315): Cannot add 8 elements to context", v14);
                      return v5;
                    case 316:
                      if (v9 != 4)
                      {
                        sub_100020530("ASPFTLParseBufferToCxt: clogPagesFillingPercentage(316): (#4) cfg elements != (%d) buffer elements", v9);
                      }

                      if (v9 >= 5)
                      {
                        v12 = 4;
                      }

                      else
                      {
                        v12 = v9;
                      }

                      if (sub_1000189BC(a1, "clogPagesFillingPercentage_", a2, 8u, v12))
                      {
                        goto LABEL_110;
                      }

                      sub_100020530("ASPFTLParseBufferToCxt: clogPagesFillingPercentage(316): Cannot add 4 elements to context", v14);
                      return v5;
                    case 317:
                      if ((sub_100020050(a1, "", "bdrCalTimeAccFactor", *a2) & 1) == 0)
                      {
                        sub_100020530("ASPFTLParseBufferToCxt: bdrCalTimeAccFactor(317) cannot add 1 element to context");
                      }

                      goto LABEL_161;
                    case 318:
                      if ((sub_100020050(a1, "", "bootChainRdError", *a2) & 1) == 0)
                      {
                        sub_100020530("ASPFTLParseBufferToCxt: bootChainRdError(318) cannot add 1 element to context");
                      }

                      goto LABEL_161;
                    case 319:
                      if ((sub_100020050(a1, "", "bootChainBlankError", *a2) & 1) == 0)
                      {
                        sub_100020530("ASPFTLParseBufferToCxt: bootChainBlankError(319) cannot add 1 element to context");
                      }

                      goto LABEL_161;
                    case 320:
                      if ((sub_100020050(a1, "", "bootChainRefreshError", *a2) & 1) == 0)
                      {
                        sub_100020530("ASPFTLParseBufferToCxt: bootChainRefreshError(320) cannot add 1 element to context");
                      }

                      goto LABEL_161;
                    case 321:
                      if ((sub_100020050(a1, "", "bootChainVersionError", *a2) & 1) == 0)
                      {
                        sub_100020530("ASPFTLParseBufferToCxt: bootChainVersionError(321) cannot add 1 element to context");
                      }

                      goto LABEL_161;
                    case 322:
                      if ((sub_100020050(a1, "", "mspBootBlockMismatch", *a2) & 1) == 0)
                      {
                        sub_100020530("ASPFTLParseBufferToCxt: mspBootBlockMismatch(322) cannot add 1 element to context");
                      }

                      goto LABEL_161;
                    case 323:
                      if ((sub_100020050(a1, "", "mspBootBlockMismatchErr", *a2) & 1) == 0)
                      {
                        sub_100020530("ASPFTLParseBufferToCxt: mspBootBlockMismatchErr(323) cannot add 1 element to context");
                      }

                      goto LABEL_161;
                    case 324:
                      if (v9 != 5)
                      {
                        sub_100020530("ASPFTLParseBufferToCxt: bitflipAddr(324): (#5) cfg elements != (%d) buffer elements", v9);
                      }

                      if (v7 >> 33 >= 3)
                      {
                        v12 = 5;
                      }

                      else
                      {
                        v12 = v9;
                      }

                      if (sub_1000189BC(a1, "bitflipAddr_", a2, 8u, v12))
                      {
                        goto LABEL_110;
                      }

                      sub_100020530("ASPFTLParseBufferToCxt: bitflipAddr(324): Cannot add 5 elements to context", v14);
                      return v5;
                    case 325:
                      if (v9 != 5)
                      {
                        sub_100020530("ASPFTLParseBufferToCxt: bitflipCount(325): (#5) cfg elements != (%d) buffer elements", v9);
                      }

                      if (v7 >> 33 >= 3)
                      {
                        v12 = 5;
                      }

                      else
                      {
                        v12 = v9;
                      }

                      if (sub_1000189BC(a1, "bitflipCount_", a2, 8u, v12))
                      {
                        goto LABEL_110;
                      }

                      sub_100020530("ASPFTLParseBufferToCxt: bitflipCount(325): Cannot add 5 elements to context", v14);
                      return v5;
                    case 326:
                      if (v9 != 5)
                      {
                        sub_100020530("ASPFTLParseBufferToCxt: bitflipDupes(326): (#5) cfg elements != (%d) buffer elements", v9);
                      }

                      if (v7 >> 33 >= 3)
                      {
                        v12 = 5;
                      }

                      else
                      {
                        v12 = v9;
                      }

                      if (sub_1000189BC(a1, "bitflipDupes_", a2, 8u, v12))
                      {
                        goto LABEL_110;
                      }

                      sub_100020530("ASPFTLParseBufferToCxt: bitflipDupes(326): Cannot add 5 elements to context", v14);
                      return v5;
                    case 327:
                      if (v9 != 30)
                      {
                        sub_100020530("ASPFTLParseBufferToCxt: bandsMaxTempHisto(327): (#30) cfg elements != (%d) buffer elements", v9);
                      }

                      if (v9 >= 0x1F)
                      {
                        v12 = 30;
                      }

                      else
                      {
                        v12 = v9;
                      }

                      if (sub_1000189BC(a1, "bandsMaxTempHisto_", a2, 8u, v12))
                      {
                        goto LABEL_110;
                      }

                      sub_100020530("ASPFTLParseBufferToCxt: bandsMaxTempHisto(327): Cannot add 30 elements to context", v14);
                      return v5;
                    case 328:
                      if (v9 != 30)
                      {
                        sub_100020530("ASPFTLParseBufferToCxt: bandsMinTempHisto(328): (#30) cfg elements != (%d) buffer elements", v9);
                      }

                      if (v9 >= 0x1F)
                      {
                        v12 = 30;
                      }

                      else
                      {
                        v12 = v9;
                      }

                      if (sub_1000189BC(a1, "bandsMinTempHisto_", a2, 8u, v12))
                      {
                        goto LABEL_110;
                      }

                      sub_100020530("ASPFTLParseBufferToCxt: bandsMinTempHisto(328): Cannot add 30 elements to context", v14);
                      return v5;
                    case 329:
                      if (v9 != 30)
                      {
                        sub_100020530("ASPFTLParseBufferToCxt: bandsLifeTimeTempHisto(329): (#30) cfg elements != (%d) buffer elements", v9);
                      }

                      if (v9 >= 0x1F)
                      {
                        v12 = 30;
                      }

                      else
                      {
                        v12 = v9;
                      }

                      if (sub_1000189BC(a1, "bandsLifeTimeTempHisto_", a2, 8u, v12))
                      {
                        goto LABEL_110;
                      }

                      sub_100020530("ASPFTLParseBufferToCxt: bandsLifeTimeTempHisto(329): Cannot add 30 elements to context", v14);
                      return v5;
                    case 330:
                      if (v9 != 22)
                      {
                        sub_100020530("ASPFTLParseBufferToCxt: bandsDeltaTempHisto(330): (#22) cfg elements != (%d) buffer elements", v9);
                      }

                      if (v9 >= 0x17)
                      {
                        v12 = 22;
                      }

                      else
                      {
                        v12 = v9;
                      }

                      if (sub_1000189BC(a1, "bandsDeltaTempHisto_", a2, 8u, v12))
                      {
                        goto LABEL_110;
                      }

                      sub_100020530("ASPFTLParseBufferToCxt: bandsDeltaTempHisto(330): Cannot add 22 elements to context", v14);
                      return v5;
                    case 331:
                      if (v9 != 45)
                      {
                        sub_100020530("ASPFTLParseBufferToCxt: bandsCrossTempHisto(331): (#45) cfg elements != (%d) buffer elements", v9);
                      }

                      if (v7 >> 33 >= 0x17)
                      {
                        v12 = 45;
                      }

                      else
                      {
                        v12 = v9;
                      }

                      if (sub_1000189BC(a1, "bandsCrossTempHisto_", a2, 8u, v12))
                      {
                        goto LABEL_110;
                      }

                      sub_100020530("ASPFTLParseBufferToCxt: bandsCrossTempHisto(331): Cannot add 45 elements to context", v14);
                      return v5;
                    case 332:
                      if (v9 != 10)
                      {
                        sub_100020530("ASPFTLParseBufferToCxt: wcacheWaitLogMs(332): (#10) cfg elements != (%d) buffer elements", v9);
                      }

                      if (v9 >= 0xB)
                      {
                        v12 = 10;
                      }

                      else
                      {
                        v12 = v9;
                      }

                      if (sub_1000189BC(a1, "wcacheWaitLogMs_", a2, 8u, v12))
                      {
                        goto LABEL_110;
                      }

                      sub_100020530("ASPFTLParseBufferToCxt: wcacheWaitLogMs(332): Cannot add 10 elements to context", v14);
                      return v5;
                    case 333:
                      if (v9 != 10)
                      {
                        sub_100020530("ASPFTLParseBufferToCxt: wcacheDS_segsSortedLogSize(333): (#10) cfg elements != (%d) buffer elements", v9);
                      }

                      if (v9 >= 0xB)
                      {
                        v12 = 10;
                      }

                      else
                      {
                        v12 = v9;
                      }

                      if (sub_1000189BC(a1, "wcacheDS_segsSortedLogSize_", a2, 8u, v12))
                      {
                        goto LABEL_110;
                      }

                      sub_100020530("ASPFTLParseBufferToCxt: wcacheDS_segsSortedLogSize(333): Cannot add 10 elements to context", v14);
                      return v5;
                    case 334:
                      if ((sub_100020050(a1, "", "numFirmwareWrites", *a2) & 1) == 0)
                      {
                        sub_100020530("ASPFTLParseBufferToCxt: numFirmwareWrites(334) cannot add 1 element to context");
                      }

                      goto LABEL_161;
                    case 335:
                      if ((sub_100020050(a1, "", "numBisWrites", *a2) & 1) == 0)
                      {
                        sub_100020530("ASPFTLParseBufferToCxt: numBisWrites(335) cannot add 1 element to context");
                      }

                      goto LABEL_161;
                    case 336:
                      if ((sub_100020050(a1, "", "numBootChainUpdates", *a2) & 1) == 0)
                      {
                        sub_100020530("ASPFTLParseBufferToCxt: numBootChainUpdates(336) cannot add 1 element to context");
                      }

                      goto LABEL_161;
                    case 337:
                      if ((sub_100020050(a1, "", "cntCalTimeWentBackWard", *a2) & 1) == 0)
                      {
                        sub_100020530("ASPFTLParseBufferToCxt: cntCalTimeWentBackWard(337) cannot add 1 element to context");
                      }

                      goto LABEL_161;
                    case 338:
                      if ((sub_100020050(a1, "", "indBoRecoveries", *a2) & 1) == 0)
                      {
                        sub_100020530("ASPFTLParseBufferToCxt: indBoRecoveries(338) cannot add 1 element to context");
                      }

                      goto LABEL_161;
                    case 340:
                      if ((sub_100020050(a1, "", "numCrossTempUecc", *a2) & 1) == 0)
                      {
                        sub_100020530("ASPFTLParseBufferToCxt: numCrossTempUecc(340) cannot add 1 element to context");
                      }

                      goto LABEL_161;
                    case 341:
                      if ((sub_100020050(a1, "", "latencyMonitorError", *a2) & 1) == 0)
                      {
                        sub_100020530("ASPFTLParseBufferToCxt: latencyMonitorError(341) cannot add 1 element to context");
                      }

                      goto LABEL_161;
                    case 343:
                      if ((sub_100020050(a1, "", "utilUeccReads", *a2) & 1) == 0)
                      {
                        sub_100020530("ASPFTLParseBufferToCxt: utilUeccReads(343) cannot add 1 element to context");
                      }

                      goto LABEL_161;
                    case 344:
                      if ((sub_100020050(a1, "", "numOfAvoidedGCDueToTemp", *a2) & 1) == 0)
                      {
                        sub_100020530("ASPFTLParseBufferToCxt: numOfAvoidedGCDueToTemp(344) cannot add 1 element to context");
                      }

                      goto LABEL_161;
                    case 345:
                      if ((sub_100020050(a1, "", "forceShutdowns", *a2) & 1) == 0)
                      {
                        sub_100020530("ASPFTLParseBufferToCxt: forceShutdowns(345) cannot add 1 element to context");
                      }

                      goto LABEL_161;
                    case 346:
                      if ((sub_100020050(a1, "", "gcSlcDestinations", *a2) & 1) == 0)
                      {
                        sub_100020530("ASPFTLParseBufferToCxt: gcSlcDestinations(346) cannot add 1 element to context");
                      }

                      goto LABEL_161;
                    case 347:
                      if ((sub_100020050(a1, "", "indReplayExtUsed", *a2) & 1) == 0)
                      {
                        sub_100020530("ASPFTLParseBufferToCxt: indReplayExtUsed(347) cannot add 1 element to context");
                      }

                      goto LABEL_161;
                    case 348:
                      if ((sub_100020050(a1, "", "defectsPerPackageOverflow", *a2) & 1) == 0)
                      {
                        sub_100020530("ASPFTLParseBufferToCxt: defectsPerPackageOverflow(348) cannot add 1 element to context");
                      }

                      goto LABEL_161;
                    case 349:
                      if ((sub_100020050(a1, "", "RxBurnIntBandsProgrammed", *a2) & 1) == 0)
                      {
                        sub_100020530("ASPFTLParseBufferToCxt: RxBurnIntBandsProgrammed(349) cannot add 1 element to context");
                      }

                      goto LABEL_161;
                    case 350:
                      if ((sub_100020050(a1, "", "RxBurnUsrBandsProgrammed", *a2) & 1) == 0)
                      {
                        sub_100020530("ASPFTLParseBufferToCxt: RxBurnUsrBandsProgrammed(350) cannot add 1 element to context");
                      }

                      goto LABEL_161;
                    case 351:
                      if ((sub_100020050(a1, "", "RxBurnIntNandWrites", *a2) & 1) == 0)
                      {
                        sub_100020530("ASPFTLParseBufferToCxt: RxBurnIntNandWrites(351) cannot add 1 element to context");
                      }

                      goto LABEL_161;
                    case 352:
                      if ((sub_100020050(a1, "", "RxBurnUsrNandWrites", *a2) & 1) == 0)
                      {
                        sub_100020530("ASPFTLParseBufferToCxt: RxBurnUsrNandWrites(352) cannot add 1 element to context");
                      }

                      goto LABEL_161;
                    case 353:
                      if ((sub_100020050(a1, "", "clogLastStripeUeccs", *a2) & 1) == 0)
                      {
                        sub_100020530("ASPFTLParseBufferToCxt: clogLastStripeUeccs(353) cannot add 1 element to context");
                      }

                      goto LABEL_161;
                    case 354:
                      if ((sub_100020050(a1, "", "GC_MidDestSrcSwitchSLC2TLC", *a2) & 1) == 0)
                      {
                        sub_100020530("ASPFTLParseBufferToCxt: GC_MidDestSrcSwitchSLC2TLC(354) cannot add 1 element to context");
                      }

                      goto LABEL_161;
                    case 355:
                      if ((sub_100020050(a1, "", "GC_MidDestSrcSwitchTLC2SLC", *a2) & 1) == 0)
                      {
                        sub_100020530("ASPFTLParseBufferToCxt: GC_MidDestSrcSwitchTLC2SLC(355) cannot add 1 element to context");
                      }

                      goto LABEL_161;
                    case 356:
                      if ((sub_100020050(a1, "", "nvme_stats_shutdown_count_host0_normal", *a2) & 1) == 0)
                      {
                        sub_100020530("ASPFTLParseBufferToCxt: nvme_stats_shutdown_count_host0_normal(356) cannot add 1 element to context");
                      }

                      goto LABEL_161;
                    case 357:
                      if ((sub_100020050(a1, "", "nvme_stats_shutdown_count_host1_normal", *a2) & 1) == 0)
                      {
                        sub_100020530("ASPFTLParseBufferToCxt: nvme_stats_shutdown_count_host1_normal(357) cannot add 1 element to context");
                      }

                      goto LABEL_161;
                    case 358:
                      if ((sub_100020050(a1, "", "nvme_stats_shutdown_count_host0_s2r", *a2) & 1) == 0)
                      {
                        sub_100020530("ASPFTLParseBufferToCxt: nvme_stats_shutdown_count_host0_s2r(358) cannot add 1 element to context");
                      }

                      goto LABEL_161;
                    case 359:
                      if ((sub_100020050(a1, "", "nvme_stats_shutdown_count_host1_s2r", *a2) & 1) == 0)
                      {
                        sub_100020530("ASPFTLParseBufferToCxt: nvme_stats_shutdown_count_host1_s2r(359) cannot add 1 element to context");
                      }

                      goto LABEL_161;
                    case 360:
                      if (v9 != 16)
                      {
                        sub_100020530("ASPFTLParseBufferToCxt: gcPDusterIntrSrcValidityHisto(360): (#16) cfg elements != (%d) buffer elements", v9);
                      }

                      if (v9 >= 0x11)
                      {
                        v12 = 16;
                      }

                      else
                      {
                        v12 = v9;
                      }

                      if (sub_1000189BC(a1, "gcPDusterIntrSrcValidityHisto_", a2, 8u, v12))
                      {
                        goto LABEL_110;
                      }

                      sub_100020530("ASPFTLParseBufferToCxt: gcPDusterIntrSrcValidityHisto(360): Cannot add 16 elements to context", v14);
                      return v5;
                    case 361:
                      if (v9 != 16)
                      {
                        sub_100020530("ASPFTLParseBufferToCxt: gcPDusterUserSrcValidityHisto(361): (#16) cfg elements != (%d) buffer elements", v9);
                      }

                      if (v9 >= 0x11)
                      {
                        v12 = 16;
                      }

                      else
                      {
                        v12 = v9;
                      }

                      if (sub_1000189BC(a1, "gcPDusterUserSrcValidityHisto_", a2, 8u, v12))
                      {
                        goto LABEL_110;
                      }

                      sub_100020530("ASPFTLParseBufferToCxt: gcPDusterUserSrcValidityHisto(361): Cannot add 16 elements to context", v14);
                      return v5;
                    case 362:
                      if ((sub_100020050(a1, "", "raidFailedReadParity", *a2) & 1) == 0)
                      {
                        sub_100020530("ASPFTLParseBufferToCxt: raidFailedReadParity(362) cannot add 1 element to context");
                      }

                      goto LABEL_161;
                    case 364:
                      if ((sub_100020050(a1, "", "lhotNumSkipes", *a2) & 1) == 0)
                      {
                        sub_100020530("ASPFTLParseBufferToCxt: lhotNumSkipes(364) cannot add 1 element to context");
                      }

                      goto LABEL_161;
                    default:
                      switch(v7)
                      {
                        case 365:
                          if ((sub_100020050(a1, "", "lhotNumIsHotCalls", *a2) & 1) == 0)
                          {
                            sub_100020530("ASPFTLParseBufferToCxt: lhotNumIsHotCalls(365) cannot add 1 element to context");
                          }

                          goto LABEL_161;
                        case 366:
                          if ((sub_100020050(a1, "", "lhotFullLap", *a2) & 1) == 0)
                          {
                            sub_100020530("ASPFTLParseBufferToCxt: lhotFullLap(366) cannot add 1 element to context");
                          }

                          goto LABEL_161;
                        case 367:
                          if ((sub_100020050(a1, "", "lhotSkipPrecent", *a2) & 1) == 0)
                          {
                            sub_100020530("ASPFTLParseBufferToCxt: lhotSkipPrecent(367) cannot add 1 element to context");
                          }

                          goto LABEL_161;
                        case 368:
                          if ((sub_100020050(a1, "", "eraseSuspendEvents", *a2) & 1) == 0)
                          {
                            sub_100020530("ASPFTLParseBufferToCxt: eraseSuspendEvents(368) cannot add 1 element to context");
                          }

                          goto LABEL_161;
                        case 369:
                          if ((sub_100020050(a1, "", "eraseSuspendedStatuses", *a2) & 1) == 0)
                          {
                            sub_100020530("ASPFTLParseBufferToCxt: eraseSuspendedStatuses(369) cannot add 1 element to context");
                          }

                          goto LABEL_161;
                        case 370:
                          if ((sub_100020050(a1, "", "eraseSuspendedBands", *a2) & 1) == 0)
                          {
                            sub_100020530("ASPFTLParseBufferToCxt: eraseSuspendedBands(370) cannot add 1 element to context");
                          }

                          goto LABEL_161;
                        case 371:
                          if ((sub_100020050(a1, "", "eraseSuspendSituationsBelowThreshold", *a2) & 1) == 0)
                          {
                            sub_100020530("ASPFTLParseBufferToCxt: eraseSuspendSituationsBelowThreshold(371) cannot add 1 element to context");
                          }

                          goto LABEL_161;
                        case 372:
                          if ((sub_100020050(a1, "", "eraseSuspendSituationsAboveThreshold", *a2) & 1) == 0)
                          {
                            sub_100020530("ASPFTLParseBufferToCxt: eraseSuspendSituationsAboveThreshold(372) cannot add 1 element to context");
                          }

                          goto LABEL_161;
                        case 373:
                          if ((sub_100020050(a1, "", "eraseSuspendReadChainsProcessed", *a2) & 1) == 0)
                          {
                            sub_100020530("ASPFTLParseBufferToCxt: eraseSuspendReadChainsProcessed(373) cannot add 1 element to context");
                          }

                          goto LABEL_161;
                        case 374:
                          if ((sub_100020050(a1, "", "bdrLastDoneHr", *a2) & 1) == 0)
                          {
                            sub_100020530("ASPFTLParseBufferToCxt: bdrLastDoneHr(374) cannot add 1 element to context");
                          }

                          goto LABEL_161;
                        case 375:
                          if ((sub_100020050(a1, "", "bdrBackupThreshHrs", *a2) & 1) == 0)
                          {
                            sub_100020530("ASPFTLParseBufferToCxt: bdrBackupThreshHrs(375) cannot add 1 element to context");
                          }

                          goto LABEL_161;
                        case 376:
                          if ((sub_100020050(a1, "", "clogPortableProgBufs", *a2) & 1) == 0)
                          {
                            sub_100020530("ASPFTLParseBufferToCxt: clogPortableProgBufs(376) cannot add 1 element to context");
                          }

                          goto LABEL_161;
                        case 377:
                          if ((sub_100020050(a1, "", "clogPortableDropBufs", *a2) & 1) == 0)
                          {
                            sub_100020530("ASPFTLParseBufferToCxt: clogPortableDropBufs(377) cannot add 1 element to context");
                          }

                          goto LABEL_161;
                        case 378:
                          if ((sub_100020050(a1, "", "clogPortablePadSectors", *a2) & 1) == 0)
                          {
                            sub_100020530("ASPFTLParseBufferToCxt: clogPortablePadSectors(378) cannot add 1 element to context");
                          }

                          goto LABEL_161;
                        case 379:
                          if ((sub_100020050(a1, "", "numRetiredBlocks", *a2) & 1) == 0)
                          {
                            sub_100020530("ASPFTLParseBufferToCxt: numRetiredBlocks(379) cannot add 1 element to context");
                          }

                          goto LABEL_161;
                        case 381:
                          if ((sub_100020050(a1, "", "numRefreshOnErrNandRefreshPerf", *a2) & 1) == 0)
                          {
                            sub_100020530("ASPFTLParseBufferToCxt: numRefreshOnErrNandRefreshPerf(381) cannot add 1 element to context");
                          }

                          goto LABEL_161;
                        case 382:
                          if ((sub_100020050(a1, "", "raidReconstructReads", *a2) & 1) == 0)
                          {
                            sub_100020530("ASPFTLParseBufferToCxt: raidReconstructReads(382) cannot add 1 element to context");
                          }

                          goto LABEL_161;
                        case 383:
                          if ((sub_100020050(a1, "", "gcReadsNoBlog", *a2) & 1) == 0)
                          {
                            sub_100020530("ASPFTLParseBufferToCxt: gcReadsNoBlog(383) cannot add 1 element to context");
                          }

                          goto LABEL_161;
                        case 384:
                          if ((sub_100020050(a1, "", "AbortSkip_MPBXReadVerifyClosedBand", *a2) & 1) == 0)
                          {
                            sub_100020530("ASPFTLParseBufferToCxt: AbortSkip_MPBXReadVerifyClosedBand(384) cannot add 1 element to context");
                          }

                          goto LABEL_161;
                        case 385:
                          if ((sub_100020050(a1, "", "openBandReadFail", *a2) & 1) == 0)
                          {
                            sub_100020530("ASPFTLParseBufferToCxt: openBandReadFail(385) cannot add 1 element to context");
                          }

                          goto LABEL_161;
                        case 386:
                          if ((sub_100020050(a1, "", "AbortSkip_MPBXReadVerifyOpenBand", *a2) & 1) == 0)
                          {
                            sub_100020530("ASPFTLParseBufferToCxt: AbortSkip_MPBXReadVerifyOpenBand(386) cannot add 1 element to context");
                          }

                          goto LABEL_161;
                        case 387:
                          if ((sub_100020050(a1, "", "AbortSkip_MBPXFailedRebuildingParity", *a2) & 1) == 0)
                          {
                            sub_100020530("ASPFTLParseBufferToCxt: AbortSkip_MBPXFailedRebuildingParity(387) cannot add 1 element to context");
                          }

                          goto LABEL_161;
                        case 388:
                          if ((sub_100020050(a1, "", "raidSuccessfulPMXReconstructionInternal", *a2) & 1) == 0)
                          {
                            sub_100020530("ASPFTLParseBufferToCxt: raidSuccessfulPMXReconstructionInternal(388) cannot add 1 element to context");
                          }

                          goto LABEL_161;
                        case 389:
                          if ((sub_100020050(a1, "", "raidSuccessfulPMXReconstructionHost", *a2) & 1) == 0)
                          {
                            sub_100020530("ASPFTLParseBufferToCxt: raidSuccessfulPMXReconstructionHost(389) cannot add 1 element to context");
                          }

                          goto LABEL_161;
                        case 390:
                          if ((sub_100020050(a1, "", "raidFailedPMXReconstructionInternal", *a2) & 1) == 0)
                          {
                            sub_100020530("ASPFTLParseBufferToCxt: raidFailedPMXReconstructionInternal(390) cannot add 1 element to context");
                          }

                          goto LABEL_161;
                        case 391:
                          if ((sub_100020050(a1, "", "raidFailedPMXReconstructionHost", *a2) & 1) == 0)
                          {
                            sub_100020530("ASPFTLParseBufferToCxt: raidFailedPMXReconstructionHost(391) cannot add 1 element to context");
                          }

                          goto LABEL_161;
                        case 392:
                          if ((sub_100020050(a1, "", "raidSuccessfulRMXReconstructionInternal", *a2) & 1) == 0)
                          {
                            sub_100020530("ASPFTLParseBufferToCxt: raidSuccessfulRMXReconstructionInternal(392) cannot add 1 element to context");
                          }

                          goto LABEL_161;
                        case 393:
                          if ((sub_100020050(a1, "", "raidSuccessfulRMXReconstructionHost", *a2) & 1) == 0)
                          {
                            sub_100020530("ASPFTLParseBufferToCxt: raidSuccessfulRMXReconstructionHost(393) cannot add 1 element to context");
                          }

                          goto LABEL_161;
                        case 394:
                          if ((sub_100020050(a1, "", "raidFailedRMXReconstructionInternal", *a2) & 1) == 0)
                          {
                            sub_100020530("ASPFTLParseBufferToCxt: raidFailedRMXReconstructionInternal(394) cannot add 1 element to context");
                          }

                          goto LABEL_161;
                        case 395:
                          if ((sub_100020050(a1, "", "raidFailedRMXReconstructionHost", *a2) & 1) == 0)
                          {
                            sub_100020530("ASPFTLParseBufferToCxt: raidFailedRMXReconstructionHost(395) cannot add 1 element to context");
                          }

                          goto LABEL_161;
                        case 396:
                          if ((sub_100020050(a1, "", "raidFailedReadParityInternal", *a2) & 1) == 0)
                          {
                            sub_100020530("ASPFTLParseBufferToCxt: raidFailedReadParityInternal(396) cannot add 1 element to context");
                          }

                          goto LABEL_161;
                        case 397:
                          if ((sub_100020050(a1, "", "raidFailedReadQParityInternal", *a2) & 1) == 0)
                          {
                            sub_100020530("ASPFTLParseBufferToCxt: raidFailedReadQParityInternal(397) cannot add 1 element to context");
                          }

                          goto LABEL_161;
                        case 398:
                          if ((sub_100020050(a1, "", "raidFailedReadQParity", *a2) & 1) == 0)
                          {
                            sub_100020530("ASPFTLParseBufferToCxt: raidFailedReadQParity(398) cannot add 1 element to context");
                          }

                          goto LABEL_161;
                        case 399:
                          if ((sub_100020050(a1, "", "raidFailedReadQCopy", *a2) & 1) == 0)
                          {
                            sub_100020530("ASPFTLParseBufferToCxt: raidFailedReadQCopy(399) cannot add 1 element to context");
                          }

                          goto LABEL_161;
                        case 400:
                          if ((sub_100020050(a1, "", "raidFailedReconstructionQParity", *a2) & 1) == 0)
                          {
                            sub_100020530("ASPFTLParseBufferToCxt: raidFailedReconstructionQParity(400) cannot add 1 element to context");
                          }

                          goto LABEL_161;
                        case 401:
                          if ((sub_100020050(a1, "", "offlineBlocksCnt", *a2) & 1) == 0)
                          {
                            sub_100020530("ASPFTLParseBufferToCxt: offlineBlocksCnt(401) cannot add 1 element to context");
                          }

                          goto LABEL_161;
                        case 402:
                          if ((sub_100020050(a1, "", "bork0Revectors", *a2) & 1) == 0)
                          {
                            sub_100020530("ASPFTLParseBufferToCxt: bork0Revectors(402) cannot add 1 element to context");
                          }

                          goto LABEL_161;
                        case 403:
                          if ((sub_100020050(a1, "", "raidFailedReadBlog", *a2) & 1) == 0)
                          {
                            sub_100020530("ASPFTLParseBufferToCxt: raidFailedReadBlog(403) cannot add 1 element to context");
                          }

                          goto LABEL_161;
                        case 404:
                          if ((sub_100020050(a1, "", "numReliabilityRefreshes", *a2) & 1) == 0)
                          {
                            sub_100020530("ASPFTLParseBufferToCxt: numReliabilityRefreshes(404) cannot add 1 element to context");
                          }

                          goto LABEL_161;
                        case 405:
                          if ((sub_100020050(a1, "", "raidFailedReadQCopyInternal", *a2) & 1) == 0)
                          {
                            sub_100020530("ASPFTLParseBufferToCxt: raidFailedReadQCopyInternal(405) cannot add 1 element to context");
                          }

                          goto LABEL_161;
                        case 406:
                          if (v9 != 5)
                          {
                            sub_100020530("ASPFTLParseBufferToCxt: raidReconstructSuccessFlow(406): (#5) cfg elements != (%d) buffer elements", v9);
                          }

                          if (v7 >> 33 >= 3)
                          {
                            v12 = 5;
                          }

                          else
                          {
                            v12 = v9;
                          }

                          if (sub_1000189BC(a1, "raidReconstructSuccessFlow_", a2, 8u, v12))
                          {
                            goto LABEL_110;
                          }

                          sub_100020530("ASPFTLParseBufferToCxt: raidReconstructSuccessFlow(406): Cannot add 5 elements to context", v14);
                          return v5;
                        case 407:
                          if (v9 != 5)
                          {
                            sub_100020530("ASPFTLParseBufferToCxt: raidReconstructFailFlow(407): (#5) cfg elements != (%d) buffer elements", v9);
                          }

                          if (v7 >> 33 >= 3)
                          {
                            v12 = 5;
                          }

                          else
                          {
                            v12 = v9;
                          }

                          if (sub_1000189BC(a1, "raidReconstructFailFlow_", a2, 8u, v12))
                          {
                            goto LABEL_110;
                          }

                          sub_100020530("ASPFTLParseBufferToCxt: raidReconstructFailFlow(407): Cannot add 5 elements to context", v14);
                          return v5;
                        case 408:
                          if ((sub_100020050(a1, "", "raidReconstructFailP", *a2) & 1) == 0)
                          {
                            sub_100020530("ASPFTLParseBufferToCxt: raidReconstructFailP(408) cannot add 1 element to context");
                          }

                          goto LABEL_161;
                        case 409:
                          if ((sub_100020050(a1, "", "raidReconstructFailQ", *a2) & 1) == 0)
                          {
                            sub_100020530("ASPFTLParseBufferToCxt: raidReconstructFailQ(409) cannot add 1 element to context");
                          }

                          goto LABEL_161;
                        case 410:
                          if ((sub_100020050(a1, "", "raidReconstructFailUECC", *a2) & 1) == 0)
                          {
                            sub_100020530("ASPFTLParseBufferToCxt: raidReconstructFailUECC(410) cannot add 1 element to context");
                          }

                          goto LABEL_161;
                        case 411:
                          if ((sub_100020050(a1, "", "raidReconstructFailUnsupp", *a2) & 1) == 0)
                          {
                            sub_100020530("ASPFTLParseBufferToCxt: raidReconstructFailUnsupp(411) cannot add 1 element to context");
                          }

                          goto LABEL_161;
                        case 412:
                          if ((sub_100020050(a1, "", "raidUECCOpenBand", *a2) & 1) == 0)
                          {
                            sub_100020530("ASPFTLParseBufferToCxt: raidUECCOpenBand(412) cannot add 1 element to context");
                          }

                          goto LABEL_161;
                        case 414:
                          if ((sub_100020050(a1, "", "ueccReads", *a2) & 1) == 0)
                          {
                            sub_100020530("ASPFTLParseBufferToCxt: ueccReads(414) cannot add 1 element to context");
                          }

                          goto LABEL_161;
                        case 416:
                          if ((sub_100020050(a1, "", "raidSuccessfulVerify", *a2) & 1) == 0)
                          {
                            sub_100020530("ASPFTLParseBufferToCxt: raidSuccessfulVerify(416) cannot add 1 element to context");
                          }

                          goto LABEL_161;
                        case 417:
                          if ((sub_100020050(a1, "", "raidFailedVerify", *a2) & 1) == 0)
                          {
                            sub_100020530("ASPFTLParseBufferToCxt: raidFailedVerify(417) cannot add 1 element to context");
                          }

                          goto LABEL_161;
                        case 418:
                          if ((sub_100020050(a1, "", "numBandsVerified", *a2) & 1) == 0)
                          {
                            sub_100020530("ASPFTLParseBufferToCxt: numBandsVerified(418) cannot add 1 element to context");
                          }

                          goto LABEL_161;
                        case 419:
                          if ((sub_100020050(a1, "", "cache_heads", *a2) & 1) == 0)
                          {
                            sub_100020530("ASPFTLParseBufferToCxt: cache_heads(419) cannot add 1 element to context");
                          }

                          goto LABEL_161;
                        case 420:
                          if ((sub_100020050(a1, "", "AbortSkip_RMXtoMPBX", *a2) & 1) == 0)
                          {
                            sub_100020530("ASPFTLParseBufferToCxt: AbortSkip_RMXtoMPBX(420) cannot add 1 element to context");
                          }

                          goto LABEL_161;
                        case 421:
                          if ((sub_100020050(a1, "", "s3eFwVer", *a2) & 1) == 0)
                          {
                            sub_100020530("ASPFTLParseBufferToCxt: s3eFwVer(421) cannot add 1 element to context");
                          }

                          goto LABEL_161;
                        case 422:
                          if ((sub_100020050(a1, "", "readVerifyNative", *a2) & 1) == 0)
                          {
                            sub_100020530("ASPFTLParseBufferToCxt: readVerifyNative(422) cannot add 1 element to context");
                          }

                          goto LABEL_161;
                        case 423:
                          if ((sub_100020050(a1, "", "reducedReadVerifyNative", *a2) & 1) == 0)
                          {
                            sub_100020530("ASPFTLParseBufferToCxt: reducedReadVerifyNative(423) cannot add 1 element to context");
                          }

                          goto LABEL_161;
                        case 424:
                          if ((sub_100020050(a1, "", "readVerifySlc", *a2) & 1) == 0)
                          {
                            sub_100020530("ASPFTLParseBufferToCxt: readVerifySlc(424) cannot add 1 element to context");
                          }

                          goto LABEL_161;
                        case 425:
                          if ((sub_100020050(a1, "", "reducedReadVerifySlc", *a2) & 1) == 0)
                          {
                            sub_100020530("ASPFTLParseBufferToCxt: reducedReadVerifySlc(425) cannot add 1 element to context");
                          }

                          goto LABEL_161;
                        case 426:
                          if ((sub_100020050(a1, "", "RxBurnEvictions", *a2) & 1) == 0)
                          {
                            sub_100020530("ASPFTLParseBufferToCxt: RxBurnEvictions(426) cannot add 1 element to context");
                          }

                          goto LABEL_161;
                        case 427:
                          if ((sub_100020050(a1, "", "directToTLCBands", *a2) & 1) == 0)
                          {
                            sub_100020530("ASPFTLParseBufferToCxt: directToTLCBands(427) cannot add 1 element to context");
                          }

                          goto LABEL_161;
                        case 428:
                          if ((sub_100020050(a1, "", "nandDesc", *a2) & 1) == 0)
                          {
                            sub_100020530("ASPFTLParseBufferToCxt: nandDesc(428) cannot add 1 element to context");
                          }

                          goto LABEL_161;
                        case 429:
                          if ((sub_100020050(a1, "", "fwUpdatesPercentUsed", *a2) & 1) == 0)
                          {
                            sub_100020530("ASPFTLParseBufferToCxt: fwUpdatesPercentUsed(429) cannot add 1 element to context");
                          }

                          goto LABEL_161;
                        case 430:
                          if ((sub_100020050(a1, "", "slcPercentUsed", *a2) & 1) == 0)
                          {
                            sub_100020530("ASPFTLParseBufferToCxt: slcPercentUsed(430) cannot add 1 element to context");
                          }

                          goto LABEL_161;
                        case 431:
                          if ((sub_100020050(a1, "", "percentUsed", *a2) & 1) == 0)
                          {
                            sub_100020530("ASPFTLParseBufferToCxt: percentUsed(431) cannot add 1 element to context");
                          }

                          goto LABEL_161;
                        default:
                          switch(v7)
                          {
                            case 432:
                              if ((sub_100020050(a1, "", "hostAutoWrites", *a2) & 1) == 0)
                              {
                                sub_100020530("ASPFTLParseBufferToCxt: hostAutoWrites(432) cannot add 1 element to context");
                              }

                              goto LABEL_161;
                            case 433:
                              if ((sub_100020050(a1, "", "hostAutoWriteXacts", *a2) & 1) == 0)
                              {
                                sub_100020530("ASPFTLParseBufferToCxt: hostAutoWriteXacts(433) cannot add 1 element to context");
                              }

                              goto LABEL_161;
                            case 434:
                              if ((sub_100020050(a1, "", "gcDestDynamic", *a2) & 1) == 0)
                              {
                                sub_100020530("ASPFTLParseBufferToCxt: gcDestDynamic(434) cannot add 1 element to context");
                              }

                              goto LABEL_161;
                            case 435:
                              if ((sub_100020050(a1, "", "gcDestStatic", *a2) & 1) == 0)
                              {
                                sub_100020530("ASPFTLParseBufferToCxt: gcDestStatic(435) cannot add 1 element to context");
                              }

                              goto LABEL_161;
                            case 436:
                              if ((sub_100020050(a1, "", "gcDestWearlevel", *a2) & 1) == 0)
                              {
                                sub_100020530("ASPFTLParseBufferToCxt: gcDestWearlevel(436) cannot add 1 element to context");
                              }

                              goto LABEL_161;
                            case 437:
                              if ((sub_100020050(a1, "", "gcDestParity", *a2) & 1) == 0)
                              {
                                sub_100020530("ASPFTLParseBufferToCxt: gcDestParity(437) cannot add 1 element to context");
                              }

                              goto LABEL_161;
                            case 438:
                              if ((sub_100020050(a1, "", "AbortSkip_Format", *a2) & 1) == 0)
                              {
                                sub_100020530("ASPFTLParseBufferToCxt: AbortSkip_Format(438) cannot add 1 element to context");
                              }

                              goto LABEL_161;
                            case 440:
                              if ((sub_100020050(a1, "", "raidSLCPadding", *a2) & 1) == 0)
                              {
                                sub_100020530("ASPFTLParseBufferToCxt: raidSLCPadding(440) cannot add 1 element to context");
                              }

                              goto LABEL_161;
                            case 441:
                              if ((sub_100020050(a1, "", "raidGCBands", *a2) & 1) == 0)
                              {
                                sub_100020530("ASPFTLParseBufferToCxt: raidGCBands(441) cannot add 1 element to context");
                              }

                              goto LABEL_161;
                            case 442:
                              if ((sub_100020050(a1, "", "raidGCSectors", *a2) & 1) == 0)
                              {
                                sub_100020530("ASPFTLParseBufferToCxt: raidGCSectors(442) cannot add 1 element to context");
                              }

                              goto LABEL_161;
                            case 443:
                              if ((sub_100020050(a1, "", "raidGCPadding", *a2) & 1) == 0)
                              {
                                sub_100020530("ASPFTLParseBufferToCxt: raidGCPadding(443) cannot add 1 element to context");
                              }

                              goto LABEL_161;
                            case 444:
                              if ((sub_100020050(a1, "", "raidSLCBandsPerHostFlow", *a2) & 1) == 0)
                              {
                                sub_100020530("ASPFTLParseBufferToCxt: raidSLCBandsPerHostFlow(444) cannot add 1 element to context");
                              }

                              goto LABEL_161;
                            case 445:
                              if ((sub_100020050(a1, "", "raidSLCSecsPerHostFlow", *a2) & 1) == 0)
                              {
                                sub_100020530("ASPFTLParseBufferToCxt: raidSLCSecsPerHostFlow(445) cannot add 1 element to context");
                              }

                              goto LABEL_161;
                            case 446:
                              if ((sub_100020050(a1, "", "rxBurnMinCycleRuns", *a2) & 1) == 0)
                              {
                                sub_100020530("ASPFTLParseBufferToCxt: rxBurnMinCycleRuns(446) cannot add 1 element to context");
                              }

                              goto LABEL_161;
                            case 447:
                              if ((sub_100020050(a1, "", "clogNumFastCxt", *a2) & 1) == 0)
                              {
                                sub_100020530("ASPFTLParseBufferToCxt: clogNumFastCxt(447) cannot add 1 element to context");
                              }

                              goto LABEL_161;
                            case 448:
                              if ((sub_100020050(a1, "", "clogNumRapidReboots", *a2) & 1) == 0)
                              {
                                sub_100020530("ASPFTLParseBufferToCxt: clogNumRapidReboots(448) cannot add 1 element to context");
                              }

                              goto LABEL_161;
                            case 449:
                              if ((sub_100020050(a1, "", "clogFastCxtAbvThr", *a2) & 1) == 0)
                              {
                                sub_100020530("ASPFTLParseBufferToCxt: clogFastCxtAbvThr(449) cannot add 1 element to context");
                              }

                              goto LABEL_161;
                            case 450:
                              if ((sub_100020050(a1, "", "rxBurnDiffModeRuns", *a2) & 1) == 0)
                              {
                                sub_100020530("ASPFTLParseBufferToCxt: rxBurnDiffModeRuns(450) cannot add 1 element to context");
                              }

                              goto LABEL_161;
                            case 452:
                              if ((sub_100020050(a1, "", "indReadVerifyFail", *a2) & 1) == 0)
                              {
                                sub_100020530("ASPFTLParseBufferToCxt: indReadVerifyFail(452) cannot add 1 element to context");
                              }

                              goto LABEL_161;
                            case 453:
                              if (v9 != 25)
                              {
                                sub_100020530("ASPFTLParseBufferToCxt: numOfThrottlingEntriesPerReadLevel(453): (#25) cfg elements != (%d) buffer elements", v9);
                              }

                              if (v7 >> 33 >= 0xD)
                              {
                                v12 = 25;
                              }

                              else
                              {
                                v12 = v9;
                              }

                              if (sub_1000189BC(a1, "numOfThrottlingEntriesPerReadLevel_", a2, 8u, v12))
                              {
                                goto LABEL_110;
                              }

                              sub_100020530("ASPFTLParseBufferToCxt: numOfThrottlingEntriesPerReadLevel(453): Cannot add 25 elements to context", v14);
                              return v5;
                            case 454:
                              if (v9 != 25)
                              {
                                sub_100020530("ASPFTLParseBufferToCxt: numOfThrottlingEntriesPerWriteLevel(454): (#25) cfg elements != (%d) buffer elements", v9);
                              }

                              if (v7 >> 33 >= 0xD)
                              {
                                v12 = 25;
                              }

                              else
                              {
                                v12 = v9;
                              }

                              if (sub_1000189BC(a1, "numOfThrottlingEntriesPerWriteLevel_", a2, 8u, v12))
                              {
                                goto LABEL_110;
                              }

                              sub_100020530("ASPFTLParseBufferToCxt: numOfThrottlingEntriesPerWriteLevel(454): Cannot add 25 elements to context", v14);
                              return v5;
                            case 456:
                              if (v9 != 10)
                              {
                                sub_100020530("ASPFTLParseBufferToCxt: slcFifoDepth(456): (#10) cfg elements != (%d) buffer elements", v9);
                              }

                              if (v9 >= 0xB)
                              {
                                v12 = 10;
                              }

                              else
                              {
                                v12 = v9;
                              }

                              if (sub_1000189BC(a1, "slcFifoDepth_", a2, 8u, v12))
                              {
                                goto LABEL_110;
                              }

                              sub_100020530("ASPFTLParseBufferToCxt: slcFifoDepth(456): Cannot add 10 elements to context", v14);
                              return v5;
                            case 457:
                              if ((sub_100020050(a1, "", "wcacheSectorsDirtyIdle", *a2) & 1) == 0)
                              {
                                sub_100020530("ASPFTLParseBufferToCxt: wcacheSectorsDirtyIdle(457) cannot add 1 element to context");
                              }

                              goto LABEL_161;
                            case 458:
                              if ((sub_100020050(a1, "", "wcacheDS_SectorsDirtyIdle", *a2) & 1) == 0)
                              {
                                sub_100020530("ASPFTLParseBufferToCxt: wcacheDS_SectorsDirtyIdle(458) cannot add 1 element to context");
                              }

                              goto LABEL_161;
                            case 459:
                              if ((sub_100020050(a1, "", "wcacheFS_MbytesDirtyIdle", *a2) & 1) == 0)
                              {
                                sub_100020530("ASPFTLParseBufferToCxt: wcacheFS_MbytesDirtyIdle(459) cannot add 1 element to context");
                              }

                              goto LABEL_161;
                            case 460:
                              if (v9 != 256)
                              {
                                sub_100020530("ASPFTLParseBufferToCxt: CacheDepthVsThroughput(460): (#256) cfg elements != (%d) buffer elements", v9);
                              }

                              if (v9 >= 0x101)
                              {
                                v12 = 256;
                              }

                              else
                              {
                                v12 = v9;
                              }

                              if (sub_1000189BC(a1, "CacheDepthVsThroughput_", a2, 8u, v12))
                              {
                                goto LABEL_110;
                              }

                              sub_100020530("ASPFTLParseBufferToCxt: CacheDepthVsThroughput(460): Cannot add 256 elements to context", v14);
                              return v5;
                            case 461:
                              if ((sub_100020050(a1, "", "directToTLCSectors", *a2) & 1) == 0)
                              {
                                sub_100020530("ASPFTLParseBufferToCxt: directToTLCSectors(461) cannot add 1 element to context");
                              }

                              goto LABEL_161;
                            case 462:
                              if ((sub_100020050(a1, "", "fallbackToWaterfall", *a2) & 1) == 0)
                              {
                                sub_100020530("ASPFTLParseBufferToCxt: fallbackToWaterfall(462) cannot add 1 element to context");
                              }

                              goto LABEL_161;
                            case 463:
                              if (v9 != 11)
                              {
                                sub_100020530("ASPFTLParseBufferToCxt: balanceProportionBucketsHistogram(463): (#11) cfg elements != (%d) buffer elements", v9);
                              }

                              if (v7 >> 34 >= 3)
                              {
                                v12 = 11;
                              }

                              else
                              {
                                v12 = v9;
                              }

                              if (sub_1000189BC(a1, "balanceProportionBucketsHistogram_", a2, 8u, v12))
                              {
                                goto LABEL_110;
                              }

                              sub_100020530("ASPFTLParseBufferToCxt: balanceProportionBucketsHistogram(463): Cannot add 11 elements to context", v14);
                              return v5;
                            case 464:
                              if ((sub_100020050(a1, "", "lockToTlc", *a2) & 1) == 0)
                              {
                                sub_100020530("ASPFTLParseBufferToCxt: lockToTlc(464) cannot add 1 element to context");
                              }

                              goto LABEL_161;
                            case 465:
                              if (v9 != 10)
                              {
                                sub_100020530("ASPFTLParseBufferToCxt: burstSizeHistogram(465): (#10) cfg elements != (%d) buffer elements", v9);
                              }

                              if (v9 >= 0xB)
                              {
                                v12 = 10;
                              }

                              else
                              {
                                v12 = v9;
                              }

                              if (sub_1000189BC(a1, "burstSizeHistogram_", a2, 8u, v12))
                              {
                                goto LABEL_110;
                              }

                              sub_100020530("ASPFTLParseBufferToCxt: burstSizeHistogram(465): Cannot add 10 elements to context", v14);
                              return v5;
                            case 466:
                              if (v9 != 64)
                              {
                                sub_100020530("ASPFTLParseBufferToCxt: qosDirectToTLC(466): (#64) cfg elements != (%d) buffer elements", v9);
                              }

                              if (v9 >= 0x41)
                              {
                                v12 = 64;
                              }

                              else
                              {
                                v12 = v9;
                              }

                              if (sub_1000189BC(a1, "qosDirectToTLC_", a2, 8u, v12))
                              {
                                goto LABEL_110;
                              }

                              sub_100020530("ASPFTLParseBufferToCxt: qosDirectToTLC(466): Cannot add 64 elements to context", v14);
                              return v5;
                            case 467:
                              if (v9 != 4)
                              {
                                sub_100020530("ASPFTLParseBufferToCxt: maxQosDirectToTLC(467): (#4) cfg elements != (%d) buffer elements", v9);
                              }

                              if (v9 >= 5)
                              {
                                v12 = 4;
                              }

                              else
                              {
                                v12 = v9;
                              }

                              if (sub_1000189BC(a1, "maxQosDirectToTLC_", a2, 8u, v12))
                              {
                                goto LABEL_110;
                              }

                              sub_100020530("ASPFTLParseBufferToCxt: maxQosDirectToTLC(467): Cannot add 4 elements to context", v14);
                              return v5;
                            case 468:
                              if (v9 != 16)
                              {
                                sub_100020530("ASPFTLParseBufferToCxt: wcacheDirtyAtFlush(468): (#16) cfg elements != (%d) buffer elements", v9);
                              }

                              if (v9 >= 0x11)
                              {
                                v12 = 16;
                              }

                              else
                              {
                                v12 = v9;
                              }

                              if (sub_1000189BC(a1, "wcacheDirtyAtFlush_", a2, 8u, v12))
                              {
                                goto LABEL_110;
                              }

                              sub_100020530("ASPFTLParseBufferToCxt: wcacheDirtyAtFlush(468): Cannot add 16 elements to context", v14);
                              return v5;
                            case 469:
                              if (v9 != 2)
                              {
                                sub_100020530("ASPFTLParseBufferToCxt: raidReconstructSuccessPartition(469): (#2) cfg elements != (%d) buffer elements", v9);
                              }

                              if (v9 >= 3)
                              {
                                v12 = 2;
                              }

                              else
                              {
                                v12 = v9;
                              }

                              if (sub_1000189BC(a1, "raidReconstructSuccessPartition_", a2, 8u, v12))
                              {
                                goto LABEL_110;
                              }

                              sub_100020530("ASPFTLParseBufferToCxt: raidReconstructSuccessPartition(469): Cannot add 2 elements to context", v14);
                              return v5;
                            case 470:
                              if (v9 != 2)
                              {
                                sub_100020530("ASPFTLParseBufferToCxt: raidReconstructFailPartition(470): (#2) cfg elements != (%d) buffer elements", v9);
                              }

                              if (v9 >= 3)
                              {
                                v12 = 2;
                              }

                              else
                              {
                                v12 = v9;
                              }

                              if (sub_1000189BC(a1, "raidReconstructFailPartition_", a2, 8u, v12))
                              {
                                goto LABEL_110;
                              }

                              sub_100020530("ASPFTLParseBufferToCxt: raidReconstructFailPartition(470): Cannot add 2 elements to context", v14);
                              return v5;
                            case 471:
                              if ((sub_100020050(a1, "", "raidUncleanBootBandFail", *a2) & 1) == 0)
                              {
                                sub_100020530("ASPFTLParseBufferToCxt: raidUncleanBootBandFail(471) cannot add 1 element to context");
                              }

                              goto LABEL_161;
                            case 472:
                              if ((sub_100020050(a1, "", "raidReconstructFailBandFlowHost", *a2) & 1) == 0)
                              {
                                sub_100020530("ASPFTLParseBufferToCxt: raidReconstructFailBandFlowHost(472) cannot add 1 element to context");
                              }

                              goto LABEL_161;
                            case 473:
                              if ((sub_100020050(a1, "", "raidReconstructFailBandFlowGC", *a2) & 1) == 0)
                              {
                                sub_100020530("ASPFTLParseBufferToCxt: raidReconstructFailBandFlowGC(473) cannot add 1 element to context");
                              }

                              goto LABEL_161;
                            case 476:
                              if (v9 != 2)
                              {
                                sub_100020530("ASPFTLParseBufferToCxt: raidSuccessfulRecoLbaRange(476): (#2) cfg elements != (%d) buffer elements", v9);
                              }

                              if (v9 >= 3)
                              {
                                v12 = 2;
                              }

                              else
                              {
                                v12 = v9;
                              }

                              if (sub_1000189BC(a1, "raidSuccessfulRecoLbaRange_", a2, 8u, v12))
                              {
                                goto LABEL_110;
                              }

                              sub_100020530("ASPFTLParseBufferToCxt: raidSuccessfulRecoLbaRange(476): Cannot add 2 elements to context", v14);
                              return v5;
                            case 477:
                              if (v9 != 2)
                              {
                                sub_100020530("ASPFTLParseBufferToCxt: raidFailedRecoLbaRange(477): (#2) cfg elements != (%d) buffer elements", v9);
                              }

                              if (v9 >= 3)
                              {
                                v12 = 2;
                              }

                              else
                              {
                                v12 = v9;
                              }

                              if (sub_1000189BC(a1, "raidFailedRecoLbaRange_", a2, 8u, v12))
                              {
                                goto LABEL_110;
                              }

                              sub_100020530("ASPFTLParseBufferToCxt: raidFailedRecoLbaRange(477): Cannot add 2 elements to context", v14);
                              return v5;
                            case 481:
                              if (v9 != 32)
                              {
                                sub_100020530("ASPFTLParseBufferToCxt: skinnyBandErases_481(481): (#32) cfg elements != (%d) buffer elements", v9);
                              }

                              if (v9 >= 0x21)
                              {
                                v12 = 32;
                              }

                              else
                              {
                                v12 = v9;
                              }

                              if (sub_1000189BC(a1, "skinnyBandErases_481_", a2, 8u, v12))
                              {
                                goto LABEL_110;
                              }

                              sub_100020530("ASPFTLParseBufferToCxt: skinnyBandErases_481(481): Cannot add 32 elements to context", v14);
                              return v5;
                            case 483:
                              if ((sub_100020050(a1, "", "tlcOverHeatWaterfall", *a2) & 1) == 0)
                              {
                                sub_100020530("ASPFTLParseBufferToCxt: tlcOverHeatWaterfall(483) cannot add 1 element to context");
                              }

                              goto LABEL_161;
                            case 484:
                              if ((sub_100020050(a1, "", "skinnyCyclesConvert", *a2) & 1) == 0)
                              {
                                sub_100020530("ASPFTLParseBufferToCxt: skinnyCyclesConvert(484) cannot add 1 element to context");
                              }

                              goto LABEL_161;
                            case 485:
                              if ((sub_100020050(a1, "", "non_proportional_directToTLCSectors", *a2) & 1) == 0)
                              {
                                sub_100020530("ASPFTLParseBufferToCxt: non_proportional_directToTLCSectors(485) cannot add 1 element to context");
                              }

                              goto LABEL_161;
                            case 486:
                              if ((sub_100020050(a1, "", "maxFailedFastCxtSync", *a2) & 1) == 0)
                              {
                                sub_100020530("ASPFTLParseBufferToCxt: maxFailedFastCxtSync(486) cannot add 1 element to context");
                              }

                              goto LABEL_161;
                            case 487:
                              if ((sub_100020050(a1, "", "numFormatUserArea", *a2) & 1) == 0)
                              {
                                sub_100020530("ASPFTLParseBufferToCxt: numFormatUserArea(487) cannot add 1 element to context");
                              }

                              goto LABEL_161;
                            case 488:
                              if ((sub_100020050(a1, "", "clogFastCxtSyncAborted", *a2) & 1) == 0)
                              {
                                sub_100020530("ASPFTLParseBufferToCxt: clogFastCxtSyncAborted(488) cannot add 1 element to context");
                              }

                              goto LABEL_161;
                            case 489:
                              if (v9 != 5)
                              {
                                sub_100020530("ASPFTLParseBufferToCxt: clogOccupationSectors(489): (#5) cfg elements != (%d) buffer elements", v9);
                              }

                              if (v7 >> 33 >= 3)
                              {
                                v12 = 5;
                              }

                              else
                              {
                                v12 = v9;
                              }

                              if (sub_1000189BC(a1, "clogOccupationSectors_", a2, 8u, v12))
                              {
                                goto LABEL_110;
                              }

                              sub_100020530("ASPFTLParseBufferToCxt: clogOccupationSectors(489): Cannot add 5 elements to context", v14);
                              return v5;
                            case 490:
                              if (v9 != 64)
                              {
                                sub_100020530("ASPFTLParseBufferToCxt: bdrTmpHist(490): (#64) cfg elements != (%d) buffer elements", v9);
                              }

                              if (v9 >= 0x41)
                              {
                                v12 = 64;
                              }

                              else
                              {
                                v12 = v9;
                              }

                              if (sub_1000189BC(a1, "bdrTmpHist_", a2, 8u, v12))
                              {
                                goto LABEL_110;
                              }

                              sub_100020530("ASPFTLParseBufferToCxt: bdrTmpHist(490): Cannot add 64 elements to context", v14);
                              return v5;
                            case 491:
                              if ((sub_100020050(a1, "", "numFWUpdates", *a2) & 1) == 0)
                              {
                                sub_100020530("ASPFTLParseBufferToCxt: numFWUpdates(491) cannot add 1 element to context");
                              }

                              goto LABEL_161;
                            case 492:
                              if ((sub_100020050(a1, "", "numClogLoadFails", *a2) & 1) == 0)
                              {
                                sub_100020530("ASPFTLParseBufferToCxt: numClogLoadFails(492) cannot add 1 element to context");
                              }

                              goto LABEL_161;
                            case 493:
                              if ((sub_100020050(a1, "", "rxBurnNumForcedDiffMode", *a2) & 1) == 0)
                              {
                                sub_100020530("ASPFTLParseBufferToCxt: rxBurnNumForcedDiffMode(493) cannot add 1 element to context");
                              }

                              goto LABEL_161;
                            case 494:
                              if ((sub_100020050(a1, "", "RD_numSaves", *a2) & 1) == 0)
                              {
                                sub_100020530("ASPFTLParseBufferToCxt: RD_numSaves(494) cannot add 1 element to context");
                              }

                              goto LABEL_161;
                            case 495:
                              if ((sub_100020050(a1, "", "eanCompressWrites", *a2) & 1) == 0)
                              {
                                sub_100020530("ASPFTLParseBufferToCxt: eanCompressWrites(495) cannot add 1 element to context");
                              }

                              goto LABEL_161;
                            case 496:
                              if ((sub_100020050(a1, "", "eanHostWrites", *a2) & 1) == 0)
                              {
                                sub_100020530("ASPFTLParseBufferToCxt: eanHostWrites(496) cannot add 1 element to context");
                              }

                              goto LABEL_161;
                            case 497:
                              if ((sub_100020050(a1, "", "bandPreErases", *a2) & 1) == 0)
                              {
                                sub_100020530("ASPFTLParseBufferToCxt: bandPreErases(497) cannot add 1 element to context");
                              }

                              goto LABEL_161;
                            case 498:
                              if ((sub_100020050(a1, "", "eanHostUnmaps", *a2) & 1) == 0)
                              {
                                sub_100020530("ASPFTLParseBufferToCxt: eanHostUnmaps(498) cannot add 1 element to context");
                              }

                              goto LABEL_161;
                            case 499:
                              if ((sub_100020050(a1, "", "eanHostFlushes", *a2) & 1) == 0)
                              {
                                sub_100020530("ASPFTLParseBufferToCxt: eanHostFlushes(499) cannot add 1 element to context");
                              }

                              goto LABEL_161;
                            case 500:
                              if ((sub_100020050(a1, "", "eanFastWrites", *a2) & 1) == 0)
                              {
                                sub_100020530("ASPFTLParseBufferToCxt: eanFastWrites(500) cannot add 1 element to context");
                              }

                              goto LABEL_161;
                            case 501:
                              if ((sub_100020050(a1, "", "autowriteDS2FSCollisions", *a2) & 1) == 0)
                              {
                                sub_100020530("ASPFTLParseBufferToCxt: autowriteDS2FSCollisions(501) cannot add 1 element to context");
                              }

                              goto LABEL_161;
                            case 502:
                              if ((sub_100020050(a1, "", "autowriteWaitTransferTaskBlocks", *a2) & 1) == 0)
                              {
                                sub_100020530("ASPFTLParseBufferToCxt: autowriteWaitTransferTaskBlocks(502) cannot add 1 element to context");
                              }

                              goto LABEL_161;
                            case 503:
                              if (v9 != 2)
                              {
                                sub_100020530("ASPFTLParseBufferToCxt: avgCycle(503): (#2) cfg elements != (%d) buffer elements", v9);
                              }

                              if (v9 >= 3)
                              {
                                v12 = 2;
                              }

                              else
                              {
                                v12 = v9;
                              }

                              if (sub_1000189BC(a1, "avgCycle_", a2, 8u, v12))
                              {
                                goto LABEL_110;
                              }

                              sub_100020530("ASPFTLParseBufferToCxt: avgCycle(503): Cannot add 2 elements to context", v14);
                              return v5;
                            case 504:
                              if ((sub_100020050(a1, "", "RD_DeferredClearsOverflowCnt", *a2) & 1) == 0)
                              {
                                sub_100020530("ASPFTLParseBufferToCxt: RD_DeferredClearsOverflowCnt(504) cannot add 1 element to context");
                              }

                              goto LABEL_161;
                            default:
                              switch(v7)
                              {
                                case 505:
                                  if ((sub_100020050(a1, "", "maxVerticsInBand", *a2) & 1) == 0)
                                  {
                                    sub_100020530("ASPFTLParseBufferToCxt: maxVerticsInBand(505) cannot add 1 element to context");
                                  }

                                  goto LABEL_161;
                                case 506:
                                  if ((sub_100020050(a1, "", "numVertics", *a2) & 1) == 0)
                                  {
                                    sub_100020530("ASPFTLParseBufferToCxt: numVertics(506) cannot add 1 element to context");
                                  }

                                  goto LABEL_161;
                                case 507:
                                  if ((sub_100020050(a1, "", "exceededCVertics", *a2) & 1) == 0)
                                  {
                                    sub_100020530("ASPFTLParseBufferToCxt: exceededCVertics(507) cannot add 1 element to context");
                                  }

                                  goto LABEL_161;
                                case 510:
                                  if ((sub_100020050(a1, "", "raidReconstructFailMismatch", *a2) & 1) == 0)
                                  {
                                    sub_100020530("ASPFTLParseBufferToCxt: raidReconstructFailMismatch(510) cannot add 1 element to context");
                                  }

                                  goto LABEL_161;
                                case 511:
                                  if (v9 != 32)
                                  {
                                    sub_100020530("ASPFTLParseBufferToCxt: mspbootBlockRefreshCnt(511): (#32) cfg elements != (%d) buffer elements", v9);
                                  }

                                  if (v9 >= 0x21)
                                  {
                                    v12 = 32;
                                  }

                                  else
                                  {
                                    v12 = v9;
                                  }

                                  if (sub_1000189BC(a1, "mspbootBlockRefreshCnt_", a2, 8u, v12))
                                  {
                                    goto LABEL_110;
                                  }

                                  sub_100020530("ASPFTLParseBufferToCxt: mspbootBlockRefreshCnt(511): Cannot add 32 elements to context", v14);
                                  return v5;
                                case 516:
                                  if (v9 != 32)
                                  {
                                    sub_100020530("ASPFTLParseBufferToCxt: mspBootBlockRefreshTime(516): (#32) cfg elements != (%d) buffer elements", v9);
                                  }

                                  if (v9 >= 0x21)
                                  {
                                    v12 = 32;
                                  }

                                  else
                                  {
                                    v12 = v9;
                                  }

                                  if (sub_1000189BC(a1, "mspBootBlockRefreshTime_", a2, 8u, v12))
                                  {
                                    goto LABEL_110;
                                  }

                                  sub_100020530("ASPFTLParseBufferToCxt: mspBootBlockRefreshTime(516): Cannot add 32 elements to context", v14);
                                  return v5;
                                case 517:
                                  if ((sub_100020050(a1, "", "mspBootBlockCountPerMsp", *a2) & 1) == 0)
                                  {
                                    sub_100020530("ASPFTLParseBufferToCxt: mspBootBlockCountPerMsp(517) cannot add 1 element to context");
                                  }

                                  goto LABEL_161;
                                case 518:
                                  if ((sub_100020050(a1, "", "skinnyRevectorSLC", *a2) & 1) == 0)
                                  {
                                    sub_100020530("ASPFTLParseBufferToCxt: skinnyRevectorSLC(518) cannot add 1 element to context");
                                  }

                                  goto LABEL_161;
                                case 519:
                                  if ((sub_100020050(a1, "", "skinnyRevectorTLC", *a2) & 1) == 0)
                                  {
                                    sub_100020530("ASPFTLParseBufferToCxt: skinnyRevectorTLC(519) cannot add 1 element to context");
                                  }

                                  goto LABEL_161;
                                case 520:
                                  if ((sub_100020050(a1, "", "perfSetupAttempts", *a2) & 1) == 0)
                                  {
                                    sub_100020530("ASPFTLParseBufferToCxt: perfSetupAttempts(520) cannot add 1 element to context");
                                  }

                                  goto LABEL_161;
                                case 521:
                                  if ((sub_100020050(a1, "", "perfSetupSuccesses", *a2) & 1) == 0)
                                  {
                                    sub_100020530("ASPFTLParseBufferToCxt: perfSetupSuccesses(521) cannot add 1 element to context");
                                  }

                                  goto LABEL_161;
                                case 522:
                                  if ((sub_100020050(a1, "", "perfWriteAttempts", *a2) & 1) == 0)
                                  {
                                    sub_100020530("ASPFTLParseBufferToCxt: perfWriteAttempts(522) cannot add 1 element to context");
                                  }

                                  goto LABEL_161;
                                case 523:
                                  if ((sub_100020050(a1, "", "perfWriteSuccesses", *a2) & 1) == 0)
                                  {
                                    sub_100020530("ASPFTLParseBufferToCxt: perfWriteSuccesses(523) cannot add 1 element to context");
                                  }

                                  goto LABEL_161;
                                case 524:
                                  if ((sub_100020050(a1, "", "perfReadAttempts", *a2) & 1) == 0)
                                  {
                                    sub_100020530("ASPFTLParseBufferToCxt: perfReadAttempts(524) cannot add 1 element to context");
                                  }

                                  goto LABEL_161;
                                case 525:
                                  if ((sub_100020050(a1, "", "perfReadSuccesses", *a2) & 1) == 0)
                                  {
                                    sub_100020530("ASPFTLParseBufferToCxt: perfReadSuccesses(525) cannot add 1 element to context");
                                  }

                                  goto LABEL_161;
                                case 526:
                                  if ((sub_100020050(a1, "", "perfCleanupAttempts", *a2) & 1) == 0)
                                  {
                                    sub_100020530("ASPFTLParseBufferToCxt: perfCleanupAttempts(526) cannot add 1 element to context");
                                  }

                                  goto LABEL_161;
                                case 527:
                                  if ((sub_100020050(a1, "", "perfCleanupSuccesses", *a2) & 1) == 0)
                                  {
                                    sub_100020530("ASPFTLParseBufferToCxt: perfCleanupSuccesses(527) cannot add 1 element to context");
                                  }

                                  goto LABEL_161;
                                case 530:
                                  if ((sub_100020050(a1, "", "firstFailedDieId", *a2) & 1) == 0)
                                  {
                                    sub_100020530("ASPFTLParseBufferToCxt: firstFailedDieId(530) cannot add 1 element to context");
                                  }

                                  goto LABEL_161;
                                case 531:
                                  if ((sub_100020050(a1, "", "numDieFailures", *a2) & 1) == 0)
                                  {
                                    sub_100020530("ASPFTLParseBufferToCxt: numDieFailures(531) cannot add 1 element to context");
                                  }

                                  goto LABEL_161;
                                case 532:
                                  if ((sub_100020050(a1, "", "spareAvailablePercent", *a2) & 1) == 0)
                                  {
                                    sub_100020530("ASPFTLParseBufferToCxt: spareAvailablePercent(532) cannot add 1 element to context");
                                  }

                                  goto LABEL_161;
                                case 533:
                                  if ((sub_100020050(a1, "", "dataFabricErr", *a2) & 1) == 0)
                                  {
                                    sub_100020530("ASPFTLParseBufferToCxt: dataFabricErr(533) cannot add 1 element to context");
                                  }

                                  goto LABEL_161;
                                case 534:
                                  if ((sub_100020050(a1, "", "downlinkFabricErr", *a2) & 1) == 0)
                                  {
                                    sub_100020530("ASPFTLParseBufferToCxt: downlinkFabricErr(534) cannot add 1 element to context");
                                  }

                                  goto LABEL_161;
                                case 535:
                                  if ((sub_100020050(a1, "", "prpAccTimeoutErr", *a2) & 1) == 0)
                                  {
                                    sub_100020530("ASPFTLParseBufferToCxt: prpAccTimeoutErr(535) cannot add 1 element to context");
                                  }

                                  goto LABEL_161;
                                case 537:
                                  if ((sub_100020050(a1, "", "uplinkFabricErr", *a2) & 1) == 0)
                                  {
                                    sub_100020530("ASPFTLParseBufferToCxt: uplinkFabricErr(537) cannot add 1 element to context");
                                  }

                                  goto LABEL_161;
                                case 538:
                                  if ((sub_100020050(a1, "", "skinnyBandsGBB", *a2) & 1) == 0)
                                  {
                                    sub_100020530("ASPFTLParseBufferToCxt: skinnyBandsGBB(538) cannot add 1 element to context");
                                  }

                                  goto LABEL_161;
                                case 539:
                                  if ((sub_100020050(a1, "", "AbortPad_GcMustPadBand", *a2) & 1) == 0)
                                  {
                                    sub_100020530("ASPFTLParseBufferToCxt: AbortPad_GcMustPadBand(539) cannot add 1 element to context");
                                  }

                                  goto LABEL_161;
                                case 540:
                                  if ((sub_100020050(a1, "", "AbortPad_GcMustPadSkinny", *a2) & 1) == 0)
                                  {
                                    sub_100020530("ASPFTLParseBufferToCxt: AbortPad_GcMustPadSkinny(540) cannot add 1 element to context");
                                  }

                                  goto LABEL_161;
                                case 541:
                                  if ((sub_100020050(a1, "", "bdrHostPingInitial", *a2) & 1) == 0)
                                  {
                                    sub_100020530("ASPFTLParseBufferToCxt: bdrHostPingInitial(541) cannot add 1 element to context");
                                  }

                                  goto LABEL_161;
                                case 542:
                                  if ((sub_100020050(a1, "", "bdrHostPingMoreNeeded", *a2) & 1) == 0)
                                  {
                                    sub_100020530("ASPFTLParseBufferToCxt: bdrHostPingMoreNeeded(542) cannot add 1 element to context");
                                  }

                                  goto LABEL_161;
                                case 543:
                                  if ((sub_100020050(a1, "", "bandParityAllocationFailed", *a2) & 1) == 0)
                                  {
                                    sub_100020530("ASPFTLParseBufferToCxt: bandParityAllocationFailed(543) cannot add 1 element to context");
                                  }

                                  goto LABEL_161;
                                case 544:
                                  if ((sub_100020050(a1, "", "fastHwBurstToSlc", *a2) & 1) == 0)
                                  {
                                    sub_100020530("ASPFTLParseBufferToCxt: fastHwBurstToSlc(544) cannot add 1 element to context");
                                  }

                                  goto LABEL_161;
                                case 545:
                                  if ((sub_100020050(a1, "", "slowHwToTlc", *a2) & 1) == 0)
                                  {
                                    sub_100020530("ASPFTLParseBufferToCxt: slowHwToTlc(545) cannot add 1 element to context");
                                  }

                                  goto LABEL_161;
                                case 546:
                                  if (v9 != 10)
                                  {
                                    sub_100020530("ASPFTLParseBufferToCxt: slcDemandBurstSizeDetected(546): (#10) cfg elements != (%d) buffer elements", v9);
                                  }

                                  if (v9 >= 0xB)
                                  {
                                    v12 = 10;
                                  }

                                  else
                                  {
                                    v12 = v9;
                                  }

                                  if (sub_1000189BC(a1, "slcDemandBurstSizeDetected_", a2, 8u, v12))
                                  {
                                    goto LABEL_110;
                                  }

                                  sub_100020530("ASPFTLParseBufferToCxt: slcDemandBurstSizeDetected(546): Cannot add 10 elements to context", v14);
                                  return v5;
                                case 547:
                                  if (v9 != 10)
                                  {
                                    sub_100020530("ASPFTLParseBufferToCxt: slcDemandBurstDur(547): (#10) cfg elements != (%d) buffer elements", v9);
                                  }

                                  if (v9 >= 0xB)
                                  {
                                    v12 = 10;
                                  }

                                  else
                                  {
                                    v12 = v9;
                                  }

                                  if (sub_1000189BC(a1, "slcDemandBurstDur_", a2, 8u, v12))
                                  {
                                    goto LABEL_110;
                                  }

                                  sub_100020530("ASPFTLParseBufferToCxt: slcDemandBurstDur(547): Cannot add 10 elements to context", v14);
                                  return v5;
                                case 548:
                                  if ((sub_100020050(a1, "", "fastHwToTlcBurst", *a2) & 1) == 0)
                                  {
                                    sub_100020530("ASPFTLParseBufferToCxt: fastHwToTlcBurst(548) cannot add 1 element to context");
                                  }

                                  goto LABEL_161;
                                case 549:
                                  if (v9 != 10)
                                  {
                                    sub_100020530("ASPFTLParseBufferToCxt: slcDemandBurstSizeSlc(549): (#10) cfg elements != (%d) buffer elements", v9);
                                  }

                                  if (v9 >= 0xB)
                                  {
                                    v12 = 10;
                                  }

                                  else
                                  {
                                    v12 = v9;
                                  }

                                  if (sub_1000189BC(a1, "slcDemandBurstSizeSlc_", a2, 8u, v12))
                                  {
                                    goto LABEL_110;
                                  }

                                  sub_100020530("ASPFTLParseBufferToCxt: slcDemandBurstSizeSlc(549): Cannot add 10 elements to context", v14);
                                  return v5;
                                case 551:
                                  if (v9 != 11)
                                  {
                                    sub_100020530("ASPFTLParseBufferToCxt: balanceProportionBucketsHistogramTlc(551): (#11) cfg elements != (%d) buffer elements", v9);
                                  }

                                  if (v7 >> 34 >= 3)
                                  {
                                    v12 = 11;
                                  }

                                  else
                                  {
                                    v12 = v9;
                                  }

                                  if (sub_1000189BC(a1, "balanceProportionBucketsHistogramTlc_", a2, 8u, v12))
                                  {
                                    goto LABEL_110;
                                  }

                                  sub_100020530("ASPFTLParseBufferToCxt: balanceProportionBucketsHistogramTlc(551): Cannot add 11 elements to context", v14);
                                  return v5;
                                case 553:
                                  if ((sub_100020050(a1, "", "slowHwFlushToSlc", *a2) & 1) == 0)
                                  {
                                    sub_100020530("ASPFTLParseBufferToCxt: slowHwFlushToSlc(553) cannot add 1 element to context");
                                  }

                                  goto LABEL_161;
                                case 557:
                                  if ((sub_100020050(a1, "", "slowHwToSlc", *a2) & 1) == 0)
                                  {
                                    sub_100020530("ASPFTLParseBufferToCxt: slowHwToSlc(557) cannot add 1 element to context");
                                  }

                                  goto LABEL_161;
                                case 558:
                                  if ((sub_100020050(a1, "", "flushNwToSlc", *a2) & 1) == 0)
                                  {
                                    sub_100020530("ASPFTLParseBufferToCxt: flushNwToSlc(558) cannot add 1 element to context");
                                  }

                                  goto LABEL_161;
                                case 559:
                                  if ((sub_100020050(a1, "", "flushNwToTlc", *a2) & 1) == 0)
                                  {
                                    sub_100020530("ASPFTLParseBufferToCxt: flushNwToTlc(559) cannot add 1 element to context");
                                  }

                                  goto LABEL_161;
                                case 560:
                                  if ((sub_100020050(a1, "", "oslcHw", *a2) & 1) == 0)
                                  {
                                    sub_100020530("ASPFTLParseBufferToCxt: oslcHw(560) cannot add 1 element to context");
                                  }

                                  goto LABEL_161;
                                case 561:
                                  if ((sub_100020050(a1, "", "oslcTransitions", *a2) & 1) == 0)
                                  {
                                    sub_100020530("ASPFTLParseBufferToCxt: oslcTransitions(561) cannot add 1 element to context");
                                  }

                                  goto LABEL_161;
                                case 563:
                                  if ((sub_100020050(a1, "", "slcDemandFlushCount", *a2) & 1) == 0)
                                  {
                                    sub_100020530("ASPFTLParseBufferToCxt: slcDemandFlushCount(563) cannot add 1 element to context");
                                  }

                                  goto LABEL_161;
                                case 564:
                                  if ((sub_100020050(a1, "", "slcDemandBurstCount", *a2) & 1) == 0)
                                  {
                                    sub_100020530("ASPFTLParseBufferToCxt: slcDemandBurstCount(564) cannot add 1 element to context");
                                  }

                                  goto LABEL_161;
                                case 565:
                                  if ((sub_100020050(a1, "", "oslcBaseAvgPE", *a2) & 1) == 0)
                                  {
                                    sub_100020530("ASPFTLParseBufferToCxt: oslcBaseAvgPE(565) cannot add 1 element to context");
                                  }

                                  goto LABEL_161;
                                case 566:
                                  if ((sub_100020050(a1, "", "raidReconstructFailNoSPBX", *a2) & 1) == 0)
                                  {
                                    sub_100020530("ASPFTLParseBufferToCxt: raidReconstructFailNoSPBX(566) cannot add 1 element to context");
                                  }

                                  goto LABEL_161;
                                case 567:
                                  if ((sub_100020050(a1, "", "raidReconstructFailDouble", *a2) & 1) == 0)
                                  {
                                    sub_100020530("ASPFTLParseBufferToCxt: raidReconstructFailDouble(567) cannot add 1 element to context");
                                  }

                                  goto LABEL_161;
                                case 568:
                                  if ((sub_100020050(a1, "", "oslcFastWAmpUOnOff", *a2) & 1) == 0)
                                  {
                                    sub_100020530("ASPFTLParseBufferToCxt: oslcFastWAmpUOnOff(568) cannot add 1 element to context");
                                  }

                                  goto LABEL_161;
                                case 569:
                                  if ((sub_100020050(a1, "", "oslcSlowWAmpUOnOff", *a2) & 1) == 0)
                                  {
                                    sub_100020530("ASPFTLParseBufferToCxt: oslcSlowWAmpUOnOff(569) cannot add 1 element to context");
                                  }

                                  goto LABEL_161;
                                case 570:
                                  if ((sub_100020050(a1, "", "raidReconstructFailInvalid", *a2) & 1) == 0)
                                  {
                                    sub_100020530("ASPFTLParseBufferToCxt: raidReconstructFailInvalid(570) cannot add 1 element to context");
                                  }

                                  goto LABEL_161;
                                case 572:
                                  if ((sub_100020050(a1, "", "oslcLastWAmpUx10", *a2) & 1) == 0)
                                  {
                                    sub_100020530("ASPFTLParseBufferToCxt: oslcLastWAmpUx10(572) cannot add 1 element to context");
                                  }

                                  goto LABEL_161;
                                case 573:
                                  if ((sub_100020050(a1, "", "raidFailedReadNoBlog", *a2) & 1) == 0)
                                  {
                                    sub_100020530("ASPFTLParseBufferToCxt: raidFailedReadNoBlog(573) cannot add 1 element to context");
                                  }

                                  goto LABEL_161;
                                case 574:
                                  if ((sub_100020050(a1, "", "raidReconstructFailBlank", *a2) & 1) == 0)
                                  {
                                    sub_100020530("ASPFTLParseBufferToCxt: raidReconstructFailBlank(574) cannot add 1 element to context");
                                  }

                                  goto LABEL_161;
                                case 575:
                                  if ((sub_100020050(a1, "", "oslcHotTLCOnOff", *a2) & 1) == 0)
                                  {
                                    sub_100020530("ASPFTLParseBufferToCxt: oslcHotTLCOnOff(575) cannot add 1 element to context");
                                  }

                                  goto LABEL_161;
                                case 576:
                                  if ((sub_100020050(a1, "", "gcVPackDestinations", *a2) & 1) == 0)
                                  {
                                    sub_100020530("ASPFTLParseBufferToCxt: gcVPackDestinations(576) cannot add 1 element to context");
                                  }

                                  goto LABEL_161;
                                case 581:
                                  if ((sub_100020050(a1, "", "averageTLCPECycles", *a2) & 1) == 0)
                                  {
                                    sub_100020530("ASPFTLParseBufferToCxt: averageTLCPECycles(581) cannot add 1 element to context");
                                  }

                                  goto LABEL_161;
                                case 582:
                                  if ((sub_100020050(a1, "", "averageSLCPECycles", *a2) & 1) == 0)
                                  {
                                    sub_100020530("ASPFTLParseBufferToCxt: averageSLCPECycles(582) cannot add 1 element to context");
                                  }

                                  goto LABEL_161;
                                case 583:
                                  if ((sub_100020050(a1, "", "numAtomicBoots", *a2) & 1) == 0)
                                  {
                                    sub_100020530("ASPFTLParseBufferToCxt: numAtomicBoots(583) cannot add 1 element to context");
                                  }

                                  goto LABEL_161;
                                case 584:
                                  if ((sub_100020050(a1, "", "clogMinorMismatch", *a2) & 1) == 0)
                                  {
                                    sub_100020530("ASPFTLParseBufferToCxt: clogMinorMismatch(584) cannot add 1 element to context");
                                  }

                                  goto LABEL_161;
                                case 586:
                                  if ((sub_100020050(a1, "", "raidExpectedFailRMXReconstructionInternal", *a2) & 1) == 0)
                                  {
                                    sub_100020530("ASPFTLParseBufferToCxt: raidExpectedFailRMXReconstructionInternal(586) cannot add 1 element to context");
                                  }

                                  goto LABEL_161;
                                case 587:
                                  if ((sub_100020050(a1, "", "raidExpectedFailRMXReconstructionHost", *a2) & 1) == 0)
                                  {
                                    sub_100020530("ASPFTLParseBufferToCxt: raidExpectedFailRMXReconstructionHost(587) cannot add 1 element to context");
                                  }

                                  goto LABEL_161;
                                case 588:
                                  if ((sub_100020050(a1, "", "oslcGCinvalidations", *a2) & 1) == 0)
                                  {
                                    sub_100020530("ASPFTLParseBufferToCxt: oslcGCinvalidations(588) cannot add 1 element to context");
                                  }

                                  goto LABEL_161;
                                case 589:
                                  if ((sub_100020050(a1, "", "oslcGCActivateReason", *a2) & 1) == 0)
                                  {
                                    sub_100020530("ASPFTLParseBufferToCxt: oslcGCActivateReason(589) cannot add 1 element to context");
                                  }

                                  goto LABEL_161;
                                default:
                                  switch(v7)
                                  {
                                    case 590:
                                      if ((sub_100020050(a1, "", "oslcLowCleanBandsUOnOff", *a2) & 1) == 0)
                                      {
                                        sub_100020530("ASPFTLParseBufferToCxt: oslcLowCleanBandsUOnOff(590) cannot add 1 element to context");
                                      }

                                      goto LABEL_161;
                                    case 591:
                                      if ((sub_100020050(a1, "", "oslcTooManyGCMustOnOff", *a2) & 1) == 0)
                                      {
                                        sub_100020530("ASPFTLParseBufferToCxt: oslcTooManyGCMustOnOff(591) cannot add 1 element to context");
                                      }

                                      goto LABEL_161;
                                    case 592:
                                      if ((sub_100020050(a1, "", "oslcBaseHostWrites", *a2) & 1) == 0)
                                      {
                                        sub_100020530("ASPFTLParseBufferToCxt: oslcBaseHostWrites(592) cannot add 1 element to context");
                                      }

                                      goto LABEL_161;
                                    case 593:
                                      if ((sub_100020050(a1, "", "oslcBaseBandErases", *a2) & 1) == 0)
                                      {
                                        sub_100020530("ASPFTLParseBufferToCxt: oslcBaseBandErases(593) cannot add 1 element to context");
                                      }

                                      goto LABEL_161;
                                    case 594:
                                      if ((sub_100020050(a1, "", "oslcBdrBands", *a2) & 1) == 0)
                                      {
                                        sub_100020530("ASPFTLParseBufferToCxt: oslcBdrBands(594) cannot add 1 element to context");
                                      }

                                      goto LABEL_161;
                                    case 595:
                                      if ((sub_100020050(a1, "", "oslcBdrValid", *a2) & 1) == 0)
                                      {
                                        sub_100020530("ASPFTLParseBufferToCxt: oslcBdrValid(595) cannot add 1 element to context");
                                      }

                                      goto LABEL_161;
                                    case 596:
                                      if ((sub_100020050(a1, "", "unexpectedBlanksInternal", *a2) & 1) == 0)
                                      {
                                        sub_100020530("ASPFTLParseBufferToCxt: unexpectedBlanksInternal(596) cannot add 1 element to context");
                                      }

                                      goto LABEL_161;
                                    case 597:
                                      if ((sub_100020050(a1, "", "unexpectedBlanksOnRV", *a2) & 1) == 0)
                                      {
                                        sub_100020530("ASPFTLParseBufferToCxt: unexpectedBlanksOnRV(597) cannot add 1 element to context");
                                      }

                                      goto LABEL_161;
                                    case 601:
                                      if ((sub_100020050(a1, "", "waterfallLockSectors", *a2) & 1) == 0)
                                      {
                                        sub_100020530("ASPFTLParseBufferToCxt: waterfallLockSectors(601) cannot add 1 element to context");
                                      }

                                      goto LABEL_161;
                                    case 602:
                                      if ((sub_100020050(a1, "", "oslcGCActiveWrites", *a2) & 1) == 0)
                                      {
                                        sub_100020530("ASPFTLParseBufferToCxt: oslcGCActiveWrites(602) cannot add 1 element to context");
                                      }

                                      goto LABEL_161;
                                    case 603:
                                      if ((sub_100020050(a1, "", "chipIdTemperatureSample", *a2) & 1) == 0)
                                      {
                                        sub_100020530("ASPFTLParseBufferToCxt: chipIdTemperatureSample(603) cannot add 1 element to context");
                                      }

                                      goto LABEL_161;
                                    case 604:
                                      if ((sub_100020050(a1, "", "gcVPackWrites", *a2) & 1) == 0)
                                      {
                                        sub_100020530("ASPFTLParseBufferToCxt: gcVPackWrites(604) cannot add 1 element to context");
                                      }

                                      goto LABEL_161;
                                    case 605:
                                      if (v9 != 10)
                                      {
                                        sub_100020530("ASPFTLParseBufferToCxt: gcActiveReasons(605): (#10) cfg elements != (%d) buffer elements", v9);
                                      }

                                      if (v9 >= 0xB)
                                      {
                                        v12 = 10;
                                      }

                                      else
                                      {
                                        v12 = v9;
                                      }

                                      if (sub_1000189BC(a1, "gcActiveReasons_", a2, 8u, v12))
                                      {
                                        goto LABEL_110;
                                      }

                                      sub_100020530("ASPFTLParseBufferToCxt: gcActiveReasons(605): Cannot add 10 elements to context", v14);
                                      return v5;
                                    case 606:
                                      if ((sub_100020050(a1, "", "eanMaxInitTimeMs", *a2) & 1) == 0)
                                      {
                                        sub_100020530("ASPFTLParseBufferToCxt: eanMaxInitTimeMs(606) cannot add 1 element to context");
                                      }

                                      goto LABEL_161;
                                    case 607:
                                      if ((sub_100020050(a1, "", "eanMinToFirstReadTimeMs", *a2) & 1) == 0)
                                      {
                                        sub_100020530("ASPFTLParseBufferToCxt: eanMinToFirstReadTimeMs(607) cannot add 1 element to context");
                                      }

                                      goto LABEL_161;
                                    case 608:
                                      if ((sub_100020050(a1, "", "skinnyAPGMRetire", *a2) & 1) == 0)
                                      {
                                        sub_100020530("ASPFTLParseBufferToCxt: skinnyAPGMRetire(608) cannot add 1 element to context");
                                      }

                                      goto LABEL_161;
                                    case 609:
                                      if ((sub_100020050(a1, "", "unexpectedBlanksHost", *a2) & 1) == 0)
                                      {
                                        sub_100020530("ASPFTLParseBufferToCxt: unexpectedBlanksHost(609) cannot add 1 element to context");
                                      }

                                      goto LABEL_161;
                                    case 610:
                                      if (v9 != 64)
                                      {
                                        sub_100020530("ASPFTLParseBufferToCxt: pcieAerCounters(610): (#64) cfg elements != (%d) buffer elements", v9);
                                      }

                                      if (v9 >= 0x41)
                                      {
                                        v12 = 64;
                                      }

                                      else
                                      {
                                        v12 = v9;
                                      }

                                      if (sub_1000189BC(a1, "pcieAerCounters_", a2, 8u, v12))
                                      {
                                        goto LABEL_110;
                                      }

                                      sub_100020530("ASPFTLParseBufferToCxt: pcieAerCounters(610): Cannot add 64 elements to context", v14);
                                      return v5;
                                    case 611:
                                      if ((sub_100020050(a1, "", "fastHwToTlcBalance", *a2) & 1) == 0)
                                      {
                                        sub_100020530("ASPFTLParseBufferToCxt: fastHwToTlcBalance(611) cannot add 1 element to context");
                                      }

                                      goto LABEL_161;
                                    case 612:
                                      if ((sub_100020050(a1, "", "perfOSLCRuns", *a2) & 1) == 0)
                                      {
                                        sub_100020530("ASPFTLParseBufferToCxt: perfOSLCRuns(612) cannot add 1 element to context");
                                      }

                                      goto LABEL_161;
                                    case 613:
                                      if ((sub_100020050(a1, "", "slcDemandBurstWritesInGC", *a2) & 1) == 0)
                                      {
                                        sub_100020530("ASPFTLParseBufferToCxt: slcDemandBurstWritesInGC(613) cannot add 1 element to context");
                                      }

                                      goto LABEL_161;
                                    case 614:
                                      if ((sub_100020050(a1, "", "slcDemandBurstWritesInTT", *a2) & 1) == 0)
                                      {
                                        sub_100020530("ASPFTLParseBufferToCxt: slcDemandBurstWritesInTT(614) cannot add 1 element to context");
                                      }

                                      goto LABEL_161;
                                    case 615:
                                      if ((sub_100020050(a1, "", "slcDemandBurstWritesInNRP", *a2) & 1) == 0)
                                      {
                                        sub_100020530("ASPFTLParseBufferToCxt: slcDemandBurstWritesInNRP(615) cannot add 1 element to context");
                                      }

                                      goto LABEL_161;
                                    case 616:
                                      if ((sub_100020050(a1, "", "perfTotalDmaMb", *a2) & 1) == 0)
                                      {
                                        sub_100020530("ASPFTLParseBufferToCxt: perfTotalDmaMb(616) cannot add 1 element to context");
                                      }

                                      goto LABEL_161;
                                    case 617:
                                      if ((sub_100020050(a1, "", "eanAvgInitTimeMs", *a2) & 1) == 0)
                                      {
                                        sub_100020530("ASPFTLParseBufferToCxt: eanAvgInitTimeMs(617) cannot add 1 element to context");
                                      }

                                      goto LABEL_161;
                                    case 618:
                                      if ((sub_100020050(a1, "", "eanAvgToFirstReadTimeMs", *a2) & 1) == 0)
                                      {
                                        sub_100020530("ASPFTLParseBufferToCxt: eanAvgToFirstReadTimeMs(618) cannot add 1 element to context");
                                      }

                                      goto LABEL_161;
                                    case 619:
                                      if ((sub_100020050(a1, "", "eanMaxBootReadTimeMs", *a2) & 1) == 0)
                                      {
                                        sub_100020530("ASPFTLParseBufferToCxt: eanMaxBootReadTimeMs(619) cannot add 1 element to context");
                                      }

                                      goto LABEL_161;
                                    case 620:
                                      if ((sub_100020050(a1, "", "eanAvgBootReadTimeMs", *a2) & 1) == 0)
                                      {
                                        sub_100020530("ASPFTLParseBufferToCxt: eanAvgBootReadTimeMs(620) cannot add 1 element to context");
                                      }

                                      goto LABEL_161;
                                    case 621:
                                      if (v9 != 10)
                                      {
                                        sub_100020530("ASPFTLParseBufferToCxt: eanBootReadsHist(621): (#10) cfg elements != (%d) buffer elements", v9);
                                      }

                                      if (v9 >= 0xB)
                                      {
                                        v12 = 10;
                                      }

                                      else
                                      {
                                        v12 = v9;
                                      }

                                      if (sub_1000189BC(a1, "eanBootReadsHist_", a2, 8u, v12))
                                      {
                                        goto LABEL_110;
                                      }

                                      sub_100020530("ASPFTLParseBufferToCxt: eanBootReadsHist(621): Cannot add 10 elements to context", v14);
                                      return v5;
                                    case 622:
                                      if ((sub_100020050(a1, "", "maxBgInitTimeMs", *a2) & 1) == 0)
                                      {
                                        sub_100020530("ASPFTLParseBufferToCxt: maxBgInitTimeMs(622) cannot add 1 element to context");
                                      }

                                      goto LABEL_161;
                                    case 623:
                                      if ((sub_100020050(a1, "", "avgBgInitTimeMs", *a2) & 1) == 0)
                                      {
                                        sub_100020530("ASPFTLParseBufferToCxt: avgBgInitTimeMs(623) cannot add 1 element to context");
                                      }

                                      goto LABEL_161;
                                    case 624:
                                      if (v9 != 16)
                                      {
                                        sub_100020530("ASPFTLParseBufferToCxt: clogFailReason(624): (#16) cfg elements != (%d) buffer elements", v9);
                                      }

                                      if (v9 >= 0x11)
                                      {
                                        v12 = 16;
                                      }

                                      else
                                      {
                                        v12 = v9;
                                      }

                                      if (sub_1000189BC(a1, "clogFailReason_", a2, 8u, v12))
                                      {
                                        goto LABEL_110;
                                      }

                                      sub_100020530("ASPFTLParseBufferToCxt: clogFailReason(624): Cannot add 16 elements to context", v14);
                                      return v5;
                                    case 625:
                                      if ((sub_100020050(a1, "", "eanMinBootReadMBPerSec", *a2) & 1) == 0)
                                      {
                                        sub_100020530("ASPFTLParseBufferToCxt: eanMinBootReadMBPerSec(625) cannot add 1 element to context");
                                      }

                                      goto LABEL_161;
                                    case 626:
                                      if ((sub_100020050(a1, "", "eanAvgBootReadMBPerSec", *a2) & 1) == 0)
                                      {
                                        sub_100020530("ASPFTLParseBufferToCxt: eanAvgBootReadMBPerSec(626) cannot add 1 element to context");
                                      }

                                      goto LABEL_161;
                                    case 627:
                                      if ((sub_100020050(a1, "", "minSkinnyPECycles", *a2) & 1) == 0)
                                      {
                                        sub_100020530("ASPFTLParseBufferToCxt: minSkinnyPECycles(627) cannot add 1 element to context");
                                      }

                                      goto LABEL_161;
                                    case 628:
                                      if ((sub_100020050(a1, "", "maxSkinnyPECycles", *a2) & 1) == 0)
                                      {
                                        sub_100020530("ASPFTLParseBufferToCxt: maxSkinnyPECycles(628) cannot add 1 element to context");
                                      }

                                      goto LABEL_161;
                                    case 629:
                                      if ((sub_100020050(a1, "", "averageSkinnyPECycles", *a2) & 1) == 0)
                                      {
                                        sub_100020530("ASPFTLParseBufferToCxt: averageSkinnyPECycles(629) cannot add 1 element to context");
                                      }

                                      goto LABEL_161;
                                    case 630:
                                      if (v9 != 6)
                                      {
                                        sub_100020530("ASPFTLParseBufferToCxt: raidSuccessfulRecoEAN(630): (#6) cfg elements != (%d) buffer elements", v9);
                                      }

                                      if (v9 >= 7)
                                      {
                                        v12 = 6;
                                      }

                                      else
                                      {
                                        v12 = v9;
                                      }

                                      if (sub_1000189BC(a1, "raidSuccessfulRecoEAN_", a2, 8u, v12))
                                      {
                                        goto LABEL_110;
                                      }

                                      sub_100020530("ASPFTLParseBufferToCxt: raidSuccessfulRecoEAN(630): Cannot add 6 elements to context", v14);
                                      return v5;
                                    case 631:
                                      if (v9 != 6)
                                      {
                                        sub_100020530("ASPFTLParseBufferToCxt: raidFailedRecoEAN(631): (#6) cfg elements != (%d) buffer elements", v9);
                                      }

                                      if (v9 >= 7)
                                      {
                                        v12 = 6;
                                      }

                                      else
                                      {
                                        v12 = v9;
                                      }

                                      if (sub_1000189BC(a1, "raidFailedRecoEAN_", a2, 8u, v12))
                                      {
                                        goto LABEL_110;
                                      }

                                      sub_100020530("ASPFTLParseBufferToCxt: raidFailedRecoEAN(631): Cannot add 6 elements to context", v14);
                                      return v5;
                                    case 632:
                                      if (v9 != 6)
                                      {
                                        sub_100020530("ASPFTLParseBufferToCxt: eanFirstReadMode(632): (#6) cfg elements != (%d) buffer elements", v9);
                                      }

                                      if (v9 >= 7)
                                      {
                                        v12 = 6;
                                      }

                                      else
                                      {
                                        v12 = v9;
                                      }

                                      if (sub_1000189BC(a1, "eanFirstReadMode_", a2, 8u, v12))
                                      {
                                        goto LABEL_110;
                                      }

                                      sub_100020530("ASPFTLParseBufferToCxt: eanFirstReadMode(632): Cannot add 6 elements to context", v14);
                                      return v5;
                                    case 635:
                                      if ((sub_100020050(a1, "", "oslcHwGC", *a2) & 1) == 0)
                                      {
                                        sub_100020530("ASPFTLParseBufferToCxt: oslcHwGC(635) cannot add 1 element to context");
                                      }

                                      goto LABEL_161;
                                    case 636:
                                      if ((sub_100020050(a1, "", "oslcHwTT", *a2) & 1) == 0)
                                      {
                                        sub_100020530("ASPFTLParseBufferToCxt: oslcHwTT(636) cannot add 1 element to context");
                                      }

                                      goto LABEL_161;
                                    case 637:
                                      if ((sub_100020050(a1, "", "oslcHwNRP", *a2) & 1) == 0)
                                      {
                                        sub_100020530("ASPFTLParseBufferToCxt: oslcHwNRP(637) cannot add 1 element to context");
                                      }

                                      goto LABEL_161;
                                    case 638:
                                      if (v9 != 10)
                                      {
                                        sub_100020530("ASPFTLParseBufferToCxt: oslcDemandBurstSize(638): (#10) cfg elements != (%d) buffer elements", v9);
                                      }

                                      if (v9 >= 0xB)
                                      {
                                        v12 = 10;
                                      }

                                      else
                                      {
                                        v12 = v9;
                                      }

                                      if (sub_1000189BC(a1, "oslcDemandBurstSize_", a2, 8u, v12))
                                      {
                                        goto LABEL_110;
                                      }

                                      sub_100020530("ASPFTLParseBufferToCxt: oslcDemandBurstSize(638): Cannot add 10 elements to context", v14);
                                      return v5;
                                    case 639:
                                      if ((sub_100020050(a1, "", "raidReconstructSuccessBandFlowOslc", *a2) & 1) == 0)
                                      {
                                        sub_100020530("ASPFTLParseBufferToCxt: raidReconstructSuccessBandFlowOslc(639) cannot add 1 element to context");
                                      }

                                      goto LABEL_161;
                                    case 640:
                                      if ((sub_100020050(a1, "", "raidReconstructFailBandFlowOslc", *a2) & 1) == 0)
                                      {
                                        sub_100020530("ASPFTLParseBufferToCxt: raidReconstructFailBandFlowOslc(640) cannot add 1 element to context");
                                      }

                                      goto LABEL_161;
                                    case 641:
                                      if ((sub_100020050(a1, "", "raidFailSectors", *a2) & 1) == 0)
                                      {
                                        sub_100020530("ASPFTLParseBufferToCxt: raidFailSectors(641) cannot add 1 element to context");
                                      }

                                      goto LABEL_161;
                                    case 642:
                                      if ((sub_100020050(a1, "", "eanFailSectors", *a2) & 1) == 0)
                                      {
                                        sub_100020530("ASPFTLParseBufferToCxt: eanFailSectors(642) cannot add 1 element to context");
                                      }

                                      goto LABEL_161;
                                    case 643:
                                      if ((sub_100020050(a1, "", "bdrTimeMode", *a2) & 1) == 0)
                                      {
                                        sub_100020530("ASPFTLParseBufferToCxt: bdrTimeMode(643) cannot add 1 element to context");
                                      }

                                      goto LABEL_161;
                                    case 644:
                                      if ((sub_100020050(a1, "", "raidParityNotSavedP", *a2) & 1) == 0)
                                      {
                                        sub_100020530("ASPFTLParseBufferToCxt: raidParityNotSavedP(644) cannot add 1 element to context");
                                      }

                                      goto LABEL_161;
                                    case 645:
                                      if ((sub_100020050(a1, "", "raidParityNotSavedQ", *a2) & 1) == 0)
                                      {
                                        sub_100020530("ASPFTLParseBufferToCxt: raidParityNotSavedQ(645) cannot add 1 element to context");
                                      }

                                      goto LABEL_161;
                                    case 646:
                                      if ((sub_100020050(a1, "", "raidParityInvalid", *a2) & 1) == 0)
                                      {
                                        sub_100020530("ASPFTLParseBufferToCxt: raidParityInvalid(646) cannot add 1 element to context");
                                      }

                                      goto LABEL_161;
                                    case 647:
                                      if ((sub_100020050(a1, "", "raidParityUnknown", *a2) & 1) == 0)
                                      {
                                        sub_100020530("ASPFTLParseBufferToCxt: raidParityUnknown(647) cannot add 1 element to context");
                                      }

                                      goto LABEL_161;
                                    case 648:
                                      if ((sub_100020050(a1, "", "raidParityUnmapped", *a2) & 1) == 0)
                                      {
                                        sub_100020530("ASPFTLParseBufferToCxt: raidParityUnmapped(648) cannot add 1 element to context");
                                      }

                                      goto LABEL_161;
                                    case 649:
                                      if ((sub_100020050(a1, "", "raidParityGCUnc", *a2) & 1) == 0)
                                      {
                                        sub_100020530("ASPFTLParseBufferToCxt: raidParityGCUnc(649) cannot add 1 element to context");
                                      }

                                      goto LABEL_161;
                                    case 657:
                                      if ((sub_100020050(a1, "", "AbortSkip_MPBXProbational", *a2) & 1) == 0)
                                      {
                                        sub_100020530("ASPFTLParseBufferToCxt: AbortSkip_MPBXProbational(657) cannot add 1 element to context");
                                      }

                                      goto LABEL_161;
                                    case 659:
                                      if ((sub_100020050(a1, "", "raidVerificationReads", *a2) & 1) == 0)
                                      {
                                        sub_100020530("ASPFTLParseBufferToCxt: raidVerificationReads(659) cannot add 1 element to context");
                                      }

                                      goto LABEL_161;
                                    case 666:
                                      if ((sub_100020050(a1, "", "nofDies", *a2) & 1) == 0)
                                      {
                                        sub_100020530("ASPFTLParseBufferToCxt: nofDies(666) cannot add 1 element to context");
                                      }

                                      goto LABEL_161;
                                    case 671:
                                      if ((sub_100020050(a1, "", "skinnyBandsNum", *a2) & 1) == 0)
                                      {
                                        sub_100020530("ASPFTLParseBufferToCxt: skinnyBandsNum(671) cannot add 1 element to context");
                                      }

                                      goto LABEL_161;
                                    case 672:
                                      if ((sub_100020050(a1, "", "skinnyBandsNumDips", *a2) & 1) == 0)
                                      {
                                        sub_100020530("ASPFTLParseBufferToCxt: skinnyBandsNumDips(672) cannot add 1 element to context");
                                      }

                                      goto LABEL_161;
                                    case 674:
                                      if (v9 != 8)
                                      {
                                        sub_100020530("ASPFTLParseBufferToCxt: oslcNoVotesHw(674): (#8) cfg elements != (%d) buffer elements", v9);
                                      }

                                      if (v9 >= 9)
                                      {
                                        v12 = 8;
                                      }

                                      else
                                      {
                                        v12 = v9;
                                      }

                                      if (sub_1000189BC(a1, "oslcNoVotesHw_", a2, 8u, v12))
                                      {
                                        goto LABEL_110;
                                      }

                                      sub_100020530("ASPFTLParseBufferToCxt: oslcNoVotesHw(674): Cannot add 8 elements to context", v14);
                                      return v5;
                                    case 675:
                                      if ((sub_100020050(a1, "", "totalLbas", *a2) & 1) == 0)
                                      {
                                        sub_100020530("ASPFTLParseBufferToCxt: totalLbas(675) cannot add 1 element to context");
                                      }

                                      goto LABEL_161;
                                    case 676:
                                      if ((sub_100020050(a1, "", "bdrHostPingExtra", *a2) & 1) == 0)
                                      {
                                        sub_100020530("ASPFTLParseBufferToCxt: bdrHostPingExtra(676) cannot add 1 element to context");
                                      }

                                      goto LABEL_161;
                                    case 677:
                                      if ((sub_100020050(a1, "", "magazineInstanceMeta", *a2) & 1) == 0)
                                      {
                                        sub_100020530("ASPFTLParseBufferToCxt: magazineInstanceMeta(677) cannot add 1 element to context");
                                      }

                                      goto LABEL_161;
                                    default:
                                      switch(v7)
                                      {
                                        case 680:
                                          if (v9 != 3)
                                          {
                                            sub_100020530("ASPFTLParseBufferToCxt: magazineFWVersion(680): (#3) cfg elements != (%d) buffer elements", v9);
                                          }

                                          if (v7 >> 34)
                                          {
                                            v12 = 3;
                                          }

                                          else
                                          {
                                            v12 = v9;
                                          }

                                          if (sub_1000189BC(a1, "magazineFWVersion_", a2, 8u, v12))
                                          {
                                            goto LABEL_110;
                                          }

                                          sub_100020530("ASPFTLParseBufferToCxt: magazineFWVersion(680): Cannot add 3 elements to context", v14);
                                          return v5;
                                        case 681:
                                          if ((sub_100020050(a1, "", "raidReconstructFailPMXUnsup", *a2) & 1) == 0)
                                          {
                                            sub_100020530("ASPFTLParseBufferToCxt: raidReconstructFailPMXUnsup(681) cannot add 1 element to context");
                                          }

                                          goto LABEL_161;
                                        case 682:
                                          if ((sub_100020050(a1, "", "raidReconstructFailBMXUnsup", *a2) & 1) == 0)
                                          {
                                            sub_100020530("ASPFTLParseBufferToCxt: raidReconstructFailBMXUnsup(682) cannot add 1 element to context");
                                          }

                                          goto LABEL_161;
                                        case 683:
                                          if ((sub_100020050(a1, "", "iBootNANDResets", *a2) & 1) == 0)
                                          {
                                            sub_100020530("ASPFTLParseBufferToCxt: iBootNANDResets(683) cannot add 1 element to context");
                                          }

                                          goto LABEL_161;
                                        case 684:
                                          if ((sub_100020050(a1, "", "pcieClkreqHighTimeout", *a2) & 1) == 0)
                                          {
                                            sub_100020530("ASPFTLParseBufferToCxt: pcieClkreqHighTimeout(684) cannot add 1 element to context");
                                          }

                                          goto LABEL_161;
                                        case 687:
                                          if (v9 != 3)
                                          {
                                            sub_100020530("ASPFTLParseBufferToCxt: cbdrInitSent(687): (#3) cfg elements != (%d) buffer elements", v9);
                                          }

                                          if (v7 >> 34)
                                          {
                                            v12 = 3;
                                          }

                                          else
                                          {
                                            v12 = v9;
                                          }

                                          if (sub_1000189BC(a1, "cbdrInitSent_", a2, 8u, v12))
                                          {
                                            goto LABEL_110;
                                          }

                                          sub_100020530("ASPFTLParseBufferToCxt: cbdrInitSent(687): Cannot add 3 elements to context", v14);
                                          return v5;
                                        case 688:
                                          if ((sub_100020050(a1, "", "cbdrPauseSent", *a2) & 1) == 0)
                                          {
                                            sub_100020530("ASPFTLParseBufferToCxt: cbdrPauseSent(688) cannot add 1 element to context");
                                          }

                                          goto LABEL_161;
                                        case 689:
                                          if ((sub_100020050(a1, "", "cbdrResumeSent", *a2) & 1) == 0)
                                          {
                                            sub_100020530("ASPFTLParseBufferToCxt: cbdrResumeSent(689) cannot add 1 element to context");
                                          }

                                          goto LABEL_161;
                                        case 690:
                                          if ((sub_100020050(a1, "", "cbdrGetResultSent", *a2) & 1) == 0)
                                          {
                                            sub_100020530("ASPFTLParseBufferToCxt: cbdrGetResultSent(690) cannot add 1 element to context");
                                          }

                                          goto LABEL_161;
                                        case 691:
                                          if ((sub_100020050(a1, "", "cbdrEarlyExits", *a2) & 1) == 0)
                                          {
                                            sub_100020530("ASPFTLParseBufferToCxt: cbdrEarlyExits(691) cannot add 1 element to context");
                                          }

                                          goto LABEL_161;
                                        case 694:
                                          if (v9 != 10)
                                          {
                                            sub_100020530("ASPFTLParseBufferToCxt: cbdrRefreshGrades(694): (#10) cfg elements != (%d) buffer elements", v9);
                                          }

                                          if (v9 >= 0xB)
                                          {
                                            v12 = 10;
                                          }

                                          else
                                          {
                                            v12 = v9;
                                          }

                                          if (sub_1000189BC(a1, "cbdrRefreshGrades_", a2, 8u, v12))
                                          {
                                            goto LABEL_110;
                                          }

                                          sub_100020530("ASPFTLParseBufferToCxt: cbdrRefreshGrades(694): Cannot add 10 elements to context", v14);
                                          return v5;
                                        case 695:
                                          if ((sub_100020050(a1, "", "cbdrNotEnoughReads", *a2) & 1) == 0)
                                          {
                                            sub_100020530("ASPFTLParseBufferToCxt: cbdrNotEnoughReads(695) cannot add 1 element to context");
                                          }

                                          goto LABEL_161;
                                        case 696:
                                          if ((sub_100020050(a1, "", "cbdrAborts", *a2) & 1) == 0)
                                          {
                                            sub_100020530("ASPFTLParseBufferToCxt: cbdrAborts(696) cannot add 1 element to context");
                                          }

                                          goto LABEL_161;
                                        case 697:
                                          if ((sub_100020050(a1, "", "TurboRaidHostClassifications", *a2) & 1) == 0)
                                          {
                                            sub_100020530("ASPFTLParseBufferToCxt: TurboRaidHostClassifications(697) cannot add 1 element to context");
                                          }

                                          goto LABEL_161;
                                        case 698:
                                          if ((sub_100020050(a1, "", "TurboRaidInternalClassifications", *a2) & 1) == 0)
                                          {
                                            sub_100020530("ASPFTLParseBufferToCxt: TurboRaidInternalClassifications(698) cannot add 1 element to context");
                                          }

                                          goto LABEL_161;
                                        case 699:
                                          if ((sub_100020050(a1, "", "cbdrFullyDone", *a2) & 1) == 0)
                                          {
                                            sub_100020530("ASPFTLParseBufferToCxt: cbdrFullyDone(699) cannot add 1 element to context");
                                          }

                                          goto LABEL_161;
                                        case 702:
                                          if (v9 != 32)
                                          {
                                            sub_100020530("ASPFTLParseBufferToCxt: vcurve(702): (#32) cfg elements != (%d) buffer elements", v9);
                                          }

                                          if (v9 >= 0x21)
                                          {
                                            v12 = 32;
                                          }

                                          else
                                          {
                                            v12 = v9;
                                          }

                                          if (sub_1000189BC(a1, "vcurve_", a2, 8u, v12))
                                          {
                                            goto LABEL_110;
                                          }

                                          sub_100020530("ASPFTLParseBufferToCxt: vcurve(702): Cannot add 32 elements to context", v14);
                                          return v5;
                                        case 703:
                                          if (v9 != 12)
                                          {
                                            sub_100020530("ASPFTLParseBufferToCxt: injDepth(703): (#12) cfg elements != (%d) buffer elements", v9);
                                          }

                                          if (v9 >= 0xD)
                                          {
                                            v12 = 12;
                                          }

                                          else
                                          {
                                            v12 = v9;
                                          }

                                          if (sub_1000189BC(a1, "injDepth_", a2, 8u, v12))
                                          {
                                            goto LABEL_110;
                                          }

                                          sub_100020530("ASPFTLParseBufferToCxt: injDepth(703): Cannot add 12 elements to context", v14);
                                          return v5;
                                        case 704:
                                          if ((sub_100020050(a1, "", "logical_disk_occupied_promiles", *a2) & 1) == 0)
                                          {
                                            sub_100020530("ASPFTLParseBufferToCxt: logical_disk_occupied_promiles(704) cannot add 1 element to context");
                                          }

                                          goto LABEL_161;
                                        case 711:
                                          if ((sub_100020050(a1, "", "raidPrevFailedReconstructSkip", *a2) & 1) == 0)
                                          {
                                            sub_100020530("ASPFTLParseBufferToCxt: raidPrevFailedReconstructSkip(711) cannot add 1 element to context");
                                          }

                                          goto LABEL_161;
                                        case 712:
                                          if ((sub_100020050(a1, "", "TurboRaidSuccessfulHostAuxReads", *a2) & 1) == 0)
                                          {
                                            sub_100020530("ASPFTLParseBufferToCxt: TurboRaidSuccessfulHostAuxReads(712) cannot add 1 element to context");
                                          }

                                          goto LABEL_161;
                                        case 713:
                                          if ((sub_100020050(a1, "", "TurboRaidSuccessfulInternalAuxReads", *a2) & 1) == 0)
                                          {
                                            sub_100020530("ASPFTLParseBufferToCxt: TurboRaidSuccessfulInternalAuxReads(713) cannot add 1 element to context");
                                          }

                                          goto LABEL_161;
                                        case 714:
                                          if ((sub_100020050(a1, "", "turboRaidClassificationReliabilityHost", *a2) & 1) == 0)
                                          {
                                            sub_100020530("ASPFTLParseBufferToCxt: turboRaidClassificationReliabilityHost(714) cannot add 1 element to context");
                                          }

                                          goto LABEL_161;
                                        case 715:
                                          if ((sub_100020050(a1, "", "turboRaidClassificationReliabilityInternal", *a2) & 1) == 0)
                                          {
                                            sub_100020530("ASPFTLParseBufferToCxt: turboRaidClassificationReliabilityInternal(715) cannot add 1 element to context");
                                          }

                                          goto LABEL_161;
                                        case 716:
                                          if ((sub_100020050(a1, "", "turboRaidClassificationQualityHost", *a2) & 1) == 0)
                                          {
                                            sub_100020530("ASPFTLParseBufferToCxt: turboRaidClassificationQualityHost(716) cannot add 1 element to context");
                                          }

                                          goto LABEL_161;
                                        case 717:
                                          if ((sub_100020050(a1, "", "turboRaidClassificationQualityInternal", *a2) & 1) == 0)
                                          {
                                            sub_100020530("ASPFTLParseBufferToCxt: turboRaidClassificationQualityInternal(717) cannot add 1 element to context");
                                          }

                                          goto LABEL_161;
                                        case 719:
                                          if ((sub_100020050(a1, "", "skinnyBandErases", *a2) & 1) == 0)
                                          {
                                            sub_100020530("ASPFTLParseBufferToCxt: skinnyBandErases(719) cannot add 1 element to context");
                                          }

                                          goto LABEL_161;
                                        case 721:
                                          if ((sub_100020050(a1, "", "gcPDusterDestinations", *a2) & 1) == 0)
                                          {
                                            sub_100020530("ASPFTLParseBufferToCxt: gcPDusterDestinations(721) cannot add 1 element to context");
                                          }

                                          goto LABEL_161;
                                        case 722:
                                          if ((sub_100020050(a1, "", "gcPDusterWrites", *a2) & 1) == 0)
                                          {
                                            sub_100020530("ASPFTLParseBufferToCxt: gcPDusterWrites(722) cannot add 1 element to context");
                                          }

                                          goto LABEL_161;
                                        case 730:
                                          if ((sub_100020050(a1, "", "rvFails", *a2) & 1) == 0)
                                          {
                                            sub_100020530("ASPFTLParseBufferToCxt: rvFails(730) cannot add 1 element to context");
                                          }

                                          goto LABEL_161;
                                        case 737:
                                          if ((sub_100020050(a1, "", "TurboRaidFailedHostAuxReads", *a2) & 1) == 0)
                                          {
                                            sub_100020530("ASPFTLParseBufferToCxt: TurboRaidFailedHostAuxReads(737) cannot add 1 element to context");
                                          }

                                          goto LABEL_161;
                                        case 738:
                                          if ((sub_100020050(a1, "", "TurboRaidFailedInternalAuxReads", *a2) & 1) == 0)
                                          {
                                            sub_100020530("ASPFTLParseBufferToCxt: TurboRaidFailedInternalAuxReads(738) cannot add 1 element to context");
                                          }

                                          goto LABEL_161;
                                        case 741:
                                          if ((sub_100020050(a1, "", "autoSkipTriggers", *a2) & 1) == 0)
                                          {
                                            sub_100020530("ASPFTLParseBufferToCxt: autoSkipTriggers(741) cannot add 1 element to context");
                                          }

                                          goto LABEL_161;
                                        case 742:
                                          if ((sub_100020050(a1, "", "autoSkipPlanes", *a2) & 1) == 0)
                                          {
                                            sub_100020530("ASPFTLParseBufferToCxt: autoSkipPlanes(742) cannot add 1 element to context");
                                          }

                                          goto LABEL_161;
                                        case 744:
                                          if (v9 != 8)
                                          {
                                            sub_100020530("ASPFTLParseBufferToCxt: raidReconstructDurationHisto(744): (#8) cfg elements != (%d) buffer elements", v9);
                                          }

                                          if (v9 >= 9)
                                          {
                                            v12 = 8;
                                          }

                                          else
                                          {
                                            v12 = v9;
                                          }

                                          if (sub_1000189BC(a1, "raidReconstructDurationHisto_", a2, 8u, v12))
                                          {
                                            goto LABEL_110;
                                          }

                                          sub_100020530("ASPFTLParseBufferToCxt: raidReconstructDurationHisto(744): Cannot add 8 elements to context", v14);
                                          return v5;
                                        case 745:
                                          if (v9 != 8)
                                          {
                                            sub_100020530("ASPFTLParseBufferToCxt: failsOnReconstructHisto(745): (#8) cfg elements != (%d) buffer elements", v9);
                                          }

                                          if (v9 >= 9)
                                          {
                                            v12 = 8;
                                          }

                                          else
                                          {
                                            v12 = v9;
                                          }

                                          if (sub_1000189BC(a1, "failsOnReconstructHisto_", a2, 8u, v12))
                                          {
                                            goto LABEL_110;
                                          }

                                          sub_100020530("ASPFTLParseBufferToCxt: failsOnReconstructHisto(745): Cannot add 8 elements to context", v14);
                                          return v5;
                                        case 746:
                                          if ((sub_100020050(a1, "", "bandKill_userFlattenExcessive", *a2) & 1) == 0)
                                          {
                                            sub_100020530("ASPFTLParseBufferToCxt: bandKill_userFlattenExcessive(746) cannot add 1 element to context");
                                          }

                                          goto LABEL_161;
                                        case 747:
                                          if ((sub_100020050(a1, "", "bandKill_IntFlattenExcessive", *a2) & 1) == 0)
                                          {
                                            sub_100020530("ASPFTLParseBufferToCxt: bandKill_IntFlattenExcessive(747) cannot add 1 element to context");
                                          }

                                          goto LABEL_161;
                                        case 748:
                                          if ((sub_100020050(a1, "", "bandKill_userFlattenBalance", *a2) & 1) == 0)
                                          {
                                            sub_100020530("ASPFTLParseBufferToCxt: bandKill_userFlattenBalance(748) cannot add 1 element to context");
                                          }

                                          goto LABEL_161;
                                        case 749:
                                          if ((sub_100020050(a1, "", "bandKill_intFlattenBalance", *a2) & 1) == 0)
                                          {
                                            sub_100020530("ASPFTLParseBufferToCxt: bandKill_intFlattenBalance(749) cannot add 1 element to context");
                                          }

                                          goto LABEL_161;
                                        case 750:
                                          if ((sub_100020050(a1, "", "bandKill_formatVertExcessive", *a2) & 1) == 0)
                                          {
                                            sub_100020530("ASPFTLParseBufferToCxt: bandKill_formatVertExcessive(750) cannot add 1 element to context");
                                          }

                                          goto LABEL_161;
                                        case 751:
                                          if ((sub_100020050(a1, "", "bandKill_formatVertBalance", *a2) & 1) == 0)
                                          {
                                            sub_100020530("ASPFTLParseBufferToCxt: bandKill_formatVertBalance(751) cannot add 1 element to context");
                                          }

                                          goto LABEL_161;
                                        case 753:
                                          if ((sub_100020050(a1, "", "cbdrNumSlowRefreshes", *a2) & 1) == 0)
                                          {
                                            sub_100020530("ASPFTLParseBufferToCxt: cbdrNumSlowRefreshes(753) cannot add 1 element to context");
                                          }

                                          goto LABEL_161;
                                        case 754:
                                          if ((sub_100020050(a1, "", "cbdrNumFastRefreshes", *a2) & 1) == 0)
                                          {
                                            sub_100020530("ASPFTLParseBufferToCxt: cbdrNumFastRefreshes(754) cannot add 1 element to context");
                                          }

                                          goto LABEL_161;
                                        case 755:
                                          if ((sub_100020050(a1, "", "cbdrTotalRefreshValidity", *a2) & 1) == 0)
                                          {
                                            sub_100020530("ASPFTLParseBufferToCxt: cbdrTotalRefreshValidity(755) cannot add 1 element to context");
                                          }

                                          goto LABEL_161;
                                        case 756:
                                          if (v9 != 9)
                                          {
                                            sub_100020530("ASPFTLParseBufferToCxt: cbdrRefreshedAges(756): (#9) cfg elements != (%d) buffer elements", v9);
                                          }

                                          if (v7 >> 33 >= 5)
                                          {
                                            v12 = 9;
                                          }

                                          else
                                          {
                                            v12 = v9;
                                          }

                                          if (sub_1000189BC(a1, "cbdrRefreshedAges_", a2, 8u, v12))
                                          {
                                            goto LABEL_110;
                                          }

                                          sub_100020530("ASPFTLParseBufferToCxt: cbdrRefreshedAges(756): Cannot add 9 elements to context", v14);
                                          return v5;
                                        case 758:
                                          if ((sub_100020050(a1, "", "cbdrSkippedBlocks", *a2) & 1) == 0)
                                          {
                                            sub_100020530("ASPFTLParseBufferToCxt: cbdrSkippedBlocks(758) cannot add 1 element to context");
                                          }

                                          goto LABEL_161;
                                        case 759:
                                          if (v9 != 5)
                                          {
                                            sub_100020530("ASPFTLParseBufferToCxt: cbdrScanPct(759): (#5) cfg elements != (%d) buffer elements", v9);
                                          }

                                          if (v7 >> 33 >= 3)
                                          {
                                            v12 = 5;
                                          }

                                          else
                                          {
                                            v12 = v9;
                                          }

                                          if (sub_1000189BC(a1, "cbdrScanPct_", a2, 8u, v12))
                                          {
                                            goto LABEL_110;
                                          }

                                          sub_100020530("ASPFTLParseBufferToCxt: cbdrScanPct(759): Cannot add 5 elements to context", v14);
                                          return v5;
                                        case 760:
                                          if ((sub_100020050(a1, "", "raidSuccessfulBMXReconstructionInternal", *a2) & 1) == 0)
                                          {
                                            sub_100020530("ASPFTLParseBufferToCxt: raidSuccessfulBMXReconstructionInternal(760) cannot add 1 element to context");
                                          }

                                          goto LABEL_161;
                                        case 761:
                                          if ((sub_100020050(a1, "", "raidSuccessfulBMXReconstructionHost", *a2) & 1) == 0)
                                          {
                                            sub_100020530("ASPFTLParseBufferToCxt: raidSuccessfulBMXReconstructionHost(761) cannot add 1 element to context");
                                          }

                                          goto LABEL_161;
                                        case 762:
                                          if ((sub_100020050(a1, "", "raidFailedBMXReconstructionInternal", *a2) & 1) == 0)
                                          {
                                            sub_100020530("ASPFTLParseBufferToCxt: raidFailedBMXReconstructionInternal(762) cannot add 1 element to context");
                                          }

                                          goto LABEL_161;
                                        case 763:
                                          if ((sub_100020050(a1, "", "raidFailedBMXReconstructionHost", *a2) & 1) == 0)
                                          {
                                            sub_100020530("ASPFTLParseBufferToCxt: raidFailedBMXReconstructionHost(763) cannot add 1 element to context");
                                          }

                                          goto LABEL_161;
                                        case 764:
                                          if ((sub_100020050(a1, "", "ricSPRVFail", *a2) & 1) == 0)
                                          {
                                            sub_100020530("ASPFTLParseBufferToCxt: ricSPRVFail(764) cannot add 1 element to context");
                                          }

                                          goto LABEL_161;
                                        case 765:
                                          if ((sub_100020050(a1, "", "ricMPRVFail", *a2) & 1) == 0)
                                          {
                                            sub_100020530("ASPFTLParseBufferToCxt: ricMPRVFail(765) cannot add 1 element to context");
                                          }

                                          goto LABEL_161;
                                        case 767:
                                          if (v9 != 10)
                                          {
                                            sub_100020530("ASPFTLParseBufferToCxt: cbdrRefreshGradesSLC(767): (#10) cfg elements != (%d) buffer elements", v9);
                                          }

                                          if (v9 >= 0xB)
                                          {
                                            v12 = 10;
                                          }

                                          else
                                          {
                                            v12 = v9;
                                          }

                                          if (sub_1000189BC(a1, "cbdrRefreshGradesSLC_", a2, 8u, v12))
                                          {
                                            goto LABEL_110;
                                          }

                                          sub_100020530("ASPFTLParseBufferToCxt: cbdrRefreshGradesSLC(767): Cannot add 10 elements to context", v14);
                                          return v5;
                                        case 768:
                                          if (v9 != 9)
                                          {
                                            sub_100020530("ASPFTLParseBufferToCxt: cbdrRefreshedAgesSLC(768): (#9) cfg elements != (%d) buffer elements", v9);
                                          }

                                          if (v7 >> 33 >= 5)
                                          {
                                            v12 = 9;
                                          }

                                          else
                                          {
                                            v12 = v9;
                                          }

                                          if (sub_1000189BC(a1, "cbdrRefreshedAgesSLC_", a2, 8u, v12))
                                          {
                                            goto LABEL_110;
                                          }

                                          sub_100020530("ASPFTLParseBufferToCxt: cbdrRefreshedAgesSLC(768): Cannot add 9 elements to context", v14);
                                          return v5;
                                        case 769:
                                          if (v9 != 5)
                                          {
                                            sub_100020530("ASPFTLParseBufferToCxt: cbdrScanPctSLC(769): (#5) cfg elements != (%d) buffer elements", v9);
                                          }

                                          if (v7 >> 33 >= 3)
                                          {
                                            v12 = 5;
                                          }

                                          else
                                          {
                                            v12 = v9;
                                          }

                                          if (sub_1000189BC(a1, "cbdrScanPctSLC_", a2, 8u, v12))
                                          {
                                            goto LABEL_110;
                                          }

                                          sub_100020530("ASPFTLParseBufferToCxt: cbdrScanPctSLC(769): Cannot add 5 elements to context", v14);
                                          return v5;
                                        case 770:
                                          if (v9 != 8)
                                          {
                                            sub_100020530("ASPFTLParseBufferToCxt: cpuBurstLength(770): (#8) cfg elements != (%d) buffer elements", v9);
                                          }

                                          if (v9 >= 9)
                                          {
                                            v12 = 8;
                                          }

                                          else
                                          {
                                            v12 = v9;
                                          }

                                          if (sub_1000189BC(a1, "cpuBurstLength_", a2, 8u, v12))
                                          {
                                            goto LABEL_110;
                                          }

                                          sub_100020530("ASPFTLParseBufferToCxt: cpuBurstLength(770): Cannot add 8 elements to context", v14);
                                          return v5;
                                        case 771:
                                          if ((sub_100020050(a1, "", "autoSkipRaidRecoFail", *a2) & 1) == 0)
                                          {
                                            sub_100020530("ASPFTLParseBufferToCxt: autoSkipRaidRecoFail(771) cannot add 1 element to context");
                                          }

                                          goto LABEL_161;
                                        case 772:
                                          if (v9 != 32)
                                          {
                                            sub_100020530("ASPFTLParseBufferToCxt: dmReasonsSlc(772): (#32) cfg elements != (%d) buffer elements", v9);
                                          }

                                          if (v9 >= 0x21)
                                          {
                                            v12 = 32;
                                          }

                                          else
                                          {
                                            v12 = v9;
                                          }

                                          if (sub_1000189BC(a1, "dmReasonsSlc_", a2, 8u, v12))
                                          {
                                            goto LABEL_110;
                                          }

                                          sub_100020530("ASPFTLParseBufferToCxt: dmReasonsSlc(772): Cannot add 32 elements to context", v14);
                                          return v5;
                                        case 773:
                                          if (v9 != 32)
                                          {
                                            sub_100020530("ASPFTLParseBufferToCxt: dmReasonsTlc(773): (#32) cfg elements != (%d) buffer elements", v9);
                                          }

                                          if (v9 >= 0x21)
                                          {
                                            v12 = 32;
                                          }

                                          else
                                          {
                                            v12 = v9;
                                          }

                                          if (sub_1000189BC(a1, "dmReasonsTlc_", a2, 8u, v12))
                                          {
                                            goto LABEL_110;
                                          }

                                          sub_100020530("ASPFTLParseBufferToCxt: dmReasonsTlc(773): Cannot add 32 elements to context", v14);
                                          return v5;
                                        case 774:
                                          if ((sub_100020050(a1, "", "raidReconstructFailBMXAbort", *a2) & 1) == 0)
                                          {
                                            sub_100020530("ASPFTLParseBufferToCxt: raidReconstructFailBMXAbort(774) cannot add 1 element to context");
                                          }

                                          goto LABEL_161;
                                        case 775:
                                          if ((sub_100020050(a1, "", "bandKill_fatBindingNoBlocks", *a2) & 1) == 0)
                                          {
                                            sub_100020530("ASPFTLParseBufferToCxt: bandKill_fatBindingNoBlocks(775) cannot add 1 element to context");
                                          }

                                          goto LABEL_161;
                                        case 776:
                                          if ((sub_100020050(a1, "", "bandKill_fatBindingFewBlocks", *a2) & 1) == 0)
                                          {
                                            sub_100020530("ASPFTLParseBufferToCxt: bandKill_fatBindingFewBlocks(776) cannot add 1 element to context");
                                          }

                                          goto LABEL_161;
                                        default:
                                          switch(v7)
                                          {
                                            case 777:
                                              if ((sub_100020050(a1, "", "numBadBootBlocks", *a2) & 1) == 0)
                                              {
                                                sub_100020530("ASPFTLParseBufferToCxt: numBadBootBlocks(777) cannot add 1 element to context");
                                              }

                                              goto LABEL_161;
                                            case 778:
                                              if ((sub_100020050(a1, "", "snapshotCPUHigh", *a2) & 1) == 0)
                                              {
                                                sub_100020530("ASPFTLParseBufferToCxt: snapshotCPUHigh(778) cannot add 1 element to context");
                                              }

                                              goto LABEL_161;
                                            case 779:
                                              if ((sub_100020050(a1, "", "snapshotCPULow", *a2) & 1) == 0)
                                              {
                                                sub_100020530("ASPFTLParseBufferToCxt: snapshotCPULow(779) cannot add 1 element to context");
                                              }

                                              goto LABEL_161;
                                            case 780:
                                              if ((sub_100020050(a1, "", "gcWithoutBMs", *a2) & 1) == 0)
                                              {
                                                sub_100020530("ASPFTLParseBufferToCxt: gcWithoutBMs(780) cannot add 1 element to context");
                                              }

                                              goto LABEL_161;
                                            case 781:
                                              if (v9 != 10)
                                              {
                                                sub_100020530("ASPFTLParseBufferToCxt: gcSearchTimeHistory(781): (#10) cfg elements != (%d) buffer elements", v9);
                                              }

                                              if (v9 >= 0xB)
                                              {
                                                v12 = 10;
                                              }

                                              else
                                              {
                                                v12 = v9;
                                              }

                                              if (sub_1000189BC(a1, "gcSearchTimeHistory_", a2, 8u, v12))
                                              {
                                                goto LABEL_110;
                                              }

                                              sub_100020530("ASPFTLParseBufferToCxt: gcSearchTimeHistory(781): Cannot add 10 elements to context", v14);
                                              return v5;
                                            case 785:
                                              if (v9 != 16)
                                              {
                                                sub_100020530("ASPFTLParseBufferToCxt: gcSearchPortion(785): (#16) cfg elements != (%d) buffer elements", v9);
                                              }

                                              if (v9 >= 0x11)
                                              {
                                                v12 = 16;
                                              }

                                              else
                                              {
                                                v12 = v9;
                                              }

                                              if (sub_1000189BC(a1, "gcSearchPortion_", a2, 8u, v12))
                                              {
                                                goto LABEL_110;
                                              }

                                              sub_100020530("ASPFTLParseBufferToCxt: gcSearchPortion(785): Cannot add 16 elements to context", v14);
                                              return v5;
                                            case 786:
                                              if ((sub_100020050(a1, "", "raidReconstructFailBmxMp", *a2) & 1) == 0)
                                              {
                                                sub_100020530("ASPFTLParseBufferToCxt: raidReconstructFailBmxMp(786) cannot add 1 element to context");
                                              }

                                              goto LABEL_161;
                                            case 787:
                                              if ((sub_100020050(a1, "", "raidReconstructFailBmx", *a2) & 1) == 0)
                                              {
                                                sub_100020530("ASPFTLParseBufferToCxt: raidReconstructFailBmx(787) cannot add 1 element to context");
                                              }

                                              goto LABEL_161;
                                            case 788:
                                              if ((sub_100020050(a1, "", "raidReconstructFailBMXUECC", *a2) & 1) == 0)
                                              {
                                                sub_100020530("ASPFTLParseBufferToCxt: raidReconstructFailBMXUECC(788) cannot add 1 element to context");
                                              }

                                              goto LABEL_161;
                                            case 789:
                                              if ((sub_100020050(a1, "", "raidReconstructFailBMXBlank", *a2) & 1) == 0)
                                              {
                                                sub_100020530("ASPFTLParseBufferToCxt: raidReconstructFailBMXBlank(789) cannot add 1 element to context");
                                              }

                                              goto LABEL_161;
                                            case 790:
                                              if ((sub_100020050(a1, "", "raidPrevFailedReconstructBmxMpSkip", *a2) & 1) == 0)
                                              {
                                                sub_100020530("ASPFTLParseBufferToCxt: raidPrevFailedReconstructBmxMpSkip(790) cannot add 1 element to context");
                                              }

                                              goto LABEL_161;
                                            case 792:
                                              if ((sub_100020050(a1, "", "numTLCFatBands", *a2) & 1) == 0)
                                              {
                                                sub_100020530("ASPFTLParseBufferToCxt: numTLCFatBands(792) cannot add 1 element to context");
                                              }

                                              goto LABEL_161;
                                            case 793:
                                              if ((sub_100020050(a1, "", "fatValidity", *a2) & 1) == 0)
                                              {
                                                sub_100020530("ASPFTLParseBufferToCxt: fatValidity(793) cannot add 1 element to context");
                                              }

                                              goto LABEL_161;
                                            case 794:
                                              if ((sub_100020050(a1, "", "fatTotal", *a2) & 1) == 0)
                                              {
                                                sub_100020530("ASPFTLParseBufferToCxt: fatTotal(794) cannot add 1 element to context");
                                              }

                                              goto LABEL_161;
                                            case 798:
                                              if (v9 != 4)
                                              {
                                                sub_100020530("ASPFTLParseBufferToCxt: raidBMXFailP(798): (#4) cfg elements != (%d) buffer elements", v9);
                                              }

                                              if (v9 >= 5)
                                              {
                                                v12 = 4;
                                              }

                                              else
                                              {
                                                v12 = v9;
                                              }

                                              if (sub_1000189BC(a1, "raidBMXFailP_", a2, 8u, v12))
                                              {
                                                goto LABEL_110;
                                              }

                                              sub_100020530("ASPFTLParseBufferToCxt: raidBMXFailP(798): Cannot add 4 elements to context", v14);
                                              return v5;
                                            case 799:
                                              if (v9 != 4)
                                              {
                                                sub_100020530("ASPFTLParseBufferToCxt: raidBMXFailUECC(799): (#4) cfg elements != (%d) buffer elements", v9);
                                              }

                                              if (v9 >= 5)
                                              {
                                                v12 = 4;
                                              }

                                              else
                                              {
                                                v12 = v9;
                                              }

                                              if (sub_1000189BC(a1, "raidBMXFailUECC_", a2, 8u, v12))
                                              {
                                                goto LABEL_110;
                                              }

                                              sub_100020530("ASPFTLParseBufferToCxt: raidBMXFailUECC(799): Cannot add 4 elements to context", v14);
                                              return v5;
                                            case 804:
                                              if (v9 != 4)
                                              {
                                                sub_100020530("ASPFTLParseBufferToCxt: raidBMXFailNoSPBX(804): (#4) cfg elements != (%d) buffer elements", v9);
                                              }

                                              if (v9 >= 5)
                                              {
                                                v12 = 4;
                                              }

                                              else
                                              {
                                                v12 = v9;
                                              }

                                              if (sub_1000189BC(a1, "raidBMXFailNoSPBX_", a2, 8u, v12))
                                              {
                                                goto LABEL_110;
                                              }

                                              sub_100020530("ASPFTLParseBufferToCxt: raidBMXFailNoSPBX(804): Cannot add 4 elements to context", v14);
                                              return v5;
                                            case 806:
                                              if (v9 != 4)
                                              {
                                                sub_100020530("ASPFTLParseBufferToCxt: raidBMXFailBlank(806): (#4) cfg elements != (%d) buffer elements", v9);
                                              }

                                              if (v9 >= 5)
                                              {
                                                v12 = 4;
                                              }

                                              else
                                              {
                                                v12 = v9;
                                              }

                                              if (sub_1000189BC(a1, "raidBMXFailBlank_", a2, 8u, v12))
                                              {
                                                goto LABEL_110;
                                              }

                                              sub_100020530("ASPFTLParseBufferToCxt: raidBMXFailBlank(806): Cannot add 4 elements to context", v14);
                                              return v5;
                                            case 809:
                                              if (v9 != 4)
                                              {
                                                sub_100020530("ASPFTLParseBufferToCxt: raidBMXFailUnsup(809): (#4) cfg elements != (%d) buffer elements", v9);
                                              }

                                              if (v9 >= 5)
                                              {
                                                v12 = 4;
                                              }

                                              else
                                              {
                                                v12 = v9;
                                              }

                                              if (sub_1000189BC(a1, "raidBMXFailUnsup_", a2, 8u, v12))
                                              {
                                                goto LABEL_110;
                                              }

                                              sub_100020530("ASPFTLParseBufferToCxt: raidBMXFailUnsup(809): Cannot add 4 elements to context", v14);
                                              return v5;
                                            case 811:
                                              if (v9 != 4)
                                              {
                                                sub_100020530("ASPFTLParseBufferToCxt: raidBMXFailMpSkip(811): (#4) cfg elements != (%d) buffer elements", v9);
                                              }

                                              if (v9 >= 5)
                                              {
                                                v12 = 4;
                                              }

                                              else
                                              {
                                                v12 = v9;
                                              }

                                              if (sub_1000189BC(a1, "raidBMXFailMpSkip_", a2, 8u, v12))
                                              {
                                                goto LABEL_110;
                                              }

                                              sub_100020530("ASPFTLParseBufferToCxt: raidBMXFailMpSkip(811): Cannot add 4 elements to context", v14);
                                              return v5;
                                            case 812:
                                              if (v9 != 4)
                                              {
                                                sub_100020530("ASPFTLParseBufferToCxt: raidBMXFailAbort(812): (#4) cfg elements != (%d) buffer elements", v9);
                                              }

                                              if (v9 >= 5)
                                              {
                                                v12 = 4;
                                              }

                                              else
                                              {
                                                v12 = v9;
                                              }

                                              if (sub_1000189BC(a1, "raidBMXFailAbort_", a2, 8u, v12))
                                              {
                                                goto LABEL_110;
                                              }

                                              sub_100020530("ASPFTLParseBufferToCxt: raidBMXFailAbort(812): Cannot add 4 elements to context", v14);
                                              return v5;
                                            case 813:
                                              if ((sub_100020050(a1, "", "TurboRaidIsEnabled", *a2) & 1) == 0)
                                              {
                                                sub_100020530("ASPFTLParseBufferToCxt: TurboRaidIsEnabled(813) cannot add 1 element to context");
                                              }

                                              goto LABEL_161;
                                            case 814:
                                              if (v9 != 4)
                                              {
                                                sub_100020530("ASPFTLParseBufferToCxt: raidBMXFailOther(814): (#4) cfg elements != (%d) buffer elements", v9);
                                              }

                                              if (v9 >= 5)
                                              {
                                                v12 = 4;
                                              }

                                              else
                                              {
                                                v12 = v9;
                                              }

                                              if (sub_1000189BC(a1, "raidBMXFailOther_", a2, 8u, v12))
                                              {
                                                goto LABEL_110;
                                              }

                                              sub_100020530("ASPFTLParseBufferToCxt: raidBMXFailOther(814): Cannot add 4 elements to context", v14);
                                              return v5;
                                            case 815:
                                              if (v9 != 4)
                                              {
                                                sub_100020530("ASPFTLParseBufferToCxt: raidBMXSuccess(815): (#4) cfg elements != (%d) buffer elements", v9);
                                              }

                                              if (v9 >= 5)
                                              {
                                                v12 = 4;
                                              }

                                              else
                                              {
                                                v12 = v9;
                                              }

                                              if (sub_1000189BC(a1, "raidBMXSuccess_", a2, 8u, v12))
                                              {
                                                goto LABEL_110;
                                              }

                                              sub_100020530("ASPFTLParseBufferToCxt: raidBMXSuccess(815): Cannot add 4 elements to context", v14);
                                              return v5;
                                            case 816:
                                              if ((sub_100020050(a1, "", "skinnyBandsExtraDip", *a2) & 1) == 0)
                                              {
                                                sub_100020530("ASPFTLParseBufferToCxt: skinnyBandsExtraDip(816) cannot add 1 element to context");
                                              }

                                              goto LABEL_161;
                                            case 821:
                                              if ((sub_100020050(a1, "", "writeAmp", *a2) & 1) == 0)
                                              {
                                                sub_100020530("ASPFTLParseBufferToCxt: writeAmp(821) cannot add 1 element to context");
                                              }

                                              goto LABEL_161;
                                            case 822:
                                              if ((sub_100020050(a1, "", "ricMaxClogOnlyPages", *a2) & 1) == 0)
                                              {
                                                sub_100020530("ASPFTLParseBufferToCxt: ricMaxClogOnlyPages(822) cannot add 1 element to context");
                                              }

                                              goto LABEL_161;
                                            case 823:
                                              if (v9 != 3)
                                              {
                                                sub_100020530("ASPFTLParseBufferToCxt: readClassifyStatusesHisto(823): (#3) cfg elements != (%d) buffer elements", v9);
                                              }

                                              if (v7 >> 34)
                                              {
                                                v12 = 3;
                                              }

                                              else
                                              {
                                                v12 = v9;
                                              }

                                              if (sub_1000189BC(a1, "readClassifyStatusesHisto_", a2, 8u, v12))
                                              {
                                                goto LABEL_110;
                                              }

                                              sub_100020530("ASPFTLParseBufferToCxt: readClassifyStatusesHisto(823): Cannot add 3 elements to context", v14);
                                              return v5;
                                            case 824:
                                              if (v9 != 10)
                                              {
                                                sub_100020530("ASPFTLParseBufferToCxt: readWithAuxStatusesHisto(824): (#10) cfg elements != (%d) buffer elements", v9);
                                              }

                                              if (v9 >= 0xB)
                                              {
                                                v12 = 10;
                                              }

                                              else
                                              {
                                                v12 = v9;
                                              }

                                              if (sub_1000189BC(a1, "readWithAuxStatusesHisto_", a2, 8u, v12))
                                              {
                                                goto LABEL_110;
                                              }

                                              sub_100020530("ASPFTLParseBufferToCxt: readWithAuxStatusesHisto(824): Cannot add 10 elements to context", v14);
                                              return v5;
                                            case 825:
                                              if (v9 != 10)
                                              {
                                                sub_100020530("ASPFTLParseBufferToCxt: readReconstructStatusesHisto(825): (#10) cfg elements != (%d) buffer elements", v9);
                                              }

                                              if (v9 >= 0xB)
                                              {
                                                v12 = 10;
                                              }

                                              else
                                              {
                                                v12 = v9;
                                              }

                                              if (sub_1000189BC(a1, "readReconstructStatusesHisto_", a2, 8u, v12))
                                              {
                                                goto LABEL_110;
                                              }

                                              sub_100020530("ASPFTLParseBufferToCxt: readReconstructStatusesHisto(825): Cannot add 10 elements to context", v14);
                                              return v5;
                                            case 826:
                                              if ((sub_100020050(a1, "", "bdrBackupChecks", *a2) & 1) == 0)
                                              {
                                                sub_100020530("ASPFTLParseBufferToCxt: bdrBackupChecks(826) cannot add 1 element to context");
                                              }

                                              goto LABEL_161;
                                            case 827:
                                              if ((sub_100020050(a1, "", "ricExceedClogOnlyPagesTH", *a2) & 1) == 0)
                                              {
                                                sub_100020530("ASPFTLParseBufferToCxt: ricExceedClogOnlyPagesTH(827) cannot add 1 element to context");
                                              }

                                              goto LABEL_161;
                                            case 828:
                                              if ((sub_100020050(a1, "", "numDipFailures", *a2) & 1) == 0)
                                              {
                                                sub_100020530("ASPFTLParseBufferToCxt: numDipFailures(828) cannot add 1 element to context");
                                              }

                                              goto LABEL_161;
                                            case 831:
                                              if ((sub_100020050(a1, "", "prefetchNextRange", *a2) & 1) == 0)
                                              {
                                                sub_100020530("ASPFTLParseBufferToCxt: prefetchNextRange(831) cannot add 1 element to context");
                                              }

                                              goto LABEL_161;
                                            case 862:
                                              if ((sub_100020050(a1, "", "raidSuccessfulSkip", *a2) & 1) == 0)
                                              {
                                                sub_100020530("ASPFTLParseBufferToCxt: raidSuccessfulSkip(862) cannot add 1 element to context");
                                              }

                                              goto LABEL_161;
                                            case 863:
                                              if ((sub_100020050(a1, "", "raidFailedSkip", *a2) & 1) == 0)
                                              {
                                                sub_100020530("ASPFTLParseBufferToCxt: raidFailedSkip(863) cannot add 1 element to context");
                                              }

                                              goto LABEL_161;
                                            case 864:
                                              if ((sub_100020050(a1, "", "raidSkipAttempts", *a2) & 1) == 0)
                                              {
                                                sub_100020530("ASPFTLParseBufferToCxt: raidSkipAttempts(864) cannot add 1 element to context");
                                              }

                                              goto LABEL_161;
                                            case 865:
                                              if (v9 != 25)
                                              {
                                                sub_100020530("ASPFTLParseBufferToCxt: timeOfThrottlingPerLevel(865): (#25) cfg elements != (%d) buffer elements", v9);
                                              }

                                              if (v7 >> 33 >= 0xD)
                                              {
                                                v12 = 25;
                                              }

                                              else
                                              {
                                                v12 = v9;
                                              }

                                              if (sub_1000189BC(a1, "timeOfThrottlingPerLevel_", a2, 8u, v12))
                                              {
                                                goto LABEL_110;
                                              }

                                              sub_100020530("ASPFTLParseBufferToCxt: timeOfThrottlingPerLevel(865): Cannot add 25 elements to context", v14);
                                              return v5;
                                            case 866:
                                              if (v9 != 25)
                                              {
                                                sub_100020530("ASPFTLParseBufferToCxt: timeOfThrottlingPerReadLevel(866): (#25) cfg elements != (%d) buffer elements", v9);
                                              }

                                              if (v7 >> 33 >= 0xD)
                                              {
                                                v12 = 25;
                                              }

                                              else
                                              {
                                                v12 = v9;
                                              }

                                              if (sub_1000189BC(a1, "timeOfThrottlingPerReadLevel_", a2, 8u, v12))
                                              {
                                                goto LABEL_110;
                                              }

                                              sub_100020530("ASPFTLParseBufferToCxt: timeOfThrottlingPerReadLevel(866): Cannot add 25 elements to context", v14);
                                              return v5;
                                            case 867:
                                              if (v9 != 25)
                                              {
                                                sub_100020530("ASPFTLParseBufferToCxt: timeOfThrottlingPerWriteLevel(867): (#25) cfg elements != (%d) buffer elements", v9);
                                              }

                                              if (v7 >> 33 >= 0xD)
                                              {
                                                v12 = 25;
                                              }

                                              else
                                              {
                                                v12 = v9;
                                              }

                                              if (sub_1000189BC(a1, "timeOfThrottlingPerWriteLevel_", a2, 8u, v12))
                                              {
                                                goto LABEL_110;
                                              }

                                              sub_100020530("ASPFTLParseBufferToCxt: timeOfThrottlingPerWriteLevel(867): Cannot add 25 elements to context", v14);
                                              return v5;
                                            case 868:
                                              if (v9 != 32)
                                              {
                                                sub_100020530("ASPFTLParseBufferToCxt: dmReasonsSlc_1bc(868): (#32) cfg elements != (%d) buffer elements", v9);
                                              }

                                              if (v9 >= 0x21)
                                              {
                                                v12 = 32;
                                              }

                                              else
                                              {
                                                v12 = v9;
                                              }

                                              if (sub_1000189BC(a1, "dmReasonsSlc_1bc_", a2, 8u, v12))
                                              {
                                                goto LABEL_110;
                                              }

                                              sub_100020530("ASPFTLParseBufferToCxt: dmReasonsSlc_1bc(868): Cannot add 32 elements to context", v14);
                                              return v5;
                                            case 869:
                                              if (v9 != 32)
                                              {
                                                sub_100020530("ASPFTLParseBufferToCxt: dmReasonsTlc_1bc(869): (#32) cfg elements != (%d) buffer elements", v9);
                                              }

                                              if (v9 >= 0x21)
                                              {
                                                v12 = 32;
                                              }

                                              else
                                              {
                                                v12 = v9;
                                              }

                                              if (sub_1000189BC(a1, "dmReasonsTlc_1bc_", a2, 8u, v12))
                                              {
                                                goto LABEL_110;
                                              }

                                              sub_100020530("ASPFTLParseBufferToCxt: dmReasonsTlc_1bc(869): Cannot add 32 elements to context", v14);
                                              return v5;
                                            case 870:
                                              if (v9 != 32)
                                              {
                                                sub_100020530("ASPFTLParseBufferToCxt: dmReasonsSlc_1bc_he(870): (#32) cfg elements != (%d) buffer elements", v9);
                                              }

                                              if (v9 >= 0x21)
                                              {
                                                v12 = 32;
                                              }

                                              else
                                              {
                                                v12 = v9;
                                              }

                                              if (sub_1000189BC(a1, "dmReasonsSlc_1bc_he_", a2, 8u, v12))
                                              {
                                                goto LABEL_110;
                                              }

                                              sub_100020530("ASPFTLParseBufferToCxt: dmReasonsSlc_1bc_he(870): Cannot add 32 elements to context", v14);
                                              return v5;
                                            case 871:
                                              if (v9 != 32)
                                              {
                                                sub_100020530("ASPFTLParseBufferToCxt: dmReasonsTlc_1bc_he(871): (#32) cfg elements != (%d) buffer elements", v9);
                                              }

                                              if (v9 >= 0x21)
                                              {
                                                v12 = 32;
                                              }

                                              else
                                              {
                                                v12 = v9;
                                              }

                                              if (sub_1000189BC(a1, "dmReasonsTlc_1bc_he_", a2, 8u, v12))
                                              {
                                                goto LABEL_110;
                                              }

                                              sub_100020530("ASPFTLParseBufferToCxt: dmReasonsTlc_1bc_he(871): Cannot add 32 elements to context", v14);
                                              return v5;
                                            case 876:
                                              if (v9 != 32)
                                              {
                                                sub_100020530("ASPFTLParseBufferToCxt: dmReasonsSlc_mbc(876): (#32) cfg elements != (%d) buffer elements", v9);
                                              }

                                              if (v9 >= 0x21)
                                              {
                                                v12 = 32;
                                              }

                                              else
                                              {
                                                v12 = v9;
                                              }

                                              if (sub_1000189BC(a1, "dmReasonsSlc_mbc_", a2, 8u, v12))
                                              {
                                                goto LABEL_110;
                                              }

                                              sub_100020530("ASPFTLParseBufferToCxt: dmReasonsSlc_mbc(876): Cannot add 32 elements to context", v14);
                                              return v5;
                                            case 877:
                                              if (v9 != 32)
                                              {
                                                sub_100020530("ASPFTLParseBufferToCxt: dmReasonsTlc_mbc(877): (#32) cfg elements != (%d) buffer elements", v9);
                                              }

                                              if (v9 >= 0x21)
                                              {
                                                v12 = 32;
                                              }

                                              else
                                              {
                                                v12 = v9;
                                              }

                                              if (sub_1000189BC(a1, "dmReasonsTlc_mbc_", a2, 8u, v12))
                                              {
                                                goto LABEL_110;
                                              }

                                              sub_100020530("ASPFTLParseBufferToCxt: dmReasonsTlc_mbc(877): Cannot add 32 elements to context", v14);
                                              return v5;
                                            case 883:
                                              if ((sub_100020050(a1, "", "clogEmptyProgramms", *a2) & 1) == 0)
                                              {
                                                sub_100020530("ASPFTLParseBufferToCxt: clogEmptyProgramms(883) cannot add 1 element to context");
                                              }

                                              goto LABEL_161;
                                            case 884:
                                              if ((sub_100020050(a1, "", "oslcHwCloseBand", *a2) & 1) == 0)
                                              {
                                                sub_100020530("ASPFTLParseBufferToCxt: oslcHwCloseBand(884) cannot add 1 element to context");
                                              }

                                              goto LABEL_161;
                                            case 891:
                                              if (v9 != 2)
                                              {
                                                sub_100020530("ASPFTLParseBufferToCxt: turboRaidSuccessAuxPartition(891): (#2) cfg elements != (%d) buffer elements", v9);
                                              }

                                              if (v9 >= 3)
                                              {
                                                v12 = 2;
                                              }

                                              else
                                              {
                                                v12 = v9;
                                              }

                                              if (sub_1000189BC(a1, "turboRaidSuccessAuxPartition_", a2, 8u, v12))
                                              {
                                                goto LABEL_110;
                                              }

                                              sub_100020530("ASPFTLParseBufferToCxt: turboRaidSuccessAuxPartition(891): Cannot add 2 elements to context", v14);
                                              return v5;
                                            case 892:
                                              if (v9 != 2)
                                              {
                                                sub_100020530("ASPFTLParseBufferToCxt: turboRaidFailAuxPartition(892): (#2) cfg elements != (%d) buffer elements", v9);
                                              }

                                              if (v9 >= 3)
                                              {
                                                v12 = 2;
                                              }

                                              else
                                              {
                                                v12 = v9;
                                              }

                                              if (sub_1000189BC(a1, "turboRaidFailAuxPartition_", a2, 8u, v12))
                                              {
                                                goto LABEL_110;
                                              }

                                              sub_100020530("ASPFTLParseBufferToCxt: turboRaidFailAuxPartition(892): Cannot add 2 elements to context", v14);
                                              return v5;
                                            case 893:
                                              if (v9 != 2)
                                              {
                                                sub_100020530("ASPFTLParseBufferToCxt: turboRaidClassifyQualPartition(893): (#2) cfg elements != (%d) buffer elements", v9);
                                              }

                                              if (v9 >= 3)
                                              {
                                                v12 = 2;
                                              }

                                              else
                                              {
                                                v12 = v9;
                                              }

                                              if (sub_1000189BC(a1, "turboRaidClassifyQualPartition_", a2, 8u, v12))
                                              {
                                                goto LABEL_110;
                                              }

                                              sub_100020530("ASPFTLParseBufferToCxt: turboRaidClassifyQualPartition(893): Cannot add 2 elements to context", v14);
                                              return v5;
                                            case 894:
                                              if (v9 != 2)
                                              {
                                                sub_100020530("ASPFTLParseBufferToCxt: turboRaidClassifyRelPartition(894): (#2) cfg elements != (%d) buffer elements", v9);
                                              }

                                              if (v9 >= 3)
                                              {
                                                v12 = 2;
                                              }

                                              else
                                              {
                                                v12 = v9;
                                              }

                                              if (sub_1000189BC(a1, "turboRaidClassifyRelPartition_", a2, 8u, v12))
                                              {
                                                goto LABEL_110;
                                              }

                                              sub_100020530("ASPFTLParseBufferToCxt: turboRaidClassifyRelPartition(894): Cannot add 2 elements to context", v14);
                                              return v5;
                                            case 895:
                                              if ((sub_100020050(a1, "", "IND_pool_freeMinSilo", *a2) & 1) == 0)
                                              {
                                                sub_100020530("ASPFTLParseBufferToCxt: IND_pool_freeMinSilo(895) cannot add 1 element to context");
                                              }

                                              goto LABEL_161;
                                            case 896:
                                              if ((sub_100020050(a1, "", "autoSweepBlocks", *a2) & 1) == 0)
                                              {
                                                sub_100020530("ASPFTLParseBufferToCxt: autoSweepBlocks(896) cannot add 1 element to context");
                                              }

                                              goto LABEL_161;
                                            case 897:
                                              if (v9 != 16)
                                              {
                                                sub_100020530("ASPFTLParseBufferToCxt: wcWrFragSizes(897): (#16) cfg elements != (%d) buffer elements", v9);
                                              }

                                              if (v9 >= 0x11)
                                              {
                                                v12 = 16;
                                              }

                                              else
                                              {
                                                v12 = v9;
                                              }

                                              if (sub_1000189BC(a1, "wcWrFragSizes_", a2, 8u, v12))
                                              {
                                                goto LABEL_110;
                                              }

                                              sub_100020530("ASPFTLParseBufferToCxt: wcWrFragSizes(897): Cannot add 16 elements to context", v14);
                                              return v5;
                                            case 898:
                                              if (v9 != 16)
                                              {
                                                sub_100020530("ASPFTLParseBufferToCxt: indStateAcrossGcDidNoL(898): (#16) cfg elements != (%d) buffer elements", v9);
                                              }

                                              if (v9 >= 0x11)
                                              {
                                                v12 = 16;
                                              }

                                              else
                                              {
                                                v12 = v9;
                                              }

                                              if (sub_1000189BC(a1, "indStateAcrossGcDidNoL_", a2, 8u, v12))
                                              {
                                                goto LABEL_110;
                                              }

                                              sub_100020530("ASPFTLParseBufferToCxt: indStateAcrossGcDidNoL(898): Cannot add 16 elements to context", v14);
                                              return v5;
                                            case 899:
                                              if (v9 != 16)
                                              {
                                                sub_100020530("ASPFTLParseBufferToCxt: indStateAcrossGcDidL(899): (#16) cfg elements != (%d) buffer elements", v9);
                                              }

                                              if (v9 >= 0x11)
                                              {
                                                v12 = 16;
                                              }

                                              else
                                              {
                                                v12 = v9;
                                              }

                                              if (sub_1000189BC(a1, "indStateAcrossGcDidL_", a2, 8u, v12))
                                              {
                                                goto LABEL_110;
                                              }

                                              sub_100020530("ASPFTLParseBufferToCxt: indStateAcrossGcDidL(899): Cannot add 16 elements to context", v14);
                                              return v5;
                                            case 900:
                                              if ((sub_100020050(a1, "", "turboRaidNoClassifyDueToWasRetire", *a2) & 1) == 0)
                                              {
                                                sub_100020530("ASPFTLParseBufferToCxt: turboRaidNoClassifyDueToWasRetire(900) cannot add 1 element to context");
                                              }

                                              goto LABEL_161;
                                            case 901:
                                              if ((sub_100020050(a1, "", "turboRaidNoClassifyDueToOpenBand", *a2) & 1) == 0)
                                              {
                                                sub_100020530("ASPFTLParseBufferToCxt: turboRaidNoClassifyDueToOpenBand(901) cannot add 1 element to context");
                                              }

                                              goto LABEL_161;
                                            case 902:
                                              if ((sub_100020050(a1, "", "turboRaidNoClassifyDueToQualityBlock", *a2) & 1) == 0)
                                              {
                                                sub_100020530("ASPFTLParseBufferToCxt: turboRaidNoClassifyDueToQualityBlock(902) cannot add 1 element to context");
                                              }

                                              goto LABEL_161;
                                            case 903:
                                              if ((sub_100020050(a1, "", "turboRaidGbbOpenBand", *a2) & 1) == 0)
                                              {
                                                sub_100020530("ASPFTLParseBufferToCxt: turboRaidGbbOpenBand(903) cannot add 1 element to context");
                                              }

                                              goto LABEL_161;
                                            case 904:
                                              if ((sub_100020050(a1, "", "turboRaidGbbShouldRetireOnRefresh", *a2) & 1) == 0)
                                              {
                                                sub_100020530("ASPFTLParseBufferToCxt: turboRaidGbbShouldRetireOnRefresh(904) cannot add 1 element to context");
                                              }

                                              goto LABEL_161;
                                            case 905:
                                              if (v9 != 16)
                                              {
                                                sub_100020530("ASPFTLParseBufferToCxt: turboRaidRelPerBlock(905): (#16) cfg elements != (%d) buffer elements", v9);
                                              }

                                              if (v9 >= 0x11)
                                              {
                                                v12 = 16;
                                              }

                                              else
                                              {
                                                v12 = v9;
                                              }

                                              if (sub_1000189BC(a1, "turboRaidRelPerBlock_", a2, 8u, v12))
                                              {
                                                goto LABEL_110;
                                              }

                                              sub_100020530("ASPFTLParseBufferToCxt: turboRaidRelPerBlock(905): Cannot add 16 elements to context", v14);
                                              return v5;
                                            case 906:
                                              if (v9 != 16)
                                              {
                                                sub_100020530("ASPFTLParseBufferToCxt: turboRaidRelBetweenRefreshesPerBlock(906): (#16) cfg elements != (%d) buffer elements", v9);
                                              }

                                              if (v9 >= 0x11)
                                              {
                                                v12 = 16;
                                              }

                                              else
                                              {
                                                v12 = v9;
                                              }

                                              if (sub_1000189BC(a1, "turboRaidRelBetweenRefreshesPerBlock_", a2, 8u, v12))
                                              {
                                                goto LABEL_110;
                                              }

                                              sub_100020530("ASPFTLParseBufferToCxt: turboRaidRelBetweenRefreshesPerBlock(906): Cannot add 16 elements to context", v14);
                                              return v5;
                                            default:
                                              if (v7 <= 997)
                                              {
                                                switch(v7)
                                                {
                                                  case 907:
                                                    if (v9 != 16)
                                                    {
                                                      sub_100020530("ASPFTLParseBufferToCxt: turboRaidMaxRelBetweenRefreshesPerBlock(907): (#16) cfg elements != (%d) buffer elements", v9);
                                                    }

                                                    if (v9 >= 0x11)
                                                    {
                                                      v12 = 16;
                                                    }

                                                    else
                                                    {
                                                      v12 = v9;
                                                    }

                                                    if (sub_1000189BC(a1, "turboRaidMaxRelBetweenRefreshesPerBlock_", a2, 8u, v12))
                                                    {
                                                      goto LABEL_110;
                                                    }

                                                    sub_100020530("ASPFTLParseBufferToCxt: turboRaidMaxRelBetweenRefreshesPerBlock(907): Cannot add 16 elements to context", v14);
                                                    return v5;
                                                  case 908:
                                                    if (v9 != 16)
                                                    {
                                                      sub_100020530("ASPFTLParseBufferToCxt: turboRaidMinRelBetweenRefreshesPerBlock(908): (#16) cfg elements != (%d) buffer elements", v9);
                                                    }

                                                    if (v9 >= 0x11)
                                                    {
                                                      v12 = 16;
                                                    }

                                                    else
                                                    {
                                                      v12 = v9;
                                                    }

                                                    if (sub_1000189BC(a1, "turboRaidMinRelBetweenRefreshesPerBlock_", a2, 8u, v12))
                                                    {
                                                      goto LABEL_110;
                                                    }

                                                    sub_100020530("ASPFTLParseBufferToCxt: turboRaidMinRelBetweenRefreshesPerBlock(908): Cannot add 16 elements to context", v14);
                                                    return v5;
                                                  case 909:
                                                  case 910:
                                                  case 911:
                                                  case 912:
                                                  case 913:
                                                  case 914:
                                                  case 915:
                                                  case 916:
                                                  case 917:
                                                  case 924:
                                                  case 925:
                                                  case 926:
                                                  case 927:
                                                  case 928:
                                                  case 929:
                                                  case 936:
                                                  case 941:
                                                  case 945:
                                                  case 946:
                                                  case 947:
                                                  case 949:
                                                  case 950:
                                                  case 952:
                                                  case 954:
                                                  case 955:
                                                  case 956:
                                                  case 957:
                                                  case 958:
                                                  case 959:
                                                  case 960:
                                                  case 963:
                                                  case 966:
                                                  case 968:
                                                  case 969:
                                                  case 970:
                                                    goto LABEL_2528;
                                                  case 918:
                                                    if (v9 != 16)
                                                    {
                                                      sub_100020530("ASPFTLParseBufferToCxt: turboRaidMaxCyclesBetweenRel(918): (#16) cfg elements != (%d) buffer elements", v9);
                                                    }

                                                    if (v9 >= 0x11)
                                                    {
                                                      v12 = 16;
                                                    }

                                                    else
                                                    {
                                                      v12 = v9;
                                                    }

                                                    if (sub_1000189BC(a1, "turboRaidMaxCyclesBetweenRel_", a2, 8u, v12))
                                                    {
                                                      goto LABEL_110;
                                                    }

                                                    sub_100020530("ASPFTLParseBufferToCxt: turboRaidMaxCyclesBetweenRel(918): Cannot add 16 elements to context", v14);
                                                    return v5;
                                                  case 919:
                                                    if (v9 != 16)
                                                    {
                                                      sub_100020530("ASPFTLParseBufferToCxt: turboRaidMinCyclesBetweenRel(919): (#16) cfg elements != (%d) buffer elements", v9);
                                                    }

                                                    if (v9 >= 0x11)
                                                    {
                                                      v12 = 16;
                                                    }

                                                    else
                                                    {
                                                      v12 = v9;
                                                    }

                                                    if (sub_1000189BC(a1, "turboRaidMinCyclesBetweenRel_", a2, 8u, v12))
                                                    {
                                                      goto LABEL_110;
                                                    }

                                                    sub_100020530("ASPFTLParseBufferToCxt: turboRaidMinCyclesBetweenRel(919): Cannot add 16 elements to context", v14);
                                                    return v5;
                                                  case 920:
                                                    if (v9 != 16)
                                                    {
                                                      sub_100020530("ASPFTLParseBufferToCxt: turboRaidAuxPerBlock(920): (#16) cfg elements != (%d) buffer elements", v9);
                                                    }

                                                    if (v9 >= 0x11)
                                                    {
                                                      v12 = 16;
                                                    }

                                                    else
                                                    {
                                                      v12 = v9;
                                                    }

                                                    if (sub_1000189BC(a1, "turboRaidAuxPerBlock_", a2, 8u, v12))
                                                    {
                                                      goto LABEL_110;
                                                    }

                                                    sub_100020530("ASPFTLParseBufferToCxt: turboRaidAuxPerBlock(920): Cannot add 16 elements to context", v14);
                                                    return v5;
                                                  case 921:
                                                    if (v9 != 16)
                                                    {
                                                      sub_100020530("ASPFTLParseBufferToCxt: turboRaidAuxBetweenRefreshesPerBlock(921): (#16) cfg elements != (%d) buffer elements", v9);
                                                    }

                                                    if (v9 >= 0x11)
                                                    {
                                                      v12 = 16;
                                                    }

                                                    else
                                                    {
                                                      v12 = v9;
                                                    }

                                                    if (sub_1000189BC(a1, "turboRaidAuxBetweenRefreshesPerBlock_", a2, 8u, v12))
                                                    {
                                                      goto LABEL_110;
                                                    }

                                                    sub_100020530("ASPFTLParseBufferToCxt: turboRaidAuxBetweenRefreshesPerBlock(921): Cannot add 16 elements to context", v14);
                                                    return v5;
                                                  case 922:
                                                    if ((sub_100020050(a1, "", "turboRaidRelLockMark", *a2) & 1) == 0)
                                                    {
                                                      sub_100020530("ASPFTLParseBufferToCxt: turboRaidRelLockMark(922) cannot add 1 element to context");
                                                    }

                                                    break;
                                                  case 923:
                                                    if ((sub_100020050(a1, "", "turboRaidAuxLockMark", *a2) & 1) == 0)
                                                    {
                                                      sub_100020530("ASPFTLParseBufferToCxt: turboRaidAuxLockMark(923) cannot add 1 element to context");
                                                    }

                                                    break;
                                                  case 930:
                                                    if (v9 != 16)
                                                    {
                                                      sub_100020530("ASPFTLParseBufferToCxt: turboRaidMaxCyclesBetweenAux(930): (#16) cfg elements != (%d) buffer elements", v9);
                                                    }

                                                    if (v9 >= 0x11)
                                                    {
                                                      v12 = 16;
                                                    }

                                                    else
                                                    {
                                                      v12 = v9;
                                                    }

                                                    if (sub_1000189BC(a1, "turboRaidMaxCyclesBetweenAux_", a2, 8u, v12))
                                                    {
                                                      goto LABEL_110;
                                                    }

                                                    sub_100020530("ASPFTLParseBufferToCxt: turboRaidMaxCyclesBetweenAux(930): Cannot add 16 elements to context", v14);
                                                    return v5;
                                                  case 931:
                                                    if (v9 != 16)
                                                    {
                                                      sub_100020530("ASPFTLParseBufferToCxt: turboRaidMinCyclesBetweenAux(931): (#16) cfg elements != (%d) buffer elements", v9);
                                                    }

                                                    if (v9 >= 0x11)
                                                    {
                                                      v12 = 16;
                                                    }

                                                    else
                                                    {
                                                      v12 = v9;
                                                    }

                                                    if (sub_1000189BC(a1, "turboRaidMinCyclesBetweenAux_", a2, 8u, v12))
                                                    {
                                                      goto LABEL_110;
                                                    }

                                                    sub_100020530("ASPFTLParseBufferToCxt: turboRaidMinCyclesBetweenAux(931): Cannot add 16 elements to context", v14);
                                                    return v5;
                                                  case 932:
                                                    if (v9 != 16)
                                                    {
                                                      sub_100020530("ASPFTLParseBufferToCxt: turboRaidLastRelPECycles(932): (#16) cfg elements != (%d) buffer elements", v9);
                                                    }

                                                    if (v9 >= 0x11)
                                                    {
                                                      v12 = 16;
                                                    }

                                                    else
                                                    {
                                                      v12 = v9;
                                                    }

                                                    if (sub_1000189BC(a1, "turboRaidLastRelPECycles_", a2, 8u, v12))
                                                    {
                                                      goto LABEL_110;
                                                    }

                                                    sub_100020530("ASPFTLParseBufferToCxt: turboRaidLastRelPECycles(932): Cannot add 16 elements to context", v14);
                                                    return v5;
                                                  case 933:
                                                    if (v9 != 16)
                                                    {
                                                      sub_100020530("ASPFTLParseBufferToCxt: turboRaidRelQualPECycles(933): (#16) cfg elements != (%d) buffer elements", v9);
                                                    }

                                                    if (v9 >= 0x11)
                                                    {
                                                      v12 = 16;
                                                    }

                                                    else
                                                    {
                                                      v12 = v9;
                                                    }

                                                    if (sub_1000189BC(a1, "turboRaidRelQualPECycles_", a2, 8u, v12))
                                                    {
                                                      goto LABEL_110;
                                                    }

                                                    sub_100020530("ASPFTLParseBufferToCxt: turboRaidRelQualPECycles(933): Cannot add 16 elements to context", v14);
                                                    return v5;
                                                  case 934:
                                                    if (v9 != 16)
                                                    {
                                                      sub_100020530("ASPFTLParseBufferToCxt: turboRaidLastAuxPECycles(934): (#16) cfg elements != (%d) buffer elements", v9);
                                                    }

                                                    if (v9 >= 0x11)
                                                    {
                                                      v12 = 16;
                                                    }

                                                    else
                                                    {
                                                      v12 = v9;
                                                    }

                                                    if (sub_1000189BC(a1, "turboRaidLastAuxPECycles_", a2, 8u, v12))
                                                    {
                                                      goto LABEL_110;
                                                    }

                                                    sub_100020530("ASPFTLParseBufferToCxt: turboRaidLastAuxPECycles(934): Cannot add 16 elements to context", v14);
                                                    return v5;
                                                  case 935:
                                                    if (v9 != 16)
                                                    {
                                                      sub_100020530("ASPFTLParseBufferToCxt: turboRaidAuxQualPECycles(935): (#16) cfg elements != (%d) buffer elements", v9);
                                                    }

                                                    if (v9 >= 0x11)
                                                    {
                                                      v12 = 16;
                                                    }

                                                    else
                                                    {
                                                      v12 = v9;
                                                    }

                                                    if (sub_1000189BC(a1, "turboRaidAuxQualPECycles_", a2, 8u, v12))
                                                    {
                                                      goto LABEL_110;
                                                    }

                                                    sub_100020530("ASPFTLParseBufferToCxt: turboRaidAuxQualPECycles(935): Cannot add 16 elements to context", v14);
                                                    return v5;
                                                  case 937:
                                                    if ((sub_100020050(a1, "", "turboRaidPEFailAfterRel", *a2) & 1) == 0)
                                                    {
                                                      sub_100020530("ASPFTLParseBufferToCxt: turboRaidPEFailAfterRel(937) cannot add 1 element to context");
                                                    }

                                                    break;
                                                  case 938:
                                                    if ((sub_100020050(a1, "", "turboRaidPEFailAfterAux", *a2) & 1) == 0)
                                                    {
                                                      sub_100020530("ASPFTLParseBufferToCxt: turboRaidPEFailAfterAux(938) cannot add 1 element to context");
                                                    }

                                                    break;
                                                  case 939:
                                                    if ((sub_100020050(a1, "", "dvfmVotesCPU", *a2) & 1) == 0)
                                                    {
                                                      sub_100020530("ASPFTLParseBufferToCxt: dvfmVotesCPU(939) cannot add 1 element to context");
                                                    }

                                                    break;
                                                  case 940:
                                                    if ((sub_100020050(a1, "", "dvfmVotesBandwidth", *a2) & 1) == 0)
                                                    {
                                                      sub_100020530("ASPFTLParseBufferToCxt: dvfmVotesBandwidth(940) cannot add 1 element to context");
                                                    }

                                                    break;
                                                  case 942:
                                                    if ((sub_100020050(a1, "", "maxSLCEndurance", *a2) & 1) == 0)
                                                    {
                                                      sub_100020530("ASPFTLParseBufferToCxt: maxSLCEndurance(942) cannot add 1 element to context");
                                                    }

                                                    break;
                                                  case 943:
                                                    if ((sub_100020050(a1, "", "maxMixedEndurance", *a2) & 1) == 0)
                                                    {
                                                      sub_100020530("ASPFTLParseBufferToCxt: maxMixedEndurance(943) cannot add 1 element to context");
                                                    }

                                                    break;
                                                  case 944:
                                                    if ((sub_100020050(a1, "", "maxNativeEndurance", *a2) & 1) == 0)
                                                    {
                                                      sub_100020530("ASPFTLParseBufferToCxt: maxNativeEndurance(944) cannot add 1 element to context");
                                                    }

                                                    break;
                                                  case 948:
                                                    if (v9 != 40)
                                                    {
                                                      sub_100020530("ASPFTLParseBufferToCxt: assertHistory(948): (#40) cfg elements != (%d) buffer elements", v9);
                                                    }

                                                    if (v9 >= 0x29)
                                                    {
                                                      v12 = 40;
                                                    }

                                                    else
                                                    {
                                                      v12 = v9;
                                                    }

                                                    if (sub_1000189BC(a1, "assertHistory_", a2, 8u, v12))
                                                    {
                                                      goto LABEL_110;
                                                    }

                                                    sub_100020530("ASPFTLParseBufferToCxt: assertHistory(948): Cannot add 40 elements to context", v14);
                                                    return v5;
                                                  case 951:
                                                    if ((sub_100020050(a1, "", "asp3Support", *a2) & 1) == 0)
                                                    {
                                                      sub_100020530("ASPFTLParseBufferToCxt: asp3Support(951) cannot add 1 element to context");
                                                    }

                                                    break;
                                                  case 953:
                                                    if ((sub_100020050(a1, "", "numCrossTempRaidUecc", *a2) & 1) == 0)
                                                    {
                                                      sub_100020530("ASPFTLParseBufferToCxt: numCrossTempRaidUecc(953) cannot add 1 element to context");
                                                    }

                                                    break;
                                                  case 961:
                                                    if ((sub_100020050(a1, "", "osBuildStr", *a2) & 1) == 0)
                                                    {
                                                      sub_100020530("ASPFTLParseBufferToCxt: osBuildStr(961) cannot add 1 element to context");
                                                    }

                                                    break;
                                                  case 962:
                                                    if ((sub_100020050(a1, "", "raidConfig", *a2) & 1) == 0)
                                                    {
                                                      sub_100020530("ASPFTLParseBufferToCxt: raidConfig(962) cannot add 1 element to context");
                                                    }

                                                    break;
                                                  case 964:
                                                    if ((sub_100020050(a1, "", "raidBlkParityBands", *a2) & 1) == 0)
                                                    {
                                                      sub_100020530("ASPFTLParseBufferToCxt: raidBlkParityBands(964) cannot add 1 element to context");
                                                    }

                                                    break;
                                                  case 965:
                                                    if ((sub_100020050(a1, "", "raidBlkParitySecs", *a2) & 1) == 0)
                                                    {
                                                      sub_100020530("ASPFTLParseBufferToCxt: raidBlkParitySecs(965) cannot add 1 element to context");
                                                    }

                                                    break;
                                                  case 967:
                                                    if (v9 != 12)
                                                    {
                                                      sub_100020530("ASPFTLParseBufferToCxt: indTrimFrags(967): (#12) cfg elements != (%d) buffer elements", v9);
                                                    }

                                                    if (v9 >= 0xD)
                                                    {
                                                      v12 = 12;
                                                    }

                                                    else
                                                    {
                                                      v12 = v9;
                                                    }

                                                    if (sub_1000189BC(a1, "indTrimFrags_", a2, 8u, v12))
                                                    {
                                                      goto LABEL_110;
                                                    }

                                                    sub_100020530("ASPFTLParseBufferToCxt: indTrimFrags(967): Cannot add 12 elements to context", v14);
                                                    return v5;
                                                  case 971:
                                                    if (v9 != 12)
                                                    {
                                                      sub_100020530("ASPFTLParseBufferToCxt: indUsedFrags(971): (#12) cfg elements != (%d) buffer elements", v9);
                                                    }

                                                    if (v9 >= 0xD)
                                                    {
                                                      v12 = 12;
                                                    }

                                                    else
                                                    {
                                                      v12 = v9;
                                                    }

                                                    if (sub_1000189BC(a1, "indUsedFrags_", a2, 8u, v12))
                                                    {
                                                      goto LABEL_110;
                                                    }

                                                    sub_100020530("ASPFTLParseBufferToCxt: indUsedFrags(971): Cannot add 12 elements to context", v14);
                                                    return v5;
                                                  default:
                                                    if (v7 == 996)
                                                    {
                                                      if ((sub_100020050(a1, "", "clogFindFail", *a2) & 1) == 0)
                                                      {
                                                        sub_100020530("ASPFTLParseBufferToCxt: clogFindFail(996) cannot add 1 element to context");
                                                      }

                                                      break;
                                                    }

                                                    if (v7 != 997)
                                                    {
                                                      goto LABEL_2528;
                                                    }

                                                    if ((sub_100020050(a1, "", "clogFindBlank", *a2) & 1) == 0)
                                                    {
                                                      sub_100020530("ASPFTLParseBufferToCxt: clogFindBlank(997) cannot add 1 element to context");
                                                    }

                                                    break;
                                                }

LABEL_161:
                                                v5 = (v5 + 1);
                                                goto LABEL_162;
                                              }

                                              if (v7 > 1137)
                                              {
                                                if (v7 > 1170)
                                                {
                                                  if (v7 > 1180)
                                                  {
                                                    if (v7 <= 1182)
                                                    {
                                                      if (v7 == 1181)
                                                      {
                                                        if (v9 != 4)
                                                        {
                                                          sub_100020530("ASPFTLParseBufferToCxt: gc_cur_dw_gc3(1181): (#4) cfg elements != (%d) buffer elements", v9);
                                                        }

                                                        if (v9 >= 5)
                                                        {
                                                          v12 = 4;
                                                        }

                                                        else
                                                        {
                                                          v12 = v9;
                                                        }

                                                        if ((sub_1000189BC(a1, "gc_cur_dw_gc3_", a2, 8u, v12) & 1) == 0)
                                                        {
                                                          sub_100020530("ASPFTLParseBufferToCxt: gc_cur_dw_gc3(1181): Cannot add 4 elements to context", v14);
                                                          return v5;
                                                        }
                                                      }

                                                      else
                                                      {
                                                        if (v9 != 4)
                                                        {
                                                          sub_100020530("ASPFTLParseBufferToCxt: gc_tot_dw_gc1(1182): (#4) cfg elements != (%d) buffer elements", v9);
                                                        }

                                                        if (v9 >= 5)
                                                        {
                                                          v12 = 4;
                                                        }

                                                        else
                                                        {
                                                          v12 = v9;
                                                        }

                                                        if ((sub_1000189BC(a1, "gc_tot_dw_gc1_", a2, 8u, v12) & 1) == 0)
                                                        {
                                                          sub_100020530("ASPFTLParseBufferToCxt: gc_tot_dw_gc1(1182): Cannot add 4 elements to context", v14);
                                                          return v5;
                                                        }
                                                      }

                                                      goto LABEL_110;
                                                    }

                                                    if (v7 == 1183)
                                                    {
                                                      if (v9 != 4)
                                                      {
                                                        sub_100020530("ASPFTLParseBufferToCxt: gc_tot_dw_gc2(1183): (#4) cfg elements != (%d) buffer elements", v9);
                                                      }

                                                      if (v9 >= 5)
                                                      {
                                                        v12 = 4;
                                                      }

                                                      else
                                                      {
                                                        v12 = v9;
                                                      }

                                                      if ((sub_1000189BC(a1, "gc_tot_dw_gc2_", a2, 8u, v12) & 1) == 0)
                                                      {
                                                        sub_100020530("ASPFTLParseBufferToCxt: gc_tot_dw_gc2(1183): Cannot add 4 elements to context", v14);
                                                        return v5;
                                                      }

                                                      goto LABEL_110;
                                                    }

                                                    if (v7 == 1184)
                                                    {
                                                      if ((sub_100020050(a1, "", "unhappy_state", *a2) & 1) == 0)
                                                      {
                                                        sub_100020530("ASPFTLParseBufferToCxt: unhappy_state(1184) cannot add 1 element to context");
                                                      }

                                                      goto LABEL_161;
                                                    }
                                                  }

                                                  else
                                                  {
                                                    if (v7 > 1178)
                                                    {
                                                      if (v7 == 1179)
                                                      {
                                                        if (v9 != 4)
                                                        {
                                                          sub_100020530("ASPFTLParseBufferToCxt: gc_cur_dw_gc1(1179): (#4) cfg elements != (%d) buffer elements", v9);
                                                        }

                                                        if (v9 >= 5)
                                                        {
                                                          v12 = 4;
                                                        }

                                                        else
                                                        {
                                                          v12 = v9;
                                                        }

                                                        if ((sub_1000189BC(a1, "gc_cur_dw_gc1_", a2, 8u, v12) & 1) == 0)
                                                        {
                                                          sub_100020530("ASPFTLParseBufferToCxt: gc_cur_dw_gc1(1179): Cannot add 4 elements to context", v14);
                                                          return v5;
                                                        }
                                                      }

                                                      else
                                                      {
                                                        if (v9 != 4)
                                                        {
                                                          sub_100020530("ASPFTLParseBufferToCxt: gc_cur_dw_gc2(1180): (#4) cfg elements != (%d) buffer elements", v9);
                                                        }

                                                        if (v9 >= 5)
                                                        {
                                                          v12 = 4;
                                                        }

                                                        else
                                                        {
                                                          v12 = v9;
                                                        }

                                                        if ((sub_1000189BC(a1, "gc_cur_dw_gc2_", a2, 8u, v12) & 1) == 0)
                                                        {
                                                          sub_100020530("ASPFTLParseBufferToCxt: gc_cur_dw_gc2(1180): Cannot add 4 elements to context", v14);
                                                          return v5;
                                                        }
                                                      }

                                                      goto LABEL_110;
                                                    }

                                                    if (v7 == 1171)
                                                    {
                                                      if (v9 != 10)
                                                      {
                                                        sub_100020530("ASPFTLParseBufferToCxt: poDetectEmptySpotRemovalAge(1171): (#10) cfg elements != (%d) buffer elements", v9);
                                                      }

                                                      if (v9 >= 0xB)
                                                      {
                                                        v12 = 10;
                                                      }

                                                      else
                                                      {
                                                        v12 = v9;
                                                      }

                                                      if ((sub_1000189BC(a1, "poDetectEmptySpotRemovalAge_", a2, 8u, v12) & 1) == 0)
                                                      {
                                                        sub_100020530("ASPFTLParseBufferToCxt: poDetectEmptySpotRemovalAge(1171): Cannot add 10 elements to context", v14);
                                                        return v5;
                                                      }

                                                      goto LABEL_110;
                                                    }

                                                    if (v7 == 1172)
                                                    {
                                                      if (v9 != 3)
                                                      {
                                                        sub_100020530("ASPFTLParseBufferToCxt: poDetectGBBedMostSevereCost(1172): (#3) cfg elements != (%d) buffer elements", v9);
                                                      }

                                                      if (v7 >> 34)
                                                      {
                                                        v12 = 3;
                                                      }

                                                      else
                                                      {
                                                        v12 = v9;
                                                      }

                                                      if ((sub_1000189BC(a1, "poDetectGBBedMostSevereCost_", a2, 8u, v12) & 1) == 0)
                                                      {
                                                        sub_100020530("ASPFTLParseBufferToCxt: poDetectGBBedMostSevereCost(1172): Cannot add 3 elements to context", v14);
                                                        return v5;
                                                      }

                                                      goto LABEL_110;
                                                    }
                                                  }
                                                }

                                                else if (v7 > 1156)
                                                {
                                                  if (v7 > 1167)
                                                  {
                                                    if (v7 == 1168)
                                                    {
                                                      if (v9 != 2)
                                                      {
                                                        sub_100020530("ASPFTLParseBufferToCxt: poDetectPERemovalTotalCost(1168): (#2) cfg elements != (%d) buffer elements", v9);
                                                      }

                                                      if (v9 >= 3)
                                                      {
                                                        v12 = 2;
                                                      }

                                                      else
                                                      {
                                                        v12 = v9;
                                                      }

                                                      if ((sub_1000189BC(a1, "poDetectPERemovalTotalCost_", a2, 8u, v12) & 1) == 0)
                                                      {
                                                        sub_100020530("ASPFTLParseBufferToCxt: poDetectPERemovalTotalCost(1168): Cannot add 2 elements to context", v14);
                                                        return v5;
                                                      }

                                                      goto LABEL_110;
                                                    }

                                                    if (v7 == 1169)
                                                    {
                                                      if (v9 != 2)
                                                      {
                                                        sub_100020530("ASPFTLParseBufferToCxt: poDetectEmptySpotRemovalTotalCost(1169): (#2) cfg elements != (%d) buffer elements", v9);
                                                      }

                                                      if (v9 >= 3)
                                                      {
                                                        v12 = 2;
                                                      }

                                                      else
                                                      {
                                                        v12 = v9;
                                                      }

                                                      if ((sub_1000189BC(a1, "poDetectEmptySpotRemovalTotalCost_", a2, 8u, v12) & 1) == 0)
                                                      {
                                                        sub_100020530("ASPFTLParseBufferToCxt: poDetectEmptySpotRemovalTotalCost(1169): Cannot add 2 elements to context", v14);
                                                        return v5;
                                                      }

                                                      goto LABEL_110;
                                                    }
                                                  }

                                                  else
                                                  {
                                                    if (v7 == 1157)
                                                    {
                                                      if ((sub_100020050(a1, "", "eanMaxForceROTimeMs", *a2) & 1) == 0)
                                                      {
                                                        sub_100020530("ASPFTLParseBufferToCxt: eanMaxForceROTimeMs(1157) cannot add 1 element to context");
                                                      }

                                                      goto LABEL_161;
                                                    }

                                                    if (v7 == 1158)
                                                    {
                                                      if ((sub_100020050(a1, "", "eanMaxForceRORecoTimeMs", *a2) & 1) == 0)
                                                      {
                                                        sub_100020530("ASPFTLParseBufferToCxt: eanMaxForceRORecoTimeMs(1158) cannot add 1 element to context");
                                                      }

                                                      goto LABEL_161;
                                                    }
                                                  }
                                                }

                                                else if (v7 > 1147)
                                                {
                                                  if (v7 == 1148)
                                                  {
                                                    if (v9 != 24)
                                                    {
                                                      sub_100020530("ASPFTLParseBufferToCxt: gc_concurrent_dw_gc1(1148): (#24) cfg elements != (%d) buffer elements", v9);
                                                    }

                                                    if (v9 >= 0x19)
                                                    {
                                                      v12 = 24;
                                                    }

                                                    else
                                                    {
                                                      v12 = v9;
                                                    }

                                                    if ((sub_1000189BC(a1, "gc_concurrent_dw_gc1_", a2, 8u, v12) & 1) == 0)
                                                    {
                                                      sub_100020530("ASPFTLParseBufferToCxt: gc_concurrent_dw_gc1(1148): Cannot add 24 elements to context", v14);
                                                      return v5;
                                                    }

LABEL_110:
                                                    v5 = v12 + v5;
                                                    goto LABEL_162;
                                                  }

                                                  if (v7 == 1149)
                                                  {
                                                    if (v9 != 24)
                                                    {
                                                      sub_100020530("ASPFTLParseBufferToCxt: gc_concurrent_dw_gc2(1149): (#24) cfg elements != (%d) buffer elements", v9);
                                                    }

                                                    if (v9 >= 0x19)
                                                    {
                                                      v12 = 24;
                                                    }

                                                    else
                                                    {
                                                      v12 = v9;
                                                    }

                                                    if ((sub_1000189BC(a1, "gc_concurrent_dw_gc2_", a2, 8u, v12) & 1) == 0)
                                                    {
                                                      sub_100020530("ASPFTLParseBufferToCxt: gc_concurrent_dw_gc2(1149): Cannot add 24 elements to context", v14);
                                                      return v5;
                                                    }

                                                    goto LABEL_110;
                                                  }
                                                }

                                                else
                                                {
                                                  if (v7 == 1138)
                                                  {
                                                    if ((sub_100020050(a1, "", "numOfToHappySwitches", *a2) & 1) == 0)
                                                    {
                                                      sub_100020530("ASPFTLParseBufferToCxt: numOfToHappySwitches(1138) cannot add 1 element to context");
                                                    }

                                                    goto LABEL_161;
                                                  }

                                                  if (v7 == 1147)
                                                  {
                                                    if (v9 != 24)
                                                    {
                                                      sub_100020530("ASPFTLParseBufferToCxt: gc_concurrent_dw_gc12(1147): (#24) cfg elements != (%d) buffer elements", v9);
                                                    }

                                                    if (v9 >= 0x19)
                                                    {
                                                      v12 = 24;
                                                    }

                                                    else
                                                    {
                                                      v12 = v9;
                                                    }

                                                    if ((sub_1000189BC(a1, "gc_concurrent_dw_gc12_", a2, 8u, v12) & 1) == 0)
                                                    {
                                                      sub_100020530("ASPFTLParseBufferToCxt: gc_concurrent_dw_gc12(1147): Cannot add 24 elements to context", v14);
                                                      return v5;
                                                    }

                                                    goto LABEL_110;
                                                  }
                                                }
                                              }

                                              else if (v7 > 1039)
                                              {
                                                if (v7 > 1104)
                                                {
                                                  if (v7 > 1115)
                                                  {
                                                    if (v7 == 1116)
                                                    {
                                                      if (v9 != 32)
                                                      {
                                                        sub_100020530("ASPFTLParseBufferToCxt: gcwamp(1116): (#32) cfg elements != (%d) buffer elements", v9);
                                                      }

                                                      if (v9 >= 0x21)
                                                      {
                                                        v12 = 32;
                                                      }

                                                      else
                                                      {
                                                        v12 = v9;
                                                      }

                                                      if ((sub_1000189BC(a1, "gcwamp_", a2, 8u, v12) & 1) == 0)
                                                      {
                                                        sub_100020530("ASPFTLParseBufferToCxt: gcwamp(1116): Cannot add 32 elements to context", v14);
                                                        return v5;
                                                      }

                                                      goto LABEL_110;
                                                    }

                                                    if (v7 == 1137)
                                                    {
                                                      if ((sub_100020050(a1, "", "numOfToUnhappySwitches", *a2) & 1) == 0)
                                                      {
                                                        sub_100020530("ASPFTLParseBufferToCxt: numOfToUnhappySwitches(1137) cannot add 1 element to context");
                                                      }

                                                      goto LABEL_161;
                                                    }
                                                  }

                                                  else
                                                  {
                                                    if (v7 == 1105)
                                                    {
                                                      if (v9 != 14)
                                                      {
                                                        sub_100020530("ASPFTLParseBufferToCxt: hostReadSequential(1105): (#14) cfg elements != (%d) buffer elements", v9);
                                                      }

                                                      if (v9 >= 0xF)
                                                      {
                                                        v12 = 14;
                                                      }

                                                      else
                                                      {
                                                        v12 = v9;
                                                      }

                                                      if ((sub_1000189BC(a1, "hostReadSequential_", a2, 8u, v12) & 1) == 0)
                                                      {
                                                        sub_100020530("ASPFTLParseBufferToCxt: hostReadSequential(1105): Cannot add 14 elements to context", v14);
                                                        return v5;
                                                      }

                                                      goto LABEL_110;
                                                    }

                                                    if (v7 == 1106)
                                                    {
                                                      if (v9 != 14)
                                                      {
                                                        sub_100020530("ASPFTLParseBufferToCxt: GCReadSequential(1106): (#14) cfg elements != (%d) buffer elements", v9);
                                                      }

                                                      if (v9 >= 0xF)
                                                      {
                                                        v12 = 14;
                                                      }

                                                      else
                                                      {
                                                        v12 = v9;
                                                      }

                                                      if ((sub_1000189BC(a1, "GCReadSequential_", a2, 8u, v12) & 1) == 0)
                                                      {
                                                        sub_100020530("ASPFTLParseBufferToCxt: GCReadSequential(1106): Cannot add 14 elements to context", v14);
                                                        return v5;
                                                      }

                                                      goto LABEL_110;
                                                    }
                                                  }
                                                }

                                                else
                                                {
                                                  if (v7 <= 1041)
                                                  {
                                                    v15 = v7 >> 37;
                                                    if (v7 == 1040)
                                                    {
                                                      if (v9 != 31)
                                                      {
                                                        sub_100020530("ASPFTLParseBufferToCxt: bandsAgeBinsV2(1040): (#31) cfg elements != (%d) buffer elements", v9);
                                                      }

                                                      if (v15)
                                                      {
                                                        v12 = 31;
                                                      }

                                                      else
                                                      {
                                                        v12 = v9;
                                                      }

                                                      if ((sub_1000189BC(a1, "bandsAgeBinsV2_", a2, 8u, v12) & 1) == 0)
                                                      {
                                                        sub_100020530("ASPFTLParseBufferToCxt: bandsAgeBinsV2(1040): Cannot add 31 elements to context", v14);
                                                        return v5;
                                                      }
                                                    }

                                                    else
                                                    {
                                                      if (v9 != 31)
                                                      {
                                                        sub_100020530("ASPFTLParseBufferToCxt: bandsAgeBinsSnapshot(1041): (#31) cfg elements != (%d) buffer elements", v9);
                                                      }

                                                      if (v15)
                                                      {
                                                        v12 = 31;
                                                      }

                                                      else
                                                      {
                                                        v12 = v9;
                                                      }

                                                      if ((sub_1000189BC(a1, "bandsAgeBinsSnapshot_", a2, 8u, v12) & 1) == 0)
                                                      {
                                                        sub_100020530("ASPFTLParseBufferToCxt: bandsAgeBinsSnapshot(1041): Cannot add 31 elements to context", v14);
                                                        return v5;
                                                      }
                                                    }

                                                    goto LABEL_110;
                                                  }

                                                  if (v7 == 1042)
                                                  {
                                                    if (v9 != 15)
                                                    {
                                                      sub_100020530("ASPFTLParseBufferToCxt: bandsAgeBinsReadSectors(1042): (#15) cfg elements != (%d) buffer elements", v9);
                                                    }

                                                    if (v7 >> 36)
                                                    {
                                                      v12 = 15;
                                                    }

                                                    else
                                                    {
                                                      v12 = v9;
                                                    }

                                                    if ((sub_1000189BC(a1, "bandsAgeBinsReadSectors_", a2, 8u, v12) & 1) == 0)
                                                    {
                                                      sub_100020530("ASPFTLParseBufferToCxt: bandsAgeBinsReadSectors(1042): Cannot add 15 elements to context", v14);
                                                      return v5;
                                                    }

                                                    goto LABEL_110;
                                                  }

                                                  if (v7 == 1080)
                                                  {
                                                    if ((sub_100020050(a1, "", "raidForceClogLoad", *a2) & 1) == 0)
                                                    {
                                                      sub_100020530("ASPFTLParseBufferToCxt: raidForceClogLoad(1080) cannot add 1 element to context");
                                                    }

                                                    goto LABEL_161;
                                                  }
                                                }
                                              }

                                              else if (v7 > 1002)
                                              {
                                                if (v7 > 1015)
                                                {
                                                  if (v7 == 1016)
                                                  {
                                                    if ((sub_100020050(a1, "", "eanEarlyBootNumUeccPages", *a2) & 1) == 0)
                                                    {
                                                      sub_100020530("ASPFTLParseBufferToCxt: eanEarlyBootNumUeccPages(1016) cannot add 1 element to context");
                                                    }

                                                    goto LABEL_161;
                                                  }

                                                  if (v7 == 1017)
                                                  {
                                                    if ((sub_100020050(a1, "", "eanEarlyBootUeccMultiplane", *a2) & 1) == 0)
                                                    {
                                                      sub_100020530("ASPFTLParseBufferToCxt: eanEarlyBootUeccMultiplane(1017) cannot add 1 element to context");
                                                    }

                                                    goto LABEL_161;
                                                  }
                                                }

                                                else
                                                {
                                                  if (v7 == 1003)
                                                  {
                                                    if ((sub_100020050(a1, "", "clogReplaySpfError", *a2) & 1) == 0)
                                                    {
                                                      sub_100020530("ASPFTLParseBufferToCxt: clogReplaySpfError(1003) cannot add 1 element to context");
                                                    }

                                                    goto LABEL_161;
                                                  }

                                                  if (v7 == 1015)
                                                  {
                                                    if (v9 != 4)
                                                    {
                                                      sub_100020530("ASPFTLParseBufferToCxt: eanEarlyBootUeccPage(1015): (#4) cfg elements != (%d) buffer elements", v9);
                                                    }

                                                    if (v9 >= 5)
                                                    {
                                                      v12 = 4;
                                                    }

                                                    else
                                                    {
                                                      v12 = v9;
                                                    }

                                                    if ((sub_1000189BC(a1, "eanEarlyBootUeccPage_", a2, 8u, v12) & 1) == 0)
                                                    {
                                                      sub_100020530("ASPFTLParseBufferToCxt: eanEarlyBootUeccPage(1015): Cannot add 4 elements to context", v14);
                                                      return v5;
                                                    }

                                                    goto LABEL_110;
                                                  }
                                                }
                                              }

                                              else
                                              {
                                                if (v7 > 1000)
                                                {
                                                  if (v7 == 1001)
                                                  {
                                                    if (v9 != 8)
                                                    {
                                                      sub_100020530("ASPFTLParseBufferToCxt: clogReplayFailReason(1001): (#8) cfg elements != (%d) buffer elements", v9);
                                                    }

                                                    if (v9 >= 9)
                                                    {
                                                      v12 = 8;
                                                    }

                                                    else
                                                    {
                                                      v12 = v9;
                                                    }

                                                    if ((sub_1000189BC(a1, "clogReplayFailReason_", a2, 8u, v12) & 1) == 0)
                                                    {
                                                      sub_100020530("ASPFTLParseBufferToCxt: clogReplayFailReason(1001): Cannot add 8 elements to context", v14);
                                                      return v5;
                                                    }

                                                    goto LABEL_110;
                                                  }

                                                  if ((sub_100020050(a1, "", "clogReplayTransientError", *a2) & 1) == 0)
                                                  {
                                                    sub_100020530("ASPFTLParseBufferToCxt: clogReplayTransientError(1002) cannot add 1 element to context");
                                                  }

                                                  goto LABEL_161;
                                                }

                                                if (v7 == 998)
                                                {
                                                  if ((sub_100020050(a1, "", "clogFindUnc", *a2) & 1) == 0)
                                                  {
                                                    sub_100020530("ASPFTLParseBufferToCxt: clogFindUnc(998) cannot add 1 element to context");
                                                  }

                                                  goto LABEL_161;
                                                }

                                                if (v7 == 999)
                                                {
                                                  if ((sub_100020050(a1, "", "clogFindUnexpected", *a2) & 1) == 0)
                                                  {
                                                    sub_100020530("ASPFTLParseBufferToCxt: clogFindUnexpected(999) cannot add 1 element to context");
                                                  }

                                                  goto LABEL_161;
                                                }
                                              }

                                              break;
                                          }

                                          break;
                                      }

                                      break;
                                  }

                                  break;
                              }

                              break;
                          }

                          break;
                      }

                      break;
                  }

                  break;
              }

              break;
          }

          break;
      }

      break;
  }

LABEL_2528:
  switch(v7)
  {
    case 1185:
      if ((sub_100020050(a1, "", "unhappy_level", *a2) & 1) == 0)
      {
        sub_100020530("ASPFTLParseBufferToCxt: unhappy_level(1185) cannot add 1 element to context");
      }

      goto LABEL_161;
    case 1186:
    case 1187:
    case 1188:
    case 1191:
    case 1192:
    case 1193:
    case 1194:
    case 1195:
    case 1200:
    case 1203:
    case 1204:
    case 1205:
    case 1206:
    case 1207:
    case 1208:
    case 1209:
    case 1210:
    case 1212:
    case 1213:
    case 1214:
    case 1219:
    case 1220:
    case 1235:
    case 1236:
    case 1237:
    case 1238:
    case 1239:
    case 1240:
    case 1242:
    case 1243:
    case 1245:
    case 1247:
    case 1248:
    case 1249:
    case 1250:
    case 1251:
    case 1252:
    case 1253:
    case 1254:
    case 1255:
    case 1256:
    case 1257:
    case 1258:
    case 1259:
    case 1260:
    case 1261:
    case 1262:
    case 1263:
LABEL_2685:
      if (v7 > 1447)
      {
        if (v7 > 1535)
        {
          if (v7 > 1542)
          {
            if (v7 <= 1544)
            {
              if (v7 == 1543)
              {
                if (v9 != 10)
                {
                  sub_100020530("ASPFTLParseBufferToCxt: istkLowNoDIPingIntervals(1543): (#10) cfg elements != (%d) buffer elements", v9);
                }

                if (v9 >= 0xB)
                {
                  v12 = 10;
                }

                else
                {
                  v12 = v9;
                }

                if ((sub_1000189BC(a1, "istkLowNoDIPingIntervals_", a2, 8u, v12) & 1) == 0)
                {
                  sub_100020530("ASPFTLParseBufferToCxt: istkLowNoDIPingIntervals(1543): Cannot add 10 elements to context", v14);
                  return v5;
                }
              }

              else
              {
                if (v9 != 10)
                {
                  sub_100020530("ASPFTLParseBufferToCxt: istkLowNoSUIPingIntervals(1544): (#10) cfg elements != (%d) buffer elements", v9);
                }

                if (v9 >= 0xB)
                {
                  v12 = 10;
                }

                else
                {
                  v12 = v9;
                }

                if ((sub_1000189BC(a1, "istkLowNoSUIPingIntervals_", a2, 8u, v12) & 1) == 0)
                {
                  sub_100020530("ASPFTLParseBufferToCxt: istkLowNoSUIPingIntervals(1544): Cannot add 10 elements to context", v14);
                  return v5;
                }
              }

              goto LABEL_110;
            }

            switch(v7)
            {
              case 0x609:
                if (v9 != 6)
                {
                  sub_100020530("ASPFTLParseBufferToCxt: istkLowAfterMedIntervals(1545): (#6) cfg elements != (%d) buffer elements", v9);
                }

                if (v9 >= 7)
                {
                  v12 = 6;
                }

                else
                {
                  v12 = v9;
                }

                if ((sub_1000189BC(a1, "istkLowAfterMedIntervals_", a2, 8u, v12) & 1) == 0)
                {
                  sub_100020530("ASPFTLParseBufferToCxt: istkLowAfterMedIntervals(1545): Cannot add 6 elements to context", v14);
                  return v5;
                }

                goto LABEL_110;
              case 0x60B:
                if (v9 != 5)
                {
                  sub_100020530("ASPFTLParseBufferToCxt: istkHWBetweenMed(1547): (#5) cfg elements != (%d) buffer elements", v9);
                }

                if (v7 >> 33 >= 3)
                {
                  v12 = 5;
                }

                else
                {
                  v12 = v9;
                }

                if ((sub_1000189BC(a1, "istkHWBetweenMed_", a2, 8u, v12) & 1) == 0)
                {
                  sub_100020530("ASPFTLParseBufferToCxt: istkHWBetweenMed(1547): Cannot add 5 elements to context", v14);
                  return v5;
                }

                goto LABEL_110;
              case 0x622:
                if ((sub_100020050(a1, "", "uptimeSeconds", *a2) & 1) == 0)
                {
                  sub_100020530("ASPFTLParseBufferToCxt: uptimeSeconds(1570) cannot add 1 element to context");
                }

                goto LABEL_161;
            }
          }

          else
          {
            if (v7 <= 1537)
            {
              if (v7 == 1536)
              {
                if ((sub_100020050(a1, "", "istkLowPings", *a2) & 1) == 0)
                {
                  sub_100020530("ASPFTLParseBufferToCxt: istkLowPings(1536) cannot add 1 element to context");
                }
              }

              else if ((sub_100020050(a1, "", "istkLowNoDIPings", *a2) & 1) == 0)
              {
                sub_100020530("ASPFTLParseBufferToCxt: istkLowNoDIPings(1537) cannot add 1 element to context");
              }

              goto LABEL_161;
            }

            switch(v7)
            {
              case 0x602:
                if ((sub_100020050(a1, "", "istkLowNoSUIPings", *a2) & 1) == 0)
                {
                  sub_100020530("ASPFTLParseBufferToCxt: istkLowNoSUIPings(1538) cannot add 1 element to context");
                }

                goto LABEL_161;
              case 0x603:
                if ((sub_100020050(a1, "", "istkMedPings", *a2) & 1) == 0)
                {
                  sub_100020530("ASPFTLParseBufferToCxt: istkMedPings(1539) cannot add 1 element to context");
                }

                goto LABEL_161;
              case 0x604:
                if ((sub_100020050(a1, "", "istkHighPings", *a2) & 1) == 0)
                {
                  sub_100020530("ASPFTLParseBufferToCxt: istkHighPings(1540) cannot add 1 element to context");
                }

                goto LABEL_161;
            }
          }
        }

        else if (v7 > 1462)
        {
          if (v7 > 1532)
          {
            if (v7 == 1533)
            {
              if (v9 != 12)
              {
                sub_100020530("ASPFTLParseBufferToCxt: istkLowPingIntervals(1533): (#12) cfg elements != (%d) buffer elements", v9);
              }

              if (v9 >= 0xD)
              {
                v12 = 12;
              }

              else
              {
                v12 = v9;
              }

              if ((sub_1000189BC(a1, "istkLowPingIntervals_", a2, 8u, v12) & 1) == 0)
              {
                sub_100020530("ASPFTLParseBufferToCxt: istkLowPingIntervals(1533): Cannot add 12 elements to context", v14);
                return v5;
              }
            }

            else if (v7 == 1534)
            {
              if (v9 != 10)
              {
                sub_100020530("ASPFTLParseBufferToCxt: istkMedPingIntervals(1534): (#10) cfg elements != (%d) buffer elements", v9);
              }

              if (v9 >= 0xB)
              {
                v12 = 10;
              }

              else
              {
                v12 = v9;
              }

              if ((sub_1000189BC(a1, "istkMedPingIntervals_", a2, 8u, v12) & 1) == 0)
              {
                sub_100020530("ASPFTLParseBufferToCxt: istkMedPingIntervals(1534): Cannot add 10 elements to context", v14);
                return v5;
              }
            }

            else
            {
              if (v9 != 10)
              {
                sub_100020530("ASPFTLParseBufferToCxt: istkHighPingIntervals(1535): (#10) cfg elements != (%d) buffer elements", v9);
              }

              if (v9 >= 0xB)
              {
                v12 = 10;
              }

              else
              {
                v12 = v9;
              }

              if ((sub_1000189BC(a1, "istkHighPingIntervals_", a2, 8u, v12) & 1) == 0)
              {
                sub_100020530("ASPFTLParseBufferToCxt: istkHighPingIntervals(1535): Cannot add 10 elements to context", v14);
                return v5;
              }
            }

            goto LABEL_110;
          }

          if (v7 == 1463)
          {
            if (v9 != 6)
            {
              sub_100020530("ASPFTLParseBufferToCxt: nandReadsByMode(1463): (#6) cfg elements != (%d) buffer elements", v9);
            }

            if (v9 >= 7)
            {
              v12 = 6;
            }

            else
            {
              v12 = v9;
            }

            if ((sub_1000189BC(a1, "nandReadsByMode_", a2, 8u, v12) & 1) == 0)
            {
              sub_100020530("ASPFTLParseBufferToCxt: nandReadsByMode(1463): Cannot add 6 elements to context", v14);
              return v5;
            }

            goto LABEL_110;
          }

          if (v7 == 1494)
          {
            if (v9 != 20)
            {
              sub_100020530("ASPFTLParseBufferToCxt: throttlingSecPerTTPerMW(1494): (#20) cfg elements != (%d) buffer elements", v9);
            }

            if (v9 >= 0x15)
            {
              v12 = 20;
            }

            else
            {
              v12 = v9;
            }

            if ((sub_1000189BC(a1, "throttlingSecPerTTPerMW_", a2, 8u, v12) & 1) == 0)
            {
              sub_100020530("ASPFTLParseBufferToCxt: throttlingSecPerTTPerMW(1494): Cannot add 20 elements to context", v14);
              return v5;
            }

            goto LABEL_110;
          }
        }

        else
        {
          if (v7 <= 1449)
          {
            if (v7 == 1448)
            {
              if ((sub_100020050(a1, "", "deviceTempMaxValue", *a2) & 1) == 0)
              {
                sub_100020530("ASPFTLParseBufferToCxt: deviceTempMaxValue(1448) cannot add 1 element to context");
              }
            }

            else if ((sub_100020050(a1, "", "deviceTempHighValue", *a2) & 1) == 0)
            {
              sub_100020530("ASPFTLParseBufferToCxt: deviceTempHighValue(1449) cannot add 1 element to context");
            }

            goto LABEL_161;
          }

          switch(v7)
          {
            case 0x5AA:
              if ((sub_100020050(a1, "", "deviceTempLowValue", *a2) & 1) == 0)
              {
                sub_100020530("ASPFTLParseBufferToCxt: deviceTempLowValue(1450) cannot add 1 element to context");
              }

              goto LABEL_161;
            case 0x5AC:
              if ((sub_100020050(a1, "", "selfPanicEnabled", *a2) & 1) == 0)
              {
                sub_100020530("ASPFTLParseBufferToCxt: selfPanicEnabled(1452) cannot add 1 element to context");
              }

              goto LABEL_161;
            case 0x5B6:
              if (v9 != 6)
              {
                sub_100020530("ASPFTLParseBufferToCxt: nandWritesByMode(1462): (#6) cfg elements != (%d) buffer elements", v9);
              }

              if (v9 >= 7)
              {
                v12 = 6;
              }

              else
              {
                v12 = v9;
              }

              if ((sub_1000189BC(a1, "nandWritesByMode_", a2, 8u, v12) & 1) == 0)
              {
                sub_100020530("ASPFTLParseBufferToCxt: nandWritesByMode(1462): Cannot add 6 elements to context", v14);
                return v5;
              }

              goto LABEL_110;
          }
        }

LABEL_2986:
        if (v7 >> 33)
        {
          snprintf(__str, 0x20uLL, "Stat_%d_");
        }

        else
        {
          snprintf(__str, 0x20uLL, "Stat_%d");
        }

        if ((sub_1000189BC(a1, __str, a2, 8u, v9) & 1) == 0)
        {
          sub_100020530("ASPFTLParseBufferToCxt %d: Cannot add %d elements to context");
          return v5;
        }

        v5 = (v5 + v9);
LABEL_162:
        a2 += v9;
        v6 -= v9;
        goto LABEL_2;
      }

      switch(v7)
      {
        case 1354:
          if ((sub_100020050(a1, "", "numOfThrottlingLevels", *a2) & 1) == 0)
          {
            sub_100020530("ASPFTLParseBufferToCxt: numOfThrottlingLevels(1354) cannot add 1 element to context");
          }

          goto LABEL_161;
        case 1355:
          if ((sub_100020050(a1, "", "crossTempColdEvict", *a2) & 1) == 0)
          {
            sub_100020530("ASPFTLParseBufferToCxt: crossTempColdEvict(1355) cannot add 1 element to context");
          }

          goto LABEL_161;
        case 1356:
          if ((sub_100020050(a1, "", "crossTempHotEvict", *a2) & 1) == 0)
          {
            sub_100020530("ASPFTLParseBufferToCxt: crossTempHotEvict(1356) cannot add 1 element to context");
          }

          goto LABEL_161;
        case 1357:
          if ((sub_100020050(a1, "", "crossTempColdHotEvict", *a2) & 1) == 0)
          {
            sub_100020530("ASPFTLParseBufferToCxt: crossTempColdHotEvict(1357) cannot add 1 element to context");
          }

          goto LABEL_161;
        case 1358:
          if (v9 != 13)
          {
            sub_100020530("ASPFTLParseBufferToCxt: tempChangedHisto(1358): (#13) cfg elements != (%d) buffer elements", v9);
          }

          if (v7 >> 33 >= 7)
          {
            v12 = 13;
          }

          else
          {
            v12 = v9;
          }

          if (sub_1000189BC(a1, "tempChangedHisto_", a2, 8u, v12))
          {
            goto LABEL_110;
          }

          sub_100020530("ASPFTLParseBufferToCxt: tempChangedHisto(1358): Cannot add 13 elements to context", v14);
          break;
        case 1359:
          if (v9 != 13)
          {
            sub_100020530("ASPFTLParseBufferToCxt: tempChangedEnterETHisto(1359): (#13) cfg elements != (%d) buffer elements", v9);
          }

          if (v7 >> 33 >= 7)
          {
            v12 = 13;
          }

          else
          {
            v12 = v9;
          }

          if (sub_1000189BC(a1, "tempChangedEnterETHisto_", a2, 8u, v12))
          {
            goto LABEL_110;
          }

          sub_100020530("ASPFTLParseBufferToCxt: tempChangedEnterETHisto(1359): Cannot add 13 elements to context", v14);
          break;
        case 1362:
          if (v9 != 20)
          {
            sub_100020530("ASPFTLParseBufferToCxt: gcMustReasons(1362): (#20) cfg elements != (%d) buffer elements", v9);
          }

          if (v9 >= 0x15)
          {
            v12 = 20;
          }

          else
          {
            v12 = v9;
          }

          if (sub_1000189BC(a1, "gcMustReasons_", a2, 8u, v12))
          {
            goto LABEL_110;
          }

          sub_100020530("ASPFTLParseBufferToCxt: gcMustReasons(1362): Cannot add 20 elements to context", v14);
          break;
        case 1367:
          if (v9 != 32)
          {
            sub_100020530("ASPFTLParseBufferToCxt: asyncMessageHisto(1367): (#32) cfg elements != (%d) buffer elements", v9);
          }

          if (v9 >= 0x21)
          {
            v12 = 32;
          }

          else
          {
            v12 = v9;
          }

          if (sub_1000189BC(a1, "asyncMessageHisto_", a2, 8u, v12))
          {
            goto LABEL_110;
          }

          sub_100020530("ASPFTLParseBufferToCxt: asyncMessageHisto(1367): Cannot add 32 elements to context", v14);
          break;
        case 1368:
          if ((sub_100020050(a1, "", "massScanIgnoredTooFrequent", *a2) & 1) == 0)
          {
            sub_100020530("ASPFTLParseBufferToCxt: massScanIgnoredTooFrequent(1368) cannot add 1 element to context");
          }

          goto LABEL_161;
        case 1369:
          if (v9 != 8)
          {
            sub_100020530("ASPFTLParseBufferToCxt: realGBBPerDipOfFailingDie(1369): (#8) cfg elements != (%d) buffer elements", v9);
          }

          if (v9 >= 9)
          {
            v12 = 8;
          }

          else
          {
            v12 = v9;
          }

          if (sub_1000189BC(a1, "realGBBPerDipOfFailingDie_", a2, 8u, v12))
          {
            goto LABEL_110;
          }

          sub_100020530("ASPFTLParseBufferToCxt: realGBBPerDipOfFailingDie(1369): Cannot add 8 elements to context", v14);
          break;
        case 1379:
          if ((sub_100020050(a1, "", "boffOrderedReadBlank", *a2) & 1) == 0)
          {
            sub_100020530("ASPFTLParseBufferToCxt: boffOrderedReadBlank(1379) cannot add 1 element to context");
          }

          goto LABEL_161;
        case 1380:
          if ((sub_100020050(a1, "", "boffOrderedRaidSuccessValidLba", *a2) & 1) == 0)
          {
            sub_100020530("ASPFTLParseBufferToCxt: boffOrderedRaidSuccessValidLba(1380) cannot add 1 element to context");
          }

          goto LABEL_161;
        case 1381:
          if ((sub_100020050(a1, "", "unexpectedRaidFailures", *a2) & 1) == 0)
          {
            sub_100020530("ASPFTLParseBufferToCxt: unexpectedRaidFailures(1381) cannot add 1 element to context");
          }

          goto LABEL_161;
        case 1382:
          if ((sub_100020050(a1, "", "boffOrderedUnexpectedBlankValid", *a2) & 1) == 0)
          {
            sub_100020530("ASPFTLParseBufferToCxt: boffOrderedUnexpectedBlankValid(1382) cannot add 1 element to context");
          }

          goto LABEL_161;
        case 1383:
          if ((sub_100020050(a1, "", "raidExpectedFailPMXReconstructionInternal", *a2) & 1) == 0)
          {
            sub_100020530("ASPFTLParseBufferToCxt: raidExpectedFailPMXReconstructionInternal(1383) cannot add 1 element to context");
          }

          goto LABEL_161;
        case 1384:
          if ((sub_100020050(a1, "", "raidExpectedFailPMXReconstructionHost", *a2) & 1) == 0)
          {
            sub_100020530("ASPFTLParseBufferToCxt: raidExpectedFailPMXReconstructionHost(1384) cannot add 1 element to context");
          }

          goto LABEL_161;
        case 1385:
          if ((sub_100020050(a1, "", "raidExpectedFailBMXReconstructionInternal", *a2) & 1) == 0)
          {
            sub_100020530("ASPFTLParseBufferToCxt: raidExpectedFailBMXReconstructionInternal(1385) cannot add 1 element to context");
          }

          goto LABEL_161;
        case 1386:
          if ((sub_100020050(a1, "", "raidExpectedFailBMXReconstructionHost", *a2) & 1) == 0)
          {
            sub_100020530("ASPFTLParseBufferToCxt: raidExpectedFailBMXReconstructionHost(1386) cannot add 1 element to context");
          }

          goto LABEL_161;
        case 1392:
          if ((sub_100020050(a1, "", "cbdrHPScanHP", *a2) & 1) == 0)
          {
            sub_100020530("ASPFTLParseBufferToCxt: cbdrHPScanHP(1392) cannot add 1 element to context");
          }

          goto LABEL_161;
        case 1393:
          if ((sub_100020050(a1, "", "cbdrMPScanMP", *a2) & 1) == 0)
          {
            sub_100020530("ASPFTLParseBufferToCxt: cbdrMPScanMP(1393) cannot add 1 element to context");
          }

          goto LABEL_161;
        case 1394:
          if ((sub_100020050(a1, "", "cbdrMPScanHP", *a2) & 1) == 0)
          {
            sub_100020530("ASPFTLParseBufferToCxt: cbdrMPScanHP(1394) cannot add 1 element to context");
          }

          goto LABEL_161;
        case 1401:
          if ((sub_100020050(a1, "", "ldefragFailedMemBalancer", *a2) & 1) == 0)
          {
            sub_100020530("ASPFTLParseBufferToCxt: ldefragFailedMemBalancer(1401) cannot add 1 element to context");
          }

          goto LABEL_161;
        case 1409:
          if ((sub_100020050(a1, "", "BP_readThrottleEngagedCnt", *a2) & 1) == 0)
          {
            sub_100020530("ASPFTLParseBufferToCxt: BP_readThrottleEngagedCnt(1409) cannot add 1 element to context");
          }

          goto LABEL_161;
        case 1410:
          if ((sub_100020050(a1, "", "BP_readThrottleActualSize", *a2) & 1) == 0)
          {
            sub_100020530("ASPFTLParseBufferToCxt: BP_readThrottleActualSize(1410) cannot add 1 element to context");
          }

          goto LABEL_161;
        default:
          goto LABEL_2986;
      }

      return v5;
    case 1189:
      if ((sub_100020050(a1, "", "lastLbaFormatTime", *a2) & 1) == 0)
      {
        sub_100020530("ASPFTLParseBufferToCxt: lastLbaFormatTime(1189) cannot add 1 element to context");
      }

      goto LABEL_161;
    case 1190:
      if (v9 != 11)
      {
        sub_100020530("ASPFTLParseBufferToCxt: powerDownTime(1190): (#11) cfg elements != (%d) buffer elements", v9);
      }

      if (v7 >> 34 >= 3)
      {
        v12 = 11;
      }

      else
      {
        v12 = v9;
      }

      if (sub_1000189BC(a1, "powerDownTime_", a2, 8u, v12))
      {
        goto LABEL_110;
      }

      sub_100020530("ASPFTLParseBufferToCxt: powerDownTime(1190): Cannot add 11 elements to context", v14);
      return v5;
    case 1196:
      if (v9 != 5)
      {
        sub_100020530("ASPFTLParseBufferToCxt: poDetectGBBedTotalCost(1196): (#5) cfg elements != (%d) buffer elements", v9);
      }

      if (v7 >> 33 >= 3)
      {
        v12 = 5;
      }

      else
      {
        v12 = v9;
      }

      if (sub_1000189BC(a1, "poDetectGBBedTotalCost_", a2, 8u, v12))
      {
        goto LABEL_110;
      }

      sub_100020530("ASPFTLParseBufferToCxt: poDetectGBBedTotalCost(1196): Cannot add 5 elements to context", v14);
      return v5;
    case 1197:
      if (v9 != 10)
      {
        sub_100020530("ASPFTLParseBufferToCxt: poDetectGBBedAge(1197): (#10) cfg elements != (%d) buffer elements", v9);
      }

      if (v9 >= 0xB)
      {
        v12 = 10;
      }

      else
      {
        v12 = v9;
      }

      if (sub_1000189BC(a1, "poDetectGBBedAge_", a2, 8u, v12))
      {
        goto LABEL_110;
      }

      sub_100020530("ASPFTLParseBufferToCxt: poDetectGBBedAge(1197): Cannot add 10 elements to context", v14);
      return v5;
    case 1198:
      if (v9 != 3)
      {
        sub_100020530("ASPFTLParseBufferToCxt: poDetectPERemovalMostSevereCost(1198): (#3) cfg elements != (%d) buffer elements", v9);
      }

      if (v7 >> 34)
      {
        v12 = 3;
      }

      else
      {
        v12 = v9;
      }

      if (sub_1000189BC(a1, "poDetectPERemovalMostSevereCost_", a2, 8u, v12))
      {
        goto LABEL_110;
      }

      sub_100020530("ASPFTLParseBufferToCxt: poDetectPERemovalMostSevereCost(1198): Cannot add 3 elements to context", v14);
      return v5;
    case 1199:
      if ((sub_100020050(a1, "", "poDetectCurrentSize", *a2) & 1) == 0)
      {
        sub_100020530("ASPFTLParseBufferToCxt: poDetectCurrentSize(1199) cannot add 1 element to context");
      }

      goto LABEL_161;
    case 1201:
      if (v9 != 4)
      {
        sub_100020530("ASPFTLParseBufferToCxt: gcVerticalSuccssfulAlignments(1201): (#4) cfg elements != (%d) buffer elements", v9);
      }

      if (v9 >= 5)
      {
        v12 = 4;
      }

      else
      {
        v12 = v9;
      }

      if (sub_1000189BC(a1, "gcVerticalSuccssfulAlignments_", a2, 8u, v12))
      {
        goto LABEL_110;
      }

      sub_100020530("ASPFTLParseBufferToCxt: gcVerticalSuccssfulAlignments(1201): Cannot add 4 elements to context", v14);
      return v5;
    case 1202:
      if (v9 != 4)
      {
        sub_100020530("ASPFTLParseBufferToCxt: gcVerticalNoAlignmentDueToMissingSegs(1202): (#4) cfg elements != (%d) buffer elements", v9);
      }

      if (v9 >= 5)
      {
        v12 = 4;
      }

      else
      {
        v12 = v9;
      }

      if (sub_1000189BC(a1, "gcVerticalNoAlignmentDueToMissingSegs_", a2, 8u, v12))
      {
        goto LABEL_110;
      }

      sub_100020530("ASPFTLParseBufferToCxt: gcVerticalNoAlignmentDueToMissingSegs(1202): Cannot add 4 elements to context", v14);
      return v5;
    case 1211:
      if (v9 != 24)
      {
        sub_100020530("ASPFTLParseBufferToCxt: forcedAllocationSmallEraseQ(1211): (#24) cfg elements != (%d) buffer elements", v9);
      }

      if (v9 >= 0x19)
      {
        v12 = 24;
      }

      else
      {
        v12 = v9;
      }

      if (sub_1000189BC(a1, "forcedAllocationSmallEraseQ_", a2, 8u, v12))
      {
        goto LABEL_110;
      }

      sub_100020530("ASPFTLParseBufferToCxt: forcedAllocationSmallEraseQ(1211): Cannot add 24 elements to context", v14);
      return v5;
    case 1215:
      if (v9 != 5)
      {
        sub_100020530("ASPFTLParseBufferToCxt: hostWritesPerThrottleZone(1215): (#5) cfg elements != (%d) buffer elements", v9);
      }

      if (v7 >> 33 >= 3)
      {
        v12 = 5;
      }

      else
      {
        v12 = v9;
      }

      if (sub_1000189BC(a1, "hostWritesPerThrottleZone_", a2, 8u, v12))
      {
        goto LABEL_110;
      }

      sub_100020530("ASPFTLParseBufferToCxt: hostWritesPerThrottleZone(1215): Cannot add 5 elements to context", v14);
      return v5;
    case 1216:
      if (v9 != 24)
      {
        sub_100020530("ASPFTLParseBufferToCxt: tlcWLPerDipAvgPEC(1216): (#24) cfg elements != (%d) buffer elements", v9);
      }

      if (v9 >= 0x19)
      {
        v12 = 24;
      }

      else
      {
        v12 = v9;
      }

      if (sub_1000189BC(a1, "tlcWLPerDipAvgPEC_", a2, 8u, v12))
      {
        goto LABEL_110;
      }

      sub_100020530("ASPFTLParseBufferToCxt: tlcWLPerDipAvgPEC(1216): Cannot add 24 elements to context", v14);
      return v5;
    case 1217:
      if (v9 != 24)
      {
        sub_100020530("ASPFTLParseBufferToCxt: tlcWLPerDipMaxPEC(1217): (#24) cfg elements != (%d) buffer elements", v9);
      }

      if (v9 >= 0x19)
      {
        v12 = 24;
      }

      else
      {
        v12 = v9;
      }

      if (sub_1000189BC(a1, "tlcWLPerDipMaxPEC_", a2, 8u, v12))
      {
        goto LABEL_110;
      }

      sub_100020530("ASPFTLParseBufferToCxt: tlcWLPerDipMaxPEC(1217): Cannot add 24 elements to context", v14);
      return v5;
    case 1218:
      if (v9 != 24)
      {
        sub_100020530("ASPFTLParseBufferToCxt: tlcWLPerDipMinPEC(1218): (#24) cfg elements != (%d) buffer elements", v9);
      }

      if (v9 >= 0x19)
      {
        v12 = 24;
      }

      else
      {
        v12 = v9;
      }

      if (sub_1000189BC(a1, "tlcWLPerDipMinPEC_", a2, 8u, v12))
      {
        goto LABEL_110;
      }

      sub_100020530("ASPFTLParseBufferToCxt: tlcWLPerDipMinPEC(1218): Cannot add 24 elements to context", v14);
      return v5;
    case 1221:
      if ((sub_100020050(a1, "", "RD_openBandEvictBlocks", *a2) & 1) == 0)
      {
        sub_100020530("ASPFTLParseBufferToCxt: RD_openBandEvictBlocks(1221) cannot add 1 element to context");
      }

      goto LABEL_161;
    case 1222:
      if ((sub_100020050(a1, "", "RD_closedBandEvictBlocks", *a2) & 1) == 0)
      {
        sub_100020530("ASPFTLParseBufferToCxt: RD_closedBandEvictBlocks(1222) cannot add 1 element to context");
      }

      goto LABEL_161;
    case 1223:
      if (v9 != 10)
      {
        sub_100020530("ASPFTLParseBufferToCxt: RD_closedBlocksTHHist(1223): (#10) cfg elements != (%d) buffer elements", v9);
      }

      if (v9 >= 0xB)
      {
        v12 = 10;
      }

      else
      {
        v12 = v9;
      }

      if (sub_1000189BC(a1, "RD_closedBlocksTHHist_", a2, 8u, v12))
      {
        goto LABEL_110;
      }

      sub_100020530("ASPFTLParseBufferToCxt: RD_closedBlocksTHHist(1223): Cannot add 10 elements to context", v14);
      return v5;
    case 1224:
      if (v9 != 20)
      {
        sub_100020530("ASPFTLParseBufferToCxt: apfsValidLbaOvershoot(1224): (#20) cfg elements != (%d) buffer elements", v9);
      }

      if (v9 >= 0x15)
      {
        v12 = 20;
      }

      else
      {
        v12 = v9;
      }

      if (sub_1000189BC(a1, "apfsValidLbaOvershoot_", a2, 8u, v12))
      {
        goto LABEL_110;
      }

      sub_100020530("ASPFTLParseBufferToCxt: apfsValidLbaOvershoot(1224): Cannot add 20 elements to context", v14);
      return v5;
    case 1225:
      if ((sub_100020050(a1, "", "HUPolicySwitchPeMinSlc", *a2) & 1) == 0)
      {
        sub_100020530("ASPFTLParseBufferToCxt: HUPolicySwitchPeMinSlc(1225) cannot add 1 element to context");
      }

      goto LABEL_161;
    case 1226:
      if ((sub_100020050(a1, "", "HUPolicySwitchPeInt", *a2) & 1) == 0)
      {
        sub_100020530("ASPFTLParseBufferToCxt: HUPolicySwitchPeInt(1226) cannot add 1 element to context");
      }

      goto LABEL_161;
    case 1227:
      if ((sub_100020050(a1, "", "HUPolicySwitchPeGap", *a2) & 1) == 0)
      {
        sub_100020530("ASPFTLParseBufferToCxt: HUPolicySwitchPeGap(1227) cannot add 1 element to context");
      }

      goto LABEL_161;
    case 1228:
      if (v9 != 6)
      {
        sub_100020530("ASPFTLParseBufferToCxt: HUPolicyWidthDown(1228): (#6) cfg elements != (%d) buffer elements", v9);
      }

      if (v9 >= 7)
      {
        v12 = 6;
      }

      else
      {
        v12 = v9;
      }

      if (sub_1000189BC(a1, "HUPolicyWidthDown_", a2, 8u, v12))
      {
        goto LABEL_110;
      }

      sub_100020530("ASPFTLParseBufferToCxt: HUPolicyWidthDown(1228): Cannot add 6 elements to context", v14);
      return v5;
    case 1229:
      if (v9 != 6)
      {
        sub_100020530("ASPFTLParseBufferToCxt: HUPolicyWidthUp(1229): (#6) cfg elements != (%d) buffer elements", v9);
      }

      if (v9 >= 7)
      {
        v12 = 6;
      }

      else
      {
        v12 = v9;
      }

      if (sub_1000189BC(a1, "HUPolicyWidthUp_", a2, 8u, v12))
      {
        goto LABEL_110;
      }

      sub_100020530("ASPFTLParseBufferToCxt: HUPolicyWidthUp(1229): Cannot add 6 elements to context", v14);
      return v5;
    case 1230:
      if ((sub_100020050(a1, "", "HUPolicyPrevPeSlc", *a2) & 1) == 0)
      {
        sub_100020530("ASPFTLParseBufferToCxt: HUPolicyPrevPeSlc(1230) cannot add 1 element to context");
      }

      goto LABEL_161;
    case 1231:
      if ((sub_100020050(a1, "", "HUPolicyPrevPeTlc", *a2) & 1) == 0)
      {
        sub_100020530("ASPFTLParseBufferToCxt: HUPolicyPrevPeTlc(1231) cannot add 1 element to context");
      }

      goto LABEL_161;
    case 1232:
      if ((sub_100020050(a1, "", "eanFastSize", *a2) & 1) == 0)
      {
        sub_100020530("ASPFTLParseBufferToCxt: eanFastSize(1232) cannot add 1 element to context");
      }

      goto LABEL_161;
    case 1233:
      if ((sub_100020050(a1, "", "eanNumSlcEvictions", *a2) & 1) == 0)
      {
        sub_100020530("ASPFTLParseBufferToCxt: eanNumSlcEvictions(1233) cannot add 1 element to context");
      }

      goto LABEL_161;
    case 1234:
      if ((sub_100020050(a1, "", "eanNumForcedCompress", *a2) & 1) == 0)
      {
        sub_100020530("ASPFTLParseBufferToCxt: eanNumForcedCompress(1234) cannot add 1 element to context");
      }

      goto LABEL_161;
    case 1241:
      if (v9 != 10)
      {
        sub_100020530("ASPFTLParseBufferToCxt: s2rTimeHisto(1241): (#10) cfg elements != (%d) buffer elements", v9);
      }

      if (v9 >= 0xB)
      {
        v12 = 10;
      }

      else
      {
        v12 = v9;
      }

      if (sub_1000189BC(a1, "s2rTimeHisto_", a2, 8u, v12))
      {
        goto LABEL_110;
      }

      sub_100020530("ASPFTLParseBufferToCxt: s2rTimeHisto(1241): Cannot add 10 elements to context", v14);
      return v5;
    case 1244:
      if ((sub_100020050(a1, "", "calendarTimeWentBackward", *a2) & 1) == 0)
      {
        sub_100020530("ASPFTLParseBufferToCxt: calendarTimeWentBackward(1244) cannot add 1 element to context");
      }

      goto LABEL_161;
    case 1246:
      if (v9 != 8)
      {
        sub_100020530("ASPFTLParseBufferToCxt: bandsUeccCrossTempHisto(1246): (#8) cfg elements != (%d) buffer elements", v9);
      }

      if (v9 >= 9)
      {
        v12 = 8;
      }

      else
      {
        v12 = v9;
      }

      if (sub_1000189BC(a1, "bandsUeccCrossTempHisto_", a2, 8u, v12))
      {
        goto LABEL_110;
      }

      sub_100020530("ASPFTLParseBufferToCxt: bandsUeccCrossTempHisto(1246): Cannot add 8 elements to context", v14);
      return v5;
    case 1264:
      if ((sub_100020050(a1, "", "numRefreshOnErrNandRefreshPerfOpt", *a2) & 1) == 0)
      {
        sub_100020530("ASPFTLParseBufferToCxt: numRefreshOnErrNandRefreshPerfOpt(1264) cannot add 1 element to context");
      }

      goto LABEL_161;
    default:
      switch(v7)
      {
        case 1271:
          if ((sub_100020050(a1, "", "deviceTempMax", *a2) & 1) == 0)
          {
            sub_100020530("ASPFTLParseBufferToCxt: deviceTempMax(1271) cannot add 1 element to context");
          }

          goto LABEL_161;
        case 1272:
          if ((sub_100020050(a1, "", "deviceTempHigh", *a2) & 1) == 0)
          {
            sub_100020530("ASPFTLParseBufferToCxt: deviceTempHigh(1272) cannot add 1 element to context");
          }

          goto LABEL_161;
        case 1273:
          if ((sub_100020050(a1, "", "deviceTempLow", *a2) & 1) == 0)
          {
            sub_100020530("ASPFTLParseBufferToCxt: deviceTempLow(1273) cannot add 1 element to context");
          }

          goto LABEL_161;
        case 1282:
          if ((sub_100020050(a1, "", "cbdrScanHP", *a2) & 1) == 0)
          {
            sub_100020530("ASPFTLParseBufferToCxt: cbdrScanHP(1282) cannot add 1 element to context");
          }

          goto LABEL_161;
        case 1283:
          if ((sub_100020050(a1, "", "cbdrScanMP", *a2) & 1) == 0)
          {
            sub_100020530("ASPFTLParseBufferToCxt: cbdrScanMP(1283) cannot add 1 element to context");
          }

          goto LABEL_161;
        case 1285:
          if ((sub_100020050(a1, "", "bitsPerCell", *a2) & 1) == 0)
          {
            sub_100020530("ASPFTLParseBufferToCxt: bitsPerCell(1285) cannot add 1 element to context");
          }

          goto LABEL_161;
        case 1289:
          if ((sub_100020050(a1, "", "numRefreshOnErrNandRefreshPerfOptOpen", *a2) & 1) == 0)
          {
            sub_100020530("ASPFTLParseBufferToCxt: numRefreshOnErrNandRefreshPerfOptOpen(1289) cannot add 1 element to context");
          }

          goto LABEL_161;
        case 1293:
          if (v9 != 16)
          {
            sub_100020530("ASPFTLParseBufferToCxt: bpZone2EntryTime(1293): (#16) cfg elements != (%d) buffer elements", v9);
          }

          if (v9 >= 0x11)
          {
            v12 = 16;
          }

          else
          {
            v12 = v9;
          }

          if (sub_1000189BC(a1, "bpZone2EntryTime_", a2, 8u, v12))
          {
            goto LABEL_110;
          }

          sub_100020530("ASPFTLParseBufferToCxt: bpZone2EntryTime(1293): Cannot add 16 elements to context", v14);
          break;
        case 1294:
          if (v9 != 16)
          {
            sub_100020530("ASPFTLParseBufferToCxt: bpZone2ExitTime(1294): (#16) cfg elements != (%d) buffer elements", v9);
          }

          if (v9 >= 0x11)
          {
            v12 = 16;
          }

          else
          {
            v12 = v9;
          }

          if (sub_1000189BC(a1, "bpZone2ExitTime_", a2, 8u, v12))
          {
            goto LABEL_110;
          }

          sub_100020530("ASPFTLParseBufferToCxt: bpZone2ExitTime(1294): Cannot add 16 elements to context", v14);
          break;
        case 1295:
          if (v9 != 8)
          {
            sub_100020530("ASPFTLParseBufferToCxt: bpHostChokeTime(1295): (#8) cfg elements != (%d) buffer elements", v9);
          }

          if (v9 >= 9)
          {
            v12 = 8;
          }

          else
          {
            v12 = v9;
          }

          if (sub_1000189BC(a1, "bpHostChokeTime_", a2, 8u, v12))
          {
            goto LABEL_110;
          }

          sub_100020530("ASPFTLParseBufferToCxt: bpHostChokeTime(1295): Cannot add 8 elements to context", v14);
          break;
        case 1296:
          if (v9 != 16)
          {
            sub_100020530("ASPFTLParseBufferToCxt: bpZone2EntryHW(1296): (#16) cfg elements != (%d) buffer elements", v9);
          }

          if (v9 >= 0x11)
          {
            v12 = 16;
          }

          else
          {
            v12 = v9;
          }

          if (sub_1000189BC(a1, "bpZone2EntryHW_", a2, 8u, v12))
          {
            goto LABEL_110;
          }

          sub_100020530("ASPFTLParseBufferToCxt: bpZone2EntryHW(1296): Cannot add 16 elements to context", v14);
          break;
        case 1298:
          if (v9 != 16)
          {
            sub_100020530("ASPFTLParseBufferToCxt: bpZone2ExitHW(1298): (#16) cfg elements != (%d) buffer elements", v9);
          }

          if (v9 >= 0x11)
          {
            v12 = 16;
          }

          else
          {
            v12 = v9;
          }

          if (sub_1000189BC(a1, "bpZone2ExitHW_", a2, 8u, v12))
          {
            goto LABEL_110;
          }

          sub_100020530("ASPFTLParseBufferToCxt: bpZone2ExitHW(1298): Cannot add 16 elements to context", v14);
          break;
        case 1302:
          if (v9 != 16)
          {
            sub_100020530("ASPFTLParseBufferToCxt: bpZone2EntryHostTP(1302): (#16) cfg elements != (%d) buffer elements", v9);
          }

          if (v9 >= 0x11)
          {
            v12 = 16;
          }

          else
          {
            v12 = v9;
          }

          if (sub_1000189BC(a1, "bpZone2EntryHostTP_", a2, 8u, v12))
          {
            goto LABEL_110;
          }

          sub_100020530("ASPFTLParseBufferToCxt: bpZone2EntryHostTP(1302): Cannot add 16 elements to context", v14);
          break;
        case 1303:
          if (v9 != 16)
          {
            sub_100020530("ASPFTLParseBufferToCxt: bpZone2EntryGCTP(1303): (#16) cfg elements != (%d) buffer elements", v9);
          }

          if (v9 >= 0x11)
          {
            v12 = 16;
          }

          else
          {
            v12 = v9;
          }

          if (sub_1000189BC(a1, "bpZone2EntryGCTP_", a2, 8u, v12))
          {
            goto LABEL_110;
          }

          sub_100020530("ASPFTLParseBufferToCxt: bpZone2EntryGCTP(1303): Cannot add 16 elements to context", v14);
          break;
        case 1304:
          if (v9 != 16)
          {
            sub_100020530("ASPFTLParseBufferToCxt: bpZone2ExitHostTP(1304): (#16) cfg elements != (%d) buffer elements", v9);
          }

          if (v9 >= 0x11)
          {
            v12 = 16;
          }

          else
          {
            v12 = v9;
          }

          if (sub_1000189BC(a1, "bpZone2ExitHostTP_", a2, 8u, v12))
          {
            goto LABEL_110;
          }

          sub_100020530("ASPFTLParseBufferToCxt: bpZone2ExitHostTP(1304): Cannot add 16 elements to context", v14);
          break;
        case 1305:
          if (v9 != 16)
          {
            sub_100020530("ASPFTLParseBufferToCxt: bpZone2ExitGCTP(1305): (#16) cfg elements != (%d) buffer elements", v9);
          }

          if (v9 >= 0x11)
          {
            v12 = 16;
          }

          else
          {
            v12 = v9;
          }

          if (sub_1000189BC(a1, "bpZone2ExitGCTP_", a2, 8u, v12))
          {
            goto LABEL_110;
          }

          sub_100020530("ASPFTLParseBufferToCxt: bpZone2ExitGCTP(1305): Cannot add 16 elements to context", v14);
          break;
        case 1323:
          if ((sub_100020050(a1, "", "prefetchNofHits", *a2) & 1) == 0)
          {
            sub_100020530("ASPFTLParseBufferToCxt: prefetchNofHits(1323) cannot add 1 element to context");
          }

          goto LABEL_161;
        case 1326:
          if ((sub_100020050(a1, "", "massScanFullRounds", *a2) & 1) == 0)
          {
            sub_100020530("ASPFTLParseBufferToCxt: massScanFullRounds(1326) cannot add 1 element to context");
          }

          goto LABEL_161;
        case 1327:
          if ((sub_100020050(a1, "", "massScanEarlyExits", *a2) & 1) == 0)
          {
            sub_100020530("ASPFTLParseBufferToCxt: massScanEarlyExits(1327) cannot add 1 element to context");
          }

          goto LABEL_161;
        case 1328:
          if ((sub_100020050(a1, "", "massScanMspFullScanRequests", *a2) & 1) == 0)
          {
            sub_100020530("ASPFTLParseBufferToCxt: massScanMspFullScanRequests(1328) cannot add 1 element to context");
          }

          goto LABEL_161;
        case 1329:
          if ((sub_100020050(a1, "", "massScanMspEarlyExitRequests", *a2) & 1) == 0)
          {
            sub_100020530("ASPFTLParseBufferToCxt: massScanMspEarlyExitRequests(1329) cannot add 1 element to context");
          }

          goto LABEL_161;
        case 1333:
          if ((sub_100020050(a1, "", "gcBoffOrderedRecoverableErrorGbbs", *a2) & 1) == 0)
          {
            sub_100020530("ASPFTLParseBufferToCxt: gcBoffOrderedRecoverableErrorGbbs(1333) cannot add 1 element to context");
          }

          goto LABEL_161;
        case 1334:
          if ((sub_100020050(a1, "", "gcBoffOrderedUnrecoverableErrorGbbs", *a2) & 1) == 0)
          {
            sub_100020530("ASPFTLParseBufferToCxt: gcBoffOrderedUnrecoverableErrorGbbs(1334) cannot add 1 element to context");
          }

          goto LABEL_161;
        case 1335:
          if ((sub_100020050(a1, "", "gcBoffOrderedBandOrphansNumBands", *a2) & 1) == 0)
          {
            sub_100020530("ASPFTLParseBufferToCxt: gcBoffOrderedBandOrphansNumBands(1335) cannot add 1 element to context");
          }

          goto LABEL_161;
        case 1336:
          if ((sub_100020050(a1, "", "gcBoffOrderedBandOrphansNumSectors", *a2) & 1) == 0)
          {
            sub_100020530("ASPFTLParseBufferToCxt: gcBoffOrderedBandOrphansNumSectors(1336) cannot add 1 element to context");
          }

          goto LABEL_161;
        case 1337:
          if ((sub_100020050(a1, "", "gcBoffOrderedDefragEvents", *a2) & 1) == 0)
          {
            sub_100020530("ASPFTLParseBufferToCxt: gcBoffOrderedDefragEvents(1337) cannot add 1 element to context");
          }

          goto LABEL_161;
        case 1338:
          if ((sub_100020050(a1, "", "gcBoffOrderedDefragIterations", *a2) & 1) == 0)
          {
            sub_100020530("ASPFTLParseBufferToCxt: gcBoffOrderedDefragIterations(1338) cannot add 1 element to context");
          }

          goto LABEL_161;
        case 1339:
          if ((sub_100020050(a1, "", "gcBoffOrderedDefragSectors", *a2) & 1) == 0)
          {
            sub_100020530("ASPFTLParseBufferToCxt: gcBoffOrderedDefragSectors(1339) cannot add 1 element to context");
          }

          goto LABEL_161;
        case 1344:
          if (v9 != 4)
          {
            sub_100020530("ASPFTLParseBufferToCxt: unhappyWideGC1(1344): (#4) cfg elements != (%d) buffer elements", v9);
          }

          if (v9 >= 5)
          {
            v12 = 4;
          }

          else
          {
            v12 = v9;
          }

          if (sub_1000189BC(a1, "unhappyWideGC1_", a2, 8u, v12))
          {
            goto LABEL_110;
          }

          sub_100020530("ASPFTLParseBufferToCxt: unhappyWideGC1(1344): Cannot add 4 elements to context", v14);
          break;
        case 1345:
          if (v9 != 4)
          {
            sub_100020530("ASPFTLParseBufferToCxt: unhappyVertGC(1345): (#4) cfg elements != (%d) buffer elements", v9);
          }

          if (v9 >= 5)
          {
            v12 = 4;
          }

          else
          {
            v12 = v9;
          }

          if (sub_1000189BC(a1, "unhappyVertGC_", a2, 8u, v12))
          {
            goto LABEL_110;
          }

          sub_100020530("ASPFTLParseBufferToCxt: unhappyVertGC(1345): Cannot add 4 elements to context", v14);
          break;
        case 1348:
          if ((sub_100020050(a1, "", "thermalSelfThrottlingSupported", *a2) & 1) == 0)
          {
            sub_100020530("ASPFTLParseBufferToCxt: thermalSelfThrottlingSupported(1348) cannot add 1 element to context");
          }

          goto LABEL_161;
        case 1349:
          if ((sub_100020050(a1, "", "thermalSelfThrottlingEnabled", *a2) & 1) == 0)
          {
            sub_100020530("ASPFTLParseBufferToCxt: thermalSelfThrottlingEnabled(1349) cannot add 1 element to context");
          }

          goto LABEL_161;
        default:
          goto LABEL_2685;
      }

      return v5;
  }
}