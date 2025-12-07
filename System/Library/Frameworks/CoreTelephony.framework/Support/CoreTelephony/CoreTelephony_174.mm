void sub_1014C12D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, char a24, int a25, __int16 a26, char a27, char a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43)
{
  __cxa_guard_abort(&qword_101FCAC38);
  if (v43)
  {
    sub_100004A34(v43);
  }

  _Unwind_Resume(a1);
}

void sub_1014C139C(uint64_t a1)
{
  v1 = *(a1 + 160);
  if (v1)
  {
    v4 = *v1;
    v3 = v1 + 1;
    v2 = v4;
    if (v4 != v3)
    {
      v6 = (a1 + 136);
      while (1)
      {
        v7 = *(*(a1 + 88) + 152);
        v9 = *v7;
        v8 = *(v7 + 8);
        if (*v7 != v8)
        {
          while (!sub_100071DF8((*v9 + 24), v2 + 4))
          {
            v9 += 2;
            if (v9 == v8)
            {
              v9 = v8;
              break;
            }
          }

          v8 = *(v7 + 8);
        }

        if (v9 == v8)
        {
          goto LABEL_27;
        }

        v10 = *v9;
        v11 = v9[1];
        if (v11)
        {
          atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v10)
        {
          if (!*(v10 + 49))
          {
            if (isReal())
            {
              if ((*(v10 + 62) & 1) == 0 && (*(v10 + 63) & 1) == 0 && (*(v10 + 96) & 1) == 0)
              {
                v12 = *v6;
                if (*v6)
                {
                  v13 = *(v10 + 52);
                  v14 = v6;
                  do
                  {
                    if (*(v12 + 28) >= v13)
                    {
                      v14 = v12;
                    }

                    v12 = *(v12 + 8 * (*(v12 + 28) < v13));
                  }

                  while (v12);
                  if (v14 != v6 && v13 >= *(v14 + 7))
                  {
                    break;
                  }
                }
              }
            }
          }
        }

LABEL_25:
        if (v11)
        {
          sub_100004A34(v11);
        }

LABEL_27:
        v15 = v2[1];
        if (v15)
        {
          do
          {
            v16 = v15;
            v15 = *v15;
          }

          while (v15);
        }

        else
        {
          do
          {
            v16 = v2[2];
            v17 = *v16 == v2;
            v2 = v16;
          }

          while (!v17);
        }

        v2 = v16;
        if (v16 == v3)
        {
          return;
        }
      }

      if (*(v14 + 32) != 1)
      {
        v29 = *(a1 + 40);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          v30 = *(v10 + 47);
          v31 = (v30 & 0x80u) != 0;
          if ((v30 & 0x80u) != 0)
          {
            v30 = *(v10 + 32);
          }

          if (v31)
          {
            v32 = *(v10 + 24);
          }

          else
          {
            v32 = (v10 + 24);
          }

          v17 = v30 == 0;
          v33 = "<invalid>";
          if (!v17)
          {
            v33 = v32;
          }

          *buf = 136315138;
          *&buf[4] = v33;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#I SMSC is not available for %s yet", buf, 0xCu);
        }

        goto LABEL_25;
      }

      ServiceMap = Registry::getServiceMap(*(a1 + 48));
      v19 = ServiceMap;
      if (v20 < 0)
      {
        v21 = (v20 & 0x7FFFFFFFFFFFFFFFLL);
        v22 = 5381;
        do
        {
          v20 = v22;
          v23 = *v21++;
          v22 = (33 * v22) ^ v23;
        }

        while (v23);
      }

      std::mutex::lock(ServiceMap);
      *buf = v20;
      v24 = sub_100009510(&v19[1].__m_.__sig, buf);
      if (v24)
      {
        v25 = v24[4];
        v35 = v24[3];
        if (v25)
        {
          v34 = v24[4];
          v26 = (v25 + 8);
          atomic_fetch_add_explicit((v25 + 8), 1uLL, memory_order_relaxed);
          std::mutex::unlock(v19);
          atomic_fetch_add_explicit(v26, 1uLL, memory_order_relaxed);
          v27 = v34;
          sub_100004A34(v34);
          v28 = 0;
LABEL_52:
          if (v35)
          {
            if (v11)
            {
              atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v37 = 0;
            operator new();
          }

          if ((v28 & 1) == 0)
          {
            sub_100004A34(v27);
          }

          goto LABEL_25;
        }
      }

      else
      {
        v35 = 0;
      }

      std::mutex::unlock(v19);
      v27 = 0;
      v28 = 1;
      goto LABEL_52;
    }
  }
}

void sub_1014C172C(_Unwind_Exception *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_100DEC0BC(va);
  if (v15)
  {
    sub_100004A34(v15);
  }

  if ((a9 & 1) == 0)
  {
    sub_100004A34(v16);
  }

  if (v15)
  {
    sub_100004A34(v15);
  }

  _Unwind_Resume(a1);
}

BOOL sub_1014C178C(char *a1, void *a2)
{
  if (a1[24] != 1)
  {
    return 1;
  }

  v2 = a1[23];
  if (v2 >= 0)
  {
    v3 = a1[23];
  }

  else
  {
    v3 = *(a1 + 1);
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  if (v3 != v4)
  {
    return 1;
  }

  if (v2 < 0)
  {
    a1 = *a1;
  }

  if (v5 < 0)
  {
    a2 = *a2;
  }

  return memcmp(a1, a2, v3) != 0;
}

void sub_1014C180C(uint64_t a1, uint64_t a2, NSObject **a3, uint64_t *a4)
{
  if (a2)
  {
    atomic_fetch_add_explicit((a2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = a4[1];
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  operator new();
}

uint64_t sub_1014C18C4(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 97) != 1 || (*(a1 + 96) & 1) != 0)
  {
    return 0;
  }

  v6 = *(a1 + 216);
  if (v6)
  {
    v7 = sub_1014C1C30(a1, v6, "<settled>");
    v8 = v7 ^ 1;
    if (*(a1 + 216) && v7 && (*(a1 + 272) & 1) == 0)
    {
      if (*(a1 + 232))
      {
        v9 = *(a1 + 40);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v22 = 136315394;
          v23 = "<settled>";
          v24 = 2080;
          v25 = "<proposed>";
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I current config match %s - dropping %s", &v22, 0x16u);
        }

        sub_1014BB7B8(a1);
        if (!*(a1 + 248))
        {
          goto LABEL_29;
        }

LABEL_25:
        v16 = *(a1 + 40);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v22 = 136315394;
          v23 = "<settled>";
          v24 = 2080;
          v25 = "<upcoming>";
          v14 = v16;
          goto LABEL_27;
        }

        goto LABEL_28;
      }

      if (*(a1 + 248))
      {
        goto LABEL_25;
      }

      v21 = *(a1 + 40);
      if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_29;
      }

      v22 = 136315138;
      v23 = "<settled>";
      v15 = v21;
      goto LABEL_23;
    }
  }

  else
  {
    v8 = 0;
  }

  v10 = *(a1 + 232);
  if (!v10 || !sub_1014C1C30(a1, v10, "<proposed>"))
  {
    v3 = v8 | a2;
    goto LABEL_30;
  }

  v11 = *(a1 + 248);
  v12 = *(a1 + 40);
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (v11)
  {
    if (v13)
    {
      v22 = 136315394;
      v23 = "<proposed>";
      v24 = 2080;
      v25 = "<upcoming>";
      v14 = v12;
LABEL_27:
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I current config match %s - dropping %s", &v22, 0x16u);
    }

LABEL_28:
    sub_1014BB8FC(a1);
    goto LABEL_29;
  }

  if (v13)
  {
    v22 = 136315138;
    v23 = "<proposed>";
    v15 = v12;
LABEL_23:
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I current config match %s - nothing to do", &v22, 0xCu);
  }

LABEL_29:
  v3 = 0;
LABEL_30:
  v17 = *(a1 + 40);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = asStringBool(v3);
    v19 = "";
    v20 = "";
    if (v3)
    {
      v20 = "(<settled> is outdated)";
      if (!*(a1 + 216))
      {
        v20 = "(initial)";
      }

      if (!((*(a1 + 216) == 0) | v8 & 1))
      {
        if (*(a1 + 272))
        {
          v20 = "(reprovisioning requested)";
        }

        else
        {
          v20 = "";
        }
      }
    }

    v22 = 136315650;
    v23 = v18;
    if ((v3 & (a2 ^ 1)) != 0)
    {
      v19 = "(without SIMs)";
    }

    v24 = 2080;
    v25 = v20;
    v26 = 2080;
    v27 = v19;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I need to propose new config -> %s %s%s", &v22, 0x20u);
  }

  return v3;
}

uint64_t sub_1014C1C30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 160);
  if (!v3)
  {
    __assert_rtn("stillGood", "SatMsg_ProvisioningImpl_watch_ios.mm", 1789, "isBootstrapped()");
  }

  v4 = a3;
  v6 = *(a2 + 16) ^ 1;
  v9 = *v3;
  v7 = v3 + 1;
  v8 = v9;
  if (v9 == v7)
  {
    goto LABEL_48;
  }

  v46 = *(a2 + 16) ^ 1;
  v48 = a2 + 56;
  while (1)
  {
    v10 = *(a1 + 160);
    if (v10 + 32 != sub_100007A6C(v10 + 24, v8 + 32))
    {
      v11 = *(a1 + 40);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(v8 + 55);
        v13 = (v12 & 0x80u) != 0;
        if ((v12 & 0x80u) != 0)
        {
          v12 = v8[5];
        }

        if (v13)
        {
          v14 = v8[4];
        }

        else
        {
          v14 = (v8 + 4);
        }

        v15 = v12 == 0;
        v16 = "<invalid>";
        if (!v15)
        {
          v16 = v14;
        }

        *buf = 136315138;
        *&buf[4] = v16;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I persona %s is unsupported - ignoring", buf, 0xCu);
      }

      goto LABEL_14;
    }

    v19 = sub_100007A6C(a2 + 48, v8 + 32);
    if (v48 == v19)
    {
      break;
    }

    v20 = v19;
    v21 = *(v19 + 56);
    v22 = v8[7];
    if (!sub_100649B24(v21, v22))
    {
      goto LABEL_32;
    }

    if (!sub_100649B24(v21 + 4, (v22 + 32)))
    {
      goto LABEL_32;
    }

    v23 = v21[8];
    v24 = *(v22 + 64);
    if ((v23 != 0) != (v24 != 0))
    {
      goto LABEL_32;
    }

    v26 = *v23;
    v25 = v23[1];
    if (v25 - *v23 != v24[1] - *v24)
    {
      goto LABEL_32;
    }

LABEL_26:
    if (v26 != v25)
    {
      v27 = *(v22 + 64);
      v29 = *v27;
      v28 = v27[1];
      while (v29 != v28)
      {
        if (CFStringCompare(*v26, *v29, 0) == kCFCompareEqualTo)
        {
          ++v26;
          goto LABEL_26;
        }

        ++v29;
      }

LABEL_32:
      v30 = *(a1 + 40);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v31 = *(v8 + 55);
        v32 = (v31 & 0x80u) != 0;
        if ((v31 & 0x80u) != 0)
        {
          v31 = v8[5];
        }

        if (v32)
        {
          v33 = v8[4];
        }

        else
        {
          v33 = (v8 + 4);
        }

        v15 = v31 == 0;
        v34 = "<invalid>";
        if (!v15)
        {
          v34 = v33;
        }

        *buf = 136315394;
        v4 = a3;
        *&buf[4] = a3;
        *&buf[12] = 2080;
        *&buf[14] = v34;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "#I %s simConfig for persona %s differs", buf, 0x16u);
        v30 = *(a1 + 40);
      }

      else
      {
        v4 = a3;
      }

      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "#I old one", buf, 2u);
      }

      v35 = *(v20 + 56);
      v51 = 0;
      sub_1014B9158(&v52, v35, &v51);
      *buf = off_101F43090;
      *&buf[8] = a1;
      v54 = buf;
      logger::CFTypeRefLogger();
      sub_100007E44(buf);
      sub_1000296E0(&v52);
      sub_1000296E0(&v51);
      v36 = *(a1 + 40);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "#I new one", buf, 2u);
      }

      v37 = v8[7];
      v50 = 0;
      sub_1014B9158(&v52, v37, &v50);
      *buf = off_101F43110;
      *&buf[8] = a1;
      v54 = buf;
      logger::CFTypeRefLogger();
      sub_100007E44(buf);
      sub_1000296E0(&v52);
      sub_1000296E0(&v50);
LABEL_47:
      v6 = 0;
      goto LABEL_48;
    }

LABEL_14:
    v17 = v8[1];
    if (v17)
    {
      do
      {
        v18 = v17;
        v17 = *v17;
      }

      while (v17);
    }

    else
    {
      do
      {
        v18 = v8[2];
        v15 = *v18 == v8;
        v8 = v18;
      }

      while (!v15);
    }

    v8 = v18;
    if (v18 == v7)
    {
      v4 = a3;
      v6 = v46;
      goto LABEL_48;
    }
  }

  v41 = *(a1 + 40);
  v6 = 0;
  v4 = a3;
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
  {
    v42 = *(v8 + 55);
    v43 = (v42 & 0x80u) != 0;
    if ((v42 & 0x80u) != 0)
    {
      v42 = v8[5];
    }

    if (v43)
    {
      v44 = v8[4];
    }

    else
    {
      v44 = (v8 + 4);
    }

    v15 = v42 == 0;
    v45 = "<invalid>";
    if (!v15)
    {
      v45 = v44;
    }

    *buf = 136315394;
    *&buf[4] = v45;
    *&buf[12] = 2080;
    *&buf[14] = a3;
    _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "#I persona %s is missing in %s", buf, 0x16u);
    goto LABEL_47;
  }

LABEL_48:
  v38 = *(a1 + 40);
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
  {
    v39 = "";
    if (v6)
    {
      v39 = "no ";
    }

    *buf = 136315394;
    *&buf[4] = v4;
    *&buf[12] = 2080;
    *&buf[14] = v39;
    _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "#I checked %s, %sreprovisioning needed", buf, 0x16u);
  }

  return v6 & 1;
}

void sub_1014C2144(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va2, a15);
  va_start(va1, a15);
  va_start(va, a15);
  v16 = va_arg(va1, const void *);
  v18 = va_arg(va1, void);
  va_copy(va2, va1);
  v19 = va_arg(va2, const void *);
  sub_100007E44(va2);
  sub_1000296E0(va1);
  sub_1000296E0(va);
  _Unwind_Resume(a1);
}

const void **sub_1014C219C(void *a1, uint64_t a2, uint64_t a3)
{
  theDict = 0;
  v5 = kCFAllocatorDefault;
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    v7 = theDict;
    theDict = Mutable;
    *&valuePtr = v7;
    sub_1000296E0(&valuePtr);
  }

  sub_1014C2C20(&valuePtr, *a2);
  CFDictionarySetValue(theDict, @"ver", valuePtr);
  sub_100005978(&valuePtr);
  v8 = *(a2 + 8);
  __p[0] = 0;
  *&valuePtr = v8;
  v9 = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongType, &valuePtr);
  if (v9)
  {
    v10 = __p[0];
    __p[0] = v9;
    *&valuePtr = v10;
    sub_100029A48(&valuePtr);
  }

  v63[0] = __p[0];
  __p[0] = 0;
  sub_100029A48(__p);
  CFDictionarySetValue(theDict, @"ts", v63[0]);
  sub_100029A48(v63);
  if (*(a2 + 16) == 1)
  {
    CFDictionarySetValue(theDict, @"dirty", kCFBooleanTrue);
  }

  v55 = 0;
  v11 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  v45 = a1;
  if (v11)
  {
    v12 = v55;
    v55 = v11;
    *&valuePtr = v12;
    sub_1000279DC(&valuePtr);
  }

  v13 = *(a2 + 24);
  v14 = (a2 + 32);
  if (v13 != (a2 + 32))
  {
    v15 = &kCFTypeDictionaryKeyCallBacks;
    v16 = @"iccid";
    v17 = &kCFTypeDictionaryValueCallBacks;
    v18 = @"B";
    v19 = @"A";
    do
    {
      v54 = 0;
      v20 = CFDictionaryCreateMutable(v5, 0, v15, v17);
      if (v20)
      {
        v21 = v54;
        v54 = v20;
        *&valuePtr = v21;
        sub_1000296E0(&valuePtr);
      }

      v22 = v54;
      if (*(v13 + 63) < 0)
      {
        sub_100005F2C(__dst, v13[5], v13[6]);
      }

      else
      {
        *__dst = *(v13 + 5);
        v52 = v13[7];
      }

      if (SHIBYTE(v52) < 0)
      {
        sub_100005F2C(__p, __dst[0], __dst[1]);
      }

      else
      {
        *__p = *__dst;
        v59 = v52;
      }

      v57 = 0;
      if (SHIBYTE(v59) < 0)
      {
        sub_100005F2C(&valuePtr, __p[0], __p[1]);
      }

      else
      {
        valuePtr = *__p;
        v61 = v59;
      }

      v62 = 0;
      if (ctu::cf::convert_copy())
      {
        v23 = v57;
        v57 = v62;
        v63[0] = v23;
        sub_100005978(v63);
      }

      if (SHIBYTE(v61) < 0)
      {
        operator delete(valuePtr);
      }

      value = v57;
      v57 = 0;
      sub_100005978(&v57);
      if (SHIBYTE(v59) < 0)
      {
        operator delete(__p[0]);
      }

      CFDictionarySetValue(v22, v16, value);
      sub_100005978(&value);
      if (SHIBYTE(v52) < 0)
      {
        operator delete(__dst[0]);
      }

      if (*(v13 + 8))
      {
        v24 = v18;
      }

      else
      {
        v24 = v19;
      }

      CFDictionarySetValue(v54, @"name", v24);
      v25 = sub_100007A6C(a2 + 48, v13 + 40);
      if (a2 + 56 != v25)
      {
        *&valuePtr = 0;
        v26 = *(v25 + 56);
        v50 = 0;
        sub_1014B9158(&valuePtr, v26, &v50);
        sub_1000296E0(&v50);
        CFDictionarySetValue(v54, @"sim-cfg", valuePtr);
        sub_1000296E0(&valuePtr);
      }

      if (a3)
      {
        v27 = v19;
        v28 = v14;
        v29 = v18;
        v30 = a3;
        v31 = v17;
        v32 = v16;
        v33 = v15;
        v34 = sub_100007A6C(a2 + 72, v13 + 40);
        v35 = *(v34 + 56);
        v36 = *(v34 + 64);
        if (v36)
        {
          atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v37 = v54;
        sub_1014BB4A4(&valuePtr, v35);
        CFDictionarySetValue(v37, @"keys", valuePtr);
        sub_10001021C(&valuePtr);
        v15 = v33;
        v16 = v32;
        v17 = v31;
        a3 = v30;
        v18 = v29;
        v14 = v28;
        v19 = v27;
        v5 = kCFAllocatorDefault;
        if (v36)
        {
          sub_100004A34(v36);
        }
      }

      CFArrayAppendValue(v55, v54);
      sub_1000296E0(&v54);
      v38 = v13[1];
      if (v38)
      {
        do
        {
          v39 = v38;
          v38 = *v38;
        }

        while (v38);
      }

      else
      {
        do
        {
          v39 = v13[2];
          v40 = *v39 == v13;
          v13 = v39;
        }

        while (!v40);
      }

      v13 = v39;
    }

    while (v39 != v14);
  }

  CFDictionarySetValue(theDict, @"sims", v55);
  if (a3)
  {
    v41 = theDict;
    v48 = 0;
    v49 = 0;
    v47 = 0;
    sub_100034C50(&v47, *(a2 + 96), *(a2 + 104), *(a2 + 104) - *(a2 + 96));
    __p[1] = 0;
    v59 = 0;
    __p[0] = 0;
    sub_100034C50(__p, v47, v48, v48 - v47);
    v57 = 0;
    valuePtr = 0uLL;
    v61 = 0;
    sub_100034C50(&valuePtr, __p[0], __p[1], __p[1] - __p[0]);
    v62 = 0;
    if (ctu::cf::convert_copy())
    {
      v42 = v57;
      v57 = v62;
      v63[0] = v42;
      sub_10002D760(v63);
    }

    if (valuePtr)
    {
      *(&valuePtr + 1) = valuePtr;
      operator delete(valuePtr);
    }

    v43 = v57;
    v54 = v57;
    v57 = 0;
    sub_10002D760(&v57);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    CFDictionarySetValue(v41, @"offgridKey", v43);
    sub_10002D760(&v54);
    if (v47)
    {
      v48 = v47;
      operator delete(v47);
    }
  }

  sub_100010180(v45, &theDict);
  sub_1000279DC(&v55);
  return sub_1000296E0(&theDict);
}

void sub_1014C2720(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23, int a24, const void *a25, const void *a26, const void *a27, __int16 a28, char a29, char a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  sub_10002D760(&a25);
  if (__p)
  {
    operator delete(__p);
  }

  sub_1000279DC(&a26);
  sub_1000296E0(&a27);
  _Unwind_Resume(a1);
}

void sub_1014C288C(uint64_t a1, uint64_t a2)
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

    *buf = 136315138;
    *&buf[4] = v8;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I triggerIWFCertDownloadIfNeeded %s", buf, 0xCu);
  }

  v9 = sub_100007A6C(a1 + 176, a2);
  if (a1 + 184 != v9)
  {
    v11 = *(v9 + 56);
    v10 = *(v9 + 64);
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (!v11)
    {
      goto LABEL_23;
    }

    if (*(v11 + 88))
    {
      v12 = *(a1 + 40);
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_23;
      }

      v13 = PersonalityInfo::logPrefix(*v11);
      *buf = 136315394;
      *&buf[4] = v13;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      v14 = "#I %s%sIWF pub key fetch in progress - bailing out";
      goto LABEL_21;
    }

    if (*(v11 + 112))
    {
      v12 = *(a1 + 40);
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_23;
      }

      v15 = PersonalityInfo::logPrefix(*v11);
      *buf = 136315394;
      *&buf[4] = v15;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      v14 = "#I %s%sIWF pub key fetch is already scheduled - bailing out";
      goto LABEL_21;
    }

    if (*(v11 + 104) < 0xAu)
    {
      if (*(a1 + 152))
      {
        v24[0] = _NSConcreteStackBlock;
        v24[1] = 3221225472;
        v24[2] = sub_1014C4E88;
        v24[3] = &unk_101F428A8;
        v24[4] = a1;
        v20 = _Block_copy(v24);
        v25 = v20;
        sub_1014C3344(buf, a1, v11, &v25);
        v21 = *buf;
        *buf = 0;
        *&buf[8] = 0;
        v22 = *(v11 + 96);
        *(v11 + 88) = v21;
        if (v22)
        {
          sub_100004A34(v22);
        }

        if (v20)
        {
          _Block_release(v20);
        }

        goto LABEL_23;
      }

      v12 = *(a1 + 40);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v23 = PersonalityInfo::logPrefix(*v11);
        *buf = 136315394;
        *&buf[4] = v23;
        *&buf[12] = 2080;
        *&buf[14] = " ";
        v14 = "#W %s%sno connectivity to issue the request - bailing out";
LABEL_21:
        v16 = v12;
        v17 = 22;
LABEL_22:
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, v14, buf, v17);
      }
    }

    else
    {
      v18 = *(a1 + 40);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = PersonalityInfo::logPrefix(*v11);
        *buf = 136315650;
        *&buf[4] = v19;
        *&buf[12] = 2080;
        *&buf[14] = " ";
        v27 = 1024;
        v28 = 10;
        v14 = "#W %s%smax number of failures reached (%u) - bailing out";
        v16 = v18;
        v17 = 28;
        goto LABEL_22;
      }
    }

