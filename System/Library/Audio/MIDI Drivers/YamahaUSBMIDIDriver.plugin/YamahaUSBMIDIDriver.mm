void sub_83C(std::exception *a1)
{
  std::exception::~exception(a1);

  operator delete();
}

void *sub_880()
{
  if ((atomic_load_explicit(&qword_2C0F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2C0F0))
  {
    sub_BBC(&unk_2C088);
    __cxa_guard_release(&qword_2C0F0);
  }

  return &unk_2C088;
}

uint64_t sub_8F8(const __CFString *a1, _BYTE *a2)
{
  valuePtr = 0;
  *a2 = 0;
  if (a1)
  {
    v4 = CFGetTypeID(a1);
    if (v4 == CFBooleanGetTypeID())
    {
      valuePtr = CFBooleanGetValue(a1);
LABEL_6:
      *a2 = 1;
      return valuePtr;
    }

    if (v4 == CFNumberGetTypeID())
    {
      CFNumberGetValue(a1, kCFNumberIntType, &valuePtr);
      goto LABEL_6;
    }

    if (v4 == CFStringGetTypeID())
    {
      CFStringGetCString(a1, buffer, 64, 0x600u);
      if (sscanf(buffer, "%d", &valuePtr) == 1)
      {
        goto LABEL_6;
      }
    }
  }

  return valuePtr;
}

BOOL sub_9F4(const __CFBoolean *a1, _BYTE *a2)
{
  valuePtr = 0;
  *a2 = 0;
  if (a1)
  {
    v3 = a1;
    v4 = CFGetTypeID(a1);
    if (v4 == CFBooleanGetTypeID())
    {
      LODWORD(a1) = CFBooleanGetValue(v3);
LABEL_6:
      *a2 = 1;
      return a1 != 0;
    }

    if (v4 == CFNumberGetTypeID())
    {
      CFNumberGetValue(v3, kCFNumberIntType, &valuePtr);
      LODWORD(a1) = valuePtr != 0;
      goto LABEL_6;
    }

    if (v4 != CFStringGetTypeID())
    {
      LODWORD(a1) = 0;
      return a1 != 0;
    }

    CFStringGetCString(v3, buffer, 64, 0x600u);
    if (sscanf(buffer, "%d", &valuePtr) == 1)
    {
      *a2 = 1;
      LODWORD(a1) = valuePtr != 0;
      return a1 != 0;
    }

    v6 = buffer[0];
    if (buffer[0])
    {
      v7 = &buffer[1];
      do
      {
        *(v7 - 1) = __tolower(v6);
        v8 = *v7++;
        v6 = v8;
      }

      while (v8);
    }

    if (!(*buffer ^ 0x6F6E | buffer[2]) || (*buffer == 1936482662 ? (v9 = v12 == 101) : (v9 = 0), v9))
    {
      LODWORD(a1) = 0;
      goto LABEL_6;
    }

    if (*buffer == 7562617 || !(*buffer ^ 0x65757274 | v12))
    {
      LODWORD(a1) = 1;
      *a2 = 1;
    }

    else
    {
      LODWORD(a1) = valuePtr;
    }
  }

  return a1 != 0;
}

uint64_t sub_BBC(uint64_t a1)
{
  *a1 = 850045863;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  *(a1 + 64) = CFSetCreateMutable(0, 0, &kCFTypeSetCallBacks);
  global_queue = dispatch_get_global_queue(0, 0);
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  v3 = dispatch_source_create(&_dispatch_source_type_signal, 1uLL, 0, global_queue);
  *(a1 + 96) = v3;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 0x40000000;
  handler[2] = sub_CC0;
  handler[3] = &unk_28530;
  handler[4] = a1;
  dispatch_source_set_event_handler(v3, handler);
  dispatch_resume(*(a1 + 96));
  return a1;
}

void sub_CC8(uint64_t a1)
{
  std::mutex::lock(a1);
  CFSetApplyFunction(*(a1 + 64), sub_F5C, 0);
  v2 = *(a1 + 72);
  v3 = *(a1 + 80);
  while (v2 != v3)
  {
    sub_EB4(v2);
    v2 += 6;
  }

  std::mutex::unlock(a1);
}

uint64_t sub_D58(uint64_t a1, CFTypeRef cf1, const void *a3)
{
  v3 = *(a1 + 72);
  v4 = *(a1 + 80);
  if (v3 == v4)
  {
    return 0;
  }

  while (!CFEqual(cf1, *v3) || !CFEqual(a3, v3[1]))
  {
    v3 += 6;
    if (v3 == v4)
    {
      return 0;
    }
  }

  return 1;
}

void sub_DC8(uint64_t a1, const void *a2, void *a3, uint64_t a4)
{
  value = a3;
  v11 = a2;
  std::mutex::lock(a1);
  if ((sub_D58(a1, a2, a3) & 1) == 0)
  {
    CFRetain(a2);
    CFRetain(a3);
    v8 = *(a1 + 80);
    if (v8 >= *(a1 + 88))
    {
      v9 = sub_F78((a1 + 72), &v11, &value, a4);
    }

    else
    {
      sub_10C0(*(a1 + 80), &v11, &value, a4);
      v9 = v8 + 48;
      *(a1 + 80) = v8 + 48;
    }

    *(a1 + 80) = v9;
    CFSetAddValue(*(a1 + 64), value);
    sub_EB4((*(a1 + 80) - 48));
  }

  std::mutex::unlock(a1);
}

void sub_E94(_Unwind_Exception *a1)
{
  *(v1 + 80) = v2;
  std::mutex::unlock(v1);
  _Unwind_Resume(a1);
}

CFPropertyListRef sub_EB4(CFStringRef *a1)
{
  result = CFPreferencesCopyAppValue(*a1, a1[1]);
  if (result)
  {

    return sub_F08((a1 + 2), result);
  }

  return result;
}

uint64_t sub_F08(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_1514();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t sub_F78(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1280();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v8 = 0x555555555555555;
  }

  else
  {
    v8 = v5;
  }

  v18 = a1;
  if (v8)
  {
    sub_133C(a1, v8);
  }

  v15 = 0;
  v16 = 48 * v4;
  sub_10C0((48 * v4), a2, a3, a4);
  v17 = 48 * v4 + 48;
  v9 = a1[1];
  v10 = 48 * v4 + *a1 - v9;
  sub_13C8(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  sub_14C0(&v15);
  return v14;
}

void sub_10AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_14C0(va);
  _Unwind_Resume(a1);
}

void *sub_10C0(void *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v5 = *a2;
  v6 = *a3;
  sub_1168(v8, a4);
  *a1 = v5;
  a1[1] = v6;
  sub_1168((a1 + 2), v8);
  sub_1200(v8);
  return a1;
}

void sub_114C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1200(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1168(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_1200(uint64_t a1)
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

void sub_12AC(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_1308(exception, a1);
}

std::logic_error *sub_1308(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  return result;
}

void sub_133C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  sub_1394();
}

void sub_1394()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
}

void sub_13C8(uint64_t a1, _OWORD *a2, _OWORD *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a4 + 16;
    v7 = a2;
    do
    {
      *(v6 - 16) = *v7;
      v8 = sub_1440(v6, (v7 + 1));
      v7 += 3;
      v6 = v8 + 48;
    }

    while (v7 != a3);
    while (v5 != a3)
    {
      sub_1200((v5 + 1));
      v5 += 3;
    }
  }
}

uint64_t sub_1440(uint64_t a1, uint64_t a2)
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

uint64_t sub_14C0(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 48;
    sub_1200(i - 32);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1514()
{
  exception = __cxa_allocate_exception(8uLL);
}

const char *sub_1560(int a1)
{
  if (a1 > 111)
  {
    if (a1 > 125)
    {
      if (a1 == 126)
      {
        return "Invalidate MUID";
      }

      if (a1 == 127)
      {
        return "NAK";
      }
    }

    else
    {
      if (a1 == 112)
      {
        return "Discovery";
      }

      if (a1 == 113)
      {
        return "DiscoveryReply";
      }
    }

    return "Unknown Message Type";
  }

  else
  {
    v1 = a1 - 16;
    result = "Protocol Negotiation Inquiry";
    switch(v1)
    {
      case 0:
        return result;
      case 1:
        result = "Protocol Negotiation Inquiry Response";
        break;
      case 2:
        result = "Protocol Negotiation Set";
        break;
      case 3:
        result = "Protocol Negotiation Test";
        break;
      case 4:
        result = "Protocol Negotiation Test Response";
        break;
      case 5:
        result = "Protocol Negotiation Confirmation";
        break;
      case 16:
        result = "Profile Inquiry";
        break;
      case 17:
        result = "Profile Inquiry Reply";
        break;
      case 18:
        result = "Set Profile On";
        break;
      case 19:
        result = "Set Profile Off";
        break;
      case 20:
        result = "Profile Enabled";
        break;
      case 21:
        result = "Profile Disabled";
        break;
      case 22:
        result = "Profile-Specific Data";
        break;
      case 32:
        result = "Property Inquiry";
        break;
      case 33:
        result = "Property Inquiry Reply";
        break;
      case 34:
        result = "Has Property";
        break;
      case 35:
        result = "Has Property Reply";
        break;
      case 36:
        result = "Get Property";
        break;
      case 37:
        result = "Get Property Reply";
        break;
      case 38:
        result = "Set Property";
        break;
      case 39:
        result = "Set Property Reply";
        break;
      case 40:
        result = "Property Subscription";
        break;
      case 41:
        result = "Property Subscription Reply";
        break;
      case 47:
        result = "Property Notify";
        break;
      default:
        return "Unknown Message Type";
    }
  }

  return result;
}

uint64_t sub_17D4(uint64_t a1, uint64_t a2)
{
  *a1 = off_285E8;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  v3 = pthread_mutex_init((a1 + 24), 0);
  if (v3)
  {
    v5 = v3;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315394;
      v8 = "CAMutex.cpp";
      v9 = 1024;
      v10 = 56;
      _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "%25s:%-5d  CAMutex::CAMutex: Could not init the mutex", &v7, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_28518;
    exception[2] = v5;
  }

  return a1;
}

uint64_t sub_190C(uint64_t a1)
{
  *a1 = off_285E8;
  pthread_mutex_destroy((a1 + 24));
  return a1;
}

void sub_1958(uint64_t a1)
{
  sub_190C(a1);

  operator delete();
}

BOOL sub_1990(uint64_t a1)
{
  v2 = pthread_self();
  v3 = pthread_equal(v2, atomic_load_explicit((a1 + 16), memory_order_acquire));
  if (!v3)
  {
    v4 = pthread_mutex_lock((a1 + 24));
    if (v4)
    {
      v6 = v4;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v8 = 136315394;
        v9 = "CAMutex.cpp";
        v10 = 1024;
        v11 = 106;
        _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "%25s:%-5d  CAMutex::Lock: Could not lock the mutex", &v8, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = &off_28518;
      exception[2] = v6;
    }

    atomic_store(v2, (a1 + 16));
  }

  return v3 == 0;
}

void sub_1AD0(uint64_t a1)
{
  v2 = pthread_self();
  if (pthread_equal(v2, atomic_load_explicit((a1 + 16), memory_order_acquire)))
  {
    atomic_store(0, (a1 + 16));
    v3 = pthread_mutex_unlock((a1 + 24));
    if (v3)
    {
      v4 = v3;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v6 = 136315394;
        v7 = "CAMutex.cpp";
        v8 = 1024;
        v9 = 152;
        _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "%25s:%-5d  CAMutex::Unlock: Could not unlock the mutex", &v6, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = &off_28518;
      exception[2] = v4;
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "CAMutex.cpp";
    v8 = 1024;
    v9 = 160;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  CAMutex::Unlock: A thread is attempting to unlock a Mutex it doesn't own", &v6, 0x12u);
  }
}

uint64_t sub_1C58(uint64_t a1, char *a2)
{
  *a2 = 0;
  v4 = pthread_self();
  if (pthread_equal(v4, atomic_load_explicit((a1 + 16), memory_order_acquire)))
  {
    v5 = 0;
  }

  else
  {
    v6 = pthread_mutex_trylock((a1 + 24));
    if (v6 == 16)
    {
      v5 = 0;
      result = 0;
      goto LABEL_7;
    }

    if (v6)
    {
      v10[0] = HIBYTE(v6);
      v10[1] = BYTE2(v6);
      v10[2] = BYTE1(v6);
      v8 = v6;
      v10[3] = v6;
      v10[4] = 0;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        v12 = "CAMutex.cpp";
        v13 = 1024;
        v14 = 224;
        v15 = 1024;
        v16 = v8;
        v17 = 2080;
        v18 = v10;
        _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "%25s:%-5d  CAMutex::Try: call to pthread_mutex_trylock failed, Error: %d (%s)", buf, 0x22u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = &off_28518;
      exception[2] = v8;
    }

    atomic_store(v4, (a1 + 16));
    v5 = 1;
  }

  result = 1;
LABEL_7:
  *a2 = v5;
  return result;
}

uint64_t sub_1E40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = off_28658;
  *(a1 + 8) = a2;
  *(a1 + 24) = 0;
  v6 = (a1 + 24);
  *(a1 + 32) = 0;
  v7 = (a1 + 32);
  *(a1 + 16) = 0;
  *(a1 + 40) = 0;
  v8 = (a1 + 40);
  *(a1 + 48) = 0;
  *(a1 + 56) = a3;
  sub_2278(a1, a2);
  v9 = qword_2C0F8;
  if (os_log_type_enabled(qword_2C0F8, OS_LOG_TYPE_DEBUG))
  {
    v31 = 136316162;
    v32 = "IOServiceClient.cpp";
    v33 = 1024;
    v34 = 37;
    v35 = 2048;
    v36 = a1;
    v37 = 2048;
    v38 = a2;
    v39 = 2048;
    v40 = a3;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d [+] IOServiceClient(%p)::IOServiceClient(notifyRunLoop %p, matchingDict %p", &v31, 0x30u);
  }

  if (IOMainPort(0, v6))
  {
    goto LABEL_20;
  }

  v11 = *(a1 + 8);
  if (!v11)
  {
    return a1;
  }

  CFRetain(v11);
  v12 = IONotificationPortCreate(*v6);
  *v7 = v12;
  if (!v12)
  {
    goto LABEL_20;
  }

  RunLoopSource = IONotificationPortGetRunLoopSource(v12);
  *(a1 + 16) = RunLoopSource;
  if (!RunLoopSource)
  {
    goto LABEL_20;
  }

  CFRunLoopAddSource(*(a1 + 8), RunLoopSource, kCFRunLoopDefaultMode);
  sub_2278(v14, v15);
  v16 = qword_2C0F8;
  if (os_log_type_enabled(qword_2C0F8, OS_LOG_TYPE_DEBUG))
  {
    v18 = *(a1 + 8);
    v17 = *(a1 + 16);
    v31 = 136315906;
    v32 = "IOServiceClient.cpp";
    v33 = 1024;
    v34 = 50;
    v35 = 2048;
    v36 = v17;
    v37 = 2048;
    v38 = v18;
    _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEBUG, "%25s:%-5d      added runloop source %p to runloop %p", &v31, 0x26u);
  }

  v19 = CFRetain(*(a1 + 56));
  sub_2278(v19, v20);
  v21 = qword_2C0F8;
  if (os_log_type_enabled(qword_2C0F8, OS_LOG_TYPE_DEBUG))
  {
    v22 = *(a1 + 56);
    v31 = 136315650;
    v32 = "IOServiceClient.cpp";
    v33 = 1024;
    v34 = 53;
    v35 = 2112;
    v36 = v22;
    _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEBUG, "%25s:%-5d      mMatchingDict: %@", &v31, 0x1Cu);
  }

  v23 = IOServiceAddMatchingNotification(*(a1 + 32), "IOServiceMatched", *(a1 + 56), sub_22A8, a1, v8);
  if (v23)
  {
    goto LABEL_20;
  }

  sub_2278(v23, v10);
  v24 = qword_2C0F8;
  if (os_log_type_enabled(qword_2C0F8, OS_LOG_TYPE_DEBUG))
  {
    v31 = 136315394;
    v32 = "IOServiceClient.cpp";
    v33 = 1024;
    v34 = 55;
    _os_log_impl(&dword_0, v24, OS_LOG_TYPE_DEBUG, "%25s:%-5d      signed up for matched notifications", &v31, 0x12u);
  }

  CFRetain(*(a1 + 56));
  v25 = IOServiceAddMatchingNotification(*(a1 + 32), "IOServiceTerminate", *(a1 + 56), sub_2390, a1, (a1 + 44));
  if (v25)
  {
LABEL_20:
    sub_1F1D8(a1, v10);
    return a1;
  }

  sub_2278(v25, v10);
  v26 = qword_2C0F8;
  v27 = os_log_type_enabled(qword_2C0F8, OS_LOG_TYPE_DEBUG);
  if (v27)
  {
    v31 = 136315394;
    v32 = "IOServiceClient.cpp";
    v33 = 1024;
    v34 = 59;
    _os_log_impl(&dword_0, v26, OS_LOG_TYPE_DEBUG, "%25s:%-5d      signed up for terminated notifications", &v31, 0x12u);
  }

  *(a1 + 48) = 1;
  sub_2278(v27, v28);
  v29 = qword_2C0F8;
  if (os_log_type_enabled(qword_2C0F8, OS_LOG_TYPE_DEBUG))
  {
    v31 = 136315650;
    v32 = "IOServiceClient.cpp";
    v33 = 1024;
    v34 = 63;
    v35 = 2048;
    v36 = a1;
    _os_log_impl(&dword_0, v29, OS_LOG_TYPE_DEBUG, "%25s:%-5d [-] IOServiceClient(%p)::IOServiceClient() - success", &v31, 0x1Cu);
  }

  return a1;
}

void sub_2278(uint64_t result, uint64_t a2)
{
  if ((atomic_load_explicit(byte_2C100, memory_order_acquire) & 1) == 0)
  {
    sub_1F2A0();
  }
}

uint64_t sub_22A8(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  sub_2278(a1, a2);
  v4 = qword_2C0F8;
  if (os_log_type_enabled(qword_2C0F8, OS_LOG_TYPE_DEBUG))
  {
    v6 = 136315906;
    v7 = "IOServiceClient.cpp";
    v8 = 1024;
    v9 = 106;
    v10 = 2048;
    v11 = a1;
    v12 = 1024;
    v13 = v2;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d [*] IOServiceClient::ServicePublishCallback(refcon %p, it %u)", &v6, 0x22u);
  }

  return sub_25E4(a1, v2);
}

uint64_t sub_2390(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  sub_2278(a1, a2);
  v4 = qword_2C0F8;
  if (os_log_type_enabled(qword_2C0F8, OS_LOG_TYPE_DEBUG))
  {
    v6 = 136315906;
    v7 = "IOServiceClient.cpp";
    v8 = 1024;
    v9 = 115;
    v10 = 2048;
    v11 = a1;
    v12 = 1024;
    v13 = v2;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d [*] IOServiceClient::ServiceTerminateCallback(refcon %p, it %u)", &v6, 0x22u);
  }

  return sub_2664(a1, v2);
}

uint64_t sub_2478(uint64_t a1, uint64_t a2)
{
  *a1 = off_28658;
  sub_2278(a1, a2);
  v3 = qword_2C0F8;
  if (os_log_type_enabled(qword_2C0F8, OS_LOG_TYPE_DEBUG))
  {
    v12 = 136315650;
    v13 = "IOServiceClient.cpp";
    v14 = 1024;
    v15 = 76;
    v16 = 2048;
    v17 = a1;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEBUG, "%25s:%-5d [*] IOServiceClient(%p)::~IOServiceClient()", &v12, 0x1Cu);
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = *(a1 + 16);
    if (v5)
    {
      CFRunLoopRemoveSource(v4, v5, kCFRunLoopDefaultMode);
      CFRelease(*(a1 + 8));
    }
  }

  v6 = *(a1 + 16);
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    IOObjectRelease(v7);
  }

  v8 = *(a1 + 44);
  if (v8)
  {
    IOObjectRelease(v8);
  }

  v9 = *(a1 + 24);
  if (v9)
  {
    mach_port_deallocate(mach_task_self_, v9);
  }

  v10 = *(a1 + 56);
  if (v10)
  {
    CFRelease(v10);
  }

  return a1;
}

void sub_25D0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_1298(a1);
}

uint64_t sub_25E4(uint64_t a1, io_iterator_t iterator)
{
  result = IOIteratorNext(iterator);
  if (result)
  {
    v5 = result;
    do
    {
      (*(*a1 + 16))(a1, v5);
      IOObjectRelease(v5);
      result = IOIteratorNext(iterator);
      v5 = result;
    }

    while (result);
  }

  return result;
}

uint64_t sub_2664(uint64_t a1, io_iterator_t iterator)
{
  result = IOIteratorNext(iterator);
  if (result)
  {
    v5 = result;
    do
    {
      (*(*a1 + 24))(a1, v5);
      IOObjectRelease(v5);
      result = IOIteratorNext(iterator);
      v5 = result;
    }

    while (result);
  }

  return result;
}

void sub_26E4(uint64_t a1)
{
  v2 = (a1 + 24);
  if (*(a1 + 24))
  {
    if (*(a1 + 48) == 1)
    {
      sub_2278(a1, v2);
      v3 = qword_2C0F8;
      if (os_log_type_enabled(qword_2C0F8, OS_LOG_TYPE_DEBUG))
      {
        v5 = 136315650;
        v6 = "IOServiceClient.cpp";
        v7 = 1024;
        v8 = 130;
        v9 = 2048;
        v10 = a1;
        _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEBUG, "%25s:%-5d [*] IOServiceClient(%p)ScanServices() - emptying iterators ...", &v5, 0x1Cu);
      }

      *(a1 + 48) = 0;
      sub_25E4(a1, *(a1 + 40));
      sub_2664(a1, *(a1 + 44));
    }

    else
    {
      sub_1F300(a1, v2);
    }
  }

  else
  {
    sub_2278(a1, v2);
    v4 = qword_2C0F8;
    if (os_log_type_enabled(qword_2C0F8, OS_LOG_TYPE_ERROR))
    {
      v5 = 136315650;
      v6 = "IOServiceClient.cpp";
      v7 = 1024;
      v8 = 125;
      v9 = 2048;
      v10 = a1;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d [!] IOServiceClient(%p)::ScanServices() - mMainDevicePort == 0", &v5, 0x1Cu);
    }
  }
}

void sub_2864(uint64_t a1, CFUUIDRef factoryID)
{
  *(a1 + 48) = 0u;
  *(a1 + 72) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *a1 = off_28688;
  *(a1 + 8) = &unk_2C000;
  *(a1 + 16) = factoryID;
  CFPlugInAddInstanceForFactory(factoryID);
  *(a1 + 24) = 1;
  v3 = off_28740;
  v4 = a1;
  operator new();
}

void sub_2A7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_1298(exception_object);
}

void *sub_2B50(void *a1, uint64_t *a2)
{
  sub_44A0(&v6, a2);
  v3 = a1[1];
  v4 = v6;
  *&v6 = *a1;
  *(&v6 + 1) = v3;
  *a1 = v4;
  if (v3)
  {
    sub_43D0(v3);
  }

  return a1;
}

void *sub_2B9C(void *a1, uint64_t a2)
{
  *a1 = off_28688;
  v3 = a1[2];
  if (v3)
  {
    CFPlugInRemoveInstanceForFactory(v3);
  }

  v4 = a1[10];
  if (v4)
  {
    sub_43D0(v4);
  }

  v5 = a1[7];
  if (v5)
  {
    sub_43D0(v5);
  }

  return a1;
}

void sub_2C08(void *a1, uint64_t a2)
{
  sub_2B9C(a1, a2);

  operator delete();
}

uint64_t sub_2C40(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a1[6];
  if (!v5)
  {
    return 7;
  }

  a1[4] = a3;
  a1[5] = a4;
  (*(*v5 + 16))(v5, a2);
  return 0;
}

uint64_t sub_2C98(uint64_t a1, int a2, uint64_t a3)
{
  v4 = *(a1 + 72);
  if (!v4)
  {
    return 7;
  }

  *(a1 + 64) = a2;
  (*(*v4 + 16))(v4, a3);
  return 0;
}

uint64_t sub_2D34(_DWORD *a1, CFUUIDBytes a2, void *a3)
{
  v5 = CFUUIDCreateFromUUIDBytes(0, a2);
  v6 = CFUUIDGetConstantUUIDWithBytes(0, 0x2Fu, 0xD9u, 0x4Du, 0xFu, 0x8Cu, 0x2Au, 0x48u, 0x2Au, 0x8Au, 0xD8u, 0x7Du, 0x9Eu, 0xA3u, 0x81u, 0xC9u, 0xC1u);
  if (CFEqual(v5, v6))
  {
    (*(*a1 + 16))(a1);
    *a3 = a1;
    CFRelease(v5);
    result = 0;
    v8 = 3;
LABEL_5:
    a1[5] = v8;
    return result;
  }

  v9 = CFUUIDGetConstantUUIDWithBytes(0, 0x43u, 0xC9u, 0x8Cu, 0x3Cu, 0x30u, 0x6Cu, 0x11u, 0xD5u, 0xAFu, 0x73u, 0, 0x30u, 0x65u, 0xA8u, 0x30u, 0x1Eu);
  if (CFEqual(v5, v9))
  {
    (*(*a1 + 16))(a1);
    *a3 = a1;
    CFRelease(v5);
    result = 0;
    v8 = 2;
    goto LABEL_5;
  }

  v10 = CFUUIDGetConstantUUIDWithBytes(kCFAllocatorSystemDefault, 0, 0, 0, 0, 0, 0, 0, 0, 0xC0u, 0, 0, 0, 0, 0, 0, 0x46u);
  if (CFEqual(v5, v10))
  {
    (*(*a1 + 16))(a1);
    *a3 = a1;
    CFRelease(v5);
    return 0;
  }

  else
  {
    *a3 = 0;
    CFRelease(v5);
    return 2147483652;
  }
}

uint64_t sub_2EEC(uint64_t a1)
{
  v1 = (*(a1 + 16) + 1);
  *(a1 + 16) = v1;
  return v1;
}

uint64_t sub_2F00(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (v1 - 1);
  *(a1 + 16) = v2;
  if (v1 == 1)
  {
    (*(*(a1 - 8) + 8))();
  }

  return v2;
}

void *sub_30BC(void *a1, uint64_t *a2)
{
  v3 = *a2;
  *a2 = &off_28718;
  *a1 = off_286F8;
  a1[1] = v3;
  (*(v3 + 16))(a1 + 2, a2 + 1);
  bzero(a1 + 8, 0x300uLL);
  return a1;
}

void *sub_3124(void *a1)
{
  *a1 = off_286F8;
  (*(a1[1] + 24))(a1 + 2);
  return a1;
}

void sub_3178(void *a1)
{
  *a1 = off_286F8;
  (*(a1[1] + 24))(a1 + 2);

  operator delete();
}

uint64_t sub_31EC(uint64_t a1, _DWORD *a2)
{
  v6 = *(a1 + 8);
  (*(v6 + 8))(v7, a1 + 16);
  v8 = 0;
  v7[6] = &v9;
  if (*a2 == 2)
  {
    v5[0] = a1;
    v5[1] = &v6;
    sub_33F4(a2, v5);
  }

  else
  {
    if (*a2 != 1)
    {
      std::terminate();
    }

    v5[0] = &v6;
    sub_3320(a2, v5);
  }

  return sub_435C(&v6);
}

