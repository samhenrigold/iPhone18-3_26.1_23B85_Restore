int *StereoInterleaveInt824ToInt16_Portable(int *result, int *a2, _WORD *a3, int a4)
{
  for (; a4; --a4)
  {
    v4 = *result++;
    v5 = v4 >> 9;
    if (v4 >> 9 < 0)
    {
      if (v5 < 0xFFFF8000)
      {
        LOWORD(v5) = 0x8000;
      }
    }

    else if (v5 >> 15)
    {
      LOWORD(v5) = 0x7FFF;
    }

    *a3 = v5;
    v6 = *a2++;
    v7 = v6 >> 9;
    if (v6 >> 9 < 0)
    {
      if (v7 < 0xFFFF8000)
      {
        LOWORD(v7) = 0x8000;
      }
    }

    else if (v7 >> 15)
    {
      LOWORD(v7) = 0x7FFF;
    }

    a3[1] = v7;
    a3 += 2;
  }

  return result;
}

__int16 *StereoDeinterleaveInt16ToInt824_Portable(__int16 *result, _DWORD *a2, _DWORD *a3, int a4)
{
  for (; a4; --a4)
  {
    *a2++ = *result << 9;
    *a3++ = result[1] << 9;
    result += 2;
  }

  return result;
}

int32x4_t *NativeLowAlignedInt32ToInt16_Portable(int32x4_t *result, int16x4_t *a2, unsigned int a3)
{
  if (a3 >= 4)
  {
    v3 = a3 >> 2;
    do
    {
      v4 = *result++;
      *a2++ = vmovn_s32(v4);
      --v3;
    }

    while (v3);
  }

  v5 = a3 & 3;
  if ((a3 & 3) != 0)
  {
    do
    {
      v6 = result->i32[0];
      result = (result + 4);
      a2->i16[0] = v6;
      a2 = (a2 + 2);
      --v5;
    }

    while (v5);
  }

  return result;
}

uint16x4_t *NativeInt16ToLowAlignedInt32_Portable(uint16x4_t *result, uint32x4_t *a2, unsigned int a3)
{
  if (a3 >= 4)
  {
    v3 = a3 >> 2;
    do
    {
      v4 = *result++;
      *a2++ = vmovl_u16(v4);
      --v3;
    }

    while (v3);
  }

  v5 = a3 & 3;
  if ((a3 & 3) != 0)
  {
    do
    {
      v6 = result->u16[0];
      result = (result + 2);
      a2->i32[0] = v6;
      a2 = (a2 + 4);
      --v5;
    }

    while (v5);
  }

  return result;
}

uint32x4_t *NativeLowAlignedInt32To824Fixed_Portable(uint32x4_t *result, int32x4_t *a2, unsigned int a3, int a4)
{
  v4 = 32 - a4;
  if (a3 >= 4)
  {
    v5 = a3 >> 2;
    v6 = vdupq_n_s32(v4);
    do
    {
      v7 = *result++;
      *a2++ = vshrq_n_s32(vshlq_u32(v7, v6), 7uLL);
      --v5;
    }

    while (v5);
  }

  v8 = a3 & 3;
  if ((a3 & 3) != 0)
  {
    do
    {
      v9 = result->i32[0];
      result = (result + 4);
      a2->i32[0] = v9 << v4 >> 7;
      a2 = (a2 + 4);
      --v8;
    }

    while (v8);
  }

  return result;
}

int32x4_t *Native824FixedToLowAlignedInt32_Portable(int32x4_t *result, int8x16_t *a2, unsigned int a3, int a4)
{
  v4 = 24 - a4;
  v5 = ~(-1 << a4);
  v6 = -1 << (a4 - 1);
  v7 = ~v6;
  if (a3 >= 4)
  {
    v8 = a3 >> 2;
    v9 = vdupq_n_s32(v6);
    v10 = vdupq_n_s32(v7);
    v11 = vdupq_n_s32(v5);
    v12 = vnegq_s32(vdupq_n_s32(v4));
    v13.i64[0] = 0x100000001;
    v13.i64[1] = 0x100000001;
    do
    {
      v14 = *result++;
      v15 = vshrq_n_s32(vaddq_s32(vshlq_s32(v14, v12), v13), 1uLL);
      *a2++ = vandq_s8(vbslq_s8(vcgtq_s32(v9, v15), v9, vminq_s32(v15, v10)), v11);
      --v8;
    }

    while (v8);
  }

  v16 = a3 & 3;
  if ((a3 & 3) != 0)
  {
    do
    {
      v17 = result->i32[0];
      result = (result + 4);
      v18 = ((v17 >> v4) + 1) >> 1;
      if (v18 >= v7)
      {
        v19 = ~v6;
      }

      else
      {
        v19 = v18;
      }

      if (v18 >= v6)
      {
        v20 = v19;
      }

      else
      {
        v20 = -1 << (a4 - 1);
      }

      a2->i32[0] = v20 & v5;
      a2 = (a2 + 4);
      --v16;
    }

    while (v16);
  }

  return result;
}

void Float32ToNativeLowAlignedInt32_Portable(float *a1, unsigned int *a2, int a3, int a4)
{
  v4 = a4;
  v8 = scalbnf(1.0, -a4);
  for (i = nextafterf(2147500000.0, 0.0); a3; --a3)
  {
    v10 = *a1++;
    v11 = v10;
    if (v10 < -1.0)
    {
      v11 = -1.0;
    }

    v12 = (v8 + v11) * 2147500000.0;
    if (i < v12)
    {
      v12 = i;
    }

    *a2++ = v12 >> (32 - v4);
  }
}

float NativeLowAlignedInt32ToFloat32_Portable(int *a1, float *a2, int a3, char a4)
{
  for (; a3; --a3)
  {
    v4 = *a1++;
    result = vcvts_n_f32_s32(v4 << (32 - a4), 0x1FuLL);
    *a2++ = result;
  }

  return result;
}

float *Float32ToNativeLowAlignedInt64_Portable(float *result, void *a2, int a3, int a4)
{
  for (; a3; --a3)
  {
    v4 = *result++;
    v5 = vcvts_n_s32_f32(v4 + COERCE_FLOAT(1065353216 - (a4 << 23)), 0x1FuLL);
    *a2++ = (v5 - (v5 > 0x80000000)) >> (32 - a4);
  }

  return result;
}

float NativeLowAlignedInt64ToFloat32_Portable(int *a1, float *a2, int a3, char a4)
{
  for (; a3; --a3)
  {
    v4 = *a1;
    a1 += 2;
    result = vcvts_n_f32_s32(v4 << (32 - a4), 0x1FuLL);
    *a2++ = result;
  }

  return result;
}

uint64_t std::optional<swix::connection_config>::~optional(uint64_t a1)
{
  if (*(a1 + 128) == 1)
  {
    if (*(a1 + 120) == 1)
    {
      std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](a1 + 88);
    }

    v2 = *(a1 + 56);
    if (v2)
    {
      dispatch_release(v2);
    }

    xpc_release(*(a1 + 48));
    *(a1 + 48) = 0;
    if (*(a1 + 47) < 0)
    {
      operator delete(*(a1 + 24));
    }

    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }
  }

  return a1;
}

{
  if (*(a1 + 128) == 1)
  {
    if (*(a1 + 120) == 1)
    {
      std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](a1 + 88);
    }

    v2 = *(a1 + 56);
    if (v2)
    {
      dispatch_release(v2);
    }

    xpc_release(*(a1 + 48));
    *(a1 + 48) = 0;
    if (*(a1 + 47) < 0)
    {
      operator delete(*(a1 + 24));
    }

    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }
  }

  return a1;
}

void std::__function::__func<RemoteAudioConverter::setInvalidationHandler(std::function<void ()(void)>)::$_0,std::allocator<RemoteAudioConverter::setInvalidationHandler(std::function<void ()(void)>)::$_0>,void ()(swix::ipc_endpoint &,applesauce::xpc::object const&)>::~__func(void *a1)
{
  *a1 = &unk_1F032FA28;
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x193ADF220);
}

void *std::__function::__func<RemoteAudioConverter::setInvalidationHandler(std::function<void ()(void)>)::$_0,std::allocator<RemoteAudioConverter::setInvalidationHandler(std::function<void ()(void)>)::$_0>,void ()(swix::ipc_endpoint &,applesauce::xpc::object const&)>::~__func(void *a1)
{
  *a1 = &unk_1F032FA28;
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

void ___ZL23registerPrivateDecodersj_block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  inDesc.componentType = 1633969507;
  inDesc.componentSubType = v1;
  *&inDesc.componentManufacturer = 1634758764;
  inDesc.componentFlagsMask = 0;
  inFactory = &inDesc;
  if (!AudioComponentFindNext(0, &inDesc))
  {
    _ZZZL23registerPrivateDecodersjEUb_E6handle = dlopen("/System/Library/Frameworks/AudioToolbox.framework/AudioCodecs", 5);
    v2 = dlsym(_ZZZL23registerPrivateDecodersjEUb_E6handle, "RegisterExternalAudioCodecs");
    if (v2)
    {
      v2(&inFactory);
      if (AudioComponentRegister(&inDesc, &stru_1F0340B48, 0, inFactory))
      {
        return;
      }
    }

    else
    {
      if (gAudioConverterDeferredLogOnce != -1)
      {
        dispatch_once(&gAudioConverterDeferredLogOnce, &__block_literal_global);
      }

      v3 = *gAudioConverterLog;
      if (os_log_type_enabled(*gAudioConverterLog, OS_LOG_TYPE_ERROR))
      {
        v4 = dlerror();
        *buf = 136315650;
        v9 = "RegisterPrivateDecoders.h";
        v10 = 1024;
        v11 = 115;
        v12 = 2080;
        v13 = v4;
        _os_log_impl(&dword_18F5DF000, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d couldn't lookup symbol RegisterExternalAudioCodecs:\n%s", buf, 0x1Cu);
      }
    }

    if (gAudioConverterDeferredLogOnce != -1)
    {
      dispatch_once(&gAudioConverterDeferredLogOnce, &__block_literal_global);
    }

    v5 = *gAudioConverterLog;
    if (os_log_type_enabled(*gAudioConverterLog, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v9 = "RegisterPrivateDecoders.h";
      v10 = 1024;
      v11 = 122;
      _os_log_impl(&dword_18F5DF000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d failed to register component for GKDecoder", buf, 0x12u);
    }
  }
}

void audioipc::os_workgroup_joiner::~os_workgroup_joiner(audioipc::os_workgroup_joiner *this)
{
  if (!*(this + 16))
  {
    caulk::mach::os_workgroup_managed::leave(this);
  }

  caulk::mach::os_workgroup_managed::~os_workgroup_managed(this);
}

const void **AudioConverterServer::setup(char const*)::{lambda(void)#1}::~setup(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **applesauce::CF::ObjectRef<voucher_s *>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

double auoop::WorkgroupMirror::lookup(auoop::WorkgroupMirror *this, uint64_t a2, uint64_t a3)
{
  v17 = *MEMORY[0x1E69E9840];
  LOBYTE(v12) = 0;
  v16 = 0;
  v4 = (a2 + 24);
  atomic_fetch_add((a2 + 24), 1u);
  v5 = atomic_load((a2 + 16));
  if (v5)
  {
    caulk::concurrent::guarded_lookup_hash_table<unsigned long,caulk::mach::os_workgroup_managed,(caulk::concurrent::guarded_lookup_hash_table_options)0,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned long>>::table_impl::findSlotForKey(v5, a3);
    if (a2)
    {
      v6 = a2;
      if (v16 == 1)
      {
        caulk::mach::details::holder::operator=(&v13, (a2 + 24));
        v7 = v6[3];
        v14 = v6[2];
        v15[0] = v7;
        *(v15 + 9) = *(v6 + 57);
      }

      else
      {
        v12 = MEMORY[0x1E69E3C18] + 16;
        v13 = caulk::mach::details::retain_os_object(*(a2 + 24), a2);
        v8 = v6[3];
        v9 = *(v6 + 57);
        v14 = v6[2];
        v15[0] = v8;
        *(v15 + 9) = v9;
        v16 = 1;
      }
    }
  }

  atomic_fetch_add(v4, 0xFFFFFFFF);
  if (v16 == 1)
  {
    *this = MEMORY[0x1E69E3C18] + 16;
    *(this + 1) = caulk::mach::details::retain_os_object(v13, a2);
    v10 = v15[0];
    *(this + 1) = v14;
    *(this + 2) = v10;
    result = *(v15 + 9);
    *(this + 41) = *(v15 + 9);
    if (v16)
    {
      caulk::mach::os_workgroup_managed::~os_workgroup_managed(&v12);
    }
  }

  else
  {
    *(this + 7) = 0;
    *this = MEMORY[0x1E69E3C18] + 16;
    result = 0.0;
    *(this + 8) = 0u;
    *(this + 24) = 0u;
    *(this + 40) = 0u;
    *(this + 56) = 0;
  }

  return result;
}

audioipc::os_workgroup_joiner *std::optional<audioipc::os_workgroup_joiner>::emplace[abi:ne200100]<caulk::mach::os_workgroup_managed &,void>(audioipc::os_workgroup_joiner *this, uint64_t a2)
{
  if (*(this + 72) == 1)
  {
    audioipc::os_workgroup_joiner::~os_workgroup_joiner(this);
    *(this + 72) = 0;
  }

  *this = MEMORY[0x1E69E3C18] + 16;
  *(this + 1) = caulk::mach::details::retain_os_object(*(a2 + 8), a2);
  v4 = *(a2 + 41);
  v5 = *(a2 + 32);
  *(this + 1) = *(a2 + 16);
  *(this + 2) = v5;
  *(this + 41) = v4;
  *(this + 16) = caulk::mach::os_workgroup_managed::join(this);
  *(this + 72) = 1;
  return this;
}

caulk::mach::details **caulk::mach::details::holder::operator=(caulk::mach::details **a1, caulk::mach::details **a2)
{
  if (a1 != a2)
  {
    caulk::mach::details::release_os_object(*a1, a2);
    *a1 = caulk::mach::details::retain_os_object(*a2, v4);
  }

  return a1;
}

uint64_t caulk::concurrent::guarded_lookup_hash_table<unsigned long,caulk::mach::os_workgroup_managed,(caulk::concurrent::guarded_lookup_hash_table_options)0,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned long>>::table_impl::findSlotForKey(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  v3 = a2 % v2;
  if ((a2 % v2) >= 3)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(result + 8);
  }

  v5 = v3 + v4 - 3;
  v6 = 0xFFFFFFFFLL;
  v7 = 1;
  v8 = a2 % v2;
  do
  {
    v9 = v5;
    v10 = atomic_load((result + 16 + 8 * v8));
    if (v10 == -1)
    {
      if (v6 >= 0)
      {
        v6 = v6;
      }

      else
      {
        v6 = v8;
      }
    }

    else
    {
      if (!v10)
      {
        v7 = 0;
        if (v6 >= 0)
        {
          v8 = v6;
        }

        else
        {
          v8 = v8;
        }

        return v7 | (v8 << 32);
      }

      if (*(v10 + 8) == a2)
      {
        return v7 | (v8 << 32);
      }
    }

    if (v9 >= 3)
    {
      v11 = 0;
    }

    else
    {
      v11 = *(result + 8);
    }

    v5 = (v9 + v11 - 3);
    v8 = v9;
  }

  while (v9 != v3);
  if ((v6 & 0x80000000) == 0)
  {
    v7 = 0;
    v8 = v6;
    return v7 | (v8 << 32);
  }

  __break(1u);
  return result;
}

uint64_t *caulk::concurrent::lf_read_synchronized_write<std::vector<std::pair<unsigned long long,AudioConverterPropertyServer *>>>::mutator::copy_previous(uint64_t *result)
{
  v1 = *result;
  v2 = *(result + 8);
  if (*(*result + v2 + 8))
  {
    v3 = result;
    v4 = v1 + 24 * v2;
    v5 = *(v4 + 16);
    v6 = *(v4 + 24);
    v7 = v6 - v5;
    if (v6 != v5)
    {
      if (!((v7 >> 4) >> 60))
      {
        std::allocator<std::pair<unsigned long long,AudioConverterRenderServer *>>::allocate_at_least[abi:ne200100](v7 >> 4);
      }

      std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0uLL;
    v9 = *(result + 9);
    v10 = v1 + 24 * v9 + 16;
    if (*(v1 + 8 + v9) == 1)
    {
      v11 = *v10;
      if (*v10)
      {
        *(v1 + 24 * v9 + 24) = v11;
        operator delete(v11);
        v8 = 0uLL;
      }
    }

    else
    {
      *(v1 + 8 + v9) = 1;
    }

    *v10 = v8;
    *(v10 + 16) = 0;
    *(v3 + 8) = v10;
    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double AudioConverterPropertyServer::serverThread(AudioConverterPropertyServer *this)
{
  v29 = *MEMORY[0x1E69E9840];
  audioipc::eventlink_primitive::activate(this + 6, 1);
  v3 = atomic_load(this + 41);
  v4 = *(this + 2);
  if ((v3 & 1) == 0)
  {
    atomic_store(0, v4);
    v5 = audioipc::eventlink_primitive::wait_or_error(*(this + 6));
    v6 = atomic_load(this + 41);
    if ((v6 & 1) == 0)
    {
      v7 = v5;
      while (1)
      {
        v8 = atomic_load(*(this + 3));
        if (v8 == 2)
        {
          break;
        }

        if ((v7 & 0x100000000) == 0)
        {
          v19 = CADefaultLog();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "rt_receiver::receive_loop";
            *&buf[12] = 1024;
            *&buf[14] = v7;
            _os_log_error_impl(&dword_18F5DF000, v19, OS_LOG_TYPE_ERROR, "%s failed: %d", buf, 0x12u);
          }

          break;
        }

        atomic_store(1u, *(this + 2));
        v9 = *(this + 4);
        if (*v9 == 1)
        {
          AudioConverterServer::syncThreadPriorityAndWorkgroup(this);
          v21 = 336;
          v10 = *(this + 40);
          *v10 = *(this + 41);
          v11 = *(this + 42);
          v25 = 1651401828;
          v23 = v10;
          v24 = &v21;
          v22[0] = &v25;
          v22[1] = &v24;
          v22[2] = &v23;
          *buf = caulk::function_ref<int ()(AudioConverterAPI *)>::functor_invoker<AudioConverterGetProperty::$_0>;
          *&buf[8] = v22;
          v12 = with_resolved(v11, buf);
          *v10 = 0;
          *(v9 + 1) = v12;
        }

        else
        {
          if (gAudioConverterDeferredLogOnce != -1)
          {
            dispatch_once(&gAudioConverterDeferredLogOnce, &__block_literal_global);
          }

          v13 = *gAudioConverterLog;
          if (os_log_type_enabled(*gAudioConverterLog, OS_LOG_TYPE_ERROR))
          {
            v14 = *v9;
            *buf = 136315650;
            *&buf[4] = "AudioConverterPropertyServer.h";
            *&buf[12] = 1024;
            *&buf[14] = 60;
            v27 = 1024;
            v28 = v14;
            _os_log_impl(&dword_18F5DF000, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d Unknown or unexpected message: %d", buf, 0x18u);
          }
        }

        *v9 = 25856;
        v15 = atomic_load(this + 41);
        if ((v15 & 1) == 0)
        {
          v16 = atomic_load(*(this + 3));
          if (v16 != 2)
          {
            atomic_store(0, *(this + 2));
            v17 = audioipc::eventlink_primitive::wait_signal_or_error(*(this + 6));
            if ((v17 & 0x100000000) == 0)
            {
              v7 = v17;
            }

            v18 = atomic_load(this + 41);
            if ((v18 & 1) == 0)
            {
              continue;
            }
          }
        }

        break;
      }
    }

    v4 = *(this + 2);
  }

  atomic_store(2u, v4);
  *&result = AudioConverterServer::WorkgroupJoiner::leave((this + 120), v2).n128_u64[0];
  return result;
}

void AudioConverterPropertyServer::~AudioConverterPropertyServer(AudioConverterPropertyServer *this)
{
  AudioConverterPropertyServer::~AudioConverterPropertyServer(this);

  JUMPOUT(0x193ADF220);
}

{
  *this = &unk_1F032F9F8;
  AudioConverterServer::shutdown(this);

  AudioConverterServer::~AudioConverterServer(this);
}

uint64_t *std::unique_ptr<AudioConverterXPC_Server::disconnect(void)::$_0,std::default_delete<AudioConverterXPC_Server::disconnect(void)::$_0>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v2);
    MEMORY[0x193ADF220](v3, 0x1020C40A5B76CDFLL);
  }

  return a1;
}

uint64_t *applesauce::dispatch::v1::async<AudioConverterXPC_Server::disconnect(void)::$_0>(dispatch_queue_s *,AudioConverterXPC_Server::disconnect(void)::$_0 &&)::{lambda(void *)#1}::__invoke(uint64_t a1)
{
  v3 = a1;
  v1 = *(a1 + 24);
  if (!v1)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v1 + 48))(v1);
  return std::unique_ptr<AudioConverterXPC_Server::disconnect(void)::$_0,std::default_delete<AudioConverterXPC_Server::disconnect(void)::$_0>>::~unique_ptr[abi:ne200100](&v3);
}

void sub_18F7ECC6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<AudioConverterXPC_Server::disconnect(void)::$_0,std::default_delete<AudioConverterXPC_Server::disconnect(void)::$_0>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void AudioConverterPropertyMarshaller::~AudioConverterPropertyMarshaller(AudioConverterPropertyMarshaller *this)
{
  PropertyMarshaller::~PropertyMarshaller(this);

  JUMPOUT(0x193ADF220);
}

uint64_t applesauce::CF::convert_as<BOOL,0>(const __CFBoolean *a1)
{
  TypeID = CFBooleanGetTypeID();
  if (TypeID == CFGetTypeID(a1))
  {
    LOBYTE(v3) = CFBooleanGetValue(a1) != 0;
    v4 = 1;
  }

  else
  {
    v5 = CFNumberGetTypeID();
    if (v5 == CFGetTypeID(a1))
    {
      v3 = applesauce::CF::details::number_convert_as<BOOL>(a1);
      v4 = HIBYTE(v3);
    }

    else
    {
      LOBYTE(v3) = 0;
      v4 = 0;
    }
  }

  return v3 | (v4 << 8);
}

uint64_t std::__function::__value_func<void ()(AudioComponentVector const&,AudioComponentVector&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<void ()(AudioComponentVector const&,AudioComponentVector&)>::~__value_func[abi:ne200100](uint64_t a1)
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

void std::allocator_traits<std::allocator<AUExtensionScanner::ExtensionComponents>>::destroy[abi:ne200100]<AUExtensionScanner::ExtensionComponents,void,0>(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *a1;
}

uint64_t std::__shared_ptr_pointer<AUExtensionScanner::NSExtensionImpl  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 16))();
  }

  return result;
}

void std::__shared_ptr_pointer<AUExtensionScanner::NSExtensionImpl  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x193ADF220);
}

id AUExtensionScanner::NSExtensionImpl::beginMatchingExtensions(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = [MEMORY[0x1E696ABD0] beginMatchingExtensionsWithAttributes:a2 completion:a3];

  return v3;
}

void AUExtensionScanner::componentsForExtension(AUExtensionScanner *this, NSExtension *a2, void *a3)
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = a3;
  operator new();
}

void sub_18F7ED710(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, void *a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, id);
  std::__split_buffer<AUExtensionScanner::ExtensionComponents>::~__split_buffer(va1);
  AUExtensionScanner::ExtensionComponents::~ExtensionComponents(va);

  v11 = *(v8 + 8);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  _Unwind_Resume(a1);
}

unint64_t AUExtensionScanner::ExtensionComponents::operator<(id *a1, void *a2)
{
  v3 = a2;
  v4 = [*a1 identifier];
  v5 = [v4 compare:v3];

  return v5 >> 63;
}

void AUExtensionScanner::ExtensionComponents::~ExtensionComponents(AUExtensionScanner::ExtensionComponents *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void std::allocator<AUExtensionScanner::ExtensionComponents>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (!(a1 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<AUExtensionScanner::ExtensionComponents>::~__split_buffer(uint64_t a1)
{
  v2 = *(a1 + 8);
  while (1)
  {
    v3 = *(a1 + 16);
    if (v3 == v2)
    {
      break;
    }

    *(a1 + 16) = v3 - 32;
    std::allocator_traits<std::allocator<AUExtensionScanner::ExtensionComponents>>::destroy[abi:ne200100]<AUExtensionScanner::ExtensionComponents,void,0>(v3 - 32);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<AUExtensionScanner::ExtensionComponents>,AUExtensionScanner::ExtensionComponents*>(uint64_t a1, __int128 *a2, __int128 *a3, __int128 *a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *v6;
      *v6 = 0uLL;
      *a4 = v7;
      a4[1] = v6[1];
      v6[1] = 0uLL;
      v6 += 2;
      a4 += 2;
    }

    while (v6 != a3);
    do
    {
      std::allocator_traits<std::allocator<AUExtensionScanner::ExtensionComponents>>::destroy[abi:ne200100]<AUExtensionScanner::ExtensionComponents,void,0>(v5);
      v5 += 2;
    }

    while (v5 != a3);
  }
}

uint64_t std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<AUExtensionScanner::ExtensionComponents *,AUExtensionScanner::ExtensionComponents *,AUExtensionScanner::ExtensionComponents *>(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      v6 = *v5;
      *v5 = 0;
      v7 = *a3;
      *a3 = v6;

      v8 = v5[1];
      v5[1] = 0;
      v9 = *(a3 + 8);
      *(a3 + 8) = v8;

      v10 = *(v5 + 1);
      v5[2] = 0;
      v5[3] = 0;
      v11 = *(a3 + 24);
      *(a3 + 16) = v10;
      if (v11)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v11);
      }

      v5 += 4;
      a3 += 32;
    }

    while (v5 != a2);
  }

  return a3;
}

void std::__function::__func<AUExtensionScanner::componentsForExtension(NSExtension *)::$_0,std::allocator<AUExtensionScanner::componentsForExtension(NSExtension *)::$_0>,void ()(AudioComponentRegistrationInfo &)>::operator()(uint64_t a1, const AudioComponentRegistrationInfo *a2)
{
  v4 = [**(a1 + 8) identifier];
  APComponent_NSExtension::create_shared(&v5, a2, v4, **(a1 + 8));
}

void sub_18F7EDB44(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::__function::__func<AUExtensionScanner::componentsForExtension(NSExtension *)::$_0,std::allocator<AUExtensionScanner::componentsForExtension(NSExtension *)::$_0>,void ()(AudioComponentRegistrationInfo &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F032FB08;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void std::__shared_ptr_emplace<AudioComponentVector>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F032FAD0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x193ADF220);
}

void AUExtensionScanner::addExtensions(AudioComponentVector *this, NSArray *a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a3;
  this->__end_ = 0;
  this->__cap_ = 0;
  this->__begin_ = 0;
  this->mSorted = 1;
  memset(v12, 0, sizeof(v12));
  obj = v5;
  if ([obj countByEnumeratingWithState:v12 objects:v22 count:16])
  {
    v6 = **(&v12[0] + 1);
    if (gAudioComponentLogCategory)
    {
      v7 = *gAudioComponentLogCategory;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v9 = [v6 extensionPointIdentifier];
        v10 = [v6 attributes];
        buf[0] = 136316162;
        *&buf[1] = "AUExtensionScanner.mm";
        v14 = 1024;
        v15 = 110;
        v16 = 2112;
        v17 = v6;
        v18 = 2112;
        v19 = v9;
        v20 = 2112;
        v21 = v10;
        _os_log_impl(&dword_18F5DF000, v7, OS_LOG_TYPE_INFO, "%25s:%-5d %@ %@ %@", buf, 0x30u);
      }

      AUExtensionScanner::componentsForExtension(buf, a2, v6);
    }

    operator new();
  }
}

