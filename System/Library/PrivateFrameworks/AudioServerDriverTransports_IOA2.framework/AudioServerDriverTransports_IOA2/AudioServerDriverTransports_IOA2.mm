void sub_2416BB16C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = ASDTIOA2BlockControl;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

void sub_2416BB2CC(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_2416BB53C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  std::mutex::unlock((v4 + v6));
  applesauce::CF::DictionaryRef::~DictionaryRef(va);

  _Unwind_Resume(a1);
}

void applesauce::CF::DictionaryRef::~DictionaryRef(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

void sub_2416BB99C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  applesauce::CF::DictionaryRef::~DictionaryRef(va);
  std::mutex::unlock((v7 + v8));
  _Unwind_Resume(a1);
}

const void **applesauce::CF::ObjectRef<__CFDictionary const*>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

io_object_t *ASDT::IOA2UserClient::IOA2UserClient(io_object_t *this, unsigned int a2, unsigned int a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = ASDT::IOUserClient::IOUserClient(this);
  *v4 = &unk_285354FA8;
  if ((ASDT::IOUserClient::ConformsTo(v4, "IOAudio2Device") & 1) == 0)
  {
    v5 = this[2];
    memset(v10, 0, sizeof(v10));
    Class = IOObjectGetClass(v5, v10);
    v8 = ASDTIOA2LogType(Class, v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      ASDT::IOA2UserClient::IOA2UserClient();
    }

    (*(*this + 16))(this);
  }

  return this;
}

void *ASDT::IOA2UserClient::IOA2UserClient(ASDT::IOA2UserClient *this, const applesauce::CF::DictionaryRef *a2)
{
  result = ASDT::IOUserClient::IOUserClient(this, a2);
  *result = &unk_285354FA8;
  return result;
}

{
  result = ASDT::IOUserClient::IOUserClient(this, a2);
  *result = &unk_285354FA8;
  return result;
}

void ASDT::IOA2UserClient::CopyDeviceUID(ASDT::IOA2UserClient *this@<X0>, const __CFString *a2@<X1>, const applesauce::CF::TypeRef *a3@<X8>)
{
  *a3 = 0;
  applesauce::CF::make_StringRef(&cf, @"device UID", a2);
  ASDT::IOUserClient::CopyProperty<applesauce::CF::StringRef>(this, &cf, a3);
  if (cf)
  {
    CFRelease(cf);
  }
}

{
  *a3 = 0;
  applesauce::CF::make_StringRef(&cf, @"device UID", a2);
  ASDT::IOUserClient::CopyProperty<applesauce::CF::StringRef>(this, &cf, a3, v5);
  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_2416BBEF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  applesauce::CF::StringRef::~StringRef(va);
  applesauce::CF::StringRef::~StringRef(v3);
  _Unwind_Resume(a1);
}

uint64_t ASDT::IOUserClient::CopyProperty<applesauce::CF::StringRef>(ASDT::IOUserClient *a1, const applesauce::CF::StringRef *a2, const applesauce::CF::TypeRef *a3)
{
  cf = 0;
  if (ASDT::IOUserClient::CopyProperty(a1, a2, &cf))
  {
    v5 = ASDT::IOUserClient::ConvertValue(&cf, a3, v4);
  }

  else
  {
    v5 = 0;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v5;
}

void sub_2416BBF78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  applesauce::CF::TypeRef::~TypeRef(va);
  _Unwind_Resume(a1);
}

uint64_t *applesauce::CF::make_StringRef@<X0>(CFStringRef *__return_ptr a1@<X8>, CFStringRef format@<X0>, const __CFString *a3@<X1>, ...)
{
  va_start(va, a3);
  v4 = CFStringCreateWithFormatAndArguments(0, 0, format, va);
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
  }

  *a1 = v4;
  v5 = CFGetTypeID(v4);
  result = CFStringGetTypeID();
  if (v5 != result)
  {
    v8 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x245CED520](v8, "Could not construct");
    __cxa_throw(v8, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return result;
}

void sub_2416BC064(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(v1);
  _Unwind_Resume(a1);
}