void sub_32C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_435C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_3320(uint64_t result, uint64_t *a2)
{
  if (*(result + 4))
  {
    v3 = result;
    v4 = 0;
    v5 = result + 8;
    do
    {
      v6 = *(v5 + 8);
      v10[0] = v5 + 12;
      v10[1] = v6;
      v10[2] = *v5;
      v10[3] = 0;
      v8 = 0;
      v9 = 0;
      v7 = 0;
      result = sub_34CC(v10, &v9, &v7);
      if (result)
      {
        do
        {
          v12 = v9;
          v11[0] = *a2;
          v11[1] = &v12;
          sub_357C(&v7, v11);
          v8 = 0;
          v9 = 0;
          v7 = 0;
          result = sub_34CC(v10, &v9, &v7);
        }

        while ((result & 1) != 0);
      }

      v5 += 12 + 4 * *(v5 + 8);
      ++v4;
    }

    while (v4 < *(v3 + 4));
  }

  return result;
}

uint64_t sub_33F4(uint64_t result, uint64_t *a2)
{
  if (*(result + 4))
  {
    v3 = result;
    v4 = 0;
    v5 = result + 8;
    do
    {
      v6 = *(v5 + 8);
      v11[0] = v5 + 12;
      v11[1] = v6;
      v11[2] = *v5;
      v11[3] = 0;
      v9 = 0;
      v10 = 0;
      v8 = 0;
      result = sub_34CC(v11, &v10, &v8);
      if (result)
      {
        do
        {
          v13 = v10;
          v7 = *a2;
          *&v12 = a2[1];
          *(&v12 + 1) = &v13;
          sub_3BB4((v7 + 64), &v8, &v12);
          v9 = 0;
          v10 = 0;
          v8 = 0;
          result = sub_34CC(v11, &v10, &v8);
        }

        while ((result & 1) != 0);
      }

      v5 += 12 + 4 * *(v5 + 8);
      ++v4;
    }

    while (v4 < *(v3 + 4));
  }

  return result;
}

uint64_t sub_34CC(void *a1, void *a2, _DWORD *a3)
{
  v3 = a1[1];
  v4 = a1[3];
  if (v4 >= v3)
  {
    return 0;
  }

  v5 = (*a1 + 4 * v4);
  v6 = *v5;
  v7 = byte_21EC8[v6 >> 28];
  v8 = v4 + v7;
  if (v8 > v3)
  {
    return 0;
  }

  *a2 = a1[2];
  if (v7 > 1)
  {
    if (v7 != 2)
    {
      if (v7 != 3)
      {
        if (v7 != 4)
        {
          std::terminate();
        }

        *a3++ = v6;
        v10 = v5[1];
        ++v5;
        LODWORD(v6) = v10;
      }

      *a3++ = v6;
      v11 = v5[1];
      ++v5;
      LODWORD(v6) = v11;
    }

    *a3++ = v6;
    LODWORD(v6) = v5[1];
    goto LABEL_12;
  }

  if (v7)
  {
LABEL_12:
    *a3 = v6;
  }

  a1[3] = v8;
  return 1;
}

unsigned __int16 *sub_357C(unsigned __int16 *result, uint64_t *a2)
{
  v3 = *result;
  v4 = v3 >> 28;
  v5 = &v36;
  if (v3 >> 28 == 3)
  {
    v22 = (v3 >> 16) & 0xF;
    if (v22 > 6 || BYTE2(v3) > 0x3Fu)
    {
      return result;
    }

    v23 = (v3 >> 20) + 3;
    v24 = bswap32(*(result + 1));
    v34[0] = bswap32(v3);
    v34[1] = v24;
    if (BYTE2(v3) > 0x1Fu)
    {
      v6 = 0;
      p_dst = &__dst;
      if (!v22)
      {
        goto LABEL_43;
      }
    }

    else
    {
      __dst = -16;
      v6 = 1;
      p_dst = &v36;
      if (!v22)
      {
LABEL_43:
        if ((v23 & 2) != 0)
        {
          *(&__dst + v6++) = -9;
        }

        v7 = *a2;
        v27 = *a2[1];
        v9 = *(*a2 + 56);
        v28 = v7 + 1088;
        v29 = *(v7 + 64);
        if (v29)
        {
          if (*v9 == v27)
          {
            v30 = v9[4];
            if (*(v9 + v30 + 9) != 247 && __dst != 240)
            {
              if (v9 + v6 + v30 + 10 <= v28)
              {
LABEL_56:
                result = (v9 + v30 + 10);
                v31 = &__dst;
                if (v6 <= 1)
                {
                  if (!v6)
                  {
LABEL_80:
                    v9[4] += v6;
                    goto LABEL_81;
                  }

                  if (v6 == 1)
                  {
LABEL_79:
                    *result = *v31;
                    goto LABEL_80;
                  }

                  goto LABEL_85;
                }

                if (v6 != 2)
                {
                  if (v6 != 3)
                  {
                    if (v6 == 4)
                    {
LABEL_74:
                      *result = __dst;
                      result = (result + 1);
LABEL_77:
                      v33 = *v5;
                      v32 = v5 + 1;
                      *result = v33;
                      result = (result + 1);
                      goto LABEL_78;
                    }

LABEL_85:
                    result = memmove(result, &__dst, v6);
                    goto LABEL_80;
                  }

LABEL_76:
                  v5 = &__dst;
                  goto LABEL_77;
                }

LABEL_75:
                v32 = &__dst;
LABEL_78:
                *result = *v32;
                result = (result + 1);
                v31 = v32 + 1;
                goto LABEL_79;
              }

              goto LABEL_54;
            }
          }

          else
          {
            v30 = v9[4];
          }

          v9 = ((v9 + v30 + 13) & 0xFFFFFFFFFFFFFFFCLL);
        }

        if (v9 + v6 + 10 <= v28)
        {
          LODWORD(v30) = 0;
          *(v7 + 64) = v29 + 1;
          *v9 = v27;
          v9[4] = 0;
          goto LABEL_56;
        }

LABEL_54:
        result = sub_3A0C(v7, v27, &__dst, v6);
LABEL_68:
        v9 = result;
LABEL_81:
        *(v7 + 56) = v9;
        return result;
      }
    }

    memcpy(p_dst, v34 + 2, v22);
    v6 += (v22 - 1) + 1;
    goto LABEL_43;
  }

  if (v4 == 2)
  {
    v14 = v3 & 0xE00000;
    __dst = BYTE2(*result);
    v36 = BYTE1(v3) & 0x7F;
    if ((v3 & 0xE00000) == 0xC00000)
    {
      v15 = 2;
    }

    else
    {
      v15 = 3;
    }

    if (v14 != 12582912)
    {
      v37 = v3 & 0x7F;
    }

    v16 = *a2;
    v17 = *a2[1];
    result = *(*a2 + 56);
    v18 = *a2 + 1088;
    v19 = *(*a2 + 64);
    if (v19)
    {
      if (*result == v17)
      {
        v20 = BYTE2(v3);
        v21 = result[4];
        if (v20 != 240 && *(result + v21 + 9) != 247)
        {
          if (result + v15 + v21 + 10 <= v18)
          {
            goto LABEL_36;
          }

          goto LABEL_34;
        }
      }

      else
      {
        v21 = result[4];
      }

      result = ((result + v21 + 13) & 0xFFFFFFFFFFFFFFFCLL);
    }

    if (result + v15 + 10 <= v18)
    {
      LODWORD(v21) = 0;
      *(v16 + 64) = v19 + 1;
      *result = v17;
      result[4] = 0;
LABEL_36:
      v26 = result + v21 + 10;
      if (v14 == 12582912)
      {
        v5 = &__dst;
      }

      else
      {
        *v26++ = __dst;
      }

      *v26 = *v5;
      v26[1] = v5[1];
      result[4] += v15;
      goto LABEL_40;
    }

LABEL_34:
    result = sub_3A0C(*a2, v17, &__dst, v15);
LABEL_40:
    *(v16 + 56) = result;
    return result;
  }

  if (v4 == 1 && BYTE2(v3) >= 0xF0u && ((0x22B1uLL >> (BYTE2(v3) + 16)) & 1) == 0)
  {
    v6 = byte_21D28[BYTE2(v3) - 240];
    __dst = BYTE2(*result);
    if (((0xDD40uLL >> (BYTE2(v3) + 16)) & 1) == 0)
    {
      v36 = BYTE1(v3) & 0x7F;
      if (BYTE2(v3) == 242)
      {
        v37 = v3 & 0x7F;
      }
    }

    v7 = *a2;
    v8 = *a2[1];
    v9 = *(*a2 + 56);
    v10 = v7 + 1088;
    v11 = *(v7 + 64);
    if (v11)
    {
      if (*v9 == v8)
      {
        v12 = BYTE2(v3);
        v13 = v9[4];
        if (v12 != 240 && *(v9 + v13 + 9) != 247)
        {
          if (v9 + v13 + v6 + 10 <= v10)
          {
LABEL_70:
            result = (v9 + v13 + 10);
            v31 = &__dst;
            if (v6 <= 1)
            {
              if (!v6)
              {
                goto LABEL_80;
              }

              goto LABEL_79;
            }

            if (v6 != 2)
            {
              if (v6 != 3)
              {
                if (v6 == 4)
                {
                  goto LABEL_74;
                }

                goto LABEL_85;
              }

              goto LABEL_76;
            }

            goto LABEL_75;
          }

LABEL_67:
          result = sub_3A0C(v7, v8, &__dst, v6);
          goto LABEL_68;
        }
      }

      else
      {
        v13 = v9[4];
      }

      v9 = ((v9 + v13 + 13) & 0xFFFFFFFFFFFFFFFCLL);
    }

    if (v9 + v6 + 10 <= v10)
    {
      LODWORD(v13) = 0;
      *(v7 + 64) = v11 + 1;
      *v9 = v8;
      v9[4] = 0;
      goto LABEL_70;
    }

    goto LABEL_67;
  }

  return result;
}

uint64_t sub_3A0C(uint64_t a1, uint64_t a2, char *a3, int64_t a4)
{
  if (*(a1 + 64))
  {
    v16 = a1 + 64;
    (**a1)(a1 + 8, &v16);
    *(a1 + 64) = 0;
    if (a4 <= 1010)
    {
      *(a1 + 64) = 1;
      v8 = a1 + 68;
      *(a1 + 68) = a2;
      *(a1 + 76) = 0;
      v9 = (a1 + 78);
      if (a4 <= 1)
      {
        if (!a4)
        {
LABEL_15:
          v13 = 0;
          goto LABEL_16;
        }

        if (a4 == 1)
        {
          goto LABEL_13;
        }
      }

      else
      {
        switch(a4)
        {
          case 2:
LABEL_10:
            v12 = *a3++;
            *v9++ = v12;
LABEL_13:
            *v9 = *a3;
            v13 = *(a1 + 76);
LABEL_16:
            *(a1 + 76) = v13 + a4;
            return v8;
          case 3:
LABEL_9:
            v11 = *a3++;
            *v9++ = v11;
            goto LABEL_10;
          case 4:
            v10 = *a3++;
            v9 = (a1 + 79);
            *(a1 + 78) = v10;
            goto LABEL_9;
        }
      }

      memmove(v9, a3, a4);
      goto LABEL_15;
    }
  }

  MIDI::LegacyPacketList::create();
  v16 = v15;
  (**a1)(a1 + 8, &v16);
  sub_3B88(&v15, 0);
  v8 = a1 + 68;
  *(a1 + 56) = a1 + 68;
  *(a1 + 64) = 0;
  sub_3B88(&v15, 0);
  return v8;
}

uint64_t *sub_3B88(uint64_t *result, uint64_t a2)
{
  v3 = *result;
  *result = a2;
  if (v3)
  {
    return MIDI::LegacyPacketListDeleter::operator()();
  }

  return result;
}

unsigned __int16 *sub_3BB4(unsigned __int16 *result, unsigned __int16 *a2, __int128 *a3)
{
  v5 = *a2;
  v30 = v3;
  v31 = v4;
  if (((1 << (v5 >> 28)) & 0xA02F) != 0)
  {
    v29 = *a3;
    v7 = a2;
    return sub_3ECC(v7, &v29);
  }

  if (v5 >> 28 != 4)
  {
    return result;
  }

  v8 = BYTE3(v5) & 0xF | 0x20;
  v9 = *(a2 + 1);
  v10 = BYTE2(v5) >> 4;
  if (v10 > 0xB)
  {
    switch(v10)
    {
      case 0xCu:
        if (v5)
        {
          v28 = 0;
          *&v27[8] = 0;
          v24 = v8 << 24;
          v25 = BYTE2(v5) << 16;
          v26 = (v25 - 0x100000) | (v8 << 24);
          *v27 = (v25 - 0x100000) & 0xFFFFFF80 | (v8 << 24) | (v9 >> 8) & 0x7F;
          v29 = *a3;
          sub_3ECC(v27, &v29);
          v28 = 0;
          *&v27[8] = 0;
          *v27 = v26 & 0xFFFFFF80 | v9 & 0x7F | 0x2000;
          v29 = *a3;
          sub_3ECC(v27, &v29);
        }

        else
        {
          v24 = v8 << 24;
          v25 = BYTE2(v5) << 16;
        }

        v28 = 0;
        *&v27[4] = 0;
        v13 = HIWORD(v9) & 0x7F00 | v24 | v25;
        goto LABEL_31;
      case 0xDu:
        v28 = 0;
        *&v27[4] = 0;
        v13 = (BYTE2(v5) << 16) | (v8 << 24) | (v9 >> 25 << 8);
        goto LABEL_31;
      case 0xEu:
        v28 = 0;
        *&v27[4] = 0;
        v13 = (v9 >> 10) & 0x7F00 | (BYTE2(v5) << 16) | (v8 << 24) | (v9 >> 25);
LABEL_31:
        *v27 = v13;
        v29 = *a3;
        v7 = v27;
        return sub_3ECC(v7, &v29);
    }

    return result;
  }

  if (v10 - 8 < 4)
  {
    v11 = v10 == 9;
    if (v9 >> 25)
    {
      v11 = v9 >> 25;
    }

    v28 = 0;
    *&v27[4] = 0;
    v12 = (BYTE2(v5) << 16) | (v8 << 24) | v5 & 0x7F00;
    goto LABEL_30;
  }

  if (v10 - 2 < 2)
  {
    v14 = (v5 >> 16) & 0xF;
    v15 = &result[24 * (BYTE3(v5) & 0xF)] + 3 * v14;
    v16 = (v5 >> 8) & 0x7F;
    v17 = v5 & 0x7F;
    v18 = (v9 >> 18) & 0x7F;
    if ((v5 & 0x100000) != 0)
    {
      v19 = 2;
    }

    else
    {
      v19 = 1;
    }

    if (v19 == *v15 && v16 == v15[1])
    {
      v20 = v14 | 0xB0;
      if (v17 == v15[2])
      {
        v21 = (v8 << 24) | (v20 << 16);
        goto LABEL_28;
      }
    }

    else
    {
      v20 = v14 | 0xB0;
    }

    if ((v5 & 0x100000) != 0)
    {
      v22 = 25344;
    }

    else
    {
      v22 = 25856;
    }

    v28 = 0;
    *&v27[8] = 0;
    v21 = (v8 << 24) | (v20 << 16);
    v23 = v21 | v22;
    *v27 = v21 | v22 | v16;
    v29 = *a3;
    sub_3ECC(v27, &v29);
    v28 = 0;
    *&v27[8] = 0;
    *v27 = (v23 | v17) - 256;
    v29 = *a3;
    sub_3ECC(v27, &v29);
    *v15 = v19;
    v15[1] = v16;
    v15[2] = v17;
LABEL_28:
    v28 = 0;
    *&v27[8] = 0;
    *v27 = v21 | (v9 >> 25) | 0x600;
    v29 = *a3;
    result = sub_3ECC(v27, &v29);
    if (v18)
    {
      v28 = 0;
      *&v27[4] = 0;
      v11 = v18 | v21;
      v12 = 9728;
LABEL_30:
      v13 = v11 | v12;
      goto LABEL_31;
    }
  }

  return result;
}

unsigned __int16 *sub_3ECC(unsigned __int16 *result, uint64_t *a2)
{
  v3 = *result;
  v4 = v3 >> 28;
  v5 = &v36;
  if (v3 >> 28 == 3)
  {
    v22 = (v3 >> 16) & 0xF;
    if (v22 > 6 || BYTE2(v3) > 0x3Fu)
    {
      return result;
    }

    v23 = (v3 >> 20) + 3;
    v24 = bswap32(*(result + 1));
    v34[0] = bswap32(v3);
    v34[1] = v24;
    if (BYTE2(v3) > 0x1Fu)
    {
      v6 = 0;
      p_dst = &__dst;
      if (!v22)
      {
        goto LABEL_43;
      }
    }

    else
    {
      __dst = -16;
      v6 = 1;
      p_dst = &v36;
      if (!v22)
      {
LABEL_43:
        if ((v23 & 2) != 0)
        {
          *(&__dst + v6++) = -9;
        }

        v7 = *a2;
        v27 = *a2[1];
        v9 = *(*a2 + 56);
        v28 = v7 + 1088;
        v29 = *(v7 + 64);
        if (v29)
        {
          if (*v9 == v27)
          {
            v30 = v9[4];
            if (*(v9 + v30 + 9) != 247 && __dst != 240)
            {
              if (v9 + v6 + v30 + 10 <= v28)
              {
LABEL_56:
                result = (v9 + v30 + 10);
                v31 = &__dst;
                if (v6 <= 1)
                {
                  if (!v6)
                  {
LABEL_80:
                    v9[4] += v6;
                    goto LABEL_81;
                  }

                  if (v6 == 1)
                  {
LABEL_79:
                    *result = *v31;
                    goto LABEL_80;
                  }

                  goto LABEL_85;
                }

                if (v6 != 2)
                {
                  if (v6 != 3)
                  {
                    if (v6 == 4)
                    {
LABEL_74:
                      *result = __dst;
                      result = (result + 1);
LABEL_77:
                      v33 = *v5;
                      v32 = v5 + 1;
                      *result = v33;
                      result = (result + 1);
                      goto LABEL_78;
                    }

LABEL_85:
                    result = memmove(result, &__dst, v6);
                    goto LABEL_80;
                  }

LABEL_76:
                  v5 = &__dst;
                  goto LABEL_77;
                }

LABEL_75:
                v32 = &__dst;
LABEL_78:
                *result = *v32;
                result = (result + 1);
                v31 = v32 + 1;
                goto LABEL_79;
              }

              goto LABEL_54;
            }
          }

          else
          {
            v30 = v9[4];
          }

          v9 = ((v9 + v30 + 13) & 0xFFFFFFFFFFFFFFFCLL);
        }

        if (v9 + v6 + 10 <= v28)
        {
          LODWORD(v30) = 0;
          *(v7 + 64) = v29 + 1;
          *v9 = v27;
          v9[4] = 0;
          goto LABEL_56;
        }

LABEL_54:
        result = sub_3A0C(v7, v27, &__dst, v6);
LABEL_68:
        v9 = result;
LABEL_81:
        *(v7 + 56) = v9;
        return result;
      }
    }

    memcpy(p_dst, v34 + 2, v22);
    v6 += (v22 - 1) + 1;
    goto LABEL_43;
  }

  if (v4 == 2)
  {
    v14 = v3 & 0xE00000;
    __dst = BYTE2(*result);
    v36 = BYTE1(v3) & 0x7F;
    if ((v3 & 0xE00000) == 0xC00000)
    {
      v15 = 2;
    }

    else
    {
      v15 = 3;
    }

    if (v14 != 12582912)
    {
      v37 = v3 & 0x7F;
    }

    v16 = *a2;
    v17 = *a2[1];
    result = *(*a2 + 56);
    v18 = *a2 + 1088;
    v19 = *(*a2 + 64);
    if (v19)
    {
      if (*result == v17)
      {
        v20 = BYTE2(v3);
        v21 = result[4];
        if (v20 != 240 && *(result + v21 + 9) != 247)
        {
          if (result + v15 + v21 + 10 <= v18)
          {
            goto LABEL_36;
          }

          goto LABEL_34;
        }
      }

      else
      {
        v21 = result[4];
      }

      result = ((result + v21 + 13) & 0xFFFFFFFFFFFFFFFCLL);
    }

    if (result + v15 + 10 <= v18)
    {
      LODWORD(v21) = 0;
      *(v16 + 64) = v19 + 1;
      *result = v17;
      result[4] = 0;
LABEL_36:
      v26 = result + v21 + 10;
      if (v14 == 12582912)
      {
        v5 = &__dst;
      }

      else
      {
        *v26++ = __dst;
      }

      *v26 = *v5;
      v26[1] = v5[1];
      result[4] += v15;
      goto LABEL_40;
    }

LABEL_34:
    result = sub_3A0C(*a2, v17, &__dst, v15);
LABEL_40:
    *(v16 + 56) = result;
    return result;
  }

  if (v4 == 1 && BYTE2(v3) >= 0xF0u && ((0x22B1uLL >> (BYTE2(v3) + 16)) & 1) == 0)
  {
    v6 = byte_21D28[BYTE2(v3) - 240];
    __dst = BYTE2(*result);
    if (((0xDD40uLL >> (BYTE2(v3) + 16)) & 1) == 0)
    {
      v36 = BYTE1(v3) & 0x7F;
      if (BYTE2(v3) == 242)
      {
        v37 = v3 & 0x7F;
      }
    }

    v7 = *a2;
    v8 = *a2[1];
    v9 = *(*a2 + 56);
    v10 = v7 + 1088;
    v11 = *(v7 + 64);
    if (v11)
    {
      if (*v9 == v8)
      {
        v12 = BYTE2(v3);
        v13 = v9[4];
        if (v12 != 240 && *(v9 + v13 + 9) != 247)
        {
          if (v9 + v13 + v6 + 10 <= v10)
          {
LABEL_70:
            result = (v9 + v13 + 10);
            v31 = &__dst;
            if (v6 <= 1)
            {
              if (!v6)
              {
                goto LABEL_80;
              }

              goto LABEL_79;
            }

            if (v6 != 2)
            {
              if (v6 != 3)
              {
                if (v6 == 4)
                {
                  goto LABEL_74;
                }

                goto LABEL_85;
              }

              goto LABEL_76;
            }

            goto LABEL_75;
          }

LABEL_67:
          result = sub_3A0C(v7, v8, &__dst, v6);
          goto LABEL_68;
        }
      }

      else
      {
        v13 = v9[4];
      }

      v9 = ((v9 + v13 + 13) & 0xFFFFFFFFFFFFFFFCLL);
    }

    if (v9 + v6 + 10 <= v10)
    {
      LODWORD(v13) = 0;
      *(v7 + 64) = v11 + 1;
      *v9 = v8;
      v9[4] = 0;
      goto LABEL_70;
    }

    goto LABEL_67;
  }

  return result;
}

uint64_t sub_435C(uint64_t a1)
{
  if (*(a1 + 64))
  {
    v3 = a1 + 64;
    (**a1)(a1 + 8, &v3);
  }

  *(a1 + 64) = 0;
  *(a1 + 56) = a1 + 68;
  (*(*a1 + 24))(a1 + 8);
  return a1;
}

void sub_43D0(std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

uint64_t *sub_44A0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;
  if (v2)
  {
    operator new();
  }

  a1[1] = 0;
  *a2 = 0;
  return a1;
}

void sub_4524(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_455C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_45F4(int a1, void *a2, MIDIDeviceRef device, void *a4, const void **a5, uint64_t a6)
{
  NumberOfEntities = MIDIDeviceGetNumberOfEntities(device);
  outValue = 0;
  if (NumberOfEntities >= 1)
  {
    v11 = 0;
    v58 = 0;
    v52 = NumberOfEntities & 0x7FFFFFFF;
    v53 = (NumberOfEntities - 1);
    if (a1)
    {
      v12 = a2;
    }

    else
    {
      v12 = 0;
    }

    v50 = a1 ^ 1;
    v51 = (NumberOfEntities & 0x7FFFFFFF) - 1;
    v57 = a1;
    do
    {
      Entity = MIDIDeviceGetEntity(device, v11);
      v14 = Entity;
      if (v11 >= (a4[1] - *a4) >> 3)
      {
        MIDIObjectGetIntegerProperty(Entity, @"First Group", &outValue);
      }

      else
      {
        outValue = *(*a4 + 8 * v11 + 5);
      }

      v56 = v11;
      if (v53 == v11)
      {
        v60 = 0;
        IntegerProperty = MIDIObjectGetIntegerProperty(v14, kMIDIPropertyUMPCanTransmitGroupless, &v60);
        v16 = v60;
        if (IntegerProperty)
        {
          v16 = IntegerProperty;
        }

        v58 = v16;
      }

      NumberOfSources = MIDIEntityGetNumberOfSources(v14);
      NumberOfDestinations = MIDIEntityGetNumberOfDestinations(v14);
      if (a1 && NumberOfSources)
      {
        for (i = 0; i != NumberOfSources; ++i)
        {
          v19 = v14;
          Source = MIDIEntityGetSource(v14, i);
          v21 = a5[1];
          if (!v58)
          {
            v30 = i + outValue;
            while (1)
            {
              v31 = *a5;
              v32 = v21 - *a5;
              v33 = v32 >> 2;
              if (v32 >> 2 >= v30)
              {
                break;
              }

              v34 = a5[2];
              if (v21 >= v34)
              {
                v36 = v33 + 1;
                if ((v33 + 1) >> 62)
                {
                  goto LABEL_61;
                }

                v37 = v34 - v31;
                if (v37 >> 1 > v36)
                {
                  v36 = v37 >> 1;
                }

                v28 = v37 >= 0x7FFFFFFFFFFFFFFCLL;
                v38 = 0x3FFFFFFFFFFFFFFFLL;
                if (!v28)
                {
                  v38 = v36;
                }

                if (v38)
                {
                  sub_4A9C(a5, v38);
                }

                *(4 * v33) = 0;
                v35 = 4 * v33 + 4;
                memcpy(0, v31, v32);
                v39 = *a5;
                *a5 = 0;
                a5[1] = v35;
                a5[2] = 0;
                if (v39)
                {
                  operator delete(v39);
                }
              }

              else
              {
                *v21 = 0;
                v35 = (v21 + 1);
              }

              a5[1] = v35;
              v61 = 0;
              v60 = 0;
              sub_4994(a6, &v60);
              v21 = a5[1];
            }
          }

          v22 = a5[2];
          if (v21 >= v22)
          {
            v24 = *a5;
            v25 = v21 - *a5;
            v26 = (v25 >> 2) + 1;
            if (v26 >> 62)
            {
LABEL_61:
              sub_1280();
            }

            v27 = v22 - v24;
            if (v27 >> 1 > v26)
            {
              v26 = v27 >> 1;
            }

            v28 = v27 >= 0x7FFFFFFFFFFFFFFCLL;
            v29 = 0x3FFFFFFFFFFFFFFFLL;
            if (!v28)
            {
              v29 = v26;
            }

            if (v29)
            {
              sub_4A9C(a5, v29);
            }

            v40 = (4 * (v25 >> 2));
            *v40 = Source;
            v23 = v40 + 1;
            memcpy(0, v24, v25);
            v41 = *a5;
            *a5 = 0;
            a5[1] = v23;
            a5[2] = 0;
            if (v41)
            {
              operator delete(v41);
            }
          }

          else
          {
            *v21 = Source;
            v23 = v21 + 1;
          }

          a1 = v57;
          v14 = v19;
          a5[1] = v23;
          v61 = 0;
          v60 = 0;
          sub_4994(a6, &v60);
        }
      }

      if (NumberOfDestinations)
      {
        v42 = 0;
        v43 = v50;
        if (!v58)
        {
          v43 = 1;
        }

        if (v51 == v56)
        {
          v44 = v43;
        }

        else
        {
          v44 = 1;
        }

        do
        {
          v45 = v42 + outValue;
          Destination = MIDIEntityGetDestination(v14, v42);
          if (a1)
          {
            v47 = v45;
          }

          else
          {
            v47 = 0;
          }

          if (--NumberOfDestinations)
          {
            v48 = v47;
          }

          else
          {
            v48 = 255;
          }

          if (v44)
          {
            v49 = v47;
          }

          else
          {
            v49 = v48;
          }

          MIDIEndpointSetRefCons(Destination, v12, v49);
          ++v42;
        }

        while (NumberOfDestinations);
      }

      v11 = v56 + 1;
    }

    while (v56 + 1 != v52);
  }
}

void sub_4994(uint64_t a1, int *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 1);
    v9 = v8 + 1;
    if (v8 + 1 > 0x2AAAAAAAAAAAAAAALL)
    {
      sub_1280();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 1);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x1555555555555555)
    {
      v11 = 0x2AAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      sub_4AE4(a1, v11);
    }

    v12 = 6 * v8;
    v13 = *a2;
    *(v12 + 4) = *(a2 + 2);
    *v12 = v13;
    v7 = 6 * v8 + 6;
    v14 = *(a1 + 8) - *a1;
    v15 = v12 - v14;
    memcpy((v12 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v7;
    *(a1 + 16) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    v6 = *a2;
    *(v5 + 4) = *(a2 + 2);
    *v5 = v6;
    v7 = v5 + 6;
  }

  *(a1 + 8) = v7;
}

