void sub_2617F5EE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, ...)
{
  va_start(va, a9);
  __cxa_free_exception(v10);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  applesauce::CF::StringRef::~StringRef(v9);
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

void rf::UserDefaults::getValue(CFStringRef *a1@<X0>, const UInt8 *a2@<X1>, CFPropertyListRef *a3@<X8>)
{
  v3 = a2;
  v6 = a2[23];
  if ((v6 & 0x80u) != 0)
  {
    a2 = *a2;
  }

  if (a2)
  {
    v7 = *(v3 + 1);
    if ((v6 & 0x80u) == 0)
    {
      v8 = v6;
    }

    else
    {
      v8 = v7;
    }

    v9 = CFStringCreateWithBytes(0, a2, v8, 0x8000100u, 0);
    cf = v9;
    if (!v9)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }
  }

  else
  {
    v9 = 0;
    cf = 0;
  }

  *a3 = CFPreferencesCopyAppValue(v9, *a1);
  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_2617F603C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  _Unwind_Resume(a1);
}

const void **applesauce::CF::ObjectRef<void const*>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t rf::UserDefaults::BOOLValue(CFStringRef *a1, const UInt8 *a2)
{
  rf::UserDefaults::getValue(a1, a2, &cf);
  v2 = cf;
  if (cf)
  {
    v3 = CFGetTypeID(cf);
    if (v3 == CFNumberGetTypeID() || v3 == CFBooleanGetTypeID())
    {
      valuePtr = 0;
      CFNumberGetValue(v2, kCFNumberIntType, &valuePtr);
      v4 = valuePtr != 0;
      v5 = 1;
    }

    else
    {
      v5 = 0;
      v4 = 0;
    }

    CFRelease(v2);
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  return v4 | (v5 << 8);
}

void sub_2617F6150(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(va);
  _Unwind_Resume(a1);
}

uint64_t rf::UserDefaults::intValue(CFStringRef *a1, const UInt8 *a2)
{
  rf::UserDefaults::getValue(a1, a2, &cf);
  v2 = cf;
  if (!cf)
  {
    return 0;
  }

  v3 = CFGetTypeID(cf);
  if (v3 == CFNumberGetTypeID())
  {
    v6 = 0;
    CFNumberGetValue(v2, kCFNumberLongLongType, &v6);
    v4 = v6;
  }

  else
  {
    v4 = 0;
  }

  CFRelease(v2);
  return v4;
}

void sub_2617F6204(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(va);
  _Unwind_Resume(a1);
}

uint64_t rf::UserDefaults::uintValue(CFStringRef *a1, const UInt8 *a2)
{
  rf::UserDefaults::getValue(a1, a2, &cf);
  v2 = cf;
  if (!cf)
  {
    return 0;
  }

  v3 = CFGetTypeID(cf);
  if (v3 == CFNumberGetTypeID())
  {
    v6 = 0;
    CFNumberGetValue(v2, kCFNumberLongLongType, &v6);
    v4 = v6;
  }

  else
  {
    v4 = 0;
  }

  CFRelease(v2);
  return v4;
}

void sub_2617F62B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(va);
  _Unwind_Resume(a1);
}

uint64_t rf::UserDefaults::floatValue(CFStringRef *a1, const UInt8 *a2)
{
  rf::UserDefaults::getValue(a1, a2, &cf);
  v2 = cf;
  if (cf)
  {
    v3 = CFGetTypeID(cf);
    if (v3 == CFNumberGetTypeID())
    {
      valuePtr = 0;
      CFNumberGetValue(v2, kCFNumberFloatType, &valuePtr);
      v4 = valuePtr;
      v5 = 0x100000000;
    }

    else
    {
      v5 = 0;
      v4 = 0;
    }

    CFRelease(v2);
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  return v5 & 0x100000000 | v4;
}

void sub_2617F6370(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(va);
  _Unwind_Resume(a1);
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

uint64_t *std::vector<unsigned char>::vector[abi:ne200100](uint64_t *a1, uint64_t a2, unsigned __int8 *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<unsigned char>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_2617F6424(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<unsigned char>::__vallocate[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

unint64_t applesauce::CF::details::CFString_get_value<true>@<X0>(const __CFString *a1@<X0>, _BYTE *a2@<X8>)
{
  CStringPtr = CFStringGetCStringPtr(a1, 0x8000100u);
  if (CStringPtr)
  {
    v5 = CStringPtr;
    result = strlen(CStringPtr);
    if (result <= 0x7FFFFFFFFFFFFFF7)
    {
      v7 = result;
      if (result >= 0x17)
      {
        operator new();
      }

      a2[23] = result;
      if (result)
      {
        result = memmove(a2, v5, result);
      }

      a2[v7] = 0;
      return result;
    }

LABEL_19:
    std::string::__throw_length_error[abi:ne200100]();
  }

  Length = CFStringGetLength(a1);
  maxBufLen = 0;
  v12.location = 0;
  v12.length = Length;
  CFStringGetBytes(a1, v12, 0x8000100u, 0, 0, 0, 0, &maxBufLen);
  v9 = maxBufLen;
  if (maxBufLen > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_19;
  }

  if (maxBufLen >= 0x17)
  {
    operator new();
  }

  a2[23] = maxBufLen;
  if (v9)
  {
    bzero(a2, v9);
  }

  a2[v9] = 0;
  if (a2[23] >= 0)
  {
    v10 = a2;
  }

  else
  {
    v10 = *a2;
  }

  v13.location = 0;
  v13.length = Length;
  return CFStringGetBytes(a1, v13, 0x8000100u, 0, 0, v10, maxBufLen, &maxBufLen);
}

void sub_2617F6644(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t rf::data_flow::validateAnchor(uint64_t a1)
{
  v1 = *(a1 + 256);
  if (v1 == -1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  v4 = &v3;
  return (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8ne200100INS1_9__variant15__value_visitorIZN2rf9data_flow14validateAnchorERKNS_7variantIJNS7_12CustomAnchorENS7_11PlaneAnchorENS7_11ImageAnchorENS7_12ObjectAnchorENS7_10FaceAnchorENS7_10BodyAnchorEEEEE3__0EEJRKNS0_6__implIJS9_SA_SB_SC_SD_SE_EEEEEEDcOT_DpOT0____fmatrix[v1])(&v4, a1);
}

float32_t std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<rf::data_flow::validateAnchor(std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const&)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const&>(double a1, double a2, __n128 a3, uint64_t a4, float32x4_t *a5)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = vaddvq_s32(vbicq_s8(xmmword_2618622F0, vceqq_f32(a5[4], a5[4]))) & 0xF;
  if (vaddvq_s16(vbicq_s8(xmmword_2618622E0, vuzp1q_s16(vceqq_f32(a5[2], a5[2]), vceqq_f32(a5[3], a5[3])))))
  {
    v6 = 0;
  }

  else
  {
    v6 = v5 == 0;
  }

  if (!v6)
  {
    v13 = a5;
    rf::data_flow::validateBaseAnchorProperty<rf::data_flow::CustomAnchor>(rf::data_flow::CustomAnchor const&)::{lambda(void)#1}::operator()(__p, &v13);
    rf::internal::logAssert(__p);
    if (v17 < 0)
    {
      operator delete(__p[0]);
    }

    rf::internal::debugBreakHandler(v9);
    v15 = 0;
    memset(v20, 0, sizeof(v20));
    v10 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    rf::data_flow::validateBaseAnchorProperty<rf::data_flow::CustomAnchor>(rf::data_flow::CustomAnchor const&)::{lambda(void)#1}::operator()(&v14, &v13);
    if (v10)
    {
      v11 = 3;
    }

    else
    {
      v11 = 2;
    }

    if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v12 = &v14;
    }

    else
    {
      v12 = v14.__r_.__value_.__r.__words[0];
    }

    v18 = 136315138;
    v19 = v12;
    _os_log_send_and_compose_impl(v11, &v15, v20, 80, &dword_2617CB000, MEMORY[0x277D86220], 16, "RealityFusion Assert Fatal: %s", &v18);
    std::string::~string(&v14);
    _os_crash_msg();
    __break(1u);
  }

  result = a5[5].f32[3];
  v13 = a5;
  return result;
}

void sub_2617F685C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

float32_t std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<rf::data_flow::validateAnchor(std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const&)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const&>(double a1, double a2, double a3, __n128 a4, __n128 a5, uint64_t a6, float32x4_t *a7)
{
  v7 = &v36;
  v41 = *MEMORY[0x277D85DE8];
  v8 = vaddvq_s32(vbicq_s8(xmmword_2618622F0, vceqq_f32(a7[4], a7[4]))) & 0xF;
  if (vaddvq_s16(vbicq_s8(xmmword_2618622E0, vuzp1q_s16(vceqq_f32(a7[2], a7[2]), vceqq_f32(a7[3], a7[3])))))
  {
    v9 = 0;
  }

  else
  {
    v9 = v8 == 0;
  }

  if (!v9)
  {
    v29 = a7;
    rf::data_flow::validateBaseAnchorProperty<rf::data_flow::PlaneAnchor>(rf::data_flow::PlaneAnchor const&)::{lambda(void)#1}::operator()(__p, &v29);
    rf::internal::logAssert(__p);
    if (v33 < 0)
    {
      operator delete(__p[0]);
    }

    rf::internal::debugBreakHandler(v15);
    v31 = 0;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v36 = 0u;
    v16 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    rf::data_flow::validateBaseAnchorProperty<rf::data_flow::PlaneAnchor>(rf::data_flow::PlaneAnchor const&)::{lambda(void)#1}::operator()(&v30, &v29);
    if (v16)
    {
      v17 = 3;
    }

    else
    {
      v17 = 2;
    }

    if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v18 = &v30;
    }

    else
    {
      v18 = v30.__r_.__value_.__r.__words[0];
    }

    v34 = 136315138;
    v35 = v18;
    v7 = _os_log_send_and_compose_impl(v17, &v31, &v36, 80, &dword_2617CB000, MEMORY[0x277D86220], 16, "RealityFusion Assert Fatal: %s", &v34);
    std::string::~string(&v30);
    _os_crash_msg();
    __break(1u);
LABEL_25:
    v29 = a7;
    rf::data_flow::validateAnchor(rf::data_flow::PlaneAnchor const&)::$_0::operator()(__p, &v29);
    rf::internal::logAssert(__p);
    if (v33 < 0)
    {
      operator delete(__p[0]);
    }

    rf::internal::debugBreakHandler(v19);
    v31 = 0;
    v7[3] = 0u;
    v7[4] = 0u;
    v37 = 0u;
    v38 = 0u;
    v36 = 0u;
    v20 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    rf::data_flow::validateAnchor(rf::data_flow::PlaneAnchor const&)::$_0::operator()(&v30, &v29);
    if (v20)
    {
      v21 = 3;
    }

    else
    {
      v21 = 2;
    }

    if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v22 = &v30;
    }

    else
    {
      v22 = v30.__r_.__value_.__r.__words[0];
    }

    v34 = 136315138;
    v35 = v22;
    v23 = _os_log_send_and_compose_impl(v21, &v31, &v36, 80, &dword_2617CB000, MEMORY[0x277D86220], 16, "RealityFusion Assert Fatal: %s", &v34);
    std::string::~string(&v30);
    _os_crash_msg();
    __break(1u);
    v29 = v24;
    rf::data_flow::validateAnchor(rf::data_flow::PlaneAnchor const&)::$_1::operator()(__p, &v29);
    rf::internal::logAssert(__p);
    if (v33 < 0)
    {
      operator delete(__p[0]);
    }

    rf::internal::debugBreakHandler(v25);
    v31 = 0;
    *(v23 + 48) = 0u;
    *(v23 + 64) = 0u;
    v37 = 0u;
    v38 = 0u;
    v36 = 0u;
    v26 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    rf::data_flow::validateAnchor(rf::data_flow::PlaneAnchor const&)::$_1::operator()(&v30, &v29);
    if (v26)
    {
      v27 = 3;
    }

    else
    {
      v27 = 2;
    }

    if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v28 = &v30;
    }

    else
    {
      v28 = v30.__r_.__value_.__r.__words[0];
    }

    v34 = 136315138;
    v35 = v28;
    _os_log_send_and_compose_impl(v27, &v31, &v36, 80, &dword_2617CB000, MEMORY[0x277D86220], 16, "RealityFusion Assert Fatal: %s", &v34);
    std::string::~string(&v30);
    _os_crash_msg();
    __break(1u);
  }

  v29 = a7;
  v11 = vaddvq_s32(vbicq_s8(xmmword_2618622F0, vceqq_f32(a7[10], a7[10]))) & 0xF;
  if (vaddvq_s16(vbicq_s8(xmmword_2618622E0, vuzp1q_s16(vceqq_f32(a7[8], a7[8]), vceqq_f32(a7[9], a7[9])))))
  {
    v12 = 0;
  }

  else
  {
    v12 = v11 == 0;
  }

  if (!v12)
  {
    goto LABEL_25;
  }

  v29 = a7;
  result = a7[12].f32[2];
  v29 = a7;
  return result;
}

void sub_2617F6C90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

float32_t std::__variant_detail::__visitation::__base::__dispatcher<2ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<rf::data_flow::validateAnchor(std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const&)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const&>(double a1, double a2, __n128 a3, uint64_t a4, float32x4_t *a5)
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = vaddvq_s32(vbicq_s8(xmmword_2618622F0, vceqq_f32(a5[4], a5[4]))) & 0xF;
  if (vaddvq_s16(vbicq_s8(xmmword_2618622E0, vuzp1q_s16(vceqq_f32(a5[2], a5[2]), vceqq_f32(a5[3], a5[3])))))
  {
    v6 = 0;
  }

  else
  {
    v6 = v5 == 0;
  }

  if (!v6)
  {
    v19 = a5;
    rf::data_flow::validateBaseAnchorProperty<rf::data_flow::ImageAnchor>(rf::data_flow::ImageAnchor const&)::{lambda(void)#1}::operator()(__p, &v19);
    rf::internal::logAssert(__p);
    if (v23 < 0)
    {
      operator delete(__p[0]);
    }

    rf::internal::debugBreakHandler(v9);
    v21 = 0;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v26 = 0u;
    v10 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    rf::data_flow::validateBaseAnchorProperty<rf::data_flow::ImageAnchor>(rf::data_flow::ImageAnchor const&)::{lambda(void)#1}::operator()(&v20, &v19);
    if (v10)
    {
      v11 = 3;
    }

    else
    {
      v11 = 2;
    }

    if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v12 = &v20;
    }

    else
    {
      v12 = v20.__r_.__value_.__r.__words[0];
    }

    v24 = 136315138;
    v25 = v12;
    v13 = _os_log_send_and_compose_impl(v11, &v21, &v26, 80, &dword_2617CB000, MEMORY[0x277D86220], 16, "RealityFusion Assert Fatal: %s", &v24);
    std::string::~string(&v20);
    _os_crash_msg();
    __break(1u);
    v19 = v14;
    rf::data_flow::validateAnchor(rf::data_flow::ImageAnchor const&)::$_0::operator()(__p, &v19);
    rf::internal::logAssert(__p);
    if (v23 < 0)
    {
      operator delete(__p[0]);
    }

    rf::internal::debugBreakHandler(v15);
    v21 = 0;
    *(v13 + 48) = 0u;
    *(v13 + 64) = 0u;
    v27 = 0u;
    v28 = 0u;
    v26 = 0u;
    v16 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    rf::data_flow::validateAnchor(rf::data_flow::ImageAnchor const&)::$_0::operator()(&v20, &v19);
    if (v16)
    {
      v17 = 3;
    }

    else
    {
      v17 = 2;
    }

    if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v18 = &v20;
    }

    else
    {
      v18 = v20.__r_.__value_.__r.__words[0];
    }

    v24 = 136315138;
    v25 = v18;
    _os_log_send_and_compose_impl(v17, &v21, &v26, 80, &dword_2617CB000, MEMORY[0x277D86220], 16, "RealityFusion Assert Fatal: %s", &v24);
    std::string::~string(&v20);
    _os_crash_msg();
    __break(1u);
  }

  v19 = a5;
  result = a5[12].f32[2];
  v19 = a5;
  return result;
}

void sub_2617F6F78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(a16);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

float32_t std::__variant_detail::__visitation::__base::__dispatcher<3ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<rf::data_flow::validateAnchor(std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const&)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const&>(double a1, double a2, __n128 a3, uint64_t a4, float32x4_t *a5)
{
  v37 = *MEMORY[0x277D85DE8];
  v5 = vaddvq_s32(vbicq_s8(xmmword_2618622F0, vceqq_f32(a5[4], a5[4]))) & 0xF;
  if (vaddvq_s16(vbicq_s8(xmmword_2618622E0, vuzp1q_s16(vceqq_f32(a5[2], a5[2]), vceqq_f32(a5[3], a5[3])))))
  {
    v6 = 0;
  }

  else
  {
    v6 = v5 == 0;
  }

  if (!v6)
  {
    v25 = a5;
    rf::data_flow::validateBaseAnchorProperty<rf::data_flow::ObjectAnchor>(rf::data_flow::ObjectAnchor const&)::{lambda(void)#1}::operator()(__p, &v25);
    rf::internal::logAssert(__p);
    if (v29 < 0)
    {
      operator delete(__p[0]);
    }

    rf::internal::debugBreakHandler(v9);
    v27 = 0;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v32 = 0u;
    v10 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    rf::data_flow::validateBaseAnchorProperty<rf::data_flow::ObjectAnchor>(rf::data_flow::ObjectAnchor const&)::{lambda(void)#1}::operator()(&v26, &v25);
    if (v10)
    {
      v11 = 3;
    }

    else
    {
      v11 = 2;
    }

    if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v12 = &v26;
    }

    else
    {
      v12 = v26.__r_.__value_.__r.__words[0];
    }

    v30 = 136315138;
    v31 = v12;
    v13 = _os_log_send_and_compose_impl(v11, &v27, &v32, 80, &dword_2617CB000, MEMORY[0x277D86220], 16, "RealityFusion Assert Fatal: %s", &v30);
    std::string::~string(&v26);
    _os_crash_msg();
    __break(1u);
    v25 = v14;
    rf::data_flow::validateAnchor(rf::data_flow::ObjectAnchor const&)::$_0::operator()(__p, &v25);
    rf::internal::logAssert(__p);
    if (v29 < 0)
    {
      operator delete(__p[0]);
    }

    rf::internal::debugBreakHandler(v15);
    v27 = 0;
    *(v13 + 48) = 0u;
    *(v13 + 64) = 0u;
    v33 = 0u;
    v34 = 0u;
    v32 = 0u;
    v16 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    rf::data_flow::validateAnchor(rf::data_flow::ObjectAnchor const&)::$_0::operator()(&v26, &v25);
    if (v16)
    {
      v17 = 3;
    }

    else
    {
      v17 = 2;
    }

    if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v18 = &v26;
    }

    else
    {
      v18 = v26.__r_.__value_.__r.__words[0];
    }

    v30 = 136315138;
    v31 = v18;
    v19 = _os_log_send_and_compose_impl(v17, &v27, &v32, 80, &dword_2617CB000, MEMORY[0x277D86220], 16, "RealityFusion Assert Fatal: %s", &v30);
    std::string::~string(&v26);
    _os_crash_msg();
    __break(1u);
    v25 = v20;
    rf::data_flow::validateAnchor(rf::data_flow::ObjectAnchor const&)::$_1::operator()(__p, &v25);
    rf::internal::logAssert(__p);
    if (v29 < 0)
    {
      operator delete(__p[0]);
    }

    rf::internal::debugBreakHandler(v21);
    v27 = 0;
    *(v19 + 48) = 0u;
    *(v19 + 64) = 0u;
    v33 = 0u;
    v34 = 0u;
    v32 = 0u;
    v22 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    rf::data_flow::validateAnchor(rf::data_flow::ObjectAnchor const&)::$_1::operator()(&v26, &v25);
    if (v22)
    {
      v23 = 3;
    }

    else
    {
      v23 = 2;
    }

    if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v24 = &v26;
    }

    else
    {
      v24 = v26.__r_.__value_.__r.__words[0];
    }

    v30 = 136315138;
    v31 = v24;
    _os_log_send_and_compose_impl(v23, &v27, &v32, 80, &dword_2617CB000, MEMORY[0x277D86220], 16, "RealityFusion Assert Fatal: %s", &v30);
    std::string::~string(&v26);
    _os_crash_msg();
    __break(1u);
  }

  v25 = a5;
  v25 = a5;
  result = a5[14].f32[2];
  v25 = a5;
  return result;
}

void sub_2617F7368(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

float32_t std::__variant_detail::__visitation::__base::__dispatcher<4ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<rf::data_flow::validateAnchor(std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const&)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const&>(double a1, double a2, double a3, __n128 a4, __n128 a5, uint64_t a6, float32x4_t *a7)
{
  v7 = &v37;
  v42 = *MEMORY[0x277D85DE8];
  v8 = vaddvq_s32(vbicq_s8(xmmword_2618622F0, vceqq_f32(a7[4], a7[4]))) & 0xF;
  if (vaddvq_s16(vbicq_s8(xmmword_2618622E0, vuzp1q_s16(vceqq_f32(a7[2], a7[2]), vceqq_f32(a7[3], a7[3])))))
  {
    v9 = 0;
  }

  else
  {
    v9 = v8 == 0;
  }

  if (!v9)
  {
    v30 = a7;
    rf::data_flow::validateBaseAnchorProperty<rf::data_flow::FaceAnchor>(rf::data_flow::FaceAnchor const&)::{lambda(void)#1}::operator()(__p, &v30);
    rf::internal::logAssert(__p);
    if (v34 < 0)
    {
      operator delete(__p[0]);
    }

    rf::internal::debugBreakHandler(v18);
    v32 = 0;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v37 = 0u;
    v19 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    rf::data_flow::validateBaseAnchorProperty<rf::data_flow::FaceAnchor>(rf::data_flow::FaceAnchor const&)::{lambda(void)#1}::operator()(&v31, &v30);
    if (v19)
    {
      v20 = 3;
    }

    else
    {
      v20 = 2;
    }

    if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v21 = &v31;
    }

    else
    {
      v21 = v31.__r_.__value_.__r.__words[0];
    }

    v35 = 136315138;
    v36 = v21;
    v7 = _os_log_send_and_compose_impl(v20, &v32, &v37, 80, &dword_2617CB000, MEMORY[0x277D86220], 16, "RealityFusion Assert Fatal: %s", &v35);
    std::string::~string(&v31);
    _os_crash_msg();
    __break(1u);
    goto LABEL_32;
  }

  v30 = a7;
  v11 = vaddvq_s32(vbicq_s8(xmmword_2618622F0, vceqq_f32(a7[10], a7[10]))) & 0xF;
  if (vaddvq_s16(vbicq_s8(xmmword_2618622E0, vuzp1q_s16(vceqq_f32(a7[8], a7[8]), vceqq_f32(a7[9], a7[9])))))
  {
    v12 = 0;
  }

  else
  {
    v12 = v11 == 0;
  }

  if (!v12)
  {
LABEL_32:
    v30 = a7;
    rf::data_flow::validateAnchor(rf::data_flow::FaceAnchor const&)::$_0::operator()(__p, &v30);
    rf::internal::logAssert(__p);
    if (v34 < 0)
    {
      operator delete(__p[0]);
    }

    rf::internal::debugBreakHandler(v22);
    v32 = 0;
    v7[3] = 0u;
    v7[4] = 0u;
    v38 = 0u;
    v39 = 0u;
    v37 = 0u;
    v23 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    rf::data_flow::validateAnchor(rf::data_flow::FaceAnchor const&)::$_0::operator()(&v31, &v30);
    if (v23)
    {
      v24 = 3;
    }

    else
    {
      v24 = 2;
    }

    if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v25 = &v31;
    }

    else
    {
      v25 = v31.__r_.__value_.__r.__words[0];
    }

    v35 = 136315138;
    v36 = v25;
    v7 = _os_log_send_and_compose_impl(v24, &v32, &v37, 80, &dword_2617CB000, MEMORY[0x277D86220], 16, "RealityFusion Assert Fatal: %s", &v35);
    std::string::~string(&v31);
    _os_crash_msg();
    __break(1u);
LABEL_41:
    v30 = a7;
    rf::data_flow::validateAnchor(rf::data_flow::FaceAnchor const&)::$_1::operator()(__p, &v30);
    rf::internal::logAssert(__p);
    if (v34 < 0)
    {
      operator delete(__p[0]);
    }

    rf::internal::debugBreakHandler(v26);
    v32 = 0;
    v7[3] = 0u;
    v7[4] = 0u;
    v38 = 0u;
    v39 = 0u;
    v37 = 0u;
    v27 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    rf::data_flow::validateAnchor(rf::data_flow::FaceAnchor const&)::$_1::operator()(&v31, &v30);
    if (v27)
    {
      v28 = 3;
    }

    else
    {
      v28 = 2;
    }

    if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v29 = &v31;
    }

    else
    {
      v29 = v31.__r_.__value_.__r.__words[0];
    }

    v35 = 136315138;
    v36 = v29;
    _os_log_send_and_compose_impl(v28, &v32, &v37, 80, &dword_2617CB000, MEMORY[0x277D86220], 16, "RealityFusion Assert Fatal: %s", &v35);
    std::string::~string(&v31);
    _os_crash_msg();
    __break(1u);
  }

  v30 = a7;
  v14 = vaddvq_s32(vbicq_s8(xmmword_2618622F0, vceqq_f32(a7[14], a7[14]))) & 0xF;
  if (vaddvq_s16(vbicq_s8(xmmword_2618622E0, vuzp1q_s16(vceqq_f32(a7[12], a7[12]), vceqq_f32(a7[13], a7[13])))))
  {
    v15 = 0;
  }

  else
  {
    v15 = v14 == 0;
  }

  if (!v15)
  {
    goto LABEL_41;
  }

  result = a7[15].f32[3];
  v30 = a7;
  return result;
}

void sub_2617F77E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

float32_t std::__variant_detail::__visitation::__base::__dispatcher<5ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<rf::data_flow::validateAnchor(std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const&)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const&>(double a1, double a2, __n128 a3, uint64_t a4, float32x4_t *a5)
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = vaddvq_s32(vbicq_s8(xmmword_2618622F0, vceqq_f32(a5[4], a5[4]))) & 0xF;
  if (vaddvq_s16(vbicq_s8(xmmword_2618622E0, vuzp1q_s16(vceqq_f32(a5[2], a5[2]), vceqq_f32(a5[3], a5[3])))))
  {
    v6 = 0;
  }

  else
  {
    v6 = v5 == 0;
  }

  if (!v6)
  {
    v18 = a5;
    rf::data_flow::validateBaseAnchorProperty<rf::data_flow::BodyAnchor>(rf::data_flow::BodyAnchor const&)::{lambda(void)#1}::operator()(__p, &v18);
    rf::internal::logAssert(__p);
    if (v22 < 0)
    {
      operator delete(__p[0]);
    }

    rf::internal::debugBreakHandler(v9);
    v20 = 0;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v25 = 0u;
    v10 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    rf::data_flow::validateBaseAnchorProperty<rf::data_flow::BodyAnchor>(rf::data_flow::BodyAnchor const&)::{lambda(void)#1}::operator()(&v19, &v18);
    if (v10)
    {
      v11 = 3;
    }

    else
    {
      v11 = 2;
    }

    if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v12 = &v19;
    }

    else
    {
      v12 = v19.__r_.__value_.__r.__words[0];
    }

    v23 = 136315138;
    v24 = v12;
    v13 = _os_log_send_and_compose_impl(v11, &v20, &v25, 80, &dword_2617CB000, MEMORY[0x277D86220], 16, "RealityFusion Assert Fatal: %s", &v23);
    std::string::~string(&v19);
    _os_crash_msg();
    __break(1u);
    rf::data_flow::validateAnchor(rf::data_flow::BodyAnchor const&)::$_0::operator()(__p, &v18);
    rf::internal::logAssert(__p);
    if (v22 < 0)
    {
      operator delete(__p[0]);
    }

    rf::internal::debugBreakHandler(v14);
    v20 = 0;
    *(v13 + 48) = 0u;
    *(v13 + 64) = 0u;
    v26 = 0u;
    v27 = 0u;
    v25 = 0u;
    v15 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    rf::data_flow::validateAnchor(rf::data_flow::BodyAnchor const&)::$_0::operator()(&v19, &v18);
    if (v15)
    {
      v16 = 3;
    }

    else
    {
      v16 = 2;
    }

    if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v17 = &v19;
    }

    else
    {
      v17 = v19.__r_.__value_.__r.__words[0];
    }

    v23 = 136315138;
    v24 = v17;
    _os_log_send_and_compose_impl(v16, &v20, &v25, 80, &dword_2617CB000, MEMORY[0x277D86220], 16, "RealityFusion Assert Fatal: %s", &v23);
    std::string::~string(&v19);
    _os_crash_msg();
    __break(1u);
  }

  v18 = a5;
  result = a5[8].f32[0];
  v18 = a5;
  return result;
}

void sub_2617F7ABC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(a16);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void rf::data_flow::validateBaseAnchorProperty<rf::data_flow::CustomAnchor>(rf::data_flow::CustomAnchor const&)::{lambda(void)#1}::operator()(void *a1, rf::data_flow::RFUUID **a2)
{
  rf::data_flow::RFUUID::string(__p, *a2);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  v4 = 1;
  v5 = 114;
  v6 = "f::data_flow::CustomAnchor]";
  v7 = "rf::data_flow::CustomAnchor]";
  while (v5 == 91)
  {
    v8 = 1;
LABEL_10:
    v4 += v8;
    if (!v4)
    {
      goto LABEL_12;
    }

LABEL_11:
    v9 = *v6++;
    v5 = v9;
  }

  if (v5 == 93)
  {
    v8 = -1;
    goto LABEL_10;
  }

  if (v5)
  {
    goto LABEL_11;
  }

  v7 = 0;
LABEL_12:
  rf::data_flow::RFUUID::string(__p, *a2);
  if (v12 >= 0)
  {
    v10 = __p;
  }

  else
  {
    v10 = __p[0];
  }

  rf::getMessage("%s %s cannot contain NaN transform", a1, v7, v10);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_2617F7BCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void rf::data_flow::validateBaseAnchorProperty<rf::data_flow::PlaneAnchor>(rf::data_flow::PlaneAnchor const&)::{lambda(void)#1}::operator()(void *a1, rf::data_flow::RFUUID **a2)
{
  rf::data_flow::RFUUID::string(__p, *a2);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  v4 = 1;
  v5 = 114;
  v6 = "f::data_flow::PlaneAnchor]";
  v7 = "rf::data_flow::PlaneAnchor]";
  while (v5 == 91)
  {
    v8 = 1;
LABEL_10:
    v4 += v8;
    if (!v4)
    {
      goto LABEL_12;
    }

LABEL_11:
    v9 = *v6++;
    v5 = v9;
  }

  if (v5 == 93)
  {
    v8 = -1;
    goto LABEL_10;
  }

  if (v5)
  {
    goto LABEL_11;
  }

  v7 = 0;
LABEL_12:
  rf::data_flow::RFUUID::string(__p, *a2);
  if (v12 >= 0)
  {
    v10 = __p;
  }

  else
  {
    v10 = __p[0];
  }

  rf::getMessage("%s %s cannot contain NaN transform", a1, v7, v10);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_2617F7CD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void rf::data_flow::validateBaseAnchorProperty<rf::data_flow::ImageAnchor>(rf::data_flow::ImageAnchor const&)::{lambda(void)#1}::operator()(void *a1, rf::data_flow::RFUUID **a2)
{
  rf::data_flow::RFUUID::string(__p, *a2);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  v4 = 1;
  v5 = 114;
  v6 = "f::data_flow::ImageAnchor]";
  v7 = "rf::data_flow::ImageAnchor]";
  while (v5 == 91)
  {
    v8 = 1;
LABEL_10:
    v4 += v8;
    if (!v4)
    {
      goto LABEL_12;
    }

LABEL_11:
    v9 = *v6++;
    v5 = v9;
  }

  if (v5 == 93)
  {
    v8 = -1;
    goto LABEL_10;
  }

  if (v5)
  {
    goto LABEL_11;
  }

  v7 = 0;
LABEL_12:
  rf::data_flow::RFUUID::string(__p, *a2);
  if (v12 >= 0)
  {
    v10 = __p;
  }

  else
  {
    v10 = __p[0];
  }

  rf::getMessage("%s %s cannot contain NaN transform", a1, v7, v10);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_2617F7DD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void rf::data_flow::validateBaseAnchorProperty<rf::data_flow::ObjectAnchor>(rf::data_flow::ObjectAnchor const&)::{lambda(void)#1}::operator()(void *a1, rf::data_flow::RFUUID **a2)
{
  rf::data_flow::RFUUID::string(__p, *a2);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  v4 = 1;
  v5 = 114;
  v6 = "f::data_flow::ObjectAnchor]";
  v7 = "rf::data_flow::ObjectAnchor]";
  while (v5 == 91)
  {
    v8 = 1;
LABEL_10:
    v4 += v8;
    if (!v4)
    {
      goto LABEL_12;
    }

LABEL_11:
    v9 = *v6++;
    v5 = v9;
  }

  if (v5 == 93)
  {
    v8 = -1;
    goto LABEL_10;
  }

  if (v5)
  {
    goto LABEL_11;
  }

  v7 = 0;
LABEL_12:
  rf::data_flow::RFUUID::string(__p, *a2);
  if (v12 >= 0)
  {
    v10 = __p;
  }

  else
  {
    v10 = __p[0];
  }

  rf::getMessage("%s %s cannot contain NaN transform", a1, v7, v10);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_2617F7ED8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void rf::data_flow::validateBaseAnchorProperty<rf::data_flow::FaceAnchor>(rf::data_flow::FaceAnchor const&)::{lambda(void)#1}::operator()(void *a1, rf::data_flow::RFUUID **a2)
{
  rf::data_flow::RFUUID::string(__p, *a2);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  v4 = 1;
  v5 = 114;
  v6 = "f::data_flow::FaceAnchor]";
  v7 = "rf::data_flow::FaceAnchor]";
  while (v5 == 91)
  {
    v8 = 1;
LABEL_10:
    v4 += v8;
    if (!v4)
    {
      goto LABEL_12;
    }

LABEL_11:
    v9 = *v6++;
    v5 = v9;
  }

  if (v5 == 93)
  {
    v8 = -1;
    goto LABEL_10;
  }

  if (v5)
  {
    goto LABEL_11;
  }

  v7 = 0;
LABEL_12:
  rf::data_flow::RFUUID::string(__p, *a2);
  if (v12 >= 0)
  {
    v10 = __p;
  }

  else
  {
    v10 = __p[0];
  }

  rf::getMessage("%s %s cannot contain NaN transform", a1, v7, v10);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_2617F7FDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void rf::data_flow::validateBaseAnchorProperty<rf::data_flow::BodyAnchor>(rf::data_flow::BodyAnchor const&)::{lambda(void)#1}::operator()(void *a1, rf::data_flow::RFUUID **a2)
{
  rf::data_flow::RFUUID::string(__p, *a2);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  v4 = 1;
  v5 = 114;
  v6 = "f::data_flow::BodyAnchor]";
  v7 = "rf::data_flow::BodyAnchor]";
  while (v5 == 91)
  {
    v8 = 1;
LABEL_10:
    v4 += v8;
    if (!v4)
    {
      goto LABEL_12;
    }

LABEL_11:
    v9 = *v6++;
    v5 = v9;
  }

  if (v5 == 93)
  {
    v8 = -1;
    goto LABEL_10;
  }

  if (v5)
  {
    goto LABEL_11;
  }

  v7 = 0;
LABEL_12:
  rf::data_flow::RFUUID::string(__p, *a2);
  if (v12 >= 0)
  {
    v10 = __p;
  }

  else
  {
    v10 = __p[0];
  }

  rf::getMessage("%s %s cannot contain NaN transform", a1, v7, v10);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_2617F80E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void rf::data_flow::validateAnchor(rf::data_flow::PlaneAnchor const&)::$_0::operator()(void *a1, rf::data_flow::RFUUID **a2)
{
  rf::data_flow::RFUUID::string(__p, *a2);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  rf::data_flow::RFUUID::string(__p, *a2);
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  rf::getMessage("Plane anchor %s center transform cannot contain NaN", a1, v4);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_2617F8190(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void rf::data_flow::validateAnchor(rf::data_flow::PlaneAnchor const&)::$_1::operator()(void *a1, rf::data_flow::RFUUID **a2)
{
  rf::data_flow::RFUUID::string(__p, *a2);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  rf::data_flow::RFUUID::string(__p, *a2);
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  rf::getMessage("Plane anchor %s extent cannot contain NaN", a1, v4);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_2617F8240(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void rf::data_flow::validateAnchor(rf::data_flow::ImageAnchor const&)::$_0::operator()(void *a1, rf::data_flow::RFUUID **a2)
{
  rf::data_flow::RFUUID::string(__p, *a2);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  rf::data_flow::RFUUID::string(__p, *a2);
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  rf::getMessage("Image anchor %s extent cannot contain NaN", a1, v4);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_2617F82F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void rf::data_flow::validateAnchor(rf::data_flow::ObjectAnchor const&)::$_0::operator()(void *a1, rf::data_flow::RFUUID **a2)
{
  rf::data_flow::RFUUID::string(__p, *a2);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  rf::data_flow::RFUUID::string(__p, *a2);
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  rf::getMessage("Object anchor %s center cannot contain NaN", a1, v4);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_2617F83A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void rf::data_flow::validateAnchor(rf::data_flow::ObjectAnchor const&)::$_1::operator()(void *a1, rf::data_flow::RFUUID **a2)
{
  rf::data_flow::RFUUID::string(__p, *a2);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  rf::data_flow::RFUUID::string(__p, *a2);
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  rf::getMessage("Object anchor %s extent cannot contain NaN", a1, v4);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_2617F8450(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void rf::data_flow::validateAnchor(rf::data_flow::FaceAnchor const&)::$_0::operator()(void *a1, rf::data_flow::RFUUID **a2)
{
  rf::data_flow::RFUUID::string(__p, *a2);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  rf::data_flow::RFUUID::string(__p, *a2);
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  rf::getMessage("Face anchor %s leftEye cannot contain NaN", a1, v4);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_2617F8500(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void rf::data_flow::validateAnchor(rf::data_flow::FaceAnchor const&)::$_1::operator()(void *a1, rf::data_flow::RFUUID **a2)
{
  rf::data_flow::RFUUID::string(__p, *a2);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  rf::data_flow::RFUUID::string(__p, *a2);
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  rf::getMessage("Face anchor %s rightEye cannot contain NaN", a1, v4);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_2617F85B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void rf::data_flow::validateAnchor(rf::data_flow::BodyAnchor const&)::$_0::operator()(void *a1, rf::data_flow::RFUUID **a2)
{
  rf::data_flow::RFUUID::string(__p, *a2);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  rf::data_flow::RFUUID::string(__p, *a2);
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  rf::getMessage("Body anchor %s estimatedScaleFactor cannot contain NaN", a1, v4);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_2617F8660(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void rf::CoordinateSpaceTracker::~CoordinateSpaceTracker(rf::CoordinateSpaceTracker *this)
{
  if (*this)
  {
    EventBus = REEngineGetEventBus();
    v3 = *(this + 1);
    v4 = *(this + 2);
    if (v3 != v4)
    {
      v5 = EventBus;
      do
      {
        MEMORY[0x26670C440](v5, *v3, v3[1]);
        v3 += 2;
      }

      while (v3 != v4);
    }

    for (i = *(this + 6); i; i = *i)
    {
      v7 = RESceneGetEventBus();
      v8 = i[3];
      v9 = i[4];
      if (v8 != v9)
      {
        v10 = v7;
        do
        {
          MEMORY[0x26670C440](v10, *v8, v8[1]);
          v8 += 2;
        }

        while (v8 != v9);
      }
    }
  }

  v11 = *(this + 6);
  if (v11)
  {
    do
    {
      v12 = *v11;
      v13 = v11[3];
      if (v13)
      {
        v11[4] = v13;
        operator delete(v13);
      }

      operator delete(v11);
      v11 = v12;
    }

    while (v12);
  }

  v14 = *(this + 4);
  *(this + 4) = 0;
  if (v14)
  {
    operator delete(v14);
  }

  v15 = *(this + 1);
  if (v15)
  {
    *(this + 2) = v15;
    operator delete(v15);
  }
}

uint64_t rf::CoordinateSpaceTracker::findCoordinateSpaceDefinitionEntity(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  Parent = REEntityGetParent();
  if (!Parent)
  {
    return 0;
  }

  v2 = Parent;
  v3 = 0;
  do
  {
    RECoordinateSpaceDefinitionComponentGetComponentType();
    if (REEntityGetComponentByClass())
    {
      v3 = v2;
    }

    v2 = REEntityGetParent();
  }

  while (v2);
  return v3;
}

uint64_t rf::data_flow::consumer::EntitiesProcessor::createNewMeshEntity(uint64_t *a1, uint64_t a2, __n128 **a3, uint64_t a4, uint64_t *a5)
{
  v5 = a4;
  *a1 = REEntityCreate();
  std::to_string(&v19, *(a2 + 32));
  v8 = std::string::insert(&v19, 0, "Mesh Entity ", 0xCuLL);
  v9 = *&v8->__r_.__value_.__l.__data_;
  v20.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v20.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  v10 = std::string::append(&v20, " ", 1uLL);
  v11 = *&v10->__r_.__value_.__l.__data_;
  v21.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
  *&v21.__r_.__value_.__l.__data_ = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&__p, v5);
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
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  v14 = std::string::append(&v21, p_p, size);
  v15 = *&v14->__r_.__value_.__l.__data_;
  v23 = v14->__r_.__value_.__r.__words[2];
  v22 = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  REEntitySetName();
  if (SHIBYTE(v23) < 0)
  {
    operator delete(v22);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }

  RETransformComponentGetComponentType();
  REEntityAddComponentByClass();
  RETransformComponentSetWorldMatrix4x4F();
  RESceneUnderstandingComponentGetComponentType();
  REEntityAddComponentByClass();
  v16 = rf::data_flow::RFUUID::asNSUUID(*a3);
  RESceneUnderstandingComponentSetIdentifier();

  RESceneUnderstandingComponentSetEntityType();
  REAnchorComponentGetComponentType();
  REEntityAddComponentByClass();
  REAnchorComponentSetAnchorIdentifier();
  return REAnchorComponentSetAnchoredLocally();
}

void rf::data_flow::consumer::EntitiesProcessor::addNewMeshEntitiesToScene(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v23 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v5 = a3;
    do
    {
      v8 = v5[6];
      v7 = v5[7];
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!v8)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v7);
          return;
        }

        v16 = v8;
        v17 = v7;
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      else
      {
        if (!v8)
        {
          return;
        }

        v16 = v5[6];
        v17 = 0;
      }

      rf::data_flow::consumer::EntitiesProcessor::createNewMeshEntity(&v18, a1, &v16, a4, v8);
      if (v7)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      }

      ++*(a1 + 32);
      v9 = RESceneAddEntity();
      v10 = rf::realityFusionLogObject(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        Name = REEntityGetName();
        rf::data_flow::RFUUID::string(__p, v8);
        v12 = __p;
        if (v15 < 0)
        {
          v12 = __p[0];
        }

        *buf = 136315394;
        v20 = Name;
        v21 = 2082;
        v22 = v12;
        _os_log_impl(&dword_2617CB000, v10, OS_LOG_TYPE_DEFAULT, "MeshReconstructionConsumer: Adding entity %s with mesh %{public}s", buf, 0x16u);
        if (v15 < 0)
        {
          operator delete(__p[0]);
        }
      }

      if (*(a1 + 24) == 1)
      {
        RENetworkComponentGetComponentType();
        REEntityAddComponentByClass();
      }

      if (re::internal::enableSignposts(0, 0))
      {
        if (!v8[1].n128_u64[1])
        {
          if (v8[1].n128_u8[0])
          {
            v13 = v8->n128_u64[0];
          }

          else
          {
            v13 = v8;
          }

          v8[1].n128_u64[1] = ((v13->n128_u64[0] >> 2) + (v13->n128_u64[0] << 6) + v13->n128_u64[1] + 2654435769u) ^ v13->n128_u64[0];
        }

        kdebug_trace();
      }

      RESharedPtr<REEntity>::~RESharedPtr(&v18);
      if (v7)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      }

      v5 = *v5;
    }

    while (v5);
  }
}

void sub_2617F8CD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);

  RESharedPtr<REEntity>::~RESharedPtr(va);
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  _Unwind_Resume(a1);
}

void *rf::data_flow::consumer::EntitiesProcessor::updateMeshEntitiesInScene(uint64_t a1, uint64_t a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  RESceneUnderstandingComponentGetComponentType();
  v19[0] = RESceneGetComponentsOfClass();
  v19[1] = v5;
  v14 = v19[0];
  v15 = v5;
  v16[0] = v19;
  v16[1] = a3;
  v17 = 0;
  v18 = 0;
  *uu = v16;
  result = std::ranges::__find_if_impl[abi:ne200100]<std::__wrap_iter<REComponent **>,std::__wrap_iter<REComponent **>,std::reference_wrapper<rf::data_flow::consumer::EntitiesProcessor::updateMeshEntitiesInScene(REScene *,std::unordered_map<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,std::shared_ptr<rf::data_flow::consumer::Mesh>>>> const&)::$_0>,std::identity>(v19[0], &v19[0][v5], uu);
  v7 = result;
  v17 = result;
  LOBYTE(v18) = 1;
  for (i = &v14[v15]; i != result; v7 = result)
  {
    REComponentGetEntity();
    RETransformComponentGetComponentType();
    REEntityGetComponentByClass();
    IdentifierPtr = RESceneUnderstandingComponentGetIdentifierPtr();
    v21 = 0;
    v22 = 0;
    uuid_clear(uu);
    *uu = IdentifierPtr;
    v21 = 1;
    v10 = std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>>>::find<rf::data_flow::RFUUID>(a3, uu);
    if (!v10)
    {
      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    }

    v12 = v10[6];
    v11 = v10[7];
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    RETransformComponentSetWorldMatrix4x4F();
    MEMORY[0x26670CA30](*v7);
    if (*(a1 + 24) == 1)
    {
      RENetworkMarkComponentDirty();
    }

    if (re::internal::enableSignposts(0, 0))
    {
      if (!*(v12 + 24))
      {
        if (*(v12 + 16))
        {
          v13 = *v12;
        }

        else
        {
          v13 = v12;
        }

        *(v12 + 24) = ((*v13 >> 2) + (*v13 << 6) + v13[1] + 2654435769) ^ *v13;
      }

      kdebug_trace();
    }

    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }

    *uu = v16;
    result = std::ranges::__find_if_impl[abi:ne200100]<std::__wrap_iter<REComponent **>,std::__wrap_iter<REComponent **>,std::reference_wrapper<rf::data_flow::consumer::EntitiesProcessor::updateMeshEntitiesInScene(REScene *,std::unordered_map<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,std::shared_ptr<rf::data_flow::consumer::Mesh>>>> const&)::$_0>,std::identity>(v7 + 1, &v14[v15], uu);
  }

  return result;
}

void sub_2617F8F40(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void *rf::data_flow::consumer::EntitiesProcessor::removeMeshEntitiesFromScene(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x277D85DE8];
  RESceneUnderstandingComponentGetComponentType();
  ComponentsOfClass = RESceneGetComponentsOfClass();
  v11 = v3;
  v13 = 0;
  v14 = 0;
  v12 = a2;
  *buf = &v12;
  result = std::ranges::__find_if_impl[abi:ne200100]<std::__wrap_iter<REComponent **>,std::__wrap_iter<REComponent **>,std::reference_wrapper<rf::data_flow::consumer::EntitiesProcessor::removeMeshEntitiesFromScene(REScene *,std::unordered_map<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,std::shared_ptr<rf::data_flow::consumer::Mesh>>>> const&)::$_0>,std::identity>(ComponentsOfClass, &ComponentsOfClass[v3], buf);
  v5 = result;
  v13 = result;
  LOBYTE(v14) = 1;
  for (i = &ComponentsOfClass[v11]; i != result; v5 = result)
  {
    Entity = REComponentGetEntity();
    v8 = rf::realityFusionLogObject(Entity);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      Name = REEntityGetName();
      *buf = 136315138;
      *&buf[4] = Name;
      _os_log_impl(&dword_2617CB000, v8, OS_LOG_TYPE_DEFAULT, "MeshReconstructionConsumer: Removing entity %s", buf, 0xCu);
    }

    MEMORY[0x26670C370](Entity);
    *buf = &v12;
    result = std::ranges::__find_if_impl[abi:ne200100]<std::__wrap_iter<REComponent **>,std::__wrap_iter<REComponent **>,std::reference_wrapper<rf::data_flow::consumer::EntitiesProcessor::removeMeshEntitiesFromScene(REScene *,std::unordered_map<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,std::shared_ptr<rf::data_flow::consumer::Mesh>>>> const&)::$_0>,std::identity>((v5 + 8), &ComponentsOfClass[v11], buf);
  }

  return result;
}

void rf::data_flow::consumer::EntitiesProcessor::consumeLatestUpdate(uint64_t a1, uint64_t a2)
{
  v48 = *MEMORY[0x277D85DE8];
  if (*(a2 + 32) == 1 && *(a2 + 16) == 1)
  {
    v3 = *(a2 + 24);
    v36 = v3;
    RESceneUnderstandingRootComponentGetComponentType();
    RESceneGetComponentsOfClass();
    if (v4)
    {
      REComponentGetEntity();
    }

    else
    {
      v42[0] = REEntityCreate();
      REEntitySetName();
      RESceneUnderstandingRootComponentGetComponentType();
      REEntityAddComponentByClass();
      REComponentClassFromType();
      REEntityAddComponentByClass();
      REAnchorComponentSetAnchoredLocally();
      RESceneUnderstandingRenderOptionsComponentGetComponentType();
      REEntityAddComponentByClass();
      if (*(a1 + 24) == 1)
      {
        REComponentClassFromType();
        REEntityAddComponentByClass();
      }

      REHideEntity();
      RESceneAddEntity();
      RESharedPtr<REEntity>::~RESharedPtr(v42);
    }

    v5 = *(a1 + 16);
    std::mutex::lock(v5);
    RESceneUnderstandingRootComponentGetComponentType();
    REEntityGetOrAddComponentByClass();
    RESceneUnderstandingRootComponentSetUpdateId();
    if (*(a1 + 24) == 1)
    {
      RENetworkMarkComponentDirty();
    }

    if (*(a1 + 25) == 1)
    {
      v7 = *(a1 + 40);
      if (!v7)
      {
        re::internal::assertLog(4, v6, "assertion failure: '%s' (%s:line %i) EntitiesProcessor::m_parentEntities should not be nullptr if shouldParentMeshChunkEntities is enabled!", "m_rootEntitiesMap", "consumeLatestUpdate", 178);
        _os_crash();
        __break(1u);
      }

      if (std::__hash_table<std::__hash_value_type<REScene *,std::set<REEntity *>>,std::__unordered_map_hasher<REScene *,std::__hash_value_type<REScene *,std::set<REEntity *>>,std::hash<REScene *>,std::equal_to<REScene *>,true>,std::__unordered_map_equal<REScene *,std::__hash_value_type<REScene *,std::set<REEntity *>>,std::equal_to<REScene *>,std::hash<REScene *>,true>,std::allocator<std::__hash_value_type<REScene *,std::set<REEntity *>>>>::find<REScene *>(v7, &v36))
      {
        v33 = std::__hash_table<std::__hash_value_type<REScene *,std::set<REEntity *>>,std::__unordered_map_hasher<REScene *,std::__hash_value_type<REScene *,std::set<REEntity *>>,std::hash<REScene *>,std::equal_to<REScene *>,true>,std::__unordered_map_equal<REScene *,std::__hash_value_type<REScene *,std::set<REEntity *>>,std::equal_to<REScene *>,std::hash<REScene *>,true>,std::allocator<std::__hash_value_type<REScene *,std::set<REEntity *>>>>::find<REScene *>(*(a1 + 40), &v36);
        if (!v33)
        {
          std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
        }

        v32 = v5;
        v8 = *(v5 + 2904);
        if (v8)
        {
          v9 = v33 + 4;
          do
          {
            v10 = v8[6];
            v11 = v8[7];
            if (v11)
            {
              atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
              if (!v10)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v11);
                break;
              }

              v44 = v10;
              v45 = v11;
              atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            else
            {
              if (!v10)
              {
                break;
              }

              v44 = v8[6];
              v45 = 0;
            }

            v34 = v10;
            v35 = v11;
            v12 = rf::data_flow::consumer::EntitiesProcessor::createNewMeshEntity(&v46, a1, &v44, 1, v10);
            if (v11)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v11);
            }

            v13 = *(a1 + 32) + 1;
            *(a1 + 32) = v13;
            v14 = v33[3];
            if (v14 != v9)
            {
              do
              {
                v15 = *(a1 + 32);
                *(a1 + 32) = v15 + 1;
                if (v13 == v15)
                {
                  v12 = REEntitySetParent();
                }

                else
                {
                  LODWORD(v42[0]) = 65560;
                  BYTE4(v42[0]) = 1;
                  v42[1] = 0;
                  v43 = 0;
                  v41 = REEntityCopy();
                  v16 = *(a1 + 32) + 1;
                  *(a1 + 32) = v16;
                  std::to_string(&v38, v16);
                  v17 = std::string::insert(&v38, 0, "Mesh Entity ", 0xCuLL);
                  v18 = *&v17->__r_.__value_.__l.__data_;
                  v39.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
                  *&v39.__r_.__value_.__l.__data_ = v18;
                  v17->__r_.__value_.__l.__size_ = 0;
                  v17->__r_.__value_.__r.__words[2] = 0;
                  v17->__r_.__value_.__r.__words[0] = 0;
                  v19 = std::string::append(&v39, " ", 1uLL);
                  v20 = *&v19->__r_.__value_.__l.__data_;
                  v40.__r_.__value_.__r.__words[2] = v19->__r_.__value_.__r.__words[2];
                  *&v40.__r_.__value_.__l.__data_ = v20;
                  v19->__r_.__value_.__l.__size_ = 0;
                  v19->__r_.__value_.__r.__words[2] = 0;
                  v19->__r_.__value_.__r.__words[0] = 0;
                  std::to_string(&v37, 1);
                  if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v21 = &v37;
                  }

                  else
                  {
                    v21 = v37.__r_.__value_.__r.__words[0];
                  }

                  if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    size = HIBYTE(v37.__r_.__value_.__r.__words[2]);
                  }

                  else
                  {
                    size = v37.__r_.__value_.__l.__size_;
                  }

                  v23 = std::string::append(&v40, v21, size);
                  v24 = *&v23->__r_.__value_.__l.__data_;
                  *&buf[16] = *(&v23->__r_.__value_.__l + 2);
                  *buf = v24;
                  v23->__r_.__value_.__l.__size_ = 0;
                  v23->__r_.__value_.__r.__words[2] = 0;
                  v23->__r_.__value_.__r.__words[0] = 0;
                  REEntitySetName();
                  if ((buf[23] & 0x80000000) != 0)
                  {
                    operator delete(*buf);
                  }

                  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v37.__r_.__value_.__l.__data_);
                  }

                  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v40.__r_.__value_.__l.__data_);
                  }

                  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v39.__r_.__value_.__l.__data_);
                  }

                  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v38.__r_.__value_.__l.__data_);
                  }

                  REEntitySetParent();
                  v12 = RESharedPtr<REEntity>::~RESharedPtr(&v41);
                }

                v25 = v14[1];
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
                    v26 = v14[2];
                    v27 = *v26 == v14;
                    v14 = v26;
                  }

                  while (!v27);
                }

                v14 = v26;
              }

              while (v26 != v9);
            }

            v28 = rf::realityFusionLogObject(v12);
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
            {
              Name = REEntityGetName();
              rf::data_flow::RFUUID::string(v42, v34);
              v30 = v43 >= 0 ? v42 : v42[0];
              *buf = 136315394;
              *&buf[4] = Name;
              *&buf[12] = 2082;
              *&buf[14] = v30;
              _os_log_impl(&dword_2617CB000, v28, OS_LOG_TYPE_DEFAULT, "MeshReconstructionConsumer: Adding entity %s with mesh %{public}s", buf, 0x16u);
              if (SHIBYTE(v43) < 0)
              {
                operator delete(v42[0]);
              }
            }

            if (*(a1 + 24) == 1)
            {
              RENetworkComponentGetComponentType();
              REEntityAddComponentByClass();
            }

            if (re::internal::enableSignposts(0, 0))
            {
              if (!v34[1].n128_u64[1])
              {
                if (v34[1].n128_u8[0])
                {
                  v31 = v34->n128_u64[0];
                }

                else
                {
                  v31 = v34;
                }

                v34[1].n128_u64[1] = ((v31->n128_u64[0] >> 2) + (v31->n128_u64[0] << 6) + v31->n128_u64[1] + 2654435769u) ^ v31->n128_u64[0];
              }

              kdebug_trace();
            }

            RESharedPtr<REEntity>::~RESharedPtr(&v46);
            if (v35)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v35);
            }

            v8 = *v8;
          }

          while (v8);
        }

        v5 = v32;
      }
    }

    else
    {
      rf::data_flow::consumer::EntitiesProcessor::addNewMeshEntitiesToScene(a1, v3, *(v5 + 2904), 1);
    }

    rf::data_flow::consumer::EntitiesProcessor::updateMeshEntitiesInScene(a1, v36, (v5 + 2928));
    rf::data_flow::consumer::EntitiesProcessor::removeMeshEntitiesFromScene(v36, v5 + 2968);
    if ((*(a1 + 26) & 1) == 0)
    {
      rf::data_flow::consumer::EntitiesProcessor::addNewMeshEntitiesToScene(a1, v36, *(v5 + 3024), 2);
      rf::data_flow::consumer::EntitiesProcessor::updateMeshEntitiesInScene(a1, v36, (v5 + 3048));
      rf::data_flow::consumer::EntitiesProcessor::removeMeshEntitiesFromScene(v36, v5 + 3088);
    }

    std::mutex::unlock(v5);
  }
}

