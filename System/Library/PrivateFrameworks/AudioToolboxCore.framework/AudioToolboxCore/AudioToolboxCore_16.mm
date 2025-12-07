uint64_t AudioFormatProperty_HashForChannelLayout(const AudioChannelLayout *a1, unsigned int *a2)
{
  *a2 = 0;
  v9 = 0;
  FullChannelLayout = AudioFormat_GetFullChannelLayout(a1, &v9);
  v4 = v9;
  if (!FullChannelLayout && v9->mNumberChannelDescriptions)
  {
    v5 = 0;
    v6 = *a2;
    v7 = &v9->mChannelDescriptions[0].mCoordinates[2];
    do
    {
      v6 = v6 - *(v7 - 4) + 8 * *(v7 - 4);
      *a2 = v6;
      if (*(v7 - 4) == 100)
      {
        v6 = ((((*(v7 - 1) * 11.0) + (*(v7 - 2) * 7.0)) + (*v7 * 13.0)) + v6);
        *a2 = v6;
      }

      ++v5;
      v7 += 5;
    }

    while (v5 < v4->mNumberChannelDescriptions);
  }

  free(v4);
  return FullChannelLayout;
}

uint64_t AudioFormatProperty_SpeakerHemispheresForChannelLayout(const AudioChannelLayout *this, const AudioChannelLayout *a2)
{
  mChannelLayoutTag = this->mChannelLayoutTag;
  if (this->mChannelLayoutTag)
  {
    v4 = CAAudioChannelLayout::NumberChannels(this, a2);
    v5 = CAAudioChannelLayout::Create(v4);
    if (this->mChannelLayoutTag == 0x10000)
    {
      AudioFormatProperty_ChannelLayoutForBitmap(this->mChannelBitmap, v5, v6);
    }

    else
    {
      AudioFormatProperty_ChannelLayoutForTag(this->mChannelLayoutTag, v5);
    }
  }

  else
  {
    v5 = this;
  }

  if (v5->mNumberChannelDescriptions)
  {
    v7 = 0;
    v8 = 0;
    mChannelDescriptions = v5->mChannelDescriptions;
    v10 = v5->mChannelLayoutTag;
    while (1)
    {
      v11 = *&mChannelDescriptions->mChannelLabel;
      v22 = mChannelDescriptions->mCoordinates[2];
      v21 = v11;
      if (!v10)
      {
        SetDefaultChannelPosition(&v21);
      }

      if (BYTE4(v21))
      {
        break;
      }

      if ((BYTE4(v21) & 2) != 0)
      {
        v12 = v8 | 2;
        if (*(&v21 + 2) <= 0.0)
        {
          v12 = v8;
        }

        if (*(&v21 + 2) < 0.0)
        {
          v12 = v8 | 1;
        }

        v13 = fabsf(*(&v21 + 2));
        v14 = v12 | 8;
        if (v13 >= 90.0)
        {
          v14 = v12;
        }

        v15 = v12 | 4;
        if (v13 > 90.0)
        {
          v8 = v15;
        }

        else
        {
          v8 = v14;
        }

        v16 = *(&v21 + 3) <= 0.0;
        if (*(&v21 + 3) >= 0.0)
        {
          goto LABEL_22;
        }

LABEL_34:
        v8 = v8 | 0x10;
      }

LABEL_35:
      ++v7;
      ++mChannelDescriptions;
      if (v7 >= v5->mNumberChannelDescriptions)
      {
        if (mChannelLayoutTag)
        {
          goto LABEL_37;
        }

        return v8;
      }
    }

    v17 = v8 | 2;
    if (*(&v21 + 2) <= 0.0)
    {
      v17 = v8;
    }

    if (*(&v21 + 2) < 0.0)
    {
      v17 = v8 | 1;
    }

    v18 = v17 | 8;
    if (*(&v21 + 3) <= 0.0)
    {
      v18 = v17;
    }

    v19 = v17 | 4;
    if (*(&v21 + 3) < 0.0)
    {
      v8 = v19;
    }

    else
    {
      v8 = v18;
    }

    v16 = v22 <= 0.0;
    if (v22 >= 0.0)
    {
LABEL_22:
      if (!v16)
      {
        v8 = v8 | 0x20;
      }

      goto LABEL_35;
    }

    goto LABEL_34;
  }

  v8 = 0;
  if (mChannelLayoutTag)
  {
LABEL_37:
    MEMORY[0x193ADE5A0](v5);
  }

  return v8;
}

void AudioFormat_CompleteChannelLayoutWithCoordinates(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  if (**a1 || v3[2] <= 1u)
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    v4 = *(a1 + 8);
LABEL_4:

    std::vector<char>::__init_with_size[abi:ne200100]<char *,char *>(a2, v3, v4, v4 - v3);
    return;
  }

  v5 = v3 + 3;
  v4 = *(a1 + 8);
  if (v3 + 3 != v4)
  {
    v6 = v3 + 5;
    while (1)
    {
      v7 = 0;
      do
      {
        v8 = fabsf(*&v6[v7]);
      }

      while (v8 < 0.00000011921 && v7++ != 2);
      if (v8 >= 0.00000011921)
      {
        break;
      }

      v5 += 5;
      v6 += 5;
      if (v5 == v4)
      {
        goto LABEL_17;
      }
    }

    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    goto LABEL_4;
  }

LABEL_17:
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<char>::__init_with_size[abi:ne200100]<char *,char *>(a2, v3, v4, v4 - v3);
  v10 = *a2;
  v11 = *(*a2 + 8);
  v12 = (a2[1] - *a2 - 12) / 0x14uLL;
  if (v12 < v11)
  {
LABEL_22:
    __assert_rtn("GetNumberChannelDescriptions", "CoreAudioBaseTypes.hpp", 2252, "GetAudioChannelLayout().mNumberChannelDescriptions <= (mStorage.size() - kHeaderSize) / sizeof(AudioChannelDescription)");
  }

  v13 = v10 + 20;
  v14 = -1;
  while (++v14 < v11)
  {
    inSpecifier = *(v13 - 8);
    ioPropertyDataSize = 20;
    Property = AudioFormatGetProperty(0x6473636Cu, 4u, &inSpecifier, &ioPropertyDataSize, outPropertyData);
    if (Property)
    {
      v17 = CADefaultLog();
      if (v17)
      {
        v18 = v17;
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315906;
          v26 = "AudioFormatChannelLayouts.cpp";
          v27 = 1024;
          v28 = 2832;
          v29 = 1024;
          v30 = inSpecifier;
          v31 = 1024;
          v32 = Property;
          _os_log_impl(&dword_18F5DF000, v18, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to get default coordinates for %u err: %d", buf, 0x1Eu);
        }
      }

      return;
    }

    *(v13 - 4) = v21;
    v16 = v22;
    *(v13 + 8) = v23;
    *v13 = v16;
    v13 += 20;
    v11 = *(v10 + 8);
    if (v12 < v11)
    {
      goto LABEL_22;
    }
  }
}

void sub_18F6CF614(_Unwind_Exception *a1)
{
  *(v1 + 8) = v2;
  operator delete(v2);
  _Unwind_Resume(a1);
}

uint64_t MP4BoxParser_FileType::Init(MP4BoxParser_FileType *this)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = MP4BoxParser::Initialize(this);
  if (!v2)
  {
    if (*(this + 5) != 1718909296)
    {
      return 4294967294;
    }

    if ((*(this + 3) - 129) < 0xFFFFFFFFFFFFFF93)
    {
      return 0xFFFFFFFFLL;
    }

    v18 = 0;
    v4 = (*(*this + 24))(this);
    v5 = MP4BoxParser::ReadDataSourceBytes(*(this + 1), v4, 8uLL, &v19);
    *(this + 7) = vrev32_s8(v19);
    v6 = *(this + 3) + 0x3FFFFFFF0;
    *(this + 16) = v6 >> 2;
    if (!(v6 >> 2))
    {
      return v5;
    }

    MP4BoxParser::GetDataSourceSize(*(this + 1), &v18);
    if (v7)
    {
      v2 = v7;
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        return v2;
      }

      *buf = 136315394;
      v21 = "MP4_BoxParser_FileType.cpp";
      v22 = 1024;
      v23 = 99;
      v8 = MEMORY[0x1E69E9C10];
      v9 = "%25s:%-5d  unable to determine data source size";
LABEL_11:
      _os_log_impl(&dword_18F5DF000, v8, OS_LOG_TYPE_ERROR, v9, buf, 0x12u);
      return v2;
    }

    v10 = (*(*this + 24))(this);
    if (v18 < (v10 + (v6 & 0xFFFFFFFC)) || *(this + 16) > 0x14u)
    {
      return 0xFFFFFFFFLL;
    }

    if (!*(this + 9))
    {
      v11 = malloc_type_malloc(v6 & 0xFFFFFFFC, 0x92CF1E95uLL);
      if ((v6 & 0xFFFFFFFC) != 0 && !v11)
      {
        exception = __cxa_allocate_exception(8uLL);
        v17 = std::bad_alloc::bad_alloc(exception);
      }

      *(this + 9) = v11;
    }

    v12 = (*(*this + 24))(this);
    DataSourceBytes = MP4BoxParser::ReadDataSourceBytes(*(this + 1), v12 + 8, v6 & 0xFFFFFFFC, *(this + 9));
    if (DataSourceBytes)
    {
      v2 = DataSourceBytes;
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        return v2;
      }

      *buf = 136315394;
      v21 = "MP4_BoxParser_FileType.cpp";
      v22 = 1024;
      v23 = 107;
      v8 = MEMORY[0x1E69E9C10];
      v9 = "%25s:%-5d  unable to read compatible brand identifiers";
      goto LABEL_11;
    }

    if (*(this + 16))
    {
      v14 = 0;
      v15 = *(this + 9);
      do
      {
        v2 = 0;
        *(v15 + 4 * v14) = bswap32(*(v15 + 4 * v14));
        ++v14;
      }

      while (v14 < *(this + 16));
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

void MP4BoxParser_FileType::~MP4BoxParser_FileType(MP4BoxParser_FileType *this)
{
  MP4BoxParser_FileType::~MP4BoxParser_FileType(this);

  JUMPOUT(0x193ADF220);
}

{
  *this = &unk_1F0325F28;
  v2 = *(this + 9);
  if (v2)
  {
    free(v2);
  }

  v3 = *(this + 1);
  *this = &unk_1F0330650;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }
}

uint64_t MP4BoxParser_FileType::MP4BoxParser_FileType(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F0330650;
  (*(*a2 + 88))(a2, 0);
  *(a1 + 16) = 0;
  *(a1 + 20) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 36) = 8;
  *a1 = &unk_1F0325F28;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  return a1;
}

void swix::connection_config::~connection_config(swix::connection_config *this)
{
  if (*(this + 120) == 1)
  {
    std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](this + 88);
  }

  v2 = *(this + 7);
  if (v2)
  {
    dispatch_release(v2);
  }

  xpc_release(*(this + 6));
  *(this + 6) = 0;
  if (*(this + 47) < 0)
  {
    operator delete(*(this + 3));
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

{
  if (*(this + 120) == 1)
  {
    std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](this + 88);
  }

  v2 = *(this + 7);
  if (v2)
  {
    dispatch_release(v2);
  }

  xpc_release(*(this + 6));
  *(this + 6) = 0;
  if (*(this + 47) < 0)
  {
    operator delete(*(this + 3));
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void XPCListener::~XPCListener(XPCListener *this)
{
  swix::connection::~connection(this);

  JUMPOUT(0x193ADF220);
}

uint64_t caulk::concurrent::lf_read_synchronized_write<std::vector<std::pair<unsigned long long,AudioConverterPropertyServer *>>>::~lf_read_synchronized_write(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    v2 = *(a1 + 16);
    if (v2)
    {
      *(a1 + 24) = v2;
      operator delete(v2);
    }
  }

  if (*(a1 + 9) == 1)
  {
    v3 = *(a1 + 40);
    if (v3)
    {
      *(a1 + 48) = v3;
      operator delete(v3);
    }
  }

  return a1;
}

void std::vector<std::unique_ptr<RemoteAudioConverter>>::__destroy_vector::operator()[abi:ne200100](uint64_t ****a1)
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
        std::unique_ptr<RemoteAudioConverter>::reset[abi:ne200100](--v4, 0);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t caulk::concurrent::guarded_lookup_hash_table<unsigned long,caulk::mach::os_workgroup_managed,(caulk::concurrent::guarded_lookup_hash_table_options)0,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned long>>::~guarded_lookup_hash_table(uint64_t a1)
{
  if (atomic_load((a1 + 16)))
  {
    _os_assert_log();
    result = _os_crash();
    __break(1u);
  }

  else
  {
    v3 = atomic_load((a1 + 8));
    if (v3)
    {
      v4 = caulk::concurrent::guarded_lookup_hash_table<unsigned long,caulk::mach::os_workgroup_managed,(caulk::concurrent::guarded_lookup_hash_table_options)0,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned long>>::table_impl::~table_impl(v3);
      MEMORY[0x193ADF220](v4, 0x1060C402CF69088);
    }

    std::mutex::~mutex((a1 + 48));
    v5 = *(a1 + 24);
    if (v5)
    {
      std::vector<std::unique_ptr<caulk::concurrent::guarded_lookup_hash_table<unsigned long,caulk::mach::os_workgroup_managed,(caulk::concurrent::guarded_lookup_hash_table_options)0,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned long>>::table_impl,std::default_delete<caulk::concurrent::guarded_lookup_hash_table<unsigned long,caulk::mach::os_workgroup_managed,(caulk::concurrent::guarded_lookup_hash_table_options)0,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned long>>::table_impl>>>::__base_destruct_at_end[abi:ne200100](a1 + 24, v5);
      operator delete(*(a1 + 24));
    }

    return a1;
  }

  return result;
}

uint64_t caulk::concurrent::guarded_lookup_hash_table<unsigned long,caulk::mach::os_workgroup_managed,(caulk::concurrent::guarded_lookup_hash_table_options)0,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned long>>::table_impl::~table_impl(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = (a1 + 16);
    do
    {
      if (*v3 + 1 >= 2)
      {
        caulk::concurrent::guarded_lookup_hash_table<unsigned long,caulk::mach::os_workgroup_managed,(caulk::concurrent::guarded_lookup_hash_table_options)0,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned long>>::element_t::release(*v3);
      }

      ++v3;
      --v2;
    }

    while (v2);
  }

  return a1;
}

uint64_t std::vector<std::unique_ptr<caulk::concurrent::guarded_lookup_hash_table<unsigned long,caulk::mach::os_workgroup_managed,(caulk::concurrent::guarded_lookup_hash_table_options)0,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned long>>::table_impl,std::default_delete<caulk::concurrent::guarded_lookup_hash_table<unsigned long,caulk::mach::os_workgroup_managed,(caulk::concurrent::guarded_lookup_hash_table_options)0,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned long>>::table_impl>>>::__base_destruct_at_end[abi:ne200100](uint64_t result, void *a2)
{
  v3 = result;
  v4 = *(result + 8);
  while (v4 != a2)
  {
    v5 = *--v4;
    result = v5;
    *v4 = 0;
    if (v5)
    {
      v6 = caulk::concurrent::guarded_lookup_hash_table<unsigned long,caulk::mach::os_workgroup_managed,(caulk::concurrent::guarded_lookup_hash_table_options)0,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned long>>::table_impl::~table_impl(result);
      result = MEMORY[0x193ADF220](v6, 0x1060C402CF69088);
    }
  }

  *(v3 + 8) = a2;
  return result;
}

unsigned int *caulk::concurrent::guarded_lookup_hash_table<unsigned long,caulk::mach::os_workgroup_managed,(caulk::concurrent::guarded_lookup_hash_table_options)0,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned long>>::element_t::release(unsigned int *result)
{
  if ((atomic_fetch_add(result, 0xFFFF0000) & 0xFFFF0000) == 0x10000)
  {
    if (atomic_load(result))
    {
      _os_assert_log();
      _os_crash();
      __break(1u);
    }

    else
    {
      caulk::mach::os_workgroup_managed::~os_workgroup_managed((result + 4));
    }

    JUMPOUT(0x193ADF220);
  }

  return result;
}

void AudioConverterServerGlobals::~AudioConverterServerGlobals(AudioConverterServerGlobals *this)
{
  std::unique_ptr<auoop::WorkgroupMirror>::reset[abi:ne200100](this + 18, 0);
  caulk::concurrent::lf_read_synchronized_write<std::vector<std::pair<unsigned long long,AudioConverterPropertyServer *>>>::~lf_read_synchronized_write(this + 64);

  caulk::concurrent::lf_read_synchronized_write<std::vector<std::pair<unsigned long long,AudioConverterPropertyServer *>>>::~lf_read_synchronized_write(this);
}

void caulk::synchronized<std::vector<std::unique_ptr<RemoteAudioConverter>>,std::recursive_mutex,caulk::empty_atomic_interface<std::vector<std::unique_ptr<RemoteAudioConverter>>>>::~synchronized(uint64_t a1)
{
  v2 = (a1 + 64);
  std::vector<std::unique_ptr<RemoteAudioConverter>>::__destroy_vector::operator()[abi:ne200100](&v2);

  std::recursive_mutex::~recursive_mutex(a1);
}

uint64_t std::optional<applesauce::xpc::endpoint>::~optional(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    xpc_release(*a1);
    *a1 = 0;
  }

  return a1;
}

void ___ZN21AudioConverterService27setupMemoryPressureWarningsEv_block_invoke(uint64_t a1)
{
  buffer[58] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = getpid();
  v3 = proc_pid_rusage(v2, 6, buffer);
  v4 = buffer[9];
  if (gAudioConverterDeferredLogOnce != -1)
  {
    dispatch_once(&gAudioConverterDeferredLogOnce, &__block_literal_global);
  }

  v5 = *gAudioConverterLog;
  if (os_log_type_enabled(*gAudioConverterLog, OS_LOG_TYPE_ERROR))
  {
    if (v3)
    {
      v6 = 0;
    }

    else
    {
      v6 = v4;
    }

    std::recursive_mutex::lock((v1 + 56));
    v7 = (*(v1 + 128) - *(v1 + 120)) >> 3;
    std::recursive_mutex::unlock((v1 + 56));
    v8 = atomic_load((v1 + 280));
    v9 = 136316418;
    v10 = "AudioConverterService.cpp";
    v11 = 1024;
    v12 = 136;
    v13 = 2048;
    v14 = v1;
    v15 = 2048;
    v16 = v6;
    v17 = 1024;
    v18 = v7;
    v19 = 1024;
    v20 = v8;
    _os_log_impl(&dword_18F5DF000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d AudioConverterService -> %p: Memory pressure 80%% of the critical level at %llu bytes. Current number of connections: %u, Number of out-of-process converters: %u The service will shut down if the limit is exceeded.", &v9, 0x32u);
  }
}

void AudioConverterServiceRunInProcess(xpc_object_t *a1)
{
  if (AudioConverterServiceRunInProcess(void)::onceToken[0] != -1)
  {
    dispatch_once(AudioConverterServiceRunInProcess(void)::onceToken, &__block_literal_global_1412);
  }

  v2 = xpc_connection_create_from_endpoint(*(gService_0 + 40));
  if (v2)
  {
    v3 = v2;
    *a1 = v2;
  }

  else
  {
    v3 = xpc_null_create();
    *a1 = v3;
    if (!v3)
    {
      goto LABEL_7;
    }
  }

  if (object_getClass(v3) == MEMORY[0x1E69E9E68])
  {
    xpc_retain(v3);
    goto LABEL_9;
  }

LABEL_7:
  *a1 = xpc_null_create();
LABEL_9:
  xpc_release(v3);
}

void ___Z33AudioConverterServiceRunInProcessv_block_invoke(uint64_t a1, uint64_t a2, dispatch_queue_s *a3)
{
  object[18] = *MEMORY[0x1E69E9840];
  applesauce::xpc::connection::create(object, 0, a3);
  operator new();
}

void sub_18F6D04CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, char a11)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void std::valarray<float>::resize(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  if (v4)
  {
    v5 = *(a1 + 8);
    if (v5 != v4)
    {
      *(a1 + 8) = &v5[(v4 - v5 + 3) & 0xFFFFFFFFFFFFFFFCLL];
    }

    operator delete(v4);
    *a1 = 0;
    *(a1 + 8) = 0;
  }

  if (a2)
  {
    operator new();
  }
}

float TruePeakAnalyzer::PeakValue(TruePeakAnalyzer *this)
{
  v1 = *(this + 10);
  v3 = *this;
  v2 = *(this + 1);
  if (v2 != *this)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      v7 = (v2 - v3) >> 7;
      if (v7 >= v5 >> 32)
      {
        TruePeak::GetStats();
        v8 = v10;
        v3 = *this;
        v2 = *(this + 1);
        v7 = (v2 - *this) >> 7;
      }

      else
      {
        v8 = *(this + 10);
      }

      if (v8 > v1)
      {
        v1 = v8;
      }

      ++v6;
      v5 += 0x100000000;
    }

    while (v6 < v7);
  }

  return v1;
}

float TruePeakAnalyzer::SamplePeakValue(TruePeakAnalyzer *this)
{
  v1 = (this + 44);
  v2 = *(this + 11);
  v4 = *this;
  v3 = *(this + 1);
  if (v3 != *this)
  {
    v6 = 0;
    v7 = 0;
    v8 = (v3 - *this) >> 7;
    do
    {
      if (v8 >= v6 >> 32)
      {
        v9 = &v11;
        TruePeak::GetStats();
        v4 = *this;
        v3 = *(this + 1);
      }

      else
      {
        v9 = v1;
      }

      if (*v9 > v2)
      {
        v2 = *v9;
      }

      ++v7;
      v8 = (v3 - v4) >> 7;
      v6 += 0x100000000;
    }

    while (v7 < v8);
  }

  return v2;
}

const void **applesauce::CF::ObjectRef<__IOSurface *>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void sub_18F6D094C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18F6D1044(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  MEMORY[0x193ADE3E0](va, a2, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

void AddApp(InterAppAudioAppInfo *a1, float a2, NSMutableArray *a3)
{
  v6 = [InterAppAudioApp alloc];
  *&v7 = a2;
  v8 = [(InterAppAudioApp *)v6 init:a1 iconSize:v7];
  [(NSMutableArray *)a3 addObject:v8];

  var2 = a1->var2;
  if (var2)
  {
    CFRelease(var2);
    a1->var2 = 0;
  }

  var3 = a1->var3;
  if (var3)
  {
    CFRelease(var3);
    a1->var3 = 0;
  }

  var4 = a1->var4;
  if (var4)
  {
    CFRelease(var4);
    a1->var4 = 0;
  }

  var5 = a1->var5;
  if (var5)
  {
    CFRelease(var5);
    a1->var5 = 0;
  }
}

void DSPGraph::Profiler::Profiler(uint64_t *a1, uint64_t *a2, double a3)
{
  v4 = *MEMORY[0x1E69E9840];
  *a1 = *a2;
  v3 = a2[1];
  a1[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 1) = 0u;
  a1[6] = 0;
  *(a1 + 2) = 0u;
  *(a1 + 14) = 1065353216;
  operator new();
}

void sub_18F6D1834(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__function::__value_func<void ()(DSPGraph::Graph *,unsigned int)>::~__value_func[abi:ne200100](va);
  v12 = *(v9 + 8);
  *(v9 + 8) = 0;
  if (v12)
  {
    MEMORY[0x193ADF210](v12, 64);
  }

  MEMORY[0x193ADF220](v9, 0x1020C4062D53EE8);
  std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<DSPGraph::Profiler::TMetrics<DSPGraph::Box>>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<DSPGraph::Profiler::TMetrics<DSPGraph::Box>>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<DSPGraph::Profiler::TMetrics<DSPGraph::Box>>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<DSPGraph::Profiler::TMetrics<DSPGraph::Box>>>>>::~__hash_table(v8);
  std::unique_ptr<DSPGraph::Profiler::TMetrics<DSPGraph::Graph>>::reset[abi:ne200100](v10, 0);
  v13 = *(v7 + 8);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<DSPGraph::Profiler::TMetrics<DSPGraph::Graph>>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    DSPGraph::Graph::removeRenderCallback(*v2, *(v2 + 20));
    DSPGraph::Graph::removeRenderCallback(*v2, *(v2 + 16));
    v3 = *(v2 + 8);
    *(v2 + 8) = 0;
    if (v3)
    {
      MEMORY[0x193ADF210](v3, 64);
    }

    JUMPOUT(0x193ADF220);
  }

  return result;
}

uint64_t *std::unique_ptr<DSPGraph::Profiler::TMetrics<DSPGraph::Box>>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    DSPGraph::Box::removeRenderCallback(*v2, *(v2 + 20));
    DSPGraph::Box::removeRenderCallback(*v2, *(v2 + 16));
    v3 = *(v2 + 8);
    *(v2 + 8) = 0;
    if (v3)
    {
      MEMORY[0x193ADF210](v3, 64);
    }

    JUMPOUT(0x193ADF220);
  }

  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<DSPGraph::Profiler::TMetrics<DSPGraph::Box>>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<DSPGraph::Profiler::TMetrics<DSPGraph::Box>>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<DSPGraph::Profiler::TMetrics<DSPGraph::Box>>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<DSPGraph::Profiler::TMetrics<DSPGraph::Box>>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<DSPGraph::Profiler::TMetrics<DSPGraph::Box>>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<DSPGraph::Profiler::TMetrics<DSPGraph::Box>>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<DSPGraph::Profiler::TMetrics<DSPGraph::Box>>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<DSPGraph::Profiler::TMetrics<DSPGraph::Box>>>>>::__deallocate_node(*(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<DSPGraph::Profiler::TMetrics<DSPGraph::Box>>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<DSPGraph::Profiler::TMetrics<DSPGraph::Box>>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<DSPGraph::Profiler::TMetrics<DSPGraph::Box>>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<DSPGraph::Profiler::TMetrics<DSPGraph::Box>>>>>::__deallocate_node(void *a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = *v1;
      std::unique_ptr<DSPGraph::Profiler::TMetrics<DSPGraph::Box>>::reset[abi:ne200100](v1 + 3, 0);
      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long long,std::unique_ptr<DSPGraph::Profiler::TMetrics<DSPGraph::Box>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,std::unique_ptr<DSPGraph::Profiler::TMetrics<DSPGraph::Box>>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::unique_ptr<DSPGraph::Profiler::TMetrics<DSPGraph::Box>>::reset[abi:ne200100](v2 + 3, 0);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(DSPGraph::Box *,unsigned int)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<DSPGraph::Profiler::TMetrics<DSPGraph::Box>::TMetrics(DSPGraph::Box*,double)::{lambda(DSPGraph::Box*,unsigned int)#2},std::allocator<DSPGraph::Profiler::TMetrics<DSPGraph::Box>::TMetrics(DSPGraph::Box*,double)::{lambda(DSPGraph::Box*,unsigned int)#2}>,void ()(DSPGraph::Box*,unsigned int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F0326128;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<DSPGraph::Profiler::TMetrics<DSPGraph::Box>::TMetrics(DSPGraph::Box*,double)::{lambda(DSPGraph::Box*,unsigned int)#1},std::allocator<DSPGraph::Profiler::TMetrics<DSPGraph::Box>::TMetrics(DSPGraph::Box*,double)::{lambda(DSPGraph::Box*,unsigned int)#1}>,void ()(DSPGraph::Box*,unsigned int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F03260E0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__value_func<void ()(DSPGraph::Graph *,unsigned int)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<DSPGraph::Profiler::TMetrics<DSPGraph::Graph>::TMetrics(DSPGraph::Graph*,double)::{lambda(DSPGraph::Graph*,unsigned int)#2},std::allocator<DSPGraph::Profiler::TMetrics<DSPGraph::Graph>::TMetrics(DSPGraph::Graph*,double)::{lambda(DSPGraph::Graph*,unsigned int)#2}>,void ()(DSPGraph::Graph*,unsigned int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F0326098;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<DSPGraph::Profiler::TMetrics<DSPGraph::Graph>::TMetrics(DSPGraph::Graph*,double)::{lambda(DSPGraph::Graph*,unsigned int)#1},std::allocator<DSPGraph::Profiler::TMetrics<DSPGraph::Graph>::TMetrics(DSPGraph::Graph*,double)::{lambda(DSPGraph::Graph*,unsigned int)#1}>,void ()(DSPGraph::Graph*,unsigned int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F0326050;
  a2[1] = v2;
  return result;
}

void DSPGraph::Profiler::~Profiler(DSPGraph::Profiler *this)
{
  if (*(this + 6))
  {
    std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<DSPGraph::Profiler::TMetrics<DSPGraph::Box>>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<DSPGraph::Profiler::TMetrics<DSPGraph::Box>>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<DSPGraph::Profiler::TMetrics<DSPGraph::Box>>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<DSPGraph::Profiler::TMetrics<DSPGraph::Box>>>>>::__deallocate_node(*(this + 5));
    *(this + 5) = 0;
    v2 = *(this + 4);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*(this + 3) + 8 * i) = 0;
      }
    }

    *(this + 6) = 0;
  }

  std::unique_ptr<DSPGraph::Profiler::TMetrics<DSPGraph::Graph>>::reset[abi:ne200100](this + 2, 0);
  std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<DSPGraph::Profiler::TMetrics<DSPGraph::Box>>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<DSPGraph::Profiler::TMetrics<DSPGraph::Box>>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<DSPGraph::Profiler::TMetrics<DSPGraph::Box>>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<DSPGraph::Profiler::TMetrics<DSPGraph::Box>>>>>::~__hash_table(this + 24);
  std::unique_ptr<DSPGraph::Profiler::TMetrics<DSPGraph::Graph>>::reset[abi:ne200100](this + 2, 0);
  v4 = *(this + 1);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void DSPGraph::Profiler::copyStatistics(DSPGraph::Profiler *this@<X0>, CFDictionaryRef *a2@<X8>)
{
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v4 = (*this + 408);
  if (*(*this + 431) < 0)
  {
    v4 = *v4;
  }

  v17 = v4;
  DSPGraph::Metrics::getStatistics(v12, *(*(this + 2) + 8));
  DSPGraph::Profiler::copyStatistics(void)const::$_0::operator()(&v13, v12);
  v5 = v15;
  if (v15 >= v16)
  {
    v6 = std::vector<applesauce::CF::TypeRefPair>::__emplace_back_slow_path<char const*,applesauce::CF::DictionaryRef>(&v14, &v17, &v13);
  }

  else
  {
    std::allocator_traits<std::allocator<applesauce::CF::TypeRefPair>>::construct[abi:ne200100]<applesauce::CF::TypeRefPair,char const*,applesauce::CF::DictionaryRef,void,0>(v15, v4, &v13);
    v6 = (v5 + 16);
  }

  v15 = v6;
  if (v13)
  {
    CFRelease(v13);
  }

  for (i = *(this + 5); i; i = *i)
  {
    v8 = DSPGraph::Graph::box(*this, i[2]);
    v9 = (v8 + 32);
    if (*(v8 + 55) < 0)
    {
      v9 = *v9;
    }

    v17 = v9;
    DSPGraph::Metrics::getStatistics(v12, *(i[3] + 8));
    DSPGraph::Profiler::copyStatistics(void)const::$_0::operator()(&v13, v12);
    v10 = v15;
    if (v15 >= v16)
    {
      v11 = std::vector<applesauce::CF::TypeRefPair>::__emplace_back_slow_path<char const*,applesauce::CF::DictionaryRef>(&v14, &v17, &v13);
    }

    else
    {
      std::allocator_traits<std::allocator<applesauce::CF::TypeRefPair>>::construct[abi:ne200100]<applesauce::CF::TypeRefPair,char const*,applesauce::CF::DictionaryRef,void,0>(v15, v9, &v13);
      v11 = (v10 + 16);
    }

    v15 = v11;
    if (v13)
    {
      CFRelease(v13);
    }
  }

  *a2 = applesauce::CF::details::make_CFDictionaryRef(&v14);
  v12[0] = &v14;
  std::vector<applesauce::CF::TypeRefPair>::__destroy_vector::operator()[abi:ne200100](v12);
}

void sub_18F6D20E0(_Unwind_Exception *a1)
{
  applesauce::CF::DictionaryRef::~DictionaryRef((v1 - 88));
  *(v1 - 56) = v1 - 80;
  std::vector<applesauce::CF::TypeRefPair>::__destroy_vector::operator()[abi:ne200100]((v1 - 56));
  _Unwind_Resume(a1);
}

void DSPGraph::Profiler::copyStatistics(void)const::$_0::operator()(CFDictionaryRef *a1, uint64_t *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  applesauce::CF::TypeRefPair::TypeRefPair<char const* const&,unsigned long long const&>(v11, "WNumBlocks", a2);
  applesauce::CF::TypeRefPair::TypeRefPair<char const* const&,unsigned long long const&>(&v12, "WNumFrames", a2 + 1);
  applesauce::CF::TypeRefPair::TypeRefPair<char const* const&,unsigned long long const&>(&v13, "WCPUTime", a2 + 2);
  applesauce::CF::TypeRefPair::TypeRefPair<char const* const&,unsigned long long const&>(&v14, "WCPUCycleCount", a2 + 3);
  applesauce::CF::TypeRefPair::TypeRefPair<char const* const&,unsigned long long const&>(&v15, "WCPUInstrCount", a2 + 4);
  applesauce::CF::TypeRefPair::TypeRefPair<char const* const&,unsigned long long const&>(&v16, "WWallClockTime", a2 + 5);
  applesauce::CF::TypeRef::TypeRef(&v17, "WPeakCPU");
  valuePtr = a2[6];
  if (!CFNumberCreate(0, kCFNumberDoubleType, &valuePtr))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  applesauce::CF::TypeRefPair::TypeRefPair<char const* const&,unsigned long long const&>(&v19, "WPeakCPUBlockNum", a2 + 7);
  LODWORD(valuePtr) = 0;
  applesauce::CF::TypeRefPair::TypeRefPair<char const* const&,unsigned int>(&v20, "WAvgMemDelta", &valuePtr);
  v8 = 0;
  applesauce::CF::TypeRefPair::TypeRefPair<char const* const&,unsigned int>(&v21, "CurrMem", &v8);
  applesauce::CF::TypeRefPair::TypeRefPair<char const* const&,unsigned long long const&>(&v22, "TNumBlocks", a2 + 8);
  applesauce::CF::TypeRefPair::TypeRefPair<char const* const&,unsigned long long const&>(&v23, "TNumFrames", a2 + 9);
  applesauce::CF::TypeRefPair::TypeRefPair<char const* const&,unsigned long long const&>(&v24, "TCPUTime", a2 + 10);
  applesauce::CF::TypeRefPair::TypeRefPair<char const* const&,unsigned long long const&>(&v25, "TCPUCycleCount", a2 + 11);
  applesauce::CF::TypeRefPair::TypeRefPair<char const* const&,unsigned long long const&>(&v26, "TCPUInstrCount", a2 + 12);
  applesauce::CF::TypeRefPair::TypeRefPair<char const* const&,unsigned long long const&>(v27, "TWallClockTime", a2 + 13);
  v9[0] = v11;
  v9[1] = 16;
  v4 = 0;
  *a1 = applesauce::CF::details::make_CFDictionaryRef(v9);
  do
  {
    v5 = *&v27[v4 + 8];
    if (v5)
    {
      CFRelease(v5);
    }

    v6 = *&v27[v4];
    if (v6)
    {
      CFRelease(v6);
    }

    v4 -= 16;
  }

  while (v4 != -256);
}

void sub_18F6D23E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  applesauce::CF::ObjectRef<void const*>::~ObjectRef((v15 + 104));
  applesauce::CF::TypeRef::~TypeRef(v14);
  while (v14 != &a14)
  {
    v14 -= 2;
    applesauce::CF::TypeRefPair::~TypeRefPair(v14);
  }

  _Unwind_Resume(a1);
}