void sub_4A9C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  sub_1394();
}

void sub_4AE4(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2AAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_1394();
}

double sub_4B38(uint64_t a1, int a2)
{
  *a1 = off_287D8;
  *(a1 + 8) = a2;
  result = 0.0;
  *(a1 + 12) = 0u;
  *(a1 + 28) = 0u;
  *(a1 + 44) = 0u;
  *(a1 + 60) = 0;
  return result;
}

void *sub_4B70(void *a1)
{
  *a1 = off_287D8;
  v2 = a1[5];
  if (v2)
  {
    a1[6] = v2;
    operator delete(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    a1[3] = v3;
    operator delete(v3);
  }

  return a1;
}

void sub_4BD8(uint64_t a1, int a2)
{
  NumberOfEntities = MIDIDeviceGetNumberOfEntities(*(a1 + 8));
  *(a1 + 12) = NumberOfEntities;
  sub_4E44((a1 + 16), NumberOfEntities);
  sub_4EE4((a1 + 40), *(a1 + 12));
  if (*(a1 + 12))
  {
    for (i = 0; i < *(a1 + 12); ++i)
    {
      Entity = MIDIDeviceGetEntity(*(a1 + 8), i);
      if (MIDIEntityGetNumberOfDestinations(Entity))
      {
        Destination = MIDIEntityGetDestination(Entity, 0);
        if (a2)
        {
          MIDIEndpointSetRefCons(Destination, a1, i);
LABEL_7:
          if (MIDIEntityGetNumberOfSources(Entity))
          {
            Source = MIDIEntityGetSource(Entity, 0);
          }

          else
          {
            Source = 0;
          }

          v10 = *(a1 + 24);
          v9 = *(a1 + 32);
          if (v10 >= v9)
          {
            v12 = *(a1 + 16);
            v13 = v10 - v12;
            v14 = (v10 - v12) >> 2;
            v15 = v14 + 1;
            if ((v14 + 1) >> 62)
            {
              sub_1280();
            }

            v16 = v9 - v12;
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
              sub_4A9C(a1 + 16, v18);
            }

            v19 = (v10 - v12) >> 2;
            v20 = (4 * v14);
            v21 = (4 * v14 - 4 * v19);
            *v20 = Source;
            v11 = v20 + 1;
            memcpy(v21, v12, v13);
            v22 = *(a1 + 16);
            *(a1 + 16) = v21;
            *(a1 + 24) = v11;
            *(a1 + 32) = 0;
            if (v22)
            {
              operator delete(v22);
            }
          }

          else
          {
            *v10 = Source;
            v11 = v10 + 4;
          }

          *(a1 + 24) = v11;
          v24 = *(a1 + 48);
          v23 = *(a1 + 56);
          if (v24 >= v23)
          {
            v26 = *(a1 + 40);
            v27 = 0xAAAAAAAAAAAAAAABLL * ((v24 - v26) >> 1);
            v28 = v27 + 1;
            if (v27 + 1 > 0x2AAAAAAAAAAAAAAALL)
            {
              sub_1280();
            }

            v29 = 0xAAAAAAAAAAAAAAABLL * ((v23 - v26) >> 1);
            if (2 * v29 > v28)
            {
              v28 = 2 * v29;
            }

            if (v29 >= 0x1555555555555555)
            {
              v30 = 0x2AAAAAAAAAAAAAAALL;
            }

            else
            {
              v30 = v28;
            }

            if (v30)
            {
              sub_4AE4(a1 + 40, v30);
            }

            v31 = 6 * v27;
            *(v31 + 4) = 0;
            *v31 = 0;
            v25 = 6 * v27 + 6;
            v32 = *(a1 + 40);
            v33 = *(a1 + 48) - v32;
            v34 = 6 * v27 - v33;
            memcpy((v31 - v33), v32, v33);
            v35 = *(a1 + 40);
            *(a1 + 40) = v34;
            *(a1 + 48) = v25;
            *(a1 + 56) = 0;
            if (v35)
            {
              operator delete(v35);
            }
          }

          else
          {
            *(v24 + 4) = 0;
            *v24 = 0;
            v25 = v24 + 6;
          }

          *(a1 + 48) = v25;
          continue;
        }

        MIDIEndpointSetRefCons(Destination, 0, 0);
      }

      else if (a2)
      {
        goto LABEL_7;
      }
    }
  }
}

void sub_4E44(void *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 2)
  {
    if (!(a2 >> 62))
    {
      sub_4A9C(a1, a2);
    }

    sub_1280();
  }
}

void sub_4EE4(void *a1, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 1) < a2)
  {
    if (a2 < 0x2AAAAAAAAAAAAAABLL)
    {
      sub_4AE4(a1, a2);
    }

    sub_1280();
  }
}

double sub_4FA0(uint64_t a1)
{
  *(a1 + 161) = 17;
  *(a1 + 164) = 2139062143;
  *&result = 0x100000001;
  *(a1 + 168) = 1;
  return result;
}

uint64_t sub_4FBC(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, unsigned int a5, char *a6, uint64_t a7)
{
  v12 = a2;
  v14 = 0xFFFFFFF;
  if (a5 != 36 && a5 != 112 && a5 != 126)
  {
    if (a5 == 37)
    {
      v14 = 0xFFFFFFF;
    }

    else
    {
      v14 = a4;
    }
  }

  if (*(a1 + 16) == *(a1 + 8))
  {
    if ((a5 & 0xFE) == 0x70)
    {
      v21 = 127;
    }

    else
    {
      v21 = a2;
    }

    *(a1 + 185) = v21;
    *(a1 + 176) = a3;
    *(a1 + 180) = v14;
    *(a1 + 184) = a5;
    __src = 32496;
    v53 = a2;
    v54 = 13;
    v55 = a5;
    v56 = 1;
    v57 = 0;
    if (!(a3 >> 28))
    {
      v22 = vrev64_s16(vand_s8(vmovn_s32(vshlq_u32(vdupq_n_s32(a3), xmmword_21D40)), 0x7F007F007F007FLL));
      LODWORD(v57) = vuzp1_s8(v22, v22).u32[0];
    }

    if (!(v14 >> 28))
    {
      v23 = vrev64_s16(vand_s8(vmovn_s32(vshlq_u32(vdupq_n_s32(v14), xmmword_21D40)), 0x7F007F007F007FLL));
      HIDWORD(v57) = vuzp1_s8(v23, v23).u32[0];
    }

    sub_555C(a1, a2);
    if (os_log_type_enabled(qword_2C108, OS_LOG_TYPE_DEBUG))
    {
      operator new();
    }

    v16 = sub_5C74(a1 + 8, *(a1 + 16), &__src, &v58, 14);
  }

  else
  {
    sub_555C(a1, a2);
    v15 = qword_2C108;
    v16 = os_log_type_enabled(qword_2C108, OS_LOG_TYPE_DEBUG);
    if (v16)
    {
      v18 = *(a1 + 16) - *(a1 + 8);
      v34 = 136315650;
      v35 = "MIDICIMessageEmitter.cpp";
      v36 = 1024;
      v37 = 49;
      v38 = 2048;
      *v39 = v18;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEBUG, "%25s:%-5d      Message already has %lu bytes. Checking continuation ...", &v34, 0x1Cu);
    }

    if (*(a1 + 176) != a3 || *(a1 + 180) != a4 || *(a1 + 184) != a5)
    {
      sub_555C(v16, v17);
      v19 = qword_2C108;
      if (os_log_type_enabled(qword_2C108, OS_LOG_TYPE_ERROR))
      {
        v34 = 136315394;
        v35 = "MIDICIMessageEmitter.cpp";
        v36 = 1024;
        v37 = 52;
        _os_log_impl(&dword_0, v19, OS_LOG_TYPE_ERROR, "%25s:%-5d [!] MIDICIMessageEmitter::CreateCIMessage() can't continue message (kMIDINotPermitted)", &v34, 0x12u);
      }

      v20 = 4294956452;
LABEL_44:
      *(a1 + 16) = *(a1 + 8);
      return v20;
    }
  }

  v24 = a5 >> 4;
  if (a5 >> 4 > 2)
  {
    if (v24 == 3)
    {
      v25 = sub_584C(a1, a6, a7);
      goto LABEL_38;
    }

    if (v24 == 7)
    {
      v25 = sub_5948(a1, a6, a7);
      goto LABEL_38;
    }
  }

  else
  {
    if (v24 == 1)
    {
      v25 = sub_558C(a1, a6, a7);
      goto LABEL_38;
    }

    if (v24 == 2)
    {
      v25 = sub_56D4(a1, a6, a7);
LABEL_38:
      v20 = v25;
      goto LABEL_39;
    }
  }

  sub_555C(v16, v17);
  v27 = qword_2C108;
  v25 = os_log_type_enabled(qword_2C108, OS_LOG_TYPE_ERROR);
  if (v25)
  {
    v34 = 136315650;
    v35 = "MIDICIMessageEmitter.cpp";
    v36 = 1024;
    v37 = 76;
    v38 = 1024;
    *v39 = a5 >> 4;
    _os_log_impl(&dword_0, v27, OS_LOG_TYPE_ERROR, "%25s:%-5d      Unhandled message type: 0x%x", &v34, 0x18u);
  }

  v20 = 4294956452;
LABEL_39:
  sub_555C(v25, v26);
  v28 = qword_2C108;
  v29 = os_log_type_enabled(qword_2C108, OS_LOG_TYPE_DEBUG);
  if (v29)
  {
    v31 = sub_1560(a5);
    v34 = 136317442;
    v35 = "MIDICIMessageEmitter.cpp";
    v36 = 1024;
    v37 = 80;
    v38 = 1024;
    *v39 = v12;
    *&v39[4] = 1024;
    *&v39[6] = a3;
    v40 = 1024;
    v41 = a4;
    v42 = 1024;
    v43 = a5;
    v44 = 2080;
    v45 = v31;
    v46 = 2048;
    v47 = a6;
    v48 = 2048;
    v49 = a7;
    v50 = 1024;
    v51 = v20;
    _os_log_impl(&dword_0, v28, OS_LOG_TYPE_DEBUG, "%25s:%-5d [*] MIDICIMessageEmitter::CreateCIMessage(channel:0x%x, sourceMUID:0x%08x, destMUID:0x%08x, msgIndex:0x%x (%s), data:%p, length:%lu) = %d", &v34, 0x4Eu);
  }

  if (v20)
  {
    sub_555C(v29, v30);
    v32 = qword_2C108;
    if (os_log_type_enabled(qword_2C108, OS_LOG_TYPE_ERROR))
    {
      v34 = 136315650;
      v35 = "MIDICIMessageEmitter.cpp";
      v36 = 1024;
      v37 = 83;
      v38 = 1024;
      *v39 = v20;
      _os_log_impl(&dword_0, v32, OS_LOG_TYPE_ERROR, "%25s:%-5d [!] MIDICIMessageEmitter::CreateCIMessage() failed with error %d (message will not be sent)", &v34, 0x18u);
    }

    goto LABEL_44;
  }

  return v20;
}

void sub_555C(uint64_t result, uint64_t a2)
{
  if ((atomic_load_explicit(byte_2C110, memory_order_acquire) & 1) == 0)
  {
    sub_1F458();
  }
}

uint64_t sub_558C(uint64_t a1, char *a2, unsigned int a3)
{
  __src = 99;
  v14 = 0;
  sub_5C74(a1 + 8, *(a1 + 16), &__src, &v16, 1);
  v6 = *(a1 + 184);
  if ((v6 - 16) >= 2)
  {
    if ((v6 - 19) < 2)
    {
      sub_5AD8(a1);
LABEL_13:
      v7 = 0;
      goto LABEL_15;
    }

    if (v6 != 18)
    {
      goto LABEL_13;
    }

    if (a3 == 5)
    {
      if (!a2)
      {
        goto LABEL_13;
      }

      v9 = *(a1 + 16);
      v11 = a1 + 8;
      v10 = a2 + 5;
      v12 = a2;
      v8 = 5;
LABEL_12:
      sub_5C74(v11, v9, v12, v10, v8);
      goto LABEL_13;
    }

LABEL_14:
    v7 = 4294956452;
    goto LABEL_15;
  }

  if (a3 != 5 * (a3 / 5))
  {
    goto LABEL_14;
  }

  v14 = a3 / 5;
  sub_5C74(a1 + 8, *(a1 + 16), &v14, &__src, 1);
  v7 = 0;
  if (a2)
  {
    v8 = a3;
    if (a3)
    {
      v9 = *(a1 + 16);
      v10 = &a2[a3];
      v11 = a1 + 8;
      v12 = a2;
      goto LABEL_12;
    }
  }

LABEL_15:
  v16 = -9;
  sub_5C74(a1 + 8, *(a1 + 16), &v16, &v17, 1);
  return v7;
}

uint64_t sub_56D4(uint64_t a1, _BYTE *__src, unsigned int a3)
{
  v4 = __src;
  __srca = 0;
  v6 = *(a1 + 184);
  if (v6 <= 0x21)
  {
    if (v6 == 32)
    {
      goto LABEL_20;
    }

    if (v6 == 33)
    {
      v4 = sub_5B5C(a1, __src, a3);
      goto LABEL_21;
    }

LABEL_13:
    v4 = 4294956452;
    goto LABEL_21;
  }

  if (v6 - 34 >= 4)
  {
    if (v6 == 38 && a3 >= 6)
    {
      if (__src)
      {
        sub_5C74(a1 + 8, *(a1 + 16), __src, __src + 5, 5);
      }

      v12 = a3 - 5;
      if (!(v12 >> 28))
      {
        v13 = vrev64_s16(vand_s8(vmovn_s32(vshlq_u32(vdupq_n_s32(v12), xmmword_21D40)), 0x7F007F007F007FLL));
        __srca = vuzp1_s8(v13, v13).u32[0];
      }

      sub_5C74(a1 + 8, *(a1 + 16), &__srca, v16, 4);
      v11 = v12;
      if (!v12)
      {
        goto LABEL_20;
      }

      v10 = (v4 + 5);
      v7 = *(a1 + 16);
      v9 = (v4 + 5 + v12);
      v8 = a1 + 8;
      goto LABEL_6;
    }

    goto LABEL_13;
  }

  if (a3 == 5)
  {
    if (__src)
    {
      v7 = *(a1 + 16);
      v8 = a1 + 8;
      v9 = (v4 + 5);
      v10 = v4;
      v11 = 5;
LABEL_6:
      sub_5C74(v8, v7, v10, v9, v11);
LABEL_20:
      v4 = 0;
    }
  }

  else
  {
    v4 = 4294956460;
  }

LABEL_21:
  v17 = -9;
  sub_5C74(a1 + 8, *(a1 + 16), &v17, &v18, 1);
  return v4;
}

uint64_t sub_584C(uint64_t a1, char *__src, unsigned __int16 a3)
{
  v4 = *(a1 + 184);
  if ((v4 - 50) >= 8)
  {
    if ((v4 - 48) < 2)
    {
      if (__src)
      {
        sub_5C74(a1 + 8, *(a1 + 16), __src, __src + 1, 1);
      }

      v10 = -9;
      v5 = *(a1 + 16);
      p_srca = &v10;
      v7 = a1 + 8;
      v8 = &v10;
      goto LABEL_6;
    }

    if (v4 != 63)
    {
      v12 = -9;
      sub_5C74(a1 + 8, *(a1 + 16), &v12, &v13, 1);
      return 4294956452;
    }
  }

  if (__src)
  {
    if (a3)
    {
      sub_5C74(a1 + 8, *(a1 + 16), __src, &__src[a3], a3);
    }
  }

  __srca = -9;
  v5 = *(a1 + 16);
  p_srca = &__srca;
  v7 = a1 + 8;
  v8 = &__srca;
LABEL_6:
  sub_5C74(v7, v5, v8, p_srca + 1, 1);
  return 0;
}

uint64_t sub_5948(uint64_t a1, char *a2, int a3)
{
  if (a3)
  {
    v6 = a2 == 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = *(a1 + 184);
  if (v6 && (v7 & 0xFE) == 0x70)
  {
    return 4294956452;
  }

  __src = 0;
  v15 = 0;
  if ((v7 - 112) < 2)
  {
    v9 = (a1 + 16);
    v10 = a1 + 8;
    sub_5C74(a1 + 8, *(a1 + 16), (a1 + 161), (a1 + 172), 11);
    if (a3 != 5)
    {
      return 4294956452;
    }

    __src = *a2;
    v11 = *(a2 + 1);
    if (!(v11 >> 28))
    {
      v12 = vrev64_s16(vand_s8(vmovn_s32(vshlq_u32(vdupq_n_s32(v11), xmmword_21D40)), 0x7F007F007F007FLL));
      v15 = vuzp1_s8(v12, v12).u32[0];
    }

    sub_5C74(a1 + 8, *v9, &__src, &v18, 1);
    goto LABEL_19;
  }

  if (v7 == 126)
  {
    v13 = *(a1 + 176);
    if (!(v13 >> 28))
    {
      v14 = vrev64_s16(vand_s8(vmovn_s32(vshlq_u32(vdupq_n_s32(v13), xmmword_21D40)), 0x7F007F007F007FLL));
      v15 = vuzp1_s8(v14, v14).u32[0];
    }

    v10 = a1 + 8;
    v9 = (a1 + 16);
LABEL_19:
    sub_5C74(v10, *v9, &v15, v16, 4);
    goto LABEL_20;
  }

  if (v7 != 127)
  {
    return 4294956452;
  }

LABEL_20:
  v18 = -9;
  sub_5C74(a1 + 8, *(a1 + 16), &v18, &v19, 1);
  return 0;
}

char *sub_5AD8(uint64_t a1)
{
  v2[0] = xmmword_21D50;
  v2[1] = xmmword_21D60;
  v2[2] = xmmword_21D70;
  return sub_5C74(a1 + 8, *(a1 + 16), v2, v3, 48);
}

uint64_t sub_5B5C(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
{
  result = 4294956452;
  if (a2 && a3)
  {
    v6 = *a2;
    __src[0] = v6 & 0x7F;
    __src[1] = (v6 >> 7) & 0x7F;
    sub_5C74(a1 + 8, *(a1 + 16), __src, &v15, 2);
    if (v6)
    {
      v7 = a2 + 7;
      v8 = v6;
      do
      {
        sub_5C74(a1 + 8, *(a1 + 16), v7 - 5, v7, 5);
        v7 += 5;
        --v8;
      }

      while (v8);
    }

    v9 = 5 * v6;
    v10 = *(a2 + (v9 + 2));
    v13[0] = v10 & 0x7F;
    v13[1] = (v10 >> 7) & 0x7F;
    sub_5C74(a1 + 8, *(a1 + 16), v13, __src, 2);
    if (v10)
    {
      v11 = a2 + (v9 + 4);
      do
      {
        v12 = v11 + 5;
        sub_5C74(a1 + 8, *(a1 + 16), v11, v11 + 5, 5);
        v11 = v12;
        --v10;
      }

      while (v10);
    }

    return 0;
  }

  return result;
}

char *sub_5C74(uint64_t a1, char *__dst, _BYTE *__src, char *a4, int64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if ((v9 - v10) >= a5)
  {
    v16 = v10 - __dst;
    if ((v10 - __dst) >= a5)
    {
      v21 = &__dst[a5];
      v22 = (v10 - a5);
      v23 = *(a1 + 8);
      if (v10 >= a5)
      {
        do
        {
          v24 = *v22++;
          *v23++ = v24;
        }

        while (v22 != v10);
      }

      *(a1 + 8) = v23;
      if (v10 != v21)
      {
        memmove(&__dst[a5], __dst, v10 - v21);
      }

      v25 = v5;
      v26 = __src;
      v27 = a5;
    }

    else
    {
      v17 = &__src[v16];
      if (&__src[v16] == a4)
      {
        v18 = *(a1 + 8);
        v19 = v18;
      }

      else
      {
        v18 = (&a4[__dst] - __src);
        v19 = *(a1 + 8);
        do
        {
          v20 = *v17++;
          *v19++ = v20;
        }

        while (v17 != a4);
      }

      *(a1 + 8) = v18;
      if (v16 < 1)
      {
        return v5;
      }

      v32 = &__dst[a5];
      v33 = &v18[-a5];
      v34 = v18;
      if (&v18[-a5] < v10)
      {
        do
        {
          v35 = *v33++;
          *v34++ = v35;
        }

        while (v33 != v10);
      }

      *(a1 + 8) = v34;
      if (v19 != v32)
      {
        memmove(&__dst[a5], __dst, v18 - v32);
      }

      v25 = v5;
      v26 = __src;
      v27 = v10 - v5;
    }

    memmove(v25, v26, v27);
    return v5;
  }

  v11 = *a1;
  v12 = v10 - *a1 + a5;
  if (v12 < 0)
  {
    sub_1280();
  }

  v13 = (__dst - v11);
  v14 = v9 - v11;
  if (2 * v14 > v12)
  {
    v12 = 2 * v14;
  }

  if (v14 >= 0x3FFFFFFFFFFFFFFFLL)
  {
    v15 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v15 = v12;
  }

  if (v15)
  {
    operator new();
  }

  v28 = (__dst - v11);
  memcpy(v13, __src, a5);
  v29 = &v13[a5];
  v30 = v10 - v5;
  memcpy(v29, v5, v10 - v5);
  *(a1 + 8) = v5;
  v31 = &v13[v11 - v5];
  memcpy(v31, v11, v28);
  *a1 = v31;
  *(a1 + 8) = &v29[v30];
  *(a1 + 16) = 0;
  if (v11)
  {
    operator delete(v11);
  }

  return v13;
}

void *sub_5E9C(void *result)
{
  *result = 0;
  result[1] = 0;
  *(result + 21) = 0;
  result[2] = 0;
  return result;
}

uint64_t sub_5EAC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    operator delete[]();
  }

  return a1;
}

uint64_t sub_5F34(uint64_t a1, io_object_t object)
{
  *a1 = object;
  *(a1 + 8) = 0;
  *(a1 + 14) = 0;
  *(a1 + 22) = 1033;
  *(a1 + 32) = 0;
  IOObjectRetain(object);
  return a1;
}

uint64_t sub_5F78(uint64_t a1)
{
  if (*(a1 + 20) == 1)
  {
    (*(**(a1 + 8) + 72))(*(a1 + 8));
  }

  v2 = *(a1 + 8);
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  IOObjectRelease(*a1);
  if (*(a1 + 32))
  {
    operator delete[]();
  }

  return a1;
}

