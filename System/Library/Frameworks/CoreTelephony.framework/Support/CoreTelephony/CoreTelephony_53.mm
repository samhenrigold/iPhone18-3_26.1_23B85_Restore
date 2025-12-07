void sub_100355FDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13, char a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, char a26, int a27, __int16 a28, char a29, char a30, int a31, __int16 a32, char a33, char a34, int a35, __int16 a36, char a37, char a38, int a39, __int16 a40, char a41, char a42, int a43, __int16 a44, char a45, char a46, void *__p, uint64_t a48, int a49, __int16 a50, char a51, char a52)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_100356178(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    v2 = *(v1 + 40);
    if (v2)
    {
      std::__shared_weak_count::__release_weak(v2);
    }

    if (*(v1 + 31) < 0)
    {
      operator delete(*(v1 + 8));
    }

    operator delete();
  }

  return a1;
}

uint64_t sub_1003561E4(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4, uint64_t a5, NSObject **a6, uint64_t *a7, uint64_t a8)
{
  v10 = a4;
  v14 = kCtLoggingSystemName;
  DataContextName = DataUtils::getDataContextName();
  ctu::OsLogContext::OsLogContext(&v23, v14, DataContextName);
  sub_10035640C((a1 + 8), a6, &v23);
  ctu::OsLogContext::~OsLogContext(&v23);
  v16 = *a2;
  *a1 = *a2;
  *(a1 + *(v16 - 688)) = a2[1];
  *(a1 + *(*a1 - 56)) = a2[2];
  v17 = a3[1];
  *(a1 + 48) = *a3;
  *(a1 + 56) = v17;
  if (v17)
  {
    atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
  }

  v18 = *a6;
  *(a1 + 64) = *a6;
  if (v18)
  {
    dispatch_retain(v18);
  }

  *(a1 + 72) = 0;
  v19 = DataUtils::getDataContextName();
  v21 = *a7;
  v20 = a7[1];
  *(a1 + 80) = v19;
  *(a1 + 88) = v21;
  *(a1 + 96) = v20;
  if (v20)
  {
    atomic_fetch_add_explicit((v20 + 16), 1uLL, memory_order_relaxed);
  }

  *(a1 + 104) = v10;
  return a1;
}

void sub_1003563C8(_Unwind_Exception *a1)
{
  v3 = v1[8];
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = v1[7];
  if (v4)
  {
    sub_100004A34(v4);
  }

  ctu::OsLogLogger::~OsLogLogger((v1 + 5));
  sub_1000C0544(v1 + 1);
  _Unwind_Resume(a1);
}

void *sub_10035640C(void *a1, NSObject **a2, OsLogContext *a3)
{
  *a1 = 0;
  a1[1] = 0;
  v5 = *a2;
  a1[2] = *a2;
  if (v5)
  {
    dispatch_retain(v5);
  }

  a1[3] = 0;
  ctu::OsLogLogger::OsLogLogger(v7, a3);
  ctu::OsLogLogger::OsLogLogger((a1 + 4), v7);
  ctu::OsLogLogger::~OsLogLogger(v7);
  return a1;
}

void sub_100356474(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ctu::OsLogLogger::~OsLogLogger(va);
  sub_1000C0544(v3);
  _Unwind_Resume(a1);
}

uint64_t *sub_100356498(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 688)) = a2[1];
  *(a1 + *(*a1 - 56)) = a2[2];
  v4 = a1[12];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = a1[8];
  if (v5)
  {
    dispatch_release(v5);
  }

  v6 = a1[7];
  if (v6)
  {
    sub_100004A34(v6);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 5));
  sub_1000C0544(a1 + 1);
  return a1;
}

uint64_t sub_100356654(char *a1, uint64_t a2)
{
  v3 = *(a1 + 12);
  if (!v3)
  {
    return 0;
  }

  v5 = std::__shared_weak_count::lock(v3);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = *(a1 + 11);
  if (v7)
  {
    v8 = (*(*&a1[*(*a1 - 688)] + 56))(&a1[*(*a1 - 688)]);
    v9 = (*(*v7 + 80))(v7, v8, a2, 0);
  }

  else
  {
    v9 = 0;
  }

  sub_100004A34(v6);
  return v9;
}

std::__shared_weak_count *sub_100356744@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = *(a1 + 96);
  if (result && (result = std::__shared_weak_count::lock(result)) != 0)
  {
    v5 = *(a1 + 88);
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
  a2[1] = result;
  return result;
}

void sub_1003567A4(char *a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 12);
  if (v4 && (v5 = std::__shared_weak_count::lock(v4)) != 0)
  {
    v6 = v5;
    v7 = *(a1 + 11);
    if (v7)
    {
      v8 = (*(*&a1[*(*a1 - 688)] + 56))(&a1[*(*a1 - 688)]);
      (*(*v7 + 280))(v7, v8);
    }

    else
    {
      *a2 = 0;
      a2[1] = 0;
      a2[2] = 0;
    }

    sub_100004A34(v6);
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }
}

uint64_t sub_1003568D0(char *a1)
{
  v2 = *(a1 + 12);
  if (!v2)
  {
    return 0;
  }

  v3 = std::__shared_weak_count::lock(v2);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = *(a1 + 11);
  if (v5)
  {
    v6 = (*(*&a1[*(*a1 - 688)] + 56))(&a1[*(*a1 - 688)]);
    v5 = (*(*v5 + 288))(v5, v6);
  }

  sub_100004A34(v4);
  return v5;
}

uint64_t sub_1003569D0(char *a1)
{
  v2 = *(a1 + 12);
  if (!v2)
  {
    return 0;
  }

  v3 = std::__shared_weak_count::lock(v2);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = *(a1 + 11);
  if (v5)
  {
    v6 = (*(*&a1[*(*a1 - 688)] + 56))(&a1[*(*a1 - 688)]);
    v5 = (*(*v5 + 296))(v5, v6);
  }

  sub_100004A34(v4);
  return v5;
}

uint64_t sub_100356AD4(void *a1, int a2)
{
  v3 = (*(*a1 + 136))(a1, 3) & a2;
  if (v3 == 1)
  {
    (*(*a1 + 392))(a1, 24, "CommCenter");
    v4 = a1[12];
    if (v4)
    {
      v5 = std::__shared_weak_count::lock(v4);
      if (v5)
      {
        v6 = v5;
        v7 = a1[11];
        if (v7)
        {
          (*(*v7 + 232))(v7, 3, 0, 1, 0);
        }

        sub_100004A34(v6);
      }
    }
  }

  return v3;
}

std::__shared_weak_count *sub_100356BE0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  result = *(a1 + 96);
  if (result)
  {
    result = std::__shared_weak_count::lock(result);
    a2[1] = result;
    if (result)
    {
      *a2 = *(a1 + 88);
    }
  }

  return result;
}

uint64_t sub_100356C44(char *a1, uint64_t a2)
{
  if ((*(*a1 + 136))(a1))
  {
    goto LABEL_11;
  }

  v4 = *(a1 + 12);
  if (v4)
  {
    v5 = std::__shared_weak_count::lock(v4);
    if (v5)
    {
      v6 = *(a1 + 11);
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*(*&a1[*(*a1 - 688)] + 56))(&a1[*(*a1 - 688)]);
  v10 = 0;
  v11 = 0;
  v8 = (*(*v6 + 440))(v6, v7, &v10);
  if (v11)
  {
    sub_100004A34(v11);
  }

  if (!v5)
  {
    if (!v8)
    {
      return 1;
    }

    goto LABEL_11;
  }

  sub_100004A34(v5);
  if (v8)
  {
LABEL_11:
    (*(*a1 + 648))(a1, a2, 0);
    (*(*a1 + 392))(a1, 23, "CommCenter");
  }

  return 1;
}

void sub_100356DF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  if (v10)
  {
    sub_100004A34(v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_100356E58(char *a1)
{
  v2 = *(a1 + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v11 = "handleDataContextDeactivated";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s: ", buf, 0xCu);
  }

  v3 = *(a1 + 12);
  if (v3)
  {
    v4 = std::__shared_weak_count::lock(v3);
    if (v4)
    {
      v5 = v4;
      v6 = *(a1 + 11);
      if (v6)
      {
        v7 = (*(*&a1[*(*a1 - 688)] + 56))(&a1[*(*a1 - 688)]);
        (*(*&a1[*(*a1 - 56)] + 16))(&v8);
        (*(*v6 + 304))(v6, v7, &v8);
        if (v9)
        {
          sub_100004A34(v9);
        }
      }

      sub_100004A34(v5);
    }
  }
}

void sub_100356FF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  sub_100004A34(v10);
  _Unwind_Resume(a1);
}

void sub_1003570A0(char *a1)
{
  v2 = *(a1 + 12);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = *(a1 + 11);
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  v5 = (*(*&a1[*(*a1 - 688)] + 56))(&a1[*(*a1 - 688)]);
  (*(*v4 + 464))(v4, v5);
  if (v3)
  {

    sub_100004A34(v3);
  }
}

void sub_100357190(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003571A8(void *a1)
{
  v2 = a1[12];
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = a1[11];
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  (*(*(a1 + *(*a1 - 56)) + 16))(&v5);
  (*(*v4 + 472))(v4, &v5);
  if (v6)
  {
    sub_100004A34(v6);
  }

  if (v3)
  {
    sub_100004A34(v3);
  }
}

void sub_100357290(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  if (v10)
  {
    sub_100004A34(v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003572BC(char *a1)
{
  v2 = *(a1 + 12);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = *(a1 + 11);
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  v5 = (*(*&a1[*(*a1 - 688)] + 56))(&a1[*(*a1 - 688)]);
  (*(*v4 + 480))(v4, v5);
  if (v3)
  {

    sub_100004A34(v3);
  }
}

void sub_1003573AC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003573C4(uint64_t a1, char a2, int a3)
{
  if ((a2 & 1) != 0 && *(a1 + 72) != a3)
  {
    v6 = *(a1 + 40);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = asString();
      v8 = asStringBool(*(a1 + 72));
      v13 = 136315906;
      v14 = "setActivated";
      v15 = 2080;
      v16 = v7;
      v17 = 2080;
      v18 = v8;
      v19 = 2080;
      v20 = asStringBool(a3);
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s: (change states) %s: %s->%s", &v13, 0x2Au);
    }

    *(a1 + 72) = a3;
  }

  if ((a2 & 2) != 0 && *(a1 + 73) != a3)
  {
    v9 = *(a1 + 40);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = asString();
      v11 = asStringBool(*(a1 + 73));
      v12 = asStringBool(a3);
      v13 = 136315906;
      v14 = "setActivated";
      v15 = 2080;
      v16 = v10;
      v17 = 2080;
      v18 = v11;
      v19 = 2080;
      v20 = v12;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I %s: (change states) %s: %s->%s", &v13, 0x2Au);
    }

    *(a1 + 73) = a3;
  }
}

void sub_100357590(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = (*(*a1 + 48))(a1);
    v6 = 136315138;
    v7[0] = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I DATA:: ------- %s (Base) -------", &v6, 0xCu);
    v2 = *(a1 + 40);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 104);
    (*(*(a1 + *(*a1 - 56)) + 24))(a1 + *(*a1 - 56));
    v5 = subscriber::asString();
    v6 = 67109378;
    LODWORD(v7[0]) = v4;
    WORD2(v7[0]) = 2080;
    *(v7 + 6) = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t fPdpId = %d simSlot = %s", &v6, 0x12u);
  }
}

uint64_t sub_100357764(uint64_t a1, int a2)
{
  v2 = 0;
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      goto LABEL_9;
    }

    if (a2 != 3)
    {
      return v2 & 1;
    }

LABEL_7:
    if (*(a1 + 72))
    {
      v2 = 1;
      return v2 & 1;
    }

LABEL_9:
    v2 = *(a1 + 73);
    return v2 & 1;
  }

  if (!a2)
  {
    goto LABEL_7;
  }

  if (a2 == 1)
  {
    v2 = *(a1 + 72);
  }

  return v2 & 1;
}

void sub_1003577CC()
{
  qword_101FBA280 = @"mobile";
  v8 = 32;
  CFRetain(@"mobile");
  v0 = CFCopyHomeDirectoryURLForUser();
  if (v0)
  {
    v1 = v0;
    v2 = CFURLCopyFileSystemPath(v0, kCFURLPOSIXPathStyle);
    if (v2)
    {
      v3 = v2;
      qword_101FBA288 = sub_100357908(kCFAllocatorDefault, v2, 0, 0, 0x8000100u);
      CFRelease(v3);
    }

    CFRelease(v1);
  }

  *buffer = 0u;
  v10 = 0u;
  v4 = sub_100357908(kCFAllocatorDefault, @"mobile", buffer, &v8, 0x8000100u);
  if (v4)
  {
    v5 = v4;
    v6 = getpwnam(v4);
    if (v6)
    {
      pw_gid = v6->pw_gid;
      dword_101FBA290 = v6->pw_uid;
      dword_101FBA294 = pw_gid;
    }

    if (v5 != buffer)
    {
      CFAllocatorDeallocate(kCFAllocatorDefault, v5);
    }
  }
}

const char *sub_100357908(uint64_t a1, CFStringRef theString, char *buffer, CFIndex *a4, CFStringEncoding encoding)
{
  v7 = buffer;
  maxBufLen = 0;
  if (buffer && a4 && *a4 && CFStringGetCString(theString, buffer, *a4, encoding))
  {
    v9 = strlen(v7);
LABEL_12:
    *a4 = v9;
    return v7;
  }

  Length = CFStringGetLength(theString);
  v15.location = 0;
  v15.length = Length;
  CFStringGetBytes(theString, v15, encoding, 0, 0, 0, 0, &maxBufLen);
  Typed = CFAllocatorAllocateTyped();
  if (Typed)
  {
    v12 = Typed;
    v16.location = 0;
    v16.length = Length;
    CFStringGetBytes(theString, v16, encoding, 0, 0, Typed, maxBufLen, &maxBufLen);
    v7 = &v12[maxBufLen];
  }

  else
  {
    maxBufLen = 0;
    v12 = v7;
    if (!v7)
    {
      goto LABEL_10;
    }
  }

  *v7 = 0;
  v7 = v12;
LABEL_10:
  if (a4)
  {
    v9 = maxBufLen;
    goto LABEL_12;
  }

  return v7;
}

void sub_100357A80()
{
  qword_101FBA298 = @"_wireless";
  v8 = 32;
  CFRetain(@"_wireless");
  v0 = CFCopyHomeDirectoryURLForUser();
  if (v0)
  {
    v1 = v0;
    v2 = CFURLCopyFileSystemPath(v0, kCFURLPOSIXPathStyle);
    if (v2)
    {
      v3 = v2;
      qword_101FBA2A0 = sub_100357908(kCFAllocatorDefault, v2, 0, 0, 0x8000100u);
      CFRelease(v3);
    }

    CFRelease(v1);
  }

  *buffer = 0u;
  v10 = 0u;
  v4 = sub_100357908(kCFAllocatorDefault, @"_wireless", buffer, &v8, 0x8000100u);
  if (v4)
  {
    v5 = v4;
    v6 = getpwnam(v4);
    if (v6)
    {
      pw_gid = v6->pw_gid;
      dword_101FBA2A8 = v6->pw_uid;
      dword_101FBA2AC = pw_gid;
    }

    if (v5 != buffer)
    {
      CFAllocatorDeallocate(kCFAllocatorDefault, v5);
    }
  }
}

uint64_t sub_100357C64(_BYTE *a1, uid_t a2, gid_t a3, mode_t a4)
{
  bzero(v13, 0x400uLL);
  v8 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v9 = 0;
  v10 = a1 + 1;
  memset(&v12, 0, sizeof(v12));
  while (1)
  {
    v13[v9] = v8;
    if (v8 != 47 || !stat(v13, &v12))
    {
      goto LABEL_7;
    }

    if (mkdir(v13, 0x1FFu))
    {
      return *__error();
    }

    chown(v13, a2, a3);
    chmod(v13, a4);
LABEL_7:
    result = 0;
    if (v9 <= 0x3FD)
    {
      v8 = v10[v9++];
      if (v8)
      {
        continue;
      }
    }

    return result;
  }
}

uint64_t sub_100357D88(const __CFString *a1, const __CFString *a2)
{
  v4.length = CFStringGetLength(a1);
  v4.location = 0;

  return CFStringFindWithOptions(a1, a2, v4, 9uLL, 0);
}

uint64_t _CFStringCopyMCCMNCFromIMSI(const __CFString *a1, const __CFString **a2, CFStringRef *a3)
{
  v3 = 0;
  if (a1 && a2 && a3)
  {
    Length = CFStringGetLength(a1);
    if (Length >= 3)
    {
      v8 = Length;
      memset(&v15, 0, sizeof(v15));
      std::string::resize(&v15, Length + 1, 0);
      if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v9 = &v15;
      }

      else
      {
        v9 = v15.__r_.__value_.__r.__words[0];
      }

      if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v15.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v15.__r_.__value_.__l.__size_;
      }

      if (CFStringGetCString(a1, v9, size, 0x8000100u))
      {
        v16.location = 0;
        v16.length = 3;
        v14 = CFStringCreateWithSubstring(kCFAllocatorDefault, a1, v16);
        CFStringGetIntValue(v14);
        if (_is3DigitMNCWithIMSI())
        {
          v11.length = 3;
        }

        else
        {
          v11.length = 2;
        }

        if (v8 >= v11.length + 3)
        {
          v11.location = 3;
          *a3 = CFStringCreateWithSubstring(kCFAllocatorDefault, a1, v11);
          v12 = v14;
          v14 = 0;
          *a2 = v12;
          v3 = 1;
        }

        else
        {
          v3 = 0;
        }

        sub_100005978(&v14);
      }

      else
      {
        v3 = 0;
      }

      if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v15.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      return 0;
    }
  }

  return v3;
}

void sub_100357F30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  sub_100005978(&a9);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100357F68(char *a1, uint64_t a2, uint64_t a3)
{
  result = 0;
  if (a1 && a3)
  {
    if (a2 < 1)
    {
      result = 0;
    }

    else
    {
      LODWORD(result) = 0;
      do
      {
        v5 = result + 1;
        *(a3 + result) = a0123456789abcd_1[*a1 >> 4];
        v6 = *a1++;
        result = (result + 2);
        *(a3 + v5) = a0123456789abcd_1[v6 & 0xF];
        --a2;
      }

      while (a2);
    }

    *(a3 + result) = 0;
  }

  return result;
}

CFStringRef sub_100357FCC(const __CFAllocator *a1, CFDataRef theData)
{
  Length = CFDataGetLength(theData);
  BytePtr = CFDataGetBytePtr(theData);
  v6 = malloc_type_malloc((2 * Length) | 1, 0x100004077774924uLL);
  if (sub_100357F68(BytePtr, Length, v6))
  {
    v7 = CFStringCreateWithFormat(a1, 0, @"%s", v6);
  }

  else
  {
    v7 = 0;
  }

  free(v6);
  return v7;
}