LABEL_23:
    if (v10)
    {
      sub_100004A34(v10);
    }
  }
}

void sub_1014C2BD0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_1014C2C20(const void **result, const __CFUUID *a2)
{
  *result = 0;
  if (a2)
  {
    *result = CFUUIDCreateString(kCFAllocatorDefault, a2);
    v2 = 0;
    return sub_100005978(&v2);
  }

  return result;
}

void sub_1014C2C84(uint64_t *a1, uint64_t a2)
{
  v2 = a1[1];
  if (v2)
  {
    if (std::__shared_weak_count::lock(v2))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

const void **sub_1014C2D78(void *a1, uint64_t a2, PersonalityInfo **a3, const __CFData *a4)
{
  v45 = 0;
  cf = 0;
  v43 = 0;
  theArray = 0;
  ctu::ns::AutoPool::AutoPool(&v43);
  if (a4)
  {
    Length = CFDataGetLength(a4);
  }

  else
  {
    Length = 0;
  }

  v9 = *(a2 + 40);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = PersonalityInfo::logPrefix(*a3);
    *buf = 136315650;
    *&buf[4] = v10;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    *&buf[22] = 2048;
    v48 = Length;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I %s%sReceived %zu bytes of data", buf, 0x20u);
    v9 = *(a2 + 40);
  }

  v11 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (!Length)
  {
    if (!v11)
    {
      goto LABEL_38;
    }

    v29 = PersonalityInfo::logPrefix(*a3);
    *buf = 136315394;
    *&buf[4] = v29;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v30 = "#W %s%sEmpty JSON!";
    v31 = v9;
LABEL_33:
    v34 = 22;
LABEL_34:
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, v30, buf, v34);
    goto LABEL_38;
  }

  if (v11)
  {
    v12 = PersonalityInfo::logPrefix(*a3);
    *buf = 136315394;
    *&buf[4] = v12;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I %s%sRAW JSON Response:", buf, 0x16u);
  }

  *buf = off_101F43190;
  *&buf[8] = a2;
  *&buf[16] = a3;
  v48 = buf;
  logger::CFTypeRefLogger();
  sub_100007E44(buf);
  v42 = 0;
  v13 = [NSJSONSerialization JSONObjectWithData:a4 options:0 error:&v42];
  if (!v13)
  {
    v32 = *(a2 + 40);
    if (!os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_38;
    }

    v33 = PersonalityInfo::logPrefix(*a3);
    *buf = 136315650;
    *&buf[4] = v33;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    *&buf[22] = 2112;
    v48 = v42;
    v30 = "#W %s%sInvalid JSON response, error: %@";
    v31 = v32;
    v34 = 32;
    goto LABEL_34;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v35 = *(a2 + 40);
    if (!os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_38;
    }

    v36 = PersonalityInfo::logPrefix(*a3);
    *buf = 136315394;
    *&buf[4] = v36;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v30 = "#W %s%sUnexpected JSON format, should be Dictionary";
    v31 = v35;
    goto LABEL_33;
  }

  theDict = v13;
  CFRetain(v13);
  Value = CFDictionaryGetValue(v13, @"key-identifier");
  v15 = Value;
  if (Value)
  {
    v16 = CFGetTypeID(Value);
    if (v16 == CFStringGetTypeID())
    {
      *buf = v15;
      sub_10021D11C(&cf, buf);
    }
  }

  v17 = CFDictionaryGetValue(theDict, @"certificate");
  v18 = v17;
  if (v17)
  {
    v19 = CFGetTypeID(v17);
    if (v19 == CFStringGetTypeID())
    {
      *buf = v18;
      sub_10021D11C(&v45, buf);
    }
  }

  v20 = CFDictionaryGetValue(theDict, @"caChain");
  v21 = v20;
  if (v20)
  {
    v22 = CFGetTypeID(v20);
    if (v22 == CFArrayGetTypeID())
    {
      Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
      if (Mutable)
      {
        v24 = theArray;
        theArray = Mutable;
        *buf = v24;
        sub_1000279DC(buf);
      }

      for (i = 0; i < CFArrayGetCount(v21); ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v21, i);
        v27 = ValueAtIndex;
        if (ValueAtIndex)
        {
          v28 = CFGetTypeID(ValueAtIndex);
          if (v28 == CFStringGetTypeID())
          {
            CFArrayAppendValue(theArray, v27);
          }
        }
      }

      if (!CFArrayGetCount(theArray))
      {
        v37 = theArray;
        theArray = 0;
        *buf = v37;
        sub_1000279DC(buf);
      }
    }
  }

  sub_10001021C(&theDict);
LABEL_38:
  v38 = cf;
  *buf = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  v39 = v45;
  *&buf[8] = v45;
  if (v45)
  {
    CFRetain(v45);
  }

  *&buf[16] = theArray;
  if (theArray)
  {
    CFRetain(theArray);
  }

  *a1 = v38;
  a1[1] = v39;
  *buf = 0;
  *&buf[8] = 0;
  sub_10002A7D8(a1 + 2, &buf[16]);
  sub_1000279DC(&buf[16]);
  sub_100005978(&buf[8]);
  sub_100005978(buf);
  ctu::ns::AutoPool::~AutoPool(&v43);
  sub_1000279DC(&theArray);
  sub_100005978(&v45);
  return sub_100005978(&cf);
}

void sub_1014C3284(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, uint64_t a10, uint64_t a11, const void *a12, const void *a13, const void *a14)
{
  sub_10001021C(&a9);
  ctu::ns::AutoPool::~AutoPool(&a11);
  sub_1000279DC(&a12);
  sub_100005978(&a13);
  sub_100005978(&a14);
  _Unwind_Resume(a1);
}

void sub_1014C3344(void *a1, void *a2, PersonalityInfo **a3, void **a4)
{
  v7 = *(a3 + 63);
  if (v7 < 0)
  {
    v7 = a3[6];
  }

  if (v7)
  {
    v8 = *(a3 + 87);
    if (v8 < 0)
    {
      v8 = a3[9];
    }

    if (v8)
    {
      v10 = a2[6];
      v62 = 0;
      ServiceMap = Registry::getServiceMap(v10);
      v12 = ServiceMap;
      if ((v13 & 0x8000000000000000) != 0)
      {
        v14 = (v13 & 0x7FFFFFFFFFFFFFFFLL);
        v15 = 5381;
        do
        {
          v13 = v15;
          v16 = *v14++;
          v15 = (33 * v15) ^ v16;
        }

        while (v16);
      }

      std::mutex::lock(ServiceMap);
      buf.__r_.__value_.__r.__words[0] = v13;
      v17 = sub_100009510(&v12[1].__m_.__sig, &buf);
      v51 = a4;
      if (v17)
      {
        v19 = v17[3];
        v18 = v17[4];
        if (v18)
        {
          atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v12);
          atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v18);
          v20 = 0;
LABEL_18:
          v23 = *(*a3 + 13);
          __p.__r_.__value_.__r.__words[0] = @"SatMsg";
          __p.__r_.__value_.__l.__size_ = @"IwfCertURL";
          memset(&buf, 0, sizeof(buf));
          sub_10005B328(&buf, &__p, &__p.__r_.__value_.__r.__words[2], 2uLL);
          (*(*v19 + 104))(v76, v19, v23, 4, &buf, @"https://pbs2i.cdn-apple.com/keys/$mcc/$mnc/key", 0);
          sub_100060DE8(v78, v76);
          v60 = 0;
          v62 = v78[0];
          v78[0] = 0;
          sub_100005978(&v60);
          sub_100005978(v78);
          sub_10000A1EC(v76);
          if (buf.__r_.__value_.__r.__words[0])
          {
            buf.__r_.__value_.__l.__size_ = buf.__r_.__value_.__r.__words[0];
            operator delete(buf.__r_.__value_.__l.__data_);
          }

          if ((v20 & 1) == 0)
          {
            sub_100004A34(v18);
          }

          memset(&__p, 0, sizeof(__p));
          memset(&buf, 0, sizeof(buf));
          ctu::cf::assign();
          __p = buf;
          if (*(a3 + 63) >= 0)
          {
            v24 = (a3 + 5);
          }

          else
          {
            v24 = a3[5];
          }

          sub_1014C3E4C(&buf, &__p, "$mcc", v24);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          __p = buf;
          if (*(a3 + 87) >= 0)
          {
            v25 = (a3 + 8);
          }

          else
          {
            v25 = a3[8];
          }

          sub_1014C3E4C(&buf, &__p, "$mnc", v25);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          __p = buf;
          v26 = a2[5];
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            v27 = PersonalityInfo::logPrefix(*a3);
            LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
            *(buf.__r_.__value_.__r.__words + 4) = v27;
            WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
            *(&buf.__r_.__value_.__r.__words[1] + 6) = " ";
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#I %s%s_____________>  Query IWF certificate", &buf, 0x16u);
          }

          *a1 = 0;
          a1[1] = 0;
          strcpy(v64, "Accept");
          strcpy(v80, "Accept-Encoding");
          strcpy(v79, "Content-Type");
          strcpy(v78, "Content-Encoding");
          strcpy(__s, "User-Agent");
          strcpy(v63, "gzip");
          strcpy(v76, "application/json");
          strcpy(v75, "Apple device");
          v60 = 0;
          v61[0] = 0;
          v61[1] = 0;
          sub_1004F0DA4(&buf, v64, v76);
          sub_1004F0DF8(v70, v80, v63);
          sub_1000DCEE0(v71, v79, v76);
          sub_1004F0E4C(v72, v78, v63);
          sub_10000501C(v73, __s);
          sub_10000501C(v74, v75);
          sub_1000DF684(&v60, &buf, 5);
          for (i = 0; i != -30; i -= 6)
          {
            v29 = (&buf.__r_.__value_.__l.__data_ + i * 8);
            if (SHIBYTE(v74[i + 2]) < 0)
            {
              operator delete(v29[27]);
            }

            if (*(v29 + 215) < 0)
            {
              operator delete(v29[24]);
            }
          }

          v30 = a2[5];
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            v31 = PersonalityInfo::logPrefix(*a3);
            p_p = &__p;
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              p_p = __p.__r_.__value_.__r.__words[0];
            }

            LODWORD(buf.__r_.__value_.__l.__data_) = 136315650;
            *(buf.__r_.__value_.__r.__words + 4) = v31;
            WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
            *(&buf.__r_.__value_.__r.__words[1] + 6) = " ";
            HIWORD(buf.__r_.__value_.__r.__words[2]) = 2080;
            v67 = p_p;
            _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "#I %s%sRequesting: %s", &buf, 0x20u);
          }

          v33 = v60;
          if (v60 != v61)
          {
            do
            {
              v34 = a2[5];
              if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
              {
                v35 = PersonalityInfo::logPrefix(*a3);
                v36 = (v33 + 4);
                if (*(v33 + 55) < 0)
                {
                  v36 = v36->__r_.__value_.__r.__words[0];
                }

                v37 = v33 + 7;
                if (*(v33 + 79) < 0)
                {
                  v37 = *v37;
                }

                LODWORD(buf.__r_.__value_.__l.__data_) = 136315906;
                *(buf.__r_.__value_.__r.__words + 4) = v35;
                WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
                *(&buf.__r_.__value_.__r.__words[1] + 6) = " ";
                HIWORD(buf.__r_.__value_.__r.__words[2]) = 2080;
                v67 = v36;
                v68 = 2080;
                v69 = v37;
                _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "#I %s%s  %s: %s", &buf, 0x2Au);
              }

              v38 = v33[1];
              if (v38)
              {
                do
                {
                  v39 = v38;
                  v38 = *v38;
                }

                while (v38);
              }

              else
              {
                do
                {
                  v39 = v33[2];
                  v40 = *v39 == v33;
                  v33 = v39;
                }

                while (!v40);
              }

              v33 = v39;
            }

            while (v39 != v61);
          }

          v58 = 0;
          v59 = 0;
          ctu::Http::HttpRequest::create();
          v41 = *&buf.__r_.__value_.__l.__data_;
          *&buf.__r_.__value_.__l.__data_ = 0uLL;
          *a1 = v41;
          if (v59)
          {
            sub_100004A34(v59);
          }

          if (v41)
          {
            (*(*v41 + 8))(v41, a2[3]);
            memset(&buf, 0, sizeof(buf));
            v42 = *a3;
            if (*(*a3 + 47) < 0)
            {
              sub_100005F2C(&buf, *(v42 + 3), *(v42 + 4));
            }

            else
            {
              buf = *(v42 + 1);
            }

            v45 = a2[2];
            if (!v45 || (v46 = a2[1], (v47 = std::__shared_weak_count::lock(v45)) == 0))
            {
              sub_100013CC4();
            }

            v48 = v47;
            p_shared_weak_owners = &v47->__shared_weak_owners_;
            atomic_fetch_add_explicit(&v47->__shared_weak_owners_, 1uLL, memory_order_relaxed);
            sub_100004A34(v47);
            v54[0] = _NSConcreteStackBlock;
            v54[1] = 3321888768;
            v54[2] = sub_1014C4004;
            v54[3] = &unk_101F42878;
            v54[4] = a2;
            v54[5] = v46;
            v55 = v48;
            atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
            if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
            {
              sub_100005F2C(&v56, buf.__r_.__value_.__l.__data_, buf.__r_.__value_.__l.__size_);
            }

            else
            {
              v56 = buf;
            }

            v50 = *v51;
            if (*v51)
            {
              v50 = _Block_copy(v50);
            }

            aBlock = v50;
            (*(*v41 + 16))(v41, v54);
            v52[0] = 0;
            v52[1] = 0;
            v53 = 0;
            (*(*v41 + 40))(v41, v52);
            if (SHIBYTE(v53) < 0)
            {
              operator delete(v52[0]);
            }

            if (aBlock)
            {
              _Block_release(aBlock);
            }

            if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v56.__r_.__value_.__l.__data_);
            }

            if (v55)
            {
              std::__shared_weak_count::__release_weak(v55);
            }

            std::__shared_weak_count::__release_weak(v48);
            if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(buf.__r_.__value_.__l.__data_);
            }
          }

          else
          {
            v43 = a2[5];
            if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
            {
              v44 = PersonalityInfo::logPrefix(*a3);
              LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
              *(buf.__r_.__value_.__r.__words + 4) = v44;
              WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
              *(&buf.__r_.__value_.__r.__words[1] + 6) = " ";
              _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "#W %s%sUnable to allocate request", &buf, 0x16u);
            }
          }

          sub_1000DD0AC(&v60, v61[0]);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          sub_100005978(&v62);
          return;
        }
      }

      else
      {
        v19 = 0;
      }

      std::mutex::unlock(v12);
      v18 = 0;
      v20 = 1;
      goto LABEL_18;
    }
  }

  v21 = a2[5];
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = PersonalityInfo::logPrefix(*a3);
    LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
    *(buf.__r_.__value_.__r.__words + 4) = v22;
    WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
    *(&buf.__r_.__value_.__r.__words[1] + 6) = " ";
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I %s%sNo MCC/MNC - cannot build URL for queryIWFCertificate yet", &buf, 0x16u);
  }

  *a1 = 0;
  a1[1] = 0;
}

void sub_1014C3C78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, std::__shared_weak_count *a23, void *a24, uint64_t a25, uint64_t a26, void *aBlock, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, const void *a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  sub_1000DD0AC(&a30, a31);
  if (v42)
  {
    sub_100004A34(v42);
  }

  if (a42 < 0)
  {
    operator delete(a37);
  }

  sub_100005978(&a33);
  _Unwind_Resume(a1);
}

uint64_t sub_1014C3E4C(std::string *a1, char *a2, char *__s, const char *a4)
{
  v7 = a2[23];
  v8 = v7;
  v9 = *a2;
  v10 = *(a2 + 1);
  if (v7 >= 0)
  {
    v11 = a2;
  }

  else
  {
    v11 = *a2;
  }

  __sa = v11;
  if (v7 >= 0)
  {
    v12 = a2[23];
  }

  else
  {
    v12 = *(a2 + 1);
  }

  result = strlen(__s);
  v14 = result;
  if (result)
  {
    if (v12 >= result)
    {
      result = __sa;
      v15 = &__sa[v12];
      v16 = *__s;
      do
      {
        if (v12 - v14 == -1)
        {
          break;
        }

        result = memchr(result, v16, v12 - v14 + 1);
        if (!result)
        {
          break;
        }

        v17 = result;
        result = memcmp(result, __s, v14);
        if (!result)
        {
          if (v17 == v15)
          {
            break;
          }

          v14 = v17 - __sa;
          if (v17 - __sa == -1)
          {
            break;
          }

          goto LABEL_22;
        }

        result = v17 + 1;
        v12 = &v15[-v17 - 1];
      }

      while (v12 >= v14);
    }

    if (v8 < 0)
    {

      return sub_100005F2C(a1, v9, v10);
    }

    else
    {
      *&a1->__r_.__value_.__l.__data_ = *a2;
      a1->__r_.__value_.__r.__words[2] = *(a2 + 2);
    }
  }

  else
  {
LABEL_22:
    a1->__r_.__value_.__r.__words[0] = 0;
    a1->__r_.__value_.__l.__size_ = 0;
    a1->__r_.__value_.__r.__words[2] = 0;
    if (v8 < 0)
    {
      sub_100005F2C(a1, v9, v10);
    }

    else
    {
      *&a1->__r_.__value_.__l.__data_ = *a2;
      a1->__r_.__value_.__r.__words[2] = *(a2 + 2);
    }

    v18 = strlen(__s);
    v19 = strlen(a4);
    return std::string::replace(a1, v14, v18, a4, v19);
  }

  return result;
}

void sub_1014C3FE8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1014C4004(uint64_t a1, void *a2)
{
  v3 = *(a1 + 48);
  if (v3)
  {
    v5 = *(a1 + 32);
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      if (!*(a1 + 40))
      {
        goto LABEL_78;
      }

      v8 = sub_100007A6C(v5 + 176, (a1 + 56));
      if (v5 + 184 == v8)
      {
        goto LABEL_78;
      }

      v9 = *(v8 + 56);
      v10 = *(v8 + 64);
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v9)
      {
        v11 = *(v9 + 96);
        *(v9 + 88) = 0;
        *(v9 + 96) = 0;
        if (v11)
        {
          sub_100004A34(v11);
        }

        v12 = *(v5 + 40);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = PersonalityInfo::logPrefix(*v9);
          *buf = 136315394;
          *&buf[4] = v13;
          *&buf[12] = 2080;
          *&buf[14] = " ";
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I %s%s_____________<  Received response, or timed out", buf, 0x16u);
        }

        if (!*a2)
        {
          goto LABEL_43;
        }

        v14 = (*(**a2 + 24))(*a2);
        v15 = *(v5 + 40);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v49 = v10;
          v48 = PersonalityInfo::logPrefix(*v9);
          (*(**a2 + 64))(v67);
          if (SHIBYTE(v68) >= 0)
          {
            v16 = v67;
          }

          else
          {
            v16 = v67[0];
          }

          v47 = v16;
          v46 = (*(**a2 + 16))();
          (*(**a2 + 16))();
          ctu::Http::asString();
          if (v66 >= 0)
          {
            v18 = v65;
          }

          else
          {
            v18 = v65[0];
          }

          v45 = v18;
          ctu::Http::asString(v14, v17);
          v50 = v14;
          if (v64 >= 0)
          {
            v19 = v63;
          }

          else
          {
            v19 = v63[0];
          }

          v44 = v19;
          (*(**a2 + 48))(v61);
          if (v62 >= 0)
          {
            v20 = v61;
          }

          else
          {
            v20 = v61[0];
          }

          v21 = (*(**a2 + 32))();
          (*(**a2 + 16))();
          (*(**a2 + 32))();
          ctu::Http::asString();
          if (v60 >= 0)
          {
            v22 = __p;
          }

          else
          {
            v22 = __p[0];
          }

          *buf = 136317442;
          *&buf[4] = v48;
          *&buf[12] = 2080;
          *&buf[14] = " ";
          v70 = 2080;
          *v71 = v47;
          *&v71[8] = 1024;
          v72 = v46;
          v73 = 2080;
          v74 = v45;
          v75 = 1024;
          v76 = v50;
          v77 = 2080;
          v78 = v44;
          v79 = 2080;
          v80 = v20;
          v81 = 2048;
          v82 = v21;
          v83 = 2080;
          v84 = v22;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I %s%sResponse: '%s', Result: %d (%s), Status: '%d' (%s), Response: '%s' ErrorCode: '%ld' (%s)", buf, 0x5Eu);
          if (v60 < 0)
          {
            operator delete(__p[0]);
          }

          v10 = v49;
          if (v62 < 0)
          {
            operator delete(v61[0]);
          }

          v14 = v50;
          if (v64 < 0)
          {
            operator delete(v63[0]);
          }

          if (v66 < 0)
          {
            operator delete(v65[0]);
          }

          if (SHIBYTE(v68) < 0)
          {
            operator delete(v67[0]);
          }
        }

        if ((*(**a2 + 16))() != 1)
        {
          goto LABEL_43;
        }

        if ((v14 - 500) <= 4 && v14 != 501)
        {
          *(v9 + 108) = 1;
LABEL_43:
          v23 = *(v9 + 104) + 1;
          *(v9 + 104) = v23;
          v24 = *(v5 + 40);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            v25 = PersonalityInfo::logPrefix(*v9);
            v26 = *(v9 + 104);
            *buf = 136315906;
            *&buf[4] = v25;
            *&buf[12] = 2080;
            *&buf[14] = " ";
            v70 = 1024;
            *v71 = v26;
            *&v71[4] = 1024;
            *&v71[6] = 10;
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#I %s%sgot %u failure(s) from %u max allowed", buf, 0x22u);
            v23 = *(v9 + 104);
          }

          if (v23 < 0xA)
          {
            if (*(v9 + 108))
            {
              v29 = 10;
            }

            else
            {
              v29 = 1;
            }

            v30 = 60 * v23 * v29;
            v31 = *(v5 + 40);
            if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
            {
              v32 = PersonalityInfo::logPrefix(*v9);
              *buf = 136315650;
              *&buf[4] = v32;
              *&buf[12] = 2080;
              *&buf[14] = " ";
              v70 = 1024;
              *v71 = v30;
              _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "#I %s%sschedule update in %u seconds", buf, 0x1Cu);
            }

            Registry::getTimerService(buf, *(v5 + 48));
            v33 = *buf;
            sub_10000501C(v57, "SatMsg_ProvisioningImpl::backoff");
            v34 = *(v5 + 24);
            object = v34;
            if (v34)
            {
              dispatch_retain(v34);
            }

            aBlock[0] = _NSConcreteStackBlock;
            aBlock[1] = 3321888768;
            aBlock[2] = sub_1014C4B38;
            aBlock[3] = &unk_101F42848;
            v36 = *(a1 + 40);
            v35 = *(a1 + 48);
            aBlock[4] = v5;
            aBlock[5] = v36;
            v52 = v35;
            if (v35)
            {
              atomic_fetch_add_explicit(&v35->__shared_weak_owners_, 1uLL, memory_order_relaxed);
            }

            if (*(a1 + 79) < 0)
            {
              sub_100005F2C(&v53, *(a1 + 56), *(a1 + 64));
            }

            else
            {
              v53 = *(a1 + 56);
              v54 = *(a1 + 72);
            }

            v55 = _Block_copy(aBlock);
            sub_100D23364(v33, v57, 1, 1000000 * v30, &object, &v55);
            v37 = v67[0];
            v67[0] = 0;
            v38 = *(v9 + 112);
            *(v9 + 112) = v37;
            if (v38)
            {
              (*(*v38 + 8))(v38);
              v39 = v67[0];
              v67[0] = 0;
              if (v39)
              {
                (*(*v39 + 8))(v39);
              }
            }

            if (v55)
            {
              _Block_release(v55);
            }

            if (object)
            {
              dispatch_release(object);
            }

            if (v58 < 0)
            {
              operator delete(v57[0]);
            }

            if (*&buf[8])
            {
              sub_100004A34(*&buf[8]);
            }

            if (SHIBYTE(v54) < 0)
            {
              operator delete(v53);
            }

            if (v52)
            {
              std::__shared_weak_count::__release_weak(v52);
            }

            goto LABEL_76;
          }

          v27 = *(v5 + 40);
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            v28 = PersonalityInfo::logPrefix(*v9);
            *buf = 136315650;
            *&buf[4] = v28;
            *&buf[12] = 2080;
            *&buf[14] = " ";
            v70 = 1024;
            *v71 = 10;
            _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#I %s%smax number of failures reached (%u)", buf, 0x1Cu);
          }

          goto LABEL_48;
        }

        if (v14 != 200)
        {
          v40 = *(v5 + 40);
          if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
          {
            v41 = PersonalityInfo::logPrefix(*v9);
            ctu::Http::asString(v14, v42);
            v43 = SHIBYTE(v68) >= 0 ? v67 : v67[0];
            *buf = 136315650;
            *&buf[4] = v41;
            *&buf[12] = 2080;
            *&buf[14] = " ";
            v70 = 2080;
            *v71 = v43;
            _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "#W %s%sCDN replied with '%s', blocking service for the SIM at this point...", buf, 0x20u);
            if (SHIBYTE(v68) < 0)
            {
              operator delete(v67[0]);
            }
          }

