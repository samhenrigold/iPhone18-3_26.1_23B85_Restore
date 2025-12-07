uint64_t ShortTermLinearInterpolationResampler::PushConvertFloat(ShortTermLinearInterpolationResampler *this, float *__src, float *a3, float *__dst, float *a5, unsigned int *a6, unsigned int *a7, uint64_t __n, __n128 a9, unsigned int a10)
{
  result = 4294967246;
  if (!__src)
  {
    return result;
  }

  if (!__dst)
  {
    return result;
  }

  v13 = __n;
  if (a3)
  {
    if (!a5)
    {
      return result;
    }
  }

  if (*this == 1)
  {
    v19 = *a7;
    *a6 = *a7;
  }

  else
  {
    ShortTermLinearInterpolationResampler::PreFlight(this, a6, a7, a9, __dst, a5, a6, a7, __n, v34);
    v19 = *a7;
    if (*a7 != *a6)
    {
      v23 = ((*a6 - 1) * 4294967300.0 / (v19 - 1));
      if (a3)
      {
        if (v19)
        {
          v24 = 0;
          v25 = 0;
          do
          {
            v26 = vcvts_n_f32_u64(v24, 0x20uLL);
            v27 = HIDWORD(v24) * v13 + v13;
            __dst[v25] = __src[HIDWORD(v24) * v13] + (v26 * (__src[v27] - __src[HIDWORD(v24) * v13]));
            a5[v25] = a3[HIDWORD(v24) * v13] + (v26 * (a3[v27] - a3[HIDWORD(v24) * v13]));
            v24 += v23;
            v25 += a10;
            --v19;
          }

          while (v19);
        }
      }

      else if (v19)
      {
        v30 = 0;
        v31 = 0;
        do
        {
          v32 = __src[HIDWORD(v31) * v13];
          __dst[v30] = v32 + (vcvts_n_f32_u64(v31, 0x20uLL) * (__src[HIDWORD(v31) * v13 + v13] - v32));
          v31 += v23;
          v30 += a10;
          --v19;
        }

        while (v19);
      }

      goto LABEL_29;
    }
  }

  if (v13 == 1 && a10 == 1)
  {
    v20 = 4 * v19;
    memcpy(__dst, __src, v20);
    if (a3)
    {
      memcpy(a5, a3, v20);
    }
  }

  else if (a3)
  {
    if (v19)
    {
      v21 = 0;
      v22 = 0;
      do
      {
        __dst[v22] = __src[v21];
        a5[v22] = a3[v21];
        v21 += v13;
        v22 += a10;
        --v19;
      }

      while (v19);
    }
  }

  else if (v19)
  {
    v28 = 0;
    v29 = 0;
    do
    {
      __dst[v29] = __src[v28];
      v28 += v13;
      v29 += a10;
      --v19;
    }

    while (v19);
  }

LABEL_29:
  if (*this)
  {
    v33 = 0;
  }

  else
  {
    v33 = *(this + 2) + *(this + 3) * *a7 + (-*a6 << 32);
  }

  result = 0;
  *(this + 2) = v33;
  return result;
}

void AMCP::Core::System_Core_Keeper::~System_Core_Keeper(AMCP::Core::System_Core_Keeper *this)
{
  *this = &unk_1F59748E8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F59748E8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void AMCP::IO_Core::Device_Timebase_Factory::demand_timebase_for_device(void *a1, void *a2, uint64_t *a3, void *a4)
{
  if (std::__hash_table<std::__hash_value_type<std::string,std::vector<unsigned int>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<unsigned int>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<unsigned int>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<unsigned int>>>>::find<std::string>(a2, a4))
  {
    v8 = std::__hash_table<std::__hash_value_type<std::string,std::vector<unsigned int>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<unsigned int>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<unsigned int>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<unsigned int>>>>::find<std::string>(a2, a4);
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(a2 + 5, a4, a4);
    v9 = v8[5];
    os_unfair_lock_lock((v9 + 64));
    v10 = *a3;
    if (!*a3)
    {
      goto LABEL_27;
    }

    v11 = *(v9 + 40);
    if (v11)
    {
      v12 = std::__shared_weak_count::lock(v11);
      if (v12)
      {
        v13 = *(v9 + 32);
        v10 = *a3;
        if (v13)
        {
          if (v13 != v10)
          {
            v14 = *(v9 + 56);
            *(v9 + 48) = 0;
            *(v9 + 56) = 0;
            if (v14)
            {
              std::__shared_weak_count::__release_weak(v14);
            }

            if (*(v9 + 88))
            {
              v16 = *a3;
              v15 = a3[1];
              if (v15)
              {
                atomic_fetch_add_explicit((v15 + 16), 1uLL, memory_order_relaxed);
              }

              v17 = *(v9 + 56);
              *(v9 + 48) = v16;
              *(v9 + 56) = v15;
              if (!v17)
              {
                goto LABEL_26;
              }
            }

            else
            {
              if (*(v9 + 104) == 1)
              {
                *(v9 + 104) = 0;
              }

              v22 = *a3;
              v21 = a3[1];
              if (v21)
              {
                atomic_fetch_add_explicit((v21 + 16), 1uLL, memory_order_relaxed);
              }

              v17 = *(v9 + 40);
              *(v9 + 32) = v22;
              *(v9 + 40) = v21;
              if (!v17)
              {
                goto LABEL_26;
              }
            }

            std::__shared_weak_count::__release_weak(v17);
          }

LABEL_26:
          std::__shared_weak_count::__release_shared[abi:ne200100](v12);
LABEL_27:
          os_unfair_lock_unlock((v9 + 64));
          v20 = v8[6];
          *a1 = v8[5];
          a1[1] = v20;
          if (v20)
          {
            atomic_fetch_add_explicit((v20 + 8), 1uLL, memory_order_relaxed);
          }

          return;
        }
      }

      else
      {
        v10 = *a3;
      }
    }

    else
    {
      v12 = 0;
    }

    v18 = a3[1];
    if (v18)
    {
      atomic_fetch_add_explicit((v18 + 16), 1uLL, memory_order_relaxed);
    }

    v19 = *(v9 + 40);
    *(v9 + 32) = v10;
    *(v9 + 40) = v18;
    if (v19)
    {
      std::__shared_weak_count::__release_weak(v19);
    }

    if (*(v9 + 104) == 1)
    {
      *(v9 + 104) = 0;
    }

    if (!v12)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  if (*a3)
  {
    operator new();
  }

  *a1 = 0;
  a1[1] = 0;
}

void sub_1DE4DA350(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int128 a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  if (*(&a11 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&a11 + 1));
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::pair<std::string,std::shared_ptr<AMCP::Graph::Timebase>>::~pair(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Timebase>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Timebase>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::shared_ptr<AMCP::Graph::Node>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

AMCP::IO_Core::Device_Timebase **std::unique_ptr<AMCP::IO_Core::Device_Timebase>::~unique_ptr[abi:ne200100](AMCP::IO_Core::Device_Timebase **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    AMCP::IO_Core::Device_Timebase::~Device_Timebase(v2);
    MEMORY[0x1E12C1730]();
  }

  return a1;
}

uint64_t std::__shared_ptr_pointer<AMCP::IO_Core::Device_Timebase *,std::shared_ptr<AMCP::Graph::Timebase>::__shared_ptr_default_delete<AMCP::Graph::Timebase,AMCP::IO_Core::Device_Timebase>,std::allocator<AMCP::IO_Core::Device_Timebase>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "NSt3__110shared_ptrIN4AMCP5Graph8TimebaseEE27__shared_ptr_default_deleteIS3_NS1_7IO_Core15Device_TimebaseEEE"))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

AMCP::IO_Core::Device_Timebase *std::__shared_ptr_pointer<AMCP::IO_Core::Device_Timebase *,std::shared_ptr<AMCP::Graph::Timebase>::__shared_ptr_default_delete<AMCP::Graph::Timebase,AMCP::IO_Core::Device_Timebase>,std::allocator<AMCP::IO_Core::Device_Timebase>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    AMCP::IO_Core::Device_Timebase::~Device_Timebase(result);

    JUMPOUT(0x1E12C1730);
  }

  return result;
}