void NetworkRejectionMonitorMode::create(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, CFDictionaryRef *a5@<X4>, char a6@<W5>, void *a7@<X8>)
{
  v46 = a6;
  Value = CFDictionaryGetValue(*a5, @"CellularDataPlanNotSubscribedErrors");
  v14 = 0uLL;
  if (Value)
  {
    v15 = Value;
    v16 = CFGetTypeID(Value);
    if (v16 == CFArrayGetTypeID())
    {
      v48 = 0uLL;
      v49 = 0;
      *&context = &v48;
      v50.length = CFArrayGetCount(v15);
      v50.location = 0;
      CFArrayApplyFunction(v15, v50, sub_100359A28, &context);
      v14 = v48;
      v17 = v49;
    }

    else
    {
      v17 = 0;
      v14 = 0uLL;
    }
  }

  else
  {
    v17 = 0;
  }

  *__p = v14;
  v45 = v17;
  context = 0uLL;
  v43 = 0;
  v18 = CFDictionaryGetValue(*a5, @"ExpirePlanOnNetworkRejectCauseCodes");
  v19 = v18;
  v41 = 0u;
  if (v18 && (v20 = CFGetTypeID(v18), v20 == CFArrayGetTypeID()))
  {
    v48 = 0uLL;
    v49 = 0;
    v47 = &v48;
    v51.length = CFArrayGetCount(v19);
    v51.location = 0;
    CFArrayApplyFunction(v19, v51, sub_100359A28, &v47);
    v41 = v48;
    v21 = v49;
  }

  else
  {
    v21 = 0;
  }

  context = v41;
  v43 = v21;
  v22 = CFDictionaryGetValue(*a5, @"DataPlanNetworkRejectionCause");
  v23 = v22;
  LODWORD(v48) = 0;
  if (v22)
  {
    v24 = CFGetTypeID(v22);
    if (v24 == CFNumberGetTypeID())
    {
      ctu::cf::assign(&v48, v23, v25);
    }

    if (v48)
    {
      v26 = *(&context + 1);
      if (*(&context + 1) >= v43)
      {
        v28 = context;
        v29 = *(&context + 1) - context;
        v30 = (*(&context + 1) - context) >> 2;
        v31 = v30 + 1;
        if ((v30 + 1) >> 62)
        {
          sub_1000CE3D4();
        }

        v32 = v43 - context;
        if ((v43 - context) >> 1 > v31)
        {
          v31 = v32 >> 1;
        }

        v33 = v32 >= 0x7FFFFFFFFFFFFFFCLL;
        v34 = 0x3FFFFFFFFFFFFFFFLL;
        if (!v33)
        {
          v34 = v31;
        }

        if (v34)
        {
          sub_100016740(&context, v34);
        }

        *(4 * v30) = v48;
        v27 = 4 * v30 + 4;
        memcpy(0, v28, v29);
        v35 = context;
        *&context = 0;
        *(&context + 1) = v27;
        v43 = 0;
        if (v35)
        {
          operator delete(v35);
        }
      }

      else
      {
        **(&context + 1) = v48;
        v27 = v26 + 4;
      }

      *(&context + 1) = v27;
    }
  }

  v36 = __p[0];
  v37 = __p[1];
  if (__p[0] != __p[1])
  {
    do
    {
      *v36 = gsmToCsiErrorWithCode();
      v36 += 4;
    }

    while (v36 != v37);
    goto LABEL_40;
  }

  v38 = context;
  if (context != *(&context + 1))
  {
    if (__p[0] >= v45)
    {
      v39 = (v45 - __p[0]) >> 1;
      if (v39 <= 1)
      {
        v39 = 1;
      }

      if (v45 - __p[0] >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v40 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v40 = v39;
      }

      sub_100016740(__p, v40);
    }

    *__p[1] = 65;
    __p[1] = v37 + 4;
LABEL_40:
    sub_100359B3C(&v47, a1, a2, a3, a4, a5, __p, &context, &v46);
  }

  *a7 = 0;
  a7[1] = 0;
  if (v38)
  {
    *(&context + 1) = v38;
    operator delete(v38);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_100358438(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a17)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

void NetworkRejectionMonitorMode::init(NetworkRejectionMonitorMode *this)
{
  v1[0] = 0;
  v1[1] = 0;
  sub_100004AA0(v1, this + 1);
  operator new();
}

uint64_t NetworkRejectionMonitorMode::NetworkRejectionMonitorMode(uint64_t a1, dispatch_object_t *a2, void *a3, uint64_t *a4, uint64_t a5, CFDictionaryRef *a6, uint64_t a7, uint64_t a8, char a9)
{
  v31 = *a2;
  if (v31)
  {
    dispatch_retain(v31);
  }

  v17 = a4[1];
  v29 = *a4;
  v30 = v17;
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (*(a5 + 23) < 0)
  {
    sub_100005F2C(__p, *a5, *(a5 + 8));
  }

  else
  {
    *__p = *a5;
    v28 = *(a5 + 16);
  }

  sub_10031435C(a1, &v31, a3, &v29, "mm.rej", __p);
  if (SHIBYTE(v28) < 0)
  {
    operator delete(__p[0]);
  }

  if (v30)
  {
    sub_100004A34(v30);
  }

  if (v31)
  {
    dispatch_release(v31);
  }

  *a1 = off_101E44A10;
  sub_10000501C(&v25, "mm.rej");
  v24 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
  }

  ctu::RestModule::RestModule();
  if (v24)
  {
    dispatch_release(v24);
  }

  if (v26 < 0)
  {
    operator delete(v25);
  }

  *(a1 + 192) = 0;
  *(a1 + 184) = a1 + 192;
  *(a1 + 176) = 0;
  *(a1 + 216) = 0;
  *(a1 + 208) = a1 + 216;
  *(a1 + 200) = 0;
  *(a1 + 224) = 0;
  *(a1 + 240) = 0;
  *(a1 + 232) = a1 + 240;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  sub_10024064C((a1 + 256), *a7, *(a7 + 8), (*(a7 + 8) - *a7) >> 2);
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 296) = 0;
  sub_10024064C((a1 + 280), *a8, *(a8 + 8), (*(a8 + 8) - *a8) >> 2);
  v18 = a9;
  if (a9)
  {
    Value = CFDictionaryGetValue(*a6, @"ResetBBAfterSuccessfulPlanPurchase");
    v20 = Value;
    v32 = 0;
    if (Value && (v21 = CFGetTypeID(Value), v21 == CFBooleanGetTypeID()))
    {
      ctu::cf::assign(&v32, v20, v22);
      v18 = v32;
    }

    else
    {
      v18 = 0;
    }
  }

  *(a1 + 304) = v18 & 1;
  return a1;
}

void sub_1003587D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, dispatch_object_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26)
{
  if (a26)
  {
    sub_100004A34(a26);
  }

  v28 = *(v26 - 80);
  if (v28)
  {
    dispatch_release(v28);
  }

  _Unwind_Resume(exception_object);
}

void NetworkRejectionMonitorMode::~NetworkRejectionMonitorMode(NetworkRejectionMonitorMode *this)
{
  *this = off_101E44A10;
  v2 = (this + 160);
  sub_10035899C(this + 176, this + 160);
  sub_100358A0C(this + 184, v2);
  sub_100358A7C(this + 208, v2);
  sub_100358AEC(this + 232, v2);
  ctu::RestModule::disconnect(v2);
  v3 = *(this + 35);
  if (v3)
  {
    *(this + 36) = v3;
    operator delete(v3);
  }

  v4 = *(this + 32);
  if (v4)
  {
    *(this + 33) = v4;
    operator delete(v4);
  }

  sub_100359978(this + 232, *(this + 30));
  sub_10006DCAC(this + 208, *(this + 27));
  sub_100077CD4(this + 184, *(this + 24));
  v5 = *(this + 21);
  if (v5)
  {
    sub_100004A34(v5);
  }

  sub_10031452C(this);
}

{
  NetworkRejectionMonitorMode::~NetworkRejectionMonitorMode(this);

  operator delete();
}

void sub_10035899C(uint64_t a1, uint64_t a2)
{
  sub_10000501C(&__p, "/cc/props/current_data_slot");
  ctu::RestModule::unobserveProperty();
  if (v3 < 0)
  {
    operator delete(__p);
  }
}

void sub_1003589F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100358A0C(uint64_t a1, uint64_t a2)
{
  sub_10000501C(&__p, "/cc/props/internal_internet_connection_state");
  ctu::RestModule::unobserveProperty();
  if (v3 < 0)
  {
    operator delete(__p);
  }
}

void sub_100358A60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100358A7C(uint64_t a1, uint64_t a2)
{
  sub_10000501C(&__p, "/cc/props/network_rejects");
  ctu::RestModule::unobserveProperty();
  if (v3 < 0)
  {
    operator delete(__p);
  }
}

void sub_100358AD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100358AEC(uint64_t a1, uint64_t a2)
{
  sub_10000501C(&__p, "/cc/props/sims_in_use");
  ctu::RestModule::unobserveProperty();
  if (v3 < 0)
  {
    operator delete(__p);
  }
}

void sub_100358B40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void NetworkRejectionMonitorMode::runMonitorModeAction_sync(Registry **this)
{
  if (sub_100314EB4(this))
  {
    SimInstance_sync = NetworkRejectionMonitorMode::getSimInstance_sync(this, 3);
    if ((SimInstance_sync & 0x100000000) == 0)
    {
      return;
    }

    v3 = this[24];
    if (!v3)
    {
      return;
    }

    v4 = this + 24;
    do
    {
      if (*(v3 + 8) >= SimInstance_sync)
      {
        v4 = v3;
      }

      v3 = *(v3 + (*(v3 + 8) < SimInstance_sync));
    }

    while (v3);
    if (v4 == this + 24 || *(v4 + 8) > SimInstance_sync)
    {
      return;
    }

    v5 = *(v4 + 16);
    if (v5 != 3 && v5 != 0)
    {
      return;
    }

    ServiceMap = Registry::getServiceMap(this[6]);
    v8 = ServiceMap;
    if ((v9 & 0x8000000000000000) != 0)
    {
      v10 = (v9 & 0x7FFFFFFFFFFFFFFFLL);
      v11 = 5381;
      do
      {
        v9 = v11;
        v12 = *v10++;
        v11 = (33 * v11) ^ v12;
      }

      while (v12);
    }

    std::mutex::lock(ServiceMap);
    v20 = v9;
    v13 = sub_100009510(&v8[1].__m_.__sig, &v20);
    if (v13)
    {
      v15 = v13[3];
      v14 = v13[4];
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v8);
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v14);
        v16 = 0;
        goto LABEL_26;
      }
    }

    else
    {
      v15 = 0;
    }

    std::mutex::unlock(v8);
    v14 = 0;
    v16 = 1;
LABEL_26:
    if (v15)
    {
      v17 = *(this + 44);
      sub_10000501C(__p, "Connection Expiry Monitor Mode Start");
      (*(*v15 + 88))(v15, v17, 1, 1, __p, 1, 0);
      if (v19 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if ((v16 & 1) == 0)
    {
      sub_100004A34(v14);
    }

    return;
  }

  NetworkRejectionMonitorMode::handleNetworkRejectionUpdated_sync(this);
}

void sub_100358D6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if ((v15 & 1) == 0)
  {
    sub_100004A34(v14);
  }

  _Unwind_Resume(exception_object);
}

void NetworkRejectionMonitorMode::handleNetworkRejectionUpdated_sync(NetworkRejectionMonitorMode *this)
{
  SimInstance_sync = NetworkRejectionMonitorMode::getSimInstance_sync(this, 3);
  if ((SimInstance_sync & 0x100000000) != 0)
  {
    v3 = SimInstance_sync;
    if (*(this + 304) == 1 && (*(this + 305) & 1) == 0)
    {
      *(this + 305) = 1;
      sub_10000501C(&v10, "New Data Plan");
      rest::ResetPayload::ResetPayload();
      sub_100108D68(this + 160, __p);
      if (v13 < 0)
      {
        operator delete(__p[0]);
      }

      if (v11 < 0)
      {
        operator delete(v10);
      }
    }

    else if (!sub_100314EB4(this))
    {
      v4 = *(this + 27);
      if (v4)
      {
        v5 = this + 216;
        do
        {
          if (*(v4 + 7) >= v3)
          {
            v5 = v4;
          }

          v4 = *&v4[8 * (*(v4 + 7) < v3)];
        }

        while (v4);
        if (v5 != this + 216 && *(v5 + 7) <= v3)
        {
          v6 = *(this + 35);
          v7 = *(this + 36);
          if (v6 != v7)
          {
            v8 = v5[32];
            while (*v6 != v8)
            {
              if (++v6 == v7)
              {
                return;
              }
            }

            v9 = *(this + 5);
            if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
            {
              LODWORD(__p[0]) = 67109120;
              HIDWORD(__p[0]) = v8;
              _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Matched reject expiry: %d", __p, 8u);
            }

            sub_100314A14(this, 0x100u);
          }
        }
      }
    }
  }
}

void sub_100358F40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

unint64_t NetworkRejectionMonitorMode::getSimInstance_sync(uint64_t a1, int a2)
{
  v36 = 0u;
  memset(&__p, 0, sizeof(__p));
  *v34 = 0u;
  *v35 = 0u;
  *v32 = 0u;
  v33 = 0u;
  memset(v31, 0, sizeof(v31));
  v29 = 0u;
  *v30 = 0u;
  if (a2 == 3)
  {
    v3 = *(a1 + 232);
    v4 = (a1 + 240);
    if (v3 != (a1 + 240))
    {
      v5 = (a1 + 64);
      v6 = *(a1 + 87);
      if (v6 >= 0)
      {
        v7 = *(a1 + 87);
      }

      else
      {
        v7 = *(a1 + 72);
      }

      while (1)
      {
        v8 = *(v3 + 135);
        v9 = v8;
        if ((v8 & 0x80u) != 0)
        {
          v8 = v3[15];
        }

        if (v8 == v7)
        {
          v10 = v9 >= 0 ? v3 + 14 : v3[14];
          v11 = (v6 >= 0 ? a1 + 64 : *v5);
          if (!memcmp(v10, v11, v7))
          {
            break;
          }
        }

        v12 = v3[1];
        if (v12)
        {
          do
          {
            v13 = v12;
            v12 = *v12;
          }

          while (v12);
        }

        else
        {
          do
          {
            v13 = v3[2];
            v14 = *v13 == v3;
            v3 = v13;
          }

          while (!v14);
        }

        v3 = v13;
        if (v13 == v4)
        {
          goto LABEL_52;
        }
      }
    }

    if (v3 == v4)
    {
      goto LABEL_52;
    }

    v29 = *(v3 + 5);
    if (&v29 != (v3 + 5))
    {
      sub_1000B26FC(v30, v3[7], v3[8], (v3[8] - v3[7]) >> 2);
      sub_1000B2828(v31 + 1, v3[10], v3[11], 0xCCCCCCCCCCCCCCCDLL * ((v3[11] - v3[10]) >> 3));
    }

    LODWORD(v32[0]) = *(v3 + 26);
    WORD2(v32[0]) = *(v3 + 54);
    std::string::operator=(&v32[1], (v3 + 14));
    std::string::operator=(v34, (v3 + 17));
    std::string::operator=(&v35[1], (v3 + 20));
    std::string::operator=(&__p, (v3 + 23));
  }

  else
  {
    v15 = *(a1 + 240);
    if (!v15)
    {
      goto LABEL_52;
    }

    v16 = a1 + 240;
    do
    {
      if (*(v15 + 32) >= a2)
      {
        v16 = v15;
      }

      v15 = *(v15 + 8 * (*(v15 + 32) < a2));
    }

    while (v15);
    if (v16 == a1 + 240 || *(v16 + 32) > a2)
    {
      goto LABEL_52;
    }

    v29 = *(v16 + 40);
    if (&v29 != (v16 + 40))
    {
      sub_1000B26FC(v30, *(v16 + 56), *(v16 + 64), (*(v16 + 64) - *(v16 + 56)) >> 2);
      sub_1000B2828(v31 + 1, *(v16 + 80), *(v16 + 88), 0xCCCCCCCCCCCCCCCDLL * ((*(v16 + 88) - *(v16 + 80)) >> 3));
    }

    LODWORD(v32[0]) = *(v16 + 104);
    WORD2(v32[0]) = *(v16 + 108);
    std::string::operator=(&v32[1], (v16 + 112));
    std::string::operator=(v34, (v16 + 136));
    std::string::operator=(&v35[1], (v16 + 160));
    std::string::operator=(&__p, (v16 + 184));
  }

  if (v33 >= 0)
  {
    v17 = HIBYTE(v33);
  }

  else
  {
    v17 = v33;
  }

  v18 = *(a1 + 87);
  v19 = v18;
  if ((v18 & 0x80u) != 0)
  {
    v18 = *(a1 + 72);
  }

  if (v17 != v18)
  {
LABEL_52:
    v26 = 0;
    v25 = 0;
    v27 = 0;
    goto LABEL_53;
  }

  if (v33 >= 0)
  {
    v20 = &v32[1];
  }

  else
  {
    v20 = v32[1];
  }

  v23 = *(a1 + 64);
  v22 = (a1 + 64);
  v21 = v23;
  if (v19 >= 0)
  {
    v24 = v22;
  }

  else
  {
    v24 = v21;
  }

  v25 = 0;
  v26 = 0;
  if (!memcmp(v20, v24, v17))
  {
    v27 = 0;
    if (DWORD2(v29) == 5)
    {
      v27 = v29 & 0xFFFFFF00;
      v25 = v29;
      v26 = &_mh_execute_header;
    }
  }

  else
  {
    v27 = 0;
  }

LABEL_53:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v36) < 0)
  {
    operator delete(v35[1]);
  }

  if (SHIBYTE(v35[0]) < 0)
  {
    operator delete(v34[0]);
  }

  if (SHIBYTE(v33) < 0)
  {
    operator delete(v32[1]);
  }

  v38 = v31 + 1;
  sub_100034D1C(&v38);
  if (v30[0])
  {
    v30[1] = v30[0];
    operator delete(v30[0]);
  }

  return v26 | v27 | v25;
}

void NetworkRejectionMonitorMode::dumpState_sync(NetworkRejectionMonitorMode *this)
{
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(this + 32);
    v3 = *(this + 33);
    v20 = ",";
    v21 = 1;
    memset(&__p, 0, sizeof(__p));
    if (v4 != v3)
    {
      std::to_string(&v22, *v4);
      __p = v22;
      for (i = v4 + 1; i != v3; ++i)
      {
        sub_100074CFC(&v20, &v22);
        if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v6 = &v22;
        }

        else
        {
          v6 = v22.__r_.__value_.__r.__words[0];
        }

        if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v22.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v22.__r_.__value_.__l.__size_;
        }

        std::string::append(&__p, v6, size);
        if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v22.__r_.__value_.__l.__data_);
        }

        std::to_string(&v22, *i);
        if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v8 = &v22;
        }

        else
        {
          v8 = v22.__r_.__value_.__r.__words[0];
        }

        if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v9 = HIBYTE(v22.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v9 = v22.__r_.__value_.__l.__size_;
        }

        std::string::append(&__p, v8, v9);
        if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v22.__r_.__value_.__l.__data_);
        }
      }
    }

    p_p = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    LODWORD(v22.__r_.__value_.__l.__data_) = 136315138;
    *(v22.__r_.__value_.__r.__words + 4) = p_p;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Activation Expiry codes: {%s}", &v22, 0xCu);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v2 = *(this + 5);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(this + 35);
    v11 = *(this + 36);
    v20 = ",";
    v21 = 1;
    memset(&__p, 0, sizeof(__p));
    if (v12 != v11)
    {
      std::to_string(&v22, *v12);
      __p = v22;
      for (j = v12 + 1; j != v11; ++j)
      {
        sub_100074CFC(&v20, &v22);
        if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v14 = &v22;
        }

        else
        {
          v14 = v22.__r_.__value_.__r.__words[0];
        }

        if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v15 = HIBYTE(v22.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v15 = v22.__r_.__value_.__l.__size_;
        }

        std::string::append(&__p, v14, v15);
        if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v22.__r_.__value_.__l.__data_);
        }

        std::to_string(&v22, *j);
        if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v16 = &v22;
        }

        else
        {
          v16 = v22.__r_.__value_.__r.__words[0];
        }

        if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v17 = HIBYTE(v22.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v17 = v22.__r_.__value_.__l.__size_;
        }

        std::string::append(&__p, v16, v17);
        if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v22.__r_.__value_.__l.__data_);
        }
      }
    }

    v18 = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v18 = __p.__r_.__value_.__r.__words[0];
    }

    LODWORD(v22.__r_.__value_.__l.__data_) = 136315138;
    *(v22.__r_.__value_.__r.__words + 4) = v18;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Network Expiry codes: {%s}", &v22, 0xCu);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  sub_100314754(this);
}

void sub_100359610(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void NetworkRejectionMonitorMode::handleConnectionActivateError_sync(uint64_t a1, unint64_t a2, char a3)
{
  if (sub_100314EB4(a1))
  {
    return;
  }

  if ((NetworkRejectionMonitorMode::getSimInstance_sync(a1, a2) & 0x100000000) == 0)
  {
    return;
  }

  if (!sub_10030D8C4(a3))
  {
    return;
  }

  v6 = *(a1 + 256);
  v7 = *(a1 + 264);
  if (v6 == v7)
  {
    return;
  }

  v8 = HIDWORD(a2);
  while (*v6 != HIDWORD(a2))
  {
    if (++v6 == v7)
    {
      return;
    }
  }

  v9 = *(a1 + 40);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Matched activation expiry: %d", buf, 8u);
  }

  ServiceMap = Registry::getServiceMap(*(a1 + 48));
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
  *buf = v12;
  v16 = sub_100009510(&v11[1].__m_.__sig, buf);
  if (v16)
  {
    v18 = v16[3];
    v17 = v16[4];
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v11);
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v17);
      v19 = 0;
      goto LABEL_19;
    }
  }

  else
  {
    v18 = 0;
  }

  std::mutex::unlock(v11);
  v17 = 0;
  v19 = 1;
LABEL_19:
  if (v18)
  {
    v20 = *(a1 + 176);
    sub_10000501C(__p, "Connection Expiry Monitor Mode Failure");
    (*(*v18 + 88))(v18, v20, 1, 0, __p, 1, 0);
    if (v22 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if ((v19 & 1) == 0)
  {
    sub_100004A34(v17);
  }

  sub_100314A14(a1, 0x100u);
}

void sub_10035988C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if ((v16 & 1) == 0)
  {
    sub_100004A34(v15);
  }

  _Unwind_Resume(exception_object);
}

void NetworkRejectionMonitorMode::handleInternetConnectionUpdated_sync(NetworkRejectionMonitorMode *this)
{
  SimInstance_sync = NetworkRejectionMonitorMode::getSimInstance_sync(this, 3);
  if ((SimInstance_sync & 0x100000000) != 0)
  {
    v3 = *(this + 24);
    if (v3)
    {
      v4 = (this + 192);
      do
      {
        if (v3[8] >= SimInstance_sync)
        {
          v4 = v3;
        }

        v3 = *&v3[2 * (v3[8] < SimInstance_sync)];
      }

      while (v3);
      if (v4 != (this + 192) && v4[8] <= SimInstance_sync && v4[16] == 2)
      {
        *(this + 305) = 1;

        sub_100314A14(this, 0x101u);
      }
    }
  }
}

void sub_100359978(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_100359978(a1, *a2);
    sub_100359978(a1, *(a2 + 1));
    if (a2[207] < 0)
    {
      operator delete(*(a2 + 23));
    }

    if (a2[183] < 0)
    {
      operator delete(*(a2 + 20));
    }

    if (a2[159] < 0)
    {
      operator delete(*(a2 + 17));
    }

    if (a2[135] < 0)
    {
      operator delete(*(a2 + 14));
    }

    v5 = (a2 + 80);
    sub_100034D1C(&v5);
    v4 = *(a2 + 7);
    if (v4)
    {
      *(a2 + 8) = v4;
      operator delete(v4);
    }

    operator delete(a2);
  }
}

void sub_100359A28(void *a1, const void ***a2)
{
  v18 = 0;
  if (a1)
  {
    v4 = CFGetTypeID(a1);
    if (v4 == CFNumberGetTypeID())
    {
      ctu::cf::assign(&v18, a1, v5);
    }
  }

  v6 = *a2;
  v8 = v6[1];
  v7 = v6[2];
  if (v8 >= v7)
  {
    v10 = *v6;
    v11 = v8 - *v6;
    v12 = v11 >> 2;
    v13 = (v11 >> 2) + 1;
    if (v13 >> 62)
    {
      sub_1000CE3D4();
    }

    v14 = v7 - v10;
    if (v14 >> 1 > v13)
    {
      v13 = v14 >> 1;
    }

    v15 = v14 >= 0x7FFFFFFFFFFFFFFCLL;
    v16 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v15)
    {
      v16 = v13;
    }

    if (v16)
    {
      sub_100016740(v6, v16);
    }

    *(4 * v12) = v18;
    v9 = 4 * v12 + 4;
    memcpy(0, v10, v11);
    v17 = *v6;
    *v6 = 0;
    v6[1] = v9;
    v6[2] = 0;
    if (v17)
    {
      operator delete(v17);
    }
  }

  else
  {
    *v8 = v18;
    v9 = (v8 + 4);
  }

  v6[1] = v9;
}

