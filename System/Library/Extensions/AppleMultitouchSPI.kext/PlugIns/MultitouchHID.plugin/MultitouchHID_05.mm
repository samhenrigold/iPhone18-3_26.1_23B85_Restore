uint64_t __copy_helper_block_e8_32c47_ZTSNSt3__110shared_ptrI19MTEmbeddedStatsImplEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_32c47_ZTSNSt3__110shared_ptrI19MTEmbeddedStatsImplEE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void MTEmbeddedStats::resetTouchState(MTEmbeddedStats *this)
{
  v1 = *this;
  v2 = *(this + 1);
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v3 = *(v1 + 8);
  v4[0] = MEMORY[0x29EDCA5F8];
  v4[1] = 3321888768;
  v4[2] = ___ZN15MTEmbeddedStats15resetTouchStateEv_block_invoke;
  v4[3] = &__block_descriptor_48_e8_32c47_ZTSNSt3__110shared_ptrI19MTEmbeddedStatsImplEE_e5_v8__0l;
  v4[4] = v1;
  v5 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  dispatch_async(v3, v4);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void ___ZN15MTEmbeddedStats15resetTouchStateEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  bzero((v1 + 24), 0x800uLL);
  *(v1 + 16) = 0;
}

uint64_t MTEmbeddedStatsImpl::updateOpenRows(MTEmbeddedStatsImpl *this)
{
  v23 = *MEMORY[0x29EDCA608];
  OpenRows = MTDeviceGetOpenRows();
  if (OpenRows == -536870201)
  {
    DeviceID = MTDeviceGetDeviceID();
    v11 = MTLoggingPlugin(DeviceID, v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      *v20 = 0;
      v12 = "Skipping open rows logging: not supported (deviceID 0x%llX)";
      v13 = v11;
      v14 = OS_LOG_TYPE_DEBUG;
      v15 = 12;
LABEL_10:
      _os_log_impl(&dword_29D381000, v13, v14, v12, buf, v15);
    }

    return 0;
  }

  v3 = OpenRows;
  if (OpenRows)
  {
    v16 = MTDeviceGetDeviceID();
    v18 = MTLoggingPlugin(v16, v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109376;
      *v20 = v3;
      *&v20[4] = 2048;
      *&v20[6] = 0;
      v12 = "Couldn't read open rows: error 0x%08X (deviceID 0x%llX)";
      v13 = v18;
      v14 = OS_LOG_TYPE_ERROR;
      v15 = 18;
      goto LABEL_10;
    }

    return 0;
  }

  v4 = MTDeviceGetDeviceID();
  v6 = MTLoggingPlugin(v4, v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(this + 262);
    *buf = 134218496;
    *v20 = 0;
    *&v20[8] = 2048;
    *&v20[10] = v7;
    v21 = 2048;
    v22 = 0;
    _os_log_impl(&dword_29D381000, v6, OS_LOG_TYPE_DEBUG, "Open rows collected: current 0x%016llX, previous 0x%016llX (deviceID 0x%llX)", buf, 0x20u);
  }

  *(this + 262) = *(this + 262);
  return 1;
}

uint64_t MTEmbeddedStatsImpl::MTEmbeddedStatsImpl(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = 0;
  v4 = (a1 + 2088);
  bzero((a1 + 24), 0x809uLL);
  *v4 = 0u;
  v5 = time(0);
  srand(v5);
  CFRetain(*a1);
  dispatch_retain(*(a1 + 8));
  MTEmbeddedStatsImpl::configureAWDLogging(a1);
  bzero((a1 + 24), 0x800uLL);
  *(a1 + 16) = 0;
  return a1;
}

void MTEmbeddedStatsImpl::configureAWDLogging(dispatch_queue_t *this)
{
  v10 = *MEMORY[0x29EDCA608];
  v2 = dispatch_source_create(MEMORY[0x29EDCA5D0], 0, 0, this[1]);
  this[261] = v2;
  if (!v2)
  {
    v7 = 0;
    DeviceID = MTDeviceGetDeviceID();
    v5 = MTLoggingPlugin(DeviceID, v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v9 = v7;
      _os_log_impl(&dword_29D381000, v5, OS_LOG_TYPE_ERROR, "Couldn't create firmware log timer (deviceID 0x%llX)", buf, 0xCu);
    }

    v2 = this[261];
  }

  dispatch_source_set_timer(v2, 0, 0x13A52453C000uLL, 0x3B9ACA00uLL);
  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 3221225472;
  v6[2] = ___ZN19MTEmbeddedStatsImpl19configureAWDLoggingEv_block_invoke;
  v6[3] = &__block_descriptor_40_e5_v8__0l;
  v6[4] = this;
  ___ZN19MTEmbeddedStatsImpl19configureAWDLoggingEv_block_invoke(v6);
  dispatch_source_set_timer(this[261], 0x13A52453C000uLL, 0x13A52453C000uLL, 0x3B9ACA00uLL);
  dispatch_source_set_event_handler(this[261], v6);
  dispatch_resume(this[261]);
}

void ___ZN19MTEmbeddedStatsImpl19configureAWDLoggingEv_block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 32);
  Version = MTDeviceGetVersion();
  if (Version)
  {
    v3 = Version;
    DeviceID = MTDeviceGetDeviceID();
    v6 = MTLoggingPlugin(DeviceID, v5);
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *buf = 67109376;
    *v22 = v3;
    *&v22[4] = 2048;
    *&v22[6] = 0;
    v7 = "Couldn't read firmware version: error 0x%08X (deviceID 0x%llX)";
    v8 = v6;
    v9 = OS_LOG_TYPE_ERROR;
    v10 = 18;
    goto LABEL_13;
  }

  v11 = objc_alloc_init(AWDMultitouchBootEvent);
  [(AWDMultitouchBootEvent *)v11 setVersion:2863311530];
  AWDPostMetric();

  v12 = MTDeviceGetDeviceID();
  v14 = MTLoggingPlugin(v12, v13);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    *v22 = -1431655766;
    *&v22[4] = 2048;
    *&v22[6] = 0;
    _os_log_impl(&dword_29D381000, v14, OS_LOG_TYPE_DEFAULT, "Logging firmware version 0x%X to AWD (deviceID 0x%llX)", buf, 0x12u);
  }

  if (MTEmbeddedStatsImpl::updateOpenRows(v1))
  {
    v15 = *(v1 + 262);
    *(v1 + 262) = 0;
    v16 = objc_alloc_init(AWDMultitouchHardwareStatus);
    for (i = 0; i != 64; ++i)
    {
      if ((v15 >> i))
      {
        [(AWDMultitouchHardwareStatus *)v16 addOpenRows:i];
      }
    }

    AWDPostMetric();

    v18 = MTDeviceGetDeviceID();
    v20 = MTLoggingPlugin(v18, v19);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      *v22 = v15;
      *&v22[8] = 2048;
      *&v22[10] = 0;
      v7 = "Logging open rows 0x%016llX to AWD (deviceID 0x%llX)";
      v8 = v20;
      v9 = OS_LOG_TYPE_DEFAULT;
      v10 = 22;
LABEL_13:
      _os_log_impl(&dword_29D381000, v8, v9, v7, buf, v10);
    }
  }
}

double MTEmbeddedStatsImpl::handleContactForContactTracker(void *a1, uint64_t a2, float *a3)
{
  v32 = *MEMORY[0x29EDCA608];
  v6 = a2 != 0;
  if (*a3 == v6)
  {
    if (!a2)
    {
      return result;
    }

    v7 = a3[6];
    v8 = a3[7];
    goto LABEL_8;
  }

  *a3 = v6;
  if (a2)
  {
    DeviceID = MTDeviceGetDeviceID();
    v11 = MTLoggingPlugin(DeviceID, v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = *(a2 + 24);
      v13 = *(a2 + 8);
      *buf = 67109632;
      v27 = v12;
      v28 = 2048;
      v29 = v13;
      v30 = 2048;
      v31 = 0;
      _os_log_impl(&dword_29D381000, v11, OS_LOG_TYPE_DEBUG, "F%d [%f] : Touching (deviceID 0x%llX)", buf, 0x1Cu);
    }

    *(a3 + 1) = *(a2 + 8);
    *(a3 + 9) = *(a2 + 84);
    v14 = *(a1 + 17);
    *(a3 + 1) = v14;
    *(a1 + 17) = v14 + 1;
    v15 = *(a2 + 68);
    *(a3 + 3) = v15;
    v8 = *(&v15 + 1);
    v7 = *&v15;
LABEL_8:
    a3[1] = *(a2 + 24);
    v16 = *(a2 + 8);
    *(a3 + 2) = v16;
    v17 = *(a2 + 68);
    v18 = *(a2 + 72);
    v19 = a3[8] + sqrtf(((v17 - v7) * (v17 - v7)) + ((v18 - v8) * (v18 - v8)));
    a3[7] = v18;
    a3[8] = v19;
    a3[6] = v17;
    MTEmbeddedStatsImpl::handleContactRadiiStats(v16, *(a2 + 60), *(a2 + 64), a1, a3);
    return result;
  }

  v21 = MTDeviceGetDeviceID();
  v23 = MTLoggingPlugin(v21, v22);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    v24 = *(a3 + 1);
    v25 = *(a3 + 2);
    *buf = 67109632;
    v27 = v24;
    v28 = 2048;
    v29 = v25;
    v30 = 2048;
    v31 = 0;
    _os_log_impl(&dword_29D381000, v23, OS_LOG_TYPE_DEBUG, "F%d [%f] : Not touching (deviceID 0x%llX)", buf, 0x1Cu);
  }

  MTEmbeddedStatsImpl::logAndFlushRadiiStatsWithContactIdentity(a1, a3);
  result = 0.0;
  *(a3 + 2) = 0u;
  *(a3 + 3) = 0u;
  *a3 = 0u;
  *(a3 + 1) = 0u;
  return result;
}