void std::__shared_ptr_pointer<AMCP::IO_Core::Device_Timebase *,std::shared_ptr<AMCP::Graph::Timebase>::__shared_ptr_default_delete<AMCP::Graph::Timebase,AMCP::IO_Core::Device_Timebase>,std::allocator<AMCP::IO_Core::Device_Timebase>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__deallocate_node(*(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

void AMCP::IOAudio1::Stream::~Stream(AMCP::IOAudio1::Stream *this)
{
  AMCP::IOAudio1::Stream::~Stream(this);

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F5974958;
  AMCP::Core::Broker::destroy_core(*(*(*(*(this + 1) + 16) + 32) + 16), *(this + 4));
  *(this + 4) = 0;

  AMCP::IOAudio1::Device_Sub_Object::~Device_Sub_Object(this);
}

double AMCP::IOAudio1::make_sample_rate_from_dictionary(AMCP::IOAudio1 *this, const applesauce::CF::DictionaryRef *a2, const __CFString *a3)
{
  if (!this)
  {
    result = 0.0;
    if (!a2)
    {
      return result;
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
LABEL_26:
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  CFRetain(this);
  if (a2)
  {
    applesauce::CF::details::find_at_key_or_optional<applesauce::CF::DictionaryRef,__CFString const*&>(&cf, this, a2);
    if (v16 == 1)
    {
      v5 = cf;
      if (cf)
      {
        CFRetain(cf);
        CFRelease(v5);
      }
    }

    else
    {
      v5 = 0;
    }

    CFRelease(this);
    if (!v5)
    {
      return 0.0;
    }
  }

  else
  {
    v5 = this;
  }

  LODWORD(cf) = 0;
  v14 = CFNumberCreate(0, kCFNumberIntType, &cf);
  if (!v14)
  {
    v12 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v12, "Could not construct");
    __cxa_throw(v12, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  applesauce::CF::at_or<applesauce::CF::NumberRef,__CFString const*>(&cf, v5, @"IOAudioSampleRateWholeNumber", &v14);
  v8 = cf;
  if (!cf)
  {
    goto LABEL_25;
  }

  v9 = applesauce::CF::convert_to<unsigned int,0>(cf);
  CFRelease(v8);
  if (v14)
  {
    CFRelease(v14);
  }

  LODWORD(cf) = 0;
  v14 = CFNumberCreate(0, kCFNumberIntType, &cf);
  if (!v14)
  {
    v13 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v13, "Could not construct");
    __cxa_throw(v13, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  applesauce::CF::at_or<applesauce::CF::NumberRef,__CFString const*>(&cf, v5, @"IOAudioSampleRateFraction", &v14);
  v10 = cf;
  if (!cf)
  {
LABEL_25:
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    goto LABEL_26;
  }

  v11 = applesauce::CF::convert_to<unsigned int,0>(cf);
  CFRelease(v10);
  if (v14)
  {
    CFRelease(v14);
  }

  CFRelease(v5);
  return v11 / 4294967300.0 + v9;
}

void AMCP::IOAudio1::get_stream_format(AMCP::IOAudio1 *this, AMCP::IOAudio1 **a2, CFDictionaryRef theDict)
{
  v33 = *MEMORY[0x1E69E9840];
  if (!theDict)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
    goto LABEL_17;
  }

  v5 = applesauce::CF::details::at_key<__CFString const*>(theDict, @"IOAudioStreamFormat");
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::not_found(exception);
LABEL_17:
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v6 = applesauce::CF::DictionaryRef::from_get(&v23, v5);
  if (!v23)
  {
    v9 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v9 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v6);
    }

    v11 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v10 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      v12 = *v11;
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }

    else
    {
      v12 = *v11;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v25 = "IOAudio1_Stream.cpp";
      v26 = 1024;
      v27 = 275;
      v28 = 2080;
      v29 = "(raw_current_format.is_valid()) == false";
      _os_log_error_impl(&dword_1DE1F9000, v12, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s failed to find the current format for a stream", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v22);
    __cxa_allocate_exception(0x40uLL);
    std::runtime_error::runtime_error(&v15, "failed to find the current format for a stream");
    std::runtime_error::runtime_error(&v16, &v15);
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = -1;
    v16.__vftable = &unk_1F5992170;
    v17 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v16);
    v30 = "CA::StreamDescription AMCP::IOAudio1::get_stream_format(const CF::Dictionary &, const CF::Dictionary &)";
    v31 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IOAudio1/IOAudio1_Stream.cpp";
    v32 = 275;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v14);
  }

  AMCP::IOAudio1::make_format_from_dictionary(this, &v23);
  AMCP::IOAudio1::make_sample_rate_from_dictionary(v23, @"IOAudioSampleRate", v7);
  *this = AMCP::IOAudio1::make_sample_rate_from_dictionary(*a2, @"IOAudioSampleRate", v8);
  if (v23)
  {
    CFRelease(v23);
  }
}

void AMCP::IOAudio1::make_format_from_dictionary(AMCP::IOAudio1 *this, const __CFDictionary **a2)
{
  *(this + 4) = 0;
  *this = 0u;
  *(this + 1) = 0u;
  if (!*a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    goto LABEL_96;
  }

  LODWORD(valuePtr) = 0;
  cf = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  if (!cf)
  {
    v31 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v31, "Could not construct");
    __cxa_throw(v31, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  applesauce::CF::at_or<applesauce::CF::NumberRef,__CFString const*>(&valuePtr, *a2, @"IOAudioStreamSampleFormat", &cf);
  v4 = valuePtr;
  if (!valuePtr)
  {
    goto LABEL_95;
  }

  v5 = applesauce::CF::convert_to<unsigned int,0>(valuePtr);
  *(this + 2) = v5;
  CFRelease(v4);
  if (cf)
  {
    CFRelease(cf);
  }

  if (!*a2)
  {
    goto LABEL_95;
  }

  LODWORD(valuePtr) = 0;
  cf = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  if (!cf)
  {
    v32 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v32, "Could not construct");
    __cxa_throw(v32, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  applesauce::CF::at_or<applesauce::CF::NumberRef,__CFString const*>(&valuePtr, *a2, @"IOAudioStreamFormatFlags", &cf);
  v6 = valuePtr;
  if (!valuePtr)
  {
    goto LABEL_95;
  }

  *(this + 3) = applesauce::CF::convert_to<unsigned int,0>(valuePtr);
  CFRelease(v6);
  if (cf)
  {
    CFRelease(cf);
  }

  if (!*a2)
  {
    goto LABEL_95;
  }

  LODWORD(valuePtr) = 0;
  cf = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  if (!cf)
  {
    v33 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v33, "Could not construct");
    __cxa_throw(v33, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  applesauce::CF::at_or<applesauce::CF::NumberRef,__CFString const*>(&valuePtr, *a2, @"IOAudioStreamBytesPerPacket", &cf);
  v7 = valuePtr;
  if (!valuePtr)
  {
    goto LABEL_95;
  }

  *(this + 4) = applesauce::CF::convert_to<unsigned int,0>(valuePtr);
  CFRelease(v7);
  if (cf)
  {
    CFRelease(cf);
  }

  if (!*a2)
  {
    goto LABEL_95;
  }

  LODWORD(valuePtr) = 0;
  cf = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  if (!cf)
  {
    v34 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v34, "Could not construct");
    __cxa_throw(v34, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  applesauce::CF::at_or<applesauce::CF::NumberRef,__CFString const*>(&valuePtr, *a2, @"IOAudioStreamFramesPerPacket", &cf);
  v8 = valuePtr;
  if (!valuePtr)
  {
    goto LABEL_95;
  }

  v43 = applesauce::CF::convert_to<unsigned int,0>(valuePtr);
  *(this + 5) = v43;
  CFRelease(v8);
  if (cf)
  {
    CFRelease(cf);
  }

  if (!*a2)
  {
    goto LABEL_95;
  }

  LODWORD(valuePtr) = 0;
  cf = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  if (!cf)
  {
    v35 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v35, "Could not construct");
    __cxa_throw(v35, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  applesauce::CF::at_or<applesauce::CF::NumberRef,__CFString const*>(&valuePtr, *a2, @"IOAudioStreamNumChannels", &cf);
  v9 = valuePtr;
  if (!valuePtr)
  {
    goto LABEL_95;
  }

  v10 = applesauce::CF::convert_to<unsigned int,0>(valuePtr);
  *(this + 7) = v10;
  CFRelease(v9);
  if (cf)
  {
    CFRelease(cf);
  }

  if (!*a2)
  {
    goto LABEL_95;
  }

  LODWORD(valuePtr) = 0;
  cf = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  if (!cf)
  {
    v36 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v36, "Could not construct");
    __cxa_throw(v36, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  applesauce::CF::at_or<applesauce::CF::NumberRef,__CFString const*>(&valuePtr, *a2, @"IOAudioStreamBitDepth", &cf);
  v11 = valuePtr;
  if (!valuePtr)
  {
    goto LABEL_95;
  }

  v12 = applesauce::CF::convert_to<unsigned int,0>(valuePtr);
  *(this + 8) = v12;
  CFRelease(v11);
  if (cf)
  {
    CFRelease(cf);
  }

  if (!*a2)
  {
    goto LABEL_95;
  }

  LODWORD(valuePtr) = 1936289396;
  cf = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  if (!cf)
  {
    v37 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v37, "Could not construct");
    __cxa_throw(v37, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  applesauce::CF::at_or<applesauce::CF::NumberRef,__CFString const*>(&valuePtr, *a2, @"IOAudioStreamNumericRepresentation", &cf);
  v13 = valuePtr;
  if (!valuePtr)
  {
    goto LABEL_95;
  }

  v14 = applesauce::CF::convert_to<unsigned int,0>(valuePtr);
  CFRelease(v13);
  if (cf)
  {
    CFRelease(cf);
  }

  v42 = v14 == 1718382452;
  v15 = v14 == 1936289396;
  if (!*a2)
  {
    goto LABEL_95;
  }

  LODWORD(valuePtr) = v12;
  cf = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  if (!cf)
  {
    v38 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v38, "Could not construct");
    __cxa_throw(v38, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  applesauce::CF::at_or<applesauce::CF::NumberRef,__CFString const*>(&valuePtr, *a2, @"IOAudioStreamBitWidth", &cf);
  v16 = valuePtr;
  if (!valuePtr)
  {
    goto LABEL_95;
  }

  v17 = applesauce::CF::convert_to<unsigned int,0>(valuePtr);
  CFRelease(v16);
  if (cf)
  {
    CFRelease(cf);
  }

  v18 = v17 == v12;
  if (!*a2)
  {
    goto LABEL_95;
  }

  LODWORD(valuePtr) = 1;
  cf = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  if (!cf)
  {
    v39 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v39, "Could not construct");
    __cxa_throw(v39, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  applesauce::CF::at_or<applesauce::CF::NumberRef,__CFString const*>(&valuePtr, *a2, @"IOAudioStreamAlignment", &cf);
  v19 = valuePtr;
  if (!valuePtr)
  {
    goto LABEL_95;
  }

  v20 = applesauce::CF::convert_to<unsigned int,0>(valuePtr);
  CFRelease(v19);
  if (cf)
  {
    CFRelease(cf);
  }

  v21 = v20 == 1;
  if (!*a2)
  {
    goto LABEL_95;
  }

  LODWORD(valuePtr) = 0;
  cf = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  if (!cf)
  {
    v40 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v40, "Could not construct");
    __cxa_throw(v40, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  applesauce::CF::at_or<applesauce::CF::NumberRef,__CFString const*>(&valuePtr, *a2, @"IOAudioStreamByteOrder", &cf);
  v22 = valuePtr;
  if (!valuePtr)
  {
    goto LABEL_95;
  }

  v23 = applesauce::CF::convert_to<unsigned int,0>(valuePtr);
  CFRelease(v22);
  if (cf)
  {
    CFRelease(cf);
  }

  v24 = v23 == 0;
  if (!*a2)
  {
    goto LABEL_95;
  }

  LODWORD(valuePtr) = 1;
  cf = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  if (!cf)
  {
    v41 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v41, "Could not construct");
    __cxa_throw(v41, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  applesauce::CF::at_or<applesauce::CF::NumberRef,__CFString const*>(&valuePtr, *a2, @"IOAudioStreamIsMixable", &cf);
  v25 = valuePtr;
  if (!valuePtr)
  {
LABEL_95:
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
LABEL_96:
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v26 = applesauce::CF::convert_to<unsigned int,0>(valuePtr);
  CFRelease(v25);
  if (cf)
  {
    CFRelease(cf);
  }

  v27 = 2 * v24;
  if (v5 == 1819304813)
  {
    v28 = (4 * v15) | v42 | (8 * v18) | (16 * v21) | ((v26 == 0) << 6) | v27;
    if (!v28)
    {
      v28 = 0x80000000;
    }

    v29 = v10 * (v17 >> 3);
    *(this + 3) = v28;
    *(this + 4) = v29;
    *(this + 5) = 1;
    *(this + 6) = v29;
  }

  else if (v5 == 1667326771)
  {
    *(this + 3) = v27 | 0x4C;
    *(this + 4) = 4 * v43;
    *(this + 3) = 0x200000000;
    *(this + 8) = 16;
  }
}

BOOL AMCP::IOAudio1::get_stream_direction(CFDictionaryRef theDict, const applesauce::CF::DictionaryRef *a2)
{
  if (!theDict)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    goto LABEL_9;
  }

  applesauce::CF::details::find_at_key_or_optional<applesauce::CF::NumberRef,__CFString const*>(&v6, theDict, @"IOAudioStreamDirection");
  if (v7 != 1)
  {
    return 0;
  }

  v2 = v6;
  if (!v6)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
LABEL_9:
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v3 = applesauce::CF::convert_to<unsigned int,0>(v6) == 1;
  CFRelease(v2);
  return v3;
}

uint64_t AMCP::IOAudio1::get_stream_starting_channel(CFDictionaryRef theDict, const applesauce::CF::DictionaryRef *a2)
{
  if (!theDict)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    goto LABEL_9;
  }

  applesauce::CF::details::find_at_key_or_optional<applesauce::CF::NumberRef,__CFString const*>(&v6, theDict, @"IOAudioStreamStartingChannelNumber");
  if (v7 != 1)
  {
    return 0;
  }

  v2 = v6;
  if (!v6)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
LABEL_9:
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v3 = applesauce::CF::convert_to<unsigned int,0>(v6);
  CFRelease(v2);
  return v3;
}

void AMCP::IOAudio1::Stream::create_from_service_list(uint64_t a1, uint64_t a2, io_registry_entry_t *a3, io_registry_entry_t *a4)
{
  v20 = 0;
  v4 = 0uLL;
  v19 = 0u;
  v18 = 0;
  v17 = 0u;
  if (a3 == a4)
  {
    v12 = 0;
    v10 = 0;
    v11 = 0uLL;
  }

  else
  {
    v6 = a3;
    v15 = a1;
    do
    {
      if (!*v6)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "cannot create io_object_proxy from null io_object");
        __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      applesauce::iokit::get_properties(&v16, *v6);
      if (!v16)
      {
LABEL_23:
        v14 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v14, "Could not construct");
        __cxa_throw(v14, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      applesauce::CF::details::find_at_key_or_optional<applesauce::CF::BooleanRef,__CFString const*>(&cf, v16, @"IOAudioStreamAvailable");
      if (v24 == 1)
      {
        if (!cf)
        {
          goto LABEL_23;
        }

        v7 = applesauce::CF::convert_to<BOOL,0>(cf);
        if (cf)
        {
          CFRelease(cf);
        }

        if (v7)
        {
          goto LABEL_15;
        }
      }

      else
      {
        if (!v16)
        {
          goto LABEL_23;
        }

        applesauce::CF::details::find_at_key_or_optional<applesauce::CF::NumberRef,__CFString const*>(&v21, v16, @"IOAudioStreamAvailable");
        if ((v22 & 1) == 0)
        {
          goto LABEL_15;
        }

        v8 = v21;
        if (!v21)
        {
          goto LABEL_23;
        }

        v9 = applesauce::CF::convert_to<BOOL,0>(v21);
        CFRelease(v8);
        if (v9)
        {
LABEL_15:
          operator new();
        }
      }

      if (v16)
      {
        CFRelease(v16);
      }

      ++v6;
    }

    while (v6 != a4);
    v4 = v19;
    v10 = v20;
    v11 = v17;
    v12 = v18;
    a1 = v15;
  }

  *a1 = v4;
  *(a1 + 16) = v10;
  v20 = 0;
  v19 = 0uLL;
  *(a1 + 24) = v11;
  *(a1 + 40) = v12;
  v18 = 0;
  v17 = 0uLL;
  cf = &v17;
  std::vector<std::unique_ptr<AMCP::IOAudio1::Stream>>::__destroy_vector::operator()[abi:ne200100](&cf);
  *&v17 = &v19;
  std::vector<std::unique_ptr<AMCP::IOAudio1::Stream>>::__destroy_vector::operator()[abi:ne200100](&v17);
}

void std::vector<std::unique_ptr<AMCP::IOAudio1::Stream>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::unique_ptr<AMCP::IOAudio1::Stream>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void *std::vector<std::unique_ptr<AMCP::IOAudio1::Stream>>::emplace<std::unique_ptr<AMCP::IOAudio1::Stream>>(void *result, char *a2, uint64_t *a3)
{
  v4 = result;
  v5 = result[1];
  v6 = result[2];
  if (v5 >= v6)
  {
    v11 = *result;
    v12 = (&v5[-*result] >> 3) + 1;
    if (v12 >> 61)
    {
      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v13 = a2 - v11;
    v14 = v6 - v11;
    if (v14 >> 2 > v12)
    {
      v12 = v14 >> 2;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFF8)
    {
      v15 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v16 = v13 >> 3;
    v34 = v4;
    if (v15)
    {
      std::allocator<HALS_Device *>::allocate_at_least[abi:ne200100](v15);
    }

    v17 = (8 * v16);
    v31 = 0;
    v32 = 8 * v16;
    v33 = (8 * v16);
    if (!v16)
    {
      if (v13 < 1)
      {
        if (v11 == a2)
        {
          v23 = 1;
        }

        else
        {
          v23 = v13 >> 2;
        }

        v35 = v4;
        std::allocator<HALS_Device *>::allocate_at_least[abi:ne200100](v23);
      }

      v17 = (v17 - (((v13 >> 1) + 4) & 0xFFFFFFFFFFFFFFF8));
      v32 = v17;
    }

    v24 = *a3;
    *a3 = 0;
    *v17 = v24;
    *&v33 = v17 + 1;
    memcpy(v17 + 1, a2, v4[1] - a2);
    v25 = *v4;
    v26 = v32;
    *&v33 = v33 + v4[1] - a2;
    v4[1] = a2;
    v27 = (a2 - v25);
    v28 = (v26 - (a2 - v25));
    memcpy(v28, v25, v27);
    v29 = *v4;
    *v4 = v28;
    v30 = v4[2];
    *(v4 + 1) = v33;
    *&v33 = v29;
    *(&v33 + 1) = v30;
    v31 = v29;
    v32 = v29;
    return std::__split_buffer<std::unique_ptr<AMCP::IOAudio1::Stream>>::~__split_buffer(&v31);
  }

  else
  {
    v7 = *a3;
    *a3 = 0;
    if (a2 == v5)
    {
      *v5 = v7;
      result[1] = v5 + 8;
    }

    else
    {
      v8 = v5 - 8;
      if (v5 < 8)
      {
        v10 = v5;
      }

      else
      {
        v9 = *v8;
        *v8 = 0;
        *v5 = v9;
        v10 = v5 + 8;
      }

      result[1] = v10;
      if (v5 != a2 + 8)
      {
        v18 = (a2 - v5 + 8);
        v19 = v5 - 16;
        do
        {
          v20 = *v19;
          *v19 = 0;
          v21 = *v8;
          *v8 = v20;
          if (v21)
          {
            (*(*v21 + 8))(v21);
          }

          v8 -= 8;
          v19 -= 8;
          v18 += 8;
        }

        while (v18);
      }

      result = *a2;
      *a2 = v7;
      if (result)
      {
        v22 = *(*result + 8);

        return v22();
      }
    }
  }

  return result;
}

uint64_t std::__split_buffer<std::unique_ptr<AMCP::IOAudio1::Stream>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    v5 = *--v2;
    v4 = v5;
    *(a1 + 16) = v2;
    *v2 = 0;
    if (v5)
    {
      (*(*v4 + 8))(v4);
      v2 = *(a1 + 16);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *std::vector<std::unique_ptr<AMCP::IOAudio1::Stream>>::clear[abi:ne200100](void *result)
{
  v1 = result;
  v2 = *result;
  v3 = result[1];
  while (v3 != v2)
  {
    v4 = *--v3;
    result = v4;
    *v3 = 0;
    if (v4)
    {
      result = (*(*result + 8))(result);
    }
  }

  v1[1] = v2;
  return result;
}

void AMCP::IOAudio1::Stream::build_core(AMCP::IOAudio1::Stream *this)
{
  *(this + 4) = AMCP::Core::Broker::reserve_id(*(*(*(*(this + 1) + 16) + 32) + 16));
  *__p = 0u;
  *v8 = 0u;
  v9 = 1065353216;
  v2 = *(this + 5);
  if (v2)
  {
    applesauce::iokit::get_properties(&cf, v2);
    v4 = 0x676C6F6269646E74;
    LODWORD(v5) = 0;
    LODWORD(v11) = *(this + 4);
    AMCP::Core::Operation_Utilities::make_typed_property<unsigned int,std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<unsigned int>(AMCP::Address const&,unsigned int const&)::{lambda(void)#1}>(&v10, &v4, &v11);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "cannot create io_object_proxy from null io_object");
  __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
}

void sub_1DE4DC6EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, const void *);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef((v11 - 48));
  applesauce::CF::DictionaryRef::~DictionaryRef(va);
  std::__hash_table<std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,std::__unordered_map_hasher<AMCP::Address,std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,true>,std::__unordered_map_equal<AMCP::Address,std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,AMCP::Address::Is_Exact_Match,AMCP::Address::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>>>::~__hash_table(va1);
  _Unwind_Resume(a1);
}

void AMCP::Core::Operation_Utilities::make_constant_property<applesauce::CF::URLRef>(uint64_t *a1, uint64_t *a2, CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  std::allocate_shared[abi:ne200100]<AMCP::Core::Operation,std::allocator<AMCP::Core::Operation>,AMCP::Address const&,0>(a1, a2);
}

void sub_1DE4DC95C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *AMCP::IOAudio1::Device::get_engine_registry_entries(void *this, const void *a2)
{
  v3 = this;
  if (a2)
  {
    this = CFRetain(a2);
  }

  *v3 = a2;
  return this;
}

void AMCP::IOAudio1::update_stream_core(float *a1, const applesauce::CF::DictionaryRef *a2, AMCP::IOAudio1 **a3, CFDictionaryRef *a4)
{
  v8 = *MEMORY[0x1E69E9840];
  stream_direction = AMCP::IOAudio1::get_stream_direction(*a4, a2);
  v7.__vftable = 0x676C6F6273646972;
  LODWORD(v7.__imp_.__imp_) = 0;
  LODWORD(valuePtr) = stream_direction;
  AMCP::Core::Operation_Utilities::make_typed_property<AMCP::Direction,std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<AMCP::Direction>(AMCP::Address const&,AMCP::Direction const&)::{lambda(void)#1}>(v6, &v7, &valuePtr);
}

void sub_1DE4DD700(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  __cxa_free_exception(v36);
  applesauce::CF::NumberRef::~NumberRef(&a29);
  applesauce::CF::NumberRef::~NumberRef(&a9);
  applesauce::CF::NumberRef::~NumberRef(&a35);
  applesauce::CF::NumberRef::~NumberRef((v37 - 160));
  _Unwind_Resume(a1);
}

void sub_1DE4DDAA4(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void AMCP::Core::Operation_Utilities::make_constant_property<std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>>(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6[17] = *MEMORY[0x1E69E9840];
  memset(v6, 0, 24);
  std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>::__init_with_size[abi:ne200100]<std::tuple<CA::ValueRangeList,CA::StreamDescription>*,std::tuple<CA::ValueRangeList,CA::StreamDescription>*>(v6, a3, a4, (a4 - a3) >> 6);
  std::allocate_shared[abi:ne200100]<AMCP::Core::Operation,std::allocator<AMCP::Core::Operation>,AMCP::Address const&,0>(a1, a2);
}

void sub_1DE4DDC68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t std::__function::__value_func<void ()(CA::StreamDescription const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<void ()(CA::StreamDescription const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

void AMCP::Core::Operation_Utilities::add_generic_property_setter<CA::StreamDescription>(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  std::unordered_map<AMCP::Type_ID,AMCP::Thing,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,std::allocator<std::pair<AMCP::Type_ID const,AMCP::Thing>>>::unordered_map(&v5, a1);
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v18 = AMCP::Implementation::get_type_marker<std::function<void ()(AMCP::Thing const&)>>();
  v2 = v5;
  v3 = v6;
  v5 = 0;
  v6 = 0;
  v12 = v2;
  v13 = v3;
  v14[0] = v7;
  v14[1] = v8;
  v15 = v9;
  if (v8)
  {
    v4 = *(v7 + 8);
    if ((v3 & (v3 - 1)) != 0)
    {
      if (v4 >= v3)
      {
        v4 %= v3;
      }
    }

    else
    {
      v4 &= v3 - 1;
    }

    *(v2 + 8 * v4) = v14;
    v7 = 0;
    v8 = 0;
  }

  v16 = v10;
  v17 = v11;
  v19 = 0;
  operator new();
}

void sub_1DE4DDF74(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t AMCP::IOAudio1::update_stream_core(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&,applesauce::CF::DictionaryRef const&)::$_1::~$_1(uint64_t a1)
{
  v3 = (a1 + 8);
  std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>::__destroy_vector::operator()[abi:ne200100](&v3);
  if (*a1)
  {
    IOObjectRelease(*a1);
  }

  return a1;
}

uint64_t std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_setter<CA::StreamDescription>(AMCP::Core::Operation &)::{lambda(AMCP::Thing const&)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_setter<CA::StreamDescription>(AMCP::Core::Operation &)::{lambda(AMCP::Thing const&)#1}>,void ()(AMCP::Thing const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Core19Operation_Utilities27add_generic_property_setterIN2CA17StreamDescriptionEEEvRNS0_9OperationEEUlRKNS_5ThingEE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_setter<CA::StreamDescription>(AMCP::Core::Operation &)::{lambda(AMCP::Thing const&)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_setter<CA::StreamDescription>(AMCP::Core::Operation &)::{lambda(AMCP::Thing const&)#1}>,void ()(AMCP::Thing const&)>::destroy_deallocate(void *a1)
{
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table(a1 + 8);

  operator delete(a1);
}

double std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_setter<CA::StreamDescription>(AMCP::Core::Operation &)::{lambda(AMCP::Thing const&)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_setter<CA::StreamDescription>(AMCP::Core::Operation &)::{lambda(AMCP::Thing const&)#1}>,void ()(AMCP::Thing const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F597F178;
  std::unordered_map<AMCP::Type_ID,AMCP::Thing,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,std::allocator<std::pair<AMCP::Type_ID const,AMCP::Thing>>>::unordered_map((a2 + 8), a1 + 8);
  result = *(a1 + 48);
  *(a2 + 48) = result;
  *(a2 + 56) = *(a1 + 56);
  return result;
}

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_setter<CA::StreamDescription>(AMCP::Core::Operation &)::{lambda(AMCP::Thing const&)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_setter<CA::StreamDescription>(AMCP::Core::Operation &)::{lambda(AMCP::Thing const&)#1}>,void ()(AMCP::Thing const&)>::~__func(void *a1)
{
  *a1 = &unk_1F597F178;
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table((a1 + 1));

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_setter<CA::StreamDescription>(AMCP::Core::Operation &)::{lambda(AMCP::Thing const&)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_setter<CA::StreamDescription>(AMCP::Core::Operation &)::{lambda(AMCP::Thing const&)#1}>,void ()(AMCP::Thing const&)>::~__func(void *a1)
{
  *a1 = &unk_1F597F178;
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table((a1 + 1));
  return a1;
}

uint64_t AMCP::Implementation::In_Place_Storage<std::function<void ()(CA::StreamDescription const&)>>::dispatch(int a1, uint64_t a2, AMCP::Thing *a3, uint64_t *a4)
{
  result = 0;
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        v9 = AMCP::Implementation::get_type_marker<std::function<void ()(CA::StreamDescription const&)>>();
        result = 0;
        *a4 = v9;
        break;
      case 4:
        if (*a4 == AMCP::Implementation::get_type_marker<std::function<void ()(CA::StreamDescription const&)>>())
        {
          return a2;
        }

        else
        {
          return 0;
        }

      case 6:
        v12 = 0;
        memset(v11, 0, sizeof(v11));
        AMCP::swap(v11, a3, a3);
        if (v12)
        {
          v12(0, v11, 0, 0);
        }

        return 0;
    }
  }

  else
  {
    if (!a1)
    {
LABEL_6:
      std::__function::__value_func<void ()(CA::StreamDescription const&)>::~__value_func[abi:ne200100](a2);
      result = 0;
      *(a2 + 32) = 0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      return result;
    }

    if (a1 != 1)
    {
      if (a1 != 2)
      {
        return result;
      }

      *a3 = 0u;
      *(a3 + 1) = 0u;
      std::__function::__value_func<void ()(CA::StreamDescription const&)>::__value_func[abi:ne200100](a3, a2);
      *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<void ()(CA::StreamDescription const&)>>::dispatch;
      goto LABEL_6;
    }

    *a3 = 0u;
    *(a3 + 1) = 0u;
    v10 = *(a2 + 24);
    if (v10)
    {
      if (v10 == a2)
      {
        *(a3 + 3) = a3;
        (*(**(a2 + 24) + 24))(*(a2 + 24), a3);
      }

      else
      {
        *(a3 + 3) = (*(*v10 + 16))(v10);
      }
    }

    result = 0;
    *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<void ()(CA::StreamDescription const&)>>::dispatch;
  }

  return result;
}

uint64_t std::__function::__func<AMCP::IOAudio1::update_stream_core(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&,applesauce::CF::DictionaryRef const&)::$_1,std::allocator<AMCP::IOAudio1::update_stream_core(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&,applesauce::CF::DictionaryRef const&)::$_1>,void ()(CA::StreamDescription const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP8IOAudio1L18update_stream_coreERNS_4Core13Operation_SetERKN10applesauce5iokit16io_object_holderERKNS4_2CF13DictionaryRefESC_E3$_1"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void AMCP::IOAudio1::update_stream_core(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&,applesauce::CF::DictionaryRef const&)::$_1::operator()(unsigned int *a1, uint64_t a2)
{
  v181[2] = *MEMORY[0x1E69E9840];
  is_an_available_format = AMCP::Utility::Stream_Format::format_is_an_available_format(a2, *(a1 + 1), *(a1 + 2));
  if (!is_an_available_format)
  {
    v75 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v75 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(is_an_available_format);
    }

    v77 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v76 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v76)
    {
      atomic_fetch_add_explicit(&v76->__shared_owners_, 1uLL, memory_order_relaxed);
      v78 = *v77;
      std::__shared_weak_count::__release_shared[abi:ne200100](v76);
    }

    else
    {
      v78 = *v77;
    }

    if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "IOAudio1_Stream.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 378;
      *&buf[18] = 2080;
      *&buf[20] = "(format_is_valid) == false";
      _os_log_error_impl(&dword_1DE1F9000, v78, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s failed to set stream format", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v155);
    __cxa_allocate_exception(0x40uLL);
    std::runtime_error::runtime_error(&v112, "failed to set stream format");
    std::runtime_error::runtime_error(&v157, &v112);
    memset(v159, 0, sizeof(v159));
    v160 = -1;
    v157.__vftable = &unk_1F5992170;
    v158 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v157);
    v162 = "auto AMCP::IOAudio1::update_stream_core(Core::Operation_Set &, const IOKit::Service &, const CF::Dictionary &, const CF::Dictionary &)::(anonymous class)::operator()(const CA::StreamDescription &) const";
    v163 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IOAudio1/IOAudio1_Stream.cpp";
    LODWORD(v164) = 378;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(v110);
  }

  if (!*a1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "cannot create io_object_proxy from null io_object");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v109 = CFStringCreateWithBytes(0, "IOAudioStreamFormat", 19, 0x8000100u, 0);
  if (!v109)
  {
    v80 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v80, "Could not construct");
    __cxa_throw(v80, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v5 = CFStringCreateWithBytes(0, "IOAudioSampleRate", 17, 0x8000100u, 0);
  v6 = v5;
  v147 = v5;
  if (!v5)
  {
    v81 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v81, "Could not construct");
    __cxa_throw(v81, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  CFRetain(v5);
  v148 = v6;
  v7 = *a2;
  v8 = CFStringCreateWithBytes(0, "IOAudioSampleRateWholeNumber", 28, 0x8000100u, 0);
  v9 = v8;
  v155 = v8;
  if (!v8)
  {
    v82 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v82, "Could not construct");
    __cxa_throw(v82, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  CFRetain(v8);
  v112.__vftable = v9;
  LODWORD(valuePtr) = vcvtmd_u64_f64(v7);
  v10 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  v11 = v10;
  v153 = v10;
  if (!v10)
  {
    v83 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v83, "Could not construct");
    __cxa_throw(v83, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  CFRetain(v10);
  v112.__vftable = 0;
  v157.__vftable = v9;
  v157.__imp_.__imp_ = v11;
  v154 = 0;
  v12 = CFStringCreateWithBytes(0, "IOAudioSampleRateFraction", 25, 0x8000100u, 0);
  v13 = v12;
  v151 = v12;
  if (!v12)
  {
    v84 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v84, "Could not construct");
    __cxa_throw(v84, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  CFRetain(v12);
  valuePtr = v13;
  LODWORD(v146[0]) = ((v7 - floor(v7)) * 4294967300.0);
  v14 = CFNumberCreate(0, kCFNumberIntType, v146);
  v15 = v14;
  cf = v14;
  if (!v14)
  {
    v85 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v85, "Could not construct");
    __cxa_throw(v85, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  CFRetain(v14);
  valuePtr = 0;
  v158 = v13;
  v159[0] = v15;
  v150 = 0;
  v111[0] = &v157;
  v111[1] = 2;
  CFDictionaryRef = applesauce::CF::details::make_CFDictionaryRef(v111);
  v17 = 0;
  v146[1] = CFDictionaryRef;
  do
  {
    v18 = v159[v17];
    if (v18)
    {
      CFRelease(v18);
    }

    v19 = *(&v157 + v17 * 8 + 16);
    if (v19)
    {
      CFRelease(v19);
    }

    v17 -= 2;
  }

  while (v17 != -4);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v151)
  {
    CFRelease(v151);
  }

  if (v153)
  {
    CFRelease(v153);
  }

  if (v155)
  {
    CFRelease(v155);
  }

  CFRetain(CFDictionaryRef);
  v148 = 0;
  *buf = v6;
  *&buf[8] = CFDictionaryRef;
  v146[2] = 0;
  v20 = CFStringCreateWithBytes(0, "IOAudioStreamNumChannels", 24, 0x8000100u, 0);
  v21 = v20;
  v111[0] = v20;
  if (!v20)
  {
    v86 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v86, "Could not construct");
    __cxa_throw(v86, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  CFRetain(v20);
  v157.__vftable = v21;
  LODWORD(v154) = *(a2 + 28);
  v22 = CFNumberCreate(0, kCFNumberIntType, &v154);
  v23 = v22;
  v155 = v22;
  if (!v22)
  {
    v87 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v87, "Could not construct");
    __cxa_throw(v87, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  CFRetain(v22);
  v157.__vftable = 0;
  *&buf[16] = v21;
  *&buf[24] = v23;
  v112.__vftable = 0;
  v24 = CFStringCreateWithBytes(0, "IOAudioStreamSampleFormat", 25, 0x8000100u, 0);
  v25 = v24;
  v153 = v24;
  if (!v24)
  {
    v88 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v88, "Could not construct");
    __cxa_throw(v88, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  CFRetain(v24);
  v154 = v25;
  LODWORD(v150) = *(a2 + 8);
  v26 = CFNumberCreate(0, kCFNumberIntType, &v150);
  v27 = v26;
  v151 = v26;
  if (!v26)
  {
    v89 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v89, "Could not construct");
    __cxa_throw(v89, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  CFRetain(v26);
  v154 = 0;
  v162 = v25;
  v163 = v27;
  valuePtr = 0;
  v28 = CFStringCreateWithBytes(0, "IOAudioStreamNumericRepresentation", 34, 0x8000100u, 0);
  v29 = v28;
  cf = v28;
  if (!v28)
  {
    v90 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v90, "Could not construct");
    __cxa_throw(v90, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  CFRetain(v28);
  v30 = 1936289396;
  v150 = v29;
  v31 = *(a2 + 8);
  if (v31 != 1667326771)
  {
    if (v31 == 1819304813)
    {
      v32 = *(a2 + 12);
      if (v32)
      {
        v30 = 1718382452;
      }

      else if ((v32 & 4) != 0)
      {
        v30 = 1936289396;
      }

      else
      {
        v30 = 1969843828;
      }
    }

    else
    {
      v30 = 0;
    }
  }

  LODWORD(v144) = v30;
  v33 = CFNumberCreate(0, kCFNumberIntType, &v144);
  v34 = v33;
  v145 = v33;
  if (!v33)
  {
    v91 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v91, "Could not construct");
    __cxa_throw(v91, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  CFRetain(v33);
  v150 = 0;
  v164 = v29;
  v165 = v34;
  v146[0] = 0;
  v35 = CFStringCreateWithBytes(0, "IOAudioStreamFormatFlags", 24, 0x8000100u, 0);
  v36 = v35;
  v143 = v35;
  if (!v35)
  {
    v92 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v92, "Could not construct");
    __cxa_throw(v92, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  CFRetain(v35);
  v37 = 0;
  v144 = v36;
  v38 = *(a2 + 8);
  if (v38 != 1667326771 && v38 != 1819304813)
  {
    v37 = *(a2 + 12);
  }

  LODWORD(v140) = v37;
  v39 = CFNumberCreate(0, kCFNumberIntType, &v140);
  v40 = v39;
  v141 = v39;
  if (!v39)
  {
    v93 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v93, "Could not construct");
    __cxa_throw(v93, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  CFRetain(v39);
  v144 = 0;
  v166 = v36;
  v167 = v40;
  v142 = 0;
  v41 = CFStringCreateWithBytes(0, "IOAudioStreamFramesPerPacket", 28, 0x8000100u, 0);
  v42 = v41;
  v139 = v41;
  if (!v41)
  {
    v94 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v94, "Could not construct");
    __cxa_throw(v94, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  CFRetain(v41);
  v140 = v42;
  LODWORD(v136) = *(a2 + 20);
  v43 = CFNumberCreate(0, kCFNumberIntType, &v136);
  v44 = v43;
  v137 = v43;
  if (!v43)
  {
    v95 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v95, "Could not construct");
    __cxa_throw(v95, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  CFRetain(v43);
  v140 = 0;
  v168 = v42;
  v169 = v44;
  v138 = 0;
  v45 = CFStringCreateWithBytes(0, "IOAudioStreamBytesPerPacket", 27, 0x8000100u, 0);
  v46 = v45;
  v135 = v45;
  if (!v45)
  {
    v96 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v96, "Could not construct");
    __cxa_throw(v96, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  CFRetain(v45);
  v136 = v46;
  LODWORD(v132) = *(a2 + 16);
  v47 = CFNumberCreate(0, kCFNumberIntType, &v132);
  v48 = v47;
  v133 = v47;
  if (!v47)
  {
    v97 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v97, "Could not construct");
    __cxa_throw(v97, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  CFRetain(v47);
  v136 = 0;
  v170 = v46;
  v171 = v48;
  v134 = 0;
  v49 = CFStringCreateWithBytes(0, "IOAudioStreamBitDepth", 21, 0x8000100u, 0);
  v50 = v49;
  v131 = v49;
  if (!v49)
  {
    v98 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v98, "Could not construct");
    __cxa_throw(v98, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  CFRetain(v49);
  v132 = v50;
  LODWORD(v128) = *(a2 + 32);
  v51 = CFNumberCreate(0, kCFNumberIntType, &v128);
  v52 = v51;
  v129 = v51;
  if (!v51)
  {
    v99 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v99, "Could not construct");
    __cxa_throw(v99, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  CFRetain(v51);
  v132 = 0;
  v172 = v50;
  v173 = v52;
  v130 = 0;
  v53 = CFStringCreateWithBytes(0, "IOAudioStreamBitWidth", 21, 0x8000100u, 0);
  v54 = v53;
  v127 = v53;
  if (!v53)
  {
    v100 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v100, "Could not construct");
    __cxa_throw(v100, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  CFRetain(v53);
  v128 = v54;
  v55 = *(a2 + 8);
  if ((v55 - 778924081) < 3)
  {
    goto LABEL_52;
  }

  if (v55 == 1667326771)
  {
    v56 = 16;
  }

  else
  {
    if (v55 == 1633889587)
    {
LABEL_52:
      v56 = 0;
      goto LABEL_53;
    }

    v56 = (8 * *(a2 + 24)) / *(a2 + 28);
  }

LABEL_53:
  LODWORD(v124) = v56;
  v57 = CFNumberCreate(0, kCFNumberIntType, &v124);
  v58 = v57;
  v125 = v57;
  if (!v57)
  {
    v101 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v101, "Could not construct");
    __cxa_throw(v101, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  CFRetain(v57);
  v128 = 0;
  v174 = v54;
  v175 = v58;
  v126 = 0;
  v59 = CFStringCreateWithBytes(0, "IOAudioStreamAlignment", 22, 0x8000100u, 0);
  v60 = v59;
  v123 = v59;
  if (!v59)
  {
    v102 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v102, "Could not construct");
    __cxa_throw(v102, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  CFRetain(v59);
  v124 = v60;
  LODWORD(v120) = (*(a2 + 12) >> 4) & 1;
  v61 = CFNumberCreate(0, kCFNumberIntType, &v120);
  v62 = v61;
  v121 = v61;
  if (!v61)
  {
    v103 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v103, "Could not construct");
    __cxa_throw(v103, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  CFRetain(v61);
  v124 = 0;
  v176 = v60;
  v177 = v62;
  v122 = 0;
  v63 = CFStringCreateWithBytes(0, "IOAudioStreamByteOrder", 22, 0x8000100u, 0);
  v64 = v63;
  v119 = v63;
  if (!v63)
  {
    v104 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v104, "Could not construct");
    __cxa_throw(v104, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  CFRetain(v63);
  v120 = v64;
  LODWORD(v116) = ((*(a2 + 12) >> 1) & 1) == 0;
  v65 = CFNumberCreate(0, kCFNumberIntType, &v116);
  v66 = v65;
  v117 = v65;
  if (!v65)
  {
    v105 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v105, "Could not construct");
    __cxa_throw(v105, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  CFRetain(v65);
  v120 = 0;
  v178 = v64;
  v179 = v66;
  v118 = 0;
  v67 = CFStringCreateWithBytes(0, "IOAudioStreamIsMixable", 22, 0x8000100u, 0);
  v68 = v67;
  v115 = v67;
  if (!v67)
  {
    v106 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v106, "Could not construct");
    __cxa_throw(v106, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  CFRetain(v67);
  v116 = v68;
  v156 = ((*(a2 + 12) >> 6) & 1) == 0;
  v69 = CFNumberCreate(0, kCFNumberIntType, &v156);
  v70 = v69;
  v113 = v69;
  if (!v69)
  {
    v107 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v107, "Could not construct");
    __cxa_throw(v107, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  CFRetain(v69);
  v116 = 0;
  v180 = v68;
  v181[0] = v70;
  v114 = 0;
  v110[0] = buf;
  v110[1] = 12;
  v71 = applesauce::CF::details::make_CFDictionaryRef(v110);
  for (i = 0; i != -24; i -= 2)
  {
    v73 = v181[i];
    if (v73)
    {
      CFRelease(v73);
    }

    v74 = v181[i - 1];
    if (v74)
    {
      CFRelease(v74);
    }
  }

  if (v113)
  {
    CFRelease(v113);
  }

  if (v115)
  {
    CFRelease(v115);
  }

  if (v117)
  {
    CFRelease(v117);
  }

  if (v119)
  {
    CFRelease(v119);
  }

  if (v121)
  {
    CFRelease(v121);
  }

  if (v123)
  {
    CFRelease(v123);
  }

  if (v125)
  {
    CFRelease(v125);
  }

  if (v127)
  {
    CFRelease(v127);
  }

  if (v129)
  {
    CFRelease(v129);
  }

  if (v131)
  {
    CFRelease(v131);
  }

  if (v133)
  {
    CFRelease(v133);
  }

  if (v135)
  {
    CFRelease(v135);
  }

  if (v137)
  {
    CFRelease(v137);
  }

  if (v139)
  {
    CFRelease(v139);
  }

  if (v141)
  {
    CFRelease(v141);
  }

  if (v143)
  {
    CFRelease(v143);
  }

  if (v145)
  {
    CFRelease(v145);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v151)
  {
    CFRelease(v151);
  }

  if (v153)
  {
    CFRelease(v153);
  }

  if (v155)
  {
    CFRelease(v155);
  }

  if (v111[0])
  {
    CFRelease(v111[0]);
  }

  CFRelease(CFDictionaryRef);
  if (v147)
  {
    CFRelease(v147);
  }

  CFRetain(v71);
  v108 = v71;
  applesauce::iokit::io_object_proxy::set_properties(*a1, v109, &v108);
  if (v71)
  {
    CFRelease(v71);
  }

  CFRelease(v71);
  if (v109)
  {
    CFRelease(v109);
  }
}

void sub_1DE4DF724(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, const void *a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, std::runtime_error a20, const void *a21, uint64_t a22, const void *a23, const void *a24, const void *a25, const void *a26, const void *a27, const void *a28, const void *a29, const void *a30, const void *a31, const void *a32, const void *a33, const void *a34, const void *a35, const void *a36, const void *a37, const void *a38, const void *a39, const void *a40, const void *a41, const void *a42, const void *a43, const void *a44, const void *a45, const void *a46, const void *a47, const void *a48, const void *a49, const void *a50, const void *a51, const void *a52, const void *a53, const void *a54, const void *a55, const void *a56, const void *a57, const void *a58, const void *a59, const void *a60, const void *a61, const void *a62, const void *a63)
{
  applesauce::CF::ObjectRef<__CFNumber const*>::~ObjectRef(&a21);
  applesauce::CF::TypeRef::~TypeRef(&a24);
  applesauce::CF::StringRef::~StringRef(&a23);
  applesauce::CF::TypeRef::~TypeRef(&a26);
  applesauce::CF::NumberRef::~NumberRef(&a25);
  applesauce::CF::TypeRef::~TypeRef(&a28);
  applesauce::CF::StringRef::~StringRef(&a27);
  applesauce::CF::TypeRef::~TypeRef(&a30);
  applesauce::CF::NumberRef::~NumberRef(&a29);
  applesauce::CF::TypeRef::~TypeRef(&a32);
  applesauce::CF::StringRef::~StringRef(&a31);
  applesauce::CF::TypeRef::~TypeRef(&a34);
  applesauce::CF::NumberRef::~NumberRef(&a33);
  applesauce::CF::TypeRef::~TypeRef(&a36);
  applesauce::CF::StringRef::~StringRef(&a35);
  applesauce::CF::TypeRef::~TypeRef(&a38);
  applesauce::CF::NumberRef::~NumberRef(&a37);
  applesauce::CF::TypeRef::~TypeRef(&a40);
  applesauce::CF::StringRef::~StringRef(&a39);
  applesauce::CF::TypeRef::~TypeRef(&a42);
  applesauce::CF::NumberRef::~NumberRef(&a41);
  applesauce::CF::TypeRef::~TypeRef(&a44);
  applesauce::CF::StringRef::~StringRef(&a43);
  applesauce::CF::TypeRef::~TypeRef(&a46);
  applesauce::CF::NumberRef::~NumberRef(&a45);
  applesauce::CF::TypeRef::~TypeRef(&a48);
  applesauce::CF::StringRef::~StringRef(&a47);
  applesauce::CF::TypeRef::~TypeRef(&a50);
  applesauce::CF::NumberRef::~NumberRef(&a49);
  applesauce::CF::TypeRef::~TypeRef(&a52);
  applesauce::CF::StringRef::~StringRef(&a51);
  applesauce::CF::TypeRef::~TypeRef(&a54);
  applesauce::CF::NumberRef::~NumberRef(&a53);
  applesauce::CF::TypeRef::~TypeRef(&a60);
  applesauce::CF::StringRef::~StringRef(&a59);
  applesauce::CF::TypeRef::~TypeRef(&a62);
  applesauce::CF::NumberRef::~NumberRef(&a61);
  applesauce::CF::TypeRef::~TypeRef(&a64);
  applesauce::CF::StringRef::~StringRef(&a63);
  applesauce::CF::TypeRef::~TypeRef(&a20.__vftable);
  applesauce::CF::NumberRef::~NumberRef(&a65);
  applesauce::CF::TypeRef::~TypeRef(&a66);
  applesauce::CF::StringRef::~StringRef(&a16);
  applesauce::CF::TypeRef::~TypeRef(&a56);
  applesauce::CF::DictionaryRef::~DictionaryRef(&a55);
  applesauce::CF::TypeRef::~TypeRef(&a58);
  applesauce::CF::StringRef::~StringRef(&a57);
  while (v66 != &STACK[0x210])
  {
    v66 = (v66 - 16);
    applesauce::CF::TypeRefPair::~TypeRefPair(v66);
  }

  applesauce::CF::StringRef::~StringRef(&a12);
  _Unwind_Resume(a1);
}

BOOL AMCP::Utility::Stream_Format::format_is_an_available_format(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 != a3)
  {
    v3 = *a1;
    v4 = *(a1 + 8);
    v5 = *(a1 + 24);
    v6 = *(a1 + 28);
    v7 = *(a1 + 32);
    while (1)
    {
      v8 = *a2;
      v9 = *(a2 + 8);
      if (v9 != *a2)
      {
        v10 = (v9 - *a2) >> 4;
        do
        {
          v11 = v10 >> 1;
          v12 = &v8[2 * (v10 >> 1)];
          v13 = v12[1];
          v14 = v12 + 2;
          v10 += ~(v10 >> 1);
          if (v13 < v3)
          {
            v8 = v14;
          }

          else
          {
            v10 = v11;
          }
        }

        while (v10);
        if (v8 != v9)
        {
          v15 = *v8;
          v16 = ~vaddvq_s32(vandq_s8(vceqq_s32(v4, *(a2 + 32)), xmmword_1DE758110)) & 0xF;
          v17 = v15 <= v3 && v16 == 0;
          v18 = !v17 || v5 != *(a2 + 48);
          v19 = v18 || v6 != *(a2 + 52);
          if (!v19 && v7 == *(a2 + 56))
          {
            break;
          }
        }
      }

      a2 += 64;
      if (a2 == a3)
      {
        a2 = a3;
        return a2 != a3;
      }
    }
  }

  return a2 != a3;
}

void applesauce::iokit::io_object_proxy::set_properties(io_registry_entry_t a1, const __CFString *a2, const void **a3)
{
  if (a2)
  {
    CFRetain(a2);
  }

  v6 = *a3;
  if (v6)
  {
    CFRetain(v6);
  }

  if (a1)
  {
    v7 = IORegistryEntrySetCFProperty(a1, a2, v6);
    if (v7)
    {
      exception = __cxa_allocate_exception(0x20uLL);
      v9 = std::system_category();
      MEMORY[0x1E12C10C0](exception, v7, v9, "Error on get_properties");
      __cxa_throw(exception, MEMORY[0x1E69E53B8], MEMORY[0x1E69E52D0]);
    }
  }

  if (v6)
  {
    CFRelease(v6);
  }

  if (a2)
  {
    CFRelease(a2);
  }
}

void sub_1DE4E01AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  __cxa_free_exception(v10);
  applesauce::CF::TypeRef::~TypeRef(&a9);
  applesauce::CF::StringRef::~StringRef(&a10);
  _Unwind_Resume(a1);
}

void std::__function::__func<AMCP::IOAudio1::update_stream_core(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&,applesauce::CF::DictionaryRef const&)::$_1,std::allocator<AMCP::IOAudio1::update_stream_core(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&,applesauce::CF::DictionaryRef const&)::$_1>,void ()(CA::StreamDescription const&)>::destroy_deallocate(uint64_t a1)
{
  v3 = (a1 + 16);
  std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v2 = *(a1 + 8);
  if (v2)
  {
    IOObjectRelease(v2);
  }

  operator delete(a1);
}

uint64_t std::__function::__func<AMCP::IOAudio1::update_stream_core(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&,applesauce::CF::DictionaryRef const&)::$_1,std::allocator<AMCP::IOAudio1::update_stream_core(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&,applesauce::CF::DictionaryRef const&)::$_1>,void ()(CA::StreamDescription const&)>::destroy(uint64_t a1)
{
  v3 = (a1 + 16);
  std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>::__destroy_vector::operator()[abi:ne200100](&v3);
  result = *(a1 + 8);
  if (result)
  {
    return IOObjectRelease(result);
  }

  return result;
}

uint64_t AMCP::IOAudio1::update_stream_core(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&,applesauce::CF::DictionaryRef const&)::$_1::$_1(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  *a1 = *a2;
  if (v4)
  {
    v5 = IOObjectRetain(v4);
    if (v5)
    {
      v7 = v5;
      exception = __cxa_allocate_exception(0x20uLL);
      v9 = std::system_category();
      MEMORY[0x1E12C10C0](exception, v7, v9, "Error on Retain");
      __cxa_throw(exception, MEMORY[0x1E69E53B8], MEMORY[0x1E69E52D0]);
    }
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>::__init_with_size[abi:ne200100]<std::tuple<CA::ValueRangeList,CA::StreamDescription>*,std::tuple<CA::ValueRangeList,CA::StreamDescription>*>((a1 + 8), *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 6);
  return a1;
}

void std::__function::__func<AMCP::IOAudio1::update_stream_core(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&,applesauce::CF::DictionaryRef const&)::$_1,std::allocator<AMCP::IOAudio1::update_stream_core(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&,applesauce::CF::DictionaryRef const&)::$_1>,void ()(CA::StreamDescription const&)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F5974A10;
  v3 = (a1 + 16);
  std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v2 = *(a1 + 8);
  if (v2)
  {
    IOObjectRelease(v2);
  }

  JUMPOUT(0x1E12C1730);
}

uint64_t std::__function::__func<AMCP::IOAudio1::update_stream_core(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&,applesauce::CF::DictionaryRef const&)::$_1,std::allocator<AMCP::IOAudio1::update_stream_core(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&,applesauce::CF::DictionaryRef const&)::$_1>,void ()(CA::StreamDescription const&)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F5974A10;
  v4 = (a1 + 16);
  std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>::__destroy_vector::operator()[abi:ne200100](&v4);
  v2 = *(a1 + 8);
  if (v2)
  {
    IOObjectRelease(v2);
  }

  return a1;
}

uint64_t std::__function::__func<AMCP::IOAudio1::update_stream_core(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&,applesauce::CF::DictionaryRef const&)::$_0,std::allocator<AMCP::IOAudio1::update_stream_core(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&,applesauce::CF::DictionaryRef const&)::$_0>,CA::StreamDescription ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP8IOAudio1L18update_stream_coreERNS_4Core13Operation_SetERKN10applesauce5iokit16io_object_holderERKNS4_2CF13DictionaryRefESC_E3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<AMCP::IOAudio1::update_stream_core(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&,applesauce::CF::DictionaryRef const&)::$_0,std::allocator<AMCP::IOAudio1::update_stream_core(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&,applesauce::CF::DictionaryRef const&)::$_0>,CA::StreamDescription ()(void)>::operator()@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *a2 = result;
  *(a2 + 16) = v3;
  *(a2 + 32) = *(a1 + 40);
  return result;
}

__n128 std::__function::__func<AMCP::IOAudio1::update_stream_core(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&,applesauce::CF::DictionaryRef const&)::$_0,std::allocator<AMCP::IOAudio1::update_stream_core(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&,applesauce::CF::DictionaryRef const&)::$_0>,CA::StreamDescription ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5974990;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>>(AMCP::Address const&,std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>> const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>>(AMCP::Address const&,std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>> const&)::{lambda(void)#1}>,std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Core19Operation_Utilities22make_constant_propertyINSt3__16vectorINS3_5tupleIJN2CA14ValueRangeListENS6_17StreamDescriptionEEEENS3_9allocatorIS9_EEEEEENS3_10shared_ptrINS0_9OperationEEERKNS_7AddressERKT_EUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>>(AMCP::Address const&,std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>> const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>>(AMCP::Address const&,std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>> const&)::{lambda(void)#1}>,std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>> ()(void)>::operator()@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>::__init_with_size[abi:ne200100]<std::tuple<CA::ValueRangeList,CA::StreamDescription>*,std::tuple<CA::ValueRangeList,CA::StreamDescription>*>(a2, *(a1 + 8), *(a1 + 16), (*(a1 + 16) - *(a1 + 8)) >> 6);
}

void std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>>(AMCP::Address const&,std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>> const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>>(AMCP::Address const&,std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>> const&)::{lambda(void)#1}>,std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>> ()(void)>::destroy_deallocate(void **a1)
{
  v2 = a1 + 1;
  std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>::__destroy_vector::operator()[abi:ne200100](&v2);

  operator delete(a1);
}

uint64_t *std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>>(AMCP::Address const&,std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>> const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>>(AMCP::Address const&,std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>> const&)::{lambda(void)#1}>,std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>> ()(void)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_1F597EEC8;
  a2[2] = 0;
  a2[3] = 0;
  a2[1] = 0;
  return std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>::__init_with_size[abi:ne200100]<std::tuple<CA::ValueRangeList,CA::StreamDescription>*,std::tuple<CA::ValueRangeList,CA::StreamDescription>*>(a2 + 1, *(a1 + 8), *(a1 + 16), (*(a1 + 16) - *(a1 + 8)) >> 6);
}

void std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>>(AMCP::Address const&,std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>> const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>>(AMCP::Address const&,std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>> const&)::{lambda(void)#1}>,std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>> ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F597EEC8;
  v1 = (a1 + 8);
  std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>::__destroy_vector::operator()[abi:ne200100](&v1);

  JUMPOUT(0x1E12C1730);
}

uint64_t std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>>(AMCP::Address const&,std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>> const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>>(AMCP::Address const&,std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>> const&)::{lambda(void)#1}>,std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>> ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F597EEC8;
  v3 = (a1 + 8);
  std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>::__destroy_vector::operator()[abi:ne200100](&v3);
  return a1;
}

uint64_t std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<AMCP::Direction>(AMCP::Address const&,AMCP::Direction const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<AMCP::Direction>(AMCP::Address const&,AMCP::Direction const&)::{lambda(void)#1}>,AMCP::Direction ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Core19Operation_Utilities22make_constant_propertyINS_9DirectionEEENSt3__110shared_ptrINS0_9OperationEEERKNS_7AddressERKT_EUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<AMCP::Direction>(AMCP::Address const&,AMCP::Direction const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<AMCP::Direction>(AMCP::Address const&,AMCP::Direction const&)::{lambda(void)#1}>,AMCP::Direction ()(void)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F598C988;
  *(a2 + 8) = *(result + 8);
  return result;
}

const void **AMCP::Core::Operation_Utilities::make_constant_property<applesauce::CF::URLRef>(AMCP::Address const&,applesauce::CF::URLRef const&)::{lambda(void)#1}::~Address(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void AMCP::Core::Operation_Utilities::add_generic_property_getter<applesauce::CF::URLRef>(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  std::unordered_map<AMCP::Type_ID,AMCP::Thing,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,std::allocator<std::pair<AMCP::Type_ID const,AMCP::Thing>>>::unordered_map(&v5, a1);
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v18 = AMCP::Implementation::get_type_marker<std::function<AMCP::Thing ()(void)>>();
  v2 = v5;
  v3 = v6;
  v5 = 0;
  v6 = 0;
  v12 = v2;
  v13 = v3;
  v14[0] = v7;
  v14[1] = v8;
  v15 = v9;
  if (v8)
  {
    v4 = *(v7 + 8);
    if ((v3 & (v3 - 1)) != 0)
    {
      if (v4 >= v3)
      {
        v4 %= v3;
      }
    }

    else
    {
      v4 &= v3 - 1;
    }

    *(v2 + 8 * v4) = v14;
    v7 = 0;
    v8 = 0;
  }

  v16 = v10;
  v17 = v11;
  v19 = 0;
  operator new();
}

void sub_1DE4E0B4C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<applesauce::CF::URLRef>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<applesauce::CF::URLRef>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Core19Operation_Utilities27add_generic_property_getterIN10applesauce2CF6URLRefEEEvRNS0_9OperationEEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<applesauce::CF::URLRef>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<applesauce::CF::URLRef>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::operator()(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  AMCP::Core::Operation::call_function<applesauce::CF::URLRef>(&cf, (a1 + 8));
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  AMCP::Implementation::In_Place_Storage<applesauce::CF::URLRef>::construct<applesauce::CF::URLRef&>(a2, &cf);
  if (cf)
  {
    CFRelease(cf);
  }
}

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<applesauce::CF::URLRef>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<applesauce::CF::URLRef>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::destroy_deallocate(void *a1)
{
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table(a1 + 8);

  operator delete(a1);
}

double std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<applesauce::CF::URLRef>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<applesauce::CF::URLRef>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F59889D8;
  std::unordered_map<AMCP::Type_ID,AMCP::Thing,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,std::allocator<std::pair<AMCP::Type_ID const,AMCP::Thing>>>::unordered_map((a2 + 8), a1 + 8);
  result = *(a1 + 48);
  *(a2 + 48) = result;
  *(a2 + 56) = *(a1 + 56);
  return result;
}

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<applesauce::CF::URLRef>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<applesauce::CF::URLRef>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F59889D8;
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table((a1 + 1));

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<applesauce::CF::URLRef>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<applesauce::CF::URLRef>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F59889D8;
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table((a1 + 1));
  return a1;
}

uint64_t std::__function::__value_func<applesauce::CF::URLRef ()(void)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<applesauce::CF::URLRef ()(void)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t AMCP::Implementation::In_Place_Storage<std::function<applesauce::CF::URLRef ()(void)>>::dispatch(int a1, uint64_t a2, AMCP::Thing *a3, uint64_t *a4)
{
  result = 0;
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        v9 = AMCP::Implementation::get_type_marker<std::function<applesauce::CF::URLRef ()(void)>>();
        result = 0;
        *a4 = v9;
        break;
      case 4:
        if (*a4 == AMCP::Implementation::get_type_marker<std::function<applesauce::CF::URLRef ()(void)>>())
        {
          return a2;
        }

        else
        {
          return 0;
        }

      case 6:
        v12 = 0;
        memset(v11, 0, sizeof(v11));
        AMCP::swap(v11, a3, a3);
        if (v12)
        {
          v12(0, v11, 0, 0);
        }

        return 0;
    }
  }

  else
  {
    if (!a1)
    {
LABEL_6:
      std::__function::__value_func<applesauce::CF::URLRef ()(void)>::~__value_func[abi:ne200100](a2);
      result = 0;
      *(a2 + 32) = 0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      return result;
    }

    if (a1 != 1)
    {
      if (a1 != 2)
      {
        return result;
      }

      *a3 = 0u;
      *(a3 + 1) = 0u;
      std::__function::__value_func<applesauce::CF::URLRef ()(void)>::__value_func[abi:ne200100](a3, a2);
      *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<applesauce::CF::URLRef ()(void)>>::dispatch;
      goto LABEL_6;
    }

    *a3 = 0u;
    *(a3 + 1) = 0u;
    v10 = *(a2 + 24);
    if (v10)
    {
      if (v10 == a2)
      {
        *(a3 + 3) = a3;
        (*(**(a2 + 24) + 24))(*(a2 + 24), a3);
      }

      else
      {
        *(a3 + 3) = (*(*v10 + 16))(v10);
      }
    }

    result = 0;
    *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<applesauce::CF::URLRef ()(void)>>::dispatch;
  }

  return result;
}

uint64_t std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<applesauce::CF::URLRef>(AMCP::Address const&,applesauce::CF::URLRef const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<applesauce::CF::URLRef>(AMCP::Address const&,applesauce::CF::URLRef const&)::{lambda(void)#1}>,applesauce::CF::URLRef ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Core19Operation_Utilities22make_constant_propertyIN10applesauce2CF6URLRefEEENSt3__110shared_ptrINS0_9OperationEEERKNS_7AddressERKT_EUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

CFTypeRef std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<applesauce::CF::URLRef>(AMCP::Address const&,applesauce::CF::URLRef const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<applesauce::CF::URLRef>(AMCP::Address const&,applesauce::CF::URLRef const&)::{lambda(void)#1}>,applesauce::CF::URLRef ()(void)>::operator()@<X0>(CFTypeRef result@<X0>, void *a2@<X8>)
{
  v3 = *(result + 1);
  if (v3)
  {
    result = CFRetain(*(result + 1));
  }

  *a2 = v3;
  return result;
}

void std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<applesauce::CF::URLRef>(AMCP::Address const&,applesauce::CF::URLRef const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<applesauce::CF::URLRef>(AMCP::Address const&,applesauce::CF::URLRef const&)::{lambda(void)#1}>,applesauce::CF::URLRef ()(void)>::destroy_deallocate(void *a1)
{
  std::__function::__alloc_func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<applesauce::CF::URLRef>(AMCP::Address const&,applesauce::CF::URLRef const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<applesauce::CF::URLRef>(AMCP::Address const&,applesauce::CF::URLRef const&)::{lambda(void)#1}>,applesauce::CF::URLRef ()(void)>::destroy[abi:ne200100](a1[1]);

  operator delete(a1);
}

void std::__function::__alloc_func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<applesauce::CF::URLRef>(AMCP::Address const&,applesauce::CF::URLRef const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<applesauce::CF::URLRef>(AMCP::Address const&,applesauce::CF::URLRef const&)::{lambda(void)#1}>,applesauce::CF::URLRef ()(void)>::destroy[abi:ne200100](const void *a1)
{
  if (a1)
  {
    CFRelease(a1);
  }
}

CFTypeRef std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<applesauce::CF::URLRef>(AMCP::Address const&,applesauce::CF::URLRef const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<applesauce::CF::URLRef>(AMCP::Address const&,applesauce::CF::URLRef const&)::{lambda(void)#1}>,applesauce::CF::URLRef ()(void)>::__clone(CFTypeRef result, void *a2)
{
  *a2 = &unk_1F5988948;
  v3 = *(result + 1);
  if (v3)
  {
    result = CFRetain(*(result + 1));
  }

  a2[1] = v3;
  return result;
}

void std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<applesauce::CF::URLRef>(AMCP::Address const&,applesauce::CF::URLRef const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<applesauce::CF::URLRef>(AMCP::Address const&,applesauce::CF::URLRef const&)::{lambda(void)#1}>,applesauce::CF::URLRef ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5988948;
  v1 = a1[1];
  if (v1)
  {
    CFRelease(v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<applesauce::CF::URLRef>(AMCP::Address const&,applesauce::CF::URLRef const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<applesauce::CF::URLRef>(AMCP::Address const&,applesauce::CF::URLRef const&)::{lambda(void)#1}>,applesauce::CF::URLRef ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5988948;
  v2 = a1[1];
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void std::__shared_ptr_emplace<Extrinsic_Driver_Portal>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 24);
}

void std::__shared_ptr_emplace<Extrinsic_Driver_Portal>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5974A90;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t AMCP::Implementation::generate_type_marker(AMCP::Implementation *this, const std::type_info *a2)
{
  if (atomic_load_explicit(&AMCP::Implementation::generate_type_marker(std::type_info const&)::s_once_flag, memory_order_acquire) != -1)
  {
    v55[0] = &__p;
    v51 = v55;
    std::__call_once(&AMCP::Implementation::generate_type_marker(std::type_info const&)::s_once_flag, &v51, std::__call_once_proxy[abi:ne200100]<std::tuple<AMCP::Implementation::generate_type_marker(std::type_info const&)::$_0 &&>>);
  }

  v3 = AMCP::Implementation::generate_type_marker(std::type_info const&)::s_type_map;
  std::mutex::lock(AMCP::Implementation::generate_type_marker(std::type_info const&)::s_type_map);
  v4 = *(this + 1);
  v5 = strlen((v4 & 0x7FFFFFFFFFFFFFFFLL));
  if (v5 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v6 = v5;
  if (v5 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = v5;
  if (v5)
  {
    memmove(&__dst, (v4 & 0x7FFFFFFFFFFFFFFFLL), v5);
  }

  __dst.__r_.__value_.__s.__data_[v6] = 0;
  v7 = *(v3 + 64);
  if (AMCP::Utility::Sorted_Vector<std::tuple<std::string,unsigned long>,AMCP::Utility::Extract_Key_Get_N<std::tuple<std::string,unsigned long>,0ul>,std::less<std::string>,std::allocator<std::tuple<std::string,unsigned long>>>::find(v7, *(v3 + 72), &__dst))
  {
    v9 = *(v8 + 24);
    goto LABEL_58;
  }

  v9 = *(v3 + 96) + 1;
  *(v3 + 96) = v9;
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
    v7 = *(v3 + 64);
  }

  else
  {
    __p = __dst;
  }

  v49 = v9;
  v10 = *(v3 + 72);
  v11 = AMCP::Utility::Sorted_Vector<std::tuple<std::string,unsigned long>,AMCP::Utility::Extract_Key_Get_N<std::tuple<std::string,unsigned long>,0ul>,std::less<std::string>,std::allocator<std::tuple<std::string,unsigned long>>>::find(v7, v10, &__p);
  v13 = v12;
  if (v11)
  {
    std::string::operator=(v12, &__p);
    v14 = v49;
LABEL_32:
    v13[1].__r_.__value_.__r.__words[0] = v14;
    goto LABEL_56;
  }

  v15 = *(v3 + 80);
  if (v10 >= v15)
  {
    v30 = ((v10 - v7) >> 5) + 1;
    if (v30 >> 59)
    {
      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v31 = v15 - v7;
    if (v31 >> 4 > v30)
    {
      v30 = v31 >> 4;
    }

    if (v31 >= 0x7FFFFFFFFFFFFFE0)
    {
      v32 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v32 = v30;
    }

    v54 = v3 + 64;
    if (v32)
    {
      std::allocator<std::tuple<std::string,unsigned long>>::allocate_at_least[abi:ne200100](v32);
    }

    v34 = v12 - v7;
    v35 = (v12 - v7) >> 5;
    v36 = (32 * v35);
    v51 = 0;
    v52 = 32 * v35;
    v53 = (32 * v35);
    if (!v35)
    {
      if (v34 < 1)
      {
        v37 = v34 >> 4;
        if (v12 == v7)
        {
          v38 = 1;
        }

        else
        {
          v38 = v37;
        }

        v55[4] = v3 + 64;
        std::allocator<std::tuple<std::string,unsigned long>>::allocate_at_least[abi:ne200100](v38);
      }

      v36 = (v36 - (((v34 >> 1) + 16) & 0xFFFFFFFFFFFFFFE0));
      v52 = v36;
      *&v53 = v36;
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(v36, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    }

    else
    {
      v39 = *&__p.__r_.__value_.__l.__data_;
      v36->__r_.__value_.__r.__words[2] = __p.__r_.__value_.__r.__words[2];
      *&v36->__r_.__value_.__l.__data_ = v39;
    }

    v36[1].__r_.__value_.__r.__words[0] = v49;
    v40 = v53 + 32;
    memcpy((v53 + 32), v13, *(v3 + 72) - v13);
    v41 = *(v3 + 64);
    *&v53 = v40 + *(v3 + 72) - v13;
    *(v3 + 72) = v13;
    v42 = v13 - v41;
    v43 = (v52 - (v13 - v41));
    memcpy(v43, v41, v42);
    v44 = *(v3 + 64);
    *(v3 + 64) = v43;
    v45 = *(v3 + 80);
    v46 = v53;
    v52 = v44;
    *&v53 = v44;
    *(v3 + 72) = v46;
    *(&v53 + 1) = v45;
    v51 = v44;
    std::__split_buffer<std::pair<std::string const,HALS_IOEngineInfo const*>>::~__split_buffer(&v51);
    goto LABEL_56;
  }

  if (v12 != v10)
  {
    v16 = &v10[-2].__r_.__value_.__r.__words[2];
    v17 = v10;
    if (v10 >= 0x20)
    {
      v18 = *v16;
      v10->__r_.__value_.__r.__words[2] = v10[-1].__r_.__value_.__l.__size_;
      *&v10->__r_.__value_.__l.__data_ = v18;
      v10[-1].__r_.__value_.__r.__words[0] = 0;
      v10[-1].__r_.__value_.__l.__size_ = 0;
      *v16 = 0;
      v10[1].__r_.__value_.__r.__words[0] = v10[-1].__r_.__value_.__r.__words[2];
      v17 = (v10 + 32);
    }

    *(v3 + 72) = v17;
    if (v10 != &v12[1].__r_.__value_.__r.__words[1])
    {
      v19 = 0;
      v20 = v12 - v10 + 32;
      do
      {
        v21 = v10 + v19;
        v22 = (&v10[-1] + v19 - 8);
        if (v10->__r_.__value_.__s.__data_[v19 - 9] < 0)
        {
          operator delete(*v22);
        }

        v23 = *(v21 - 4);
        v10->__r_.__value_.__r.__words[v19 / 8 - 2] = *(v21 - 6);
        *v22 = v23;
        *(v21 - 41) = 0;
        *(v21 - 64) = 0;
        *(v21 - 1) = *(v21 - 5);
        v19 -= 32;
      }

      while (v20 != v19);
      v17 = *(v3 + 72);
    }

    v24 = v13 <= &__p;
    v25 = v17 > &__p;
    v27 = v24 && v25;
    v26 = !v24 || !v25;
    v28 = 32;
    if (v26)
    {
      v28 = 0;
    }

    std::string::operator=(v13, (&__p + v28));
    v29 = 3;
    if (v27)
    {
      v29 = 7;
    }

    v14 = __p.__r_.__value_.__r.__words[v29];
    goto LABEL_32;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v10, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    v33 = *&__p.__r_.__value_.__l.__data_;
    v10->__r_.__value_.__r.__words[2] = __p.__r_.__value_.__r.__words[2];
    *&v10->__r_.__value_.__l.__data_ = v33;
  }

  v10[1].__r_.__value_.__r.__words[0] = v49;
  *(v3 + 72) = v10 + 32;
LABEL_56:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_58:
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  std::mutex::unlock(v3);
  return v9;
}

BOOL AMCP::Utility::Sorted_Vector<std::tuple<std::string,unsigned long>,AMCP::Utility::Extract_Key_Get_N<std::tuple<std::string,unsigned long>,0ul>,std::less<std::string>,std::allocator<std::tuple<std::string,unsigned long>>>::find(char *a1, char *a2, void *a3)
{
  if (a2 == a1)
  {
    v5 = a2;
  }

  else
  {
    v5 = a1;
    v6 = (a2 - a1) >> 5;
    do
    {
      v7 = &v5[32 * (v6 >> 1)];
      v8 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v7, a3);
      if (v8 >= 0)
      {
        v6 >>= 1;
      }

      else
      {
        v6 += ~(v6 >> 1);
      }

      if (v8 < 0)
      {
        v5 = v7 + 32;
      }
    }

    while (v6);
  }

  return v5 != a2 && (std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v5, a3) & 0x80) == 0 && (std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a3, v5) & 0x80) == 0;
}

void std::allocator<std::tuple<std::string,unsigned long>>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (!(a1 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t AMCP::Null::Object::do_set_property(AMCP::Null::Object *this, int a2, const AMCP::Address *a3, const AMCP::Thing *a4)
{
  if (*(this + 22) == a2)
  {
    v5 = *(this + 8);
    if (v5)
    {
      v5 = std::__shared_weak_count::lock(v5);
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    v7 = *a3;
    AMCP::local_get_property_traits_list(v5);
    if (!std::__hash_table<std::__hash_value_type<unsigned int,AMCP::Live_Property_Traits>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,AMCP::Live_Property_Traits>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,AMCP::Live_Property_Traits>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,AMCP::Live_Property_Traits>>>::find<unsigned int>(v7))
    {
      operator new();
    }

    if (*a3 == 1819173229)
    {
      operator new();
    }

    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }

  return 0;
}

void sub_1DE4E1E64(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<AMCP::Null::Object::do_set_property(unsigned int,AMCP::Address const&,AMCP::Thing const&)::$_1,std::allocator<AMCP::Null::Object::do_set_property(unsigned int,AMCP::Address const&,AMCP::Thing const&)::$_1>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Null6Object15do_set_propertyEjRKNS_7AddressERKNS_5ThingEE3$_1"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::Null::Object::do_set_property(unsigned int,AMCP::Address const&,AMCP::Thing const&)::$_1,std::allocator<AMCP::Null::Object::do_set_property(unsigned int,AMCP::Address const&,AMCP::Thing const&)::$_1>,void ()(void)>::operator()(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 8);
      if (!v5)
      {
LABEL_19:
        std::__shared_weak_count::__release_shared[abi:ne200100](v4);
        return;
      }

      MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v5[6]);
      v16[1] = MutableCopy;
      AMCP::Thing::convert_to<applesauce::CF::StringRef>(v16, a1 + 56);
      v7 = v16[0];
      if (!v16[0])
      {
        if (MutableCopy)
        {
          CFRelease(MutableCopy);
        }

        goto LABEL_19;
      }

      v12 = 0x676C6F626C6E616DLL;
      v13 = 0;
      AMCP::Address::to_string(&bytes, &v12, 0x676C6F626C6E616DLL);
      size = SHIBYTE(bytes.__r_.__value_.__r.__words[2]);
      if ((SHIBYTE(bytes.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
      {
        p_bytes = bytes.__r_.__value_.__r.__words[0];
        if (!bytes.__r_.__value_.__r.__words[0])
        {
          v15 = 0;
          mcp_applesauce::CF::Dictionary_Builder::set_value<applesauce::CF::StringRef,applesauce::CF::StringRef>(MutableCopy, 0, v7);
LABEL_13:
          if (SHIBYTE(bytes.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(bytes.__r_.__value_.__l.__data_);
          }

          mcp_applesauce::CF::Dictionary_Builder::copy_dictionary(&bytes, MutableCopy);
          (*(*v5 + 3))(v5, &bytes);
          if (bytes.__r_.__value_.__r.__words[0])
          {
            CFRelease(bytes.__r_.__value_.__l.__data_);
          }

          CFRelease(v7);
          if (MutableCopy)
          {
            CFRelease(MutableCopy);
          }

          goto LABEL_19;
        }

        size = bytes.__r_.__value_.__l.__size_;
      }

      else
      {
        p_bytes = &bytes;
      }

      v10 = CFStringCreateWithBytes(0, p_bytes, size, 0x8000100u, 0);
      v15 = v10;
      if (!v10)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
        __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      mcp_applesauce::CF::Dictionary_Builder::set_value<applesauce::CF::StringRef,applesauce::CF::StringRef>(MutableCopy, v10, v7);
      CFRelease(v10);
      goto LABEL_13;
    }
  }
}

void sub_1DE4E2098(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, const void *a17, const void *a18, const void *a19)
{
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(&a17);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  applesauce::CF::StringRef::~StringRef(&a18);
  mcp_applesauce::CF::Dictionary_Builder::~Dictionary_Builder(&a19);
  std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  _Unwind_Resume(a1);
}

void std::__function::__func<AMCP::Null::Object::do_set_property(unsigned int,AMCP::Address const&,AMCP::Thing const&)::$_1,std::allocator<AMCP::Null::Object::do_set_property(unsigned int,AMCP::Address const&,AMCP::Thing const&)::$_1>,void ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[11];
  if (v2)
  {
    v2(0, __p + 7, 0, 0);
  }

  v3 = __p[4];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = __p[2];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  operator delete(__p);
}

void std::__function::__func<AMCP::Null::Object::do_set_property(unsigned int,AMCP::Address const&,AMCP::Thing const&)::$_1,std::allocator<AMCP::Null::Object::do_set_property(unsigned int,AMCP::Address const&,AMCP::Thing const&)::$_1>,void ()(void)>::destroy(void *a1)
{
  v2 = a1[11];
  if (v2)
  {
    v2(0, a1 + 7, 0, 0);
  }

  v3 = a1[4];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = a1[2];
  if (v4)
  {

    std::__shared_weak_count::__release_weak(v4);
  }
}

uint64_t std::__function::__func<AMCP::Null::Object::do_set_property(unsigned int,AMCP::Address const&,AMCP::Thing const&)::$_1,std::allocator<AMCP::Null::Object::do_set_property(unsigned int,AMCP::Address const&,AMCP::Thing const&)::$_1>,void ()(void)>::__clone(uint64_t result, uint64_t a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_1F5975488;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  v4 = *(result + 32);
  *(a2 + 24) = *(result + 24);
  *(a2 + 32) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  *(a2 + 40) = *(result + 40);
  v5 = *(result + 48);
  *(a2 + 56) = 0u;
  *(a2 + 48) = v5;
  *(a2 + 72) = 0u;
  *(a2 + 88) = 0;
  v6 = *(result + 88);
  if (v6)
  {
    return v6(1, result + 56);
  }

  return result;
}

void sub_1DE4E2290(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 32);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(v1 + 16);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DE4E237C(_Unwind_Exception *a1)
{
  v3 = v1[4];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = v1[2];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

void std::__function::__func<AMCP::Null::Object::do_set_property(unsigned int,AMCP::Address const&,AMCP::Thing const&)::$_1,std::allocator<AMCP::Null::Object::do_set_property(unsigned int,AMCP::Address const&,AMCP::Thing const&)::$_1>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5975488;
  v2 = a1[11];
  if (v2)
  {
    v2(0, a1 + 7, 0, 0);
  }

  v3 = a1[4];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = a1[2];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::Null::Object::do_set_property(unsigned int,AMCP::Address const&,AMCP::Thing const&)::$_1,std::allocator<AMCP::Null::Object::do_set_property(unsigned int,AMCP::Address const&,AMCP::Thing const&)::$_1>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5975488;
  v2 = a1[11];
  if (v2)
  {
    v2(0, a1 + 7, 0, 0);
  }

  v3 = a1[4];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = a1[2];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  return a1;
}

uint64_t std::__function::__func<AMCP::Null::Object::do_set_property(unsigned int,AMCP::Address const&,AMCP::Thing const&)::$_0,std::allocator<AMCP::Null::Object::do_set_property(unsigned int,AMCP::Address const&,AMCP::Thing const&)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Null6Object15do_set_propertyEjRKNS_7AddressERKNS_5ThingEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::Null::Object::do_set_property(unsigned int,AMCP::Address const&,AMCP::Thing const&)::$_0,std::allocator<AMCP::Null::Object::do_set_property(unsigned int,AMCP::Address const&,AMCP::Thing const&)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 8);
      if (!v5)
      {
LABEL_21:
        std::__shared_weak_count::__release_shared[abi:ne200100](v4);
        return;
      }

      MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v5[6]);
      AMCP::Address::to_string(&bytes, (a1 + 40), v7);
      size = SHIBYTE(bytes.__r_.__value_.__r.__words[2]);
      if ((SHIBYTE(bytes.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
      {
        p_bytes = bytes.__r_.__value_.__r.__words[0];
        if (!bytes.__r_.__value_.__r.__words[0])
        {
          v10 = 0;
          v11 = 0;
          cf = 0;
          goto LABEL_12;
        }

        size = bytes.__r_.__value_.__l.__size_;
      }

      else
      {
        p_bytes = &bytes;
      }

      v10 = CFStringCreateWithBytes(0, p_bytes, size, 0x8000100u, 0);
      cf = v10;
      if (!v10)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
        __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      if ((SHIBYTE(bytes.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_13;
      }

      v11 = bytes.__r_.__value_.__r.__words[0];
LABEL_12:
      operator delete(v11);
LABEL_13:
      AMCP::make_description_from_thing(&bytes, (a1 + 56));
      v12 = bytes.__r_.__value_.__r.__words[0];
      mcp_applesauce::CF::Dictionary_Builder::set_value<applesauce::CF::StringRef,applesauce::CF::TypeRef>(MutableCopy, v10, bytes.__r_.__value_.__l.__data_);
      if (v12)
      {
        CFRelease(v12);
      }

      if (cf)
      {
        CFRelease(cf);
      }

      mcp_applesauce::CF::Dictionary_Builder::copy_dictionary(&bytes, MutableCopy);
      (*(*v5 + 3))(v5, &bytes);
      if (bytes.__r_.__value_.__r.__words[0])
      {
        CFRelease(bytes.__r_.__value_.__l.__data_);
      }

      if (MutableCopy)
      {
        CFRelease(MutableCopy);
      }

      goto LABEL_21;
    }
  }
}

void mcp_applesauce::CF::Dictionary_Builder::set_value<applesauce::CF::StringRef,applesauce::CF::TypeRef>(__CFDictionary *a1, const void *a2, const void *a3)
{
  if (a1)
  {
    CFDictionarySetValue(a1, a2, a3);
  }
}

void std::__function::__func<AMCP::Null::Object::do_set_property(unsigned int,AMCP::Address const&,AMCP::Thing const&)::$_0,std::allocator<AMCP::Null::Object::do_set_property(unsigned int,AMCP::Address const&,AMCP::Thing const&)::$_0>,void ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[11];
  if (v2)
  {
    v2(0, __p + 7, 0, 0);
  }

  v3 = __p[4];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = __p[2];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  operator delete(__p);
}

void std::__function::__func<AMCP::Null::Object::do_set_property(unsigned int,AMCP::Address const&,AMCP::Thing const&)::$_0,std::allocator<AMCP::Null::Object::do_set_property(unsigned int,AMCP::Address const&,AMCP::Thing const&)::$_0>,void ()(void)>::destroy(void *a1)
{
  v2 = a1[11];
  if (v2)
  {
    v2(0, a1 + 7, 0, 0);
  }

  v3 = a1[4];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = a1[2];
  if (v4)
  {

    std::__shared_weak_count::__release_weak(v4);
  }
}

uint64_t std::__function::__func<AMCP::Null::Object::do_set_property(unsigned int,AMCP::Address const&,AMCP::Thing const&)::$_0,std::allocator<AMCP::Null::Object::do_set_property(unsigned int,AMCP::Address const&,AMCP::Thing const&)::$_0>,void ()(void)>::__clone(uint64_t result, uint64_t a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_1F5975408;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  v4 = *(result + 32);
  *(a2 + 24) = *(result + 24);
  *(a2 + 32) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  *(a2 + 40) = *(result + 40);
  v5 = *(result + 48);
  *(a2 + 56) = 0u;
  *(a2 + 48) = v5;
  *(a2 + 72) = 0u;
  *(a2 + 88) = 0;
  v6 = *(result + 88);
  if (v6)
  {
    return v6(1, result + 56);
  }

  return result;
}

void sub_1DE4E2890(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 32);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(v1 + 16);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DE4E297C(_Unwind_Exception *a1)
{
  v3 = v1[4];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = v1[2];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

void std::__function::__func<AMCP::Null::Object::do_set_property(unsigned int,AMCP::Address const&,AMCP::Thing const&)::$_0,std::allocator<AMCP::Null::Object::do_set_property(unsigned int,AMCP::Address const&,AMCP::Thing const&)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5975408;
  v2 = a1[11];
  if (v2)
  {
    v2(0, a1 + 7, 0, 0);
  }

  v3 = a1[4];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = a1[2];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::Null::Object::do_set_property(unsigned int,AMCP::Address const&,AMCP::Thing const&)::$_0,std::allocator<AMCP::Null::Object::do_set_property(unsigned int,AMCP::Address const&,AMCP::Thing const&)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5975408;
  v2 = a1[11];
  if (v2)
  {
    v2(0, a1 + 7, 0, 0);
  }

  v3 = a1[4];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = a1[2];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  return a1;
}

void AMCP::Null::Object::populate_core(AMCP::Null::Object *this@<X0>, uint64_t a3@<X8>)
{
  v7 = *MEMORY[0x1E69E9840];
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 1065353216;
  v5 = 0x676C6F6269646E74;
  v6 = 0;
  LODWORD(bytes) = *(this + 22);
  AMCP::Core::Operation_Utilities::make_typed_property<unsigned int,std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<unsigned int>(AMCP::Address const&,unsigned int const&)::{lambda(void)#1}>(numBytes, &v5, &bytes);
}

void sub_1DE4E5398(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

const void *applesauce::CF::details::find_at_key_or_optional<applesauce::CF::TypeRef,applesauce::CF::StringRef>(uint64_t a1, CFDictionaryRef theDict, const void *a3)
{
  result = applesauce::CF::details::at_key<applesauce::CF::StringRef>(theDict, a3);
  if (result)
  {
    v5 = result;
    result = CFRetain(result);
    *a1 = v5;
    v6 = 1;
  }

  else
  {
    v6 = 0;
    *a1 = 0;
  }

  *(a1 + 8) = v6;
  return result;
}

void AMCP::Core::Operation_Utilities::add_specific_property_getter<applesauce::CF::StringRef>(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  std::unordered_map<AMCP::Type_ID,AMCP::Thing,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,std::allocator<std::pair<AMCP::Type_ID const,AMCP::Thing>>>::unordered_map(&v5, a1);
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v18 = AMCP::Implementation::get_type_marker<std::function<applesauce::CF::StringRef ()(void)>>();
  v2 = v5;
  v3 = v6;
  v5 = 0;
  v6 = 0;
  v12 = v2;
  v13 = v3;
  v14[0] = v7;
  v14[1] = v8;
  v15 = v9;
  if (v8)
  {
    v4 = *(v7 + 8);
    if ((v3 & (v3 - 1)) != 0)
    {
      if (v4 >= v3)
      {
        v4 %= v3;
      }
    }

    else
    {
      v4 &= v3 - 1;
    }

    *(v2 + 8 * v4) = v14;
    v7 = 0;
    v8 = 0;
  }

  v16 = v10;
  v17 = v11;
  v19 = 0;
  operator new();
}

void sub_1DE4E58BC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void AMCP::Core::Operation_Utilities::make_generic_constant_property<applesauce::CF::StringRef>(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = 0;
  memset(v6, 0, sizeof(v6));
  v5 = *(a3 + 32);
  if (v5)
  {
    v5(1, a3, v6, 0);
  }

  std::allocate_shared[abi:ne200100]<AMCP::Core::Operation,std::allocator<AMCP::Core::Operation>,AMCP::Address const&,0>(a1, a2);
}

void sub_1DE4E5AA8(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void AMCP::Core::Operation_Utilities::make_generic_constant_property<applesauce::CF::URLRef>(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = 0;
  memset(v6, 0, sizeof(v6));
  v5 = *(a3 + 32);
  if (v5)
  {
    v5(1, a3, v6, 0);
  }

  std::allocate_shared[abi:ne200100]<AMCP::Core::Operation,std::allocator<AMCP::Core::Operation>,AMCP::Address const&,0>(a1, a2);
}

void sub_1DE4E5E2C(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t *std::vector<void const*>::vector[abi:ne200100](uint64_t *a1, unint64_t a2, uint64_t *a3)
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

void sub_1DE4E5F50(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<AMCP::Null::Object::populate_core(unsigned int)::$_1,std::allocator<AMCP::Null::Object::populate_core(unsigned int)::$_1>,void ()(AMCP::Thing const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Null6Object13populate_coreEjE3$_1"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::Null::Object::populate_core(unsigned int)::$_1,std::allocator<AMCP::Null::Object::populate_core(unsigned int)::$_1>,void ()(AMCP::Thing const&)>::operator()(uint64_t a1, uint64_t a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 16);
  if (!v3 || (v3 = std::__shared_weak_count::lock(v3), (v5 = v3) == 0) || (v3 = *(a1 + 8)) == 0)
  {
    v11 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v11 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v3);
    }

    v13 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v12 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      v14 = *v13;
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }

    else
    {
      v14 = *v13;
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v25 = "Null_Object.cpp";
      v26 = 1024;
      v27 = 438;
      v28 = 2080;
      v29 = "object_ptr.operator BOOL() == false";
      _os_log_error_impl(&dword_1DE1F9000, v14, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s no model object", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v23);
    __cxa_allocate_exception(0x40uLL);
    std::runtime_error::runtime_error(&v16, "no model object");
    std::runtime_error::runtime_error(&v17, &v16);
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = -1;
    v17.__vftable = &unk_1F5992170;
    v18 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v17);
    v30 = "auto AMCP::Null::Object::populate_core(Address::Element)::(anonymous class)::operator()(const Thing &) const";
    v31 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Null/Null_Object.cpp";
    v32 = 438;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v15);
  }

  v6 = (*(*v3 + 40))(v3, v3[22], a1 + 24, a2);
  if ((v6 & 1) == 0)
  {
    v7 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v7 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v6);
    }

    v9 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v8 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      v10 = *v9;
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }

    else
    {
      v10 = *v9;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v25 = "Null_Object.cpp";
      v26 = 1024;
      v27 = 440;
      v28 = 2080;
      v29 = "was_handled == Object::Was_Handled::no";
      _os_log_error_impl(&dword_1DE1F9000, v10, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s not handled", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v23);
    __cxa_allocate_exception(0x40uLL);
    std::runtime_error::runtime_error(&v16, "not handled");
    std::runtime_error::runtime_error(&v17, &v16);
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = -1;
    v17.__vftable = &unk_1F5992170;
    v18 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v17);
    v30 = "auto AMCP::Null::Object::populate_core(Address::Element)::(anonymous class)::operator()(const Thing &) const";
    v31 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Null/Null_Object.cpp";
    v32 = 440;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v15);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v5);
}

void sub_1DE4E6450(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, std::runtime_error a17, ...)
{
  va_start(va, a17);
  if (__p)
  {
    operator delete(__p);
  }

  if (a9)
  {
    operator delete(a9);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(v20 - 128);
  boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(va);
  std::runtime_error::~runtime_error(&a17);
  if (v19)
  {
    __cxa_free_exception(v18);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v20 - 129));
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  _Unwind_Resume(a1);
}

void std::__function::__func<AMCP::Null::Object::populate_core(unsigned int)::$_1,std::allocator<AMCP::Null::Object::populate_core(unsigned int)::$_1>,void ()(AMCP::Thing const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<AMCP::Null::Object::populate_core(unsigned int)::$_1,std::allocator<AMCP::Null::Object::populate_core(unsigned int)::$_1>,void ()(AMCP::Thing const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

double std::__function::__func<AMCP::Null::Object::populate_core(unsigned int)::$_1,std::allocator<AMCP::Null::Object::populate_core(unsigned int)::$_1>,void ()(AMCP::Thing const&)>::__clone(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F5975388;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  result = *(a1 + 24);
  *(a2 + 24) = result;
  *(a2 + 32) = *(a1 + 32);
  return result;
}

void std::__function::__func<AMCP::Null::Object::populate_core(unsigned int)::$_1,std::allocator<AMCP::Null::Object::populate_core(unsigned int)::$_1>,void ()(AMCP::Thing const&)>::~__func(void *a1)
{
  *a1 = &unk_1F5975388;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::Null::Object::populate_core(unsigned int)::$_1,std::allocator<AMCP::Null::Object::populate_core(unsigned int)::$_1>,void ()(AMCP::Thing const&)>::~__func(void *a1)
{
  *a1 = &unk_1F5975388;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

uint64_t std::__function::__func<AMCP::Null::Object::populate_core(unsigned int)::$_0,std::allocator<AMCP::Null::Object::populate_core(unsigned int)::$_0>,AMCP::Thing ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Null6Object13populate_coreEjE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<AMCP::Null::Object::populate_core(unsigned int)::$_0,std::allocator<AMCP::Null::Object::populate_core(unsigned int)::$_0>,AMCP::Thing ()(void)>::operator()@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  v2 = *(result + 40);
  if (v2)
  {
    return v2(1, result + 8, a2, 0);
  }

  return result;
}

void std::__function::__func<AMCP::Null::Object::populate_core(unsigned int)::$_0,std::allocator<AMCP::Null::Object::populate_core(unsigned int)::$_0>,AMCP::Thing ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[5];
  if (v2)
  {
    v2(0, __p + 1, 0, 0);
  }

  operator delete(__p);
}

uint64_t std::__function::__func<AMCP::Null::Object::populate_core(unsigned int)::$_0,std::allocator<AMCP::Null::Object::populate_core(unsigned int)::$_0>,AMCP::Thing ()(void)>::destroy(uint64_t result)
{
  v1 = *(result + 40);
  if (v1)
  {
    return v1(0, result + 8, 0, 0);
  }

  return result;
}

uint64_t std::__function::__func<AMCP::Null::Object::populate_core(unsigned int)::$_0,std::allocator<AMCP::Null::Object::populate_core(unsigned int)::$_0>,AMCP::Thing ()(void)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5975308;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0;
  *(a2 + 8) = 0u;
  v2 = *(result + 40);
  if (v2)
  {
    return v2(1, result + 8, a2 + 8, 0);
  }

  return result;
}

void std::__function::__func<AMCP::Null::Object::populate_core(unsigned int)::$_0,std::allocator<AMCP::Null::Object::populate_core(unsigned int)::$_0>,AMCP::Thing ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5975308;
  v1 = a1[5];
  if (v1)
  {
    v1(0, a1 + 1, 0, 0);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::Null::Object::populate_core(unsigned int)::$_0,std::allocator<AMCP::Null::Object::populate_core(unsigned int)::$_0>,AMCP::Thing ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5975308;
  v2 = a1[5];
  if (v2)
  {
    v2(0, a1 + 1, 0, 0);
  }

  return a1;
}

uint64_t AMCP::Core::Operation_Utilities::make_generic_constant_property<applesauce::CF::URLRef>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1}::~Thing(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v2(0, a1, 0, 0);
  }

  return a1;
}

uint64_t std::__function::__func<void AMCP::Core::Operation_Utilities::add_specific_property_getter<applesauce::CF::URLRef>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_specific_property_getter<applesauce::CF::URLRef>(AMCP::Core::Operation &)::{lambda(void)#1}>,applesauce::CF::URLRef ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Core19Operation_Utilities28add_specific_property_getterIN10applesauce2CF6URLRefEEEvRNS0_9OperationEEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

CFTypeRef *std::__function::__func<void AMCP::Core::Operation_Utilities::add_specific_property_getter<applesauce::CF::URLRef>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_specific_property_getter<applesauce::CF::URLRef>(AMCP::Core::Operation &)::{lambda(void)#1}>,applesauce::CF::URLRef ()(void)>::operator()@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  AMCP::Core::Operation::call_function<AMCP::Thing>(v4, (a1 + 8));
  result = AMCP::Thing::convert_to<applesauce::CF::URLRef>(a2, v4);
  if (v5)
  {
    return v5(0, v4, 0, 0);
  }

  return result;
}

void sub_1DE4E6AD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AMCP::Thing::~Thing(va);
  _Unwind_Resume(a1);
}

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_specific_property_getter<applesauce::CF::URLRef>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_specific_property_getter<applesauce::CF::URLRef>(AMCP::Core::Operation &)::{lambda(void)#1}>,applesauce::CF::URLRef ()(void)>::destroy_deallocate(void *a1)
{
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table(a1 + 8);

  operator delete(a1);
}

double std::__function::__func<void AMCP::Core::Operation_Utilities::add_specific_property_getter<applesauce::CF::URLRef>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_specific_property_getter<applesauce::CF::URLRef>(AMCP::Core::Operation &)::{lambda(void)#1}>,applesauce::CF::URLRef ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5975288;
  std::unordered_map<AMCP::Type_ID,AMCP::Thing,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,std::allocator<std::pair<AMCP::Type_ID const,AMCP::Thing>>>::unordered_map((a2 + 8), a1 + 8);
  result = *(a1 + 48);
  *(a2 + 48) = result;
  *(a2 + 56) = *(a1 + 56);
  return result;
}

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_specific_property_getter<applesauce::CF::URLRef>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_specific_property_getter<applesauce::CF::URLRef>(AMCP::Core::Operation &)::{lambda(void)#1}>,applesauce::CF::URLRef ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5975288;
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table((a1 + 1));

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<void AMCP::Core::Operation_Utilities::add_specific_property_getter<applesauce::CF::URLRef>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_specific_property_getter<applesauce::CF::URLRef>(AMCP::Core::Operation &)::{lambda(void)#1}>,applesauce::CF::URLRef ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5975288;
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table((a1 + 1));
  return a1;
}

uint64_t std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<applesauce::CF::URLRef>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<applesauce::CF::URLRef>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Core19Operation_Utilities30make_generic_constant_propertyIN10applesauce2CF6URLRefEEENSt3__110shared_ptrINS0_9OperationEEERKNS_7AddressERKNS_5ThingEEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<applesauce::CF::URLRef>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<applesauce::CF::URLRef>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::operator()@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  v2 = *(result + 40);
  if (v2)
  {
    return v2(1, result + 8, a2, 0);
  }

  return result;
}

void std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<applesauce::CF::URLRef>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<applesauce::CF::URLRef>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[5];
  if (v2)
  {
    v2(0, __p + 1, 0, 0);
  }

  operator delete(__p);
}

uint64_t std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<applesauce::CF::URLRef>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<applesauce::CF::URLRef>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::destroy(uint64_t result)
{
  v1 = *(result + 40);
  if (v1)
  {
    return v1(0, result + 8, 0, 0);
  }

  return result;
}

uint64_t std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<applesauce::CF::URLRef>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<applesauce::CF::URLRef>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5975208;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0;
  *(a2 + 8) = 0u;
  v2 = *(result + 40);
  if (v2)
  {
    return v2(1, result + 8, a2 + 8, 0);
  }

  return result;
}

void std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<applesauce::CF::URLRef>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<applesauce::CF::URLRef>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5975208;
  v1 = a1[5];
  if (v1)
  {
    v1(0, a1 + 1, 0, 0);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<applesauce::CF::URLRef>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<applesauce::CF::URLRef>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5975208;
  v2 = a1[5];
  if (v2)
  {
    v2(0, a1 + 1, 0, 0);
  }

  return a1;
}

uint64_t AMCP::Core::Operation_Utilities::make_generic_constant_property<applesauce::CF::StringRef>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1}::~Thing(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v2(0, a1, 0, 0);
  }

  return a1;
}

uint64_t std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<applesauce::CF::StringRef>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<applesauce::CF::StringRef>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Core19Operation_Utilities30make_generic_constant_propertyIN10applesauce2CF9StringRefEEENSt3__110shared_ptrINS0_9OperationEEERKNS_7AddressERKNS_5ThingEEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<applesauce::CF::StringRef>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<applesauce::CF::StringRef>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::operator()@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  v2 = *(result + 40);
  if (v2)
  {
    return v2(1, result + 8, a2, 0);
  }

  return result;
}

void std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<applesauce::CF::StringRef>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<applesauce::CF::StringRef>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[5];
  if (v2)
  {
    v2(0, __p + 1, 0, 0);
  }

  operator delete(__p);
}

uint64_t std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<applesauce::CF::StringRef>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<applesauce::CF::StringRef>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::destroy(uint64_t result)
{
  v1 = *(result + 40);
  if (v1)
  {
    return v1(0, result + 8, 0, 0);
  }

  return result;
}

uint64_t std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<applesauce::CF::StringRef>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<applesauce::CF::StringRef>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5975188;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0;
  *(a2 + 8) = 0u;
  v2 = *(result + 40);
  if (v2)
  {
    return v2(1, result + 8, a2 + 8, 0);
  }

  return result;
}

void std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<applesauce::CF::StringRef>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<applesauce::CF::StringRef>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5975188;
  v1 = a1[5];
  if (v1)
  {
    v1(0, a1 + 1, 0, 0);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<applesauce::CF::StringRef>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<applesauce::CF::StringRef>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5975188;
  v2 = a1[5];
  if (v2)
  {
    v2(0, a1 + 1, 0, 0);
  }

  return a1;
}

uint64_t std::__function::__func<void AMCP::Core::Operation_Utilities::add_specific_property_setter<applesauce::CF::StringRef>(AMCP::Core::Operation &)::{lambda(applesauce::CF::StringRef const&)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_specific_property_setter<applesauce::CF::StringRef>(AMCP::Core::Operation &)::{lambda(applesauce::CF::StringRef const&)#1}>,void ()(applesauce::CF::StringRef const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Core19Operation_Utilities28add_specific_property_setterIN10applesauce2CF9StringRefEEEvRNS0_9OperationEEUlRKS5_E_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<void AMCP::Core::Operation_Utilities::add_specific_property_setter<applesauce::CF::StringRef>(AMCP::Core::Operation &)::{lambda(applesauce::CF::StringRef const&)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_specific_property_setter<applesauce::CF::StringRef>(AMCP::Core::Operation &)::{lambda(applesauce::CF::StringRef const&)#1}>,void ()(applesauce::CF::StringRef const&)>::operator()(uint64_t a1, CFTypeRef *a2)
{
  v5 = 0;
  memset(v4, 0, sizeof(v4));
  AMCP::Implementation::In_Place_Storage<applesauce::CF::StringRef>::construct<applesauce::CF::StringRef const&>(v4, a2);
  result = AMCP::Core::Operation::call_function<void,AMCP::Thing const&>((a1 + 8), v4);
  if (v5)
  {
    return v5(0, v4, 0, 0);
  }

  return result;
}

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_specific_property_setter<applesauce::CF::StringRef>(AMCP::Core::Operation &)::{lambda(applesauce::CF::StringRef const&)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_specific_property_setter<applesauce::CF::StringRef>(AMCP::Core::Operation &)::{lambda(applesauce::CF::StringRef const&)#1}>,void ()(applesauce::CF::StringRef const&)>::destroy_deallocate(void *a1)
{
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table(a1 + 8);

  operator delete(a1);
}

double std::__function::__func<void AMCP::Core::Operation_Utilities::add_specific_property_setter<applesauce::CF::StringRef>(AMCP::Core::Operation &)::{lambda(applesauce::CF::StringRef const&)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_specific_property_setter<applesauce::CF::StringRef>(AMCP::Core::Operation &)::{lambda(applesauce::CF::StringRef const&)#1}>,void ()(applesauce::CF::StringRef const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5975108;
  std::unordered_map<AMCP::Type_ID,AMCP::Thing,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,std::allocator<std::pair<AMCP::Type_ID const,AMCP::Thing>>>::unordered_map((a2 + 8), a1 + 8);
  result = *(a1 + 48);
  *(a2 + 48) = result;
  *(a2 + 56) = *(a1 + 56);
  return result;
}

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_specific_property_setter<applesauce::CF::StringRef>(AMCP::Core::Operation &)::{lambda(applesauce::CF::StringRef const&)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_specific_property_setter<applesauce::CF::StringRef>(AMCP::Core::Operation &)::{lambda(applesauce::CF::StringRef const&)#1}>,void ()(applesauce::CF::StringRef const&)>::~__func(void *a1)
{
  *a1 = &unk_1F5975108;
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table((a1 + 1));

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<void AMCP::Core::Operation_Utilities::add_specific_property_setter<applesauce::CF::StringRef>(AMCP::Core::Operation &)::{lambda(applesauce::CF::StringRef const&)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_specific_property_setter<applesauce::CF::StringRef>(AMCP::Core::Operation &)::{lambda(applesauce::CF::StringRef const&)#1}>,void ()(applesauce::CF::StringRef const&)>::~__func(void *a1)
{
  *a1 = &unk_1F5975108;
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table((a1 + 1));
  return a1;
}

uint64_t std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1819173229u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(AMCP::Thing const&)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1819173229u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(AMCP::Thing const&)#1}>,void ()(AMCP::Thing const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4NullL22make_settable_propertyILj1819173229EEENSt3__110shared_ptrINS_4Core9OperationEEENS3_INS0_6ObjectEEERKNS_7AddressERKN10applesauce2CF13DictionaryRefERKNS2_8optionalINS_5ThingEEEEUlRKSI_E_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1819173229u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(AMCP::Thing const&)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1819173229u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(AMCP::Thing const&)#1}>,void ()(AMCP::Thing const&)>::operator()(uint64_t a1, uint64_t a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 16);
  if (!v3 || (v3 = std::__shared_weak_count::lock(v3), (v5 = v3) == 0) || (v3 = *(a1 + 8)) == 0)
  {
    v11 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v11 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v3);
    }

    v13 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v12 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      v14 = *v13;
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }

    else
    {
      v14 = *v13;
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v25 = "Null_Object.cpp";
      v26 = 1024;
      v27 = 59;
      v28 = 2080;
      v29 = "object_ptr.operator BOOL() == false";
      _os_log_error_impl(&dword_1DE1F9000, v14, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s no model object", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v23);
    __cxa_allocate_exception(0x40uLL);
    std::runtime_error::runtime_error(&v16, "no model object");
    std::runtime_error::runtime_error(&v17, &v16);
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = -1;
    v17.__vftable = &unk_1F5992170;
    v18 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v17);
    v30 = "auto AMCP::Null::make_settable_property(Object_Ptr, const Address &, const CF::Dictionary &, const std::optional<Thing> &)::(anonymous class)::operator()(const Thing &) const";
    v31 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Null/Null_Object.cpp";
    v32 = 59;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v15);
  }

  v6 = (*(*v3 + 40))(v3, v3[22], a1 + 24, a2);
  if ((v6 & 1) == 0)
  {
    v7 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v7 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v6);
    }

    v9 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v8 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      v10 = *v9;
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }

    else
    {
      v10 = *v9;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v25 = "Null_Object.cpp";
      v26 = 1024;
      v27 = 61;
      v28 = 2080;
      v29 = "was_handled == Object::Was_Handled::no";
      _os_log_error_impl(&dword_1DE1F9000, v10, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s not handled", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v23);
    __cxa_allocate_exception(0x40uLL);
    std::runtime_error::runtime_error(&v16, "not handled");
    std::runtime_error::runtime_error(&v17, &v16);
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = -1;
    v17.__vftable = &unk_1F5992170;
    v18 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v17);
    v30 = "auto AMCP::Null::make_settable_property(Object_Ptr, const Address &, const CF::Dictionary &, const std::optional<Thing> &)::(anonymous class)::operator()(const Thing &) const";
    v31 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Null/Null_Object.cpp";
    v32 = 61;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v15);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v5);
}

void sub_1DE4E79F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, std::runtime_error a17, ...)
{
  va_start(va, a17);
  if (__p)
  {
    operator delete(__p);
  }

  if (a9)
  {
    operator delete(a9);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(v20 - 128);
  boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(va);
  std::runtime_error::~runtime_error(&a17);
  if (v19)
  {
    __cxa_free_exception(v18);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v20 - 129));
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  _Unwind_Resume(a1);
}

void std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1819173229u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(AMCP::Thing const&)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1819173229u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(AMCP::Thing const&)#1}>,void ()(AMCP::Thing const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1819173229u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(AMCP::Thing const&)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1819173229u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(AMCP::Thing const&)#1}>,void ()(AMCP::Thing const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

double std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1819173229u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(AMCP::Thing const&)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1819173229u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(AMCP::Thing const&)#1}>,void ()(AMCP::Thing const&)>::__clone(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F5975088;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  result = *(a1 + 24);
  *(a2 + 24) = result;
  *(a2 + 32) = *(a1 + 32);
  return result;
}

void std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1819173229u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(AMCP::Thing const&)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1819173229u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(AMCP::Thing const&)#1}>,void ()(AMCP::Thing const&)>::~__func(void *a1)
{
  *a1 = &unk_1F5975088;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1819173229u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(AMCP::Thing const&)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1819173229u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(AMCP::Thing const&)#1}>,void ()(AMCP::Thing const&)>::~__func(void *a1)
{
  *a1 = &unk_1F5975088;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

uint64_t std::__function::__func<void AMCP::Core::Operation_Utilities::add_specific_property_getter<applesauce::CF::StringRef>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_specific_property_getter<applesauce::CF::StringRef>(AMCP::Core::Operation &)::{lambda(void)#1}>,applesauce::CF::StringRef ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Core19Operation_Utilities28add_specific_property_getterIN10applesauce2CF9StringRefEEEvRNS0_9OperationEEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

CFTypeRef *std::__function::__func<void AMCP::Core::Operation_Utilities::add_specific_property_getter<applesauce::CF::StringRef>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_specific_property_getter<applesauce::CF::StringRef>(AMCP::Core::Operation &)::{lambda(void)#1}>,applesauce::CF::StringRef ()(void)>::operator()@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  AMCP::Core::Operation::call_function<AMCP::Thing>(v4, (a1 + 8));
  result = AMCP::Thing::convert_to<applesauce::CF::StringRef>(a2, v4);
  if (v5)
  {
    return v5(0, v4, 0, 0);
  }

  return result;
}

void sub_1DE4E7D70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AMCP::Thing::~Thing(va);
  _Unwind_Resume(a1);
}

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_specific_property_getter<applesauce::CF::StringRef>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_specific_property_getter<applesauce::CF::StringRef>(AMCP::Core::Operation &)::{lambda(void)#1}>,applesauce::CF::StringRef ()(void)>::destroy_deallocate(void *a1)
{
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table(a1 + 8);

  operator delete(a1);
}

double std::__function::__func<void AMCP::Core::Operation_Utilities::add_specific_property_getter<applesauce::CF::StringRef>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_specific_property_getter<applesauce::CF::StringRef>(AMCP::Core::Operation &)::{lambda(void)#1}>,applesauce::CF::StringRef ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5975008;
  std::unordered_map<AMCP::Type_ID,AMCP::Thing,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,std::allocator<std::pair<AMCP::Type_ID const,AMCP::Thing>>>::unordered_map((a2 + 8), a1 + 8);
  result = *(a1 + 48);
  *(a2 + 48) = result;
  *(a2 + 56) = *(a1 + 56);
  return result;
}

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_specific_property_getter<applesauce::CF::StringRef>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_specific_property_getter<applesauce::CF::StringRef>(AMCP::Core::Operation &)::{lambda(void)#1}>,applesauce::CF::StringRef ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5975008;
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table((a1 + 1));

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<void AMCP::Core::Operation_Utilities::add_specific_property_getter<applesauce::CF::StringRef>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_specific_property_getter<applesauce::CF::StringRef>(AMCP::Core::Operation &)::{lambda(void)#1}>,applesauce::CF::StringRef ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5975008;
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table((a1 + 1));
  return a1;
}

uint64_t std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1819173229u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1819173229u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4NullL22make_settable_propertyILj1819173229EEENSt3__110shared_ptrINS_4Core9OperationEEENS3_INS0_6ObjectEEERKNS_7AddressERKN10applesauce2CF13DictionaryRefERKNS2_8optionalINS_5ThingEEEEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1819173229u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1819173229u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::operator()@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  v2 = *(result + 40);
  if (v2)
  {
    return v2(1, result + 8, a2, 0);
  }

  return result;
}

void std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1819173229u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1819173229u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[5];
  if (v2)
  {
    v2(0, __p + 1, 0, 0);
  }

  operator delete(__p);
}

uint64_t std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1819173229u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1819173229u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::destroy(uint64_t result)
{
  v1 = *(result + 40);
  if (v1)
  {
    return v1(0, result + 8, 0, 0);
  }

  return result;
}

uint64_t std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1819173229u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1819173229u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5974F88;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0;
  *(a2 + 8) = 0u;
  v2 = *(result + 40);
  if (v2)
  {
    return v2(1, result + 8, a2 + 8, 0);
  }

  return result;
}

void std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1819173229u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1819173229u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5974F88;
  v1 = a1[5];
  if (v1)
  {
    v1(0, a1 + 1, 0, 0);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1819173229u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1819173229u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5974F88;
  v2 = a1[5];
  if (v2)
  {
    v2(0, a1 + 1, 0, 0);
  }

  return a1;
}

uint64_t AMCP::Null::Object::handle_set_property(AMCP::Null::Object *this, uint64_t a2, const AMCP::Address *a3, const AMCP::Thing *a4)
{
  v8 = *(this + 8);
  if (v8)
  {
    v9 = std::__shared_weak_count::lock(v8);
    if (v9)
    {
      v10 = *(this + 7);
      if (v10)
      {
        v11 = (*(*v10 + 40))(v10, a2, a3, a4);
        if (v11)
        {
          v12 = v11;
          v13 = HIBYTE(v11);
LABEL_8:
          std::__shared_weak_count::__release_shared[abi:ne200100](v9);
          return v12 | (v13 << 8);
        }
      }
    }
  }

  else
  {
    v9 = 0;
  }

  v14 = (*(*this + 56))(this, a2, a3, a4);
  v12 = v14;
  v13 = HIBYTE(v14);
  if (v9)
  {
    goto LABEL_8;
  }

  return v12 | (v13 << 8);
}

void AMCP::Null::Object::destroy_cores(AMCP::Null::Object *this)
{
  v40 = *MEMORY[0x1E69E9840];
  v2 = *(this + 12);
  v3 = *(this + 13);
  while (v2 != v3)
  {
    v4 = *v2;
    v2 += 2;
    (*(*v4 + 32))(v4);
  }

  if (*(this + 22))
  {
    is_base_of = AMCP::is_base_of(0x61636C6B, *(this + 21));
    if (!is_base_of)
    {
LABEL_48:
      AMCP::Core::Broker::destroy_core(*(*(this + 1) + 16), *(this + 22));
      *(this + 22) = 0;
      return;
    }

    v6 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v6 & 1) == 0)
    {
      is_base_of = AMCP::Log::AMCP_Scope_Registry::initialize(is_base_of);
    }

    v7 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v8 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v9 = *(v7 + 16);
    switch(v9)
    {
      case 3:
        v18 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v18 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(is_base_of);
        }

        v20 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v19 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v19)
        {
          atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
          v21 = *v20;
          std::__shared_weak_count::__release_shared[abi:ne200100](v19);
        }

        else
        {
          v21 = *v20;
        }

        if (!os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          goto LABEL_46;
        }

        v24 = *(this + 22);
        AMCP::make_string_for_class_id(__p, *(this + 20));
        if (v31 >= 0)
        {
          v25 = __p;
        }

        else
        {
          v25 = __p[0];
        }

        *buf = 136315906;
        v33 = "Null_Object.cpp";
        v34 = 1024;
        v35 = 325;
        v36 = 1024;
        v37 = v24;
        v38 = 2080;
        v39 = v25;
        v26 = v21;
        v27 = OS_LOG_TYPE_INFO;
        break;
      case 2:
        v14 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v14 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(is_base_of);
        }

        v16 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v15 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v15)
        {
          atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
          v17 = *v16;
          std::__shared_weak_count::__release_shared[abi:ne200100](v15);
        }

        else
        {
          v17 = *v16;
        }

        if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_46;
        }

        v22 = *(this + 22);
        AMCP::make_string_for_class_id(__p, *(this + 20));
        if (v31 >= 0)
        {
          v23 = __p;
        }

        else
        {
          v23 = __p[0];
        }

        *buf = 136315906;
        v33 = "Null_Object.cpp";
        v34 = 1024;
        v35 = 325;
        v36 = 1024;
        v37 = v22;
        v38 = 2080;
        v39 = v23;
        _os_log_debug_impl(&dword_1DE1F9000, v17, OS_LOG_TYPE_DEBUG, "%32s:%-5d Destroying Core %u for %s", buf, 0x22u);
        goto LABEL_44;
      case 1:
        v10 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v10 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(is_base_of);
        }

        v12 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v11 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v11)
        {
          atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
          v13 = *v12;
          std::__shared_weak_count::__release_shared[abi:ne200100](v11);
        }

        else
        {
          v13 = *v12;
        }

        if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_46;
        }

        v28 = *(this + 22);
        AMCP::make_string_for_class_id(__p, *(this + 20));
        if (v31 >= 0)
        {
          v29 = __p;
        }

        else
        {
          v29 = __p[0];
        }

        *buf = 136315906;
        v33 = "Null_Object.cpp";
        v34 = 1024;
        v35 = 325;
        v36 = 1024;
        v37 = v28;
        v38 = 2080;
        v39 = v29;
        v26 = v13;
        v27 = OS_LOG_TYPE_DEFAULT;
        break;
      default:
        goto LABEL_46;
    }

    _os_log_impl(&dword_1DE1F9000, v26, v27, "%32s:%-5d Destroying Core %u for %s", buf, 0x22u);
LABEL_44:
    if (v31 < 0)
    {
      operator delete(__p[0]);
    }

LABEL_46:
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }

    goto LABEL_48;
  }
}

void sub_1DE4E86A0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void AMCP::Null::Object::update_cores(AMCP::Null::Object *this, const __CFDictionary **a2)
{
  v96 = *MEMORY[0x1E69E9840];
  if (!*a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    goto LABEL_157;
  }

  *&v88 = 0x676C6F62636C6173;
  DWORD2(v88) = 0;
  AMCP::Address::to_string(bytes, &v88, 0x676C6F62636C6173);
  v4 = bytes[23];
  if ((bytes[23] & 0x8000000000000000) != 0)
  {
    v5 = *bytes;
    if (!*bytes)
    {
      v6 = 0;
      v85 = 0;
      goto LABEL_7;
    }

    v4 = *&bytes[8];
  }

  else
  {
    v5 = bytes;
  }

  v6 = CFStringCreateWithBytes(0, v5, v4, 0x8000100u, 0);
  v85 = v6;
  if (!v6)
  {
    v74 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v74, "Could not construct");
    __cxa_throw(v74, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

LABEL_7:
  LODWORD(valuePtr[0]) = 0;
  cf = CFNumberCreate(0, kCFNumberIntType, valuePtr);
  if (!cf)
  {
    v73 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v73, "Could not construct");
    __cxa_throw(v73, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  applesauce::CF::at_or<applesauce::CF::NumberRef,applesauce::CF::StringRef>(valuePtr, *a2, v6, &cf);
  v7 = valuePtr[0];
  if (!valuePtr[0])
  {
    goto LABEL_156;
  }

  v8 = applesauce::CF::convert_to<unsigned int,0>(valuePtr[0]);
  CFRelease(v7);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  if ((bytes[23] & 0x80000000) != 0)
  {
    operator delete(*bytes);
  }

  stock_class_id = AMCP::Null::get_stock_class_id(a2, v8);
  if (*(this + 20) != v8)
  {
    v64 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v64 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(stock_class_id);
    }

    v66 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v65 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v65)
    {
      atomic_fetch_add_explicit(&v65->__shared_owners_, 1uLL, memory_order_relaxed);
      v67 = *v66;
      std::__shared_weak_count::__release_shared[abi:ne200100](v65);
    }

    else
    {
      v67 = *v66;
    }

    if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
    {
      *bytes = 136315650;
      *&bytes[4] = "Null_Object.cpp";
      *&bytes[12] = 1024;
      *&bytes[14] = 279;
      *&bytes[18] = 2080;
      *&bytes[20] = "m_core_class_id == new_core_class_id";
      v71 = "%32s:%-5d Assertion Failed: %s new description can't change the class";
LABEL_152:
      _os_log_error_impl(&dword_1DE1F9000, v67, OS_LOG_TYPE_ERROR, v71, bytes, 0x1Cu);
    }

LABEL_153:
    abort();
  }

  if (*(this + 21) != stock_class_id)
  {
    v68 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v68 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(stock_class_id);
    }

    v70 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v69 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v69)
    {
      atomic_fetch_add_explicit(&v69->__shared_owners_, 1uLL, memory_order_relaxed);
      v67 = *v70;
      std::__shared_weak_count::__release_shared[abi:ne200100](v69);
    }

    else
    {
      v67 = *v70;
    }

    if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
    {
      *bytes = 136315650;
      *&bytes[4] = "Null_Object.cpp";
      *&bytes[12] = 1024;
      *&bytes[14] = 280;
      *&bytes[18] = 2080;
      *&bytes[20] = "m_core_stock_class_id == new_core_stock_class_id";
      v71 = "%32s:%-5d Assertion Failed: %s new description can't change the stock class";
      goto LABEL_152;
    }

    goto LABEL_153;
  }

  v11 = (this + 48);
  if (!*(this + 6))
  {
LABEL_156:
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
LABEL_157:
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  *&v88 = 0x676C6F626374726CLL;
  DWORD2(v88) = 0;
  AMCP::Address::to_string(bytes, &v88, v10);
  v12 = bytes[23];
  if ((bytes[23] & 0x8000000000000000) != 0)
  {
    v13 = *bytes;
    if (!*bytes)
    {
      valuePtr[0] = 0;
      applesauce::CF::details::find_at_key_or_optional<applesauce::CF::ArrayRef,applesauce::CF::StringRef>(&cf, *v11, 0);
      goto LABEL_24;
    }

    v12 = *&bytes[8];
  }

  else
  {
    v13 = bytes;
  }

  v14 = CFStringCreateWithBytes(0, v13, v12, 0x8000100u, 0);
  valuePtr[0] = v14;
  if (!v14)
  {
    v75 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v75, "Could not construct");
    __cxa_throw(v75, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  applesauce::CF::details::find_at_key_or_optional<applesauce::CF::ArrayRef,applesauce::CF::StringRef>(&cf, *v11, v14);
  CFRelease(v14);
LABEL_24:
  if ((bytes[23] & 0x80000000) != 0)
  {
    operator delete(*bytes);
  }

  if (!*a2)
  {
    goto LABEL_156;
  }

  *&v88 = 0x676C6F626374726CLL;
  DWORD2(v88) = 0;
  AMCP::Address::to_string(bytes, &v88, v15);
  v16 = bytes[23];
  if ((bytes[23] & 0x8000000000000000) != 0)
  {
    v17 = *bytes;
    if (!*bytes)
    {
      valuePtr[0] = 0;
      applesauce::CF::details::find_at_key_or_optional<applesauce::CF::ArrayRef,applesauce::CF::StringRef>(&v81, *a2, 0);
      goto LABEL_33;
    }

    v16 = *&bytes[8];
  }

  else
  {
    v17 = bytes;
  }

  v18 = CFStringCreateWithBytes(0, v17, v16, 0x8000100u, 0);
  valuePtr[0] = v18;
  if (!v18)
  {
    v76 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v76, "Could not construct");
    __cxa_throw(v76, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  applesauce::CF::details::find_at_key_or_optional<applesauce::CF::ArrayRef,applesauce::CF::StringRef>(&v81, *a2, v18);
  CFRelease(v18);
LABEL_33:
  if ((bytes[23] & 0x80000000) != 0)
  {
    operator delete(*bytes);
  }

  v19 = *v11;
  v20 = *a2;
  *v11 = *a2;
  if (v20)
  {
    CFRetain(v20);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  v21 = *(this + 22);
  if (!v21)
  {
    (*(*this + 16))(this);
    goto LABEL_131;
  }

  AMCP::Core::Broker::fetch_core(&v79, *(*(this + 1) + 16), v21);
  v22 = v79;
  if (v79)
  {
    v23 = AMCP::Null::calculate_max_element(this + 6, *(this + 21));
    (*(*this + 48))(bytes, this, v23);
    *&v88 = v22 + 48;
    BYTE8(v88) = 1;
    caulk::concurrent::shared_spin_lock::lock((v22 + 48));
    v24 = *&bytes[16];
    if (*&bytes[16])
    {
      do
      {
        std::unordered_map<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,std::shared_ptr<AMCP::Core::Operation>>>>::insert_or_assign[abi:ne200100]<std::shared_ptr<AMCP::Core::Operation> const&>((v22 + 8), (v24[4] + 40), v24 + 4);
        v24 = *v24;
      }

      while (v24);
    }

    caulk::concurrent::shared_spin_lock::unlock((v22 + 48));
    *&v88 = 0x676C6F626F776E72;
    DWORD2(v88) = 0;
    *(v22 + 4) = AMCP::Core::Core::get_typed_property_value<unsigned int,std::enable_if<true,void>>(v22, &v88, &AMCP::k_object_id_unknown);
    if (v84 == 1)
    {
      v25 = cf;
      if (cf)
      {
        CFRetain(cf);
      }

      v78 = v25;
      v94 = v25;
    }

    else
    {
      v26 = CFArrayCreate(0, 0, 0, MEMORY[0x1E695E9C8]);
      v94 = v26;
      if (v26)
      {
        v78 = v26;
        v27 = CFGetTypeID(v26);
        if (v27 != CFArrayGetTypeID())
        {
          v28 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v28, "Could not construct");
          __cxa_throw(v28, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }
      }

      else
      {
        v78 = 0;
      }
    }

    if (v82 == 1)
    {
      v29 = v81;
      if (v81)
      {
        CFRetain(v81);
      }

      v93 = v29;
    }

    else
    {
      v30 = CFArrayCreate(0, 0, 0, MEMORY[0x1E695E9C8]);
      v29 = v30;
      v93 = v30;
      if (v30)
      {
        v31 = CFGetTypeID(v30);
        if (v31 != CFArrayGetTypeID())
        {
          v77 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v77, "Could not construct");
          __cxa_throw(v77, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }
      }
    }

    AMCP::Null::diff_control_lists(&theArray, &v94, &v93);
    AMCP::Null::diff_control_lists(&v91, &v94, &theArray);
    AMCP::Null::diff_control_lists(&v90, &v93, &v94);
    v32 = theArray;
    if (theArray)
    {
      Count = CFArrayGetCount(theArray);
      v34 = Count;
      v35 = theArray;
      if (theArray)
      {
        v36 = CFArrayGetCount(theArray);
        if (!v34)
        {
          goto LABEL_83;
        }
      }

      else
      {
        v36 = 0;
        if (!Count)
        {
          goto LABEL_83;
        }
      }

      v37 = 0;
      do
      {
        if (v32 == v35 && v37 == v36)
        {
          break;
        }

        applesauce::CF::details::at_to<applesauce::CF::DictionaryRef>(&v88, v32, v37);
        control_by_description = AMCP::Null::find_control_by_description(this + 12, &v88);
        if (*(this + 13) != control_by_description)
        {
          v39 = control_by_description;
          v40 = control_by_description + 2;
          (*(**control_by_description + 32))(*control_by_description);
          v41 = *(this + 13);
          if (v40 != v41)
          {
            do
            {
              v42 = *(v39 + 1);
              v39[2] = 0;
              v39[3] = 0;
              v43 = v39[1];
              *v39 = v42;
              if (v43)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v43);
              }

              v44 = v39 + 2;
              v45 = v39 + 4;
              v39 += 2;
            }

            while (v45 != v41);
            v41 = *(this + 13);
            v39 = v44;
          }

          while (v41 != v39)
          {
            v46 = *(v41 - 1);
            if (v46)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v46);
            }

            v41 -= 2;
          }

          *(this + 13) = v39;
        }

        if (v88)
        {
          CFRelease(v88);
        }

        ++v37;
      }

      while (v37 != v34);
    }

LABEL_83:
    v47 = v91;
    if (!v91)
    {
      goto LABEL_96;
    }

    v48 = CFArrayGetCount(v91);
    v49 = v48;
    v50 = v91;
    if (v91)
    {
      v51 = CFArrayGetCount(v91);
      if (!v49)
      {
        goto LABEL_96;
      }
    }

    else
    {
      v51 = 0;
      if (!v48)
      {
        goto LABEL_96;
      }
    }

    v52 = 0;
    do
    {
      if (v47 == v50 && v51 == v52)
      {
        break;
      }

      applesauce::CF::details::at_to<applesauce::CF::DictionaryRef>(&v88, v47, v52);
      v53 = AMCP::Null::find_control_by_description(this + 12, &v88);
      if (*(this + 13) != v53)
      {
        (*(**v53 + 24))(*v53, &v88);
      }

      if (v88)
      {
        CFRelease(v88);
      }

      ++v52;
    }

    while (v49 != v52);
LABEL_96:
    v54 = v90;
    if (!v90)
    {
LABEL_119:
      if (v91)
      {
        CFRelease(v91);
      }

      if (theArray)
      {
        CFRelease(theArray);
      }

      if (v29)
      {
        CFRelease(v29);
      }

      if (v78)
      {
        CFRelease(v78);
      }

      std::__hash_table<std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,std::__unordered_map_hasher<AMCP::Address,std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,true>,std::__unordered_map_equal<AMCP::Address,std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,AMCP::Address::Is_Exact_Match,AMCP::Address::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>>>::__deallocate_node(*&bytes[16]);
      v63 = *bytes;
      *bytes = 0;
      if (v63)
      {
        operator delete(v63);
      }

      goto LABEL_129;
    }

    v55 = CFArrayGetCount(v90);
    v56 = v55;
    v57 = v90;
    if (v90)
    {
      v58 = CFArrayGetCount(v90);
      if (!v56)
      {
LABEL_117:
        if (v90)
        {
          CFRelease(v90);
        }

        goto LABEL_119;
      }
    }

    else
    {
      v58 = 0;
      if (!v55)
      {
        goto LABEL_117;
      }
    }

    v59 = 0;
    do
    {
      if (v54 == v57 && v58 == v59)
      {
        break;
      }

      applesauce::CF::details::at_to<applesauce::CF::DictionaryRef>(&v89, v54, v59);
      v60 = *(this + 2);
      valuePtr[0] = *(this + 1);
      valuePtr[1] = v60;
      if (v60)
      {
        atomic_fetch_add_explicit(v60 + 1, 1uLL, memory_order_relaxed);
      }

      v61 = *(this + 10);
      std::shared_ptr<AMCP::IO_Core::IOContext_Core>::shared_ptr[abi:ne200100]<AMCP::IO_Core::IOContext_Core,0>(&v85, *(this + 3), *(this + 4));
      AMCP::Null::make_object(&v88, valuePtr, v61, &v85, &v89, 0);
      if (v86)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v86);
      }

      if (v60)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v60);
      }

      v62 = v88;
      if (v88)
      {
        std::vector<std::shared_ptr<AHAL_DSP::IAudioStream>>::push_back[abi:ne200100](this + 12, &v88);
        (*(*v62 + 16))(v62);
      }

      if (*(&v88 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v88 + 1));
      }

      if (v89)
      {
        CFRelease(v89);
      }

      ++v59;
    }

    while (v56 != v59);
    goto LABEL_117;
  }

LABEL_129:
  if (v80)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v80);
  }

LABEL_131:
  if (v82 == 1 && v81)
  {
    CFRelease(v81);
  }

  if (v84 == 1)
  {
    if (cf)
    {
      CFRelease(cf);
    }
  }
}

void sub_1DE4E9248(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, char a17, uint64_t a18, char a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, const void *a27, __int16 a28, char a29, char a30)
{
  if (a2)
  {
    __cxa_free_exception(v30);
    applesauce::CF::ObjectRef<__CFArray const*>::~ObjectRef(&a27);
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

const applesauce::CF::DictionaryRef *AMCP::Null::get_stock_class_id(const __CFDictionary **this, const applesauce::CF::DictionaryRef *a2)
{
  v2 = a2;
  AMCP::get_class_traits(&bytes, a2);
  v4 = bytes.__r_.__value_.__s.__data_[8];
  if (v21 < 0)
  {
    operator delete(__p);
  }

  if (bytes.__r_.__value_.__r.__words[2])
  {
    v19 = bytes.__r_.__value_.__r.__words[2];
    operator delete(bytes.__r_.__value_.__r.__words[2]);
  }

  if ((v4 & 1) == 0)
  {
    if (!*this)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      goto LABEL_25;
    }

    v14 = 0x676C6F6262636C73;
    v15 = 0;
    AMCP::Address::to_string(&bytes, &v14, 0x676C6F6262636C73);
    size = SHIBYTE(bytes.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(bytes.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      p_bytes = bytes.__r_.__value_.__r.__words[0];
      if (!bytes.__r_.__value_.__r.__words[0])
      {
        v7 = 0;
        v16 = 0;
LABEL_12:
        LODWORD(valuePtr) = 0;
        cf = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
        if (!cf)
        {
          v11 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v11, "Could not construct");
          __cxa_throw(v11, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        applesauce::CF::at_or<applesauce::CF::NumberRef,applesauce::CF::StringRef>(&valuePtr, *this, v7, &cf);
        v8 = valuePtr;
        if (valuePtr)
        {
          v2 = applesauce::CF::convert_to<unsigned int,0>(valuePtr);
          CFRelease(v8);
          if (cf)
          {
            CFRelease(cf);
          }

          if (v7)
          {
            CFRelease(v7);
          }

          if (SHIBYTE(bytes.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(bytes.__r_.__value_.__l.__data_);
          }

          return v2;
        }

        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
LABEL_25:
        __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      size = bytes.__r_.__value_.__l.__size_;
    }

    else
    {
      p_bytes = &bytes;
    }

    v7 = CFStringCreateWithBytes(0, p_bytes, size, 0x8000100u, 0);
    v16 = v7;
    if (!v7)
    {
      v12 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v12, "Could not construct");
      __cxa_throw(v12, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    goto LABEL_12;
  }

  return v2;
}

void sub_1DE4E95F8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  __clang_call_terminate(a1);
}

uint64_t AMCP::Null::calculate_max_element(const __CFDictionary **this, const applesauce::CF::DictionaryRef *a2)
{
  if (AMCP::is_base_of(0x61646576, a2))
  {
    max_number_channels_for_scope = AMCP::Null::get_max_number_channels_for_scope(0x696E7074, this, v4, v5);
    v9 = AMCP::Null::get_max_number_channels_for_scope(0x6F757470, this, v7, v8);
    if (max_number_channels_for_scope <= v9)
    {
      max_number_channels_for_scope = v9;
    }

    LODWORD(result) = AMCP::Null::get_max_element_for_controls(this, v10);
    if (max_number_channels_for_scope <= result)
    {
      return result;
    }

    else
    {
      return max_number_channels_for_scope;
    }
  }

  else
  {

    return AMCP::Null::get_max_element_for_controls(this, v3);
  }
}

void AMCP::Null::diff_control_lists(AMCP::Null *this, CFArrayRef *a2, CFArrayRef *a3)
{
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C8]);
  v7 = *a2;
  if (!*a2)
  {
LABEL_40:
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v8 = 0;
  while (v8 < CFArrayGetCount(v7))
  {
    if (!*a2)
    {
      goto LABEL_40;
    }

    applesauce::CF::details::at_as<applesauce::CF::DictionaryRef>(&v25, *a2, v8);
    if (v26 != 1)
    {
      goto LABEL_35;
    }

    control_marker = AMCP::Null::make_control_marker(&v25, v9);
    v12 = control_marker;
    v13 = v11;
    if (HIDWORD(control_marker) && control_marker && v11 != -1)
    {
LABEL_31:
      v21 = v25;
      if (!v25)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v14 = 0;
      while (1)
      {
        if (!*a3)
        {
          goto LABEL_40;
        }

        if (v14 >= CFArrayGetCount(*a3))
        {
          break;
        }

        if (!*a3)
        {
          goto LABEL_40;
        }

        applesauce::CF::details::at_as<applesauce::CF::DictionaryRef>(&cf, *a3, v14);
        if (v24 == 1)
        {
          v16 = AMCP::Null::make_control_marker(&cf, v15);
          v18 = (!HIDWORD(v16) || !v16 || v17 == -1) && v12 == v16 && v13 == v17 && (v16 ^ v12) >> 32 == 0;
          if (cf)
          {
            CFRelease(cf);
          }
        }

        else
        {
          v18 = 0;
        }

        ++v14;
        if (v18)
        {
          goto LABEL_31;
        }
      }

      v21 = v25;
      mcp_applesauce::CF::Array_Builder::append_value<applesauce::CF::DictionaryRef>(Mutable, v25);
      if (!v21)
      {
        goto LABEL_35;
      }
    }

    CFRelease(v21);
LABEL_35:
    ++v8;
    v7 = *a2;
    if (!*a2)
    {
      goto LABEL_40;
    }
  }

  mcp_applesauce::CF::Array_Builder::copy_array(this, Mutable);
  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

uint64_t AMCP::Null::find_control_by_description(uint64_t *a1, const __CFDictionary **this)
{
  control_marker = AMCP::Null::make_control_marker(this, this);
  v5 = a1[1];
  if (*a1 != v5)
  {
    v6 = control_marker;
    v7 = v4;
    v5 = *a1;
    while (AMCP::Null::make_control_marker((*v5 + 48), v4) != v6 || v4 != v7)
    {
      v5 += 16;
      if (v5 == a1[1])
      {
        return a1[1];
      }
    }
  }

  return v5;
}

void AMCP::Null::make_object(uint64_t a1, uint64_t *a2, uint64_t a3, std::string::size_type *a4, const __CFDictionary **a5, unsigned int a6)
{
  stock_class_id = a6;
  v25 = a3;
  if (a6)
  {
    goto LABEL_17;
  }

  if (!*a5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v20 = 0x676C6F62636C6173;
  v21 = 0;
  AMCP::Address::to_string(&numBytes, &v20, 0x676C6F62636C6173);
  size = SHIBYTE(numBytes.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(numBytes.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
  {
    p_numBytes = &numBytes;
    goto LABEL_7;
  }

  p_numBytes = numBytes.__r_.__value_.__r.__words[0];
  if (numBytes.__r_.__value_.__r.__words[0])
  {
    size = numBytes.__r_.__value_.__l.__size_;
LABEL_7:
    v23 = CFStringCreateWithBytes(0, p_numBytes, size, 0x8000100u, 0);
    if (!v23)
    {
      v18 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v18, "Could not construct");
      __cxa_throw(v18, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    goto LABEL_8;
  }

  v23 = 0;
LABEL_8:
  valuePtr = 0;
  cf = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  if (!cf)
  {
    v16 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v16, "Could not construct");
    __cxa_throw(v16, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  applesauce::CF::at_or<applesauce::CF::NumberRef,applesauce::CF::StringRef>(&v24, *a5, v23, &cf);
  v13 = v24;
  if (!v24)
  {
    v17 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v17, "Could not construct");
    __cxa_throw(v17, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v14 = applesauce::CF::convert_to<unsigned int,0>(v24);
  CFRelease(v13);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v23)
  {
    CFRelease(v23);
  }

  if (SHIBYTE(numBytes.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(numBytes.__r_.__value_.__l.__data_);
  }

  stock_class_id = AMCP::Null::get_stock_class_id(a5, v14);
LABEL_17:
  if (AMCP::is_base_of(0x7370616E, stock_class_id))
  {
    operator new();
  }

  if (AMCP::is_base_of(0x736C6374, stock_class_id))
  {
    operator new();
  }

  if (AMCP::is_base_of(0x746F676C, stock_class_id))
  {
    operator new();
  }

  if (AMCP::is_base_of(0x6C65766C, stock_class_id))
  {
    operator new();
  }

  if (AMCP::is_base_of(0x736C6472, stock_class_id))
  {
    operator new();
  }

  if (AMCP::is_base_of(0x61646576, stock_class_id))
  {
    std::allocate_shared[abi:ne200100]<AMCP::Null::Device,std::allocator<AMCP::Null::Device>,std::shared_ptr<AMCP::Core::System_Core> &,unsigned int &,std::shared_ptr<AMCP::Null::Object> &,applesauce::CF::DictionaryRef const&,0>(&numBytes, a2, &v25, a4, a5);
  }

  if (AMCP::is_base_of(0x6163746C, stock_class_id))
  {
    std::allocate_shared[abi:ne200100]<AMCP::Null::Control,std::allocator<AMCP::Null::Control>,std::shared_ptr<AMCP::Core::System_Core> &,unsigned int &,std::shared_ptr<AMCP::Null::Object> &,applesauce::CF::DictionaryRef const&,0>(&numBytes, a2, &v25, a4, a5);
  }

  if (AMCP::is_base_of(0x61737472, stock_class_id))
  {
    std::allocate_shared[abi:ne200100]<AMCP::Null::Stream,std::allocator<AMCP::Null::Stream>,std::shared_ptr<AMCP::Core::System_Core> &,unsigned int &,std::shared_ptr<AMCP::Null::Object> &,applesauce::CF::DictionaryRef const&,0>(&numBytes, a2, &v25, a4, a5);
  }

  if (AMCP::is_base_of(0x61636C6B, stock_class_id))
  {
    std::allocate_shared[abi:ne200100]<AMCP::Null::Clock,std::allocator<AMCP::Null::Clock>,std::shared_ptr<AMCP::Core::System_Core> &,unsigned int &,std::shared_ptr<AMCP::Null::Object> &,applesauce::CF::DictionaryRef const&,0>(&numBytes, a2, &v25, a4, a5);
  }

  if (AMCP::is_base_of(0x61626F78, stock_class_id))
  {
    std::allocate_shared[abi:ne200100]<AMCP::Null::Box,std::allocator<AMCP::Null::Box>,std::shared_ptr<AMCP::Core::System_Core> &,unsigned int &,std::shared_ptr<AMCP::Null::Object> &,applesauce::CF::DictionaryRef const&,0>(&numBytes, a2, &v25, a4, a5);
  }

  if (AMCP::is_base_of(0x616F626A, stock_class_id))
  {
    std::allocate_shared[abi:ne200100]<AMCP::Null::Object,std::allocator<AMCP::Null::Object>,std::shared_ptr<AMCP::Core::System_Core> &,unsigned int &,std::shared_ptr<AMCP::Null::Object> &,applesauce::CF::DictionaryRef const&,0>(a1, a2, &v25, a4, a5);
  }

  *a1 = 0;
  *(a1 + 8) = 0;
}

void sub_1DE4EA250(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, int a22, __int16 a23, char a24, char a25)
{
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
    if (!v25)
    {
LABEL_3:
      if (!v27)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if (!v25)
  {
    goto LABEL_3;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  if (!v27)
  {
LABEL_4:
    if (!v25)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_9:
  std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  if (!v25)
  {
LABEL_6:
    std::__shared_weak_count::~__shared_weak_count(v26);
    operator delete(v29);
    _Unwind_Resume(a1);
  }

LABEL_5:
  std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  goto LABEL_6;
}

void sub_1DE4EA524(_Unwind_Exception *a1)
{
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    if (!v2)
    {
LABEL_3:
      if (!v3)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if (!v2)
  {
    goto LABEL_3;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  if (!v3)
  {
LABEL_4:
    if (!v2)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_9:
  std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  if (!v2)
  {
LABEL_6:
    std::__shared_weak_count::~__shared_weak_count(v1);
    operator delete(v5);
    _Unwind_Resume(a1);
  }

LABEL_5:
  std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  goto LABEL_6;
}

void sub_1DE4EA6E8(_Unwind_Exception *a1)
{
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v5);
  _Unwind_Resume(a1);
}

void sub_1DE4EA8D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
    if (!v14)
    {
LABEL_5:
      if (!v13)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if (!v14)
  {
    goto LABEL_5;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  if (!v13)
  {
LABEL_7:
    std::__shared_weak_count::~__shared_weak_count(v12);
    operator delete(v16);
    _Unwind_Resume(a1);
  }

LABEL_6:
  std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  goto LABEL_7;
}

void sub_1DE4EAA90(_Unwind_Exception *a1)
{
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v5);
  _Unwind_Resume(a1);
}

void sub_1DE4EAC78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
    if (!v14)
    {
LABEL_5:
      if (!v13)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if (!v14)
  {
    goto LABEL_5;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  if (!v13)
  {
LABEL_7:
    std::__shared_weak_count::~__shared_weak_count(v12);
    operator delete(v16);
    _Unwind_Resume(a1);
  }

LABEL_6:
  std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  goto LABEL_7;
}

void sub_1DE4EAE3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  std::__shared_weak_count::~__shared_weak_count(v12);
  operator delete(v15);
  _Unwind_Resume(a1);
}

uint64_t AMCP::Null::Object::Object(uint64_t a1, __int128 *a2, int a3, void *a4, CFTypeRef *a5)
{
  v49 = *MEMORY[0x1E69E9840];
  v8 = *a2;
  *a2 = 0uLL;
  *(a1 + 8) = v8;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *a1 = &unk_1F5974AE0;
  *(a1 + 40) = a3;
  v9 = *a5;
  if (*a5)
  {
    CFRetain(*a5);
  }

  *(a1 + 48) = v9;
  *(a1 + 56) = *a4;
  v10 = a4[1];
  *(a1 + 64) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 16), 1uLL, memory_order_relaxed);
  }

  *(a1 + 72) = 0;
  if (!*a5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v36.__vftable = 0x676C6F62636C6173;
  LODWORD(v36.__imp_.__imp_) = 0;
  AMCP::Address::to_string(buf, &v36, 0x676C6F62636C6173);
  v11 = SBYTE3(v45);
  if ((SBYTE3(v45) & 0x8000000000000000) != 0)
  {
    v12 = *buf;
    if (!*buf)
    {
      v33[0] = 0;
      goto LABEL_11;
    }

    v11 = *&buf[8];
  }

  else
  {
    v12 = buf;
  }

  v33[0] = CFStringCreateWithBytes(0, v12, v11, 0x8000100u, 0);
  if (!v33[0])
  {
    v32 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v32, "Could not construct");
    __cxa_throw(v32, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

LABEL_11:
  valuePtr = 0;
  cf.__vftable = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  if (!cf.__vftable)
  {
    v30 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v30, "Could not construct");
    __cxa_throw(v30, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  applesauce::CF::at_or<applesauce::CF::NumberRef,applesauce::CF::StringRef>(&v34, *a5, v33[0], &cf);
  v13 = v34;
  if (!v34)
  {
    v31 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v31, "Could not construct");
    __cxa_throw(v31, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v14 = applesauce::CF::convert_to<unsigned int,0>(v34);
  CFRelease(v13);
  if (cf.__vftable)
  {
    CFRelease(cf.__vftable);
  }

  if (v33[0])
  {
    CFRelease(v33[0]);
  }

  if (SBYTE3(v45) < 0)
  {
    operator delete(*buf);
  }

  *(a1 + 80) = v14;
  stock_class_id = AMCP::Null::get_stock_class_id(a5, v14);
  *(a1 + 96) = 0;
  *(a1 + 84) = stock_class_id;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  if (!*(a1 + 48))
  {
    v17 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v17 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(stock_class_id);
    }

    v19 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v18 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
      v20 = *v19;
      std::__shared_weak_count::__release_shared[abi:ne200100](v18);
    }

    else
    {
      v20 = *v19;
    }

    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "Null_Object.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 240;
      v44 = 2080;
      v45 = "m_description.is_valid() == false";
      _os_log_error_impl(&dword_1DE1F9000, v20, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s all Null objects have a non-empty description", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&valuePtr);
    __cxa_allocate_exception(0x40uLL);
    std::runtime_error::runtime_error(&cf, "all Null objects have a non-empty description");
    std::runtime_error::runtime_error(&v36, &cf);
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v41 = -1;
    v36.__vftable = &unk_1F5992170;
    v37 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v36);
    v46 = "AMCP::Null::Object::Object(Core::System_Core_Ptr, Object_ID, Object_Ptr, const CF::Dictionary &)";
    v47 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Null/Null_Object.cpp";
    v48 = 240;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(v33);
  }

  if (!*(a1 + 80))
  {
    v21 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v21 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(stock_class_id);
    }

    v23 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v22 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v22)
    {
      atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
      v24 = *v23;
      std::__shared_weak_count::__release_shared[abi:ne200100](v22);
    }

    else
    {
      v24 = *v23;
    }

    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "Null_Object.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 241;
      v44 = 2080;
      v45 = "m_core_class_id == k_class_id_unknown";
      _os_log_error_impl(&dword_1DE1F9000, v24, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s all Null objects have a class", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&valuePtr);
    __cxa_allocate_exception(0x40uLL);
    std::runtime_error::runtime_error(&cf, "all Null objects have a class");
    std::runtime_error::runtime_error(&v36, &cf);
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v41 = -1;
    v36.__vftable = &unk_1F5992170;
    v37 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v36);
    v46 = "AMCP::Null::Object::Object(Core::System_Core_Ptr, Object_ID, Object_Ptr, const CF::Dictionary &)";
    v47 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Null/Null_Object.cpp";
    v48 = 241;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(v33);
  }

  if (!stock_class_id)
  {
    v25 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v25 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(stock_class_id);
    }

    v27 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v26 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v26)
    {
      atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
      v28 = *v27;
      std::__shared_weak_count::__release_shared[abi:ne200100](v26);
    }

    else
    {
      v28 = *v27;
    }

    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "Null_Object.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 242;
      v44 = 2080;
      v45 = "m_core_stock_class_id == k_class_id_unknown";
      _os_log_error_impl(&dword_1DE1F9000, v28, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s all Null objects have a stock class", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&valuePtr);
    __cxa_allocate_exception(0x40uLL);
    std::runtime_error::runtime_error(&cf, "all Null objects have a stock class");
    std::runtime_error::runtime_error(&v36, &cf);
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v41 = -1;
    v36.__vftable = &unk_1F5992170;
    v37 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v36);
    v46 = "AMCP::Null::Object::Object(Core::System_Core_Ptr, Object_ID, Object_Ptr, const CF::Dictionary &)";
    v47 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Null/Null_Object.cpp";
    v48 = 242;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(v33);
  }

  return a1;
}

void sub_1DE4EB720(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, std::runtime_error a20, char a21)
{
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(&a12);
  if (*(v23 - 121) < 0)
  {
    operator delete(*(v23 - 144));
  }

  applesauce::CF::StringRef::~StringRef(v22);
  v25 = *(v21 + 64);
  if (v25)
  {
    std::__shared_weak_count::__release_weak(v25);
  }

  applesauce::CF::DictionaryRef::~DictionaryRef((v21 + 48));
  v26 = *(v21 + 32);
  if (v26)
  {
    std::__shared_weak_count::__release_weak(v26);
  }

  *v21 = &unk_1F59748E8;
  v27 = *(v21 + 16);
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<AMCP::Null::Object>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F59775F8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void sub_1DE4ECE5C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  __clang_call_terminate(a1);
}

uint64_t std::__optional_destruct_base<AMCP::Thing,false>::__optional_destruct_base[abi:ne200100]<AMCP::Thing>(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v3 = *(a2 + 32);
  if (v3)
  {
    v3(2);
  }

  *(a1 + 40) = 1;
  return a1;
}

void AMCP::Null::make_properties<1953653102u>(CFDictionaryRef *a1, float *a2, uint64_t a3)
{
  strcpy(v14, "nartbolg");
  BYTE1(v14[2]) = 0;
  HIWORD(v14[2]) = 0;
  v20 = 0;
  memset(v19, 0, sizeof(v19));
  if (!*a1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  AMCP::Address::to_string(&bytes, v14, 0);
  size = SHIBYTE(bytes.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(bytes.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    p_bytes = bytes.__r_.__value_.__r.__words[0];
    if (!bytes.__r_.__value_.__r.__words[0])
    {
      v21[0] = 0;
      applesauce::CF::details::find_at_key_or_optional<applesauce::CF::TypeRef,applesauce::CF::StringRef>(&cf, *a1, 0);
      goto LABEL_8;
    }

    size = bytes.__r_.__value_.__l.__size_;
  }

  else
  {
    p_bytes = &bytes;
  }

  v8 = CFStringCreateWithBytes(0, p_bytes, size, 0x8000100u, 0);
  v21[0] = v8;
  if (!v8)
  {
    v13 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v13, "Could not construct");
    __cxa_throw(v13, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  applesauce::CF::details::find_at_key_or_optional<applesauce::CF::TypeRef,applesauce::CF::StringRef>(&cf, *a1, v8);
  CFRelease(v8);
LABEL_8:
  if (SHIBYTE(bytes.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(bytes.__r_.__value_.__l.__data_);
  }

  v10 = v18;
  if (v18 == 1)
  {
    AMCP::make_thing_from_description(&bytes, &cf);
    AMCP::swap(&bytes, v19, v11);
    if (v16)
    {
      v16(0, &bytes, 0, 0);
    }
  }

  else if (*(a3 + 40) == 1)
  {
    AMCP::Thing::operator=(v19, a3, v9);
  }

  if (v20)
  {
    LODWORD(v21[0]) = 1953653102;
    *(v21 + 4) = *&v14[1];
    AMCP::Core::Operation_Utilities::make_generic_constant_property<unsigned int>(&bytes, v21, v19);
  }

  *&bytes.__r_.__value_.__l.__data_ = 0uLL;
  if (v10 && cf)
  {
    CFRelease(cf);
  }

  if (v20)
  {
    v20(0, v19, 0, 0);
  }

  if (bytes.__r_.__value_.__r.__words[0])
  {
    std::unordered_map<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,std::shared_ptr<AMCP::Core::Operation>>>>::insert_or_assign[abi:ne200100]<std::shared_ptr<AMCP::Core::Operation> const&>(a2, (bytes.__r_.__value_.__r.__words[0] + 40), &bytes);
  }

  if (bytes.__r_.__value_.__l.__size_)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](bytes.__r_.__value_.__l.__size_);
  }
}

void AMCP::Core::Operation_Utilities::make_generic_constant_property<BOOL>(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = 0;
  memset(v6, 0, sizeof(v6));
  v5 = *(a3 + 32);
  if (v5)
  {
    v5(1, a3, v6, 0);
  }

  std::allocate_shared[abi:ne200100]<AMCP::Core::Operation,std::allocator<AMCP::Core::Operation>,AMCP::Address const&,0>(a1, a2);
}

void sub_1DE4ED454(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void AMCP::Core::Operation_Utilities::make_generic_constant_property<unsigned int>(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = 0;
  memset(v6, 0, sizeof(v6));
  v5 = *(a3 + 32);
  if (v5)
  {
    v5(1, a3, v6, 0);
  }

  std::allocate_shared[abi:ne200100]<AMCP::Core::Operation,std::allocator<AMCP::Core::Operation>,AMCP::Address const&,0>(a1, a2);
}

void sub_1DE4ED68C(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void AMCP::Core::Operation_Utilities::make_generic_constant_property<std::vector<unsigned int>>(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = 0;
  memset(v6, 0, sizeof(v6));
  v5 = *(a3 + 32);
  if (v5)
  {
    v5(1, a3, v6, 0);
  }

  std::allocate_shared[abi:ne200100]<AMCP::Core::Operation,std::allocator<AMCP::Core::Operation>,AMCP::Address const&,0>(a1, a2);
}

void sub_1DE4ED8C4(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t AMCP::Core::Operation_Utilities::make_generic_constant_property<std::vector<unsigned int>>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1}::~Thing(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v2(0, a1, 0, 0);
  }

  return a1;
}

void AMCP::Core::Operation_Utilities::add_specific_property_getter<std::vector<unsigned int>>(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  std::unordered_map<AMCP::Type_ID,AMCP::Thing,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,std::allocator<std::pair<AMCP::Type_ID const,AMCP::Thing>>>::unordered_map(&v5, a1);
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v18 = AMCP::Implementation::get_type_marker<std::function<std::vector<unsigned int> ()(void)>>();
  v2 = v5;
  v3 = v6;
  v5 = 0;
  v6 = 0;
  v12 = v2;
  v13 = v3;
  v14[0] = v7;
  v14[1] = v8;
  v15 = v9;
  if (v8)
  {
    v4 = *(v7 + 8);
    if ((v3 & (v3 - 1)) != 0)
    {
      if (v4 >= v3)
      {
        v4 %= v3;
      }
    }

    else
    {
      v4 &= v3 - 1;
    }

    *(v2 + 8 * v4) = v14;
    v7 = 0;
    v8 = 0;
  }

  v16 = v10;
  v17 = v11;
  v19 = 0;
  operator new();
}

void sub_1DE4EDB14(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__function::__func<void AMCP::Core::Operation_Utilities::add_specific_property_getter<std::vector<unsigned int>>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_specific_property_getter<std::vector<unsigned int>>(AMCP::Core::Operation &)::{lambda(void)#1}>,std::vector<unsigned int> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Core19Operation_Utilities28add_specific_property_getterINSt3__16vectorIjNS3_9allocatorIjEEEEEEvRNS0_9OperationEEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *std::__function::__func<void AMCP::Core::Operation_Utilities::add_specific_property_getter<std::vector<unsigned int>>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_specific_property_getter<std::vector<unsigned int>>(AMCP::Core::Operation &)::{lambda(void)#1}>,std::vector<unsigned int> ()(void)>::operator()@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  AMCP::Core::Operation::call_function<AMCP::Thing>(v4, (a1 + 8));
  result = AMCP::Thing::convert_to<std::vector<unsigned int>>(a2, v4);
  if (v5)
  {
    return v5(0, v4, 0, 0);
  }

  return result;
}

void sub_1DE4EDBD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AMCP::Thing::~Thing(va);
  _Unwind_Resume(a1);
}

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_specific_property_getter<std::vector<unsigned int>>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_specific_property_getter<std::vector<unsigned int>>(AMCP::Core::Operation &)::{lambda(void)#1}>,std::vector<unsigned int> ()(void)>::destroy_deallocate(void *a1)
{
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table(a1 + 8);

  operator delete(a1);
}

double std::__function::__func<void AMCP::Core::Operation_Utilities::add_specific_property_getter<std::vector<unsigned int>>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_specific_property_getter<std::vector<unsigned int>>(AMCP::Core::Operation &)::{lambda(void)#1}>,std::vector<unsigned int> ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5975788;
  std::unordered_map<AMCP::Type_ID,AMCP::Thing,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,std::allocator<std::pair<AMCP::Type_ID const,AMCP::Thing>>>::unordered_map((a2 + 8), a1 + 8);
  result = *(a1 + 48);
  *(a2 + 48) = result;
  *(a2 + 56) = *(a1 + 56);
  return result;
}

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_specific_property_getter<std::vector<unsigned int>>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_specific_property_getter<std::vector<unsigned int>>(AMCP::Core::Operation &)::{lambda(void)#1}>,std::vector<unsigned int> ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5975788;
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table((a1 + 1));

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<void AMCP::Core::Operation_Utilities::add_specific_property_getter<std::vector<unsigned int>>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_specific_property_getter<std::vector<unsigned int>>(AMCP::Core::Operation &)::{lambda(void)#1}>,std::vector<unsigned int> ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5975788;
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table((a1 + 1));
  return a1;
}

uint64_t std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<std::vector<unsigned int>>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<std::vector<unsigned int>>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Core19Operation_Utilities30make_generic_constant_propertyINSt3__16vectorIjNS3_9allocatorIjEEEEEENS3_10shared_ptrINS0_9OperationEEERKNS_7AddressERKNS_5ThingEEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<std::vector<unsigned int>>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<std::vector<unsigned int>>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::operator()@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  v2 = *(result + 40);
  if (v2)
  {
    return v2(1, result + 8, a2, 0);
  }

  return result;
}

void std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<std::vector<unsigned int>>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<std::vector<unsigned int>>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[5];
  if (v2)
  {
    v2(0, __p + 1, 0, 0);
  }

  operator delete(__p);
}

uint64_t std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<std::vector<unsigned int>>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<std::vector<unsigned int>>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::destroy(uint64_t result)
{
  v1 = *(result + 40);
  if (v1)
  {
    return v1(0, result + 8, 0, 0);
  }

  return result;
}

uint64_t std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<std::vector<unsigned int>>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<std::vector<unsigned int>>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5975708;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0;
  *(a2 + 8) = 0u;
  v2 = *(result + 40);
  if (v2)
  {
    return v2(1, result + 8, a2 + 8, 0);
  }

  return result;
}

void std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<std::vector<unsigned int>>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<std::vector<unsigned int>>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5975708;
  v1 = a1[5];
  if (v1)
  {
    v1(0, a1 + 1, 0, 0);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<std::vector<unsigned int>>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<std::vector<unsigned int>>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5975708;
  v2 = a1[5];
  if (v2)
  {
    v2(0, a1 + 1, 0, 0);
  }

  return a1;
}

uint64_t AMCP::Core::Operation_Utilities::make_generic_constant_property<unsigned int>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1}::~Thing(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v2(0, a1, 0, 0);
  }

  return a1;
}

void AMCP::Core::Operation_Utilities::add_specific_property_getter<unsigned int>(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  std::unordered_map<AMCP::Type_ID,AMCP::Thing,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,std::allocator<std::pair<AMCP::Type_ID const,AMCP::Thing>>>::unordered_map(&v5, a1);
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v18 = AMCP::Implementation::get_type_marker<std::function<unsigned int ()(void)>>();
  v2 = v5;
  v3 = v6;
  v5 = 0;
  v6 = 0;
  v12 = v2;
  v13 = v3;
  v14[0] = v7;
  v14[1] = v8;
  v15 = v9;
  if (v8)
  {
    v4 = *(v7 + 8);
    if ((v3 & (v3 - 1)) != 0)
    {
      if (v4 >= v3)
      {
        v4 %= v3;
      }
    }

    else
    {
      v4 &= v3 - 1;
    }

    *(v2 + 8 * v4) = v14;
    v7 = 0;
    v8 = 0;
  }

  v16 = v10;
  v17 = v11;
  v19 = 0;
  operator new();
}

void sub_1DE4EE26C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__function::__func<void AMCP::Core::Operation_Utilities::add_specific_property_getter<unsigned int>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_specific_property_getter<unsigned int>(AMCP::Core::Operation &)::{lambda(void)#1}>,unsigned int ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Core19Operation_Utilities28add_specific_property_getterIjEEvRNS0_9OperationEEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<void AMCP::Core::Operation_Utilities::add_specific_property_getter<unsigned int>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_specific_property_getter<unsigned int>(AMCP::Core::Operation &)::{lambda(void)#1}>,unsigned int ()(void)>::operator()(uint64_t a1)
{
  AMCP::Core::Operation::call_function<AMCP::Thing>(v3, (a1 + 8));
  v1 = AMCP::Thing::convert_to<unsigned int>(v3);
  if (v4)
  {
    v4(0, v3, 0, 0);
  }

  return v1;
}

void sub_1DE4EE330(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AMCP::Thing::~Thing(va);
  _Unwind_Resume(a1);
}

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_specific_property_getter<unsigned int>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_specific_property_getter<unsigned int>(AMCP::Core::Operation &)::{lambda(void)#1}>,unsigned int ()(void)>::destroy_deallocate(void *a1)
{
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table(a1 + 8);

  operator delete(a1);
}

double std::__function::__func<void AMCP::Core::Operation_Utilities::add_specific_property_getter<unsigned int>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_specific_property_getter<unsigned int>(AMCP::Core::Operation &)::{lambda(void)#1}>,unsigned int ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5975588;
  std::unordered_map<AMCP::Type_ID,AMCP::Thing,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,std::allocator<std::pair<AMCP::Type_ID const,AMCP::Thing>>>::unordered_map((a2 + 8), a1 + 8);
  result = *(a1 + 48);
  *(a2 + 48) = result;
  *(a2 + 56) = *(a1 + 56);
  return result;
}

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_specific_property_getter<unsigned int>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_specific_property_getter<unsigned int>(AMCP::Core::Operation &)::{lambda(void)#1}>,unsigned int ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5975588;
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table((a1 + 1));

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<void AMCP::Core::Operation_Utilities::add_specific_property_getter<unsigned int>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_specific_property_getter<unsigned int>(AMCP::Core::Operation &)::{lambda(void)#1}>,unsigned int ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5975588;
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table((a1 + 1));
  return a1;
}

uint64_t std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<unsigned int>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<unsigned int>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Core19Operation_Utilities30make_generic_constant_propertyIjEENSt3__110shared_ptrINS0_9OperationEEERKNS_7AddressERKNS_5ThingEEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<unsigned int>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<unsigned int>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::operator()@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  v2 = *(result + 40);
  if (v2)
  {
    return v2(1, result + 8, a2, 0);
  }

  return result;
}

void std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<unsigned int>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<unsigned int>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[5];
  if (v2)
  {
    v2(0, __p + 1, 0, 0);
  }

  operator delete(__p);
}

uint64_t std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<unsigned int>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<unsigned int>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::destroy(uint64_t result)
{
  v1 = *(result + 40);
  if (v1)
  {
    return v1(0, result + 8, 0, 0);
  }

  return result;
}

uint64_t std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<unsigned int>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<unsigned int>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5975508;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0;
  *(a2 + 8) = 0u;
  v2 = *(result + 40);
  if (v2)
  {
    return v2(1, result + 8, a2 + 8, 0);
  }

  return result;
}

void std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<unsigned int>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<unsigned int>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5975508;
  v1 = a1[5];
  if (v1)
  {
    v1(0, a1 + 1, 0, 0);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<unsigned int>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<unsigned int>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5975508;
  v2 = a1[5];
  if (v2)
  {
    v2(0, a1 + 1, 0, 0);
  }

  return a1;
}

uint64_t AMCP::Core::Operation_Utilities::make_generic_constant_property<BOOL>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1}::~Thing(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v2(0, a1, 0, 0);
  }

  return a1;
}

void AMCP::Core::Operation_Utilities::add_specific_property_getter<BOOL>(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  std::unordered_map<AMCP::Type_ID,AMCP::Thing,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,std::allocator<std::pair<AMCP::Type_ID const,AMCP::Thing>>>::unordered_map(&v5, a1);
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v18 = AMCP::Implementation::get_type_marker<std::function<BOOL ()(void)>>();
  v2 = v5;
  v3 = v6;
  v5 = 0;
  v6 = 0;
  v12 = v2;
  v13 = v3;
  v14[0] = v7;
  v14[1] = v8;
  v15 = v9;
  if (v8)
  {
    v4 = *(v7 + 8);
    if ((v3 & (v3 - 1)) != 0)
    {
      if (v4 >= v3)
      {
        v4 %= v3;
      }
    }

    else
    {
      v4 &= v3 - 1;
    }

    *(v2 + 8 * v4) = v14;
    v7 = 0;
    v8 = 0;
  }

  v16 = v10;
  v17 = v11;
  v19 = 0;
  operator new();
}

void sub_1DE4EE9C4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__function::__func<void AMCP::Core::Operation_Utilities::add_specific_property_getter<BOOL>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_specific_property_getter<BOOL>(AMCP::Core::Operation &)::{lambda(void)#1}>,BOOL ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Core19Operation_Utilities28add_specific_property_getterIbEEvRNS0_9OperationEEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<void AMCP::Core::Operation_Utilities::add_specific_property_getter<BOOL>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_specific_property_getter<BOOL>(AMCP::Core::Operation &)::{lambda(void)#1}>,BOOL ()(void)>::operator()(uint64_t a1)
{
  AMCP::Core::Operation::call_function<AMCP::Thing>(v3, (a1 + 8));
  v1 = AMCP::Thing::convert_to<BOOL>(v3);
  if (v4)
  {
    v4(0, v3, 0, 0);
  }

  return v1;
}

void sub_1DE4EEA88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AMCP::Thing::~Thing(va);
  _Unwind_Resume(a1);
}

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_specific_property_getter<BOOL>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_specific_property_getter<BOOL>(AMCP::Core::Operation &)::{lambda(void)#1}>,BOOL ()(void)>::destroy_deallocate(void *a1)
{
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table(a1 + 8);

  operator delete(a1);
}

double std::__function::__func<void AMCP::Core::Operation_Utilities::add_specific_property_getter<BOOL>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_specific_property_getter<BOOL>(AMCP::Core::Operation &)::{lambda(void)#1}>,BOOL ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5975688;
  std::unordered_map<AMCP::Type_ID,AMCP::Thing,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,std::allocator<std::pair<AMCP::Type_ID const,AMCP::Thing>>>::unordered_map((a2 + 8), a1 + 8);
  result = *(a1 + 48);
  *(a2 + 48) = result;
  *(a2 + 56) = *(a1 + 56);
  return result;
}

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_specific_property_getter<BOOL>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_specific_property_getter<BOOL>(AMCP::Core::Operation &)::{lambda(void)#1}>,BOOL ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5975688;
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table((a1 + 1));

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<void AMCP::Core::Operation_Utilities::add_specific_property_getter<BOOL>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_specific_property_getter<BOOL>(AMCP::Core::Operation &)::{lambda(void)#1}>,BOOL ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5975688;
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table((a1 + 1));
  return a1;
}

uint64_t std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<BOOL>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<BOOL>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Core19Operation_Utilities30make_generic_constant_propertyIbEENSt3__110shared_ptrINS0_9OperationEEERKNS_7AddressERKNS_5ThingEEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<BOOL>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<BOOL>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::operator()@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  v2 = *(result + 40);
  if (v2)
  {
    return v2(1, result + 8, a2, 0);
  }

  return result;
}

void std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<BOOL>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<BOOL>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[5];
  if (v2)
  {
    v2(0, __p + 1, 0, 0);
  }

  operator delete(__p);
}

uint64_t std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<BOOL>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<BOOL>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::destroy(uint64_t result)
{
  v1 = *(result + 40);
  if (v1)
  {
    return v1(0, result + 8, 0, 0);
  }

  return result;
}

uint64_t std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<BOOL>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<BOOL>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5975608;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0;
  *(a2 + 8) = 0u;
  v2 = *(result + 40);
  if (v2)
  {
    return v2(1, result + 8, a2 + 8, 0);
  }

  return result;
}

void std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<BOOL>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<BOOL>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5975608;
  v1 = a1[5];
  if (v1)
  {
    v1(0, a1 + 1, 0, 0);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<BOOL>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<BOOL>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5975608;
  v2 = a1[5];
  if (v2)
  {
    v2(0, a1 + 1, 0, 0);
  }

  return a1;
}

void AMCP::Null::Object::build_cores(AMCP::Null::Object *this)
{
  v53 = *MEMORY[0x1E69E9840];
  if (*(this + 22))
  {
    v33 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v33 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(this);
    }

    v35 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v34 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v34)
    {
      atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
      v36 = *v35;
      std::__shared_weak_count::__release_shared[abi:ne200100](v34);
    }

    else
    {
      v36 = *v35;
    }

    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "Null_Object.cpp";
      v51 = 1024;
      *v52 = 252;
      *&v52[4] = 2080;
      *&v52[6] = "m_core_id == k_object_id_unknown";
      _os_log_error_impl(&dword_1DE1F9000, v36, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s this Object already has a core", buf, 0x1Cu);
    }

    abort();
  }

  *(this + 22) = AMCP::Core::Broker::reserve_id(*(*(this + 1) + 16));
  is_base_of = AMCP::is_base_of(0x61636C6B, *(this + 21));
  if (is_base_of)
  {
    v3 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v3 & 1) == 0)
    {
      is_base_of = AMCP::Log::AMCP_Scope_Registry::initialize(is_base_of);
    }

    v4 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v5 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v6 = *(v4 + 16);
    switch(v6)
    {
      case 3:
        v15 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v15 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(is_base_of);
        }

        v17 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v16 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v16)
        {
          atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
          v18 = *v17;
          std::__shared_weak_count::__release_shared[abi:ne200100](v16);
        }

        else
        {
          v18 = *v17;
        }

        if (!os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          goto LABEL_43;
        }

        v21 = *(this + 22);
        AMCP::make_string_for_class_id(&__p, *(this + 20));
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        *buf = 136315906;
        *&buf[4] = "Null_Object.cpp";
        v51 = 1024;
        *v52 = 256;
        *&v52[4] = 1024;
        *&v52[6] = v21;
        *&v52[10] = 2080;
        *&v52[12] = p_p;
        v23 = v18;
        v24 = OS_LOG_TYPE_INFO;
        break;
      case 2:
        v11 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v11 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(is_base_of);
        }

        v13 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v12 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v12)
        {
          atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
          v14 = *v13;
          std::__shared_weak_count::__release_shared[abi:ne200100](v12);
        }

        else
        {
          v14 = *v13;
        }

        if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_43;
        }

        v19 = *(this + 22);
        AMCP::make_string_for_class_id(&__p, *(this + 20));
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v20 = &__p;
        }

        else
        {
          v20 = __p.__r_.__value_.__r.__words[0];
        }

        *buf = 136315906;
        *&buf[4] = "Null_Object.cpp";
        v51 = 1024;
        *v52 = 256;
        *&v52[4] = 1024;
        *&v52[6] = v19;
        *&v52[10] = 2080;
        *&v52[12] = v20;
        _os_log_debug_impl(&dword_1DE1F9000, v14, OS_LOG_TYPE_DEBUG, "%32s:%-5d Building Core %u for %s", buf, 0x22u);
        goto LABEL_41;
      case 1:
        v7 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v7 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(is_base_of);
        }

        v9 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v8 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v8)
        {
          atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
          v10 = *v9;
          std::__shared_weak_count::__release_shared[abi:ne200100](v8);
        }

        else
        {
          v10 = *v9;
        }

        if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_43;
        }

        v25 = *(this + 22);
        AMCP::make_string_for_class_id(&__p, *(this + 20));
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v26 = &__p;
        }

        else
        {
          v26 = __p.__r_.__value_.__r.__words[0];
        }

        *buf = 136315906;
        *&buf[4] = "Null_Object.cpp";
        v51 = 1024;
        *v52 = 256;
        *&v52[4] = 1024;
        *&v52[6] = v25;
        *&v52[10] = 2080;
        *&v52[12] = v26;
        v23 = v10;
        v24 = OS_LOG_TYPE_DEFAULT;
        break;
      default:
        goto LABEL_43;
    }

    _os_log_impl(&dword_1DE1F9000, v23, v24, "%32s:%-5d Building Core %u for %s", buf, 0x22u);
LABEL_41:
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

LABEL_43:
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }

  v27 = AMCP::Null::calculate_max_element(this + 6, *(this + 21));
  (*(*this + 48))(buf, this, v27);
  AMCP::Core::Broker::make_core(&v45, *(*(this + 1) + 16), buf, *(this + 22));
  if (v46)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v46);
  }

  if (!*(this + 6))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v39 = 0x676C6F626374726CLL;
  LODWORD(v40) = 0;
  AMCP::Address::to_string(&__p, &v39, 0x676C6F626374726CLL);
  size = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    v29 = __p.__r_.__value_.__r.__words[0];
    if (!__p.__r_.__value_.__r.__words[0])
    {
      v48 = 0;
      applesauce::CF::details::find_at_key_or_optional<applesauce::CF::ArrayRef,applesauce::CF::StringRef>(&cf, *(this + 6), 0);
      goto LABEL_54;
    }

    size = __p.__r_.__value_.__l.__size_;
  }

  else
  {
    v29 = &__p;
  }

  v30 = CFStringCreateWithBytes(0, v29, size, 0x8000100u, 0);
  v48 = v30;
  if (!v30)
  {
    v38 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v38, "Could not construct");
    __cxa_throw(v38, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  applesauce::CF::details::find_at_key_or_optional<applesauce::CF::ArrayRef,applesauce::CF::StringRef>(&cf, *(this + 6), v30);
  CFRelease(v30);
LABEL_54:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v44 == 1)
  {
    v31 = *(this + 2);
    v42[2] = *(this + 1);
    v42[3] = v31;
    if (v31)
    {
      atomic_fetch_add_explicit(v31 + 1, 1uLL, memory_order_relaxed);
    }

    std::shared_ptr<AMCP::IO_Core::IOContext_Core>::shared_ptr[abi:ne200100]<AMCP::IO_Core::IOContext_Core,0>(v42, *(this + 3), *(this + 4));
    LODWORD(v49) = 1633907820;
    BYTE4(v49) = 1;
    v40 = 0;
    v41 = 0;
    v39 = 0;
    std::vector<std::tuple<unsigned int,AMCP::Null::Expected_Class_Is_Subclass>>::__init_with_size[abi:ne200100]<std::tuple<unsigned int,AMCP::Null::Expected_Class_Is_Subclass> const*,std::tuple<unsigned int,AMCP::Null::Expected_Class_Is_Subclass> const*>(&v39, &v49, buf);
  }

  std::__hash_table<std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,std::__unordered_map_hasher<AMCP::Address,std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,true>,std::__unordered_map_equal<AMCP::Address,std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,AMCP::Address::Is_Exact_Match,AMCP::Address::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>>>::__deallocate_node(*&v52[2]);
  v32 = *buf;
  *buf = 0;
  if (v32)
  {
    operator delete(v32);
  }
}

void sub_1DE4EF600(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_1DE4EF6C8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Null::make_object_list(const void **a1, uint64_t *a2, unsigned int a3, std::string::size_type *a4, CFArrayRef *a5, unsigned int **a6)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (!*a5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  Count = CFArrayGetCount(*a5);
  if (Count)
  {
    v12 = 0;
    while (1)
    {
      if (!*a5)
      {
        v34 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v34, "Could not construct");
        __cxa_throw(v34, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      applesauce::CF::details::at_as<applesauce::CF::DictionaryRef>(&v49, *a5, v12);
      if (v50 == 1)
      {
        break;
      }

LABEL_50:
      if (v50 == 1)
      {
        if (v49)
        {
          CFRelease(v49);
        }
      }

      if (++v12 == Count)
      {
        return;
      }
    }

    if (!v49)
    {
      v35 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v35, "Could not construct");
      __cxa_throw(v35, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    v44 = 0x676C6F62636C6173;
    v45 = 0;
    AMCP::Address::to_string(&numBytes, &v44, v13);
    size = SHIBYTE(numBytes.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(numBytes.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      p_numBytes = numBytes.__r_.__value_.__r.__words[0];
      if (!numBytes.__r_.__value_.__r.__words[0])
      {
        v47 = 0;
LABEL_12:
        valuePtr = 0;
        v43 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
        if (!v43)
        {
          v36 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v36, "Could not construct");
          __cxa_throw(v36, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        applesauce::CF::at_or<applesauce::CF::NumberRef,applesauce::CF::StringRef>(&cf, v49, v47, &v43);
        if (!cf)
        {
          v37 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v37, "Could not construct");
          __cxa_throw(v37, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        v16 = applesauce::CF::convert_to<unsigned int,0>(cf);
        if (cf)
        {
          CFRelease(cf);
        }

        if (v43)
        {
          CFRelease(v43);
        }

        if (v47)
        {
          CFRelease(v47);
        }

        if (SHIBYTE(numBytes.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(numBytes.__r_.__value_.__l.__data_);
        }

        stock_class_id = AMCP::Null::get_stock_class_id(&v49, v16);
        v18 = *a6;
        v19 = a6[1];
        if (*a6 == v19)
        {
          goto LABEL_30;
        }

        do
        {
          v20 = *v18;
          if (v18[1])
          {
            if (AMCP::is_base_of(v20, stock_class_id))
            {
              goto LABEL_29;
            }
          }

          else if (v20 == stock_class_id)
          {
            goto LABEL_29;
          }

          v18 += 2;
        }

        while (v18 != v19);
        v18 = v19;
LABEL_29:
        if (v18 != a6[1])
        {
LABEL_30:
          v21 = a2[1];
          v42[0] = *a2;
          v42[1] = v21;
          if (v21)
          {
            atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v22 = a4[1];
          v41[0] = *a4;
          v41[1] = v22;
          if (v22)
          {
            atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          AMCP::Null::make_object(&numBytes, v42, a3, v41, &v49, stock_class_id);
          if (v22)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v22);
          }

          if (v21)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v21);
          }

          v24 = a1[1];
          v23 = a1[2];
          if (v24 >= v23)
          {
            v26 = *a1;
            v27 = v24 - *a1;
            v28 = v27 >> 4;
            v29 = (v27 >> 4) + 1;
            if (v29 >> 60)
            {
              std::vector<void *>::__throw_length_error[abi:ne200100]();
            }

            v30 = v23 - v26;
            if (v30 >> 3 > v29)
            {
              v29 = v30 >> 3;
            }

            if (v30 >= 0x7FFFFFFFFFFFFFF0)
            {
              v31 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v31 = v29;
            }

            v52[4] = a1;
            if (v31)
            {
              std::allocator<std::shared_ptr<DSP_Host_Types::FormatDescription>>::allocate_at_least[abi:ne200100](v31);
            }

            *(16 * v28) = *&numBytes.__r_.__value_.__l.__data_;
            v25 = (16 * v28 + 16);
            memcpy(0, v26, v27);
            v32 = *a1;
            *a1 = 0;
            a1[1] = v25;
            v33 = a1[2];
            a1[2] = 0;
            v52[2] = v32;
            v52[3] = v33;
            v52[0] = v32;
            v52[1] = v32;
            std::__split_buffer<std::shared_ptr<DSP_Host_Types::FormatDescription>>::~__split_buffer(v52);
          }

          else
          {
            *v24 = *&numBytes.__r_.__value_.__l.__data_;
            v25 = v24 + 16;
          }

          a1[1] = v25;
        }

        goto LABEL_50;
      }

      size = numBytes.__r_.__value_.__l.__size_;
    }

    else
    {
      p_numBytes = &numBytes;
    }

    v47 = CFStringCreateWithBytes(0, p_numBytes, size, 0x8000100u, 0);
    if (!v47)
    {
      v38 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v38, "Could not construct");
      __cxa_throw(v38, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    goto LABEL_12;
  }
}

void AMCP::Null::Box::~Box(std::__shared_weak_count **this)
{
  AMCP::Null::Object::~Object(this);

  JUMPOUT(0x1E12C1730);
}

void AMCP::Null::Object::~Object(std::__shared_weak_count **this)
{
  *this = &unk_1F5974AE0;
  AMCP::Null::Object::destroy_cores(this);
  v7 = (this + 12);
  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](&v7);
  v2 = this[9];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = this[8];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = this[6];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = this[4];
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  *this = &unk_1F59748E8;
  v6 = this[2];
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

{
  AMCP::Null::Object::~Object(this);

  JUMPOUT(0x1E12C1730);
}

void std::__shared_ptr_emplace<AMCP::Null::Box>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F59775A8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void *AMCP::Null::Clock::Clock(void *a1, uint64_t a2, uint64_t a3, int a4, void *a5, CFTypeRef *a6)
{
  *&v10 = a2;
  *(&v10 + 1) = a3;
  if (a3)
  {
    atomic_fetch_add_explicit((a3 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = a5[1];
  v9[0] = *a5;
  v9[1] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  AMCP::Null::Object::Object(a1, &v10, a4, v9, a6);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  if (*(&v10 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v10 + 1));
  }

  *a1 = &unk_1F5974BE0;
  return a1;
}

void sub_1DE4EFEE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AMCP::Null::Clock::do_set_property(AMCP::Null::Clock *this, int a2, const AMCP::Address *a3, const AMCP::Thing *a4)
{
  v8 = *(this + 8);
  if (v8)
  {
    v9 = std::__shared_weak_count::lock(v8);
  }

  else
  {
    v9 = 0;
  }

  if (*a3 == 1853059700)
  {
    operator new();
  }

  v10 = AMCP::Null::Object::do_set_property(this, a2, a3, a4);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  return v10;
}

void sub_1DE4F01A4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<AMCP::Null::Clock::do_set_property(unsigned int,AMCP::Address const&,AMCP::Thing const&)::$_0,std::allocator<AMCP::Null::Clock::do_set_property(unsigned int,AMCP::Address const&,AMCP::Thing const&)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Null5Clock15do_set_propertyEjRKNS_7AddressERKNS_5ThingEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::Null::Clock::do_set_property(unsigned int,AMCP::Address const&,AMCP::Thing const&)::$_0,std::allocator<AMCP::Null::Clock::do_set_property(unsigned int,AMCP::Address const&,AMCP::Thing const&)::$_0>,void ()(void)>::operator()(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = a1[1];
      if (!v5)
      {
LABEL_19:
        std::__shared_weak_count::__release_shared[abi:ne200100](v4);
        return;
      }

      MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v5[6]);
      v16[1] = MutableCopy;
      AMCP::make_description_from_thing(v16, (a1 + 7));
      v7 = v16[0];
      if (!v16[0])
      {
        if (MutableCopy)
        {
          CFRelease(MutableCopy);
        }

        goto LABEL_19;
      }

      v12 = 0x676C6F626E737274;
      v13 = 0;
      AMCP::Address::to_string(&bytes, &v12, 0x676C6F626E737274);
      size = SHIBYTE(bytes.__r_.__value_.__r.__words[2]);
      if ((SHIBYTE(bytes.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
      {
        p_bytes = bytes.__r_.__value_.__r.__words[0];
        if (!bytes.__r_.__value_.__r.__words[0])
        {
          v15 = 0;
          mcp_applesauce::CF::Dictionary_Builder::set_value<applesauce::CF::StringRef,applesauce::CF::TypeRef>(MutableCopy, 0, v7);
LABEL_13:
          if (SHIBYTE(bytes.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(bytes.__r_.__value_.__l.__data_);
          }

          mcp_applesauce::CF::Dictionary_Builder::copy_dictionary(&bytes, MutableCopy);
          (*(*v5 + 3))(v5, &bytes);
          if (bytes.__r_.__value_.__r.__words[0])
          {
            CFRelease(bytes.__r_.__value_.__l.__data_);
          }

          CFRelease(v7);
          if (MutableCopy)
          {
            CFRelease(MutableCopy);
          }

          goto LABEL_19;
        }

        size = bytes.__r_.__value_.__l.__size_;
      }

      else
      {
        p_bytes = &bytes;
      }

      v10 = CFStringCreateWithBytes(0, p_bytes, size, 0x8000100u, 0);
      v15 = v10;
      if (!v10)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
        __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      mcp_applesauce::CF::Dictionary_Builder::set_value<applesauce::CF::StringRef,applesauce::CF::TypeRef>(MutableCopy, v10, v7);
      CFRelease(v10);
      goto LABEL_13;
    }
  }
}

void sub_1DE4F03C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, const void *a17, const void *a18, const void *a19)
{
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(&a17);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  applesauce::CF::TypeRef::~TypeRef(&a18);
  mcp_applesauce::CF::Dictionary_Builder::~Dictionary_Builder(&a19);
  std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  _Unwind_Resume(a1);
}

void std::__function::__func<AMCP::Null::Clock::do_set_property(unsigned int,AMCP::Address const&,AMCP::Thing const&)::$_0,std::allocator<AMCP::Null::Clock::do_set_property(unsigned int,AMCP::Address const&,AMCP::Thing const&)::$_0>,void ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[11];
  if (v2)
  {
    v2(0, __p + 7, 0, 0);
  }

  v3 = __p[4];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = __p[2];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  operator delete(__p);
}

void std::__function::__func<AMCP::Null::Clock::do_set_property(unsigned int,AMCP::Address const&,AMCP::Thing const&)::$_0,std::allocator<AMCP::Null::Clock::do_set_property(unsigned int,AMCP::Address const&,AMCP::Thing const&)::$_0>,void ()(void)>::destroy(void *a1)
{
  v2 = a1[11];
  if (v2)
  {
    v2(0, a1 + 7, 0, 0);
  }

  v3 = a1[4];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = a1[2];
  if (v4)
  {

    std::__shared_weak_count::__release_weak(v4);
  }
}

uint64_t std::__function::__func<AMCP::Null::Clock::do_set_property(unsigned int,AMCP::Address const&,AMCP::Thing const&)::$_0,std::allocator<AMCP::Null::Clock::do_set_property(unsigned int,AMCP::Address const&,AMCP::Thing const&)::$_0>,void ()(void)>::__clone(uint64_t result, uint64_t a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_1F5975C58;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  v4 = *(result + 32);
  *(a2 + 24) = *(result + 24);
  *(a2 + 32) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  *(a2 + 40) = *(result + 40);
  v5 = *(result + 48);
  *(a2 + 56) = 0u;
  *(a2 + 48) = v5;
  *(a2 + 72) = 0u;
  *(a2 + 88) = 0;
  v6 = *(result + 88);
  if (v6)
  {
    return v6(1, result + 56);
  }

  return result;
}

void sub_1DE4F05B8(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 32);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(v1 + 16);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DE4F06A4(_Unwind_Exception *a1)
{
  v3 = v1[4];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = v1[2];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

void std::__function::__func<AMCP::Null::Clock::do_set_property(unsigned int,AMCP::Address const&,AMCP::Thing const&)::$_0,std::allocator<AMCP::Null::Clock::do_set_property(unsigned int,AMCP::Address const&,AMCP::Thing const&)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5975C58;
  v2 = a1[11];
  if (v2)
  {
    v2(0, a1 + 7, 0, 0);
  }

  v3 = a1[4];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = a1[2];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::Null::Clock::do_set_property(unsigned int,AMCP::Address const&,AMCP::Thing const&)::$_0,std::allocator<AMCP::Null::Clock::do_set_property(unsigned int,AMCP::Address const&,AMCP::Thing const&)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5975C58;
  v2 = a1[11];
  if (v2)
  {
    v2(0, a1 + 7, 0, 0);
  }

  v3 = a1[4];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = a1[2];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  return a1;
}

void sub_1DE4F20F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t std::__function::__func<AMCP::Null::Clock::populate_core(unsigned int)::$_5,std::allocator<AMCP::Null::Clock::populate_core(unsigned int)::$_5>,std::shared_ptr<AMCP::Core::Engine> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Null5Clock13populate_coreEjE3$_5"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::Null::Clock::populate_core(unsigned int)::$_5,std::allocator<AMCP::Null::Clock::populate_core(unsigned int)::$_5>,std::shared_ptr<AMCP::Core::Engine> ()(void)>::operator()(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v37 = *MEMORY[0x1E69E9840];
  AMCP::Core::Broker::fetch_core(&v24, *(*(a1 + 16) + 16), *(a1 + 8));
  v4 = v24;
  if (v24)
  {
    AMCP::Core::Core::get_simple_required_property<1969841184u>(&cf, v24);
    AMCP::Core::Core::get_simple_required_property<1853059700u>(v4);
    AMCP::Core::Core::get_simple_required_property<1668049764u>(v4);
    *buf = 0;
    strcpy(v26, "tfastpni");
    v26[9] = 0;
    *&v26[10] = 0;
    AMCP::Core::Core::get_typed_property_value<unsigned int,std::enable_if<true,void>>(v4, v26, buf);
    *buf = 0;
    strcpy(v26, "tfasptuo");
    v26[9] = 0;
    *&v26[10] = 0;
    AMCP::Core::Core::get_typed_property_value<unsigned int,std::enable_if<true,void>>(v4, v26, buf);
    *buf = 0;
    strcpy(v26, "cntltpni");
    v26[9] = 0;
    *&v26[10] = 0;
    AMCP::Core::Core::get_typed_property_value<unsigned int,std::enable_if<true,void>>(v4, v26, buf);
    *buf = 0;
    strcpy(v26, "cntlptuo");
    v26[9] = 0;
    *&v26[10] = 0;
    AMCP::Core::Core::get_typed_property_value<unsigned int,std::enable_if<true,void>>(v4, v26, buf);
    AMCP::Null::make_stream_info_list(&v22, *(*(a1 + 16) + 16), &v24, 0x696E7074u);
    AMCP::Null::make_stream_info_list(&v21, *(*(a1 + 16) + 16), &v24, 0x6F757470u);
    *buf = 0;
    strcpy(v26, "lflnbolg");
    v26[9] = 0;
    *&v26[10] = 0;
    AMCP::Core::Core::get_typed_property_value<applesauce::CF::StringRef,std::enable_if<true,void>>(&v20, v4, v26, buf);
    strcpy(v26, "dsrnbolg");
    v26[9] = 0;
    *&v26[10] = 0;
    v5 = AMCP::Core::Core::get_typed_property_value<BOOL,std::enable_if<true,void>>(v4, v26);
    if (v5 <= 0xFFu)
    {
      v9 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v9 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v5);
      }

      v11 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v10 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        v12 = *v11;
        std::__shared_weak_count::__release_shared[abi:ne200100](v10);
      }

      else
      {
        v12 = *v11;
      }

      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        HIBYTE(v36) = 4;
        strcpy(buf, "nrsd");
        *v26 = 136316418;
        *&v26[4] = "Core.h";
        *&v26[12] = 1024;
        *&v26[14] = 391;
        goto LABEL_31;
      }
    }

    else
    {
      strcpy(v26, "fcrnbolg");
      v26[9] = 0;
      *&v26[10] = 0;
      v6 = AMCP::Core::Core::get_typed_property_value<BOOL,std::enable_if<true,void>>(v4, v26);
      if (v6 <= 0xFFu)
      {
        v13 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v13 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v6);
        }

        v15 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v14 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v14)
        {
          atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
          v12 = *v15;
          std::__shared_weak_count::__release_shared[abi:ne200100](v14);
        }

        else
        {
          v12 = *v15;
        }

        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          HIBYTE(v36) = 4;
          v19 = 1717793390;
LABEL_30:
          *buf = v19;
          buf[4] = 0;
          *v26 = 136316418;
          *&v26[4] = "Core.h";
          *&v26[12] = 1024;
          *&v26[14] = 391;
LABEL_31:
          v27 = 2080;
          v28 = "optional_value.operator BOOL() == true";
          v29 = 2080;
          v30 = buf;
          v31 = 1024;
          v32 = 1735159650;
          v33 = 1024;
          v34 = 0;
          _os_log_error_impl(&dword_1DE1F9000, v12, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s a required property is missing '%s':%u:%u", v26, 0x32u);
          if (SHIBYTE(v36) < 0)
          {
            operator delete(*buf);
          }
        }
      }

      else
      {
        strcpy(v26, "enotbolg");
        v26[9] = 0;
        *&v26[10] = 0;
        v7 = AMCP::Core::Core::get_typed_property_value<BOOL,std::enable_if<true,void>>(v4, v26);
        if (v7 > 0xFFu)
        {
          AMCP::Utility::Dispatch_Queue::Dispatch_Queue(v26, (*(*(a1 + 16) + 32) + 704));
          operator new();
        }

        v16 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v16 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v7);
        }

        v18 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v17 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v17)
        {
          atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
          v12 = *v18;
          std::__shared_weak_count::__release_shared[abi:ne200100](v17);
        }

        else
        {
          v12 = *v18;
        }

        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          HIBYTE(v36) = 4;
          v19 = 1701736308;
          goto LABEL_30;
        }
      }
    }

    abort();
  }

  v8 = 0uLL;
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
    v8 = 0uLL;
  }

  *a2 = v8;
}

void sub_1DE4F37D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, const void *a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, const void *a29, uint64_t a30, std::__shared_weak_count *a31, const void *a32, const void *a33, uint64_t a34, void *__p, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, void *a52, uint64_t a53, uint64_t a54, uint64_t a55, void *a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, void *a61, uint64_t a62, uint64_t a63)
{
  v67 = v65[5];
  if (v67)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v67);
  }

  a56 = v65;
  std::vector<std::shared_ptr<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](&a56);
  MEMORY[0x1E12C1730](v65, 0x1020C40E3AF47BELL);
  if (__p)
  {
    operator delete(__p);
  }

  v68 = *(a18 + 784);
  *(a18 + 784) = 0;
  if (v68)
  {
    std::default_delete<AMCP::Tone_Generator_Buffer>::operator()[abi:ne200100](v68);
  }

  std::unique_ptr<AMCP::Null::Null_Engine_Reflector>::reset[abi:ne200100](a16, 0);
  applesauce::CF::StringRef::~StringRef((a18 + 760));
  AMCP::IO_Clock::~IO_Clock((a18 + 600));
  AMCP::Core::Implementation::Simple_Engine_IO_State::~Simple_Engine_IO_State((a18 + 144));
  AMCP::Core::Implementation::Simple_Engine_Data::~Simple_Engine_Data((a18 + 48));
  v69 = *(a18 + 40);
  if (v69)
  {
    std::__shared_weak_count::__release_weak(v69);
  }

  applesauce::CF::StringRef::~StringRef(&a32);
  applesauce::CF::StringRef::~StringRef(&a33);
  std::__shared_weak_count::~__shared_weak_count(a18);
  operator delete(v70);
  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue(&a65);
  applesauce::CF::StringRef::~StringRef(&a22);
  if (a23)
  {
    operator delete(a23);
  }

  if (a26)
  {
    operator delete(a26);
  }

  applesauce::CF::StringRef::~StringRef(&a29);
  if (a31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a31);
  }

  _Unwind_Resume(a1);
}

void AMCP::Null::make_stream_info_list(void **a1, std::__shared_mutex_base *a2, AMCP::Core::Core **a3, unsigned int a4)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v8 = *a3;
  LODWORD(v32) = 1937009955;
  HIDWORD(v32) = a4;
  LODWORD(v33) = 0;
  if (AMCP::Core::Core::has_property(v8, &v32))
  {
    AMCP::Core::Core::get_simple_required_property<1937009955u>(&v32, *a3, a4);
    v9 = v32;
    v10 = v33;
    __p = v32;
    std::vector<AMCP::Core::Implementation::Simple_Engine_Data::Stream_Info>::reserve(a1, v33 - v32);
    if (v9 != v10)
    {
      v11 = __p;
      do
      {
        AMCP::Core::Broker::fetch_core(&v30, a2, *v11);
        v12 = v30;
        if (v30)
        {
          simple_required = AMCP::Core::Core::get_simple_required_property<1935894638u>(v30);
          AMCP::Core::Core::get_simple_required_property<1718444404u>(&v27, v12);
          v14 = a1[1];
          v15 = a1[2];
          if (v14 >= v15)
          {
            v18 = *a1;
            v19 = v14 - *a1;
            v20 = 0x6DB6DB6DB6DB6DB7 * (v19 >> 3) + 1;
            if (v20 > 0x492492492492492)
            {
              std::vector<void *>::__throw_length_error[abi:ne200100]();
            }

            v21 = 0x6DB6DB6DB6DB6DB7 * ((v15 - v18) >> 3);
            if (2 * v21 > v20)
            {
              v20 = 2 * v21;
            }

            if (v21 >= 0x249249249249249)
            {
              v22 = 0x492492492492492;
            }

            else
            {
              v22 = v20;
            }

            if (v22)
            {
              std::allocator<AMCP::Core::Implementation::Simple_Engine_Data::Stream_Info>::allocate_at_least[abi:ne200100](v22);
            }

            v23 = 8 * (v19 >> 3);
            *(v23 + 4) = 0;
            *(v23 + 8) = 0;
            *v23 = simple_required;
            v24 = v28;
            *(v23 + 16) = v27;
            *(v23 + 32) = v24;
            *(v23 + 48) = v29;
            v17 = (v23 + 56);
            v25 = (v23 - v19);
            memcpy((v23 - v19), v18, v19);
            *a1 = v25;
            a1[1] = v17;
            a1[2] = 0;
            if (v18)
            {
              operator delete(v18);
            }
          }

          else
          {
            *(v14 + 1) = 0;
            *(v14 + 2) = 0;
            *v14 = simple_required;
            v16 = v28;
            *(v14 + 1) = v27;
            *(v14 + 2) = v16;
            *(v14 + 6) = v29;
            v17 = v14 + 56;
          }

          a1[1] = v17;
        }

        if (v31)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v31);
        }

        ++v11;
      }

      while (v11 != v10);
    }

    if (__p)
    {
      operator delete(__p);
    }
  }
}

void sub_1DE4F3D50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  v19 = *v17;
  if (*v17)
  {
    *(v17 + 8) = v19;
    operator delete(v19);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_emplace<AMCP::Null::Engine>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5975BF8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void std::__function::__func<AMCP::Null::Clock::populate_core(unsigned int)::$_5,std::allocator<AMCP::Null::Clock::populate_core(unsigned int)::$_5>,std::shared_ptr<AMCP::Core::Engine> ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<AMCP::Null::Clock::populate_core(unsigned int)::$_5,std::allocator<AMCP::Null::Clock::populate_core(unsigned int)::$_5>,std::shared_ptr<AMCP::Core::Engine> ()(void)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<AMCP::Null::Clock::populate_core(unsigned int)::$_5,std::allocator<AMCP::Null::Clock::populate_core(unsigned int)::$_5>,std::shared_ptr<AMCP::Core::Engine> ()(void)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5975B88;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 16) = *(result + 16);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<AMCP::Null::Clock::populate_core(unsigned int)::$_5,std::allocator<AMCP::Null::Clock::populate_core(unsigned int)::$_5>,std::shared_ptr<AMCP::Core::Engine> ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5975B88;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::Null::Clock::populate_core(unsigned int)::$_5,std::allocator<AMCP::Null::Clock::populate_core(unsigned int)::$_5>,std::shared_ptr<AMCP::Core::Engine> ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5975B88;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t std::__function::__func<AMCP::Null::Clock::populate_core(unsigned int)::$_1,std::allocator<AMCP::Null::Clock::populate_core(unsigned int)::$_1>,CA::ValueRangeList ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Null5Clock13populate_coreEjE3$_1"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::Null::Clock::populate_core(unsigned int)::$_1,std::allocator<AMCP::Null::Clock::populate_core(unsigned int)::$_1>,CA::ValueRangeList ()(void)>::operator()(uint64_t a1@<X0>, void *a2@<X8>)
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 8);
  v4 = *(*(v3 + 8) + 16);
  numBytes[0] = &unk_1F5975AF8;
  numBytes[1] = v3;
  *(&v30 + 1) = numBytes;
  AMCP::Core::Broker::fetch_first_core_if (&v27, v4, numBytes);
  std::__function::__value_func<BOOL ()(std::shared_ptr<AMCP::Core::Core> const&)>::~__value_func[abi:ne200100](numBytes);
  if (v27)
  {
    AMCP::Core::Core::get_simple_required_property<1718449187u>(numBytes, v27);
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    v5 = numBytes[0];
    v6 = numBytes[1];
    while (v5 != v6)
    {
      v7 = *v5;
      v8 = *(v5 + 8);
      while (v7 != v8)
      {
        CA::ValueRangeList::AddRange(a2, v7);
        v7 += 2;
      }

      v5 += 64;
    }

    cf = numBytes;
    std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>::__destroy_vector::operator()[abi:ne200100](&cf);
    goto LABEL_37;
  }

  if (!*(v3 + 48))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v22 = 0x676C6F626E737223;
  v23 = 0;
  AMCP::Address::to_string(numBytes, &v22, 0x676C6F626E737223);
  v9 = SBYTE7(v30);
  if ((SBYTE7(v30) & 0x8000000000000000) != 0)
  {
    v10 = numBytes[0];
    if (!numBytes[0])
    {
      v24 = 0;
      applesauce::CF::details::find_at_key_or_optional<applesauce::CF::ArrayRef,applesauce::CF::StringRef>(&cf, *(v3 + 48), 0);
      goto LABEL_16;
    }

    v9 = numBytes[1];
  }

  else
  {
    v10 = numBytes;
  }

  v11 = CFStringCreateWithBytes(0, v10, v9, 0x8000100u, 0);
  v24 = v11;
  if (!v11)
  {
    v17 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v17, "Could not construct");
    __cxa_throw(v17, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  applesauce::CF::details::find_at_key_or_optional<applesauce::CF::ArrayRef,applesauce::CF::StringRef>(&cf, *(v3 + 48), v11);
  CFRelease(v11);
LABEL_16:
  if (SBYTE7(v30) < 0)
  {
    operator delete(numBytes[0]);
  }

  if (v26 == 1)
  {
    v31 = 0;
    *numBytes = 0u;
    v30 = 0u;
    AMCP::Implementation::In_Place_Storage<applesauce::CF::ArrayRef>::construct<applesauce::CF::ArrayRef&>(numBytes, &cf);
    AMCP::Thing::convert_to<CA::ValueRangeList>(a2, numBytes);
    if (v31)
    {
      v31(0, numBytes, 0, 0);
    }

    if (cf)
    {
      CFRelease(cf);
    }

    goto LABEL_37;
  }

  if (!*(v3 + 48))
  {
    v18 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v18, "Could not construct");
    __cxa_throw(v18, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v22 = 0x676C6F626E737274;
  v23 = 0;
  AMCP::Address::to_string(numBytes, &v22, 0x676C6F626E737274);
  v12 = SBYTE7(v30);
  if ((SBYTE7(v30) & 0x8000000000000000) == 0)
  {
    v13 = numBytes;
    goto LABEL_28;
  }

  v13 = numBytes[0];
  if (numBytes[0])
  {
    v12 = numBytes[1];
LABEL_28:
    v14 = CFStringCreateWithBytes(0, v13, v12, 0x8000100u, 0);
    v21 = v14;
    if (!v14)
    {
      v20 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v20, "Could not construct");
      __cxa_throw(v20, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    goto LABEL_29;
  }

  v14 = 0;
  v21 = 0;
LABEL_29:
  applesauce::CF::details::find_at_key<applesauce::CF::NumberRef,applesauce::CF::StringRef>(&v24, *(v3 + 48), v14);
  if (!v24)
  {
    v19 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v19, "Could not construct");
    __cxa_throw(v19, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v15 = applesauce::CF::convert_to<double,0>(v24);
  if (v24)
  {
    CFRelease(v24);
  }

  if (v21)
  {
    CFRelease(v21);
  }

  if (SBYTE7(v30) < 0)
  {
    operator delete(numBytes[0]);
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  numBytes[0] = v15;
  numBytes[1] = v15;
  CA::ValueRangeList::AddRange(a2, numBytes);
LABEL_37:
  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }
}

void sub_1DE4F4440(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(&a9);
  if (a22 < 0)
  {
    operator delete(__p);
  }

  std::optional<applesauce::CF::ArrayRef>::~optional(&a13);
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  _Unwind_Resume(a1);
}

void *applesauce::CF::details::find_at_key<applesauce::CF::NumberRef,applesauce::CF::StringRef>(void *a1, CFDictionaryRef theDict, const void *a3)
{
  v4 = applesauce::CF::details::at_key<applesauce::CF::StringRef>(theDict, a3);
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::not_found(exception);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return applesauce::CF::NumberRef::from_get(a1, v4);
}

uint64_t _ZNKSt3__110__function6__funcIZZN4AMCP4Null5Clock13populate_coreEjENK3__1clEvEUlRKT_E_NS_9allocatorIS9_EEFbRKNS_10shared_ptrINS2_4Core4CoreEEEEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZZN4AMCP4Null5Clock13populate_coreEjENK3$_1clEvEUlRKT_E_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL _ZNSt3__110__function6__funcIZZN4AMCP4Null5Clock13populate_coreEjENK3__1clEvEUlRKT_E_NS_9allocatorIS9_EEFbRKNS_10shared_ptrINS2_4Core4CoreEEEEEclESH_(uint64_t a1, AMCP::Core::Core **a2)
{
  v3 = *(a1 + 8);
  simple_required = AMCP::Core::Core::get_simple_required_property<1870098034u>(*a2);
  v5 = AMCP::Core::Core::get_simple_required_property<1650682995u>(*a2);
  return *(v3 + 88) == simple_required && v5 == 1634956402;
}

uint64_t _ZNKSt3__110__function6__funcIZZN4AMCP4Null5Clock13populate_coreEjENK3__1clEvEUlRKT_E_NS_9allocatorIS9_EEFbRKNS_10shared_ptrINS2_4Core4CoreEEEEE7__cloneEPNS0_6__baseISI_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5975AF8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<AMCP::Null::Clock::populate_core(unsigned int)::$_1,std::allocator<AMCP::Null::Clock::populate_core(unsigned int)::$_1>,CA::ValueRangeList ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5975A88;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<AMCP::Null::Clock::populate_core(unsigned int)::$_4,std::allocator<AMCP::Null::Clock::populate_core(unsigned int)::$_4>,void ()(double const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Null5Clock13populate_coreEjE3$_4"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::Null::Clock::populate_core(unsigned int)::$_4,std::allocator<AMCP::Null::Clock::populate_core(unsigned int)::$_4>,void ()(double const&)>::operator()(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 16);
  if (!v3 || (v3 = std::__shared_weak_count::lock(v3), (v5 = v3) == 0) || (v3 = *(a1 + 8)) == 0)
  {
    v13 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v13 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v3);
    }

    v15 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v14 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      v16 = *v15;
      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    }

    else
    {
      v16 = *v15;
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "Null_Object.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 816;
      *&buf[18] = 2080;
      *&buf[20] = "object_ptr.operator BOOL() == false";
      _os_log_error_impl(&dword_1DE1F9000, v16, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s no model object", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v25);
    __cxa_allocate_exception(0x40uLL);
    std::runtime_error::runtime_error(&v18, "no model object");
    std::runtime_error::runtime_error(&v19, &v18);
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = -1;
    v19.__vftable = &unk_1F5992170;
    v20 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v19);
    v27 = "auto AMCP::Null::Clock::populate_core(Address::Element)::(anonymous class)::operator()(const Sample_Rate &) const";
    v28 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Null/Null_Object.cpp";
    v29 = 816;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v17);
  }

  v6 = v3[22];
  v19.__vftable = 0x676C6F626E737274;
  LODWORD(v19.__imp_.__imp_) = 0;
  memset(&buf[8], 0, 24);
  *buf = *a2;
  v27 = AMCP::Implementation::In_Place_Storage<double>::dispatch;
  v7 = (*(*v3 + 40))(v3, v6, &v19, buf);
  v8 = v7;
  if (v27)
  {
    v7 = v27(0, buf, 0, 0);
  }

  if ((v8 & 1) == 0)
  {
    v9 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v9 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v7);
    }

    v11 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v10 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      v12 = *v11;
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }

    else
    {
      v12 = *v11;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "Null_Object.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 818;
      *&buf[18] = 2080;
      *&buf[20] = "was_handled == Object::Was_Handled::no";
      _os_log_error_impl(&dword_1DE1F9000, v12, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s not handled", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v25);
    __cxa_allocate_exception(0x40uLL);
    std::runtime_error::runtime_error(&v18, "not handled");
    std::runtime_error::runtime_error(&v19, &v18);
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = -1;
    v19.__vftable = &unk_1F5992170;
    v20 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v19);
    v27 = "auto AMCP::Null::Clock::populate_core(Address::Element)::(anonymous class)::operator()(const Sample_Rate &) const";
    v28 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Null/Null_Object.cpp";
    v29 = 818;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v17);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v5);
}

void sub_1DE4F4D1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, std::runtime_error a17, ...)
{
  va_start(va, a17);
  if (__p)
  {
    operator delete(__p);
  }

  if (a9)
  {
    operator delete(a9);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(v20 - 128);
  boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(va);
  std::runtime_error::~runtime_error(&a17);
  if (v19)
  {
    __cxa_free_exception(v18);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v20 - 129));
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  _Unwind_Resume(a1);
}

void std::__function::__func<AMCP::Null::Clock::populate_core(unsigned int)::$_4,std::allocator<AMCP::Null::Clock::populate_core(unsigned int)::$_4>,void ()(double const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<AMCP::Null::Clock::populate_core(unsigned int)::$_4,std::allocator<AMCP::Null::Clock::populate_core(unsigned int)::$_4>,void ()(double const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t std::__function::__func<AMCP::Null::Clock::populate_core(unsigned int)::$_4,std::allocator<AMCP::Null::Clock::populate_core(unsigned int)::$_4>,void ()(double const&)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_1F5975A08;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<AMCP::Null::Clock::populate_core(unsigned int)::$_4,std::allocator<AMCP::Null::Clock::populate_core(unsigned int)::$_4>,void ()(double const&)>::~__func(void *a1)
{
  *a1 = &unk_1F5975A08;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::Null::Clock::populate_core(unsigned int)::$_4,std::allocator<AMCP::Null::Clock::populate_core(unsigned int)::$_4>,void ()(double const&)>::~__func(void *a1)
{
  *a1 = &unk_1F5975A08;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

uint64_t std::__function::__func<AMCP::Null::Clock::populate_core(unsigned int)::$_0,std::allocator<AMCP::Null::Clock::populate_core(unsigned int)::$_0>,double ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Null5Clock13populate_coreEjE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

double std::__function::__func<AMCP::Null::Clock::populate_core(unsigned int)::$_0,std::allocator<AMCP::Null::Clock::populate_core(unsigned int)::$_0>,double ()(void)>::operator()(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);
  v2 = *(*(v1 + 8) + 16);
  v3 = *(v1 + 88);
  v22 = &unk_1F5975978;
  v24 = &v22;
  memset(valuePtr, 0, sizeof(valuePtr));
  LODWORD(v16) = v3;
  memset(__p, 0, sizeof(__p));
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>(__p, &v16, &v16 + 1, 1uLL);
  AMCP::Core::Broker::gather_directly_owned_objects(&bytes, v2, __p);
  if (__p[0])
  {
    operator delete(__p[0]);
  }

  v4 = *&bytes.__r_.__value_.__l.__data_;
  if (bytes.__r_.__value_.__r.__words[0] == bytes.__r_.__value_.__l.__size_)
  {
LABEL_11:
    v17 = 0;
    v18 = 0;
  }

  else
  {
    v5 = bytes.__r_.__value_.__r.__words[0];
    while (1)
    {
      AMCP::Core::Broker::fetch_core(&v17, v2, *v5);
      if (v17)
      {
        if (!v24)
        {
          std::__throw_bad_function_call[abi:ne200100]();
        }

        if ((*(*v24 + 48))(v24, &v17))
        {
          break;
        }
      }

      if (v18)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v18);
      }

      if (++v5 == *(&v4 + 1))
      {
        goto LABEL_11;
      }
    }
  }

  if (v4)
  {
    operator delete(v4);
  }

  bytes.__r_.__value_.__r.__words[0] = valuePtr;
  std::vector<std::shared_ptr<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](&bytes);
  std::__function::__value_func<BOOL ()(std::shared_ptr<AMCP::Core::Core> const&)>::~__value_func[abi:ne200100](&v22);
  if (v17)
  {
    AMCP::Core::Core::get_simple_required_property<1718444404u>(&bytes, v17);
    v6 = *&bytes.__r_.__value_.__l.__data_;
    goto LABEL_30;
  }

  if (!*(v1 + 48))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v22 = 0x676C6F626E737274;
  v23 = 0;
  AMCP::Address::to_string(&bytes, &v22, 0x676C6F626E737274);
  size = SHIBYTE(bytes.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(bytes.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
  {
    p_bytes = &bytes;
    goto LABEL_21;
  }

  p_bytes = bytes.__r_.__value_.__r.__words[0];
  if (bytes.__r_.__value_.__r.__words[0])
  {
    size = bytes.__r_.__value_.__l.__size_;
LABEL_21:
    v16 = CFStringCreateWithBytes(0, p_bytes, size, 0x8000100u, 0);
    if (!v16)
    {
      v14 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v14, "Could not construct");
      __cxa_throw(v14, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    goto LABEL_22;
  }

  v16 = 0;
LABEL_22:
  valuePtr[0] = 0x40E5888000000000;
  cf = CFNumberCreate(0, kCFNumberDoubleType, valuePtr);
  if (!cf)
  {
    v12 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v12, "Could not construct");
    __cxa_throw(v12, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  applesauce::CF::at_or<applesauce::CF::NumberRef,applesauce::CF::StringRef>(__p, *(v1 + 48), v16, &cf);
  v9 = __p[0];
  if (!__p[0])
  {
    v13 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v13, "Could not construct");
    __cxa_throw(v13, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v6 = applesauce::CF::convert_to<double,0>(__p[0]);
  CFRelease(v9);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  if (SHIBYTE(bytes.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(bytes.__r_.__value_.__l.__data_);
  }

LABEL_30:
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  return v6;
}