void *std::ranges::__find_if_impl[abi:ne200100]<std::__wrap_iter<REComponent **>,std::__wrap_iter<REComponent **>,std::reference_wrapper<rf::data_flow::consumer::EntitiesProcessor::updateMeshEntitiesInScene(REScene *,std::unordered_map<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,std::shared_ptr<rf::data_flow::consumer::Mesh>>>> const&)::$_0>,std::identity>(void *a1, void *a2, uint64_t *a3)
{
  v3 = a2;
  v13 = *MEMORY[0x277D85DE8];
  if (a1 != a2)
  {
    v5 = a1;
    while (1)
    {
      v6 = *a3;
      if (RESceneUnderstandingComponentGetSourceType() != 2)
      {
        v7 = *(v6 + 8);
        IdentifierPtr = RESceneUnderstandingComponentGetIdentifierPtr();
        v11 = 0;
        v12 = 0;
        uuid_clear(uu);
        *uu = IdentifierPtr;
        v11 = 1;
        if (std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>>>::find<rf::data_flow::RFUUID>(v7, uu))
        {
          break;
        }
      }

      if (++v5 == v3)
      {
        return v3;
      }
    }

    return v5;
  }

  return v3;
}

void *std::ranges::__find_if_impl[abi:ne200100]<std::__wrap_iter<REComponent **>,std::__wrap_iter<REComponent **>,std::reference_wrapper<rf::data_flow::consumer::EntitiesProcessor::removeMeshEntitiesFromScene(REScene *,std::unordered_map<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,std::shared_ptr<rf::data_flow::consumer::Mesh>>>> const&)::$_0>,std::identity>(void *a1, void *a2, void ***a3)
{
  v3 = a2;
  v13 = *MEMORY[0x277D85DE8];
  if (a1 != a2)
  {
    v5 = a1;
    while (1)
    {
      v6 = *a3;
      if (RESceneUnderstandingComponentGetSourceType() != 2)
      {
        v7 = *v6;
        IdentifierPtr = RESceneUnderstandingComponentGetIdentifierPtr();
        v11 = 0;
        v12 = 0;
        uuid_clear(uu);
        *uu = IdentifierPtr;
        v11 = 1;
        if (std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>>>::find<rf::data_flow::RFUUID>(v7, uu))
        {
          break;
        }
      }

      if (++v5 == v3)
      {
        return v3;
      }
    }

    return v5;
  }

  return v3;
}

