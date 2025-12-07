void AudioConverterClientBufferManager::AudioConverterClientBufferManager(AudioConverterClientBufferManager *this, const CA::StreamDescription *a2)
{
  v3 = *a2;
  v4 = *(a2 + 1);
  *(this + 4) = *(a2 + 4);
  *this = v3;
  *(this + 1) = v4;
  if ((*(a2 + 3) & 0x20) != 0)
  {
    v5 = *(a2 + 7);
  }

  else
  {
    v5 = 1;
  }

  CA::AudioBuffersBase::AudioBuffersBase(this + 5, v6, 1);
  operator new();
}

uint64_t std::__function::__value_func<void ()(applesauce::xpc::dict const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

os_unfair_lock_s **std::unique_ptr<auoop::WorkgroupPropagator>::reset[abi:ne200100](os_unfair_lock_s ***a1, os_unfair_lock_s **a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    auoop::WorkgroupPropagator::~WorkgroupPropagator(result);

    JUMPOUT(0x193ADF220);
  }

  return result;
}

const std::__fs::filesystem::path *std::unique_ptr<AudioConverterCapturer>::reset[abi:ne200100](const std::__fs::filesystem::path **a1)
{
  result = *a1;
  *a1 = 0;
  if (result)
  {
    AudioConverterCapturer::~AudioConverterCapturer(result);

    JUMPOUT(0x193ADF220);
  }

  return result;
}

void pooledRenderer::AudioConverterOOP::AudioConverterOOP(BaseOpaqueObject *a1, const AudioStreamBasicDescription *a2, const AudioStreamBasicDescription *a3, unsigned int a4, const void *a5, int a6, void **a7)
{
  BaseOpaqueObject::BaseOpaqueObject(a1);
  *(v7 + 12) = 0;
  *(v7 + 28) = 0;
  *(v7 + 32) = 0;
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  *v7 = &unk_1F033CC60;
  *(v7 + 40) = 0;
  *(v7 + 80) = 0;
  operator new();
}

void sub_18F63F0CC()
{
  if (v0)
  {
    caulk::__expected_detail::destroy<std::tuple<unsigned long long,std::vector<unsigned int>,std::vector<unsigned int>>,(void *)0>((v1 - 240));
  }

  JUMPOUT(0x18F63F134);
}

void sub_18F63F0FC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a17)
  {
    JUMPOUT(0x18F63F124);
  }

  JUMPOUT(0x18F63F134);
}

void sub_18F63F14C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *__p, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a65)
  {
    operator delete(a65);
  }

  if (v65)
  {
    operator delete(v65);
  }

  JUMPOUT(0x18F63F18CLL);
}

void sub_18F63F1C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  std::optional<swix::connection_config>::~optional(v70 - 240);
  swix::connection_config::~connection_config(&a65);
  MEMORY[0x193ADF220](v65, 0xA1C409BE6959DLL);
  os_unfair_lock_unlock(v69 + 4);
  swix::connection_config::~connection_config(&a39);
  swix::connection_config::~connection_config(&a55);
  std::unique_ptr<auoop::WorkgroupPropagator>::reset[abi:ne200100]((v66 + 408), 0);
  AudioConverterClientBufferManager::~AudioConverterClientBufferManager((v66 + 312));
  AudioConverterClientBufferManager::~AudioConverterClientBufferManager((v68 + 1));
  std::unique_ptr<AudioConverterPropertyClient>::reset[abi:ne200100](v68, 0);
  std::unique_ptr<AudioConverterCapturer>::reset[abi:ne200100]((v66 + 160));
  std::unique_ptr<AudioConverterCapturer>::reset[abi:ne200100](v67);
  xpc_release(a11);
  MEMORY[0x193ADF220](v66, 0x1060C40E6A37438);
  JUMPOUT(0x18F63F364);
}

void sub_18F63F21C()
{
  std::__function::__value_func<void ()(applesauce::xpc::dict const&)>::~__value_func[abi:ne200100](v1 - 240);
  MEMORY[0x193ADF220](v0, 0x1030C405B15B6DALL);
  JUMPOUT(0x18F63F300);
}