void applesauce::CF::StringRef::~StringRef(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

void ASDT::IOA2UserClient::CopyDeviceName(ASDT::IOA2UserClient *this@<X0>, const __CFString *a2@<X1>, const applesauce::CF::TypeRef *a3@<X8>)
{
  *a3 = 0;
  applesauce::CF::make_StringRef(&cf, @"device name", a2);
  ASDT::IOUserClient::CopyProperty<applesauce::CF::StringRef>(this, &cf, a3);
  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_2416BC130(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  applesauce::CF::StringRef::~StringRef(va);
  applesauce::CF::StringRef::~StringRef(v3);
  _Unwind_Resume(a1);
}

void ASDT::IOA2UserClient::CopyDeviceManufacturer(ASDT::IOA2UserClient *this@<X0>, const __CFString *a2@<X1>, const applesauce::CF::TypeRef *a3@<X8>)
{
  *a3 = 0;
  applesauce::CF::make_StringRef(&cf, @"device manufacturer", a2);
  ASDT::IOUserClient::CopyProperty<applesauce::CF::StringRef>(this, &cf, a3);
  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_2416BC1B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  applesauce::CF::StringRef::~StringRef(va);
  applesauce::CF::StringRef::~StringRef(v3);
  _Unwind_Resume(a1);
}

uint64_t ASDT::IOA2UserClient::GetTransportType(ASDT::IOA2UserClient *this, const __CFString *a2)
{
  v5 = 0;
  applesauce::CF::make_StringRef(&cf, @"transport type", a2);
  ASDT::IOUserClient::CopyProperty<unsigned int>(this, &cf, &v5);
  if (cf)
  {
    CFRelease(cf);
  }

  return v5;
}

uint64_t ASDT::IOUserClient::CopyProperty<unsigned int>(ASDT::IOUserClient *a1, const applesauce::CF::StringRef *a2, const applesauce::CF::TypeRef *a3)
{
  cf = 0;
  if (ASDT::IOUserClient::CopyProperty(a1, a2, &cf))
  {
    v5 = ASDT::IOUserClient::ConvertValue(&cf, a3, v4);
  }

  else
  {
    v5 = 0;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v5;
}

void sub_2416BC2B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  applesauce::CF::TypeRef::~TypeRef(va);
  _Unwind_Resume(a1);
}

uint64_t ASDT::IOA2UserClient::GetClockDomain(ASDT::IOA2UserClient *this, const __CFString *a2)
{
  v5 = 0;
  applesauce::CF::make_StringRef(&cf, @"clock domain", a2);
  ASDT::IOUserClient::CopyProperty<unsigned int>(this, &cf, &v5);
  if (cf)
  {
    CFRelease(cf);
  }

  return v5;
}

uint64_t ASDT::IOA2UserClient::GetLatency(ASDT::IOA2UserClient *this, const __CFString *a2)
{
  v7 = 0;
  if (a2)
  {
    v3 = @"input latency";
  }

  else
  {
    v3 = @"output latency";
  }

  applesauce::CF::make_StringRef(&cf, v3, a2);
  ASDT::IOUserClient::CopyProperty<unsigned int>(this, &cf, &v7);
  v4 = v7;
  if (cf)
  {
    CFRelease(cf);
  }

  return v4;
}

uint64_t ASDT::IOA2UserClient::GetRingBufferSize(ASDT::IOA2UserClient *this, const __CFString *a2)
{
  v5 = 0;
  applesauce::CF::make_StringRef(&cf, @"io buffer frame size", a2);
  ASDT::IOUserClient::CopyProperty<unsigned int>(this, &cf, &v5);
  if (cf)
  {
    CFRelease(cf);
  }

  return v5;
}

uint64_t ASDT::IOA2UserClient::GetSafetyOffset(ASDT::IOA2UserClient *this, const __CFString *a2)
{
  v7 = 0;
  if (a2)
  {
    v3 = @"input safety offset";
  }

  else
  {
    v3 = @"output safety offset";
  }

  applesauce::CF::make_StringRef(&cf, v3, a2);
  ASDT::IOUserClient::CopyProperty<unsigned int>(this, &cf, &v7);
  v4 = v7;
  if (cf)
  {
    CFRelease(cf);
  }

  return v4;
}

uint64_t ASDT::IOA2UserClient::SupportsPreWarming(ASDT::IOA2UserClient *this, const __CFString *a2)
{
  v5 = 0;
  applesauce::CF::make_StringRef(&cf, @"supports prewarming", a2);
  ASDT::IOUserClient::CopyProperty<BOOL>(this, &cf, &v5);
  if (cf)
  {
    CFRelease(cf);
  }

  return v5;
}

uint64_t ASDT::IOUserClient::CopyProperty<BOOL>(ASDT::IOUserClient *a1, const applesauce::CF::StringRef *a2, const applesauce::CF::TypeRef *a3)
{
  cf = 0;
  if (ASDT::IOUserClient::CopyProperty(a1, a2, &cf))
  {
    v5 = ASDT::IOUserClient::ConvertValue(&cf, a3, v4);
  }

  else
  {
    v5 = 0;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v5;
}

void sub_2416BC594(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  applesauce::CF::TypeRef::~TypeRef(va);
  _Unwind_Resume(a1);
}

uint64_t ASDT::IOA2UserClient::GetNominalSampleRate(ASDT::IOA2UserClient *this, const __CFString *a2)
{
  v5 = 0;
  applesauce::CF::make_StringRef(&cf, @"sample rate", a2);
  ASDT::IOUserClient::CopyProperty<long long>(this, &cf, &v5);
  if (cf)
  {
    CFRelease(cf);
  }

  return ASDT::IOAudio2::Helpers::Float64FromFixed64(v5);
}

uint64_t ASDT::IOUserClient::CopyProperty<long long>(ASDT::IOUserClient *a1, const applesauce::CF::StringRef *a2, const applesauce::CF::TypeRef *a3)
{
  cf = 0;
  if (ASDT::IOUserClient::CopyProperty(a1, a2, &cf))
  {
    v5 = ASDT::IOUserClient::ConvertValue(&cf, a3, v4);
  }

  else
  {
    v5 = 0;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v5;
}

void sub_2416BC684(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  applesauce::CF::TypeRef::~TypeRef(va);
  _Unwind_Resume(a1);
}

BOOL ASDT::IOA2UserClient::SetNominalSampleRate(ASDT::IOA2UserClient *this, double a2)
{
  v8 = ASDT::IOAudio2::Helpers::Fixed64FromFloat64(this, a2);
  v3 = ASDT::IOUserClient::CallMethod(this, 4, 0, 0, &v8, 8, 0, 0, 0, 0, 1);
  v5 = v3;
  if (v3)
  {
    v6 = ASDTIOA2LogType(v3, v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      ASDT::IOA2UserClient::SetNominalSampleRate();
    }
  }

  return v5 == 0;
}

uint64_t ASDT::IOA2UserClient::IsRunning(ASDT::IOA2UserClient *this, const __CFString *a2)
{
  v5 = 0;
  applesauce::CF::make_StringRef(&cf, @"is running", a2);
  ASDT::IOUserClient::CopyProperty<BOOL>(this, &cf, &v5);
  if (cf)
  {
    CFRelease(cf);
  }

  return v5;
}

void ASDT::IOA2UserClient::CopyDefaultChannelLayout(ASDT::IOA2UserClient *this@<X0>, const __CFString *a2@<X1>, const applesauce::CF::TypeRef *a3@<X8>)
{
  if (a2)
  {
    v5 = @"input channel layout";
  }

  else
  {
    v5 = @"output channel layout";
  }

  applesauce::CF::make_StringRef(&cf, v5, a2);
  *a3 = 0;
  ASDT::IOUserClient::CopyProperty<applesauce::CF::ArrayRef>(this, &cf, a3);
  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_2416BC820(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  applesauce::CF::ArrayRef::~ArrayRef(v10);
  applesauce::CF::StringRef::~StringRef(&a10);
  _Unwind_Resume(a1);
}

uint64_t ASDT::IOUserClient::CopyProperty<applesauce::CF::ArrayRef>(ASDT::IOUserClient *a1, const applesauce::CF::StringRef *a2, const applesauce::CF::TypeRef *a3)
{
  cf = 0;
  if (ASDT::IOUserClient::CopyProperty(a1, a2, &cf))
  {
    v5 = ASDT::IOUserClient::ConvertValue(&cf, a3, v4);
  }

  else
  {
    v5 = 0;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v5;
}

void sub_2416BC8A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  applesauce::CF::TypeRef::~TypeRef(va);
  _Unwind_Resume(a1);
}

void applesauce::CF::ArrayRef::~ArrayRef(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

void ASDT::IOA2UserClient::CopyDefaultChannelLayoutData(ASDT::IOA2UserClient *this@<X0>, const __CFString *a2@<X1>, CFDataRef *a3@<X8>)
{
  ASDT::IOA2UserClient::CopyDefaultChannelLayout(this, a2, &theArray);
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    v5 = Count;
    if (Count <= 1)
    {
      v6 = 1;
    }

    else
    {
      v6 = Count;
    }

    LOBYTE(cf) = 0;
    std::vector<char>::vector[abi:ne200100](&__p, 20 * v6 + 12, &cf);
    v7 = __p;
    *__p = 0;
    v7[2] = v5;
    v8 = v27 - v7;
    if ((v27 - v7 - 12) / 0x14uLL < v5)
    {
      __assert_rtn("GetNumberChannelDescriptions", "CoreAudioBaseTypes.hpp", 2252, "GetAudioChannelLayout().mNumberChannelDescriptions <= (mStorage.size() - kHeaderSize) / sizeof(AudioChannelDescription)");
    }

    if (v5)
    {
      v9 = 0;
      v10 = 0;
      do
      {
        if (!theArray)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          MEMORY[0x245CED520](exception, "Could not construct");
          __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        }

        valuePtr = -1;
        v24 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
        if (!v24)
        {
          v18 = __cxa_allocate_exception(0x10uLL);
          MEMORY[0x245CED520](v18, "Could not construct");
          __cxa_throw(v18, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        }

        applesauce::CF::at_or<applesauce::CF::NumberRef>(&v24, &cf, theArray, v10);
        if (!cf)
        {
          v17 = __cxa_allocate_exception(0x10uLL);
          MEMORY[0x245CED520](v17, "Could not construct");
          __cxa_throw(v17, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        }

        v11 = applesauce::CF::convert_to<unsigned int,0>(cf);
        v12 = *(__p + 2);
        if (v12 > (v27 - __p - 12) / 0x14uLL)
        {
          __assert_rtn("GetNumberChannelDescriptions", "CoreAudioBaseTypes.hpp", 2252, "GetAudioChannelLayout().mNumberChannelDescriptions <= (mStorage.size() - kHeaderSize) / sizeof(AudioChannelDescription)");
        }

        if (v10 >= v12)
        {
          v20 = __cxa_allocate_exception(0x10uLL);
          std::logic_error::logic_error(v20, "accessing a CA::ChannelLayout with an out-of-range index");
          v20->__vftable = (MEMORY[0x277D828E8] + 16);
          __cxa_throw(v20, off_278CE8B30, MEMORY[0x277D825F8]);
        }

        *(__p + v9 + 12) = v11;
        if (cf)
        {
          CFRelease(cf);
        }

        if (v24)
        {
          CFRelease(v24);
        }

        v7 = __p;
        v13 = *(__p + 2);
        v8 = v27 - __p;
        if (v13 > (v27 - __p - 12) / 0x14uLL)
        {
          __assert_rtn("GetNumberChannelDescriptions", "CoreAudioBaseTypes.hpp", 2252, "GetAudioChannelLayout().mNumberChannelDescriptions <= (mStorage.size() - kHeaderSize) / sizeof(AudioChannelDescription)");
        }

        if (v10 >= v13)
        {
          v21 = __cxa_allocate_exception(0x10uLL);
          std::logic_error::logic_error(v21, "accessing a CA::ChannelLayout with an out-of-range index");
          v21->__vftable = (MEMORY[0x277D828E8] + 16);
          __cxa_throw(v21, off_278CE8B30, MEMORY[0x277D825F8]);
        }

        ++v10;
        v14 = __p + v9;
        *(v14 + 2) = 0;
        *(v14 + 3) = 0;
        v9 += 20;
      }

      while (v10 < v13);
    }

    v15 = CFDataCreate(0, v7, v8);
    if (!v15)
    {
      v22 = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x245CED520](v22, "Could not construct");
      __cxa_throw(v22, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    *a3 = v15;
    v16 = CFGetTypeID(v15);
    if (v16 != CFDataGetTypeID())
    {
      v23 = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x245CED520](v23, "Could not construct");
      __cxa_throw(v23, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    if (__p)
    {
      v27 = __p;
      operator delete(__p);
    }

    if (theArray)
    {
      CFRelease(theArray);
    }
  }

  else
  {
    *a3 = 0;
  }
}

void sub_2416BCCF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, uint64_t a17, const void *a18)
{
  __cxa_free_exception(v19);
  applesauce::CF::ObjectRef<__CFData const*>::~ObjectRef(v18);
  if (__p)
  {
    operator delete(__p);
  }

  applesauce::CF::ArrayRef::~ArrayRef(&a18);
  _Unwind_Resume(a1);
}

void applesauce::CF::NumberRef::~NumberRef(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t ASDT::IOA2UserClient::WantsDoIOTrapCall(ASDT::IOA2UserClient *this, const __CFString *a2)
{
  if (a2)
  {
    v3 = @"wants input trap";
  }

  else
  {
    v3 = @"wants output trap";
  }

  applesauce::CF::make_StringRef(&cf, v3, a2);
  v6 = 0;
  ASDT::IOUserClient::CopyProperty<BOOL>(this, &cf, &v6);
  v4 = v6;
  if (cf)
  {
    CFRelease(cf);
  }

  return v4;
}

void sub_2416BCE80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  applesauce::CF::StringRef::~StringRef(va);
  _Unwind_Resume(a1);
}

uint64_t ASDT::IOA2UserClient::GetHogModeOwner(ASDT::IOA2UserClient *this, const __CFString *a2)
{
  v8 = -1;
  applesauce::CF::make_StringRef(cf, @"exclusive access owner", a2);
  v3 = ASDT::IOUserClient::CopyProperty<int>(this, cf, &v8);
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  if (v3)
  {
    caulk::platform::process_name(cf, v8);
    if (v7 < 0)
    {
      v5 = cf[1];
      operator delete(cf[0]);
      if (v5)
      {
        return v8;
      }

      goto LABEL_6;
    }

    if (!v7)
    {
LABEL_6:
      v8 = -1;
      ASDT::IOA2UserClient::SetHogModeOwner(this, 0xFFFFFFFFLL);
    }
  }

  return v8;
}

uint64_t ASDT::IOUserClient::CopyProperty<int>(ASDT::IOUserClient *a1, const applesauce::CF::StringRef *a2, const applesauce::CF::TypeRef *a3)
{
  cf = 0;
  if (ASDT::IOUserClient::CopyProperty(a1, a2, &cf))
  {
    v5 = ASDT::IOUserClient::ConvertValue(&cf, a3, v4);
  }

  else
  {
    v5 = 0;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v5;
}

void sub_2416BCFB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  applesauce::CF::TypeRef::~TypeRef(va);
  _Unwind_Resume(a1);
}

uint64_t ASDT::IOA2UserClient::SetHogModeOwner(ASDT::IOA2UserClient *this, const __CFString *a2)
{
  applesauce::CF::make_StringRef(&cf, @"exclusive access owner", a2);
  v3 = ASDT::IOUserClient::SetProperty(this, &cf);
  if (cf)
  {
    CFRelease(cf);
  }

  return v3;
}

void sub_2416BD030(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  applesauce::CF::StringRef::~StringRef(va);
  _Unwind_Resume(a1);
}

void ASDT::IOA2UserClient::CopyHeadsetInfo(ASDT::IOA2UserClient *this@<X0>, const __CFString *a2@<X1>, const applesauce::CF::TypeRef *a3@<X8>)
{
  *a3 = 0;
  applesauce::CF::make_StringRef(&cf, @"headset info", a2);
  ASDT::IOUserClient::CopyProperty<applesauce::CF::DictionaryRef>(this, &cf, a3);
  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_2416BD0A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  applesauce::CF::StringRef::~StringRef(va);
  applesauce::CF::DictionaryRef::~DictionaryRef(v3);
  _Unwind_Resume(a1);
}

uint64_t ASDT::IOUserClient::CopyProperty<applesauce::CF::DictionaryRef>(ASDT::IOUserClient *a1, const applesauce::CF::StringRef *a2, const applesauce::CF::TypeRef *a3)
{
  cf = 0;
  if (ASDT::IOUserClient::CopyProperty(a1, a2, &cf))
  {
    v5 = ASDT::IOUserClient::ConvertValue(&cf, a3, v4);
  }

  else
  {
    v5 = 0;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v5;
}

void sub_2416BD12C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  applesauce::CF::TypeRef::~TypeRef(va);
  _Unwind_Resume(a1);
}

void ASDT::IOA2UserClient::CopyCustomPropertyInfo(ASDT::IOA2UserClient *this@<X0>, const __CFString *a2@<X1>, const applesauce::CF::TypeRef *a3@<X8>)
{
  *a3 = 0;
  applesauce::CF::make_StringRef(&cf, @"custom property info", a2);
  ASDT::IOUserClient::CopyProperty<applesauce::CF::ArrayRef>(this, &cf, a3);
  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_2416BD1A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  applesauce::CF::StringRef::~StringRef(va);
  applesauce::CF::ArrayRef::~ArrayRef(v3);
  _Unwind_Resume(a1);
}

uint64_t ASDT::IOA2UserClient::SupportsClientDescription(ASDT::IOA2UserClient *this, const __CFString *a2)
{
  v5 = 0;
  applesauce::CF::make_StringRef(&cf, @"supports client description", a2);
  ASDT::IOUserClient::CopyProperty<BOOL>(this, &cf, &v5);
  if (cf)
  {
    CFRelease(cf);
  }

  return v5;
}

BOOL ASDT::IOA2UserClient::SetClientDescription(ASDT::IOA2UserClient *this, unint64_t a2, double a3)
{
  v9[2] = *MEMORY[0x277D85DE8];
  v9[0] = a2;
  v9[1] = ASDT::IOAudio2::Helpers::Fixed64FromFloat64(this, a3);
  v4 = ASDT::IOUserClient::CallMethod(this, 12, v9, 2, 0, 0, 0, 0, 0, 0, 1);
  v6 = v4;
  if (v4)
  {
    v7 = ASDTIOA2LogType(v4, v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      ASDT::IOA2UserClient::SetClientDescription();
    }
  }

  return v6 == 0;
}

uint64_t ASDT::IOA2UserClient::SupportsInputStreamInjection(ASDT::IOA2UserClient *this, const __CFString *a2)
{
  v5 = 0;
  applesauce::CF::make_StringRef(&cf, @"input stream injection", a2);
  ASDT::IOUserClient::CopyProperty<BOOL>(this, &cf, &v5);
  if (cf)
  {
    CFRelease(cf);
  }

  return v5;
}

void sub_2416BD3D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  applesauce::CF::StringRef::~StringRef(va);
  applesauce::CF::StringRef::~StringRef(v3);
  _Unwind_Resume(a1);
}

uint64_t ASDT::IOUserClient::CopyProperty<applesauce::CF::StringRef>(ASDT::IOUserClient *a1, uint64_t a2, const applesauce::CF::TypeRef *a3, applesauce::CF::TypeRef *a4)
{
  cf = 0;
  if (ASDT::IOUserClient::CopyProperty(a1, a2, &cf, a4))
  {
    v6 = ASDT::IOUserClient::ConvertValue(&cf, a3, v5);
  }

  else
  {
    v6 = 0;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v6;
}

void sub_2416BD460(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  applesauce::CF::TypeRef::~TypeRef(va);
  _Unwind_Resume(a1);
}

uint64_t ASDT::IOA2UserClient::IsPrivate(ASDT::IOA2UserClient *this, const __CFString *a2)
{
  v6 = 0;
  applesauce::CF::make_StringRef(&cf, @"is private", a2);
  ASDT::IOUserClient::CopyProperty<BOOL>(this, &cf, &v6, v3);
  if (cf)
  {
    CFRelease(cf);
  }

  return v6;
}

uint64_t ASDT::IOUserClient::CopyProperty<BOOL>(ASDT::IOUserClient *a1, uint64_t a2, const applesauce::CF::TypeRef *a3, applesauce::CF::TypeRef *a4)
{
  cf = 0;
  if (ASDT::IOUserClient::CopyProperty(a1, a2, &cf, a4))
  {
    v6 = ASDT::IOUserClient::ConvertValue(&cf, a3, v5);
  }

  else
  {
    v6 = 0;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v6;
}

void sub_2416BD54C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  applesauce::CF::TypeRef::~TypeRef(va);
  _Unwind_Resume(a1);
}

void ASDT::IOA2UserClient::CopyStreamList(ASDT::IOA2UserClient *this@<X0>, const __CFString *a2@<X1>, const applesauce::CF::TypeRef *a3@<X8>)
{
  *a3 = 0;
  if (a2)
  {
    v5 = @"input streams";
  }

  else
  {
    v5 = @"output streams";
  }

  applesauce::CF::make_StringRef(&cf, v5, a2);
  ASDT::IOUserClient::CopyProperty<applesauce::CF::ArrayRef>(this, &cf, a3);
  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_2416BD5D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  applesauce::CF::StringRef::~StringRef(va);
  applesauce::CF::ArrayRef::~ArrayRef(v3);
  _Unwind_Resume(a1);
}

CFIndex ASDT::IOA2UserClient::GetNumberStreams(ASDT::IOA2UserClient *this, const __CFString *a2)
{
  ASDT::IOA2UserClient::CopyStreamList(this, a2, &theArray);
  if (!theArray)
  {
    return 0;
  }

  Count = CFArrayGetCount(theArray);
  if (theArray)
  {
    CFRelease(theArray);
  }

  return Count;
}

void ASDT::IOA2UserClient::CopyStreamDictionaryByIndex(ASDT::IOA2UserClient *this@<X0>, const __CFString *a2@<X1>, unsigned int a3@<W2>, void *a4@<X8>)
{
  v11 = 0;
  ASDT::IOA2UserClient::CopyStreamList(this, a2, &v10);
  if (!v10)
  {
    *a4 = 0;
    return;
  }

  applesauce::CF::details::at_as<applesauce::CF::DictionaryRef>(v10, a3, &cf);
  if (v9 != 1)
  {
    *a4 = 0;
    v11 = 0;
    goto LABEL_11;
  }

  v6 = cf;
  if (!cf)
  {
    *a4 = 0;
LABEL_9:
    if (cf)
    {
      CFRelease(cf);
    }

    goto LABEL_11;
  }

  CFRetain(cf);
  v7 = v9;
  *a4 = v6;
  if (v7)
  {
    goto LABEL_9;
  }

LABEL_11:
  if (v10)
  {
    CFRelease(v10);
  }
}

void sub_2416BD704(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  applesauce::CF::DictionaryRef::~DictionaryRef(va);
  _Unwind_Resume(a1);
}

uint64_t std::optional<applesauce::CF::DictionaryRef>::~optional(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    v2 = *a1;
    if (*a1)
    {
      CFRelease(v2);
    }
  }

  return a1;
}

void ASDT::IOA2UserClient::CopyStreamDictionaryByID(ASDT::IOA2UserClient *this@<X0>, int a2@<W1>, const __CFDictionary **a3@<X8>)
{
  v10 = 0;
  v9 = 0;
  ASDT::IOA2UserClient::CopyStreamList(this, 1, &v7);
  CopyStreamDictionaryByIDFromList(&cf, &v7, &v9, a2);
  v6 = cf;
  v10 = cf;
  cf = 0;
  if (v7)
  {
    CFRelease(v7);
  }

  if (v6)
  {
    *a3 = v6;
  }

  else
  {
    ASDT::IOA2UserClient::CopyStreamList(this, 0, &cf);
    CopyStreamDictionaryByIDFromList(a3, &cf, &v9, a2);
    if (cf)
    {
      CFRelease(cf);
    }
  }
}

void sub_2416BD80C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, const void *);
  v6 = va_arg(va1, void);
  applesauce::CF::ArrayRef::~ArrayRef(va);
  applesauce::CF::DictionaryRef::~DictionaryRef(va1);
  _Unwind_Resume(a1);
}

void CopyStreamDictionaryByIDFromList(const __CFDictionary **__return_ptr a1@<X8>, CFArrayRef *a2@<X0>, unsigned int *a3@<X2>, int a4@<W1>)
{
  v28 = 0;
  *a3 = -1;
  v6 = *a2;
  if (v6)
  {
    v25 = v6;
    v26 = 0;
    v9 = 0;
    Count = CFArrayGetCount(v6);
    while (1)
    {
      v10 = *a2;
      v11 = *a2 ? CFArrayGetCount(*a2) : 0;
      if (!v25 || v26 == Count)
      {
        break;
      }

      if (v25 == v10 && v26 == v11)
      {
        break;
      }

      applesauce::CF::ArrayRef_iterator<applesauce::CF::TypeRef>::operator->(&v25, &cf);
      v15 = 0;
      if (cf)
      {
        v14 = CFGetTypeID(cf);
        if (v14 == CFDictionaryGetTypeID())
        {
          v15 = 1;
        }
      }

      if (cf)
      {
        CFRelease(cf);
      }

      if (v15)
      {
        applesauce::CF::details::at_to<applesauce::CF::TypeRef>(v25, v26, &cf);
        applesauce::CF::TypeRef::operator applesauce::CF::DictionaryRef(&cf, a1);
        if (cf)
        {
          CFRelease(cf);
        }

        if (!*a1)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          MEMORY[0x245CED520](exception, "Could not construct");
          __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        }

        applesauce::CF::make_StringRef(&v22, @"stream ID", v16);
        applesauce::CF::details::find_at_key_or_optional<applesauce::CF::NumberRef,applesauce::CF::StringRef>(&cf, *a1, &v22);
        if (v22)
        {
          CFRelease(v22);
        }

        if (v24)
        {
          if (!cf)
          {
            v21 = __cxa_allocate_exception(0x10uLL);
            MEMORY[0x245CED520](v21, "Could not construct");
            __cxa_throw(v21, MEMORY[0x277D82760], MEMORY[0x277D82600]);
          }

          v17 = applesauce::CF::convert_as<unsigned int,0>(cf);
          v18 = 0;
          v19 = 0;
          if ((v17 & 0x100000000) != 0 && v17 == a4)
          {
            *a3 = v9;
            v18 = 1;
            v19 = 1;
          }
        }

        else
        {
          v19 = 0;
          v18 = 4;
        }

        if (v24 == 1 && cf)
        {
          CFRelease(cf);
        }

        if ((v19 & 1) == 0)
        {
          if (*a1)
          {
            CFRelease(*a1);
          }
        }

        if ((v18 | 4) != 4)
        {
          return;
        }
      }

      ++v26;
      ++v9;
    }
  }

  *a1 = 0;
}

void sub_2416BDA94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  std::optional<applesauce::CF::NumberRef>::~optional(va);
  applesauce::CF::DictionaryRef::~DictionaryRef(v5);
  applesauce::CF::DictionaryRef::~DictionaryRef(va1);
  _Unwind_Resume(a1);
}

uint64_t ASDT::IOA2UserClient::GetStreamInfo_ID(const __CFDictionary **this, __CFString *a2, unsigned int *a3)
{
  if (!*this)
  {
    return 0;
  }

  applesauce::CF::make_StringRef(&cf, @"stream ID", a2);
  v5 = applesauce::CF::details::find_at_key_or_optional<unsigned int,applesauce::CF::StringRef>(*this, &cf);
  if (cf)
  {
    CFRelease(cf);
  }

  if ((v5 & 0x100000000) == 0)
  {
    return 0;
  }

  LODWORD(a2->isa) = v5;
  return 1;
}

void ASDT::IOA2UserClient::ConstructDictionaryFromASBD(ASDT::IOA2UserClient *this@<X0>, CFDictionaryRef *a2@<X8>)
{
  v27[0] = 0;
  v27[1] = 0;
  v26 = v27;
  v4 = ASDT::IOAudio2::Helpers::Fixed64FromFloat64(this, *this);
  applesauce::CF::make_StringRef(&v25, @"sample rate", v5);
  valuePtr = v4;
  cf = CFNumberCreate(0, kCFNumberLongLongType, &valuePtr);
  if (!cf)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x245CED520](exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  std::__tree<std::__value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::__map_value_compare<applesauce::CF::StringRef,std::__value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::less<applesauce::CF::StringRef>,true>,std::allocator<std::__value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>>>::__emplace_unique_key_args<applesauce::CF::StringRef,applesauce::CF::StringRef,applesauce::CF::NumberRef>(&v26, &v25, &v25, &cf);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v25)
  {
    CFRelease(v25);
  }

  applesauce::CF::make_StringRef(&valuePtr, @"format ID", v6, cf);
  LODWORD(cf) = *(this + 2);
  v25 = CFNumberCreate(0, kCFNumberIntType, &cf);
  if (!v25)
  {
    v17 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x245CED520](v17, "Could not construct");
    __cxa_throw(v17, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  std::__tree<std::__value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::__map_value_compare<applesauce::CF::StringRef,std::__value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::less<applesauce::CF::StringRef>,true>,std::allocator<std::__value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>>>::__emplace_unique_key_args<applesauce::CF::StringRef,applesauce::CF::StringRef,applesauce::CF::NumberRef>(&v26, &valuePtr, &valuePtr, &v25);
  if (v25)
  {
    CFRelease(v25);
  }

  if (valuePtr)
  {
    CFRelease(valuePtr);
  }

  v9 = *(this + 2);
  v8 = *(this + 3);
  applesauce::CF::make_StringRef(&valuePtr, @"format flags", v7);
  v10 = v8 | 0x40;
  if (v9 != 1819304813)
  {
    v10 = v8;
  }

  LODWORD(cf) = v10;
  v25 = CFNumberCreate(0, kCFNumberIntType, &cf);
  if (!v25)
  {
    v18 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x245CED520](v18, "Could not construct");
    __cxa_throw(v18, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  std::__tree<std::__value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::__map_value_compare<applesauce::CF::StringRef,std::__value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::less<applesauce::CF::StringRef>,true>,std::allocator<std::__value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>>>::__emplace_unique_key_args<applesauce::CF::StringRef,applesauce::CF::StringRef,applesauce::CF::NumberRef>(&v26, &valuePtr, &valuePtr, &v25);
  if (v25)
  {
    CFRelease(v25);
  }

  if (valuePtr)
  {
    CFRelease(valuePtr);
  }

  applesauce::CF::make_StringRef(&valuePtr, @"bytes per packet", v11);
  LODWORD(cf) = *(this + 4);
  v25 = CFNumberCreate(0, kCFNumberIntType, &cf);
  if (!v25)
  {
    v19 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x245CED520](v19, "Could not construct");
    __cxa_throw(v19, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  std::__tree<std::__value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::__map_value_compare<applesauce::CF::StringRef,std::__value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::less<applesauce::CF::StringRef>,true>,std::allocator<std::__value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>>>::__emplace_unique_key_args<applesauce::CF::StringRef,applesauce::CF::StringRef,applesauce::CF::NumberRef>(&v26, &valuePtr, &valuePtr, &v25);
  if (v25)
  {
    CFRelease(v25);
  }

  if (valuePtr)
  {
    CFRelease(valuePtr);
  }

  applesauce::CF::make_StringRef(&valuePtr, @"frames per packet", v12);
  LODWORD(cf) = *(this + 5);
  v25 = CFNumberCreate(0, kCFNumberIntType, &cf);
  if (!v25)
  {
    v20 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x245CED520](v20, "Could not construct");
    __cxa_throw(v20, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  std::__tree<std::__value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::__map_value_compare<applesauce::CF::StringRef,std::__value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::less<applesauce::CF::StringRef>,true>,std::allocator<std::__value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>>>::__emplace_unique_key_args<applesauce::CF::StringRef,applesauce::CF::StringRef,applesauce::CF::NumberRef>(&v26, &valuePtr, &valuePtr, &v25);
  if (v25)
  {
    CFRelease(v25);
  }

  if (valuePtr)
  {
    CFRelease(valuePtr);
  }

  applesauce::CF::make_StringRef(&valuePtr, @"bytes per frame", v13);
  LODWORD(cf) = *(this + 6);
  v25 = CFNumberCreate(0, kCFNumberIntType, &cf);
  if (!v25)
  {
    v21 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x245CED520](v21, "Could not construct");
    __cxa_throw(v21, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  std::__tree<std::__value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::__map_value_compare<applesauce::CF::StringRef,std::__value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::less<applesauce::CF::StringRef>,true>,std::allocator<std::__value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>>>::__emplace_unique_key_args<applesauce::CF::StringRef,applesauce::CF::StringRef,applesauce::CF::NumberRef>(&v26, &valuePtr, &valuePtr, &v25);
  if (v25)
  {
    CFRelease(v25);
  }

  if (valuePtr)
  {
    CFRelease(valuePtr);
  }

  applesauce::CF::make_StringRef(&valuePtr, @"channels per frame", v14);
  LODWORD(cf) = *(this + 7);
  v25 = CFNumberCreate(0, kCFNumberIntType, &cf);
  if (!v25)
  {
    v22 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x245CED520](v22, "Could not construct");
    __cxa_throw(v22, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  std::__tree<std::__value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::__map_value_compare<applesauce::CF::StringRef,std::__value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::less<applesauce::CF::StringRef>,true>,std::allocator<std::__value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>>>::__emplace_unique_key_args<applesauce::CF::StringRef,applesauce::CF::StringRef,applesauce::CF::NumberRef>(&v26, &valuePtr, &valuePtr, &v25);
  if (v25)
  {
    CFRelease(v25);
  }

  if (valuePtr)
  {
    CFRelease(valuePtr);
  }

  applesauce::CF::make_StringRef(&valuePtr, @"bits per channel", v15);
  LODWORD(cf) = *(this + 8);
  v25 = CFNumberCreate(0, kCFNumberIntType, &cf);
  if (!v25)
  {
    v23 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x245CED520](v23, "Could not construct");
    __cxa_throw(v23, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  std::__tree<std::__value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::__map_value_compare<applesauce::CF::StringRef,std::__value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::less<applesauce::CF::StringRef>,true>,std::allocator<std::__value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>>>::__emplace_unique_key_args<applesauce::CF::StringRef,applesauce::CF::StringRef,applesauce::CF::NumberRef>(&v26, &valuePtr, &valuePtr, &v25);
  if (v25)
  {
    CFRelease(v25);
  }

  if (valuePtr)
  {
    CFRelease(valuePtr);
  }

  *a2 = applesauce::CF::details::make_CFDictionaryRef<applesauce::CF::StringRef,applesauce::CF::TypeRef>(&v26);
  std::__tree<std::__value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::__map_value_compare<applesauce::CF::StringRef,std::__value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::less<applesauce::CF::StringRef>,true>,std::allocator<std::__value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>>>::destroy(&v26, v27[0]);
}

void sub_2416BE0D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v6 = va_arg(va2, void);
  v8 = va_arg(va2, void *);
  v9 = va_arg(va2, void);
  applesauce::CF::ObjectRef<__CFNumber const*>::~ObjectRef(va);
  applesauce::CF::StringRef::~StringRef(va2);
  std::__tree<std::__value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::__map_value_compare<applesauce::CF::StringRef,std::__value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::less<applesauce::CF::StringRef>,true>,std::allocator<std::__value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>>>::destroy(va1, v8);
  _Unwind_Resume(a1);
}

uint64_t ASDT::IOA2UserClient::ConstructASBDFromDictionary(const __CFDictionary **this, __CFString *a2, AudioStreamBasicDescription *a3)
{
  if (!*this)
  {
    return 0;
  }

  a2[1].isa = 0;
  *&a2->isa = 0u;
  *&a2->data = 0u;
  if (!*this)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
  }

  applesauce::CF::make_StringRef(&cf, @"sample rate", a2);
  v5 = applesauce::CF::details::find_at_key_or_optional<unsigned long long,applesauce::CF::StringRef>(*this, &cf);
  v7 = v6;
  if (cf)
  {
    CFRelease(cf);
  }

  if ((v7 & 1) == 0)
  {
    return 0;
  }

  ASDT::IOAudio2::Helpers::Float64FromFixed64(v5);
  a2->isa = v8;
  return FillBasicFormatInfoFromDict(this, a2);
}

uint64_t FillBasicFormatInfoFromDict(const __CFDictionary **a1, const __CFString *a2)
{
  if (!*a1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
  }

  applesauce::CF::make_StringRef(&cf, @"format ID", a2);
  v5 = applesauce::CF::details::find_at_key_or_optional<unsigned int,applesauce::CF::StringRef>(*a1, &cf);
  if (cf)
  {
    CFRelease(cf);
  }

  if ((v5 & 0x100000000) == 0)
  {
    return 0;
  }

  LODWORD(a2->info) = v5;
  if (!*a1)
  {
    v20 = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(v20);
  }

  applesauce::CF::make_StringRef(&cf, @"format flags", v4);
  v7 = applesauce::CF::details::find_at_key_or_optional<unsigned int,applesauce::CF::StringRef>(*a1, &cf);
  if (cf)
  {
    CFRelease(cf);
  }

  if ((v7 & 0x100000000) == 0)
  {
    return 0;
  }

  HIDWORD(a2->info) = v7;
  if (!*a1)
  {
    v21 = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(v21);
  }

  applesauce::CF::make_StringRef(&cf, @"bytes per packet", v6);
  v9 = applesauce::CF::details::find_at_key_or_optional<unsigned int,applesauce::CF::StringRef>(*a1, &cf);
  if (cf)
  {
    CFRelease(cf);
  }

  if ((v9 & 0x100000000) == 0)
  {
    return 0;
  }

  LODWORD(a2->data) = v9;
  if (!*a1)
  {
    v22 = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(v22);
  }

  applesauce::CF::make_StringRef(&cf, @"frames per packet", v8);
  v11 = applesauce::CF::details::find_at_key_or_optional<unsigned int,applesauce::CF::StringRef>(*a1, &cf);
  if (cf)
  {
    CFRelease(cf);
  }

  if ((v11 & 0x100000000) == 0)
  {
    return 0;
  }

  HIDWORD(a2->data) = v11;
  if (!*a1)
  {
    v23 = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(v23);
  }

  applesauce::CF::make_StringRef(&cf, @"bytes per frame", v10);
  v13 = applesauce::CF::details::find_at_key_or_optional<unsigned int,applesauce::CF::StringRef>(*a1, &cf);
  if (cf)
  {
    CFRelease(cf);
  }

  if ((v13 & 0x100000000) == 0)
  {
    return 0;
  }

  LODWORD(a2->length) = v13;
  if (!*a1)
  {
    v24 = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(v24);
  }

  applesauce::CF::make_StringRef(&cf, @"channels per frame", v12);
  v14 = applesauce::CF::details::find_at_key_or_optional<unsigned int,applesauce::CF::StringRef>(*a1, &cf);
  if (cf)
  {
    CFRelease(cf);
  }

  if ((v14 & 0x100000000) == 0)
  {
    return 0;
  }

  HIDWORD(a2->length) = v14;
  applesauce::CF::DictionaryRef_proxy::DictionaryRef_proxy(&cf, a1);
  v15 = cf;
  applesauce::CF::make_StringRef(&cf, @"bits per channel", v16);
  v17 = applesauce::CF::details::find_at_key_or_optional<unsigned int,applesauce::CF::StringRef>(*v15, &cf);
  applesauce::CF::StringRef::~StringRef(&cf);
  if ((v17 & 0x100000000) == 0)
  {
    return 0;
  }

  LODWORD(a2[1].isa) = v17;
  if (LODWORD(a2->info) == 1819304813)
  {
    HIDWORD(a2->info) &= ~0x40u;
  }

  return 1;
}

uint64_t ASDT::IOA2UserClient::ConstructASRDFromDictionary(const __CFDictionary **this, __CFString *a2, AudioStreamRangedDescription *a3)
{
  if (!*this)
  {
    return 0;
  }

  a2[1].data = 0;
  *&a2->data = 0u;
  *&a2[1].isa = 0u;
  *&a2->isa = 0u;
  if (!*this)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
  }

  applesauce::CF::make_StringRef(&cf, @"min sample rate", a2);
  v5 = applesauce::CF::details::find_at_key_or_optional<unsigned long long,applesauce::CF::StringRef>(*this, &cf);
  v7 = v6;
  if (cf)
  {
    CFRelease(cf);
  }

  if ((v7 & 1) == 0)
  {
    return 0;
  }

  ASDT::IOAudio2::Helpers::Float64FromFixed64(v5);
  a2[1].info = v9;
  if (!*this)
  {
    v18 = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(v18);
  }

  applesauce::CF::make_StringRef(&cf, @"max sample rate", v8);
  v10 = applesauce::CF::details::find_at_key_or_optional<unsigned long long,applesauce::CF::StringRef>(*this, &cf);
  v12 = v11;
  if (cf)
  {
    CFRelease(cf);
  }

  if ((v12 & 1) == 0)
  {
    return 0;
  }

  ASDT::IOAudio2::Helpers::Float64FromFixed64(v10);
  a2[1].data = v13;
  v14 = *&a2[1].info == *&v13;
  info = 0;
  if (v14)
  {
    info = a2[1].info;
  }

  a2->isa = info;
  return FillBasicFormatInfoFromDict(this, a2);
}

uint64_t ASDT::IOA2UserClient::BestMatchForFormat(CFArrayRef *this, const applesauce::CF::ArrayRef *a2, AudioStreamRangedDescription *a3, AudioStreamBasicDescription *a4)
{
  v6 = *&a3->mFormat.mBytesPerPacket;
  v32[0] = *&a3->mFormat.mSampleRate;
  v32[1] = v6;
  v33 = *&a3->mFormat.mBitsPerChannel;
  v31 = 0;
  *&v32[0] = 0;
  if (a3->mFormat.mSampleRate == 0.0)
  {
    mSampleRate = *a2;
  }

  else
  {
    mSampleRate = a3->mFormat.mSampleRate;
  }

  Count = *this;
  v28 = Count;
  v29 = 0;
  if (Count)
  {
    Count = CFArrayGetCount(Count);
  }

  v9 = 0;
  v30 = Count;
  while (1)
  {
    v10 = *this;
    v11 = *this ? CFArrayGetCount(*this) : 0;
    if (!v28 || v29 == v30)
    {
      break;
    }

    if (v28 == v10 && v29 == v11)
    {
      break;
    }

    applesauce::CF::ArrayRef_iterator<applesauce::CF::TypeRef>::operator->(&v28, &cf);
    v15 = 0;
    if (*&cf.mSampleRate)
    {
      v14 = CFGetTypeID(*&cf.mSampleRate);
      if (v14 == CFDictionaryGetTypeID())
      {
        v15 = 1;
      }
    }

    if (*&cf.mSampleRate)
    {
      CFRelease(*&cf.mSampleRate);
    }

    if (v15)
    {
      applesauce::CF::details::at_to<applesauce::CF::TypeRef>(v28, v29, &cf);
      applesauce::CF::TypeRef::operator applesauce::CF::DictionaryRef(&cf, &v27);
      if (*&cf.mSampleRate)
      {
        CFRelease(*&cf.mSampleRate);
      }

      if (ASDT::IOA2UserClient::ConstructASRDFromDictionary(&v27, &cf, v16))
      {
        if (!v31)
        {
          v31 = v27;
          if (v27)
          {
            CFRetain(v27);
          }
        }

        if (CA::StreamDescription::IsEquivalent(v32, &cf, 1u, v17, v18) && v26[0] <= mSampleRate && v26[1] >= mSampleRate)
        {
          v19 = *&cf.mBytesPerPacket;
          *&a3->mFormat.mSampleRate = *&cf.mSampleRate;
          *&a3->mFormat.mBytesPerPacket = v19;
          *&a3->mFormat.mBitsPerChannel = *&cf.mBitsPerChannel;
          a3->mFormat.mSampleRate = mSampleRate;
          v9 = 1;
        }
      }

      if (v27)
      {
        CFRelease(v27);
      }
    }

    v29 = (v29 + 1);
  }

  if (v9)
  {
    goto LABEL_41;
  }

  if (ASDT::IOA2UserClient::ConstructASRDFromDictionary(&v31, &cf, a3))
  {
    v21 = *&cf.mBytesPerPacket;
    *&a3->mFormat.mSampleRate = *&cf.mSampleRate;
    *&a3->mFormat.mBytesPerPacket = v21;
    *&a3->mFormat.mBitsPerChannel = *&cf.mBitsPerChannel;
    ASDT::ValueRange::PickCommonSampleRate(v26, v20);
    a3->mFormat.mSampleRate = v22;
LABEL_41:
    v23 = 1;
    goto LABEL_43;
  }

  v23 = 0;
LABEL_43:
  if (v31)
  {
    CFRelease(v31);
  }

  return v23;
}

void sub_2416BE974(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  applesauce::CF::DictionaryRef::~DictionaryRef(va);
  _Unwind_Resume(a1);
}

void applesauce::CF::ArrayRef_iterator<applesauce::CF::TypeRef>::operator->(const __CFArray **a1@<X0>, void *a2@<X8>)
{
  applesauce::CF::details::at_to<applesauce::CF::TypeRef>(*a1, a1[1], &cf);
  applesauce::CF::ArrayRef_iterator<applesauce::CF::TypeRef>::iterator_proxy::iterator_proxy(a2, &cf);
  if (cf)
  {
    CFRelease(cf);
  }
}

const void *applesauce::CF::TypeRef::operator applesauce::CF::DictionaryRef@<X0>(const void **a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  if (!result)
  {
    goto LABEL_6;
  }

  v5 = CFGetTypeID(result);
  result = CFDictionaryGetTypeID();
  if (v5 != result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
  }

  v6 = *a1;
  if (v6)
  {
    CFRetain(v6);
    *a2 = v6;
    v7 = CFGetTypeID(v6);
    result = CFDictionaryGetTypeID();
    if (v7 != result)
    {
      v8 = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x245CED520](v8, "Could not construct");
      __cxa_throw(v8, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }
  }

  else
  {
LABEL_6:
    *a2 = 0;
  }

  return result;
}

void sub_2416BEB08(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  applesauce::CF::ObjectRef<__CFDictionary const*>::~ObjectRef(v1);
  _Unwind_Resume(a1);
}

void applesauce::CF::TypeRef::~TypeRef(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

BOOL CA::StreamDescription::IsEquivalent(CA::Implementation *a1, AudioStreamBasicDescription *a2, unsigned int a3, uint64_t a4, BOOL a5)
{
  v6 = *a1;
  if (a3)
  {
    if (v6 == 0.0 || (a2->mSampleRate != 0.0 ? (v9 = v6 == a2->mSampleRate) : (v9 = 1), v9))
    {
      v10 = *(a1 + 2);
      if (!v10 || (mFormatID = a2->mFormatID) == 0 || v10 == mFormatID)
      {
        v12 = *(a1 + 4);
        if (!v12 || (mBytesPerPacket = a2->mBytesPerPacket) == 0 || v12 == mBytesPerPacket)
        {
          v14 = *(a1 + 5);
          if (!v14 || (mFramesPerPacket = a2->mFramesPerPacket) == 0 || v14 == mFramesPerPacket)
          {
            v16 = *(a1 + 6);
            if (!v16 || (mBytesPerFrame = a2->mBytesPerFrame) == 0 || v16 == mBytesPerFrame)
            {
              v18 = *(a1 + 7);
              if (!v18 || (mChannelsPerFrame = a2->mChannelsPerFrame) == 0 || v18 == mChannelsPerFrame)
              {
                v20 = *(a1 + 8);
                if (!v20 || (mBitsPerChannel = a2->mBitsPerChannel) == 0 || v20 == mBitsPerChannel)
                {
                  v22 = 1;
                  if (v10)
                  {
                    if (a2->mFormatID)
                    {
                      v23 = *(a1 + 3);
                      if (v23)
                      {
                        mFormatFlags = a2->mFormatFlags;
                        if (mFormatFlags)
                        {
                          if (v10 == 1819304813)
                          {
                            v25 = ((a3 >> 1) & 1);
                            RegularizedFormatFlags = CA::Implementation::GetRegularizedFormatFlags(a1, v25);
                            return RegularizedFormatFlags == CA::Implementation::GetRegularizedFormatFlags(a2, v25);
                          }

                          else
                          {
                            return v23 == mFormatFlags;
                          }
                        }
                      }
                    }
                  }

                  return v22;
                }
              }
            }
          }
        }
      }
    }

    return 0;
  }

  if (v6 != a2->mSampleRate || *(a1 + 2) != a2->mFormatID || *(a1 + 4) != a2->mBytesPerPacket || *(a1 + 5) != a2->mFramesPerPacket || *(a1 + 7) != a2->mChannelsPerFrame || *(a1 + 8) != a2->mBitsPerChannel)
  {
    return 0;
  }

  v7 = ((a3 >> 1) & 1);

  return CA::Implementation::EquivalentFormatFlags(a1, a2, v7, 0);
}

uint64_t ASDT::IOA2UserClient::GetStreamInfo_CurrentFormat(const __CFDictionary **this, __CFString *a2, AudioStreamBasicDescription *a3)
{
  if (!*this)
  {
    return 0;
  }

  applesauce::CF::make_StringRef(&cf, @"current format", a2);
  applesauce::CF::details::find_at_key_or_optional<applesauce::CF::DictionaryRef,applesauce::CF::StringRef>(*this, &cf, &v15);
  v7 = cf;
  if (cf)
  {
    CFRelease(cf);
  }

  if ((v16 & 1) == 0)
  {
    v11 = ASDTIOA2LogType(v7, v5);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      ASDT::IOA2UserClient::GetStreamInfo_CurrentFormat();
    }

    goto LABEL_12;
  }

  v8 = ASDT::IOA2UserClient::ConstructASBDFromDictionary(&v15, a2, v6);
  if ((v8 & 1) == 0)
  {
    v12 = ASDTIOA2LogType(v8, v9);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      ASDT::IOA2UserClient::GetStreamInfo_CurrentFormat();
    }

LABEL_12:
    v10 = 0;
    goto LABEL_13;
  }

  v10 = 1;
LABEL_13:
  if (v16 == 1 && v15)
  {
    CFRelease(v15);
  }

  return v10;
}

void sub_2416BEE2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::optional<applesauce::CF::DictionaryRef>::~optional(va);
  _Unwind_Resume(a1);
}

void ASDT::IOA2UserClient::CopyStreamInfo_AvailableFormats(const __CFDictionary **this@<X0>, const __CFString *a2@<X1>, void *a3@<X8>)
{
  v12 = 0;
  if (*this)
  {
    applesauce::CF::make_StringRef(&cf, @"available formats", a2);
    applesauce::CF::details::find_at_key_or_optional<applesauce::CF::ArrayRef,applesauce::CF::StringRef>(*this, &cf, &v10);
    v6 = cf;
    if (cf)
    {
      CFRelease(cf);
    }

    if (v11)
    {
      v7 = v10;
      if (v10)
      {
        CFRetain(v10);
      }

      *a3 = v7;
    }

    else
    {
      v8 = ASDTIOA2LogType(v6, v5);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        ASDT::IOA2UserClient::CopyStreamInfo_AvailableFormats();
      }

      *a3 = 0;
      v12 = 0;
    }

    if (v11 == 1)
    {
      if (v10)
      {
        CFRelease(v10);
      }
    }
  }

  else
  {
    *a3 = 0;
  }
}

void sub_2416BEF24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  std::optional<applesauce::CF::ArrayRef>::~optional(va);
  applesauce::CF::ArrayRef::~ArrayRef(va1);
  _Unwind_Resume(a1);
}

uint64_t std::optional<applesauce::CF::ArrayRef>::~optional(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    v2 = *a1;
    if (*a1)
    {
      CFRelease(v2);
    }
  }

  return a1;
}