void *sub_100359C18(void *a1, NSObject **a2, void *a3, uint64_t *a4, uint64_t a5, const void **a6, uint64_t a7, uint64_t a8, char *a9)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E44AD8;
  sub_100359D20(a1 + 3, a2, a3, a4, a5, a6, a7, a8, a9);
  return a1;
}

void sub_100359CA4(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E44AD8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_100359D20(void *a1, NSObject **a2, void *a3, uint64_t *a4, uint64_t a5, const void **a6, uint64_t a7, uint64_t a8, char *a9)
{
  v16 = *a2;
  v22 = v16;
  if (v16)
  {
    dispatch_retain(v16);
  }

  v17 = *a4;
  v18 = a4[1];
  v21[0] = v17;
  v21[1] = v18;
  if (v18)
  {
    atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_100010024(&v20, a6);
  NetworkRejectionMonitorMode::NetworkRejectionMonitorMode(a1, &v22, a3, v21, a5, &v20, a7, a8, *a9);
  sub_10001021C(&v20);
  if (v18)
  {
    sub_100004A34(v18);
  }

  if (v16)
  {
    dispatch_release(v16);
  }

  *a1 = &off_101E44B28;
  return a1;
}

void sub_100359E28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10001021C(va);
  if (v6)
  {
    sub_100004A34(v6);
  }

  if (v5)
  {
    dispatch_release(v5);
  }

  _Unwind_Resume(a1);
}

void sub_100359E58(NetworkRejectionMonitorMode *a1)
{
  NetworkRejectionMonitorMode::~NetworkRejectionMonitorMode(a1);

  operator delete();
}

void sub_100359E90(uint64_t **a1)
{
  v1 = **a1;
  Registry::createRestModuleOneTimeUseConnection(&v3, *(v1 + 48));
  ctu::RestModule::connect();
  if (v4)
  {
    sub_100004A34(v4);
  }

  sub_100118C58(v1 + 176, v1 + 160);
  v2[0] = NetworkRejectionMonitorMode::handleInternetConnectionUpdated_sync;
  v2[1] = 0;
  sub_10035A040(v1 + 184, v1 + 160, v1, v2);
}

void sub_100359FDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_100004A34(a14);
  }

  operator delete();
}

void sub_10035A12C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_10035A1DC(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E44BC0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10035A21C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10035A268(uint64_t *a1, xpc_object_t *a2)
{
  sub_10035A2E4(*a1, a2);
  v3 = a1[2];
  v4 = a1[3];
  v5 = (a1[1] + (v4 >> 1));
  if (v4)
  {
    v3 = *(*v5 + v3);
  }

  return v3(v5);
}

void sub_10035A2E4(uint64_t a1, xpc_object_t *a2)
{
  v3 = *a2;
  if (*a2 && xpc_get_type(*a2) == &_xpc_type_array)
  {
    xpc_retain(v3);
  }

  else
  {
    v3 = xpc_null_create();
  }

  sub_100077CD4(a1, *(a1 + 8));
  *a1 = a1 + 8;
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  if (xpc_get_type(v3) == &_xpc_type_array)
  {
    object[0] = v3;
    if (v3)
    {
      xpc_retain(v3);
    }

    else
    {
      object[0] = xpc_null_create();
    }

    sub_100008EA4(&v12, object, 0);
    xpc_release(object[0]);
    object[0] = v3;
    if (v3)
    {
      xpc_retain(v3);
    }

    else
    {
      object[0] = xpc_null_create();
    }

    if (xpc_get_type(v3) == &_xpc_type_array)
    {
      count = xpc_array_get_count(v3);
    }

    else
    {
      count = 0;
    }

    sub_100008EA4(v11, object, count);
    xpc_release(object[0]);
    for (i = v13; i != v11[1] || v12 != v11[0]; i = ++v13)
    {
      v10 = 0;
      object[0] = &v12;
      object[1] = i;
      sub_10003EAD4(object, &v10);
      if (xpc_get_type(v10) == &_xpc_type_dictionary)
      {
        v9 = 0;
        *object = 0u;
        v8 = 0u;
        sub_10035A750(object);
        v6 = v10;
        if (v10)
        {
          xpc_retain(v10);
        }

        else
        {
          v6 = xpc_null_create();
        }

        sub_10035A59C(object, &v6);
        xpc_release(v6);
        sub_10035A7D8(a1, object, object);
        if (SHIBYTE(v8) < 0)
        {
          operator delete(object[1]);
        }
      }

      xpc_release(v10);
    }

    xpc_release(v11[0]);
    xpc_release(v12);
  }

  xpc_release(v3);
}

void sub_10035A4F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t a10, xpc_object_t object, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, xpc_object_t a19, xpc_object_t a20)
{
  xpc_release(object);
  xpc_release(*(v21 - 48));
  xpc_release(v20);
  _Unwind_Resume(a1);
}

void sub_10035A59C(int *a1, xpc_object_t *a2)
{
  v3 = *a2;
  v9 = v3;
  if (v3 && xpc_get_type(v3) == &_xpc_type_dictionary)
  {
    xpc_retain(v3);
  }

  else
  {
    v3 = xpc_null_create();
    v9 = v3;
  }

  if (xpc_get_type(v3) == &_xpc_type_dictionary)
  {
    v6 = &v9;
    v7 = "first";
    sub_100006354(&v6, &object);
    type = xpc_get_type(object);
    if (type == &_xpc_type_string)
    {
      v10 = *a1;
      ctu::rest::detail::read_enum_string_value(&v10, &object, v5);
      *a1 = v10;
    }

    else if (type == &_xpc_type_BOOL || type == &_xpc_type_int64 || type == &_xpc_type_uint64)
    {
      *a1 = xpc::dyn_cast_or_default(&object, 0, v5);
    }

    xpc_release(object);
    v6 = &v9;
    v7 = "second";
    sub_100006354(&v6, &object);
    read_rest_value();
    xpc_release(object);
    v3 = v9;
  }

  xpc_release(v3);
}

void sub_10035A6FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object, xpc_object_t a13)
{
  xpc_release(object);
  xpc_release(a13);
  _Unwind_Resume(a1);
}

_DWORD *sub_10035A750(_DWORD *a1)
{
  *a1 = 0;
  sub_10000501C(&__p, "");
  NetworkInterfaceInfo::NetworkInterfaceInfo();
  if (v4 < 0)
  {
    operator delete(__p);
  }

  return a1;
}

void sub_10035A7BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_10035A7D8(uint64_t a1, int *a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
LABEL_8:
    operator new();
  }

  v4 = *a2;
  while (1)
  {
    while (1)
    {
      v5 = v3;
      v6 = *(v3 + 32);
      if (v4 >= v6)
      {
        break;
      }

      v3 = *v5;
      if (!*v5)
      {
        goto LABEL_8;
      }
    }

    if (v6 >= v4)
    {
      return v5;
    }

    v3 = v5[1];
    if (!v3)
    {
      goto LABEL_8;
    }
  }
}

void sub_10035A9B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_10035AA68(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E44C40;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10035AAA8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10035AAF4(std::string **a1, xpc_object_t *a2)
{
  v3 = *a1;
  v21 = 0uLL;
  v22 = 0;
  sub_10010A62C(&v21, a2);
  p_size = &v3->__r_.__value_.__l.__size_;
  size = v3->__r_.__value_.__l.__size_;
  v18 = v3->__r_.__value_.__r.__words[0];
  v19 = size;
  v20 = v3->__r_.__value_.__r.__words[2];
  if (v20)
  {
    *(size + 16) = &v19;
    v3->__r_.__value_.__r.__words[0] = p_size;
    *p_size = 0;
    v3->__r_.__value_.__r.__words[2] = 0;
  }

  else
  {
    v18 = &v19;
  }

  v16 = v21;
  v17 = v22;
  v22 = 0;
  v21 = 0uLL;
  sub_100D21B04(v3, &v16);
  v23 = &v16;
  sub_1000B2AF8(&v23);
  if (v20 == v3->__r_.__value_.__r.__words[2])
  {
    v6 = v18;
    if (v18 == &v19)
    {
      goto LABEL_24;
    }

    v7 = v3->__r_.__value_.__r.__words[0];
    while (*(v6 + 8) == *(v7 + 8) && BasicSimInfo::operator==())
    {
      v8 = v6[1];
      v9 = v6;
      if (v8)
      {
        do
        {
          v6 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v6 = v9[2];
          v10 = *v6 == v9;
          v9 = v6;
        }

        while (!v10);
      }

      v11 = v7[1];
      if (v11)
      {
        do
        {
          v12 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v12 = v7[2];
          v10 = *v12 == v7;
          v7 = v12;
        }

        while (!v10);
      }

      v7 = v12;
      if (v6 == &v19)
      {
        goto LABEL_24;
      }
    }
  }

  v13 = a1[2];
  v14 = a1[3];
  v15 = (a1[1]->__r_.__value_.__r.__words + (v14 >> 1));
  if (v14)
  {
    v13 = *(*v15 + v13);
  }

  (v13)(v15);
LABEL_24:
  sub_100359978(&v18, v19);
  v18 = &v21;
  sub_1000B2AF8(&v18);
}

void sub_10035ACB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12, char *a13, uint64_t a14, char a15)
{
  sub_100359978(&a12, a13);
  a12 = &a15;
  sub_1000B2AF8(&a12);
  _Unwind_Resume(a1);
}

uint64_t *sub_10035ACFC(uint64_t a1, int *a2, uint64_t a3, _DWORD **a4)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
LABEL_8:
    operator new();
  }

  v5 = *a2;
  while (1)
  {
    while (1)
    {
      v6 = v4;
      v7 = *(v4 + 32);
      if (v5 >= v7)
      {
        break;
      }

      v4 = *v6;
      if (!*v6)
      {
        goto LABEL_8;
      }
    }

    if (v7 >= v5)
    {
      return v6;
    }

    v4 = v6[1];
    if (!v4)
    {
      goto LABEL_8;
    }
  }
}

void sub_10035AEE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_10035AF98(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E44CC0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10035AFD8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10035B024(uint64_t *a1, xpc_object_t *a2)
{
  sub_1002FF8E0(*a1, a2);
  v3 = a1[2];
  v4 = a1[3];
  v5 = (a1[1] + (v4 >> 1));
  if (v4)
  {
    v3 = *(*v5 + v3);
  }

  return v3(v5);
}

void sub_10035B17C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_10035B22C(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E44D40;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10035B264(void *a1)
{
  read_rest_value();
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  return v2(v4, 0, 0);
}

uint64_t sub_10035B2E4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10035B40C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_10035B4BC(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E44DC0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10035B4F4(void *a1)
{
  v1 = a1[2];
  v2 = a1[3];
  v3 = (a1[1] + (v2 >> 1));
  if (v2)
  {
    return (*(*v3 + v1))();
  }

  else
  {
    return v1(v3);
  }
}

uint64_t sub_10035B53C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL isMandatoryDisabledVoLTE(int a1)
{
  if (a1 == 1)
  {
    v1 = "DisableVoLTE_slot1";
  }

  else
  {
    v1 = "DisableVoLTE_slot2";
  }

  v7 = 0;
  v2 = sub_10005D028();
  sub_10000501C(__p, v1);
  v3 = sub_1010D7A88(v2, __p, &v7);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  return v3;
}

void sub_10035B604(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mandatoryDisableVoLTE(Registry **a1, uint64_t a2, int a3)
{
  if (a2 == 1)
  {
    v6 = "DisableVoLTE_slot1";
  }

  else
  {
    v6 = "DisableVoLTE_slot2";
  }

  v20 = 1;
  v7 = sub_10005D028();
  sub_10000501C(&__p, v6);
  v8 = sub_1010D7A88(v7, &__p, &v20);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v8 != a3)
  {
    v9 = sub_10005D028();
    sub_10000501C(&__p, v6);
    if (a3)
    {
      sub_1014A6EC0(v9, &__p, &v20);
    }

    else
    {
      sub_10033220C(v9, &__p);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    ServiceMap = Registry::getServiceMap(*a1);
    v11 = ServiceMap;
    if ((v12 & 0x8000000000000000) != 0)
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
    __p.__r_.__value_.__r.__words[0] = v12;
    v16 = sub_100009510(&v11[1].__m_.__sig, &__p);
    if (!v16)
    {
      std::mutex::unlock(v11);
      return;
    }

    v18 = v16[3];
    v17 = v16[4];
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v11);
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v17);
      if (!v18)
      {
LABEL_26:
        sub_100004A34(v17);
        return;
      }
    }

    else
    {
      std::mutex::unlock(v11);
      if (!v18)
      {
        return;
      }
    }

    *&__p.__r_.__value_.__l.__data_ = 0uLL;
    (*(*v18 + 8))(&__p, v18, a2);
    if (__p.__r_.__value_.__r.__words[0])
    {
      (*(*__p.__r_.__value_.__l.__data_ + 64))(__p.__r_.__value_.__r.__words[0], 2);
    }

    if (__p.__r_.__value_.__l.__size_)
    {
      sub_100004A34(__p.__r_.__value_.__l.__size_);
    }

    if (v17)
    {
      goto LABEL_26;
    }
  }
}

void sub_10035B824(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, std::__shared_weak_count *a10, int a11, __int16 a12, char a13, char a14)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  if (v14)
  {
    sub_100004A34(v14);
  }

  _Unwind_Resume(exception_object);
}

void sub_10035B960(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  if (v2)
  {
    operator delete();
  }

  _Unwind_Resume(exception_object);
}

uint64_t VoLteControl::VoLteControl(uint64_t a1, void *a2, NSObject **a3, void *a4, uint64_t a5)
{
  ctu::OsLogContext::OsLogContext(&v17, kCtLoggingSystemName, "ps.vol");
  sub_1001303E4((a1 + 8), a3, &v17);
  ctu::OsLogContext::~OsLogContext(&v17);
  *a1 = off_101E44E40;
  v10 = a2[1];
  *(a1 + 48) = *a2;
  *(a1 + 56) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  v11 = a4[1];
  *(a1 + 64) = *a4;
  *(a1 + 72) = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 80) = a5;
  sub_10000501C(&__p, "VoLteControl");
  v12 = *(a1 + 24);
  v14 = v12;
  if (v12)
  {
    dispatch_retain(v12);
  }

  ctu::RestModule::RestModule();
  if (v14)
  {
    dispatch_release(v14);
  }

  if (v16 < 0)
  {
    operator delete(__p);
  }

  *(a1 + 112) = 0;
  *(a1 + 104) = a1 + 112;
  *(a1 + 120) = 0;
  *(a1 + 136) = 0;
  *(a1 + 128) = a1 + 136;
  *(a1 + 144) = 0;
  *(a1 + 152) = 1;
  *(a1 + 168) = 0;
  *(a1 + 160) = a1 + 168;
  *(a1 + 176) = 0;
  *(a1 + 192) = 0;
  *(a1 + 184) = a1 + 192;
  *(a1 + 216) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = a1 + 216;
  *(a1 + 224) = 0;
  *(a1 + 248) = 0;
  *(a1 + 240) = 0;
  *(a1 + 232) = a1 + 240;
  *(a1 + 256) = a1 + 264;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 288) = 0;
  *(a1 + 292) = 0;
  *(a1 + 280) = 0;
  *(a1 + 284) = 0;
  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  MCCAndMNC::MCCAndMNC((a1 + 312));
  *(a1 + 376) = 0;
  sub_100375B34(a1 + 384, a2, *(**a4 + 52));
  *(a1 + 416) = 0;
  *(a1 + 424) = 0;
  return a1;
}

void sub_10035BB94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, dispatch_object_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  sub_1002FECBC(v24 + 80);
  sub_10004C4EC(v25, *(v18 + 264));
  sub_10006DCAC(v24, *(v18 + 240));
  sub_10006DCAC(v23, *(v18 + 216));
  sub_10006DCAC(v22, *(v18 + 192));
  sub_10032D3A4(v21, *(v18 + 168));
  sub_100009970(v20, *(v18 + 136));
  sub_10004EC58(v19, *(v18 + 112));
  v27 = *(v18 + 96);
  if (v27)
  {
    sub_100004A34(v27);
  }

  v28 = *(v18 + 72);
  if (v28)
  {
    sub_100004A34(v28);
  }

  v29 = *(v18 + 56);
  if (v29)
  {
    sub_100004A34(v29);
  }

  TMKXPCServer.shutdown()();
  ctu::OsLogLogger::~OsLogLogger((v18 + 40));
  sub_1000C0544((v18 + 8));
  _Unwind_Resume(a1);
}

void VoLteControl::~VoLteControl(VoLteControl *this)
{
  *this = off_101E44E40;
  v2 = *(this + 53);
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_100375B78((this + 384));
  if (*(this + 375) < 0)
  {
    operator delete(*(this + 44));
  }

  if (*(this + 343) < 0)
  {
    operator delete(*(this + 40));
  }

  sub_10004C4EC(this + 256, *(this + 33));
  sub_10006DCAC(this + 232, *(this + 30));
  sub_10006DCAC(this + 208, *(this + 27));
  sub_10006DCAC(this + 184, *(this + 24));
  sub_10032D3A4(this + 160, *(this + 21));
  sub_100009970(this + 128, *(this + 17));
  sub_10004EC58(this + 104, *(this + 14));
  v3 = *(this + 12);
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = *(this + 9);
  if (v4)
  {
    sub_100004A34(v4);
  }

  v5 = *(this + 7);
  if (v5)
  {
    sub_100004A34(v5);
  }

  TMKXPCServer.shutdown()();
  ctu::OsLogLogger::~OsLogLogger((this + 40));
  sub_1000C0544(this + 1);
}

{
  VoLteControl::~VoLteControl(this);

  operator delete();
}

void VoLteControl::storage_migration_Peace(Registry **this)
{
  v51 = 0;
  v2 = sub_10005D028();
  sub_10000501C(__p, "kEnableIMSUserPreference");
  v3 = sub_1002D5DB8(v2, __p, &v51);
  v4 = v3;
  if (v50 < 0)
  {
    operator delete(__p[0]);
    if (!v4)
    {
      goto LABEL_19;
    }
  }

  else if (!v3)
  {
    goto LABEL_19;
  }

  v5 = sub_10005D028();
  sub_10000501C(__p, "kEnableIMSUserPreference");
  sub_10033220C(v5, __p);
  if (v50 < 0)
  {
    operator delete(__p[0]);
  }

  ServiceMap = Registry::getServiceMap(this[6]);
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
  __p[0] = v8;
  v12 = sub_100009510(&v7[1].__m_.__sig, __p);
  if (!v12)
  {
    v14 = 0;
    goto LABEL_14;
  }

  v14 = v12[3];
  v13 = v12[4];
  if (!v13)
  {
LABEL_14:
    std::mutex::unlock(v7);
    v13 = 0;
    v15 = 1;
    goto LABEL_15;
  }

  atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v7);
  atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v13);
  v15 = 0;
LABEL_15:
  v16 = *this[8];
  v17 = kCFEnableIMSUserPreference;
  v52 = 0;
  LODWORD(__p[0]) = v51;
  v18 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, __p);
  if (v18)
  {
    v19 = v52;
    v52 = v18;
    __p[0] = v19;
    sub_100029A48(__p);
  }

  v48 = v52;
  v52 = 0;
  sub_100029A48(&v52);
  (*(*v14 + 48))(v14, v16 + 24, v17, v48, kPhoneServicesWalletDomain, 0, 1, 0);
  sub_100029A48(&v48);
  if ((v15 & 1) == 0)
  {
    sub_100004A34(v13);
  }

LABEL_19:
  LOBYTE(v52) = 0;
  v20 = sub_10005D028();
  sub_10000501C(__p, "VoLTEBlockedByNetwork");
  v21 = sub_10005D0D8(v20, __p, &v52);
  v22 = v21;
  if (v50 < 0)
  {
    operator delete(__p[0]);
    if (!v22)
    {
      goto LABEL_35;
    }
  }

  else if (!v21)
  {
    goto LABEL_35;
  }

  v23 = sub_10005D028();
  sub_10000501C(__p, "VoLTEBlockedByNetwork");
  sub_10033220C(v23, __p);
  if (v50 < 0)
  {
    operator delete(__p[0]);
  }

  v24 = Registry::getServiceMap(this[6]);
  v25 = v24;
  if (v26 < 0)
  {
    v27 = (v26 & 0x7FFFFFFFFFFFFFFFLL);
    v28 = 5381;
    do
    {
      v26 = v28;
      v29 = *v27++;
      v28 = (33 * v28) ^ v29;
    }

    while (v29);
  }

  std::mutex::lock(v24);
  __p[0] = v26;
  v30 = sub_100009510(&v25[1].__m_.__sig, __p);
  if (v30)
  {
    v32 = v30[3];
    v31 = v30[4];
    if (v31)
    {
      atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v25);
      atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v31);
      v33 = 0;
      goto LABEL_33;
    }
  }

  else
  {
    v32 = 0;
  }

  std::mutex::unlock(v25);
  v31 = 0;
  v33 = 1;
LABEL_33:
  (*(*v32 + 16))(v32, *this[8] + 24, kCFVoLTEBlockedByNetworkKey, kCFBooleanTrue, kPhoneServicesWalletDomain, 0, 1, 0);
  if ((v33 & 1) == 0)
  {
    sub_100004A34(v31);
  }

LABEL_35:
  LOBYTE(v48) = 0;
  v34 = sub_10005D028();
  sub_10000501C(__p, "VoLTENetworkSeen");
  v35 = sub_10005D0D8(v34, __p, &v48);
  v36 = v35;
  if (v50 < 0)
  {
    operator delete(__p[0]);
    if (!v36)
    {
      return;
    }
  }

  else if (!v35)
  {
    return;
  }

  v37 = sub_10005D028();
  sub_10000501C(__p, "VoLTENetworkSeen");
  sub_10033220C(v37, __p);
  if (v50 < 0)
  {
    operator delete(__p[0]);
  }

  v38 = Registry::getServiceMap(this[6]);
  v39 = v38;
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

  std::mutex::lock(v38);
  __p[0] = v40;
  v44 = sub_100009510(&v39[1].__m_.__sig, __p);
  if (v44)
  {
    v46 = v44[3];
    v45 = v44[4];
    if (v45)
    {
      atomic_fetch_add_explicit(&v45->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v39);
      atomic_fetch_add_explicit(&v45->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v45);
      v47 = 0;
      goto LABEL_49;
    }
  }

  else
  {
    v46 = 0;
  }

  std::mutex::unlock(v39);
  v45 = 0;
  v47 = 1;