LABEL_48:
          (*(*(a1 + 80) + 16))();
          goto LABEL_76;
        }

        *(v9 + 104) = 0;
        *(v9 + 108) = 0;
        v65[0] = 0;
        v63[0] = 0;
        v61[0] = 0;
        (*(**a2 + 40))(__p);
        sub_1014C2D78(buf, v5, v9, __p[0]);
        v67[0] = v65;
        v67[1] = v63;
        v68 = v61;
        sub_1014CDC04(v67, buf);
        sub_1014CDCBC(buf);
        sub_10002D760(__p);
        (*(*(a1 + 80) + 16))();
        sub_100010250(v61);
        sub_100005978(v63);
        sub_100005978(v65);
      }

LABEL_76:
      if (v10)
      {
        sub_100004A34(v10);
      }

LABEL_78:
      sub_100004A34(v7);
    }
  }
}

void sub_1014C49B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, std::__shared_weak_count *a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *aBlock, dispatch_object_t object, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, char a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46, void *a47, uint64_t a48, int a49, __int16 a50, char a51, char a52, void *a53, uint64_t a54, int a55, __int16 a56, char a57, char a58)
{
  if (v59)
  {
    sub_100004A34(v59);
  }

  sub_100004A34(v58);
  _Unwind_Resume(a1);
}

void sub_1014C4B38(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (*(a1 + 40))
      {
        v6 = sub_100007A6C(v3 + 176, (a1 + 56));
        if (v3 + 184 != v6)
        {
          v8 = *(v6 + 56);
          v7 = *(v6 + 64);
          if (v7)
          {
            atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (v8)
          {
            v9 = *(v3 + 40);
            if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
            {
              v10 = PersonalityInfo::logPrefix(*v8);
              v12 = 136315394;
              v13 = v10;
              v14 = 2080;
              v15 = " ";
              _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I %s%sbackoff timer expired - issuing request if needed", &v12, 0x16u);
            }

            v11 = *(v8 + 112);
            *(v8 + 112) = 0;
            if (v11)
            {
              (*(*v11 + 8))(v11);
            }

            sub_1014C288C(v3, a1 + 56);
          }

          if (v7)
          {
            sub_100004A34(v7);
          }
        }
      }

      sub_100004A34(v5);
    }
  }
}

void sub_1014C4CA0(_Unwind_Exception *a1)
{
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_100004A34(v1);
  _Unwind_Resume(a1);
}

char *sub_1014C4CC4(char *result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 5) = *(a2 + 40);
  *(result + 6) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  if (*(a2 + 79) < 0)
  {
    return sub_100005F2C(result + 56, *(a2 + 56), *(a2 + 64));
  }

  v3 = *(a2 + 56);
  *(result + 9) = *(a2 + 72);
  *(result + 56) = v3;
  return result;
}

void sub_1014C4D28(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 48);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1014C4D40(uint64_t a1)
{
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  v2 = *(a1 + 48);
  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

void *sub_1014C4D94(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  if (*(a2 + 79) < 0)
  {
    sub_100005F2C((a1 + 56), *(a2 + 56), *(a2 + 64));
  }

  else
  {
    v5 = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 56) = v5;
  }

  result = *(a2 + 80);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 80) = result;
  return result;
}

void sub_1014C4E08(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 48);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1014C4E24(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (v2)
  {
    _Block_release(v2);
  }

  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  v3 = *(a1 + 48);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

void sub_1014C4E88(uint64_t a1, PersonalityInfo **a2, void *a3, uint64_t a4, const __CFArray *a5)
{
  v6 = *(a1 + 32);
  if (a3)
  {
    v7 = v6[31];
    if (v7)
    {
      v11 = sub_100007A6C(v7 + 48, *a2 + 24);
      if (v6[31] + 56 != v11)
      {
        v13 = *(v11 + 56);
        v12 = *(v11 + 64);
        if (v12)
        {
          atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (CFEqual(a3, qword_101FCAC28) == 1)
        {
          v14 = v6[5];
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            v15 = PersonalityInfo::logPrefix(*a2);
            *buf = 136315394;
            *&buf[4] = v15;
            *&buf[12] = 2080;
            *&buf[14] = " ";
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I %s%sIWF doesn't support this carrier - exclude SIM from feature", buf, 0x16u);
          }

          sub_1013B731C((v6[20] + 24), *a2 + 3, *a2 + 24);
          goto LABEL_67;
        }

        certificate = 0;
        sub_1014C586C(&certificate, v6, 1, *a2 + 24, a4, a5);
        v28 = certificate;
        if (!certificate)
        {
          v34 = v6[5];
          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            v50 = PersonalityInfo::logPrefix(*a2);
            *buf = 136315650;
            *&buf[4] = v50;
            *&buf[12] = 2080;
            *&buf[14] = " ";
            *&buf[22] = 2112;
            v62 = a3;
            _os_log_error_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "#E %s%sInvalid certificate, VALIDATION failed, key-identifier:%@ - mark as UNSUPPORTED", buf, 0x20u);
          }

          sub_1013B731C((v6[20] + 24), *a2 + 3, *a2 + 24);
          goto LABEL_66;
        }

        v56 = 0;
        *v54 = 0u;
        v55 = 0u;
        memset(v60, 0, 15);
        cf = SecCertificateCopyKey(certificate);
        if (cf)
        {
          sub_1009A80CC(v28, &commonName);
          memset(buf, 0, sizeof(buf));
          ctu::cf::assign();
          v29 = *&buf[8];
          __p = *buf;
          LODWORD(v60[1]) = *&buf[16];
          *(&v60[1] + 3) = *&buf[19];
          v30 = buf[23];
          sub_100005978(&commonName);
          commonName = 0;
          if (SecCertificateCopyCommonName(v28, &commonName))
          {
            v31 = v6[5];
            if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
            {
              v51 = PersonalityInfo::logPrefix(*a2);
              *buf = 136315394;
              *&buf[4] = v51;
              *&buf[12] = 2080;
              *&buf[14] = " ";
              _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "#E %s%scannot extract CN from certificate", buf, 0x16u);
            }

            v32 = cf;
            cf = 0;
            *buf = v32;
            sub_1005A16F4(buf);
            if ((v30 & 0x80000000) == 0)
            {
              v33 = __p & 0xFFFFFFFFFFFFFF00;
LABEL_36:
              __p = v33;
              v54[0] = cf;
              if (cf)
              {
                CFRetain(cf);
              }

              LOBYTE(v30) = 0;
              goto LABEL_39;
            }

            v39 = __p;
            *__p = 0;
            sub_1009F1454(v54, &cf);
            v29 = 0;
          }

          else
          {
            v38 = v60[0];
            v60[0] = commonName;
            *buf = v38;
            sub_100005978(buf);
            sub_1009F1454(v54, &cf);
            if ((v30 & 0x80000000) == 0)
            {
LABEL_39:
              v37 = 0;
              v54[1] = __p;
              *&v55 = v29;
              DWORD2(v55) = v60[1];
              *(&v55 + 11) = *(&v60[1] + 3);
              HIBYTE(v55) = v30;
              goto LABEL_44;
            }

            v39 = __p;
          }

          sub_100005F2C(&v54[1], v39, v29);
          v37 = 1;
LABEL_44:
          v56 = v60[0];
          if (v60[0])
          {
            CFRetain(v60[0]);
          }

          sub_1005A16F4(&cf);
          sub_100005978(v60);
          if (v37)
          {
            operator delete(__p);
          }

          v40 = v6[5];
          if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
          {
            v41 = PersonalityInfo::logPrefix(*a2);
            v42 = &v54[1];
            if (v55 < 0)
            {
              v42 = v54[1];
            }

            *buf = 136316162;
            *&buf[4] = v41;
            *&buf[12] = 2080;
            *&buf[14] = " ";
            *&buf[22] = 2112;
            v62 = a3;
            v63 = 2080;
            v64 = v42;
            v65 = 2112;
            v66 = v56;
            _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "#I %s%sGot certificate key-ident:'%@', subj:'%s', CN:%@", buf, 0x34u);
          }

          if (v54[0])
          {
            *buf = a3;
            sub_10021D11C((v13 + 80), buf);
            sub_100222570((v13 + 96), &v56);
            *buf = a4;
            sub_10021D11C((v13 + 104), buf);
            *buf = a5;
            sub_10044A870((v13 + 112), buf);
            v43 = SecKeyCopySubjectPublicKeyInfo();
            v44 = *(v13 + 88);
            *(v13 + 88) = v43;
            *buf = v44;
            sub_10002D760(buf);
            v45 = v6[5];
            if (*(v13 + 88))
            {
              if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
              {
                v46 = PersonalityInfo::logPrefix(*a2);
                *buf = 136315394;
                *&buf[4] = v46;
                *&buf[12] = 2080;
                *&buf[14] = " ";
                _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "#I %s%sIWF pubkey successfully acquired", buf, 0x16u);
                v45 = v6[5];
              }

              if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
              {
                v47 = PersonalityInfo::logPrefix(*a2);
                *buf = 136315394;
                *&buf[4] = v47;
                *&buf[12] = 2080;
                *&buf[14] = " ";
                _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "#I %s%sIWF pubkey:", buf, 0x16u);
              }

              *buf = off_101F43210;
              *&buf[8] = v6;
              *&buf[16] = a2;
              v62 = buf;
              logger::CFTypeRefLogger();
              sub_100007E44(buf);
              goto LABEL_63;
            }

            if (!os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
            {
LABEL_62:
              sub_1013B731C((v6[20] + 24), *a2 + 3, *a2 + 24);
LABEL_63:
              sub_100005978(&v56);
              if (SHIBYTE(v55) < 0)
              {
                operator delete(v54[1]);
              }

              sub_1005A16F4(v54);
LABEL_66:
              sub_1005A17EC(&certificate);
LABEL_67:
              sub_1014BE694(v6);
              if (v12)
              {
                sub_100004A34(v12);
              }

              return;
            }

            v52 = PersonalityInfo::logPrefix(*a2);
            *buf = 136315394;
            *&buf[4] = v52;
            *&buf[12] = 2080;
            *&buf[14] = " ";
            v49 = "#E %s%sunable to SecKeyCopySubjectPublicKeyInfo - mark as UNSUPPORTED";
          }

          else
          {
            v45 = v6[5];
            if (!os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_62;
            }

            v48 = PersonalityInfo::logPrefix(*a2);
            *buf = 136315394;
            *&buf[4] = v48;
            *&buf[12] = 2080;
            *&buf[14] = " ";
            v49 = "#E %s%sInvalid certificate, unable to extract pub key from it - mark as UNSUPPORTED";
          }

          _os_log_error_impl(&_mh_execute_header, v45, OS_LOG_TYPE_ERROR, v49, buf, 0x16u);
          goto LABEL_62;
        }

        v35 = v6[5];
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          v36 = PersonalityInfo::logPrefix(*a2);
          *buf = 136315394;
          *&buf[4] = v36;
          *&buf[12] = 2080;
          *&buf[14] = " ";
          _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "#I %s%sfail to extract public key from certificate", buf, 0x16u);
        }

        v29 = 0;
        v33 = 0;
        goto LABEL_36;
      }

      v23 = v6[5];
      if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      v24 = PersonalityInfo::logPrefix(*a2);
      v25 = *a2 + 24;
      v26 = *(*a2 + 47);
      v27 = v26;
      if ((v26 & 0x80u) != 0)
      {
        v26 = *(*a2 + 4);
      }

      if (v27 < 0)
      {
        v25 = *(*a2 + 3);
      }

      if (!v26)
      {
        v25 = "<invalid>";
      }

      *buf = 136315650;
      *&buf[4] = v24;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      *&buf[22] = 2080;
      v62 = v25;
      v20 = "#E %s%sno personality %s in the Proposed config";
      v21 = v23;
      v22 = 32;
    }

    else
    {
      v18 = v6[5];
      if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      v19 = PersonalityInfo::logPrefix(*a2);
      *buf = 136315394;
      *&buf[4] = v19;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      v20 = "#E %s%sfUpcoming revoked?!";
      v21 = v18;
      v22 = 22;
    }

    _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, v20, buf, v22);
    return;
  }

  v16 = v6[5];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = PersonalityInfo::logPrefix(*a2);
    *buf = 136315394;
    *&buf[4] = v17;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#W %s%sunable to fetch IWF certificate... Stopped trying", buf, 0x16u);
  }
}

void sub_1014C5764(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, const void *a16, __int16 a17, char a18, char a19, int a20, const void *a21, const void *a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  sub_1005A16F4(&a21);
  sub_100005978(&a22);
  sub_1005A17EC(&a16);
  if (v29)
  {
    sub_100004A34(v29);
  }

  _Unwind_Resume(a1);
}

void sub_1014C586C(SecCertificateRef *a1, uint64_t a2, char a3, char *a4, uint64_t a5, const __CFArray *a6)
{
  *a1 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  memset(buf, 0, sizeof(buf));
  v15 = 0;
  ctu::cf::assign();
  v12 = 0u;
  v13 = 0;
  ctu::base64::decode();
  v7 = *(a2 + 40);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#E unable to decode base64", buf, 2u);
  }

  *a1 = 0;
  *buf = 0;
  sub_1005A17EC(buf);
}

void sub_1014C6894(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, char a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, int a30, __int16 a31, char a32, char a33, int a34, __int16 a35, char a36, char a37, int a38, __int16 a39, char a40, char a41, void *__p, uint64_t a43, uint64_t a44, uint64_t a45, void *a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50)
{
  sub_100010250((v51 - 184));
  if (*(v51 - 201) < 0)
  {
    operator delete(*(v51 - 224));
  }

  if (a15)
  {
    sub_100004A34(a15);
  }

  v53 = *(v51 - 256);
  if (v53)
  {
    *(v51 - 248) = v53;
    operator delete(v53);
  }

  sub_1005A17EC(v50);
  _Unwind_Resume(a1);
}

void sub_1014C6C50(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    v3 = a1[4];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (a1[5])
      {
        if (*(v3 + 97) == 1 && (*(v3 + 96) & 1) == 0)
        {
          v8 = *(v3 + 216);
          if (!v8 || (v9 = *(v8 + 48), v10 = (v8 + 56), v9 == (v8 + 56)))
          {
LABEL_34:
            v6 = 0;
          }

          else
          {
            while (1)
            {
              sub_1014C586C(buf, v3, 0, v9 + 32, *(*(v9 + 7) + 104), *(*(v9 + 7) + 112));
              v11 = *buf;
              sub_1005A17EC(buf);
              v12 = *(v3 + 40);
              v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
              if (!v11)
              {
                break;
              }

              if (v13)
              {
                v14 = v9[55];
                v15 = (v14 & 0x80u) != 0;
                if ((v14 & 0x80u) != 0)
                {
                  v14 = *(v9 + 5);
                }

                if (v15)
                {
                  v16 = *(v9 + 4);
                }

                else
                {
                  v16 = v9 + 32;
                }

                if (v14)
                {
                  v17 = v16;
                }

                else
                {
                  v17 = "<invalid>";
                }

                *buf = 136315138;
                *&buf[4] = v17;
                _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I settled, certificates for sim %s are OK", buf, 0xCu);
              }

              v18 = *(v9 + 1);
              if (v18)
              {
                do
                {
                  v19 = v18;
                  v18 = *v18;
                }

                while (v18);
              }

              else
              {
                do
                {
                  v19 = *(v9 + 2);
                  v20 = *v19 == v9;
                  v9 = v19;
                }

                while (!v20);
              }

              v9 = v19;
              if (v19 == v10)
              {
                goto LABEL_34;
              }
            }

            if (v13)
            {
              v33 = v9[55];
              v34 = (v33 & 0x80u) != 0;
              if ((v33 & 0x80u) != 0)
              {
                v33 = *(v9 + 5);
              }

              if (v34)
              {
                v35 = *(v9 + 4);
              }

              else
              {
                v35 = v9 + 32;
              }

              if (v33)
              {
                v36 = v35;
              }

              else
              {
                v36 = "<invalid>";
              }

              *buf = 136315138;
              *&buf[4] = v36;
              _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I settled, check certificates for sim %s - FAILED - requires reprovisioning", buf, 0xCu);
            }

            sub_1014BB674(v3);
            v6 = 1;
          }

          v21 = *(v3 + 232);
          if (v21)
          {
            v22 = *(v21 + 48);
            v23 = (v21 + 56);
            if (v22 != (v21 + 56))
            {
              while (1)
              {
                sub_1014C586C(buf, v3, 0, v22 + 32, *(*(v22 + 7) + 104), *(*(v22 + 7) + 112));
                v24 = *buf;
                sub_1005A17EC(buf);
                v25 = *(v3 + 40);
                v26 = os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);
                if (!v24)
                {
                  break;
                }

                if (v26)
                {
                  v27 = v22[55];
                  v28 = (v27 & 0x80u) != 0;
                  if ((v27 & 0x80u) != 0)
                  {
                    v27 = *(v22 + 5);
                  }

                  if (v28)
                  {
                    v29 = *(v22 + 4);
                  }

                  else
                  {
                    v29 = v22 + 32;
                  }

                  v20 = v27 == 0;
                  v30 = "<invalid>";
                  if (!v20)
                  {
                    v30 = v29;
                  }

                  *buf = 136315138;
                  *&buf[4] = v30;
                  _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#I proposed, certificates for sim %s are OK", buf, 0xCu);
                }

                v31 = *(v22 + 1);
                if (v31)
                {
                  do
                  {
                    v32 = v31;
                    v31 = *v31;
                  }

                  while (v31);
                }

                else
                {
                  do
                  {
                    v32 = *(v22 + 2);
                    v20 = *v32 == v22;
                    v22 = v32;
                  }

                  while (!v20);
                }

                v22 = v32;
                if (v32 == v23)
                {
                  goto LABEL_7;
                }
              }

              if (v26)
              {
                v37 = v22[55];
                v38 = (v37 & 0x80u) != 0;
                if ((v37 & 0x80u) != 0)
                {
                  v37 = *(v22 + 5);
                }

                if (v38)
                {
                  v39 = *(v22 + 4);
                }

                else
                {
                  v39 = v22 + 32;
                }

                v20 = v37 == 0;
                v40 = "<invalid>";
                if (!v20)
                {
                  v40 = v39;
                }

                *buf = 136315138;
                *&buf[4] = v40;
                _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#I proposed, check certificates for sim %s - FAILED - requires reprovisioning", buf, 0xCu);
              }

              sub_1014BB7B8(v3);
              v6 = 1;
            }
          }
        }

        else
        {
          v6 = 0;
        }

LABEL_7:
        if (*(v3 + 216) && (v7 = *(v3 + 312)) != 0)
        {
          sub_100430D40(v7, 0);
        }

        else
        {
          sub_1014C7064(v3);
        }

        if (v6)
        {
          sub_1014BC424(v3);
        }
      }

      sub_100004A34(v5);
    }
  }
}

uint64_t sub_1014C7030(uint64_t result, uint64_t a2)
{
  *(result + 32) = *(a2 + 32);
  v2 = *(a2 + 48);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1014C7054(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1014C7064(void *a1)
{
  v1 = a1[39];
  if (v1)
  {
    v3 = a1[5];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I canceling certificate validation", v5, 2u);
      v1 = a1[39];
    }

    sub_100430948(v1);
    v4 = a1[40];
    a1[39] = 0;
    a1[40] = 0;
    if (v4)
    {
      sub_100004A34(v4);
    }
  }
}

void sub_1014C70F4(Registry *a1, uint64_t a2, const __CFUUID *a3, uint64_t a4, uint64_t a5)
{
  ServiceMap = Registry::getServiceMap(a1);
  v10 = ServiceMap;
  if (v11 < 0)
  {
    v12 = (v11 & 0x7FFFFFFFFFFFFFFFLL);
    v13 = 5381;
    do
    {
      v11 = v13;
      v14 = *v12++;
      v13 = (33 * v13) ^ v14;
    }

    while (v14);
  }

  std::mutex::lock(ServiceMap);
  __p = v11;
  v15 = sub_100009510(&v10[1].__m_.__sig, &__p);
  if (!v15)
  {
    v17 = 0;
    goto LABEL_8;
  }

  v17 = v15[3];
  v16 = v15[4];
  if (!v16)
  {
LABEL_8:
    std::mutex::unlock(v10);
    v16 = 0;
    v18 = 1;
    goto LABEL_9;
  }

  atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v10);
  atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v16);
  v18 = 0;
LABEL_9:
  v22 = 0;
  sub_1014C2C20(&v22, a3);
  if (a4)
  {
    if (a5)
    {
      if (v17)
      {
        if (v22)
        {
          v23 = v22;
          v20 = 0;
          v21 = 0;
          __p = 0;
          sub_10005B328(&__p, &v23, &v24, 1uLL);
          (*(*v17 + 16))(v17, a2, a4, a5, @"SatMsg", &__p, 4, 0);
          if (__p)
          {
            v20 = __p;
            operator delete(__p);
          }
        }
      }
    }
  }

  sub_100005978(&v22);
  if ((v18 & 1) == 0)
  {
    sub_100004A34(v16);
  }
}