uint64_t MTEmbeddedStatsImpl::logDurationBetweenTouches(uint64_t this, double a2)
{
  v7[1] = *MEMORY[0x29EDCA608];
  if (*(this + 2072) > 0.0)
  {
    v3 = this;
    this = rand();
    HIDWORD(v4) = -1030792151 * this + 85899344;
    LODWORD(v4) = HIDWORD(v4);
    if ((v4 >> 2) <= 0x28F5C28)
    {
      v5 = a2 - *(v3 + 2072);
      [MEMORY[0x29EDBA0F8] stringWithFormat:@"%s.%s", "com.apple.Multitouch.EmbeddedStatistics", "DurationBetweenTouches"];
      v6 = @"Duration";
      v7[0] = [MEMORY[0x29EDBA070] numberWithDouble:v5];
      [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
      return AnalyticsSendEventLazy();
    }
  }

  return this;
}

uint64_t MTEmbeddedStatsImpl::logAndFlushRadiiStatsWithContactIdentity(uint64_t a1, unsigned int *a2)
{
  v10[6] = *MEMORY[0x29EDCA608];
  result = rand();
  HIDWORD(v4) = -1030792151 * result + 85899344;
  LODWORD(v4) = HIDWORD(v4);
  if ((v4 >> 2) <= 0x28F5C28)
  {
    [MEMORY[0x29EDBA0F8] stringWithFormat:@"%s.%s", "com.apple.Multitouch.EmbeddedStatistics", "LiftoffPathStats"];
    v9[0] = @"MinGeometricMean";
    LODWORD(v5) = a2[10];
    v10[0] = [MEMORY[0x29EDBA070] numberWithFloat:v5];
    v9[1] = @"MaxGeometricMean";
    LODWORD(v6) = a2[12];
    v10[1] = [MEMORY[0x29EDBA070] numberWithFloat:v6];
    v9[2] = @"EccentricityForMin";
    LODWORD(v7) = a2[11];
    v10[2] = [MEMORY[0x29EDBA070] numberWithFloat:v7];
    v9[3] = @"EccentricityForMax";
    LODWORD(v8) = a2[13];
    v10[3] = [MEMORY[0x29EDBA070] numberWithFloat:v8];
    v9[4] = @"InitialTouchIdentity";
    v10[4] = [MEMORY[0x29EDBA070] numberWithUnsignedInt:a2[14]];
    v9[5] = @"LiftoffTouchIdentity";
    v10[5] = [MEMORY[0x29EDBA070] numberWithUnsignedInt:a2[1]];
    [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v10 forKeys:v9 count:6];
    return AnalyticsSendEventLazy();
  }

  return result;
}

void MTEmbeddedStatsImpl::handleContactRadiiStats(double a1, float a2, float a3, uint64_t a4, uint64_t a5)
{
  if (*(a5 + 8) == a1)
  {
    *(a5 + 40) = xmmword_29D3D78D0;
    *(a5 + 56) = *(a5 + 4);
    v5 = 3.4028e38;
  }

  else
  {
    v5 = *(a5 + 40);
  }

  v6 = sqrtf(a2 * a3);
  v7 = a2 / a3;
  if (v6 < v5)
  {
    *(a5 + 40) = v6;
    *(a5 + 44) = v7;
  }

  if (v6 > *(a5 + 48))
  {
    *(a5 + 48) = v6;
    *(a5 + 52) = v7;
  }
}

void std::shared_ptr<MTEmbeddedStatsImpl>::shared_ptr[abi:ne200100]<MTEmbeddedStatsImpl,0>(void *a1, uint64_t a2)
{
  *a1 = a2;
  v2 = a2;
  operator new();
}

void sub_29D3CFC80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<MTEmbeddedStatsImpl>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

MTEmbeddedStatsImpl **std::unique_ptr<MTEmbeddedStatsImpl>::~unique_ptr[abi:ne200100](MTEmbeddedStatsImpl **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    MTEmbeddedStatsImpl::~MTEmbeddedStatsImpl(v2);
    MEMORY[0x29ED547D0]();
  }

  return a1;
}

void std::__shared_ptr_pointer<MTEmbeddedStatsImpl *,std::shared_ptr<MTEmbeddedStatsImpl>::__shared_ptr_default_delete<MTEmbeddedStatsImpl,MTEmbeddedStatsImpl>,std::allocator<MTEmbeddedStatsImpl>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29ED547D0);
}

MTEmbeddedStatsImpl *std::__shared_ptr_pointer<MTEmbeddedStatsImpl *,std::shared_ptr<MTEmbeddedStatsImpl>::__shared_ptr_default_delete<MTEmbeddedStatsImpl,MTEmbeddedStatsImpl>,std::allocator<MTEmbeddedStatsImpl>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    MTEmbeddedStatsImpl::~MTEmbeddedStatsImpl(result);

    JUMPOUT(0x29ED547D0);
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<MTEmbeddedStatsImpl *,std::shared_ptr<MTEmbeddedStatsImpl>::__shared_ptr_default_delete<MTEmbeddedStatsImpl,MTEmbeddedStatsImpl>,std::allocator<MTEmbeddedStatsImpl>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void MTEmbeddedStatsImpl::~MTEmbeddedStatsImpl(MTEmbeddedStatsImpl *this)
{
  v2 = *(this + 261);
  if (v2)
  {
    dispatch_source_cancel(v2);
    dispatch_release(*(this + 261));
  }

  dispatch_release(*(this + 1));
  CFRelease(*this);
}

void std::__shared_ptr_emplace<std::vector<TouchingContact>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A2413B98;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29ED547D0);
}