const __CFDictionary *ASDT::IOA2UserClient::GetStreamInfo_StartingChannel(const __CFDictionary **this, const __CFString *a2)
{
  if (!*this)
  {
    return 0;
  }

  applesauce::CF::make_StringRef(&cf, @"starting channel", a2);
  v4 = applesauce::CF::details::find_at_key_or_optional<unsigned int,applesauce::CF::StringRef>(*this, &cf);
  v5 = cf;
  if (cf)
  {
    CFRelease(cf);
  }

  if ((v4 & 0x100000000) == 0)
  {
    v6 = ASDTIOA2LogType(v5, v3);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      ASDT::IOA2UserClient::GetStreamInfo_StartingChannel();
    }

    return 0;
  }

  return v4;
}

uint64_t ASDT::IOA2UserClient::GetStreamInfo_TerminalType(const __CFDictionary **this, const __CFString *a2)
{
  if (!*this)
  {
    return 0;
  }

  applesauce::CF::make_StringRef(&cf, @"terminal type", a2);
  v3 = applesauce::CF::details::find_at_key_or_optional<unsigned int,applesauce::CF::StringRef>(*this, &cf);
  if (cf)
  {
    CFRelease(cf);
  }

  if ((v3 & 0x100000000) != 0)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t ASDT::IOA2UserClient::GetStreamInfo_UsesIsolatedIO(const __CFDictionary **this, const __CFString *a2)
{
  if (!*this)
  {
    return 0;
  }

  applesauce::CF::make_StringRef(&cf, @"uses isolated IO", a2);
  v4 = applesauce::CF::details::find_at_key_or_optional<unsigned int,applesauce::CF::StringRef>(*this, &cf);
  if (cf)
  {
    CFRelease(cf);
  }

  if ((v4 & 0x100000000) != 0)
  {
    return v4 != 0;
  }

  if (!*this)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
  }

  applesauce::CF::make_StringRef(&cf, @"uses isolated IO", v3);
  v5 = applesauce::CF::details::find_at_key_or_optional<BOOL,applesauce::CF::StringRef>(*this, &cf);
  if (cf)
  {
    CFRelease(cf);
  }

  return *&v5 & ((v5 & 0x100) >> 8);
}

void ASDT::IOA2UserClient::MapIOBufferForStream(ASDT::IOA2UserClient *this@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  ASDT::IOA2UserClient::CopyStreamDictionaryByID(this, a2, &v12);
  if (v12)
  {
    applesauce::CF::make_StringRef(&cf, @"buffer mapping options", v6);
    applesauce::CF::details::find_at_key_or_optional<unsigned int,applesauce::CF::StringRef>(v12, &cf);
    if (cf)
    {
      CFRelease(cf);
    }

    v7 = ASDT::IOUserClient::MapMemory(this);
    if (!*(a3 + 104))
    {
      v9 = ASDTIOA2LogType(v7, v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        ASDT::IOA2UserClient::MapIOBufferForStream();
      }
    }
  }

  else
  {
    v10 = ASDTIOA2LogType(v5, v6);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      ASDT::IOA2UserClient::MapIOBufferForStream();
    }

    *(a3 + 104) = 0u;
    *(a3 + 88) = 0u;
    *(a3 + 72) = 0u;
    *(a3 + 56) = 0u;
    *(a3 + 40) = 0u;
    *(a3 + 24) = 0u;
    *(a3 + 8) = 0u;
    *a3 = MEMORY[0x277CEFBA8] + 16;
    ASDT::IOConnect::IOConnect((a3 + 8));
    *(a3 + 104) = 0;
    *(a3 + 112) = 0;
  }

  if (v12)
  {
    CFRelease(v12);
  }
}

BOOL ASDT::IOA2UserClient::SetStreamActive(ASDT::IOA2UserClient *this, unsigned int a2, unsigned int a3)
{
  v18[2] = *MEMORY[0x277D85DE8];
  v18[0] = a2;
  v18[1] = a3;
  v6 = ASDT::IOUserClient::CallMethod(this, 6, v18, 2, 0, 0, 0, 0, 0, 0, 1);
  v8 = v6;
  if (v6)
  {
    v9 = ASDTIOA2LogType(v6, v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = (this + 16);
      if (*(this + 39) < 0)
      {
        v11 = *v11;
      }

      *buf = 136315650;
      v13 = v11;
      v14 = 1024;
      v15 = a2;
      v16 = 1024;
      v17 = a3;
      _os_log_error_impl(&dword_2416BA000, v9, OS_LOG_TYPE_ERROR, "%s: SetStreamActive(%u, %hhu)", buf, 0x18u);
    }
  }

  return v8 == 0;
}

void ASDT::IOA2UserClient::CopyControlList(ASDT::IOA2UserClient *this@<X0>, const __CFString *a2@<X1>, const applesauce::CF::TypeRef *a3@<X8>)
{
  *a3 = 0;
  applesauce::CF::make_StringRef(&cf, @"controls", a2);
  ASDT::IOUserClient::CopyProperty<applesauce::CF::ArrayRef>(this, &cf, a3);
  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_2416BF48C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  applesauce::CF::StringRef::~StringRef(va);
  applesauce::CF::ArrayRef::~ArrayRef(v3);
  _Unwind_Resume(a1);
}

void ASDT::IOA2UserClient::CopyControlDictionaryByIndex(ASDT::IOA2UserClient *this@<X0>, const __CFString *a2@<X1>, void *a3@<X8>)
{
  ASDT::IOA2UserClient::CopyControlList(this, a2, &cf);
  ASDT::IOA2UserClient::CopyControlDictionaryByIndex(&cf, a2, a3);
  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_2416BF504(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  applesauce::CF::ArrayRef::~ArrayRef(va);
  _Unwind_Resume(a1);
}

void ASDT::IOA2UserClient::CopyControlDictionaryByIndex(const __CFArray **this@<X0>, const applesauce::CF::ArrayRef *a2@<X1>, void *a3@<X8>)
{
  v12 = 0;
  v5 = *this;
  if (v5 && (v6 = a2, CFArrayGetCount(v5) > a2))
  {
    if (!*this)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x245CED520](exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    applesauce::CF::details::at_as<applesauce::CF::DictionaryRef>(*this, v6, &cf);
    if ((v11 & 1) == 0)
    {
      *a3 = 0;
      v12 = 0;
      return;
    }

    v7 = cf;
    if (cf)
    {
      CFRetain(cf);
      v8 = v11;
      *a3 = v7;
      if ((v8 & 1) == 0)
      {
        return;
      }
    }

    else
    {
      *a3 = 0;
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    *a3 = 0;
  }
}

void sub_2416BF60C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  applesauce::CF::DictionaryRef::~DictionaryRef(va);
  _Unwind_Resume(a1);
}

void ASDT::IOA2UserClient::CopyControlDictionaryByID(ASDT::IOA2UserClient *this@<X0>, const __CFString *a2@<X1>, const __CFDictionary **a3@<X8>)
{
  v6 = 0;
  ASDT::IOA2UserClient::CopyControlList(this, a2, &cf);
  ASDT::IOA2UserClient::CopyControlDictionaryByID(&cf, a2, &v6, a3);
  if (cf)
  {
    CFRelease(cf);
  }
}

void ASDT::IOA2UserClient::CopyControlDictionaryByID(CFArrayRef *this@<X0>, const applesauce::CF::ArrayRef *a2@<X1>, _DWORD *a3@<X2>, const __CFDictionary **a4@<X8>)
{
  v23 = 0;
  *a3 = 0x7FFFFFFF;
  v6 = *this;
  if (v6)
  {
    v8 = a2;
    v20 = v6;
    v21 = 0;
    v9 = 0;
    Count = CFArrayGetCount(v6);
    while (1)
    {
      v10 = *this;
      v11 = *this ? CFArrayGetCount(*this) : 0;
      if (!v20 || v21 == Count)
      {
        break;
      }

      if (v20 == v10 && v21 == v11)
      {
        break;
      }

      applesauce::CF::ArrayRef_iterator<applesauce::CF::TypeRef>::operator->(&v20, &cf);
      v15 = 0;
      if (cf)
      {
        v14 = CFGetTypeID(cf);
        if (v14 == CFDictionaryGetTypeID())
        {
          v15 = 1;
        }
      }

      if (cf)
      {
        CFRelease(cf);
      }

      if (v15)
      {
        applesauce::CF::details::at_to<applesauce::CF::TypeRef>(v20, v21, &cf);
        applesauce::CF::TypeRef::operator applesauce::CF::DictionaryRef(&cf, a4);
        if (cf)
        {
          CFRelease(cf);
        }

        if (!*a4)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          MEMORY[0x245CED520](exception, "Could not construct");
          __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        }

        applesauce::CF::make_StringRef(&cf, @"control ID", v16);
        v17 = applesauce::CF::details::find_at_key_or_optional<unsigned int,applesauce::CF::StringRef>(*a4, &cf);
        if (cf)
        {
          CFRelease(cf);
        }

        if ((v17 & 0x100000000) != 0 && v17 == v8)
        {
          *a3 = v9;
          return;
        }

        if (*a4)
        {
          CFRelease(*a4);
        }
      }

      ++v21;
      ++v9;
    }
  }

  *a4 = 0;
}

void sub_2416BF864(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  applesauce::CF::DictionaryRef::~DictionaryRef(v11);
  applesauce::CF::DictionaryRef::~DictionaryRef(va);
  _Unwind_Resume(a1);
}

BOOL ASDT::IOA2UserClient::GetControlDictionaryIndexByID(CFArrayRef *this, const applesauce::CF::ArrayRef *a2, _DWORD *a3, unsigned int *a4)
{
  ASDT::IOA2UserClient::CopyControlDictionaryByID(this, a2, a3, &cf);
  v4 = cf;
  if (cf)
  {
    CFRelease(cf);
  }

  return v4 != 0;
}

const __CFDictionary *ASDT::IOA2UserClient::GetControlInfo_BaseClass(const __CFDictionary **this, const __CFString *a2)
{
  if (!*this)
  {
    return 0;
  }

  applesauce::CF::make_StringRef(&cf, @"base class", a2);
  v4 = applesauce::CF::details::find_at_key_or_optional<unsigned int,applesauce::CF::StringRef>(*this, &cf);
  v5 = cf;
  if (cf)
  {
    CFRelease(cf);
  }

  if ((v4 & 0x100000000) == 0)
  {
    v6 = ASDTIOA2LogType(v5, v3);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      ASDT::IOA2UserClient::GetControlInfo_BaseClass();
    }

    return 0;
  }

  return v4;
}

const __CFDictionary *ASDT::IOA2UserClient::GetControlInfo_Class(const __CFDictionary **this, const __CFString *a2)
{
  if (!*this)
  {
    return 0;
  }

  applesauce::CF::make_StringRef(&cf, @"class", a2);
  v4 = applesauce::CF::details::find_at_key_or_optional<unsigned int,applesauce::CF::StringRef>(*this, &cf);
  v5 = cf;
  if (cf)
  {
    CFRelease(cf);
  }

  if ((v4 & 0x100000000) == 0)
  {
    v6 = ASDTIOA2LogType(v5, v3);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      ASDT::IOA2UserClient::GetControlInfo_Class();
    }

    return 0;
  }

  return v4;
}

uint64_t ASDT::IOA2UserClient::GetControlInfo_Scope(const __CFDictionary **this, const __CFString *a2)
{
  v2 = 1735159650;
  if (*this)
  {
    applesauce::CF::make_StringRef(&cf, @"scope", a2);
    v4 = applesauce::CF::details::find_at_key_or_optional<unsigned int,applesauce::CF::StringRef>(*this, &cf);
    if (cf)
    {
      CFRelease(cf);
    }

    if ((v4 & 0x100000000) != 0)
    {
      return v4;
    }

    else
    {
      return 1735159650;
    }
  }

  return v2;
}

uint64_t ASDT::IOA2UserClient::GetControlInfo_Element(const __CFDictionary **this, const __CFString *a2)
{
  if (!*this)
  {
    return 0;
  }

  applesauce::CF::make_StringRef(&cf, @"element", a2);
  v3 = applesauce::CF::details::find_at_key_or_optional<unsigned int,applesauce::CF::StringRef>(*this, &cf);
  if (cf)
  {
    CFRelease(cf);
  }

  if ((v3 & 0x100000000) != 0)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t ASDT::IOA2UserClient::GetControlInfo_IsReadOnly(const __CFDictionary **this, const __CFString *a2)
{
  if (!*this)
  {
    return 0;
  }

  applesauce::CF::make_StringRef(&cf, @"read only", a2);
  v4 = applesauce::CF::details::find_at_key_or_optional<unsigned int,applesauce::CF::StringRef>(*this, &cf);
  if (cf)
  {
    CFRelease(cf);
  }

  if ((v4 & 0x100000000) != 0)
  {
    return v4 != 0;
  }

  if (!*this)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
  }

  applesauce::CF::make_StringRef(&cf, @"read only", v3);
  v5 = applesauce::CF::details::find_at_key_or_optional<BOOL,applesauce::CF::StringRef>(*this, &cf);
  if (cf)
  {
    CFRelease(cf);
  }

  return *&v5 & ((v5 & 0x100) >> 8);
}

uint64_t ASDT::IOA2UserClient::GetControlInfo_Variant(const __CFDictionary **this, const __CFString *a2)
{
  if (!*this)
  {
    return 0;
  }

  applesauce::CF::make_StringRef(&cf, @"variant", a2);
  v3 = applesauce::CF::details::find_at_key_or_optional<unsigned int,applesauce::CF::StringRef>(*this, &cf);
  if (cf)
  {
    CFRelease(cf);
  }

  if ((v3 & 0x100000000) != 0)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

void ASDT::IOA2UserClient::CopyControlInfo_Name(const __CFDictionary **this@<X0>, const __CFString *a2@<X1>, void *a3@<X8>)
{
  v10 = 0;
  if (!*this)
  {
    *a3 = 0;
    return;
  }

  applesauce::CF::make_StringRef(&cf, @"name", a2);
  applesauce::CF::details::find_at_key_or_optional<applesauce::CF::StringRef,applesauce::CF::StringRef>(*this, &cf, &v8);
  if (cf)
  {
    CFRelease(cf);
  }

  if ((v9 & 1) == 0)
  {
    *a3 = 0;
    v10 = 0;
    return;
  }

  v5 = v8;
  if (v8)
  {
    CFRetain(v8);
    v6 = v9;
    *a3 = v5;
    if ((v6 & 1) == 0)
    {
      return;
    }
  }

  else
  {
    *a3 = 0;
  }

  if (v8)
  {
    CFRelease(v8);
  }
}

void sub_2416BFD3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  applesauce::CF::StringRef::~StringRef(va);
  _Unwind_Resume(a1);
}

uint64_t ASDT::IOA2UserClient::GetControlInfo_Value(const __CFDictionary **this, __CFString *a2, unsigned int *a3)
{
  if (!*this)
  {
    return 0;
  }

  applesauce::CF::make_StringRef(&cf, @"value", a2);
  v6 = applesauce::CF::details::find_at_key_or_optional<unsigned int,applesauce::CF::StringRef>(*this, &cf);
  if (cf)
  {
    CFRelease(cf);
  }

  if ((v6 & 0x100000000) == 0)
  {
    if (!*this)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      applesauce::CF::construct_error(exception);
    }

    applesauce::CF::make_StringRef(&cf, @"value", v5);
    v7 = applesauce::CF::details::find_at_key_or_optional<BOOL,applesauce::CF::StringRef>(*this, &cf);
    if (cf)
    {
      CFRelease(cf);
    }

    if ((v7 & 0x100) == 0)
    {
      return 0;
    }

    LODWORD(v6) = v7;
  }

  LODWORD(a2->isa) = v6;
  return 1;
}

void ASDT::IOA2UserClient::CopyControlInfo_PropertySelectors(const __CFDictionary **this@<X0>, const __CFString *a2@<X1>, void *a3@<X8>)
{
  v10 = 0;
  if (!*this)
  {
    *a3 = 0;
    return;
  }

  applesauce::CF::make_StringRef(&cf, @"property selectors", a2);
  applesauce::CF::details::find_at_key_or_optional<applesauce::CF::ArrayRef,applesauce::CF::StringRef>(*this, &cf, &v8);
  if (cf)
  {
    CFRelease(cf);
  }

  if ((v9 & 1) == 0)
  {
    *a3 = 0;
    v10 = 0;
    return;
  }

  v5 = v8;
  if (v8)
  {
    CFRetain(v8);
    v6 = v9;
    *a3 = v5;
    if ((v6 & 1) == 0)
    {
      return;
    }
  }

  else
  {
    *a3 = 0;
  }

  if (v8)
  {
    CFRelease(v8);
  }
}