void sub_1014C72C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, const void *a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_100005978(&a12);
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v12);
  }

  _Unwind_Resume(a1);
}

void sub_1014C7318(Registry *a1, uint64_t a2, const __CFUUID *a3, uint64_t a4, void *a5)
{
  ServiceMap = Registry::getServiceMap(a1);
  v10 = ServiceMap;
  if (v11 < 0)
  {
    v12 = (v11 & 0x7FFFFFFFFFFFFFFFLL);
    v13 = 5381;
    do
    {
      v11 = v13;
      v14 = *v12++;
      v13 = (33 * v13) ^ v14;
    }

    while (v14);
  }

  std::mutex::lock(ServiceMap);
  __p = v11;
  v15 = sub_100009510(&v10[1].__m_.__sig, &__p);
  if (!v15)
  {
    v17 = 0;
    goto LABEL_8;
  }

  v17 = v15[3];
  v16 = v15[4];
  if (!v16)
  {
LABEL_8:
    std::mutex::unlock(v10);
    v16 = 0;
    v18 = 1;
    goto LABEL_9;
  }

  atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v10);
  atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v16);
  v18 = 0;
LABEL_9:
  v24 = 0;
  sub_1014C2C20(&v24, a3);
  if (a4 && *a5 && v17 && v24)
  {
    sub_1014CD34C(&v23, a5);
    v19 = v23;
    v25 = v24;
    v21 = 0;
    v22 = 0;
    __p = 0;
    sub_10005B328(&__p, &v25, &v26, 1uLL);
    (*(*v17 + 16))(v17, a2, a4, v19, @"SatMsg", &__p, 4, 0);
    if (__p)
    {
      v21 = __p;
      operator delete(__p);
    }

    sub_10000A1EC(&v23);
  }

  sub_100005978(&v24);
  if ((v18 & 1) == 0)
  {
    sub_100004A34(v16);
  }
}

void sub_1014C7500(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, const void *a13, const void *a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_10000A1EC(&a13);
  sub_100005978(&a14);
  if ((v15 & 1) == 0)
  {
    sub_100004A34(v14);
  }

  _Unwind_Resume(a1);
}

void sub_1014C7568(void *a1, uint64_t a2, __int128 *a3, uint64_t a4, void *a5)
{
  if (CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks))
  {
    *buf = 0;
    sub_1000296E0(buf);
  }

  theDict[0] = 0;
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    v9 = theDict[0];
    theDict[0] = Mutable;
    *buf = v9;
    sub_1000296E0(buf);
  }

  if (*(a3 + 8))
  {
    theArray[0] = 0;
    v10 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
    if (v10)
    {
      v11 = theArray[0];
      theArray[0] = v10;
      *buf = v11;
      sub_1000279DC(buf);
    }

    if (**(a3 + 8) != *(*(a3 + 8) + 8))
    {
      __dst[5] = 0;
      operator new();
    }

    CFDictionarySetValue(theDict[0], @"primaryContacts", theArray[0]);
    sub_1000279DC(theArray);
    sub_100010180(__dst, theDict);
    *buf = 0;
    __dst[0] = 0;
    sub_10001021C(buf);
    sub_10001021C(__dst);
  }

  else
  {
    v12 = *(a2 + 40);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "no Contacts for Budgie!", buf, 2u);
    }
  }

  sub_1000296E0(theDict);
  v20 = 0;
  v13 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (v13)
  {
    v14 = v20;
    v20 = v13;
    *buf = v14;
    sub_1000296E0(buf);
  }

  v15 = 0;
  memset(v19, 0, 24);
  do
  {
    buf[0] = aComAppleSecuri_0[v15];
    sub_1001CD884(v19, buf);
    ++v15;
  }

  while (v15 != 66);
  theArray[2] = 0;
  theArray[3] = 0;
  sub_101335FA8((a2 + 40), *(a4 + 64), a5, v19, 16);
}

void sub_1014C8264(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int128 a11, uint64_t a12, uint64_t a13, uint64_t a14, const void *a15, const void *a16, const void *a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, char a32, std::__shared_weak_count *a33, void *a34, uint64_t a35, uint64_t a36, const void *a37, uint64_t a38, const void *a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, void *a47, uint64_t a48, int a49, __int16 a50, char a51, char a52)
{
  sub_100005978((v52 - 184));
  if (*(v52 - 153) < 0)
  {
    operator delete(*(v52 - 176));
  }

  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a31 < 0)
  {
    operator delete(a26);
  }

  if (a33)
  {
    sub_100004A34(a33);
  }

  if (a34)
  {
    a35 = a34;
    operator delete(a34);
  }

  sub_10002D760(&a37);
  sub_1000296E0(&a39);
  sub_1000296E0((v52 - 192));
  sub_10001021C(&a15);
  sub_10001021C(&a16);
  sub_1000296E0(&a17);
  _Unwind_Resume(a1);
}

const void **sub_1014C8600(void *a1, uint64_t a2, uint64_t a3)
{
  v28 = 0;
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    v7 = v28;
    v28 = Mutable;
    valuePtr[0] = v7;
    sub_1000296E0(valuePtr);
  }

  theDict = 0;
  v8 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (v8)
  {
    v9 = theDict;
    theDict = v8;
    valuePtr[0] = v9;
    sub_1000296E0(valuePtr);
  }

  v11 = (a3 + 32);
  v10 = *(a3 + 32);
  if (v10)
  {
    v12 = a3 + 32;
    do
    {
      v13 = *(v10 + 32);
      if ((v13 & 0x80000000) == 0)
      {
        v12 = v10;
      }

      v10 = *(v10 + ((v13 >> 28) & 8));
    }

    while (v10);
    if (v12 != v11 && *(v12 + 32) <= 0)
    {
      v23 = sub_100007A6C(a3 + 48, (v12 + 40));
      if (a3 + 56 != v23)
      {
        value = 0;
        v24 = *(v23 + 56);
        v25 = sub_100007A6C(a3 + 72, (v12 + 40));
        sub_1014C7568(&value, a2, v24, *(v25 + 56), (a3 + 96));
      }
    }

    v14 = *v11;
    if (*v11)
    {
      v15 = a3 + 32;
      do
      {
        if (*(v14 + 32) >= 1)
        {
          v15 = v14;
        }

        v14 = *(v14 + 8 * (*(v14 + 32) < 1));
      }

      while (v14);
      if (v15 != v11 && *(v15 + 32) <= 1)
      {
        v16 = sub_100007A6C(a3 + 48, (v15 + 40));
        if (a3 + 56 != v16)
        {
          value = 0;
          v17 = *(v16 + 56);
          v18 = sub_100007A6C(a3 + 72, (v15 + 40));
          sub_1014C7568(&value, a2, v17, *(v18 + 56), (a3 + 96));
        }
      }
    }
  }

  CFDictionarySetValue(v28, @"simConfigs", theDict);
  sub_1014C2C20(valuePtr, *a3);
  CFDictionarySetValue(v28, @"uuid", valuePtr[0]);
  sub_100005978(valuePtr);
  v19 = *(a3 + 8);
  value = 0;
  valuePtr[0] = v19;
  v20 = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongType, valuePtr);
  if (v20)
  {
    value = v20;
    valuePtr[0] = 0;
    sub_100029A48(valuePtr);
    v21 = value;
  }

  else
  {
    v21 = 0;
  }

  v26 = v21;
  value = 0;
  sub_100029A48(&value);
  CFDictionarySetValue(v28, @"generatedAt", v21);
  sub_100029A48(&v26);
  sub_100010180(a1, &v28);
  sub_1000296E0(&theDict);
  return sub_1000296E0(&v28);
}

void sub_1014C8994(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v6 = va_arg(va2, const void *);
  sub_10001021C(va2);
  sub_1000296E0(va);
  sub_1000296E0(va1);
  _Unwind_Resume(a1);
}

const void **sub_1014C8A04(uint64_t a1, uint64_t a2)
{
  v20 = 0;
  v21 = 0;
  v4 = *(a1 + 232);
  if (v4)
  {
    v5 = *(a1 + 240);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

LABEL_6:
    theDict = 0;
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (Mutable)
    {
      v7 = theDict;
      theDict = Mutable;
      *&value = v7;
      sub_1000296E0(&value);
    }

    v8 = *(a1 + 216);
    if (v8)
    {
      *&value = 0;
      sub_1014C8600(&value, a1, v8);
      if (!value)
      {
        v14 = *(a1 + 40);
        if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_30;
        }

        LOWORD(v18) = 0;
        v15 = "failed to compile settled bucket";
        goto LABEL_38;
      }

      if (*(a1 + 208) == 1 && *(a1 + 204))
      {
        v9 = @"parakeetConfig_1";
      }

      else
      {
        v9 = @"parakeetConfig_0";
      }

      CFDictionarySetValue(theDict, v9, value);
      sub_10001021C(&value);
    }

    if (!v4)
    {
      v4 = (a1 + 280);
LABEL_22:
      sub_1000BA4A0(&v20, v4);
      sub_1014C2C20(&value, v20);
      CFDictionarySetValue(theDict, @"uuid", value);
      sub_100005978(&value);
      v11 = *(a1 + 40);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(value) = 138412290;
        *(&value + 4) = v20;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I getSatelliteMsgCfgToUpdate, created update with ID:%@", &value, 0xCu);
      }

      *&value = off_101F43490;
      *(&value + 1) = a1;
      p_value = &value;
      logger::CFTypeRefLogger();
      sub_100007E44(&value);
      v12 = objc_autoreleasePoolPush();
      v18 = 0;
      *&value = [NSJSONSerialization dataWithJSONObject:theDict options:1 error:&v18];
      sub_1009A440C(&v21, &value);
      v13 = *(a1 + 40);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(value) = 138412290;
        *(&value + 4) = v18;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I getSatelliteMsgCfgToUpdate, giving out JSON with err:%@", &value, 0xCu);
      }

      *&value = off_101F43510;
      *(&value + 1) = a1;
      p_value = &value;
      logger::CFTypeRefLogger();
      sub_100007E44(&value);
      objc_autoreleasePoolPop(v12);
      goto LABEL_31;
    }

    *&value = 0;
    sub_1014C8600(&value, a1, v4);
    if (value)
    {
      if (*(a1 + 208) == 1 && !*(a1 + 204))
      {
        v10 = @"parakeetConfig_1";
      }

      else
      {
        v10 = @"parakeetConfig_0";
      }

      CFDictionarySetValue(theDict, v10, value);
      sub_10001021C(&value);
      goto LABEL_22;
    }

    v14 = *(a1 + 40);
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
LABEL_30:
      sub_10001021C(&value);
LABEL_31:
      sub_1000296E0(&theDict);
      if (v5)
      {
        sub_100004A34(v5);
      }

      goto LABEL_33;
    }

    LOWORD(v18) = 0;
    v15 = "failed to compile proposed bucket";
LABEL_38:
    _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, v15, &v18, 2u);
    goto LABEL_30;
  }

  if (*(a1 + 280))
  {
    v5 = 0;
    goto LABEL_6;
  }

  v17 = *(a1 + 40);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(value) = 0;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I getSatelliteMsgCfgToUpdate - nothing to sync", &value, 2u);
  }

LABEL_33:
  sub_1014C8E80(*(a2 + 24), v20, v21);
  sub_1000475BC(&v20);
  return sub_10002D760(&v21);
}

void sub_1014C8DF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va3, a3);
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v7 = va_arg(va2, const void *);
  va_copy(va3, va2);
  v9 = va_arg(va3, const void *);
  sub_10001021C(va3);
  sub_1000296E0(va);
  if (v3)
  {
    sub_100004A34(v3);
  }

  sub_1000475BC(va1);
  sub_10002D760(va2);
  _Unwind_Resume(a1);
}

uint64_t sub_1014C8E80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a2;
  v4 = 0;
  v5 = a3;
  if (!a1)
  {
    sub_100022DB4();
  }

  return (*(*a1 + 48))(a1, &v6, &v5, &v4);
}

void sub_1014C8EDC(uint64_t a1, uint64_t a2, const void *a3, const char *a4)
{
  v8 = *(a1 + 40);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (!v9)
    {
      return;
    }

    *buf = 138412290;
    *&buf[4] = a2;
    v10 = "#I setSatelliteMsgCfgUpdated failed with %@";
    v11 = v8;
    v12 = 12;
    goto LABEL_33;
  }

  if (v9)
  {
    *buf = 138412546;
    *&buf[4] = a3;
    v111 = 2112;
    v112 = a4;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I setSatelliteMsgCfgUpdated success, cfg_id:%@, sps:%@", buf, 0x16u);
  }

  v13 = *(a1 + 280);
  if (!v13 || CFEqual(v13, a3) != 1)
  {
    v25 = *(a1 + 232);
    if (!v25)
    {
      v38 = *(a1 + 40);
      if (!os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      *buf = 0;
      v10 = "#I ACK received while no configuration Proposed";
      v11 = v38;
      v12 = 2;
      goto LABEL_33;
    }

    if (CFEqual(*v25, a3) != 1)
    {
      v39 = *(a1 + 40);
      if (!os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      v40 = **(a1 + 232);
      *buf = 138412546;
      *&buf[4] = a3;
      v111 = 2112;
      v112 = v40;
      v10 = "#I ACK received with %@ while Proposed is %@";
      v11 = v39;
      goto LABEL_32;
    }

    *(a1 + 272) = 0;
    v26 = *(a1 + 280);
    *(a1 + 280) = 0;
    *buf = v26;
    sub_1000475BC(buf);
    ServiceMap = Registry::getServiceMap(*(a1 + 48));
    v28 = ServiceMap;
    v29 = "8UStorage";
    v30 = "8UStorage";
    if (("8UStorage" & 0x8000000000000000) != 0)
    {
      v31 = ("8UStorage" & 0x7FFFFFFFFFFFFFFFLL);
      v32 = 5381;
      do
      {
        v30 = v32;
        v33 = *v31++;
        v32 = (33 * v32) ^ v33;
      }

      while (v33);
    }

    std::mutex::lock(ServiceMap);
    *buf = v30;
    v34 = sub_100009510(&v28[1].__m_.__sig, buf);
    if (v34)
    {
      v36 = v34[3];
      v35 = v34[4];
      if (v35)
      {
        atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v28);
        atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v35);
        v37 = 0;
        goto LABEL_37;
      }
    }

    else
    {
      v36 = 0;
    }

    std::mutex::unlock(v28);
    v35 = 0;
    v37 = 1;
LABEL_37:
    sub_10071BDE8(v36, @"need-reprovisioning", @"SatMsg", 0, 2);
    if ((v37 & 1) == 0)
    {
      sub_100004A34(v35);
    }

    v42 = Registry::getServiceMap(*(a1 + 48));
    v43 = v42;
    v44 = "8UStorage";
    if ("8UStorage" < 0)
    {
      v45 = ("8UStorage" & 0x7FFFFFFFFFFFFFFFLL);
      v46 = 5381;
      do
      {
        v44 = v46;
        v47 = *v45++;
        v46 = (33 * v46) ^ v47;
      }

      while (v47);
    }

    std::mutex::lock(v42);
    *buf = v44;
    v48 = sub_100009510(&v43[1].__m_.__sig, buf);
    if (v48)
    {
      v50 = v48[3];
      v49 = v48[4];
      if (v49)
      {
        atomic_fetch_add_explicit(&v49->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v43);
        atomic_fetch_add_explicit(&v49->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v49);
        v51 = 0;
        goto LABEL_47;
      }
    }

    else
    {
      v50 = 0;
    }

    std::mutex::unlock(v43);
    v49 = 0;
    v51 = 1;
LABEL_47:
    sub_10071BDE8(v50, @"need-clean-push", @"SatMsg", 0, 2);
    if ((v51 & 1) == 0)
    {
      sub_100004A34(v49);
    }

    v52 = *(a1 + 208) == 1 && *(a1 + 204) == 0;
    *(a1 + 204) = v52;
    *(a1 + 208) = 1;
    v53 = Registry::getServiceMap(*(a1 + 48));
    v54 = v53;
    v55 = "8UStorage";
    if ("8UStorage" < 0)
    {
      v56 = ("8UStorage" & 0x7FFFFFFFFFFFFFFFLL);
      v57 = 5381;
      do
      {
        v55 = v57;
        v58 = *v56++;
        v57 = (33 * v57) ^ v58;
      }

      while (v58);
    }

    std::mutex::lock(v53);
    *buf = v55;
    v59 = sub_100009510(&v54[1].__m_.__sig, buf);
    if (v59)
    {
      v61 = v59[3];
      v60 = v59[4];
      if (v60)
      {
        atomic_fetch_add_explicit(&v60->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v54);
        atomic_fetch_add_explicit(&v60->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v60);
        v62 = 0;
        goto LABEL_60;
      }
    }

    else
    {
      v61 = 0;
    }

    std::mutex::unlock(v54);
    v60 = 0;
    v62 = 1;
LABEL_60:
    v63 = *(a1 + 204);
    v109 = 0;
    *buf = v63;
    v64 = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongLongType, buf);
    if (v64)
    {
      v65 = v109;
      v109 = v64;
      *buf = v65;
      sub_100029A48(buf);
    }

    v108 = v109;
    v109 = 0;
    sub_100029A48(&v109);
    sub_10071B8E0(v61, @"bucket", v108, @"SatMsg", 0, 2, 0, 0);
    sub_100029A48(&v108);
    if ((v62 & 1) == 0)
    {
      sub_100004A34(v60);
    }

    v66 = *(a1 + 216);
    if (!v66)
    {
LABEL_79:
      v82 = *(a1 + 232);
      v81 = *(a1 + 240);
      if (v81)
      {
        atomic_fetch_add_explicit((v81 + 8), 1uLL, memory_order_relaxed);
      }

      v83 = *(a1 + 224);
      *(a1 + 216) = v82;
      *(a1 + 224) = v81;
      if (v83)
      {
        sub_100004A34(v83);
      }

      v84 = *(a1 + 240);
      *(a1 + 232) = 0;
      *(a1 + 240) = 0;
      if (v84)
      {
        sub_100004A34(v84);
      }

      v85 = Registry::getServiceMap(*(a1 + 48));
      v86 = v85;
      v87 = "8UStorage";
      if ("8UStorage" < 0)
      {
        v88 = ("8UStorage" & 0x7FFFFFFFFFFFFFFFLL);
        v89 = 5381;
        do
        {
          v87 = v89;
          v90 = *v88++;
          v89 = (33 * v89) ^ v90;
        }

        while (v90);
      }

      std::mutex::lock(v85);
      *buf = v87;
      v91 = sub_100009510(&v86[1].__m_.__sig, buf);
      if (v91)
      {
        v93 = v91[3];
        v92 = v91[4];
        if (v92)
        {
          atomic_fetch_add_explicit(&v92->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v86);
          atomic_fetch_add_explicit(&v92->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v92);
          v94 = 0;
          goto LABEL_93;
        }
      }

      else
      {
        v93 = 0;
      }

      std::mutex::unlock(v86);
      v92 = 0;
      v94 = 1;
LABEL_93:
      sub_10071BDE8(v93, @"ProposedConfig", @"SatMsg", 0, 2);
      if ((v94 & 1) == 0)
      {
        sub_100004A34(v92);
      }

      v95 = Registry::getServiceMap(*(a1 + 48));
      v96 = v95;
      if ("8UStorage" < 0)
      {
        v97 = ("8UStorage" & 0x7FFFFFFFFFFFFFFFLL);
        v98 = 5381;
        do
        {
          v29 = v98;
          v99 = *v97++;
          v98 = (33 * v98) ^ v99;
        }

        while (v99);
      }

      std::mutex::lock(v95);
      *buf = v29;
      v100 = sub_100009510(&v96[1].__m_.__sig, buf);
      if (v100)
      {
        v102 = v100[3];
        v101 = v100[4];
        if (v101)
        {
          atomic_fetch_add_explicit(&v101->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v96);
          atomic_fetch_add_explicit(&v101->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v101);
          v103 = 0;
          goto LABEL_103;
        }
      }

      else
      {
        v102 = 0;
      }

      std::mutex::unlock(v96);
      v101 = 0;
      v103 = 1;
LABEL_103:
      sub_1014C219C(buf, *(a1 + 216), 0);
      sub_10071B8E0(v102, @"SettledConfig", *buf, @"SatMsg", 0, 2, 0, 0);
      sub_10001021C(buf);
      if ((v103 & 1) == 0)
      {
        sub_100004A34(v101);
      }

      v104 = *(a1 + 40);
      if (os_log_type_enabled(v104, OS_LOG_TYPE_DEFAULT))
      {
        v105 = **(a1 + 216);
        if (*(a1 + 208) != 1)
        {
          goto LABEL_110;
        }

        v106 = *(a1 + 204);
        v107 = "???";
        if (v106 == 1)
        {
          v107 = "b1";
        }

        if (!v106)
        {
LABEL_110:
          v107 = "b0";
        }

        *buf = 138412546;
        *&buf[4] = v105;
        v111 = 2080;
        v112 = v107;
        _os_log_impl(&_mh_execute_header, v104, OS_LOG_TYPE_DEFAULT, "#I new Settled config is %@, bucket %s", buf, 0x16u);
      }

      sub_1014BC1B8(a1);
      sub_1014BBA98(a1, 1);
    }

    if (*(v66 + 16) != 1)
    {
LABEL_78:
      sub_1014BB674(a1);
      goto LABEL_79;
    }

    v67 = CFUUIDCreate(0);
    v68 = *(a1 + 280);
    *(a1 + 280) = v67;
    *buf = v68;
    sub_1000475BC(buf);
    v69 = *(a1 + 40);
    if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
    {
      v70 = *(a1 + 280);
      *buf = 138412290;
      *&buf[4] = v70;
      _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEFAULT, "#I previous configuration was used so need to make one more push to server to wipe old config. Clean push ID: %@", buf, 0xCu);
    }

    v71 = Registry::getServiceMap(*(a1 + 48));
    v72 = v71;
    v73 = "8UStorage";
    if ("8UStorage" < 0)
    {
      v74 = ("8UStorage" & 0x7FFFFFFFFFFFFFFFLL);
      v75 = 5381;
      do
      {
        v73 = v75;
        v76 = *v74++;
        v75 = (33 * v75) ^ v76;
      }

      while (v76);
    }

    std::mutex::lock(v71);
    *buf = v73;
    v77 = sub_100009510(&v72[1].__m_.__sig, buf);
    if (v77)
    {
      v79 = v77[3];
      v78 = v77[4];
      if (v78)
      {
        atomic_fetch_add_explicit(&v78->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v72);
        atomic_fetch_add_explicit(&v78->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v78);
        v80 = 0;
        goto LABEL_76;
      }
    }

    else
    {
      v79 = 0;
    }

    std::mutex::unlock(v72);
    v78 = 0;
    v80 = 1;