void sub_18F7EDF18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void **a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void **a21)
{
  a21 = a12;
  std::vector<std::shared_ptr<CA::ADMPackFormat>>::__destroy_vector::operator()[abi:ne200100](&a21);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__7797(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void ___ZN18AUExtensionScanner11initialScanEv_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v16[0] = MEMORY[0x1E69E9820];
  v6 = *(a1 + 56);
  v7 = *(*(a1 + 56) + 8);
  v16[1] = 3221225472;
  v16[2] = ___ZN18AUExtensionScanner11initialScanEv_block_invoke_2;
  v16[3] = &unk_1E72C14E8;
  v20 = v6;
  v8 = *(a1 + 48);
  v18 = v3;
  v19 = v8;
  v9 = v4;
  v10 = *(a1 + 72);
  v17 = v9;
  v21 = v10;
  v11 = **v7;
  v12 = v3;
  v13 = v11(v7, v5, v16);
  v14 = *(a1 + 64);
  v15 = *(v14 + 8);
  *(v14 + 8) = v13;
}

void ___ZN18AUExtensionScanner11initialScanEv_block_invoke_2(void *a1, void *a2, void *a3)
{
  v54 = *MEMORY[0x1E69E9840];
  v37 = a2;
  v6 = a3;
  v36 = a1[7];
  if (v6)
  {
    if (!gAudioComponentLogCategory)
    {
      operator new();
    }

    v7 = *gAudioComponentLogCategory;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = [v6 localizedDescription];
      *buf = 136315650;
      *&buf[4] = "AUExtensionScanner.mm";
      v50 = 1024;
      v51 = 147;
      v52 = 2112;
      v53 = v9;
      _os_log_impl(&dword_18F5DF000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d Error from NSExtension: %@", buf, 0x1Cu);
    }
  }

  if (*a1[8])
  {
    if (!gAudioComponentLogCategory)
    {
      operator new();
    }

    v10 = *gAudioComponentLogCategory;
    if (os_log_type_enabled(*gAudioComponentLogCategory, OS_LOG_TYPE_INFO))
    {
      v15 = a1[4];
      *buf = 136315650;
      *&buf[4] = "AUExtensionScanner.mm";
      v50 = 1024;
      v51 = 155;
      v52 = 2112;
      v53 = v15;
      _os_log_impl(&dword_18F5DF000, v10, OS_LOG_TYPE_INFO, "%25s:%-5d NSExtensions changed for %@", buf, 0x1Cu);
    }

    v16 = a1[9];
    os_unfair_lock_lock(v16);
    v17 = a1[8];
    v35 = v37;
    v18 = [MEMORY[0x1E695DFD8] setWithArray:?];
    v21 = *(v17 + 16);
    v20 = (v17 + 16);
    v19 = v21;
    if (v21)
    {
      v22 = setDifference(v19, v18);
      v23 = setDifference(v18, *v20);
    }

    else
    {
      v23 = v18;
      v22 = 0;
    }

    objc_storeStrong(v20, v18);
    memset(&v47, 0, 24);
    v47.mSorted = 1;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v24 = v22;
    v25 = [v24 countByEnumeratingWithState:&v43 objects:buf count:16];
    if (v25)
    {
      v26 = *v44;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v44 != v26)
          {
            objc_enumerationMutation(v24);
          }

          v28 = [*(*(&v43 + 1) + 8 * i) identifier];
          Extension = AUExtensionScanner::findExtension((v16 + 8), v28);

          if (*(v16 + 144) != Extension)
          {
            AudioComponentVector::append(&v47, *Extension[2], *(Extension[2] + 1));
            v30 = std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<AUExtensionScanner::ExtensionComponents *,AUExtensionScanner::ExtensionComponents *,AUExtensionScanner::ExtensionComponents *>(Extension + 4, *(v16 + 144), Extension);
            for (j = *(v16 + 144); j != v30; std::allocator_traits<std::allocator<AUExtensionScanner::ExtensionComponents>>::destroy[abi:ne200100]<AUExtensionScanner::ExtensionComponents,void,0>(j))
            {
              j -= 32;
            }

            *(v16 + 144) = v30;
          }
        }

        v25 = [v24 countByEnumeratingWithState:&v43 objects:buf count:16];
      }

      while (v25);
    }

    v32 = [(NSSet *)v23 allObjects];
    AUExtensionScanner::addExtensions(&v42, (v16 + 8), v32);

    if (!gAudioComponentLogCategory)
    {
      operator new();
    }

    if (os_log_type_enabled(*gAudioComponentLogCategory, OS_LOG_TYPE_DEBUG))
    {
      AudioComponentVector::showAll(&v42, "added from extensions");
      AudioComponentVector::showAll(&v47, "removed from extensions");
    }

    memset(v38, 0, sizeof(v38));
    std::vector<std::shared_ptr<APComponent>>::__init_with_size[abi:ne200100]<std::shared_ptr<APComponent>*,std::shared_ptr<APComponent>*>(v38, v42.__begin_, v42.__end_, (v42.__end_ - v42.__begin_) >> 4);
    mSorted = v42.mSorted;
    memset(v40, 0, sizeof(v40));
    std::vector<std::shared_ptr<APComponent>>::__init_with_size[abi:ne200100]<std::shared_ptr<APComponent>*,std::shared_ptr<APComponent>*>(v40, v47.__begin_, v47.__end_, (v47.__end_ - v47.__begin_) >> 4);
    v41 = v47.mSorted;
    v48 = &v42;
    std::vector<std::shared_ptr<CA::ADMPackFormat>>::__destroy_vector::operator()[abi:ne200100](&v48);
    v42.__begin_ = &v47;
    std::vector<std::shared_ptr<CA::ADMPackFormat>>::__destroy_vector::operator()[abi:ne200100](&v42);

    if (v16)
    {
      os_unfair_lock_unlock(v16);
    }

    v34 = *(v36 + 48);
    if (!v34)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*v34 + 48))(v34, v38, v40);
    *buf = v40;
    std::vector<std::shared_ptr<CA::ADMPackFormat>>::__destroy_vector::operator()[abi:ne200100](buf);
    *buf = v38;
    std::vector<std::shared_ptr<CA::ADMPackFormat>>::__destroy_vector::operator()[abi:ne200100](buf);
  }

  else
  {
    objc_storeStrong((*(a1[6] + 8) + 40), a2);
    v11 = [MEMORY[0x1E695DFD8] setWithArray:v37];
    v12 = a1[8];
    v13 = *(v12 + 16);
    *(v12 + 16) = v11;

    *a1[8] = 1;
    (*(a1[5] + 16))();
  }
}

void **std::pair<AudioComponentVector,AudioComponentVector>::~pair(void **a1)
{
  v3 = a1 + 4;
  std::vector<std::shared_ptr<CA::ADMPackFormat>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = a1;
  std::vector<std::shared_ptr<CA::ADMPackFormat>>::__destroy_vector::operator()[abi:ne200100](&v3);
  return a1;
}

id setDifference(NSSet *a1, NSSet *a2)
{
  v3 = a2;
  v4 = [(NSSet *)a1 mutableCopy];
  [v4 minusSet:v3];

  return v4;
}

id *AUExtensionScanner::findExtension(AUExtensionScanner *this, NSString *a2)
{
  v3 = a2;
  v4 = *(this + 16);
  v5 = *(this + 17);
  if (v5 != v4)
  {
    v6 = (v5 - v4) >> 5;
    v5 = *(this + 16);
    do
    {
      v7 = &v5[4 * (v6 >> 1)];
      v8 = AUExtensionScanner::ExtensionComponents::operator<(v7, v3);
      if (v8)
      {
        v6 += ~(v6 >> 1);
      }

      else
      {
        v6 >>= 1;
      }

      if (v8)
      {
        v5 = v7 + 4;
      }
    }

    while (v6);
    if (v5 != *(this + 17))
    {
      v9 = [*v5 identifier];
      v10 = [v9 isEqualToString:v3];

      if ((v10 & 1) == 0)
      {
        v5 = *(this + 17);
      }
    }
  }

  return v5;
}

id AUExtensionScanner::getExtensionComponentList(AUExtensionScanner *this, NSString *a2)
{
  v3 = a2;
  Extension = AUExtensionScanner::findExtension(this, v3);
  if (*(this + 17) == Extension)
  {
    v5 = 0;
  }

  else
  {
    v5 = Extension[1];
  }

  return v5;
}

uint64_t MP4BoxParser_MovieFragmentHeader::Init(MP4BoxParser **this)
{
  result = MP4BoxParser_Full::Initialize(this);
  if (!result)
  {
    if (*(this + 5) == 1835427940)
    {
      v3 = (*(*this + 3))(this);
      result = MP4BoxParser::ReadDataSourceBytes(this[1], v3, 4uLL, this + 60);
      if (!result)
      {
        *(this + 15) = bswap32(*(this + 15));
      }
    }

    else
    {
      return 4294967294;
    }
  }

  return result;
}

void MP4BoxParser_MovieFragmentHeader::~MP4BoxParser_MovieFragmentHeader(MP4BoxParser_MovieFragmentHeader *this)
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

char *DSPGraph::AverageBox::process(char **this, unsigned int a2)
{
  DSPGraph::SumBox::process(this, a2);
  v4 = this[11];
  if (this[12] == v4)
  {
    std::string::basic_string[abi:ne200100]<0>(&v17, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(&v16, "out");
    v13 = (this + 4);
    if (*(this + 55) < 0)
    {
      v13 = *v13;
    }

    DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v13, (this[12] - this[11]) >> 5, 0);
  }

  result = (*(*v4 + 40))(v4);
  if ((*(*(result + 7) + 72) & 0x10) == 0)
  {
    v6 = this[11];
    if (this[12] == v6)
    {
      std::string::basic_string[abi:ne200100]<0>(&v17, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
      std::string::basic_string[abi:ne200100]<0>(&v16, "out");
      v14 = (this + 4);
      if (*(this + 55) < 0)
      {
        v14 = *v14;
      }

      DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v14, (this[12] - this[11]) >> 5, 0);
    }

    v7 = *(*((*(*v6 + 40))(v6) + 56) + 80);
    result = this[8];
    v8 = this[9];
    v9 = (v8 - result) >> 5;
    if (v9 < 2)
    {
      if (v8 == result)
      {
        std::string::basic_string[abi:ne200100]<0>(&v17, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
        std::string::basic_string[abi:ne200100]<0>(&v16, "in");
        v15 = (this + 4);
        if (*(this + 55) < 0)
        {
          v15 = *v15;
        }

        DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v15, (this[9] - this[8]) >> 5, 0);
      }

      *&v17 = 1.0 / **(*((*(*result + 40))(result) + 56) + 80);
      return MEMORY[0x193AE08B0](*(v7 + 2), 1, &v17, *(v7 + 2), 1, a2);
    }

    else
    {
      *&v17 = 1.0 / v9;
      if (*v7)
      {
        v10 = 0;
        v11 = a2;
        v12 = 4;
        do
        {
          result = MEMORY[0x193AE08B0](*&v7[v12], 1, &v17, *&v7[v12], 1, v11);
          ++v10;
          v12 += 4;
        }

        while (v10 < *v7);
      }
    }
  }

  return result;
}

void sub_18F7EEE18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (*(v23 - 33) < 0)
  {
    operator delete(*(v23 - 56));
  }

  _Unwind_Resume(exception_object);
}

double DSPGraph::AverageBox::desc@<D0>(uint64_t a1@<X8>)
{
  result = 3.15583197e161;
  *a1 = xmmword_18F901980;
  *(a1 + 16) = 0;
  return result;
}

void DSPGraph::AverageBox::~AverageBox(DSPGraph::AverageBox *this)
{
  DSPGraph::Box::~Box(this);

  JUMPOUT(0x193ADF220);
}

uint64_t CAAudioChannelLayout::ToTag(AudioChannelLayout *this, const AudioChannelLayout *a2)
{
  CAAudioChannelLayout::CAAudioChannelLayout(&v9, this);
  v2 = *(v9 + 16);
  outPropertyData = v2;
  if (CAAudioChannelLayout::NumberChannels((v9 + 16), v3))
  {
    v2 = *(v9 + 16);
    if ((v2 | 0x10000) == 0x10000)
    {
      ioPropertyDataSize = 4;
      if (AudioFormatGetProperty(0x636D7074u, *(v9 + 12), (v9 + 16), &ioPropertyDataSize, &outPropertyData))
      {
        goto LABEL_11;
      }

      v2 = outPropertyData;
    }

    else
    {
      outPropertyData = *(v9 + 16);
    }
  }

  if ((v2 & 0xFFFEFFFF) != 0)
  {
    v5 = v9 ? CAAudioChannelLayout::NumberChannels((v9 + 16), v4) | 0x930000 : 9633792;
    if (v2 != v5)
    {
      v7 = outPropertyData;
      goto LABEL_16;
    }
  }

LABEL_11:
  if (v9)
  {
    v6 = CAAudioChannelLayout::NumberChannels((v9 + 16), v4);
  }

  else
  {
    v6 = 0;
  }

  v7 = *&v6 | 0xFFFF0000;
LABEL_16:
  MEMORY[0x193ADE5D0](&v9);
  return v7;
}

uint64_t acv2::CodecConverterFactory::GetAvailableNumberChannels(AudioComponent *this, const AudioStreamBasicDescription *a2, unsigned int *a3, void *a4)
{
  outInstance = 0;
  Property = AudioComponentInstanceNew(this[4], &outInstance);
  if (!Property)
  {
    Property = AudioCodecGetProperty(outInstance, 0x636D6E63u, a3, a4);
    AudioComponentInstanceDispose(outInstance);
  }

  return Property;
}

uint64_t acv2::CodecConverterFactory::GetAvailableChannelLayouts(AudioComponent *this, const AudioStreamBasicDescription *a2, unsigned int *a3, void *a4)
{
  outInstance = 0;
  Property = AudioComponentInstanceNew(this[4], &outInstance);
  if (Property)
  {
    return Property;
  }

  Property = AudioCodecGetProperty(outInstance, 0x616F636Cu, a3, a4);
  AudioComponentInstanceDispose(outInstance);
  mChannelsPerFrame = a2->mChannelsPerFrame;
  if (!mChannelsPerFrame)
  {
    return Property;
  }

  v9 = *a3;
  if (v9 < 4)
  {
    v10 = 0;
    goto LABEL_17;
  }

  v11 = 0;
  v12 = v9 >> 2;
  v13 = sqrtf(mChannelsPerFrame) + 0.5;
  v14 = a4;
  do
  {
    v16 = *v14++;
    v15 = v16;
    v17 = v16;
    if (v16 == mChannelsPerFrame)
    {
      goto LABEL_7;
    }

    if (!v17 && ((v15 | 0x10000) != 0xBF0000 || v13 * v13 == mChannelsPerFrame))
    {
      v15 |= mChannelsPerFrame;
LABEL_7:
      *(a4 + v11++) = v15;
    }

    --v12;
  }

  while (v12);
  v10 = 4 * v11;
LABEL_17:
  *a3 = v10;
  return Property;
}

uint64_t acv2::CodecConverterFactory::GetAvailableEncodeBitRates(AudioComponent *this, unsigned int *a2, void *a3)
{
  outInstance = 0;
  Property = AudioComponentInstanceNew(this[4], &outInstance);
  if (!Property)
  {
    Property = AudioCodecGetProperty(outInstance, 0x61627274u, a2, a3);
    AudioComponentInstanceDispose(outInstance);
  }

  return Property;
}

uint64_t acv2::CodecConverterFactory::GetAvailableNumberChannelsInfo(AudioComponent *this, const AudioStreamBasicDescription *a2, unsigned int *a3)
{
  outInstance = 0;
  PropertyInfo = AudioComponentInstanceNew(this[4], &outInstance);
  if (!PropertyInfo)
  {
    outWritable = 0;
    PropertyInfo = AudioCodecGetPropertyInfo(outInstance, 0x636D6E63u, a3, &outWritable);
    AudioComponentInstanceDispose(outInstance);
  }

  return PropertyInfo;
}

uint64_t acv2::CodecConverterFactory::GetAvailableChannelLayoutsInfo(AudioComponent *this, const AudioStreamBasicDescription *a2, unsigned int *a3)
{
  outInstance = 0;
  PropertyInfo = AudioComponentInstanceNew(this[4], &outInstance);
  if (!PropertyInfo)
  {
    outWritable = 0;
    PropertyInfo = AudioCodecGetPropertyInfo(outInstance, 0x616F636Cu, a3, &outWritable);
    AudioComponentInstanceDispose(outInstance);
  }

  return PropertyInfo;
}

uint64_t acv2::CodecConverterFactory::GetAvailableEncodeBitRatesInfo(AudioComponent *this, unsigned int *a2)
{
  outInstance = 0;
  PropertyInfo = AudioComponentInstanceNew(this[4], &outInstance);
  if (!PropertyInfo)
  {
    outWritable = 0;
    PropertyInfo = AudioCodecGetPropertyInfo(outInstance, 0x61627274u, a2, &outWritable);
    AudioComponentInstanceDispose(outInstance);
  }

  return PropertyInfo;
}

BOOL acv2::CodecConverterFactory::CanInitializeWithMagicCookie(AudioComponent *this, UInt32 *a2, const void *a3, int *a4)
{
  os_unfair_lock_lock(&acv2::sCodecConverterFactoryLocker);
  outInstance = 0;
  if (AudioComponentInstanceNew(this[4], &outInstance))
  {
    v8 = 1;
  }

  else
  {
    v11 = outInstance;
    v9 = AudioCodecInitialize(outInstance, 0, 0, a3, *a2);
    *a4 = v9;
    v8 = v9 == 0;
    AudioCodecAutoDisposer::~AudioCodecAutoDisposer(&v11);
  }

  os_unfair_lock_unlock(&acv2::sCodecConverterFactoryLocker);
  return v8;
}

void sub_18F7EF3B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, OpaqueAudioComponentInstance *a9)
{
  AudioCodecAutoDisposer::~AudioCodecAutoDisposer(&a9);
  os_unfair_lock_unlock(&acv2::sCodecConverterFactoryLocker);
  _Unwind_Resume(a1);
}

uint64_t acv2::CodecConverterFactory::GetName(acv2::CodecConverterFactory *this)
{
  os_unfair_lock_lock(&acv2::sCodecConverterFactoryLocker);
  if (*(this + 72) == 1)
  {
LABEL_10:
    v2 = *(this + 5);
    goto LABEL_11;
  }

  *(this + 72) = 1;
  outInstance = 0;
  if (!AudioComponentInstanceNew(*(this + 4), &outInstance))
  {
    ioPropertyDataSize = 8;
    outPropertyData = 0;
    if (!AudioCodecGetProperty(outInstance, 0x6C666F72u, &ioPropertyDataSize, &outPropertyData))
    {
      v3 = outPropertyData;
      if (outPropertyData)
      {
        v4 = CFGetTypeID(outPropertyData);
        if (v4 != CFStringGetTypeID())
        {
          exception = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(exception, "Could not construct");
        }
      }

      v5 = *(this + 5);
      *(this + 5) = v3;
      if (v5)
      {
        CFRelease(v5);
      }
    }

    AudioComponentInstanceDispose(outInstance);
    goto LABEL_10;
  }

  v2 = 0;
LABEL_11:
  os_unfair_lock_unlock(&acv2::sCodecConverterFactoryLocker);
  return v2;
}

void sub_18F7EF500(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9)
{
  __cxa_free_exception(v9);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(&a9);
  os_unfair_lock_unlock(&acv2::sCodecConverterFactoryLocker);
  _Unwind_Resume(a1);
}

void std::vector<double>::push_back[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
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
      std::allocator<SyncSampleEntry>::allocate_at_least[abi:ne200100](v11);
    }

    v12 = (8 * (v8 >> 3));
    *v12 = *a2;
    v6 = v12 + 1;
    memcpy(0, v7, v8);
    v13 = *a1;
    *a1 = 0;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(a1 + 8) = v6;
}

uint64_t std::__function::__value_func<int ()(__sFILE *)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t *std::unique_ptr<__sFILE,std::function<int ()(__sFILE*)>>::reset[abi:ne200100](uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v3 = v1;
    v2 = result[4];
    if (!v2)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    return (*(*v2 + 48))(v2, &v3);
  }

  return result;
}

uint64_t std::__function::__func<int (*)(__sFILE *),std::allocator<int (*)(__sFILE *)>,int ()(__sFILE *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F032FEE0;
  a2[1] = v2;
  return result;
}

void acv2::CodecDecoderFactory::~CodecDecoderFactory(acv2::CodecDecoderFactory *this)
{
  *this = &unk_1F032FE48;
  v1 = *(this + 5);
  if (v1)
  {
    CFRelease(v1);
  }

  JUMPOUT(0x193ADF220);
}

{
  *this = &unk_1F032FE48;
  v1 = *(this + 5);
  if (v1)
  {
    CFRelease(v1);
  }
}

void acv2::CodecEncoderFactory::~CodecEncoderFactory(acv2::CodecEncoderFactory *this)
{
  *this = &unk_1F032FE48;
  v1 = *(this + 5);
  if (v1)
  {
    CFRelease(v1);
  }

  JUMPOUT(0x193ADF220);
}

{
  *this = &unk_1F032FE48;
  v1 = *(this + 5);
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t FLACAudioFile::SetVorbisCommentFieldList(uint64_t a1, unsigned int a2, CFDictionaryRef *a3)
{
  v5 = *(a1 + 120);
  if (v5 && *(v5 + 24) > 0)
  {
    return 1869640813;
  }

  if ((*(a1 + 100) & 2) == 0)
  {
    return 1886547263;
  }

  if (a2 >= 0x10)
  {
    v7 = (a2 - 16) / 0x18uLL;
  }

  else
  {
    v7 = 0;
  }

  VorbisComment::Clear((a1 + 208));
  if (*a3)
  {
    Value = CFDictionaryGetValue(*a3, @"VENDOR");
    VorbisComment::SetVendorString((a1 + 208), Value);
  }

  std::vector<std::pair<applesauce::CF::StringRef,applesauce::CF::StringRef>>::reserve((a1 + 216), v7);
  if (v7)
  {
    v9 = *MEMORY[0x1E695E480];
    v10 = (a3 + 3);
    do
    {
      v11 = *(v10 - 1);
      if (v11)
      {
        v12 = *v10;
        if (*v10)
        {
          Copy = CFStringCreateCopy(v9, v11);
          v20 = Copy;
          if (Copy)
          {
            v14 = CFGetTypeID(Copy);
            if (v14 != CFStringGetTypeID())
            {
              exception = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(exception, "Could not construct");
            }
          }

          v15 = CFStringCreateCopy(v9, v12);
          cf = v15;
          if (v15)
          {
            v16 = CFGetTypeID(v15);
            if (v16 != CFStringGetTypeID())
            {
              v18 = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(v18, "Could not construct");
            }
          }

          VorbisComment::AddUserComment((a1 + 208), v20, &cf);
          if (cf)
          {
            CFRelease(cf);
          }

          if (v20)
          {
            CFRelease(v20);
          }
        }
      }

      v10 += 3;
      --v7;
    }

    while (v7);
  }

  return 0;
}

void sub_18F7EFB44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(&a9);
  applesauce::CF::StringRef::~StringRef(&a10);
  _Unwind_Resume(a1);
}

uint64_t FLACAudioFile::ParseAudioFile(FLACAudioFile *this)
{
  v51 = *MEMORY[0x1E69E9840];
  v43 = 0;
  v39 = 0;
  v37 = 0;
  PacketHeader = (*(**(this + 13) + 48))(*(this + 13), 0, 0, 10, v47, &v43);
  if (!PacketHeader)
  {
    v6 = 0;
    while (v43 >= 0xA)
    {
      v7 = ID3Size(v43, v47, &v37);
      if (!v7)
      {
        break;
      }

      if (*(this + 32) == -1)
      {
        *(this + 32) = 0;
      }

      v6 += v7;
      PacketHeader = (*(**(this + 13) + 48))(*(this + 13), 0, v6, 10, v47, &v43);
      if (PacketHeader)
      {
        goto LABEL_2;
      }
    }

    v42 = 0;
    v40 = 0u;
    v41 = 0u;
    PacketHeader = (*(**(this + 13) + 48))(*(this + 13), 0, v6, 4, &v39, &v43);
    if (PacketHeader)
    {
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        return PacketHeader;
      }

      *buf = 136315394;
      *&buf[4] = "FLACAudioFile.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 409;
      v3 = MEMORY[0x1E69E9C10];
      v4 = "%25s:%-5d  FLAC FSRead Failed 1";
      goto LABEL_4;
    }

    PacketHeader = 1685348671;
    if (v43 <= 3)
    {
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        return PacketHeader;
      }

      *buf = 136315394;
      *&buf[4] = "FLACAudioFile.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 410;
      v3 = MEMORY[0x1E69E9C10];
      v4 = "%25s:%-5d  Unexpected eof while reading FLAC stream marker";
      goto LABEL_4;
    }

    v8 = v39;
    v39 = bswap32(v39);
    if (v8 != 1130450022)
    {
      return PacketHeader;
    }

    v9 = v6 + 4;
    while (1)
    {
      PacketHeader = (*(**(this + 13) + 48))(*(this + 13), 0, v9, 4, &v39, &v43);
      if (PacketHeader)
      {
        return PacketHeader;
      }

      if (v43 <= 3)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "FLACAudioFile.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 427;
          _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  Unexpected eof while reading FLAC metadata block header", buf, 0x12u);
        }

        return 1685348671;
      }

      v11 = bswap32(v39);
      v12 = HIBYTE(v11) & 0x7F;
      v13 = v11 & 0xFFFFFF;
      v38 = v11 & 0xFFFFFF;
      v39 = v11;
      if (v12 > 5)
      {
        if (v12 != 6)
        {
          if (v12 == 127)
          {
            return 1685348671;
          }

          goto LABEL_63;
        }

        if (!*(this + 31))
        {
          *buf = 0;
          PacketHeader = VorbisComment::ParsePictureBlock(*(this + 13), (v9 + 4), &v38, buf, v10);
          *(this + 31) = *buf;
LABEL_61:
          if (PacketHeader)
          {
            return PacketHeader;
          }

          v13 = v38;
        }
      }

      else
      {
        if (!v12)
        {
          if (v13 < 0x22)
          {
            return 1718449215;
          }

          v19 = *(this + 19);
          v20 = *(this + 20) - v19;
          if (v20 > 0x31)
          {
            if (v20 != 50)
            {
              *(this + 20) = v19 + 50;
            }
          }

          else
          {
            std::vector<unsigned char>::__append((this + 152), 50 - v20);
            v19 = *(this + 19);
          }

          *v19 = xmmword_18F901890;
          v46 = 0;
          PacketHeader = (*(**(this + 13) + 48))(*(this + 13), 0, v9 + 4, 34, v19 + 16, &v46);
          if (!PacketHeader)
          {
            if (v46 >= 0x22)
            {
              *(*(this + 19) + 12) = 0x80;
              v44[0] = (v19 + 16);
              v44[1] = (v19 + 16);
              v44[2] = (v19 + 50);
              v45 = 0;
              if (((v19 + 16) & 3) != 0)
              {
                v21 = 0;
                v22 = -8;
                v23 = 16;
                do
                {
                  HIDWORD(v45) = v22 + 16;
                  v24 = (v19 + v23 + 1);
                  v21 = *(v19 + v23) | (v21 << 8);
                  LODWORD(v45) = v21;
                  ++v23;
                  v44[0] = v24;
                  v22 += 8;
                }

                while ((v23 & 3) != (-v19 & 3));
                LODWORD(v45) = v21 << (24 - v22);
              }

              FLACUnpackStreamInfo(v44, buf);
              if (*buf == *&buf[4])
              {
                v26 = *buf;
              }

              else
              {
                v26 = 0;
              }

              *(this + 50) = *&buf[12];
              DWORD2(v40) = 1718378851;
              LODWORD(v41) = 0;
              DWORD1(v41) = v26;
              LODWORD(v25) = *&buf[16];
              *&v40 = v25;
              v27 = v49;
              HIDWORD(v41) = *&buf[20];
              *(this + 35) = kFLACChannelConfigToLayoutTag[*&buf[20] - 1];
              *(this + 36) = v27;
              HIDWORD(v29) = v27 - 16;
              LODWORD(v29) = v27 - 16;
              v28 = v29 >> 2;
              if (v28 <= 4 && ((0x17u >> v28) & 1) != 0)
              {
                HIDWORD(v40) = dword_18F917E58[v28];
              }

              v42 = 0;
              DWORD2(v41) = 0;
              v30 = v50;
              *(this + 23) = v50;
              if (v26)
              {
                v31 = v30 / v26;
                if (v30 > v26 * (v30 / v26))
                {
                  LODWORD(v31) = v31 + 1;
                }

                *(this + 49) = v31 * v26 - v30;
              }

              (*(*this + 184))(this, &v40);
              PacketHeader = 0;
            }

            else
            {
              PacketHeader = 4294967257;
            }
          }

          goto LABEL_61;
        }

        if (v12 == 4)
        {
          VorbisComment::VorbisComment(buf, *(this + 13), v9 + 4, v11 & 0xFFFFFF, 0);
          v14 = *(this + 26);
          *(this + 26) = *buf;
          *buf = v14;
          std::vector<std::pair<applesauce::CF::StringRef,applesauce::CF::StringRef>>::__vdeallocate(this + 27);
          *(this + 216) = *&buf[8];
          v15 = v49;
          v16 = v50;
          *&buf[16] = 0;
          v49 = 0;
          *&buf[8] = 0;
          v17 = *(this + 30);
          *(this + 29) = v15;
          *(this + 30) = v16;
          v50 = v17;
          if (v17)
          {
            CFRelease(v17);
          }

          v44[0] = &buf[8];
          std::vector<std::pair<applesauce::CF::StringRef,applesauce::CF::StringRef>>::__destroy_vector::operator()[abi:ne200100](v44);
          if (*buf)
          {
            CFRelease(*buf);
          }

          if (!*(this + 31))
          {
            VorbisComment::GetAlbumArtwork(buf, *(this + 30));
            v18 = *buf;
            if (*buf)
            {
              *(this + 31) = CFRetain(*buf);
              CFRelease(v18);
            }
          }
        }
      }

