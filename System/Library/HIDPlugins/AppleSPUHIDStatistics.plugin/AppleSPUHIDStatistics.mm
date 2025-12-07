uint64_t AppleSPUHIDStatistics::registerService(uint64_t a1, uint64_t a2)
{
  v3 = IOHIDServiceCopyProperty();
  if (v3)
  {
    v4 = v3;
    v5 = CFGetTypeID(v3);
    if (v5 == CFStringGetTypeID())
    {
      v6 = CFEqual(v4, @"SPU");
      if (v6)
      {
        v7 = AppleSPUHIDStatistics::IOHIDServiceSupportsAggregateDictionary(v6, a2);
        if (v7)
        {
          IOHIDServiceRegistryID = AppleSPUHIDStatistics::getIOHIDServiceRegistryID(v7, a2);
          v9 = *MEMORY[0x29EDBB110];
          v10 = IORegistryEntryIDMatching(IOHIDServiceRegistryID);
          IOServiceGetMatchingService(v9, v10);
          operator new();
        }
      }
    }

    CFRelease(v4);
  }

  return 0;
}

uint64_t sub_29D40D1C4(uint64_t a1)
{
  v1 = (*(a1 + 16) + 1);
  *(a1 + 16) = v1;
  return v1;
}

uint64_t sub_29D40D1FC(uint64_t a1, dispatch_queue_t queue)
{
  *(a1 + 624) = queue;
  out_token = 0;
  return notify_register_dispatch("com.apple.applespuhidstatistics.fault", &out_token, queue, &unk_2A241D528);
}

void AppleSPUHIDStatistics::alloc(AppleSPUHIDStatistics *this, const __CFAllocator *a2)
{
  v3 = MEMORY[0x29ED56790](this, 632, 0x10600402039076ALL, 0);

  AppleSPUHIDStatistics::AppleSPUHIDStatistics(v3, this);
}

void AppleSPUHIDStatistics::AppleSPUHIDStatistics(AppleSPUHIDStatistics *this, const __CFAllocator *a2)
{
  *this = &AppleSPUHIDStatistics::vtbl;
  *(this + 1) = a2;
  *(this + 4) = 1;
  v3 = CFUUIDGetConstantUUIDWithBytes(*MEMORY[0x29EDB8EF0], 0x75u, 0xF0u, 0x71u, 0x27u, 0xBBu, 6u, 0x49u, 0xAu, 0xB1u, 0xB9u, 0x81u, 0xAEu, 0x65u, 0xDFu, 6u, 0x46u);
  CFPlugInAddInstanceForFactory(v3);
  *(this + 3) = CFArrayCreateMutable(*(this + 1), 0, 0);
}

void AppleSPUHIDStatistics::~AppleSPUHIDStatistics(AppleSPUHIDStatistics *this)
{
  v1 = CFUUIDGetConstantUUIDWithBytes(*MEMORY[0x29EDB8EF0], 0x75u, 0xF0u, 0x71u, 0x27u, 0xBBu, 6u, 0x49u, 0xAu, 0xB1u, 0xB9u, 0x81u, 0xAEu, 0x65u, 0xDFu, 6u, 0x46u);
  CFPlugInRemoveInstanceForFactory(v1);
  os_release(qword_2A1A130B8);
}

uint64_t AppleSPUHIDStatistics::QueryInterface(AppleSPUHIDStatistics *this, CFUUIDBytes a2, void **a3)
{
  v5 = CFUUIDCreateFromUUIDBytes(0, a2);
  v6 = *MEMORY[0x29EDB8EF0];
  v7 = CFUUIDGetConstantUUIDWithBytes(*MEMORY[0x29EDB8EF0], 0x19u, 0xD7u, 0x74u, 0x41u, 0xBBu, 0xC4u, 0x45u, 0x11u, 0x91u, 0x49u, 0x60u, 0x57u, 0x2Au, 0xBu, 1u, 0x5Cu);
  if (CFEqual(v5, v7) || (v8 = CFUUIDGetConstantUUIDWithBytes(v6, 0x3Du, 0xC3u, 0x5Au, 0xA6u, 0xD3u, 0x5Cu, 0x44u, 0x5Bu, 0x9Au, 0x59u, 0xCAu, 3u, 0xDAu, 0x40u, 0x8Bu, 0x97u), CFEqual(v5, v8)) || (v9 = CFUUIDGetConstantUUIDWithBytes(v6, 0, 0, 0, 0, 0, 0, 0, 0, 0xC0u, 0, 0, 0, 0, 0, 0, 0x46u), CFEqual(v5, v9)))
  {
    v10 = 0;
    ++*(this + 4);
  }

  else
  {
    this = 0;
    v10 = 2147483652;
  }

  *a3 = this;
  CFRelease(v5);
  return v10;
}

uint64_t AppleSPUHIDStatistics::AddRef(AppleSPUHIDStatistics *this)
{
  v1 = (*(this + 4) + 1);
  *(this + 4) = v1;
  return v1;
}

uint64_t AppleSPUHIDStatistics::Release(AppleSPUHIDStatistics *this)
{
  v1 = *(this + 4);
  v2 = (v1 - 1);
  *(this + 4) = v2;
  if (v1 == 1)
  {
    AppleSPUHIDStatistics::~AppleSPUHIDStatistics(this);
    AppleSPUHIDStatistics::operator delete(v3);
  }

  return v2;
}

uint64_t AppleSPUHIDStatistics::open(uint64_t a1)
{
  if (qword_2A1A130C0 != -1)
  {
    sub_29D41AEC8();
  }

  v2 = 0;
  v3 = *MEMORY[0x29EDB8ED8];
  v4 = a1 + 32;
  do
  {
    if (off_29F34D968[v2])
    {
      v5 = off_29F34D968[v2];
    }

    else
    {
      v5 = "com.apple.aop.unknown";
    }

    *(v4 + v2 * 8) = CFStringCreateWithCString(v3, v5, 0);
    ++v2;
  }

  while (v2 != 74);
  return 1;
}

os_log_t sub_29D40D640()
{
  result = os_log_create("AOP", "AppleSPUHIDStatistics");
  qword_2A1A130B8 = result;
  return result;
}

uint64_t AppleSPUHIDStatistics::scheduleWithDispatchQueue(AppleSPUHIDStatistics *this, dispatch_queue_t queue)
{
  *(this + 78) = queue;
  out_token = 0;
  return notify_register_dispatch("com.apple.applespuhidstatistics.fault", &out_token, queue, &unk_2A241D528);
}

void sub_29D40D6B8()
{
  v0 = qword_2A1A130B8;
  if (os_log_type_enabled(qword_2A1A130B8, OS_LOG_TYPE_FAULT))
  {
    sub_29D41AEDC(v0);
  }
}

void AppleSPUHIDStatistics::publishADData(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v24 = *MEMORY[0x29EDCA608];
  if (a3)
  {
    v5 = 0;
    v6 = 0;
    v7 = a1 + 32;
    do
    {
      v8 = (a2 - v5 + 8 * v5);
      v9 = *v8;
      if (v9 != 74)
      {
        v13 = qword_2A1A130B8;
        if (os_log_type_enabled(qword_2A1A130B8, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v17 = "publishADData";
          v18 = 1024;
          v19 = v9;
          v20 = 1024;
          LODWORD(v21) = 74;
          _os_log_error_impl(&dword_29D40C000, v13, OS_LOG_TYPE_ERROR, "%s spuaggdkeys version mismatch (%#x/%#x)", buf, 0x18u);
        }

        goto LABEL_15;
      }

      v10 = *(v8 + 1);
      if (v10 >> 9 > 0x24)
      {
        v11 = @"com.apple.aop.unknown";
      }

      else
      {
        v11 = *(v7 + 8 * (v10 >> 8));
      }

      v12 = qword_2A1A130B8;
      if (os_log_type_enabled(qword_2A1A130B8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315906;
        v17 = "publishADData";
        v18 = 1024;
        v19 = v10;
        v20 = 2112;
        v21 = v11;
        v22 = 1024;
        v23 = v10 >> 8;
        _os_log_debug_impl(&dword_29D40C000, v12, OS_LOG_TYPE_DEBUG, "%s op=%#x '%@' (%#x)", buf, 0x22u);
        LOWORD(v10) = *(v8 + 1);
      }

      if (v10 > 2u)
      {
        switch(v10)
        {
          case 3u:
            ADClientAddValueForScalarKey();
            break;
          case 4u:
            ADClientClearDistributionKey();
            break;
          case 5u:
            ADClientSetValueForDistributionKey();
            break;
          default:
LABEL_22:
            if (v10 != 5)
            {
              v14 = 1;
              do
              {
                ADClientPushValueForDistributionKey();
              }

              while (v10 - 5 > v14++);
            }

            break;
        }
      }

      else if (v10)
      {
        if (v10 == 1)
        {
          ADClientClearScalarKey();
        }

        else
        {
          if (v10 != 2)
          {
            goto LABEL_22;
          }

          ADClientSetValueForScalarKey();
        }
      }

LABEL_15:
      v5 = ++v6;
    }

    while (v6 < a3);
  }
}

void AppleSPUHIDStatisticsFactory(const __CFAllocator *a1, const void *a2)
{
  v4 = CFUUIDGetConstantUUIDWithBytes(*MEMORY[0x29EDB8EF0], 0x7Fu, 0x1Au, 0x3Au, 0xE6u, 0x3Eu, 0x3Du, 0x47u, 0xAu, 0xBDu, 0x15u, 0xA2u, 0xDDu, 0x7Eu, 0x1Bu, 0xB7u, 0x19u);
  if (CFEqual(a2, v4))
  {
    v5 = MEMORY[0x29ED56790](a1, 632, 0x10600402039076ALL, 0);
    AppleSPUHIDStatistics::AppleSPUHIDStatistics(v5, a1);
  }
}

CFUUIDRef sub_29D40DA84(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, UInt8 byte7, int a10, UInt8 a11)
{

  return CFUUIDGetConstantUUIDWithBytes(0, 0xC2u, 0x44u, 0xE8u, 0x58u, 0x10u, 0x9Cu, 0x11u, v11, BYTE1(v11), BYTE2(v11), BYTE3(v11), BYTE4(v11), BYTE5(v11), BYTE6(v11), HIBYTE(v11), a11);
}

BOOL sub_29D40DAE0()
{
  v2 = *(v0 + 184);

  return os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);
}

void sub_29D40DB1C(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);

  _os_log_impl(a1, v12, OS_LOG_TYPE_DEFAULT, a4, va, 0x36u);
}

void spu_profile_print(int *a1)
{
  v1 = CopyProfileDescription(a1);
  if (v1)
  {
    v2 = v1;
    CStringPtr = CFStringGetCStringPtr(v1, 0);
    puts(CStringPtr);

    CFRelease(v2);
  }
}

CFStringRef CopyProfileDescription(int *a1)
{
  AOPLogDecoder::to_string(a1);
  *__p = v4;
  v7 = v5;
  if (v5 >= 0)
  {
    v1 = __p;
  }

  else
  {
    v1 = __p[0];
  }

  v2 = CFStringCreateWithCString(*MEMORY[0x29EDB8ED8], v1, 0x8000100u);
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_29D40DC18(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x29D40DBC4);
}

void sub_29D40DC24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::string *profile_decoder::find_in_table@<X0>(const entry *a1@<X1>, unsigned int __val@<W3>, unsigned int a3@<W2>, std::string *a4@<X8>)
{
  if (!a3)
  {
    return std::to_string(a4, __val);
  }

  v4 = a3;
  for (i = &a1->data; *(i - 2) != __val; i += 2)
  {
    if (!--v4)
    {
      return std::to_string(a4, __val);
    }
  }

  return sub_29D40DC78(a4, *i);
}

void *sub_29D40DC78(void *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_29D41A004();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  *(a1 + 23) = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  *(a1 + v5) = 0;
  return a1;
}