LABEL_76:
    sub_1014C2C20(buf, *(a1 + 280));
    sub_10071B8E0(v79, @"need-clean-push", *buf, @"SatMsg", 0, 2, 0, 0);
    sub_100005978(buf);
    if ((v80 & 1) == 0)
    {
      sub_100004A34(v78);
    }

    goto LABEL_78;
  }

  v14 = *(a1 + 280);
  *(a1 + 280) = 0;
  *buf = v14;
  sub_1000475BC(buf);
  v15 = Registry::getServiceMap(*(a1 + 48));
  v16 = v15;
  v17 = "8UStorage";
  if (("8UStorage" & 0x8000000000000000) != 0)
  {
    v18 = ("8UStorage" & 0x7FFFFFFFFFFFFFFFLL);
    v19 = 5381;
    do
    {
      v17 = v19;
      v20 = *v18++;
      v19 = (33 * v19) ^ v20;
    }

    while (v20);
  }

  std::mutex::lock(v15);
  *buf = v17;
  v21 = sub_100009510(&v16[1].__m_.__sig, buf);
  if (v21)
  {
    v23 = v21[3];
    v22 = v21[4];
    if (v22)
    {
      atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v16);
      atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v22);
      v24 = 0;
      goto LABEL_28;
    }
  }

  else
  {
    v23 = 0;
  }

  std::mutex::unlock(v16);
  v22 = 0;
  v24 = 1;
LABEL_28:
  sub_10071BDE8(v23, @"need-clean-push", @"SatMsg", 0, 2);
  if ((v24 & 1) == 0)
  {
    sub_100004A34(v22);
  }

  v41 = *(a1 + 40);
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *&buf[4] = a3;
    v111 = 2112;
    v112 = a4;
    v10 = "#I clean config push succeed, cfg_id:%@, sps:%@";
    v11 = v41;
LABEL_32:
    v12 = 22;
LABEL_33:
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v10, buf, v12);
  }
}

void sub_1014C9950(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_100005978(va);
  if ((v6 & 1) == 0)
  {
    sub_100004A34(v5);
  }

  _Unwind_Resume(a1);
}

void sub_1014C99FC(uint64_t a1, _BOOL4 a2, uint64_t a3)
{
  v6 = *(a1 + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v26 = 136315138;
    *&v26[4] = asStringBool(a2);
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I reprovisionSatelliteMsg, wipeAll:%s", v26, 0xCu);
  }

  v7 = *(a1 + 232);
  if (v7)
  {
    v8 = *(a1 + 40);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *v7;
      *v26 = 138412290;
      *&v26[4] = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I removing proposed config:%@", v26, 0xCu);
    }

    sub_1014BB7B8(a1);
  }

  if (a2)
  {
    if (*(a1 + 97) != 1)
    {
      v10 = *(a1 + 40);
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_20;
      }

      v11 = "<none>";
      goto LABEL_14;
    }

    if (*(a1 + 96) == 1)
    {
      v10 = *(a1 + 40);
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_20;
      }

      v11 = "true";
LABEL_14:
      *v26 = 136315138;
      *&v26[4] = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I fConfigInUse == %s, so wipeAll is ignored", v26, 0xCu);
      goto LABEL_20;
    }

    v12 = *(a1 + 216);
    if (v12)
    {
      v13 = *(a1 + 40);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = *v12;
        *v26 = 138412290;
        *&v26[4] = v14;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I removing settled config:%@", v26, 0xCu);
      }

      sub_1014BB674(a1);
    }

    sub_1014C7064(a1);
  }

LABEL_20:
  if (!*(a1 + 216))
  {
    goto LABEL_31;
  }

  *(a1 + 272) = 1;
  ServiceMap = Registry::getServiceMap(*(a1 + 48));
  v16 = ServiceMap;
  v17 = "8UStorage";
  if (("8UStorage" & 0x8000000000000000) != 0)
  {
    v18 = ("8UStorage" & 0x7FFFFFFFFFFFFFFFLL);
    v19 = 5381;
    do
    {
      v17 = v19;
      v20 = *v18++;
      v19 = (33 * v19) ^ v20;
    }

    while (v20);
  }

  std::mutex::lock(ServiceMap);
  *v26 = v17;
  v21 = sub_100009510(&v16[1].__m_.__sig, v26);
  if (v21)
  {
    v23 = v21[3];
    v22 = v21[4];
    if (v22)
    {
      atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v16);
      atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v22);
      v24 = 0;
      goto LABEL_29;
    }
  }

  else
  {
    v23 = 0;
  }

  std::mutex::unlock(v16);
  v22 = 0;
  v24 = 1;
LABEL_29:
  sub_10071B8E0(v23, @"need-reprovisioning", kCFBooleanTrue, @"SatMsg", 0, 2, 0, 0);
  if ((v24 & 1) == 0)
  {
    sub_100004A34(v22);
  }

LABEL_31:
  v25 = *(a3 + 24);
  if (!v25)
  {
    sub_100022DB4();
  }

  (*(*v25 + 48))(v25);
  sub_1014BC424(a1);
}

void sub_1014C9D38(_Unwind_Exception *exception_object)
{
  if ((v1 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_1014C9D68(void *a1)
{
  v1 = a1[2];
  if (v1)
  {
    if (std::__shared_weak_count::lock(v1))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_1014C9E48(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I  |--- Satellite messaging provisioning:", buf, 2u);
    v2 = *(a1 + 40);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 160))
    {
      v3 = "";
    }

    else
    {
      v3 = " -";
    }

    *buf = 136315138;
    *&buf[4] = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I  | fCurrentState:%s", buf, 0xCu);
  }

  v4 = *(a1 + 160);
  if (v4)
  {
    v7 = *v4;
    v5 = v4 + 1;
    v6 = v7;
    if (v7 != v5)
    {
      do
      {
        v8 = *(a1 + 40);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v9 = v6[4];
          v10 = *(v6 + 55);
          v11 = v10;
          if ((v10 & 0x80u) != 0)
          {
            v10 = v6[5];
          }

          if (v11 >= 0)
          {
            v9 = (v6 + 4);
          }

          if (v10)
          {
            v12 = v9;
          }

          else
          {
            v12 = "<invalid>";
          }

          v13 = *(a1 + 160);
          v14 = sub_100007A6C(v13 + 24, v6 + 32);
          *buf = 136315394;
          v15 = " UNSUPPORTED";
          if (v13 + 32 == v14)
          {
            v15 = "";
          }

          *&buf[4] = v12;
          *&buf[12] = 2080;
          *&buf[14] = v15;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I  |  [%s]:%s", buf, 0x16u);
        }

        v16 = v6[7];
        v54 = 0;
        sub_1014B9158(&v55, v16, &v54);
        *buf = off_101F43610;
        *&buf[8] = a1;
        v58 = buf;
        logger::CFTypeRefLogger();
        sub_100007E44(buf);
        sub_1000296E0(&v55);
        sub_1000296E0(&v54);
        v17 = v6[1];
        if (v17)
        {
          do
          {
            v18 = v17;
            v17 = *v17;
          }

          while (v17);
        }

        else
        {
          do
          {
            v18 = v6[2];
            v19 = *v18 == v6;
            v6 = v18;
          }

          while (!v19);
        }

        v6 = v18;
      }

      while (v18 != v5);
    }
  }

  v20 = *(a1 + 40);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = asStringBool(*(a1 + 200));
    *buf = 136315138;
    *&buf[4] = v21;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I  | fLastReportedProvisioningState: %s", buf, 0xCu);
    v20 = *(a1 + 40);
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I  | fSettled:", buf, 2u);
  }

  v22 = *(a1 + 216);
  if (v22)
  {
    sub_1014C219C(&v55, *(a1 + 216), 1);
  }

  *buf = off_101F43690;
  *&buf[8] = a1;
  v58 = buf;
  logger::CFTypeRefLogger();
  sub_100007E44(buf);
  if (v22)
  {
    sub_10001021C(&v55);
  }

  v23 = *(a1 + 40);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I  | fProposed:", buf, 2u);
  }

  v24 = *(a1 + 232);
  if (v24)
  {
    sub_1014C219C(&v53, *(a1 + 232), 1);
  }

  *buf = off_101F43710;
  *&buf[8] = a1;
  v58 = buf;
  logger::CFTypeRefLogger();
  sub_100007E44(buf);
  if (v24)
  {
    sub_10001021C(&v53);
  }

  v25 = *(a1 + 40);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#I  | fUpcoming:", buf, 2u);
  }

  v26 = *(a1 + 248);
  if (v26)
  {
    sub_1014C219C(&v52, *(a1 + 248), 1);
  }

  *buf = off_101F43790;
  *&buf[8] = a1;
  v58 = buf;
  logger::CFTypeRefLogger();
  sub_100007E44(buf);
  if (v26)
  {
    sub_10001021C(&v52);
  }

  v27 = *(a1 + 40);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 208) == 1)
    {
      v28 = *(a1 + 204);
      v29 = "???";
      if (v28 == 1)
      {
        v29 = "b1";
      }

      if (v28)
      {
        v30 = v29;
      }

      else
      {
        v30 = "b0";
      }
    }

    else
    {
      v30 = "-";
    }

    *buf = 136315138;
    *&buf[4] = v30;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#I  | settled bucket: %s", buf, 0xCu);
    v27 = *(a1 + 40);
  }

  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 264))
    {
      v31 = "";
    }

    else
    {
      v31 = "not ";
    }

    *buf = 136315138;
    *&buf[4] = v31;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#I  | fProposingBackoffTimer: %sengaged", buf, 0xCu);
    v27 = *(a1 + 40);
  }

  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    v32 = asStringBool(*(a1 + 272));
    v33 = *(a1 + 280);
    *buf = 136315394;
    *&buf[4] = v32;
    *&buf[12] = 2112;
    *&buf[14] = v33;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#I  | fReprovisioningRequested: %s, fCleanPushUUID: %@", buf, 0x16u);
    v27 = *(a1 + 40);
  }

  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 312))
    {
      v34 = "";
    }

    else
    {
      v34 = "NOT ";
    }

    *buf = 136315138;
    *&buf[4] = v34;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#I  | certificate check %sscheduled", buf, 0xCu);
    v27 = *(a1 + 40);
  }

  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    v35 = asStringBool(*(a1 + 152));
    *buf = 136315138;
    *&buf[4] = v35;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#I  | fHaveInternet: %s", buf, 0xCu);
    v27 = *(a1 + 40);
  }

  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    v36 = *(a1 + 192);
    *buf = 134217984;
    *&buf[4] = v36;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#I  | Models: %zu", buf, 0xCu);
  }

  v37 = *(a1 + 176);
  if (v37 != (a1 + 184))
  {
    do
    {
      v38 = v37[7];
      v39 = *(a1 + 40);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        v40 = PersonalityInfo::logPrefix(*v38);
        v41 = (v38 + 16);
        if (*(v38 + 39) < 0)
        {
          v41 = *v41;
        }

        v42 = (v38 + 40);
        if (*(v38 + 63) < 0)
        {
          v42 = *v42;
        }

        v43 = (v38 + 64);
        if (*(v38 + 87) < 0)
        {
          v43 = *v43;
        }

        *buf = 136316162;
        *&buf[4] = v40;
        *&buf[12] = 2080;
        *&buf[14] = " ";
        v57 = 2080;
        v58 = v41;
        v59 = 2080;
        *v60 = v42;
        *&v60[8] = 2080;
        *&v60[10] = v43;
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "#I %s%s |  fImsi '%s', fMcc '%s', fMnc '%s'", buf, 0x34u);
        v39 = *(a1 + 40);
      }

      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        v44 = PersonalityInfo::logPrefix(*v38);
        if (*(v38 + 88))
        {
          v45 = "";
        }

        else
        {
          v45 = "not ";
        }

        v46 = *(v38 + 104);
        v47 = asStringBool(*(v38 + 108));
        *buf = 136316162;
        *&buf[4] = v44;
        *&buf[12] = 2080;
        *&buf[14] = " ";
        v57 = 2080;
        v58 = v45;
        v59 = 1024;
        *v60 = v46;
        *&v60[4] = 2080;
        *&v60[6] = v47;
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "#I %s%s |  fIWFKeyFetchRequest %sissued, fFetchFailures %u, fServerIssueDetected: %s", buf, 0x30u);
        v39 = *(a1 + 40);
      }

      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        v48 = PersonalityInfo::logPrefix(*v38);
        v49 = "";
        if (!*(v38 + 112))
        {
          v49 = "not ";
        }

        *buf = 136315650;
        *&buf[4] = v48;
        *&buf[12] = 2080;
        *&buf[14] = " ";
        v57 = 2080;
        v58 = v49;
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "#I %s%s |  fRequestBackoffTimer %sactive", buf, 0x20u);
      }

      v50 = v37[1];
      if (v50)
      {
        do
        {
          v51 = v50;
          v50 = *v50;
        }

        while (v50);
      }

      else
      {
        do
        {
          v51 = v37[2];
          v19 = *v51 == v37;
          v37 = v51;
        }

        while (!v19);
      }

      v37 = v51;
    }

    while (v51 != (a1 + 184));
  }
}

void sub_1014CA76C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, const void *);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  sub_100007E44(va1);
  if (v9)
  {
    sub_10001021C(va);
  }

  _Unwind_Resume(a1);
}

void sub_1014CA7EC(uint64_t a1, const void *a2, uint64_t a3)
{
  object = 0;
  valuePtr[0] = a2;
  valuePtr[1] = "contacts";
  sub_100006354(valuePtr, &object);
  type = xpc_get_type(object);
  if (type != &_xpc_type_null)
  {
    theDict = 0;
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (Mutable)
    {
      v7 = theDict;
      theDict = Mutable;
      valuePtr[0] = v7;
      sub_1000296E0(valuePtr);
    }

    v8 = *(a1 + 216);
    if (v8)
    {
      v9 = theDict;
      v10 = *(v8 + 8);
      theArray = 0;
      valuePtr[0] = v10;
      v11 = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongType, valuePtr);
      if (v11)
      {
        v12 = theArray;
        theArray = v11;
        valuePtr[0] = v12;
        sub_100029A48(valuePtr);
      }

      value = theArray;
      theArray = 0;
      sub_100029A48(&theArray);
      CFDictionarySetValue(v9, @"created_at", value);
      sub_100029A48(&value);
      theArray = 0;
      v13 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
      if (v13)
      {
        v14 = theArray;
        theArray = v13;
        valuePtr[0] = v14;
        sub_1000279DC(valuePtr);
      }

      v15 = *(a1 + 216);
      v16 = *(v15 + 48);
      if (v16 != v15 + 56)
      {
        v17 = *(*(v16 + 56) + 64);
        if (v17)
        {
          v18 = *v17;
          v19 = v17[1];
          while (v18 != v19)
          {
            CFArrayAppendValue(theArray, *v18++);
          }
        }
      }

      CFDictionarySetValue(theDict, @"contacts", theArray);
      sub_1000279DC(&theArray);
    }

    sub_10000501C(valuePtr, "");
    sub_1014CAAAC(a3, valuePtr, theDict);
    if (v21 < 0)
    {
      operator delete(valuePtr[0]);
    }

    sub_1000296E0(&theDict);
  }

  xpc_release(object);
  if (type == &_xpc_type_null)
  {
    sub_10000501C(valuePtr, "sat-msg-provisioning: no subcommand detected");
    sub_1014CAAAC(a3, valuePtr, 0);
    if (v21 < 0)
    {
      operator delete(valuePtr[0]);
    }
  }
}

void sub_1014CAA18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, int a17, __int16 a18, char a19, char a20, xpc_object_t object, char a22)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1014CAAAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a3;
  v3 = *(a1 + 24);
  if (!v3)
  {
    sub_100022DB4();
  }

  return (*(*v3 + 48))(v3, a2, &v5);
}

void sub_1014CAB00(uint64_t a1@<X0>, int a2@<W1>, uint64_t a5@<X8>)
{
  v8 = *(a1 + 32);
  if (!v8)
  {
    goto LABEL_8;
  }

  v9 = a1 + 32;
  do
  {
    if (*(v8 + 32) >= a2)
    {
      v9 = v8;
    }

    v8 = *(v8 + 8 * (*(v8 + 32) < a2));
  }

  while (v8);
  if (v9 == a1 + 32 || *(v9 + 32) > a2)
  {
LABEL_8:
    v10 = *(a1 + 96);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    v19 = "s1";
    if (!a2)
    {
      v19 = "s0";
    }

    *buf = 136315138;
    *&buf[4] = v19;
    v18 = "encrypt_msg for SatMsg_SubscriptionID %s - missing";
    v20 = v10;
LABEL_26:
    _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, v18, buf, 0xCu);
    goto LABEL_9;
  }

  v11 = sub_100007A6C(a1 + 120, (v9 + 40));
  if (a1 + 128 == v11)
  {
    v13 = *(a1 + 96);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    v14 = *(v9 + 63);
    v15 = (v14 & 0x80u) != 0;
    if ((v14 & 0x80u) != 0)
    {
      v14 = *(v9 + 48);
    }

    if (v15)
    {
      v16 = *(v9 + 40);
    }

    else
    {
      v16 = (v9 + 40);
    }

    if (v14)
    {
      v17 = v16;
    }

    else
    {
      v17 = "<invalid>";
    }

    *buf = 136315138;
    *&buf[4] = v17;
    v18 = "encrypt_msg for '%s' - missing keys";
    goto LABEL_37;
  }

  v12 = v11;
  if (a1 + 56 != sub_100007A6C(a1 + 48, (v9 + 40)))
  {
    std::mutex::lock(*(v12 + 56));
    *&buf[8] = 0;
    *&v26 = 0;
    ctu::cf::assign();
    operator new();
  }

  v13 = *(a1 + 96);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v21 = *(v9 + 63);
    v22 = (v21 & 0x80u) != 0;
    if ((v21 & 0x80u) != 0)
    {
      v21 = *(v9 + 48);
    }

    if (v22)
    {
      v23 = *(v9 + 40);
    }

    else
    {
      v23 = (v9 + 40);
    }

    if (v21)
    {
      v24 = v23;
    }

    else
    {
      v24 = "<invalid>";
    }

    *buf = 136315138;
    *&buf[4] = v24;
    v18 = "encrypt_msg for '%s' - missing cfg";
LABEL_37:
    v20 = v13;
    goto LABEL_26;
  }

LABEL_9:
  *a5 = 1;
  *(a5 + 8) = 0;
  *(a5 + 16) = 0;
}

void sub_1014CB498(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::mutex *a14, uint64_t a15, uint64_t a16, __int128 a17, void *__p, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, std::__shared_weak_count *a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  sub_100422B08(v31 - 144);
  if (__p)
  {
    operator delete(__p);
  }

  if (a21)
  {
    operator delete(a21);
  }

  if (a26)
  {
    operator delete(a26);
  }

  if (a25)
  {
    sub_100004A34(a25);
  }

  v33 = *(v31 - 168);
  if (v33)
  {
    *(v31 - 160) = v33;
    operator delete(v33);
  }

  sub_100004A34(v30);
  _Unwind_Resume(a1);
}

void sub_1014CB620(uint64_t a1@<X0>, int a2@<W1>, unsigned __int16 *a3@<X2>, uint64_t a5@<X8>)
{
  v8 = *(a1 + 32);
  if (!v8)
  {
    goto LABEL_8;
  }

  v10 = a1 + 32;
  do
  {
    if (*(v8 + 32) >= a2)
    {
      v10 = v8;
    }

    v8 = *(v8 + 8 * (*(v8 + 32) < a2));
  }

  while (v8);
  if (v10 == a1 + 32 || *(v10 + 32) > a2)
  {
LABEL_8:
    v11 = *(a1 + 96);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
LABEL_9:
      *a5 = 1;
      *(a5 + 8) = 0;
      *(a5 + 16) = 0;
      return;
    }

    v28 = "s1";
    if (!a2)
    {
      v28 = "s0";
    }

    *buf = 136315138;
    *&buf[4] = v28;
    v27 = "decrypt_msg for SatMsg_SubscriptionID %s - missing";
    v29 = v11;
LABEL_29:
    _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, v27, buf, 0xCu);
    goto LABEL_9;
  }

  v12 = v10 + 40;
  v13 = sub_100007A6C(a1 + 120, (v10 + 40));
  if (a1 + 128 == v13)
  {
    v22 = *(a1 + 96);
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    v23 = *(v10 + 63);
    v24 = (v23 & 0x80u) != 0;
    if ((v23 & 0x80u) != 0)
    {
      v23 = *(v10 + 48);
    }

    if (v24)
    {
      v25 = *(v10 + 40);
    }

    else
    {
      v25 = (v10 + 40);
    }

    if (v23)
    {
      v26 = v25;
    }

    else
    {
      v26 = "<invalid>";
    }

    *buf = 136315138;
    *&buf[4] = v26;
    v27 = "decrypt_msg for '%s' - missing keys";
    goto LABEL_40;
  }

  v14 = v13;
  if (a1 + 56 == sub_100007A6C(a1 + 48, (v10 + 40)))
  {
    v22 = *(a1 + 96);
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    v30 = *(v10 + 63);
    v31 = (v30 & 0x80u) != 0;
    if ((v30 & 0x80u) != 0)
    {
      v30 = *(v10 + 48);
    }

    if (v31)
    {
      v32 = *(v10 + 40);
    }

    else
    {
      v32 = (v10 + 40);
    }

    if (v30)
    {
      v33 = v32;
    }

    else
    {
      v33 = "<invalid>";
    }

    *buf = 136315138;
    *&buf[4] = v33;
    v27 = "decrypt_msg for '%s' - missing cfg";
LABEL_40:
    v29 = v22;
    goto LABEL_29;
  }

  v15 = *a3;
  v50 = *(v14 + 56);
  std::mutex::lock(v50);
  v16 = *(v14 + 56);
  v17 = *(v16 + 96);
  v49 = v15;
  v18 = v15 - v17;
  if ((v18 & 0x8000) != 0)
  {
    if (*(v16 + 120))
    {
      v34 = *(v16 + 128);
      log = *(a1 + 96);
      v35 = os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT);
      if (((v49 - v34) & 0x8000) == 0)
      {
        if (v35)
        {
          *buf = 67109888;
          *&buf[4] = v49;
          *&buf[8] = 1024;
          *&buf[10] = v17;
          *&buf[14] = 1024;
          LODWORD(v52[0]) = v34;
          WORD2(v52[0]) = 1024;
          *(v52 + 6) = (v49 - v34);
          _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "#I calculating MT key %hu from recovery. Current:%hu, Recovery:%hu, steps:%hu", buf, 0x1Au);
        }

        memset(buf, 0, sizeof(buf));
        v52[0] = 0;
        ctu::cf::assign();
        operator new();
      }

      if (v35)
      {
        *buf = 67109632;
        *&buf[4] = v49;
        *&buf[8] = 1024;
        *&buf[10] = v17;
        *&buf[14] = 1024;
        LODWORD(v52[0]) = -v18;
        v20 = "#E requested MT ratchet counter is too far behind, %hu while at %hu - gap %hu - failing";
        v21 = log;
        goto LABEL_55;
      }
    }

    else
    {
      v41 = *(a1 + 96);
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "#E MT recovery key is not yet set, requested MT is behind initial point - failing", buf, 2u);
      }
    }