LABEL_63:
      v9 += v13 + 4;
      if ((v11 & 0x80000000) != 0)
      {
        while (1)
        {
          v39 = 0;
          v34 = (*(**(this + 13) + 48))(*(this + 13), 0, v9, 4, &v39, &v43);
          LOWORD(v33) = v39;
          if (v34 || v43 == 0)
          {
            break;
          }

          v32 = bswap32(v39);
          v33 = HIWORD(v32);
          v39 = HIWORD(v32);
          if ((v32 & 0xFFFC0000) == 0xFFF80000)
          {
            break;
          }

          ++v9;
        }

        PacketHeader = 1685348671;
        if ((v33 & 0xFFFC) != 0xFFF8)
        {
          return PacketHeader;
        }

        *(this + 9) = v9;
        PacketHeader = (*(*this + 696))(this, 1, 0, 1);
        if (PacketHeader)
        {
          if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            return PacketHeader;
          }

          *buf = 136315394;
          *&buf[4] = "FLACAudioFile.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 491;
          v3 = MEMORY[0x1E69E9C10];
          v4 = "%25s:%-5d  FLACAudioFile::ParseAudioFile : ScanForPackets failed";
          goto LABEL_4;
        }

        PacketHeader = FLACAudioFile::ParseFirstPacketHeader(this, &v40, v36);
        if (PacketHeader && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "FLACAudioFile.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 496;
          v3 = MEMORY[0x1E69E9C10];
          v4 = "%25s:%-5d  FLAC FSRead Failed 2";
          goto LABEL_4;
        }

        return PacketHeader;
      }
    }
  }

LABEL_2:
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    *&buf[4] = "FLACAudioFile.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 385;
    v3 = MEMORY[0x1E69E9C10];
    v4 = "%25s:%-5d  FLAC FSRead Failed (ID3)";
LABEL_4:
    _os_log_impl(&dword_18F5DF000, v3, OS_LOG_TYPE_ERROR, v4, buf, 0x12u);
  }

  return PacketHeader;
}

void sub_18F7F047C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t FLACAudioFile::ParseFirstPacketHeader(FLACAudioFile *this, uint64_t a2, AudioStreamBasicDescription *a3)
{
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  v5 = *(this + 15);
  if (!v5)
  {
    operator new();
  }

  v25 = 0;
  CompressedPacketTable::operator[](__p, v5, 0);
  v6 = __p[0];
  *a2 = 0;
  *(a2 + 8) = 1718378851;
  *(a2 + 12) = 0;
  *(a2 + 28) = 0;
  *(a2 + 20) = 0;
  *(a2 + 36) = 0;
  std::vector<unsigned char>::vector[abi:ne200100](__p, 16);
  v7 = (*(**(this + 13) + 48))(*(this + 13), 0, &v6[*(this + 9)], 16, __p[0], &v25);
  v8 = __p[0];
  if (v7)
  {
    v9 = 0;
  }

  else
  {
    v9 = v25 == 16;
  }

  if (!v9)
  {
    if (!__p[0])
    {
      return v7;
    }

    goto LABEL_46;
  }

  v10 = *(__p[0] + 1);
  if (v10)
  {
    v7 = 0;
  }

  else
  {
    v7 = (*(**(this + 13) + 48))(*(this + 13), 0, &v6[*(this + 9)], 4, this + 176, &v25);
    v8 = __p[0];
  }

  v11 = v8[2];
  v12 = v11 >> 4;
  *(a2 + 20) = kFLACBlockSizes[v11 >> 4];
  v13 = v8[2];
  v14 = v13 & 0xF;
  *a2 = kFLACSampleRates[v13 & 0xF];
  v15 = *(kFLACChannelConfigToLayoutTag + ((v8[3] >> 2) & 0x3C));
  *(this + 35) = v15;
  *(a2 + 28) = v15;
  HIDWORD(v17) = kFLACBitDepths[(v8[3] >> 1) & 7] - 16;
  LODWORD(v17) = HIDWORD(v17);
  v16 = v17 >> 2;
  if (v16 <= 4 && ((0x17u >> v16) & 1) != 0)
  {
    *(a2 + 12) = dword_18F917E58[v16];
  }

  if (v14 == 14 || (v11 & 0xE0) == 0x60 || (v13 & 0xE) == 0xC)
  {
    if (v8[4] < 0)
    {
      v19 = v8[4];
      if ((v19 & 0xE0) == 0xC0)
      {
        v18 = 6;
      }

      else if ((v19 & 0xF0) == 0xE0)
      {
        v18 = 7;
      }

      else if ((v19 & 0xF8) == 0xF0)
      {
        v18 = 8;
      }

      else if ((v19 & 0xFC) == 0xF8)
      {
        v18 = 9;
      }

      else if ((v19 & 0xFE) == 0xFC)
      {
        v18 = 10;
      }

      else if ((v10 & (v19 == 254)) != 0)
      {
        v18 = 11;
      }

      else
      {
        v18 = 4;
      }
    }

    else
    {
      v18 = 5;
    }
  }

  else
  {
    v18 = 4;
  }

  if (v12 == 7)
  {
    v20 = __rev16(*&v8[v18]);
    v21 = 2;
  }

  else
  {
    if (v12 != 6)
    {
      goto LABEL_39;
    }

    v20 = v8[v18];
    v21 = 1;
  }

  *(a2 + 20) = v20 + 1;
  v18 += v21;
LABEL_39:
  switch(v14)
  {
    case 13:
      v22 = __rev16(*&v8[v18]);
      goto LABEL_45;
    case 12:
      v22 = 1000 * v8[v18];
LABEL_45:
      *a2 = v22;
      break;
    case 14:
      v22 = 2 * (4 * __rev16(*&v8[v18]) + (bswap32(*&v8[v18]) >> 16));
      goto LABEL_45;
  }

LABEL_46:
  __p[1] = v8;
  operator delete(v8);
  return v7;
}

void sub_18F7F0814(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::pair<applesauce::CF::StringRef,applesauce::CF::StringRef>>::__vdeallocate(uint64_t *a1)
{
  if (*a1)
  {
    std::vector<std::pair<applesauce::CF::StringRef,applesauce::CF::StringRef>>::clear[abi:ne200100](a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void *VorbisComment::GetAlbumArtwork(void *this, const void *a2)
{
  v3 = this;
  if (a2)
  {
    this = CFRetain(a2);
  }

  *v3 = a2;
  return this;
}

void std::vector<std::pair<applesauce::CF::StringRef,applesauce::CF::StringRef>>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 16)
  {
    v4 = *(i - 8);
    if (v4)
    {
      CFRelease(v4);
    }

    v6 = *(i - 16);
    v5 = v6;
    if (v6)
    {
      CFRelease(v5);
    }
  }

  a1[1] = v2;
}

uint64_t FLACAudioFile::SetAlbumArtwork(FLACAudioFile *this, CFTypeRef cf)
{
  v4 = *(this + 15);
  if (v4 && *(v4 + 24) > 0)
  {
    return 1869640813;
  }

  if ((*(this + 100) & 2) == 0)
  {
    return 1886547263;
  }

  if (cf)
  {
    CFRetain(cf);
  }

  v6 = *(this + 31);
  if (v6)
  {
    CFRelease(v6);
  }

  result = 0;
  *(this + 31) = cf;
  return result;
}

uint64_t FLACAudioFile::GetAlbumArtwork(FLACAudioFile *this, const __CFData **a2)
{
  v4 = *(this + 31);
  if (v4)
  {
    CFRetain(v4);
    v5 = *(this + 31);
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
  return 0;
}

void FLACAudioFile::ScanForPackets(FLACAudioFile *this, uint64_t a2, DataSource *a3)
{
  v43 = *MEMORY[0x1E69E9840];
  v39.mStartOffset = 0;
  *&v39.mVariableFramesInPacket = 0;
  v37 = 0;
  v36 = 0;
  v5 = *(this + 15);
  if (!v5)
  {
    operator new();
  }

  v6 = *(v5 + 24);
  if (a2 == -1 || v6 < a2)
  {
    v38 = 0;
    if ((*(**(this + 13) + 24))(*(this + 13), &v37, a3))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "FLACAudioFile.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 1807;
        _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  GetSize failed", buf, 0x12u);
      }
    }

    else
    {
      if (v6)
      {
        v7 = *(this + 9);
        v8 = v6 - 1;
        CompressedPacketTable::operator[](buf, v5, v6 - 1);
        v9 = *buf;
        CompressedPacketTable::operator[](&__p, v5, v8);
        v10 = v9 + v7 + HIDWORD(v35);
      }

      else
      {
        (*(*this + 656))(this, 0);
        v10 = *(this + 9);
      }

      if (a2 == -1)
      {
        v12 = -1;
      }

      else
      {
        v11 = *(this + 15);
        if (v11)
        {
          v11 = *(v11 + 24);
        }

        v12 = a2 - v11;
      }

      std::vector<unsigned char>::vector[abi:ne200100](&__p, 16);
      while (1)
      {
        v13 = v10 - *(this + 9);
        v39.mStartOffset = v13;
        if ((*(**(this + 13) + 48))(*(this + 13), 0, v10, 16, __p, &v38) || v38 < 7)
        {
          break;
        }

        if ((*(__p + 1) & 0xFC | (*__p << 8)) != 0xFFF8)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "FLACAudioFile.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 1848;
            _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  FLAC - Syncword not found", buf, 0x12u);
          }

          break;
        }

        FLACAudioFile::GetHeaderSize(this, v10, &v36, 0);
        LODWORD(v15) = 0;
        v16 = v36;
        v17 = v10 + v36;
        v40 = 0;
        v18 = v37 - v17;
        if (v37 >= v17)
        {
          if (v18 > 5)
          {
            v19 = *(this + 13);
            v20 = *(this + 36);
            v21 = v19 * *(this + 11) * (v20 >> 3);
            if (v20 == 20)
            {
              v21 = (v21 * 1.5);
            }

            if (!v21)
            {
              v21 = 0x100000;
            }

            if (v19)
            {
              v22 = 8 * v19 + 18;
            }

            else
            {
              v22 = 82;
            }

            LODWORD(v23) = v21 + v22;
            v24 = *(this + 50);
            if (v23 <= v24)
            {
              v23 = v24;
            }

            else
            {
              v23 = v23;
            }

            if (v18 >= v23)
            {
              v15 = v23;
            }

            else
            {
              v15 = v18;
            }

            std::vector<unsigned char>::vector[abi:ne200100](buf, v15);
            if ((*(**(this + 13) + 48))(*(this + 13), 0, v17, v15, *buf, &v40))
            {
              v25 = 0;
            }

            else
            {
              v25 = v40 == v15;
            }

            if (v25)
            {
              if (v15 >= 2)
              {
                v26 = 0;
                v27 = **buf;
                while (1)
                {
                  v28 = *(*buf + v26 + 1);
                  if (v27 == 255 && (v28 & 0xFE) == 0xF8)
                  {
                    v41 = 0;
                    FLACAudioFile::GetHeaderSize(this, v17 + v26, &v41, 1);
                    if (v41)
                    {
                      break;
                    }
                  }

                  if (v26 + 1 < v15)
                  {
                    v29 = v26 + 2;
                    ++v26;
                    v27 = v28;
                    if (v29 < v15)
                    {
                      continue;
                    }
                  }

                  goto LABEL_53;
                }

                LODWORD(v15) = v26;
              }
            }

            else
            {
              LODWORD(v15) = 0;
            }

LABEL_53:
            if (*buf)
            {
              *&buf[8] = *buf;
              operator delete(*buf);
            }
          }

          else
          {
            LODWORD(v15) = v37 - v17;
          }
        }

        v30 = v15 + v16;
        v39.mDataByteSize = v15 + v16;
        if (v30 > (*(*this + 640))(this))
        {
          (*(*this + 656))(this, v15 + v16);
        }

        v31 = v37;
        if (v10 + v30 > v37)
        {
          *(this + 180) = 1;
          break;
        }

        v32 = v13 + *(this + 9);
        v33 = v32 + v30;
        if (v32 + v30 >= v37)
        {
          *(this + 180) = 1;
        }

        else if (v32 > v10)
        {
          v39.mDataByteSize = v30 + v32 - v10;
        }

        AudioFileObject::AppendPacket(this, &v39);
        if (v12 == -1)
        {
          v12 = -1;
        }

        else
        {
          --v12;
        }

        if (v12)
        {
          v10 = v33;
          if (v33 < v31)
          {
            continue;
          }
        }

        break;
      }

      if (__p)
      {
        v35 = __p;
        operator delete(__p);
      }
    }
  }
}

void sub_18F7F0FB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a10)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void FLACAudioFile::GetHeaderSize(FLACAudioFile *this, uint64_t a2, unsigned int *a3, int a4)
{
  v30 = 0;
  *a3 = 0;
  std::vector<unsigned char>::vector[abi:ne200100](__p, 16);
  v8 = __p[0];
  v9 = (*(**(this + 13) + 48))(*(this + 13), 0, a2, 16, __p[0], &v30);
  v10 = __p[0];
  if (v9)
  {
    v11 = 0;
  }

  else
  {
    v11 = v30 >= 7;
  }

  if (v11)
  {
    if ((*(__p[0] + 1) & 2) != 0)
    {
      goto LABEL_54;
    }

    v12 = *(__p[0] + 2);
    if (v12 < 0x10)
    {
      goto LABEL_54;
    }

    v13 = v12 & 0xF;
    if ((v12 & 0xF) == 0xF)
    {
      goto LABEL_54;
    }

    v14 = *(__p[0] + 3);
    if (v14 > 0xAF)
    {
      goto LABEL_54;
    }

    if (~v14 & 6) == 0 || (v14)
    {
      goto LABEL_54;
    }

    v16 = *(__p[0] + 4);
    if (v16 < 0)
    {
      if ((v16 & 0xE0) == 0xC0)
      {
        v17 = 6;
      }

      else if ((v16 & 0xF0) == 0xE0)
      {
        v17 = 7;
      }

      else if ((v16 & 0xF8) == 0xF0)
      {
        v17 = 8;
      }

      else if ((v16 & 0xFC) == 0xF8)
      {
        v17 = 9;
      }

      else if ((v16 & 0xFE) == 0xFC)
      {
        v17 = 10;
      }

      else
      {
        v18 = 0;
        if ((*(__p[0] + 1) & 1) == 0 || *(__p[0] + 4) != 254)
        {
          goto LABEL_55;
        }

        v17 = 11;
      }
    }

    else
    {
      v17 = 5;
    }

    v19 = v12 >> 4;
    if (v19 == 7)
    {
      v17 += 2;
    }

    else if (v19 == 6)
    {
      ++v17;
    }

    if (v13 == 14)
    {
      v21 = 2 * (4 * __rev16(*(__p[0] + v17)) + (bswap32(*(__p[0] + v17)) >> 16));
    }

    else
    {
      if (v13 != 13)
      {
        v20 = 0.0;
        if (v13 == 12)
        {
          v20 = (1000 * *(__p[0] + v17++));
        }

        goto LABEL_42;
      }

      v21 = __rev16(*(__p[0] + v17));
    }

    v20 = v21;
    v17 += 2;
LABEL_42:
    v22 = 0;
    v23 = 0;
    v24 = v14 >> 4;
    v25 = (v14 >> 1) & 7;
    v26 = v17;
    do
    {
      LODWORD(v23) = FLAC_crc8[v23 ^ v8[v22++]];
    }

    while (v17 != v22);
    if (v23 == *(__p[0] + v17))
    {
      if (!a4)
      {
        goto LABEL_57;
      }

      v18 = 0;
      v27 = kFLACBitDepths[v25];
      if (v13 <= 0xB)
      {
        v20 = kFLACSampleRates[v13];
      }

      if (*(this + 36) != v27 || *(this + 13) != LOWORD(kFLACChannelConfigToLayoutTag[v24]) || *(this + 3) != v20)
      {
        goto LABEL_55;
      }

      v28 = *(this + 11);
      if ((*(__p[0] + 1) & 1) == 0 || !v28)
      {
        if (*(__p[0] + 1) & 1 | v28)
        {
LABEL_57:
          if (v26 >= v30)
          {
            v18 = 0;
          }

          else
          {
            v18 = v26 + 1;
          }

          goto LABEL_55;
        }
      }
    }

LABEL_54:
    v18 = 0;
LABEL_55:
    *a3 = v18;
    goto LABEL_56;
  }

  if (__p[0])
  {
LABEL_56:
    __p[1] = v10;
    operator delete(v10);
  }
}

void sub_18F7F12D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t FLACAudioFile::GetEstimatedDuration(FLACAudioFile *this, double *a2)
{
  v3 = *(this + 23);
  if (v3 < 1)
  {
    v5 = *(this + 11);
    if (v5)
    {
      v6 = *(this + 3);
      v4 = ((*(*this + 248))(this) * v5) / v6;
    }

    else
    {
      v4 = 0.0;
    }
  }

  else
  {
    v4 = v3 / *(this + 3);
  }

  *a2 = v4;
  return 0;
}