void *std::allocator_traits<std::allocator<applesauce::CF::TypeRefPair>>::construct[abi:ne200100]<applesauce::CF::TypeRefPair,char const*,applesauce::CF::DictionaryRef,void,0>(applesauce::CF::TypeRef *a1, char *a2, const void **a3)
{
  result = applesauce::CF::TypeRef::TypeRef(a1, a2);
  v6 = *a3;
  if (v6)
  {
    result = CFRetain(v6);
  }

  *(a1 + 1) = v6;
  return result;
}

uint64_t std::vector<applesauce::CF::TypeRefPair>::__emplace_back_slow_path<char const*,applesauce::CF::DictionaryRef>(uint64_t a1, char **a2, const void **a3)
{
  v3 = (*(a1 + 8) - *a1) >> 4;
  v4 = v3 + 1;
  if ((v3 + 1) >> 60)
  {
    std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 3 > v4)
  {
    v4 = v6 >> 3;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF0)
  {
    v7 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v4;
  }

  v17 = a1;
  if (v7)
  {
    std::allocator<applesauce::CF::TypeRefPair>::allocate_at_least[abi:ne200100](v7);
  }

  v14 = 0;
  v15 = 16 * v3;
  v16 = (16 * v3);
  std::allocator_traits<std::allocator<applesauce::CF::TypeRefPair>>::construct[abi:ne200100]<applesauce::CF::TypeRefPair,char const*,applesauce::CF::DictionaryRef,void,0>((16 * v3), *a2, a3);
  *&v16 = 16 * v3 + 16;
  v8 = *(a1 + 8);
  v9 = (16 * v3 + *a1 - v8);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<applesauce::CF::TypeRefPair>,applesauce::CF::TypeRefPair*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = *(a1 + 16);
  v13 = v16;
  *(a1 + 8) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<applesauce::CF::TypeRefPair>::~__split_buffer(&v14);
  return v13;
}

void sub_18F6D25CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<applesauce::CF::TypeRefPair>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

applesauce::CF::TypeRef *applesauce::CF::TypeRefPair::TypeRefPair<char const* const&,unsigned long long const&>(applesauce::CF::TypeRef *a1, char *a2, uint64_t *a3)
{
  applesauce::CF::TypeRef::TypeRef(a1, a2);
  valuePtr = *a3;
  v5 = CFNumberCreate(0, kCFNumberLongLongType, &valuePtr);
  *(a1 + 1) = v5;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  return a1;
}

void sub_18F6D26AC(_Unwind_Exception *a1)
{
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(v1 + 1);
  applesauce::CF::TypeRef::~TypeRef(v1);
  _Unwind_Resume(a1);
}

applesauce::CF::TypeRef *applesauce::CF::TypeRefPair::TypeRefPair<char const* const&,unsigned int>(applesauce::CF::TypeRef *a1, char *a2, int *a3)
{
  applesauce::CF::TypeRef::TypeRef(a1, a2);
  valuePtr = *a3;
  v5 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  *(a1 + 1) = v5;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  return a1;
}

void sub_18F6D2778(_Unwind_Exception *a1)
{
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(v1 + 1);
  applesauce::CF::TypeRef::~TypeRef(v1);
  _Unwind_Resume(a1);
}

CFDictionaryRef applesauce::CF::details::make_CFDictionaryRef(uint64_t a1)
{
  v2 = *(a1 + 8);
  keys = 0;
  v32 = 0;
  v33 = 0;
  std::vector<void const*>::reserve(&keys, v2);
  values = 0;
  v29 = 0;
  v30 = 0;
  std::vector<void const*>::reserve(&values, v2);
  v3 = *(a1 + 8);
  v4 = keys;
  v5 = values;
  if (v3)
  {
    v6 = *a1;
    v26 = v2;
    v27 = *a1 + 16 * v3;
    v7 = v32;
    v8 = v33;
    v10 = v29;
    v9 = v30;
    do
    {
      v11 = *v6;
      if (v7 >= v8)
      {
        v12 = v7 - v4;
        v13 = (v7 - v4) >> 3;
        v14 = v13 + 1;
        if ((v13 + 1) >> 61)
        {
          keys = v4;
          values = v5;
          std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
        }

        if ((v8 - v4) >> 2 > v14)
        {
          v14 = (v8 - v4) >> 2;
        }

        if (v8 - v4 >= 0x7FFFFFFFFFFFFFF8)
        {
          v15 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v15 = v14;
        }

        if (v15)
        {
          std::allocator<applesauce::CF::TypeRef>::allocate_at_least[abi:ne200100](v15);
        }

        v16 = (8 * v13);
        v8 = 0;
        *v16 = v11;
        v7 = (v16 + 1);
        memcpy(0, v4, v12);
        if (v4)
        {
          operator delete(v4);
        }

        v4 = 0;
      }

      else
      {
        *v7 = v11;
        v7 += 8;
      }

      v17 = v6[1];
      if (v10 >= v9)
      {
        v18 = v10 - v5;
        v19 = (v10 - v5) >> 3;
        v20 = v19 + 1;
        if ((v19 + 1) >> 61)
        {
          keys = v4;
          values = v5;
          std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
        }

        if ((v9 - v5) >> 2 > v20)
        {
          v20 = (v9 - v5) >> 2;
        }

        if (v9 - v5 >= 0x7FFFFFFFFFFFFFF8)
        {
          v21 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v21 = v20;
        }

        if (v21)
        {
          std::allocator<applesauce::CF::TypeRef>::allocate_at_least[abi:ne200100](v21);
        }

        v22 = (8 * v19);
        v9 = 0;
        *v22 = v17;
        v10 = (v22 + 1);
        memcpy(0, v5, v18);
        if (v5)
        {
          operator delete(v5);
        }

        v5 = 0;
      }

      else
      {
        *v10 = v17;
        v10 += 8;
      }

      v6 += 2;
    }

    while (v6 != v27);
    v32 = v7;
    v33 = v8;
    v30 = v9;
    keys = v4;
    values = v5;
    v29 = v10;
    v2 = v26;
  }

  v23 = CFDictionaryCreate(0, v4, v5, v2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!v23)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  if (values)
  {
    operator delete(values);
  }

  if (keys)
  {
    operator delete(keys);
  }

  return v23;
}

void sub_18F6D2A20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14)
{
  __cxa_free_exception(v14);
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  _Unwind_Resume(a1);
}

void applesauce::CF::TypeRefPair::~TypeRefPair(applesauce::CF::TypeRefPair *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    CFRelease(v2);
  }

  if (*this)
  {
    CFRelease(*this);
  }
}

{
  v2 = *(this + 1);
  if (v2)
  {
    CFRelease(v2);
  }

  if (*this)
  {
    CFRelease(*this);
  }
}

uint64_t AudioFileRestrictedHandle::AFAPI_RemoveUserData(AudioFileID *this, UInt32 a2, UInt32 a3)
{
  if (*(this + 120) == 1)
  {
    return AudioFileRemoveUserData(this[14], a2, a3);
  }

  else
  {
    return 4294967258;
  }
}

uint64_t AudioFileRestrictedHandle::AFAPI_SetUserData(AudioFileID *this, UInt32 a2, UInt32 a3, UInt32 a4, const void *a5)
{
  if (*(this + 120) == 1)
  {
    return AudioFileSetUserData(this[14], a2, a3, a4, a5);
  }

  else
  {
    return 4294967258;
  }
}

uint64_t AudioFileRestrictedHandle::AFAPI_GetUserDataAtOffset(AudioFileID *this, UInt32 a2, UInt32 a3, SInt64 a4, unsigned int *a5, void *a6)
{
  if (*(this + 120) == 1)
  {
    return AudioFileGetUserDataAtOffset(this[14], a2, a3, a4, a5, a6);
  }

  else
  {
    return 4294967258;
  }
}

uint64_t AudioFileRestrictedHandle::AFAPI_GetUserData(AudioFileID *this, UInt32 a2, UInt32 a3, unsigned int *a4, void *a5)
{
  if (*(this + 120) == 1)
  {
    return AudioFileGetUserData(this[14], a2, a3, a4, a5);
  }

  else
  {
    return 4294967258;
  }
}

uint64_t AudioFileRestrictedHandle::AFAPI_GetUserDataSize64(AudioFileID *this, UInt32 a2, UInt32 a3, unint64_t *a4)
{
  if (*(this + 120) == 1)
  {
    return AudioFileGetUserDataSize64(this[14], a2, a3, a4);
  }

  else
  {
    return 4294967258;
  }
}

uint64_t AudioFileRestrictedHandle::AFAPI_GetUserDataSize(AudioFileID *this, UInt32 a2, UInt32 a3, unsigned int *a4)
{
  if (*(this + 120) == 1)
  {
    return AudioFileGetUserDataSize(this[14], a2, a3, a4);
  }

  else
  {
    return 4294967258;
  }
}

uint64_t AudioFileRestrictedHandle::AFAPI_CountUserData(AudioFileID *this, UInt32 a2, unsigned int *a3)
{
  if (*(this + 120) == 1)
  {
    return AudioFileCountUserData(this[14], a2, a3);
  }

  else
  {
    return 4294967258;
  }
}

uint64_t AudioFileRestrictedHandle::AFAPI_SetProperty(AudioFileRestrictedHandle *this, AudioFilePropertyID a2, UInt32 a3, CFDictionaryRef *inPropertyData)
{
  if (a2 == 1634495607)
  {
    if (a3 < 8)
    {
      return 561211770;
    }

    std::vector<unsigned char>::vector[abi:ne200100](v42, 0x2000);
    v9 = 0;
    v41 = 0;
    v6 = v42[0];
    do
    {
      v6 = (*(this + 7))(*(this + 6), v9, 0x2000, v6, &v41);
      if (v6)
      {
        goto LABEL_50;
      }

      if (v41 < 0xA)
      {
        break;
      }

      v6 = v42[0];
      v10 = ID3Size(v41, v42[0], v40);
      v9 += v10;
    }

    while (v10);
    AudioFileAllowListFilter::AudioFileAllowListFilter(v40, *inPropertyData);
    AudioFileFormatRegistry = GetAudioFileFormatRegistry();
    v12 = *(this + 11);
    v13 = *(this + 12);
    if (v12 == v13)
    {
      goto LABEL_34;
    }

    while (1)
    {
      AudioFileAllowListFilter::GetAllowedTypes(&v38, v40, v12);
      v14 = v38;
      v15 = v39;
      v16 = v38;
      if (v38 == v39)
      {
        v20 = 1;
        if (v38)
        {
          goto LABEL_29;
        }

        goto LABEL_30;
      }

      while (1)
      {
        v17 = AudioFileFormatRegistry::Get(AudioFileFormatRegistry, *v16);
        if ((*(*v17 + 24))(v17, v41, v42[0]) != 1)
        {
          goto LABEL_18;
        }

        v18 = NewAudioFileHandle(v17);
        v19 = v18;
        if (!v18)
        {
          goto LABEL_18;
        }

        if (!(*(*v18 + 56))(v18, *(this + 6), *(this + 7), *(this + 8), *(this + 9), *(this + 10)))
        {
          break;
        }

        (*(*v19 + 8))(v19);
LABEL_18:
        if (++v16 == v15)
        {
          v20 = 1;
          goto LABEL_28;
        }
      }

      LODWORD(v32) = 40;
      if ((*(*v19 + 144))(v19, 1684434292, &v32, v36) || !AudioFileAllowListFilter::IsDataFormatAllowed(v40, v37))
      {
        (*(*v19 + 8))(v19);
        __p = 0;
        v34 = 0;
        v35 = 0;
        std::vector<AudioFileInfo>::__init_with_size[abi:ne200100]<AudioFileInfo*,AudioFileInfo*>(&__p, *(this + 11), *(this + 12), (*(this + 12) - *(this + 11)) >> 4);
        v6 = 1718449215;
        if (__p)
        {
          v34 = __p;
          operator delete(__p);
        }
      }

      else
      {
        v6 = 0;
        *(this + 14) = v19[2];
        *(this + 120) = 1;
      }

      v20 = 0;
LABEL_28:
      v14 = v38;
      if (v38)
      {
LABEL_29:
        operator delete(v14);
      }

LABEL_30:
      if ((v20 & 1) == 0)
      {
        goto LABEL_49;
      }

      if (++v12 == v13)
      {
        v12 = *(this + 11);
        v13 = *(this + 12);
LABEL_34:
        if (v12 == v13)
        {
LABEL_47:
          memset(v27, 0, sizeof(v27));
          std::vector<AudioFileInfo>::__init_with_size[abi:ne200100]<AudioFileInfo*,AudioFileInfo*>(v27, v12, v13, (v13 - v12) >> 4);
          v6 = 1954115647;
          if (v27[0])
          {
            operator delete(v27[0]);
          }

          goto LABEL_49;
        }

        v32 = *v12;
        AudioFileAllowListFilter::GetAllowedTypes(&v38, v40, &v32);
        v21 = v39;
        if (v38 == v39)
        {
LABEL_42:
          v26 = 1;
          goto LABEL_43;
        }

        v22 = v38;
        while (1)
        {
          v23 = AudioFileFormatRegistry::Get(AudioFileFormatRegistry, *v22);
          if ((*(*v23 + 24))(v23, v41, v42[0]))
          {
            v24 = NewAudioFileHandle(v23);
            v25 = v24;
            if (v24)
            {
              if (!(*(*v24 + 56))(v24, *(this + 6), *(this + 7), *(this + 8), *(this + 9), *(this + 10)))
              {
                v31 = 40;
                if ((*(*v25 + 144))(v25, 1684434292, &v31, v36) || !AudioFileAllowListFilter::IsDataFormatAllowed(v40, v37))
                {
                  (*(*v25 + 8))(v25);
                  v28 = 0;
                  v29 = 0;
                  v30 = 0;
                  std::vector<AudioFileInfo>::__init_with_size[abi:ne200100]<AudioFileInfo*,AudioFileInfo*>(&v28, *(this + 11), *(this + 12), (*(this + 12) - *(this + 11)) >> 4);
                  v6 = 1718449215;
                  if (v28)
                  {
                    v29 = v28;
                    operator delete(v28);
                  }
                }

                else
                {
                  v6 = 0;
                  *(this + 14) = v25[2];
                  *(this + 120) = 1;
                }

                v26 = 0;
LABEL_43:
                if (v38)
                {
                  operator delete(v38);
                }

                if (v26)
                {
                  v12 = *(this + 11);
                  v13 = *(this + 12);
                  goto LABEL_47;
                }

LABEL_49:
                AudioFileAllowListFilter::~AudioFileAllowListFilter(v40);
LABEL_50:
                if (v42[0])
                {
                  v42[1] = v42[0];
                  operator delete(v42[0]);
                }

                return v6;
              }

              (*(*v25 + 8))(v25);
            }
          }

          if (++v22 == v21)
          {
            goto LABEL_42;
          }
        }
      }
    }
  }

  if (*(this + 120) != 1)
  {
    return 4294967258;
  }

  v7 = *(this + 14);

  return AudioFileSetProperty(v7, a2, a3, inPropertyData);
}

void sub_18F6D3108(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  if (__p)
  {
    operator delete(__p);
  }

  AudioFileAllowListFilter::~AudioFileAllowListFilter(va);
  v32 = *(v30 - 112);
  if (v32)
  {
    *(v30 - 104) = v32;
    operator delete(v32);
  }

  _Unwind_Resume(a1);
}

uint64_t *std::vector<AudioFileInfo>::__init_with_size[abi:ne200100]<AudioFileInfo*,AudioFileInfo*>(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<AudioFileInfo>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_18F6D3210(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<AudioFileInfo>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
}

uint64_t AudioFileRestrictedHandle::AFAPI_GetProperty(AudioFileID *this, AudioFilePropertyID a2, unsigned int *a3, void *a4)
{
  if (*(this + 120) == 1)
  {
    return AudioFileGetProperty(this[14], a2, a3, a4);
  }

  else
  {
    return 4294967258;
  }
}

uint64_t AudioFileRestrictedHandle::AFAPI_GetPropertyInfo(AudioFileID *this, AudioFilePropertyID a2, unsigned int *a3, unsigned int *a4)
{
  if (*(this + 120) == 1)
  {
    return AudioFileGetPropertyInfo(this[14], a2, a3, a4);
  }

  else
  {
    return 4294967258;
  }
}

uint64_t AudioFileRestrictedHandle::AFAPI_WritePacketsWithDependencies(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 120) == 1)
  {
    return AudioFileWritePacketsWithDependencies(*(a1 + 112), a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    return 4294967258;
  }
}

uint64_t AudioFileRestrictedHandle::AFAPI_WritePackets(AudioFileID *this, Boolean a2, UInt32 a3, const AudioStreamPacketDescription *a4, SInt64 a5, unsigned int *a6, const void *a7)
{
  if (*(this + 120) == 1)
  {
    return AudioFileWritePackets(this[14], a2, a3, a4, a5, a6, a7);
  }

  else
  {
    return 4294967258;
  }
}

uint64_t AudioFileRestrictedHandle::AFAPI_ReadPacketData(AudioFileID *this, Boolean a2, unsigned int *a3, AudioStreamPacketDescription *a4, SInt64 a5, unsigned int *a6, void *a7)
{
  if (*(this + 120) == 1)
  {
    return AudioFileReadPacketData(this[14], a2, a3, a4, a5, a6, a7);
  }

  else
  {
    return 4294967258;
  }
}

uint64_t AudioFileRestrictedHandle::AFAPI_ReadPackets(AudioFileID *this, Boolean a2, unsigned int *a3, AudioStreamPacketDescription *a4, SInt64 a5, unsigned int *a6, void *a7)
{
  if (*(this + 120) == 1)
  {
    return AudioFileReadPackets(this[14], a2, a3, a4, a5, a6, a7);
  }

  else
  {
    return 4294967258;
  }
}

uint64_t AudioFileRestrictedHandle::AFAPI_WriteBytes(AudioFileID *this, Boolean a2, SInt64 a3, unsigned int *a4, const void *a5)
{
  if (*(this + 120) == 1)
  {
    return AudioFileWriteBytes(this[14], a2, a3, a4, a5);
  }

  else
  {
    return 4294967258;
  }
}

uint64_t AudioFileRestrictedHandle::AFAPI_ReadBytes(AudioFileID *this, Boolean a2, SInt64 a3, unsigned int *a4, void *a5)
{
  if (*(this + 120) == 1)
  {
    return AudioFileReadBytes(this[14], a2, a3, a4, a5);
  }

  else
  {
    return 4294967258;
  }
}

uint64_t AudioFileRestrictedHandle::AFAPI_Optimize(AudioFileID *this)
{
  if (*(this + 120) == 1)
  {
    return AudioFileOptimize(this[14]);
  }

  else
  {
    return 4294967258;
  }
}

uint64_t AudioFileRestrictedHandle::AFAPI_Close(AudioFileRestrictedHandle *this)
{
  if (*(this + 120) != 1)
  {
    return 4294967258;
  }

  result = AudioFileClose(*(this + 14));
  if (*(this + 120) == 1)
  {
    *(this + 120) = 0;
  }

  return result;
}

void AudioFileRestrictedHandle::~AudioFileRestrictedHandle(AudioFileID *this)
{
  AudioFileRestrictedHandle::~AudioFileRestrictedHandle(this);

  JUMPOUT(0x193ADF220);
}

{
  *this = &unk_1F032F4C0;
  if (*(this + 120) == 1)
  {
    AudioFileClose(this[14]);
    if (*(this + 120) == 1)
    {
      *(this + 120) = 0;
    }
  }

  v2 = this[11];
  if (v2)
  {
    this[12] = v2;
    operator delete(v2);
  }

  *this = &unk_1F032F3D8;
  v3 = this[3];
  if (v3)
  {
    this[4] = v3;
    operator delete(v3);
  }

  BaseOpaqueObject::~BaseOpaqueObject(this);
}

int64_t AudioFileIPODLibHandle::AFAPI_GetProperty(AudioFileIPODLibHandle *this, unsigned int a2, unsigned int *a3, void *a4)
{
  v8 = IsBinaryProperty(a2);
  if ((v8 & 1) != 0 || a2 == 1633776244 || a2 == 1819243876 || a2 == 1768842863)
  {
    v9 = xpc_dictionary_create(0, 0, 0);
    v32 = 1;
    v30 = MEMORY[0x1E69E5060] + 16;
    xdict = v9;
    if (v9)
    {
      xpc_dictionary_set_uint64(v9, "type", 0x70726F70uLL);
      xpc_dictionary_set_uint64(xdict, "selector", a2);
    }

    v10 = *(this + 6);
    if (!v10[1])
    {
      goto LABEL_22;
    }

    v11 = xpc_connection_send_message_with_reply_sync(v10[1], xdict);
    v12 = v11;
    if (v11)
    {
      v13 = v11 == MEMORY[0x1E69E9E18];
    }

    else
    {
      v13 = 1;
    }

    if (v13 || v11 == MEMORY[0x1E69E9E20])
    {
      if (!v11)
      {
LABEL_21:
        v10 = *(this + 6);
        if (!v10)
        {
LABEL_23:
          v15 = 2003334207;
          *(this + 6) = 0;
LABEL_24:
          XPC_Object::~XPC_Object(&v30);
          return v15;
        }

LABEL_22:
        (*(*v10 + 1))(v10);
        goto LABEL_23;
      }

LABEL_20:
      xpc_release(v12);
      goto LABEL_21;
    }

    if (object_getClass(v11) != MEMORY[0x1E69E9E80])
    {
      goto LABEL_20;
    }

    v29 = 1;
    v27 = MEMORY[0x1E69E5060] + 16;
    v28 = v12;
    value = xpc_dictionary_get_value(v12, "status");
    v18 = value;
    if (!value || object_getClass(value) != MEMORY[0x1E69E9EB0] || (v15 = xpc_int64_get_value(v18), !v15))
    {
      v15 = 2003334207;
      if (v28)
      {
        v19 = xpc_dictionary_get_value(v28, "data");
        v20 = v19;
        if (v19)
        {
          if (object_getClass(v19) == MEMORY[0x1E69E9E70])
          {
            length = xpc_data_get_length(v20);
            bytes_ptr = xpc_data_get_bytes_ptr(v20);
            if (HIDWORD(length))
            {
              v15 = 561211770;
            }

            else
            {
              if (v8)
              {
                if (*a3 >= length)
                {
                  v23 = length;
                }

                else
                {
                  v23 = *a3;
                }

                *a3 = v23;
                memcpy(a4, bytes_ptr, v23);
              }

              else
              {
                v26 = 1;
                v25 = CFDataCreate(0, bytes_ptr, length);
                v24 = CFPropertyListCreateWithData(*MEMORY[0x1E695E480], v25, 0, 0, 0);
                if (!v24)
                {
                  CACFData::~CACFData(&v25);
                  v15 = 1667787583;
                  goto LABEL_43;
                }

                *a3 = 8;
                *a4 = v24;
                CACFData::~CACFData(&v25);
              }

              v15 = 0;
            }
          }
        }
      }
    }

LABEL_43:
    XPC_Object::~XPC_Object(&v27);
    goto LABEL_24;
  }

  return 1886681407;
}

