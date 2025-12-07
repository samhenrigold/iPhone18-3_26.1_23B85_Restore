void sub_23C963A78(_Unwind_Exception *a1)
{
  *v1 = 0;
  absl::lts_20240722::Mutex::ReaderUnlock(&qword_2810C1080);
  _Unwind_Resume(a1);
}

void absl::lts_20240722::log_internal::anonymous namespace::GlobalLogSinkSet::AddLogSink(absl::lts_20240722::log_internal::_anonymous_namespace_::GlobalLogSinkSet *this, absl::lts_20240722::LogSink *a2)
{
  v8 = this;
  absl::lts_20240722::Mutex::Lock(&qword_2810C1080, a2);
  v3 = qword_2810C1088;
  if (qword_2810C1088 != qword_2810C1090)
  {
    while (*v3 != this)
    {
      if (++v3 == qword_2810C1090)
      {
        goto LABEL_7;
      }
    }
  }

  if (v3 == qword_2810C1090)
  {
LABEL_7:
    std::vector<absl::lts_20240722::LogSink *>::push_back[abi:ne200100](&qword_2810C1088, &v8);
    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  absl::lts_20240722::Mutex::Unlock(&qword_2810C1080);
  if ((v4 & 1) == 0)
  {
  }
}

void absl::lts_20240722::log_internal::FlushLogSinks(absl::lts_20240722::log_internal *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_39, memory_order_acquire) & 1) == 0)
  {
    v9 = __cxa_guard_acquire(&_MergedGlobals_39);
    if (v9)
    {
      _ZN4absl12lts_2024072212NoDestructorINS0_12log_internal12_GLOBAL__N_116GlobalLogSinkSetEEC1IJELi0EEEDpOT_(v9, v10);
      __cxa_guard_release(&_MergedGlobals_39);
    }
  }

  if (*is_logging == 1)
  {
    absl::lts_20240722::Mutex::AssertReaderHeld(&qword_2810C1080, v2);
    v4 = qword_2810C1088;
    v3 = qword_2810C1090;
    while (v4 != v3)
    {
      v5 = *v4++;
      (*(*v5 + 24))(v5);
    }
  }

  else
  {
    v6 = is_logging;
    absl::lts_20240722::Mutex::ReaderLock(&qword_2810C1080);
    *v6 = 1;
    v8 = qword_2810C1088;
    for (i = qword_2810C1090; v8 != i; v8 += 8)
    {
      (*(**v8 + 24))();
    }

    *v6 = 0;
    absl::lts_20240722::Mutex::ReaderUnlock(&qword_2810C1080);
  }
}

void sub_23C963CAC(_Unwind_Exception *a1)
{
  *v1 = 0;
  absl::lts_20240722::Mutex::ReaderUnlock(&qword_2810C1080);
  _Unwind_Resume(a1);
}

void _ZN4absl12lts_2024072212NoDestructorINS0_12log_internal12_GLOBAL__N_116GlobalLogSinkSetEEC1IJELi0EEEDpOT_(uint64_t a1, absl::lts_20240722::LogSink *a2)
{
  *&qword_2810C1090 = 0u;
  *&qword_2810C1080 = 0u;
  if ((atomic_load_explicit(byte_2810C1078, memory_order_acquire) & 1) == 0)
  {
    _ZN4absl12lts_2024072212NoDestructorINS0_12log_internal12_GLOBAL__N_116GlobalLogSinkSetEEC1IJELi0EEEDpOT__cold_1();
  }
}

void sub_23C963D18(_Unwind_Exception *a1)
{
  if (qword_2810C1088)
  {
    qword_2810C1090 = qword_2810C1088;
    operator delete(qword_2810C1088);
  }

  absl::lts_20240722::Mutex::~Mutex(&qword_2810C1080);
  _Unwind_Resume(a1);
}

uint64_t absl::lts_20240722::log_internal::anonymous namespace::StderrLogSink::Send(absl::lts_20240722 *a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  v4 = absl::lts_20240722::StderrThreshold(a1);
  if (v3 >= v4 || (result = absl::lts_20240722::log_internal::IsInitialized(v4), (result & 1) == 0))
  {
    {
      v6 = (a2 + 104);
      v7 = *(a2 + 127);
      if ((v7 & 0x8000000000000000) == 0)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v6 = (a2 + 104);
      v7 = *(a2 + 127);
      if ((v7 & 0x8000000000000000) == 0)
      {
LABEL_5:
        if (v7)
        {

          return absl::lts_20240722::log_internal::WriteToStderr(v6, v7);
        }

LABEL_14:
        v6 = *(a2 + 64);
        v7 = *(a2 + 72) - 1;

        return absl::lts_20240722::log_internal::WriteToStderr(v6, v7);
      }
    }

    v7 = *(a2 + 112);
    if (v7)
    {
      v6 = *v6;

      return absl::lts_20240722::log_internal::WriteToStderr(v6, v7);
    }

    goto LABEL_14;
  }

  return result;
}

void absl::lts_20240722::base_internal::CallOnceImpl<absl::lts_20240722::log_internal::anonymous namespace::StderrLogSink::Send(absl::lts_20240722::LogEntry const&)::{lambda(void)#1}>(atomic_uint *a1)
{
  v1 = a1;
  v2 = 0;
  v5 = *MEMORY[0x277D85DE8];
  atomic_compare_exchange_strong_explicit(a1, &v2, 0x65C2937Bu, memory_order_relaxed, memory_order_relaxed);
  {
    if ((absl::lts_20240722::log_internal::IsInitialized(a1) & 1) == 0)
    {
      strcpy(v4, "WARNING: All log messages before absl::InitializeLog() is called are written to STDERR\n");
      v3 = strlen(v4);
      absl::lts_20240722::log_internal::WriteToStderr(v4, v3);
    }

    if (atomic_exchange_explicit(v1, 0xDDu, memory_order_release) == 94570706)
    {
      ORToolsCpL2AccessVariable::~ORToolsCpL2AccessVariable(v1);
    }
  }
}

void std::vector<absl::lts_20240722::LogSink *>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 < v3)
  {
    *v4 = *a2;
    v5 = (v4 + 1);
LABEL_3:
    *(a1 + 8) = v5;
    return;
  }

  v6 = *a1;
  v7 = v4 - *a1;
  v8 = v7 >> 3;
  v9 = (v7 >> 3) + 1;
  if (v9 >> 61)
  {
    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v10 = v3 - v6;
  if (v10 >> 2 > v9)
  {
    v9 = v10 >> 2;
  }

  if (v10 >= 0x7FFFFFFFFFFFFFF8)
  {
    v11 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (!(v11 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  *(8 * v8) = *a2;
  v5 = 8 * v8 + 8;
  memcpy(0, v6, v7);
  *a1 = 0;
  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
  if (!v6)
  {
    goto LABEL_3;
  }

  operator delete(v6);
  *(a1 + 8) = v5;
}

void absl::lts_20240722::base_internal::AtomicHook<void (*)(absl::lts_20240722::LogSeverity,char const*,int,std::string const&)>::operator()<absl::lts_20240722::LogSeverity,char const* const&,int,char const(&)[38]>(atomic_ullong *a1, unsigned int *a2, uint64_t *a3, unsigned int *a4, char *__s)
{
  explicit = atomic_load_explicit(a1, memory_order_acquire);
  v7 = *a2;
  v8 = *a3;
  v9 = *a4;
  v10 = strlen(__s);
  if (v10 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v11 = v10;
  if (v10 >= 0x17)
  {
    operator new();
  }

  v13 = v10;
  if (v10)
  {
    memcpy(&__dst, __s, v10);
  }

  *(&__dst + v11) = 0;
  explicit(v7, v8, v9, &__dst);
  if (v13 < 0)
  {
    operator delete(__dst);
  }
}

void sub_23C96414C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t absl::lts_20240722::log_internal::LogMessage::operator<<<int,0>(uint64_t a1, unsigned int *a2)
{
  absl::lts_20240722::log_internal::LogMessage::OstreamView::OstreamView(v5, *(a1 + 8));
  MEMORY[0x23EED9180](v6 + 280, *a2);
  absl::lts_20240722::log_internal::LogMessage::OstreamView::~OstreamView(v5);
  return a1;
}

void sub_23C9641D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  absl::lts_20240722::log_internal::LogMessage::OstreamView::~OstreamView(va);
  _Unwind_Resume(a1);
}

uint64_t absl::lts_20240722::log_internal::LogMessage::operator<<<unsigned int,0>(uint64_t a1, unsigned int *a2)
{
  absl::lts_20240722::log_internal::LogMessage::OstreamView::OstreamView(v5, *(a1 + 8));
  MEMORY[0x23EED9190](v6 + 280, *a2);
  absl::lts_20240722::log_internal::LogMessage::OstreamView::~OstreamView(v5);
  return a1;
}

void sub_23C964238(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  absl::lts_20240722::log_internal::LogMessage::OstreamView::~OstreamView(va);
  _Unwind_Resume(a1);
}

uint64_t absl::lts_20240722::log_internal::LogMessage::operator<<<unsigned long,0>(uint64_t a1, void *a2)
{
  absl::lts_20240722::log_internal::LogMessage::OstreamView::OstreamView(v5, *(a1 + 8));
  MEMORY[0x23EED91A0](v6 + 280, *a2);
  absl::lts_20240722::log_internal::LogMessage::OstreamView::~OstreamView(v5);
  return a1;
}

void sub_23C9642A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  absl::lts_20240722::log_internal::LogMessage::OstreamView::~OstreamView(va);
  _Unwind_Resume(a1);
}

uint64_t absl::lts_20240722::log_internal::LogMessage::operator<<<long long,0>(uint64_t a1, void *a2)
{
  absl::lts_20240722::log_internal::LogMessage::OstreamView::OstreamView(v5, *(a1 + 8));
  MEMORY[0x23EED91B0](v6 + 280, *a2);
  absl::lts_20240722::log_internal::LogMessage::OstreamView::~OstreamView(v5);
  return a1;
}

void sub_23C964308(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  absl::lts_20240722::log_internal::LogMessage::OstreamView::~OstreamView(va);
  _Unwind_Resume(a1);
}

uint64_t absl::lts_20240722::log_internal::LogMessage::operator<<<double,0>(uint64_t a1, double *a2)
{
  absl::lts_20240722::log_internal::LogMessage::OstreamView::OstreamView(v5, *(a1 + 8));
  MEMORY[0x23EED9170](v6 + 280, *a2);
  absl::lts_20240722::log_internal::LogMessage::OstreamView::~OstreamView(v5);
  return a1;
}

void sub_23C964370(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  absl::lts_20240722::log_internal::LogMessage::OstreamView::~OstreamView(va);
  _Unwind_Resume(a1);
}

uint64_t absl::lts_20240722::log_internal::LogMessage::operator<<<BOOL,0>(uint64_t a1, unsigned __int8 *a2)
{
  absl::lts_20240722::log_internal::LogMessage::OstreamView::OstreamView(v5, *(a1 + 8));
  MEMORY[0x23EED9160](v6 + 280, *a2);
  absl::lts_20240722::log_internal::LogMessage::OstreamView::~OstreamView(v5);
  return a1;
}

void sub_23C9643D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  absl::lts_20240722::log_internal::LogMessage::OstreamView::~OstreamView(va);
  _Unwind_Resume(a1);
}

uint64_t absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(uint64_t a1, const void *a2, size_t a3)
{
  v6 = *(a1 + 8);
  if (!*(v6 + 1930))
  {
    *(v6 + 1930) = v6 + 440;
    *(v6 + 1931) = 15000;
    absl::lts_20240722::log_internal::LogMessage::LogMessageData::InitializeEncodingAndFormat(v6);
  }

  v14 = *(v6 + 965);
  v7 = absl::lts_20240722::log_internal::EncodeMessageStart(7, a3 + 20, &v14);
  v9 = v8;
  result = absl::lts_20240722::log_internal::EncodeBytesTruncate(6, a2, a3, &v14);
  if (result)
  {
    result = absl::lts_20240722::log_internal::EncodeMessageLength(v7, v9, &v14);
    v11 = *(a1 + 8);
    if (!*(v11 + 1930))
    {
      *(v11 + 1930) = v11 + 440;
      *(v11 + 1931) = 15000;
      result = absl::lts_20240722::log_internal::LogMessage::LogMessageData::InitializeEncodingAndFormat(v11);
    }

    *(v11 + 965) = v14;
  }

  else
  {
    v12 = *(a1 + 8);
    v13 = v12;
    if (!*(v12 + 1930))
    {
      *(v12 + 1930) = v12 + 440;
      *(v12 + 1931) = 15000;
      result = absl::lts_20240722::log_internal::LogMessage::LogMessageData::InitializeEncodingAndFormat(v12);
      v13 = *(a1 + 8);
      if (!*(v13 + 1930))
      {
        *(v13 + 1930) = v13 + 440;
        *(v13 + 1931) = 15000;
        result = absl::lts_20240722::log_internal::LogMessage::LogMessageData::InitializeEncodingAndFormat(v13);
      }
    }

    *(v12 + 1931) -= *(v13 + 1931);
  }

  return result;
}

uint64_t absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)1>(uint64_t a1, const void *a2, size_t a3)
{
  v6 = *(a1 + 8);
  if (!*(v6 + 1930))
  {
    *(v6 + 1930) = v6 + 440;
    *(v6 + 1931) = 15000;
    absl::lts_20240722::log_internal::LogMessage::LogMessageData::InitializeEncodingAndFormat(v6);
  }

  v14 = *(v6 + 965);
  v7 = absl::lts_20240722::log_internal::EncodeMessageStart(7, a3 + 20, &v14);
  v9 = v8;
  result = absl::lts_20240722::log_internal::EncodeBytesTruncate(1, a2, a3, &v14);
  if (result)
  {
    result = absl::lts_20240722::log_internal::EncodeMessageLength(v7, v9, &v14);
    v11 = *(a1 + 8);
    if (!*(v11 + 1930))
    {
      *(v11 + 1930) = v11 + 440;
      *(v11 + 1931) = 15000;
      result = absl::lts_20240722::log_internal::LogMessage::LogMessageData::InitializeEncodingAndFormat(v11);
    }

    *(v11 + 965) = v14;
  }

  else
  {
    v12 = *(a1 + 8);
    v13 = v12;
    if (!*(v12 + 1930))
    {
      *(v12 + 1930) = v12 + 440;
      *(v12 + 1931) = 15000;
      result = absl::lts_20240722::log_internal::LogMessage::LogMessageData::InitializeEncodingAndFormat(v12);
      v13 = *(a1 + 8);
      if (!*(v13 + 1930))
      {
        *(v13 + 1930) = v13 + 440;
        *(v13 + 1931) = 15000;
        result = absl::lts_20240722::log_internal::LogMessage::LogMessageData::InitializeEncodingAndFormat(v13);
      }
    }

    *(v12 + 1931) -= *(v13 + 1931);
  }

  return result;
}

uint64_t absl::lts_20240722::log_internal::LogMessage::LogMessageData::LogMessageData(uint64_t a1, const char *a2, int a3, int a4, uint64_t a5, int a6)
{
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0;
  *(a1 + 136) = 0;
  *(a1 + 272) = 0;
  v12 = a1 + 280;
  *(a1 + 336) = 0;
  *(a1 + 280) = MEMORY[0x277D82850] + 24;
  *(a1 + 288) = MEMORY[0x277D82850] + 64;
  std::ios_base::init((a1 + 288), 0);
  *(a1 + 424) = 0;
  *(a1 + 432) = -1;
  *(a1 + 15440) = 0u;
  v13 = v12 + *(*(a1 + 280) - 24);
  *(v13 + 8) |= 0x201u;
  v14 = strlen(a2);
  *a1 = a2;
  *(a1 + 8) = v14;
  v15 = strlen(a2);
  if (v15)
  {
    v16 = a2 - 1;
    v17 = -1;
    while (1)
    {
      v18 = v17;
      if (v17 - v15 == -1)
      {
        break;
      }

      v19 = *(v15 + v16);
      ++v17;
      --v16;
      if (v19 == 47)
      {
        v20 = &a2[v15 - v17];
        if (v17 != v15)
        {
          v15 = (v18 + 1);
          a2 = v20;
        }

        break;
      }
    }
  }

  *(a1 + 16) = a2;
  *(a1 + 24) = v15;
  *(a1 + 32) = a3;
  ShouldPrependLogPrefix = absl::lts_20240722::ShouldPrependLogPrefix(v15);
  *(a1 + 36) = ShouldPrependLogPrefix;
  v22 = a4 & ~(a4 >> 31);
  if (a4 > 3)
  {
    v22 = 2;
  }

  *(a1 + 40) = v22;
  *(a1 + 44) = -1;
  *(a1 + 48) = a5;
  *(a1 + 56) = a6;
  *(a1 + 60) = absl::lts_20240722::base_internal::GetCachedTID(ShouldPrependLogPrefix);
  return a1;
}

BOOL absl::lts_20240722::log_internal::LogMessage::LogMessageData::InitializeEncodingAndFormat(absl::lts_20240722::log_internal::LogMessage::LogMessageData *this)
{
  v2 = *this;
  v3 = *(this + 1);
  if (!*(this + 1930))
  {
    *(this + 1930) = this + 440;
    *(this + 1931) = 15000;
    absl::lts_20240722::log_internal::LogMessage::LogMessageData::InitializeEncodingAndFormat(this);
  }

  absl::lts_20240722::log_internal::EncodeBytesTruncate(2, v2, v3, this + 1930);
  v4 = *(this + 8);
  if (!*(this + 1930))
  {
    *(this + 1930) = this + 440;
    *(this + 1931) = 15000;
    absl::lts_20240722::log_internal::LogMessage::LogMessageData::InitializeEncodingAndFormat(this);
  }

  absl::lts_20240722::log_internal::EncodeVarint(3, v4, this + 1930);
  v5 = absl::lts_20240722::ToUnixNanos(*(this + 6), *(this + 14));
  if (!*(this + 1930))
  {
    *(this + 1930) = this + 440;
    *(this + 1931) = 15000;
    absl::lts_20240722::log_internal::LogMessage::LogMessageData::InitializeEncodingAndFormat(this);
  }

  absl::lts_20240722::log_internal::EncodeVarint(4, v5, this + 1930);
  v6 = *(this + 10);
  if (v6 > 1)
  {
    if (v6 == 2)
    {
      v7 = 950;
      if (*(this + 1930))
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }

    if (v6 == 3)
    {
      v7 = 1100;
      if (*(this + 1930))
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }

    goto LABEL_16;
  }

  if (v6)
  {
    if (v6 == 1)
    {
      v7 = 900;
      if (*(this + 1930))
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }

LABEL_16:
    v7 = 800;
    if (*(this + 1930))
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  v8 = *(this + 11);
  if (v8 == -1)
  {
    v9 = 800;
  }

  else
  {
    v9 = 600 - v8;
  }

  v7 = v9;
  if (!*(this + 1930))
  {
LABEL_24:
    *(this + 1930) = this + 440;
    *(this + 1931) = 15000;
    absl::lts_20240722::log_internal::LogMessage::LogMessageData::InitializeEncodingAndFormat(this);
  }

LABEL_25:
  absl::lts_20240722::log_internal::EncodeVarint(5, v7, this + 1930);
  v10 = *(this + 15);
  if (!*(this + 1930))
  {
    *(this + 1930) = this + 440;
    *(this + 1931) = 15000;
    absl::lts_20240722::log_internal::LogMessage::LogMessageData::InitializeEncodingAndFormat(this);
  }

  return absl::lts_20240722::log_internal::EncodeVarint(6, v10, this + 1930);
}

BOOL absl::lts_20240722::log_internal::LogMessage::LogMessageData::FinalizeEncodingAndFormat(_BOOL8 this)
{
  v1 = this;
  v2 = (this + 440);
  v3 = *(this + 15440);
  if (!v3)
  {
    *(this + 15440) = v2;
    *(this + 15448) = 15000;
    this = absl::lts_20240722::log_internal::LogMessage::LogMessageData::InitializeEncodingAndFormat(this);
    v3 = *(v1 + 15440);
  }

  v23[0] = v2;
  v23[1] = (v3 - v2);
  v4 = v1 + 15456;
  v21 = (v1 + 15456);
  v22 = 14998;
  if (*(v1 + 36) == 1)
  {
    v5 = *(v1 + 40);
    v6 = *(v1 + 48);
    v7 = *(v1 + 56);
    v8 = *(v1 + 60);
    v9 = *(v1 + 16);
    v10 = *(v1 + 24);
    v11 = *(v1 + 32);
    IsLoggingToLogSink = absl::lts_20240722::log_internal::ThreadIsLoggingToLogSink(this);
    *(v1 + 80) = absl::lts_20240722::log_internal::FormatLogPrefix(v5, v6, v7, v8, v9, v10, v11, IsLoggingToLogSink, &v21);
    v20 = 0uLL;
    result = absl::lts_20240722::log_internal::ProtoField::DecodeFrom(v19, v23);
    if (!result)
    {
      goto LABEL_29;
    }
  }

  else
  {
    *(v1 + 80) = 0;
    v20 = 0uLL;
    result = absl::lts_20240722::log_internal::ProtoField::DecodeFrom(v19, v23);
    if (!result)
    {
      goto LABEL_29;
    }
  }

  do
  {
    if (v19[0] == 7 && v19[1] == 2)
    {
      v27 = v20;
      if (v22 > 1)
      {
        v25 = 0;
        v26 = 0;
        while (absl::lts_20240722::log_internal::ProtoField::DecodeFrom(v24, &v27))
        {
          v15 = v24[0] == 6 || v24[0] == 1;
          if (v15 && v24[1] == 2)
          {
            v16 = v26 >= v22 ? v22 : v26;
            memcpy(v21, v25, v16);
            v21 += v16;
            v22 -= v16;
            if (v16 < v26)
            {
              break;
            }
          }
        }
      }
    }

    result = absl::lts_20240722::log_internal::ProtoField::DecodeFrom(v19, v23);
  }

  while (result);
LABEL_29:
  v17 = &v21[-v4];
  *v21 = 10;
  v18 = (v17 + 2);
  if ((v17 + 2) >= 0x3A98)
  {
    v18 = 15000;
  }

  *(v1 + 64) = v4;
  *(v1 + 72) = v18;
  return result;
}

void absl::lts_20240722::log_internal::LogMessage::LogBacktraceIfNeeded(absl::lts_20240722::log_internal::LogMessage::LogMessageData **this)
{
  if (absl::lts_20240722::log_internal::IsInitialized(this))
  {
    if (absl::lts_20240722::log_internal::ShouldLogBacktraceAt(*(this[1] + 2), *(this[1] + 3), *(this[1] + 8), v2, v3))
    {
      absl::lts_20240722::log_internal::LogMessage::OstreamView::OstreamView(v8, this[1]);
      v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>((v9 + 280), " (stacktrace:\n", 14);
      v5 = absl::lts_20240722::log_internal::MaxFramesInLogStackTrace(v4);
      ShouldSymbolizeLogStackTrace = absl::lts_20240722::log_internal::ShouldSymbolizeLogStackTrace(v5);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>((v9 + 280), ") ", 2);
      absl::lts_20240722::log_internal::LogMessage::OstreamView::~OstreamView(v8);
    }
  }
}

void sub_23C964CF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  absl::lts_20240722::log_internal::LogMessage::OstreamView::~OstreamView(va);
  _Unwind_Resume(a1);
}

void *std::unique_ptr<absl::lts_20240722::log_internal::LogMessage::LogMessageData>::~unique_ptr[abi:ne200100](void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    std::ostream::~ostream();
    if (*(v1 + 136))
    {
      operator delete(*(v1 + 144));
    }

    if (*(v1 + 127) < 0)
    {
      operator delete(*(v1 + 104));
    }

    MEMORY[0x23EED9460](v1, 0x10F2C4014A34786);
    return v2;
  }

  return result;
}

void absl::lts_20240722::log_internal::LogMessage::Flush(absl::lts_20240722::log_internal::LogMessage *this)
{
  v2 = *(*(this + 1) + 40);
  if (v2 >= absl::lts_20240722::MinLogLevel(this))
  {
    v3 = *(this + 1);
    if (*(v3 + 130) == 1)
    {
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(this, ": ", 2uLL);
      absl::lts_20240722::base_internal::StrError(__p, *this);
      if ((v12 & 0x80u) == 0)
      {
        v4 = __p;
      }

      else
      {
        v4 = __p[0];
      }

      if ((v12 & 0x80u) == 0)
      {
        v5 = v12;
      }

      else
      {
        v5 = __p[1];
      }

      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)1>(this, v4, v5);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(this, " [", 2uLL);
      v13 = *this;
      v6 = absl::lts_20240722::log_internal::LogMessage::operator<<<int,0>(this, &v13);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v6, "]", 1uLL);
      if (v12 < 0)
      {
        operator delete(__p[0]);
      }

      v3 = *(this + 1);
    }

    if (*(v3 + 40) == 3)
    {
      if (absl::lts_20240722::log_internal::ExitOnDFatal(v3))
      {
        v7 = 0;
        atomic_compare_exchange_strong_explicit(absl::lts_20240722::log_internal::LogMessage::Flush(void)::seen_fatal, &v7, 1u, memory_order_relaxed, memory_order_relaxed);
        v3 = *(this + 1);
        if (!v7)
        {
          *(v3 + 128) = 1;
        }
      }

      else
      {
        v3 = *(this + 1);
      }
    }

    absl::lts_20240722::log_internal::LogMessage::LogMessageData::FinalizeEncodingAndFormat(v3);
    v8 = *(this + 1);
    v9 = (v8 + 440);
    v10 = *(v8 + 1930);
    if (!v10)
    {
      *(v8 + 1930) = v9;
      *(v8 + 1931) = 15000;
      absl::lts_20240722::log_internal::LogMessage::LogMessageData::InitializeEncodingAndFormat(v8);
      v10 = *(v8 + 1930);
      v8 = *(this + 1);
    }

    *(v8 + 11) = v9;
    *(v8 + 12) = v10 - v8 - 440;
    absl::lts_20240722::log_internal::LogMessage::SendToLog(this);
  }
}

void sub_23C964F10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t absl::lts_20240722::log_internal::LogMessage::WithVerbosity(uint64_t this, int a2)
{
  v2 = a2 & ~(a2 >> 31);
  if (a2 == -1)
  {
    v2 = -1;
  }

  *(*(this + 8) + 44) = v2;
  return this;
}

uint64_t absl::lts_20240722::log_internal::LogMessage::operator<<(uint64_t a1, void *a2)
{
  v3 = a2[1];
  if (*(a2 + 23) >= 0)
  {
    v4 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v4 = v3;
  }

  absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)1>(a1, a2, v4);
  return a1;
}

uint64_t absl::lts_20240722::log_internal::LogMessage::operator<<(uint64_t a1, void (*a2)(uint64_t))
{
  absl::lts_20240722::log_internal::LogMessage::OstreamView::OstreamView(v5, *(a1 + 8));
  a2(*(a1 + 8) + 280 + *(*(*(a1 + 8) + 280) - 24));
  absl::lts_20240722::log_internal::LogMessage::OstreamView::~OstreamView(v5);
  return a1;
}

void sub_23C965040(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  absl::lts_20240722::log_internal::LogMessage::OstreamView::~OstreamView(va);
  _Unwind_Resume(a1);
}

void absl::lts_20240722::log_internal::LogMessage::SendToLog(absl::lts_20240722::log_internal::LogMessage *this)
{
  if (*(*(this + 1) + 40) == 3 && absl::lts_20240722::log_internal::ExitOnDFatal(this))
  {
    absl::lts_20240722::log_internal::LogMessage::PrepareToDie(this);
  }

  v2 = *(this + 1);
  v3 = *(v2 + 136);
  if (v3)
  {
    v4 = *(v2 + 144);
  }

  else
  {
    v4 = (v2 + 144);
  }

  absl::lts_20240722::log_internal::LogToSinks(v2, v4, v3 >> 1, *(v2 + 272));
  if (*(*(this + 1) + 40) == 3)
  {
    v6 = absl::lts_20240722::log_internal::ExitOnDFatal(v5);
    if (v6)
    {
      absl::lts_20240722::log_internal::FlushLogSinks(v6);
      if (*(*(this + 1) + 129) == 1)
      {
        absl::lts_20240722::log_internal::LogMessage::FailQuietly(v7);
      }

      absl::lts_20240722::log_internal::LogMessage::FailWithoutStackTrace(v7);
    }
  }
}

absl::lts_20240722::log_internal::LogMessage::OstreamView *absl::lts_20240722::log_internal::LogMessage::OstreamView::OstreamView(absl::lts_20240722::log_internal::LogMessage::OstreamView *this, absl::lts_20240722::log_internal::LogMessage::LogMessageData *a2)
{
  *this = MEMORY[0x277D82868] + 16;
  MEMORY[0x23EED9320](this + 8);
  v4 = 0uLL;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 1) = 0u;
  *this = &unk_284F38FB8;
  *(this + 8) = a2;
  v5 = *(a2 + 1930);
  if (!v5)
  {
    *(a2 + 1930) = a2 + 440;
    *(a2 + 1931) = 15000;
    absl::lts_20240722::log_internal::LogMessage::LogMessageData::InitializeEncodingAndFormat(a2);
    v5 = *(a2 + 1930);
    v4 = 0uLL;
  }

  v6 = *(a2 + 1931);
  *(this + 9) = v5;
  *(this + 10) = v6;
  *(this + 88) = v4;
  *(this + 104) = v4;
  *(this + 11) = absl::lts_20240722::log_internal::EncodeMessageStart(7, v6, this + 9);
  *(this + 12) = v7;
  *(this + 13) = absl::lts_20240722::log_internal::EncodeMessageStart(1, *(this + 10), this + 9);
  *(this + 14) = v8;
  v9 = *(this + 9);
  v10 = *(this + 8);
  v11 = v9 + *(this + 10);
  *(this + 5) = v9;
  *(this + 6) = v9;
  *(this + 7) = v11;
  v12 = (v10 + 280 + *(*(v10 + 280) - 24));
  v12->__rdbuf_ = this;
  std::ios_base::clear(v12, 0);
  return this;
}

