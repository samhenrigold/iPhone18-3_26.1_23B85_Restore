void sub_19D75B6F4(_Unwind_Exception *a1, WTF::StringImpl *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, WTF::StringImpl *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, WTF::StringImpl *a28, char a29, uint64_t a30, WTF::StringImpl *a31, WTF::StringImpl *a32, char a33, int a34, __int16 a35, uint64_t a36, uint64_t a37, char a38, CFTypeRef cf, char a40, unsigned int *a41, char a42)
{
  if (a27 == 1 && a22 && atomic_fetch_add_explicit(a22, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a22, a2);
  }

  if (a29 == 1 && a28 && atomic_fetch_add_explicit(a28, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a28, a2);
  }

  if (a33 == 1)
  {
    if (a32 && atomic_fetch_add_explicit(a32, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a32, a2);
    }

    if (a31 && atomic_fetch_add_explicit(a31, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a31, a2);
    }
  }

  if (a38 == 1)
  {
    WTF::Vector<std::pair<WTF::String,WebCore::ContentSecurityPolicyHeaderType>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a35, a2);
  }

  if (a40 == 1 && cf)
  {
    CFRelease(cf);
  }

  if (a42 == 1)
  {
    v43 = a41;
    a41 = 0;
    if (v43)
    {
      if (atomic_fetch_add(v43 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v43 + 2);
        (*(*v43 + 8))(v43);
      }
    }
  }

  if (LOBYTE(STACK[0x518]) == 1)
  {
    WebCore::ServiceWorkerRegistrationData::~ServiceWorkerRegistrationData(&STACK[0x3B8], a2);
  }

  _Unwind_Resume(a1);
}

void IPC::Decoder::decode<WebCore::ServiceWorkerRegistrationData>(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  IPC::ArgumentCoder<WebCore::ServiceWorkerRegistrationData,void>::decode(a1, a2);
  if ((a2[352] & 1) == 0)
  {
    v4 = *a1;
    v5 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v6 = *(a1 + 3);
    if (v6)
    {
      v7 = v5 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (!v7)
    {
      (*(*v6 + 16))(v6, v4);
    }
  }
}

void sub_19D75BC88(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  if (*(v2 + 352) == 1)
  {
    WebCore::ServiceWorkerRegistrationData::~ServiceWorkerRegistrationData(v2, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<JSC::ArrayBuffer,void>::encode(IPC::Encoder *a1, JSC::ArrayBuffer *this)
{
  result = JSC::ArrayBuffer::span(this);
  v5 = v4;
  if (v4)
  {
    if (v4 >> 32)
    {
      __break(0xC471u);
      return result;
    }

    v6 = result;
    v7 = WTF::fastMalloc(0, v4);
    v8 = v7;
    v9 = 0;
    do
    {
      *(v9 + v7) = *(v9 + v6);
      v9 = (v9 + 1);
    }

    while (v5 != v9);
  }

  else
  {
    v8 = 0;
  }

  result = IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::encode<IPC::Encoder>(a1, v8, v5);
  if (v8)
  {

    return WTF::fastFree(v8, v10);
  }

  return result;
}

void sub_19D75BD5C(_Unwind_Exception *exception_object, void *a2)
{
  if (v2)
  {
    WTF::fastFree(v2, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::StreamConnectionEncoder::operator<<<unsigned long long const&>(uint64_t result, void *a2)
{
  v2 = -*result;
  v3 = v2 & 7 | 8;
  if (*(result + 8) >= v3)
  {
    *(*result + (v2 & 7)) = *a2;
    v4 = *(result + 8);
    v5 = v4 >= v3;
    v6 = v4 - v3;
    if (v5)
    {
      *result += v3;
      *(result + 8) = v6;
      return result;
    }

    __break(1u);
  }

  *result = 0;
  *(result + 8) = 0;
  return result;
}

uint64_t IPC::ArgumentCoder<WebCore::Region::Span,void>::decode(uint64_t a1, IPC::Decoder *a2)
{
  result = IPC::Decoder::decode<float>(a2);
  v5 = *(a2 + 1);
  v6 = ((*(a2 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  v7 = *a2;
  v8 = v6 - *a2;
  v9 = v5 >= v8;
  v10 = v5 - v8;
  if (v9 && v10 > 7)
  {
    *(a2 + 2) = v6 + 1;
    if (v6)
    {
      v12 = *v6;
      v13 = 1;
      goto LABEL_8;
    }
  }

  else
  {
    v14 = result;
    IPC::Decoder::markInvalid(a2);
    result = v14;
  }

  v15 = result;
  IPC::Decoder::markInvalid(a2);
  result = v15;
  v13 = 0;
  v12 = 0;
  v7 = *a2;
LABEL_8:
  if (!v7)
  {
LABEL_14:
    *a1 = 0;
    goto LABEL_12;
  }

  if ((result & 0x100000000) == 0 || (v13 & 1) == 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  *a1 = result;
  *(a1 + 8) = v12;
  LOBYTE(v7) = 1;
LABEL_12:
  *(a1 + 16) = v7;
  return result;
}

void WebCore::Region::Shape::~Shape(WebCore::Region::Shape *this, void *a2)
{
  v3 = *(this + 18);
  if ((this + 160) != v3 && v3 != 0)
  {
    *(this + 18) = 0;
    *(this + 38) = 0;
    WTF::fastFree(v3, a2);
  }

  v5 = *this;
  if ((this + 16) != *this && v5 != 0)
  {
    *this = 0;
    *(this + 2) = 0;
    WTF::fastFree(v5, a2);
  }
}

uint64_t std::optional<WTF::Vector<WebCore::Region::Span,16ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::~optional(uint64_t a1, void *a2)
{
  if (*(a1 + 272) == 1)
  {
    v3 = *a1;
    if (a1 + 16 != *a1 && v3 != 0)
    {
      *a1 = 0;
      *(a1 + 8) = 0;
      WTF::fastFree(v3, a2);
    }
  }

  return a1;
}

uint64_t std::optional<WTF::Vector<int,32ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::~optional(uint64_t a1, void *a2)
{
  if (*(a1 + 144) == 1)
  {
    v3 = *a1;
    if (a1 + 16 != *a1 && v3 != 0)
    {
      *a1 = 0;
      *(a1 + 8) = 0;
      WTF::fastFree(v3, a2);
    }
  }

  return a1;
}

WTF *IPC::ArgumentCoder<WebCore::Region,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    WTF::Vector<int,32ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(&v9, *(a2 + 16));
    WTF::Vector<WebCore::Region::Span,16ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(&v13, v3 + 144);
  }

  else
  {
    WebCore::Region::Shape::Shape(&v9, a2);
  }

  IPC::ArgumentCoder<std::span<int const,18446744073709551615ul>,void>::encode<IPC::Encoder>(a1, v9, v11);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, v15);
  v5 = v13;
  if (v15)
  {
    v6 = (v13 + 16 * v15);
    do
    {
      IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *v5);
      IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(v5 + 1));
      v5 = (v5 + 16);
    }

    while (v5 != v6);
    v5 = v13;
  }

  if (&v16 != v5 && v5 != 0)
  {
    v13 = 0;
    v14 = 0;
    WTF::fastFree(v5, v4);
  }

  result = v9;
  if (&v12 != v9)
  {
    if (v9)
    {
      v9 = 0;
      v10 = 0;
      return WTF::fastFree(result, v4);
    }
  }

  return result;
}

void sub_19D75C094(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF *a9, int a10)
{
  if ((v10 + 16) != a9 && a9 != 0)
  {
    WTF::fastFree(a9, a2);
  }

  _Unwind_Resume(exception_object);
}

WTF *IPC::ArgumentCoder<WebCore::Region,void>::encode(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    WTF::Vector<int,32ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(&v7, *(a2 + 16));
    WTF::Vector<WebCore::Region::Span,16ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(&v11, v3 + 144);
  }

  else
  {
    WebCore::Region::Shape::Shape(&v7, a2);
  }

  IPC::ArgumentCoder<std::span<int const,18446744073709551615ul>,void>::encode<IPC::StreamConnectionEncoder>(a1, v7, v9);
  IPC::VectorArgumentCoder<false,WebCore::Region::Span,16ul,WTF::CrashOnOverflow,16ul>::encode<IPC::StreamConnectionEncoder,WTF::Vector<WebCore::Region::Span,16ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, &v11);
  v5 = v11;
  if (&v13 != v11 && v11)
  {
    v11 = 0;
    v12 = 0;
    WTF::fastFree(v5, v4);
  }

  result = v7;
  if (&v10 != v7)
  {
    if (v7)
    {
      v7 = 0;
      v8 = 0;
      return WTF::fastFree(result, v4);
    }
  }

  return result;
}

void sub_19D75C1A0(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF *a9, int a10)
{
  if ((v10 + 16) != a9 && a9 != 0)
  {
    WTF::fastFree(a9, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::optional<WebCore::Region::Shape>::~optional(uint64_t a1, void *a2)
{
  if (*(a1 + 416) == 1)
  {
    v3 = *(a1 + 144);
    if ((a1 + 160) != v3 && v3 != 0)
    {
      *(a1 + 144) = 0;
      *(a1 + 152) = 0;
      WTF::fastFree(v3, a2);
    }

    v5 = *a1;
    if (a1 + 16 != *a1 && v5 != 0)
    {
      *a1 = 0;
      *(a1 + 8) = 0;
      WTF::fastFree(v5, a2);
    }
  }

  return a1;
}

void *IPC::ArgumentCoder<WebCore::ISOWebVTTCue,void>::encode(IPC::Encoder *a1, uint64_t *a2)
{
  IPC::ArgumentCoder<WTF::MediaTime,void>::encode(a1, a2 + 5);
  IPC::ArgumentCoder<WTF::MediaTime,void>::encode(a1, a2 + 7);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2 + 10);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2 + 13);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2 + 12);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2 + 9);

  return IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2 + 11);
}

WTF::StringImpl *IPC::ArgumentCoder<WebCore::ISOWebVTTCue,void>::decode@<X0>(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  IPC::Decoder::decode<WTF::MediaTime>(a1, v18);
  IPC::Decoder::decode<WTF::MediaTime>(a1, v17);
  IPC::Decoder::decode<WTF::AtomString>(a1, &v15);
  IPC::Decoder::decode<WTF::String>(a1, &v13);
  IPC::Decoder::decode<WTF::String>(a1, &v11);
  IPC::Decoder::decode<WTF::String>(a1, &v9);
  result = IPC::Decoder::decode<WTF::String>(a1, &v7);
  if (!*a1)
  {
    goto LABEL_32;
  }

  if ((v18[16] & 1) == 0 || (v17[16] & 1) == 0 || (v16 & 1) == 0 || (v14 & 1) == 0 || (v12 & 1) == 0 || (v10 & 1) == 0 || (v8 & 1) == 0)
  {
    __break(1u);
LABEL_32:
    *a2 = 0;
    a2[112] = 0;
    goto LABEL_10;
  }

  WebCore::ISOWebVTTCue::ISOWebVTTCue();
  WebCore::ISOWebVTTCue::ISOWebVTTCue();
  a2[112] = 1;
  result = MEMORY[0x19EB042B0](&v6);
LABEL_10:
  if (v8 == 1)
  {
    result = v7;
    v7 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v5);
      }
    }
  }

  if (v10 == 1)
  {
    result = v9;
    v9 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v5);
      }
    }
  }

  if (v12 == 1)
  {
    result = v11;
    v11 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v5);
      }
    }
  }

  if (v14 == 1)
  {
    result = v13;
    v13 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v5);
      }
    }
  }

  if (v16 == 1)
  {
    result = v15;
    v15 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v5);
      }
    }
  }

  return result;
}

void *IPC::ArgumentCoder<WebCore::MockWebAuthenticationConfiguration::LocalConfiguration,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  v4 = (a2 + 32);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *a2);
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 1));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 8));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 16));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 24));

  return IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, v4);
}

uint64_t IPC::ArgumentCoder<WebCore::MockWebAuthenticationConfiguration::HidConfiguration,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::VectorArgumentCoder<false,WTF::String,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, a2);
  IPC::VectorArgumentCoder<false,WTF::String,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, a2 + 16);
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 32));
  LOBYTE(v5) = *(a2 + 33);
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  LOBYTE(v5) = *(a2 + 34);
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 35));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 36));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 37));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 38));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 39));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 40));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 41));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 42));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 43));
  v5 = *(a2 + 48);
  IPC::Encoder::encodeObject<long long>(a1, &v5);
  v5 = *(a2 + 56);
  return IPC::Encoder::encodeObject<long long>(a1, &v5);
}

uint64_t std::optional<WebCore::MockWebAuthenticationConfiguration::HidConfiguration>::optional[abi:sn200100]<WebCore::MockWebAuthenticationConfiguration::HidConfiguration,0>(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1, a2);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1 + 16, (a2 + 16));
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *(a1 + 64) = 1;
  return a1;
}

void sub_19D75C7BC(_Unwind_Exception *a1, void *a2)
{
  v5 = *v3;
  if (*v3)
  {
    *(v2 + 16) = 0;
    *(v2 + 24) = 0;
    WTF::fastFree(v5, a2);
  }

  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v2, a2);
  _Unwind_Resume(a1);
}

uint64_t IPC::ArgumentCoder<WebCore::MockWebAuthenticationConfiguration::NfcConfiguration,void>::encode(IPC::Encoder *a1, char *a2)
{
  v4 = a2 + 25;
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *a2);
  IPC::VectorArgumentCoder<false,WTF::String,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, (a2 + 8));
  IPC::Encoder::operator<<<BOOL>(a1, a2 + 24);

  return IPC::Encoder::operator<<<BOOL>(a1, v4);
}

uint64_t std::optional<WebCore::MockWebAuthenticationConfiguration::NfcConfiguration>::optional[abi:sn200100]<WebCore::MockWebAuthenticationConfiguration::NfcConfiguration,0>(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1 + 8, (a2 + 8));
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = 1;
  return a1;
}

void sub_19D75C8C4(_Unwind_Exception *exception_object, void *a2)
{
  v5 = *v3;
  if (*v3)
  {
    *(v2 + 8) = 0;
    *(v2 + 16) = 0;
    WTF::fastFree(v5, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::optional<WebCore::MockWebAuthenticationConfiguration::CcidConfiguration>::optional[abi:sn200100]<WebCore::MockWebAuthenticationConfiguration::CcidConfiguration,0>(uint64_t a1, _DWORD *a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1, a2);
  *(a1 + 16) = 1;
  return a1;
}

void sub_19D75C918(_Unwind_Exception *exception_object, void *a2)
{
  v4 = *v2;
  if (*v2)
  {
    *v2 = 0;
    *(v2 + 8) = 0;
    WTF::fastFree(v4, a2);
  }

  _Unwind_Resume(exception_object);
}

void *IPC::ArgumentCoder<WebCore::MockWebAuthenticationConfiguration,void>::encode(IPC::Encoder *a1, char *a2)
{
  IPC::Encoder::operator<<<BOOL>(a1, a2);
  IPC::ArgumentCoder<std::optional<WebCore::MockWebAuthenticationConfiguration::LocalConfiguration>,void>::encode<IPC::Encoder,std::optional<WebCore::MockWebAuthenticationConfiguration::LocalConfiguration> const&>(a1, (a2 + 8));
  IPC::ArgumentCoder<std::optional<WebCore::MockWebAuthenticationConfiguration::HidConfiguration>,void>::encode<IPC::Encoder,std::optional<WebCore::MockWebAuthenticationConfiguration::HidConfiguration> const&>(a1, (a2 + 56));
  IPC::ArgumentCoder<std::optional<WebCore::MockWebAuthenticationConfiguration::NfcConfiguration>,void>::encode<IPC::Encoder,std::optional<WebCore::MockWebAuthenticationConfiguration::NfcConfiguration> const&>(a1, a2 + 128);

  return IPC::ArgumentCoder<std::optional<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::encode<IPC::Encoder,std::optional<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> const&>(a1, (a2 + 168));
}

void IPC::ArgumentCoder<WebCore::MockWebAuthenticationConfiguration,void>::decode(IPC::Decoder *a1@<X0>, unint64_t a2@<X8>)
{
  v8 = *(a1 + 1);
  v9 = *(a1 + 2);
  v10 = *a1;
  if (v8 <= &v9[-*a1])
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v129 = *(a1 + 3);
    if (v129)
    {
      if (v8)
      {
        (*(*v129 + 16))(v129);
        v8 = *(a1 + 1);
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    *(a1 + 2) = v9 + 1;
    if (v9)
    {
      v11 = *v9;
      if (v11 < 2)
      {
        v5 = 1;
        goto LABEL_5;
      }

      goto LABEL_315;
    }
  }

  *a1 = 0;
  *(a1 + 1) = 0;
  v130 = *(a1 + 3);
  if (v130)
  {
    if (v8)
    {
      (*(*v130 + 16))(v130);
      v11 = 0;
      v10 = *a1;
      v8 = *(a1 + 1);
      goto LABEL_315;
    }
  }

  else
  {
    v8 = 0;
  }

  v10 = 0;
  v11 = 0;
LABEL_315:
  *a1 = 0;
  *(a1 + 1) = 0;
  v131 = *(a1 + 3);
  if (!v131)
  {
    v10 = 0;
    v240 = 0;
    v8 = 0;
    goto LABEL_317;
  }

  if (!v8)
  {
    v10 = 0;
    v240 = 0;
    goto LABEL_317;
  }

  (*(*v131 + 16))(v131, v10);
  v5 = 0;
  v10 = *a1;
  v8 = *(a1 + 1);
LABEL_5:
  if (v11)
  {
    v4 = v5;
  }

  else
  {
    v4 = 0;
  }

  v12 = *(a1 + 2);
  LOBYTE(v240) = v4;
  BYTE4(v240) = v5;
  if (v8 <= &v12[-v10])
  {
LABEL_317:
    *a1 = 0;
    *(a1 + 1) = 0;
    v132 = *(a1 + 3);
    if (v132)
    {
      if (v8)
      {
        (*(*v132 + 16))(v132, v10);
        v10 = *a1;
        v8 = *(a1 + 1);
LABEL_320:
        *a1 = 0;
        *(a1 + 1) = 0;
        v133 = *(a1 + 3);
        if (v133)
        {
          if (v8)
          {
            (*(*v133 + 16))(v133, v10);
            v10 = *a1;
            v8 = *(a1 + 1);
            goto LABEL_263;
          }
        }

        else
        {
          v8 = 0;
        }

        v10 = 0;
        goto LABEL_263;
      }
    }

    else
    {
      v8 = 0;
    }

    v10 = 0;
    goto LABEL_320;
  }

  v13 = v12 + 1;
  *(a1 + 2) = v12 + 1;
  if (!v12)
  {
    goto LABEL_320;
  }

  if (*v12 < 2u)
  {
    if (!*v12)
    {
      v238 = 0;
      v239 = 1;
      goto LABEL_43;
    }

    if (v8 <= &v13[-v10])
    {
      v134 = 0;
      v135 = 0;
      *a1 = 0;
      *(a1 + 1) = 0;
      v136 = *(a1 + 3);
      if (v136)
      {
        (*(*v136 + 16))(v136);
        v135 = *a1;
        v134 = *(a1 + 1);
      }
    }

    else
    {
      v14 = v12 + 2;
      *(a1 + 2) = v14;
      if (v13)
      {
        v15 = *v13;
        if (v15 < 4)
        {
          v16 = v15 | 0x100;
          goto LABEL_16;
        }

LABEL_327:
        *a1 = 0;
        *(a1 + 1) = 0;
        v138 = *(a1 + 3);
        if (!v138 || !v8)
        {
          v16 = 0;
          v139 = 0;
          v10 = 0;
          goto LABEL_329;
        }

        (*(*v138 + 16))(v138, v10);
        v16 = 0;
        v10 = *a1;
        v8 = *(a1 + 1);
        v14 = *(a1 + 2);
LABEL_16:
        if (v8 <= &v14[-v10])
        {
          v139 = 0;
          v196 = *(a1 + 3);
          *a1 = 0;
          *(a1 + 1) = 0;
          if (v8 && v196)
          {
            (*(*v196 + 16))(v196);
            v10 = *a1;
            v139 = *(a1 + 1);
          }

          else
          {
            v10 = 0;
          }
        }

        else
        {
          *(a1 + 2) = v14 + 1;
          if (v14)
          {
            v17 = *v14;
            if (v17 < 2)
            {
              v18 = 1;
LABEL_20:
              IPC::Decoder::decode<WTF::String>(a1, &v241);
              IPC::Decoder::decode<WTF::String>(a1, &v251);
              IPC::Decoder::decode<WTF::String>(a1, &v255);
              IPC::Decoder::decode<WTF::String>(a1, &v272);
              v21 = *a1;
              if (*a1)
              {
                if (v16 <= 0xFF)
                {
                  goto LABEL_231;
                }

                if ((v18 & 1) == 0)
                {
                  goto LABEL_231;
                }

                if ((v242 & 1) == 0)
                {
                  goto LABEL_231;
                }

                v2 = v241;
                v241 = 0;
                if ((v252 & 1) == 0)
                {
                  goto LABEL_231;
                }

                v3 = v251;
                v251 = 0;
                if ((v256 & 1) == 0)
                {
                  goto LABEL_231;
                }

                v4 = v255;
                v255 = 0;
                if ((v273 & 1) == 0)
                {
                  goto LABEL_231;
                }

                v238 = v16 | ((v17 != 0) << 8);
                v5 = v272;
              }

              else
              {
                if (v273)
                {
                  v114 = v272;
                  v272 = 0;
                  if (v114)
                  {
                    if (atomic_fetch_add_explicit(v114, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      WTF::StringImpl::destroy(v114, v19);
                    }
                  }
                }

                v238 = 0;
              }

              if (v256 == 1)
              {
                v22 = v255;
                v255 = 0;
                if (v22)
                {
                  if (atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v22, v19);
                  }
                }
              }

              if (v252 == 1)
              {
                v23 = v251;
                v251 = 0;
                if (v23)
                {
                  if (atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v23, v19);
                  }
                }
              }

              if (v242 == 1)
              {
                v24 = v241;
                v241 = 0;
                if (v24)
                {
                  if (atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v24, v19);
                  }
                }
              }

              v8 = *(a1 + 1);
              if (v21)
              {
                v239 = 0;
                goto LABEL_43;
              }

              v10 = *a1;
              goto LABEL_263;
            }

LABEL_331:
            *a1 = 0;
            *(a1 + 1) = 0;
            v141 = *(a1 + 3);
            if (v141 && v8)
            {
              (*(*v141 + 16))(v141, v10);
            }

            v18 = 0;
            goto LABEL_20;
          }

          v139 = v8;
        }

LABEL_329:
        *a1 = 0;
        *(a1 + 1) = 0;
        v140 = *(a1 + 3);
        if (v140 && v139)
        {
          (*(*v140 + 16))(v140, v10, v139);
          v17 = 0;
          v10 = *a1;
          v8 = *(a1 + 1);
        }

        else
        {
          v8 = 0;
          v10 = 0;
          v17 = 0;
        }

        goto LABEL_331;
      }

      v134 = v8;
      v135 = v10;
    }

    *a1 = 0;
    *(a1 + 1) = 0;
    v137 = *(a1 + 3);
    if (v137 && v134)
    {
      (*(*v137 + 16))(v137, v135, v134);
      v10 = *a1;
      v8 = *(a1 + 1);
    }

    else
    {
      v8 = 0;
      v10 = 0;
    }

    goto LABEL_327;
  }

LABEL_263:
  *a1 = 0;
  *(a1 + 1) = 0;
  v115 = *(a1 + 3);
  if (v115 && v8)
  {
    (*(*v115 + 16))(v115, v10);
  }

  v116 = *a1;
  v117 = *(a1 + 1);
  *a1 = 0;
  *(a1 + 1) = 0;
  v118 = *(a1 + 3);
  if (!v118 || !v117)
  {
    v238 = 0;
    v8 = 0;
    v25 = *a1;
    HIDWORD(v239) = 1;
LABEL_266:
    *a1 = 0;
    *(a1 + 1) = 0;
    v119 = *(a1 + 3);
    if (v119)
    {
      if (v8)
      {
        (*(*v119 + 16))(v119, v25);
        v8 = *(a1 + 1);
      }
    }

    else
    {
      v8 = 0;
    }

    goto LABEL_268;
  }

  (*(*v118 + 16))(v118, v116);
  v238 = 0;
  v8 = *(a1 + 1);
  HIDWORD(v239) = 1;
LABEL_43:
  v25 = *a1;
  v26 = *(a1 + 2);
  if (v8 <= &v26[-*a1])
  {
    goto LABEL_266;
  }

  *(a1 + 2) = v26 + 1;
  if (!v26)
  {
LABEL_268:
    *a1 = 0;
    *(a1 + 1) = 0;
    v120 = *(a1 + 3);
    if (v120)
    {
      if (v8)
      {
        (*(*v120 + 16))(v120);
        v25 = *a1;
        v8 = *(a1 + 1);
        goto LABEL_271;
      }
    }

    else
    {
      v8 = 0;
    }

    v25 = 0;
LABEL_271:
    *a1 = 0;
    *(a1 + 1) = 0;
    v121 = *(a1 + 3);
    if (v121 && v8)
    {
      (*(*v121 + 16))(v121, v25);
    }

LABEL_280:
    LOBYTE(v251) = 0;
    v254 = 0;
    goto LABEL_146;
  }

  v27 = *v26;
  if (v27 >= 2)
  {
    goto LABEL_271;
  }

  if (!v27)
  {
    LOBYTE(v241) = 0;
    v248 = 0;
    std::__optional_move_base<WebCore::MockWebAuthenticationConfiguration::HidConfiguration,false>::__optional_move_base[abi:sn200100](&v251, &v241);
    v254 = 1;
    if (v248 != 1)
    {
      goto LABEL_146;
    }

    goto LABEL_145;
  }

  IPC::Decoder::decode<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, &v272);
  v221 = v3;
  v223 = v2;
  v217 = v5;
  v219 = v4;
  IPC::Decoder::decode<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, &v277);
  v28 = *(a1 + 1);
  v29 = *(a1 + 2);
  v30 = *a1;
  if (v28 <= &v29[-*a1])
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v142 = *(a1 + 3);
    if (v142)
    {
      if (v28)
      {
        (*(*v142 + 16))(v142);
        v28 = *(a1 + 1);
      }
    }

    else
    {
      v28 = 0;
    }

LABEL_341:
    *a1 = 0;
    *(a1 + 1) = 0;
    v143 = *(a1 + 3);
    if (v143)
    {
      if (v28)
      {
        (*(*v143 + 16))(v143);
        v32 = 0;
        v30 = *a1;
        v28 = *(a1 + 1);
        goto LABEL_344;
      }
    }

    else
    {
      v28 = 0;
    }

    v30 = 0;
    v32 = 0;
    goto LABEL_344;
  }

  v31 = v29 + 1;
  *(a1 + 2) = v29 + 1;
  if (!v29)
  {
    goto LABEL_341;
  }

  v32 = *v29;
  if (v32 < 2)
  {
    v33 = 1;
    goto LABEL_51;
  }

LABEL_344:
  *a1 = 0;
  *(a1 + 1) = 0;
  v144 = *(a1 + 3);
  if (v144)
  {
    if (v28)
    {
      (*(*v144 + 16))(v144, v30);
      v30 = *a1;
      v28 = *(a1 + 1);
      goto LABEL_347;
    }
  }

  else
  {
    v28 = 0;
  }

  v30 = 0;
LABEL_347:
  v33 = 0;
  v31 = *(a1 + 2);
LABEL_51:
  v237 = v33;
  if (!v32)
  {
    v33 = 0;
  }

  v236 = v33;
  v216 = a2;
  if (v28 <= &v31[-v30])
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v145 = *(a1 + 3);
    if (v145)
    {
      if (v28)
      {
        (*(*v145 + 16))(v145);
        v30 = *a1;
        v28 = *(a1 + 1);
LABEL_351:
        *a1 = 0;
        *(a1 + 1) = 0;
        v146 = *(a1 + 3);
        if (v146)
        {
          if (v28)
          {
            (*(*v146 + 16))(v146, v30);
            v30 = *a1;
            v28 = *(a1 + 1);
            goto LABEL_354;
          }
        }

        else
        {
          v28 = 0;
        }

        v30 = 0;
        goto LABEL_354;
      }
    }

    else
    {
      v28 = 0;
    }

    v30 = 0;
    goto LABEL_351;
  }

  v34 = v31 + 1;
  *(a1 + 2) = v31 + 1;
  if (!v31)
  {
    goto LABEL_351;
  }

  v35 = *v31;
  if (v35 < 2)
  {
    v234 = v35 != 0;
    v235 = 0;
    goto LABEL_57;
  }

LABEL_354:
  *a1 = 0;
  *(a1 + 1) = 0;
  v147 = *(a1 + 3);
  if (!v147)
  {
    v234 = 0;
    v28 = 0;
LABEL_356:
    v148 = 0;
    v235 = 1;
    goto LABEL_357;
  }

  if (!v28)
  {
    v234 = 0;
    goto LABEL_356;
  }

  (*(*v147 + 16))(v147, v30);
  v28 = 0;
  v213 = *(a1 + 3);
  v214 = *a1;
  v215 = *(a1 + 1);
  v234 = 0;
  v235 = 1;
  *a1 = 0;
  *(a1 + 1) = 0;
  v148 = 0;
  if (!v213 || !v215)
  {
    goto LABEL_357;
  }

  (*(*v213 + 16))(v213, v214, v215);
  v30 = *a1;
  v28 = *(a1 + 1);
  v234 = 0;
  v235 = 1;
  v34 = *(a1 + 2);