void *std::__hash_table<std::__hash_value_type<REScene *,std::set<REEntity *>>,std::__unordered_map_hasher<REScene *,std::__hash_value_type<REScene *,std::set<REEntity *>>,std::hash<REScene *>,std::equal_to<REScene *>,true>,std::__unordered_map_equal<REScene *,std::__hash_value_type<REScene *,std::set<REEntity *>>,std::equal_to<REScene *>,std::hash<REScene *>,true>,std::allocator<std::__hash_value_type<REScene *,std::set<REEntity *>>>>::find<REScene *>(void *a1, void *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = vcnt_s8(v2);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v5;
    if (v5 >= *&v2)
    {
      v7 = v5 % *&v2;
    }
  }

  else
  {
    v7 = v5 & (*&v2 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  for (result = *v8; result; result = *result)
  {
    v10 = result[1];
    if (v5 == v10)
    {
      if (result[2] == *a2)
      {
        return result;
      }
    }

    else
    {
      if (v6.u32[0] > 1uLL)
      {
        if (v10 >= *&v2)
        {
          v10 %= *&v2;
        }
      }

      else
      {
        v10 &= *&v2 - 1;
      }

      if (v10 != v7)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t *rf::HandMetadataComponent::instance(rf::HandMetadataComponent *this)
{
  {
    rf::HandMetadataComponent::instance(void)::instance = 0;
    qword_2810C5338 = 0;
    qword_2810C5358 = 0;
    dword_2810C5360 = 0;
  }

  return &rf::HandMetadataComponent::instance(void)::instance;
}

uint64_t std::function<void ()(rf::data_flow::provider::InputFrame &&)>::operator=(uint64_t a1, uint64_t a2)
{
  v9[3] = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      v8 = v7;
      (*(*v3 + 24))(v3, v7);
    }

    else
    {
      v8 = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    v8 = 0;
  }

  if (v7 != a1)
  {
    v4 = v8;
    v5 = *(a1 + 24);
    if (v8 == v7)
    {
      if (v5 == a1)
      {
        (*(*v8 + 24))();
        (*(*v8 + 32))(v8);
        v8 = 0;
        (*(**(a1 + 24) + 24))(*(a1 + 24), v7);
        (*(**(a1 + 24) + 32))(*(a1 + 24));
        *(a1 + 24) = 0;
        v8 = v7;
        (*(v9[0] + 24))(v9, a1);
        (*(v9[0] + 32))(v9);
      }

      else
      {
        (*(*v8 + 24))();
        (*(*v8 + 32))(v8);
        v8 = *(a1 + 24);
      }

      *(a1 + 24) = a1;
    }

    else if (v5 == a1)
    {
      (*(*v5 + 24))(*(a1 + 24), v7);
      (*(**(a1 + 24) + 32))(*(a1 + 24));
      *(a1 + 24) = v8;
      v8 = v7;
    }

    else
    {
      v8 = *(a1 + 24);
      *(a1 + 24) = v4;
    }
  }

  std::__function::__value_func<void ()(rf::data_flow::provider::InputFrame &&)>::~__value_func[abi:ne200100](v7);
  return a1;
}

void sub_2617F9E94(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__function::__value_func<void ()(rf::data_flow::provider::InputFrame &&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t rf::data_flow::RoomManagementClient::needsEvaluateRoomAwareAnchorsDueToAnchorUpdates(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = *(a2 + 16);
  if (v9)
  {
    while (1)
    {
      v10 = std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>>>::find<rf::data_flow::RFUUID>(a5, (v9 + 2));
      if (v10)
      {
        v11 = v10;
        if (std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>>>::find<rf::data_flow::RFUUID>((a1 + 8), (v9 + 2)) || !*(v11 + 76) && *(v11 + 248) == 1 && (*(a1 + 1) & 1) != 0)
        {
          break;
        }
      }

      v9 = *v9;
      if (!v9)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
LABEL_8:
    v12 = *(a3 + 16);
    if (v12)
    {
      while (1)
      {
        v13 = std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>>>::find<rf::data_flow::RFUUID>(a5, (v12 + 2));
        if (v13)
        {
          v14 = v13;
          if (std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>>>::find<rf::data_flow::RFUUID>((a1 + 8), (v12 + 2)) || !*(v14 + 76) && *(v14 + 248) == 1 && (*(a1 + 1) & 1) != 0)
          {
            break;
          }
        }

        v12 = *v12;
        if (!v12)
        {
          goto LABEL_15;
        }
      }
    }

    else
    {
LABEL_15:
      v15 = *(a4 + 16);
      if (!v15)
      {
        return 0;
      }

      while (!std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>>>::find<rf::data_flow::RFUUID>((a1 + 8), (v15 + 2)) && (*(v15 + 76) || *(v15 + 248) != 1 || (*(a1 + 1) & 1) == 0))
      {
        v15 = *v15;
        if (!v15)
        {
          return 0;
        }
      }
    }
  }

  return 1;
}

uint64_t rf::data_flow::RoomManagementClient::addOrRemoveRoomAwareAnchorWatchListInCurrentRoom(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 912) != 1 || *(a1 + 136) != 1)
  {
    return 0;
  }

  v5 = *(a2 + 16) ? *a2 : a2;
  v8 = *(a1 + 104);
  v6 = a1 + 104;
  v7 = v8;
  v9 = (*(v6 + 16) ? v7 : v6);
  if (uuid_compare(v5, v9))
  {
    return 0;
  }
}

uint64_t anonymous namespace::isInRoom(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  rf::helpers::getBaseAnchorProperties(a1);
  v4[0] = v4[6];

  return (***(a2 + 96))(*(a2 + 96), v4);
}

uint64_t rf::data_flow::RoomManagementClient::evaluateRoomAwareAnchorsInCurrentRoom(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v24 = *MEMORY[0x277D85DE8];
  if (*(a2 + 912) == 1)
  {
    if (*(a2 + 16))
    {
      v8 = *a2;
    }

    else
    {
      v8 = a2;
    }

    LOBYTE(v20) = 0;
    *(&v20 + 1) = 0;
    uuid_clear(&v19);
    v19 = *v8;
    v9 = *(a1 + 136);
    *(a1 + 104) = v19;
    *(a1 + 120) = v20;
    if ((v9 & 1) == 0)
    {
      *(a1 + 136) = 1;
    }

    if ((*(a2 + 912) & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    if (*(a1 + 1) == 1)
    {
      for (i = *(a4 + 16); i; i = *i)
      {
        for (j = i[12]; j; j = *j)
        {
          v12 = j + 2;
          if (std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>>>::find<rf::data_flow::RFUUID>(a3, (j + 2)))
          {
            v13 = std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>>>::find<rf::data_flow::RFUUID>(a3, (j + 2));
            if (!v13)
            {
              std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
            }

            {
              if (*(j + 32) == 1)
              {
                v12 = *v12;
              }

              v22 = 0;
              v23 = 0;
              uuid_clear(uu);
              *uu = *v12;
              std::__hash_table<rf::data_flow::RFUUID,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<rf::data_flow::RFUUID>>::__emplace_unique_key_args<rf::data_flow::RFUUID,rf::data_flow::RFUUID const&>(&v19, uu, uu);
            }
          }
        }
      }
    }

    if (*(&v20 + 1) == *(a1 + 168))
    {
      v14 = &v20;
      while (1)
      {
        v14 = *v14;
        if (!v14)
        {
          break;
        }

        v15 = (v14 + 1);
        v16 = std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>>>::find<rf::data_flow::RFUUID>((a1 + 144), (v14 + 1));
        if (v16)
        {
          if (*(v14 + 32) == 1)
          {
            v15 = *v15;
          }

          v17 = *(v16 + 32) ? v16[2] : (v16 + 2);
          if (!uuid_compare(v15, v17))
          {
            continue;
          }
        }

        goto LABEL_29;
      }

      std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>>>::~__hash_table(&v19);
      return 0;
    }

LABEL_29:
    std::__hash_table<rf::data_flow::RFUUID,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<rf::data_flow::RFUUID>>::__move_assign(a1 + 144, &v19);
    std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>>>::~__hash_table(&v19);
    return 1;
  }

  if (*(a1 + 136) == 1)
  {
    *(a1 + 136) = 0;
  }

  if (*(a1 + 168))
  {
    std::__hash_table<rf::data_flow::RFUUID,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<rf::data_flow::RFUUID>>::clear((a1 + 144));
    return 1;
  }

  return 0;
}

uint64_t anonymous namespace::getAllRoomAwareAnchorsInRoom(uint64_t result, uint64_t *a2, void *a3, uint64_t a4)
{
  v13 = *MEMORY[0x277D85DE8];
  *result = 0u;
  *(result + 16) = 0u;
  *(result + 32) = 1065353216;
  if (a2)
  {
    v6 = a2;
    v7 = result;
    do
    {
      v8 = v6 + 2;
      result = std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>>>::find<rf::data_flow::RFUUID>(a3, (v6 + 2));
      if (result)
      {
        v9 = std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>>>::find<rf::data_flow::RFUUID>(a3, (v6 + 2));
        if (!v9)
        {
          std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
        }

        if (result)
        {
          if (*(v6 + 32) == 1)
          {
            v8 = *v8;
          }

          v11 = 0;
          v12 = 0;
          uuid_clear(&v10);
          v10 = *v8;
          result = std::__hash_table<rf::data_flow::RFUUID,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<rf::data_flow::RFUUID>>::__emplace_unique_key_args<rf::data_flow::RFUUID,rf::data_flow::RFUUID const&>(v7, &v10, &v10);
        }
      }

      v6 = *v6;
    }

    while (v6);
  }

  return result;
}

uint64_t rf::data_flow::RoomManagementClient::triggerRoomChange(uint64_t a1, const unsigned __int8 *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  result = *(a1 + 96);
  if (result)
  {
    if ((a2[912] & 1) == 0)
    {
      LOBYTE(v17[0]) = 0;
      v18 = 0;
      v14 = 0u;
      v15 = 0u;
      v16 = 1065353216;
      (*(*result + 48))(result, v17, &v14);
      v11 = &v14;
      return std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>>>::~__hash_table(v11);
    }

    if (*(a1 + 136) != 1)
    {
LABEL_12:
      v9 = *(a2 + 1);
      v14 = *a2;
      v15 = v9;
      LOBYTE(v16) = 1;
      v10 = *(a1 + 96);
      if (!v10)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      (*(*v10 + 48))(v10, &v14, v17);
      v11 = v17;
      return std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>>>::~__hash_table(v11);
    }

    if (a2[16])
    {
      v7 = *a2;
    }

    else
    {
      v7 = a2;
    }

    if (*(a1 + 120))
    {
      v8 = *(a1 + 104);
    }

    else
    {
      v8 = (a1 + 104);
    }

    if (uuid_compare(v7, v8))
    {
      if ((a2[912] & 1) == 0)
      {
        std::__throw_bad_optional_access[abi:ne200100]();
      }

      goto LABEL_12;
    }

    v12 = *(a2 + 1);
    v17[0] = *a2;
    v17[1] = v12;
    v18 = 1;
    v13 = *(a1 + 96);
    if (!v13)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    return (*(*v13 + 48))(v13, v17, a1 + 144);
  }

  return result;
}

void std::__hash_table<rf::data_flow::RFUUID,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<rf::data_flow::RFUUID>>::__move_assign(uint64_t a1, uint64_t *a2)
{
  std::__hash_table<rf::data_flow::RFUUID,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<rf::data_flow::RFUUID>>::clear(a1);
  v4 = *a2;
  *a2 = 0;
  v5 = *a1;
  *a1 = v4;
  if (v5)
  {
    operator delete(v5);
  }

  v8 = a2[2];
  v7 = a2 + 2;
  v6 = v8;
  v9 = *(v7 - 1);
  *(a1 + 16) = v8;
  *(a1 + 8) = v9;
  *(v7 - 1) = 0;
  v10 = v7[1];
  *(a1 + 24) = v10;
  *(a1 + 32) = *(v7 + 4);
  if (v10)
  {
    v11 = *(v6 + 8);
    v12 = *(a1 + 8);
    if ((v12 & (v12 - 1)) != 0)
    {
      if (v11 >= v12)
      {
        v11 %= v12;
      }
    }

    else
    {
      v11 &= v12 - 1;
    }

    *(*a1 + 8 * v11) = a1 + 16;
    *v7 = 0;
    v7[1] = 0;
  }
}

void *std::__hash_table<rf::data_flow::RFUUID,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<rf::data_flow::RFUUID>>::clear(void *result)
{
  if (result[3])
  {
    v1 = result;
    result = result[2];
    if (result)
    {
      do
      {
        v2 = *result;
        operator delete(result);
        result = v2;
      }

      while (v2);
    }

    v1[2] = 0;
    v3 = v1[1];
    if (v3)
    {
      for (i = 0; i != v3; ++i)
      {
        *(*v1 + 8 * i) = 0;
      }
    }

    v1[3] = 0;
  }

  return result;
}

void rf::ARState::consume(uint64_t a1, uint64_t a2)
{
  v312 = *MEMORY[0x277D85DE8];
  *a1 = 1;
  v4 = a1 + 80;
  v303.n128_u64[0] = a1 + 80;
  v303.n128_u64[1] = a1 + 16;
  std::mutex::lock((a1 + 16));
  if (*(a2 + 2064) == 1)
  {
    v6 = a1;
    if (*(a2 + 2060) != *(a1 + 4084))
    {
      v7 = rf::realityFusionLogObject(v5);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        if ((*(a2 + 2064) & 1) == 0)
        {
          std::__throw_bad_optional_access[abi:ne200100]();
        }

        v8 = *(a1 + 4084);
        v9 = *(a2 + 2060);
        *buf = 67109376;
        *&buf[4] = v8;
        *&buf[8] = 1024;
        *&buf[10] = v9;
        _os_log_impl(&dword_2617CB000, v7, OS_LOG_TYPE_DEFAULT, "ARState: World Anchor Sharing Availability Status has changed from %d to %d", buf, 0xEu);
      }

      if ((*(a2 + 2064) & 1) == 0)
      {
        std::__throw_bad_optional_access[abi:ne200100]();
      }

      v4 = v303.n128_u64[0];
      *(v303.n128_u64[0] + 4004) = *(a2 + 2060);
    }
  }

  else
  {
    v6 = a1;
  }

  v10 = *(a2 + 2056);
  if ((v10 & 1) != 0 || *(a2 + 2050) == 1)
  {
    v11 = *(v4 + 4000);
    if (v11 > 1)
    {
      switch(v11)
      {
        case 2:
          if (*(a2 + 2056) && *(a2 + 2052) == 1)
          {
            v14 = 3;
LABEL_34:
            *(v4 + 4000) = v14;
            goto LABEL_56;
          }

          if (*(a2 + 2050) != 1 || *(a2 + 2049))
          {
            goto LABEL_48;
          }

          *(v4 + 4000) = 0;
          break;
        case 3:
          if (*(a2 + 2056) && !*(a2 + 2052))
          {
            v14 = 2;
            goto LABEL_34;
          }

          if (*(a2 + 2050) != 1 || *(a2 + 2049))
          {
            goto LABEL_48;
          }

          *(v4 + 4000) = 1;
          break;
        case 4:
          if (*(a2 + 2056))
          {
            v12 = *(a2 + 2052);
            if (v12)
            {
              if (v12 == 1)
              {
                *(v4 + 4000) = 1;
LABEL_55:
                *(v4 + 2801) = v12;
              }

LABEL_56:
              v16 = *(a2 + 2052);
              goto LABEL_57;
            }

            *(v4 + 4000) = 0;
LABEL_54:
            LOBYTE(v12) = 1;
            goto LABEL_55;
          }

LABEL_49:
          v16 = -1;
LABEL_57:
          v17 = *(a2 + 2050);
          v18 = *(a2 + 2049);
          v19 = rf::realityFusionLogObject(v5);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            if (v17)
            {
              v20 = v18;
            }

            else
            {
              v20 = -1;
            }

            v21 = *(v303.n128_u64[0] + 4000);
            *buf = 67109888;
            *&buf[4] = v11;
            *&buf[8] = 1024;
            *&buf[10] = v21;
            *&buf[14] = 1024;
            LODWORD(v308) = v16;
            WORD2(v308) = 1024;
            *(&v308 + 6) = v20;
            _os_log_impl(&dword_2617CB000, v19, OS_LOG_TYPE_DEFAULT, "ARState: TrackingState has changed from %d to %d (input: tracking - %d, travel - %d)", buf, 0x1Au);
          }

          v4 = v303.n128_u64[0];
          v22 = *(v303.n128_u64[0] + 4000);
          if (v22 != v11)
          {
            v23 = v11 | (v22 << 32);
            if ((*(v303.n128_u64[0] + 2812) & 1) == 0)
            {
              *(v303.n128_u64[0] + 2812) = 1;
            }

            *(v4 + 2804) = v23;
          }

          goto LABEL_66;
        default:
LABEL_48:
          if (v10)
          {
            goto LABEL_56;
          }

          goto LABEL_49;
      }

LABEL_47:
      *(v4 + 2800) = 1;
      goto LABEL_48;
    }

    if (v11)
    {
      if (v11 != 1)
      {
        goto LABEL_48;
      }

      v13 = *(a2 + 2052);
      if (*(a2 + 2056) && !v13)
      {
        *(v4 + 4000) = 0;
        goto LABEL_56;
      }

      if (*(a2 + 2050) == 1 && *(a2 + 2049) == 1)
      {
        *(v4 + 4000) = 3;
        goto LABEL_47;
      }

      if (!*(a2 + 2056))
      {
        goto LABEL_49;
      }

      if (v13 != 2)
      {
        goto LABEL_56;
      }

LABEL_52:
      *(v4 + 4000) = 4;
      goto LABEL_54;
    }

    if (*(a2 + 2056))
    {
      v15 = *(a2 + 2052);
      if (v15 == 2)
      {
        goto LABEL_52;
      }

      if (v15 == 1)
      {
        v14 = 1;
        goto LABEL_34;
      }
    }

    if (*(a2 + 2050) == 1 && *(a2 + 2049) == 1)
    {
      *(v4 + 4000) = 2;
    }

    goto LABEL_48;
  }

LABEL_66:
  if (*(a2 + 2020) != 1 || *(a2 + 2016))
  {
    rf::detail::insertMeshesInto(a2, (v6 + 4128), v301);
    for (i = v302; i; i = *i)
    {
      *buf = i + 2;
      v90 = std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>>>::__emplace_unique_key_args<rf::data_flow::RFUUID,std::piecewise_construct_t const&,std::tuple<rf::data_flow::RFUUID const&>,std::tuple<>>((v303.n128_u64[0] + 1712), (i + 2), &std::piecewise_construct, buf);
      v91 = *(i + 3);
      i[6] = 0;
      i[7] = 0;
      v92 = v90[7];
      *(v90 + 3) = v91;
      if (v92)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v92);
      }
    }

    rf::detail::updateMeshAt(v303.n128_u64, (a2 + 24), (v6 + 4128), v299);
    for (j = v300; j; j = *j)
    {
      *buf = j + 2;
      v94 = std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>>>::__emplace_unique_key_args<rf::data_flow::RFUUID,std::piecewise_construct_t const&,std::tuple<rf::data_flow::RFUUID const&>,std::tuple<>>((v303.n128_u64[0] + 1752), (j + 2), &std::piecewise_construct, buf);
      v95 = *(j + 3);
      j[6] = 0;
      j[7] = 0;
      v96 = v94[7];
      *(v94 + 3) = v95;
      if (v96)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v96);
      }
    }

    rf::detail::removeMeshesFrom(&v303, (a2 + 48), *(v6 + 4104), v297);
    v97 = v298;
    if (v298)
    {
      v98 = v303.n128_u64[0];
      do
      {
        std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>>>::__emplace_unique_key_args<rf::data_flow::RFUUID,std::pair<rf::data_flow::RFUUID const,std::shared_ptr<rf::data_flow::consumer::Mesh>> const&>((v98 + 1792), (v97 + 2), (v97 + 2));
        v97 = *v97;
      }

      while (v97);
    }

    rf::detail::requestFloorPlaneForPlacementIfNeeded((a2 + 72), (a2 + 96), (a2 + 120), v6 + 4232);
    rf::detail::updateExternalAnchorsAt(&v303, (a2 + 144), v6 + 4168);
    v266 = v6;
    rf::detail::relocalizeExternalAnchors(&v303, (a2 + 96), (a2 + 72), v6 + 4200);
    v99 = *(a2 + 488);
    v100 = *(a2 + 496);
    while (v99 != v100)
    {
      if (std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>>>::find<rf::data_flow::RFUUID>((v303.n128_u64[0] + 160), v99))
      {
        v101 = std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>>>::find<rf::data_flow::RFUUID>((v303.n128_u64[0] + 160), v99);
        if (!v101)
        {
          std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
        }

        for (k = v101[12]; k; k = *k)
        {
          v103 = v303.n128_u64[0];
          v104 = std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>>>::find<rf::data_flow::RFUUID>((v303.n128_u64[0] + 80), (k + 2));
          v105 = std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>>>::find<rf::data_flow::RFUUID>((v103 + 120), (k + 2));
          v106 = (v104 + 48);
          v107 = (v105 + 48);
          if (!v105)
          {
            v107 = 0;
          }

          if (!v104)
          {
            v106 = v107;
          }

          if (v104 | v105 && !*(v106 + 64) && *(v106 + 200) == 1)
          {
            *(v106 + 200) = 0;
          }
        }

        v108 = v303.n128_u64[0];
        v109 = std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>>>::find<rf::data_flow::RFUUID>((v303.n128_u64[0] + 160), v99);
        v110 = v109;
        if (v109)
        {
          v111 = v108[21];
          v112 = v109[1];
          v113 = vcnt_s8(v111);
          v113.i16[0] = vaddlv_u8(v113);
          if (v113.u32[0] > 1uLL)
          {
            if (v112 >= *&v111)
            {
              v112 %= *&v111;
            }
          }

          else
          {
            v112 &= *&v111 - 1;
          }

          v114 = *v109;
          v115 = v108[20];
          v116 = *(v115 + 8 * v112);
          do
          {
            v117 = v116;
            v116 = *v116;
          }

          while (v116 != v109);
          if (v117 == v108 + 22)
          {
            goto LABEL_254;
          }

          v118 = v117[1];
          if (v113.u32[0] > 1uLL)
          {
            if (v118 >= *&v111)
            {
              v118 %= *&v111;
            }
          }

          else
          {
            v118 &= *&v111 - 1;
          }

          if (v118 == v112)
          {
LABEL_256:
            if (v114)
            {
              v119 = *(v114 + 8);
              goto LABEL_258;
            }
          }

          else
          {
LABEL_254:
            if (!v114)
            {
              goto LABEL_255;
            }

            v119 = *(v114 + 8);
            if (v113.u32[0] > 1uLL)
            {
              v120 = *(v114 + 8);
              if (v119 >= *&v111)
              {
                v120 = v119 % *&v111;
              }
            }

            else
            {
              v120 = v119 & (*&v111 - 1);
            }

            if (v120 != v112)
            {
LABEL_255:
              *(v115 + 8 * v112) = 0;
              v114 = *v109;
              goto LABEL_256;
            }

LABEL_258:
            if (v113.u32[0] > 1uLL)
            {
              if (v119 >= *&v111)
              {
                v119 %= *&v111;
              }
            }

            else
            {
              v119 &= *&v111 - 1;
            }

            if (v119 != v112)
            {
              *(v108[20] + 8 * v119) = v117;
              v114 = *v109;
            }
          }

          *v117 = v114;
          *v109 = 0;
          --v108[23];
          std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>>>::~__hash_table((v109 + 10));
          operator delete(v110);
        }
      }

      v99 += 32;
    }

    rf::detail::updatePinnedGroups(&v303, (a2 + 464));
    rf::detail::insertAnchorsInto(&v303, (a2 + 72), &v295);
    v122 = v295;
    v121 = v296;
    if (v295 != v296)
    {
      v123 = v303.n128_u64[0];
      do
      {
        std::__hash_table<rf::data_flow::RFUUID,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<rf::data_flow::RFUUID>>::__emplace_unique_key_args<rf::data_flow::RFUUID,rf::data_flow::RFUUID const&>((v123 + 2072), v122, v122);
        v122 += 2;
      }

      while (v122 != v121);
    }

    rf::detail::updateAnchorsAt(&v303, (a2 + 96), &v293);
    v125 = v293;
    v124 = v294;
    if (v293 != v294)
    {
      v126 = v303.n128_u64[0];
      do
      {
        std::__hash_table<rf::data_flow::RFUUID,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<rf::data_flow::RFUUID>>::__emplace_unique_key_args<rf::data_flow::RFUUID,rf::data_flow::RFUUID const&>((v126 + 2112), v125, v125);
        v125 += 2;
      }

      while (v125 != v124);
    }

    v265 = a2;
    rf::detail::removeAnchorsFrom(&v303, (a2 + 120), v266 + 4232, v291);
    v127 = v303.n128_u64[0];
    v128 = v292;
    if (v292)
    {
      do
      {
        std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>>>::__emplace_unique_key_args<rf::data_flow::RFUUID,std::pair<rf::data_flow::RFUUID const,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>> const&>(v127 + 274, (v128 + 2), v128 + 1);
        v128 = *v128;
      }

      while (v128);
      v127 = v303.n128_u64[0];
    }

    v129 = *(a2 + 528);
    if (v129)
    {
LABEL_276:
      v130 = v129[5];
      if (!v130)
      {
        if (*(v129 + 32))
        {
          v138 = v129[2];
        }

        else
        {
          v138 = v129 + 2;
        }

        v130 = ((*v138 >> 2) + (*v138 << 6) + v138[1] + 2654435769) ^ *v138;
        v129[5] = v130;
      }

      v131 = v127[280];
      if (!*&v131)
      {
        goto LABEL_293;
      }

      v132 = vcnt_s8(v131);
      v132.i16[0] = vaddlv_u8(v132);
      v133 = v132.u32[0];
      if (v132.u32[0] > 1uLL)
      {
        v134 = v130;
        if (v130 >= *&v131)
        {
          v134 = v130 % *&v131;
        }
      }

      else
      {
        v134 = (*&v131 - 1) & v130;
      }

      v135 = *(v127[279] + 8 * v134);
      if (!v135 || (v136 = *v135) == 0)
      {
LABEL_293:
        operator new();
      }

      while (1)
      {
        v137 = v136[1];
        if (v137 == v130)
        {
          if (rf::data_flow::RFUUID::Equality::operator()((v127 + 279), (v136 + 2), (v129 + 2)))
          {
            v129 = *v129;
            if (!v129)
            {
              break;
            }

            goto LABEL_276;
          }
        }

        else
        {
          if (v133 > 1)
          {
            if (v137 >= *&v131)
            {
              v137 %= *&v131;
            }
          }

          else
          {
            v137 &= *&v131 - 1;
          }

          if (v137 != v134)
          {
            goto LABEL_293;
          }
        }

        v136 = *v136;
        if (!v136)
        {
          goto LABEL_293;
        }
      }
    }

    v139 = a2;
    if (*(a2 + 552) == 1)
    {
      v288 = 0u;
      v289 = 0u;
      v290 = 1065353216;
      v140 = v303.n128_u64[0];
      v141 = *(v303.n128_u64[0] + 96);
      if (v141)
      {
        do
        {
          while (*(v141 + 76) == 3)
          {
            v142 = *(v141 + 2);
            *buf = *(v141 + 1);
            v308 = v142;
            std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](&v309, (v141 + 6));
            std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>>>::__emplace_unique_key_args<rf::data_flow::RFUUID,std::pair<rf::data_flow::RFUUID const,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>>(&v288, buf, buf);
            std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v309);
            std::__hash_table<rf::data_flow::RFUUID,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<rf::data_flow::RFUUID>>::__erase_unique<rf::data_flow::RFUUID>((v303.n128_u64[0] + 2072), (v141 + 2));
            std::__hash_table<rf::data_flow::RFUUID,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<rf::data_flow::RFUUID>>::__erase_unique<rf::data_flow::RFUUID>((v303.n128_u64[0] + 2112), (v141 + 2));
            v143 = *v141;
            std::__hash_table<rf::data_flow::RFUUID,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<rf::data_flow::RFUUID>>::remove((v303.n128_u64[0] + 80), v141, buf);
            std::unique_ptr<std::__hash_node<std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>,void *>>>>::~unique_ptr[abi:ne200100](buf);
            v141 = v143;
            if (!v143)
            {
              goto LABEL_306;
            }
          }

          v141 = *v141;
        }

        while (v141);
LABEL_306:
        v140 = v303.n128_u64[0];
      }

      v144 = *(v140 + 136);
      if (v144)
      {
        do
        {
          while (*(v144 + 76) == 3)
          {
            v145 = *(v144 + 2);
            *buf = *(v144 + 1);
            v308 = v145;
            std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](&v309, (v144 + 6));
            std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>>>::__emplace_unique_key_args<rf::data_flow::RFUUID,std::pair<rf::data_flow::RFUUID const,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>>(&v288, buf, buf);
            std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v309);
            std::__hash_table<rf::data_flow::RFUUID,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<rf::data_flow::RFUUID>>::__erase_unique<rf::data_flow::RFUUID>((v303.n128_u64[0] + 2072), (v144 + 2));
            std::__hash_table<rf::data_flow::RFUUID,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<rf::data_flow::RFUUID>>::__erase_unique<rf::data_flow::RFUUID>((v303.n128_u64[0] + 2112), (v144 + 2));
            v146 = *v144;
            std::__hash_table<rf::data_flow::RFUUID,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<rf::data_flow::RFUUID>>::remove((v303.n128_u64[0] + 120), v144, buf);
            std::unique_ptr<std::__hash_node<std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>,void *>>>>::~unique_ptr[abi:ne200100](buf);
            v144 = v146;
            if (!v146)
            {
              goto LABEL_312;
            }
          }

          v144 = *v144;
        }

        while (v144);
LABEL_312:
        v140 = v303.n128_u64[0];
      }

      for (m = v289; m; m = *m)
      {
        std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>>>::__emplace_unique_key_args<rf::data_flow::RFUUID,std::pair<rf::data_flow::RFUUID const,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>> const&>((v140 + 2192), (m + 2), m + 1);
      }

      std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>>>::~__hash_table(&v288);
    }

    if (*(a2 + 553) == 1)
    {
      v288 = 0u;
      v289 = 0u;
      v290 = 1065353216;
      v148 = v303.n128_u64[0];
      v149 = *(v303.n128_u64[0] + 96);
      if (v149)
      {
        do
        {
          while (*(v149 + 76) == 2)
          {
            v150 = *(v149 + 2);
            *buf = *(v149 + 1);
            v308 = v150;
            std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](&v309, (v149 + 6));
            std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>>>::__emplace_unique_key_args<rf::data_flow::RFUUID,std::pair<rf::data_flow::RFUUID const,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>>(&v288, buf, buf);
            std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v309);
            std::__hash_table<rf::data_flow::RFUUID,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<rf::data_flow::RFUUID>>::__erase_unique<rf::data_flow::RFUUID>((v303.n128_u64[0] + 2072), (v149 + 2));
            std::__hash_table<rf::data_flow::RFUUID,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<rf::data_flow::RFUUID>>::__erase_unique<rf::data_flow::RFUUID>((v303.n128_u64[0] + 2112), (v149 + 2));
            v151 = *v149;
            std::__hash_table<rf::data_flow::RFUUID,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<rf::data_flow::RFUUID>>::remove((v303.n128_u64[0] + 80), v149, buf);
            std::unique_ptr<std::__hash_node<std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>,void *>>>>::~unique_ptr[abi:ne200100](buf);
            v149 = v151;
            if (!v151)
            {
              goto LABEL_322;
            }
          }

          v149 = *v149;
        }

        while (v149);