void std::__shared_ptr_emplace<std::vector<TouchingContact>>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<TouchingContact>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x276276276276277)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t AWDMultitouchBootEventReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v26 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v26 & 0x7F) << v5;
        if ((v26 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v10 = v6++ >= 9;
        if (v10)
        {
          v11 = 0;
          goto LABEL_15;
        }
      }

      v11 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
      {
        break;
      }

      if ((v11 >> 3) == 2)
      {
        v18 = 0;
        v19 = 0;
        v20 = 0;
        *(a1 + 20) |= 2u;
        while (1)
        {
          v28 = 0;
          v21 = [a2 position] + 1;
          if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 1, v22 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v20 |= (v28 & 0x7F) << v18;
          if ((v28 & 0x80) == 0)
          {
            break;
          }

          v18 += 7;
          v10 = v19++ >= 9;
          if (v10)
          {
            v23 = 0;
            goto LABEL_46;
          }
        }

        v23 = [a2 hasError] ? 0 : v20;
LABEL_46:
        *(a1 + 16) = v23;
      }

      else if ((v11 >> 3) == 1)
      {
        v12 = 0;
        v13 = 0;
        v14 = 0;
        *(a1 + 20) |= 1u;
        while (1)
        {
          v27 = 0;
          v15 = [a2 position] + 1;
          if (v15 >= [a2 position] && (v16 = objc_msgSend(a2, "position") + 1, v16 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v14 |= (v27 & 0x7F) << v12;
          if ((v27 & 0x80) == 0)
          {
            break;
          }

          v12 += 7;
          v10 = v13++ >= 9;
          if (v10)
          {
            v17 = 0;
            goto LABEL_42;
          }
        }

        v17 = [a2 hasError] ? 0 : v14;
LABEL_42:
        *(a1 + 8) = v17;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v25 = [a2 position];
    }

    while (v25 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDMultitouchHardwareStatusReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v31[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v31[0] & 0x7F) << v5;
        if ((v31[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v10 = v6++ >= 9;
        if (v10)
        {
          v11 = 0;
          goto LABEL_15;
        }
      }

      v11 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
      {
        break;
      }

      if ((v11 >> 3) == 2)
      {
        if ((v11 & 7) == 2)
        {
          v31[0] = 0xAAAAAAAAAAAAAAAALL;
          v31[1] = 0xAAAAAAAAAAAAAAAALL;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          while (1)
          {
            v19 = [a2 position];
            if (v19 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
            {
              break;
            }

            v20 = 0;
            v21 = 0;
            v22 = 0;
            while (1)
            {
              v32 = 0;
              v23 = [a2 position] + 1;
              if (v23 >= [a2 position] && (v24 = objc_msgSend(a2, "position") + 1, v24 <= objc_msgSend(a2, "length")))
              {
                [objc_msgSend(a2 "data")];
                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v22 |= (v32 & 0x7F) << v20;
              if ((v32 & 0x80) == 0)
              {
                break;
              }

              v20 += 7;
              v10 = v21++ >= 9;
              if (v10)
              {
                goto LABEL_42;
              }
            }

            [a2 hasError];
LABEL_42:
            PBRepeatedUInt32Add();
          }

          PBReaderRecallMark();
        }

        else
        {
          v25 = 0;
          v26 = 0;
          v27 = 0;
          while (1)
          {
            LOBYTE(v31[0]) = 0;
            v28 = [a2 position] + 1;
            if (v28 >= [a2 position] && (v29 = objc_msgSend(a2, "position") + 1, v29 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v27 |= (v31[0] & 0x7F) << v25;
            if ((v31[0] & 0x80) == 0)
            {
              break;
            }

            v25 += 7;
            v10 = v26++ >= 9;
            if (v10)
            {
              goto LABEL_60;
            }
          }

          [a2 hasError];
LABEL_60:
          PBRepeatedUInt32Add();
        }
      }

      else if ((v11 >> 3) == 1)
      {
        v12 = 0;
        v13 = 0;
        v14 = 0;
        *(a1 + 40) |= 1u;
        while (1)
        {
          LOBYTE(v31[0]) = 0;
          v15 = [a2 position] + 1;
          if (v15 >= [a2 position] && (v16 = objc_msgSend(a2, "position") + 1, v16 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v14 |= (v31[0] & 0x7F) << v12;
          if ((v31[0] & 0x80) == 0)
          {
            break;
          }

          v12 += 7;
          v10 = v13++ >= 9;
          if (v10)
          {
            v17 = 0;
            goto LABEL_48;
          }
        }

        if ([a2 hasError])
        {
          v17 = 0;
        }

        else
        {
          v17 = v14;
        }

LABEL_48:
        *(a1 + 32) = v17;
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v30 = [a2 position];
    }

    while (v30 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void MultitouchHIDClass::start(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x29EDCA608];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_29D381000, a2, OS_LOG_TYPE_ERROR, "Invalid parserType: %d", v2, 8u);
}

void IOHIDPlugInFactory_cold_1()
{
  v1 = *MEMORY[0x29EDCA608];
  dlerror();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_29D381000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "dlsym returned null for symbol '%{public}@': %{public}s", v0, 0x16u);
}

void IOHIDPlugInFactory_cold_2()
{
  v1 = *MEMORY[0x29EDCA608];
  dlerror();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_29D381000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "dlopen failed for %{public}@: %{public}s", v0, 0x16u);
}

void MTHandMotion::clearHandMotion(char a1, NSObject *a2)
{
  v3 = *MEMORY[0x29EDCA608];
  v2[0] = 67109120;
  v2[1] = a1 & 1;
  _os_log_debug_impl(&dword_29D381000, a2, OS_LOG_TYPE_DEBUG, "\tDHML:  MTHandMotion::resetHandMotion(%d)", v2, 8u);
}

void MTParserPath::filterContactForScreenUI(uint64_t a1, unsigned int *a2, NSObject *a3)
{
  v8 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 40);
  v5[0] = 67109378;
  v5[1] = v4;
  v6 = 2080;
  v7 = MTGetPathStageName();
  _os_log_debug_impl(&dword_29D381000, a3, OS_LOG_TYPE_DEBUG, "\tDHML:  P%d Hover (stage %s -- ignoring motion)", v5, 0x12u);
}

void MTParserPath::filterContactForScreenUI(uint64_t a1, int *a2, os_log_t log)
{
  v11 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 40);
  v4 = *a2;
  v5 = *(a1 + 144);
  v6[0] = 67109632;
  v6[1] = v3;
  v7 = 1024;
  v8 = v4;
  v9 = 1024;
  v10 = v5;
  _os_log_debug_impl(&dword_29D381000, log, OS_LOG_TYPE_DEBUG, "\tDHML:  P%d Identity=%d <- %d (ignoring motion)", v6, 0x14u);
}

uint64_t MTSLGLogger::prepare(MTSLGLogger *this)
{
  result = dlopen([@"/System/Library/PrivateFrameworks/StudyLog.framework/StudyLog" UTF8String], 1);
  *this = result;
  if (result)
  {
    if (qword_2A1A12EF8 != -1)
    {
      dispatch_once(&qword_2A1A12EF8, &__block_literal_global);
    }

    if (_MergedGlobals)
    {
      v4 = MTLoggingPlugin(result, v3);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *v5 = 0;
        _os_log_impl(&dword_29D381000, v4, OS_LOG_TYPE_DEFAULT, "StudyLog logger: prepared", v5, 2u);
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

MTSLGLogger *MTSLGLogger::logString(MTSLGLogger *this, const __CFString *a2)
{
  v3 = NSSelectorFromString(&cfstr_Sharedinstance.isa);
  result = NSSelectorFromString(&cfstr_Log.isa);
  if (a2)
  {
    if (_MergedGlobals)
    {
      v5 = result;
      result = MTSLGLogger::isSLGEnabled(result);
      if (result)
      {
        v6 = [_MergedGlobals performSelector:v3];

        return [v6 performSelector:v5 withObject:a2];
      }
    }
  }

  return result;
}

void MTSLGLogger::logPaths(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v5 = NSSelectorFromString(&cfstr_Sharedinstance.isa);
  v6 = NSSelectorFromString(&cfstr_Log.isa);
  if (a3)
  {
    if (a2)
    {
      if (_MergedGlobals)
      {
        v7 = v6;
        if (MTSLGLogger::isSLGEnabled(v6))
        {
          v8 = objc_autoreleasePoolPush();
          PathsDescriptor = MTSLGLogger::createPathsDescriptor(v8, a2, a3);
          if (PathsDescriptor)
          {
            v10 = PathsDescriptor;
            [objc_msgSend(_MergedGlobals performSelector:{v5), "performSelector:withObject:", v7, PathsDescriptor}];
            CFRelease(v10);
          }

          objc_autoreleasePoolPop(v8);
        }
      }
    }
  }
}

void *MTSLGLogger::createPathsDescriptor(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = 0;
  v26[22] = *MEMORY[0x29EDCA608];
  if (a3 && a2 && _MergedGlobals)
  {
    v3 = objc_opt_new();
    v6 = 0;
    do
    {
      v25[0] = @"frame_number";
      v26[0] = [MEMORY[0x29EDBA070] numberWithLong:*(a2 + v6)];
      v25[1] = @"device_timestamp";
      v7 = *(a2 + v6 + 8);
      *&v7 = v7;
      v26[1] = [MEMORY[0x29EDB9F90] numberWithFloat:v7];
      v25[2] = @"path_id";
      v26[2] = [MEMORY[0x29EDBA070] numberWithInt:*(a2 + v6 + 16)];
      v25[3] = @"path_stage";
      v26[3] = [MEMORY[0x29EDBA070] numberWithUnsignedInt:*(a2 + v6 + 20)];
      v25[4] = @"finger_id";
      v26[4] = [MEMORY[0x29EDBA070] numberWithUnsignedInt:*(a2 + v6 + 24)];
      v25[5] = @"hand_id";
      v26[5] = [MEMORY[0x29EDBA070] numberWithInt:*(a2 + v6 + 28)];
      v25[6] = @"position_x";
      LODWORD(v8) = *(a2 + v6 + 32);
      v26[6] = [MEMORY[0x29EDB9F90] numberWithFloat:v8];
      v25[7] = @"position_y";
      LODWORD(v9) = *(a2 + v6 + 36);
      v26[7] = [MEMORY[0x29EDB9F90] numberWithFloat:v9];
      v25[8] = @"velocity_x";
      LODWORD(v10) = *(a2 + v6 + 40);
      v26[8] = [MEMORY[0x29EDB9F90] numberWithFloat:v10];
      v25[9] = @"velocity_y";
      LODWORD(v11) = *(a2 + v6 + 44);
      v26[9] = [MEMORY[0x29EDB9F90] numberWithFloat:v11];
      v25[10] = @"proximity";
      LODWORD(v12) = *(a2 + v6 + 48);
      v26[10] = [MEMORY[0x29EDB9F90] numberWithFloat:v12];
      v25[11] = @"force";
      LODWORD(v13) = *(a2 + v6 + 52);
      v26[11] = [MEMORY[0x29EDB9F90] numberWithFloat:v13];
      v25[12] = @"orientation";
      LODWORD(v14) = *(a2 + v6 + 56);
      v26[12] = [MEMORY[0x29EDB9F90] numberWithFloat:v14];
      v25[13] = @"major_radius_mm";
      LODWORD(v15) = *(a2 + v6 + 60);
      v26[13] = [MEMORY[0x29EDB9F90] numberWithFloat:v15];
      v25[14] = @"minor_radius_mm";
      LODWORD(v16) = *(a2 + v6 + 64);
      v26[14] = [MEMORY[0x29EDB9F90] numberWithFloat:v16];
      v25[15] = @"position_mm_x";
      LODWORD(v17) = *(a2 + v6 + 68);
      v26[15] = [MEMORY[0x29EDB9F90] numberWithFloat:v17];
      v25[16] = @"position_mm_y";
      LODWORD(v18) = *(a2 + v6 + 72);
      v26[16] = [MEMORY[0x29EDB9F90] numberWithFloat:v18];
      v25[17] = @"velocity_mm_s_x";
      LODWORD(v19) = *(a2 + v6 + 76);
      v26[17] = [MEMORY[0x29EDB9F90] numberWithFloat:v19];
      v25[18] = @"velocity_mm_s_y";
      LODWORD(v20) = *(a2 + v6 + 80);
      v26[18] = [MEMORY[0x29EDB9F90] numberWithFloat:v20];
      v25[19] = @"path_flags";
      v26[19] = [MEMORY[0x29EDBA0F8] stringWithFormat:@"0x%x", *(a2 + v6 + 84)];
      v25[20] = @"tilt";
      LODWORD(v21) = *(a2 + v6 + 88);
      v26[20] = [MEMORY[0x29EDB9F90] numberWithFloat:v21];
      v25[21] = @"zdensity";
      LODWORD(v22) = *(a2 + v6 + 92);
      v26[21] = [MEMORY[0x29EDB9F90] numberWithFloat:v22];
      v23 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v26 forKeys:v25 count:22];
      [v3 setObject:v23 forKey:{objc_msgSend(MEMORY[0x29EDBA0F8], "stringWithFormat:", @"path%d", *(a2 + v6 + 16))}];
      v6 += 96;
    }

    while (96 * a3 != v6);
  }

  return v3;
}

void MTSLGLogger::logImages(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = NSSelectorFromString(&cfstr_Sharedinstance.isa);
  v6 = NSSelectorFromString(&cfstr_Log.isa);
  if (a3)
  {
    if (a2)
    {
      if (_MergedGlobals)
      {
        v7 = v6;
        if (MTSLGLogger::isSLGEnabled(v6))
        {
          v8 = objc_autoreleasePoolPush();
          ImageDictionary = MTSLGLogger::createImageDictionary(v8, a2, a3);
          if (ImageDictionary)
          {
            [objc_msgSend(_MergedGlobals performSelector:{v5), "performSelector:withObject:", v7, ImageDictionary}];
          }

          objc_autoreleasePoolPop(v8);
        }
      }
    }
  }
}

void *MTSLGLogger::createImageDictionary(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8[11] = *MEMORY[0x29EDCA608];
  result = [MEMORY[0x29EDB8DA0] dataWithBytesNoCopy:a2 length:2 * *(a3 + 16) * *(a3 + 18) freeWhenDone:0];
  if (result)
  {
    v5 = result;
    v7[0] = @"frame_number";
    v8[0] = [MEMORY[0x29EDBA070] numberWithLong:*a3];
    v7[1] = @"device_timestamp";
    v6 = *(a3 + 8);
    *&v6 = v6;
    v8[1] = [MEMORY[0x29EDB9F90] numberWithFloat:v6];
    v7[2] = @"width";
    v8[2] = [MEMORY[0x29EDBA070] numberWithShort:*(a3 + 16)];
    v7[3] = @"height";
    v8[3] = [MEMORY[0x29EDBA070] numberWithShort:*(a3 + 18)];
    v7[4] = @"image_region_mask";
    v8[4] = [MEMORY[0x29EDBA070] numberWithUnsignedInt:*(a3 + 20)];
    v7[5] = @"processing_step_mask";
    v8[5] = [MEMORY[0x29EDBA070] numberWithUnsignedInt:*(a3 + 24)];
    v7[6] = @"valid_pixel_ceiling";
    v8[6] = [MEMORY[0x29EDBA070] numberWithInt:*(a3 + 28)];
    v7[7] = @"valid_pixel_floor";
    v8[7] = [MEMORY[0x29EDBA070] numberWithInt:*(a3 + 32)];
    v7[8] = @"fullscale_range";
    v8[8] = [MEMORY[0x29EDBA070] numberWithUnsignedShort:*(a3 + 36)];
    v7[9] = @"row0_at_bottom";
    v8[9] = [MEMORY[0x29EDB9F90] numberWithBool:*(a3 + 38)];
    v7[10] = @"image";
    v8[10] = [v5 base64EncodedStringWithOptions:0];
    return [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v8 forKeys:v7 count:11];
  }

  return result;
}

void MTSLGLogger::registerControlInterface(unsigned int *a1, int a2, os_log_t log)
{
  v7 = *MEMORY[0x29EDCA608];
  v3 = *a1;
  v4[0] = 67109376;
  v4[1] = a2;
  v5 = 2048;
  v6 = v3;
  _os_log_error_impl(&dword_29D381000, log, OS_LOG_TYPE_ERROR, "StudyLog logger: could not register for control interface 0x%08x (deviceIterator: 0x%08jx)", v4, 0x12u);
}

void MTSLGLogger::addControlService(uint64_t a1, uint64_t a2)
{
  v2 = MTLoggingPlugin(a1, a2);
  if (OUTLINED_FUNCTION_1(v2))
  {
    OUTLINED_FUNCTION_0_0();
    _os_log_error_impl(v3, v4, v5, v6, v7, 8u);
  }
}

{
  v2 = MTLoggingPlugin(a1, a2);
  if (OUTLINED_FUNCTION_1(v2))
  {
    OUTLINED_FUNCTION_0_0();
    _os_log_error_impl(v3, v4, v5, v6, v7, 2u);
  }
}

{
  v2 = MTLoggingPlugin(a1, a2);
  if (OUTLINED_FUNCTION_1(v2))
  {
    OUTLINED_FUNCTION_0_0();
    _os_log_error_impl(v3, v4, v5, v6, v7, 2u);
  }
}

{
  v2 = MTLoggingPlugin(a1, a2);
  if (OUTLINED_FUNCTION_1(v2))
  {
    OUTLINED_FUNCTION_0_0();
    _os_log_error_impl(v3, v4, v5, v6, v7, 2u);
  }
}

void MTMouseEmbeddedEventDispatcher::handleEvent(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v49 = *MEMORY[0x29EDCA608];
  Type = IOHIDEventGetType();
  if (Type != 11)
  {
    v36 = MTLoggingPlugin(Type, v7);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v40 = "[Error] ";
      v41 = 2080;
      v42 = "MTMouseEmbeddedEventDispatcher::";
      v43 = 2080;
      v44 = "handleEvent";
      v45 = 1024;
      LODWORD(v46) = IOHIDEventGetType();
      _os_log_impl(&dword_29D381000, v36, OS_LOG_TYPE_ERROR, "[HID] [MT] %s%s%s Unexpected event type: %u Eating it.", buf, 0x26u);
    }
  }

  Children = IOHIDEventGetChildren();
  v9 = *MEMORY[0x29EDB8ED8];
  if (Children)
  {
    v10 = IOHIDEventGetChildren();
    Copy = CFArrayCreateCopy(v9, v10);
    Count = CFArrayGetCount(Copy);
  }

  else
  {
    Count = 0;
    Copy = 0;
  }

  mach_absolute_time();
  RelativePointerEvent = IOHIDEventCreateRelativePointerEvent();
  if (RelativePointerEvent)
  {
    v14 = RelativePointerEvent;
    v38 = a1;
    v37 = a3;
    if (Count >= 1)
    {
      v15 = 0;
      v16 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(Copy, v16);
        v18 = IOHIDEventGetType();
        if (v18 != 11)
        {
          break;
        }

LABEL_27:
        if (Count == ++v16)
        {
          goto LABEL_32;
        }
      }

      if (v18 == 6)
      {
        if (v15)
        {
          v20 = MTLoggingPlugin(v18, v19);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315650;
            OUTLINED_FUNCTION_0_1();
            OUTLINED_FUNCTION_1_0();
            v44 = "handleEvent";
            _os_log_impl(&dword_29D381000, v20, OS_LOG_TYPE_DEBUG, "[HID] [MT] %s%s%s Multiple scroll events. Merging.", buf, 0x20u);
          }

          IOHIDEventGetFloatValue();
          IOHIDEventGetFloatValue();
          IOHIDEventSetFloatValue();
          IOHIDEventGetFloatValue();
          IOHIDEventGetFloatValue();
          IOHIDEventSetFloatValue();
          IOHIDEventGetFloatValue();
          IOHIDEventGetFloatValue();
          IOHIDEventSetFloatValue();
          IOHIDEventGetPhase();
          IOHIDEventSetPhase();
        }

        else
        {
          v15 = IOHIDEventCreateCopy();
          IOHIDEventAppendEvent();
        }

        goto LABEL_26;
      }

      v21 = IOHIDEventGetType();
      if (v21 == 1)
      {
        IntegerValue = IOHIDEventGetIntegerValue();
        v24 = IOHIDEventGetIntegerValue();
        v26 = MTLoggingPlugin(v24, v25);
        v27 = v26;
        if (IntegerValue != 65280 || v24 != 1)
        {
          if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_26;
          }

          *buf = 136316162;
          OUTLINED_FUNCTION_0_1();
          OUTLINED_FUNCTION_1_0();
          v44 = "handleEvent";
          v45 = 2048;
          v46 = IntegerValue;
          v47 = 2048;
          v48 = v24;
          v29 = v27;
          v30 = OS_LOG_TYPE_ERROR;
          v31 = "[HID] [MT] %s%s%s Unexpected vendor-defined child event with usage page %lu and usage %lu. Eating it";
          v32 = 52;
          goto LABEL_24;
        }

        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315650;
          OUTLINED_FUNCTION_0_1();
          OUTLINED_FUNCTION_1_0();
          v44 = "handleEvent";
          v29 = v27;
          v30 = OS_LOG_TYPE_DEBUG;
          v31 = "[HID] [MT] %s%s%s Vendor-defined Momentum event. Ignoring.";
          v32 = 32;
LABEL_24:
          _os_log_impl(&dword_29D381000, v29, v30, v31, buf, v32);
        }
      }

      else
      {
        v33 = MTLoggingPlugin(v21, v22);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315906;
          OUTLINED_FUNCTION_0_1();
          OUTLINED_FUNCTION_1_0();
          v44 = "handleEvent";
          v45 = 2114;
          v46 = ValueAtIndex;
          v29 = v33;
          v30 = OS_LOG_TYPE_ERROR;
          v31 = "[HID] [MT] %s%s%s Unexpected child event: %{public}@. Eating it";
          v32 = 42;
          goto LABEL_24;
        }
      }

LABEL_26:
      IOHIDEventRemoveEvent();
      goto LABEL_27;
    }

    v15 = 0;
LABEL_32:
    IOHIDEventAppendEvent();
    if (MTMouseEmbeddedEventDispatcher::shouldDispatchPointerEvent(v38, v35, a2, v15))
    {
      MTSimpleEventDispatcher::dispatchEvent(v38, v14, v37);
    }

    CFRelease(v14);
    if (Copy)
    {
      goto LABEL_35;
    }
  }

  else
  {
    v15 = 0;
    if (Copy)
    {
LABEL_35:
      CFRelease(Copy);
    }
  }

  if (v15)
  {
    CFRelease(v15);
  }
}

uint64_t MTTelemetryAnalyticsReporter::start(uint64_t a1, CFTypeRef cf)
{
  if (*(a1 + 8))
  {
    return 0;
  }

  v2 = 3758097086;
  if (!cf)
  {
    return 3758097090;
  }

  *a1 = CFRetain(cf);
  if (MTRegisterFullFrameCallback())
  {
    v2 = 0;
    *(a1 + 8) = 1;
  }

  return v2;
}

void MTTrackpadEmbeddedEventDispatcher::handleEvent(unsigned int *a1, uint64_t a2, int a3)
{
  v279 = *MEMORY[0x29EDCA608];
  Type = IOHIDEventGetType();
  if (Type == 11)
  {
    IntegerValue = IOHIDEventGetIntegerValue();
    if (IntegerValue == 1)
    {
      goto LABEL_3;
    }

    v252 = MTLoggingPlugin(IntegerValue, v9);
    if (!os_log_type_enabled(v252, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_3;
    }

    *buf = 136315650;
    v271 = "[Error] ";
    v272 = 2080;
    v273 = "MTTrackpadEmbeddedEventDispatcher::";
    v274 = 2080;
    v275 = "handleEvent";
    v249 = "[HID] [MT] %s%s%s Unexpected digitizer event. Eating it.";
    v250 = v252;
    v251 = 32;
  }

  else
  {
    v248 = MTLoggingPlugin(Type, v7);
    if (!os_log_type_enabled(v248, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_3;
    }

    IOHIDEventGetType();
    *buf = 136315906;
    v271 = "[Error] ";
    v272 = 2080;
    v273 = "MTTrackpadEmbeddedEventDispatcher::";
    v274 = 2080;
    OUTLINED_FUNCTION_4();
    v249 = "[HID] [MT] %s%s%s Unexpected event type: %u Eating it.";
    v250 = v248;
    v251 = 38;
  }

  _os_log_impl(&dword_29D381000, v250, OS_LOG_TYPE_ERROR, v249, buf, v251);
LABEL_3:
  HIDWORD(v261) = a3;
  (*(*a1 + 112))(a1);
  Children = IOHIDEventGetChildren();
  v11 = *MEMORY[0x29EDB8ED8];
  if (Children)
  {
    v12 = IOHIDEventGetChildren();
    Copy = CFArrayCreateCopy(v11, v12);
    Count = CFArrayGetCount(Copy);
  }

  else
  {
    Count = 0;
    Copy = 0;
  }

  Mutable = CFArrayCreateMutable(v11, 0, MEMORY[0x29EDB9000]);
  mach_absolute_time();
  RelativePointerEvent = IOHIDEventCreateRelativePointerEvent();
  v18 = 0;
  v268 = RelativePointerEvent;
  if (!Mutable)
  {
    v264 = 0;
    cf = 0;
    v267 = 0;
    ButtonEvent = 0;
    goto LABEL_114;
  }

  v264 = 0;
  v265 = v11;
  cf = 0;
  v267 = 0;
  ButtonEvent = 0;
  if (!RelativePointerEvent)
  {
    goto LABEL_114;
  }

  if (Count >= 1)
  {
    HIDWORD(v263) = 0;
    ButtonEvent = 0;
    cf = 0;
    v267 = 0;
    v264 = 0;
    v262 = 0;
    v20 = 0;
    *&v17 = 136315650;
    v259 = v17;
    *&v17 = 136315906;
    v256 = v17;
    *&v17 = 136316162;
    v255 = v17;
    v21 = RelativePointerEvent;
    v269 = Count;
    while (1)
    {
      CFArrayGetValueAtIndex(Copy, v20);
      if (IOHIDEventGetType() != 11)
      {
        break;
      }

LABEL_68:
      if (Count == ++v20)
      {
        goto LABEL_107;
      }
    }

    if (IOHIDEventGetType() == 17)
    {
      if (*(a1 + 549))
      {
        goto LABEL_65;
      }

      IOHIDEventGetFloatValue();
      OUTLINED_FUNCTION_12();
      FloatValue = IOHIDEventGetFloatValue();
      if ((v263 & 0x100000000) == 0)
      {
        IOHIDEventSetFloatValue();
        IOHIDEventSetFloatValue();
        HIDWORD(v263) = 1;
        goto LABEL_65;
      }

      v166 = MTLoggingPlugin(FloatValue, v23);
      v167 = OUTLINED_FUNCTION_15(v166);
      if (v167)
      {
        OUTLINED_FUNCTION_5(v167, v168, v169, v170, v171, v172, v173, v174, v253, v254, v255, *(&v255 + 1), v256, *(&v256 + 1), v257, v258, v259);
        OUTLINED_FUNCTION_0_2();
        OUTLINED_FUNCTION_2();
        OUTLINED_FUNCTION_6();
        OUTLINED_FUNCTION_9();
        _os_log_impl(v175, v176, v177, "[HID] [MT] %s%s%s Unexpected multiple pointer events. Eating it.", v178, 0x20u);
      }

      HIDWORD(v263) = 1;
      goto LABEL_74;
    }

    if (IOHIDEventGetType() == 2)
    {
      v24 = IOHIDEventGetIntegerValue();
      a1[132] = v24;
      v25 = a1[133] | v24;
      a1[138] = v25;
      if (*(a1 + 520) == 1 && (v25 & 1) != 0)
      {
        a1[138] = v25 & 0xFFFFFFFC | 2;
      }

      if (ButtonEvent)
      {
        mach_absolute_time();
        v26 = IOHIDEventCreateRelativePointerEvent();
        if (v26)
        {
          v27 = v26;
          CFArrayAppendValue(Mutable, v26);
          CFRelease(v27);
        }

        v21 = v268;
      }

      else
      {
        IOHIDEventSetFloatValue();
        mach_absolute_time();
        IOHIDEventGetEventFlags();
        ButtonEvent = IOHIDEventCreateButtonEvent();
        if (!ButtonEvent)
        {
          goto LABEL_113;
        }

        v64 = a1[138];
        if ((v64 & (v64 - 1)) != 0)
        {
          goto LABEL_113;
        }

        v21 = v64 != 0;
        IOHIDEventSetIntegerValue();
        v65 = IOHIDEventSetIntegerValue();
        OUTLINED_FUNCTION_8(v65, v66, v67, v68, v69, v70, v71, v72, v253, v254, v255, *(&v255 + 1), v256, *(&v256 + 1), v257, v258, v259, *(&v259 + 1), v260, v261, v262, v263, v264, v265, cf, v267, v268);
        IOHIDEventAppendEvent();
      }

      a1[131] = a1[138];
      goto LABEL_65;
    }

    if (IOHIDEventGetType() == 6)
    {
      if (*(a1 + 548) != 1)
      {
        goto LABEL_65;
      }

      IOHIDEventGetFloatValue();
      v29 = v28;
      OUTLINED_FUNCTION_12();
      IOHIDEventGetFloatValue();
      v31 = v30;
      IOHIDEventGetFloatValue();
      v34 = v29 != 0.0;
      if (v31 != 0.0)
      {
        v34 = 1;
      }

      v33 = v32;
      v35 = v33 != 0.0 || v34;
      NextScrollPhase = MTTrackpadEventDispatcher::getNextScrollPhase(a1, a1[134], v35);
      a1[134] = NextScrollPhase;
      HIDPhaseFromScrollPhase = MTTrackpadEventDispatcher::getHIDPhaseFromScrollPhase(a1, NextScrollPhase);
      if (!HIDPhaseFromScrollPhase)
      {
        goto LABEL_65;
      }

      v258 = ButtonEvent;
      if (cf)
      {
        v39 = MTLoggingPlugin(HIDPhaseFromScrollPhase, v38);
        v40 = os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG);
        if (v40)
        {
          OUTLINED_FUNCTION_5(v40, v41, v42, v43, v44, v45, v46, v47, v253, v254, v255, *(&v255 + 1), v256, *(&v256 + 1), v257, ButtonEvent, v259);
          OUTLINED_FUNCTION_0_2();
          OUTLINED_FUNCTION_2();
          OUTLINED_FUNCTION_6();
          OUTLINED_FUNCTION_14();
          _os_log_impl(v48, v49, v50, "[HID] [MT] %s%s%s Multiple scroll events. Merging.", v51, 0x20u);
        }

        v52 = cf;
        IOHIDEventGetFloatValue();
        IOHIDEventSetFloatValue();
        IOHIDEventGetFloatValue();
        IOHIDEventSetFloatValue();
        IOHIDEventGetFloatValue();
        IOHIDEventSetFloatValue();
        v21 = v268;
      }

      else
      {
        v21 = mach_absolute_time();
        OUTLINED_FUNCTION_3();
        OUTLINED_FUNCTION_1_1();
        ScrollEvent = IOHIDEventCreateScrollEvent();
        if (!ScrollEvent)
        {
          cf = 0;
          v18 = v262;
          goto LABEL_114;
        }

        v52 = ScrollEvent;
        OUTLINED_FUNCTION_8(ScrollEvent, v108, v109, v110, v111, v112, v113, v114, v253, v254, v255, *(&v255 + 1), v256, *(&v256 + 1), v257, v258, v259, *(&v259 + 1), v260, v261, v262, v263, v264, v265, 0, v267, v268);
        IOHIDEventAppendEvent();
      }

      cf = v52;
      IOHIDEventSetPhase();
      goto LABEL_64;
    }

    if (IOHIDEventGetType() == 7)
    {
      IOHIDEventGetFloatValue();
      OUTLINED_FUNCTION_12();
      IOHIDEventGetFloatValue();
      IOHIDEventGetFloatValue();
      Phase = IOHIDEventGetPhase();
      if (!v267)
      {
        OUTLINED_FUNCTION_10();
        OUTLINED_FUNCTION_3();
        OUTLINED_FUNCTION_1_1();
        ScaleEvent = IOHIDEventCreateScaleEvent();
        if (!ScaleEvent)
        {
          v267 = 0;
          goto LABEL_113;
        }

        v21 = ScaleEvent;
        v56 = IOHIDEventSetPhase();
        OUTLINED_FUNCTION_8(v56, v21, v57, v58, v59, v60, v61, v62, v253, v254, v255, *(&v255 + 1), v256, *(&v256 + 1), v257, v258, v259, *(&v259 + 1), v260, v261, v262, v263, v264, v265, cf, 0, v268);
        v267 = v63;
        goto LABEL_60;
      }

      v179 = MTLoggingPlugin(Phase, v54);
      v180 = OUTLINED_FUNCTION_15(v179);
      if (v180)
      {
        OUTLINED_FUNCTION_5(v180, v181, v182, v183, v184, v185, v186, v187, v253, v254, v255, *(&v255 + 1), v256, *(&v256 + 1), v257, v258, v259);
        OUTLINED_FUNCTION_0_2();
        OUTLINED_FUNCTION_2();
        OUTLINED_FUNCTION_6();
        OUTLINED_FUNCTION_9();
        v133 = "[HID] [MT] %s%s%s Unexpected multiple scale events. Eating the latest.";
        goto LABEL_73;
      }

      goto LABEL_74;
    }

    if (IOHIDEventGetType() == 5)
    {
      IOHIDEventGetFloatValue();
      IOHIDEventGetFloatValue();
      IOHIDEventGetFloatValue();
      v73 = IOHIDEventGetPhase();
      if (!v264)
      {
        v21 = v73;
        OUTLINED_FUNCTION_10();
        OUTLINED_FUNCTION_3();
        RotationEvent = IOHIDEventCreateRotationEvent();
        if (!RotationEvent)
        {
          v264 = 0;
          goto LABEL_113;
        }

        v76 = Copy;
        v77 = ButtonEvent;
        v78 = RotationEvent;
        v79 = IOHIDEventSetPhase();
        OUTLINED_FUNCTION_8(v79, v80, v81, v82, v83, v84, v85, v86, v253, a2, v255, *(&v255 + 1), v256, *(&v256 + 1), v257, v258, v259, *(&v259 + 1), v260, v261, v262, v263, 0, v265, cf, v267, v268);
        v264 = v78;
        ButtonEvent = v77;
        Copy = v76;
        a2 = v254;
        goto LABEL_60;
      }

      v188 = MTLoggingPlugin(v73, v74);
      v189 = OUTLINED_FUNCTION_15(v188);
      if (v189)
      {
        OUTLINED_FUNCTION_5(v189, v190, v191, v192, v193, v194, v195, v196, v253, v254, v255, *(&v255 + 1), v256, *(&v256 + 1), v257, v258, v259);
        OUTLINED_FUNCTION_0_2();
        OUTLINED_FUNCTION_2();
        OUTLINED_FUNCTION_6();
        OUTLINED_FUNCTION_9();
        v133 = "[HID] [MT] %s%s%s Unexpected multiple rotate events. Eating the latest.";
        goto LABEL_73;
      }

      goto LABEL_74;
    }

    if (IOHIDEventGetType() == 4)
    {
      IOHIDEventGetFloatValue();
      IOHIDEventGetFloatValue();
      IOHIDEventGetFloatValue();
      v87 = IOHIDEventGetPhase();
      if (!v262)
      {
        OUTLINED_FUNCTION_10();
        OUTLINED_FUNCTION_3();
        OUTLINED_FUNCTION_1_1();
        TranslationEvent = IOHIDEventCreateTranslationEvent();
        if (!TranslationEvent)
        {
          v18 = 0;
          goto LABEL_114;
        }

        v90 = TranslationEvent;
        IOHIDEventSetPhase();
        v262 = v90;
        v21 = v268;
        goto LABEL_60;
      }

      v197 = MTLoggingPlugin(v87, v88);
      v198 = OUTLINED_FUNCTION_15(v197);
      if (v198)
      {
        OUTLINED_FUNCTION_5(v198, v199, v200, v201, v202, v203, v204, v205, v253, v254, v255, *(&v255 + 1), v256, *(&v256 + 1), v257, v258, v259);
        OUTLINED_FUNCTION_0_2();
        OUTLINED_FUNCTION_2();
        OUTLINED_FUNCTION_6();
        OUTLINED_FUNCTION_9();
        v133 = "[HID] [MT] %s%s%s Unexpected multiple translate events. Eating the latest.";
        goto LABEL_73;
      }

      goto LABEL_74;
    }

    if (IOHIDEventGetType() == 1)
    {
      v91 = IOHIDEventGetIntegerValue();
      v92 = IOHIDEventGetIntegerValue();
      if (v91 == 65280 && v92 == 17)
      {
        v21 = MTLoggingPlugin(v92, v93);
        v95 = os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG);
        if (v95)
        {
          OUTLINED_FUNCTION_5(v95, v96, v97, v98, v99, v100, v101, v102, v253, v254, v255, *(&v255 + 1), v256, *(&v256 + 1), v257, v258, v259);
          OUTLINED_FUNCTION_0_2();
          OUTLINED_FUNCTION_2();
          OUTLINED_FUNCTION_6();
          OUTLINED_FUNCTION_14();
          _os_log_impl(v103, v104, v105, "[HID] [MT] %s%s%s Vendor-defined Force event. Appending!", v106, 0x20u);
        }

        OUTLINED_FUNCTION_8(v95, v96, v97, v98, v99, v100, v101, v102, v253, v254, v255, *(&v255 + 1), v256, *(&v256 + 1), v257, v258, v259, *(&v259 + 1), v260, v261, v262, v263, v264, v265, cf, v267, v268);
LABEL_60:
        IOHIDEventAppendEvent();
        goto LABEL_65;
      }

      v206 = v92;
      v258 = ButtonEvent;
      v207 = MTLoggingPlugin(v92, v93);
      if (v91 != 65280 || v206 != 1)
      {
        if (!os_log_type_enabled(v207, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_103;
        }

        *buf = v255;
        OUTLINED_FUNCTION_0_2();
        OUTLINED_FUNCTION_2();
        OUTLINED_FUNCTION_7();
        v276 = v91;
        v277 = v243;
        v278 = v206;
        OUTLINED_FUNCTION_9();
        v221 = "[HID] [MT] %s%s%s Unexpected vendor-defined child event with usage page %lu and usage %lu. Eating it";
        v222 = 52;
        goto LABEL_102;
      }

      v209 = os_log_type_enabled(v207, OS_LOG_TYPE_DEBUG);
      if (v209)
      {
        OUTLINED_FUNCTION_5(v209, v210, v211, v212, v213, v214, v215, v216, v253, v254, v255, *(&v255 + 1), v256, *(&v256 + 1), v257, ButtonEvent, v259);
        OUTLINED_FUNCTION_0_2();
        OUTLINED_FUNCTION_2();
        OUTLINED_FUNCTION_6();
        OUTLINED_FUNCTION_14();
        v221 = "[HID] [MT] %s%s%s Vendor-defined Momentum event. Ignoring.";
        v222 = 32;
LABEL_102:
        _os_log_impl(v217, v218, v219, v221, v220, v222);
      }

LABEL_103:
      v21 = v268;
LABEL_64:
      ButtonEvent = v258;
      goto LABEL_65;
    }

    v118 = IOHIDEventGetType();
    if (v118 == 32)
    {
      v120 = MTLoggingPlugin(v118, v119);
      v121 = os_log_type_enabled(v120, OS_LOG_TYPE_DEBUG);
      if (v121)
      {
        OUTLINED_FUNCTION_5(v121, v122, v123, v124, v125, v126, v127, v128, v253, v254, v255, *(&v255 + 1), v256, *(&v256 + 1), v257, v258, v259);
        OUTLINED_FUNCTION_0_2();
        OUTLINED_FUNCTION_2();
        OUTLINED_FUNCTION_6();
        OUTLINED_FUNCTION_14();
        v133 = "[HID] [MT] %s%s%s Force event. Ignoring.";
LABEL_73:
        _os_log_impl(v129, v130, v131, v133, v132, 0x20u);
      }

LABEL_74:
      v21 = v268;
LABEL_65:
      if (IOHIDEventGetChildren())
      {
        v115 = IOHIDEventGetChildren();
        v116 = CFArrayGetCount(v115);
        if (v116 >= 1)
        {
          v153 = MTLoggingPlugin(v116, v117);
          if (os_log_type_enabled(v153, OS_LOG_TYPE_ERROR))
          {
            v154 = IOHIDEventGetType();
            OUTLINED_FUNCTION_11(v154, v155, v156, v157, v158, v159, v160, v161, v253, v254, v255, *(&v255 + 1), v256);
            OUTLINED_FUNCTION_0_2();
            OUTLINED_FUNCTION_2();
            OUTLINED_FUNCTION_4();
            OUTLINED_FUNCTION_13();
            _os_log_impl(v162, v163, v164, "[HID] [MT] %s%s%s Unexpected grandchild events inside event type: %u. Eating them", v165, 0x26u);
          }
        }
      }

      IOHIDEventRemoveEvent();
      Count = v269;
      goto LABEL_68;
    }

    v134 = IOHIDEventGetType();
    if (v134 == 3)
    {
      v258 = ButtonEvent;
      v223 = MTLoggingPlugin(v134, v135);
      if (!os_log_type_enabled(v223, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_103;
      }

      OUTLINED_FUNCTION_12();
      v224 = IOHIDEventGetIntegerValue();
      OUTLINED_FUNCTION_11(v224, v225, v226, v227, v228, v229, v230, v231, v253, v254, v255, *(&v255 + 1), v256);
      OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_2();
      OUTLINED_FUNCTION_7();
      v276 = v232;
      OUTLINED_FUNCTION_13();
      v221 = "[HID] [MT] %s%s%s Unexpected keyboard child event with usage %lu. Eating it";
    }

    else
    {
      v136 = IOHIDEventGetType();
      v137 = v136;
      v139 = MTLoggingPlugin(v136, v138);
      v140 = os_log_type_enabled(v139, OS_LOG_TYPE_ERROR);
      if (v137 != 24)
      {
        v21 = v268;
        if (v140)
        {
          v141 = IOHIDEventGetType();
          OUTLINED_FUNCTION_11(v141, v142, v143, v144, v145, v146, v147, v148, v253, v254, v255, *(&v255 + 1), v256);
          OUTLINED_FUNCTION_0_2();
          OUTLINED_FUNCTION_2();
          OUTLINED_FUNCTION_4();
          OUTLINED_FUNCTION_13();
          _os_log_impl(v149, v150, v151, "[HID] [MT] %s%s%s Unexpected child event type: %u. Eating it", v152, 0x26u);
        }

        goto LABEL_65;
      }

      v258 = ButtonEvent;
      if (!v140)
      {
        goto LABEL_103;
      }

      v233 = IOHIDEventGetIntegerValue();
      OUTLINED_FUNCTION_11(v233, v234, v235, v236, v237, v238, v239, v240, v253, v254, v255, *(&v255 + 1), v256);
      OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_2();
      OUTLINED_FUNCTION_7();
      v276 = v241;
      OUTLINED_FUNCTION_13();
      v221 = "[HID] [MT] %s%s%s Unexpected hotkey child event with value %lu. Eating it";
    }

    v222 = 42;
    goto LABEL_102;
  }

  v262 = 0;
  v264 = 0;
  cf = 0;
  v267 = 0;
  ButtonEvent = 0;
  v21 = RelativePointerEvent;
LABEL_107:
  IOHIDEventAppendEvent();
  v18 = v262;
  if (MTTrackpadEmbeddedEventDispatcher::shouldDispatchPointerEvent(a1, v21, a2, ButtonEvent, cf, v267, v264, v262))
  {
    (*(*a1 + 40))(a1, v21, HIDWORD(v261));
    v244 = CFArrayGetCount(Mutable);
    if (v244 >= 1)
    {
      v245 = v244;
      for (i = 0; i != v245; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(Mutable, i);
        if (ValueAtIndex)
        {
          (*(*a1 + 40))(a1, ValueAtIndex, HIDWORD(v261));
        }
      }
    }

LABEL_113:
    v18 = v262;
  }

LABEL_114:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v268)
  {
    CFRelease(v268);
  }

  if (Copy)
  {
    CFRelease(Copy);
  }

  if (ButtonEvent)
  {
    CFRelease(ButtonEvent);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v267)
  {
    CFRelease(v267);
  }

  if (v264)
  {
    CFRelease(v264);
  }

  if (v18)
  {
    CFRelease(v18);
  }
}

void MTTrackpadEmbeddedEventDispatcher::dispatchEvent(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x29EDCA608];
  v2 = MTLoggingPlugin(a1, a2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = 136315906;
    v4 = "[Error] ";
    v5 = 2080;
    v6 = "MTTrackpadEmbeddedEventDispatcher::";
    v7 = 2080;
    v8 = "dispatchEvent";
    v9 = 1024;
    Type = IOHIDEventGetType();
    _os_log_impl(&dword_29D381000, v2, OS_LOG_TYPE_ERROR, "[HID] [MT] %s%s%s Unexpected standalone event type: %u. Eating it", &v3, 0x26u);
  }
}

uint64_t MTSimpleEmbeddedHIDManager::start(MTSimpleEmbeddedHIDManager *this)
{
  v2 = MTSimpleHIDManager::start(this);
  if (v2)
  {
    v3 = *(this + 27);
    if (v3)
    {
      v4 = *(this + 22);
      v5 = (*(*this + 80))(this);
      MTInterferenceMonitor::start(v3, v4, v5);
    }

    v6 = *(this + 28);
    if (v6)
    {
      v7 = (*(*this + 80))(this);
      MTTelemetryAnalyticsReporter::start(v6, v7);
    }
  }

  return v2;
}

objc_class *MTABCLogger::_init(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = a2;
  if (!a2)
  {
    return 0;
  }

  result = dlopen([@"/System/Library/PrivateFrameworks/SymptomDiagnosticReporter.framework/SymptomDiagnosticReporter" UTF8String], 1);
  *(a1 + 40) = result;
  if (result)
  {
    result = NSClassFromString(&cfstr_Sdrdiagnosticr.isa);
    **(a1 + 24) = result;
    if (result)
    {
      v4 = objc_alloc_init(result);
      *(*(a1 + 24) + 8) = v4;
      return (v4 != 0);
    }
  }

  return result;
}

uint64_t MTABCLogger::_prepopulateSessionEvent(uint64_t a1, uint64_t a2)
{
  v75 = *MEMORY[0x29EDCA608];
  v61 = 0;
  HIBYTE(v60) = 0;
  LODWORD(v60) = 0;
  v58 = 0;
  v59 = 0;
  properties = 0;
  cf = 0;
  MTDeviceGetDeviceID();
  MTDeviceGetSubdeviceID();
  MTDeviceGetFamilyID();
  MTDeviceGetSensorDimensions();
  MTDeviceGetSensorSurfaceDimensions();
  ParserType = MTDeviceGetParserType();
  MTDeviceCopyDeviceUsagePairs();
  Service = MTDeviceGetService();
  IORegistryEntryCreateCFProperties(Service, &properties, *MEMORY[0x29EDB8ED8], 0);
  v5 = objc_alloc_init(MEMORY[0x29EDB8E00]);
  if (!v5)
  {
    goto LABEL_30;
  }

  [v5 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKeyedSubscript:{"numberWithUnsignedLongLong:", v61), @"DeviceID"}];
  [v5 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKeyedSubscript:{"numberWithUnsignedChar:", HIBYTE(v60)), @"SubdeviceID"}];
  [v5 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKeyedSubscript:{"numberWithUnsignedInt:", v60), @"FamilyID"}];
  [v5 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKeyedSubscript:{"numberWithUnsignedInt:", HIDWORD(v59)), @"Rows"}];
  [v5 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKeyedSubscript:{"numberWithUnsignedInt:", v59), @"Cols"}];
  [v5 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKeyedSubscript:{"numberWithUnsignedInt:", HIDWORD(v58)), @"SensorSurfaceWidth"}];
  [v5 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKeyedSubscript:{"numberWithUnsignedInt:", v58), @"SensorSurfaceHeight"}];
  [v5 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKeyedSubscript:{"numberWithUnsignedInt:", ParserType), @"ParserType"}];
  [v5 setObject:cf forKeyedSubscript:@"UsagePairs"];
  v6 = objc_alloc_init(MEMORY[0x29EDB8E00]);
  if (!v6)
  {
    goto LABEL_35;
  }

  v14 = v6;
  v15 = properties;
  v16 = OUTLINED_FUNCTION_1_2(v6, v7, v8, v9, v10, v11, v12, v13, v47, v49, v5, a2, v53, v55, properties, cf, v58, v59, v60, v61, 0, 0, 0, 0, 0, 0, 0, 0, *v70, *&v70[8], *&v70[16], v71, v72, v73, v74);
  if (!v16)
  {
    goto LABEL_27;
  }

  v18 = v16;
  v19 = *v64;
  *&v17 = 136316162;
  v54 = v17;
  do
  {
    v20 = 0;
    do
    {
      if (*v64 != v19)
      {
        objc_enumerationMutation(v15);
      }

      v21 = *(v63 + 8 * v20);
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if ((isKindOfClass & 1) == 0)
      {
        v27 = MTLoggingPlugin(isKindOfClass, v23);
        v28 = os_log_type_enabled(v27, OS_LOG_TYPE_ERROR);
        if (!v28)
        {
          goto LABEL_22;
        }

        objc_opt_class();
        *v70 = v54;
        *&v70[4] = "[Error] ";
        *&v70[12] = 2080;
        *&v70[14] = "";
        *&v70[22] = 2080;
        OUTLINED_FUNCTION_0_3();
        v37 = v27;
        v38 = "[HID] [MT] %s%s%s %{public}@ key has an unexpected type (class %{public}@)";
        goto LABEL_13;
      }

      v24 = [(__CFDictionary *)v15 objectForKeyedSubscript:v21];
      if ([MEMORY[0x29EDB9FF0] isValidJSONObject:v24])
      {
        v25 = v14;
        v26 = v24;
LABEL_21:
        v28 = [v25 setObject:v26 forKey:v21];
        goto LABEL_22;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v39 = [MEMORY[0x29EDBA0F8] stringWithString:v24];
LABEL_20:
        v26 = v39;
        v25 = v14;
        goto LABEL_21;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v39 = [MEMORY[0x29EDBA070] numberWithLongLong:{objc_msgSend(v24, "longLongValue")}];
        goto LABEL_20;
      }

      objc_opt_class();
      v40 = objc_opt_isKindOfClass();
      if (v40)
      {
        v39 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@%@", @"NSDAT@", objc_msgSend(v24, "base64EncodedStringWithOptions:", 0)];
        goto LABEL_20;
      }

      v42 = MTLoggingPlugin(v40, v41);
      v28 = os_log_type_enabled(v42, OS_LOG_TYPE_ERROR);
      if (v28)
      {
        objc_opt_class();
        *v70 = v54;
        *&v70[4] = "[Error] ";
        *&v70[12] = 2080;
        *&v70[14] = "";
        *&v70[22] = 2080;
        OUTLINED_FUNCTION_0_3();
        v37 = v42;
        v38 = "[HID] [MT] %s%s%s %{public}@ is not serializable (class %{public}@)";
LABEL_13:
        _os_log_impl(&dword_29D381000, v37, OS_LOG_TYPE_ERROR, v38, v36, 0x34u);
      }

LABEL_22:
      ++v20;
    }

    while (v18 != v20);
    v43 = OUTLINED_FUNCTION_1_2(v28, v29, v30, v31, v32, v33, v34, v35, v48, v50, v51, v52, v54, *(&v54 + 1), properties, cf, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, *v70, *&v70[8], *&v70[16], v71, v72, v73, v74);
    v18 = v43;
  }

  while (v43);