void sub_18F6D388C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  CACFData::~CACFData(&a9);
  XPC_Object::~XPC_Object(&a11);
  XPC_Object::~XPC_Object(va);
  _Unwind_Resume(a1);
}

uint64_t IsBinaryProperty(int a1)
{
  result = 1;
  if (a1 <= 1718775914)
  {
    if (a1 <= 1684434291)
    {
      if (a1 <= 1652125802)
      {
        if (a1 == 1650683508)
        {
          return result;
        }

        v3 = 1651663220;
        goto LABEL_31;
      }

      if (a1 == 1652125803 || a1 == 1667787108)
      {
        return result;
      }

      v3 = 1668112752;
    }

    else if (a1 > 1701082481)
    {
      if (a1 == 1701082482 || a1 == 1717988724)
      {
        return result;
      }

      v3 = 1718383476;
    }

    else
    {
      if (a1 == 1684434292 || a1 == 1685022310)
      {
        return result;
      }

      v3 = 1685289589;
    }

LABEL_31:
    if (a1 != v3)
    {
      return 0;
    }

    return result;
  }

  if (a1 > 1886086769)
  {
    if (a1 > 1886616164)
    {
      if (a1 == 1886616165 || a1 == 1920168566)
      {
        return result;
      }

      v3 = 1935832164;
    }

    else
    {
      if (a1 == 1886086770 || a1 == 1886090594)
      {
        return result;
      }

      v3 = 1886283375;
    }

    goto LABEL_31;
  }

  if (a1 > 1869640812)
  {
    if (a1 == 1869640813 || a1 == 1885564532)
    {
      return result;
    }

    v3 = 1886085753;
    goto LABEL_31;
  }

  if (a1 != 1718775915 && a1 != 1768174452)
  {
    v3 = 1835493731;
    goto LABEL_31;
  }

  return result;
}

void CACFData::~CACFData(CACFData *this)
{
  if (*(this + 8) == 1)
  {
    v2 = *this;
    if (*this)
    {
      CFRelease(v2);
    }
  }
}

int64_t AudioFileIPODLibHandle::AFAPI_GetPropertyInfo(AudioFileIPODLibHandle *this, unsigned int a2, unsigned int *a3, unsigned int *a4)
{
  if ((IsBinaryProperty(a2) & 1) == 0 && a2 != 1633776244 && a2 != 1819243876 && a2 != 1768842863)
  {
    return 1886681407;
  }

  v8 = xpc_dictionary_create(0, 0, 0);
  v27 = 1;
  v25 = MEMORY[0x1E69E5060] + 16;
  xdict = v8;
  if (v8)
  {
    xpc_dictionary_set_uint64(v8, "type", 0x696E666FuLL);
    xpc_dictionary_set_uint64(xdict, "selector", a2);
  }

  v9 = *(this + 6);
  if (!v9[1])
  {
    goto LABEL_22;
  }

  v10 = xpc_connection_send_message_with_reply_sync(v9[1], xdict);
  v11 = v10;
  if (v10)
  {
    v12 = v10 == MEMORY[0x1E69E9E18];
  }

  else
  {
    v12 = 1;
  }

  if (v12 || v10 == MEMORY[0x1E69E9E20])
  {
    if (!v10)
    {
LABEL_21:
      v9 = *(this + 6);
      if (!v9)
      {
LABEL_23:
        *(this + 6) = 0;
        XPC_Object::~XPC_Object(&v25);
        return 2003334207;
      }

LABEL_22:
      (*(*v9 + 1))(v9);
      goto LABEL_23;
    }

LABEL_20:
    xpc_release(v11);
    goto LABEL_21;
  }

  if (object_getClass(v10) != MEMORY[0x1E69E9E80])
  {
    goto LABEL_20;
  }

  v24 = 1;
  v22 = MEMORY[0x1E69E5060] + 16;
  v23 = v11;
  value = xpc_dictionary_get_value(v11, "status");
  v17 = value;
  if (!value || object_getClass(value) != MEMORY[0x1E69E9EB0] || (v14 = xpc_int64_get_value(v17), !v14))
  {
    if (a4)
    {
      if (v23)
      {
        v18 = xpc_dictionary_get_value(v23, "writable");
        v19 = v18;
        if (v18)
        {
          if (object_getClass(v18) == MEMORY[0x1E69E9F18])
          {
            *a4 = xpc_uint64_get_value(v19);
          }
        }
      }
    }

    if (a3 && v23 && (v20 = xpc_dictionary_get_value(v23, "size"), (v21 = v20) != 0) && object_getClass(v20) == MEMORY[0x1E69E9F18])
    {
      v14 = 0;
      *a3 = xpc_uint64_get_value(v21);
    }

    else
    {
      v14 = 0;
    }
  }

  XPC_Object::~XPC_Object(&v22);
  XPC_Object::~XPC_Object(&v25);
  return v14;
}

void sub_18F6D3D8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  XPC_Object::~XPC_Object(&a9);
  XPC_Object::~XPC_Object(va);
  _Unwind_Resume(a1);
}

int64_t AudioFileIPODLibHandle::AFAPI_ReadPacketData(AudioFileIPODLibHandle *this, unsigned __int8 a2, unsigned int *a3, AudioStreamPacketDescription *a4, int64_t a5, unsigned int *a6, void *a7)
{
  v13 = xpc_dictionary_create(0, 0, 0);
  v56 = 1;
  v54 = MEMORY[0x1E69E5060] + 16;
  xdict = v13;
  if (v13)
  {
    xpc_dictionary_set_uint64(v13, "type", 0x72656164uLL);
    xpc_dictionary_set_uint64(xdict, "numbytes", *a3);
    xpc_dictionary_set_uint64(xdict, "numpackets", *a6);
    xpc_dictionary_set_int64(xdict, "startingPacket", a5);
  }

  v14 = *(this + 6);
  if (!v14[1])
  {
    goto LABEL_17;
  }

  v15 = xpc_connection_send_message_with_reply_sync(v14[1], xdict);
  v16 = v15;
  if (v15)
  {
    v17 = v15 == MEMORY[0x1E69E9E18];
  }

  else
  {
    v17 = 1;
  }

  if (!v17 && v15 != MEMORY[0x1E69E9E20])
  {
    if (object_getClass(v15) != MEMORY[0x1E69E9E80])
    {
      goto LABEL_15;
    }

    v53 = 1;
    v51 = MEMORY[0x1E69E5060] + 16;
    v52 = v16;
    value = xpc_dictionary_get_value(v16, "status");
    v22 = value;
    if (value)
    {
      if (object_getClass(value) == MEMORY[0x1E69E9EB0])
      {
        v19 = xpc_int64_get_value(v22);
        if (v19)
        {
LABEL_58:
          XPC_Object::~XPC_Object(&v51);
          XPC_Object::~XPC_Object(&v54);
          return v19;
        }
      }
    }

    if (v52)
    {
      v23 = xpc_dictionary_get_value(v52, "status");
      v24 = v23;
      if (v23 && object_getClass(v23) == MEMORY[0x1E69E9EB0])
      {
        xpc_int64_get_value(v24);
      }

      v25 = xpc_dictionary_get_value(v52, "numbytes");
      v26 = v25;
      v27 = MEMORY[0x1E69E9F18];
      if (v25 && object_getClass(v25) == v27)
      {
        *a3 = xpc_uint64_get_value(v26);
      }

      if (v52)
      {
        v28 = xpc_dictionary_get_value(v52, "numpackets");
        v29 = v28;
        if (v28)
        {
          if (object_getClass(v28) == v27)
          {
            *a6 = xpc_uint64_get_value(v29);
          }
        }
      }
    }

    v48 = 2;
    v47 = &unk_1F0326280;
    v49 = -1;
    v50 = 1;
    if (!v52)
    {
      goto LABEL_36;
    }

    v30 = xpc_dictionary_get_value(v52, "bufsize");
    v31 = v30;
    if (!v30)
    {
      goto LABEL_37;
    }

    if (object_getClass(v30) == MEMORY[0x1E69E9F18])
    {
      LODWORD(v31) = xpc_uint64_get_value(v31);
    }

    else
    {
LABEL_36:
      LODWORD(v31) = 0;
    }

LABEL_37:
    v32 = xpc_dictionary_dup_fd(v52, "bufFD");
    if (v32 >= 1)
    {
      HIDWORD(v48) = v31;
      v49 = v32;
    }

    if (*(this + 112) == 1)
    {
      CAAssertRtn();
    }

    else
    {
      if (v47[2](&v47))
      {
        (*(*(this + 7) + 16))(this + 56);
        inited = SharableMemoryBlock::InitClient();
        if (inited)
        {
          AudioFileIPODLibHandle::Fail(this, inited);
        }
      }

      v34 = *(this + 10);
      v35 = *v34;
      v36 = *(this + 15);
      if (v36)
      {
        v37 = *v36;
        if (*v36 >= v35)
        {
LABEL_47:
          if (v35 - 1 >= v37)
          {
            v44 = 0;
          }

          else
          {
            v38 = v34 + 8;
            *v36 = v35;
            v39 = v36 + 16;
            v41 = v34[2];
            v40 = v34[3];
            v42 = v34[1];
            v43 = v35;
            do
            {
              *v39 = v38;
              v38 = (v38 + v41);
              *(v39 - 2) = v42;
              *(v39 - 1) = v40;
              v39 += 2;
              --v43;
            }

            while (v43);
            if (v34[4])
            {
              v44 = v38;
            }

            else
            {
              v44 = 0;
            }
          }

          memcpy(a7, *(v36 + 2), *a3);
          if (a4 && v44)
          {
            memcpy(a4, v44, 16 * *a6);
          }

          SharableMemoryBlock::FDClientToken::~FDClientToken(&v47);
          v19 = 0;
          goto LABEL_58;
        }

        free(v36);
        *(this + 15) = 0;
      }

      v36 = malloc_type_malloc(16 * (v35 - 1) + 24, 0xBAAF0B94uLL);
      if (v36)
      {
        *(this + 15) = v36;
        *v36 = v35;
        v34 = *(this + 10);
        v37 = v35;
        v35 = *v34;
        goto LABEL_47;
      }
    }

    exception = __cxa_allocate_exception(8uLL);
    v46 = std::bad_alloc::bad_alloc(exception);
  }

  if (v15)
  {
LABEL_15:
    xpc_release(v16);
  }

  v14 = *(this + 6);
  if (v14)
  {
LABEL_17:
    (*(*v14 + 1))(v14);
  }

  *(this + 6) = 0;
  XPC_Object::~XPC_Object(&v54);
  return 2003334207;
}

void sub_18F6D42DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  va_copy(va2, va1);
  v8 = va_arg(va2, void);
  v10 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  SharableMemoryBlock::FDClientToken::~FDClientToken(va);
  XPC_Object::~XPC_Object(va1);
  XPC_Object::~XPC_Object(va2);
  _Unwind_Resume(a1);
}

void AudioFileIPODLibHandle::Fail(AudioFileIPODLibHandle *this, int a2)
{
  v4 = *(this + 6);
  if (v4)
  {
    (*(*v4 + 8))(v4);
    *(this + 6) = 0;
  }

  exception = __cxa_allocate_exception(4uLL);
  *exception = a2;
  __cxa_throw(exception, MEMORY[0x1E69E5478], 0);
}

void SharableMemoryBlock::FDClientToken::~FDClientToken(SharableMemoryBlock::FDClientToken *this)
{
  *this = &unk_1F0326280;
  if (*(this + 20) == 1)
  {
    SharableMemoryBlock::FDClientToken::Reset(this);
  }
}

{
  SharableMemoryBlock::FDClientToken::~FDClientToken(this);

  JUMPOUT(0x193ADF220);
}

int64_t AudioFileIPODLibHandle::AFAPI_Close(AudioFileIPODLibHandle *this)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  v16 = 1;
  v14 = MEMORY[0x1E69E5060] + 16;
  message = v2;
  if (v2)
  {
    xpc_dictionary_set_uint64(v2, "type", 0x636C6F73uLL);
  }

  v3 = *(this + 6);
  if (!v3[1])
  {
    goto LABEL_17;
  }

  v4 = xpc_connection_send_message_with_reply_sync(v3[1], message);
  v5 = v4;
  if (v4)
  {
    v6 = v4 == MEMORY[0x1E69E9E18];
  }

  else
  {
    v6 = 1;
  }

  if (v6 || v4 == MEMORY[0x1E69E9E20])
  {
    if (!v4)
    {
LABEL_16:
      v3 = *(this + 6);
      if (!v3)
      {
LABEL_18:
        *(this + 6) = 0;
        XPC_Object::~XPC_Object(&v14);
        return 2003334207;
      }

LABEL_17:
      (*(*v3 + 1))(v3);
      goto LABEL_18;
    }

LABEL_15:
    xpc_release(v5);
    goto LABEL_16;
  }

  if (object_getClass(v4) != MEMORY[0x1E69E9E80])
  {
    goto LABEL_15;
  }

  v13 = 1;
  v12[0] = MEMORY[0x1E69E5060] + 16;
  v12[1] = v5;
  value = xpc_dictionary_get_value(v5, "status");
  v11 = value;
  if (!value || object_getClass(value) != MEMORY[0x1E69E9EB0] || (v8 = xpc_int64_get_value(v11), !v8))
  {
    v8 = 0;
  }

  XPC_Object::~XPC_Object(v12);
  XPC_Object::~XPC_Object(&v14);
  return v8;
}

void sub_18F6D45F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  XPC_Object::~XPC_Object(&a9);
  XPC_Object::~XPC_Object(va);
  _Unwind_Resume(a1);
}

void AudioFileIPODLibHandle::~AudioFileIPODLibHandle(AudioFileIPODLibHandle *this)
{
  AudioFileIPODLibHandle::~AudioFileIPODLibHandle(this);

  JUMPOUT(0x193ADF220);
}

{
  *this = &unk_1F0326170;
  v2 = *(this + 6);
  if (v2)
  {
    (*(*v2 + 8))(v2);
    *(this + 6) = 0;
  }

  SharedAudioBufferList::~SharedAudioBufferList((this + 56));
  *this = &unk_1F032F3D8;
  v3 = *(this + 3);
  if (v3)
  {
    *(this + 4) = v3;
    operator delete(v3);
  }

  BaseOpaqueObject::~BaseOpaqueObject(this);
}

void SharedAudioBufferList::~SharedAudioBufferList(SharedAudioBufferList *this)
{
  *this = &unk_1F0326258;
  v2 = *(this + 8);
  if (v2)
  {
    free(v2);
    *(this + 8) = 0;
  }

  SharableMemoryBlock::~SharableMemoryBlock(this);
}

{
  SharedAudioBufferList::~SharedAudioBufferList(this);

  JUMPOUT(0x193ADF220);
}

uint64_t AudioFileObjectHandle::AFAPI_RemoveUserData(AudioFileObjectHandle *this)
{
  v1 = *(this + 6);
  if ((v1[100] & 2) != 0)
  {
    return (*(*v1 + 608))();
  }

  else
  {
    return 1886547263;
  }
}

uint64_t AudioFileObjectHandle::AFAPI_SetUserData(AudioFileObjectHandle *this, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5)
{
  v5 = *(this + 6);
  if ((v5[100] & 2) != 0)
  {
    return (*(*v5 + 600))(v5, a2, a3, a4, a5);
  }

  else
  {
    return 1886547263;
  }
}

uint64_t AudioFileObjectHandle::AFAPI_SetProperty(AudioFileObjectHandle *this, int a2, unsigned int a3, const void *a4)
{
  v4 = *(this + 6);
  if (a2 == 1969321067 || (v4[100] & 2) != 0)
  {
    return (*(*v4 + 176))();
  }

  else
  {
    return 1886547263;
  }
}

uint64_t AudioFileObjectHandle::AFAPI_WritePacketsWithDependencies(uint64_t a1)
{
  v1 = *(a1 + 48);
  if ((v1[100] & 2) != 0)
  {
    return (*(*v1 + 152))(v1);
  }

  else
  {
    return 1886547263;
  }
}

uint64_t AudioFileObjectHandle::AFAPI_WriteBytes(AudioFileObjectHandle *this, uint64_t a2, uint64_t a3, unsigned int *a4, const void *a5)
{
  v5 = *(this + 6);
  if (v5[10])
  {
    return (*(*v5 + 80))(v5, a2, a3, a4, a5);
  }

  else
  {
    return 1869627199;
  }
}

uint64_t AudioFileObjectHandle::AFAPI_Initialize(AudioFileObjectHandle *this, const __CFURL *a2, const AudioStreamBasicDescription *a3, uint64_t a4)
{
  v7 = *(this + 6);
  AudioFileObject::SetURL(v7, a2);
  *(v7 + 100) = 3;
  *(v7 + 138) = (a4 & 2) == 0;
  v8 = *(*v7 + 32);

  return v8(v7, a2, a3, a4);
}

Class ___ZN22AudioFileIPODLibHandleC2EPK7__CFURLj_block_invoke(int a1, id a2)
{
  if (a2 != MEMORY[0x1E69E9E20] && a2 != 0 && a2 != MEMORY[0x1E69E9E18])
  {
    return object_getClass(a2);
  }

  return result;
}

Class ___ZN22AudioFileIPODLibHandleC2EPK7__CFURLj_block_invoke_2(int a1, id a2)
{
  if (a2)
  {
    return object_getClass(a2);
  }

  return result;
}

void AudioFileHandle::~AudioFileHandle(AudioFileHandle *this)
{
  *this = &unk_1F032F3D8;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }

  BaseOpaqueObject::~BaseOpaqueObject(this);
}

uint64_t MP4BoxParser_TrackFragmentHeader::Init(MP4BoxParser **this)
{
  result = MP4BoxParser_Full::Initialize(this);
  if (!result)
  {
    if (*(this + 5) != 1952868452)
    {
      return 4294967294;
    }

    v3 = (*(*this + 3))(this);
    result = MP4BoxParser::ReadDataSourceBytes(this[1], v3, 4uLL, this + 60);
    *(this + 15) = bswap32(*(this + 15));
    v4 = v3 + 4;
    v5 = *(this + 59);
    if (v5)
    {
      result = MP4BoxParser::ReadDataSourceBytes(this[1], v3 + 4, 8uLL, this + 8);
      this[8] = bswap64(this[8]);
      v4 = v3 + 12;
      v5 = *(this + 59);
    }

    else if ((*(this + 57) & 2) != 0)
    {
      *(this + 89) = 1;
    }

    v6 = 0;
    if ((v5 & 2) != 0)
    {
      result = MP4BoxParser::ReadDataSourceBytes(this[1], v4, 4uLL, &v6);
      *(this + 18) = bswap32(v6);
      v4 += 4;
      v5 = *(this + 59);
      if ((v5 & 8) == 0)
      {
LABEL_10:
        if ((v5 & 0x10) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_17;
      }
    }

    else if ((v5 & 8) == 0)
    {
      goto LABEL_10;
    }

    result = MP4BoxParser::ReadDataSourceBytes(this[1], v4, 4uLL, &v6);
    *(this + 19) = bswap32(v6);
    v4 += 4;
    v5 = *(this + 59);
    if ((v5 & 0x10) == 0)
    {
LABEL_11:
      if ((v5 & 0x20) == 0)
      {
LABEL_13:
        *(this + 88) = (*(this + 57) & 1) == 0;
        return result;
      }

LABEL_12:
      result = MP4BoxParser::ReadDataSourceBytes(this[1], v4, 4uLL, &v6);
      *(this + 21) = bswap32(v6);
      goto LABEL_13;
    }

LABEL_17:
    result = MP4BoxParser::ReadDataSourceBytes(this[1], v4, 4uLL, &v6);
    *(this + 20) = bswap32(v6);
    v4 += 4;
    if ((*(this + 59) & 0x20) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  return result;
}

void MP4BoxParser_TrackFragmentHeader::~MP4BoxParser_TrackFragmentHeader(MP4BoxParser_TrackFragmentHeader *this)
{
  v2 = *(this + 1);
  *this = &unk_1F0330650;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  JUMPOUT(0x193ADF220);
}

{
  v2 = *(this + 1);
  *this = &unk_1F0330650;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }
}

uint64_t MP4BoxParser_TrackFragmentHeader::MP4BoxParser_TrackFragmentHeader(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = &unk_1F0330650;
  (*(*a2 + 88))(a2, a3);
  *(a1 + 16) = 0;
  *(a1 + 20) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 36) = 8;
  *a1 = &unk_1F03262A8;
  *(a1 + 60) = 0;
  *(a1 + 64) = -1;
  *(a1 + 72) = -1;
  *(a1 + 80) = -1;
  *(a1 + 88) = 0;
  return a1;
}

uint64_t clientParamToFixedParam(int a1)
{
  result = 0;
  if (a1 > 1014)
  {
    if (a1 > 2000)
    {
      if (a1 <= 2010)
      {
        if (a1 != 2001)
        {
          if (a1 != 2010)
          {
            return result;
          }

          return 333;
        }

        return 331;
      }

      if (a1 != 2011)
      {
        if (a1 != 2012)
        {
          return result;
        }

        return 335;
      }

      return 334;
    }

    if (a1 == 1015)
    {
      return 332;
    }

    if (a1 == 1016)
    {
      return 337;
    }

    if (a1 != 2000)
    {
      return result;
    }

    return 330;
  }

  if (a1 <= 1010)
  {
    if (a1 != 1000)
    {
      if (a1 != 1001)
      {
        if (a1 != 1010)
        {
          return result;
        }

        return 333;
      }

      return 331;
    }

    return 330;
  }

  switch(a1)
  {
    case 1011:
      return 334;
    case 1012:
      return 335;
    case 1013:
      return 336;
    default:
      return 0;
  }
}

float clientParamValueToFixedParamValue(int a1, float result)
{
  if (a1 == 1015 || a1 == 1001)
  {
    return result * 0.5 + 0.5;
  }

  return result;
}

uint64_t clientParamToSynthParam(int a1, int *a2, float *a3, float a4)
{
  if (a1 > 1019)
  {
    v7 = 4294967292;
    if (a1 <= 2009)
    {
      switch(a1)
      {
        case 1020:
          return v7;
        case 2000:
          v28 = fminf(a4, 1.0);
          v25 = a4 <= 0.0;
          v6 = 0.0;
          if (!v25)
          {
            v6 = v28;
          }

          a1 = 5002;
          if (!a2)
          {
            goto LABEL_78;
          }

          goto LABEL_77;
        case 2001:
          v12 = fminf(a4, 1.0);
          if (a4 <= -1.0)
          {
            v13 = -1.0;
          }

          else
          {
            v13 = v12;
          }

          v6 = v13 * 0.5 + 0.5;
          a1 = 5003;
          if (!a2)
          {
            goto LABEL_78;
          }

          goto LABEL_77;
      }
    }

    else
    {
      if (a1 <= 2011)
      {
        if (a1 == 2010)
        {
          v18 = fminf(a4, 1.0);
          if (a4 <= -1.0)
          {
            v19 = -1.0;
          }

          else
          {
            v19 = v18;
          }

          v6 = (v19 * 63.5) + 63.5;
          a1 = 79;
          if (!a2)
          {
            goto LABEL_78;
          }
        }

        else
        {
          v8 = fminf(a4, 1.0);
          if (a4 <= -1.0)
          {
            v9 = -1.0;
          }

          else
          {
            v9 = v8;
          }

          v6 = (v9 * 63.5) + 63.5;
          a1 = 80;
          if (!a2)
          {
            goto LABEL_78;
          }
        }

        goto LABEL_77;
      }

      if (a1 == 2012)
      {
        v22 = fminf(a4, 1.0);
        if (a4 <= -1.0)
        {
          v23 = -1.0;
        }

        else
        {
          v23 = v22;
        }

        v6 = (v23 * 63.5) + 63.5;
        a1 = 81;
        if (!a2)
        {
          goto LABEL_78;
        }

        goto LABEL_77;
      }

      if (a1 == 2020)
      {
        return v7;
      }
    }

    goto LABEL_43;
  }

  if (a1 <= 1010)
  {
    switch(a1)
    {
      case 1000:
        v24 = fminf(a4, 1.0);
        v25 = a4 <= 0.0;
        v6 = 0.0;
        if (!v25)
        {
          v6 = v24;
        }

        a1 = 5000;
        if (!a2)
        {
          goto LABEL_78;
        }

        goto LABEL_77;
      case 1001:
        v26 = fminf(a4, 1.0);
        if (a4 <= -1.0)
        {
          v27 = -1.0;
        }

        else
        {
          v27 = v26;
        }

        v6 = v27 * 0.5 + 0.5;
        a1 = 5001;
        if (!a2)
        {
          goto LABEL_78;
        }

        goto LABEL_77;
      case 1010:
        v10 = fminf(a4, 1.0);
        if (a4 <= -1.0)
        {
          v11 = -1.0;
        }

        else
        {
          v11 = v10;
        }

        v6 = (v11 * 63.5) + 63.5;
        a1 = 73;
        if (!a2)
        {
          goto LABEL_78;
        }

        goto LABEL_77;
    }

    goto LABEL_43;
  }

  if (a1 > 1012)
  {
    if (a1 == 1013)
    {
      v20 = fminf(a4, 1.0);
      if (a4 <= -1.0)
      {
        v21 = -1.0;
      }

      else
      {
        v21 = v20;
      }

      v6 = v21 * 0.5 + 0.5;
      a1 = 5004;
      if (!a2)
      {
        goto LABEL_78;
      }

      goto LABEL_77;
    }

    if (a1 == 1015)
    {
      v14 = fminf(a4, 1.0);
      if (a4 <= -1.0)
      {
        v15 = -1.0;
      }

      else
      {
        v15 = v14;
      }

      v6 = v15 * 0.5 + 0.5;
      a1 = 5011;
      if (!a2)
      {
        goto LABEL_78;
      }

      goto LABEL_77;
    }

LABEL_43:
    if (a1 > 0xFF)
    {
      return 4294962494;
    }

    v30 = fminf(a4, 1.0) * 127.0;
    v25 = a4 <= 0.0;
    v6 = 0.0;
    if (!v25)
    {
      v6 = v30;
    }

    if (!a2)
    {
      goto LABEL_78;
    }

    goto LABEL_77;
  }

  if (a1 == 1011)
  {
    v16 = fminf(a4, 1.0);
    if (a4 <= -1.0)
    {
      v17 = -1.0;
    }

    else
    {
      v17 = v16;
    }

    v6 = (v17 * 63.5) + 63.5;
    a1 = 75;
    if (!a2)
    {
      goto LABEL_78;
    }
  }

  else
  {
    v4 = fminf(a4, 1.0);
    if (a4 <= -1.0)
    {
      v5 = -1.0;
    }

    else
    {
      v5 = v4;
    }

    v6 = (v5 * 63.5) + 63.5;
    a1 = 72;
    if (!a2)
    {
      goto LABEL_78;
    }
  }

LABEL_77:
  *a2 = a1;
LABEL_78:
  v7 = 0;
  if (a3)
  {
    *a3 = v6;
  }

  return v7;
}

void acv2::AudioConverterBase::description(uint64_t *__return_ptr a1@<X8>, acv2::AudioConverterBase *this@<X0>)
{
  v4 = (*(*this + 56))(this);
  if (v4)
  {
    v5 = v4;
    CFRetain(v4);
    v35 = v5;
    v6 = CFGetTypeID(v5);
    if (v6 != CFStringGetTypeID())
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }
  }

  else
  {
    v35 = 0;
  }

  std::ostringstream::basic_ostringstream[abi:ne200100](&v26);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v26, "  ", 2);
  if (!v35)
  {
    v20 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v20, "Could not construct");
  }

  v8 = __p;
  applesauce::CF::convert_to<std::string,0>(__p, v35);
  if (SBYTE7(v22) < 0)
  {
    v8 = __p[0];
  }

  v9 = strlen(v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v26, v8, v9);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v26, " ", 1);
  v10 = MEMORY[0x193ADEE30](&v26, this);
  LOBYTE(v24[0]) = 10;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, v24, 1);
  if (SBYTE7(v22) < 0)
  {
    operator delete(__p[0]);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v26, "    ", 4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v26, "Input:  ", 8);
  v11 = *(this + 2);
  *__p = *(this + 1);
  v22 = v11;
  v23 = *(this + 6);
  v12 = v24;
  CA::StreamDescription::AsString(v24, __p, *__p, *&v11);
  if (v25 < 0)
  {
    v12 = v24[0];
  }

  v13 = strlen(v12);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v26, v12, v13);
  v36 = 10;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v26, &v36, 1);
  if (v25 < 0)
  {
    operator delete(v24[0]);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v26, "    ", 4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v26, "Output: ", 8);
  v14 = *(this + 72);
  *__p = *(this + 56);
  v22 = v14;
  v23 = *(this + 11);
  v15 = v24;
  CA::StreamDescription::AsString(v24, __p, *__p, *&v14);
  if (v25 < 0)
  {
    v15 = v24[0];
  }

  v16 = strlen(v15);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v26, v15, v16);
  v36 = 10;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v26, &v36, 1);
  if (v25 < 0)
  {
    operator delete(v24[0]);
  }

  if ((v33 & 0x10) != 0)
  {
    v18 = v32;
    if (v32 < v29)
    {
      v32 = v29;
      v18 = v29;
    }

    locale = v28[4].__locale_;
  }

  else
  {
    if ((v33 & 8) == 0)
    {
      v17 = 0;
      *(a1 + 23) = 0;
      goto LABEL_31;
    }

    locale = v28[1].__locale_;
    v18 = v28[3].__locale_;
  }

  v17 = v18 - locale;
  if ((v18 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v17 >= 0x17)
  {
    operator new();
  }

  *(a1 + 23) = v17;
  if (v17)
  {
    memmove(a1, locale, v17);
  }

LABEL_31:
  *(a1 + v17) = 0;
  v26 = *MEMORY[0x1E69E54E8];
  *(&v26 + *(v26 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v27 = MEMORY[0x1E69E5548] + 16;
  if (v31 < 0)
  {
    operator delete(v30);
  }

  v27 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v28);
  std::ostream::~ostream();
  MEMORY[0x193ADF120](&v34);
  if (v35)
  {
    CFRelease(v35);
  }
}

void sub_18F6D5800(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24)
{
  __cxa_free_exception(v24);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef((v25 - 64));
  _Unwind_Resume(a1);
}

void acv2::AudioConverterBase::createCapturer(void *a1, const char *a2, AudioConverterCapturer **a3, __int128 *a4, const void *a5)
{
  v23 = *MEMORY[0x1E69E9840];
  v9 = getenv("TMPDIR");
  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = "/tmp";
  }

  v11 = getpid();
  v12 = acv2::AudioConverterBase::createCapturer(char const*,std::unique_ptr<AudioConverterCapturer> &,CA::StreamDescription const&,void *)::counter++;
  snprintf(__str, 0x80uLL, "%s/%d-%d-%d-%.f-%p%s.caf", v10, v11, v12, *(a4 + 7), *a4, a5, a2);
  std::string::basic_string[abi:ne200100]<0>(a1, __str);
  if (gAudioConverterDeferredLogOnce != -1)
  {
    dispatch_once(&gAudioConverterDeferredLogOnce, &__block_literal_global);
  }

  v13 = *gAudioConverterLog;
  if (os_log_type_enabled(*gAudioConverterLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v16 = "AudioConverterBase.cpp";
    v17 = 1024;
    v18 = 68;
    v19 = 2080;
    v20 = __str;
    v21 = 2048;
    v22 = a5;
    _os_log_impl(&dword_18F5DF000, v13, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Opening capturer %s for converter -> %p", buf, 0x26u);
  }

  operator new();
}

void sub_18F6D5E60(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x193ADF220](v23, 0x1032C40BE2BDED3, a3, a4, a5, a6, a7, a8);
  if (*(a17 + 23) < 0)
  {
    operator delete(*a17);
  }

  _Unwind_Resume(a1);
}

uint64_t MP4BoxParser_TrackFragment::Init(MP4BoxParser_TrackFragment *this, int a2)
{
  v3 = MP4BoxParser::Initialize(this);
  if (!v3)
  {
    if (*(this + 5) == 1953653094)
    {
      if (*(this + 64) == 1)
      {
        operator new();
      }

      v3 = 0;
      if ((*(**(this + 1) + 144))(*(this + 1)))
      {
        operator new();
      }
    }

    else
    {
      return 4294967294;
    }
  }

  return v3;
}

void MP4BoxParser_TrackFragment::~MP4BoxParser_TrackFragment(MP4BoxParser_TrackFragment *this)
{
  MP4BoxParser_TrackFragment::~MP4BoxParser_TrackFragment(this);

  JUMPOUT(0x193ADF220);
}

{
  *this = &unk_1F03262D8;
  if (*(this + 64) == 1)
  {
    v2 = *(this + 9);
    if (v2)
    {
      std::__list_imp<MP4BoxInfo>::clear(*(this + 9));
      MEMORY[0x193ADF220](v2, 0x1020C4062D53EE8);
    }
  }

  v3 = *(this + 10);
  if (v3)
  {
    CompressedPacketTable::~CompressedPacketTable(v3);
    MEMORY[0x193ADF220]();
  }

  v4 = *(this + 27);
  if (v4)
  {
    *(this + 28) = v4;
    operator delete(v4);
  }

  v5 = *(this + 23);
  if (v5)
  {
    *(this + 24) = v5;
    operator delete(v5);
  }

  v6 = *(this + 20);
  if (v6)
  {
    *(this + 21) = v6;
    operator delete(v6);
  }

  v7 = *(this + 16);
  if (v7)
  {
    *(this + 17) = v7;
    operator delete(v7);
  }

  v8 = *(this + 13);
  if (v8)
  {
    *(this + 14) = v8;
    operator delete(v8);
  }

  v9 = *(this + 1);
  *this = &unk_1F0330650;
  *(this + 1) = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }
}