LABEL_322:
        v148 = v303.n128_u64[0];
      }

      v152 = *(v148 + 136);
      if (v152)
      {
        do
        {
          while (*(v152 + 76) == 2)
          {
            v153 = *(v152 + 2);
            *buf = *(v152 + 1);
            v308 = v153;
            std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](&v309, (v152 + 6));
            std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>>>::__emplace_unique_key_args<rf::data_flow::RFUUID,std::pair<rf::data_flow::RFUUID const,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>>(&v288, buf, buf);
            std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v309);
            std::__hash_table<rf::data_flow::RFUUID,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<rf::data_flow::RFUUID>>::__erase_unique<rf::data_flow::RFUUID>((v303.n128_u64[0] + 2072), (v152 + 2));
            std::__hash_table<rf::data_flow::RFUUID,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<rf::data_flow::RFUUID>>::__erase_unique<rf::data_flow::RFUUID>((v303.n128_u64[0] + 2112), (v152 + 2));
            v154 = *v152;
            std::__hash_table<rf::data_flow::RFUUID,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<rf::data_flow::RFUUID>>::remove((v303.n128_u64[0] + 120), v152, buf);
            std::unique_ptr<std::__hash_node<std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>,void *>>>>::~unique_ptr[abi:ne200100](buf);
            v152 = v154;
            if (!v154)
            {
              goto LABEL_328;
            }
          }

          v152 = *v152;
        }

        while (v152);
LABEL_328:
        v148 = v303.n128_u64[0];
      }

      for (n = v289; n; n = *n)
      {
        std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>>>::__emplace_unique_key_args<rf::data_flow::RFUUID,std::pair<rf::data_flow::RFUUID const,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>> const&>((v148 + 2192), (n + 2), n + 1);
      }

      std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>>>::~__hash_table(&v288);
    }

    if (*(a2 + 2020) == 1 && *(a2 + 2016) == 1)
    {
      v157 = v303.n128_u64[0];
      if (*(v303.n128_u64[0] + 1632) == *(a2 + 448))
      {
        if (*(v303.n128_u64[0] + 1632))
        {
          std::__variant_detail::__assignment<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::__generic_assign[abi:ne200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>>(v303.n128_u64[0] + 1360, a2 + 176);
        }
      }

      else
      {
        v167 = v303.n128_u64[0] + 1360;
        if (*(v303.n128_u64[0] + 1632))
        {
          std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v167);
          v168 = 0;
        }

        else
        {
          std::__variant_detail::__move_constructor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:ne200100](v167, a2 + 176);
          v168 = 1;
        }

        *(v157 + 1632) = v168;
      }
    }

    rf::detail::insertProbeInto(&v303, (a2 + 560), &v286);
    v170 = v286;
    v169 = v287;
    if (v286 != v287)
    {
      v171 = v303.n128_u64[0];
      do
      {
        std::__hash_table<rf::data_flow::RFUUID,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<rf::data_flow::RFUUID>>::__emplace_unique_key_args<rf::data_flow::RFUUID,rf::data_flow::RFUUID const&>((v171 + 2312), v170, v170);
        v170 += 2;
      }

      while (v170 != v169);
    }

    rf::detail::updateProbeAt(&v303, (a2 + 584), &v284);
    v173 = v284;
    v172 = v285;
    if (v284 != v285)
    {
      v174 = v303.n128_u64[0];
      do
      {
        std::__hash_table<rf::data_flow::RFUUID,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<rf::data_flow::RFUUID>>::__emplace_unique_key_args<rf::data_flow::RFUUID,rf::data_flow::RFUUID const&>((v174 + 2352), v173, v173);
        v173 += 2;
      }

      while (v173 != v172);
    }

    rf::detail::removeProbeFrom(&v303, (a2 + 608), &v282);
    v176 = v282;
    v175 = v283;
    if (v282 != v283)
    {
      v177 = v303.n128_u64[0];
      do
      {
        std::__hash_table<rf::data_flow::RFUUID,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<rf::data_flow::RFUUID>>::__emplace_unique_key_args<rf::data_flow::RFUUID,rf::data_flow::RFUUID const&>((v177 + 2392), v176, v176);
        v176 += 2;
      }

      while (v176 != v175);
    }

    rf::detail::insertObjectsInto(&v303, (a2 + 632), &v280);
    v179 = v280;
    v178 = v281;
    if (v280 != v281)
    {
      v180 = v303.n128_u64[0];
      do
      {
        std::__hash_table<rf::data_flow::RFUUID,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<rf::data_flow::RFUUID>>::__emplace_unique_key_args<rf::data_flow::RFUUID,rf::data_flow::RFUUID const&>((v180 + 2432), v179, v179);
        v179 += 2;
      }

      while (v179 != v178);
    }

    rf::detail::updateObjectsAt(&v303, (a2 + 656), &v278);
    v182 = v278;
    v181 = v279;
    if (v278 != v279)
    {
      v183 = v303.n128_u64[0];
      do
      {
        std::__hash_table<rf::data_flow::RFUUID,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<rf::data_flow::RFUUID>>::__emplace_unique_key_args<rf::data_flow::RFUUID,rf::data_flow::RFUUID const&>((v183 + 2472), v182, v182);
        v182 += 2;
      }

      while (v182 != v181);
    }

    rf::detail::removeObjectsFrom(&v303, (a2 + 680), &v276);
    v185 = v276;
    v184 = v277;
    if (v276 != v277)
    {
      v186 = v303.n128_u64[0];
      do
      {
        std::__hash_table<rf::data_flow::RFUUID,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<rf::data_flow::RFUUID>>::__emplace_unique_key_args<rf::data_flow::RFUUID,rf::data_flow::RFUUID const&>((v186 + 2512), v185, v185);
        v185 += 2;
      }

      while (v185 != v184);
    }

    rf::detail::insertRoomAnchorsInto(&v303, (a2 + 776), &v274);
    v188 = v274;
    v187 = v275;
    if (v274 != v275)
    {
      v189 = v303.n128_u64[0];
      do
      {
        std::__hash_table<rf::data_flow::RFUUID,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<rf::data_flow::RFUUID>>::__emplace_unique_key_args<rf::data_flow::RFUUID,rf::data_flow::RFUUID const&>((v189 + 2552), v188, v188);
        v188 += 2;
      }

      while (v188 != v187);
    }

    rf::detail::updateRoomAnchorsAt(&v303, (a2 + 800), &v272);
    v191 = v272;
    v190 = v273;
    if (v272 != v273)
    {
      v192 = v303.n128_u64[0];
      do
      {
        std::__hash_table<rf::data_flow::RFUUID,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<rf::data_flow::RFUUID>>::__emplace_unique_key_args<rf::data_flow::RFUUID,rf::data_flow::RFUUID const&>((v192 + 2592), v191, v191);
        v191 += 2;
      }

      while (v191 != v190);
    }

    rf::detail::removeRoomAnchorsFrom(&v303, (a2 + 824), &v288);
    v193 = v303.n128_u64[0];
    v194 = v289;
    if (v289)
    {
      v195 = (v303.n128_u64[0] + 2632);
      while (1)
      {
        v196 = v194[5];
        if (!v196)
        {
          if (*(v194 + 32))
          {
            v204 = v194[2];
          }

          else
          {
            v204 = v194 + 2;
          }

          v196 = ((*v204 >> 2) + (*v204 << 6) + v204[1] + 2654435769) ^ *v204;
          v194[5] = v196;
        }

        v197 = *(v193 + 2640);
        if (!*&v197)
        {
          goto LABEL_410;
        }

        v198 = vcnt_s8(v197);
        v198.i16[0] = vaddlv_u8(v198);
        v199 = v198.u32[0];
        if (v198.u32[0] > 1uLL)
        {
          v200 = v196;
          if (v196 >= *&v197)
          {
            v200 = v196 % *&v197;
          }
        }

        else
        {
          v200 = (*&v197 - 1) & v196;
        }

        v201 = *(*v195 + 8 * v200);
        if (!v201 || (v202 = *v201) == 0)
        {
LABEL_410:
          operator new();
        }

        while (1)
        {
          v203 = v202[1];
          if (v203 == v196)
          {
            break;
          }

          if (v199 > 1)
          {
            if (v203 >= *&v197)
            {
              v203 %= *&v197;
            }
          }

          else
          {
            v203 &= *&v197 - 1;
          }

          if (v203 != v200)
          {
            goto LABEL_410;
          }

LABEL_409:
          v202 = *v202;
          if (!v202)
          {
            goto LABEL_410;
          }
        }

        if (!rf::data_flow::RFUUID::Equality::operator()(v193 + 2632, (v202 + 2), (v194 + 2)))
        {
          goto LABEL_409;
        }

        v194 = *v194;
        if (!v194)
        {
          v193 = v303.n128_u64[0];
          v139 = a2;
          break;
        }
      }
    }

    if ((*(v193 + 4000) | 2) == 3)
    {
      v205 = *(v193 + 1200);
      if (v205 == 1)
      {
        v206 = 0;
        *buf = 1;
        LOBYTE(v308) = 0;
        v311 = 0;
LABEL_450:
        if (v205 == v206)
        {
          if (v205)
          {
            rf::data_flow::Room::operator=(v193 + 288, &v308);
          }
        }

        else
        {
          if (v205)
          {
            rf::data_flow::Room::~Room((v193 + 288));
            v215 = 0;
          }

          else
          {
            rf::data_flow::Room::Room((v193 + 288), &v308);
            v215 = 1;
          }

          *(v193 + 1200) = v215;
        }

        *(v303.n128_u64[0] + 2672) = *buf;
        goto LABEL_458;
      }

      goto LABEL_429;
    }

    if (*(v139 + 1776) != 1)
    {
LABEL_429:
      *buf = 0;
      LOBYTE(v308) = 0;
      v311 = 0;
      goto LABEL_458;
    }

    v207 = *(v139 + 1760);
    v208 = *(v193 + 1200);
    if (v207 != v208 || v207 == 0)
    {
      if (v207 != v208)
      {
        if (*(v139 + 1760))
        {
LABEL_438:
          v210 = rf::data_flow::RFUUID::string(&__p, (v139 + 848));
          goto LABEL_439;
        }

LABEL_428:
        v210 = std::string::basic_string[abi:ne200100]<0>(&__p, "(null)");
LABEL_439:
        v213 = rf::realityFusionLogObject(v210);
        if (os_log_type_enabled(v213, OS_LOG_TYPE_DEFAULT))
        {
          p_p = &__p;
          if (SHIBYTE(v271) < 0)
          {
            p_p = __p;
          }

          *v304 = 136446210;
          v305 = p_p;
          _os_log_impl(&dword_2617CB000, v213, OS_LOG_TYPE_DEFAULT, "ARState: switch current room to %{public}s", v304, 0xCu);
        }

        if ((*(v139 + 1776) & 1) == 0)
        {
          std::__throw_bad_optional_access[abi:ne200100]();
        }

        *buf = 1;
        std::__optional_copy_base<rf::data_flow::Room,false>::__optional_copy_base[abi:ne200100](&v308, (v139 + 848));
        if (SHIBYTE(v271) < 0)
        {
          operator delete(__p);
        }

LABEL_448:
        if (*buf)
        {
          v193 = v303.n128_u64[0];
          v205 = *(v303.n128_u64[0] + 1200);
          v206 = v311;
          goto LABEL_450;
        }

LABEL_458:
        v216 = *(v139 + 1815);
        if ((v216 & 0x80u) != 0)
        {
          v216 = *(v139 + 1800);
        }

        if (v216)
        {
          std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>((v303.n128_u64[0] + 1296), (v139 + 1792), v139 + 1792);
          std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>((v303.n128_u64[0] + 2680), (v139 + 1792), v139 + 1792);
        }

        v217 = *(v139 + 1839);
        if ((v217 & 0x80u) != 0)
        {
          v217 = *(v139 + 1824);
        }

        if (!v217)
        {
          goto LABEL_511;
        }

        v218 = v303.n128_u64[0];
        v219 = (v303.n128_u64[0] + 1296);
        v220 = std::__string_hash<char>::operator()[abi:ne200100](v303.n128_u64[0] + 1296, (v139 + 1816));
        v221 = *(v218 + 1304);
        if (!*&v221)
        {
          goto LABEL_510;
        }

        v222 = v220;
        v223 = vcnt_s8(v221);
        v223.i16[0] = vaddlv_u8(v223);
        v224 = v223.u32[0];
        if (v223.u32[0] > 1uLL)
        {
          v225 = v220;
          if (v220 >= *&v221)
          {
            v225 = v220 % *&v221;
          }
        }

        else
        {
          v225 = (*&v221 - 1) & v220;
        }

        v226 = *(*v219 + 8 * v225);
        if (!v226)
        {
          goto LABEL_510;
        }

        v227 = *v226;
        if (!*v226)
        {
          goto LABEL_510;
        }

        while (1)
        {
          v228 = v227[1];
          if (v228 == v222)
          {
            if (std::equal_to<std::string>::operator()[abi:ne200100](v219, v227 + 2, (v139 + 1816)))
            {
              v229 = *(v218 + 1304);
              v230 = *v227;
              v231 = v227[1];
              v232 = vcnt_s8(v229);
              v232.i16[0] = vaddlv_u8(v232);
              if (v232.u32[0] > 1uLL)
              {
                if (v231 >= *&v229)
                {
                  v231 %= *&v229;
                }
              }

              else
              {
                v231 &= *&v229 - 1;
              }

              v233 = *(*v219 + 8 * v231);
              do
              {
                v234 = v233;
                v233 = *v233;
              }

              while (v233 != v227);
              if (v234 == (v218 + 1312))
              {
                goto LABEL_499;
              }

              v235 = v234[1];
              if (v232.u32[0] > 1uLL)
              {
                if (v235 >= *&v229)
                {
                  v235 %= *&v229;
                }
              }

              else
              {
                v235 &= *&v229 - 1;
              }

              if (v235 == v231)
              {
LABEL_501:
                if (v230)
                {
                  v236 = v230[1];
                  goto LABEL_503;
                }
              }

              else
              {
LABEL_499:
                if (!v230)
                {
                  goto LABEL_500;
                }

                v236 = v230[1];
                if (v232.u32[0] > 1uLL)
                {
                  v237 = v230[1];
                  if (v236 >= *&v229)
                  {
                    v237 = v236 % *&v229;
                  }
                }

                else
                {
                  v237 = v236 & (*&v229 - 1);
                }

                if (v237 != v231)
                {
LABEL_500:
                  *(*v219 + 8 * v231) = 0;
                  v230 = *v227;
                  goto LABEL_501;
                }

LABEL_503:
                if (v232.u32[0] > 1uLL)
                {
                  if (v236 >= *&v229)
                  {
                    v236 %= *&v229;
                  }
                }

                else
                {
                  v236 &= *&v229 - 1;
                }

                if (v236 != v231)
                {
                  *(*v219 + 8 * v236) = v234;
                  v230 = *v227;
                }
              }

              *v234 = v230;
              *v227 = 0;
              --*(v218 + 1320);
              LOBYTE(v271) = 1;
              *(&v271 + 1) = 0;
              HIDWORD(v271) = 0;
              __p = 0;
              v270 = v219;
              std::__hash_node_destructor<std::allocator<std::__hash_node<std::string,void *>>>::operator()[abi:ne200100](&v270, v227);
LABEL_510:
              std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>((v303.n128_u64[0] + 2720), (v139 + 1816), v139 + 1816);
LABEL_511:
              v238 = *(v139 + 1863);
              if ((v238 & 0x80u) != 0)
              {
                v238 = *(v139 + 1848);
              }

              if (!v238)
              {
                goto LABEL_532;
              }

              v239 = v303.n128_u64[0];
              v240 = (v303.n128_u64[0] + 2760);
              v241 = std::__string_hash<char>::operator()[abi:ne200100](v303.n128_u64[0] + 2760, (v139 + 1840));
              v242 = v241;
              v243 = *(v239 + 2768);
              if (!*&v243)
              {
                goto LABEL_531;
              }

              v244 = vcnt_s8(v243);
              v244.i16[0] = vaddlv_u8(v244);
              v245 = v244.u32[0];
              if (v244.u32[0] > 1uLL)
              {
                v246 = v241;
                if (v241 >= *&v243)
                {
                  v246 = v241 % *&v243;
                }
              }

              else
              {
                v246 = (*&v243 - 1) & v241;
              }

              v247 = *(*v240 + 8 * v246);
              if (!v247 || (v248 = *v247) == 0)
              {
LABEL_531:
                operator new();
              }

              while (1)
              {
                v249 = v248[1];
                if (v249 == v242)
                {
                  if (std::equal_to<std::string>::operator()[abi:ne200100](v240, v248 + 2, (v139 + 1840)))
                  {
                    v139 = v265;
                    v250 = v265[117];
                    v251 = v265[118];
                    v252 = v265[120];
                    *(v248 + 5) = v265[119];
                    *(v248 + 6) = v252;
                    *(v248 + 3) = v250;
                    *(v248 + 4) = v251;
LABEL_532:
                    rf::detail::insertPRRMeshesInto(&v303, (v139 + 704), &__p);
                    v253 = v271;
                    if (v271)
                    {
                      v254 = v303.n128_u64[0];
                      do
                      {
                        std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>>>::__emplace_unique_key_args<rf::data_flow::RFUUID,std::pair<rf::data_flow::RFUUID const,std::shared_ptr<rf::data_flow::consumer::Mesh>> const&>((v254 + 1952), (v253 + 2), (v253 + 2));
                        v253 = *v253;
                      }

                      while (v253);
                    }

                    rf::detail::updatePRRMeshesAt(&v303, (v139 + 728), v304);
                    v255 = v306;
                    if (v306)
                    {
                      v256 = v303.n128_u64[0];
                      do
                      {
                        std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>>>::__emplace_unique_key_args<rf::data_flow::RFUUID,std::pair<rf::data_flow::RFUUID const,std::shared_ptr<rf::data_flow::consumer::Mesh>> const&>((v256 + 1992), (v255 + 2), (v255 + 2));
                        v255 = *v255;
                      }

                      while (v255);
                    }

                    rf::detail::removePRRMeshesFrom(&v303, (v139 + 752), *(v266 + 4104), v267);
                    v257 = v268;
                    if (v268)
                    {
                      v258 = v303.n128_u64[0];
                      do
                      {
                        std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>>>::__emplace_unique_key_args<rf::data_flow::RFUUID,std::pair<rf::data_flow::RFUUID const,std::shared_ptr<rf::data_flow::consumer::Mesh>> const&>((v258 + 2032), (v257 + 2), (v257 + 2));
                        v257 = *v257;
                      }

                      while (v257);
                    }

                    std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>>>::~__hash_table(v267);
                    std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>>>::~__hash_table(v304);
                    std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>>>::~__hash_table(&__p);
                    if (*(v139 + 2000) == 1)
                    {
                      MutableCameraAnchor = rf::helpers::getMutableCameraAnchor((v303.n128_u64[0] + 80));
                      v260 = *(v139 + 1936);
                      v261 = *(v139 + 1952);
                      v262 = *(v139 + 1984);
                      MutableCameraAnchor[4] = *(v139 + 1968);
                      MutableCameraAnchor[5] = v262;
                      MutableCameraAnchor[2] = v260;
                      MutableCameraAnchor[3] = v261;
                    }

                    if (*(v139 + 2028) == 1)
                    {
                      v263 = v303.n128_u64[0];
                      *(v303.n128_u64[0] + 1336) = *(v139 + 2024);
                      *(v263 + 1340) = 1;
                    }

                    if (*(v139 + 2036) == 1)
                    {
                      v264 = v303.n128_u64[0];
                      *(v303.n128_u64[0] + 1344) = *(v139 + 2032);
                      *(v264 + 1348) = 1;
                    }

                    if (v311 == 1)
                    {
                      rf::data_flow::Room::~Room(&v308);
                    }

                    std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::Room>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::Room>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::Room>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::Room>>>::~__hash_table(&v288);
                    if (v272)
                    {
                      v273 = v272;
                      operator delete(v272);
                    }

                    if (v274)
                    {
                      v275 = v274;
                      operator delete(v274);
                    }

                    if (v276)
                    {
                      v277 = v276;
                      operator delete(v276);
                    }

                    if (v278)
                    {
                      v279 = v278;
                      operator delete(v278);
                    }

                    if (v280)
                    {
                      v281 = v280;
                      operator delete(v280);
                    }

                    if (v282)
                    {
                      v283 = v282;
                      operator delete(v282);
                    }

                    if (v284)
                    {
                      v285 = v284;
                      operator delete(v284);
                    }

                    if (v286)
                    {
                      v287 = v286;
                      operator delete(v286);
                    }

                    std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>>>::~__hash_table(v291);
                    if (v293)
                    {
                      v294 = v293;
                      operator delete(v293);
                    }

                    if (v295)
                    {
                      v296 = v295;
                      operator delete(v295);
                    }

                    std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>>>::~__hash_table(v297);
                    std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>>>::~__hash_table(v299);
                    std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>>>::~__hash_table(v301);
                    goto LABEL_570;
                  }
                }

                else
                {
                  if (v245 > 1)
                  {
                    if (v249 >= *&v243)
                    {
                      v249 %= *&v243;
                    }
                  }

                  else
                  {
                    v249 &= *&v243 - 1;
                  }

                  if (v249 != v246)
                  {
                    goto LABEL_531;
                  }
                }

                v248 = *v248;
                if (!v248)
                {
                  goto LABEL_531;
                }
              }
            }
          }

          else
          {
            if (v224 > 1)
            {
              if (v228 >= *&v221)
              {
                v228 %= *&v221;
              }
            }

            else
            {
              v228 &= *&v221 - 1;
            }

            if (v228 != v225)
            {
              goto LABEL_510;
            }
          }

          v227 = *v227;
          if (!v227)
          {
            goto LABEL_510;
          }
        }
      }
    }

    else
    {
      if (*(v139 + 864))
      {
        v211 = *(v139 + 848);
      }

      else
      {
        v211 = (v139 + 848);
      }

      if (*(v193 + 304))
      {
        v212 = *(v193 + 288);
      }

      else
      {
        v212 = (v193 + 288);
      }

      if (uuid_compare(v211, v212))
      {
        if (*(v139 + 1760))
        {
          goto LABEL_438;
        }

        goto LABEL_428;
      }

      if ((*(v139 + 1776) & 1) == 0)
      {
        std::__throw_bad_optional_access[abi:ne200100]();
      }
    }

    *buf = 2;
    std::__optional_copy_base<rf::data_flow::Room,false>::__optional_copy_base[abi:ne200100](&v308, (v139 + 848));
    goto LABEL_448;
  }

  v301[0] = &v303;
  v24 = v303.n128_u64[0];
  v25 = *(v303.n128_u64[0] + 16);
  if (!v25)
  {
    goto LABEL_341;
  }

  do
  {
    while ((*(*(v25 + 48) + 112) & 1) != 0)
    {
      v25 = *v25;
      if (!v25)
      {
        goto LABEL_340;
      }
    }

    v26 = std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>>>::find<rf::data_flow::RFUUID>((v303.n128_u64[0] + 1712), v25 + 16);
    if (v26)
    {
      std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>>>::erase((v303.n128_u64[0] + 1712), v26);
    }

    v27 = std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>>>::find<rf::data_flow::RFUUID>((v303.n128_u64[0] + 1752), v25 + 16);
    if (v27)
    {
      std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>>>::erase((v303.n128_u64[0] + 1752), v27);
    }

    v28 = *(v25 + 40);
    if (!v28)
    {
      if (*(v25 + 32))
      {
        v87 = *(v25 + 16);
      }

      else
      {
        v87 = (v25 + 16);
      }

      v28 = ((*v87 >> 2) + (*v87 << 6) + v87[1] + 2654435769) ^ *v87;
      *(v25 + 40) = v28;
    }

    v29 = v303.n128_u64[0];
    v30 = *(v303.n128_u64[0] + 1840);
    if (!*&v30)
    {
      goto LABEL_122;
    }

    v31 = vcnt_s8(v30);
    v31.i16[0] = vaddlv_u8(v31);
    v32 = v31.u32[0];
    if (v31.u32[0] > 1uLL)
    {
      v33 = v28;
      if (v28 >= *&v30)
      {
        v33 = v28 % *&v30;
      }
    }

    else
    {
      v33 = (*&v30 - 1) & v28;
    }

    v34 = v303.n128_u64[0] + 1832;
    v35 = *(*(v303.n128_u64[0] + 1832) + 8 * v33);
    if (!v35)
    {
      goto LABEL_122;
    }

    v36 = *v35;
    if (!*v35)
    {
      goto LABEL_122;
    }

    while (1)
    {
      v37 = v36[1];
      if (v37 == v28)
      {
        break;
      }

      if (v32 > 1)
      {
        if (v37 >= *&v30)
        {
          v37 %= *&v30;
        }
      }

      else
      {
        v37 &= *&v30 - 1;
      }

      if (v37 != v33)
      {
        goto LABEL_121;
      }

LABEL_92:
      v36 = *v36;
      if (!v36)
      {
        goto LABEL_121;
      }
    }

    if (!rf::data_flow::RFUUID::Equality::operator()(v34, (v36 + 2), v25 + 16))
    {
      goto LABEL_92;
    }

    v38 = v303.n128_u64[0];
    v39 = *(v303.n128_u64[0] + 1840);
    v40 = v36[1];
    v41 = vcnt_s8(v39);
    v41.i16[0] = vaddlv_u8(v41);
    if (v41.u32[0] > 1uLL)
    {
      if (v40 >= *&v39)
      {
        v40 %= *&v39;
      }
    }

    else
    {
      v40 &= *&v39 - 1;
    }

    v42 = (v303.n128_u64[0] + 1832);
    v43 = *(v303.n128_u64[0] + 1832);
    v44 = *(v43 + 8 * v40);
    do
    {
      v45 = v44;
      v44 = *v44;
    }

    while (v44 != v36);
    if (v45 == (v303.n128_u64[0] + 1848))
    {
      goto LABEL_111;
    }

    v46 = v45[1];
    if (v41.u32[0] > 1uLL)
    {
      if (v46 >= *&v39)
      {
        v46 %= *&v39;
      }
    }

    else
    {
      v46 &= *&v39 - 1;
    }

    if (v46 != v40)
    {
LABEL_111:
      if (!*v36)
      {
        goto LABEL_112;
      }

      v47 = *(*v36 + 8);
      if (v41.u32[0] > 1uLL)
      {
        if (v47 >= *&v39)
        {
          v47 %= *&v39;
        }
      }

      else
      {
        v47 &= *&v39 - 1;
      }

      if (v47 != v40)
      {
LABEL_112:
        *(v43 + 8 * v40) = 0;
      }
    }

    v48 = *v36;
    if (*v36)
    {
      v49 = *(v48 + 8);
      if (v41.u32[0] > 1uLL)
      {
        if (v49 >= *&v39)
        {
          v49 %= *&v39;
        }
      }

      else
      {
        v49 &= *&v39 - 1;
      }

      if (v49 != v40)
      {
        *(*v42 + 8 * v49) = v45;
        v48 = *v36;
      }
    }

    *v45 = v48;
    *v36 = 0;
    --*(v38 + 1856);
    *buf = v36;
    *&buf[8] = v38 + 1832;
    LOBYTE(v308) = 1;
    *(&v308 + 1) = 0;
    DWORD1(v308) = 0;
    std::unique_ptr<std::__hash_node<std::__hash_value_type<rf::data_flow::RFUUID,RESharedPtr<REAsset>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<rf::data_flow::RFUUID,RESharedPtr<REAsset>>,void *>>>>::~unique_ptr[abi:ne200100](buf);
LABEL_121:
    v29 = v303.n128_u64[0];
LABEL_122:
    v50 = *(v25 + 40);
    if (!v50)
    {
      if (*(v25 + 32))
      {
        v88 = *(v25 + 16);
      }

      else
      {
        v88 = (v25 + 16);
      }

      v50 = ((*v88 >> 2) + (*v88 << 6) + v88[1] + 2654435769) ^ *v88;
      *(v25 + 40) = v50;
    }

    v51 = v29[235];
    if (!*&v51)
    {
      goto LABEL_168;
    }

    v52 = vcnt_s8(v51);
    v52.i16[0] = vaddlv_u8(v52);
    v53 = v52.u32[0];
    if (v52.u32[0] > 1uLL)
    {
      v54 = v50;
      if (v50 >= *&v51)
      {
        v54 = v50 % *&v51;
      }
    }

    else
    {
      v54 = (*&v51 - 1) & v50;
    }

    v55 = (v29 + 234);
    v56 = *(v29[234] + 8 * v54);
    if (!v56)
    {
      goto LABEL_168;
    }

    v57 = *v56;
    if (!*v56)
    {
      goto LABEL_168;
    }

    while (2)
    {
      v58 = v57[1];
      if (v58 != v50)
      {
        if (v53 > 1)
        {
          if (v58 >= *&v51)
          {
            v58 %= *&v51;
          }
        }

        else
        {
          v58 &= *&v51 - 1;
        }

        if (v58 != v54)
        {
          goto LABEL_167;
        }

LABEL_138:
        v57 = *v57;
        if (!v57)
        {
          goto LABEL_167;
        }

        continue;
      }

      break;
    }

    if (!rf::data_flow::RFUUID::Equality::operator()(v55, (v57 + 2), v25 + 16))
    {
      goto LABEL_138;
    }

    v59 = v303.n128_u64[0];
    v60 = *(v303.n128_u64[0] + 1880);
    v61 = v57[1];
    v62 = vcnt_s8(v60);
    v62.i16[0] = vaddlv_u8(v62);
    if (v62.u32[0] > 1uLL)
    {
      if (v61 >= *&v60)
      {
        v61 %= *&v60;
      }
    }

    else
    {
      v61 &= *&v60 - 1;
    }

    v63 = (v303.n128_u64[0] + 1872);
    v64 = *(v303.n128_u64[0] + 1872);
    v65 = *(v64 + 8 * v61);
    do
    {
      v66 = v65;
      v65 = *v65;
    }

    while (v65 != v57);
    if (v66 == (v303.n128_u64[0] + 1888))
    {
      goto LABEL_157;
    }

    v67 = v66[1];
    if (v62.u32[0] > 1uLL)
    {
      if (v67 >= *&v60)
      {
        v67 %= *&v60;
      }
    }

    else
    {
      v67 &= *&v60 - 1;
    }

    if (v67 != v61)
    {
LABEL_157:
      if (!*v57)
      {
        goto LABEL_158;
      }

      v68 = *(*v57 + 8);
      if (v62.u32[0] > 1uLL)
      {
        if (v68 >= *&v60)
        {
          v68 %= *&v60;
        }
      }

      else
      {
        v68 &= *&v60 - 1;
      }

      if (v68 != v61)
      {
LABEL_158:
        *(v64 + 8 * v61) = 0;
      }
    }

    v69 = *v57;
    if (*v57)
    {
      v70 = *(v69 + 8);
      if (v62.u32[0] > 1uLL)
      {
        if (v70 >= *&v60)
        {
          v70 %= *&v60;
        }
      }

      else
      {
        v70 &= *&v60 - 1;
      }

      if (v70 != v61)
      {
        *(*v63 + 8 * v70) = v66;
        v69 = *v57;
      }
    }

    *v66 = v69;
    *v57 = 0;
    --*(v59 + 1896);
    *buf = v57;
    *&buf[8] = v59 + 1872;
    LOBYTE(v308) = 1;
    *(&v308 + 1) = 0;
    DWORD1(v308) = 0;
    std::unique_ptr<std::__hash_node<std::__hash_value_type<rf::data_flow::RFUUID,std::unique_ptr<RECollisionMesh,rf::RECollisionMeshDeleter>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<rf::data_flow::RFUUID,std::unique_ptr<RECollisionMesh,rf::RECollisionMeshDeleter>>,void *>>>>::~unique_ptr[abi:ne200100](buf);
LABEL_167:
    v29 = v303.n128_u64[0];
LABEL_168:
    v71 = std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>>>::find<rf::data_flow::RFUUID>(v29 + 239, v25 + 16);
    v72 = v71;
    if (v71)
    {
      v73 = v303.n128_u64[0];
      v74 = *(v303.n128_u64[0] + 1920);
      v75 = v71[1];
      v76 = vcnt_s8(v74);
      v76.i16[0] = vaddlv_u8(v76);
      if (v76.u32[0] > 1uLL)
      {
        if (v75 >= *&v74)
        {
          v75 %= *&v74;
        }
      }

      else
      {
        v75 &= *&v74 - 1;
      }

      v77 = *v71;
      v78 = *(v303.n128_u64[0] + 1912);
      v79 = *(v78 + 8 * v75);
      do
      {
        v80 = v79;
        v79 = *v79;
      }

      while (v79 != v71);
      if (v80 == (v303.n128_u64[0] + 1928))
      {
        goto LABEL_186;
      }

      v81 = v80[1];
      if (v76.u32[0] > 1uLL)
      {
        if (v81 >= *&v74)
        {
          v81 %= *&v74;
        }
      }

      else
      {
        v81 &= *&v74 - 1;
      }

      if (v81 == v75)
      {
LABEL_188:
        if (v77)
        {
          v82 = *(v77 + 8);
          goto LABEL_190;
        }
      }

      else
      {
LABEL_186:
        if (!v77)
        {
          goto LABEL_187;
        }

        v82 = *(v77 + 8);
        if (v76.u32[0] > 1uLL)
        {
          v83 = *(v77 + 8);
          if (v82 >= *&v74)
          {
            v83 = v82 % *&v74;
          }
        }

        else
        {
          v83 = v82 & (*&v74 - 1);
        }

        if (v83 != v75)
        {
LABEL_187:
          *(v78 + 8 * v75) = 0;
          v77 = *v71;
          goto LABEL_188;
        }

LABEL_190:
        if (v76.u32[0] > 1uLL)
        {
          if (v82 >= *&v74)
          {
            v82 %= *&v74;
          }
        }

        else
        {
          v82 &= *&v74 - 1;
        }

        if (v82 != v75)
        {
          *(*(v73 + 1912) + 8 * v82) = v80;
          v77 = *v71;
        }
      }

      *v80 = v77;
      *v71 = 0;
      --*(v73 + 1936);

      operator delete(v72);
    }

    v84 = v303.n128_u64[0];
    v85 = *(v25 + 32);
    *buf = *(v25 + 16);
    v308 = v85;
    v86 = *(v25 + 56);
    v309 = *(v25 + 48);
    v310 = v86;
    if (v86)
    {
      atomic_fetch_add_explicit(&v86->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>>>::__emplace_unique_key_args<rf::data_flow::RFUUID,std::pair<rf::data_flow::RFUUID const,std::shared_ptr<rf::data_flow::consumer::Mesh>>>((v84 + 1792), buf, buf);
    if (v310)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v310);
    }

    v25 = std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>>>::erase(v303.n128_u64[0], v25);
  }

  while (v25);