LABEL_49:
  (*(*v46 + 16))(v46, *this[8] + 24, kCFVoLTENetworkSeenKey, kCFBooleanTrue, kPhoneServicesWalletDomain, 0, 1, 0);
  if ((v47 & 1) == 0)
  {
    sub_100004A34(v45);
  }
}

void sub_10035C2E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, char a17)
{
  if ((v18 & 1) == 0)
  {
    sub_100004A34(v17);
  }

  _Unwind_Resume(exception_object);
}

void VoLteControl::initialize(VoLteControl *this)
{
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = PersonalityInfo::logPrefix(**(this + 8));
    *buf = 136315394;
    *&buf[4] = v3;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%sinitializing", buf, 0x16u);
  }

  ServiceMap = Registry::getServiceMap(*(this + 6));
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
  if (v10)
  {
    v12 = v10[3];
    v11 = v10[4];
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v5);
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v11);
      goto LABEL_11;
    }
  }

  else
  {
    v12 = 0;
  }

  std::mutex::unlock(v5);
  v11 = 0;
LABEL_11:
  v13 = *(this + 53);
  *(this + 52) = v12;
  *(this + 53) = v11;
  if (v13)
  {
    sub_100004A34(v13);
  }

  VoLteControl::storage_migration_Peace(this);
  Registry::createRestModuleOneTimeUseConnection(&v15, *(this + 6));
  ctu::RestModule::connect();
  if (v16)
  {
    sub_100004A34(v16);
  }

  sub_100004AA0(buf, this + 1);
  v14 = *&buf[8];
  if (*&buf[8])
  {
    atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
    sub_100004A34(v14);
  }

  sub_10000501C(&__p, "/cc/props/ims_voice_support");
  operator new();
}

void sub_10035CA48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  sub_1000062D4(&a18);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_10035CB14(uint64_t a1, uint64_t a2)
{
  sub_10000501C(&__p, "/cc/props/carrier_blocks_calls_over_cs");
  v5[0] = off_101E45468;
  v5[1] = a1;
  v5[3] = v5;
  ctu::RestModule::observeProperty();
  sub_1000062D4(v5);
  if (v4 < 0)
  {
    operator delete(__p);
  }
}

void sub_10035CBC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_10035CBF4(uint64_t a1, uint64_t a2)
{
  sub_10000501C(&__p, "/cc/props/operator_blocks_calls_over_cs");
  v5[0] = off_101E454E8;
  v5[1] = a1;
  v5[3] = v5;
  ctu::RestModule::observeProperty();
  sub_1000062D4(v5);
  if (v4 < 0)
  {
    operator delete(__p);
  }
}

void sub_10035CCA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

const void **VoLteControl::readRawSwitchState(VoLteControl *this)
{
  *(this + 74) = 0;
  v21 = 0;
  ServiceMap = Registry::getServiceMap(*(this + 6));
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
  if (v8)
  {
    v10 = v8[3];
    v9 = v8[4];
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v3);
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v9);
      v11 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v10 = 0;
  }

  std::mutex::unlock(v3);
  v9 = 0;
  v11 = 1;
LABEL_9:
  (*(*v10 + 64))(&v20, v10, **(this + 8) + 24, kCFEnableIMSUserPreference, kPhoneServicesWalletDomain, 0, 1);
  sub_10010B240(&v21, &v20);
  sub_10000A1EC(&v20);
  if ((v11 & 1) == 0)
  {
    sub_100004A34(v9);
  }

  if (v21)
  {
    *buf = 0;
    ctu::cf::assign(buf, v21, v12);
    v13 = *buf;
    if (*buf > 0)
    {
      v14 = 2;
LABEL_19:
      *(this + 74) = v14;
      return sub_100029A48(&v21);
    }

    v15 = VoLteControl::volteSwitchVer(this);
    v16 = -v13;
    if (v15 <= -v13)
    {
      v14 = 1;
      goto LABEL_19;
    }

    v17 = *(this + 5);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = PersonalityInfo::logPrefix(**(this + 8));
      *buf = 136315906;
      *&buf[4] = v18;
      v23 = 2080;
      v24 = " ";
      v25 = 1024;
      v26 = v16;
      v27 = 1024;
      v28 = v15;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I %s%sVoLTE Switch: user preference has ver:%d vs current:%d, force reset to default", buf, 0x22u);
    }

    (*(*this + 96))(this);
  }

  return sub_100029A48(&v21);
}

void sub_10035CF44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100029A48(va);
  _Unwind_Resume(a1);
}

BOOL VoLteControl::evaluateCarrierSupport(VoLteControl *this)
{
  if (capabilities::ct::supportsVoLTE(this))
  {
    *buf = 0;
    (*(**(this + 52) + 96))(&v13);
    sub_10002FE1C(buf, &v13);
    sub_10000A1EC(&v13);
    LOBYTE(v13) = 0;
    ctu::cf::assign(&v13, *buf, v2);
    v3 = v13;
    sub_100045C8C(buf);
  }

  else
  {
    if (*(this + 281) == 1)
    {
      v4 = *(this + 5);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = PersonalityInfo::logPrefix(**(this + 8));
        *buf = 136315394;
        *&buf[4] = v5;
        v15 = 2080;
        v16 = " ";
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%sDevice does not support VoLTE", buf, 0x16u);
      }
    }

    v3 = 0;
  }

  v6 = *(this + 281);
  v7 = v3 & 1;
  if (v6 != v7)
  {
    v8 = *(this + 5);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = PersonalityInfo::logPrefix(**(this + 8));
      v10 = CSIBOOLAsString(*(this + 281));
      v11 = CSIBOOLAsString(v7);
      *buf = 136315906;
      *&buf[4] = v9;
      v15 = 2080;
      v16 = " ";
      v17 = 2080;
      v18 = v10;
      v19 = 2080;
      v20 = v11;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%sSupports VoLTE capability is changing from %s to %s", buf, 0x2Au);
    }

    *(this + 281) = v7;
  }

  return v6 != v7;
}

void sub_10035D1B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_100045C8C(va);
  _Unwind_Resume(a1);
}

uint64_t VoLteControl::start(VoLteControl *this)
{
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = PersonalityInfo::logPrefix(**(this + 8));
    v5 = 136315394;
    v6 = v3;
    v7 = 2080;
    v8 = " ";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%sstarted", &v5, 0x16u);
  }

  return (*(*this + 104))(this, 0, 1);
}

void VoLteControl::sHandleMigrationForAll(Registry **a1, uint64_t a2, int a3)
{
  oslog = 0;
  ctu::OsLogContext::OsLogContext(&buf, kCtLoggingSystemName, "ps.vol");
  ctu::OsLogLogger::OsLogLogger(&oslog, &buf);
  ctu::OsLogContext::~OsLogContext(&buf);
  v5 = oslog;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf.var0) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Migrator has called to re-evaluate the saved VoLTE Switch state", &buf, 2u);
    v5 = oslog;
  }

  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    v7 = CSIBOOLAsString(a3);
    LODWORD(buf.var0) = 136315138;
    *(&buf.var0 + 4) = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Is from a different device: %s", &buf, 0xCu);
  }

  if (a3)
  {
    v8 = capabilities::ct::latestAndGreatestDevice(v6);
    v9 = oslog;
    if (v8)
    {
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf.var0) = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I VoLTE Switch: Restoring on latest and greatest from other device, force reset to default if OFF", &buf, 2u);
      }

      ServiceMap = Registry::getServiceMap(*a1);
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
      buf.var0 = v12;
      v16 = sub_100009510(&v11[1].__m_.__sig, &buf);
      if (v16)
      {
        v18 = v16[3];
        v17 = v16[4];
        if (v17)
        {
          atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v11);
          atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v17);
          v28 = 0;
LABEL_20:
          buf.var0 = 0;
          buf.var1.fRef = 0;
          v34 = 0;
          (*(*v18 + 80))(&buf, v18, 0);
          var0 = buf.var0;
          fRef = buf.var1.fRef;
          if (buf.var0 != buf.var1.fRef)
          {
            v21 = kPhoneServicesWalletDomain;
            do
            {
              v29 = 0;
              (*(*v18 + 64))(v32, v18, var0, kCFEnableIMSUserPreference, v21, 0, 1);
              sub_10010B240(&v29, v32);
              sub_10000A1EC(v32);
              if (v29)
              {
                v31 = 0;
                ctu::cf::assign(&v31, v29, v22);
                if (v31 <= 0)
                {
                  v23 = oslog;
                  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
                  {
                    v24 = var0[23];
                    v25 = (v24 & 0x80u) != 0;
                    if ((v24 & 0x80u) != 0)
                    {
                      v24 = *(var0 + 1);
                    }

                    if (v25)
                    {
                      v26 = *var0;
                    }

                    else
                    {
                      v26 = var0;
                    }

                    if (v24)
                    {
                      v27 = v26;
                    }

                    else
                    {
                      v27 = "<invalid>";
                    }

                    *v32 = 136315138;
                    *&v32[4] = v27;
                    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I VoLTE Switch: reset %s VoLTE state to default", v32, 0xCu);
                  }

                  (*(*v18 + 72))(v18, var0, kCFEnableIMSUserPreference, v21, 0, 1);
                }
              }

              sub_100029A48(&v29);
              var0 += 24;
            }

            while (var0 != fRef);
          }

          *v32 = &buf;
          sub_10005AAF8(v32);
          if ((v28 & 1) == 0)
          {
            sub_100004A34(v17);
          }

          goto LABEL_38;
        }
      }

      else
      {
        v18 = 0;
      }

      std::mutex::unlock(v11);
      v17 = 0;
      v28 = 1;
      goto LABEL_20;
    }
  }

  else
  {
    v9 = oslog;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf.var0) = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I VoLTE Switch: migration don't cause VoLTE switch update", &buf, 2u);
  }

LABEL_38:
  ctu::OsLogLogger::~OsLogLogger(&oslog);
}

void sub_10035D6EC(_Unwind_Exception *a1, uint64_t a2, int a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  if ((a11 & 1) == 0)
  {
    sub_100004A34(v15);
  }

  ctu::OsLogLogger::~OsLogLogger(va);
  _Unwind_Resume(a1);
}

uint64_t VoLteControl::handleMigration(VoLteControl *this)
{
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = PersonalityInfo::logPrefix(**(this + 8));
    v5 = 136315394;
    v6 = v3;
    v7 = 2080;
    v8 = " ";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%sVoLTE Switch: review provisioning on migration", &v5, 0x16u);
  }

  VoLteControl::readRawSwitchState(this);
  return (*(*this + 104))(this, 0, 0);
}

unint64_t VoLteControl::volteSwitchVer(VoLteControl *this)
{
  cf = 0;
  (*(**(this + 52) + 96))(&cf, *(this + 52), *(**(this + 8) + 52), 1, kCFEnableLTEAfterUpgrade, 0, 0);
  if (!cf)
  {
    goto LABEL_9;
  }

  v1 = CFGetTypeID(cf);
  TypeID = CFNumberGetTypeID();
  v3 = cf;
  if (v1 != TypeID)
  {
    v10 = 0;
    if (!cf)
    {
      goto LABEL_10;
    }

    v6 = CFGetTypeID(cf);
    if (v6 == CFBooleanGetTypeID())
    {
      ctu::cf::assign(&v10, v3, v7);
      v3 = v10;
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v11 = 0;
  if (cf)
  {
    v4 = CFGetTypeID(cf);
    if (v4 == CFNumberGetTypeID())
    {
      ctu::cf::assign(&v11, v3, v5);
      v3 = v11;
      goto LABEL_10;
    }

LABEL_9:
    v3 = 0;
  }

LABEL_10:
  sub_10000A1EC(&cf);
  return v3;
}

BOOL VoLteControl::isVoLteUserPreferenceSet(Registry **this)
{
  v15 = 0;
  ServiceMap = Registry::getServiceMap(this[6]);
  v3 = ServiceMap;
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

  std::mutex::lock(ServiceMap);
  v16 = v4;
  v8 = sub_100009510(&v3[1].__m_.__sig, &v16);
  if (v8)
  {
    v10 = v8[3];
    v9 = v8[4];
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v3);
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v9);
      v11 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v10 = 0;
  }

  std::mutex::unlock(v3);
  v9 = 0;
  v11 = 1;
LABEL_9:
  (*(*v10 + 64))(&v14, v10, *this[8] + 24, kCFEnableIMSUserPreference, kPhoneServicesWalletDomain, 0, 1);
  sub_10010B240(&v15, &v14);
  sub_10000A1EC(&v14);
  if ((v11 & 1) == 0)
  {
    sub_100004A34(v9);
  }

  v12 = v15 != 0;
  sub_100029A48(&v15);
  return v12;
}

void sub_10035DAFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10000A1EC(va);
  if ((v4 & 1) == 0)
  {
    sub_100004A34(v3);
  }

  _Unwind_Resume(a1);
}

uint64_t VoLteControl::voLTESwitchPresent(VoLteControl *this)
{
  BOOLean = 0;
  (*(**(this + 52) + 96))(&v9);
  sub_10002FE1C(&BOOLean, &v9);
  sub_10000A1EC(&v9);
  if (BOOLean && CFBooleanGetValue(BOOLean) == 1)
  {
    v2 = sub_100375DA0(this + 384) ^ 1;
  }

  else
  {
    v2 = 0;
  }

  v3 = *(this + 24);
  if (!v3)
  {
    goto LABEL_15;
  }

  v4 = *(**(this + 8) + 52);
  v5 = this + 192;
  do
  {
    if (*(v3 + 7) >= v4)
    {
      v5 = v3;
    }

    v3 = *&v3[8 * (*(v3 + 7) < v4)];
  }

  while (v3);
  if (v5 == this + 192)
  {
LABEL_15:
    v6 = v2;
  }

  else
  {
    v6 = v2;
    if (v4 >= *(v5 + 7))
    {
      if (v5[32])
      {
        v6 = v2;
      }

      else
      {
        v6 = 1;
      }
    }
  }

  if (v2)
  {
    v7 = 256;
  }

  else
  {
    v7 = 0;
  }

  sub_100045C8C(&BOOLean);
  return v7 | v6;
}

void sub_10035DC54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100045C8C(va);
  _Unwind_Resume(a1);
}

BOOL VoLteControl::mandatoryDisabled(VoLteControl *this)
{
  result = sub_10000BAA0();
  if (result)
  {
    v3 = *(**(this + 8) + 52);

    return isMandatoryDisabledVoLTE(v3);
  }

  return result;
}

BOOL VoLteControl::calculateVoLTESwitchState(PersonalityInfo ***this)
{
  v2 = VoLteControl::voLTESwitchPresent(this);
  v3 = v2;
  DefaultVolteUserPreferenceFromBundle = VoLteControl::fetchDefaultVolteUserPreferenceFromBundle(this, (v2 >> 8) & 1);
  if (VoLteControl::mandatoryDisabled(this))
  {
    v5 = this[5];
    DefaultVolteUserPreferenceFromBundle = 0;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = PersonalityInfo::logPrefix(*this[8]);
      *buf = 136315394;
      *&buf[4] = v6;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s%sVoLTE Switch: mandatory disabled", buf, 0x16u);
      return 0;
    }
  }

  else if ((*(this + 284) & 1) != 0 || VoLteControl::operatorBlocksCallsOverCS(this))
  {
    v7 = this[5];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = PersonalityInfo::logPrefix(*this[8]);
      *buf = 136315394;
      *&buf[4] = v8;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s%sVoLTE Switch: Non-CS operator observed, value defaults to ON", buf, 0x16u);
    }

    return 1;
  }

  else if ((v3 & 1) != 0 && (v10 = *(this + 74)) != 0)
  {
    v11 = this[5];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = PersonalityInfo::logPrefix(*this[8]);
      v13 = sub_10060FFC0(*(this + 74));
      *buf = 136315650;
      *&buf[4] = v12;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      *&buf[22] = 2080;
      v27 = v13;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I %s%sVoLTE Switch: Using manual preference %s", buf, 0x20u);
      v10 = *(this + 74);
    }

    return v10 == 2;
  }

  else
  {
    v14 = (*(*this[10] + 50))(this[10], 0);
    *buf = *off_101E44F08;
    *&buf[16] = @"EnableVoLTEWithVoWiFi";
    v23 = 0;
    v24 = 0;
    __p = 0;
    sub_10005B328(&__p, buf, &v27, 3uLL);
    (*(*this[52] + 13))(buf);
    v15 = *buf;
    v25 = 0;
    if (*buf)
    {
      v16 = CFGetTypeID(*buf);
      if (v16 == CFBooleanGetTypeID())
      {
        ctu::cf::assign(&v25, v15, v17);
        LOBYTE(v15) = v25;
      }

      else
      {
        LOBYTE(v15) = 0;
      }
    }

    sub_10000A1EC(buf);
    if ((v14 & 1) != 0 && (v15 & ((v14 & 0x100) >> 8)) == 1)
    {
      v18 = this[5];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = PersonalityInfo::logPrefix(*this[8]);
        *buf = 136315394;
        *&buf[4] = v19;
        *&buf[12] = 2080;
        *&buf[14] = " ";
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I %s%sVoLTE Switch: Enable VoLTE along with VoWiFi", buf, 0x16u);
      }

      DefaultVolteUserPreferenceFromBundle = 1;
    }

    else
    {
      v20 = this[5];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = PersonalityInfo::logPrefix(*this[8]);
        *buf = 136315650;
        *&buf[4] = v21;
        *&buf[12] = 2080;
        *&buf[14] = " ";
        *&buf[22] = 1024;
        LODWORD(v27) = DefaultVolteUserPreferenceFromBundle;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I %s%sVoLTE Switch: Using carrier default %d", buf, 0x1Cu);
      }
    }

    if (__p)
    {
      v23 = __p;
      operator delete(__p);
    }
  }

  return DefaultVolteUserPreferenceFromBundle;
}

void sub_10035E0F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t VoLteControl::fetchDefaultVolteUserPreferenceFromBundle(VoLteControl *this, int a2)
{
  *cf = *off_101E44F20;
  v15 = @"EnableVolteByDefault";
  v11 = 0;
  v12 = 0;
  __p = 0;
  sub_10005B328(&__p, cf, &v16, 3uLL);
  (*(**(this + 52) + 104))(cf);
  v4 = cf[0];
  v13 = a2 ^ 1;
  if (cf[0] && (v5 = CFGetTypeID(cf[0]), v5 == CFBooleanGetTypeID()))
  {
    ctu::cf::assign(&v13, v4, v6);
    v7 = v13;
    sub_10000A1EC(cf);
    if ((v7 & 1) == 0)
    {
LABEL_4:
      v8 = sub_100375DA0(this + 384);
      goto LABEL_7;
    }
  }

  else
  {
    sub_10000A1EC(cf);
    if (a2)
    {
      goto LABEL_4;
    }
  }

  v8 = 1;
LABEL_7:
  if (__p)
  {
    v11 = __p;
    operator delete(__p);
  }

  return v8;
}

void sub_10035E284(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t VoLteControl::operatorBlocksCallsOverCS(VoLteControl *this)
{
  v1 = *(this + 30);
  if (!v1)
  {
    goto LABEL_8;
  }

  v2 = *(**(this + 8) + 52);
  v3 = this + 240;
  do
  {
    if (*(v1 + 7) >= v2)
    {
      v3 = v1;
    }

    v1 = *&v1[8 * (*(v1 + 7) < v2)];
  }

  while (v1);
  if (v3 != this + 240 && v2 >= *(v3 + 7))
  {
    v4 = v3[32];
  }

  else
  {
LABEL_8:
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t VoLteControl::resetUserPreference(VoLteControl *this)
{
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = PersonalityInfo::logPrefix(**(this + 8));
    *v15 = 136315394;
    *&v15[4] = v3;
    v16 = 2080;
    v17 = " ";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%sVoLTE Switch: Reset", v15, 0x16u);
  }

  *(this + 74) = 0;
  ServiceMap = Registry::getServiceMap(*(this + 6));
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
  *v15 = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, v15);
  if (v10)
  {
    v12 = v10[3];
    v11 = v10[4];
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v5);
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v11);
      v13 = 0;
      goto LABEL_11;
    }
  }

  else
  {
    v12 = 0;
  }

  std::mutex::unlock(v5);
  v11 = 0;
  v13 = 1;
LABEL_11:
  (*(*v12 + 72))(v12, **(this + 8) + 24, kCFEnableIMSUserPreference, kPhoneServicesWalletDomain, 0, 1);
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v11);
  }

  return (*(*this + 104))(this, 0, 0);
}

void sub_10035E50C(_Unwind_Exception *exception_object)
{
  if ((v1 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(exception_object);
}

void VoLteControl::setVoLTEFeatureUserPreference(VoLteControl *this, int a2)
{
  if (a2)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  if (*(this + 74) == v2)
  {
    return;
  }

  if ((a2 & 1) == 0 && ((*(this + 284) & 1) != 0 || VoLteControl::operatorBlocksCallsOverCS(this)))
  {
    v20 = *(this + 5);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = PersonalityInfo::logPrefix(**(this + 8));
      *buf = 136315394;
      *&buf[4] = v21;
      v29 = 2080;
      v30 = " ";
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I %s%sVoLTE Switch: CS calls are blocked for the current or recent operator, prevent VoLTE preference set", buf, 0x16u);
    }

    return;
  }

  v5 = *(this + 5);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = PersonalityInfo::logPrefix(**(this + 8));
    v7 = sub_10060FFC0(*(this + 74));
    *buf = 136315906;
    *&buf[4] = v6;
    v29 = 2080;
    v30 = " ";
    v31 = 2080;
    v32 = v7;
    v33 = 2080;
    v34 = sub_10060FFC0(v2);
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s%sVoLTE Switch: changed user preference from %s to %s", buf, 0x2Au);
  }

  v8 = VoLteControl::volteSwitchVer(this);
  if (a2)
  {
    v9 = v8 + 1;
  }

  else
  {
    v9 = -v8;
  }

  ServiceMap = Registry::getServiceMap(*(this + 6));
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
  *buf = v12;
  v16 = sub_100009510(&v11[1].__m_.__sig, buf);
  if (!v16)
  {
    v18 = 0;
    goto LABEL_22;
  }

  v18 = v16[3];
  v17 = v16[4];
  if (!v17)
  {
LABEL_22:
    std::mutex::unlock(v11);
    v17 = 0;
    v19 = 1;
    goto LABEL_23;
  }

  atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v11);
  atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v17);
  v19 = 0;