void std::__list_imp<MP4BoxInfo>::clear(uint64_t *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = v2[1];
        v6 = v2[6];
        if (v6)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v6);
        }

        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

uint64_t MP4BoxParser_TrackFragment::GetTrackID(MP4BoxParser_TrackFragment *this, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return 0;
  }

  v2 = *(a2 + 8);
  if (v2 == a2)
  {
    return 0;
  }

  while (*(v2 + 16) != 1952868452)
  {
    v2 = *(v2 + 8);
    if (v2 == a2)
    {
      return 0;
    }
  }

  MP4BoxParser_TrackFragmentHeader::MP4BoxParser_TrackFragmentHeader(&v7, this, *(v2 + 32));
  if (MP4BoxParser_TrackFragmentHeader::Init(&v7))
  {
    v3 = v8;
    v7 = &unk_1F0330650;
    v8 = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    return 0;
  }

  v4 = v9;
  v6 = v8;
  v7 = &unk_1F0330650;
  v8 = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  return v4;
}

void sub_18F6D63CC(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a11)
  {
    (*(*a11 + 8))(a11, a2, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MP4BoxParser_TrackFragment::ParsePackets(uint64_t this)
{
  v65 = *MEMORY[0x1E69E9840];
  if (!*(this + 88))
  {
    v1 = this;
    v2 = *(this + 72);
    v3 = *(v2 + 8);
    if (v3 != v2)
    {
      while (*(v3 + 16) != 1952868452)
      {
        v3 = *(v3 + 8);
        if (v3 == v2)
        {
          return this;
        }
      }

      MP4BoxParser_TrackFragmentHeader::MP4BoxParser_TrackFragmentHeader(&v58, *(this + 8), *(v3 + 32));
      if (!MP4BoxParser_TrackFragmentHeader::Init(&v58))
      {
        v4 = v60;
        if (v60 != -1)
        {
LABEL_12:
          v6 = v61;
          v5 = v62;
          if (v61 == -1 && (v6 = *(v1 + 272), v6 == -1))
          {
            v6 = 0;
          }

          else if (v6)
          {
            *(v1 + 248) = v6;
          }

          if (v5 == -1)
          {
            v7 = *(v1 + 276);
            v44 = v7 != -1;
            if (v7 == -1)
            {
              v5 = 0;
            }

            else
            {
              v5 = *(v1 + 276);
            }
          }

          else
          {
            v44 = 1;
          }

          if (v63 == 1)
          {
            v8 = *(v1 + 72);
            v9 = *(v8 + 8);
            if (v9 != v8)
            {
              v42 = v6;
              v43 = v5;
              v10 = 0;
              v11 = v4;
              v41 = v4;
              while (1)
              {
                v12 = 0;
                v13 = v9;
                do
                {
                  if (*(v13 + 16) == 1953658222)
                  {
                    ++v12;
                  }

                  v13 = *(v13 + 8);
                }

                while (v13 != v8);
                if (v10 >= v12)
                {
                  goto LABEL_79;
                }

                v14 = 0;
                while (*(v9 + 16) != 1953658222)
                {
LABEL_34:
                  v9 = *(v9 + 8);
                  if (v9 == v8)
                  {
                    goto LABEL_78;
                  }
                }

                if (v14 != v10)
                {
                  ++v14;
                  goto LABEL_34;
                }

                v15 = *(v1 + 8);
                v47 = &unk_1F0330650;
                (*(*v15 + 88))(&v48);
                v49 = 0;
                v50 = 0;
                v51 = 0;
                v52 = 0;
                v53 = 8;
                v47 = &unk_1F03306B8;
                v54 = 0u;
                v55 = 0u;
                v56 = -1;
                v57 = 0;
                if (!MP4BoxParser_TrackFragmentRun::Init(&v47))
                {
                  if (v56 != -1)
                  {
                    v11 = v4 + v56;
                  }

                  v45 = HIDWORD(v55);
                  if (HIDWORD(v55))
                  {
                    break;
                  }
                }

LABEL_77:
                MP4BoxParser_TrackFragmentRun::~MP4BoxParser_TrackFragmentRun(&v47);
                v8 = *(v1 + 72);
LABEL_78:
                ++v10;
                v9 = *(v8 + 8);
                if (v9 == v8)
                {
                  goto LABEL_79;
                }
              }

              v16 = 0;
              while (1)
              {
                *&v46 = v11;
                v17 = v6;
                if (BYTE1(v57) == 1)
                {
                  v18 = (DWORD2(v55) * v16);
                  if (*(&v54 + 1) - v54 < v18 + DWORD2(v55))
                  {
                    goto LABEL_76;
                  }

                  v17 = bswap32(*(v54 + v18 + 4 * v57));
                }

                if (!v17)
                {
LABEL_76:
                  *(v1 + 88) += v45;
                  v4 = v41;
                  goto LABEL_77;
                }

                if (v17 > *(v1 + 248))
                {
                  *(v1 + 248) = v17;
                }

                *(v1 + 240) += v17;
                HIDWORD(v46) = v17;
                v19 = *(v1 + 80);
                if (v19)
                {
                  CompressedPacketTable::push_back(v19, &v46);
                }

                v20 = HIDWORD(v56);
                if (BYTE2(v57) == 1)
                {
                  if (HIDWORD(v56) == -1)
                  {
                    v21 = (DWORD2(v55) * v16);
                    if (*(&v54 + 1) - v54 < v21 + DWORD2(v55))
                    {
LABEL_58:
                      *(v1 + 208) = 1;
LABEL_61:
                      v22 = (v16 + *(v1 + 88));
                      v24 = *(v1 + 224);
                      v23 = *(v1 + 232);
                      if (v24 >= v23)
                      {
                        v26 = *(v1 + 216);
                        v27 = v24 - v26;
                        v28 = (v24 - v26) >> 3;
                        v29 = v28 + 1;
                        if ((v28 + 1) >> 61)
                        {
                          std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
                        }

                        v30 = v23 - v26;
                        if (v30 >> 2 > v29)
                        {
                          v29 = v30 >> 2;
                        }

                        if (v30 >= 0x7FFFFFFFFFFFFFF8)
                        {
                          v31 = 0x1FFFFFFFFFFFFFFFLL;
                        }

                        else
                        {
                          v31 = v29;
                        }

                        if (v31)
                        {
                          std::allocator<SyncSampleEntry>::allocate_at_least[abi:ne200100](v31);
                        }

                        v32 = (v24 - v26) >> 3;
                        v33 = (8 * v28);
                        v34 = (8 * v28 - 8 * v32);
                        *v33 = v22;
                        v25 = v33 + 1;
                        memcpy(v34, v26, v27);
                        v35 = *(v1 + 216);
                        *(v1 + 216) = v34;
                        *(v1 + 224) = v25;
                        *(v1 + 232) = 0;
                        if (v35)
                        {
                          operator delete(v35);
                        }

                        v6 = v42;
                      }

                      else
                      {
                        *v24 = v22;
                        v25 = v24 + 8;
                      }

                      *(v1 + 224) = v25;
                      *(v1 + 208) = 1;
                      goto LABEL_75;
                    }

                    v20 = bswap32(*(v54 + v21 + 4 * ((BYTE1(v57) + v57) & 3)));
                  }

                  else if (v16)
                  {
                    goto LABEL_58;
                  }
                }

                else
                {
                  if (v16 != 0 || HIDWORD(v56) == -1)
                  {
                    v20 = v43;
                  }

                  if ((v16 != 0 || HIDWORD(v56) == -1) && !v44)
                  {
                    goto LABEL_75;
                  }
                }

                *(v1 + 208) = 1;
                if ((v20 & 0x10000) == 0)
                {
                  goto LABEL_61;
                }

LABEL_75:
                v11 += v17;
                if (v45 == ++v16)
                {
                  goto LABEL_76;
                }
              }
            }

LABEL_79:
            v36 = *(v1 + 8);
            v37 = *(v1 + 56);
            MP4BoxParser_Track::GetInfoFromTrackSubBoxes(v37);
            MP4GetRollGroup(v36, v8, 0, 1919904876, v37 + 120, *(v1 + 88), v1 + 96);
            if ((*(v1 + 96) & 1) == 0)
            {
              v38 = *(v1 + 8);
              v39 = *(v1 + 72);
              v40 = *(v1 + 56);
              MP4BoxParser_Track::GetInfoFromTrackSubBoxes(v40);
              MP4GetRollGroup(v38, v39, 0, 1886547820, v40 + 208, *(v1 + 88), v1 + 152);
            }
          }

          goto LABEL_81;
        }

        if ((v64 & 1) != 0 || !*(*(v1 + 56) + 76))
        {
          v4 = *(v1 + 256);
          goto LABEL_12;
        }
      }

LABEL_81:
      this = v59;
      v58 = &unk_1F0330650;
      v59 = 0;
      if (this)
      {
        return (*(*this + 8))(this);
      }
    }
  }

  return this;
}

void sub_18F6D6994(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30)
{
  MP4BoxParser_TrackFragmentRun::~MP4BoxParser_TrackFragmentRun(&a15);
  v31 = a30;
  a29 = &unk_1F0330650;
  a30 = 0;
  if (v31)
  {
    (*(*v31 + 8))(v31);
  }

  _Unwind_Resume(a1);
}

void acv2::PostDecodeRenderer::~PostDecodeRenderer(AudioUnit *this)
{
  acv2::PostDecodeRenderer::~PostDecodeRenderer(this);

  JUMPOUT(0x193ADF220);
}

{
  *this = &unk_1F0326310;
  AudioUnitUninitialize(this[1]);
  AudioComponentInstanceDispose(this[1]);
  v2 = this[9];
  if (v2)
  {
    this[10] = v2;
    operator delete(v2);
  }

  std::unique_ptr<CA::AudioBuffersBase>::reset[abi:ne200100](this + 8, 0);
}

uint64_t **std::unique_ptr<CA::AudioBuffersBase>::reset[abi:ne200100](uint64_t **result, uint64_t *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    ExtendedAudioBufferList_Destroy(*v2);

    JUMPOUT(0x193ADF220);
  }

  return result;
}

BOOL acv2::PostDecodeRenderer::SupportsProperty(acv2::PostDecodeRenderer *this, AudioUnitPropertyID a2)
{
  outWritable = 0;
  outDataSize = 0;
  return AudioUnitGetPropertyInfo(this, a2, 0, 0, &outDataSize, &outWritable) == 0;
}

uint64_t MP4BoxParser_TrackExtends::Init(MP4BoxParser_TrackExtends *this)
{
  v6 = *MEMORY[0x1E69E9840];
  result = MP4BoxParser_Full::Initialize(this);
  if (!result)
  {
    if (*(this + 5) == 1953654136)
    {
      v4 = 0uLL;
      v5 = 0;
      v3 = (*(*this + 24))(this);
      result = MP4BoxParser::ReadDataSourceBytes(*(this + 1), v3, 0x14uLL, &v4);
      if (!result)
      {
        *(this + 60) = vrev32q_s8(v4);
        *(this + 19) = bswap32(v5);
      }
    }

    else
    {
      return 4294967294;
    }
  }

  return result;
}

void MP4BoxParser_TrackExtends::~MP4BoxParser_TrackExtends(MP4BoxParser_TrackExtends *this)
{
  v2 = *(this + 1);
  *this = &unk_1F0330650;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  JUMPOUT(0x193ADF220);
}

{
  v2 = *(this + 1);
  *this = &unk_1F0330650;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }
}

uint64_t MP4BoxParser_Track::GetNumPackets(MP4BoxParser_Track *this)
{
  if (MP4BoxParser_Track::GetInfoFromTrackSubBoxes(this))
  {
    return 0;
  }

  else
  {
    return *(this + 25);
  }
}

uint64_t MP4BoxParser_Track::GetInfoFromTrackSubBoxes(MP4BoxParser_Track *this)
{
  v102 = *MEMORY[0x1E69E9840];
  if (*(this + 80))
  {
    return 0;
  }

  v3 = *(this + 8);
  if (!v3)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = *(v3 + 8);
  if (v4 == v3)
  {
    return 0xFFFFFFFFLL;
  }

  while (*(v4 + 16) != 1835297121)
  {
    v4 = *(v4 + 8);
    if (v4 == v3)
    {
      return 0xFFFFFFFFLL;
    }
  }

  v5 = *(v4 + 40);
  if (!v5)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = *(v5 + 8);
  if (v6 == v5)
  {
    return 0xFFFFFFFFLL;
  }

  SampleSize = 0xFFFFFFFFLL;
  while (*(v6 + 16) != 1835296868)
  {
    v6 = *(v6 + 8);
    if (v6 == v5)
    {
      return SampleSize;
    }
  }

  v8 = *(v6 + 48);
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = *(this + 1);
  v94 = &unk_1F0330650;
  (*(*v9 + 88))(&v95);
  v96 = 0;
  v97 = 0;
  v98 = 0;
  v99 = 0;
  v100 = 8;
  v94 = &unk_1F0337450;
  v101 = 0;
  SampleSize = MP4BoxParser_MediaHeader::Init(&v94);
  if (SampleSize)
  {
    v10 = v95;
    v94 = &unk_1F0330650;
    v95 = 0;
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }

    LOBYTE(v11) = 0;
    goto LABEL_60;
  }

  *(this + 24) = v101;
  SampleTableBox = MP4BoxParser_Track::GetSampleTableBox(v72, *(this + 8));
  if (v76)
  {
    v11 = v74;
    if (v74)
    {
      SampleTableBox = MP4BoxParser_Track::GetChunkOffsetBox(v68, *(this + 8));
      if (v71)
      {
        MP4BoxParser_ChunkOffset::MP4BoxParser_ChunkOffset(&v91, *(this + 1), v69);
        SampleSize = MP4BoxParser_ChunkOffset::Init(v13);
        if (SampleSize)
        {
          v14 = v92;
          v91 = &unk_1F0330650;
          v92 = 0;
          if (v14)
          {
            (*(*v14 + 8))(v14);
          }

          LOBYTE(v11) = 0;
LABEL_54:
          if (v70)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v70);
          }

          goto LABEL_56;
        }

        if (v93)
        {
          v81[0] = 0;
          MP4BoxParser_ChunkOffset::GetChunkOffset(&v91, 0, v81);
          v16 = v81[0];
        }

        else
        {
          v16 = 0;
        }

        *(this + 11) = v16;
        MP4BoxParser_Track::GetSampleSizeBox(v64, this);
        if (v67 != 1)
        {
          v20 = v92;
          v91 = &unk_1F0330650;
          v92 = 0;
          if (v20)
          {
            (*(*v20 + 8))(v20);
          }

          LOBYTE(v11) = 0;
          SampleSize = 0xFFFFFFFFLL;
          goto LABEL_54;
        }

        MP4BoxParser_SampleSize::MP4BoxParser_SampleSize(&v86, *(this + 1), v65);
        SampleSize = MP4BoxParser_SampleSize::Init(&v86);
        if (SampleSize)
        {
          goto LABEL_44;
        }

        *(this + 25) = v90;
        *(this + 13) = MP4BoxParser_SampleSize::GetByteCount(&v86);
        if (v88 == 1937011578)
        {
          if (v89)
          {
            SampleSize = MP4BoxParser_SampleSize::GetSampleSize(&v86, 0, this + 92);
            if (SampleSize)
            {
              goto LABEL_44;
            }
          }
        }

        v17 = v73;
        SampleSize = MP4GetRollGroupDescription(*(this + 1), v11, v73, 1919904876, this + 120, SampleTableBox);
        if (SampleSize)
        {
          goto LABEL_44;
        }

        SampleSize = MP4GetRollGroupDescription(*(this + 1), v11, v17, 1886547820, this + 208, SampleTableBox);
        if (SampleSize)
        {
          goto LABEL_44;
        }

        MP4GetRollGroup(*(this + 1), v11, v17, 1919904876, this + 120, *(this + 25), this + 152);
        if ((*(this + 152) & 1) == 0)
        {
          MP4GetRollGroup(*(this + 1), v11, v17, 1886547820, this + 208, *(this + 25), this + 240);
        }

        v22 = *(v11 + 8);
        if (v22 != v11)
        {
          while (*(v22 + 16) != 1937011571)
          {
            v22 = *(v22 + 8);
            if (v22 == v11)
            {
              goto LABEL_75;
            }
          }

          MP4BoxParser_SyncSampleTable::MP4BoxParser_SyncSampleTable(v81, *(this + 1), *(v22 + 32) + v17);
          SampleSize = MP4BoxParser_SyncSampleTable::Init(v81);
          if (SampleSize || v82 == 1 && (SampleSize = MP4BoxParser_SyncSampleTable::GetSyncSampleTable(v81, (this + 296)), SampleSize))
          {
            MP4BoxParser_SyncSampleTable::~MP4BoxParser_SyncSampleTable(v81);
LABEL_44:
            LOBYTE(v11) = 0;
LABEL_45:
            v18 = v87;
            v86 = &unk_1F0330650;
            v87 = 0;
            if (v18)
            {
              (*(*v18 + 8))(v18);
            }

            if (v66)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v66);
            }

            v19 = v92;
            v91 = &unk_1F0330650;
            v92 = 0;
            if (v19)
            {
              (*(*v19 + 8))(v19);
            }

            goto LABEL_54;
          }

          MP4BoxParser_SyncSampleTable::~MP4BoxParser_SyncSampleTable(v81);
        }

LABEL_75:
        SampleTableBox = MP4BoxParser_Track::GetSampleTableSubBox(v60, *(this + 8), 1937011556);
        if (v63 == 1)
        {
          MP4BoxParser_SampleDescription::MP4BoxParser_SampleDescription(v81, *(this + 1), v61);
          SampleSize = MP4BoxParser_SampleDescription::Init(v81);
          if (SampleSize || (MP4BoxParser_SampleDescription::GetASEBoxes(v81, this + 54), v23 = (this + 328), *(this + 45) = 0, *(this + 328) = 0u, *(this + 344) = 0u, SampleSize = MP4BoxParser_SampleDescription::GetASBD(v81, (this + 328), v24, v25, v26, v27, v28, v29), SampleSize))
          {
            MP4BoxParser_SampleDescription::~MP4BoxParser_SampleDescription(v81);
            LOBYTE(v11) = 0;
          }

          else
          {
            if (*(this + 86))
            {
              if (*(this + 92))
              {
                v30 = v93;
                MP4BoxParser_Track::GetSampleTableSubBox(v56, *(this + 8), 1937011555);
                if (v59 == 1)
                {
                  MP4BoxParser_SampleToChunk::MP4BoxParser_SampleToChunk(&v77, *(this + 1), v57);
                  if (!MP4BoxParser_SampleToChunk::Init(&v77))
                  {
                    *v55 = 0;
                    v31 = 0;
                    if (v30)
                    {
                      v32 = 0;
                      v33 = *(this + 11);
                      while (1)
                      {
                        v54 = 0;
                        if (MP4BoxParser_Track::GetChunkOffset(this, v31, &v54))
                        {
                          break;
                        }

                        v34 = v54;
                        if (v54 != v33 + *(this + 92) * v55[0])
                        {
                          break;
                        }

                        if (v31 >= v55[1])
                        {
                          if (MP4BoxParser_SampleToChunk::GetSampleCountForChunkIndex(&v77, v31, v32, v55, &v55[1]))
                          {
                            break;
                          }

                          ++v32;
                        }

                        ++v31;
                        v33 = v34;
                        if (v30 == v31)
                        {
                          v31 = v30;
                          break;
                        }
                      }
                    }

                    *(this + 440) = v30 == v31;
                  }

                  v35 = v78;
                  v77 = &unk_1F0330650;
                  v78 = 0;
                  if (v35)
                  {
                    (*(*v35 + 8))(v35);
                  }

                  if (v58)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v58);
                  }
                }
              }
            }

            v36 = size;
            *(this + 96) = size;
            v37 = malloc_type_malloc(v36, 0x4CDDC682uLL);
            v38 = v37;
            if (v36 && !v37)
            {
              exception = __cxa_allocate_exception(8uLL);
              v53 = std::bad_alloc::bad_alloc(exception);
            }

            bzero(v37, v36);
            LOBYTE(v11) = 0;
            *(this + 49) = v38;
            SampleSize = 0xFFFFFFFFLL;
            if (v38)
            {
              v39 = size;
              if (*(this + 96) >= size)
              {
                memcpy(v38, __src, size);
                *(this + 96) = v39;
                SampleSize = MP4BoxParser_SampleDescription::GetChannelLayout(v81, this + 47, this + 93, v40, v41, v42, v43, v44);
                if (SampleSize)
                {
                  LOBYTE(v11) = 0;
                }

                else
                {
                  if ((*(this + 120) & 1) != 0 || (*(this + 208) & 1) != 0 || *(this + 296) == 1)
                  {
                    v45 = *(this + 8);
                    v46 = *(v45 + 8);
                    if (v46 != v45)
                    {
                      while (*(v46 + 16) != 1701082227)
                      {
                        v46 = *(v46 + 8);
                        if (v46 == v45)
                        {
                          goto LABEL_120;
                        }
                      }

                      MP4BoxParser_EditListExcludingPrimingAndRemainderFrames::MP4BoxParser_EditListExcludingPrimingAndRemainderFrames(&v77, *(this + 1), *(v46 + 32) + 8);
                      SampleSize = &v77;
                      if (!MP4BoxParser_EditListExcludingPrimingAndRemainderFrames::Init(&v77))
                      {
                        LODWORD(v47) = v80;
                        *(this + 105) = v79;
                        v48 = *(this + 24);
                        if (v48 && vabdd_f64(*v23, v48) >= 0.0000999999975)
                        {
                          v47 = (*v23 / v48 * v47);
                        }

                        *(this + 104) = v47;
                      }

                      v49 = v78;
                      v77 = &unk_1F0330650;
                      v78 = 0;
                      if (v49)
                      {
                        (*(*v49 + 8))(v49);
                      }
                    }
                  }

LABEL_120:
                  *(this + 106) = v85;
                  v50 = *(this + 84);
                  v51 = v50 == 1935767394 || v50 == 1935764850;
                  if (v51 && *(this + 86) && (v88 != 1937011578 || !v89))
                  {
                    *(this + 88) = 0;
                    *(this + 86) = 0;
                  }

                  LOBYTE(v11) = 1;
                  *(this + 80) = 1;
                }
              }
            }

            MP4BoxParser_SampleDescription::~MP4BoxParser_SampleDescription(v81);
          }

          if (v62)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v62);
          }
        }

        else
        {
          LOBYTE(v11) = 0;
          SampleSize = 0xFFFFFFFFLL;
        }

        goto LABEL_45;
      }

      LOBYTE(v11) = 0;
    }

    SampleSize = 0xFFFFFFFFLL;
LABEL_56:
    if (v75)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v75);
    }

    v21 = v95;
    v94 = &unk_1F0330650;
    v95 = 0;
    if (v21)
    {
      (*(*v21 + 8))(v21, SampleTableBox);
    }

    goto LABEL_60;
  }

  v15 = v95;
  v94 = &unk_1F0330650;
  v95 = 0;
  if (v15)
  {
    (*(*v15 + 8))(v15, SampleTableBox);
  }

  LOBYTE(v11) = 0;
  SampleSize = 0xFFFFFFFFLL;
LABEL_60:
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  if (v11)
  {
    return 0;
  }

  return SampleSize;
}