LABEL_27:
  v5 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
  if (!v5)
  {
    goto LABEL_30;
  }

  v44 = objc_alloc_init(MEMORY[0x29EDB8E00]);
  if (v44)
  {
    v45 = v44;
    [v44 setObject:v51 forKeyedSubscript:@"DeviceInfo"];
    [v45 setObject:v14 forKeyedSubscript:@"RegistryProperties"];
    [v45 setObject:v5 forKeyedSubscript:@"Frames"];
    [*(v52 + 24) addObject:v45];
    v5 = 1;
    goto LABEL_30;
  }

LABEL_35:
  v5 = 0;
LABEL_30:
  if (cf)
  {
    CFRelease(cf);
  }

  if (properties)
  {
    CFRelease(properties);
  }

  return v5;
}

uint64_t MTABCLogger::startSession(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4)
{
  if (!MTABCLogger::_prepopulateSessionEvent(a1, a2) || !*(a1 + 16) && !MTRegisterFullFrameCallback())
  {
    return 1;
  }

  std::__tree<MTABCSessionHandler *>::__emplace_unique_key_args<MTABCSessionHandler *,MTABCSessionHandler * const&>(a1, a3, a3);
  result = 0;
  *a4 = *a3;
  return result;
}

void MTForceManagement::actuateForceAndHIDEvents(MTActuatorManagement *a1, uint64_t a2, NSObject *a3)
{
  v14 = *MEMORY[0x29EDCA608];
  ActuatorRef = MTActuatorManagement::getActuatorRef(a1);
  v6 = *(a2 + 594);
  v7 = *(a2 + 595);
  v8 = 134218496;
  v9 = ActuatorRef;
  v10 = 1024;
  v11 = v6;
  v12 = 1024;
  v13 = v7;
  _os_log_debug_impl(&dword_29D381000, a3, OS_LOG_TYPE_DEBUG, "[HID] Skipping actuation : %p %u %u", &v8, 0x18u);
}