uint64_t FLACAudioFile::SetLoudnessInfo(const void **this, CFTypeRef *a2)
{
  v13[4] = *MEMORY[0x1E69E9840];
  v3 = *a2;
  if (*a2)
  {
    CFRetain(*a2);
  }

  v10 = v3;
  v13[0] = &unk_1F0325A70;
  v13[3] = v13;
  applesauce::CF::details::to_description_json_style_helper(__p, &v10, 0, v13);
  std::__function::__value_func<std::pair<std::string,std::string> ()(applesauce::CF::TypeRef,applesauce::CF::TypeRef)>::~__value_func[abi:ne200100](v13);
  if (v3)
  {
    CFRelease(v3);
  }

  if (!this[26] && this[28] == this[27])
  {
    VorbisComment::SetVendorString(this + 26, @"Apple");
  }

  VorbisComment::RemoveUserCommentsWithFieldName((this + 26), @"LOUDNESS");
  VorbisComment::RemoveUserCommentsWithFieldName((this + 26), @"iTunLOUD");
  applesauce::CF::StringRef::from_get(&v10, @"LOUDNESS");
  if ((v12 & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if (v4)
  {
    if ((v12 & 0x80u) == 0)
    {
      v5 = v12;
    }

    else
    {
      v5 = __p[1];
    }

    cf = CFStringCreateWithBytes(0, v4, v5, 0x8000100u, 0);
    if (!cf)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }
  }

  else
  {
    cf = 0;
  }

  VorbisComment::AddUserComment((this + 26), v10, &cf);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = this[15];
  if (v7 && v7[3] > 0)
  {
    return 1869640813;
  }

  if ((*(this + 100) & 2) != 0)
  {
    return 0;
  }

  return 1886547263;
}

void sub_18F7F1594(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(&a9);
  applesauce::CF::StringRef::~StringRef(&a10);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t FLACAudioFile::GetInfoDictionary(const __CFString **this, CACFDictionary *a2)
{
  VorbisComment::FillInfoDictionary(this + 26, a2);
  v6 = 0.0;
  v4 = ((*this)[17].info)(this, &v6);
  if (!v4)
  {
    AudioFileObject::AddDurationToInfoDictionary(v4, a2, &v6);
  }

  return 0;
}

uint64_t FLACAudioFile::SetChannelLayout(FLACAudioFile *this, UInt32 a2, const AudioChannelLayout *a3)
{
  if (a2 < 0xC)
  {
    return 561211770;
  }

  v14 = v3;
  v15 = v4;
  ioPropertyDataSize = 4;
  outPropertyData = 0;
  result = AudioFormatGetProperty(0x6E63686Du, a2, a3, &ioPropertyDataSize, &outPropertyData);
  if (!result)
  {
    if (outPropertyData != *(this + 13))
    {
      return 4294967246;
    }

    v11 = 0;
    ioPropertyDataSize = 4;
    result = AudioFormatGetProperty(0x636D636Cu, a2, a3, &ioPropertyDataSize, &v11);
    if (result)
    {
      return result;
    }

    v9 = vcnt_s8(v11);
    v9.i16[0] = vaddlv_u8(v9);
    if (v9.i32[0] == *(this + 13))
    {
      v10 = 0;
      VorbisComment::GetWAVEChannelMask(*(this + 27), *(this + 28), &v10);
      if (v10 != v11)
      {
        if (a3->mChannelLayoutTag == *(this + 35))
        {
          VorbisComment::RemoveUserCommentsWithFieldName((this + 208), @"WAVEFORMATEXTENSIBLE_CHANNEL_MASK");
        }

        else
        {
          VorbisComment::SetWAVEChannelMask(this + 26, v11);
        }
      }

      return 0;
    }

    else
    {
      return 4294967246;
    }
  }

  return result;
}

uint64_t FLACAudioFile::GetChannelLayout(FLACAudioFile *this, unsigned int *a2, AudioChannelLayout *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = 561211770;
  ioPropertyDataSize = 12;
  v14 = 0;
  if (!a2)
  {
    return v3;
  }

  if (VorbisComment::GetWAVEChannelMask(*(this + 27), *(this + 28), &v14))
  {
    v7 = 12;
    goto LABEL_4;
  }

  HIDWORD(v14) = *(this + 13);
  PropertyInfo = AudioFormatGetPropertyInfo(0x636C636Du, 8u, &v14, &ioPropertyDataSize);
  if (!PropertyInfo)
  {
    v7 = ioPropertyDataSize;
LABEL_4:
    if (*a2 >= v7)
    {
      v8 = v7 >= *a2;
      p_ioPropertyDataSize = &ioPropertyDataSize;
      if (v8)
      {
        p_ioPropertyDataSize = a2;
      }

      v10 = *p_ioPropertyDataSize;
      *a2 = v10;
      if (a3)
      {
        if (v14)
        {
          return AudioFormatGetProperty(0x636C636Du, 8u, &v14, &ioPropertyDataSize, a3);
        }

        else
        {
          bzero(a3, v10);
          v3 = 0;
          a3->mChannelLayoutTag = *(this + 35);
        }
      }

      else
      {
        return 0;
      }
    }

    return v3;
  }

  v12 = PropertyInfo;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v17 = "FLACAudioFile.cpp";
    v18 = 1024;
    v19 = 1174;
    _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  FLACAudioFile::GetChannelLayout: can't get AudioChannelLayout size for channel mask", buf, 0x12u);
  }

  return v12;
}

uint64_t FLACAudioFile::GetChannelLayoutSize(FLACAudioFile *this, unsigned int *a2, unsigned int *a3)
{
  inSpecifier = 0;
  if (a3)
  {
    *a3 = *(this + 100) & 2;
  }

  if (!a2)
  {
    return 0;
  }

  if (VorbisComment::GetWAVEChannelMask(*(this + 27), *(this + 28), &inSpecifier))
  {
    result = 0;
    *a2 = 32;
  }

  else
  {
    HIDWORD(inSpecifier) = *(this + 13);
    return AudioFormatGetPropertyInfo(0x636C636Du, 8u, &inSpecifier, a2);
  }

  return result;
}

uint64_t FLACAudioFile::SetMagicCookieData(FLACAudioFile *this, size_t __len, char *__src)
{
  v4 = __len;
  if (__len < 0x32 || *(__src + 1) == 1632396900)
  {
    v7 = (this + 152);
    v6 = *(this + 19);
    v8 = *(this + 21);
    if (v8 - v6 < __len)
    {
      if (v6)
      {
        *(this + 20) = v6;
        operator delete(v6);
        v8 = 0;
        *v7 = 0;
        *(this + 20) = 0;
        *(this + 21) = 0;
      }

      v9 = 2 * v8;
      if (2 * v8 <= v4)
      {
        v9 = v4;
      }

      if (v8 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v10 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<unsigned char>::__vallocate[abi:ne200100](this + 19, v10);
    }

    v11 = *(this + 20);
    if (v11 - v6 >= __len)
    {
      if (__len)
      {
        memmove(*(this + 19), __src, __len);
      }

      result = 0;
      v15 = &v6[v4];
    }

    else
    {
      if (v11 != v6)
      {
        memmove(*(this + 19), __src, v11 - v6);
      }

      v16 = &__src[v11 - v6];
      v17 = (&v6[v4] - v11);
      v18 = *(this + 20);
      do
      {
        v19 = *v16++;
        *v18++ = v19;
        --v17;
      }

      while (v17);
      result = 0;
      v15 = v18;
    }

    goto LABEL_28;
  }

  outPropertyDataSize = 50;
  result = AudioFormatGetPropertyInfo(0x6D636466u, __len, __src, &outPropertyDataSize);
  if (result)
  {
    goto LABEL_27;
  }

  v13 = *(this + 19);
  v14 = *(this + 20) - v13;
  if (outPropertyDataSize <= v14)
  {
    if (outPropertyDataSize < v14)
    {
      *(this + 20) = &v13[outPropertyDataSize];
    }
  }

  else
  {
    std::vector<unsigned char>::__append((this + 152), outPropertyDataSize - v14);
    v13 = *(this + 19);
  }

  result = AudioFormatGetProperty(0x6D636466u, v4, __src, &outPropertyDataSize, v13);
  if (result)
  {
LABEL_27:
    v15 = *(this + 19);
LABEL_28:
    *(this + 20) = v15;
  }

  return result;
}

uint64_t FLACAudioFile::GetMagicCookieData(FLACAudioFile *this, unsigned int *a2, void *__dst)
{
  result = 2003334207;
  if (__dst)
  {
    if (a2)
    {
      v6 = *(this + 19);
      v7 = *(this + 20);
      if (v6 != v7)
      {
        v8 = v7 - v6;
        result = 561211770;
        if (v8 <= *a2)
        {
          memcpy(__dst, v6, v8);
          result = 0;
          *a2 = *(this + 40) - *(this + 38);
        }
      }
    }

    else
    {
      return 561211770;
    }
  }

  return result;
}

uint64_t FLACAudioFile::GetMagicCookieDataSize(FLACAudioFile *this, unsigned int *a2, unsigned int *a3)
{
  if (a3)
  {
    *a3 = *(this + 100) & 2;
  }

  if (!a2)
  {
    return 0;
  }

  v3 = *(this + 19);
  v4 = *(this + 20);
  if (v3 == v4)
  {
    if ((*(this + 100) & 2) == 0)
    {
      return 2003334207;
    }

    v5 = 0;
  }

  else
  {
    v5 = v4 - v3;
  }

  result = 0;
  *a2 = v5;
  return result;
}

uint64_t FLACAudioFile::GetBitRate(FLACAudioFile *this, unsigned int *a2)
{
  v4 = *(this + 23) + *(this + 49);
  if (v4 < 1)
  {
    return AudioFileObject::GetBitRate(this, a2);
  }

  v5 = *(this + 3);
  if (v5 <= 0.0)
  {
    return AudioFileObject::GetBitRate(this, a2);
  }

  v6 = v4 / v5;
  v10 = 0;
  v7 = (*(**(this + 13) + 24))(*(this + 13), &v10);
  if (v6 <= 0.0 || v7 != 0)
  {
    return AudioFileObject::GetBitRate(this, a2);
  }

  result = 0;
  *a2 = ((v10 - *(this + 9)) * 8.0 / v6);
  return result;
}

uint64_t FLACAudioFile::GetNumPackets(FLACAudioFile *this)
{
  if (((*(this + 180) & 1) != 0 || !(*(*this + 696))(this, -1, 0, 1)) && (v2 = *(this + 15)) != 0)
  {
    return *(v2 + 24);
  }

  else
  {
    return 0;
  }
}

uint64_t FLACAudioFile::GetNumBytes(FLACAudioFile *this)
{
  v4 = 0;
  v2 = (*(**(this + 13) + 24))(*(this + 13), &v4);
  result = v4;
  if (!v2)
  {
    return v4 - *(this + 9);
  }

  return result;
}

uint64_t FLACAudioFile::GetFormatList(FLACAudioFile *this, unsigned int *a2, AudioFormatListItem *a3)
{
  v6 = *(this + 3);
  v7 = *(this + 8);
  v13[0] = *(this + 36);
  *(v13 + 12) = *(this + 3);
  v8 = *(this + 35);
  v12 = 0;
  WAVEChannelMask = VorbisComment::GetWAVEChannelMask(*(this + 27), *(this + 28), &v12);
  if (!WAVEChannelMask)
  {
    v8 = AudioFormatProperty_LayoutTagForWAVEChannelMask(v12, inSpecifier);
  }

  memset(inSpecifier, 0, sizeof(inSpecifier));
  DWORD2(inSpecifier[0]) = v7;
  v10 = *(this + 19);
  v15 = 0;
  v16 = v10;
  v17 = *(this + 40) - v10;
  if (AudioFormatGetProperty(0x666C7374u, 0x38u, inSpecifier, a2, a3))
  {
    a3->mASBD.mSampleRate = v6;
    a3->mASBD.mFormatID = v7;
    *&a3->mASBD.mFormatFlags = v13[0];
    *&a3->mASBD.mBytesPerFrame = *(v13 + 12);
    a3->mChannelLayoutTag = v8;
    *a2 = 48;
  }

  else if (!WAVEChannelMask)
  {
    a3->mChannelLayoutTag = v8;
  }

  return 0;
}

uint64_t FLACAudioFile::GetFormatListInfo(FLACAudioFile *this, UInt32 *outPropertyDataSize, unsigned int *a3)
{
  v5 = *(this + 8);
  memset(v8, 0, sizeof(v8));
  DWORD2(v8[0]) = v5;
  v6 = *(this + 19);
  v9 = 0;
  v10 = v6;
  v11 = *(this + 40) - v6;
  if (AudioFormatGetPropertyInfo(0x666C7374u, 0x38u, v8, outPropertyDataSize))
  {
    *outPropertyDataSize = 48;
    *a3 = 0;
  }

  return 0;
}

uint64_t FLACAudioFile::SetProperty(FLACAudioFile *this, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  switch(a2)
  {
    case 0x61617274:
      if (a3 < 8)
      {
        return 561211770;
      }

      return (*(*this + 728))(this, *a4);
    case 0x76636673:
      if (a3 >= 0x10)
      {
        return (*(*this + 760))(this, a3, a4);
      }

      return 561211770;
    case 0x706E666F:
      if (a3 >= 8)
      {
        v4 = 0;
        *(this + 49) = *(a4 + 3);
        return v4;
      }

      return 561211770;
    default:
      return AudioFileObject::SetProperty(this, a2, a3, a4);
  }
}

uint64_t FLACAudioFile::GetProperty(FLACAudioFile *this, int a2, unsigned int *a3, uint64_t *a4)
{
  v6 = this;
  if (a2 <= 1886283374)
  {
    if (a2 <= 1768174446)
    {
      if (a2 != 1633776244)
      {
        if (a2 == 1751217000)
        {
          if (*a3 >= 0x10)
          {
            v7 = *(this + 19);
          }

          else
          {
            v7 = *(this + 19);
            if ((*(this + 20) - v7) < 0x32)
            {
              return 561211770;
            }
          }

          result = 0;
          *a4 = *(v7 + 34);
          goto LABEL_45;
        }

        goto LABEL_40;
      }

      if (*a3 >= 8)
      {
        result = (*(*this + 720))(this, a4);
        if (result)
        {
          return result;
        }

        goto LABEL_27;
      }

      return 561211770;
    }

    if (a2 == 1768174447)
    {
      result = 1886681407;
      v12 = *(v6 + 32);
      if (v12 == -1 || *(v6 + 26) || *(v6 + 28) != *(v6 + 27) || (*(v6 + 100) & 2) != 0)
      {
        return result;
      }

      if (*a3 >= 8)
      {
        result = 0;
        *a4 = v12;
LABEL_27:
        v10 = 8;
LABEL_46:
        *a3 = v10;
        return result;
      }

      return 561211770;
    }

    if (a2 == 1886090594)
    {
      if (*a3 != 4)
      {
        return 561211770;
      }

      if (*(this + 180))
      {
        a2 = 1886090594;
        goto LABEL_40;
      }

      result = 0;
      v14 = *(v6 + 13);
      v15 = *(v6 + 36);
      v16 = v14 * *(v6 + 11) * (v15 >> 3);
      if (v15 == 20)
      {
        v16 = (v16 * 1.5);
      }

      if (!v16)
      {
        v16 = 0x100000;
      }

      if (v14)
      {
        v17 = 8 * v14 + 18;
      }

      else
      {
        v17 = 82;
      }

      v13 = v16 + v17;
      v18 = *(v6 + 50);
      if (v18 >= 0x100000)
      {
        v18 = 0x100000;
      }

      if (v13 <= v18)
      {
        v13 = v18;
      }

LABEL_58:
      *a4 = v13;
      return result;
    }

LABEL_40:

    return AudioFileObject::GetProperty(this, a2, a3, a4);
  }

  if (a2 <= 1935832163)
  {
    if (a2 == 1886283375)
    {
      if (*a3 >= 0x10)
      {
        result = 0;
        *a4 = *(v6 + 23);
        v11 = *(v6 + 49);
        *(a4 + 2) = 0;
        *(a4 + 3) = v11;
LABEL_45:
        v10 = 16;
        goto LABEL_46;
      }

      return 561211770;
    }

    if (a2 == 1886616165)
    {
      if (*a3 == 4)
      {
        if ((*(this + 180) & 1) == 0)
        {
          result = (*(*this + 696))(this, -1, 0, 1);
          if (result)
          {
            return result;
          }
        }

        this = v6;
        a2 = 1886616165;
        goto LABEL_40;
      }

      return 561211770;
    }

    goto LABEL_40;
  }

  if (a2 == 1935832164)
  {
    if (*a3 != 4)
    {
      return 561211770;
    }

    v19 = 0;
    result = (*(*this + 704))(this, &v19);
    if (result)
    {
      return result;
    }

    v13 = v19;
    goto LABEL_58;
  }

  if (a2 != 1986225779)
  {
    goto LABEL_40;
  }

  v9 = *(*this + 752);

  return v9();
}

uint64_t FLACAudioFile::GetPropertyInfo(FLACAudioFile *this, int a2, unsigned int *a3, unsigned int *a4)
{
  if (a2 > 1886283374)
  {
    if (a2 != 1986225779)
    {
      if (a2 == 1935832164)
      {
        if (!a3)
        {
          goto LABEL_25;
        }

        v4 = 4;
LABEL_24:
        *a3 = v4;
LABEL_25:
        if (a4)
        {
          *a4 = 0;
        }

        return 0;
      }

      if (a2 != 1886283375)
      {
        return AudioFileObject::GetPropertyInfo(this, a2, a3, a4);
      }

      if (a3)
      {
        *a3 = 16;
      }

      if (!a4)
      {
        return 0;
      }

      v5 = 1;
      goto LABEL_32;
    }

    if (a3)
    {
      if (*(this + 26))
      {
        v8 = *(this + 27);
        v7 = *(this + 28);
      }

      else
      {
        v8 = *(this + 27);
        v7 = *(this + 28);
        if (v7 == v8)
        {
          v6 = 0;
          goto LABEL_29;
        }
      }

      v6 = 24 * ((v7 - v8) >> 4) + 16;
LABEL_29:
      *a3 = v6;
    }
  }

  else
  {
    if (a2 != 1633776244)
    {
      if (a2 == 1751217000)
      {
        if (!a3)
        {
          goto LABEL_25;
        }

        v4 = 16;
        goto LABEL_24;
      }

      if (a2 == 1768174447)
      {
        if (!a3)
        {
          goto LABEL_25;
        }

        v4 = 8;
        goto LABEL_24;
      }

      return AudioFileObject::GetPropertyInfo(this, a2, a3, a4);
    }

    if (a3)
    {
      v6 = 8;
      goto LABEL_29;
    }
  }

  if (a4)
  {
    v5 = *(this + 100) & 2;
LABEL_32:
    *a4 = v5;
  }

  return 0;
}

uint64_t FLACAudioFile::WritePackets(FLACAudioFile *this, unsigned __int8 a2, unsigned int a3, const AudioStreamPacketDescription *a4, uint64_t a5, unsigned int *a6, char *a7)
{
  v7 = a6;
  v8 = a4;
  v130 = *MEMORY[0x1E69E9840];
  v119.mStartOffset = 0;
  *&v119.mVariableFramesInPacket = 0;
  v10 = *(this + 11);
  v11 = *(this + 13);
  if (!a5 && *(this + 8) != 1718378851 && *(this + 19) == *(this + 20))
  {
    return 2003334207;
  }

  v118 = 0;
  if (!a6)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v129 = 136315394;
      *&v129[4] = "FLACAudioFile.cpp";
      *&v129[12] = 1024;
      *&v129[14] = 256;
      v105 = MEMORY[0x1E69E9C10];
LABEL_215:
      _os_log_impl(&dword_18F5DF000, v105, OS_LOG_TYPE_ERROR, "%25s:%-5d  WritePackets Failed", v129, 0x12u);
    }

    return 0;
  }

  if (!*a6)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v129 = 136315394;
      *&v129[4] = "FLACAudioFile.cpp";
      *&v129[12] = 1024;
      *&v129[14] = 257;
      v105 = MEMORY[0x1E69E9C10];
      goto LABEL_215;
    }

    return 0;
  }

  v12 = *(this + 15);
  if (!v12)
  {
    if (!a5)
    {
      operator new();
    }

LABEL_222:
    v21 = 1885563711;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v129 = 136315394;
      *&v129[4] = "FLACAudioFile.cpp";
      *&v129[12] = 1024;
      *&v129[14] = 259;
      v106 = MEMORY[0x1E69E9C10];
      v107 = "%25s:%-5d  ";
      goto LABEL_224;
    }

    return v21;
  }

  if (*(v12 + 24) != a5)
  {
    goto LABEL_222;
  }

  if (!a4)
  {
    v21 = 1885563711;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v129 = 136315394;
      *&v129[4] = "FLACAudioFile.cpp";
      *&v129[12] = 1024;
      *&v129[14] = 264;
      v106 = MEMORY[0x1E69E9C10];
      v107 = "%25s:%-5d  Packet Descriptions were not provided";
      goto LABEL_224;
    }

    return v21;
  }

  if (!*a6)
  {
    LODWORD(v13) = 0;
    v21 = 0;
    goto LABEL_226;
  }

  v111 = v12;
  v115 = v10;
  v13 = 0;
  v112 = v11 - 1;
  v14 = MEMORY[0x1E69E9C10];
  while (2)
  {
    v117 = 1130450022;
    v15 = *(this + 15);
    v16 = &v8[v13];
    if (v15)
    {
      v17 = *(v15 + 24);
      if (v17)
      {
        CompressedPacketTable::operator[](v129, v111, v17 - 1);
        v18 = *v129 + *&v129[12];
        v119.mStartOffset = v18;
        mDataByteSize = v16->mDataByteSize;
        v119.mDataByteSize = mDataByteSize;
        goto LABEL_207;
      }
    }

    *(this + 35) = kFLACChannelConfigToLayoutTag[v112];
    (*(**(this + 13) + 56))(*(this + 13), 0, 0, 4, &v117, &v118);
    v20 = *(this + 31);
    v124 = 0;
    memset(v129, 0, sizeof(v129));
    if (!*(this + 26) && *(this + 28) == *(this + 27))
    {
      v27 = 0;
      v21 = 0;
      goto LABEL_88;
    }

    LODWORD(v124) = 0;
    v21 = (*(**(this + 13) + 56))(*(this + 13), 0, 42, 4, &v124, &v124 + 4);
    if (v21)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *v128 = 136315394;
        *&v128[4] = "FLACAudioFile.cpp";
        *&v128[12] = 1024;
        *&v128[14] = 640;
        v22 = v14;
        v23 = "%25s:%-5d  FLACAudioFile::WriteVorbisComment: Writing METADATA_BLOCK_HEADER failed";
        goto LABEL_86;
      }

      goto LABEL_87;
    }

    v24 = HIDWORD(v124);
    v25 = *(this + 26);
    if (v25)
    {
      CFRetain(*(this + 26));
    }

    __p = v25;
    applesauce::CF::convert_to<std::string,0>(v128, v25);
    if (v129[23] < 0)
    {
      operator delete(*v129);
    }

    *v129 = *v128;
    *&v129[16] = *&v128[16];
    v128[23] = 0;
    v128[0] = 0;
    if (v25)
    {
      CFRelease(v25);
    }

    v26 = v129[23];
    if ((v129[23] & 0x80u) != 0)
    {
      v26 = *&v129[8];
    }

    LODWORD(v124) = v26;
    v21 = (*(**(this + 13) + 56))(*(this + 13), 0, v24 + 42, 4, &v124, &v124 + 4);
    if (v21)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *v128 = 136315394;
        *&v128[4] = "FLACAudioFile.cpp";
        *&v128[12] = 1024;
        *&v128[14] = 647;
        v22 = v14;
        v23 = "%25s:%-5d  FLACAudioFile::WriteVorbisComment: Writing length of vendor string failed";
        goto LABEL_86;
      }

      goto LABEL_87;
    }

    v28 = HIDWORD(v124) + v24;
    if ((v129[23] & 0x80u) == 0)
    {
      v29 = v129[23];
    }

    else
    {
      v29 = *&v129[8];
    }

    if ((v129[23] & 0x80u) == 0)
    {
      v30 = v129;
    }

    else
    {
      v30 = *v129;
    }

    v21 = (*(**(this + 13) + 56))(*(this + 13), 0, v28 + 42, v29, v30, &v124 + 4);
    if (v21)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *v128 = 136315394;
        *&v128[4] = "FLACAudioFile.cpp";
        *&v128[12] = 1024;
        *&v128[14] = 652;
        v22 = v14;
        v23 = "%25s:%-5d  FLACAudioFile::WriteVorbisComment: Writing vendor string failed";
        goto LABEL_86;
      }

      goto LABEL_87;
    }

    v31 = v28 + HIDWORD(v124);
    LODWORD(v124) = (*(this + 28) - *(this + 27)) >> 4;
    v21 = (*(**(this + 13) + 56))(*(this + 13), 0, v31 + 42, 4, &v124, &v124 + 4);
    if (v21)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *v128 = 136315394;
        *&v128[4] = "FLACAudioFile.cpp";
        *&v128[12] = 1024;
        *&v128[14] = 658;
        v22 = v14;
        v23 = "%25s:%-5d  FLACAudioFile::WriteVorbisComment: Writing count of comment fields failed";
        goto LABEL_86;
      }

      goto LABEL_87;
    }

    v27 = v31 + HIDWORD(v124);
    v32 = *(this + 27);
    v33 = *(this + 28);
    while (v32 != v33)
    {
      v123 = 61;
      applesauce::CF::convert_to<std::string,0>(v128, *v32);
      applesauce::CF::convert_to<std::string,0>(&__p, v32[1]);
      v34 = v128[23];
      if (v128[23] < 0)
      {
        v34 = *&v128[8];
      }

      if ((v122 & 0x80u) == 0)
      {
        v35 = v122;
      }

      else
      {
        v35 = v121;
      }

      LODWORD(v124) = v35 + v34 + 1;
      v21 = (*(**(this + 13) + 56))(*(this + 13), 0, v27 + 42, 4, &v124, &v124 + 4);
      if (v21)
      {
        v36 = MEMORY[0x1E69E9C10];
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "FLACAudioFile.cpp";
          v126 = 1024;
          v127 = 671;
          v37 = v36;
          v38 = "%25s:%-5d  FLACAudioFile::WriteVorbisComment: Writing length of comment field failed";
          goto LABEL_74;
        }

LABEL_75:
        v46 = 0;
        goto LABEL_76;
      }

      v27 += HIDWORD(v124);
      if (v128[23] >= 0)
      {
        v39 = v128[23];
      }

      else
      {
        v39 = *&v128[8];
      }

      if (v128[23] >= 0)
      {
        v40 = v128;
      }

      else
      {
        v40 = *v128;
      }

      v21 = (*(**(this + 13) + 56))(*(this + 13), 0, v27 + 42, v39, v40, &v124 + 4);
      if (v21)
      {
        v41 = MEMORY[0x1E69E9C10];
        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_75;
        }

        *buf = 136315394;
        *&buf[4] = "FLACAudioFile.cpp";
        v126 = 1024;
        v127 = 676;
        v37 = v41;
        v38 = "%25s:%-5d  FLACAudioFile::WriteVorbisComment: Writing comment field name failed";
LABEL_74:
        _os_log_impl(&dword_18F5DF000, v37, OS_LOG_TYPE_ERROR, v38, buf, 0x12u);
        goto LABEL_75;
      }

      v27 += HIDWORD(v124);
      v21 = (*(**(this + 13) + 56))(*(this + 13), 0, v27 + 42, 1, &v123, &v124 + 4);
      if (v21)
      {
        v42 = MEMORY[0x1E69E9C10];
        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_75;
        }

        *buf = 136315394;
        *&buf[4] = "FLACAudioFile.cpp";
        v126 = 1024;
        v127 = 681;
        v37 = v42;
        v38 = "%25s:%-5d  FLACAudioFile::WriteVorbisComment: Writing '=' failed";
        goto LABEL_74;
      }

      v27 += HIDWORD(v124);
      if ((v122 & 0x80u) == 0)
      {
        v43 = v122;
      }

      else
      {
        v43 = v121;
      }

      if ((v122 & 0x80u) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      v21 = (*(**(this + 13) + 56))(*(this + 13), 0, v27 + 42, v43, p_p, &v124 + 4);
      if (v21)
      {
        v45 = MEMORY[0x1E69E9C10];
        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_75;
        }

        *buf = 136315394;
        *&buf[4] = "FLACAudioFile.cpp";
        v126 = 1024;
        v127 = 686;
        v37 = v45;
        v38 = "%25s:%-5d  FLACAudioFile::WriteVorbisComment: Writing comment failed";
        goto LABEL_74;
      }

      v27 += HIDWORD(v124);
      v46 = 1;
LABEL_76:
      if (v122 < 0)
      {
        operator delete(__p);
      }

      if ((v128[23] & 0x80000000) != 0)
      {
        operator delete(*v128);
      }

      if ((v46 & 1) == 0)
      {
        goto LABEL_87;
      }

      v32 += 2;
    }

    LODWORD(v124) = bswap32((v27 + 16777212) & 0xFFFFFF | ((v20 == 0) << 31) | 0x4000000);
    v47 = (*(**(this + 13) + 56))(*(this + 13), 0, 42, 4, &v124, &v124 + 4);
    v48 = MEMORY[0x1E69E9C10];
    v21 = v47;
    if (v47)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *v128 = 136315394;
        *&v128[4] = "FLACAudioFile.cpp";
        *&v128[12] = 1024;
        *&v128[14] = 694;
        v22 = v48;
        v23 = "%25s:%-5d  FLACAudioFile::WriteVorbisComment: Patching block header failed";
LABEL_86:
        _os_log_impl(&dword_18F5DF000, v22, OS_LOG_TYPE_ERROR, v23, v128, 0x12u);
      }

LABEL_87:
      v27 = 0;
    }

LABEL_88:
    if (v129[23] < 0)
    {
      operator delete(*v129);
    }

    if (v21)
    {
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        return v21;
      }

      *v129 = 136315394;
      *&v129[4] = "FLACAudioFile.cpp";
      *&v129[12] = 1024;
      *&v129[14] = 282;
      v106 = MEMORY[0x1E69E9C10];
      v107 = "%25s:%-5d  WriteVorbisComment failed";
      goto LABEL_224;
    }

    *(this + 181) = v27 != 0;
    v49 = *(this + 31);
    if (!v49)
    {
      Length = 0;
      v64 = 0;
      v65 = 0;
      HIDWORD(v124) = 0;
      *buf = 0;
      memset(v129, 0, sizeof(v129));
      v66 = 1;
      goto LABEL_122;
    }

    Length = CFDataGetLength(v49);
    v51 = *(this + 31);
    HIDWORD(v124) = 0;
    *buf = 0;
    memset(v129, 0, sizeof(v129));
    if (!v51)
    {
      goto LABEL_120;
    }

    if (sLoadCoreMediaOnce != -1)
    {
      dispatch_once(&sLoadCoreMediaOnce, &__block_literal_global_8033);
    }

    v52 = sCGImageSourceCreateWithData(*(this + 31), 0);
    v53 = v52;
    if (!v52)
    {
      v67 = MEMORY[0x1E69E9C10];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *v128 = 136315394;
        *&v128[4] = "FLACAudioFile.cpp";
        *&v128[12] = 1024;
        *&v128[14] = 745;
        _os_log_impl(&dword_18F5DF000, v67, OS_LOG_TYPE_ERROR, "%25s:%-5d  CGImageSourceCreateWithData failed", v128, 0x12u);
      }

      goto LABEL_120;
    }

    if (sCGImageSourceGetCount(v52) != 1)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *v128 = 136315394;
        *&v128[4] = "FLACAudioFile.cpp";
        *&v128[12] = 1024;
        *&v128[14] = 747;
        _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  Can store only a single image", v128, 0x12u);
      }

      CFRelease(v53);
LABEL_120:
      v64 = 0;
      v65 = 0;
LABEL_121:
      v66 = 1;
      goto LABEL_122;
    }

    Type = sCGImageSourceGetType(v53);
    v55 = Type;
    if (!Type)
    {
      __p = 0;
      goto LABEL_139;
    }

    CFRetain(Type);
    __p = v55;
    v56 = CFGetTypeID(v55);
    if (v56 != CFStringGetTypeID())
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }

    if (!__p)
    {
LABEL_139:
      v80 = MEMORY[0x1E69E9C10];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *v128 = 136315394;
        *&v128[4] = "FLACAudioFile.cpp";
        *&v128[12] = 1024;
        *&v128[14] = 750;
        v62 = v80;
        v63 = "%25s:%-5d  CGImageSourceGetType failed to return a UTI";
        goto LABEL_141;
      }

      goto LABEL_142;
    }

    v57 = @"image/jpeg";
    if (!CFEqual(__p, @"public.jpeg"))
    {
      v57 = @"image/jp2";
      if (!CFEqual(__p, @"public.jpeg-2000"))
      {
        v57 = @"image/png";
        if (!CFEqual(__p, @"public.png"))
        {
          v57 = @"image/tiff";
          if (!CFEqual(__p, @"public.tiff"))
          {
            v57 = @"image/heif";
            if (!CFEqual(__p, @"public.heif"))
            {
              if (CFEqual(__p, @"com.microsoft.bmp"))
              {
                v57 = @"image/bmp";
                goto LABEL_107;
              }

              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                *v128 = 136315394;
                *&v128[4] = "FLACAudioFile.cpp";
                *&v128[12] = 1024;
                *&v128[14] = 773;
                v62 = MEMORY[0x1E69E9C10];
                v63 = "%25s:%-5d  Couldn't infer MIME type from UTI";
LABEL_141:
                _os_log_impl(&dword_18F5DF000, v62, OS_LOG_TYPE_ERROR, v63, v128, 0x12u);
              }

              goto LABEL_142;
            }
          }
        }
      }
    }

LABEL_107:
    *v128 = v57;
    v58 = CFGetTypeID(v57);
    if (v58 != CFStringGetTypeID())
    {
      v110 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v110, "Could not construct");
    }

    v59 = *buf;
    v60 = *v128;
    *buf = *v128;
    if (v59)
    {
      CFRelease(v59);
    }

    if (!v60)
    {
      v87 = MEMORY[0x1E69E9C10];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *v128 = 136315394;
        *&v128[4] = "FLACAudioFile.cpp";
        *&v128[12] = 1024;
        *&v128[14] = 775;
        v62 = v87;
        v63 = "%25s:%-5d  couldn't get a MIME type for the image";
        goto LABEL_141;
      }

      goto LABEL_142;
    }

    if (CFStringGetLength(v57) >= 256)
    {
      v61 = MEMORY[0x1E69E9C10];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *v128 = 136315394;
        *&v128[4] = "FLACAudioFile.cpp";
        *&v128[12] = 1024;
        *&v128[14] = 776;
        v62 = v61;
        v63 = "%25s:%-5d  MIME type length exceeds limit";
        goto LABEL_141;
      }

      goto LABEL_142;
    }

    v88 = sCGImageSourceCopyPropertiesAtIndex(v53, 0, 0);
    v82 = v88;
    if (v88)
    {
      Value = CFDictionaryGetValue(v88, @"PixelWidth");
      if (Value)
      {
        v64 = applesauce::CF::convert_to<int,0>(Value);
      }

      else
      {
        v64 = 0;
      }

      v95 = CFDictionaryGetValue(v82, @"PixelHeight");
      if (v95)
      {
        v65 = applesauce::CF::convert_to<int,0>(v95);
      }

      else
      {
        v65 = 0;
      }

      v81 = 1;
    }

    else
    {
      v92 = MEMORY[0x1E69E9C10];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *v128 = 136315394;
        *&v128[4] = "FLACAudioFile.cpp";
        *&v128[12] = 1024;
        *&v128[14] = 779;
        v62 = v92;
        v63 = "%25s:%-5d  CGImageSourceCopyPropertiesAtIndex failed";
        goto LABEL_141;
      }

LABEL_142:
      v64 = 0;
      v65 = 0;
      v81 = 0;
      v82 = 0;
    }

    if (__p)
    {
      CFRelease(__p);
    }

    CFRelease(v53);
    if (v82)
    {
      CFRelease(v82);
    }

    if (!v81)
    {
      goto LABEL_121;
    }

    applesauce::CF::convert_to<std::string,0>(v128, *buf);
    if (v129[23] < 0)
    {
      operator delete(*v129);
    }

    v66 = 0;
    *v129 = *v128;
    *&v129[16] = *&v128[16];