LABEL_340:
  v24 = v303.n128_u64[0];
LABEL_341:
  if (*(v24 + 184))
  {
    std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::PinnedGroup>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::PinnedGroup>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::PinnedGroup>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::PinnedGroup>>>::__deallocate_node(v24 + 160, *(v24 + 176));
    *(v24 + 176) = 0;
    v158 = *(v24 + 168);
    if (v158)
    {
      for (ii = 0; ii != v158; ++ii)
      {
        *(*(v24 + 160) + 8 * ii) = 0;
      }
    }

    *(v24 + 184) = 0;
    v24 = v303.n128_u64[0];
  }

  for (jj = *(v24 + 56); jj; v24 = v303.n128_u64[0])
  {
    while ((*(*(jj + 48) + 112) & 1) != 0)
    {
      jj = *jj;
      if (!jj)
      {
        goto LABEL_359;
      }
    }

    v161 = std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>>>::find<rf::data_flow::RFUUID>((v24 + 1952), jj + 16);
    if (v161)
    {
      std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>>>::erase((v303.n128_u64[0] + 1952), v161);
    }

    v162 = std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>>>::find<rf::data_flow::RFUUID>((v303.n128_u64[0] + 1992), jj + 16);
    if (v162)
    {
      std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>>>::erase((v303.n128_u64[0] + 1992), v162);
    }

    v163 = v303.n128_u64[0];
    v164 = *(jj + 32);
    *buf = *(jj + 16);
    v308 = v164;
    v165 = *(jj + 56);
    v309 = *(jj + 48);
    v310 = v165;
    if (v165)
    {
      atomic_fetch_add_explicit(&v165->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>>>::__emplace_unique_key_args<rf::data_flow::RFUUID,std::pair<rf::data_flow::RFUUID const,std::shared_ptr<rf::data_flow::consumer::Mesh>>>((v163 + 2032), buf, buf);
    if (v310)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v310);
    }

    jj = std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>>>::erase((v303.n128_u64[0] + 40), jj);
  }

LABEL_359:
  v166 = *(v24 + 1232);
  if (v166)
  {
    do
    {
      std::__hash_table<rf::data_flow::RFUUID,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<rf::data_flow::RFUUID>>::__emplace_unique_key_args<rf::data_flow::RFUUID,rf::data_flow::RFUUID const&>((v303.n128_u64[0] + 2392), (v166 + 2), v166 + 1);
      v166 = *v166;
    }

    while (v166);
    v24 = v303.n128_u64[0];
  }

  std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>>>::clear(v24 + 1216);
  std::__hash_table<rf::data_flow::RFUUID,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<rf::data_flow::RFUUID>>::clear((v303.n128_u64[0] + 2312));
  std::__hash_table<rf::data_flow::RFUUID,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<rf::data_flow::RFUUID>>::clear((v303.n128_u64[0] + 2352));
LABEL_570:
  std::mutex::unlock(v303.n128_u64[1]);
}

void sub_2617FCF74(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t std::optional<RESharedPtr<REAsset>>::operator=[abi:ne200100]<RESharedPtr<REAsset>&,void>(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 8) == 1)
  {
    RESharedPtr<REAsset>::operator=(a1, a2);
  }

  else
  {
    v3 = *a2;
    *a1 = *a2;
    if (v3)
    {
      RERetain();
    }

    *(a1 + 8) = 1;
  }

  return a1;
}

uint64_t std::optional<MDLMesh * {__strong}>::operator=[abi:ne200100]<MDLMesh * {__strong}&,void>(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v4 = a2;
  if (v3 == 1)
  {
    v5 = *a1;
    *a1 = v4;
  }

  else
  {
    *a1 = v4;
    *(a1 + 8) = 1;
  }

  return a1;
}

void rf::ARState::consumeChangesSinceLast(uint64_t a1, void *a2)
{
  v2 = a1;
  v273 = *MEMORY[0x277D85DE8];
  if (*a1)
  {
    *a1 = 256;
    v3 = (a1 + 80);
    v222 = (a1 + 80);
    v223 = (a1 + 16);
    v201 = (a1 + 16);
    std::mutex::lock((a1 + 16));
    v2[362] = v2[512];
    for (i = v2[541]; i; v2 = a1)
    {
      *&block = i[2];
      v5 = std::__hash_table<std::__hash_value_type<unsigned long,rf::data_flow::provider::SyntheticARData>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,rf::data_flow::provider::SyntheticARData>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,rf::data_flow::provider::SyntheticARData>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,rf::data_flow::provider::SyntheticARData>>>::find<unsigned long>(v2 + 534, &block);
      v6 = v5;
      if (!v5)
      {
        std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
      }

      v7 = *(a1 + 2752);
      v8 = *(v5 + 208);
      if (v8 == 1)
      {
        *(v5 + 208) = 0;
      }

      v9 = rf::data_flow::RoomManagementClient::needsEvaluateRoomAwareAnchorsDueToAnchorUpdates((v5 + 3), a1 + 2152, a1 + 2192, a1 + 2272, (a1 + 160));
      if (v7)
      {
        v10 = 1;
      }

      else
      {
        v10 = v9;
      }

      if (v10 & 1) != 0 || (v8)
      {
        v11 = rf::data_flow::RoomManagementClient::evaluateRoomAwareAnchorsInCurrentRoom((v6 + 3), a1 + 368, (a1 + 160), a1 + 240);
        v12 = v11;
        if (v7 == 1 || (v8 & 1) != 0 || v11 == 1)
        {
          v13 = rf::realityFusionLogObject(v11);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134218752;
            *&buf[4] = block;
            *&buf[12] = 1024;
            *&buf[14] = v7 == 1;
            *&buf[18] = 1024;
            *&buf[20] = v8;
            *&buf[24] = 1024;
            *&buf[26] = v12 == 1;
            _os_log_impl(&dword_2617CB000, v13, OS_LOG_TYPE_DEFAULT, "ARState: triggering client room change %lu due to anchor update (roomChanged=%d, clientChanged=%d, clientRoomAwareAnchorsChanged=%d)", buf, 0x1Eu);
          }

          rf::data_flow::RoomManagementClient::triggerRoomChange((v6 + 3), (a1 + 368), (a1 + 160));
        }
      }

      i = *i;
    }

    v202 = v2 + 512;
    if (a2[1])
    {
      v219 = 0u;
      v220 = 0u;
      v221 = 1065353216;
      v14 = v2[231];
      if (v14)
      {
        do
        {
          std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>>>::__emplace_unique_key_args<rf::data_flow::RFUUID,std::pair<rf::data_flow::RFUUID const,std::shared_ptr<rf::data_flow::consumer::Mesh>> const&>(&v219, (v14 + 2), (v14 + 2));
          v14 = *v14;
        }

        while (v14);
        v3 = v222;
      }

      for (j = v3[216]; j; j = *j)
      {
        std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>>>::__emplace_unique_key_args<rf::data_flow::RFUUID,std::pair<rf::data_flow::RFUUID const,std::shared_ptr<rf::data_flow::consumer::Mesh>> const&>(&v219, (j + 2), (j + 2));
      }

      if ((a2[1] & 1) == 0)
      {
        std::__throw_bad_optional_access[abi:ne200100]();
      }

      v16 = MEMORY[0x26670CB10](*a2);
      v17 = v220;
      if (v220)
      {
        v18 = v16;
        v198 = *MEMORY[0x277D00858];
        v197 = *MEMORY[0x277D00850];
        v199 = *MEMORY[0x277CBED00];
        v200 = *MEMORY[0x277CBECE8];
        while (1)
        {
          v19 = *(v17 + 2);
          v229 = *(v17 + 1);
          v230 = v19;
          v20 = *(v17[6] + 32);
          if (rf::isRealityFusionVerboseLoggingEnabled(void)::once != -1)
          {
            dispatch_once(&rf::isRealityFusionVerboseLoggingEnabled(void)::once, &__block_literal_global_4_0);
          }

          if (rf::isRealityFusionVerboseLoggingEnabled(void)::_realityFusionVerboseLoggingEnabled == 1)
          {
            v38 = rf::realityFusionLogObject(v16);
            if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
            {
              v39 = *(v17[6] + 116);
              rf::data_flow::RFUUID::string(buf, &v229);
              v40 = "PRR";
              if (!v39)
              {
                v40 = "MeshChunk";
              }

              if ((buf[23] & 0x80u) == 0)
              {
                v41 = buf;
              }

              else
              {
                v41 = *buf;
              }

              v227[0].i32[0] = 136315394;
              *(v227 + 4) = v40;
              v227[1].i16[2] = 2082;
              *(&v227[1] + 6) = v41;
              _os_log_impl(&dword_2617CB000, v38, OS_LOG_TYPE_DEFAULT, "ARState: Update Mesh Asset for %s mesh %{public}s", v227, 0x16u);
              if (buf[23] < 0)
              {
                operator delete(*buf);
              }
            }
          }

          if (re::internal::enableSignposts(0, 0))
          {
            if (!*(&v230 + 1))
            {
              v42 = &v229;
              if (v230)
              {
                v42 = v229;
              }

              *(&v230 + 1) = ((*v42 >> 2) + (*v42 << 6) + *(v42 + 1) + 2654435769) ^ *v42;
            }

            kdebug_trace();
          }

          if (re::internal::enableSignposts(0, 0))
          {
            if (!*(&v230 + 1))
            {
              v43 = &v229;
              if (v230)
              {
                v43 = v229;
              }

              *(&v230 + 1) = ((*v43 >> 2) + (*v43 << 6) + *(v43 + 1) + 2654435769) ^ *v43;
            }

            kdebug_trace();
          }

          if ((*(v202 + 35) & 1) == 0)
          {
            break;
          }

          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x6812000000;
          *&buf[24] = __Block_byref_object_copy_;
          v233 = __Block_byref_object_dispose_;
          *v234 = "";
          *&v234[8] = a1;
          *&v234[16] = v20;
          *&v234[24] = v229;
          *v235 = v230;
          v235[2] = v18;
          v21 = *(a1 + 4120);
          v22 = *(a1 + 4112);
          *&block = MEMORY[0x277D85DD0];
          *(&block + 1) = 3221225472;
          *&v271 = ___ZN2rf7ARState15updateMeshAssetERNS_17LockedARStateDataERKNSt3__113unordered_mapINS_9data_flow6RFUUIDENS3_10shared_ptrINS5_8consumer4MeshEEENS6_4HashENS6_8EqualityENS3_9allocatorINS3_4pairIKS6_SA_EEEEEEP14REAssetManager_block_invoke;
          *(&v271 + 1) = &unk_279AED018;
          v272 = buf;
          dispatch_group_async(v21, v22, &block);
          _Block_object_dispose(buf, 8);
LABEL_70:
          v17 = *v17;
          if (!v17)
          {
            goto LABEL_143;
          }
        }

        v24 = v227[0];
        if (!*v227)
        {
          if (re::internal::enableSignposts(0, 0))
          {
            if (!*(&v230 + 1))
            {
              v44 = &v229;
              if (v230)
              {
                v44 = v229;
              }

              *(&v230 + 1) = ((*v44 >> 2) + (*v44 << 6) + *(v44 + 1) + 2654435769) ^ *v44;
            }

            kdebug_trace();
          }

          if (re::internal::enableSignposts(0, 0))
          {
            if (!*(&v230 + 1))
            {
              v45 = &v229;
              if (v230)
              {
                v45 = v229;
              }

              *(&v230 + 1) = ((*v45 >> 2) + (*v45 << 6) + *(v45 + 1) + 2654435769) ^ *v45;
            }

            kdebug_trace();
          }

          if (re::internal::enableSignposts(0, 0))
          {
            if (!*(&v230 + 1))
            {
              v46 = &v229;
              if (v230)
              {
                v46 = v229;
              }

              *(&v230 + 1) = ((*v46 >> 2) + (*v46 << 6) + *(v46 + 1) + 2654435769) ^ *v46;
            }

            kdebug_trace();
          }

          goto LABEL_68;
        }

        if (*(*v227 + 216) == 1 && (v23 = *(*v227 + 192)) != 0 && (v23 = [v23 length]) != 0)
        {
          if (*(*&v24 + 152) == 1)
          {
            v23 = *(*&v24 + 128);
            if (v23)
            {
              v23 = [v23 length];
              if (v23)
              {
                if (*(*&v24 + 184) == 1)
                {
                  v23 = *(*&v24 + 160);
                  if (v23)
                  {
                    v23 = [v23 length];
                    if (v23)
                    {
                      if (re::internal::enableSignposts(0, 0))
                      {
                        if (!*(&v230 + 1))
                        {
                          v47 = &v229;
                          if (v230)
                          {
                            v47 = v229;
                          }

                          *(&v230 + 1) = ((*v47 >> 2) + (*v47 << 6) + *(v47 + 1) + 2654435769) ^ *v47;
                        }

                        kdebug_trace();
                      }

                      if (*(*&v24 + 376) != 1 || !*(*&v24 + 368))
                      {
                        Mutable = REAssetServiceMeshAssetCreateMutable();
                        v26 = Mutable;
                        *buf = Mutable;
                        if (*(*&v24 + 376) == 1)
                        {
                          v27 = *(*&v24 + 368);
                          *(*&v24 + 368) = v26;
                          if (v27)
                          {
                            RERelease();
                          }

                          *buf = 0;
                        }

                        else
                        {
                          *(*&v24 + 368) = Mutable;
                          *buf = 0;
                          *(*&v24 + 376) = 1;
                        }

                        RESharedPtr<REAsset>::~RESharedPtr(buf);
                      }

                      *v224 = v198;
                      *&v224[8] = v197;
                      REMeshAttributesDescriptorCreate();
                      REMeshDefinitionCreateWithAttributes();
                      v34 = *(*&v24 + 208);
                      v195 = [*(*&v24 + 192) length];
                      v35 = [*(*&v24 + 192) contents];
                      if (v195 >= 4 * v34)
                      {
                        v36 = 4 * v34;
                      }

                      else
                      {
                        v36 = v195;
                      }

                      v196 = CFDataCreateWithBytesNoCopy(v200, v35, v36, v199);
                      *&v217[0] = v196;
                      cf = CFDataCreateWithBytesNoCopy(v200, [*(*&v24 + 128) contents], objc_msgSend(*(*&v24 + 128), "length"), v199);
                      *&v215[0] = cf;
                      v193 = CFDataCreateWithBytesNoCopy(v200, [*(*&v24 + 160) contents], objc_msgSend(*(*&v24 + 160), "length"), v199);
                      *&v213[0] = v193;
                      REMeshDefinitionSetIndicesWithData();
                      REMeshDefinitionSetAttributeWithData();
                      REMeshDefinitionSetAttributeWithData();
                      REMeshModelDefinitionCreate();
                      REMeshModelDefinitionAppendTriangles();
                      REMeshAssetReplaceAllWithModel();
                      RERelease();
                      RERelease();
                      RERelease();
                      v37 = v222;
                      *buf = v229;
                      *&buf[16] = v230;
                      v233 = *(*&v24 + 368);
                      if (v233)
                      {
                        RERetain();
                      }

                      std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,RESharedPtr<REAsset>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,RESharedPtr<REAsset>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,RESharedPtr<REAsset>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,RESharedPtr<REAsset>>>>::__emplace_unique_key_args<rf::data_flow::RFUUID,std::pair<rf::data_flow::RFUUID const,RESharedPtr<REAsset>>>(v37 + 229, buf, buf);
                      RESharedPtr<REAsset>::~RESharedPtr(&v233);
                      if (re::internal::enableSignposts(0, 0))
                      {
                        if (!*(&v230 + 1))
                        {
                          v48 = &v229;
                          if (v230)
                          {
                            v48 = v229;
                          }

                          *(&v230 + 1) = ((*v48 >> 2) + (*v48 << 6) + *(v48 + 1) + 2654435769) ^ *v48;
                        }

                        kdebug_trace();
                      }

                      if (re::internal::enableSignposts(0, 0))
                      {
                        if (!*(&v230 + 1))
                        {
                          v49 = &v229;
                          if (v230)
                          {
                            v49 = v229;
                          }

                          *(&v230 + 1) = ((*v49 >> 2) + (*v49 << 6) + *(v49 + 1) + 2654435769) ^ *v49;
                        }

                        kdebug_trace();
                      }

                      if (v193)
                      {
                        CFRelease(v193);
                      }

                      if (cf)
                      {
                        CFRelease(cf);
                      }

                      if (v196)
                      {
                        CFRelease(v196);
                      }

                      goto LABEL_68;
                    }
                  }
                }

                v28 = rf::realityFusionLogObject(v23);
                if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
                {
                  rf::data_flow::RFUUID::string(buf, &v229);
                  if ((buf[23] & 0x80u) == 0)
                  {
                    v33 = buf;
                  }

                  else
                  {
                    v33 = *buf;
                  }

                  *v224 = 136446210;
                  *&v224[4] = v33;
                  v30 = v28;
                  v31 = "Updated Mesh with identifier %{public}s should have normal buffer";
                  goto LABEL_81;
                }

LABEL_58:

LABEL_68:
                v16 = v227[1];
                if (v227[1])
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](*&v227[1]);
                }

                goto LABEL_70;
              }
            }
          }

          v28 = rf::realityFusionLogObject(v23);
          if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_58;
          }

          rf::data_flow::RFUUID::string(buf, &v229);
          if ((buf[23] & 0x80u) == 0)
          {
            v29 = buf;
          }

          else
          {
            v29 = *buf;
          }

          *v224 = 136446210;
          *&v224[4] = v29;
          v30 = v28;
          v31 = "Updated Mesh with identifier %{public}s should have position buffer";
        }

        else
        {
          v28 = rf::realityFusionLogObject(v23);
          if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_58;
          }

          rf::data_flow::RFUUID::string(buf, &v229);
          if ((buf[23] & 0x80u) == 0)
          {
            v32 = buf;
          }

          else
          {
            v32 = *buf;
          }

          *v224 = 136446210;
          *&v224[4] = v32;
          v30 = v28;
          v31 = "Updated Mesh with identifier %{public}s should have indices buffer";
        }

LABEL_81:
        _os_log_error_impl(&dword_2617CB000, v30, OS_LOG_TYPE_ERROR, v31, v224, 0xCu);
        if (buf[23] < 0)
        {
          operator delete(*buf);
        }

        goto LABEL_58;
      }

LABEL_143:
      if (*(v202 + 9) == 1)
      {
        for (k = v220; k; k = *k)
        {
          v52 = k[2];
          v53 = k[3];
          v54 = *(k + 32);
          LODWORD(v229) = *(k + 33);
          *(&v229 + 3) = *(k + 9);
          v55 = k[5];
          v56 = *(k[6] + 32);
          if (re::internal::enableSignposts(0, 0))
          {
            if (!v55)
            {
              if (v54)
              {
                v59 = *v52;
                v60 = v52[1];
              }

              else
              {
                v59 = v52;
                v60 = v53;
              }

              v55 = ((v59 >> 2) + (v59 << 6) + v60 + 2654435769u) ^ v59;
            }

            kdebug_trace();
          }

          if (re::internal::enableSignposts(0, 0))
          {
            if (!v55)
            {
              if (v54)
              {
                v61 = *v52;
                v62 = v52[1];
              }

              else
              {
                v61 = v52;
                v62 = v53;
              }

              v55 = ((v61 >> 2) + (v61 << 6) + v62 + 2654435769u) ^ v61;
            }

            kdebug_trace();
          }

          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x6012000000;
          *&buf[24] = __Block_byref_object_copy__7;
          v233 = __Block_byref_object_dispose__8;
          *v234 = "";
          *&v234[8] = a1;
          *&v234[16] = v56;
          *&v234[24] = v52;
          *&v234[32] = v53;
          LOBYTE(v235[0]) = v54;
          *(v235 + 1) = v229;
          HIDWORD(v235[0]) = *(&v229 + 3);
          v235[1] = v55;
          v57 = *(a1 + 4120);
          v58 = *(a1 + 4112);
          *&block = MEMORY[0x277D85DD0];
          *(&block + 1) = 3221225472;
          *&v271 = ___ZN2rf7ARState18updatePhysicsShapeERNS_17LockedARStateDataERKNSt3__113unordered_mapINS_9data_flow6RFUUIDENS3_10shared_ptrINS5_8consumer4MeshEEENS6_4HashENS6_8EqualityENS3_9allocatorINS3_4pairIKS6_SA_EEEEEE_block_invoke;
          *(&v271 + 1) = &unk_279AED018;
          v272 = buf;
          dispatch_group_async(v57, v58, &block);
          _Block_object_dispose(buf, 8);
        }
      }

      std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>>>::~__hash_table(&v219);
      if ((a2[1] & 1) == 0)
      {
        std::__throw_bad_optional_access[abi:ne200100]();
      }

      MEMORY[0x26670CB10](*a2);
      v63 = v222;
      v64 = v222[231];
      if (v64)
      {
        do
        {
          v65 = std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>>>::find<rf::data_flow::RFUUID>(v222, (v64 + 2));
          if (v65)
          {
            std::optional<RESharedPtr<REAsset>>::operator=[abi:ne200100]<RESharedPtr<REAsset>&,void>(v65[6] + 368, v64 + 6);
          }

          v66 = std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>>>::find<rf::data_flow::RFUUID>(v222 + 5, (v64 + 2));
          if (v66)
          {
            std::optional<RESharedPtr<REAsset>>::operator=[abi:ne200100]<RESharedPtr<REAsset>&,void>(v66[6] + 368, v64 + 6);
          }

          v64 = *v64;
        }

        while (v64);
        v63 = v222;
      }

      v67 = v63[236];
      if (v67)
      {
        do
        {
          v67[6] = 0;
          *&block = REAssetManagerCollisionMeshAssetCreateFromMesh();
          *&v219 = REAssetManagerCollisionShapeAssetCreateCollisionMesh();
          if (std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>>>::find<rf::data_flow::RFUUID>(v222, (v67 + 2)))
          {
            *buf = v67 + 2;
            v68 = std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>>>::__emplace_unique_key_args<rf::data_flow::RFUUID,std::piecewise_construct_t const&,std::tuple<rf::data_flow::RFUUID const&>,std::tuple<>>(v222, (v67 + 2), &std::piecewise_construct, buf);
            std::optional<RESharedPtr<REAsset>>::operator=[abi:ne200100]<RESharedPtr<REAsset>&,void>(v68[6] + 384, &v219);
            if (re::internal::enableSignposts(0, 0))
            {
              if (!v67[5])
              {
                if (*(v67 + 32))
                {
                  v69 = v67[2];
                }

                else
                {
                  v69 = v67 + 2;
                }

                v67[5] = ((*v69 >> 2) + (*v69 << 6) + v69[1] + 2654435769) ^ *v69;
              }

              *buf = v67 + 2;
              std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>>>::__emplace_unique_key_args<rf::data_flow::RFUUID,std::piecewise_construct_t const&,std::tuple<rf::data_flow::RFUUID const&>,std::tuple<>>(v222, (v67 + 2), &std::piecewise_construct, buf);
              kdebug_trace();
            }
          }

          RESharedPtr<REAsset>::~RESharedPtr(&v219);
          RESharedPtr<REAsset>::~RESharedPtr(&block);
          v67 = *v67;
        }

        while (v67);
        v63 = v222;
      }

      for (m = v63[241]; m; m = *m)
      {
        v71 = std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>>>::find<rf::data_flow::RFUUID>(v222, (m + 2));
        if (v71)
        {
          std::optional<MDLMesh * {__strong}>::operator=[abi:ne200100]<MDLMesh * {__strong}&,void>(v71[6] + 400, m[6]);
        }

        v72 = std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>>>::find<rf::data_flow::RFUUID>(v222 + 5, (m + 2));
        if (v72)
        {
          std::optional<MDLMesh * {__strong}>::operator=[abi:ne200100]<MDLMesh * {__strong}&,void>(v72[6] + 400, m[6]);
        }
      }

      if ((a2[1] & 1) == 0)
      {
        std::__throw_bad_optional_access[abi:ne200100]();
      }

      REServiceLocatorGetECSService();
      v73 = 0;
      v3 = v222;
      while (v73 < REECSManagerSceneCount())
      {
        Scene = REECSManagerGetScene();
        v75 = rf::AnchorDefinitionComponent::instance(Scene);
        if (*v75)
        {
          rf::AnchorDefinitionComponent::instance(v75);
          ComponentsOfCustomType = RESceneGetComponentsOfCustomType();
          v78 = &ComponentsOfCustomType[v77];
          for (n = std::ranges::__find_if_impl[abi:ne200100]<std::__wrap_iter<REComponent **>,std::__wrap_iter<REComponent **>,std::reference_wrapper<rf::ARState::updateAnchorDefinitions(rf::LockedARStateData &,REScene *)::$_0>,std::identity>(ComponentsOfCustomType, v78); ; n = std::ranges::__find_if_impl[abi:ne200100]<std::__wrap_iter<REComponent **>,std::__wrap_iter<REComponent **>,std::reference_wrapper<rf::ARState::updateAnchorDefinitions(rf::LockedARStateData &,REScene *)::$_0>,std::identity>(v80 + 1, v78))
          {
            v80 = n;
            if (v78 == n)
            {
              break;
            }

            Object = RECustomComponentGetObject();
            LOBYTE(v271) = 0;
            *(&v271 + 1) = 0;
            uuid_clear(&block);
            *&block = Object;
            LOBYTE(v271) = 1;
            REComponentGetEntity();
            v82 = std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>>>::find<rf::data_flow::RFUUID>(v3 + 10, &block);
            v83 = std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>>>::find<rf::data_flow::RFUUID>(v3 + 15, &block);
            if (v82)
            {
              if (REEntityIsActive())
              {
                rf::helpers::createAnchorFromAnchorDefinitionComponent(buf);
                std::__variant_detail::__assignment<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::__generic_assign[abi:ne200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>>((v82 + 6), buf);
                std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](buf);
                std::__hash_table<rf::data_flow::RFUUID,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<rf::data_flow::RFUUID>>::__emplace_unique_key_args<rf::data_flow::RFUUID,rf::data_flow::RFUUID const&>(v3 + 264, &block, &block);
              }
            }

            else
            {
              v84 = v83;
              if (v83 && REEntityIsActive())
              {
                rf::helpers::createAnchorFromAnchorDefinitionComponent(buf);
                std::__variant_detail::__assignment<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::__generic_assign[abi:ne200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>>((v84 + 6), buf);
                std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](buf);
              }
            }
          }
        }

        ++v73;
      }
    }

    block = 0u;
    v271 = 0u;
    LODWORD(v272) = 1065353216;
    v85 = v3[231];
    if (v85)
    {
      while (!std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>>>::find<rf::data_flow::RFUUID>(v222, (v85 + 2)))
      {
        v85 = *v85;
        if (!v85)
        {
          goto LABEL_203;
        }
      }

LABEL_320:
      *&v219 = v85 + 2;
      v158 = std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>>>::__emplace_unique_key_args<rf::data_flow::RFUUID,std::piecewise_construct_t const&,std::tuple<rf::data_flow::RFUUID const&>,std::tuple<>>(v222, (v85 + 2), &std::piecewise_construct, &v219);
      v159 = *(v85 + 2);
      *buf = *(v85 + 1);
      *&buf[16] = v159;
      v160 = v158[7];
      v233 = v158[6];
      *v234 = v160;
      if (v160)
      {
        atomic_fetch_add_explicit((v160 + 8), 1uLL, memory_order_relaxed);
      }

      std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>>>::__emplace_unique_key_args<rf::data_flow::RFUUID,std::pair<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>>(&block, buf, buf);
      if (*v234)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*v234);
      }

      while (1)
      {
        v85 = *v85;
        if (!v85)
        {
          break;
        }

        if (std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>>>::find<rf::data_flow::RFUUID>(v222, (v85 + 2)))
        {
          goto LABEL_320;
        }
      }
    }