void sub_18F6D7754(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, std::__shared_weak_count *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, std::__shared_weak_count *a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, std::__shared_weak_count *a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, char a52)
{
  if (a43)
  {
    (*(*a43 + 8))(a43, a2, a3, a4, a5, a6, a7, a8);
  }

  MP4BoxParser_SampleDescription::~MP4BoxParser_SampleDescription(&a52);
  if (a22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a22);
  }

  v56 = STACK[0x220];
  STACK[0x218] = &unk_1F0330650;
  STACK[0x220] = 0;
  if (v56)
  {
    (*(*v56 + 8))(v56);
  }

  if (a28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a28);
  }

  v57 = *(v54 - 216);
  *(v54 - 224) = &unk_1F0330650;
  *(v54 - 216) = 0;
  if (v57)
  {
    (*(*v57 + 8))(v57);
  }

  if (a34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a34);
  }

  if (a40)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a40);
  }

  v58 = *(v54 - 152);
  *(v54 - 160) = v53;
  *(v54 - 152) = 0;
  if (v58)
  {
    (*(*v58 + 8))(v58);
  }

  if (v52)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v52);
  }

  _Unwind_Resume(a1);
}

__n128 MP4BoxParser_Track::GetSampleTableBox(MP4BoxParser_Track *this, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + 8);
    if (v2 == a2)
    {
      goto LABEL_16;
    }

    while (*(v2 + 16) != 1835297121)
    {
      v2 = *(v2 + 8);
      if (v2 == a2)
      {
        goto LABEL_16;
      }
    }

    v3 = *(v2 + 40);
    if (!v3)
    {
      goto LABEL_16;
    }

    v4 = *(v3 + 8);
    if (v4 == v3)
    {
      goto LABEL_16;
    }

    while (*(v4 + 16) != 1835626086)
    {
      v4 = *(v4 + 8);
      if (v4 == v3)
      {
        goto LABEL_16;
      }
    }

    v5 = *(v4 + 40);
    if (!v5 || (v6 = *(v5 + 8), v6 == v5))
    {
LABEL_16:
      *this = 0;
      *(this + 40) = 0;
    }

    else
    {
      while (v6[1].n128_u32[0] != 1937007212)
      {
        v6 = v6->n128_u64[1];
        if (v6 == v5)
        {
          goto LABEL_16;
        }
      }

      v12 = v6[1];
      v8 = v6[2].n128_u64[0];
      v7 = v6[2].n128_u64[1];
      v9 = v6[3].n128_u64[0];
      if (v9)
      {
        atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
      }

      v10 = *(v2 + 32) + v8 + *(v4 + 32);
      result = v12;
      *this = v12;
      *(this + 2) = v10;
      *(this + 3) = v7;
      *(this + 4) = v9;
      *(this + 40) = 1;
    }
  }

  else
  {
    *this = 0;
    *(this + 40) = 0;
  }

  return result;
}

__n128 MP4BoxParser_Track::GetChunkOffsetBox(MP4BoxParser_Track *this, uint64_t a2)
{
  if (a2)
  {
    result.n128_u64[0] = MP4BoxParser_Track::GetSampleTableBox(v12, a2).n128_u64[0];
    v4 = v16;
    if (v16 == 1 && v14 && (v5 = *(v14 + 8), v5 != v14))
    {
      v6 = *(v14 + 8);
      while (v6[1].n128_u32[0] != 1937007471)
      {
        v6 = v6->n128_u64[1];
        if (v6 == v14)
        {
          while (v5[1].n128_u32[0] != 1668232756)
          {
            v5 = v5->n128_u64[1];
            if (v5 == v14)
            {
              goto LABEL_10;
            }
          }

          v6 = v5;
          break;
        }
      }

      v11 = v6[1];
      v8 = v6[2].n128_u64[0];
      v7 = v6[2].n128_u64[1];
      v9 = v6[3].n128_u64[0];
      if (v9)
      {
        atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
      }

      v10 = v13 + v8;
      result = v11;
      *this = v11;
      *(this + 2) = v10;
      *(this + 3) = v7;
      *(this + 4) = v9;
      *(this + 40) = 1;
    }

    else
    {
LABEL_10:
      *this = 0;
      *(this + 40) = 0;
      if (!v4)
      {
        return result;
      }
    }

    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    }
  }

  else
  {
    *this = 0;
    *(this + 40) = 0;
  }

  return result;
}

void MP4BoxParser_Track::GetSampleSizeBox(MP4BoxParser_Track *this, uint64_t a2)
{
  MP4BoxParser_Track::GetSampleTableSubBox(this, *(a2 + 64), 1937011578);
  v4 = *(this + 40);
  if ((v4 & 1) == 0)
  {
    MP4BoxParser_Track::GetSampleTableSubBox(&v6, *(a2 + 64), 1937013298);
    v5 = v9;
    if (v4 != v9)
    {
      *this = v6;
      *(this + 2) = v7;
      *(this + 24) = v8;
      v8 = 0uLL;
      *(this + 40) = 1;
    }

    if (v5)
    {
      if (*(&v8 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v8 + 1));
      }
    }
  }
}

__n128 MP4BoxParser_Track::GetSampleTableSubBox(MP4BoxParser_Track *this, uint64_t a2, int a3)
{
  if (a2)
  {
    result.n128_u64[0] = MP4BoxParser_Track::GetSampleTableBox(v13, a2).n128_u64[0];
    v6 = v17;
    if (v17 == 1 && v15)
    {
      for (i = *(v15 + 8); i != v15; i = i->n128_u64[1])
      {
        if (i[1].n128_u32[0] == a3)
        {
          v12 = i[1];
          v9 = i[2].n128_u64[0];
          v8 = i[2].n128_u64[1];
          v10 = i[3].n128_u64[0];
          if (v10)
          {
            atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
          }

          v11 = v14 + v9;
          result = v12;
          *this = v12;
          *(this + 2) = v11;
          *(this + 3) = v8;
          *(this + 4) = v10;
          *(this + 40) = 1;
          goto LABEL_9;
        }
      }
    }

    *this = 0;
    *(this + 40) = 0;
    if (v6)
    {
LABEL_9:
      if (v16)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v16);
      }
    }
  }

  else
  {
    *this = 0;
    *(this + 40) = 0;
  }

  return result;
}

uint64_t MP4BoxParser_Track::GetChunkOffset(MP4BoxParser_Track *this, int a2, uint64_t *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  ChunkOffsetBox = MP4BoxParser_Track::GetChunkOffsetBox(v11, *(this + 8));
  if (v13 != 1)
  {
    return 1667787583;
  }

  v7 = *(this + 1);
  v14 = &unk_1F0330650;
  (*(*v7 + 88))(&v15, ChunkOffsetBox);
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 8;
  v14 = &unk_1F03306E8;
  v21 = 0;
  v8 = MP4BoxParser_ChunkOffset::Init(&v14);
  if (!v8)
  {
    MP4BoxParser_ChunkOffset::GetChunkOffset(&v14, a2, a3);
  }

  v9 = v15;
  v14 = &unk_1F0330650;
  v15 = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  return v8;
}

void sub_18F6D7E84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MP4BoxParser_Track::Init(MP4BoxParser_Track *this)
{
  result = MP4BoxParser::Initialize(this);
  if (!result)
  {
    if (*(this + 5) == 1953653099)
    {
      if (*(this + 56) == 1)
      {
        operator new();
      }

      return 0;
    }

    else
    {
      return 4294967294;
    }
  }

  return result;
}

void MP4BoxParser_Track::~MP4BoxParser_Track(MP4BoxParser_Track *this)
{
  MP4BoxParser_Track::~MP4BoxParser_Track(this);

  JUMPOUT(0x193ADF220);
}

{
  *this = &unk_1F0326360;
  v2 = *(this + 47);
  if (v2)
  {
    free(v2);
  }

  v3 = *(this + 49);
  if (v3)
  {
    free(v3);
  }

  if (*(this + 56) == 1)
  {
    v4 = *(this + 8);
    if (v4)
    {
      std::__list_imp<MP4BoxInfo>::clear(*(this + 8));
      MEMORY[0x193ADF220](v4, 0x1020C4062D53EE8);
    }
  }

  v5 = *(this + 14);
  if (v5)
  {
    CompressedPacketTable::~CompressedPacketTable(v5);
    MEMORY[0x193ADF220]();
  }

  v6 = *(this + 54);
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = *(this + 38);
  if (v7)
  {
    *(this + 39) = v7;
    operator delete(v7);
  }

  v8 = *(this + 34);
  if (v8)
  {
    *(this + 35) = v8;
    operator delete(v8);
  }

  v9 = *(this + 31);
  if (v9)
  {
    *(this + 32) = v9;
    operator delete(v9);
  }

  v10 = *(this + 27);
  if (v10)
  {
    *(this + 28) = v10;
    operator delete(v10);
  }

  v11 = *(this + 23);
  if (v11)
  {
    *(this + 24) = v11;
    operator delete(v11);
  }

  v12 = *(this + 20);
  if (v12)
  {
    *(this + 21) = v12;
    operator delete(v12);
  }

  v13 = *(this + 16);
  if (v13)
  {
    *(this + 17) = v13;
    operator delete(v13);
  }

  v14 = *(this + 1);
  *this = &unk_1F0330650;
  *(this + 1) = 0;
  if (v14)
  {
    (*(*v14 + 8))(v14);
  }
}

uint64_t MP4Parser_PacketProvider::GetNumPackets(MP4Parser_PacketProvider *this)
{
  if (MP4BoxParser_Track::GetInfoFromTrackSubBoxes(this))
  {
    v2 = 0;
  }

  else
  {
    v2 = *(this + 25);
  }

  return (*(this + 111) + v2);
}

void MP4Parser_PacketProvider::~MP4Parser_PacketProvider(MP4Parser_PacketProvider *this)
{
  MP4Parser_PacketProvider::~MP4Parser_PacketProvider(this);

  JUMPOUT(0x193ADF220);
}

{
  *this = &unk_1F0326398;
  v2 = *(this + 58);
  if (v2)
  {
    CompressedPacketTable::~CompressedPacketTable(v2);
    MEMORY[0x193ADF220]();
  }

  MP4BoxParser_Track::~MP4BoxParser_Track(this);
}

uint64_t MP4BoxParser_Track::MP4BoxParser_Track(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  *a1 = &unk_1F0330650;
  (*(*a2 + 88))(a2, a3);
  *(a1 + 16) = 0;
  *(a1 + 20) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 36) = 8;
  *a1 = &unk_1F0326360;
  *(a1 + 56) = 0;
  *(a1 + 64) = a4;
  *(a1 + 72) = 0;
  *(a1 + 76) = a5;
  *(a1 + 80) = 0;
  *(a1 + 312) = 0;
  *(a1 + 320) = 0;
  *(a1 + 304) = 0;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0;
  *(a1 + 124) = 0;
  *(a1 + 140) = 0;
  *(a1 + 132) = 0;
  *(a1 + 145) = 0;
  *(a1 + 208) = 0;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 228) = 0;
  *(a1 + 233) = 0;
  *(a1 + 212) = 0;
  *(a1 + 220) = 0;
  *(a1 + 296) = 0;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 384) = 0;
  *(a1 + 368) = 0;
  *(a1 + 376) = 0;
  *(a1 + 400) = 0;
  *(a1 + 408) = 0;
  *(a1 + 416) = 0;
  *(a1 + 392) = 0;
  *(a1 + 420) = 0xFFFFFFFFLL;
  *(a1 + 432) = 0;
  *(a1 + 440) = 0;
  return a1;
}

uint64_t MP4BoxParser_Track::GetTrackType(MP4BoxParser_Track *this)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = *(this + 8);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 8);
  if (v2 == v1)
  {
    return 0;
  }

  while (*(v2 + 16) != 1835297121)
  {
    v2 = *(v2 + 8);
    if (v2 == v1)
    {
      return 0;
    }
  }

  v3 = *(v2 + 40);
  if (!v3)
  {
    return 0;
  }

  v4 = *(v3 + 8);
  if (v4 == v3)
  {
    return 0;
  }

  while (*(v4 + 16) != 1751411826)
  {
    v4 = *(v4 + 8);
    if (v4 == v3)
    {
      return 0;
    }
  }

  v5 = *(this + 1);
  v10 = &unk_1F0330650;
  (*(*v5 + 88))(&v11);
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 8;
  v10 = off_1F0327F00;
  if (MP4BoxParser_HandlerReference::Init(&v10))
  {
    v6 = v11;
    v10 = &unk_1F0330650;
    v11 = 0;
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    return 0;
  }

  v7 = v17;
  v9 = v11;
  v10 = &unk_1F0330650;
  v11 = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  return v7;
}

void sub_18F6D8584(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a11)
  {
    (*(*a11 + 8))(a11, a2, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MP4BoxParser_Track::GetTrackID(MP4BoxParser_Track *this)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = *(this + 8);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 8);
  if (v2 == v1)
  {
    return 0;
  }

  while (*(v2 + 16) != 1953196132)
  {
    v2 = *(v2 + 8);
    if (v2 == v1)
    {
      return 0;
    }
  }

  v3 = *(this + 1);
  v8 = &unk_1F0330650;
  (*(*v3 + 88))(&v9);
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 8;
  v8 = off_1F03305F0;
  v15 = 0;
  if (MP4BoxParser_TrackHeader::Init(&v8))
  {
    v4 = v9;
    v8 = &unk_1F0330650;
    v9 = 0;
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    return 0;
  }

  v5 = v15;
  v7 = v9;
  v8 = &unk_1F0330650;
  v9 = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  return v5;
}

void sub_18F6D8754(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a11)
  {
    (*(*a11 + 8))(a11, a2, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void MP4BoxParser_Track::UpdateOffsetTableToIndex(MP4BoxParser_Track *this, unsigned int a2)
{
  v54 = *MEMORY[0x1E69E9840];
  if ((*(this + 440) & 1) == 0)
  {
    CompressedPacketCount = MP4BoxParser_Track::GetCompressedPacketCount(this);
    if (CompressedPacketCount <= a2)
    {
      SampleTableSubBox = MP4BoxParser_Track::GetSampleTableSubBox(v34, *(this + 8), 1937011555);
      if (v36 == 1)
      {
        v6 = *(this + 1);
        v46 = &unk_1F0330650;
        (*(*v6 + 88))(&v47, SampleTableSubBox);
        v48 = 0;
        v49 = 0;
        v50 = 0;
        v51 = 0;
        v52 = 8;
        v46 = &unk_1F0336550;
        v53 = 0;
        if (!MP4BoxParser_SampleToChunk::Init(&v46))
        {
          MP4BoxParser_Track::GetSampleSizeBox(v31, this);
          if (v33 == 1)
          {
            v7 = *(this + 1);
            v37 = &unk_1F0330650;
            (*(*v7 + 88))(&v38);
            v39 = 0;
            v40 = 0;
            v41 = 0;
            v42 = 0;
            v43 = 8;
            v37 = &unk_1F032BFF8;
            v44 = 0;
            v45 = 0;
            if (!MP4BoxParser_SampleSize::Init(&v37))
            {
              v9 = v45 - 1;
              if (v45 - 1 >= a2)
              {
                v9 = a2;
              }

              v10 = *(this + 100);
              *&v8 = *(this + 51);
              v25 = v8;
              v11 = *(this + 101);
              v29 = 0;
              *v30 = 0;
              DWORD2(v28) = 0;
              v12 = v9 + 1;
              if (v9 + 1 > CompressedPacketCount)
              {
                v13 = 0;
                v14 = v9 - CompressedPacketCount;
                v23 = v9 - CompressedPacketCount;
                while (1)
                {
                  MP4BoxParser_SampleToChunk::GetSampleCountForChunkIndex(&v46, v10, v11, v30, &v30[1]);
                  ++v13;
                  if (v25 < v30[0])
                  {
                    break;
                  }

                  v16 = v13 >= v14;
LABEL_24:
                  *(this + 51) = 0;
                  if (++v10 == v30[1])
                  {
                    ++v11;
                    *(this + 101) = v10;
                  }

                  v25 = 0u;
                  if ((CompressedPacketCount >= v12) | v16 & 1)
                  {
                    goto LABEL_27;
                  }
                }

                v24 = v11;
                v15 = 0;
                v16 = 0;
                while (1)
                {
                  v27 = 0;
                  if (MP4BoxParser_SampleSize::GetSampleSize(&v37, CompressedPacketCount + v15, &v27))
                  {
                    break;
                  }

                  v17 = v27;
                  v26 = 0;
                  if (MP4BoxParser_Track::GetChunkOffset(this, v10, &v26))
                  {
                    break;
                  }

                  *&v28 = v26 + *(this + 103);
                  HIDWORD(v28) = v17;
                  v18 = *(this + 14);
                  if (!v18)
                  {
                    if (!(*(**(this + 1) + 144))(*(this + 1)))
                    {
                      break;
                    }

                    if (!MP4BoxParser_Track::GetInfoFromTrackSubBoxes(this))
                    {
                      operator new();
                    }

                    v18 = *(this + 14);
                    if (!v18)
                    {
                      break;
                    }
                  }

                  CompressedPacketTable::push_back(v18, &v28);
                  v19.i32[0] = 1;
                  v19.i32[1] = v17;
                  *(&v20 + 1) = *(&v25 + 1);
                  *&v20 = vadd_s32(v19, *&v25);
                  v25 = v20;
                  *(this + 51) = v20;
                  ++v15;
                  v16 |= CompressedPacketCount + v15 >= v12;
                  if (v15 >= v30[0])
                  {
                    ++*(this + 100);
                    CompressedPacketCount += v15;
                    v11 = v24;
                    v14 = v23;
                    goto LABEL_24;
                  }
                }
              }
            }

LABEL_27:
            v21 = v38;
            v37 = &unk_1F0330650;
            v38 = 0;
            if (v21)
            {
              (*(*v21 + 8))(v21);
            }

            if (v32)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v32);
            }
          }
        }

        v22 = v47;
        v46 = &unk_1F0330650;
        v47 = 0;
        if (v22)
        {
          (*(*v22 + 8))(v22);
        }

        if (v35)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v35);
        }
      }
    }
  }
}

void sub_18F6D8BDC(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, std::__shared_weak_count *a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  if (a33)
  {
    (*(*a33 + 8))(a33, a2, a3, a4, a5, a6, a7, a8);
  }

  if (a24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a24);
  }

  v36 = *(v34 - 152);
  *(v34 - 160) = v33;
  *(v34 - 152) = 0;
  if (v36)
  {
    (*(*v36 + 8))(v36, a2, a3, a4, a5, a6, a7, a8);
  }

  if (a30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a30);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MP4BoxParser_Track::GetCompressedPacketCount(MP4BoxParser_Track *this)
{
  if (!MP4BoxParser_Track::GetInfoFromTrackSubBoxes(this) && *(this + 86))
  {
    return (*(*this + 32))(this);
  }

  v2 = *(this + 14);
  if (v2)
  {
    return *(v2 + 24);
  }

  else
  {
    return 0;
  }
}

uint64_t MP4BoxParser_Track::GetCompressedPacketOffset(MP4BoxParser_Track *this, unsigned int a2, unint64_t *a3)
{
  if (*(this + 440) == 1)
  {
    result = MP4BoxParser_Track::GetInfoFromTrackSubBoxes(this);
    if (result)
    {
      return result;
    }

    v7 = *(this + 11) + *(this + 86) * a2;
    goto LABEL_6;
  }

  if (*(this + 14))
  {
    MP4BoxParser_Track::UpdateOffsetTableToIndex(this, a2);
    CompressedPacketTable::operator[](v8, *(this + 14), a2);
    result = 0;
    v7 = v8[0];
LABEL_6:
    *a3 = v7;
    return result;
  }

  return 0xFFFFFFFFLL;
}

uint64_t MP4BoxParser_Track::GetByteCountForPackets(MP4BoxParser_Track *this, unsigned int a2, int a3)
{
  v26 = *MEMORY[0x1E69E9840];
  MP4BoxParser_Track::GetSampleSizeBox(v14, this);
  if (v16 != 1)
  {
    return 0;
  }

  v6 = *(this + 1);
  v17 = &unk_1F0330650;
  (*(*v6 + 88))(&v18);
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 8;
  v17 = &unk_1F032BFF8;
  v24 = 0;
  v25 = 0;
  if (MP4BoxParser_SampleSize::Init(&v17))
  {
    v7 = v18;
    v17 = &unk_1F0330650;
    v18 = 0;
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }

    v8 = 0;
  }

  else
  {
    v13 = 0;
    if (v20 == 1937011578 && v24)
    {
      SampleSize = MP4BoxParser_SampleSize::GetSampleSize(&v17, 0, &v13);
      v11 = v18;
      if (SampleSize)
      {
        v8 = 0;
      }

      else
      {
        v8 = v13 * a3;
      }

      v17 = &unk_1F0330650;
      v18 = 0;
      if (v11)
      {
        (*(*v11 + 8))(v11);
      }
    }

    else
    {
      if (a3 + a2 > a2)
      {
        LODWORD(v8) = 0;
        while (1)
        {
          v13 = 0;
          if (MP4BoxParser_SampleSize::GetSampleSize(&v17, a2, &v13))
          {
            break;
          }

          v8 = v13 + v8;
          ++a2;
          if (!--a3)
          {
            goto LABEL_23;
          }
        }
      }

      v8 = 0;
LABEL_23:
      v12 = v18;
      v17 = &unk_1F0330650;
      v18 = 0;
      if (v12)
      {
        (*(*v12 + 8))(v12);
      }
    }
  }

  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  return v8;
}

void sub_18F6D8FEC(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  if (a18)
  {
    (*(*a18 + 8))(a18, a2, a3, a4, a5, a6, a7, a8);
  }

  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MP4BoxParser_Track::GetLoudnessInfo(MP4BoxParser_Track *this, const __CFDictionary **a2)
{
  v3 = *(this + 8);
  if (!v3)
  {
    goto LABEL_14;
  }

  v4 = *(v3 + 8);
  if (v4 == v3)
  {
    goto LABEL_14;
  }

  while (*(v4 + 16) != 1969517665)
  {
    v4 = *(v4 + 8);
    if (v4 == v3)
    {
      goto LABEL_14;
    }
  }

  v6 = *(v4 + 40);
  if (!v6 || (v7 = *(v6 + 8), v7 == v6))
  {
LABEL_14:
    v10 = 0;
    *a2 = 0;
  }

  else
  {
    v8 = 1819632756;
    v9 = *(v6 + 8);
    while (*(v9 + 16) != 1819632756)
    {
      v9 = *(v9 + 8);
      if (v9 == v6)
      {
        v8 = 1818848870;
        while (*(v7 + 16) != 1818848870)
        {
          v7 = *(v7 + 8);
          if (v7 == v6)
          {
            goto LABEL_14;
          }
        }

        v9 = v7;
        break;
      }
    }

    v13 = *(v9 + 24);
    v12 = *(v9 + 32);
    v14 = *(v9 + 48);
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v15 = *(v4 + 32) + v12;
    if ((v8 & 0x6C7D6E76) == 0x6C756474)
    {
      v21 = 0;
      v22 = 0;
      __p = 0;
      LOBYTE(inSpecifier[0]) = 0;
      if (v13 == 8)
      {
        v17 = 0;
        v16 = 0;
        v18 = 0;
      }

      else
      {
        std::vector<unsigned char>::__append(&v21, (v13 - 8), inSpecifier);
        v16 = v21;
        v17 = v22;
        v18 = v22;
      }

      DataSourceBytes = MP4BoxParser::ReadDataSourceBytes(*(this + 1), v15 + 8, v18 - v16, v16);
      if (DataSourceBytes)
      {
        goto LABEL_27;
      }

      if (v17 == v16)
      {
        goto LABEL_32;
      }

      inSpecifier[0] = CFDataCreate(*MEMORY[0x1E695E480], v16, v17 - v16);
      ioPropertyDataSize[0] = 8;
      DataSourceBytes = AudioFormatGetProperty(0x6C646C62u, 8u, inSpecifier, ioPropertyDataSize, a2);
      if (inSpecifier[0])
      {
        CFRelease(inSpecifier[0]);
      }

      if (DataSourceBytes)
      {
LABEL_27:
        v20 = 0;
      }

      else
      {
LABEL_32:
        DataSourceBytes = 0;
        v20 = 1;
      }

      if (v16)
      {
        operator delete(v16);
      }

      v10 = DataSourceBytes;
      if (v20)
      {
        v10 = DataSourceBytes;
      }
    }

    else
    {
      if ((v8 & 0x6C7D6E76) == 0x6C696E66)
      {
        memset(inSpecifier, 0, sizeof(inSpecifier));
        v21 = inSpecifier;
        LOBYTE(v22) = 0;
        operator new();
      }

      v10 = 4294967246;
    }

    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    }
  }

  return v10;
}

void sub_18F6D9540(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, uint64_t a21)
{
  CACFDictionary::~CACFDictionary(&a12);
  CACFDictionary::~CACFDictionary(&a14);
  if (__p)
  {
    a19 = __p;
    operator delete(__p);
  }

  operator delete(v22);
  a16 = v23 - 72;
  std::vector<ISOLoudnessInfoBox>::__destroy_vector::operator()[abi:ne200100](&a16);
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  _Unwind_Resume(a1);
}

void std::vector<ISOLoudnessInfoBox>::__destroy_vector::operator()[abi:ne200100](void ****a1)
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
        v4 -= 3;
        v6 = v4;
        std::vector<ISOLoudnessInfo>::__destroy_vector::operator()[abi:ne200100](&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<unsigned char>::__append(char **a1, size_t __len, unsigned __int8 *a3)
{
  v6 = a1[1];
  v5 = a1[2];
  if (v5 - v6 >= __len)
  {
    if (__len)
    {
      memset(a1[1], *a3, __len);
      v6 += __len;
    }

    a1[1] = v6;
  }

  else
  {
    v7 = *a1;
    v8 = (v6 - *a1);
    v9 = &v8[__len];
    if (&v8[__len] < 0)
    {
      std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
    }

    v10 = v5 - v7;
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      operator new();
    }

    v12 = v6 - *a1;
    memset(v8, *a3, __len);
    memcpy(&v8[v7 - v6], v7, v12);
    *a1 = &v8[v7 - v6];
    a1[1] = &v8[__len];
    a1[2] = 0;
    if (v7)
    {

      operator delete(v7);
    }
  }
}

void std::vector<ISOLoudnessInfo>::resize(char **a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *a1) >> 3);
  v6 = a2 - v5;
  if (a2 <= v5)
  {
    if (a2 < v5)
    {
      v11 = (v3 + 40 * a2);
      while (v4 != v11)
      {
        v12 = *(v4 - 3);
        if (v12)
        {
          *(v4 - 2) = v12;
          operator delete(v12);
        }

        v4 -= 40;
      }

      a1[1] = v11;
    }
  }

  else
  {
    v7 = a1[2];
    if (0xCCCCCCCCCCCCCCCDLL * ((v7 - v4) >> 3) < v6)
    {
      if (a2 <= 0x666666666666666)
      {
        v8 = 0xCCCCCCCCCCCCCCCDLL * (&v7[-v3] >> 3);
        v9 = 2 * v8;
        if (2 * v8 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x333333333333333)
        {
          v10 = 0x666666666666666;
        }

        else
        {
          v10 = v9;
        }

        std::allocator<ISOLoudnessInfo>::allocate_at_least[abi:ne200100](v10);
      }

      std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
    }

    v13 = 40 * ((40 * v6 - 40) / 0x28) + 40;
    bzero(a1[1], v13);
    a1[1] = &v4[v13];
  }
}

void std::vector<LoudnessMethod>::resize(const void **a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = (v4 - *a1) >> 2;
  if (a2 <= v5)
  {
    if (a2 >= v5)
    {
      return;
    }

    v11 = &v3[4 * a2];
  }

  else
  {
    v6 = a2 - v5;
    v7 = a1[2];
    if (v6 > (v7 - v4) >> 2)
    {
      if (!(a2 >> 62))
      {
        v8 = v7 - v3;
        v9 = v8 >> 1;
        if (v8 >> 1 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v10 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        std::allocator<APAC::UI18>::allocate_at_least[abi:ne200100](v10);
      }

      std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
    }

    bzero(a1[1], 4 * v6);
    v11 = &v4[4 * v6];
  }

  a1[1] = v11;
}

void std::allocator<ISOLoudnessInfo>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (a1 < 0x666666666666667)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<ISOLoudnessInfo>,ISOLoudnessInfo*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = *(v3 - 24);
      if (v5)
      {
        *(v3 - 16) = v5;
        operator delete(v5);
      }

      v3 -= 40;
    }
  }

  return a1;
}

void std::vector<ISOLoudnessInfo>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v6 = *(v4 - 3);
        if (v6)
        {
          *(v4 - 2) = v6;
          operator delete(v6);
        }

        v4 -= 40;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

BOOL MP4BoxParser_Track::GetPacketTableInfo(MP4BoxParser_Track *this, AudioFilePacketTableInfo *a2, uint64_t a3, unsigned int a4, int a5)
{
  v5 = *(this + 105);
  if ((v5 & 0x80000000) == 0)
  {
    v6 = *(this + 87);
    v7 = *(this + 104);
    if (v6 * a3 >= v7)
    {
      v8 = v6 * a3 - v7;
    }

    else
    {
      LODWORD(v7) = v6 * a3;
      v8 = 0;
    }

    a2->mPrimingFrames = v7;
    v9 = *(this + 41) * v5;
    a2->mNumberValidFrames = v8;
    v10 = (v9 / a4);
    if (v10 >= 1 && v8 > v10)
    {
      v12 = v8 - v10;
      if (!a5 || v12 < v6)
      {
        a2->mRemainderFrames = v12;
        a2->mNumberValidFrames = v8 - v12;
      }
    }
  }

  return (v5 & 0x80000000) == 0;
}