LABEL_56:
    v45 = v50;
    goto LABEL_61;
  }

  if (v18 < 0x3E9u)
  {
    if (v18 >= 0xFu)
    {
      if (!*(v16 + 120))
      {
        *buf = 0;
        v36 = sub_10002D728(buf, (v16 + 88));
        v37 = *(v16 + 120);
        *(v16 + 120) = *buf;
        *buf = v37;
        sub_10002D760(v36);
        *(v16 + 128) = *(v16 + 96);
        sub_1014C7318(*(a1 + 104), v12, *(a1 + 8), @"mt-recovery-key", (*(v14 + 56) + 120));
        v16 = *(v14 + 56);
      }

      v38 = v18 - 5;
      v39 = *(a1 + 96);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        v40 = *(v16 + 96);
        *buf = 67109632;
        *&buf[4] = v38;
        *&buf[8] = 1024;
        *&buf[10] = v40;
        *&buf[14] = 1024;
        LODWORD(v52[0]) = (v40 + v38);
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "#I shifting MT key by %hu. %hu -> %hu", buf, 0x14u);
      }

      memset(buf, 0, sizeof(buf));
      v52[0] = 0;
      ctu::cf::assign();
      operator new();
    }

    v42 = *(a1 + 96);
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      v43 = *(v16 + 96);
      v44 = *(v16 + 128);
      *buf = 67109888;
      *&buf[4] = v49;
      *&buf[8] = 1024;
      *&buf[10] = v43;
      *&buf[14] = 1024;
      LODWORD(v52[0]) = v44;
      WORD2(v52[0]) = 1024;
      *(v52 + 6) = v18;
      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "#I calculating MT key %hu from current. Current:%hu, Recovery:%hu, steps:%hu", buf, 0x1Au);
    }

    memset(buf, 0, sizeof(buf));
    v52[0] = 0;
    ctu::cf::assign();
    operator new();
  }

  v19 = *(a1 + 96);
  if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_56;
  }

  *buf = 67109632;
  *&buf[4] = v49;
  *&buf[8] = 1024;
  *&buf[10] = v17;
  *&buf[14] = 1024;
  LODWORD(v52[0]) = v18;
  v20 = "#E requested MT ratchet counter is too far ahead %hu while at %hu - gap %hu - failing";
  v21 = v19;
LABEL_55:
  _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, v20, buf, 0x14u);
  v45 = v50;
LABEL_61:
  std::mutex::unlock(v45);
  v46 = *(a1 + 96);
  if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
  {
    v47 = *a3;
    *buf = 67109376;
    *&buf[4] = v47;
    *&buf[8] = 1024;
    *&buf[10] = 2;
    _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "#E failed to get MT key for ratchet counter %hu. Status code: %d", buf, 0xEu);
  }

  *a5 = 2;
  *(a5 + 8) = 0;
  *(a5 + 16) = 0;
}

void sub_1014CC694(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, __int128 a12, uint64_t a13, std::mutex *a14, void *__p, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, std::__shared_weak_count *a23, char a24, void *a25, uint64_t a26)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a18)
  {
    operator delete(a18);
  }

  if (a25)
  {
    operator delete(a25);
  }

  if (a23)
  {
    sub_100004A34(a23);
  }

  v29 = *(v27 - 144);
  if (v29)
  {
    *(v27 - 136) = v29;
    operator delete(v29);
  }

  if (v26)
  {
    sub_100004A34(v26);
  }

  _Unwind_Resume(exception_object);
}

void sub_1014CC884(uint64_t a1@<X0>, int a2@<W1>, char **a3@<X2>, char **a4@<X3>, std::__shared_weak_count **a5@<X8>)
{
  v7 = *(a1 + 32);
  *a5 = 0;
  a5[1] = 0;
  if (!v7)
  {
    goto LABEL_8;
  }

  v10 = a1 + 32;
  do
  {
    if (*(v7 + 32) >= a2)
    {
      v10 = v7;
    }

    v7 = *(v7 + 8 * (*(v7 + 32) < a2));
  }

  while (v7);
  if (v10 == a1 + 32 || *(v10 + 32) > a2)
  {
LABEL_8:
    v11 = *(a1 + 96);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v23 = "s1";
    if (!a2)
    {
      v23 = "s0";
    }

    LODWORD(v38) = 136315138;
    *(&v38 + 4) = v23;
    v22 = "aka_hmac_tag for SatMsg_SubscriptionID %s - missing";
LABEL_31:
    _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, v22, &v38, 0xCu);
    return;
  }

  v12 = sub_100007A6C(a1 + 120, (v10 + 40));
  if (a1 + 128 == v12)
  {
    v11 = *(a1 + 96);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v18 = *(v10 + 63);
      v19 = (v18 & 0x80u) != 0;
      if ((v18 & 0x80u) != 0)
      {
        v18 = *(v10 + 48);
      }

      if (v19)
      {
        v20 = *(v10 + 40);
      }

      else
      {
        v20 = (v10 + 40);
      }

      if (v18)
      {
        v21 = v20;
      }

      else
      {
        v21 = "<invalid>";
      }

      LODWORD(v38) = 136315138;
      *(&v38 + 4) = v21;
      v22 = "aka_hmac_tag for '%s' - missing keys";
      goto LABEL_31;
    }
  }

  else
  {
    v13 = v12;
    v14 = sub_100007A6C(a1 + 48, (v10 + 40));
    if (a1 + 56 == v14)
    {
      v11 = *(a1 + 96);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v24 = *(v10 + 63);
        v25 = (v24 & 0x80u) != 0;
        if ((v24 & 0x80u) != 0)
        {
          v24 = *(v10 + 48);
        }

        if (v25)
        {
          v26 = *(v10 + 40);
        }

        else
        {
          v26 = (v10 + 40);
        }

        if (v24)
        {
          v27 = v26;
        }

        else
        {
          v27 = "<invalid>";
        }

        LODWORD(v38) = 136315138;
        *(&v38 + 4) = v27;
        v22 = "aka_hmac_tag for '%s' - missing cfg";
        goto LABEL_31;
      }
    }

    else
    {
      v15 = v14;
      v38 = 0uLL;
      v39 = 0;
      sub_10005F5A8(&v38, 0, *a3, a3[1], a3[1] - *a3);
      sub_10005F5A8(&v38, *(&v38 + 1), *a4, a4[1], a4[1] - *a4);
      sub_1014B8AEC(&v38, *(*(v13 + 56) + 184));
      v16 = 0;
      v35 = 0;
      v36 = 0;
      v37 = 0;
      do
      {
        v30[0] = aComMidwaySecur_8[v16];
        sub_1001CD884(&v35, v30);
        ++v16;
      }

      while (v16 != 49);
      v33 = 0;
      v34 = 0;
      sub_101336674((a1 + 96), 0x20uLL, &v33);
      if (v33)
      {
        *v30 = 0;
        v31 = 0;
        v32 = 0;
        sub_1014B8AEC(v30, *(*(v15 + 56) + 88));
        sub_1014B8AEC(v30, *(*(v13 + 56) + 64));
        for (i = 0; i != 5; ++i)
        {
          LOBYTE(__p) = aMario[i];
          sub_1001CD884(v30, &__p);
        }

        sub_1014B8A74(v30, *(v15 + 56));
        sub_1014B8A74(v30, *(v15 + 56) + 32);
        operator new();
      }

      v28 = *(a1 + 96);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        *v30 = 0;
        _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "failed to derive akaHMACLinkedKey key", v30, 2u);
      }

      if (v34)
      {
        sub_100004A34(v34);
      }

      if (v35)
      {
        v36 = v35;
        operator delete(v35);
      }

      if (v38)
      {
        *(&v38 + 1) = v38;
        operator delete(v38);
      }
    }
  }
}

void sub_1014CCDB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19, void *a20, uint64_t a21)
{
  TMKXPCServer.shutdown()();
  sub_100004A34(v22);
  if (__p)
  {
    operator delete(__p);
  }

  if (a19)
  {
    sub_100004A34(a19);
  }

  if (a20)
  {
    operator delete(a20);
  }

  v25 = *(v23 - 112);
  if (v25)
  {
    *(v23 - 104) = v25;
    operator delete(v25);
  }

  v26 = *(v21 + 8);
  if (v26)
  {
    sub_100004A34(v26);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1014CCE4C(NSObject **a1, const __CFData *a2)
{
  data = 0;
  v13 = 0;
  v14 = 0;
  sub_1014B8AEC(&data, a2);
  for (i = 0; i != 61; ++i)
  {
    LOBYTE(md) = aComMidwaySecur_9[i];
    sub_1001CD884(&data, &md);
  }

  md = 0;
  v10 = 0;
  v11 = 0;
  sub_1000CFAD0(&md, 32);
  if (CC_SHA256(data, v13 - data, md))
  {
    v4 = md;
    v5 = *md;
LABEL_8:
    v10 = v4;
    operator delete(v4);
    goto LABEL_9;
  }

  v6 = *a1;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    *v8 = 0;
    _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "CC_SHA256 failed!", v8, 2u);
  }

  v4 = md;
  v5 = 255;
  if (md)
  {
    goto LABEL_8;
  }

LABEL_9:
  if (data)
  {
    v13 = data;
    operator delete(data);
  }

  return v5;
}

void sub_1014CCF58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_1014CCF94(void *a1, os_log_t *a2, uint64_t *a3, uint64_t a4, char *__s)
{
  v5 = __s;
  __p = 0;
  v19 = 0;
  v20 = 0;
  v10 = strlen(__s);
  if (v10)
  {
    v11 = v10;
    do
    {
      v12 = *v5++;
      LOBYTE(v16) = v12;
      sub_1001CD884(&__p, &v16);
      --v11;
    }

    while (v11);
  }

  *a1 = 0;
  a1[1] = 0;
  v13 = *a3;
  v14 = a3[1];
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (a4)
  {
    while (v13)
    {
      sub_101336824(a2, 0x20uLL, &v16);
      v13 = v16;
      v15 = v17;
      v16 = 0;
      v17 = 0;
      if (v14)
      {
        sub_100004A34(v14);
        if (v17)
        {
          sub_100004A34(v17);
        }
      }

      v14 = v15;
      if (!--a4)
      {
        goto LABEL_14;
      }
    }
  }

  v15 = v14;
LABEL_14:
  *a1 = v13;
  a1[1] = v15;
  if (__p)
  {
    v19 = __p;
    operator delete(__p);
  }
}

void sub_1014CD090(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  *v13 = v14;
  v13[1] = v15;
  if (v15)
  {
    sub_100004A34(v15);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1014CD0C4(uint64_t a1)
{
  *a1 = off_101F42918;
  sub_100DE3E98(*(a1 + 128));
  v2 = *(a1 + 112);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 96));

  return sub_1014B9680(a1);
}

void sub_1014CD130(uint64_t a1)
{
  *a1 = off_101F42918;
  sub_100DE3E98(*(a1 + 128));
  v2 = *(a1 + 112);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 96));
  sub_1014B9680(a1);

  operator delete();
}

uint64_t sub_1014CD1C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 24);
  if (!v4)
  {
    sub_100022DB4();
  }

  v5 = *(*v4 + 48);

  return v5();
}

void sub_1014CD24C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10000501C(__p, "unsupported device");
  sub_1014CAAAC(a3, __p, 0);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1014CD2A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1014CD2C4(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = *(v4 - 1);
        if (v6)
        {
          std::__shared_weak_count::__release_weak(v6);
        }

        v4 -= 16;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

const void **sub_1014CD34C(__CFDictionary **a1, uint64_t a2)
{
  theDict = 0;
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    theDict = Mutable;
    v7 = 0;
    sub_1000296E0(&v7);
    Mutable = theDict;
  }

  if (*a2)
  {
    CFDictionarySetValue(Mutable, *(a2 + 16), *a2);
    CFDictionarySetValue(theDict, *(a2 + 24), [NSNumber numberWithUnsignedShort:*(a2 + 8)]);
    Mutable = theDict;
  }

  *a1 = Mutable;
  if (Mutable)
  {
    CFRetain(Mutable);
  }

  return sub_1000296E0(&theDict);
}

uint64_t *sub_1014CD424(uint64_t *a1)
{
  v43 = a1;
  v2 = *a1;
  ServiceMap = Registry::getServiceMap(a1[2]);
  v4 = ServiceMap;
  v6 = v5;
  if ((v5 & 0x8000000000000000) != 0)
  {
    v7 = (v5 & 0x7FFFFFFFFFFFFFFFLL);
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
  v42 = a1;
  __p = v6;
  v10 = sub_100009510(&v4[1].__m_.__sig, &__p);
  if (v10 && (v11 = v10[4]) != 0)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    std::mutex::unlock(v4);
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    v40 = v11;
    sub_100004A34(v11);
    v12 = 0;
  }

  else
  {
    std::mutex::unlock(v4);
    v40 = 0;
    v12 = 1;
  }

  v41 = v12;
  v44 = 0;
  sub_1014C2C20(&v44, *v2);
  v13 = v42;
  v14 = *(v2 + 24);
  if (v14 != (v2 + 32))
  {
    do
    {
      v15 = *v2;
      v16 = Registry::getServiceMap(*(v13 + 16));
      v17 = v16;
      v18 = v5;
      if ((v5 & 0x8000000000000000) != 0)
      {
        v19 = 5381;
        v20 = (v5 & 0x7FFFFFFFFFFFFFFFLL);
        do
        {
          v18 = v19;
          v21 = *v20++;
          v19 = (33 * v19) ^ v21;
        }

        while (v21);
      }

      std::mutex::lock(v16);
      __p = v18;
      v22 = sub_100009510(&v17[1].__m_.__sig, &__p);
      if (v22)
      {
        v24 = v22[3];
        v23 = v22[4];
        if (v23)
        {
          atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v17);
          atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
          v13 = v42;
          sub_100004A34(v23);
          v25 = 0;
          goto LABEL_17;
        }
      }

      else
      {
        v24 = 0;
      }

      std::mutex::unlock(v17);
      v23 = 0;
      v25 = 1;
LABEL_17:
      v49 = 0;
      sub_1014C2C20(&v49, v15);
      if (v24 && v49)
      {
        v47 = 0;
        v48 = v49;
        __p = 0;
        v46 = 0;
        sub_10005B328(&__p, &v48, &v49, 1uLL);
        (*(*v24 + 32))(v24, v14 + 5, @"ue-pub-key", @"SatMsg", &__p, 4);
        if (__p)
        {
          v46 = __p;
          operator delete(__p);
        }

        v47 = 0;
        v48 = v49;
        __p = 0;
        v46 = 0;
        sub_10005B328(&__p, &v48, &v49, 1uLL);
        (*(*v24 + 32))(v24, v14 + 5, @"cred-key", @"SatMsg", &__p, 4);
        if (__p)
        {
          v46 = __p;
          operator delete(__p);
        }

        v47 = 0;
        v48 = v49;
        __p = 0;
        v46 = 0;
        sub_10005B328(&__p, &v48, &v49, 1uLL);
        (*(*v24 + 32))(v24, v14 + 5, @"msisdn-key", @"SatMsg", &__p, 4);
        if (__p)
        {
          v46 = __p;
          operator delete(__p);
        }

        v47 = 0;
        v48 = v49;
        __p = 0;
        v46 = 0;
        sub_10005B328(&__p, &v48, &v49, 1uLL);
        (*(*v24 + 32))(v24, v14 + 5, @"hmac-link-key", @"SatMsg", &__p, 4);
        if (__p)
        {
          v46 = __p;
          operator delete(__p);
        }

        v47 = 0;
        v48 = v49;
        __p = 0;
        v46 = 0;
        sub_10005B328(&__p, &v48, &v49, 1uLL);
        (*(*v24 + 32))(v24, v14 + 5, @"mt-key", @"SatMsg", &__p, 4);
        if (__p)
        {
          v46 = __p;
          operator delete(__p);
        }

        v47 = 0;
        v48 = v49;
        __p = 0;
        v46 = 0;
        sub_10005B328(&__p, &v48, &v49, 1uLL);
        (*(*v24 + 32))(v24, v14 + 5, @"mt-recovery-key", @"SatMsg", &__p, 4);
        if (__p)
        {
          v46 = __p;
          operator delete(__p);
        }

        v47 = 0;
        v48 = v49;
        __p = 0;
        v46 = 0;
        sub_10005B328(&__p, &v48, &v49, 1uLL);
        (*(*v24 + 32))(v24, v14 + 5, @"mo-key", @"SatMsg", &__p, 4);
        if (__p)
        {
          v46 = __p;
          operator delete(__p);
        }
      }

      sub_100005978(&v49);
      if ((v25 & 1) == 0)
      {
        sub_100004A34(v23);
      }

      v26 = v14[1];
      if (v26)
      {
        do
        {
          v27 = v26;
          v26 = *v26;
        }

        while (v26);
      }

      else
      {
        do
        {
          v27 = v14[2];
          v28 = *v27 == v14;
          v14 = v27;
        }

        while (!v28);
      }

      v14 = v27;
    }

    while (v27 != (v2 + 32));
  }

  v29 = Registry::getServiceMap(*(v13 + 16));
  v30 = v29;
  v31 = "8UStorage";
  if (("8UStorage" & 0x8000000000000000) != 0)
  {
    v32 = ("8UStorage" & 0x7FFFFFFFFFFFFFFFLL);
    v33 = 5381;
    do
    {
      v31 = v33;
      v34 = *v32++;
      v33 = (33 * v33) ^ v34;
    }

    while (v34);
  }

  std::mutex::lock(v29);
  __p = v31;
  v35 = sub_100009510(&v30[1].__m_.__sig, &__p);
  if (v35)
  {
    v37 = v35[3];
    v36 = v35[4];
    if (v36)
    {
      atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v30);
      atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v36);
      v38 = 0;
      goto LABEL_49;
    }
  }

  else
  {
    v37 = 0;
  }

  std::mutex::unlock(v30);
  v36 = 0;
  v38 = 1;
LABEL_49:
  v49 = v44;
  v46 = 0;
  v47 = 0;
  __p = 0;
  sub_10005B328(&__p, &v49, &v50, 1uLL);
  sub_10071BDE8(v37, @"offgridKey", @"SatMsg", &__p, 4);
  if (__p)
  {
    v46 = __p;
    operator delete(__p);
  }

  if ((v38 & 1) == 0)
  {
    sub_100004A34(v36);
  }

  sub_100005978(&v44);
  if ((v41 & 1) == 0)
  {
    sub_100004A34(v40);
  }

  return sub_100313630(&v43);
}

void sub_1014CDAB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, int a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, const void *a17, void *__p, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (__p)
  {
    a19 = __p;
    operator delete(__p);
  }

  if ((v23 & 1) == 0)
  {
    sub_100004A34(v22);
  }

  sub_100005978(&a17);
  if ((a12 & 1) == 0)
  {
    sub_100004A34(a10);
  }

  sub_100313630(&a16);
  _Unwind_Resume(a1);
}

const void **sub_1014CDBC0(const void **a1)
{
  sub_1000279DC(a1 + 2);
  sub_100005978(a1 + 1);

  return sub_100005978(a1);
}

const void **sub_1014CDC04(const void **result, const void **a2)
{
  v3 = result;
  v4 = *result;
  if (*result != a2)
  {
    v5 = *v4;
    *v4 = 0;
    v12 = v5;
    *v4 = *a2;
    *a2 = 0;
    result = sub_100005978(&v12);
  }

  v6 = a2 + 1;
  v7 = v3[1];
  if (v7 != a2 + 1)
  {
    v8 = *v7;
    *v7 = 0;
    v12 = v8;
    *v7 = *v6;
    *v6 = 0;
    result = sub_100005978(&v12);
  }

  v9 = a2 + 2;
  v10 = v3[2];
  if (v10 != a2 + 2)
  {
    v11 = *v10;
    *v10 = 0;
    v12 = v11;
    *v10 = *v9;
    *v9 = 0;
    return sub_100010250(&v12);
  }

  return result;
}

const void **sub_1014CDCBC(const void **a1)
{
  sub_100010250(a1 + 2);
  sub_100005978(a1 + 1);

  return sub_100005978(a1);
}

const void **sub_1014CDD00(uint64_t a1)
{
  sub_100005978((a1 + 32));
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return sub_1005A16F4(a1);
}