LABEL_23:
  v22 = **(this + 8);
  v23 = kCFEnableIMSUserPreference;
  v27 = 0;
  *buf = v9;
  v24 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, buf);
  if (v24)
  {
    v27 = v24;
    *buf = 0;
    sub_100029A48(buf);
    v25 = v27;
  }

  else
  {
    v25 = 0;
  }

  v27 = 0;
  sub_100029A48(&v27);
  (*(*v18 + 48))(v18, v22 + 24, v23, v25, kPhoneServicesWalletDomain, 0, 1, 0, v25);
  sub_100029A48(&v26);
  if ((v19 & 1) == 0)
  {
    sub_100004A34(v17);
  }

  *(this + 74) = v2;
  (*(*this + 104))(this, 1, 0);
  VoLteControl::submitSwitchMetric_sync(this);
}

void sub_10035E878(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9)
{
  sub_100029A48(&a9);
  if ((v10 & 1) == 0)
  {
    sub_100004A34(v9);
  }

  _Unwind_Resume(a1);
}

void VoLteControl::submitSwitchMetric_sync(uint64_t this)
{
  if (*(**(this + 64) + 48) == 1)
  {
    (*(*this + 56))(&v7);
    v2 = BYTE2(v7);
    sub_10001021C(&v8);
    if (v2 == 1)
    {
      v3 = *(this + 300) == 2;
      v4 = **(this + 64);
      v5 = *(v4 + 13);
      if (v5 > 1)
      {
        if (v5 == 2)
        {
          v7 = _NSConcreteStackBlock;
          v8 = 0x40000000;
          v9 = sub_1003657E4;
          v10 = &unk_101E45578;
          v11 = v3;
          v12 = 2;
          sub_100365638(0x80118, &v7);
          return;
        }

        if (v5 != 3)
        {
          return;
        }
      }

      else if (v5)
      {
        if (v5 == 1)
        {
          v7 = _NSConcreteStackBlock;
          v8 = 0x40000000;
          v9 = sub_1003655F0;
          v10 = &unk_101E45558;
          v11 = v3;
          v12 = 1;
          sub_100365444(0x800ED, &v7);
        }

        return;
      }

      v6 = *(this + 40);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_10176C138(v4, v6);
      }
    }
  }
}

void sub_10035EB40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t VoLteControl::submitAnalyticsSwitchMetric_sync(uint64_t this)
{
  v1 = **(this + 64);
  if (*(v1 + 48) == 1)
  {
    phoneservices::submitSwitchAnalytics(this + 48, 2u, *(v1 + 52), *(this + 281), *(this + 292));
  }

  return this;
}

uint64_t VoLteControl::canSwitchVoltePreferenceOnCurrentOperator(VoLteControl *this)
{
  if (*(this + 284))
  {
    return 0;
  }

  else
  {
    return VoLteControl::operatorBlocksCallsOverCS(this) ^ 1;
  }
}

BOOL VoLteControl::evaluateVoLTEFeatureState(VoLteControl *this)
{
  v2 = **(this + 8);
  if (*(v2 + 48) == 1 && (v3 = *(this + 72)) != 0)
  {
    if (((v3 == 2) & *(this + 292)) != 0)
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = *(this + 75);
  if (v4 != v5)
  {
    v6 = *(this + 5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315650;
      v9 = PersonalityInfo::logPrefix(v2);
      v10 = 2080;
      v11 = " ";
      v12 = 2080;
      v13 = asString();
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s%sVoLTE feature re-evaluated to %s", &v8, 0x20u);
    }

    *(this + 75) = v4;
  }

  return v4 != v5;
}

_BYTE *VoLteControl::handlePersonalityActivated(_BYTE *this, char a2)
{
  if ((a2 & 1) == 0)
  {
    this[377] = 0;
    this[284] = 0;
    if (this[283] == 1)
    {
      this[283] = 0;
    }
  }

  return this;
}

uint64_t VoLteControl::handlePersonalityCfgChange(VoLteControl *this)
{
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = PersonalityInfo::logPrefix(**(this + 8));
    v5 = 136315394;
    v6 = v3;
    v7 = 2080;
    v8 = " ";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%spersonality config changed", &v5, 0x16u);
  }

  VoLteControl::readRawSwitchState(this);
  return (*(*this + 104))(this, 0, 0);
}

uint64_t VoLteControl::handlePersonalWalletChanged(VoLteControl *this)
{
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = PersonalityInfo::logPrefix(**(this + 8));
    v5 = 136315394;
    v6 = v3;
    v7 = 2080;
    v8 = " ";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%spersonal wallet changed", &v5, 0x16u);
  }

  VoLteControl::readRawSwitchState(this);
  return (*(*this + 104))(this, 0, 0);
}

void VoLteControl::handleImsVoiceSupportOnLTEUpdate(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = PersonalityInfo::logPrefix(**(a1 + 64));
    v6 = 136315650;
    v7 = v5;
    v8 = 2080;
    v9 = " ";
    v10 = 2080;
    v11 = asString();
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%sIms Voice Support on LTE changed to %s", &v6, 0x20u);
  }

  if (v2)
  {
    VoLteControl::checkAndEnableVoLTEMenu(a1, v2 == 1);
    (*(*a1 + 104))(a1, 0, 0);
  }
}

void VoLteControl::checkAndEnableVoLTEMenu(uint64_t this, int a2)
{
  if (a2 && !VoLteControl::isVoLTENetworkSeen(this))
  {
    v3 = *(this + 40);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = PersonalityInfo::logPrefix(**(this + 64));
      v5 = 136315394;
      v6 = v4;
      v7 = 2080;
      v8 = " ";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s%sCurrent network supports IMS, from now on VoLTE provisioning/switch allowed", &v5, 0x16u);
    }

    VoLteControl::markVoLTENetworkSeen(this);
  }
}

uint64_t VoLteControl::handleCsVoiceSupportUpdate(uint64_t this, int a2)
{
  if (*(this + 283) != 1 || *(this + 282) != a2)
  {
    v4 = this;
    v5 = *(this + 40);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = PersonalityInfo::logPrefix(**(v4 + 64));
      if (*(v4 + 283) == 1)
      {
        v7 = asStringBool(*(v4 + 282));
      }

      else
      {
        v7 = "<unknown>";
      }

      v12 = 136315906;
      v13 = v6;
      v14 = 2080;
      v15 = " ";
      v16 = 2080;
      v17 = v7;
      v18 = 2080;
      v19 = asStringBool(a2);
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s%scs_voice_support_changed: %s -> %s", &v12, 0x2Au);
    }

    *(v4 + 282) = a2 | 0x100;
    if (*(v4 + 284) & 1) != 0 || (a2)
    {
      if (*(v4 + 284))
      {
        if (a2)
        {
          v10 = *(v4 + 40);
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            v11 = PersonalityInfo::logPrefix(**(v4 + 64));
            v12 = 136315394;
            v13 = v11;
            v14 = 2080;
            v15 = " ";
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I %s%sNonCS operator was seen recently - Keep dynamic VoLTE support allowed", &v12, 0x16u);
          }
        }
      }
    }

    else
    {
      v8 = *(v4 + 40);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = PersonalityInfo::logPrefix(**(v4 + 64));
        v12 = 136315394;
        v13 = v9;
        v14 = 2080;
        v15 = " ";
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%sNonCS operator observed - Allow dynamic VoLTE support", &v12, 0x16u);
      }

      *(v4 + 284) = 1;
    }

    return (*(*v4 + 104))(v4, 0, 0);
  }

  return this;
}

void VoLteControl::handleNewServingNetwork(uint64_t a1, MCCAndMNC *a2)
{
  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = PersonalityInfo::logPrefix(**(a1 + 64));
    MCCAndMNC::getMcc(&v14, a2);
    IntValue = MCC::getIntValue(&v14);
    MCCAndMNC::getMnc(v12, a2);
    IntegerWidth = MNC::getIntegerWidth(v12);
    MCCAndMNC::getMnc(v10, a2);
    v8 = MCC::getIntValue(v10);
    *buf = 136316162;
    *v18 = v5;
    *&v18[8] = 2080;
    *&v18[10] = " ";
    v19 = 1024;
    v20 = IntValue;
    v21 = 1024;
    v22 = IntegerWidth;
    v23 = 1024;
    v24 = v8;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%sServingNetwork: PLMN: %03d-%0.*d - reset dynamic VoLTE support", buf, 0x28u);
    if (v11 < 0)
    {
      operator delete(v10[1]);
    }

    if (v13 < 0)
    {
      operator delete(v12[1]);
    }

    if (v16 < 0)
    {
      operator delete(v15);
    }
  }

  MCCAndMNC::getMcc(buf, a2);
  if (MCC::valid(buf))
  {
    MCCAndMNC::getMnc(&v14, a2);
    if (MCC::valid(&v14))
    {
      v9 = MCCAndMNC::operator!=();
    }

    else
    {
      v9 = 0;
    }

    if (v16 < 0)
    {
      operator delete(v15);
    }
  }

  else
  {
    v9 = 0;
  }

  if (SBYTE1(v22) < 0)
  {
    operator delete(*&v18[4]);
    if (!v9)
    {
      return;
    }
  }

  else if (!v9)
  {
    return;
  }

  *(a1 + 284) = 0;
  if (*(a1 + 283) == 1)
  {
    *(a1 + 283) = 0;
  }

  MCC::operator=();
  MCC::operator=();
  (*(*a1 + 104))(a1, 0, 0);
}

void sub_10035F5A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (a36 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t VoLteControl::handleAirplaneModeChanged(uint64_t this, int a2)
{
  if (a2)
  {
    v2 = this;
    if (*(this + 284) == 1)
    {
      v3 = *(this + 40);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v4 = PersonalityInfo::logPrefix(**(v2 + 64));
        v5 = 136315394;
        v6 = v4;
        v7 = 2080;
        v8 = " ";
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s%sRadio disabled - Reset dynamic VoLTE support", &v5, 0x16u);
      }

      *(v2 + 284) = 0;
      if (*(v2 + 283) == 1)
      {
        *(v2 + 283) = 0;
      }

      return (*(*v2 + 104))(v2, 0, 0);
    }
  }

  return this;
}

BOOL VoLteControl::evaluateImsFeatureSupport(VoLteControl *this)
{
  if (*(this + 281) != 1)
  {
    goto LABEL_8;
  }

  v2 = *(this + 72);
  v3 = *(this + 77);
  if (v3 > 2)
  {
    if (v3 <= 4)
    {
      if (v3 != 3 && (!VoLteControl::enableVolteWhileEntitlementStatusIsUnknown(this) || (*(this + 376) & 1) == 0 && !VoLteControl::isSelfProvisioningAllowed(this)))
      {
LABEL_8:
        v2 = 1;
        goto LABEL_22;
      }

      goto LABEL_13;
    }

    if (v3 != 5)
    {
      if (v3 == 6)
      {
        v2 = 1;
      }

      goto LABEL_22;
    }

LABEL_18:
    if (VoLteControl::enableVolteWhileEntitlementStatusIsUnknown(this))
    {
      v2 = 2;
    }

    else
    {
      v2 = 1;
    }

    goto LABEL_22;
  }

  switch(v3)
  {
    case 0:
      v2 = 0;
      break;
    case 1:
LABEL_13:
      v2 = 2;
      break;
    case 2:
      goto LABEL_18;
  }

LABEL_22:
  v4 = *(this + 72);
  if (v4 != v2)
  {
    v5 = *(this + 5);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = PersonalityInfo::logPrefix(**(this + 8));
      v8 = 136315906;
      v9 = v6;
      v10 = 2080;
      v11 = " ";
      v12 = 2080;
      v13 = asString();
      v14 = 2080;
      v15 = asString();
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s%sVoLTE Network support is changing from %s to %s", &v8, 0x2Au);
    }

    *(this + 72) = v2;
  }

  return v4 != v2;
}

uint64_t VoLteControl::enableVolteWhileEntitlementStatusIsUnknown(Registry **this)
{
  v19 = 0;
  v20 = 0;
  ServiceMap = Registry::getServiceMap(this[6]);
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
  v17 = v4;
  v8 = sub_100009510(&v3[1].__m_.__sig, &v17);
  if (v8)
  {
    v10 = v8[3];
    v9 = v8[4];
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v3);
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v9);
      v11 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v10 = 0;
  }

  std::mutex::unlock(v3);
  v9 = 0;
  v11 = 1;
LABEL_9:
  (**v10)(&v19, v10, *this[8] + 24);
  if ((v11 & 1) == 0)
  {
    sub_100004A34(v9);
  }

  if (v19)
  {
    v17 = 0;
    v18 = 0;
    (*(*v19 + 64))(&v17);
    if (v17)
    {
      sub_100A83764(v17, @"EnableVolteWhileEntitlementStatusIsUnknown", &cf);
      v12 = cf;
      v21 = 0;
      if (cf)
      {
        v13 = CFGetTypeID(cf);
        if (v13 == CFBooleanGetTypeID())
        {
          ctu::cf::assign(&v21, v12, v14);
          LOBYTE(v12) = v21;
        }

        else
        {
          LOBYTE(v12) = 0;
        }
      }

      sub_10000A1EC(&cf);
    }

    else
    {
      LOBYTE(v12) = 0;
    }

    if (v18)
    {
      sub_100004A34(v18);
    }
  }

  else
  {
    LOBYTE(v12) = 0;
  }

  if (v20)
  {
    sub_100004A34(v20);
  }

  return v12 & 1;
}

void sub_10035FAD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a11)
  {
    sub_100004A34(a11);
  }

  if (a13)
  {
    sub_100004A34(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_10035FB10()
{
  if (v0)
  {
    JUMPOUT(0x10035FB08);
  }

  JUMPOUT(0x10035FB00);
}

BOOL VoLteControl::isSelfProvisioningAllowed(VoLteControl *this)
{
  if (*(this + 377))
  {
    return 0;
  }

  if (VoLteControl::isVoLTEBlockedByNetwork(this) || *(this + 292) != 1)
  {
    return 0;
  }

  return !VoLteControl::shouldHideVoLteSwitchAndBlockEntitlements(this);
}

BOOL VoLteControl::isVoLTEBlockedByNetwork(Registry **this)
{
  BOOLean = 0;
  ServiceMap = Registry::getServiceMap(this[6]);
  v3 = ServiceMap;
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

  std::mutex::lock(ServiceMap);
  v16 = v4;
  v8 = sub_100009510(&v3[1].__m_.__sig, &v16);
  if (v8)
  {
    v10 = v8[3];
    v9 = v8[4];
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v3);
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v9);
      v11 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v10 = 0;
  }

  std::mutex::unlock(v3);
  v9 = 0;
  v11 = 1;
LABEL_9:
  (*(*v10 + 24))(&v14, v10, *this[8] + 24, kCFVoLTEBlockedByNetworkKey, kPhoneServicesWalletDomain, 0, 1);
  sub_10002FE1C(&BOOLean, &v14);
  sub_10000A1EC(&v14);
  if ((v11 & 1) == 0)
  {
    sub_100004A34(v9);
  }

  if (BOOLean)
  {
    v12 = CFBooleanGetValue(BOOLean) != 0;
  }

  else
  {
    v12 = 0;
  }

  sub_100045C8C(&BOOLean);
  return v12;
}

void sub_10035FCEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_100045C8C(va);
  _Unwind_Resume(a1);
}

BOOL VoLteControl::evaluateCanSetVolteStatus(VoLteControl *this)
{
  if (*(this + 281) != 1)
  {
LABEL_31:
    v3 = 1;
    goto LABEL_32;
  }

  v2 = *(this + 77);
  if (v2 > 3)
  {
    if (v2 != 6)
    {
      if (v2 != 5)
      {
        if (v2 != 4)
        {
          goto LABEL_14;
        }

        if ((*(this + 376) & 1) == 0)
        {
          if (!VoLteControl::isSelfProvisioningAllowed(this))
          {
            v3 = 3;
LABEL_19:
            if (VoLteControl::shouldHideVoLteSwitchAndBlockEntitlements(this))
            {
              v4 = *(this + 5);
              if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
              {
                v5 = PersonalityInfo::logPrefix(**(this + 8));
                v16 = 136315394;
                v17 = v5;
                v18 = 2080;
                v19 = " ";
                _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%sVoLTE switch is hidden since VoLTE network was not ever seen", &v16, 0x16u);
              }

              v3 = 1;
            }

            goto LABEL_23;
          }

          *(this + 377) = 1;
          VoLteControl::attemptVolteProvisioning(this);
        }
      }

      v3 = 4;
      goto LABEL_19;
    }

LABEL_18:
    v3 = 5;
    goto LABEL_19;
  }

  v3 = 2;
  switch(v2)
  {
    case 1:
      goto LABEL_23;
    case 2:
      if (VoLteControl::enableVolteWhileEntitlementStatusIsUnknown(this))
      {
        goto LABEL_23;
      }

      goto LABEL_18;
    case 3:
      goto LABEL_23;
  }

LABEL_14:
  v3 = *(this + 76);
  if (v3 - 3 < 3)
  {
    goto LABEL_19;
  }

  if (v3 != 2)
  {
    goto LABEL_32;
  }

LABEL_23:
  if ((VoLteControl::voLTESwitchPresent(this) & 1) == 0)
  {
    v6 = *(this + 5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = PersonalityInfo::logPrefix(**(this + 8));
      v16 = 136315394;
      v17 = v7;
      v18 = 2080;
      v19 = " ";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s%sEither VoLTE switch support is not present or it is set to false", &v16, 0x16u);
    }

    v3 = 1;
  }

  if ((*(this + 284) & 1) != 0 || VoLteControl::operatorBlocksCallsOverCS(this))
  {
    v8 = *(this + 5);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = PersonalityInfo::logPrefix(**(this + 8));
      v16 = 136315394;
      v17 = v9;
      v18 = 2080;
      v19 = " ";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%sCurrent operator does not allow switching VoLTE preference", &v16, 0x16u);
    }

    goto LABEL_31;
  }

LABEL_32:
  v10 = *(this + 76);
  if (v10 != v3)
  {
    v11 = *(this + 5);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = PersonalityInfo::logPrefix(**(this + 8));
      v13 = sub_100610010(*(this + 76));
      v14 = sub_100610010(v3);
      v16 = 136315906;
      v17 = v12;
      v18 = 2080;
      v19 = " ";
      v20 = 2080;
      v21 = v13;
      v22 = 2080;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I %s%sSupports lte switch is changing from %s to %s", &v16, 0x2Au);
    }

    *(this + 76) = v3;
  }

  return v10 != v3;
}

void VoLteControl::attemptVolteProvisioning(VoLteControl *this)
{
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = PersonalityInfo::logPrefix(**(this + 8));
    *buf = 136315394;
    *&buf[4] = v3;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%sAttempt VoLTE provisioning >>>", buf, 0x16u);
  }

  *(this + 376) = 1;
  v14 = 64;
  ServiceMap = Registry::getServiceMap(*(this + 6));
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
  v15 = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, &v15);
  if (v10)
  {
    v12 = v10[3];
    v11 = v10[4];
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v5);
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v11);
      v13 = 0;
      goto LABEL_11;
    }
  }

  else
  {
    v12 = 0;
  }

  std::mutex::unlock(v5);
  v11 = 0;
  v13 = 1;
LABEL_11:
  (**v12)(buf, v12, **(this + 8) + 24);
  (*(**buf + 288))(*buf, 0, &v14);
  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }

  if ((v13 & 1) == 0)
  {
    sub_100004A34(v11);
  }

  *(this + 377) = 1;
}

void sub_1003602A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  if ((v13 & 1) == 0)
  {
    sub_100004A34(v12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t VoLteControl::handleSetEntitlementResponse(uint64_t result, int a2)
{
  if (a2 != 3 && a2 != 1)
  {
    if (a2)
    {
      return result;
    }

    *(result + 377) = 0;
  }

  *(result + 376) = 0;
  return result;
}

uint64_t VoLteControl::handleRefreshEntitlementCache(VoLteControl *this)
{
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = PersonalityInfo::logPrefix(**(this + 8));
    v5 = 136315394;
    v6 = v3;
    v7 = 2080;
    v8 = " ";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%sRefresh entitlement cache", &v5, 0x16u);
  }

  *(this + 377) = 0;
  return (*(*this + 104))(this, 0, 0);
}

uint64_t VoLteControl::handleEntitlementUpdate(uint64_t a1, int a2, uint64_t a3)
{
  v3 = a3;
  v6 = *(a1 + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = PersonalityInfo::logPrefix(**(a1 + 64));
    v15 = 136315394;
    v16 = v7;
    v17 = 2080;
    v18 = " ";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s%sEvaluating Entitlements Change Update", &v15, 0x16u);
  }

  v8 = *(a1 + 308);
  v9 = *(a1 + 40);
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v10)
    {
      v11 = PersonalityInfo::logPrefix(**(a1 + 64));
      v12 = sub_100A38E08(v3);
      v15 = 136315650;
      v16 = v11;
      v17 = 2080;
      v18 = " ";
      v19 = 2080;
      v20 = v12;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I %s%sVoLTE entitlement supported and is %s", &v15, 0x20u);
    }

    if (v3 <= 2)
    {
      if (v3 == 1)
      {
        v8 = 4;
      }

      else if (v3 == 2)
      {
        VoLteControl::releaseVoLTEBlockedByNetwork(a1);
        v8 = 3;
      }
    }

    else if ((v3 - 3) < 2)
    {
      v8 = 2;
    }

    else if (v3 == 5)
    {
      v8 = 5;
    }

    else if (v3 == 6)
    {
      VoLteControl::markVoLTEBlockedByNetwork(a1);
      v8 = 6;
    }
  }

  else
  {
    if (v10)
    {
      v13 = PersonalityInfo::logPrefix(**(a1 + 64));
      v15 = 136315394;
      v16 = v13;
      v17 = 2080;
      v18 = " ";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I %s%sVoLTE entitlement is not supported", &v15, 0x16u);
    }

    v8 = 1;
  }

  VoLteControl::evaluateVolteEntitlement(a1, v8);
  return (*(*a1 + 104))(a1, 0, 0);
}