LABEL_122:
    v21 = 0;
    v68 = 0;
    v69 = v27 + 42;
    v70 = v129[23];
    v71 = v129[23];
    if ((v129[23] & 0x80u) != 0)
    {
      v70 = *&v129[8];
    }

    if ((v66 & 1) == 0 && Length >= 1 && Length <= 16777179 - v70)
    {
      LODWORD(__p) = 0;
      v21 = (*(**(this + 13) + 56))(*(this + 13), 0, v27 + 42, 4, &__p, &v124 + 4);
      if (!v21)
      {
        v75 = HIDWORD(v124);
        LODWORD(__p) = 50331648;
        v21 = (*(**(this + 13) + 56))(*(this + 13), 0, v69 + HIDWORD(v124), 4, &__p, &v124 + 4);
        if (v21)
        {
          v76 = MEMORY[0x1E69E9C10];
          if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_199;
          }

          *v128 = 136315394;
          *&v128[4] = "FLACAudioFile.cpp";
          *&v128[12] = 1024;
          *&v128[14] = 879;
          v73 = v76;
          v74 = "%25s:%-5d  FLACAudioFile::WritePicture: Writing picture type failed";
        }

        else
        {
          v77 = HIDWORD(v124) + v75;
          v78 = v129[23];
          if ((v129[23] & 0x80u) != 0)
          {
            v78 = *&v129[8];
          }

          LODWORD(__p) = bswap32(v78);
          v21 = (*(**(this + 13) + 56))(*(this + 13), 0, v77 + v69, 4, &__p, &v124 + 4);
          if (v21)
          {
            v79 = MEMORY[0x1E69E9C10];
            if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              goto LABEL_199;
            }

            *v128 = 136315394;
            *&v128[4] = "FLACAudioFile.cpp";
            *&v128[12] = 1024;
            *&v128[14] = 885;
            v73 = v79;
            v74 = "%25s:%-5d  FLACAudioFile::WritePicture: Writing length of MIME type failed";
          }

          else
          {
            v83 = v77 + HIDWORD(v124);
            if ((v129[23] & 0x80u) == 0)
            {
              v84 = v129[23];
            }

            else
            {
              v84 = *&v129[8];
            }

            if ((v129[23] & 0x80u) == 0)
            {
              v85 = v129;
            }

            else
            {
              v85 = *v129;
            }

            v21 = (*(**(this + 13) + 56))(*(this + 13), 0, v83 + v69, v84, v85, &v124 + 4);
            if (v21)
            {
              v86 = MEMORY[0x1E69E9C10];
              if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                goto LABEL_199;
              }

              *v128 = 136315394;
              *&v128[4] = "FLACAudioFile.cpp";
              *&v128[12] = 1024;
              *&v128[14] = 890;
              v73 = v86;
              v74 = "%25s:%-5d  FLACAudioFile::WritePicture: Writing MIME type failed";
            }

            else
            {
              v90 = v83 + HIDWORD(v124);
              LODWORD(__p) = 0;
              v21 = (*(**(this + 13) + 56))(*(this + 13), 0, v90 + v69, 4, &__p, &v124 + 4);
              if (v21)
              {
                v91 = MEMORY[0x1E69E9C10];
                if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_199;
                }

                *v128 = 136315394;
                *&v128[4] = "FLACAudioFile.cpp";
                *&v128[12] = 1024;
                *&v128[14] = 896;
                v73 = v91;
                v74 = "%25s:%-5d  FLACAudioFile::WritePicture: Writing length of description string failed";
              }

              else
              {
                v93 = v90 + HIDWORD(v124);
                LODWORD(__p) = bswap32(v64);
                v21 = (*(**(this + 13) + 56))(*(this + 13), 0, v93 + v69, 4, &__p, &v124 + 4);
                if (v21)
                {
                  v94 = MEMORY[0x1E69E9C10];
                  if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_199;
                  }

                  *v128 = 136315394;
                  *&v128[4] = "FLACAudioFile.cpp";
                  *&v128[12] = 1024;
                  *&v128[14] = 902;
                  v73 = v94;
                  v74 = "%25s:%-5d  FLACAudioFile::WritePicture: Writing picture width failed";
                }

                else
                {
                  v96 = v93 + HIDWORD(v124);
                  LODWORD(__p) = bswap32(v65);
                  v21 = (*(**(this + 13) + 56))(*(this + 13), 0, v96 + v69, 4, &__p, &v124 + 4);
                  if (v21)
                  {
                    v97 = MEMORY[0x1E69E9C10];
                    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                    {
                      goto LABEL_199;
                    }

                    *v128 = 136315394;
                    *&v128[4] = "FLACAudioFile.cpp";
                    *&v128[12] = 1024;
                    *&v128[14] = 908;
                    v73 = v97;
                    v74 = "%25s:%-5d  FLACAudioFile::WritePicture: Writing picture height failed";
                  }

                  else
                  {
                    v98 = v96 + HIDWORD(v124);
                    LODWORD(__p) = 0;
                    v21 = (*(**(this + 13) + 56))(*(this + 13), 0, v98 + v69, 4, &__p, &v124 + 4);
                    if (v21)
                    {
                      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                      {
                        goto LABEL_199;
                      }

                      *v128 = 136315394;
                      *&v128[4] = "FLACAudioFile.cpp";
                      *&v128[12] = 1024;
                      *&v128[14] = 914;
                      v73 = MEMORY[0x1E69E9C10];
                      v74 = "%25s:%-5d  FLACAudioFile::WritePicture: Writing picture depth failed";
                    }

                    else
                    {
                      v99 = v98 + HIDWORD(v124);
                      LODWORD(__p) = 0;
                      v21 = (*(**(this + 13) + 56))(*(this + 13), 0, v99 + v69, 4, &__p, &v124 + 4);
                      if (v21)
                      {
                        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                        {
                          goto LABEL_199;
                        }

                        *v128 = 136315394;
                        *&v128[4] = "FLACAudioFile.cpp";
                        *&v128[12] = 1024;
                        *&v128[14] = 920;
                        v73 = MEMORY[0x1E69E9C10];
                        v74 = "%25s:%-5d  FLACAudioFile::WritePicture: Writing number of colors failed";
                      }

                      else
                      {
                        v100 = v99 + HIDWORD(v124);
                        LODWORD(__p) = bswap32(Length);
                        v21 = (*(**(this + 13) + 56))(*(this + 13), 0, v100 + v69, 4, &__p, &v124 + 4);
                        if (v21)
                        {
                          if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                          {
                            goto LABEL_199;
                          }

                          *v128 = 136315394;
                          *&v128[4] = "FLACAudioFile.cpp";
                          *&v128[12] = 1024;
                          *&v128[14] = 926;
                          v73 = MEMORY[0x1E69E9C10];
                          v74 = "%25s:%-5d  FLACAudioFile::WritePicture: Writing length of picture data failed";
                        }

                        else
                        {
                          v101 = HIDWORD(v124);
                          v102 = *(this + 13);
                          BytePtr = CFDataGetBytePtr(*(this + 31));
                          v104 = v100 + v101;
                          v21 = (*(*v102 + 56))(v102, 0, v104 + v69, Length, BytePtr, &v124 + 4);
                          if (v21)
                          {
                            if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                            {
                              goto LABEL_199;
                            }

                            *v128 = 136315394;
                            *&v128[4] = "FLACAudioFile.cpp";
                            *&v128[12] = 1024;
                            *&v128[14] = 931;
                            v73 = MEMORY[0x1E69E9C10];
                            v74 = "%25s:%-5d  FLACAudioFile::WritePicture: Writing picture data failed";
                          }

                          else
                          {
                            v68 = v104 + HIDWORD(v124);
                            LODWORD(__p) = bswap32((v68 + 16777212) & 0xFFFFFF | 0x86000000);
                            v21 = (*(**(this + 13) + 56))(*(this + 13), 0, v69, 4, &__p, &v124 + 4);
                            if (!v21)
                            {
                              goto LABEL_200;
                            }

                            if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                            {
                              goto LABEL_199;
                            }

                            *v128 = 136315394;
                            *&v128[4] = "FLACAudioFile.cpp";
                            *&v128[12] = 1024;
                            *&v128[14] = 938;
                            v73 = MEMORY[0x1E69E9C10];
                            v74 = "%25s:%-5d  FLACAudioFile::WritePicture: Patching block header failed";
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

LABEL_198:
        _os_log_impl(&dword_18F5DF000, v73, OS_LOG_TYPE_ERROR, v74, v128, 0x12u);
        goto LABEL_199;
      }

      v72 = MEMORY[0x1E69E9C10];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *v128 = 136315394;
        *&v128[4] = "FLACAudioFile.cpp";
        *&v128[12] = 1024;
        *&v128[14] = 873;
        v73 = v72;
        v74 = "%25s:%-5d  FLACAudioFile::WritePicture: Writing METADATA_BLOCK_HEADER failed";
        goto LABEL_198;
      }

LABEL_199:
      v68 = 0;
LABEL_200:
      v71 = v129[23];
    }

    if ((v71 & 0x80) != 0)
    {
      operator delete(*v129);
    }

    if (*buf)
    {
      CFRelease(*buf);
    }

    if (!v21)
    {
      *(this + 182) = v68 != 0;
      v18 = v68 + v69;
      v119.mStartOffset = v68 + v69;
      mDataByteSize = v16->mDataByteSize;
      v119.mDataByteSize = mDataByteSize;
      *(this + 23) = 0;
      v14 = MEMORY[0x1E69E9C10];
LABEL_207:
      if (mDataByteSize > (*(*this + 640))(this))
      {
        (*(*this + 656))(this, v16->mDataByteSize);
      }

      v21 = (*(**(this + 13) + 56))(*(this + 13), 0, v18, v16->mDataByteSize, &a7[v16->mStartOffset], &v118);
      *(this + 23) += v115;
      AudioFileObject::AppendPacket(this, &v119);
      ++v13;
      v8 = a4;
      v7 = a6;
      if (v13 >= *a6)
      {
LABEL_226:
        *v7 = v13;
        return v21;
      }

      continue;
    }

    break;
  }

  if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    return v21;
  }

  *v129 = 136315394;
  *&v129[4] = "FLACAudioFile.cpp";
  *&v129[12] = 1024;
  *&v129[14] = 287;
  v106 = MEMORY[0x1E69E9C10];
  v107 = "%25s:%-5d  WritePicture failed";
LABEL_224:
  _os_log_impl(&dword_18F5DF000, v106, OS_LOG_TYPE_ERROR, v107, v129, 0x12u);
  return v21;
}

void sub_18F7F4124(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, const void *a30)
{
  applesauce::CF::StringRef::~StringRef(&__p);
  if (*(v30 - 105) < 0)
  {
    operator delete(*(v30 - 128));
  }

  applesauce::CF::StringRef::~StringRef(&a30);
  _Unwind_Resume(a1);
}

void *___ZL23LoadImageIOFunctionPtrsv_block_invoke()
{
  v0 = dlopen("/System/Library/Frameworks/ImageIO.framework/ImageIO", 1);
  if (!v0)
  {
    CAVerboseAbort();
    goto LABEL_8;
  }

  v1 = v0;
  sCGImageSourceCreateWithData = dlsym(v0, "CGImageSourceCreateWithData");
  if (!sCGImageSourceCreateWithData)
  {
LABEL_8:
    CAVerboseAbort();
    goto LABEL_9;
  }

  sCGImageSourceGetType = dlsym(v1, "CGImageSourceGetType");
  if (!sCGImageSourceCreateWithData)
  {
LABEL_9:
    CAVerboseAbort();
    goto LABEL_10;
  }

  sCGImageSourceGetCount = dlsym(v1, "CGImageSourceGetCount");
  if (!sCGImageSourceGetCount)
  {
LABEL_10:
    CAVerboseAbort();
    goto LABEL_11;
  }

  result = dlsym(v1, "CGImageSourceCopyPropertiesAtIndex");
  sCGImageSourceCopyPropertiesAtIndex = result;
  if (!sCGImageSourceCreateWithData)
  {
LABEL_11:
    v3 = CAVerboseAbort();
    return FLACAudioFile::ReadPackets(v3, v4, v5, v6, v7, v8, v9);
  }

  return result;
}

uint64_t FLACAudioFile::ReadPackets(FLACAudioFile *this, unsigned int a2, unsigned int *a3, AudioStreamPacketDescription *a4, uint64_t a5, unsigned int *a6, void *a7)
{
  v40 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v7 = a7 == 0;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  if (a6 && (v10 = *a6, v10))
  {
    v17 = (*(*this + 696))(this, v10 + a5, 0, 1);
    if (v17)
    {
      v18 = v17;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "FLACAudioFile.cpp";
        LOWORD(v39[0]) = 1024;
        *(v39 + 2) = 154;
        v19 = MEMORY[0x1E69E9C10];
        v20 = "%25s:%-5d  ScanForPackets (FLAC) failed";
LABEL_14:
        _os_log_impl(&dword_18F5DF000, v19, OS_LOG_TYPE_ERROR, v20, buf, 0x12u);
      }
    }

    else
    {
      v22 = *(this + 15);
      if (v22)
      {
        v23 = *(v22 + 24);
        if (v23 >= a5)
        {
          v18 = 1685348671;
        }

        else
        {
          v18 = 1885563711;
        }

        if (v23 >= a5 && v22 != 0)
        {
          v37 = 0;
          v25 = *(v22 + 24);
          if (a3)
          {
            *a3 = 0;
          }

          v35 = a2;
          v26 = *a6;
          if (v26 + a5 > v25)
          {
            LODWORD(v26) = v25 - a5;
            *a6 = v25 - a5;
          }

          if (v26)
          {
            v34 = a3;
            CompressedPacketTable::operator[](buf, v22, a5);
            if (*a6)
            {
              v27 = 0;
              v28 = 0;
              v36 = *buf;
              p_mVariableFramesInPacket = &a4->mVariableFramesInPacket;
              do
              {
                CompressedPacketTable::operator[](buf, v22, a5 + v28);
                v30 = v39[0];
                v27 += v39[0];
                v37 = v27;
                if (a4)
                {
                  *(p_mVariableFramesInPacket - 1) = *buf - v36;
                  *p_mVariableFramesInPacket = 0;
                  p_mVariableFramesInPacket[1] = v30;
                }

                ++v28;
                p_mVariableFramesInPacket += 4;
              }

              while (v28 < *a6);
            }

            if (v8)
            {
              v18 = 0;
              if (v34)
              {
                *v34 = 0;
              }
            }

            else
            {
              CompressedPacketTable::operator[](buf, v22, a5);
              v31 = (*(*this + 72))(this, v35, *buf, &v37, a7);
              v18 = v31;
              if (v31 == -39 || v31 == 0)
              {
                if (v34)
                {
                  *v34 = v37;
                }
              }

              else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                *&buf[4] = "FLACAudioFile.cpp";
                LOWORD(v39[0]) = 1024;
                *(v39 + 2) = 209;
                v19 = MEMORY[0x1E69E9C10];
                v20 = "%25s:%-5d  ReadBytes failed";
                goto LABEL_14;
              }
            }
          }

          else
          {
            if (a3)
            {
              *a3 = 0;
            }

            return 4294967257;
          }
        }
      }

      else if (a5 <= 0)
      {
        return 1685348671;
      }

      else
      {
        return 1885563711;
      }
    }
  }

  else
  {
    v18 = 2003334207;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "FLACAudioFile.cpp";
      LOWORD(v39[0]) = 1024;
      *(v39 + 2) = 150;
      v19 = MEMORY[0x1E69E9C10];
      v20 = "%25s:%-5d  invalid num packets parameter";
      goto LABEL_14;
    }
  }

  return v18;
}

uint64_t FLACAudioFile::Close(FLACAudioFile *this)
{
  v62 = *MEMORY[0x1E69E9840];
  if ((*(this + 100) & 2) == 0 || *(this + 19) == *(this + 20))
  {
    goto LABEL_86;
  }

  v55 = 38;
  v2 = *(this + 15);
  if (v2)
  {
    v3 = *(v2 + 24);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(this + 11);
  std::vector<unsigned char>::vector[abi:ne200100](__p, 38);
  v5 = v3 * v4;
  v6 = *(this + 19);
  v7 = *(this + 20) - v6;
  if (v7 <= 0x31)
  {
    goto LABEL_7;
  }

  v8 = (v6 + v7);
  v50 = *(this + 19);
  v51 = v8;
  if ((v6 & 3) != 0)
  {
    v9 = 0;
    v10 = v6 & 3 ^ 3;
    v11 = v6 + 1;
    v12 = 8 * v10 + 8;
    v13 = v6;
    do
    {
      if (v13 >= v8)
      {
        v14 = 255;
      }

      else
      {
        v14 = *v13;
      }

      v9 = v14 | (v9 << 8);
      ++v13;
    }

    while ((v11++ & 3) != 0);
    v16 = (v6 + v10 + 1);
    v17 = 8 * v10;
    v49 = v16;
    v18 = v9 << (v17 ^ 0x18);
    LODWORD(v52) = v18;
    v19 = v17 - 24;
    if ((v6 & 3) == 0)
    {
      v12 = v19;
      v20 = v18;
      goto LABEL_29;
    }
  }

  else
  {
    v18 = 0;
    v12 = 0;
    LOBYTE(v19) = -32;
    HIDWORD(v52) = -32;
    v16 = v6;
  }

  if (v16 >= v6 && ((v8 - v16) & ~((v8 - v16) >> 63) & 0xFFFFFFFC) != 0)
  {
    v21 = bswap32(*v16);
  }

  else
  {
    v22 = 4;
    v23 = v16;
    v21 = v18;
    do
    {
      v24 = 255;
      if (v23 < v8 && v23 >= v6)
      {
        v24 = *v23;
      }

      v21 = v24 | (v21 << 8);
      v23 = (v23 + 1);
      --v22;
    }

    while (v22);
  }

  v49 = ++v16;
  v20 = (v21 >> v12) | v18;
  v18 = v21 << -v19;
  if (!v12)
  {
    v18 = 0;
  }

  LODWORD(v52) = v18;
LABEL_29:
  if ((v12 - 32) < 0)
  {
    if (v16 >= v6 && ((v8 - v16) & ~((v8 - v16) >> 63) & 0xFFFFFFFC) != 0)
    {
      v27 = bswap32(*v16);
    }

    else
    {
      v28 = 4;
      v29 = v16;
      v27 = v18;
      do
      {
        v30 = 255;
        if (v29 < v8 && v29 >= v6)
        {
          v30 = *v29;
        }

        v27 = v30 | (v27 << 8);
        v29 = (v29 + 1);
        --v28;
      }

      while (v28);
    }

    v49 = ++v16;
    v26 = (v27 >> v12) | v18;
    v18 = v27 << -v12;
    if (!v12)
    {
      v18 = 0;
    }

    LODWORD(v52) = v18;
    v25 = v12 - 32;
  }

  else
  {
    v25 = v12 - 64;
    v12 -= 32;
    v26 = v18;
  }

  HIDWORD(v52) = v25;
  if ((v25 & 0x80000000) != 0)
  {
    if (v16 >= v6 && ((v8 - v16) & ~((v8 - v16) >> 63) & 0xFFFFFFFC) != 0)
    {
      v33 = bswap32(*v16);
    }

    else
    {
      v34 = 4;
      v35 = v16;
      v33 = v18;
      do
      {
        v36 = v33 << 8;
        LODWORD(v52) = v36;
        v37 = 255;
        if (v35 < v8 && v35 >= v6)
        {
          v37 = *v35;
        }

        v33 = v37 | v36;
        LODWORD(v52) = v33;
        v35 = (v35 + 1);
        --v34;
      }

      while (v34);
    }

    v49 = ++v16;
    v32 = (v33 >> v12) | v18;
    v18 = v33 << -v12;
    if (!v12)
    {
      v18 = 0;
    }

    LODWORD(v52) = v18;
    v31 = v25;
  }

  else
  {
    v31 = v25 - 32;
    v12 = v25;
    v32 = v18;
  }

  HIDWORD(v52) = v31;
  if ((v31 & 0x80000000) != 0)
  {
    if (v16 >= v6 && ((v8 - v16) & ~((v8 - v16) >> 63) & 0xFFFFFFFC) != 0)
    {
      v38 = bswap32(*v16);
    }

    else
    {
      v39 = 4;
      v40 = v16;
      v38 = v18;
      do
      {
        v41 = v38 << 8;
        LODWORD(v52) = v41;
        v42 = 255;
        if (v40 < v8 && v40 >= v6)
        {
          v42 = *v40;
        }

        v38 = v42 | v41;
        LODWORD(v52) = v38;
        v40 = (v40 + 1);
        --v39;
      }

      while (v39);
    }

    v49 = v16 + 1;
    v18 |= v38 >> v12;
    v43 = v38 << -v12;
    if (!v12)
    {
      v43 = 0;
    }

    v52 = __PAIR64__(v12, v43);
  }

  if (v20 >= 0x32 && v26 == 1684425825 && !v32 && (v18 & 0x7F000000) == 0 && (v18 & 0xFFFFFEu) > 0x21)
  {
    FLACUnpackStreamInfo(&v49, v60);
    goto LABEL_73;
  }

LABEL_7:
  bzero(v60, 0x38uLL);
LABEL_73:
  v44 = *(this + 49);
  if (v61 > v5 - v44)
  {
    v45 = v5 >= v44;
    v46 = v5 - v44;
    if (!v45)
    {
      v46 = 0;
    }

    v61 = v46;
  }

  if ((*(this + 181) & 1) != 0 || *(this + 182) == 1)
  {
    *__p[0] = 0;
  }

  else
  {
    *__p[0] = 0x80;
  }

  *(__p[0] + 2) = 0;
  *(__p[0] + 1) = 0;
  *(__p[0] + 3) = 34;
  v49 = (__p[0] + 4);
  v50 = __p[0] + 4;
  v51 = __p[0] + 38;
  v52 = 0x2000000000;
  v53 = (LODWORD(__p[0]) + 4) & 3;
  FLACPackStreamInfo(&v49, v60);
  if ((*(**(this + 13) + 56))(*(this + 13), 0, 4, 38, __p[0], &v55) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v57 = "FLACAudioFile.cpp";
    v58 = 1024;
    v59 = 132;
    _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  Write stream info failed", buf, 0x12u);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

LABEL_86:
  v47 = *(this + 13);
  if (v47)
  {
    (*(*v47 + 8))(v47);
  }

  *(this + 13) = 0;
  return 0;
}

void sub_18F7F4C34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t FLACAudioFile::InitializeDataSource(FLACAudioFile *this, const AudioStreamBasicDescription *a2)
{
  if (a2->mFormatID == 1718378851)
  {
    return 0;
  }

  else
  {
    return 1718449215;
  }
}

uint64_t FLACAudioFile::OpenFromDataSource(FLACAudioFile *this)
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = (*(*this + 736))(this);
  if (v1 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = 136315394;
    v4 = "FLACAudioFile.cpp";
    v5 = 1024;
    v6 = 331;
    _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ParseAudioFile failed", &v3, 0x12u);
  }

  return v1;
}

uint64_t FLACAudioFile::Create(FLACAudioFile *this, const __CFURL *a2, const AudioStreamBasicDescription *a3)
{
  if (a3->mFormatID == 1718378851)
  {
    return AudioFileObject::Create(this, a2, a3);
  }

  else
  {
    return 1718449215;
  }
}

void FLACAudioFile::~FLACAudioFile(FLACAudioFile *this)
{
  FLACAudioFile::~FLACAudioFile(this);

  JUMPOUT(0x193ADF220);
}

{
  *this = &unk_1F032FF28;
  v2 = *(this + 31);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 30);
  if (v3)
  {
    CFRelease(v3);
  }

  v6 = (this + 216);
  std::vector<std::pair<applesauce::CF::StringRef,applesauce::CF::StringRef>>::__destroy_vector::operator()[abi:ne200100](&v6);
  v4 = *(this + 26);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(this + 19);
  if (v5)
  {
    *(this + 20) = v5;
    operator delete(v5);
  }

  AudioFileObject::~AudioFileObject(this);
}

uint64_t FLACAudioFormat::GetHFSCodes(FLACAudioFormat *this, unsigned int *a2, void *__dst)
{
  __src = 1718378851;
  v3 = 4 * (*a2 > 3);
  *a2 = v3;
  if (__dst)
  {
    memcpy(__dst, &__src, v3);
  }

  return 0;
}

uint64_t FLACAudioFormat::GetAvailableStreamDescriptions(FLACAudioFormat *this, int a2, unsigned int *a3, void *a4)
{
  v20 = *MEMORY[0x1E69E9840];
  outPropertyDataSize = 0;
  PropertyInfo = AudioFormatGetPropertyInfo(0x61636966u, 0, 0, &outPropertyDataSize);
  if (!PropertyInfo)
  {
    v8 = outPropertyDataSize;
    v9 = outPropertyDataSize >> 2;
    std::vector<unsigned int>::vector[abi:ne200100](__p, v9);
    PropertyInfo = GetAllFormatIDs(&outPropertyDataSize, __p[0]);
    if (!PropertyInfo)
    {
      if (v8 < 4)
      {
LABEL_8:
        *a3 = 0;
        PropertyInfo = 1718449215;
      }

      else
      {
        v10 = __p[0];
        while (1)
        {
          v12 = *v10++;
          v11 = v12;
          if (a2 == 1718378851 && v11 == 1718378851)
          {
            break;
          }

          if (!--v9)
          {
            goto LABEL_8;
          }
        }

        v19 = 0;
        memset(outPropertyData, 0, sizeof(outPropertyData));
        DWORD2(outPropertyData[0]) = 1718378851;
        ioPropertyDataSize = 40;
        AudioFormatGetProperty(0x666D7469u, 0, 0, &ioPropertyDataSize, outPropertyData);
        if (*a3 >= 0x28)
        {
          v13 = 40;
        }

        else
        {
          v13 = 0;
        }

        *a3 = v13;
        if (a4)
        {
          memcpy(a4, outPropertyData, v13);
        }

        PropertyInfo = 0;
      }
    }

    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  return PropertyInfo;
}

void sub_18F7F5268(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t FLACAudioFormat::GetAvailableFormatIDs(FLACAudioFormat *this, unsigned int *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  outPropertyDataSize = 0;
  PropertyInfo = AudioFormatGetPropertyInfo(0x61636966u, 0, 0, &outPropertyDataSize);
  if (!PropertyInfo)
  {
    v6 = outPropertyDataSize;
    v7 = outPropertyDataSize >> 2;
    std::vector<unsigned int>::vector[abi:ne200100](__p, v7);
    PropertyInfo = GetAllFormatIDs(&outPropertyDataSize, __p[0]);
    if (!PropertyInfo)
    {
      if (v6 >= 4)
      {
        v9 = 0;
        v10 = __p[0];
        do
        {
          v11 = *v10++;
          if (v11 == 1718378851)
          {
            __src[v9++] = 1718378851;
          }

          --v7;
        }

        while (v7);
        v8 = 4 * v9;
      }

      else
      {
        v8 = 0;
      }

      *a2 = v8;
      if (a3)
      {
        memcpy(a3, __src, v8);
      }

      PropertyInfo = 0;
    }

    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  return PropertyInfo;
}

void sub_18F7F53B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void FLACAudioFormat::GetFileTypeName(FLACAudioFormat *this, const __CFString **a2)
{
  CABundleLocker::CABundleLocker(&v3);
  *a2 = @"FLAC";
  CABundleLocker::~CABundleLocker(&v3);
}

const __CFArray *FLACAudioFormat::GetMIMETypes(FLACAudioFormat *this, const __CFArray **a2)
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = @"audio/flac";
  result = CFArrayCreate(*MEMORY[0x1E695E480], v4, 1, MEMORY[0x1E695E9C0]);
  *a2 = result;
  return result;
}

const __CFArray *FLACAudioFormat::GetUTIs(FLACAudioFormat *this, const __CFArray **a2)
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = @"org.xiph.flac";
  result = CFArrayCreate(*MEMORY[0x1E695E480], v4, 1, MEMORY[0x1E695E9C0]);
  *a2 = result;
  return result;
}

const __CFArray *FLACAudioFormat::GetExtensions(FLACAudioFormat *this, const __CFArray **a2)
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = @"flac";
  result = CFArrayCreate(*MEMORY[0x1E695E480], v4, 1, MEMORY[0x1E695E9C0]);
  *a2 = result;
  return result;
}