LABEL_203:
    v219 = 0u;
    v220 = 0u;
    v221 = 1065353216;
    v86 = v222[236];
    if (v86)
    {
      while (!std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>>>::find<rf::data_flow::RFUUID>(v222, (v86 + 2)))
      {
        v86 = *v86;
        if (!v86)
        {
          goto LABEL_206;
        }
      }

LABEL_327:
      *&v229 = v86 + 2;
      v161 = std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>>>::__emplace_unique_key_args<rf::data_flow::RFUUID,std::piecewise_construct_t const&,std::tuple<rf::data_flow::RFUUID const&>,std::tuple<>>(v222, (v86 + 2), &std::piecewise_construct, &v229);
      v162 = *(v86 + 2);
      *buf = *(v86 + 1);
      *&buf[16] = v162;
      v163 = v161[7];
      v233 = v161[6];
      *v234 = v163;
      if (v163)
      {
        atomic_fetch_add_explicit((v163 + 8), 1uLL, memory_order_relaxed);
      }

      std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>>>::__emplace_unique_key_args<rf::data_flow::RFUUID,std::pair<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>>(&v219, buf, buf);
      if (*v234)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*v234);
      }

      while (1)
      {
        v86 = *v86;
        if (!v86)
        {
          break;
        }

        if (std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>>>::find<rf::data_flow::RFUUID>(v222, (v86 + 2)))
        {
          goto LABEL_327;
        }
      }
    }

LABEL_206:
    v87 = v222;
    v229 = 0u;
    v230 = 0u;
    v231 = 1065353216;
    v88 = v222[261];
    if (!v88)
    {
      goto LABEL_234;
    }

    while (1)
    {
      v89 = v222;
      v90 = std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>>>::find<rf::data_flow::RFUUID>(v222 + 10, (v88 + 2));
      v91 = std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>>>::find<rf::data_flow::RFUUID>(v89 + 15, (v88 + 2));
      v92 = (v91 + 6);
      if (!v91)
      {
        v92 = 0;
      }

      if (v90)
      {
        v92 = (v90 + 6);
      }

      v93 = *(v88 + 2);
      *buf = *(v88 + 1);
      *&buf[16] = v93;
      v233 = v92;
      v94 = *(&v93 + 1);
      if (!*(&v93 + 1))
      {
        v102 = buf;
        if (buf[16])
        {
          v102 = *buf;
        }

        v94 = ((*v102 >> 2) + (*v102 << 6) + *(v102 + 1) + 2654435769) ^ *v102;
        *&buf[24] = v94;
      }

      v95 = *(&v229 + 1);
      if (!*(&v229 + 1))
      {
        goto LABEL_228;
      }

      v96 = vcnt_s8(*(&v229 + 8));
      v96.i16[0] = vaddlv_u8(v96);
      v97 = v96.u32[0];
      if (v96.u32[0] > 1uLL)
      {
        v98 = v94;
        if (v94 >= *(&v229 + 1))
        {
          v98 = v94 % *(&v229 + 1);
        }
      }

      else
      {
        v98 = (*(&v229 + 1) - 1) & v94;
      }

      v99 = *(v229 + 8 * v98);
      if (!v99 || (v100 = *v99) == 0)
      {
LABEL_228:
        operator new();
      }

      while (1)
      {
        v101 = v100[1];
        if (v101 == v94)
        {
          break;
        }

        if (v97 > 1)
        {
          if (v101 >= v95)
          {
            v101 %= v95;
          }
        }

        else
        {
          v101 &= v95 - 1;
        }

        if (v101 != v98)
        {
          goto LABEL_228;
        }

LABEL_227:
        v100 = *v100;
        if (!v100)
        {
          goto LABEL_228;
        }
      }

      if (!rf::data_flow::RFUUID::Equality::operator()(&v229, (v100 + 2), buf))
      {
        goto LABEL_227;
      }

      v88 = *v88;
      if (!v88)
      {
        v87 = v222;
LABEL_234:
        v103 = 0;
        memset(v227, 0, sizeof(v227));
        v228 = 1065353216;
        *buf = v87 + 264;
        *&buf[8] = v87 + 259;
LABEL_235:
        v204 = v103;
        v104 = *(*&buf[v103] + 16);
        if (!v104)
        {
          goto LABEL_261;
        }

        v105 = v222;
        while (1)
        {
          std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>>>::find<rf::data_flow::RFUUID>(v105 + 10, (v104 + 2));
          std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>>>::find<rf::data_flow::RFUUID>(v105 + 15, (v104 + 2));
          v106 = v104[5];
          if (!v106)
          {
            if (*(v104 + 32))
            {
              v114 = v104[2];
            }

            else
            {
              v114 = v104 + 2;
            }

            v106 = ((*v114 >> 2) + (*v114 << 6) + v114[1] + 2654435769) ^ *v114;
            v104[5] = v106;
          }

          v107 = v227[1];
          if (!*&v227[1])
          {
            goto LABEL_254;
          }

          v108 = vcnt_s8(v227[1]);
          v108.i16[0] = vaddlv_u8(v108);
          v109 = v108.u32[0];
          if (v108.u32[0] > 1uLL)
          {
            v110 = v106;
            if (v106 >= *&v227[1])
            {
              v110 = v106 % *&v227[1];
            }
          }

          else
          {
            v110 = (*&v227[1] - 1) & v106;
          }

          v111 = *(*v227 + 8 * v110);
          if (!v111 || (v112 = *v111) == 0)
          {
LABEL_254:
            operator new();
          }

          while (1)
          {
            v113 = v112[1];
            if (v113 == v106)
            {
              break;
            }

            if (v109 > 1)
            {
              if (v113 >= *&v107)
              {
                v113 %= *&v107;
              }
            }

            else
            {
              v113 &= *&v107 - 1;
            }

            if (v113 != v110)
            {
              goto LABEL_254;
            }

LABEL_253:
            v112 = *v112;
            if (!v112)
            {
              goto LABEL_254;
            }
          }

          if (!rf::data_flow::RFUUID::Equality::operator()(v227, (v112 + 2), (v104 + 2)))
          {
            goto LABEL_253;
          }

          v104 = *v104;
          if (!v104)
          {
LABEL_261:
            v103 = v204 + 8;
            if (v204 != 8)
            {
              goto LABEL_235;
            }

            v115 = v222;
            v116 = 0uLL;
            *v224 = 0u;
            v225 = 0u;
            v226 = 1065353216;
            v117 = v222[306];
            if (v117)
            {
              do
              {
                *buf = v117 + 2;
                v118 = std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::SceneObject>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::SceneObject>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::SceneObject>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::SceneObject>>>::__emplace_unique_key_args<rf::data_flow::RFUUID,std::piecewise_construct_t const&,std::tuple<rf::data_flow::RFUUID const&>,std::tuple<>>(v222 + 157, (v117 + 2), &std::piecewise_construct, buf);
                v119 = *(v117 + 2);
                *buf = *(v117 + 1);
                *&buf[16] = v119;
                v233 = (v118 + 6);
                std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::SceneObject const>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::SceneObject const>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::SceneObject const>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::SceneObject const>>>>::__emplace_unique_key_args<rf::data_flow::RFUUID,std::pair<rf::data_flow::RFUUID,rf::data_flow::SceneObject const&>>(v224, buf, buf);
                v117 = *v117;
              }

              while (v117);
              v115 = v222;
              v116 = 0uLL;
            }

            v120 = 0;
            v217[0] = v116;
            v217[1] = v116;
            v218 = 1065353216;
            *buf = v115 + 309;
            *&buf[8] = v115 + 304;
LABEL_266:
            v205 = v120;
            v121 = *(*&buf[v120] + 16);
            if (!v121)
            {
              goto LABEL_292;
            }

            v122 = v222;
LABEL_268:
            *&v215[0] = v121 + 2;
            std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::SceneObject>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::SceneObject>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::SceneObject>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::SceneObject>>>::__emplace_unique_key_args<rf::data_flow::RFUUID,std::piecewise_construct_t const&,std::tuple<rf::data_flow::RFUUID const&>,std::tuple<>>(v122 + 157, (v121 + 2), &std::piecewise_construct, v215);
            v123 = v121[5];
            if (!v123)
            {
              if (*(v121 + 32))
              {
                v131 = v121[2];
              }

              else
              {
                v131 = v121 + 2;
              }

              v123 = ((*v131 >> 2) + (*v131 << 6) + v131[1] + 2654435769) ^ *v131;
              v121[5] = v123;
            }

            v124 = *(&v217[0] + 1);
            if (!*(&v217[0] + 1))
            {
              goto LABEL_285;
            }

            v125 = vcnt_s8(*(v217 + 8));
            v125.i16[0] = vaddlv_u8(v125);
            v126 = v125.u32[0];
            if (v125.u32[0] > 1uLL)
            {
              v127 = v123;
              if (v123 >= *(&v217[0] + 1))
              {
                v127 = v123 % *(&v217[0] + 1);
              }
            }

            else
            {
              v127 = (*(&v217[0] + 1) - 1) & v123;
            }

            v128 = *(*&v217[0] + 8 * v127);
            if (!v128 || (v129 = *v128) == 0)
            {
LABEL_285:
              operator new();
            }

            while (1)
            {
              v130 = v129[1];
              if (v130 == v123)
              {
                if (rf::data_flow::RFUUID::Equality::operator()(v217, (v129 + 2), (v121 + 2)))
                {
                  v121 = *v121;
                  if (!v121)
                  {
LABEL_292:
                    v120 = v205 + 8;
                    if (v205 == 8)
                    {
                      v132 = v222;
                      v133 = 0uLL;
                      memset(v215, 0, sizeof(v215));
                      v216 = 1065353216;
                      v134 = v222[316];
                      if (v134)
                      {
                        do
                        {
                          *buf = v134 + 2;
                          v135 = std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::SceneObject>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::SceneObject>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::SceneObject>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::SceneObject>>>::__emplace_unique_key_args<rf::data_flow::RFUUID,std::piecewise_construct_t const&,std::tuple<rf::data_flow::RFUUID const&>,std::tuple<>>(v222 + 157, (v134 + 2), &std::piecewise_construct, buf);
                          v136 = *(v134 + 2);
                          *buf = *(v134 + 1);
                          *&buf[16] = v136;
                          v233 = (v135 + 6);
                          std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::SceneObject const>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::SceneObject const>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::SceneObject const>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::SceneObject const>>>>::__emplace_unique_key_args<rf::data_flow::RFUUID,std::pair<rf::data_flow::RFUUID,rf::data_flow::SceneObject const&>>(v215, buf, buf);
                          v134 = *v134;
                        }

                        while (v134);
                        v132 = v222;
                        v133 = 0uLL;
                      }

                      v213[0] = v133;
                      v213[1] = v133;
                      v214 = 1065353216;
                      v137 = v132[291];
                      if (v137)
                      {
                        do
                        {
                          *buf = v137 + 16;
                          v138 = std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>>>::__emplace_unique_key_args<rf::data_flow::RFUUID,std::piecewise_construct_t const&,std::tuple<rf::data_flow::RFUUID const&>,std::tuple<>>(v222 + 152, v137 + 16, &std::piecewise_construct, buf);
                          v139 = *(v137 + 32);
                          *buf = *(v137 + 16);
                          *&buf[16] = v139;
                          v233 = (v138 + 6);
                          std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::EnvironmentProbe const>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::EnvironmentProbe const>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::EnvironmentProbe const>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::EnvironmentProbe const>>>>::__emplace_unique_key_args<rf::data_flow::RFUUID,std::pair<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe const&>>(v213, buf, buf);
                          v137 = *v137;
                        }

                        while (v137);
                        v132 = v222;
                      }

                      v140 = 0uLL;
                      memset(v211, 0, sizeof(v211));
                      v212 = 1065353216;
                      v141 = v132[296];
                      if (v141)
                      {
                        do
                        {
                          *buf = v141 + 16;
                          v142 = std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>>>::__emplace_unique_key_args<rf::data_flow::RFUUID,std::piecewise_construct_t const&,std::tuple<rf::data_flow::RFUUID const&>,std::tuple<>>(v222 + 152, v141 + 16, &std::piecewise_construct, buf);
                          v143 = *(v141 + 32);
                          *buf = *(v141 + 16);
                          *&buf[16] = v143;
                          v233 = (v142 + 6);
                          std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::EnvironmentProbe const>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::EnvironmentProbe const>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::EnvironmentProbe const>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::EnvironmentProbe const>>>>::__emplace_unique_key_args<rf::data_flow::RFUUID,std::pair<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe const&>>(v211, buf, buf);
                          v141 = *v141;
                        }

                        while (v141);
                        v132 = v222;
                        v140 = 0uLL;
                      }

                      v209[0] = v140;
                      v209[1] = v140;
                      v210 = 1065353216;
                      v144 = v132[321];
                      if (v144)
                      {
                        do
                        {
                          v145 = std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>>>::find<rf::data_flow::RFUUID>(v222 + 31, v144 + 16);
                          if (!v145)
                          {
                            std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
                          }

                          v146 = *(v144 + 32);
                          *buf = *(v144 + 16);
                          *&buf[16] = v146;
                          v233 = (v145 + 6);
                          std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>>>::__emplace_unique_key_args<rf::data_flow::RFUUID,std::pair<rf::data_flow::RFUUID,rf::data_flow::Room const&>>(v209, buf, buf);
                          v144 = *v144;
                        }

                        while (v144);
                        v132 = v222;
                      }

                      memset(v207, 0, sizeof(v207));
                      v208 = 1065353216;
                      v147 = v132[326];
                      if (v147)
                      {
                        do
                        {
                          v148 = std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>>>::find<rf::data_flow::RFUUID>(v222 + 31, v147 + 16);
                          if (!v148)
                          {
                            std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
                          }

                          v149 = *(v147 + 32);
                          *buf = *(v147 + 16);
                          *&buf[16] = v149;
                          v233 = (v148 + 6);
                          std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>>>::__emplace_unique_key_args<rf::data_flow::RFUUID,std::pair<rf::data_flow::RFUUID,rf::data_flow::Room const&>>(v207, buf, buf);
                          v147 = *v147;
                        }

                        while (v147);
                        v132 = v222;
                      }

                      std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>>>::__move_assign((v132 + 353), v132 + 214);
                      std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>>>::__move_assign((v132 + 358), v132 + 219);
                      v150 = v222;
                      std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>>>::__move_assign((v222 + 363), v222 + 224);
                      std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>>>::__move_assign((v150 + 368), v150 + 244);
                      std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>>>::__move_assign((v150 + 373), v150 + 249);
                      std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>>>::__move_assign((v150 + 378), v150 + 254);
                      std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>>>::__move_assign((v150 + 383), &block);
                      std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>>>::__move_assign((v150 + 388), &v219);
                      std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,MDLMesh * {__strong}>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,MDLMesh * {__strong}>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,MDLMesh * {__strong}>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,MDLMesh * {__strong}>>>::__move_assign((v150 + 393), v150 + 239);
                      std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const>>>>::__move_assign((v150 + 413), &v229);
                      std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const>>>>::__move_assign((v150 + 418), v227);
                      std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>>>::__move_assign((v150 + 423), v150 + 274);
                      std::__hash_table<rf::data_flow::RFUUID,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<rf::data_flow::RFUUID>>::__move_assign((v150 + 433), v150 + 284);
                      std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const>>>>::__move_assign((v150 + 438), v224);
                      std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const>>>>::__move_assign((v150 + 443), v217);
                      std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const>>>>::__move_assign((v150 + 448), v215);
                      std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const>>>>::__move_assign((v150 + 453), v213);
                      std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const>>>>::__move_assign((v150 + 458), v211);
                      std::__hash_table<rf::data_flow::RFUUID,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<rf::data_flow::RFUUID>>::__move_assign((v150 + 463), v150 + 299);
                      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__move_assign((v150 + 468), v150 + 335);
                      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__move_assign((v150 + 473), v150 + 340);
                      std::__hash_table<std::__hash_value_type<std::string,re::Matrix4x4<float>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,re::Matrix4x4<float>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,re::Matrix4x4<float>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,re::Matrix4x4<float>>>>::__move_assign((v150 + 478), v150 + 345);
                      std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const>>>>::__move_assign((v150 + 483), v209);
                      std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const>>>>::__move_assign((v150 + 488), v207);
                      std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::Room>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::Room>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::Room>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::Room>>>::__move_assign((v150 + 493), v150 + 329);
                      *(v150 + 1992) = *(v150 + 1400);
                      std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const>>>>::__move_assign((v150 + 428), v150 + 279);
                      *(v150 + 3988) = *(v150 + 2804);
                      *(v150 + 3996) = *(v150 + 2812);
                      memset(buf, 0, sizeof(buf));
                      memset(v234, 0, 32);
                      LODWORD(v233) = 1065353216;
                      *&v234[32] = 1065353216;
                      memset(v235, 0, 32);
                      memset(&v235[5], 0, 32);
                      LODWORD(v235[4]) = 1065353216;
                      LODWORD(v235[9]) = 1065353216;
                      memset(&v235[10], 0, 32);
                      memset(v236, 0, 32);
                      LODWORD(v235[14]) = 1065353216;
                      *&v236[32] = 1065353216;
                      memset(v237, 0, 32);
                      *&v237[32] = 1065353216;
                      memset(v238, 0, 32);
                      *&v238[32] = 1065353216;
                      memset(v239, 0, 32);
                      *&v239[32] = 1065353216;
                      memset(v240, 0, 32);
                      *&v240[32] = 1065353216;
                      memset(v241, 0, 32);
                      *&v241[32] = 1065353216;
                      memset(v242, 0, 32);
                      *&v242[32] = 1065353216;
                      memset(v243, 0, 32);
                      *&v243[32] = 1065353216;
                      memset(v244, 0, 32);
                      *&v244[32] = 1065353216;
                      memset(v245, 0, 32);
                      *&v245[32] = 1065353216;
                      memset(v246, 0, 32);
                      *&v246[32] = 1065353216;
                      memset(v247, 0, 32);
                      *&v247[32] = 1065353216;
                      memset(v248, 0, 32);
                      *&v248[32] = 1065353216;
                      memset(v249, 0, 32);
                      *&v249[32] = 1065353216;
                      memset(v250, 0, 32);
                      *&v250[32] = 1065353216;
                      memset(v251, 0, 32);
                      *&v251[32] = 1065353216;
                      memset(v252, 0, 32);
                      *&v252[32] = 1065353216;
                      memset(v253, 0, 32);
                      *&v253[32] = 1065353216;
                      memset(v254, 0, 32);
                      *&v254[32] = 1065353216;
                      v255 = 0;
                      v256 = 0u;
                      v257 = 0u;
                      v258 = 1065353216;
                      v260 = 0u;
                      v259 = 0u;
                      v261 = 1065353216;
                      v262 = 0u;
                      v263 = 0u;
                      v264 = 1065353216;
                      LOWORD(v265[0]) = 0;
                      BYTE4(v265[0]) = 0;
                      BYTE12(v265[0]) = 0;
                      std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>>>::__move_assign((v150 + 214), buf);
                      std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>>>::__move_assign((v150 + 219), v234);
                      std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>>>::__move_assign((v150 + 224), v235);
                      if (v150[232])
                      {
                        std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,RESharedPtr<REAsset>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,RESharedPtr<REAsset>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,RESharedPtr<REAsset>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,RESharedPtr<REAsset>>>>::__deallocate_node(v150[231]);
                        v150[231] = 0;
                        v151 = v150[230];
                        if (v151)
                        {
                          for (ii = 0; ii != v151; ++ii)
                          {
                            *(v150[229] + 8 * ii) = 0;
                          }
                        }

                        v150[232] = 0;
                      }

                      v153 = v235[5];
                      v235[5] = 0;
                      v154 = v150[229];
                      v150[229] = v153;
                      if (v154)
                      {
                        operator delete(v154);
                      }

                      v155 = *&v235[6];
                      v150[230] = v235[6];
                      v235[6] = 0;
                      v156 = v235[8];
                      v150[232] = v235[8];
                      *(v150 + 466) = v235[9];
                      v150[231] = *(&v155 + 1);
                      if (v156)
                      {
                        v157 = *(*(&v155 + 1) + 8);
                        if ((v155 & (v155 - 1)) != 0)
                        {
                          if (*(&v155 + 1) >= v155)
                          {
                            v157 = *(&v155 + 1) % v155;
                          }
                        }

                        else
                        {
                          v157 = *(&v155 + 1) & (v155 - 1);
                        }

                        *(v150[229] + 8 * v157) = v150 + 231;
                        v235[7] = 0;
                        v235[8] = 0;
                      }

                      if (v150[237])
                      {
                        std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::unique_ptr<RECollisionMesh,rf::RECollisionMeshDeleter>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::unique_ptr<RECollisionMesh,rf::RECollisionMeshDeleter>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::unique_ptr<RECollisionMesh,rf::RECollisionMeshDeleter>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::unique_ptr<RECollisionMesh,rf::RECollisionMeshDeleter>>>>::__deallocate_node(v150[236]);
                        v150[236] = 0;
                        v164 = v150[235];
                        if (v164)
                        {
                          for (jj = 0; jj != v164; ++jj)
                          {
                            *(v150[234] + 8 * jj) = 0;
                          }
                        }

                        v150[237] = 0;
                      }

                      v166 = v235[10];
                      v235[10] = 0;
                      v167 = v150[234];
                      v150[234] = v166;
                      if (v167)
                      {
                        operator delete(v167);
                      }

                      v168 = v235[11];
                      v169 = v235[12];
                      v150[235] = v235[11];
                      v235[11] = 0;
                      v170 = v235[13];
                      v150[237] = v235[13];
                      *(v150 + 476) = v235[14];
                      v150[236] = v169;
                      if (v170)
                      {
                        v171 = *(v169 + 8);
                        if ((v168 & (v168 - 1)) != 0)
                        {
                          if (v171 >= v168)
                          {
                            v171 %= v168;
                          }
                        }

                        else
                        {
                          v171 &= v168 - 1;
                        }

                        *(v150[234] + 8 * v171) = v150 + 236;
                        *&v235[12] = 0uLL;
                      }

                      std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,MDLMesh * {__strong}>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,MDLMesh * {__strong}>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,MDLMesh * {__strong}>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,MDLMesh * {__strong}>>>::__move_assign((v150 + 239), v236);
                      std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>>>::__move_assign((v150 + 244), v237);
                      std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>>>::__move_assign((v150 + 249), v238);
                      std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>>>::__move_assign((v150 + 254), v239);
                      std::__hash_table<rf::data_flow::RFUUID,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<rf::data_flow::RFUUID>>::__move_assign((v150 + 259), v240);
                      std::__hash_table<rf::data_flow::RFUUID,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<rf::data_flow::RFUUID>>::__move_assign((v150 + 264), v241);
                      std::__hash_table<rf::data_flow::RFUUID,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<rf::data_flow::RFUUID>>::__move_assign((v150 + 269), v242);
                      std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>>>::__move_assign((v150 + 274), v243);
                      std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const>>>>::__move_assign((v150 + 279), v244);
                      std::__hash_table<rf::data_flow::RFUUID,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<rf::data_flow::RFUUID>>::__move_assign((v150 + 284), v245);
                      std::__hash_table<rf::data_flow::RFUUID,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<rf::data_flow::RFUUID>>::__move_assign((v150 + 289), v246);
                      std::__hash_table<rf::data_flow::RFUUID,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<rf::data_flow::RFUUID>>::__move_assign((v150 + 294), v247);
                      std::__hash_table<rf::data_flow::RFUUID,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<rf::data_flow::RFUUID>>::__move_assign((v150 + 299), v248);
                      std::__hash_table<rf::data_flow::RFUUID,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<rf::data_flow::RFUUID>>::__move_assign((v150 + 304), v249);
                      std::__hash_table<rf::data_flow::RFUUID,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<rf::data_flow::RFUUID>>::__move_assign((v150 + 309), v250);
                      std::__hash_table<rf::data_flow::RFUUID,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<rf::data_flow::RFUUID>>::__move_assign((v150 + 314), v251);
                      std::__hash_table<rf::data_flow::RFUUID,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<rf::data_flow::RFUUID>>::__move_assign((v150 + 319), v252);
                      std::__hash_table<rf::data_flow::RFUUID,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<rf::data_flow::RFUUID>>::__move_assign((v150 + 324), v253);
                      std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::Room>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::Room>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::Room>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::Room>>>::__move_assign((v150 + 329), v254);
                      *(v150 + 668) = v255;
                      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__move_assign((v150 + 335), &v256);
                      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__move_assign((v150 + 340), &v259);
                      std::__hash_table<std::__hash_value_type<std::string,re::Matrix4x4<float>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,re::Matrix4x4<float>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,re::Matrix4x4<float>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,re::Matrix4x4<float>>>>::__move_assign((v150 + 345), &v262);
                      v150[350] = *&v265[0];
                      *(v150 + 2805) = *(v265 + 5);
                      rf::ARStateData::SinceLastData::~SinceLastData(buf);
                      if (re::internal::enableSignposts(0, 0))
                      {
                        kdebug_trace();
                      }

                      std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>>>::~__hash_table(v207);
                      std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>>>::~__hash_table(v209);
                      std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>>>::~__hash_table(v211);
                      std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>>>::~__hash_table(v213);
                      std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>>>::~__hash_table(v215);
                      std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>>>::~__hash_table(v217);
                      std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>>>::~__hash_table(v224);
                      std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>>>::~__hash_table(v227);
                      std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>>>::~__hash_table(&v229);
                      std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>>>::~__hash_table(&v219);
                      std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>>>::~__hash_table(&block);
                      std::mutex::unlock(v223);
                      if ((kdebug_is_enabled() & 1) != 0 || (kdebug_is_enabled() & 1) != 0 || kdebug_is_enabled())
                      {
                        std::mutex::lock(v201);
                        v172 = *(a1 + 176);
                        if (v172)
                        {
                          v173 = 0;
                          v174 = 0;
                          v175 = 0;
                          v176 = 0;
                          v177 = 0;
                          v178 = 0;
                          v179 = 0;
                          do
                          {
                            v180 = *(v172 + 76);
                            if (v180 > 2)
                            {
                              if (v180 == 5)
                              {
                                v181 = v179 + 1;
                              }

                              else
                              {
                                v181 = v179;
                              }

                              if (v180 == 4)
                              {
                                v182 = v178 + 1;
                              }

                              else
                              {
                                v182 = v178;
                              }

                              if (v180 == 4)
                              {
                                v181 = v179;
                              }

                              if (v180 == 3)
                              {
                                ++v176;
                              }

                              else
                              {
                                v178 = v182;
                              }

                              if (v180 != 3)
                              {
                                v179 = v181;
                              }
                            }

                            else if (v180)
                            {
                              if (v180 == 1)
                              {
                                v183 = *(v172 + 64);
                                v184 = v183 == 0;
                                if (v183)
                                {
                                  v185 = v174;
                                }

                                else
                                {
                                  v185 = v173;
                                }

                                if (v184)
                                {
                                  v173 = v185 + 1;
                                }

                                else
                                {
                                  v174 = v185 + 1;
                                }
                              }

                              else if (v180 == 2)
                              {
                                ++v175;
                              }
                            }

                            else
                            {
                              ++v177;
                            }

                            v172 = *v172;
                          }

                          while (v172);
                        }

                        else
                        {
                          v173 = 0;
                          v174 = 0;
                          v175 = 0;
                          v176 = 0;
                          v177 = 0;
                          v178 = 0;
                          v179 = 0;
                        }

                        for (kk = *(a1 + 216); kk; kk = *kk)
                        {
                          v187 = *(kk + 76);
                          if (v187 > 2)
                          {
                            if (v187 == 5)
                            {
                              v188 = v179 + 1;
                            }

                            else
                            {
                              v188 = v179;
                            }

                            if (v187 == 4)
                            {
                              v189 = v178 + 1;
                            }

                            else
                            {
                              v189 = v178;
                            }

                            if (v187 == 4)
                            {
                              v188 = v179;
                            }

                            if (v187 == 3)
                            {
                              ++v176;
                            }

                            else
                            {
                              v178 = v189;
                            }

                            if (v187 != 3)
                            {
                              v179 = v188;
                            }
                          }

                          else if (v187)
                          {
                            if (v187 == 1)
                            {
                              v190 = *(kk + 64);
                              v191 = v190 == 0;
                              if (v190)
                              {
                                v192 = v174;
                              }

                              else
                              {
                                v192 = v173;
                              }

                              if (v191)
                              {
                                v173 = v192 + 1;
                              }

                              else
                              {
                                v174 = v192 + 1;
                              }
                            }

                            else if (v187 == 2)
                            {
                              ++v175;
                            }
                          }

                          else
                          {
                            ++v177;
                          }
                        }

                        if (re::internal::enableSignposts(0, 0))
                        {
                          kdebug_trace();
                        }

                        if (re::internal::enableSignposts(0, 0))
                        {
                          kdebug_trace();
                        }

                        if (re::internal::enableSignposts(0, 0))
                        {
                          kdebug_trace();
                        }

                        std::mutex::unlock(v201);
                      }

                      v50 = v202;
                      goto LABEL_422;
                    }

                    goto LABEL_266;
                  }

                  goto LABEL_268;
                }
              }

              else
              {
                if (v126 > 1)
                {
                  if (v130 >= v124)
                  {
                    v130 %= v124;
                  }
                }

                else
                {
                  v130 &= v124 - 1;
                }

                if (v130 != v127)
                {
                  goto LABEL_285;
                }
              }

              v129 = *v129;
              if (!v129)
              {
                goto LABEL_285;
              }
            }
          }
        }
      }
    }
  }

  if (*(a1 + 1) == 1)
  {
    std::mutex::lock((a1 + 16));
    v233 = 0;
    memset(buf, 0, sizeof(buf));
    *v234 = 1065353216;
    memset(&v234[8], 0, 32);
    memset(&v235[1], 0, 32);
    LODWORD(v235[0]) = 1065353216;
    LODWORD(v235[5]) = 1065353216;
    memset(&v235[6], 0, 32);
    memset(&v235[11], 0, 32);
    LODWORD(v235[10]) = 1065353216;
    *v236 = 1065353216;
    memset(&v236[8], 0, 32);
    memset(&v237[8], 0, 32);
    *v237 = 1065353216;
    *v238 = 1065353216;
    memset(&v238[8], 0, 32);
    *v239 = 1065353216;
    memset(&v239[8], 0, 32);
    *v240 = 1065353216;
    memset(&v240[8], 0, 32);
    *v241 = 1065353216;
    memset(&v241[8], 0, 32);
    *v242 = 1065353216;
    memset(&v242[8], 0, 32);
    *v243 = 1065353216;
    memset(&v243[8], 0, 32);
    *v244 = 1065353216;
    memset(&v244[8], 0, 32);
    *v245 = 1065353216;
    memset(&v245[8], 0, 32);
    *v246 = 1065353216;
    memset(&v246[8], 0, 32);
    *v247 = 1065353216;
    memset(&v247[8], 0, 32);
    *v248 = 1065353216;
    memset(&v248[8], 0, 32);
    *v249 = 1065353216;
    memset(&v249[8], 0, 32);
    *v250 = 1065353216;
    memset(&v250[8], 0, 32);
    *v251 = 1065353216;
    memset(&v251[8], 0, 32);
    *v252 = 1065353216;
    memset(&v252[8], 0, 32);
    *v253 = 1065353216;
    memset(&v253[8], 0, 32);
    *v254 = 1065353216;
    memset(&v254[8], 0, 32);
    v255 = 1065353216;
    v256 = 0u;
    v257 = 0u;
    v258 = 1065353216;
    v260 = 0u;
    v259 = 0u;
    v261 = 1065353216;
    v262 = 0u;
    v263 = 0u;
    v264 = 1065353216;
    memset(v265, 0, sizeof(v265));
    v266 = 1065353216;
    memset(v267, 0, sizeof(v267));
    v268 = 1065353216;
    *v269 = 0;
    v269[4] = 0;
    v269[12] = 0;
    *(a1 + 2896) = 0;
    std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>>>::__move_assign(a1 + 2904, &buf[8]);
    std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>>>::__move_assign(a1 + 2944, &v234[8]);
    std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>>>::__move_assign(a1 + 2984, &v235[1]);
    std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>>>::__move_assign(a1 + 3024, &v235[6]);
    std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>>>::__move_assign(a1 + 3064, &v235[11]);
    std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>>>::__move_assign(a1 + 3104, &v236[8]);
    std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>>>::__move_assign(a1 + 3144, &v237[8]);
    std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>>>::__move_assign(a1 + 3184, &v238[8]);
    std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,MDLMesh * {__strong}>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,MDLMesh * {__strong}>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,MDLMesh * {__strong}>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,MDLMesh * {__strong}>>>::__move_assign(a1 + 3224, &v239[8]);
    std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>>>::__move_assign(a1 + 3264, &v240[8]);
    std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>>>::__move_assign(a1 + 3304, &v241[8]);
    std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>>>::__move_assign(a1 + 3344, &v242[8]);
    std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const>>>>::__move_assign(a1 + 3384, &v243[8]);
    std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const>>>>::__move_assign(a1 + 3424, &v244[8]);
    std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>>>::__move_assign(a1 + 3464, &v245[8]);
    std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const>>>>::__move_assign(a1 + 3504, &v246[8]);
    std::__hash_table<rf::data_flow::RFUUID,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<rf::data_flow::RFUUID>>::__move_assign(a1 + 3544, &v247[8]);
    std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const>>>>::__move_assign(a1 + 3584, &v248[8]);
    std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const>>>>::__move_assign(a1 + 3624, &v249[8]);
    std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const>>>>::__move_assign(a1 + 3664, &v250[8]);
    std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const>>>>::__move_assign(a1 + 3704, &v251[8]);
    std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const>>>>::__move_assign(a1 + 3744, &v252[8]);
    v2 = a1;
    std::__hash_table<rf::data_flow::RFUUID,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<rf::data_flow::RFUUID>>::__move_assign(a1 + 3784, &v253[8]);
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__move_assign(a1 + 3824, &v254[8]);
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__move_assign(a1 + 3864, &v256);
    std::__hash_table<std::__hash_value_type<std::string,re::Matrix4x4<float>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,re::Matrix4x4<float>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,re::Matrix4x4<float>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,re::Matrix4x4<float>>>>::__move_assign(a1 + 3904, &v259);
    std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const>>>>::__move_assign(a1 + 3944, &v262);
    std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const>>>>::__move_assign(a1 + 3984, v265);
    std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::Room>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::Room>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::Room>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::Room>>>::__move_assign(a1 + 4024, v267);
    *(a1 + 4064) = *v269;
    *(a1 + 4069) = *&v269[5];
    rf::data_flow::consumer::UpdateData::~UpdateData(buf);
    *(a1 + 1) = 0;
    std::mutex::unlock((a1 + 16));
  }

  v50 = v2 + 512;