LABEL_57:
  if (v28 <= &v34[-v30])
  {
    v148 = 0;
    v197 = *(a1 + 3);
    *a1 = 0;
    *(a1 + 1) = 0;
    if (v28 && v197)
    {
      (*(*v197 + 16))(v197);
      v148 = *a1;
      v28 = *(a1 + 1);
    }

    else
    {
      v28 = 0;
    }

LABEL_357:
    *a1 = 0;
    *(a1 + 1) = 0;
    v149 = *(a1 + 3);
    if (v149)
    {
      if (v28)
      {
        (*(*v149 + 16))(v149, v148);
        v30 = *a1;
        v28 = *(a1 + 1);
        goto LABEL_360;
      }
    }

    else
    {
      v28 = 0;
    }

    v30 = 0;
    goto LABEL_360;
  }

  v36 = v34 + 1;
  *(a1 + 2) = v34 + 1;
  if (!v34)
  {
    v148 = v30;
    goto LABEL_357;
  }

  v37 = *v34;
  if (v37 < 2)
  {
    v232 = v37 != 0;
    v233 = 0;
    goto LABEL_61;
  }

LABEL_360:
  *a1 = 0;
  *(a1 + 1) = 0;
  v150 = *(a1 + 3);
  if (!v150 || !v28)
  {
    v151 = 0;
    v30 = 0;
    v232 = 0;
    v233 = 1;
LABEL_362:
    *a1 = 0;
    *(a1 + 1) = 0;
    v152 = *(a1 + 3);
    if (v152 && v151)
    {
      (*(*v152 + 16))(v152, v30, v151);
      v30 = *a1;
      v28 = *(a1 + 1);
    }

    else
    {
      v28 = 0;
      v30 = 0;
    }

    goto LABEL_364;
  }

  (*(*v150 + 16))(v150, v30);
  v151 = 0;
  v210 = *(a1 + 3);
  v211 = *a1;
  v212 = *(a1 + 1);
  v232 = 0;
  v233 = 1;
  *a1 = 0;
  *(a1 + 1) = 0;
  if (!v210 || !v212)
  {
LABEL_475:
    v30 = 0;
    goto LABEL_362;
  }

  (*(*v210 + 16))(v210, v211);
  v30 = *a1;
  v28 = *(a1 + 1);
  v232 = 0;
  v233 = 1;
  v36 = *(a1 + 2);
LABEL_61:
  if (v28 <= &v36[-v30])
  {
    v151 = 0;
    v198 = *(a1 + 3);
    *a1 = 0;
    *(a1 + 1) = 0;
    if (v28 && v198)
    {
      (*(*v198 + 16))(v198);
      v30 = *a1;
      v151 = *(a1 + 1);
      goto LABEL_362;
    }

    goto LABEL_475;
  }

  v38 = v36 + 1;
  *(a1 + 2) = v36 + 1;
  if (!v36)
  {
    v151 = v28;
    goto LABEL_362;
  }

  v39 = *v36;
  if (v39 < 7)
  {
    v231 = v39 | 0x100;
    goto LABEL_65;
  }

LABEL_364:
  *a1 = 0;
  *(a1 + 1) = 0;
  v153 = *(a1 + 3);
  if (!v153)
  {
    v154 = 0;
    v28 = 0;
LABEL_366:
    v30 = 0;
    goto LABEL_367;
  }

  if (!v28)
  {
    v154 = 0;
    goto LABEL_366;
  }

  (*(*v153 + 16))(v153, v30);
  v231 = 0;
  v30 = *a1;
  v28 = *(a1 + 1);
  v38 = *(a1 + 2);
LABEL_65:
  if (v28 <= &v38[-v30])
  {
    v208 = *(a1 + 3);
    *a1 = 0;
    *(a1 + 1) = 0;
    if (v28)
    {
      if (v208)
      {
        (*(*v208 + 16))(v208);
        v30 = *a1;
        v28 = *(a1 + 1);
        goto LABEL_510;
      }

      v28 = 0;
    }

    v30 = 0;
    goto LABEL_510;
  }

  v40 = v38 + 1;
  *(a1 + 2) = v38 + 1;
  if (!v38)
  {
LABEL_510:
    v154 = v231;
LABEL_367:
    *a1 = 0;
    *(a1 + 1) = 0;
    v155 = *(a1 + 3);
    if (v155)
    {
      v178 = v154;
      if (v28)
      {
        (*(*v155 + 16))(v155, v30);
        v41 = 0;
        v30 = *a1;
        v28 = *(a1 + 1);
      }

      else
      {
        v30 = 0;
        v41 = 0;
      }

      v154 = v178;
    }

    else
    {
      v28 = 0;
      v30 = 0;
      v41 = 0;
    }

    goto LABEL_369;
  }

  v41 = *v38;
  if (v41 < 2)
  {
    v42 = 1;
    goto LABEL_69;
  }

  v154 = v231;
LABEL_369:
  v231 = v154;
  *a1 = 0;
  *(a1 + 1) = 0;
  v156 = *(a1 + 3);
  if (!v156 || !v28)
  {
    v230 = 0;
    v157 = 0;
    v30 = 0;
LABEL_371:
    *a1 = 0;
    *(a1 + 1) = 0;
    v158 = *(a1 + 3);
    if (v158 && v157)
    {
      (*(*v158 + 16))(v158, v30, v157);
      v45 = 0;
      v30 = *a1;
      v28 = *(a1 + 1);
    }

    else
    {
      v28 = 0;
      v30 = 0;
      v45 = 0;
    }

    goto LABEL_373;
  }

  (*(*v156 + 16))(v156, v30);
  v42 = 0;
  v30 = *a1;
  v28 = *(a1 + 1);
  v40 = *(a1 + 2);
LABEL_69:
  if (v41)
  {
    v43 = v42;
  }

  else
  {
    v43 = 0;
  }

  LOBYTE(v230) = v43;
  if (v28 <= &v40[-v30])
  {
    BYTE4(v230) = v42;
    v157 = 0;
    v207 = *(a1 + 3);
    *a1 = 0;
    *(a1 + 1) = 0;
    if (v28 && v207)
    {
      (*(*v207 + 16))(v207);
      v30 = *a1;
      v157 = *(a1 + 1);
    }

    else
    {
      v30 = 0;
    }

    goto LABEL_371;
  }

  v44 = v40 + 1;
  *(a1 + 2) = v40 + 1;
  if (!v40)
  {
    BYTE4(v230) = v42;
    v157 = v28;
    goto LABEL_371;
  }

  v45 = *v40;
  if (v45 < 2)
  {
    v46 = 1;
    goto LABEL_76;
  }

  BYTE4(v230) = v42;
LABEL_373:
  *a1 = 0;
  *(a1 + 1) = 0;
  v159 = *(a1 + 3);
  if (!v159 || !v28)
  {
    v229 = 0;
    v160 = 0;
    v30 = 0;
LABEL_375:
    *a1 = 0;
    *(a1 + 1) = 0;
    v161 = *(a1 + 3);
    if (v161 && v160)
    {
      (*(*v161 + 16))(v161, v30, v160);
      v48 = 0;
      v30 = *a1;
      v28 = *(a1 + 1);
    }

    else
    {
      v28 = 0;
      v30 = 0;
      v48 = 0;
    }

    goto LABEL_377;
  }

  (*(*v159 + 16))(v159, v30);
  v46 = 0;
  v30 = *a1;
  v28 = *(a1 + 1);
  v44 = *(a1 + 2);
  v42 = BYTE4(v230);
LABEL_76:
  BYTE4(v229) = v46;
  if (!v45)
  {
    v46 = 0;
  }

  LOBYTE(v229) = v46;
  if (v28 <= &v44[-v30])
  {
    BYTE4(v230) = v42;
    v160 = 0;
    v206 = *(a1 + 3);
    *a1 = 0;
    *(a1 + 1) = 0;
    if (v28 && v206)
    {
      (*(*v206 + 16))(v206);
      v30 = *a1;
      v160 = *(a1 + 1);
    }

    else
    {
      v30 = 0;
    }

    goto LABEL_375;
  }

  v47 = v44 + 1;
  *(a1 + 2) = v44 + 1;
  if (!v44)
  {
    BYTE4(v230) = v42;
    v160 = v28;
    goto LABEL_375;
  }

  v48 = *v44;
  if (v48 < 2)
  {
    v49 = 1;
    goto LABEL_82;
  }

  BYTE4(v230) = v42;
LABEL_377:
  *a1 = 0;
  *(a1 + 1) = 0;
  v162 = *(a1 + 3);
  if (!v162 || !v28)
  {
    v227 = 0;
    v49 = 0;
    v163 = 0;
    v30 = 0;
    goto LABEL_379;
  }

  (*(*v162 + 16))(v162, v30);
  v49 = 0;
  v30 = *a1;
  v28 = *(a1 + 1);
  v47 = *(a1 + 2);
  v42 = BYTE4(v230);
LABEL_82:
  if (v48)
  {
    v50 = v49;
  }

  else
  {
    v50 = 0;
  }

  v227 = v50;
  if (v28 <= &v47[-v30])
  {
    v204 = v49;
    BYTE4(v230) = v42;
    v163 = 0;
    v205 = *(a1 + 3);
    *a1 = 0;
    *(a1 + 1) = 0;
    if (v28 && v205)
    {
      (*(*v205 + 16))(v205);
      v30 = *a1;
      v163 = *(a1 + 1);
    }

    else
    {
      v30 = 0;
    }

    v49 = v204;
    goto LABEL_379;
  }

  v51 = v47 + 1;
  *(a1 + 2) = v47 + 1;
  if (!v47)
  {
    BYTE4(v230) = v42;
    v163 = v28;
LABEL_379:
    *a1 = 0;
    *(a1 + 1) = 0;
    v164 = *(a1 + 3);
    if (v164)
    {
      v180 = v49;
      if (v163)
      {
        (*(*v164 + 16))(v164, v30, v163);
        v52 = 0;
        v30 = *a1;
        v28 = *(a1 + 1);
      }

      else
      {
        v28 = 0;
        v30 = 0;
        v52 = 0;
      }

      v49 = v180;
    }

    else
    {
      v28 = 0;
      v30 = 0;
      v52 = 0;
    }

    goto LABEL_381;
  }

  v52 = *v47;
  if (v52 < 2)
  {
    v53 = 1;
    goto LABEL_89;
  }

  BYTE4(v230) = v42;
LABEL_381:
  *a1 = 0;
  *(a1 + 1) = 0;
  v165 = *(a1 + 3);
  if (!v165)
  {
    v226 = 0;
    v166 = 0;
    v30 = 0;
LABEL_383:
    v228 = v49;
    *a1 = 0;
    *(a1 + 1) = 0;
    v167 = *(a1 + 3);
    if (v167 && v166)
    {
      (*(*v167 + 16))(v167, v30, v166);
      v55 = 0;
      v30 = *a1;
      v28 = *(a1 + 1);
    }

    else
    {
      v28 = 0;
      v30 = 0;
      v55 = 0;
    }

    goto LABEL_385;
  }

  v179 = v49;
  if (!v28)
  {
    v226 = 0;
    v166 = 0;
    v30 = 0;
    goto LABEL_383;
  }

  (*(*v165 + 16))(v165, v30);
  v53 = 0;
  v30 = *a1;
  v28 = *(a1 + 1);
  v51 = *(a1 + 2);
  v42 = BYTE4(v230);
  v49 = v179;
LABEL_89:
  BYTE4(v226) = v53;
  if (!v52)
  {
    v53 = 0;
  }

  LOBYTE(v226) = v53;
  if (v28 <= &v51[-v30])
  {
    v202 = v49;
    BYTE4(v230) = v42;
    v166 = 0;
    v203 = *(a1 + 3);
    *a1 = 0;
    *(a1 + 1) = 0;
    if (v28 && v203)
    {
      (*(*v203 + 16))(v203);
      v30 = *a1;
      v166 = *(a1 + 1);
    }

    else
    {
      v30 = 0;
    }

    v49 = v202;
    goto LABEL_383;
  }

  v228 = v49;
  v54 = v51 + 1;
  *(a1 + 2) = v51 + 1;
  if (!v51)
  {
    BYTE4(v230) = v42;
    v166 = v28;
    goto LABEL_383;
  }

  v55 = *v51;
  if (v55 < 2)
  {
    v56 = 1;
    goto LABEL_95;
  }

  BYTE4(v230) = v42;
LABEL_385:
  *a1 = 0;
  *(a1 + 1) = 0;
  v168 = *(a1 + 3);
  if (!v168 || !v28)
  {
    v225 = 0;
    v56 = 0;
    v169 = 0;
    v30 = 0;
LABEL_387:
    *a1 = 0;
    *(a1 + 1) = 0;
    v170 = *(a1 + 3);
    if (v170 && v169)
    {
      (*(*v170 + 16))(v170, v30, v169);
      v59 = 0;
      v30 = *a1;
      v28 = *(a1 + 1);
    }

    else
    {
      v28 = 0;
      v30 = 0;
      v59 = 0;
    }

    goto LABEL_389;
  }

  (*(*v168 + 16))(v168, v30);
  v56 = 0;
  v30 = *a1;
  v28 = *(a1 + 1);
  v54 = *(a1 + 2);
  v42 = BYTE4(v230);
LABEL_95:
  if (v55)
  {
    v57 = v56;
  }

  else
  {
    v57 = 0;
  }

  v225 = v57;
  if (v28 <= &v54[-v30])
  {
    BYTE4(v230) = v42;
    v169 = 0;
    v201 = *(a1 + 3);
    *a1 = 0;
    *(a1 + 1) = 0;
    if (v28 && v201)
    {
      (*(*v201 + 16))(v201);
      v30 = *a1;
      v169 = *(a1 + 1);
    }

    else
    {
      v30 = 0;
    }

    goto LABEL_387;
  }

  v58 = v54 + 1;
  *(a1 + 2) = v54 + 1;
  if (!v54)
  {
    BYTE4(v230) = v42;
    v169 = v28;
    goto LABEL_387;
  }

  v59 = *v54;
  if (v59 < 2)
  {
    v60 = 1;
    goto LABEL_102;
  }

  BYTE4(v230) = v42;
LABEL_389:
  *a1 = 0;
  *(a1 + 1) = 0;
  v171 = *(a1 + 3);
  if (!v171 || !v28)
  {
    v5 = 0;
    LOBYTE(v60) = 0;
    v172 = 0;
    v30 = 0;
LABEL_391:
    *a1 = 0;
    *(a1 + 1) = 0;
    v173 = *(a1 + 3);
    if (v173 && v172)
    {
      (*(*v173 + 16))(v173, v30, v172);
      v62 = 0;
      v30 = *a1;
      v28 = *(a1 + 1);
    }

    else
    {
      v28 = 0;
      v30 = 0;
      v62 = 0;
    }

    goto LABEL_393;
  }

  (*(*v171 + 16))(v171, v30);
  v60 = 0;
  v30 = *a1;
  v28 = *(a1 + 1);
  v58 = *(a1 + 2);
  v42 = BYTE4(v230);
LABEL_102:
  if (v59)
  {
    v5 = v60;
  }

  else
  {
    v5 = 0;
  }

  if (v28 <= &v58[-v30])
  {
    BYTE4(v230) = v42;
    v172 = 0;
    v200 = *(a1 + 3);
    *a1 = 0;
    *(a1 + 1) = 0;
    if (v28 && v200)
    {
      (*(*v200 + 16))(v200);
      v30 = *a1;
      v172 = *(a1 + 1);
    }

    else
    {
      v30 = 0;
    }

    goto LABEL_391;
  }

  v61 = v58 + 1;
  *(a1 + 2) = v58 + 1;
  if (!v58)
  {
    BYTE4(v230) = v42;
    v172 = v28;
    goto LABEL_391;
  }

  v62 = *v58;
  if (v62 < 2)
  {
    v4 = 1;
    goto LABEL_109;
  }

  BYTE4(v230) = v42;
LABEL_393:
  *a1 = 0;
  *(a1 + 1) = 0;
  v174 = *(a1 + 3);
  if (!v174 || !v28)
  {
    a2 = 0;
    v4 = 0;
    v175 = 0;
    v30 = 0;
LABEL_395:
    *a1 = 0;
    *(a1 + 1) = 0;
    v176 = *(a1 + 3);
    if (v176 && v175)
    {
      (*(*v176 + 16))(v176, v30, v175);
      v63 = 0;
      v30 = *a1;
      v28 = *(a1 + 1);
    }

    else
    {
      v28 = 0;
      v30 = 0;
      v63 = 0;
    }

    goto LABEL_397;
  }

  (*(*v174 + 16))(v174, v30);
  v4 = 0;
  v30 = *a1;
  v28 = *(a1 + 1);
  v61 = *(a1 + 2);
  v42 = BYTE4(v230);
LABEL_109:
  if (v62)
  {
    a2 = v4;
  }

  else
  {
    a2 = 0;
  }

  BYTE4(v230) = v42;
  if (v28 <= &v61[-v30])
  {
    v175 = 0;
    v199 = *(a1 + 3);
    *a1 = 0;
    *(a1 + 1) = 0;
    if (v28 && v199)
    {
      (*(*v199 + 16))(v199);
      v30 = *a1;
      v175 = *(a1 + 1);
    }

    else
    {
      v30 = 0;
    }

    goto LABEL_395;
  }

  *(a1 + 2) = v61 + 1;
  if (!v61)
  {
    v175 = v28;
    goto LABEL_395;
  }

  v63 = *v61;
  if (v63 < 2)
  {
    v64 = 1;
    goto LABEL_116;
  }

LABEL_397:
  *a1 = 0;
  *(a1 + 1) = 0;
  v177 = *(a1 + 3);
  if (v177 && v28)
  {
    (*(*v177 + 16))(v177, v30);
  }

  v64 = 0;
LABEL_116:
  if (v63)
  {
    v65 = v64;
  }

  else
  {
    v65 = 0;
  }

  v2 = IPC::Decoder::decode<long long>(a1);
  v3 = v66;
  v67 = IPC::Decoder::decode<long long>(a1);
  if (*a1)
  {
    if ((v274 & 1) == 0)
    {
      goto LABEL_231;
    }

    v255 = v272;
    v69 = v273;
    v272 = 0;
    v273 = 0;
    v256 = v69;
    if ((v279 & 1) == 0)
    {
      goto LABEL_231;
    }

    v257[0] = v277;
    v70 = v278;
    v277 = 0;
    v278 = 0;
    v257[1] = v70;
    if ((v237 & 1) == 0)
    {
      goto LABEL_231;
    }

    v258 = v236;
    if (v235)
    {
      goto LABEL_231;
    }

    v259 = v234;
    if (v233)
    {
      goto LABEL_231;
    }

    v260 = v232;
    if (v231 <= 0xFF)
    {
      goto LABEL_231;
    }

    v261 = v231;
    if ((v230 & 0x100000000) == 0)
    {
      goto LABEL_231;
    }

    v262 = v230;
    if ((v229 & 0x100000000) == 0)
    {
      goto LABEL_231;
    }

    v263 = v229;
    if ((v228 & 1) == 0)
    {
      goto LABEL_231;
    }

    v264 = v227;
    if ((v226 & 0x100000000) == 0)
    {
      goto LABEL_231;
    }

    v265 = v226;
    if ((v56 & 1) == 0)
    {
      goto LABEL_231;
    }

    v266 = v225;
    if ((v60 & 1) == 0)
    {
      goto LABEL_231;
    }

    v267 = v5;
    if ((v4 & 1) == 0)
    {
      goto LABEL_231;
    }

    v268 = a2;
    if ((v64 & 1) == 0)
    {
      goto LABEL_231;
    }

    v269 = v65;
    if ((v3 & 1) == 0)
    {
      goto LABEL_231;
    }

    v270 = v2;
    if ((v68 & 1) == 0)
    {
      goto LABEL_231;
    }

    v271 = v67;
    std::optional<WebCore::MockWebAuthenticationConfiguration::HidConfiguration>::optional[abi:sn200100]<WebCore::MockWebAuthenticationConfiguration::HidConfiguration,0>(&v241, &v255);
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v257, v71);
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v255, v72);
  }

  else
  {
    LOBYTE(v241) = 0;
    v248 = 0;
  }

  v3 = v221;
  v2 = v223;
  v5 = v217;
  v4 = v219;
  a2 = v216;
  if (v279 == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v277, v68);
  }

  if (v274 == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v272, v68);
  }

  if ((v248 & 1) == 0)
  {
    v126 = *a1;
    v127 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v128 = *(a1 + 3);
    if (!v128)
    {
      goto LABEL_280;
    }

    if (!v127)
    {
      goto LABEL_280;
    }

    (*(*v128 + 16))(v128, v126);
    v3 = v221;
    v2 = v223;
    v5 = v217;
    v4 = v219;
    if ((v248 & 1) == 0)
    {
      goto LABEL_280;
    }
  }

  std::optional<WebCore::MockWebAuthenticationConfiguration::HidConfiguration>::optional[abi:sn200100]<WebCore::MockWebAuthenticationConfiguration::HidConfiguration,0>(&v251, &v241);
  v254 = 1;
  if (v248)
  {
LABEL_145:
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v243, v73);
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v241, v74);
  }

LABEL_146:
  v20 = *(a1 + 1);
  if ((v254 & 1) == 0)
  {
    goto LABEL_232;
  }

  while (1)
  {
    v75 = *a1;
    v76 = *(a1 + 2);
    if (v20 <= &v76[-*a1])
    {
      goto LABEL_234;
    }

    v77 = v76 + 1;
    *(a1 + 2) = v76 + 1;
    if (!v76)
    {
      goto LABEL_236;
    }

    if (*v76 >= 2u)
    {
      goto LABEL_239;
    }

    if (!*v76)
    {
      LOBYTE(v241) = 0;
      LOBYTE(v244) = 0;
      std::__optional_move_base<WebCore::MockWebAuthenticationConfiguration::NfcConfiguration,false>::__optional_move_base[abi:sn200100](&v255, &v241);
      v266 = 1;
      if (v244 != 1)
      {
        goto LABEL_182;
      }

LABEL_181:
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v242, v91);
      goto LABEL_182;
    }

    if (v20 <= &v77[-v75])
    {
      v181 = v5;
      v182 = v4;
      v183 = v3;
      v184 = v2;
      v185 = 0;
      v186 = 0;
      *a1 = 0;
      *(a1 + 1) = 0;
      v187 = *(a1 + 3);
      if (v187)
      {
        (*(*v187 + 16))(v187);
        v186 = *a1;
        v185 = *(a1 + 1);
      }

      goto LABEL_437;
    }

    *(a1 + 2) = v76 + 2;
    if (v76 == -1)
    {
      v181 = v5;
      v182 = v4;
      v183 = v3;
      v184 = v2;
      v185 = v20;
      v186 = v75;
LABEL_437:
      *a1 = 0;
      *(a1 + 1) = 0;
      v188 = *(a1 + 3);
      if (v188 && v185)
      {
        v2 = v184;
        v3 = v183;
        v4 = v182;
        v5 = v181;
        (*(*v188 + 16))(v188, v186, v185);
        v75 = *a1;
        v20 = *(a1 + 1);
      }

      else
      {
        v20 = 0;
        v75 = 0;
        v2 = v184;
        v3 = v183;
        v4 = v182;
        v5 = v181;
      }

      goto LABEL_439;
    }

    v78 = *v77;
    if (v78 < 5)
    {
      v79 = v78 | 0x100;
      goto LABEL_155;
    }

LABEL_439:
    *a1 = 0;
    *(a1 + 1) = 0;
    v189 = *(a1 + 3);
    if (v189 && v20)
    {
      (*(*v189 + 16))(v189, v75);
    }

    v79 = 0;
LABEL_155:
    IPC::Decoder::decode<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, &v277);
    v20 = *(a1 + 1);
    v80 = *(a1 + 2);
    v81 = *a1;
    if (v20 <= &v80[-*a1])
    {
      v218 = v5;
      v220 = v4;
      v222 = v3;
      v224 = v2;
      *a1 = 0;
      *(a1 + 1) = 0;
      v190 = *(a1 + 3);
      if (v190)
      {
        if (v20)
        {
          (*(*v190 + 16))(v190);
          v81 = *a1;
          v20 = *(a1 + 1);
          goto LABEL_446;
        }
      }

      else
      {
        v20 = 0;
      }

      v81 = 0;
    }

    else
    {
      v82 = v80 + 1;
      *(a1 + 2) = v80 + 1;
      if (v80)
      {
        v83 = *v80;
        if (v83 < 2)
        {
          v84 = 1;
          goto LABEL_159;
        }

        v218 = v5;
        v220 = v4;
        v222 = v3;
        v224 = v2;
        goto LABEL_457;
      }

      v218 = v5;
      v220 = v4;
      v222 = v3;
      v224 = v2;
    }

LABEL_446:
    *a1 = 0;
    *(a1 + 1) = 0;
    v191 = *(a1 + 3);
    if (!v191)
    {
      v20 = 0;
LABEL_448:
      v81 = 0;
      v83 = 0;
      goto LABEL_457;
    }

    if (!v20)
    {
      goto LABEL_448;
    }

    (*(*v191 + 16))(v191, v81);
    v83 = 0;
    v81 = *a1;
    v20 = *(a1 + 1);
LABEL_457:
    *a1 = 0;
    *(a1 + 1) = 0;
    v192 = *(a1 + 3);
    if (!v192 || !v20)
    {
      v85 = 0;
      v84 = 0;
      v193 = 0;
      v81 = 0;
LABEL_459:
      *a1 = 0;
      *(a1 + 1) = 0;
      v194 = *(a1 + 3);
      if (v194 && v193)
      {
        (*(*v194 + 16))(v194, v81, v193);
        v86 = 0;
        v81 = *a1;
        v20 = *(a1 + 1);
      }

      else
      {
        v20 = 0;
        v81 = 0;
        v86 = 0;
      }

      goto LABEL_462;
    }

    (*(*v192 + 16))(v192, v81);
    v84 = 0;
    v81 = *a1;
    v20 = *(a1 + 1);
    v82 = *(a1 + 2);
    v3 = v222;
    v2 = v224;
    v5 = v218;
    v4 = v220;
LABEL_159:
    if (v83)
    {
      v85 = v84;
    }

    else
    {
      v85 = 0;
    }

    if (v20 <= v82 - v81)
    {
      v218 = v5;
      v220 = v4;
      v222 = v3;
      v224 = v2;
      v193 = 0;
      v209 = *(a1 + 3);
      *a1 = 0;
      *(a1 + 1) = 0;
      if (v20 && v209)
      {
        (*(*v209 + 16))(v209);
        v81 = *a1;
        v193 = *(a1 + 1);
      }

      else
      {
        v81 = 0;
      }

      goto LABEL_459;
    }

    *(a1 + 2) = v82 + 1;
    if (!v82)
    {
      v218 = v5;
      v220 = v4;
      v222 = v3;
      v224 = v2;
      v193 = v20;
      goto LABEL_459;
    }

    v86 = *v82;
    if (v86 >= 2)
    {
      v218 = v5;
      v220 = v4;
      v222 = v3;
      v224 = v2;
LABEL_462:
      *a1 = 0;
      *(a1 + 1) = 0;
      v195 = *(a1 + 3);
      v3 = v222;
      v2 = v224;
      v5 = v218;
      v4 = v220;
      if (!v195 || !v20)
      {
        goto LABEL_463;
      }

      (*(*v195 + 16))(v195, v81);
      v87 = 0;
      v81 = *a1;
      v3 = v222;
      v2 = v224;
      v5 = v218;
      v4 = v220;
      goto LABEL_166;
    }

    v87 = 1;
LABEL_166:
    if (v86)
    {
      v88 = v87;
    }

    else
    {
      v88 = 0;
    }

    if (!v81)
    {
LABEL_463:
      LOBYTE(v241) = 0;
      LOBYTE(v244) = 0;
      goto LABEL_175;
    }

    if (v79 <= 0xFF)
    {
      goto LABEL_231;
    }

    LOBYTE(v272) = v79;
    if ((v279 & 1) == 0)
    {
      goto LABEL_231;
    }

    v273 = v277;
    v89 = v278;
    v277 = 0;
    v278 = 0;
    v274 = v89;
    if ((v84 & 1) == 0)
    {
      goto LABEL_231;
    }

    v275 = v85;
    if ((v87 & 1) == 0)
    {
      goto LABEL_231;
    }

    v276 = v88;
    std::optional<WebCore::MockWebAuthenticationConfiguration::NfcConfiguration>::optional[abi:sn200100]<WebCore::MockWebAuthenticationConfiguration::NfcConfiguration,0>(&v241, &v272);
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v273, v90);
LABEL_175:
    if (v279 == 1)
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v277, v81);
    }

    if ((v244 & 1) == 0)
    {
      v123 = *a1;
      v124 = *(a1 + 1);
      *a1 = 0;
      *(a1 + 1) = 0;
      v125 = *(a1 + 3);
      if (!v125)
      {
        goto LABEL_278;
      }

      if (!v124)
      {
        goto LABEL_278;
      }

      (*(*v125 + 16))(v125, v123);
      if ((v244 & 1) == 0)
      {
        goto LABEL_278;
      }
    }

    std::optional<WebCore::MockWebAuthenticationConfiguration::NfcConfiguration>::optional[abi:sn200100]<WebCore::MockWebAuthenticationConfiguration::NfcConfiguration,0>(&v255, &v241);
    v266 = 1;
    if (v244)
    {
      goto LABEL_181;
    }