BOOL AudibleAudioFile::IsDataFormatSupported(AudibleAudioFile *this, const AudioStreamBasicDescription *a2)
{
  if (a2->mChannelsPerFrame != 1)
  {
    return 0;
  }

  mFormatID = a2->mFormatID;
  return mFormatID == 778924083 || mFormatID == 1096107074;
}

uint64_t AudibleAudioFile::GetProperty(AudibleAudioFile *this, int a2, unsigned int *a3, uint64_t *a4)
{
  if (a2 > 1667788914)
  {
    if (a2 != 1667788915)
    {
      v5 = 1668444276;
      goto LABEL_6;
    }

    v7 = 8 * *(*(this + 161) + 528) + 8;
    if (*a3 >= v7)
    {
      if (*(*(this + 161) + 528))
      {
        std::allocator<SyncSampleEntry>::allocate_at_least[abi:ne200100](*(*(this + 161) + 528));
      }

      result = 0;
      *a4 = 0;
      *a3 = v7;
      return result;
    }

    return 561211770;
  }

  if (a2 == 1633776244)
  {
    if (*a3 >= 8)
    {
      result = (*(*this + 720))(this, a4);
      if (!result)
      {
        *a3 = 8;
      }

      return result;
    }

    return 561211770;
  }

  v5 = 1635083362;
LABEL_6:
  if (a2 == v5)
  {
    if (*a3 >= 4)
    {
      result = 0;
      *a3 = 4;
      *a4 = 1;
      return result;
    }

    return 561211770;
  }

  return AudioFileObject::GetProperty(this, a2, a3, a4);
}

uint64_t AudibleAudioFile::GetPropertyInfo(AudibleAudioFile *this, int a2, unsigned int *a3, unsigned int *a4)
{
  if (a2 <= 1635083361)
  {
    if (a2 == 1633773424)
    {
      if (a3)
      {
        *a3 = 4;
      }

      if (a4)
      {
        *a4 = 1;
      }

      return 0;
    }

    if (a2 == 1633776244)
    {
      if (!a3)
      {
        goto LABEL_14;
      }

      v4 = 8;
      goto LABEL_13;
    }
  }

  else
  {
    switch(a2)
    {
      case 1635083362:
        goto LABEL_5;
      case 1667788915:
        if (!a3)
        {
          goto LABEL_14;
        }

        v4 = 8 * *(*(this + 161) + 528) + 8;
LABEL_13:
        *a3 = v4;
LABEL_14:
        if (a4)
        {
          *a4 = 0;
        }

        return 0;
      case 1668444276:
LABEL_5:
        if (!a3)
        {
          goto LABEL_14;
        }

        v4 = 4;
        goto LABEL_13;
    }
  }

  return AudioFileObject::GetPropertyInfo(this, a2, a3, a4);
}

uint64_t AudibleAudioFile::ReadPacketData(AudibleAudioFile *this, uint64_t a2, unsigned int *a3, AudioStreamPacketDescription *a4, uint64_t a5, unsigned int *a6, _BYTE *a7)
{
  v38 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v9 = a7 == 0;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;
  if (!a3 || !*a3)
  {
    v11 = 2003334207;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v35 = "AudibleAudioFile.cpp";
      v36 = 1024;
      v37 = 346;
      _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  invalid ioNumBytes parameter", buf, 0x12u);
    }

    LODWORD(v14) = 0;
    v15 = 0;
    if (!a3)
    {
      goto LABEL_17;
    }

    goto LABEL_24;
  }

  if (!a6 || !*a6)
  {
    v11 = 2003334207;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v35 = "AudibleAudioFile.cpp";
      v36 = 1024;
      v37 = 347;
      v12 = MEMORY[0x1E69E9C10];
      v13 = "%25s:%-5d  invalid ioNumPackets parameter";
      goto LABEL_22;
    }

LABEL_23:
    v15 = 0;
    LODWORD(v14) = 0;
    goto LABEL_24;
  }

  if (v10)
  {
    v11 = 1869627199;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v35 = "AudibleAudioFile.cpp";
      v36 = 1024;
      v37 = 348;
      v12 = MEMORY[0x1E69E9C10];
      v13 = "%25s:%-5d  can't provide packet descriptions for an encrypted Audible file";
LABEL_22:
      _os_log_impl(&dword_18F5DF000, v12, OS_LOG_TYPE_ERROR, v13, buf, 0x12u);
      goto LABEL_23;
    }

    goto LABEL_23;
  }

  if ((*(*this + 248))(this, a2) <= a5)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v35 = "AudibleAudioFile.cpp";
      v36 = 1024;
      v37 = 354;
      _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  starting packet out of range", buf, 0x12u);
    }

    v15 = 0;
    LODWORD(v14) = 0;
    v11 = 4294967257;
    goto LABEL_24;
  }

  v21 = *a6 + a5;
  if (v21 <= (*(*this + 248))(this))
  {
    v22 = *a6;
  }

  else
  {
    v22 = (*(*this + 248))(this) - a5;
    *a6 = v22;
  }

  v23 = v22;
  v24 = *(this + 22);
  v25 = v24 * v23;
  v33 = v25;
  v26 = *a3;
  if (v25 > v26)
  {
    v25 = v26 / v24 * v24;
    v33 = v25;
  }

  if (!v25)
  {
    v11 = 2003334207;
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_23;
    }

    *buf = 136315394;
    v35 = "AudibleAudioFile.cpp";
    v36 = 1024;
    v37 = 366;
    v12 = MEMORY[0x1E69E9C10];
    v13 = "%25s:%-5d  buffer too small to accommodate even one packet";
    goto LABEL_22;
  }

  if (AASetAudioBytePos(*(this + 161), v24 * a5))
  {
    v11 = 2003334207;
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_23;
    }

    *buf = 136315394;
    v35 = "AudibleAudioFile.cpp";
    v36 = 1024;
    v37 = 373;
    v12 = MEMORY[0x1E69E9C10];
    v13 = "%25s:%-5d  AASetAudioBytePos failed";
    goto LABEL_22;
  }

  v27 = AAReadEncodedAudio(*(this + 161), a7, &v33);
  v15 = v33;
  v28 = *(this + 22);
  v14 = v33 / v28;
  if (a4 && *a6)
  {
    v29 = 0;
    v30 = 0;
    p_mVariableFramesInPacket = &a4->mVariableFramesInPacket;
    do
    {
      *(p_mVariableFramesInPacket - 1) = v29;
      *p_mVariableFramesInPacket = 0;
      p_mVariableFramesInPacket[1] = v28;
      p_mVariableFramesInPacket += 4;
      ++v30;
      v29 += v28;
    }

    while (v30 < *a6);
  }

  if (v27)
  {
    v32 = 2003334207;
  }

  else
  {
    v32 = 0;
  }

  if (v27 == -24)
  {
    v11 = 4294967257;
  }

  else
  {
    v11 = v32;
  }

  if (a3)
  {
LABEL_24:
    *a3 = v15;
    if (!a6)
    {
      return v11;
    }

    goto LABEL_18;
  }

LABEL_17:
  if (a6)
  {
LABEL_18:
    *a6 = v14;
  }

  return v11;
}

uint64_t AudibleAudioFile::ReadPackets(AudibleAudioFile *this, uint64_t a2, unsigned int *a3, AudioStreamPacketDescription *a4, uint64_t a5, unsigned int *a6, void *a7)
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0;
  if (a6 && *a6)
  {
    if (a7)
    {
      v11 = *(this + 10) * *a6;
    }

    v8 = (*(*this + 96))(this, a2, &v11, a4, a5);
    v9 = v8;
    if (a3 && !v8)
    {
      *a3 = v11;
    }
  }

  else
  {
    v9 = 2003334207;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v13 = "AudibleAudioFile.cpp";
      v14 = 1024;
      v15 = 312;
      _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  invalid ioNumPackets parameter", buf, 0x12u);
    }
  }

  return v9;
}