void sub_18F63F384(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

OSStatus AudioConverterNewSpecific(const AudioStreamBasicDescription *inSourceFormat, const AudioStreamBasicDescription *inDestinationFormat, UInt32 inNumberClassDescriptions, const AudioClassDescription *inClassDescriptions, AudioConverterRef *outAudioConverter)
{
  v6 = *&inNumberClassDescriptions;
  mFormatID = inSourceFormat->mFormatID;
  v11 = mFormatID == 1634754915 || mFormatID == 1902211171 || mFormatID == 1885433955;
  if (v11 && ((v12 = inDestinationFormat->mFormatID, v12 != 1718382635) ? (v13 = v12 == 1885564203) : (v13 = 1), !v13 ? (v14 = v12 == 1819304813) : (v14 = 1), v14))
  {
    if (_os_feature_enabled_impl())
    {
      v15 = checkForDecoderExemption(inSourceFormat->mFormatID) ^ 1;
    }

    else
    {
      v15 = 0;
    }

    v16 = 1;
  }

  else
  {
    v15 = 0;
    v16 = 0;
  }

  ForcedInstantiationMode = getForcedInstantiationMode(inSourceFormat);
  if ((ForcedInstantiationMode & 0x100000000) != 0)
  {
    if (ForcedInstantiationMode != 1)
    {
LABEL_28:
      v19 = 0;
      v18 = 2742;
      goto LABEL_29;
    }

    goto LABEL_27;
  }

  if (v16)
  {
    if ((v15 & 1) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  v19 = 0;
  v28 = inSourceFormat->mFormatID;
  v18 = 2742;
  if (v28 != 1819304813 && v28 != 1885564203)
  {
    if (!_os_feature_enabled_impl() || (checkForDecoderExemption(inSourceFormat->mFormatID) & 1) != 0)
    {
      v19 = 0;
      goto LABEL_29;
    }

LABEL_27:
    v18 = 2758;
    v19 = 1;
  }

LABEL_29:
  v30[0] = 0;
  AppBooleanValue = CACFPreferencesGetAppBooleanValue(@"converterkTracesPermitted", @"com.apple.coreaudio", v30);
  v21 = 0;
  if (v30[0] && AppBooleanValue)
  {
    kdebug_trace();
    v21 = v18 | 0x100000000;
  }

  v22 = inSourceFormat->mFormatID;
  v23 = inDestinationFormat->mFormatID;
  if (v19)
  {
    v24 = 2752;
  }

  else
  {
    v24 = 2736;
  }

  v38 = v24;
  v39 = v22;
  v40 = v23;
  v41 = 0;
  v42 = 0;
  if (v19)
  {
    v25 = newAudioConverterOOP;
  }

  else
  {
    v25 = newAudioConverter;
  }

  kdebug_trace();
  v30[0] = 1;
  v31 = v24;
  v32 = v22;
  v33 = v23;
  v34 = 0;
  v35 = 0;
  v37[0] = 0;
  v36 = 1;
  AT::ScopedTrace::~ScopedTrace(v37);
  v26 = AudioConverterNewInternal(inSourceFormat, inDestinationFormat, v6, inClassDescriptions, outAudioConverter, v25, 0, v21);
  AT::ScopedTrace::~ScopedTrace(v30);
  return v26;
}

void sub_18F63F628(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AT::ScopedTrace::~ScopedTrace(va);
  _Unwind_Resume(a1);
}

uint64_t DSPGraph::ChannelSplitterBox::initialize(DSPGraph::ChannelSplitterBox *this)
{
  DSPGraph::Box::initialize(this);
  v2 = *(this + 8);
  if (*(this + 9) == v2)
  {
    std::string::basic_string[abi:ne200100]<0>(&v40, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(&v39, "in");
    v33 = this + 32;
    if (*(this + 55) < 0)
    {
      v33 = *v33;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v33, (*(this + 9) - *(this + 8)) >> 5, 0);
  }

  result = (*(*v2 + 40))(v2);
  v4 = *(result + 120);
  v5 = v4[7];
  v6 = *(this + 11);
  v7 = *(this + 12);
  if (((v7 - v6) & 0x1FFFFFFFE0) != 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = (v7 - v6) >> 5;
    do
    {
      if (v11 <= v9)
      {
        std::string::basic_string[abi:ne200100]<0>(&v40, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
        std::string::basic_string[abi:ne200100]<0>(&v39, "out");
        v29 = this + 32;
        if (*(this + 55) < 0)
        {
          v29 = *v29;
        }

        DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v29, (*(this + 12) - *(this + 11)) >> 5, v9);
      }

      result = (*(*(v6 + v8) + 40))();
      v10 += *(*(result + 120) + 28);
      ++v9;
      v6 = *(this + 11);
      v7 = *(this + 12);
      v11 = (v7 - v6) >> 5;
      v8 += 32;
    }

    while (v9 < v11);
  }

  else
  {
    v10 = 0;
  }

  v12 = v4[2];
  if (v12 == 1819304813)
  {
    v13 = v4[3];
    if ((v13 & 1) == 0 || v4[8] != 32)
    {
      goto LABEL_69;
    }
  }

  else
  {
    if (v12 != 1718773105 || v4[8] != 64)
    {
LABEL_69:
      std::string::basic_string[abi:ne200100]<0>(&v40, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.cpp");
      std::string::basic_string[abi:ne200100]<0>(&v39, "initialize");
      std::string::basic_string[abi:ne200100]<0>(&v38, "ChannelSplitterBox input format must be non-interleaved float");
      DSPGraph::ThrowException(1718449215, &v40, 3459, &v39, &v38);
    }

    v13 = v4[3];
  }

  if ((v13 & 0x20) == 0)
  {
    goto LABEL_69;
  }

  if (v5 != v10)
  {
    std::string::basic_string[abi:ne200100]<0>(&v40, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v39, "initialize");
    v37 = this + 32;
    if (*(this + 55) < 0)
    {
      v37 = *v37;
    }

    DSPGraph::strprintf("ChannelSplitterBox %s input has %u channels but output has %u channels", v37, v5, v10);
  }

  v14 = v7 - v6;
  if ((v14 & 0x1FFFFFFFE0) != 0)
  {
    v15 = 0;
    v16 = 0;
    v17 = v14 >> 5;
    do
    {
      if (v17 <= v16)
      {
        std::string::basic_string[abi:ne200100]<0>(&v40, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
        std::string::basic_string[abi:ne200100]<0>(&v39, "out");
        v30 = this + 32;
        if (*(this + 55) < 0)
        {
          v30 = *v30;
        }

        DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v30, (*(this + 12) - *(this + 11)) >> 5, v16);
      }

      result = (*(*(v6 + v15) + 40))();
      v18 = *(result + 120);
      v19 = v18[2];
      if (v19 == 1819304813)
      {
        v20 = v18[3];
        if ((v20 & 1) == 0 || v18[8] != 32)
        {
          goto LABEL_60;
        }
      }

      else
      {
        if (v19 != 1718773105 || v18[8] != 64)
        {
LABEL_60:
          std::string::basic_string[abi:ne200100]<0>(&v40, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.cpp");
          std::string::basic_string[abi:ne200100]<0>(&v39, "initialize");
          v34 = this + 32;
          if (*(this + 55) < 0)
          {
            v34 = *v34;
          }

          DSPGraph::strprintf("ChannelSplitterBox %s output format must be non-interleaved float in time- of frequency-domain", v34);
        }

        v20 = v18[3];
      }

      if ((v20 & 0x20) == 0)
      {
        goto LABEL_60;
      }

      ++v16;
      v6 = *(this + 11);
      v21 = *(this + 12) - v6;
      v17 = v21 >> 5;
      v15 += 32;
    }

    while (v16 < (v21 >> 5));
    v22 = v21 & 0x1FFFFFFFE0;
    if (v4[2] == 1718773105 && v4[8] == 64)
    {
      if (v22)
      {
        v23 = 0;
        v24 = 0;
        do
        {
          if (v17 <= v24)
          {
            std::string::basic_string[abi:ne200100]<0>(&v40, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
            std::string::basic_string[abi:ne200100]<0>(&v39, "out");
            v32 = this + 32;
            if (*(this + 55) < 0)
            {
              v32 = *v32;
            }

            DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v32, (*(this + 12) - *(this + 11)) >> 5, v24);
          }

          result = (*(*(v6 + v23) + 40))();
          v25 = *(result + 120);
          if (*(v25 + 8) != 1718773105 || *(v25 + 32) != 64)
          {
            std::string::basic_string[abi:ne200100]<0>(&v40, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.cpp");
            std::string::basic_string[abi:ne200100]<0>(&v39, "initialize");
            v36 = this + 32;
            if (*(this + 55) < 0)
            {
              v36 = *v36;
            }

            DSPGraph::strprintf("ChannelSplitterBox %s output is in time-domain but input is in frequency-domain", v36);
          }

          ++v24;
          v6 = *(this + 11);
          v17 = (*(this + 12) - v6) >> 5;
          v23 += 32;
        }

        while (v24 < v17);
      }
    }

    else if (v22)
    {
      v26 = 0;
      v27 = 0;
      do
      {
        if (v17 <= v27)
        {
          std::string::basic_string[abi:ne200100]<0>(&v40, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
          std::string::basic_string[abi:ne200100]<0>(&v39, "out");
          v31 = this + 32;
          if (*(this + 55) < 0)
          {
            v31 = *v31;
          }

          DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v31, (*(this + 12) - *(this + 11)) >> 5, v27);
        }

        result = (*(*(v6 + v26) + 40))();
        v28 = *(result + 120);
        if (*(v28 + 8) == 1718773105 && *(v28 + 32) == 64)
        {
          std::string::basic_string[abi:ne200100]<0>(&v40, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.cpp");
          std::string::basic_string[abi:ne200100]<0>(&v39, "initialize");
          v35 = this + 32;
          if (*(this + 55) < 0)
          {
            v35 = *v35;
          }

          DSPGraph::strprintf("ChannelSplitterBox %s output is in frequency-domain but input is in time-domain", v35);
        }

        ++v27;
        v6 = *(this + 11);
        v17 = (*(this + 12) - v6) >> 5;
        v26 += 32;
      }

      while (v27 < v17);
    }
  }

  return result;
}

void sub_18F63FD60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  _Unwind_Resume(exception_object);
}

uint64_t DSPGraph::AUBox::initialize(AudioUnit *this)
{
  DSPGraph::Box::initialize(this);
  v2 = this[97];
  v4 = this[8];
  v3 = this[9];
  *&v80 = 0;
  v5 = v3 - v4;
  if (v3 == v4)
  {
    goto LABEL_47;
  }

  v6 = v5 >> 5;
  v7 = this[99];
  v8 = this[98];
  v9 = (v8 - v2) >> 3;
  if (v5 >> 5 <= ((v7 - v8) >> 3))
  {
    if (v6 <= v9)
    {
      v17 = this[98];
      v9 = v5 >> 5;
    }

    else
    {
      v13 = 0;
      v14 = ((v5 >> 2) - (v8 - v2) - 8) >> 3;
      v15 = vdupq_n_s64(v14);
      do
      {
        v16 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(vdupq_n_s64(v13), xmmword_18F9016C0)));
        if (v16.i8[0])
        {
          *(v8 + v13) = 0;
        }

        if (v16.i8[4])
        {
          *(v8 + v13 + 1) = 0;
        }

        v13 += 2;
      }

      while (((v14 + 2) & 0x3FFFFFFFFFFFFFFELL) != v13);
      v17 = (v8 + 8 * (v6 - v9));
      this[98] = v17;
      if (v8 == v2)
      {
        goto LABEL_47;
      }
    }

    v18 = (v2 + 8 * v6);
    v19 = (v17 - 8 * v6);
    v20 = v17;
    if (v19 < v8)
    {
      v20 = v17;
      do
      {
        v21 = *v19++;
        *v20 = v21;
        v20 = (v20 + 8);
      }

      while (v19 < v8);
    }

    this[98] = v20;
    if (v17 != v18)
    {
      memmove(v2 + 8 * v6, v2, v17 - v18);
    }

    v22 = &v80;
    if (v2 <= &v80)
    {
      if (this[98] <= &v80)
      {
        v23 = 0;
      }

      else
      {
        v23 = v6;
      }

      v22 = (&v80 + 8 * v23);
    }

    v24 = 0;
    v25 = *v22;
    v26 = vdupq_n_s64(v9 - 1);
    do
    {
      v27 = vmovn_s64(vcgeq_u64(v26, vorrq_s8(vdupq_n_s64(v24), xmmword_18F9016C0)));
      if (v27.i8[0])
      {
        *(v2 + v24) = v25;
      }

      if (v27.i8[4])
      {
        *(v2 + v24 + 1) = v25;
      }

      v24 += 2;
    }

    while (((v9 + 1) & 0xFFFFFFFFFFFFFFFELL) != v24);
    goto LABEL_47;
  }

  v10 = v9 + v6;
  if ((v9 + v6) >> 61)
  {
    std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
  }

  v11 = v7 - v2;
  if (v11 >> 2 > v10)
  {
    v10 = v11 >> 2;
  }

  if (v11 >= 0x7FFFFFFFFFFFFFF8)
  {
    v12 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    if (!(v12 >> 61))
    {
      operator new();
    }

    goto LABEL_101;
  }

  v28 = 0;
  v29 = (v6 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
  v30 = vdupq_n_s64(v29);
  do
  {
    v31 = vmovn_s64(vcgeq_u64(v30, vorrq_s8(vdupq_n_s64(v28), xmmword_18F9016C0)));
    if (v31.i8[0])
    {
      *(8 * v28) = 0;
    }

    if (v31.i8[4])
    {
      *(8 * v28 + 8) = 0;
    }

    v28 += 2;
  }

  while (v29 - ((v6 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v28);
  v32 = 8 * v6;
  v33 = (this[98] - v2);
  memcpy(v32, v2, v33);
  v34 = &v33[v32];
  this[98] = v2;
  v35 = this[97];
  v36 = v2 - v35;
  v37 = (v35 - v2);
  memcpy(v37, v35, v36);
  this[97] = v37;
  this[98] = v34;
  this[99] = 0;
  if (v35)
  {
    operator delete(v35);
  }

LABEL_47:
  v38 = this[100];
  v40 = this[11];
  v39 = this[12];
  *&v80 = 0;
  v41 = v39 - v40;
  if (v39 == v40)
  {
    goto LABEL_93;
  }

  v42 = v41 >> 5;
  v43 = this[102];
  v44 = this[101];
  v45 = (v44 - v38) >> 3;
  if (v41 >> 5 <= ((v43 - v44) >> 3))
  {
    if (v42 <= v45)
    {
      v53 = this[101];
      v45 = v41 >> 5;
    }

    else
    {
      v49 = 0;
      v50 = ((v41 >> 2) - (v44 - v38) - 8) >> 3;
      v51 = vdupq_n_s64(v50);
      do
      {
        v52 = vmovn_s64(vcgeq_u64(v51, vorrq_s8(vdupq_n_s64(v49), xmmword_18F9016C0)));
        if (v52.i8[0])
        {
          *(v44 + v49) = 0;
        }

        if (v52.i8[4])
        {
          *(v44 + v49 + 1) = 0;
        }

        v49 += 2;
      }

      while (((v50 + 2) & 0x3FFFFFFFFFFFFFFELL) != v49);
      v53 = (v44 + 8 * (v42 - v45));
      this[101] = v53;
      if (v44 == v38)
      {
        goto LABEL_93;
      }
    }

    v54 = (v38 + 8 * v42);
    v55 = (v53 - 8 * v42);
    v56 = v53;
    if (v55 < v44)
    {
      v56 = v53;
      do
      {
        v57 = *v55++;
        *v56 = v57;
        v56 = (v56 + 8);
      }

      while (v55 < v44);
    }

    this[101] = v56;
    if (v53 != v54)
    {
      memmove(v38 + 8 * v42, v38, v53 - v54);
    }

    v58 = &v80;
    if (v38 <= &v80)
    {
      if (this[101] <= &v80)
      {
        v59 = 0;
      }

      else
      {
        v59 = v42;
      }

      v58 = (&v80 + 8 * v59);
    }

    v60 = 0;
    v61 = *v58;
    v62 = vdupq_n_s64(v45 - 1);
    do
    {
      v63 = vmovn_s64(vcgeq_u64(v62, vorrq_s8(vdupq_n_s64(v60), xmmword_18F9016C0)));
      if (v63.i8[0])
      {
        *(v38 + v60) = v61;
      }

      if (v63.i8[4])
      {
        *(v38 + v60 + 1) = v61;
      }

      v60 += 2;
    }

    while (((v45 + 1) & 0xFFFFFFFFFFFFFFFELL) != v60);
    goto LABEL_93;
  }

  v46 = v45 + v42;
  if ((v45 + v42) >> 61)
  {
    std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
  }

  v47 = v43 - v38;
  if (v47 >> 2 > v46)
  {
    v46 = v47 >> 2;
  }

  if (v47 >= 0x7FFFFFFFFFFFFFF8)
  {
    v48 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v48 = v46;
  }

  if (v48)
  {
    if (!(v48 >> 61))
    {
      operator new();
    }

LABEL_101:
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v64 = 0;
  v65 = (v42 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
  v66 = vdupq_n_s64(v65);
  do
  {
    v67 = vmovn_s64(vcgeq_u64(v66, vorrq_s8(vdupq_n_s64(v64), xmmword_18F9016C0)));
    if (v67.i8[0])
    {
      *(8 * v64) = 0;
    }

    if (v67.i8[4])
    {
      *(8 * v64 + 8) = 0;
    }

    v64 += 2;
  }

  while (v65 - ((v42 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v64);
  v68 = 8 * v42;
  v69 = (this[101] - v38);
  memcpy(v68, v38, v69);
  v70 = &v69[v68];
  this[101] = v38;
  v71 = this[100];
  v72 = v38 - v71;
  v73 = (v71 - v38);
  memcpy(v73, v71, v72);
  this[100] = v73;
  this[101] = v70;
  this[102] = 0;
  if (v71)
  {
    operator delete(v71);
  }

LABEL_93:
  if (((this[9] - this[8]) & 0x1FFFFFFFE0) != 0)
  {
    v74 = 0;
    do
    {
      LODWORD(v80) = 0;
      (*(*this + 39))(this, 51, 1, v74, 4, &v80);
      v74 = (v74 + 1);
    }

    while (v74 < ((this[9] - this[8]) >> 5));
  }

  if (((this[12] - this[11]) & 0x1FFFFFFFE0) != 0)
  {
    v75 = 0;
    do
    {
      LODWORD(v80) = 0;
      (*(*this + 39))(this, 51, 2, v75, 4, &v80);
      v75 = (v75 + 1);
    }

    while (v75 < ((this[12] - this[11]) >> 5));
  }

  result = AudioUnitInitialize(this[106]);
  if (result)
  {
    v77 = result;
    std::string::basic_string[abi:ne200100]<0>(&v80, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v79, "initialize");
    std::operator+<char>();
    DSPGraph::ThrowException(v77, &v80, 1987, &v79, &v78);
  }

  return result;
}

void sub_18F640518(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

void DSPGraph::IsoGroup::initializeBoxes(DSPGraph::IsoGroup *this)
{
  v16 = *MEMORY[0x1E69E9840];
  *(this + 32) = 0;
  *(this + 36) = 0;
  v2 = *(this + 67);
  v3 = v2;
  if (v2 == 1)
  {
    v3 = *(this + 68);
  }

  if (DSPGraph::getLog(void)::onceToken != -1)
  {
    dispatch_once(&DSPGraph::getLog(void)::onceToken, &__block_literal_global_10783);
  }

  v4 = os_signpost_id_make_with_pointer(DSPGraph::getLog(void)::gLog, this);
  v5 = *(this + 28);
  v6 = *(this + 29);
  if (v5 != v6)
  {
    v7 = v4;
    v8 = v4 - 1;
    do
    {
      v9 = *v5;
      (*(**v5 + 112))(*v5, v3);
      if (v2 >= 2)
      {
        (*(*v9 + 120))(v9, 1);
      }

      if (DSPGraph::getLog(void)::onceToken != -1)
      {
        dispatch_once(&DSPGraph::getLog(void)::onceToken, &__block_literal_global_10783);
      }

      if (v8 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v10 = DSPGraph::getLog(void)::gLog;
        if (os_signpost_enabled(DSPGraph::getLog(void)::gLog))
        {
          v11 = v9 + 32;
          if (v9[55] < 0)
          {
            v11 = *v11;
          }

          *buf = 136315138;
          v15 = v11;
          _os_signpost_emit_with_name_impl(&dword_18F5DF000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v7, "Box::initialize", "%s", buf, 0xCu);
        }
      }

      (*(*v9 + 576))(v9);
      if (DSPGraph::getLog(void)::onceToken != -1)
      {
        dispatch_once(&DSPGraph::getLog(void)::onceToken, &__block_literal_global_10783);
      }

      if (v8 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v12 = DSPGraph::getLog(void)::gLog;
        if (os_signpost_enabled(DSPGraph::getLog(void)::gLog))
        {
          v13 = v9 + 32;
          if (v9[55] < 0)
          {
            v13 = *v13;
          }

          *buf = 136315138;
          v15 = v13;
          _os_signpost_emit_with_name_impl(&dword_18F5DF000, v12, OS_SIGNPOST_INTERVAL_END, v7, "Box::initialize", "%s", buf, 0xCu);
        }
      }

      ++v5;
    }

    while (v5 != v6);
  }
}

uint64_t DSPGraph::Box::initialize(DSPGraph::Box *this)
{
  v1 = *(this + 25);
  v2 = *(this + 26);
  if (v1 != v2)
  {
    v3 = &unk_1EAD30000;
    v4 = &unk_1EAD30000;
    v74 = *(this + 26);
    do
    {
      v5 = *v1;
      v6 = *(*v1 + 8);
      v7 = v6[15];
      if (*(v7 + 2) == 1718773105)
      {
        v8 = *(*(*(v6[4] + 16) + 8) + 16);
        v9 = *(v8 + 268);
        if (v9 == 1)
        {
          v9 = *(v8 + 272);
        }

        v10 = *(v7 + 7);
        std::vector<std::unique_ptr<void,applesauce::raii::v1::detail::opaque_deletion_functor<void *,&(VPTimeFreqConverter_Dispose)>>>::reserve((v5 + 48), v10);
        if (v10)
        {
          *&v85[0] = 0;
          VPTimeFreqConverter_Create(1, v9, v85);
        }

        v11 = *(*(*(*(*(v5 + 8) + 32) + 16) + 8) + 16);
        v12 = *(v11 + 268);
        if (v12 == 1)
        {
          v12 = *(v11 + 272);
        }

        DSPGraph::SimpleABL::alloc((v5 + 72), 0, 4 * v12, 0);
        v6 = *(v5 + 8);
        v7 = v6[15];
        v2 = v74;
        v3 = &unk_1EAD30000;
        v4 = &unk_1EAD30000;
      }

      v13 = (v5 + 24);
      if (*(v5 + 47) < 0)
      {
        v13 = *v13;
      }

      v78 = 0;
      memset(v77, 0, sizeof(v77));
      v14 = *v7;
      v15 = *(v7 + 7);
      if (*(v7 + 2) == 1718773105)
      {
        *(&v77[0] + 1) = 0x296C70636DLL;
        *&v77[1] = 0x100000004;
        DWORD2(v77[1]) = 4;
        LODWORD(v78) = 32;
        v6 = *(v5 + 8);
      }

      else
      {
        v16 = v7[4];
        DWORD2(v77[0]) = *(v7 + 2);
        *(v77 + 12) = *(v7 + 12);
        v78 = v16;
      }

      *&v77[0] = v14;
      HIDWORD(v77[1]) = v15;
      v17 = *(v5 + 96);
      v18 = *(*(*(v6[1] + 8) + 8) + 940);
      if (v3[502] != -1)
      {
        dispatch_once(&NewAudioCapturer(AudioCapturerOptions,char const*,char const*,unsigned int,AudioStreamBasicDescription const*,AudioStreamBasicDescription const&)::once, &__block_literal_global_6386);
      }

      v19 = v4[501];
      if (v19)
      {
        v20 = v19(v17, 0, v13, v18, 0, v77);
      }

      else
      {
        v20 = 0;
      }

      v21 = *(v5 + 16);
      *(v5 + 16) = v20;
      if (v21)
      {
        (*(*v21 + 8))(v21);
        v20 = *(v5 + 16);
      }

      if (!v20)
      {
        std::string::basic_string[abi:ne200100]<0>(v85, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Files.cpp");
        std::string::basic_string[abi:ne200100]<0>(&v84, "initialize");
        std::string::basic_string[abi:ne200100]<0>(inURL, "NewAudioCapturer returned null");
        DSPGraph::ThrowException(1852204065, v85, 255, &v84, inURL);
      }

      ++v1;
    }

    while (v1 != v2);
  }

  v22 = *(this + 28);
  v75 = *(this + 29);
  if (v22 != v75)
  {
    allocator = *MEMORY[0x1E695E480];
    do
    {
      v23 = *v22;
      v24 = *(*v22 + 8);
      v25 = *(v24 + 120);
      if (*(v25 + 8) == 1718773105)
      {
        v26 = *(*(*(*(v24 + 32) + 16) + 8) + 16);
        v27 = *(v26 + 268);
        if (v27 == 1)
        {
          v27 = *(v26 + 272);
        }

        v28 = *(v25 + 28);
        std::vector<std::unique_ptr<void,applesauce::raii::v1::detail::opaque_deletion_functor<void *,&(VPTimeFreqConverter_Dispose)>>>::reserve((v23 + 80), v28);
        if (v28)
        {
          *&v85[0] = 0;
          VPTimeFreqConverter_Create(0, v27, v85);
        }
      }

      v29 = *(v23 + 71);
      if (v29 < 0)
      {
        v30 = *(v23 + 48);
        v29 = *(v23 + 56);
      }

      else
      {
        v30 = (v23 + 48);
      }

      v31 = CFURLCreateFromFileSystemRepresentation(allocator, v30, v29, 0);
      inURL[0] = v31;
      if (!v31)
      {
        goto LABEL_69;
      }

      v32 = CFGetTypeID(v31);
      if (v32 != CFURLGetTypeID())
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
      }

      if (!inURL[0])
      {
LABEL_69:
        std::string::basic_string[abi:ne200100]<0>(v77, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Files.cpp");
        std::string::basic_string[abi:ne200100]<0>(v85, "readFile");
        std::string::basic_string[abi:ne200100]<0>(&v84, "couldn't convert path to CFURLRef");
        DSPGraph::ThrowException(-4960, v77, 97, v85, &v84);
      }

      outExtAudioFile = 0;
      v33 = ExtAudioFileOpenURL(inURL[0], &outExtAudioFile);
      if (v33)
      {
        std::string::basic_string[abi:ne200100]<0>(v77, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Files.cpp");
        std::string::basic_string[abi:ne200100]<0>(v85, "readFile");
        std::string::basic_string[abi:ne200100]<0>(&v84, "ExtAudioFileOpenURL failed");
        DSPGraph::ThrowException(v33, v77, 102, v85, &v84);
      }

      v34 = outExtAudioFile;
      outPropertyData = 0;
      v82 = outExtAudioFile;
      ioPropertyDataSize = 8;
      Property = ExtAudioFileGetProperty(outExtAudioFile, 0x2366726Du, &ioPropertyDataSize, &outPropertyData);
      if (Property)
      {
        std::string::basic_string[abi:ne200100]<0>(v77, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Files.cpp");
        std::string::basic_string[abi:ne200100]<0>(v85, "readFile");
        std::string::basic_string[abi:ne200100]<0>(&v84, "ExtAudioFileGetProperty(FileLengthFrames) failed");
        DSPGraph::ThrowException(Property, v77, 110, v85, &v84);
      }

      v36 = outPropertyData;
      if ((outPropertyData & 0x8000000000000000) != 0)
      {
        v66 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v66, "numerical cast overflow: could not retain value in conversion type");
        v66->__vftable = (MEMORY[0x1E69E55C0] + 16);
      }

      v37 = *(v23 + 8);
      v38 = *(v37 + 120);
      *(v23 + 36) = *(v38 + 24);
      v39 = *(*(*(*(v37 + 32) + 16) + 8) + 16);
      v40 = *(v39 + 268);
      if (v40 == 1)
      {
        v40 = *(v39 + 272);
      }

      v41 = *(v38 + 28);
      *(v23 + 40) = caulk::numeric::exceptional_cast<unsigned int,unsigned long long>(v36);
      v42 = *(v23 + 36);
      v43 = caulk::numeric::exceptional_cast<unsigned int,unsigned long long>(v36 + v40);
      v44 = caulk::numeric::exceptional_mul<unsigned int>(v42, v43);
      DSPGraph::SimpleABL::alloc((v23 + 16), v41, v44, 0);
      v45 = ExtAudioFileSetProperty(outExtAudioFile, 0x63666D74u, 0x28u, *(*(v23 + 8) + 120));
      if (v45)
      {
        std::string::basic_string[abi:ne200100]<0>(v77, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Files.cpp");
        std::string::basic_string[abi:ne200100]<0>(v85, "readFile");
        std::string::basic_string[abi:ne200100]<0>(&v84, "ExtAudioFileSetProperty(ClientDataFormat) failed");
        DSPGraph::ThrowException(v45, v77, 117, v85, &v84);
      }

      ioNumberFrames = *(v23 + 40);
      v46 = ExtAudioFileRead(outExtAudioFile, &ioNumberFrames, *(v23 + 16));
      if (v46)
      {
        std::string::basic_string[abi:ne200100]<0>(v77, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Files.cpp");
        std::string::basic_string[abi:ne200100]<0>(v85, "readFile");
        std::string::basic_string[abi:ne200100]<0>(&v84, "ExtAudioFileRead failed");
        DSPGraph::ThrowException(v46, v77, 124, v85, &v84);
      }

      v47 = ioNumberFrames;
      *(v23 + 40) = ioNumberFrames;
      v48 = *(*(*(*(*(v23 + 8) + 32) + 16) + 8) + 16);
      v49 = *(v48 + 268);
      if (v49 == 1)
      {
        v49 = *(v48 + 272);
      }

      v50 = *(v23 + 16);
      if (v50 && *v50)
      {
        v51 = 0;
        v52 = *(v23 + 36);
        v53 = v52 * v47;
        v54 = (v49 * v52);
        v55 = 4;
        do
        {
          bzero((*&v50[v55] + v53), v54);
          ++v51;
          v50 = *(v23 + 16);
          v55 += 4;
        }

        while (v51 < *v50);
      }

      v82 = 0;
      if (v34)
      {
        ExtAudioFileDispose(v34);
      }

      if (inURL[0])
      {
        CFRelease(inURL[0]);
      }

      *(v23 + 32) = 0;
      ++v22;
    }

    while (v22 != v75);
  }

  (*(*this + 592))(this);
  v56 = *(this + 39);
  v57 = *(this + 40);
  while (v56 != v57)
  {
    v58 = *v56++;
    (*(*v58 + 128))(v58);
  }

  result = (*(*this + 440))(this);
  if ((result & 1) == 0)
  {
    v60 = *(this + 8);
    v61 = *(this + 9);
    if (v60 != v61)
    {
      v62 = *(this + 8);
      do
      {
        result = (*(*v62 + 40))(v62);
        if (*(*(result + 120) + 8) == 1718773105)
        {
          std::string::basic_string[abi:ne200100]<0>(v77, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.cpp");
          std::string::basic_string[abi:ne200100]<0>(v85, "initialize");
          v68 = this + 32;
          if (*(this + 55) < 0)
          {
            v68 = *v68;
          }

          v69 = (*(*this + 16))(this);
          DSPGraph::strprintf("frequency data is passed through a No Frequency Safe Box-> %s %s", v68, v69);
        }

        v62 += 32;
        v60 += 32;
      }

      while (v62 != v61);
    }

    v63 = *(this + 11);
    v64 = *(this + 12);
    if (v63 != v64)
    {
      v65 = *(this + 11);
      do
      {
        result = (*(*v65 + 40))(v65);
        if (*(*(result + 120) + 8) == 1718773105)
        {
          std::string::basic_string[abi:ne200100]<0>(v77, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.cpp");
          std::string::basic_string[abi:ne200100]<0>(v85, "initialize");
          v70 = this + 32;
          if (*(this + 55) < 0)
          {
            v70 = *v70;
          }

          v71 = (*(*this + 16))(this);
          DSPGraph::strprintf("frequency data is passed through a No Frequency Safe Box-> %s %s", v70, v71);
        }

        v65 += 32;
        v63 += 32;
      }

      while (v65 != v64);
    }
  }

  return result;
}

void sub_18F641324(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a37 < 0)
  {
    operator delete(__p);
  }

  if (*(v37 - 105) < 0)
  {
    operator delete(*(v37 - 128));
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  std::unique_ptr<OpaqueExtAudioFile,applesauce::raii::v1::detail::opaque_deletion_functor<OpaqueExtAudioFile*,&(ExtAudioFileDispose)>>::reset[abi:ne200100](&a30);
  applesauce::CF::URLRef::~URLRef(&a14);
  _Unwind_Resume(a1);
}

void DSPGraph::Box::initializeAnalysis(DSPGraph::Box *this)
{
  std::mutex::lock((this + 248));
  v2 = *(this + 39);
  v3 = *(this + 40);
  if (v2 == v3)
  {
    goto LABEL_58;
  }

  v46 = *(this + 40);
  do
  {
    v4 = *(*v2 + 24);
    caulk::concurrent::details::node_allocator<ListenerMap::MapKey,ListenerMap::MapNode,10ul,(caulk::concurrent::skiplist_options)0>::begin_traversal();
    LODWORD(v53) = v4;
    v5 = *(caulk::concurrent::skiplist<unsigned int,DSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::search_to_level<caulk::concurrent::skiplist<unsigned int,DSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::key_le>(this + 336, &v53, 0) + 8);
    caulk::concurrent::details::node_allocator<unsigned int,DSPGraph::Analyzer *,10ul,(caulk::concurrent::skiplist_options)0>::end_traversal(this + 560, v6);
    if (v5 == v4)
    {
      goto LABEL_57;
    }

    v7 = *(*v2 + 80);
    v8 = *(this + 11);
    if (v7 >= (*(this + 12) - v8) >> 5)
    {
      std::string::basic_string[abi:ne200100]<0>(&v53, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
      std::string::basic_string[abi:ne200100]<0>(&v52, "out");
      v43 = this + 32;
      if (*(this + 55) < 0)
      {
        v43 = *v43;
      }

      DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v43, (*(this + 12) - *(this + 11)) >> 5, v7);
    }

    if (!(*(*(v8 + 32 * v7) + 40))(v8 + 32 * v7))
    {
      std::string::basic_string[abi:ne200100]<0>(&v53, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.cpp");
      std::string::basic_string[abi:ne200100]<0>(&v52, "initializeAnalysis");
      std::string::basic_string[abi:ne200100]<0>(&v51, "Box::initializeAnalysis, Port Not Connected to Box.");
      DSPGraph::ThrowException(1970168609, &v53, 155, &v52, &v51);
    }

    v9 = *v2;
    *(*v2 + 16) = this;
    v10 = *(this + 11);
    if (v7 >= (*(this + 12) - v10) >> 5)
    {
      std::string::basic_string[abi:ne200100]<0>(&v53, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
      std::string::basic_string[abi:ne200100]<0>(&v52, "out");
      v44 = this + 32;
      if (*(this + 55) < 0)
      {
        v44 = *v44;
      }

      DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v44, (*(this + 12) - *(this + 11)) >> 5, v7);
    }

    *(v9 + 8) = (*(*(v10 + 32 * v7) + 40))(v10 + 32 * v7);
    v11 = *v2;
    v12 = *(*v2 + 24);
    if (*(this + 86) >= v12 || *(this + 132) <= v12)
    {
      __break(1u);
      return;
    }

    v47 = v2;
    caulk::concurrent::details::node_allocator<ListenerMap::MapKey,ListenerMap::MapNode,10ul,(caulk::concurrent::skiplist_options)0>::begin_traversal();
    LODWORD(v53) = v12;
    v13 = caulk::concurrent::skiplist<unsigned int,DSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::search_to_level<caulk::concurrent::skiplist<unsigned int,DSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::key_le>(this + 336, &v53, 0);
    v15 = *(v13 + 8);
    if (v15 == v12)
    {
      goto LABEL_56;
    }

    v16 = v13;
    v17 = v14;
    v18 = v12;
    v19 = 0;
    v20 = 0;
    v21 = 1;
    v48 = v18;
    do
    {
      if (v21 == 1)
      {
        caulk::concurrent::skiplist<unsigned int,DSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::random_engine();
        v22 = 0;
        while (1)
        {
          v23 = &caulk::concurrent::skiplist<unsigned int,DSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::random_engine(void)::engine + v22 + 2504;
          if ((atomic_exchange(v23, 1u) & 1) == 0)
          {
            break;
          }

          v22 += 2512;
          if (v22 == 10048)
          {
            v22 = 0;
          }
        }

        v20 = std::uniform_int_distribution<unsigned int>::operator()<std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>>((&caulk::concurrent::skiplist<unsigned int,DSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::random_engine(void)::engine + v22), dword_1EAD30C50);
        atomic_store(0, v23);
        v19 = 3;
      }

      if ((v19 & ~v20) != 0)
      {
        break;
      }

      ++v21;
      v19 *= 4;
    }

    while (v21 != 9);
    v24 = 0;
    while (1)
    {
      v25 = *&caulk::alloc::multi_free_list<caulk::alloc::cascading_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::serial_allocator,caulk::alloc::embed_block_memory,16384ul>>,caulk::concurrent::details::node_allocator<unsigned int,DSPGraph::Analyzer *,10ul,(caulk::concurrent::skiplist_options)0>::size_generator,8ul,1ul,-1l>::Sizes[8 * v24];
      if (v25 >= *&caulk::alloc::multi_free_list<caulk::alloc::cascading_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::serial_allocator,caulk::alloc::embed_block_memory,16384ul>>,caulk::concurrent::details::node_allocator<unsigned int,DSPGraph::Analyzer *,10ul,(caulk::concurrent::skiplist_options)0>::size_generator,8ul,1ul,-1l>::Sizes[8 * v21 - 8])
      {
        break;
      }

      if (++v24 == 10)
      {
        v26 = 0;
        goto LABEL_27;
      }
    }

    v45 = *(this + 72);
    v49 = v45 + 32 * v24 + 48;
    v27 = caulk::concurrent::stack<caulk::alloc::free_block,caulk::concurrent::intrusive_single_link_node<caulk::alloc::free_block>>::pop();
    if (v27)
    {
      v26 = v27;
      atomic_fetch_add((v49 + 16), 0xFFFFFFFFFFFFFFFFLL);
    }

    else
    {
      v26 = caulk::alloc::cascading_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::serial_allocator,caulk::alloc::embed_block_memory,16384ul>>::allocate(v45, v25);
    }

LABEL_27:
    v26[12] = v21;
    *(v26 + 13) = 1;
    v26[15] = v21;
    v28 = v48;
    *(v26 + 2) = v48;
    *v26 = v11;
    *(v26 + 3) = 0;
    v50 = (v26 + 24);
    *(v26 + 2) = 0;
    *(v26 + 4) = 0;
    if (v21)
    {
      v29 = (v26 + 32);
      v30 = v21;
      do
      {
        atomic_store(0, v29 - 1);
        atomic_store(0, v29);
        v29 += 2;
        --v30;
      }

      while (v30);
    }

    v31 = 0;
    __dmb(0xBu);
    while (2)
    {
      if (*(v16 + 8) == *(v26 + 2))
      {
        v32 = 0;
        goto LABEL_51;
      }

      while (1)
      {
        v33 = (v16 + 16 * v31 + 24);
        v34 = atomic_load(v33);
        if ((v34 & 2) == 0)
        {
          break;
        }

        caulk::concurrent::skiplist<unsigned int,DSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::help_flagged(this + 336, v31, v16, v34 & 0xFFFFFFFFFFFFFFFCLL);
LABEL_41:
        v38 = *(v26 + 2);
        while (1)
        {
          v39 = atomic_load((v16 + 16 * v31 + 24));
          v17 = v39 & 0xFFFFFFFFFFFFFFFCLL;
          if (v38 < *((v39 & 0xFFFFFFFFFFFFFFFCLL) + 8))
          {
            break;
          }

          v40 = atomic_load((v17 + 24));
          if (v40)
          {
            v16 = caulk::concurrent::skiplist<unsigned int,DSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::try_flag_node(this + 336, v31, v16, v17);
            if (!v41)
            {
              caulk::concurrent::skiplist<unsigned int,DSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::help_flagged(this + 336, v31, v16, v17);
            }
          }

          else
          {
            v16 = v17;
          }
        }

        if (*(v16 + 8) == *(v26 + 2))
        {
          v32 = 0;
          goto LABEL_50;
        }
      }

      atomic_store(v17, &v50[2 * v31]);
      v35 = v17;
      atomic_compare_exchange_strong(v33, &v35, v26);
      if (v35 != v17)
      {
        if ((v35 & 2) != 0)
        {
          caulk::concurrent::skiplist<unsigned int,DSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::help_flagged(this + 336, v31, v16, v35 & 0xFFFFFFFFFFFFFFFCLL);
        }

        v36 = atomic_load(v33);
        if (v36)
        {
          do
          {
            v16 = atomic_load((v16 + 16 * v31 + 32));
            v37 = atomic_load((v16 + 16 * v31 + 24));
          }

          while ((v37 & 1) != 0);
        }

        goto LABEL_41;
      }

      v32 = v26;
LABEL_50:
      v28 = v48;
LABEL_51:
      if (v32 | v31)
      {
        v15 = atomic_load(v50);
        if ((v15 & 1) == 0 && ++v31 != v21)
        {
          LODWORD(v53) = v28;
          v16 = caulk::concurrent::skiplist<unsigned int,DSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::search_to_level<caulk::concurrent::skiplist<unsigned int,DSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::key_le>(this + 336, &v53, v31);
          v17 = v42;
          continue;
        }
      }

      else
      {
        caulk::alloc::multi_free_list<caulk::alloc::cascading_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::serial_allocator,caulk::alloc::embed_block_memory,16384ul>>,caulk::concurrent::details::node_allocator<unsigned int,DSPGraph::Analyzer *,10ul,(caulk::concurrent::skiplist_options)0>::size_generator,8ul,1ul,-1l>::deallocate(*(this + 72), v26, *&caulk::alloc::multi_free_list<caulk::alloc::cascading_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::serial_allocator,caulk::alloc::embed_block_memory,16384ul>>,caulk::concurrent::details::node_allocator<unsigned int,DSPGraph::Analyzer *,10ul,(caulk::concurrent::skiplist_options)0>::size_generator,8ul,1ul,-1l>::Sizes[8 * v26[12] - 8]);
      }

      break;
    }

LABEL_56:
    caulk::concurrent::details::node_allocator<unsigned int,DSPGraph::Analyzer *,10ul,(caulk::concurrent::skiplist_options)0>::end_traversal(this + 560, v15);
    v3 = v46;
    v2 = v47;
LABEL_57:
    ++v2;
  }

  while (v2 != v3);
LABEL_58:

  std::mutex::unlock((this + 248));
}

void sub_18F641AAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  if (*(v30 - 81) < 0)
  {
    operator delete(*(v30 - 104));
  }

  std::mutex::unlock((v29 + 248));
  _Unwind_Resume(a1);
}

const char *audioipc::eventlink_primitive::activate(void *a1, int a2)
{
  v2 = os_eventlink_activate();
  if (v2)
  {
    audioipc::log_and_throw("os_eventlink_activate failed", v2);
  }

  result = os_eventlink_associate();
  if (result)
  {
    audioipc::log_and_throw("os_eventlink_associate failed", result);
  }

  return result;
}

OpaqueAudioComponentInstance *acv2::CodecConverter::CodecSupportsProperty(OpaqueAudioComponentInstance *this, AudioCodecPropertyID a2)
{
  if (this)
  {
    outWritable = 0;
    outSize = 0;
    return (AudioCodecGetPropertyInfo(this, a2, &outSize, &outWritable) == 0);
  }

  return this;
}

uint64_t caulk::thread_proxy<std::tuple<caulk::thread::attributes,AudioConverterServer::setup(char const*)::{lambda(void)#1},std::tuple<>>>(caulk::thread::attributes *a1)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = a1;
  caulk::thread::attributes::apply_to_this_thread(a1);
  v2 = *(a1 + 9);
  voucher_adopt();
  (*(*v2 + 24))(v2);
  voucher_adopt();
  std::unique_ptr<std::tuple<caulk::thread::attributes,AudioConverterServer::setup(char const*)::{lambda(void)#1},std::tuple<>>>::~unique_ptr[abi:ne200100](v4);
  return 0;
}

void sub_18F641C7C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 buf)
{
  if (a2)
  {
    voucher_adopt();
    __cxa_begin_catch(a1);
    if (gAudioConverterDeferredLogOnce != -1)
    {
      dispatch_once(&gAudioConverterDeferredLogOnce, &__block_literal_global);
    }

    v12 = *gAudioConverterLog;
    if (os_log_type_enabled(*gAudioConverterLog, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 136315394;
      *(&buf + 4) = "AudioConverterServer.h";
      WORD6(buf) = 1024;
      *(&buf + 14) = 98;
      _os_log_impl(&dword_18F5DF000, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d Server thread exiting with uncaught exception", &buf, 0x12u);
    }

    __cxa_end_catch();
    JUMPOUT(0x18F641C44);
  }

  _Unwind_Resume(a1);
}

uint64_t CheckProperty(int a1, void *a2, const void *a3)
{
  v10[2] = *MEMORY[0x1E69E9840];
  if (a1 <= 1684496751)
  {
    if (a1 <= 1651401827)
    {
      if ((a1 == 1633776744 || a1 == 1633904233) && !a2[5])
      {
        return 2003329396;
      }

      return 0;
    }

    if (a1 != 1651401828)
    {
      if (a1 == 1668312419 && !a2[1])
      {
        return 2003329396;
      }

      return 0;
    }

LABEL_20:
    if (!*a2)
    {
      return 2003329396;
    }

    return 0;
  }

  if (a1 > 1832022883)
  {
    if (a1 != 1832022884)
    {
      if (a1 != 1986946671)
      {
        return 0;
      }

      goto LABEL_20;
    }

    result = 2003329396;
    if (a2[1] && a2[3])
    {
      return 0;
    }
  }

  else if (a1 == 1684496752)
  {
    result = 2003329396;
    if (*a2)
    {
      v5 = a2[1];
      if (v5)
      {
        v6 = 0;
        v10[0] = *a2;
        v10[1] = v5;
        while (1)
        {
          v7 = v10[v6];
          v8 = *v7;
          if (v8)
          {
            break;
          }

LABEL_30:
          if (++v6 == 2)
          {
            return 0;
          }
        }

        v9 = v7 + 4;
        while (!*(v9 - 1) || *v9)
        {
          v9 += 2;
          if (!--v8)
          {
            goto LABEL_30;
          }
        }
      }
    }
  }

  else
  {
    if (a1 != 1685218164)
    {
      return 0;
    }

    result = 2003329396;
    v4 = *a2;
    if (*a2)
    {
      if (*(v4 + 48) && *(v4 + 64))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t caulk::concurrent::lf_read_synchronized_write<std::vector<std::pair<unsigned long long,AudioConverterRenderServer *>>>::mutator::~mutator(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    if (*(a1 + 8))
    {
      caulk::concurrent::details::lf_read_sync_write_impl::end_mutate(v2);
      v3 = *a1;
      v4 = *(a1 + 32);
      *(*a1 + v4 + 8) = 0;
      v5 = v3 + 24 * v4;
      v8 = *(v5 + 2);
      v7 = v5 + 16;
      v6 = v8;
      if (v8)
      {
        *(v7 + 1) = v6;
        operator delete(v6);
      }
    }
  }

  if (*(a1 + 24) == 1)
  {
    os_unfair_lock_unlock(*(a1 + 16));
  }

  return a1;
}

void std::allocator<std::pair<unsigned long long,AudioConverterRenderServer *>>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t *std::unique_ptr<std::tuple<caulk::thread::attributes,AudioConverterServer::setup(char const*)::{lambda(void)#1},std::tuple<>>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 64);
    if (v3)
    {
      CFRelease(v3);
    }

    if (*(v2 + 24) == 1 && *(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x193ADF220](v2, 0x1032C4045CCBDCCLL);
  }

  return a1;
}

uint64_t *caulk::concurrent::lf_read_synchronized_write<std::vector<std::pair<unsigned long long,AudioConverterRenderServer *>>>::mutator::copy_previous(uint64_t *result)
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

uint64_t TMarshaller<unsigned int>::Deserialize(Marshaller *a1, uint64_t a2, void **a3, unsigned int *a4)
{
  if ((*a4 | 4) == 4)
  {
    Marshaller::CheckDest(a1, a3, a4, 4uLL);
    (*(*a1 + 40))(a1, a2, *a3);
    v7 = *(a2 + 32) ^ 1;
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

void DSPGraph::NewBoxRegistry::NewBoxRegistry(void)::$_31::operator()<char const*,int,DSPGraph::CalculationBox::OperatorDomain,DSPGraph::CalculationBox::OperatorCodomain,DSPGraph::CalculationBox::Operator>(uint64_t a1, char *a2, unsigned int a3, int a4, int a5, int a6)
{
  __p[7] = *MEMORY[0x1E69E9840];
  std::string::basic_string[abi:ne200100]<0>(__p, a2);
  v7 = 1668183148;
  v8 = a3;
  v9 = 1633841016;
  v10 = 0;
  operator new();
}

void sub_18F642600(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  std::__function::__value_func<DSPGraph::Box * ()(unsigned int,unsigned int)>::~__value_func[abi:ne200100](&a19);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

Boolean AudioComponentInstanceCanDo(AudioComponentInstance inInstance, SInt16 inSelectorID)
{
  if (inInstance)
  {
    v2 = inSelectorID;
    inInstance = (*(*inInstance + 8))(inInstance);
    if (inInstance)
    {
      v3 = inInstance;
      v4 = APComponentInstance::selectorToMethodPtr(*(inInstance + 1), *(inInstance + 2), v2);
      if (v4)
      {
        v5 = *v4 == 0;
      }

      else
      {
        v6 = *(v3 + 3);
        if (!v6)
        {
          LOBYTE(inInstance) = 0;
          return inInstance;
        }

        v5 = (*(v6 + 16))(v2) == 0;
      }

      LOBYTE(inInstance) = !v5;
    }
  }

  return inInstance;
}

uint64_t APComponentInstance::selectorToMethodPtr(APComponentInstance *this, std::__shared_weak_count *a2, int a3)
{
  if (a2)
  {
    atomic_fetch_add_explicit(&a2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (*(this + 19) == 24949)
  {
    v3 = *(this + 14);
    switch(a3)
    {
      case 1:
        break;
      case 2:
        v3 += 8;
        break;
      case 3:
        v3 += 16;
        break;
      case 4:
        v3 += 24;
        break;
      case 5:
        v3 += 32;
        break;
      case 6:
        v3 += 80;
        break;
      case 7:
        v3 += 88;
        break;
      case 9:
        v3 += 104;
        break;
      case 10:
        v3 += 40;
        break;
      case 11:
        v3 += 48;
        break;
      case 14:
        v3 += 112;
        break;
      case 15:
        v3 += 64;
        break;
      case 16:
        v3 += 72;
        break;
      case 17:
        v3 += 96;
        break;
      case 18:
        v3 += 56;
        break;
      case 20:
        v3 += 128;
        break;
      case 21:
        v3 += 136;
        break;
      default:
        goto LABEL_6;
    }
  }

  else
  {
LABEL_6:
    v3 = 0;
  }

  if (a2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a2);
  }

  return v3;
}

void std::vector<std::unique_ptr<Resampler2>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v7 = *--v4;
        v6 = v7;
        *v4 = 0;
        if (v7)
        {
          (*(*v6 + 8))(v6);
        }
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t DSPGraph::TimeFreqBox::uninitialize(DSPGraph::TimeFreqBox *this)
{
  DSPGraph::Box::uninitialize(this);
  v2 = *(this + 97);

  return std::vector<std::unique_ptr<void,int (*)(void *)>>::__base_destruct_at_end[abi:ne200100](this + 776, v2);
}

uint64_t std::vector<std::unique_ptr<void,int (*)(void *)>>::__base_destruct_at_end[abi:ne200100](uint64_t result, void *a2)
{
  v3 = result;
  v4 = *(result + 8);
  if (v4 != a2)
  {
    v5 = *(result + 8);
    do
    {
      v6 = *(v5 - 2);
      v5 -= 2;
      result = v6;
      *v5 = 0;
      if (v6)
      {
        result = (*(v4 - 1))();
      }

      v4 = v5;
    }

    while (v5 != a2);
  }

  *(v3 + 8) = a2;
  return result;
}

uint64_t VPTimeFreqConverter_Dispose(void *a1)
{
  if (a1)
  {
    v2 = a1[6];
    if (v2)
    {
      MEMORY[0x193ADF1F0](v2, 0x1000C8052888210);
    }

    v3 = a1[7];
    if (v3)
    {
      MEMORY[0x193ADF1F0](v3, 0x1000C8052888210);
    }

    v4 = a1[20];
    if (v4)
    {
      a1[21] = v4;
      operator delete(v4);
    }

    v5 = a1[17];
    if (v5)
    {
      a1[18] = v5;
      operator delete(v5);
    }

    v6 = a1[14];
    if (v6)
    {
      a1[15] = v6;
      operator delete(v6);
    }

    v7 = a1[11];
    if (v7)
    {
      a1[12] = v7;
      operator delete(v7);
    }

    v8 = a1[8];
    if (v8)
    {
      a1[9] = v8;
      operator delete(v8);
    }

    v9 = a1[5];
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }

    MEMORY[0x193ADF220](a1, 0x10A0C406C6E14A4);
  }

  return 0;
}

uint64_t acv2::CodecConverterFactory::EmploysDependentPackets(AudioComponent *this, unsigned int *a2)
{
  os_unfair_lock_lock(&acv2::sCodecConverterFactoryLocker);
  if (*(this + 68) != 1)
  {
    outInstance = 0;
    v4 = AudioComponentInstanceNew(this[4], &outInstance);
    if (v4)
    {
      goto LABEL_10;
    }

    v8 = 0;
    ioPropertyDataSize = 4;
    Property = AudioCodecGetProperty(outInstance, 0x64706B3Fu, &ioPropertyDataSize, &v8);
    v4 = Property;
    if (Property == 2003332927)
    {
      v6 = 0;
      v8 = 0;
    }

    else
    {
      if (Property)
      {
LABEL_9:
        AudioComponentInstanceDispose(outInstance);
        goto LABEL_10;
      }

      v6 = v8;
    }

    v4 = 0;
    *a2 = v6;
    *(this + 16) = v6;
    *(this + 68) = 1;
    goto LABEL_9;
  }

  v4 = 0;
  *a2 = *(this + 16);
LABEL_10:
  os_unfair_lock_unlock(&acv2::sCodecConverterFactoryLocker);
  return v4;
}

uint64_t SetMatrixCoefficient(uint64_t result, AudioChannelLayout *a2, int a3, int a4, float *a5, float a6)
{
  v6 = *(result + 8);
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      if (*(result + 12 + 20 * i) == a3)
      {
        mNumberChannelDescriptions = a2->mNumberChannelDescriptions;
        if (mNumberChannelDescriptions)
        {
          v9 = mNumberChannelDescriptions * i;
          mChannelDescriptions = a2->mChannelDescriptions;
          do
          {
            mChannelLabel = mChannelDescriptions->mChannelLabel;
            ++mChannelDescriptions;
            if (mChannelLabel == a4)
            {
              a5[v9] = a6;
            }

            ++v9;
            --mNumberChannelDescriptions;
          }

          while (mNumberChannelDescriptions);
        }
      }
    }
  }

  return result;
}

uint64_t AudioFormatProperty_BalanceFade(const AudioBalanceFade *a1, unsigned int *a2, float *a3)
{
  v38 = *MEMORY[0x1E69E9840];
  mChannelLayout = a1->mChannelLayout;
  v36 = 0;
  result = AudioFormatProperty_NumberOfChannelsForLayout(mChannelLayout, &v36);
  if (!result)
  {
    v9 = v36;
    if (v36 > 0x40)
    {
      return 1718449215;
    }

    if (v36 >= *a2)
    {
      v10 = *a2;
    }

    else
    {
      v10 = v36;
    }

    *a2 = v10;
    mChannelLayoutTag = mChannelLayout->mChannelLayoutTag;
    if (mChannelLayout->mChannelLayoutTag == 0x10000)
    {
      AudioFormatProperty_ChannelLayoutForBitmap(mChannelLayout->mChannelBitmap, __dst, v8);
    }

    else if (mChannelLayoutTag)
    {
      result = AudioFormatProperty_ChannelLayoutForTag(mChannelLayoutTag, __dst);
      if (result)
      {
        return result;
      }
    }

    else
    {
      memcpy(__dst, mChannelLayout, 20 * v9 + 12);
    }

    SanitizeAudioChannelLayout(__dst, 0);
    mNumberChannelDescriptions = __dst[0].mNumberChannelDescriptions;
    if (__dst[0].mNumberChannelDescriptions)
    {
      mChannelDescriptions = __dst[0].mChannelDescriptions;
      while (1)
      {
        mChannelLabel = mChannelDescriptions->mChannelLabel;
        if (mChannelDescriptions->mChannelLabel <= 207)
        {
          break;
        }

        if (mChannelLabel <= 300)
        {
          if (mChannelLabel == 208)
          {
            goto LABEL_26;
          }

          if (mChannelLabel != 209)
          {
            goto LABEL_28;
          }

LABEL_25:
          mChannelLabel = 2;
          goto LABEL_28;
        }

        if (mChannelLabel == 301)
        {
          goto LABEL_26;
        }

        if (mChannelLabel == 302)
        {
          goto LABEL_25;
        }

LABEL_28:
        mChannelDescriptions->mChannelLabel = mChannelLabel;
        ++mChannelDescriptions;
        if (!--mNumberChannelDescriptions)
        {
          goto LABEL_29;
        }
      }

      if (mChannelLabel == 42)
      {
        mChannelLabel = 3;
        goto LABEL_28;
      }

      if (mChannelLabel == 206)
      {
LABEL_26:
        mChannelLabel = 1;
        goto LABEL_28;
      }

      if (mChannelLabel != 207)
      {
        goto LABEL_28;
      }

      goto LABEL_25;
    }

LABEL_29:
    if (v9)
    {
      v15 = __dst[0].mChannelDescriptions;
      while (1)
      {
        v35 = *v15;
        SetDefaultChannelPosition(&v35);
        if (v35.mChannelFlags)
        {
          v16 = fmodf(v35.mCoordinates[0], 360.0);
          if (v16 < 0.0)
          {
            v16 = v16 + 360.0;
          }

          if (v16 > 100.0 && v16 <= 260.0)
          {
            break;
          }
        }

        ++v15;
        if (!--v9)
        {
          goto LABEL_40;
        }
      }

      v18 = 1;
    }

    else
    {
LABEL_40:
      v18 = 0;
    }

    mLeftRightBalance = a1->mLeftRightBalance;
    mBackFrontFade = a1->mBackFrontFade;
    mType = a1->mType;
    if (mType == kAudioBalanceFadeType_EqualPower)
    {
      if (mLeftRightBalance <= -1.0)
      {
        v25 = 0.0;
        v24 = 1.4142;
      }

      else if (mLeftRightBalance >= 1.0)
      {
        v24 = 0.0;
        v25 = 1.4142;
      }

      else
      {
        v30 = __sincos_stret(mLeftRightBalance * 0.785398163 + 0.785398163);
        v25 = v30.__sinval * 1.41421356;
        v24 = v30.__cosval * 1.41421356;
      }

      v27 = 1.0;
      if (v18)
      {
        if (mBackFrontFade <= -1.0)
        {
          v27 = 0.0;
          v29 = 1.4142;
        }

        else if (mBackFrontFade >= 1.0)
        {
          v29 = 0.0;
          v27 = 1.4142;
        }

        else
        {
          v31 = __sincos_stret(mBackFrontFade * 0.785398163 + 0.785398163);
          v27 = v31.__sinval * 1.41421356;
          v29 = v31.__cosval * 1.41421356;
        }
      }

      else
      {
        v29 = 1.0;
      }
    }

    else
    {
      if (mType)
      {
        return 4294967246;
      }

      v22 = mLeftRightBalance + 1.0;
      v23 = 1.0 - mLeftRightBalance;
      if (mLeftRightBalance >= 1.0)
      {
        v23 = 0.0;
      }

      if (mLeftRightBalance >= 0.0)
      {
        v22 = 1.0;
      }

      if (mLeftRightBalance <= 0.0)
      {
        v24 = 1.0;
      }

      else
      {
        v24 = v23;
      }

      if (mLeftRightBalance <= -1.0)
      {
        v25 = 0.0;
      }

      else
      {
        v25 = v22;
      }

      v26 = mBackFrontFade + 1.0;
      if (mBackFrontFade >= 0.0)
      {
        v26 = 1.0;
      }

      if (mBackFrontFade <= -1.0)
      {
        v26 = 0.0;
      }

      if (v18)
      {
        v27 = v26;
      }

      else
      {
        v27 = 1.0;
      }

      v28 = 1.0 - mBackFrontFade;
      if (mBackFrontFade >= 1.0)
      {
        v28 = 0.0;
      }

      if ((v18 & (mBackFrontFade > 0.0)) != 0)
      {
        v29 = v28;
      }

      else
      {
        v29 = 1.0;
      }
    }

    if (v10)
    {
      v32 = __dst[0].mChannelDescriptions;
      do
      {
        v35 = *v32;
        SetDefaultChannelPosition(&v35);
        if (v35.mChannelFlags)
        {
          v33 = fmodf(v35.mCoordinates[0], 360.0);
          if (v33 < 0.0)
          {
            v33 = v33 + 360.0;
          }

          if (v33 > 10.0)
          {
            if (v33 <= 80.0)
            {
              *a3 = v25 * v27;
              goto LABEL_100;
            }

            if (v33 <= 100.0)
            {
              *a3 = v25;
              goto LABEL_100;
            }

            if (v33 <= 170.0)
            {
              *a3 = v25 * v29;
              goto LABEL_100;
            }

            if (v33 <= 190.0)
            {
              *a3 = v29;
              goto LABEL_100;
            }

            if (v33 <= 260.0)
            {
              v34 = v24 * v29;
LABEL_98:
              *a3 = v34;
              goto LABEL_100;
            }

            if (v33 <= 280.0)
            {
              *a3 = v24;
              goto LABEL_100;
            }

            if (v33 <= 350.0)
            {
              v34 = v24 * v27;
              goto LABEL_98;
            }
          }

          *a3 = v27;
        }

        else
        {
          *a3 = 1.0;
        }

LABEL_100:
        ++a3;
        ++v32;
        --v10;
      }

      while (v10);
    }

    return 0;
  }

  return result;
}

uint64_t SanitizeAudioChannelLayout(uint64_t result, int a2)
{
  v2 = *(result + 8);
  if (v2 >= 2)
  {
    v3 = result;
    v4 = result + 12;
    v5 = (result + 28);
    v6 = *(result + 8);
    while ((*(v5 - 3) & 1) != 0 && *(v5 - 2) == 0.0 && *(v5 - 1) == 0.0 && *v5 == 0.0)
    {
      v5 += 5;
      if (!--v6)
      {
        v7 = (v2 + 3) & 0x1FFFFFFFCLL;
        v8 = vdupq_n_s64(v2 - 1);
        v9 = xmmword_18F9016B0;
        v10 = xmmword_18F9016C0;
        v11 = (result + 56);
        v12 = vdupq_n_s64(4uLL);
        do
        {
          v13 = vmovn_s64(vcgeq_u64(v8, v10));
          if (vuzp1_s16(v13, *v8.i8).u8[0])
          {
            *(v11 - 10) = 0;
          }

          if (vuzp1_s16(v13, *&v8).i8[2])
          {
            *(v11 - 5) = 0;
          }

          if (vuzp1_s16(*&v8, vmovn_s64(vcgeq_u64(v8, *&v9))).i32[1])
          {
            *v11 = 0;
            v11[5] = 0;
          }

          v9 = vaddq_s64(v9, v12);
          v10 = vaddq_s64(v10, v12);
          v11 += 20;
          v7 -= 4;
        }

        while (v7);
        break;
      }
    }

    if (a2)
    {
      v14 = 0;
      do
      {
        result = SetDefaultChannelPosition(v4);
        ++v14;
        v4 += 20;
      }

      while (v14 < *(v3 + 8));
    }
  }

  return result;
}

uint64_t acv2::PCMConverterFactory::AddSRC(uint64_t a1, uint64_t a2, const void **a3)
{
  if (*a1 == *(a1 + 40))
  {
    return 0;
  }

  v5 = *(a1 + 28);
  v6 = *(a1 + 12) & 0x20 | 9;
  v7 = 4 * v5;
  if ((*(a1 + 12) & 0x20) != 0)
  {
    v7 = 4;
  }

  v16 = 0;
  v17 = 1819304813;
  v18 = v6;
  v19 = v7;
  v20 = 1;
  v21 = v7;
  v22 = v5;
  v23 = 32;
  v3 = acv2::PCMConverterFactory::AddPCMToGoal(&v16, a1, a2, a3, 0);
  if (!v3)
  {
    *a1 = *(a1 + 40);
    v8 = *(a1 + 28);
    v9 = *(a1 + 52) & 0x20;
    v10 = *(a1 + 12);
    if ((v10 & 0x20) != 0)
    {
      v11 = 1;
    }

    else
    {
      v11 = *(a1 + 28);
      if (!v8)
      {
        v12 = (*(a1 + 32) + 7) >> 3;
        goto LABEL_11;
      }
    }

    v12 = *(a1 + 24) / v11;
LABEL_11:
    v13 = v10 & 0xFFFFFFDF;
    if (v9)
    {
      v8 = 1;
    }

    v14 = v12 * v8;
    *(a1 + 20) = 1;
    *(a1 + 24) = v14;
    *(a1 + 12) = v13 | v9;
    *(a1 + 16) = v14;
    operator new();
  }

  return v3;
}

void sub_18F6435E8(_Unwind_Exception *a1)
{
  ACAudioSpan::~ACAudioSpan((v1 + 21));
  v3 = v1[20];
  v1[20] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  acv2::AudioConverterBase::~AudioConverterBase(v1);
  MEMORY[0x193ADF220]();
  _Unwind_Resume(a1);
}

uint64_t std::__split_buffer<std::unique_ptr<Resampler2>>::~__split_buffer(uint64_t a1)
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

void acv2::SampleRateConverter::ReplaceResampler(acv2::SampleRateConverter *this)
{
  if (*(this + 68) != 1835626096 && (*(this + 312) & 1) == 0)
  {
    operator new();
  }

  operator new();
}

uint64_t *std::vector<unsigned char>::vector[abi:ne200100](uint64_t *a1, uint64_t a2)
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

void sub_18F6440D0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::unique_ptr<ACOutputBuffer>::~unique_ptr[abi:ne200100](void *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = v2[14];
    if (v3)
    {
      v2[15] = v3;
      operator delete(v3);
    }

    ACAudioSpan::~ACAudioSpan((v2 + 1));
    MEMORY[0x193ADF220](v2, 0x1072C402891EA91);
  }

  return a1;
}

uint64_t acv2::SampleRateConverter::SetProperty(acv2::SampleRateConverter *this, int a2, int a3, int *a4)
{
  result = 1886547824;
  if (a2 <= 1936876392)
  {
    if (a2 == 1835626096)
    {
      if (a3 == 4)
      {
        *(this + 312) = *a4 != 0;
        goto LABEL_34;
      }
    }

    else
    {
      if (a2 != 1886547309)
      {
        v7 = 25441;
        goto LABEL_8;
      }

      if (a3 == 4)
      {
        result = (*(**(this + 20) + 32))(*(this + 20));
        if (!result)
        {
          return result;
        }

        *(this + 70) = *a4;
        (*(**(this + 20) + 48))(*(this + 20));
        return 0;
      }
    }

    return 561211770;
  }

  if (a2 == 1936876401)
  {
    if (a3 != 4)
    {
      return 561211770;
    }

    v10 = *a4;
    if (*a4 <= 0x7F)
    {
      if (*(this + 69) != v10)
      {
        *(this + 69) = v10;
      }

LABEL_34:
      acv2::SampleRateConverter::ReplaceResampler(this);
    }

    return 4294967246;
  }

  if (a2 == 1936876400)
  {
    if (a3 != 8)
    {
      return 561211770;
    }

    v11 = *a4;
    if (*a4 >= 0.0 && v11 < 1.0)
    {
      *(this + 38) = v11;
      (*(**(this + 20) + 64))(*(this + 20));
      return 0;
    }

    return 4294967246;
  }

  v7 = 25449;
LABEL_8:
  if (a2 == (v7 | 0x73720000))
  {
    if (a3 == 4)
    {
      v8 = *a4;
      if (*a4 > 1835626095)
      {
        if (v8 != 1852797549)
        {
          v9 = 1835626096;
LABEL_31:
          if (v8 != v9)
          {
            goto LABEL_34;
          }
        }
      }

      else if (v8 != 1650553971)
      {
        v9 = 1818848869;
        goto LABEL_31;
      }

      if (a2 != 1936876393)
      {
        *(this + 68) = v8;
      }

      goto LABEL_34;
    }

    return 561211770;
  }

  return result;
}

void acv2::Resampler2Wrapper::~Resampler2Wrapper(const std::__fs::filesystem::path **this)
{
  *this = &unk_1F03352A0;
  v2 = (this + 3);
  std::unique_ptr<AudioConverterCapturer>::~unique_ptr[abi:ne200100](this + 8);
  std::unique_ptr<AudioConverterCapturer>::~unique_ptr[abi:ne200100](this + 7);
  v3 = v2;
  std::vector<std::unique_ptr<Resampler2>>::__destroy_vector::operator()[abi:ne200100](&v3);
}

{
  acv2::Resampler2Wrapper::~Resampler2Wrapper(this);

  JUMPOUT(0x193ADF220);
}

const std::__fs::filesystem::path **std::unique_ptr<AudioConverterCapturer>::~unique_ptr[abi:ne200100](const std::__fs::filesystem::path **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    AudioConverterCapturer::~AudioConverterCapturer(v2);
    MEMORY[0x193ADF220]();
  }

  return a1;
}

void DSPGraph::Graph::~Graph(DSPGraph::Graph *this)
{
  *this = &unk_1F033EA38;
  DSPGraph::Graph::uninitialize(this);
  DSPGraph::Graph::unconfigure(this);
  for (i = *(this + 3); i; i = *i)
  {
    (*(*i[2] + 568))(i[2]);
  }

  for (j = *(this + 8); j; j = *j)
  {
    v4 = j[2];
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }
  }

  if (*(this + 9))
  {
    v5 = *(this + 8);
    if (v5)
    {
      do
      {
        v6 = *v5;
        operator delete(v5);
        v5 = v6;
      }

      while (v6);
    }

    *(this + 8) = 0;
    v7 = *(this + 7);
    if (v7)
    {
      for (k = 0; k != v7; ++k)
      {
        *(*(this + 6) + 8 * k) = 0;
      }
    }

    *(this + 9) = 0;
  }

  std::__hash_table<std::__hash_value_type<std::string,DSPGraph::Graph::profiler_t>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,DSPGraph::Graph::profiler_t>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,DSPGraph::Graph::profiler_t>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,DSPGraph::Graph::profiler_t>>>::~__hash_table(this + 1056);
  std::__function::__value_func<void ()(double)>::~__value_func[abi:ne200100](this + 1024);
  std::unique_ptr<DSPGraph::Graph::profiler_t>::reset[abi:ne200100](this + 127, 0);
  v14 = (this + 992);
  std::vector<DSPGraph::Graph::GraphBridge>::__destroy_vector::operator()[abi:ne200100](&v14);
  *(this + 118) = &unk_1F033EA98;
  std::__hash_table<std::__hash_value_type<unsigned int,DSPGraph::AnalyzerBuilder::Info>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,DSPGraph::AnalyzerBuilder::Info>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,DSPGraph::AnalyzerBuilder::Info>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,DSPGraph::AnalyzerBuilder::Info>>>::~__hash_table(this + 952);
  v14 = (this + 904);
  std::vector<std::unique_ptr<DSPGraph::Subset>>::__destroy_vector::operator()[abi:ne200100](&v14);
  std::__hash_table<std::__hash_value_type<std::string,DSPGraph::FormatAndBlockSize>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,DSPGraph::FormatAndBlockSize>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,DSPGraph::FormatAndBlockSize>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,DSPGraph::FormatAndBlockSize>>>::~__hash_table(this + 784);
  std::unique_ptr<DSPGraph::RenderObserverList<DSPGraph::Graph>>::reset[abi:ne200100](this + 85, 0);
  std::__hash_table<std::__hash_value_type<std::string,DSPGraph::FormatAndBlockSize>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,DSPGraph::FormatAndBlockSize>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,DSPGraph::FormatAndBlockSize>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,DSPGraph::FormatAndBlockSize>>>::~__hash_table(this + 640);
  std::__hash_table<std::__hash_value_type<std::string,DSPGraph::FormatAndBlockSize>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,DSPGraph::FormatAndBlockSize>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,DSPGraph::FormatAndBlockSize>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,DSPGraph::FormatAndBlockSize>>>::~__hash_table(this + 600);
  std::__hash_table<std::__hash_value_type<unsigned int,DSPGraph::Graph::GraphProperty>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,DSPGraph::Graph::GraphProperty>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,DSPGraph::Graph::GraphProperty>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,DSPGraph::Graph::GraphProperty>>>::~__hash_table(this + 560);
  std::__hash_table<std::__hash_value_type<unsigned int,DSPGraph::Graph::GraphParameter>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,DSPGraph::Graph::GraphParameter>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,DSPGraph::Graph::GraphParameter>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,DSPGraph::Graph::GraphParameter>>>::~__hash_table(this + 520);
  v9 = *(this + 62);
  if (v9)
  {
    *(this + 63) = v9;
    operator delete(v9);
  }

  v10 = *(this + 59);
  if (v10)
  {
    *(this + 60) = v10;
    operator delete(v10);
  }

  if (*(this + 455) < 0)
  {
    operator delete(*(this + 54));
  }

  if (*(this + 431) < 0)
  {
    operator delete(*(this + 51));
  }

  v11 = *(this + 38);
  if (v11)
  {
    *(this + 39) = v11;
    operator delete(v11);
  }

  v12 = *(this + 35);
  if (v12)
  {
    *(this + 36) = v12;
    operator delete(v12);
  }

  v13 = *(this + 32);
  if (v13)
  {
    *(this + 33) = v13;
    operator delete(v13);
  }

  std::__hash_table<std::unique_ptr<DSPGraph::IsoGroup>,std::hash<std::unique_ptr<DSPGraph::IsoGroup>>,std::equal_to<std::unique_ptr<DSPGraph::IsoGroup>>,std::allocator<std::unique_ptr<DSPGraph::IsoGroup>>>::~__hash_table(this + 216);
  v14 = (this + 192);
  std::vector<std::unique_ptr<DSPGraph::InternalBuffer>>::__destroy_vector::operator()[abi:ne200100](&v14);
  std::mutex::~mutex(this + 2);
  std::__hash_table<std::unique_ptr<DSPGraph::Box>,std::hash<std::unique_ptr<DSPGraph::Box>>,std::equal_to<std::unique_ptr<DSPGraph::Box>>,std::allocator<std::unique_ptr<DSPGraph::Box>>>::~__hash_table(this + 8);
}

{
  DSPGraph::Graph::~Graph(this);

  JUMPOUT(0x193ADF220);
}

OpaqueAudioComponentInstance *DSPGraph::AUBox::close(DSPGraph::AUBox *this)
{
  result = *(this + 106);
  if (result)
  {
    result = AudioComponentInstanceDispose(result);
    *(this + 106) = 0;
    if (result)
    {
      v3 = result;
      std::string::basic_string[abi:ne200100]<0>(&v6, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.cpp");
      std::string::basic_string[abi:ne200100]<0>(&v5, "close");
      std::operator+<char>();
      DSPGraph::ThrowException(v3, &v6, 1963, &v5, &v4);
    }
  }

  return result;
}

void sub_18F64475C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (*(v21 - 17) < 0)
  {
    operator delete(*(v21 - 40));
  }

  _Unwind_Resume(exception_object);
}

void TSimpleMarshaller<unsigned int>::~TSimpleMarshaller(Marshaller *a1)
{
  Marshaller::~Marshaller(a1);

  JUMPOUT(0x193ADF220);
}

BOOL TMarshaller<unsigned int>::Serialize(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a4 == 4)
  {
    (*(*a1 + 32))(a1, a2, a3);
  }

  return a4 == 4;
}

uint64_t CAFAudioFile::WriteChunkHeader(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 8);
  v4 = *(a2 + 16);
  if (v5 >= 0)
  {
    v5 -= 12;
  }

  v7 = bswap32(*a2);
  v8 = bswap64(v5);
  return (*(**(a1 + 104) + 56))(*(a1 + 104), 0, v4, 12, &v7, a3);
}

uint64_t pooledRenderer::AudioConverterOOP::reset(pooledRenderer::AudioConverterOOP *this, double a2)
{
  v3 = *(this + 11);
  v4 = *(v3 + 168);
  if (v4)
  {
    v5 = 0;
LABEL_3:
    v6 = AudioConverterRenderClient::sendReset(v4, a2);
    goto LABEL_8;
  }

  v5 = *(v3 + 8);
  v7 = ACResourcePoolManager<AudioConverterRenderClient,RendererConfiguration *>::popResourceFromStack(v5, 1);
  v4 = v7;
  if (v8)
  {
    AudioConverterRenderClient::setConfiguration(v7, v3 + 24);
    if (v4)
    {
      goto LABEL_3;
    }

    v6 = 0;
  }

  else
  {
    v6 = v7;
    v4 = 0;
  }

LABEL_8:
  if (v5)
  {
    ACResourcePoolManager<AudioConverterRenderClient,RendererConfiguration *>::pushResourceToStack(v5, v4);
  }

  v9 = *(this + 11);
  *(*(v9 + 256) + 60) = 0;
  *(v9 + 264) = 0;
  *(v9 + 292) = 0;
  *(v9 + 304) = 0;
  return v6;
}

void sub_18F644970(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    ACResourcePoolManager<AudioConverterRenderClient,RendererConfiguration *>::pushResourceToStack(v1, v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AudioConverterRenderClient::sendReset(AudioConverterRenderClient *this, double a2)
{
  v3 = *(this + 34);
  can_send = audioipc::ipc_node_base<(audioipc::ipcnode_options)0,audioipc::eventlink_primitive,unilaterally_billed_shared_memory>::can_send(this + 8, a2);
  v5 = can_send;
  v6 = HIDWORD(can_send);
  if (can_send & 0x100000000) != 0 && (can_send)
  {
    *v3 = 3;
    v7 = audioipc::ipc_node_base<(audioipc::ipcnode_options)0,audioipc::eventlink_primitive,unilaterally_billed_shared_memory>::signal_wait_with_timeout(this + 8);
    v5 = v7;
    v6 = HIDWORD(v7);
  }

  if (!v6)
  {
    v8 = 560164718;
    v9 = _os_log_pack_size();
    message = caulk::deferred_logger::create_message(gAudioConverterDeferredLog, v9 + 88, 16);
    if (!message)
    {
      return v8;
    }

    v11 = message;
    v12 = _os_log_pack_fill(message + 40, v9, 0, &dword_18F5DF000, "AudioConverter -> %p: The server returned %d when asked to reset.", v22, v23);
    v13 = *(this + 48);
    *v12 = 134218240;
    *(v12 + 4) = v13;
    *(v12 + 12) = 1024;
    *(v12 + 14) = v5;
    v14 = *(gAudioConverterDeferredLog + 16);
    v15 = v11;
LABEL_11:
    caulk::concurrent::messenger::enqueue(v14, v15);
    return v8;
  }

  if (!v5)
  {
    v8 = 561277293;
    v16 = _os_log_pack_size();
    v17 = caulk::deferred_logger::create_message(gAudioConverterDeferredLog, v16 + 88, 16);
    if (!v17)
    {
      return v8;
    }

    v18 = v17;
    v19 = _os_log_pack_fill(v17 + 40, v16, 0, &dword_18F5DF000, "AudioConverter -> %p: The server timed out when asked to reset.", v22);
    v20 = *(this + 48);
    *v19 = 134217984;
    *(v19 + 4) = v20;
    v14 = *(gAudioConverterDeferredLog + 16);
    v15 = v18;
    goto LABEL_11;
  }

  return *(v3 + 4);
}

BOOL acv2::CodecConverter::ConverterSupportsProperty(OpaqueAudioComponentInstance **this, AudioCodecPropertyID a2)
{
  if (acv2::CodecConverter::CodecSupportsProperty(this[21], a2))
  {
    return 1;
  }

  v5 = this[90];
  if (!v5)
  {
    return 0;
  }

  outWritable = 0;
  outDataSize = 0;
  return AudioUnitGetPropertyInfo(*(v5 + 1), a2, 0, 0, &outDataSize, &outWritable) == 0;
}

uint64_t pooledRenderer::AudioConverterOOP::setProperty(pooledRenderer::AudioConverterOOP *this, uint64_t a2, const void *a3, _DWORD *a4)
{
  v5 = a3;
  v6 = a2;
  v47[1] = *MEMORY[0x1E69E9840];
  if (*(this + 12))
  {
    v8 = 0;
  }

  else
  {
    *buf_4 = 2753;
    *&buf_4[4] = a2;
    *&buf_4[12] = 0;
    *&buf_4[20] = 0;
    v46 = 0;
    kdebug_trace();
    HIDWORD(v38) = 2753;
    v39 = v6;
    v40 = 0;
    v41 = 0;
    v42 = 0;
    LOBYTE(buf) = 0;
    AT::ScopedTrace::~ScopedTrace(&buf);
    v8 = 1;
  }

  LOBYTE(v38) = v8;
  v43 = v8;
  if (a4)
  {
    switch(v6)
    {
      case 0x726E6472u:
        if (v5 == 4)
        {
          v16 = *(this + 11);
          if (*a4)
          {
            v17 = 0;
            v18 = 0;
          }

          else
          {
            v17 = *(v16 + 68);
            v18 = *(v16 + 124);
          }

          v22 = 0;
          v23 = v16 + 24;
          buf = v17;
          *buf_4 = v18;
          v47[0] = 0x100000000;
          do
          {
            *(v23 + 56 * *(v47 + v22) + 44) = *&buf_4[4 * *(v47 + v22) - 4];
            v22 += 4;
          }

          while (v22 != 8);
        }

        goto LABEL_28;
      case 0x72667368u:
        v11 = 0;
        *(*(this + 11) + 417) = *a4 == 1;
        goto LABEL_36;
      case 0x646D6763u:
        if (v5)
        {
          v9 = *(*(this + 11) + 152);
          if (v9)
          {
            AudioConverterCapturer::setDecompressionCookie(v9, a4, v5);
          }
        }

        break;
    }

    v10 = CheckProperty(v6, a4, a3);
    if (v10)
    {
      v11 = v10;
      v12 = _os_log_pack_size();
      message = caulk::deferred_logger::create_message(gAudioConverterDeferredLog, v12 + 88, 16);
      if (message)
      {
        v14 = message;
        v15 = _os_log_pack_fill(message + 40, v12, 0, &dword_18F5DF000, "AudioConverterOOP -> %p: The input data for PropertyID %u was not formatted correctly (%d)", v38, v39, v40);
        *v15 = 134218496;
        *(v15 + 4) = this;
        *(v15 + 12) = 1024;
        *(v15 + 14) = v6;
        *(v15 + 18) = 1024;
        *(v15 + 20) = v11;
        caulk::concurrent::messenger::enqueue(*(gAudioConverterDeferredLog + 16), v14);
      }

      goto LABEL_36;
    }

    if (v6 != 1970103906)
    {
      PropertyMarshaller::PropertyMarshaller(&buf, 0, 0);
    }

    if (v5 != 4)
    {
      v11 = 561211770;
      goto LABEL_36;
    }

    v11 = 560164718;
    v19 = atomic_load((*(this + 11) + 416));
    if ((v19 & 1) == 0)
    {
      goto LABEL_36;
    }

    v20 = *(this + 11);
    v21 = *(v20 + 208);
    if (*a4)
    {
      if (!v21)
      {
        operator new();
      }

      goto LABEL_28;
    }

    if (!v21)
    {
LABEL_28:
      v11 = 0;
      goto LABEL_36;
    }

    v24 = *(v20 + 16);
    v25 = ACResourcePoolManager<AudioConverterXPC_Client,swix::connection_config>::popResourceFromStack(v24, 1);
    v26 = v25;
    if (v27)
    {
      v28 = atomic_load((*(this + 11) + 416));
      v29 = v25;
      if (v28)
      {
        if (!v25)
        {
          v29 = 0;
LABEL_46:
          std::unique_ptr<AudioConverterPropertyClient>::reset[abi:ne200100]((*(this + 11) + 208), 0);
          if (gAudioConverterDeferredLogOnce != -1)
          {
            dispatch_once(&gAudioConverterDeferredLogOnce, &__block_literal_global);
          }

          v33 = *gAudioConverterLog;
          if (os_log_type_enabled(*gAudioConverterLog, OS_LOG_TYPE_DEFAULT))
          {
            buf = 136315650;
            *buf_4 = "AudioConverterOOP.cpp";
            *&buf_4[8] = 1024;
            *&buf_4[10] = 1044;
            *&buf_4[14] = 2048;
            *&buf_4[16] = this;
            _os_log_impl(&dword_18F5DF000, v33, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AudioConverterOOP -> %p: Stopped using messenger for bundle data", &buf, 0x1Cu);
          }

          v11 = 0;
          goto LABEL_54;
        }

        v29 = v25;
        v26 = AudioConverterXPC_Client::stopMessengerForProperties(v25, *(*(this + 11) + 208));
        if (HIDWORD(v26))
        {
          goto LABEL_46;
        }

LABEL_40:
        if (v26)
        {
          v11 = v26;
          if (gAudioConverterDeferredLogOnce != -1)
          {
            dispatch_once(&gAudioConverterDeferredLogOnce, &__block_literal_global);
          }

          v32 = *gAudioConverterLog;
          if (os_log_type_enabled(*gAudioConverterLog, OS_LOG_TYPE_ERROR))
          {
            buf = 136315650;
            *buf_4 = "AudioConverterOOP.cpp";
            *&buf_4[8] = 1024;
            *&buf_4[10] = 1047;
            *&buf_4[14] = 2048;
            *&buf_4[16] = this;
            _os_log_impl(&dword_18F5DF000, v32, OS_LOG_TYPE_ERROR, "%25s:%-5d AudioConverterOOP -> %p: Unable to stop using messenger for bundle data", &buf, 0x1Cu);
          }

          goto LABEL_54;
        }

        goto LABEL_46;
      }
    }

    else
    {
      v29 = 0;
      v31 = atomic_load((*(this + 11) + 416));
      if (v31)
      {
        goto LABEL_40;
      }
    }

LABEL_54:
    if (v24)
    {
      ACResourcePoolManager<AudioConverterXPC_Client,swix::connection_config>::pushResourceToStack(v24, v29);
    }

    goto LABEL_36;
  }

  v34 = _os_log_pack_size();
  v35 = caulk::deferred_logger::create_message(gAudioConverterDeferredLog, v34 + 88, 16);
  if (v35)
  {
    v36 = v35;
    v37 = _os_log_pack_fill(v35 + 40, v34, 0, &dword_18F5DF000, "PropertyID=%d is NULL", v38);
    *v37 = 67109120;
    v37[1] = v6;
    caulk::concurrent::messenger::enqueue(*(gAudioConverterDeferredLog + 16), v36);
  }

  v11 = 4294967246;
LABEL_36:
  if (v43 == 1)
  {
    AT::ScopedTrace::~ScopedTrace(&v38);
  }

  return v11;
}

void sub_18F645484(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

OSStatus AudioCodecUninitialize(AudioCodec inCodec)
{
  if (!inCodec)
  {
    return -50;
  }

  v1 = (*(*inCodec + 8))(inCodec);
  if (!v1)
  {
    return 560947818;
  }

  v2 = v1;
  v3 = *(*((**v1)(v1) + 112) + 32);
  if (!v3)
  {
    return -4;
  }

  v4 = v2[3];

  return v3(v4);
}

uint64_t CAFAudioFile::CalcSoundDataAlign(CAFAudioFile *this)
{
  v2 = *(this + 40);
  outPropertyData = *(this + 24);
  v24 = v2;
  v25 = *(this + 7);
  ioPropertyDataSize = 40;
  result = AudioFormatGetProperty(0x666D7469u, 0, 0, &ioPropertyDataSize, &outPropertyData);
  if (result == 1718449215 && *(this + 11) && !*(this + 10))
  {
    v6 = *(this + 40);
    outPropertyData = *(this + 24);
    v24 = v6;
    v25 = *(this + 7);
    v4 = DWORD1(v6);
  }

  else if (result || v24 || (v4 = DWORD1(v24)) == 0)
  {
    v5 = 4096;
    goto LABEL_21;
  }

  v7 = 2.0;
  if (DWORD2(outPropertyData) == 1634492771)
  {
    v7 = 3.0;
  }

  v8 = vcvtpd_s64_f64(*(this + 25) * (*&outPropertyData / v4 * v7));
  v20 = 0;
  v21 = 0;
  v9 = *(this + 18);
  v10 = *(this + 19) - v9;
  if (v10)
  {
    v11 = 0;
    v12 = 0xAAAAAAAAAAAAAAABLL * (v10 >> 3);
    v13 = 1;
    do
    {
      v14 = (v9 + 24 * v11);
      v15 = *v14;
      v16 = v14[2];
      if (v15 == 1718773093)
      {
        v17 = &v21;
      }

      else
      {
        if (v15 == 1684108385)
        {
          break;
        }

        v17 = &v20;
      }

      *v17 += v16;
      v11 = v13;
    }

    while (v12 > v13++);
    v19 = v20;
  }

  else
  {
    v19 = 0;
  }

  v5 = (v8 + 4120 + v19) & 0xFFFFFFFFFFFFF000;
LABEL_21:
  *(this + 24) = v5;
  return result;
}

uint64_t AudioFormatProperty_FormatInfo(uint64_t a1, const void *a2, AudioStreamBasicDescription *a3)
{
  mFormatID = a3->mFormatID;
  if (mFormatID > 1819304812)
  {
    if (mFormatID == 1970037111)
    {
      Property = 0;
      a3->mBitsPerChannel = 8;
      mChannelsPerFrame = a3->mChannelsPerFrame;
      a3->mFramesPerPacket = 1;
      a3->mBytesPerFrame = mChannelsPerFrame;
      a3->mBytesPerPacket = mChannelsPerFrame;
      v8 = 1970037111;
      goto LABEL_30;
    }

    if (mFormatID != 1819304813)
    {
      goto LABEL_14;
    }

    a3->mFramesPerPacket = 1;
    mBitsPerChannel = a3->mBitsPerChannel;
    if (!mBitsPerChannel)
    {
      return 0;
    }

    v10 = a3->mChannelsPerFrame;
    if (!v10)
    {
      return 0;
    }

    mFormatFlags = a3->mFormatFlags;
    if ((mFormatFlags & 8) != 0)
    {
      if ((mBitsPerChannel & 7) != 0)
      {
        return 1718449215;
      }

      Property = 0;
      v27 = mBitsPerChannel >> 3;
      if ((mFormatFlags & 0x20) != 0)
      {
        v10 = 1;
      }

      mBytesPerFrame = v27 * v10;
      a3->mBytesPerFrame = mBytesPerFrame;
    }

    else
    {
      mBytesPerFrame = a3->mBytesPerFrame;
      mBytesPerPacket = a3->mBytesPerPacket;
      if (!mBytesPerFrame)
      {
        Property = 0;
        a3->mBytesPerFrame = mBytesPerPacket;
        return Property;
      }

      if (mBytesPerPacket)
      {
        if (mBytesPerFrame == mBytesPerPacket)
        {
          return 0;
        }

        return 1718449215;
      }

      Property = 0;
    }

    a3->mBytesPerPacket = mBytesPerFrame;
    return Property;
  }

  if (mFormatID == 1634492791)
  {
    Property = 0;
    a3->mBitsPerChannel = 8;
    v21 = a3->mChannelsPerFrame;
    a3->mFramesPerPacket = 1;
    a3->mBytesPerFrame = v21;
    a3->mBytesPerPacket = v21;
    v8 = 1634492791;
    goto LABEL_30;
  }

  if (mFormatID == 1768775988)
  {
    Property = 0;
    a3->mBitsPerChannel = 0;
    *&a3->mFramesPerPacket = 64;
    a3->mBytesPerPacket = 34 * a3->mChannelsPerFrame;
    v8 = 1768775988;
LABEL_30:
    *&a3->mFormatID = v8;
    return Property;
  }

LABEL_14:
  v37 = 1969977198;
  v14 = AudioFormatEncryptedFormatTranslator::DecryptFormatID(mFormatID, &v37);
  inCodec[0] = 0;
  if (OpenCodecComponent(v14, inCodec, 0x61646563u))
  {
    if (OpenCodecComponent(v14, inCodec, 0x61656E63u))
    {
      v15 = OpenCodecComponent(v14, inCodec, 0x61636463u);
      if (v15)
      {
        goto LABEL_19;
      }
    }
  }

  *v36 = inCodec[0];
  outSize = 0;
  outWritable = 0;
  if (AudioCodecGetPropertyInfo(inCodec[0], 0x61636669u, &outSize, &outWritable))
  {
    AudioCodecAutoDisposer::~AudioCodecAutoDisposer(v36);
LABEL_19:
    if (!a1 || !a2)
    {
      goto LABEL_49;
    }

    v16 = *&a3->mBytesPerPacket;
    *&outPropertyData.mASBD.mSampleRate = *&a3->mSampleRate;
    *&outPropertyData.mASBD.mBytesPerPacket = v16;
    v17 = *&a3->mBitsPerChannel;
    outPropertyData.mASBD.mFormatID = v14;
    *&outPropertyData.mASBD.mBitsPerChannel = v17;
    outPropertyData.mMagicCookie = a2;
    outPropertyData.mMagicCookieSize = a1;
    v36[0] = 0;
    Property = AudioFormatProperty_FormatListSize(&outPropertyData, 0x38u, v36);
    if (!Property)
    {
      Property = 2003329396;
      if (v36[0] >= 0x30)
      {
        std::vector<unsigned char>::vector[abi:ne200100](inCodec, v36[0]);
        v18 = inCodec[0];
        v19 = AudioFormatProperty_FormatList(&outPropertyData, 0x38u, v36, inCodec[0]);
        Property = v19;
        if (v19 == -9405 || v19 == 2003332927)
        {
          v20 = 1;
        }

        else if (v19)
        {
          v20 = 0;
        }

        else if (v36[0] >= 0x30)
        {
          v29 = v18 + 48 * (v36[0] / 0x30);
          v30 = *(v29 - 3);
          v31 = *(v29 - 2);
          *&a3->mBitsPerChannel = *(v29 - 2);
          *&a3->mSampleRate = v30;
          *&a3->mBytesPerPacket = v31;
          v20 = 0;
          Property = 0;
          if (v37 != 1969977198)
          {
            a3->mFormatID = AudioFormatEncryptedFormatTranslator::EncryptFormatInFlavor(a3->mFormatID, v37);
          }
        }

        else
        {
          v20 = 0;
          Property = 2003329396;
        }

        v15 = inCodec[0];
        if (inCodec[0])
        {
          inCodec[1] = inCodec[0];
          operator delete(inCodec[0]);
        }

        if (v20)
        {
LABEL_49:
          RegistryAccess::instance(v15);
          v28 = qword_1ED746318;
          os_unfair_recursive_lock_lock_with_options();
          Property = (*(*v28 + 88))(v28, a1, a2, a3);
          os_unfair_recursive_lock_unlock();
        }
      }
    }

    return Property;
  }

  v24 = *&a3->mBytesPerPacket;
  *&outPropertyData.mASBD.mSampleRate = *&a3->mSampleRate;
  *&outPropertyData.mASBD.mBytesPerPacket = v24;
  v25 = *&a3->mBitsPerChannel;
  outPropertyData.mASBD.mFormatID = v14;
  *&outPropertyData.mASBD.mBitsPerChannel = v25;
  outPropertyData.mMagicCookie = a2;
  outPropertyData.mMagicCookieSize = a1;
  outSize = 56;
  Property = AudioCodecGetProperty(*v36, 0x61636669u, &outSize, &outPropertyData);
  if (!Property)
  {
    v26 = *&outPropertyData.mASBD.mBytesPerPacket;
    *&a3->mSampleRate = *&outPropertyData.mASBD.mSampleRate;
    *&a3->mBytesPerPacket = v26;
    *&a3->mBitsPerChannel = *&outPropertyData.mASBD.mBitsPerChannel;
    if (v37 != 1969977198)
    {
      a3->mFormatID = AudioFormatEncryptedFormatTranslator::EncryptFormatInFlavor(a3->mFormatID, v37);
    }
  }

  AudioCodecAutoDisposer::~AudioCodecAutoDisposer(v36);
  return Property;
}

void sub_18F645C9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AudioFileObject::DoCreate(AudioFileObject *this, const AudioStreamBasicDescription *a2, AudioStreamBasicDescription *a3, char a4)
{
  if (!AudioFileObject::IsDataFormatValid(a3, a2) || !(*(*this + 624))(this, a3))
  {
    return 1718449215;
  }

  *(this + 100) = 3;
  *(this + 138) = (a4 & 2) == 0;
  v8 = *(*this + 16);

  return v8(this, a2, a3);
}

uint64_t CAFAudioFile::Create(CAFAudioFile *this, const __CFURL *a2, const AudioStreamBasicDescription *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = AudioFileObject::Create(this, a2, a3);
  if (v4)
  {
    v5 = v4;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v9 = 136315394;
      v10 = "CAFAudioFile.cpp";
      v11 = 1024;
      v12 = 1133;
      v6 = MEMORY[0x1E69E9C10];
      v7 = "%25s:%-5d  Couldn't create a new audio file object";
LABEL_7:
      _os_log_impl(&dword_18F5DF000, v6, OS_LOG_TYPE_ERROR, v7, &v9, 0x12u);
    }
  }

  else
  {
    v5 = CAFAudioFile::InitializeCAFChunks(this);
    if (v5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v9 = 136315394;
      v10 = "CAFAudioFile.cpp";
      v11 = 1024;
      v12 = 1136;
      v6 = MEMORY[0x1E69E9C10];
      v7 = "%25s:%-5d  InitializeCAFChunks";
      goto LABEL_7;
    }
  }

  return v5;
}

uint64_t AudioFileObject::Create(AudioFileObject *this, const __CFURL *a2, const AudioStreamBasicDescription *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0;
  v5 = AudioFileObject::CreateDataFile(this, a2, &v8);
  if (!v5)
  {
    AudioFileObject::SetURL(this, a2);
    AudioFileObject::OpenFile(this, 3, v8);
  }

  v6 = v5;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v10 = "AudioFileObject.cpp";
    v11 = 1024;
    v12 = 53;
    _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  CreateDataFile failed", buf, 0x12u);
  }

  return v6;
}

uint64_t *auoop::WorkgroupPropagator::WorkgroupPropagator(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  *a1 = a2;
  v5 = a1 + 1;
  v6 = (a3 + 24);
  v7 = *(a3 + 24);
  if (!v7)
  {
    v6 = a1 + 4;
    goto LABEL_5;
  }

  if (v7 != a3)
  {
    a1[4] = v7;
LABEL_5:
    *v6 = 0;
    goto LABEL_7;
  }

  a1[4] = v5;
  (*(**v6 + 24))(*v6, v5);
  v3 = *a1;
LABEL_7:
  a1[6] = 0;
  *(a1 + 10) = 0;
  a1[7] = 0;
  a1[8] = 0;
  os_unfair_lock_lock((v3 + 32));
  v9 = *(v3 + 48);
  v8 = *(v3 + 56);
  if (v9 >= v8)
  {
    v11 = *(v3 + 40);
    v12 = v9 - v11;
    v13 = (v9 - v11) >> 3;
    v14 = v13 + 1;
    if ((v13 + 1) >> 61)
    {
      std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
    }

    v15 = v8 - v11;
    if (v15 >> 2 > v14)
    {
      v14 = v15 >> 2;
    }

    if (v15 >= 0x7FFFFFFFFFFFFFF8)
    {
      v16 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v16 = v14;
    }

    if (v16)
    {
      if (!(v16 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v17 = (v9 - v11) >> 3;
    v18 = (8 * v13);
    v19 = (8 * v13 - 8 * v17);
    *v18 = a1;
    v10 = v18 + 1;
    memcpy(v19, v11, v12);
    *(v3 + 40) = v19;
    *(v3 + 48) = v10;
    *(v3 + 56) = 0;
    if (v11)
    {
      operator delete(v11);
    }
  }

  else
  {
    *v9 = a1;
    v10 = v9 + 8;
  }

  *(v3 + 48) = v10;
  os_unfair_lock_unlock((v3 + 32));
  os_unfair_lock_lock(v3);
  v21 = 0uLL;
  v22 = 0;
  std::vector<auoop::TrackedWorkgroup>::__init_with_size[abi:ne200100]<auoop::TrackedWorkgroup*,auoop::TrackedWorkgroup*>(&v21, *(v3 + 8), *(v3 + 16), 0xAAAAAAAAAAAAAAABLL * ((*(v3 + 16) - *(v3 + 8)) >> 3));
  os_unfair_lock_unlock(v3);
  v23 = v21;
  v24 = v22;
  v25 = &v21;
  v22 = 0;
  v21 = 0uLL;
  std::vector<auoop::TrackedWorkgroup>::__destroy_vector::operator()[abi:ne200100](&v25);
  auoop::WorkgroupPropagator::propagate(a1, &v23);
  *&v21 = &v23;
  std::vector<auoop::TrackedWorkgroup>::__destroy_vector::operator()[abi:ne200100](&v21);
  return a1;
}

void sub_18F646298(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  std::vector<auoop::TrackedWorkgroup>::__destroy_vector::operator()[abi:ne200100](&a9);
  v13 = *v11;
  if (*v11)
  {
    *(v9 + 56) = v13;
    operator delete(v13);
  }

  std::__function::__value_func<void ()(applesauce::xpc::dict const&)>::~__value_func[abi:ne200100](v10);
  _Unwind_Resume(a1);
}

void auoop::WorkgroupPropagator::propagate(uint64_t a1, uint64_t *a2)
{
  v72 = *MEMORY[0x1E69E9840];
  if (kAUExtensionScope)
  {
    v4 = *kAUExtensionScope;
    if (!v4)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v4 = MEMORY[0x1E69E9C10];
    v5 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "AUOOPWorkgroups.mm";
    *&buf[12] = 1024;
    *&buf[14] = 308;
    _os_log_impl(&dword_18F5DF000, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AUOOPWorkgroupManager: propagating workgroups.", buf, 0x12u);
  }

LABEL_8:
  applesauce::xpc::array::create(&xarray);
  applesauce::xpc::array::create(&v65);
  os_unfair_lock_lock((a1 + 40));
  v6 = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3);
  v7 = *(a1 + 48);
  if (v6 > (*(a1 + 64) - v7) >> 3)
  {
    if (!(v6 >> 61))
    {
      std::allocator<SyncSampleEntry>::allocate_at_least[abi:ne200100](v6);
    }

    std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
  }

  v9 = *a2;
  v8 = a2[1];
  v10 = MEMORY[0x1E69E9A60];
LABEL_12:
  v11 = v65;
  v12 = *(a1 + 56);
  while (v7 != v12)
  {
    v13 = *v7;
    if (v9 != v8)
    {
      v14 = *(v9 + 8);
      if (v14 < v13)
      {
LABEL_23:
        WeakRetained = objc_loadWeakRetained((v9 + 16));
        v20 = WeakRetained;
        if (WeakRetained)
        {
          mach_port_out[0] = 0;
          v21 = os_workgroup_copy_port(WeakRetained, mach_port_out);
          if (!v21)
          {
            goto LABEL_33;
          }

          if (kAUExtensionScope)
          {
            v22 = *kAUExtensionScope;
            if (!v22)
            {
              goto LABEL_33;
            }
          }

          else
          {
            v22 = MEMORY[0x1E69E9C10];
            v23 = MEMORY[0x1E69E9C10];
          }

          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            *&buf[4] = "AUOOPWorkgroups.mm";
            *&buf[12] = 1024;
            *&buf[14] = 323;
            v68 = 1024;
            LODWORD(v69) = v21;
            _os_log_impl(&dword_18F5DF000, v22, OS_LOG_TYPE_ERROR, "%25s:%-5d Copying workgroup port failed (%d)", buf, 0x18u);
          }

LABEL_33:
          *buf = *(v9 + 8);
          v24 = xpc_uint64_create(*buf);
          v25 = v24;
          if (!v24)
          {
            v25 = xpc_null_create();
          }

          v26 = xarray;
          xpc_array_append_value(xarray, v25);

          v27 = xpc_mach_send_create();
          v28 = v27;
          if (!v27)
          {
            v28 = xpc_null_create();
          }

          xpc_array_append_value(v26, v28);
          mach_port_deallocate(*v10, mach_port_out[0]);
          v29 = *(a1 + 56);
          v30 = *(a1 + 64);
          if (v29 >= v30)
          {
            v32 = *(a1 + 48);
            v33 = v29 - v32 + 1;
            if (v33 >> 61)
            {
              std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
            }

            v34 = v30 - v32;
            if (v34 >> 2 > v33)
            {
              v33 = v34 >> 2;
            }

            if (v34 >= 0x7FFFFFFFFFFFFFF8)
            {
              v35 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v35 = v33;
            }

            if (v35)
            {
              std::allocator<SyncSampleEntry>::allocate_at_least[abi:ne200100](v35);
            }

            v36 = v7 - v32;
            v37 = v7 - v32;
            v38 = (8 * v37);
            if (!v37)
            {
              if (v36 < 1)
              {
                v45 = v36 >> 2;
                if (v7 == v32)
                {
                  v46 = 1;
                }

                else
                {
                  v46 = v45;
                }

                std::allocator<SyncSampleEntry>::allocate_at_least[abi:ne200100](v46);
              }

              v38 = (v38 - (((v36 >> 1) + 4) & 0xFFFFFFFFFFFFFFF8));
            }

            *v38 = *buf;
            memcpy(v38 + 1, v7, *(a1 + 56) - v7);
            v39 = *(a1 + 48);
            v59 = v38 + *(a1 + 56) - v7 + 8;
            *(a1 + 56) = v7;
            v40 = v7 - v39;
            v41 = v38 - (v7 - v39);
            memcpy(v41, v39, v40);
            v42 = *(a1 + 48);
            *(a1 + 48) = v41;
            *(a1 + 56) = v59;
            if (v42)
            {
              operator delete(v42);
            }

            v7 = v38;
          }

          else if (v7 == v29)
          {
            *v29 = *buf;
            *(a1 + 56) = v29 + 1;
          }

          else
          {
            if (v29 < 8)
            {
              v31 = *(a1 + 56);
            }

            else
            {
              *v29 = *(v29 - 1);
              v31 = v29 + 1;
            }

            *(a1 + 56) = v31;
            if (v29 != v7 + 1)
            {
              memmove(v7 + 1, v7, v29 - (v7 + 1));
              v31 = *(a1 + 56);
            }

            v43 = v31 <= buf || v7 > buf;
            v44 = 8;
            if (v43)
            {
              v44 = 0;
            }

            *v7 = *&buf[v44];
          }

          ++v7;
        }

        goto LABEL_68;
      }

      if (v13 >= v14)
      {
        ++v7;
LABEL_68:
        v9 += 24;
        goto LABEL_12;
      }
    }

    v15 = xpc_uint64_create(v13);
    v16 = v15;
    if (!v15)
    {
      v16 = xpc_null_create();
    }

    xpc_array_append_value(v11, v16);
    v17 = *(a1 + 56);
    v18 = v17 - (v7 + 1);
    if (v17 != v7 + 1)
    {
      memmove(v7, v7 + 1, v17 - (v7 + 1));
    }

    v12 = (v7 + v18);
    *(a1 + 56) = v7 + v18;
  }

  if (v9 != v8)
  {
    goto LABEL_23;
  }

  os_unfair_lock_unlock((a1 + 40));
  v47 = xarray;
  Class = object_getClass(xarray);
  v49 = MEMORY[0x1E69E9E50];
  if (Class == MEMORY[0x1E69E9E50] && xpc_array_get_count(v47) || object_getClass(v11) == v49 && xpc_array_get_count(v11))
  {
    if (kAUExtensionScope)
    {
      v50 = *kAUExtensionScope;
      if (!v50)
      {
LABEL_91:
        applesauce::xpc::dict::create(mach_port_out);
        applesauce::xpc::object::object(&v62, v47);
        *buf = mach_port_out;
        *&buf[8] = "add";
        applesauce::xpc::dict::object_proxy::operator=(&v63, buf, &v62);

        v55 = v62;
        v62 = 0;

        applesauce::xpc::object::object(&v60, v11);
        *buf = mach_port_out;
        *&buf[8] = "remove";
        applesauce::xpc::dict::object_proxy::operator=(&v61, buf, &v60);

        v56 = v60;
        v60 = 0;

        v57 = *(a1 + 32);
        if (!v57)
        {
          std::__throw_bad_function_call[abi:ne200100]();
        }

        (*(*v57 + 48))(v57, mach_port_out);
        v58 = *mach_port_out;
        *mach_port_out = 0;

        goto LABEL_93;
      }
    }

    else
    {
      v50 = MEMORY[0x1E69E9C10];
      v51 = MEMORY[0x1E69E9C10];
    }

    v52 = v50;
    if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
    {
      if (object_getClass(v47) == v49)
      {
        count = xpc_array_get_count(v47);
      }

      else
      {
        count = 0;
      }

      if (object_getClass(v11) == v49)
      {
        v54 = xpc_array_get_count(v11);
      }

      else
      {
        v54 = 0;
      }

      *buf = 136315906;
      *&buf[4] = "AUOOPWorkgroups.mm";
      *&buf[12] = 1024;
      *&buf[14] = 343;
      v68 = 2048;
      v69 = count;
      v70 = 2048;
      v71 = v54;
      _os_log_impl(&dword_18F5DF000, v52, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AUOOPWorkgroupManager: notifying workgroup listeners. Added :%zu, removed: %zu", buf, 0x26u);
    }

    goto LABEL_91;
  }

LABEL_93:
}

void applesauce::xpc::array::create(applesauce::xpc::array *this)
{
  v2 = xpc_array_create(0, 0);
  v5 = v2;
  if (!v2)
  {
    v2 = xpc_null_create();
  }

  v3 = v2;
  v4 = v3;
  *this = v3;
  if (!v3 || object_getClass(v3) != MEMORY[0x1E69E9E50])
  {
    *this = xpc_null_create();
  }
}

uint64_t *std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>(uint64_t *result, int *a2, int *a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_18F646CB4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pooledRenderer::AudioConverterOOP::Impl::setUpRendererConfig(uint64_t result, __int128 *a2, __int128 *a3, void *a4, void *a5)
{
  v7 = 0;
  v21[1] = *MEMORY[0x1E69E9840];
  v8 = result + 24;
  v9 = *a2;
  v10 = a2[1];
  *(result + 56) = *(a2 + 4);
  *(result + 40) = v10;
  *(result + 24) = v9;
  v11 = *a3;
  v12 = a3[1];
  *(result + 112) = *(a3 + 4);
  *(result + 80) = v11;
  *(result + 96) = v12;
  v21[0] = 0x100000000;
  do
  {
    v13 = *(v21 + v7);
    v14 = (v8 + 56 * v13);
    ioPropertyDataSize = 4;
    outPropertyData = 0;
    v15 = v14[2];
    if (v15 == 1818440480 || v15 == 1935827744)
    {
      v17 = 1;
    }

    else
    {
      result = AudioFormatGetProperty(0x66766272u, 0x28u, (v8 + 56 * v13), &ioPropertyDataSize, &outPropertyData);
      if (result)
      {
        v17 = v14[4] == 0;
      }

      else
      {
        v17 = outPropertyData;
      }
    }

    v14[10] = v17;
    v18 = (*a4 + 4 * v13);
    if (!*v18)
    {
      v18 = v14 + 4;
    }

    v14[12] = *v18;
    v14[11] = *(*a5 + 4 * v13);
    v7 += 4;
  }

  while (v7 != 8);
  return result;
}

uint64_t AudioFormatProperty_FormatIsVBR(RegistryAccess *a1, unsigned int *a2)
{
  RegistryAccess::instance(a1);
  v4 = qword_1ED746318;
  os_unfair_recursive_lock_lock_with_options();
  v5 = (*(*v4 + 16))(v4, a1, 1819304813, 0, 0);
  if (v5 || (v5 = (*(*v4 + 16))(v4, 1819304813, a1, 0, 0)) != 0)
  {
    v6 = (*(*v5 + 24))(v5, a2);
  }

  else
  {
    v6 = 1718449215;
  }

  os_unfair_recursive_lock_unlock();
  return v6;
}

uint64_t acv2::CodecConverterFactory::IsVBR(acv2::CodecConverterFactory *this, unsigned int *a2)
{
  os_unfair_lock_lock(&acv2::sCodecConverterFactoryLocker);
  if (*(this + 52) == 1)
  {
    Property = 0;
    *a2 = *(this + 12);
  }

  else
  {
    outInstance = 0;
    Property = AudioComponentInstanceNew(*(this + 4), &outInstance);
    if (!Property)
    {
      v7 = 0;
      ioPropertyDataSize = 4;
      Property = AudioCodecGetProperty(outInstance, 0x76706B3Fu, &ioPropertyDataSize, &v7);
      if (!Property)
      {
        v5 = v7;
        *a2 = v7;
        *(this + 12) = v5;
        *(this + 52) = 1;
      }

      AudioComponentInstanceDispose(outInstance);
    }
  }

  os_unfair_lock_unlock(&acv2::sCodecConverterFactoryLocker);
  return Property;
}

uint64_t ACRendererSharedMemory::requiredSharedMemorySize(uint64_t a1)
{
  v1 = *(a1 + 84);
  if ((*(a1 + 68) & 0x20) == 0)
  {
    v1 = 1;
  }

  if (*(a1 + 64) == 1885564203)
  {
    v2 = (2 * *(a1 + 100)) + *(a1 + 48) + (*(a1 + 72) * *(a1 + 20) * v1) + 140;
  }

  else
  {
    v3 = *(a1 + 28);
    if ((*(a1 + 12) & 0x20) == 0)
    {
      v3 = 1;
    }

    v2 = (v3 * *(a1 + 48)) + (v1 * *(a1 + 104)) + 16;
  }

  if (v2 <= 0x1FE70)
  {
    return 131056;
  }

  else
  {
    return (1 << vcvtpd_u64_f64(log2((v2 + 416)))) - 16;
  }
}

uint64_t audioipc::ipc_node_base<(audioipc::ipcnode_options)0,audioipc::eventlink_primitive,unilaterally_billed_shared_memory>::ipc_node_base(uint64_t a1, uint64_t a2)
{
  v16[2] = *MEMORY[0x1E69E9840];
  *a1 = 0;
  v3 = caulk::numeric::exceptional_add<unsigned long>(a2 + 16, 16382) & 0xFFFFFFFFFFFFC001;
  v15[0] = *MEMORY[0x1E696CE30];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v3];
  v15[1] = *MEMORY[0x1E696D0D8];
  v16[0] = v4;
  v16[1] = MEMORY[0x1E695E118];
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:2];
  v6 = IOSurfaceCreate(v5);
  v7 = *a1;
  *a1 = v6;
  if (v7)
  {
    CFRelease(v7);
  }

  if (!*a1)
  {
    if (gAudioConverterDeferredLogOnce != -1)
    {
      dispatch_once(&gAudioConverterDeferredLogOnce, &__block_literal_global);
    }

    v9 = *gAudioConverterLog;
    if (os_log_type_enabled(*gAudioConverterLog, OS_LOG_TYPE_ERROR))
    {
      v11 = 136315394;
      v12 = "unilaterally_billed_shared_memory.mm";
      v13 = 1024;
      v14 = 24;
      _os_log_impl(&dword_18F5DF000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d unilaterally_billed_shared_memory - error on IOSurfaceCreate", &v11, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "bad IOSurface");
  }

  IOSurfaceSetValue(*a1, *MEMORY[0x1E696CF98], @"AudioConverter Shared memory");
  if (IOSurfaceGetAllocSize(*a1) < v3 || !unilaterally_billed_shared_memory::get_raw_ptr(a1, 0))
  {
    std::terminate();
  }

  *(a1 + 8) = unilaterally_billed_shared_memory::get_raw_ptr(a1, 0);
  *(a1 + 16) = unilaterally_billed_shared_memory::get_raw_ptr(a1, 0) + 8;
  *(a1 + 24) = unilaterally_billed_shared_memory::get_raw_ptr(a1, 0x10uLL);
  *(a1 + 32) = 1;
  *(a1 + 40) = os_eventlink_create();
  *(a1 + 48) = 0;
  return a1;
}

void sub_18F647364(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  applesauce::CF::ObjectRef<__IOSurface *>::~ObjectRef(v1);
  _Unwind_Resume(a1);
}

uint64_t std::optional<ACRendererSharedMemory>::emplace[abi:ne200100]<std::span<unsigned char,18446744073709551615ul>,void>(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 296) == 1)
  {
    v7 = (a1 + 216);
    std::vector<ACRendererSharedMemory::Element>::__destroy_vector::operator()[abi:ne200100](&v7);
  }

  v4 = *a2;
  v5 = a2[1];
  *a1 = *a2;
  *(a1 + 8) = v5;
  *(a1 + 140) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 16) = v4 + 48;
  *(v4 + 192) = 224;
  *(a1 + 200) = v4 + 48;
  *(a1 + 208) = v4;
  *(a1 + 296) = 1;
  return a1;
}

uint64_t audioipc::rt_sender<(audioipc::ipcnode_options)0,audioipc::eventlink_primitive,unilaterally_billed_shared_memory>::ipc_resources(audioipc::eventlink_primitive *a1, IOSurfaceRef *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  audioipc::eventlink_primitive::ipc_resources(a1, (a2 + 5));
  token = 0;
  v4 = MEMORY[0x1E69E9A60];
  v5 = task_create_identity_token(*MEMORY[0x1E69E9A60], &token);
  if (v5)
  {
    if (gAudioConverterDeferredLogOnce != -1)
    {
      dispatch_once(&gAudioConverterDeferredLogOnce, &__block_literal_global);
    }

    v6 = *gAudioConverterLog;
    v7 = *gAudioConverterLog;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "unilaterally_billed_shared_memory.mm";
      *&buf[12] = 1024;
      *&buf[14] = 94;
      v18 = 1024;
      v19 = v5;
      _os_log_impl(&dword_18F5DF000, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d unilaterally_billed_shared_memory - error on task_create_identity_token: %u", buf, 0x18u);
    }

    v14 = 0;
  }

  else
  {
    v8 = xpc_dictionary_create(0, 0, 0);
    XPCObject = IOSurfaceCreateXPCObject(*a2);
    xpc_dictionary_set_value(v8, "surface", XPCObject);

    v10 = xpc_mach_send_create();
    xpc_dictionary_set_value(v8, "token", v10);

    mach_port_deallocate(*v4, token);
    caulk::mach::details::release_os_object(0, v11);
    v14 = v8;
    if (v8)
    {
      xpc_retain(v8);
      goto LABEL_10;
    }
  }

  v8 = 0;
  v14 = xpc_null_create();
LABEL_10:
  *buf = a1;
  *&buf[8] = "sharedMemory";
  applesauce::xpc::dict::object_proxy::operator=(&object, buf, &v14);
  xpc_release(object);
  object = 0;
  xpc_release(v14);
  return caulk::mach::details::release_os_object(v8, v12);
}

void sub_18F647680(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void audioipc::eventlink_primitive::ipc_resources(audioipc::eventlink_primitive *this, uint64_t a2)
{
  applesauce::xpc::dict::create(this);
  if (!*(a2 + 8))
  {
    remote_port = os_eventlink_extract_remote_port();
    if (remote_port)
    {
      audioipc::log_and_throw("os_eventlink_extract_remote_port failed", remote_port);
    }
  }

  v7 = xpc_mach_send_create();
  v5 = v7;
  if (!v7)
  {
    v7 = xpc_null_create();
  }

  v6[0] = this;
  v6[1] = "eventlink";
  applesauce::xpc::dict::object_proxy::operator=(&v8, v6, &v7);
}

void applesauce::xpc::dict::create(applesauce::xpc::dict *this)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  v5 = v2;
  if (!v2)
  {
    v2 = xpc_null_create();
  }

  v3 = v2;
  v4 = v3;
  *this = v3;
  if (!v3 || object_getClass(v3) != MEMORY[0x1E69E9E80])
  {
    *this = xpc_null_create();
  }
}

uint64_t applesauce::xpc::dict::object_proxy::operator=(void *a1, uint64_t a2, id *a3)
{
  v6 = **a2;
  applesauce::dispatch::v1::queue::operator*(v6);
  objc_claimAutoreleasedReturnValue();
  v7 = *(a2 + 8);
  v8 = *a3;
  xpc_dictionary_set_value(v6, v7, v8);

  *a1 = *a3;
  *a3 = xpc_null_create();

  return MEMORY[0x1EEE66BB8]();
}

{
  v6 = **a2;
  applesauce::dispatch::v1::queue::operator*(v6);
  objc_claimAutoreleasedReturnValue();
  v7 = *(a2 + 8);
  v8 = *a3;
  applesauce::dispatch::v1::queue::operator*(*a3);
  objc_claimAutoreleasedReturnValue();
  xpc_dictionary_set_value(v6, v7, v8);

  *a1 = *a3;
  *a3 = xpc_null_create();

  return MEMORY[0x1EEE66BB8]();
}

uint64_t checkForDecoderExemption(PlatformUtilities *a1)
{
  v1 = a1;
  v52 = *MEMORY[0x1E69E9840];
  cf2 = a1;
  if (!PlatformUtilities::IsInternalBuild(a1) || (v2 = CFPreferencesCopyAppValue(@"exemptFromForcedOOPDecoder", @"com.apple.coreaudio")) == 0)
  {
    v16 = 0;
    return v16 & 1;
  }

  v3 = v2;
  v4 = CFGetTypeID(v2);
  if (v4 != CFArrayGetTypeID())
  {
    v16 = 0;
    goto LABEL_65;
  }

  v5.i32[0] = bswap32(v1);
  v6 = vzip1_s8(v5, v5);
  v7.i64[0] = 0x1F0000001FLL;
  v7.i64[1] = 0x1F0000001FLL;
  v8.i64[0] = 0x5F0000005FLL;
  v8.i64[1] = 0x5F0000005FLL;
  v9 = vbsl_s8(vmovn_s32(vcgtq_u32(v8, vsraq_n_s32(v7, vshlq_n_s32(vmovl_u16(v6), 0x18uLL), 0x18uLL))), v6, 0x2E002E002E002ELL);
  v42 = 4;
  LODWORD(v41[0]) = vuzp1_s8(v9, v9).u32[0];
  BYTE4(v41[0]) = 0;
  v10 = getprogname();
  std::string::basic_string[abi:ne200100]<0>(__p, v10);
  v11 = *MEMORY[0x1E695E480];
  if (v42 >= 0)
  {
    v12 = v41;
  }

  else
  {
    v12 = v41[0];
  }

  v38 = CFStringCreateWithCString(*MEMORY[0x1E695E480], v12, 0x8000100u);
  if (v40 >= 0)
  {
    v13 = __p;
  }

  else
  {
    v13 = __p[0];
  }

  v36[0] = &v38;
  v36[1] = &v37;
  v37 = CFStringCreateWithCString(v11, v13, 0x8000100u);
  Count = CFArrayGetCount(v3);
  if (Count < 1)
  {
    v16 = 0;
    goto LABEL_61;
  }

  v15 = 0;
  v16 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v3, v15);
    v18 = CFGetTypeID(ValueAtIndex);
    if (v18 == CFNumberGetTypeID() && CFEqual(ValueAtIndex, &cf2))
    {
      if (gAudioConverterDeferredLogOnce != -1)
      {
        dispatch_once(&gAudioConverterDeferredLogOnce, &__block_literal_global);
      }

      v29 = *gAudioConverterLog;
      if (os_log_type_enabled(*gAudioConverterLog, OS_LOG_TYPE_DEFAULT))
      {
        v30 = v41;
        if (v42 < 0)
        {
          v30 = v41[0];
        }

        *buf = 136315650;
        v45 = "AudioConverter.cpp";
        v46 = 1024;
        v47 = 730;
        v48 = 2080;
        v49 = v30;
        v31 = "%25s:%-5d Decoding from the format %s is exempted from being forced out of process.";
        goto LABEL_59;
      }

      goto LABEL_60;
    }

    v19 = CFGetTypeID(ValueAtIndex);
    if (v19 != CFStringGetTypeID())
    {
      goto LABEL_36;
    }

    if (CFEqual(ValueAtIndex, v38))
    {
      break;
    }

    if (CFEqual(ValueAtIndex, v37))
    {
      if (gAudioConverterDeferredLogOnce != -1)
      {
        dispatch_once(&gAudioConverterDeferredLogOnce, &__block_literal_global);
      }

      v29 = *gAudioConverterLog;
      if (os_log_type_enabled(*gAudioConverterLog, OS_LOG_TYPE_DEFAULT))
      {
        v33 = __p;
        if (v40 < 0)
        {
          v33 = __p[0];
        }

        *buf = 136315650;
        v45 = "AudioConverter.cpp";
        v46 = 1024;
        v47 = 747;
        v48 = 2080;
        v49 = v33;
        v31 = "%25s:%-5d Decoders for the process %s is exempted from being forced out of process. mode";
LABEL_59:
        _os_log_impl(&dword_18F5DF000, v29, OS_LOG_TYPE_DEFAULT, v31, buf, 0x1Cu);
        goto LABEL_60;
      }

      goto LABEL_60;
    }

    theArray = CFStringCreateArrayBySeparatingStrings(v11, ValueAtIndex, @"+");
    v20 = CFArrayGetCount(theArray);
    if (v20 > 1)
    {
      v21 = CFArrayGetValueAtIndex(theArray, 0);
      if (CFEqual(v21, v37))
      {
        v22 = 1;
        while (1)
        {
          v23 = CFArrayGetValueAtIndex(theArray, v22);
          v24 = CFGetTypeID(v23);
          if (v24 == CFStringGetTypeID())
          {
            if (CFEqual(v23, v38))
            {
              break;
            }
          }

          v25 = CFGetTypeID(v23);
          if (v25 == CFNumberGetTypeID())
          {
            if (CFEqual(v23, &cf2))
            {
              break;
            }
          }

          if (v20 == ++v22)
          {
            goto LABEL_35;
          }
        }

        if (gAudioConverterDeferredLogOnce != -1)
        {
          dispatch_once(&gAudioConverterDeferredLogOnce, &__block_literal_global);
        }

        v26 = *gAudioConverterLog;
        if (os_log_type_enabled(*gAudioConverterLog, OS_LOG_TYPE_DEFAULT))
        {
          v27 = v41;
          if (v42 < 0)
          {
            v27 = v41[0];
          }

          v28 = __p;
          if (v40 < 0)
          {
            v28 = __p[0];
          }

          *buf = 136315906;
          v45 = "AudioConverter.cpp";
          v46 = 1024;
          v47 = 767;
          v48 = 2080;
          v49 = v27;
          v50 = 2080;
          v51 = v28;
          _os_log_impl(&dword_18F5DF000, v26, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Decoding from the format %s for the process %s is exempted from being forced out of process. ", buf, 0x26u);
        }

        v16 = 1;
      }
    }

LABEL_35:
    CFRelease(theArray);
LABEL_36:
    if (++v15 == Count)
    {
      goto LABEL_61;
    }
  }

  if (gAudioConverterDeferredLogOnce != -1)
  {
    dispatch_once(&gAudioConverterDeferredLogOnce, &__block_literal_global);
  }

  v29 = *gAudioConverterLog;
  if (os_log_type_enabled(*gAudioConverterLog, OS_LOG_TYPE_DEFAULT))
  {
    v32 = v41;
    if (v42 < 0)
    {
      v32 = v41[0];
    }

    *buf = 136315650;
    v45 = "AudioConverter.cpp";
    v46 = 1024;
    v47 = 739;
    v48 = 2080;
    v49 = v32;
    v31 = "%25s:%-5d Decoding from the format %s is exempted from being forced out of process. ";
    goto LABEL_59;
  }

LABEL_60:
  v16 = 1;
LABEL_61:
  applesauce::raii::v1::detail::ScopeGuard<checkForDecoderExemption::{lambda(void)#1},applesauce::raii::v1::detail::StackExitPolicy>::~ScopeGuard(v36);
  if (v40 < 0)
  {
    operator delete(__p[0]);
  }

  if (v42 < 0)
  {
    operator delete(v41[0]);
  }

LABEL_65:
  CFRelease(v3);
  return v16 & 1;
}

void sub_18F647F18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  applesauce::raii::v1::detail::ScopeGuard<checkForDecoderExemption::{lambda(void)#1},applesauce::raii::v1::detail::StackExitPolicy>::~ScopeGuard(&a14);
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  _Unwind_Resume(a1);
}

uint64_t unilaterally_billed_shared_memory::get_raw_ptr(IOSurfaceRef *this, size_t a2)
{
  if (IOSurfaceGetAllocSize(*this) > a2)
  {
    return IOSurfaceGetBaseAddress(*this) + a2;
  }

  _os_assert_log();
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t std::vector<ACRendererSharedMemory::Element>::__emplace_back_slow_path<CA::StreamDescription *,unsigned int,unsigned int &,unsigned char *&,unsigned char *&>(uint64_t *a1, _OWORD **a2, int *a3, int *a4, uint64_t *a5, uint64_t *a6)
{
  v6 = 0x2E8BA2E8BA2E8BA3 * ((a1[1] - *a1) >> 3);
  v7 = v6 + 1;
  if ((v6 + 1) > 0x2E8BA2E8BA2E8BALL)
  {
    std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
  }

  if (0x5D1745D1745D1746 * ((a1[2] - *a1) >> 3) > v7)
  {
    v7 = 0x5D1745D1745D1746 * ((a1[2] - *a1) >> 3);
  }

  if ((0x2E8BA2E8BA2E8BA3 * ((a1[2] - *a1) >> 3)) >= 0x1745D1745D1745DLL)
  {
    v9 = 0x2E8BA2E8BA2E8BALL;
  }

  else
  {
    v9 = v7;
  }

  v34 = a1;
  if (v9)
  {
    if (v9 <= 0x2E8BA2E8BA2E8BALL)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v10 = 88 * v6;
  v31 = 0;
  v32 = v10;
  v33 = v10;
  v11 = *a3;
  v12 = *a4;
  v13 = *a5;
  v14 = *a6;
  v15 = *(*a2 + 4);
  v16 = (*a2)[1];
  *v10 = **a2;
  *(v10 + 16) = v16;
  *(v10 + 32) = v15;
  *(v10 + 40) = 0;
  *(v10 + 44) = v11;
  *(v10 + 48) = v12;
  CA::AudioBuffersBase::AudioBuffersBase((v10 + 56), v10, 0);
  *(v10 + 64) = v13;
  *(v10 + 72) = v14;
  *(v10 + 80) = -1;
  *&v33 = v33 + 88;
  v18 = *a1;
  v17 = a1[1];
  v19 = v32 + *a1 - v17;
  if (*a1 != v17)
  {
    v20 = *a1;
    v21 = v32 + *a1 - v17;
    do
    {
      v22 = *v20;
      v23 = *(v20 + 16);
      v24 = *(v20 + 32);
      *(v21 + 48) = *(v20 + 48);
      *(v21 + 16) = v23;
      *(v21 + 32) = v24;
      *v21 = v22;
      v25 = *(v20 + 56);
      *(v20 + 56) = 0;
      *(v21 + 56) = v25;
      v26 = *(v20 + 64);
      *(v21 + 80) = *(v20 + 80);
      *(v21 + 64) = v26;
      v20 += 88;
      v21 += 88;
    }

    while (v20 != v17);
    while (v18 != v17)
    {
      ExtendedAudioBufferList_Destroy(*(v18 + 56));
      v18 += 88;
    }
  }

  v27 = *a1;
  *a1 = v19;
  v28 = a1[2];
  v30 = v33;
  *(a1 + 1) = v33;
  *&v33 = v27;
  *(&v33 + 1) = v28;
  v31 = v27;
  v32 = v27;
  std::__split_buffer<ACRendererSharedMemory::Element>::~__split_buffer(&v31);
  return v30;
}

void sub_18F6481F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<ACRendererSharedMemory::Element>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__split_buffer<ACRendererSharedMemory::Element>::~__split_buffer(uint64_t a1)
{
  v2 = *(a1 + 8);
  while (1)
  {
    v3 = *(a1 + 16);
    if (v3 == v2)
    {
      break;
    }

    *(a1 + 16) = v3 - 88;
    ExtendedAudioBufferList_Destroy(*(v3 - 32));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void AudioConverterXPC_Server::instantiateSpecificAndFetchProperties(uint64_t a1, uint64_t a2, __int128 *a3, __int128 *a4, const AudioClassDescription *a5, uint64_t a6)
{
  v53 = *MEMORY[0x1E69E9840];
  v52.mSampleRate = 0.0;
  v46 = 0;
  v47 = 0;
  v45 = 0;
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>(&v45, &v52, &v52.mFormatID, 2uLL);
  v12 = *(a4 + 4);
  LODWORD(v52.mSampleRate) = *(a3 + 4);
  HIDWORD(v52.mSampleRate) = v12;
  v43 = 0;
  v44 = 0;
  v42 = 0;
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>(&v42, &v52, &v52.mFormatID, 2uLL);
  v13 = a3[1];
  *&v52.mSampleRate = *a3;
  *&v52.mBytesPerPacket = v13;
  *&v52.mBitsPerChannel = *(a3 + 4);
  v14 = a4[1];
  *&v41.mSampleRate = *a4;
  *&v41.mBytesPerPacket = v14;
  *&v41.mBitsPerChannel = *(a4 + 4);
  v15 = AudioConverterXPC_Server::instantiateSpecific(a2, &v52, &v41, a5, a6);
  v16 = v15;
  if ((v17 & 1) != 0 || !v15)
  {
    v29 = a1;
    v21 = 0;
    v51 = 0x100000000;
    v30 = v42;
    v31 = v45;
    do
    {
      v22 = *(&v51 + v21);
      if (v22)
      {
        v23 = a4;
      }

      else
      {
        v23 = a3;
      }

      v36 = 4;
      if (*(v23 + 2) == 1885564203)
      {
        v50 = 1835296371;
        v49 = &v36;
        v48 = &v31[4 * v22];
        *&v41.mSampleRate = &v50;
        *&v41.mFormatID = &v49;
        *&v41.mBytesPerPacket = &v48;
        *&v52.mSampleRate = caulk::function_ref<int ()(AudioConverterAPI *)>::functor_invoker<AudioConverterGetProperty::$_0>;
        *&v52.mFormatID = &v41;
        with_resolved(v16, &v52);
      }

      if (!*(v23 + 4))
      {
        if (v22)
        {
          v24 = 2020569203;
        }

        else
        {
          v24 = 2020175987;
        }

        v50 = v24;
        v49 = &v36;
        v48 = &v30[4 * v22];
        *&v41.mSampleRate = &v50;
        *&v41.mFormatID = &v49;
        *&v41.mBytesPerPacket = &v48;
        *&v52.mSampleRate = caulk::function_ref<int ()(AudioConverterAPI *)>::functor_invoker<AudioConverterGetProperty::$_0>;
        *&v52.mFormatID = &v41;
        with_resolved(v16, &v52);
      }

      v21 += 4;
    }

    while (v21 != 8);
    v35 = 0;
    v34 = 0uLL;
    v18 = v30;
    std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&v34, v30, v43, (v43 - v30) >> 2);
    v19 = v31;
    v32 = 0uLL;
    v33 = 0;
    std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&v32, v31, v46, (v46 - v31) >> 2);
    v25 = v35;
    v26 = v34;
    v27 = v33;
    v28 = v32;
    *v29 = v16;
    *(v29 + 8) = v26;
    *(v29 + 24) = v25;
    *(v29 + 32) = v28;
    *(v29 + 48) = v27;
    *(v29 + 56) = 1;
  }

  else
  {
    v39[0] = 0;
    v39[1] = 0;
    v40 = 0;
    v18 = v42;
    std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(v39, v42, v43, (v43 - v42) >> 2);
    __p[0] = 0;
    __p[1] = 0;
    v38 = 0;
    v19 = v45;
    std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(__p, v45, v46, (v46 - v45) >> 2);
    *a1 = v16;
    v20 = __p[0];
    *(a1 + 56) = 0;
    if (v20)
    {
      operator delete(v20);
    }

    if (v39[0])
    {
      operator delete(v39[0]);
    }
  }

  if (v18)
  {
    operator delete(v18);
  }

  if (v19)
  {
    operator delete(v19);
  }
}

void sub_18F6485C4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

unint64_t AudioConverterXPC_Server::instantiateSpecific(uint64_t a1, const AudioStreamBasicDescription *a2, const AudioStreamBasicDescription *a3, const AudioClassDescription *a4, uint64_t a5)
{
  v31 = *MEMORY[0x1E69E9840];
  v9 = *(**(a1 + 16) + 32);
  v10 = *(v9 + 132);
  if ((v10 & 0x100000000) != 0 && (v11 = atomic_load((v9 + 128)), v11 >= v10))
  {
    if (gAudioConverterDeferredLogOnce != -1)
    {
      dispatch_once(&gAudioConverterDeferredLogOnce, &__block_literal_global);
    }

    v22 = 4294967188;
    v24 = *gAudioConverterLog;
    if (os_log_type_enabled(*gAudioConverterLog, OS_LOG_TYPE_ERROR))
    {
      v25 = atomic_load((v9 + 128));
      *buf = 136316162;
      *&buf[4] = "RemoteAudioConverter.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 71;
      *&buf[18] = 2048;
      *&buf[20] = a1;
      *&buf[28] = 1024;
      *&buf[30] = v10;
      *&buf[34] = 1024;
      v30 = v25;
      _os_log_impl(&dword_18F5DF000, v24, OS_LOG_TYPE_ERROR, "%25s:%-5d AudioConverterService -> %p: The service only supports up to %u converters. Number of out-of-process converters: %u. Returning kAudio_MemFullError.", buf, 0x28u);
    }
  }

  else
  {
    v12 = (v9 + 128);
    atomic_fetch_add(v12, 1u);
    atomic_load(v12);
    v13 = _os_log_pack_size();
    message = caulk::deferred_logger::create_message(gAudioConverterDeferredLog, v13 + 88, 0);
    if (message)
    {
      v15 = message;
      v16 = _os_log_pack_fill(message + 40, v13, 0, &dword_18F5DF000, "AudioConverterService -> New converter, number of converters: %u", v27);
      v17 = atomic_load(v12);
      *v16 = 67109120;
      v16[1] = v17;
      caulk::concurrent::messenger::enqueue(*(gAudioConverterDeferredLog + 16), v15);
    }

    if (a2->mFormatID == 1735091043)
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 0x40000000;
      *&buf[16] = ___ZL23registerPrivateDecodersj_block_invoke;
      *&buf[24] = &__block_descriptor_tmp_7721;
      *&buf[32] = 1735091043;
      if (registerPrivateDecoders::gkRegistrationOnceToken != -1)
      {
        dispatch_once(&registerPrivateDecoders::gkRegistrationOnceToken, buf);
      }
    }

    v27 = 0;
    v18 = AudioConverterNewInternal(a2, a3, a5, a4, &v27, newAudioConverter, 0, 0);
    v19 = v27;
    *buf = caulk::function_ref<int ()(AudioConverterAPI *)>::functor_invoker<SetConverterAsAuxiliary(OpaqueAudioConverter *)::$_0>;
    *&buf[8] = &v28;
    with_resolved(v27, buf);
    v20 = v19 & 0xFFFFFFFF00000000;
    if (v18)
    {
      v21 = v18;
    }

    else
    {
      v21 = v19;
    }

    if (v18)
    {
      v20 = 0;
    }

    return v20 | v21;
  }

  return v22;
}

void sub_18F6488A8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t acv2::CodecDecoderFactory::BuildCodecConverterChain(uint64_t a1, uint64_t a2, uint64_t a3, CA::StreamDescription *a4, uint64_t a5)
{
  v59 = *MEMORY[0x1E69E9840];
  if (!*(a2 + 52))
  {
    if (gAudioConverterDeferredLogOnce != -1)
    {
      dispatch_once(&gAudioConverterDeferredLogOnce, &__block_literal_global);
    }

    v16 = 1718449215;
    v17 = *gAudioConverterLog;
    if (os_log_type_enabled(*gAudioConverterLog, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "CodecConverterFactory.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 160;
      _os_log_impl(&dword_18F5DF000, v17, OS_LOG_TYPE_ERROR, "%25s:%-5d wildcard for output LPCM format flags is not allowed", buf, 0x12u);
    }

    return v16;
  }

  v8 = *(a3 + 80);
  outInstance = v8;
  v9 = *(a3 + 128);
  v10 = *(a2 + 16);
  *buf = *a2;
  *&buf[16] = v10;
  v11 = *(a2 + 48);
  *v56 = *(a2 + 32);
  *&v56[16] = v11;
  *&v56[32] = *(a2 + 64);
  v12 = *buf;
  if (*buf == 0.0)
  {
    v12 = *&v56[8];
    *buf = *&v56[8];
  }

  *&v56[8] = v12;
  v13 = v8;
  if (!v8)
  {
    v16 = AudioComponentInstanceNew(*(a1 + 32), &outInstance);
    if (v16)
    {
      return v16;
    }

    v13 = outInstance;
    if (!outInstance)
    {
      return 2003329396;
    }
  }

  v14 = buf;
  if (*(a3 + 121) == 1)
  {
    memset(&inData[40], 0, 24);
    *inData = *buf;
    *&inData[8] = xmmword_18F9017F0;
    *&inData[24] = 4;
    *&inData[28] = *&buf[28];
    *&inData[32] = 32;
    if (acv2::CodecConverterFactory::CodecCanInitializeWith(v13, buf, inData, a4))
    {
      outSize.componentType = 0;
      outWritable[0] = 0;
      if (AudioCodecGetPropertyInfo(v13, 0x696D7264u, &outSize.componentType, outWritable) || !outSize.componentType)
      {
        goto LABEL_8;
      }

      v31 = *&inData[40];
      if (outSize.componentType <= *&inData[48] - *&inData[40])
      {
        if (outSize.componentType < *&inData[48] - *&inData[40])
        {
          *&inData[48] = *&inData[40] + outSize.componentType;
        }
      }

      else
      {
        std::vector<unsigned char>::__append(&inData[40], outSize.componentType - (*&inData[48] - *&inData[40]));
        v31 = *&inData[40];
      }

      if (AudioCodecGetProperty(v13, 0x696D7264u, &outSize.componentType, v31))
      {
LABEL_8:
        v15 = 0;
        v46 = 0;
      }

      else
      {
        if (outSize.componentType <= *&inData[48] - *&inData[40])
        {
          v45 = *&inData[40];
          LODWORD(v14) = outSize.componentType >= *&inData[48] - *&inData[40] ? *&inData[48] : *&inData[40] + outSize.componentType;
        }

        else
        {
          std::vector<unsigned char>::__append(&inData[40], outSize.componentType - (*&inData[48] - *&inData[40]));
          LODWORD(v14) = *&inData[48];
          v45 = *&inData[40];
        }

        v15 = inData[0];
        v53 = *&inData[1];
        v54[0] = *&inData[17];
        *(v54 + 15) = *&inData[32];
        memset(&inData[40], 0, 24);
        v46 = 1;
      }
    }

    else
    {
      v46 = 0;
      v15 = 0;
    }

    if (*&inData[40])
    {
      *&inData[48] = *&inData[40];
      operator delete(*&inData[40]);
    }

    if (v46)
    {
      v56[8] = v15;
      *&v56[9] = v53;
      *&v56[25] = v54[0];
      *&v56[40] = *(v54 + 15);
      v18 = *(a2 + 68);
      *&v56[16] = 1819304813;
      *&v56[36] = v18;
      if (v9)
      {
        AudioUnitUninitialize(v9);
        goto LABEL_22;
      }

      outSize.componentFlagsMask = 0;
      *&outSize.componentType = *"xmuamed3lppa";
      Next = AudioComponentFindNext(0, &outSize);
      if (Next)
      {
        *outWritable = 0;
        v27 = AudioComponentInstanceNew(Next, outWritable);
        if (v27)
        {
          if (gAudioConverterDeferredLogOnce != -1)
          {
            dispatch_once(&gAudioConverterDeferredLogOnce, &__block_literal_global);
          }

          v28 = *gAudioConverterLog;
          if (!os_log_type_enabled(*gAudioConverterLog, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_68;
          }

          *inData = 136315650;
          *&inData[4] = "CodecConverterFactory.cpp";
          *&inData[12] = 1024;
          *&inData[14] = 74;
          *&inData[18] = 1024;
          *&inData[20] = v27;
          v29 = "%25s:%-5d Unable to instantiate spatial renderer (%u)";
          v30 = v28;
        }

        else
        {
          LODWORD(v49) = 1;
          v35 = AudioUnitSetProperty(*outWritable, 0x25u, 0, 0, &v49, 4u);
          v9 = *outWritable;
          if (!v35)
          {
            if (*outWritable)
            {
LABEL_22:
              AudioFormat_CompleteChannelLayoutWithCoordinates(a3 + 136, &v49);
              inData[0] = v15;
              *&inData[1] = v53;
              *&inData[17] = v54[0];
              *&inData[32] = *(v54 + 15);
              *&inData[8] = 1885564203;
              v19 = AudioUnitSetProperty(v9, 8u, 1u, 0, inData, 0x28u);
              if (v19)
              {
                if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_99;
                }

                outSize.componentType = 136315394;
                *&outSize.componentSubType = "CodecConverterFactory.cpp";
                LOWORD(outSize.componentFlags) = 1024;
                *(&outSize.componentFlags + 2) = 102;
                v39 = MEMORY[0x1E69E9C10];
                v40 = "%25s:%-5d  set kAudioUnitProperty_StreamFormat(kAudioUnitScope_Input, 0) on AUSM failed";
              }

              else
              {
                v19 = AudioUnitSetProperty(v9, 0xC9Fu, 0, 0, v45, v14 - v45);
                if (v19)
                {
                  if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_99;
                  }

                  outSize.componentType = 136315394;
                  *&outSize.componentSubType = "CodecConverterFactory.cpp";
                  LOWORD(outSize.componentFlags) = 1024;
                  *(&outSize.componentFlags + 2) = 107;
                  v39 = MEMORY[0x1E69E9C10];
                  v40 = "%25s:%-5d  set kAudioUnitProperty_SpatialMixerImmersiveRendererData on AUSM failed";
                }

                else
                {
                  v19 = AudioUnitSetProperty(v9, 8u, 2u, 0, &v56[8], 0x28u);
                  if (v19)
                  {
                    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                    {
                      goto LABEL_99;
                    }

                    outSize.componentType = 136315394;
                    *&outSize.componentSubType = "CodecConverterFactory.cpp";
                    LOWORD(outSize.componentFlags) = 1024;
                    *(&outSize.componentFlags + 2) = 111;
                    v39 = MEMORY[0x1E69E9C10];
                    v40 = "%25s:%-5d  set kAudioUnitProperty_StreamFormat(kAudioUnitScope_Output, 0) on AUSM failed";
                  }

                  else
                  {
                    v20 = v49;
                    v19 = AudioUnitSetProperty(v9, 0x13u, 2u, 0, v49, v50 - v49);
                    if (!v19)
                    {
                      v21 = *v20;
                      if (*v20 == 6946818)
                      {
                        v22 = 1;
                      }

                      else
                      {
                        v22 = 3;
                      }

                      v48 = v22;
                      v23 = AudioUnitSetProperty(v9, 0xC1Cu, 0, 0, &v48, 4u);
                      if (v23)
                      {
                        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                        {
                          goto LABEL_105;
                        }

                        outSize.componentType = 136315394;
                        *&outSize.componentSubType = "CodecConverterFactory.cpp";
                        LOWORD(outSize.componentFlags) = 1024;
                        *(&outSize.componentFlags + 2) = 124;
                        v42 = MEMORY[0x1E69E9C10];
                        v43 = "%25s:%-5d  set kAudioUnitProperty_SpatialMixerOutputType on AUSM failed";
                      }

                      else
                      {
                        if (v21 == 6946818)
                        {
                          operator new();
                        }

                        v23 = AudioUnitInitialize(v9);
                        if (!v23)
                        {
                          operator delete(v20);
                          v34 = 1;
                          goto LABEL_70;
                        }

                        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                        {
LABEL_105:
                          exception = __cxa_allocate_exception(4uLL);
                          *exception = v23;
                          __cxa_throw(exception, MEMORY[0x1E69E5478], 0);
                        }

                        outSize.componentType = 136315394;
                        *&outSize.componentSubType = "CodecConverterFactory.cpp";
                        LOWORD(outSize.componentFlags) = 1024;
                        *(&outSize.componentFlags + 2) = 135;
                        v42 = MEMORY[0x1E69E9C10];
                        v43 = "%25s:%-5d  set AudioUnitInitialize on AUSM failed";
                      }

                      _os_log_impl(&dword_18F5DF000, v42, OS_LOG_TYPE_ERROR, v43, &outSize, 0x12u);
                      goto LABEL_105;
                    }

                    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                    {
LABEL_99:
                      v41 = __cxa_allocate_exception(4uLL);
                      *v41 = v19;
                      __cxa_throw(v41, MEMORY[0x1E69E5478], 0);
                    }

                    outSize.componentType = 136315394;
                    *&outSize.componentSubType = "CodecConverterFactory.cpp";
                    LOWORD(outSize.componentFlags) = 1024;
                    *(&outSize.componentFlags + 2) = 116;
                    v39 = MEMORY[0x1E69E9C10];
                    v40 = "%25s:%-5d  set kAudioUnitProperty_AudioChannelLayout(kAudioUnitScope_Output, 0) on AUSM failed";
                  }
                }
              }

              _os_log_impl(&dword_18F5DF000, v39, OS_LOG_TYPE_ERROR, v40, &outSize, 0x12u);
              goto LABEL_99;
            }

LABEL_69:
            v34 = 0;
LABEL_70:
            v37 = v46;
            if (!v45)
            {
              v37 = 0;
            }

            if (v37 == 1)
            {
              operator delete(v45);
            }

            if (v34)
            {
LABEL_75:
              if (v8 || *&v56[36])
              {
                if (*&v56[36])
                {
                  if (!*&buf[28])
                  {
                    *&buf[28] = *&v56[36];
                  }

                  operator new();
                }
              }

              else
              {
                AudioComponentInstanceDispose(outInstance);
              }

              return 4294967246;
            }

            goto LABEL_32;
          }

          AudioComponentInstanceDispose(*outWritable);
          if (gAudioConverterDeferredLogOnce != -1)
          {
            dispatch_once(&gAudioConverterDeferredLogOnce, &__block_literal_global);
          }

          v36 = *gAudioConverterLog;
          if (!os_log_type_enabled(*gAudioConverterLog, OS_LOG_TYPE_ERROR))
          {
LABEL_68:
            v9 = 0;
            goto LABEL_69;
          }

          *inData = 136315650;
          *&inData[4] = "CodecConverterFactory.cpp";
          *&inData[12] = 1024;
          *&inData[14] = 83;
          *&inData[18] = 1024;
          *&inData[20] = v35;
          v29 = "%25s:%-5d Unable to set offline render mode of spatial renderer (%u)";
          v30 = v36;
        }

        v33 = 24;
      }

      else
      {
        if (gAudioConverterDeferredLogOnce != -1)
        {
          dispatch_once(&gAudioConverterDeferredLogOnce, &__block_literal_global);
        }

        v32 = *gAudioConverterLog;
        if (!os_log_type_enabled(*gAudioConverterLog, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_68;
        }

        *inData = 136315394;
        *&inData[4] = "CodecConverterFactory.cpp";
        *&inData[12] = 1024;
        *&inData[14] = 67;
        v29 = "%25s:%-5d Unable to enumerate spatial renderer";
        v30 = v32;
        v33 = 18;
      }

      _os_log_impl(&dword_18F5DF000, v30, OS_LOG_TYPE_ERROR, v29, inData, v33);
      goto LABEL_68;
    }
  }

LABEL_32:
  if (v9)
  {
    AudioUnitUninitialize(v9);
    AudioComponentInstanceDispose(v9);
  }

  *&inData[32] = *v56;
  *&inData[48] = *&v56[16];
  v52 = *&v56[32];
  *inData = *buf;
  *&inData[16] = *&buf[16];
  v24 = acv2::CodecConverterFactory::ChooseIntermediateFormat(a1, outInstance, inData, buf, &v56[8], 0, 0);
  v16 = v24;
  if (v24)
  {
    v25 = v8 != 0;
  }

  else
  {
    v25 = 1;
  }

  if (!v25)
  {
    AudioComponentInstanceDispose(outInstance);
    return v16;
  }

  if (!v24)
  {
    goto LABEL_75;
  }

  return v16;
}

void sub_18F6497C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, _Unwind_Exception *exception_objecta, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t buf, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  if (a35)
  {
    (*(*a35 + 8))(a35, a2, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(a1);
}

uint64_t acv2::CodecConverterFactory::ChooseIntermediateFormat(uint64_t a1, AudioCodec inCodec, __n128 *a3, uint64_t a4, uint64_t a5, int a6, signed int a7)
{
  v124 = *MEMORY[0x1E69E9840];
  outPropertyData = 0;
  v116 = 0;
  v117 = 0;
  outSize = 0;
  outWritable = 0;
  if (a6)
  {
    v13 = 1768305775;
  }

  else
  {
    v13 = 1868969065;
  }

  if (AudioCodecGetPropertyInfo(inCodec, v13, &outSize, &outWritable))
  {
LABEL_7:
    if (a6)
    {
      v17 = 1768320291;
    }

    else
    {
      v17 = 1868983587;
    }

    PropertyInfo = AudioCodecGetPropertyInfo(inCodec, v17, &outSize, &outWritable);
    if (PropertyInfo)
    {
      goto LABEL_211;
    }

    std::vector<CA::StreamDescription>::resize(&outPropertyData, outSize / 0x28uLL);
    PropertyInfo = AudioCodecGetProperty(inCodec, v17, &outSize, outPropertyData);
    if (PropertyInfo)
    {
      goto LABEL_211;
    }

    std::vector<CA::StreamDescription>::resize(&outPropertyData, outSize / 0x28uLL);
    v20 = outPropertyData;
    v19 = v116;
    goto LABEL_15;
  }

  std::vector<CA::StreamDescription>::resize(&outPropertyData, outSize / 0x28uLL);
  v14 = outPropertyData;
  v15 = *(a4 + 32);
  v16 = *(a4 + 16);
  *outPropertyData = *a4;
  v14[1] = v16;
  *(v14 + 4) = v15;
  if (AudioCodecGetProperty(inCodec, v13, &outSize, v14))
  {
    v116 = v14;
    goto LABEL_7;
  }

  std::vector<CA::StreamDescription>::resize(&outPropertyData, outSize / 0x28uLL);
  v20 = outPropertyData;
  if (outPropertyData == v116)
  {
    goto LABEL_7;
  }

  v19 = v116;
LABEL_15:
  v21 = a3[3];
  v112[2] = a3[2];
  v112[3] = v21;
  v112[4] = a3[4];
  v22 = a3[1];
  v112[0] = *a3;
  v112[1] = v22;
  v109 = *(a5 + 8);
  __p = 0;
  v119 = 0;
  v120 = 0;
  v108 = v19;
  if (v20 == v19)
  {
    goto LABEL_197;
  }

  v107 = inCodec;
  v23 = v109;
  if (v109 == 1885564203)
  {
    v24 = a6;
  }

  else
  {
    v24 = 1;
  }

  v25 = v20;
  v26 = a4;
  v27 = v19;
  v110 = v24;
  do
  {
    v28 = *(v25 + 2);
    v29 = *(a5 + 8);
    if (v28 == 1819304813)
    {
      v30 = v24;
    }

    else
    {
      v30 = 1;
    }

    if (v28 != v29 && v30 != 0)
    {
LABEL_73:
      *buf = 0;
      std::vector<double>::push_back[abi:ne200100](&__p, buf);
      goto LABEL_120;
    }

    v22.n128_u64[0] = *v25;
    v32 = *a5;
    if (*a5 == 0.0)
    {
      v32 = *v26;
    }

    if (v22.n128_f64[0] == 0.0)
    {
      *v25 = v32;
      v22.n128_f64[0] = v32;
      v33 = 0.99;
      goto LABEL_42;
    }

    if (v32 == 0.0)
    {
      goto LABEL_41;
    }

    if (v23 != 1885564203)
    {
      if (v22.n128_f64[0] < v32)
      {
        v34 = v22.n128_f64[0] * 0.5 / v32;
LABEL_40:
        v33 = v34 * 0.99;
        goto LABEL_42;
      }

      if (v22.n128_f64[0] > v32)
      {
        v34 = v32 * 0.2 / v22.n128_f64[0];
        goto LABEL_40;
      }

LABEL_41:
      v33 = 0.99;
      goto LABEL_42;
    }

    v33 = 0.99;
    if (v22.n128_f64[0] != v32)
    {
      goto LABEL_73;
    }

LABEL_42:
    v35 = *(v25 + 7);
    if (v35)
    {
      if (v35 != *(a5 + 28))
      {
        if (v23 == 1885564203)
        {
          goto LABEL_73;
        }

        v33 = v33 * 0.1;
      }
    }

    else
    {
      v35 = *(v26 + 28);
      if (!v35)
      {
        v35 = *(a5 + 28);
      }

      v36 = *(v25 + 3);
      if ((v36 & 0x20) != 0)
      {
        v37 = *(v25 + 6);
        v38 = 1;
      }

      else
      {
        v37 = (*(v25 + 8) + 7) >> 3;
        v38 = v35;
      }

      v39 = v37 * v38;
      *(v25 + 4) = v39;
      *(v25 + 5) = 1;
      *(v25 + 6) = v39;
      *(v25 + 7) = v35;
      *(v25 + 3) = v36;
    }

    v40 = *(v25 + 8);
    if (v40 >= 0)
    {
      v41 = *(v25 + 8);
    }

    else
    {
      v41 = -v40;
    }

    v42 = v41 + 7;
    v43 = *(a5 + 32);
    if (v43 >= 0)
    {
      v44 = *(a5 + 32);
    }

    else
    {
      v44 = -v43;
    }

    v45 = (v44 + 7) & 0xFFFFFFF8;
    if (a7 >= 0)
    {
      v46 = a7;
    }

    else
    {
      v46 = -a7;
    }

    a7 = (v46 + 7) & 0xFFFFFFF8;
    v47 = v42 & 0xFFFFFFF8;
    if (v47)
    {
      if (v47 != a7)
      {
        if (v47 == v45)
        {
          if (a7)
          {
            v33 = v33 * 0.9;
          }
        }

        else if (v47 >= v45)
        {
          if (v23 == 1885564203)
          {
            goto LABEL_73;
          }

          v33 = v33 * 0.99;
        }

        else
        {
          if (v23 == 1885564203)
          {
            goto LABEL_73;
          }

          if (v25[12])
          {
            v33 = v33 * (v47 / v45 * 0.7);
          }

          else
          {
            v33 = v33 * (v47 / v45 * 0.7) * 0.7;
          }
        }
      }
    }

    else if (a7)
    {
      v47 = (v46 + 7) & 0xFFFFFFF8;
    }

    else
    {
      v47 = v45;
    }

    v48 = *(v25 + 3);
    v49 = *(a5 + 12);
    if (((v49 ^ v48) & 2) == 0)
    {
      if (((v49 ^ v48) & 0x20) == 0)
      {
        goto LABEL_77;
      }

      if (v23 == 1885564203)
      {
        goto LABEL_73;
      }

LABEL_76:
      v33 = v33 * 0.11;
      goto LABEL_77;
    }

    if (v23 == 1885564203)
    {
      goto LABEL_73;
    }

    v33 = v33 * 0.11;
    if (((v49 ^ v48) & 0x20) != 0)
    {
      goto LABEL_76;
    }

LABEL_77:
    if ((v48 & 0x20) != 0)
    {
      v50 = 1;
    }

    else
    {
      v50 = v35;
    }

    v51 = v50 * v47;
    v52 = (v50 * v47) >> 3;
    *(v25 + 5) = 1;
    *(v25 + 6) = v52;
    *(v25 + 4) = v52;
    if (v28 != v29 || v22.n128_f64[0] != *a5)
    {
      goto LABEL_106;
    }

    v53 = v52 == *(a5 + 16) && *(a5 + 20) == 1;
    if (!v53 || v35 != *(a5 + 28) || v40 != v43)
    {
      goto LABEL_106;
    }

    if (v28 == 1819304813)
    {
      v54 = v48 & 0x7FFFFFFF;
      if ((v48 & 0x7FFFFFFF) == 0)
      {
        v54 = v48;
      }

      if (v51 >= 8 && v50)
      {
        v55 = 8 * (v52 / v50);
        v56 = v55 == v40;
      }

      else
      {
        v55 = 0;
        v56 = v40 == 0;
      }

      v66 = v56;
      v67 = v54 & 0xFFFFFFBF;
      if (v66)
      {
        v68 = v67 | 8;
      }

      else
      {
        v68 = v67;
      }

      v69 = v40 & 7;
      v70 = v55 == v40 && v69 == 0;
      v71 = v68 & 0xFFFFFFAF;
      if (!v70)
      {
        v71 = v68;
      }

      if (v71)
      {
        v71 &= 0xFFFFFFBB;
      }

      if ((v71 & 8) != 0 && v40 <= 8)
      {
        v71 &= 2u;
      }

      if (v35 == 1)
      {
        v71 &= ~0x20u;
      }

      if (!v71)
      {
        v71 = 0x80000000;
      }

      v73 = v49 & 0x7FFFFFFF;
      if ((v49 & 0x7FFFFFFF) == 0)
      {
        v73 = v49;
      }

      v74 = *(a5 + 24);
      if (v74)
      {
        if ((v49 & 0x20) != 0)
        {
          v75 = 1;
        }

        else
        {
          v75 = v35;
        }

        if (v75)
        {
          v75 = 8 * (v74 / v75);
          v76 = v75 == v40;
          goto LABEL_157;
        }
      }

      else
      {
        v75 = 0;
      }

      v76 = v40 == 0;
LABEL_157:
      v77 = v76;
      v78 = v73 & 0xFFFFFFBF;
      if (v77)
      {
        v78 |= 8u;
      }

      v79 = v75 == v40 && v69 == 0;
      v80 = v78 & 0xFFFFFFAF;
      if (!v79)
      {
        v80 = v78;
      }

      if (v80)
      {
        v80 &= 0xFFFFFFBB;
      }

      if ((v80 & 8) != 0 && v40 <= 8)
      {
        v80 &= 2u;
      }

      if (v35 == 1)
      {
        v82 = v80 & 0xFFFFFFDF;
      }

      else
      {
        v82 = v80;
      }

      if (!v82)
      {
        v82 = 0x80000000;
      }

      if (v71 != v82)
      {
        goto LABEL_106;
      }

LABEL_105:
      v33 = 1.0;
      goto LABEL_106;
    }

    if (v48 == v49)
    {
      goto LABEL_105;
    }

LABEL_106:
    v57 = v119;
    if (v119 >= v120)
    {
      v59 = __p;
      v60 = v119 - __p;
      v61 = (v119 - __p) >> 3;
      v62 = v61 + 1;
      if ((v61 + 1) >> 61)
      {
        std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
      }

      v63 = v120 - __p;
      if ((v120 - __p) >> 2 > v62)
      {
        v62 = v63 >> 2;
      }

      if (v63 >= 0x7FFFFFFFFFFFFFF8)
      {
        v64 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v64 = v62;
      }

      if (v64)
      {
        std::allocator<SyncSampleEntry>::allocate_at_least[abi:ne200100](v64);
      }

      v65 = (8 * v61);
      *v65 = v33;
      v58 = v65 + 1;
      memcpy(0, v59, v60);
      __p = 0;
      v120 = 0;
      if (v59)
      {
        operator delete(v59);
      }

      v26 = a4;
      v23 = v109;
      v27 = v108;
    }

    else
    {
      *v119 = v33;
      v58 = v57 + 1;
    }

    v119 = v58;
    v24 = v110;
LABEL_120:
    v25 += 40;
  }

  while (v25 != v27);
  if (v20 == v116)
  {
LABEL_197:
    if (gAudioConverterDeferredLogOnce != -1)
    {
      dispatch_once(&gAudioConverterDeferredLogOnce, &__block_literal_global);
    }

    v98 = *gAudioConverterLog;
    if (os_log_type_enabled(*gAudioConverterLog, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "CodecConverterFactory.cpp";
      v122 = 1024;
      v123 = 826;
      _os_log_impl(&dword_18F5DF000, v98, OS_LOG_TYPE_ERROR, "%25s:%-5d codec did not accept any proposed uncompressed format", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(4uLL);
    *exception = 1718449215;
    __cxa_throw(exception, MEMORY[0x1E69E5478], 0);
  }

  v83 = __p;
  v84 = v119;
  while (1)
  {
    if (v83 == v84)
    {
      v86 = v83;
    }

    else
    {
      v85 = v83 + 1;
      v86 = v83;
      if (v83 + 1 != v84)
      {
        v22.n128_f64[0] = *v83;
        v86 = v83;
        v87 = v83 + 1;
        do
        {
          v88 = *v87++;
          v89 = v88;
          if (v22.n128_f64[0] < v88)
          {
            v22.n128_f64[0] = v89;
            v86 = v85;
          }

          v85 = v87;
        }

        while (v87 != v84);
      }
    }

    v90 = v86 - v83;
    v91 = v86 - v83;
    v92 = &v20[40 * v91];
    if ((*(*a1 + 128))(a1, v107, v92, v112, v22))
    {
      break;
    }

    v83 = __p;
    v93 = __p + v90;
    v94 = (__p + v90 + 8);
    v95 = v119 - v94;
    if (v119 != v94)
    {
      memmove(v93, v94, v119 - v94);
    }

    v84 = &v93[v95];
    v119 = &v93[v95];
    v20 = outPropertyData;
    v96 = outPropertyData + 40 * v91;
    v97 = v116 - (v96 + 40);
    if (v116 != v96 + 40)
    {
      memmove(outPropertyData + 40 * v91, v96 + 40, v116 - (v96 + 40));
    }

    v116 = &v96[v97];
    if (v20 == &v96[v97])
    {
      goto LABEL_197;
    }
  }

  v100 = *v92;
  v101 = *(v92 + 1);
  *(a5 + 32) = *(v92 + 4);
  *a5 = v100;
  *(a5 + 16) = v101;
  if (v109 == 1885564203)
  {
    *(a5 + 8) = 1885564203;
  }

  if (__p)
  {
    operator delete(__p);
  }

  PropertyInfo = 0;
  v103 = *(a5 + 28);
  v102 = *(a5 + 32);
  if (v102 < 0)
  {
    v102 = -v102;
  }

  v104 = v102 + 7;
  if ((*(a5 + 12) & 0x20) != 0)
  {
    v103 = 1;
  }

  v105 = v103 * (v104 >> 3);
  *(a5 + 20) = 1;
  *(a5 + 24) = v105;
  *(a5 + 16) = v105;
LABEL_211:
  if (outPropertyData)
  {
    operator delete(outPropertyData);
  }

  return PropertyInfo;
}

void sub_18F64A43C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, void *__p)
{
  if (a2)
  {
    if (__p)
    {
      operator delete(__p);
    }

    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x18F64A3C0);
  }

  _Unwind_Resume(exception_object);
}

__n128 swix::coder<AudioStreamBasicDescription>::decode(uint64_t a1, xpc_object_t xdict, char *key)
{
  length = 0;
  data = xpc_dictionary_get_data(xdict, key, &length);
  if (length != 40 || data == 0)
  {
    *(a1 + 32) = 0;
    result.n128_u64[0] = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  else
  {
    result = *data;
    v7 = data[1];
    *a1 = *data;
    *(a1 + 16) = v7;
    *(a1 + 32) = *(data + 4);
  }

  return result;
}

const void *swix::coder<std::span<AudioClassDescription const,18446744073709551615ul>>::decode(void *a1)
{
  length = 0;
  result = xpc_dictionary_get_data(a1, "classDescriptions", &length);
  if (result)
  {
    v2 = length == 0;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    return 0;
  }

  v3 = 12 * (length / 0xC);
  if (v3 != length)
  {
    std::to_string(&v13, v3);
    v4 = std::string::insert(&v13, 0, "invalid array size (", 0x14uLL);
    v5 = *&v4->__r_.__value_.__l.__data_;
    v14.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
    *&v14.__r_.__value_.__l.__data_ = v5;
    v4->__r_.__value_.__l.__size_ = 0;
    v4->__r_.__value_.__r.__words[2] = 0;
    v4->__r_.__value_.__r.__words[0] = 0;
    v6 = std::string::append(&v14, "/", 1uLL);
    v7 = *&v6->__r_.__value_.__l.__data_;
    v15.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
    *&v15.__r_.__value_.__l.__data_ = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v12, length);
    if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v8 = &v12;
    }

    else
    {
      v8 = v12.__r_.__value_.__r.__words[0];
    }

    if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v12.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v12.__r_.__value_.__l.__size_;
    }

    v10 = std::string::append(&v15, v8, size);
    v11 = *&v10->__r_.__value_.__l.__data_;
    v16.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
    *&v16.__r_.__value_.__l.__data_ = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    swix::decode_message::throw_error(&v16);
  }

  return result;
}

void sub_18F64A68C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v33 - 25) < 0)
  {
    operator delete(*(v33 - 48));
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

xpc_object_t swix::xpcobj_coder<applesauce::xpc::object>::decode(void *a1, xpc_object_t xdict, char *key)
{
  value = xpc_dictionary_get_value(xdict, key);
  *a1 = value;
  if (value)
  {
    return xpc_retain(value);
  }

  result = xpc_null_create();
  *a1 = result;
  return result;
}

void std::vector<CA::StreamDescription>::resize(const void **a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *a1) >> 3);
  v6 = a2 - v5;
  if (a2 <= v5)
  {
    if (a2 >= v5)
    {
      return;
    }

    v11 = &v3[40 * a2];
  }

  else
  {
    v7 = a1[2];
    if (0xCCCCCCCCCCCCCCCDLL * ((v7 - v4) >> 3) < v6)
    {
      if (a2 <= 0x666666666666666)
      {
        v8 = 0xCCCCCCCCCCCCCCCDLL * ((v7 - v3) >> 3);
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

        std::allocator<AudioStreamBasicDescription>::allocate_at_least[abi:ne200100](v10);
      }

      std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
    }

    v12 = 40 * ((40 * v6 - 40) / 0x28) + 40;
    bzero(a1[1], v12);
    v11 = &v4[v12];
  }

  a1[1] = v11;
}

void std::allocator<AudioStreamBasicDescription>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (a1 < 0x666666666666667)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::allocator<SyncSampleEntry>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

BOOL acv2::CodecConverterFactory::CodecCanInitializeWith(acv2::CodecConverterFactory *this, const AudioStreamBasicDescription *a2, const AudioStreamBasicDescription *a3, CA::StreamDescription *a4)
{
  v17 = *MEMORY[0x1E69E9840];
  outPropertyData = 0;
  ioPropertyDataSize = 4;
  Property = AudioCodecGetProperty(this, 0x696E6974u, &ioPropertyDataSize, &outPropertyData);
  if (Property)
  {
    v9 = Property;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v14 = "CodecConverterFactory.cpp";
      v15 = 1024;
      v16 = 543;
      _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  get kAudioCodecPropertyIsInitialized failed", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(4uLL);
    *exception = v9;
    __cxa_throw(exception, MEMORY[0x1E69E5478], 0);
  }

  if (outPropertyData)
  {
    AudioCodecUninitialize(this);
  }

  return AudioCodecInitialize(this, a2, a3, 0, 0) == 0;
}

OSStatus AudioCodecInitialize(AudioCodec inCodec, const AudioStreamBasicDescription *inInputFormat, const AudioStreamBasicDescription *inOutputFormat, const void *inMagicCookie, UInt32 inMagicCookieByteSize)
{
  if (!inCodec)
  {
    return -50;
  }

  v5 = *&inMagicCookieByteSize;
  v9 = (*(*inCodec + 8))(inCodec);
  if (!v9)
  {
    return 560947818;
  }

  v10 = v9;
  v11 = *(*((**v9)(v9) + 112) + 24);
  if (!v11)
  {
    return -4;
  }

  v12 = v10[3];

  return v11(v12, inInputFormat, inOutputFormat, inMagicCookie, v5);
}

void std::__optional_destruct_base<ACCodecOutputBuffer,false>::reset[abi:ne200100](uint64_t a1)
{
  if (*(a1 + 208) == 1)
  {
    v2 = *(a1 + 144);
    if (v2)
    {
      *(a1 + 152) = v2;
      operator delete(v2);
    }

    v3 = *(a1 + 120);
    if (v3)
    {
      *(a1 + 128) = v3;
      operator delete(v3);
    }

    ExtendedAudioBufferList_Destroy(*(a1 + 112));
    ACAudioSpan::~ACAudioSpan((a1 + 8));
    *(a1 + 208) = 0;
  }
}

void ACCodecOutputBuffer::ACCodecOutputBuffer(ACCodecOutputBuffer *this, const AudioStreamBasicDescription *a2, unsigned int a3, uint64_t a4, int a5, int a6)
{
  *this = a3;
  *(this + 1) = a4;
  ACAudioSpan::ACAudioSpan((this + 8), a2);
  CA::AudioBuffersBase::AudioBuffersBase((this + 112), a2, a4);
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  if (a3 && a5)
  {
    std::vector<AudioStreamPacketDescription>::__vallocate[abi:ne200100](this + 15, a3);
  }

  *(this + 18) = 0;
  *(this + 19) = 0;
  *(this + 20) = 0;
  if (a3 && a6)
  {
    std::allocator<AudioStreamPacketDescription>::allocate_at_least[abi:ne200100](a3);
  }

  if ((a2->mFormatFlags & 0x20) != 0)
  {
    mChannelsPerFrame = 1;
  }

  else
  {
    mChannelsPerFrame = a2->mChannelsPerFrame;
  }

  CA::AudioBuffersDeprecated::Prepare(*(this + 14), mChannelsPerFrame, 0);
}

void sub_18F64AD0C(_Unwind_Exception *a1)
{
  v5 = *v3;
  if (*v3)
  {
    v1[19] = v5;
    operator delete(v5);
  }

  v6 = *v2;
  if (*v2)
  {
    v1[16] = v6;
    operator delete(v6);
  }

  CA::AudioBuffersDeprecated::~AudioBuffersDeprecated((v1 + 14));
  ACAudioSpan::~ACAudioSpan((v1 + 1));
  _Unwind_Resume(a1);
}

unsigned int *CA::AudioBuffersDeprecated::Prepare(CA::AudioBuffersDeprecated *this, int a2, unsigned int a3)
{
  result = ExtendedAudioBufferList_Prepare(this, a2, a3);
  if (!result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "ExtendedAudioBufferList_Prepare failed");
  }

  return result;
}

uint64_t pooledRenderer::AudioConverterOOP::getProperty(pooledRenderer::AudioConverterOOP *this, const swix::data *a2, unsigned int *a3, const void **a4)
{
  v6 = a2;
  v51 = *MEMORY[0x1E69E9840];
  v50 = a4;
  if ((*(this + 12) & 1) != 0 || (*(this + 13) & 1) == 0)
  {
    v43[0] = 0;
    v49 = 0;
  }

  else
  {
    v38 = 2754;
    v39 = a2;
    v40 = 0;
    v41 = 0;
    v42 = 0;
    kdebug_trace();
    v43[0] = 1;
    v44 = 2754;
    v45 = v6;
    v46 = 0;
    v47 = 0;
    v48 = 0;
    v37[0] = 0;
    v49 = 1;
    AT::ScopedTrace::~ScopedTrace(v37);
  }

  if (!a4)
  {
    v25 = _os_log_pack_size();
    message = caulk::deferred_logger::create_message(gAudioConverterDeferredLog, v25 + 88, 16);
    if (message)
    {
      v27 = message;
      v28 = _os_log_pack_fill(message + 40, v25, 0, &dword_18F5DF000, "PropertyID=%d is NULL", object);
      *v28 = 67109120;
      v28[1] = v6;
      v29 = *(gAudioConverterDeferredLog + 16);
      v30 = v27;
LABEL_42:
      caulk::concurrent::messenger::enqueue(v29, v30);
    }

LABEL_43:
    SpeechCodecBundleData = 4294967246;
    goto LABEL_34;
  }

  if (!a3)
  {
    v31 = _os_log_pack_size();
    v32 = caulk::deferred_logger::create_message(gAudioConverterDeferredLog, v31 + 88, 16);
    if (v32)
    {
      v33 = v32;
      *_os_log_pack_fill(v32 + 40, v31, 0, &dword_18F5DF000, "ioPropertyDataSize == NULL") = 0;
      v29 = *(gAudioConverterDeferredLog + 16);
      v30 = v33;
      goto LABEL_42;
    }

    goto LABEL_43;
  }

  if (v6 == 1885955104)
  {
    if (PlatformUtilities::IsInternalBuild(this))
    {
      if (*a3 >= 4)
      {
        *a3 = 4;
        v8 = *(*(this + 11) + 16);
        v9 = ACResourcePoolManager<AudioConverterXPC_Client,swix::connection_config>::popResourceFromStack(v8, 1);
        SpeechCodecBundleData = v9;
        if ((v11 & 1) != 0 && v9)
        {
          v12 = v9;
          Server = AudioConverterXPC_Client::queryServer(v9);
          SpeechCodecBundleData = 0;
          if (Server <= 0x100000000)
          {
            v14 = 0;
          }

          else
          {
            v14 = Server;
          }

          v15 = 1;
          if (!v8)
          {
LABEL_32:
            if (v15)
            {
              SpeechCodecBundleData = 0;
              *a4 = v14;
            }

            goto LABEL_34;
          }
        }

        else
        {
          v15 = 0;
          v12 = 0;
          v14 = 0;
          if (!v8)
          {
            goto LABEL_32;
          }
        }

        ACResourcePoolManager<AudioConverterXPC_Client,swix::connection_config>::pushResourceToStack(v8, v12);
        goto LABEL_32;
      }

LABEL_29:
      SpeechCodecBundleData = 561211770;
      goto LABEL_34;
    }

    goto LABEL_26;
  }

  v16 = CheckProperty(v6, a4, a3);
  if (!v16)
  {
    v21 = *a3;
    if (v6 == 1970103906)
    {
      if (v21 == 4)
      {
        SpeechCodecBundleData = 0;
        *a4 = *(*(this + 11) + 208) != 0;
        goto LABEL_34;
      }

      goto LABEL_29;
    }

    if (v6 == 1651401828)
    {
      v22 = *(this + 11);
      if (*(v22 + 208))
      {
        if (v21 != 336)
        {
          goto LABEL_29;
        }

        v23 = atomic_load((v22 + 416));
        if ((v23 & 1) == 0)
        {
          SpeechCodecBundleData = 560164718;
          goto LABEL_34;
        }

        SpeechCodecBundleData = AudioConverterPropertyClient::getSpeechCodecBundleData(*(*(this + 11) + 208), v50);
        if (SpeechCodecBundleData != 1768846202)
        {
          goto LABEL_34;
        }
      }
    }

LABEL_26:
    PropertyMarshaller::PropertyMarshaller(v37, 0, 0);
  }

  SpeechCodecBundleData = v16;
  v17 = _os_log_pack_size();
  v18 = caulk::deferred_logger::create_message(gAudioConverterDeferredLog, v17 + 88, 16);
  if (v18)
  {
    v19 = v18;
    v20 = _os_log_pack_fill(v18 + 40, v17, 0, &dword_18F5DF000, "AudioConverterOOP -> %p: The input data for PropertyID %u was not formatted correctly (%d)", object, v35, v36);
    *v20 = 134218496;
    *(v20 + 4) = this;
    *(v20 + 12) = 1024;
    *(v20 + 14) = v6;
    *(v20 + 18) = 1024;
    *(v20 + 20) = SpeechCodecBundleData;
    caulk::concurrent::messenger::enqueue(*(gAudioConverterDeferredLog + 16), v19);
  }

LABEL_34:
  if (v49 == 1)
  {
    AT::ScopedTrace::~ScopedTrace(v43);
  }

  return SpeechCodecBundleData;
}

void sub_18F64B4E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, xpc_object_t object, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  if (v27)
  {
    xpc_release(*(v28 - 112));
  }

  PropertyMarshaller::~PropertyMarshaller(&a16);
  if (a27 == 1)
  {
    AT::ScopedTrace::~ScopedTrace(&a22);
  }

  _Unwind_Resume(a1);
}

BOOL TMarshaller<AudioConverterPrimeInfo>::Serialize(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a4 == 8)
  {
    (*(*a1 + 32))(a1, a2, a3);
  }

  return a4 == 8;
}

uint64_t TMarshaller<AudioConverterPrimeInfo>::Deserialize(Marshaller *a1, uint64_t a2, void **a3, unsigned int *a4)
{
  if ((*a4 | 8) == 8)
  {
    Marshaller::CheckDest(a1, a3, a4, 8uLL);
    (*(*a1 + 40))(a1, a2, *a3);
    v7 = *(a2 + 32) ^ 1;
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t acv2::CodecConverter::SetProperty(acv2::CodecConverter *this, signed int a2, UInt32 a3, void *a4)
{
  if (HIBYTE(a2) != 94 || !acv2::CodecConverter::CodecSupportsProperty(*(this + 21), a2))
  {
    v10 = 0;
    if (a2 > 1668310370)
    {
      if (a2 <= 1886546284)
      {
        if (a2 == 1668310371)
        {
          goto LABEL_31;
        }

        if (a2 != 1684891491)
        {
          if (a2 != 1886353266)
          {
            goto LABEL_84;
          }

LABEL_31:
          if (acv2::CodecConverter::CodecSupportsProperty(*(this + 21), a2))
          {
            *(this + 176) = 0;
            return AudioCodecSetProperty(*(this + 21), a2, a3, a4);
          }

          return 1886547824;
        }

        if (*(this + 205) == 1)
        {
          acv2::CodecConverter::CheckUninitialize(this);
          v13 = *(this + 72);
          __s1[0] = *(this + 56);
          __s1[1] = v13;
          v34 = *(this + 11);
          v14 = *(this + 91);
          v10 = acv2::CodecConverter::StoreMagicCookie(this, a4, a3);
          if (v10)
          {
            return v10;
          }

          v32 = *(this + 11);
          v15 = *(this + 72);
          __s2[0] = *(this + 56);
          __s2[1] = v15;
          HIDWORD(v34) = 0;
          HIDWORD(v32) = 0;
          if (memcmp(__s1, __s2, 0x28uLL) || *(this + 91) != v14)
          {
            acv2::AudioConverterChain::GetChainBuildSettings(cf, *(this + 20));
          }

          if (*(this + 840) == 1)
          {
            acv2::CodecConverter::CheckInitialize(this, 0, 0);
          }

          return 0;
        }

        return 1886547824;
      }

      if (a2 == 1886546285)
      {
        if (a3 != 8)
        {
          return 4294967246;
        }

        if (*(this + 205) == 1 && acv2::CodecConverter::CodecSupportsProperty(*(this + 21), 0x7072696Du))
        {
          v23 = *a4;
          if ((*(this + 388) & 1) == 0)
          {
            *(this + 388) = 1;
          }

          *(this + 380) = v23;
          *(this + 98) = v23;
          v24 = *(a4 + 1);
          LODWORD(cf[0]) = 0;
          HIDWORD(cf[0]) = v24;
          acv2::CodecConverter::CheckUninitialize(this);
          *(this + 176) = 0;
          AudioCodecSetProperty(*(this + 21), 0x7072696Du, 8u, cf);
          if (*(this + 840) == 1)
          {
            acv2::CodecConverter::CheckInitialize(this, 0, 0);
          }
        }

        return 0;
      }

      if (a2 != 1935893603)
      {
        if (a2 != 1919116144)
        {
          goto LABEL_84;
        }

        if (a3 == 4)
        {
          v12 = *a4;
          *(this + 840) = *a4 != 0;
          if (v12)
          {
            acv2::CodecConverter::CheckUninitialize(this);
            acv2::CodecConverter::CheckInitialize(this, 0, 0);
          }

          return 0;
        }

        return 561211770;
      }

      if (!acv2::CodecConverter::CodecSupportsProperty(*(this + 21), 0x5E736463u))
      {
        v10 = 0;
        goto LABEL_84;
      }

      Value = CFDictionaryGetValue(*a4, @"media kind");
      if (Value)
      {
        v17 = Value;
      }

      else
      {
        v17 = &stru_1F0340B48;
      }

      CFRetain(v17);
      cf[0] = v17;
      v18 = CFGetTypeID(v17);
      if (v18 != CFStringGetTypeID())
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
      }

      v19 = *(this + 27);
      if (v19)
      {
        CFRetain(*(this + 27));
        v20 = cf[0];
        if (!cf[0])
        {
          v21 = kCFCompareGreaterThan;
          goto LABEL_77;
        }
      }

      else
      {
        v20 = cf[0];
        if (!cf[0])
        {
          goto LABEL_80;
        }
      }

      CFRetain(v20);
      if (v19)
      {
        v21 = CFStringCompare(v19, v20, 0);
      }

      else
      {
        v21 = kCFCompareLessThan;
      }

      CFRelease(v20);
      if (!v19)
      {
LABEL_78:
        if (v21)
        {
          CFRetain(v17);
          v25 = applesauce::CF::StringRef::StringRef(__s1, v17);
          v26 = *(this + 27);
          *(this + 27) = *&__s1[0];
          *&__s1[0] = v26;
          applesauce::CF::StringRef::~StringRef(v25);
          v27 = 0;
          v10 = 0;
          goto LABEL_81;
        }

LABEL_80:
        *(this + 176) = 0;
        v10 = AudioCodecSetProperty(*(this + 21), 0x5E736463u, a3, a4);
        v27 = 1;
LABEL_81:
        if (cf[0])
        {
          CFRelease(cf[0]);
        }

        if (v27)
        {
          return v10;
        }

LABEL_84:
        if (acv2::CodecConverter::CodecSupportsProperty(*(this + 21), a2))
        {
          acv2::CodecConverter::CheckUninitialize(this);
          *(this + 176) = 0;
          v11 = AudioCodecSetProperty(*(this + 21), a2, a3, a4);
          if (!v11)
          {
            if (*(this + 840) == 1)
            {
              acv2::CodecConverter::CheckInitialize(this, 0, 0);
            }

            return v10;
          }
        }

        else
        {
          v10 = 1886547824;
          v28 = *(this + 90);
          if (!v28)
          {
            return v10;
          }

          LOBYTE(__s1[0]) = 0;
          LODWORD(cf[0]) = 0;
          if (AudioUnitGetPropertyInfo(*(v28 + 8), a2, 0, 0, cf, __s1))
          {
            return v10;
          }

          return AudioUnitSetProperty(*(*(this + 90) + 8), a2, 0, 0, a4, a3);
        }

        return v11;
      }

LABEL_77:
      CFRelease(v19);
      goto LABEL_78;
    }

    if (a2 <= 1651663219)
    {
      if (a2 == 1633842276)
      {
        goto LABEL_31;
      }

      if (a2 != 1634366322)
      {
        goto LABEL_84;
      }

      if (*(this + 204) != 1)
      {
        return 1886547824;
      }

      if (*(this + 208) != 1)
      {
        return 1869627199;
      }

      if (a3 == 8)
      {
        acv2::CodecConverter::CheckUninitialize(this);
        cf[0] = *a4;
        *(this + 176) = 0;
        v11 = AudioCodecSetProperty(*(this + 21), 0x636F7372u, 8u, cf);
        if (v11)
        {
          return v11;
        }

        acv2::CodecConverter::CheckInitialize(this, 0, 0);
        LODWORD(__s1[0]) = 8;
LABEL_56:
        if (!AudioCodecGetProperty(*(this + 21), 0x636F7372u, __s1, cf))
        {
          v22 = cf[0];
          *(this + 7) = cf[0];
          *(*(this + 20) + 40) = v22;
        }

        return 0;
      }
    }

    else
    {
      if (a2 != 1651663220)
      {
        if (a2 == 1667527029)
        {
          if (a3 == 4)
          {
            acv2::CodecConverter::CheckUninitialize(this);
            *(this + 176) = 0;
            v10 = AudioCodecSetProperty(*(this + 21), 0x73726371u, 4u, a4);
            if (*(this + 840) == 1)
            {
              acv2::CodecConverter::CheckInitialize(this, 0, 0);
            }

            return v10;
          }

          return 561211770;
        }

        if (a2 != 1668114275)
        {
          goto LABEL_84;
        }

        if (*(this + 204) != 1)
        {
          return 1886547824;
        }

        acv2::CodecConverter::CheckUninitialize(this);
        return acv2::CodecConverter::StoreMagicCookie(this, a4, a3);
      }

      if (*(this + 204) != 1)
      {
        return 1886547824;
      }

      if (a3 == 4)
      {
        acv2::CodecConverter::CheckUninitialize(this);
        *(this + 176) = 0;
        v11 = AudioCodecSetProperty(*(this + 21), 0x62726174u, 4u, a4);
        if (v11)
        {
          return v11;
        }

        if (*(this + 840) == 1)
        {
          acv2::CodecConverter::CheckInitialize(this, 0, 0);
        }

        cf[0] = 0;
        LODWORD(__s1[0]) = 8;
        goto LABEL_56;
      }
    }

    return 561211770;
  }

  *(this + 176) = 0;
  v8 = *(this + 21);

  return AudioCodecSetProperty(v8, a2, a3, a4);
}

void sub_18F64BDD4(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x18F64BD74);
}

uint64_t acv2::CodecConverter::CheckUninitialize(acv2::CodecConverter **this)
{
  v9 = *MEMORY[0x1E69E9840];
  result = acv2::CodecConverter::IsInitialized(this[21]);
  if (result)
  {
    *(this + 176) = 0;
    result = AudioCodecUninitialize(this[21]);
    if (result)
    {
      v3 = result;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v5 = 136315394;
        v6 = "CodecConverter.cpp";
        v7 = 1024;
        v8 = 1701;
        _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  AudioCodecUninitialize failed", &v5, 0x12u);
      }

      exception = __cxa_allocate_exception(4uLL);
      *exception = v3;
      __cxa_throw(exception, MEMORY[0x1E69E5478], 0);
    }
  }

  return result;
}

OSStatus AudioCodecSetProperty(AudioCodec inCodec, AudioCodecPropertyID inPropertyID, UInt32 inPropertyDataSize, const void *inPropertyData)
{
  if (!inCodec)
  {
    return -50;
  }

  v5 = *&inPropertyDataSize;
  v6 = *&inPropertyID;
  v7 = (*(*inCodec + 8))(inCodec);
  if (!v7)
  {
    return 560947818;
  }

  v8 = v7;
  v9 = *(*((**v7)(v7) + 112) + 16);
  if (!v9)
  {
    return -4;
  }

  v10 = v8[3];

  return v9(v10, v6, v5, inPropertyData);
}

void TPODMarshaller<AudioConverterPrimeInfo>::~TPODMarshaller(Marshaller *a1)
{
  Marshaller::~Marshaller(a1);

  JUMPOUT(0x193ADF220);
}

void AUProcessingBlock_DSPGraph::~AUProcessingBlock_DSPGraph(DSPGraph::Profiler **this)
{
  *this = &unk_1F03345B8;
  std::unique_ptr<DSPGraph::Profiler>::reset[abi:ne200100](this + 8, 0);
  v2 = this[7];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  AUProcessingBlockBase::~AUProcessingBlockBase(this);
}

{
  AUProcessingBlock_DSPGraph::~AUProcessingBlock_DSPGraph(this);

  JUMPOUT(0x193ADF220);
}

void AUProcessingBlockBase::~AUProcessingBlockBase(AUProcessingBlockBase *this)
{
  *this = &unk_1F032E690;
  AUPBUnregister(*(this + 2));
  AUProcessingBlockBase::SetName(this, 0);
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }
}

uint64_t AUPBUnregister(uint64_t a1)
{
  if (AUPBEnableSPI(void)::onceToken != -1)
  {
    dispatch_once(&AUPBEnableSPI(void)::onceToken, &__block_literal_global_4943);
  }

  if (AUPBEnableSPI(void)::isAppleInternal != 1)
  {
    return 561145191;
  }

  v2 = +[AUPBServer sharedInstance];

  return [(AUPBServer *)v2 unregisterBlock:a1];
}

uint64_t *std::__tree<std::__value_type<unsigned int,RemoteAUHandleInfo>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,RemoteAUHandleInfo>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,RemoteAUHandleInfo>>>::__remove_node_pointer(uint64_t **a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    do
    {
      v3 = v2;
      v2 = *v2;
    }

    while (v2);
  }

  else
  {
    v4 = a2;
    do
    {
      v3 = v4[2];
      v5 = *v3 == v4;
      v4 = v3;
    }

    while (!v5);
  }

  if (*a1 == a2)
  {
    *a1 = v3;
  }

  v6 = a1[1];
  a1[2] = (a1[2] - 1);
  std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v6, a2);
  return v3;
}

uint64_t *std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      goto LABEL_7;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (v2)
  {
LABEL_7:
    v6 = 0;
    v5 = v3[2];
    *(v2 + 16) = v5;
    goto LABEL_8;
  }

  v5 = v3[2];
  v6 = 1;
LABEL_8:
  v7 = *v5;
  if (*v5 == v3)
  {
    *v5 = v2;
    if (v3 == result)
    {
      v7 = 0;
      result = v2;
    }

    else
    {
      v7 = v5[1];
    }
  }

  else
  {
    v5[1] = v2;
  }

  v8 = *(v3 + 24);
  if (v3 != a2)
  {
    v9 = a2[2];
    v3[2] = v9;
    v9[*v9 != a2] = v3;
    v11 = *a2;
    v10 = a2[1];
    *(v11 + 16) = v3;
    *v3 = v11;
    v3[1] = v10;
    if (v10)
    {
      *(v10 + 16) = v3;
    }

    *(v3 + 24) = *(a2 + 24);
    if (result == a2)
    {
      result = v3;
    }
  }

  if (!result || !v8)
  {
    return result;
  }

  if (!v6)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v12 = *(v7 + 16);
    v13 = *v12;
    if (*v12 == v7)
    {
      break;
    }

    if ((*(v7 + 24) & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v12 + 24) = 0;
      v14 = v12[1];
      v15 = *v14;
      v12[1] = *v14;
      if (v15)
      {
        *(v15 + 16) = v12;
      }

      v16 = v12[2];
      v14[2] = v16;
      v16[*v16 != v12] = v14;
      *v14 = v12;
      v12[2] = v14;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v17 = *v7;
    if (*v7 && *(v17 + 24) != 1)
    {
      v18 = *(v7 + 8);
      if (v18 && (*(v18 + 24) & 1) == 0)
      {
LABEL_58:
        v17 = v7;
      }

      else
      {
        *(v17 + 24) = 1;
        *(v7 + 24) = 0;
        v26 = *(v17 + 8);
        *v7 = v26;
        if (v26)
        {
          *(v26 + 16) = v7;
        }

        v27 = *(v7 + 16);
        *(v17 + 16) = v27;
        v27[*v27 != v7] = v17;
        *(v17 + 8) = v7;
        *(v7 + 16) = v17;
        v18 = v7;
      }

      v28 = *(v17 + 16);
      *(v17 + 24) = *(v28 + 24);
      *(v28 + 24) = 1;
      *(v18 + 24) = 1;
      v29 = *(v28 + 8);
      v30 = *v29;
      *(v28 + 8) = *v29;
      if (v30)
      {
        *(v30 + 16) = v28;
      }

      v31 = *(v28 + 16);
      v29[2] = v31;
      v31[*v31 != v28] = v29;
      *v29 = v28;
      goto LABEL_71;
    }

    v18 = *(v7 + 8);
    if (v18 && *(v18 + 24) != 1)
    {
      goto LABEL_58;
    }

    *(v7 + 24) = 0;
    v19 = *(v7 + 16);
    if (v19 == result || (v19[3] & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_49:
    v7 = *(v19[2] + 8 * (*v19[2] == v19));
  }

  if ((*(v7 + 24) & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v12 + 24) = 0;
    v20 = *(v13 + 8);
    *v12 = v20;
    if (v20)
    {
      *(v20 + 16) = v12;
    }

    v21 = v12[2];
    *(v13 + 16) = v21;
    v21[*v21 != v12] = v13;
    *(v13 + 8) = v12;
    v12[2] = v13;
    v22 = *(v7 + 8);
    if (result == v22)
    {
      result = v7;
    }

    v7 = *v22;
  }

  v23 = *v7;
  if (*v7 && *(v23 + 24) != 1)
  {
    goto LABEL_67;
  }

  v24 = *(v7 + 8);
  if (!v24 || *(v24 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v19 = *(v7 + 16);
    if (*(v19 + 24) != 1 || v19 == result)
    {
LABEL_52:
      *(v19 + 24) = 1;
      return result;
    }

    goto LABEL_49;
  }

  if (v23 && (*(v23 + 24) & 1) == 0)
  {
LABEL_67:
    v24 = v7;
    goto LABEL_68;
  }

  *(v24 + 24) = 1;
  *(v7 + 24) = 0;
  v32 = *v24;
  *(v7 + 8) = *v24;
  if (v32)
  {
    *(v32 + 16) = v7;
  }

  v33 = *(v7 + 16);
  *(v24 + 16) = v33;
  v33[*v33 != v7] = v24;
  *v24 = v7;
  *(v7 + 16) = v24;
  v23 = v7;
LABEL_68:
  v28 = *(v24 + 16);
  *(v24 + 24) = *(v28 + 24);
  *(v28 + 24) = 1;
  *(v23 + 24) = 1;
  v29 = *v28;
  v34 = *(*v28 + 8);
  *v28 = v34;
  if (v34)
  {
    *(v34 + 16) = v28;
  }

  v35 = *(v28 + 16);
  v29[2] = v35;
  v35[*v35 != v28] = v29;
  v29[1] = v28;
LABEL_71:
  *(v28 + 16) = v29;
  return result;
}

void AudioMetadataTimeline_AP::AudioMetadataTimeline_AP(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    v2 = *a1;
  }

  *(a1 + 1) = 0u;
  *(a1 + 24) = 0;
  *(a1 + 2) = 0u;
  if (v2)
  {
    operator new();
  }

  __assert_rtn("AudioMetadataTimeline_AP", "AudioMetadataTimeline.cpp", 754, "mMemoryPool");
}

void sub_18F64C854(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 24) = v4;
    operator delete(v4);
  }

  v5 = *(v1 + 8);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  _Unwind_Resume(exception_object);
}

void DSPGraph::NonFiniteProtectionBox::uninitialize(DSPGraph::NonFiniteProtectionBox *this)
{
  v41 = *MEMORY[0x1E69E9840];
  if (*(this + 204))
  {
    if (DSPGraph::getLog(void)::onceToken != -1)
    {
      dispatch_once(&DSPGraph::getLog(void)::onceToken, &__block_literal_global_10239);
    }

    v2 = DSPGraph::getLog(void)::gLog;
    if (os_log_type_enabled(DSPGraph::getLog(void)::gLog, OS_LOG_TYPE_ERROR))
    {
      v27 = this + 32;
      if (*(this + 55) < 0)
      {
        v27 = *v27;
      }

      v28 = *(this + 204);
      *buf = 136315394;
      v34 = v27;
      v35 = 1024;
      *v36 = v28;
      _os_log_error_impl(&dword_18F5DF000, v2, OS_LOG_TYPE_ERROR, "%s: Detected total %u audio buffers with non-finite (<NaN> or <inf>) sample during audio start/stop cycle", buf, 0x12u);
    }

    *(this + 204) = 0;
  }

  if (*(this + 205))
  {
    v3 = atomic_load(this + 780);
    if (v3)
    {
      if (DSPGraph::getLog(void)::onceToken != -1)
      {
        dispatch_once(&DSPGraph::getLog(void)::onceToken, &__block_literal_global_10239);
      }

      v4 = DSPGraph::getLog(void)::gLog;
      if (!os_log_type_enabled(DSPGraph::getLog(void)::gLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_17;
      }

      v5 = this + 32;
      if (*(this + 55) < 0)
      {
        v5 = *v5;
      }

      v6 = *(this + 205);
      v7 = COERCE_FLOAT(atomic_load(this + 193));
      v8 = v7;
      v9 = COERCE_FLOAT(atomic_load(this + 194));
      *buf = 136315906;
      v34 = v5;
      v35 = 1024;
      *v36 = v6;
      *&v36[4] = 2048;
      *&v36[6] = v8;
      *&v36[14] = 2048;
      *&v36[16] = v9;
      v10 = "%s: Detected total %u audio buffers with peak over limit (%.0f dB) during audio start/stop cycle. On detection audio silenced for %.2f seconds.";
      v11 = v4;
      v12 = 38;
    }

    else
    {
      if (DSPGraph::getLog(void)::onceToken != -1)
      {
        dispatch_once(&DSPGraph::getLog(void)::onceToken, &__block_literal_global_10239);
      }

      v13 = DSPGraph::getLog(void)::gLog;
      if (!os_log_type_enabled(DSPGraph::getLog(void)::gLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_17;
      }

      v30 = this + 32;
      if (*(this + 55) < 0)
      {
        v30 = *v30;
      }

      v31 = *(this + 205);
      v32 = COERCE_FLOAT(atomic_load(this + 193));
      *buf = 136315650;
      v34 = v30;
      v35 = 1024;
      *v36 = v31;
      *&v36[4] = 2048;
      *&v36[6] = v32;
      v10 = "%s: Detected total %u audio buffers with peak over limit (%.0f dB) during audio start/stop cycle. On detection audio hard clipped.";
      v11 = v13;
      v12 = 28;
    }

    _os_log_error_impl(&dword_18F5DF000, v11, OS_LOG_TYPE_ERROR, v10, buf, v12);
LABEL_17:
    *(this + 205) = 0;
  }

  v14 = *(this + 99);
  v15 = *(this + 100);
  if (v14 != v15)
  {
    v16 = v14 + 1;
    do
    {
      v17 = *(v16 - 2);
      *__str = 0u;
      v40 = 0u;
      v18 = localtime(v16);
      if (!strftime(__str, 0x20uLL, "%Y-%m-%d %H:%M:%S", v18))
      {
        snprintf(__str, 0x20uLL, "%ld", *v16);
      }

      if (DSPGraph::getLog(void)::onceToken != -1)
      {
        dispatch_once(&DSPGraph::getLog(void)::onceToken, &__block_literal_global_10239);
      }

      v19 = DSPGraph::getLog(void)::gLog;
      if (os_log_type_enabled(DSPGraph::getLog(void)::gLog, OS_LOG_TYPE_ERROR))
      {
        v21 = this + 32;
        if (*(this + 55) < 0)
        {
          v21 = *(this + 4);
        }

        v22 = v16[1];
        v23 = "peak over limit";
        if (!v17)
        {
          v23 = "non-finite sample";
        }

        v24 = atomic_load(this + 207);
        *buf = 136316162;
        v34 = __str;
        v35 = 2048;
        *v36 = v22;
        *&v36[8] = 2080;
        *&v36[10] = v21;
        *&v36[18] = 2080;
        *&v36[20] = v23;
        v37 = 1024;
        v38 = v24;
        _os_log_error_impl(&dword_18F5DF000, v19, OS_LOG_TYPE_ERROR, "%s.%09ld :: %s: Detected %s in %u audio buffers", buf, 0x30u);
      }

      v20 = v16 + 2;
      v16 += 3;
    }

    while (v20 != v15);
    v14 = *(this + 99);
  }

  *(this + 100) = v14;
  v25 = *(this + 824);
  *(this + 824) = 0;
  if (v25)
  {
    if (DSPGraph::getLog(void)::onceToken != -1)
    {
      dispatch_once(&DSPGraph::getLog(void)::onceToken, &__block_literal_global_10239);
    }

    v26 = DSPGraph::getLog(void)::gLog;
    if (os_log_type_enabled(DSPGraph::getLog(void)::gLog, OS_LOG_TYPE_ERROR))
    {
      v29 = this + 32;
      if (*(this + 55) < 0)
      {
        v29 = *v29;
      }

      *buf = 136315138;
      v34 = v29;
      _os_log_error_impl(&dword_18F5DF000, v26, OS_LOG_TYPE_ERROR, "%s: NonFiniteProtectionBox event logging capacity exceeded (some descriptions dropped)", buf, 0xCu);
    }
  }
}

OpaqueExtAudioFile *acv2::AudioConverterBase::writeCapture(acv2::AudioConverterBase *this, AudioConverterCapturer *a2, const ACAudioSpan *a3)
{
  v4 = *(a2 + 2);
  mNumberBuffers = v4->mNumberBuffers;
  if (mNumberBuffers)
  {
    v6 = *(a2 + 2);
    v7 = (mNumberBuffers + 3) & 0x1FFFFFFFCLL;
    v8 = vdupq_n_s64(mNumberBuffers - 1);
    v9 = xmmword_18F9016B0;
    v10 = xmmword_18F9016C0;
    v11 = &v4[1].mBuffers[0].mData + 1;
    v12 = vdupq_n_s64(4uLL);
    do
    {
      v13 = vmovn_s64(vcgeq_u64(v8, v10));
      if (vuzp1_s16(v13, *v8.i8).u8[0])
      {
        *(v11 - 8) = v6;
      }

      if (vuzp1_s16(v13, *&v8).i8[2])
      {
        *(v11 - 4) = v6;
      }

      if (vuzp1_s16(*&v8, vmovn_s64(vcgeq_u64(v8, *&v9))).i32[1])
      {
        *v11 = v6;
        v11[4] = v6;
      }

      v9 = vaddq_s64(v9, v12);
      v10 = vaddq_s64(v10, v12);
      v11 += 16;
      v7 -= 4;
    }

    while (v7);
  }

  return AudioConverterCapturer::write(this, v4, *(a2 + 4), *a2);
}

void DSPGraph::DeadEndBox::~DeadEndBox(DSPGraph::DeadEndBox *this)
{
  DSPGraph::Box::~Box(this);

  JUMPOUT(0x193ADF220);
}

void DSPGraph::TimeFreqBox::~TimeFreqBox(DSPGraph::TimeFreqBox *this)
{
  *this = &unk_1F0330718;
  v2 = (this + 776);
  std::vector<std::unique_ptr<void,int (*)(void *)>>::__destroy_vector::operator()[abi:ne200100](&v2);
  DSPGraph::Box::~Box(this);

  JUMPOUT(0x193ADF220);
}

{
  *this = &unk_1F0330718;
  v2 = (this + 776);
  std::vector<std::unique_ptr<void,int (*)(void *)>>::__destroy_vector::operator()[abi:ne200100](&v2);

  DSPGraph::Box::~Box(this);
}

{
  *this = &unk_1F0330718;
  v2 = (this + 776);
  std::vector<std::unique_ptr<void,int (*)(void *)>>::__destroy_vector::operator()[abi:ne200100](&v2);

  DSPGraph::Box::~Box(this);
}

void std::vector<std::unique_ptr<void,int (*)(void *)>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::unique_ptr<void,int (*)(void *)>>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void DSPGraph::SumBox::~SumBox(DSPGraph::SumBox *this)
{
  DSPGraph::Box::~Box(this);

  JUMPOUT(0x193ADF220);
}

void DSPGraph::GainBox::~GainBox(DSPGraph::GainBox *this)
{
  DSPGraph::Box::~Box(this);

  JUMPOUT(0x193ADF220);
}

void DSPGraph::SingleRateLPCMConverterBox::~SingleRateLPCMConverterBox(DSPGraph::SingleRateLPCMConverterBox *this)
{
  DSPGraph::Box::~Box(this);

  JUMPOUT(0x193ADF220);
}

void DSPGraph::SRCBox::~SRCBox(DSPGraph::SRCBox *this)
{
  *this = &unk_1F0335788;
  DSPGraph::SimpleABL::free((this + 912));
  v2 = *(this + 111);
  *(this + 111) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *this = &unk_1F033EE48;
  DSPGraph::SimpleABL::free((this + 808));
  DSPGraph::SimpleABL::free((this + 808));
  DSPGraph::Box::~Box(this);

  JUMPOUT(0x193ADF220);
}

{
  *this = &unk_1F0335788;
  DSPGraph::SimpleABL::free((this + 912));
  v2 = *(this + 111);
  *(this + 111) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *this = &unk_1F033EE48;
  DSPGraph::SimpleABL::free((this + 808));
  DSPGraph::SimpleABL::free((this + 808));

  DSPGraph::Box::~Box(this);
}

DSPGraph::Profiler *std::unique_ptr<DSPGraph::Profiler>::reset[abi:ne200100](DSPGraph::Profiler **a1, DSPGraph::Profiler *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    DSPGraph::Profiler::~Profiler(result);

    JUMPOUT(0x193ADF220);
  }

  return result;
}

void std::vector<DSPGraph::Graph::GraphBridge>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 56;
        std::__destroy_at[abi:ne200100]<DSPGraph::Graph::GraphBridge,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void DSPGraph::NonFiniteProtectionBox::~NonFiniteProtectionBox(DSPGraph::NonFiniteProtectionBox *this)
{
  *this = &unk_1F03360E8;
  v2 = *(this + 99);
  if (v2)
  {
    *(this + 100) = v2;
    operator delete(v2);
  }

  DSPGraph::Box::~Box(this);

  JUMPOUT(0x193ADF220);
}

{
  *this = &unk_1F03360E8;
  v2 = *(this + 99);
  if (v2)
  {
    *(this + 100) = v2;
    operator delete(v2);
  }

  DSPGraph::Box::~Box(this);
}

void DSPGraph::Wire::~Wire(DSPGraph::Wire *this)
{
  *this = &unk_1F033F678;

  JUMPOUT(0x193ADF220);
}

{
  *this = &unk_1F033F678;
}

uint64_t *std::unique_ptr<DSPGraph::Graph::profiler_t>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    boost::circular_buffer<double,std::allocator<double>>::destroy(v2);

    JUMPOUT(0x193ADF220);
  }

  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,DSPGraph::Graph::profiler_t>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,DSPGraph::Graph::profiler_t>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,DSPGraph::Graph::profiler_t>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,DSPGraph::Graph::profiler_t>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,DSPGraph::Graph::profiler_t>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned int,DSPGraph::AnalyzerBuilder::Info>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,DSPGraph::AnalyzerBuilder::Info>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,DSPGraph::AnalyzerBuilder::Info>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,DSPGraph::AnalyzerBuilder::Info>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<unsigned int const,DSPGraph::AnalyzerBuilder::Info>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void std::vector<std::unique_ptr<DSPGraph::Subset>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        std::unique_ptr<DSPGraph::Subset>::reset[abi:ne200100](--v4, 0);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,DSPGraph::FormatAndBlockSize>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,DSPGraph::FormatAndBlockSize>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,DSPGraph::FormatAndBlockSize>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,DSPGraph::FormatAndBlockSize>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t caulk::concurrent::lf_read_synchronized_write<std::vector<DSPGraph::RenderObserverList<DSPGraph::Graph>::RenderObserver,std::allocator<DSPGraph::RenderObserverList<DSPGraph::Graph>::RenderObserver>>>::~lf_read_synchronized_write(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    v3 = (a1 + 16);
    std::vector<DSPGraph::RenderObserverList<DSPGraph::Graph>::RenderObserver,std::allocator<DSPGraph::RenderObserverList<DSPGraph::Graph>::RenderObserver>>::__destroy_vector::operator()[abi:ne200100](&v3);
  }

  if (*(a1 + 9) == 1)
  {
    v3 = (a1 + 40);
    std::vector<DSPGraph::RenderObserverList<DSPGraph::Graph>::RenderObserver,std::allocator<DSPGraph::RenderObserverList<DSPGraph::Graph>::RenderObserver>>::__destroy_vector::operator()[abi:ne200100](&v3);
  }

  return a1;
}

void std::vector<DSPGraph::RenderObserverList<DSPGraph::Graph>::RenderObserver,std::allocator<DSPGraph::RenderObserverList<DSPGraph::Graph>::RenderObserver>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v6 = v4 - 48;
        std::__function::__value_func<void ()(DSPGraph::Graph *,unsigned int)>::~__value_func[abi:ne200100]((v4 - 40));
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned int,DSPGraph::Graph::GraphProperty>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,DSPGraph::Graph::GraphProperty>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,DSPGraph::Graph::GraphProperty>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,DSPGraph::Graph::GraphProperty>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  while (v2)
  {
    v3 = v2;
    v2 = *v2;
    v4 = v3[9];
    if (v4)
    {
      v3[10] = v4;
      operator delete(v4);
    }

    if (*(v3 + 56) == 1)
    {
      v5 = v3[4];
      if (v5)
      {
        v3[5] = v5;
        operator delete(v5);
      }
    }

    operator delete(v3);
  }

  v6 = *a1;
  *a1 = 0;
  if (v6)
  {
    operator delete(v6);
  }

  return a1;
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned int,DSPGraph::Graph::GraphParameter>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,DSPGraph::Graph::GraphParameter>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,DSPGraph::Graph::GraphParameter>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,DSPGraph::Graph::GraphParameter>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = v2[5];
      if (v4)
      {
        v2[6] = v4;
        operator delete(v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v5 = *a1;
  *a1 = 0;
  if (v5)
  {
    operator delete(v5);
  }

  return a1;
}

void std::vector<std::unique_ptr<DSPGraph::InternalBuffer>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::unique_ptr<DSPGraph::InternalBuffer>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t std::__hash_table<std::unique_ptr<DSPGraph::IsoGroup>,std::hash<std::unique_ptr<DSPGraph::IsoGroup>>,std::equal_to<std::unique_ptr<DSPGraph::IsoGroup>>,std::allocator<std::unique_ptr<DSPGraph::IsoGroup>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::unique_ptr<DSPGraph::IsoGroup>,std::hash<std::unique_ptr<DSPGraph::IsoGroup>>,std::equal_to<std::unique_ptr<DSPGraph::IsoGroup>>,std::allocator<std::unique_ptr<DSPGraph::IsoGroup>>>::__deallocate_node(*(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(double)>::~__value_func[abi:ne200100](uint64_t a1)
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

void DSPGraph::Box::~Box(DSPGraph::Box *this)
{
  *this = &unk_1F0338050;
  std::unique_ptr<DSPGraph::RenderObserverList<DSPGraph::Box>>::reset[abi:ne200100](this + 92, 0);
  std::mutex::~mutex((this + 672));
  std::__function::__value_func<void ()(double)>::~__value_func[abi:ne200100](this + 640);
  caulk::concurrent::skiplist<unsigned int,DSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::clear(this + 336);
  caulk::concurrent::details::node_allocator<unsigned int,DSPGraph::Analyzer *,10ul,(caulk::concurrent::skiplist_options)0>::~node_allocator(this + 560);
  v3 = (this + 312);
  std::vector<std::unique_ptr<DSPGraph::Analyzer>>::__destroy_vector::operator()[abi:ne200100](&v3);
  std::mutex::~mutex((this + 248));
  v3 = (this + 224);
  std::vector<std::unique_ptr<DSPGraph::Analyzer>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (this + 200);
  std::vector<std::unique_ptr<DSPGraph::Analyzer>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (this + 176);
  std::vector<DSPGraph::PropertyTap>::__destroy_vector::operator()[abi:ne200100](&v3);
  v2 = *(this + 19);
  if (v2)
  {
    *(this + 20) = v2;
    operator delete(v2);
  }

  v3 = (this + 88);
  std::vector<DSPGraph::OutputPort>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (this + 64);
  std::vector<DSPGraph::OutputPort>::__destroy_vector::operator()[abi:ne200100](&v3);
  if (*(this + 55) < 0)
  {
    operator delete(*(this + 4));
  }
}

uint64_t caulk::concurrent::lf_read_synchronized_write<std::vector<DSPGraph::RenderObserverList<DSPGraph::Box>::RenderObserver,std::allocator<DSPGraph::RenderObserverList<DSPGraph::Box>::RenderObserver>>>::~lf_read_synchronized_write(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    v3 = (a1 + 16);
    std::vector<DSPGraph::RenderObserverList<DSPGraph::Box>::RenderObserver,std::allocator<DSPGraph::RenderObserverList<DSPGraph::Box>::RenderObserver>>::__destroy_vector::operator()[abi:ne200100](&v3);
  }

  if (*(a1 + 9) == 1)
  {
    v3 = (a1 + 40);
    std::vector<DSPGraph::RenderObserverList<DSPGraph::Box>::RenderObserver,std::allocator<DSPGraph::RenderObserverList<DSPGraph::Box>::RenderObserver>>::__destroy_vector::operator()[abi:ne200100](&v3);
  }

  return a1;
}

uint64_t AUProcessingBlockBase::SetName(AUProcessingBlockBase *this, __CFString *a2)
{
  v4 = *(this + 1);
  if (v4)
  {
    CFRelease(v4);
  }

  if (a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = &stru_1F0340B48;
  }

  *(this + 1) = v5;
  CFRetain(v5);
  v7 = 1851878757;
  return AUPBPropertiesChanged(*(this + 2), 1, &v7, 0, 0);
}

uint64_t std::__hash_table<std::unique_ptr<DSPGraph::Box>,std::hash<std::unique_ptr<DSPGraph::Box>>,std::equal_to<std::unique_ptr<DSPGraph::Box>>,std::allocator<std::unique_ptr<DSPGraph::Box>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = v2[2];
      v2[2] = 0;
      if (v4)
      {
        (*(*v4 + 8))(v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v5 = *a1;
  *a1 = 0;
  if (v5)
  {
    operator delete(v5);
  }

  return a1;
}

void std::vector<DSPGraph::RenderObserverList<DSPGraph::Box>::RenderObserver,std::allocator<DSPGraph::RenderObserverList<DSPGraph::Box>::RenderObserver>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v6 = v4 - 48;
        std::__function::__value_func<void ()(DSPGraph::Box *,unsigned int)>::~__value_func[abi:ne200100]((v4 - 40));
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t caulk::concurrent::skiplist<unsigned int,DSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::clear(unint64_t a1)
{
  caulk::concurrent::details::node_allocator<ListenerMap::MapKey,ListenerMap::MapNode,10ul,(caulk::concurrent::skiplist_options)0>::begin_traversal();
  for (i = atomic_load((a1 + 24)); ; i = atomic_load((v3 + 24)))
  {
    v3 = i & 0xFFFFFFFFFFFFFFFCLL;
    if (a1 + 184 == (i & 0xFFFFFFFFFFFFFFFCLL))
    {
      break;
    }

    if (*(v3 + 14) != 2)
    {
      v4 = atomic_load((v3 + 24));
      if ((v4 & 1) == 0)
      {
        caulk::concurrent::skiplist<unsigned int,DSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::remove(a1, *(v3 + 8));
      }
    }
  }

  return caulk::concurrent::details::node_allocator<unsigned int,DSPGraph::Analyzer *,10ul,(caulk::concurrent::skiplist_options)0>::end_traversal(a1 + 224, i);
}

uint64_t caulk::concurrent::details::node_allocator<unsigned int,DSPGraph::Analyzer *,10ul,(caulk::concurrent::skiplist_options)0>::end_traversal@<X0>(uint64_t result@<X0>, unint64_t a2@<X8>)
{
  _X2 = 0;
  _X3 = 0;
  __asm { CASPAL          X2, X3, X2, X3, [X0] }

  for (i = _X2; ; i = _X2)
  {
    v11 = (_X3 - 1);
    a2 = a2 & 0xFFFFFFFF00000000 | v11;
    _X6 = _X3 <= 1 ? 0 : i;
    _X3 = _X3 | (v2 << 32);
    __asm { CASPAL          X2, X3, X6, X7, [X0] }

    if (_X2 == i)
    {
      break;
    }

    v2 = HIDWORD(_X3);
  }

  if (!v11)
  {
    if (i)
    {
      return caulk::concurrent::details::node_allocator<unsigned int,DSPGraph::Analyzer *,10ul,(caulk::concurrent::skiplist_options)0>::free_node_chain_now(result, i);
    }
  }

  return result;
}

unint64_t caulk::concurrent::details::node_allocator<unsigned int,DSPGraph::Analyzer *,10ul,(caulk::concurrent::skiplist_options)0>::~node_allocator(unint64_t a1)
{
  _X2 = 0;
  _X3 = 0;
  __asm { CASPAL          X2, X3, X2, X3, [X0] }

  if (_X2)
  {
    caulk::concurrent::details::node_allocator<unsigned int,DSPGraph::Analyzer *,10ul,(caulk::concurrent::skiplist_options)0>::free_node_chain_now(a1, _X2);
  }

  (*(*(a1 + 32) + 24))(a1 + 40);
  v9 = *(a1 + 24);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  return a1;
}

void DSPGraph::AUBox::~AUBox(DSPGraph::AUBox *this)
{
  *this = &unk_1F033F3E8;
  v2 = *(this + 100);
  if (v2)
  {
    *(this + 101) = v2;
    operator delete(v2);
  }

  v3 = *(this + 97);
  if (v3)
  {
    *(this + 98) = v3;
    operator delete(v3);
  }

  DSPGraph::Box::~Box(this);

  JUMPOUT(0x193ADF220);
}

{
  *this = &unk_1F033F3E8;
  v2 = *(this + 100);
  if (v2)
  {
    *(this + 101) = v2;
    operator delete(v2);
  }

  v3 = *(this + 97);
  if (v3)
  {
    *(this + 98) = v3;
    operator delete(v3);
  }

  DSPGraph::Box::~Box(this);
}

void std::vector<DSPGraph::PropertyTap>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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

        v4 -= 64;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<std::unique_ptr<DSPGraph::Analyzer>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v7 = *--v4;
        v6 = v7;
        *v4 = 0;
        if (v7)
        {
          (*(*v6 + 8))(v6);
        }
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<DSPGraph::OutputPort>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 4;
      v7 = v4 - 4;
      v8 = v4 - 4;
      do
      {
        v9 = *v8;
        v8 -= 4;
        (*v9)(v7);
        v6 -= 4;
        v10 = v7 == v2;
        v7 = v8;
      }

      while (!v10);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void DSPGraph::ChannelJoinerBox::~ChannelJoinerBox(DSPGraph::ChannelJoinerBox *this)
{
  DSPGraph::Box::~Box(this);

  JUMPOUT(0x193ADF220);
}

void DSPGraph::ChannelSplitterBox::~ChannelSplitterBox(DSPGraph::ChannelSplitterBox *this)
{
  DSPGraph::Box::~Box(this);

  JUMPOUT(0x193ADF220);
}

void DSPGraph::GraphInput::~GraphInput(void **this)
{
  *this = &unk_1F033EB78;
  if (*(this + 911) < 0)
  {
    operator delete(this[111]);
  }

  v2 = this[110];
  this[110] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *this = &unk_1F033EE48;
  DSPGraph::SimpleABL::free((this + 101));
  DSPGraph::SimpleABL::free((this + 101));
  DSPGraph::Box::~Box(this);

  JUMPOUT(0x193ADF220);
}

{
  *this = &unk_1F033EB78;
  if (*(this + 911) < 0)
  {
    operator delete(this[111]);
  }

  v2 = this[110];
  this[110] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *this = &unk_1F033EE48;
  DSPGraph::SimpleABL::free((this + 101));
  DSPGraph::SimpleABL::free((this + 101));

  DSPGraph::Box::~Box(this);
}

void DSPGraph::GraphOutput::~GraphOutput(DSPGraph::GraphOutput *this)
{
  *this = &unk_1F033EE48;
  DSPGraph::SimpleABL::free((this + 808));
  DSPGraph::SimpleABL::free((this + 808));
  DSPGraph::Box::~Box(this);

  JUMPOUT(0x193ADF220);
}

{
  *this = &unk_1F033EE48;
  DSPGraph::SimpleABL::free((this + 808));
  DSPGraph::SimpleABL::free((this + 808));

  DSPGraph::Box::~Box(this);
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>>,0>(uint64_t a1)
{
  std::__function::__value_func<DSPGraph::Box * ()(unsigned int,unsigned int)>::~__value_func[abi:ne200100](a1 + 24);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

unint64_t DSPGraph::InputPort::upstreamLatencyInTicks(DSPGraph::InputPort *this)
{
  v1 = *(*((*(*this + 40))(this) + 8) + 8);
  v2 = (*(*v1 + 72))(v1);
  return DSPGraph::Box::upstreamLatencyInTicks(v1) + v2;
}

uint64_t DSPGraph::AUBox::selfLatencyInTicks(DSPGraph::AUBox *this)
{
  v8 = 0.0;
  v7 = 8;
  v2 = (*(*this + 304))(this, 12, 0, 0, &v7, &v8);
  v3 = v8;
  if (v2)
  {
    v3 = 0.0;
  }

  v4 = llround(v3 * *(*(this + 1) + 696));
  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = -1;
  }

  if (v4 >= 0)
  {
    return v4;
  }

  else
  {
    return v5;
  }
}

uint64_t DSPGraph::GraphInput::ringBufferSampleRate(DSPGraph::GraphInput *this)
{
  v3 = this + 88;
  v2 = *(this + 11);
  if (*(v3 + 1) == v2)
  {
    std::string::basic_string[abi:ne200100]<0>(&v7, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(&v6, "out");
    v5 = this + 32;
    if (*(this + 55) < 0)
    {
      v5 = *v5;
    }

    DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v5, (*(this + 12) - *(this + 11)) >> 5, 0);
  }

  return **((*(*v2 + 40))(v2) + 120);
}

void sub_18F64E280(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (*(v23 - 17) < 0)
  {
    operator delete(*(v23 - 40));
  }

  _Unwind_Resume(exception_object);
}

uint64_t DSPGraph::ChannelJoinerBox::initialize(DSPGraph::ChannelJoinerBox *this)
{
  DSPGraph::Box::initialize(this);
  v2 = *(this + 11);
  if (*(this + 12) == v2)
  {
    std::string::basic_string[abi:ne200100]<0>(&v20, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(&v19, "out");
    v17 = this + 32;
    if (*(this + 55) < 0)
    {
      v17 = *v17;
    }

    DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v17, (*(this + 12) - *(this + 11)) >> 5, 0);
  }

  result = (*(*v2 + 40))(v2);
  v4 = *(result + 120);
  v5 = v4[3];
  if ((v5 & 0x20) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(&v20, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v19, "initialize");
    std::string::basic_string[abi:ne200100]<0>(&v18, "ChannelJoinerBox output format must be de-interleaved");
    DSPGraph::ThrowException(1718449215, &v20, 3369, &v19, &v18);
  }

  v6 = v4[2];
  if (v6 == 1819304813)
  {
    if ((v5 & 1) == 0 || v4[8] != 32)
    {
      goto LABEL_38;
    }
  }

  else if (v6 != 1718773105 || v4[8] != 64)
  {
LABEL_38:
    std::string::basic_string[abi:ne200100]<0>(&v20, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v19, "initialize");
    std::string::basic_string[abi:ne200100]<0>(&v18, "ChannelJoinerBox output format must be 32-bit floating-point PCM or 'freq'");
    DSPGraph::ThrowException(1718449215, &v20, 3372, &v19, &v18);
  }

  v7 = *(this + 8);
  v8 = *(this + 9) - v7;
  if ((v8 & 0x1FFFFFFFE0) != 0)
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = v8 >> 5;
    while (1)
    {
      if (v12 <= v10)
      {
        std::string::basic_string[abi:ne200100]<0>(&v20, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
        std::string::basic_string[abi:ne200100]<0>(&v19, "in");
        v16 = this + 32;
        if (*(this + 55) < 0)
        {
          v16 = *v16;
        }

        DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v16, (*(this + 9) - *(this + 8)) >> 5, v10);
      }

      result = (*(*(v7 + v9) + 40))();
      v13 = *(result + 120);
      v14 = v13[3];
      if ((v14 & 0x20) == 0)
      {
        std::string::basic_string[abi:ne200100]<0>(&v20, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.cpp");
        std::string::basic_string[abi:ne200100]<0>(&v19, "initialize");
        std::string::basic_string[abi:ne200100]<0>(&v18, "ChannelJoinerBox input format must be de-interleaved");
        DSPGraph::ThrowException(1718449215, &v20, 3380, &v19, &v18);
      }

      v15 = v13[2];
      if (v15 == 1819304813)
      {
        if ((v14 & 1) == 0 || v13[8] != 32)
        {
          goto LABEL_36;
        }

        if (v4[2] == 1718773105 && v4[8] == 64)
        {
          goto LABEL_35;
        }
      }

      else
      {
        if (v15 != 1718773105 || v13[8] != 64)
        {
LABEL_36:
          std::string::basic_string[abi:ne200100]<0>(&v20, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.cpp");
          std::string::basic_string[abi:ne200100]<0>(&v19, "initialize");
          std::string::basic_string[abi:ne200100]<0>(&v18, "ChannelJoinerBox input format must be 32-bit floating-point PCM or 'freq'");
          DSPGraph::ThrowException(1718449215, &v20, 3383, &v19, &v18);
        }

        if (v4[2] != 1718773105 || v4[8] != 64)
        {
LABEL_35:
          std::string::basic_string[abi:ne200100]<0>(&v20, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.cpp");
          std::string::basic_string[abi:ne200100]<0>(&v19, "initialize");
          std::string::basic_string[abi:ne200100]<0>(&v18, "ChannelJoinerBox input and output formats must be compatible");
          DSPGraph::ThrowException(1718449215, &v20, 3387, &v19, &v18);
        }
      }

      v11 += v13[7];
      ++v10;
      v7 = *(this + 8);
      v12 = (*(this + 9) - v7) >> 5;
      v9 += 32;
      if (v10 >= v12)
      {
        goto LABEL_26;
      }
    }
  }

  v11 = 0;
LABEL_26:
  if (v4[7] != v11)
  {
    std::string::basic_string[abi:ne200100]<0>(&v20, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v19, "initialize");
    DSPGraph::strprintf("ChannelJoinerBox channel mismatch: can't join %u input channels into %u output channels", v11, v4[7]);
  }

  return result;
}

void sub_18F64E758(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  _Unwind_Resume(exception_object);
}

void DSPGraph::Box::initializePropertyTaps(uint64_t this)
{
  v1 = *(this + 176);
  v2 = *(this + 184);
  while (v1 != v2)
  {
    DSPGraph::PropertyTap::initialize(v1);
    v1 = (v1 + 64);
  }
}