void VoLteControl::releaseVoLTEBlockedByNetwork(VoLteControl *this)
{
  if (!VoLteControl::isVoLTEBlockedByNetwork(this))
  {
    return;
  }

  ServiceMap = Registry::getServiceMap(*(this + 6));
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
  *v14 = v4;
  v8 = sub_100009510(&v3[1].__m_.__sig, v14);
  if (!v8)
  {
    v10 = 0;
    goto LABEL_9;
  }

  v10 = v8[3];
  v9 = v8[4];
  if (!v9)
  {
LABEL_9:
    std::mutex::unlock(v3);
    v9 = 0;
    v11 = 1;
    goto LABEL_10;
  }

  atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v3);
  atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v9);
  v11 = 0;
LABEL_10:
  (*(*v10 + 32))(v10, **(this + 8) + 24, kCFVoLTEBlockedByNetworkKey, kPhoneServicesWalletDomain, 0, 1);
  if ((v11 & 1) == 0)
  {
    sub_100004A34(v9);
  }

  v12 = *(this + 5);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = PersonalityInfo::logPrefix(**(this + 8));
    *v14 = 136315394;
    *&v14[4] = v13;
    v15 = 2080;
    v16 = " ";
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I %s%sVoLTE 'blocked by network' removed", v14, 0x16u);
  }
}

void VoLteControl::markVoLTEBlockedByNetwork(VoLteControl *this)
{
  *cf = *off_101E44F38;
  *&cf[16] = @"DisableVolteSwitchOnIncompatibleState";
  v19 = 0;
  v20 = 0;
  __p = 0;
  sub_10005B328(&__p, cf, &v23, 3uLL);
  (*(**(this + 52) + 104))(cf);
  v2 = *cf;
  v21 = 0;
  if (*cf)
  {
    v3 = CFGetTypeID(*cf);
    if (v3 == CFBooleanGetTypeID())
    {
      ctu::cf::assign(&v21, v2, v4);
    }
  }

  v5 = v21;
  sub_10000A1EC(cf);
  if (v5 == 1)
  {
    ServiceMap = Registry::getServiceMap(*(this + 6));
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
    *cf = v8;
    v12 = sub_100009510(&v7[1].__m_.__sig, cf);
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
LABEL_13:
        (*(*v14 + 16))(v14, **(this + 8) + 24, kCFVoLTEBlockedByNetworkKey, kCFBooleanTrue, kPhoneServicesWalletDomain, 0, 1, 0);
        if ((v15 & 1) == 0)
        {
          sub_100004A34(v13);
        }

        v16 = *(this + 5);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v17 = PersonalityInfo::logPrefix(**(this + 8));
          *cf = 136315394;
          *&cf[4] = v17;
          *&cf[12] = 2080;
          *&cf[14] = " ";
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I %s%sVoLTE blocked by network", cf, 0x16u);
        }

        goto LABEL_17;
      }
    }

    else
    {
      v14 = 0;
    }

    std::mutex::unlock(v7);
    v13 = 0;
    v15 = 1;
    goto LABEL_13;
  }

LABEL_17:
  if (__p)
  {
    v19 = __p;
    operator delete(__p);
  }
}

void sub_100360AF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL VoLteControl::evaluateVolteEntitlement(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = *(a1 + 308);
  if (v3 != a2)
  {
    v5 = *(a1 + 40);
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    v7 = v3;
    if (v6)
    {
      v8 = PersonalityInfo::logPrefix(**(a1 + 64));
      v9 = asString(*(a1 + 308));
      v11 = 136315906;
      v12 = v8;
      v13 = 2080;
      v14 = " ";
      v15 = 2080;
      v16 = v9;
      v17 = 2080;
      v18 = asString(v2);
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s%sVoLTE entitlement support has changed from %s to %s", &v11, 0x2Au);
      v7 = *(a1 + 308);
    }

    if (v2 - 4 <= 2 && v7 == 3)
    {
      VoLteControl::markVoLTEBlockedByNetwork(a1);
      VoLteControl::handleVolteEntitlementLost(a1);
    }

    *(a1 + 308) = v2;
  }

  return v3 != v2;
}

const char *asString(unsigned int a1)
{
  if (a1 > 6)
  {
    return "???";
  }

  else
  {
    return off_101E45598[a1];
  }
}

{
  if (a1 > 0x10)
  {
    return "???";
  }

  else
  {
    return off_101E68E18[a1];
  }
}

{
  if (a1 > 7)
  {
    return "???";
  }

  else
  {
    return off_101E80568[a1];
  }
}

{
  if (a1 > 7)
  {
    return "???";
  }

  else
  {
    return off_101F37EA8[a1];
  }
}

{
  if (a1 > 0xD)
  {
    return "???";
  }

  else
  {
    return off_101F37EE8[a1];
  }
}

{
  if (a1 > 7)
  {
    return "???";
  }

  else
  {
    return off_101F37F58[a1];
  }
}

{
  if (a1 > 5)
  {
    return "???";
  }

  else
  {
    return off_101F37F98[a1];
  }
}

const void **VoLteControl::handleVolteEntitlementLost(const void **this)
{
  if (*(this + 292) == 1)
  {
    v1 = this;
    v63 = 0;
    format = 0;
    ServiceMap = Registry::getServiceMap(this[6]);
    v3 = ServiceMap;
    v5 = v4;
    if (v4 < 0)
    {
      v6 = (v4 & 0x7FFFFFFFFFFFFFFFLL);
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
    v9 = sub_100009510(&v3[1].__m_.__sig, buf);
    if (v9)
    {
      v11 = v9[3];
      v10 = v9[4];
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v3);
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v10);
        v12 = 0;
        goto LABEL_10;
      }
    }

    else
    {
      v11 = 0;
    }

    std::mutex::unlock(v3);
    v10 = 0;
    v12 = 1;
LABEL_10:
    v13 = kAlertDialogLocalizationTable;
    (*(*v11 + 16))(&v62, v11, kAlertDialogLocalizationTable, @"CALLS_TURNED_OFF", 1);
    v14 = format;
    format = v62;
    *buf = v14;
    v62 = 0;
    sub_100005978(buf);
    sub_100005978(&v62);
    if ((v12 & 1) == 0)
    {
      sub_100004A34(v10);
    }

    v15 = Registry::getServiceMap(v1[6]);
    v16 = v15;
    v17 = v4;
    if (v4 < 0)
    {
      v18 = (v4 & 0x7FFFFFFFFFFFFFFFLL);
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
        goto LABEL_20;
      }
    }

    else
    {
      v23 = 0;
    }

    std::mutex::unlock(v16);
    v22 = 0;
    v24 = 1;
LABEL_20:
    (*(*v23 + 16))(&v62, v23, v13, @"TO_ENABLE_CALLS_CONTACT_CARRIER", 1);
    v25 = v62;
    *buf = v63;
    v62 = 0;
    v63 = v25;
    sub_100005978(buf);
    sub_100005978(&v62);
    if ((v24 & 1) == 0)
    {
      sub_100004A34(v22);
    }

    v62 = 0;
    (*(*v1[52] + 80))(buf);
    sub_100060DE8(&v62, buf);
    sub_10000A1EC(buf);
    if (!v62)
    {
      v36 = v1[5];
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        v37 = PersonalityInfo::logPrefix(*v1[8]);
        *buf = 136315394;
        *&buf[4] = v37;
        v66 = 2080;
        v67 = " ";
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "#W %s%sNo carrier name in the carrier bundle", buf, 0x16u);
      }

      goto LABEL_56;
    }

    v26 = Registry::getServiceMap(v1[6]);
    v27 = v26;
    v28 = v4;
    if (v4 < 0)
    {
      v29 = (v4 & 0x7FFFFFFFFFFFFFFFLL);
      v30 = 5381;
      do
      {
        v28 = v30;
        v31 = *v29++;
        v30 = (33 * v30) ^ v31;
      }

      while (v31);
    }

    std::mutex::lock(v26);
    *buf = v28;
    v32 = sub_100009510(&v27[1].__m_.__sig, buf);
    if (v32)
    {
      v34 = v32[3];
      v33 = v32[4];
      if (v33)
      {
        atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v27);
        atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v33);
        v35 = 0;
        goto LABEL_33;
      }
    }

    else
    {
      v34 = 0;
    }

    std::mutex::unlock(v27);
    v33 = 0;
    v35 = 1;
LABEL_33:
    (*(*v34 + 16))(&v61, v34, kCarriersLocalizationTable, v62, 1);
    v38 = v61;
    *buf = v62;
    v61 = 0;
    v62 = v38;
    sub_100005978(buf);
    sub_100005978(&v61);
    if ((v35 & 1) == 0)
    {
      sub_100004A34(v33);
    }

    v61 = 0;
    (*(*v1[52] + 96))(buf);
    sub_100060DE8(&v61, buf);
    sub_10000A1EC(buf);
    v60 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, v63, v62, v61);
    v58 = 0;
    v59 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, format, v61);
    v39 = Registry::getServiceMap(v1[6]);
    v40 = v39;
    if (v4 < 0)
    {
      v41 = (v4 & 0x7FFFFFFFFFFFFFFFLL);
      v42 = 5381;
      do
      {
        v4 = v42;
        v43 = *v41++;
        v42 = (33 * v42) ^ v43;
      }

      while (v43);
    }

    std::mutex::lock(v39);
    *buf = v4;
    v44 = sub_100009510(&v40[1].__m_.__sig, buf);
    if (v44)
    {
      v46 = v44[3];
      v45 = v44[4];
      if (v45)
      {
        atomic_fetch_add_explicit(&v45->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v40);
        atomic_fetch_add_explicit(&v45->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v45);
        v47 = 0;
        goto LABEL_43;
      }
    }

    else
    {
      v46 = 0;
    }

    std::mutex::unlock(v40);
    v45 = 0;
    v47 = 1;
LABEL_43:
    (*(*v46 + 16))(&v58, v46, kDataUsageLocalizationTable, @"OK", 1);
    if ((v47 & 1) == 0)
    {
      sub_100004A34(v45);
    }

    v48 = Registry::getServiceMap(v1[6]);
    v49 = v48;
    if (v50 < 0)
    {
      v51 = (v50 & 0x7FFFFFFFFFFFFFFFLL);
      v52 = 5381;
      do
      {
        v50 = v52;
        v53 = *v51++;
        v52 = (33 * v52) ^ v53;
      }

      while (v53);
    }

    std::mutex::lock(v48);
    *buf = v50;
    v54 = sub_100009510(&v49[1].__m_.__sig, buf);
    if (v54)
    {
      v56 = v54[3];
      v55 = v54[4];
      if (v55)
      {
        atomic_fetch_add_explicit(&v55->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v49);
        atomic_fetch_add_explicit(&v55->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v55);
        v57 = 0;
LABEL_53:
        (*(*v56 + 32))(v56, v59, v60, v58);
        if ((v57 & 1) == 0)
        {
          sub_100004A34(v55);
        }

        sub_100005978(&v58);
        sub_100005978(&v59);
        sub_100005978(&v60);
        sub_100005978(&v61);
LABEL_56:
        sub_100005978(&v62);
        sub_100005978(&v63);
        return sub_100005978(&format);
      }
    }

    else
    {
      v56 = 0;
    }

    std::mutex::unlock(v49);
    v55 = 0;
    v57 = 1;
    goto LABEL_53;
  }

  return this;
}

void sub_100361398(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va2, a15);
  va_start(va1, a15);
  va_start(va, a15);
  v16 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v18 = va_arg(va2, const void *);
  sub_100005978(va);
  sub_100005978(va1);
  sub_100005978(va2);
  _Unwind_Resume(a1);
}

BOOL VoLteControl::isVoLTENetworkSeen(Registry **this)
{
  BOOLean = 0;
  ServiceMap = Registry::getServiceMap(this[6]);
  v3 = ServiceMap;
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

  std::mutex::lock(ServiceMap);
  v16 = v4;
  v8 = sub_100009510(&v3[1].__m_.__sig, &v16);
  if (v8)
  {
    v10 = v8[3];
    v9 = v8[4];
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v3);
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v9);
      v11 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v10 = 0;
  }

  std::mutex::unlock(v3);
  v9 = 0;
  v11 = 1;
LABEL_9:
  (*(*v10 + 24))(&v14, v10, *this[8] + 24, kCFVoLTENetworkSeenKey, kPhoneServicesWalletDomain, 0, 1);
  sub_10002FE1C(&BOOLean, &v14);
  sub_10000A1EC(&v14);
  if ((v11 & 1) == 0)
  {
    sub_100004A34(v9);
  }

  if (BOOLean)
  {
    v12 = CFBooleanGetValue(BOOLean) != 0;
  }

  else
  {
    v12 = 0;
  }

  sub_100045C8C(&BOOLean);
  return v12;
}

void sub_100361620(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_100045C8C(va);
  _Unwind_Resume(a1);
}

void VoLteControl::markVoLTENetworkSeen(VoLteControl *this)
{
  ServiceMap = Registry::getServiceMap(*(this + 6));
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
  *v14 = v4;
  v8 = sub_100009510(&v3[1].__m_.__sig, v14);
  if (v8)
  {
    v10 = v8[3];
    v9 = v8[4];
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v3);
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v9);
      v11 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v10 = 0;
  }

  std::mutex::unlock(v3);
  v9 = 0;
  v11 = 1;
LABEL_9:
  (*(*v10 + 16))(v10, **(this + 8) + 24, kCFVoLTENetworkSeenKey, kCFBooleanTrue, kPhoneServicesWalletDomain, 0, 1, 0);
  if ((v11 & 1) == 0)
  {
    sub_100004A34(v9);
  }

  v12 = *(this + 5);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = PersonalityInfo::logPrefix(**(this + 8));
    *v14 = 136315394;
    *&v14[4] = v13;
    v15 = 2080;
    v16 = " ";
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I %s%sVoLTE network seen", v14, 0x16u);
  }
}

const void **VoLteControl::isAllowed@<X0>(VoLteControl *this@<X0>, char *a2@<X8>)
{
  theDict = 0;
  v4 = *(this + 76);
  if ((v4 - 2) < 2)
  {
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (Mutable)
    {
      v11 = theDict;
      theDict = Mutable;
      BOOLean = v11;
      sub_1000296E0(&BOOLean);
    }

    CFDictionarySetValue(theDict, kCTCapabilityCanChangeSetting, kCFBooleanTrue);
    v9 = 1;
    v7 = 1;
    v8 = 1;
  }

  else if (v4 == 4)
  {
    v12 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (v12)
    {
      v13 = theDict;
      theDict = v12;
      BOOLean = v13;
      sub_1000296E0(&BOOLean);
    }

    CFDictionarySetValue(theDict, kCTCapabilityCanChangeSettingEnableStillProvisioning, kCFBooleanTrue);
    v8 = 0;
    v9 = 1;
    v7 = 1;
  }

  else if (v4 == 5)
  {
    v5 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (v5)
    {
      v6 = theDict;
      theDict = v5;
      BOOLean = v6;
      sub_1000296E0(&BOOLean);
    }

    CFDictionarySetValue(theDict, kCTCapabilityCannotChangeSettingNeedToCallCarrier, kCFBooleanTrue);
    v7 = 0;
    v8 = 0;
    v9 = 1;
  }

  else
  {
    v9 = 0;
    v7 = 0;
    v8 = 0;
  }

  if (!sub_1000B1374())
  {
    BOOLean = 0;
    (*(**(this + 52) + 96))(&v15);
    sub_10002FE1C(&BOOLean, &v15);
    sub_10000A1EC(&v15);
    if (*(this + 38) != *(**(this + 8) + 52) && CFBooleanGetValue(BOOLean))
    {
      v9 = 0;
    }

    sub_100045C8C(&BOOLean);
  }

  *a2 = v9;
  a2[1] = v7;
  a2[2] = v8;
  sub_100010180(a2 + 1, &theDict);
  return sub_1000296E0(&theDict);
}

void sub_100361AC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, const void *);
  sub_100045C8C(va1);
  sub_1000296E0(va);
  _Unwind_Resume(a1);
}

const void **VoLteControl::isEnabled@<X0>(VoLteControl *this@<X0>, uint64_t a2@<X8>)
{
  v5 = 0;
  v6 = 0;
  (*(*this + 56))(&v5);
  *a2 = *(this + 75) == 2;
  sub_100010024((a2 + 8), &v6);
  return sub_10001021C(&v6);
}

void VoLteControl::setEnabled(uint64_t a1, int a2)
{
  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = PersonalityInfo::logPrefix(**(a1 + 64));
    v6 = asStringBool(a2);
    v7 = sub_100610010(*(a1 + 304));
    v8 = asString(*(a1 + 308));
    v18 = 136316162;
    v19 = v5;
    v20 = 2080;
    v21 = " ";
    v22 = 2080;
    v23 = v6;
    v24 = 2080;
    v25 = v7;
    v26 = 2080;
    v27 = v8;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%ssetEnabled(%s): Current 'volte can set' status: %s, and lte entitlement support: %s", &v18, 0x34u);
  }

  VoLteControl::releaseVoLTEBlockedByNetwork(a1);
  v9 = *(a1 + 304);
  v10 = v9 > 5;
  v11 = (1 << v9) & 0x23;
  if (v10 || v11 == 0)
  {
    v13 = *(a1 + 308);
    if (v13 <= 2)
    {
      if (v13 != 1 && (v13 != 2 || !VoLteControl::enableVolteWhileEntitlementStatusIsUnknown(a1)))
      {
        goto LABEL_17;
      }
    }

    else if (v13 != 3)
    {
      if (v13 == 4)
      {
        if (*(a1 + 376) == 1)
        {
          v14 = *(a1 + 40);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            v15 = PersonalityInfo::logPrefix(**(a1 + 64));
            v18 = 136315394;
            v19 = v15;
            v20 = 2080;
            v21 = " ";
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I %s%sSet entitlement is already in progress, no need to issue another request", &v18, 0x16u);
          }

          return;
        }

        VoLteControl::setVoLTEFeatureUserPreference(a1, a2);
        if (a2)
        {
          VoLteControl::attemptVolteProvisioning(a1);
        }

        else
        {
          v16 = *(a1 + 40);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            v17 = PersonalityInfo::logPrefix(**(a1 + 64));
            v18 = 136315394;
            v19 = v17;
            v20 = 2080;
            v21 = " ";
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I %s%sUser has chosen to disable VoLTE, not triggering set entitlement", &v18, 0x16u);
          }
        }

LABEL_17:
        (*(*a1 + 104))(a1, 1, 0);
        return;
      }

      if (v13 != 5)
      {
        goto LABEL_17;
      }
    }

    VoLteControl::setVoLTEFeatureUserPreference(a1, a2);
    goto LABEL_17;
  }
}

uint64_t VoLteControl::doNotLinkVoLteSwitchVisibilityToVoPS(Registry **this)
{
  v19 = 0;
  v20 = 0;
  ServiceMap = Registry::getServiceMap(this[6]);
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
  v17 = v4;
  v8 = sub_100009510(&v3[1].__m_.__sig, &v17);
  if (v8)
  {
    v10 = v8[3];
    v9 = v8[4];
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v3);
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v9);
      v11 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v10 = 0;
  }

  std::mutex::unlock(v3);
  v9 = 0;
  v11 = 1;
LABEL_9:
  (**v10)(&v19, v10, *this[8] + 24);
  if ((v11 & 1) == 0)
  {
    sub_100004A34(v9);
  }

  if (v19)
  {
    v17 = 0;
    v18 = 0;
    (*(*v19 + 64))(&v17);
    if (v17)
    {
      sub_100A83764(v17, @"DoNotLinkVoLteSwitchVisibilityToVoPS", &cf);
      v12 = cf;
      v21 = 0;
      if (cf)
      {
        v13 = CFGetTypeID(cf);
        if (v13 == CFBooleanGetTypeID())
        {
          ctu::cf::assign(&v21, v12, v14);
          LOBYTE(v12) = v21;
        }

        else
        {
          LOBYTE(v12) = 0;
        }
      }

      sub_10000A1EC(&cf);
    }

    else
    {
      LOBYTE(v12) = 0;
    }

    if (v18)
    {
      sub_100004A34(v18);
    }
  }

  else
  {
    LOBYTE(v12) = 0;
  }

  if (v20)
  {
    sub_100004A34(v20);
  }

  return v12 & 1;
}