LABEL_182:
    v20 = *(a1 + 1);
    if (v266)
    {
      goto LABEL_183;
    }

    v108 = *a1;
    *a1 = 0;
    *(a1 + 1) = 0;
    v109 = *(a1 + 3);
    if (!v109 || !v20)
    {
      v20 = 0;
      v92 = *a1;
LABEL_244:
      *a1 = 0;
      *(a1 + 1) = 0;
      v110 = *(a1 + 3);
      if (v110)
      {
        if (v20)
        {
          (*(*v110 + 16))(v110, v92);
          v20 = *(a1 + 1);
        }
      }

      else
      {
        v20 = 0;
      }

LABEL_246:
      *a1 = 0;
      *(a1 + 1) = 0;
      v111 = *(a1 + 3);
      if (!v111)
      {
        v20 = 0;
        goto LABEL_248;
      }

      if (v20)
      {
        (*(*v111 + 16))(v111);
        v92 = *a1;
        v20 = *(a1 + 1);
      }

      else
      {
LABEL_248:
        v92 = 0;
      }

LABEL_249:
      *a1 = 0;
      *(a1 + 1) = 0;
      v112 = *(a1 + 3);
      if (v112 && v20)
      {
        (*(*v112 + 16))(v112, v92);
      }

LABEL_276:
      LOBYTE(v272) = 0;
      v275 = 0;
      goto LABEL_198;
    }

    (*(*v109 + 16))(v109, v108);
    v20 = *(a1 + 1);
LABEL_183:
    v92 = *a1;
    v93 = *(a1 + 2);
    if (v20 <= &v93[-*a1])
    {
      goto LABEL_244;
    }

    *(a1 + 2) = v93 + 1;
    if (!v93)
    {
      goto LABEL_246;
    }

    v94 = *v93;
    if (v94 >= 2)
    {
      goto LABEL_249;
    }

    if (v94)
    {
      IPC::Decoder::decode<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, &v241);
      if (*a1)
      {
        if ((v243[0] & 1) == 0)
        {
          goto LABEL_231;
        }

        v280[0] = v241;
        v96 = v242;
        v241 = 0;
        v242 = 0;
        v280[1] = v96;
        std::optional<WebCore::MockWebAuthenticationConfiguration::CcidConfiguration>::optional[abi:sn200100]<WebCore::MockWebAuthenticationConfiguration::CcidConfiguration,0>(&v277, v280);
        WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v280, v97);
      }

      else
      {
        LOBYTE(v277) = 0;
        v279 = 0;
      }

      if (LOBYTE(v243[0]) == 1)
      {
        WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v241, v95);
      }

      if ((v279 & 1) == 0)
      {
        v92 = *a1;
        v20 = *(a1 + 1);
        *a1 = 0;
        *(a1 + 1) = 0;
        v122 = *(a1 + 3);
        if (!v122)
        {
          goto LABEL_276;
        }

        if (!v20)
        {
          goto LABEL_276;
        }

        (*(*v122 + 16))(v122, v92);
        if ((v279 & 1) == 0)
        {
          goto LABEL_276;
        }
      }

      std::optional<WebCore::MockWebAuthenticationConfiguration::CcidConfiguration>::optional[abi:sn200100]<WebCore::MockWebAuthenticationConfiguration::CcidConfiguration,0>(&v272, &v277);
      v275 = 1;
      if (v279)
      {
        v98 = &v277;
LABEL_197:
        WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v98, v92);
      }
    }

    else
    {
      LOBYTE(v241) = 0;
      LOBYTE(v243[0]) = 0;
      std::__optional_move_base<WebCore::MockWebAuthenticationConfiguration::CcidConfiguration,false>::__optional_move_base[abi:sn200100](&v272, &v241);
      v275 = 1;
      if (LOBYTE(v243[0]) == 1)
      {
        v98 = &v241;
        goto LABEL_197;
      }
    }

LABEL_198:
    if ((v275 & 1) == 0)
    {
      v92 = *a1;
      v20 = *(a1 + 1);
      *a1 = 0;
      *(a1 + 1) = 0;
      v113 = *(a1 + 3);
      if (v113)
      {
        if (v20)
        {
          (*(*v113 + 16))(v113, v92);
        }
      }
    }

    if (!*a1)
    {
      *a2 = 0;
      *(a2 + 192) = 0;
      v100 = v239;
      v99 = HIDWORD(v239);
      goto LABEL_208;
    }

    v100 = v239;
    v99 = HIDWORD(v239);
    if ((v240 & 0x100000000) != 0)
    {
      LOBYTE(v241) = v240;
      if (!HIDWORD(v239))
      {
        LOBYTE(v242) = 0;
        v246 = 0;
        if ((v239 & 1) == 0)
        {
          LOWORD(v242) = v238;
          v243[0] = v2;
          v243[1] = v3;
          v244 = v4;
          v245 = v5;
          v246 = 1;
          v5 = 0;
          v4 = 0;
          v3 = 0;
          v2 = 0;
        }

        if (v254)
        {
          std::__optional_move_base<WebCore::MockWebAuthenticationConfiguration::HidConfiguration,false>::__optional_move_base[abi:sn200100](&v247, &v251);
          if (v266)
          {
            std::__optional_move_base<WebCore::MockWebAuthenticationConfiguration::NfcConfiguration,false>::__optional_move_base[abi:sn200100](&v249, &v255);
            if (v275)
            {
              break;
            }
          }
        }
      }
    }

LABEL_231:
    __break(1u);
LABEL_232:
    v103 = *a1;
    *a1 = 0;
    *(a1 + 1) = 0;
    v104 = *(a1 + 3);
    if (!v104 || !v20)
    {
      v20 = 0;
      v75 = *a1;
LABEL_234:
      *a1 = 0;
      *(a1 + 1) = 0;
      v105 = *(a1 + 3);
      if (v105)
      {
        if (v20)
        {
          (*(*v105 + 16))(v105, v75);
          v20 = *(a1 + 1);
        }
      }

      else
      {
        v20 = 0;
      }

LABEL_236:
      *a1 = 0;
      *(a1 + 1) = 0;
      v106 = *(a1 + 3);
      if (!v106)
      {
        v20 = 0;
LABEL_238:
        v75 = 0;
        goto LABEL_239;
      }

      if (!v20)
      {
        goto LABEL_238;
      }

      (*(*v106 + 16))(v106);
      v75 = *a1;
      v20 = *(a1 + 1);
LABEL_239:
      *a1 = 0;
      *(a1 + 1) = 0;
      v107 = *(a1 + 3);
      if (v107 && v20)
      {
        (*(*v107 + 16))(v107, v75);
      }

LABEL_278:
      LOBYTE(v255) = 0;
      v266 = 0;
      goto LABEL_182;
    }

    (*(*v104 + 16))(v104, v103);
    v20 = *(a1 + 1);
  }

  std::__optional_move_base<WebCore::MockWebAuthenticationConfiguration::CcidConfiguration,false>::__optional_move_base[abi:sn200100](&v250, &v272);
  WebCore::MockWebAuthenticationConfiguration::MockWebAuthenticationConfiguration(a2, &v241);
  *(a2 + 192) = 1;
  WebCore::MockWebAuthenticationConfiguration::~MockWebAuthenticationConfiguration(&v241, v101);
LABEL_208:
  if (v275 == 1 && v274 == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v272, v92);
  }

  if (v266 == 1 && v258 == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v256, v92);
  }

  if (v254 == 1 && v253[48] == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v253, v92);
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v251, v102);
  }

  if (((v100 | v99) & 1) == 0)
  {
    if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, v92);
      if (v4)
      {
        goto LABEL_221;
      }
    }

    else if (v4)
    {
LABEL_221:
      if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v4, v92);
      }
    }

    if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v3, v92);
      if (v2)
      {
        goto LABEL_227;
      }
    }

    else if (v2)
    {
LABEL_227:
      if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v2, v92);
      }
    }
  }
}

void sub_19D75ECE4(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, WTF::StringImpl *a11, WTF::StringImpl *a12, WTF::StringImpl *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, char a24, __int16 arg70_2, char arg74, uint64_t a25, uint64_t a26, char a27, WTF::StringImpl *a28, WTF::StringImpl *a29, WTF::StringImpl *a30, WTF::StringImpl *a31, char a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46, uint64_t a47, uint64_t a48, uint64_t a49, WTF::StringImpl *a50, char a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, char a58, int a59, __int16 a60, char a61)
{
  if (*(v64 - 112) == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v64 - 128, a2);
  }

  if (a60 == 1 && a58 == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a52, a2);
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a50, v66);
  }

  if ((a23 & 1) == 0 && (arg74 & 1) == 0)
  {
    if (a10 && atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }

    if (a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }

    if (a12 && atomic_fetch_add_explicit(a12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a12, a2);
    }

    if (a13)
    {
      if (atomic_fetch_add_explicit(a13, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(a13, a2);
      }
    }
  }

  _Unwind_Resume(exception_object);
}

void WebCore::MockWebAuthenticationConfiguration::~MockWebAuthenticationConfiguration(WebCore::MockWebAuthenticationConfiguration *this, void *a2)
{
  if (*(this + 184) == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 168, a2);
  }

  if (*(this + 160) == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 136, a2);
  }

  if (*(this + 120) == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 72, a2);
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 56, v3);
  }

  if (*(this + 48) == 1)
  {
    v4 = *(this + 5);
    *(this + 5) = 0;
    if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }

    v5 = *(this + 4);
    *(this + 4) = 0;
    if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, a2);
    }

    v6 = *(this + 3);
    *(this + 3) = 0;
    if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, a2);
    }

    v7 = *(this + 2);
    *(this + 2) = 0;
    if (v7)
    {
      if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v7, a2);
      }
    }
  }
}

WTF::StringImpl *IPC::ArgumentCoder<WebCore::MobileDocumentRequest,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  IPC::Decoder::decode<WTF::String>(a1, &v10);
  result = IPC::Decoder::decode<WTF::String>(a1, &v8);
  if (*a1)
  {
    if (v11)
    {
      v6 = v10;
      v10 = 0;
      if (v9)
      {
        v7 = v8;
        *a2 = v6;
        *(a2 + 8) = v7;
        *(a2 + 16) = 1;
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  *a2 = 0;
  *(a2 + 16) = 0;
  if (v9)
  {
    result = v8;
    v8 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v5);
      }
    }
  }

LABEL_5:
  if (v11 == 1)
  {
    result = v10;
    v10 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v5);
      }
    }
  }

  return result;
}

void sub_19D75F314(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, char a12)
{
  if ((a12 & 1) != 0 && a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a11, a2);
  }

  _Unwind_Resume(exception_object);
}

mpark *IPC::ArgumentCoder<WebCore::DigitalCredentialsRequestData,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::VectorArgumentCoder<false,mpark::variant<WebCore::ValidatedMobileDocumentRequest,WebCore::OpenID4VPRequest>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<mpark::variant<WebCore::ValidatedMobileDocumentRequest,WebCore::OpenID4VPRequest>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, a2);
  v5 = *(a2 + 40);
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  IPC::ArgumentCoder<mpark::variant<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,void>::encode<IPC::Encoder,mpark::variant<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>> const&>(a1, a2 + 16, v5);
  v6 = *(a2 + 72);
  IPC::Encoder::operator<<<BOOL>(a1, &v6);
  return IPC::ArgumentCoder<mpark::variant<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,void>::encode<IPC::Encoder,mpark::variant<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>> const&>(a1, a2 + 48, v6);
}

mpark *IPC::ArgumentCoder<WebCore::DigitalCredentialsRequestData,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>, __n128 a4@<Q1>, __n128 a5@<Q2>)
{
  v60 = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 1);
  v8 = ((*(a1 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  v9 = *a1;
  v10 = v8 - *a1;
  v11 = v7 >= v10;
  v12 = v7 - v10;
  if (v11 && v12 > 7)
  {
    *(a1 + 2) = v8 + 1;
    if (v8)
    {
      v14 = *v8;
      v56 = 0uLL;
      if (v14 >= 0x6666)
      {
        do
        {
          result = IPC::Decoder::decode<mpark::variant<WebCore::ValidatedMobileDocumentRequest,WebCore::OpenID4VPRequest>>(v45, a1, a3, a4, a5);
          v22 = v48;
          if (v48)
          {
            if (HIDWORD(v56) == DWORD2(v56))
            {
              result = WTF::Vector<mpark::variant<WebCore::ValidatedMobileDocumentRequest,WebCore::OpenID4VPRequest>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,mpark::variant<WebCore::ValidatedMobileDocumentRequest,WebCore::OpenID4VPRequest>>(&v56, v45);
            }

            else
            {
              result = mpark::detail::move_constructor<mpark::detail::traits<WebCore::ValidatedMobileDocumentRequest,WebCore::OpenID4VPRequest>,(mpark::detail::Trait)1>::move_constructor(v56 + 40 * HIDWORD(v56), v45);
              ++HIDWORD(v56);
            }
          }

          if (v48 == 1)
          {
            result = mpark::detail::move_constructor<mpark::detail::traits<WebCore::ValidatedMobileDocumentRequest,WebCore::OpenID4VPRequest>,(mpark::detail::Trait)1>::~move_constructor(v45, v9);
          }

          if ((v22 & 1) == 0)
          {
            goto LABEL_42;
          }

          --v14;
        }

        while (v14);
        v23 = HIDWORD(v56);
        if (DWORD2(v56) > HIDWORD(v56))
        {
          v24 = v56;
          if (HIDWORD(v56))
          {
            if (HIDWORD(v56) >= 0x6666667)
            {
              __break(0xC471u);
              goto LABEL_91;
            }

            v25 = WTF::fastMalloc((5 * HIDWORD(v56)), (40 * HIDWORD(v56)));
            DWORD2(v56) = 40 * v23 / 0x28;
            *&v56 = v25;
            if (v25 != v24)
            {
              WTF::VectorMover<false,mpark::variant<WebCore::ValidatedMobileDocumentRequest,WebCore::OpenID4VPRequest>>::move(v24, v24 + 40 * v23, v25);
            }
          }

          if (v24)
          {
            if (v56 == v24)
            {
              *&v56 = 0;
              DWORD2(v56) = 0;
            }

            WTF::fastFree(v24, v9);
          }
        }
      }

      else if (v14)
      {
        DWORD2(v56) = 40 * v14 / 0x28u;
        *&v56 = WTF::fastMalloc((5 * v14), (40 * v14));
        while (1)
        {
          IPC::Decoder::decode<mpark::variant<WebCore::ValidatedMobileDocumentRequest,WebCore::OpenID4VPRequest>>(v45, a1, v15, v16, v17);
          v18 = v48;
          if (v48)
          {
            if (HIDWORD(v56) == DWORD2(v56))
            {
              WTF::Vector<mpark::variant<WebCore::ValidatedMobileDocumentRequest,WebCore::OpenID4VPRequest>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,mpark::variant<WebCore::ValidatedMobileDocumentRequest,WebCore::OpenID4VPRequest>>(&v56, v45);
            }

            else
            {
              mpark::detail::move_constructor<mpark::detail::traits<WebCore::ValidatedMobileDocumentRequest,WebCore::OpenID4VPRequest>,(mpark::detail::Trait)1>::move_constructor(v56 + 40 * HIDWORD(v56), v45);
              ++HIDWORD(v56);
            }
          }

          if (v48 == 1)
          {
            mpark::detail::move_constructor<mpark::detail::traits<WebCore::ValidatedMobileDocumentRequest,WebCore::OpenID4VPRequest>,(mpark::detail::Trait)1>::~move_constructor(v45, v9);
          }

          if ((v18 & 1) == 0)
          {
            break;
          }

          if (!--v14)
          {
            goto LABEL_18;
          }
        }

LABEL_42:
        LOBYTE(v42) = 0;
        v44 = 0;
        WTF::Vector<mpark::variant<WebCore::ValidatedMobileDocumentRequest,WebCore::OpenID4VPRequest>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v56, v9);
        goto LABEL_43;
      }

LABEL_18:
      v19 = *(&v56 + 1);
      v42 = v56;
      v56 = 0uLL;
      v43 = v19;
      v44 = 1;
      WTF::Vector<mpark::variant<WebCore::ValidatedMobileDocumentRequest,WebCore::OpenID4VPRequest>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v56, v9);
      goto LABEL_19;
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v40 = *(a1 + 3);
    if (v40)
    {
      if (v7)
      {
        (*(*v40 + 16))(v40);
        v7 = *(a1 + 1);
      }
    }

    else
    {
      v7 = 0;
    }
  }

  *a1 = 0;
  *(a1 + 1) = 0;
  v41 = *(a1 + 3);
  if (v41 && v7)
  {
    (*(*v41 + 16))(v41);
  }

  LOBYTE(v42) = 0;
  v44 = 0;
LABEL_43:
  v26 = *a1;
  v27 = *(a1 + 1);
  *a1 = 0;
  *(a1 + 1) = 0;
  v28 = *(a1 + 3);
  if (v28 && v27)
  {
    (*(*v28 + 16))(v28, v26);
  }

LABEL_19:
  result = IPC::Decoder::decode<WebCore::SecurityOriginData>(a1, &v56);
  if (*a1)
  {
    if ((v59 & 1) == 0)
    {
      goto LABEL_91;
    }

    if (v58)
    {
      if (v58 != 1)
      {
        goto LABEL_81;
      }
    }

    else if (v56 == 0 && (v57 & 0x10000) == 0)
    {
      goto LABEL_24;
    }

    result = IPC::Decoder::decode<WebCore::SecurityOriginData>(a1, &v52);
    if (!*a1)
    {
LABEL_52:
      *a2 = 0;
      *(a2 + 80) = 0;
      goto LABEL_67;
    }

    if ((v55 & 1) == 0)
    {
      goto LABEL_91;
    }

    v31 = v54;
    if (!v54)
    {
      if (v52 == 0 && (v53 & 0x10000) == 0)
      {
        goto LABEL_52;
      }

LABEL_54:
      if (v44)
      {
        v32 = v42;
        v33 = v43;
        v42 = 0;
        v43 = 0;
        if (v59)
        {
          LOBYTE(v46) = 0;
          v48 = -1;
          v34 = v58;
          if (v58)
          {
            if (v58 == 255)
            {
LABEL_59:
              if (v54)
              {
                v49 = v52;
              }

              else
              {
                v36 = v52;
                v52 = 0uLL;
                v49 = v36;
                v30 = v53;
                v50 = v53;
              }

              v51 = v54;
              v45[0] = 0;
              v45[1] = 0;
              *a2 = v32;
              *(a2 + 8) = v33;
              *(a2 + 16) = 0;
              *(a2 + 40) = -1;
              if (v34)
              {
                if (v34 == 255)
                {
                  goto LABEL_64;
                }

                *(a2 + 16) = v46;
              }

              else
              {
                v37 = v46;
                v46 = 0uLL;
                *(a2 + 16) = v37;
                *(a2 + 32) = v29;
              }

              *(a2 + 40) = v34;
LABEL_64:
              if (v31)
              {
                *(a2 + 48) = v49;
              }

              else
              {
                v38 = v49;
                v49 = 0uLL;
                *(a2 + 48) = v38;
                *(a2 + 64) = v30;
              }

              *(a2 + 72) = v31;
              *(a2 + 80) = 1;
              mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(&v49);
              mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(&v46);
              result = WTF::Vector<mpark::variant<WebCore::ValidatedMobileDocumentRequest,WebCore::OpenID4VPRequest>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v45, v39);
LABEL_67:
              if (v55 == 1)
              {
                result = mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(&v52);
              }

              goto LABEL_69;
            }

            v46 = v56;
          }

          else
          {
            v35 = v56;
            v56 = 0uLL;
            v46 = v35;
            v29 = v57;
            v47 = v57;
          }

          v48 = v58;
          goto LABEL_59;
        }
      }

LABEL_91:
      __break(1u);
      return result;
    }

    if (v54 == 1)
    {
      goto LABEL_54;
    }

LABEL_81:
    mpark::throw_bad_variant_access(result);
  }

LABEL_24:
  *a2 = 0;
  *(a2 + 80) = 0;
LABEL_69:
  if (v59 == 1)
  {
    result = mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(&v56);
  }

  if (v44 == 1)
  {
    return WTF::Vector<mpark::variant<WebCore::ValidatedMobileDocumentRequest,WebCore::OpenID4VPRequest>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v42, v21);
  }

  return result;
}

WTF::StringImpl *IPC::ArgumentCoder<WebCore::DigitalCredentialsResponseData,void>::decode@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = IPC::Decoder::decode<WebCore::TextManipulationControllerExclusionRule::Type>(a1);
  result = IPC::Decoder::decode<WTF::String>(a1, &v8);
  if (*a1)
  {
    if (v4 & 0x100) != 0 && (v9)
    {
      v7 = v8;
      *a2 = v4;
      *(a2 + 8) = v7;
      *(a2 + 16) = 1;
      return result;
    }

    __break(1u);
  }

  *a2 = 0;
  *(a2 + 16) = 0;
  if (v9)
  {
    result = v8;
    v8 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v6);
      }
    }
  }

  return result;
}

uint64_t IPC::ArgumentCoder<WebCore::MockCameraProperties,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, *a2);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 8));
  IPC::VectorArgumentCoder<false,WebCore::VideoPresetData,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::VideoPresetData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, a2 + 16);
  IPC::ArgumentCoder<WebCore::Color,void>::encode(a1, (a2 + 32));
  IPC::VectorArgumentCoder<false,WebCore::ApplePayContactField,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::ApplePayContactField,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, a2 + 40);

  return IPC::Encoder::operator<<<BOOL>(a1, (a2 + 56));
}

uint64_t IPC::ArgumentCoder<WebCore::MockDisplayProperties,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *a2);
  IPC::ArgumentCoder<WebCore::Color,void>::encode(a1, (a2 + 8));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 16));
  v4 = *(a2 + 20);

  return IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, v4);
}

mpark *IPC::ArgumentCoder<WebCore::MockMediaDevice,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 8));
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 16));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 17));
  v5 = *(a2 + 88);
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  return IPC::ArgumentCoder<mpark::variant<WebCore::MockMicrophoneProperties,WebCore::MockSpeakerProperties,WebCore::MockCameraProperties,WebCore::MockDisplayProperties>,void>::encode<IPC::Encoder,mpark::variant<WebCore::MockMicrophoneProperties,WebCore::MockSpeakerProperties,WebCore::MockCameraProperties,WebCore::MockDisplayProperties> const&>(a1, a2 + 24, v5);
}