LABEL_422:
  ++*v50;
}

void sub_2617FFBD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, void *a63)
{
  std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>>>::~__hash_table(&a63);
  std::mutex::unlock(a65);
  _Unwind_Resume(a1);
}

uint64_t rf::ARState::ARState(uint64_t a1, _DWORD *a2)
{
  v84 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  *(a1 + 16) = 850045863;
  v4 = (a1 + 16);
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0;
  *(a1 + 112) = 1065353216;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 160) = 0u;
  v5 = (a1 + 160);
  *(a1 + 152) = 1065353216;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 1065353216;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 1065353216;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 1065353216;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0;
  *(a1 + 320) = 1065353216;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 1065353216;
  *(a1 + 368) = 0;
  *(a1 + 1280) = 0;
  *(a1 + 1296) = 0u;
  *(a1 + 1312) = 0u;
  *(a1 + 1328) = 1065353216;
  *(a1 + 1336) = 0u;
  *(a1 + 1352) = 0u;
  *(a1 + 1368) = 1065353216;
  *(a1 + 1392) = 0u;
  *(a1 + 1376) = 0u;
  *(a1 + 1408) = 1065353216;
  *(a1 + 1416) = 0;
  *(a1 + 1420) = 0;
  *(a1 + 1424) = 0;
  *(a1 + 1428) = 0;
  *(a1 + 1432) = 0;
  *(a1 + 1436) = 0;
  *(a1 + 1440) = 0;
  *(a1 + 1712) = 0;
  *(a1 + 1728) = 0u;
  *(a1 + 1744) = 0u;
  *(a1 + 1760) = 0u;
  *(a1 + 1776) = 0;
  *(a1 + 1784) = 1065353216;
  *(a1 + 1792) = 0u;
  *(a1 + 1808) = 0u;
  *(a1 + 1824) = 1065353216;
  *(a1 + 1832) = 0u;
  *(a1 + 1848) = 0u;
  *(a1 + 1864) = 1065353216;
  *(a1 + 1888) = 0u;
  *(a1 + 1872) = 0u;
  *(a1 + 1904) = 1065353216;
  *(a1 + 1912) = 0u;
  *(a1 + 1928) = 0u;
  *(a1 + 1944) = 1065353216;
  *(a1 + 1968) = 0u;
  *(a1 + 1952) = 0u;
  *(a1 + 1984) = 1065353216;
  *(a1 + 1992) = 0u;
  *(a1 + 2008) = 0u;
  *(a1 + 2024) = 1065353216;
  *(a1 + 2048) = 0u;
  *(a1 + 2032) = 0u;
  *(a1 + 2064) = 1065353216;
  *(a1 + 2072) = 0u;
  *(a1 + 2088) = 0u;
  *(a1 + 2104) = 1065353216;
  *(a1 + 2128) = 0u;
  *(a1 + 2112) = 0u;
  *(a1 + 2144) = 1065353216;
  *(a1 + 2152) = 0u;
  *(a1 + 2168) = 0u;
  *(a1 + 2184) = 1065353216;
  *(a1 + 2208) = 0u;
  *(a1 + 2192) = 0u;
  *(a1 + 2224) = 1065353216;
  *(a1 + 2232) = 0u;
  *(a1 + 2248) = 0u;
  *(a1 + 2264) = 1065353216;
  *(a1 + 2288) = 0u;
  *(a1 + 2272) = 0u;
  *(a1 + 2304) = 1065353216;
  *(a1 + 2312) = 0u;
  *(a1 + 2328) = 0u;
  *(a1 + 2344) = 1065353216;
  *(a1 + 2368) = 0u;
  *(a1 + 2352) = 0u;
  *(a1 + 2384) = 1065353216;
  *(a1 + 2392) = 0u;
  *(a1 + 2408) = 0u;
  *(a1 + 2424) = 1065353216;
  *(a1 + 2448) = 0u;
  *(a1 + 2432) = 0u;
  *(a1 + 2464) = 1065353216;
  *(a1 + 2472) = 0u;
  *(a1 + 2488) = 0u;
  *(a1 + 2504) = 1065353216;
  *(a1 + 2528) = 0u;
  *(a1 + 2512) = 0u;
  *(a1 + 2544) = 1065353216;
  *(a1 + 2552) = 0u;
  *(a1 + 2568) = 0u;
  *(a1 + 2584) = 1065353216;
  *(a1 + 2608) = 0u;
  *(a1 + 2592) = 0u;
  *(a1 + 2624) = 1065353216;
  *(a1 + 2632) = 0u;
  *(a1 + 2648) = 0u;
  *(a1 + 2664) = 1065353216;
  *(a1 + 2688) = 0u;
  *(a1 + 2672) = 0u;
  *(a1 + 2704) = 1065353216;
  *(a1 + 2712) = 0u;
  *(a1 + 2728) = 0u;
  *(a1 + 2744) = 1065353216;
  *(a1 + 2752) = 0;
  *(a1 + 2760) = 0u;
  *(a1 + 2776) = 0u;
  *(a1 + 2792) = 1065353216;
  *(a1 + 2816) = 0u;
  *(a1 + 2800) = 0u;
  *(a1 + 2832) = 1065353216;
  *(a1 + 2840) = 0u;
  *(a1 + 2856) = 0u;
  *(a1 + 2872) = 1065353216;
  *(a1 + 2880) = 0;
  *(a1 + 2884) = 0;
  *(a1 + 2892) = 0;
  *(a1 + 2904) = 0u;
  *(a1 + 2920) = 0u;
  *(a1 + 2936) = 1065353216;
  *(a1 + 2960) = 0u;
  *(a1 + 2944) = 0u;
  *(a1 + 2976) = 1065353216;
  *(a1 + 2984) = 0u;
  *(a1 + 3000) = 0u;
  *(a1 + 3016) = 1065353216;
  *(a1 + 3040) = 0u;
  *(a1 + 3024) = 0u;
  *(a1 + 3056) = 1065353216;
  *(a1 + 3064) = 0u;
  *(a1 + 3080) = 0u;
  *(a1 + 3096) = 1065353216;
  *(a1 + 3120) = 0u;
  *(a1 + 3104) = 0u;
  *(a1 + 3136) = 1065353216;
  *(a1 + 3144) = 0u;
  *(a1 + 3160) = 0u;
  *(a1 + 3176) = 1065353216;
  *(a1 + 3200) = 0u;
  *(a1 + 3184) = 0u;
  *(a1 + 3216) = 1065353216;
  *(a1 + 3224) = 0u;
  *(a1 + 3240) = 0u;
  *(a1 + 3256) = 1065353216;
  *(a1 + 3280) = 0u;
  *(a1 + 3264) = 0u;
  *(a1 + 3296) = 1065353216;
  *(a1 + 3304) = 0u;
  *(a1 + 3320) = 0u;
  *(a1 + 3336) = 1065353216;
  *(a1 + 3360) = 0u;
  *(a1 + 3344) = 0u;
  *(a1 + 3376) = 1065353216;
  *(a1 + 3384) = 0u;
  *(a1 + 3400) = 0u;
  *(a1 + 3416) = 1065353216;
  *(a1 + 3440) = 0u;
  *(a1 + 3424) = 0u;
  *(a1 + 3456) = 1065353216;
  *(a1 + 3464) = 0u;
  *(a1 + 3480) = 0u;
  *(a1 + 3496) = 1065353216;
  *(a1 + 3520) = 0u;
  *(a1 + 3504) = 0u;
  *(a1 + 3536) = 1065353216;
  *(a1 + 3544) = 0u;
  *(a1 + 3560) = 0u;
  *(a1 + 3576) = 1065353216;
  *(a1 + 3600) = 0u;
  *(a1 + 3584) = 0u;
  *(a1 + 3616) = 1065353216;
  *(a1 + 3624) = 0u;
  *(a1 + 3640) = 0u;
  *(a1 + 3656) = 1065353216;
  *(a1 + 3680) = 0u;
  *(a1 + 3664) = 0u;
  *(a1 + 3696) = 1065353216;
  *(a1 + 3704) = 0u;
  *(a1 + 3720) = 0u;
  *(a1 + 3736) = 1065353216;
  *(a1 + 3760) = 0u;
  *(a1 + 3744) = 0u;
  *(a1 + 3776) = 1065353216;
  *(a1 + 3784) = 0u;
  *(a1 + 3800) = 0u;
  *(a1 + 3816) = 1065353216;
  *(a1 + 3840) = 0u;
  *(a1 + 3824) = 0u;
  *(a1 + 3856) = 1065353216;
  *(a1 + 3864) = 0u;
  *(a1 + 3880) = 0u;
  *(a1 + 3896) = 1065353216;
  *(a1 + 3920) = 0u;
  *(a1 + 3904) = 0u;
  *(a1 + 3936) = 1065353216;
  *(a1 + 3944) = 0u;
  *(a1 + 3960) = 0u;
  *(a1 + 3976) = 1065353216;
  *(a1 + 4000) = 0u;
  *(a1 + 3984) = 0u;
  *(a1 + 4016) = 1065353216;
  *(a1 + 4024) = 0u;
  *(a1 + 4040) = 0u;
  *(a1 + 4056) = 1065353216;
  *(a1 + 4064) = 0;
  *(a1 + 4068) = 0;
  *(a1 + 4076) = 0;
  *(a1 + 4080) = 0;
  *(a1 + 4096) = 0;
  *(a1 + 4104) = 1;
  v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v7 = dispatch_queue_attr_make_with_qos_class(v6, QOS_CLASS_USER_INITIATED, 0);
  *(a1 + 4112) = dispatch_queue_create("SceneUnderstandingARManager", v7);

  *(a1 + 4120) = dispatch_group_create();
  *(a1 + 4128) = *a2;
  *(a1 + 4160) = 0;
  *(a1 + 4192) = 0;
  *(a1 + 4224) = 0;
  *(a1 + 4288) = 0u;
  *(a1 + 4272) = 0u;
  *(a1 + 4256) = 0u;
  *(a1 + 4304) = 1065353216;
  *(a1 + 4312) = 0u;
  *(a1 + 4328) = 0u;
  *(a1 + 4344) = 1065353216;
  std::string::basic_string[abi:ne200100]<0>(buf, &str_1_0);
  rf::UserDefaults::UserDefaults(&v60, buf);
  std::string::basic_string[abi:ne200100]<0>(__p, "com.apple.re.HideMeshRemoveCrash");
  v8 = rf::UserDefaults::BOOLValue(&v60, __p);
  *(a1 + 4104) = ((v8 & 0x100) == 0) | v8 & 1;
  if (SBYTE7(v73) < 0)
  {
    operator delete(__p[0]);
  }

  rf::UserDefaults::~UserDefaults(&v60);
  if (SBYTE7(v34) < 0)
  {
    operator delete(*buf);
  }

  std::string::basic_string[abi:ne200100]<0>(buf, &str_1_0);
  rf::UserDefaults::UserDefaults(&v60, buf);
  std::string::basic_string[abi:ne200100]<0>(__p, "com.apple.re.WorldCollaborationDefaultStart");
  v9 = rf::UserDefaults::BOOLValue(&v60, __p);
  if (SBYTE7(v73) < 0)
  {
    operator delete(__p[0]);
  }

  v10 = *&v9 & ((v9 & 0x100) >> 8);
  rf::UserDefaults::~UserDefaults(&v60);
  if (SBYTE7(v34) < 0)
  {
    operator delete(*buf);
    if (!v10)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (v10)
  {
LABEL_11:
    std::mutex::lock(v4);
    *(a1 + 4084) = 1;
    std::mutex::unlock(v4);
  }

LABEL_12:
  v12 = rf::realityFusionLogObject(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    std::mutex::lock(v4);
    v13 = *(a1 + 4084);
    *buf = 67109120;
    *&buf[4] = v13;
    _os_log_impl(&dword_2617CB000, v12, OS_LOG_TYPE_DEFAULT, "ARState: World Anchor Sharing Availability initialized as %d", buf, 8u);
    std::mutex::unlock(v4);
  }

  v15 = rf::helpers::kCameraIdentifier(v14);
  v16 = v15[1];
  *__p = *v15;
  v73 = v16;
  v74 = xmmword_26185DD00;
  v75 = xmmword_26185DD10;
  v76 = xmmword_26185DD20;
  *v77 = xmmword_26185E1B0;
  *&v77[16] = 16842752;
  *&v77[20] = 0;
  v77[24] = 0;
  v78 = 0;
  LOBYTE(v79) = 0;
  BYTE8(v80) = 0;
  *&v81 = 0;
  uuid_clear(&v79 + 8);
  BYTE8(v81) = 0;
  BYTE8(v83) = 0;
  v18 = rf::helpers::kBodyIdentifier(v17);
  v19 = v18[1];
  v60 = *v18;
  v61 = v19;
  v62 = xmmword_26185DD00;
  v63 = xmmword_26185DD10;
  v64 = xmmword_26185DD20;
  *v65 = xmmword_26185E1B0;
  *&v65[16] = 16842752;
  *&v65[20] = 0;
  v65[24] = 0;
  v66 = 0;
  LOBYTE(v67) = 0;
  BYTE8(v68) = 0;
  *&v69 = 0;
  uuid_clear(&v67 + 8);
  BYTE8(v69) = 0;
  BYTE8(v71) = 0;
  v21 = rf::helpers::kHeadIdentifier(v20);
  v22 = v21[1];
  v48 = *v21;
  v49 = v22;
  v50 = xmmword_26185DD00;
  v51 = xmmword_26185DD10;
  v52 = xmmword_26185DD20;
  *v53 = xmmword_26185E1B0;
  *&v53[16] = 16842752;
  *&v53[20] = 0;
  v53[24] = 0;
  v54 = 0;
  LOBYTE(v55) = 0;
  BYTE8(v56) = 0;
  *&v57 = 0;
  uuid_clear(&v55 + 8);
  BYTE8(v57) = 0;
  BYTE8(v59) = 0;
  std::mutex::lock(v4);
  v24 = rf::helpers::kCameraIdentifier(v23);
  v25 = v24[1];
  *buf = *v24;
  v34 = v25;
  v39 = v76;
  *v40 = *v77;
  *&v40[9] = *&v77[9];
  v35 = *__p;
  v36 = v73;
  v37 = v74;
  v38 = v75;
  v41 = v78;
  v44 = v81;
  v45 = v82;
  v46 = v83;
  v42 = v79;
  v43 = v80;
  v47 = 0;
  std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>>>::__emplace_unique_key_args<rf::data_flow::RFUUID,std::pair<rf::data_flow::RFUUID const,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>>(v5, buf, buf);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v35);
  std::mutex::unlock(v4);
  std::mutex::lock(v4);
  v27 = rf::helpers::kBodyIdentifier(v26);
  v28 = v27[1];
  *buf = *v27;
  v34 = v28;
  v39 = v64;
  *v40 = *v65;
  *&v40[9] = *&v65[9];
  v35 = v60;
  v36 = v61;
  v37 = v62;
  v38 = v63;
  v41 = v66;
  v44 = v69;
  v45 = v70;
  v46 = v71;
  v42 = v67;
  v43 = v68;
  v47 = 0;
  std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>>>::__emplace_unique_key_args<rf::data_flow::RFUUID,std::pair<rf::data_flow::RFUUID const,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>>(v5, buf, buf);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v35);
  std::mutex::unlock(v4);
  std::mutex::lock(v4);
  v30 = rf::helpers::kHeadIdentifier(v29);
  v31 = v30[1];
  *buf = *v30;
  v34 = v31;
  v39 = v52;
  *v40 = *v53;
  *&v40[9] = *&v53[9];
  v35 = v48;
  v36 = v49;
  v37 = v50;
  v38 = v51;
  v41 = v54;
  v44 = v57;
  v45 = v58;
  v46 = v59;
  v42 = v55;
  v43 = v56;
  v47 = 0;
  std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>>>::__emplace_unique_key_args<rf::data_flow::RFUUID,std::pair<rf::data_flow::RFUUID const,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>>(v5, buf, buf);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v35);
  std::mutex::unlock(v4);
  buf[0] = 0;
  buf[8] = 0;
  rf::ARState::consumeChangesSinceLast(a1, buf);

  return a1;
}

void sub_261800760(_Unwind_Exception *a1)
{
  std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>>>::~__hash_table(v3);
  std::__hash_table<std::__hash_value_type<unsigned long,rf::data_flow::RoomManagementClient>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,rf::data_flow::RoomManagementClient>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,rf::data_flow::RoomManagementClient>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,rf::data_flow::RoomManagementClient>>>::~__hash_table((v1 + 534));
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100]((v1 + 529));
  std::__function::__value_func<void ()(rf::data_flow::RFUUID const&)>::~__value_func[abi:ne200100]((v1 + 525));
  std::__function::__value_func<void ()(rf::data_flow::RFUUID const&)>::~__value_func[abi:ne200100]((v1 + 521));
  std::__function::__value_func<void ()(rf::data_flow::RFUUID const&)>::~__value_func[abi:ne200100]((v1 + 517));

  rf::ARStateData::~ARStateData(v1 + 10);
  std::mutex::~mutex(v2);
  _Unwind_Resume(a1);
}

void rf::ARState::~ARState(rf::ARState *this)
{
  v2 = *(this + 515);
  if (v2)
  {
    dispatch_group_wait(v2, 0xFFFFFFFFFFFFFFFFLL);
    v3 = *(this + 515);
    *(this + 515) = 0;
  }

  v4 = *(this + 514);
  *(this + 514) = 0;

  std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>>>::clear(this + 80);
  if (*(this + 520))
  {
    v5 = this;
    rf::ARState::~ARState()::$_0::operator()(&v5, this + 160);
    rf::ARState::~ARState()::$_0::operator()(&v5, this + 200);
  }

  std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>>>::clear(this + 160);
  std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>>>::~__hash_table(this + 4312);
  std::__hash_table<std::__hash_value_type<unsigned long,rf::data_flow::RoomManagementClient>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,rf::data_flow::RoomManagementClient>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,rf::data_flow::RoomManagementClient>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,rf::data_flow::RoomManagementClient>>>::~__hash_table(this + 4272);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](this + 4232);
  std::__function::__value_func<void ()(rf::data_flow::RFUUID const&)>::~__value_func[abi:ne200100](this + 4200);
  std::__function::__value_func<void ()(rf::data_flow::RFUUID const&)>::~__value_func[abi:ne200100](this + 4168);
  std::__function::__value_func<void ()(rf::data_flow::RFUUID const&)>::~__value_func[abi:ne200100](this + 4136);

  rf::ARStateData::~ARStateData(this + 10);
  std::mutex::~mutex((this + 16));
}

rf *rf::ARState::~ARState()::$_0::operator()(rf *result, uint64_t a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *(a2 + 16);
  if (v2)
  {
    v3 = *result;
    do
    {
      if (!*(v2 + 76) && *(v2 + 37) == 1)
      {
        v4 = rf::realityFusionLogObject(result);
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
        {
          rf::data_flow::RFUUID::string(__p, (v2 + 6));
          v5 = v8 >= 0 ? __p : __p[0];
          *buf = 136446210;
          v10 = v5;
          _os_log_impl(&dword_2617CB000, v4, OS_LOG_TYPE_DEFAULT, "ARState: Cleaning up anchor %{public}s", buf, 0xCu);
          if (v8 < 0)
          {
            operator delete(__p[0]);
          }
        }

        v6 = *(v3 + 4160);
        if (!v6)
        {
          std::__throw_bad_function_call[abi:ne200100]();
        }

        result = (*(*v6 + 48))(v6, v2 + 6);
      }

      v2 = *v2;
    }

    while (v2);
  }

  return result;
}

void rf::anonymous namespace::tryGetCurrentMesh(void *a1, uint64_t a2, uint64_t a3, void **a4)
{
  v8 = std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>>>::find<rf::data_flow::RFUUID>(*a4, a3);
  if (v8 || (v8 = std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>>>::find<rf::data_flow::RFUUID>(*a4 + 5, a3)) != 0)
  {
    v10 = v8[6];
    v9 = v8[7];
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v10 && *(v10 + 32) == a2)
    {
      *a1 = v10;
      a1[1] = v9;
    }

    else
    {
      *a1 = 0;
      a1[1] = 0;
      if (v9)
      {

        std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      }
    }
  }

  else
  {
    *a1 = 0;
    a1[1] = 0;
  }
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

__n128 __Block_byref_object_copy_(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 48);
  v3 = *(a2 + 64);
  v4 = *(a2 + 80);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 64) = v3;
  *(a1 + 80) = v4;
  *(a1 + 48) = result;
  return result;
}

void ___ZN2rf7ARState15updateMeshAssetERNS_17LockedARStateDataERKNSt3__113unordered_mapINS_9data_flow6RFUUIDENS3_10shared_ptrINS5_8consumer4MeshEEENS6_4HashENS6_8EqualityENS3_9allocatorINS3_4pairIKS6_SA_EEEEEEP14REAssetManager_block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 48);
  v3 = v9;
  if (v9)
  {
    if (*(v9 + 360) == 1)
    {
      if (re::internal::enableSignposts(0, 0))
      {
        if (!*(v1 + 88))
        {
          if (*(v1 + 80))
          {
            v8 = *(v1 + 64);
          }

          else
          {
            v8 = (v1 + 64);
          }

          *(v1 + 88) = ((*v8 >> 2) + (*v8 << 6) + v8[1] + 2654435769) ^ *v8;
        }

        kdebug_trace();
      }

      if ((*(v3 + 360) & 1) == 0)
      {
        std::__throw_bad_optional_access[abi:ne200100]();
      }

      v11 = MEMORY[0x277D85DD0];
      v12 = 3321888768;
      v13 = ___ZZN2rf7ARState15updateMeshAssetERNS_17LockedARStateDataERKNSt3__113unordered_mapINS_9data_flow6RFUUIDENS3_10shared_ptrINS5_8consumer4MeshEEENS6_4HashENS6_8EqualityENS3_9allocatorINS3_4pairIKS6_SA_EEEEEEP14REAssetManagerENK3__0clEv_block_invoke;
      v14 = &__block_descriptor_96_ea8_72c55_ZTSNSt3__110shared_ptrIN2rf9data_flow8consumer4MeshEEE_e33_v24__0__REAsset__8____CFError__16l;
      v15 = v2;
      v4 = *(v1 + 80);
      v16 = *(v1 + 64);
      v17 = v4;
      v18 = v3;
      v19 = v10;
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v20 = *(v1 + 56);
      REAssetManagerMeshAssetCreateFromModelsWithOptionsAsyncWithError();
      if (v19)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v19);
      }
    }
  }

  else
  {
    if (re::internal::enableSignposts(0, 0))
    {
      if (!*(v1 + 88))
      {
        if (*(v1 + 80))
        {
          v5 = *(v1 + 64);
        }

        else
        {
          v5 = (v1 + 64);
        }

        *(v1 + 88) = ((*v5 >> 2) + (*v5 << 6) + v5[1] + 2654435769) ^ *v5;
      }

      kdebug_trace();
    }

    if (re::internal::enableSignposts(0, 0))
    {
      if (!*(v1 + 88))
      {
        if (*(v1 + 80))
        {
          v6 = *(v1 + 64);
        }

        else
        {
          v6 = (v1 + 64);
        }

        *(v1 + 88) = ((*v6 >> 2) + (*v6 << 6) + v6[1] + 2654435769) ^ *v6;
      }

      kdebug_trace();
    }

    if (re::internal::enableSignposts(0, 0))
    {
      if (!*(v1 + 88))
      {
        if (*(v1 + 80))
        {
          v7 = *(v1 + 64);
        }

        else
        {
          v7 = (v1 + 64);
        }

        *(v1 + 88) = ((*v7 >> 2) + (*v7 << 6) + v7[1] + 2654435769) ^ *v7;
      }

      kdebug_trace();
    }
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }
}

void sub_261800F30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

__n128 __Block_byref_object_copy__7(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 48);
  v3 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v3;
  *(a1 + 48) = result;
  return result;
}