uint64_t MTInterferenceMonitor::_stop(MTInterferenceMonitor *this)
{
  if (*(this + 16) != 1)
  {
    return 3758096385;
  }

  notify_cancel(*(this + 8));
  v2 = *(this + 3);
  if (v2)
  {
    dispatch_release(v2);
    *(this + 3) = 0;
  }

  OUTLINED_FUNCTION_0_4();
  (*(v3 + 72))(this);
  v4 = *(this + 1);
  if (v4)
  {
    CFRelease(v4);
    *(this + 1) = 0;
  }

  result = 0;
  *(this + 16) = 0;
  return result;
}

uint64_t MTInterferenceMonitor::start(uint64_t a1, NSObject *a2, CFTypeRef cf)
{
  v22 = *MEMORY[0x29EDCA608];
  result = 3758097090;
  if (a2 && cf)
  {
    if (*(a1 + 16))
    {
      return 3758097106;
    }

    else
    {
      *(a1 + 8) = CFRetain(cf);
      *(a1 + 17) = MTDeviceSupportsWirelessChargingNotification();
      *(a1 + 18) = MTDeviceSupportsUSBChargingNotification();
      v17 = 0;
      DeviceID = MTDeviceGetDeviceID();
      v8 = MTLoggingPlugin(DeviceID, v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = *(a1 + 18);
        *buf = 67109376;
        v19 = v9;
        v20 = 2048;
        v21 = v17;
        _os_log_impl(&dword_29D381000, v8, OS_LOG_TYPE_INFO, "device support usb charging notification = %d (deviceID 0x%llX)", buf, 0x12u);
      }

      *(a1 + 24) = a2;
      dispatch_retain(a2);
      OUTLINED_FUNCTION_0_4();
      result = (*(v10 + 64))(a1);
      if (!result)
      {
        if (*(a1 + 17) == 1)
        {
          v11 = *(a1 + 24);
          if (*(a1 + 18))
          {
            v16[0] = MEMORY[0x29EDCA5F8];
            v16[1] = 0x40000000;
            v16[2] = ___ZN21MTInterferenceMonitor5startEP16dispatch_queue_sP10__MTDevice_block_invoke;
            v16[3] = &__block_descriptor_tmp_4;
            v16[4] = a1;
            v12 = (a1 + 32);
            v13 = v16;
          }

          else
          {
            handler[0] = MEMORY[0x29EDCA5F8];
            handler[1] = 0x40000000;
            handler[2] = ___ZN21MTInterferenceMonitor5startEP16dispatch_queue_sP10__MTDevice_block_invoke_2;
            handler[3] = &__block_descriptor_tmp_2;
            handler[4] = a1;
            v12 = (a1 + 32);
            v13 = handler;
          }

          goto LABEL_13;
        }

        if (*(a1 + 18))
        {
          v11 = *(a1 + 24);
          v14[0] = MEMORY[0x29EDCA5F8];
          v14[1] = 0x40000000;
          v14[2] = ___ZN21MTInterferenceMonitor5startEP16dispatch_queue_sP10__MTDevice_block_invoke_3;
          v14[3] = &__block_descriptor_tmp_3;
          v14[4] = a1;
          v12 = (a1 + 32);
          v13 = v14;
LABEL_13:
          notify_register_dispatch("com.apple.system.powersources", v12, v11, v13);
          result = 0;
          *(a1 + 16) = 1;
          return result;
        }

        return 0;
      }
    }
  }

  return result;
}