void IPC::ArgumentCoder<WebCore::MockMediaDevice,void>::decode(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  v132 = *MEMORY[0x1E69E9840];
  IPC::Decoder::decode<WTF::String>(a1, &v101);
  IPC::Decoder::decode<WTF::String>(a1, &v99);
  v4 = *(a1 + 1);
  v5 = *(a1 + 2);
  v6 = *a1;
  if (v4 <= &v5[-*a1])
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v84 = *(a1 + 3);
    if (v84)
    {
      if (v4)
      {
        (*(*v84 + 16))(v84);
        v4 = *(a1 + 1);
      }
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    *(a1 + 2) = v5 + 1;
    if (v5)
    {
      v7 = *v5;
      if (v7 < 4)
      {
        v8 = v7 | 0x100;
        goto LABEL_5;
      }

      goto LABEL_167;
    }
  }

  *a1 = 0;
  *(a1 + 1) = 0;
  v85 = *(a1 + 3);
  if (v85)
  {
    if (v4)
    {
      (*(*v85 + 16))(v85);
      v6 = *a1;
      v4 = *(a1 + 1);
      goto LABEL_167;
    }
  }

  else
  {
    v4 = 0;
  }

  v6 = 0;
LABEL_167:
  *a1 = 0;
  *(a1 + 1) = 0;
  v86 = *(a1 + 3);
  if (!v86)
  {
    v6 = 0;
    v12 = 0;
    v8 = 0;
    v4 = 0;
    goto LABEL_169;
  }

  if (!v4)
  {
    v6 = 0;
    v12 = 0;
    v8 = 0;
LABEL_169:
    *a1 = 0;
    *(a1 + 1) = 0;
    v87 = *(a1 + 3);
    if (v87)
    {
      if (v4)
      {
        (*(*v87 + 16))(v87, v6);
        v6 = *a1;
        v4 = *(a1 + 1);
        goto LABEL_172;
      }
    }

    else
    {
      v4 = 0;
    }

    v6 = 0;
    goto LABEL_172;
  }

  (*(*v86 + 16))(v86, v6);
  v8 = 0;
  v6 = *a1;
  v4 = *(a1 + 1);
LABEL_5:
  v9 = *(a1 + 2);
  if (v4 <= &v9[-v6])
  {
    v12 = v8;
    goto LABEL_169;
  }

  *(a1 + 2) = v9 + 1;
  if (!v9)
  {
    v12 = v8;
LABEL_172:
    *a1 = 0;
    *(a1 + 1) = 0;
    v88 = *(a1 + 3);
    if (v88)
    {
      if (v4)
      {
        (*(*v88 + 16))(v88, v6);
        v10 = 0;
        v6 = *a1;
        v4 = *(a1 + 1);
        goto LABEL_175;
      }
    }

    else
    {
      v4 = 0;
    }

    v6 = 0;
    v10 = 0;
    goto LABEL_175;
  }

  v10 = *v9;
  if (v10 < 2)
  {
    v11 = 1;
    v12 = v8;
    goto LABEL_9;
  }

  v12 = v8;
LABEL_175:
  *a1 = 0;
  *(a1 + 1) = 0;
  v89 = *(a1 + 3);
  if (!v89 || !v4)
  {
    v6 = 0;
    v13 = 0;
    v11 = 0;
    v4 = 0;
LABEL_177:
    *a1 = 0;
    *(a1 + 1) = 0;
    v90 = *(a1 + 3);
    if (v90)
    {
      if (v4)
      {
        (*(*v90 + 16))(v90, v6);
        v6 = *a1;
        v4 = *(a1 + 1);
        goto LABEL_180;
      }
    }

    else
    {
      v4 = 0;
    }

    v6 = 0;
LABEL_180:
    *a1 = 0;
    *(a1 + 1) = 0;
    v63 = *(a1 + 3);
    if (!v63 || !v4)
    {
      goto LABEL_15;
    }

    goto LABEL_182;
  }

  (*(*v89 + 16))(v89, v6);
  v11 = 0;
  v6 = *a1;
  v4 = *(a1 + 1);
LABEL_9:
  if (v10)
  {
    v13 = v11;
  }

  else
  {
    v13 = 0;
  }

  v14 = *(a1 + 2);
  if (v4 <= &v14[-v6])
  {
    goto LABEL_177;
  }

  *(a1 + 2) = v14 + 1;
  if (!v14)
  {
    goto LABEL_180;
  }

  v15 = *v14;
  if (v15 > 3)
  {
LABEL_15:
    LOBYTE(v127) = 0;
    v131 = 0;
LABEL_16:
    v16 = *a1;
    v17 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v18 = *(a1 + 3);
    if (v18 && v17)
    {
      (*(*v18 + 16))(v18, v16);
    }

    goto LABEL_85;
  }

  if (!v15)
  {
    v20 = IPC::Decoder::decode<float>(a1);
    v21 = IPC::Decoder::decode<std::optional<BOOL>>(a1);
    if (!*a1)
    {
      v59 = *(a1 + 1);
      *a1 = 0;
      *(a1 + 1) = 0;
      v60 = *(a1 + 3);
      if (v60 && v59)
      {
        (*(*v60 + 16))(v60, 0);
      }

      goto LABEL_15;
    }

    if ((v20 & 0x100000000) != 0 && (v21 & 0x10000) != 0)
    {
      v127 = (v20 | (v21 << 32));
      v130 = 0;
      goto LABEL_84;
    }

LABEL_111:
    __break(1u);
    goto LABEL_112;
  }

  if (v15 == 1)
  {
    IPC::Decoder::decode<WTF::String>(a1, v119);
    v19 = IPC::Decoder::decode<float>(a1);
    if (*a1)
    {
      if ((v119[1] & 1) != 0 && (v19 & 0x100000000) != 0)
      {
        v127 = v119[0];
        LODWORD(v128) = v19;
        v130 = 1;
LABEL_84:
        v131 = 1;
        goto LABEL_85;
      }

      goto LABEL_111;
    }

    if (v119[1])
    {
      v61 = v119[0];
      v119[0] = 0;
      if (v61)
      {
        if (atomic_fetch_add_explicit(v61, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v61, v16);
        }
      }
    }

    v6 = *a1;
    v62 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v63 = *(a1 + 3);
    if (!v63 || !v62)
    {
      goto LABEL_15;
    }

LABEL_182:
    (*(*v63 + 16))(v63, v6);
    goto LABEL_15;
  }

  if (v15 != 2)
  {
    v50 = IPC::Decoder::decode<WebCore::CaptureDevice::DeviceType>(a1);
    IPC::Decoder::decode<WebCore::Color>(a1, v119);
    v51 = IPC::Decoder::decode<WebCore::IntSize>(a1);
    if (*a1)
    {
      if (v50 > 0xFFu && (v119[1] & 1) != 0 && (v16 & 1) != 0)
      {
        v128 = v119[0];
        v129 = v51;
        v130 = 3;
        LOBYTE(v127) = v50;
        goto LABEL_84;
      }

      goto LABEL_111;
    }

    if ((v119[1] & 1) != 0 && (v119[0] & 0x8000000000000) != 0)
    {
      v76 = (v119[0] & 0xFFFFFFFFFFFFLL);
      if (atomic_fetch_add((v119[0] & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v76);
        WTF::fastFree(v76, v16);
      }
    }

    v6 = *a1;
    v77 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v63 = *(a1 + 3);
    if (!v63 || !v77)
    {
      goto LABEL_15;
    }

    goto LABEL_182;
  }

  v96 = IPC::Decoder::decode<unsigned long long>(a1);
  v97 = v22;
  v23 = IPC::Decoder::decode<WebCore::ParagraphStyleAlignment>(a1);
  v24 = *(a1 + 1);
  v25 = ((*(a1 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  v26 = *a1;
  v27 = v25 - *a1;
  v28 = v24 >= v27;
  v29 = v24 - v27;
  v98 = v23;
  if (!v28 || v29 <= 7)
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v91 = *(a1 + 3);
    if (v91)
    {
      if (v24)
      {
        (*(*v91 + 16))(v91);
        v24 = *(a1 + 1);
      }
    }

    else
    {
      v24 = 0;
    }

    goto LABEL_196;
  }

  *(a1 + 2) = v25 + 1;
  if (!v25)
  {
LABEL_196:
    *a1 = 0;
    *(a1 + 1) = 0;
    v92 = *(a1 + 3);
    if (v92 && v24)
    {
      (*(*v92 + 16))(v92);
    }

    LOBYTE(v116) = 0;
    v118 = 0;
    goto LABEL_142;
  }

  v30 = *v25;
  v111 = 0;
  v112 = 0;
  if (v30 >= 0x5555)
  {
    while (1)
    {
      IPC::Decoder::decode<WebCore::VideoPresetData>(&v103, a1);
      v64 = v108;
      if (v108)
      {
        if (HIDWORD(v112) == v112)
        {
          WTF::Vector<WebCore::VideoPresetData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::VideoPresetData>(&v111, &v103);
        }

        else
        {
          v65 = v111 + 48 * HIDWORD(v112);
          v66 = v103;
          *(v65 + 1) = 0;
          *(v65 + 2) = 0;
          *v65 = v66;
          v67 = v104;
          v104 = 0;
          *(v65 + 1) = v67;
          *(v65 + 4) = v105;
          LODWORD(v67) = HIDWORD(v105);
          HIDWORD(v105) = 0;
          *(v65 + 5) = v67;
          LOBYTE(v67) = v107;
          *(v65 + 24) = v106;
          v65[40] = v67;
          ++HIDWORD(v112);
        }
      }

      if (v108 == 1)
      {
        v68 = v104;
        if (v104)
        {
          v104 = 0;
          LODWORD(v105) = 0;
          WTF::fastFree(v68, v26);
        }
      }

      if ((v64 & 1) == 0)
      {
        break;
      }

      if (!--v30)
      {
        v69 = HIDWORD(v112);
        if (v112 <= HIDWORD(v112))
        {
          goto LABEL_46;
        }

        v70 = v111;
        if (HIDWORD(v112))
        {
          if (HIDWORD(v112) >= 0x5555556)
          {
            __break(0xC471u);
            return;
          }

          v71 = 48 * HIDWORD(v112);
          v72 = WTF::fastMalloc((3 * HIDWORD(v112)), (48 * HIDWORD(v112)));
          LODWORD(v112) = v71 / 0x30;
          v111 = v72;
          if (v72 != v70)
          {
            WTF::VectorMover<false,WebCore::VideoPresetData>::move(v70, (v70 + 48 * v69), v72);
          }
        }

        if (v70)
        {
          if (v111 == v70)
          {
            v111 = 0;
            LODWORD(v112) = 0;
          }

          WTF::fastFree(v70, v26);
        }

        goto LABEL_46;
      }
    }
  }

  else
  {
    if (!v30)
    {
LABEL_46:
      v116 = v111;
      v37 = v112;
      v111 = 0;
      v112 = 0;
      v117 = v37;
      v118 = 1;
      WTF::Vector<WebCore::VideoPresetData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v111, v26);
      v38 = v98;
      goto LABEL_47;
    }

    v31 = WTF::fastMalloc((3 * v30), (48 * v30));
    LODWORD(v112) = 48 * v30 / 0x30u;
    v111 = v31;
    while (1)
    {
      IPC::Decoder::decode<WebCore::VideoPresetData>(&v103, a1);
      v32 = v108;
      if (v108)
      {
        if (HIDWORD(v112) == v112)
        {
          WTF::Vector<WebCore::VideoPresetData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::VideoPresetData>(&v111, &v103);
        }

        else
        {
          v33 = v111 + 48 * HIDWORD(v112);
          v34 = v103;
          *(v33 + 1) = 0;
          *(v33 + 2) = 0;
          *v33 = v34;
          v35 = v104;
          v104 = 0;
          *(v33 + 1) = v35;
          *(v33 + 4) = v105;
          LODWORD(v35) = HIDWORD(v105);
          HIDWORD(v105) = 0;
          *(v33 + 5) = v35;
          LOBYTE(v35) = v107;
          *(v33 + 24) = v106;
          v33[40] = v35;
          ++HIDWORD(v112);
        }
      }

      if (v108 == 1)
      {
        v36 = v104;
        if (v104)
        {
          v104 = 0;
          LODWORD(v105) = 0;
          WTF::fastFree(v36, v26);
        }
      }

      if ((v32 & 1) == 0)
      {
        break;
      }

      if (!--v30)
      {
        goto LABEL_46;
      }
    }
  }

  LOBYTE(v116) = 0;
  v118 = 0;
  WTF::Vector<WebCore::VideoPresetData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v111, v26);
LABEL_142:
  v73 = *a1;
  v74 = *(a1 + 1);
  *a1 = 0;
  *(a1 + 1) = 0;
  v75 = *(a1 + 3);
  v38 = v98;
  if (v75 && v74)
  {
    (*(*v75 + 16))(v75, v73);
  }

LABEL_47:
  IPC::Decoder::decode<WebCore::Color>(a1, &v114);
  IPC::Decoder::decode<WTF::Vector<WebCore::MeteringMode,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(&v111, a1);
  v39 = *(a1 + 1);
  v40 = *(a1 + 2);
  v16 = *a1;
  if (v39 <= &v40[-*a1])
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v93 = *(a1 + 3);
    if (v93)
    {
      if (v39)
      {
        (*(*v93 + 16))(v93);
        v39 = *(a1 + 1);
      }
    }

    else
    {
      v39 = 0;
    }

LABEL_200:
    *a1 = 0;
    *(a1 + 1) = 0;
    v94 = *(a1 + 3);
    if (v94)
    {
      if (v39)
      {
        (*(*v94 + 16))(v94);
        v41 = 0;
        v16 = *a1;
        v39 = *(a1 + 1);
        goto LABEL_203;
      }
    }

    else
    {
      v39 = 0;
    }

    v16 = 0;
    v41 = 0;
    goto LABEL_203;
  }

  *(a1 + 2) = v40 + 1;
  if (!v40)
  {
    goto LABEL_200;
  }

  v41 = *v40;
  if (v41 < 2)
  {
    v42 = 1;
    goto LABEL_51;
  }

LABEL_203:
  *a1 = 0;
  *(a1 + 1) = 0;
  v95 = *(a1 + 3);
  if (!v95 || !v39)
  {
LABEL_204:
    LOBYTE(v119[0]) = 0;
    v125 = 0;
    goto LABEL_65;
  }

  (*(*v95 + 16))(v95, v16);
  v42 = 0;
  v16 = *a1;
  v38 = v98;
LABEL_51:
  if (v41)
  {
    v43 = v42;
  }

  else
  {
    v43 = 0;
  }

  if (!v16)
  {
    goto LABEL_204;
  }

  if ((v97 & 1) == 0)
  {
    goto LABEL_111;
  }

  v103 = v96;
  if (v38 <= 0xFFu)
  {
    goto LABEL_111;
  }

  LOBYTE(v104) = v38;
  if ((v118 & 1) == 0)
  {
    goto LABEL_111;
  }

  v105 = v116;
  v44 = v117;
  v116 = 0;
  v117 = 0;
  *&v106 = v44;
  if ((v115 & 1) == 0)
  {
    goto LABEL_111;
  }

  v45 = v114;
  v114 = 0;
  *(&v106 + 1) = v45;
  if ((v113 & 1) == 0)
  {
    goto LABEL_111;
  }

  v107 = v111;
  v46 = v112;
  v111 = 0;
  v112 = 0;
  v108 = v46;
  if ((v42 & 1) == 0)
  {
    goto LABEL_111;
  }

  v109 = v43;
  v110 = 0;
  WebCore::MockCameraProperties::MockCameraProperties(v119, &v103);
  v125 = 1;
  v48 = v107;
  if (v107)
  {
    v107 = 0;
    LODWORD(v108) = 0;
    WTF::fastFree(v48, v47);
  }

  if ((*(&v106 + 1) & 0x8000000000000) != 0)
  {
    v82 = (*(&v106 + 1) & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((*(&v106 + 1) & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v82);
      WTF::fastFree(v82, v47);
    }
  }

  WTF::Vector<WebCore::VideoPresetData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v105, v47);
LABEL_65:
  if (v113 == 1 && v111)
  {
    WTF::fastFree(v111, v16);
  }

  if (v115 == 1 && (v114 & 0x8000000000000) != 0)
  {
    v81 = (v114 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((v114 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v81);
      WTF::fastFree(v81, v16);
    }
  }

  if (v118 == 1)
  {
    WTF::Vector<WebCore::VideoPresetData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v116, v16);
  }

  if ((v125 & 1) == 0)
  {
    v78 = *a1;
    v79 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v80 = *(a1 + 3);
    if (!v80)
    {
      goto LABEL_15;
    }

    if (!v79)
    {
      goto LABEL_15;
    }

    (*(*v80 + 16))(v80, v78);
    if ((v125 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  WebCore::MockCameraProperties::MockCameraProperties(&v127, v119);
  v130 = 2;
  v131 = 1;
  if (v125)
  {
    v49 = v123;
    if (v123)
    {
      v123 = 0;
      v124 = 0;
      WTF::fastFree(v49, v16);
    }

    if ((v122 & 0x8000000000000) != 0)
    {
      v83 = (v122 & 0xFFFFFFFFFFFFLL);
      if (atomic_fetch_add((v122 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v83);
        WTF::fastFree(v83, v16);
      }
    }

    WTF::Vector<WebCore::VideoPresetData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v120, v16);
    if ((v131 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

LABEL_85:
  if (*a1)
  {
    if (v102)
    {
      v52 = v101;
      v101 = 0;
      v119[0] = v52;
      if (v100)
      {
        v53 = v99;
        v99 = 0;
        v119[1] = v53;
        if (v8 > 0xFF)
        {
          LOBYTE(v120) = v12;
          if (v11)
          {
            HIBYTE(v120) = v13;
            if (v131)
            {
              mpark::detail::move_constructor<mpark::detail::traits<WebCore::MockMicrophoneProperties,WebCore::MockSpeakerProperties,WebCore::MockCameraProperties,WebCore::MockDisplayProperties>,(mpark::detail::Trait)1>::move_constructor(&v121, &v127);
              v54 = *v119;
              v119[0] = 0;
              v119[1] = 0;
              *a2 = v54;
              *(a2 + 16) = v120;
              mpark::detail::move_constructor<mpark::detail::traits<WebCore::MockMicrophoneProperties,WebCore::MockSpeakerProperties,WebCore::MockCameraProperties,WebCore::MockDisplayProperties>,(mpark::detail::Trait)1>::move_constructor(a2 + 24, &v121);
              *(a2 + 96) = 1;
              if (v126 != 255)
              {
                mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WebCore::MockMicrophoneProperties,WebCore::MockSpeakerProperties,WebCore::MockCameraProperties,WebCore::MockDisplayProperties>,(mpark::detail::Trait)1> &>(&v103, &v121);
              }

              v126 = -1;
              v55 = v119[1];
              v119[1] = 0;
              if (v55 && atomic_fetch_add_explicit(v55, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v55, v16);
              }

              v56 = v119[0];
              v119[0] = 0;
              if (v56 && atomic_fetch_add_explicit(v56, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v56, v16);
              }

              goto LABEL_99;
            }
          }
        }
      }
    }

    goto LABEL_111;
  }

LABEL_112:
  *a2 = 0;
  *(a2 + 96) = 0;
LABEL_99:
  if (v131 == 1 && v130 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WebCore::MockMicrophoneProperties,WebCore::MockSpeakerProperties,WebCore::MockCameraProperties,WebCore::MockDisplayProperties>,(mpark::detail::Trait)1> &>(v119, &v127);
  }

  if (v100 == 1)
  {
    v57 = v99;
    v99 = 0;
    if (v57)
    {
      if (atomic_fetch_add_explicit(v57, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v57, v16);
      }
    }
  }

  if (v102 == 1)
  {
    v58 = v101;
    v101 = 0;
    if (v58)
    {
      if (atomic_fetch_add_explicit(v58, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v58, v16);
      }
    }
  }
}

void sub_19D760948(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, WTF::StringImpl *a13, char a14, WTF::StringImpl *a15, char a16, int a17, __int16 a18, char a19, char a20, WTF *a21, int a22, uint64_t a23, uint64_t a24, WTF *a25, int a26, uint64_t a27, WTF *a28, uint64_t a29, char a30, uint64_t a31, char a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, char a38, WTF::StringImpl *a39, WTF::StringImpl *a40, uint64_t a41, uint64_t a42, uint64_t a43, WTF *a44, int a45, uint64_t a46, char a47, uint64_t a48, uint64_t a49, char a50)
{
  if (a30 == 1 && a28)
  {
    WTF::fastFree(a28, a2);
  }

  if (a32 == 1 && (a31 & 0x8000000000000) != 0)
  {
    v51 = (a31 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((a31 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v51);
      WTF::fastFree(v51, a2);
    }
  }

  if (a38 == 1)
  {
    WTF::Vector<WebCore::VideoPresetData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a34, a2);
  }

  if (a14 == 1 && a13 && atomic_fetch_add_explicit(a13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a13, a2);
  }

  if (a16 == 1 && a15 && atomic_fetch_add_explicit(a15, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a15, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<WebCore::Style::OffsetRotate,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  v6 = *(a2 + 4);
  IPC::ArgumentCoder<std::optional<WebCore::Constant<(WebCore::CSSValueID)394>>,void>::encode<IPC::Encoder,std::optional<WebCore::Constant<(WebCore::CSSValueID)394>>>(a1, &v6);
  v4 = *a2;

  return IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, v4);
}

uint64_t IPC::ArgumentCoder<WebCore::AcceleratedEffectValues,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *a2);
  IPC::ArgumentCoder<std::optional<WebCore::TransformOperationData>,void>::encode<IPC::Encoder,std::optional<WebCore::TransformOperationData> const&>(a1, a2 + 4);
  IPC::ArgumentCoder<WebCore::Length,void>::encode(a1, (a2 + 96));
  IPC::ArgumentCoder<WebCore::Length,void>::encode(a1, (a2 + 104));
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 112));
  IPC::VectorArgumentCoder<false,WTF::Ref<WebCore::TransformOperation,WTF::RawPtrTraits<WebCore::TransformOperation>,WTF::DefaultRefDerefTraits<WebCore::TransformOperation>>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::Ref<WebCore::TransformOperation,WTF::RawPtrTraits<WebCore::TransformOperation>,WTF::DefaultRefDerefTraits<WebCore::TransformOperation>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, a2 + 120);
  IPC::ArgumentCoder<WTF::RefPtr<WebCore::TransformOperation,WTF::RawPtrTraits<WebCore::TransformOperation>,WTF::DefaultRefDerefTraits<WebCore::TransformOperation>>,void>::encode<IPC::Encoder,WebCore::TransformOperation>(a1, (a2 + 136));
  IPC::ArgumentCoder<WTF::RefPtr<WebCore::TransformOperation,WTF::RawPtrTraits<WebCore::TransformOperation>,WTF::DefaultRefDerefTraits<WebCore::TransformOperation>>,void>::encode<IPC::Encoder,WebCore::TransformOperation>(a1, (a2 + 144));
  IPC::ArgumentCoder<WTF::RefPtr<WebCore::TransformOperation,WTF::RawPtrTraits<WebCore::TransformOperation>,WTF::DefaultRefDerefTraits<WebCore::TransformOperation>>,void>::encode<IPC::Encoder,WebCore::TransformOperation>(a1, (a2 + 152));
  IPC::ArgumentCoder<WTF::RefPtr<WebCore::PathOperation,WTF::RawPtrTraits<WebCore::PathOperation>,WTF::DefaultRefDerefTraits<WebCore::PathOperation>>,void>::encode<IPC::Encoder,WebCore::PathOperation>(a1, (a2 + 160));
  IPC::ArgumentCoder<WebCore::Length,void>::encode(a1, (a2 + 168));
  IPC::ArgumentCoder<WebCore::Length,void>::encode(a1, (a2 + 176));
  IPC::ArgumentCoder<WebCore::Length,void>::encode(a1, (a2 + 184));
  IPC::ArgumentCoder<WebCore::Length,void>::encode(a1, (a2 + 192));
  IPC::ArgumentCoder<WebCore::Length,void>::encode(a1, (a2 + 200));
  IPC::ArgumentCoder<WebCore::Style::OffsetRotate,void>::encode(a1, a2 + 208);
  IPC::VectorArgumentCoder<false,WTF::Ref<WebCore::FilterOperation,WTF::RawPtrTraits<WebCore::FilterOperation>,WTF::DefaultRefDerefTraits<WebCore::FilterOperation>>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::Ref<WebCore::FilterOperation,WTF::RawPtrTraits<WebCore::FilterOperation>,WTF::DefaultRefDerefTraits<WebCore::FilterOperation>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, a2 + 216);

  return IPC::VectorArgumentCoder<false,WTF::Ref<WebCore::FilterOperation,WTF::RawPtrTraits<WebCore::FilterOperation>,WTF::DefaultRefDerefTraits<WebCore::FilterOperation>>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::Ref<WebCore::FilterOperation,WTF::RawPtrTraits<WebCore::FilterOperation>,WTF::DefaultRefDerefTraits<WebCore::FilterOperation>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, a2 + 232);
}