void sub_2416BFF14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  applesauce::CF::ArrayRef::~ArrayRef(va);
  _Unwind_Resume(a1);
}

BOOL ASDT::IOA2UserClient::GetSliderControlInfo_MinimumValue(const __CFDictionary **this, __CFString *a2, unsigned int *a3)
{
  if (!*this)
  {
    return 0;
  }

  applesauce::CF::make_StringRef(&cf, @"minimum value", a2);
  v6 = applesauce::CF::details::find_at_key_or_optional<unsigned int,applesauce::CF::StringRef>(*this, &cf);
  v7 = cf;
  if (cf)
  {
    CFRelease(cf);
  }

  if ((v6 & 0x100000000) == 0)
  {
    v8 = ASDTIOA2LogType(v7, v5);
    result = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    ASDT::IOA2UserClient::GetSliderControlInfo_MinimumValue();
    return 0;
  }

  LODWORD(a2->isa) = v6;
  return 1;
}

BOOL ASDT::IOA2UserClient::GetSliderControlInfo_MaximumValue(const __CFDictionary **this, __CFString *a2, unsigned int *a3)
{
  if (!*this)
  {
    return 0;
  }

  applesauce::CF::make_StringRef(&cf, @"maximum value", a2);
  v6 = applesauce::CF::details::find_at_key_or_optional<unsigned int,applesauce::CF::StringRef>(*this, &cf);
  v7 = cf;
  if (cf)
  {
    CFRelease(cf);
  }

  if ((v6 & 0x100000000) == 0)
  {
    v8 = ASDTIOA2LogType(v7, v5);
    result = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    ASDT::IOA2UserClient::GetSliderControlInfo_MaximumValue();
    return 0;
  }

  LODWORD(a2->isa) = v6;
  return 1;
}

void ASDT::IOA2UserClient::CopyLevelControlInfo_RangeMap(const __CFDictionary **this@<X0>, const __CFString *a2@<X1>, void *a3@<X8>)
{
  v12 = 0;
  if (*this)
  {
    applesauce::CF::make_StringRef(&cf, @"range map", a2);
    applesauce::CF::details::find_at_key_or_optional<applesauce::CF::ArrayRef,applesauce::CF::StringRef>(*this, &cf, &v10);
    v6 = cf;
    if (cf)
    {
      CFRelease(cf);
    }

    if (v11)
    {
      v7 = v10;
      if (v10)
      {
        CFRetain(v10);
      }

      *a3 = v7;
    }

    else
    {
      v8 = ASDTIOA2LogType(v6, v5);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        ASDT::IOA2UserClient::CopyLevelControlInfo_RangeMap();
      }

      *a3 = 0;
      v12 = 0;
    }

    if (v11 == 1)
    {
      if (v10)
      {
        CFRelease(v10);
      }
    }
  }

  else
  {
    *a3 = 0;
  }
}

void sub_2416C0124(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  std::optional<applesauce::CF::ArrayRef>::~optional(va);
  applesauce::CF::ArrayRef::~ArrayRef(va1);
  _Unwind_Resume(a1);
}

uint64_t ASDT::IOA2UserClient::GetLevelControlInfo_TransferFunction(const __CFDictionary **this, const __CFString *a2)
{
  if (!*this)
  {
    return 0;
  }

  applesauce::CF::make_StringRef(&cf, @"transfer function", a2);
  v3 = applesauce::CF::details::find_at_key_or_optional<unsigned int,applesauce::CF::StringRef>(*this, &cf);
  if (cf)
  {
    CFRelease(cf);
  }

  if ((v3 & 0x100000000) != 0)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

BOOL ASDT::IOA2UserClient::SetupVolumeCurve(const __CFDictionary **this, const applesauce::CF::DictionaryRef *a2, ASDT::VolumeCurve *a3)
{
  ASDT::VolumeCurve::ResetRange(a2);
  v31 = this;
  ASDT::IOA2UserClient::CopyLevelControlInfo_RangeMap(this, v5, &theArray);
  v6 = theArray;
  if (theArray)
  {
    v34 = theArray;
    v35 = 0;
    Count = CFArrayGetCount(theArray);
    while (1)
    {
      CFArrayGetCount(v6);
      if (Count <= v35)
      {
        break;
      }

      applesauce::CF::ArrayRef_iterator<applesauce::CF::TypeRef>::operator->(&v34, &cf);
      v9 = 0;
      if (cf)
      {
        v8 = CFGetTypeID(cf);
        if (v8 == CFDictionaryGetTypeID())
        {
          v9 = 1;
        }
      }

      if (cf)
      {
        CFRelease(cf);
      }

      if (v9)
      {
        applesauce::CF::details::at_to<applesauce::CF::TypeRef>(v34, v35, &v32);
        applesauce::CF::TypeRef::operator applesauce::CF::DictionaryRef(&v32, &cf);
        if (v32)
        {
          CFRelease(v32);
        }

        if (!cf)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          MEMORY[0x245CED520](exception, "Could not construct");
          __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        }

        applesauce::CF::make_StringRef(&v32, @"start int value", v10);
        applesauce::CF::details::find_at_key_or_optional<int,applesauce::CF::StringRef>(cf, &v32);
        if (v32)
        {
          CFRelease(v32);
        }

        if (!cf)
        {
          v30 = __cxa_allocate_exception(0x10uLL);
          MEMORY[0x245CED520](v30, "Could not construct");
          __cxa_throw(v30, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        }

        applesauce::CF::make_StringRef(&v32, @"start db value", v11);
        v12 = applesauce::CF::details::find_at_key_or_optional<unsigned long long,applesauce::CF::StringRef>(cf, &v32);
        if (v13)
        {
          v14 = v12;
        }

        else
        {
          v14 = 0;
        }

        if (v32)
        {
          CFRelease(v32);
        }

        if (!cf)
        {
          v27 = __cxa_allocate_exception(0x10uLL);
          MEMORY[0x245CED520](v27, "Could not construct");
          __cxa_throw(v27, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        }

        applesauce::CF::make_StringRef(&v32, @"integer steps", v13);
        v15 = applesauce::CF::details::find_at_key_or_optional<unsigned int,applesauce::CF::StringRef>(cf, &v32);
        if ((v15 & 0x100000000) != 0)
        {
          v17 = v15;
        }

        else
        {
          v17 = 0;
        }

        if (v32)
        {
          CFRelease(v32);
        }

        if (!cf)
        {
          v28 = __cxa_allocate_exception(0x10uLL);
          MEMORY[0x245CED520](v28, "Could not construct");
          __cxa_throw(v28, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        }

        applesauce::CF::make_StringRef(&v32, @"db per step", v16);
        v18 = applesauce::CF::details::find_at_key_or_optional<unsigned long long,applesauce::CF::StringRef>(cf, &v32);
        if (v19)
        {
          v20 = v18;
        }

        else
        {
          v20 = 0;
        }

        if (v32)
        {
          CFRelease(v32);
        }

        ASDT::IOAudio2::Helpers::Float64FromFixed64(v14);
        v22 = v21;
        ASDT::IOAudio2::Helpers::Float64FromFixed64(v20);
        v23 = v22;
        v25 = v22 + v17 * v24;
        ASDT::VolumeCurve::AddRange(a2, v23, v25);
        if (cf)
        {
          CFRelease(cf);
        }
      }

      ++v35;
    }

    ASDT::IOA2UserClient::GetLevelControlInfo_TransferFunction(v31, v7);
    ASDT::VolumeCurve::SetTransferFunction(a2);
    CFRelease(v6);
  }

  return v6 != 0;
}

void sub_2416C051C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  applesauce::CF::ArrayRef::~ArrayRef(va);
  _Unwind_Resume(a1);
}

void ASDT::IOA2UserClient::CopySelectorControlInfo_MultiSelectorValue(const __CFDictionary **this@<X0>, const __CFString *a2@<X1>, void *a3@<X8>)
{
  v12 = 0;
  if (*this)
  {
    applesauce::CF::make_StringRef(&cf, @"value", a2);
    applesauce::CF::details::find_at_key_or_optional<applesauce::CF::ArrayRef,applesauce::CF::StringRef>(*this, &cf, &v10);
    v6 = cf;
    if (cf)
    {
      CFRelease(cf);
    }

    if (v11)
    {
      v7 = v10;
      if (v10)
      {
        CFRetain(v10);
      }

      *a3 = v7;
    }

    else
    {
      v8 = ASDTIOA2LogType(v6, v5);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        ASDT::IOA2UserClient::CopySelectorControlInfo_MultiSelectorValue();
      }

      *a3 = 0;
      v12 = 0;
    }

    if (v11 == 1)
    {
      if (v10)
      {
        CFRelease(v10);
      }
    }
  }

  else
  {
    *a3 = 0;
  }
}

void sub_2416C0694(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  std::optional<applesauce::CF::ArrayRef>::~optional(va);
  applesauce::CF::ArrayRef::~ArrayRef(va1);
  _Unwind_Resume(a1);
}

void ASDT::IOA2UserClient::CopySelectorControlInfo_SelectorMap(const __CFDictionary **this@<X0>, const __CFString *a2@<X1>, void *a3@<X8>)
{
  v12 = 0;
  if (*this)
  {
    applesauce::CF::make_StringRef(&cf, @"selectors", a2);
    applesauce::CF::details::find_at_key_or_optional<applesauce::CF::ArrayRef,applesauce::CF::StringRef>(*this, &cf, &v10);
    v6 = cf;
    if (cf)
    {
      CFRelease(cf);
    }

    if (v11)
    {
      v7 = v10;
      if (v10)
      {
        CFRetain(v10);
      }

      *a3 = v7;
    }

    else
    {
      v8 = ASDTIOA2LogType(v6, v5);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        ASDT::IOA2UserClient::CopySelectorControlInfo_SelectorMap();
      }

      *a3 = 0;
      v12 = 0;
    }

    if (v11 == 1)
    {
      if (v10)
      {
        CFRelease(v10);
      }
    }
  }

  else
  {
    *a3 = 0;
  }
}

void sub_2416C0790(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  std::optional<applesauce::CF::ArrayRef>::~optional(va);
  applesauce::CF::ArrayRef::~ArrayRef(va1);
  _Unwind_Resume(a1);
}

BOOL ASDT::IOA2UserClient::GetStereoPanControlInfo_LeftValue(const __CFDictionary **this, __CFString *a2, unsigned int *a3)
{
  if (!*this)
  {
    return 0;
  }

  applesauce::CF::make_StringRef(&cf, @"left value", a2);
  v6 = applesauce::CF::details::find_at_key_or_optional<unsigned int,applesauce::CF::StringRef>(*this, &cf);
  v7 = cf;
  if (cf)
  {
    CFRelease(cf);
  }

  if ((v6 & 0x100000000) == 0)
  {
    v8 = ASDTIOA2LogType(v7, v5);
    result = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    ASDT::IOA2UserClient::GetStereoPanControlInfo_LeftValue();
    return 0;
  }

  LODWORD(a2->isa) = v6;
  return 1;
}

BOOL ASDT::IOA2UserClient::GetStereoPanControlInfo_CenterValue(const __CFDictionary **this, __CFString *a2, unsigned int *a3)
{
  if (!*this)
  {
    return 0;
  }

  applesauce::CF::make_StringRef(&cf, @"center value", a2);
  v6 = applesauce::CF::details::find_at_key_or_optional<unsigned int,applesauce::CF::StringRef>(*this, &cf);
  v7 = cf;
  if (cf)
  {
    CFRelease(cf);
  }

  if ((v6 & 0x100000000) == 0)
  {
    v8 = ASDTIOA2LogType(v7, v5);
    result = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    ASDT::IOA2UserClient::GetStereoPanControlInfo_CenterValue();
    return 0;
  }

  LODWORD(a2->isa) = v6;
  return 1;
}

BOOL ASDT::IOA2UserClient::GetStereoPanControlInfo_RightValue(const __CFDictionary **this, __CFString *a2, unsigned int *a3)
{
  if (!*this)
  {
    return 0;
  }

  applesauce::CF::make_StringRef(&cf, @"right value", a2);
  v6 = applesauce::CF::details::find_at_key_or_optional<unsigned int,applesauce::CF::StringRef>(*this, &cf);
  v7 = cf;
  if (cf)
  {
    CFRelease(cf);
  }

  if ((v6 & 0x100000000) == 0)
  {
    v8 = ASDTIOA2LogType(v7, v5);
    result = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    ASDT::IOA2UserClient::GetStereoPanControlInfo_RightValue();
    return 0;
  }

  LODWORD(a2->isa) = v6;
  return 1;
}

BOOL ASDT::IOA2UserClient::GetStereoPanControlInfo_LeftChannel(const __CFDictionary **this, __CFString *a2, unsigned int *a3)
{
  if (!*this)
  {
    return 0;
  }

  applesauce::CF::make_StringRef(&cf, @"left channel", a2);
  v6 = applesauce::CF::details::find_at_key_or_optional<unsigned int,applesauce::CF::StringRef>(*this, &cf);
  v7 = cf;
  if (cf)
  {
    CFRelease(cf);
  }

  if ((v6 & 0x100000000) == 0)
  {
    v8 = ASDTIOA2LogType(v7, v5);
    result = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    ASDT::IOA2UserClient::GetStereoPanControlInfo_LeftChannel();
    return 0;
  }

  LODWORD(a2->isa) = v6;
  return 1;
}

BOOL ASDT::IOA2UserClient::GetStereoPanControlInfo_RightChannel(const __CFDictionary **this, __CFString *a2, unsigned int *a3)
{
  if (!*this)
  {
    return 0;
  }

  applesauce::CF::make_StringRef(&cf, @"right channel", a2);
  v6 = applesauce::CF::details::find_at_key_or_optional<unsigned int,applesauce::CF::StringRef>(*this, &cf);
  v7 = cf;
  if (cf)
  {
    CFRelease(cf);
  }

  if ((v6 & 0x100000000) == 0)
  {
    v8 = ASDTIOA2LogType(v7, v5);
    result = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    ASDT::IOA2UserClient::GetStereoPanControlInfo_RightChannel();
    return 0;
  }

  LODWORD(a2->isa) = v6;
  return 1;
}

void ASDT::IOA2UserClient::CopyBlockControlInfo_Descriptor(uint64_t *__return_ptr a1@<X8>, const __CFDictionary **this@<X0>, const __CFString *a3@<X1>)
{
  v12 = 0;
  if (*this)
  {
    applesauce::CF::make_StringRef(&cf, @"descriptor", a3);
    applesauce::CF::details::find_at_key_or_optional<applesauce::CF::DictionaryRef,applesauce::CF::StringRef>(*this, &cf, &v10);
    v6 = cf;
    if (cf)
    {
      CFRelease(cf);
    }

    if (v11)
    {
      v7 = v10;
      if (v10)
      {
        CFRetain(v10);
      }

      *a1 = v7;
    }

    else
    {
      v8 = ASDTIOA2LogType(v6, v5);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        ASDT::IOA2UserClient::CopyBlockControlInfo_Descriptor();
      }

      *a1 = 0;
      v12 = 0;
    }

    if (v11 == 1)
    {
      if (v10)
      {
        CFRelease(v10);
      }
    }
  }

  else
  {
    *a1 = 0;
  }
}

void sub_2416C0B70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  std::optional<applesauce::CF::DictionaryRef>::~optional(va);
  applesauce::CF::DictionaryRef::~DictionaryRef(va1);
  _Unwind_Resume(a1);
}

void ASDT::IOA2UserClient::MapBlockControlBuffer(uint64_t *__return_ptr a1@<X8>, ASDT::IOA2UserClient *this@<X0>, const __CFString *a3@<X1>)
{
  if (!a3->isa)
  {
    v10 = ASDTIOA2LogType(this, a3);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      ASDT::IOA2UserClient::MapBlockControlBuffer();
    }

    goto LABEL_9;
  }

  applesauce::CF::make_StringRef(&cf, @"control ID", a3);
  v7 = applesauce::CF::details::find_at_key_or_optional<unsigned int,applesauce::CF::StringRef>(a3->isa, &cf);
  v8 = cf;
  if (cf)
  {
    CFRelease(cf);
  }

  if ((v7 & 0x100000000) == 0)
  {
    v9 = ASDTIOA2LogType(v8, v6);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      ASDT::IOA2UserClient::MapBlockControlBuffer();
    }

LABEL_9:
    *(a1 + 13) = 0u;
    *(a1 + 11) = 0u;
    *(a1 + 9) = 0u;
    *(a1 + 7) = 0u;
    *(a1 + 5) = 0u;
    *(a1 + 3) = 0u;
    *(a1 + 1) = 0u;
    *a1 = MEMORY[0x277CEFBA8] + 16;
    ASDT::IOConnect::IOConnect((a1 + 1));
    a1[13] = 0;
    *(a1 + 28) = 0;
    return;
  }

  if (!a3->isa)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
  }

  applesauce::CF::make_StringRef(&cf, @"mapping options", v6);
  applesauce::CF::details::find_at_key_or_optional<unsigned int,applesauce::CF::StringRef>(a3->isa, &cf);
  if (cf)
  {
    CFRelease(cf);
  }

  v11 = ASDT::IOUserClient::MapMemory(this);
  if (!a1[13])
  {
    v13 = ASDTIOA2LogType(v11, v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      ASDT::IOA2UserClient::MapBlockControlBuffer();
    }
  }
}

BOOL ASDT::IOA2UserClient::MoveBlockControlData(ASDT::IOA2UserClient *this, unsigned int a2, unsigned int a3, unsigned int a4)
{
  v9[3] = *MEMORY[0x277D85DE8];
  v9[0] = a2;
  v9[1] = a3;
  v9[2] = a4;
  v4 = ASDT::IOUserClient::CallMethod(this, 9, v9, 3, 0, 0, 0, 0, 0, 0, 1);
  v6 = v4;
  if (v4)
  {
    v7 = ASDTIOA2LogType(v4, v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      ASDT::IOA2UserClient::MoveBlockControlData();
    }
  }

  return v6 == 0;
}

void ASDT::IOA2UserClient::CopyDataExchangeBlockList(ASDT::IOA2UserClient *this@<X0>, const __CFString *a2@<X1>, const applesauce::CF::TypeRef *a3@<X8>)
{
  *a3 = 0;
  applesauce::CF::make_StringRef(&cf, @"data exchange blocks", a2);
  ASDT::IOUserClient::CopyProperty<applesauce::CF::ArrayRef>(this, &cf, a3);
  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_2416C0EB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  applesauce::CF::StringRef::~StringRef(va);
  applesauce::CF::ArrayRef::~ArrayRef(v3);
  _Unwind_Resume(a1);
}

CFIndex ASDT::IOA2UserClient::GetNumberDataExchangeBlocks(ASDT::IOA2UserClient *this, const __CFString *a2)
{
  ASDT::IOA2UserClient::CopyDataExchangeBlockList(this, a2, &theArray);
  if (!theArray)
  {
    return 0;
  }

  Count = CFArrayGetCount(theArray);
  if (theArray)
  {
    CFRelease(theArray);
  }

  return Count;
}

void ASDT::IOA2UserClient::CopyDataExchangeBlockDictionaryByIndex(ASDT::IOA2UserClient *this@<X0>, const __CFString *a2@<X1>, void *a3@<X8>)
{
  v3 = a2;
  v11 = 0;
  ASDT::IOA2UserClient::CopyDataExchangeBlockList(this, a2, &theArray);
  if (!theArray || CFArrayGetCount(theArray) <= v3)
  {
    goto LABEL_8;
  }

  if (!theArray)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x245CED520](exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  applesauce::CF::details::at_as<applesauce::CF::DictionaryRef>(theArray, v3, &cf);
  if (v9)
  {
    v5 = cf;
    if (cf)
    {
      CFRetain(cf);
      v6 = v9;
      *a3 = v5;
      if ((v6 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    else
    {
      *a3 = 0;
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
LABEL_8:
    *a3 = 0;
    v11 = 0;
  }

LABEL_9:
  if (theArray)
  {
    CFRelease(theArray);
  }
}

void sub_2416C1024(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, const void *);
  applesauce::CF::ArrayRef::~ArrayRef(va);
  applesauce::CF::DictionaryRef::~DictionaryRef(va1);
  _Unwind_Resume(a1);
}

uint64_t ASDT::IOA2UserClient::GetDataExchangeBlockID(const __CFDictionary **this, __CFString *a2, unsigned int *a3)
{
  if (!*this)
  {
    return 0;
  }

  applesauce::CF::make_StringRef(&cf, @"block ID", a2);
  v5 = applesauce::CF::details::find_at_key_or_optional<unsigned int,applesauce::CF::StringRef>(*this, &cf);
  if (cf)
  {
    CFRelease(cf);
  }

  if ((v5 & 0x100000000) == 0)
  {
    return 0;
  }

  LODWORD(a2->isa) = v5;
  return 1;
}

void ASDT::IOA2UserClient::CopyDataExchangeBlockDictionaryByID(ASDT::IOA2UserClient *this@<X0>, const __CFString *a2@<X1>, const __CFDictionary **a3@<X8>)
{
  v3 = a2;
  v19 = 0;
  ASDT::IOA2UserClient::CopyDataExchangeBlockList(this, a2, &theArray);
  if (theArray)
  {
    v15 = theArray;
    v16 = 0;
    Count = CFArrayGetCount(theArray);
    while (1)
    {
      v5 = theArray;
      v6 = theArray ? CFArrayGetCount(theArray) : 0;
      if (!v15 || v16 == Count)
      {
        break;
      }

      if (v15 == v5 && v16 == v6)
      {
        break;
      }

      applesauce::CF::ArrayRef_iterator<applesauce::CF::TypeRef>::operator->(&v15, &cf);
      v10 = 0;
      if (cf)
      {
        v9 = CFGetTypeID(cf);
        if (v9 == CFDictionaryGetTypeID())
        {
          v10 = 1;
        }
      }

      if (cf)
      {
        CFRelease(cf);
      }

      if (v10)
      {
        applesauce::CF::details::at_to<applesauce::CF::TypeRef>(v15, v16, &cf);
        applesauce::CF::TypeRef::operator applesauce::CF::DictionaryRef(&cf, a3);
        if (cf)
        {
          CFRelease(cf);
        }

        if (!*a3)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          MEMORY[0x245CED520](exception, "Could not construct");
          __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        }

        applesauce::CF::make_StringRef(&cf, @"block ID", v11);
        v12 = applesauce::CF::details::find_at_key_or_optional<unsigned int,applesauce::CF::StringRef>(*a3, &cf);
        if (cf)
        {
          CFRelease(cf);
        }

        if ((v12 & 0x100000000) != 0 && v12 == v3)
        {
          goto LABEL_32;
        }

        if (*a3)
        {
          CFRelease(*a3);
        }
      }

      ++v16;
    }

    *a3 = 0;
    v19 = 0;
LABEL_32:
    if (theArray)
    {
      CFRelease(theArray);
    }
  }

  else
  {
    *a3 = 0;
  }
}

void sub_2416C128C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  applesauce::CF::DictionaryRef::~DictionaryRef(va);
  _Unwind_Resume(a1);
}

void ASDT::IOA2UserClient::MapDataExchangeBlockBuffer(ASDT::IOA2UserClient *this@<X0>, const __CFString *a2@<X1>, uint64_t a3@<X8>)
{
  ASDT::IOA2UserClient::CopyDataExchangeBlockDictionaryByID(this, a2, &v12);
  if (v12)
  {
    applesauce::CF::make_StringRef(&cf, @"buffer mapping options", v6);
    applesauce::CF::details::find_at_key_or_optional<unsigned int,applesauce::CF::StringRef>(v12, &cf);
    if (cf)
    {
      CFRelease(cf);
    }

    v7 = ASDT::IOUserClient::MapMemory(this);
    if (!*(a3 + 104))
    {
      v9 = ASDTIOA2LogType(v7, v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        ASDT::IOA2UserClient::MapDataExchangeBlockBuffer();
      }
    }
  }

  else
  {
    v10 = ASDTIOA2LogType(v5, v6);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      ASDT::IOA2UserClient::MapDataExchangeBlockBuffer();
    }

    *(a3 + 104) = 0u;
    *(a3 + 88) = 0u;
    *(a3 + 72) = 0u;
    *(a3 + 56) = 0u;
    *(a3 + 40) = 0u;
    *(a3 + 24) = 0u;
    *(a3 + 8) = 0u;
    *a3 = MEMORY[0x277CEFBA8] + 16;
    ASDT::IOConnect::IOConnect((a3 + 8));
    *(a3 + 104) = 0;
    *(a3 + 112) = 0;
  }

  if (v12)
  {
    CFRelease(v12);
  }
}