uint64_t AudibleAudioFile::OpenFromDataSource(int64x2_t *this)
{
  v47 = *MEMORY[0x1E69E9840];
  this[9].i64[0] = 0;
  v2 = this + 9;
  this[9].i64[1] = this[6].i64[1];
  if (AAValidateFile(this[9].i64))
  {
    v3 = 1685348671;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "AudibleAudioFile.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 164;
      v4 = MEMORY[0x1E69E9C10];
      v5 = "%25s:%-5d  ReadHeader";
LABEL_50:
      _os_log_impl(&dword_18F5DF000, v4, OS_LOG_TYPE_ERROR, v5, buf, 0x12u);
      return v3;
    }

    return v3;
  }

  AAGetMetaCodec(v2, this[10].i64);
  v43 = 0;
  v38 = this[12].i64[0];
  v6 = this[10].i64[0];
  if (v6 == 49164 || v6 == 49168)
  {
    v8 = 1096107074;
  }

  else
  {
    if (v6 != 49165)
    {
      v3 = 1718449215;
      goto LABEL_48;
    }

    v8 = 778924083;
  }

  v3 = 1685348671;
  v39 = v8;
  v40 = 0;
  v41 = vmovn_s64(this[11]);
  v42 = 0x100000000;
  (*(this->i64[0] + 184))(this, &v38);
  AAGetMetaCodec(v2, buf);
  if (!IAAFindSection(v2, 3, &v45))
  {
    OAAFileRead(v2, &v44, 2, 0);
    v45 = 56;
    OAAFileSetCurrentPos(v2, this[9].i64[0] + 56);
    IAAReadULong(v2, this[13].i64);
    this[13].i64[1] = 1000 * ((8 * this[13].i64[0]) % *&buf[8]) / *&buf[8] + 1000 * ((8 * this[13].i64[0]) / *&buf[8]);
    IAAFindSection(v2, 6, &v45);
    IAAReadULong(v2, this[16].i64);
    v9 = this[16].u64[0];
    if (v9)
    {
      v10 = 0;
      if (v9 >= 0x80)
      {
        v11 = 128;
      }

      else
      {
        v11 = this[16].i64[0];
      }

      v12 = &this[16].i64[1];
      do
      {
        *v12++ = v10;
        IAAReadULong(v2, &v45);
        IAAReadULong(v2, &v45);
        IAAReadULong(v2, &v45);
        IAAReadULong(v2, &v45);
        v10 += v45;
        IAAReadULong(v2, &v45);
        OAAFileRead(v2, &v44, 2, 0);
        IAAReadULong(v2, &v45);
        OAAFileSetCurrentPos(v2, v2->i64[0] + 8 * v45);
        --v11;
      }

      while (v11);
    }

    if (!IAAFindSection(v2, 1, &v45))
    {
      OAAFileRead(v2, &v44, 2, 0);
      OAAFileRead(v2, &v44, 2, 0);
      IAAReadULong(v2, &v45);
      IAAReadULong(v2, &v45);
      if (v45 == 1)
      {
        this[14].i64[0] = 1;
        IAAReadULong(v2, &this[14].i64[1]);
        IAAReadULong(v2, this[15].i64);
        IAAReadULong(v2, &this[15].i64[1]);
      }

      else
      {
        v13 = this[13].i64[0];
        this[14].i64[0] = 0;
        this[14].i64[1] = v13;
        this[15].i64[0] = 0;
        this[15].i64[1] = v13;
      }

      v14 = malloc_type_calloc(1uLL, 0x2C8uLL, 0x10300408F47D512uLL);
      if (v14)
      {
        v15 = v14;
        OAAFileSetCurrentPos(v2, 0);
        if (AAValidateFile(v2) || (v45 = 0, *buf = 0, IAAFindSection(v2, 5, &v45)) || (IAAReadULong(v2, buf), v16 = *buf, *(v15 + 456) = *buf, v45 != 4 * v16 + 4))
        {
LABEL_41:
          *(v15 + 656) = 0;
          free(*(v15 + 352));
          v22 = *(v15 + 536);
          if (v22)
          {
            if (v22[2])
            {
              free(v22[2]);
              v22 = *(v15 + 536);
            }

            free(v22);
          }

          v23 = *(v15 + 648);
          if (v23)
          {
            free(v23);
          }

          free(v15);
          goto LABEL_48;
        }

        if (v16 < 9)
        {
          if (!v16)
          {
LABEL_33:
            v44 = 0;
            v45 = 0;
            if (!IAAFindSection(v2, 1, &v45) && v45 == 24)
            {
              v18 = OAAFileRead(v2, buf, 2, 0);
              v19 = bswap32(*buf) >> 16;
              if (v18)
              {
                LOWORD(v19) = 0;
              }

              *(v15 + 288) = v19;
              if (!v18)
              {
                v20 = OAAFileRead(v2, buf, 2, 0);
                v21 = bswap32(*buf) >> 16;
                if (v20)
                {
                  LOWORD(v21) = 0;
                }

                *(v15 + 290) = v21;
                if (!v20)
                {
                  *buf = 0;
                  v25 = IAAReadULong(v2, buf);
                  *(v15 + 296) = *buf;
                  if (v25)
                  {
                    if (IAAReadULong(v2, &v44))
                    {
                      *buf = 0;
                      v26 = IAAReadULong(v2, buf);
                      *(v15 + 312) = *buf;
                      if (v26)
                      {
                        *buf = 0;
                        v27 = IAAReadULong(v2, buf);
                        *(v15 + 320) = *buf;
                        if (v27)
                        {
                          *buf = 0;
                          v28 = IAAReadULong(v2, buf);
                          *(v15 + 328) = *buf;
                          if (v28)
                          {
                            *(v15 + 304) = v44;
                            if (*(v15 + 296) == 1469084982 && !*(v15 + 290) && *(v15 + 288) <= 1u && !IAAFindSection(v2, 3, &v45))
                            {
                              IAAReadUShort(v2, (v15 + 360));
                              OAAFileSetCurrentPos(v2, v2->i64[0] + 56);
                              IAAReadULong(v2, (v15 + 368));
                              IAAReadULong(v2, (v15 + 376));
                              IAAReadULong(v2, buf);
                              IAAReadULong(v2, buf);
                              if (!IAAReadTableOfContent(v2, (v15 + 528)) && !IAAReadAudioOffsets(v2->i64, (v15 + 528)))
                              {
                                *(v15 + 640) = v2;
                                v29 = *(v15 + 544);
                                *(v15 + 680) = v29;
                                if (v29 <= 49164)
                                {
                                  if (v29 == 1)
                                  {
                                    v30 = 0;
                                    v31 = -1;
                                    goto LABEL_75;
                                  }

                                  if (v29 != 49164)
                                  {
LABEL_76:
                                    v30 = 0;
                                    v32 = -1;
                                    v31 = -1;
                                    goto LABEL_77;
                                  }

                                  v31 = 20;
                                }

                                else
                                {
                                  if (v29 == 49165)
                                  {
                                    v30 = 31850;
                                    v31 = 104;
                                    v32 = 22050;
LABEL_77:
                                    *(v15 + 684) = v30;
                                    *(v15 + 682) = v31;
                                    *(v15 + 686) = v32;
                                    IAADecryptAudibleHeader(v15);
                                    v33 = *(v15 + 528);
                                    v34 = *(v15 + 536);
                                    if (*(v15 + 528))
                                    {
                                      v35 = *(v15 + 616);
                                      v36 = *(v15 + 536);
                                      do
                                      {
                                        v37 = *v36;
                                        v36 += 12;
                                        v35 += v37;
                                        --v33;
                                      }

                                      while (v33);
                                      *(v15 + 616) = v35;
                                    }

                                    *(v15 + 608) = *(v34 + 16);
                                    v3 = 0;
                                    *(v15 + 648) = IAACodecCreate(*(v15 + 544));
                                    *(v15 + 600) = -1;
                                    this[80].i64[1] = v15;
                                    return v3;
                                  }

                                  if (v29 != 49171)
                                  {
                                    if (v29 == 49168)
                                    {
                                      v30 = 8444;
                                      v31 = 19;
LABEL_75:
                                      v32 = 8000;
                                      goto LABEL_77;
                                    }

                                    goto LABEL_76;
                                  }

                                  v31 = -1;
                                }

                                v32 = 16000;
                                v30 = 16000;
                                goto LABEL_77;
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

            goto LABEL_41;
          }
        }

        else
        {
          *(v15 + 456) = 8;
        }

        v17 = 0;
        do
        {
          IAAReadULong(v2, buf);
          *(v15 + 464 + 8 * v17++) = *buf;
        }

        while (v17 < *(v15 + 456));
        goto LABEL_33;
      }
    }
  }

LABEL_48:
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    *&buf[4] = "AudibleAudioFile.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 166;
    v4 = MEMORY[0x1E69E9C10];
    v5 = "%25s:%-5d  ParseHeader";
    goto LABEL_50;
  }

  return v3;
}

void AudibleAudioFile::~AudibleAudioFile(AudibleAudioFile *this)
{
  AudioFileObject::~AudioFileObject(this);

  JUMPOUT(0x193ADF220);
}

uint64_t AudibleAudioFormat::GetAvailableStreamDescriptions(AudibleAudioFormat *this, int a2, unsigned int *a3, void *__dst)
{
  if (a2 == 778924083 || a2 == 1096107074)
  {
    v11 = v4;
    v12 = v5;
    v10 = 0;
    memset(v9, 0, sizeof(v9));
    DWORD2(v9[0]) = a2;
    if (*a3 >= 0x28)
    {
      v7 = 40;
    }

    else
    {
      v7 = 0;
    }

    *a3 = v7;
    if (__dst)
    {
      memcpy(__dst, v9, v7);
    }

    return 0;
  }

  else
  {
    *a3 = 0;
    return 1718449215;
  }
}

uint64_t AudibleAudioFormat::GetAvailableFormatIDs(AudibleAudioFormat *this, unsigned int *a2, void *__dst)
{
  __src = 0x415544422E6D7033;
  v3 = *a2 >> 2;
  if (v3 >= 2)
  {
    v3 = 2;
  }

  v4 = 4 * v3;
  *a2 = v4;
  if (__dst)
  {
    memcpy(__dst, &__src, v4);
  }

  return 0;
}

void AudibleAudioFormat::GetFileTypeName(AudibleAudioFormat *this, const __CFString **a2)
{
  CABundleLocker::CABundleLocker(&v5);
  v3 = sAudioToolboxBundle;
  if (sAudioToolboxBundle == -1)
  {
    pthread_once(&sOnce, InitGetAudioToolboxBundle);
    v3 = sAudioToolboxBundle;
    if (sAudioToolboxBundle)
    {
      goto LABEL_3;
    }

LABEL_5:
    v4 = @"AUDB";
    goto LABEL_6;
  }

  if (!sAudioToolboxBundle)
  {
    goto LABEL_5;
  }

LABEL_3:
  v4 = CFBundleCopyLocalizedString(v3, @"AUDB", @"AUDB", @"FileTypeNames");
LABEL_6:
  *a2 = v4;
  CABundleLocker::~CABundleLocker(&v5);
}

const __CFArray *AudibleAudioFormat::GetUTIs(AudibleAudioFormat *this, const __CFArray **a2)
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = @"com.audible.aa-audiobook";
  result = CFArrayCreate(*MEMORY[0x1E695E480], v4, 1, MEMORY[0x1E695E9C0]);
  *a2 = result;
  return result;
}

const __CFArray *AudibleAudioFormat::GetExtensions(AudibleAudioFormat *this, const __CFArray **a2)
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = @"aa";
  result = CFArrayCreate(*MEMORY[0x1E695E480], v4, 1, MEMORY[0x1E695E9C0]);
  *a2 = result;
  return result;
}

uint64_t AT::TBitstreamWriter<unsigned short>::PutBits(uint64_t result, int a2, unsigned int a3)
{
  v3 = a2 & ~(-1 << a3);
  v4 = *(result + 28);
  if (*(result + 32))
  {
    v5 = v4 - 8;
    if (v4 - 8 <= a3)
    {
      v6 = *(result + 24);
      do
      {
        a3 -= v5;
        v7 = (v6 << v5) | (v3 >> a3);
        v8 = *(result + 8);
        *(result + 8) = v8 + 1;
        *v8 = v7;
        v9 = *(result + 32) - 1;
        *(result + 24) = 0;
        v4 = 16;
        *(result + 28) = 16;
        *(result + 32) = v9;
        v3 &= ~(-1 << a3);
        if (a3 < 8)
        {
          break;
        }

        v6 = 0;
        v5 = 8;
      }

      while (v9);
    }

    if (a3)
    {
      *(result + 24) = v3 | (*(result + 24) << a3);
      *(result + 28) = v4 - a3;
    }
  }

  else
  {
    *(result + 28) = v4 - a3;
    if ((v4 - a3) < 1)
    {
      v10 = *(result + 24);
      v11 = (v10 << v4) | (v3 >> (a3 - v4));
      v12 = v3 | (v10 << a3);
      if (v4 == a3)
      {
        v11 = v12;
      }

      *(result + 24) = v11;
      v13 = *(result + 8);
      if ((*(result + 16) - v13) >= 2)
      {
        *v13 = bswap32(v11) >> 16;
        v14 = *(result + 28);
        *(result + 24) = v3 & ~(-1 << -v14);
        *(result + 28) = v14 + 16;
        v13 = *(result + 8);
      }

      *(result + 8) = v13 + 1;
    }

    else
    {
      *(result + 24) = v3 | (*(result + 24) << a3);
    }
  }

  return result;
}

uint64_t SerializeTrackLoudnessData(const __CFDictionary *a1, unsigned __int8 *a2, unsigned __int16 a3, int a4, int a5)
{
  v5 = a5;
  *v47 = 0;
  v48 = a1;
  v49 = 0;
  *a2 = 0;
  a2[8] = 0;
  *&v44 = a2;
  *(&v44 + 1) = a2;
  *&v45 = &a2[a4];
  WORD4(v45) = 0;
  if (a5)
  {
    v7 = @"album loudness parameters";
  }

  else
  {
    v7 = @"main loudness parameters";
  }

  HIDWORD(v45) = 16;
  LODWORD(v46) = a2 & 1;
  if (!CACFDictionary::HasKey(&v48, v7))
  {
    v16 = 0;
    goto LABEL_105;
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v43 = 257;
  AT::TBitstreamWriter<unsigned short>::PutBits(&v44, 0, 2u);
  AT::TBitstreamWriter<unsigned short>::PutBits(&v44, 1, 6u);
  CACFDictionary::GetCACFDictionary(&v48, v7, &Mutable);
  AT::TBitstreamWriter<unsigned short>::PutBits(&v44, 0, 2u);
  UInt32 = CACFDictionary::GetUInt32(&Mutable, @"aa EQ Set ID", v47);
  v9 = v47[0];
  if (!UInt32)
  {
    v9 = 0;
  }

  AT::TBitstreamWriter<unsigned short>::PutBits(&v44, v9, 6u);
  AT::TBitstreamWriter<unsigned short>::PutBits(&v44, 0, 3u);
  v10 = CACFDictionary::GetUInt32(&Mutable, @"aa downmix ID", v47);
  v11 = v47[0];
  if (!v10)
  {
    v11 = 0;
  }

  AT::TBitstreamWriter<unsigned short>::PutBits(&v44, v11, 7u);
  v12 = CACFDictionary::GetUInt32(&Mutable, @"aa DRC Set", v47);
  v13 = v47[0];
  if (!v12)
  {
    v13 = 0;
  }

  AT::TBitstreamWriter<unsigned short>::PutBits(&v44, v13, 6u);
  if (CACFDictionary::GetFloat32(&Mutable, @"aa itu sample peak", &v47[1]))
  {
    v14 = *&v47[1];
    if (*&v47[1] < -107.97)
    {
      v14 = -107.97;
    }

    if (v14 > 19.969)
    {
      v14 = 19.969;
    }

    v15 = llroundf((20.0 - v14) * 32.0);
  }

  else
  {
    v15 = 0;
  }

  AT::TBitstreamWriter<unsigned short>::PutBits(&v44, v15, 0xCu);
  if (CACFDictionary::GetFloat32(&Mutable, @"aa itu true peak", &v47[1]))
  {
    v17 = *&v47[1];
    if (*&v47[1] < -107.97)
    {
      v17 = -107.97;
    }

    if (v17 > 19.969)
    {
      v17 = 19.969;
    }

    v18 = llroundf((20.0 - v17) * 32.0);
  }

  else
  {
    v18 = 0;
  }

  AT::TBitstreamWriter<unsigned short>::PutBits(&v44, v18, 0xCu);
  if (CACFDictionary::GetUInt32(&Mutable, @"aa true peak measurement system", v47))
  {
    v19 = v47[0];
    if (v47[0] >= 0xC)
    {
      goto LABEL_32;
    }
  }

  else
  {
    v19 = 2;
  }

  AT::TBitstreamWriter<unsigned short>::PutBits(&v44, v19, 4u);
  v41 = 0;
  if (CACFDictionary::GetUInt32(&Mutable, @"aa true peak reliability", &v41))
  {
    v20 = v41;
    if (v41 > 3)
    {
LABEL_32:
      CACFDictionary::~CACFDictionary(&Mutable);
      v16 = 1;
      goto LABEL_105;
    }
  }

  else
  {
    v20 = 3;
  }

  AT::TBitstreamWriter<unsigned short>::PutBits(&v44, v20, 4u);
  AT::TBitstreamWriter<unsigned short>::PutBits(&v44, a3, 8u);
  v39[0] = v44;
  v39[1] = v45;
  v40 = v46;
  *v53 = 0;
  if ((v5 & 1) == 0)
  {
    if (CACFDictionary::HasKey(&v48, @"dialogue anchor parameters"))
    {
      v51 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v52 = 257;
      CACFDictionary::GetCACFDictionary(&v48, @"dialogue anchor parameters", &v51);
      CACFDictionary::GetFloat32(&v51, @"aa itu loudness", &v53[1]);
      AT::TBitstreamWriter<unsigned short>::PutBits(v39, 2, 8u);
      if (*&v53[1] >= -57.75)
      {
        if (*&v53[1] <= 6.0)
        {
          v22 = llroundf((*&v53[1] + 57.75) * 4.0);
        }

        else
        {
          v22 = 255;
        }
      }

      else
      {
        v22 = 0;
      }

      AT::TBitstreamWriter<unsigned short>::PutBits(v39, v22, 8u);
      if (CACFDictionary::GetUInt32(&v48, @"aa anchor measurement system", v53))
      {
        v23 = v53[0];
        if (v53[0] > 0xB)
        {
          goto LABEL_48;
        }
      }

      else
      {
        v23 = 0;
      }

      AT::TBitstreamWriter<unsigned short>::PutBits(v39, v23, 4u);
      v50 = 0;
      if (CACFDictionary::GetUInt32(&v48, @"aa anchor reliability", &v50))
      {
        v24 = v50;
        if (v50 > 3)
        {
LABEL_48:
          CACFDictionary::~CACFDictionary(&v51);
          v16 = 1;
          goto LABEL_100;
        }
      }

      else
      {
        v24 = 3;
      }

      AT::TBitstreamWriter<unsigned short>::PutBits(v39, v24, 4u);
      CACFDictionary::~CACFDictionary(&v51);
    }

    v21 = &kLoudnessInfoDictionary_MainLoudnessParametersKey;
    goto LABEL_52;
  }

  v21 = &kLoudnessInfoDictionary_AlbumLoudnessParametersKey;
LABEL_52:
  v25 = *v21;
  if (!CACFDictionary::HasKey(&v48, *v21))
  {
    goto LABEL_99;
  }

  v51 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v52 = 257;
  CACFDictionary::GetCACFDictionary(&v48, v25, &v51);
  {
    FillLoudnessMethodsFromLIDNew(CACFDictionary const*,AT::TBitstreamWriter<unsigned short>,BOOL)::loudnessMethodKeysArray[0] = @"aa itu loudness";
    *algn_1EAD31298 = @"aa ebu top of loudness range";
    qword_1EAD312A0 = @"aa ebu max momentary loudness";
    unk_1EAD312A8 = @"aa ebu max short-term loudness";
    qword_1EAD312B0 = @"aa ebu loudness range";
    unk_1EAD312B8 = @"aa production mixing level";
    qword_1EAD312C0 = @"aa production room type";
    unk_1EAD312C8 = @"aa short term loudness";
  }

  {
    FillLoudnessMethodsFromLIDNew(CACFDictionary const*,AT::TBitstreamWriter<unsigned short>,BOOL)::loudnessMethodMeasurementSystemArray[0] = @"aa itu measurement system";
    unk_1EAD312E0 = @"aa ebu top measurement system";
    qword_1EAD312E8 = @"aa ebu max measurement system";
    unk_1EAD312F0 = @"aa ebu short measurement system";
    qword_1EAD312F8 = @"aa ebu measurement system";
    unk_1EAD31300 = @"aa production mixing level measurement system";
    qword_1EAD31308 = @"aa production room type measurement system";
    unk_1EAD31310 = @"aa short term loudness measurement system";
  }

  {
    FillLoudnessMethodsFromLIDNew(CACFDictionary const*,AT::TBitstreamWriter<unsigned short>,BOOL)::loudnessMethodReliabilityArray[0] = @"aa itu reliability";
    *algn_1EAD31328 = @"aa ebu top reliability";
    qword_1EAD31330 = @"aa ebu max reliability";
    unk_1EAD31338 = @"aa ebu short reliability";
    qword_1EAD31340 = @"aa ebu reliability";
    unk_1EAD31348 = @"aa production mixing level reliability";
    qword_1EAD31350 = @"aa production room type reliability";
    unk_1EAD31358 = @"aa short term loudness reliability";
  }

  for (i = 0; i != 8; ++i)
  {
    if (!CACFDictionary::HasKey(&v51, FillLoudnessMethodsFromLIDNew(CACFDictionary const*,AT::TBitstreamWriter<unsigned short>,BOOL)::loudnessMethodKeysArray[i]))
    {
      continue;
    }

    AT::TBitstreamWriter<unsigned short>::PutBits(v39, FillLoudnessMethodsFromLIDNew(CACFDictionary const*,AT::TBitstreamWriter<unsigned short>,BOOL)::loudnessMethodDefinitionArray[i], 8u);
    if (i <= 3)
    {
      CACFDictionary::GetFloat32(&v51, FillLoudnessMethodsFromLIDNew(CACFDictionary const*,AT::TBitstreamWriter<unsigned short>,BOOL)::loudnessMethodKeysArray[i], &v53[1]);
      if (*&v53[1] >= -57.75)
      {
        if (*&v53[1] <= 6.0)
        {
          v27 = llroundf((*&v53[1] + 57.75) * 4.0);
        }

        else
        {
          v27 = 255;
        }
      }

      else
      {
        v27 = 0;
      }

      AT::TBitstreamWriter<unsigned short>::PutBits(v39, v27, 8u);
    }

    if (i > 5)
    {
      if (i == 6)
      {
        CACFDictionary::GetUInt32(&v51, FillLoudnessMethodsFromLIDNew(CACFDictionary const*,AT::TBitstreamWriter<unsigned short>,BOOL)::loudnessMethodKeysArray[i], v53);
        v28 = v53[0];
        goto LABEL_82;
      }

      if (i == 7)
      {
        CACFDictionary::GetFloat32(&v51, FillLoudnessMethodsFromLIDNew(CACFDictionary const*,AT::TBitstreamWriter<unsigned short>,BOOL)::loudnessMethodKeysArray[i], &v53[1]);
        if (*&v53[1] < -116.0)
        {
LABEL_74:
          v28 = 0;
          goto LABEL_82;
        }

        if (*&v53[1] > 11.5)
        {
          v28 = 255;
          goto LABEL_82;
        }

        v29 = (*&v53[1] + 116.0) + (*&v53[1] + 116.0);
LABEL_81:
        v28 = llroundf(v29);
        goto LABEL_82;
      }
    }

    else
    {
      if (i == 4)
      {
        CACFDictionary::GetFloat32(&v51, FillLoudnessMethodsFromLIDNew(CACFDictionary const*,AT::TBitstreamWriter<unsigned short>,BOOL)::loudnessMethodKeysArray[i], &v53[1]);
        v28 = CompressLoudnessRange(*&v53[1]);
        goto LABEL_82;
      }

      if (i == 5)
      {
        CACFDictionary::GetFloat32(&v51, FillLoudnessMethodsFromLIDNew(CACFDictionary const*,AT::TBitstreamWriter<unsigned short>,BOOL)::loudnessMethodKeysArray[i], &v53[1]);
        if (*&v53[1] < 80.0)
        {
          goto LABEL_74;
        }

        if (*&v53[1] > 111.0)
        {
          v28 = 31;
LABEL_82:
          AT::TBitstreamWriter<unsigned short>::PutBits(v39, v28, 8u);
          goto LABEL_83;
        }

        v29 = *&v53[1] + -80.0;
        goto LABEL_81;
      }
    }

LABEL_83:
    if (CACFDictionary::GetUInt32(&v51, FillLoudnessMethodsFromLIDNew(CACFDictionary const*,AT::TBitstreamWriter<unsigned short>,BOOL)::loudnessMethodMeasurementSystemArray[i], v53))
    {
      if (v53[0] > 0xB)
      {
        goto LABEL_48;
      }

      AT::TBitstreamWriter<unsigned short>::PutBits(v39, LOWORD(v53[0]), 4u);
      v50 = 0;
      if (CACFDictionary::GetUInt32(&v51, FillLoudnessMethodsFromLIDNew(CACFDictionary const*,AT::TBitstreamWriter<unsigned short>,BOOL)::loudnessMethodReliabilityArray[i], &v50))
      {
        v30 = v50;
        if (v50 > 3)
        {
          goto LABEL_48;
        }
      }

      else if (v53[0] - 1 > 5)
      {
        v30 = 0;
      }

      else
      {
        v30 = word_18F9169CC[v53[0] - 1];
      }

      v33 = v30;
    }

    else
    {
      if ((0x9Fu >> i))
      {
        v31 = word_18F901EC0[i];
        v32 = 3;
      }

      else
      {
        v31 = 0;
        v32 = 0;
      }

      AT::TBitstreamWriter<unsigned short>::PutBits(v39, v31, 4u);
      v33 = v32;
    }

    AT::TBitstreamWriter<unsigned short>::PutBits(v39, v33, 4u);
  }

  CACFDictionary::~CACFDictionary(&v51);
LABEL_99:
  v16 = 0;
LABEL_100:
  CACFDictionary::~CACFDictionary(&Mutable);
  v34 = HIDWORD(v45);
  if ((BYTE12(v45) & 7) != 0)
  {
    AT::TBitstreamWriter<unsigned short>::PutBits(&v44, 0, BYTE12(v45) & 7);
    v34 = HIDWORD(v45);
  }

  if (v34 != 16)
  {
    v35 = *(&v44 + 1);
    v36 = WORD4(v45);
    v37 = 8 - v34;
    do
    {
      *v35++ = v36 >> v37;
      v37 -= 8;
    }

    while (v37 != -8);
  }

LABEL_105:
  CACFDictionary::~CACFDictionary(&v48);
  return v16;
}

void sub_18F7F7534(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  CACFDictionary::~CACFDictionary(va);
  CACFDictionary::~CACFDictionary(&a16);
  CACFDictionary::~CACFDictionary(&a24);
  _Unwind_Resume(a1);
}

uint64_t ExpandLegacyLoudnessBox(CACFDictionary *a1, uint64_t a2, float *a3, _BYTE *a4)
{
  v4 = *(a2 + 6);
  if (v4 == 0xFFFF)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = bswap32(v4);
  v10 = HIWORD(v9) & 0x7FFF;
  v11 = vcvts_n_f32_u32(v10, 8uLL);
  v12 = -(v10 * 0.0039062);
  if (v9 >> 16 >= 0)
  {
    v12 = v11;
  }

  CACFDictionary::AddFloat32(a1, @"aa itu true peak", v12);
  if (*(a2 + 10))
  {
    v13 = 0;
    v14 = 0;
    while (1)
    {
      v15 = (*(a2 + 16) + v13);
      v16 = v15[1];
      v17 = *v15;
      if (v17 == 6)
      {
        v18 = v16 - 128;
        if (v16 > 0x80)
        {
          v20 = v16 >= 0xCC;
          v21 = v16 - 204;
          if (v21 != 0 && v20)
          {
            v19 = v21 + 70.0;
          }

          else
          {
            v19 = (v18 * 0.5) + 32.0;
          }
        }

        else
        {
          v19 = vcvts_n_f32_u32(v16, 2uLL);
        }

        v22 = a1;
        v23 = @"aa ebu loudness range";
        goto LABEL_21;
      }

      v19 = (v16 * -0.25) + 6.0;
      if (v17 > 2)
      {
        if (v17 == 3)
        {
          v22 = a1;
          v23 = @"aa ebu max short-term loudness";
        }

        else
        {
          if (v17 != 4)
          {
            if (v17 == 5)
            {
              *a3 = v19;
              *a4 = 1;
            }

            goto LABEL_22;
          }

          v22 = a1;
          v23 = @"aa itu loudness";
        }

        goto LABEL_21;
      }

      if (v17 == 1)
      {
        break;
      }

      if (v17 == 2)
      {
        v22 = a1;
        v23 = @"aa ebu max momentary loudness";
LABEL_21:
        CACFDictionary::AddFloat32(v22, v23, v19);
      }

LABEL_22:
      ++v14;
      v13 += 4;
      if (v14 >= *(a2 + 10))
      {
        return 0;
      }
    }

    v22 = a1;
    v23 = @"aa ebu top of loudness range";
    goto LABEL_21;
  }

  return 0;
}

CACFDictionary *ExpandLoudnessBox(CACFDictionary *this, uint64_t a2, float *a3, _BYTE *a4)
{
  v7 = this;
  if (*(a2 + 4))
  {
    this = CACFDictionary::AddFloat32(this, @"aa itu sample peak", (*(a2 + 4) * -0.03125) + 20.0);
  }

  if (*(a2 + 6))
  {
    this = CACFDictionary::AddFloat32(v7, @"aa itu true peak", (*(a2 + 6) * -0.03125) + 20.0);
  }

  if (*(a2 + 10))
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      v10 = (*(a2 + 16) + v8);
      v11 = v10[1];
      v12 = *v10;
      if (v12 <= 4)
      {
        if (v12 > 2)
        {
          v13 = v11 * 0.25 + -57.75;
          v14 = v7;
          if (v12 == 3)
          {
            v15 = @"aa ebu top of loudness range";
          }

          else
          {
            v15 = @"aa ebu max momentary loudness";
          }
        }

        else
        {
          if (v12 != 1)
          {
            if (v12 == 2)
            {
              v16 = v11 * 0.25 + -57.75;
              *a3 = v16;
              *a4 = 1;
            }

            goto LABEL_35;
          }

          v13 = v11 * 0.25 + -57.75;
          v14 = v7;
          v15 = @"aa itu loudness";
        }

        goto LABEL_34;
      }

      if (v12 <= 6)
      {
        if (v12 == 5)
        {
          v13 = v11 * 0.25 + -57.75;
          v14 = v7;
          v15 = @"aa ebu max short-term loudness";
        }

        else
        {
          if (v11 > 0x80)
          {
            if (v11 > 0xCC)
            {
              v13 = (v11 - 204) + 70.0;
            }

            else
            {
              v13 = ((v11 - 128) * 0.5) + 32.0;
            }
          }

          else
          {
            v13 = vcvts_n_f32_u32(v11, 2uLL);
          }

          v14 = v7;
          v15 = @"aa ebu loudness range";
        }

        goto LABEL_34;
      }

      if (v12 == 7)
      {
        break;
      }

      if (v12 == 8)
      {
        this = CACFDictionary::AddUInt32(v7, @"aa production room type");
      }

      else if (v12 == 9)
      {
        v13 = vcvts_n_f32_u32(v11, 1uLL) + -116.0;
        v14 = v7;
        v15 = @"aa short term loudness";
LABEL_34:
        this = CACFDictionary::AddFloat32(v14, v15, v13);
      }

LABEL_35:
      ++v9;
      v8 += 4;
      if (v9 >= *(a2 + 10))
      {
        return this;
      }
    }

    if (v11 >= 0x1F)
    {
      v17 = 31;
    }

    else
    {
      v17 = v11;
    }

    v13 = (v17 + 80);
    v14 = v7;
    v15 = @"aa production mixing level";
    goto LABEL_34;
  }

  return this;
}

BOOL FindCanonicalLoudness(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = -1431655765 * ((a2 - a1) >> 3);
  if (v3)
  {
    v5 = 0;
    v6 = 1;
    while (1)
    {
      v7 = *(a1 + 24 * v5);
      v8 = -858993459 * ((*(a1 + 24 * v5 + 8) - v7) >> 3);
      if (v8)
      {
        break;
      }

LABEL_19:
      v6 = ++v5 < v3;
      if (v5 == v3)
      {
        return 0;
      }
    }

    while (1)
    {
      v9 = *v7;
      if (v9 == 63 || v9 == 0)
      {
        v11 = v7[1];
        if (v11 == 127 || v11 == 0)
        {
          v13 = v7[2];
          if (v13 == 63 || v13 == 0)
          {
            break;
          }
        }
      }

      v7 += 40;
      if (!--v8)
      {
        goto LABEL_19;
      }
    }

    v15 = *v7;
    *(a3 + 7) = *(v7 + 7);
    *a3 = v15;
    if (v7 != a3)
    {
      v16 = (a3 + 16);
      v17 = *(a3 + 16);
      v18 = *(v7 + 2);
      v19 = *(v7 + 3);
      v20 = v19 - v18;
      v21 = *(a3 + 32);
      if (v21 - v17 < (v19 - v18))
      {
        v22 = v20 >> 2;
        if (v17)
        {
          *(a3 + 24) = v17;
          operator delete(v17);
          v21 = 0;
          *v16 = 0;
          *(a3 + 24) = 0;
          *(a3 + 32) = 0;
        }

        if (!(v22 >> 62))
        {
          v23 = v21 >> 1;
          if (v21 >> 1 <= v22)
          {
            v23 = v20 >> 2;
          }

          if (v21 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v24 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v24 = v23;
          }

          std::vector<float>::__vallocate[abi:ne200100]((a3 + 16), v24);
        }

        std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
      }

      v25 = *(a3 + 24);
      v26 = v25 - v17;
      if (v25 - v17 >= v20)
      {
        if (v19 != v18)
        {
          memmove(*(a3 + 16), *(v7 + 2), v19 - v18);
        }

        v29 = &v17[v20];
      }

      else
      {
        if (v25 != v17)
        {
          memmove(*(a3 + 16), *(v7 + 2), v25 - v17);
          v25 = *(a3 + 24);
        }

        v27 = (v18 + v26);
        v28 = v19 - (v18 + v26);
        if (v28)
        {
          memmove(v25, v27, v28);
        }

        v29 = &v25[v28];
      }

      *(a3 + 24) = v29;
    }
  }

  else
  {
    return 0;
  }

  return v6;
}

uint64_t MP4BoxParser_TrackHeader::Init(MP4BoxParser **this)
{
  result = MP4BoxParser_Full::Initialize(this);
  if (!result)
  {
    if (*(this + 5) != 1953196132)
    {
      return 4294967294;
    }

    if (*(this + 56))
    {
      if (*(this + 56) != 1)
      {
        return 0xFFFFFFFFLL;
      }

      v3 = 16;
    }

    else
    {
      v3 = 8;
    }

    v4 = (*(*this + 3))(this);
    result = MP4BoxParser::ReadDataSourceBytes(this[1], v3 + v4, 4uLL, this + 60);
    if (!result)
    {
      *(this + 15) = bswap32(*(this + 15));
    }
  }

  return result;
}

void MP4BoxParser_TrackHeader::~MP4BoxParser_TrackHeader(MP4BoxParser_TrackHeader *this)
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

uint64_t MP4BoxParser_Movie::Init(MP4BoxParser_Movie *this)
{
  result = MP4BoxParser::Initialize(this);
  if (!result)
  {
    if (*(this + 5) == 1836019574)
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

void MP4BoxParser_Movie::~MP4BoxParser_Movie(MP4BoxParser_Movie *this)
{
  MP4BoxParser_Movie::~MP4BoxParser_Movie(this);

  JUMPOUT(0x193ADF220);
}

{
  *this = off_1F0330620;
  if (*(this + 56) == 1)
  {
    v2 = *(this + 8);
    if (v2)
    {
      std::__list_imp<MP4BoxInfo>::clear(*(this + 8));
      MEMORY[0x193ADF220](v2, 0x1020C4062D53EE8);
    }
  }

  v3 = *(this + 1);
  *this = &unk_1F0330650;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }
}

void MP4BoxParser_Movie::MP4BoxParser_Movie(MP4BoxParser_Movie *this, DataSource *a2, uint64_t a3)
{
  *this = &unk_1F0330650;
  (*(*a2 + 88))(a2, a3);
  *(this + 16) = 0;
  *(this + 5) = 0;
  *(this + 3) = 0;
  *(this + 32) = 0;
  *(this + 9) = 8;
  *this = off_1F0330620;
  *(this + 56) = 1;
  *(this + 8) = 0;
}

uint64_t MP4BoxParser_Movie::AudioTrackCount(MP4BoxParser_Movie *this)
{
  v11 = *MEMORY[0x1E69E9840];
  v1 = *(this + 8);
  if (!v1)
  {
    return 0;
  }

  v3 = 0;
  v4 = 0;
LABEL_3:
  v5 = *(v1 + 8);
  if (v5 == v1)
  {
    goto LABEL_9;
  }

  v6 = 0;
  do
  {
    if (*(v5 + 16) == 1953653099)
    {
      ++v6;
    }

    v5 = *(v5 + 8);
  }

  while (v5 != v1);
LABEL_10:
  if (v3 < v6)
  {
    v7 = *(v1 + 8);
    if (v7 == v1)
    {
      goto LABEL_23;
    }

    v8 = 0;
    while (1)
    {
      if (*(v7 + 16) == 1953653099)
      {
        if (v8 == v3)
        {
          MP4BoxParser_Track::MP4BoxParser_Track(v10, *(this + 1), *(v7 + 32), *(v7 + 40), v3);
          if (!MP4BoxParser_Track::Init(v10))
          {
            if (MP4BoxParser_Track::GetTrackType(v10) == 1936684398)
            {
              v4 = (v4 + 1);
            }

            else
            {
              v4 = v4;
            }
          }

          MP4BoxParser_Track::~MP4BoxParser_Track(v10);
          v1 = *(this + 8);
LABEL_23:
          ++v3;
          if (!v1)
          {
LABEL_9:
            v6 = 0;
            goto LABEL_10;
          }

          goto LABEL_3;
        }

        ++v8;
      }

      v7 = *(v7 + 8);
      if (v7 == v1)
      {
        goto LABEL_23;
      }
    }
  }

  return v4;
}

void *MP4BoxParser_Movie::GetAudioTrackData(MP4BoxParser_Movie *this, unsigned int a2, unsigned int *a3, unsigned int *a4)
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = *(this + 8);
  if (!v4)
  {
    return 0;
  }

  v5 = *(v4 + 8);
  if (v5 == v4)
  {
    return 0;
  }

  v10 = 0;
  do
  {
    if (*(v5 + 16) == 1953653099)
    {
      ++v10;
    }

    v5 = *(v5 + 8);
  }

  while (v5 != v4);
  if (v10 <= a2)
  {
    return 0;
  }

  v11 = 0;
  v12 = 0;
  while (1)
  {
    v13 = *(this + 8);
    v14 = *(v13 + 8);
    if (v14 != v13)
    {
      break;
    }

LABEL_21:
    if (++v12 == v10)
    {
      return 0;
    }
  }

  v15 = 0;
  while (*(v14 + 16) != 1953653099)
  {
LABEL_14:
    v14 = *(v14 + 8);
    if (v14 == v13)
    {
      goto LABEL_21;
    }
  }

  if (v15 != v12)
  {
    ++v15;
    goto LABEL_14;
  }

  MP4BoxParser_Track::MP4BoxParser_Track(v23, *(this + 1), *(v14 + 32), *(v14 + 40), v12);
  if (MP4BoxParser_Track::Init(v23) || MP4BoxParser_Track::GetTrackType(v23) != 1936684398)
  {
LABEL_20:
    MP4BoxParser_Track::~MP4BoxParser_Track(v23);
    goto LABEL_21;
  }

  if (v11 != a2)
  {
    ++v11;
    goto LABEL_20;
  }

  v18 = size;
  v19 = size;
  v20 = malloc_type_malloc(size, 0xAF09118CuLL);
  v16 = v20;
  if (!v20 && v19)
  {
    exception = __cxa_allocate_exception(8uLL);
    v22 = std::bad_alloc::bad_alloc(exception);
  }

  bzero(v20, v19);
  if (MP4BoxParser::ReadDataSourceBytes(*(this + 1), *(v14 + 32), v19, v16))
  {
    free(v16);
    v16 = 0;
  }

  else
  {
    *a3 = v18;
    *a4 = v12;
  }

  MP4BoxParser_Track::~MP4BoxParser_Track(v23);
  return v16;
}

uint64_t MP4BoxParser::Initialize(MP4BoxParser *this)
{
  if (*(this + 16))
  {
    return 0;
  }

  v12[3] = v1;
  v12[4] = v2;
  v5 = *(this + 1);
  if (!v5)
  {
    return 0xFFFFFFFFLL;
  }

  *(this + 9) = 8;
  result = MP4BoxParser::ReadDataSourceBytes(v5, 0, 8uLL, v11);
  if (result)
  {
    return result;
  }

  v6 = v11[0];
  v7 = bswap32(v11[1]);
  *(this + 3) = bswap32(v11[0]);
  *(this + 5) = v7;
  if (v6 == 0x1000000)
  {
    result = MP4BoxParser::ReadDataSourceBytes(*(this + 1), 8, 8uLL, this + 24);
    if (result)
    {
      return result;
    }

    *(this + 32) = 1;
    *(this + 9) = 16;
    *(this + 3) = bswap64(*(this + 3));
  }

  v12[0] = 0;
  MP4BoxParser::GetDataSourceSize(*(this + 1), v12);
  if (v8)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = *(this + 3);
  v10 = *(this + 9);
  if (v9 < v10 || v12[0] < v10)
  {
    return 0xFFFFFFFFLL;
  }

  if (v9 <= v12[0])
  {
    (*(**(this + 1) + 32))(*(this + 1));
  }

  else
  {
    *(this + 3) = v12[0];
  }

  if (*(this + 5) != 1970628964)
  {
LABEL_19:
    result = 0;
    *(this + 16) = 1;
    return result;
  }

  result = MP4BoxParser::ReadDataSourceBytes(*(this + 1), *(this + 9), 0x10uLL, this + 40);
  if (!result)
  {
    *(this + 9) += 16;
    goto LABEL_19;
  }

  return result;
}

uint64_t MP4BoxParser::ReadDataSourceBytes(MP4BoxParser *this, uint64_t a2, unint64_t a3, void *a4)
{
  v13 = *MEMORY[0x1E69E9840];
  if (!this)
  {
    CAVerboseAbort();
  }

  v8 = 0;
  v5 = (*(*this + 48))(this, 0, a2, a3, a4, &v8);
  if (v5)
  {
    v6 = v5;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v10 = "MP4_BoxParser.cpp";
      v11 = 1024;
      v12 = 1087;
      _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  DataSource read failed", buf, 0x12u);
    }
  }

  else if (v8 >= a3)
  {
    return 0;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v10 = "MP4_BoxParser.cpp";
      v11 = 1024;
      v12 = 1088;
      _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  DataSource read insufficient amount", buf, 0x12u);
    }

    return 0xFFFFFFFFLL;
  }

  return v6;
}

void MP4BoxParser::GetDataSourceSize(MP4BoxParser *this, uint64_t *a2)
{
  if (this)
  {
    v3 = *(*this + 24);

    v3();
  }

  else
  {
    v4 = CAVerboseAbort();
    MP4BoxParser::~MP4BoxParser(v4);
  }
}

void MP4BoxParser::~MP4BoxParser(MP4BoxParser *this)
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

uint64_t MP4BoxParser_Full::Initialize(MP4BoxParser_Full *this)
{
  result = MP4BoxParser::Initialize(this);
  if (!result)
  {
    result = MP4BoxParser::ReadDataSourceBytes(*(this + 1), *(this + 9), 4uLL, &v3);
    if (!result)
    {
      *(this + 56) = v3;
      *(this + 57) = v4;
      *(this + 59) = v5;
    }
  }

  return result;
}

uint64_t NUMovieBox::SerializeToDataSource(unsigned int *a1, uint64_t a2, uint64_t a3, int a4, const void *a5, unsigned int a6, const void *a7, unsigned int a8, uint64_t a9, __int128 a10, unsigned int *a12, void *a13, int a14, char a15)
{
  v16 = a1 + 67;
  v17 = *(a1 + 358) + a6;
  *(a1 + 358) = v17;
  v18 = *(a1 + 350) + a6;
  *(a1 + 350) = v18;
  v19 = *(a1 + 290) + a6;
  *(a1 + 290) = v19;
  v20 = a1[54] + a6;
  a1[54] = v20;
  v21 = a14 + a6 + a1[29];
  a1[29] = v21;
  v22 = a14 + a6 + a8 + *a1;
  *a1 = v22;
  if (a4)
  {
    *(a1 + 366) = 1;
  }

  v23 = DWORD2(a10);
  if (a9)
  {
    v21 += 36;
    a1[29] = v21;
    v22 += 36;
    *a1 = v22;
  }

  if (a10 != 0 || a12)
  {
    if (a10)
    {
      v24 = 4 * bswap32(*(a10 + 12)) + 16;
      if (!*(&a10 + 1))
      {
LABEL_10:
        v25 = v23 + v24;
        if (a12)
        {
          v26 = 8 * bswap32(a12[4]) + 20;
        }

        else
        {
          v26 = 0;
        }

        v27 = v25 + v26;
        *(a1 + 350) = v27 + v18;
        *(a1 + 290) = v27 + v19;
        a1[54] = v27 + v20;
        v21 += v27;
        a1[29] = v21;
        v22 += v27;
        *a1 = v22;
        goto LABEL_16;
      }
    }

    else
    {
      v24 = 0;
      if (!*(&a10 + 1))
      {
        goto LABEL_10;
      }
    }

    v23 = 2 * bswap32(*(*(&a10 + 1) + 20)) + 24;
    goto LABEL_10;
  }

LABEL_16:
  v139 = a1[1];
  v140 = *(a1 + 1);
  v143 = a1[4];
  v138 = *(a1 + 5);
  v137 = a1[9];
  v136 = *(a1 + 20);
  v135 = *(a1 + 21);
  v133 = *(a1 + 15);
  v134 = *(a1 + 11);
  v131 = *(a1 + 23);
  v132 = *(a1 + 19);
  v129 = *(a1 + 27);
  v128 = a1[30];
  v28 = *(a1 + 31);
  v142 = a1[33];
  v127 = *(a1 + 34);
  v29 = *(a1 + 38);
  v126 = a1[40];
  v30 = *(a1 + 41);
  v124 = *(a1 + 47);
  v125 = *(a1 + 43);
  v31 = *(a1 + 51);
  v144 = a1[58];
  v32 = *(a1 + 126);
  v33 = *(a1 + 127);
  v145 = a1[66];
  v146 = *(a1 + 144);
  v147 = *(a1 + 306);
  v113 = *(a1 + 155);
  v115 = *(a1 + 156);
  v117 = a1[71];
  v148 = *(a1 + 330);
  v121 = *(a1 + 342);
  v123 = a1[53];
  v149 = *(a1 + 346);
  v34.i64[0] = *(a1 + 350);
  v150 = *(a1 + 366);
  v35 = *(a1 + 370);
  v153 = *(a1 + 382);
  v151 = *(a1 + 386);
  v156 = *(a1 + 406);
  v152 = *(a1 + 410);
  v155 = *(a1 + 422);
  v158 = *(a1 + 430);
  v34.i32[2] = v17;
  v154 = *(a1 + 438);
  v34.i32[3] = *(a1 + 362);
  v119 = v34;
  v36 = bswap32(*(a1 + 434));
  if (v155.i32[1] == 1937013298)
  {
    v36 = *(a1 + 434);
  }

  v157 = v36;
  v103 = *(a1 + 59);
  v105 = *(a1 + 54);
  v37 = *(a1 + 64);
  v107 = *v16;
  v109 = *(a1 + 290);
  v111 = *(a1 + 314);
  v38 = *(a1 + 334);
  v39 = *(a1 + 374);
  v40 = *(a1 + 398);
  v93 = *(a1 + 454);
  v94 = *(a1 + 450);
  v95 = *(a1 + 458);
  v92 = *(a1 + 462);
  v41 = malloc_type_malloc(v22, 0xC80B07DDuLL);
  v42 = v41;
  if (v22 && !v41)
  {
    exception = __cxa_allocate_exception(8uLL);
    v91 = std::bad_alloc::bad_alloc(exception);
  }

  v102 = vrev32q_s8(v105);
  v43 = vrev32q_s8(v103);
  v104 = bswap32(v32) >> 16;
  v44 = vrev32_s8(v37);
  v106 = v43;
  v108 = vrev32q_s8(v107);
  v100 = bswap32(v33) >> 16;
  v101 = bswap32(v117);
  v45 = vrev32q_s8(v109);
  v110 = bswap32(v115) >> 16;
  v112 = vrev32q_s8(v111);
  v46 = vrev32_s8(v38);
  v114 = bswap32(v113) >> 16;
  v116 = bswap32(v121);
  v118 = v45;
  v120 = vrev32q_s8(v119);
  v122 = bswap32(v35);
  v47.i64[0] = v129;
  v47.i64[1] = __PAIR64__(v128, v21);
  v130 = vrev32q_s8(v47);
  v47.i64[0] = __PAIR64__(v139, v22);
  v47.i64[1] = v140;
  v141 = vrev32q_s8(v47);
  bzero(v41, v22);
  v162[0] = 216;
  *v42 = v141;
  *(v42 + 4) = v143;
  *(v42 + 20) = vrev32q_s8(v138);
  *(v42 + 9) = bswap32(v137);
  *(v42 + 20) = __rev16(v136);
  *(v42 + 21) = __rev16(v135);
  *(v42 + 44) = vrev32q_s8(v134);
  *(v42 + 60) = vrev32q_s8(v133);
  *(v42 + 76) = vrev32q_s8(v132);
  *(v42 + 92) = vrev32q_s8(v131);
  *(v42 + 108) = v130;
  *(v42 + 124) = vrev32_s8(v28);
  *(v42 + 33) = v142;
  *(v42 + 136) = vrev32q_s8(v127);
  *(v42 + 19) = vrev32_s8(v29);
  *(v42 + 40) = bswap32(v126);
  *(v42 + 164) = vrev16_s8(v30);
  *(v42 + 172) = vrev32q_s8(v125);
  *(v42 + 188) = vrev32q_s8(v124);
  *(v42 + 204) = vrev32_s8(v31);
  v48 = v42 + 216;
  *(v42 + 53) = bswap32(v123);
  if (a9)
  {
    v162[0] = 36;
    v49 = *(a9 + 32);
    v50 = *(a9 + 16);
    *v48 = *a9;
    *(v42 + 232) = v50;
    *(v42 + 62) = v49;
    v48 = v42 + 252;
  }

  v162[0] = 158;
  *v48 = v102;
  *(v48 + 4) = v144;
  *(v48 + 20) = v106;
  *(v48 + 18) = v104;
  *(v48 + 19) = v100;
  *(v48 + 5) = v44;
  *(v48 + 12) = v145;
  *(v48 + 52) = v108;
  *(v48 + 17) = v101;
  *(v48 + 36) = v146;
  *(v48 + 74) = v118;
  *(v48 + 90) = v147;
  *(v48 + 47) = v114;
  *(v48 + 48) = v110;
  *(v48 + 98) = v112;
  *(v48 + 114) = v148;
  *(v48 + 118) = v46;
  *(v48 + 126) = v116;
  *(v48 + 130) = v149;
  v51 = v48 + 158;
  *(v48 + 134) = v120;
  *(v48 + 150) = v150;
  *(v48 + 154) = v122;
  memcpy(v48 + 158, a5, a6);
  v52 = &v51[a6];
  if (a10)
  {
    v53 = 4 * bswap32(*(a10 + 12)) + 16;
    v162[0] = v53;
    memcpy(v52, a10, v53);
    v52 = (v52 + v53);
  }

  if (*(&a10 + 1))
  {
    v54 = 2 * bswap32(*(*(&a10 + 1) + 20)) + 24;
    memcpy(v52, *(&a10 + 1), v54);
    v52 = (v52 + v54);
  }

  v55 = vrev32_s8(v39);
  v56 = bswap32(v151);
  if (a12 && *(v16 + 118))
  {
    v57 = 8 * bswap32(a12[4]) + 20;
    memcpy(v52, a12, v57);
    v52 = (v52 + v57);
  }

  v58 = vrev32_s8(v40);
  v59 = bswap32(v152);
  *v52 = v55;
  v52[1].i32[0] = v153;
  v52[1].i32[1] = v56;
  v60 = v52 + 2;
  if (*(v16 + 118))
  {
    v61 = 0;
    v62 = 0;
    v63 = a14;
    do
    {
      v162[0] = 8;
      v60[v61 / 8] = bswap64(*(**(v16 + 122) + v61 + 4) | (*(**(v16 + 122) + v61) << 32));
      ++v62;
      v61 += 8;
    }

    while (v62 < *(v16 + 118));
    v60 = (v60 + v61);
  }

  else
  {
    v63 = a14;
  }

  v64 = vrev32_s8(v155);
  v65 = bswap32(v154);
  *v60 = v58;
  v60[1].i32[0] = v156;
  v60[1].i32[1] = v59;
  v66 = v60 + 2;
  if (*(v16 + 142))
  {
    v67 = 0;
    v68 = 0;
    do
    {
      v69 = (v66 + v67);
      v70 = (**(v16 + 146) + v67);
      v71 = bswap32(v70[1].u32[0]);
      *v69 = vrev32_s8(*v70);
      v69[1].i32[0] = v71;
      ++v68;
      v67 += 12;
    }

    while (v68 < *(v16 + 142));
    v66 = (v66 + v67);
  }

  *v66 = v64;
  v66[1].i32[0] = v158;
  v66[1].i32[1] = v157;
  v66[2].i32[0] = v65;
  v72 = &v66[2] + 1;
  if (a15)
  {
    if (*(v16 + 170))
    {
      if (*(a1 + 437) != 16)
      {
        free(v42);
        return 4294967294;
      }

      v73 = 0;
      v74 = 2;
      v162[0] = 2;
      do
      {
        __src = bswap32(*(**(v16 + 174) + 4 * v73)) >> 16;
        memcpy(v72, &__src, v74);
        v74 = v162[0];
        v72 = (v72 + v162[0]);
        ++v73;
      }

      while (v73 < *(v16 + 170));
    }
  }

  else if (!*(v16 + 166))
  {
    v162[0] = 4;
    if (*(v16 + 170))
    {
      v75 = 0;
      v76 = 4;
      do
      {
        v160 = bswap32(*(**(v16 + 174) + 4 * v75));
        memcpy(v72, &v160, v76);
        v76 = v162[0];
        v72 = (v72 + v162[0]);
        ++v75;
      }

      while (v75 < *(v16 + 170));
    }
  }

  v77 = bswap32(v93);
  v78 = bswap32(v94);
  v79 = bswap32(v92);
  v80 = *(v16 + 194);
  if (v80)
  {
    v81 = *(**(v16 + 198) + 8 * (v80 - 1));
    v82 = v81 <= 0xFFFFFFFFLL;
    v80 = v81 > 0xFFFFFFFFLL;
    if (!v82)
    {
      v77 = 875982691;
    }
  }

  v162[0] = 16;
  *v72 = v78;
  v72[1] = v77;
  v72[2] = v95;
  v72[3] = v79;
  v83 = v72 + 4;
  if (*(v16 + 194))
  {
    v84 = 0;
    do
    {
      v85 = *(**(v16 + 198) + 8 * v84);
      if (v80)
      {
        v162[0] = 8;
        *v83 = bswap64(v85);
        v86 = 8;
      }

      else
      {
        v162[0] = 4;
        *v83 = bswap32(v85);
        v86 = v162[0];
      }

      v83 = (v83 + v86);
      ++v84;
    }

    while (v84 < *(v16 + 194));
  }

  if (a13)
  {
    v87 = a7;
    if (v63)
    {
      memcpy(v83, a13, v63);
      v83 = (v83 + v63);
    }
  }

  else
  {
    v87 = a7;
  }

  if (v87 && a8)
  {
    memcpy(v83, v87, a8);
  }

  v88 = (*(*a2 + 56))(a2, 0, a3, *a1, v42, v162);
  free(v42);
  return v88;
}

void NUMovieBox::AppendTimeToSample(uint64_t a1, int a2)
{
  v2 = a1;
  v3 = (a1 + 290);
  v4 = *(a1 + 386);
  if (!v4)
  {
    *(a1 + 374) += 8;
    *(a1 + 386) = 1;
    LODWORD(v7) = 1;
    HIDWORD(v7) = a2;
    v5 = *(a1 + 390);
LABEL_6:
    std::vector<TimeToSampleEntry>::push_back[abi:ne200100](v5, &v7);
    v3[15] += 8;
    *v3 += 8;
    v2[54] += 8;
    v2[29] += 8;
    v6 = 8;
    goto LABEL_7;
  }

  v5 = *(a1 + 390);
  v6 = 1;
  if (*(*v5 + 8 * (v4 - 1) + 4) != a2)
  {
    v3[21] += 8;
    v3[24] = v4 + 1;
    LODWORD(v7) = 1;
    HIDWORD(v7) = a2;
    goto LABEL_6;
  }

  v2 = (*v5 + 8 * (v4 - 1));
LABEL_7:
  *v2 += v6;
}

void std::vector<TimeToSampleEntry>::push_back[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = (v7 >> 3) + 1;
    if (v8 >> 61)
    {
      std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
    }

    v9 = v3 - v6;
    if (v9 >> 2 > v8)
    {
      v8 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if (!(v10 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v11 = (8 * (v7 >> 3));
    *v11 = *a2;
    v5 = v11 + 1;
    memcpy(0, v6, v7);
    *a1 = 0;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = v4 + 1;
  }

  *(a1 + 8) = v5;
}

void NUMovieBox::AppendPacketSize(uint64_t a1, int a2)
{
  v3 = a1;
  v4 = (a1 + 290);
  if (*(a1 + 426) == 1937011578)
  {
    if (!*(a1 + 434))
    {
      v5 = *(a1 + 442);
      v7 = *(v5 + 8);
      v6 = *(v5 + 16);
      if (v7 < v6)
      {
        *v7 = a2;
        v8 = (v7 + 1);
LABEL_30:
        *(v5 + 8) = v8;
        v14 = 4;
        goto LABEL_31;
      }

      v21 = *v5;
      v22 = v7 - *v5;
      v23 = v22 >> 2;
      v24 = (v22 >> 2) + 1;
      if (!(v24 >> 62))
      {
        v25 = v6 - v21;
        if (v25 >> 1 > v24)
        {
          v24 = v25 >> 1;
        }

        if (v25 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v26 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v26 = v24;
        }

        if (v26)
        {
          std::allocator<APAC::UI18>::allocate_at_least[abi:ne200100](v26);
        }

        *(4 * v23) = a2;
        v8 = 4 * v23 + 4;
        memcpy(0, v21, v22);
        v28 = *v5;
        *v5 = 0;
        *(v5 + 8) = v8;
        *(v5 + 16) = 0;
        if (v28)
        {
          operator delete(v28);
        }

        goto LABEL_30;
      }

LABEL_33:
      std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
    }
  }

  else if (*(a1 + 437) == 16)
  {
    v9 = *(a1 + 442);
    v10 = a2;
    v12 = *(v9 + 8);
    v11 = *(v9 + 16);
    if (v12 >= v11)
    {
      v15 = *v9;
      v16 = v12 - *v9;
      v17 = v16 >> 2;
      v18 = (v16 >> 2) + 1;
      if (v18 >> 62)
      {
        goto LABEL_33;
      }

      v19 = v11 - v15;
      if (v19 >> 1 > v18)
      {
        v18 = v19 >> 1;
      }

      if (v19 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v20 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v20 = v18;
      }

      if (v20)
      {
        std::allocator<APAC::UI18>::allocate_at_least[abi:ne200100](v20);
      }

      *(4 * v17) = v10;
      v13 = 4 * v17 + 4;
      memcpy(0, v15, v16);
      v27 = *v9;
      *v9 = 0;
      *(v9 + 8) = v13;
      *(v9 + 16) = 0;
      if (v27)
      {
        operator delete(v27);
      }
    }

    else
    {
      *v12 = a2;
      v13 = (v12 + 1);
    }

    *(v9 + 8) = v13;
    v14 = 2;
LABEL_31:
    ++v4[37];
    v4[33] += v14;
    v4[15] += v14;
    *v4 += v14;
    v3[54] += v14;
    v3[29] += v14;
    goto LABEL_32;
  }

  v3 = (a1 + 438);
  v14 = 1;
LABEL_32:
  *v3 += v14;
}

uint64_t NUMovieBox::GetByteCountForPackets(uint64_t result, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = result;
  v3 = 0;
  LODWORD(result) = 0;
  v4 = v2 + 426;
  do
  {
    if (*v4 != 1937011578 || (v5 = *(v4 + 8)) == 0)
    {
      v5 = *(v4 + 12);
      if (v5)
      {
        v5 = *(**(v4 + 16) + v3);
      }
    }

    result = (v5 + result);
    v3 += 4;
  }

  while (4 * a2 != v3);
  return result;
}

uint64_t FillMP4BoxTable(uint64_t a1, int64_t a2, int64_t a3, uint64_t *a4, int a5, int a6)
{
  v28 = *MEMORY[0x1E69E9840];
  if (a2 >= a3 - 8)
  {
    return 0;
  }

  v21 = &unk_1F0330650;
  (*(*a1 + 88))(&v22, a1, a2);
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 8;
  if (!MP4BoxParser::Initialize(&v21))
  {
    if ((v25 & 0x8000000000000000) != 0)
    {
      v16 = -1;
      goto LABEL_38;
    }

    if (!a5)
    {
LABEL_37:
      v17.n128_u32[0] = v24;
      v17.n128_u64[1] = v25;
      v18 = a2;
      v19 = 0;
      v20 = 0;
      MP4BoxInfoTable::Add(a4, &v17);
    }

    if (v24 <= 1835626085)
    {
      if (v24 > 1819632755)
      {
        if (v24 > 1835365472)
        {
          if (v24 == 1835365473)
          {
            goto LABEL_35;
          }

          v9 = 1835430497;
        }

        else
        {
          if (v24 == 1819632756)
          {
            goto LABEL_35;
          }

          v9 = 1835297121;
        }
      }

      else if (v24 > 1768715123)
      {
        if (v24 == 1768715124)
        {
          goto LABEL_35;
        }

        v9 = 1768977007;
      }

      else
      {
        if (v24 == 1684631142)
        {
          goto LABEL_35;
        }

        v9 = 1701082227;
      }
    }

    else if (v24 <= 1936289381)
    {
      if (v24 > 1836019573)
      {
        if (v24 == 1836019574)
        {
          goto LABEL_35;
        }

        v9 = 1836475768;
      }

      else
      {
        if (v24 == 1835626086)
        {
          goto LABEL_35;
        }

        v9 = 1836019558;
      }
    }

    else
    {
      if (v24 > 1953653093)
      {
        if (v24 != 1953653094 && v24 != 1969517665)
        {
          v9 = 1953653099;
          goto LABEL_34;
        }

LABEL_35:
        if (a2 + v27 < a3)
        {
          operator new();
        }

        goto LABEL_37;
      }

      if (v24 == 1936289382)
      {
        goto LABEL_35;
      }

      v9 = 1937007212;
    }

LABEL_34:
    if (v24 != v9)
    {
      goto LABEL_37;
    }

    goto LABEL_35;
  }

  if (a2 == a2)
  {
    v8 = -1;
  }

  else
  {
    v8 = -2;
  }

  v16 = v8;
LABEL_38:
  v10 = v22;
  v21 = &unk_1F0330650;
  v22 = 0;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  return v16;
}

void sub_18F7F9B34(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  if (a21)
  {
    (*(*a21 + 8))(a21, a2, a3, a4, a5, a6, a7, a8);
  }

  if (a23)
  {
    (*(*a23 + 8))(a23, a2, a3, a4, a5, a6, a7, a8);
  }

  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  _Unwind_Resume(exception_object);
}

void MP4BoxInfoTable::Add(uint64_t *a1, __n128 *a2)
{
  v2 = a2[2].n128_u64[0];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  operator new();
}

void sub_18F7F9C7C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_emplace<MP4BoxInfoTable>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F0330680;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x193ADF220);
}

uint64_t FindBoxInfo(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v28 = *MEMORY[0x1E69E9840];
  v8 = a6[1];
  if (v8 != a6)
  {
    v9 = 0;
    v10 = a6[1];
    do
    {
      if (*(v10 + 16) == a4)
      {
        if (v9 == a5)
        {
          return v10 + 16;
        }

        ++v9;
      }

      v10 = *(v10 + 8);
    }

    while (v10 != a6);
  }

  v11 = a6[2];
  if (v11)
  {
    v12 = v11 - 1;
    if ((v11 - 1) < 0)
    {
      do
      {
        v8 = *v8;
      }

      while (!__CFADD__(v12++, 1));
    }

    else if (v11 != 1)
    {
      do
      {
        v8 = v8[1];
        --v11;
      }

      while (v11 > 1);
    }

    if (v8 != a6)
    {
      a2 = v8[3] + v8[4];
    }
  }

  v14 = 0;
  if (a2 < a3)
  {
    v21 = &unk_1F0330650;
    (*(*a1 + 88))(&v22, a1, a2, a3, a4, a5);
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 8;
    if (!MP4BoxParser::Initialize(&v21))
    {
      v17.n128_u32[0] = v24;
      v17.n128_u64[1] = v25;
      v18 = a2;
      v19 = 0;
      v20 = 0;
      MP4BoxInfoTable::Add(a6, &v17);
    }

    v15 = v22;
    v21 = &unk_1F0330650;
    v22 = 0;
    if (v15)
    {
      (*(*v15 + 8))(v15);
    }

    return 0;
  }

  return v14;
}

void sub_18F7F9F60(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (a16)
  {
    (*(*a16 + 8))(a16, a2, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MP4BoxParser::FindBoxInfo(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = a1[1];
  v9 = (*(*a1 + 24))(a1);
  v10 = a1[3];

  return FindBoxInfo(v8, v9, v10, a2, a3, a4);
}

uint64_t MP4BoxParser_TrackFragmentRun::Init(MP4BoxParser_TrackFragmentRun *this)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = MP4BoxParser_Full::Initialize(this);
  if (v2)
  {
    return v2;
  }

  if (*(this + 5) != 1953658222)
  {
    return 4294967294;
  }

  v3 = (*(*this + 24))(this);
  v4 = *(this + 3);
  if (v4 <= (*(*this + 24))(this) || *(this + 3) <= 3uLL)
  {
    v2 = 1685348671;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v23 = 136315394;
      v24 = "MP4_BoxParser_TrackFragmentRun.cpp";
      v25 = 1024;
      v26 = 116;
      v5 = MEMORY[0x1E69E9C10];
      v6 = "%25s:%-5d  'trun' box is too small for its sample count";
LABEL_7:
      _os_log_impl(&dword_18F5DF000, v5, OS_LOG_TYPE_ERROR, v6, &v23, 0x12u);
      return v2;
    }

    return v2;
  }

  v8 = v3;
  DataSourceBytes = MP4BoxParser::ReadDataSourceBytes(*(this + 1), v3, 4uLL, this + 92);
  if (DataSourceBytes)
  {
    v2 = DataSourceBytes;
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      return v2;
    }

    v23 = 136315394;
    v24 = "MP4_BoxParser_TrackFragmentRun.cpp";
    v25 = 1024;
    v26 = 118;
    v5 = MEMORY[0x1E69E9C10];
    v6 = "%25s:%-5d  Couldn't read sample count";
    goto LABEL_7;
  }

  *(this + 23) = bswap32(*(this + 23));
  v10 = v3 + 4;
  if (*(this + 59))
  {
    v13 = *(this + 3);
    if (v13 <= (*(*this + 24))(this) || *(this + 3) <= 7uLL)
    {
      v2 = 1685348671;
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        return v2;
      }

      v23 = 136315394;
      v24 = "MP4_BoxParser_TrackFragmentRun.cpp";
      v25 = 1024;
      v26 = 128;
      v5 = MEMORY[0x1E69E9C10];
      v6 = "%25s:%-5d  'trun' box is too small for its data offset";
      goto LABEL_7;
    }

    v17 = MP4BoxParser::ReadDataSourceBytes(*(this + 1), v8 + 4, 4uLL, this + 96);
    if (v17)
    {
      v2 = v17;
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        return v2;
      }

      v23 = 136315394;
      v24 = "MP4_BoxParser_TrackFragmentRun.cpp";
      v25 = 1024;
      v26 = 131;
      v5 = MEMORY[0x1E69E9C10];
      v6 = "%25s:%-5d  Couldn't read data offset";
      goto LABEL_7;
    }

    *(this + 24) = bswap32(*(this + 24));
    v10 = v8 + 8;
    v11 = 8;
    if ((*(this + 59) & 4) == 0)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v11 = 4;
    if ((*(this + 59) & 4) == 0)
    {
      goto LABEL_15;
    }
  }

  v18 = *(this + 3);
  if (v18 <= (*(*this + 24))(this) || (v11 += 4, *(this + 3) < v11))
  {
    v2 = 1685348671;
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      return v2;
    }

    v23 = 136315394;
    v24 = "MP4_BoxParser_TrackFragmentRun.cpp";
    v25 = 1024;
    v26 = 140;
    v5 = MEMORY[0x1E69E9C10];
    v6 = "%25s:%-5d  'trun' box is too small for its first sample flags";
    goto LABEL_7;
  }

  v19 = MP4BoxParser::ReadDataSourceBytes(*(this + 1), v10, 4uLL, this + 100);
  if (v19)
  {
    v2 = v19;
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      return v2;
    }

    v23 = 136315394;
    v24 = "MP4_BoxParser_TrackFragmentRun.cpp";
    v25 = 1024;
    v26 = 143;
    v5 = MEMORY[0x1E69E9C10];
    v6 = "%25s:%-5d  Couldn't read first sample flags";
    goto LABEL_7;
  }

  *(this + 25) = bswap32(*(this + 25));
  v10 += 4;