void sub_23C965204(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

void sub_23C96521C(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

void sub_23C965234(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

void absl::lts_20240722::log_internal::LogMessage::OstreamView::~OstreamView(absl::lts_20240722::log_internal::LogMessage::OstreamView *this)
{
  v2 = (*(this + 8) + 280 + *(*(*(this + 8) + 280) - 24));
  v2->__rdbuf_ = 0;
  std::ios_base::clear(v2, 0);
  v3 = *(this + 13);
  if (v3)
  {
    v4 = *(this + 6) - *(this + 5);
    if (v4)
    {
      v5 = *(this + 9) + v4;
      v6 = *(this + 10) - v4;
      *(this + 9) = v5;
      *(this + 10) = v6;
      absl::lts_20240722::log_internal::EncodeMessageLength(v3, *(this + 14), this + 9);
      absl::lts_20240722::log_internal::EncodeMessageLength(*(this + 11), *(this + 12), this + 9);
      v7 = *(this + 8);
      if (!*(v7 + 1930))
      {
        *(v7 + 1930) = v7 + 440;
        *(v7 + 1931) = 15000;
        absl::lts_20240722::log_internal::LogMessage::LogMessageData::InitializeEncodingAndFormat(v7);
      }

      *(v7 + 965) = *(this + 72);
    }
  }

  else
  {
    v8 = *(this + 8);
    v9 = v8;
    if (!*(v8 + 1930))
    {
      *(v8 + 1930) = v8 + 440;
      *(v8 + 1931) = 15000;
      absl::lts_20240722::log_internal::LogMessage::LogMessageData::InitializeEncodingAndFormat(v8);
      v9 = *(this + 8);
      if (!*(v9 + 1930))
      {
        *(v9 + 1930) = v9 + 440;
        *(v9 + 1931) = 15000;
        absl::lts_20240722::log_internal::LogMessage::LogMessageData::InitializeEncodingAndFormat(v9);
      }
    }

    *(v8 + 1931) -= *(v9 + 1931);
  }

  *this = MEMORY[0x277D82868] + 16;
  std::locale::~locale(this + 1);
}

{
  absl::lts_20240722::log_internal::LogMessage::OstreamView::~OstreamView(this);

  JUMPOUT(0x23EED9460);
}

uint64_t absl::lts_20240722::log_internal::LogMessage::PrepareToDie(absl::lts_20240722::log_internal::LogMessage *this)
{
  result = *(this + 1);
  if (*(result + 128) == 1)
  {
    ORToolsCpL2AccessVariable::~ORToolsCpL2AccessVariable(result);
    result = *(this + 1);
  }

  if ((*(result + 129) & 1) == 0)
  {
    v3 = *(result + 136);
    if (v3)
    {
      v4 = *(result + 144);
    }

    else
    {
      v4 = (result + 144);
    }

    absl::lts_20240722::log_internal::LogToSinks(result, v4, v3 >> 1, *(result + 272));
    v5 = MEMORY[0x23EED9020](*(this + 1) + 104, "*** Check failure stack trace: ***\n");
    v6 = absl::lts_20240722::log_internal::MaxFramesInLogStackTrace(v5);
    ShouldSymbolizeLogStackTrace = absl::lts_20240722::log_internal::ShouldSymbolizeLogStackTrace(v6);
    v9 = (*(this + 1) + 104);
  }

  return result;
}

void *absl::lts_20240722::log_internal::anonymous namespace::WriteToStream(absl::lts_20240722::log_internal::_anonymous_namespace_ *this, char *a2, void *a3)
{
  v5 = strlen(this);

  return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, this, v5);
}

void absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(absl::lts_20240722::log_internal::LogMessageFatal *this)
{
  absl::lts_20240722::log_internal::LogMessage::Flush(this);
  absl::lts_20240722::log_internal::LogMessage::FailWithoutStackTrace(v1);
}

{
  absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(this);
}

void OUTLINED_FUNCTION_5_0(_DWORD *a1, const char *a2, uint64_t a3)
{

  absl::lts_20240722::log_internal::LogMessage::LogMessage(a1, a2, a3, 3);
}

uint64_t OUTLINED_FUNCTION_6_0()
{

  return absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)1>(v0, v2, v1);
}

BOOL absl::lts_20240722::log_internal::EncodeVarint(uint64_t a1, unint64_t a2, void *a3)
{
  v3 = 8 * a1;
  v4 = 1;
  if ((8 * a1) >= 0x80)
  {
    v5 = 8 * a1;
    do
    {
      v6 = v5 >> 14;
      v5 >>= 7;
      ++v4;
    }

    while (v6);
  }

  v7 = 1;
  if (a2 >= 0x80)
  {
    v8 = a2;
    do
    {
      v9 = v8 >> 14;
      v8 >>= 7;
      ++v7;
    }

    while (v9);
  }

  v10 = v7 + v4;
  v11 = a3[1];
  if (v7 + v4 > v11)
  {
    result = 0;
    a3[1] = 0;
  }

  else
  {
    v12 = 0;
    do
    {
      *(*a3 + v12) = v3 & 0x7F | ((v4 - 1 != v12) << 7);
      v3 >>= 7;
      ++v12;
    }

    while (v4 != v12);
    v13 = 0;
    v14 = a3[1];
    *a3 += v4;
    a3[1] = v14 - v4;
    do
    {
      *(*a3 + v13) = a2 & 0x7F | ((v7 - 1 != v13) << 7);
      a2 >>= 7;
      ++v13;
    }

    while (v7 != v13);
    v15 = *a3 + v7;
    v16 = a3[1] - v7;
    result = v10 <= v11;
    *a3 = v15;
    a3[1] = v16;
  }

  return result;
}

BOOL absl::lts_20240722::log_internal::EncodeBytesTruncate(uint64_t a1, const void *a2, size_t a3, void *a4)
{
  v5 = (8 * a1) | 2;
  v6 = 1;
  if ((8 * a1) >= 0x80)
  {
    v7 = (8 * a1) | 2;
    do
    {
      v8 = v7 >> 14;
      v7 >>= 7;
      ++v6;
    }

    while (v8);
  }

  v9 = a4[1];
  if (v9 >= a3)
  {
    v10 = a3;
  }

  else
  {
    v10 = a4[1];
  }

  v11 = 1;
  if (v10 >= 0x80)
  {
    do
    {
      v12 = v10 >> 14;
      v10 >>= 7;
      ++v11;
    }

    while (v12);
  }

  v13 = v11 + v6;
  if (v11 + v6 + a3 > v9 && v9 >= v13)
  {
    v15 = v9 - (v11 + v6);
  }

  else
  {
    v15 = a3;
  }

  v16 = v15 + v13;
  if (v15 + v13 > v9)
  {
    v24 = 0;
  }

  else
  {
    v17 = 0;
    do
    {
      *(*a4 + v17) = v5 & 0x7F | ((v6 - 1 != v17) << 7);
      v5 >>= 7;
      ++v17;
    }

    while (v6 != v17);
    v18 = 0;
    v19 = a4[1];
    *a4 += v6;
    a4[1] = v19 - v6;
    v20 = v15;
    do
    {
      *(*a4 + v18) = v20 & 0x7F | ((v11 - 1 != v18) << 7);
      v20 >>= 7;
      ++v18;
    }

    while (v11 != v18);
    v21 = (*a4 + v11);
    v22 = a4[1] - v11;
    *a4 = v21;
    a4[1] = v22;
    memcpy(v21, a2, v15);
    v23 = a4[1];
    *a4 += v15;
    v24 = v23 - v15;
  }

  result = v16 <= v9;
  a4[1] = v24;
  return result;
}

uint64_t absl::lts_20240722::log_internal::EncodeMessageStart(uint64_t a1, unint64_t a2, void *a3)
{
  v3 = (8 * a1) | 2;
  if ((8 * a1) >= 0x80)
  {
    v4 = 1;
    v5 = (8 * a1) | 2;
    do
    {
      v6 = v5 >> 14;
      v5 >>= 7;
      ++v4;
    }

    while (v6);
  }

  else
  {
    v4 = 1;
  }

  v7 = a3[1];
  if (v7 >= a2)
  {
    v8 = a2;
  }

  else
  {
    v8 = a3[1];
  }

  v9 = 1;
  if (v8 >= 0x80)
  {
    do
    {
      v10 = v8 >> 14;
      v8 >>= 7;
      ++v9;
    }

    while (v10);
  }

  if (v9 + v4 <= v7)
  {
    v12 = 0;
    do
    {
      *(*a3 + v12) = v3 & 0x7F | ((v4 - 1 != v12) << 7);
      v3 >>= 7;
      ++v12;
    }

    while (v4 != v12);
    v13 = 0;
    result = *a3 + v4;
    v14 = a3[1] - v4;
    *a3 = result;
    a3[1] = v14;
    do
    {
      *(*a3 + v13) = (v9 - 1 != v13) << 7;
      ++v13;
    }

    while (v9 != v13);
    v15 = a3[1];
    *a3 += v9;
    a3[1] = v15 - v9;
  }

  else
  {
    result = 0;
    a3[1] = 0;
  }

  return result;
}

_BYTE *absl::lts_20240722::log_internal::EncodeMessageLength(_BYTE *result, uint64_t a2, void *a3)
{
  if (result)
  {
    if (*a3 >= result && a2 != 0)
    {
      v4 = *a3 - &result[a2];
      do
      {
        *result++ = v4 & 0x7F | ((--a2 != 0) << 7);
        v4 >>= 7;
      }

      while (a2);
    }
  }

  return result;
}

BOOL absl::lts_20240722::log_internal::ProtoField::DecodeFrom(unint64_t *a1, unsigned __int8 **a2)
{
  v2 = a2[1];
  if (!v2)
  {
    return v2 != 0;
  }

  v3 = 0;
  v4 = 0;
  v5 = 0;
  v6 = *a2;
  while (v2 != v5)
  {
    v7 = v5[v6];
    v4 |= (v7 & 0x7F) << v3;
    ++v5;
    v3 += 7;
    if ((v7 & 0x80) == 0)
    {
      goto LABEL_7;
    }
  }

  v5 = a2[1];
LABEL_7:
  v8 = &v5[v6];
  v9 = (v2 - v5);
  *a2 = v8;
  a2[1] = v9;
  v10 = v4 >> 3;
  v11 = v4 & 7;
  *a1 = v10;
  a1[1] = v11;
  if (v11 > 1)
  {
    if (v11 == 5)
    {
      v19 = 3;
      if (v9 < 3)
      {
        v19 = v9;
      }

      if (v9)
      {
        v20 = *v8;
        if (v9 != 1)
        {
          v20 |= v8[1] << 8;
          if (v9 != 2)
          {
            v20 |= v8[2] << 16;
            if (v9 != 3)
            {
              v20 |= v8[3] << 24;
              v19 = 4;
            }
          }
        }
      }

      else
      {
        v20 = 0;
      }

      *a2 = &v8[v19];
      a2[1] = &v9[-v19];
      a1[2] = v20;
      return v2 != 0;
    }

    if (v11 == 2)
    {
      v13 = 0;
      v14 = 0;
      v15 = 0;
      while (v9 != v15)
      {
        v16 = v15[v8];
        v14 |= (v16 & 0x7F) << v13;
        ++v15;
        v13 += 7;
        if ((v16 & 0x80) == 0)
        {
          goto LABEL_39;
        }
      }

      v15 = v9;
LABEL_39:
      v21 = &v15[v8];
      v22 = (v9 - v15);
      *a2 = v21;
      a2[1] = v22;
      if (v22 >= v14)
      {
        v22 = v14;
      }

      a1[2] = v14;
      a1[3] = v21;
      a1[4] = v22;
      v23 = &v22[*a2];
      v24 = (a2[1] - v22);
      *a2 = v23;
      a2[1] = v24;
    }

    return v2 != 0;
  }

  if (v11)
  {
    if (v9 >= 7)
    {
      v12 = 7;
    }

    else
    {
      v12 = v9;
    }

    if (v9)
    {
      v11 = *v8;
      if (v9 != 1)
      {
        v11 |= v8[1] << 8;
        if (v9 != 2)
        {
          v11 |= v8[2] << 16;
          if (v9 != 3)
          {
            v11 |= v8[3] << 24;
            if (v9 != 4)
            {
              v11 |= v8[4] << 32;
              if (v9 != 5)
              {
                v11 |= v8[5] << 40;
                if (v9 != 6)
                {
                  v11 |= v8[6] << 48;
                  if (v9 != 7)
                  {
                    v11 |= v8[7] << 56;
                    v12 = 8;
                  }
                }
              }
            }
          }
        }
      }
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v17 = 0;
    v12 = 0;
    while (v9 != v12)
    {
      v18 = v8[v12];
      v11 |= (v18 & 0x7F) << v17;
      ++v12;
      v17 += 7;
      if ((v18 & 0x80) == 0)
      {
        goto LABEL_45;
      }
    }

    v12 = v9;
  }

LABEL_45:
  *a2 = &v8[v12];
  a2[1] = &v9[-v12];
  a1[2] = v11;
  return v2 != 0;
}

uint64_t absl::lts_20240722::hash_internal::LowLevelHashLenGt16(absl::lts_20240722::hash_internal *this, unint64_t a2, uint64_t a3, void *a4, const unint64_t *a5)
{
  __asm { PRFM            #0, [X0] }

  v10 = *a4 ^ a3;
  if (a2 < 0x41)
  {
    _X10 = this;
    i = a2;
    if (a2 < 0x21)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v11 = *a4 ^ a3;
    v12 = v11;
    v13 = v11;
    _X10 = this;
    for (i = a2; i > 0x40; i -= 64)
    {
      __asm { PRFM            #0, [X10,#0x40] }

      v17 = *(_X10 + 2);
      v18 = *(_X10 + 3);
      v19 = *(_X10 + 4);
      v20 = *(_X10 + 5);
      v21 = a4[1] ^ *_X10;
      v22 = *(_X10 + 1) ^ v13;
      v23 = *(_X10 + 6);
      v24 = *(_X10 + 7);
      _X10 = (_X10 + 64);
      v13 = ((v21 * v22) >> 64) ^ (v21 * v22);
      v12 = (((a4[2] ^ v17) * (v18 ^ v12)) >> 64) ^ ((a4[2] ^ v17) * (v18 ^ v12));
      v11 = (((a4[3] ^ v19) * (v20 ^ v11)) >> 64) ^ ((a4[3] ^ v19) * (v20 ^ v11));
      v10 = (((a4[4] ^ v23) * (v24 ^ v10)) >> 64) ^ ((a4[4] ^ v23) * (v24 ^ v10));
    }

    v10 = (v10 + v11) ^ v13 ^ v12;
    if (i < 0x21)
    {
      goto LABEL_8;
    }
  }

  v25 = a4[1] ^ *_X10;
  v26 = *(_X10 + 1) ^ v10;
  v27 = v25 * v26;
  v28 = (v25 * v26) >> 64;
  v29 = a4[2] ^ *(_X10 + 2);
  v10 = v27 ^ (v29 * (*(_X10 + 3) ^ v10)) ^ ((v29 * (*(_X10 + 3) ^ v10)) >> 64) ^ v28;
  _X10 = (_X10 + 32);
  i -= 32;
LABEL_8:
  if (i <= 0x10)
  {
    v30 = a4[1];
  }

  else
  {
    v30 = a4[1];
    v10 = (((v30 ^ *_X10) * (*(_X10 + 1) ^ v10)) >> 64) ^ ((v30 ^ *_X10) * (*(_X10 + 1) ^ v10));
  }

  v31 = *(this + a2 - 16) ^ v30 ^ a2;
  return ((v31 * (*(this + a2 - 8) ^ v10)) >> 64) ^ (v31 * (*(this + a2 - 8) ^ v10));
}

double absl::lts_20240722::base_internal::anonymous namespace::CreateGlobalArenas(absl::lts_20240722::base_internal::_anonymous_namespace_ *this)
{
  absl::lts_20240722::base_internal::SpinLock::SpinLock(dword_2810C10A8, 0);
  qword_2810C11C8 = 0x100000000;
  qword_2810C11D0 = sysconf(29);
  xmmword_2810C11D8 = xmmword_23CE312F0;
  dword_2810C11E8 = 0;
  qword_2810C10B0 = 0;
  qword_2810C10B8 = &qword_2810C10B0 ^ 0xFFFFFFFFB37CC16ALL;
  unk_2810C10C0 = dword_2810C10A8;
  dword_2810C10D0 = 0;
  xmmword_2810C10D8 = 0u;
  unk_2810C10E8 = 0u;
  xmmword_2810C10F8 = 0u;
  unk_2810C1108 = 0u;
  xmmword_2810C1118 = 0u;
  unk_2810C1128 = 0u;
  xmmword_2810C1138 = 0u;
  unk_2810C1148 = 0u;
  xmmword_2810C1158 = 0u;
  unk_2810C1168 = 0u;
  xmmword_2810C1178 = 0u;
  unk_2810C1188 = 0u;
  xmmword_2810C1198 = 0u;
  unk_2810C11A8 = 0u;
  xmmword_2810C11B8 = 0u;
  absl::lts_20240722::base_internal::SpinLock::SpinLock(dword_2810C11F0, 0);
  qword_2810C1310 = 0;
  qword_2810C1318 = sysconf(29);
  xmmword_2810C1320 = xmmword_23CE312F0;
  dword_2810C1330 = 0;
  qword_2810C11F8 = 0;
  unk_2810C1200 = &qword_2810C11F8 ^ 0xFFFFFFFFB37CC16ALL;
  qword_2810C1208 = dword_2810C11F0;
  dword_2810C1218 = 0;
  xmmword_2810C1220 = 0u;
  unk_2810C1230 = 0u;
  xmmword_2810C1240 = 0u;
  unk_2810C1250 = 0u;
  xmmword_2810C1260 = 0u;
  unk_2810C1270 = 0u;
  xmmword_2810C1280 = 0u;
  unk_2810C1290 = 0u;
  xmmword_2810C12A0 = 0u;
  unk_2810C12B0 = 0u;
  xmmword_2810C12C0 = 0u;
  unk_2810C12D0 = 0u;
  xmmword_2810C12E0 = 0u;
  unk_2810C12F0 = 0u;
  xmmword_2810C1300 = 0u;
  absl::lts_20240722::base_internal::SpinLock::SpinLock(&algn_2810C1334[4], 0);
  qword_2810C1458 = 0x200000000;
  qword_2810C1460 = sysconf(29);
  xmmword_2810C1468 = xmmword_23CE312F0;
  dword_2810C1478 = 0;
  qword_2810C1340 = 0;
  qword_2810C1348 = &qword_2810C1340 ^ 0xFFFFFFFFB37CC16ALL;
  qword_2810C1350 = &algn_2810C1334[4];
  dword_2810C1360 = 0;
  result = 0.0;
  xmmword_2810C1368 = 0u;
  unk_2810C1378 = 0u;
  xmmword_2810C1388 = 0u;
  unk_2810C1398 = 0u;
  xmmword_2810C13A8 = 0u;
  unk_2810C13B8 = 0u;
  xmmword_2810C13C8 = 0u;
  unk_2810C13D8 = 0u;
  xmmword_2810C13E8 = 0u;
  unk_2810C13F8 = 0u;
  xmmword_2810C1408 = 0u;
  unk_2810C1418 = 0u;
  xmmword_2810C1428 = 0u;
  unk_2810C1438 = 0u;
  xmmword_2810C1448 = 0u;
  return result;
}

void absl::lts_20240722::base_internal::LowLevelAlloc::Free(int *this, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!this)
  {
    return;
  }

  v8 = *(this - 2);
  v26 = 0;
  v28 = v8;
  v9 = v8;
  if ((*(v8 + 292) & 2) != 0)
  {
    v29 = -1;
    v10 = this;
    v11 = pthread_sigmask(1, &v29, &v27);
    this = v10;
    v26 = v11 == 0;
    v9 = v28;
  }

  if (*v9 & 1) != 0 || (v12 = *v9, atomic_compare_exchange_strong_explicit(v9, &v12, v12 | 1, memory_order_acquire, memory_order_acquire), (v12))
  {
    v25 = this;
    absl::lts_20240722::base_internal::SpinLock::SlowLock(v9);
    this = v25;
  }

  absl::lts_20240722::base_internal::AddToFreelist(this, v8, a3, a4, a5, a6, a7, a8);
  v17 = *(v8 + 288);
  if (v17 <= 0)
  {
    absl::lts_20240722::raw_log_internal::RawLog(3, "low_level_alloc.cc", 515, "Check %s failed: %s", v13, v14, v15, v16, "arena->allocation_count > 0", "nothing in arena to free");
LABEL_15:
    __break(1u);
    return;
  }

  *(v8 + 288) = v17 - 1;
  v18 = v28;
  v19 = atomic_exchange_explicit(v28, *v28 & 2, memory_order_release);
  if (v19 >= 8)
  {
    absl::lts_20240722::base_internal::SpinLock::SlowUnlock(v18, v19);
  }

  if (v26)
  {
    v20 = pthread_sigmask(3, &v27, 0);
    if (v20)
    {
      absl::lts_20240722::raw_log_internal::RawLog(3, "low_level_alloc.cc", 301, "pthread_sigmask failed: %d", v21, v22, v23, v24, v20);
      goto LABEL_15;
    }
  }
}

void sub_23C965FAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Unwind_Resume(a1);
}

void sub_23C965FC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Unwind_Resume(a1);
}

void absl::lts_20240722::base_internal::anonymous namespace::ArenaLock::~ArenaLock(absl::lts_20240722::base_internal::_anonymous_namespace_::ArenaLock *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((*this & 1) == 0)
  {
    absl::lts_20240722::raw_log_internal::RawLog(3, "low_level_alloc.cc", 294, "Check %s failed: %s", a5, a6, a7, a8, "left_", "haven't left Arena region");
    __break(1u);
  }
}

unint64_t absl::lts_20240722::base_internal::AddToFreelist(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = *MEMORY[0x277D85DE8];
  v8 = a1 - 8;
  if ((*(a1 - 3) ^ (a1 - 8)) != 0x4C833E95)
  {
    absl::lts_20240722::base_internal::AddToFreelist(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  if (*(a1 - 2) != a2)
  {
    absl::lts_20240722::base_internal::AddToFreelist(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  v9 = *v8;
  v10 = *(a2 + 312);
  if (*v8 <= v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = 0;
    do
    {
      ++v11;
      v9 >>= 1;
    }

    while (v9 > v10);
  }

  v12 = (*v8 - 40) >> 3;
  v13 = *(a2 + 320);
  do
  {
    v13 = 1103515245 * v13 + 12345;
    ++v11;
  }

  while ((v13 & 0x40000000) == 0);
  *(a2 + 320) = v13;
  if (v12 < v11)
  {
    v11 = v12;
  }

  if (v11 <= 0)
  {
    absl::lts_20240722::base_internal::AddToFreelist(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  if (v11 >= 0x1D)
  {
    v11 = 29;
  }

  *a1 = v11;
  v14 = *(a2 + 40);
  v15 = v14;
  memset(v35, 0, sizeof(v35));
  if (v14 >= 1)
  {
    v16 = v14;
    v17 = a2 + 8;
    do
    {
      v18 = v16 - 1;
      v19 = v17;
      do
      {
        v17 = v19;
        v19 = *(v19 + 8 * v18 + 40);
        if (v19)
        {
          v20 = v19 >= v8;
        }

        else
        {
          v20 = 1;
        }
      }

      while (!v20);
      *(v35 + v18) = v17;
    }

    while (v16-- > 1);
  }

  if (v14 < v11)
  {
    v22 = v14 + 1;
    do
    {
      *(v35 + v15++) = a2 + 8;
      *(a2 + 40) = v22++;
    }

    while (v15 < *a1);
    v11 = *a1;
  }

  if (v11)
  {
    v23 = 0;
    v24 = 8 * v11;
    do
    {
      v25 = *(v35 + v23) + v23;
      *&a1[v23 / 4 + 2] = *(v25 + 40);
      *(v25 + 40) = v8;
      v23 += 8;
    }

    while (v24 != v23);
  }

  *(a1 - 3) = v8 ^ 0xFFFFFFFFB37CC16ALL;
  absl::lts_20240722::base_internal::Coalesce((a1 - 8), a2, a3, a4, a5, a6, a7, a8);
  v33 = *&v35[0];

  return absl::lts_20240722::base_internal::Coalesce(v33, v26, v27, v28, v29, v30, v31, v32);
}

_DWORD *absl::lts_20240722::base_internal::LowLevelAlloc::Alloc(absl::lts_20240722::base_internal::LowLevelAlloc *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (atomic_load_explicit(_MergedGlobals_40, memory_order_acquire) == 221)
  {
  }

  else
  {
    v10 = this;
    absl::lts_20240722::base_internal::LowLevelAlloc::Alloc();
    this = v10;
  }

  return absl::lts_20240722::base_internal::DoAllocWithArena(this, dword_2810C10A8, a3, a4, a5, a6, a7, a8);
}

_DWORD *absl::lts_20240722::base_internal::DoAllocWithArena(unint64_t a1, absl::lts_20240722::base_internal::SpinLock *this, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a1;
  v90 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return v8;
  }

  LOWORD(v73) = 0;
  v74 = this;
  v10 = this;
  if ((*(this + 292) & 2) != 0)
  {
    v75[0] = -1;
    BYTE1(v73) = pthread_sigmask(1, v75, &v73 + 1) == 0;
    v10 = v74;
  }

  if (*v10 & 1) != 0 || (v11 = *v10, atomic_compare_exchange_strong_explicit(v10, &v11, v11 | 1, memory_order_acquire, memory_order_acquire), (v11))
  {
    absl::lts_20240722::base_internal::SpinLock::SlowLock(v10);
  }

  if (v8 > 0xFFFFFFFFFFFFFFDFLL || (v12 = *(this + 38), v13 = v8 + v12 + 31, v13 < v8 + 32))
  {
LABEL_74:
    result = absl::lts_20240722::raw_log_internal::RawLog(3, "low_level_alloc.cc", 437, "Check %s failed: %s", a5, a6, a7, a8, "sum >= a", "LowLevelAlloc arithmetic overflow", v73);
    goto LABEL_81;
  }

  v14 = v13 & -v12;
  v15 = this + 8;
  while (1)
  {
    v16 = *(this + 39);
    v17 = 1;
    if (v14 > v16)
    {
      v18 = v14;
      do
      {
        v18 >>= 1;
        ++v17;
      }

      while (v18 > v16);
    }

    if ((v14 - 40) >> 3 < v17)
    {
      v17 = (v14 - 40) >> 3;
    }

    if (v17 <= 0)
    {
      result = absl::lts_20240722::raw_log_internal::RawLog(3, "low_level_alloc.cc", 148, "Check %s failed: %s", a5, a6, a7, a8, "level >= 1", "block not big enough for even one level", v73);
      goto LABEL_81;
    }

    v19 = v17 >= 0x1D ? 29 : v17;
    v20 = *(this + 10);
    if (v19 <= v20)
    {
      break;
    }

LABEL_20:
    v21 = atomic_exchange_explicit(this, *this & 2, memory_order_release);
    if (v21 >= 8)
    {
      absl::lts_20240722::base_internal::SpinLock::SlowUnlock(this, v21);
    }

    v22 = v14 - 1 + 16 * *(this + 37);
    if (v22 < v14)
    {
      goto LABEL_74;
    }

    v23 = v22 & (-16 * *(this + 37));
    v30 = mmap(0, v23, 3, 4098, -1, 0);
    if (v30 == -1)
    {
      v68 = __error();
      result = absl::lts_20240722::raw_log_internal::RawLog(3, "low_level_alloc.cc", 569, "mmap error: %d", v69, v70, v71, v72, *v68);
      goto LABEL_81;
    }

    if (*this & 1) != 0 || (v31 = *this, atomic_compare_exchange_strong_explicit(this, &v31, v31 | 1, memory_order_acquire, memory_order_acquire), (v31))
    {
      absl::lts_20240722::base_internal::SpinLock::SlowLock(this);
    }

    *v30 = v23;
    *(v30 + 8) = v30 ^ 0x4C833E95;
    *(v30 + 16) = this;
    absl::lts_20240722::base_internal::AddToFreelist((v30 + 32), this, v24, v25, v26, v27, v28, v29);
  }

  v32 = this + 8;
  do
  {
    if (*(v32 + 8) < v19)
    {
      v36 = 453;
      v37 = "i < prev->levels";
      v38 = "too few levels in Next()";
      goto LABEL_72;
    }

    v35 = *&v32[8 * (v19 - 1) + 40];
    if (!v35)
    {
      goto LABEL_20;
    }

    if ((*(v35 + 8) ^ v35) != 0xFFFFFFFFB37CC16ALL)
    {
      v36 = 458;
      v37 = "next->header.magic == Magic(kMagicUnallocated, &next->header)";
      v38 = "bad magic number in Next()";
      goto LABEL_72;
    }

    if (*(v35 + 16) != this)
    {
      v36 = 459;
      v37 = "next->header.arena == arena";
      v38 = "bad arena pointer in Next()";
      goto LABEL_72;
    }

    if (v15 != v32)
    {
      if (v35 <= v32)
      {
        v36 = 461;
        v37 = "prev < next";
        v38 = "unordered freelist";
        goto LABEL_72;
      }

      if (&v32[*v32] >= v35)
      {
        v36 = 464;
        v37 = "reinterpret_cast<char *>(prev) + prev->header.size < reinterpret_cast<char *>(next)";
        v38 = "malformed freelist";
LABEL_72:
        result = absl::lts_20240722::raw_log_internal::RawLog(3, "low_level_alloc.cc", v36, "Check %s failed: %s", a5, a6, a7, a8, v37, v38, v73);
        goto LABEL_81;
      }
    }

    v33 = *v35;
    v32 = *&v32[8 * (v19 - 1) + 40];
    v34 = *v35 - v14;
  }

  while (*v35 < v14);
  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  *v75 = 0u;
  if (v20 >= 1)
  {
    v39 = v20;
    do
    {
      v40 = v39 - 1;
      v41 = v15;
      do
      {
        v15 = v41;
        v41 = *&v41[8 * v40 + 40];
        if (v41)
        {
          v42 = v41 >= v35;
        }

        else
        {
          v42 = 1;
        }
      }

      while (!v42);
      *&v75[2 * v40] = v15;
    }

    while (v39-- > 1);
  }

  if (!v20 || *(*v75 + 40) != v35)
  {
    v65 = "element not in freelist";
    v66 = 188;
    v67 = "e == found";
LABEL_77:
    result = absl::lts_20240722::raw_log_internal::RawLog(3, "low_level_alloc.cc", v66, "Check %s failed: %s", a5, a6, a7, a8, v67, v65, v73);
    goto LABEL_81;
  }

  v8 = v35 + 32;
  v44 = *(v35 + 32);
  if (v44)
  {
    v45 = v75;
    v46 = 5;
    do
    {
      if (*(*v45 + 8 * v46) != v35)
      {
        break;
      }

      *(*v45 + 8 * v46) = *(v35 + 8 * v46);
      ++v46;
      v45 += 2;
      --v44;
    }

    while (v44);
  }

  if (v20 >= 1)
  {
    v47 = v20 + 1;
    v48 = v20 - 1;
    v49 = (this + 8 * v20 + 40);
    do
    {
      if (*v49)
      {
        break;
      }

      *(this + 10) = v48;
      --v47;
      --v48;
      --v49;
    }

    while (v47 > 1);
  }

  v42 = __CFADD__(v16, v14);
  v50 = v16 + v14;
  if (v42)
  {
    v65 = "LowLevelAlloc arithmetic overflow";
    v66 = 437;
    v67 = "sum >= a";
    goto LABEL_77;
  }

  if (v50 <= v33)
  {
    v51 = (v35 + v14);
    *v51 = v34;
    v51[1] = (v35 + v14) ^ 0x4C833E95;
    v51[2] = this;
    *v35 = v14;
    absl::lts_20240722::base_internal::AddToFreelist((v35 + v14 + 32), this, a3, a4, a5, a6, a7, a8);
    v56 = *(v35 + 16);
    *(v35 + 8) = v35 ^ 0x4C833E95;
    if (v56 != this)
    {
      result = absl::lts_20240722::raw_log_internal::RawLog(3, "low_level_alloc.cc", 607, "Check %s failed: %s", v52, v53, v54, v55, "s->header.arena == arena", &byte_23CE7F131, v73);
      goto LABEL_81;
    }
  }

  else
  {
    *(v35 + 8) = v35 ^ 0x4C833E95;
  }

  ++*(this + 72);
  v57 = v74;
  v58 = atomic_exchange_explicit(v74, *v74 & 2, memory_order_release);
  if (v58 >= 8)
  {
    absl::lts_20240722::base_internal::SpinLock::SlowUnlock(v57, v58);
  }

  if (BYTE1(v73) != 1)
  {
    return v8;
  }

  v59 = pthread_sigmask(3, &v73 + 1, 0);
  if (!v59)
  {
    return v8;
  }

  result = absl::lts_20240722::raw_log_internal::RawLog(3, "low_level_alloc.cc", 301, "pthread_sigmask failed: %d", v60, v61, v62, v63, v59);
LABEL_81:
  __break(1u);
  return result;
}

void sub_23C9668A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Unwind_Resume(a1);
}

void sub_23C9668B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Unwind_Resume(a1);
}

void sub_23C9668CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Unwind_Resume(a1);
}

void sub_23C9668E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Unwind_Resume(a1);
}

void sub_23C9668F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Unwind_Resume(a1);
}

void sub_23C966908(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Unwind_Resume(a1);
}

void sub_23C96691C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Unwind_Resume(a1);
}