void sub_100362018(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a11)
  {
    sub_100004A34(a11);
  }

  if (a13)
  {
    sub_100004A34(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_100362058()
{
  if (v0)
  {
    JUMPOUT(0x100362050);
  }

  JUMPOUT(0x100362048);
}

void VoLteControl::serviceRefresh(VoLteControl *this, int a2, char a3)
{
  v6 = VoLteControl::evaluateCarrierSupport(this);
  v7 = VoLteControl::evaluateImsFeatureSupport(this);
  CanSetVolteStatus = VoLteControl::evaluateCanSetVolteStatus(this);
  v9 = *(this + 292);
  v10 = VoLteControl::calculateVoLTESwitchState(this);
  *(this + 292) = v10;
  v11 = VoLteControl::evaluateVoLTEFeatureState(this);
  sub_10034CD9C(*(this + 10), 2, a2);
  if (v6 || v7 || CanSetVolteStatus || v11 || v9 != v10 || (a3 & 1) != 0 || a2)
  {

    VoLteControl::reportVoLteProvisioningState(this);
  }
}

uint64_t VoLteControl::handleInHomeCountryChanged(VoLteControl *this)
{
  v3 = this + 192;
  v2 = *(this + 24);
  v4 = *(this + 8);
  if (!v2)
  {
    goto LABEL_8;
  }

  v5 = *(*v4 + 13);
  v6 = this + 192;
  do
  {
    if (*(v2 + 7) >= v5)
    {
      v6 = v2;
    }

    v2 = *&v2[8 * (*(v2 + 7) < v5)];
  }

  while (v2);
  if (v6 == v3 || v5 < *(v6 + 7))
  {
LABEL_8:
    v6 = this + 192;
  }

  v7 = *(this + 5);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = PersonalityInfo::logPrefix(*v4);
    if (v6 == v3)
    {
      v9 = "unknown";
    }

    else
    {
      v9 = asStringBool(v6[32]);
    }

    v11 = 136315650;
    v12 = v8;
    v13 = 2080;
    v14 = " ";
    v15 = 2080;
    v16 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s%sInHomeCountry changed to %s", &v11, 0x20u);
  }

  return (*(*this + 104))(this, 0, 0);
}

void VoLteControl::dumpState(VoLteControl *this)
{
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = PersonalityInfo::logPrefix(**(this + 8));
    v4 = **(this + 8);
    v7 = *(v4 + 24);
    v5 = (v4 + 24);
    v6 = v7;
    v8 = *(v5 + 23);
    v9 = v8;
    if ((v8 & 0x80u) != 0)
    {
      v8 = *(v5 + 1);
    }

    if (v9 < 0)
    {
      v5 = v6;
    }

    if (!v8)
    {
      v5 = "<invalid>";
    }

    *buf = 136315650;
    v61 = v3;
    v62 = 2080;
    v63 = " ";
    v64 = 2080;
    v65 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%s== dump VoLteControl '%s'", buf, 0x20u);
  }

  v10 = *(this + 14);
  v11 = **(this + 8);
  if (!v10)
  {
    goto LABEL_16;
  }

  v12 = *(v11 + 52);
  v13 = this + 112;
  do
  {
    if (*(v10 + 8) >= v12)
    {
      v13 = v10;
    }

    v10 = *&v10[8 * (*(v10 + 8) < v12)];
  }

  while (v10);
  if (v13 != this + 112 && v12 >= *(v13 + 8))
  {
    v14 = v13[64] & 1;
  }

  else
  {
LABEL_16:
    v14 = 0;
  }

  sub_100007A6C(this + 128, (v11 + 24));
  v16 = this + 192;
  v15 = *(this + 24);
  v17 = *(this + 8);
  if (!v15)
  {
    goto LABEL_24;
  }

  v18 = *(*v17 + 13);
  v19 = this + 192;
  do
  {
    if (*(v15 + 7) >= v18)
    {
      v19 = v15;
    }

    v15 = *&v15[8 * (*(v15 + 7) < v18)];
  }

  while (v15);
  if (v19 == v16 || v18 < *(v19 + 7))
  {
LABEL_24:
    v19 = this + 192;
  }

  v20 = *(this + 5);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = PersonalityInfo::logPrefix(*v17);
    v22 = asStringBool(*(this + 281));
    *buf = 136315650;
    v61 = v21;
    v62 = 2080;
    v63 = " ";
    v64 = 2080;
    v65 = v22;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I %s%sCarrier support: %s", buf, 0x20u);
    v20 = *(this + 5);
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v23 = PersonalityInfo::logPrefix(**(this + 8));
    v24 = asString();
    *buf = 136315650;
    v61 = v23;
    v62 = 2080;
    v63 = " ";
    v64 = 2080;
    v65 = v24;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I %s%sAccount/Network support: %s", buf, 0x20u);
    v20 = *(this + 5);
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v25 = PersonalityInfo::logPrefix(**(this + 8));
    v26 = asStringBool(*(this + 292));
    *buf = 136315650;
    v61 = v25;
    v62 = 2080;
    v63 = " ";
    v64 = 2080;
    v65 = v26;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I %s%sActual VoLTE switch state: %s", buf, 0x20u);
    v20 = *(this + 5);
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v27 = PersonalityInfo::logPrefix(**(this + 8));
    v28 = sub_10060FFC0(*(this + 74));
    *buf = 136315650;
    v61 = v27;
    v62 = 2080;
    v63 = " ";
    v64 = 2080;
    v65 = v28;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I %s%sUser preference: %s", buf, 0x20u);
    v20 = *(this + 5);
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v29 = PersonalityInfo::logPrefix(**(this + 8));
    v30 = asString(*(this + 77));
    *buf = 136315650;
    v61 = v29;
    v62 = 2080;
    v63 = " ";
    v64 = 2080;
    v65 = v30;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I %s%sEntitlement support: %s", buf, 0x20u);
    v20 = *(this + 5);
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v31 = PersonalityInfo::logPrefix(**(this + 8));
    v32 = asStringBool(v14);
    *buf = 136315650;
    v61 = v31;
    v62 = 2080;
    v63 = " ";
    v64 = 2080;
    v65 = v32;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I %s%svoiceImsPrefServiceMask: %s", buf, 0x20u);
    v20 = *(this + 5);
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v33 = PersonalityInfo::logPrefix(**(this + 8));
    v34 = asString();
    *buf = 136315650;
    v61 = v33;
    v62 = 2080;
    v63 = " ";
    v64 = 2080;
    v65 = v34;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I %s%sImsVoiceSupportOnLte: %s", buf, 0x20u);
    v20 = *(this + 5);
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v35 = PersonalityInfo::logPrefix(**(this + 8));
    v36 = sub_100610010(*(this + 76));
    *buf = 136315650;
    v61 = v35;
    v62 = 2080;
    v63 = " ";
    v64 = 2080;
    v65 = v36;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I %s%sCanSet state: %s", buf, 0x20u);
    v20 = *(this + 5);
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v37 = PersonalityInfo::logPrefix(**(this + 8));
    if (v19 == v16)
    {
      v38 = "unknown";
    }

    else
    {
      v38 = asStringBool(v19[32]);
    }

    *buf = 136315650;
    v61 = v37;
    v62 = 2080;
    v63 = " ";
    v64 = 2080;
    v65 = v38;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I %s%sInHomeCountry: %s", buf, 0x20u);
    v20 = *(this + 5);
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v39 = PersonalityInfo::logPrefix(**(this + 8));
    v40 = asStringBool(*(this + 284));
    *buf = 136315650;
    v61 = v39;
    v62 = 2080;
    v63 = " ";
    v64 = 2080;
    v65 = v40;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I %s%sNonCS network seen: %s", buf, 0x20u);
    v20 = *(this + 5);
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v41 = PersonalityInfo::logPrefix(**(this + 8));
    if (*(this + 283) == 1)
    {
      v42 = asStringBool(*(this + 282));
    }

    else
    {
      v42 = "unknown";
    }

    *buf = 136315650;
    v61 = v41;
    v62 = 2080;
    v63 = " ";
    v64 = 2080;
    v65 = v42;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I %s%sCurrent VoCs Support: %s", buf, 0x20u);
    v20 = *(this + 5);
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v43 = PersonalityInfo::logPrefix(**(this + 8));
    MCCAndMNC::getStringValue(__p, (this + 312));
    if (v59 >= 0)
    {
      v44 = __p;
    }

    else
    {
      v44 = __p[0];
    }

    *buf = 136315650;
    v61 = v43;
    v62 = 2080;
    v63 = " ";
    v64 = 2080;
    v65 = v44;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I %s%sServingPlmn: %s", buf, 0x20u);
    if (v59 < 0)
    {
      operator delete(__p[0]);
    }

    v20 = *(this + 5);
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v45 = PersonalityInfo::logPrefix(**(this + 8));
    v46 = asString();
    *buf = 136315650;
    v61 = v45;
    v62 = 2080;
    v63 = " ";
    v64 = 2080;
    v65 = v46;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I %s%sFinal capability state: %s", buf, 0x20u);
    v20 = *(this + 5);
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v47 = PersonalityInfo::logPrefix(**(this + 8));
    v48 = asStringBool(*(this + 376));
    *buf = 136315650;
    v61 = v47;
    v62 = 2080;
    v63 = " ";
    v64 = 2080;
    v65 = v48;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I %s%sfVolteSetEntitlementInProgress: %s", buf, 0x20u);
    v20 = *(this + 5);
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v49 = PersonalityInfo::logPrefix(**(this + 8));
    v50 = asStringBool(*(this + 377));
    *buf = 136315650;
    v61 = v49;
    v62 = 2080;
    v63 = " ";
    v64 = 2080;
    v65 = v50;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I %s%sfVolteSetEntitlementAttempted: %s", buf, 0x20u);
    v20 = *(this + 5);
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v51 = PersonalityInfo::logPrefix(**(this + 8));
    v52 = VoLteControl::voLTESwitchPresent(this);
    DefaultVolteUserPreferenceFromBundle = VoLteControl::fetchDefaultVolteUserPreferenceFromBundle(this, (v52 >> 8) & 1);
    v54 = asStringBool(DefaultVolteUserPreferenceFromBundle);
    *buf = 136315650;
    v61 = v51;
    v62 = 2080;
    v63 = " ";
    v64 = 2080;
    v65 = v54;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I %s%sEnableVolteByDefault: %s", buf, 0x20u);
    v20 = *(this + 5);
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v55 = PersonalityInfo::logPrefix(**(this + 8));
    v56 = VoLteControl::mandatoryDisabled(this);
    v57 = asStringBool(v56);
    *buf = 136315650;
    v61 = v55;
    v62 = 2080;
    v63 = " ";
    v64 = 2080;
    v65 = v57;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I %s%sMandatoryDisabled: %s", buf, 0x20u);
  }
}

void sub_100362DB4(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, sub_100362E88);
  __cxa_rethrow();
}