uint64_t sub_5FF8(uint64_t a1)
{
  v3 = a1 + 8;
  result = *(a1 + 8);
  if (!result)
  {
    theInterface = 0;
    theScore = 0;
    v4 = *a1;
    v5 = CFUUIDGetConstantUUIDWithBytes(0, 0x9Du, 0xC7u, 0xB7u, 0x80u, 0x9Eu, 0xC0u, 0x11u, 0xD4u, 0xA5u, 0x4Fu, 0, 0xAu, 0x27u, 5u, 0x28u, 0x61u);
    v6 = CFUUIDGetConstantUUIDWithBytes(0, 0xC2u, 0x44u, 0xE8u, 0x58u, 0x10u, 0x9Cu, 0x11u, 0xD4u, 0x91u, 0xD4u, 0, 0x50u, 0xE4u, 0xC6u, 0x42u, 0x6Fu);
    if (!IOCreatePlugInInterfaceForService(v4, v5, v6, &theInterface, &theScore) || (usleep(0x186A0u), v7 = *a1, v8 = CFUUIDGetConstantUUIDWithBytes(0, 0x9Du, 0xC7u, 0xB7u, 0x80u, 0x9Eu, 0xC0u, 0x11u, 0xD4u, 0xA5u, 0x4Fu, 0, 0xAu, 0x27u, 5u, 0x28u, 0x61u), v9 = CFUUIDGetConstantUUIDWithBytes(0, 0xC2u, 0x44u, 0xE8u, 0x58u, 0x10u, 0x9Cu, 0x11u, 0xD4u, 0x91u, 0xD4u, 0, 0x50u, 0xE4u, 0xC6u, 0x42u, 0x6Fu), !IOCreatePlugInInterfaceForService(v7, v8, v9, &theInterface, &theScore)))
    {
      v10 = theInterface;
      QueryInterface = (*theInterface)->QueryInterface;
      v12 = CFUUIDGetConstantUUIDWithBytes(0, 0xFEu, 0x2Fu, 0xD5u, 0x2Fu, 0x3Bu, 0x5Au, 0x47u, 0x3Bu, 0x97u, 0x7Bu, 0xADu, 0x99u, 0, 0x1Eu, 0xB3u, 0xEDu);
      v13 = CFUUIDGetUUIDBytes(v12);
      v14 = (QueryInterface)(v10, *&v13.byte0, *&v13.byte8, v3);
      v15 = theInterface;
      v16 = *theInterface;
      if (v14)
      {
        v17 = v16->QueryInterface;
        v18 = CFUUIDGetConstantUUIDWithBytes(0, 0xC8u, 9u, 0xB8u, 0xD8u, 8u, 0x84u, 0x11u, 0xD7u, 0xBBu, 0x96u, 0, 3u, 0x93u, 0x3Eu, 0x3Eu, 0x3Eu);
        v19 = CFUUIDGetUUIDBytes(v18);
        v20 = (v17)(v15, *&v19.byte0, *&v19.byte8, v3);
        v21 = ((*theInterface)->Release)(theInterface);
        theInterface = 0;
        if (v20)
        {
          sub_6330(v21, v22);
          v23 = qword_2C118;
          if (os_log_type_enabled(qword_2C118, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315394;
            v27 = "USBDevice.cpp";
            v28 = 1024;
            v29 = 123;
            _os_log_impl(&dword_0, v23, OS_LOG_TYPE_DEBUG, "%25s:%-5d QueryInterface failed", buf, 0x12u);
          }

          *v3 = 0;
          return *v3;
        }
      }

      else
      {
        (v16->Release)(theInterface);
        theInterface = 0;
      }

      (*(**(a1 + 8) + 160))(*(a1 + 8), a1 + 16);
    }

    return *v3;
  }

  return result;
}

void sub_6330(uint64_t result, uint64_t a2)
{
  if ((atomic_load_explicit(byte_2C120, memory_order_acquire) & 1) == 0)
  {
    sub_1F4B8();
  }
}

_BYTE *sub_6360(_BYTE *result)
{
  if ((result[21] & 1) == 0)
  {
    v1 = result;
    result[21] = 1;
    result = sub_644C(result, 3, 0, 0, v2, 256);
    if (result >= 3)
    {
      *(v1 + 12) = (v2[0] - 2 + (((v2[0] - 2) & 0x8000u) >> 15)) >> 1;
      operator new[]();
    }
  }

  return result;
}

uint64_t sub_644C(uint64_t a1, int a2, __int16 a3, __int16 a4, _BYTE *a5, __int16 a6)
{
  v12 = sub_5FF8(a1);
  if (v12)
  {
    v13 = v12;
    v25 = 1664;
    v14 = a3 | (a2 << 8);
    v26 = v14;
    v27 = a4;
    v29 = a5;
    if (a2 == 3)
    {
      v15 = 2;
    }

    else
    {
      v15 = a6;
    }

    v28 = v15;
    if (!(*(*v12 + 64))(*(a1 + 8)))
    {
      goto LABEL_12;
    }

    v16 = 0;
    do
    {
      usleep(0x1388u);
      v17 = (*(*v13 + 64))(*(a1 + 8));
      v19 = v17;
      if (v16 > 0x12)
      {
        break;
      }

      ++v16;
    }

    while (v17);
    if (!v17)
    {
LABEL_12:
      v21 = (*(*v13 + 208))(v13, &v25);
      if (a2 == 3)
      {
        if (v21)
        {
          v22 = v21 == -536870168;
        }

        else
        {
          v22 = 1;
        }

        if (!v22)
        {
          return 0xFFFFFFFFLL;
        }

        v23 = *a5;
        if (!*a5)
        {
          return 0;
        }

        v25 = 1664;
        v26 = v14;
        v27 = a4;
        v28 = v23;
        v29 = a5;
        v21 = (*(*v13 + 208))(v13, &v25);
      }

      if (!v21)
      {
        return v30;
      }

      return 0xFFFFFFFFLL;
    }

    sub_6330(v17, v18);
    v20 = qword_2C118;
    if (os_log_type_enabled(qword_2C118, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      v32 = "USBDevice.cpp";
      v33 = 1024;
      v34 = 264;
      v35 = 1024;
      v36 = v19;
      _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEBUG, "%25s:%-5d USBDevice::LoadDescriptor - Could not open device due to error 0x%x", buf, 0x18u);
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_6638(uint64_t a1, uint64_t a2)
{
  sub_6330(a1, a2);
  v4 = qword_2C118;
  if (os_log_type_enabled(qword_2C118, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    *&buf[4] = "USBDevice.cpp";
    v12 = 1024;
    v13 = 166;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d -> USBDevice::OpenAndConfigure", buf, 0x12u);
  }

  v5 = sub_5FF8(a1);
  if (!v5 || (*(a1 + 20) & 1) == 0 && ((v7 = sub_5FF8(a1), (*(*v7 + 64))(*(a1 + 8))) || (*(a1 + 20) = 1, v10 = 0, v5 = (*(**(a1 + 8) + 176))(*(a1 + 8), &v10), v5) || !v10 && ((*buf = 0, (*(**(a1 + 8) + 168))(*(a1 + 8), a2, buf)) || (v5 = (*(**(a1 + 8) + 184))(*(a1 + 8), *(*buf + 5)), v5))))
  {
    sub_1F518(buf, v6);
    return buf[0];
  }

  else
  {
    sub_6330(v5, v6);
    v8 = qword_2C118;
    if (os_log_type_enabled(qword_2C118, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      *&buf[4] = "USBDevice.cpp";
      v12 = 1024;
      v13 = 190;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEBUG, "%25s:%-5d <- USBDevice::OpenAndConfigure returning true", buf, 0x12u);
    }

    return 1;
  }
}

CFStringRef sub_6810(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = a2;
  sub_6360(a1);
  v4 = sub_644C(a1, 3, v2, *(a1 + 22), v6, 256);
  if (v4 >= 3)
  {
    return CFStringCreateWithCharacters(0, v7, (v4 - 2) >> 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_689C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5, _DWORD *a6)
{
  v10 = a2;
  sub_6330(a1, a2);
  v12 = qword_2C118;
  if (os_log_type_enabled(qword_2C118, OS_LOG_TYPE_INFO))
  {
    *buf = 136316418;
    v69 = "USBDevice.cpp";
    v70 = 1024;
    v71 = 309;
    v72 = 1024;
    *v73 = v10;
    *&v73[4] = 1024;
    *&v73[6] = a3;
    v74 = 2048;
    v75 = a4;
    v76 = 1024;
    v77 = a5;
    _os_log_impl(&dword_0, v12, OS_LOG_TYPE_INFO, "%25s:%-5d [+] USBDevice::LoadGroupTerminalDescriptors(interface: %d, altSettingNumber: %d, buf:%p, len:%d)", buf, 0x2Eu);
  }

  *a6 = 0;
  v13 = sub_5FF8(a1);
  if (v13)
  {
    v15 = v13;
    v16 = (*(*v13 + 64))(*(a1 + 8));
    if (!v16)
    {
      goto LABEL_13;
    }

    v18 = v16;
    sub_6330(v16, v17);
    v19 = qword_2C118;
    if (os_log_type_enabled(qword_2C118, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v69 = "USBDevice.cpp";
      v70 = 1024;
      v71 = 320;
      v72 = 1024;
      *v73 = v18;
      _os_log_impl(&dword_0, v19, OS_LOG_TYPE_INFO, "%25s:%-5d      USBDeviceOpen failed with error 0x%x. Will retrying ...", buf, 0x18u);
    }

    v20 = 0;
    do
    {
      usleep(0x1388u);
      v21 = (*(*v15 + 64))(*(a1 + 8));
      v23 = v21;
      if (v20 > 3)
      {
        break;
      }

      ++v20;
    }

    while (v21);
    if (v21)
    {
      sub_6330(v21, v22);
      v24 = qword_2C118;
      if (os_log_type_enabled(qword_2C118, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v69 = "USBDevice.cpp";
        v70 = 1024;
        v71 = 326;
        v72 = 1024;
        *v73 = v23;
        v25 = "%25s:%-5d [-] USBDevice::LoadGroupTerminalDescriptors() - Could not open device due to error 0x%x";
        v26 = v24;
        v27 = OS_LOG_TYPE_ERROR;
        v28 = 24;
LABEL_44:
        _os_log_impl(&dword_0, v26, v27, v25, buf, v28);
      }
    }

    else
    {
LABEL_13:
      v62 = 1665;
      v63 = a3 | 0x2600;
      v64 = v10;
      v66 = a4;
      v67 = 0;
      v65 = a5;
      v23 = (*(*v15 + 208))(v15, &v62);
      sub_6330(v23, v29);
      v30 = qword_2C118;
      v31 = os_log_type_enabled(qword_2C118, OS_LOG_TYPE_DEBUG);
      if (v31)
      {
        *buf = 136315394;
        v69 = "USBDevice.cpp";
        v70 = 1024;
        v71 = 23;
        _os_log_impl(&dword_0, v30, OS_LOG_TYPE_DEBUG, "%25s:%-5d [+] LogDeviceRequest()", buf, 0x12u);
      }

      sub_6330(v31, v32);
      v33 = qword_2C118;
      v34 = os_log_type_enabled(qword_2C118, OS_LOG_TYPE_DEBUG);
      if (v34)
      {
        *buf = 136315650;
        v69 = "USBDevice.cpp";
        v70 = 1024;
        v71 = 24;
        v72 = 1024;
        *v73 = v62;
        _os_log_impl(&dword_0, v33, OS_LOG_TYPE_DEBUG, "%25s:%-5d      bmRequestType: 0x%00x", buf, 0x18u);
      }

      sub_6330(v34, v35);
      v36 = qword_2C118;
      v37 = os_log_type_enabled(qword_2C118, OS_LOG_TYPE_DEBUG);
      if (v37)
      {
        *buf = 136315650;
        v69 = "USBDevice.cpp";
        v70 = 1024;
        v71 = 25;
        v72 = 1024;
        *v73 = HIBYTE(v62);
        _os_log_impl(&dword_0, v36, OS_LOG_TYPE_DEBUG, "%25s:%-5d      bRequest:      0x%00x", buf, 0x18u);
      }

      sub_6330(v37, v38);
      v39 = qword_2C118;
      v40 = os_log_type_enabled(qword_2C118, OS_LOG_TYPE_DEBUG);
      if (v40)
      {
        *buf = 136315650;
        v69 = "USBDevice.cpp";
        v70 = 1024;
        v71 = 26;
        v72 = 1024;
        *v73 = v63;
        _os_log_impl(&dword_0, v39, OS_LOG_TYPE_DEBUG, "%25s:%-5d      wValue:        0x%0000x", buf, 0x18u);
      }

      sub_6330(v40, v41);
      v42 = qword_2C118;
      v43 = os_log_type_enabled(qword_2C118, OS_LOG_TYPE_DEBUG);
      if (v43)
      {
        *buf = 136315650;
        v69 = "USBDevice.cpp";
        v70 = 1024;
        v71 = 27;
        v72 = 1024;
        *v73 = v64;
        _os_log_impl(&dword_0, v42, OS_LOG_TYPE_DEBUG, "%25s:%-5d      wIndex:        0x%0000x", buf, 0x18u);
      }

      sub_6330(v43, v44);
      v45 = qword_2C118;
      v46 = os_log_type_enabled(qword_2C118, OS_LOG_TYPE_DEBUG);
      if (v46)
      {
        *buf = 136315650;
        v69 = "USBDevice.cpp";
        v70 = 1024;
        v71 = 28;
        v72 = 1024;
        *v73 = v65;
        _os_log_impl(&dword_0, v45, OS_LOG_TYPE_DEBUG, "%25s:%-5d      wLength:       %u", buf, 0x18u);
      }

      sub_6330(v46, v47);
      v48 = qword_2C118;
      v49 = os_log_type_enabled(qword_2C118, OS_LOG_TYPE_DEBUG);
      if (v49)
      {
        *buf = 136315650;
        v69 = "USBDevice.cpp";
        v70 = 1024;
        v71 = 29;
        v72 = 2048;
        *v73 = v66;
        _os_log_impl(&dword_0, v48, OS_LOG_TYPE_DEBUG, "%25s:%-5d      pData:         %p", buf, 0x1Cu);
      }

      sub_6330(v49, v50);
      v51 = qword_2C118;
      v52 = os_log_type_enabled(qword_2C118, OS_LOG_TYPE_DEBUG);
      if (v52)
      {
        *buf = 136315650;
        v69 = "USBDevice.cpp";
        v70 = 1024;
        v71 = 30;
        v72 = 1024;
        *v73 = v67;
        _os_log_impl(&dword_0, v51, OS_LOG_TYPE_DEBUG, "%25s:%-5d      wLenDone:      %u", buf, 0x18u);
      }

      sub_6330(v52, v53);
      v54 = qword_2C118;
      v55 = os_log_type_enabled(qword_2C118, OS_LOG_TYPE_DEBUG);
      if (v55)
      {
        *buf = 136315394;
        v69 = "USBDevice.cpp";
        v70 = 1024;
        v71 = 31;
        _os_log_impl(&dword_0, v54, OS_LOG_TYPE_DEBUG, "%25s:%-5d [-] LogDeviceRequest()", buf, 0x12u);
      }

      if (v23 == -536854449)
      {
        sub_6330(v55, v56);
        v57 = qword_2C118;
        if (os_log_type_enabled(qword_2C118, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          v69 = "USBDevice.cpp";
          v70 = 1024;
          v71 = 342;
          _os_log_impl(&dword_0, v57, OS_LOG_TYPE_INFO, "%25s:%-5d      Pipe stall on DeviceRequest(). Will retry once only.", buf, 0x12u);
        }

        v55 = (*(*v15 + 208))(v15, &v62);
        v23 = v55;
      }

      if (v23)
      {
        sub_6330(v55, v56);
        v58 = qword_2C118;
        v55 = os_log_type_enabled(qword_2C118, OS_LOG_TYPE_ERROR);
        if (v55)
        {
          *buf = 136315650;
          v69 = "USBDevice.cpp";
          v70 = 1024;
          v71 = 346;
          v72 = 1024;
          *v73 = v23;
          _os_log_impl(&dword_0, v58, OS_LOG_TYPE_ERROR, "%25s:%-5d      DeviceRequest() returned error 0x%x", buf, 0x18u);
        }
      }

      else
      {
        *a6 = v67;
      }

      sub_6330(v55, v56);
      v60 = qword_2C118;
      if (os_log_type_enabled(qword_2C118, OS_LOG_TYPE_INFO))
      {
        *buf = 136315906;
        v69 = "USBDevice.cpp";
        v70 = 1024;
        v71 = 350;
        v72 = 1024;
        *v73 = v67;
        *&v73[4] = 1024;
        *&v73[6] = v23;
        v25 = "%25s:%-5d [-] USBDevice::LoadGroupTerminalDescriptors(outLength: %u) = %d";
        v26 = v60;
        v27 = OS_LOG_TYPE_INFO;
        v28 = 30;
        goto LABEL_44;
      }
    }
  }

  else
  {
    sub_6330(0, v14);
    v59 = qword_2C118;
    if (os_log_type_enabled(qword_2C118, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v69 = "USBDevice.cpp";
      v70 = 1024;
      v71 = 313;
      _os_log_impl(&dword_0, v59, OS_LOG_TYPE_ERROR, "%25s:%-5d [-] USBDevice::LoadGroupTerminalDescriptors() - Could not get plugin interface!", buf, 0x12u);
    }

    return 4294956451;
  }

  return v23;
}

uint64_t sub_70EC(uint64_t a1, int a2, __int16 a3)
{
  v4 = sub_5FF8(a1);
  if (v4)
  {
    iterator = 0;
    v7 = -1;
    v8 = -1;
    v9 = a3;
    if (!(*(*v4 + 224))(v4, &v7, &iterator))
    {
      if (IOIteratorNext(iterator))
      {
        operator new();
      }

      IOObjectRelease(iterator);
    }
  }

  return 0;
}

uint64_t sub_7234(uint64_t a1)
{
  v3 = a1 + 16;
  result = *(a1 + 16);
  if (!result)
  {
    theInterface = 0;
    theScore = 0;
    v4 = *(a1 + 8);
    v5 = CFUUIDGetConstantUUIDWithBytes(0, 0x2Du, 0x97u, 0x86u, 0xC6u, 0x9Eu, 0xF3u, 0x11u, 0xD4u, 0xADu, 0x51u, 0, 0xAu, 0x27u, 5u, 0x28u, 0x61u);
    v6 = CFUUIDGetConstantUUIDWithBytes(0, 0xC2u, 0x44u, 0xE8u, 0x58u, 0x10u, 0x9Cu, 0x11u, 0xD4u, 0x91u, 0xD4u, 0, 0x50u, 0xE4u, 0xC6u, 0x42u, 0x6Fu);
    if (!IOCreatePlugInInterfaceForService(v4, v5, v6, &theInterface, &theScore))
    {
      v7 = theInterface;
      QueryInterface = (*theInterface)->QueryInterface;
      v9 = CFUUIDGetConstantUUIDWithBytes(0, 0x64u, 0xBAu, 0xBDu, 0xD2u, 0xFu, 0x6Bu, 0x4Bu, 0x4Fu, 0x8Eu, 0x3Eu, 0xDCu, 0x36u, 4u, 0x69u, 0x87u, 0xADu);
      v10 = CFUUIDGetUUIDBytes(v9);
      v11 = (QueryInterface)(v7, *&v10.byte0, *&v10.byte8, v3);
      v12 = theInterface;
      v13 = *theInterface;
      if (v11)
      {
        v14 = v13->QueryInterface;
        v15 = CFUUIDGetConstantUUIDWithBytes(0, 0x8Fu, 0xDBu, 0x84u, 0x55u, 0x74u, 0xA6u, 0x11u, 0xD6u, 0x97u, 0xB1u, 0, 0x30u, 0x65u, 0xD3u, 0x60u, 0x8Eu);
        v16 = CFUUIDGetUUIDBytes(v15);
        v17 = (v14)(v12, *&v16.byte0, *&v16.byte8, v3);
        v18 = ((*theInterface)->Release)(theInterface);
        theInterface = 0;
        if (v17)
        {
          sub_6330(v18, v19);
          v20 = qword_2C118;
          if (os_log_type_enabled(qword_2C118, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315394;
            v24 = "USBDevice.cpp";
            v25 = 1024;
            v26 = 513;
            _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEBUG, "%25s:%-5d QueryInterface failed", buf, 0x12u);
          }

          *v3 = 0;
        }
      }

      else
      {
        (v13->Release)(theInterface);
      }
    }

    return *v3;
  }

  return result;
}

uint64_t sub_74C0(uint64_t a1, uint64_t a2, io_object_t object)
{
  *a1 = 0;
  *(a1 + 8) = object;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  IOObjectRetain(object);
  v5 = sub_7234(a1);
  if (v5 || (usleep(0x186A0u), (v5 = sub_7234(a1)) != 0))
  {
    if (a2)
    {
      *a1 = a2;
    }

    else
    {
      objecta = 0;
      if (!(*(*v5 + 168))(v5, &objecta))
      {
        operator new();
      }
    }
  }

  return a1;
}

uint64_t sub_75B4(uint64_t a1)
{
  if (*(a1 + 25) == 1)
  {
    (*(**(a1 + 16) + 72))(*(a1 + 16));
  }

  v2 = *(a1 + 16);
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  IOObjectRelease(*(a1 + 8));
  if (*(a1 + 24) == 1 && *a1)
  {
    sub_5F78(*a1);
    operator delete();
  }

  return a1;
}

uint64_t sub_7640(uint64_t a1)
{
  if (*(a1 + 25))
  {
    return 1;
  }

  v3 = sub_7234(a1);
  if (!v3)
  {
    return 0;
  }

  v4 = (*(*v3 + 64))(v3);
  if (v4)
  {
    sub_1F5BC(v4, &v8);
    return v8;
  }

  else
  {
    v1 = 1;
    *(a1 + 25) = 1;
    sub_6330(v4, v5);
    v6 = qword_2C118;
    if (os_log_type_enabled(qword_2C118, OS_LOG_TYPE_DEBUG))
    {
      v8 = 136315650;
      v9 = "USBDevice.cpp";
      v10 = 1024;
      v11 = 482;
      v12 = 2048;
      v13 = a1;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d [?] USBInterface(%p)::Open() - success", &v8, 0x1Cu);
    }
  }

  return v1;
}

BOOL sub_77C4()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG);
}

void *sub_77DC(void *a1, uint64_t a2)
{
  v4 = IOServiceMatching("IOUSBDevice");
  v5 = sub_1E40(a1, a2, v4);
  *a1 = off_28808;
  sub_78F4(v5, v6);
  v7 = qword_2C128;
  if (os_log_type_enabled(qword_2C128, OS_LOG_TYPE_DEBUG))
  {
    v9 = 136315906;
    v10 = "USBDeviceManager.cpp";
    v11 = 1024;
    v12 = 23;
    v13 = 2048;
    v14 = a1;
    v15 = 2048;
    v16 = a2;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d [*] USBDeviceManager(%p)::USBDeviceManager(notifyRunloop %p)", &v9, 0x26u);
  }

  return a1;
}

void sub_78F4(uint64_t result, uint64_t a2)
{
  if ((atomic_load_explicit(byte_2C130, memory_order_acquire) & 1) == 0)
  {
    sub_1F684();
  }
}

void sub_7B4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  sub_4B38(a1, a5);
  *(v9 + 64) = 0;
  *(v9 + 72) = 0;
  *v9 = off_28848;
  *(v9 + 80) = a2;
  *(v9 + 88) = a3;
  *(v9 + 96) = a4;
  *(v9 + 104) = 0u;
  *(v9 + 120) = 0u;
  *(v9 + 136) = 0u;
  *(v9 + 152) = 0u;
  *(v9 + 168) = 0u;
  *(v9 + 183) = 0;
  *(v9 + 187) = 1;
  *(v9 + 189) = 0;
  *(v9 + 200) = 0;
  *(v9 + 208) = 0;
  *(v9 + 192) = 0;
  *(v9 + 240) = 0u;
  *(v9 + 216) = 1;
  *(v9 + 224) = 0u;
  *(v9 + 256) = 0u;
  *(v9 + 272) = 0u;
  *(v9 + 288) = 0u;
  *(v9 + 304) = 0u;
  *(v9 + 320) = 0u;
  *(v9 + 336) = 0;
  sub_1908(v9 + 344, "USBMIDIDevice.mWriteQueueMutex");
  *(a1 + 432) = a1 + 432;
  *(a1 + 440) = a1 + 432;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 478) = 0u;
  v10[0] = off_28A50;
  v10[3] = v10;
  sub_8318(@"usbioresults", @"com.apple.coremidi", sub_8F8, v10);
}

void sub_80E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_1298(exception_object);
}

void sub_8318(const void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  sub_880();
  sub_F2E4(v5, a4);
  v5[7] = 0;
  operator new();
}

void sub_8414(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_1200(va);
  sub_F650(v11 + 8);
  _Unwind_Resume(a1);
}

void sub_8440(const void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  sub_880();
  sub_F6D0(v5, a4);
  v5[7] = 0;
  operator new();
}

void sub_853C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_1200(va);
  sub_FA3C(v11 + 8);
  _Unwind_Resume(a1);
}

void sub_8568(uint64_t result, uint64_t a2)
{
  if ((atomic_load_explicit(byte_2C140, memory_order_acquire) & 1) == 0)
  {
    sub_1F8F0();
  }
}

uint64_t sub_859C(void *a1, uint64_t a2)
{
  sub_8568(a1, a2);
  v3 = qword_2C138;
  if (os_log_type_enabled(qword_2C138, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    *&buf[4] = "USBMIDIDevice.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 136;
    *&buf[18] = 2048;
    *&buf[20] = a1;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "%25s:%-5d [+] USBMIDIDevice(%p)::Initialize()", buf, 0x1Cu);
  }

  v4 = (*(*a1[10] + 144))(a1[10], a1);
  a1[12] = v4;
  if (!v4 || (v4 = sub_7640(v4), (v4 & 1) == 0))
  {
    sub_8568(v4, v5);
    v33 = qword_2C138;
    if (!os_log_type_enabled(qword_2C138, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    v34 = a1[12];
    *&buf[4] = "USBMIDIDevice.cpp";
    *buf = 136315906;
    *&buf[12] = 1024;
    if (v34)
    {
      v35 = "mUSBInterface->Open() failed";
    }

    else
    {
      v35 = "mUSBInterface = NULL";
    }

    *&buf[14] = 139;
    *&buf[18] = 2048;
    *&buf[20] = a1;
    *&buf[28] = 2080;
    v86 = v35;
    v36 = "%25s:%-5d [-] USBMIDIDevice(%p)::Initialize() - Failed: %s";
    v37 = v33;
    v38 = 38;
LABEL_49:
    _os_log_impl(&dword_0, v37, OS_LOG_TYPE_ERROR, v36, buf, v38);
    return 0;
  }

  v6 = sub_7234(a1[12]);
  a1[13] = v6;
  if (!v6)
  {
    sub_8568(0, v7);
    v41 = qword_2C138;
    if (!os_log_type_enabled(qword_2C138, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    *buf = 136315650;
    *&buf[4] = "USBMIDIDevice.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 144;
    *&buf[18] = 2048;
    *&buf[20] = a1;
    v36 = "%25s:%-5d [-] USBMIDIDevice(%p)::Initialize() - Failed: GetPluginInterface() failed";
    v37 = v41;
    v38 = 28;
    goto LABEL_49;
  }

  *(a1 + 185) = 0;
  v8 = sub_9358(a1);
  *(a1 + 189) = v8;
  if (v8)
  {
    sub_8568(v8, v9);
    v10 = qword_2C138;
    if (os_log_type_enabled(qword_2C138, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      *&buf[4] = "USBMIDIDevice.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 152;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "%25s:%-5d      phantom entity detected and will be excluded from portmap list", buf, 0x12u);
    }
  }

  (*(*a1 + 120))(a1, *(a1 + 491));
  (*(*a1 + 56))(a1);
  v11 = (*(*a1 + 112))(a1);
  if ((v11 & 1) != 0 || (v11 = (*(*a1 + 104))(a1), v11))
  {
    if (*(a1[10] + 28) == 3)
    {
      sub_8568(v11, v12);
      v13 = qword_2C138;
      if (os_log_type_enabled(qword_2C138, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        *&buf[4] = "USBMIDIDevice.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 159;
        _os_log_impl(&dword_0, v13, OS_LOG_TYPE_INFO, "%25s:%-5d      Using USB MIDI Driver v3.", buf, 0x12u);
      }
    }

    v14 = (*(*a1 + 32))(a1);
    if (a1[17] != a1[18])
    {
      sub_FEDC(v82, a1 + 8);
      v16 = *&v82[8];
      *buf = *v82;
      *&buf[8] = *&v82[8];
      if (*&v82[8])
      {
        atomic_fetch_add_explicit((*&v82[8] + 16), 1uLL, memory_order_relaxed);
        sub_43D0(v16);
      }

      v80 = a1;
      sub_FF6C();
    }

    if (a1[20] != a1[21])
    {
      sub_FEDC(v82, a1 + 8);
      v17 = *&v82[8];
      *buf = *v82;
      *&buf[8] = *&v82[8];
      if (*&v82[8])
      {
        atomic_fetch_add_explicit((*&v82[8] + 16), 1uLL, memory_order_relaxed);
        sub_43D0(v17);
      }

      v80 = a1;
      sub_FF6C();
    }

    v18 = a1[17];
    for (i = a1[18]; v18 != i; v18 += 8)
    {
      sub_8568(v14, v15);
      v20 = qword_2C138;
      v14 = os_log_type_enabled(qword_2C138, OS_LOG_TYPE_INFO);
      if (v14)
      {
        if (v18[1])
        {
          v21 = *v18 | 0x80;
        }

        else
        {
          v21 = *v18;
        }

        v22 = v18[6];
        *buf = 136315906;
        *&buf[4] = "USBMIDIDevice.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 184;
        *&buf[18] = 1024;
        *&buf[20] = v21;
        *&buf[24] = 1024;
        *&buf[26] = v22;
        _os_log_impl(&dword_0, v20, OS_LOG_TYPE_INFO, "%25s:%-5d      Configuring USB In Endpoint: 0x%0x, pipeIndex:%d", buf, 0x1Eu);
      }
    }

    v23 = a1[20];
    for (j = a1[21]; v23 != j; v23 += 8)
    {
      sub_8568(v14, v15);
      v25 = qword_2C138;
      v14 = os_log_type_enabled(qword_2C138, OS_LOG_TYPE_INFO);
      if (v14)
      {
        if (v23[1])
        {
          v26 = *v23 | 0x80;
        }

        else
        {
          v26 = *v23;
        }

        v27 = v23[6];
        *buf = 136315906;
        *&buf[4] = "USBMIDIDevice.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 187;
        *&buf[18] = 1024;
        *&buf[20] = v26;
        *&buf[24] = 1024;
        *&buf[26] = v27;
        _os_log_impl(&dword_0, v25, OS_LOG_TYPE_INFO, "%25s:%-5d      Configuring USB Out Endpoint: 0x%0x, pipeIndex:%d", buf, 0x1Eu);
      }
    }

    v28 = a1[17];
    v29 = a1[18];
    if (v28 == v29)
    {
      v31 = 0;
    }

    else
    {
      v30 = v28 + 8;
      do
      {
        v31 = *(v30 - 1) == 255;
        v32 = *(v30 - 1) == 255 || v30 == v29;
        v30 += 8;
      }

      while (!v32);
    }

    for (k = a1[20]; k != a1[21]; k += 8)
    {
      if (*(k + 7) == 255)
      {
        goto LABEL_60;
      }
    }

    if (!v31)
    {
      goto LABEL_99;
    }

LABEL_60:
    sub_8568(v14, v15);
    v43 = qword_2C138;
    if (os_log_type_enabled(qword_2C138, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      *&buf[4] = "USBMIDIDevice.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 191;
      _os_log_impl(&dword_0, v43, OS_LOG_TYPE_INFO, "%25s:%-5d      MIDI-CI negotiation is necessary to determine initial protocol(s).", buf, 0x12u);
    }

    *(a1 + 188) = 1;
    memset(buf, 0, 24);
    v44 = sub_E7C8(buf, a1[20], a1[21], (a1[21] - a1[20]) >> 3);
    v46 = *buf;
    if (*buf != *&buf[8])
    {
      while (v46[7] == 255)
      {
        v46 += 8;
        if (v46 == *&buf[8])
        {
          goto LABEL_72;
        }
      }
    }

    if (v46 != *&buf[8])
    {
      sub_8568(v44, v45);
      v47 = qword_2C138;
      v44 = os_log_type_enabled(qword_2C138, OS_LOG_TYPE_INFO);
      if (v44)
      {
        *v82 = 136315394;
        *&v82[4] = "USBMIDIDevice.cpp";
        *&v82[12] = 1024;
        *&v82[14] = 197;
        _os_log_impl(&dword_0, v47, OS_LOG_TYPE_INFO, "%25s:%-5d      Culling endpoints with known protocols.", v82, 0x12u);
      }

      v45 = v46 + 8;
      if (v46 + 8 != *&buf[8])
      {
        v48 = ((*&buf[8] - v46) & 0xFFFFFFFFFFFFFFF8) - 8;
        v44 = memmove(v46, v45, v48);
        v46 += v48;
      }

      *&buf[8] = v46;
    }

LABEL_72:
    sub_8568(v44, v45);
    v49 = qword_2C138;
    v14 = os_log_type_enabled(qword_2C138, OS_LOG_TYPE_INFO);
    if (v14)
    {
      *v82 = 136315650;
      *&v82[4] = "USBMIDIDevice.cpp";
      *&v82[12] = 1024;
      *&v82[14] = 202;
      v83 = 1024;
      v84 = (*&buf[8] - *buf) >> 3;
      _os_log_impl(&dword_0, v49, OS_LOG_TYPE_INFO, "%25s:%-5d      Negotiating protocol for %u endpoint(s)...", v82, 0x18u);
    }

    v50 = *buf;
    if (*buf != *&buf[8])
    {
      do
      {
        v51 = a1[24];
        v52 = a1[25];
        if (v51 != v52)
        {
          if (v50[1])
          {
            v53 = *v50 | 0x80;
          }

          else
          {
            v53 = *v50;
          }

          while (*(v51 + 3) != v53)
          {
            v51 += 8;
            if (v51 == v52)
            {
              goto LABEL_84;
            }
          }
        }

        if (v51 == v52)
        {
LABEL_84:
          v54 = 0;
        }

        else
        {
          v54 = *(v51 + 2);
        }

        v55 = a1[17];
        v56 = a1[18];
        if (v55 != v56)
        {
          while (1)
          {
            v57 = *(v55 + 1) ? *v55 | 0x80 : *v55;
            if (v54 == v57)
            {
              break;
            }

            v55 += 8;
            if (v55 == v56)
            {
              goto LABEL_95;
            }
          }
        }

        if (v55 != v56)
        {
          v81 = *v55;
          if ((~v81 & 0xFF000000000000) != 0)
          {
            sub_FEDC(&v80, a1 + 8);
            sub_10304();
          }
        }

LABEL_95:
        v50 += 8;
      }

      while (v50 != *&buf[8]);
      v50 = *buf;
    }

    if (v50)
    {
      *&buf[8] = v50;
      operator delete(v50);
    }

LABEL_99:
    sub_8568(v14, v15);
    v58 = qword_2C138;
    if (os_log_type_enabled(qword_2C138, OS_LOG_TYPE_INFO))
    {
      v59 = (a1[18] - a1[17]) >> 3;
      *buf = 136315650;
      *&buf[4] = "USBMIDIDevice.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 213;
      *&buf[18] = 1024;
      *&buf[20] = v59;
      _os_log_impl(&dword_0, v58, OS_LOG_TYPE_INFO, "%25s:%-5d      Priming %d input pipe(s)", buf, 0x18u);
    }

    if (a1[18] != a1[17])
    {
      v60 = 0;
      do
      {
        v61 = 0;
        v62 = 1;
        do
        {
          v63 = v62;
          v64 = v61 | (2 * v60);
          v65 = a1[34];
          if (v64 >= (a1[35] - v65) >> 4)
          {
            sub_E8C0();
          }

          v66 = a1[17];
          if (v60 >= (a1[18] - v66) >> 3)
          {
            sub_E8C0();
          }

          *(*(v65 + 16 * v64) + 64) = *(v66 + 8 * v60 + 6);
          (*(*a1 + 64))(a1);
          v62 = 0;
          v61 = 1;
        }

        while ((v63 & 1) != 0);
        ++v60;
      }

      while (v60 < (a1[18] - a1[17]) >> 3);
    }

    v67 = (*(*a1[10] + 152))(a1[10], a1);
    v69 = a1[14];
    v70 = a1[15];
    if (v69 == v70)
    {
      goto LABEL_125;
    }

    do
    {
      if ((*(a1 + 492) & 1) != 0 || *(a1 + 493) == 1)
      {
        sub_8568(v67, v68);
        v71 = qword_2C138;
        if (os_log_type_enabled(qword_2C138, OS_LOG_TYPE_INFO))
        {
          v72 = "forcemidi1upfallback";
          if (*(a1 + 492))
          {
            v72 = "forcemidi1fallback";
          }

          *buf = 136315650;
          *&buf[4] = "USBMIDIDevice.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 226;
          *&buf[18] = 2080;
          *&buf[20] = v72;
          _os_log_impl(&dword_0, v71, OS_LOG_TYPE_INFO, "%25s:%-5d [AQAMIDI] %s is set in defaults, so negotiation will be skipped.", buf, 0x1Cu);
        }

        v73 = *v69;
        if (*(*v69 + 41))
        {
          v74 = *(*v69 + 40) | 0x80;
        }

        else
        {
          v74 = *(*v69 + 40);
        }

        v75 = *(v73 + 49);
        v76 = *(v73 + 48);
        if (v75)
        {
          v76 |= 0x80u;
        }

        sub_95E8(a1, v74, v76, 255);
      }

      else
      {
        sub_1AB5C(*v69, v68);
      }

      v69 += 2;
    }

    while (v69 != v70);
    if (a1[14] == a1[15])
    {
LABEL_125:
      v39 = (*(*a1 + 48))(a1);
      sub_8568(v39, v77);
      v78 = qword_2C138;
      if (os_log_type_enabled(qword_2C138, OS_LOG_TYPE_INFO))
      {
        v79 = "false";
        *&buf[4] = "USBMIDIDevice.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 236;
        *buf = 136315906;
        if (v39)
        {
          v79 = "true";
        }

        *&buf[18] = 2048;
        *&buf[20] = a1;
        *&buf[28] = 2080;
        v86 = v79;
        _os_log_impl(&dword_0, v78, OS_LOG_TYPE_INFO, "%25s:%-5d [-] USBMIDIDevice(%p)::Initialize() = %s", buf, 0x26u);
      }
    }

    else
    {
      return 1;
    }
  }

  else
  {
    sub_1F950(a1, buf);
    return buf[0];
  }

  return v39;
}

void sub_92E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18, void *__p, std::__shared_weak_count *a20)
{
  if (a16)
  {
    sub_43D0(a16);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

ItemCount sub_9358(uint64_t a1)
{
  if (*(a1 + 491) != 1)
  {
    return 0;
  }

  v6 = v1;
  v7 = v2;
  result = MIDIDeviceGetNumberOfEntities(*(a1 + 8));
  if (result)
  {
    outValue = 0;
    result = MIDIDeviceGetEntity(*(a1 + 8), result - 1);
    if (result)
    {
      MIDIObjectGetIntegerProperty(result, kMIDIPropertyUMPCanTransmitGroupless, &outValue);
      return outValue != 0;
    }
  }

  return result;
}

void **sub_93E0(void **result, uint64_t a2)
{
  v3 = result;
  v5 = result[1];
  v4 = result[2];
  if (v5 >= v4)
  {
    v7 = (v5 - *result) >> 4;
    if ((v7 + 1) >> 60)
    {
      sub_1280();
    }

    v8 = v4 - *result;
    v9 = v8 >> 3;
    if (v8 >> 3 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    v16[4] = result;
    if (v10)
    {
      sub_E6F8(result, v10);
    }

    v11 = (16 * v7);
    *v11 = *a2;
    v6 = 16 * v7 + 16;
    *a2 = 0;
    *(a2 + 8) = 0;
    v12 = result[1] - *result;
    v13 = v11 - v12;
    memcpy(v11 - v12, *result, v12);
    v14 = *v3;
    *v3 = v13;
    v3[1] = v6;
    v15 = v3[2];
    v3[2] = 0;
    v16[2] = v14;
    v16[3] = v15;
    v16[0] = v14;
    v16[1] = v14;
    result = sub_E740(v16);
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
  }

  v3[1] = v6;
  return result;
}

void **sub_94D4(void **result, __int128 *a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (v4 >= v5)
  {
    v8 = (v4 - *result) >> 4;
    v9 = v8 + 1;
    if ((v8 + 1) >> 60)
    {
      sub_1280();
    }

    v10 = v5 - *result;
    if (v10 >> 3 > v9)
    {
      v9 = v10 >> 3;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    v18[4] = result;
    if (v11)
    {
      sub_E6F8(result, v11);
    }

    v12 = 16 * v8;
    v13 = *a2;
    *(16 * v8) = *a2;
    if (*(&v13 + 1))
    {
      atomic_fetch_add_explicit((*(&v13 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v7 = (v12 + 16);
    v14 = result[1] - *result;
    v15 = (v12 - v14);
    memcpy((v12 - v14), *result, v14);
    v16 = *v3;
    *v3 = v15;
    v3[1] = v7;
    v17 = v3[2];
    v3[2] = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    result = sub_E740(v18);
  }

  else
  {
    v6 = *(a2 + 1);
    *v4 = *a2;
    *(v4 + 1) = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    v7 = v4 + 16;
  }

  v3[1] = v7;
  return result;
}

void sub_95E8(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v5 = a2;
  v6 = a1;
  if (*(a1 + 492) == 1)
  {
    *(a1 + 188) = 0;
    sub_8568(a1, a2);
    v7 = qword_2C138;
    if (os_log_type_enabled(qword_2C138, OS_LOG_TYPE_ERROR))
    {
      v9 = &unk_2064F;
      v10 = *(v6 + 492);
      v48 = "USBMIDIDevice.cpp";
      v47 = 136316162;
      v49 = 1024;
      if (v10)
      {
        v9 = "[AQAMIDI] defaults value midi1fallback is set";
      }

      v50 = 989;
      v51 = 1024;
      *v52 = v5;
      *&v52[4] = 1024;
      *&v52[6] = a3;
      v53 = 2080;
      v54 = v9;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d [!] USBMIDIDevice::NegotiationCompleteForEndpoint(inEP: 0x%x, outEP: 0x%x) failed %s", &v47, 0x28u);
    }

    v11 = sub_9C00(v6, v8);
    v12 = v11;
    sub_8568(v11, v13);
    v14 = qword_2C138;
    v15 = os_log_type_enabled(qword_2C138, OS_LOG_TYPE_INFO);
    if (v12)
    {
      if (!v15)
      {
        return;
      }

      v47 = 136315906;
      v48 = "USBMIDIDevice.cpp";
      v49 = 1024;
      v50 = 991;
      v51 = 1024;
      *v52 = v5;
      *&v52[4] = 1024;
      *&v52[6] = a3;
      v16 = "%25s:%-5d [-] USBMIDIDevice::NegotiationCompleteForEndpoints(inEP: 0x%x, outEP: 0x%x) - Successfully fell back to MIDI 1.0 after failure.";
    }

    else
    {
      if (!v15)
      {
        return;
      }

      v47 = 136315906;
      v48 = "USBMIDIDevice.cpp";
      v49 = 1024;
      v50 = 993;
      v51 = 1024;
      *v52 = v5;
      *&v52[4] = 1024;
      *&v52[6] = a3;
      v16 = "%25s:%-5d [!] USBMIDIDevice::NegotiationCompleteForEndpoints(inEP: 0x%x, outEP: 0x%x) - MIDI 1.0 fallback failed.";
    }

    v19 = v14;
    v20 = OS_LOG_TYPE_INFO;
    v21 = 30;
    goto LABEL_16;
  }

  v17 = a4;
  if (a4 == 255)
  {
    v17 = *(a1 + 493);
    sub_8568(a1, a2);
    v18 = qword_2C138;
    if (v17 == 1)
    {
      a1 = os_log_type_enabled(qword_2C138, OS_LOG_TYPE_INFO);
      if (a1)
      {
        v47 = 136315394;
        v48 = "USBMIDIDevice.cpp";
        v49 = 1024;
        v50 = 999;
        v17 = 1;
        _os_log_impl(&dword_0, v18, OS_LOG_TYPE_INFO, "%25s:%-5d * * * [AQAMIDI] Protocol negotiation skipped because of defaults. Forcing MIDI-1UP as default protocol. * * *", &v47, 0x12u);
      }
    }

    else
    {
      a1 = os_log_type_enabled(qword_2C138, OS_LOG_TYPE_ERROR);
      if (a1)
      {
        v47 = 136315394;
        v48 = "USBMIDIDevice.cpp";
        v49 = 1024;
        v50 = 1001;
        _os_log_impl(&dword_0, v18, OS_LOG_TYPE_ERROR, "%25s:%-5d * * * [AQAMIDI] Protocol negotiation timed out. Using MIDI-1UP as default protocol. * * *", &v47, 0x12u);
      }

      v17 = 1;
    }
  }

  sub_8568(a1, a2);
  v22 = qword_2C138;
  v23 = os_log_type_enabled(qword_2C138, OS_LOG_TYPE_INFO);
  if (v23)
  {
    v47 = 136315906;
    v48 = "USBMIDIDevice.cpp";
    v49 = 1024;
    v50 = 1004;
    v51 = 1024;
    *v52 = v5;
    *&v52[4] = 1024;
    *&v52[6] = a3;
    _os_log_impl(&dword_0, v22, OS_LOG_TYPE_INFO, "%25s:%-5d [*] USBMIDIDevice::NegotiationCompleteForEndpoints(inEP: 0x%x, outEP: 0x%x)", &v47, 0x1Eu);
  }

  v25 = *(v6 + 136);
  v26 = *(v6 + 144);
  v27 = v25;
  if (v25 != v26)
  {
    v27 = *(v6 + 136);
    while (1)
    {
      v28 = v27[1] ? *v27 | 0x80 : *v27;
      if (v5 == v28)
      {
        break;
      }

      v27 += 8;
      if (v27 == v26)
      {
        goto LABEL_54;
      }
    }
  }

  if (v26 != v27)
  {
    v27[7] = v17;
    v30 = *(v6 + 160);
    v29 = *(v6 + 168);
    v31 = v30;
    if (v30 != v29)
    {
      while (1)
      {
        v32 = v31[1] ? *v31 | 0x80 : *v31;
        if (a3 == v32)
        {
          break;
        }

        v31 += 8;
        if (v31 == v29)
        {
          goto LABEL_54;
        }
      }
    }

    if (v29 != v31)
    {
      v31[7] = v17;
      while (v25 != v26)
      {
        if (v25[7] == 255)
        {
          v34 = 1;
          goto LABEL_53;
        }

        v25 += 8;
      }

      if (v30 == v29)
      {
        v34 = 0;
      }

      else
      {
        v33 = v30 + 8;
        do
        {
          v34 = *(v33 - 1) == 255;
          v35 = *(v33 - 1) == 255 || v33 == v29;
          v33 += 8;
        }

        while (!v35);
      }

LABEL_53:
      *(v6 + 188) = v34;
    }
  }

LABEL_54:
  if ((*(v6 + 188) & 1) == 0)
  {
    sub_8568(v23, v24);
    v36 = qword_2C138;
    v37 = os_log_type_enabled(qword_2C138, OS_LOG_TYPE_INFO);
    if (v37)
    {
      v47 = 136315394;
      v48 = "USBMIDIDevice.cpp";
      v49 = 1024;
      v50 = 1019;
      _os_log_impl(&dword_0, v36, OS_LOG_TYPE_INFO, "%25s:%-5d ============================================", &v47, 0x12u);
    }

    sub_8568(v37, v38);
    v39 = qword_2C138;
    v40 = os_log_type_enabled(qword_2C138, OS_LOG_TYPE_INFO);
    if (v40)
    {
      v42 = "MIDI-1UP";
      v48 = "USBMIDIDevice.cpp";
      v47 = 136315650;
      if (v17 == 2)
      {
        v42 = "MIDI 2.0";
      }

      v49 = 1024;
      v50 = 1020;
      v51 = 2080;
      *v52 = v42;
      _os_log_impl(&dword_0, v39, OS_LOG_TYPE_INFO, "%25s:%-5d == [AQAMIDI] Protocol changed to %s ==", &v47, 0x1Cu);
    }

    sub_8568(v40, v41);
    v43 = qword_2C138;
    if (os_log_type_enabled(qword_2C138, OS_LOG_TYPE_INFO))
    {
      v47 = 136315394;
      v48 = "USBMIDIDevice.cpp";
      v49 = 1024;
      v50 = 1021;
      _os_log_impl(&dword_0, v43, OS_LOG_TYPE_INFO, "%25s:%-5d ============================================", &v47, 0x12u);
    }

    v44 = (*(*v6 + 48))(v6);
    if ((v44 & 1) == 0)
    {
      sub_8568(v44, v45);
      v46 = qword_2C138;
      if (os_log_type_enabled(qword_2C138, OS_LOG_TYPE_ERROR))
      {
        v47 = 136315394;
        v48 = "USBMIDIDevice.cpp";
        v49 = 1024;
        v50 = 1024;
        v16 = "%25s:%-5d [!] USBMIDIDevice::NegotiationCompleteForEndpoint() - unable to start I/O";
        v19 = v46;
        v20 = OS_LOG_TYPE_ERROR;
        v21 = 18;
LABEL_16:
        _os_log_impl(&dword_0, v19, v20, v16, &v47, v21);
      }
    }
  }
}

uint64_t sub_9C00(uint64_t a1, uint64_t a2)
{
  *(a1 + 491) = 0;
  sub_8568(a1, a2);
  v3 = qword_2C138;
  if (os_log_type_enabled(qword_2C138, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    *&buf[4] = "USBMIDIDevice.cpp";
    v48 = 1024;
    v49 = 248;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "%25s:%-5d * * * [AQAMIDI] MIDI protocol negotiation failed. Falling back to USB MIDI 1.0 configuration * * *", buf, 0x12u);
  }

  NumberOfEntities = MIDIDeviceGetNumberOfEntities(*(a1 + 8));
  v6 = (NumberOfEntities - 1);
  if (NumberOfEntities - 1 >= 0)
  {
    do
    {
      Entity = MIDIDeviceGetEntity(*(a1 + 8), v6);
      NumberOfEntities = MIDIDeviceRemoveEntity(*(a1 + 8), Entity);
      --v6;
    }

    while (v6 != -1);
  }

  sub_8568(NumberOfEntities, v5);
  v8 = qword_2C138;
  if (os_log_type_enabled(qword_2C138, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    *&buf[4] = "USBMIDIDevice.cpp";
    v48 = 1024;
    v49 = 256;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "%25s:%-5d [+] USBMIDIDevice::InitializeFallback() - probing device", buf, 0x12u);
  }

  sub_164B0(*(a1 + 88), *(a1 + 96), buf);
  if (*buf)
  {
    sub_8568(v9, v10);
    v11 = qword_2C138;
    if (os_log_type_enabled(qword_2C138, OS_LOG_TYPE_INFO))
    {
      *v46 = 136315394;
      *&v46[4] = "USBMIDIDevice.cpp";
      *&v46[12] = 1024;
      *&v46[14] = 260;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, "%25s:%-5d      Creating fallback port map list", v46, 0x12u);
    }

    sub_16808(1, buf, v46);
    sub_8568(v12, v13);
    v14 = qword_2C138;
    if (os_log_type_enabled(qword_2C138, OS_LOG_TYPE_INFO))
    {
      *v40 = 136315394;
      v41 = "USBMIDIDevice.cpp";
      v42 = 1024;
      v43 = 264;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_INFO, "%25s:%-5d      Setting alternate interface to 0", v40, 0x12u);
    }

    v15 = (*(**(a1 + 104) + 176))(*(a1 + 104), 0);
    v17 = *(a1 + 160);
    v18 = *(a1 + 168);
    while (v17 != v18)
    {
      *(v17 + 7) = 0;
      v15 = (*(**(a1 + 104) + 224))(*(a1 + 104), *(v17 + 6));
      v17 += 8;
    }

    sub_8568(v15, v16);
    v19 = qword_2C138;
    if (os_log_type_enabled(qword_2C138, OS_LOG_TYPE_INFO))
    {
      v20 = (*(a1 + 144) - *(a1 + 136)) >> 3;
      *v40 = 136315650;
      v41 = "USBMIDIDevice.cpp";
      v42 = 1024;
      v43 = 271;
      v44 = 1024;
      v45 = v20;
      _os_log_impl(&dword_0, v19, OS_LOG_TYPE_INFO, "%25s:%-5d      Priming %d input pipe(s)", v40, 0x18u);
    }

    v21 = *(a1 + 136);
    v22 = *(a1 + 144);
    if (v21 != v22)
    {
      v23 = 0;
      do
      {
        v24 = 0;
        *(v21 + 7) = 0;
        v25 = 1;
        do
        {
          v26 = v25;
          v27 = v24 | (2 * v23);
          v28 = *(a1 + 272);
          if (v27 >= (*(a1 + 280) - v28) >> 4)
          {
            sub_E8C0();
          }

          v29 = *(v28 + 16 * v27);
          *(v29 + 64) = *(v21 + 6);
          (*(**(a1 + 104) + 224))(*(a1 + 104));
          (*(*a1 + 64))(a1, v29);
          v25 = 0;
          v24 = 1;
        }

        while ((v26 & 1) != 0);
        ++v23;
        v21 += 8;
      }

      while (v21 != v22);
    }

    v31 = *(a1 + 88);
    v30 = *(a1 + 96);
    v32 = (*(**(a1 + 80) + 112))(*(a1 + 80));
    v33 = (*(**(a1 + 80) + 96))(*(a1 + 80));
    v34 = (*(**(a1 + 80) + 104))(*(a1 + 80));
    v35 = sub_166E4(v31, v30, v32, v33, v34, *(a1 + 8), v46, v50, v51, v52);
    LODWORD(v31) = v35;
    sub_8568(v35, v36);
    v37 = qword_2C138;
    if (v31)
    {
      if (os_log_type_enabled(qword_2C138, OS_LOG_TYPE_INFO))
      {
        *v40 = 136315394;
        v41 = "USBMIDIDevice.cpp";
        v42 = 1024;
        v43 = 287;
        _os_log_impl(&dword_0, v37, OS_LOG_TYPE_INFO, "%25s:%-5d [-] USBMIDIDevice::InitializeFallback() - device configured. Starting I/O.", v40, 0x12u);
      }

      v38 = (*(*a1 + 48))(a1);
    }

    else
    {
      if (os_log_type_enabled(qword_2C138, OS_LOG_TYPE_ERROR))
      {
        *v40 = 136315394;
        v41 = "USBMIDIDevice.cpp";
        v42 = 1024;
        v43 = 290;
        _os_log_impl(&dword_0, v37, OS_LOG_TYPE_ERROR, "%25s:%-5d [!] USBMIDIDevice::InitializeFallback() - could not configure device", v40, 0x12u);
      }

      v38 = 0;
    }

    if (*v46)
    {
      *&v46[8] = *v46;
      operator delete(*v46);
    }
  }

  else
  {
    v38 = 0;
  }

  if (__p)
  {
    v54 = __p;
    operator delete(__p);
  }

  if (v52[0])
  {
    v52[1] = v52[0];
    operator delete(v52[0]);
  }

  if (v51[0])
  {
    v51[1] = v51[0];
    operator delete(v51[0]);
  }

  if (v50[0])
  {
    v50[1] = v50[0];
    operator delete(v50[0]);
  }

  return v38;
}

void sub_A1D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  if (__p)
  {
    operator delete(__p);
  }

  sub_E968(va);
  _Unwind_Resume(a1);
}

void sub_A218(uint64_t a1)
{
  v3 = MIDIGetDriverIORunLoop();
  v4 = *(a1 + 104);
  if (v4)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v4 = (*(*v4 + 40))(v4);
    if (v4)
    {
      v6 = v4;
      v4 = CFRunLoopContainsSource(v3, v4, kCFRunLoopDefaultMode);
      if (v4)
      {
        CFRunLoopRemoveSource(v3, v6, kCFRunLoopDefaultMode);
      }
    }
  }

  sub_8568(v4, v2);
  v7 = qword_2C138;
  if (os_log_type_enabled(qword_2C138, OS_LOG_TYPE_INFO))
  {
    v8 = 136315650;
    v9 = "USBMIDIDevice.cpp";
    v10 = 1024;
    v11 = 326;
    v12 = 2048;
    v13 = a1;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "%25s:%-5d [*] USBMIDIDevice(%p)::UnregisterAsyncSource()", &v8, 0x1Cu);
  }
}

uint64_t sub_A344(uint64_t a1, uint64_t a2)
{
  sub_8568(a1, a2);
  v3 = qword_2C138;
  if (os_log_type_enabled(qword_2C138, OS_LOG_TYPE_INFO))
  {
    v12.protocol = 136315650;
    *&v12.numPackets = "USBMIDIDevice.cpp";
    WORD2(v12.packet[0].timeStamp) = 1024;
    *(&v12.packet[0].timeStamp + 6) = 331;
    HIWORD(v12.packet[0].wordCount) = 2048;
    *v12.packet[0].words = a1;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "%25s:%-5d [+] USBMIDIDevice(%p)::StartIO()", &v12, 0x1Cu);
  }

  *(a1 + 480) = MIDITimerTaskCreate();
  (*(*a1 + 24))(a1, 1);
  if (*(a1 + 491))
  {
    v4 = MIDIEventListInit(&v12, kMIDIProtocol_2_0);
    v12.numPackets = 1;
    v4->timeStamp = 0;
    *&v4->wordCount = 0x3000000000000002;
    v4->words[1] = 0;
    v5 = (*(*a1 + 96))(a1, &v12, 0);
  }

  else
  {
    v12.protocol = kMIDIProtocol_1_0;
    *&v12.numPackets = 0;
    HIDWORD(v12.packet[0].timeStamp) = -135266302;
    v5 = (*(*a1 + 88))(a1, &v12, 0);
  }

  sub_8568(v5, v6);
  v7 = qword_2C138;
  if (os_log_type_enabled(qword_2C138, OS_LOG_TYPE_INFO))
  {
    v12.protocol = 136315394;
    *&v12.numPackets = "USBMIDIDevice.cpp";
    WORD2(v12.packet[0].timeStamp) = 1024;
    *(&v12.packet[0].timeStamp + 6) = 357;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "%25s:%-5d      bringing initialized device online...", &v12, 0x12u);
  }

  v8 = MIDIObjectSetIntegerProperty(*(a1 + 8), kMIDIPropertyOffline, 0);
  sub_8568(v8, v9);
  v10 = qword_2C138;
  if (os_log_type_enabled(qword_2C138, OS_LOG_TYPE_INFO))
  {
    v12.protocol = 136315650;
    *&v12.numPackets = "USBMIDIDevice.cpp";
    WORD2(v12.packet[0].timeStamp) = 1024;
    *(&v12.packet[0].timeStamp + 6) = 360;
    HIWORD(v12.packet[0].wordCount) = 2048;
    *v12.packet[0].words = a1;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "%25s:%-5d [-] USBMIDIDevice(%p)::StartIO() = true", &v12, 0x1Cu);
  }

  return 1;
}

uint64_t sub_A5E8(uint64_t a1)
{
  v2 = a1 + 344;
  result = (*(*(a1 + 344) + 16))(a1 + 344);
  v4 = result;
  *(a1 + 488) = 0;
  if ((*(a1 + 184) & 1) == 0)
  {
    result = (*(*a1 + 72))(a1);
  }

  if (v4)
  {
    return (*(*v2 + 24))(v2);
  }

  return result;
}

void *sub_A6C8(void *a1, uint64_t a2)
{
  *a1 = off_28848;
  if ((a1[23] & 1) == 0)
  {
    sub_8568(a1, a2);
    v3 = qword_2C138;
    if (os_log_type_enabled(qword_2C138, OS_LOG_TYPE_INFO))
    {
      v4 = *(a1 + 185);
      v5 = "Input";
      *&v38[4] = "USBMIDIDevice.cpp";
      v6 = *(a1 + 186);
      v7 = v4 == 0;
      v39 = 1024;
      v40 = 369;
      v8 = "Output";
      if (v7)
      {
        v5 = "N/A";
      }

      *v38 = 136316162;
      v41 = 2048;
      if (!v6)
      {
        v8 = "N/A";
      }

      v42 = a1;
      v43 = 2080;
      v44 = v5;
      v45 = 2080;
      v46 = v8;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "%25s:%-5d [+] USBMIDIDevice(%p)::~USBMIDIDevice() - Halting I/O chain for: %s and %s", v38, 0x30u);
    }

    (*(*a1 + 24))(a1, 0);
    if (((*(*a1 + 112))(a1) & 1) != 0 || (v9 = (*(*a1 + 104))(a1), v9))
    {
      v9 = (*(*a1[10] + 160))(a1[10], a1);
    }

    *(a1 + 184) = 1;
    v11 = a1[20];
    v12 = a1[21];
    while (v11 != v12)
    {
      v9 = (*(*a1[13] + 224))(a1[13], *(v11 + 6));
      v11 += 8;
    }

    v13 = a1[17];
    v14 = a1[18];
    while (v13 != v14)
    {
      v9 = (*(*a1[13] + 224))(a1[13], *(v13 + 6));
      v13 += 8;
    }

    v15 = 199;
    do
    {
      v17 = a1[34];
      v16 = a1[35];
      if (v17 == v16)
      {
        v19 = 0;
      }

      else
      {
        v18 = v17 + 16;
        do
        {
          v19 = *(*(v18 - 16) + 44);
          if (v19)
          {
            break;
          }

          v7 = v18 == v16;
          v18 += 16;
        }

        while (!v7);
      }

      for (i = a1[37]; i != a1[38]; i += 16)
      {
        if (*(*i + 44))
        {
          v21 = 1;
          goto LABEL_33;
        }
      }

      v21 = 0;
      v22 = 0;
      if (!v19)
      {
        break;
      }

LABEL_33:
      v9 = usleep(0x2710u);
      v22 = v19;
    }

    while (v15-- >= 2);
    if ((v21 & 1) != 0 || v22)
    {
      sub_8568(v9, v10);
      v24 = qword_2C138;
      if (os_log_type_enabled(qword_2C138, OS_LOG_TYPE_ERROR))
      {
        v25 = "complete";
        *&v38[4] = "USBMIDIDevice.cpp";
        v39 = 1024;
        v40 = 407;
        v41 = 2048;
        if (v22)
        {
          v26 = "pending";
        }

        else
        {
          v26 = "complete";
        }

        *v38 = 136316162;
        v42 = a1;
        if (v21)
        {
          v25 = "pending";
        }

        v43 = 2080;
        v44 = v26;
        v45 = 2080;
        v46 = v25;
        _os_log_impl(&dword_0, v24, OS_LOG_TYPE_ERROR, "%25s:%-5d [!] USBMIDIDevice(%p)::~USBMIDIDevice() Input:%s Output:%s", v38, 0x30u);
      }
    }

    sub_AC2C(a1 + 34);
    sub_AC2C(a1 + 37);
    (*(*a1 + 40))(a1);
    if (a1[60])
    {
      MIDITimerTaskDispose();
    }
  }

  if (a1[13])
  {
    v27 = a1[12];
    if (v27)
    {
      sub_74BC(v27);
      operator delete();
    }
  }

  v28 = a1[11];
  if (v28)
  {
    sub_5FF4(v28);
    operator delete();
  }

  sub_8568(0, a2);
  v29 = qword_2C138;
  if (os_log_type_enabled(qword_2C138, OS_LOG_TYPE_INFO))
  {
    *v38 = 136315650;
    *&v38[4] = "USBMIDIDevice.cpp";
    v39 = 1024;
    v40 = 431;
    v41 = 2048;
    v42 = a1;
    _os_log_impl(&dword_0, v29, OS_LOG_TYPE_INFO, "%25s:%-5d [-] USBMIDIDevice(%p)::~USBMIDIDevice()", v38, 0x1Cu);
  }

  *v38 = a1 + 57;
  sub_E4FC(v38);
  sub_E5F0(a1 + 54);
  sub_1954((a1 + 43));
  *v38 = a1 + 40;
  sub_E6A4(v38);
  *v38 = a1 + 37;
  sub_E6A4(v38);
  *v38 = a1 + 34;
  sub_E6A4(v38);
  v30 = a1[33];
  if (v30)
  {
    sub_43D0(v30);
  }

  v31 = a1[31];
  if (v31)
  {
    sub_43D0(v31);
  }

  v32 = a1[29];
  if (v32)
  {
    sub_43D0(v32);
  }

  v33 = a1[24];
  if (v33)
  {
    a1[25] = v33;
    operator delete(v33);
  }

  v34 = a1[20];
  if (v34)
  {
    a1[21] = v34;
    operator delete(v34);
  }

  v35 = a1[17];
  if (v35)
  {
    a1[18] = v35;
    operator delete(v35);
  }

  *v38 = a1 + 14;
  sub_E6A4(v38);
  v36 = a1[9];
  if (v36)
  {
    std::__shared_weak_count::__release_weak(v36);
  }

  sub_4B70(a1);
  return a1;
}

void sub_AC0C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1298(a1);
  }

  _Unwind_Resume(a1);
}

void sub_AC2C(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 16)
  {
    v4 = *(i - 8);
    if (v4)
    {
      sub_43D0(v4);
    }
  }

  a1[1] = v2;
}

void sub_AC7C(void *a1, uint64_t a2)
{
  sub_A6C8(a1, a2);

  operator delete();
}

void sub_ACB4(uint64_t a1, int a2)
{
  if (*(a1 + 491))
  {
    *(a1 + 12) = MIDIDeviceGetNumberOfEntities(*(a1 + 8));
    v4 = *(a1 + 8);

    sub_45F4(a2, a1, v4, (a1 + 192), (a1 + 16), a1 + 40);
  }

  else
  {

    sub_4BD8(a1, a2);
  }
}

void sub_AD50(uint64_t a1, uint64_t a2, unsigned __int8 **a3, void *a4, void *a5)
{
  v42 = 0;
  if (a1 && a2)
  {
    v9 = (*(*a2 + 152))(a2, &v42);
    v10 = v9;
    sub_8568(v9, v11);
    v12 = qword_2C138;
    if (v10)
    {
      sub_1FA28(qword_2C138, v10);
    }

    else
    {
      if (os_log_type_enabled(qword_2C138, OS_LOG_TYPE_INFO))
      {
        *buf = 136315650;
        v44 = "USBMIDIDevice.cpp";
        v45 = 1024;
        v46 = 464;
        v47 = 1024;
        v48 = v42;
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_INFO, "%25s:%-5d [*] USBMIDIDevice::FindPipes() -- interface has %d endpoints", buf, 0x18u);
      }

      if (v42)
      {
        v13 = 1;
        v14 = 1;
        while (1)
        {
          WORD2(v41) = 0;
          BYTE6(v41) = -1;
          v15 = sub_775C(a1, v13, &v41);
          v16 = v15;
          sub_8568(v15, v17);
          v18 = qword_2C138;
          v19 = os_log_type_enabled(qword_2C138, OS_LOG_TYPE_INFO);
          if (v16)
          {
            break;
          }

          if (v19)
          {
            *buf = 136315906;
            v44 = "USBMIDIDevice.cpp";
            v45 = 1024;
            v46 = 469;
            v47 = 1024;
            v48 = v41;
            v49 = 1024;
            v50 = BYTE1(v41);
            _os_log_impl(&dword_0, v18, OS_LOG_TYPE_INFO, "%25s:%-5d      Got pipe 0x%x direction %d", buf, 0x1Eu);
          }

          v21 = v41;
          if (BYTE1(v41))
          {
            v21 = v41 | 0x80;
          }

          for (i = *a3; ; i += 8)
          {
            if (i == a3[1])
            {
              HIBYTE(v41) = 0;
              goto LABEL_19;
            }

            if (i[2] == v21 || i[3] == v21)
            {
              break;
            }
          }

          v34 = i[4];
          HIBYTE(v41) = v34;
          if (v34 <= 1)
          {
            if (v34)
            {
              sub_8568(v19, v20);
              v35 = qword_2C138;
              v19 = os_log_type_enabled(qword_2C138, OS_LOG_TYPE_INFO);
              if (v19)
              {
                if (BYTE1(v41))
                {
                  v36 = v41 | 0x80;
                }

                else
                {
                  v36 = v41;
                }

                *buf = 136316162;
                v44 = "USBMIDIDevice.cpp";
                v45 = 1024;
                v46 = 474;
                v47 = 1024;
                v48 = v13;
                v49 = 1024;
                v50 = v41;
                v51 = 1024;
                v52 = v36;
                v25 = v35;
                v26 = "%25s:%-5d      Found pipeIndex %d, pipeNum %d [ep 0x%00x] (MIDI-1UP)";
LABEL_24:
                _os_log_impl(&dword_0, v25, OS_LOG_TYPE_INFO, v26, buf, 0x24u);
                goto LABEL_25;
              }

              goto LABEL_25;
            }

LABEL_19:
            sub_8568(v19, v20);
            v23 = qword_2C138;
            v19 = os_log_type_enabled(qword_2C138, OS_LOG_TYPE_INFO);
            if (!v19)
            {
              goto LABEL_25;
            }

            if (BYTE1(v41))
            {
              v24 = v41 | 0x80;
            }

            else
            {
              v24 = v41;
            }

            *buf = 136316162;
            v44 = "USBMIDIDevice.cpp";
            v45 = 1024;
            v46 = 472;
            v47 = 1024;
            v48 = v13;
            v49 = 1024;
            v50 = v41;
            v51 = 1024;
            v52 = v24;
            v25 = v23;
            v26 = "%25s:%-5d      Found pipeIndex %d, pipeNum %d [ep 0x%00x] (legacy MIDI 1.0)";
            goto LABEL_24;
          }

          if (v34 == 2)
          {
            sub_8568(v19, v20);
            v39 = qword_2C138;
            v19 = os_log_type_enabled(qword_2C138, OS_LOG_TYPE_INFO);
            if (v19)
            {
              if (BYTE1(v41))
              {
                v40 = v41 | 0x80;
              }

              else
              {
                v40 = v41;
              }

              *buf = 136316162;
              v44 = "USBMIDIDevice.cpp";
              v45 = 1024;
              v46 = 476;
              v47 = 1024;
              v48 = v13;
              v49 = 1024;
              v50 = v41;
              v51 = 1024;
              v52 = v40;
              v25 = v39;
              v26 = "%25s:%-5d      Found pipeIndex %d, pipeNum %d [ep 0x%00x] (MIDI 2.0)";
              goto LABEL_24;
            }
          }

          else if (v34 == 255)
          {
            sub_8568(v19, v20);
            v37 = qword_2C138;
            v19 = os_log_type_enabled(qword_2C138, OS_LOG_TYPE_INFO);
            if (v19)
            {
              if (BYTE1(v41))
              {
                v38 = v41 | 0x80;
              }

              else
              {
                v38 = v41;
              }

              *buf = 136316162;
              v44 = "USBMIDIDevice.cpp";
              v45 = 1024;
              v46 = 478;
              v47 = 1024;
              v48 = v13;
              v49 = 1024;
              v50 = v41;
              v51 = 1024;
              v52 = v38;
              v25 = v37;
              v26 = "%25s:%-5d      Found pipeIndex %d, pipeNum %d [ep 0x%00x] (Use MIDI-CI to discover protocol)";
              goto LABEL_24;
            }
          }

LABEL_25:
          if (BYTE1(v41) == 1)
          {
            v29 = a4[1];
            if (v29 >= a4[2])
            {
              v30 = sub_E9CC(a4, &v41);
            }

            else
            {
              *v29 = v41;
              v30 = (v29 + 1);
            }

            a4[1] = v30;
            goto LABEL_45;
          }

          if (!BYTE1(v41))
          {
            v27 = a5[1];
            if (v27 >= a5[2])
            {
              v28 = sub_E9CC(a5, &v41);
            }

            else
            {
              *v27 = v41;
              v28 = (v27 + 1);
            }

            a5[1] = v28;
            goto LABEL_45;
          }

          sub_8568(v19, v20);
          v31 = qword_2C138;
          if (os_log_type_enabled(qword_2C138, OS_LOG_TYPE_INFO))
          {
            *buf = 136315906;
            v44 = "USBMIDIDevice.cpp";
            v45 = 1024;
            v46 = 487;
            v47 = 1024;
            v48 = v13;
            v49 = 1024;
            v50 = BYTE1(v41);
            v32 = v31;
            v33 = "%25s:%-5d [?]  Unknown direction for endpoint %d: %d";
LABEL_33:
            _os_log_impl(&dword_0, v32, OS_LOG_TYPE_INFO, v33, buf, 0x1Eu);
          }

LABEL_45:
          v13 = ++v14;
          if (v14 > v42)
          {
            return;
          }
        }

        if (!v19)
        {
          goto LABEL_45;
        }

        *buf = 136315906;
        v44 = "USBMIDIDevice.cpp";
        v45 = 1024;
        v46 = 491;
        v47 = 1024;
        v48 = v13;
        v49 = 1024;
        v50 = v16;
        v32 = v18;
        v33 = "%25s:%-5d [?]  Couldn't get pipe for endpoint %d (0x%x)";
        goto LABEL_33;
      }
    }
  }
}

uint64_t sub_B30C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = mach_absolute_time();
  v7 = a1[10];
  v8 = *(a2 + 24);
  v9 = *(a2 + 64);
  v10 = sub_B3B4(a1, v9);
  v11 = *(*v7 + 168);

  return v11(v7, a1, v6, v8, a3, v9, v10);
}

uint64_t sub_B3B4(void *a1, int a2)
{
  for (i = a1[17]; i != a1[18]; ++i)
  {
    if (a2 == BYTE6(*i))
    {
      return HIBYTE(*i);
    }
  }

  for (j = a1[20]; ; ++j)
  {
    if (j == a1[21])
    {
      return 1;
    }

    if (a2 == BYTE6(*j))
    {
      break;
    }
  }

  return HIBYTE(*j);
}

uint64_t sub_B414(void *a1, int *a2, uint64_t a3)
{
  v3 = a3;
  result = (*(*a1 + 112))(a1);
  if (result)
  {
    v21 = (*(a1[43] + 16))();
    result = sub_B74C(a1, v3);
    v7 = result;
    v8 = a1[24];
    v9 = v3;
    if (v3 < ((a1[25] - v8) >> 3))
    {
      v9 = *(v8 + 8 * v3 + 1);
    }

    if (*a2 >= 1)
    {
      v24 = 0;
      v23 = 0u;
      memset(__dst, 0, sizeof(__dst));
      v10 = *(a2 + 6);
      if (v10 > 0x40)
      {
        v11 = malloc_type_malloc(*(a2 + 6), 0x100004077774924uLL);
        memcpy(v11, a2 + 14, v10);
      }

      else
      {
        memcpy(__dst, a2 + 14, *(a2 + 6));
      }

      v23 = __PAIR64__(v9, v3);
      LOBYTE(v24) = *(v7 + 6);
      operator new();
    }

    v13 = a1[20];
    v12 = a1[21];
    v14 = v12 - v13;
    if (v12 == v13)
    {
      goto LABEL_15;
    }

    v15 = 0;
    v16 = v14 >> 3;
    if (v16 <= 1)
    {
      v16 = 1;
    }

    v17 = (v13 + 6);
    while (1)
    {
      v18 = *v17;
      v17 += 8;
      if (v18 == *(result + 6))
      {
        break;
      }

      if (v16 == ++v15)
      {
        goto LABEL_15;
      }
    }

    if (v15 < 0)
    {
LABEL_15:
      __assert_rtn("Send", "USBMIDIDevice.cpp", 555, "currentBufferIndex >= 0");
    }

    v19 = a1[40];
    if (v15 >= ((a1[41] - v19) >> 4))
    {
      sub_E8C0();
    }

    v20 = *(v19 + 16 * v15);
    if (v20 && (*(v20 + 44) & 1) == 0 && !*(a1 + 488))
    {
      *(a1 + 488) = 1;
      mach_absolute_time();
      result = MIDITimerTaskSetNextWakeTime();
    }

    if (v21)
    {
      return (*(a1[43] + 24))(a1 + 43);
    }
  }

  return result;
}

void sub_B71C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a2)
  {
    sub_1298(exception_object);
  }

  _Unwind_Resume(exception_object);
}

unsigned __int8 *sub_B74C(void *a1, int a2)
{
  v2 = a1[24];
  if (((a1[25] - v2) >> 3) > a2 && (v3 = v2 + 8 * a2, v4 = *(v3 + 3), *(v3 + 3)) && (v5 = a1[20], (v6 = a1[21] - v5) != 0))
  {
    v7 = v6 >> 3;
    if (v7 <= 1)
    {
      v7 = 1;
    }

    while (*v5 != v4)
    {
      v5 += 8;
      if (!--v7)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
LABEL_8:
    v5 = a1[20];
    if (a1[21] == v5)
    {
      sub_E8C0();
    }
  }

  return v5;
}

void sub_B7C4(uint64_t a1, int *a2, uint64_t a3)
{
  v3 = a3;
  if (!(*(*a1 + 112))(a1))
  {
    return;
  }

  v6 = sub_B74C(a1, v3);
  v7 = v6[7];
  if (!v6[7])
  {
    if (v3 == 255)
    {
      return;
    }

    v38 = *(a1 + 224);
    if (!v38)
    {
      return;
    }

    goto LABEL_45;
  }

  v8 = *a2;
  if (v7 != 2 && v8 == 2)
  {
    v38 = *(a1 + 240);
    if (!v38)
    {
      return;
    }

LABEL_45:
    *(a1 + 220) = v3;
    v39 = *(*v38 + 16);

    v39();
    return;
  }

  if (v7 == 2 && v8 == 1)
  {
    v38 = *(a1 + 256);
    if (!v38)
    {
      return;
    }

    goto LABEL_45;
  }

  v11 = v6;
  if (v3 != 255)
  {
    v12 = a2[1];
    if (v12)
    {
      v13 = a2 + 2;
      do
      {
        v14 = v13 + 3;
        v15 = v13[2];
        if (v15)
        {
          v16 = &v14[v15];
          v17 = v13 + 3;
          do
          {
            v18 = *v17;
            v19 = v18 >> 28;
            if (*v17 >> 28)
            {
              v20 = v19 == 15;
            }

            else
            {
              v20 = 1;
            }

            if (!v20)
            {
              *v17 = v18 & 0xF0FFFFFF | ((v3 & 0xF) << 24);
            }

            v17 += byte_21DC0[v19];
          }

          while (v17 != v16);
          v21 = v13[2];
        }

        else
        {
          v21 = 0;
        }

        v13 = &v14[v21];
        --v12;
      }

      while (v12);
    }
  }

  v22 = a1 + 344;
  v23 = (*(*(a1 + 344) + 16))(a1 + 344);
  v25 = v23;
  v26 = *(a1 + 192);
  v27 = v3;
  if (v3 < ((*(a1 + 200) - v26) >> 3))
  {
    v27 = *(v26 + 8 * v3 + 1);
  }

  v28 = v11[6];
  v29 = a2[1];
  if (v29)
  {
    v30 = (a2 + 2);
    do
    {
      if (!v30[2])
      {
        break;
      }

      sub_EC1C(buf, v30, v3, v27, v28);
      sub_EBB0((a1 + 456), buf);
      sub_F12C(*(a1 + 464) - 296);
      v23 = sub_E580(buf);
      v30 += v30[2] + 3;
      --v29;
    }

    while (v29);
    v28 = v11[6];
  }

  v32 = *(a1 + 160);
  v31 = *(a1 + 168);
  v33 = v31 - v32;
  if (v31 == v32)
  {
    goto LABEL_38;
  }

  v34 = 0;
  v35 = v33 >> 3;
  if (v35 <= 1)
  {
    v35 = 1;
  }

  v36 = (v32 + 6);
  while (1)
  {
    v37 = *v36;
    v36 += 8;
    if (v37 == v28)
    {
      break;
    }

    if (v35 == ++v34)
    {
      goto LABEL_38;
    }
  }

  if (v34 < 0)
  {
LABEL_38:
    __assert_rtn("SendPackets", "USBMIDIDevice.cpp", 626, "currentBufferIndex >= 0");
  }

  v40 = *(a1 + 320);
  if (v34 >= ((*(a1 + 328) - v40) >> 4))
  {
    sub_E8C0();
  }

  v41 = *(v40 + 16 * v34);
  if (v41)
  {
    if ((*(v41 + 44) & 1) == 0 && !*(a1 + 488))
    {
      *(a1 + 488) = 1;
      mach_absolute_time();
      MIDITimerTaskSetNextWakeTime();
    }
  }

  else
  {
    sub_8568(v23, v24);
    v42 = qword_2C138;
    if (os_log_type_enabled(qword_2C138, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v44 = "USBMIDIDevice.cpp";
      v45 = 1024;
      v46 = 629;
      _os_log_impl(&dword_0, v42, OS_LOG_TYPE_ERROR, "%25s:%-5d [!] USBMIDIDevice::SendPackets() - buffer not found", buf, 0x12u);
    }
  }

  if (v25)
  {
    (*(*v22 + 24))(v22);
  }
}

void sub_BBC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a2)
  {
    sub_1298(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_BBFC(uint64_t a1, uint64_t a2)
{
  atomic_fetch_add((a2 + 8), 1u);
  *(a2 + 44) = 1;
  result = (*(**(a1 + 104) + 264))(*(a1 + 104), *(a2 + 64), *(a2 + 24), *(a2 + 40), sub_BCD4, a2);
  if (result == -536854449 || result == -536870163)
  {
    v5 = *(**(a1 + 104) + 264);

    return v5();
  }

  return result;
}

void sub_BCD4(uint64_t a1, int a2, unint64_t a3)
{
  *(a1 + 44) = 0;
  v4 = *(a1 + 56);
  if (!v4 || (v7 = *(a1 + 64), (v8 = std::__shared_weak_count::lock(v4)) == 0))
  {
    v16 = a1;
    sub_BF54(&v16);
    return;
  }

  v10 = v8;
  v11 = *(a1 + 48);
  v16 = a1;
  if (v11 && a2 != -536870165 && (*(v11 + 184) & 1) == 0)
  {
    if (a2)
    {
      if (a2 == -536870163 && !(*(**(v11 + 104) + 224))(*(v11 + 104), v7))
      {
        (*(*v11 + 64))(v11, a1);
      }

      goto LABEL_20;
    }

    *(v11 + 185) = 1;
    if (a3 <= 4)
    {
      if (*(v11 + 188))
      {
LABEL_19:
        (*(*v11 + 64))(v11, a1);
        goto LABEL_20;
      }
    }

    else if (*(v11 + 188))
    {
      v12 = *(a1 + 64);
      v13 = *(v11 + 112);
      v14 = *(v11 + 120);
      if (v13 != v14)
      {
        while (*(*v13 + 46) != v12)
        {
          v13 += 2;
          if (v13 == v14)
          {
            goto LABEL_24;
          }
        }
      }

      if (v14 == v13)
      {
LABEL_24:
        sub_8568(v8, v9);
        v15 = qword_2C138;
        if (os_log_type_enabled(qword_2C138, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v18 = "USBMIDIDevice.cpp";
          v19 = 1024;
          v20 = 694;
          v21 = 1024;
          v22 = v12;
          _os_log_impl(&dword_0, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d [!] No negotiator for pipeIndex %d", buf, 0x18u);
        }
      }

      else
      {
        sub_1B280(*v13, a1, a3);
      }

      goto LABEL_19;
    }

    (*(*v11 + 80))(v11, a1, a3);
    goto LABEL_19;
  }

LABEL_20:
  sub_BF54(&v16);
  sub_43D0(v10);
}

void sub_BF34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_BF54(va);
  sub_43D0(v3);
  _Unwind_Resume(a1);
}

atomic_uint **sub_BF54(atomic_uint **a1)
{
  v2 = *a1;
  if (atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v2 + 16))(v2);
  }

  return a1;
}

void sub_BFB8(uint64_t a1)
{
  if (*(a1 + 491) != 1 || (v2 = *(a1 + 456), v2 == *(a1 + 464)))
  {
    if (!*(a1 + 448))
    {
      return;
    }

    v4 = 0;
    v3 = (*(a1 + 440) + 120);
  }

  else
  {
    v3 = (v2 + 292);
    v4 = 1;
  }

  v5 = *v3;
  v6 = sub_B3B4(a1, *v3);
  v9 = *(a1 + 160);
  v8 = *(a1 + 168);
  v10 = v8 - v9;
  if (v8 == v9)
  {
    goto LABEL_12;
  }

  v11 = 0;
  v12 = v10 >> 3;
  if (v12 <= 1)
  {
    v12 = 1;
  }

  v13 = (v9 + 6);
  while (1)
  {
    v14 = *v13;
    v13 += 8;
    if (v14 == v5)
    {
      break;
    }

    if (v12 == ++v11)
    {
      goto LABEL_12;
    }
  }

  if (v11 < 0)
  {
LABEL_12:
    sub_1FAE0();
  }

  v15 = *(a1 + 320);
  if (v11 >= ((*(a1 + 328) - v15) >> 4))
  {
    sub_E8C0();
  }

  v16 = *(v15 + 16 * v11);
  if (!v16)
  {
    sub_8568(v6, v7);
    v23 = qword_2C138;
    if (!os_log_type_enabled(qword_2C138, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v33 = 136315650;
    v34 = "USBMIDIDevice.cpp";
    v35 = 1024;
    v36 = 723;
    v37 = 1024;
    v38 = v5;
    v24 = "%25s:%-5d [!] USBMIDIDevice::DoWrite() - Buffer not found for pipeIndex = %d";
    v25 = v23;
    v26 = 24;
LABEL_37:
    _os_log_impl(&dword_0, v25, OS_LOG_TYPE_ERROR, v24, &v33, v26);
    return;
  }

  v17 = *(a1 + 80);
  v18 = *(v16 + 24);
  v19 = *(v16 + 40);
  v20 = *v17;
  if (v4)
  {
    v21 = (*(v20 + 184))(v17, a1, a1 + 456, v18, v19, v6);
  }

  else
  {
    v21 = (*(v20 + 176))(v17, a1, a1 + 432, v18, v19, v6);
  }

  if (!v21)
  {
    return;
  }

  v27 = *(a1 + 160);
  v28 = *(a1 + 168);
  if (v27 != v28)
  {
    while (*(v27 + 6) != v5)
    {
      v27 += 8;
      if (v27 == v28)
      {
        goto LABEL_35;
      }
    }
  }

  if (v27 == v28)
  {
LABEL_35:
    sub_8568(v21, v22);
    v32 = qword_2C138;
    if (!os_log_type_enabled(qword_2C138, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v33 = 136315394;
    v34 = "USBMIDIDevice.cpp";
    v35 = 1024;
    v36 = 758;
    v24 = "%25s:%-5d [!] USBMIDIDevice::DoWrite() - Missing pipe for queued element";
    v25 = v32;
    v26 = 18;
    goto LABEL_37;
  }

  atomic_fetch_add((v16 + 8), 1u);
  *(v16 + 44) = 1;
  v29 = (*(**(a1 + 104) + 272))(*(a1 + 104), v5, *(v16 + 24), v21, sub_C310, v16);
  if (v29 == -536854449 || v29 == -536870163)
  {
    v31 = *(**(a1 + 104) + 272);

    v31();
  }
}

void sub_C310(uint64_t a1, int a2)
{
  v3 = *(a1 + 56);
  if (v3 && (v5 = std::__shared_weak_count::lock(v3)) != 0)
  {
    v6 = v5;
    v7 = *(a1 + 48);
    *(a1 + 44) = 0;
    if (v7)
    {
      v8 = (*(*(v7 + 344) + 16))();
      if (a2)
      {
        (*(**(v7 + 104) + 360))(*(v7 + 104), *(a1 + 64));
      }

      else
      {
        *(v7 + 186) = 1;
      }

      if (atomic_fetch_add((a1 + 8), 0xFFFFFFFF) == 1)
      {
        (*(*a1 + 16))(a1);
      }

      if (!a2 && (*(v7 + 184) & 1) == 0)
      {
        (*(*v7 + 72))(v7);
      }

      if (v8 == 1)
      {
        (*(*(v7 + 344) + 24))(v7 + 344);
      }

LABEL_19:

      sub_43D0(v6);
      return;
    }
  }

  else
  {
    v6 = 0;
    *(a1 + 44) = 0;
  }

  if (atomic_fetch_add((a1 + 8), 0xFFFFFFFF) == 1)
  {
    (*(*a1 + 16))(a1);
  }

  if (v6)
  {
    goto LABEL_19;
  }
}

void sub_C500(uint64_t a1, uint64_t a2)
{
  v24 = a2;
  sub_8568(a1, a2);
  v3 = qword_2C138;
  if (os_log_type_enabled(qword_2C138, OS_LOG_TYPE_DEBUG))
  {
    v4 = "false";
    *buf = 136315650;
    v27 = "USBMIDIDevice.cpp";
    if (v24)
    {
      v4 = "true";
    }

    v28 = 1024;
    v29 = 897;
    v30 = 2080;
    *v31 = v4;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEBUG, "%25s:%-5d [+] USBMIDIDevice::ReconstructPortMapList(forUMP = %s)", buf, 0x1Cu);
  }

  *(a1 + 200) = *(a1 + 192);
  NumberOfEntities = MIDIDeviceGetNumberOfEntities(*(a1 + 8));
  v7 = NumberOfEntities - *(a1 + 189);
  if (v7 >= 1)
  {
    v8 = 0;
    v23 = v7 & 0x7FFFFFFF;
    do
    {
      outValue = 0;
      Entity = MIDIDeviceGetEntity(*(a1 + 8), v8);
      if (MIDIObjectGetIntegerProperty(Entity, @"Cable", &outValue))
      {
        v10 = v8;
      }

      else
      {
        v10 = outValue;
      }

      if (MIDIObjectGetIntegerProperty(Entity, @"In Endpoint", &outValue))
      {
        v11 = 0;
      }

      else
      {
        v11 = outValue;
      }

      if (MIDIObjectGetIntegerProperty(Entity, @"Out Endpoint", &outValue))
      {
        v12 = 0;
      }

      else
      {
        v12 = outValue;
      }

      if (((MIDIObjectGetIntegerProperty(Entity, @"Default Protocol", &outValue) == 0) & v24) != 0)
      {
        v13 = outValue;
      }

      else
      {
        v13 = 0;
      }

      if (MIDIObjectGetIntegerProperty(Entity, @"Group Terminal Block ID", &outValue))
      {
        v14 = 0;
      }

      else
      {
        v14 = outValue;
      }

      if (MIDIObjectGetIntegerProperty(Entity, @"First Group", &outValue))
      {
        v15 = 0;
      }

      else
      {
        v15 = outValue;
      }

      IntegerProperty = MIDIObjectGetIntegerProperty(Entity, @"Number of Groups", &outValue);
      if (IntegerProperty)
      {
        v18 = 0;
      }

      else
      {
        v18 = outValue;
      }

      sub_8568(IntegerProperty, v17);
      v19 = qword_2C138;
      if (os_log_type_enabled(qword_2C138, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136317186;
        v27 = "USBMIDIDevice.cpp";
        v28 = 1024;
        v29 = 923;
        v30 = 1024;
        *v31 = v8;
        *&v31[4] = 1024;
        *&v31[6] = v10;
        v32 = 1024;
        v33 = v11;
        v34 = 1024;
        v35 = v12;
        v36 = 1024;
        v37 = v13;
        v38 = 1024;
        v39 = v14;
        v40 = 1024;
        v41 = v18;
        _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEBUG, "%25s:%-5d      MIDIPortMap(entity %d, cable %d, inEP 0x%x, outEP 0x%x, protocol %d, gtbID %d, numGroups %d => mMapList", buf, 0x3Cu);
      }

      buf[0] = v8;
      buf[1] = v10;
      buf[2] = v11;
      buf[3] = v12;
      LOBYTE(v27) = v13;
      BYTE1(v27) = v15;
      BYTE2(v27) = v18;
      BYTE3(v27) = v14;
      v20 = *(a1 + 200);
      if (v20 >= *(a1 + 208))
      {
        NumberOfEntities = sub_F1D8((a1 + 192), buf);
      }

      else
      {
        *v20 = v8;
        v20[1] = v10;
        v20[2] = v11;
        v20[3] = v12;
        v20[4] = v13;
        v20[5] = v15;
        v20[6] = v18;
        NumberOfEntities = (v20 + 8);
        v20[7] = v14;
      }

      *(a1 + 200) = NumberOfEntities;
      ++v8;
    }

    while (v23 != v8);
  }

  sub_8568(NumberOfEntities, v6);
  v21 = qword_2C138;
  if (os_log_type_enabled(qword_2C138, OS_LOG_TYPE_DEBUG))
  {
    v22 = (*(a1 + 200) - *(a1 + 192)) >> 3;
    *buf = 136315650;
    v27 = "USBMIDIDevice.cpp";
    v28 = 1024;
    v29 = 926;
    v30 = 2048;
    *v31 = v22;
    _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEBUG, "%25s:%-5d [-] USBMIDIDevice::ReconstructPortMapList() - %lu port map(s) created", buf, 0x1Cu);
  }
}

void *sub_C910(void *a1, uint64_t *a2)
{
  v3 = *a2;
  *a2 = &off_288F8;
  *a1 = off_288D8;
  a1[1] = v3;
  (*(v3 + 16))(a1 + 2, a2 + 1);
  bzero(a1 + 8, 0x300uLL);
  return a1;
}

void *sub_C978(void *a1)
{
  *a1 = off_288D8;
  (*(a1[1] + 24))(a1 + 2);
  return a1;
}

void sub_C9CC(void *a1)
{
  *a1 = off_288D8;
  (*(a1[1] + 24))(a1 + 2);

  operator delete();
}

uint64_t sub_CA40(uint64_t a1, _DWORD *a2)
{
  if (*a2 == 2)
  {
    v6 = *(a1 + 8);
    (*(v6 + 1))(v7, a1 + 16);
    v7[7] = 1;
    v7[6] = &v8;
    v5[0] = a1;
    v5[1] = &v6;
    sub_CC60(a2, v5);
    return sub_D3F0(&v6);
  }

  else
  {
    if (*a2 != 1)
    {
      std::terminate();
    }

    v6 = a2;
    return (**(a1 + 8))(a1 + 16, &v6);
  }
}

void sub_CB1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_D3F0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_CB38(uint64_t a1, unsigned int *a2)
{
  v5 = *(a1 + 8);
  (*(v5 + 8))(v6, a1 + 16);
  v7 = v5;
  (*(v5 + 8))(v8, v6);
  v8[7] = 1;
  v8[6] = &v9;
  v4 = &v7;
  sub_D464(a2, &v4);
  sub_D3F0(&v7);
  return (*(v5 + 24))(v6);
}

void sub_CC0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  if (a2)
  {
    sub_1298(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_CC60(uint64_t result, uint64_t *a2)
{
  if (*(result + 4))
  {
    v3 = result;
    v4 = 0;
    v5 = result + 8;
    do
    {
      v6 = *(v5 + 8);
      v11[0] = v5 + 12;
      v11[1] = v6;
      v11[2] = *v5;
      v11[3] = 0;
      v9 = 0;
      v10 = 0;
      v8 = 0;
      result = sub_34CC(v11, &v10, &v8);
      if (result)
      {
        do
        {
          v13 = v10;
          v7 = *a2;
          v12[0] = a2[1];
          v12[1] = &v13;
          sub_CD38((v7 + 64), &v8, v12);
          v9 = 0;
          v10 = 0;
          v8 = 0;
          result = sub_34CC(v11, &v10, &v8);
        }

        while ((result & 1) != 0);
      }

      v5 += 12 + 4 * *(v5 + 8);
      ++v4;
    }

    while (v4 < *(v3 + 4));
  }

  return result;
}

_DWORD *sub_CD38(_DWORD *result, char *__src, uint64_t *a3)
{
  v3 = *__src;
  if (((1 << (v3 >> 28)) & 0xA02F) == 0)
  {
    if (v3 >> 28 != 4)
    {
      return result;
    }

    v8 = BYTE3(v3) & 0xF | 0x20;
    v9 = *(__src + 1);
    v10 = BYTE2(v3) >> 4;
    if (v10 > 0xB)
    {
      switch(v10)
      {
        case 0xCu:
          if (v3)
          {
            v27 = 0;
            *&v26[8] = 0;
            v23 = v8 << 24;
            v24 = BYTE2(v3) << 16;
            v25 = (v24 - 0x100000) | (v8 << 24);
            *v26 = (v24 - 0x100000) & 0xFFFFFF80 | (v8 << 24) | (v9 >> 8) & 0x7F;
            sub_D05C(*a3, *a3[1], v26);
            v27 = 0;
            *&v26[8] = 0;
            *v26 = v25 & 0xFFFFFF80 | v9 & 0x7F | 0x2000;
            sub_D05C(*a3, *a3[1], v26);
          }

          else
          {
            v23 = v8 << 24;
            v24 = BYTE2(v3) << 16;
          }

          v27 = 0;
          *&v26[4] = 0;
          v12 = HIWORD(v9) & 0x7F00 | v23 | v24;
          break;
        case 0xDu:
          v27 = 0;
          *&v26[4] = 0;
          v12 = (BYTE2(v3) << 16) | (v8 << 24) | (v9 >> 25 << 8);
          break;
        case 0xEu:
          v27 = 0;
          *&v26[4] = 0;
          v12 = (v9 >> 10) & 0x7F00 | (BYTE2(v3) << 16) | (v8 << 24) | (v9 >> 25);
          break;
        default:
          return result;
      }

      goto LABEL_35;
    }

    if (v10 - 8 < 4)
    {
      v11 = v10 == 9;
      if (v9 >> 25)
      {
        v11 = v9 >> 25;
      }

      v27 = 0;
      *&v26[4] = 0;
      v12 = v11 | (BYTE2(v3) << 16) | (v8 << 24) | v3 & 0x7F00;
LABEL_35:
      *v26 = v12;
      return sub_D05C(*a3, *a3[1], v26);
    }

    if (v10 - 2 >= 2)
    {
      return result;
    }

    v13 = (v3 >> 16) & 0xF;
    v14 = &result[12 * (BYTE3(v3) & 0xF)] + 3 * v13;
    v15 = (v3 >> 8) & 0x7F;
    v16 = *__src & 0x7F;
    v17 = (v9 >> 18) & 0x7F;
    if ((v3 & 0x100000) != 0)
    {
      v18 = 2;
    }

    else
    {
      v18 = 1;
    }

    if (v18 == *v14 && v15 == v14[1])
    {
      v19 = v13 | 0xB0;
      if (v16 == v14[2])
      {
        v20 = (v8 << 24) | (v19 << 16);
LABEL_28:
        v27 = 0;
        *&v26[8] = 0;
        *v26 = v20 | (v9 >> 25) | 0x600;
        result = sub_D05C(*a3, *a3[1], v26);
        if (!v17)
        {
          return result;
        }

        v27 = 0;
        *&v26[4] = 0;
        v12 = v17 | v20 | 0x2600;
        goto LABEL_35;
      }
    }

    else
    {
      v19 = v13 | 0xB0;
    }

    if ((v3 & 0x100000) != 0)
    {
      v21 = 25344;
    }

    else
    {
      v21 = 25856;
    }

    v27 = 0;
    *&v26[8] = 0;
    v20 = (v8 << 24) | (v19 << 16);
    v22 = v20 | v21;
    *v26 = v20 | v21 | v15;
    sub_D05C(*a3, *a3[1], v26);
    v27 = 0;
    *&v26[8] = 0;
    *v26 = (v22 | v16) - 256;
    sub_D05C(*a3, *a3[1], v26);
    *v14 = v18;
    v14[1] = v15;
    v14[2] = v16;
    goto LABEL_28;
  }

  v6 = *a3;
  v7 = *a3[1];

  return sub_D05C(v6, v7, __src);
}

_DWORD *sub_D05C(_DWORD *result, uint64_t a2, char *__src)
{
  v3 = result;
  v4 = *__src;
  v5 = byte_21EC8[v4 >> 28];
  v6 = *(result + 7);
  if (byte_21EC8[v4 >> 28])
  {
    v7 = result + 272;
    v8 = v4 & 0xF0000000;
    v9 = result[17];
    if (v6)
    {
      v10 = v9 == 0;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      if (!v9)
      {
        goto LABEL_34;
      }

      if (!v6)
      {
        if (v8 != 805306368)
        {
          goto LABEL_31;
        }

LABEL_33:
        v6 += v6[2] + 3;
LABEL_34:
        if (&v6[v5 + 3] <= v7)
        {
          LODWORD(v19) = 0;
          result[17] = v9 + 1;
          *v6 = a2;
          v6[2] = 0;
          goto LABEL_37;
        }

        goto LABEL_35;
      }
    }

    else
    {
      v11 = v6[2];
      v12 = v11 >= 2;
      v13 = v11 - 2;
      if (v12 && v6[3] >> 28 == 3)
      {
        v14 = v6[v13 + 3];
        if (v14 >> 28 == 3)
        {
          v15 = (v14 >> 20) & 0xF;
        }

        else
        {
          v15 = 255;
        }

        if (v15)
        {
          v16 = v15 == 3;
        }

        else
        {
          v16 = 1;
        }

        v17 = v16;
        v18 = 1;
LABEL_27:
        if ((v4 & 0xF0E00000) != 0x30000000 && (((v8 == 805306368) ^ v18) & 1) == 0 && *v6 == a2 && (v17 & 1) == 0)
        {
LABEL_31:
          v19 = v6[2];
          if (&v6[v19 + 3 + v5] <= v7)
          {
LABEL_37:
            result = &v6[v19 + 3];
            if (v5 > 2)
            {
              if (v5 != 3)
              {
                if (v5 != 4)
                {
LABEL_49:
                  result = memmove(result, __src, 4 * v5);
                  goto LABEL_47;
                }

                v20 = *__src;
                __src += 4;
                *result = v20;
                result = &v6[v19 + 4];
              }

              v21 = *__src;
              __src += 4;
              *result++ = v21;
            }

            else
            {
              if (v5 == 1)
              {
LABEL_46:
                *result = *__src;
LABEL_47:
                v6[2] += v5;
                goto LABEL_48;
              }

              if (v5 != 2)
              {
                goto LABEL_49;
              }
            }

            v22 = *__src;
            __src += 4;
            *result++ = v22;
            goto LABEL_46;
          }

          goto LABEL_35;
        }

        goto LABEL_33;
      }
    }

    v18 = 0;
    v17 = 0;
    goto LABEL_27;
  }

  if (!v6)
  {
LABEL_35:
    result = sub_D238(result, a2, __src, v5);
    v6 = result;
  }

LABEL_48:
  *(v3 + 7) = v6;
  return result;
}

uint64_t sub_D238(uint64_t a1, uint64_t a2, int *a3, uint64_t a4)
{
  if (*(a1 + 68))
  {
    v18 = a1 + 64;
    (**a1)(a1 + 8, &v18);
    *(a1 + 68) = 0;
    v8 = a1 + 72;
    if (!a4)
    {
      return v8;
    }

    if (a4 <= 251)
    {
      *(a1 + 68) = 1;
      *(a1 + 72) = a2;
      *(a1 + 80) = 0;
      v11 = (a1 + 84);
      v12 = (4 * a4) >> 2;
      if (v12 <= 1)
      {
        v16 = 0;
        if (!v12)
        {
LABEL_18:
          *(a1 + 80) = v16 + a4;
          return v8;
        }

        if (v12 == 1)
        {
LABEL_17:
          *v11 = *a3;
          v16 = *(a1 + 80);
          goto LABEL_18;
        }
      }

      else
      {
        switch(v12)
        {
          case 2:
LABEL_14:
            v15 = *a3++;
            *v11++ = v15;
            goto LABEL_17;
          case 3:
LABEL_13:
            v14 = *a3++;
            *v11++ = v14;
            goto LABEL_14;
          case 4:
            v13 = *a3++;
            v11 = (a1 + 88);
            *(a1 + 84) = v13;
            goto LABEL_13;
        }
      }

      memmove(v11, a3, 4 * a4);
      v16 = 0;
      goto LABEL_18;
    }
  }

  MIDI::EventList::create();
  v20 = v18;
  (**a1)(a1 + 8, &v20);
  v9 = v18;
  v18 = 0;
  if (v9)
  {
    v19();
    v10 = v18;
    v8 = a1 + 72;
    *(a1 + 56) = a1 + 72;
    *(a1 + 68) = 0;
    v18 = 0;
    if (v10)
    {
      v19();
    }
  }

  else
  {
    v8 = a1 + 72;
    *(a1 + 56) = a1 + 72;
    *(a1 + 68) = 0;
  }

  return v8;
}

void sub_D3CC(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void (*a11)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (a10)
  {
    a11(a10, a2, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_D3F0(uint64_t a1)
{
  if (*(a1 + 68))
  {
    v3 = a1 + 64;
    (**a1)(a1 + 8, &v3);
  }

  *(a1 + 68) = 0;
  *(a1 + 56) = a1 + 72;
  (*(*a1 + 24))(a1 + 8);
  return a1;
}

unsigned int *sub_D464(unsigned int *result, _DWORD **a2)
{
  if (*result)
  {
    v3 = result;
    v4 = 0;
    v5 = result + 1;
    do
    {
      result = sub_D4D0(a2, v5);
      v5 = ((v5 + *(v5 + 4) + 13) & 0xFFFFFFFFFFFFFFFCLL);
      ++v4;
    }

    while (v4 < *v3);
  }

  return result;
}

BOOL sub_D4D0(_DWORD **a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v8[0] = a2 + 10;
  v8[1] = v3;
  v8[2] = *a2;
  v8[3] = 0;
  v6 = 0;
  *v7 = 0;
  __src = 0;
  for (result = sub_D554(v8, v7, &__src); result; result = sub_D554(v8, v7, &__src))
  {
    sub_D05C(*a1, *v7, &__src);
    v6 = 0;
    *v7 = 0;
    __src = 0;
  }

  return result;
}

BOOL sub_D554(uint64_t *a1, void *a2, int *a3)
{
  v3 = a1[1];
  v4 = a1[3];
  if (v4 >= v3)
  {
    return 0;
  }

  v5 = *a1;
  v6 = (*a1 + v4);
  v7 = *v6;
  if (*v6 < -16)
  {
LABEL_3:
    v8 = 2;
    if ((v7 & 0xE0) != 0xC0)
    {
      v8 = 3;
    }

    v9 = v8 + v4;
    v10 = v9 <= v3;
    if (v9 <= v3)
    {
      v11 = v6[1] & 0x7F;
      if ((v7 & 0xE0) == 0xC0)
      {
        v12 = 0;
      }

      else
      {
        v12 = v6[2] & 0x7F;
      }

      *a3 = v12 | (v7 << 16) | (v11 << 8) | 0x20000000;
      *a2 = a1[2];
      v3 = v9;
    }

    goto LABEL_20;
  }

  while (2)
  {
    if (v7 < 0xF1)
    {
      v16 = v7 == 240;
      if (v7 == 240)
      {
        v17 = 1;
      }

      else
      {
        v17 = 2;
      }

      if (v16)
      {
        a1[3] = ++v4;
      }

      v18 = 0;
      v19 = 0;
      v20 = 0;
      while (1)
      {
        v21 = (v4 < v3) | v19;
        if (v4 < v3 && (v19 & 1) == 0)
        {
          v22 = *(v5 + v4);
          if ((v22 & 0x80000000) == 0)
          {
            if (v18 == 6)
            {
              goto LABEL_43;
            }

            v21 = 0;
            a1[3] = ++v4;
            ++v20;
            goto LABEL_42;
          }

          if (v22 == -9)
          {
            a1[3] = ++v4;
          }

          if (v17 == 1)
          {
            v17 = 0;
          }

          else
          {
            v17 = 3;
          }

          v21 = 1;
        }

        if (v18 == 6)
        {
LABEL_43:
          v23 = bswap32(v28);
          *a3 = (v17 << 20) | (v20 << 16) | (v27[0] << 8) | v27[1] | 0x30000000;
          a3[1] = v23;
          *a2 = a1[2];
          return 1;
        }

        LOBYTE(v22) = 0;
LABEL_42:
        v27[v18++] = v22;
        v19 = v21;
      }
    }

    if (v7 == 247)
    {
      *a3 = 808452096;
      *a2 = a1[2];
      v24 = v4 + 1;
      goto LABEL_53;
    }

    if ((0x22B1uLL >> (v7 + 16)))
    {
      v13 = v4;
      do
      {
        v4 = v13 + 1;
        a1[3] = v13 + 1;
        if (v13 + 1 >= v3)
        {
          return 0;
        }

        v14 = *(v5 + v13++ + 1);
      }

      while ((v14 & 0x80000000) == 0);
      v6 = (v5 + v4);
      v7 = *(v5 + v4);
      if (*(v5 + v4) > -17)
      {
        continue;
      }

      goto LABEL_3;
    }

    break;
  }

  v24 = v4 + byte_21DB0[v7 - 240];
  if (v24 > v3)
  {
    v10 = 0;
LABEL_20:
    a1[3] = v3;
    return v10;
  }

  if ((0xDD40uLL >> (v7 + 16)))
  {
    v25 = 0;
    goto LABEL_51;
  }

  v25 = v6[1] & 0x7F;
  if (v7 != 242)
  {
LABEL_51:
    v26 = 0;
    goto LABEL_52;
  }

  v26 = v6[2] & 0x7F;
LABEL_52:
  *a3 = (v7 << 16) | (v25 << 8) | v26 | 0x10000000;
  *a2 = a1[2];
LABEL_53:
  a1[3] = v24;
  return 1;
}

void *sub_D7C0(void *a1, uint64_t *a2)
{
  v3 = *a2;
  *a2 = &off_288F8;
  *a1 = off_28930;
  a1[1] = v3;
  (*(v3 + 16))(a1 + 2, a2 + 1);
  bzero(a1 + 8, 0x821uLL);
  return a1;
}

void *sub_D828(void *a1)
{
  *a1 = off_28930;
  (*(a1[1] + 24))(a1 + 2);
  return a1;
}

void sub_D87C(void *a1)
{
  *a1 = off_28930;
  (*(a1[1] + 24))(a1 + 2);

  operator delete();
}

uint64_t sub_D8F0(uint64_t a1, _DWORD *a2)
{
  if (*a2 == 2)
  {
    v10 = a2;
    return (**(a1 + 8))(a1 + 16, &v10);
  }

  else
  {
    if (*a2 != 1)
    {
      std::terminate();
    }

    v4 = *(a1 + 8);
    v9 = 0;
    v10 = v4;
    (*(v4 + 8))(v11, a1 + 16);
    v11[7] = 2;
    v11[6] = &v12;
    v6 = &v9;
    v7 = a1;
    v8 = &v10;
    sub_DADC(a2, &v6);
    v6 = &v10;
    v7 = &v9;
    sub_DBB4((a1 + 64), &v6);
    return sub_D3F0(&v10);
  }
}

void sub_D9F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_D3F0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_DA10(uint64_t a1, unsigned int *a2)
{
  v7 = *(a1 + 8);
  (*(v7 + 8))(v8, a1 + 16);
  v8[7] = 2;
  v8[6] = &v9;
  v5[0] = a1;
  v5[1] = &v7;
  v6 = v5;
  sub_E3F4(a2, &v6);
  return sub_D3F0(&v7);
}

void sub_DAC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_D3F0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_DADC(uint64_t result, uint64_t a2)
{
  if (*(result + 4))
  {
    v3 = result;
    v4 = 0;
    v5 = result + 8;
    do
    {
      v6 = *(v5 + 8);
      v12[0] = v5 + 12;
      v12[1] = v6;
      v12[2] = *v5;
      v12[3] = 0;
      v10 = 0;
      v11 = 0;
      __src = 0;
      result = sub_34CC(v12, &v11, &__src);
      if (result)
      {
        do
        {
          v8 = *a2;
          v7 = *(a2 + 8);
          *v8 = v11;
          v13[0] = *(a2 + 16);
          v13[1] = v8;
          sub_DD34((v7 + 64), &__src, v13);
          v10 = 0;
          v11 = 0;
          __src = 0;
          result = sub_34CC(v12, &v11, &__src);
        }

        while ((result & 1) != 0);
      }

      v5 += 12 + 4 * *(v5 + 8);
      ++v4;
    }

    while (v4 < *(v3 + 4));
  }

  return result;
}

_DWORD *sub_DBB4(_DWORD *result, _DWORD **a2)
{
  v3 = result;
  v4 = *result;
  v5 = v4 >> 28;
  if (v4 >> 28)
  {
    v6 = v5 == 15;
  }

  else
  {
    v6 = 1;
  }

  v7 = v6 || (v4 & 0xFF0000) == 0;
  if (!v7 && (BYTE1(v4) | 0x20) == 0x26)
  {
    LODWORD(v20) = BYTE3(v4) & 0xF;
    if (v5 == 15)
    {
      v20 = 255;
    }

    else
    {
      v20 = v20;
    }

    *(&result[32 * v20 + 8 + 2 * ((v4 >> 16) & 0xF)] + 1) = 0;
    *(result + 32) = 1;
  }

  if (BYTE2(v4))
  {
    v23 = 0;
    if (v5)
    {
      v8 = v5 == 15;
    }

    else
    {
      v8 = 1;
    }

    v9 = v4 & 0xF000000 | 0x40000000;
    if (v8)
    {
      v9 = -16777216;
    }

    v21 = v9 | v4 & 0xFF00 | (BYTE2(v4) << 16);
    v10 = v4;
    v11 = v4 << 25;
    if (v10 >= 0x41)
    {
      v12 = (v10 & 0x3F) << 19;
      if (v12)
      {
        do
        {
          v11 |= v12;
          v13 = v12 > 0x3F;
          v12 >>= 6;
        }

        while (v13);
      }
    }

    v22 = v11;
    result = sub_D05C(*a2, *a2[1], &v21);
    *v3 = 0;
  }

  v14 = v3[4];
  if (BYTE2(v14))
  {
    v23 = 0;
    if (v14 >> 28)
    {
      v15 = v14 >> 28 == 15;
    }

    else
    {
      v15 = 1;
    }

    v16 = v14 & 0xF000000 | 0x40000000;
    if (v15)
    {
      v16 = -16777216;
    }

    v21 = v16 | v14 & 0xFF00 | (BYTE2(v14) << 16);
    v17 = v14;
    v18 = v14 << 25;
    if (v17 >= 0x41)
    {
      v19 = (v17 & 0x3F) << 19;
      if (v19)
      {
        do
        {
          v18 |= v19;
          v13 = v19 > 0x3F;
          v19 >>= 6;
        }

        while (v13);
      }
    }

    v22 = v18;
    result = sub_D05C(*a2, *a2[1], &v21);
    v3[4] = 0;
  }

  return result;
}

void sub_DD34(unsigned int *a1, char *__src, _DWORD **a3)
{
  v5 = *__src;
  if (*__src >> 28 != 2)
  {
    v24 = *a3;
    v25 = *a3[1];

    sub_D05C(v24, v25, __src);
    return;
  }

  v53 = 0;
  v54 = 0;
  v52 = BYTE2(v5);
  v51 = 0;
  v50[0] = a1;
  v50[1] = &v52;
  v50[2] = __src;
  v50[3] = (&v51 + 1);
  v50[4] = &v51;
  v7 = *(a1 + 32);
  if ((v7 & 1) == 0)
  {
    sub_E220(v50);
  }

  v8 = v5 & 0x7F;
  v9 = HIBYTE(v5) & 0xF;
  v10 = HIBYTE(v5) & 0xF | 0x40;
  v11 = *a1;
  v12 = BYTE2(*a1);
  if (BYTE2(*a1) && v7)
  {
    *(a1 + 32) = 1;
    v57 = 0;
    __srca = v11 & 0xFF00 | (v12 << 16) & 0x80FFFFFF | ((HIBYTE(v5) & 0xF | 0x40) << 24);
    v13 = v11;
    v14 = v11 << 25;
    if (v13 >= 0x41)
    {
      v15 = (v13 & 0x3F) << 19;
      if (v15)
      {
        do
        {
          v14 |= v15;
          v16 = v15 > 0x3F;
          v15 >>= 6;
        }

        while (v16);
      }
    }

    v56 = v14;
    sub_D05C(*a3, *a3[1], &__srca);
    *a1 = 0;
    v57 = 0;
    v17 = a1[4];
    if (BYTE2(v17))
    {
      __srca = a1[4] & 0xFF00 | (BYTE2(a1[4]) << 16) | (v10 << 24);
      v18 = v17;
      v19 = v17 << 25;
      v20 = v18 >= 0x41;
      v21 = (v18 & 0x3F) << 19;
      if (v20 && v21 != 0)
      {
        do
        {
          v19 |= v21;
          v16 = v21 > 0x3F;
          v21 >>= 6;
        }

        while (v16);
      }

      v56 = v19;
      sub_D05C(*a3, *a3[1], &__srca);
      a1[4] = 0;
    }

    v23 = v52;
    *(&a1[32 * v9 + 8 + 2 * (v52 & 0xF)] + 1) = 0;
  }

  else
  {
    v23 = v52;
  }

  v26 = (v5 >> 8) & 0x7F;
  v27 = v23 >> 4;
  if (v23 >> 4 <= 0xA)
  {
    if (v27 != 8)
    {
      if (v27 != 9)
      {
        if (v27 != 10)
        {
          goto LABEL_62;
        }

        HIDWORD(v52) = (v10 << 24) | (v23 << 16) | (v26 << 8);
        v32 = v5 << 25;
        if (v8 >= 0x41)
        {
          v33 = (v5 & 0x3F) << 19;
          if (v33)
          {
            do
            {
              v32 |= v33;
              v16 = v33 > 0x3F;
              v33 >>= 6;
            }

            while (v16);
          }
        }

        goto LABEL_55;
      }

      if ((v5 & 0x7F) == 0)
      {
        v23 -= 16;
        LODWORD(v52) = v23;
        v8 = 64;
      }
    }

    HIDWORD(v52) = (v10 << 24) | (v23 << 16) | (v26 << 8);
    v40 = v8 << 9;
    if (v8 >= 0x41)
    {
      v41 = 8 * (v8 & 0x3F);
      if (v41)
      {
        do
        {
          v40 |= v41;
          v16 = v41 > 0x3F;
          v41 >>= 6;
        }

        while (v16);
      }
    }

    v32 = v40 << 16;
    goto LABEL_55;
  }

  if (v23 >> 4 > 0xC)
  {
    if (v27 == 13)
    {
      HIDWORD(v52) = (v23 << 16) | (v10 << 24);
      v38 = v5 >> 8 << 25;
      if (v26 >= 0x41)
      {
        v39 = ((v5 >> 8) & 0x3F) << 19;
        if (v39)
        {
          do
          {
            v38 |= v39;
            v16 = v39 > 0x3F;
            v39 >>= 6;
          }

          while (v16);
        }
      }

      v53 = v38;
      goto LABEL_62;
    }

    if (v27 != 14)
    {
      goto LABEL_62;
    }

    HIDWORD(v52) = (v23 << 16) | (v10 << 24);
    v34 = v26 | (v8 << 7);
    v32 = v34 << 18;
    if (v34 > 0x2000)
    {
      for (i = 32 * (v34 & 0x1FFF); i; i >>= 13)
      {
        v32 |= i;
      }
    }

LABEL_55:
    v53 = v32;
    goto LABEL_62;
  }

  if (v27 != 11)
  {
    if (v27 == 12)
    {
      v28 = &a1[32 * v9 + 2 * (v23 & 0xF)];
      v30 = *(v28 + 33);
      v29 = v28 + 33;
      if (v30 == 1)
      {
        v31 = *(a1 + 32) ^ 1;
      }

      else
      {
        v31 = 0;
      }

      v43 = (v26 << 24) | (v29[2] << 8) | v29[3];
      HIDWORD(v52) = (v23 << 16) | (v10 << 24) | v31;
      v53 = v43;
      *v29 = 0;
LABEL_61:
      *a1 = 0;
      *(a1 + 1) = 0;
      *(a1 + 2) = 0;
      *(a1 + 3) = 0;
    }

LABEL_62:
    sub_D05C(*a3, *a3[1], &v52 + 4);
    return;
  }

  v36 = &a1[32 * v9 + 2 * (v23 & 0xF)];
  if (((v5 >> 8) & 0x7F) <= 0x61)
  {
    if (((v5 >> 8) & 0x7F) > 0x1F)
    {
      if (v26 != 32)
      {
        if (v26 == 38)
        {
          v37 = v5 & 0x7F;
          goto LABEL_67;
        }

LABEL_88:
        HIDWORD(v52) = (v10 << 24) | (v23 << 16) | (v26 << 8);
        v32 = v5 << 25;
        if (v8 >= 0x41)
        {
          v49 = (v5 & 0x3F) << 19;
          if (v49)
          {
            do
            {
              v32 |= v49;
              v16 = v49 > 0x3F;
              v49 >>= 6;
            }

            while (v16);
          }
        }

        goto LABEL_55;
      }

      *(v36 + 36) = v8;
    }

    else
    {
      if (v26)
      {
        if (v26 == 6)
        {
          v37 = 0;
          *(v36 + 39) = v8;
LABEL_67:
          *(v36 + 40) = v37;
LABEL_79:
          if ((a1[8] & 1) == 0 && *(v36 + 34))
          {
            if (*(v36 + 34) == 1)
            {
              v45 = 32;
            }

            else
            {
              v45 = 48;
            }

            HIDWORD(v52) = (v10 << 24) | ((v45 | v23 & 0xF) << 16) | (*(v36 + 37) << 8) | *(v36 + 38);
            v46 = *(v36 + 40) | (*(v36 + 39) << 7);
            v47 = v46 << 18;
            if (v46 > 0x2000)
            {
              for (j = 32 * (v46 & 0x1FFF); j; j >>= 13)
              {
                v47 |= j;
              }
            }

            v53 = v47;
            goto LABEL_61;
          }

          goto LABEL_88;
        }

        goto LABEL_88;
      }

      *(v36 + 35) = v8;
    }

    *(v36 + 33) = 1;
    goto LABEL_78;
  }

  if (((v5 >> 8) & 0x7F) > 0x63)
  {
    if (v26 != 100)
    {
      if (v26 != 101)
      {
        goto LABEL_88;
      }

      v42 = 1;
      goto LABEL_71;
    }

    v44 = 1;
  }

  else
  {
    if (v26 != 98)
    {
      v42 = 2;
LABEL_71:
      *(v36 + 34) = v42;
      *(v36 + 37) = v8;
      goto LABEL_78;
    }

    v44 = 2;
  }

  *(v36 + 34) = v44;
  *(v36 + 38) = v8;
LABEL_78:
  if (a1[8])
  {
    goto LABEL_79;
  }
}

__n128 sub_E220(unsigned int **a1)
{
  v1 = *a1;
  if ((*a1)[8])
  {
    return result;
  }

  v2 = *a1[1];
  v3 = v2 >> 4;
  v4 = *v1;
  if ((*v1 & 0xFF0000) != 0)
  {
    if (((v2 ^ HIWORD(v4)) & 0xF) != 0)
    {
      *(v1 + 32) = 1;
      return result;
    }

    if (v3 == 11)
    {
      if (BYTE1(v4) > 0x62u)
      {
        switch(BYTE1(v4))
        {
          case 'c':
            v9 = a1[2];
            v10 = *v9 & 0xFF00;
            v11 = *v9 & 0xF0DF00;
            v12 = 25088;
            break;
          case 'd':
            v9 = a1[2];
            v10 = *v9 & 0xFF00;
            v11 = *v9 & 0xF0DF00;
            v12 = 25856;
            break;
          case 'e':
            v9 = a1[2];
            if ((*v9 & 0xFF00) != 0x6400 && (*v9 & 0xF0DF00) != 0xB00600)
            {
              return result;
            }

            goto LABEL_39;
          default:
            return result;
        }
      }

      else
      {
        if (!BYTE1(v4))
        {
          v9 = a1[2];
          if (*(v9 + 1) << 8 != 0x2000)
          {
            return result;
          }

          goto LABEL_39;
        }

        if (BYTE1(v4) == 32)
        {
          v9 = a1[2];
          if (*(v9 + 1))
          {
            return result;
          }

          goto LABEL_39;
        }

        if (BYTE1(v4) != 98)
        {
          return result;
        }

        v9 = a1[2];
        v10 = *v9 & 0xFF00;
        v11 = *v9 & 0xF0DF00;
        v12 = 25344;
      }

      if (v10 != v12 && v11 != 11535872)
      {
        return result;
      }

LABEL_39:
      result = *v9;
      *(v1 + 1) = *v9;
    }
  }

  else if (v3 == 11)
  {
    v5 = a1[2];
    if ((*v5 & 0xF00000) == 0xB00000)
    {
      v6 = BYTE1(*v5);
      if ((v6 - 98) < 4 || (v6 != 32 ? (v7 = v6 == 0) : (v7 = 1), v7))
      {
        result = *v5;
        *v1 = *v5;
      }
    }
  }

  return result;
}

unsigned int *sub_E3F4(unsigned int *result, uint64_t **a2)
{
  if (*result)
  {
    v3 = result;
    v4 = 0;
    v5 = result + 1;
    do
    {
      result = sub_E460(a2, v5);
      v5 = ((v5 + *(v5 + 4) + 13) & 0xFFFFFFFFFFFFFFFCLL);
      ++v4;
    }

    while (v4 < *v3);
  }

  return result;
}

BOOL sub_E460(uint64_t **a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v10[0] = a2 + 10;
  v10[1] = v3;
  v10[2] = *a2;
  v10[3] = 0;
  v8 = 0;
  v9 = 0;
  v7 = 0;
  for (result = sub_D554(v10, &v9, &v7); result; result = sub_D554(v10, &v9, &v7))
  {
    v5 = *a1;
    v12 = v9;
    v6 = *v5;
    v11[0] = v5[1];
    v11[1] = &v12;
    sub_DD34((v6 + 64), &v7, v11);
    v8 = 0;
    v9 = 0;
    v7 = 0;
  }

  return result;
}

void sub_E4FC(void ***a1)
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
        v4 -= 296;
        sub_E580(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_E580(uint64_t result)
{
  v1 = result;
  v2 = *(result + 272);
  if (v2 != -1)
  {
    result = (off_28950[v2])(&v3, result);
  }

  *(v1 + 272) = -1;
  return result;
}

void sub_E5DC(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v2;
    operator delete(v2);
  }
}

void *sub_E5F0(void *a1)
{
  for (i = a1[1]; i != a1; i = i[1])
  {
    v3 = i[4];
    if (v3)
    {
      free(v3);
    }
  }

  sub_E640(a1);
  return a1;
}

void *sub_E640(void *result)
{
  if (result[2])
  {
    v1 = result;
    result = result[1];
    v2 = *(*v1 + 8);
    v3 = *result;
    *(v3 + 8) = v2;
    *v2 = v3;
    v1[2] = 0;
    if (result != v1)
    {
      do
      {
        v4 = result[1];
        operator delete(result);
        result = v4;
      }

      while (v4 != v1);
    }
  }

  return result;
}

void sub_E6A4(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_AC2C(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_E6F8(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_1394();
}

void **sub_E740(void **a1)
{
  sub_E774(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_E774(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  while (v1 != v2)
  {
    *(a1 + 16) = v1 - 16;
    v4 = *(v1 - 8);
    if (v4)
    {
      sub_43D0(v4);
      v1 = *(a1 + 16);
    }

    else
    {
      v1 -= 16;
    }
  }
}

uint64_t *sub_E7C8(uint64_t *result, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  if (a4)
  {
    sub_E83C(result, a4);
  }

  return result;
}

void sub_E820(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_E83C(uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    sub_E878(a1, a2);
  }

  sub_1280();
}

void sub_E878(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_1394();
}

void sub_E8D8(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_E934(exception, a1);
}

std::logic_error *sub_E934(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  return result;
}

void *sub_E968(void *a1)
{
  v2 = a1[12];
  if (v2)
  {
    a1[13] = v2;
    operator delete(v2);
  }

  v3 = a1[9];
  if (v3)
  {
    a1[10] = v3;
    operator delete(v3);
  }

  v4 = a1[6];
  if (v4)
  {
    a1[7] = v4;
    operator delete(v4);
  }

  v5 = a1[3];
  if (v5)
  {
    a1[4] = v5;
    operator delete(v5);
  }

  return a1;
}

uint64_t sub_E9CC(void *a1, void *a2)
{
  v2 = (a1[1] - *a1) >> 3;
  v3 = v2 + 1;
  if ((v2 + 1) >> 61)
  {
    sub_1280();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 2 > v3)
  {
    v3 = v6 >> 2;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    v7 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v14 = a1;
  if (v7)
  {
    sub_E878(a1, v7);
  }

  __p = 0;
  v11 = (8 * v2);
  v13 = 0;
  *v11 = *a2;
  v12 = 8 * v2 + 8;
  sub_EAEC(a1, &__p);
  v8 = a1[1];
  if (v12 != v11)
  {
    v12 += (v11 - v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v8;
}

void sub_EAB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_EAEC(uint64_t result, void *a2)
{
  v2 = *result;
  v3 = *(result + 8);
  v4 = a2[1] + *result - v3;
  if (v3 != *result)
  {
    v5 = (a2[1] + *result - v3);
    do
    {
      v6 = *v2++;
      *v5++ = v6;
    }

    while (v2 != v3);
    v2 = *result;
  }

  a2[1] = v4;
  *result = v4;
  *(result + 8) = v2;
  a2[1] = v2;
  v7 = *(result + 8);
  *(result + 8) = a2[2];
  a2[2] = v7;
  v8 = *(result + 16);
  *(result + 16) = a2[3];
  a2[3] = v8;
  *a2 = a2[1];
  return result;
}

_BYTE *sub_EB54(_BYTE *a1)
{
  if (a1[8] == 1)
  {
    (*(**a1 + 24))();
  }

  return a1;
}

uint64_t sub_EBB0(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  if (v4 >= a1[2])
  {
    result = sub_EDCC(a1, a2);
  }

  else
  {
    v5 = sub_EF28(v4, a2);
    v6 = *(a2 + 280);
    *(v5 + 285) = *(a2 + 285);
    *(v5 + 280) = v6;
    result = v5 + 296;
  }

  a1[1] = result;
  return result;
}

uint64_t sub_EC1C(uint64_t a1, unsigned int *a2, int a3, int a4, char a5)
{
  *(a1 + 252) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 272) = 0;
  *(a1 + 280) = a3;
  *(a1 + 284) = a4;
  *(a1 + 288) = 0;
  v7 = a2[2];
  v8 = 4 * v7;
  *(a1 + 292) = a5;
  sub_E580(a1);
  if (v7 > 0x40)
  {
    sub_ED08(a1, v8 + 12);
    *(a1 + 272) = 1;
    v9 = *a1;
  }

  else
  {
    *(a1 + 252) = 0u;
    *(a1 + 224) = 0u;
    *(a1 + 240) = 0u;
    *(a1 + 192) = 0u;
    *(a1 + 208) = 0u;
    *(a1 + 160) = 0u;
    *(a1 + 176) = 0u;
    *(a1 + 128) = 0u;
    *(a1 + 144) = 0u;
    *(a1 + 96) = 0u;
    *(a1 + 112) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 80) = 0u;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    v9 = a1;
    *(a1 + 272) = 0;
  }

  memmove(v9, a2, v8 + 12);
  return a1;
}

uint64_t *sub_ED08(uint64_t *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_ED7C(a1, a2);
  }

  return a1;
}

void sub_ED60(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_ED7C(uint64_t *a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  sub_1280();
}

uint64_t sub_EDCC(uint64_t *a1, uint64_t a2)
{
  v2 = 0x14C1BACF914C1BADLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0xDD67C8A60DD67CLL)
  {
    sub_1280();
  }

  if (0x2983759F2298375ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x2983759F2298375ALL * ((a1[2] - *a1) >> 3);
  }

  if ((0x14C1BACF914C1BADLL * ((a1[2] - *a1) >> 3)) >= 0x6EB3E45306EB3ELL)
  {
    v6 = 0xDD67C8A60DD67CLL;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    sub_EFF8(a1, v6);
  }

  v7 = 296 * v2;
  v15 = 0;
  v16 = v7;
  *(&v17 + 1) = 0;
  sub_EF28(v7, a2);
  v8 = *(a2 + 280);
  *(v7 + 285) = *(a2 + 285);
  *(v7 + 280) = v8;
  *&v17 = v7 + 296;
  v9 = a1[1];
  v10 = v7 + *a1 - v9;
  sub_F054(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  sub_F0DC(&v15);
  return v14;
}

void sub_EF14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_F0DC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_EF28(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 272) = -1;
  sub_EF60(a1, a2);
  return a1;
}

uint64_t sub_EF60(uint64_t a1, uint64_t a2)
{
  result = sub_E580(a1);
  v5 = *(a2 + 272);
  if (v5 != -1)
  {
    v6 = a1;
    result = (off_28978[v5])(&v6, a2);
    *(a1 + 272) = v5;
  }

  return result;
}

__n128 sub_EFD0(__n128 **a1, __n128 *a2)
{
  v2 = *a1;
  v2->n128_u64[0] = 0;
  v2->n128_u64[1] = 0;
  v2[1].n128_u64[0] = 0;
  result = *a2;
  *v2 = *a2;
  v2[1].n128_u64[0] = a2[1].n128_u64[0];
  *a2 = 0uLL;
  a2[1].n128_u64[0] = 0;
  return result;
}

void sub_EFF8(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xDD67C8A60DD67DLL)
  {
    operator new();
  }

  sub_1394();
}

void sub_F054(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = a2;
    do
    {
      v8 = sub_EF28(a4, v7);
      v9 = *(v7 + 280);
      *(v8 + 285) = *(v7 + 285);
      *(v8 + 280) = v9;
      v7 += 296;
      a4 = v8 + 296;
    }

    while (v7 != a3);
    while (v6 != a3)
    {
      sub_E580(v6);
      v6 += 296;
    }
  }
}

uint64_t sub_F0DC(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 296;
    sub_E580(i - 296);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_F12C(uint64_t a1)
{
  v1 = *(a1 + 272);
  if (v1 == -1)
  {
    sub_F178();
  }

  v4 = &v3;
  return (off_289A0[v1])(&v4, a1);
}

void sub_F178()
{
  exception = __cxa_allocate_exception(8uLL);
}

double *sub_F1D8(double **a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = v4 - *a1;
  v6 = v5 + 1;
  if ((v5 + 1) >> 61)
  {
    sub_1280();
  }

  v8 = a1[2] - v3;
  if (v8 >> 2 > v6)
  {
    v6 = v8 >> 2;
  }

  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    v6 = 0x1FFFFFFFFFFFFFFFLL;
  }

  if (v6)
  {
    sub_E878(a1, v6);
  }

  v9 = (8 * v5);
  v10 = *a2;
  v11 = &v9[-(v4 - *a1)];
  *v9 = v10;
  v12 = (v9 + 1);
  sub_F2CC(a1, v3, v4, v11);
  v13 = *a1;
  *a1 = v11;
  a1[1] = v12;
  a1[2] = 0;
  if (v13)
  {
    operator delete(v13);
  }

  return v12;
}

double sub_F2CC(uint64_t a1, double *a2, double *a3, double *a4)
{
  while (a2 != a3)
  {
    v4 = *a2++;
    result = v4;
    *a4++ = v4;
  }

  return result;
}

uint64_t sub_F2E4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void *sub_F37C(void *a1)
{
  *a1 = off_289C0;
  sub_F650((a1 + 2));
  return a1;
}

void sub_F3C0(void *a1)
{
  *a1 = off_289C0;
  sub_F650((a1 + 2));

  operator delete();
}

uint64_t sub_F4A0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = off_289C0;
  a2[1] = v2;
  return sub_F2E4((a2 + 2), a1 + 16);
}

void sub_F4D8(char *a1)
{
  sub_F650((a1 + 16));

  operator delete(a1);
}

uint64_t sub_F51C(uint64_t a1, uint64_t a2)
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

uint64_t sub_F59C(uint64_t (**a1)(uint64_t, char *), uint64_t *a2)
{
  v3 = *a2;
  v7 = 0;
  v4 = (*a1)(v3, &v7);
  v5 = 0;
  if (v7 == 1)
  {
    sub_F5FC((a1 + 1), v4);
    v5 = v7;
  }

  return v5 & 1;
}

uint64_t sub_F5FC(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_1514();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t sub_F650(uint64_t a1)
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

uint64_t sub_F6D0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void *sub_F768(void *a1)
{
  *a1 = off_28A08;
  sub_FA3C((a1 + 2));
  return a1;
}

void sub_F7AC(void *a1)
{
  *a1 = off_28A08;
  sub_FA3C((a1 + 2));

  operator delete();
}

uint64_t sub_F88C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = off_28A08;
  a2[1] = v2;
  return sub_F6D0((a2 + 2), a1 + 16);
}

void sub_F8C4(char *a1)
{
  sub_FA3C((a1 + 16));

  operator delete(a1);
}

uint64_t sub_F908(uint64_t a1, uint64_t a2)
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