void sub_23C966930(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Unwind_Resume(a1);
}

void sub_23C966944(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Unwind_Resume(a1);
}

void sub_23C966958(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Unwind_Resume(a1);
}

unint64_t absl::lts_20240722::base_internal::Coalesce(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v54 = *MEMORY[0x277D85DE8];
  v8 = *(result + 40);
  if (!v8 || result + *result != v8)
  {
    return result;
  }

  v9 = *(result + 16);
  v10 = *v8 + *result;
  *result = v10;
  *(v8 + 8) = 0;
  *(v8 + 16) = 0;
  memset(v53, 0, sizeof(v53));
  v11 = *(v9 + 40);
  if (v11 >= 1)
  {
    v12 = *(v9 + 40);
    v13 = v9 + 8;
    do
    {
      v14 = v12 - 1;
      v15 = v13;
      do
      {
        v13 = v15;
        v15 = *(v15 + 8 * v14 + 40);
        if (v15)
        {
          v16 = v15 >= v8;
        }

        else
        {
          v16 = 1;
        }
      }

      while (!v16);
      *(v53 + v14) = v13;
      v17 = v12-- <= 1;
    }

    while (!v17);
  }

  if (!v11 || *(*&v53[0] + 40) != v8)
  {
    absl::lts_20240722::base_internal::Coalesce(result, a2, a3, a4, a5, a6, a7, a8);
  }

  v18 = *(v8 + 32);
  if (v18)
  {
    v19 = v53;
    v20 = 5;
    do
    {
      if (*(*v19 + 8 * v20) != v8)
      {
        break;
      }

      *(*v19 + 8 * v20) = *(v8 + 8 * v20);
      ++v20;
      ++v19;
      --v18;
    }

    while (v18);
  }

  if (v11 < 1)
  {
LABEL_37:
    v26 = 0;
    if (!v11)
    {
      goto LABEL_31;
    }

    goto LABEL_38;
  }

  if (*(v9 + 48 + 8 * v11 - 8))
  {
    goto LABEL_21;
  }

  do
  {
    v27 = v11 - 1;
    if (v11 <= 1)
    {
      v26 = 0;
      *(v9 + 40) = v11 - 1;
      LODWORD(v11) = 0;
      goto LABEL_31;
    }
  }

  while (!*(v9 + 32 + 8 * v11--));
  *(v9 + 40) = v27;
  LODWORD(v11) = v27;
  if (v27 < 1)
  {
    goto LABEL_37;
  }

LABEL_21:
  v21 = v11;
  v22 = v9 + 8;
  do
  {
    v23 = v21 - 1;
    v24 = v22;
    do
    {
      v22 = v24;
      v24 = *(v24 + 8 * v23 + 40);
      if (v24)
      {
        v25 = v24 >= result;
      }

      else
      {
        v25 = 1;
      }
    }

    while (!v25);
    *(v53 + v23) = v22;
    v17 = v21-- <= 1;
  }

  while (!v17);
  v26 = 1;
  if (v11)
  {
LABEL_38:
    if (*(*&v53[0] + 40) != result)
    {
LABEL_32:
      absl::lts_20240722::base_internal::Coalesce(result, a2, a3, a4, a5, a6, a7, a8);
    }

    goto LABEL_39;
  }

LABEL_31:
  if (result)
  {
    goto LABEL_32;
  }

LABEL_39:
  v29 = *(result + 32);
  if (v29)
  {
    v30 = v53;
    v31 = 5;
    do
    {
      if (*(*v30 + 8 * v31) != result)
      {
        break;
      }

      *(*v30 + 8 * v31) = *(result + 8 * v31);
      ++v31;
      ++v30;
      --v29;
    }

    while (v29);
  }

  if (v26)
  {
    v32 = v11 + 1;
    v33 = v11 - 1;
    v34 = (v9 + 8 * v11 + 40);
    do
    {
      if (*v34)
      {
        break;
      }

      *(v9 + 40) = v33;
      --v32;
      --v33;
      --v34;
    }

    while (v32 > 1);
  }

  v35 = *(v9 + 312);
  v36 = v10 - 40;
  if (v10 <= v35)
  {
    v37 = 0;
  }

  else
  {
    v37 = 0;
    do
    {
      ++v37;
      v10 >>= 1;
    }

    while (v10 > v35);
  }

  v38 = v36 >> 3;
  v39 = *(v9 + 320);
  do
  {
    v39 = 1103515245 * v39 + 12345;
    ++v37;
  }

  while ((v39 & 0x40000000) == 0);
  *(v9 + 320) = v39;
  if (v38 >= v37)
  {
    LODWORD(v38) = v37;
  }

  if (v38 <= 0)
  {
    absl::lts_20240722::base_internal::AddToFreelist(result, a2, a3, a4, a5, a6, a7, a8);
  }

  if (v38 >= 0x1D)
  {
    LODWORD(v40) = 29;
  }

  else
  {
    LODWORD(v40) = v38;
  }

  *(result + 32) = v40;
  v41 = *(v9 + 40);
  v42 = v41;
  if (v41 >= 1)
  {
    v43 = *(v9 + 40);
    v44 = v9 + 8;
    do
    {
      v45 = v43 - 1;
      v46 = v44;
      do
      {
        v44 = v46;
        v46 = *(v46 + 8 * v45 + 40);
        if (v46)
        {
          v47 = v46 >= result;
        }

        else
        {
          v47 = 1;
        }
      }

      while (!v47);
      *(v53 + v45) = v44;
      v17 = v43-- <= 1;
    }

    while (!v17);
  }

  if (v41 < v40)
  {
    v48 = v41 + 1;
    do
    {
      *(v53 + v42++) = v9 + 8;
      *(v9 + 40) = v48;
      v40 = *(result + 32);
      ++v48;
    }

    while (v42 < v40);
  }

  if (v40)
  {
    v49 = v40;
    v50 = v53;
    v51 = 5;
    do
    {
      v52 = *v50++;
      *(result + 8 * v51) = *(v52 + 8 * v51);
      *(v52 + 8 * v51++) = result;
      --v49;
    }

    while (v49);
  }

  return result;
}

void absl::lts_20240722::base_internal::CallOnceImpl<void (&)(void)>(atomic_uint *a1, uint64_t a2, void (*a3)(void))
{
  v5 = 0;
  atomic_compare_exchange_strong_explicit(a1, &v5, 0x65C2937Bu, memory_order_relaxed, memory_order_relaxed);
  if (!v5 || !absl::lts_20240722::base_internal::SpinLockWait(a1, 3u, &absl::lts_20240722::base_internal::CallOnceImpl<void (&)(void)>(std::atomic<unsigned int> *,absl::lts_20240722::base_internal::SchedulingMode,void (&)(void) &&)::trans))
  {
    a3();
    if (atomic_exchange_explicit(a1, 0xDDu, memory_order_release) == 94570706)
    {

      ORToolsCpL2AccessVariable::~ORToolsCpL2AccessVariable(a1);
    }
  }
}

void absl::lts_20240722::random_internal::RandenPool<unsigned char>::Fill(unsigned __int8 *a1, char *a2)
{
  if (atomic_load_explicit(_MergedGlobals_41, memory_order_acquire) != 221)
  {
    absl::lts_20240722::random_internal::RandenPool<unsigned char>::Fill();
  }

  v5 = *v4;
  if (*v4 == 8)
  {
    v5 = atomic_fetch_add(qword_2810C1488, 1uLL) & 7;
    *v4 = v5;
  }

  v6 = *&_MergedGlobals_41[2 * v5 + 16];
}

void absl::lts_20240722::random_internal::anonymous namespace::RandenPoolEntry::Fill(absl::lts_20240722::random_internal::_anonymous_namespace_::RandenPoolEntry *this, unsigned __int8 *__dst, char *a3)
{
  v3 = a3;
  v6 = (this + 256);
  v12 = v6;
  v7 = *(this + 64);
  if (v7 & 1) != 0 || (atomic_compare_exchange_strong_explicit(v6, &v7, v7 | 1, memory_order_acquire, memory_order_acquire), (v7))
  {
    absl::lts_20240722::base_internal::SpinLock::SlowLock(v6);
    if (!v3)
    {
      goto LABEL_12;
    }
  }

  else if (!a3)
  {
    goto LABEL_12;
  }

  v8 = *(this + 34);
  do
  {
    if (v8 >= 0x40)
    {
      *(this + 34) = 4;
      absl::lts_20240722::random_internal::RandenHwAes::Generate(*(this + 33), this, a3);
      v8 = *(this + 34);
    }

    v9 = 4 * v8;
    if (256 - v9 >= v3)
    {
      v10 = v3;
    }

    else
    {
      v10 = 256 - v9;
    }

    memcpy(__dst, this + v9, v10);
    __dst += v10;
    v8 = *(this + 34) + ((v10 + 3) >> 2);
    *(this + 34) = v8;
    v3 -= v10;
  }

  while (v3);
LABEL_12:
  v11 = atomic_exchange_explicit(v12, *v12 & 2, memory_order_release);
  if (v11 >= 8)
  {
    absl::lts_20240722::base_internal::SpinLock::SlowUnlock(v12, v11);
  }
}

void sub_23C966F4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  absl::lts_20240722::base_internal::SpinLockHolder::~SpinLockHolder(va);
  _Unwind_Resume(a1);
}

void absl::lts_20240722::base_internal::SpinLockHolder::~SpinLockHolder(atomic_uint **this)
{
  v1 = *this;
  v2 = atomic_exchange_explicit(v1, *v1 & 2, memory_order_release);
  if (v2 >= 8)
  {
    absl::lts_20240722::base_internal::SpinLock::SlowUnlock(v1, v2);
  }
}

void absl::lts_20240722::random_internal::anonymous namespace::InitPoolURBG(absl::lts_20240722::random_internal::_anonymous_namespace_ *this)
{
  v3 = *MEMORY[0x277D85DE8];
  SeedMaterialFromOSEntropy = absl::lts_20240722::random_internal::ReadSeedMaterialFromOSEntropy(v2, 512);
  if (SeedMaterialFromOSEntropy)
  {
    operator new[]();
  }

  absl::lts_20240722::random_internal::ThrowSeedGenException(SeedMaterialFromOSEntropy);
}

void sub_23C967118(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

int8x16_t absl::lts_20240722::random_internal::RandenHwAes::Absorb(int8x16_t *this, int8x16_t *a2, void *a3)
{
  v3 = a2[2];
  a2[1] = veorq_s8(*this, a2[1]);
  a2[2] = veorq_s8(this[1], v3);
  v4 = a2[4];
  a2[3] = veorq_s8(this[2], a2[3]);
  a2[4] = veorq_s8(this[3], v4);
  v5 = a2[6];
  a2[5] = veorq_s8(this[4], a2[5]);
  a2[6] = veorq_s8(this[5], v5);
  v6 = a2[8];
  a2[7] = veorq_s8(this[6], a2[7]);
  a2[8] = veorq_s8(this[7], v6);
  v7 = a2[10];
  a2[9] = veorq_s8(this[8], a2[9]);
  a2[10] = veorq_s8(this[9], v7);
  v8 = a2[12];
  a2[11] = veorq_s8(this[10], a2[11]);
  a2[12] = veorq_s8(this[11], v8);
  v9 = a2[14];
  a2[13] = veorq_s8(this[12], a2[13]);
  a2[14] = veorq_s8(this[13], v9);
  result = veorq_s8(this[14], a2[15]);
  a2[15] = result;
  return result;
}

int8x16_t absl::lts_20240722::random_internal::RandenHwAes::Generate(absl::lts_20240722::random_internal::RandenHwAes *this, int8x16_t *a2, void *a3)
{
  v3 = 0;
  v4 = *a2;
  v5 = a2[2];
  v120 = a2[3];
  v121 = a2[1];
  v7 = a2[4];
  _Q24 = a2[5];
  v8 = a2[6];
  _Q12 = a2[7];
  v11 = a2[8];
  _Q17 = a2[9];
  v12 = a2[10];
  _Q11 = a2[11];
  v14 = a2[12];
  _Q21 = a2[13];
  _Q4 = 0uLL;
  v119 = *a2;
  v17 = a2[14];
  for (_Q22 = a2[15]; ; _Q22 = v51)
  {
    __asm
    {
      AESE            V23.16B, V4.16B
      AESMC           V23.16B, V23.16B
      AESE            V26.16B, V4.16B
      AESMC           V26.16B, V26.16B
    }

    v27 = v7;
    __asm
    {
      AESE            V30.16B, V4.16B
      AESMC           V30.16B, V30.16B
      AESE            V8.16B, V4.16B
      AESMC           V8.16B, V8.16B
      AESE            V27.16B, V4.16B
      AESMC           V27.16B, V27.16B
    }

    v34 = v12;
    __asm
    {
      AESE            V5.16B, V4.16B
      AESMC           V5.16B, V5.16B
      AESE            V9.16B, V4.16B
      AESMC           V9.16B, V9.16B
    }

    v39 = v17;
    __asm
    {
      AESE            V13.16B, V4.16B
      AESMC           V13.16B, V13.16B
    }

    v42 = (this + v3);
    _Q3 = *(this + v3);
    _Q28 = *(this + v3 + 16);
    _Q29 = *(this + v3 + 32);
    _Q10 = *(this + v3 + 48);
    _Q14 = *(this + v3 + 64);
    _Q15 = *(this + v3 + 80);
    __asm
    {
      AESE            V23.16B, V3.16B
      AESMC           V23.16B, V23.16B
    }

    v51 = veorq_s8(_Q23, v121);
    __asm
    {
      AESE            V26.16B, V28.16B
      AESMC           V26.16B, V26.16B
    }

    v54 = veorq_s8(_Q26, v120);
    __asm
    {
      AESE            V30.16B, V29.16B
      AESMC           V30.16B, V30.16B
    }

    v57 = veorq_s8(_Q30, _Q24);
    __asm
    {
      AESE            V8.16B, V10.16B
      AESMC           V8.16B, V8.16B
    }

    v60 = veorq_s8(_Q8, _Q12);
    _Q3 = *(this + v3 + 96);
    _Q0 = *(this + v3 + 112);
    __asm
    {
      AESE            V27.16B, V14.16B
      AESMC           V27.16B, V27.16B
    }

    v65 = veorq_s8(_Q27, _Q17);
    __asm
    {
      AESE            V5.16B, V15.16B
      AESMC           V5.16B, V5.16B
    }

    v68 = veorq_s8(_Q5, _Q11);
    __asm
    {
      AESE            V9.16B, V3.16B
      AESMC           V9.16B, V9.16B
    }

    v71 = veorq_s8(_Q9, _Q21);
    __asm
    {
      AESE            V13.16B, V0.16B
      AESMC           V13.16B, V13.16B
    }

    v74 = veorq_s8(_Q13, _Q22);
    if (v3 == 2048)
    {
      break;
    }

    __asm
    {
      AESE            V8.16B, V12.16B
      AESMC           V8.16B, V8.16B
      AESE            V5.16B, V11.16B
    }

    _Q0 = v42[8];
    _Q11 = v42[9];
    __asm
    {
      AESMC           V5.16B, V5.16B
      AESE            V30.16B, V24.16B
      AESE            V8.16B, V0.16B
    }

    _Q0 = v42[10];
    _Q24 = v42[11];
    __asm
    {
      AESE            V5.16B, V0.16B
      AESMC           V5.16B, V5.16B
    }

    v87 = veorq_s8(_Q5, v11);
    _Q0 = v42[15];
    __asm
    {
      AESMC           V30.16B, V30.16B
      AESE            V30.16B, V0.16B
      AESE            V13.16B, V22.16B
      AESMC           V13.16B, V13.16B
      AESMC           V8.16B, V8.16B
      AESMC           V30.16B, V30.16B
    }

    v11 = veorq_s8(_Q30, v14);
    v14 = veorq_s8(_Q8, v5);
    _Q0 = v42[12];
    _Q2 = v42[13];
    __asm
    {
      AESE            V13.16B, V0.16B
      AESMC           V13.16B, V13.16B
    }

    v12 = veorq_s8(_Q13, v4);
    _Q19 = v120;
    __asm
    {
      AESE            V26.16B, V19.16B
      AESMC           V26.16B, V26.16B
      AESE            V26.16B, V24.16B
      AESMC           V26.16B, V26.16B
    }

    v4 = veorq_s8(_Q26, v8);
    __asm
    {
      AESE            V9.16B, V21.16B
      AESMC           V9.16B, V9.16B
      AESE            V9.16B, V11.16B
      AESMC           V9.16B, V9.16B
    }

    v8 = veorq_s8(_Q9, v27);
    __asm
    {
      AESE            V27.16B, V17.16B
      AESMC           V27.16B, V27.16B
      AESE            V27.16B, V2.16B
      AESMC           V27.16B, V27.16B
    }

    v7 = veorq_s8(_Q27, v34);
    _Q1 = v121;
    __asm { AESE            V23.16B, V1.16B }

    _Q1 = v42[14];
    __asm
    {
      AESMC           V23.16B, V23.16B
      AESE            V23.16B, V1.16B
      AESMC           V23.16B, V23.16B
    }

    v5 = veorq_s8(_Q23, v39);
    v3 += 256;
    v120 = v68;
    v121 = v71;
    _Q24 = v74;
    _Q12 = v54;
    _Q17 = v60;
    _Q11 = v65;
    _Q21 = v57;
    v17 = v87;
  }

  a2[2] = v71;
  a2[3] = v27;
  a2[4] = v68;
  a2[5] = v11;
  a2[6] = v54;
  a2[7] = v8;
  a2[8] = v74;
  a2[9] = v4;
  a2[10] = v65;
  a2[11] = v34;
  a2[12] = v51;
  a2[13] = v39;
  a2[14] = v57;
  a2[15] = v14;
  result = veorq_s8(v60, v119);
  *a2 = result;
  a2[1] = v5;
  return result;
}

absl::lts_20240722::random_internal::Randen *absl::lts_20240722::random_internal::Randen::Randen(absl::lts_20240722::random_internal::Randen *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_42, memory_order_acquire) & 1) == 0)
  {
    v3 = __cxa_guard_acquire(&_MergedGlobals_42);
    if (v3)
    {
      qword_2810C1508 = absl::lts_20240722::random_internal::RandenHwAes::GetKeys(v3);
      unk_2810C1510 = 1;
      __cxa_guard_release(&_MergedGlobals_42);
    }
  }

  *this = qword_2810C1508;
  return this;
}

BOOL absl::lts_20240722::random_internal::ReadSeedMaterialFromOSEntropy(_BOOL8 result, uint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (result)
  {
    if (a2)
    {
      v2 = result;
      strcpy(v13, "/dev/urandom");
      v4 = open(v13, 0);
      if (v4 == -1)
      {
        return 0;
      }

      else
      {
        v5 = v4;
        v6 = 4 * a2;
        if (v6)
        {
          do
          {
            while (1)
            {
              v10 = read(v5, v2, v6);
              v11 = __error();
              if (v10 < 1)
              {
                break;
              }

              v2 += v10;
              v6 -= v10;
              v7 = 1;
              if (!v6)
              {
                goto LABEL_18;
              }
            }

            v7 = v10 == -1 && *v11 == 4;
          }

          while (v7 && v6 != 0);
        }

        else
        {
          v7 = 1;
        }

LABEL_18:
        v12 = v7;
        close(v5);
        return v12;
      }
    }

    else
    {
      return 1;
    }
  }

  return result;
}

_DWORD *absl::lts_20240722::random_internal::MixIntoSeedMaterial(_DWORD *result, uint64_t a2, unsigned int *a3, uint64_t a4)
{
  if (a2 && a4)
  {
    v4 = 1135663077;
    v5 = &result[a2];
    do
    {
      v6 = 4 * a4;
      v7 = a3;
      do
      {
        v8 = *result ^ v4;
        v4 *= -1826715531;
        *v7 = (-905840163 * *v7 - 1232336661 * ((v8 * v4) ^ ((v8 * v4) >> 16))) ^ ((-905840163 * *v7 - 1232336661 * ((v8 * v4) ^ ((v8 * v4) >> 16))) >> 16);
        ++v7;
        v6 -= 4;
      }

      while (v6);
      ++result;
    }

    while (result != v5);
  }

  return result;
}

uint64_t absl::lts_20240722::random_internal::GetSaltMaterial(absl::lts_20240722::random_internal *this)
{
  if ((atomic_load_explicit(&qword_2810C1520, memory_order_acquire) & 1) != 0 || !__cxa_guard_acquire(&qword_2810C1520))
  {
    return _MergedGlobals_43;
  }

  v2 = absl::lts_20240722::random_internal::GetSaltMaterial(void)::$_0::operator()();
  LODWORD(_MergedGlobals_43) = v2;
  BYTE4(_MergedGlobals_43) = BYTE4(v2);
  __cxa_guard_release(&qword_2810C1520);
  return _MergedGlobals_43;
}

uint64_t absl::lts_20240722::random_internal::GetSaltMaterial(void)::$_0::operator()()
{
  v12 = *MEMORY[0x277D85DE8];
  v10 = 0;
  strcpy(v11, "/dev/urandom");
  v0 = open(v11, 0);
  if (v0 != -1)
  {
    v1 = v0;
    v2 = &v10;
    v3 = 4;
    do
    {
      while (1)
      {
        v4 = read(v1, v2, v3);
        v5 = __error();
        if (v4 <= 0)
        {
          break;
        }

        v2 = (v2 + v4);
        v3 -= v4;
        if (!v3)
        {
          close(v1);
          v6 = v10 & 0xFFFFFF00;
          v7 = v10;
          v8 = 0x100000000;
          return v8 | v6 | v7;
        }
      }
    }

    while (v4 == -1 && *v5 == 4);
    close(v1);
  }

  v7 = 0;
  v6 = 0;
  v8 = 0;
  return v8 | v6 | v7;
}

void absl::lts_20240722::SeedGenException::~SeedGenException(std::exception *this)
{
  std::exception::~exception(this);

  JUMPOUT(0x23EED9460);
}

void absl::lts_20240722::random_internal::ThrowSeedGenException(absl::lts_20240722::random_internal *this)
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = &unk_284F39078;
}

unint64_t absl::lts_20240722::container_internal::find_first_non_full<void>(uint64_t *a1, unint64_t a2)
{
  v2 = a1[2];
  v3 = *a1;
  result = ((v2 >> 12) ^ (a2 >> 7)) & *a1;
  if (*(v2 + result) >= -1)
  {
    v5 = 0;
    for (i = *(v2 + result) & ~(*(v2 + result) << 7) & 0x8080808080808080; !i; i = *(v2 + result) & ~(*(v2 + result) << 7) & 0x8080808080808080)
    {
      v5 += 8;
      result = (v5 + result) & v3;
    }

    return (result + (__clz(__rbit64(i)) >> 3)) & v3;
  }

  return result;
}

uint64_t absl::lts_20240722::container_internal::PrepareInsertAfterSoo(unsigned int a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  a3[1] += 2;
  v4 = a3[2];
  --*(v4 - 8);
  v5 = ((v4 >> 12) ^ (a1 >> 7)) & 2;
  v6 = (a3[2] + v5);
  *v6 = a1 & 0x7F;
  v6[v3 + 1] = a1 & 0x7F;
  return v5;
}

unint64_t *absl::lts_20240722::container_internal::EraseMetaOnly(unint64_t *result, uint64_t a2)
{
  v2 = *result;
  result[1] -= 2;
  v3 = result[2];
  if (v2 >= 9 && ((v4 = vceq_s8(*(v3 + a2), 0x8080808080808080), (v5 = vceq_s8(*(v3 + (v2 & (a2 - 8))), 0x8080808080808080)) != 0) ? (v6 = v4 == 0) : (v6 = 1), (v7 = (__clz(v5) >> 3) + (__clz(__rbit64(v4)) >> 3), !v6) ? (v8 = v7 > 7) : (v8 = 1), v8))
  {
    *(v3 - 8) |= 0x8000000000000000;
    v9 = result[2];
    *(v9 + a2) = -2;
    *(v9 + (v2 & (a2 - 7)) + (v2 & 7)) = -2;
  }

  else
  {
    *(v3 + a2) = 0x80;
    *(v3 + (v2 & (a2 - 7)) + (v2 & 7)) = 0x80;
    ++*(result[2] - 8);
  }

  return result;
}

void *absl::lts_20240722::container_internal::ClearBackingArray(unint64_t *a1, uint64_t a2, int a3, unsigned int a4)
{
  a1[1] &= 1uLL;
  if (a3)
  {
    v5 = *a1;
    v6 = a1[2];
    result = memset(v6, 128, *a1 + 8);
    *(v6 + v5) = -1;
    v8 = 6;
    if (*a1 != 7)
    {
      v8 = *a1 - (*a1 >> 3);
    }

    *(a1[2] - 8) = v8 - (a1[1] >> 1);
  }

  else
  {
    result = (*(a2 + 32))(a1);
    *a1 = a4;
    a1[1] = 0;
    a1[2] = &unk_23CE31C20;
  }

  return result;
}

void *absl::lts_20240722::container_internal::HashSetResizeHelper::GrowIntoSingleGroupShuffleControlBytes(void *result, uint64_t *a2, uint64_t a3)
{
  v3 = (127 << (8 * (result[2] >> 1))) ^ *(*result + (result[2] >> 1) + 1);
  *a2 = v3;
  *(a2 + result[2] + 1) = 0x8080808080808080;
  v4 = a2 + a3;
  *(v4 + 1) = v3;
  *(a2 + a3 + result[2] + 2) = -32640;
  *v4 = -1;
  return result;
}