BOOL ASDT::IOA2UserClient::MoveDataExchangeBlockData(ASDT::IOA2UserClient *this, uint64_t a2, unsigned int a3, unsigned int a4)
{
  v9[3] = *MEMORY[0x277D85DE8];
  v9[0] = a2;
  v9[1] = a4;
  v9[2] = a3;
  v4 = ASDT::IOUserClient::CallMethod(this, 7, v9, 3, 0, 0, 0, 0, 0, 0, 1);
  v6 = v4;
  if (v4)
  {
    v7 = ASDTIOA2LogType(v4, v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      ASDT::IOA2UserClient::MoveDataExchangeBlockData();
    }
  }

  return v6 == 0;
}

BOOL ASDT::IOA2UserClient::StartIO(ASDT::IOA2UserClient *this)
{
  v1 = ASDT::IOUserClient::CallMethod(this, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
  v3 = v1;
  if (v1)
  {
    v4 = ASDTIOA2LogType(v1, v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      ASDT::IOA2UserClient::StartIO();
    }
  }

  return v3 == 0;
}

BOOL ASDT::IOA2UserClient::StartIOWithFlags(ASDT::IOA2UserClient *this, unint64_t a2, unint64_t *a3)
{
  v10 = 0;
  v11 = a2;
  v9 = 1;
  v4 = ASDT::IOUserClient::CallMethod(this, 10, &v11, 1, 0, 0, &v10, &v9, 0, 0, 0);
  v6 = v4;
  if (v4)
  {
    v7 = ASDTIOA2LogType(v4, v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      ASDT::IOA2UserClient::StartIOWithFlags();
    }
  }

  else
  {
    *a3 = v10;
  }

  return v6 == 0;
}

BOOL ASDT::IOA2UserClient::StopIO(ASDT::IOA2UserClient *this)
{
  v1 = ASDT::IOUserClient::CallMethod(this, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0);
  v3 = v1;
  if (v1)
  {
    v4 = ASDTIOA2LogType(v1, v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      ASDT::IOA2UserClient::StopIO();
    }
  }

  return v3 == 0;
}

BOOL ASDT::IOA2UserClient::StopIOWithFlags(ASDT::IOA2UserClient *this, unint64_t a2, unint64_t *a3)
{
  v10 = 0;
  v11 = a2;
  v9 = 1;
  v4 = ASDT::IOUserClient::CallMethod(this, 11, &v11, 1, 0, 0, &v10, &v9, 0, 0, 0);
  v6 = v4;
  if (v4)
  {
    v7 = ASDTIOA2LogType(v4, v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      ASDT::IOA2UserClient::StopIOWithFlags();
    }
  }

  else
  {
    *a3 = v10;
  }

  return v6 == 0;
}

BOOL ASDT::IOA2UserClient::DoIO(ASDT::IOA2UserClient *this, unsigned int a2, unsigned int a3, unint64_t a4, unint64_t a5)
{
  v26 = *MEMORY[0x277D85DE8];
  v10 = ASDT::IOUserClient::CallTrap6(this);
  v12 = v10;
  if (v10)
  {
    v13 = ASDTIOA2LogType(v10, v11);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v15 = (this + 16);
      if (*(this + 39) < 0)
      {
        v15 = *v15;
      }

      v16 = 136316162;
      v17 = v15;
      v18 = 1024;
      v19 = a2;
      v20 = 1024;
      v21 = a3;
      v22 = 2048;
      v23 = a4;
      v24 = 2048;
      v25 = a5;
      _os_log_error_impl(&dword_2416BA000, v13, OS_LOG_TYPE_ERROR, "%s: DoIO(%hhu, %u, %llu, %llu) failed", &v16, 0x2Cu);
    }
  }

  return v12 == 0;
}

BOOL ASDT::IOA2UserClient::SetupForIsolatedIO(ASDT::IOA2UserClient *this, unsigned int a2, unint64_t a3, unsigned int a4)
{
  v22[3] = *MEMORY[0x277D85DE8];
  v22[0] = a2;
  v22[1] = a3;
  v22[2] = a4;
  v8 = ASDT::IOUserClient::CallMethod(this, 13, v22, 3, 0, 0, 0, 0, 0, 0, 0);
  v10 = v8;
  if (v8)
  {
    v11 = ASDTIOA2LogType(v8, v9);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v13 = (this + 16);
      if (*(this + 39) < 0)
      {
        v13 = *v13;
      }

      *buf = 136315906;
      v15 = v13;
      v16 = 1024;
      v17 = a2;
      v18 = 2048;
      v19 = a3;
      v20 = 1024;
      v21 = a4;
      _os_log_error_impl(&dword_2416BA000, v11, OS_LOG_TYPE_ERROR, "%s: SetupForIsolatedIO(%u, %llu, %u) failed", buf, 0x22u);
    }
  }

  return v10 == 0;
}

BOOL ASDT::IOA2UserClient::TeardownForIsolatedIO(ASDT::IOA2UserClient *this, unsigned int a2, unint64_t a3)
{
  v18[2] = *MEMORY[0x277D85DE8];
  v18[0] = a2;
  v18[1] = a3;
  v6 = ASDT::IOUserClient::CallMethod(this, 14, v18, 2, 0, 0, 0, 0, 0, 0, 0);
  v8 = v6;
  if (v6)
  {
    v9 = ASDTIOA2LogType(v6, v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = (this + 16);
      if (*(this + 39) < 0)
      {
        v11 = *v11;
      }

      *buf = 136315650;
      v13 = v11;
      v14 = 1024;
      v15 = a2;
      v16 = 2048;
      v17 = a3;
      _os_log_error_impl(&dword_2416BA000, v9, OS_LOG_TYPE_ERROR, "%s: TeardownForIsolatedIO(%u, %llu) failed", buf, 0x1Cu);
    }
  }

  return v8 == 0;
}

BOOL ASDT::IOA2UserClient::DoIsolatedIO(ASDT::IOA2UserClient *this, unsigned int a2, unint64_t a3, unsigned int a4, unsigned int a5, unint64_t a6, unint64_t a7)
{
  v58 = *MEMORY[0x277D85DE8];
  v14 = ASDT::IOUserClient::CallTrap6(this);
  v16 = v14;
  if (v14)
  {
    v17 = ASDTIOA2LogType(v14, v15);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v19 = (this + 16);
      if (*(this + 39) < 0)
      {
        v19 = *v19;
      }

      v20 = HIBYTE(a4);
      v28 = 136318722;
      v29 = v19;
      v30 = 1024;
      if ((a4 - 0x20000000) >> 24 >= 0x5F)
      {
        v20 = 32;
      }

      v31 = a2;
      v21 = BYTE2(a4);
      v32 = 2048;
      v33 = a3;
      if (BYTE2(a4) - 32 >= 0x5F)
      {
        v21 = 32;
      }

      v34 = 1024;
      v35 = v20;
      if (BYTE1(a4) - 32 >= 0x5F)
      {
        v22 = 32;
      }

      else
      {
        v22 = BYTE1(a4);
      }

      v36 = 1024;
      v37 = v21;
      if (a4 - 32 >= 0x5F)
      {
        v23 = 32;
      }

      else
      {
        v23 = a4;
      }

      v38 = 1024;
      v39 = v22;
      if ((v16 - 0x20000000) >> 24 >= 0x5F)
      {
        v24 = 32;
      }

      else
      {
        v24 = HIBYTE(v16);
      }

      v40 = 1024;
      v25 = BYTE2(v16);
      v41 = v23;
      if (BYTE2(v16) - 32 >= 0x5F)
      {
        v25 = 32;
      }

      v42 = 1024;
      v26 = BYTE1(v16);
      v43 = a5;
      if (BYTE1(v16) - 32 >= 0x5F)
      {
        v26 = 32;
      }

      v44 = 2048;
      v45 = a6;
      if (v16 - 32 >= 0x5F)
      {
        v27 = 32;
      }

      else
      {
        v27 = v16;
      }

      v46 = 2048;
      v47 = a7;
      v48 = 1024;
      v49 = v16;
      v50 = 1024;
      v51 = v24;
      v52 = 1024;
      v53 = v25;
      v54 = 1024;
      v55 = v26;
      v56 = 1024;
      v57 = v27;
      _os_log_error_impl(&dword_2416BA000, v17, OS_LOG_TYPE_ERROR, "%s: DoIsolatedIO(%u, %llu, %c%c%c%c, %u, %llu, %llu) failed: %x (%c%c%c%c)", &v28, 0x6Cu);
    }
  }

  return v16 == 0;
}

BOOL ASDT::IOA2UserClient::SetStreamCurrentFormat(ASDT::IOA2UserClient *this, uint64_t a2, const AudioStreamBasicDescription *a3)
{
  v4 = a2;
  v15[1] = *MEMORY[0x277D85DE8];
  v11 = ASDT::IOAudio2::Helpers::Fixed64FromFloat64(this, a3->mSampleRate);
  v12 = *&a3->mFormatID;
  v13 = *&a3->mBytesPerFrame;
  mBitsPerChannel = a3->mBitsPerChannel;
  v15[0] = v4;
  v6 = ASDT::IOUserClient::CallMethod(this, 5, v15, 1, &v11, 40, 0, 0, 0, 0, 1);
  v8 = v6;
  if (v6)
  {
    v9 = ASDTIOA2LogType(v6, v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      ASDT::IOA2UserClient::SetStreamCurrentFormat();
    }
  }

  return v8 == 0;
}

BOOL ASDT::IOA2UserClient::SetControlValue(ASDT::IOA2UserClient *this, unsigned int a2, unsigned int *a3)
{
  v22[2] = *MEMORY[0x277D85DE8];
  v6 = *a3;
  v22[0] = a2;
  v22[1] = v6;
  v21 = 0;
  v14 = 1;
  v7 = ASDT::IOUserClient::CallMethod(this, 2, v22, 2, 0, 0, &v21, &v14, 0, 0, 1);
  v9 = v7;
  if (v7)
  {
    v10 = ASDTIOA2LogType(v7, v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = (this + 16);
      if (*(this + 39) < 0)
      {
        v11 = *v11;
      }

      v12 = *a3;
      *buf = 136315650;
      v16 = v11;
      v17 = 1024;
      v18 = a2;
      v19 = 1024;
      v20 = v12;
      _os_log_error_impl(&dword_2416BA000, v10, OS_LOG_TYPE_ERROR, "%s: SetControlValue(%u, %u): got an error when telling the hardware to change a control value", buf, 0x18u);
    }
  }

  else
  {
    *a3 = v21;
  }

  return v9 == 0;
}

BOOL ASDT::IOA2UserClient::SetMultiControlValue(ASDT::IOA2UserClient *this, uint64_t a2, const unsigned int *a3, int a4, unsigned int *a5, unsigned int *a6)
{
  v22[1] = *MEMORY[0x277D85DE8];
  v9 = (a4 + 1);
  MEMORY[0x28223BE20]();
  v11 = v22 - v10;
  *(v22 - v10) = v12;
  memcpy(v22 - v10 + 4, v14, 4 * v13);
  if (a6)
  {
    v15 = 4 * *a6;
    v16 = v22;
  }

  else
  {
    v16 = 0;
    v15 = 0;
  }

  v22[0] = v15;
  v17 = ASDT::IOUserClient::CallMethod(this, 8, 0, 0, v11, 4 * v9, 0, 0, a5, v16, 1);
  v19 = v17;
  if (v17)
  {
    v20 = ASDTIOA2LogType(v17, v18);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      ASDT::IOA2UserClient::SetMultiControlValue();
    }
  }

  else if (a6)
  {
    *a6 = v22[0] >> 2;
  }

  return v19 == 0;
}

uint64_t ASDT::IOA2UserClient::UpdateControlInfo(uint64_t a1, unsigned int a2, CFTypeRef *a3, uint64_t a4)
{
  v4 = *a3;
  if (*a3)
  {
    CFRetain(*a3);
    CFRetain(v4);
  }

  v5 = ASDT::IOUserClient::ArraySetValueAtIndex();
  if (v4)
  {
    CFRelease(v4);
    CFRelease(v4);
  }

  return v5;
}

void sub_2416C2184(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  applesauce::CF::TypeRef::~TypeRef(&a9);
  applesauce::CF::TypeRef::~TypeRef(&a10);
  _Unwind_Resume(a1);
}

uint64_t ASDT::IOA2UserClient::ReplaceControlInfo(ASDT::IOUserClient *a1, const applesauce::CF::ArrayRef *a2, unsigned int a3, CFTypeRef *a4, uint64_t a5)
{
  v9 = *a4;
  if (*a4)
  {
    CFRetain(*a4);
  }

  v15 = v9;
  updated = ASDT::IOA2UserClient::UpdateControlInfo(a2, a3, &v15, a5);
  if (v9)
  {
    CFRelease(v9);
  }

  if ((updated & 1) == 0)
  {
    return 0;
  }

  applesauce::CF::make_StringRef(&cf, @"controls", v10);
  v12 = ASDT::IOUserClient::ReplaceProperty(a1, &cf, a2);
  if (cf)
  {
    CFRelease(cf);
  }

  return v12;
}

uint64_t ASDT::IOA2UserClient::UpdateControlValue(uint64_t a1, const __CFString *a2)
{
  applesauce::CF::make_StringRef(&v6, @"value", a2);
  isa = a2->isa;
  if (isa)
  {
    CFRetain(isa);
  }

  v4 = ASDT::IOUserClient::DictionarySetValueForKey();
  if (isa)
  {
    CFRelease(isa);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  return v4;
}

void sub_2416C2318(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  applesauce::CF::TypeRef::~TypeRef(&a9);
  applesauce::CF::StringRef::~StringRef(&a10);
  _Unwind_Resume(a1);
}

uint64_t ASDT::IOA2UserClient::ReplaceControlValue(ASDT::IOUserClient *a1, const applesauce::CF::ArrayRef *a2, unsigned int a3, const void **a4, CFTypeRef *a5)
{
  v9 = *a5;
  if (*a5)
  {
    CFRetain(*a5);
  }

  v15.isa = v9;
  updated = ASDT::IOA2UserClient::UpdateControlValue(a4, &v15);
  if (v9)
  {
    CFRelease(v9);
  }

  if ((updated & 1) == 0)
  {
    return 0;
  }

  v11 = *a4;
  if (v11)
  {
    CFRetain(v11);
  }

  v14 = v11;
  v12 = ASDT::IOA2UserClient::ReplaceControlInfo(a1, a2, a3, &v14, 0);
  if (v11)
  {
    CFRelease(v11);
  }

  return v12;
}

uint64_t ASDT::IOA2UserClient::GetUpdatedControlValue(const __CFDictionary **a1, const __CFString *a2, CFNumberRef *a3, _BYTE *a4)
{
  v6 = a2;
  ControlInfo_BaseClass = ASDT::IOA2UserClient::GetControlInfo_BaseClass(a1, a2);
  LODWORD(v18.isa) = 0;
  result = ASDT::IOA2UserClient::GetControlInfo_Value(a1, &v18, v9);
  if (!result)
  {
    return result;
  }

  *a4 = 0;
  if (ControlInfo_BaseClass <= 1936483441)
  {
    if (ControlInfo_BaseClass == 1818588780)
    {
      goto LABEL_9;
    }

    v12 = 1936483188;
  }

  else
  {
    if (ControlInfo_BaseClass == 1936483442)
    {
      goto LABEL_9;
    }

    if (ControlInfo_BaseClass == 1953458028)
    {
      result = 1;
      if ((v6 != 0) != (LODWORD(v18.isa) == 0))
      {
        return result;
      }

      v6 = v6 != 0;
      goto LABEL_10;
    }

    v12 = 1936744814;
  }

  if (ControlInfo_BaseClass == v12)
  {
LABEL_9:
    result = 1;
    if (LODWORD(v18.isa) == v6)
    {
      return result;
    }

LABEL_10:
    *a4 = 1;
    HIDWORD(v18.isa) = v6;
    v13 = CFNumberCreate(0, kCFNumberIntType, &v18.isa + 4);
    if (!v13)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x245CED520](exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    v14 = v13;
    CFRetain(v13);
    v15 = *a3;
    *a3 = v14;
    if (v15)
    {
      CFRelease(v15);
    }

    CFRelease(v14);
    return 1;
  }

  v16 = ASDTIOA2LogType(result, v11);
  result = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
  if (result)
  {
    ASDT::IOA2UserClient::GetUpdatedControlValue();
    return 0;
  }

  return result;
}

uint64_t ASDT::IOA2UserClient::ReplaceControlValue(ASDT::IOA2UserClient *this, const __CFString *a2, const __CFString *a3)
{
  ASDT::IOA2UserClient::CopyControlList(this, a2, &v20);
  v19 = -1;
  ASDT::IOA2UserClient::CopyControlDictionaryByID(&v20, a2, &v19, &cf);
  v8 = cf;
  if (!cf)
  {
    v12 = ASDTIOA2LogType(v6, v7);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      ASDT::IOA2UserClient::ReplaceControlValue();
    }

    UpdatedControlValue = 0;
    goto LABEL_14;
  }

  v17 = 0;
  v16 = 0;
  CFRetain(cf);
  v15 = v8;
  UpdatedControlValue = ASDT::IOA2UserClient::GetUpdatedControlValue(&v15, a3, &v17, &v16);
  CFRelease(v8);
  if ((UpdatedControlValue & 1) == 0)
  {
    v10 = v17;
LABEL_12:
    if (!v10)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v10 = v17;
  if (v16 != 1)
  {
    goto LABEL_12;
  }

  v11 = v19;
  if (v17)
  {
    CFRetain(v17);
  }

  v14 = v10;
  UpdatedControlValue = ASDT::IOA2UserClient::ReplaceControlValue(this, &v20, v11, &cf, &v14);
  if (v10)
  {
    CFRelease(v10);
LABEL_13:
    CFRelease(v10);
  }

LABEL_14:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  return UpdatedControlValue;
}

void sub_2416C2750(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, const void *);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  va_copy(va2, va1);
  v9 = va_arg(va2, const void *);
  applesauce::CF::TypeRef::~TypeRef(va);
  applesauce::CF::TypeRef::~TypeRef(va1);
  applesauce::CF::DictionaryRef::~DictionaryRef(va2);
  applesauce::CF::ArrayRef::~ArrayRef((v3 - 40));
  _Unwind_Resume(a1);
}

BOOL ASDT::IOA2UserClient::GetUpdatedMultiControlValue(const __CFDictionary **a1, __CFString *a2, unsigned int a3, CFArrayRef *a4, _BYTE *a5)
{
  if (a2 || !a3)
  {
    ASDT::IOA2UserClient::CopySelectorControlInfo_MultiSelectorValue(a1, a2, &v27);
    v11 = v27;
    v10 = v27 != 0;
    if (v27)
    {
      v24 = 0;
      v25 = 0;
      v26 = 0;
      std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>(&v24, a2, a2 + a3, a3);
      v21 = 0;
      v22 = 0;
      v23 = 0;
      std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&v21, v24, v25, (v25 - v24) >> 2);
      std::__sort<std::__less<unsigned int,unsigned int> &,unsigned int *>();
      Count = CFArrayGetCount(v11);
      std::vector<unsigned int>::vector[abi:ne200100](&__p, Count);
      if (Count)
      {
        for (i = 0; i != Count; ++i)
        {
          v14 = applesauce::CF::details::at_as<unsigned int>(v11, i);
          if ((v14 & 0x100000000) != 0)
          {
            *(__p + i) = v14;
          }
        }
      }

      std::__sort<std::__less<unsigned int,unsigned int> &,unsigned int *>();
      if (v20 - __p == v25 - v24 && !memcmp(__p, v24, v20 - __p))
      {
        *a5 = 0;
      }

      else
      {
        *a5 = 1;
        CFArray = applesauce::CF::details::make_CFArrayRef<unsigned int>(&v21);
        v16 = CFArray;
        if (CFArray)
        {
          CFRetain(CFArray);
        }

        v17 = *a4;
        *a4 = v16;
        if (v17)
        {
          CFRelease(v17);
        }

        if (v16)
        {
          CFRelease(v16);
        }
      }

      if (__p)
      {
        v20 = __p;
        operator delete(__p);
      }

      if (v21)
      {
        v22 = v21;
        operator delete(v21);
      }

      if (v24)
      {
        v25 = v24;
        operator delete(v24);
      }

      CFRelease(v11);
    }
  }

  else
  {
    v9 = ASDTIOA2LogType(a1, 0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      ASDT::IOA2UserClient::GetUpdatedMultiControlValue();
    }

    return 0;
  }

  return v10;
}

void sub_2416C297C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  if (a16)
  {
    operator delete(a16);
  }

  applesauce::CF::ArrayRef::~ArrayRef((v17 - 64));
  _Unwind_Resume(a1);
}

uint64_t ASDT::IOA2UserClient::ReplaceMultiControlValue(ASDT::IOA2UserClient *this, const __CFString *a2, __CFString *a3, unsigned int a4)
{
  ASDT::IOA2UserClient::CopyControlList(this, a2, &v22);
  v21 = -1;
  ASDT::IOA2UserClient::CopyControlDictionaryByID(&v22, a2, &v21, &cf);
  v10 = cf;
  if (!cf)
  {
    v14 = ASDTIOA2LogType(v8, v9);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      ASDT::IOA2UserClient::ReplaceMultiControlValue();
    }

    UpdatedMultiControlValue = 0;
    goto LABEL_14;
  }

  v19 = 0;
  v18 = 0;
  CFRetain(cf);
  v17 = v10;
  UpdatedMultiControlValue = ASDT::IOA2UserClient::GetUpdatedMultiControlValue(&v17, a3, a4, &v19, &v18);
  CFRelease(v10);
  if ((UpdatedMultiControlValue & 1) == 0)
  {
    v12 = v19;
LABEL_12:
    if (!v12)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v12 = v19;
  if (v18 != 1)
  {
    goto LABEL_12;
  }

  v13 = v21;
  if (v19)
  {
    CFRetain(v19);
  }

  v16 = v12;
  UpdatedMultiControlValue = ASDT::IOA2UserClient::ReplaceControlValue(this, &v22, v13, &cf, &v16);
  if (v12)
  {
    CFRelease(v12);
LABEL_13:
    CFRelease(v12);
  }

LABEL_14:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  return UpdatedMultiControlValue;
}

void sub_2416C2B48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va3, a3);
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, const void *);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  va_copy(va2, va1);
  v8 = va_arg(va2, const void *);
  va_copy(va3, va2);
  v10 = va_arg(va3, const void *);
  v12 = va_arg(va3, void);
  applesauce::CF::TypeRef::~TypeRef(va);
  applesauce::CF::TypeRef::~TypeRef(va1);
  applesauce::CF::DictionaryRef::~DictionaryRef(va2);
  applesauce::CF::ArrayRef::~ArrayRef(va3);
  _Unwind_Resume(a1);
}

uint64_t ASDT::IOA2UserClient::RefreshControlList(ASDT::IOA2UserClient *this, const __CFString *a2)
{
  applesauce::CF::make_StringRef(&v10, @"controls", a2);
  cf = 0;
  v4 = ASDT::IOUserClient::CopyProperty<applesauce::CF::ArrayRef>(*(this + 2), &v10, &cf, v3);
  if (v4)
  {
    v6 = ASDT::IOUserClient::ReplaceProperty(this, &v10, &cf);
  }

  else
  {
    v7 = ASDTIOA2LogType(v4, v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      ASDT::IOA2UserClient::RefreshControlList();
    }

    v6 = 0;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  return v6;
}

void sub_2416C2C54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  applesauce::CF::ArrayRef::~ArrayRef(&a9);
  applesauce::CF::StringRef::~StringRef(&a10);
  _Unwind_Resume(a1);
}