void MP4Parser_PacketProvider::AddTrackFragment(MP4BoxParser_Track *a1, char *a2, int a3, uint64_t a4, __int128 *a5)
{
  v7[35] = *MEMORY[0x1E69E9840];
  if (!MP4BoxParser_Track::GetInfoFromTrackSubBoxes(a1))
  {
    MP4BoxParser::MP4BoxParser(v7, a2, a3, 0);
  }
}

void sub_18F6DA21C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  MP4BoxParser_TrackFragment::~MP4BoxParser_TrackFragment(va);
  _Unwind_Resume(a1);
}

void SampleToRollDistanceTable::append_entry(uint64_t a1, __int128 *a2)
{
  if (*a1 == 1 && (v4 = *(a1 + 40), v4 != *(a1 + 32)) && (v5 = *(v4 - 16), *a2 == v5 + *(v4 - 24)) && *(a2 + 8) == *(v4 - 8))
  {
    *(v4 - 16) = *(a2 + 1) + v5;
  }

  else
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (v6 == v7)
    {
LABEL_10:
      v9 = *(a1 + 24);
      if (v7 >= v9)
      {
        v11 = v7 - v6;
        v12 = (v7 - v6) >> 1;
        if (v12 <= -2)
        {
          std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
        }

        v13 = v9 - v6;
        if (v13 <= v12 + 1)
        {
          v14 = v12 + 1;
        }

        else
        {
          v14 = v13;
        }

        if (v13 >= 0x7FFFFFFFFFFFFFFELL)
        {
          v15 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v15 = v14;
        }

        if (v15)
        {
          std::allocator<APAC::UI13>::allocate_at_least[abi:ne200100](v15);
        }

        v16 = (v7 - v6) >> 1;
        v17 = (2 * v12);
        v18 = (2 * v12 - 2 * v16);
        *v17 = *(a2 + 8);
        v10 = v17 + 1;
        memcpy(v18, v6, v11);
        v19 = *(a1 + 8);
        *(a1 + 8) = v18;
        *(a1 + 16) = v10;
        *(a1 + 24) = 0;
        if (v19)
        {
          operator delete(v19);
        }
      }

      else
      {
        *v7 = *(a2 + 8);
        v10 = v7 + 2;
      }

      *(a1 + 16) = v10;
    }

    else
    {
      v8 = *(a1 + 8);
      while (*v8 != *(a2 + 8))
      {
        if (++v8 == v7)
        {
          goto LABEL_10;
        }
      }
    }

    v21 = *(a1 + 40);
    v20 = *(a1 + 48);
    if (v21 >= v20)
    {
      v24 = *(a1 + 32);
      v25 = v21 - v24;
      v26 = 0xAAAAAAAAAAAAAAABLL * ((v21 - v24) >> 3);
      v27 = v26 + 1;
      if (v26 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
      }

      v28 = 0xAAAAAAAAAAAAAAABLL * ((v20 - v24) >> 3);
      if (2 * v28 > v27)
      {
        v27 = 2 * v28;
      }

      if (v28 >= 0x555555555555555)
      {
        v29 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v29 = v27;
      }

      if (v29)
      {
        if (v29 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v30 = 24 * v26;
      *v30 = *a2;
      *(v30 + 16) = *(a2 + 2);
      v23 = 24 * v26 + 24;
      v31 = v30 - v25;
      memcpy((v30 - v25), v24, v25);
      *(a1 + 32) = v31;
      *(a1 + 40) = v23;
      *(a1 + 48) = 0;
      if (v24)
      {
        operator delete(v24);
      }
    }

    else
    {
      v22 = *a2;
      *(v21 + 16) = *(a2 + 2);
      *v21 = v22;
      v23 = v21 + 24;
    }

    *(a1 + 40) = v23;
    *a1 = 1;
  }
}

uint64_t MP4Parser_PacketProvider::GetMaximumPacketSize(MP4Parser_PacketProvider *this)
{
  v23 = *MEMORY[0x1E69E9840];
  if (!(*(**(this + 1) + 144))(*(this + 1)) || (MP4BoxParser_Track::GetSampleSizeBox(v10, this), v12 != 1))
  {
    v3 = 0;
    goto LABEL_19;
  }

  v2 = *(this + 1);
  v14 = &unk_1F0330650;
  (*(*v2 + 88))(&v15);
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 8;
  v14 = &unk_1F032BFF8;
  v21 = 0;
  v22 = 0;
  if (!MP4BoxParser_SampleSize::Init(&v14))
  {
    if (v17 == 1937011578)
    {
      v3 = v21;
      if (v21)
      {
        goto LABEL_15;
      }
    }

    v13 = 0;
    if (v22)
    {
      v4 = 0;
      v3 = 0;
      do
      {
        SampleSize = MP4BoxParser_SampleSize::GetSampleSize(&v14, v4, &v13);
        v6 = v13;
        if (v13 <= v3)
        {
          v6 = v3;
        }

        if (!SampleSize)
        {
          v3 = v6;
        }

        ++v4;
      }

      while (v4 < v22);
      goto LABEL_15;
    }
  }

  v3 = 0;
LABEL_15:
  v7 = v15;
  v14 = &unk_1F0330650;
  v15 = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

LABEL_19:
  v8 = *(this + 114);
  if (v3 <= v8)
  {
    return v8;
  }

  else
  {
    return v3;
  }
}

void sub_18F6DA6B4(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  if (a18)
  {
    (*(*a18 + 8))(a18, a2, a3, a4, a5, a6, a7, a8);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MP4Parser_PacketProvider::GetPacketInfo(MP4Parser_PacketProvider *this, unsigned int a2, unsigned int *a3, unint64_t *a4)
{
  v29 = *MEMORY[0x1E69E9840];
  if (MP4BoxParser_Track::GetInfoFromTrackSubBoxes(this))
  {
    v8 = 0;
LABEL_9:
    v10 = 1885563711;
    if ((*(*this + 32))(this) > a2)
    {
      v12 = *(this + 58);
      if (v12)
      {
        v13 = a2 - v8;
        CompressedPacketTable::operator[](&v20, v12, v13);
        *a4 = v20;
        CompressedPacketTable::operator[](&v20, v12, v13);
        v10 = 0;
        *a3 = HIDWORD(v21);
      }
    }

    return v10;
  }

  v8 = *(this + 25);
  if (v8 <= a2)
  {
    goto LABEL_9;
  }

  if (!(*(**(this + 1) + 144))(*(this + 1)))
  {
    return 0xFFFFFFFFLL;
  }

  MP4BoxParser_Track::GetSampleSizeBox(v17, this);
  if (v19 != 1)
  {
    return 0;
  }

  v9 = *(this + 1);
  v20 = &unk_1F0330650;
  (*(*v9 + 88))(&v21);
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 8;
  v20 = &unk_1F032BFF8;
  v27 = 0;
  v28 = 0;
  v10 = MP4BoxParser_SampleSize::Init(&v20);
  if (v10)
  {
    v11 = v21;
    v20 = &unk_1F0330650;
    v21 = 0;
    if (v11)
    {
      (*(*v11 + 8))(v11);
    }
  }

  else
  {
    v16 = 0;
    if (!MP4BoxParser_SampleSize::GetSampleSize(&v20, a2, &v16))
    {
      *a3 = v16;
      MP4BoxParser_Track::GetCompressedPacketOffset(this, a2, a4);
    }

    v14 = v21;
    v20 = &unk_1F0330650;
    v21 = 0;
    if (v14)
    {
      (*(*v14 + 8))(v14);
    }

    v10 = 0;
  }

  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  return v10;
}

void sub_18F6DA9A8(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  if (a18)
  {
    (*(*a18 + 8))(a18, a2, a3, a4, a5, a6, a7, a8);
  }

  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MP4Parser_PacketProvider::GetContiguousPacketCountAndSize(MP4Parser_PacketProvider *this, unsigned int a2, unsigned int a3, unsigned int *a4, unsigned int *a5)
{
  *a4 = 0;
  *a5 = 0;
  InfoFromTrackSubBoxes = MP4BoxParser_Track::GetInfoFromTrackSubBoxes(this);
  v11 = 0;
  if (!InfoFromTrackSubBoxes)
  {
    v11 = *(this + 25);
    if (v11 > a2)
    {
      MP4BoxParser_Track::UpdateOffsetTableToIndex(this, a3 + a2);
      CompressedPacketCount = MP4BoxParser_Track::GetCompressedPacketCount(this);
      if (CompressedPacketCount > a2)
      {
        if (*(this + 440) == 1)
        {
          v13 = (*(*this + 32))(this) - a2;
          if (v13 >= a3)
          {
            v14 = a3;
          }

          else
          {
            v14 = v13;
          }

LABEL_28:
          if (v14 >= a3)
          {
            v28 = a3;
          }

          else
          {
            v28 = v14;
          }

          *a4 = v28;
          if (v28)
          {
            ByteCountForPackets = MP4BoxParser_Track::GetByteCountForPackets(this, a2, v28);
          }

          else
          {
            ByteCountForPackets = 0;
          }

          result = 0;
          *a5 = ByteCountForPackets;
          return result;
        }

        v22 = *(this + 14);
        if (v22)
        {
          if (a3 + a2 <= CompressedPacketCount)
          {
            v23 = a3;
          }

          else
          {
            v23 = CompressedPacketCount - a2;
          }

          CompressedPacketTable::operator[](&v33, v22, a2);
          v24 = v33;
          CompressedPacketTable::operator[](&v33, *(this + 14), a2);
          if (v23 == 1)
          {
            v14 = 1;
          }

          else
          {
            v25 = v34;
            v14 = 1;
            while (1)
            {
              v26 = v25 + v24;
              CompressedPacketTable::operator[](&v33, *(this + 14), a2 + v14);
              if (v26 < v33)
              {
                break;
              }

              CompressedPacketTable::operator[](&v33, *(this + 14), a2 + v14);
              v24 = v33;
              CompressedPacketTable::operator[](&v33, *(this + 14), a2 + v14);
              v25 = v34;
              if (v14++ >= v23 - 1)
              {
                v14 = v23;
                goto LABEL_28;
              }
            }
          }

          goto LABEL_28;
        }
      }

      v14 = 0;
      goto LABEL_28;
    }
  }

  v15 = a2 - v11;
  if (v15 >= *(this + 111))
  {
    return 1885563711;
  }

  v16 = *(this + 58);
  if (v16)
  {
    do
    {
      ++*a4;
      CompressedPacketTable::operator[](&v33, v16, v15);
      *a5 += v34;
      if (*a4 == a3)
      {
        break;
      }

      v17 = v15 + 1;
      v18 = *(this + 111);
      if (v15 + 1 < v18)
      {
        CompressedPacketTable::operator[](&v33, v16, v15);
        v19 = v33;
        CompressedPacketTable::operator[](v31, v16, v15);
        v20 = v19 + v32;
        CompressedPacketTable::operator[](v30, v16, v17);
        if (v20 != v30[0])
        {
          return 0;
        }

        v18 = *(this + 111);
      }

      v15 = v17;
    }

    while (v17 < v18);
  }

  return 0;
}

uint64_t MP4Parser_PacketProvider::GetPacketOffset(MP4Parser_PacketProvider *this, unsigned int a2, unint64_t *a3)
{
  if ((*(*this + 32))(this) <= a2)
  {
    return 1885563711;
  }

  if (!(*(**(this + 1) + 144))(*(this + 1)))
  {
    return 0xFFFFFFFFLL;
  }

  if (MP4BoxParser_Track::GetInfoFromTrackSubBoxes(this) || *(this + 25) <= a2)
  {
    if (!*(this + 58))
    {
      return 0xFFFFFFFFLL;
    }

    CompressedPacketTable::operator[](v7, *(this + 58), a2 - *(this + 25));
    *a3 = v7[0];
    return 0;
  }

  if (!(*(**(this + 1) + 144))(*(this + 1)))
  {
    return 0xFFFFFFFFLL;
  }

  MP4BoxParser_Track::UpdateOffsetTableToIndex(this, a2);

  return MP4BoxParser_Track::GetCompressedPacketOffset(this, a2, a3);
}

uint64_t Slice_DataSource::WithData(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = *MEMORY[0x1E69E9840];
  v13 = 0;
  v8 = (*(*a1 + 24))(a1, &v13);
  if (v8)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v17 = "DataSource.cpp";
      v18 = 1024;
      v19 = 834;
      _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  DataSource data unable to determine size", buf, 0x12u);
    }
  }

  else if (a2 < 0 || v13 <= a2)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v17 = "DataSource.cpp";
      v18 = 1024;
      v19 = 835;
      _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  DataSource data bad position", buf, 0x12u);
    }

    return 4294967256;
  }

  else if (v13 - a3 >= a2)
  {
    v10 = a1[2];
    v11 = a1[3];
    v12 = *(a4 + 24);
    if (v12)
    {
      if (v12 == a4)
      {
        v15 = v14;
        (*(*v12 + 24))(v12, v14);
      }

      else
      {
        v15 = (*(*v12 + 16))(v12);
      }
    }

    else
    {
      v15 = 0;
    }

    (*(*v10 + 80))(v10, v11 + a2, a3, v14);
    std::__function::__value_func<void ()(void const*)>::~__value_func[abi:ne200100](v14);
    return 0;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v17 = "DataSource.cpp";
      v18 = 1024;
      v19 = 836;
      _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  DataSource data insufficient amount", buf, 0x12u);
    }

    return 4294967257;
  }

  return v8;
}

void sub_18F6DB20C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::__function::__value_func<void ()(void const*)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(void const*)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t DataSource::WriteBytes64(DataSource *this, unsigned __int16 a2, uint64_t a3, unint64_t a4, char *a5, unint64_t *a6)
{
  if (a4)
  {
    v8 = a4;
    v10 = 0;
    v11 = 0;
    while (1)
    {
      v12 = v8 >= 0xFFFFFFFF ? 0xFFFFFFFFLL : v8;
      v15 = 0;
      result = (*(*this + 56))(this, a2, a3, v12, &a5[v11], &v15);
      v10 += v15;
      if (result || v15 < v12)
      {
        break;
      }

      a3 = 0;
      v11 += v12;
      a2 = 1;
      v8 -= v12;
      if (!v8)
      {
        goto LABEL_14;
      }
    }
  }

  else
  {
    v10 = 0;
LABEL_14:
    result = 0;
  }

  if (a6)
  {
    *a6 = v10;
  }

  return result;
}

uint64_t DataSource::ReadBytes64(DataSource *this, unsigned __int16 a2, uint64_t a3, unint64_t a4, char *a5, unint64_t *a6)
{
  if (a4)
  {
    v8 = a4;
    v10 = 0;
    v11 = 0;
    while (1)
    {
      v12 = v8 >= 0xFFFFFFFF ? 0xFFFFFFFFLL : v8;
      v15 = 0;
      result = (*(*this + 48))(this, a2, a3, v12, &a5[v11], &v15);
      v10 += v15;
      if (result || v15 < v12)
      {
        break;
      }

      a3 = 0;
      v11 += v12;
      a2 = 1;
      v8 -= v12;
      if (!v8)
      {
        goto LABEL_14;
      }
    }
  }

  else
  {
    v10 = 0;
LABEL_14:
    result = 0;
  }

  if (a6)
  {
    *a6 = v10;
  }

  return result;
}

void Slice_DataSource::WriteBytes(Slice_DataSource *this, unsigned __int16 a2, uint64_t a3, unsigned int a4, const void *a5, unsigned int *a6)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "not writable");
}

uint64_t Slice_DataSource::ReadBytes(Slice_DataSource *this, char a2, uint64_t a3, unsigned int a4, void *a5, unsigned int *a6)
{
  if (a6)
  {
    *a6 = 0;
  }

  v14 = 0;
  result = (*(*this + 24))(this, &v14);
  if (!result)
  {
    if ((a2 & 3u) > 1)
    {
      if ((a2 & 3) == 2)
      {
        a3 += v14;
      }

      else
      {
        a3 = 0;
      }
    }

    else if ((a2 & 3) != 0)
    {
      a3 += *(this + 4);
    }

    result = 4294967256;
    if ((a3 & 0x8000000000000000) == 0 && v14 > a3)
    {
      if (v14 - a3 >= a4)
      {
        v12 = a4;
      }

      else
      {
        v12 = v14 - a3;
      }

      if (v12 < 1)
      {
        return 4294967246;
      }

      else
      {
        v13 = v12;
        result = (*(**(this + 2) + 48))(*(this + 2), 0, *(this + 3) + a3);
        if (a6)
        {
          *a6 = v13;
        }

        *(this + 4) = a3 + v13;
      }
    }
  }

  return result;
}

uint64_t Slice_DataSource::SetSize(Slice_DataSource *this, uint64_t a2)
{
  *(this + 5) = a2;
  *(this + 48) = 1;
  return 0;
}

uint64_t Slice_DataSource::GetSize(Slice_DataSource *this, uint64_t *a2)
{
  if (*(this + 48) == 1)
  {
    v4 = *(this + 5);
  }

  else
  {
    result = (*(**(this + 2) + 24))(*(this + 2), a2);
    if (result)
    {
      return result;
    }

    v6 = *(this + 3);
    if (*a2 < v6)
    {
      v6 = *a2;
    }

    v4 = *a2 - v6;
  }

  result = 0;
  *a2 = v4;
  return result;
}

uint64_t DataSource::GetSize32(DataSource *this, unsigned int *a2)
{
  v4 = 0;
  result = (*(*this + 24))(this, &v4);
  if (!result)
  {
    if (v4 <= 0xFFFFFFFFLL)
    {
      result = 0;
      *a2 = v4;
    }

    else
    {
      return 1868981823;
    }
  }

  return result;
}

uint64_t DataSource::WithData(uint64_t a1, uint64_t a2, size_t size, uint64_t a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0;
  v8 = malloc_type_calloc(1uLL, size, 0xA4215B9EuLL);
  if (v8)
  {
    v9 = (*(*a1 + 48))(a1, 0, a2, size, v8, &v12);
    if (v9)
    {
      v10 = v9;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v14 = "DataSource.cpp";
        v15 = 1024;
        v16 = 121;
        _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  DataSource data read failed", buf, 0x12u);
      }
    }

    else if (v12 >= size)
    {
      std::function<void ()(void const*)>::operator()(*(a4 + 24), v8);
      v10 = 0;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v14 = "DataSource.cpp";
        v15 = 1024;
        v16 = 122;
        _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  DataSource data insufficient amount", buf, 0x12u);
      }

      v10 = 4294967257;
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v14 = "DataSource.cpp";
      v15 = 1024;
      v16 = 118;
      _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  DataSource data insufficient memory", buf, 0x12u);
    }

    v10 = 4294967188;
  }

  free(v8);
  return v10;
}

uint64_t std::function<void ()(void const*)>::operator()(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if (!a1)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*a1 + 48))(a1, &v3);
}

uint64_t UnixFile_DataSource::SetSize(UnixFile_DataSource *this, off_t a2)
{
  *(this + 3) = -1;
  if (ftruncate(*(this + 3), a2) == -1)
  {
    return 1886547263;
  }

  result = 0;
  *(this + 3) = a2;
  return result;
}

uint64_t Seekable_DataSource::WriteBytes(Seekable_DataSource *this, char a2, uint64_t a3, uint64_t a4, const void *a5, unsigned int *a6)
{
  v6 = *(this + 5);
  if (!v6)
  {
    return 1869627199;
  }

  if (!a5)
  {
    return 4294967246;
  }

  v17 = 0;
  if ((a2 & 3) == 2)
  {
    result = (*(*this + 24))(this, &v17);
    if (result)
    {
      return result;
    }

    v13 = (this + 24);
    v14 = v17;
LABEL_12:
    a3 += v14;
    goto LABEL_13;
  }

  v13 = (this + 24);
  if ((a2 & 3) != 0)
  {
    if ((a2 & 3) == 3)
    {
      a3 = 0;
      goto LABEL_15;
    }

    v14 = *v13;
    goto LABEL_12;
  }

LABEL_13:
  if (a3 < 0)
  {
    return 4294967256;
  }

  v6 = *(this + 5);
LABEL_15:
  v16 = 0;
  result = v6(*(this + 2), a3, a4, a5, &v16);
  if (!result)
  {
    v15 = v16;
    if (a6)
    {
      *a6 = v16;
    }

    *v13 = a3 + v15;
  }

  return result;
}

uint64_t Seekable_DataSource::ReadBytes(Seekable_DataSource *this, char a2, uint64_t a3, unsigned int a4, void *a5, unsigned int *a6)
{
  if (a6)
  {
    *a6 = 0;
  }

  if (!*(this + 4))
  {
    return 1869627199;
  }

  if (!a5)
  {
    return 4294967246;
  }

  v16 = 0;
  result = (*(*this + 24))(this, &v16);
  if (!result)
  {
    if ((a2 & 3u) > 1)
    {
      if ((a2 & 3) == 3)
      {
        a3 = 0;
      }

      else
      {
        a3 += v16;
        if (a3 < 0)
        {
          return 4294967256;
        }
      }
    }

    else
    {
      if ((a2 & 3) != 0)
      {
        a3 += *(this + 3);
      }

      if (a3 < 0)
      {
        return 4294967256;
      }
    }

    if (v16 <= a3)
    {
      return 4294967257;
    }

    else
    {
      if (v16 - a3 >= a4)
      {
        v13 = a4;
      }

      else
      {
        v13 = v16 - a3;
      }

      v15 = 0;
      result = (*(this + 4))(*(this + 2), a3, v13, a5, &v15);
      v14 = v15;
      if (a6)
      {
        *a6 = v15;
      }

      *(this + 3) = a3 + v14;
    }
  }

  return result;
}

uint64_t Seekable_DataSource::SetSize(Seekable_DataSource *this)
{
  v1 = *(this + 7);
  if (v1)
  {
    return v1(*(this + 2));
  }

  else
  {
    return 1869627199;
  }
}

uint64_t Seekable_DataSource::GetSize(Seekable_DataSource *this, uint64_t *a2)
{
  v3 = *(this + 6);
  if (v3)
  {
    v4 = v3(*(this + 2));
  }

  else
  {
    v4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  *a2 = v4;
  return 0;
}

uint64_t Buffer_DataSource::WithData(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a2 - a1[4];
  if (v4 < 0 || (v5 = a1[2], v4 >= v5))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v7 = 136315394;
      v8 = "DataSource.cpp";
      v9 = 1024;
      v10 = 764;
      _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  DataSource data bad position", &v7, 0x12u);
    }

    return 4294967256;
  }

  else if (v4 <= v5 - a3)
  {
    std::function<void ()(void const*)>::operator()(*(a4 + 24), a1[3] + v4);
    return 0;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v7 = 136315394;
      v8 = "DataSource.cpp";
      v9 = 1024;
      v10 = 765;
      _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  DataSource data insufficient amount", &v7, 0x12u);
    }

    return 4294967257;
  }
}

void Buffer_DataSource::WriteBytes(Buffer_DataSource *this, unsigned __int16 a2, uint64_t a3, unsigned int a4, const void *a5, unsigned int *a6)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "not writable");
}

uint64_t Buffer_DataSource::ReadBytes(Buffer_DataSource *this, char a2, uint64_t a3, unsigned int a4, void *__dst, unsigned int *a6)
{
  if (a6)
  {
    *a6 = 0;
  }

  v8 = *(this + 2);
  v9 = *(this + 4);
  if ((a2 & 3u) > 1)
  {
    if ((a2 & 3) == 2)
    {
      a3 += v8 + v9;
    }

    else
    {
      a3 = 0;
    }
  }

  else if ((a2 & 3) != 0)
  {
    a3 += *(this + 5);
  }

  result = 4294967256;
  v11 = a3 - v9;
  if (a3 - v9 >= 0)
  {
    v12 = v8 <= v11;
    v13 = v8 - v11;
    if (!v12)
    {
      if (v13 >= a4)
      {
        v14 = a4;
      }

      else
      {
        v14 = v13;
      }

      if (v14 <= 0)
      {
        if (a6)
        {
          *a6 = 0;
        }

        return 4294967246;
      }

      else
      {
        memcpy(__dst, (*(this + 3) + v11), v14);
        if (a6)
        {
          *a6 = v14;
        }

        result = 0;
        *(this + 5) = v14 + v11 + *(this + 4);
      }
    }
  }

  return result;
}