void *absl::lts_20240722::container_internal::HashSetResizeHelper::InitControlBytesAfterSoo(int a1, char *__b, char a3, uint64_t a4)
{
  result = memset(__b, 128, a4 + 8);
  v8 = &__b[a4];
  v8[2] = a3;
  __b[1] = a3;
  *v8 = -1;
  return result;
}

void *absl::lts_20240722::container_internal::HashSetResizeHelper::GrowSizeIntoSingleGroupTransferable(void *a1, uint64_t *a2, uint64_t a3)
{
  v4 = a2[2];
  v5 = *a2;
  v6 = (127 << (8 * (a1[2] >> 1))) ^ *(*a1 + (a1[2] >> 1) + 1);
  *v4 = v6;
  *(v4 + a1[2] + 1) = 0x8080808080808080;
  v7 = v4 + v5;
  *(v7 + 1) = v6;
  *&v7[a1[2] + 2] = -32640;
  *v7 = -1;
  v8 = a2[3];
  v9 = (a1[2] >> 1) * a3;
  v10 = a3 + v9;
  memcpy(v8, (a1[1] + a3 + v9), v9);
  v11 = a1[1];

  return memcpy(&v8[v10], v11, v10);
}

unint64_t absl::lts_20240722::container_internal::PrepareInsertNonSoo(unint64_t *a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1[2] - 8);
  if (v5 <= 0)
  {
    v9 = a2;
    if (v5)
    {
      v11 = a1;
      if ((v5 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        first_non = absl::lts_20240722::container_internal::find_first_non_full<void>(a1, a2);
      }

      else
      {
      }
    }

    else
    {
      v10 = *a1;
      v11 = a1;
      (*(a5 + 40))();
      first_non = absl::lts_20240722::container_internal::HashSetResizeHelper::FindFirstNonFullAfterResize(v11, v10, v9);
    }

    LOBYTE(a2) = v9;
    a3 = first_non;
    a1 = v11;
  }

  v6 = *a1;
  a1[1] += 2;
  *(a1[2] - 8) -= *(a1[2] + a3) == 128;
  v7 = a1[2];
  *(v7 + a3) = a2 & 0x7F;
  *(v7 + (v6 & (a3 - 7)) + (v6 & 7)) = a2 & 0x7F;
  return a3;
}

unint64_t absl::lts_20240722::container_internal::HashSetResizeHelper::FindFirstNonFullAfterResize(unint64_t *a1, unint64_t a2, unint64_t a3)
{
  v3 = *a1;
  v4 = a1[2];
  result = ((v4 >> 12) ^ (a3 >> 7)) & *a1;
  if (v3 <= 8 && v3 > a2)
  {
    if (result + ~a2 >= a2)
    {
      return a2 >> 1;
    }
  }

  else if (*(v4 + result) >= -1)
  {
    v7 = 0;
    for (i = *(v4 + result) & ~(*(v4 + result) << 7) & 0x8080808080808080; !i; i = *(v4 + result) & ~(*(v4 + result) << 7) & 0x8080808080808080)
    {
      v7 += 8;
      result = (v7 + result) & v3;
    }

    return (result + (__clz(__rbit64(i)) >> 3)) & v3;
  }

  return result;
}

unint64_t absl::lts_20240722::container_internal::anonymous namespace::FindInsertPositionWithGrowthOrRehash(uint64_t *a1, unint64_t a2, uint64_t *a3)
{
  v5 = *a1;
  if (*a1 < 9 || ((16 * a1[1]) & 0xFFFFFFFFFFFFFFE0) > 25 * v5)
  {
    (a3[5])(a1, (2 * v5) | 1);
    goto LABEL_37;
  }

  v7 = a1[2];
  v6 = a1[3];
  v8 = v7 + v5;
  if (v5 >= 1)
  {
    v9 = v5 + v7;
    if (v5 + v7 <= (v7 + 8))
    {
      v9 = v7 + 8;
    }

    v10 = v9 + ~v7;
    v11 = a1[2];
    if (v10 < 0x18)
    {
      goto LABEL_43;
    }

    v12 = (v10 >> 3) + 1;
    v11 = (v7 + 8 * (v12 & 0x3FFFFFFFFFFFFFFCLL));
    v13 = (v7 + 16);
    v14.i64[0] = 0x202020202020202;
    v14.i64[1] = 0x202020202020202;
    v15.i64[0] = 0x7E7E7E7E7E7E7E7ELL;
    v15.i64[1] = 0x7E7E7E7E7E7E7E7ELL;
    v16.i64[0] = 0x8080808080808080;
    v16.i64[1] = 0x8080808080808080;
    v17 = v12 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v18 = vorrq_s8(vaddq_s64(vandq_s8(vshrq_n_u64(*v13, 6uLL), v14), v15), v16);
      v13[-1] = vorrq_s8(vaddq_s64(vandq_s8(vshrq_n_u64(v13[-1], 6uLL), v14), v15), v16);
      *v13 = v18;
      v13 += 2;
      v17 -= 4;
    }

    while (v17);
    if (v12 != (v12 & 0x3FFFFFFFFFFFFFFCLL))
    {
LABEL_43:
      do
      {
        *v11 = (((*v11 >> 6) & 0x202020202020202) + 0x7E7E7E7E7E7E7E7ELL) | 0x8080808080808080;
        ++v11;
      }

      while (v11 < v8);
    }
  }

  v19 = *v7;
  *(v8 + 4) = *(v7 + 3);
  *(v8 + 1) = v19;
  *v8 = -1;
  v21 = (a3[1])(a1);
  v22 = 0;
  v23 = a3[2];
  v44 = v6;
  v45 = a3[3];
  v24 = -1;
  v25 = *a3;
  do
  {
    v27 = *(v7 + v22);
    if (v27 == 128)
    {
      goto LABEL_14;
    }

    if (v27 == 254)
    {
      v28 = v23(v21, v6);
      v29 = a1[2];
      v30 = *a1;
      v31 = ((v29 >> 12) ^ (v28 >> 7)) & *a1;
      if (*(v29 + v31) >= -1)
      {
        v33 = *(v29 + v31) & ~(*(v29 + v31) << 7) & 0x8080808080808080;
        if (v33)
        {
          v34 = ((v29 >> 12) ^ (v28 >> 7)) & *a1;
        }

        else
        {
          v35 = 8;
          v34 = ((v29 >> 12) ^ (v28 >> 7)) & *a1;
          do
          {
            v34 = (v34 + v35) & v30;
            v35 += 8;
            v33 = *(v29 + v34) & ~(*(v29 + v34) << 7) & 0x8080808080808080;
          }

          while (!v33);
        }

        v32 = (v34 + (__clz(__rbit64(v33)) >> 3)) & v30;
      }

      else
      {
        v32 = ((v29 >> 12) ^ (v28 >> 7)) & *a1;
      }

      if ((((v32 - v31) ^ (v22 - v31)) & v5) > 7)
      {
        v36 = *(v7 + v32);
        *(v29 + v32) = v28 & 0x7F;
        *(v29 + ((v32 - 7) & v30) + (v30 & 7)) = v28 & 0x7F;
        if (v36 == 128)
        {
          v45(a1, v44 + v32 * v25, v6);
          v26 = a1[2];
          *(v26 + v22) = 0x80;
          *(v26 + (*a1 & (v22 - 7)) + (*a1 & 7)) = 0x80;
LABEL_14:
          v24 = v22;
          goto LABEL_15;
        }

        if (v24 == -1)
        {
          v24 = v22 + 1;
          if (v22 + 1 >= v5)
          {
LABEL_32:
            v24 = -1;
          }

          else
          {
            while (*(v7 + v24) != 128)
            {
              if (v5 == ++v24)
              {
                goto LABEL_32;
              }
            }
          }
        }

        v43 = v44 + v32 * v25;
        (v45)(a1);
        v45(a1, v43, v6);
        v45(a1, v6, v44 + v24 * v25);
        --v22;
        v6 -= v25;
      }

      else
      {
        *(v29 + v22) = v28 & 0x7F;
        *(v29 + (v30 & (v22 - 7)) + (v30 & 7)) = v28 & 0x7F;
      }
    }

LABEL_15:
    ++v22;
    v6 += v25;
  }

  while (v22 != v5);
  v37 = 6;
  if (*a1 != 7)
  {
    v37 = *a1 - (*a1 >> 3);
  }

  *(a1[2] - 8) = v37 - (a1[1] >> 1);
LABEL_37:
  v38 = a1[2];
  v39 = *a1;
  result = ((v38 >> 12) ^ (a2 >> 7)) & *a1;
  if (*(v38 + result) >= -1)
  {
    v41 = 0;
    for (i = *(v38 + result) & ~(*(v38 + result) << 7) & 0x8080808080808080; !i; i = *(v38 + result) & ~(*(v38 + result) << 7) & 0x8080808080808080)
    {
      v41 += 8;
      result = (v41 + result) & v39;
    }

    return (result + (__clz(__rbit64(i)) >> 3)) & v39;
  }

  return result;
}

_DWORD *absl::lts_20240722::raw_log_internal::RawLog(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  v11 = a1;
  v23 = *MEMORY[0x277D85DE8];
  *&__size[4] = __s;
  *__size = 3000;
  result = (atomic_load_explicit(_MergedGlobals_0, memory_order_acquire))(a1, a2, a3, &__size[4], __size, a6, a7, a8);
  v14 = *&__size[4];
  if (!result)
  {
    goto LABEL_13;
  }

  if ((*__size & 0x80000000) != 0)
  {
    goto LABEL_11;
  }

  v15 = vsnprintf(*&__size[4], *__size, a4, va);
  v16 = *__size - 26;
  if (*__size < 0x1Au)
  {
    v16 = 0;
  }

  v17 = v15 >= 0 && v15 <= *__size;
  v18 = v15 >= 0 && v15 <= *__size ? v15 : v16;
  *__size -= v18;
  *&__size[4] += v18;
  if (!v17)
  {
LABEL_11:
    result = strlen(__s);
    if (!result)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  result = strlen(__s);
  if (result)
  {
LABEL_12:
    v19 = result;
    v20 = *__error();
    write(2, __s, v19);
    result = __error();
    *result = v20;
  }

LABEL_13:
  if (v11 == 3)
  {
    (atomic_load_explicit(off_2810BF720, memory_order_acquire))(a2, a3, __s, v14, &v23);
    abort();
  }

  return result;
}

void sub_23C968394(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

_DWORD *absl::lts_20240722::raw_log_internal::anonymous namespace::DefaultInternalLog(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a4 + 23);
  if (v8 >= 0)
  {
    v9 = *(a4 + 23);
  }

  else
  {
    v9 = *(a4 + 8);
  }

  if (v8 >= 0)
  {
    v10 = a4;
  }

  else
  {
    v10 = *a4;
  }

  return absl::lts_20240722::raw_log_internal::RawLog(a1, a2, a3, "%.*s", a5, a6, a7, a8, v9, v10);
}

char **absl::lts_20240722::raw_log_internal::anonymous namespace::DoRawLog(char **this, char **a2, const char *a3, const char *a4, ...)
{
  va_start(va, a4);
  if ((*a2 & 0x80000000) == 0)
  {
    v5 = this;
    this = vsnprintf(*this, *a2, a3, va);
    if ((this & 0x80000000) == 0 && *a2 >= this)
    {
      *a2 -= this;
      *v5 += this;
    }
  }

  return this;
}

int *AbslInternalSpinLockDelay_lts_20240722(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v4 = *__error();
  if (a3)
  {
    if (a3 == 1)
    {
      sched_yield();
    }

    else
    {
      v5 = -554899859 * absl::lts_20240722::base_internal::delay_rand + 11;
      absl::lts_20240722::base_internal::delay_rand = 0x5DEECE66DLL * absl::lts_20240722::base_internal::delay_rand + 11;
      if (a3 >= 0x20)
      {
        v6 = 32;
      }

      else
      {
        v6 = a3;
      }

      v8.tv_sec = 0;
      v8.tv_nsec = ((0x20000 << (v6 >> 3)) - 1) & v5 | (0x20000 << (v6 >> 3));
      nanosleep(&v8, 0);
    }
  }

  result = __error();
  *result = v4;
  return result;
}

uint64_t absl::lts_20240722::base_internal::SpinLockWait(atomic_uint *a1, unsigned int a2, uint64_t a3)
{
  if (!a2)
  {
    for (i = 1; ; ++i)
    {
      AbslInternalSpinLockDelay_lts_20240722(a1, atomic_load_explicit(a1, memory_order_acquire), i);
    }
  }

  v4 = 0;
  v5 = a2;
  v6 = (a3 + 8);
  while (1)
  {
LABEL_4:
    explicit = atomic_load_explicit(a1, memory_order_acquire);
    v8 = v5;
    v9 = v6;
    while (explicit != *(v9 - 2))
    {
      v9 += 12;
      if (!--v8)
      {
        AbslInternalSpinLockDelay_lts_20240722(a1, explicit, ++v4);
        goto LABEL_4;
      }
    }

    v10 = *(v9 - 1);
    if (v10 != explicit)
    {
      v11 = explicit;
      atomic_compare_exchange_strong_explicit(a1, &v11, v10, memory_order_acquire, memory_order_acquire);
      if (v11 != explicit)
      {
        continue;
      }
    }

    if (*v9 == 1)
    {
      return explicit;
    }
  }
}

uint64_t absl::lts_20240722::GetStackTrace(absl::lts_20240722 *this, void **a2, int a3)
{
  if (!explicit)
  {
    explicit = UnwindImpl<false,false>;
  }

  return (explicit)(this, 0, a2, (a3 + 1), 0, 0);
}

uint64_t UnwindImpl<false,false>(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = recursive();
  if (*v2 || (disable_stacktraces & 1) != 0)
  {
    return 0;
  }

  v7 = v2;
  *v2 = 1;
  memset(v25, 0, sizeof(v25));
  v8 = v5;
  v9 = v3;
  v10 = v4;
  v11 = backtrace(v25, 64);
  v12 = v10 + 1;
  v13 = v11 - (v10 + 1);
  v14 = v13 & ~(v13 >> 31);
  if (v14 >= v9)
  {
    result = v9;
  }

  else
  {
    result = v14;
  }

  if (result >= 1)
  {
    if (result <= 3)
    {
      v15 = 0;
LABEL_14:
      v20 = v25 + v15 + v12;
      v21 = (a1 + 8 * v15);
      v22 = v15 - result;
      do
      {
        v23 = *v20++;
        *v21++ = v23;
      }

      while (!__CFADD__(v22++, 1));
      goto LABEL_17;
    }

    v15 = result & 0x7FFFFFFC;
    v16 = (&v25[1] + 8 * v12);
    v17 = (a1 + 16);
    v18 = v15;
    do
    {
      v19 = *v16;
      *(v17 - 1) = *(v16 - 1);
      *v17 = v19;
      v16 += 2;
      v17 += 2;
      v18 -= 4;
    }

    while (v18);
    if (v15 != result)
    {
      goto LABEL_14;
    }
  }

LABEL_17:
  if (v8)
  {
    *v8 = (v13 - v9) & ~((v13 - v9) >> 31);
  }

  --*v7;
  return result;
}

uint64_t _GLOBAL__sub_I_stacktrace_cc()
{
  v1[1] = *MEMORY[0x277D85DE8];
  v1[0] = 0;
  result = backtrace(v1, 1);
  disable_stacktraces = 0;
  return result;
}

uint64_t absl::lts_20240722::StatusCodeToString@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  switch(result)
  {
    case 0:
      a2[23] = 2;
      strcpy(a2, "OK");
      break;
    case 1:
      a2[23] = 9;
      strcpy(a2, "CANCELLED");
      break;
    case 2:
      a2[23] = 7;
      strcpy(a2, "UNKNOWN");
      break;
    case 3:
      a2[23] = 16;
      strcpy(a2, "INVALID_ARGUMENT");
      break;
    case 4:
      a2[23] = 17;
      strcpy(a2, "DEADLINE_EXCEEDED");
      break;
    case 5:
      a2[23] = 9;
      strcpy(a2, "NOT_FOUND");
      break;
    case 6:
      a2[23] = 14;
      strcpy(a2, "ALREADY_EXISTS");
      break;
    case 7:
      a2[23] = 17;
      strcpy(a2, "PERMISSION_DENIED");
      break;
    case 8:
      a2[23] = 18;
      strcpy(a2, "RESOURCE_EXHAUSTED");
      break;
    case 9:
      a2[23] = 19;
      strcpy(a2, "FAILED_PRECONDITION");
      break;
    case 10:
      a2[23] = 7;
      strcpy(a2, "ABORTED");
      break;
    case 11:
      a2[23] = 12;
      strcpy(a2, "OUT_OF_RANGE");
      break;
    case 12:
      a2[23] = 13;
      strcpy(a2, "UNIMPLEMENTED");
      break;
    case 13:
      a2[23] = 8;
      strcpy(a2, "INTERNAL");
      break;
    case 14:
      a2[23] = 11;
      strcpy(a2, "UNAVAILABLE");
      break;
    case 15:
      a2[23] = 9;
      strcpy(a2, "DATA_LOSS");
      break;
    case 16:
      a2[23] = 15;
      strcpy(a2, "UNAUTHENTICATED");
      break;
    default:
      a2[23] = 0;
      *a2 = 0;
      break;
  }

  return result;
}

uint64_t *absl::lts_20240722::Status::Status(uint64_t *result, int a2, const void *a3, size_t a4)
{
  *result = (4 * a2) | 1;
  if (a2)
  {
    if (a4)
    {
      operator new();
    }
  }

  return result;
}

void sub_23C968C9C(_Unwind_Exception *a1, absl::lts_20240722::cord_internal::CordRepBtree *a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<absl::lts_20240722::InlinedVector<absl::lts_20240722::status_internal::Payload,1ul,std::allocator<absl::lts_20240722::status_internal::Payload>>>::~unique_ptr[abi:ne200100](va, a2);
  MEMORY[0x23EED9460](v3, v4);
  _Unwind_Resume(a1);
}

unint64_t **std::unique_ptr<absl::lts_20240722::InlinedVector<absl::lts_20240722::status_internal::Payload,1ul,std::allocator<absl::lts_20240722::status_internal::Payload>>>::~unique_ptr[abi:ne200100](unint64_t **result, absl::lts_20240722::cord_internal::CordRepBtree *a2)
{
  v2 = *result;
  *result = 0;
  if (v2)
  {
    v3 = result;
    if (*v2)
    {
      absl::lts_20240722::inlined_vector_internal::Storage<absl::lts_20240722::status_internal::Payload,1ul,std::allocator<absl::lts_20240722::status_internal::Payload>>::DestroyContents(v2, a2);
    }

    MEMORY[0x23EED9460](v2, 0x1022C407F822AEDLL);
    return v3;
  }

  return result;
}

void absl::lts_20240722::Status::ToStringSlow(unint64_t a1@<X0>, char a2@<W1>, std::string *a3@<X8>)
{
  v9[6] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    if ((a1 >> 2) > 0x10)
    {
      v3 = 0;
      v7 = 0;
    }

    else
    {
      switch((a1 >> 2))
      {
        case 1u:
          v3 = 9;
          v7 = 9;
          __p[8] = 68;
          v4 = "CANCELLED";
          goto LABEL_21;
        case 2u:
          v3 = 7;
          v7 = 7;
          qmemcpy(__p, "UNKNOWN", 7);
          break;
        case 3u:
          v3 = 16;
          v7 = 16;
          v5 = "INVALID_ARGUMENT";
          goto LABEL_26;
        case 4u:
          v3 = 17;
          v7 = 17;
          __p[16] = 68;
          v5 = "DEADLINE_EXCEEDED";
          goto LABEL_26;
        case 5u:
          v3 = 9;
          v7 = 9;
          __p[8] = 68;
          v4 = "NOT_FOUND";
          goto LABEL_21;
        case 6u:
          v3 = 14;
          v7 = 14;
          qmemcpy(__p, "ALREADY_EXISTS", 14);
          break;
        case 7u:
          v3 = 17;
          v7 = 17;
          __p[16] = 68;
          v5 = "PERMISSION_DENIED";
          goto LABEL_26;
        case 8u:
          v3 = 18;
          v7 = 18;
          *&__p[16] = 17477;
          v5 = "RESOURCE_EXHAUSTED";
          goto LABEL_26;
        case 9u:
          v3 = 19;
          v7 = 19;
          *&__p[15] = 1313818964;
          v5 = "FAILED_PRECONDITION";
LABEL_26:
          *__p = *v5;
          break;
        case 0xAu:
          v3 = 7;
          v7 = 7;
          qmemcpy(__p, "ABORTED", 7);
          break;
        case 0xBu:
          v3 = 12;
          v7 = 12;
          *&__p[8] = 1162300993;
          v4 = "OUT_OF_RANGE";
          goto LABEL_21;
        case 0xCu:
          v3 = 13;
          v7 = 13;
          qmemcpy(__p, "UNIMPLEMENTED", 13);
          break;
        case 0xDu:
          v3 = 8;
          v7 = 8;
          *__p = 0x4C414E5245544E49;
          break;
        case 0xEu:
          v3 = 11;
          v7 = 11;
          *&__p[7] = 1162625601;
          v4 = "UNAVAILABLE";
          goto LABEL_21;
        case 0xFu:
          v3 = 9;
          v7 = 9;
          __p[8] = 83;
          v4 = "DATA_LOSS";
LABEL_21:
          *__p = *v4;
          break;
        case 0x10u:
          v3 = 15;
          v7 = 15;
          qmemcpy(__p, "UNAUTHENTICATED", 15);
          break;
        default:
          v3 = 2;
          v7 = 2;
          *__p = 19279;
          break;
      }
    }

    __p[v3] = 0;
    v9[0] = __p;
    v9[1] = v3;
    v8[0] = ": ";
    v8[1] = 2;
    absl::lts_20240722::StrCat(v9, v8, a3);
    if (v7 < 0)
    {
      operator delete(*__p);
    }
  }

  else
  {

    absl::lts_20240722::status_internal::StatusRep::ToString(a1, a2, a3);
  }
}

void sub_23C96902C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void absl::lts_20240722::inlined_vector_internal::Storage<absl::lts_20240722::status_internal::Payload,1ul,std::allocator<absl::lts_20240722::status_internal::Payload>>::DestroyContents(unint64_t *a1, absl::lts_20240722::cord_internal::CordRepBtree *a2)
{
  v4 = a1 + 1;
  v3 = *a1;
  v5 = *a1 & 1;
  v6 = a1 + 1;
  if (*a1)
  {
    v6 = *v4;
  }

  if (v3 >= 2)
  {
    v7 = v3 >> 1;
    v8 = &v6[5 * (v3 >> 1) - 2] - 1;
    do
    {
      while (1)
      {
        if (v8[1])
        {
          absl::lts_20240722::Cord::DestroyCordSlow((v8 + 1), a2);
        }

        if (*v8 < 0)
        {
          break;
        }

        v8 -= 40;
        if (!--v7)
        {
          goto LABEL_10;
        }
      }

      operator delete(*(v8 - 23));
      v8 -= 40;
      --v7;
    }

    while (v7);
LABEL_10:
    v5 = *a1 & 1;
  }

  if (v5)
  {
    v9 = *v4;

    operator delete(v9);
  }
}