void IPC::ArgumentCoder<WebCore::AcceleratedEffectValues,void>::decode(uint64_t a1, IPC::Decoder *a2)
{
  v447 = *MEMORY[0x1E69E9840];
  v6 = ((*(a2 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v7 = *a2;
  v8 = *(a2 + 1);
  if (v8 >= v6 - v7 && v8 - (v6 - v7) > 3)
  {
    *(a2 + 2) = v6 + 1;
    if (v6)
    {
      v322 = *v6 | 0x100000000;
      goto LABEL_8;
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v294 = *(a2 + 3);
    if (!v294)
    {
      v8 = 0;
LABEL_720:
      v7 = 0;
      goto LABEL_721;
    }

    if (!v8)
    {
      goto LABEL_720;
    }

    (*(*v294 + 16))(v294);
    v7 = *a2;
    v8 = *(a2 + 1);
  }

LABEL_721:
  *a2 = 0;
  *(a2 + 1) = 0;
  v295 = *(a2 + 3);
  if (!v295 || !v8)
  {
    v7 = 0;
    v322 = 0;
    v15 = 0;
    v8 = 0;
LABEL_723:
    *a2 = 0;
    *(a2 + 1) = 0;
    v296 = *(a2 + 3);
    if (v296)
    {
      if (v8)
      {
        (*(*v296 + 16))(v296, v7);
        v7 = *a2;
        v8 = *(a2 + 1);
LABEL_726:
        *a2 = 0;
        *(a2 + 1) = 0;
        v297 = *(a2 + 3);
        if (v297)
        {
          if (v8)
          {
            (*(*v297 + 16))(v297, v7);
            v7 = *a2;
            v8 = *(a2 + 1);
LABEL_729:
            *a2 = 0;
            *(a2 + 1) = 0;
            v298 = *(a2 + 3);
            if (v298 && v8)
            {
              (*(*v298 + 16))(v298, v7);
            }

            LODWORD(v317) = v6;
            v318 = v6;
            LODWORD(v316) = v6;
            goto LABEL_87;
          }
        }

        else
        {
          v8 = 0;
        }

        v7 = 0;
        goto LABEL_729;
      }
    }

    else
    {
      v8 = 0;
    }

    v7 = 0;
    goto LABEL_726;
  }

  (*(*v295 + 16))(v295, v7);
  v322 = 0;
  v7 = *a2;
  v8 = *(a2 + 1);
LABEL_8:
  v6 = *(a2 + 2);
  if (v8 <= v6 - v7)
  {
    v15 = v322;
    goto LABEL_723;
  }

  *(a2 + 2) = v6 + 1;
  if (!v6)
  {
    v15 = v322;
    goto LABEL_726;
  }

  LODWORD(v6) = *v6;
  if (v6 >= 2)
  {
    v15 = v322;
    goto LABEL_729;
  }

  if (!v6)
  {
    LODWORD(v321) = 0;
    v315 = 0;
    v320 = 1;
    v15 = v322;
    LODWORD(v317) = 1;
    v318 = 1;
    LODWORD(v316) = 1;
    goto LABEL_43;
  }

  v321 = IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(a2);
  i = v10;
  if ((v10 & 1) == 0)
  {
    v277 = *a2;
    v278 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v279 = *(a2 + 3);
    if (v279)
    {
      if (v278)
      {
        (*(*v279 + 16))(v279, v277);
      }
    }
  }

  v11 = IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(a2);
  v13 = v11;
  v15 = v14;
  if ((v14 & 1) == 0)
  {
    v263 = *a2;
    v264 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v11 = *(a2 + 3);
    if (v11)
    {
      if (v264)
      {
        v265 = v13;
        v11 = (*(*v11 + 16))(v11, v263);
        v13 = v265;
      }
    }
  }

  v3 = *a2;
  if (!*a2)
  {
    v262 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v11 = *(a2 + 3);
    if (v11 && v262)
    {
      v11 = (*(*v11 + 16))(v11, 0);
      LODWORD(v321) = 0;
      v13 = *a2;
      v16 = *a2;
    }

    else
    {
      v13 = 0;
      v16 = 0;
      LODWORD(v321) = 0;
    }

    v318 = v12;
    LODWORD(v316) = v12;
    LODWORD(v317) = v12;
LABEL_18:
    v17 = *(a2 + 1);
    v12 = *(a2 + 2);
    if (v17 <= v12 - v16)
    {
      *a2 = 0;
      *(a2 + 1) = 0;
      v280 = *(a2 + 3);
      if (v280)
      {
        if (v17)
        {
          (*(*v280 + 16))();
          v16 = *a2;
          v17 = *(a2 + 1);
          goto LABEL_689;
        }
      }

      else
      {
        v17 = 0;
      }

      v16 = 0;
    }

    else
    {
      *(a2 + 2) = v12 + 1;
      if (v12)
      {
        v12 = *v12;
        if (v12 < 2)
        {
          if (!v12)
          {
            v313 = 0;
            v314 = 0;
            i = 1;
            goto LABEL_31;
          }

          IPC::ArgumentCoder<WebCore::FloatRoundedRect,void>::decode(a2, v388);
          LOBYTE(v18) = v388[48];
          if ((v388[48] & 1) == 0)
          {
            goto LABEL_622;
          }

          goto LABEL_23;
        }

        goto LABEL_692;
      }
    }

LABEL_689:
    *a2 = 0;
    *(a2 + 1) = 0;
    v281 = *(a2 + 3);
    if (v281)
    {
      if (v17)
      {
        (*(*v281 + 16))(v281, v16);
        v16 = *a2;
        v17 = *(a2 + 1);
        goto LABEL_692;
      }
    }

    else
    {
      v17 = 0;
    }

    v16 = 0;
LABEL_692:
    *a2 = 0;
    *(a2 + 1) = 0;
    v282 = *(a2 + 3);
    if (v282 && v17)
    {
      (*(*v282 + 16))(v282, v16);
    }

    goto LABEL_537;
  }

  if (i & 1) != 0 && (v15)
  {
    v317 = HIDWORD(v321);
    v318 = v13;
    v316 = HIDWORD(v13);
    v13 = *a2;
    v16 = *a2;
    goto LABEL_18;
  }

LABEL_518:
  while (2)
  {
    __break(1u);
LABEL_519:
    atomic_store(v12, v13);
    (*(*v11 + 8))(v11);
    if (!i)
    {
      goto LABEL_520;
    }

LABEL_112:
    if (!*a2)
    {
      goto LABEL_533;
    }

LABEL_115:
    for (i = 1; ; i = 1)
    {
LABEL_116:
      IPC::Decoder::decode<WebCore::Length>(&v376, a2);
      IPC::Decoder::decode<WebCore::LengthPoint>(&v349, a2);
      v11 = IPC::Decoder::decode<WebCore::LengthPoint>(&v367, a2);
      v70 = *(a2 + 1);
      v71 = *(a2 + 2);
      v72 = *a2;
      if (v70 <= &v71[-*a2])
      {
        *a2 = 0;
        *(a2 + 1) = 0;
        v273 = *(a2 + 3);
        if (v273)
        {
          if (v70)
          {
            (*(*v273 + 16))(v273);
            v70 = *(a2 + 1);
          }
        }

        else
        {
          v70 = 0;
        }

LABEL_673:
        *a2 = 0;
        *(a2 + 1) = 0;
        v274 = *(a2 + 3);
        if (v274)
        {
          if (v70)
          {
            (*(*v274 + 16))(v274);
            v72 = *a2;
            v70 = *(a2 + 1);
LABEL_676:
            *a2 = 0;
            *(a2 + 1) = 0;
            v275 = *(a2 + 3);
            if (v275 && v70)
            {
              (*(*v275 + 16))(v275, v72);
            }

            v75 = 0;
            goto LABEL_530;
          }
        }

        else
        {
          v70 = 0;
        }

        v72 = 0;
        goto LABEL_676;
      }

      *(a2 + 2) = v71 + 1;
      if (!v71)
      {
        goto LABEL_673;
      }

      v73 = *v71;
      if (v73 >= 2)
      {
        goto LABEL_676;
      }

      if (!v73)
      {
        v75 = 0;
        v74 = 0x10000;
        goto LABEL_123;
      }

      if (v72)
      {
        v74 = 0x10000;
        v75 = 256;
        goto LABEL_123;
      }

      *a2 = 0;
      *(a2 + 1) = 0;
      v217 = *(a2 + 3);
      if (v217)
      {
        (*(*v217 + 16))(v217, 0);
      }

      v75 = 256;
LABEL_530:
      v218 = *a2;
      v70 = *(a2 + 1);
      *a2 = 0;
      *(a2 + 1) = 0;
      v11 = *(a2 + 3);
      if (v11)
      {
        if (v70)
        {
          v11 = (*(*v11 + 16))(v11, v218);
          v74 = 0;
          v72 = *a2;
          v70 = *(a2 + 1);
          goto LABEL_123;
        }
      }

      else
      {
        v70 = 0;
      }

      v72 = 0;
      v74 = 0;
LABEL_123:
      v76 = ((*(a2 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
      if (v70 < v76 - v72 || v70 - (v76 - v72) <= 3)
      {
        *a2 = 0;
        *(a2 + 1) = 0;
        v299 = *(a2 + 3);
        if (v299)
        {
          if (v70)
          {
            (*(*v299 + 16))(v299);
            v72 = *a2;
            v70 = *(a2 + 1);
            goto LABEL_734;
          }
        }

        else
        {
          v70 = 0;
        }

        v72 = 0;
      }

      else
      {
        LODWORD(v12) = v76 + 4;
        *(a2 + 2) = v76 + 1;
        if (v76)
        {
          v13 = *v76 | 0x100000000;
          goto LABEL_127;
        }
      }

LABEL_734:
      *a2 = 0;
      *(a2 + 1) = 0;
      v300 = *(a2 + 3);
      if (!v300)
      {
        goto LABEL_524;
      }

      v309 = v15;
      v18 = a1;
      if (!v70)
      {
        goto LABEL_795;
      }

      v11 = (*(*v300 + 16))(v300, v72);
      v13 = 0;
      v72 = *a2;
LABEL_127:
      if (v72)
      {
        if ((v13 & 0x100000000) != 0 && (v74 | v75) >= 0x10000)
        {
          v77 = v13 | (v75 << 32);
          v78 = 1;
          goto LABEL_131;
        }

        goto LABEL_518;
      }

      v215 = *(a2 + 1);
      v216 = *(a2 + 3);
      *a2 = 0;
      *(a2 + 1) = 0;
      if (!v216)
      {
LABEL_524:
        v77 = 0;
        v78 = 0;
        *a2 = 0;
        *(a2 + 1) = 0;
        goto LABEL_131;
      }

      v309 = v15;
      v18 = a1;
      if (!v215)
      {
LABEL_795:
        v77 = 0;
        v78 = 0;
        *a2 = 0;
        *(a2 + 1) = 0;
        goto LABEL_614;
      }

      (*(*v216 + 16))(v216);
      if (!*a2)
      {
        break;
      }

      __break(1u);
LABEL_622:
      v258 = *a2;
      v259 = *(a2 + 1);
      *a2 = 0;
      *(a2 + 1) = 0;
      v260 = *(a2 + 3);
      if (v260 && v259)
      {
        (*(*v260 + 16))(v260, v258);
      }

LABEL_23:
      v311 = IPC::Decoder::decode<WebCore::FloatPoint>(a2);
      i = v19;
      v11 = IPC::Decoder::decode<WebCore::FloatPoint>(a2);
      v12 = v11;
      v13 = *a2;
      if (*a2)
      {
        if ((v18 & 1) == 0 || (i & 1) == 0 || (v20 & 1) == 0)
        {
          goto LABEL_518;
        }

        v310 = v11;
        v314 = v388[0];
        v444 = *&v388[1];
        *v445 = *&v388[17];
        *&v445[15] = *&v388[32];
        i = 1;
        v16 = v13;
        goto LABEL_28;
      }

      v219 = *(a2 + 1);
      *a2 = 0;
      *(a2 + 1) = 0;
      v220 = *(a2 + 3);
      if (v220)
      {
        v261 = v12;
        if (v219)
        {
          (*(*v220 + 16))(v220, 0);
        }

        v12 = v261;
      }

LABEL_537:
      v221 = *a2;
      v222 = *(a2 + 1);
      *a2 = 0;
      *(a2 + 1) = 0;
      v11 = *(a2 + 3);
      v310 = v12;
      if (!v11 || !v222)
      {
        v13 = 0;
        v16 = 0;
        i = 0;
        v314 = 0;
LABEL_28:
        v313 = 1;
        goto LABEL_31;
      }

      v11 = (*(*v11 + 16))(v11, v221);
      i = 0;
      v13 = *a2;
      v313 = 1;
      v314 = 0;
      v16 = *a2;
LABEL_31:
      v21 = *(a2 + 1);
      v22 = *(a2 + 2);
      if (v21 <= &v22[-v16])
      {
        *a2 = 0;
        *(a2 + 1) = 0;
        v283 = *(a2 + 3);
        if (v283)
        {
          if (v21)
          {
            (*(*v283 + 16))(v283);
            v16 = *a2;
            v21 = *(a2 + 1);
            goto LABEL_699;
          }
        }

        else
        {
          v21 = 0;
        }

        v16 = 0;
      }

      else
      {
        *(a2 + 2) = v22 + 1;
        if (v22)
        {
          v15 = *v22;
          if (v15 < 2)
          {
            LODWORD(v12) = 1;
            goto LABEL_35;
          }

          goto LABEL_702;
        }
      }

LABEL_699:
      *a2 = 0;
      *(a2 + 1) = 0;
      v284 = *(a2 + 3);
      if (!v284)
      {
        v21 = 0;
LABEL_701:
        v16 = 0;
        v15 = 0;
        goto LABEL_702;
      }

      if (!v21)
      {
        goto LABEL_701;
      }

      (*(*v284 + 16))(v284, v16);
      v15 = 0;
      v16 = *a2;
      v21 = *(a2 + 1);
LABEL_702:
      *a2 = 0;
      *(a2 + 1) = 0;
      v285 = *(a2 + 3);
      if (!v285 || !v21)
      {
        *a2 = 0;
        *(a2 + 1) = 0;
        goto LABEL_86;
      }

      v11 = (*(*v285 + 16))(v285, v16);
      LODWORD(v12) = 0;
      v13 = *a2;
      v16 = *a2;
LABEL_35:
      if (v15)
      {
        v23 = v12;
      }

      else
      {
        v23 = 0;
      }

      if (!v16)
      {
        v53 = *(a2 + 1);
        v54 = *(a2 + 3);
        *a2 = 0;
        *(a2 + 1) = 0;
        if (v54 && v53)
        {
          (*(*v54 + 16))(v54, v13);
        }

LABEL_86:
        v15 = v322;
LABEL_87:
        v55 = *a2;
        v56 = *(a2 + 1);
        *a2 = 0;
        *(a2 + 1) = 0;
        v57 = *(a2 + 3);
        if (v57 && v56)
        {
          (*(*v57 + 16))(v57, v55);
        }

        v320 = 0;
        LODWORD(v321) = 0;
        v315 = 1;
        goto LABEL_43;
      }

      if (!v3 || (i & 1) == 0 || (v12 & 1) == 0)
      {
        goto LABEL_518;
      }

      v312 = v23;
      v442 = v444;
      v443[0] = *v445;
      *(v443 + 15) = *&v445[15];
      v320 = 1;
      v15 = v322;
      v315 = 1;
LABEL_43:
      IPC::Decoder::decode<WebCore::LengthPoint>(&v332, a2);
      v24 = *(a2 + 1);
      v25 = *(a2 + 2);
      v26 = *a2;
      if (v24 <= &v25[-*a2])
      {
        *a2 = 0;
        *(a2 + 1) = 0;
        v268 = *(a2 + 3);
        if (v268)
        {
          if (v24)
          {
            (*(*v268 + 16))(v268);
            v24 = *(a2 + 1);
          }
        }

        else
        {
          v24 = 0;
        }
      }

      else
      {
        *(a2 + 2) = v25 + 1;
        if (v25)
        {
          v27 = *v25;
          if (v27 < 5)
          {
            v319 = v27 | 0x100;
            goto LABEL_47;
          }

          goto LABEL_660;
        }
      }

      *a2 = 0;
      *(a2 + 1) = 0;
      v269 = *(a2 + 3);
      if (v269)
      {
        if (v24)
        {
          (*(*v269 + 16))(v269);
          v26 = *a2;
          v24 = *(a2 + 1);
          goto LABEL_660;
        }
      }

      else
      {
        v24 = 0;
      }

      v26 = 0;
LABEL_660:
      *a2 = 0;
      *(a2 + 1) = 0;
      v270 = *(a2 + 3);
      if (v270)
      {
        if (v24)
        {
          (*(*v270 + 16))(v270, v26);
          v319 = 0;
          v26 = *a2;
          v24 = *(a2 + 1);
          goto LABEL_47;
        }
      }

      else
      {
        v24 = 0;
      }

      v26 = 0;
      v319 = 0;
LABEL_47:
      v28 = ((*(a2 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v24 < v28 - v26 || v24 - (v28 - v26) <= 7)
      {
        *a2 = 0;
        *(a2 + 1) = 0;
        v266 = *(a2 + 3);
        if (v266)
        {
          if (v24)
          {
            (*(*v266 + 16))(v266);
            v26 = *a2;
            v24 = *(a2 + 1);
LABEL_643:
            *a2 = 0;
            *(a2 + 1) = 0;
            v267 = *(a2 + 3);
            if (v267 && v24)
            {
              (*(*v267 + 16))(v267, v26);
            }

LABEL_76:
            v47 = *a2;
            v48 = *(a2 + 1);
            *a2 = 0;
            *(a2 + 1) = 0;
            v49 = *(a2 + 3);
            if (!v49 || !v48)
            {
              v50 = 0;
LABEL_78:
              LOBYTE(v329) = 0;
              v331 = 0;
              goto LABEL_79;
            }

            v11 = (*(*v49 + 16))(v49, v47);
            v50 = *a2;
            if (!*a2)
            {
              goto LABEL_78;
            }

            goto LABEL_518;
          }
        }

        else
        {
          v24 = 0;
        }

        v26 = 0;
        goto LABEL_643;
      }

      *(a2 + 2) = v28 + 1;
      if (!v28)
      {
        goto LABEL_643;
      }

      i = *v28;
      v444 = 0uLL;
      if (i >= 0x20000)
      {
        while (1)
        {
          IPC::Decoder::decode<WTF::Ref<WebCore::TransformOperation,WTF::RawPtrTraits<WebCore::TransformOperation>,WTF::DefaultRefDerefTraits<WebCore::TransformOperation>>>(&v361, a2);
          if ((BYTE8(v361) & 1) == 0)
          {
LABEL_75:
            WTF::Vector<WTF::Ref<WebCore::TransformOperation,WTF::RawPtrTraits<WebCore::TransformOperation>,WTF::DefaultRefDerefTraits<WebCore::TransformOperation>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v444, v26);
            goto LABEL_76;
          }

          v38 = HIDWORD(v444);
          if (HIDWORD(v444) != DWORD2(v444))
          {
            break;
          }

          v39 = WTF::Vector<WTF::Ref<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v444, HIDWORD(v444) + 1, &v361);
          v41 = HIDWORD(v444);
          v42 = HIDWORD(v444) + 1;
          v43 = v444;
          v44 = *v39;
          *v39 = 0;
          *(v43 + 8 * v41) = v44;
          HIDWORD(v444) = v42;
          if (BYTE8(v361))
          {
            goto LABEL_68;
          }

LABEL_71:
          if (!--i)
          {
            WTF::Vector<WTF::Ref<WebCore::TransformOperation,WTF::RawPtrTraits<WebCore::TransformOperation>,WTF::DefaultRefDerefTraits<WebCore::TransformOperation>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(&v444, HIDWORD(v444), v40);
            goto LABEL_89;
          }
        }

        v45 = v361;
        *&v361 = 0;
        *(v444 + 8 * HIDWORD(v444)) = v45;
        HIDWORD(v444) = v38 + 1;
LABEL_68:
        v46 = v361;
        *&v361 = 0;
        if (v46)
        {
          if (v46[2] == 1)
          {
            (*(*v46 + 8))(v46);
          }

          else
          {
            --v46[2];
          }
        }

        goto LABEL_71;
      }

      if (i)
      {
        v29 = WTF::fastMalloc(v28, (8 * i));
        DWORD2(v444) = i;
        *&v444 = v29;
        while (1)
        {
          IPC::Decoder::decode<WTF::Ref<WebCore::TransformOperation,WTF::RawPtrTraits<WebCore::TransformOperation>,WTF::DefaultRefDerefTraits<WebCore::TransformOperation>>>(&v361, a2);
          if ((BYTE8(v361) & 1) == 0)
          {
            goto LABEL_75;
          }

          v30 = HIDWORD(v444);
          if (HIDWORD(v444) != DWORD2(v444))
          {
            break;
          }

          v31 = WTF::Vector<WTF::Ref<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v444, HIDWORD(v444) + 1, &v361);
          v32 = HIDWORD(v444);
          v33 = HIDWORD(v444) + 1;
          v34 = v444;
          v35 = *v31;
          *v31 = 0;
          *(v34 + 8 * v32) = v35;
          HIDWORD(v444) = v33;
          if (BYTE8(v361))
          {
            goto LABEL_58;
          }

LABEL_61:
          if (!--i)
          {
            goto LABEL_89;
          }
        }

        v36 = v361;
        *&v361 = 0;
        *(v444 + 8 * HIDWORD(v444)) = v36;
        HIDWORD(v444) = v30 + 1;
LABEL_58:
        v37 = v361;
        *&v361 = 0;
        if (v37)
        {
          if (v37[2] == 1)
          {
            (*(*v37 + 8))(v37);
          }

          else
          {
            --v37[2];
          }
        }

        goto LABEL_61;
      }

LABEL_89:
      v58 = *(&v444 + 1);
      *v388 = v444;
      v444 = 0uLL;
      *&v388[8] = v58;
      v388[16] = 1;
      WTF::Vector<WTF::Ref<WebCore::TransformOperation,WTF::RawPtrTraits<WebCore::TransformOperation>,WTF::DefaultRefDerefTraits<WebCore::TransformOperation>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v444, v26);
      if (*a2)
      {
        v60 = WebCore::TransformOperations::TransformOperations();
        v61 = *(&v444 + 1);
        v329 = v444;
        v444 = 0uLL;
        v330 = v61;
        v331 = 1;
        WTF::Vector<WTF::Ref<WebCore::TransformOperation,WTF::RawPtrTraits<WebCore::TransformOperation>,WTF::DefaultRefDerefTraits<WebCore::TransformOperation>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v60, v62);
        if (v388[16])
        {
          WTF::Vector<WTF::Ref<WebCore::TransformOperation,WTF::RawPtrTraits<WebCore::TransformOperation>,WTF::DefaultRefDerefTraits<WebCore::TransformOperation>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v388, v63);
        }

        goto LABEL_92;
      }

      LOBYTE(v329) = 0;
      v331 = 0;
      WTF::Vector<WTF::Ref<WebCore::TransformOperation,WTF::RawPtrTraits<WebCore::TransformOperation>,WTF::DefaultRefDerefTraits<WebCore::TransformOperation>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v388, v59);
      v50 = *a2;
LABEL_79:
      v51 = *(a2 + 1);
      *a2 = 0;
      *(a2 + 1) = 0;
      v52 = *(a2 + 3);
      if (v52 && v51)
      {
        (*(*v52 + 16))(v52, v50);
      }

LABEL_92:
      IPC::Decoder::decode<WTF::RefPtr<WebCore::TransformOperation,WTF::RawPtrTraits<WebCore::TransformOperation>,WTF::DefaultRefDerefTraits<WebCore::TransformOperation>>>(&v327, a2);
      IPC::Decoder::decode<WTF::RefPtr<WebCore::TransformOperation,WTF::RawPtrTraits<WebCore::TransformOperation>,WTF::DefaultRefDerefTraits<WebCore::TransformOperation>>>(&v325, a2);
      IPC::Decoder::decode<WTF::RefPtr<WebCore::TransformOperation,WTF::RawPtrTraits<WebCore::TransformOperation>,WTF::DefaultRefDerefTraits<WebCore::TransformOperation>>>(&v323, a2);
      v64 = *(a2 + 1);
      v65 = *(a2 + 2);
      v66 = *a2;
      if (v64 <= &v65[-*a2])
      {
        v308 = a1;
        v309 = v15;
        *a2 = 0;
        *(a2 + 1) = 0;
        v271 = *(a2 + 3);
        if (v271)
        {
          if (v64)
          {
            (*(*v271 + 16))(v271);
            v66 = *a2;
            v64 = *(a2 + 1);
            goto LABEL_668;
          }
        }

        else
        {
          v64 = 0;
        }

        v66 = 0;
LABEL_668:
        *a2 = 0;
        *(a2 + 1) = 0;
        v272 = *(a2 + 3);
        if (v272)
        {
          if (v64)
          {
            (*(*v272 + 16))(v272, v66);
            v66 = *a2;
            v64 = *(a2 + 1);
            goto LABEL_680;
          }
        }

        else
        {
          v64 = 0;
        }

        v66 = 0;
LABEL_680:
        *a2 = 0;
        *(a2 + 1) = 0;
        v276 = *(a2 + 3);
        if (v276 && v64)
        {
          (*(*v276 + 16))(v276, v66);
        }

        goto LABEL_709;
      }

      v67 = v65 + 1;
      *(a2 + 2) = v65 + 1;
      if (!v65)
      {
        v308 = a1;
        v309 = v15;
        goto LABEL_668;
      }

      if (*v65 >= 2u)
      {
        v308 = a1;
        v309 = v15;
        goto LABEL_680;
      }

      if (!*v65)
      {
        v3 = 0;
        goto LABEL_115;
      }

      v308 = a1;
      v309 = v15;
      if (v64 <= &v67[-v66])
      {
        v286 = 0;
        v287 = 0;
        *a2 = 0;
        *(a2 + 1) = 0;
        v288 = *(a2 + 3);
        if (v288)
        {
          (*(*v288 + 16))(v288);
          v287 = *a2;
          v286 = *(a2 + 1);
        }

        goto LABEL_706;
      }

      *(a2 + 2) = v65 + 2;
      if (v65 == -1)
      {
        v286 = v64;
        v287 = v66;
LABEL_706:
        *a2 = 0;
        *(a2 + 1) = 0;
        v289 = *(a2 + 3);
        if (v289 && v286)
        {
          (*(*v289 + 16))(v289, v287, v286);
          v66 = *a2;
          v64 = *(a2 + 1);
        }

        else
        {
          v64 = 0;
          v66 = 0;
        }

LABEL_708:
        *a2 = 0;
        *(a2 + 1) = 0;
        v290 = *(a2 + 3);
        if (!v290)
        {
          goto LABEL_709;
        }

        if (!v64)
        {
          goto LABEL_709;
        }

        (*(*v290 + 16))(v290, v66);
        v69 = 0;
        v66 = *a2;
        if (!*a2)
        {
          goto LABEL_709;
        }

        goto LABEL_100;
      }

      v68 = *v67;
      if (v68 >= 4)
      {
        goto LABEL_708;
      }

      v69 = v68 | 0x100;
      if (!v66)
      {
        goto LABEL_709;
      }

LABEL_100:
      if (v69 >= 0x100 && !v69)
      {
        v11 = IPC::Decoder::decode<std::optional<WebCore::Path>>(v388, a2);
        i = *a2;
        if (!*a2)
        {
          v3 = 0;
          goto LABEL_105;
        }

        v13 = BYTE4(v389);
        if ((v389 & 0x100000000) == 0)
        {
          goto LABEL_518;
        }

        WebCore::ReferencePathOperation::create();
        v3 = v444;
LABEL_105:
        if (BYTE4(v389) == 1 && v388[64] == 1 && v388[56] >= 2u && v388[56] != 255)
        {
          v11 = *v388;
          *v388 = 0;
          if (v11)
          {
            v13 = (v11 + 2);
            LODWORD(v12) = atomic_fetch_add(v11 + 2, 0xFFFFFFFF);
            if (v12 == 1)
            {
              goto LABEL_519;
            }
          }
        }

        if (!i)
        {
LABEL_520:
          v212 = *a2;
          v213 = *(a2 + 1);
          *a2 = 0;
          *(a2 + 1) = 0;
          v214 = *(a2 + 3);
          if (!v214 || !v213)
          {
LABEL_709:
            v291 = *a2;
            v292 = *(a2 + 1);
            *a2 = 0;
            *(a2 + 1) = 0;
            v293 = *(a2 + 3);
            if (v293 && v292)
            {
              (*(*v293 + 16))(v293, v291);
            }

            i = 0;
            v3 = 0;
            goto LABEL_711;
          }

          goto LABEL_522;
        }

        goto LABEL_112;
      }

      if (v69 < 0x100 || v69 != 1)
      {
        if (v69 >= 0x100 && v69 == 2)
        {
          v11 = IPC::Decoder::decode<WebCore::CSSBoxType>(a2);
          if (!*a2)
          {
            v227 = *(a2 + 1);
            *a2 = 0;
            *(a2 + 1) = 0;
            v228 = *(a2 + 3);
            if (!v228 || !v227)
            {
              goto LABEL_709;
            }

            v11 = (*(*v228 + 16))(v228, 0);
            goto LABEL_552;
          }

          v13 = v11;
          if (v11 > 0xFFu)
          {
            WebCore::BoxPathOperation::create();
            v3 = *v388;
            if (*a2)
            {
              i = 1;
LABEL_711:
              a1 = v308;
              v15 = v309;
              goto LABEL_116;
            }

LABEL_533:
            if (!v3)
            {
              goto LABEL_709;
            }

LABEL_534:
            if (*(v3 + 2) == 1)
            {
              (*(*v3 + 8))(v3);
            }

            else
            {
              --*(v3 + 2);
            }

            goto LABEL_709;
          }

          goto LABEL_518;
        }

        if (v69 < 0x100 || v69 != 3)
        {
          goto LABEL_709;
        }

        v3 = _ZN3IPC7Decoder6decodeIN7WebCore5Style5AngleIXtlNS2_3CSS5RangeELdfff0000000000000ELd7ff0000000000000EEEdEEEENSt3__18optionalIT_EEv(a2);
        v100 = v99;
        v101 = *(a2 + 1);
        v102 = *(a2 + 2);
        v103 = *a2;
        if (v101 <= &v102[-*a2])
        {
          *a2 = 0;
          *(a2 + 1) = 0;
          v303 = *(a2 + 3);
          if (v303)
          {
            if (v101)
            {
              (*(*v303 + 16))(v303);
              v101 = *(a2 + 1);
            }
          }

          else
          {
            v101 = 0;
          }

          goto LABEL_748;
        }

        *(a2 + 2) = v102 + 1;
        if (!v102)
        {
LABEL_748:
          *a2 = 0;
          *(a2 + 1) = 0;
          v304 = *(a2 + 3);
          if (v304 && v101)
          {
            (*(*v304 + 16))(v304);
          }

          goto LABEL_249;
        }

        i = *v102;
        if (i > 4)
        {
LABEL_249:
          i = 0;
          goto LABEL_250;
        }

        if (*v102 <= 1u || i == 2 || i == 3)
        {
          if (IPC::Decoder::decode<WebCore::Constant<(WebCore::CSSValueID)711>>(a2) > 0xFFu)
          {
            v107 = 0;
            goto LABEL_453;
          }
        }

        else
        {
          if (v103)
          {
            v107 = 0;
            i = 4;
            goto LABEL_453;
          }

          *a2 = 0;
          *(a2 + 1) = 0;
          v255 = *(a2 + 3);
          if (v255)
          {
            (*(*v255 + 16))(v255, 0);
          }

          i = 4;
        }

LABEL_250:
        v104 = *a2;
        v105 = *(a2 + 1);
        *a2 = 0;
        *(a2 + 1) = 0;
        v106 = *(a2 + 3);
        if (v106 && v105)
        {
          (*(*v106 + 16))(v106, v104);
        }

        v107 = 1;
LABEL_453:
        v191 = *(a2 + 1);
        v192 = *(a2 + 2);
        v193 = *a2;
        if (v191 <= &v192[-*a2])
        {
          *a2 = 0;
          *(a2 + 1) = 0;
          v305 = *(a2 + 3);
          if (v305)
          {
            if (v191)
            {
              (*(*v305 + 16))(v305);
              v191 = *(a2 + 1);
            }
          }

          else
          {
            v191 = 0;
          }

LABEL_753:
          *a2 = 0;
          *(a2 + 1) = 0;
          v306 = *(a2 + 3);
          if (v306)
          {
            if (v191)
            {
              (*(*v306 + 16))(v306);
              v193 = *a2;
              v191 = *(a2 + 1);
LABEL_756:
              *a2 = 0;
              *(a2 + 1) = 0;
              v307 = *(a2 + 3);
              if (v307 && v191)
              {
                (*(*v307 + 16))(v307, v193);
              }

              a1 = 0;
              goto LABEL_587;
            }
          }

          else
          {
            v191 = 0;
          }

          v193 = 0;
          goto LABEL_756;
        }

        *(a2 + 2) = v192 + 1;
        if (!v192)
        {
          goto LABEL_753;
        }

        v194 = *v192;
        if (v194 >= 2)
        {
          goto LABEL_756;
        }

        if (!v194)
        {
          a1 = 0;
          v195 = 0x10000;
          goto LABEL_460;
        }

        if (v193)
        {
          v195 = 0x10000;
          a1 = 256;
          goto LABEL_460;
        }

        *a2 = 0;
        *(a2 + 1) = 0;
        v241 = *(a2 + 3);
        if (v241)
        {
          (*(*v241 + 16))(v241, 0);
        }

        a1 = 256;
LABEL_587:
        v242 = *a2;
        v243 = *(a2 + 1);
        *a2 = 0;
        *(a2 + 1) = 0;
        v244 = *(a2 + 3);
        if (v244 && v243)
        {
          (*(*v244 + 16))(v244, v242);
        }

        v195 = 0;
LABEL_460:
        IPC::Decoder::decode<std::optional<WebCore::Style::Position>>(&v349, a2);
        v13 = *a2;
        if (!*a2)
        {
          v388[0] = 0;
          v388[40] = 0;
          a1 = v308;
          goto LABEL_473;
        }

        if ((v100 & 1) == 0)
        {
          goto LABEL_518;
        }

        *&v361 = v3;
        if (v107)
        {
          goto LABEL_518;
        }

        LODWORD(v12) = v195 | a1;
        WORD4(v361) = i << 8;
        v13 = (v195 | a1) >> 16;
        if (!v13)
        {
          goto LABEL_518;
        }

        WORD5(v361) = a1;
        v13 = v356;
        if ((v356 & 1) == 0)
        {
          goto LABEL_518;
        }

        std::__optional_move_base<WebCore::Style::Position,false>::__optional_move_base[abi:sn200100](v362, &v349);
        a1 = v308;
        *v388 = v361;
        *&v388[8] = DWORD2(v361);
        v11 = std::__optional_move_base<WebCore::Style::Position,false>::__optional_move_base[abi:sn200100](&v388[16], v362);
        v388[40] = 1;
        if (v363[0] == 1)
        {
          for (j = 24; j != 8; j -= 8)
          {
            v197 = *&v362[j - 16];
            v12 = v197 & 0xFE000000000000;
            if (v197 != -1 && v12 != 0)
            {
              v367 = v197 & 0xFF00FFFFFFFFFFFFLL;
              WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(&v367);
            }
          }
        }

LABEL_473:
        if (v356 == 1 && v355[0] == 1)
        {
          for (k = 1; k != -1; --k)
          {
            v200 = (&v349)[k];
            v12 = v200 & 0xFE000000000000;
            if (v200 != -1 && v12 != 0)
            {
              *&v361 = v200 & 0xFF00FFFFFFFFFFFFLL;
              WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(&v361);
            }
          }
        }

        if ((v388[40] & 1) == 0)
        {
          v229 = *a2;
          v230 = *(a2 + 1);
          *a2 = 0;
          *(a2 + 1) = 0;
          v11 = *(a2 + 3);
          if (v11)
          {
            if (v230)
            {
              v11 = (*(*v11 + 16))(v11, v229);
            }
          }
        }

        if (!*a2)
        {
          LOBYTE(v444) = 0;
          v445[24] = 0;
          goto LABEL_493;
        }

        v13 = v388[40];
        if ((v388[40] & 1) == 0)
        {
          goto LABEL_518;
        }

        *&v361 = *v388;
        DWORD2(v361) = *&v388[8];
        std::__optional_move_base<WebCore::Style::Position,false>::__optional_move_base[abi:sn200100](v362, &v388[16]);
        *&v444 = v361;
        DWORD2(v444) = DWORD2(v361);
        v11 = std::__optional_move_base<WebCore::Style::Position,false>::__optional_move_base[abi:sn200100](v445, v362);
        v445[24] = 1;
        if (v363[0] == 1)
        {
          for (m = 24; m != 8; m -= 8)
          {
            v203 = *&v362[m - 16];
            if (v203 != -1 && (v203 & 0xFE000000000000) != 0)
            {
              v349 = (v203 & 0xFF00FFFFFFFFFFFFLL);
              WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(&v349);
            }
          }
        }

LABEL_493:
        if (v388[40] == 1 && v388[32] == 1)
        {
          for (n = 24; n != 8; n -= 8)
          {
            v206 = *&v388[n];
            if (v206 != -1 && (v206 & 0xFE000000000000) != 0)
            {
              *&v361 = v206 & 0xFF00FFFFFFFFFFFFLL;
              WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(&v361);
            }
          }
        }

        if ((v445[24] & 1) == 0)
        {
          v231 = *a2;
          v232 = *(a2 + 1);
          *a2 = 0;
          *(a2 + 1) = 0;
          v233 = *(a2 + 3);
          if (!v233 || !v232)
          {
            goto LABEL_562;
          }

          v11 = (*(*v233 + 16))(v233, v231);
          v13 = v445[24];
          v12 = *a2;
          if (!*a2)
          {
            if (v445[24])
            {
              goto LABEL_813;
            }

LABEL_562:
            v234 = 0;
            v3 = 0;
            goto LABEL_563;
          }

          if (v445[24])
          {
            goto LABEL_504;
          }

          goto LABEL_518;
        }

        if (*a2)
        {
LABEL_504:
          v11 = WebCore::RayPathOperation::create();
          v3 = *v388;
          if ((v445[24] & 1) == 0)
          {
LABEL_515:
            v13 = 1;
            goto LABEL_516;
          }

          v208 = 1;
          goto LABEL_506;
        }

LABEL_813:
        v208 = 0;
        v3 = 0;
LABEL_506:
        if (v445[16] == 1)
        {
          v209 = 24;
          i = &v444;
          do
          {
            v210 = *&v445[v209 - 16];
            if (v210 != -1 && (v210 & 0xFE000000000000) != 0)
            {
              *v388 = v210 & 0xFF00FFFFFFFFFFFFLL;
              WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(v388);
            }

            v209 -= 8;
          }

          while (v209 != 8);
        }

        if (v208)
        {
          goto LABEL_515;
        }

        v234 = *a2;
LABEL_563:
        v235 = *(a2 + 1);
        *a2 = 0;
        *(a2 + 1) = 0;
        v11 = *(a2 + 3);
        if (v11 && v235)
        {
          v11 = (*(*v11 + 16))(v11, v234);
        }

        v13 = 0;
LABEL_516:
        v12 = *a2;
        if (!*a2)
        {
          if (!v3)
          {
            LODWORD(v13) = 0;
          }

          if (v13 != 1)
          {
            goto LABEL_709;
          }

          goto LABEL_534;
        }

        if ((v13 & 1) == 0)
        {
          goto LABEL_518;
        }

        goto LABEL_115;
      }

      v96 = *(a2 + 1);
      v97 = *(a2 + 2);
      v3 = &v388[16];
      if (v96 <= &v97[-v66])
      {
        *a2 = 0;
        *(a2 + 1) = 0;
        v301 = *(a2 + 3);
        if (v301)
        {
          if (v96)
          {
            (*(*v301 + 16))(v301);
            v66 = *a2;
            v96 = *(a2 + 1);
            goto LABEL_740;
          }
        }

        else
        {
          v96 = 0;
        }

        v66 = 0;
LABEL_740:
        *a2 = 0;
        *(a2 + 1) = 0;
        v302 = *(a2 + 3);
        if (v302 && v96)
        {
          (*(*v302 + 16))(v302, v66);
        }

        goto LABEL_223;
      }

      *(a2 + 2) = v97 + 1;
      if (!v97)
      {
        goto LABEL_740;
      }

      v98 = *v97;
      if (v98 >= 6)
      {
LABEL_223:
        v388[0] = 0;
        LOBYTE(v405) = 0;
        goto LABEL_414;
      }

      if (!*v97)
      {
        _ZN3IPC7Decoder6decodeIN5mpark7variantIJN7WebCore5Style16LengthPercentageIXtlNS4_3CSS5RangeELd0000000000000000ELd7ff0000000000000EEEfEENS3_IJNS4_8ConstantILNS4_10CSSValueIDE711EEENSA_ILSB_710EEENSA_ILSB_713EEENSA_ILSB_712EEEEEEEEEEENSt3__18optionalIT_EEv(v385, a2);
        IPC::Decoder::decode<std::optional<WebCore::Style::Position>>(&v376, a2);
        if (!*a2)
        {
          LOBYTE(v361) = 0;
          v364 = 0;
          goto LABEL_276;
        }

        v13 = v386[0];
        if (v386[0])
        {
          v11 = _ZN5mpark6detail16move_constructorINS0_6traitsIJN7WebCore5Style16LengthPercentageIXtlNS3_3CSS5RangeELd0000000000000000ELd7ff0000000000000EEEfEENS_7variantIJNS3_8ConstantILNS3_10CSSValueIDE711EEENSA_ILSB_710EEENSA_ILSB_713EEENSA_ILSB_712EEEEEEEEELNS0_5TraitE1EEC2EOSJ_(&v367, v385);
          v13 = v379;
          if (v379)
          {
            std::__optional_move_base<WebCore::Style::Position,false>::__optional_move_base[abi:sn200100](v373, &v376);
            _ZN5mpark6detail16move_constructorINS0_6traitsIJN7WebCore5Style16LengthPercentageIXtlNS3_3CSS5RangeELd0000000000000000ELd7ff0000000000000EEEfEENS_7variantIJNS3_8ConstantILNS3_10CSSValueIDE711EEENSA_ILSB_710EEENSA_ILSB_713EEENSA_ILSB_712EEEEEEEEELNS0_5TraitE1EEC2EOSJ_(&v361, &v367);
            std::__optional_move_base<WebCore::Style::Position,false>::__optional_move_base[abi:sn200100](v362, v373);
            v364 = 1;
            if (v374[0] == 1)
            {
              for (ii = 24; ii != 8; ii -= 8)
              {
                v115 = *(&v367 + ii);
                if (v115 != -1 && (v115 & 0xFE000000000000) != 0)
                {
                  v383[0] = v115 & 0xFF00FFFFFFFFFFFFLL;
                  WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(v383);
                }
              }
            }

            v11 = _ZN5mpark6detail16move_constructorINS0_6traitsIJN7WebCore5Style16LengthPercentageIXtlNS3_3CSS5RangeELd0000000000000000ELd7ff0000000000000EEEfEENS_7variantIJNS3_8ConstantILNS3_10CSSValueIDE711EEENSA_ILSB_710EEENSA_ILSB_713EEENSA_ILSB_712EEEEEEEEELNS0_5TraitE1EED2Ev(&v367);
LABEL_276:
            if (v379 == 1 && v378 == 1)
            {
              for (jj = 8; jj != -8; jj -= 8)
              {
                v118 = *(&v376 + jj);
                v12 = v118 & 0xFE000000000000;
                if (v118 != -1 && v12 != 0)
                {
                  v367 = v118 & 0xFF00FFFFFFFFFFFFLL;
                  WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(&v367);
                }
              }
            }

            if (v386[0] == 1)
            {
              v11 = _ZN5mpark6detail16move_constructorINS0_6traitsIJN7WebCore5Style16LengthPercentageIXtlNS3_3CSS5RangeELd0000000000000000ELd7ff0000000000000EEEfEENS_7variantIJNS3_8ConstantILNS3_10CSSValueIDE711EEENSA_ILSB_710EEENSA_ILSB_713EEENSA_ILSB_712EEEEEEEEELNS0_5TraitE1EED2Ev(v385);
            }

            if ((v364 & 1) == 0)
            {
              v236 = *a2;
              v237 = *(a2 + 1);
              *a2 = 0;
              *(a2 + 1) = 0;
              v11 = *(a2 + 3);
              if (v11)
              {
                if (v237)
                {
                  v11 = (*(*v11 + 16))(v11, v236);
                }
              }
            }

            if (!*a2)
            {
              LOBYTE(v349) = 0;
              v358 = 0;
              goto LABEL_299;
            }

            v13 = v364;
            if (v364)
            {
              _ZN5mpark6detail16move_constructorINS0_6traitsIJN7WebCore5Style16LengthPercentageIXtlNS3_3CSS5RangeELd0000000000000000ELd7ff0000000000000EEEfEENS_7variantIJNS3_8ConstantILNS3_10CSSValueIDE711EEENSA_ILSB_710EEENSA_ILSB_713EEENSA_ILSB_712EEEEEEEEELNS0_5TraitE1EEC2EOSJ_(&v367, &v361);
              std::__optional_move_base<WebCore::Style::Position,false>::__optional_move_base[abi:sn200100](v373, v362);
              _ZN5mpark6detail16move_constructorINS0_6traitsIJN7WebCore5Style16LengthPercentageIXtlNS3_3CSS5RangeELd0000000000000000ELd7ff0000000000000EEEfEENS_7variantIJNS3_8ConstantILNS3_10CSSValueIDE711EEENSA_ILSB_710EEENSA_ILSB_713EEENSA_ILSB_712EEEEEEEEELNS0_5TraitE1EEC2EOSJ_(&v349, &v367);
              std::__optional_move_base<WebCore::Style::Position,false>::__optional_move_base[abi:sn200100](v355, v373);
              v358 = 1;
              if (v374[0] == 1)
              {
                for (kk = 24; kk != 8; kk -= 8)
                {
                  v121 = *(&v367 + kk);
                  if (v121 != -1 && (v121 & 0xFE000000000000) != 0)
                  {
                    v376 = v121 & 0xFF00FFFFFFFFFFFFLL;
                    WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(&v376);
                  }
                }
              }

              _ZN5mpark6detail16move_constructorINS0_6traitsIJN7WebCore5Style16LengthPercentageIXtlNS3_3CSS5RangeELd0000000000000000ELd7ff0000000000000EEEfEENS_7variantIJNS3_8ConstantILNS3_10CSSValueIDE711EEENSA_ILSB_710EEENSA_ILSB_713EEENSA_ILSB_712EEEEEEEEELNS0_5TraitE1EED2Ev(&v367);
LABEL_299:
              if (v364 == 1)
              {
                if (v363[0] == 1)
                {
                  for (mm = 24; mm != 8; mm -= 8)
                  {
                    v124 = *&v362[mm - 16];
                    if (v124 != -1 && (v124 & 0xFE000000000000) != 0)
                    {
                      v367 = v124 & 0xFF00FFFFFFFFFFFFLL;
                      WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(&v367);
                    }
                  }
                }

                _ZN5mpark6detail16move_constructorINS0_6traitsIJN7WebCore5Style16LengthPercentageIXtlNS3_3CSS5RangeELd0000000000000000ELd7ff0000000000000EEEfEENS_7variantIJNS3_8ConstantILNS3_10CSSValueIDE711EEENSA_ILSB_710EEENSA_ILSB_713EEENSA_ILSB_712EEEEEEEEELNS0_5TraitE1EED2Ev(&v361);
              }

              if (v358 & 1) != 0 || (v238 = *a2, v239 = *(a2 + 1), *a2 = 0, *(a2 + 1) = 0, (v240 = *(a2 + 3)) != 0) && v239 && ((*(*v240 + 16))(v240, v238), (v358))
              {
                _ZN5mpark6detail16move_constructorINS0_6traitsIJN7WebCore5Style16LengthPercentageIXtlNS3_3CSS5RangeELd0000000000000000ELd7ff0000000000000EEEfEENS_7variantIJNS3_8ConstantILNS3_10CSSValueIDE711EEENSA_ILSB_710EEENSA_ILSB_713EEENSA_ILSB_712EEEEEEEEELNS0_5TraitE1EEC2EOSJ_(v388, &v349);
                std::__optional_move_base<WebCore::Style::Position,false>::__optional_move_base[abi:sn200100](&v388[16], v355);
                LOBYTE(v400) = 0;
                LOBYTE(v405) = 1;
                if (v358)
                {
                  if (v357[0] == 1)
                  {
                    for (nn = 3; nn != 1; --nn)
                    {
                      v127 = (&v349)[nn];
                      if (v127 != -1 && (v127 & 0xFE000000000000) != 0)
                      {
                        *&v361 = v127 & 0xFF00FFFFFFFFFFFFLL;
                        WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(&v361);
                      }
                    }
                  }

                  _ZN5mpark6detail16move_constructorINS0_6traitsIJN7WebCore5Style16LengthPercentageIXtlNS3_3CSS5RangeELd0000000000000000ELd7ff0000000000000EEEfEENS_7variantIJNS3_8ConstantILNS3_10CSSValueIDE711EEENSA_ILSB_710EEENSA_ILSB_713EEENSA_ILSB_712EEEEEEEEELNS0_5TraitE1EED2Ev(&v349);
                }

                goto LABEL_414;
              }

              goto LABEL_223;
            }
          }
        }

        goto LABEL_518;
      }

      if (v98 == 1)
      {
        v11 = _ZN3IPC7Decoder6decodeIN5mpark7variantIJN7WebCore5Style16LengthPercentageIXtlNS4_3CSS5RangeELd0000000000000000ELd7ff0000000000000EEEfEENS3_IJNS4_8ConstantILNS4_10CSSValueIDE711EEENSA_ILSB_710EEENSA_ILSB_713EEENSA_ILSB_712EEEEEEEEEEENSt3__18optionalIT_EEv(v381, a2);
        v12 = &v367;
        v108 = v373;
        if (v382 != 1)
        {
          LOBYTE(v367) = 0;
          v374[0] = 0;
          goto LABEL_330;
        }

        v11 = _ZN3IPC7Decoder6decodeIN5mpark7variantIJN7WebCore5Style16LengthPercentageIXtlNS4_3CSS5RangeELd0000000000000000ELd7ff0000000000000EEEfEENS3_IJNS4_8ConstantILNS4_10CSSValueIDE711EEENSA_ILSB_710EEENSA_ILSB_713EEENSA_ILSB_712EEEEEEEEEEENSt3__18optionalIT_EEv(v383, a2);
        if (v384 == 1)
        {
          v13 = v382;
          if (v382)
          {
            v11 = _ZN5mpark6detail16move_constructorINS0_6traitsIJN7WebCore5Style16LengthPercentageIXtlNS3_3CSS5RangeELd0000000000000000ELd7ff0000000000000EEEfEENS_7variantIJNS3_8ConstantILNS3_10CSSValueIDE711EEENSA_ILSB_710EEENSA_ILSB_713EEENSA_ILSB_712EEEEEEEEELNS0_5TraitE1EEC2EOSJ_(v385, v381);
            v13 = v384;
            if (v384)
            {
              _ZN5mpark6detail16move_constructorINS0_6traitsIJN7WebCore5Style16LengthPercentageIXtlNS3_3CSS5RangeELd0000000000000000ELd7ff0000000000000EEEfEENS_7variantIJNS3_8ConstantILNS3_10CSSValueIDE711EEENSA_ILSB_710EEENSA_ILSB_713EEENSA_ILSB_712EEEEEEEEELNS0_5TraitE1EEC2EOSJ_(v386, v383);
              v109 = 0;
              v110 = &v367;
              v111 = v385;
              do
              {
                v112 = v109;
                _ZN5mpark6detail16move_constructorINS0_6traitsIJN7WebCore5Style16LengthPercentageIXtlNS3_3CSS5RangeELd0000000000000000ELd7ff0000000000000EEEfEENS_7variantIJNS3_8ConstantILNS3_10CSSValueIDE711EEENSA_ILSB_710EEENSA_ILSB_713EEENSA_ILSB_712EEEEEEEEELNS0_5TraitE1EEC2EOSJ_(v110, v111);
                v109 = 1;
                v111 = v386;
                v110 = v373;
              }

              while ((v112 & 1) == 0);
              v374[0] = 1;
              for (i1 = 16; i1 != -16; i1 -= 16)
              {
                v11 = _ZN5mpark6detail16move_constructorINS0_6traitsIJN7WebCore5Style16LengthPercentageIXtlNS3_3CSS5RangeELd0000000000000000ELd7ff0000000000000EEEfEENS_7variantIJNS3_8ConstantILNS3_10CSSValueIDE711EEENSA_ILSB_710EEENSA_ILSB_713EEENSA_ILSB_712EEEEEEEEELNS0_5TraitE1EED2Ev(&v385[i1]);
              }

              if (v384)
              {
                v11 = _ZN5mpark6detail16move_constructorINS0_6traitsIJN7WebCore5Style16LengthPercentageIXtlNS3_3CSS5RangeELd0000000000000000ELd7ff0000000000000EEEfEENS_7variantIJNS3_8ConstantILNS3_10CSSValueIDE711EEENSA_ILSB_710EEENSA_ILSB_713EEENSA_ILSB_712EEEEEEEEELNS0_5TraitE1EED2Ev(v383);
              }

              goto LABEL_328;
            }
          }
        }

        else
        {
          LOBYTE(v367) = 0;
          v374[0] = 0;
LABEL_328:
          if (v382)
          {
            v11 = _ZN5mpark6detail16move_constructorINS0_6traitsIJN7WebCore5Style16LengthPercentageIXtlNS3_3CSS5RangeELd0000000000000000ELd7ff0000000000000EEEfEENS_7variantIJNS3_8ConstantILNS3_10CSSValueIDE711EEENSA_ILSB_710EEENSA_ILSB_713EEENSA_ILSB_712EEEEEEEEELNS0_5TraitE1EED2Ev(v381);
          }

LABEL_330:
          if ((v374[0] & 1) == 0)
          {
            v245 = *a2;
            v246 = *(a2 + 1);
            *a2 = 0;
            *(a2 + 1) = 0;
            v11 = *(a2 + 3);
            if (v11)
            {
              if (v246)
              {
                v11 = (*(*v11 + 16))(v11, v245);
              }
            }
          }

          i = &v378;
          if (!*a2)
          {
            LOBYTE(v376) = 0;
            v380 = 0;
            goto LABEL_339;
          }

          v13 = v374[0];
          if (v374[0] == 1)
          {
            v129 = 0;
            a1 = v386;
            v130 = &v367;
            v131 = v385;
            do
            {
              v132 = v129;
              _ZN5mpark6detail16move_constructorINS0_6traitsIJN7WebCore5Style16LengthPercentageIXtlNS3_3CSS5RangeELd0000000000000000ELd7ff0000000000000EEEfEENS_7variantIJNS3_8ConstantILNS3_10CSSValueIDE711EEENSA_ILSB_710EEENSA_ILSB_713EEENSA_ILSB_712EEEEEEEEELNS0_5TraitE1EEC2EOSJ_(v131, v130);
              v129 = 1;
              v131 = v386;
              v130 = v373;
            }

            while ((v132 & 1) == 0);
            v133 = 0;
            v134 = &v376;
            v135 = v385;
            do
            {
              v136 = v133;
              _ZN5mpark6detail16move_constructorINS0_6traitsIJN7WebCore5Style16LengthPercentageIXtlNS3_3CSS5RangeELd0000000000000000ELd7ff0000000000000EEEfEENS_7variantIJNS3_8ConstantILNS3_10CSSValueIDE711EEENSA_ILSB_710EEENSA_ILSB_713EEENSA_ILSB_712EEEEEEEEELNS0_5TraitE1EEC2EOSJ_(v134, v135);
              v133 = 1;
              v135 = v386;
              v134 = &v378;
            }

            while ((v136 & 1) == 0);
            v380 = 1;
            for (i2 = 16; i2 != -16; i2 -= 16)
            {
              _ZN5mpark6detail16move_constructorINS0_6traitsIJN7WebCore5Style16LengthPercentageIXtlNS3_3CSS5RangeELd0000000000000000ELd7ff0000000000000EEEfEENS_7variantIJNS3_8ConstantILNS3_10CSSValueIDE711EEENSA_ILSB_710EEENSA_ILSB_713EEENSA_ILSB_712EEEEEEEEELNS0_5TraitE1EED2Ev(&v385[i2]);
            }

LABEL_339:
            if (v374[0] == 1)
            {
              v138 = -32;
              do
              {
                _ZN5mpark6detail16move_constructorINS0_6traitsIJN7WebCore5Style16LengthPercentageIXtlNS3_3CSS5RangeELd0000000000000000ELd7ff0000000000000EEEfEENS_7variantIJNS3_8ConstantILNS3_10CSSValueIDE711EEENSA_ILSB_710EEENSA_ILSB_713EEENSA_ILSB_712EEEEEEEEELNS0_5TraitE1EED2Ev(v108);
                v108 -= 16;
                v138 += 16;
              }

              while (v138);
            }

            if ((v380 & 1) == 0)
            {
              v247 = *a2;
              v248 = *(a2 + 1);
              *a2 = 0;
              *(a2 + 1) = 0;
              v249 = *(a2 + 3);
              if (v249)
              {
                if (v248)
                {
                  (*(*v249 + 16))(v249, v247);
                }
              }
            }

            IPC::Decoder::decode<std::optional<WebCore::Style::Position>>(v385, a2);
            v139 = v362;
            if (!*a2)
            {
              LOBYTE(v361) = 0;
              v366 = 0;
              goto LABEL_360;
            }

            v13 = v380;
            if (v380 == 1)
            {
              v140 = 0;
              a1 = v373;
              v141 = &v376;
              v142 = &v367;
              do
              {
                v143 = v140;
                v11 = _ZN5mpark6detail16move_constructorINS0_6traitsIJN7WebCore5Style16LengthPercentageIXtlNS3_3CSS5RangeELd0000000000000000ELd7ff0000000000000EEEfEENS_7variantIJNS3_8ConstantILNS3_10CSSValueIDE711EEENSA_ILSB_710EEENSA_ILSB_713EEENSA_ILSB_712EEEEEEEEELNS0_5TraitE1EEC2EOSJ_(v142, v141);
                v140 = 1;
                v142 = v373;
                v141 = &v378;
              }

              while ((v143 & 1) == 0);
              v13 = v387;
              if (v387)
              {
                std::__optional_move_base<WebCore::Style::Position,false>::__optional_move_base[abi:sn200100](v374, v385);
                v144 = 0;
                v145 = &v361;
                v146 = &v367;
                do
                {
                  v147 = v144;
                  _ZN5mpark6detail16move_constructorINS0_6traitsIJN7WebCore5Style16LengthPercentageIXtlNS3_3CSS5RangeELd0000000000000000ELd7ff0000000000000EEEfEENS_7variantIJNS3_8ConstantILNS3_10CSSValueIDE711EEENSA_ILSB_710EEENSA_ILSB_713EEENSA_ILSB_712EEEEEEEEELNS0_5TraitE1EEC2EOSJ_(v145, v146);
                  v15 = 0;
                  v144 = 1;
                  v146 = v373;
                  v145 = v362;
                }

                while ((v147 & 1) == 0);
                std::__optional_move_base<WebCore::Style::Position,false>::__optional_move_base[abi:sn200100](v363, v374);
                v366 = 1;
                if (v375 == 1)
                {
                  for (i3 = 40; i3 != 24; i3 -= 8)
                  {
                    v149 = *(&v367 + i3);
                    if (v149 != -1 && (v149 & 0xFE000000000000) != 0)
                    {
                      v383[0] = v149 & 0xFF00FFFFFFFFFFFFLL;
                      WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(v383);
                    }
                  }
                }

                for (i4 = 16; i4 != -16; i4 -= 16)
                {
                  v11 = _ZN5mpark6detail16move_constructorINS0_6traitsIJN7WebCore5Style16LengthPercentageIXtlNS3_3CSS5RangeELd0000000000000000ELd7ff0000000000000EEEfEENS_7variantIJNS3_8ConstantILNS3_10CSSValueIDE711EEENSA_ILSB_710EEENSA_ILSB_713EEENSA_ILSB_712EEEEEEEEELNS0_5TraitE1EED2Ev(&v367 + i4);
                }

LABEL_360:
                if (v387 == 1 && v386[0] == 1)
                {
                  for (i5 = 8; i5 != -8; i5 -= 8)
                  {
                    v153 = *&v385[i5];
                    v12 = v153 & 0xFE000000000000;
                    if (v153 != -1 && v12 != 0)
                    {
                      v367 = v153 & 0xFF00FFFFFFFFFFFFLL;
                      WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(&v367);
                    }
                  }
                }

                if (v380 == 1)
                {
                  v155 = -32;
                  do
                  {
                    v11 = _ZN5mpark6detail16move_constructorINS0_6traitsIJN7WebCore5Style16LengthPercentageIXtlNS3_3CSS5RangeELd0000000000000000ELd7ff0000000000000EEEfEENS_7variantIJNS3_8ConstantILNS3_10CSSValueIDE711EEENSA_ILSB_710EEENSA_ILSB_713EEENSA_ILSB_712EEEEEEEEELNS0_5TraitE1EED2Ev(i);
                    i -= 16;
                    v155 += 16;
                  }

                  while (v155);
                }

                if ((v366 & 1) == 0)
                {
                  v250 = *a2;
                  v251 = *(a2 + 1);
                  *a2 = 0;
                  *(a2 + 1) = 0;
                  v11 = *(a2 + 3);
                  if (v11)
                  {
                    if (v251)
                    {
                      v11 = (*(*v11 + 16))(v11, v250);
                    }
                  }
                }

                v156 = v355;
                if (!*a2)
                {
                  LOBYTE(v349) = 0;
                  v360 = 0;
                  goto LABEL_389;
                }

                v13 = v366;
                if (v366 == 1)
                {
                  v157 = 0;
                  v158 = &v361;
                  v159 = &v367;
                  do
                  {
                    v160 = v157;
                    _ZN5mpark6detail16move_constructorINS0_6traitsIJN7WebCore5Style16LengthPercentageIXtlNS3_3CSS5RangeELd0000000000000000ELd7ff0000000000000EEEfEENS_7variantIJNS3_8ConstantILNS3_10CSSValueIDE711EEENSA_ILSB_710EEENSA_ILSB_713EEENSA_ILSB_712EEEEEEEEELNS0_5TraitE1EEC2EOSJ_(v159, v158);
                    v157 = 1;
                    v159 = v373;
                    v158 = v362;
                  }

                  while ((v160 & 1) == 0);
                  std::__optional_move_base<WebCore::Style::Position,false>::__optional_move_base[abi:sn200100](v374, v363);
                  v161 = 0;
                  i = &v349;
                  v162 = &v367;
                  do
                  {
                    v163 = v161;
                    _ZN5mpark6detail16move_constructorINS0_6traitsIJN7WebCore5Style16LengthPercentageIXtlNS3_3CSS5RangeELd0000000000000000ELd7ff0000000000000EEEfEENS_7variantIJNS3_8ConstantILNS3_10CSSValueIDE711EEENSA_ILSB_710EEENSA_ILSB_713EEENSA_ILSB_712EEEEEEEEELNS0_5TraitE1EEC2EOSJ_(i, v162);
                    v161 = 1;
                    v162 = v373;
                    i = v355;
                  }

                  while ((v163 & 1) == 0);
                  std::__optional_move_base<WebCore::Style::Position,false>::__optional_move_base[abi:sn200100](v357, v374);
                  v360 = 1;
                  if (v375 == 1)
                  {
                    for (i6 = 40; i6 != 24; i6 -= 8)
                    {
                      v165 = *(&v367 + i6);
                      if (v165 != -1 && (v165 & 0xFE000000000000) != 0)
                      {
                        v376 = v165 & 0xFF00FFFFFFFFFFFFLL;
                        WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(&v376);
                      }
                    }
                  }

                  for (i7 = 16; i7 != -16; i7 -= 16)
                  {
                    _ZN5mpark6detail16move_constructorINS0_6traitsIJN7WebCore5Style16LengthPercentageIXtlNS3_3CSS5RangeELd0000000000000000ELd7ff0000000000000EEEfEENS_7variantIJNS3_8ConstantILNS3_10CSSValueIDE711EEENSA_ILSB_710EEENSA_ILSB_713EEENSA_ILSB_712EEEEEEEEELNS0_5TraitE1EED2Ev(&v367 + i7);
                  }

LABEL_389:
                  if (v366 == 1)
                  {
                    if (v365 == 1)
                    {
                      for (i8 = 40; i8 != 24; i8 -= 8)
                      {
                        v169 = *&v362[i8 - 16];
                        if (v169 != -1 && (v169 & 0xFE000000000000) != 0)
                        {
                          v367 = v169 & 0xFF00FFFFFFFFFFFFLL;
                          WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(&v367);
                        }
                      }
                    }

                    v171 = -32;
                    do
                    {
                      _ZN5mpark6detail16move_constructorINS0_6traitsIJN7WebCore5Style16LengthPercentageIXtlNS3_3CSS5RangeELd0000000000000000ELd7ff0000000000000EEEfEENS_7variantIJNS3_8ConstantILNS3_10CSSValueIDE711EEENSA_ILSB_710EEENSA_ILSB_713EEENSA_ILSB_712EEEEEEEEELNS0_5TraitE1EED2Ev(v139);
                      v139 -= 16;
                      v171 += 16;
                    }

                    while (v171);
                  }

                  if (v360 == 1 || (v252 = *a2, v253 = *(a2 + 1), *a2 = 0, *(a2 + 1) = 0, (v254 = *(a2 + 3)) != 0) && v253 && ((*(*v254 + 16))(v254, v252), (v360 & 1) != 0))
                  {
                    v172 = 0;
                    i = v388;
                    v173 = &v349;
                    do
                    {
                      v174 = v172;
                      _ZN5mpark6detail16move_constructorINS0_6traitsIJN7WebCore5Style16LengthPercentageIXtlNS3_3CSS5RangeELd0000000000000000ELd7ff0000000000000EEEfEENS_7variantIJNS3_8ConstantILNS3_10CSSValueIDE711EEENSA_ILSB_710EEENSA_ILSB_713EEENSA_ILSB_712EEEEEEEEELNS0_5TraitE1EEC2EOSJ_(i, v173);
                      v172 = 1;
                      v173 = v355;
                      i = &v388[16];
                    }

                    while ((v174 & 1) == 0);
                    std::__optional_move_base<WebCore::Style::Position,false>::__optional_move_base[abi:sn200100](&v388[32], v357);
                    LOBYTE(v400) = 1;
                    LOBYTE(v405) = 1;
                    if (v360)
                    {
                      if (v359 == 1)
                      {
                        for (i9 = 5; i9 != 3; --i9)
                        {
                          v176 = (&v349)[i9];
                          if (v176 != -1 && (v176 & 0xFE000000000000) != 0)
                          {
                            *&v361 = v176 & 0xFF00FFFFFFFFFFFFLL;
                            WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(&v361);
                          }
                        }
                      }

                      v178 = -32;
                      do
                      {
                        _ZN5mpark6detail16move_constructorINS0_6traitsIJN7WebCore5Style16LengthPercentageIXtlNS3_3CSS5RangeELd0000000000000000ELd7ff0000000000000EEEfEENS_7variantIJNS3_8ConstantILNS3_10CSSValueIDE711EEENSA_ILSB_710EEENSA_ILSB_713EEENSA_ILSB_712EEEEEEEEELNS0_5TraitE1EED2Ev(v156);
                        v156 -= 16;
                        v178 += 16;
                      }

                      while (v178);
                    }

                    goto LABEL_414;
                  }

                  goto LABEL_223;
                }
              }
            }
          }
        }

        goto LABEL_518;
      }

      IPC::ArgumentCoder<mpark::variant<WebCore::FunctionNotation<(WebCore::CSSValueID)273,WebCore::Style::Circle>,WebCore::FunctionNotation<(WebCore::CSSValueID)709,WebCore::Style::Ellipse>,WebCore::FunctionNotation<(WebCore::CSSValueID)8,WebCore::Style::Inset>,WebCore::FunctionNotation<(WebCore::CSSValueID)904,WebCore::Style::Path>,WebCore::FunctionNotation<(WebCore::CSSValueID)799,WebCore::Style::Polygon>,WebCore::FunctionNotation<(WebCore::CSSValueID)800,WebCore::Style::Shape>>,void>::decode<IPC::Decoder,0ul,1ul>(v388, a2, v98);
LABEL_414:
      if ((v405 & 1) == 0)
      {
        v223 = *a2;
        v224 = *(a2 + 1);
        *a2 = 0;
        *(a2 + 1) = 0;
        v225 = *(a2 + 3);
        if (v225)
        {
          if (v224)
          {
            (*(*v225 + 16))(v225, v223);
          }
        }
      }

      v11 = IPC::Decoder::decode<WebCore::CSSBoxType>(a2);
      v15 = v309;
      a1 = *a2;
      if (!*a2)
      {
        v3 = 0;
        goto LABEL_443;
      }

      v13 = v405;
      if ((v405 & 1) == 0)
      {
        goto LABEL_518;
      }

      v180 = v11;
      LOBYTE(v444) = 0;
      v446 = -1;
      if (v400 <= 2u)
      {
        if (v400)
        {
          if (v400 == 1)
          {
            v181 = 0;
            v182 = v388;
            i = &v444;
            do
            {
              v183 = v181;
              _ZN5mpark6detail16move_constructorINS0_6traitsIJN7WebCore5Style16LengthPercentageIXtlNS3_3CSS5RangeELd0000000000000000ELd7ff0000000000000EEEfEENS_7variantIJNS3_8ConstantILNS3_10CSSValueIDE711EEENSA_ILSB_710EEENSA_ILSB_713EEENSA_ILSB_712EEEEEEEEELNS0_5TraitE1EEC2EOSJ_(i, v182);
              v181 = 1;
              i = v445;
              v182 = &v388[16];
            }

            while ((v183 & 1) == 0);
            v11 = std::__optional_move_base<WebCore::Style::Position,false>::__optional_move_base[abi:sn200100](&v445[16], &v388[32]);
          }

          else
          {
            v11 = WebCore::Style::Inset::Inset(&v444, v388);
          }
        }

        else
        {
          _ZN5mpark6detail16move_constructorINS0_6traitsIJN7WebCore5Style16LengthPercentageIXtlNS3_3CSS5RangeELd0000000000000000ELd7ff0000000000000EEEfEENS_7variantIJNS3_8ConstantILNS3_10CSSValueIDE711EEENSA_ILSB_710EEENSA_ILSB_713EEENSA_ILSB_712EEEEEEEEELNS0_5TraitE1EEC2EOSJ_(&v444, v388);
          v11 = std::__optional_move_base<WebCore::Style::Position,false>::__optional_move_base[abi:sn200100](v445, &v388[16]);
        }
      }

      else if (v400 > 4u)
      {
        if (v400 != 5)
        {
          goto LABEL_439;
        }

        v184 = 0;
        i = 0;
        LOWORD(v444) = *v388;
        v12 = v388;
        BYTE2(v444) = v388[2];
        v3 = &v388[8];
        do
        {
          v185 = v184;
          v186 = *&v388[8 * i + 8];
          if (v186 == -1)
          {
            *&v445[8 * i - 8] = -1;
          }

          else
          {
            v349 = &v445[8 * i - 8];
            v11 = _ZN3WTF12typeForIndexIN5mpark7variantIJN7WebCore5Style6LengthIXtlNS3_3CSS5RangeELdfff0000000000000ELd7ff0000000000000EEEfEENS4_10PercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEENS4_22UnevaluatedCalculationINS6_16LengthPercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEEEEEEEZNS_24CompactVariantOperationsIJS8_SA_SE_EE14payloadForDataIJZNSH_4moveERyyEUlTyRT_E_EEEDcyDpOT_EUlTyvE_EESN_mOT0_(BYTE6(v186), v186, &v349);
          }

          *&v388[8 * i + 8] = -1;
          v184 = 1;
          i = 1;
        }

        while ((v185 & 1) == 0);
        v187 = *&v388[24];
        *&v388[24] = 0;
        *&v445[8] = v187;
        v188 = *&v388[32];
        *&v388[32] = 0;
        *&v445[16] = v188;
        v15 = v309;
      }

      else if (v400 == 3)
      {
        LOWORD(v444) = *v388;
        BYTE2(v444) = v388[2];
        *(&v444 + 1) = 0;
        if (_MergedGlobals_48)
        {
          LODWORD(v12) = dword_1ED641AB8[0] + 1;
        }

        else
        {
          qword_1ED641B08 = 0;
          unk_1ED641AF8 = 0u;
          unk_1ED641AE8 = 0u;
          unk_1ED641AD8 = 0u;
          unk_1ED641AC8 = 0u;
          *dword_1ED641AB8 = 0u;
          LODWORD(v12) = 2;
          _MergedGlobals_48 = 1;
        }

        dword_1ED641AB8[0] = v12;
        *v445 = *&v388[16];
        *&v388[16] = dword_1ED641AB8;
        *&v445[8] = *&v388[24];
      }

      else
      {
        LOWORD(v444) = *v388;
        BYTE2(v444) = v388[2];
        v189 = *&v388[8];
        *&v388[8] = 0;
        *(&v444 + 1) = v189;
        v190 = *&v388[16];
        *&v388[16] = 0;
        *v445 = v190;
      }

      v446 = v400;
LABEL_439:
      v13 = v180;
      if (v180 <= 0xFFu)
      {
        goto LABEL_518;
      }

      WebCore::ShapePathOperation::create();
      v3 = v367;
      v367 = 0;
      if (v446 != 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WebCore::FunctionNotation<(WebCore::CSSValueID)273,WebCore::Style::Circle>,WebCore::FunctionNotation<(WebCore::CSSValueID)709,WebCore::Style::Ellipse>,WebCore::FunctionNotation<(WebCore::CSSValueID)8,WebCore::Style::Inset>,WebCore::FunctionNotation<(WebCore::CSSValueID)904,WebCore::Style::Path>,WebCore::FunctionNotation<(WebCore::CSSValueID)799,WebCore::Style::Polygon>,WebCore::FunctionNotation<(WebCore::CSSValueID)800,WebCore::Style::Shape>>,(mpark::detail::Trait)1> &>(&v444, v179);
      }

      v446 = -1;
LABEL_443:
      if (v405 == 1 && v400 != 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WebCore::FunctionNotation<(WebCore::CSSValueID)273,WebCore::Style::Circle>,WebCore::FunctionNotation<(WebCore::CSSValueID)709,WebCore::Style::Ellipse>,WebCore::FunctionNotation<(WebCore::CSSValueID)8,WebCore::Style::Inset>,WebCore::FunctionNotation<(WebCore::CSSValueID)904,WebCore::Style::Path>,WebCore::FunctionNotation<(WebCore::CSSValueID)799,WebCore::Style::Polygon>,WebCore::FunctionNotation<(WebCore::CSSValueID)800,WebCore::Style::Shape>>,(mpark::detail::Trait)1> &>(v388, v179);
      }

      if (!a1)
      {
        v212 = *a2;
        v226 = *(a2 + 1);
        *a2 = 0;
        *(a2 + 1) = 0;
        v214 = *(a2 + 3);
        if (!v214 || !v226)
        {
          goto LABEL_709;
        }

LABEL_522:
        v11 = (*(*v214 + 16))(v214, v212);
LABEL_552:
        v13 = *a2;
        if (!*a2)
        {
          goto LABEL_709;
        }

        goto LABEL_518;
      }

      if (!*a2)
      {
        goto LABEL_533;
      }

      a1 = v308;
    }

    v78 = 0;
    v77 = 0;
    v256 = *(a2 + 1);
    v257 = *(a2 + 3);
    *a2 = 0;
    *(a2 + 1) = 0;
    if (v257)
    {
      if (!v256)
      {
        goto LABEL_131;
      }

      (*(*v257 + 16))(v257, 0);
      v77 = 0;
      v78 = 0;
    }

LABEL_614:
    a1 = v18;
    v15 = v309;
LABEL_131:
    IPC::Decoder::decode<WebCore::FilterOperations>(&v444, a2);
    v11 = IPC::Decoder::decode<WebCore::FilterOperations>(&v361, a2);
    LODWORD(v12) = v311;
    v13 = *a2;
    if (*a2)
    {
      if ((v15 & 0x100000000) != 0)
      {
        v13 = v320;
        if (v320)
        {
          v13 = v342;
          if ((v342 & 1) != 0 && v319 > 0xFF)
          {
            v13 = v331;
            if (v331)
            {
              v13 = v328;
              if (v328)
              {
                v13 = v326;
                if (v326)
                {
                  v13 = v324;
                  if (v324 & 1) != 0 && (i)
                  {
                    v13 = v377;
                    if (v377)
                    {
                      v13 = v355[0];
                      if (v355[0])
                      {
                        v13 = v373[0];
                        if (v373[0] & 1) != 0 && (v78)
                        {
                          v13 = v445[0];
                          if (v445[0])
                          {
                            v13 = v362[0];
                            if (v362[0])
                            {
                              *&v388[21] = v442;
                              *v388 = v322;
                              *&v388[4] = v321;
                              *&v388[8] = v317;
                              *&v388[12] = v318;
                              *&v388[16] = v316;
                              v388[20] = v314;
                              *&v388[37] = v443[0];
                              *(&v80 + 1) = *(&v443[1] + 7);
                              *&v388[52] = *(v443 + 15);
                              v389 = v311;
                              v390 = v310;
                              v391 = v313;
                              v393 = v348;
                              v392 = v347;
                              v394 = v312;
                              v395 = v345;
                              v396 = v346;
                              v397 = v315;
                              v398 = v343;
                              v399 = v344;
                              v400 = 0;
                              v403 = 0;
                              v401 = v333;
                              v402 = v334;
                              v404 = v336;
                              if (v333 - 2 >= 9)
                              {
                                if (v333 != 11)
                                {
LABEL_152:
                                  v333 = 0;
                                  v405 = 0;
                                  v408 = 0;
                                  v406 = v338;
                                  v407 = v339;
                                  v409 = v341;
                                  if (v338 - 2 >= 9)
                                  {
                                    if (v338 != 11)
                                    {
LABEL_157:
                                      v338 = 0;
                                      v410 = v319;
                                      v411 = v329;
                                      v83 = v330;
                                      v329 = 0;
                                      v330 = 0;
                                      v412 = v83;
                                      v84 = v327;
                                      v327 = 0;
                                      v85 = v325;
                                      v325 = 0;
                                      v413 = v84;
                                      v414 = v85;
                                      v86 = v323;
                                      v323 = 0;
                                      v415 = v86;
                                      v416 = v3;
                                      v417 = 0;
                                      v419 = 0;
                                      v420 = HIBYTE(v376);
                                      v418 = WORD2(v376);
                                      if (BYTE4(v376) - 2 >= 9)
                                      {
                                        if (BYTE4(v376) != 11)
                                        {
LABEL_162:
                                          BYTE4(v376) = 0;
                                          v421 = 0;
                                          v423 = 0;
                                          v422 = WORD2(v349);
                                          v424 = HIBYTE(v349);
                                          if (BYTE4(v349) - 2 >= 9)
                                          {
                                            if (BYTE4(v349) != 11)
                                            {
LABEL_167:
                                              BYTE4(v349) = 0;
                                              v425 = 0;
                                              v428 = 0;
                                              v426 = v351;
                                              v427 = v352;
                                              v429 = v354;
                                              if (v351 - 2 >= 9)
                                              {
                                                if (v351 != 11)
                                                {
LABEL_172:
                                                  v351 = 0;
                                                  v430 = 0;
                                                  v432 = 0;
                                                  v431 = WORD2(v367);
                                                  v433 = HIBYTE(v367);
                                                  if (BYTE4(v367) - 2 >= 9)
                                                  {
                                                    if (BYTE4(v367) != 11)
                                                    {
LABEL_177:
                                                      BYTE4(v367) = 0;
                                                      v434 = 0;
                                                      v437 = 0;
                                                      v435 = v369;
                                                      v436 = v370;
                                                      v438 = v372;
                                                      if (v369 - 2 >= 9)
                                                      {
                                                        if (v369 != 11)
                                                        {
                                                          goto LABEL_182;
                                                        }

                                                        v91 = v368;
                                                        v368 = 0;
                                                      }

                                                      else
                                                      {
                                                        v437 = v371;
                                                        if (v371 == 1)
                                                        {
                                                          v434 = v368;
LABEL_182:
                                                          *&v80 = 0;
                                                          v369 = 0;
                                                          v92 = v444;
                                                          v444 = v80;
                                                          v439 = v77;
                                                          v440 = v92;
                                                          v93 = v361;
                                                          v361 = v80;
                                                          v441 = v93;
                                                          WebCore::AcceleratedEffectValues::AcceleratedEffectValues(a1, v388);
                                                          *(a1 + 248) = 1;
                                                          WebCore::AcceleratedEffectValues::~AcceleratedEffectValues(v388, v94);
                                                          v3 = 0;
                                                          goto LABEL_183;
                                                        }

                                                        v91 = v368;
                                                      }

                                                      v434 = v91;
                                                      goto LABEL_182;
                                                    }

                                                    v90 = v367;
                                                    LODWORD(v367) = 0;
                                                  }

                                                  else
                                                  {
                                                    v432 = BYTE6(v367);
                                                    if (BYTE6(v367) == 1)
                                                    {
                                                      v430 = v367;
                                                      goto LABEL_177;
                                                    }

                                                    v90 = v367;
                                                  }

                                                  v430 = v90;
                                                  goto LABEL_177;
                                                }

                                                v89 = v350;
                                                v350 = 0;
                                              }

                                              else
                                              {
                                                v428 = v353;
                                                if (v353 == 1)
                                                {
                                                  v425 = v350;
                                                  goto LABEL_172;
                                                }

                                                v89 = v350;
                                              }

                                              v425 = v89;
                                              goto LABEL_172;
                                            }

                                            v88 = v349;
                                            LODWORD(v349) = 0;
                                          }

                                          else
                                          {
                                            v423 = BYTE6(v349);
                                            if (BYTE6(v349) == 1)
                                            {
                                              v421 = v349;
                                              goto LABEL_167;
                                            }

                                            v88 = v349;
                                          }

                                          v421 = v88;
                                          goto LABEL_167;
                                        }

                                        v87 = v376;
                                        LODWORD(v376) = 0;
                                      }

                                      else
                                      {
                                        v419 = BYTE6(v376);
                                        if (BYTE6(v376) == 1)
                                        {
                                          v417 = v376;
                                          goto LABEL_162;
                                        }

                                        v87 = v376;
                                      }

                                      v417 = v87;
                                      goto LABEL_162;
                                    }

                                    v82 = v337;
                                    v337 = 0;
                                  }

                                  else
                                  {
                                    v408 = v340;
                                    if (v340 == 1)
                                    {
                                      v405 = v337;
                                      goto LABEL_157;
                                    }

                                    v82 = v337;
                                  }

                                  v405 = v82;
                                  goto LABEL_157;
                                }

                                v81 = v332;
                                v332 = 0;
                              }

                              else
                              {
                                v403 = v335;
                                if (v335 == 1)
                                {
                                  v400 = v332;
                                  goto LABEL_152;
                                }

                                v81 = v332;
                              }

                              v400 = v81;
                              goto LABEL_152;
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

      continue;
    }

    break;
  }

  *a1 = 0;
  *(a1 + 248) = 0;
LABEL_183:
  if (v362[0] == 1)
  {
    WTF::Vector<WTF::Ref<WebCore::FilterOperation,WTF::RawPtrTraits<WebCore::FilterOperation>,WTF::DefaultRefDerefTraits<WebCore::FilterOperation>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v361, v79);
  }

  if (v445[0] == 1)
  {
    WTF::Vector<WTF::Ref<WebCore::FilterOperation,WTF::RawPtrTraits<WebCore::FilterOperation>,WTF::DefaultRefDerefTraits<WebCore::FilterOperation>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v444, v79);
  }

  if (v373[0] == 1)
  {
    if (v369 == 11)
    {
      WebCore::Length::deref(&v368);
    }

    if (BYTE4(v367) == 11)
    {
      WebCore::Length::deref(&v367);
    }
  }

  if (v355[0] == 1)
  {
    if (v351 == 11)
    {
      WebCore::Length::deref(&v350);
    }

    if (BYTE4(v349) == 11)
    {
      WebCore::Length::deref(&v349);
    }
  }

  if (v377 == 1 && BYTE4(v376) == 11)
  {
    WebCore::Length::deref(&v376);
  }

  if (v3)
  {
    v95 = i;
  }

  else
  {
    v95 = 0;
  }

  if (v95 == 1)
  {
    if (*(v3 + 2) == 1)
    {
      (*(*v3 + 8))(v3);
    }

    else
    {
      --*(v3 + 2);
    }
  }

  if (v324 == 1 && v323)
  {
    if (v323[2] == 1)
    {
      (*(*v323 + 8))();
    }

    else
    {
      --v323[2];
    }
  }

  if (v326 == 1 && v325)
  {
    if (v325[2] == 1)
    {
      (*(*v325 + 8))();
    }

    else
    {
      --v325[2];
    }
  }

  if (v328 == 1 && v327)
  {
    if (v327[2] == 1)
    {
      (*(*v327 + 8))();
    }

    else
    {
      --v327[2];
    }
  }

  if (v331 == 1)
  {
    WTF::Vector<WTF::Ref<WebCore::TransformOperation,WTF::RawPtrTraits<WebCore::TransformOperation>,WTF::DefaultRefDerefTraits<WebCore::TransformOperation>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v329, v79);
  }

  if (v342 == 1)
  {
    if (v338 == 11)
    {
      WebCore::Length::deref(&v337);
    }

    if (v333 == 11)
    {
      WebCore::Length::deref(&v332);
    }
  }
}

void sub_19D763E30(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, _DWORD *a21, char a22, _DWORD *a23, char a24, _DWORD *a25, char a26, int a27, __int16 a28, uint64_t a29, char a30, int a31, __int16 a32, __int16 a33, __int16 a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, __int16 a44, int a45, __int16 a46, unint64_t a47)
{
  if (a46 == 1)
  {
    if (a44 == 1)
    {
      for (i = 40; i != 24; i -= 8)
      {
        v50 = *(&a38 + i);
        if (v50 != -1 && (v50 & 0xFE000000000000) != 0)
        {
          a47 = v50 & 0xFF00FFFFFFFFFFFFLL;
          WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(&a47);
        }
      }
    }

    v52 = -32;
    do
    {
      _ZN5mpark6detail16move_constructorINS0_6traitsIJN7WebCore5Style16LengthPercentageIXtlNS3_3CSS5RangeELd0000000000000000ELd7ff0000000000000EEEfEENS_7variantIJNS3_8ConstantILNS3_10CSSValueIDE711EEENSA_ILSB_710EEENSA_ILSB_713EEENSA_ILSB_712EEEEEEEEELNS0_5TraitE1EED2Ev(v47);
      v47 -= 16;
      v52 += 16;
    }

    while (v52);
  }

  if (a22 == 1 && a21)
  {
    if (a21[2] == 1)
    {
      (*(*a21 + 8))();
    }

    else
    {
      --a21[2];
    }
  }

  if (a24 == 1 && a23)
  {
    if (a23[2] == 1)
    {
      (*(*a23 + 8))();
    }

    else
    {
      --a23[2];
    }
  }

  if (a26 == 1 && a25)
  {
    if (a25[2] == 1)
    {
      (*(*a25 + 8))();
    }

    else
    {
      --a25[2];
    }
  }

  if (a30 == 1)
  {
    WTF::Vector<WTF::Ref<WebCore::TransformOperation,WTF::RawPtrTraits<WebCore::TransformOperation>,WTF::DefaultRefDerefTraits<WebCore::TransformOperation>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a28, a2);
  }

  if (a36 == 1)
  {
    if (BYTE4(a35) == 11)
    {
      WebCore::Length::deref(&a35);
    }

    if (a34 == 11)
    {
      WebCore::Length::deref(&a32);
    }
  }

  _Unwind_Resume(a1);
}

uint64_t IPC::Decoder::decode<WebCore::LengthPoint>(uint64_t a1, IPC::Decoder *a2)
{
  IPC::Decoder::decode<WebCore::Length>(&v49, a2);
  result = IPC::Decoder::decode<WebCore::Length>(&v43, a2);
  v5 = *a2;
  if (!*a2)
  {
    goto LABEL_58;
  }

  if ((v54 & 1) == 0)
  {
LABEL_57:
    __break(1u);
LABEL_58:
    *a1 = 0;
    *(a1 + 16) = 0;
    goto LABEL_35;
  }

  v28 = 0;
  v31 = 0;
  v29 = v50;
  v6 = v50;
  v30 = v51;
  v32 = v53;
  v7 = v50 - 2;
  if (v7 < 9)
  {
    v31 = v52;
    v8 = v52;
    if (v52 == 1)
    {
      v28 = v49;
      v9 = v49;
LABEL_8:
      v10 = v9;
      goto LABEL_9;
    }

    v9 = v49;
LABEL_7:
    v28 = v9;
    goto LABEL_8;
  }

  if (v50 == 11)
  {
    v8 = 0;
    v9 = v49;
    v49 = 0;
    goto LABEL_7;
  }

  v9 = 0;
  v10 = 0;
  v8 = 0;
LABEL_9:
  v50 = 0;
  if ((v48 & 1) == 0)
  {
    goto LABEL_57;
  }

  v23 = 0;
  v26 = 0;
  v11 = v44;
  v24 = v44;
  v12 = v45;
  v25 = v45;
  v13 = v47;
  v27 = v47;
  result = v44 - 2;
  if (result < 9)
  {
    result = v46;
    v26 = v46;
    if (v46 == 1)
    {
      v23 = v43;
      goto LABEL_15;
    }

    result = v43;
    goto LABEL_14;
  }

  if (v44 == 11)
  {
    result = v43;
    v43 = 0;
LABEL_14:
    v23 = result;
  }

LABEL_15:
  v44 = 0;
  v33 = 0;
  v36 = 0;
  v34 = v6;
  v35 = v51;
  v37 = v53;
  if (v7 >= 9)
  {
    if (v6 == 11)
    {
      v33 = v10;
      result = WebCore::Length::ref(&v33);
      v11 = v24;
      v12 = v25;
      v13 = v27;
    }
  }

  else
  {
    v36 = v8;
    if (v8)
    {
      v33 = v9;
    }

    else
    {
      v33 = v10;
    }
  }

  v38 = 0;
  v41 = 0;
  v39 = v11;
  v40 = v12;
  v42 = v13;
  if ((v11 - 2) >= 9)
  {
    if (v11 == 11)
    {
      v38 = v23;
      result = WebCore::Length::ref(&v38);
    }
  }

  else
  {
    v41 = v26;
    v38 = v23;
  }

  *a1 = 0;
  *(a1 + 6) = 0;
  v14 = v34;
  *(a1 + 4) = v34;
  *(a1 + 5) = v35;
  *(a1 + 7) = v37;
  if ((v14 - 2) < 9)
  {
    v15 = v36;
    *(a1 + 6) = v36;
    if (v15 == 1)
    {
      *a1 = v33;
      goto LABEL_26;
    }

    v16 = v33;
    goto LABEL_25;
  }

  if (v14 == 11)
  {
    v16 = v33;
    v33 = 0;
LABEL_25:
    *a1 = v16;
  }

LABEL_26:
  v34 = 0;
  *(a1 + 8) = 0;
  *(a1 + 14) = 0;
  v17 = v39;
  *(a1 + 12) = v39;
  *(a1 + 13) = v40;
  *(a1 + 15) = v42;
  if ((v17 - 2) >= 9)
  {
    if (v17 != 11)
    {
      goto LABEL_31;
    }

    v19 = v38;
    v38 = 0;
    goto LABEL_30;
  }

  v18 = v41;
  *(a1 + 14) = v41;
  if (v18 != 1)
  {
    v19 = v38;
LABEL_30:
    *(a1 + 8) = v19;
    goto LABEL_31;
  }

  *(a1 + 8) = v38;
LABEL_31:
  v39 = 0;
  *(a1 + 16) = 1;
  if (v24 == 11)
  {
    result = WebCore::Length::deref(&v23);
  }

  if (v29 == 11)
  {
    result = WebCore::Length::deref(&v28);
  }

LABEL_35:
  if (v48 == 1 && v44 == 11)
  {
    result = WebCore::Length::deref(&v43);
  }

  if (v54 == 1 && v50 == 11)
  {
    result = WebCore::Length::deref(&v49);
    if (v5)
    {
      return result;
    }
  }

  else if (v5)
  {
    return result;
  }

  v21 = *a2;
  v22 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  result = *(a2 + 3);
  if (result)
  {
    if (v22)
    {
      return (*(*result + 16))(result, v21);
    }
  }

  return result;
}

void sub_19D765130(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, __int16 a10, __int16 a11, char a12, char a13, __int16 a14, char a15, char a16, __int16 a17, char a18, char a19, __int16 a20, char a21, char a22, __int16 a23, char a24, char a25, uint64_t a26, __int16 a27, __int16 a28, char a29, char a30, __int16 a31, char a32, char a33)
{
  if (a24 == 11)
  {
    WebCore::Length::deref(&a21);
  }

  if (a12 == 11)
  {
    WebCore::Length::deref(&a10);
  }

  if (a18 == 11)
  {
    WebCore::Length::deref(&a15);
  }

  if (a32 == 1 && a29 == 11)
  {
    WebCore::Length::deref(&a27);
  }

  if (*(v33 - 36) == 1 && *(v33 - 40) == 11)
  {
    WebCore::Length::deref((v33 - 44));
  }

  _Unwind_Resume(exception_object);
}

_BYTE *IPC::Decoder::decode<WTF::RefPtr<WebCore::TransformOperation,WTF::RawPtrTraits<WebCore::TransformOperation>,WTF::DefaultRefDerefTraits<WebCore::TransformOperation>>>(_BYTE *result, IPC::Decoder *a2)
{
  v3 = result;
  v4 = *(a2 + 2);
  v5 = *a2;
  v6 = *(a2 + 1);
  if (v6 <= &v4[-v5])
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v8 = *(a2 + 3);
    if (v8)
    {
      if (v6)
      {
        (*(*v8 + 16))(v8);
        v5 = *a2;
        v6 = *(a2 + 1);
LABEL_13:
        *a2 = 0;
        *(a2 + 1) = 0;
        v9 = *(a2 + 3);
        if (v9)
        {
          if (v6)
          {
            (*(*v9 + 16))(v9, v5);
            v5 = *a2;
            v6 = *(a2 + 1);
LABEL_16:
            *a2 = 0;
            *(a2 + 1) = 0;
            v10 = *(a2 + 3);
            if (v10 && v6)
            {
              (*(*v10 + 16))(v10, v5);
            }

            *v3 = 0;
            v3[8] = 0;
            goto LABEL_18;
          }
        }

        else
        {
          v6 = 0;
        }

        v5 = 0;
        goto LABEL_16;
      }
    }

    else
    {
      v6 = 0;
    }

    v5 = 0;
    goto LABEL_13;
  }

  *(a2 + 2) = v4 + 1;
  if (!v4)
  {
    goto LABEL_13;
  }

  v7 = *v4;
  if (v7 >= 2)
  {
    goto LABEL_16;
  }

  if (!v7)
  {
    *result = 0;
    goto LABEL_8;
  }

  result = IPC::ArgumentCoder<WebCore::TransformOperation,void>::decode(&v13, a2);
  *v3 = 0;
  v3[8] = 0;
  if (v14 == 1)
  {
    *v3 = v13;
LABEL_8:
    v3[8] = 1;
    return result;
  }

LABEL_18:
  v11 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  result = *(a2 + 3);
  if (result && v11)
  {
    v12 = *(*result + 16);

    return v12();
  }

  return result;
}

uint64_t IPC::Decoder::decode<WebCore::FilterOperations>(uint64_t a1, IPC::Decoder *a2)
{
  v4 = ((*(a2 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  v5 = *a2;
  v6 = *(a2 + 1);
  if (v6 >= v4 - v5 && v6 - (v4 - v5) > 7)
  {
    *(a2 + 2) = v4 + 1;
    if (!v4)
    {
      goto LABEL_48;
    }

    v8 = *v4;
    v43 = 0;
    v44 = 0;
    if (v8 < 0x20000)
    {
      if (!v8)
      {
        goto LABEL_40;
      }

      LODWORD(v44) = v8;
      v43 = WTF::fastMalloc(v4, (8 * v8));
      while (1)
      {
        IPC::Decoder::decode<WTF::Ref<WebCore::FilterOperation,WTF::RawPtrTraits<WebCore::FilterOperation>,WTF::DefaultRefDerefTraits<WebCore::FilterOperation>>>(&v41, a2);
        if ((v42 & 1) == 0)
        {
          goto LABEL_30;
        }

        v9 = HIDWORD(v44);
        if (HIDWORD(v44) != v44)
        {
          break;
        }

        v10 = WTF::Vector<WTF::Ref<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v43, HIDWORD(v44) + 1, &v41);
        v11 = HIDWORD(v44);
        v12 = HIDWORD(v44) + 1;
        v13 = v43;
        v14 = *v10;
        *v10 = 0;
        v13[v11] = v14;
        HIDWORD(v44) = v12;
        if (v42)
        {
          goto LABEL_15;
        }

LABEL_18:
        if (!--v8)
        {
          goto LABEL_40;
        }
      }

      v15 = v41;
      v41 = 0;
      v43[HIDWORD(v44)] = v15;
      HIDWORD(v44) = v9 + 1;
LABEL_15:
      v16 = v41;
      v41 = 0;
      if (v16 && atomic_fetch_add(v16 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v16 + 2);
        (*(*v16 + 8))(v16);
      }

      goto LABEL_18;
    }

    while (1)
    {
      IPC::Decoder::decode<WTF::Ref<WebCore::FilterOperation,WTF::RawPtrTraits<WebCore::FilterOperation>,WTF::DefaultRefDerefTraits<WebCore::FilterOperation>>>(&v41, a2);
      if ((v42 & 1) == 0)
      {
LABEL_30:
        WTF::Vector<WTF::Ref<WebCore::FilterOperation,WTF::RawPtrTraits<WebCore::FilterOperation>,WTF::DefaultRefDerefTraits<WebCore::FilterOperation>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v43, v5);
        goto LABEL_31;
      }

      v18 = HIDWORD(v44);
      if (HIDWORD(v44) != v44)
      {
        break;
      }

      v19 = WTF::Vector<WTF::Ref<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v43, HIDWORD(v44) + 1, &v41);
      v20 = HIDWORD(v44);
      v21 = HIDWORD(v44) + 1;
      v22 = v43;
      v23 = *v19;
      *v19 = 0;
      v22[v20] = v23;
      HIDWORD(v44) = v21;
      if (v42)
      {
        goto LABEL_25;
      }

LABEL_28:
      if (!--v8)
      {
        goto LABEL_39;
      }
    }

    v24 = v41;
    v41 = 0;
    v43[HIDWORD(v44)] = v24;
    HIDWORD(v44) = v18 + 1;
LABEL_25:
    v25 = v41;
    v41 = 0;
    if (v25 && atomic_fetch_add(v25 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v25 + 2);
      (*(*v25 + 8))(v25);
    }

    goto LABEL_28;
  }

  *a2 = 0;
  *(a2 + 1) = 0;
  v37 = *(a2 + 3);
  if (!v37)
  {
    v6 = 0;
LABEL_47:
    v5 = 0;
    goto LABEL_48;
  }

  if (!v6)
  {
    goto LABEL_47;
  }

  (*(*v37 + 16))(v37);
  v5 = *a2;
  v6 = *(a2 + 1);
LABEL_48:
  *a2 = 0;
  *(a2 + 1) = 0;
  v38 = *(a2 + 3);
  if (v38 && v6)
  {
    (*(*v38 + 16))(v38, v5);
  }

LABEL_31:
  v26 = *a2;
  v27 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  v28 = *(a2 + 3);
  if (!v28 || !v27 || ((*(*v28 + 16))(v28, v26), !*a2))
  {
    *a1 = 0;
    *(a1 + 16) = 0;
    goto LABEL_33;
  }

  __break(1u);
LABEL_39:
  WTF::Vector<WTF::Ref<WebCore::FilterOperation,WTF::RawPtrTraits<WebCore::FilterOperation>,WTF::DefaultRefDerefTraits<WebCore::FilterOperation>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(&v43, HIDWORD(v44), v17);
LABEL_40:
  v39[0] = v43;
  v32 = v44;
  v43 = 0;
  v44 = 0;
  v39[1] = v32;
  v40 = 1;
  WTF::Vector<WTF::Ref<WebCore::FilterOperation,WTF::RawPtrTraits<WebCore::FilterOperation>,WTF::DefaultRefDerefTraits<WebCore::FilterOperation>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v43, v5);
  if (*a2)
  {
    WebCore::FilterOperations::FilterOperations();
    *a1 = v43;
    v34 = v44;
    v43 = 0;
    v44 = 0;
    *(a1 + 8) = v34;
    *(a1 + 16) = 1;
    result = WTF::Vector<WTF::Ref<WebCore::FilterOperation,WTF::RawPtrTraits<WebCore::FilterOperation>,WTF::DefaultRefDerefTraits<WebCore::FilterOperation>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v43, v35);
    if (v40)
    {
      return WTF::Vector<WTF::Ref<WebCore::FilterOperation,WTF::RawPtrTraits<WebCore::FilterOperation>,WTF::DefaultRefDerefTraits<WebCore::FilterOperation>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v39, v36);
    }

    return result;
  }

  *a1 = 0;
  *(a1 + 16) = 0;
  WTF::Vector<WTF::Ref<WebCore::FilterOperation,WTF::RawPtrTraits<WebCore::FilterOperation>,WTF::DefaultRefDerefTraits<WebCore::FilterOperation>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v39, v33);
LABEL_33:
  v29 = *a2;
  v30 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  result = *(a2 + 3);
  if (result)
  {
    if (v30)
    {
      return (*(*result + 16))(result, v29);
    }
  }

  return result;
}

void sub_19D765744(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned int *a12, char a13, ...)
{
  va_start(va, a13);
  if (a13 == 1 && a12 && atomic_fetch_add(a12 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, a12 + 2);
    (*(*a12 + 8))(a12, a2, a3, a4, a5, a6, a7);
  }

  WTF::Vector<WTF::Ref<WebCore::FilterOperation,WTF::RawPtrTraits<WebCore::FilterOperation>,WTF::DefaultRefDerefTraits<WebCore::FilterOperation>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(va, a2);
  _Unwind_Resume(a1);
}

IPC::Decoder *IPC::ArgumentCoder<WebCore::WebAnimationTime,void>::encode(IPC::Encoder *a1, WebCore::WebAnimationTime *this)
{
  v4 = WebCore::WebAnimationTime::time(this);
  if (v5)
  {
    v6 = *&v4;
    LOBYTE(v9) = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v9);
    IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, v6);
  }

  else
  {
    LOBYTE(v9) = 0;
    IPC::Encoder::operator<<<BOOL>(a1, &v9);
  }

  v9 = WebCore::WebAnimationTime::percentage(this);
  v10 = v7;
  return IPC::ArgumentCoder<std::optional<double>,void>::encode<IPC::Encoder,std::optional<double>>(a1, &v9);
}

WTF *IPC::Decoder::decode<WTF::RefPtr<WebCore::TimingFunction,WTF::RawPtrTraits<WebCore::TimingFunction>,WTF::DefaultRefDerefTraits<WebCore::TimingFunction>>>(WTF *result, IPC::Decoder *a2)
{
  v3 = result;
  v4 = *(a2 + 2);
  v5 = *a2;
  v6 = *(a2 + 1);
  if (v6 <= &v4[-v5])
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v8 = *(a2 + 3);
    if (v8)
    {
      if (v6)
      {
        (*(*v8 + 16))(v8);
        v5 = *a2;
        v6 = *(a2 + 1);
LABEL_13:
        *a2 = 0;
        *(a2 + 1) = 0;
        v9 = *(a2 + 3);
        if (v9)
        {
          if (v6)
          {
            (*(*v9 + 16))(v9, v5);
            v5 = *a2;
            v6 = *(a2 + 1);
LABEL_16:
            *a2 = 0;
            *(a2 + 1) = 0;
            v10 = *(a2 + 3);
            if (v10 && v6)
            {
              (*(*v10 + 16))(v10, v5);
            }

            *v3 = 0;
            *(v3 + 8) = 0;
            goto LABEL_18;
          }
        }

        else
        {
          v6 = 0;
        }

        v5 = 0;
        goto LABEL_16;
      }
    }

    else
    {
      v6 = 0;
    }

    v5 = 0;
    goto LABEL_13;
  }

  *(a2 + 2) = v4 + 1;
  if (!v4)
  {
    goto LABEL_13;
  }

  v7 = *v4;
  if (v7 >= 2)
  {
    goto LABEL_16;
  }

  if (!v7)
  {
    *result = 0;
    goto LABEL_8;
  }

  result = IPC::ArgumentCoder<WebCore::TimingFunction,void>::decode(&v13, a2);
  *v3 = 0;
  *(v3 + 8) = 0;
  if (v14 == 1)
  {
    *v3 = v13;
LABEL_8:
    *(v3 + 8) = 1;
    return result;
  }

LABEL_18:
  v11 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  result = *(a2 + 3);
  if (result && v11)
  {
    v12 = *(*result + 16);

    return v12();
  }

  return result;
}

uint64_t IPC::Decoder::decode<WebCore::WebAnimationTime>(_BYTE *a1, IPC::Decoder *a2)
{
  IPC::Decoder::decode<std::optional<WTF::Seconds>>(a2, &v13);
  IPC::ArgumentCoder<std::optional<double>,void>::decode<IPC::Decoder>(a2, &v11);
  if ((v12 & 1) == 0)
  {
    v5 = *a2;
    v6 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v7 = *(a2 + 3);
    if (v7 && v6 != 0)
    {
      (*(*v7 + 16))(v7, v5);
    }
  }

  if (*a2)
  {
    if (v14 & 1) != 0 && (v12)
    {
      result = WebCore::WebAnimationTime::WebAnimationTime();
      a1[16] = 1;
      return result;
    }

    __break(1u);
  }

  *a1 = 0;
  a1[16] = 0;
  v9 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  result = *(a2 + 3);
  if (result && v9)
  {
    v10 = *(*result + 16);

    return v10();
  }

  return result;
}

void IPC::Decoder::decode<WebCore::AcceleratedEffectValues>(uint64_t a1, IPC::Decoder *a2)
{
  IPC::ArgumentCoder<WebCore::AcceleratedEffectValues,void>::decode(a1, a2);
  if ((*(a1 + 248) & 1) == 0)
  {
    v4 = *a2;
    v5 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v6 = *(a2 + 3);
    if (v6)
    {
      v7 = v5 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (!v7)
    {
      (*(*v6 + 16))(v6, v4);
    }
  }
}

void sub_19D765BAC(_Unwind_Exception *exception_object, void *a2)
{
  if (*(v2 + 248) == 1)
  {
    WebCore::AcceleratedEffectValues::~AcceleratedEffectValues(v2, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::Decoder::decode<WTF::OptionSet<WebCore::AcceleratedEffectProperty>>(void *a1)
{
  v1 = a1[1];
  v2 = ((a1[2] + 1) & 0xFFFFFFFFFFFFFFFELL);
  v3 = *a1;
  v4 = v2 - *a1;
  v5 = v1 >= v4;
  v6 = v1 - v4;
  if (!v5 || v6 <= 1)
  {
    *a1 = 0;
    a1[1] = 0;
    v18 = a1;
    v13 = a1[3];
    if (v13)
    {
      if (v1)
      {
        (*(*v13 + 16))(v13);
        v3 = *v18;
        v1 = v18[1];
        goto LABEL_13;
      }
    }

    else
    {
      v1 = 0;
    }

    v3 = 0;
LABEL_13:
    a1 = v18;
    *v18 = 0;
    v18[1] = 0;
    v14 = v18[3];
    if (v14 && v1)
    {
      (*(*v14 + 16))(v14, v3);
      a1 = v18;
    }

    goto LABEL_14;
  }

  a1[2] = v2 + 1;
  if (!v2)
  {
    v18 = a1;
    goto LABEL_13;
  }

  v8 = *v2;
  if ((v8 & 0xFFFFE001) == 0)
  {
    v9 = v8 & 0x1F00;
    v10 = v8 & 0xFE;
    v11 = 0x10000;
    return v10 | v11 | v9;
  }

LABEL_14:
  v15 = *a1;
  v16 = a1[1];
  *a1 = 0;
  a1[1] = 0;
  v17 = a1[3];
  if (v17 && v16)
  {
    (*(*v17 + 16))(v17, v15);
  }

  v9 = 0;
  v10 = 0;
  v11 = 0;
  return v10 | v11 | v9;
}

void IPC::ArgumentCoder<WebCore::AcceleratedEffect,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (v4)
  {
    ++*(v4 + 8);
  }

  v5 = *(a2 + 144);
  v20 = *(a2 + 128);
  v21 = v5;
  v22 = *(a2 + 160);
  v6 = *(a2 + 80);
  v16 = *(a2 + 64);
  v17 = v6;
  v7 = *(a2 + 112);
  v18 = *(a2 + 96);
  v19 = v7;
  v8 = *(a2 + 48);
  *&v14[8] = *(a2 + 32);
  *v14 = v4;
  v23 = *(a2 + 176);
  v15 = v8;
  IPC::ArgumentCoder<WTF::RefPtr<WebCore::TimingFunction,WTF::RawPtrTraits<WebCore::TimingFunction>,WTF::DefaultRefDerefTraits<WebCore::TimingFunction>>,void>::encode<IPC::Encoder,WebCore::TimingFunction>(a1, v14);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, v14[8]);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, v14[9]);
  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, *&v14[16]);
  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, *&v15);
  IPC::ArgumentCoder<WebCore::WebAnimationTime,void>::encode(a1, (&v17 + 8));
  IPC::ArgumentCoder<WebCore::WebAnimationTime,void>::encode(a1, (&v18 + 8));
  IPC::ArgumentCoder<WebCore::WebAnimationTime,void>::encode(a1, (&v19 + 8));
  IPC::ArgumentCoder<WebCore::WebAnimationTime,void>::encode(a1, (&v20 + 8));
  IPC::ArgumentCoder<WebCore::WebAnimationTime,void>::encode(a1, (&v21 + 8));
  IPC::ArgumentCoder<WebCore::WebAnimationTime,void>::encode(a1, (&v22 + 8));
  v9 = *v14;
  *v14 = 0;
  if (v9)
  {
    if (v9[2] == 1)
    {
      (*(*v9 + 16))(v9);
    }

    else
    {
      --v9[2];
    }
  }

  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 196));
  v10 = *(a2 + 196);
  if (v10)
  {
    v11 = 280 * v10;
    v12 = *(a2 + 184) + 264;
    do
    {
      IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, *(v12 - 256));
      IPC::ArgumentCoder<WebCore::AcceleratedEffectValues,void>::encode(a1, v12 - 248);
      IPC::ArgumentCoder<WTF::RefPtr<WebCore::TimingFunction,WTF::RawPtrTraits<WebCore::TimingFunction>,WTF::DefaultRefDerefTraits<WebCore::TimingFunction>>,void>::encode<IPC::Encoder,WebCore::TimingFunction>(a1, v12);
      v13 = *(v12 + 8);
      if ((v13 & 0x100) != 0)
      {
        v14[0] = 1;
        IPC::Encoder::operator<<<BOOL>(a1, v14);
        IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, v13);
      }

      else
      {
        v14[0] = 0;
        IPC::Encoder::operator<<<BOOL>(a1, v14);
      }

      IPC::ArgumentCoder<unsigned short,void>::encode<IPC::Encoder>(a1, *(v12 + 10));
      v12 += 280;
      v11 -= 280;
    }

    while (v11);
  }

  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 200));
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 201));
  IPC::ArgumentCoder<WTF::RefPtr<WebCore::TimingFunction,WTF::RawPtrTraits<WebCore::TimingFunction>,WTF::DefaultRefDerefTraits<WebCore::TimingFunction>>,void>::encode<IPC::Encoder,WebCore::TimingFunction>(a1, (a2 + 208));
  IPC::ArgumentCoder<unsigned short,void>::encode<IPC::Encoder>(a1, *(a2 + 216));
  v14[0] = *(a2 + 220);
  IPC::Encoder::operator<<<BOOL>(a1, v14);
  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, *(a2 + 224));
  *v14 = *(a2 + 232);
  *&v14[16] = *(a2 + 248);
  IPC::ArgumentCoder<std::optional<WebCore::WebAnimationTime>,void>::encode<IPC::Encoder,std::optional<WebCore::WebAnimationTime>>(a1, v14);
  *v14 = *(a2 + 256);
  *&v14[16] = *(a2 + 272);
  IPC::ArgumentCoder<std::optional<WebCore::WebAnimationTime>,void>::encode<IPC::Encoder,std::optional<WebCore::WebAnimationTime>>(a1, v14);
}