uint64_t ParseAC3Header(unsigned __int8 *a1, unsigned int a2, AudioStreamBasicDescription *a3, unsigned int *a4, unsigned int *a5, unsigned int *a6, unsigned int *a7, int *a8)
{
  *&v81[11] = *MEMORY[0x1E69E9840];
  v8 = 560226676;
  if (a1 && a2 >= 0xA)
  {
    if (a2 >= 0xC)
    {
      v16 = 12;
    }

    else
    {
      v16 = a2;
    }

    v17 = CheckAndSwapAC3Header(a1, v16, &v80);
    if (v17)
    {
      return v17;
    }

    v78[0] = &v80;
    v78[1] = &v81[v16 - 1];
    v79 = 0;
    if ((&v80 & 3) != 0)
    {
      v18 = 0;
      v19 = &v80;
      v20 = v81;
      v21 = -8;
      do
      {
        v22 = v21;
        v23 = *v19++;
        v18 = v23 | (v18 << 8);
        v21 += 8;
        if ((v20 & 3) == 0)
        {
          break;
        }

        LOBYTE(v20) = v20 + 1;
      }

      while (v19 < &v81[v16 - 1]);
      v78[0] = v19;
      LODWORD(v79) = v18 << (24 - v21);
      HIDWORD(v79) = v22 + 16;
    }

    TBitstreamReader<unsigned int>::SkipBits(v78, 40);
    v24 = v79 >> 27;
    HIDWORD(v79) -= 5;
    if (v79 < 0)
    {
      TBitstreamReader<unsigned int>::FillCacheFrom(v78, v78[0]++);
      v26 = BYTE4(v79);
      v24 |= v79 >> SBYTE4(v79);
      HIDWORD(v79) += 32;
      if (HIDWORD(v79))
      {
        v25 = v79 << -v26;
      }

      else
      {
        v25 = 0;
      }
    }

    else
    {
      v25 = 32 * v79;
    }

    LODWORD(v79) = v25;
    TBitstreamReader<unsigned int>::PutBack(v78, 13);
    if (v24 > 8u)
    {
      if (a2 < 0xC || v24 - 17 < 0xFFFFFFFA)
      {
        return v8;
      }

      TBitstreamReader<unsigned int>::PutBack(v78, 16);
      v27 = v79 >> 30;
      HIDWORD(v79) -= 2;
      if (v79 < 0)
      {
        TBitstreamReader<unsigned int>::FillCacheFrom(v78, v78[0]++);
        v32 = BYTE4(v79);
        v27 |= v79 >> SBYTE4(v79);
        HIDWORD(v79) += 32;
        if (HIDWORD(v79))
        {
          v28 = v79 << -v32;
        }

        else
        {
          v28 = 0;
        }
      }

      else
      {
        v28 = 4 * v79;
      }

      LODWORD(v79) = v28;
      TBitstreamReader<unsigned int>::SkipBits(v78, 3);
      v45 = v79 >> 21;
      v46 = HIDWORD(v79) - 11;
      HIDWORD(v79) -= 11;
      if (v79 < 0)
      {
        TBitstreamReader<unsigned int>::FillCacheFrom(v78, v78[0]);
        v48 = ++v78[0];
        v45 |= v79 >> SBYTE4(v79);
        v46 = HIDWORD(v79) + 32;
        if (HIDWORD(v79) == -32)
        {
          v49 = 0;
          v77 = 2 * v45 + 2;
          v79 = 0xFFFFFFFE00000000;
          goto LABEL_54;
        }

        v47 = v79 << -BYTE4(v79);
      }

      else
      {
        v47 = v79 << 11;
      }

      v77 = 2 * v45 + 2;
      v49 = v47 >> 30;
      v50 = v46 - 2;
      v79 = __PAIR64__(v50, v47);
      if (v50 >= 0)
      {
        v51 = 4 * v47;
        goto LABEL_56;
      }

      v48 = v78[0];
LABEL_54:
      TBitstreamReader<unsigned int>::FillCacheFrom(v78, v48);
      v52 = ++v78[0];
      v49 |= v79 >> SBYTE4(v79);
      v50 = HIDWORD(v79) + 32;
      if (HIDWORD(v79) == -32)
      {
        v53 = 0;
        v79 = 0xFFFFFFFE00000000;
        goto LABEL_60;
      }

      v51 = v79 << -BYTE4(v79);
LABEL_56:
      v53 = v51 >> 30;
      v54 = v50 - 2;
      v79 = __PAIR64__(v54, v51);
      if (v54 >= 0)
      {
        v55 = 4 * v51;
LABEL_63:
        LODWORD(v79) = v55;
        if (v49 != 3)
        {
          v56 = &theSampleRateTable[v49];
          v57 = theNumberOfBlocks[v53] << 8;
          goto LABEL_67;
        }

        if (v53 != 3)
        {
          v56 = (&theSecondarySampleRateTable + 8 * v53);
          v57 = 1536;
LABEL_67:
          v75 = v57;
          v34 = *v56;
          v58 = v55 >> 29;
          HIDWORD(v79) = v54 - 3;
          if (v54 - 3 < 0)
          {
            TBitstreamReader<unsigned int>::FillCacheFrom(v78, v78[0]++);
            v60 = BYTE4(v79);
            v58 |= v79 >> SBYTE4(v79);
            HIDWORD(v79) += 32;
            if (HIDWORD(v79))
            {
              v59 = v79 << -v60;
            }

            else
            {
              v59 = 0;
            }
          }

          else
          {
            v59 = 8 * v55;
          }

          LODWORD(v79) = v59;
          Bit = TBitstreamReader<unsigned int>::GetBit(v78);
          TBitstreamReader<unsigned int>::SkipBits(v78, 5);
          v62 = v79 >> 27;
          HIDWORD(v79) -= 5;
          if (v79 < 0)
          {
            TBitstreamReader<unsigned int>::FillCacheFrom(v78, v78[0]++);
            v64 = BYTE4(v79);
            v62 |= v79 >> SBYTE4(v79);
            HIDWORD(v79) += 32;
            if (HIDWORD(v79))
            {
              v63 = v79 << -v64;
            }

            else
            {
              v63 = 0;
            }
          }

          else
          {
            v63 = 32 * v79;
          }

          LODWORD(v79) = v63;
          if (TBitstreamReader<unsigned int>::GetBit(v78))
          {
            TBitstreamReader<unsigned int>::SkipBits(v78, 8);
          }

          if (!v58)
          {
            TBitstreamReader<unsigned int>::SkipBits(v78, 5);
            if (TBitstreamReader<unsigned int>::GetBit(v78))
            {
              TBitstreamReader<unsigned int>::SkipBits(v78, 8);
            }
          }

          if (v27 == 1 && TBitstreamReader<unsigned int>::GetBit(v78))
          {
            v76 = WORD1(v79);
            HIDWORD(v79) -= 16;
            if (v79 < 0)
            {
              TBitstreamReader<unsigned int>::FillCacheFrom(v78, v78[0]);
              v76 |= (v79 >> SBYTE4(v79));
            }
          }

          else
          {
            v76 = 0;
          }

          if (Bit)
          {
            v65 = theChannelTable[v58] + 1;
          }

          else
          {
            v65 = theChannelTable[v58];
          }

          if (!a4)
          {
            v67 = v75;
            if (!a5)
            {
              goto LABEL_114;
            }

            goto LABEL_113;
          }

          ChannelLayoutTag = GetChannelLayoutTag(v58, Bit != 0);
          v67 = v75;
          goto LABEL_112;
        }

        return v8;
      }

      v52 = v78[0];
LABEL_60:
      TBitstreamReader<unsigned int>::FillCacheFrom(v78, v52);
      ++v78[0];
      v53 |= v79 >> SBYTE4(v79);
      v54 = HIDWORD(v79) + 32;
      if (HIDWORD(v79) == -32)
      {
        v55 = 0;
      }

      else
      {
        v55 = v79 << -BYTE4(v79);
      }

      goto LABEL_63;
    }

    v29 = v79 >> 30;
    v30 = HIDWORD(v79) - 2;
    HIDWORD(v79) -= 2;
    if (v79 < 0)
    {
      TBitstreamReader<unsigned int>::FillCacheFrom(v78, v78[0]++);
      v29 |= v79 >> SBYTE4(v79);
      v30 = HIDWORD(v79) + 32;
      if (HIDWORD(v79) == -32)
      {
        v31 = 0;
      }

      else
      {
        v31 = v79 << -BYTE4(v79);
      }
    }

    else
    {
      v31 = 4 * v79;
    }

    LODWORD(v79) = v31;
    v33 = v29;
    if (v29 == 3)
    {
      return v8;
    }

    v34 = theSampleRateTable[v29];
    v35 = v31 >> 26;
    HIDWORD(v79) = v30 - 6;
    if (v30 - 6 < 0)
    {
      TBitstreamReader<unsigned int>::FillCacheFrom(v78, v78[0]++);
      v37 = BYTE4(v79);
      v35 |= v79 >> SBYTE4(v79);
      HIDWORD(v79) += 32;
      v36 = HIDWORD(v79) ? v79 << -v37 : 0;
    }

    else
    {
      v36 = v31 << 6;
    }

    LODWORD(v79) = v36;
    if (v35 > 0x25)
    {
      return v8;
    }

    v38 = framesizetab[38 * v33 + v35];
    if (a7)
    {
      *a7 = 2 * framesizetab[38 * v33 + 37];
    }

    TBitstreamReader<unsigned int>::SkipBits(v78, 5);
    v39 = v79 >> 29;
    v40 = HIDWORD(v79) - 3;
    HIDWORD(v79) -= 3;
    if (v79 < 0)
    {
      TBitstreamReader<unsigned int>::FillCacheFrom(v78, v78[0]);
      v42 = ++v78[0];
      v39 |= v79 >> SBYTE4(v79);
      v40 = HIDWORD(v79) + 32;
      if (HIDWORD(v79) == -32)
      {
        v43 = 0;
        v79 = 0xFFFFFFFD00000000;
        goto LABEL_95;
      }

      v41 = v79 << -BYTE4(v79);
    }

    else
    {
      v41 = 8 * v79;
    }

    v43 = v41 >> 29;
    LODWORD(v79) = v41;
    HIDWORD(v79) = v40 - 3;
    if (v40 - 3 >= 0)
    {
      v76 = v39;
      v44 = 8 * v41;
LABEL_98:
      LODWORD(v79) = v44;
      v70 = v43;
      if ((v43 & 1) != 0 && v43 != 1)
      {
        TBitstreamReader<unsigned int>::SkipBits(v78, 2);
      }

      if ((v43 & 4) != 0)
      {
        TBitstreamReader<unsigned int>::SkipBits(v78, 2);
      }

      if (v43 == 2)
      {
        TBitstreamReader<unsigned int>::SkipBits(v78, 2);
      }

      v77 = 2 * v38;
      v71 = TBitstreamReader<unsigned int>::GetBit(v78);
      v62 = v79 >> 27;
      HIDWORD(v79) -= 5;
      if (v79 < 0)
      {
        TBitstreamReader<unsigned int>::FillCacheFrom(v78, v78[0]);
        v62 |= v79 >> SBYTE4(v79);
      }

      if (v71)
      {
        v65 = theChannelTable[v70] + 1;
      }

      else
      {
        v65 = theChannelTable[v70];
      }

      if (!a4)
      {
        v67 = 1536;
        if (!a5)
        {
          goto LABEL_114;
        }

        goto LABEL_113;
      }

      ChannelLayoutTag = GetChannelLayoutTag(v70, v71 != 0);
      v67 = 1536;
LABEL_112:
      *a4 = ChannelLayoutTag;
      if (!a5)
      {
LABEL_114:
        if (a3)
        {
          a3->mSampleRate = v34;
          if (v24 <= 8u)
          {
            v72 = 1633889587;
          }

          else
          {
            v72 = 1700998451;
          }

          a3->mFormatID = v72;
          a3->mFormatFlags = 0;
          a3->mBytesPerPacket = 0;
          a3->mFramesPerPacket = v67;
          a3->mBytesPerFrame = 0;
          a3->mChannelsPerFrame = v65;
          *&a3->mBitsPerChannel = 0;
        }

        if (a8)
        {
          if (v62)
          {
            v73 = -v62;
          }

          else
          {
            v73 = -31;
          }

          *a8 = v73;
        }

        v8 = 0;
        if (a6)
        {
          *a6 = v76;
        }

        return v8;
      }

LABEL_113:
      *a5 = v77;
      goto LABEL_114;
    }

    v42 = v78[0];
LABEL_95:
    TBitstreamReader<unsigned int>::FillCacheFrom(v78, v42);
    ++v78[0];
    v68 = BYTE4(v79);
    v43 |= v79 >> SBYTE4(v79);
    v69 = HIDWORD(v79) == -32;
    HIDWORD(v79) += 32;
    v76 = v39;
    if (v69)
    {
      v44 = 0;
    }

    else
    {
      v44 = v79 << -v68;
    }

    goto LABEL_98;
  }

  return v8;
}

uint64_t CheckAndSwapAC3Header(unsigned __int8 *a1, unsigned int a2, unsigned __int8 *a3)
{
  v3 = 560226676;
  if (a2 >= 2)
  {
    v4 = *a1;
    if (v4 == 119)
    {
      if (a1[1] == 11)
      {
        if ((a2 & 0xFFFFFFFE) != 0)
        {
          v6 = 0;
          do
          {
            v7 = &a3[v6];
            *v7 = a1[v6 + 1];
            v7[1] = a1[v6];
            v6 += 2;
          }

          while (v6 < (a2 & 0xFFFFFFFE));
        }

        v3 = 0;
        if (a2)
        {
          a3[a2 - 1] = a1[a2 - 1];
        }
      }
    }

    else if (v4 == 11 && a1[1] == 119)
    {
      v3 = a2;
      do
      {
        v5 = *a1++;
        *a3++ = v5;
        --v3;
      }

      while (v3);
    }
  }

  return v3;
}

uint64_t GetChannelLayoutTag(int a1, int a2)
{
  if (a1 <= 4)
  {
    switch(a1)
    {
      case 1:
        v5 = a2 == 0;
        v6 = 6553601;
        v7 = 9764866;
        goto LABEL_18;
      case 3:
        v2 = 9961476;
        v3 = a2 == 0;
        v4 = 9830403;
LABEL_14:
        if (v3)
        {
          return v4;
        }

        else
        {
          return v2;
        }

      case 4:
        v2 = 10027012;
        v3 = a2 == 0;
        v4 = 8585219;
        goto LABEL_14;
    }

    goto LABEL_12;
  }

  if (a1 == 5)
  {
    v5 = a2 == 0;
    v6 = 9895940;
    v7 = 10092549;
    goto LABEL_18;
  }

  if (a1 != 6)
  {
    if (a1 == 7)
    {
      v5 = a2 == 0;
      v6 = 7798789;
      v7 = 8060934;
      goto LABEL_18;
    }

LABEL_12:
    v5 = a2 == 0;
    v6 = 6619138;
    v7 = 8716291;
    goto LABEL_18;
  }

  v5 = a2 == 0;
  v6 = 8650756;
  v7 = 9043973;
LABEL_18:
  if (v5)
  {
    return v6;
  }

  else
  {
    return v7;
  }
}

uint64_t ParseAC3MP4Cookie(unsigned __int8 *a1, unsigned int a2, AudioStreamBasicDescription *a3, unsigned int *a4, unsigned int *a5, unsigned int *a6)
{
  result = 560226676;
  if (a1)
  {
    if (a2 >= 0xB)
    {
      v8 = a1[8] >> 6;
      if (v8 != 3)
      {
        v10 = theSampleRateTable[v8];
        v11 = a1[9];
        v12 = (v11 >> 3) & 7;
        v13 = theChannelTable[v12];
        v14 = v11 & 4;
        if (a4)
        {
          *a4 = GetChannelLayoutTag(v12, v14 != 0);
        }

        result = 0;
        if (a3)
        {
          a3->mSampleRate = v10;
          *&a3->mFormatID = xmmword_18F9017A0;
          a3->mBytesPerFrame = 0;
          a3->mChannelsPerFrame = v13 + (v14 >> 2);
          *&a3->mBitsPerChannel = 0;
        }
      }
    }
  }

  return result;
}

uint64_t ConvertAC3HeaderToAC3MP4Cookie(unsigned __int8 *a1, unsigned int a2, unsigned __int8 *a3, unsigned int *a4)
{
  v21 = *MEMORY[0x1E69E9840];
  result = 560226676;
  if (a1)
  {
    if (a2 >= 0xA)
    {
      if (a3)
      {
        if (*a4 >= 0xB)
        {
          *a3 = 0x336361640B000000;
          result = CheckAndSwapAC3Header(a1, 0xAu, v16);
          if (!result)
          {
            v8 = v17;
            v9 = v18;
            a3[8] = v17 & 0xC0 | (v18 >> 2);
            v10 = v19;
            v11 = (v19 >> 2) & 0x38 | (v9 << 6);
            v12 = v19 >> 5;
            if (((v12 != 1) & (v19 >> 5)) != 0)
            {
              v13 = 5;
            }

            else
            {
              v13 = 3;
            }

            if ((v19 & 0x80u) != 0)
            {
              v13 += 2;
            }

            if (v12 == 2)
            {
              v14 = v13 + 2;
            }

            else
            {
              v14 = v13;
            }

            if (v14 <= 7)
            {
              v15 = 7;
            }

            else
            {
              v10 = v20;
              v15 = 15;
            }

            a3[9] = (4 * ((v10 >> (v15 - v14)) & 1)) | (v8 >> 4) & 3 | v11;
            a3[10] = (16 * v8) & 0x60;
            *a4 = 11;
          }
        }
      }
    }
  }

  return result;
}

_BYTE *ConvertAC3MP4CookieToAC3Header(_BYTE *result, uint64_t a2, unsigned __int8 *a3, unsigned int *a4)
{
  if (result && a2 && *a3 >= 0xAu)
  {
    *a2 = 30475;
    *(a2 + 2) = 0;
    v4 = result[8] & 0xC0;
    *(a2 + 4) = v4;
    v5 = v4 & 0xCF | (16 * (result[9] & 3));
    *(a2 + 4) = v5;
    *(a2 + 4) = (result[10] >> 4) & 0xE | v5;
    v6 = result[8];
    *(a2 + 5) = 4 * v6;
    *(a2 + 5) = (result[9] >> 6) & 3 | (4 * v6);
    v7 = (4 * result[9]) & 0xE0;
    *(a2 + 6) = v7;
    v8 = result[9];
    v9 = (v8 >> 2) & 1;
    v10 = (v8 >> 3) & 7;
    if (((v10 != 1) & (v8 >> 3)) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = 0;
    }

    v12 = v11 + ((v8 >> 4) & 2);
    if (v10 == 2)
    {
      LOBYTE(v12) = v12 + 2;
    }

    *(a2 + 6) = v7 | (v9 << (4 - v12));
    *a3 = 10;
  }

  return result;
}

uint64_t GetAC3PacketIndex(unsigned __int8 *a1, int *a2, unsigned int *a3, unsigned int *a4)
{
  v14 = *MEMORY[0x1E69E9840];
  result = 560226676;
  if (a1)
  {
    result = CheckAndSwapAC3Header(a1, 0xAu, v11);
    if (!result)
    {
      if (v13 - 88 > 0x2F)
      {
        result = 560226676;
        if (v13 > 0x47u)
        {
          return result;
        }

        v10 = 0;
        *a3 = 1;
      }

      else
      {
        v8 = v12;
        v9 = v12 >> 6;
        if (v9 > 1)
        {
          result = 560226676;
          if (v9 != 2)
          {
            return result;
          }
        }

        else
        {
          v9 = v9 == 0;
        }

        *a3 = v9;
        v10 = (v8 >> 3) & 7;
      }

      result = 0;
      *a2 = v10;
    }
  }

  return result;
}

uint64_t CombineEAC3PacketChannelsLayouts(uint64_t result, int a2, int a3, unsigned int *a4)
{
  if (!a3)
  {
    v4 = result;
    if (result == 8060934)
    {
      v4 = 10289159;
      if (a2 > 10027011)
      {
        if (a2 == 10027012)
        {
          goto LABEL_16;
        }

        v5 = 10092549;
      }

      else
      {
        if (a2 == 8585219)
        {
          goto LABEL_16;
        }

        v5 = 9895940;
      }

      if (a2 != v5)
      {
        v4 = 8060934;
      }
    }

LABEL_16:
    *a4 = v4;
    return result;
  }

  v4 = 10485768;
  *a4 = result;
  if ((a3 & 0x400) != 0)
  {
    v4 = 10551304;
    goto LABEL_16;
  }

  if ((a3 & 0x200) != 0)
  {
    goto LABEL_16;
  }

  if ((a3 & 0x100) == 0)
  {
    if ((a3 & 0x80) != 0)
    {
      v4 = 10944520;
      if ((a3 & 8) == 0)
      {
        v4 = 10354695;
      }
    }

    else if ((a3 & 0x40) != 0)
    {
      v4 = 10616840;
    }

    else if ((a3 & 0x20) != 0)
    {
      v4 = 10682376;
    }

    else if ((a3 & 0x10) != 0)
    {
      v4 = 10747912;
    }

    else
    {
      if ((a3 & 8) == 0)
      {
        return result;
      }

      v4 = 10420231;
    }

    goto LABEL_16;
  }

  *a4 = 10289159;
  if ((a3 & 0x80) != 0)
  {
    v4 = 10813448;
    goto LABEL_16;
  }

  if ((a3 & 8) != 0)
  {
    v4 = 10878984;
    goto LABEL_16;
  }

  if (result == 7798789)
  {
    v4 = 10158086;
    goto LABEL_16;
  }

  return result;
}

uint64_t ParseEAC3MP4Cookie(unsigned int *a1, unsigned int a2, BOOL *a3, AudioStreamBasicDescription *a4, unsigned int *a5, AudioStreamBasicDescription *a6, unsigned int *a7, unsigned int *a8, unsigned int *a9, unsigned int a10, BOOL *a11, unsigned int *a12)
{
  v16 = 4294967246;
  if (!a1 || a2 < 0xD)
  {
    return v16;
  }

  v69 = v15;
  v70 = v14;
  v71 = v12;
  v72 = v13;
  v21 = a1 + a2;
  v66 = a1;
  v67 = v21;
  v68 = 0;
  if ((a1 & 3) != 0)
  {
    v22 = 0;
    v23 = a1 + 1;
    v24 = -8;
    do
    {
      v25 = v24;
      v26 = *a1;
      a1 = (a1 + 1);
      v22 = v26 | (v22 << 8);
      v24 += 8;
      if ((v23 & 3) == 0)
      {
        break;
      }

      ++v23;
    }

    while (a1 < v21);
    v66 = a1;
    LODWORD(v68) = v22 << (24 - v24);
    HIDWORD(v68) = v25 + 16;
  }

  TBitstreamReader<unsigned int>::SkipBits(&v66, 32);
  TBitstreamReader<unsigned int>::SkipBits(&v66, 32);
  v27 = HIDWORD(v68) - 13;
  HIDWORD(v68) -= 13;
  if (v68 < 0)
  {
    TBitstreamReader<unsigned int>::FillCacheFrom(&v66, v66);
    v29 = ++v66;
    v27 = HIDWORD(v68) + 32;
    if (HIDWORD(v68) == -32)
    {
      v30 = 0;
      v68 = 0xFFFFFFFD00000000;
      goto LABEL_16;
    }

    v28 = v68 << -BYTE4(v68);
  }

  else
  {
    v28 = v68 << 13;
  }

  v30 = v28 >> 29;
  v31 = v27 - 3;
  v68 = __PAIR64__(v31, v28);
  if (v31 >= 0)
  {
    v32 = 8 * v28;
    goto LABEL_19;
  }

  v29 = v66;
LABEL_16:
  TBitstreamReader<unsigned int>::FillCacheFrom(&v66, v29);
  ++v66;
  v30 |= v68 >> SBYTE4(v68);
  v31 = HIDWORD(v68) + 32;
  if (HIDWORD(v68) == -32)
  {
    v32 = 0;
  }

  else
  {
    v32 = v68 << -BYTE4(v68);
  }

LABEL_19:
  LODWORD(v68) = v32;
  if (v30 == 0xFF)
  {
    return 4294967246;
  }

  v33 = v32 >> 30;
  v34 = v31 - 2;
  HIDWORD(v68) = v34;
  if (v34 < 0)
  {
    TBitstreamReader<unsigned int>::FillCacheFrom(&v66, v66);
    ++v66;
    v33 |= v68 >> SBYTE4(v68);
    v34 = HIDWORD(v68) + 32;
    if (HIDWORD(v68) == -32)
    {
      v35 = 0;
    }

    else
    {
      v35 = v68 << -BYTE4(v68);
    }
  }

  else
  {
    v35 = 4 * v32;
  }

  LODWORD(v68) = v35;
  v36 = 0.0;
  if (v33 != 3)
  {
    v36 = theSampleRateTable[v33];
  }

  v37 = v35 >> 27;
  HIDWORD(v68) = v34 - 5;
  if (v34 - 5 < 0)
  {
    TBitstreamReader<unsigned int>::FillCacheFrom(&v66, v66);
    ++v66;
    v39 = BYTE4(v68);
    v37 |= v68 >> SBYTE4(v68);
    HIDWORD(v68) += 32;
    if (HIDWORD(v68))
    {
      v38 = v68 << -v39;
    }

    else
    {
      v38 = 0;
    }
  }

  else
  {
    v38 = 32 * v35;
  }

  LODWORD(v68) = v38;
  v40 = v37 - 11;
  if (v37 >= 9u && v40 > 5)
  {
    return 560226676;
  }

  TBitstreamReader<unsigned int>::SkipBits(&v66, 1);
  TBitstreamReader<unsigned int>::GetBit(&v66);
  v41 = HIDWORD(v68) - 3;
  HIDWORD(v68) -= 3;
  if (v68 < 0)
  {
    TBitstreamReader<unsigned int>::FillCacheFrom(&v66, v66);
    v43 = ++v66;
    v41 = HIDWORD(v68) + 32;
    if (HIDWORD(v68) == -32)
    {
      v44 = 0;
      v68 = 0xFFFFFFFD00000000;
      goto LABEL_43;
    }

    v42 = v68 << -BYTE4(v68);
  }

  else
  {
    v42 = 8 * v68;
  }

  v44 = v42 >> 29;
  LODWORD(v68) = v42;
  HIDWORD(v68) = v41 - 3;
  if (v41 - 3 >= 0)
  {
    v45 = 8 * v42;
    goto LABEL_46;
  }

  v43 = v66;
LABEL_43:
  TBitstreamReader<unsigned int>::FillCacheFrom(&v66, v43);
  ++v66;
  v46 = BYTE4(v68);
  v44 |= v68 >> SBYTE4(v68);
  HIDWORD(v68) += 32;
  if (HIDWORD(v68))
  {
    v45 = v68 << -v46;
  }

  else
  {
    v45 = 0;
  }

LABEL_46:
  LODWORD(v68) = v45;
  v47 = TBitstreamReader<unsigned int>::GetBit(&v66) != 0;
  ChannelLayoutTag = GetChannelLayoutTag(v44, v47);
  v65 = ChannelLayoutTag;
  TBitstreamReader<unsigned int>::SkipBits(&v66, 3);
  v50 = v68 >> 28;
  v51 = HIDWORD(v68) - 4;
  HIDWORD(v68) -= 4;
  if (v68 < 0)
  {
    TBitstreamReader<unsigned int>::FillCacheFrom(&v66, v66);
    ++v66;
    v53 = BYTE4(v68);
    v50 |= v68 >> SBYTE4(v68);
    v51 = HIDWORD(v68) + 32;
    HIDWORD(v68) += 32;
    if (HIDWORD(v68))
    {
      v52 = v68 << -v53;
    }

    else
    {
      v52 = 0;
    }
  }

  else
  {
    v52 = 16 * v68;
  }

  LODWORD(v68) = v52;
  if (v50)
  {
    v54 = v52 >> 23;
    v55 = v51 - 9;
    HIDWORD(v68) = v51 - 9;
    if (v51 - 9 < 0)
    {
      TBitstreamReader<unsigned int>::FillCacheFrom(&v66, v66);
      ++v66;
      v57 = BYTE4(v68);
      v54 |= v68 >> SBYTE4(v68);
      v55 = HIDWORD(v68) + 32;
      HIDWORD(v68) += 32;
      if (HIDWORD(v68))
      {
        v56 = v68 << -v57;
      }

      else
      {
        v56 = 0;
      }
    }

    else
    {
      v56 = v52 << 9;
    }

    LODWORD(v68) = v56;
    v58 = (v54 >> 7) & 2 | (__rbit32(v54) >> 21);
    v49.i32[0] = v58;
    v59 = vcnt_s8(v49);
    v59.i16[0] = vaddlv_u8(v59);
    CombineEAC3PacketChannelsLayouts(ChannelLayoutTag, v59.i32[0], v58, &v65);
  }

  else
  {
    TBitstreamReader<unsigned int>::SkipBits(&v66, 1);
    v55 = HIDWORD(v68);
  }

  if (v55 + 8 * (v67 - v66) >= 8)
  {
    TBitstreamReader<unsigned int>::SkipBits(&v66, 7);
    if (TBitstreamReader<unsigned int>::GetBit(&v66))
    {
      v60 = HIDWORD(v68);
      if (HIDWORD(v68) + 8 * (v67 - v66) >= 8)
      {
        v61 = BYTE3(v68);
        HIDWORD(v68) -= 8;
        if (v60 - 8 < 0)
        {
          TBitstreamReader<unsigned int>::FillCacheFrom(&v66, v66);
          v61 |= (v68 >> SBYTE4(v68));
        }

        if ((v61 - 1) > 0xF)
        {
          return 4294967246;
        }
      }
    }
  }

  if (a4)
  {
    LODWORD(a4->mSampleRate) = ChannelLayoutTag;
  }

  v62 = v65;
  if (a6)
  {
    LODWORD(a6->mSampleRate) = v65;
  }

  if (v40 >= 6)
  {
    v63 = 1633889587;
  }

  else
  {
    v63 = 1700998451;
  }

  if (a3)
  {
    *a3 = v36;
    *(a3 + 2) = v63;
    *(a3 + 12) = 0;
    *(a3 + 20) = 1536;
    *(a3 + 7) = ChannelLayoutTag;
    *(a3 + 4) = 0;
  }

  v16 = 0;
  if (a5)
  {
    *a5 = v36;
    a5[2] = v63;
    *(a5 + 3) = 0;
    *(a5 + 5) = 1536;
    a5[7] = v62;
    *(a5 + 4) = 0;
  }

  return v16;
}