const void **sub_1014CDD4C(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void sub_1014CDDA0(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F42A80;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1014CDDF4(uint64_t a1)
{
  sub_100010250((a1 + 136));
  sub_100005978((a1 + 128));
  sub_100005978((a1 + 120));
  sub_10002D760((a1 + 112));
  sub_100005978((a1 + 104));
  v2 = *(a1 + 96);
  if (v2)
  {
    sub_100004A34(v2);
  }

  if (*(a1 + 80) == 1 && *(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  if (*(a1 + 48) == 1 && *(a1 + 47) < 0)
  {
    v3 = *(a1 + 24);

    operator delete(v3);
  }
}

uint64_t sub_1014CDE9C(void **a1, uint64_t ***a2, uint64_t a3)
{
  v4 = (a1 + 1);
  v3 = a1[1];
  if (!v3)
  {
    goto LABEL_7;
  }

  while (1)
  {
    while (1)
    {
      v6 = v3;
      if ((sub_1000068BC(a2, v3 + 32) & 0x80) == 0)
      {
        break;
      }

      v3 = *v6;
      v4 = v6;
      if (!*v6)
      {
        goto LABEL_7;
      }
    }

    result = sub_1000068BC(v6 + 4, a2);
    if ((result & 0x80) == 0)
    {
      break;
    }

    v4 = v6 + 8;
    v3 = *(v6 + 1);
    if (!v3)
    {
      goto LABEL_7;
    }
  }

  if (!*v4)
  {
LABEL_7:
    operator new();
  }

  return result;
}

void sub_1014CDFE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000D57A8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1014CDFF8(uint64_t a1)
{
  sub_100E27210(*(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = *(v3 + 16);
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    sub_100E27210(v2);
  }

  return a1;
}

void sub_1014CE04C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1014CE0A0(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1014CE0E0(uint64_t result)
{
  if (result)
  {
    return (*(*result + 32))();
  }

  return result;
}

uint64_t *sub_1014CE10C(uint64_t *a1)
{
  v1 = *a1;
  v5 = a1;
  v6 = v1;
  v2 = *v1;
  Registry::createRestModuleOneTimeUseConnection(&v8, *(*v1 + 48));
  ctu::RestModule::connect();
  if (v9)
  {
    sub_100004A34(v9);
  }

  v3 = *(v2 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I initialized", buf, 2u);
  }

  sub_10024BAAC(&v6);
  return sub_1000049E0(&v5);
}

void sub_1014CE1AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_100004A34(a14);
  }

  sub_10024BAAC(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

void sub_1014CE1FC(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F42B30;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_1014CE278(void *a1)
{
  *a1 = off_101F42B80;
  v2 = a1[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_1014CE2C4(void *a1)
{
  *a1 = off_101F42B80;
  v1 = a1[4];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_1014CE3A4(uint64_t result, uint64_t a2)
{
  *a2 = off_101F42B80;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 32);
  *(a2 + 24) = *(result + 24);
  *(a2 + 32) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1014CE3E4(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1014CE3F4(void *__p)
{
  v2 = __p[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_1014CE434(uint64_t *a1, xpc_object_t *a2)
{
  sub_1008479D0(a1[1], a2);
  v3 = a1[4];
  if (v3)
  {
    v4 = a1[2];
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      if (a1[3])
      {
        sub_1014C0DA0(v4);
      }

      sub_100004A34(v6);
    }
  }
}

uint64_t sub_1014CE4C4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_1014CE510(void *a1)
{
  *a1 = off_101F42C00;
  v2 = a1[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_1014CE55C(void *a1)
{
  *a1 = off_101F42C00;
  v1 = a1[4];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_1014CE63C(uint64_t result, uint64_t a2)
{
  *a2 = off_101F42C00;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 32);
  *(a2 + 24) = *(result + 24);
  *(a2 + 32) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1014CE67C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1014CE68C(void *__p)
{
  v2 = __p[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_1014CE6CC(uint64_t *a1, xpc_object_t *a2)
{
  sub_10011E228(a1[1], a2);
  v3 = a1[4];
  if (v3)
  {
    v4 = a1[2];
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      if (a1[3])
      {
        sub_1014C139C(v4);
      }

      sub_100004A34(v6);
    }
  }
}

uint64_t sub_1014CE75C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1014CEFE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void **a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, const void **a19, char a20, int a21, __int16 a22, char a23, char a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, char a31, int a32, __int16 a33, char a34, char a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, int a42, __int16 a43, char a44, char a45)
{
  sub_100004A34(v46);
  sub_100004A34(v47);
  if (a30 < 0)
  {
    operator delete(__p);
  }

  v49 = *a14;
  if (*a14)
  {
    *(v45 + 128) = v49;
    operator delete(v49);
  }

  sub_100DE3E98(*(v45 + 104));
  sub_100DE3E98(*(v45 + 80));
  sub_100E27210(*(v45 + 56));
  sub_1000475BC(a19);
  std::__shared_weak_count::~__shared_weak_count(v45);
  operator delete(v50);
  _Unwind_Resume(a1);
}

void sub_1014CF1AC(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F42C80;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

const void **sub_1014CF200(uint64_t a1)
{
  v2 = *(a1 + 120);
  if (v2)
  {
    *(a1 + 128) = v2;
    operator delete(v2);
  }

  sub_100DE3E98(*(a1 + 104));
  sub_100DE3E98(*(a1 + 80));
  sub_100E27210(*(a1 + 56));

  return sub_1000475BC((a1 + 24));
}

uint64_t sub_1014CF260(uint64_t result, int a2, uint64_t a3)
{
  v3 = *(result + 8);
  if (!v3)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v4 = v3;
      v5 = *(v3 + 32);
      if (v5 <= a2)
      {
        break;
      }

      v3 = *v4;
      if (!*v4)
      {
        goto LABEL_7;
      }
    }

    if (v5 >= a2)
    {
      return result;
    }

    v3 = v4[1];
    if (!v3)
    {
      goto LABEL_7;
    }
  }
}

char **sub_1014CF36C(char *a1, uint64_t ***a2, uint64_t a3)
{
  v4 = 0;
  result = sub_100005C2C(a1, &v4, a2);
  if (!*result)
  {
    operator new();
  }

  return result;
}

void sub_1014CF474(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F42CD0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1014CF4C8(uint64_t a1)
{
  sub_10002D760((a1 + 208));
  sub_10002D760((a1 + 176));
  sub_10002D760((a1 + 144));
  sub_10002D760((a1 + 112));
  sub_10002D760((a1 + 104));
  sub_10002D760((a1 + 96));
  sub_10002D760((a1 + 88));

  std::mutex::~mutex((a1 + 24));
}

uint64_t sub_1014CF538(uint64_t a1, Registry **a2, uint64_t a3, const __CFUUID *a4)
{
  *a1 = 850045863;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 82) = 0u;
  *(a1 + 104) = @"key";
  *(a1 + 112) = @"counter";
  *(a1 + 120) = 0;
  v7 = a1 + 120;
  *(a1 + 128) = 0;
  *(a1 + 136) = @"key";
  *(a1 + 144) = @"counter";
  *(a1 + 152) = 0;
  v8 = a1 + 152;
  *(a1 + 160) = 0;
  *(a1 + 168) = @"key";
  *(a1 + 176) = @"counter";
  *(a1 + 184) = 0;
  v9 = (a1 + 184);
  ServiceMap = Registry::getServiceMap(*a2);
  v11 = ServiceMap;
  if (v12 < 0)
  {
    v13 = (v12 & 0x7FFFFFFFFFFFFFFFLL);
    v14 = 5381;
    do
    {
      v12 = v14;
      v15 = *v13++;
      v14 = (33 * v14) ^ v15;
    }

    while (v15);
  }

  std::mutex::lock(ServiceMap);
  __p = v12;
  v16 = sub_100009510(&v11[1].__m_.__sig, &__p);
  if (!v16)
  {
    v18 = 0;
    goto LABEL_8;
  }

  v18 = v16[3];
  v17 = v16[4];
  if (!v17)
  {
LABEL_8:
    std::mutex::unlock(v11);
    v17 = 0;
    v19 = 1;
    goto LABEL_9;
  }

  atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v11);
  atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v17);
  v19 = 0;
LABEL_9:
  v28 = 0;
  sub_1014C2C20(&v28, a4);
  if (v18 && v28)
  {
    v30 = v28;
    v25 = 0;
    v26 = 0;
    __p = 0;
    sub_10005B328(&__p, &v30, &v31, 1uLL);
    (*(*v18 + 24))(&v27, v18, a3, @"ue-pub-key", @"SatMsg", &__p, 4);
    sub_1001B1A54(&v31, &v27);
    v20 = (a1 + 64);
    if ((a1 + 64) != &v31)
    {
      cf = *v20;
      *v20 = v31;
      v31 = 0;
      sub_10002D760(&cf);
    }

    sub_10002D760(&v31);
    sub_10000A1EC(&v27);
    if (__p)
    {
      v25 = __p;
      operator delete(__p);
    }

    v30 = v28;
    v25 = 0;
    v26 = 0;
    __p = 0;
    sub_10005B328(&__p, &v30, &v31, 1uLL);
    (*(*v18 + 24))(&v27, v18, a3, @"cred-key", @"SatMsg", &__p, 4);
    sub_1001B1A54(&v31, &v27);
    v21 = (a1 + 72);
    if ((a1 + 72) != &v31)
    {
      cf = *v21;
      *v21 = v31;
      v31 = 0;
      sub_10002D760(&cf);
    }

    sub_10002D760(&v31);
    sub_10000A1EC(&v27);
    if (__p)
    {
      v25 = __p;
      operator delete(__p);
    }

    v30 = v28;
    v25 = 0;
    v26 = 0;
    __p = 0;
    sub_10005B328(&__p, &v30, &v31, 1uLL);
    (*(*v18 + 24))(&v27, v18, a3, @"msisdn-key", @"SatMsg", &__p, 4);
    sub_1001B1A54(&v31, &v27);
    v22 = (a1 + 80);
    if ((a1 + 80) != &v31)
    {
      cf = *v22;
      *v22 = v31;
      v31 = 0;
      sub_10002D760(&cf);
    }

    sub_10002D760(&v31);
    sub_10000A1EC(&v27);
    if (__p)
    {
      v25 = __p;
      operator delete(__p);
    }

    v30 = v28;
    v25 = 0;
    v26 = 0;
    __p = 0;
    sub_10005B328(&__p, &v30, &v31, 1uLL);
    (*(*v18 + 24))(&v27, v18, a3, @"hmac-link-key", @"SatMsg", &__p, 4);
    sub_1001B1A54(&v31, &v27);
    if (v9 != &v31)
    {
      cf = *v9;
      *v9 = v31;
      v31 = 0;
      sub_10002D760(&cf);
    }

    sub_10002D760(&v31);
    sub_10000A1EC(&v27);
    if (__p)
    {
      v25 = __p;
      operator delete(__p);
    }

    v31 = v28;
    v25 = 0;
    v26 = 0;
    __p = 0;
    sub_10005B328(&__p, &v31, &v32, 1uLL);
    (*(*v18 + 24))(&cf, v18, a3, @"mt-key", @"SatMsg", &__p, 4);
    sub_1014CFCA8(a1 + 88, cf);
    sub_10000A1EC(&cf);
    if (__p)
    {
      v25 = __p;
      operator delete(__p);
    }

    v31 = v28;
    v25 = 0;
    v26 = 0;
    __p = 0;
    sub_10005B328(&__p, &v31, &v32, 1uLL);
    (*(*v18 + 24))(&cf, v18, a3, @"mt-recovery-key", @"SatMsg", &__p, 4);
    sub_1014CFCA8(v7, cf);
    sub_10000A1EC(&cf);
    if (__p)
    {
      v25 = __p;
      operator delete(__p);
    }

    v31 = v28;
    v25 = 0;
    v26 = 0;
    __p = 0;
    sub_10005B328(&__p, &v31, &v32, 1uLL);
    (*(*v18 + 24))(&cf, v18, a3, @"mo-key", @"SatMsg", &__p, 4);
    sub_1014CFCA8(v8, cf);
    sub_10000A1EC(&cf);
    if (__p)
    {
      v25 = __p;
      operator delete(__p);
    }
  }

  sub_100005978(&v28);
  if ((v19 & 1) == 0)
  {
    sub_100004A34(v17);
  }

  return a1;
}

void sub_1014CFBAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13, int a14, const void *a15, const void *a16)
{
  sub_10000A1EC(&a16);
  if (__p)
  {
    operator delete(__p);
  }

  sub_100005978(&a15);
  if ((v21 & 1) == 0)
  {
    sub_100004A34(v20);
  }

  sub_10002D760(v19);
  sub_10002D760(v18);
  sub_10002D760(v17);
  sub_10002D760((v16 + 88));
  sub_10002D760((v16 + 80));
  sub_10002D760((v16 + 72));
  sub_10002D760((v16 + 64));
  std::mutex::~mutex(v16);
  _Unwind_Resume(a1);
}

uint64_t sub_1014CFCA8(uint64_t result, CFTypeRef cf)
{
  if (cf)
  {
    v3 = result;
    v4 = CFGetTypeID(cf);
    result = CFDictionaryGetTypeID();
    if (v4 == result)
    {
      Value = CFDictionaryGetValue(cf, *(v3 + 16));
      if (Value)
      {
        v6 = Value;
        v7 = CFGetTypeID(Value);
        if (v7 == CFDataGetTypeID())
        {
          v8 = v6;
        }

        else
        {
          v8 = 0;
        }
      }

      else
      {
        v8 = 0;
      }

      v14 = v8;
      sub_1009A440C(v3, &v14);
      v9 = CFDictionaryGetValue(cf, *(v3 + 24));
      if (v9)
      {
        v11 = v9;
        v12 = CFGetTypeID(v9);
        if (v12 == CFNumberGetTypeID())
        {
          v13 = v11;
        }

        else
        {
          v13 = 0;
        }
      }

      else
      {
        v13 = 0;
      }

      v15 = 0;
      result = ctu::cf::assign(&v15, v13, v10);
      *(v3 + 8) = v15;
    }
  }

  return result;
}

uint64_t sub_1014CFDF0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F42D20;
  a2[1] = v2;
  return result;
}

void sub_1014CFE1C(uint64_t a1, uint64_t *a2)
{
  v3 = *(*(a1 + 8) + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    if (*(a2 + 23) >= 0)
    {
      v4 = a2;
    }

    else
    {
      v4 = *a2;
    }

    v5 = 136315138;
    v6 = v4;
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%s", &v5, 0xCu);
  }
}

uint64_t sub_1014CFED0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1014CFF8C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F42DA0;
  a2[1] = v2;
  return result;
}

void sub_1014CFFB8(uint64_t a1, uint64_t *a2)
{
  v3 = *(*(a1 + 8) + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    if (*(a2 + 23) >= 0)
    {
      v4 = a2;
    }

    else
    {
      v4 = *a2;
    }

    v5 = 136315138;
    v6 = v4;
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%s", &v5, 0xCu);
  }
}

uint64_t sub_1014D006C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1014D0128(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F42E20;
  a2[1] = v2;
  return result;
}

void sub_1014D0154(uint64_t a1, uint64_t *a2)
{
  v3 = *(*(a1 + 8) + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    if (*(a2 + 23) >= 0)
    {
      v4 = a2;
    }

    else
    {
      v4 = *a2;
    }

    v5 = 136315138;
    v6 = v4;
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%s", &v5, 0xCu);
  }
}

uint64_t sub_1014D0208(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1014D0274(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F42EA0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1014D02C8(uint64_t a1)
{
  sub_100009970(a1 + 48, *(a1 + 56));
  v2 = *(a1 + 32);

  sub_100DE3E98(v2);
}

void sub_1014D03FC(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F42EF0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1014D0450(uint64_t a1)
{
  v2 = *(a1 + 136);
  *(a1 + 136) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 120);
  if (v3)
  {
    sub_100004A34(v3);
  }

  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  v4 = *(a1 + 32);
  if (v4)
  {

    sub_100004A34(v4);
  }
}

uint64_t sub_1014D0504(void **a1, uint64_t ***a2, uint64_t a3)
{
  v4 = (a1 + 1);
  v3 = a1[1];
  if (!v3)
  {
    goto LABEL_7;
  }

  while (1)
  {
    while (1)
    {
      v6 = v3;
      if ((sub_1000068BC(a2, v3 + 32) & 0x80) == 0)
      {
        break;
      }

      v3 = *v6;
      v4 = v6;
      if (!*v6)
      {
        goto LABEL_7;
      }
    }

    result = sub_1000068BC(v6 + 4, a2);
    if ((result & 0x80) == 0)
    {
      break;
    }

    v4 = v6 + 8;
    v3 = *(v6 + 1);
    if (!v3)
    {
      goto LABEL_7;
    }
  }

  if (!*v4)
  {
LABEL_7:
    operator new();
  }

  return result;
}

void sub_1014D064C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000D57A8(va);
  _Unwind_Resume(a1);
}

void sub_1014D0660(uint64_t **a1)
{
  v1 = **a1;
  v2 = *(v1 + 328);
  v3 = *(v1 + 336);
  while (v2 != v3)
  {
    v4 = v2[1];
    if (v4)
    {
      v5 = std::__shared_weak_count::lock(v4);
      if (v5)
      {
        v6 = v5;
        if (*v2)
        {
          (*(**v2 + 16))(*v2, *(v1 + 200));
        }

        sub_100004A34(v6);
      }
    }

    v2 += 2;
  }

  operator delete();
}

void sub_1014D0754(void **a1)
{
  v1 = a1;
  (*(***a1 + 128))(**a1);
  operator delete();
}

void sub_1014D0814(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F42F40;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1014D0900(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F42F90;
  a2[1] = v2;
  return result;
}

void sub_1014D092C(uint64_t a1, uint64_t *a2)
{
  v3 = *(*(a1 + 8) + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v4 = a2;
    }

    else
    {
      v4 = *a2;
    }

    v5 = 136315138;
    v6 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s", &v5, 0xCu);
  }
}

uint64_t sub_1014D09DC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1014D0A28(uint64_t **a1, char *a2)
{
  v3 = sub_100007A6C(a1, a2);
  if (a1 + 1 != v3)
  {
    v4 = v3;
    v5 = v3[1];
    if (v5)
    {
      do
      {
        v6 = v5;
        v5 = *v5;
      }

      while (v5);
    }

    else
    {
      v7 = v3;
      do
      {
        v6 = v7[2];
        v8 = *v6 == v7;
        v7 = v6;
      }

      while (!v8);
    }

    if (*a1 == v3)
    {
      *a1 = v6;
    }

    v9 = a1[1];
    a1[2] = (a1[2] - 1);
    sub_100018288(v9, v4);
    sub_1000D57F4((v4 + 4));

    operator delete(v4);
  }
}

void sub_1014D0F14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, const void **a16)
{
  v18 = *a10;
  if (*a10)
  {
    *(v16 + 128) = v18;
    operator delete(v18);
  }

  sub_100DE3E98(*(v16 + 104));
  sub_100DE3E98(*(v16 + 80));
  sub_100E27210(*(v16 + 56));
  sub_1000475BC(a16);
  std::__shared_weak_count::~__shared_weak_count(v16);
  operator delete(v19);
  _Unwind_Resume(a1);
}

uint64_t sub_1014D1068(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F43010;
  a2[1] = v2;
  return result;
}

void sub_1014D1094(uint64_t a1, uint64_t *a2)
{
  v3 = *(*(a1 + 8) + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v4 = a2;
    }

    else
    {
      v4 = *a2;
    }

    v5 = 136315138;
    v6 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s", &v5, 0xCu);
  }
}

uint64_t sub_1014D1144(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_1014D1190(void **a1)
{
  v1 = *a1;
  v6 = a1;
  v7 = v1;
  v2 = *v1;
  v3 = *(*v1 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v1[1];
    *buf = 138412290;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I notify IDS new config %@ is available", buf, 0xCu);
  }

  (*(**(v2 + 352) + 16))(*(v2 + 352));
  sub_100FCC8E8(&v7);
  return sub_1000049E0(&v6);
}

void sub_1014D1278(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100FCC8E8(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_1014D1304(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F43090;
  a2[1] = v2;
  return result;
}

void sub_1014D1330(uint64_t a1, uint64_t *a2)
{
  v3 = *(*(a1 + 8) + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v4 = a2;
    }

    else
    {
      v4 = *a2;
    }

    v5 = 136315138;
    v6 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s", &v5, 0xCu);
  }
}

uint64_t sub_1014D13E0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1014D149C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F43110;
  a2[1] = v2;
  return result;
}

void sub_1014D14C8(uint64_t a1, uint64_t *a2)
{
  v3 = *(*(a1 + 8) + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v4 = a2;
    }

    else
    {
      v4 = *a2;
    }

    v5 = 136315138;
    v6 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s", &v5, 0xCu);
  }
}

uint64_t sub_1014D1578(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1014D1638(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F43190;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_1014D1668(uint64_t a1, uint64_t *a2)
{
  v4 = *(*(a1 + 8) + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = PersonalityInfo::logPrefix(**(a1 + 16));
    if (*(a2 + 23) >= 0)
    {
      v6 = a2;
    }

    else
    {
      v6 = *a2;
    }

    v7 = 136315650;
    v8 = v5;
    v9 = 2080;
    v10 = " ";
    v11 = 2080;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%s%s", &v7, 0x20u);
  }
}

uint64_t sub_1014D174C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1014D180C(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F43210;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_1014D183C(uint64_t a1, uint64_t *a2)
{
  v4 = *(*(a1 + 8) + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = PersonalityInfo::logPrefix(**(a1 + 16));
    if (*(a2 + 23) >= 0)
    {
      v6 = a2;
    }

    else
    {
      v6 = *a2;
    }

    v7 = 136315650;
    v8 = v5;
    v9 = 2080;
    v10 = " ";
    v11 = 2080;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%s%s", &v7, 0x20u);
  }
}

uint64_t sub_1014D1920(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F43270))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1014D19DC(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F43290;
  a2[1] = v2;
  return result;
}

void sub_1014D1A08(uint64_t a1, uint64_t *a2)
{
  v3 = *(*(a1 + 8) + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v4 = a2;
    }

    else
    {
      v4 = *a2;
    }

    v5 = 136315138;
    v6 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#E %s", &v5, 0xCu);
  }
}

uint64_t sub_1014D1AB8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1014D1B74(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F43310;
  a2[1] = v2;
  return result;
}

void sub_1014D1BA0(uint64_t a1, uint64_t *a2)
{
  v3 = *(*(a1 + 8) + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v4 = a2;
    }

    else
    {
      v4 = *a2;
    }

    v5 = 136315138;
    v6 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#E %s", &v5, 0xCu);
  }
}

uint64_t sub_1014D1C50(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1014D1D10(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F43390;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_1014D1D40(uint64_t a1, uint64_t *a2)
{
  v4 = *(*(a1 + 8) + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = PersonalityInfo::logPrefix(**(a1 + 16));
    if (*(a2 + 23) >= 0)
    {
      v6 = a2;
    }

    else
    {
      v6 = *a2;
    }

    v7 = 136315650;
    v8 = v5;
    v9 = 2080;
    v10 = " ";
    v11 = 2080;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%s%s", &v7, 0x20u);
  }
}

uint64_t sub_1014D1E24(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1014D1EE4(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F43410;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_1014D1F14(uint64_t a1, uint64_t *a2)
{
  v4 = *(*(a1 + 8) + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = PersonalityInfo::logPrefix(**(a1 + 16));
    if (*(a2 + 23) >= 0)
    {
      v6 = a2;
    }

    else
    {
      v6 = *a2;
    }

    v7 = 136315650;
    v8 = v5;
    v9 = 2080;
    v10 = " ";
    v11 = 2080;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%s%s", &v7, 0x20u);
  }
}

uint64_t sub_1014D1FF8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1014D20B4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F43490;
  a2[1] = v2;
  return result;
}

void sub_1014D20E0(uint64_t a1, uint64_t *a2)
{
  v3 = *(*(a1 + 8) + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v4 = a2;
    }

    else
    {
      v4 = *a2;
    }

    v5 = 136315138;
    v6 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s", &v5, 0xCu);
  }
}

uint64_t sub_1014D2190(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1014D224C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F43510;
  a2[1] = v2;
  return result;
}

void sub_1014D2278(uint64_t a1, uint64_t *a2)
{
  v3 = *(*(a1 + 8) + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v4 = a2;
    }

    else
    {
      v4 = *a2;
    }

    v5 = 136315138;
    v6 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s", &v5, 0xCu);
  }
}

uint64_t sub_1014D2328(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1014D2374(uint64_t **a1)
{
  v3 = a1;
  v1 = **a1;
  v2 = *(v1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I notify IDS new re-sync is needed", buf, 2u);
  }

  (*(**(v1 + 352) + 16))(*(v1 + 352));
  operator delete();
}

void *sub_1014D2454(void *a1)
{
  *a1 = off_101F43590;
  v2 = a1[3];
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

void sub_1014D24A0(void *a1)
{
  *a1 = off_101F43590;
  v1 = a1[3];
  if (v1)
  {
    sub_100004A34(v1);
  }

  operator delete();
}

uint64_t sub_1014D2580(uint64_t result, uint64_t a2)
{
  *a2 = off_101F43590;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1014D25C0(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    sub_100004A34(v1);
  }
}

void sub_1014D25D0(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    sub_100004A34(v2);
  }

  operator delete(__p);
}

void sub_1014D2610(uint64_t a1, uint64_t *a2)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  v2 = *(a1 + 8);
  v3 = *(a1 + 24);
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(v2 + 16);
  if (v4)
  {
    if (std::__shared_weak_count::lock(v4))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_1014D27A4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1014D27B4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_1014D2800(uint64_t *a1)
{
  v1 = *a1;
  v34 = a1;
  v35 = v1;
  v2 = *v1;
  if ((*(v1 + 47) & 0x8000000000000000) != 0)
  {
    if (*(v1 + 32))
    {
      goto LABEL_3;
    }
  }

  else if (*(v1 + 47))
  {
LABEL_3:
    v3 = *(v2 + 160);
    if (!v3)
    {
      goto LABEL_57;
    }

    v4 = sub_100007A6C(v3, (*(v1 + 8) + 24));
    if (*(v2 + 160) + 8 == v4)
    {
      goto LABEL_57;
    }

    v5 = *(v1 + 8);
    v6 = *(v4 + 56);
    if (!sub_1014C178C((v6 + 32), (v1 + 24)))
    {
      goto LABEL_57;
    }

    sub_1001696A4((v6 + 32), (v1 + 24));
    v7 = v5 + 24;
    v8 = *(v2 + 40);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      if (*(v1 + 47) >= 0)
      {
        v9 = v1 + 24;
      }

      else
      {
        v9 = *(v1 + 24);
      }

      v10 = *(v5 + 47);
      v11 = (v10 & 0x80u) != 0;
      if ((v10 & 0x80u) != 0)
      {
        v10 = *(v5 + 32);
      }

      if (v11)
      {
        v12 = *(v5 + 24);
      }

      else
      {
        v12 = (v5 + 24);
      }

      if (v10)
      {
        v13 = v12;
      }

      else
      {
        v13 = "<invalid>";
      }

      *buf = 136315394;
      *&buf[4] = v9;
      *&buf[12] = 2080;
      *&buf[14] = v13;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I SMSC %s was set for persona %s", buf, 0x16u);
    }

    if ((atomic_load_explicit(&qword_101FCAC40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_101FCAC40))
    {
      *buf = @"sim-cfg";
      qword_101FCAC80 = 0;
      unk_101FCAC88 = 0;
      qword_101FCAC78 = 0;
      sub_10005B328(&qword_101FCAC78, buf, &buf[8], 1uLL);
      __cxa_atexit(sub_10041F938, &qword_101FCAC78, &_mh_execute_header);
      __cxa_guard_release(&qword_101FCAC40);
    }

    ServiceMap = Registry::getServiceMap(*(v2 + 48));
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
    *buf = v16;
    v20 = sub_100009510(&v15[1].__m_.__sig, buf);
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
LABEL_37:
        if (*(v1 + 47) < 0)
        {
          sub_100005F2C(__dst, *(v1 + 24), *(v1 + 32));
        }

        else
        {
          *__dst = *(v1 + 24);
          v37 = *(v1 + 40);
        }

        if (SHIBYTE(v37) < 0)
        {
          sub_100005F2C(__p, __dst[0], __dst[1]);
        }

        else
        {
          *__p = *__dst;
          v41 = v37;
        }

        v39 = 0;
        if (SHIBYTE(v41) < 0)
        {
          sub_100005F2C(buf, __p[0], __p[1]);
        }

        else
        {
          *buf = *__p;
          *&buf[16] = v41;
        }

        v42 = 0;
        if (ctu::cf::convert_copy())
        {
          v31 = v39;
          v39 = v42;
          v43 = v31;
          sub_100005978(&v43);
        }

        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }

        v32 = v39;
        v38 = v39;
        v39 = 0;
        sub_100005978(&v39);
        if (SHIBYTE(v41) < 0)
        {
          operator delete(__p[0]);
        }

        (*(*v22 + 16))(v22, v7, @"smsc", v32, @"SatMsg", &qword_101FCAC78, 2, 0, v34, v35);
        sub_100005978(&v38);
        if (SHIBYTE(v37) < 0)
        {
          operator delete(__dst[0]);
        }

        if ((v23 & 1) == 0)
        {
          sub_100004A34(v21);
        }

        sub_1014BC424(v2);
        goto LABEL_57;
      }
    }

    else
    {
      v22 = 0;
    }

    std::mutex::unlock(v15);
    v21 = 0;
    v23 = 1;
    goto LABEL_37;
  }

  v24 = *(v2 + 40);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v25 = *(v1 + 8);
    v28 = *(v25 + 24);
    v26 = (v25 + 24);
    v27 = v28;
    v29 = *(v26 + 23);
    v30 = v29;
    if ((v29 & 0x80u) != 0)
    {
      v29 = *(v26 + 1);
    }

    if (v30 < 0)
    {
      v26 = v27;
    }

    if (!v29)
    {
      v26 = "<invalid>";
    }

    *buf = 136315138;
    *&buf[4] = v26;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#I no SMSC for %s reported...", buf, 0xCu);
  }

LABEL_57:
  sub_1014D2D30(&v35);
  return sub_1000049E0(&v34);
}

void sub_1014D2C7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, int a19, __int16 a20, char a21, char a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  __cxa_guard_abort(&qword_101FCAC40);
  sub_1014D2D30(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1014D2D30(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    if (*(v1 + 47) < 0)
    {
      operator delete(*(v1 + 24));
    }

    v2 = *(v1 + 16);
    if (v2)
    {
      sub_100004A34(v2);
    }

    operator delete();
  }

  return a1;
}

void sub_1014D2D94(void ***a1)
{
  v1 = **a1;
  if (!v1[20])
  {
    goto LABEL_20;
  }

  v2 = v1[41];
  v3 = v1[42];
  if (v2 != v3)
  {
    v4 = 0;
    while (1)
    {
      v5 = v2[1];
      if (v5)
      {
        v6 = std::__shared_weak_count::lock(v5);
        if (v6)
        {
          v7 = v6;
          if (*v2)
          {
            (*(**v2 + 24))(buf);
            v8 = *buf;
            *buf = 0uLL;
            if (v4)
            {
              sub_100004A34(v4);
              if (*&buf[8])
              {
                sub_100004A34(*&buf[8]);
              }
            }

            if (v8)
            {
              sub_100004A34(v7);
              v10 = v1[5];
              if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
              {
                v11 = (*(v8 + 8) - *v8) >> 3;
                *buf = 134217984;
                *&buf[4] = v11;
                _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I updating contacts: %zu elems", buf, 0xCu);
              }

              v12 = v1[20];
              v15 = *v12;
              v13 = v12 + 1;
              v14 = v15;
              if (v15 != v13)
              {
                do
                {
                  v16 = v14[7];
                  if (*(&v8 + 1))
                  {
                    atomic_fetch_add_explicit((*(&v8 + 1) + 8), 1uLL, memory_order_relaxed);
                  }

                  v17 = *(v16 + 72);
                  *(v16 + 64) = v8;
                  if (v17)
                  {
                    sub_100004A34(v17);
                  }

                  v18 = v14[1];
                  if (v18)
                  {
                    do
                    {
                      v19 = v18;
                      v18 = *v18;
                    }

                    while (v18);
                  }

                  else
                  {
                    do
                    {
                      v19 = v14[2];
                      v20 = *v19 == v14;
                      v14 = v19;
                    }

                    while (!v20);
                  }

                  v14 = v19;
                }

                while (v19 != v13);
              }

              sub_1014BC424(v1);
              v4 = *(&v8 + 1);
              if (!*(&v8 + 1))
              {
                goto LABEL_20;
              }

              goto LABEL_19;
            }

            v4 = *(&v8 + 1);
          }

          sub_100004A34(v7);
        }
      }

      v2 += 2;
      if (v2 == v3)
      {
        goto LABEL_16;
      }
    }
  }

  v4 = 0;
LABEL_16:
  v9 = v1[5];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I NO contacts yet to set", buf, 2u);
  }

  if (!v4)
  {
LABEL_20:
    operator delete();
  }

LABEL_19:
  sub_100004A34(v4);
  goto LABEL_20;
}

void sub_1014D2FEC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  if (v2)
  {
    sub_100004A34(v2);
  }

  operator delete();
}

uint64_t sub_1014D30A8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F43610;
  a2[1] = v2;
  return result;
}

void sub_1014D30D4(uint64_t a1, uint64_t *a2)
{
  v3 = *(*(a1 + 8) + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v4 = a2;
    }

    else
    {
      v4 = *a2;
    }

    v5 = 136315138;
    v6 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s", &v5, 0xCu);
  }
}

uint64_t sub_1014D3184(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1014D3240(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F43690;
  a2[1] = v2;
  return result;
}

void sub_1014D326C(uint64_t a1, uint64_t *a2)
{
  v3 = *(*(a1 + 8) + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v4 = a2;
    }

    else
    {
      v4 = *a2;
    }

    v5 = 136315138;
    v6 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s", &v5, 0xCu);
  }
}

uint64_t sub_1014D331C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1014D33D8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F43710;
  a2[1] = v2;
  return result;
}

void sub_1014D3404(uint64_t a1, uint64_t *a2)
{
  v3 = *(*(a1 + 8) + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v4 = a2;
    }

    else
    {
      v4 = *a2;
    }

    v5 = 136315138;
    v6 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s", &v5, 0xCu);
  }
}

uint64_t sub_1014D34B4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1014D3570(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F43790;
  a2[1] = v2;
  return result;
}

void sub_1014D359C(uint64_t a1, uint64_t *a2)
{
  v3 = *(*(a1 + 8) + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v4 = a2;
    }

    else
    {
      v4 = *a2;
    }

    v5 = 136315138;
    v6 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s", &v5, 0xCu);
  }
}