LABEL_15:
  v12 = *(this + 58);
  if (v12)
  {
    *(this + 104) = 1;
    *(this + 22) += 4;
    if ((v12 & 2) == 0)
    {
LABEL_17:
      if ((v12 & 4) == 0)
      {
        goto LABEL_18;
      }

LABEL_26:
      *(this + 106) = 1;
      *(this + 22) += 4;
      if ((v12 & 8) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_27;
    }
  }

  else if ((*(this + 58) & 2) == 0)
  {
    goto LABEL_17;
  }

  *(this + 105) = 1;
  *(this + 22) += 4;
  if ((v12 & 4) != 0)
  {
    goto LABEL_26;
  }

LABEL_18:
  if ((v12 & 8) == 0)
  {
LABEL_19:
    v2 = *(this + 22);
    goto LABEL_28;
  }

LABEL_27:
  *(this + 107) = 1;
  v2 = (*(this + 22) + 4);
  *(this + 22) = v2;
LABEL_28:
  if (!v2)
  {
    return v2;
  }

  v14 = *(this + 23);
  v15 = *(this + 3);
  if (v15 <= (*(*this + 24))(this) || (v16 = (v14 * v2), *(this + 3) < v11 + v16))
  {
    v2 = 1685348671;
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      return v2;
    }

    v23 = 136315394;
    v24 = "MP4_BoxParser_TrackFragmentRun.cpp";
    v25 = 1024;
    v26 = 179;
    v5 = MEMORY[0x1E69E9C10];
    v6 = "%25s:%-5d  'trun' box is too small for its per packet info";
    goto LABEL_7;
  }

  v20 = *(this + 8);
  v21 = *(this + 9);
  LOBYTE(v23) = 0;
  v22 = v21 - v20;
  if (v16 <= v22)
  {
    if (v16 < v22)
    {
      *(this + 9) = &v20[v16];
    }
  }

  else
  {
    std::vector<unsigned char>::__append(this + 8, v16 - v22, &v23);
    v20 = *(this + 8);
  }

  v2 = MP4BoxParser::ReadDataSourceBytes(*(this + 1), v10, v16, v20);
  if (v2 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v23 = 136315394;
    v24 = "MP4_BoxParser_TrackFragmentRun.cpp";
    v25 = 1024;
    v26 = 183;
    v5 = MEMORY[0x1E69E9C10];
    v6 = "%25s:%-5d  Couldn't read per packet info";
    goto LABEL_7;
  }

  return v2;
}

void MP4BoxParser_TrackFragmentRun::~MP4BoxParser_TrackFragmentRun(MP4BoxParser_TrackFragmentRun *this)
{
  MP4BoxParser_TrackFragmentRun::~MP4BoxParser_TrackFragmentRun(this);

  JUMPOUT(0x193ADF220);
}

{
  *this = &unk_1F03306B8;
  v2 = *(this + 8);
  if (v2)
  {
    *(this + 9) = v2;
    operator delete(v2);
  }

  v3 = *(this + 1);
  *this = &unk_1F0330650;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }
}

uint64_t MP4BoxParser_ChunkOffset::Init(MP4BoxParser **this)
{
  result = MP4BoxParser_Full::Initialize(this);
  if (!result)
  {
    v3 = *(this + 5);
    if (v3 == 1937007471 || v3 == 1668232756)
    {
      v5 = (*(*this + 3))(this);
      result = MP4BoxParser::ReadDataSourceBytes(this[1], v5, 4uLL, this + 60);
      if (!result)
      {
        *(this + 15) = bswap32(*(this + 15));
      }
    }

    else
    {
      return 4294967294;
    }
  }

  return result;
}

void MP4BoxParser_ChunkOffset::~MP4BoxParser_ChunkOffset(MP4BoxParser_ChunkOffset *this)
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

void MP4BoxParser_ChunkOffset::MP4BoxParser_ChunkOffset(MP4BoxParser_ChunkOffset *this, DataSource *a2, uint64_t a3)
{
  *this = &unk_1F0330650;
  (*(*a2 + 88))(a2, a3);
  *(this + 16) = 0;
  *(this + 5) = 0;
  *(this + 3) = 0;
  *(this + 32) = 0;
  *(this + 9) = 8;
  *this = &unk_1F03306E8;
  *(this + 15) = 0;
}

uint64_t MP4BoxParser_ChunkOffset::GetChunkOffset(MP4BoxParser_ChunkOffset *this, int a2, uint64_t *a3)
{
  result = (*(*this + 24))(this);
  v7 = result + 4;
  v8 = *(this + 5);
  if (v8 == 1668232756)
  {
    v10 = 0;
    result = MP4BoxParser::ReadDataSourceBytes(*(this + 1), (v7 + 8 * a2), 8uLL, &v10);
    v9 = bswap64(v10);
    if (result)
    {
      return result;
    }
  }

  else if (v8 == 1937007471)
  {
    v11 = 0;
    result = MP4BoxParser::ReadDataSourceBytes(*(this + 1), (v7 + 4 * a2), 4uLL, &v11);
    v9 = bswap32(v11);
    if (result)
    {
      return result;
    }
  }

  else
  {
    v9 = 0;
  }

  *a3 = v9;
  return result;
}