void sub_19D765FA8(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, _DWORD *a9)
{
  if (a9)
  {
    if (a9[2] == 1)
    {
      (*(*a9 + 16))(a9, a2, a3, a4, a5, a6, a7, a8);
    }

    else
    {
      --a9[2];
    }
  }

  _Unwind_Resume(exception_object);
}

_BYTE *IPC::Decoder::decode<std::optional<WebCore::WebAnimationTime>>(_BYTE *result, IPC::Decoder *a2)
{
  v3 = result;
  v4 = *(a2 + 2);
  v5 = *a2;
  v6 = *(a2 + 1);
  if (v6 <= &v4[-v5])
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v9 = *(a2 + 3);
    if (v9)
    {
      if (v6)
      {
        (*(*v9 + 16))(v9);
        v5 = *a2;
        v6 = *(a2 + 1);
        goto LABEL_12;
      }
    }

    else
    {
      v6 = 0;
    }

    v5 = 0;
LABEL_12:
    *a2 = 0;
    *(a2 + 1) = 0;
    v10 = *(a2 + 3);
    if (v10)
    {
      if (v6)
      {
        (*(*v10 + 16))(v10, v5);
        v5 = *a2;
        v6 = *(a2 + 1);
        goto LABEL_15;
      }
    }

    else
    {
      v6 = 0;
    }

    v5 = 0;
LABEL_15:
    *a2 = 0;
    *(a2 + 1) = 0;
    v11 = *(a2 + 3);
    if (v11 && v6)
    {
      (*(*v11 + 16))(v11, v5);
    }

    goto LABEL_16;
  }

  *(a2 + 2) = v4 + 1;
  if (!v4)
  {
    goto LABEL_12;
  }

  v7 = *v4;
  if (v7 >= 2)
  {
    goto LABEL_15;
  }

  if (!v7)
  {
    *result = 0;
    result[16] = 0;
    v8 = 1;
    goto LABEL_8;
  }

  result = IPC::Decoder::decode<WebCore::WebAnimationTime>(&v14, a2);
  v8 = v15;
  if (v15 == 1)
  {
    *v3 = v14;
    v3[16] = v8;
LABEL_8:
    v3[24] = v8;
    return result;
  }