uint64_t ASDT::IOUserClient::CopyProperty<applesauce::CF::ArrayRef>(ASDT::IOUserClient *a1, uint64_t a2, const applesauce::CF::TypeRef *a3, applesauce::CF::TypeRef *a4)
{
  cf = 0;
  if (ASDT::IOUserClient::CopyProperty(a1, a2, &cf, a4))
  {
    v6 = ASDT::IOUserClient::ConvertValue(&cf, a3, v5);
  }

  else
  {
    v6 = 0;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v6;
}

void sub_2416C2CE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  applesauce::CF::TypeRef::~TypeRef(va);
  _Unwind_Resume(a1);
}

uint64_t ASDT::IOA2UserClient::RefreshControlInfo(ASDT::IOA2UserClient *this, const __CFString *a2)
{
  applesauce::CF::make_StringRef(&v20, @"controls", a2);
  v19 = 0;
  v5 = ASDT::IOUserClient::CopyProperty<applesauce::CF::ArrayRef>(*(this + 2), &v20, &v19, v4);
  if (v5)
  {
    v18 = -1;
    ASDT::IOA2UserClient::CopyControlDictionaryByID(&v19, a2, &v18, &cf);
    v16 = -1;
    ASDT::IOA2UserClient::CopyControlList(this, v7, &v15);
    ASDT::IOA2UserClient::CopyControlDictionaryByID(&v15, a2, &v16, &v14);
    v8 = v16;
    v9 = cf;
    if (cf)
    {
      CFRetain(cf);
    }

    v13 = v9;
    v10 = ASDT::IOA2UserClient::ReplaceControlInfo(this, &v15, v8, &v13, 1);
    if (v9)
    {
      CFRelease(v9);
    }

    if (v14)
    {
      CFRelease(v14);
    }

    if (v15)
    {
      CFRelease(v15);
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    v11 = ASDTIOA2LogType(v5, v6);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      ASDT::IOA2UserClient::RefreshControlInfo();
    }

    v10 = 0;
  }

  if (v19)
  {
    CFRelease(v19);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  return v10;
}

void sub_2416C2E50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, const void *a11, uint64_t a12, const void *a13, uint64_t a14, const void *a15)
{
  applesauce::CF::DictionaryRef::~DictionaryRef(&a9);
  applesauce::CF::DictionaryRef::~DictionaryRef(&a10);
  applesauce::CF::ArrayRef::~ArrayRef(&a11);
  applesauce::CF::DictionaryRef::~DictionaryRef(&a13);
  applesauce::CF::ArrayRef::~ArrayRef(&a15);
  applesauce::CF::StringRef::~StringRef((v15 - 40));
  _Unwind_Resume(a1);
}

BOOL ASDT::IOA2UserClient::PerformConfigChange(ASDT::IOA2UserClient *this, const IOAudio2Notification *a2)
{
  v2 = ASDT::IOUserClient::CallMethod(this, 3, 0, 0, a2, 32, 0, 0, 0, 0, 0);
  v4 = v2;
  if (v2)
  {
    v5 = ASDTIOA2LogType(v2, v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      ASDT::IOA2UserClient::PerformConfigChange();
    }
  }

  return v4 == 0;
}

void ASDT::IOA2UserClient::MapEngineStatus(ASDT::IOA2UserClient *this@<X0>, uint64_t a2@<X8>)
{
  v3 = ASDT::IOUserClient::MapMemory(this);
  if (*(a2 + 104))
  {
    if (*(a2 + 112) <= 0x27u)
    {
      v5 = ASDTIOA2LogType(v3, v4);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        ASDT::IOA2UserClient::MapEngineStatus();
      }

      ASDT::IOMemoryMap::Release(a2);
    }
  }

  else
  {
    v6 = ASDTIOA2LogType(v3, v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      ASDT::IOA2UserClient::MapEngineStatus();
    }
  }
}

void ASDT::IOA2UserClient::~IOA2UserClient(ASDT::IOA2UserClient *this)
{
  ASDT::IOUserClient::~IOUserClient(this);

  JUMPOUT(0x245CED6B0);
}