uint64_t absl::lts_20240722::status_internal::StatusRep::Unref(uint64_t this, absl::lts_20240722::cord_internal::CordRepBtree *a2)
{
  v2 = this;
  if (atomic_load_explicit(this, memory_order_acquire) == 1)
  {
    v3 = *(this + 32);
    *(this + 32) = 0;
    if (!v3)
    {
      goto LABEL_10;
    }

    if (!*v3)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (atomic_fetch_add(this, 0xFFFFFFFF) == 1)
  {
    v3 = *(this + 32);
    *(this + 32) = 0;
    if (!v3)
    {
      goto LABEL_10;
    }

    if (!*v3)
    {
LABEL_9:
      MEMORY[0x23EED9460](v3, 0x1022C407F822AEDLL);
LABEL_10:
      if (*(v2 + 31) < 0)
      {
        operator delete(*(v2 + 8));
      }

      JUMPOUT(0x23EED9460);
    }

LABEL_8:
    absl::lts_20240722::inlined_vector_internal::Storage<absl::lts_20240722::status_internal::Payload,1ul,std::allocator<absl::lts_20240722::status_internal::Payload>>::DestroyContents(v3, a2);
    goto LABEL_9;
  }

  return this;
}

void absl::lts_20240722::status_internal::StatusRep::ToString(uint64_t a1@<X0>, char a2@<W1>, std::string *a3@<X8>)
{
  v33 = *MEMORY[0x277D85DE8];
  a3->__r_.__value_.__r.__words[0] = 0;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  absl::lts_20240722::StatusCodeToString(*(a1 + 4), __p);
  v6 = v28;
  if ((v28 & 0x80u) == 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  if ((v28 & 0x80u) != 0)
  {
    v6 = __p[1];
  }

  v31 = v7;
  v32 = v6;
  v30[0] = ": ";
  v30[1] = 2;
  v8 = a1 + 8;
  if (*(a1 + 31) >= 0)
  {
    v9 = *(a1 + 31);
  }

  else
  {
    v8 = *(a1 + 8);
    v9 = *(a1 + 16);
  }

  v29[0] = v8;
  v29[1] = v9;
  v10 = absl::lts_20240722::StrAppend(a3, &v31, v30, v29);
  if (v28 < 0)
  {
    operator delete(__p[0]);
    if ((a2 & 1) == 0)
    {
      return;
    }
  }

  else if ((a2 & 1) == 0)
  {
    return;
  }

  v30[0] = absl::lts_20240722::status_internal::GetStatusPayloadPrinter(v10);
  v31 = v30;
  v32 = a3;
  v11 = *(a1 + 32);
  if (!v11)
  {
    return;
  }

  v12 = *v11;
  if (*v11 <= 3)
  {
    if (v12 < 2)
    {
      return;
    }

    v13 = v11 + 1;
  }

  else
  {
    v13 = v11 + 1;
    if (v11 % 0xD > 6)
    {
      v14 = 0;
      v15 = v12 >> 1;
      v16 = -1;
      do
      {
        v17 = v11 + 1;
        if (v12)
        {
          v17 = *v13;
        }

        v18 = &v17[5 * v15 + 5 * v16];
        v19 = *(v18 + 23);
        if (v19 < 0)
        {
          v20 = *v18;
          v19 = v18[1];
        }

        else
        {
          v20 = &v17[5 * v15 + 5 * v16];
        }

        absl::lts_20240722::functional_internal::InvokeObject<absl::lts_20240722::status_internal::StatusRep::ToString(absl::lts_20240722::StatusToStringMode)::$_0,void,std::string_view,absl::lts_20240722::Cord const&>(&v31, v20, v19, (v18 + 3));
        ++v14;
        v12 = *v11;
        v15 = *v11 >> 1;
        --v16;
      }

      while (v14 < v15);
      return;
    }
  }

  v21 = 0;
  v22 = 0;
  do
  {
    v23 = v13;
    if (v12)
    {
      v23 = *v13;
    }

    v24 = &v23[v21];
    v25 = SHIBYTE(v23[v21 + 2]);
    if (v25 < 0)
    {
      v26 = *v24;
      v25 = v24[1];
    }

    else
    {
      v26 = &v23[v21];
    }

    absl::lts_20240722::functional_internal::InvokeObject<absl::lts_20240722::status_internal::StatusRep::ToString(absl::lts_20240722::StatusToStringMode)::$_0,void,std::string_view,absl::lts_20240722::Cord const&>(&v31, v26, v25, &v23[v21 + 3]);
    ++v22;
    v12 = *v11;
    v21 += 5;
  }

  while (v22 < *v11 >> 1);
}

void sub_23C969438(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (*(v14 + 23) < 0)
  {
    operator delete(*v14);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23C9695E8(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x23EED9460](v14, v15, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

void absl::lts_20240722::functional_internal::InvokeObject<absl::lts_20240722::status_internal::StatusRep::ToString(absl::lts_20240722::StatusToStringMode)::$_0,void,std::string_view,absl::lts_20240722::Cord const&>(uint64_t a1, uint64_t a2, uint64_t a3, absl::lts_20240722::Cord *a4)
{
  v30 = *MEMORY[0x277D85DE8];
  v8 = **a1;
  if (v8 && (v8(&v21, a2, a3, a4), (v23 & 1) != 0))
  {
    v9 = v21;
    v20[0] = v22;
    *(v20 + 3) = *(&v22 + 3);
    v10 = *(a1 + 8);
    if (SHIBYTE(v22) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v21, *(&v21 + 1));
      v12 = 1;
      v11 = 1;
    }

    else
    {
      v11 = 0;
      *&__p.__r_.__value_.__l.__data_ = v21;
      LODWORD(__p.__r_.__value_.__r.__words[2]) = v20[0];
      *(&__p.__r_.__value_.__r.__words[2] + 3) = *(v20 + 3);
      *(&__p.__r_.__value_.__s + 23) = HIBYTE(v22);
      v12 = 1;
    }
  }

  else
  {
    v10 = *(a1 + 8);
    absl::lts_20240722::Cord::operator std::string(a4, &v18);
    if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v13 = &v18;
    }

    else
    {
      v13 = v18.__r_.__value_.__r.__words[0];
    }

    if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v18.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v18.__r_.__value_.__l.__size_;
    }

    absl::lts_20240722::CHexEscape(&__p, v13, size);
    v9 = 0;
    v12 = 0;
    v11 = 0;
  }

  v15 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  p_p = &__p;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v15 = __p.__r_.__value_.__l.__size_;
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  *&v21 = " [";
  *(&v21 + 1) = 2;
  v22 = a2;
  v23 = a3;
  v24 = "='";
  v25 = 2;
  v26 = p_p;
  v27 = v15;
  v28 = "']";
  v29 = 2;
  absl::lts_20240722::strings_internal::AppendPieces(v10, &v21, 5);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (v12)
    {
      goto LABEL_16;
    }
  }

  else if (v12)
  {
LABEL_16:
    if (!v11)
    {
      return;
    }

    v17 = v9;
    goto LABEL_21;
  }

  if ((SHIBYTE(v18.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    return;
  }

  v17 = v18.__r_.__value_.__r.__words[0];
LABEL_21:
  operator delete(v17);
}

void sub_23C9697E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t (*absl::lts_20240722::status_internal::GetStatusPayloadPrinter(absl::lts_20240722::status_internal *this))()
{
  explicit = atomic_load_explicit(absl::lts_20240722::status_internal::storage, memory_order_acquire);
  if (explicit == absl::lts_20240722::base_internal::AtomicHook<std::optional<std::string> (*)(std::string_view,absl::lts_20240722::Cord const&)>::DummyFunction)
  {
    return 0;
  }

  else
  {
    return explicit;
  }
}

atomic_uint *absl::lts_20240722::BadStatusOrAccess::what(atomic_uint *this)
{
  v2 = this + 4;
  v4 = this;
  if (atomic_load_explicit(v2, memory_order_acquire) != 221)
  {
    absl::lts_20240722::base_internal::CallOnceImpl<absl::lts_20240722::BadStatusOrAccess::InitWhat(void)::$_0>(v2, &v4);
  }

  result = this + 6;
  if (*(this + 47) < 0)
  {
    return *result;
  }

  return result;
}

absl::lts_20240722::status_internal::StatusRep *absl::lts_20240722::internal_statusor::Helper::HandleInvalidStatusCtorArg(absl::lts_20240722::status_internal::StatusRep **a1)
{
  v7 = "/Library/Caches/com.apple.xbs/Binaries/ANECompiler/install/TempContent/Objects/ZinAneCompiler.build/or_tools_build/_deps/abseil-cpp-src/absl/status/statusor.cc";
  __s = "An OK status is not a valid constructor argument to StatusOr<T>";
  v5 = 77;
  v6 = 2;
  absl::lts_20240722::base_internal::AtomicHook<void (*)(absl::lts_20240722::LogSeverity,char const*,int,std::string const&)>::operator()<absl::lts_20240722::LogSeverity,char const* const&,int,char const*&>(absl::lts_20240722::raw_log_internal::internal_log_function, &v6, &v7, &v5, &__s);
  v2 = strlen(__s);
  absl::lts_20240722::InternalError(__s, v2, &v7);
  result = *a1;
  if (v7 != *a1)
  {
    *a1 = v7;
    v7 = 55;
    if (result)
    {
      return result;
    }

    absl::lts_20240722::status_internal::StatusRep::Unref(result, v3);
    result = v7;
  }

  if ((result & 1) == 0)
  {
    return absl::lts_20240722::status_internal::StatusRep::Unref(result, v3);
  }

  return result;
}

void absl::lts_20240722::base_internal::AtomicHook<void (*)(absl::lts_20240722::LogSeverity,char const*,int,std::string const&)>::operator()<absl::lts_20240722::LogSeverity,char const* const&,int,char const*&>(atomic_ullong *a1, unsigned int *a2, uint64_t *a3, unsigned int *a4, const char **a5)
{
  explicit = atomic_load_explicit(a1, memory_order_acquire);
  v6 = *a2;
  v7 = *a3;
  v8 = *a4;
  v9 = *a5;
  v10 = strlen(*a5);
  if (v10 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v11 = v10;
  if (v10 >= 0x17)
  {
    operator new();
  }

  v13 = v10;
  if (v10)
  {
    memmove(&__dst, v9, v10);
  }

  *(&__dst + v11) = 0;
  explicit(v6, v7, v8, &__dst);
  if (v13 < 0)
  {
    operator delete(__dst);
  }
}

void sub_23C969A88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void absl::lts_20240722::internal_statusor::Helper::Crash(unint64_t *a1)
{
  v8[6] = *MEMORY[0x277D85DE8];
  v8[0] = "Attempting to fetch value instead of handling error ";
  v8[1] = 52;
  v1 = *a1;
  if (v1 == 1)
  {
    LODWORD(v2) = 2;
    *(&v5.__r_.__value_.__s + 23) = 2;
    size = 19279;
    strcpy(&v5, "OK");
  }

  else
  {
    absl::lts_20240722::Status::ToStringSlow(v1, 1, &v5);
    LODWORD(v2) = HIBYTE(v5.__r_.__value_.__r.__words[2]);
    size = v5.__r_.__value_.__l.__size_;
  }

  v2 = v2;
  v4 = &v5;
  if ((v2 & 0x80u) != 0)
  {
    v4 = v5.__r_.__value_.__r.__words[0];
    v2 = size;
  }

  v7[0] = v4;
  v7[1] = v2;
  absl::lts_20240722::StrCat(v8, v7, &v6);
  (atomic_load_explicit(absl::lts_20240722::raw_log_internal::internal_log_function, memory_order_acquire))(3, "/Library/Caches/com.apple.xbs/Binaries/ANECompiler/install/TempContent/Objects/ZinAneCompiler.build/or_tools_build/_deps/abseil-cpp-src/absl/status/statusor.cc", 89, &v6);
  std::string::~string(&v6);
  std::string::~string(&v5);
  __break(1u);
}

void sub_23C969B7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    v21 = a1;
    operator delete(__p);
    a1 = v21;
  }

  if (a15 < 0)
  {
    v22 = a1;
    operator delete(a10);
    _Unwind_Resume(v22);
  }

  _Unwind_Resume(a1);
}

void absl::lts_20240722::internal_statusor::ThrowBadStatusOrAccess(uint64_t *a1)
{
  exception = __cxa_allocate_exception(0x30uLL);
  v3 = *a1;
  *a1 = 55;
  *exception = &unk_284F390A0;
  exception[1] = v3;
  *(exception + 4) = 0;
  exception[4] = 0;
  exception[5] = 0;
  exception[3] = 0;
}

void absl::lts_20240722::BadStatusOrAccess::~BadStatusOrAccess(std::exception *this, absl::lts_20240722::cord_internal::CordRepBtree *a2)
{
  this->__vftable = &unk_284F390A0;
  if (SHIBYTE(this[5].__vftable) < 0)
  {
    operator delete(this[3].__vftable);
    v3 = this[1].__vftable;
    if (v3)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = this[1].__vftable;
  if ((v3 & 1) == 0)
  {
LABEL_5:
    absl::lts_20240722::status_internal::StatusRep::Unref(v3, a2);
  }

LABEL_6:

  std::exception::~exception(this);
}

{
  this->__vftable = &unk_284F390A0;
  if (SHIBYTE(this[5].__vftable) < 0)
  {
    operator delete(this[3].__vftable);
    v3 = this[1].__vftable;
    if (v3)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v3 = this[1].__vftable;
    if (v3)
    {
LABEL_6:
      std::exception::~exception(this);

      JUMPOUT(0x23EED9460);
    }
  }

  absl::lts_20240722::status_internal::StatusRep::Unref(v3, a2);
  goto LABEL_6;
}

void absl::lts_20240722::base_internal::CallOnceImpl<absl::lts_20240722::BadStatusOrAccess::InitWhat(void)::$_0>(atomic_uint *a1, uint64_t *a2)
{
  v4 = 0;
  v13[6] = *MEMORY[0x277D85DE8];
  atomic_compare_exchange_strong_explicit(a1, &v4, 0x65C2937Bu, memory_order_relaxed, memory_order_relaxed);
  if (!v4 || !absl::lts_20240722::base_internal::SpinLockWait(a1, 3u, &absl::lts_20240722::base_internal::CallOnceImpl<absl::lts_20240722::BadStatusOrAccess::InitWhat(void)::$_0>(std::atomic<unsigned int> *,absl::lts_20240722::base_internal::SchedulingMode,absl::lts_20240722::BadStatusOrAccess::InitWhat(void)::$_0 &&)::trans))
  {
    v5 = *a2;
    v13[0] = "Bad StatusOr access: ";
    v13[1] = 21;
    v6 = *(v5 + 8);
    if (v6 == 1)
    {
      LODWORD(v7) = 2;
      *(&__p.__r_.__value_.__s + 23) = 2;
      size = 19279;
      strcpy(&__p, "OK");
    }

    else
    {
      absl::lts_20240722::Status::ToStringSlow(v6, 1, &__p);
      LODWORD(v7) = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      size = __p.__r_.__value_.__l.__size_;
    }

    v7 = v7;
    p_p = &__p;
    if ((v7 & 0x80u) != 0)
    {
      p_p = __p.__r_.__value_.__r.__words[0];
      v7 = size;
    }

    v12[0] = p_p;
    v12[1] = v7;
    absl::lts_20240722::StrCat(v13, v12, &v11);
    if (*(v5 + 47) < 0)
    {
      operator delete(*(v5 + 24));
    }

    *(v5 + 24) = v11;
    *(&v11.__r_.__value_.__s + 23) = 0;
    v11.__r_.__value_.__s.__data_[0] = 0;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      if (atomic_exchange_explicit(a1, 0xDDu, memory_order_release) != 94570706)
      {
        return;
      }
    }

    else if (atomic_exchange_explicit(a1, 0xDDu, memory_order_release) != 94570706)
    {
      return;
    }

    ORToolsCpL2AccessVariable::~ORToolsCpL2AccessVariable(a1);
  }
}

void sub_23C969EC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t absl::lts_20240722::str_format_internal::ConvertIntArg<char>(absl::lts_20240722::numbers_internal *a1, unint64_t a2, char *a3, char *a4)
{
  *&v23[4] = *MEMORY[0x277D85DE8];
  v17 = a2;
  v18 = a3;
  if (a2 > 6u)
  {
    if (a2 - 8 < 8)
    {
      return absl::lts_20240722::str_format_internal::ConvertFloatImpl(&v17, a4, a1);
    }

    if (a2 == 7)
    {
      v8 = v23;
      v7 = v23;
      do
      {
        v9 = a1;
        *--v7 = a0123456789abcd[a1 & 0xF];
        LOBYTE(a1) = a1 >> 4;
      }

      while (v9 > 0xF);
      goto LABEL_24;
    }

    goto LABEL_17;
  }

  if (a2 > 3u)
  {
    if (a2 == 4)
    {
      v8 = v23;
      v7 = v23;
      do
      {
        v13 = a1;
        *--v7 = a1 & 7 | 0x30;
        LOBYTE(a1) = a1 >> 3;
      }

      while (v13 > 7);
LABEL_24:
      v12 = v23 - v7;
      __src = v7;
      v20 = (v23 - v7);
      if ((a2 & 0xFF00) == 0)
      {
LABEL_25:
        if (v8 != v7)
        {
          v14 = __src;
          v15 = *(a4 + 3);
          *(a4 + 2) += v12;
          v16 = v12;
          if (v12 >= a4 - v15 + 1056)
          {
            (*(a4 + 1))(*a4, a4 + 32, v15 - (a4 + 32));
            *(a4 + 3) = a4 + 32;
            (*(a4 + 1))(*a4, v14, v16);
          }

          else
          {
            memcpy(v15, v14, v12);
            *(a4 + 3) += v16;
          }
        }

        return 1;
      }

      goto LABEL_19;
    }

    if (a2 != 5)
    {
      v22 = *&absl::lts_20240722::numbers_internal::kHexTable[2 * a1];
      if (v22 == 48)
      {
        v7 = &v22 + 1;
      }

      else
      {
        v7 = &v22;
      }

      v8 = v23;
      v12 = v23 - v7;
      __src = v7;
      v20 = (v23 - v7);
      if ((a2 & 0xFF00) == 0)
      {
        goto LABEL_25;
      }

LABEL_19:
      return 1;
    }

    v7 = v21;
    __src = v21;
    a1 = a1;
LABEL_18:
    v10 = a3;
    v11 = absl::lts_20240722::numbers_internal::FastIntToBuffer(a1, v21, a3);
    LODWORD(a3) = v10;
    v8 = v11;
    v12 = v11 - v21;
    v20 = (v11 - v21);
    if ((a2 & 0xFF00) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_19;
  }

  if (a2 - 2 < 2)
  {
LABEL_17:
    v7 = v21;
    __src = v21;
    goto LABEL_18;
  }

  if ((a2 & 0xFF0000) != 0x20000)
  {
    return 1;
  }
}

uint64_t absl::lts_20240722::str_format_internal::anonymous namespace::ConvertWCharTImpl(unsigned int a1, unint64_t a2, uint64_t a3, char *a4)
{
  v4 = a3;
  if (a1 <= 0x7F)
  {
    __src = a1;
    v5 = 1;
    v6 = BYTE1(a2);
    if (!BYTE1(a2))
    {
      goto LABEL_11;
    }

    return absl::lts_20240722::str_format_internal::FormatSinkImpl::PutPaddedString(a4, &__src, v5, SHIDWORD(a2), v4, v6 & 1);
  }

  if (a1 <= 0x7FF)
  {
    __src = (a1 >> 6) | 0xC0;
    v15 = a1 & 0x3F | 0x80;
    v5 = 2;
    v6 = BYTE1(a2);
    if (!BYTE1(a2))
    {
      goto LABEL_11;
    }

    return absl::lts_20240722::str_format_internal::FormatSinkImpl::PutPaddedString(a4, &__src, v5, SHIDWORD(a2), v4, v6 & 1);
  }

  if (a1 >> 11 < 0x1B || (a1 & 0xFFFFE000) == 0xE000)
  {
    __src = (a1 >> 12) | 0xE0;
    v15 = (a1 >> 6) & 0x3F | 0x80;
    v16 = a1 & 0x3F | 0x80;
    v5 = 3;
    v6 = BYTE1(a2);
    if (BYTE1(a2))
    {
      return absl::lts_20240722::str_format_internal::FormatSinkImpl::PutPaddedString(a4, &__src, v5, SHIDWORD(a2), v4, v6 & 1);
    }
  }

  else
  {
    if ((a1 - 0x10000) >> 20)
    {
      return 0;
    }

    __src = (a1 >> 18) | 0xF0;
    v15 = (a1 >> 12) & 0x3F | 0x80;
    v16 = (a1 >> 6) & 0x3F | 0x80;
    v17 = a1 & 0x3F | 0x80;
    v5 = 4;
    v6 = BYTE1(a2);
    if (BYTE1(a2))
    {
      return absl::lts_20240722::str_format_internal::FormatSinkImpl::PutPaddedString(a4, &__src, v5, SHIDWORD(a2), v4, v6 & 1);
    }
  }

LABEL_11:
  v7 = *(a4 + 3);
  *(a4 + 2) += v5;
  if (v5 >= a4 - v7 + 1056)
  {
    v11 = a4 + 32;
    v12 = v5;
    (*(a4 + 1))(*a4, a4 + 32, v7 - (a4 + 32));
    *(a4 + 3) = v11;
    (*(a4 + 1))(*a4, &__src, v12);
  }

  else
  {
    v8 = v5;
    memcpy(v7, &__src, v5);
    *(a4 + 3) += v8;
  }

  return 1;
}

char *absl::lts_20240722::str_format_internal::anonymous namespace::ConvertCharImpl(char a1, unint64_t a2, uint64_t a3, void *a4)
{
  v5 = a2;
  if (HIDWORD(a2))
  {
    v7 = HIDWORD(a2) - 1;
  }

  else
  {
    v7 = 0;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  if ((a2 & 0x100) != 0 || !v8)
  {
    v15 = a4[3];
    ++a4[2];
    v16 = (a4 + 132);
    if (a4 + 132 == v15)
    {
LABEL_13:
      v15 = a4 + 4;
      (a4[1])(*a4, a4 + 4, 1024);
      a4[3] = a4 + 4;
    }
  }

  else
  {
    v9 = a4[3];
    a4[2] += v8;
    v10 = (a4 + 132);
    v11 = ((a4 + 132) - v9);
    v12 = v8 - v11;
    if (v8 <= v11)
    {
      v12 = v7;
      v13 = v9;
    }

    else
    {
      v13 = (a4 + 4);
      if (v10 == v9)
      {
        v14 = (a4 + 132);
      }

      else
      {
        memset(v9, 32, (a4 + 132) - v9);
        v14 = &v11[a4[3]];
        a4[3] = v14;
      }

      (a4[1])(*a4, a4 + 4, v14 - v13);
      a4[3] = v13;
      if (v12 >= 0x401)
      {
        do
        {
          v12 -= 1024;
          memset(a4 + 4, 32, 0x400uLL);
          a4[3] = v10;
          (a4[1])(*a4, a4 + 4, 1024);
          a4[3] = v13;
        }

        while (v12 > 0x400);
      }
    }

    memset(v13, 32, v12);
    v15 = (a4[3] + v12);
    ++a4[2];
    a4[3] = v15;
    v16 = (a4 + 132);
    if (a4 + 132 == v15)
    {
      goto LABEL_13;
    }
  }

  *v15 = a1;
  result = (a4[3] + 1);
  a4[3] = result;
  if ((v5 & 0x100) != 0 && v8)
  {
    a4[2] += v8;
    v18 = v16 - result;
    v19 = v8 - (v16 - result);
    if (v8 <= v16 - result)
    {
      v19 = v7;
      v20 = result;
    }

    else
    {
      v20 = (a4 + 4);
      if (v16 == result)
      {
        v21 = v16;
      }

      else
      {
        memset(result, 32, v16 - result);
        v21 = (a4[3] + v18);
        a4[3] = v21;
      }

      (a4[1])(*a4, a4 + 4, v21 - v20);
      a4[3] = v20;
      if (v19 >= 0x401)
      {
        do
        {
          v19 -= 1024;
          memset(a4 + 4, 32, 0x400uLL);
          a4[3] = v16;
          (a4[1])(*a4, a4 + 4, 1024);
          a4[3] = v20;
        }

        while (v19 > 0x400);
      }
    }

    result = memset(v20, 32, v19);
    a4[3] += v19;
  }

  return result;
}

char *absl::lts_20240722::str_format_internal::anonymous namespace::ConvertIntImplInnerSlow(char *result, uint64_t a2, unint64_t a3, unsigned int a4, char *a5)
{
  v6 = a2;
  v7 = HIDWORD(a3);
  if ((a3 & 0x8000000000000000) != 0)
  {
    v7 = 0;
  }

  v8 = *result;
  v9 = v8 < 49;
  if (v8 < 49)
  {
    v10 = result + 1;
  }

  else
  {
    v10 = result;
  }

  v11 = a2 - v9;
  v12 = v7 >= a2 - v9;
  v13 = v7 - (a2 - v9);
  if (!v12)
  {
    v13 = 0;
  }

  v14 = (a3 & 0xFE) == 2;
  if ((a3 & 0xFE) == 2)
  {
    v15 = "-";
  }

  else
  {
    v15 = 0;
  }

  if ((a3 & 0xFE) == 2)
  {
    v16 = "+";
    v17 = 1;
    v18 = " ";
    if ((a3 & 0x400) == 0)
    {
      v18 = 0;
    }

    if ((a3 & 0x200) == 0)
    {
      v17 = (BYTE1(a3) & 4) >> 2;
      v16 = v18;
    }

    if (v8 != 45)
    {
      v14 = v17;
      v15 = v16;
    }
  }

  v19 = 0;
  v12 = v13 >= v14;
  v20 = v13 - v14;
  if (!v12)
  {
    v20 = 0;
  }

  v21 = 1;
  if (a3 > 0x11u)
  {
    __src = 0;
  }

  else
  {
    __src = 0;
    if (((1 << a3) & 0x200C0) != 0)
    {
      if (((a3 & 0x800) != 0 || a3 == 17) && (v8 >= 49 ? (v22 = 0) : (v22 = -1), v22 + v6))
      {
        v21 = 0;
        v23 = "0x";
        if (a3 == 7)
        {
          v23 = "0X";
        }

        __src = v23;
        v19 = 2;
      }

      else
      {
        v19 = 0;
        __src = 0;
      }
    }
  }

  v12 = v20 >= v19;
  v24 = v20 - v19;
  if (!v12)
  {
    v24 = 0;
  }

  v25 = a4;
  if ((a4 & 0x80000000) != 0)
  {
    v25 = 1;
  }

  if (a3 == 4 && (a3 & 0x800) != 0 && (v6 == v9 || *v10 != 48) && v25 <= v11 + 1)
  {
    v25 = v11 + 1;
  }

  v12 = v25 >= v11;
  v26 = v25 - v11;
  if (v12)
  {
    v27 = v26;
  }

  else
  {
    v27 = 0;
  }

  v12 = v24 >= v27;
  v28 = v24 - v27;
  if (!v12)
  {
    v28 = 0;
  }

  if ((a3 & 0x100) != 0)
  {
    v29 = 0;
  }

  else
  {
    v29 = v28;
  }

  if ((a4 & 0x80000000) != 0 && (a3 & 0x1000) != 0)
  {
    v27 += v29;
    if ((a3 & 0x100) != 0)
    {
      v30 = v28;
    }

    else
    {
      v30 = 0;
    }

    __len = v30;
  }

  else
  {
    if ((a3 & 0x100) != 0)
    {
      v31 = v28;
    }

    else
    {
      v31 = 0;
    }

    __len = v31;
    if (v29)
    {
      v32 = v21;
      v61 = v9;
      v62 = v6;
      v63 = v10;
      v33 = *(a5 + 3);
      *(a5 + 2) += v29;
      v34 = a5 + 1056;
      v35 = (a5 + 1056 - v33);
      v36 = v29 - v35;
      v60 = v15;
      if (v29 <= v35)
      {
        v36 = v28;
        v37 = v33;
        v21 = v32;
      }

      else
      {
        v37 = a5 + 32;
        if (v34 == v33)
        {
          v38 = a5 + 1056;
        }

        else
        {
          memset(v33, 32, a5 + 1056 - v33);
          v38 = &v35[*(a5 + 3)];
          *(a5 + 3) = v38;
        }

        v21 = v32;
        (*(a5 + 1))(*a5, a5 + 32, v38 - v37);
        *(a5 + 3) = v37;
        if (v36 >= 0x401)
        {
          do
          {
            v36 -= 1024;
            memset(a5 + 32, 32, 0x400uLL);
            *(a5 + 3) = v34;
            (*(a5 + 1))(*a5, a5 + 32, 1024);
            *(a5 + 3) = v37;
          }

          while (v36 > 0x400);
        }
      }

      result = memset(v37, 32, v36);
      *(a5 + 3) += v36;
      v6 = v62;
      v10 = v63;
      v15 = v60;
      v9 = v61;
    }
  }

  if (!v14)
  {
LABEL_72:
    if (v21)
    {
      goto LABEL_77;
    }

    goto LABEL_75;
  }

  v39 = *(a5 + 3);
  *(a5 + 2) += v14;
  if (v14 < a5 - v39 + 1056)
  {
    result = memcpy(v39, v15, v14);
    *(a5 + 3) += v14;
    goto LABEL_72;
  }

  v40 = v6;
  v41 = v9;
  v42 = v11;
  v43 = v10;
  v44 = v15;
  (*(a5 + 1))(*a5, a5 + 32, v39 - (a5 + 32));
  *(a5 + 3) = a5 + 32;
  v45 = v44;
  v10 = v43;
  v11 = v42;
  v9 = v41;
  v6 = v40;
  result = (*(a5 + 1))(*a5, v45, v14);
  if (v21)
  {
    goto LABEL_77;
  }

LABEL_75:
  v46 = *(a5 + 3);
  *(a5 + 2) += v19;
  if (v19 >= a5 - v46 + 1056)
  {
    (*(a5 + 1))(*a5, a5 + 32, v46 - (a5 + 32));
    *(a5 + 3) = a5 + 32;
    result = (*(a5 + 1))(*a5, __src, v19);
    if (!v27)
    {
      goto LABEL_88;
    }

    goto LABEL_78;
  }

  result = memcpy(v46, __src, v19);
  *(a5 + 3) += v19;
LABEL_77:
  if (!v27)
  {
    goto LABEL_88;
  }

LABEL_78:
  v47 = *(a5 + 3);
  *(a5 + 2) += v27;
  v48 = a5 + 1056;
  v49 = (a5 + 1056 - v47);
  v50 = v27 - v49;
  if (v27 <= v49)
  {
    v50 = v27;
    v51 = v47;
  }

  else
  {
    v51 = a5 + 32;
    if (v48 == v47)
    {
      v52 = a5 + 1056;
    }

    else
    {
      memset(v47, 48, a5 + 1056 - v47);
      v52 = &v49[*(a5 + 3)];
      *(a5 + 3) = v52;
    }

    (*(a5 + 1))(*a5, a5 + 32, v52 - v51);
    *(a5 + 3) = v51;
    if (v50 >= 0x401)
    {
      do
      {
        v50 -= 1024;
        memset(a5 + 32, 48, 0x400uLL);
        *(a5 + 3) = v48;
        (*(a5 + 1))(*a5, a5 + 32, 1024);
        *(a5 + 3) = v51;
      }

      while (v50 > 0x400);
    }
  }

  result = memset(v51, 48, v50);
  *(a5 + 3) += v50;
LABEL_88:
  if (v6 != v9)
  {
    v53 = *(a5 + 3);
    *(a5 + 2) += v11;
    if (v11 >= a5 - v53 + 1056)
    {
      (*(a5 + 1))(*a5, a5 + 32, v53 - (a5 + 32));
      *(a5 + 3) = a5 + 32;
      result = (*(a5 + 1))(*a5, v10, v11);
      if (!__len)
      {
        return result;
      }

      goto LABEL_92;
    }

    result = memcpy(v53, v10, v11);
    *(a5 + 3) += v11;
  }

  if (!__len)
  {
    return result;
  }

LABEL_92:
  v54 = *(a5 + 3);
  *(a5 + 2) += __len;
  v55 = a5 + 1056;
  v56 = (a5 + 1056 - v54);
  v57 = __len - v56;
  if (__len <= v56)
  {
    v57 = __len;
    v58 = v54;
  }

  else
  {
    v58 = a5 + 32;
    if (v55 == v54)
    {
      v59 = a5 + 1056;
    }

    else
    {
      memset(v54, 32, a5 + 1056 - v54);
      v59 = &v56[*(a5 + 3)];
      *(a5 + 3) = v59;
    }

    (*(a5 + 1))(*a5, a5 + 32, v59 - v58);
    *(a5 + 3) = v58;
    if (v57 >= 0x401)
    {
      do
      {
        v57 -= 1024;
        memset(a5 + 32, 32, 0x400uLL);
        *(a5 + 3) = v55;
        (*(a5 + 1))(*a5, a5 + 32, 1024);
        *(a5 + 3) = v58;
      }

      while (v57 > 0x400);
    }
  }

  result = memset(v58, 32, v57);
  *(a5 + 3) += v57;
  return result;
}

uint64_t absl::lts_20240722::str_format_internal::ConvertIntArg<unsigned char>(absl::lts_20240722::numbers_internal *a1, unint64_t a2, char *a3, char *a4)
{
  *&v23[4] = *MEMORY[0x277D85DE8];
  v17 = a2;
  v18 = a3;
  if (a2 > 6u)
  {
    if (a2 - 8 < 8)
    {
      return absl::lts_20240722::str_format_internal::ConvertFloatImpl(&v17, a4, a1);
    }

    if (a2 == 7)
    {
      v8 = v23;
      v7 = v23;
      do
      {
        v10 = a1;
        *--v7 = a0123456789abcd[a1 & 0xF];
        LOBYTE(a1) = a1 >> 4;
      }

      while (v10 > 0xF);
      goto LABEL_27;
    }

    goto LABEL_21;
  }

  if (a2 > 3u)
  {
    if (a2 == 4)
    {
      v8 = v23;
      v7 = v23;
      do
      {
        v13 = a1;
        *--v7 = a1 & 7 | 0x30;
        LOBYTE(a1) = a1 >> 3;
      }

      while (v13 > 7);
LABEL_27:
      v9 = v23 - v7;
      __src = v7;
      v20 = (v23 - v7);
      if ((a2 & 0xFF00) == 0)
      {
LABEL_28:
        if (v8 != v7)
        {
          v14 = __src;
          v15 = *(a4 + 3);
          *(a4 + 2) += v9;
          v16 = v9;
          if (v9 >= a4 - v15 + 1056)
          {
            (*(a4 + 1))(*a4, a4 + 32, v15 - (a4 + 32));
            *(a4 + 3) = a4 + 32;
            (*(a4 + 1))(*a4, v14, v16);
          }

          else
          {
            memcpy(v15, v14, v9);
            *(a4 + 3) += v16;
          }
        }

        return 1;
      }

      goto LABEL_22;
    }

    if (a2 != 5)
    {
      v22 = *&absl::lts_20240722::numbers_internal::kHexTable[2 * a1];
      if (v22 == 48)
      {
        v7 = &v22 + 1;
      }

      else
      {
        v7 = &v22;
      }

      v8 = v23;
      v9 = v23 - v7;
      __src = v7;
      v20 = (v23 - v7);
      if ((a2 & 0xFF00) == 0)
      {
        goto LABEL_28;
      }

LABEL_22:
      return 1;
    }

LABEL_21:
    v7 = v21;
    __src = v21;
    v11 = a3;
    v12 = absl::lts_20240722::numbers_internal::FastIntToBuffer(a1, v21, a3);
    LODWORD(a3) = v11;
    v8 = v12;
    v9 = v12 - v21;
    v20 = (v12 - v21);
    if ((a2 & 0xFF00) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_22;
  }

  if (a2 - 2 < 2)
  {
    goto LABEL_21;
  }

  if ((a2 & 0xFF0000) != 0x20000)
  {
    return 1;
  }
}

uint64_t absl::lts_20240722::str_format_internal::ConvertIntArg<unsigned short>(absl::lts_20240722::numbers_internal *a1, unint64_t a2, char *a3, char *a4)
{
  *&v26[3] = *MEMORY[0x277D85DE8];
  v20 = a2;
  v21 = a3;
  if (a2 > 6u)
  {
    if (a2 - 8 < 8)
    {
      return absl::lts_20240722::str_format_internal::ConvertFloatImpl(&v20, a4, a1);
    }

    if (a2 == 7)
    {
      v7 = &v25;
      v11 = &v25;
      do
      {
        v13 = a1;
        *--v11 = a0123456789abcd[a1 & 0xF];
        LOWORD(a1) = a1 >> 4;
      }

      while (v13 > 0xF);
      goto LABEL_29;
    }

    goto LABEL_23;
  }

  if (a2 > 3u)
  {
    if (a2 == 4)
    {
      v7 = &v25;
      v11 = &v25;
      do
      {
        v16 = a1;
        *--v11 = a1 & 7 | 0x30;
        LOWORD(a1) = a1 >> 3;
      }

      while (v16 > 7);
LABEL_29:
      v12 = &v25 - v11;
      __src = v11;
      v23 = (&v25 - v11);
      if ((a2 & 0xFF00) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_24;
    }

    if (a2 != 5)
    {
      v7 = &v25;
      v8 = v26;
      do
      {
        v9 = a1;
        v10 = *&absl::lts_20240722::numbers_internal::kHexTable[2 * a1];
        *(v8 - 3) = v10;
        LOWORD(a1) = BYTE1(a1);
        v8 -= 2;
      }

      while (v9 > 0xFF);
      if (v10 == 48)
      {
        v11 = v8;
      }

      else
      {
        v11 = v8 - 1;
      }

      v12 = &v25 - v11;
      __src = v11;
      v23 = (&v25 - v11);
      if ((a2 & 0xFF00) == 0)
      {
LABEL_30:
        if (v7 != v11)
        {
          v17 = __src;
          v18 = *(a4 + 3);
          *(a4 + 2) += v12;
          v19 = v12;
          if (v12 >= a4 - v18 + 1056)
          {
            (*(a4 + 1))(*a4, a4 + 32, v18 - (a4 + 32));
            *(a4 + 3) = a4 + 32;
            (*(a4 + 1))(*a4, v17, v19);
          }

          else
          {
            memcpy(v18, v17, v12);
            *(a4 + 3) += v19;
          }
        }

        return 1;
      }

      goto LABEL_24;
    }

LABEL_23:
    v11 = v24;
    __src = v24;
    v14 = a3;
    v15 = absl::lts_20240722::numbers_internal::FastIntToBuffer(a1, v24, a3);
    LODWORD(a3) = v14;
    v7 = v15;
    v12 = v15 - v24;
    v23 = (v15 - v24);
    if ((a2 & 0xFF00) == 0)
    {
      goto LABEL_30;
    }

LABEL_24:
    return 1;
  }

  if (a2 - 2 < 2)
  {
    goto LABEL_23;
  }

  if ((a2 & 0xFF0000) != 0x20000)
  {
    return 1;
  }
}

uint64_t absl::lts_20240722::str_format_internal::ConvertIntArg<int>(absl::lts_20240722::numbers_internal *a1, unint64_t a2, char *a3, char *a4)
{
  *&v24[3] = *MEMORY[0x277D85DE8];
  v18 = a2;
  v19 = a3;
  if (a2 > 6u)
  {
    if (a2 - 8 < 8)
    {
      return absl::lts_20240722::str_format_internal::ConvertFloatImpl(&v18, a4, a1);
    }

    if (a2 == 7)
    {
      v10 = &v23;
      v7 = &v23;
      do
      {
        *--v7 = a0123456789abcd[a1 & 0xF];
        v11 = a1 > 0xF;
        LODWORD(a1) = a1 >> 4;
      }

      while (v11);
      goto LABEL_24;
    }

    goto LABEL_17;
  }

  if (a2 > 3u)
  {
    if (a2 == 4)
    {
      v10 = &v23;
      v7 = &v23;
      do
      {
        *--v7 = a1 & 7 | 0x30;
        v11 = a1 > 7;
        LODWORD(a1) = a1 >> 3;
      }

      while (v11);
LABEL_24:
      v12 = &v23 - v7;
      __src = v7;
      v21 = (&v23 - v7);
      if ((a2 & 0xFF00) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_19;
    }

    if (a2 != 5)
    {
      v10 = &v23;
      v16 = v24;
      do
      {
        v17 = *&absl::lts_20240722::numbers_internal::kHexTable[2 * a1];
        *(v16 - 3) = v17;
        v16 -= 2;
        v11 = a1 > 0xFF;
        LODWORD(a1) = a1 >> 8;
      }

      while (v11);
      if (v17 == 48)
      {
        v7 = v16;
      }

      else
      {
        v7 = v16 - 1;
      }

      v12 = &v23 - v7;
      __src = v7;
      v21 = (&v23 - v7);
      if ((a2 & 0xFF00) == 0)
      {
LABEL_25:
        if (v10 != v7)
        {
          v13 = __src;
          v14 = *(a4 + 3);
          *(a4 + 2) += v12;
          v15 = v12;
          if (v12 >= a4 - v14 + 1056)
          {
            (*(a4 + 1))(*a4, a4 + 32, v14 - (a4 + 32));
            *(a4 + 3) = a4 + 32;
            (*(a4 + 1))(*a4, v13, v15);
          }

          else
          {
            memcpy(v14, v13, v12);
            *(a4 + 3) += v15;
          }
        }

        return 1;
      }

      goto LABEL_19;
    }

    v7 = v22;
    __src = v22;
    v8 = a3;
    v9 = absl::lts_20240722::numbers_internal::FastIntToBuffer(a1, v22, a3);
LABEL_18:
    LODWORD(a3) = v8;
    v10 = v9;
    v12 = v9 - v22;
    v21 = (v9 - v22);
    if ((a2 & 0xFF00) == 0)
    {
      goto LABEL_25;
    }

LABEL_19:
    return 1;
  }

  if (a2 - 2 < 2)
  {
LABEL_17:
    v7 = v22;
    __src = v22;
    v8 = a3;
    v9 = absl::lts_20240722::numbers_internal::FastIntToBuffer(a1, v22, a3);
    goto LABEL_18;
  }

  if ((a2 & 0xFF0000) != 0x20000)
  {
    return 1;
  }
}

uint64_t absl::lts_20240722::str_format_internal::ConvertIntArg<unsigned int>(absl::lts_20240722::numbers_internal *a1, unint64_t a2, char *a3, char *a4)
{
  *&v24[3] = *MEMORY[0x277D85DE8];
  v18 = a2;
  v19 = a3;
  if (a2 > 6u)
  {
    if (a2 - 8 < 8)
    {
      return absl::lts_20240722::str_format_internal::ConvertFloatImpl(&v18, a4, a1);
    }

    if (a2 == 7)
    {
      v7 = &v23;
      v11 = &v23;
      do
      {
        *--v11 = a0123456789abcd[a1 & 0xF];
        v10 = a1 > 0xF;
        LODWORD(a1) = a1 >> 4;
      }

      while (v10);
      goto LABEL_29;
    }

    goto LABEL_23;
  }

  if (a2 > 3u)
  {
    if (a2 == 4)
    {
      v7 = &v23;
      v11 = &v23;
      do
      {
        *--v11 = a1 & 7 | 0x30;
        v10 = a1 > 7;
        LODWORD(a1) = a1 >> 3;
      }

      while (v10);
LABEL_29:
      v12 = &v23 - v11;
      __src = v11;
      v21 = (&v23 - v11);
      if ((a2 & 0xFF00) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_24;
    }

    if (a2 != 5)
    {
      v7 = &v23;
      v8 = v24;
      do
      {
        v9 = *&absl::lts_20240722::numbers_internal::kHexTable[2 * a1];
        *(v8 - 3) = v9;
        v8 -= 2;
        v10 = a1 > 0xFF;
        LODWORD(a1) = a1 >> 8;
      }

      while (v10);
      if (v9 == 48)
      {
        v11 = v8;
      }

      else
      {
        v11 = v8 - 1;
      }

      v12 = &v23 - v11;
      __src = v11;
      v21 = (&v23 - v11);
      if ((a2 & 0xFF00) == 0)
      {
LABEL_30:
        if (v7 != v11)
        {
          v15 = __src;
          v16 = *(a4 + 3);
          *(a4 + 2) += v12;
          v17 = v12;
          if (v12 >= a4 - v16 + 1056)
          {
            (*(a4 + 1))(*a4, a4 + 32, v16 - (a4 + 32));
            *(a4 + 3) = a4 + 32;
            (*(a4 + 1))(*a4, v15, v17);
          }

          else
          {
            memcpy(v16, v15, v12);
            *(a4 + 3) += v17;
          }
        }

        return 1;
      }

      goto LABEL_24;
    }

LABEL_23:
    v11 = v22;
    __src = v22;
    v13 = a3;
    v14 = absl::lts_20240722::numbers_internal::FastIntToBuffer(a1, v22, a3);
    LODWORD(a3) = v13;
    v7 = v14;
    v12 = v14 - v22;
    v21 = (v14 - v22);
    if ((a2 & 0xFF00) == 0)
    {
      goto LABEL_30;
    }

LABEL_24:
    return 1;
  }

  if (a2 - 2 < 2)
  {
    goto LABEL_23;
  }

  if ((a2 & 0xFF0000) != 0x20000)
  {
    return 1;
  }
}

uint64_t absl::lts_20240722::str_format_internal::ConvertIntArg<unsigned long>(unint64_t a1, unint64_t a2, char *a3, char *a4)
{
  *&v24[3] = *MEMORY[0x277D85DE8];
  v18 = a2;
  v19 = a3;
  if (a2 > 6u)
  {
    if (a2 - 8 < 8)
    {
      return absl::lts_20240722::str_format_internal::ConvertFloatImpl(&v18, a4, a1);
    }

    if (a2 == 7)
    {
      v7 = &v23;
      v11 = &v23;
      do
      {
        *--v11 = a0123456789abcd[a1 & 0xF];
        v10 = a1 > 0xF;
        a1 >>= 4;
      }

      while (v10);
      goto LABEL_29;
    }

    goto LABEL_23;
  }

  if (a2 > 3u)
  {
    if (a2 == 4)
    {
      v7 = &v23;
      v11 = &v23;
      do
      {
        *--v11 = a1 & 7 | 0x30;
        v10 = a1 > 7;
        a1 >>= 3;
      }

      while (v10);
LABEL_29:
      v12 = &v23 - v11;
      __src = v11;
      v21 = (&v23 - v11);
      if ((a2 & 0xFF00) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_24;
    }

    if (a2 != 5)
    {
      v7 = &v23;
      v8 = v24;
      do
      {
        v9 = *&absl::lts_20240722::numbers_internal::kHexTable[2 * a1];
        *(v8 - 3) = v9;
        v8 = (v8 - 2);
        v10 = a1 > 0xFF;
        a1 >>= 8;
      }

      while (v10);
      if (v9 == 48)
      {
        v11 = v8;
      }

      else
      {
        v11 = v8 - 1;
      }

      v12 = &v23 - v11;
      __src = v11;
      v21 = (&v23 - v11);
      if ((a2 & 0xFF00) == 0)
      {
LABEL_30:
        if (v7 != v11)
        {
          v15 = __src;
          v16 = *(a4 + 3);
          *(a4 + 2) += v12;
          v17 = v12;
          if (v12 >= a4 - v16 + 1056)
          {
            (*(a4 + 1))(*a4, a4 + 32, v16 - (a4 + 32));
            *(a4 + 3) = a4 + 32;
            (*(a4 + 1))(*a4, v15, v17);
          }

          else
          {
            memcpy(v16, v15, v12);
            *(a4 + 3) += v17;
          }
        }

        return 1;
      }

      goto LABEL_24;
    }

LABEL_23:
    v11 = v22;
    __src = v22;
    v13 = a3;
    v14 = absl::lts_20240722::numbers_internal::FastIntToBuffer(a1, v22, a3);
    LODWORD(a3) = v13;
    v7 = v14;
    v12 = v14 - v22;
    v21 = (v14 - v22);
    if ((a2 & 0xFF00) == 0)
    {
      goto LABEL_30;
    }

LABEL_24:
    return 1;
  }

  if (a2 - 2 < 2)
  {
    goto LABEL_23;
  }

  if ((a2 & 0xFF0000) != 0x20000)
  {
    return 1;
  }
}

uint64_t absl::lts_20240722::str_format_internal::ConvertIntArg<long long>(unint64_t a1, unint64_t a2, char *a3, char *a4)
{
  *&v24[3] = *MEMORY[0x277D85DE8];
  v18 = a2;
  v19 = a3;
  if (a2 > 6u)
  {
    if (a2 - 8 < 8)
    {
      return absl::lts_20240722::str_format_internal::ConvertFloatImpl(&v18, a4, a1);
    }

    if (a2 == 7)
    {
      v10 = &v23;
      v7 = &v23;
      do
      {
        *--v7 = a0123456789abcd[a1 & 0xF];
        v11 = a1 > 0xF;
        a1 >>= 4;
      }

      while (v11);
      goto LABEL_24;
    }

    goto LABEL_17;
  }

  if (a2 > 3u)
  {
    if (a2 == 4)
    {
      v10 = &v23;
      v7 = &v23;
      do
      {
        *--v7 = a1 & 7 | 0x30;
        v11 = a1 > 7;
        a1 >>= 3;
      }

      while (v11);
LABEL_24:
      v12 = &v23 - v7;
      __src = v7;
      v21 = (&v23 - v7);
      if ((a2 & 0xFF00) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_19;
    }

    if (a2 != 5)
    {
      v10 = &v23;
      v16 = v24;
      do
      {
        v17 = *&absl::lts_20240722::numbers_internal::kHexTable[2 * a1];
        *(v16 - 3) = v17;
        v16 = (v16 - 2);
        v11 = a1 > 0xFF;
        a1 >>= 8;
      }

      while (v11);
      if (v17 == 48)
      {
        v7 = v16;
      }

      else
      {
        v7 = v16 - 1;
      }

      v12 = &v23 - v7;
      __src = v7;
      v21 = (&v23 - v7);
      if ((a2 & 0xFF00) == 0)
      {
LABEL_25:
        if (v10 != v7)
        {
          v13 = __src;
          v14 = *(a4 + 3);
          *(a4 + 2) += v12;
          v15 = v12;
          if (v12 >= a4 - v14 + 1056)
          {
            (*(a4 + 1))(*a4, a4 + 32, v14 - (a4 + 32));
            *(a4 + 3) = a4 + 32;
            (*(a4 + 1))(*a4, v13, v15);
          }

          else
          {
            memcpy(v14, v13, v12);
            *(a4 + 3) += v15;
          }
        }

        return 1;
      }

      goto LABEL_19;
    }

    v7 = v22;
    __src = v22;
    v8 = a3;
    v9 = absl::lts_20240722::numbers_internal::FastIntToBuffer(a1, v22, a3);
LABEL_18:
    LODWORD(a3) = v8;
    v10 = v9;
    v12 = v9 - v22;
    v21 = (v9 - v22);
    if ((a2 & 0xFF00) == 0)
    {
      goto LABEL_25;
    }

LABEL_19:
    return 1;
  }

  if (a2 - 2 < 2)
  {
LABEL_17:
    v7 = v22;
    __src = v22;
    v8 = a3;
    v9 = absl::lts_20240722::numbers_internal::FastIntToBuffer(a1, v22, a3);
    goto LABEL_18;
  }

  if ((a2 & 0xFF0000) != 0x20000)
  {
    return 1;
  }
}

uint64_t absl::lts_20240722::str_format_internal::FormatConvertImpl<BOOL,0>(absl::lts_20240722::numbers_internal *a1, unint64_t a2, char *a3, char *a4)
{
  if (a2 != 18)
  {
    return absl::lts_20240722::str_format_internal::ConvertIntArg<int>(a1, a2, a3, a4);
  }

  v4 = *(a4 + 2);
  v5 = a4 + 1056;
  if (a1)
  {
    *(a4 + 2) = v4 + 4;
    v6 = *(a4 + 3);
    if ((v5 - v6) <= 4)
    {
      v9 = a4 + 32;
      (*(a4 + 1))(*a4, a4 + 32, v6 - (a4 + 32));
      *(a4 + 3) = v9;
      (*(a4 + 1))(*a4, "true", 4);
    }

    else
    {
      *v6 = 1702195828;
      *(a4 + 3) += 4;
    }

    return 1;
  }

  else
  {
    *(a4 + 2) = v4 + 5;
    v8 = *(a4 + 3);
    if (&v5[-v8] <= 5)
    {
      v11 = a4 + 32;
      (*(a4 + 1))(*a4, a4 + 32, v8 - (a4 + 32));
      *(a4 + 3) = v11;
      (*(a4 + 1))(*a4, "false", 5);
    }

    else
    {
      *(v8 + 4) = 101;
      *v8 = 1936482662;
      *(a4 + 3) += 5;
    }

    return 1;
  }
}

uint64_t absl::lts_20240722::str_format_internal::FormatConvertImpl(char *__s, unint64_t a2, uint64_t a3, char *a4)
{
  v6 = __s;
  *&v25[4] = *MEMORY[0x277D85DE8];
  if (a2 == 17)
  {
    if (__s)
    {
      v7 = &v25[1];
      do
      {
        v8 = *&absl::lts_20240722::numbers_internal::kHexTable[2 * v6];
        *(v7 - 3) = v8;
        v7 -= 2;
        v9 = v6 > 0xFF;
        v6 >>= 8;
      }

      while (v9);
      if (v8 == 48)
      {
        v10 = v7;
      }

      else
      {
        v10 = v7 - 1;
      }

      return 1;
    }

    v18 = *(a4 + 3);
    *(a4 + 2) += 5;
    if (&a4[-v18 + 1056] <= 5)
    {
      (*(a4 + 1))(*a4, a4 + 32, v18 - (a4 + 32));
      *(a4 + 3) = a4 + 32;
      (*(a4 + 1))(*a4, "(nil)", 5);
      return 1;
    }

    *(v18 + 4) = 41;
    *v18 = 1818848808;
    v19 = *(a4 + 3) + 5;
    goto LABEL_25;
  }

  if (!__s)
  {
    v17 = BYTE1(a2);
    if (!BYTE1(a2))
    {
      return 1;
    }

    v11 = a3;
    v16 = 0;
    return absl::lts_20240722::str_format_internal::FormatSinkImpl::PutPaddedString(a4, v6, v16, SHIDWORD(a2), v11, v17 & 1);
  }

  if ((a3 & 0x80000000) != 0)
  {
    v11 = a3;
    v16 = strlen(__s);
    v17 = BYTE1(a2);
    if (!BYTE1(a2))
    {
      goto LABEL_22;
    }

    return absl::lts_20240722::str_format_internal::FormatSinkImpl::PutPaddedString(a4, v6, v16, SHIDWORD(a2), v11, v17 & 1);
  }

  v11 = a3;
  v12 = a3 & 0x7FFFFFFF;
  v13 = &__s[v12];
  v14 = memchr(__s, 0, v12);
  if (v14)
  {
    v15 = v14;
  }

  else
  {
    v15 = v13;
  }

  v16 = &v15[-v6];
  v17 = BYTE1(a2);
  if (BYTE1(a2))
  {
    return absl::lts_20240722::str_format_internal::FormatSinkImpl::PutPaddedString(a4, v6, v16, SHIDWORD(a2), v11, v17 & 1);
  }

LABEL_22:
  if (v16)
  {
    v21 = *(a4 + 3);
    *(a4 + 2) += v16;
    if (v16 >= a4 - v21 + 1056)
    {
      v24 = v16;
      (*(a4 + 1))(*a4, a4 + 32, v21 - (a4 + 32));
      *(a4 + 3) = a4 + 32;
      (*(a4 + 1))(*a4, v6, v24);
      return 1;
    }

    v22 = v6;
    v23 = v16;
    memcpy(v21, v22, v16);
    v19 = *(a4 + 3) + v23;
LABEL_25:
    *(a4 + 3) = v19;
  }

  return 1;
}

uint64_t OUTLINED_FUNCTION_5_1()
{
  result = *(v0 + 24);
  *(v0 + 16) += v1;
  return result;
}

void absl::lts_20240722::str_format_internal::FormatSinkImpl::~FormatSinkImpl(absl::lts_20240722::str_format_internal::FormatSinkImpl *this)
{
  v2 = this + 32;
  (*(this + 1))(*this, this + 32, *(this + 3) - (this + 32));
  *(this + 3) = v2;
}

uint64_t absl::lts_20240722::str_format_internal::FormatUntyped(uint64_t a1, void (*a2)(uint64_t, char *, int64_t), char **__s, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v7 = __s;
  v49[0] = *MEMORY[0x277D85DE8];
  v44 = a1;
  v45 = a2;
  v46 = 0;
  v47 = v48;
  if (a4 == -1)
  {
    v23 = __s[2];
    v24 = __s[3];
    if (v23 == v24)
    {
LABEL_67:
      v34 = *v7 ^ 1;
      goto LABEL_73;
    }

    v25 = 0;
    v26 = __s[1];
    v27 = v26;
    while (1)
    {
      v27 += v25;
      v25 = &v26[*(v23 + 1)] - v27;
      if (*v23 != 1)
      {
        if (v25)
        {
          v46 += v25;
          if (v25 < v49 - v47)
          {
            memcpy(v47, v27, v25);
            v47 += v25;
          }

          else
          {
            v45(v44, v48, v47 - v48);
            v47 = v48;
            v45(v44, v27, v25);
          }
        }

        goto LABEL_43;
      }

      v28 = *(v23 + 4) - 1;
      if (a6 <= v28)
      {
        goto LABEL_66;
      }

      if (v23[28])
      {
        break;
      }

      v32 = 0xFFFFFFFFLL;
      v33 = -4294377472;
LABEL_60:
      if (((*(a5 + 16 * v28 + 8))(*(a5 + 16 * v28), v33 | v23[30], v32, &v44) & 1) == 0)
      {
        goto LABEL_66;
      }

LABEL_43:
      v23 += 32;
      if (v23 == v24)
      {
        goto LABEL_67;
      }
    }

    v29 = *(v23 + 5);
    v37 = v29;
    if (v29 > -2)
    {
      goto LABEL_51;
    }

    v30 = ~v29;
    if (a6 < v30 || !(*(a5 + 16 * v30 - 8))(*(a5 + 16 * v30 - 16), 589843, 0, &v37))
    {
LABEL_66:
      v34 = 0;
      goto LABEL_73;
    }

    v29 = v37;
    if ((v37 & 0x80000000) != 0)
    {
      if (v37 <= 0x80000001)
      {
        LODWORD(v29) = -2147483647;
      }

      v29 = -v29;
      v37 = v29;
      v31 = 1;
      v32 = *(v23 + 6);
      v43 = v32;
      if (v32 <= -2)
      {
        goto LABEL_52;
      }
    }

    else
    {
LABEL_51:
      v31 = 0;
      v32 = *(v23 + 6);
      v43 = v32;
      if (v32 <= -2)
      {
LABEL_52:
        if (a6 < (v32 ^ 0xFFFFFFFFuLL) || !(*(a5 + 16 * (v32 ^ 0xFFFFFFFFLL) - 8))(*(a5 + 16 * (v32 ^ 0xFFFFFFFFLL) - 16), 589843, 0, &v43))
        {
          goto LABEL_66;
        }

        v29 = v37;
        v32 = v43;
      }
    }

    v33 = (v29 << 32) | ((v23[28] | v31) << 8) | (v23[29] << 16);
    goto LABEL_60;
  }

  v41 = 0;
  if (!a4)
  {
    goto LABEL_72;
  }

  v8 = (__s + a4);
  while (1)
  {
    v9 = v8 - v7;
    v10 = memchr(v7, 37, v8 - v7);
    if (!v10)
    {
      break;
    }

    v11 = v10;
    v12 = v10 - v7;
    if (v10 != v7)
    {
      v46 += v12;
      if (v12 >= v49 - v47)
      {
        v45(v44, v48, v47 - v48);
        v47 = v48;
        v45(v44, v7, v12);
      }

      else
      {
        memcpy(v47, v7, v12);
        v47 += v12;
      }
    }

    v13 = (v11 + 1);
    if ((v11 + 1) >= v8)
    {
      goto LABEL_66;
    }

    v14 = *v13;
    v15 = absl::lts_20240722::str_format_internal::ConvTagHolder::value[v14];
    if ((v15 & 0x8000000000000000) == 0)
    {
      v16 = v41;
      if ((v41 & 0x80000000) != 0)
      {
        goto LABEL_66;
      }

      ++v41;
      if (a6 <= v16 || ((*(a5 + 16 * v16 + 8))(*(a5 + 16 * v16), v15 | 0xFFFFFFFF00090000, 0xFFFFFFFFLL, &v44) & 1) == 0)
      {
        goto LABEL_66;
      }

      goto LABEL_14;
    }

    if (v14 == 37)
    {
      ++v46;
      if ((v49 - v47) <= 1)
      {
        v45(v44, v48, v47 - v48);
        v47 = v48;
        v45(v44, "%", 1);
      }

      else
      {
        *v47++ = 37;
      }

LABEL_14:
      v7 = (v11 + 2);
      goto LABEL_15;
    }

    v38 = -1;
    v39 = 2304;
    v40 = 19;
    v7 = absl::lts_20240722::str_format_internal::ConsumeUnboundConversionNoInline(v13, v8, &v37, &v41);
    if (!v7)
    {
      goto LABEL_66;
    }

    v17 = v37 - 1;
    if (a6 <= v17)
    {
      goto LABEL_66;
    }

    if (v39)
    {
      v18 = v38;
      v43 = v38;
      if (v38 > -2)
      {
        goto LABEL_27;
      }

      v19 = ~v38;
      if (a6 < v19 || !(*(a5 + 16 * v19 - 8))(*(a5 + 16 * v19 - 16), 589843, 0, &v43))
      {
        goto LABEL_66;
      }

      v18 = v43;
      if ((v43 & 0x80000000) != 0)
      {
        if (v43 <= 0x80000001)
        {
          LODWORD(v18) = -2147483647;
        }

        v18 = -v18;
        v20 = 1;
        v21 = HIDWORD(v38);
        v42 = HIDWORD(v38);
        v43 = v18;
        if (SHIDWORD(v38) <= -2)
        {
LABEL_28:
          if (a6 < (v21 ^ 0xFFFFFFFFuLL) || !(*(a5 + 16 * (v21 ^ 0xFFFFFFFFLL) - 8))(*(a5 + 16 * (v21 ^ 0xFFFFFFFFLL) - 16), 589843, 0, &v42))
          {
            goto LABEL_66;
          }

          v21 = v42;
          v18 = v43;
        }
      }

      else
      {
LABEL_27:
        v20 = 0;
        v21 = HIDWORD(v38);
        v42 = HIDWORD(v38);
        if (SHIDWORD(v38) <= -2)
        {
          goto LABEL_28;
        }
      }

      v22 = (v18 << 32) | ((v39 | v20) << 8) | (HIBYTE(v39) << 16);
      goto LABEL_34;
    }

    v21 = 0xFFFFFFFFLL;
    v22 = -4294377472;
LABEL_34:
    if (((*(a5 + 16 * v17 + 8))(*(a5 + 16 * v17), v22 | v40, v21, &v44) & 1) == 0)
    {
      goto LABEL_66;
    }

LABEL_15:
    if (v7 == v8)
    {
      goto LABEL_72;
    }
  }

  if (v8 != v7)
  {
    v46 += v9;
    if (v9 >= v49 - v47)
    {
      v45(v44, v48, v47 - v48);
      v47 = v48;
      v45(v44, v7, v8 - v7);
    }

    else
    {
      memcpy(v47, v7, v8 - v7);
      v47 += v9;
    }
  }

LABEL_72:
  v34 = 1;
LABEL_73:
  v45(v44, v48, v47 - v48);
  return v34 & 1;
}

void sub_23C96C560(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  absl::lts_20240722::str_format_internal::FormatSinkImpl::~FormatSinkImpl(va);
  _Unwind_Resume(a1);
}

uint64_t absl::lts_20240722::str_format_internal::AppendPack(uint64_t a1, char **__s, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v6 = *(a1 + 23);
  if ((v6 & 0x8000000000000000) != 0)
  {
    v6 = *(a1 + 8);
    if (absl::lts_20240722::str_format_internal::FormatUntyped(a1, absl::lts_20240722::str_format_internal::FormatRawSinkImpl::Flush<std::string>, __s, a3, a4, a5))
    {
      return a1;
    }
  }

  else if (absl::lts_20240722::str_format_internal::FormatUntyped(a1, absl::lts_20240722::str_format_internal::FormatRawSinkImpl::Flush<std::string>, __s, a3, a4, a5))
  {
    return a1;
  }

  std::string::erase(a1, v6, 0xFFFFFFFFFFFFFFFFLL);
  return a1;
}

uint64_t absl::lts_20240722::str_format_internal::FormatPack@<X0>(char **__s@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  result = absl::lts_20240722::str_format_internal::FormatUntyped(a5, absl::lts_20240722::str_format_internal::FormatRawSinkImpl::Flush<std::string>, __s, a2, a3, a4);
  if ((result & 1) == 0)
  {
    return absl::lts_20240722::str_format_internal::FormatPack(a5);
  }

  return result;
}

void sub_23C96C68C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

unint64_t absl::lts_20240722::str_format_internal::FprintF(uint64_t a1, char **__s, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v9 = a1;
  v10 = 0;
  v11 = 0;
  if ((absl::lts_20240722::str_format_internal::FormatUntyped(&v9, absl::lts_20240722::str_format_internal::FormatRawSinkImpl::Flush<absl::lts_20240722::str_format_internal::FILERawSink>, __s, a3, a4, a5) & 1) == 0)
  {
    v6 = __error();
    v7 = 22;
LABEL_5:
    *v6 = v7;
    return 0xFFFFFFFFLL;
  }

  v5 = v10;
  if (v10)
  {
    *__error() = v5;
    return 0xFFFFFFFFLL;
  }

  result = v11;
  if (v11 >> 31)
  {
    v6 = __error();
    v7 = 27;
    goto LABEL_5;
  }

  return result;
}

unint64_t absl::lts_20240722::str_format_internal::SnprintF(uint64_t a1, uint64_t a2, char **a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v8 = a2 - 1;
  if (a2)
  {
    v9 = a2 - 1;
  }

  else
  {
    v9 = 0;
  }

  v12[0] = a1;
  v12[1] = v9;
  v13 = 0;
  if (absl::lts_20240722::str_format_internal::FormatUntyped(v12, absl::lts_20240722::str_format_internal::FormatRawSinkImpl::Flush<absl::lts_20240722::str_format_internal::BufferRawSink>, a3, a4, a5, a6))
  {
    result = v13;
    if (a2)
    {
      if (v8 >= v13)
      {
        v11 = v13;
      }

      else
      {
        v11 = v8;
      }

      *(a1 + v11) = 0;
    }
  }

  else
  {
    *__error() = 22;
    return 0xFFFFFFFFLL;
  }

  return result;
}

std::string *absl::lts_20240722::str_format_internal::FlagsToString@<X0>(char a1@<W0>, std::string *a2@<X8>)
{
  *&a2->__r_.__value_.__l.__data_ = 0uLL;
  a2->__r_.__value_.__r.__words[2] = 0;
  if (a1)
  {
    v4 = "-";
  }

  else
  {
    v4 = &byte_23CE7F131;
  }

  std::string::append(a2, v4);
  if ((a1 & 2) != 0)
  {
    v5 = "+";
  }

  else
  {
    v5 = &byte_23CE7F131;
  }

  std::string::append(a2, v5);
  if ((a1 & 4) != 0)
  {
    v6 = " ";
  }

  else
  {
    v6 = &byte_23CE7F131;
  }

  std::string::append(a2, v6);
  if ((a1 & 8) != 0)
  {
    v7 = "#";
  }

  else
  {
    v7 = &byte_23CE7F131;
  }

  std::string::append(a2, v7);
  if ((a1 & 0x10) != 0)
  {
    v8 = "0";
  }

  else
  {
    v8 = &byte_23CE7F131;
  }

  return std::string::append(a2, v8);
}

void sub_23C96C898(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t absl::lts_20240722::str_format_internal::FormatSinkImpl::PutPaddedString(char *a1, const void *a2, unint64_t a3, int a4, unsigned int a5, char a6)
{
  v7 = a4 & ~(a4 >> 31);
  v8 = a5;
  if (a3 < a5)
  {
    v8 = a3;
  }

  if ((a5 & 0x80000000) == 0)
  {
    v9 = v8;
  }

  else
  {
    v9 = a3;
  }

  if (v7 >= v9)
  {
    v10 = v7 - v9;
  }

  else
  {
    v10 = 0;
  }

  if (a6)
  {
    if (!v9)
    {
      goto LABEL_13;
    }

    v11 = *(a1 + 3);
    *(a1 + 2) += v9;
    if (v9 < a1 - v11 + 1056)
    {
      memcpy(v11, a2, v9);
      *(a1 + 3) += v9;
LABEL_13:
      if (v9 >= v7)
      {
        return 1;
      }

      goto LABEL_20;
    }

    v19 = a2;
    (*(a1 + 1))(*a1, a1 + 32, v11 - (a1 + 32));
    *(a1 + 3) = a1 + 32;
    (*(a1 + 1))(*a1, v19, v9);
    if (v9 < v7)
    {
LABEL_20:
      v20 = *(a1 + 3);
      *(a1 + 2) += v10;
      v21 = a1 + 1056;
      v22 = (a1 + 1056 - v20);
      v9 = v10 - v22;
      if (v10 <= v22)
      {
        v9 = v10;
        v23 = v20;
      }

      else
      {
        v23 = a1 + 32;
        if (v21 == v20)
        {
          v24 = a1 + 1056;
        }

        else
        {
          memset(v20, 32, a1 + 1056 - v20);
          v24 = &v22[*(a1 + 3)];
          *(a1 + 3) = v24;
        }

        (*(a1 + 1))(*a1, a1 + 32, v24 - v23);
        *(a1 + 3) = v23;
        if (v9 >= 0x401)
        {
          do
          {
            v9 -= 1024;
            memset(a1 + 32, 32, 0x400uLL);
            *(a1 + 3) = v21;
            (*(a1 + 1))(*a1, a1 + 32, 1024);
            *(a1 + 3) = v23;
          }

          while (v9 > 0x400);
        }
      }

      memset(v23, 32, v9);
      goto LABEL_37;
    }
  }

  else
  {
    if (v9 < v7)
    {
      v12 = *(a1 + 3);
      *(a1 + 2) += v10;
      v13 = a1 + 1056;
      v14 = (a1 + 1056 - v12);
      v15 = a2;
      v16 = v10 - v14;
      if (v10 <= v14)
      {
        v16 = v10;
        v17 = v12;
      }

      else
      {
        v17 = a1 + 32;
        if (v13 == v12)
        {
          v18 = a1 + 1056;
        }

        else
        {
          memset(v12, 32, a1 + 1056 - v12);
          v18 = &v14[*(a1 + 3)];
          *(a1 + 3) = v18;
        }

        (*(a1 + 1))(*a1, a1 + 32, v18 - v17);
        *(a1 + 3) = v17;
        if (v16 >= 0x401)
        {
          do
          {
            v16 -= 1024;
            memset(a1 + 32, 32, 0x400uLL);
            *(a1 + 3) = v13;
            (*(a1 + 1))(*a1, a1 + 32, 1024);
            *(a1 + 3) = v17;
          }

          while (v16 > 0x400);
        }
      }

      memset(v17, 32, v16);
      *(a1 + 3) += v16;
      a2 = v15;
    }

    if (v9)
    {
      v25 = *(a1 + 3);
      *(a1 + 2) += v9;
      if (v9 < a1 - v25 + 1056)
      {
        memcpy(v25, a2, v9);
LABEL_37:
        *(a1 + 3) += v9;
        return 1;
      }

      v26 = a2;
      (*(a1 + 1))(*a1, a1 + 32, v25 - (a1 + 32));
      *(a1 + 3) = a1 + 32;
      (*(a1 + 1))(*a1, v26, v9);
    }
  }

  return 1;
}

uint64_t absl::lts_20240722::str_format_internal::anonymous namespace::FloatToSink<double>(unsigned __int8 *a1, char *a2, double a3)
{
  *&v106[13] = *MEMORY[0x277D85DE8];
  if ((*&a3 & 0x8000000000000000) != 0)
  {
    v8 = -a3;
    v6 = 45;
LABEL_9:
    v7 = (__e + 1);
    LOBYTE(__e[0]) = v6;
    goto LABEL_10;
  }

  if ((a1[1] & 2) != 0)
  {
    v6 = 43;
LABEL_8:
    v8 = a3;
    goto LABEL_9;
  }

  if ((a1[1] & 4) != 0)
  {
    v6 = 32;
    goto LABEL_8;
  }

  v6 = 0;
  v7 = __e;
  v8 = a3;
LABEL_10:
  if (fabs(v8) == INFINITY)
  {
    v9 = *a1;
    v10 = (v9 & 0xFFFFFFF9) == 9 || v9 == 7;
    v11 = "inf";
    if (v10)
    {
      v11 = "INF";
    }

    *v7 = *v11;
    *(v7 + 2) = v11[2];
    if (absl::lts_20240722::str_format_internal::FormatSinkImpl::PutPaddedString(a2, __e, v7 - __e + 3, *(a1 + 1), 0xFFFFFFFF, a1[1] & 1))
    {
      return 1;
    }
  }

  v12 = *(a1 + 2);
  if (v12 >= 0)
  {
    v13 = v12;
  }

  else
  {
    v13 = 6;
  }

  v99 = 0;
  __e[0] = 0;
  v14 = frexp(v8, __e);
  v16 = ldexp(v14, 53);
  v17 = 0;
  v18 = __e[0];
  v19 = __e[0] - 53;
  v20 = v16;
  v21 = *a1;
  v22 = v21 & 0xFE;
  if (v22 <= 0xB)
  {
    if (v22 != 8)
    {
      if (v22 == 10)
      {
        {
        }

        v23 = v103;
        if ((a1[1] & 8) == 0 && *(v103 - 1) == 46)
        {
          v23 = v103 - 1;
        }

        v24 = v99;
        v25 = *a1;
        if ((v25 & 0xFFFFFFF9) == 9 || v25 == 7)
        {
          v27 = 69;
        }

        else
        {
          v27 = 101;
        }

        v103 = v23 + 1;
        *v23 = v27;
        v28 = v103++;
        if (v24 >= 0)
        {
          v29 = 43;
        }

        else
        {
          v29 = 45;
        }

        if (v24 >= 0)
        {
          v30 = v24;
        }

        else
        {
          v30 = -v24;
        }

        *v28 = v29;
        v31 = v103++;
        if (v30 < 0x64)
        {
          *v31 = (v30 / 0xAu) | 0x30;
          LOBYTE(v30) = v30 % 0xAu;
        }

        else
        {
          *v31 = v30 / 0x64 + 48;
          v32 = v103++;
          *v32 = (v30 / 0xA - 10 * ((429496730 * (v30 / 0xA)) >> 32)) | 0x30;
          v30 %= 0xAu;
        }

        v58 = v103++;
        *v58 = v30 | 0x30;
LABEL_116:
        return 1;
      }

      return v17;
    }

    v95[0] = v6;
    v96 = v13;
    v97 = a1;
    v98 = a2;
    if (__e[0] < 53)
    {
      if (v19 <= 0xFFFFFF7F)
      {
        return 1;
      }

      v101[1] = 46;
      v48 = 53 - LOBYTE(__e[0]);
      v49 = v20 >> (53 - LOBYTE(__e[0]));
      if (v19 <= 0xFFFFFFC0)
      {
        v49 = 0;
      }

      v50 = v101;
      do
      {
        *v50-- = (v49 % 0xA) | 0x30;
        v76 = v49 > 9;
        v49 /= 0xAuLL;
      }

      while (v76);
      *v50 = 48;
      if (v18 < -11)
      {
        goto LABEL_146;
      }

      v51 = v20 << (v18 + 11);
      if (v13)
      {
        v52 = &v101[2];
        do
        {
          if (!v51)
          {
            goto LABEL_146;
          }

          v53 = 10 * v51;
          *v52++ = ((v51 * 0xAuLL) >> 64) | 0x30;
          v51 *= 10;
          --v13;
        }

        while (v13);
      }

      else
      {
        v53 = v51;
        v52 = &v101[2];
      }

      if (v53 < 0)
      {
        if (v53 != 0x8000000000000000)
        {
          for (i = v52 - 1; ; --i)
          {
            v82 = *i;
            if (v82 != 46)
            {
              if (v82 != 57)
              {
LABEL_145:
                *i = v82 + 1;
                goto LABEL_146;
              }

              *i = 48;
            }
          }
        }

        i = &v52[-(*(v52 - 1) == 46) - 1];
        v82 = *i;
        if ((v82 & 0x80000001) == 1)
        {
          while (1)
          {
            if (v82 != 46)
            {
              if (v82 != 57)
              {
                goto LABEL_145;
              }

              *i = 48;
            }

            v83 = *--i;
            LOBYTE(v82) = v83;
          }
        }
      }

LABEL_146:
      if (*v50 == 48)
      {
        v41 = v50 + 1;
      }

      else
      {
        v41 = v50;
      }

      v63 = (v52 - v41);
      v64 = v96;
      if (v96)
      {
        goto LABEL_152;
      }
    }

    else
    {
      v39 = __e[0] - 53;
      v40 = __e[0] - __clz(v20) + 11;
      if (v40 >= 129)
      {
        return 1;
      }

      v41 = &v101[1];
      v101[1] = 46;
      if (v40 > 64)
      {
        v59 = v20 << v39;
        v60 = v20 >> 1 >> ~v39;
        if ((v39 & 0x40) != 0)
        {
          v60 = v20 << v39;
          v59 = 0;
        }

        if (v60)
        {
          do
          {
            v61 = v59 % 0xA + 6 * (v60 % 0xA);
            v62 = (v59 % 0xA + 6 * (v60 % 0xA)) / 0xAu;
            v59 = v59 / 0xA + 0x1999999999999999 * (v60 % 0xA) + v62;
            *--v41 = (v61 - 10 * v62) | 0x30;
            v76 = v60 > 9;
            v60 /= 0xAuLL;
          }

          while (v76);
        }

        do
        {
          *--v41 = (v59 % 0xA) | 0x30;
          v43 = v59 >= 0xA;
          v59 /= 0xAuLL;
        }

        while (v43);
      }

      else
      {
        v42 = v20 << v39;
        do
        {
          *--v41 = (v42 % 0xA) | 0x30;
          v43 = v42 >= 0xA;
          v42 /= 0xAuLL;
        }

        while (v43);
      }

      v52 = &v101[2];
      v63 = (&v101[2] - v41);
      v64 = v96;
      if (v96)
      {
        goto LABEL_152;
      }
    }

    if ((v97[1] & 8) == 0)
    {
      --v63;
    }

LABEL_152:
    return 1;
  }

  if (v22 == 12)
  {
    if (!v13)
    {
      v13 = 1;
    }

    {
    }

    v44 = v99;
    if ((v99 & 0x80000000) != 0)
    {
      if (v99 >= 0xFFFFFFFC)
      {
        *(__dst + 1) = *__dst;
        if (v44 != -1)
        {
          v65 = v44 + 1;
          do
          {
            v66 = __dst;
            __dst = __dst - 1;
            *v66 = 48;
            v43 = __CFADD__(v65++, 1);
          }

          while (!v43);
        }

        v44 = 0;
        v67 = __dst;
        __dst = __dst - 1;
        *v67 = 46;
        *__dst = 48;
      }
    }

    else if (v13 > v99 && v99)
    {
      v45 = __dst + 1;
      v46 = *(__dst + 1);
      v47 = v99;
      memmove(__dst + 1, __dst + 2, v99);
      v44 = 0;
      v45[v47] = v46;
    }

    if ((a1[1] & 8) == 0)
    {
      v68 = v103 - 1;
      v69 = *(v103 - 1);
      if (v69 == 48)
      {
        do
        {
          v103 = v68;
          v70 = *--v68;
          v69 = v70;
        }

        while (v70 == 48);
      }

      if (v69 == 46)
      {
        v103 = v68;
      }
    }

    if (v44)
    {
      v71 = *a1;
      if ((v71 & 0xFFFFFFF9) == 9 || v71 == 7)
      {
        v73 = 69;
      }

      else
      {
        v73 = 101;
      }
    }

    goto LABEL_116;
  }

  if (v22 == 14)
  {
    v95[0] = v6;
    v96 = v13;
    v97 = a1;
    v33 = __e[0] + 11;
    v98 = a2;
    if (v20 < 1)
    {
LABEL_49:
      v35 = v20 >> 63;
      v36 = v33 - 1;
      if (!v20)
      {
        v36 = 0;
      }

      v37 = 2 * v20;
      if (v12 < 0)
      {
LABEL_154:
        v80 = v37;
LABEL_155:
        v84 = &a0123456789abcd_0[16 * (v21 != 15)];
        __src[0] = 48;
        if (v21 == 15)
        {
          v85 = 88;
        }

        else
        {
          v85 = 120;
        }

        __src[1] = v85;
        __src[2] = v84[v35];
        if (v37 || (a1[1] & 8) != 0)
        {
          v86 = v106;
          v105 = 46;
        }

        else
        {
          v86 = &v105;
        }

        for (j = 0; v80; ++j)
        {
          *v86++ = v84[v80 >> 60];
          v80 *= 16;
        }

        v88 = v13 - j;
        if (v12 >= 0)
        {
          v89 = v88;
        }

        else
        {
          v89 = 0;
        }

        if (v21 == 15)
        {
          v90 = 80;
        }

        else
        {
          v90 = 112;
        }

        LOBYTE(__e[0]) = v90;
        if (v36 < 0)
        {
          v91 = 45;
        }

        else
        {
          v91 = 43;
        }

        BYTE1(__e[0]) = v91;
        if (v36 >= 0)
        {
          v92 = v36;
        }

        else
        {
          v92 = -v36;
        }

        absl::lts_20240722::numbers_internal::FastIntToBuffer(v92, __e + 2, v15);
        v93 = strlen(__e);
        return 1;
      }
    }

    else
    {
      if (v33 >= -1022)
      {
        v34 = 2;
      }

      else
      {
        v34 = LOBYTE(__e[0]) + 11;
      }

      while (v33 > -1022)
      {
        v20 *= 2;
        --v33;
        if (v20 <= 0)
        {
          goto LABEL_49;
        }
      }

      LODWORD(v35) = 0;
      v36 = -1022;
      v37 = v20 >> (2 - v34);
      if (v12 < 0)
      {
        goto LABEL_154;
      }
    }

    v38 = 16 - v13;
    if (v13 > 0x10)
    {
      v38 = 0;
    }

    if (v12 > 0xF)
    {
      LOBYTE(v38) = 0;
LABEL_127:
      v78 = 0xFFFFFFFFFFFFFFFFLL >> (-4 * v38);
      if (v12 <= 0xF)
      {
        v79 = ~v78;
      }

      else
      {
        v79 = -1;
      }

      v80 = v79 & v37;
      v37 = v13;
      goto LABEL_155;
    }

    v54 = 4 * v38;
    v55 = v37 & (0xFFFFFFFFFFFFFFFFLL >> (-4 * v38));
    v56 = 8 << (4 * v38 - 4);
    if (v55 == v56)
    {
      v57 = (v37 & (15 << v54)) >> v54;
      if (v38 == 16)
      {
        LOBYTE(v57) = v35;
      }

      if ((v57 & 1) == 0)
      {
        goto LABEL_127;
      }
    }

    else if (v55 <= v56)
    {
      goto LABEL_127;
    }

    v74 = 1 << v54;
    if (v38 > 0xF)
    {
      v74 = 0;
    }

    v75 = v37 < 0;
    v37 += v74;
    v76 = !v75 || v37 < 0;
    v77 = !v76 || v38 > 0xF;
    LODWORD(v35) = v35 + v77;
    goto LABEL_127;
  }

  return v17;
}

uint64_t absl::lts_20240722::str_format_internal::anonymous namespace::PrintExponent(uint64_t result, char a2, uint64_t a3)
{
  v3 = *(a3 + 96);
  *(a3 + 96) = v3 + 1;
  *v3 = a2;
  v4 = *(a3 + 96);
  *(a3 + 96) = v4 + 1;
  if ((result & 0x80000000) != 0)
  {
    *v4 = 45;
    result = -result;
    v5 = *(a3 + 96);
    *(a3 + 96) = v5 + 1;
    if (result >= 0x64)
    {
      goto LABEL_3;
    }
  }

  else
  {
    *v4 = 43;
    v5 = *(a3 + 96);
    *(a3 + 96) = v5 + 1;
    if (result >= 0x64)
    {
LABEL_3:
      *v5 = result / 0x64 + 48;
      v6 = *(a3 + 96);
      *(a3 + 96) = v6 + 1;
      *v6 = (result / 0xA - 10 * ((429496730 * (result / 0xA)) >> 32)) | 0x30;
      v7 = *(a3 + 96);
      *(a3 + 96) = v7 + 1;
      *v7 = (result % 0xA) | 0x30;
      return result;
    }
  }

  *v5 = (result / 0xAu) | 0x30;
  v8 = *(a3 + 96);
  *(a3 + 96) = v8 + 1;
  *v8 = (result % 0xAu) | 0x30;
  return result;
}

void *absl::lts_20240722::str_format_internal::anonymous namespace::WriteBufferToSink(void *result, void *__src, size_t __n, char a4, unsigned int a5, char *a6)
{
  v9 = result;
  if (result)
  {
    v10 = __n + 1;
  }

  else
  {
    v10 = __n;
  }

  v11 = a5 - v10;
  if (a5 < v10)
  {
    v11 = 0;
  }

  if ((a5 & 0x80000000) != 0)
  {
    v12 = 0;
  }

  else
  {
    v12 = v11;
  }

  if (a4)
  {
    goto LABEL_15;
  }

  if ((a4 & 0x10) != 0)
  {
    v19 = v12;
    v12 = 0;
    if (!result)
    {
      goto LABEL_27;
    }

    goto LABEL_24;
  }

  if (!v12)
  {
LABEL_15:
    v19 = 0;
    if (!result)
    {
      goto LABEL_27;
    }

    goto LABEL_24;
  }

  v13 = *(a6 + 3);
  *(a6 + 2) += v12;
  v14 = a6 + 1056;
  v15 = (a6 + 1056 - v13);
  v16 = v12 - v15;
  if (v12 <= v15)
  {
    v16 = v11;
    v17 = v13;
  }

  else
  {
    v17 = a6 + 32;
    if (v14 == v13)
    {
      v18 = a6 + 1056;
    }

    else
    {
      memset(v13, 32, a6 + 1056 - v13);
      v18 = &v15[*(a6 + 3)];
      *(a6 + 3) = v18;
    }

    (*(a6 + 1))(*a6, a6 + 32, v18 - v17);
    *(a6 + 3) = v17;
    if (v16 >= 0x401)
    {
      do
      {
        v16 -= 1024;
        memset(a6 + 32, 32, 0x400uLL);
        *(a6 + 3) = v14;
        (*(a6 + 1))(*a6, a6 + 32, 1024);
        *(a6 + 3) = v17;
      }

      while (v16 > 0x400);
    }
  }

  result = memset(v17, 32, v16);
  v19 = 0;
  v12 = 0;
  *(a6 + 3) += v16;
  if (v9)
  {
LABEL_24:
    v20 = *(a6 + 3);
    ++*(a6 + 2);
    if (a6 + 1056 == v20)
    {
      v20 = a6 + 32;
      result = (*(a6 + 1))(*a6, a6 + 32, 1024);
      *(a6 + 3) = a6 + 32;
    }

    *v20 = v9;
    ++*(a6 + 3);
  }

LABEL_27:
  if (v19)
  {
    v21 = *(a6 + 3);
    *(a6 + 2) += v19;
    v22 = a6 + 1056;
    v23 = (a6 + 1056 - v21);
    v24 = v19 - v23;
    if (v19 <= v23)
    {
      v24 = v19;
      v25 = v21;
    }

    else
    {
      v25 = a6 + 32;
      if (v22 == v21)
      {
        v26 = a6 + 1056;
      }

      else
      {
        memset(v21, 48, a6 + 1056 - v21);
        v26 = &v23[*(a6 + 3)];
        *(a6 + 3) = v26;
      }

      (*(a6 + 1))(*a6, a6 + 32, v26 - v25);
      *(a6 + 3) = v25;
      if (v24 >= 0x401)
      {
        do
        {
          v24 -= 1024;
          memset(a6 + 32, 48, 0x400uLL);
          *(a6 + 3) = v22;
          (*(a6 + 1))(*a6, a6 + 32, 1024);
          *(a6 + 3) = v25;
        }

        while (v24 > 0x400);
      }
    }

    result = memset(v25, 48, v24);
    *(a6 + 3) += v24;
  }

  if (!__n)
  {
LABEL_39:
    if (!v12)
    {
      return result;
    }

    goto LABEL_42;
  }

  v27 = *(a6 + 3);
  *(a6 + 2) += __n;
  if (__n < a6 - v27 + 1056)
  {
    result = memcpy(v27, __src, __n);
    *(a6 + 3) += __n;
    goto LABEL_39;
  }

  (*(a6 + 1))(*a6, a6 + 32, v27 - (a6 + 32));
  *(a6 + 3) = a6 + 32;
  result = (*(a6 + 1))(*a6, __src, __n);
  if (!v12)
  {
    return result;
  }

LABEL_42:
  v28 = *(a6 + 3);
  *(a6 + 2) += v12;
  v29 = a6 + 1056;
  v30 = (a6 + 1056 - v28);
  v31 = v12 - v30;
  if (v12 <= v30)
  {
    v31 = v12;
    v32 = v28;
  }

  else
  {
    v32 = a6 + 32;
    if (v29 == v28)
    {
      v33 = a6 + 1056;
    }

    else
    {
      memset(v28, 32, a6 + 1056 - v28);
      v33 = &v30[*(a6 + 3)];
      *(a6 + 3) = v33;
    }

    (*(a6 + 1))(*a6, a6 + 32, v33 - v32);
    *(a6 + 3) = v32;
    if (v31 >= 0x401)
    {
      do
      {
        v31 -= 1024;
        memset(a6 + 32, 32, 0x400uLL);
        *(a6 + 3) = v29;
        (*(a6 + 1))(*a6, a6 + 32, 1024);
        *(a6 + 3) = v32;
      }

      while (v31 > 0x400);
    }
  }

  result = memset(v32, 32, v31);
  *(a6 + 3) += v31;
  return result;
}

uint64_t absl::lts_20240722::str_format_internal::anonymous namespace::FormatFPositiveExpSlow(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3 + 159;
  if (a3 < -159)
  {
    v4 = a3 + 190;
  }

  v6 = a4;
  v7[0] = &v6;
  v7[2] = result;
  v7[3] = a2;
  v8 = a3;
  v5 = (11 * (v4 >> 5) / 10 + 127) >> 7;
  if (v5 <= 2)
  {
    if (v5 == 1)
    {
    }

    else if (v5 == 2)
    {
    }
  }

  else
  {
    switch(v5)
    {
      case 3:
      case 4:
      case 5:
    }
  }

  return result;
}

void *absl::lts_20240722::str_format_internal::anonymous namespace::FormatFNegativeExpSlow(void *result, uint64_t a2, int a3, unsigned __int8 *a4)
{
  v63 = *MEMORY[0x277D85DE8];
  v7 = *(a4 + 1);
  if (v7)
  {
    v8 = v7 + 2;
    v9 = *(a4 + 2);
    v10 = *a4;
    if (*a4)
    {
      ++v8;
    }

    v11 = *(v9 + 4);
    if ((v11 & 0x80000000) != 0)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v9 = *(a4 + 2);
    if ((*(v9 + 1) & 8) != 0)
    {
      v8 = 2;
      v10 = *a4;
      if (*a4)
      {
        v8 = 3;
      }

      v11 = *(v9 + 4);
      if ((v11 & 0x80000000) != 0)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v8 = 1;
      v10 = *a4;
      if (*a4)
      {
        v8 = 2;
      }

      v11 = *(v9 + 4);
      if ((v11 & 0x80000000) != 0)
      {
        goto LABEL_22;
      }
    }
  }

  v12 = v11 >= v8;
  v13 = v11 - v8;
  if (v13 == 0 || !v12)
  {
LABEL_22:
    v24 = 0;
LABEL_23:
    v13 = 0;
LABEL_24:
    v25 = v13 + 1;
    v15 = a4 + 24;
    goto LABEL_25;
  }

  v14 = *(v9 + 1);
  if (v14)
  {
    v24 = v13;
    goto LABEL_23;
  }

  if ((v14 & 0x10) != 0)
  {
    v24 = 0;
    goto LABEL_24;
  }

  v15 = a4 + 24;
  v16 = *(a4 + 3);
  if (v13)
  {
    v17 = result;
    v18 = v16[3];
    v16[2] += v13;
    v19 = v16 + 132;
    v20 = (v16 + 132) - v18;
    v21 = v13 - v20;
    if (v13 <= v20)
    {
      v21 = v13;
      v22 = v18;
    }

    else
    {
      v22 = v16 + 4;
      if (v19 == v18)
      {
        v23 = (v16 + 132);
      }

      else
      {
        memset(v18, 32, (v16 + 132) - v18);
        v23 = (v16[3] + v20);
        v16[3] = v23;
      }

      (v16[1])(*v16, v16 + 4, v23 - v22);
      v16[3] = v22;
      if (v21 >= 0x401)
      {
        do
        {
          v21 -= 1024;
          memset(v16 + 4, 32, 0x400uLL);
          v16[3] = v19;
          (v16[1])(*v16, v16 + 4, 1024);
          v16[3] = v22;
        }

        while (v21 > 0x400);
      }
    }

    memset(v22, 32, v21);
    v24 = 0;
    v16[3] += v21;
    v10 = *a4;
    v25 = 1;
    result = v17;
  }

  else
  {
    v24 = 0;
    v25 = 1;
  }

LABEL_25:
  v26 = *v15;
  if (v10)
  {
    v27 = v26[3];
    ++v26[2];
    if (v26 + 132 == v27)
    {
      v27 = v26 + 4;
      v28 = result;
      (v26[1])(*v26, v26 + 4, 1024);
      result = v28;
      v26[3] = v26 + 4;
    }

    *v27 = v10;
    ++v26[3];
    v26 = *v15;
  }

  if (v25)
  {
    v29 = a2;
    v30 = v15;
    v31 = v24;
    v58 = a3;
    v57 = result;
    v32 = v26[3];
    v26[2] += v25;
    v33 = v26 + 132;
    v34 = (v26 + 132) - v32;
    v35 = v25 - v34;
    if (v25 <= v34)
    {
      v35 = v25;
      v36 = v32;
      v24 = v31;
      v15 = v30;
      a2 = v29;
    }

    else
    {
      v36 = v26 + 4;
      if (v33 == v32)
      {
        v37 = (v26 + 132);
      }

      else
      {
        memset(v32, 48, (v26 + 132) - v32);
        v37 = (v26[3] + v34);
        v26[3] = v37;
      }

      v24 = v31;
      (v26[1])(*v26, v26 + 4, v37 - v36);
      v26[3] = v36;
      v15 = v30;
      a2 = v29;
      if (v35 >= 0x401)
      {
        do
        {
          v35 -= 1024;
          memset(v26 + 4, 48, 0x400uLL);
          v26[3] = v33;
          (v26[1])(*v26, v26 + 4, 1024);
          v26[3] = v36;
        }

        while (v35 > 0x400);
      }
    }

    memset(v36, 48, v35);
    v26[3] += v35;
    result = v57;
    a3 = v58;
  }

  if (*(a4 + 1) || (*(*(a4 + 2) + 1) & 8) != 0)
  {
    v39 = *v15;
    v40 = *(*v15 + 24);
    v39[2] = *(*v15 + 16) + 1;
    if (v39 + 132 == v40)
    {
      v40 = v39 + 4;
      v41 = result;
      (v39[1])(*v39, v39 + 4, 1024);
      result = v41;
      v39[3] = v39 + 4;
    }

    *v40 = 46;
    ++v39[3];
    v38 = *(a4 + 1);
  }

  else
  {
    v38 = 0;
  }

  __len = v38;
  v59[0] = a4;
  v59[1] = &__len;
  v61[2] = result;
  v61[3] = a2;
  v61[0] = v59;
  v62 = a3;
  v42 = (((a3 + 84) >> 5) + 127) >> 7;
  if (v42 <= 2)
  {
    if (v42 == 1)
    {
      v43 = *v15;
      v44 = __len;
      if (!__len)
      {
        goto LABEL_69;
      }

      goto LABEL_59;
    }

    if (v42 == 2)
    {
      v43 = *v15;
      v44 = __len;
      if (!__len)
      {
        goto LABEL_69;
      }

      goto LABEL_59;
    }
  }

  else
  {
    switch(v42)
    {
      case 3u:
        v43 = *v15;
        v44 = __len;
        if (!__len)
        {
          goto LABEL_69;
        }

        goto LABEL_59;
      case 4u:
        break;
      case 5u:
        v43 = *v15;
        v44 = __len;
        if (!__len)
        {
          goto LABEL_69;
        }

        goto LABEL_59;
    }
  }

  v43 = *v15;
  v44 = __len;
  if (!__len)
  {
    goto LABEL_69;
  }

LABEL_59:
  v45 = v43[3];
  v43[2] += v44;
  v46 = v43 + 132;
  v47 = (v43 + 132) - v45;
  v48 = v44 - v47;
  if (v44 <= v47)
  {
    v48 = v44;
    v49 = v45;
  }

  else
  {
    v49 = v43 + 4;
    if (v46 == v45)
    {
      v50 = (v43 + 132);
    }

    else
    {
      memset(v45, 48, (v43 + 132) - v45);
      v50 = (v43[3] + v47);
      v43[3] = v50;
    }

    (v43[1])(*v43, v43 + 4, v50 - v49);
    v43[3] = v49;
    if (v48 >= 0x401)
    {
      do
      {
        v48 -= 1024;
        memset(v43 + 4, 48, 0x400uLL);
        v43[3] = v46;
        (v43[1])(*v43, v43 + 4, 1024);
        v43[3] = v49;
      }

      while (v48 > 0x400);
    }
  }

  result = memset(v49, 48, v48);
  v43[3] += v48;
  v43 = *v15;
LABEL_69:
  if (v24)
  {
    v51 = v43[3];
    v43[2] += v24;
    v52 = v43 + 132;
    v53 = (v43 + 132) - v51;
    v54 = v24 - v53;
    if (v24 <= v53)
    {
      v54 = v24;
      v55 = v51;
    }

    else
    {
      v55 = v43 + 4;
      if (v52 == v51)
      {
        v56 = (v43 + 132);
      }

      else
      {
        memset(v51, 32, (v43 + 132) - v51);
        v56 = (v43[3] + v53);
        v43[3] = v56;
      }

      (v43[1])(*v43, v43 + 4, v56 - v55);
      v43[3] = v55;
      if (v54 >= 0x401)
      {
        do
        {
          v54 -= 1024;
          memset(v43 + 4, 32, 0x400uLL);
          v43[3] = v52;
          (v43[1])(*v43, v43 + 4, 1024);
          v43[3] = v55;
        }

        while (v54 > 0x400);
      }
    }

    result = memset(v55, 32, v54);
    v43[3] += v54;
  }

  return result;
}

uint64_t absl::lts_20240722::str_format_internal::anonymous namespace::StackArray::RunWithCapacityImpl<1ul>(uint64_t a1, uint64_t (*a2)(uint64_t, _OWORD *, uint64_t))
{
  v4 = *MEMORY[0x277D85DE8];
  memset(v3, 0, sizeof(v3));
  return a2(a1, v3, 128);
}

uint64_t absl::lts_20240722::str_format_internal::anonymous namespace::StackArray::RunWithCapacityImpl<2ul>(uint64_t a1, uint64_t (*a2)(uint64_t, _BYTE *, uint64_t))
{
  v6 = *MEMORY[0x277D85DE8];
  bzero(v5, 0x400uLL);
  return a2(a1, v5, 256);
}

uint64_t absl::lts_20240722::str_format_internal::anonymous namespace::StackArray::RunWithCapacityImpl<3ul>(uint64_t a1, uint64_t (*a2)(uint64_t, _BYTE *, uint64_t))
{
  v6 = *MEMORY[0x277D85DE8];
  bzero(v5, 0x600uLL);
  return a2(a1, v5, 384);
}

uint64_t absl::lts_20240722::str_format_internal::anonymous namespace::StackArray::RunWithCapacityImpl<4ul>(uint64_t a1, uint64_t (*a2)(uint64_t, _BYTE *, uint64_t))
{
  v6 = *MEMORY[0x277D85DE8];
  bzero(v5, 0x800uLL);
  return a2(a1, v5, 512);
}

uint64_t absl::lts_20240722::str_format_internal::anonymous namespace::StackArray::RunWithCapacityImpl<5ul>(uint64_t a1, uint64_t (*a2)(uint64_t, _BYTE *, uint64_t))
{
  v6 = *MEMORY[0x277D85DE8];
  bzero(v5, 0xA00uLL);
  return a2(a1, v5, 640);
}

uint64_t absl::lts_20240722::functional_internal::InvokeObject<absl::lts_20240722::str_format_internal::anonymous namespace::BinaryToDecimal::RunConversion(absl::lts_20240722::uint128,int,absl::lts_20240722::FunctionRef<void ()(absl::lts_20240722::str_format_internal::anonymous namespace::BinaryToDecimal)>)::{lambda(absl::lts_20240722::Span<unsigned int>)#1},void,absl::lts_20240722::Span<unsigned int>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = *(a1 + 32);
  v30 = a2;
  v31 = a3;
  if (v5 >= 0)
  {
    v6 = v5;
  }

  else
  {
    v6 = v5 + 31;
  }

  v7 = (v6 >> 5) + 1;
  v8 = v7;
  v9 = v5 + 159;
  if (v5 < -159)
  {
    v9 = v5 + 190;
  }

  v10 = 11 * (v9 >> 5) / 10;
  v29 = 0;
  v27[1] = v10;
  v11 = v5 - (v6 & 0xE0);
  v12 = v4 << v11;
  if ((v11 & 0x40) != 0)
  {
    LODWORD(v12) = 0;
  }

  *(a2 + 4 * v7 - 4) = v12;
  v13 = 32 - v11;
  v14 = ((2 * v3) << ~v13) | (v4 >> v13);
  v15 = v3 >> v13;
  if ((v13 & 0x40) != 0)
  {
    v16 = v3 >> v13;
  }

  else
  {
    v16 = v14;
  }

  if ((v13 & 0x40) != 0)
  {
    v17 = 0;
  }

  else
  {
    v17 = v15;
  }

  if (v16 | v17)
  {
    do
    {
      *(a2 + 4 * v8++) = v16;
      *(&v18 + 1) = v17;
      *&v18 = v16;
      v16 = v18 >> 32;
      v17 >>= 32;
    }

    while (v18 >> 32 != 0);
  }

  if (!v8)
  {
    LODWORD(v20) = *(a2 + 4 * v10);
    v27[0] = v10 + 1;
    if (!v20)
    {
      return (*(a1 + 8))(*a1, v27);
    }

    goto LABEL_26;
  }

  v19 = a2 - 4;
  do
  {
    v20 = 0;
    v21 = v10;
    v22 = v8;
    do
    {
      v23 = *(v19 + 4 * v22) | (v20 << 32);
      *(v19 + 4 * v22) = v23 / 0x3B9ACA00;
      v20 = v23 % 0x3B9ACA00;
      --v22;
    }

    while (v22);
    if (!*(a2 + 4 * (v8 - 1)))
    {
      --v8;
    }

    v10 = v21 - 1;
    *(a2 + 4 * (v21 - 1)) = v20;
  }

  while (v8);
  v27[0] = v21;
  if (v20)
  {
    do
    {
LABEL_26:
      v24 = v29++;
      (&v28 - v24)[8] = (v20 % 0xA) | 0x30;
      v25 = v20 > 9;
      LODWORD(v20) = v20 / 0xA;
    }

    while (v25);
  }

  return (*(a1 + 8))(*a1, v27);
}

unsigned __int8 **absl::lts_20240722::functional_internal::InvokeObject<absl::lts_20240722::str_format_internal::anonymous namespace::FormatFPositiveExpSlow(absl::lts_20240722::uint128,int,absl::lts_20240722::str_format_internal::anonymous namespace::FormatState const&)::$_0,void,absl::lts_20240722::str_format_internal::anonymous namespace::BinaryToDecimal>(unsigned __int8 **result, __int128 *a2)
{
  v63 = *MEMORY[0x277D85DE8];
  v2 = a2[2];
  v60 = a2[1];
  *__n = v2;
  v59 = *a2;
  v62 = *(a2 + 6);
  v3 = v2;
  v4 = 9 * (*(&v59 + 1) - v59) + v2;
  v58 = result;
  v5 = *result;
  v7 = *(*result + 1);
  v6 = *(*result + 2);
  if (v7 || (*(v6 + 1) & 8) != 0)
  {
    v4 += v7 + 1;
    v8 = *v5;
    if (*v5)
    {
      ++v4;
    }

    v9 = *(v6 + 4);
    if ((v9 & 0x80000000) != 0)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v8 = *v5;
    if (*v5)
    {
      ++v4;
    }

    v9 = *(v6 + 4);
    if ((v9 & 0x80000000) != 0)
    {
      goto LABEL_17;
    }
  }

  v10 = v9 - v4;
  if (v9 <= v4)
  {
LABEL_17:
    v19 = 0;
LABEL_18:
    v10 = 0;
    goto LABEL_19;
  }

  v11 = *(v6 + 1);
  if (v11)
  {
    v19 = v9 - v4;
    goto LABEL_18;
  }

  if ((v11 & 0x10) != 0 || !v10)
  {
    v19 = 0;
  }

  else
  {
    v12 = *(v5 + 3);
    v13 = v12[3];
    v12[2] += v10;
    v14 = v12 + 132;
    v15 = (v12 + 132) - v13;
    v16 = v10 - v15;
    if (v10 <= v15)
    {
      v16 = v9 - v4;
      v17 = v13;
    }

    else
    {
      v17 = v12 + 4;
      if (v14 == v13)
      {
        v18 = (v12 + 132);
      }

      else
      {
        memset(v13, 32, (v12 + 132) - v13);
        v18 = (v12[3] + v15);
        v12[3] = v18;
      }

      (v12[1])(*v12, v12 + 4, v18 - v17);
      v12[3] = v17;
      if (v16 >= 0x401)
      {
        do
        {
          v16 -= 1024;
          memset(v12 + 4, 32, 0x400uLL);
          v12[3] = v14;
          (v12[1])(*v12, v12 + 4, 1024);
          v12[3] = v17;
        }

        while (v16 > 0x400);
      }
    }

    result = memset(v17, 32, v16);
    v19 = 0;
    v10 = 0;
    v12[3] += v16;
    v5 = *v58;
    v8 = **v58;
  }

LABEL_19:
  if (v8)
  {
    v20 = *(v5 + 3);
    v21 = *(v20 + 24);
    ++*(v20 + 16);
    if ((v20 + 1056) == v21)
    {
      v21 = (v20 + 32);
      result = (*(v20 + 8))(*v20, v20 + 32, 1024);
      *(v20 + 24) = v20 + 32;
    }

    *v21 = v8;
    ++*(v20 + 24);
    v5 = *v58;
  }

  __len = v19;
  v22 = *(v5 + 3);
  if (v10)
  {
    v23 = *(v22 + 3);
    *(v22 + 2) += v10;
    v24 = v22 + 1056;
    v25 = v22 + 1056 - v23;
    v26 = v10 - v25;
    if (v10 <= v25)
    {
      v26 = v10;
      v27 = v23;
    }

    else
    {
      v27 = v22 + 32;
      if (v24 == v23)
      {
        v28 = v22 + 1056;
      }

      else
      {
        memset(v23, 48, v22 + 1056 - v23);
        v28 = (*(v22 + 3) + v25);
        *(v22 + 3) = v28;
      }

      (*(v22 + 1))(*v22, v22 + 32, v28 - v27);
      *(v22 + 3) = v27;
      if (v26 >= 0x401)
      {
        do
        {
          v26 -= 1024;
          memset(v22 + 32, 48, 0x400uLL);
          *(v22 + 3) = v24;
          (*(v22 + 1))(*v22, v22 + 32, 1024);
          *(v22 + 3) = v27;
        }

        while (v26 > 0x400);
      }
    }

    result = memset(v27, 48, v26);
    *(v22 + 3) += v26;
    v22 = *(*v58 + 3);
  }

  if (!v3)
  {
LABEL_36:
    v31 = v59;
    if (v59 >= *(&v59 + 1))
    {
      goto LABEL_44;
    }

LABEL_39:
    v32 = *(__n[1] + 4 * v31);
    *&v59 = v31 + 1;
    BYTE8(v60) = (v32 % 0xA) | 0x30;
    BYTE7(v60) = (v32 / 0xA - 10 * ((429496730 * (v32 / 0xA)) >> 32)) | 0x30;
    BYTE6(v60) = (v32 / 0x64 - 10 * ((429496730 * (v32 / 0x64)) >> 32)) | 0x30;
    BYTE5(v60) = (v32 / 0x3E8 - 10 * ((429496730 * (v32 / 0x3E8)) >> 32)) | 0x30;
    BYTE4(v60) = (v32 / 0x2710 - 10 * ((429496730 * (v32 / 0x2710)) >> 32)) | 0x30;
    v33 = v32 / 0x989680 - 10 * ((6554 * (v32 / 0x989680)) >> 16);
    BYTE3(v60) = (v32 / 0x186A0 - 10 * ((52429 * (v32 / 0x186A0)) >> 19)) | 0x30;
    BYTE2(v60) = (v32 / 0xF4240 - 10 * ((6554 * (v32 / 0xF4240)) >> 16)) | 0x30;
    while (1)
    {
      BYTE1(v60) = v33 | 0x30;
      LOBYTE(v60) = (v32 / 0x5F5E100 - 10 * ((26 * (v32 / 0x5F5E100)) >> 8)) | 0x30;
      __n[0] = 9;
      v36 = *(*v58 + 3);
      v37 = v36[3];
      v36[2] += 9;
      if (v36 - v37 + 1056 <= 9)
      {
        (v36[1])(*v36, v36 + 4, v37 - (v36 + 4));
        v36[3] = v36 + 4;
        result = (v36[1])(*v36, &v60, 9);
        v34 = v59;
        if (v59 >= *(&v59 + 1))
        {
          goto LABEL_44;
        }
      }

      else
      {
        v38 = v60;
        *(v37 + 8) = BYTE8(v60);
        *v37 = v38;
        v36[3] += 9;
        v34 = v59;
        if (v59 >= *(&v59 + 1))
        {
          goto LABEL_44;
        }
      }

      v35 = v34 + 1;
      v32 = *(__n[1] + 4 * v34);
      *&v59 = v35;
      BYTE8(v60) = (v32 % 0xA) | 0x30;
      BYTE7(v60) = (v32 / 0xA - 10 * ((429496730 * (v32 / 0xA)) >> 32)) | 0x30;
      BYTE6(v60) = (v32 / 0x64 - 10 * ((429496730 * (v32 / 0x64)) >> 32)) | 0x30;
      BYTE5(v60) = (v32 / 0x3E8 - 10 * ((429496730 * (v32 / 0x3E8)) >> 32)) | 0x30;
      BYTE4(v60) = (v32 / 0x2710 - 10 * ((429496730 * (v32 / 0x2710)) >> 32)) | 0x30;
      BYTE3(v60) = (v32 / 0x186A0 - 10 * ((52429 * (v32 / 0x186A0)) >> 19)) | 0x30;
      BYTE2(v60) = (v32 / 0xF4240 - 10 * ((6554 * (v32 / 0xF4240)) >> 16)) | 0x30;
      v33 = v32 / 0x989680 - 10 * ((6554 * (v32 / 0x989680)) >> 16);
    }
  }

  v29 = &v59 - v3;
  v30 = *(v22 + 3);
  *(v22 + 2) += v3;
  if (v3 < v22 - v30 + 1056)
  {
    result = memcpy(v30, v29 + 25, v3);
    *(v22 + 3) += v3;
    goto LABEL_36;
  }

  (*(v22 + 1))(*v22, v22 + 32, v30 - (v22 + 32));
  *(v22 + 3) = v22 + 32;
  result = (*(v22 + 1))(*v22, v29 + 25, v3);
  v31 = v59;
  if (v59 < *(&v59 + 1))
  {
    goto LABEL_39;
  }

LABEL_44:
  v39 = *v58;
  if (!*(*v58 + 1) && (*(*(v39 + 2) + 1) & 8) == 0)
  {
    v40 = __len;
LABEL_59:
    v44 = *(v39 + 3);
    goto LABEL_60;
  }

  v41 = *(v39 + 3);
  v42 = *(v41 + 24);
  ++*(v41 + 16);
  v40 = __len;
  if ((v41 + 1056) == v42)
  {
    v42 = (v41 + 32);
    result = (*(v41 + 8))(*v41, v41 + 32, 1024);
    *(v41 + 24) = v41 + 32;
  }

  *v42 = 46;
  ++*(v41 + 24);
  v43 = *(*v58 + 1);
  v44 = *(*v58 + 3);
  if (v43)
  {
    v45 = v44[3];
    v44[2] += v43;
    v46 = v44 + 132;
    v47 = (v44 + 132) - v45;
    v48 = v43 - v47;
    if (v43 <= v47)
    {
      v48 = v43;
      v49 = v45;
    }

    else
    {
      v49 = v44 + 4;
      if (v46 == v45)
      {
        v50 = (v44 + 132);
      }

      else
      {
        memset(v45, 48, (v44 + 132) - v45);
        v50 = (v44[3] + v47);
        v44[3] = v50;
      }

      (v44[1])(*v44, v44 + 4, v50 - v49);
      v44[3] = v49;
      if (v48 >= 0x401)
      {
        do
        {
          v48 -= 1024;
          memset(v44 + 4, 48, 0x400uLL);
          v44[3] = v46;
          (v44[1])(*v44, v44 + 4, 1024);
          v44[3] = v49;
        }

        while (v48 > 0x400);
      }
    }

    result = memset(v49, 48, v48);
    v44[3] += v48;
    v39 = *v58;
    goto LABEL_59;
  }

LABEL_60:
  if (v40)
  {
    v51 = v44[3];
    v44[2] += v40;
    v52 = v44 + 132;
    v53 = (v44 + 132) - v51;
    v54 = v40 - v53;
    if (v40 <= v53)
    {
      v54 = v40;
      v55 = v51;
    }

    else
    {
      v55 = v44 + 4;
      if (v52 == v51)
      {
        v56 = (v44 + 132);
      }

      else
      {
        memset(v51, 32, (v44 + 132) - v51);
        v56 = (v44[3] + v53);
        v44[3] = v56;
      }

      (v44[1])(*v44, v44 + 4, v56 - v55);
      v44[3] = v55;
      if (v54 >= 0x401)
      {
        do
        {
          v54 -= 1024;
          memset(v44 + 4, 32, 0x400uLL);
          v44[3] = v52;
          (v44[1])(*v44, v44 + 4, 1024);
          v44[3] = v55;
        }

        while (v54 > 0x400);
      }
    }

    result = memset(v55, 32, v54);
    v44[3] += v54;
  }

  return result;
}

uint64_t absl::lts_20240722::functional_internal::InvokeObject<absl::lts_20240722::str_format_internal::anonymous namespace::FractionalDigitGenerator::RunConversion(absl::lts_20240722::uint128,int,absl::lts_20240722::FunctionRef<void ()(absl::lts_20240722::str_format_internal::anonymous namespace::FractionalDigitGenerator)>)::{lambda(absl::lts_20240722::Span<unsigned int>)#1},void,absl::lts_20240722::Span<unsigned int>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = *(a1 + 32);
  if (v5 >= 0)
  {
    v6 = *(a1 + 32);
  }

  else
  {
    v6 = v5 + 31;
  }

  LODWORD(v7) = v6 >> 5;
  LODWORD(v8) = (v6 >> 5) + 1;
  v21 = v8;
  v22 = a2;
  v23 = a3;
  v9 = v5 - (v6 & 0xE0);
  v10 = v4 << (32 - v9);
  if (((32 - v9) & 0x40) != 0)
  {
    LODWORD(v10) = 0;
  }

  v11 = v8 - 1;
  *(a2 + 4 * v11) = v10;
  v12 = ((2 * v3) << ~v9) | (v4 >> v9);
  v13 = v3 >> v9;
  if ((v9 & 0x40) != 0)
  {
    v14 = v3 >> v9;
  }

  else
  {
    v14 = v12;
  }

  if ((v9 & 0x40) != 0)
  {
    v15 = 0;
  }

  else
  {
    v15 = v13;
  }

  if (v14 | v15)
  {
    v16 = (a2 + 4 * v11 - 4);
    do
    {
      do
      {
        *v16-- = v14;
        *(&v17 + 1) = v15;
        *&v17 = v14;
        v14 = v17 >> 32;
        v15 >>= 32;
      }

      while (v15);
    }

    while (v14);
  }

  if (v8)
  {
    v8 = 0;
    v7 = v7;
    do
    {
      v18 = v8 + 10 * *(a2 + 4 * v7);
      *(a2 + 4 * v7) = v18;
      v8 = HIDWORD(v18);
      --v7;
    }

    while (v7 != -1);
    if (!*(a2 + 4 * v11))
    {
      v21 = v11;
    }
  }

  v20[0] = v8;
  return (*(a1 + 8))(*a1, v20);
}

void **absl::lts_20240722::functional_internal::InvokeObject<absl::lts_20240722::str_format_internal::anonymous namespace::FormatFNegativeExpSlow(absl::lts_20240722::uint128,int,absl::lts_20240722::str_format_internal::anonymous namespace::FormatState const&)::$_0,void,absl::lts_20240722::str_format_internal::anonymous namespace::FractionalDigitGenerator>(void **result, char *a2)
{
  if ((*result)[1])
  {
    v2 = result;
    v4 = *(a2 + 1);
    v3 = *(a2 + 2);
    v5 = *a2;
    v6 = *result[1];
    v7 = v3 - 4;
    v45 = v3;
    v46 = result;
    while (1)
    {
      if (!v6)
      {
        return result;
      }

      if (v5)
      {
        if (v4)
        {
          goto LABEL_11;
        }

        v16 = 0;
        LOBYTE(v12) = 0;
        v15 = 0;
        v9 = 1;
        v19 = v6 == 0;
        if (v6 > 1)
        {
          goto LABEL_28;
        }

LABEL_36:
        if (v19 || v12 > 5 || v12 == 5 && (v16 || (v5 & 0x80000001) == 1 || v15))
        {
          v42 = (*v2)[3];
          v43 = v5 + 49;
          v44 = *(v42 + 24);
          ++*(v42 + 16);
          if ((v42 + 1056) == v44)
          {
            v44 = (v42 + 32);
            result = (*(v42 + 8))(*v42, v42 + 32, 1024);
            *(v42 + 24) = v42 + 32;
          }

          *v44 = v43;
          ++*(v42 + 24);
          --*v2[1];
          return result;
        }

        v28 = (*v2)[3];
        v29 = *(v28 + 24);
        ++*(v28 + 16);
        if ((v28 + 1056) == v29)
        {
          v29 = (v28 + 32);
          v30 = v9;
          result = (*(v28 + 8))(*v28, v28 + 32, 1024);
          v9 = v30;
          *(v28 + 24) = v28 + 32;
        }

        *v29 = v5 + 48;
        ++*(v28 + 24);
        v31 = v2[1];
        v32 = *v31 - 1;
        if (*v31 == 1)
        {
          v3 = v45;
        }

        else
        {
          v33 = v2;
          v34 = v6;
          v35 = (*v33)[3];
          v36 = v35[3];
          v35[2] += v32;
          v37 = v35 + 132;
          v38 = (v35 + 132) - v36;
          v39 = v32 - v38;
          v49 = v9;
          if (v32 <= v38)
          {
            v39 = v32;
            v6 = v34;
            v2 = v46;
          }

          else
          {
            if (v37 == v36)
            {
              v40 = (v35 + 132);
            }

            else
            {
              memset(v36, 57, (v35 + 132) - v36);
              v40 = (v35[3] + v38);
              v35[3] = v40;
            }

            v6 = v34;
            v36 = v35 + 4;
            (v35[1])(*v35, v35 + 4, v40 - (v35 + 4));
            v35[3] = v35 + 4;
            v2 = v46;
            if (v39 >= 0x401)
            {
              do
              {
                v39 -= 1024;
                memset(v35 + 4, 57, 0x400uLL);
                v35[3] = v37;
                (v35[1])(*v35, v35 + 4, 1024);
                v35[3] = v36;
              }

              while (v39 > 0x400);
            }
          }

          result = memset(v36, 57, v39);
          v35[3] += v39;
          v31 = v2[1];
          v3 = v45;
          v9 = v49;
        }

        *v31 = 0;
        v5 = v12;
        v41 = v9 >= v6;
        v6 = 0;
        if (v41)
        {
          return result;
        }
      }

      else
      {
        if (!v4)
        {
          return result;
        }

LABEL_11:
        v12 = 0;
        v13 = v4;
        do
        {
          v14 = v12 + 10 * *(v7 + 4 * v13);
          *(v7 + 4 * v13) = v14;
          v12 = HIDWORD(v14);
          --v13;
        }

        while (v13);
        if (!*(v3 + 4 * (v4 - 1)))
        {
          --v4;
        }

        if (v12 != 9)
        {
          v15 = 0;
          v16 = v4;
          v9 = 1;
          v19 = v6 == 0;
          if (v6 > 1)
          {
            goto LABEL_28;
          }

          goto LABEL_36;
        }

        v15 = 0;
        v16 = v4;
        while (1)
        {
          ++v15;
          if (!v16)
          {
            break;
          }

          v12 = 0;
          v17 = v16;
          do
          {
            v18 = v12 + 10 * *(v7 + 4 * v17);
            *(v7 + 4 * v17) = v18;
            v12 = HIDWORD(v18);
            --v17;
          }

          while (v17);
          if (!*(v3 + 4 * (v16 - 1)))
          {
            v4 = --v16;
          }

          if (v12 != 9)
          {
            v9 = v15 + 1;
            v19 = v15 + 1 > v6;
            if (v15 + 1 < v6)
            {
              goto LABEL_28;
            }

            goto LABEL_36;
          }
        }

        LOBYTE(v12) = 0;
        v9 = v15 + 1;
        v19 = v15 + 1 > v6;
        if (v15 + 1 >= v6)
        {
          goto LABEL_36;
        }

LABEL_28:
        v47 = v6;
        v20 = (*v2)[3];
        v21 = *(v20 + 24);
        ++*(v20 + 16);
        if ((v20 + 1056) == v21)
        {
          v22 = v9;
          result = (*(v20 + 8))(*v20, v20 + 32, 1024);
          v9 = v22;
          v2 = v46;
          *(v20 + 24) = v20 + 32;
          *(v20 + 32) = v5 + 48;
          ++*(v20 + 24);
          if (v15)
          {
LABEL_32:
            v23 = (*v2)[3];
            v24 = v23[3];
            v23[2] += v15;
            v25 = v23 + 132;
            v26 = (v23 + 132) - v24;
            v8 = v15 - v26;
            v48 = v9;
            if (v15 <= v26)
            {
              v8 = v15;
            }

            else
            {
              if (v25 == v24)
              {
                v27 = (v23 + 132);
              }

              else
              {
                memset(v24, 57, (v23 + 132) - v24);
                v27 = (v23[3] + v26);
                v23[3] = v27;
              }

              v24 = v23 + 4;
              (v23[1])(*v23, v23 + 4, v27 - (v23 + 4));
              v23[3] = v23 + 4;
              if (v8 >= 0x401)
              {
                do
                {
                  v8 -= 1024;
                  memset(v23 + 4, 57, 0x400uLL);
                  v23[3] = v25;
                  (v23[1])(*v23, v23 + 4, 1024);
                  v23[3] = v24;
                }

                while (v8 > 0x400);
              }
            }

            result = memset(v24, 57, v8);
            v23[3] += v8;
            v3 = v45;
            v2 = v46;
            v9 = v48;
          }
        }

        else
        {
          *v21 = v5 + 48;
          ++*(v20 + 24);
          if (v15)
          {
            goto LABEL_32;
          }
        }

        v10 = v2[1];
        v11 = *v10 - v9;
        *v10 = v11;
        v5 = v12;
        v6 = v11;
        if (v9 >= v47)
        {
          return result;
        }
      }
    }
  }

  return result;
}