uint64_t ConvertEAC3HeaderToEAC3MP4Cookie(unsigned __int8 *a1, unsigned int a2, unsigned __int8 *a3, unsigned int *a4)
{
  *&v168[3] = *MEMORY[0x1E69E9840];
  v4 = 560226676;
  if (!a1)
  {
    return v4;
  }

  v5 = a2;
  if (a2 < 0xC)
  {
    return v4;
  }

  v163 = 0;
  v164 = 0;
  v165 = 0;
  *v162 = 0;
  v161 = 0;
  memset(v167, 0, sizeof(v167));
  v159 = 0;
  __src = 0x336365640D000000;
  v156[0] = v167;
  v156[1] = v167;
  v156[2] = v168;
  v157 = 0;
  v158 = 16;
  if (ParseAC3Header(a1, a2, &v160, &v159, &v162[1], &v161, v162, 0))
  {
    return v4;
  }

  if ((v160.mFormatID & 0xFBFFFFFF) != 0x61632D33)
  {
    *a4 = 0;
    return v4;
  }

  v153 = 0;
  v154 = 0;
  v155 = 0;
  if (v5 >= 0x8A)
  {
    v9 = 138;
  }

  else
  {
    v9 = v5 & 0xFFFFFFFE;
  }

  LOBYTE(v142) = 0;
  std::vector<unsigned char>::__append(&v153, v9, &v142);
  v10 = v153;
  v11 = v154 - v153;
  v12 = CheckAndSwapAC3Header(a1, v154 - v153, v153);
  if (v12)
  {
    v4 = v12;
    if (!v10)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v151[0] = v10;
  v151[1] = (v10 + v11);
  v152 = 0;
  if ((v10 & 3) != 0 && v11)
  {
    v14 = 0;
    v15 = v10 + 1;
    v16 = -8;
    v17 = (v10 + 1);
    do
    {
      LODWORD(v152) = v14 << 8;
      HIDWORD(v152) = v16 + 16;
      v151[0] = v17;
      v18 = *(v17 - 1) | (v14 << 8);
      LODWORD(v152) = v18;
      v16 += 8;
      if ((v15 & 3) == 0)
      {
        break;
      }

      ++v15;
      v14 = v18;
      v19 = v17 >= (v10 + v11);
      v17 = (v17 + 1);
    }

    while (!v19);
    LODWORD(v152) = v18 << (24 - v16);
  }

  AT::TBitstreamWriter<unsigned short>::PutBits(v156, (v160.mSampleRate * (v162[1] + 1) / (v160.mFramesPerPacket >> 3) / 1000.0), 0xDu);
  AT::TBitstreamWriter<unsigned short>::PutBits(v156, 0, 3u);
  if (v160.mFormatID != 1633889587)
  {
    v126 = a4;
    __dst = a3;
    TBitstreamReader<unsigned int>::SkipBits(v151, 16);
    v23 = v152 >> 30;
    HIDWORD(v152) -= 2;
    if (v152 < 0)
    {
      TBitstreamReader<unsigned int>::FillCacheFrom(v151, v151[0]++);
      v26 = BYTE4(v152);
      v23 |= v152 >> SBYTE4(v152);
      HIDWORD(v152) += 32;
      if (HIDWORD(v152))
      {
        v24 = v152 << -v26;
      }

      else
      {
        v24 = 0;
      }
    }

    else
    {
      v24 = 4 * v152;
    }

    LODWORD(v152) = v24;
    TBitstreamReader<unsigned int>::SkipBits(v151, 14);
    v34 = v152 >> 30;
    v35 = HIDWORD(v152) - 2;
    HIDWORD(v152) -= 2;
    if (v152 < 0)
    {
      TBitstreamReader<unsigned int>::FillCacheFrom(v151, v151[0]++);
      v37 = BYTE4(v152);
      v34 |= v152 >> SBYTE4(v152);
      v35 = HIDWORD(v152) + 32;
      HIDWORD(v152) += 32;
      if (HIDWORD(v152))
      {
        v36 = v152 << -v37;
      }

      else
      {
        v36 = 0;
      }
    }

    else
    {
      v36 = 4 * v152;
    }

    LODWORD(v152) = v36;
    v134 = v34;
    v38 = v34;
    if (v34 == 3)
    {
      TBitstreamReader<unsigned int>::SkipBits(v151, 2);
      v39 = 3;
      v41 = v152;
      v40 = HIDWORD(v152);
    }

    else
    {
      v42 = v36 >> 30;
      v40 = v35 - 2;
      HIDWORD(v152) = v40;
      if (v40 < 0)
      {
        TBitstreamReader<unsigned int>::FillCacheFrom(v151, v151[0]++);
        v42 |= v152 >> SBYTE4(v152);
        v40 = HIDWORD(v152) + 32;
        if (HIDWORD(v152) == -32)
        {
          v41 = 0;
        }

        else
        {
          v41 = v152 << -BYTE4(v152);
        }
      }

      else
      {
        v41 = 4 * v36;
      }

      LODWORD(v152) = v41;
      v39 = v42;
    }

    v47 = v41 >> 29;
    HIDWORD(v152) = v40 - 3;
    if (v40 - 3 < 0)
    {
      TBitstreamReader<unsigned int>::FillCacheFrom(v151, v151[0]++);
      v49 = BYTE4(v152);
      v47 |= v152 >> SBYTE4(v152);
      HIDWORD(v152) += 32;
      if (HIDWORD(v152))
      {
        v48 = v152 << -v49;
      }

      else
      {
        v48 = 0;
      }
    }

    else
    {
      v48 = 8 * v41;
    }

    LODWORD(v152) = v48;
    Bit = TBitstreamReader<unsigned int>::GetBit(v151);
    v50 = v152 >> 27;
    HIDWORD(v152) -= 5;
    if (v152 < 0)
    {
      TBitstreamReader<unsigned int>::FillCacheFrom(v151, v151[0]++);
      v52 = BYTE4(v152);
      v50 |= v152 >> SBYTE4(v152);
      HIDWORD(v152) += 32;
      if (HIDWORD(v152))
      {
        v51 = v152 << -v52;
      }

      else
      {
        v51 = 0;
      }
    }

    else
    {
      v51 = 32 * v152;
    }

    LODWORD(v152) = v51;
    TBitstreamReader<unsigned int>::SkipBits(v151, 5);
    if (TBitstreamReader<unsigned int>::GetBit(v151) == 1)
    {
      TBitstreamReader<unsigned int>::SkipBits(v151, 8);
    }

    if (!v47)
    {
      TBitstreamReader<unsigned int>::SkipBits(v151, 5);
      if (TBitstreamReader<unsigned int>::GetBit(v151) == 1)
      {
        TBitstreamReader<unsigned int>::SkipBits(v151, 8);
      }
    }

    LOBYTE(v140) = v47;
    LOBYTE(v136) = v50;
    if (v23 == 1 && TBitstreamReader<unsigned int>::GetBit(v151) == 1)
    {
      TBitstreamReader<unsigned int>::SkipBits(v151, 16);
    }

    if (TBitstreamReader<unsigned int>::GetBit(v151) != 1)
    {
      goto LABEL_163;
    }

    if (v47 >= 3u)
    {
      TBitstreamReader<unsigned int>::SkipBits(v151, 2);
      if (v47)
      {
        TBitstreamReader<unsigned int>::SkipBits(v151, 6);
      }
    }

    if ((v47 & 4) != 0)
    {
      TBitstreamReader<unsigned int>::SkipBits(v151, 6);
    }

    if (Bit && TBitstreamReader<unsigned int>::GetBit(v151) == 1)
    {
      TBitstreamReader<unsigned int>::SkipBits(v151, 5);
    }

    if (v23)
    {
LABEL_163:
      if (TBitstreamReader<unsigned int>::GetBit(v151) != 1)
      {
        goto LABEL_176;
      }

      TBitstreamReader<unsigned int>::SkipBits(v151, 5);
      if (v47 == 2)
      {
        v63 = 4;
      }

      else
      {
        if (v47 < 7u)
        {
LABEL_169:
          if (TBitstreamReader<unsigned int>::GetBit(v151) == 1)
          {
            TBitstreamReader<unsigned int>::SkipBits(v151, 8);
          }

          if (!v47 && TBitstreamReader<unsigned int>::GetBit(v151) == 1)
          {
            TBitstreamReader<unsigned int>::SkipBits(v151, 8);
          }

          if (v38 <= 2)
          {
            TBitstreamReader<unsigned int>::SkipBits(v151, 1);
          }

LABEL_176:
          if (v23 || v39 == 3)
          {
            LOBYTE(v20) = v134;
            if (v23 != 2)
            {
              goto LABEL_185;
            }

            if (v39 == 3)
            {
              v64 = 1;
            }

            else
            {
              if (TBitstreamReader<unsigned int>::GetBit(v151) != 1)
              {
                goto LABEL_185;
              }

              v64 = 6;
            }
          }

          else
          {
            v64 = 1;
            LOBYTE(v20) = v134;
          }

          TBitstreamReader<unsigned int>::SkipBits(v151, v64);
LABEL_185:
          if (TBitstreamReader<unsigned int>::GetBit(v151) != 1 || ((v65 = v152 >> 26, HIDWORD(v152) -= 6, v152 < 0) ? ((TBitstreamReader<unsigned int>::FillCacheFrom(v151, v151[0]), ++v151[0], v67 = BYTE4(v152), v65 |= v152 >> SBYTE4(v152), (HIDWORD(v152) += 32) == 0) ? (v66 = 0) : (v66 = v152 << -v67)) : (v66 = v152 << 6), LODWORD(v152) = v66, v68 = v65 + 1, std::vector<unsigned char>::reserve(&v163, (v65 + 1)), v65 == 0xFF))
          {
            LOBYTE(v31) = 0;
          }

          else
          {
            v69 = 0;
            v70 = v164;
            v20 = v165;
            v71 = v163;
            do
            {
              v72 = BYTE3(v152);
              HIDWORD(v152) -= 8;
              if (v152 < 0)
              {
                TBitstreamReader<unsigned int>::FillCacheFrom(v151, v151[0]++);
                v74 = BYTE4(v152);
                v72 |= v152 >> SBYTE4(v152);
                HIDWORD(v152) += 32;
                if (HIDWORD(v152))
                {
                  v73 = v152 << -v74;
                }

                else
                {
                  v73 = 0;
                }
              }

              else
              {
                v73 = v152 << 8;
              }

              LODWORD(v152) = v73;
              if (v70 >= v20)
              {
                v75 = (v70 - v71);
                v76 = v70 - v71 + 1;
                if (v76 < 0)
                {
                  v163 = v71;
                  std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
                }

                if (2 * (v20 - v71) > v76)
                {
                  v76 = 2 * (v20 - v71);
                }

                if (v20 - v71 >= 0x3FFFFFFFFFFFFFFFLL)
                {
                  v20 = 0x7FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v20 = v76;
                }

                if (v20)
                {
                  operator new();
                }

                *v75 = v72;
                v70 = v75 + 1;
                memcpy(0, v71, v75);
                if (v71)
                {
                  operator delete(v71);
                }

                v71 = 0;
              }

              else
              {
                *v70++ = v72;
              }

              ++v69;
            }

            while (v69 < v68);
            LOBYTE(v31) = 0;
            v164 = v70;
            v165 = v20;
            v163 = v71;
            LOBYTE(v20) = v134;
          }

LABEL_214:
          AT::TBitstreamWriter<unsigned short>::PutBits(v156, v20, 2u);
          AT::TBitstreamWriter<unsigned short>::PutBits(v156, v136, 5u);
          AT::TBitstreamWriter<unsigned short>::PutBits(v156, 0, 2u);
          AT::TBitstreamWriter<unsigned short>::PutBits(v156, v31, 3u);
          AT::TBitstreamWriter<unsigned short>::PutBits(v156, v140, 3u);
          AT::TBitstreamWriter<unsigned short>::PutBits(v156, Bit, 1u);
          AT::TBitstreamWriter<unsigned short>::PutBits(v156, 0, 3u);
          AT::TBitstreamWriter<unsigned short>::PutBits(v156, 0, 5u);
          TBitstreamWriter<unsigned short>::Flush(v156);
          v77 = v162[1];
          v78 = 13;
          if (v5 > v162[1] && v5 - v162[1] >= 0xC)
          {
            v79 = 0;
            v141 = 0;
            LODWORD(v80) = 0;
            v81 = 0;
            v82 = v153;
            v135 = v154 - v153;
            mSampleRate = v160.mSampleRate;
            v132 = v153 & 3;
            v133 = v153 + 12;
            mFramesPerPacket = v160.mFramesPerPacket;
            v84 = (v153 ^ 3) & 3;
            v129 = &v153[v84 + 1];
            v128 = (8 * ((v153 ^ 3) & 3)) ^ 0x18;
            v85 = 8 * v84 + 8;
            v131 = -1;
            v139 = -1;
            v130 = -1;
            do
            {
              v5 -= v77;
              v80 = v77 + v80;
              if (ParseAC3Header(&a1[v80], v5, &v160, &v159, &v162[1], &v161, v162, 0))
              {
                v86 = 0;
              }

              else
              {
                v86 = mSampleRate == v160.mSampleRate;
              }

              if (!v86 || mFramesPerPacket != v160.mFramesPerPacket || v160.mFormatID != 1700998451)
              {
                goto LABEL_288;
              }

              bzero(v82, v135);
              v87 = CheckAndSwapAC3Header(&a1[v80], 0xCu, v82);
              if (v87)
              {
                v4 = v87;
                goto LABEL_305;
              }

              v148 = v82;
              v149 = v133;
              v150 = 0;
              if (v132)
              {
                v88 = 0;
                v89 = 0;
                v90 = v82;
                do
                {
                  v91 = *v90++;
                  v89 = v91 | (v89 << 8);
                  v88 += 8;
                }

                while (v85 != v88);
                v148 = v129;
                LODWORD(v150) = v89 << v128;
                HIDWORD(v150) = v88;
              }

              TBitstreamReader<unsigned int>::SkipBits(&v148, 16);
              v92 = v150 >> 30;
              v93 = HIDWORD(v150) - 2;
              HIDWORD(v150) -= 2;
              if (v150 < 0)
              {
                TBitstreamReader<unsigned int>::FillCacheFrom(&v148, v148);
                v95 = ++v148;
                v92 |= v150 >> SBYTE4(v150);
                v93 = HIDWORD(v150) + 32;
                if (HIDWORD(v150) == -32)
                {
                  v96 = 0;
                  v150 = 0xFFFFFFFD00000000;
                  goto LABEL_237;
                }

                v94 = v150 << -BYTE4(v150);
              }

              else
              {
                v94 = 4 * v150;
              }

              v96 = v94 >> 29;
              LODWORD(v150) = v94;
              HIDWORD(v150) = v93 - 3;
              if (v93 - 3 >= 0)
              {
                v97 = 8 * v94;
                goto LABEL_240;
              }

              v95 = v148;
LABEL_237:
              TBitstreamReader<unsigned int>::FillCacheFrom(&v148, v95);
              ++v148;
              v98 = BYTE4(v150);
              v96 |= v150 >> SBYTE4(v150);
              HIDWORD(v150) += 32;
              if (HIDWORD(v150))
              {
                v97 = v150 << -v98;
              }

              else
              {
                v97 = 0;
              }

LABEL_240:
              LODWORD(v150) = v97;
              if (v92 == 1)
              {
                if ((v141 & 1) == 0)
                {
                  ++BYTE3(__src);
                  v78 = BYTE3(__src);
                }

                if (++v79 > 8u || (v99 = v96, v96 <= v139))
                {
LABEL_287:
                  *v126 = 0;
LABEL_288:
                  v4 = 560226676;
                  goto LABEL_305;
                }

                v100 = v161;
                v101 = vandq_s8(vshlq_u32(vdupq_n_s32(v161), xmmword_18F9017B0), xmmword_18F9017C0);
                *v101.i8 = vorr_s8(*v101.i8, *&vextq_s8(v101, v101, 8uLL));
                *(&__src + v78 - 2) = *(&__src + v78 - 2) & 0xE1 | (2 * v79) | ((v161 & 2) != 0);
                *(&__src + v78 - 1) |= v100 & 0x20 | (((v100 & 0x10) != 0) << 6) | (16 * v100) & 0x80 | v101.i8[0] | HIBYTE(v100) & 2 | v101.i8[4];
                v141 = 1;
              }

              else
              {
                if ((v92 | 2) != 2)
                {
                  goto LABEL_276;
                }

                if (!v92 && v96 <= v130)
                {
                  goto LABEL_287;
                }

                if (v96 <= v131 && v92 == 2)
                {
                  goto LABEL_287;
                }

                if (++v81 > 7)
                {
                  goto LABEL_287;
                }

                if (v92)
                {
                  v103 = v130;
                }

                else
                {
                  v103 = v96;
                }

                v104 = v131;
                if (v92)
                {
                  v104 = v96;
                }

                v130 = v103;
                v131 = v104;
                v142 = &v167[v78 - 8];
                v143 = v142;
                v144 = &v142[45 - v78];
                v145 = 0;
                v146 = 16;
                v147 = v142 & 1;
                TBitstreamReader<unsigned int>::SkipBits(&v148, 11);
                v105 = v152 >> 30;
                HIDWORD(v152) -= 2;
                if (v152 < 0)
                {
                  TBitstreamReader<unsigned int>::FillCacheFrom(v151, v151[0]++);
                  v107 = BYTE4(v152);
                  v105 |= v152 >> SBYTE4(v152);
                  HIDWORD(v152) += 32;
                  if (HIDWORD(v152))
                  {
                    v106 = v152 << -v107;
                  }

                  else
                  {
                    v106 = 0;
                  }
                }

                else
                {
                  v106 = 4 * v152;
                }

                LODWORD(v152) = v106;
                TBitstreamReader<unsigned int>::SkipBits(v151, 2);
                v108 = v152 >> 29;
                HIDWORD(v152) -= 3;
                if (v152 < 0)
                {
                  TBitstreamReader<unsigned int>::FillCacheFrom(v151, v151[0]++);
                  v110 = BYTE4(v152);
                  v108 |= v152 >> SBYTE4(v152);
                  HIDWORD(v152) += 32;
                  if (HIDWORD(v152))
                  {
                    v109 = v152 << -v110;
                  }

                  else
                  {
                    v109 = 0;
                  }
                }

                else
                {
                  v109 = 8 * v152;
                }

                LODWORD(v152) = v109;
                v111 = TBitstreamReader<unsigned int>::GetBit(v151);
                v112 = v152 >> 27;
                HIDWORD(v152) -= 5;
                if (v152 < 0)
                {
                  TBitstreamReader<unsigned int>::FillCacheFrom(v151, v151[0]++);
                  v114 = BYTE4(v152);
                  v112 |= v152 >> SBYTE4(v152);
                  HIDWORD(v152) += 32;
                  if (HIDWORD(v152))
                  {
                    v113 = v152 << -v114;
                  }

                  else
                  {
                    v113 = 0;
                  }
                }

                else
                {
                  v113 = 32 * v152;
                }

                LODWORD(v152) = v113;
                AT::TBitstreamWriter<unsigned short>::PutBits(&v142, v105, 2u);
                AT::TBitstreamWriter<unsigned short>::PutBits(&v142, v112, 5u);
                AT::TBitstreamWriter<unsigned short>::PutBits(&v142, 0, 2u);
                AT::TBitstreamWriter<unsigned short>::PutBits(&v142, 0, 3u);
                AT::TBitstreamWriter<unsigned short>::PutBits(&v142, v108, 3u);
                AT::TBitstreamWriter<unsigned short>::PutBits(&v142, v111, 1u);
                AT::TBitstreamWriter<unsigned short>::PutBits(&v142, 0, 3u);
                AT::TBitstreamWriter<unsigned short>::PutBits(&v142, 0, 5u);
                TBitstreamWriter<unsigned short>::Flush(&v142);
                v141 = 0;
                v79 = 0;
                BYTE3(__src) += 3;
                v78 = BYTE3(__src);
                ++v167[1];
                v99 = -1;
              }

              v139 = v99;
LABEL_276:
              v77 = v162[1];
            }

            while (v5 > v162[1] && v5 - v162[1] > 0xB);
          }

          v115 = v163;
          if (v164 - v163 != 2)
          {
            goto LABEL_300;
          }

          v148 = v163;
          v149 = v163 + 2;
          v150 = 0;
          if ((v163 & 3) != 0)
          {
            v116 = 0;
            v117 = 0;
            if ((v163 & 3) == 3)
            {
              v118 = 1;
            }

            else
            {
              v118 = 2;
            }

            v119 = 8 * v118 - 8;
            do
            {
              v120 = v117 + 1;
              v116 = *(v163 + v117) | (v116 << 8);
              v117 = v120;
            }

            while (v118 != v120);
            v115 = (v163 + v120);
            v148 = (v163 + v120);
            v121 = v116 << (32 - 8 * v118);
            v122 = v121 >> 25;
            LODWORD(v150) = v121;
            HIDWORD(v150) = v119 | 1;
            if ((v119 & 0x80000000) == 0)
            {
              v123 = v121 << 7;
              goto LABEL_294;
            }
          }

          else
          {
            v122 = 0;
            HIDWORD(v150) = -7;
          }

          TBitstreamReader<unsigned int>::FillCacheFrom(&v148, v115);
          ++v148;
          v124 = BYTE4(v150);
          v122 |= v150 >> SBYTE4(v150);
          HIDWORD(v150) += 32;
          if (HIDWORD(v150))
          {
            v123 = v150 << -v124;
          }

          else
          {
            v123 = 0;
          }

LABEL_294:
          LODWORD(v150) = v123;
          if (!v122 && TBitstreamReader<unsigned int>::GetBit(&v148) == 1)
          {
            v125 = BYTE3(v150);
            HIDWORD(v150) -= 8;
            if (v150 < 0)
            {
              TBitstreamReader<unsigned int>::FillCacheFrom(&v148, v148);
              v125 |= v150 >> SBYTE4(v150);
            }

            if (v125 - 1 <= 0xF)
            {
              v142 = &v167[v78 - 8];
              v143 = v142;
              v144 = &v142[45 - v78];
              v145 = 0;
              v146 = 16;
              v147 = v142 & 1;
              BYTE3(__src) += 3;
              v78 = BYTE3(__src);
              AT::TBitstreamWriter<unsigned short>::PutBits(&v142, 0, 7u);
              AT::TBitstreamWriter<unsigned short>::PutBits(&v142, 1, 1u);
              AT::TBitstreamWriter<unsigned short>::PutBits(&v142, v125, 8u);
              AT::TBitstreamWriter<unsigned short>::PutBits(&v142, 0, 8u);
            }
          }

LABEL_300:
          if (__dst)
          {
            if (*v126 >= v78)
            {
              *v126 = v78;
              memcpy(__dst, &__src, v78);
              v4 = 0;
            }

            else
            {
              v4 = 560100710;
            }
          }

          else
          {
            v4 = 0;
            *v126 = v78;
          }

          goto LABEL_305;
        }

        v63 = 2;
      }

      TBitstreamReader<unsigned int>::SkipBits(v151, v63);
      goto LABEL_169;
    }

    if (TBitstreamReader<unsigned int>::GetBit(v151) == 1)
    {
      TBitstreamReader<unsigned int>::SkipBits(v151, 6);
    }

    if (!v47 && TBitstreamReader<unsigned int>::GetBit(v151) == 1 && TBitstreamReader<unsigned int>::GetBit(v151) == 1)
    {
      TBitstreamReader<unsigned int>::SkipBits(v151, 6);
    }

    if (TBitstreamReader<unsigned int>::GetBit(v151) == 1)
    {
      TBitstreamReader<unsigned int>::SkipBits(v151, 6);
    }

    v53 = v152 >> 30;
    v54 = HIDWORD(v152) - 2;
    HIDWORD(v152) -= 2;
    if (v152 < 0)
    {
      TBitstreamReader<unsigned int>::FillCacheFrom(v151, v151[0]++);
      v56 = BYTE4(v152);
      v53 |= v152 >> SBYTE4(v152);
      v54 = HIDWORD(v152) + 32;
      HIDWORD(v152) += 32;
      if (HIDWORD(v152))
      {
        v55 = v152 << -v56;
      }

      else
      {
        v55 = 0;
      }
    }

    else
    {
      v55 = 4 * v152;
    }

    LODWORD(v152) = v55;
    switch(v53)
    {
      case 1u:
        v57 = 5;
        break;
      case 3u:
        v58 = v55 >> 27;
        HIDWORD(v152) = v54 - 5;
        if (v54 - 5 < 0)
        {
          TBitstreamReader<unsigned int>::FillCacheFrom(v151, v151[0]++);
          v60 = BYTE4(v152);
          v58 |= v152 >> SBYTE4(v152);
          HIDWORD(v152) += 32;
          if (HIDWORD(v152))
          {
            v59 = v152 << -v60;
          }

          else
          {
            v59 = 0;
          }
        }

        else
        {
          v59 = 32 * v55;
        }

        LODWORD(v152) = v59;
        if (TBitstreamReader<unsigned int>::GetBit(v151) == 1)
        {
          TBitstreamReader<unsigned int>::SkipBits(v151, 5);
          if (TBitstreamReader<unsigned int>::GetBit(v151) == 1)
          {
            TBitstreamReader<unsigned int>::SkipBits(v151, 4);
          }

          if (TBitstreamReader<unsigned int>::GetBit(v151) == 1)
          {
            TBitstreamReader<unsigned int>::SkipBits(v151, 4);
          }

          if (TBitstreamReader<unsigned int>::GetBit(v151) == 1)
          {
            TBitstreamReader<unsigned int>::SkipBits(v151, 4);
          }

          if (TBitstreamReader<unsigned int>::GetBit(v151) == 1)
          {
            TBitstreamReader<unsigned int>::SkipBits(v151, 4);
          }

          if (TBitstreamReader<unsigned int>::GetBit(v151) == 1)
          {
            TBitstreamReader<unsigned int>::SkipBits(v151, 4);
          }

          if (TBitstreamReader<unsigned int>::GetBit(v151) == 1)
          {
            TBitstreamReader<unsigned int>::SkipBits(v151, 4);
          }

          if (TBitstreamReader<unsigned int>::GetBit(v151) == 1)
          {
            if (TBitstreamReader<unsigned int>::GetBit(v151) == 1)
            {
              TBitstreamReader<unsigned int>::SkipBits(v151, 4);
            }

            if (TBitstreamReader<unsigned int>::GetBit(v151) == 1)
            {
              TBitstreamReader<unsigned int>::SkipBits(v151, 4);
            }
          }
        }

        if (TBitstreamReader<unsigned int>::GetBit(v151) == 1)
        {
          TBitstreamReader<unsigned int>::SkipBits(v151, 5);
          if (TBitstreamReader<unsigned int>::GetBit(v151) == 1)
          {
            TBitstreamReader<unsigned int>::SkipBits(v151, 7);
            if (TBitstreamReader<unsigned int>::GetBit(v151) == 1)
            {
              TBitstreamReader<unsigned int>::SkipBits(v151, 8);
            }
          }
        }

        v61 = 0;
        do
        {
          TBitstreamReader<unsigned int>::SkipBits(v151, 8);
          ++v61;
        }

        while (v58 + 2 > v61);
        goto LABEL_148;
      case 2u:
        v57 = 12;
        break;
      default:
LABEL_148:
        if (v47 <= 1u)
        {
          if (TBitstreamReader<unsigned int>::GetBit(v151) == 1)
          {
            TBitstreamReader<unsigned int>::SkipBits(v151, 14);
          }

          if (!v47 && TBitstreamReader<unsigned int>::GetBit(v151) == 1)
          {
            TBitstreamReader<unsigned int>::SkipBits(v151, 14);
          }
        }

        if (TBitstreamReader<unsigned int>::GetBit(v151) == 1)
        {
          if (v39)
          {
            if (v39 <= 3)
            {
              v62 = 0;
              do
              {
                if (TBitstreamReader<unsigned int>::GetBit(v151) == 1)
                {
                  TBitstreamReader<unsigned int>::SkipBits(v151, 5);
                }

                ++v62;
              }

              while (v62 < ((0x60302u >> (8 * (v39 - 1))) & 7));
            }
          }

          else
          {
            TBitstreamReader<unsigned int>::SkipBits(v151, 5);
          }
        }

        goto LABEL_163;
    }

    TBitstreamReader<unsigned int>::SkipBits(v151, v57);
    goto LABEL_148;
  }

  TBitstreamReader<unsigned int>::SkipBits(v151, 32);
  LODWORD(v20) = v152 >> 30;
  v21 = HIDWORD(v152) - 2 < 0;
  HIDWORD(v152) -= 2;
  v4 = 560226676;
  if (v21)
  {
    TBitstreamReader<unsigned int>::FillCacheFrom(v151, v151[0]++);
    v25 = BYTE4(v152);
    LODWORD(v20) = (v152 >> SBYTE4(v152)) | v20;
    HIDWORD(v152) += 32;
    if (HIDWORD(v152))
    {
      v22 = v152 << -v25;
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    v22 = 4 * v152;
  }

  LODWORD(v152) = v22;
  if (v20 != 3)
  {
    TBitstreamReader<unsigned int>::SkipBits(v151, 6);
    v27 = v152 >> 27;
    v28 = HIDWORD(v152) - 5;
    HIDWORD(v152) -= 5;
    if (v152 < 0)
    {
      TBitstreamReader<unsigned int>::FillCacheFrom(v151, v151[0]);
      v30 = ++v151[0];
      v28 = HIDWORD(v152) + 32;
      v136 = (v152 >> SBYTE4(v152)) | v27;
      if (HIDWORD(v152) == -32)
      {
        v31 = 0;
        v152 = 0xFFFFFFFD00000000;
        goto LABEL_53;
      }

      v29 = v152 << -BYTE4(v152);
    }

    else
    {
      LOBYTE(v136) = v152 >> 27;
      v29 = 32 * v152;
    }

    v31 = v29 >> 29;
    v32 = v28 - 3;
    v152 = __PAIR64__(v32, v29);
    if (v32 >= 0)
    {
      v33 = 8 * v29;
      goto LABEL_55;
    }

    v30 = v151[0];
LABEL_53:
    TBitstreamReader<unsigned int>::FillCacheFrom(v151, v30);
    v43 = ++v151[0];
    v31 |= v152 >> SBYTE4(v152);
    v32 = HIDWORD(v152) + 32;
    if (HIDWORD(v152) == -32)
    {
      v45 = 0;
      v152 = 0xFFFFFFFD00000000;
      goto LABEL_59;
    }

    v33 = v152 << -BYTE4(v152);
LABEL_55:
    v140 = v33 >> 29;
    LODWORD(v152) = v33;
    HIDWORD(v152) = v32 - 3;
    if (v32 - 3 >= 0)
    {
      v44 = 8 * v33;
LABEL_62:
      LODWORD(v152) = v44;
      if ((v140 & 1) != 0 && v140 != 1)
      {
        TBitstreamReader<unsigned int>::SkipBits(v151, 2);
      }

      if ((v140 & 4) != 0)
      {
        TBitstreamReader<unsigned int>::SkipBits(v151, 2);
      }

      if (v140 == 2)
      {
        TBitstreamReader<unsigned int>::SkipBits(v151, 2);
      }

      v126 = a4;
      __dst = a3;
      Bit = TBitstreamReader<unsigned int>::GetBit(v151);
      goto LABEL_214;
    }

    v43 = v151[0];
    v45 = v33 >> 29;
LABEL_59:
    TBitstreamReader<unsigned int>::FillCacheFrom(v151, v43);
    ++v151[0];
    v46 = BYTE4(v152);
    v140 = (v152 >> SBYTE4(v152)) | v45;
    HIDWORD(v152) += 32;
    if (HIDWORD(v152))
    {
      v44 = v152 << -v46;
    }

    else
    {
      v44 = 0;
    }

    goto LABEL_62;
  }

LABEL_305:
  v10 = v153;
  if (v153)
  {
LABEL_10:
    operator delete(v10);
  }

LABEL_11:
  if (v163)
  {
    operator delete(v163);
  }

  return v4;
}