LABEL_16:
  *v3 = 0;
  v3[24] = 0;
  v12 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  result = *(a2 + 3);
  if (result && v12)
  {
    v13 = *(*result + 16);

    return v13();
  }

  return result;
}

void IPC::ArgumentCoder<WebCore::ProtectionSpace,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 16));
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 20));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 8));
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 21));
  WebCore::ProtectionSpace::getPlatformDataToSerialize(&v5, a2);
  IPC::ArgumentCoder<std::optional<WebCore::ProtectionSpace::PlatformData>,void>::encode<IPC::Encoder,std::optional<WebCore::ProtectionSpace::PlatformData>>(a1, &v5);
  if (v6 == 1)
  {
    v4 = v5;
    v5 = 0;
    if (v4)
    {
    }
  }
}

void sub_19D766244(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, char a10)
{
  if (a10 == 1)
  {
    if (a9)
    {
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::Decoder::decode<WebCore::ProtectionSpaceBaseServerType>(uint64_t *a1)
{
  result = IPC::ArgumentCoder<WebCore::ProtectionSpaceBaseServerType,void>::decode<IPC::Decoder>(a1);
  if ((result & 0x100) == 0)
  {
    v3 = *a1;
    v4 = a1[1];
    *a1 = 0;
    a1[1] = 0;
    v5 = a1[3];
    if (v5)
    {
      v6 = v4 == 0;
    }

    else
    {
      v6 = 1;
    }

    if (!v6)
    {
      v7 = result;
      (*(*v5 + 16))(v5, v3);
      return v7;
    }
  }

  return result;
}

uint64_t IPC::Decoder::decode<WebCore::ProtectionSpaceBaseAuthenticationScheme>(uint64_t *a1)
{
  result = IPC::ArgumentCoder<WebCore::ProtectionSpaceBaseAuthenticationScheme,void>::decode<IPC::Decoder>(a1);
  if ((result & 0x100) == 0)
  {
    v3 = *a1;
    v4 = a1[1];
    *a1 = 0;
    a1[1] = 0;
    v5 = a1[3];
    if (v5)
    {
      v6 = v4 == 0;
    }

    else
    {
      v6 = 1;
    }

    if (!v6)
    {
      v7 = result;
      (*(*v5 + 16))(v5, v3);
      return v7;
    }
  }

  return result;
}

uint64_t IPC::ArgumentCoder<WebCore::CredentialBase::NonPlatformData,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 8));
  v4 = *(a2 + 16);

  return IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, v4);
}