uint64_t profile_decoder::dump(profile_decoder *this, unsigned __int8 *a2, int a3)
{
  sub_29D40DF40(v8);
  sub_29D41A270(&v9, "[", 1);
  if (a3)
  {
    v5 = 0;
    do
    {
      if (v5)
      {
        sub_29D41A270(&v9, ",", 1);
      }

      MEMORY[0x29ED56A70](&v9, a2[v5++]);
    }

    while (a3 != v5);
  }

  sub_29D41A270(&v9, "]", 1);
  std::stringbuf::str();
  v8[0] = *MEMORY[0x29EDC9528];
  v6 = *(MEMORY[0x29EDC9528] + 72);
  *(v8 + *(v8[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v9 = v6;
  v10 = MEMORY[0x29EDC9570] + 16;
  if (v12 < 0)
  {
    operator delete(v11[7].__locale_);
  }

  v10 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v11);
  std::iostream::~basic_iostream();
  return MEMORY[0x29ED56B10](&v13);
}

void sub_29D40DF28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29D40E1E4(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_29D40DF40(uint64_t *a1)
{
  a1[22] = 0;
  v2 = MEMORY[0x29EDC9590] + 104;
  a1[16] = MEMORY[0x29EDC9590] + 104;
  v3 = a1 + 2;
  v4 = MEMORY[0x29EDC9590] + 64;
  a1[2] = MEMORY[0x29EDC9590] + 64;
  v5 = MEMORY[0x29EDC9528];
  v6 = *(MEMORY[0x29EDC9528] + 24);
  v7 = *(MEMORY[0x29EDC9528] + 16);
  *a1 = v7;
  *(a1 + *(v7 - 24)) = v6;
  a1[1] = 0;
  v8 = (a1 + *(*a1 - 24));
  std::ios_base::init(v8, a1 + 3);
  v9 = MEMORY[0x29EDC9590] + 24;
  v8[1].__vftable = 0;
  v8[1].__fmtflags_ = -1;
  v10 = v5[5];
  v11 = v5[4];
  a1[2] = v11;
  *(v3 + *(v11 - 24)) = v10;
  v12 = v5[1];
  *a1 = v12;
  *(a1 + *(v12 - 24)) = v5[6];
  *a1 = v9;
  a1[16] = v2;
  a1[2] = v4;
  sub_29D41A0AC((a1 + 3), 24);
  return a1;
}

void sub_29D40E1BC(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  MEMORY[0x29ED56B10](v1);
  _Unwind_Resume(a1);
}

uint64_t sub_29D40E1E4(uint64_t a1)
{
  v2 = MEMORY[0x29EDC9528];
  v3 = *MEMORY[0x29EDC9528];
  *a1 = *MEMORY[0x29EDC9528];
  v4 = *(v2 + 72);
  *(a1 + *(v3 - 24)) = *(v2 + 64);
  *(a1 + 16) = v4;
  *(a1 + 24) = MEMORY[0x29EDC9570] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale((a1 + 32));
  std::iostream::~basic_iostream();
  MEMORY[0x29ED56B10](a1 + 128);
  return a1;
}

void profile_decoder::parse_datatype(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v417 = *MEMORY[0x29EDCA608];
  v5 = *a3;
  if (v5 <= 4)
  {
    if (*a3 > 2u)
    {
      if (v5 == 3)
      {
        sub_29D40DC78(&v412, "arg1");
        profile_decoder::key(&v414);
        if ((v414.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v142 = &v414;
        }

        else
        {
          v142 = v414.__r_.__value_.__r.__words[0];
        }

        if ((v414.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v414.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v414.__r_.__value_.__l.__size_;
        }

        v144 = sub_29D41A270((a2 + 16), v142, size);
        *(v144 + *(*v144 - 24) + 24) = 10;
        v145 = MEMORY[0x29ED56A70]();
        v146 = sub_29D41A270(v145, ",", 1);
        sub_29D40DC78(&v409, "arg2");
        profile_decoder::key(&v411);
        if ((v411.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v147 = &v411;
        }

        else
        {
          v147 = v411.__r_.__value_.__r.__words[0];
        }

        if ((v411.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v148 = HIBYTE(v411.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v148 = v411.__r_.__value_.__l.__size_;
        }

        v149 = sub_29D41A270(v146, v147, v148);
        *(v149 + *(*v149 - 24) + 24) = 10;
        v150 = MEMORY[0x29ED56A70]();
        v151 = sub_29D41A270(v150, ",", 1);
        sub_29D40DC78(&v406, "arg3");
        profile_decoder::key(&v408);
        if ((v408.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v152 = &v408;
        }

        else
        {
          v152 = v408.__r_.__value_.__r.__words[0];
        }

        if ((v408.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v153 = HIBYTE(v408.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v153 = v408.__r_.__value_.__l.__size_;
        }

        v154 = sub_29D41A270(v151, v152, v153);
        *(v154 + *(*v154 - 24) + 24) = 10;
        v155 = MEMORY[0x29ED56A70]();
        v156 = sub_29D41A270(v155, ",", 1);
        sub_29D40DC78(&v403, "arg4");
        profile_decoder::key(&v405);
        if ((v405.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v157 = &v405;
        }

        else
        {
          v157 = v405.__r_.__value_.__r.__words[0];
        }

        if ((v405.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v158 = HIBYTE(v405.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v158 = v405.__r_.__value_.__l.__size_;
        }

        v159 = sub_29D41A270(v156, v157, v158);
        *(v159 + *(*v159 - 24) + 24) = 10;
        v160 = MEMORY[0x29ED56A70]();
        v161 = sub_29D41A270(v160, ",", 1);
        sub_29D40DC78(&v400, "arg5");
        profile_decoder::key(&v402);
        if ((v402.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v162 = &v402;
        }

        else
        {
          v162 = v402.__r_.__value_.__r.__words[0];
        }

        if ((v402.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v163 = HIBYTE(v402.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v163 = v402.__r_.__value_.__l.__size_;
        }

        v164 = sub_29D41A270(v161, v162, v163);
        *(v164 + *(*v164 - 24) + 24) = 10;
        v165 = MEMORY[0x29ED56A70]();
        v166 = sub_29D41A270(v165, ",", 1);
        sub_29D40DC78(&v397, "arg6");
        profile_decoder::key(&__p);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v168 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v168 = __p.__r_.__value_.__l.__size_;
        }

        v169 = sub_29D41A270(v166, p_p, v168);
        *(v169 + *(*v169 - 24) + 24) = 10;
        v170 = MEMORY[0x29ED56A70]();
        v171 = sub_29D41A270(v170, ",", 1);
        *(v171 + *(*v171 - 24) + 8) = *(v171 + *(*v171 - 24) + 8) & 0xFFFFFFB5 | 8;
        sub_29D40DC78(&v395, "xarg1");
        profile_decoder::key(&__s);
        if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_s = &__s;
        }

        else
        {
          p_s = __s.__r_.__value_.__r.__words[0];
        }

        if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v173 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v173 = __s.__r_.__value_.__l.__size_;
        }

        v174 = sub_29D41A270(v171, p_s, v173);
        *(v174 + *(*v174 - 24) + 24) = 10;
        v175 = sub_29D41A270(v174, "'", 1);
        v176 = MEMORY[0x29ED56A70](v175, *(a3 + 4));
        v177 = sub_29D41A270(v176, "',", 2);
        sub_29D40DC78(&v392, "xarg2");
        profile_decoder::key(&v394);
        if ((v394.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v178 = &v394;
        }

        else
        {
          v178 = v394.__r_.__value_.__r.__words[0];
        }

        if ((v394.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v179 = HIBYTE(v394.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v179 = v394.__r_.__value_.__l.__size_;
        }

        v180 = sub_29D41A270(v177, v178, v179);
        *(v180 + *(*v180 - 24) + 24) = 10;
        v181 = sub_29D41A270(v180, "'", 1);
        v182 = MEMORY[0x29ED56A70](v181, *(a3 + 5));
        v183 = sub_29D41A270(v182, "',", 2);
        sub_29D40DC78(&v389, "xarg3");
        profile_decoder::key(&v391);
        if ((v391.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v184 = &v391;
        }

        else
        {
          v184 = v391.__r_.__value_.__r.__words[0];
        }

        if ((v391.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v185 = HIBYTE(v391.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v185 = v391.__r_.__value_.__l.__size_;
        }

        v186 = sub_29D41A270(v183, v184, v185);
        *(v186 + *(*v186 - 24) + 24) = 10;
        v187 = sub_29D41A270(v186, "'", 1);
        v188 = MEMORY[0x29ED56A70](v187, *(a3 + 6));
        v189 = sub_29D41A270(v188, "',", 2);
        sub_29D40DC78(&v387, "xarg4");
        profile_decoder::key(&v415);
        if ((v415.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v190 = &v415;
        }

        else
        {
          v190 = v415.__r_.__value_.__r.__words[0];
        }

        if ((v415.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v191 = HIBYTE(v415.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v191 = v415.__r_.__value_.__l.__size_;
        }

        v192 = sub_29D41A270(v189, v190, v191);
        *(v192 + *(*v192 - 24) + 24) = 10;
        v193 = sub_29D41A270(v192, "'", 1);
        v194 = MEMORY[0x29ED56A70](v193, *(a3 + 7));
        v195 = sub_29D41A270(v194, "',", 2);
        sub_29D40DC78(&v384, "xarg5");
        profile_decoder::key(&v386);
        if ((v386.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v196 = &v386;
        }

        else
        {
          v196 = v386.__r_.__value_.__r.__words[0];
        }

        if ((v386.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v197 = HIBYTE(v386.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v197 = v386.__r_.__value_.__l.__size_;
        }

        v198 = sub_29D41A270(v195, v196, v197);
        *(v198 + *(*v198 - 24) + 24) = 10;
        v199 = sub_29D41A270(v198, "'", 1);
        v200 = MEMORY[0x29ED56A70](v199, *(a3 + 8));
        v201 = sub_29D41A270(v200, "',", 2);
        sub_29D40DC78(&v381, "xarg6");
        profile_decoder::key(&v383);
        if ((v383.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v202 = &v383;
        }

        else
        {
          v202 = v383.__r_.__value_.__r.__words[0];
        }

        if ((v383.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v203 = HIBYTE(v383.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v203 = v383.__r_.__value_.__l.__size_;
        }

        v204 = sub_29D41A270(v201, v202, v203);
        *(v204 + *(*v204 - 24) + 24) = 10;
        v205 = sub_29D41A270(v204, "'", 1);
        v206 = MEMORY[0x29ED56A70](v205, *(a3 + 9));
        v207 = sub_29D41A270(v206, "',", 2);
        *(v207 + *(*v207 - 24) + 8) = *(v207 + *(*v207 - 24) + 8) & 0xFFFFFFB5 | 2;
        if (SHIBYTE(v383.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v383.__r_.__value_.__l.__data_);
        }

        if (v382 < 0)
        {
          operator delete(v381);
        }

        if (SHIBYTE(v386.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v386.__r_.__value_.__l.__data_);
        }

        if (v385 < 0)
        {
          operator delete(v384);
        }

        if (SHIBYTE(v415.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v415.__r_.__value_.__l.__data_);
        }

        if (v388 < 0)
        {
          operator delete(v387);
        }

        if (SHIBYTE(v391.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v391.__r_.__value_.__l.__data_);
        }

        if (v390 < 0)
        {
          operator delete(v389);
        }

        if (SHIBYTE(v394.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v394.__r_.__value_.__l.__data_);
        }

        if (v393 < 0)
        {
          operator delete(v392);
        }

        if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__s.__r_.__value_.__l.__data_);
        }

        if (v396 < 0)
        {
          operator delete(v395);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (v398 < 0)
        {
          operator delete(v397);
        }

        if (SHIBYTE(v402.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v402.__r_.__value_.__l.__data_);
        }

        if (v401 < 0)
        {
          operator delete(v400);
        }

        if (SHIBYTE(v405.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v405.__r_.__value_.__l.__data_);
        }

        if (v404 < 0)
        {
          operator delete(v403);
        }

        if (SHIBYTE(v408.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v408.__r_.__value_.__l.__data_);
        }

        if (v407 < 0)
        {
          operator delete(v406);
        }

        if (SHIBYTE(v411.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v411.__r_.__value_.__l.__data_);
        }

        if (v410 < 0)
        {
          operator delete(v409);
        }

        if (SHIBYTE(v414.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v414.__r_.__value_.__l.__data_);
        }

        if (v413 < 0)
        {
          v32 = v412;
          goto LABEL_612;
        }
      }

      else if (v5 == 4)
      {
        sub_29D40DC78(&v379, "trigger");
        profile_decoder::key(&v414);
        if ((v414.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v59 = &v414;
        }

        else
        {
          v59 = v414.__r_.__value_.__r.__words[0];
        }

        if ((v414.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v60 = HIBYTE(v414.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v60 = v414.__r_.__value_.__l.__size_;
        }

        v61 = sub_29D41A270((a2 + 16), v59, v60);
        v62 = MEMORY[0x29ED56A60](v61, 1);
        v63 = sub_29D41A270(v62, ",", 1);
        sub_29D40DC78(&v377, "thread-id");
        profile_decoder::key(&v411);
        if ((v411.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v64 = &v411;
        }

        else
        {
          v64 = v411.__r_.__value_.__r.__words[0];
        }

        if ((v411.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v65 = HIBYTE(v411.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v65 = v411.__r_.__value_.__l.__size_;
        }

        v66 = sub_29D41A270(v63, v64, v65);
        *(v66 + *(*v66 - 24) + 24) = 10;
        v67 = MEMORY[0x29ED56A70]();
        v68 = sub_29D41A270(v67, ",", 1);
        sub_29D40DC78(&v375, "arg");
        profile_decoder::key(&v408);
        if ((v408.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v69 = &v408;
        }

        else
        {
          v69 = v408.__r_.__value_.__r.__words[0];
        }

        if ((v408.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v70 = HIBYTE(v408.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v70 = v408.__r_.__value_.__l.__size_;
        }

        v71 = sub_29D41A270(v68, v69, v70);
        *(v71 + *(*v71 - 24) + 24) = 10;
        v72 = MEMORY[0x29ED56A70]();
        sub_29D41A270(v72, ",", 1);
        if (SHIBYTE(v408.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v408.__r_.__value_.__l.__data_);
        }

        if (v376 < 0)
        {
          operator delete(v375);
        }

        if (SHIBYTE(v411.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v411.__r_.__value_.__l.__data_);
        }

        if (v378 < 0)
        {
          operator delete(v377);
        }

        if (SHIBYTE(v414.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v414.__r_.__value_.__l.__data_);
        }

        if (v380 < 0)
        {
          v32 = v379;
          goto LABEL_612;
        }
      }
    }

    else if (v5 == 1)
    {
      sub_29D40DC78(&v331, "subtype");
      profile_decoder::key(&v414);
      if ((v414.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v114 = &v414;
      }

      else
      {
        v114 = v414.__r_.__value_.__r.__words[0];
      }

      if ((v414.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v115 = HIBYTE(v414.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v115 = v414.__r_.__value_.__l.__size_;
      }

      v116 = sub_29D41A270((a2 + 16), v114, v115);
      *(v116 + *(*v116 - 24) + 24) = 10;
      v117 = MEMORY[0x29ED56A90]();
      v118 = sub_29D41A270(v117, ",", 1);
      sub_29D40DC78(&v329, "packet-size");
      profile_decoder::key(&v411);
      if ((v411.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v119 = &v411;
      }

      else
      {
        v119 = v411.__r_.__value_.__r.__words[0];
      }

      if ((v411.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v120 = HIBYTE(v411.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v120 = v411.__r_.__value_.__l.__size_;
      }

      v121 = sub_29D41A270(v118, v119, v120);
      *(v121 + *(*v121 - 24) + 24) = 10;
      v122 = MEMORY[0x29ED56A90]();
      v123 = sub_29D41A270(v122, ",", 1);
      sub_29D40DC78(&v327, "data-length");
      profile_decoder::key(&v408);
      if ((v408.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v124 = &v408;
      }

      else
      {
        v124 = v408.__r_.__value_.__r.__words[0];
      }

      if ((v408.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v125 = HIBYTE(v408.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v125 = v408.__r_.__value_.__l.__size_;
      }

      v126 = sub_29D41A270(v123, v124, v125);
      *(v126 + *(*v126 - 24) + 24) = 10;
      v127 = MEMORY[0x29ED56A90]();
      v128 = sub_29D41A270(v127, ",", 1);
      sub_29D40DC78(&v325, "data-offset");
      profile_decoder::key(&v405);
      if ((v405.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v129 = &v405;
      }

      else
      {
        v129 = v405.__r_.__value_.__r.__words[0];
      }

      if ((v405.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v130 = HIBYTE(v405.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v130 = v405.__r_.__value_.__l.__size_;
      }

      v131 = sub_29D41A270(v128, v129, v130);
      *(v131 + *(*v131 - 24) + 24) = 10;
      v132 = MEMORY[0x29ED56A90]();
      v133 = sub_29D41A270(v132, ",", 1);
      sub_29D40DC78(&v323, "raw-data");
      profile_decoder::key(&v402);
      if ((v402.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v134 = &v402;
      }

      else
      {
        v134 = v402.__r_.__value_.__r.__words[0];
      }

      if ((v402.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v135 = HIBYTE(v402.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v135 = v402.__r_.__value_.__l.__size_;
      }

      v136 = sub_29D41A270(v133, v134, v135);
      v137 = v136;
      *(v136 + *(*v136 - 24) + 24) = 10;
      if (*(a3 + 10) >= 0x18u)
      {
        v138 = 24;
      }

      else
      {
        v138 = *(a3 + 10);
      }

      profile_decoder::dump(v136, a3 + 24, v138);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v139 = &__p;
      }

      else
      {
        v139 = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v140 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v140 = __p.__r_.__value_.__l.__size_;
      }

      v141 = sub_29D41A270(v137, v139, v140);
      sub_29D41A270(v141, ",", 1);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v402.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v402.__r_.__value_.__l.__data_);
      }

      if (v324 < 0)
      {
        operator delete(v323);
      }

      if (SHIBYTE(v405.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v405.__r_.__value_.__l.__data_);
      }

      if (v326 < 0)
      {
        operator delete(v325);
      }

      if (SHIBYTE(v408.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v408.__r_.__value_.__l.__data_);
      }

      if (v328 < 0)
      {
        operator delete(v327);
      }

      if (SHIBYTE(v411.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v411.__r_.__value_.__l.__data_);
      }

      if (v330 < 0)
      {
        operator delete(v329);
      }

      if (SHIBYTE(v414.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v414.__r_.__value_.__l.__data_);
      }

      if (v332 < 0)
      {
        v32 = v331;
        goto LABEL_612;
      }
    }

    else if (v5 == 2)
    {
      sub_29D40DC78(&v321, "subtype");
      profile_decoder::key(&v414);
      if ((v414.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v33 = &v414;
      }

      else
      {
        v33 = v414.__r_.__value_.__r.__words[0];
      }

      if ((v414.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v34 = HIBYTE(v414.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v34 = v414.__r_.__value_.__l.__size_;
      }

      v35 = sub_29D41A270((a2 + 16), v33, v34);
      *(v35 + *(*v35 - 24) + 24) = 10;
      v36 = MEMORY[0x29ED56A90]();
      v37 = sub_29D41A270(v36, ",", 1);
      sub_29D40DC78(&v319, "packet-size");
      profile_decoder::key(&v411);
      if ((v411.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v38 = &v411;
      }

      else
      {
        v38 = v411.__r_.__value_.__r.__words[0];
      }

      if ((v411.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v39 = HIBYTE(v411.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v39 = v411.__r_.__value_.__l.__size_;
      }

      v40 = sub_29D41A270(v37, v38, v39);
      *(v40 + *(*v40 - 24) + 24) = 10;
      v41 = MEMORY[0x29ED56A80]();
      v42 = sub_29D41A270(v41, ",", 1);
      sub_29D40DC78(&v317, "data-length");
      profile_decoder::key(&v408);
      if ((v408.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v43 = &v408;
      }

      else
      {
        v43 = v408.__r_.__value_.__r.__words[0];
      }

      if ((v408.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v44 = HIBYTE(v408.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v44 = v408.__r_.__value_.__l.__size_;
      }

      v45 = sub_29D41A270(v42, v43, v44);
      *(v45 + *(*v45 - 24) + 24) = 10;
      v46 = MEMORY[0x29ED56A80]();
      v47 = sub_29D41A270(v46, ",", 1);
      sub_29D40DC78(&v315, "data-offset");
      profile_decoder::key(&v405);
      if ((v405.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v48 = &v405;
      }

      else
      {
        v48 = v405.__r_.__value_.__r.__words[0];
      }

      if ((v405.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v49 = HIBYTE(v405.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v49 = v405.__r_.__value_.__l.__size_;
      }

      v50 = sub_29D41A270(v47, v48, v49);
      *(v50 + *(*v50 - 24) + 24) = 10;
      v51 = MEMORY[0x29ED56A60]();
      v52 = sub_29D41A270(v51, ",", 1);
      sub_29D40DC78(&v313, "raw-data");
      profile_decoder::key(&v402);
      if ((v402.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v53 = &v402;
      }

      else
      {
        v53 = v402.__r_.__value_.__r.__words[0];
      }

      if ((v402.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v54 = HIBYTE(v402.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v54 = v402.__r_.__value_.__l.__size_;
      }

      v55 = sub_29D41A270(v52, v53, v54);
      *(v55 + *(*v55 - 24) + 24) = 10;
      profile_decoder::dump(v55, a3 + 18, 30);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v56 = &__p;
      }

      else
      {
        v56 = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v57 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v57 = __p.__r_.__value_.__l.__size_;
      }

      v58 = sub_29D41A270(v55, v56, v57);
      sub_29D41A270(v58, ",", 1);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v402.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v402.__r_.__value_.__l.__data_);
      }

      if (v314 < 0)
      {
        operator delete(v313);
      }

      if (SHIBYTE(v405.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v405.__r_.__value_.__l.__data_);
      }

      if (v316 < 0)
      {
        operator delete(v315);
      }

      if (SHIBYTE(v408.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v408.__r_.__value_.__l.__data_);
      }

      if (v318 < 0)
      {
        operator delete(v317);
      }

      if (SHIBYTE(v411.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v411.__r_.__value_.__l.__data_);
      }

      if (v320 < 0)
      {
        operator delete(v319);
      }

      if (SHIBYTE(v414.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v414.__r_.__value_.__l.__data_);
      }

      if (v322 < 0)
      {
        v32 = v321;
        goto LABEL_612;
      }
    }
  }

  else if (*a3 <= 8u)
  {
    if (v5 == 5)
    {
      sub_29D40DC78(&v343, "function-id");
      profile_decoder::key(&v414);
      if ((v414.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v234 = &v414;
      }

      else
      {
        v234 = v414.__r_.__value_.__r.__words[0];
      }

      if ((v414.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v235 = HIBYTE(v414.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v235 = v414.__r_.__value_.__l.__size_;
      }

      v236 = sub_29D41A270((a2 + 16), v234, v235);
      *(v236 + *(*v236 - 24) + 24) = 10;
      v237 = MEMORY[0x29ED56A70]();
      v238 = sub_29D41A270(v237, ",", 1);
      sub_29D40DC78(&v341, "extra-id");
      profile_decoder::key(&v411);
      if ((v411.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v239 = &v411;
      }

      else
      {
        v239 = v411.__r_.__value_.__r.__words[0];
      }

      if ((v411.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v240 = HIBYTE(v411.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v240 = v411.__r_.__value_.__l.__size_;
      }

      v241 = sub_29D41A270(v238, v239, v240);
      *(v241 + *(*v241 - 24) + 24) = 10;
      v242 = MEMORY[0x29ED56A70]();
      v243 = sub_29D41A270(v242, ",", 1);
      sub_29D40DC78(&v339, "thread-id");
      profile_decoder::key(&v408);
      if ((v408.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v244 = &v408;
      }

      else
      {
        v244 = v408.__r_.__value_.__r.__words[0];
      }

      if ((v408.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v245 = HIBYTE(v408.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v245 = v408.__r_.__value_.__l.__size_;
      }

      v246 = sub_29D41A270(v243, v244, v245);
      *(v246 + *(*v246 - 24) + 24) = 10;
      v247 = MEMORY[0x29ED56A70]();
      v248 = sub_29D41A270(v247, ",", 1);
      sub_29D40DC78(&v337, "duration");
      profile_decoder::key(&v405);
      if ((v405.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v249 = &v405;
      }

      else
      {
        v249 = v405.__r_.__value_.__r.__words[0];
      }

      if ((v405.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v250 = HIBYTE(v405.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v250 = v405.__r_.__value_.__l.__size_;
      }

      v251 = sub_29D41A270(v248, v249, v250);
      *(v251 + *(*v251 - 24) + 24) = 10;
      v252 = MEMORY[0x29ED56A70]();
      v253 = sub_29D41A270(v252, ",", 1);
      sub_29D40DC78(&v335, "depth");
      profile_decoder::key(&v402);
      if ((v402.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v254 = &v402;
      }

      else
      {
        v254 = v402.__r_.__value_.__r.__words[0];
      }

      if ((v402.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v255 = HIBYTE(v402.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v255 = v402.__r_.__value_.__l.__size_;
      }

      v256 = sub_29D41A270(v253, v254, v255);
      *(v256 + *(*v256 - 24) + 24) = 10;
      v257 = MEMORY[0x29ED56A70]();
      v258 = sub_29D41A270(v257, ",", 1);
      sub_29D40DC78(&v333, "thread_duration");
      profile_decoder::key(&__p);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v259 = &__p;
      }

      else
      {
        v259 = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v260 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v260 = __p.__r_.__value_.__l.__size_;
      }

      v261 = sub_29D41A270(v258, v259, v260);
      *(v261 + *(*v261 - 24) + 24) = 10;
      v262 = MEMORY[0x29ED56A70]();
      sub_29D41A270(v262, ",", 1);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (v334 < 0)
      {
        operator delete(v333);
      }

      if (SHIBYTE(v402.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v402.__r_.__value_.__l.__data_);
      }

      if (v336 < 0)
      {
        operator delete(v335);
      }

      if (SHIBYTE(v405.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v405.__r_.__value_.__l.__data_);
      }

      if (v338 < 0)
      {
        operator delete(v337);
      }

      if (SHIBYTE(v408.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v408.__r_.__value_.__l.__data_);
      }

      if (v340 < 0)
      {
        operator delete(v339);
      }

      if (SHIBYTE(v411.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v411.__r_.__value_.__l.__data_);
      }

      if (v342 < 0)
      {
        operator delete(v341);
      }

      if (SHIBYTE(v414.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v414.__r_.__value_.__l.__data_);
      }

      if (v344 < 0)
      {
        v32 = v343;
        goto LABEL_612;
      }
    }

    else if (v5 == 8)
    {
      v415.__r_.__value_.__s.__data_[12] = 0;
      v415.__r_.__value_.__r.__words[0] = *(a3 + 35);
      LODWORD(v415.__r_.__value_.__r.__words[1]) = *(a3 + 43);
      sub_29D40DC78(&v373, "name");
      profile_decoder::key(&v414);
      if ((v414.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v73 = &v414;
      }

      else
      {
        v73 = v414.__r_.__value_.__r.__words[0];
      }

      if ((v414.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v74 = HIBYTE(v414.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v74 = v414.__r_.__value_.__l.__size_;
      }

      v75 = sub_29D41A270((a2 + 16), v73, v74);
      *(v75 + *(*v75 - 24) + 24) = 16;
      sub_29D40DC78(&v371, &v415);
      profile_decoder::str(&v411);
      if ((v411.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v76 = &v411;
      }

      else
      {
        v76 = v411.__r_.__value_.__r.__words[0];
      }

      if ((v411.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v77 = HIBYTE(v411.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v77 = v411.__r_.__value_.__l.__size_;
      }

      v78 = sub_29D41A270(v75, v76, v77);
      v79 = sub_29D41A270(v78, ",", 1);
      sub_29D40DC78(&v369, "report-interval");
      profile_decoder::key(&v408);
      if ((v408.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v80 = &v408;
      }

      else
      {
        v80 = v408.__r_.__value_.__r.__words[0];
      }

      if ((v408.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v81 = HIBYTE(v408.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v81 = v408.__r_.__value_.__l.__size_;
      }

      v82 = sub_29D41A270(v79, v80, v81);
      *(v82 + *(*v82 - 24) + 24) = 10;
      v83 = MEMORY[0x29ED56A70]();
      v84 = sub_29D41A270(v83, ",", 1);
      sub_29D40DC78(&v367, "batch-interval");
      profile_decoder::key(&v405);
      if ((v405.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v85 = &v405;
      }

      else
      {
        v85 = v405.__r_.__value_.__r.__words[0];
      }

      if ((v405.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v86 = HIBYTE(v405.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v86 = v405.__r_.__value_.__l.__size_;
      }

      v87 = sub_29D41A270(v84, v85, v86);
      *(v87 + *(*v87 - 24) + 24) = 10;
      v88 = MEMORY[0x29ED56A70]();
      v89 = sub_29D41A270(v88, ",", 1);
      sub_29D40DC78(&v365, "threshold");
      profile_decoder::key(&v402);
      if ((v402.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v90 = &v402;
      }

      else
      {
        v90 = v402.__r_.__value_.__r.__words[0];
      }

      if ((v402.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v91 = HIBYTE(v402.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v91 = v402.__r_.__value_.__l.__size_;
      }

      v92 = sub_29D41A270(v89, v90, v91);
      *(v92 + *(*v92 - 24) + 24) = 10;
      v93 = MEMORY[0x29ED56A70]();
      v94 = sub_29D41A270(v93, ",", 1);
      sub_29D40DC78(&v363, "time-limit");
      profile_decoder::key(&__p);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v95 = &__p;
      }

      else
      {
        v95 = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v96 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v96 = __p.__r_.__value_.__l.__size_;
      }

      v97 = sub_29D41A270(v94, v95, v96);
      *(v97 + *(*v97 - 24) + 24) = 10;
      v98 = MEMORY[0x29ED56A70]();
      v99 = sub_29D41A270(v98, ",", 1);
      sub_29D40DC78(&v361, "connected");
      profile_decoder::key(&__s);
      if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v100 = &__s;
      }

      else
      {
        v100 = __s.__r_.__value_.__r.__words[0];
      }

      if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v101 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v101 = __s.__r_.__value_.__l.__size_;
      }

      v102 = sub_29D41A270(v99, v100, v101);
      *(v102 + *(*v102 - 24) + 24) = 10;
      v103 = MEMORY[0x29ED56A70]();
      v104 = sub_29D41A270(v103, ",", 1);
      sub_29D40DC78(&v359, "decimation");
      profile_decoder::key(&v394);
      if ((v394.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v105 = &v394;
      }

      else
      {
        v105 = v394.__r_.__value_.__r.__words[0];
      }

      if ((v394.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v106 = HIBYTE(v394.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v106 = v394.__r_.__value_.__l.__size_;
      }

      v107 = sub_29D41A270(v104, v105, v106);
      *(v107 + *(*v107 - 24) + 24) = 10;
      v108 = MEMORY[0x29ED56A70]();
      v109 = sub_29D41A270(v108, ",", 1);
      sub_29D40DC78(&v357, "gyroPowerMode");
      profile_decoder::key(&v391);
      if ((v391.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v110 = &v391;
      }

      else
      {
        v110 = v391.__r_.__value_.__r.__words[0];
      }

      if ((v391.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v111 = HIBYTE(v391.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v111 = v391.__r_.__value_.__l.__size_;
      }

      v112 = sub_29D41A270(v109, v110, v111);
      *(v112 + *(*v112 - 24) + 24) = 10;
      v113 = MEMORY[0x29ED56A70]();
      sub_29D41A270(v113, ",", 1);
      if (SHIBYTE(v391.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v391.__r_.__value_.__l.__data_);
      }

      if (v358 < 0)
      {
        operator delete(v357);
      }

      if (SHIBYTE(v394.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v394.__r_.__value_.__l.__data_);
      }

      if (v360 < 0)
      {
        operator delete(v359);
      }

      if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__s.__r_.__value_.__l.__data_);
      }

      if (v362 < 0)
      {
        operator delete(v361);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (v364 < 0)
      {
        operator delete(v363);
      }

      if (SHIBYTE(v402.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v402.__r_.__value_.__l.__data_);
      }

      if (v366 < 0)
      {
        operator delete(v365);
      }

      if (SHIBYTE(v405.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v405.__r_.__value_.__l.__data_);
      }

      if (v368 < 0)
      {
        operator delete(v367);
      }

      if (SHIBYTE(v408.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v408.__r_.__value_.__l.__data_);
      }

      if (v370 < 0)
      {
        operator delete(v369);
      }

      if (SHIBYTE(v411.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v411.__r_.__value_.__l.__data_);
      }

      if (v372 < 0)
      {
        operator delete(v371);
      }

      if (SHIBYTE(v414.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v414.__r_.__value_.__l.__data_);
      }

      if (v374 < 0)
      {
        v32 = v373;
        goto LABEL_612;
      }
    }
  }

  else
  {
    switch(v5)
    {
      case 9u:
        __s.__r_.__value_.__s.__data_[16] = 0;
        *&__s.__r_.__value_.__l.__data_ = *(a3 + 2);
        sub_29D40DC78(&v311, "function");
        profile_decoder::key(&v414);
        if ((v414.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v208 = &v414;
        }

        else
        {
          v208 = v414.__r_.__value_.__r.__words[0];
        }

        if ((v414.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v209 = HIBYTE(v414.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v209 = v414.__r_.__value_.__l.__size_;
        }

        v210 = sub_29D41A270((a2 + 16), v208, v209);
        *(v210 + *(*v210 - 24) + 24) = 10;
        sub_29D40DC78(&v309, &__s);
        profile_decoder::str(&v411);
        if ((v411.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v211 = &v411;
        }

        else
        {
          v211 = v411.__r_.__value_.__r.__words[0];
        }

        if ((v411.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v212 = HIBYTE(v411.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v212 = v411.__r_.__value_.__l.__size_;
        }

        v213 = sub_29D41A270(v210, v211, v212);
        v214 = sub_29D41A270(v213, ",", 1);
        sub_29D40DC78(&v307, "arg");
        profile_decoder::key(&v408);
        if ((v408.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v215 = &v408;
        }

        else
        {
          v215 = v408.__r_.__value_.__r.__words[0];
        }

        if ((v408.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v216 = HIBYTE(v408.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v216 = v408.__r_.__value_.__l.__size_;
        }

        v217 = sub_29D41A270(v214, v215, v216);
        *(v217 + *(*v217 - 24) + 24) = 10;
        v218 = MEMORY[0x29ED56A70]();
        v219 = sub_29D41A270(v218, ",", 1);
        sub_29D40DC78(&v305, "task");
        profile_decoder::key(&v405);
        if ((v405.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v220 = &v405;
        }

        else
        {
          v220 = v405.__r_.__value_.__r.__words[0];
        }

        if ((v405.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v221 = HIBYTE(v405.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v221 = v405.__r_.__value_.__l.__size_;
        }

        v222 = sub_29D41A270(v219, v220, v221);
        *(v222 + *(*v222 - 24) + 24) = 10;
        v223 = MEMORY[0x29ED56A70]();
        v224 = sub_29D41A270(v223, ",", 1);
        sub_29D40DC78(&v303, "thread");
        profile_decoder::key(&v402);
        if ((v402.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v225 = &v402;
        }

        else
        {
          v225 = v402.__r_.__value_.__r.__words[0];
        }

        if ((v402.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v226 = HIBYTE(v402.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v226 = v402.__r_.__value_.__l.__size_;
        }

        v227 = sub_29D41A270(v224, v225, v226);
        *(v227 + *(*v227 - 24) + 24) = 10;
        v228 = MEMORY[0x29ED56A70]();
        v229 = sub_29D41A270(v228, ",", 1);
        sub_29D40DC78(&v301, "duration");
        profile_decoder::key(&__p);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v230 = &__p;
        }

        else
        {
          v230 = __p.__r_.__value_.__r.__words[0];
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v231 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v231 = __p.__r_.__value_.__l.__size_;
        }

        v232 = sub_29D41A270(v229, v230, v231);
        *(v232 + *(*v232 - 24) + 24) = 10;
        v233 = MEMORY[0x29ED56A70]();
        sub_29D41A270(v233, ",", 1);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (v302 < 0)
        {
          operator delete(v301);
        }

        if (SHIBYTE(v402.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v402.__r_.__value_.__l.__data_);
        }

        if (v304 < 0)
        {
          operator delete(v303);
        }

        if (SHIBYTE(v405.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v405.__r_.__value_.__l.__data_);
        }

        if (v306 < 0)
        {
          operator delete(v305);
        }

        if (SHIBYTE(v408.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v408.__r_.__value_.__l.__data_);
        }

        if (v308 < 0)
        {
          operator delete(v307);
        }

        if (SHIBYTE(v411.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v411.__r_.__value_.__l.__data_);
        }

        if (v310 < 0)
        {
          operator delete(v309);
        }

        if (SHIBYTE(v414.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v414.__r_.__value_.__l.__data_);
        }

        if (v312 < 0)
        {
          v32 = v311;
          goto LABEL_612;
        }

        break;
      case 0xBu:
        v414.__r_.__value_.__r.__words[0] = *(a3 + 3);
        sub_29D40DC78(&v299, "global-id");
        profile_decoder::key(&v411);
        if ((v411.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v263 = &v411;
        }

        else
        {
          v263 = v411.__r_.__value_.__r.__words[0];
        }

        if ((v411.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v264 = HIBYTE(v411.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v264 = v411.__r_.__value_.__l.__size_;
        }

        v265 = sub_29D41A270((a2 + 16), v263, v264);
        *(v265 + *(*v265 - 24) + 24) = 10;
        v266 = MEMORY[0x29ED56AA0]();
        v267 = sub_29D41A270(v266, ",", 1);
        sub_29D40DC78(&v297, "entry-id");
        profile_decoder::key(&v408);
        if ((v408.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v268 = &v408;
        }

        else
        {
          v268 = v408.__r_.__value_.__r.__words[0];
        }

        if ((v408.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v269 = HIBYTE(v408.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v269 = v408.__r_.__value_.__l.__size_;
        }

        v270 = sub_29D41A270(v267, v268, v269);
        *(v270 + *(*v270 - 24) + 24) = 10;
        v271 = MEMORY[0x29ED56AA0]();
        v272 = sub_29D41A270(v271, ",", 1);
        sub_29D40DC78(&v295, "entry");
        profile_decoder::key(&v405);
        if ((v405.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v273 = &v405;
        }

        else
        {
          v273 = v405.__r_.__value_.__r.__words[0];
        }

        if ((v405.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v274 = HIBYTE(v405.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v274 = v405.__r_.__value_.__l.__size_;
        }

        v275 = sub_29D41A270(v272, v273, v274);
        *(v275 + *(*v275 - 24) + 24) = 10;
        sub_29D40DC78(&v293, &v414);
        profile_decoder::str(&v402);
        if ((v402.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v276 = &v402;
        }

        else
        {
          v276 = v402.__r_.__value_.__r.__words[0];
        }

        if ((v402.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v277 = HIBYTE(v402.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v277 = v402.__r_.__value_.__l.__size_;
        }

        v278 = sub_29D41A270(v275, v276, v277);
        v279 = sub_29D41A270(v278, ",", 1);
        sub_29D40DC78(&v291, "arg1");
        profile_decoder::key(&__p);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v280 = &__p;
        }

        else
        {
          v280 = __p.__r_.__value_.__r.__words[0];
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v281 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v281 = __p.__r_.__value_.__l.__size_;
        }

        v282 = sub_29D41A270(v279, v280, v281);
        *(v282 + *(*v282 - 24) + 24) = 10;
        v283 = MEMORY[0x29ED56A70]();
        v284 = sub_29D41A270(v283, ",", 1);
        sub_29D40DC78(&v289, "arg2");
        profile_decoder::key(&__s);
        if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v285 = &__s;
        }

        else
        {
          v285 = __s.__r_.__value_.__r.__words[0];
        }

        if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v286 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v286 = __s.__r_.__value_.__l.__size_;
        }

        v287 = sub_29D41A270(v284, v285, v286);
        *(v287 + *(*v287 - 24) + 24) = 10;
        v288 = MEMORY[0x29ED56A70]();
        sub_29D41A270(v288, ",", 1);
        if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__s.__r_.__value_.__l.__data_);
        }

        if (v290 < 0)
        {
          operator delete(v289);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (v292 < 0)
        {
          operator delete(v291);
        }

        if (SHIBYTE(v402.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v402.__r_.__value_.__l.__data_);
        }

        if (v294 < 0)
        {
          operator delete(v293);
        }

        if (SHIBYTE(v405.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v405.__r_.__value_.__l.__data_);
        }

        if (v296 < 0)
        {
          operator delete(v295);
        }

        if (SHIBYTE(v408.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v408.__r_.__value_.__l.__data_);
        }

        if (v298 < 0)
        {
          operator delete(v297);
        }

        if (SHIBYTE(v411.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v411.__r_.__value_.__l.__data_);
        }

        if (v300 < 0)
        {
          v32 = v299;
          goto LABEL_612;
        }

        break;
      case 0xCu:
        __s.__r_.__value_.__s.__data_[12] = 0;
        __s.__r_.__value_.__r.__words[0] = *(a3 + 36);
        LODWORD(__s.__r_.__value_.__r.__words[1]) = *(a3 + 11);
        sub_29D40DC78(&v355, "name");
        profile_decoder::key(&v414);
        if ((v414.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v6 = &v414;
        }

        else
        {
          v6 = v414.__r_.__value_.__r.__words[0];
        }

        if ((v414.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v7 = HIBYTE(v414.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v7 = v414.__r_.__value_.__l.__size_;
        }

        v8 = sub_29D41A270((a2 + 16), v6, v7);
        *(v8 + *(*v8 - 24) + 24) = 16;
        sub_29D40DC78(&v353, &__s);
        profile_decoder::str(&v411);
        if ((v411.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v9 = &v411;
        }

        else
        {
          v9 = v411.__r_.__value_.__r.__words[0];
        }

        if ((v411.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v10 = HIBYTE(v411.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v10 = v411.__r_.__value_.__l.__size_;
        }

        v11 = sub_29D41A270(v8, v9, v10);
        v12 = sub_29D41A270(v11, ",", 1);
        sub_29D40DC78(&v351, "sample-interval");
        profile_decoder::key(&v408);
        if ((v408.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v13 = &v408;
        }

        else
        {
          v13 = v408.__r_.__value_.__r.__words[0];
        }

        if ((v408.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v14 = HIBYTE(v408.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v14 = v408.__r_.__value_.__l.__size_;
        }

        v15 = sub_29D41A270(v12, v13, v14);
        *(v15 + *(*v15 - 24) + 24) = 10;
        v16 = MEMORY[0x29ED56A70]();
        v17 = sub_29D41A270(v16, ",", 1);
        sub_29D40DC78(&v349, "report-interval");
        profile_decoder::key(&v405);
        if ((v405.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v18 = &v405;
        }

        else
        {
          v18 = v405.__r_.__value_.__r.__words[0];
        }

        if ((v405.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v19 = HIBYTE(v405.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v19 = v405.__r_.__value_.__l.__size_;
        }

        v20 = sub_29D41A270(v17, v18, v19);
        *(v20 + *(*v20 - 24) + 24) = 10;
        v21 = MEMORY[0x29ED56A70]();
        v22 = sub_29D41A270(v21, ",", 1);
        sub_29D40DC78(&v347, "batch-interval");
        profile_decoder::key(&v402);
        if ((v402.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v23 = &v402;
        }

        else
        {
          v23 = v402.__r_.__value_.__r.__words[0];
        }

        if ((v402.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v24 = HIBYTE(v402.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v24 = v402.__r_.__value_.__l.__size_;
        }

        v25 = sub_29D41A270(v22, v23, v24);
        *(v25 + *(*v25 - 24) + 24) = 10;
        v26 = MEMORY[0x29ED56A70]();
        v27 = sub_29D41A270(v26, ",", 1);
        sub_29D40DC78(&v345, "next-dispatch");
        profile_decoder::key(&__p);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v28 = &__p;
        }

        else
        {
          v28 = __p.__r_.__value_.__r.__words[0];
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v29 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v29 = __p.__r_.__value_.__l.__size_;
        }

        v30 = sub_29D41A270(v27, v28, v29);
        *(v30 + *(*v30 - 24) + 24) = 10;
        v31 = MEMORY[0x29ED56AA0]();
        sub_29D41A270(v31, ",", 1);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (v346 < 0)
        {
          operator delete(v345);
        }

        if (SHIBYTE(v402.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v402.__r_.__value_.__l.__data_);
        }

        if (v348 < 0)
        {
          operator delete(v347);
        }

        if (SHIBYTE(v405.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v405.__r_.__value_.__l.__data_);
        }

        if (v350 < 0)
        {
          operator delete(v349);
        }

        if (SHIBYTE(v408.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v408.__r_.__value_.__l.__data_);
        }

        if (v352 < 0)
        {
          operator delete(v351);
        }

        if (SHIBYTE(v411.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v411.__r_.__value_.__l.__data_);
        }

        if (v354 < 0)
        {
          operator delete(v353);
        }

        if (SHIBYTE(v414.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v414.__r_.__value_.__l.__data_);
        }

        if (v356 < 0)
        {
          v32 = v355;
LABEL_612:
          operator delete(v32);
        }

        break;
    }
  }
}

void sub_29D41081C(_Unwind_Exception *a1)
{
  if (SLOBYTE(STACK[0x47F]) < 0)
  {
    operator delete(STACK[0x468]);
  }

  if (SLOBYTE(STACK[0x467]) < 0)
  {
    operator delete(STACK[0x450]);
  }

  if (SLOBYTE(STACK[0x4AF]) < 0)
  {
    operator delete(STACK[0x498]);
  }

  if (SLOBYTE(STACK[0x497]) < 0)
  {
    operator delete(STACK[0x480]);
  }

  if (*(v1 - 65) < 0)
  {
    operator delete(*(v1 - 88));
  }

  if (SLOBYTE(STACK[0x4C7]) < 0)
  {
    operator delete(STACK[0x4B0]);
  }

  if (SLOBYTE(STACK[0x4F7]) < 0)
  {
    operator delete(STACK[0x4E0]);
  }

  if (SLOBYTE(STACK[0x4DF]) < 0)
  {
    operator delete(STACK[0x4C8]);
  }

  if (SLOBYTE(STACK[0x527]) < 0)
  {
    operator delete(STACK[0x510]);
  }

  if (SLOBYTE(STACK[0x50F]) < 0)
  {
    operator delete(STACK[0x4F8]);
  }

  if (*(v1 - 41) < 0)
  {
    operator delete(*(v1 - 64));
  }

  if (SLOBYTE(STACK[0x53F]) < 0)
  {
    operator delete(STACK[0x528]);
  }

  if (SLOBYTE(STACK[0x56F]) < 0)
  {
    operator delete(STACK[0x558]);
  }

  if (SLOBYTE(STACK[0x557]) < 0)
  {
    operator delete(STACK[0x540]);
  }

  if (SLOBYTE(STACK[0x59F]) < 0)
  {
    operator delete(STACK[0x588]);
  }

  if (SLOBYTE(STACK[0x587]) < 0)
  {
    operator delete(STACK[0x570]);
  }

  if (SLOBYTE(STACK[0x5CF]) < 0)
  {
    operator delete(STACK[0x5B8]);
  }

  if (SLOBYTE(STACK[0x5B7]) < 0)
  {
    operator delete(STACK[0x5A0]);
  }

  if (*(v1 - 193) < 0)
  {
    operator delete(*(v1 - 216));
  }

  if (*(v1 - 217) < 0)
  {
    operator delete(*(v1 - 240));
  }

  if (*(v1 - 145) < 0)
  {
    operator delete(*(v1 - 168));
  }

  if (*(v1 - 169) < 0)
  {
    operator delete(*(v1 - 192));
  }

  if (*(v1 - 97) < 0)
  {
    operator delete(*(v1 - 120));
  }

  if (*(v1 - 121) < 0)
  {
    operator delete(*(v1 - 144));
  }

  _Unwind_Resume(a1);
}

void profile_decoder::key(std::string *a1@<X8>)
{
  std::operator+<char>();
  v2 = std::string::append(&v3, "':");
  *a1 = *v2;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v3.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v3.__r_.__value_.__l.__data_);
  }
}

void sub_29D411510(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void profile_decoder::str(std::string *a1@<X8>)
{
  std::operator+<char>();
  v2 = std::string::append(&v3, "'");
  *a1 = *v2;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v3.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v3.__r_.__value_.__l.__data_);
  }
}

void sub_29D41159C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t profile_decoder::spu_time_to_wall_time(uint64_t a1, uint64_t a2, uint64_t a3)
{
  valuePtr[4] = *MEMORY[0x29EDCA608];
  v5 = *MEMORY[0x29EDBB110];
  v6 = IOServiceMatching("AppleSPUTimesync");
  result = IOServiceGetMatchingService(v5, v6);
  if (result)
  {
    v8 = result;
    valuePtr[0] = 0;
    *__str = 0;
    CFProperty = IORegistryEntryCreateCFProperty(result, @"timesync", *MEMORY[0x29EDB8ED8], 0);
    if (CFProperty)
    {
      v10 = CFProperty;
      Value = CFDictionaryGetValue(CFProperty, @"spu");
      CFNumberGetValue(Value, kCFNumberLongLongType, valuePtr);
      v12 = CFDictionaryGetValue(v10, @"calendar");
      CFNumberGetValue(v12, kCFNumberLongLongType, __str);
      v13 = *__str + 1000 * a2 - valuePtr[0];
      CFRelease(v10);
      IOObjectRelease(v8);
      v15 = v13 / 0x3B9ACA00;
      v14 = localtime(&v15);
      strftime(valuePtr, 0x1EuLL, "%b %d %T", v14);
      snprintf(__str, 0x1EuLL, "%s.%06lld", valuePtr, v13 / 0x3E8 - 1000000 * (((v13 / 0x3E8 * 0x431BDE82D7B635uLL) >> 64) >> 10));
      MEMORY[0x29ED56A10](a3, __str);
      return 1;
    }

    else
    {
      IOObjectRelease(v8);
      return 0;
    }
  }

  return result;
}

BOOL profile_decoder::get_boot_time(profile_decoder *this, unint64_t *a2)
{
  v9 = *MEMORY[0x29EDCA608];
  v5 = 16;
  *v8 = 0x1500000001;
  v3 = sysctl(v8, 2u, &v6, &v5, 0, 0);
  if ((v3 & 0x80000000) == 0)
  {
    *a2 = v7 + 1000000 * v6;
  }

  return v3 >= 0;
}

void profile_decoder::to_string(uint64_t a1, int *a2)
{
  v4 = *a2;
  v5 = HIBYTE(*a2);
  v6 = BYTE2(*a2);
  (*(*a1 + 8))(&v144);
  (*(*a1 + 16))(&v142, a1, BYTE2(v4));
  (*(*a1 + 24))(&v140, a1, BYTE2(v4), BYTE1(v4));
  v7 = profile_decoder::find_in_table(&unk_29F34DCB8, v4, 0xDu, &v139);
  v137 = 0uLL;
  v138 = 0;
  v8 = profile_decoder::spu_time_to_wall_time(v7, *(a2 + 1), &v137);
  v84 = v8;
  v136 = 0;
  boot_time = profile_decoder::get_boot_time(v8, &v136);
  sub_29D40DF40(v130);
  v9 = sub_29D41A270(&v131, "{ ", 2);
  sub_29D40DC78(&v127, "category");
  profile_decoder::key(&v129);
  if ((v129.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v10 = &v129;
  }

  else
  {
    v10 = v129.__r_.__value_.__r.__words[0];
  }

  if ((v129.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v129.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v129.__r_.__value_.__l.__size_;
  }

  v12 = sub_29D41A270(v9, v10, size);
  *(v12 + *(*v12 - 24) + 24) = 8;
  if (SHIBYTE(v145) < 0)
  {
    sub_29D41A600(&__dst, v144, *(&v144 + 1));
  }

  else
  {
    __dst = v144;
    v125 = v145;
  }

  profile_decoder::str(&v126);
  if ((v126.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v13 = &v126;
  }

  else
  {
    v13 = v126.__r_.__value_.__r.__words[0];
  }

  if ((v126.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v14 = HIBYTE(v126.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v14 = v126.__r_.__value_.__l.__size_;
  }

  v15 = sub_29D41A270(v12, v13, v14);
  v16 = sub_29D41A270(v15, ",", 1);
  sub_29D40DC78(&v121, "component");
  profile_decoder::key(&v123);
  if ((v123.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = &v123;
  }

  else
  {
    v17 = v123.__r_.__value_.__r.__words[0];
  }

  if ((v123.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v18 = HIBYTE(v123.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v18 = v123.__r_.__value_.__l.__size_;
  }

  v19 = sub_29D41A270(v16, v17, v18);
  *(v19 + *(*v19 - 24) + 24) = 8;
  if (SHIBYTE(v143) < 0)
  {
    sub_29D41A600(&v118, v142, *(&v142 + 1));
  }

  else
  {
    v118 = v142;
    v119 = v143;
  }

  profile_decoder::str(&v120);
  if ((v120.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v20 = &v120;
  }

  else
  {
    v20 = v120.__r_.__value_.__r.__words[0];
  }

  if ((v120.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v21 = HIBYTE(v120.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v21 = v120.__r_.__value_.__l.__size_;
  }

  v22 = sub_29D41A270(v19, v20, v21);
  v23 = sub_29D41A270(v22, ",", 1);
  sub_29D40DC78(&v115, "event");
  profile_decoder::key(&v117);
  if ((v117.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v24 = &v117;
  }

  else
  {
    v24 = v117.__r_.__value_.__r.__words[0];
  }

  if ((v117.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v25 = HIBYTE(v117.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v25 = v117.__r_.__value_.__l.__size_;
  }

  v26 = sub_29D41A270(v23, v24, v25);
  *(v26 + *(*v26 - 24) + 24) = 12;
  if (SHIBYTE(v141) < 0)
  {
    sub_29D41A600(&v112, v140, *(&v140 + 1));
  }

  else
  {
    v112 = v140;
    v113 = v141;
  }

  profile_decoder::str(&v114);
  if ((v114.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v27 = &v114;
  }

  else
  {
    v27 = v114.__r_.__value_.__r.__words[0];
  }

  if ((v114.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v28 = HIBYTE(v114.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v28 = v114.__r_.__value_.__l.__size_;
  }

  v29 = sub_29D41A270(v26, v27, v28);
  v30 = sub_29D41A270(v29, ",", 1);
  sub_29D40DC78(&v109, "type");
  profile_decoder::key(&v111);
  if ((v111.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v31 = &v111;
  }

  else
  {
    v31 = v111.__r_.__value_.__r.__words[0];
  }

  if ((v111.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v32 = HIBYTE(v111.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v32 = v111.__r_.__value_.__l.__size_;
  }

  v33 = sub_29D41A270(v30, v31, v32);
  *(v33 + *(*v33 - 24) + 24) = 12;
  if (SHIBYTE(v139.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_29D41A600(&v107, v139.__r_.__value_.__l.__data_, v139.__r_.__value_.__l.__size_);
  }

  else
  {
    v107 = v139;
  }

  profile_decoder::str(&v108);
  if ((v108.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v34 = &v108;
  }

  else
  {
    v34 = v108.__r_.__value_.__r.__words[0];
  }

  if ((v108.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v35 = HIBYTE(v108.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v35 = v108.__r_.__value_.__l.__size_;
  }

  v36 = sub_29D41A270(v33, v34, v35);
  v37 = sub_29D41A270(v36, ",", 1);
  sub_29D40DC78(&v104, "timestamp");
  profile_decoder::key(&v106);
  if ((v106.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v38 = &v106;
  }

  else
  {
    v38 = v106.__r_.__value_.__r.__words[0];
  }

  if ((v106.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v39 = HIBYTE(v106.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v39 = v106.__r_.__value_.__l.__size_;
  }

  v40 = sub_29D41A270(v37, v38, v39);
  *(v40 + *(*v40 - 24) + 24) = 10;
  v41 = MEMORY[0x29ED56AA0]();
  v42 = sub_29D41A270(v41, ",", 1);
  sub_29D40DC78(&v101, "sequence_num");
  profile_decoder::key(&__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v44 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v44 = __p.__r_.__value_.__l.__size_;
  }

  v45 = sub_29D41A270(v42, p_p, v44);
  *(v45 + *(*v45 - 24) + 24) = 10;
  v46 = MEMORY[0x29ED56A70]();
  sub_29D41A270(v46, ",", 1);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v102 < 0)
  {
    operator delete(v101);
  }

  if (SHIBYTE(v106.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v106.__r_.__value_.__l.__data_);
  }

  if (v105 < 0)
  {
    operator delete(v104);
  }

  if (SHIBYTE(v108.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v108.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v107.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v107.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v111.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v111.__r_.__value_.__l.__data_);
  }

  if (v110 < 0)
  {
    operator delete(v109);
  }

  if (SHIBYTE(v114.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v114.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v113) < 0)
  {
    operator delete(v112);
  }

  if (SHIBYTE(v117.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v117.__r_.__value_.__l.__data_);
  }

  if (v116 < 0)
  {
    operator delete(v115);
  }

  if (SHIBYTE(v120.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v120.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v119) < 0)
  {
    operator delete(v118);
  }

  if (SHIBYTE(v123.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v123.__r_.__value_.__l.__data_);
  }

  if (v122 < 0)
  {
    operator delete(v121);
  }

  if (SHIBYTE(v126.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v126.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v125) < 0)
  {
    operator delete(__dst);
  }

  if (SHIBYTE(v129.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v129.__r_.__value_.__l.__data_);
  }

  if (v128 < 0)
  {
    operator delete(v127);
  }

  (*(*a1 + 32))(a1, v130, a2);
  sub_29D40DC78(&v99, "type-id");
  profile_decoder::key(&v129);
  if ((v129.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v47 = &v129;
  }

  else
  {
    v47 = v129.__r_.__value_.__r.__words[0];
  }

  if ((v129.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v48 = HIBYTE(v129.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v48 = v129.__r_.__value_.__l.__size_;
  }

  v49 = sub_29D41A270(&v131, v47, v48);
  v50 = MEMORY[0x29ED56A70](v49, v4);
  v51 = sub_29D41A270(v50, ",", 1);
  sub_29D40DC78(&v97, "category-id");
  profile_decoder::key(&v126);
  if ((v126.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v52 = &v126;
  }

  else
  {
    v52 = v126.__r_.__value_.__r.__words[0];
  }

  if ((v126.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v53 = HIBYTE(v126.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v53 = v126.__r_.__value_.__l.__size_;
  }

  v54 = sub_29D41A270(v51, v52, v53);
  v55 = MEMORY[0x29ED56A70](v54, v5);
  v56 = sub_29D41A270(v55, ",", 1);
  sub_29D40DC78(&v95, "component-id");
  profile_decoder::key(&v123);
  if ((v123.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v57 = &v123;
  }

  else
  {
    v57 = v123.__r_.__value_.__r.__words[0];
  }

  if ((v123.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v58 = HIBYTE(v123.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v58 = v123.__r_.__value_.__l.__size_;
  }

  v59 = sub_29D41A270(v56, v57, v58);
  v60 = MEMORY[0x29ED56A70](v59, v6);
  v61 = sub_29D41A270(v60, ",", 1);
  sub_29D40DC78(&v93, "event-id");
  profile_decoder::key(&v120);
  if ((v120.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v62 = &v120;
  }

  else
  {
    v62 = v120.__r_.__value_.__r.__words[0];
  }

  if ((v120.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v63 = HIBYTE(v120.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v63 = v120.__r_.__value_.__l.__size_;
  }

  v64 = sub_29D41A270(v61, v62, v63);
  v65 = MEMORY[0x29ED56A70](v64, BYTE1(v4));
  v66 = sub_29D41A270(v65, ",", 1);
  sub_29D40DC78(&v91, "binary-data");
  profile_decoder::key(&v117);
  if ((v117.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v67 = &v117;
  }

  else
  {
    v67 = v117.__r_.__value_.__r.__words[0];
  }

  if ((v117.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v68 = HIBYTE(v117.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v68 = v117.__r_.__value_.__l.__size_;
  }

  v69 = sub_29D41A270(v66, v67, v68);
  profile_decoder::dump(v69, a2, 48);
  if ((v114.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v70 = &v114;
  }

  else
  {
    v70 = v114.__r_.__value_.__r.__words[0];
  }

  if ((v114.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v71 = HIBYTE(v114.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v71 = v114.__r_.__value_.__l.__size_;
  }

  sub_29D41A270(v69, v70, v71);
  if (SHIBYTE(v114.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v114.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v117.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v117.__r_.__value_.__l.__data_);
  }

  if (v92 < 0)
  {
    operator delete(v91);
  }

  if (SHIBYTE(v120.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v120.__r_.__value_.__l.__data_);
  }

  if (v94 < 0)
  {
    operator delete(v93);
  }

  if (SHIBYTE(v123.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v123.__r_.__value_.__l.__data_);
  }

  if (v96 < 0)
  {
    operator delete(v95);
  }

  if (SHIBYTE(v126.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v126.__r_.__value_.__l.__data_);
  }

  if (v98 < 0)
  {
    operator delete(v97);
  }

  if (SHIBYTE(v129.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v129.__r_.__value_.__l.__data_);
  }

  if (v100 < 0)
  {
    operator delete(v99);
  }

  if (v84)
  {
    v72 = sub_29D41A270(&v131, ",", 1);
    sub_29D40DC78(&v89, "calendar-time");
    profile_decoder::key(&v129);
    if ((v129.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v73 = &v129;
    }

    else
    {
      v73 = v129.__r_.__value_.__r.__words[0];
    }

    if ((v129.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v74 = HIBYTE(v129.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v74 = v129.__r_.__value_.__l.__size_;
    }

    v75 = sub_29D41A270(v72, v73, v74);
    if (SHIBYTE(v138) < 0)
    {
      sub_29D41A600(v87, v137, *(&v137 + 1));
    }

    else
    {
      *v87 = v137;
      v88 = v138;
    }

    profile_decoder::str(&v126);
    if ((v126.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v76 = &v126;
    }

    else
    {
      v76 = v126.__r_.__value_.__r.__words[0];
    }

    if ((v126.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v77 = HIBYTE(v126.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v77 = v126.__r_.__value_.__l.__size_;
    }

    sub_29D41A270(v75, v76, v77);
    if (SHIBYTE(v126.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v126.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v88) < 0)
    {
      operator delete(v87[0]);
    }

    if (SHIBYTE(v129.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v129.__r_.__value_.__l.__data_);
    }

    if (v90 < 0)
    {
      operator delete(v89);
    }
  }

  if (boot_time)
  {
    v78 = sub_29D41A270(&v131, ",", 1);
    sub_29D40DC78(&v85, "boot-timestamp");
    profile_decoder::key(&v129);
    if ((v129.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v79 = &v129;
    }

    else
    {
      v79 = v129.__r_.__value_.__r.__words[0];
    }

    if ((v129.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v80 = HIBYTE(v129.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v80 = v129.__r_.__value_.__l.__size_;
    }

    v81 = sub_29D41A270(v78, v79, v80);
    MEMORY[0x29ED56AA0](v81, v136);
    if (SHIBYTE(v129.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v129.__r_.__value_.__l.__data_);
    }

    if (v86 < 0)
    {
      operator delete(v85);
    }
  }

  sub_29D41A270(&v131, "}", 1);
  std::stringbuf::str();
  v130[0] = *MEMORY[0x29EDC9528];
  v82 = *(MEMORY[0x29EDC9528] + 72);
  *(v130 + *(v130[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v131 = v82;
  v132 = MEMORY[0x29EDC9570] + 16;
  if (v134 < 0)
  {
    operator delete(v133[7].__locale_);
  }

  v132 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v133);
  std::iostream::~basic_iostream();
  MEMORY[0x29ED56B10](&v135);
  if (SHIBYTE(v138) < 0)
  {
    operator delete(v137);
  }

  if (SHIBYTE(v139.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v139.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v141) < 0)
  {
    operator delete(v140);
  }

  if (SHIBYTE(v143) < 0)
  {
    operator delete(v142);
  }

  if (SHIBYTE(v145) < 0)
  {
    operator delete(v144);
  }
}

void sub_29D412530(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (SLOBYTE(STACK[0x2C7]) < 0)
  {
    operator delete(STACK[0x2B0]);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  sub_29D40E1E4(&STACK[0x2C8]);
  if (*(v24 - 193) < 0)
  {
    operator delete(*(v24 - 216));
  }

  if (*(v24 - 169) < 0)
  {
    operator delete(*(v24 - 192));
  }

  if (*(v24 - 145) < 0)
  {
    operator delete(*(v24 - 168));
  }

  if (*(v24 - 121) < 0)
  {
    operator delete(*(v24 - 144));
  }

  if (*(v24 - 97) < 0)
  {
    operator delete(*(v24 - 120));
  }

  _Unwind_Resume(a1);
}

std::string *execution_decoder::event_name@<X0>(unsigned int __val@<W2>, int a2@<W1>, std::string *a3@<X8>)
{
  if (a2 <= 1)
  {
    if (!a2)
    {
      v4 = &unk_29F34DDE8;
      v5 = 3;
      return profile_decoder::find_in_table(v4, __val, v5, a3);
    }

    if (a2 == 1)
    {
      v4 = &unk_29F34DE18;
      goto LABEL_9;
    }
  }

  else
  {
    switch(a2)
    {
      case 2:
        v4 = &unk_29F34DE28;
        v5 = 2;
        return profile_decoder::find_in_table(v4, __val, v5, a3);
      case 3:
        v4 = &unk_29F34DE48;
        v5 = 8;
        return profile_decoder::find_in_table(v4, __val, v5, a3);
      case 4:
        v4 = &unk_29F34DEC8;
LABEL_9:
        v5 = 1;
        return profile_decoder::find_in_table(v4, __val, v5, a3);
    }
  }

  return std::to_string(a3, __val);
}

void cumulus_decoder::parse_datatype(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v6 = *a3;
  if (*a3 == 67108867)
  {
    sub_29D40DC78(&v137, "arg1");
    profile_decoder::key(&v139);
    if ((v139.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v7 = &v139;
    }

    else
    {
      v7 = v139.__r_.__value_.__r.__words[0];
    }

    if ((v139.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v139.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v139.__r_.__value_.__l.__size_;
    }

    v9 = sub_29D41A270((a2 + 16), v7, size);
    *(v9 + *(*v9 - 24) + 24) = 10;
    v10 = MEMORY[0x29ED56A70]();
    v11 = sub_29D41A270(v10, ",", 1);
    sub_29D40DC78(&v134, "arg2");
    profile_decoder::key(&v136);
    if ((v136.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v12 = &v136;
    }

    else
    {
      v12 = v136.__r_.__value_.__r.__words[0];
    }

    if ((v136.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v13 = HIBYTE(v136.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v13 = v136.__r_.__value_.__l.__size_;
    }

    v14 = sub_29D41A270(v11, v12, v13);
    *(v14 + *(*v14 - 24) + 24) = 10;
    v15 = MEMORY[0x29ED56A70]();
    v16 = sub_29D41A270(v15, ",", 1);
    sub_29D40DC78(&v131, "arg3");
    profile_decoder::key(&v133);
    if ((v133.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v17 = &v133;
    }

    else
    {
      v17 = v133.__r_.__value_.__r.__words[0];
    }

    if ((v133.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v18 = HIBYTE(v133.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v18 = v133.__r_.__value_.__l.__size_;
    }

    v19 = sub_29D41A270(v16, v17, v18);
    *(v19 + *(*v19 - 24) + 24) = 10;
    v20 = MEMORY[0x29ED56A70]();
    v21 = sub_29D41A270(v20, ",", 1);
    sub_29D40DC78(&v128, "arg4");
    profile_decoder::key(&v130);
    if ((v130.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v22 = &v130;
    }

    else
    {
      v22 = v130.__r_.__value_.__r.__words[0];
    }

    if ((v130.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v23 = HIBYTE(v130.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v23 = v130.__r_.__value_.__l.__size_;
    }

    v24 = sub_29D41A270(v21, v22, v23);
    *(v24 + *(*v24 - 24) + 24) = 10;
    v25 = MEMORY[0x29ED56A70]();
    v26 = sub_29D41A270(v25, ",", 1);
    sub_29D40DC78(&v125, "arg5");
    profile_decoder::key(&v127);
    if ((v127.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v27 = &v127;
    }

    else
    {
      v27 = v127.__r_.__value_.__r.__words[0];
    }

    if ((v127.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v28 = HIBYTE(v127.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v28 = v127.__r_.__value_.__l.__size_;
    }

    v29 = sub_29D41A270(v26, v27, v28);
    *(v29 + *(*v29 - 24) + 24) = 10;
    v30 = MEMORY[0x29ED56A70]();
    v31 = sub_29D41A270(v30, ",", 1);
    sub_29D40DC78(&v122, "arg6");
    profile_decoder::key(&v124);
    if ((v124.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v32 = &v124;
    }

    else
    {
      v32 = v124.__r_.__value_.__r.__words[0];
    }

    if ((v124.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v33 = HIBYTE(v124.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v33 = v124.__r_.__value_.__l.__size_;
    }

    v34 = sub_29D41A270(v31, v32, v33);
    *(v34 + *(*v34 - 24) + 24) = 10;
    v35 = MEMORY[0x29ED56A70]();
    v36 = sub_29D41A270(v35, ",", 1);
    sub_29D40DC78(&v119, "x");
    profile_decoder::key(&v121);
    if ((v121.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v37 = &v121;
    }

    else
    {
      v37 = v121.__r_.__value_.__r.__words[0];
    }

    if ((v121.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v38 = HIBYTE(v121.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v38 = v121.__r_.__value_.__l.__size_;
    }

    v39 = sub_29D41A270(v36, v37, v38);
    *(v39 + *(*v39 - 24) + 24) = 10;
    v40 = MEMORY[0x29ED56A50](vcvtd_n_f64_s32(*(a3 + 4), 0x10uLL));
    v41 = sub_29D41A270(v40, ",", 1);
    sub_29D40DC78(&v116, "y");
    profile_decoder::key(&v118);
    if ((v118.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v42 = &v118;
    }

    else
    {
      v42 = v118.__r_.__value_.__r.__words[0];
    }

    if ((v118.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v43 = HIBYTE(v118.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v43 = v118.__r_.__value_.__l.__size_;
    }

    v44 = sub_29D41A270(v41, v42, v43);
    *(v44 + *(*v44 - 24) + 24) = 10;
    v45 = MEMORY[0x29ED56A50](vcvtd_n_f64_s32(*(a3 + 5), 0x10uLL));
    v46 = sub_29D41A270(v45, ",", 1);
    sub_29D40DC78(&v113, "z");
    profile_decoder::key(&__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v48 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v48 = __p.__r_.__value_.__l.__size_;
    }

    v49 = sub_29D41A270(v46, p_p, v48);
    *(v49 + *(*v49 - 24) + 24) = 10;
    v50 = MEMORY[0x29ED56A50](vcvtd_n_f64_s32(*(a3 + 6), 0x10uLL));
    sub_29D41A270(v50, ",", 1);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v114 < 0)
    {
      operator delete(v113);
    }

    if (SHIBYTE(v118.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v118.__r_.__value_.__l.__data_);
    }

    if (v117 < 0)
    {
      operator delete(v116);
    }

    if (SHIBYTE(v121.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v121.__r_.__value_.__l.__data_);
    }

    if (v120 < 0)
    {
      operator delete(v119);
    }

    if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v124.__r_.__value_.__l.__data_);
    }

    if (v123 < 0)
    {
      operator delete(v122);
    }

    if (SHIBYTE(v127.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v127.__r_.__value_.__l.__data_);
    }

    if (v126 < 0)
    {
      operator delete(v125);
    }

    if (SHIBYTE(v130.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v130.__r_.__value_.__l.__data_);
    }

    if (v129 < 0)
    {
      operator delete(v128);
    }

    if (SHIBYTE(v133.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v133.__r_.__value_.__l.__data_);
    }

    if (v132 < 0)
    {
      operator delete(v131);
    }

    if (SHIBYTE(v136.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v136.__r_.__value_.__l.__data_);
    }

    if (v135 < 0)
    {
      operator delete(v134);
    }

    if (SHIBYTE(v139.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v139.__r_.__value_.__l.__data_);
    }

    if (v138 < 0)
    {
      operator delete(v137);
    }

    v6 = *a3;
  }

  if (v6 == 67109123)
  {
    sub_29D40DC78(&v111, "arg1");
    profile_decoder::key(&v139);
    if ((v139.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v51 = &v139;
    }

    else
    {
      v51 = v139.__r_.__value_.__r.__words[0];
    }

    if ((v139.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v52 = HIBYTE(v139.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v52 = v139.__r_.__value_.__l.__size_;
    }

    v53 = sub_29D41A270((a2 + 16), v51, v52);
    *(v53 + *(*v53 - 24) + 24) = 10;
    v54 = MEMORY[0x29ED56A70]();
    v55 = sub_29D41A270(v54, ",", 1);
    sub_29D40DC78(&v109, "arg2");
    profile_decoder::key(&v136);
    if ((v136.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v56 = &v136;
    }

    else
    {
      v56 = v136.__r_.__value_.__r.__words[0];
    }

    if ((v136.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v57 = HIBYTE(v136.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v57 = v136.__r_.__value_.__l.__size_;
    }

    v58 = sub_29D41A270(v55, v56, v57);
    *(v58 + *(*v58 - 24) + 24) = 10;
    v59 = MEMORY[0x29ED56A70]();
    v60 = sub_29D41A270(v59, ",", 1);
    sub_29D40DC78(&v107, "arg3");
    profile_decoder::key(&v133);
    if ((v133.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v61 = &v133;
    }

    else
    {
      v61 = v133.__r_.__value_.__r.__words[0];
    }

    if ((v133.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v62 = HIBYTE(v133.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v62 = v133.__r_.__value_.__l.__size_;
    }

    v63 = sub_29D41A270(v60, v61, v62);
    *(v63 + *(*v63 - 24) + 24) = 10;
    v64 = MEMORY[0x29ED56A70]();
    v65 = sub_29D41A270(v64, ",", 1);
    sub_29D40DC78(&v105, "arg4");
    profile_decoder::key(&v130);
    if ((v130.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v66 = &v130;
    }

    else
    {
      v66 = v130.__r_.__value_.__r.__words[0];
    }

    if ((v130.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v67 = HIBYTE(v130.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v67 = v130.__r_.__value_.__l.__size_;
    }

    v68 = sub_29D41A270(v65, v66, v67);
    *(v68 + *(*v68 - 24) + 24) = 10;
    v69 = MEMORY[0x29ED56A70]();
    v70 = sub_29D41A270(v69, ",", 1);
    sub_29D40DC78(&v103, "arg5");
    profile_decoder::key(&v127);
    if ((v127.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v71 = &v127;
    }

    else
    {
      v71 = v127.__r_.__value_.__r.__words[0];
    }

    if ((v127.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v72 = HIBYTE(v127.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v72 = v127.__r_.__value_.__l.__size_;
    }

    v73 = sub_29D41A270(v70, v71, v72);
    *(v73 + *(*v73 - 24) + 24) = 10;
    v74 = MEMORY[0x29ED56A70]();
    v75 = sub_29D41A270(v74, ",", 1);
    sub_29D40DC78(&v101, "arg6");
    profile_decoder::key(&v124);
    if ((v124.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v76 = &v124;
    }

    else
    {
      v76 = v124.__r_.__value_.__r.__words[0];
    }

    if ((v124.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v77 = HIBYTE(v124.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v77 = v124.__r_.__value_.__l.__size_;
    }

    v78 = sub_29D41A270(v75, v76, v77);
    *(v78 + *(*v78 - 24) + 24) = 10;
    v79 = MEMORY[0x29ED56A70]();
    v80 = sub_29D41A270(v79, ",", 1);
    sub_29D40DC78(&v99, "x");
    profile_decoder::key(&v121);
    if ((v121.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v81 = &v121;
    }

    else
    {
      v81 = v121.__r_.__value_.__r.__words[0];
    }

    if ((v121.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v82 = HIBYTE(v121.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v82 = v121.__r_.__value_.__l.__size_;
    }

    v83 = sub_29D41A270(v80, v81, v82);
    *(v83 + *(*v83 - 24) + 24) = 10;
    v84 = MEMORY[0x29ED56A50](vcvtd_n_f64_s32(*(a3 + 4), 0xCuLL));
    v85 = sub_29D41A270(v84, ",", 1);
    sub_29D40DC78(&v97, "y");
    profile_decoder::key(&v118);
    if ((v118.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v86 = &v118;
    }

    else
    {
      v86 = v118.__r_.__value_.__r.__words[0];
    }

    if ((v118.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v87 = HIBYTE(v118.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v87 = v118.__r_.__value_.__l.__size_;
    }

    v88 = sub_29D41A270(v85, v86, v87);
    *(v88 + *(*v88 - 24) + 24) = 10;
    v89 = MEMORY[0x29ED56A50](vcvtd_n_f64_s32(*(a3 + 5), 0xCuLL));
    v90 = sub_29D41A270(v89, ",", 1);
    sub_29D40DC78(&v95, "z");
    profile_decoder::key(&__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v91 = &__p;
    }

    else
    {
      v91 = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v92 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v92 = __p.__r_.__value_.__l.__size_;
    }

    v93 = sub_29D41A270(v90, v91, v92);
    *(v93 + *(*v93 - 24) + 24) = 10;
    v94 = MEMORY[0x29ED56A50](vcvtd_n_f64_s32(*(a3 + 6), 0xCuLL));
    sub_29D41A270(v94, ",", 1);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v96 < 0)
    {
      operator delete(v95);
    }

    if (SHIBYTE(v118.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v118.__r_.__value_.__l.__data_);
    }

    if (v98 < 0)
    {
      operator delete(v97);
    }

    if (SHIBYTE(v121.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v121.__r_.__value_.__l.__data_);
    }

    if (v100 < 0)
    {
      operator delete(v99);
    }

    if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v124.__r_.__value_.__l.__data_);
    }

    if (v102 < 0)
    {
      operator delete(v101);
    }

    if (SHIBYTE(v127.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v127.__r_.__value_.__l.__data_);
    }

    if (v104 < 0)
    {
      operator delete(v103);
    }

    if (SHIBYTE(v130.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v130.__r_.__value_.__l.__data_);
    }

    if (v106 < 0)
    {
      operator delete(v105);
    }

    if (SHIBYTE(v133.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v133.__r_.__value_.__l.__data_);
    }

    if (v108 < 0)
    {
      operator delete(v107);
    }

    if (SHIBYTE(v136.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v136.__r_.__value_.__l.__data_);
    }

    if (v110 < 0)
    {
      operator delete(v109);
    }

    if (SHIBYTE(v139.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v139.__r_.__value_.__l.__data_);
    }

    if (v112 < 0)
    {
      operator delete(v111);
    }
  }

  else
  {
    profile_decoder::parse_datatype(a1, a2, a3);
  }
}

void sub_29D413630(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, void *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51, void *a52, uint64_t a53, int a54, __int16 a55, char a56, char a57, void *a58, uint64_t a59, int a60, __int16 a61, char a62, char a63)
{
  if (a66 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (a68 < 0)
  {
    operator delete(a67);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a70 < 0)
  {
    operator delete(a69);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a72 < 0)
  {
    operator delete(a71);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a74 < 0)
  {
    operator delete(a73);
  }

  if (a39 < 0)
  {
    operator delete(a34);
  }

  if (*(v74 - 209) < 0)
  {
    operator delete(*(v74 - 232));
  }

  if (a45 < 0)
  {
    operator delete(a40);
  }

  if (*(v74 - 161) < 0)
  {
    operator delete(*(v74 - 184));
  }

  if (a51 < 0)
  {
    operator delete(a46);
  }

  if (*(v74 - 113) < 0)
  {
    operator delete(*(v74 - 136));
  }

  if (a57 < 0)
  {
    operator delete(a52);
  }

  if (*(v74 - 65) < 0)
  {
    operator delete(*(v74 - 88));
  }

  if (a63 < 0)
  {
    operator delete(a58);
  }

  _Unwind_Resume(a1);
}

std::string *sshb_decoder::event_name@<X0>(unsigned int __val@<W2>, int a2@<W1>, std::string *a3@<X8>)
{
  if (a2 == 3)
  {
    v3 = &unk_29F34E218;
  }

  else
  {
    v3 = &unk_29F34E298;
  }

  return profile_decoder::find_in_table(v3, __val, 8u, a3);
}

std::string *sshb_decoder::subtype_name@<X0>(sshb_decoder *this@<X0>, uint64_t __val@<X2>, uint64_t a3@<X1>, std::string *a4@<X8>)
{
  v4 = __val;
  if (a3 <= 3)
  {
    if (a3 >= 3)
    {
      if (a3 == 3)
      {
        return (*(*this + 24))(this, a3, __val);
      }

      return std::to_string(a4, __val);
    }

    goto LABEL_7;
  }

  if (a3 > 5)
  {
    if (a3 == 7)
    {
      v6 = &unk_29F34EA28;
      v7 = 17;
      return profile_decoder::find_in_table(v6, v4, v7, a4);
    }
  }

  else if (a3 == 4)
  {
LABEL_7:
    v6 = &unk_29F34E318;
    v7 = 113;
    return profile_decoder::find_in_table(v6, v4, v7, a4);
  }

  return std::to_string(a4, __val);
}

void sshb_decoder::parse_datatype(sshb_decoder *a1, uint64_t a2, unsigned int *a3)
{
  v6 = *a3;
  v7 = BYTE2(*a3);
  v8 = *a3;
  if (v8 == 3)
  {
    sub_29D40DC78(&v822, "trace");
    profile_decoder::key(&v824);
    if ((v824.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v9 = &v824;
    }

    else
    {
      v9 = v824.__r_.__value_.__r.__words[0];
    }

    if ((v824.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v824.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v824.__r_.__value_.__l.__size_;
    }

    v11 = sub_29D41A270((a2 + 16), v9, size);
    *(v11 + *(*v11 - 24) + 24) = 25;
    sshb_decoder::subtype_name(a1, a3[4], v7, &v820);
    profile_decoder::str(&v821);
    if ((v821.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v12 = &v821;
    }

    else
    {
      v12 = v821.__r_.__value_.__r.__words[0];
    }

    if ((v821.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v13 = HIBYTE(v821.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v13 = v821.__r_.__value_.__l.__size_;
    }

    v14 = sub_29D41A270(v11, v12, v13);
    v15 = sub_29D41A270(v14, ",", 1);
    sub_29D40DC78(&v817, "thread");
    profile_decoder::key(&v819);
    if ((v819.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v16 = &v819;
    }

    else
    {
      v16 = v819.__r_.__value_.__r.__words[0];
    }

    if ((v819.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v17 = HIBYTE(v819.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v17 = v819.__r_.__value_.__l.__size_;
    }

    v18 = sub_29D41A270(v15, v16, v17);
    *(v18 + *(*v18 - 24) + 24) = 10;
    v19 = MEMORY[0x29ED56A70]();
    v20 = sub_29D41A270(v19, ",", 1);
    sub_29D40DC78(&v814, "arg1");
    profile_decoder::key(&v816);
    if ((v816.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v21 = &v816;
    }

    else
    {
      v21 = v816.__r_.__value_.__r.__words[0];
    }

    if ((v816.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v22 = HIBYTE(v816.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v22 = v816.__r_.__value_.__l.__size_;
    }

    v23 = sub_29D41A270(v20, v21, v22);
    *(v23 + *(*v23 - 24) + 24) = 10;
    v24 = MEMORY[0x29ED56A70]();
    v25 = sub_29D41A270(v24, ",", 1);
    sub_29D40DC78(&v811, "arg2");
    profile_decoder::key(&v813);
    if ((v813.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v26 = &v813;
    }

    else
    {
      v26 = v813.__r_.__value_.__r.__words[0];
    }

    if ((v813.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v27 = HIBYTE(v813.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v27 = v813.__r_.__value_.__l.__size_;
    }

    v28 = sub_29D41A270(v25, v26, v27);
    *(v28 + *(*v28 - 24) + 24) = 10;
    v29 = MEMORY[0x29ED56A70]();
    v30 = sub_29D41A270(v29, ",", 1);
    sub_29D40DC78(&v808, "arg3");
    profile_decoder::key(&v810);
    if ((v810.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v31 = &v810;
    }

    else
    {
      v31 = v810.__r_.__value_.__r.__words[0];
    }

    if ((v810.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v32 = HIBYTE(v810.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v32 = v810.__r_.__value_.__l.__size_;
    }

    v33 = sub_29D41A270(v30, v31, v32);
    *(v33 + *(*v33 - 24) + 24) = 10;
    v34 = MEMORY[0x29ED56A70]();
    v35 = sub_29D41A270(v34, ",", 1);
    sub_29D40DC78(&v805, "arg4");
    profile_decoder::key(&__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v37 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v37 = __p.__r_.__value_.__l.__size_;
    }

    v38 = sub_29D41A270(v35, p_p, v37);
    *(v38 + *(*v38 - 24) + 24) = 10;
    v39 = MEMORY[0x29ED56A70]();
    sub_29D41A270(v39, ",", 1);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v806 < 0)
    {
      operator delete(v805);
    }

    if (SHIBYTE(v810.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v810.__r_.__value_.__l.__data_);
    }

    if (v809 < 0)
    {
      operator delete(v808);
    }

    if (SHIBYTE(v813.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v813.__r_.__value_.__l.__data_);
    }

    if (v812 < 0)
    {
      operator delete(v811);
    }

    if (SHIBYTE(v816.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v816.__r_.__value_.__l.__data_);
    }

    if (v815 < 0)
    {
      operator delete(v814);
    }

    if (SHIBYTE(v819.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v819.__r_.__value_.__l.__data_);
    }

    if (v818 < 0)
    {
      operator delete(v817);
    }

    if (SHIBYTE(v821.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v821.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v820.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v820.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v824.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v824.__r_.__value_.__l.__data_);
    }

    if (v823 < 0)
    {
      operator delete(v822);
    }

    if (v7 == 7)
    {
      sub_29D40DC78(&v595, "trace");
      profile_decoder::key(&v824);
      if ((v824.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v40 = &v824;
      }

      else
      {
        v40 = v824.__r_.__value_.__r.__words[0];
      }

      if ((v824.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v41 = HIBYTE(v824.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v41 = v824.__r_.__value_.__l.__size_;
      }

      v42 = sub_29D41A270((a2 + 16), v40, v41);
      *(v42 + *(*v42 - 24) + 24) = 25;
      profile_decoder::find_in_table(&unk_29F34EA28, a3[4], 0x11u, &v594);
      profile_decoder::str(&v821);
      if ((v821.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v43 = &v821;
      }

      else
      {
        v43 = v821.__r_.__value_.__r.__words[0];
      }

      if ((v821.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v44 = HIBYTE(v821.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v44 = v821.__r_.__value_.__l.__size_;
      }

      v45 = sub_29D41A270(v42, v43, v44);
      v46 = sub_29D41A270(v45, ",", 1);
      sub_29D40DC78(&v592, "thread");
      profile_decoder::key(&v819);
      if ((v819.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v47 = &v819;
      }

      else
      {
        v47 = v819.__r_.__value_.__r.__words[0];
      }

      if ((v819.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v48 = HIBYTE(v819.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v48 = v819.__r_.__value_.__l.__size_;
      }

      v49 = sub_29D41A270(v46, v47, v48);
      *(v49 + *(*v49 - 24) + 24) = 10;
      v50 = MEMORY[0x29ED56A70]();
      v51 = sub_29D41A270(v50, ",", 1);
      sub_29D40DC78(&v590, "arg1");
      profile_decoder::key(&v816);
      if ((v816.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v52 = &v816;
      }

      else
      {
        v52 = v816.__r_.__value_.__r.__words[0];
      }

      if ((v816.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v53 = HIBYTE(v816.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v53 = v816.__r_.__value_.__l.__size_;
      }

      v54 = sub_29D41A270(v51, v52, v53);
      *(v54 + *(*v54 - 24) + 24) = 10;
      v55 = MEMORY[0x29ED56A70]();
      v56 = sub_29D41A270(v55, ",", 1);
      sub_29D40DC78(&v588, "arg2");
      profile_decoder::key(&v813);
      if ((v813.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v57 = &v813;
      }

      else
      {
        v57 = v813.__r_.__value_.__r.__words[0];
      }

      if ((v813.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v58 = HIBYTE(v813.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v58 = v813.__r_.__value_.__l.__size_;
      }

      v59 = sub_29D41A270(v56, v57, v58);
      *(v59 + *(*v59 - 24) + 24) = 10;
      v60 = MEMORY[0x29ED56A70]();
      v61 = sub_29D41A270(v60, ",", 1);
      sub_29D40DC78(&v586, "arg3");
      profile_decoder::key(&v810);
      if ((v810.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v62 = &v810;
      }

      else
      {
        v62 = v810.__r_.__value_.__r.__words[0];
      }

      if ((v810.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v63 = HIBYTE(v810.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v63 = v810.__r_.__value_.__l.__size_;
      }

      v64 = sub_29D41A270(v61, v62, v63);
      *(v64 + *(*v64 - 24) + 24) = 10;
      v65 = MEMORY[0x29ED56A70]();
      v66 = sub_29D41A270(v65, ",", 1);
      sub_29D40DC78(&v584, "arg4");
      profile_decoder::key(&__p);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v67 = &__p;
      }

      else
      {
        v67 = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v68 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v68 = __p.__r_.__value_.__l.__size_;
      }

      v69 = sub_29D41A270(v66, v67, v68);
      *(v69 + *(*v69 - 24) + 24) = 10;
      v70 = MEMORY[0x29ED56A70]();
      sub_29D41A270(v70, ",", 1);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (v585 < 0)
      {
        operator delete(v584);
      }

      if (SHIBYTE(v810.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v810.__r_.__value_.__l.__data_);
      }

      if (v587 < 0)
      {
        operator delete(v586);
      }

      if (SHIBYTE(v813.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v813.__r_.__value_.__l.__data_);
      }

      if (v589 < 0)
      {
        operator delete(v588);
      }

      if (SHIBYTE(v816.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v816.__r_.__value_.__l.__data_);
      }

      if (v591 < 0)
      {
        operator delete(v590);
      }

      if (SHIBYTE(v819.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v819.__r_.__value_.__l.__data_);
      }

      if (v593 < 0)
      {
        operator delete(v592);
      }

      if (SHIBYTE(v821.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v821.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v594.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v594.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v824.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v824.__r_.__value_.__l.__data_);
      }

      if (v596 < 0)
      {
        v71 = v595;
LABEL_1162:
        operator delete(v71);
        return;
      }

      return;
    }

LABEL_1163:
    profile_decoder::parse_datatype(a1, a2, a3);
    return;
  }

  v72 = BYTE1(v6);
  if (v8 == 2 && BYTE1(v6) != 2)
  {
    if (BYTE1(v6) == 3)
    {
      sub_29D40DC78(&v803, "status-timestamp");
      profile_decoder::key(&v824);
      if ((v824.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v155 = &v824;
      }

      else
      {
        v155 = v824.__r_.__value_.__r.__words[0];
      }

      if ((v824.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v156 = HIBYTE(v824.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v156 = v824.__r_.__value_.__l.__size_;
      }

      v157 = sub_29D41A270((a2 + 16), v155, v156);
      *(v157 + *(*v157 - 24) + 24) = 10;
      v158 = MEMORY[0x29ED56A70]();
      v159 = sub_29D41A270(v158, ",", 1);
      sub_29D40DC78(&v801, "fingerState");
      profile_decoder::key(&v821);
      if ((v821.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v160 = &v821;
      }

      else
      {
        v160 = v821.__r_.__value_.__r.__words[0];
      }

      if ((v821.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v161 = HIBYTE(v821.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v161 = v821.__r_.__value_.__l.__size_;
      }

      v162 = sub_29D41A270(v159, v160, v161);
      *(v162 + *(*v162 - 24) + 24) = 10;
      v163 = MEMORY[0x29ED56A70]();
      v164 = sub_29D41A270(v163, ",", 1);
      sub_29D40DC78(&v799, "buttonState");
      profile_decoder::key(&v819);
      if ((v819.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v165 = &v819;
      }

      else
      {
        v165 = v819.__r_.__value_.__r.__words[0];
      }

      if ((v819.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v166 = HIBYTE(v819.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v166 = v819.__r_.__value_.__l.__size_;
      }

      v167 = sub_29D41A270(v164, v165, v166);
      *(v167 + *(*v167 - 24) + 24) = 10;
      v168 = MEMORY[0x29ED56A70]();
      v169 = sub_29D41A270(v168, ",", 1);
      sub_29D40DC78(&v797, "buttonProgress");
      profile_decoder::key(&v816);
      if ((v816.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v170 = &v816;
      }

      else
      {
        v170 = v816.__r_.__value_.__r.__words[0];
      }

      if ((v816.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v171 = HIBYTE(v816.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v171 = v816.__r_.__value_.__l.__size_;
      }

      v172 = sub_29D41A270(v169, v170, v171);
      *(v172 + *(*v172 - 24) + 24) = 10;
      v173 = MEMORY[0x29ED56A70]();
      v174 = sub_29D41A270(v173, ",", 1);
      sub_29D40DC78(&v795, "clickCount");
      profile_decoder::key(&v813);
      if ((v813.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v175 = &v813;
      }

      else
      {
        v175 = v813.__r_.__value_.__r.__words[0];
      }

      if ((v813.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v176 = HIBYTE(v813.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v176 = v813.__r_.__value_.__l.__size_;
      }

      v177 = sub_29D41A270(v174, v175, v176);
      *(v177 + *(*v177 - 24) + 24) = 10;
      v178 = MEMORY[0x29ED56A70]();
      v179 = sub_29D41A270(v178, ",", 1);
      sub_29D40DC78(&v793, "clickCountIsTerminal");
      profile_decoder::key(&v810);
      if ((v810.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v180 = &v810;
      }

      else
      {
        v180 = v810.__r_.__value_.__r.__words[0];
      }

      if ((v810.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v181 = HIBYTE(v810.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v181 = v810.__r_.__value_.__l.__size_;
      }

      v182 = sub_29D41A270(v179, v180, v181);
      *(v182 + *(*v182 - 24) + 24) = 10;
      v183 = MEMORY[0x29ED56A70]();
      v184 = sub_29D41A270(v183, ",", 1);
      sub_29D40DC78(&v791, "clickIsLong");
      profile_decoder::key(&__p);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v185 = &__p;
      }

      else
      {
        v185 = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v186 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v186 = __p.__r_.__value_.__l.__size_;
      }

      v187 = sub_29D41A270(v184, v185, v186);
      *(v187 + *(*v187 - 24) + 24) = 10;
      v188 = MEMORY[0x29ED56A70]();
      v189 = sub_29D41A270(v188, ",", 1);
      sub_29D40DC78(&v788, "clickSpeed");
      profile_decoder::key(&v790);
      if ((v790.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v190 = &v790;
      }

      else
      {
        v190 = v790.__r_.__value_.__r.__words[0];
      }

      if ((v790.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v191 = HIBYTE(v790.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v191 = v790.__r_.__value_.__l.__size_;
      }

      v192 = sub_29D41A270(v189, v190, v191);
      *(v192 + *(*v192 - 24) + 24) = 10;
      v193 = MEMORY[0x29ED56A70]();
      sub_29D41A270(v193, ",", 1);
      if (SHIBYTE(v790.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v790.__r_.__value_.__l.__data_);
      }

      if (v789 < 0)
      {
        operator delete(v788);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (v792 < 0)
      {
        operator delete(v791);
      }

      if (SHIBYTE(v810.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v810.__r_.__value_.__l.__data_);
      }

      if (v794 < 0)
      {
        operator delete(v793);
      }

      if (SHIBYTE(v813.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v813.__r_.__value_.__l.__data_);
      }

      if (v796 < 0)
      {
        operator delete(v795);
      }

      if (SHIBYTE(v816.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v816.__r_.__value_.__l.__data_);
      }

      if (v798 < 0)
      {
        operator delete(v797);
      }

      if (SHIBYTE(v819.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v819.__r_.__value_.__l.__data_);
      }

      if (v800 < 0)
      {
        operator delete(v799);
      }

      if (SHIBYTE(v821.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v821.__r_.__value_.__l.__data_);
      }

      if (v802 < 0)
      {
        operator delete(v801);
      }

      if (SHIBYTE(v824.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v824.__r_.__value_.__l.__data_);
      }

      if (v804 < 0)
      {
        v194 = v803;
LABEL_1087:
        operator delete(v194);
        goto LABEL_1088;
      }

      goto LABEL_1088;
    }

LABEL_826:
    profile_decoder::parse_datatype(a1, a2, a3);
    goto LABEL_1088;
  }

  if (v8 != 10)
  {
    goto LABEL_1088;
  }

  v74 = *(a3 + 8);
  if (v74 == 4)
  {
    sub_29D40DC78(&v746, "context-version");
    profile_decoder::key(&v824);
    if ((v824.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v195 = &v824;
    }

    else
    {
      v195 = v824.__r_.__value_.__r.__words[0];
    }

    if ((v824.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v196 = HIBYTE(v824.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v196 = v824.__r_.__value_.__l.__size_;
    }

    v197 = sub_29D41A270((a2 + 16), v195, v196);
    v198 = MEMORY[0x29ED56A70](v197, *(a3 + 8));
    v199 = sub_29D41A270(v198, ",", 1);
    sub_29D40DC78(&v744, "mclk_aop_enabled");
    profile_decoder::key(&v821);
    if ((v821.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v200 = &v821;
    }

    else
    {
      v200 = v821.__r_.__value_.__r.__words[0];
    }

    if ((v821.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v201 = HIBYTE(v821.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v201 = v821.__r_.__value_.__l.__size_;
    }

    v202 = sub_29D41A270(v199, v200, v201);
    v203 = MEMORY[0x29ED56A70](v202, *(a3 + 18));
    v204 = sub_29D41A270(v203, ",", 1);
    sub_29D40DC78(&v742, "mclk_ap_enabled");
    profile_decoder::key(&v819);
    if ((v819.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v205 = &v819;
    }

    else
    {
      v205 = v819.__r_.__value_.__r.__words[0];
    }

    if ((v819.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v206 = HIBYTE(v819.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v206 = v819.__r_.__value_.__l.__size_;
    }

    v207 = sub_29D41A270(v204, v205, v206);
    v208 = MEMORY[0x29ED56A70](v207, *(a3 + 19));
    v209 = sub_29D41A270(v208, ",", 1);
    sub_29D40DC78(&v740, "maggie_aop_enabled");
    profile_decoder::key(&v816);
    if ((v816.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v210 = &v816;
    }

    else
    {
      v210 = v816.__r_.__value_.__r.__words[0];
    }

    if ((v816.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v211 = HIBYTE(v816.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v211 = v816.__r_.__value_.__l.__size_;
    }

    v212 = sub_29D41A270(v209, v210, v211);
    v213 = MEMORY[0x29ED56A70](v212, *(a3 + 20));
    v214 = sub_29D41A270(v213, ",", 1);
    sub_29D40DC78(&v738, "maggie_ap_enabled");
    profile_decoder::key(&v813);
    if ((v813.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v215 = &v813;
    }

    else
    {
      v215 = v813.__r_.__value_.__r.__words[0];
    }

    if ((v813.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v216 = HIBYTE(v813.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v216 = v813.__r_.__value_.__l.__size_;
    }

    v217 = sub_29D41A270(v214, v215, v216);
    v218 = MEMORY[0x29ED56A70](v217, *(a3 + 21));
    v219 = sub_29D41A270(v218, ",", 1);
    sub_29D40DC78(&v736, "maggieBusy");
    profile_decoder::key(&v810);
    if ((v810.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v220 = &v810;
    }

    else
    {
      v220 = v810.__r_.__value_.__r.__words[0];
    }

    if ((v810.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v221 = HIBYTE(v810.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v221 = v810.__r_.__value_.__l.__size_;
    }

    v222 = sub_29D41A270(v219, v220, v221);
    v223 = MEMORY[0x29ED56A70](v222, *(a3 + 22));
    v224 = sub_29D41A270(v223, ",", 1);
    sub_29D40DC78(&v734, "enableARC");
    profile_decoder::key(&__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v225 = &__p;
    }

    else
    {
      v225 = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v226 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v226 = __p.__r_.__value_.__l.__size_;
    }

    v227 = sub_29D41A270(v224, v225, v226);
    v228 = MEMORY[0x29ED56A70](v227, *(a3 + 23));
    v229 = sub_29D41A270(v228, ",", 1);
    sub_29D40DC78(&v732, "enableSpkr");
    profile_decoder::key(&v790);
    if ((v790.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v230 = &v790;
    }

    else
    {
      v230 = v790.__r_.__value_.__r.__words[0];
    }

    if ((v790.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v231 = HIBYTE(v790.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v231 = v790.__r_.__value_.__l.__size_;
    }

    v232 = sub_29D41A270(v229, v230, v231);
    v233 = MEMORY[0x29ED56A70](v232, *(a3 + 24));
    v234 = sub_29D41A270(v233, ",", 1);
    sub_29D40DC78(&v730, "mclk_on");
    profile_decoder::key(&v771);
    if ((v771.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v235 = &v771;
    }

    else
    {
      v235 = v771.__r_.__value_.__r.__words[0];
    }

    if ((v771.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v236 = HIBYTE(v771.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v236 = v771.__r_.__value_.__l.__size_;
    }

    v237 = sub_29D41A270(v234, v235, v236);
    v238 = MEMORY[0x29ED56A70](v237, *(a3 + 25));
    v239 = sub_29D41A270(v238, ",", 1);
    sub_29D40DC78(&v728, "maggie_on");
    profile_decoder::key(&v768);
    if ((v768.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v240 = &v768;
    }

    else
    {
      v240 = v768.__r_.__value_.__r.__words[0];
    }

    if ((v768.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v241 = HIBYTE(v768.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v241 = v768.__r_.__value_.__l.__size_;
    }

    v242 = sub_29D41A270(v239, v240, v241);
    v243 = MEMORY[0x29ED56A70](v242, *(a3 + 26));
    v244 = sub_29D41A270(v243, ",", 1);
    sub_29D40DC78(&v726, "maggiePending");
    profile_decoder::key(&v765);
    if ((v765.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v245 = &v765;
    }

    else
    {
      v245 = v765.__r_.__value_.__r.__words[0];
    }

    if ((v765.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v246 = HIBYTE(v765.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v246 = v765.__r_.__value_.__l.__size_;
    }

    v247 = sub_29D41A270(v244, v245, v246);
    v248 = MEMORY[0x29ED56A70](v247, *(a3 + 27));
    v249 = sub_29D41A270(v248, ",", 1);
    sub_29D40DC78(&v724, "ampsEnabling");
    profile_decoder::key(&v762);
    if ((v762.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v250 = &v762;
    }

    else
    {
      v250 = v762.__r_.__value_.__r.__words[0];
    }

    if ((v762.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v251 = HIBYTE(v762.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v251 = v762.__r_.__value_.__l.__size_;
    }

    v252 = sub_29D41A270(v249, v250, v251);
    v253 = MEMORY[0x29ED56A70](v252, *(a3 + 28));
    v254 = sub_29D41A270(v253, ",", 1);
    sub_29D40DC78(&v722, "mesa_ready");
    profile_decoder::key(&v759);
    if ((v759.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v255 = &v759;
    }

    else
    {
      v255 = v759.__r_.__value_.__r.__words[0];
    }

    if ((v759.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v256 = HIBYTE(v759.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v256 = v759.__r_.__value_.__l.__size_;
    }

    v257 = sub_29D41A270(v254, v255, v256);
    v258 = MEMORY[0x29ED56A70](v257, *(a3 + 29));
    v259 = sub_29D41A270(v258, ",", 1);
    sub_29D40DC78(&v720, "ampsPrewarming");
    profile_decoder::key(&v756);
    if ((v756.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v260 = &v756;
    }

    else
    {
      v260 = v756.__r_.__value_.__r.__words[0];
    }

    if ((v756.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v261 = HIBYTE(v756.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v261 = v756.__r_.__value_.__l.__size_;
    }

    v262 = sub_29D41A270(v259, v260, v261);
    v263 = MEMORY[0x29ED56A70](v262, *(a3 + 30));
    v264 = sub_29D41A270(v263, ",", 1);
    sub_29D40DC78(&v718, "ampsDisabling");
    profile_decoder::key(&v753);
    if ((v753.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v265 = &v753;
    }

    else
    {
      v265 = v753.__r_.__value_.__r.__words[0];
    }

    if ((v753.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v266 = HIBYTE(v753.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v266 = v753.__r_.__value_.__l.__size_;
    }

    v267 = sub_29D41A270(v264, v265, v266);
    v268 = MEMORY[0x29ED56A70](v267, *(a3 + 31));
    v269 = sub_29D41A270(v268, ",", 1);
    sub_29D40DC78(&v716, "ampsPending");
    profile_decoder::key(&v750);
    if ((v750.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v270 = &v750;
    }

    else
    {
      v270 = v750.__r_.__value_.__r.__words[0];
    }

    if ((v750.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v271 = HIBYTE(v750.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v271 = v750.__r_.__value_.__l.__size_;
    }

    v272 = sub_29D41A270(v269, v270, v271);
    v273 = MEMORY[0x29ED56A70](v272, *(a3 + 32));
    v274 = sub_29D41A270(v273, ",", 1);
    sub_29D40DC78(&v713, "clickState");
    profile_decoder::key(&v715);
    if ((v715.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v275 = &v715;
    }

    else
    {
      v275 = v715.__r_.__value_.__r.__words[0];
    }

    if ((v715.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v276 = HIBYTE(v715.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v276 = v715.__r_.__value_.__l.__size_;
    }

    v277 = sub_29D41A270(v274, v275, v276);
    v278 = MEMORY[0x29ED56A70](v277, *(a3 + 33));
    v279 = sub_29D41A270(v278, ",", 1);
    sub_29D40DC78(&v710, "clickSpeed");
    profile_decoder::key(&v712);
    if ((v712.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v280 = &v712;
    }

    else
    {
      v280 = v712.__r_.__value_.__r.__words[0];
    }

    if ((v712.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v281 = HIBYTE(v712.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v281 = v712.__r_.__value_.__l.__size_;
    }

    v282 = sub_29D41A270(v279, v280, v281);
    v283 = MEMORY[0x29ED56A70](v282, *(a3 + 34));
    v284 = sub_29D41A270(v283, ",", 1);
    sub_29D40DC78(&v707, "test_mode");
    profile_decoder::key(&v709);
    if ((v709.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v285 = &v709;
    }

    else
    {
      v285 = v709.__r_.__value_.__r.__words[0];
    }

    if ((v709.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v286 = HIBYTE(v709.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v286 = v709.__r_.__value_.__l.__size_;
    }

    v287 = sub_29D41A270(v284, v285, v286);
    v288 = MEMORY[0x29ED56A70](v287, *(a3 + 35));
    v289 = sub_29D41A270(v288, ",", 1);
    sub_29D40DC78(&v704, "cl_enable");
    profile_decoder::key(&v706);
    if ((v706.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v290 = &v706;
    }

    else
    {
      v290 = v706.__r_.__value_.__r.__words[0];
    }

    if ((v706.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v291 = HIBYTE(v706.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v291 = v706.__r_.__value_.__l.__size_;
    }

    v292 = sub_29D41A270(v289, v290, v291);
    v293 = MEMORY[0x29ED56A70](v292, *(a3 + 36));
    v294 = sub_29D41A270(v293, ",", 1);
    sub_29D40DC78(&v701, "cl_aop_enable");
    profile_decoder::key(&v703);
    if ((v703.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v295 = &v703;
    }

    else
    {
      v295 = v703.__r_.__value_.__r.__words[0];
    }

    if ((v703.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v296 = HIBYTE(v703.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v296 = v703.__r_.__value_.__l.__size_;
    }

    v297 = sub_29D41A270(v294, v295, v296);
    v298 = MEMORY[0x29ED56A70](v297, *(a3 + 37));
    v299 = sub_29D41A270(v298, ",", 1);
    sub_29D40DC78(&v698, "cl_ap_enable");
    profile_decoder::key(&v700);
    if ((v700.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v300 = &v700;
    }

    else
    {
      v300 = v700.__r_.__value_.__r.__words[0];
    }

    if ((v700.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v301 = HIBYTE(v700.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v301 = v700.__r_.__value_.__l.__size_;
    }

    v302 = sub_29D41A270(v299, v300, v301);
    v303 = MEMORY[0x29ED56A70](v302, *(a3 + 38));
    v304 = sub_29D41A270(v303, ",", 1);
    sub_29D40DC78(&v695, "maggie_ready");
    profile_decoder::key(&v697);
    if ((v697.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v305 = &v697;
    }

    else
    {
      v305 = v697.__r_.__value_.__r.__words[0];
    }

    if ((v697.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v306 = HIBYTE(v697.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v306 = v697.__r_.__value_.__l.__size_;
    }

    v307 = sub_29D41A270(v304, v305, v306);
    v308 = MEMORY[0x29ED56A70](v307, *(a3 + 39));
    v309 = sub_29D41A270(v308, ",", 1);
    sub_29D40DC78(&v692, "apState0");
    profile_decoder::key(&v694);
    if ((v694.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v310 = &v694;
    }

    else
    {
      v310 = v694.__r_.__value_.__r.__words[0];
    }

    if ((v694.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v311 = HIBYTE(v694.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v311 = v694.__r_.__value_.__l.__size_;
    }

    v312 = sub_29D41A270(v309, v310, v311);
    v313 = MEMORY[0x29ED56A70](v312, *(a3 + 40));
    v314 = sub_29D41A270(v313, ",", 1);
    sub_29D40DC78(&v689, "apState1");
    profile_decoder::key(&v691);
    if ((v691.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v315 = &v691;
    }

    else
    {
      v315 = v691.__r_.__value_.__r.__words[0];
    }

    if ((v691.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v316 = HIBYTE(v691.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v316 = v691.__r_.__value_.__l.__size_;
    }

    v317 = sub_29D41A270(v314, v315, v316);
    v318 = MEMORY[0x29ED56A70](v317, *(a3 + 41));
    v319 = sub_29D41A270(v318, ",", 1);
    sub_29D40DC78(&v686, "aopState0");
    profile_decoder::key(&v688);
    if ((v688.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v320 = &v688;
    }

    else
    {
      v320 = v688.__r_.__value_.__r.__words[0];
    }

    if ((v688.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v321 = HIBYTE(v688.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v321 = v688.__r_.__value_.__l.__size_;
    }

    v322 = sub_29D41A270(v319, v320, v321);
    v323 = MEMORY[0x29ED56A70](v322, *(a3 + 42));
    v324 = sub_29D41A270(v323, ",", 1);
    sub_29D40DC78(&v683, "aopState1");
    profile_decoder::key(&v685);
    if ((v685.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v325 = &v685;
    }

    else
    {
      v325 = v685.__r_.__value_.__r.__words[0];
    }

    if ((v685.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v326 = HIBYTE(v685.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v326 = v685.__r_.__value_.__l.__size_;
    }

    v327 = sub_29D41A270(v324, v325, v326);
    v328 = MEMORY[0x29ED56A70](v327, *(a3 + 43));
    v329 = sub_29D41A270(v328, ",", 1);
    sub_29D40DC78(&v680, "state0");
    profile_decoder::key(&v682);
    if ((v682.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v330 = &v682;
    }

    else
    {
      v330 = v682.__r_.__value_.__r.__words[0];
    }

    if ((v682.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v331 = HIBYTE(v682.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v331 = v682.__r_.__value_.__l.__size_;
    }

    v332 = sub_29D41A270(v329, v330, v331);
    v333 = MEMORY[0x29ED56A70](v332, *(a3 + 44));
    v334 = sub_29D41A270(v333, ",", 1);
    sub_29D40DC78(&v677, "state1");
    profile_decoder::key(&v679);
    if ((v679.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v335 = &v679;
    }

    else
    {
      v335 = v679.__r_.__value_.__r.__words[0];
    }

    if ((v679.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v336 = HIBYTE(v679.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v336 = v679.__r_.__value_.__l.__size_;
    }

    v337 = sub_29D41A270(v334, v335, v336);
    v338 = MEMORY[0x29ED56A70](v337, *(a3 + 45));
    sub_29D41A270(v338, ",", 1);
    if (SHIBYTE(v679.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v679.__r_.__value_.__l.__data_);
    }

    if (v678 < 0)
    {
      operator delete(v677);
    }

    if (SHIBYTE(v682.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v682.__r_.__value_.__l.__data_);
    }

    if (v681 < 0)
    {
      operator delete(v680);
    }

    if (SHIBYTE(v685.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v685.__r_.__value_.__l.__data_);
    }

    if (v684 < 0)
    {
      operator delete(v683);
    }

    if (SHIBYTE(v688.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v688.__r_.__value_.__l.__data_);
    }

    if (v687 < 0)
    {
      operator delete(v686);
    }

    if (SHIBYTE(v691.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v691.__r_.__value_.__l.__data_);
    }

    if (v690 < 0)
    {
      operator delete(v689);
    }

    if (SHIBYTE(v694.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v694.__r_.__value_.__l.__data_);
    }

    if (v693 < 0)
    {
      operator delete(v692);
    }

    if (SHIBYTE(v697.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v697.__r_.__value_.__l.__data_);
    }

    if (v696 < 0)
    {
      operator delete(v695);
    }

    if (SHIBYTE(v700.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v700.__r_.__value_.__l.__data_);
    }

    if (v699 < 0)
    {
      operator delete(v698);
    }

    if (SHIBYTE(v703.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v703.__r_.__value_.__l.__data_);
    }

    if (v702 < 0)
    {
      operator delete(v701);
    }

    if (SHIBYTE(v706.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v706.__r_.__value_.__l.__data_);
    }

    if (v705 < 0)
    {
      operator delete(v704);
    }

    if (SHIBYTE(v709.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v709.__r_.__value_.__l.__data_);
    }

    if (v708 < 0)
    {
      operator delete(v707);
    }

    if (SHIBYTE(v712.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v712.__r_.__value_.__l.__data_);
    }

    if (v711 < 0)
    {
      operator delete(v710);
    }

    if (SHIBYTE(v715.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v715.__r_.__value_.__l.__data_);
    }

    if (v714 < 0)
    {
      operator delete(v713);
    }

    if (SHIBYTE(v750.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v750.__r_.__value_.__l.__data_);
    }

    if (v717 < 0)
    {
      operator delete(v716);
    }

    if (SHIBYTE(v753.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v753.__r_.__value_.__l.__data_);
    }

    if (v719 < 0)
    {
      operator delete(v718);
    }

    if (SHIBYTE(v756.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v756.__r_.__value_.__l.__data_);
    }

    if (v721 < 0)
    {
      operator delete(v720);
    }

    if (SHIBYTE(v759.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v759.__r_.__value_.__l.__data_);
    }

    if (v723 < 0)
    {
      operator delete(v722);
    }

    if (SHIBYTE(v762.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v762.__r_.__value_.__l.__data_);
    }

    if (v725 < 0)
    {
      operator delete(v724);
    }

    if (SHIBYTE(v765.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v765.__r_.__value_.__l.__data_);
    }

    if (v727 < 0)
    {
      operator delete(v726);
    }

    if (SHIBYTE(v768.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v768.__r_.__value_.__l.__data_);
    }

    if (v729 < 0)
    {
      operator delete(v728);
    }

    if (SHIBYTE(v771.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v771.__r_.__value_.__l.__data_);
    }

    if (v731 < 0)
    {
      operator delete(v730);
    }

    if (SHIBYTE(v790.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v790.__r_.__value_.__l.__data_);
    }

    if (v733 < 0)
    {
      operator delete(v732);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v735 < 0)
    {
      operator delete(v734);
    }

    if (SHIBYTE(v810.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v810.__r_.__value_.__l.__data_);
    }

    if (v737 < 0)
    {
      operator delete(v736);
    }

    if (SHIBYTE(v813.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v813.__r_.__value_.__l.__data_);
    }

    if (v739 < 0)
    {
      operator delete(v738);
    }

    if (SHIBYTE(v816.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v816.__r_.__value_.__l.__data_);
    }

    if (v741 < 0)
    {
      operator delete(v740);
    }

    if (SHIBYTE(v819.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v819.__r_.__value_.__l.__data_);
    }

    if (v743 < 0)
    {
      operator delete(v742);
    }

    if (SHIBYTE(v821.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v821.__r_.__value_.__l.__data_);
    }

    if (v745 < 0)
    {
      operator delete(v744);
    }

    if (SHIBYTE(v824.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v824.__r_.__value_.__l.__data_);
    }

    if ((v747 & 0x80000000) == 0)
    {
      goto LABEL_683;
    }

    v154 = v746;
    goto LABEL_682;
  }

  if (v74 != 3)
  {
    goto LABEL_684;
  }

  sub_29D40DC78(&v786, "context-version");
  profile_decoder::key(&v824);
  if ((v824.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v75 = &v824;
  }

  else
  {
    v75 = v824.__r_.__value_.__r.__words[0];
  }

  if ((v824.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v76 = HIBYTE(v824.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v76 = v824.__r_.__value_.__l.__size_;
  }

  v77 = sub_29D41A270((a2 + 16), v75, v76);
  v78 = MEMORY[0x29ED56A70](v77, *(a3 + 8));
  v79 = sub_29D41A270(v78, ",", 1);
  sub_29D40DC78(&v784, "currentContext0");
  profile_decoder::key(&v821);
  if ((v821.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v80 = &v821;
  }

  else
  {
    v80 = v821.__r_.__value_.__r.__words[0];
  }

  if ((v821.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v81 = HIBYTE(v821.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v81 = v821.__r_.__value_.__l.__size_;
  }

  v82 = sub_29D41A270(v79, v80, v81);
  v83 = MEMORY[0x29ED56A70](v82, *(a3 + 18));
  v84 = sub_29D41A270(v83, ",", 1);
  sub_29D40DC78(&v782, "currentContext1");
  profile_decoder::key(&v819);
  if ((v819.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v85 = &v819;
  }

  else
  {
    v85 = v819.__r_.__value_.__r.__words[0];
  }

  if ((v819.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v86 = HIBYTE(v819.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v86 = v819.__r_.__value_.__l.__size_;
  }

  v87 = sub_29D41A270(v84, v85, v86);
  v88 = MEMORY[0x29ED56A70](v87, *(a3 + 19));
  v89 = sub_29D41A270(v88, ",", 1);
  sub_29D40DC78(&v780, "ampsEnabled");
  profile_decoder::key(&v816);
  if ((v816.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v90 = &v816;
  }

  else
  {
    v90 = v816.__r_.__value_.__r.__words[0];
  }

  if ((v816.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v91 = HIBYTE(v816.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v91 = v816.__r_.__value_.__l.__size_;
  }

  v92 = sub_29D41A270(v89, v90, v91);
  v93 = MEMORY[0x29ED56A70](v92, *(a3 + 20));
  v94 = sub_29D41A270(v93, ",", 1);
  sub_29D40DC78(&v778, "enabled");
  profile_decoder::key(&v813);
  if ((v813.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v95 = &v813;
  }

  else
  {
    v95 = v813.__r_.__value_.__r.__words[0];
  }

  if ((v813.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v96 = HIBYTE(v813.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v96 = v813.__r_.__value_.__l.__size_;
  }

  v97 = sub_29D41A270(v94, v95, v96);
  v98 = MEMORY[0x29ED56A70](v97, *(a3 + 21));
  v99 = sub_29D41A270(v98, ",", 1);
  sub_29D40DC78(&v776, "mode");
  profile_decoder::key(&v810);
  if ((v810.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v100 = &v810;
  }

  else
  {
    v100 = v810.__r_.__value_.__r.__words[0];
  }

  if ((v810.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v101 = HIBYTE(v810.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v101 = v810.__r_.__value_.__l.__size_;
  }

  v102 = sub_29D41A270(v99, v100, v101);
  v103 = MEMORY[0x29ED56A70](v102, *(a3 + 22));
  v104 = sub_29D41A270(v103, ",", 1);
  sub_29D40DC78(&v774, "scan_time");
  profile_decoder::key(&__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v105 = &__p;
  }

  else
  {
    v105 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v106 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v106 = __p.__r_.__value_.__l.__size_;
  }

  v107 = sub_29D41A270(v104, v105, v106);
  v108 = MEMORY[0x29ED56A70](v107, *(a3 + 26));
  v109 = sub_29D41A270(v108, ",", 1);
  sub_29D40DC78(&v772, "active_scan_interval");
  profile_decoder::key(&v790);
  if ((v790.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v110 = &v790;
  }

  else
  {
    v110 = v790.__r_.__value_.__r.__words[0];
  }

  if ((v790.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v111 = HIBYTE(v790.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v111 = v790.__r_.__value_.__l.__size_;
  }

  v112 = sub_29D41A270(v109, v110, v111);
  v113 = MEMORY[0x29ED56A70](v112, *(a3 + 30));
  v114 = sub_29D41A270(v113, ",", 1);
  sub_29D40DC78(&v769, "background_scan_interval");
  profile_decoder::key(&v771);
  if ((v771.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v115 = &v771;
  }

  else
  {
    v115 = v771.__r_.__value_.__r.__words[0];
  }

  if ((v771.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v116 = HIBYTE(v771.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v116 = v771.__r_.__value_.__l.__size_;
  }

  v117 = sub_29D41A270(v114, v115, v116);
  v118 = MEMORY[0x29ED56A70](v117, *(a3 + 34));
  v119 = sub_29D41A270(v118, ",", 1);
  sub_29D40DC78(&v766, "fingerDetect");
  profile_decoder::key(&v768);
  if ((v768.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v120 = &v768;
  }

  else
  {
    v120 = v768.__r_.__value_.__r.__words[0];
  }

  if ((v768.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v121 = HIBYTE(v768.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v121 = v768.__r_.__value_.__l.__size_;
  }

  v122 = sub_29D41A270(v119, v120, v121);
  v123 = MEMORY[0x29ED56A70](v122, *(a3 + 38));
  v124 = sub_29D41A270(v123, ",", 1);
  sub_29D40DC78(&v763, "buttonState");
  profile_decoder::key(&v765);
  if ((v765.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v125 = &v765;
  }

  else
  {
    v125 = v765.__r_.__value_.__r.__words[0];
  }

  if ((v765.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v126 = HIBYTE(v765.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v126 = v765.__r_.__value_.__l.__size_;
  }

  v127 = sub_29D41A270(v124, v125, v126);
  v128 = MEMORY[0x29ED56A70](v127, *(a3 + 39));
  v129 = sub_29D41A270(v128, ",", 1);
  sub_29D40DC78(&v760, "pressCount");
  profile_decoder::key(&v762);
  if ((v762.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v130 = &v762;
  }

  else
  {
    v130 = v762.__r_.__value_.__r.__words[0];
  }

  if ((v762.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v131 = HIBYTE(v762.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v131 = v762.__r_.__value_.__l.__size_;
  }

  v132 = sub_29D41A270(v129, v130, v131);
  v133 = MEMORY[0x29ED56A70](v132, *(a3 + 40));
  v134 = sub_29D41A270(v133, ",", 1);
  sub_29D40DC78(&v757, "longPress");
  profile_decoder::key(&v759);
  if ((v759.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v135 = &v759;
  }

  else
  {
    v135 = v759.__r_.__value_.__r.__words[0];
  }

  if ((v759.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v136 = HIBYTE(v759.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v136 = v759.__r_.__value_.__l.__size_;
  }

  v137 = sub_29D41A270(v134, v135, v136);
  v138 = MEMORY[0x29ED56A70](v137, *(a3 + 41));
  v139 = sub_29D41A270(v138, ",", 1);
  sub_29D40DC78(&v754, "terminalEvent");
  profile_decoder::key(&v756);
  if ((v756.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v140 = &v756;
  }

  else
  {
    v140 = v756.__r_.__value_.__r.__words[0];
  }

  if ((v756.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v141 = HIBYTE(v756.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v141 = v756.__r_.__value_.__l.__size_;
  }

  v142 = sub_29D41A270(v139, v140, v141);
  v143 = MEMORY[0x29ED56A70](v142, *(a3 + 42));
  v144 = sub_29D41A270(v143, ",", 1);
  sub_29D40DC78(&v751, "speed");
  profile_decoder::key(&v753);
  if ((v753.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v145 = &v753;
  }

  else
  {
    v145 = v753.__r_.__value_.__r.__words[0];
  }

  if ((v753.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v146 = HIBYTE(v753.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v146 = v753.__r_.__value_.__l.__size_;
  }

  v147 = sub_29D41A270(v144, v145, v146);
  v148 = MEMORY[0x29ED56A70](v147, *(a3 + 43));
  v149 = sub_29D41A270(v148, ",", 1);
  sub_29D40DC78(&v748, "stage");
  profile_decoder::key(&v750);
  if ((v750.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v150 = &v750;
  }

  else
  {
    v150 = v750.__r_.__value_.__r.__words[0];
  }

  if ((v750.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v151 = HIBYTE(v750.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v151 = v750.__r_.__value_.__l.__size_;
  }

  v152 = sub_29D41A270(v149, v150, v151);
  v153 = MEMORY[0x29ED56A70](v152, *(a3 + 44));
  sub_29D41A270(v153, ",", 1);
  if (SHIBYTE(v750.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v750.__r_.__value_.__l.__data_);
  }

  if (v749 < 0)
  {
    operator delete(v748);
  }

  if (SHIBYTE(v753.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v753.__r_.__value_.__l.__data_);
  }

  if (v752 < 0)
  {
    operator delete(v751);
  }

  if (SHIBYTE(v756.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v756.__r_.__value_.__l.__data_);
  }

  if (v755 < 0)
  {
    operator delete(v754);
  }

  if (SHIBYTE(v759.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v759.__r_.__value_.__l.__data_);
  }

  if (v758 < 0)
  {
    operator delete(v757);
  }

  if (SHIBYTE(v762.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v762.__r_.__value_.__l.__data_);
  }

  if (v761 < 0)
  {
    operator delete(v760);
  }

  if (SHIBYTE(v765.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v765.__r_.__value_.__l.__data_);
  }

  if (v764 < 0)
  {
    operator delete(v763);
  }

  if (SHIBYTE(v768.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v768.__r_.__value_.__l.__data_);
  }

  if (v767 < 0)
  {
    operator delete(v766);
  }

  if (SHIBYTE(v771.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v771.__r_.__value_.__l.__data_);
  }

  if (v770 < 0)
  {
    operator delete(v769);
  }

  if (SHIBYTE(v790.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v790.__r_.__value_.__l.__data_);
  }

  if (v773 < 0)
  {
    operator delete(v772);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v775 < 0)
  {
    operator delete(v774);
  }

  if (SHIBYTE(v810.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v810.__r_.__value_.__l.__data_);
  }

  if (v777 < 0)
  {
    operator delete(v776);
  }

  if (SHIBYTE(v813.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v813.__r_.__value_.__l.__data_);
  }

  if (v779 < 0)
  {
    operator delete(v778);
  }

  if (SHIBYTE(v816.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v816.__r_.__value_.__l.__data_);
  }

  if (v781 < 0)
  {
    operator delete(v780);
  }

  if (SHIBYTE(v819.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v819.__r_.__value_.__l.__data_);
  }

  if (v783 < 0)
  {
    operator delete(v782);
  }

  if (SHIBYTE(v821.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v821.__r_.__value_.__l.__data_);
  }

  if (v785 < 0)
  {
    operator delete(v784);
  }

  if (SHIBYTE(v824.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v824.__r_.__value_.__l.__data_);
  }

  if (v787 < 0)
  {
    v154 = v786;
LABEL_682:
    operator delete(v154);
  }

LABEL_683:
  v74 = *(a3 + 8);
LABEL_684:
  if (v74 == 7)
  {
    sub_29D40DC78(&v647, "context-version");
    profile_decoder::key(&v824);
    if ((v824.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v408 = &v824;
    }

    else
    {
      v408 = v824.__r_.__value_.__r.__words[0];
    }

    if ((v824.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v409 = HIBYTE(v824.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v409 = v824.__r_.__value_.__l.__size_;
    }

    v410 = sub_29D41A270((a2 + 16), v408, v409);
    v411 = MEMORY[0x29ED56A70](v410, *(a3 + 8));
    v412 = sub_29D41A270(v411, ",", 1);
    sub_29D40DC78(&v645, "mclk_aop_enabled");
    profile_decoder::key(&v821);
    if ((v821.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v413 = &v821;
    }

    else
    {
      v413 = v821.__r_.__value_.__r.__words[0];
    }

    if ((v821.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v414 = HIBYTE(v821.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v414 = v821.__r_.__value_.__l.__size_;
    }

    v415 = sub_29D41A270(v412, v413, v414);
    v416 = MEMORY[0x29ED56A70](v415, *(a3 + 18));
    v417 = sub_29D41A270(v416, ",", 1);
    sub_29D40DC78(&v643, "mclk_ap_enabled");
    profile_decoder::key(&v819);
    if ((v819.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v418 = &v819;
    }

    else
    {
      v418 = v819.__r_.__value_.__r.__words[0];
    }

    if ((v819.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v419 = HIBYTE(v819.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v419 = v819.__r_.__value_.__l.__size_;
    }

    v420 = sub_29D41A270(v417, v418, v419);
    v421 = MEMORY[0x29ED56A70](v420, *(a3 + 19));
    v422 = sub_29D41A270(v421, ",", 1);
    sub_29D40DC78(&v641, "maggie_aop_enabled");
    profile_decoder::key(&v816);
    if ((v816.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v423 = &v816;
    }

    else
    {
      v423 = v816.__r_.__value_.__r.__words[0];
    }

    if ((v816.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v424 = HIBYTE(v816.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v424 = v816.__r_.__value_.__l.__size_;
    }

    v425 = sub_29D41A270(v422, v423, v424);
    v426 = MEMORY[0x29ED56A70](v425, *(a3 + 20));
    v427 = sub_29D41A270(v426, ",", 1);
    sub_29D40DC78(&v639, "maggie_ap_enabled");
    profile_decoder::key(&v813);
    if ((v813.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v428 = &v813;
    }

    else
    {
      v428 = v813.__r_.__value_.__r.__words[0];
    }

    if ((v813.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v429 = HIBYTE(v813.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v429 = v813.__r_.__value_.__l.__size_;
    }

    v430 = sub_29D41A270(v427, v428, v429);
    v431 = MEMORY[0x29ED56A70](v430, *(a3 + 21));
    v432 = sub_29D41A270(v431, ",", 1);
    sub_29D40DC78(&v637, "maggieBusy");
    profile_decoder::key(&v810);
    if ((v810.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v433 = &v810;
    }

    else
    {
      v433 = v810.__r_.__value_.__r.__words[0];
    }

    if ((v810.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v434 = HIBYTE(v810.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v434 = v810.__r_.__value_.__l.__size_;
    }

    v435 = sub_29D41A270(v432, v433, v434);
    v436 = MEMORY[0x29ED56A70](v435, *(a3 + 22));
    v437 = sub_29D41A270(v436, ",", 1);
    sub_29D40DC78(&v635, "enableARC");
    profile_decoder::key(&__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v438 = &__p;
    }

    else
    {
      v438 = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v439 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v439 = __p.__r_.__value_.__l.__size_;
    }

    v440 = sub_29D41A270(v437, v438, v439);
    v441 = MEMORY[0x29ED56A70](v440, *(a3 + 23));
    v442 = sub_29D41A270(v441, ",", 1);
    sub_29D40DC78(&v633, "enableSpkr");
    profile_decoder::key(&v790);
    if ((v790.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v443 = &v790;
    }

    else
    {
      v443 = v790.__r_.__value_.__r.__words[0];
    }

    if ((v790.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v444 = HIBYTE(v790.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v444 = v790.__r_.__value_.__l.__size_;
    }

    v445 = sub_29D41A270(v442, v443, v444);
    v446 = MEMORY[0x29ED56A70](v445, *(a3 + 24));
    v447 = sub_29D41A270(v446, ",", 1);
    sub_29D40DC78(&v631, "mclk_on");
    profile_decoder::key(&v771);
    if ((v771.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v448 = &v771;
    }

    else
    {
      v448 = v771.__r_.__value_.__r.__words[0];
    }

    if ((v771.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v449 = HIBYTE(v771.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v449 = v771.__r_.__value_.__l.__size_;
    }

    v450 = sub_29D41A270(v447, v448, v449);
    v451 = MEMORY[0x29ED56A70](v450, *(a3 + 25));
    v452 = sub_29D41A270(v451, ",", 1);
    sub_29D40DC78(&v629, "maggie_on");
    profile_decoder::key(&v768);
    if ((v768.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v453 = &v768;
    }

    else
    {
      v453 = v768.__r_.__value_.__r.__words[0];
    }

    if ((v768.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v454 = HIBYTE(v768.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v454 = v768.__r_.__value_.__l.__size_;
    }

    v455 = sub_29D41A270(v452, v453, v454);
    v456 = MEMORY[0x29ED56A70](v455, *(a3 + 26));
    v457 = sub_29D41A270(v456, ",", 1);
    sub_29D40DC78(&v627, "maggiePending");
    profile_decoder::key(&v765);
    if ((v765.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v458 = &v765;
    }

    else
    {
      v458 = v765.__r_.__value_.__r.__words[0];
    }

    if ((v765.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v459 = HIBYTE(v765.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v459 = v765.__r_.__value_.__l.__size_;
    }

    v460 = sub_29D41A270(v457, v458, v459);
    v461 = MEMORY[0x29ED56A70](v460, *(a3 + 27));
    v462 = sub_29D41A270(v461, ",", 1);
    sub_29D40DC78(&v625, "mesa_ready");
    profile_decoder::key(&v762);
    if ((v762.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v463 = &v762;
    }

    else
    {
      v463 = v762.__r_.__value_.__r.__words[0];
    }

    if ((v762.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v464 = HIBYTE(v762.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v464 = v762.__r_.__value_.__l.__size_;
    }

    v465 = sub_29D41A270(v462, v463, v464);
    v466 = MEMORY[0x29ED56A70](v465, *(a3 + 28));
    v467 = sub_29D41A270(v466, ",", 1);
    sub_29D40DC78(&v623, "ampsState");
    profile_decoder::key(&v759);
    if ((v759.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v468 = &v759;
    }

    else
    {
      v468 = v759.__r_.__value_.__r.__words[0];
    }

    if ((v759.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v469 = HIBYTE(v759.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v469 = v759.__r_.__value_.__l.__size_;
    }

    v470 = sub_29D41A270(v467, v468, v469);
    v471 = MEMORY[0x29ED56A70](v470, *(a3 + 29));
    v472 = sub_29D41A270(v471, ",", 1);
    sub_29D40DC78(&v621, "clickState");
    profile_decoder::key(&v756);
    if ((v756.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v473 = &v756;
    }

    else
    {
      v473 = v756.__r_.__value_.__r.__words[0];
    }

    if ((v756.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v474 = HIBYTE(v756.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v474 = v756.__r_.__value_.__l.__size_;
    }

    v475 = sub_29D41A270(v472, v473, v474);
    v476 = MEMORY[0x29ED56A70](v475, *(a3 + 30));
    v477 = sub_29D41A270(v476, ",", 1);
    sub_29D40DC78(&v619, "clickSpeed");
    profile_decoder::key(&v753);
    if ((v753.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v478 = &v753;
    }

    else
    {
      v478 = v753.__r_.__value_.__r.__words[0];
    }

    if ((v753.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v479 = HIBYTE(v753.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v479 = v753.__r_.__value_.__l.__size_;
    }

    v480 = sub_29D41A270(v477, v478, v479);
    v481 = MEMORY[0x29ED56A70](v480, *(a3 + 31));
    v482 = sub_29D41A270(v481, ",", 1);
    sub_29D40DC78(&v617, "test_mode");
    profile_decoder::key(&v750);
    if ((v750.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v483 = &v750;
    }

    else
    {
      v483 = v750.__r_.__value_.__r.__words[0];
    }

    if ((v750.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v484 = HIBYTE(v750.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v484 = v750.__r_.__value_.__l.__size_;
    }

    v485 = sub_29D41A270(v482, v483, v484);
    v486 = MEMORY[0x29ED56A70](v485, *(a3 + 32));
    v487 = sub_29D41A270(v486, ",", 1);
    sub_29D40DC78(&v615, "cl_enable");
    profile_decoder::key(&v715);
    if ((v715.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v488 = &v715;
    }

    else
    {
      v488 = v715.__r_.__value_.__r.__words[0];
    }

    if ((v715.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v489 = HIBYTE(v715.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v489 = v715.__r_.__value_.__l.__size_;
    }

    v490 = sub_29D41A270(v487, v488, v489);
    v491 = MEMORY[0x29ED56A70](v490, *(a3 + 33));
    v492 = sub_29D41A270(v491, ",", 1);
    sub_29D40DC78(&v613, "cl_aop_enable");
    profile_decoder::key(&v712);
    if ((v712.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v493 = &v712;
    }

    else
    {
      v493 = v712.__r_.__value_.__r.__words[0];
    }

    if ((v712.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v494 = HIBYTE(v712.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v494 = v712.__r_.__value_.__l.__size_;
    }

    v495 = sub_29D41A270(v492, v493, v494);
    v496 = MEMORY[0x29ED56A70](v495, *(a3 + 34));
    v497 = sub_29D41A270(v496, ",", 1);
    sub_29D40DC78(&v611, "cl_ap_enable");
    profile_decoder::key(&v709);
    if ((v709.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v498 = &v709;
    }

    else
    {
      v498 = v709.__r_.__value_.__r.__words[0];
    }

    if ((v709.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v499 = HIBYTE(v709.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v499 = v709.__r_.__value_.__l.__size_;
    }

    v500 = sub_29D41A270(v497, v498, v499);
    v501 = MEMORY[0x29ED56A70](v500, *(a3 + 35));
    v502 = sub_29D41A270(v501, ",", 1);
    sub_29D40DC78(&v609, "maggie_ready");
    profile_decoder::key(&v706);
    if ((v706.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v503 = &v706;
    }

    else
    {
      v503 = v706.__r_.__value_.__r.__words[0];
    }

    if ((v706.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v504 = HIBYTE(v706.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v504 = v706.__r_.__value_.__l.__size_;
    }

    v505 = sub_29D41A270(v502, v503, v504);
    v506 = MEMORY[0x29ED56A70](v505, *(a3 + 36));
    v507 = sub_29D41A270(v506, ",", 1);
    sub_29D40DC78(&v607, "apState0");
    profile_decoder::key(&v703);
    if ((v703.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v508 = &v703;
    }

    else
    {
      v508 = v703.__r_.__value_.__r.__words[0];
    }

    if ((v703.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v509 = HIBYTE(v703.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v509 = v703.__r_.__value_.__l.__size_;
    }

    v510 = sub_29D41A270(v507, v508, v509);
    v511 = MEMORY[0x29ED56A70](v510, *(a3 + 37));
    v512 = sub_29D41A270(v511, ",", 1);
    sub_29D40DC78(&v605, "apState1");
    profile_decoder::key(&v700);
    if ((v700.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v513 = &v700;
    }

    else
    {
      v513 = v700.__r_.__value_.__r.__words[0];
    }

    if ((v700.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v514 = HIBYTE(v700.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v514 = v700.__r_.__value_.__l.__size_;
    }

    v515 = sub_29D41A270(v512, v513, v514);
    v516 = MEMORY[0x29ED56A70](v515, *(a3 + 38));
    v517 = sub_29D41A270(v516, ",", 1);
    sub_29D40DC78(&v603, "aopState0");
    profile_decoder::key(&v697);
    if ((v697.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v518 = &v697;
    }

    else
    {
      v518 = v697.__r_.__value_.__r.__words[0];
    }

    if ((v697.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v519 = HIBYTE(v697.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v519 = v697.__r_.__value_.__l.__size_;
    }

    v520 = sub_29D41A270(v517, v518, v519);
    v521 = MEMORY[0x29ED56A70](v520, *(a3 + 39));
    v522 = sub_29D41A270(v521, ",", 1);
    sub_29D40DC78(&v601, "aopState1");
    profile_decoder::key(&v694);
    if ((v694.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v523 = &v694;
    }

    else
    {
      v523 = v694.__r_.__value_.__r.__words[0];
    }

    if ((v694.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v524 = HIBYTE(v694.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v524 = v694.__r_.__value_.__l.__size_;
    }

    v525 = sub_29D41A270(v522, v523, v524);
    v526 = MEMORY[0x29ED56A70](v525, *(a3 + 40));
    v527 = sub_29D41A270(v526, ",", 1);
    sub_29D40DC78(&v599, "state0");
    profile_decoder::key(&v691);
    if ((v691.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v528 = &v691;
    }

    else
    {
      v528 = v691.__r_.__value_.__r.__words[0];
    }

    if ((v691.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v529 = HIBYTE(v691.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v529 = v691.__r_.__value_.__l.__size_;
    }

    v530 = sub_29D41A270(v527, v528, v529);
    v531 = MEMORY[0x29ED56A70](v530, *(a3 + 41));
    v532 = sub_29D41A270(v531, ",", 1);
    sub_29D40DC78(&v597, "state1");
    profile_decoder::key(&v688);
    if ((v688.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v533 = &v688;
    }

    else
    {
      v533 = v688.__r_.__value_.__r.__words[0];
    }

    if ((v688.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v534 = HIBYTE(v688.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v534 = v688.__r_.__value_.__l.__size_;
    }

    v535 = sub_29D41A270(v532, v533, v534);
    v536 = MEMORY[0x29ED56A70](v535, *(a3 + 42));
    sub_29D41A270(v536, ",", 1);
    if (SHIBYTE(v688.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v688.__r_.__value_.__l.__data_);
    }

    if (v598 < 0)
    {
      operator delete(v597);
    }

    if (SHIBYTE(v691.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v691.__r_.__value_.__l.__data_);
    }

    if (v600 < 0)
    {
      operator delete(v599);
    }

    if (SHIBYTE(v694.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v694.__r_.__value_.__l.__data_);
    }

    if (v602 < 0)
    {
      operator delete(v601);
    }

    if (SHIBYTE(v697.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v697.__r_.__value_.__l.__data_);
    }

    if (v604 < 0)
    {
      operator delete(v603);
    }

    if (SHIBYTE(v700.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v700.__r_.__value_.__l.__data_);
    }

    if (v606 < 0)
    {
      operator delete(v605);
    }

    if (SHIBYTE(v703.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v703.__r_.__value_.__l.__data_);
    }

    if (v608 < 0)
    {
      operator delete(v607);
    }

    if (SHIBYTE(v706.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v706.__r_.__value_.__l.__data_);
    }

    if (v610 < 0)
    {
      operator delete(v609);
    }

    if (SHIBYTE(v709.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v709.__r_.__value_.__l.__data_);
    }

    if (v612 < 0)
    {
      operator delete(v611);
    }

    if (SHIBYTE(v712.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v712.__r_.__value_.__l.__data_);
    }

    if (v614 < 0)
    {
      operator delete(v613);
    }

    if (SHIBYTE(v715.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v715.__r_.__value_.__l.__data_);
    }

    if (v616 < 0)
    {
      operator delete(v615);
    }

    if (SHIBYTE(v750.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v750.__r_.__value_.__l.__data_);
    }

    if (v618 < 0)
    {
      operator delete(v617);
    }

    if (SHIBYTE(v753.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v753.__r_.__value_.__l.__data_);
    }

    if (v620 < 0)
    {
      operator delete(v619);
    }

    if (SHIBYTE(v756.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v756.__r_.__value_.__l.__data_);
    }

    if (v622 < 0)
    {
      operator delete(v621);
    }

    if (SHIBYTE(v759.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v759.__r_.__value_.__l.__data_);
    }

    if (v624 < 0)
    {
      operator delete(v623);
    }

    if (SHIBYTE(v762.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v762.__r_.__value_.__l.__data_);
    }

    if (v626 < 0)
    {
      operator delete(v625);
    }

    if (SHIBYTE(v765.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v765.__r_.__value_.__l.__data_);
    }

    if (v628 < 0)
    {
      operator delete(v627);
    }

    if (SHIBYTE(v768.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v768.__r_.__value_.__l.__data_);
    }

    if (v630 < 0)
    {
      operator delete(v629);
    }

    if (SHIBYTE(v771.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v771.__r_.__value_.__l.__data_);
    }

    if (v632 < 0)
    {
      operator delete(v631);
    }

    if (SHIBYTE(v790.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v790.__r_.__value_.__l.__data_);
    }

    if (v634 < 0)
    {
      operator delete(v633);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v636 < 0)
    {
      operator delete(v635);
    }

    if (SHIBYTE(v810.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v810.__r_.__value_.__l.__data_);
    }

    if (v638 < 0)
    {
      operator delete(v637);
    }

    if (SHIBYTE(v813.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v813.__r_.__value_.__l.__data_);
    }

    if (v640 < 0)
    {
      operator delete(v639);
    }

    if (SHIBYTE(v816.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v816.__r_.__value_.__l.__data_);
    }

    if (v642 < 0)
    {
      operator delete(v641);
    }

    if (SHIBYTE(v819.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v819.__r_.__value_.__l.__data_);
    }

    if (v644 < 0)
    {
      operator delete(v643);
    }

    if (SHIBYTE(v821.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v821.__r_.__value_.__l.__data_);
    }

    if (v646 < 0)
    {
      operator delete(v645);
    }

    if (SHIBYTE(v824.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v824.__r_.__value_.__l.__data_);
    }

    if (v648 < 0)
    {
      v194 = v647;
      goto LABEL_1087;
    }

    goto LABEL_1088;
  }

  if (v74 != 5)
  {
    goto LABEL_826;
  }

  sub_29D40DC78(&v675, "context-version");
  profile_decoder::key(&v824);
  if ((v824.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v339 = &v824;
  }

  else
  {
    v339 = v824.__r_.__value_.__r.__words[0];
  }

  if ((v824.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v340 = HIBYTE(v824.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v340 = v824.__r_.__value_.__l.__size_;
  }

  v341 = sub_29D41A270((a2 + 16), v339, v340);
  v342 = MEMORY[0x29ED56A70](v341, *(a3 + 8));
  v343 = sub_29D41A270(v342, ",", 1);
  sub_29D40DC78(&v673, "currentContext0");
  profile_decoder::key(&v821);
  if ((v821.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v344 = &v821;
  }

  else
  {
    v344 = v821.__r_.__value_.__r.__words[0];
  }

  if ((v821.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v345 = HIBYTE(v821.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v345 = v821.__r_.__value_.__l.__size_;
  }

  v346 = sub_29D41A270(v343, v344, v345);
  v347 = MEMORY[0x29ED56A70](v346, *(a3 + 18));
  v348 = sub_29D41A270(v347, ",", 1);
  sub_29D40DC78(&v671, "currentContext1");
  profile_decoder::key(&v819);
  if ((v819.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v349 = &v819;
  }

  else
  {
    v349 = v819.__r_.__value_.__r.__words[0];
  }

  if ((v819.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v350 = HIBYTE(v819.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v350 = v819.__r_.__value_.__l.__size_;
  }

  v351 = sub_29D41A270(v348, v349, v350);
  v352 = MEMORY[0x29ED56A70](v351, *(a3 + 19));
  v353 = sub_29D41A270(v352, ",", 1);
  sub_29D40DC78(&v669, "ampsEnabled");
  profile_decoder::key(&v816);
  if ((v816.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v354 = &v816;
  }

  else
  {
    v354 = v816.__r_.__value_.__r.__words[0];
  }

  if ((v816.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v355 = HIBYTE(v816.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v355 = v816.__r_.__value_.__l.__size_;
  }

  v356 = sub_29D41A270(v353, v354, v355);
  v357 = MEMORY[0x29ED56A70](v356, *(a3 + 20));
  v358 = sub_29D41A270(v357, ",", 1);
  sub_29D40DC78(&v667, "enabled");
  profile_decoder::key(&v813);
  if ((v813.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v359 = &v813;
  }

  else
  {
    v359 = v813.__r_.__value_.__r.__words[0];
  }

  if ((v813.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v360 = HIBYTE(v813.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v360 = v813.__r_.__value_.__l.__size_;
  }

  v361 = sub_29D41A270(v358, v359, v360);
  v362 = MEMORY[0x29ED56A70](v361, *(a3 + 21));
  v363 = sub_29D41A270(v362, ",", 1);
  sub_29D40DC78(&v665, "scan_period");
  profile_decoder::key(&v810);
  if ((v810.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v364 = &v810;
  }

  else
  {
    v364 = v810.__r_.__value_.__r.__words[0];
  }

  if ((v810.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v365 = HIBYTE(v810.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v365 = v810.__r_.__value_.__l.__size_;
  }

  v366 = sub_29D41A270(v363, v364, v365);
  v367 = MEMORY[0x29ED56A70](v366, *(a3 + 22));
  v368 = sub_29D41A270(v367, ",", 1);
  sub_29D40DC78(&v663, "scan_time");
  profile_decoder::key(&__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v369 = &__p;
  }

  else
  {
    v369 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v370 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v370 = __p.__r_.__value_.__l.__size_;
  }

  v371 = sub_29D41A270(v368, v369, v370);
  v372 = MEMORY[0x29ED56A70](v371, *(a3 + 26));
  v373 = sub_29D41A270(v372, ",", 1);
  sub_29D40DC78(&v661, "fingerDetect");
  profile_decoder::key(&v790);
  if ((v790.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v374 = &v790;
  }

  else
  {
    v374 = v790.__r_.__value_.__r.__words[0];
  }

  if ((v790.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v375 = HIBYTE(v790.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v375 = v790.__r_.__value_.__l.__size_;
  }

  v376 = sub_29D41A270(v373, v374, v375);
  v377 = MEMORY[0x29ED56A70](v376, *(a3 + 30));
  v378 = sub_29D41A270(v377, ",", 1);
  sub_29D40DC78(&v659, "buttonState");
  profile_decoder::key(&v771);
  if ((v771.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v379 = &v771;
  }

  else
  {
    v379 = v771.__r_.__value_.__r.__words[0];
  }

  if ((v771.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v380 = HIBYTE(v771.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v380 = v771.__r_.__value_.__l.__size_;
  }

  v381 = sub_29D41A270(v378, v379, v380);
  v382 = MEMORY[0x29ED56A70](v381, *(a3 + 31));
  v383 = sub_29D41A270(v382, ",", 1);
  sub_29D40DC78(&v657, "pressCount");
  profile_decoder::key(&v768);
  if ((v768.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v384 = &v768;
  }

  else
  {
    v384 = v768.__r_.__value_.__r.__words[0];
  }

  if ((v768.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v385 = HIBYTE(v768.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v385 = v768.__r_.__value_.__l.__size_;
  }

  v386 = sub_29D41A270(v383, v384, v385);
  v387 = MEMORY[0x29ED56A70](v386, *(a3 + 32));
  v388 = sub_29D41A270(v387, ",", 1);
  sub_29D40DC78(&v655, "longPress");
  profile_decoder::key(&v765);
  if ((v765.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v389 = &v765;
  }

  else
  {
    v389 = v765.__r_.__value_.__r.__words[0];
  }

  if ((v765.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v390 = HIBYTE(v765.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v390 = v765.__r_.__value_.__l.__size_;
  }

  v391 = sub_29D41A270(v388, v389, v390);
  v392 = MEMORY[0x29ED56A70](v391, *(a3 + 33));
  v393 = sub_29D41A270(v392, ",", 1);
  sub_29D40DC78(&v653, "terminalEvent");
  profile_decoder::key(&v762);
  if ((v762.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v394 = &v762;
  }

  else
  {
    v394 = v762.__r_.__value_.__r.__words[0];
  }

  if ((v762.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v395 = HIBYTE(v762.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v395 = v762.__r_.__value_.__l.__size_;
  }

  v396 = sub_29D41A270(v393, v394, v395);
  v397 = MEMORY[0x29ED56A70](v396, *(a3 + 34));
  v398 = sub_29D41A270(v397, ",", 1);
  sub_29D40DC78(&v651, "speed");
  profile_decoder::key(&v759);
  if ((v759.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v399 = &v759;
  }

  else
  {
    v399 = v759.__r_.__value_.__r.__words[0];
  }

  if ((v759.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v400 = HIBYTE(v759.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v400 = v759.__r_.__value_.__l.__size_;
  }

  v401 = sub_29D41A270(v398, v399, v400);
  v402 = MEMORY[0x29ED56A70](v401, *(a3 + 35));
  v403 = sub_29D41A270(v402, ",", 1);
  sub_29D40DC78(&v649, "stage");
  profile_decoder::key(&v756);
  if ((v756.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v404 = &v756;
  }

  else
  {
    v404 = v756.__r_.__value_.__r.__words[0];
  }

  if ((v756.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v405 = HIBYTE(v756.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v405 = v756.__r_.__value_.__l.__size_;
  }

  v406 = sub_29D41A270(v403, v404, v405);
  v407 = MEMORY[0x29ED56A70](v406, *(a3 + 36));
  sub_29D41A270(v407, ",", 1);
  if (SHIBYTE(v756.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v756.__r_.__value_.__l.__data_);
  }

  if (v650 < 0)
  {
    operator delete(v649);
  }

  if (SHIBYTE(v759.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v759.__r_.__value_.__l.__data_);
  }

  if (v652 < 0)
  {
    operator delete(v651);
  }

  if (SHIBYTE(v762.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v762.__r_.__value_.__l.__data_);
  }

  if (v654 < 0)
  {
    operator delete(v653);
  }

  if (SHIBYTE(v765.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v765.__r_.__value_.__l.__data_);
  }

  if (v656 < 0)
  {
    operator delete(v655);
  }

  if (SHIBYTE(v768.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v768.__r_.__value_.__l.__data_);
  }

  if (v658 < 0)
  {
    operator delete(v657);
  }

  if (SHIBYTE(v771.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v771.__r_.__value_.__l.__data_);
  }

  if (v660 < 0)
  {
    operator delete(v659);
  }

  if (SHIBYTE(v790.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v790.__r_.__value_.__l.__data_);
  }

  if (v662 < 0)
  {
    operator delete(v661);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v664 < 0)
  {
    operator delete(v663);
  }

  if (SHIBYTE(v810.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v810.__r_.__value_.__l.__data_);
  }

  if (v666 < 0)
  {
    operator delete(v665);
  }

  if (SHIBYTE(v813.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v813.__r_.__value_.__l.__data_);
  }

  if (v668 < 0)
  {
    operator delete(v667);
  }

  if (SHIBYTE(v816.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v816.__r_.__value_.__l.__data_);
  }

  if (v670 < 0)
  {
    operator delete(v669);
  }

  if (SHIBYTE(v819.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v819.__r_.__value_.__l.__data_);
  }

  if (v672 < 0)
  {
    operator delete(v671);
  }

  if (SHIBYTE(v821.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v821.__r_.__value_.__l.__data_);
  }

  if (v674 < 0)
  {
    operator delete(v673);
  }

  if (SHIBYTE(v824.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v824.__r_.__value_.__l.__data_);
  }

  if (v676 < 0)
  {
    v194 = v675;
    goto LABEL_1087;
  }

LABEL_1088:
  if (v7 != 7)
  {
    goto LABEL_1163;
  }

  if (v8 != 2)
  {
    return;
  }

  if (v72 != 1)
  {
    if (v72 == 2)
    {
      sub_29D40DC78(&v576, "ampType");
      profile_decoder::key(&v824);
      if ((v824.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v551 = &v824;
      }

      else
      {
        v551 = v824.__r_.__value_.__r.__words[0];
      }

      if ((v824.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v552 = HIBYTE(v824.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v552 = v824.__r_.__value_.__l.__size_;
      }

      v553 = sub_29D41A270((a2 + 16), v551, v552);
      *(v553 + *(*v553 - 24) + 24) = 10;
      v554 = MEMORY[0x29ED56A70]();
      v555 = sub_29D41A270(v554, ",", 1);
      sub_29D40DC78(&v574, "index");
      profile_decoder::key(&v821);
      if ((v821.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v556 = &v821;
      }

      else
      {
        v556 = v821.__r_.__value_.__r.__words[0];
      }

      if ((v821.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v557 = HIBYTE(v821.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v557 = v821.__r_.__value_.__l.__size_;
      }

      v558 = sub_29D41A270(v555, v556, v557);
      *(v558 + *(*v558 - 24) + 24) = 10;
      v559 = MEMORY[0x29ED56A70]();
      v560 = sub_29D41A270(v559, ",", 1);
      sub_29D40DC78(&v572, "presilence");
      profile_decoder::key(&v819);
      if ((v819.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v561 = &v819;
      }

      else
      {
        v561 = v819.__r_.__value_.__r.__words[0];
      }

      if ((v819.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v562 = HIBYTE(v819.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v562 = v819.__r_.__value_.__l.__size_;
      }

      v563 = sub_29D41A270(v560, v561, v562);
      *(v563 + *(*v563 - 24) + 24) = 10;
      v564 = MEMORY[0x29ED56A70]();
      v565 = sub_29D41A270(v564, ",", 1);
      sub_29D40DC78(&v570, "gain");
      profile_decoder::key(&v816);
      if ((v816.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v566 = &v816;
      }

      else
      {
        v566 = v816.__r_.__value_.__r.__words[0];
      }

      if ((v816.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v567 = HIBYTE(v816.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v567 = v816.__r_.__value_.__l.__size_;
      }

      v568 = sub_29D41A270(v565, v566, v567);
      *(v568 + *(*v568 - 24) + 24) = 10;
      v569 = MEMORY[0x29ED56A70]();
      sub_29D41A270(v569, ",", 1);
      if (SHIBYTE(v816.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v816.__r_.__value_.__l.__data_);
      }

      if (v571 < 0)
      {
        operator delete(v570);
      }

      if (SHIBYTE(v819.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v819.__r_.__value_.__l.__data_);
      }

      if (v573 < 0)
      {
        operator delete(v572);
      }

      if (SHIBYTE(v821.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v821.__r_.__value_.__l.__data_);
      }

      if (v575 < 0)
      {
        operator delete(v574);
      }

      if (SHIBYTE(v824.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v824.__r_.__value_.__l.__data_);
      }

      if (v577 < 0)
      {
        v71 = v576;
        goto LABEL_1162;
      }

      return;
    }

    goto LABEL_1163;
  }

  sub_29D40DC78(&v582, "ampType");
  profile_decoder::key(&v824);
  if ((v824.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v537 = &v824;
  }

  else
  {
    v537 = v824.__r_.__value_.__r.__words[0];
  }

  if ((v824.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v538 = HIBYTE(v824.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v538 = v824.__r_.__value_.__l.__size_;
  }

  v539 = sub_29D41A270((a2 + 16), v537, v538);
  *(v539 + *(*v539 - 24) + 24) = 10;
  v540 = MEMORY[0x29ED56A70]();
  v541 = sub_29D41A270(v540, ",", 1);
  sub_29D40DC78(&v580, "state");
  profile_decoder::key(&v821);
  if ((v821.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v542 = &v821;
  }

  else
  {
    v542 = v821.__r_.__value_.__r.__words[0];
  }

  if ((v821.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v543 = HIBYTE(v821.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v543 = v821.__r_.__value_.__l.__size_;
  }

  v544 = sub_29D41A270(v541, v542, v543);
  *(v544 + *(*v544 - 24) + 24) = 10;
  v545 = MEMORY[0x29ED56A70]();
  v546 = sub_29D41A270(v545, ",", 1);
  sub_29D40DC78(&v578, "refCount");
  profile_decoder::key(&v819);
  if ((v819.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v547 = &v819;
  }

  else
  {
    v547 = v819.__r_.__value_.__r.__words[0];
  }

  if ((v819.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v548 = HIBYTE(v819.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v548 = v819.__r_.__value_.__l.__size_;
  }

  v549 = sub_29D41A270(v546, v547, v548);
  *(v549 + *(*v549 - 24) + 24) = 10;
  v550 = MEMORY[0x29ED56A70]();
  sub_29D41A270(v550, ",", 1);
  if (SHIBYTE(v819.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v819.__r_.__value_.__l.__data_);
  }

  if (v579 < 0)
  {
    operator delete(v578);
  }

  if (SHIBYTE(v821.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v821.__r_.__value_.__l.__data_);
  }

  if (v581 < 0)
  {
    operator delete(v580);
  }

  if (SHIBYTE(v824.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v824.__r_.__value_.__l.__data_);
  }

  if (v583 < 0)
  {
    v71 = v582;
    goto LABEL_1162;
  }
}

void sub_29D4177A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v33 - 225) < 0)
  {
    operator delete(*(v33 - 248));
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v33 - 177) < 0)
  {
    operator delete(*(v33 - 200));
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (*(v33 - 129) < 0)
  {
    operator delete(*(v33 - 152));
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (*(v33 - 81) < 0)
  {
    operator delete(*(v33 - 104));
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  _Unwind_Resume(a1);
}

void haptics_decoder::parse_datatype(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = BYTE2(*a3);
  if ((v5 - 5) <= 1)
  {
    goto LABEL_106;
  }

  if (*a3 != 2)
  {
    if (*a3 == 3)
    {
      sub_29D40DC78(&v103, "trace");
      profile_decoder::key(&v105);
      if ((v105.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v6 = &v105;
      }

      else
      {
        v6 = v105.__r_.__value_.__r.__words[0];
      }

      if ((v105.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v105.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v105.__r_.__value_.__l.__size_;
      }

      v8 = sub_29D41A270((a2 + 16), v6, size);
      *(v8 + *(*v8 - 24) + 24) = 25;
      haptics_decoder::subtype_name(&v101, *(a3 + 16), v5);
      profile_decoder::str(&v102);
      if ((v102.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v9 = &v102;
      }

      else
      {
        v9 = v102.__r_.__value_.__r.__words[0];
      }

      if ((v102.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v10 = HIBYTE(v102.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v10 = v102.__r_.__value_.__l.__size_;
      }

      v11 = sub_29D41A270(v8, v9, v10);
      v12 = sub_29D41A270(v11, ",", 1);
      sub_29D40DC78(&v98, "thread");
      profile_decoder::key(&v100);
      if ((v100.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v13 = &v100;
      }

      else
      {
        v13 = v100.__r_.__value_.__r.__words[0];
      }

      if ((v100.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v14 = HIBYTE(v100.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v14 = v100.__r_.__value_.__l.__size_;
      }

      v15 = sub_29D41A270(v12, v13, v14);
      *(v15 + *(*v15 - 24) + 24) = 10;
      v16 = MEMORY[0x29ED56A70]();
      v17 = sub_29D41A270(v16, ",", 1);
      sub_29D40DC78(&v95, "arg1");
      profile_decoder::key(&v97);
      if ((v97.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v18 = &v97;
      }

      else
      {
        v18 = v97.__r_.__value_.__r.__words[0];
      }

      if ((v97.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v19 = HIBYTE(v97.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v19 = v97.__r_.__value_.__l.__size_;
      }

      v20 = sub_29D41A270(v17, v18, v19);
      *(v20 + *(*v20 - 24) + 24) = 10;
      v21 = MEMORY[0x29ED56A70]();
      v22 = sub_29D41A270(v21, ",", 1);
      sub_29D40DC78(&v92, "arg2");
      profile_decoder::key(&v94);
      if ((v94.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v23 = &v94;
      }

      else
      {
        v23 = v94.__r_.__value_.__r.__words[0];
      }

      if ((v94.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v24 = HIBYTE(v94.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v24 = v94.__r_.__value_.__l.__size_;
      }

      v25 = sub_29D41A270(v22, v23, v24);
      *(v25 + *(*v25 - 24) + 24) = 10;
      v26 = MEMORY[0x29ED56A70]();
      v27 = sub_29D41A270(v26, ",", 1);
      sub_29D40DC78(&v89, "arg3");
      profile_decoder::key(&v91);
      if ((v91.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v28 = &v91;
      }

      else
      {
        v28 = v91.__r_.__value_.__r.__words[0];
      }

      if ((v91.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v29 = HIBYTE(v91.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v29 = v91.__r_.__value_.__l.__size_;
      }

      v30 = sub_29D41A270(v27, v28, v29);
      *(v30 + *(*v30 - 24) + 24) = 10;
      v31 = MEMORY[0x29ED56A70]();
      v32 = sub_29D41A270(v31, ",", 1);
      sub_29D40DC78(&v86, "arg4");
      profile_decoder::key(&__p);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v34 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v34 = __p.__r_.__value_.__l.__size_;
      }

      v35 = sub_29D41A270(v32, p_p, v34);
      *(v35 + *(*v35 - 24) + 24) = 10;
      v36 = MEMORY[0x29ED56A70]();
      sub_29D41A270(v36, ",", 1);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (v87 < 0)
      {
        operator delete(v86);
      }

      if (SHIBYTE(v91.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v91.__r_.__value_.__l.__data_);
      }

      if (v90 < 0)
      {
        operator delete(v89);
      }

      if (SHIBYTE(v94.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v94.__r_.__value_.__l.__data_);
      }

      if (v93 < 0)
      {
        operator delete(v92);
      }

      if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v97.__r_.__value_.__l.__data_);
      }

      if (v96 < 0)
      {
        operator delete(v95);
      }

      if (SHIBYTE(v100.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v100.__r_.__value_.__l.__data_);
      }

      if (v99 < 0)
      {
        operator delete(v98);
      }

      if (SHIBYTE(v102.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v102.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v101.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v101.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v105.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v105.__r_.__value_.__l.__data_);
      }

      if (v104 < 0)
      {
        v37 = v103;
LABEL_149:
        operator delete(v37);
        return;
      }

      return;
    }

LABEL_106:

    profile_decoder::parse_datatype(a1, a2, a3);
    return;
  }

  v38 = BYTE1(*a3);
  if (v38 == 2)
  {
    sub_29D40DC78(&v78, "ampType");
    profile_decoder::key(&v105);
    if ((v105.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v53 = &v105;
    }

    else
    {
      v53 = v105.__r_.__value_.__r.__words[0];
    }

    if ((v105.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v54 = HIBYTE(v105.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v54 = v105.__r_.__value_.__l.__size_;
    }

    v55 = sub_29D41A270((a2 + 16), v53, v54);
    *(v55 + *(*v55 - 24) + 24) = 10;
    v56 = MEMORY[0x29ED56A70]();
    v57 = sub_29D41A270(v56, ",", 1);
    sub_29D40DC78(&v76, "index");
    profile_decoder::key(&v102);
    if ((v102.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v58 = &v102;
    }

    else
    {
      v58 = v102.__r_.__value_.__r.__words[0];
    }

    if ((v102.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v59 = HIBYTE(v102.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v59 = v102.__r_.__value_.__l.__size_;
    }

    v60 = sub_29D41A270(v57, v58, v59);
    *(v60 + *(*v60 - 24) + 24) = 10;
    v61 = MEMORY[0x29ED56A70]();
    v62 = sub_29D41A270(v61, ",", 1);
    sub_29D40DC78(&v74, "presilence");
    profile_decoder::key(&v100);
    if ((v100.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v63 = &v100;
    }

    else
    {
      v63 = v100.__r_.__value_.__r.__words[0];
    }

    if ((v100.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v64 = HIBYTE(v100.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v64 = v100.__r_.__value_.__l.__size_;
    }

    v65 = sub_29D41A270(v62, v63, v64);
    *(v65 + *(*v65 - 24) + 24) = 10;
    v66 = MEMORY[0x29ED56A70]();
    v67 = sub_29D41A270(v66, ",", 1);
    sub_29D40DC78(&v72, "gain");
    profile_decoder::key(&v97);
    if ((v97.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v68 = &v97;
    }

    else
    {
      v68 = v97.__r_.__value_.__r.__words[0];
    }

    if ((v97.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v69 = HIBYTE(v97.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v69 = v97.__r_.__value_.__l.__size_;
    }

    v70 = sub_29D41A270(v67, v68, v69);
    *(v70 + *(*v70 - 24) + 24) = 10;
    v71 = MEMORY[0x29ED56A70]();
    sub_29D41A270(v71, ",", 1);
    if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v97.__r_.__value_.__l.__data_);
    }

    if (v73 < 0)
    {
      operator delete(v72);
    }

    if (SHIBYTE(v100.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v100.__r_.__value_.__l.__data_);
    }

    if (v75 < 0)
    {
      operator delete(v74);
    }

    if (SHIBYTE(v102.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v102.__r_.__value_.__l.__data_);
    }

    if (v77 < 0)
    {
      operator delete(v76);
    }

    if (SHIBYTE(v105.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v105.__r_.__value_.__l.__data_);
    }

    if (v79 < 0)
    {
      v37 = v78;
      goto LABEL_149;
    }

    return;
  }

  if (v38 != 1)
  {
    goto LABEL_106;
  }

  sub_29D40DC78(&v84, "ampType");
  profile_decoder::key(&v105);
  if ((v105.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v39 = &v105;
  }

  else
  {
    v39 = v105.__r_.__value_.__r.__words[0];
  }

  if ((v105.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v40 = HIBYTE(v105.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v40 = v105.__r_.__value_.__l.__size_;
  }

  v41 = sub_29D41A270((a2 + 16), v39, v40);
  *(v41 + *(*v41 - 24) + 24) = 10;
  v42 = MEMORY[0x29ED56A70]();
  v43 = sub_29D41A270(v42, ",", 1);
  sub_29D40DC78(&v82, "state");
  profile_decoder::key(&v102);
  if ((v102.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v44 = &v102;
  }

  else
  {
    v44 = v102.__r_.__value_.__r.__words[0];
  }

  if ((v102.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v45 = HIBYTE(v102.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v45 = v102.__r_.__value_.__l.__size_;
  }

  v46 = sub_29D41A270(v43, v44, v45);
  *(v46 + *(*v46 - 24) + 24) = 10;
  v47 = MEMORY[0x29ED56A70]();
  v48 = sub_29D41A270(v47, ",", 1);
  sub_29D40DC78(&v80, "refCount");
  profile_decoder::key(&v100);
  if ((v100.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v49 = &v100;
  }

  else
  {
    v49 = v100.__r_.__value_.__r.__words[0];
  }

  if ((v100.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v50 = HIBYTE(v100.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v50 = v100.__r_.__value_.__l.__size_;
  }

  v51 = sub_29D41A270(v48, v49, v50);
  *(v51 + *(*v51 - 24) + 24) = 10;
  v52 = MEMORY[0x29ED56A70]();
  sub_29D41A270(v52, ",", 1);
  if (SHIBYTE(v100.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v100.__r_.__value_.__l.__data_);
  }

  if (v81 < 0)
  {
    operator delete(v80);
  }

  if (SHIBYTE(v102.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v102.__r_.__value_.__l.__data_);
  }

  if (v83 < 0)
  {
    operator delete(v82);
  }

  if (SHIBYTE(v105.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v105.__r_.__value_.__l.__data_);
  }

  if (v85 < 0)
  {
    v37 = v84;
    goto LABEL_149;
  }
}

void sub_29D419800(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v33 - 193) < 0)
  {
    operator delete(*(v33 - 216));
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v33 - 145) < 0)
  {
    operator delete(*(v33 - 168));
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (*(v33 - 97) < 0)
  {
    operator delete(*(v33 - 120));
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (*(v33 - 49) < 0)
  {
    operator delete(*(v33 - 72));
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  _Unwind_Resume(a1);
}

std::string *haptics_decoder::subtype_name@<X0>(std::string *__return_ptr a1@<X8>, profile_decoder *a2@<X2>, int a3@<W1>)
{
  if ((a3 - 7) > 2)
  {
    return std::to_string(a1, a2);
  }

  else
  {
    return profile_decoder::find_in_table(&unk_29F34EBA8, a2, 0x18u, a1);
  }
}

void wake_decoder::parse_datatype(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v6 = *a3;
  if (*a3 == 167772429)
  {
    sub_29D40DC78(&v32, "wake_reason");
    profile_decoder::key(&v34);
    if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v7 = &v34;
    }

    else
    {
      v7 = v34.__r_.__value_.__r.__words[0];
    }

    if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v34.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v34.__r_.__value_.__l.__size_;
    }

    v9 = sub_29D41A270((a2 + 16), v7, size);
    *(v9 + *(*v9 - 24) + 24) = 10;
    v10 = MEMORY[0x29ED56A70]();
    v11 = sub_29D41A270(v10, ",", 1);
    sub_29D40DC78(&v29, "endpoint_ref");
    profile_decoder::key(&__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v13 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v13 = __p.__r_.__value_.__l.__size_;
    }

    v14 = sub_29D41A270(v11, p_p, v13);
    *(v14 + *(*v14 - 24) + 24) = 10;
    v15 = MEMORY[0x29ED56AA0]();
    sub_29D41A270(v15, ",", 1);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v30 < 0)
    {
      operator delete(v29);
    }

    if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v34.__r_.__value_.__l.__data_);
    }

    if (v33 < 0)
    {
      operator delete(v32);
    }

    v6 = *a3;
  }

  if (v6 == 167772675)
  {
    sub_29D40DC78(&v27, "wake_reason");
    profile_decoder::key(&v34);
    if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v16 = &v34;
    }

    else
    {
      v16 = v34.__r_.__value_.__r.__words[0];
    }

    if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v17 = HIBYTE(v34.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v17 = v34.__r_.__value_.__l.__size_;
    }

    v18 = sub_29D41A270((a2 + 16), v16, v17);
    *(v18 + *(*v18 - 24) + 24) = 10;
    v19 = MEMORY[0x29ED56A70]();
    v20 = sub_29D41A270(v19, ",", 1);
    sub_29D40DC78(&v25, "service_id");
    profile_decoder::key(&__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v21 = &__p;
    }

    else
    {
      v21 = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v22 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v22 = __p.__r_.__value_.__l.__size_;
    }

    v23 = sub_29D41A270(v20, v21, v22);
    *(v23 + *(*v23 - 24) + 24) = 10;
    v24 = MEMORY[0x29ED56A70]();
    sub_29D41A270(v24, ",", 1);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v26 < 0)
    {
      operator delete(v25);
    }

    if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v34.__r_.__value_.__l.__data_);
    }

    if (v28 < 0)
    {
      operator delete(v27);
    }
  }

  else
  {
    profile_decoder::parse_datatype(a1, a2, a3);
  }
}

void sub_29D419E44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (*(v38 - 49) < 0)
  {
    operator delete(*(v38 - 72));
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void AOPLogDecoder::to_string(int *a1)
{
  v2 = *a1;
  if (v2 >> 25 <= 6 && (v3 = *(&AOPLogDecoder::_decoders + ((v2 >> 21) & 0x7F8))) != 0)
  {
    (**v3)(v3, a1);
  }

  else
  {
    profile_decoder::to_string(&AOPLogDecoder::_default, a1);
  }
}

std::string *AOPLogDecoder::category_to_string@<X0>(AOPLogDecoder *this@<X0>, std::string *a2@<X8>)
{
  if (this <= 0xD && (v3 = (&AOPLogDecoder::_decoders)[this]) != 0)
  {
    return ((*v3)[1])(v3, this);
  }

  else
  {
    return std::to_string(a2, this);
  }
}

std::string *AOPLogDecoder::component_to_string@<X0>(AOPLogDecoder *this@<X0>, uint64_t __val@<X1>, std::string *a3@<X8>)
{
  if (this <= 0xD && (v3 = (&AOPLogDecoder::_decoders)[this]) != 0)
  {
    return ((*v3)[2])(v3, __val);
  }

  else
  {
    return std::to_string(a3, __val);
  }
}

void sub_29D41A01C(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_29D41A078(exception, a1);
  __cxa_throw(exception, off_29F34D940, MEMORY[0x29EDC9348]);
}

std::logic_error *sub_29D41A078(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x29EDC95D8] + 16);
  return result;
}

uint64_t sub_29D41A0AC(uint64_t a1, int a2)
{
  *a1 = MEMORY[0x29EDC9568] + 16;
  MEMORY[0x29ED56AC0](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x29EDC9570] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  sub_29D41A168(a1);
  return a1;
}

void sub_29D41A140(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void sub_29D41A168(uint64_t a1)
{
  *(a1 + 88) = 0;
  v2 = (a1 + 64);
  v3 = *(a1 + 87);
  if (v3 < 0)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
  }

  else
  {
    v4 = v2;
    v5 = *(a1 + 87);
  }

  v6 = *(a1 + 96);
  if ((v6 & 8) != 0)
  {
    *(a1 + 88) = v4 + v5;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

  if ((v6 & 0x10) != 0)
  {
    *(a1 + 88) = v4 + v5;
    if ((v3 & 0x80000000) != 0)
    {
      v7 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v7 = 22;
    }

    std::string::resize(v2, v7, 0);
    v8 = *(a1 + 87);
    if (v8 < 0)
    {
      v8 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v8;
    if ((*(a1 + 96) & 3) != 0)
    {
      if (v5 >> 31)
      {
        v9 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
        v10 = 0x7FFFFFFF * ((v9 + ((v5 - 0x80000000 - v9) >> 1)) >> 30);
        v4 = (v4 + v10 + 0x7FFFFFFF);
        v5 = v5 - v10 - 0x7FFFFFFF;
        *(a1 + 48) = v4;
      }

      if (v5)
      {
        *(a1 + 48) = v4 + v5;
      }
    }
  }
}

void *sub_29D41A270(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x29ED56A30](v13, a1);
  if (v13[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 5);
    v8 = *(v6 + 2);
    v9 = *(v6 + 36);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, MEMORY[0x29EDC93D0]);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&v14);
      *(v6 + 36) = v9;
    }

    if ((v8 & 0xB0) == 0x20)
    {
      v11 = a2 + a3;
    }

    else
    {
      v11 = a2;
    }

    if (!sub_29D41A418(v7, a2, v11, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x29ED56A40](v13);
  return a1;
}

void sub_29D41A3B0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::locale a12)
{
  MEMORY[0x29ED56A40](&a10, a2, a3, a4, a5, a6, a7, a8);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x29D41A390);
}

uint64_t sub_29D41A418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_29D41A004();
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      v18 = v12;
      memset(&__b, __c, v12);
      *(&__b + v12) = 0;
      if (v18 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b;
      }

      v14 = (*(*v6 + 96))(v6, p_b, v12);
      if (v18 < 0)
      {
        operator delete(__b);
      }

      if (v14 != v12)
      {
        return 0;
      }
    }

    v15 = a4 - a3;
    if (v15 < 1 || (*(*v6 + 96))(v6, a3, v15) == v15)
    {
      *(a5 + 24) = 0;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

void sub_29D41A5E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29D41A600(_BYTE *__dst, void *__src, unint64_t a3)
{
  if (a3 > 0x16)
  {
    if (a3 < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    sub_29D41A004();
  }

  __dst[23] = a3;
  v3 = a3 + 1;

  return memmove(__dst, __src, v3);
}

uint64_t SPU_log_next_report(uint64_t a1)
{
  v1 = a1 + ((*(a1 + 8) >> 2) & 0xF0);
  v3 = *(v1 + 16);
  v2 = v1 + 16;
  if (v3)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t SPU_log_get_num_reports(uint64_t result)
{
  if (result)
  {
    v1 = result;
    result = 0;
    v2 = v1 + 256;
    do
    {
      if (!*v1)
      {
        break;
      }

      ++result;
      v3 = v1 + ((*(v1 + 8) >> 2) & 0xF0);
      v4 = *(v3 + 16);
      v1 = v3 + 16;
      v5 = v4 ? v1 : 0;
    }

    while (v5 && v5 != v2);
  }

  return result;
}

uint64_t spu_log_device_time_to_mach_time(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t *a4)
{
  v8 = *MEMORY[0x29EDBB110];
  v9 = IOServiceMatching("AppleSPUTimesync");
  MatchingService = IOServiceGetMatchingService(v8, v9);
  if (MatchingService)
  {
    v11 = MatchingService;
    v26 = 0;
    valuePtr = 0;
    v24 = 0;
    v25 = 0;
    CFProperty = IORegistryEntryCreateCFProperty(MatchingService, @"timesync", *MEMORY[0x29EDB8ED8], 0);
    if (CFProperty)
    {
      v13 = CFProperty;
      Value = CFDictionaryGetValue(CFProperty, @"ap");
      v15 = CFNumberGetValue(Value, kCFNumberLongLongType, &valuePtr);
      v16 = CFDictionaryGetValue(v13, @"ap-cont");
      v17 = CFNumberGetValue(v16, kCFNumberLongLongType, &v26) & v15;
      v18 = CFDictionaryGetValue(v13, @"spu");
      v19 = CFNumberGetValue(v18, kCFNumberLongLongType, &v25);
      v20 = CFDictionaryGetValue(v13, @"calendar");
      v21 = v19 & CFNumberGetValue(v20, kCFNumberLongLongType, &v24);
      if (a2)
      {
        *a2 = valuePtr + 1000 * a1 - v25;
      }

      v22 = v17 & v21;
      if (a3)
      {
        *a3 = v26 + 1000 * a1 - v25;
      }

      if (a4)
      {
        *a4 = v24 + 1000 * a1 - v25;
      }

      CFRelease(v13);
    }

    else
    {
      sub_29D41B0A0();
      v22 = 0;
    }

    IOObjectRelease(v11);
  }

  else
  {
    sub_29D41B0F8();
    v22 = 0;
  }

  return v22 & 1;
}

uint64_t spu_log_calendar_time_to_walltime(unint64_t a1, char *a2, size_t a3)
{
  v7 = a1 / 0x3B9ACA00;
  v5 = localtime(&v7);
  strftime(a2, a3, "%b %d %T", v5);
  return 1;
}

unint64_t spu_log_ns_to_mach_time(unint64_t a1)
{
  v2 = *&qword_2A17A28D0;
  if (*&qword_2A17A28D0 == 0.0)
  {
    mach_timebase_info(&info);
    LODWORD(v3) = info.numer;
    LODWORD(v4) = info.denom;
    v2 = v3 / v4;
    qword_2A17A28D0 = *&v2;
  }

  return (a1 / v2);
}