uint64_t sub_1014D364C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1014D36B8(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F43810;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1014D370C(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    a1[8] = v2;
    operator delete(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    a1[5] = v3;

    operator delete(v3);
  }
}

void sub_1014D384C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    dispatch_release(v1);
  }

  if (v2)
  {
    operator delete();
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1014D3874(uint64_t a1, NSObject **a2, void *a3)
{
  ctu::OsLogContext::OsLogContext(&v13, kCtLoggingSystemName, "diag.cellular.health");
  *a1 = 0;
  *(a1 + 8) = 0;
  v6 = *a2;
  *(a1 + 16) = *a2;
  if (v6)
  {
    dispatch_retain(v6);
  }

  *(a1 + 24) = 0;
  ctu::OsLogLogger::OsLogLogger(v14, &v13);
  ctu::OsLogLogger::OsLogLogger((a1 + 32), v14);
  ctu::OsLogLogger::~OsLogLogger(v14);
  ctu::OsLogContext::~OsLogContext(&v13);
  v7 = a3[1];
  *(a1 + 40) = *a3;
  *(a1 + 48) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  sub_10000501C(&__p, "CellularHealth");
  v8 = *(a1 + 16);
  v10 = v8;
  if (v8)
  {
    dispatch_retain(v8);
  }

  ctu::RestModule::RestModule();
  if (v10)
  {
    dispatch_release(v10);
  }

  if (v12 < 0)
  {
    operator delete(__p);
  }

  *(a1 + 72) = 0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0;
  *(a1 + 114) = -1;
  *(a1 + 116) = -1;
  return a1;
}

void sub_1014D39A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, dispatch_object_t object, dispatch_object_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  if (object)
  {
    dispatch_release(object);
  }

  if (a10)
  {
    dispatch_release(a10);
  }

  if (a16 < 0)
  {
    operator delete(__p);
  }

  v19 = v17[6];
  if (v19)
  {
    sub_100004A34(v19);
  }

  ctu::OsLogLogger::~OsLogLogger((v17 + 4));
  sub_1000C0544(v17);
  _Unwind_Resume(a1);
}

void sub_1014D3A24(Registry **a1)
{
  Registry::createRestModuleOneTimeUseConnection(&v1, a1[5]);
  ctu::RestModule::connect();
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_10000501C(&__p, "/cc/props/radio_state");
  operator new();
}

void sub_1014D40E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, dispatch_object_t object, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, char a36)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1014D42A0(uint64_t *a1, int a2)
{
  v3 = a1;
  v4 = a1[4];
  v57 = (a1 + 4);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "handleRadioStateChanged_sync";
    *&buf[12] = 2080;
    *&buf[14] = radioStateAsString();
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s: %s", buf, 0x16u);
  }

  v5 = *(v3 + 18);
  if (v5 == a2 || v5 - 5 > 0xFFFFFFFD)
  {
    return;
  }

  v7 = (v3 + 5);
  ServiceMap = Registry::getServiceMap(v3[5]);
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
  *buf = v10;
  v14 = sub_100009510(&v9[1].__m_.__sig, buf);
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
      goto LABEL_15;
    }
  }

  else
  {
    v16 = 0;
  }

  std::mutex::unlock(v9);
  v15 = 0;
  v17 = 1;
LABEL_15:
  v56 = v15;
  if (v16)
  {
    v52 = v5;
    v53 = (v3 + 5);
    v54 = v3;
    subscriber::makeSimSlotRange();
    v55 = v17;
    v18 = *buf;
    v19 = *&buf[8];
    if (*buf == *&buf[8])
    {
      goto LABEL_32;
    }

    v20 = *&buf[16];
    do
    {
      if (v20(*v18))
      {
        break;
      }

      ++v18;
    }

    while (v18 != v19);
    v21 = *&buf[8];
    if (v18 == *&buf[8])
    {
LABEL_32:
      v22 = 0xFFFF;
    }

    else
    {
      v22 = 0xFFFF;
      do
      {
        v23 = *v18;
        cf = 0;
        (*(*v16 + 96))(&cf, v16, v23, 1, @"ReportHealthIssueMask", 0, 0);
        v24 = cf;
        *v59 = -1;
        if (cf)
        {
          v25 = CFGetTypeID(cf);
          if (v25 == CFNumberGetTypeID())
          {
            ctu::cf::assign(v59, v24, v26);
          }
        }

        v27 = *v59;
        v28 = *v57;
        if (os_log_type_enabled(*v57, OS_LOG_TYPE_DEFAULT))
        {
          *v59 = 67109376;
          v60 = v23;
          v61 = 1024;
          v62 = v27;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#I Read ReportHealthIssueMask on slot%d: 0x%hx", v59, 0xEu);
        }

        sub_10000A1EC(&cf);
        do
        {
          ++v18;
        }

        while (v18 != v19 && (v20(*v18) & 1) == 0);
        v22 &= v27;
      }

      while (v18 != v21);
    }

    v3 = v54;
    *(v54 + 57) = v22;
    v29 = v54[4];
    v30 = os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);
    v7 = v53;
    v5 = v52;
    if (v30)
    {
      *buf = 67109120;
      *&buf[4] = v22;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#I Update ReportHealthIssue Mask: 0x%hx", buf, 8u);
    }

    if ((v55 & 1) == 0)
    {
LABEL_36:
      sub_100004A34(v56);
    }
  }

  else
  {
    v32 = *v57;
    v30 = os_log_type_enabled(*v57, OS_LOG_TYPE_DEFAULT);
    if (v30)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "#I CarrierSettings is not ready", buf, 2u);
    }

    *(v3 + 57) = -1;
    if ((v17 & 1) == 0)
    {
      goto LABEL_36;
    }
  }

  if (v5 <= 6)
  {
    if (((1 << v5) & 0x47) != 0)
    {
      sub_1014D56F4(v3, 1);
      v31 = v3[2];
      *buf = v31;
      if (v31)
      {
        dispatch_retain(v31);
      }

      sub_10159FD94(0, buf, v57);
    }

    else
    {
      if (((1 << v5) & 0x18) != 0)
      {
        sub_1014D56F4(v3, 0);
        goto LABEL_50;
      }

      sub_1014D56F4(v3, 2);
      v46 = v3[2];
      *buf = v46;
      if (v46)
      {
        dispatch_retain(v46);
      }

      sub_10159FD94(1, buf, v57);
    }

    v30 = *buf;
    if (*buf)
    {
      dispatch_release(*buf);
    }
  }

LABEL_50:
  v33 = capabilities::ct::supportsVinylFirmwareUpdate(v30);
  if (!v33 || capabilities::euicc::supportsEOS(v33))
  {
    v34 = *v57;
    if (os_log_type_enabled(*v57, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "#I EUICC Health check is not supported", buf, 2u);
    }

    sub_1014D54C4(v3, 0);
    return;
  }

  v35 = Registry::getServiceMap(*v7);
  v36 = v35;
  if (v37 < 0)
  {
    v38 = (v37 & 0x7FFFFFFFFFFFFFFFLL);
    v39 = 5381;
    do
    {
      v37 = v39;
      v40 = *v38++;
      v39 = (33 * v39) ^ v40;
    }

    while (v40);
  }

  std::mutex::lock(v35);
  *buf = v37;
  v41 = sub_100009510(&v36[1].__m_.__sig, buf);
  if (v41)
  {
    v43 = v41[3];
    v42 = v41[4];
    if (v42)
    {
      atomic_fetch_add_explicit(&v42->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v36);
      atomic_fetch_add_explicit(&v42->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v42);
      v44 = 0;
      if (!v43)
      {
        goto LABEL_62;
      }

LABEL_71:
      v47 = v3[1];
      if (!v47 || (v48 = *v3, (v49 = std::__shared_weak_count::lock(v47)) == 0))
      {
        sub_100013CC4();
      }

      v50 = v49;
      p_shared_weak_owners = &v49->__shared_weak_owners_;
      atomic_fetch_add_explicit(&v49->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v49);
      *buf = _NSConcreteStackBlock;
      *&buf[8] = 1174405120;
      *&buf[16] = sub_1014D5570;
      v64 = &unk_101F43910;
      v65 = v3;
      v66 = v48;
      v67 = v50;
      atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
      (*(*v43 + 144))(v43, 1, buf, 0);
      if (v67)
      {
        std::__shared_weak_count::__release_weak(v67);
      }

      std::__shared_weak_count::__release_weak(v50);
      if ((v44 & 1) == 0)
      {
        goto LABEL_76;
      }

      return;
    }
  }

  else
  {
    v43 = 0;
  }

  std::mutex::unlock(v36);
  v42 = 0;
  v44 = 1;
  if (v43)
  {
    goto LABEL_71;
  }

LABEL_62:
  v45 = *v57;
  if (os_log_type_enabled(*v57, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "#I VinylController is not ready", buf, 2u);
  }

  sub_1014D54C4(v3, 0);
  if ((v44 & 1) == 0)
  {
LABEL_76:
    sub_100004A34(v42);
  }
}

void sub_1014D491C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, int a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, dispatch_object_t object, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, std::__shared_weak_count *a28)
{
  if (object)
  {
    dispatch_release(object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1014D49C0(uint64_t *a1, char a2)
{
  v2 = a1[1];
  if (v2)
  {
    if (std::__shared_weak_count::lock(v2))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_1014D4AB0(uint64_t a1)
{
  v1 = *(a1 + 32);
  ServiceMap = Registry::getServiceMap(*(v1 + 40));
  v3 = ServiceMap;
  if (v4 < 0)
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

  std::mutex::lock(ServiceMap);
  *buf = v4;
  v8 = sub_100009510(&v3[1].__m_.__sig, buf);
  if (!v8)
  {
    v10 = 0;
LABEL_9:
    std::mutex::unlock(v3);
    v9 = 0;
    v11 = 1;
    if (!v10)
    {
      goto LABEL_46;
    }

    goto LABEL_10;
  }

  v10 = v8[3];
  v9 = v8[4];
  if (!v9)
  {
    goto LABEL_9;
  }

  atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v3);
  atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v9);
  v11 = 0;
  if (!v10)
  {
    goto LABEL_46;
  }

LABEL_10:
  v36 = 0;
  v12 = xpc_dictionary_create(0, 0, 0);
  v13 = v12;
  if (v12)
  {
    v36 = v12;
  }

  else
  {
    v13 = xpc_null_create();
    v36 = v13;
    if (!v13)
    {
      v14 = xpc_null_create();
      v13 = 0;
      goto LABEL_17;
    }
  }

  if (xpc_get_type(v13) != &_xpc_type_dictionary)
  {
    v14 = xpc_null_create();
LABEL_17:
    v36 = v14;
    goto LABEL_18;
  }

  xpc_retain(v13);
LABEL_18:
  xpc_release(v13);
  v15 = *(v1 + 104);
  if (v15 > 2)
  {
    v16 = "???";
  }

  else
  {
    v16 = off_101F43BB0[v15];
  }

  v34 = xpc_string_create(v16);
  if (!v34)
  {
    v34 = xpc_null_create();
  }

  *buf = &v36;
  v33 = "BasebandDeadStatus";
  sub_10000F688(buf, &v34, &v35);
  xpc_release(v35);
  v35 = 0;
  xpc_release(v34);
  v34 = 0;
  v17 = *(v1 + 100);
  if (v17 > 2)
  {
    v18 = "???";
  }

  else
  {
    v18 = off_101F43BB0[v17];
  }

  v30 = xpc_string_create(v18);
  if (!v30)
  {
    v30 = xpc_null_create();
  }

  *buf = &v36;
  v33 = "eUICCStatus";
  sub_10000F688(buf, &v30, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v30);
  v30 = 0;
  v19 = *(v1 + 96);
  if (v19 > 2)
  {
    v20 = "???";
  }

  else
  {
    v20 = off_101F43BB0[v19];
  }

  v28 = xpc_string_create(v20);
  if (!v28)
  {
    v28 = xpc_null_create();
  }

  *buf = &v36;
  v33 = "RffeScanStatus";
  sub_10000F688(buf, &v28, &v29);
  xpc_release(v29);
  v29 = 0;
  xpc_release(v28);
  v28 = 0;
  v21 = *(v1 + 108);
  if (v21 > 2)
  {
    v22 = "???";
  }

  else
  {
    v22 = off_101F43BB0[v21];
  }

  v26 = xpc_string_create(v22);
  if (!v26)
  {
    v26 = xpc_null_create();
  }

  *buf = &v36;
  v33 = "AnomalyInsightStatus";
  sub_10000F688(buf, &v26, &v27);
  xpc_release(v27);
  v27 = 0;
  xpc_release(v26);
  v26 = 0;
  v24 = xpc_int64_create(*(v1 + 116));
  if (!v24)
  {
    v24 = xpc_null_create();
  }

  *buf = &v36;
  v33 = "ReportedDiagCode";
  sub_10000F688(buf, &v24, &v25);
  xpc_release(v25);
  v25 = 0;
  xpc_release(v24);
  v24 = 0;
  v23 = *(v1 + 32);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I Submitting metric for Cellular Health status", buf, 2u);
  }

  *buf = v36;
  if (v36)
  {
    xpc_retain(v36);
  }

  else
  {
    *buf = xpc_null_create();
  }

  (*(*v10 + 16))(v10, "commCenterCellularHealthStatus", buf);
  xpc_release(*buf);
  *buf = 0;
  xpc_release(v36);
LABEL_46:
  if ((v11 & 1) == 0)
  {
    sub_100004A34(v9);
  }
}

void sub_1014D4ED8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, xpc_object_t object)
{
  xpc_release(object);
  xpc_release(*(v19 - 56));
  if ((v18 & 1) == 0)
  {
    sub_100004A34(v17);
  }

  _Unwind_Resume(a1);
}

const void **sub_1014D4F5C(uint64_t a1, const void **a2)
{
  v2 = *(a1 + 32);
  sub_100010024(&theDict, a2);
  v3 = *(v2 + 32);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v21 = theDict;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Received anomaly event: %@", buf, 0xCu);
  }

  Value = CFDictionaryGetValue(theDict, wis::kWISInsightStateKey);
  v5 = Value;
  if (Value)
  {
    v6 = CFGetTypeID(Value);
    if (v6 == CFStringGetTypeID())
    {
      v7 = v5;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = CFStringCompare(v7, wis::kWISInsightStateAnomaly, 1uLL);
  v9 = wis::kWISInsightTypeKey;
  if (v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = 2;
  }

  *(v2 + 108) = v10;
  v11 = *(v2 + 32);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = "Pass";
    if (v8 == kCFCompareEqualTo)
    {
      v12 = "Fail";
    }

    *buf = 136315138;
    v21 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I Set anomaly insight health status to %s", buf, 0xCu);
  }

  v13 = CFDictionaryGetValue(theDict, v9);
  v14 = v13;
  if (v13)
  {
    v15 = CFGetTypeID(v13);
    if (v15 != CFStringGetTypeID())
    {
      v14 = 0;
    }
  }

  if (CFStringCompare(v14, wis::kWISInsightTypeService, 1uLL))
  {
    if (CFStringCompare(v14, wis::kWISInsightTypeVoice, 1uLL))
    {
      return sub_10001021C(&theDict);
    }

    v16 = 2;
  }

  else
  {
    v16 = 1;
  }

  *(v2 + 112) = v16;
  v17 = *(v2 + 32);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v21) = v16;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I Set anomaly insight code to %d", buf, 8u);
  }

  return sub_10001021C(&theDict);
}