uint64_t IPC::ArgumentCoder<WebCore::Credential,void>::encode(IPC::Encoder *a1, WebCore::Credential *this)
{
  v8 = *MEMORY[0x1E69E9840];
  WebCore::Credential::ipcData(v6, this);
  v5 = v7;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  IPC::ArgumentCoder<mpark::variant<WebCore::CredentialBase::NonPlatformData,WTF::RetainPtr<NSURLCredential>>,void>::encode<IPC::Encoder,mpark::variant<WebCore::CredentialBase::NonPlatformData,WTF::RetainPtr<NSURLCredential>>>(a1, v6, v5);
  return mpark::variant<WebCore::CredentialBase::NonPlatformData,WTF::RetainPtr<NSURLCredential>>::~variant(v6, v3);
}

uint64_t mpark::variant<WebCore::CredentialBase::NonPlatformData,WTF::RetainPtr<NSURLCredential>>::~variant(uint64_t a1, WTF::StringImpl *a2)
{
  if (*(a1 + 24) != 255)
  {
    if (*(a1 + 24))
    {
      v5 = *a1;
      *a1 = 0;
      if (v5)
      {
      }
    }

    else
    {
      v3 = *(a1 + 8);
      *(a1 + 8) = 0;
      if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v3, a2);
      }

      v4 = *a1;
      *a1 = 0;
      if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v4, a2);
      }
    }
  }

  *(a1 + 24) = -1;
  return a1;
}

void IPC::ArgumentCoder<WebCore::Credential,void>::decode(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  v10 = *MEMORY[0x1E69E9840];
  IPC::Decoder::decode<mpark::variant<WebCore::CredentialBase::NonPlatformData,WTF::RetainPtr<NSURLCredential>>>(a1, v8);
  if (*a1)
  {
    if ((v9 & 1) == 0)
    {
      __break(1u);
    }

    WebCore::Credential::fromIPCData();
    *a2 = v5;
    *(a2 + 16) = v6;
    *(a2 + 24) = v7;
    *(a2 + 32) = 1;
  }

  else
  {
    *a2 = 0;
    *(a2 + 32) = 0;
  }

  if (v9 == 1)
  {
    mpark::variant<WebCore::CredentialBase::NonPlatformData,WTF::RetainPtr<NSURLCredential>>::~variant(v8, v4);
  }
}

void sub_19D76659C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  if (a17 == 1)
  {
    mpark::variant<WebCore::CredentialBase::NonPlatformData,WTF::RetainPtr<NSURLCredential>>::~variant(&a13, a2);
  }

  _Unwind_Resume(exception_object);
}

void IPC::Decoder::decode<mpark::variant<WebCore::CredentialBase::NonPlatformData,WTF::RetainPtr<NSURLCredential>>>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  IPC::ArgumentCoder<mpark::variant<WebCore::CredentialBase::NonPlatformData,WTF::RetainPtr<NSURLCredential>>,void>::decode<IPC::Decoder>(a1, a2);
  if ((*(a2 + 32) & 1) == 0)
  {
    v4 = *a1;
    v5 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v6 = *(a1 + 3);
    if (v6)
    {
      v7 = v5 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (!v7)
    {
      (*(*v6 + 16))(v6, v4);
    }
  }
}

void sub_19D766634(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  if (*(v2 + 32) == 1)
  {
    mpark::variant<WebCore::CredentialBase::NonPlatformData,WTF::RetainPtr<NSURLCredential>>::~variant(v2, a2);
  }

  _Unwind_Resume(exception_object);
}

WTF *IPC::ArgumentCoder<WebCore::ShapeDetection::BarcodeDetectorOptions,void>::decode@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::Decoder::decode<WTF::Vector<WebCore::ShapeDetection::BarcodeFormat,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, &v6);
  if (*a1)
  {
    if (v8)
    {
      *a2 = v6;
      *(a2 + 8) = v7;
      *(a2 + 16) = 1;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 16) = 0;
    if (v8)
    {
      result = v6;
      if (v6)
      {
        v6 = 0;
        LODWORD(v7) = 0;
        return WTF::fastFree(result, v5);
      }
    }
  }

  return result;
}

WTF *IPC::Decoder::decode<WTF::Vector<WebCore::ShapeDetection::BarcodeFormat,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::VectorArgumentCoder<false,WebCore::ShapeDetection::BarcodeFormat,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>(a1, a2);
  if ((*(a2 + 16) & 1) == 0)
  {
    v5 = *a1;
    v6 = a1[1];
    *a1 = 0;
    a1[1] = 0;
    result = a1[3];
    if (result)
    {
      v7 = v6 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (!v7)
    {
      return (*(*result + 16))(result, v5);
    }
  }

  return result;
}

void sub_19D76674C(_Unwind_Exception *exception_object, void *a2)
{
  if (*(v2 + 16) == 1)
  {
    v4 = *v2;
    if (*v2)
    {
      *v2 = 0;
      *(v2 + 8) = 0;
      WTF::fastFree(v4, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<WebCore::ShapeDetection::DetectedBarcode,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WebCore::FloatRect,void>::encode(a1, a2);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 16));
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 24));

  return IPC::VectorArgumentCoder<false,WebCore::FloatPoint,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::FloatPoint,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, a2 + 32);
}

WTF::StringImpl *IPC::ArgumentCoder<WebCore::ShapeDetection::DetectedBarcode,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(a1);
  v6 = v5;
  if ((v5 & 1) == 0)
  {
    v21 = *a1;
    v22 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v23 = *(a1 + 3);
    if (v23 && v22 != 0)
    {
      (*(*v23 + 16))(v23, v21);
    }
  }

  result = IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(a1);
  v9 = result;
  if ((v8 & 1) == 0)
  {
    v19 = *a1;
    v18 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    result = *(a1 + 3);
    if (result)
    {
      if (v18)
      {
        v20 = v8;
        result = (*(*result + 16))(result, v19);
        v8 = v20;
      }
    }
  }

  v10 = *a1;
  if (*a1)
  {
    if ((v6 & 1) == 0 || (v8 & 1) == 0)
    {
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    v11 = v4 & 0xFFFFFFFFFFFFFF00;
    v12 = v4;
  }

  else
  {
    v16 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v17 = *(a1 + 3);
    if (v17 && v16)
    {
      (*(*v17 + 16))(v17, 0);
    }

    v12 = 0;
    v11 = 0;
  }

  IPC::Decoder::decode<WTF::String>(a1, &v27);
  v13 = IPC::Decoder::decode<WebCore::ShapeDetection::BarcodeFormat>(a1);
  result = IPC::Decoder::decode<WTF::Vector<WebCore::FloatPoint,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(v25, a1);
  if (*a1)
  {
    if (v10)
    {
      if (v28)
      {
        v14 = v27;
        v27 = 0;
        if (v13 & 0x100) != 0 && (v26)
        {
          v15 = v25[0];
          *a2 = v11 | v12;
          *(a2 + 8) = v9;
          *(a2 + 16) = v14;
          *(a2 + 24) = v13;
          *(a2 + 32) = v15;
          *(a2 + 40) = v25[1];
          *(a2 + 48) = 1;
          goto LABEL_13;
        }
      }
    }

    goto LABEL_18;
  }

LABEL_19:
  *a2 = 0;
  *(a2 + 48) = 0;
  if (v26)
  {
    result = v25[0];
    if (v25[0])
    {
      result = WTF::fastFree(v25[0], v8);
    }
  }

LABEL_13:
  if (v28 == 1)
  {
    result = v27;
    v27 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v8);
      }
    }
  }

  return result;
}

void sub_19D7669E4(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, WTF::StringImpl *a13, char a14)
{
  if (a14 == 1 && a13 && atomic_fetch_add_explicit(a13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a13, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::Decoder::decode<WebCore::ShapeDetection::BarcodeFormat>(uint64_t *a1)
{
  result = IPC::ArgumentCoder<WebCore::ShapeDetection::BarcodeFormat,void>::decode<IPC::Decoder>(a1);
  if ((result & 0x100) == 0)
  {
    v3 = *a1;
    v4 = a1[1];
    *a1 = 0;
    a1[1] = 0;
    v5 = a1[3];
    if (v5)
    {
      v6 = v4 == 0;
    }

    else
    {
      v6 = 1;
    }

    if (!v6)
    {
      v7 = result;
      (*(*v5 + 16))(v5, v3);
      return v7;
    }
  }

  return result;
}

WTF *IPC::Decoder::decode<WTF::Vector<WebCore::FloatPoint,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(uint64_t a1, IPC::Decoder *a2)
{
  v4 = ((*(a2 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  v5 = *a2;
  v6 = *(a2 + 1);
  if (v6 < v4 - v5 || v6 - (v4 - v5) <= 7)
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v23 = *(a2 + 3);
    if (v23)
    {
      if (v6)
      {
        (*(*v23 + 16))(v23);
        v5 = *a2;
        v6 = *(a2 + 1);
LABEL_39:
        *a2 = 0;
        *(a2 + 1) = 0;
        v24 = *(a2 + 3);
        if (v24 && v6)
        {
          (*(*v24 + 16))(v24, v5);
        }

        *a1 = 0;
        *(a1 + 16) = 0;
LABEL_41:
        v25 = *a2;
        v26 = *(a2 + 1);
        *a2 = 0;
        *(a2 + 1) = 0;
        result = *(a2 + 3);
        if (result)
        {
          if (v26)
          {
            return (*(*result + 16))(result, v25);
          }
        }

        return result;
      }
    }

    else
    {
      v6 = 0;
    }

    v5 = 0;
    goto LABEL_39;
  }

  *(a2 + 2) = v4 + 1;
  if (!v4)
  {
    goto LABEL_39;
  }

  v8 = *v4;
  v31 = 0;
  v32 = 0;
  if (v8 >= 0x20000)
  {
    while (1)
    {
      v16 = IPC::Decoder::decode<WebCore::FloatPoint>(a2);
      v29 = v16;
      v30 = v5;
      if ((v5 & 1) == 0)
      {
        break;
      }

      if (HIDWORD(v32) == v32)
      {
        v14 = WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionFrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v31, HIDWORD(v32) + 1, &v29);
        *(v31 + HIDWORD(v32)) = *v14;
      }

      else
      {
        *(v31 + HIDWORD(v32)) = v16;
      }

      v15 = ++HIDWORD(v32);
      if (!--v8)
      {
        if (v32 <= v15)
        {
          goto LABEL_15;
        }

        result = v31;
        if (v15)
        {
          v28 = v31;
          if (v15 >> 29)
          {
            __break(0xC471u);
            return result;
          }

          v27 = 8 * v15;
          v18 = v15;
          v19 = WTF::fastMalloc(v15, (8 * v15));
          result = v28;
          LODWORD(v32) = v18;
          v31 = v19;
          v20 = v27;
          if (v19 != v28)
          {
            v21 = v28;
            do
            {
              v22 = *v21;
              v21 = (v21 + 8);
              *v19++ = v22;
              v20 -= 8;
            }

            while (v20);
          }
        }

        if (result)
        {
          if (v31 == result)
          {
            v31 = 0;
            LODWORD(v32) = 0;
          }

          WTF::fastFree(result, v5);
        }

        goto LABEL_15;
      }
    }
  }

  else
  {
    if (!v8)
    {
LABEL_15:
      v11 = v31;
      v31 = 0;
      *a1 = v11;
      v12 = v32;
      HIDWORD(v32) = 0;
      *(a1 + 8) = v12;
      v13 = 1;
      *(a1 + 16) = 1;
      goto LABEL_22;
    }

    LODWORD(v32) = v8;
    v31 = WTF::fastMalloc(v4, (8 * v8));
    while (1)
    {
      v9 = IPC::Decoder::decode<WebCore::FloatPoint>(a2);
      v29 = v9;
      v30 = v5;
      if ((v5 & 1) == 0)
      {
        break;
      }

      if (HIDWORD(v32) == v32)
      {
        v10 = WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionFrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v31, HIDWORD(v32) + 1, &v29);
        *(v31 + HIDWORD(v32)) = *v10;
      }

      else
      {
        *(v31 + HIDWORD(v32)) = v9;
      }

      ++HIDWORD(v32);
      if (!--v8)
      {
        goto LABEL_15;
      }
    }
  }

  v13 = 0;
  *a1 = 0;
  *(a1 + 16) = 0;
LABEL_22:
  result = v31;
  if (v31)
  {
    v31 = 0;
    LODWORD(v32) = 0;
    result = WTF::fastFree(result, v5);
  }

  if ((v13 & 1) == 0)
  {
    goto LABEL_41;
  }

  return result;
}