uint64_t ___ZN21MTInterferenceMonitor5startEP16dispatch_queue_sP10__MTDevice_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_0_4();
  v3 = (*(v2 + 16))(v1);
  if (*(v1 + 92) != v3)
  {
    *(v1 + 92) = v3;
    OUTLINED_FUNCTION_0_4();
    (*(v4 + 32))(v1);
  }

  OUTLINED_FUNCTION_0_4();
  result = (*(v5 + 24))(v1);
  if (*(v1 + 94) != result)
  {
    *(v1 + 94) = result;
    OUTLINED_FUNCTION_0_4();
    v8 = *(v7 + 48);

    return v8(v1);
  }

  return result;
}

uint64_t ___ZN21MTInterferenceMonitor5startEP16dispatch_queue_sP10__MTDevice_block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_0_4();
  result = (*(v2 + 16))(v1);
  if (*(v1 + 92) != result)
  {
    *(v1 + 92) = result;
    OUTLINED_FUNCTION_0_4();
    v5 = *(v4 + 32);

    return v5(v1);
  }

  return result;
}

uint64_t ___ZN21MTInterferenceMonitor5startEP16dispatch_queue_sP10__MTDevice_block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_0_4();
  result = (*(v2 + 24))(v1);
  if (*(v1 + 94) != result)
  {
    *(v1 + 94) = result;
    OUTLINED_FUNCTION_0_4();
    v5 = *(v4 + 48);

    return v5(v1);
  }

  return result;
}