const void **applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t *std::vector<char>::vector[abi:ne200100](uint64_t *a1, uint64_t a2, unsigned __int8 *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<char>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_2416C30E0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<char>::__vallocate[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::vector<char>::__throw_length_error[abi:ne200100]();
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_278CE8B28, MEMORY[0x277D825F0]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

const void **applesauce::CF::ObjectRef<__CFNumber const*>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **applesauce::CF::ObjectRef<__CFData const*>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void applesauce::CF::details::find_at_key_or_optional<applesauce::CF::NumberRef,applesauce::CF::StringRef>(_BYTE *a1@<X8>, const __CFDictionary *a2@<X0>, const void **a3@<X1>)
{
  v4 = applesauce::CF::details::at_key<applesauce::CF::StringRef>(a2, a3);
  if (!v4)
  {
    goto LABEL_5;
  }

  v5 = v4;
  CFRetain(v4);
  v6 = CFGetTypeID(v5);
  if (v6 != CFNumberGetTypeID())
  {
    CFRelease(v5);
LABEL_5:
    v7 = 0;
    *a1 = 0;
    goto LABEL_6;
  }

  *a1 = v5;
  v7 = 1;
LABEL_6:
  a1[8] = v7;
}

const __CFDictionary *applesauce::CF::details::at_key<applesauce::CF::StringRef>(const __CFDictionary *result, const void **a2)
{
  if (result)
  {
    v2 = *a2;
    if (v2)
    {
      return CFDictionaryGetValue(result, v2);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t applesauce::CF::convert_as<unsigned int,0>(const __CFNumber *a1)
{
  if (a1 && (TypeID = CFNumberGetTypeID(), TypeID == CFGetTypeID(a1)))
  {
    v3 = applesauce::CF::details::number_convert_as<unsigned int>(a1);
  }

  else
  {
    v3 = applesauce::CF::details::treat_as_BOOL_for_convert_as<unsigned int>(a1);
  }

  return v3 & 0xFFFFFFFFFFLL;
}

uint64_t applesauce::CF::details::treat_as_BOOL_for_convert_as<unsigned int>(const __CFBoolean *a1)
{
  if (a1 && (TypeID = CFBooleanGetTypeID(), TypeID == CFGetTypeID(a1)))
  {
    Value = CFBooleanGetValue(a1);
    v4 = 0x100000000;
  }

  else
  {
    Value = 0;
    v4 = 0;
  }

  return v4 | Value;
}

uint64_t applesauce::CF::details::number_convert_as<unsigned int>(const __CFNumber *a1)
{
  switch(CFNumberGetType(a1))
  {
    case kCFNumberSInt8Type:
      LOBYTE(valuePtr) = 0;
      v2 = a1;
      v3 = kCFNumberSInt8Type;
      goto LABEL_21;
    case kCFNumberSInt16Type:
      LOWORD(valuePtr) = 0;
      v12 = a1;
      v13 = kCFNumberSInt16Type;
      goto LABEL_14;
    case kCFNumberSInt32Type:
      LODWORD(valuePtr) = 0;
      v4 = a1;
      v5 = kCFNumberSInt32Type;
      goto LABEL_29;
    case kCFNumberSInt64Type:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberSInt64Type;
      goto LABEL_29;
    case kCFNumberFloat32Type:
      LODWORD(valuePtr) = 0;
      v6 = a1;
      v7 = kCFNumberFloat32Type;
      goto LABEL_6;
    case kCFNumberFloat64Type:
      valuePtr = 0.0;
      v10 = a1;
      v11 = kCFNumberFloat64Type;
      goto LABEL_18;
    case kCFNumberCharType:
      LOBYTE(valuePtr) = 0;
      v2 = a1;
      v3 = kCFNumberCharType;
LABEL_21:
      Value = CFNumberGetValue(v2, v3, &valuePtr);
      LOBYTE(v14) = LOBYTE(valuePtr);
      if (!Value)
      {
        LOBYTE(v14) = 0;
      }

      v16 = SLOBYTE(valuePtr) < 0 && Value != 0;
      v17.i64[0] = Value != 0;
      v17.i64[1] = v16 << 63 >> 63;
      break;
    case kCFNumberShortType:
      LOWORD(valuePtr) = 0;
      v12 = a1;
      v13 = kCFNumberShortType;
LABEL_14:
      if (CFNumberGetValue(v12, v13, &valuePtr))
      {
        v14 = SLOWORD(valuePtr) & 0xFFFFFFFFLL | 0x100000000;
      }

      else
      {
        v14 = 0;
      }

      goto LABEL_32;
    case kCFNumberIntType:
      LODWORD(valuePtr) = 0;
      v4 = a1;
      v5 = kCFNumberIntType;
      goto LABEL_29;
    case kCFNumberLongType:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberLongType;
      goto LABEL_29;
    case kCFNumberLongLongType:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberLongLongType;
      goto LABEL_29;
    case kCFNumberFloatType:
      LODWORD(valuePtr) = 0;
      v6 = a1;
      v7 = kCFNumberFloatType;
LABEL_6:
      v8 = CFNumberGetValue(v6, v7, &valuePtr);
      v9 = *&valuePtr;
      goto LABEL_30;
    case kCFNumberDoubleType:
      valuePtr = 0.0;
      v10 = a1;
      v11 = kCFNumberDoubleType;
      goto LABEL_18;
    case kCFNumberCFIndexType:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberCFIndexType;
      goto LABEL_29;
    case kCFNumberNSIntegerType:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberNSIntegerType;
LABEL_29:
      v8 = CFNumberGetValue(v4, v5, &valuePtr);
      v9 = LODWORD(valuePtr);
      goto LABEL_30;
    case kCFNumberCGFloatType:
      valuePtr = 0.0;
      v10 = a1;
      v11 = kCFNumberCGFloatType;
LABEL_18:
      v8 = CFNumberGetValue(v10, v11, &valuePtr);
      v9 = valuePtr;
LABEL_30:
      v14 = v9 | 0x100000000;
      if (!v8)
      {
        v14 = 0;
      }

LABEL_32:
      v17 = vshlq_u64(vdupq_n_s64(v14), xmmword_2416DF7C0);
      break;
    default:
      LOBYTE(v14) = 0;
      v17 = 0uLL;
      break;
  }

  v18 = vandq_s8(vshlq_u64(v17, xmmword_2416DF7D0), xmmword_2416DF7E0);
  return v18.i64[0] | v14 | v18.i64[1];
}

uint64_t std::optional<applesauce::CF::NumberRef>::~optional(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    v2 = *a1;
    if (*a1)
    {
      CFRelease(v2);
    }
  }

  return a1;
}

void *applesauce::CF::DictionaryRef_proxy::DictionaryRef_proxy(void *this, const applesauce::CF::DictionaryRef *a2)
{
  *this = a2;
  if (!*a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
  }

  return this;
}

BOOL CA::Implementation::EquivalentFormatFlags(CA::Implementation *this, AudioStreamBasicDescription *a2, const AudioStreamBasicDescription *a3, int a4)
{
  if (a4)
  {
    v6.i64[0] = *(this + 1);
    v6.i64[1] = *&a2->mFormatID;
    if (vmaxv_u16(vmovn_s32(vceqzq_s32(v6))))
    {
      return 1;
    }
  }

  if (*(this + 2) == 1819304813)
  {
    RegularizedFormatFlags = CA::Implementation::GetRegularizedFormatFlags(this, a3);
    return RegularizedFormatFlags == CA::Implementation::GetRegularizedFormatFlags(a2, a3);
  }

  else
  {
    return *(this + 3) == a2->mFormatFlags;
  }
}

uint64_t CA::Implementation::GetRegularizedFormatFlags(CA::Implementation *this, const AudioStreamBasicDescription *a2)
{
  v2 = *(this + 3);
  if (*(this + 2) != 1819304813)
  {
    return v2;
  }

  v3 = v2 & 0x7FFFFFFF;
  if ((v2 & 0x7FFFFFFF) == 0)
  {
    v3 = *(this + 3);
  }

  if (a2)
  {
    v4 = v3;
  }

  else
  {
    v4 = v3 & 0xFFFFFFBF;
  }

  v5 = *(this + 6);
  if (!v5)
  {
    v9 = v4 | 8;
    v6 = *(this + 7);
    v8 = *(this + 8);
LABEL_15:
    v10 = v8 == 0;
    goto LABEL_16;
  }

  v6 = *(this + 7);
  if ((v2 & 0x20) != 0)
  {
    v7 = 1;
  }

  else
  {
    v7 = *(this + 7);
  }

  if (!v7)
  {
    v5 = 0;
    v8 = *(this + 8);
    v9 = v4 | 8;
    goto LABEL_15;
  }

  v5 = 8 * (v5 / v7);
  v8 = *(this + 8);
  v9 = v4 | 8;
  v10 = v5 == v8;
LABEL_16:
  if (v10)
  {
    v4 = v9;
  }

  v11 = (v8 & 7) == 0 && v5 == v8;
  v12 = v4 & 0xFFFFFFEF;
  if (!v11)
  {
    v12 = v4;
  }

  if (v12)
  {
    v12 &= ~4u;
  }

  v13 = (v12 & 8) == 0 || v8 > 8;
  LODWORD(v2) = v12 & 2;
  if (v13)
  {
    LODWORD(v2) = v12;
  }

  if (v6 == 1)
  {
    LODWORD(v2) = v2 & 0xFFFFFFDF;
  }

  if (v2)
  {
    return v2;
  }

  else
  {
    return 0x80000000;
  }
}

uint64_t *std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>(uint64_t *result, int *a2, int *a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned int>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2416C38F4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<unsigned int>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    std::allocator<unsigned int>::allocate_at_least[abi:ne200100](a1, a2);
  }

  std::vector<char>::__throw_length_error[abi:ne200100]();
}

void std::allocator<unsigned int>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t *std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned int>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2416C39F4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<unsigned int>::vector[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<unsigned int>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_2416C3A6C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

CFTypeRef applesauce::CF::details::at_to<applesauce::CF::TypeRef>@<X0>(const __CFArray *a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  if (!a1 || CFArrayGetCount(a1) <= a2 || (ValueAtIndex = CFArrayGetValueAtIndex(a1, a2), (v7 = ValueAtIndex) == 0))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::not_found(exception);
  }

  result = CFRetain(ValueAtIndex);
  *a3 = v7;
  return result;
}

void applesauce::CF::at_or<applesauce::CF::NumberRef>(void *a1@<X2>, void *a2@<X8>, const __CFArray *a3@<X0>, unint64_t a4@<X1>)
{
  applesauce::CF::details::at_as<applesauce::CF::NumberRef>(a3, a4, &cf);
  if (v9 != 1)
  {
    *a2 = *a1;
    *a1 = 0;
    return;
  }

  v6 = cf;
  if (cf)
  {
    CFRetain(cf);
    v7 = v9;
    *a2 = v6;
    if ((v7 & 1) == 0)
    {
      return;
    }
  }

  else
  {
    *a2 = 0;
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

void applesauce::CF::details::at_as<applesauce::CF::NumberRef>(const __CFArray *a1@<X0>, unint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (!a1)
  {
    goto LABEL_7;
  }

  if (CFArrayGetCount(a1) <= a2)
  {
    goto LABEL_7;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(a1, a2);
  v7 = ValueAtIndex;
  if (!ValueAtIndex)
  {
    goto LABEL_7;
  }

  CFRetain(ValueAtIndex);
  v8 = CFGetTypeID(v7);
  if (v8 != CFNumberGetTypeID())
  {
    CFRelease(v7);
LABEL_7:
    v9 = 0;
    *a3 = 0;
    goto LABEL_8;
  }

  *a3 = v7;
  v9 = 1;
LABEL_8:
  a3[8] = v9;
}

uint64_t applesauce::CF::convert_to<unsigned int,0>(const __CFNumber *a1)
{
  result = applesauce::CF::convert_as<unsigned int,0>(a1);
  if ((result & 0x100000000) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::convert_error(exception);
  }

  return result;
}

void applesauce::CF::details::at_as<applesauce::CF::DictionaryRef>(const __CFArray *a1@<X0>, unint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (!a1)
  {
    goto LABEL_7;
  }

  if (CFArrayGetCount(a1) <= a2)
  {
    goto LABEL_7;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(a1, a2);
  v7 = ValueAtIndex;
  if (!ValueAtIndex)
  {
    goto LABEL_7;
  }

  CFRetain(ValueAtIndex);
  v8 = CFGetTypeID(v7);
  if (v8 != CFDictionaryGetTypeID())
  {
    CFRelease(v7);
LABEL_7:
    v9 = 0;
    *a3 = 0;
    goto LABEL_8;
  }

  *a3 = v7;
  v9 = 1;
LABEL_8:
  a3[8] = v9;
}

void *applesauce::CF::ArrayRef_iterator<applesauce::CF::TypeRef>::iterator_proxy::iterator_proxy(void *a1, CFTypeRef *a2)
{
  v3 = *a2;
  if (*a2)
  {
    CFRetain(*a2);
  }

  *a1 = v3;
  return a1;
}

const __CFDictionary *applesauce::CF::details::find_at_key_or_optional<unsigned int,applesauce::CF::StringRef>(const __CFDictionary *a1, const void **a2)
{
  result = applesauce::CF::details::at_key<applesauce::CF::StringRef>(a1, a2);
  if (result)
  {
    return (applesauce::CF::convert_as<unsigned int,0>(result) & 0xFFFFFFFFFFLL);
  }

  return result;
}

void std::__tree<std::__value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::__map_value_compare<applesauce::CF::StringRef,std::__value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::less<applesauce::CF::StringRef>,true>,std::allocator<std::__value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::__map_value_compare<applesauce::CF::StringRef,std::__value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::less<applesauce::CF::StringRef>,true>,std::allocator<std::__value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::__map_value_compare<applesauce::CF::StringRef,std::__value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::less<applesauce::CF::StringRef>,true>,std::allocator<std::__value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>>>::destroy(a1, a2[1]);
    v4 = a2[5];
    if (v4)
    {
      CFRelease(v4);
    }

    v5 = a2[4];
    if (v5)
    {
      CFRelease(v5);
    }

    operator delete(a2);
  }
}

uint64_t std::__tree<std::__value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::__map_value_compare<applesauce::CF::StringRef,std::__value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::less<applesauce::CF::StringRef>,true>,std::allocator<std::__value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>>>::__emplace_unique_key_args<applesauce::CF::StringRef,applesauce::CF::StringRef,applesauce::CF::NumberRef>(uint64_t a1, CFTypeRef *a2, uint64_t a3, uint64_t a4)
{
  v4 = *std::__tree<std::__value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::__map_value_compare<applesauce::CF::StringRef,std::__value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::less<applesauce::CF::StringRef>,true>,std::allocator<std::__value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>>>::__find_equal<applesauce::CF::StringRef>(a1, &v6, a2);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

uint64_t *std::__tree<std::__value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::__map_value_compare<applesauce::CF::StringRef,std::__value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::less<applesauce::CF::StringRef>,true>,std::allocator<std::__value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>>>::__find_equal<applesauce::CF::StringRef>(uint64_t a1, const __CFString ***a2, CFTypeRef *a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        if (applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(a3, v4 + 4) < 2)
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if (applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(v7 + 4, a3) < 2)
      {
        break;
      }

      v5 = v7 + 1;
      v4 = v7[1];
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_9:
  *a2 = v7;
  return v5;
}

uint64_t *std::__tree<std::__value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::__map_value_compare<applesauce::CF::StringRef,std::__value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::less<applesauce::CF::StringRef>,true>,std::allocator<std::__value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>>>::__insert_node_at(uint64_t ***a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

CFComparisonResult applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(CFTypeRef *a1, const __CFString **a2)
{
  v3 = *a1;
  if (*a1)
  {
    CFRetain(*a1);
    v4 = *a2;
    if (!v4)
    {
      v5 = kCFCompareGreaterThan;
LABEL_9:
      CFRelease(v3);
      return v5;
    }
  }

  else
  {
    v4 = *a2;
    if (!*a2)
    {
      return 0;
    }
  }

  CFRetain(v4);
  if (v3)
  {
    v5 = CFStringCompare(v3, v4, 0);
  }

  else
  {
    v5 = kCFCompareLessThan;
  }

  CFRelease(v4);
  if (v3)
  {
    goto LABEL_9;
  }

  return v5;
}

void *std::pair<applesauce::CF::StringRef const,applesauce::CF::TypeRef>::pair[abi:ne200100]<applesauce::CF::StringRef,applesauce::CF::NumberRef,0>(void *a1, void *a2, CFTypeRef *a3)
{
  *a1 = *a2;
  *a2 = 0;
  v4 = *a3;
  if (*a3)
  {
    CFRetain(*a3);
  }

  a1[1] = v4;
  return a1;
}

uint64_t *std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (*(v2 + 24))
      {
        break;
      }

      v3 = *(v2 + 16);
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = *(v2 + 8);
            v12 = *v11;
            *(v2 + 8) = *v11;
            v13 = v2;
            if (v12)
            {
              *(v12 + 16) = v2;
              v3 = *(v2 + 16);
              v13 = *v3;
            }

            *(v11 + 16) = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            *(v2 + 16) = v11;
            v3 = *(v11 + 16);
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = *(v2 + 16);
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            *(v2 + 16) = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

CFDictionaryRef applesauce::CF::details::make_CFDictionaryRef<applesauce::CF::StringRef,applesauce::CF::TypeRef>(CFTypeRef **a1)
{
  v11 = 0;
  v12 = 0;
  v13 = 0;
  std::vector<applesauce::CF::TypeRefPair>::reserve(&v11, a1[2]);
  v4 = *a1;
  v2 = a1 + 1;
  v3 = v4;
  if (v4 != v2)
  {
    v5 = v12;
    do
    {
      if (v5 >= v13)
      {
        v5 = std::vector<applesauce::CF::TypeRefPair>::__emplace_back_slow_path<applesauce::CF::StringRef const&,applesauce::CF::TypeRef const&>(&v11, v3 + 4, v3 + 5);
      }

      else
      {
        std::allocator_traits<std::allocator<applesauce::CF::TypeRefPair>>::construct[abi:ne200100]<applesauce::CF::TypeRefPair,applesauce::CF::StringRef const&,applesauce::CF::TypeRef const&,void,0>(&v11, v5, v3 + 4, v3 + 5);
        v5 += 2;
      }

      v12 = v5;
      v6 = v3[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v3[2];
          v8 = *v7 == v3;
          v3 = v7;
        }

        while (!v8);
      }

      v3 = v7;
    }

    while (v7 != v2);
  }

  CFDictionaryRef = applesauce::CF::details::make_CFDictionaryRef(&v11);
  v14 = &v11;
  std::vector<applesauce::CF::TypeRefPair>::__destroy_vector::operator()[abi:ne200100](&v14);
  return CFDictionaryRef;
}

void sub_2416C4390(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t *a12)
{
  a12 = &a9;
  std::vector<applesauce::CF::TypeRefPair>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

uint64_t *std::vector<applesauce::CF::TypeRefPair>::reserve(uint64_t *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      std::allocator<applesauce::CF::TypeRefPair>::allocate_at_least[abi:ne200100](result, a2);
    }

    std::vector<char>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_2416C4464(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<applesauce::CF::TypeRefPair>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

CFDictionaryRef applesauce::CF::details::make_CFDictionaryRef(char **a1)
{
  v2 = (a1[1] - *a1) >> 4;
  __p = 0;
  v31 = 0;
  v32 = 0;
  std::vector<void const*>::reserve(&__p, v2);
  values = 0;
  v28 = 0;
  v29 = 0;
  std::vector<void const*>::reserve(&values, v2);
  v3 = *a1;
  v4 = a1[1];
  if (*a1 != v4)
  {
    do
    {
      v5 = *v3;
      if (!*v3 || !*(v3 + 1))
      {
        exception = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x245CED520](exception, "Could not construct");
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v6 = v31;
      if (v31 >= v32)
      {
        v8 = (v31 - __p) >> 3;
        if ((v8 + 1) >> 61)
        {
          std::vector<char>::__throw_length_error[abi:ne200100]();
        }

        v9 = (v32 - __p) >> 2;
        if (v9 <= v8 + 1)
        {
          v9 = v8 + 1;
        }

        if (v32 - __p >= 0x7FFFFFFFFFFFFFF8)
        {
          v10 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        if (v10)
        {
          std::allocator<void const*>::allocate_at_least[abi:ne200100](&__p, v10);
        }

        v11 = (8 * v8);
        *v11 = v5;
        v7 = 8 * v8 + 8;
        v12 = v11 - (v31 - __p);
        memcpy(v12, __p, v31 - __p);
        v13 = __p;
        __p = v12;
        v31 = v7;
        v32 = 0;
        if (v13)
        {
          operator delete(v13);
        }
      }

      else
      {
        *v31 = v5;
        v7 = (v6 + 8);
      }

      v31 = v7;
      v14 = *(v3 + 1);
      v15 = v28;
      if (v28 >= v29)
      {
        v17 = v28 - values;
        if ((v17 + 1) >> 61)
        {
          std::vector<char>::__throw_length_error[abi:ne200100]();
        }

        v18 = (v29 - values) >> 2;
        if (v18 <= v17 + 1)
        {
          v18 = v17 + 1;
        }

        if (v29 - values >= 0x7FFFFFFFFFFFFFF8)
        {
          v19 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v19 = v18;
        }

        if (v19)
        {
          std::allocator<void const*>::allocate_at_least[abi:ne200100](&values, v19);
        }

        v20 = (8 * v17);
        *v20 = v14;
        v16 = 8 * v17 + 8;
        v21 = v20 - (v28 - values);
        memcpy(v21, values, v28 - values);
        v22 = values;
        values = v21;
        v28 = v16;
        v29 = 0;
        if (v22)
        {
          operator delete(v22);
        }
      }

      else
      {
        *v28 = v14;
        v16 = (v15 + 1);
      }

      v28 = v16;
      v3 += 16;
    }

    while (v3 != v4);
  }

  v23 = CFDictionaryCreate(0, __p, values, v2, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!v23)
  {
    v26 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x245CED520](v26, "Could not construct");
    __cxa_throw(v26, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if (values)
  {
    v28 = values;
    operator delete(values);
  }

  if (__p)
  {
    v31 = __p;
    operator delete(__p);
  }

  return v23;
}

void sub_2416C4720(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  __cxa_free_exception(v13);
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(a1);
}

void std::allocator<applesauce::CF::TypeRefPair>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<applesauce::CF::TypeRefPair>,applesauce::CF::TypeRefPair*>(uint64_t a1, void *a2, void *a3, void *a4)
{
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      *a4 = *v7;
      *v7 = 0;
      a4[1] = v7[1];
      v7[1] = 0;
      v7 += 2;
      a4 += 2;
    }

    while (v7 != a3);
    v12 = a4;
    v10 = 1;
    while (v5 != a3)
    {
      std::allocator_traits<std::allocator<applesauce::CF::TypeRefPair>>::destroy[abi:ne200100]<applesauce::CF::TypeRefPair,void,0>(a1, v5);
      v5 += 2;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<applesauce::CF::TypeRefPair>,applesauce::CF::TypeRefPair*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

void std::allocator_traits<std::allocator<applesauce::CF::TypeRefPair>>::destroy[abi:ne200100]<applesauce::CF::TypeRefPair,void,0>(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  if (v3)
  {
    CFRelease(v3);
  }

  if (*a2)
  {
    CFRelease(*a2);
  }
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<applesauce::CF::TypeRefPair>,applesauce::CF::TypeRefPair*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<applesauce::CF::TypeRefPair>,applesauce::CF::TypeRefPair*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<applesauce::CF::TypeRefPair>,applesauce::CF::TypeRefPair*>::operator()[abi:ne200100](uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 16;
      std::allocator_traits<std::allocator<applesauce::CF::TypeRefPair>>::destroy[abi:ne200100]<applesauce::CF::TypeRefPair,void,0>(v5, v3);
    }

    while (v3 != v4);
  }
}

uint64_t std::__split_buffer<applesauce::CF::TypeRefPair>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<applesauce::CF::TypeRefPair>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<applesauce::CF::TypeRefPair>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 16;
    std::allocator_traits<std::allocator<applesauce::CF::TypeRefPair>>::destroy[abi:ne200100]<applesauce::CF::TypeRefPair,void,0>(v5, v4 - 16);
  }
}

uint64_t std::vector<applesauce::CF::TypeRefPair>::__emplace_back_slow_path<applesauce::CF::StringRef const&,applesauce::CF::TypeRef const&>(uint64_t a1, CFTypeRef *a2, const void **a3)
{
  v3 = (*(a1 + 8) - *a1) >> 4;
  v4 = v3 + 1;
  if ((v3 + 1) >> 60)
  {
    std::vector<char>::__throw_length_error[abi:ne200100]();
  }

  v7 = *(a1 + 16) - *a1;
  if (v7 >> 3 > v4)
  {
    v4 = v7 >> 3;
  }

  if (v7 >= 0x7FFFFFFFFFFFFFF0)
  {
    v8 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v8 = v4;
  }

  v18 = a1;
  if (v8)
  {
    std::allocator<applesauce::CF::TypeRefPair>::allocate_at_least[abi:ne200100](a1, v8);
  }

  v15 = 0;
  v16 = 16 * v3;
  std::allocator_traits<std::allocator<applesauce::CF::TypeRefPair>>::construct[abi:ne200100]<applesauce::CF::TypeRefPair,applesauce::CF::StringRef const&,applesauce::CF::TypeRef const&,void,0>(a1, (16 * v3), a2, a3);
  v17 = (16 * v3 + 16);
  v9 = *(a1 + 8);
  v10 = (16 * v3 + *a1 - v9);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<applesauce::CF::TypeRefPair>,applesauce::CF::TypeRefPair*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = *(a1 + 16);
  v14 = v17;
  *(a1 + 8) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  std::__split_buffer<applesauce::CF::TypeRefPair>::~__split_buffer(&v15);
  return v14;
}

void sub_2416C4AE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<applesauce::CF::TypeRefPair>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

CFTypeRef std::allocator_traits<std::allocator<applesauce::CF::TypeRefPair>>::construct[abi:ne200100]<applesauce::CF::TypeRefPair,applesauce::CF::StringRef const&,applesauce::CF::TypeRef const&,void,0>(uint64_t a1, void *a2, CFTypeRef *a3, const void **a4)
{
  v6 = *a3;
  if (*a3)
  {
    result = CFRetain(*a3);
  }

  *a2 = v6;
  v8 = *a4;
  if (v8)
  {
    result = CFRetain(v8);
  }

  a2[1] = v8;
  return result;
}

void std::vector<void const*>::reserve(void *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 3)
  {
    if (!(a2 >> 61))
    {
      std::allocator<void const*>::allocate_at_least[abi:ne200100](a1, a2);
    }

    std::vector<char>::__throw_length_error[abi:ne200100]();
  }
}

void std::allocator<void const*>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<applesauce::CF::TypeRefPair>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<applesauce::CF::TypeRefPair>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<applesauce::CF::TypeRefPair>::__base_destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; std::allocator_traits<std::allocator<applesauce::CF::TypeRefPair>>::destroy[abi:ne200100]<applesauce::CF::TypeRefPair,void,0>(a1, i))
  {
    i -= 16;
  }

  *(a1 + 8) = a2;
}

const __CFDictionary *applesauce::CF::details::find_at_key_or_optional<unsigned long long,applesauce::CF::StringRef>(const __CFDictionary *a1, const void **a2)
{
  result = applesauce::CF::details::at_key<applesauce::CF::StringRef>(a1, a2);
  if (result)
  {
    return applesauce::CF::convert_as<unsigned long long,0>(result);
  }

  return result;
}

const __CFBoolean *applesauce::CF::convert_as<unsigned long long,0>(const __CFNumber *a1)
{
  if (a1 && (TypeID = CFNumberGetTypeID(), TypeID == CFGetTypeID(a1)))
  {
    return applesauce::CF::details::number_convert_as<unsigned long long>(a1);
  }

  else
  {
    return applesauce::CF::details::treat_as_BOOL_for_convert_as<unsigned long long>(a1);
  }
}

const __CFBoolean *applesauce::CF::details::treat_as_BOOL_for_convert_as<unsigned long long>(const __CFBoolean *result)
{
  if (result)
  {
    v1 = result;
    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(v1))
    {
      return CFBooleanGetValue(v1);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

unint64_t applesauce::CF::details::number_convert_as<unsigned long long>(const __CFNumber *a1)
{
  switch(CFNumberGetType(a1))
  {
    case kCFNumberSInt8Type:
      LOBYTE(valuePtr) = 0;
      v2 = a1;
      v3 = kCFNumberSInt8Type;
      goto LABEL_19;
    case kCFNumberSInt16Type:
      LOWORD(valuePtr) = 0;
      v14 = a1;
      v15 = kCFNumberSInt16Type;
      goto LABEL_14;
    case kCFNumberSInt32Type:
      LODWORD(valuePtr) = 0;
      v12 = a1;
      v13 = kCFNumberSInt32Type;
      goto LABEL_32;
    case kCFNumberSInt64Type:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberSInt64Type;
      goto LABEL_27;
    case kCFNumberFloat32Type:
      LODWORD(valuePtr) = 0;
      v6 = a1;
      v7 = kCFNumberFloat32Type;
      goto LABEL_6;
    case kCFNumberFloat64Type:
      valuePtr = 0.0;
      v10 = a1;
      v11 = kCFNumberFloat64Type;
      goto LABEL_16;
    case kCFNumberCharType:
      LOBYTE(valuePtr) = 0;
      v2 = a1;
      v3 = kCFNumberCharType;
LABEL_19:
      Value = CFNumberGetValue(v2, v3, &valuePtr);
      v20 = Value != 0;
      if (Value)
      {
        LOBYTE(v21) = LOBYTE(valuePtr);
      }

      else
      {
        LOBYTE(v21) = 0;
      }

      v22 = SLOBYTE(valuePtr) < 0 && v20;
      v23 = v22 << 63 >> 63;
      return v21 | (v23 << 8);
    case kCFNumberShortType:
      LOWORD(valuePtr) = 0;
      v14 = a1;
      v15 = kCFNumberShortType;
LABEL_14:
      v16 = CFNumberGetValue(v14, v15, &valuePtr) == 0;
      v17 = LOBYTE(valuePtr);
      v18 = SLOWORD(valuePtr);
      goto LABEL_33;
    case kCFNumberIntType:
      LODWORD(valuePtr) = 0;
      v12 = a1;
      v13 = kCFNumberIntType;
LABEL_32:
      v16 = CFNumberGetValue(v12, v13, &valuePtr) == 0;
      v17 = LOBYTE(valuePtr);
      v18 = SLODWORD(valuePtr);
LABEL_33:
      v24 = v18 & 0xFFFFFFFFFFFFFF00 | v17;
      if (v16)
      {
        v21 = 0;
      }

      else
      {
        v21 = v24;
      }

      goto LABEL_36;
    case kCFNumberLongType:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberLongType;
      goto LABEL_27;
    case kCFNumberLongLongType:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberLongLongType;
      goto LABEL_27;
    case kCFNumberFloatType:
      LODWORD(valuePtr) = 0;
      v6 = a1;
      v7 = kCFNumberFloatType;
LABEL_6:
      v8 = CFNumberGetValue(v6, v7, &valuePtr) == 0;
      v9 = *&valuePtr;
      goto LABEL_28;
    case kCFNumberDoubleType:
      valuePtr = 0.0;
      v10 = a1;
      v11 = kCFNumberDoubleType;
      goto LABEL_16;
    case kCFNumberCFIndexType:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberCFIndexType;
      goto LABEL_27;
    case kCFNumberNSIntegerType:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberNSIntegerType;
LABEL_27:
      v8 = CFNumberGetValue(v4, v5, &valuePtr) == 0;
      v9 = *&valuePtr;
      goto LABEL_28;
    case kCFNumberCGFloatType:
      valuePtr = 0.0;
      v10 = a1;
      v11 = kCFNumberCGFloatType;
LABEL_16:
      v8 = CFNumberGetValue(v10, v11, &valuePtr) == 0;
      v9 = valuePtr;
LABEL_28:
      if (v8)
      {
        v21 = 0;
      }

      else
      {
        v21 = v9;
      }

LABEL_36:
      v23 = v21 >> 8;
      break;
    default:
      v23 = 0;
      LOBYTE(v21) = 0;
      break;
  }

  return v21 | (v23 << 8);
}

void applesauce::CF::details::find_at_key_or_optional<applesauce::CF::DictionaryRef,applesauce::CF::StringRef>(const __CFDictionary *a1@<X0>, const void **a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = applesauce::CF::details::at_key<applesauce::CF::StringRef>(a1, a2);
  if (!v4)
  {
    goto LABEL_5;
  }

  v5 = v4;
  CFRetain(v4);
  v6 = CFGetTypeID(v5);
  if (v6 != CFDictionaryGetTypeID())
  {
    CFRelease(v5);
LABEL_5:
    v7 = 0;
    *a3 = 0;
    goto LABEL_6;
  }

  *a3 = v5;
  v7 = 1;
LABEL_6:
  a3[8] = v7;
}

void applesauce::CF::details::find_at_key_or_optional<applesauce::CF::ArrayRef,applesauce::CF::StringRef>(const __CFDictionary *a1@<X0>, const void **a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = applesauce::CF::details::at_key<applesauce::CF::StringRef>(a1, a2);
  if (!v4)
  {
    goto LABEL_5;
  }

  v5 = v4;
  CFRetain(v4);
  v6 = CFGetTypeID(v5);
  if (v6 != CFArrayGetTypeID())
  {
    CFRelease(v5);
LABEL_5:
    v7 = 0;
    *a3 = 0;
    goto LABEL_6;
  }

  *a3 = v5;
  v7 = 1;
LABEL_6:
  a3[8] = v7;
}

uint64_t applesauce::CF::details::find_at_key_or_optional<BOOL,applesauce::CF::StringRef>(const __CFDictionary *a1, const void **a2)
{
  v2 = applesauce::CF::details::at_key<applesauce::CF::StringRef>(a1, a2);
  if (v2)
  {
    LOWORD(v2) = applesauce::CF::convert_as<BOOL,0>(v2);
    v3 = BYTE1(v2);
  }

  else
  {
    v3 = 0;
  }

  return v2 | (v3 << 8);
}

uint64_t applesauce::CF::convert_as<BOOL,0>(const __CFNumber *a1)
{
  if (!a1)
  {
    goto LABEL_7;
  }

  v1 = a1;
  TypeID = CFBooleanGetTypeID();
  if (TypeID != CFGetTypeID(v1))
  {
    v4 = CFNumberGetTypeID();
    if (v4 == CFGetTypeID(v1))
    {
      LOWORD(a1) = applesauce::CF::details::number_convert_as<BOOL>(v1);
      v3 = BYTE1(a1);
      return a1 | (v3 << 8);
    }

    LOBYTE(a1) = 0;
LABEL_7:
    v3 = 0;
    return a1 | (v3 << 8);
  }

  LOBYTE(a1) = CFBooleanGetValue(v1) != 0;
  v3 = 1;
  return a1 | (v3 << 8);
}

uint64_t applesauce::CF::details::number_convert_as<BOOL>(const __CFNumber *a1)
{
  switch(CFNumberGetType(a1))
  {
    case kCFNumberSInt8Type:
      LOBYTE(valuePtr) = 0;
      v2 = a1;
      v3 = kCFNumberSInt8Type;
      goto LABEL_19;
    case kCFNumberSInt16Type:
      LOWORD(valuePtr) = 0;
      v15 = a1;
      v16 = kCFNumberSInt16Type;
      goto LABEL_14;
    case kCFNumberSInt32Type:
      LODWORD(valuePtr) = 0;
      v13 = a1;
      v14 = kCFNumberSInt32Type;
      goto LABEL_23;
    case kCFNumberSInt64Type:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberSInt64Type;
      goto LABEL_21;
    case kCFNumberFloat32Type:
      LODWORD(valuePtr) = 0;
      v6 = a1;
      v7 = kCFNumberFloat32Type;
      goto LABEL_6;
    case kCFNumberFloat64Type:
      valuePtr = 0.0;
      v11 = a1;
      v12 = kCFNumberFloat64Type;
      goto LABEL_16;
    case kCFNumberCharType:
      LOBYTE(valuePtr) = 0;
      v2 = a1;
      v3 = kCFNumberCharType;
LABEL_19:
      Value = CFNumberGetValue(v2, v3, &valuePtr);
      v9 = Value != 0;
      v10 = LOBYTE(valuePtr) == 0;
      goto LABEL_24;
    case kCFNumberShortType:
      LOWORD(valuePtr) = 0;
      v15 = a1;
      v16 = kCFNumberShortType;
LABEL_14:
      Value = CFNumberGetValue(v15, v16, &valuePtr);
      v9 = Value != 0;
      v10 = LOWORD(valuePtr) == 0;
      goto LABEL_24;
    case kCFNumberIntType:
      LODWORD(valuePtr) = 0;
      v13 = a1;
      v14 = kCFNumberIntType;
LABEL_23:
      Value = CFNumberGetValue(v13, v14, &valuePtr);
      v9 = Value != 0;
      v10 = LODWORD(valuePtr) == 0;
      goto LABEL_24;
    case kCFNumberLongType:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberLongType;
      goto LABEL_21;
    case kCFNumberLongLongType:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberLongLongType;
      goto LABEL_21;
    case kCFNumberFloatType:
      LODWORD(valuePtr) = 0;
      v6 = a1;
      v7 = kCFNumberFloatType;
LABEL_6:
      Value = CFNumberGetValue(v6, v7, &valuePtr);
      v9 = Value != 0;
      v10 = *&valuePtr == 0.0;
      goto LABEL_24;
    case kCFNumberDoubleType:
      valuePtr = 0.0;
      v11 = a1;
      v12 = kCFNumberDoubleType;
      goto LABEL_16;
    case kCFNumberCFIndexType:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberCFIndexType;
      goto LABEL_21;
    case kCFNumberNSIntegerType:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberNSIntegerType;
LABEL_21:
      Value = CFNumberGetValue(v4, v5, &valuePtr);
      v9 = Value != 0;
      v10 = *&valuePtr == 0;
      goto LABEL_24;
    case kCFNumberCGFloatType:
      valuePtr = 0.0;
      v11 = a1;
      v12 = kCFNumberCGFloatType;
LABEL_16:
      Value = CFNumberGetValue(v11, v12, &valuePtr);
      v9 = Value != 0;
      v10 = valuePtr == 0.0;
LABEL_24:
      if (v10)
      {
        v9 = 0;
      }

      if (Value)
      {
        Value = 256;
      }

      break;
    default:
      v9 = 0;
      Value = 0;
      break;
  }

  return Value | v9;
}

void applesauce::CF::details::find_at_key_or_optional<applesauce::CF::StringRef,applesauce::CF::StringRef>(const __CFDictionary *a1@<X0>, const void **a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = applesauce::CF::details::at_key<applesauce::CF::StringRef>(a1, a2);
  if (!v4)
  {
    goto LABEL_5;
  }

  v5 = v4;
  CFRetain(v4);
  v6 = CFGetTypeID(v5);
  if (v6 != CFStringGetTypeID())
  {
    CFRelease(v5);
LABEL_5:
    v7 = 0;
    *a3 = 0;
    goto LABEL_6;
  }

  *a3 = v5;
  v7 = 1;
LABEL_6:
  a3[8] = v7;
}

const __CFDictionary *applesauce::CF::details::find_at_key_or_optional<int,applesauce::CF::StringRef>(const __CFDictionary *a1, const void **a2)
{
  result = applesauce::CF::details::at_key<applesauce::CF::StringRef>(a1, a2);
  if (result)
  {
    return (applesauce::CF::convert_as<int,0>(result) & 0xFFFFFFFFFFLL);
  }

  return result;
}

uint64_t applesauce::CF::convert_as<int,0>(const __CFBoolean *a1)
{
  if (a1 && (TypeID = CFNumberGetTypeID(), TypeID == CFGetTypeID(a1)))
  {
    v3 = applesauce::CF::details::number_convert_as<int>(a1);
  }

  else
  {
    v3 = applesauce::CF::details::treat_as_BOOL_for_convert_as<unsigned int>(a1);
  }

  return v3 & 0xFFFFFFFFFFLL;
}

uint64_t applesauce::CF::details::number_convert_as<int>(const __CFNumber *a1)
{
  switch(CFNumberGetType(a1))
  {
    case kCFNumberSInt8Type:
      LOBYTE(valuePtr) = 0;
      v2 = a1;
      v3 = kCFNumberSInt8Type;
      goto LABEL_21;
    case kCFNumberSInt16Type:
      LOWORD(valuePtr) = 0;
      v12 = a1;
      v13 = kCFNumberSInt16Type;
      goto LABEL_14;
    case kCFNumberSInt32Type:
      LODWORD(valuePtr) = 0;
      v4 = a1;
      v5 = kCFNumberSInt32Type;
      goto LABEL_29;
    case kCFNumberSInt64Type:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberSInt64Type;
      goto LABEL_29;
    case kCFNumberFloat32Type:
      LODWORD(valuePtr) = 0;
      v6 = a1;
      v7 = kCFNumberFloat32Type;
      goto LABEL_6;
    case kCFNumberFloat64Type:
      valuePtr = 0.0;
      v10 = a1;
      v11 = kCFNumberFloat64Type;
      goto LABEL_18;
    case kCFNumberCharType:
      LOBYTE(valuePtr) = 0;
      v2 = a1;
      v3 = kCFNumberCharType;
LABEL_21:
      Value = CFNumberGetValue(v2, v3, &valuePtr);
      LOBYTE(v14) = LOBYTE(valuePtr);
      if (!Value)
      {
        LOBYTE(v14) = 0;
      }

      v16 = SLOBYTE(valuePtr) < 0 && Value != 0;
      v17.i64[0] = Value != 0;
      v17.i64[1] = v16 << 63 >> 63;
      break;
    case kCFNumberShortType:
      LOWORD(valuePtr) = 0;
      v12 = a1;
      v13 = kCFNumberShortType;
LABEL_14:
      if (CFNumberGetValue(v12, v13, &valuePtr))
      {
        v14 = SLOWORD(valuePtr) & 0xFFFFFFFFLL | 0x100000000;
      }

      else
      {
        v14 = 0;
      }

      goto LABEL_32;
    case kCFNumberIntType:
      LODWORD(valuePtr) = 0;
      v4 = a1;
      v5 = kCFNumberIntType;
      goto LABEL_29;
    case kCFNumberLongType:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberLongType;
      goto LABEL_29;
    case kCFNumberLongLongType:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberLongLongType;
      goto LABEL_29;
    case kCFNumberFloatType:
      LODWORD(valuePtr) = 0;
      v6 = a1;
      v7 = kCFNumberFloatType;
LABEL_6:
      v8 = CFNumberGetValue(v6, v7, &valuePtr);
      v9 = *&valuePtr;
      goto LABEL_30;
    case kCFNumberDoubleType:
      valuePtr = 0.0;
      v10 = a1;
      v11 = kCFNumberDoubleType;
      goto LABEL_18;
    case kCFNumberCFIndexType:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberCFIndexType;
      goto LABEL_29;
    case kCFNumberNSIntegerType:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberNSIntegerType;
LABEL_29:
      v8 = CFNumberGetValue(v4, v5, &valuePtr);
      v9 = LODWORD(valuePtr);
      goto LABEL_30;
    case kCFNumberCGFloatType:
      valuePtr = 0.0;
      v10 = a1;
      v11 = kCFNumberCGFloatType;
LABEL_18:
      v8 = CFNumberGetValue(v10, v11, &valuePtr);
      v9 = valuePtr;
LABEL_30:
      v14 = v9 | 0x100000000;
      if (!v8)
      {
        v14 = 0;
      }

LABEL_32:
      v17 = vshlq_u64(vdupq_n_s64(v14), xmmword_2416DF7C0);
      break;
    default:
      LOBYTE(v14) = 0;
      v17 = 0uLL;
      break;
  }

  v18 = vandq_s8(vshlq_u64(v17, xmmword_2416DF7D0), xmmword_2416DF7E0);
  return v18.i64[0] | v14 | v18.i64[1];
}

uint64_t applesauce::CF::details::at_as<unsigned int>(const __CFArray *a1, unint64_t a2)
{
  if (a1 && CFArrayGetCount(a1) > a2 && (ValueAtIndex = CFArrayGetValueAtIndex(a1, a2)) != 0)
  {
    v5 = applesauce::CF::convert_as<unsigned int,0>(ValueAtIndex);
    v6 = v5 & 0xFF00000000;
    v7 = v5 & 0xFFFFFF00;
    v8 = v5;
  }

  else
  {
    v6 = 0;
    v8 = 0;
    v7 = 0;
  }

  return v8 | v6 | v7;
}

CFArrayRef applesauce::CF::details::make_CFArrayRef<unsigned int>(int **a1)
{
  v2 = a1[1] - *a1;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  std::vector<applesauce::CF::NumberRef>::reserve(&v11, v2);
  v3 = *a1;
  v4 = a1[1];
  if (*a1 != v4)
  {
    v5 = v12;
    do
    {
      v14 = *v3;
      if (v5 >= v13)
      {
        v6 = (v5 - v11) >> 3;
        if ((v6 + 1) >> 61)
        {
          std::vector<char>::__throw_length_error[abi:ne200100]();
        }

        v7 = (v13 - v11) >> 2;
        if (v7 <= v6 + 1)
        {
          v7 = v6 + 1;
        }

        if (v13 - v11 >= 0x7FFFFFFFFFFFFFF8)
        {
          v8 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v8 = v7;
        }

        v18 = &v11;
        if (v8)
        {
          std::allocator<applesauce::CF::NumberRef>::allocate_at_least[abi:ne200100](&v11, v8);
        }

        v15[0] = 0;
        v15[1] = (8 * v6);
        v16 = 8 * v6;
        v17 = 0;
        std::allocator_traits<std::allocator<applesauce::CF::NumberRef>>::construct[abi:ne200100]<applesauce::CF::NumberRef,unsigned int,void,0>(&v11, (8 * v6), &v14);
        v16 += 8;
        std::vector<applesauce::CF::NumberRef>::__swap_out_circular_buffer(&v11, v15);
        v5 = v12;
        std::__split_buffer<applesauce::CF::NumberRef>::~__split_buffer(v15);
      }

      else
      {
        std::allocator_traits<std::allocator<applesauce::CF::NumberRef>>::construct[abi:ne200100]<applesauce::CF::NumberRef,unsigned int,void,0>(&v11, v5++, &v14);
      }

      v12 = v5;
      ++v3;
    }

    while (v3 != v4);
  }

  v9 = applesauce::CF::details::make_CFArrayRef<applesauce::CF::NumberRef>(&v11);
  v15[0] = &v11;
  std::vector<applesauce::CF::NumberRef>::__destroy_vector::operator()[abi:ne200100](v15);
  return v9;
}

void sub_2416C59D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char *a13)
{
  a13 = &a10;
  std::vector<applesauce::CF::NumberRef>::__destroy_vector::operator()[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

void *std::vector<applesauce::CF::NumberRef>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      std::allocator<applesauce::CF::NumberRef>::allocate_at_least[abi:ne200100](result, a2);
    }

    std::vector<char>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_2416C5A94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<applesauce::CF::NumberRef>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

CFArrayRef applesauce::CF::details::make_CFArrayRef<applesauce::CF::NumberRef>(uint64_t **a1)
{
  std::vector<void const*>::vector[abi:ne200100](__p, a1[1] - *a1);
  v2 = *a1;
  v3 = a1[1];
  if (*a1 != v3)
  {
    v4 = __p[0];
    do
    {
      v5 = *v2++;
      *v4++ = v5;
    }

    while (v2 != v3);
  }

  CFArray = applesauce::CF::details::make_CFArrayRef<void const*>(__p);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return CFArray;
}

void sub_2416C5B24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<applesauce::CF::NumberRef>::__swap_out_circular_buffer(const void ***result, void *a2)
{
  v4 = *result;
  v5 = result[1];
  v6 = (a2[1] + *result - v5);
  if (v5 != *result)
  {
    v7 = *result;
    v8 = (a2[1] + *result - v5);
    do
    {
      *v8++ = *v7;
      *v7++ = 0;
    }

    while (v7 != v5);
    do
    {
      std::__destroy_at[abi:ne200100]<applesauce::CF::NumberRef,0>(v4++);
    }

    while (v4 != v5);
    v4 = *result;
  }

  a2[1] = v6;
  *result = v6;
  result[1] = v4;
  a2[1] = v4;
  v9 = result[1];
  result[1] = a2[2];
  a2[2] = v9;
  v10 = result[2];
  result[2] = a2[3];
  a2[3] = v10;
  *a2 = a2[1];
}

void std::allocator<applesauce::CF::NumberRef>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__destroy_at[abi:ne200100]<applesauce::CF::NumberRef,0>(const void **a1)
{
  v1 = *a1;
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t std::__split_buffer<applesauce::CF::NumberRef>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
    std::__destroy_at[abi:ne200100]<applesauce::CF::NumberRef,0>((i - 8));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

CFNumberRef std::allocator_traits<std::allocator<applesauce::CF::NumberRef>>::construct[abi:ne200100]<applesauce::CF::NumberRef,unsigned int,void,0>(uint64_t a1, CFNumberRef *a2, int *a3)
{
  valuePtr = *a3;
  result = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  *a2 = result;
  if (!result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x245CED520](exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return result;
}

CFArrayRef applesauce::CF::details::make_CFArrayRef<void const*>(uint64_t a1)
{
  result = CFArrayCreate(0, *a1, (*(a1 + 8) - *a1) >> 3, MEMORY[0x277CBF128]);
  if (!result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
  }

  return result;
}

uint64_t *std::vector<void const*>::vector[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<void const*>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_2416C5E40(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<void const*>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::allocator<void const*>::allocate_at_least[abi:ne200100](a1, a2);
  }

  std::vector<char>::__throw_length_error[abi:ne200100]();
}

void std::vector<applesauce::CF::NumberRef>::__destroy_vector::operator()[abi:ne200100](const void ****a1)
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
        std::__destroy_at[abi:ne200100]<applesauce::CF::NumberRef,0>(--v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_2416C6074(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_2416C6188(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = ASDTIOA2Stream;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

void sub_2416C6B54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, const void *a26)
{
  applesauce::CF::DictionaryRef::~DictionaryRef(&a26);

  _Unwind_Resume(a1);
}

void applesauce::CF::DictionaryRef::from_ns_noexcept(applesauce::CF::DictionaryRef **__return_ptr a1@<X8>, applesauce::CF::DictionaryRef *this@<X0>)
{
  v3 = this;
  if (v3)
  {
    cf = v3;
    CFRetain(v3);
    *a1 = cf;
    v4 = CFGetTypeID(cf);
    v5 = v4 == CFDictionaryGetTypeID();
    v3 = cf;
    if (!v5)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x245CED520](exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }
  }

  else
  {
    *a1 = 0;
  }
}

void sub_2416C6D24(void *a1)
{
  __cxa_free_exception(v2);
  applesauce::CF::ObjectRef<__CFDictionary const*>::~ObjectRef(v1);
  __clang_call_terminate(a1);
}

void sub_2416C6ED4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);

  applesauce::CF::DictionaryRef::~DictionaryRef(va);
  _Unwind_Resume(a1);
}

void sub_2416C7414(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  objc_destroyWeak((v16 + 40));

  objc_destroyWeak((v17 - 40));
  _Unwind_Resume(a1);
}

void sub_2416C8FD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  applesauce::CF::DictionaryRef::~DictionaryRef(va);

  _Unwind_Resume(a1);
}

void sub_2416C9D20(_Unwind_Exception *a1)
{
  v7 = v6;

  _Unwind_Resume(a1);
}

void sub_2416C9E6C(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_2416CA570(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = ASDTIOA2Device;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_2416CA6B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy_(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 48);
  v3 = *(a2 + 64);
  *(a1 + 48) = result;
  *(a1 + 64) = v3;
  return result;
}

void sub_2416CAEE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, std::mutex *a9, char a10)
{
  if (a10 == 1)
  {
    std::mutex::unlock(a9);
  }

  _Unwind_Resume(a1);
}

void sub_2416CB758(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  std::unique_lock<std::shared_mutex>::~unique_lock[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_2416CC08C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v7 = va_arg(va1, const void *);
  applesauce::CF::DictionaryRef::~DictionaryRef(va);

  std::shared_lock<std::shared_mutex>::~shared_lock[abi:ne200100](va1);
  _Unwind_Resume(a1);
}

void sub_2416CCBE4(_Unwind_Exception *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, ...)
{
  va_start(va2, a15);
  va_start(va1, a15);
  va_start(va, a15);
  v20 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v22 = va_arg(va2, const void *);

  applesauce::CF::DictionaryRef::~DictionaryRef(va);
  applesauce::CF::TypeRef::~TypeRef(va1);
  applesauce::CF::ArrayRef::~ArrayRef(va2);

  _Unwind_Resume(a1);
}

void sub_2416CD8A4(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2416CDD10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);

  std::unique_lock<std::shared_mutex>::~unique_lock[abi:ne200100](va);
  _Unwind_Resume(a1);
}

BOOL std::condition_variable_any::wait_until<std::unique_lock<std::shared_mutex>,std::chrono::system_clock,std::chrono::duration<double,std::ratio<1l,1000000l>>>(uint64_t a1, uint64_t a2, double *a3)
{
  v7 = *(a1 + 48);
  v6 = *(a1 + 56);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v12.__m_ = v7;
  v12.__owns_ = 1;
  std::mutex::lock(v7);
  std::unique_lock<std::shared_mutex>::unlock[abi:ne200100](a2);
  if (*a3 <= std::chrono::system_clock::now().__d_.__rep_)
  {
    v10 = 1;
  }

  else
  {
    v8 = *a3 * 1000.0;
    if (v8 >= 9.22337204e18)
    {
      v9.__d_.__rep_ = 0x7FFFFFFFFFFFFFFFLL;
    }

    else if (v8 <= -9.22337204e18)
    {
      v9.__d_.__rep_ = 0x8000000000000000;
    }

    else
    {
      v9.__d_.__rep_ = v8;
    }

    std::condition_variable::__do_timed_wait(a1, &v12, v9);
    v10 = *a3 <= std::chrono::system_clock::now().__d_.__rep_;
  }

  std::unique_lock<std::mutex>::unlock[abi:ne200100](&v12);
  std::unique_lock<std::shared_mutex>::lock[abi:ne200100](a2);
  if (v12.__owns_)
  {
    std::mutex::unlock(v12.__m_);
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  return v10;
}

void sub_2416CDEC0(_Unwind_Exception *a1)
{
  std::mutex::unlock(v2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(a1);
}

void std::unique_lock<std::shared_mutex>::unlock[abi:ne200100](uint64_t a1)
{
  if (*(a1 + 8))
  {
    std::__shared_mutex_base::unlock(*a1);
    *(a1 + 8) = 0;
  }

  else
  {
    std::__throw_system_error(1, "unique_lock::unlock: not locked");
    [(ASDTIOA2Device *)v2 _getCurrentFormatForStream:v3, v4];
  }
}

void sub_2416CE02C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);

  applesauce::CF::DictionaryRef::~DictionaryRef(va);
  _Unwind_Resume(a1);
}

void sub_2416CE450(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);

  std::unique_lock<std::shared_mutex>::~unique_lock[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_2416CEC0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v17 + 32));
  if (a15)
  {
    (*(*a15 + 8))(a15);
  }

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2416CF6A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2416CF864(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  applesauce::CF::StringRef::~StringRef(&a9);
  applesauce::CF::DictionaryRef::~DictionaryRef(&a10);

  _Unwind_Resume(a1);
}

void applesauce::CF::StringRef::from_ns_noexcept(applesauce::CF::StringRef **__return_ptr a1@<X8>, applesauce::CF::StringRef *this@<X0>)
{
  v3 = this;
  if (!v3 || (cf = v3, CFRetain(v3), v4 = CFGetTypeID(cf), v5 = v4 == CFStringGetTypeID(), v3 = cf, v5))
  {
    *a1 = v3;
  }

  else
  {
    *a1 = 0;
    CFRelease(cf);
    v3 = cf;
  }
}

void sub_2416CF99C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9)
{
  applesauce::CF::StringRef::~StringRef(&a9);

  _Unwind_Resume(a1);
}

void sub_2416CFA60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, ...)
{
  va_start(va, a9);
  applesauce::CF::StringRef::~StringRef(&a9);
  applesauce::CF::DataRef::~DataRef(va);

  _Unwind_Resume(a1);
}

uint64_t ASDT::IOUserClient::CopyProperty<applesauce::CF::DataRef>(ASDT::IOUserClient *a1, const applesauce::CF::StringRef *a2, const applesauce::CF::TypeRef *a3)
{
  cf = 0;
  if (ASDT::IOUserClient::CopyProperty(a1, a2, &cf))
  {
    v5 = ASDT::IOUserClient::ConvertValue(&cf, a3, v4);
  }

  else
  {
    v5 = 0;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v5;
}

void sub_2416CFAE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  applesauce::CF::TypeRef::~TypeRef(va);
  _Unwind_Resume(a1);
}

void std::unique_lock<std::mutex>::unlock[abi:ne200100](uint64_t a1)
{
  if (*(a1 + 8))
  {
    std::mutex::unlock(*a1);
    *(a1 + 8) = 0;
  }

  else
  {
    std::__throw_system_error(1, "unique_lock::unlock: not locked");
    [(ASDTIOA2Device *)v2 performPowerStatePrepare:v3, v4];
  }
}

void sub_2416D0494(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::unique_lock<std::shared_mutex>::~unique_lock[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_2416D1244(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void applesauce::CF::DataRef::~DataRef(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

void std::__shared_weak_count::__release_shared[abi:ne200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

void std::__shared_ptr_emplace<std::mutex>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285355030;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CED6B0);
}

uint64_t std::unique_lock<std::shared_mutex>::~unique_lock[abi:ne200100](uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    std::__shared_mutex_base::unlock(*a1);
  }

  return a1;
}

uint64_t std::shared_lock<std::shared_mutex>::~shared_lock[abi:ne200100](uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    std::__shared_mutex_base::unlock_shared(*a1);
  }

  return a1;
}

void std::unique_lock<std::shared_mutex>::lock[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    if (*(a1 + 8) != 1)
    {
      std::__shared_mutex_base::lock(v2);
      *(a1 + 8) = 1;
      return;
    }
  }

  else
  {
    std::__throw_system_error(1, "unique_lock::lock: references null mutex");
  }

  std::__throw_system_error(11, "unique_lock::lock: already locked");
  OUTLINED_FUNCTION_0_0(v3, v4, v5, v6, v7);
}

void OUTLINED_FUNCTION_0_0(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, a5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_1_0(uint64_t result, float a2, uint64_t a3, uint64_t a4)
{
  *a4 = a2;
  *(a4 + 4) = result;
  *(a4 + 12) = 2080;
  return result;
}

void OUTLINED_FUNCTION_3_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 14) = v4;
  *(a3 + 22) = 1024;
  *(a3 + 24) = v3;
}

uint64_t OUTLINED_FUNCTION_4_0(uint64_t result, uint64_t a2, float a3)
{
  *a2 = a3;
  *(a2 + 4) = result;
  return result;
}

void OUTLINED_FUNCTION_6(void *a1@<X0>, const char *a2@<X3>, uint8_t *a3@<X4>, NSObject *a4@<X8>)
{

  _os_log_debug_impl(a1, a4, OS_LOG_TYPE_DEBUG, a2, a3, 0x1Cu);
}

void sub_2416D2798(_Unwind_Exception *a1)
{
  v7 = v5;

  _Unwind_Resume(a1);
}

void sub_2416D2A70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);

  applesauce::CF::DictionaryRef::~DictionaryRef(va);
  _Unwind_Resume(a1);
}

void sub_2416D30CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  objc_destroyWeak((v16 + 40));

  objc_destroyWeak((v17 - 40));
  _Unwind_Resume(a1);
}