void sub_100362DF4(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_100362E48(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100362E88(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void *sub_100362EB4(void *a1)
{
  *a1 = off_101E45068;
  v2 = a1[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_100362F00(void *a1)
{
  *a1 = off_101E45068;
  v1 = a1[4];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_100362FE0(uint64_t result, uint64_t a2)
{
  *a2 = off_101E45068;
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

void sub_100363020(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_100363030(void *__p)
{
  v2 = __p[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_100363070(void *a1, xpc_object_t *a2)
{
  sub_100363170(a1[1], a2);
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
        v7 = sub_100007A6C(v4 + 128, (**(v4 + 64) + 24));
        if (v4 + 136 != v7)
        {
          VoLteControl::handleImsVoiceSupportOnLTEUpdate(v4, *(v7 + 56));
        }
      }

      sub_100004A34(v6);
    }
  }
}

uint64_t sub_100363124(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100363170(uint64_t a1, xpc_object_t *a2)
{
  v3 = *a2;
  if (*a2 && xpc_get_type(*a2) == &_xpc_type_array)
  {
    xpc_retain(v3);
  }

  else
  {
    v3 = xpc_null_create();
  }

  sub_100009970(a1, *(a1 + 8));
  *a1 = a1 + 8;
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  if (xpc_get_type(v3) == &_xpc_type_array)
  {
    object[0] = v3;
    if (v3)
    {
      xpc_retain(v3);
    }

    else
    {
      object[0] = xpc_null_create();
    }

    sub_100008EA4(&v11, object, 0);
    xpc_release(object[0]);
    object[0] = v3;
    if (v3)
    {
      xpc_retain(v3);
    }

    else
    {
      object[0] = xpc_null_create();
    }

    if (xpc_get_type(v3) == &_xpc_type_array)
    {
      count = xpc_array_get_count(v3);
    }

    else
    {
      count = 0;
    }

    sub_100008EA4(v10, object, count);
    xpc_release(object[0]);
    for (i = v12; i != v10[1] || v11 != v10[0]; i = ++v12)
    {
      v9 = 0;
      object[0] = &v11;
      object[1] = i;
      sub_10003EAD4(object, &v9);
      if (xpc_get_type(v9) == &_xpc_type_dictionary)
      {
        *object = 0u;
        v8 = 0u;
        v6 = v9;
        if (v9)
        {
          xpc_retain(v9);
        }

        else
        {
          v6 = xpc_null_create();
        }

        sub_100363418(object, &v6);
        xpc_release(v6);
        sub_1003635CC(a1, object, object);
        if (SBYTE7(v8) < 0)
        {
          operator delete(object[0]);
        }
      }

      xpc_release(v9);
    }

    xpc_release(v10[0]);
    xpc_release(v11);
  }

  xpc_release(v3);
}

void sub_100363374(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t a10, xpc_object_t object, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, xpc_object_t a19, xpc_object_t a20)
{
  xpc_release(object);
  xpc_release(*(v21 - 48));
  xpc_release(v20);
  _Unwind_Resume(a1);
}

void sub_100363418(uint64_t a1, xpc_object_t *a2)
{
  v3 = *a2;
  v9 = v3;
  if (v3 && xpc_get_type(v3) == &_xpc_type_dictionary)
  {
    xpc_retain(v3);
  }

  else
  {
    v3 = xpc_null_create();
    v9 = v3;
  }

  if (xpc_get_type(v3) == &_xpc_type_dictionary)
  {
    v6 = &v9;
    v7 = "first";
    sub_100006354(&v6, &object);
    read_rest_value();
    xpc_release(object);
    v6 = &v9;
    v7 = "second";
    sub_100006354(&v6, &object);
    type = xpc_get_type(object);
    if (type == &_xpc_type_string)
    {
      v10 = *(a1 + 24);
      ctu::rest::detail::read_enum_string_value(&v10, &object, v5);
      *(a1 + 24) = v10;
    }

    else if (type == &_xpc_type_BOOL || type == &_xpc_type_int64 || type == &_xpc_type_uint64)
    {
      *(a1 + 24) = xpc::dyn_cast_or_default(&object, 0, v5);
    }

    xpc_release(object);
    v3 = v9;
  }

  xpc_release(v3);
}

void *sub_1003635CC(uint64_t **a1, uint64_t ***a2, uint64_t a3)
{
  v4 = 0;
  result = *sub_100005C2C(a1, &v4, a2);
  if (!result)
  {
    sub_100363658();
  }

  return result;
}

void sub_1003636F4(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1000E16DC(v3, v2);
  _Unwind_Resume(a1);
}

void *sub_100363710(void *a1)
{
  *a1 = off_101E450E8;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_10036375C(void *a1)
{
  *a1 = off_101E450E8;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_10036383C(uint64_t result, uint64_t a2)
{
  *a2 = off_101E450E8;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_10036387C(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_10036388C(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_1003638CC(void *a1, xpc_object_t *a2)
{
  *v7 = 0;
  sub_10011E4A4(v7, a2);
  v3 = a1[3];
  if (v3)
  {
    v4 = a1[1];
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      if (a1[2])
      {
        if (*(**(v4 + 64) + 52) == *v7)
        {
          VoLteControl::handleCsVoiceSupportUpdate(v4, v7[4]);
        }
      }

      sub_100004A34(v6);
    }
  }
}

uint64_t sub_100363968(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_1003639B4(void *a1)
{
  *a1 = off_101E45168;
  v2 = a1[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_100363A00(void *a1)
{
  *a1 = off_101E45168;
  v1 = a1[4];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_100363AE0(uint64_t result, uint64_t a2)
{
  *a2 = off_101E45168;
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

void sub_100363B20(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_100363B30(void *__p)
{
  v2 = __p[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_100363B70(uint64_t *a1, xpc_object_t *a2)
{
  sub_10011F248(a1[1], a2);
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
        v7 = *(v4 + 264);
        if (v7)
        {
          v8 = *(**(v4 + 64) + 52);
          v9 = v4 + 264;
          do
          {
            if (*(v7 + 32) >= v8)
            {
              v9 = v7;
            }

            v7 = *(v7 + 8 * (*(v7 + 32) < v8));
          }

          while (v7);
          if (v9 != v4 + 264 && v8 >= *(v9 + 32))
          {
            VoLteControl::handleNewServingNetwork(v4, (v9 + 40));
          }
        }
      }

      sub_100004A34(v6);
    }
  }
}

uint64_t sub_100363C4C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_100363C98(void *a1)
{
  *a1 = off_101E451E8;
  v2 = a1[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_100363CE4(void *a1)
{
  *a1 = off_101E451E8;
  v1 = a1[4];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_100363DC4(uint64_t result, uint64_t a2)
{
  *a2 = off_101E451E8;
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

void sub_100363E04(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_100363E14(void *__p)
{
  v2 = __p[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_100363E54(void *a1, xpc *this, BOOL a3)
{
  v4 = a1[1];
  *v4 = xpc::dyn_cast_or_default(this, 0, a3);
  v5 = a1[4];
  if (v5)
  {
    v6 = a1[2];
    v7 = std::__shared_weak_count::lock(v5);
    if (v7)
    {
      v8 = v7;
      if (a1[3])
      {
        VoLteControl::handleAirplaneModeChanged(v6, *(v6 + 280));
      }

      sub_100004A34(v8);
    }
  }
}

uint64_t sub_100363EF4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_100363F40(void *a1)
{
  *a1 = off_101E45268;
  v2 = a1[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_100363F8C(void *a1)
{
  *a1 = off_101E45268;
  v1 = a1[4];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_10036406C(uint64_t result, uint64_t a2)
{
  *a2 = off_101E45268;
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

void sub_1003640AC(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1003640BC(void *__p)
{
  v2 = __p[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_1003640FC(void *a1, xpc_object_t *a2)
{
  sub_100364288(a1[1], a2);
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
        v7 = *(v4 + 112);
        if (v7)
        {
          v8 = *(**(v4 + 64) + 52);
          v9 = v4 + 112;
          do
          {
            if (*(v7 + 32) >= v8)
            {
              v9 = v7;
            }

            v7 = *(v7 + 8 * (*(v7 + 32) < v8));
          }

          while (v7);
          if (v9 != v4 + 112 && v8 >= *(v9 + 32))
          {
            __p = 0;
            v11 = 0;
            v12 = 0;
            sub_1003647D4(&__p, *(v9 + 40), *(v9 + 48), (*(v9 + 48) - *(v9 + 40)) >> 2);
            VoLteControl::checkAndEnableVoLTEMenu(v4, *(v9 + 64) & 1);
            (*(*v4 + 104))(v4, 0, 0);
            if (__p)
            {
              v11 = __p;
              operator delete(__p);
            }
          }
        }
      }

      sub_100004A34(v6);
    }
  }
}

uint64_t sub_10036423C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100364288(uint64_t a1, xpc_object_t *a2)
{
  v3 = *a2;
  if (*a2 && xpc_get_type(*a2) == &_xpc_type_array)
  {
    xpc_retain(v3);
  }

  else
  {
    v3 = xpc_null_create();
  }

  sub_10004EC58(a1, *(a1 + 8));
  *a1 = a1 + 8;
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  if (xpc_get_type(v3) == &_xpc_type_array)
  {
    object[0] = v3;
    if (v3)
    {
      xpc_retain(v3);
    }

    else
    {
      object[0] = xpc_null_create();
    }

    sub_100008EA4(&v12, object, 0);
    xpc_release(object[0]);
    object[0] = v3;
    if (v3)
    {
      xpc_retain(v3);
    }

    else
    {
      object[0] = xpc_null_create();
    }

    if (xpc_get_type(v3) == &_xpc_type_array)
    {
      count = xpc_array_get_count(v3);
    }

    else
    {
      count = 0;
    }

    sub_100008EA4(v11, object, count);
    xpc_release(object[0]);
    for (i = v13; i != v11[1] || v12 != v11[0]; i = ++v13)
    {
      v10 = 0;
      object[0] = &v12;
      object[1] = i;
      sub_10003EAD4(object, &v10);
      if (xpc_get_type(v10) == &_xpc_type_dictionary)
      {
        v9 = 0;
        *object = 0u;
        v8 = 0u;
        v6 = v10;
        if (v10)
        {
          xpc_retain(v10);
        }

        else
        {
          v6 = xpc_null_create();
        }

        sub_100364534(object, &v6);
        xpc_release(v6);
        sub_1003646E8(a1, object, object);
        if (object[1])
        {
          *&v8 = object[1];
          operator delete(object[1]);
        }
      }

      xpc_release(v10);
    }

    xpc_release(v11[0]);
    xpc_release(v12);
  }

  xpc_release(v3);
}

void sub_100364490(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t a10, xpc_object_t object, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, xpc_object_t a16, xpc_object_t a17)
{
  xpc_release(object);
  xpc_release(*(v18 - 48));
  xpc_release(v17);
  _Unwind_Resume(a1);
}

void sub_100364534(int *a1, xpc_object_t *a2)
{
  v3 = *a2;
  v9 = v3;
  if (v3 && xpc_get_type(v3) == &_xpc_type_dictionary)
  {
    xpc_retain(v3);
  }

  else
  {
    v3 = xpc_null_create();
    v9 = v3;
  }

  if (xpc_get_type(v3) == &_xpc_type_dictionary)
  {
    v6 = &v9;
    v7 = "first";
    sub_100006354(&v6, &object);
    type = xpc_get_type(object);
    if (type == &_xpc_type_string)
    {
      v10 = *a1;
      ctu::rest::detail::read_enum_string_value(&v10, &object, v5);
      *a1 = v10;
    }

    else if (type == &_xpc_type_BOOL || type == &_xpc_type_int64 || type == &_xpc_type_uint64)
    {
      *a1 = xpc::dyn_cast_or_default(&object, 0, v5);
    }

    xpc_release(object);
    v6 = &v9;
    v7 = "second";
    sub_100006354(&v6, &object);
    rest::read_rest_value();
    xpc_release(object);
    v3 = v9;
  }

  xpc_release(v3);
}

void sub_100364694(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object, xpc_object_t a13)
{
  xpc_release(object);
  xpc_release(a13);
  _Unwind_Resume(a1);
}

uint64_t *sub_1003646E8(uint64_t a1, int *a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
LABEL_8:
    operator new();
  }

  v4 = *a2;
  while (1)
  {
    while (1)
    {
      v5 = v3;
      v6 = *(v3 + 32);
      if (v4 >= v6)
      {
        break;
      }

      v3 = *v5;
      if (!*v5)
      {
        goto LABEL_8;
      }
    }

    if (v6 >= v4)
    {
      return v5;
    }

    v3 = v5[1];
    if (!v3)
    {
      goto LABEL_8;
    }
  }
}

uint64_t *sub_1003647D4(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_100034AE8(result, a4);
  }

  return result;
}

void sub_100364834(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_100364850(void *a1)
{
  *a1 = off_101E452E8;
  v2 = a1[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_10036489C(void *a1)
{
  *a1 = off_101E452E8;
  v1 = a1[4];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_10036497C(uint64_t result, uint64_t a2)
{
  *a2 = off_101E452E8;
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

void sub_1003649BC(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1003649CC(void *__p)
{
  v2 = __p[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_100364A0C(void *a1, xpc_object_t *a2)
{
  v4 = a1[1];
  type = xpc_get_type(*a2);
  if (type == &_xpc_type_string)
  {
    v13 = *v4;
    ctu::rest::detail::read_enum_string_value(&v13, a2, v6);
    *v4 = v13;
  }

  else if (type == &_xpc_type_BOOL || type == &_xpc_type_int64 || type == &_xpc_type_uint64)
  {
    *v4 = xpc::dyn_cast_or_default(a2, 0, v6);
  }

  v9 = a1[4];
  if (v9)
  {
    v10 = a1[2];
    v11 = std::__shared_weak_count::lock(v9);
    if (v11)
    {
      v12 = v11;
      if (a1[3])
      {
        if (*(**(v10 + 64) + 52) == *(v10 + 152))
        {
          (*(*v10 + 104))(v10, 0, 0);
        }
      }

      sub_100004A34(v12);
    }
  }
}

uint64_t sub_100364B38(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_100364B84(void *a1)
{
  *a1 = off_101E45368;
  v2 = a1[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_100364BD0(void *a1)
{
  *a1 = off_101E45368;
  v1 = a1[4];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_100364CB0(uint64_t result, uint64_t a2)
{
  *a2 = off_101E45368;
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

void sub_100364CF0(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_100364D00(void *__p)
{
  v2 = __p[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_100364D40(uint64_t a1, xpc_object_t *a2)
{
  sub_10032CF1C(*(a1 + 8), a2);
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *(a1 + 16);
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      if (*(a1 + 24))
      {
        v7 = *(v4 + 168);
        if (v7)
        {
          v8 = *(**(v4 + 64) + 52);
          v9 = v4 + 168;
          do
          {
            if (*(v7 + 32) >= v8)
            {
              v9 = v7;
            }

            v7 = *(v7 + 8 * (*(v7 + 32) < v8));
          }

          while (v7);
          if (v9 != v4 + 168 && v8 >= *(v9 + 32) && *(v9 + 40))
          {
            (*(*v4 + 104))(v4, 0, 0);
          }
        }
      }

      sub_100004A34(v6);
    }
  }
}

uint64_t sub_100364E48(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_100364E94(void *a1)
{
  *a1 = off_101E453E8;
  v2 = a1[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_100364EE0(void *a1)
{
  *a1 = off_101E453E8;
  v1 = a1[4];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_100364FC0(uint64_t result, uint64_t a2)
{
  *a2 = off_101E453E8;
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

void sub_100365000(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_100365010(void *__p)
{
  v2 = __p[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_100365050(void *a1, xpc_object_t *a2)
{
  v3 = a1[1];
  v4 = v3 + 1;
  v5 = v3[1];
  v10 = *v3;
  v11 = v5;
  if (v3[2])
  {
    v5[2] = &v11;
    *v3 = v4;
    *v4 = 0;
    v3[2] = 0;
  }

  else
  {
    v10 = &v11;
  }

  sub_10005452C(v3, a2);
  v6 = a1[4];
  if (v6)
  {
    v7 = a1[2];
    v8 = std::__shared_weak_count::lock(v6);
    if (v8)
    {
      v9 = v8;
      if (a1[3] && sub_10036518C(*(**(v7 + 8) + 52), &v10, v7 + 184))
      {
        VoLteControl::handleInHomeCountryChanged(v7);
      }

      sub_100004A34(v9);
    }
  }

  sub_10006DCAC(&v10, v11);
}

void sub_100365118(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11)
{
  sub_100004A34(v11);
  sub_10006DCAC(&a10, a11);
  _Unwind_Resume(a1);
}

uint64_t sub_100365140(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10036518C(int a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 8);
  v3 = a3 + 8;
  v4 = v5;
  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = v3;
  do
  {
    if (*(v4 + 28) >= a1)
    {
      v6 = v4;
    }

    v4 = *(v4 + 8 * (*(v4 + 28) < a1));
  }

  while (v4);
  if (v6 != v3 && *(v6 + 28) <= a1)
  {
    v14 = *(a2 + 8);
    v12 = a2 + 8;
    v13 = v14;
    if (v14)
    {
      v15 = v12;
      do
      {
        if (*(v13 + 28) >= a1)
        {
          v15 = v13;
        }

        v13 = *(v13 + 8 * (*(v13 + 28) < a1));
      }

      while (v13);
      if (v15 != v12 && *(v15 + 28) <= a1 && (InHomeCountryStatus::operator!=() & 1) == 0)
      {
        return 0;
      }
    }
  }

  else
  {
LABEL_8:
    v9 = *(a2 + 8);
    v7 = a2 + 8;
    v8 = v9;
    if (!v9)
    {
      return 0;
    }

    v10 = v7;
    do
    {
      if (*(v8 + 28) >= a1)
      {
        v10 = v8;
      }

      v8 = *(v8 + 8 * (*(v8 + 28) < a1));
    }

    while (v8);
    if (v10 == v7 || *(v10 + 28) > a1)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1003652D4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E45468;
  a2[1] = v2;
  return result;
}

uint64_t sub_100365308(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1003653C4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E454E8;
  a2[1] = v2;
  return result;
}

uint64_t sub_1003653F8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL sub_100365444(wis::MetricFactory *a1, uint64_t a2)
{
  v2 = a1;
  SharedMetricFactory = wis::MetricFactory::getSharedMetricFactory(a1);
  v8 = wis::MetricFactory::newMetricContainerWithIdentifier(SharedMetricFactory, v2);
  if (v8)
  {
    v6 = 0;
    v7 = 0;
    sub_10001C610(&v6);
    v4 = v6 != 0;
    if (v6)
    {
      operator new();
    }

    if (v7)
    {
      sub_100004A34(v7);
    }
  }

  else
  {
    v4 = 0;
  }

  sub_10001C0A0(&v8);
  return v4;
}

void sub_100365570(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, uint64_t a5, uint64_t a6, std::__shared_weak_count *a7, ...)
{
  va_start(va, a7);
  if (a7)
  {
    sub_100004A34(a7);
  }

  sub_10001C0A0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1003655F0(uint64_t a1, _DWORD *a2)
{
  a2[7] |= 2u;
  a2[4] = *(a1 + 32);
  result = subscriber::simSlotAsInstance();
  a2[7] |= 4u;
  a2[5] = result;
  return result;
}

BOOL sub_100365638(wis::MetricFactory *a1, uint64_t a2)
{
  v2 = a1;
  SharedMetricFactory = wis::MetricFactory::getSharedMetricFactory(a1);
  v8 = wis::MetricFactory::newMetricContainerWithIdentifier(SharedMetricFactory, v2);
  if (v8)
  {
    v6 = 0;
    v7 = 0;
    sub_10001C610(&v6);
    v4 = v6 != 0;
    if (v6)
    {
      operator new();
    }

    if (v7)
    {
      sub_100004A34(v7);
    }
  }

  else
  {
    v4 = 0;
  }

  sub_10001C0A0(&v8);
  return v4;
}

void sub_100365764(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, uint64_t a5, uint64_t a6, std::__shared_weak_count *a7, ...)
{
  va_start(va, a7);
  if (a7)
  {
    sub_100004A34(a7);
  }

  sub_10001C0A0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1003657E4(uint64_t a1, _DWORD *a2)
{
  a2[7] |= 2u;
  a2[4] = *(a1 + 32);
  result = subscriber::simSlotAsInstance();
  a2[7] |= 4u;
  a2[5] = result;
  return result;
}

void sub_10036582C()
{
  v5[0] = 0.0;
  v5[1] = 0.0;
  sub_100366A6C();
}

void sub_1003658E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_10176C1DC(&a16, &a20);
  _Unwind_Resume(a1);
}

void sub_10036590C(uint64_t a1, uint64_t **a2, uint64_t **a3)
{
  sub_100004AA0(buf, (a1 + 8));
  v6 = *buf;
  if (*&buf[8])
  {
    atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
    sub_100004A34(*(&v6 + 1));
  }

  v7 = [_TtC17CommCenterSupport19CTKDSClientDelegate alloc];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3321888768;
  v20[2] = sub_100365BD4;
  v20[3] = &unk_101E455D0;
  v21 = v6;
  if (*(&v6 + 1))
  {
    atomic_fetch_add_explicit((*(&v6 + 1) + 16), 1uLL, memory_order_relaxed);
  }

  v15 = _NSConcreteStackBlock;
  v16 = 3321888768;
  v17 = sub_100365C6C;
  v18 = &unk_101E45600;
  v19 = v6;
  if (*(&v6 + 1))
  {
    atomic_fetch_add_explicit((*(&v6 + 1) + 16), 1uLL, memory_order_relaxed);
  }

  v8 = [(CTKDSClientDelegate *)v7 initWithReportRegistrationChanged:v20 fetchSignedEncryptionIdentityProof:&v15];
  v9 = sub_100032AC8((a1 + 40));
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = "setup";
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I %s", buf, 0xCu);
  }

  v10 = [_TtC17CommCenterSupport11CTKDSClient alloc];
  if (*(a2 + 23) < 0)
  {
    a2 = *a2;
  }

  v11 = [NSString stringWithUTF8String:a2, v15, v16, v17, v18, v19];
  if (*(a3 + 23) < 0)
  {
    a3 = *a3;
  }

  v12 = [NSString stringWithUTF8String:a3];
  v13 = [(CTKDSClient *)v10 initWithSimUniqueID:v11 simLabelID:v12 delegate:v8];
  v14 = *(a1 + 48);
  *(a1 + 48) = v13;

  if (*(&v19 + 1))
  {
    std::__shared_weak_count::__release_weak(*(&v19 + 1));
  }

  if (*(&v21 + 1))
  {
    std::__shared_weak_count::__release_weak(*(&v21 + 1));
  }

  if (*(&v6 + 1))
  {
    std::__shared_weak_count::__release_weak(*(&v6 + 1));
  }
}

void sub_100365B6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20)
{
  if (a14)
  {
    std::__shared_weak_count::__release_weak(a14);
  }

  if (a20)
  {
    std::__shared_weak_count::__release_weak(a20);
  }

  if (v20)
  {
    std::__shared_weak_count::__release_weak(v20);
  }

  _Unwind_Resume(a1);
}

void sub_100365BD4(uint64_t a1, char a2)
{
  v3 = *(a1 + 40);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = *(a1 + 32);
      if (v6)
      {
        *&v7 = *(a1 + 32);
        BYTE8(v7) = a2;
        sub_100365E50((v6 + 8), &v7);
      }

      sub_100004A34(v5);
    }
  }
}

uint64_t sub_100365C40(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_100365C5C(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_100365C6C(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v7 = a2;
  v8 = a4;
  v9 = *(a1 + 40);
  if (v9)
  {
    v10 = std::__shared_weak_count::lock(v9);
    if (v10)
    {
      v11 = *(a1 + 32);
      if (v11)
      {
        sub_10000501C(__p, [v7 UTF8String]);
        v12 = objc_retainBlock(v8);
        v14[0] = off_101E45640;
        v14[1] = v12;
        v14[3] = v14;
        sub_100365DA8(v11, __p, v5, v14);
      }

      sub_100004A34(v10);
    }
  }
}

void sub_100365D84(_Unwind_Exception *a1)
{
  sub_100004A34(v3);

  _Unwind_Resume(a1);
}

void sub_100365DA8(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v5 = a1;
  *__p = *a2;
  v7 = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v8 = a3;
  sub_10036651C(&v9, a4);
  sub_100366110((a1 + 8), &v5);
}

void sub_100365E50(void *a1, _OWORD *a2)
{
  v2[0] = 0;
  v2[1] = 0;
  sub_100004AA0(v2, a1);
  operator new();
}

void sub_100365F38(void *a1)
{
  v2 = *a1;
  sub_100365FD8(*a1);
  if (v2)
  {
    operator delete();
  }

  v3 = 0;
  sub_1002B78C4(&v3, a1);
}

void sub_100365FA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (v11)
  {
    operator delete();
  }

  a10 = 0;
  sub_1002B78C4(&a10, v10);
  _Unwind_Resume(a1);
}

void sub_100365FD8(_BYTE *a1)
{
  v2 = *a1;
  v3 = sub_100032AC8((*a1 + 40));
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (a1[8])
    {
      v4 = "";
    }

    else
    {
      v4 = "NOT ";
    }

    v9 = 136315138;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Registration status changed to: %sregistered", &v9, 0xCu);
  }

  v5 = *(v2 + 64);
  if (v5)
  {
    v6 = std::__shared_weak_count::lock(v5);
    if (v6)
    {
      v7 = v6;
      v8 = *(v2 + 56);
      if (v8)
      {
        (*(*v8 + 8))(v8, a1[8]);
      }

      sub_100004A34(v7);
    }
  }
}

void sub_100366110(void *a1, uint64_t a2)
{
  v2[0] = 0;
  v2[1] = 0;
  sub_100004AA0(v2, a1);
  operator new();
}

void sub_100366224(uint64_t **a1)
{
  v2 = a1;
  v3 = *a1;
  sub_10036629C(v3);
  sub_100366474(&v3);
  v1 = v2;
  v2 = 0;
  if (v1)
  {
    sub_1002B78C4(&v2, v1);
  }
}

void sub_100366274(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_100366474(va);
  v10 = a9;
  a9 = 0;
  if (v10)
  {
    sub_1002B78C4(&a9, v10);
  }

  _Unwind_Resume(a1);
}

void sub_10036629C(uint64_t *a1)
{
  v2 = *a1;
  v3 = sub_100032AC8((*a1 + 40));
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Fetching signed encryption identity proof...", buf, 2u);
  }

  v4 = *(v2 + 64);
  if (v4)
  {
    v5 = std::__shared_weak_count::lock(v4);
    if (v5)
    {
      v6 = *(v2 + 56);
      if (v6)
      {
        *__p = *(a1 + 1);
        v8 = a1[3];
        a1[2] = 0;
        a1[3] = 0;
        a1[1] = 0;
        (**v6)();
        if (SHIBYTE(v8) < 0)
        {
          operator delete(__p[0]);
        }

LABEL_15:
        sub_100004A34(v5);
        return;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  v12 = 0;
  v13 = 0;
  v14 = 0;
  sub_10000501C(&v9, "KDS manager delegate does not exist");
  v11 = 1;
  sub_1003664D4((a1 + 5));
  if (v11 == 1 && v10 < 0)
  {
    operator delete(v9);
  }

  if (SHIBYTE(v14) < 0)
  {
    operator delete(v12);
  }

  if (v5)
  {
    goto LABEL_15;
  }
}

void sub_100366410(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_100004A34(v27);
  _Unwind_Resume(a1);
}

uint64_t *sub_100366474(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    sub_1003669EC(v1 + 40);
    if (*(v1 + 31) < 0)
    {
      operator delete(*(v1 + 8));
    }

    operator delete();
  }

  return a1;
}

uint64_t sub_1003664D4(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_100022DB4();
  }

  v3 = *(*v2 + 48);

  return v3();
}

uint64_t sub_10036651C(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

void sub_1003665C8(uint64_t a1)
{

  operator delete();
}

id sub_10036667C(uint64_t a1, void *a2)
{
  *a2 = off_101E45640;
  result = objc_retainBlock(*(a1 + 8));
  a2[1] = result;
  return result;
}

void sub_1003666CC(id *a1)
{

  operator delete(a1);
}

void sub_100366708(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *v16 = *a2;
  v17 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  LOBYTE(__p[0]) = 0;
  v15 = 0;
  v3 = *(a3 + 24);
  if (v3 == 1)
  {
    *__p = *a3;
    v14 = *(a3 + 16);
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *a3 = 0;
    v15 = 1;
    v4 = *(a1 + 8);
    v18 = NSLocalizedDescriptionKey;
    if (v14 >= 0)
    {
      v5 = __p;
    }

    else
    {
      v5 = __p[0];
    }

    v6 = [NSString stringWithUTF8String:v5, __p[0], __p[1], v14];
    v7 = NSPOSIXErrorDomain;
    v8 = (v4 + 16);
  }

  else
  {
    v9 = HIBYTE(v17);
    if (v17 < 0)
    {
      v9 = v16[1];
    }

    v4 = *(a1 + 8);
    v8 = (v4 + 16);
    if (v9)
    {
      if (v17 >= 0)
      {
        v10 = v16;
      }

      else
      {
        v10 = v16[0];
      }

      v6 = [NSString stringWithUTF8String:v10, __p[0]];
      (*(v4 + 16))(v4, v6, 0);
      goto LABEL_15;
    }

    v7 = NSPOSIXErrorDomain;
    v18 = NSLocalizedDescriptionKey;
    v6 = @"Failed to obtain phone number information";
  }

  v19 = v6;
  v11 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1, __p[0]];
  v12 = [NSError errorWithDomain:v7 code:35 userInfo:v11];
  (*v8)(v4, 0, v12);

  if (v3)
  {
LABEL_15:
  }

  if (v15 == 1 && SHIBYTE(v14) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v17) < 0)
  {
    operator delete(v16[0]);
  }
}

void sub_10036692C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1003669A0(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101E456B0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1003669EC(uint64_t a1)
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

void *sub_100366AF8(void *a1, id *a2, uint64_t a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E456D0;
  sub_100366BF0((a1 + 3), a2, a3);
  return a1;
}

void sub_100366B74(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E456D0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_100366BF0(uint64_t a1, id *a2, uint64_t a3)
{
  v10 = *a2;
  v6 = *a2;
  *a2 = 0;

  *v9 = *a3;
  *a3 = 0;
  *(a3 + 8) = 0;
  sub_100366CAC(a1, &v10, v9);
  if (v9[1])
  {
    std::__shared_weak_count::__release_weak(v9[1]);
  }

  v7 = v10;
  v10 = 0;

  return a1;
}

void sub_100366C80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, void *a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_weak(a10);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100366CAC(uint64_t a1, id *a2, uint64_t a3)
{
  *a1 = &off_101E865B8;
  ctu::OsLogContext::OsLogContext(&v7, kCtLoggingSystemName, "kds.mgr");
  sub_100366D88((a1 + 8), a2, &v7);
  ctu::OsLogContext::~OsLogContext(&v7);
  *a1 = off_101E45720;
  *(a1 + 48) = 0;
  *(a1 + 56) = *a3;
  *a3 = 0;
  *(a3 + 8) = 0;
  return a1;
}

void sub_100366D64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  ctu::OsLogContext::~OsLogContext(&a9);
  TMKXPCServer.shutdown()();
  _Unwind_Resume(a1);
}

void *sub_100366D88(void *a1, id *a2, const OsLogContext *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = *a2;
  a1[3] = 0;
  ctu::OsLogLogger::OsLogLogger(v6, a3);
  ctu::OsLogLogger::OsLogLogger((a1 + 4), v6);
  ctu::OsLogLogger::~OsLogLogger(v6);
  return a1;
}

void sub_100366DE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ctu::OsLogLogger::~OsLogLogger(va);
  sub_100320D6C(v3);
  _Unwind_Resume(a1);
}

void sub_100366E0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 24);
  v7 = a1 + 40;
  v8 = sub_100032AC8((a1 + 40));
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v17 = "start";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s", buf, 0xCu);
  }

  v9 = *(a1 + 48);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3321888768;
  v12[2] = sub_100367744;
  v12[3] = &unk_101E45800;
  v10 = v6;
  v13 = v10;
  v14 = v7;
  sub_1000224C8(v15, a3);
  [v9 startWithEncryptionSupported:a2 completionHandler:v12];
  sub_10000FF50(v15);
  v11 = v13;
  v13 = 0;
}

void sub_100366F80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  sub_10000FF50(v14 + 48);

  _Unwind_Resume(a1);
}

void sub_100366FC8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  v5 = a1 + 40;
  v6 = sub_100032AC8((a1 + 40));
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v15 = "stop";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s", buf, 0xCu);
  }

  v7 = *(a1 + 48);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3321888768;
  v10[2] = sub_100367A5C;
  v10[3] = &unk_101E45800;
  v8 = v4;
  v11 = v8;
  v12 = v5;
  sub_1000224C8(v13, a2);
  [v7 stopWithCompletionHandler:v10];
  sub_10000FF50(v13);
  v9 = v11;
  v11 = 0;
}

void sub_10036712C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  sub_10000FF50(v14 + 48);

  _Unwind_Resume(a1);
}

void sub_100367174(uint64_t a1, uint64_t **a2, uint64_t a3)
{
  v6 = *(a1 + 24);
  v7 = a1 + 40;
  v8 = sub_100032AC8((a1 + 40));
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v18 = "updateSimLabelId";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s", buf, 0xCu);
  }

  if (*(a2 + 23) < 0)
  {
    a2 = *a2;
  }

  v9 = *(a1 + 48);
  v10 = [NSString stringWithUTF8String:a2];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3321888768;
  v13[2] = sub_100367C84;
  v13[3] = &unk_101E45800;
  v11 = v6;
  v14 = v11;
  v15 = v7;
  sub_1000224C8(v16, a3);
  [v9 updateWithSimLabelId:v10 completionHandler:v13];

  sub_10000FF50(v16);
  v12 = v14;
  v14 = 0;
}

void sub_100367310(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  sub_10000FF50(v15 + 48);

  _Unwind_Resume(a1);
}

void sub_100367360(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 24);
  v7 = a1 + 40;
  v8 = sub_100032AC8((a1 + 40));
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v17 = "updateEncryptionSupported";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s", buf, 0xCu);
  }

  v9 = *(a1 + 48);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3321888768;
  v12[2] = sub_100367E80;
  v12[3] = &unk_101E45800;
  v10 = v6;
  v13 = v10;
  v14 = v7;
  sub_1000224C8(v15, a3);
  [v9 updateWithEncryptionSupported:a2 completionHandler:v12];
  sub_10000FF50(v15);
  v11 = v13;
  v13 = 0;
}