uint64_t MTInterferenceMonitor::restoreStateToDevice(MTInterferenceMonitor *this)
{
  result = 3758097112;
  if (*(this + 16) == 1)
  {
    if (*(this + 17) != 1 || (OUTLINED_FUNCTION_0_4(), result = (*(v3 + 32))(this), !result) && (OUTLINED_FUNCTION_0_4(), result = (*(v4 + 40))(this), !result))
    {
      if (*(this + 18) == 1)
      {
        OUTLINED_FUNCTION_0_4();
        v6 = *(v5 + 48);

        return v6(this);
      }
    }
  }

  return result;
}

uint64_t MTInterferenceMonitor::hasEnteredWirelessField(MTInterferenceMonitor *this)
{
  context = 0;
  v2 = *(this + 22);
  if (!v2 || !IOIteratorIsValid(v2))
  {
    OUTLINED_FUNCTION_0_4();
    (*(v3 + 64))(this);
  }

  if (IOIteratorIsValid(*(this + 22)) && (MEMORY[0x29ED53DC0](*(this + 22)), (v4 = IOIteratorNext(*(this + 22))) != 0))
  {
    v5 = v4;
    do
    {
      v6 = OUTLINED_FUNCTION_2_0();
      if (v6)
      {
        v7 = v6;
        v18.length = CFArrayGetCount(v6);
        OUTLINED_FUNCTION_1_3(v18.length, v18, v8, v9, v10, v11, v12, v15, *v16, *&v16[4], v16[6], context);
        CFRelease(v7);
      }

      IOObjectRelease(v5);
      v5 = IOIteratorNext(*(this + 22));
    }

    while (v5);
    v13 = context;
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

uint64_t MTInterferenceMonitor::isWirelessChargingAvailable(uint64_t this, BOOL *a2, void *a3)
{
  if (this)
  {
    if (a2)
    {
      v4 = this;
      v5 = CFGetTypeID(this);
      this = CFDictionaryGetTypeID();
      if (v5 == this)
      {
        value = 0xAAAAAAAAAAAAAAAALL;
        this = CFDictionaryGetValueIfPresent(v4, @"IsWireless", &value);
        if (this)
        {
          v6 = CFGetTypeID(value);
          this = CFBooleanGetTypeID();
          if (v6 == this)
          {
            this = CFBooleanGetValue(value);
            *a2 = (*a2 | this) != 0;
          }
        }
      }
    }
  }

  return this;
}

uint64_t MTInterferenceMonitor::hasConnectedtoUSB(MTInterferenceMonitor *this)
{
  context = 0;
  v2 = *(this + 22);
  if (!v2 || !IOIteratorIsValid(v2))
  {
    OUTLINED_FUNCTION_0_4();
    (*(v3 + 64))(this);
  }

  if (IOIteratorIsValid(*(this + 22)) && (MEMORY[0x29ED53DC0](*(this + 22)), (v4 = IOIteratorNext(*(this + 22))) != 0))
  {
    v5 = v4;
    do
    {
      v6 = OUTLINED_FUNCTION_2_0();
      if (v6)
      {
        v7 = v6;
        v18.length = CFArrayGetCount(v6);
        OUTLINED_FUNCTION_1_3(v18.length, v18, v8, v9, v10, v11, v12, v15, *v16, *&v16[4], v16[6], context);
        CFRelease(v7);
      }

      IOObjectRelease(v5);
      v5 = IOIteratorNext(*(this + 22));
    }

    while (v5);
    v13 = context;
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

uint64_t MTInterferenceMonitor::isUSBChargingAvailable(uint64_t this, _BYTE *a2, void *a3)
{
  if (this)
  {
    if (a2)
    {
      v4 = this;
      v5 = CFGetTypeID(this);
      this = CFDictionaryGetTypeID();
      if (v5 == this)
      {
        value = 0xAAAAAAAAAAAAAAAALL;
        valuePtr = -1431655766;
        this = CFDictionaryGetValueIfPresent(v4, @"FamilyCode", &value);
        if (this)
        {
          v6 = CFGetTypeID(value);
          this = CFNumberGetTypeID();
          if (v6 == this)
          {
            this = CFNumberGetValue(value, kCFNumberIntType, &valuePtr);
            if (this)
            {
              if ((valuePtr + 536854528) <= 0xA && ((1 << valuePtr) & 0x609) != 0)
              {
                *a2 = 1;
              }
            }
          }
        }
      }
    }
  }

  return this;
}

CFRange CFStringFind(CFStringRef theString, CFStringRef stringToFind, CFStringCompareFlags compareOptions)
{
  v3 = MEMORY[0x2A1C594D8](theString, stringToFind, compareOptions);
  result.length = v4;
  result.location = v3;
  return result;
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

__float2 __sincosf_stret(float a1)
{
  MEMORY[0x2A1C76658](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}