void ___ZN2rf7ARState18updatePhysicsShapeERNS_17LockedARStateDataERKNSt3__113unordered_mapINS_9data_flow6RFUUIDENS3_10shared_ptrINS5_8consumer4MeshEEENS6_4HashENS6_8EqualityENS3_9allocatorINS3_4pairIKS6_SA_EEEEEE_block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 48);
  v3 = v24;
  if (v24)
  {
    if (*(v24 + 152) != 1)
    {
      goto LABEL_24;
    }

    v4 = *(v24 + 128);
    if (!v4)
    {
      goto LABEL_24;
    }

    if (![v4 length])
    {
      goto LABEL_24;
    }

    if (*(v3 + 216) != 1)
    {
      goto LABEL_24;
    }

    v5 = *(v3 + 192);
    if (!v5 || ![v5 length])
    {
      goto LABEL_24;
    }

    if (re::internal::enableSignposts(0, 0))
    {
      if (!*(v1 + 88))
      {
        if (*(v1 + 80))
        {
          v21 = *(v1 + 64);
        }

        else
        {
          v21 = (v1 + 64);
        }

        *(v1 + 88) = ((*v21 >> 2) + (*v21 << 6) + v21[1] + 2654435769) ^ *v21;
      }

      kdebug_trace();
    }

    [*(v3 + 128) contents];
    [*(v3 + 192) contents];
    v6 = RECollisionMeshCreateWithFormat();
    std::mutex::lock((v2 + 16));
    v7 = *(v1 + 80);
    v26 = *(v1 + 64);
    v27 = v7;
    v28 = v6;
    v8 = *(&v7 + 1);
    if (!*(&v7 + 1))
    {
      if (v27)
      {
        v20 = v26;
      }

      else
      {
        v20 = &v26;
      }

      v8 = ((*v20 >> 2) + (*v20 << 6) + *(v20 + 1) + 2654435769) ^ *v20;
      *(&v27 + 1) = v8;
    }

    v9 = *(v2 + 1960);
    if (!*&v9)
    {
      goto LABEL_41;
    }

    v10 = vcnt_s8(v9);
    v10.i16[0] = vaddlv_u8(v10);
    v11 = v10.u32[0];
    if (v10.u32[0] > 1uLL)
    {
      v12 = v8;
      if (v8 >= *&v9)
      {
        v12 = v8 % *&v9;
      }
    }

    else
    {
      v12 = (*&v9 - 1) & v8;
    }

    v13 = *(*(v2 + 1952) + 8 * v12);
    if (!v13 || (v14 = *v13) == 0)
    {
LABEL_41:
      operator new();
    }

    while (1)
    {
      v15 = v14[1];
      if (v15 == v8)
      {
        if (rf::data_flow::RFUUID::Equality::operator()(v2 + 1952, (v14 + 2), &v26))
        {
          v16 = v28;
          v28 = 0;
          if (v16)
          {
            RECollisionMeshDestroy();
          }

          std::mutex::unlock((v2 + 16));
          if (re::internal::enableSignposts(0, 0))
          {
            if (!*(v1 + 88))
            {
              if (*(v1 + 80))
              {
                v22 = *(v1 + 64);
              }

              else
              {
                v22 = (v1 + 64);
              }

              *(v1 + 88) = ((*v22 >> 2) + (*v22 << 6) + v22[1] + 2654435769) ^ *v22;
            }

            kdebug_trace();
          }

          if (re::internal::enableSignposts(0, 0))
          {
            if (!*(v1 + 88))
            {
              if (*(v1 + 80))
              {
                v23 = *(v1 + 64);
              }

              else
              {
                v23 = (v1 + 64);
              }

              *(v1 + 88) = ((*v23 >> 2) + (*v23 << 6) + v23[1] + 2654435769) ^ *v23;
            }

            goto LABEL_23;
          }

          goto LABEL_24;
        }
      }

      else
      {
        if (v11 > 1)
        {
          if (v15 >= *&v9)
          {
            v15 %= *&v9;
          }
        }

        else
        {
          v15 &= *&v9 - 1;
        }

        if (v15 != v12)
        {
          goto LABEL_41;
        }
      }

      v14 = *v14;
      if (!v14)
      {
        goto LABEL_41;
      }
    }
  }

  if (re::internal::enableSignposts(0, 0))
  {
    if (!*(v1 + 88))
    {
      if (*(v1 + 80))
      {
        v17 = *(v1 + 64);
      }

      else
      {
        v17 = (v1 + 64);
      }

      *(v1 + 88) = ((*v17 >> 2) + (*v17 << 6) + v17[1] + 2654435769) ^ *v17;
    }

    kdebug_trace();
  }

  if (re::internal::enableSignposts(0, 0))
  {
    if (!*(v1 + 88))
    {
      if (*(v1 + 80))
      {
        v18 = *(v1 + 64);
      }

      else
      {
        v18 = (v1 + 64);
      }

      *(v1 + 88) = ((*v18 >> 2) + (*v18 << 6) + v18[1] + 2654435769) ^ *v18;
    }

    kdebug_trace();
  }

  if (re::internal::enableSignposts(0, 0))
  {
    if (!*(v1 + 88))
    {
      if (*(v1 + 80))
      {
        v19 = *(v1 + 64);
      }

      else
      {
        v19 = (v1 + 64);
      }

      *(v1 + 88) = ((*v19 >> 2) + (*v19 << 6) + v19[1] + 2654435769) ^ *v19;
    }

LABEL_23:
    kdebug_trace();
  }

LABEL_24:
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }
}

void sub_26180178C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  std::unique_ptr<RECollisionMesh,rf::RECollisionMeshDeleter>::reset[abi:ne200100](&a9);
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(a1);
}

uint64_t rf::ARState::getAnchorWithIdentifier@<X0>(rf::ARState *this@<X0>, const unsigned __int8 *a2@<X1>, _BYTE *a3@<X8>)
{
  v14 = *MEMORY[0x277D85DE8];
  v12 = 0;
  v13 = 0;
  uuid_clear(uu);
  *uu = a2;
  v12 = 1;
  v6 = std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>>>::find<rf::data_flow::RFUUID>(this + 20, uu);
  result = std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>>>::find<rf::data_flow::RFUUID>(this + 25, uu);
  v8 = v6 | result;
  if (v6 | result)
  {
    v9 = result + 48;
    if (!result)
    {
      v9 = 0;
    }

    if (v6)
    {
      v10 = v6 + 48;
    }

    else
    {
      v10 = v9;
    }

    result = std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](a3, v10);
    v8 = 1;
  }

  else
  {
    *a3 = 0;
  }

  a3[272] = v8;
  return result;
}

void *rf::ARState::getAnchorPtrWithIdentifier(rf::ARState *this, const unsigned __int8 *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v9 = 0;
  v10 = 0;
  uuid_clear(uu);
  *uu = a2;
  v9 = 1;
  v4 = std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>>>::find<rf::data_flow::RFUUID>(this + 20, uu);
  v5 = std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>>>::find<rf::data_flow::RFUUID>(this + 25, uu);
  v6 = v5 + 6;
  if (!v5)
  {
    v6 = 0;
  }

  if (v4)
  {
    return v4 + 6;
  }

  else
  {
    return v6;
  }
}

void rf::ARState::getAnchors(rf::ARState *this@<X0>, uint64_t *a2@<X8>)
{
  v9[35] = *MEMORY[0x277D85DE8];
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = *(this + 23);
  v4 = a2;
  LOBYTE(v5) = 0;
  if (v2)
  {
    std::vector<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::__vallocate[abi:ne200100](a2, v2);
  }

  v4 = 0;
  v5 = 0;
  v3 = *(this + 28);
  v6 = 0;
  v7 = &v4;
  v8 = 0;
  if (v3)
  {
    std::vector<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::__vallocate[abi:ne200100](&v4, v3);
  }

  v9[0] = &v4;
  std::vector<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::__destroy_vector::operator()[abi:ne200100](v9);
}

void sub_261801C78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void ***a13)
{
  a13 = &a10;
  std::vector<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::__destroy_vector::operator()[abi:ne200100](&a13);
  std::vector<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void sub_261801D2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  if (v14)
  {
    v15 = v13 - 272;
    v16 = -v14;
    do
    {
      std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v15);
      v15 -= 272;
      v16 += 272;
    }

    while (v16);
  }

  *(v11 + 8) = v12;
  if (a11)
  {
    JUMPOUT(0x261801D24);
  }

  JUMPOUT(0x261801D1CLL);
}

uint64_t rf::ARState::visitAnchors(uint64_t result, uint64_t a2)
{
  v3 = result;
  for (i = *(result + 176); i; i = *i)
  {
    result = std::function<void ()(std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const*)>::operator()(a2, (i + 6));
  }

  for (j = *(v3 + 216); j; j = *j)
  {
    result = std::function<void ()(std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const*)>::operator()(a2, (j + 6));
  }

  return result;
}

uint64_t rf::ARState::getUpdatedAnchors@<X0>(uint64_t this@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = *(this + 2216);
  if (v2)
  {
    std::vector<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::__vallocate[abi:ne200100](a2, v2);
  }

  return this;
}

uint64_t std::function<void ()(std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const*)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t rf::ARState::getRoomManagementClientID(rf::ARState *this)
{
  std::string::basic_string[abi:ne200100]<0>(&__p, &str_1_0);
  RoomManagementClientID = rf::ARState::getRoomManagementClientID(this, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return RoomManagementClientID;
}

void sub_261801FB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t rf::ARState::getRoomManagementClientID(uint64_t a1, const std::string *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v31 = 0u;
  v32 = 0u;
  v30 = 0u;
  v28 = 0u;
  memset(v29, 0, sizeof(v29));
  v26 = 0u;
  v27 = 0u;
  DWORD2(v28) = 1065353216;
  std::string::basic_string[abi:ne200100]<0>(v29, &str_1_0);
  v29[2].__r_.__value_.__r.__words[0] = 0;
  v29[2].__r_.__value_.__s.__data_[8] = 0;
  v29[3].__r_.__value_.__s.__data_[16] = 0;
  v30 = 0u;
  v31 = 0u;
  LODWORD(v32) = 1065353216;
  BYTE8(v32) = 0;
  std::string::operator=(v29, a2);
  v14 = *(a1 + 4264);
  *(&v26 + 1) = 0;
  *&v27 = 0;
  v15 = 0;
  v16 = 0uLL;
  v17 = 0;
  v18 = 1065353216;
  __p = v29[0];
  memset(v29, 0, 24);
  std::__function::__value_func<void ()(std::optional<rf::data_flow::RFUUID>,std::unordered_set<rf::data_flow::RFUUID,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<rf::data_flow::RFUUID>> const&)>::__value_func[abi:ne200100](v20, &v29[1]);
  v20[2] = *&v29[2].__r_.__value_.__r.__words[1];
  v21 = v29[3];
  v4 = v30;
  v30 = 0uLL;
  v22 = v4;
  v23 = v31;
  v24 = v32;
  if (*(&v31 + 1))
  {
    v5 = *(v31 + 8);
    if ((*(&v4 + 1) & (*(&v4 + 1) - 1)) != 0)
    {
      if (v5 >= *(&v4 + 1))
      {
        v5 %= *(&v4 + 1);
      }
    }

    else
    {
      v5 &= *(&v4 + 1) - 1;
    }

    *(v4 + 8 * v5) = &v23;
    v31 = 0uLL;
  }

  v25 = BYTE8(v32);
  v6 = *(a1 + 4280);
  if (!*&v6)
  {
    goto LABEL_24;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = v14;
    if (*&v6 <= v14)
    {
      v8 = v14 % *&v6;
    }
  }

  else
  {
    v8 = (*&v6 - 1) & v14;
  }

  v9 = *(*(a1 + 4272) + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_24:
    operator new();
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v14)
    {
      break;
    }

    if (v7.u32[0] > 1uLL)
    {
      if (v11 >= *&v6)
      {
        v11 %= *&v6;
      }
    }

    else
    {
      v11 &= *&v6 - 1;
    }

    if (v11 != v8)
    {
      goto LABEL_24;
    }

LABEL_23:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_24;
    }
  }

  if (v10[2] != v14)
  {
    goto LABEL_23;
  }

  std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>>>::~__hash_table(&v22);
  std::__function::__value_func<void ()(std::optional<rf::data_flow::RFUUID>,std::unordered_set<rf::data_flow::RFUUID,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<rf::data_flow::RFUUID>> const&)>::~__value_func[abi:ne200100](v20);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>>>::~__hash_table(&v15);
  std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::__emplace_unique_key_args<unsigned long,unsigned long const&>((a1 + 4312), *(a1 + 4264), (a1 + 4264));
  v12 = *(a1 + 4264);
  *(a1 + 4264) = v12 + 1;
  std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>>>::~__hash_table(&v30);
  std::__function::__value_func<void ()(std::optional<rf::data_flow::RFUUID>,std::unordered_set<rf::data_flow::RFUUID,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<rf::data_flow::RFUUID>> const&)>::~__value_func[abi:ne200100](&v29[1]);
  if (SHIBYTE(v29[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29[0].__r_.__value_.__l.__data_);
  }

  std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>>>::~__hash_table(&v26 + 8);
  return v12;
}

void sub_26180245C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, ...)
{
  va_start(va, a34);
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long,rf::data_flow::RoomManagementClient>,void *>>>::operator()[abi:ne200100](1, v34);
  std::pair<unsigned long const,rf::data_flow::RoomManagementClient>::~pair(&a10);
  rf::data_flow::RoomManagementClient::~RoomManagementClient(va);
  _Unwind_Resume(a1);
}

void *rf::ARState::subscribeToRoomChange(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v16[3] = *MEMORY[0x277D85DE8];
  v13 = a2;
  result = std::__hash_table<std::__hash_value_type<unsigned long,std::any>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::any>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::any>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::any>>>::find<unsigned long>((a1 + 4272), &v13);
  if (result)
  {
    *buf = &v13;
    v6 = std::__hash_table<std::__hash_value_type<unsigned long,rf::data_flow::RoomManagementClient>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,rf::data_flow::RoomManagementClient>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,rf::data_flow::RoomManagementClient>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,rf::data_flow::RoomManagementClient>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>((a1 + 4272), &v13, &std::piecewise_construct, buf);
    std::__function::__value_func<void ()(std::optional<rf::data_flow::RFUUID>,std::unordered_set<rf::data_flow::RFUUID,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<rf::data_flow::RFUUID>> const&)>::__value_func[abi:ne200100](buf, a3);
    v7 = v6 + 12;
    if (buf != (v6 + 12))
    {
      v8 = v15;
      v9 = v6[15];
      if (v15 == buf)
      {
        if (v9 == v7)
        {
          (*(*v15 + 24))();
          (*(*v15 + 32))(v15);
          v15 = 0;
          (*(*v6[15] + 24))(v6[15], buf);
          (*(*v6[15] + 32))(v6[15]);
          v6[15] = 0;
          v15 = buf;
          (*(v16[0] + 24))(v16, v6 + 12);
          (*(v16[0] + 32))(v16);
        }

        else
        {
          (*(*v15 + 24))();
          (*(*v15 + 32))(v15);
          v15 = v6[15];
        }

        v6[15] = v7;
      }

      else if (v9 == v7)
      {
        (*(*v9 + 24))(v6[15], buf);
        (*(*v6[15] + 32))(v6[15]);
        v6[15] = v15;
        v15 = buf;
      }

      else
      {
        v15 = v6[15];
        v6[15] = v8;
      }
    }

    v10 = std::__function::__value_func<void ()(std::optional<rf::data_flow::RFUUID>,std::unordered_set<rf::data_flow::RFUUID,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<rf::data_flow::RFUUID>> const&)>::~__value_func[abi:ne200100](buf);
    v11 = rf::realityFusionLogObject(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *&buf[4] = v13;
      _os_log_impl(&dword_2617CB000, v11, OS_LOG_TYPE_DEFAULT, "ARState: triggering client room change %lu due to new subscription", buf, 0xCu);
    }

    *buf = &v13;
    v12 = std::__hash_table<std::__hash_value_type<unsigned long,rf::data_flow::RoomManagementClient>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,rf::data_flow::RoomManagementClient>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,rf::data_flow::RoomManagementClient>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,rf::data_flow::RoomManagementClient>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>((a1 + 4272), &v13, &std::piecewise_construct, buf);
    return rf::data_flow::RoomManagementClient::triggerRoomChange((v12 + 3), (a1 + 368), (a1 + 160));
  }

  return result;
}

void sub_261802804(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void *rf::ARState::unsubscribeToRoomChange(rf::ARState *this, unint64_t a2)
{
  v5 = a2;
  result = std::__hash_table<std::__hash_value_type<unsigned long,std::any>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::any>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::any>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::any>>>::find<unsigned long>(this + 534, &v5);
  if (result)
  {
    v6 = &v5;
    v4 = std::__hash_table<std::__hash_value_type<unsigned long,rf::data_flow::RoomManagementClient>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,rf::data_flow::RoomManagementClient>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,rf::data_flow::RoomManagementClient>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,rf::data_flow::RoomManagementClient>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(this + 534, &v5, &std::piecewise_construct, &v6);
    return std::__function::__value_func<void ()(std::optional<rf::data_flow::RFUUID>,std::unordered_set<rf::data_flow::RFUUID,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<rf::data_flow::RFUUID>> const&)>::operator=[abi:ne200100]((v4 + 12));
  }

  return result;
}

void rf::ARState::setManualRoomChangeEnabled(int8x8_t *this, unint64_t a2, int a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v22 = a2;
  if (!std::__hash_table<std::__hash_value_type<unsigned long,std::any>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::any>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::any>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::any>>>::find<unsigned long>(&this[534], &v22))
  {
    return;
  }

  v5 = v22;
  if (((std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::find<unsigned long>(&this[539], v22) != 0) ^ a3))
  {
    return;
  }

  if (!a3)
  {
    std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::__emplace_unique_key_args<unsigned long,unsigned long const&>(&this[539], v5, &v22);
    *buf = &v22;
    v9 = std::__hash_table<std::__hash_value_type<unsigned long,rf::data_flow::RoomManagementClient>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,rf::data_flow::RoomManagementClient>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,rf::data_flow::RoomManagementClient>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,rf::data_flow::RoomManagementClient>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(&this[534], &v22, &std::piecewise_construct, buf);
    v10 = rf::realityFusionLogObject(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *&buf[4] = v22;
      _os_log_impl(&dword_2617CB000, v10, OS_LOG_TYPE_DEFAULT, "ARState: triggering client room change %lu due to turning off manual mode", buf, 0xCu);
    }

    rf::data_flow::RoomManagementClient::triggerRoomChange(v9 + 24, &this[46], &this[20]);
    return;
  }

  v6 = this[540];
  if (!*&v6)
  {
    return;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = v5;
    if (*&v6 <= v5)
    {
      v8 = v5 % *&v6;
    }
  }

  else
  {
    v8 = (*&v6 - 1) & v5;
  }

  v11 = this[539];
  v12 = *(*&v11 + 8 * v8);
  if (!v12)
  {
    return;
  }

  v13 = *v12;
  if (!*v12)
  {
    return;
  }

  v14 = *&v6 - 1;
  while (1)
  {
    v15 = v13[1];
    if (v15 == v5)
    {
      break;
    }

    if (v7.u32[0] > 1uLL)
    {
      if (v15 >= *&v6)
      {
        v15 %= *&v6;
      }
    }

    else
    {
      v15 &= v14;
    }

    if (v15 != v8)
    {
      return;
    }

LABEL_24:
    v13 = *v13;
    if (!v13)
    {
      return;
    }
  }

  if (*&v13[2] != v5)
  {
    goto LABEL_24;
  }

  v16 = *v13;
  if (v7.u32[0] > 1uLL)
  {
    if (v5 >= *&v6)
    {
      v5 %= *&v6;
    }
  }

  else
  {
    v5 &= v14;
  }

  v17 = *(*&v11 + 8 * v5);
  do
  {
    v18 = v17;
    v17 = *v17;
  }

  while (v17 != v13);
  if (v18 == &this[541])
  {
    goto LABEL_43;
  }

  v19 = v18[1];
  if (v7.u32[0] > 1uLL)
  {
    if (*&v19 >= *&v6)
    {
      *&v19 %= *&v6;
    }
  }

  else
  {
    *&v19 &= v14;
  }

  if (*&v19 == v5)
  {
LABEL_45:
    if (v16)
    {
      v20 = v16[1];
      goto LABEL_47;
    }
  }

  else
  {
LABEL_43:
    if (!v16)
    {
      goto LABEL_44;
    }

    v20 = v16[1];
    if (v7.u32[0] > 1uLL)
    {
      v21 = v16[1];
      if (v20 >= *&v6)
      {
        v21 = (v20 % *&v6);
      }
    }

    else
    {
      v21 = (v20 & v14);
    }

    if (*&v21 != v5)
    {
LABEL_44:
      *(*&v11 + 8 * v5) = 0;
      v16 = *v13;
      goto LABEL_45;
    }

LABEL_47:
    if (v7.u32[0] > 1uLL)
    {
      if (v20 >= *&v6)
      {
        v20 %= *&v6;
      }
    }

    else
    {
      v20 &= v14;
    }

    if (v20 != v5)
    {
      *(*&this[539] + 8 * v20) = v18;
      v16 = *v13;
    }
  }

  *v18 = v16;
  *v13 = 0;
  --*&this[542];
  operator delete(v13);
}

void rf::ARState::triggerRoomChangeEvent(void *a1, unint64_t a2, uint64_t a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = a2;
  if (std::__hash_table<std::__hash_value_type<unsigned long,std::any>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::any>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::any>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::any>>>::find<unsigned long>(a1 + 534, &v10) && !std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::find<unsigned long>(a1 + 539, v10))
  {
    v5 = std::__hash_table<std::__hash_value_type<unsigned long,std::any>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::any>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::any>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::any>>>::find<unsigned long>(a1 + 534, &v10);
    v6 = v5;
    if (!v5)
    {
      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    }

    if ((*(a3 + 32) & 1) != 0 && (v5 = std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>>>::find<rf::data_flow::RFUUID>(a1 + 41, a3)) != 0)
    {
      v7 = std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>>>::find<rf::data_flow::RFUUID>(a1 + 41, a3);
      if (!v7)
      {
        std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
      }

      v5 = rf::data_flow::Room::Room(v13, (v7 + 6));
      v8 = 1;
    }

    else
    {
      v8 = 0;
      LOBYTE(v13[0]) = 0;
    }

    v14 = v8;
    v9 = rf::realityFusionLogObject(v5);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v12 = v10;
      _os_log_impl(&dword_2617CB000, v9, OS_LOG_TYPE_DEFAULT, "ARState: triggering client room change %lu due to manual trigger", buf, 0xCu);
    }

    rf::data_flow::RoomManagementClient::triggerRoomChange(v6 + 24, v13, a1 + 20);
    if (v14 == 1)
    {
      rf::data_flow::Room::~Room(v13);
    }
  }
}

void sub_261802D04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  if (LOBYTE(STACK[0x3B0]) == 1)
  {
    rf::data_flow::Room::~Room(va);
  }

  _Unwind_Resume(a1);
}

char *rf::ARState::getRoomFromAnchor(rf::ARState *this, const rf::data_flow::RFUUID *a2)
{
  result = std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>>>::find<rf::data_flow::RFUUID>(this + 20, a2);
  if (result)
  {
    v5 = std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>>>::find<rf::data_flow::RFUUID>(this + 20, a2);
    if (!v5)
    {
      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    }

    rf::helpers::getTransformFromAnchor((v5 + 6));
    v8 = v7;
    v6 = this + 344;
    while (1)
    {
      v6 = *v6;
      if (!v6)
      {
        break;
      }

      if ((***(v6 + 18))(*(v6 + 18), &v8))
      {
        return v6 + 48;
      }
    }

    return 0;
  }

  return result;
}

void *rf::ARState::setAnchorRoomAware(rf::ARState *this, unint64_t a2, const rf::data_flow::RFUUID ***a3, unsigned __int8 a4)
{
  v17 = *MEMORY[0x277D85DE8];
  v13 = a2;
  result = std::__hash_table<std::__hash_value_type<unsigned long,std::any>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::any>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::any>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::any>>>::find<unsigned long>(this + 534, &v13);
  if (!result)
  {
    return result;
  }

  v8 = std::__hash_table<std::__hash_value_type<unsigned long,rf::data_flow::provider::SyntheticARData>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,rf::data_flow::provider::SyntheticARData>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,rf::data_flow::provider::SyntheticARData>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,rf::data_flow::provider::SyntheticARData>>>::find<unsigned long>(this + 534, &v13);
  if (!v8)
  {
    goto LABEL_19;
  }

  v9 = v8;
  v10 = std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>>>::find<rf::data_flow::RFUUID>(v8 + 4, a3);
  if (((a4 ^ 1) & 1) == 0 && !v10)
  {
    if (*(a3 + 16))
    {
      v11 = *a3;
    }

    else
    {
      v11 = a3;
    }

    v15 = 0;
    v16 = 0;
    uuid_clear(uu);
    *uu = *v11;
    std::__hash_table<rf::data_flow::RFUUID,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<rf::data_flow::RFUUID>>::__emplace_unique_key_args<rf::data_flow::RFUUID,rf::data_flow::RFUUID const&>(v9 + 4, uu, uu);
    goto LABEL_12;
  }

  if ((a4 & 1) == 0 && v10)
  {
    std::__hash_table<rf::data_flow::RFUUID,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<rf::data_flow::RFUUID>>::__erase_unique<rf::data_flow::RFUUID>(v9 + 4, a3);
LABEL_12:
    *(v9 + 208) = 1;
    *this = 1;
  }

  result = std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>>>::find<rf::data_flow::RFUUID>(this + 20, a3);
  if (result)
  {
    if (*(this + 1280) == 1)
    {
      v12 = std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>>>::find<rf::data_flow::RFUUID>(this + 20, a3);
      if (v12)
      {
        return rf::data_flow::RoomManagementClient::addOrRemoveRoomAwareAnchorWatchListInCurrentRoom((v9 + 3), this + 368, (v12 + 6));
      }

LABEL_19:
      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    }

    return 0;
  }

  return result;
}

rf *rf::ARState::setPinnedAnchorsRoomAware(rf::ARState *this, unint64_t a2, int a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v8 = a2;
  result = std::__hash_table<std::__hash_value_type<unsigned long,std::any>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::any>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::any>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::any>>>::find<unsigned long>(this + 534, &v8);
  if (result)
  {
    result = std::__hash_table<std::__hash_value_type<unsigned long,rf::data_flow::provider::SyntheticARData>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,rf::data_flow::provider::SyntheticARData>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,rf::data_flow::provider::SyntheticARData>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,rf::data_flow::provider::SyntheticARData>>>::find<unsigned long>(this + 534, &v8);
    if (!result)
    {
      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    }

    v6 = result;
    if (*(result + 25) != a3)
    {
      *(result + 25) = a3;
      v7 = rf::realityFusionLogObject(result);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v10 = v8;
        _os_log_impl(&dword_2617CB000, v7, OS_LOG_TYPE_DEFAULT, "ARState: triggering client room change %lu due to setting pinned anchors room aware", buf, 0xCu);
      }

      return rf::data_flow::RoomManagementClient::triggerRoomChange(v6 + 24, this + 368, this + 20);
    }
  }

  return result;
}

void *rf::ARState::getPinnedGroupWithIdentifier(rf::ARState *this, const unsigned __int8 *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    return 0;
  }

  v7 = 0;
  v8 = 0;
  uuid_clear(uu);
  *uu = a2;
  v7 = 1;
  result = std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>>>::find<rf::data_flow::RFUUID>(this + 30, uu);
  if (result)
  {
    v5 = std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>>>::find<rf::data_flow::RFUUID>(this + 30, uu);
    if (!v5)
    {
      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    }

    return v5 + 6;
  }

  return result;
}

uint64_t std::function<void ()(rf::data_flow::PinnedGroup const*)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v2 + 48))(v2, &v4);
}

void rf::anonymous namespace::clearARDataFromState(rf::LockedARStateData &)::$_0::operator()(uint64_t **a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = a2[2];
  while (v2)
  {
    rf::helpers::getBaseAnchorProperties((v2 + 6));
    v5 = v12[17] == 1;

    if (v5)
    {
      v6 = std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>>>::find<rf::data_flow::RFUUID>((**a1 + 2072), (v2 + 2));
      if (v6)
      {
        std::__hash_table<rf::data_flow::RFUUID,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<rf::data_flow::RFUUID>>::erase((**a1 + 2072), v6);
      }

      v7 = std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>>>::find<rf::data_flow::RFUUID>((**a1 + 2112), (v2 + 2));
      if (v7)
      {
        std::__hash_table<rf::data_flow::RFUUID,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<rf::data_flow::RFUUID>>::erase((**a1 + 2112), v7);
      }

      v8 = **a1;
      v9 = *(v2 + 2);
      v11[0] = *(v2 + 1);
      v11[1] = v9;
      std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](v12, (v2 + 6));
      std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>>>::__emplace_unique_key_args<rf::data_flow::RFUUID,std::pair<rf::data_flow::RFUUID const,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>>((v8 + 2192), v11, v11);
      std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v12);
      v10 = *v2;
      std::__hash_table<rf::data_flow::RFUUID,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<rf::data_flow::RFUUID>>::remove(a2, v2, v11);
      std::unique_ptr<std::__hash_node<std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>,void *>>>>::~unique_ptr[abi:ne200100](v11);
      v2 = v10;
    }

    else
    {
      v2 = *v2;
    }
  }
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v2 + 48);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>>>::erase(void *a1, uint64_t *a2)
{
  v2 = *a2;
  std::__hash_table<rf::data_flow::RFUUID,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<rf::data_flow::RFUUID>>::remove(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,void *>>>::operator()[abi:ne200100](&v6, v3);
  }

  return v2;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,void *>>>::operator()[abi:ne200100](uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p[7];
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<rf::data_flow::RFUUID,RESharedPtr<REAsset>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<rf::data_flow::RFUUID,RESharedPtr<REAsset>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      RESharedPtr<REAsset>::~RESharedPtr(v2 + 6);
    }

    operator delete(v2);
  }

  return a1;
}

char **std::unique_ptr<std::__hash_node<std::__hash_value_type<rf::data_flow::RFUUID,std::unique_ptr<RECollisionMesh,rf::RECollisionMeshDeleter>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<rf::data_flow::RFUUID,std::unique_ptr<RECollisionMesh,rf::RECollisionMeshDeleter>>,void *>>>>::~unique_ptr[abi:ne200100](char **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::unique_ptr<RECollisionMesh,rf::RECollisionMeshDeleter>::reset[abi:ne200100](v2 + 6);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t std::unique_ptr<RECollisionMesh,rf::RECollisionMeshDeleter>::reset[abi:ne200100](uint64_t *a1)
{
  result = *a1;
  *a1 = 0;
  if (result)
  {
    return RECollisionMeshDestroy();
  }

  return result;
}

void *std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>>>::__emplace_unique_key_args<rf::data_flow::RFUUID,std::pair<rf::data_flow::RFUUID const,std::shared_ptr<rf::data_flow::consumer::Mesh>>>(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 24);
  if (!v5)
  {
    if (*(a2 + 16))
    {
      v14 = *a2;
    }

    else
    {
      v14 = a2;
    }

    v5 = ((*v14 >> 2) + (*v14 << 6) + v14[1] + 2654435769) ^ *v14;
    *(a2 + 24) = v5;
  }

  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_19;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v5;
    if (v5 >= *&v6)
    {
      v9 = v5 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v5;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_19:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_19;
    }

LABEL_18:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_19;
    }
  }

  if (!rf::data_flow::RFUUID::Equality::operator()(a1, (v11 + 2), a2))
  {
    goto LABEL_18;
  }

  return v11;
}

void std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::PinnedGroup>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::PinnedGroup>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::PinnedGroup>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::PinnedGroup>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>>>::~__hash_table((v2 + 10));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

rf::data_flow::Room *std::__optional_copy_base<rf::data_flow::Room,false>::__optional_copy_base[abi:ne200100](rf::data_flow::Room *this, const rf::data_flow::Room *a2)
{
  *this = 0;
  *(this + 912) = 0;
  if (*(a2 + 912) == 1)
  {
    rf::data_flow::Room::Room(this, a2);
    *(this + 912) = 1;
  }

  return this;
}

void sub_2618037B8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 912) == 1)
  {
    rf::data_flow::Room::~Room(v1);
  }

  _Unwind_Resume(exception_object);
}