void sub_2416D3904(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = ASDTIOA2SelectorControl;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

void sub_2416D41EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, void *a17, uint64_t a18, void *a19)
{
  std::recursive_mutex::unlock((a14 + a11));

  _Unwind_Resume(a1);
}

void sub_2416D4CDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2416D4FFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t *std::vector<char>::vector[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<char>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_2416D5F54(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ASDTIOA2LogType(uint64_t a1, uint64_t a2)
{
  if (ASDTIOA2LogType_onceToken != -1)
  {
    ASDTIOA2LogType_cold_1();
  }

  return gASDTIOA2LogType;
}

os_log_t __ASDTIOA2LogType_block_invoke()
{
  result = os_log_create("com.apple.audio.ASDT", "IOA2");
  if (result)
  {
    gASDTIOA2LogType = result;
  }

  return result;
}

uint64_t getValueAndRangeFromControlDict(NSDictionary *a1, __CFString *a2, __CFString *a3)
{
  v5 = a1;
  v6 = v5;
  if (v5)
  {
    CFRetain(v5);
    cf = v6;
    v7 = CFGetTypeID(v6);
    if (v7 != CFDictionaryGetTypeID())
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x245CED520](exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }
  }

  else
  {
    cf = 0;
  }

  ControlInfo_Value = ASDT::IOA2UserClient::GetControlInfo_Value(&cf, a2, v9);
  v13 = ControlInfo_Value;
  if ((ControlInfo_Value & 1) == 0)
  {
    v14 = ASDTIOA2LogType(ControlInfo_Value, v11);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      getValueAndRangeFromControlDict();
    }
  }

  SliderControlInfo_MaximumValue = ASDT::IOA2UserClient::GetSliderControlInfo_MaximumValue(&cf, (&a3->isa + 4), v12);
  if (!SliderControlInfo_MaximumValue)
  {
    v18 = ASDTIOA2LogType(SliderControlInfo_MaximumValue, v16);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      getValueAndRangeFromControlDict();
    }

    v13 = 0;
  }

  SliderControlInfo_MinimumValue = ASDT::IOA2UserClient::GetSliderControlInfo_MinimumValue(&cf, a3, v17);
  if (!SliderControlInfo_MinimumValue)
  {
    v21 = ASDTIOA2LogType(SliderControlInfo_MinimumValue, v20);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      getValueAndRangeFromControlDict();
    }

    v13 = 0;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v13;
}

void sub_2416D62A4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  __cxa_free_exception(v10);
  applesauce::CF::ObjectRef<__CFDictionary const*>::~ObjectRef(&a10);
  __clang_call_terminate(a1);
}

void sub_2416D6340(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = ASDTIOA2SliderControl;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

void sub_2416D648C(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_2416D6E50(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  __cxa_free_exception(v10);
  applesauce::CF::ObjectRef<__CFDictionary const*>::~ObjectRef(&a10);
  __clang_call_terminate(a1);
}

void sub_2416D710C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = ASDTIOA2LevelControl;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

void sub_2416D7508(_Unwind_Exception *a1)
{
  std::recursive_mutex::unlock((v2 + v3));

  _Unwind_Resume(a1);
}

void std::__tree<std::__value_type<ASDT::RawPoint,ASDT::DBPoint>,std::__map_value_compare<ASDT::RawPoint,std::__value_type<ASDT::RawPoint,ASDT::DBPoint>,std::less<ASDT::RawPoint>,true>,std::allocator<std::__value_type<ASDT::RawPoint,ASDT::DBPoint>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<ASDT::RawPoint,ASDT::DBPoint>,std::__map_value_compare<ASDT::RawPoint,std::__value_type<ASDT::RawPoint,ASDT::DBPoint>,std::less<ASDT::RawPoint>,true>,std::allocator<std::__value_type<ASDT::RawPoint,ASDT::DBPoint>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<ASDT::RawPoint,ASDT::DBPoint>,std::__map_value_compare<ASDT::RawPoint,std::__value_type<ASDT::RawPoint,ASDT::DBPoint>,std::less<ASDT::RawPoint>,true>,std::allocator<std::__value_type<ASDT::RawPoint,ASDT::DBPoint>>>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

void ASDT::IOA2UserClient::SetNominalSampleRate()
{
  OUTLINED_FUNCTION_1(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void ASDT::IOA2UserClient::SetClientDescription()
{
  OUTLINED_FUNCTION_1(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void ASDT::IOA2UserClient::GetStreamInfo_CurrentFormat()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void ASDT::IOA2UserClient::CopyStreamInfo_AvailableFormats()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void ASDT::IOA2UserClient::GetStreamInfo_StartingChannel()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void ASDT::IOA2UserClient::MapIOBufferForStream()
{
  OUTLINED_FUNCTION_1(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_1(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void ASDT::IOA2UserClient::GetControlInfo_BaseClass()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void ASDT::IOA2UserClient::GetControlInfo_Class()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void ASDT::IOA2UserClient::GetSliderControlInfo_MinimumValue()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void ASDT::IOA2UserClient::GetSliderControlInfo_MaximumValue()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void ASDT::IOA2UserClient::CopyLevelControlInfo_RangeMap()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void ASDT::IOA2UserClient::CopySelectorControlInfo_MultiSelectorValue()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void ASDT::IOA2UserClient::CopySelectorControlInfo_SelectorMap()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void ASDT::IOA2UserClient::GetStereoPanControlInfo_LeftValue()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void ASDT::IOA2UserClient::GetStereoPanControlInfo_CenterValue()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void ASDT::IOA2UserClient::GetStereoPanControlInfo_RightValue()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void ASDT::IOA2UserClient::GetStereoPanControlInfo_LeftChannel()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void ASDT::IOA2UserClient::GetStereoPanControlInfo_RightChannel()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void ASDT::IOA2UserClient::CopyBlockControlInfo_Descriptor()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void ASDT::IOA2UserClient::MapBlockControlBuffer()
{
  OUTLINED_FUNCTION_1(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_1(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_1(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void ASDT::IOA2UserClient::MoveBlockControlData()
{
  OUTLINED_FUNCTION_1(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void ASDT::IOA2UserClient::MapDataExchangeBlockBuffer()
{
  OUTLINED_FUNCTION_1(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_1(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void ASDT::IOA2UserClient::MoveDataExchangeBlockData()
{
  OUTLINED_FUNCTION_1(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void ASDT::IOA2UserClient::StartIO()
{
  OUTLINED_FUNCTION_1(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void ASDT::IOA2UserClient::StartIOWithFlags()
{
  OUTLINED_FUNCTION_1(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void ASDT::IOA2UserClient::StopIO()
{
  OUTLINED_FUNCTION_1(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void ASDT::IOA2UserClient::StopIOWithFlags()
{
  OUTLINED_FUNCTION_1(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void ASDT::IOA2UserClient::SetStreamCurrentFormat()
{
  OUTLINED_FUNCTION_1(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void ASDT::IOA2UserClient::SetMultiControlValue()
{
  OUTLINED_FUNCTION_1(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void ASDT::IOA2UserClient::ReplaceControlValue()
{
  OUTLINED_FUNCTION_1(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void ASDT::IOA2UserClient::GetUpdatedMultiControlValue()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void ASDT::IOA2UserClient::ReplaceMultiControlValue()
{
  OUTLINED_FUNCTION_1(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void ASDT::IOA2UserClient::RefreshControlList()
{
  OUTLINED_FUNCTION_1(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void ASDT::IOA2UserClient::RefreshControlInfo()
{
  OUTLINED_FUNCTION_1(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void ASDT::IOA2UserClient::PerformConfigChange()
{
  OUTLINED_FUNCTION_1(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void ASDT::IOA2UserClient::MapEngineStatus()
{
  OUTLINED_FUNCTION_1(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void getValueAndRangeFromControlDict()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_1(&dword_2416BA000, v0, v1, "%s: Missing value from control dict: %@", v2, v3, v4, v5, v6);
}

{
  v6 = 136315394;
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_1(&dword_2416BA000, v0, v1, "%s: Missing range max from control dict: %@", v2, v3, v4, v5, v6);
}

{
  v6 = 136315394;
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_1(&dword_2416BA000, v0, v1, "%s: Missing range min from control dict: %@", v2, v3, v4, v5, v6);
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