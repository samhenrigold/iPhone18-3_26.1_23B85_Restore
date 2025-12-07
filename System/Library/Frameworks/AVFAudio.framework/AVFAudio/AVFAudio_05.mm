uint64_t EnvironmentReverbFilterParameters::SetGain(EnvironmentReverbFilterParameters *this, float a2)
{
  v2 = *(this + 2);
  if (v2[94] == a2)
  {
    return 1;
  }

  v3 = 24.0;
  if (a2 < 24.0)
  {
    v3 = a2;
  }

  if (a2 <= -96.0)
  {
    v4 = -96.0;
  }

  else
  {
    v4 = v3;
  }

  v2[94] = v4;
  return (*(*v2 + 128))(v2, 16, 0, 0);
}

uint64_t EnvironmentReverbFilterParameters::SetBandwidth(EnvironmentReverbFilterParameters *this, float a2)
{
  v2 = *(this + 2);
  if (v2[95] == a2)
  {
    return 1;
  }

  v3 = 5.0;
  if (a2 < 5.0)
  {
    v3 = a2;
  }

  if (a2 <= 0.05)
  {
    v4 = 0.05;
  }

  else
  {
    v4 = v3;
  }

  v2[95] = v4;
  return (*(*v2 + 128))(v2, 15, 0, 0);
}

uint64_t EnvironmentReverbFilterParameters::SetFrequency(EnvironmentReverbFilterParameters *this, float a2)
{
  v2 = *(this + 2);
  if (v2[96] == a2)
  {
    return 1;
  }

  v3 = 20000.0;
  if (a2 < 20000.0)
  {
    v3 = a2;
  }

  if (a2 <= 10.0)
  {
    v4 = 10.0;
  }

  else
  {
    v4 = v3;
  }

  v2[96] = v4;
  return (*(*v2 + 128))(v2, 14, 0, 0);
}

void std::__shared_ptr_emplace<caulk::details::lifetime_guard_base<AVAudioEnvironmentNodeImpl>::control_block,std::allocator<caulk::details::lifetime_guard_base<AVAudioEnvironmentNodeImpl>::control_block>>::__on_zero_shared(uint64_t a1)
{
  __dmb(0xBu);
  caulk::semaphore::signal((*(a1 + 40) + 24));
  v2 = *(a1 + 32);
  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

void std::__shared_ptr_emplace<caulk::details::lifetime_guard_base<AVAudioEnvironmentNodeImpl>::control_block,std::allocator<caulk::details::lifetime_guard_base<AVAudioEnvironmentNodeImpl>::control_block>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F384D918;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1BFAF5800);
}

uint64_t AVAudioEnvironmentNodeImpl::ResetRenderingFlags(AVAudioEnvironmentNodeImpl *this)
{
  v10 = 4;
  v1 = *(this + 38);
  v2 = this + 312;
  if (v1 == this + 312)
  {
    return 1;
  }

  LODWORD(v4) = 1;
  do
  {
    v5 = (*(*this + 144))(this, 3003, 1, *(v1 + 10), &v10, 4);
    v6 = *(v1 + 1);
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
        v7 = *(v1 + 2);
        v8 = *v7 == v1;
        v1 = v7;
      }

      while (!v8);
    }

    v4 = v4 & v5;
    v1 = v7;
  }

  while (v7 != v2);
  return v4;
}

float RotateVectorByEulerAngles(float a1, float a2, float a3, AVAudio3DPoint *a4)
{
  v7 = __sincosf_stret((a2 * 0.017453) * 0.5);
  v8 = __sincosf_stret((a1 * 0.017453) * 0.5);
  v9 = __sincosf_stret((a3 * 0.017453) * 0.5);
  v10 = (v9.__sinval * (v8.__cosval * v7.__cosval)) - (v9.__cosval * (v8.__sinval * v7.__sinval));
  v11 = (v8.__sinval * (v7.__cosval * v9.__sinval)) + ((v7.__sinval * v9.__cosval) * v8.__cosval);
  v12 = (v8.__cosval * -(v9.__sinval * v7.__sinval)) + ((v7.__cosval * v9.__cosval) * v8.__sinval);
  v13 = (v9.__sinval * (v8.__sinval * v7.__sinval)) + (v9.__cosval * (v8.__cosval * v7.__cosval));
  v14 = -v12;
  v15 = -v10;
  v16 = sqrtf((((v11 * v11) + (v13 * v13)) + (v12 * v12)) + (v10 * v10));
  if (v16 == 0.0)
  {
    v18 = (v9.__sinval * (v8.__sinval * v7.__sinval)) + (v9.__cosval * (v8.__cosval * v7.__cosval));
  }

  else
  {
    v17 = 1.0 / v16;
    v18 = v13 * (1.0 / v16);
    v11 = v11 * v17;
    v14 = v17 * v14;
    v15 = v17 * v15;
  }

  y = a4->y;
  z = a4->z;
  v21 = (((v18 * 0.0) - (v11 * a4->x)) - (v14 * y)) - (v15 * z);
  v22 = (((v11 * 0.0) + (v18 * a4->x)) + (v14 * z)) - (v15 * y);
  v23 = (((v18 * y) - (v11 * z)) + (v14 * 0.0)) + (v15 * a4->x);
  v24 = (((v11 * y) + (v18 * z)) - (v14 * a4->x)) + (v15 * 0.0);
  v25 = (((v13 * v22) - (v21 * v11)) - (v23 * v15)) + (v24 * v14);
  v26 = (((v15 * v22) - (v21 * v14)) + (v23 * v13)) - (v24 * v11);
  result = ((-(v14 * v22) - (v21 * v15)) + (v23 * v11)) + (v24 * v13);
  a4->x = v25;
  a4->y = v26;
  a4->z = result;
  return result;
}

void sub_1BA625EA0(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1BA6262D8(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1BA6265FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = AVAudioDeviceTest;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1BA628594(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1BA6295CC(_Unwind_Exception *a1)
{
  if (v1)
  {
    os_unfair_lock_unlock(v1);
  }

  _Unwind_Resume(a1);
}

void sub_1BA629768(_Unwind_Exception *a1)
{
  if (v1)
  {
    os_unfair_lock_unlock(v1);
  }

  _Unwind_Resume(a1);
}

void sub_1BA629CF0(_Unwind_Exception *a1)
{
  if (v1)
  {
    os_unfair_lock_unlock(v1);
  }

  _Unwind_Resume(a1);
}

id AVAudioConverterImpl::getInt32List(AudioConverterRef *this, AudioConverterPropertyID a2, int a3)
{
  outSize = 0;
  outWritable = 0;
  if (AudioConverterGetPropertyInfo(*this, a2, &outSize, &outWritable))
  {
    goto LABEL_4;
  }

  v6 = malloc_type_calloc(1uLL, outSize, 0x100004052888210uLL);
  if (AudioConverterGetProperty(*this, a2, &outSize, v6))
  {
    free(v6);
LABEL_4:
    v7 = 0;
    goto LABEL_5;
  }

  memset(v16, 0, sizeof(v16));
  if (outSize >= 4)
  {
    v9 = outSize >> 2;
    v10 = v6;
    do
    {
      v12 = *v10++;
      v11 = v12;
      v13 = v12;
      if (a3)
      {
        v14 = v13;
      }

      else
      {
        v14 = v11;
      }

      v15 = [MEMORY[0x1E696AD98] numberWithInteger:v14];
      v19 = v15;
      std::vector<NSNumber * {__strong}>::push_back[abi:ne200100](v16, &v19);

      --v9;
    }

    while (v9);
  }

  free(v6);
  v7 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:? count:?];
  v19 = v16;
  std::vector<NSNumber * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v19);
LABEL_5:

  return v7;
}

void sub_1BA629F24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, char *a14)
{
  a14 = &a10;
  std::vector<NSNumber * {__strong}>::__destroy_vector::operator()[abi:ne200100](&a14);
  _Unwind_Resume(a1);
}

void std::vector<NSNumber * {__strong}>::push_back[abi:ne200100](void ***a1, id *a2)
{
  v4 = a1[1];
  v3 = a1[2];
  if (v4 >= v3)
  {
    v6 = v4 - *a1;
    if ((v6 + 1) >> 61)
    {
      std::vector<AUGraphNodeBaseV3 *>::__throw_length_error[abi:ne200100]();
    }

    v7 = v3 - *a1;
    v8 = v7 >> 2;
    if (v7 >> 2 <= (v6 + 1))
    {
      v8 = v6 + 1;
    }

    if (v7 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v8;
    }

    if (v9)
    {
      if (!(v9 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v10 = (8 * v6);
    *v10 = *a2;
    v5 = (8 * v6 + 8);
    v11 = *a1;
    v12 = a1[1];
    v13 = (v10 + *a1 - v12);
    if (*a1 != v12)
    {
      v14 = *a1;
      v15 = v13;
      do
      {
        v16 = *v14;
        *v14++ = 0;
        *v15++ = v16;
      }

      while (v14 != v12);
      do
      {
        v17 = *v11++;
      }

      while (v11 != v12);
      v11 = *a1;
    }

    *a1 = v13;
    a1[1] = v5;
    a1[2] = 0;
    if (v11)
    {
      operator delete(v11);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = v4 + 1;
  }

  a1[1] = v5;
}

void std::vector<NSNumber * {__strong}>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v6 = *(v4 - 1);
        v4 -= 8;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_1BA62AC78(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    os_unfair_lock_unlock(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1BA62ACF4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    os_unfair_lock_unlock(v1);
  }

  _Unwind_Resume(exception_object);
}

id AVAudioConverterImpl::getRateList(AudioConverterRef *this, AudioConverterPropertyID a2, int a3)
{
  outSize = 0;
  outWritable = 0;
  if (AudioConverterGetPropertyInfo(*this, a2, &outSize, &outWritable))
  {
    goto LABEL_4;
  }

  v6 = malloc_type_calloc(1uLL, outSize, 0x1000040451B5BE8uLL);
  if (AudioConverterGetProperty(*this, a2, &outSize, v6))
  {
    free(v6);
LABEL_4:
    v7 = 0;
    goto LABEL_5;
  }

  memset(v13, 0, sizeof(v13));
  if (outSize >= 0x10)
  {
    v9 = outSize >> 4;
    v10 = v6;
    do
    {
      v11 = *v10;
      if (a3)
      {
        [MEMORY[0x1E696AD98] numberWithDouble:v11];
      }

      else
      {
        [MEMORY[0x1E696AD98] numberWithInteger:v11];
      }
      v12 = ;
      v16 = v12;
      std::vector<NSNumber * {__strong}>::push_back[abi:ne200100](v13, &v16);

      v10 += 2;
      --v9;
    }

    while (v9);
  }

  free(v6);
  v7 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:? count:?];
  v16 = v13;
  std::vector<NSNumber * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v16);
LABEL_5:

  return v7;
}

void sub_1BA62AE64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, void **a14)
{
  a14 = &a10;
  std::vector<NSNumber * {__strong}>::__destroy_vector::operator()[abi:ne200100](&a14);
  _Unwind_Resume(a1);
}

void sub_1BA62AEF8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    os_unfair_lock_unlock(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1BA62AF74(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    os_unfair_lock_unlock(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1BA62AFF0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    os_unfair_lock_unlock(v1);
  }

  _Unwind_Resume(exception_object);
}

void CACFDictionary::AddBool(__CFDictionary **this, const __CFString *key)
{
  v4 = *MEMORY[0x1E695E4D0];
  v7 = v4;
  v8 = 1;
  if (v4)
  {
    CFRetain(v4);
  }

  if (*(this + 9) == 1)
  {
    v5 = *this;
    if (v4)
    {
      v6 = v5 == 0;
    }

    else
    {
      v6 = 1;
    }

    if (!v6)
    {
      CFDictionarySetValue(v5, key, v4);
    }
  }

  CACFBoolean::~CACFBoolean(&v7);
}

void CACFBoolean::~CACFBoolean(CACFBoolean *this)
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

void CACFNumber::~CACFNumber(CACFNumber *this)
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

void CACFDictionary::AddUInt32(CFMutableDictionaryRef *this, const __CFString *a2, int a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v6 = v5;
  v7 = 1;
  if (*(this + 9) == 1 && v5 && *this)
  {
    CFDictionarySetValue(*this, a2, v5);
  }

  CACFNumber::~CACFNumber(&v6);
}

void sub_1BA62B45C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  CACFNumber::~CACFNumber(va);
  _Unwind_Resume(a1);
}

void CACFDictionary::AddFloat32(CFMutableDictionaryRef *this, const __CFString *a2, float a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(0, kCFNumberFloat32Type, &valuePtr);
  v6 = v5;
  v7 = 1;
  if (*(this + 9) == 1 && v5 && *this)
  {
    CFDictionarySetValue(*this, a2, v5);
  }

  CACFNumber::~CACFNumber(&v6);
}

void sub_1BA62B4E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  CACFNumber::~CACFNumber(va);
  _Unwind_Resume(a1);
}

void sub_1BA62B6D4(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void ___Z37AudioDataAnalysisManagerLibraryLoaderv_block_invoke()
{
  v4 = *MEMORY[0x1E69E9840];
  v0 = dlopen("/usr/lib/libAudioIssueDetector.dylib", 1);
  if (v0)
  {
    goto LABEL_5;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = 136315138;
    v3 = dlerror();
    _os_log_error_impl(&dword_1BA5AC000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "dlerror : libAudioIssueDetector ADAM: %s", &v2, 0xCu);
  }

  v0 = dlopen("/usr/local/lib/libAudioIssueDetector.dylib", 1);
  if (v0)
  {
LABEL_5:
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v0, "AudioDataAnalysisManagerCreate");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v0, "AudioDataAnalysisManagerDispose");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v0, "AudioDataAnalysisManagerReset");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v0, "AudioDataAnalysisManagerUpdateReportingSessions");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v0, "AudioDataAnalysisManagerCreateNodePCM");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v0, "AudioDataAnalysisManagerCreateNodeSPL");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v0, "AudioDataAnalysisManagerRemoveNode");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v0, "AudioDataAnalysisManagerInitialize");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v0, "AudioDataAnalysisManagerIsSessionInitialized");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v0, "AudioDataAnalysisManagerProcessAudio");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v0, "AudioDataAnalysisManagerProcessSPL");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v0, "AudioDataAnalysisManagerCreateNodeEnvSPL");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v0, "AudioDataAnalysisManagerCreateNodeEnvSoundClass");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v0, "AudioDataAnalysisManagerCreateNodeMicLevel");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v0, "AudioDataAnalysisManagerProcessEnvSPL");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v0, "AudioDataAnalysisManagerProcessEnvSoundClass");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v0, "AudioDataAnalysisManagerProcessMicLevel");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v0, "AudioDataAnalysisManagerSetDeviceInfo");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v0, "AudioDataAnalysisManagerRegisterDeviceInfo");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v0, "AudioDataAnalysisManagerSetDeviceConnectionState");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v0, "AudioDataAnalysisManagerStartServices");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v0, "AudioDataAnalysisManagerConnectedWiredDeviceIsHeadphone");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v0, "AudioDataAnalysisManagerSetApplicationBundleID");
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v1 = dlerror();
    v2 = 136315138;
    v3 = v1;
    _os_log_error_impl(&dword_1BA5AC000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "dlerror : libAudioIssueDetector ADAM: %s", &v2, 0xCu);
  }
}

void sub_1BA62C71C(_Unwind_Exception *a1)
{
  if (v1)
  {
    *(v2 - 112) = v1;
    operator delete(v1);
  }

  _Block_object_dispose((v2 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1BA62CBD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *___Z31AudioIssueDetectorLibraryLoaderv_block_invoke()
{
  v0 = dlopen("/usr/lib/libAudioIssueDetector.dylib", 1);
  if (v0 || (v0 = dlopen("/usr/local/lib/libAudioIssueDetector.dylib", 1)) != 0)
  {
    v1 = v0;
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v0, "AudioIssueDetectorCreate");
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v1, "AudioIssueDetectorInitialize");
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v1, "AudioIssueDetectorDispose");
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v1, "AudioIssueDetectorSetNodeFormat");
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v1, "AudioIssueDetectorSetNodeFormatWithDirection");
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v1, "AudioIssueDetectorReset");
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v1, "AudioIssueDetectorAnalyzeBuffer");
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v1, "AudioIssueDetectorUpdateReportingSessions");
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v1, "AudioIssueDetectorRemoveNode");
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v1, "AudioIssueDetectorSetUplinkMute");
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v1, "AudioIssueDetectorSetDownlinkVolume");
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v1, "AudioIssueDetectorSetRouteSpecificDownlinkGainAdjustment");
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v1, "AudioIssueDetectorSetSmartCaseMicMute");
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v1, "AudioIssueDetectorFlush");
  }

  result = dlopen("/System/Library/Frameworks/AudioToolbox.framework/libAudioDSP.dylib", 1);
  if (result)
  {
    result = dlsym(result, "RegisterAudioUnits_Analyzer");
    if (result)
    {

      return (result)();
    }
  }

  return result;
}

void sub_1BA62D234(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1BA62D4D0(_Unwind_Exception *a1)
{
  objc_sync_exit(v3);

  _Unwind_Resume(a1);
}

void sub_1BA62D604(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_1BA62D788(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_1BA62DE18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1BA62E050(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = AVVCMetricsManager;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

void sub_1BA62EBE0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t AVAudioStereoMixingImpl::SetPan(AVAudioStereoMixingImpl *this, float a2, const char *a3)
{
  if ((LODWORD(a2) & 0x7FFFFFFFu) >= 0x7F800000)
  {
    a2 = -1.0;
  }

  if (*(this + 5) == a2)
  {
    return 0;
  }

  v14 = v7;
  v9 = 1.0;
  if (a2 < 1.0)
  {
    v9 = a2;
  }

  if (a2 <= -1.0)
  {
    v10 = -1.0;
  }

  else
  {
    v10 = v9;
  }

  *(this + 5) = v10;
  v11 = *(*objc_msgSend_impl(*(this + 9), a3, v8, v14, v4, v3, v5) + 128);
  v12.n128_f32[0] = v10;

  return v11(v12);
}

uint64_t AVAudioStereoMixingImpl::SetGain(AVAudioStereoMixingImpl *this, float a2, const char *a3)
{
  if ((LODWORD(a2) & 0x7FFFFFFFu) >= 0x7F800000)
  {
    a2 = 0.0;
  }

  if (*(this + 4) == a2)
  {
    return 0;
  }

  v14 = v7;
  v9 = 100000.0;
  if (a2 < 100000.0)
  {
    v9 = a2;
  }

  if (a2 <= 0.0)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = v9;
  }

  *(this + 4) = v10;
  v11 = *(*objc_msgSend_impl(*(this + 9), a3, v8, v14, v4, v3, v5) + 128);
  v12.n128_f32[0] = v10;

  return v11(v12);
}

AVAudioConnectionPoint *AVAudioStereoMixingImpl::GetMixerConnectionPoint(void **this, const char *a2)
{
  v4 = objc_msgSend_impl(this[9], a2);
  v5 = (*(*v4 + 248))(v4, *(this + 16));
  v6 = this[9];

  return [AVAudioConnectionPoint connectionPointWithNode:v6 bus:v5];
}

void AVAudioStereoMixingImpl::~AVAudioStereoMixingImpl(AVAudioStereoMixingImpl *this)
{
  *this = &unk_1F384A280;
  *(this + 9) = 0;
  *(this + 16) = 0;
  JUMPOUT(0x1BFAF5800);
}

{
  *this = &unk_1F384A280;
  *(this + 9) = 0;
  *(this + 16) = 0;
}

uint64_t AUGraphNodeBase::ConnectInput(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v28 = *MEMORY[0x1E69E9840];
  v7 = *a4;
  v8 = (*(*a1 + 16))(a1);
  v9 = v8;
  v10 = *(a4 + 8);
  if (a2)
  {
    if (!v7)
    {
      if (AVAudioEngineLogCategory(void)::once != -1)
      {
        dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
      }

      v11 = *AVAudioEngineLogCategory(void)::category;
      if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316418;
        v17 = "AVAEInternal.h";
        v18 = 1024;
        v19 = 71;
        v20 = 2080;
        v21 = "AVAEGraphNode.mm";
        v22 = 1024;
        v23 = 227;
        v24 = 2080;
        v25 = "ConnectInput";
        v26 = 2080;
        v27 = "nullptr != srcNode";
        _os_log_impl(&dword_1BA5AC000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
      }

      [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "nullptr != srcNode"}];
    }

    (*(*v7 + 56))(v7, 0, v10, v9, a3);
    ((*v9)[7])(v9, 1, a3, v7, v10);
    return (*(*v9[3] + 272))();
  }

  else
  {
    v13 = *(v8 + 24);
    if (v7)
    {
      v14 = v7[3];
    }

    else
    {
      v14 = 0;
    }

    (*(*v13 + 280))(v13, a3, v14, v10);
    result = ((*v9)[9])(v9, 1, a3);
    if (v7)
    {
      v15 = *(*v7 + 64);

      return v15(v7, 0, v10, v9, a3);
    }
  }

  return result;
}

uint64_t AUGraphNodeBase::SetAUMaxFramesPerSlice(AUGraphNodeBase *this)
{
  v1 = *(*(*(**(this + 3) + 40))(*(this + 3)) + 160);

  return v1();
}

uint64_t AUGraphNodeBase::GetAUMaxFramesPerSlice(AUGraphNodeBase *this)
{
  v1 = *(*(*(**(this + 3) + 40))(*(this + 3)) + 152);

  return v1();
}

uint64_t AUGraphNodeBase::StopIO(AUGraphNodeBase *this)
{
  v1 = *(*(*(**(this + 3) + 40))(*(this + 3)) + 296);

  return v1();
}

uint64_t AUGraphNodeBase::StartIO(AUGraphNodeBase *this)
{
  v1 = *(*(*(**(this + 3) + 40))(*(this + 3)) + 288);

  return v1();
}

pthread_t AUGraphNodeBase::NodeDidStop(pthread_t this)
{
  cleanup_stack = this->__cleanup_stack;
  if (cleanup_stack && BYTE4(cleanup_stack[2].__routine) == 1)
  {
    caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::lock(&cleanup_stack[1]);
    LODWORD(cleanup_stack[2].__arg) = 1;

    return caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(&cleanup_stack[1]);
  }

  return this;
}

pthread_t AUGraphNodeBase::NodeWillStart(pthread_t this)
{
  v17 = *MEMORY[0x1E69E9840];
  cleanup_stack = this->__cleanup_stack;
  if (cleanup_stack)
  {
    if ((BYTE4(cleanup_stack[2].__routine) & 1) == 0)
    {
      if (AVAudioEngineLogCategory(void)::once != -1)
      {
        dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
      }

      v2 = *AVAudioEngineLogCategory(void)::category;
      if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316418;
        v6 = "AVAEInternal.h";
        v7 = 1024;
        v8 = 71;
        v9 = 2080;
        v10 = "AVAudioNodeTap.mm";
        v11 = 1024;
        v12 = 129;
        v13 = 2080;
        v14 = "Start";
        v15 = 2080;
        v16 = "_initialized";
        _os_log_impl(&dword_1BA5AC000, v2, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
      }

      [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "_initialized"}];
    }

    caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::lock(&cleanup_stack[1]);
    LODWORD(cleanup_stack[2].__arg) = 0;
    p_arg = &cleanup_stack[9].__arg;
    v4 = 32;
    do
    {
      *(p_arg - 2) = 0;
      *(p_arg - 1) = 0;
      *p_arg = 0;
      p_arg += 3;
      --v4;
    }

    while (v4);
    LODWORD(cleanup_stack[40].__next) = 0;
    BYTE4(cleanup_stack[40].__next) = 1;
    BYTE5(cleanup_stack[2].__routine) = 1;
    LOBYTE(cleanup_stack[59].__next) = 1;
    LODWORD(cleanup_stack[59].__routine) = 0;
    cleanup_stack[60].__routine = 0;
    return caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(&cleanup_stack[1]);
  }

  return this;
}

uint64_t AUGraphNodeBase::Uninitialize(AUGraphNodeBase *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    AVAudioNodeTap::Uninitialize(v2);
  }

  (*(**(this + 3) + 336))(*(this + 3));
  v3 = *(*(*(**(this + 3) + 40))(*(this + 3)) + 32);

  return v3();
}

uint64_t AUGraphNodeBase::Initialize(AUGraphNodeBase *this)
{
  v2 = (*(**(this + 3) + 40))(*(this + 3));
  v3 = (*(*v2 + 24))(v2);
  if (!v3)
  {
    v4 = *(this + 1);
    if (v4)
    {
      AVAudioNodeTap::Initialize(v4);
    }

    (*(**(this + 3) + 328))(*(this + 3));
  }

  return v3;
}

void AUGraphNodeBase::DestroyRecordingTap(AUGraphNodeBase *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    *(this + 1) = 0;
    __dmb(0xBu);
    AVAudioNodeTap::Uninitialize(v1);
    *(v1 + 54) = 1;
    v2 = AVAudioEngineImpl::sMessenger;

    CADeprecated::RealtimeMessenger::PerformAsync(v2, (v1 + 1456));
  }
}

void AUGraphNodeBase::CreateRecordingTap(uint64_t a1, uint64_t a2, int a3, void *a4, void *a5)
{
  v30 = *MEMORY[0x1E69E9840];
  if (!a5)
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v10 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v19 = "AVAEInternal.h";
      v20 = 1024;
      v21 = 71;
      v22 = 2080;
      v23 = "AVAEGraphNode.mm";
      v24 = 1024;
      v25 = 451;
      v26 = 2080;
      v27 = "CreateRecordingTap";
      v28 = 2080;
      v29 = "nil != callbackBlock";
      _os_log_impl(&dword_1BA5AC000, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "nil != callbackBlock"}];
  }

  if (*(a1 + 8))
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v11 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v19 = "AVAEInternal.h";
      v20 = 1024;
      v21 = 71;
      v22 = 2080;
      v23 = "AVAEGraphNode.mm";
      v24 = 1024;
      v25 = 454;
      v26 = 2080;
      v27 = "CreateRecordingTap";
      v28 = 2080;
      v29 = "nullptr == Tap()";
      _os_log_impl(&dword_1BA5AC000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "nullptr == Tap()"}];
  }

  if (a4)
  {
    [a4 sampleRate];
    if (v12 <= 0.0 || ![a4 channelCount])
    {
      if (AVAudioEngineLogCategory(void)::once != -1)
      {
        dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
      }

      v13 = *AVAudioEngineLogCategory(void)::category;
      if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316418;
        v19 = "AVAEInternal.h";
        v20 = 1024;
        v21 = 71;
        v22 = 2080;
        v23 = "AVAEGraphNode.mm";
        v24 = 1024;
        v25 = 457;
        v26 = 2080;
        v27 = "CreateRecordingTap";
        v28 = 2080;
        v29 = "IsFormatSampleRateAndChannelCountValid(format)";
        _os_log_impl(&dword_1BA5AC000, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
      }

      [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "IsFormatSampleRateAndChannelCountValid(format)"}];
    }

    if (((*(**(a1 + 24) + 64))(*(a1 + 24), a2, a4) & 1) == 0)
    {
      if (AVAudioEngineLogCategory(void)::once != -1)
      {
        dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
      }

      v14 = *AVAudioEngineLogCategory(void)::category;
      if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316418;
        v19 = "AVAEInternal.h";
        v20 = 1024;
        v21 = 71;
        v22 = 2080;
        v23 = "AVAEGraphNode.mm";
        v24 = 1024;
        v25 = 458;
        v26 = 2080;
        v27 = "CreateRecordingTap";
        v28 = 2080;
        v29 = "NodeImpl()->SetOutputFormat(bus, format)";
        _os_log_impl(&dword_1BA5AC000, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
      }

      [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "NodeImpl()->SetOutputFormat(bus, format)"}];
    }
  }

  v15 = operator new(0x600uLL, 0x40uLL);
  v16 = (*(**(a1 + 24) + 40))(*(a1 + 24));
  v17 = (*(**(a1 + 24) + 240))(*(a1 + 24), a2);
  AVAudioNodeTap::AVAudioNodeTap(v15, v16, v17, a3, a5);
}

uint64_t AUGraphNodeBase::DisconnectNode(uint64_t result, int a2, unsigned int a3)
{
  v3 = 72;
  if (a2 == 1)
  {
    v3 = 48;
  }

  v4 = (result + v3);
  v5 = *v4;
  v6 = v4[1];
  if (*v4 != v6 && a3 < ((v6 - v5) >> 3))
  {
    v5[a3] = 0;
    v7 = *v4;
    v8 = v4[1];
    if (*v4 != v8)
    {
      v9 = (v8 - 8);
      do
      {
        if (*v9)
        {
          break;
        }

        v4[1] = v9;
      }

      while (v9-- != v7);
    }
  }

  return result;
}

char *AUGraphNodeBase::DisconnectNode(char *result, int a2, unsigned int a3, uint64_t a4)
{
  v7 = result;
  v29 = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v8 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v18 = "AVAEInternal.h";
      v19 = 1024;
      v20 = 71;
      v21 = 2080;
      v22 = "AVAEGraphNode.mm";
      v23 = 1024;
      v24 = 411;
      v25 = 2080;
      v26 = "DisconnectNode";
      v27 = 2080;
      v28 = "inNode != nil";
      _os_log_impl(&dword_1BA5AC000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    result = [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "inNode != nil"}];
  }

  v9 = 72;
  if (a2 == 1)
  {
    v9 = 48;
  }

  v10 = &v7[v9];
  v11 = *v10;
  v12 = *(v10 + 1);
  if (*v10 != v12 && a3 < ((v12 - v11) >> 3) && v11[a3] == a4)
  {
    v11[a3] = 0;
    v13 = *v10;
    v14 = *(v10 + 1);
    if (*v10 != v14)
    {
      v15 = (v14 - 8);
      do
      {
        if (*v15)
        {
          break;
        }

        *(v10 + 1) = v15;
      }

      while (v15-- != v13);
    }
  }

  return result;
}

void AUGraphNodeBase::AddNode(uint64_t a1, int a2, int a3, uint64_t a4)
{
  v23 = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v8 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      *&buf[4] = "AVAEInternal.h";
      v13 = 1024;
      v14 = 71;
      v15 = 2080;
      v16 = "AVAEGraphNode.mm";
      v17 = 1024;
      v18 = 386;
      v19 = 2080;
      v20 = "AddNode";
      v21 = 2080;
      v22 = "inNode != nil";
      _os_log_impl(&dword_1BA5AC000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "inNode != nil"}];
  }

  v9 = 72;
  if (a2 == 1)
  {
    v9 = 48;
  }

  for (i = (a1 + v9); ; std::vector<AUGraphNodeBaseV3 *>::push_back[abi:ne200100](i, buf))
  {
    v11 = (i[1] - *i) >> 3;
    if (v11 > a3)
    {
      break;
    }

    *buf = 0;
  }

  if (v11 <= a3)
  {
    std::vector<AUGraphNodeBaseV3 *>::__throw_out_of_range[abi:ne200100]();
  }

  *(*i + 8 * a3) = a4;
}

uint64_t AUGraphNodeBase::GetBusForConnectionPoint(uint64_t a1, int a2, void *a3, _DWORD *a4)
{
  *a4 = -1;
  v4 = 72;
  if (a2 == 1)
  {
    v4 = 48;
  }

  v5 = *(a1 + v4 + 8);
  v6 = *(a1 + v4);
  if (v6 == v5)
  {
    return 0;
  }

  v7 = v6;
  while (*v7 != *a3)
  {
    v7 += 8;
    if (v7 == v5)
    {
      return 0;
    }
  }

  if (v7 == v5)
  {
    return 0;
  }

  *a4 = (v7 - v6) >> 3;
  return 1;
}

uint64_t AUGraphNodeBase::GetConnectionPoint(uint64_t a1, int a2, int a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  v6 = 48;
  if (a2 != 1)
  {
    v6 = 72;
  }

  if (*(a1 + v6) == *(a1 + v6 + 8))
  {
    return 0;
  }

  v16 = v4;
  v17 = v5;
  result = (*(*a1 + 24))(a1);
  if (result)
  {
    v12 = result;
    v14 = (*(*a1 + 16))(a1);
    v15 = a3;
    v13 = -1;
    result = (*(*v12 + 48))(v12, a2 != 1, &v14, &v13);
    if (result)
    {
      *a4 = v12;
      *(a4 + 2) = v13;
    }
  }

  return result;
}

uint64_t AUGraphNodeBase::GetConnection(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  *a4 = 0u;
  a4[1] = 0u;
  v8 = (*(*a1 + 16))(a1);
  v9 = 8;
  if (a2 == 1)
  {
    v9 = 24;
  }

  *&a4[a2 == 1] = v8;
  *(a4 + v9) = a3;
  v12 = 0;
  v13 = -1;
  result = (*(*a1 + 40))(a1, a2, a3, &v12);
  if (result)
  {
    v11 = 24;
    if (a2 == 1)
    {
      v11 = 8;
    }

    *&a4[a2 != 1] = v12;
    *(a4 + v11) = v13;
  }

  return result;
}

uint64_t AUGraphNodeBase::GetNodeForBus(uint64_t a1, int a2, int a3)
{
  v3 = 72;
  if (a2 == 1)
  {
    v3 = 48;
  }

  v5 = a1 + v3;
  v4 = *(a1 + v3);
  v6 = (*(v5 + 8) - v4) >> 3;
  if (v6 <= a3)
  {
    return 0;
  }

  if (v6 <= a3)
  {
    std::vector<AUGraphNodeBaseV3 *>::__throw_out_of_range[abi:ne200100]();
  }

  return *(v4 + 8 * a3);
}

const void **std::unique_ptr<AVAEBlock<int({block_pointer})(unsigned int *,AudioTimeStamp const*,unsigned int,long,AudioBufferList *)>>::reset[abi:ne200100](const void ***a1, const void **a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    AVAEBlock<int({block_pointer})(unsigned int *,AudioTimeStamp const*,unsigned int,long,AudioBufferList *)>::~AVAEBlock(result);

    JUMPOUT(0x1BFAF5800);
  }

  return result;
}

uint64_t AUGraphNodeBaseV3::DestroyMIDIConnection(void *a1, uint64_t *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = *a2;
  v4 = (*(*a1 + 16))(a1);
  std::lock[abi:ne200100]<caulk::pooled_semaphore_mutex,caulk::pooled_semaphore_mutex>((v3 + 156), (a1 + 156));
  v5 = a1[14];
  if (v3 != v5)
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v6 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v17 = "AVAEInternal.h";
      v18 = 1024;
      v19 = 71;
      v20 = 2080;
      v21 = "AVAEGraphNode.mm";
      v22 = 1024;
      v23 = 997;
      v24 = 2080;
      v25 = "DestroyMIDIConnection";
      v26 = 2080;
      v27 = "midiSrc == MIDIInput()";
      _os_log_impl(&dword_1BA5AC000, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "midiSrc == MIDIInput()"}];
    v5 = a1[14];
  }

  if (v4)
  {
    v8 = *(v5 + 128);
    v7 = *(v5 + 136);
    if (v8 != v7)
    {
      while (*v8 != v4)
      {
        if (++v8 == v7)
        {
          goto LABEL_20;
        }
      }

      if (v8 != v7)
      {
        v9 = v8 + 1;
        if (v8 + 1 != v7)
        {
          do
          {
            if (*v9 != v4)
            {
              *v8++ = *v9;
            }

            ++v9;
          }

          while (v9 != v7);
          v7 = *(v5 + 136);
        }
      }
    }

    if (v8 != v7)
    {
      *(v5 + 136) = v8;
    }
  }

LABEL_20:
  v10 = a1[14];
  if (*(v10 + 128) == *(v10 + 136))
  {
    v12 = *(v10 + 176);
    if (v12 && *v12)
    {
      std::unique_ptr<AVAEBlock<int({block_pointer})(long long,unsigned char,long,unsigned char const*)>>::reset[abi:ne200100]((v10 + 176), 0);
      v10 = a1[14];
    }

    v15 = *(v10 + 184);
    v13 = (v10 + 184);
    v14 = v15;
    if (v15 && *v14)
    {
      std::unique_ptr<AVAEBlock<int({block_pointer})(long long,unsigned char,MIDIEventList const*)>>::reset[abi:ne200100](v13, 0);
    }
  }

  a1[14] = 0;
  caulk::pooled_semaphore_mutex::_unlock((a1 + 156));
  return caulk::pooled_semaphore_mutex::_unlock((v3 + 156));
}

void sub_1BA630A0C(_Unwind_Exception *a1)
{
  caulk::pooled_semaphore_mutex::_unlock((v1 + 156));
  caulk::pooled_semaphore_mutex::_unlock((v2 + 156));
  _Unwind_Resume(a1);
}

uint64_t std::lock[abi:ne200100]<caulk::pooled_semaphore_mutex,caulk::pooled_semaphore_mutex>(caulk::pooled_semaphore_mutex *this, caulk::pooled_semaphore_mutex *a2)
{
  while (1)
  {
    caulk::pooled_semaphore_mutex::_lock(this);
    result = caulk::pooled_semaphore_mutex::try_lock(a2);
    if (result)
    {
      break;
    }

    caulk::pooled_semaphore_mutex::_unlock(this);
    sched_yield();
    caulk::pooled_semaphore_mutex::_lock(a2);
    result = caulk::pooled_semaphore_mutex::try_lock(this);
    if (result)
    {
      break;
    }

    caulk::pooled_semaphore_mutex::_unlock(a2);
    sched_yield();
  }

  return result;
}

const void ***std::unique_ptr<AVAEBlock<int({block_pointer})(long long,unsigned char,long,unsigned char const*)>>::reset[abi:ne200100](const void ***result, const void **a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    if (*v2)
    {
      _Block_release(*v2);
      *v2 = 0;
    }

    JUMPOUT(0x1BFAF5800);
  }

  return result;
}

const void ***std::unique_ptr<AVAEBlock<int({block_pointer})(long long,unsigned char,MIDIEventList const*)>>::reset[abi:ne200100](const void ***result, const void **a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    if (*v2)
    {
      _Block_release(*v2);
      *v2 = 0;
    }

    JUMPOUT(0x1BFAF5800);
  }

  return result;
}

uint64_t AUGraphNodeBaseV3::CreateMIDIConnection(void *a1, uint64_t a2)
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = *a2;
  v5 = (*(*a1 + 16))(a1);
  if (!v4)
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v6 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      *&buf[4] = "AVAEInternal.h";
      v26 = 1024;
      v27 = 71;
      v28 = 2080;
      v29 = "AVAEGraphNode.mm";
      v30 = 1024;
      v31 = 964;
      v32 = 2080;
      v33 = "CreateMIDIConnection";
      v34 = 2080;
      v35 = "midiSrc != nullptr";
      _os_log_impl(&dword_1BA5AC000, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "midiSrc != nullptr"}];
  }

  std::lock[abi:ne200100]<caulk::pooled_semaphore_mutex,caulk::pooled_semaphore_mutex>((v4 + 156), (a1 + 156));
  a1[14] = v4;
  if (!v5)
  {
    goto LABEL_13;
  }

  v7 = v4[16];
  v8 = v4[17];
  v9 = v7;
  if (v7 != v8)
  {
    while (*v9 != v5)
    {
      if (++v9 == v8)
      {
        goto LABEL_14;
      }
    }
  }

  if (v9 == v8)
  {
LABEL_14:
    v11 = v4[18];
    if (v8 >= v11)
    {
      v13 = v8 - v7;
      if ((v13 + 1) >> 61)
      {
        std::vector<AUGraphNodeBaseV3 *>::__throw_length_error[abi:ne200100]();
      }

      v14 = v11 - v7;
      v15 = v14 >> 2;
      if (v14 >> 2 <= (v13 + 1))
      {
        v15 = v13 + 1;
      }

      if (v14 >= 0x7FFFFFFFFFFFFFF8)
      {
        v16 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v16 = v15;
      }

      if (v16)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<AUGraphNodeBaseV3 *>>(v16);
      }

      v17 = (8 * v13);
      *v17 = v5;
      v12 = 8 * v13 + 8;
      v18 = v4[16];
      v19 = v4[17] - v18;
      v20 = v17 - v19;
      memcpy(v17 - v19, v18, v19);
      v21 = v4[16];
      v4[16] = v20;
      v4[17] = v12;
      v4[18] = 0;
      if (v21)
      {
        operator delete(v21);
      }
    }

    else
    {
      *v8 = v5;
      v12 = (v8 + 1);
    }

    v4[17] = v12;
    v10 = a1[14];
  }

  else
  {
LABEL_13:
    v10 = v4;
  }

  v24 = v10;
  v22 = *(a2 + 24);
  if (v22 == -1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  *buf = &v24;
  (off_1F384DA78[v22])(buf, a2 + 16);
  caulk::pooled_semaphore_mutex::_unlock((a1 + 156));
  return caulk::pooled_semaphore_mutex::_unlock((v4 + 156));
}

void sub_1BA630E28(_Unwind_Exception *a1)
{
  caulk::pooled_semaphore_mutex::_unlock((v1 + 156));
  caulk::pooled_semaphore_mutex::_unlock((v2 + 156));
  _Unwind_Resume(a1);
}

void std::__throw_bad_variant_access[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x1E69E55D0] + 16;
}

const void ***std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<AUGraphNodeBaseV3::CreateMIDIConnection(AUGraphMIDIConnection const&)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,int({block_pointer})(long long,unsigned char,long,unsigned char const*),int({block_pointer})(long long,unsigned char,MIDIEventList const*)> const&>(uint64_t **a1, void **a2)
{
  v3 = *a1;
  v4 = **a1;
  result = (v4 + 176);
  v6 = *(v4 + 176);
  if (v6 && *v6)
  {
    result = std::unique_ptr<AVAEBlock<int({block_pointer})(long long,unsigned char,long,unsigned char const*)>>::reset[abi:ne200100](result, 0);
    v4 = *v3;
  }

  v7 = *a2;
  v10 = *(v4 + 184);
  v9 = (v4 + 184);
  v8 = v10;
  if (v10)
  {
    v8 = *v8;
  }

  if (v8 != v7)
  {
    if (v7)
    {
      operator new();
    }

    return std::unique_ptr<AVAEBlock<int({block_pointer})(long long,unsigned char,MIDIEventList const*)>>::reset[abi:ne200100](v9, 0);
  }

  return result;
}

const void ***std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<AUGraphNodeBaseV3::CreateMIDIConnection(AUGraphMIDIConnection const&)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,int({block_pointer})(long long,unsigned char,long,unsigned char const*),int({block_pointer})(long long,unsigned char,MIDIEventList const*)> const&>(uint64_t **a1, const void **a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = *a2;
  v7 = *(v3 + 176);
  v6 = (v3 + 176);
  v5 = v7;
  if (v7)
  {
    v5 = *v5;
  }

  if (v5 != v4)
  {
    if (v4)
    {
      operator new();
    }

    std::unique_ptr<AVAEBlock<int({block_pointer})(long long,unsigned char,long,unsigned char const*)>>::reset[abi:ne200100](v6, 0);
  }

  result = (*v2 + 184);
  if (*result && **result)
  {

    return std::unique_ptr<AVAEBlock<int({block_pointer})(long long,unsigned char,MIDIEventList const*)>>::reset[abi:ne200100](result, 0);
  }

  return result;
}

void AUGraphNodeBaseV3::AllocateInputBlock(const void ***this)
{
  if (!((*this)[38])(this))
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = ___ZL19CopyInnerInputBlockP17AUGraphNodeBaseV3_block_invoke;
    aBlock[3] = &__block_descriptor_40_e106_i44__0_I8r__AudioTimeStamp_dQdQ_SMPTETime_ssIIIssss_II_16I24q28__AudioBufferList_I_1_AudioBuffer_II_v___36l;
    aBlock[4] = this;
    _Block_copy(aBlock);
    operator new();
  }
}

uint64_t ___ZL19CopyInnerInputBlockP17AUGraphNodeBaseV3_block_invoke(uint64_t a1, unsigned int *a2, AudioTimeStamp *a3, uint64_t a4, uint64_t a5, AudioBufferList *a6)
{
  v23 = 0;
  v24 = -1;
  if (((*(**(a1 + 32) + 40))(*(a1 + 32), 1, a5, &v23) & 1) == 0)
  {
    v20 = (*(a1 + 32) + 160);
    v17 = 4294956420;
LABEL_11:
    atomic_store(v17, v20);
    return v17;
  }

  v11 = v23;
  v12 = v24;
  if (!caulk::pooled_semaphore_mutex::try_lock((v23 + 156)))
  {
    v20 = (*(a1 + 32) + 160);
    v17 = 4294956433;
    goto LABEL_11;
  }

  v13 = *(v11 + 112);
  if (v13)
  {
    AUGraphMIDINodeV3::RenderMIDI(v13, a2, a3, a4, v12, a6);
  }

  v14 = (*(*v11 + 296))(v11);
  v15 = (*(*v11 + 304))(v11);
  v17 = (*(v14 + 16))(v14, a2, a3, a4, v12, a6, v15);
  atomic_store(v17, (v11 + 160));
  if (!v17)
  {
    v18 = *(v11 + 8);
    if (v18)
    {
      if (a2)
      {
        v19 = *a2 | 8;
      }

      else
      {
        v19 = 8;
      }

      v22 = v19;
      AVAudioNodeTap::RenderCallback(v18, &v22, a3, v18[2], a4, a6, v16);
    }
  }

  caulk::pooled_semaphore_mutex::_unlock((v11 + 156));
  return v17;
}

uint64_t ___ZN17AUGraphNodeBaseV318AllocateInputBlockEv_block_invoke(uint64_t a1)
{
  v2 = (*(**(a1 + 40) + 288))(*(a1 + 40));
  if (caulk::pooled_semaphore_mutex::try_lock(v2))
  {
    v3 = (*(*(a1 + 32) + 16))();
    caulk::pooled_semaphore_mutex::_unlock(v2);
  }

  else
  {
    v3 = 4294956433;
    atomic_store(0xFFFFD591, (*(a1 + 40) + 160));
  }

  return v3;
}

uint64_t AUGraphMIDINodeV3::RenderMIDI(AUGraphMIDINodeV3 *this, unsigned int *a2, const AudioTimeStamp *a3, uint64_t a4, uint64_t a5, AudioBufferList *a6)
{
  v12 = *(this + 14);
  if (!v12 || (result = AUGraphMIDINodeV3::RenderMIDI(v12, a2, a3, a4, a5, a6), !result))
  {
    mHostTime = a3->mHostTime;
    if (*(this + 21) == mHostTime)
    {
      return 0;
    }

    else
    {
      v15 = (*(*this + 296))(this);
      result = (*(v15 + 16))(v15, a2, a3, a4, a5, a6, 0);
      *(this + 21) = mHostTime;
    }
  }

  return result;
}

uint64_t AUGraphNodeBaseV3::ConnectInput(uint64_t a1, int a2, uint64_t a3, uint64_t *a4)
{
  v8 = (*(*a1 + 288))(a1);
  v9 = v8;
  v10 = *a4;
  if (*a4)
  {
    v11 = (v10 + 156);
    std::lock[abi:ne200100]<caulk::pooled_semaphore_mutex,caulk::pooled_semaphore_mutex>((v10 + 156), v8);
    if (a2)
    {
      (*(*a1 + 312))(a1);
    }

    AUGraphNodeBase::ConnectInput(a1, a2, a3, a4);
    caulk::pooled_semaphore_mutex::_unlock(v9);
  }

  else
  {
    caulk::pooled_semaphore_mutex::_lock(v8);
    if (a2)
    {
      (*(*a1 + 312))(a1);
    }

    AUGraphNodeBase::ConnectInput(a1, a2, a3, a4);
    v11 = v9;
  }

  return caulk::pooled_semaphore_mutex::_unlock(v11);
}

void AUGraphNodeBaseV3::DestroyRecordingTap(AUGraphNodeBaseV3 *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    caulk::pooled_semaphore_mutex::_lock((this + 156));
    *(this + 1) = 0;
    caulk::pooled_semaphore_mutex::_unlock((this + 156));
    AVAudioNodeTap::Uninitialize(v1);
    *(v1 + 54) = 1;
    v3 = AVAudioEngineImpl::sMessenger;

    CADeprecated::RealtimeMessenger::PerformAsync(v3, (v1 + 1456));
  }
}

void AUGraphNodeBaseV3::CreateRecordingTap(uint64_t a1, uint64_t a2, int a3, void *a4, void *a5)
{
  v29 = *MEMORY[0x1E69E9840];
  if (!a5)
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v10 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v18 = "AVAEInternal.h";
      v19 = 1024;
      v20 = 71;
      v21 = 2080;
      v22 = "AVAEGraphNode.mm";
      v23 = 1024;
      v24 = 825;
      v25 = 2080;
      v26 = "CreateRecordingTap";
      v27 = 2080;
      v28 = "nil != callbackBlock";
      _os_log_impl(&dword_1BA5AC000, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "nil != callbackBlock"}];
  }

  if (*(a1 + 8))
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v11 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v18 = "AVAEInternal.h";
      v19 = 1024;
      v20 = 71;
      v21 = 2080;
      v22 = "AVAEGraphNode.mm";
      v23 = 1024;
      v24 = 828;
      v25 = 2080;
      v26 = "CreateRecordingTap";
      v27 = 2080;
      v28 = "nullptr == Tap()";
      _os_log_impl(&dword_1BA5AC000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "nullptr == Tap()"}];
  }

  caulk::pooled_semaphore_mutex::_lock((a1 + 156));
  if (a4)
  {
    [a4 sampleRate];
    if (v12 <= 0.0 || ![a4 channelCount])
    {
      if (AVAudioEngineLogCategory(void)::once != -1)
      {
        dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
      }

      v13 = *AVAudioEngineLogCategory(void)::category;
      if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316418;
        v18 = "AVAEInternal.h";
        v19 = 1024;
        v20 = 71;
        v21 = 2080;
        v22 = "AVAEGraphNode.mm";
        v23 = 1024;
        v24 = 834;
        v25 = 2080;
        v26 = "CreateRecordingTap";
        v27 = 2080;
        v28 = "IsFormatSampleRateAndChannelCountValid(format)";
        _os_log_impl(&dword_1BA5AC000, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
      }

      [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "IsFormatSampleRateAndChannelCountValid(format)"}];
    }

    if (((*(**(a1 + 24) + 64))(*(a1 + 24), a2, a4) & 1) == 0)
    {
      [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:@"Failed to set output format on node to tap"];
    }
  }

  v14 = operator new(0x600uLL, 0x40uLL);
  v15 = (*(**(a1 + 24) + 40))(*(a1 + 24));
  v16 = (*(**(a1 + 24) + 240))(*(a1 + 24), a2);
  AVAudioNodeTap::AVAudioNodeTap(v14, v15, v16, a3, a5);
}

const void **AUGraphNodeIOV3::SetOutputProvider(uint64_t a1, const void **a2)
{
  result = (*(*a1 + 320))(a1);
  if (result != a2)
  {
    v5 = *(*(**(a1 + 24) + 40))(*(a1 + 24));
    (*(v5 + 344))();
    if (a2)
    {
      operator new();
    }

    return std::unique_ptr<AVAEBlock<int({block_pointer})(unsigned int *,AudioTimeStamp const*,unsigned int,long,AudioBufferList *)>>::reset[abi:ne200100]((a1 + 168), 0);
  }

  return result;
}

const void **AUGraphNodeIOV3::DeallocateInputBlock(AUGraphNodeIOV3 *this)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = *(*(**(this + 3) + 40))(*(this + 3));
  if ((*(v2 + 336))())
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v3 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v6 = "AVAEInternal.h";
      v7 = 1024;
      v8 = 71;
      v9 = 2080;
      v10 = "AVAEGraphNode.mm";
      v11 = 1024;
      v12 = 1074;
      v13 = 2080;
      v14 = "DeallocateInputBlock";
      v15 = 2080;
      v16 = "false == AUI().IsRunning()";
      _os_log_impl(&dword_1BA5AC000, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "false == AUI().IsRunning()"}];
  }

  (*(*this + 384))(this, 0);
  return std::unique_ptr<AVAEBlock<int({block_pointer})(unsigned int *,AudioTimeStamp const*,unsigned int,long,AudioBufferList *)>>::reset[abi:ne200100](this + 15, 0);
}

uint64_t AUGraphNodeIOV3::LastRenderError(AUGraphNodeIOV3 *this)
{
  result = atomic_load(this + 40);
  if (!result)
  {
    v8 = v1;
    v9 = v2;
    v5 = (*(**(this + 3) + 40))(*(this + 3));
    v7 = 0;
    v6 = 4;
    (*(*v5 + 240))(v5, 22, 0, 0, &v7, &v6);
    return v7;
  }

  return result;
}

const void ***AUGraphNodeIOV3::DeallocateInputHandler(AUGraphNodeIOV3 *this)
{
  v2 = *(*(**(this + 3) + 40))(*(this + 3));
  (*(v2 + 352))();

  return std::unique_ptr<AVAEBlock<void({block_pointer})(unsigned int *,AudioTimeStamp const*,unsigned int,long)>>::reset[abi:ne200100](this + 22, 0);
}

const void ***std::unique_ptr<AVAEBlock<void({block_pointer})(unsigned int *,AudioTimeStamp const*,unsigned int,long)>>::reset[abi:ne200100](const void ***result, const void **a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    if (*v2)
    {
      _Block_release(*v2);
      *v2 = 0;
    }

    JUMPOUT(0x1BFAF5800);
  }

  return result;
}

uint64_t AUGraphNodeIOV3::AllocateInputHandler(const void ***this, const AURenderCallbackStruct *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (!a2->inputProc)
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v3 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v6 = "AVAEInternal.h";
      v7 = 1024;
      v8 = 71;
      v9 = 2080;
      v10 = "AVAEGraphNode.mm";
      v11 = 1024;
      v12 = 1098;
      v13 = 2080;
      v14 = "AllocateInputHandler";
      v15 = 2080;
      v16 = "inRenderCallback.inputProc";
      _os_log_impl(&dword_1BA5AC000, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "inRenderCallback.inputProc"}];
  }

  result = ((*this)[41])(this);
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t AUGraphNodeIOV3::InputHandler(AUGraphNodeIOV3 *this)
{
  v1 = *(this + 22);
  if (v1)
  {
    return *v1;
  }

  else
  {
    return 0;
  }
}

uint64_t AUGraphNodeIOV3::OutputProvider(AUGraphNodeIOV3 *this)
{
  v1 = *(this + 21);
  if (v1)
  {
    return *v1;
  }

  else
  {
    return 0;
  }
}

uint64_t AUGraphNodeIOV3::AllocateInputBlock(const void ***this)
{
  AUGraphNodeBaseV3::AllocateInputBlock(this);
  result = ((*this)[40])(this);
  if (!result)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = ___ZN15AUGraphNodeIOV318AllocateInputBlockEv_block_invoke;
    v3[3] = &__block_descriptor_40_e106_i44__0_I8r__AudioTimeStamp_dQdQ_SMPTETime_ssIIIssss_II_16I24q28__AudioBufferList_I_1_AudioBuffer_II_v___36l;
    v3[4] = this;
    return ((*this)[48])(this, v3);
  }

  return result;
}

uint64_t ___ZN15AUGraphNodeIOV318AllocateInputBlockEv_block_invoke(uint64_t a1)
{
  v1 = *((*(**(a1 + 32) + 304))(*(a1 + 32)) + 16);

  return v1();
}

uint64_t AUGraphNodeIOV3::SetInputCallback(AUGraphNodeIOV3 *this, const AURenderCallbackStruct *a2)
{
  v2 = *this;
  if (a2->inputProc)
  {
    return (*(v2 + 336))();
  }

  else
  {
    return (*(v2 + 344))();
  }
}

void AUGraphNodeIOV3::~AUGraphNodeIOV3(const void ***this)
{
  AUGraphNodeIOV3::~AUGraphNodeIOV3(this);

  JUMPOUT(0x1BFAF5800);
}

{
  *this = &unk_1F384C658;
  AUGraphNodeIOV3::DeallocateInputBlock(this);
  ((*this)[43])(this);
  std::unique_ptr<AVAEBlock<void({block_pointer})(unsigned int *,AudioTimeStamp const*,unsigned int,long)>>::reset[abi:ne200100](this + 22, 0);
  std::unique_ptr<AVAEBlock<int({block_pointer})(unsigned int *,AudioTimeStamp const*,unsigned int,long,AudioBufferList *)>>::reset[abi:ne200100](this + 21, 0);

  AUGraphNodeBaseV3::~AUGraphNodeBaseV3(this);
}

void AUGraphNodeBaseV3::~AUGraphNodeBaseV3(const void ***this)
{
  *this = &unk_1F384BE00;
  std::unique_ptr<AVAEBlock<int({block_pointer})(unsigned int *,AudioTimeStamp const*,unsigned int,long,AudioBufferList *,int({block_pointer})(unsigned int *,AudioTimeStamp const*,unsigned int,long,AudioBufferList *))>>::reset[abi:ne200100](this + 13, 0);
  ((*this)[47])(this);
  v2 = this[16];
  if (v2)
  {
    this[17] = v2;
    operator delete(v2);
  }

  std::unique_ptr<AVAEBlock<int({block_pointer})(unsigned int *,AudioTimeStamp const*,unsigned int,long,AudioBufferList *)>>::reset[abi:ne200100](this + 15, 0);
  std::unique_ptr<AVAEBlock<int({block_pointer})(unsigned int *,AudioTimeStamp const*,unsigned int,long,AudioBufferList *,int({block_pointer})(unsigned int *,AudioTimeStamp const*,unsigned int,long,AudioBufferList *))>>::reset[abi:ne200100](this + 13, 0);
  std::unique_ptr<AVAEBlock<int({block_pointer})(long long,unsigned char,MIDIEventList const*)>>::reset[abi:ne200100](this + 12, 0);

  AUGraphNodeBase::~AUGraphNodeBase(this);
}

const void ***std::unique_ptr<AVAEBlock<int({block_pointer})(unsigned int *,AudioTimeStamp const*,unsigned int,long,AudioBufferList *,int({block_pointer})(unsigned int *,AudioTimeStamp const*,unsigned int,long,AudioBufferList *))>>::reset[abi:ne200100](const void ***result, const void **a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    if (*v2)
    {
      _Block_release(*v2);
      *v2 = 0;
    }

    JUMPOUT(0x1BFAF5800);
  }

  return result;
}

void AUGraphNodeBase::~AUGraphNodeBase(AUGraphNodeBase *this)
{
  *this = &unk_1F384C7F0;
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 1) = 0;
    __dmb(0xBu);
    AVAudioNodeTap::Uninitialize(v2);
    *(v2 + 54) = 1;
    CADeprecated::RealtimeMessenger::PerformAsync(AVAudioEngineImpl::sMessenger, (v2 + 1456));
  }

  v3 = *(this + 9);
  if (v3)
  {
    *(this + 10) = v3;
    operator delete(v3);
  }

  v4 = *(this + 6);
  if (v4)
  {
    *(this + 7) = v4;
    operator delete(v4);
  }
}

const void ***AUGraphNodeGenericIOV3::SetManualRenderingInputBlock(const void ***a1, const void ***a2)
{
  result = ((*a1)[49])(a1);
  if (result != a2)
  {
    v5[0] = GenericInputNodeRenderCallback;
    v5[1] = a1;
    (*(*a1[3] + 24))(a1[3], 0, v5);
    result = std::unique_ptr<AVAEBlock<AudioBufferList const*({block_pointer})>>::reset[abi:ne200100](a1 + 24, 0);
    if (a2)
    {
      operator new();
    }
  }

  return result;
}

const void ***std::unique_ptr<AVAEBlock<AudioBufferList const*({block_pointer})(unsigned int)>>::reset[abi:ne200100](const void ***result, const void **a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    if (*v2)
    {
      _Block_release(*v2);
      *v2 = 0;
    }

    JUMPOUT(0x1BFAF5800);
  }

  return result;
}

uint64_t GenericInputNodeRenderCallback(unsigned int *a1, unsigned int *a2, const AudioTimeStamp *a3, uint64_t a4, uint64_t a5, AudioBufferList *a6)
{
  (*(*a1 + 400))(a1, 0, a3, a4);
  if ((*(*a1 + 392))(a1))
  {
    v9 = (*(*a1 + 392))(a1);
    v10 = (*(v9 + 16))(v9, a5);
    if (v10 && (v11 = *v10, v11) && v10[3] == a6->mBuffers[0].mDataByteSize)
    {
      if (v11 != a6->mNumberBuffers)
      {
        result = 4294967246;
        goto LABEL_14;
      }

      p_mData = &a6->mBuffers[0].mData;
      v13 = (v10 + 4);
      do
      {
        *p_mData = *v13;
        *(p_mData - 1) = *(v13 - 1);
        p_mData += 2;
        v13 += 2;
        --v11;
      }

      while (v11);
    }

    else
    {
      (*(*a1 + 400))(a1, 1);
      if (a6->mNumberBuffers)
      {
        v14 = 0;
        v15 = &a6->mBuffers[0].mData;
        do
        {
          bzero(*v15, *(v15 - 1));
          ++v14;
          v15 += 2;
        }

        while (v14 < a6->mNumberBuffers);
      }
    }

    result = 0;
  }

  else
  {
    result = 4294956420;
  }

LABEL_14:
  atomic_store(result, a1 + 40);
  return result;
}

uint64_t AUGraphNodeGenericIOV3::ManualRenderingInputBlock(AUGraphNodeGenericIOV3 *this)
{
  v1 = *(this + 24);
  if (v1)
  {
    return *v1;
  }

  else
  {
    return 0;
  }
}

uint64_t AUGraphNodeGenericIOV3::AllocateInputBlock(const void ***this)
{
  AUGraphNodeBaseV3::AllocateInputBlock(this);
  result = ((*this)[40])(this);
  if (!result)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = ___ZN22AUGraphNodeGenericIOV318AllocateInputBlockEv_block_invoke;
    v3[3] = &__block_descriptor_40_e106_i44__0_I8r__AudioTimeStamp_dQdQ_SMPTETime_ssIIIssss_II_16I24q28__AudioBufferList_I_1_AudioBuffer_II_v___36l;
    v3[4] = this;
    return ((*this)[48])(this, v3);
  }

  return result;
}

uint64_t ___ZN22AUGraphNodeGenericIOV318AllocateInputBlockEv_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(a1 + 32);
  v13 = v12 + 40;
  v14 = (*(*v12 + 296))(v12);
  v15 = (*(**(a1 + 32) + 304))();
  result = (*(v14 + 16))(v14, a2, a3, a4, a5, a6, v15);
  atomic_store(result, v13);
  return result;
}

uint64_t AUGraphNodeGenericIOV3::RenderToABL(AUGraphNodeGenericIOV3 *this, uint64_t a2, AudioBufferList *a3, uint64_t a4)
{
  if (!a3)
  {
    return 4294967246;
  }

  if (!a3->mNumberBuffers)
  {
    return 4294967246;
  }

  v10 = 0;
  v8[0] = a4;
  v9 = 1;
  v6 = (*(*this + 320))(this);
  return (*(v6 + 16))(v6, &v10, v8, a2, 0, a3);
}

BOOL AUGraphNodeGenericIOV3::SetManualRenderingRenderCallback(uint64_t a1, void *a2, uint64_t a3)
{
  v14 = *MEMORY[0x1E69E9840];
  if (*(a1 + 184) != 1)
  {
    return 0;
  }

  if (([a2 isEqual:{(*(**(a1 + 24) + 72))(*(a1 + 24), 0)}] & 1) != 0 && (*(*a1 + 392))(a1) == a3)
  {
    return 1;
  }

  if ((*(*a1 + 392))(a1) != a3)
  {
    (*(*a1 + 408))(a1, 0);
  }

  if ((*(**(a1 + 24) + 80))(*(a1 + 24), 0, a2))
  {
    (*(*a1 + 408))(a1, a3);
    return 1;
  }

  if (AVAudioEngineLogCategory(void)::once != -1)
  {
    dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
  }

  v7 = *AVAudioEngineLogCategory(void)::category;
  result = os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR);
  if (result)
  {
    v8 = 136315650;
    v9 = "AVAEGraphNode.mm";
    v10 = 1024;
    v11 = 1459;
    v12 = 2080;
    v13 = [objc_msgSend(a2 "description")];
    _os_log_impl(&dword_1BA5AC000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d Error setting manual rendering mode input PCM format on input node! %s", &v8, 0x1Cu);
    return 0;
  }

  return result;
}

void AUGraphNodeGenericIOV3::~AUGraphNodeGenericIOV3(const void ***this)
{
  AUGraphNodeGenericIOV3::~AUGraphNodeGenericIOV3(this);

  JUMPOUT(0x1BFAF5800);
}

{
  *this = &unk_1F384A4E8;
  AUGraphNodeGenericIOV3::SetManualRenderingInputBlock(this, 0);
  std::unique_ptr<AVAEBlock<AudioBufferList const*({block_pointer})>>::reset[abi:ne200100](this + 24, 0);

  AUGraphNodeIOV3::~AUGraphNodeIOV3(this);
}

uint64_t AUGraphMIDINodeV3::Uninitialize(AUGraphMIDINodeV3 *this)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = AUGraphNodeBase::Uninitialize(this);
  v3 = *(*(**(this + 3) + 40))(*(this + 3));
  if ([(*(v3 + 304))() hostMIDIProtocol] <= 0)
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v4 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v7 = "AVAEInternal.h";
      v8 = 1024;
      v9 = 71;
      v10 = 2080;
      v11 = "AVAEGraphNode.mm";
      v12 = 1024;
      v13 = 1291;
      v14 = 2080;
      v15 = "Uninitialize";
      v16 = 2080;
      v17 = "AUI().GetHostMIDIProtocol() > 0";
      _os_log_impl(&dword_1BA5AC000, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "AUI().GetHostMIDIProtocol() > 0"}];
  }

  AUGraphMIDINodeV3::SetMIDIOutputEventListBlock(this, 0);
  return v2;
}

const void ***AUGraphMIDINodeV3::SetMIDIOutputEventListBlock(const void ***result, const void **a2)
{
  v4 = result + 12;
  v3 = result[12];
  if (v3)
  {
    v3 = *v3;
  }

  if (v3 != a2)
  {
    v5 = *(*(*result[3] + 5))(result[3]);
    [(*(v5 + 304))() setMIDIOutputEventListBlock:0];
    if (a2)
    {
      operator new();
    }

    return std::unique_ptr<AVAEBlock<int({block_pointer})(long long,unsigned char,MIDIEventList const*)>>::reset[abi:ne200100](v4, 0);
  }

  return result;
}

void AUGraphMIDINodeV3::Initialize(AUGraphMIDINodeV3 *this)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = *(*(**(this + 3) + 40))(*(this + 3));
  if ([(*(v2 + 304))() hostMIDIProtocol] <= 0)
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v3 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      *&buf[4] = "AVAEInternal.h";
      *&buf[12] = 1024;
      *&buf[14] = 71;
      *&buf[18] = 2080;
      *&buf[20] = "AVAEGraphNode.mm";
      *&buf[28] = 1024;
      *&buf[30] = 1276;
      *&buf[34] = 2080;
      *&buf[36] = "Initialize";
      *&buf[44] = 2080;
      *&buf[46] = "AUI().GetHostMIDIProtocol() > 0";
      _os_log_impl(&dword_1BA5AC000, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "AUI().GetHostMIDIProtocol() > 0"}];
  }

  if (MEMORY[0x1EEE77290])
  {
    v4 = *(this + 12);
    if (!v4 || !*v4)
    {
      v5[0] = MEMORY[0x1E69E9820];
      v5[1] = 3221225472;
      v5[2] = ___ZN17AUGraphMIDINodeV332AllocateMIDIOutputEventListBlockEv_block_invoke;
      v5[3] = &__block_descriptor_40_e61_i28__0q8C16r__MIDIEventList_iI_1_MIDIEventPacket_QI_64I____20l;
      v5[4] = this;
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = ___ZN17AUGraphMIDINodeV332AllocateMIDIOutputEventListBlockEv_block_invoke_2;
      *&buf[24] = &unk_1E7EF55C8;
      *&buf[32] = v5;
      *&buf[40] = this;
      AUGraphMIDINodeV3::SetMIDIOutputEventListBlock(this, buf);
    }
  }

  operator new();
}

uint64_t ___ZN17AUGraphMIDINodeV332AllocateMIDIOutputEventListBlockEv_block_invoke(uint64_t a1, uint64_t a2, char a3, _DWORD *a4)
{
  v17[96] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a2;
  v8 = _ZN5caulk16inplace_functionIFvPKN4MIDI16LegacyPacketListEELm48ELm8ENS_23inplace_function_detail9rt_vtableEE16k_wrapper_vtableIZZN17AUGraphMIDINodeV332AllocateMIDIOutputEventListBlockEvEUb_E3__3EE;
  v9.n128_u64[0] = a1 + 32;
  v9.n128_u64[1] = &v7;
  v10 = &v6;
  v12 = v9;
  v13 = &v6;
  v14 = &unk_1F3849418;
  v11 = &caulk::inplace_function_detail::rt_vtable<void,MIDI::LegacyPacketList const*>::empty;
  v15 = _ZN5caulk16inplace_functionIFvPKN4MIDI16LegacyPacketListEELm48ELm8ENS_23inplace_function_detail9rt_vtableEE16k_wrapper_vtableIZZN17AUGraphMIDINodeV332AllocateMIDIOutputEventListBlockEvEUb_E3__3EE;
  _ZZN5caulk23inplace_function_detail9rt_vtableIvJPKN4MIDI16LegacyPacketListEEEC1IZZN17AUGraphMIDINodeV332AllocateMIDIOutputEventListBlockEvEUb_E3__3EENS0_7wrapperIT_EEENUlPvSD_E0_8__invokeESD_SD_(v16, &v12);
  bzero(v17, 0x300uLL);
  MIDI::MIDIPacketList_Deliverer::operator()(&v14, a4);
  v14 = &unk_1F3849418;
  (v15[3])(v16);
  (v8[3])(&v9);
  return 0;
}

void sub_1BA633EB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t ___ZN17AUGraphMIDINodeV332AllocateMIDIOutputEventListBlockEv_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a1 + 40);
  v9 = v8[16];
  v10 = v8[17];
  if (v9 != v10)
  {
    do
    {
      v11 = *v9++;
      v12 = *(*(**(v11 + 24) + 40))(*(v11 + 24));
      v13 = (*(v12 + 328))();
      (*(v13 + 16))(v13, a2, a3, a4);
    }

    while (v9 != v10);
    v8 = *(a1 + 40);
  }

  v14 = v8[23];
  if (v14)
  {
    v15 = *v14;
    if (*v14)
    {
      goto LABEL_9;
    }
  }

  v16 = v8[22];
  if (v16 && *v16)
  {
    v15 = *(a1 + 32);
LABEL_9:
    (*(v15 + 16))(v15, a2, a3, a4);
  }

  return 0;
}

uint64_t MIDI::MIDIPacketList_Deliverer::operator()(uint64_t a1, _DWORD *a2)
{
  __dst[1] = *MEMORY[0x1E69E9840];
  v60 = *(a1 + 8);
  (*(v60 + 8))(&v61, a1 + 16);
  v63 = 0;
  v62 = &v64;
  v51 = a2;
  if (*a2 == 2)
  {
    if (!a2[1])
    {
      return MIDI::PacketizerBase<MIDI::LegacyPacketList>::~PacketizerBase(&v60);
    }

    v27 = 0;
    v28 = a2 + 2;
    v49 = a1 + 64;
LABEL_93:
    v50 = v27;
    v29 = v28[2];
    v56 = v28 + 3;
    v57 = v29;
    v58 = *v28;
    v59 = 0;
    while (1)
    {
      do
      {
        while (1)
        {
          do
          {
            v54 = 0;
            v55 = 0;
            v53 = 0;
            if (!MIDI::EventList::PacketReader::read(&v56, &v55, &v53))
            {
              v28 += v28[2] + 3;
              v27 = v50 + 1;
              if ((v50 + 1) >= v51[1])
              {
                return MIDI::PacketizerBase<MIDI::LegacyPacketList>::~PacketizerBase(&v60);
              }

              goto LABEL_93;
            }

            __dst[0] = v55;
            v30 = v53;
            if (((1 << (v53 >> 28)) & 0xA02F) != 0)
            {
              v31 = HIDWORD(v53);
              goto LABEL_97;
            }
          }

          while (v53 >> 28 != 4);
          v32 = BYTE3(v53) & 0xF | 0x20;
          v33 = HIDWORD(v53);
          v34 = BYTE2(v53) >> 4;
          if (v34 <= 0xB)
          {
            break;
          }

          switch(v34)
          {
            case 0xCu:
              v45 = v32 << 24;
              v46 = BYTE2(v53) << 16;
              if (v53)
              {
                v47 = (v46 - 0x100000) | (v32 << 24);
                MIDI::LegacyPacketList::write_UP<MIDI::MIDIPacketList_Deliverer::operator()(MIDI::EventList const*)::{lambda(unsigned long long,MIDI::UniversalPacket const&)#2}::operator() const(unsigned long long,MIDI::UniversalPacket const&)::{lambda(MIDI::UniversalPacket const&)#1}::operator() const(MIDI::UniversalPacket const&)::{lambda(std::span<unsigned char const,18446744073709551615ul>)#1}>((v46 - 0x100000) & 0xFFFFFF80 | (v32 << 24) | (HIDWORD(v53) >> 8) & 0x7F, 0, &v60, __dst);
                MIDI::LegacyPacketList::write_UP<MIDI::MIDIPacketList_Deliverer::operator()(MIDI::EventList const*)::{lambda(unsigned long long,MIDI::UniversalPacket const&)#2}::operator() const(unsigned long long,MIDI::UniversalPacket const&)::{lambda(MIDI::UniversalPacket const&)#1}::operator() const(MIDI::UniversalPacket const&)::{lambda(std::span<unsigned char const,18446744073709551615ul>)#1}>(v47 | v33 & 0x7F | 0x2000, 0, &v60, __dst);
              }

              v31 = 0;
              v30 = HIWORD(v33) & 0x7F00 | v45 | v46;
LABEL_97:
              MIDI::LegacyPacketList::write_UP<MIDI::MIDIPacketList_Deliverer::operator()(MIDI::EventList const*)::{lambda(unsigned long long,MIDI::UniversalPacket const&)#2}::operator() const(unsigned long long,MIDI::UniversalPacket const&)::{lambda(MIDI::UniversalPacket const&)#1}::operator() const(MIDI::UniversalPacket const&)::{lambda(std::span<unsigned char const,18446744073709551615ul>)#1}>(v30, v31, &v60, __dst);
              break;
            case 0xDu:
              v31 = 0;
              v30 = (BYTE2(v53) << 16) | (v32 << 24) | (HIDWORD(v53) >> 25 << 8);
              goto LABEL_97;
            case 0xEu:
              v31 = 0;
              v30 = (HIDWORD(v53) >> 10) & 0x7F00 | (BYTE2(v53) << 16) | (v32 << 24) | (HIDWORD(v53) >> 25);
              goto LABEL_97;
          }
        }

        if (v34 - 8 < 4)
        {
          v31 = 0;
          v35 = v34 == 9;
          if (HIDWORD(v53) >> 25)
          {
            v35 = HIDWORD(v53) >> 25;
          }

          v30 = v35 | (BYTE2(v53) << 16) | (v32 << 24) | v53 & 0x7F00;
          goto LABEL_97;
        }
      }

      while (v34 - 2 >= 2);
      v36 = (v53 >> 16) & 0xF;
      v37 = (v49 + 48 * (BYTE3(v53) & 0xF) + 3 * v36);
      v38 = (v53 >> 8) & 0x7F;
      v39 = v53 & 0x7F;
      v40 = (v53 & 0x100000) != 0 ? 2 : 1;
      if (v40 != *v37 || v38 != v37[1])
      {
        break;
      }

      v41 = v36 | 0xB0;
      if (v39 != v37[2])
      {
        goto LABEL_117;
      }

      v42 = (v32 << 24) | (v41 << 16);
LABEL_121:
      MIDI::LegacyPacketList::write_UP<MIDI::MIDIPacketList_Deliverer::operator()(MIDI::EventList const*)::{lambda(unsigned long long,MIDI::UniversalPacket const&)#2}::operator() const(unsigned long long,MIDI::UniversalPacket const&)::{lambda(MIDI::UniversalPacket const&)#1}::operator() const(MIDI::UniversalPacket const&)::{lambda(std::span<unsigned char const,18446744073709551615ul>)#1}>(v42 | (v33 >> 25) | 0x600, 0, &v60, __dst);
      v44 = (v33 >> 18) & 0x7F;
      if (v44)
      {
        v31 = 0;
        v30 = v44 | v42 | 0x2600u;
        goto LABEL_97;
      }
    }

    v41 = v36 | 0xB0;
LABEL_117:
    if ((v53 & 0x100000) != 0)
    {
      v43 = 25344;
    }

    else
    {
      v43 = 25856;
    }

    v42 = (v32 << 24) | (v41 << 16);
    MIDI::LegacyPacketList::write_UP<MIDI::MIDIPacketList_Deliverer::operator()(MIDI::EventList const*)::{lambda(unsigned long long,MIDI::UniversalPacket const&)#2}::operator() const(unsigned long long,MIDI::UniversalPacket const&)::{lambda(MIDI::UniversalPacket const&)#1}::operator() const(MIDI::UniversalPacket const&)::{lambda(std::span<unsigned char const,18446744073709551615ul>)#1}>(v42 | v43 | v38, 0, &v60, __dst);
    MIDI::LegacyPacketList::write_UP<MIDI::MIDIPacketList_Deliverer::operator()(MIDI::EventList const*)::{lambda(unsigned long long,MIDI::UniversalPacket const&)#2}::operator() const(unsigned long long,MIDI::UniversalPacket const&)::{lambda(MIDI::UniversalPacket const&)#1}::operator() const(MIDI::UniversalPacket const&)::{lambda(std::span<unsigned char const,18446744073709551615ul>)#1}>((v43 + v42 + v39 - 256), 0, &v60, __dst);
    *v37 = v40;
    v37[1] = v38;
    v37[2] = v39;
    goto LABEL_121;
  }

  if (*a2 != 1)
  {
    std::terminate();
  }

  if (a2[1])
  {
    v4 = 0;
    v5 = a2 + 2;
    do
    {
      v6 = v5[2];
      v56 = v5 + 3;
      v57 = v6;
      v58 = *v5;
      v59 = 0;
      while (1)
      {
        v52 = 0;
        v53 = 0;
        v54 = 0;
        if (!MIDI::EventList::PacketReader::read(&v56, &v52, &v53))
        {
          break;
        }

        v7 = v52;
        v8 = v53;
        v9 = v53 >> 28;
        if (v53 >> 28 == 3)
        {
          v17 = (v53 >> 16) & 0xF;
          if (v17 <= 6 && BYTE2(v53) <= 0x3Fu)
          {
            v55 = _byteswap_uint64(__PAIR64__(v53, HIDWORD(v53)));
            if (BYTE2(v53) > 0x1Fu)
            {
              v10 = 0;
              v18 = __dst;
              if (!v17)
              {
                goto LABEL_49;
              }

LABEL_48:
              memcpy(v18, &v55 + 2, (v53 >> 16) & 0xF);
              v10 += (v17 - 1) + 1;
              goto LABEL_49;
            }

            LOBYTE(__dst[0]) = -16;
            v18 = (__dst + 1);
            v10 = 1;
            if (v17)
            {
              goto LABEL_48;
            }

LABEL_49:
            if ((((v8 >> 20) + 3) & 2) != 0)
            {
              *(__dst + v10++) = -9;
            }

            v11 = v62;
            if (v63)
            {
              if (*v62 == v7)
              {
                v21 = *(v62 + 4);
                if (*(v62 + v21 + 9) != 247 && LOBYTE(__dst[0]) != 240)
                {
                  if (v62 + v10 + v21 + 10 > __dst)
                  {
                    goto LABEL_60;
                  }

                  goto LABEL_62;
                }
              }

              else
              {
                v21 = *(v62 + 4);
              }

              v11 = (v62 + v21 + 13) & 0xFFFFFFFFFFFFFFFCLL;
            }

            if (v11 + v10 + 10 > __dst)
            {
LABEL_60:
              v22 = MIDI::PacketizerBase<MIDI::LegacyPacketList>::begin_new_packet(&v60, v7, __dst, v10);
LABEL_74:
              v11 = v22;
              goto LABEL_85;
            }

            v21 = 0;
            ++v63;
            *v11 = v7;
            *(v11 + 8) = 0;
LABEL_62:
            v23 = (v11 + v21 + 10);
            v24 = __dst;
            if (v10 > 1)
            {
              if (v10 != 2)
              {
                if (v10 != 3)
                {
                  if (v10 != 4)
                  {
                    goto LABEL_88;
                  }

                  goto LABEL_80;
                }

LABEL_81:
                v25 = *v24;
                v24 = (v24 + 1);
                *v23++ = v25;
              }

LABEL_82:
              v26 = *v24;
              v24 = (v24 + 1);
              *v23++ = v26;
              goto LABEL_83;
            }

            if (v10)
            {
              if (v10 != 1)
              {
                goto LABEL_88;
              }

              goto LABEL_83;
            }

LABEL_84:
            *(v11 + 8) += v10;
LABEL_85:
            v62 = v11;
          }
        }

        else if (v9 == 2)
        {
          v13 = v53 & 0xE00000;
          LOBYTE(__dst[0]) = BYTE2(v53);
          BYTE1(__dst[0]) = BYTE1(v53) & 0x7F;
          if ((v53 & 0xE00000) == 0xC00000)
          {
            v14 = 2;
          }

          else
          {
            v14 = 3;
          }

          if (v13 != 12582912)
          {
            BYTE2(__dst[0]) = v53 & 0x7F;
          }

          v15 = v62;
          if (v63)
          {
            if (*v62 == v52)
            {
              v16 = *(v62 + 4);
              if (BYTE2(v53) != 240 && *(v62 + v16 + 9) != 247)
              {
                if (v62 + v14 + v16 + 10 > __dst)
                {
                  goto LABEL_40;
                }

                goto LABEL_42;
              }
            }

            else
            {
              v16 = *(v62 + 4);
            }

            v15 = (v62 + v16 + 13) & 0xFFFFFFFFFFFFFFFCLL;
          }

          if (v15 + v14 + 10 > __dst)
          {
LABEL_40:
            v15 = MIDI::PacketizerBase<MIDI::LegacyPacketList>::begin_new_packet(&v60, v52, __dst, v14);
            goto LABEL_46;
          }

          v16 = 0;
          ++v63;
          *v15 = v52;
          *(v15 + 8) = 0;
LABEL_42:
          v19 = (v15 + v16 + 10);
          if (v13 == 12582912)
          {
            v20 = __dst;
          }

          else
          {
            *v19 = __dst[0];
            v19 = (v15 + v16 + 11);
            v20 = (__dst + 1);
          }

          *v19 = *v20;
          v19[1] = *(v20 + 1);
          *(v15 + 8) += v14;
LABEL_46:
          v62 = v15;
        }

        else if (v9 == 1 && BYTE2(v53) >= 0xF0u && ((0x22B1uLL >> (BYTE2(v53) + 16)) & 1) == 0)
        {
          v10 = MIDI::_gMessageSize[BYTE2(v53) - 240];
          LOBYTE(__dst[0]) = BYTE2(v53);
          if (((0xDD40uLL >> (BYTE2(v53) + 16)) & 1) == 0)
          {
            BYTE1(__dst[0]) = BYTE1(v53) & 0x7F;
            if (BYTE2(v53) == 242)
            {
              BYTE2(__dst[0]) = v53 & 0x7F;
            }
          }

          v11 = v62;
          if (v63)
          {
            if (*v62 == v52)
            {
              v12 = *(v62 + 4);
              if (BYTE2(v53) != 240 && *(v62 + v12 + 9) != 247)
              {
                if (v62 + v12 + v10 + 10 > __dst)
                {
                  goto LABEL_73;
                }

                goto LABEL_76;
              }
            }

            else
            {
              v12 = *(v62 + 4);
            }

            v11 = (v62 + v12 + 13) & 0xFFFFFFFFFFFFFFFCLL;
          }

          if (v11 + v10 + 10 > __dst)
          {
LABEL_73:
            v22 = MIDI::PacketizerBase<MIDI::LegacyPacketList>::begin_new_packet(&v60, v52, __dst, v10);
            goto LABEL_74;
          }

          v12 = 0;
          ++v63;
          *v11 = v52;
          *(v11 + 8) = 0;
LABEL_76:
          v23 = (v11 + v12 + 10);
          v24 = __dst;
          if (v10 > 1)
          {
            if (v10 != 2)
            {
              if (v10 != 3)
              {
                if (v10 != 4)
                {
LABEL_88:
                  memmove(v23, __dst, v10);
                  goto LABEL_84;
                }

LABEL_80:
                *v23++ = __dst[0];
                v24 = (__dst + 1);
              }

              goto LABEL_81;
            }

            goto LABEL_82;
          }

          if (!v10)
          {
            goto LABEL_84;
          }

LABEL_83:
          *v23 = *v24;
          goto LABEL_84;
        }
      }

      v5 += v5[2] + 3;
      ++v4;
    }

    while (v4 < v51[1]);
  }

  return MIDI::PacketizerBase<MIDI::LegacyPacketList>::~PacketizerBase(&v60);
}

void MIDI::MIDIPacketList_Deliverer::~MIDIPacketList_Deliverer(MIDI::MIDIPacketList_Deliverer *this)
{
  *this = &unk_1F3849418;
  (*(*(this + 1) + 24))(this + 16);

  JUMPOUT(0x1BFAF5800);
}

{
  *this = &unk_1F3849418;
  (*(*(this + 1) + 24))(this + 16);
}

uint64_t MIDI::PacketizerBase<MIDI::LegacyPacketList>::~PacketizerBase(uint64_t a1)
{
  if (*(a1 + 64))
  {
    v3 = a1 + 64;
    (**a1)(a1 + 8, &v3);
  }

  *(a1 + 64) = 0;
  *(a1 + 56) = a1 + 68;
  (*(*a1 + 24))(a1 + 8);
  return a1;
}

uint64_t MIDI::EventList::PacketReader::read(void *a1, void *a2, _DWORD *a3)
{
  v3 = a1[1];
  v4 = a1[3];
  if (v4 >= v3)
  {
    return 0;
  }

  v5 = (*a1 + 4 * v4);
  v6 = *v5;
  v7 = MIDI::UniversalPacket::word_sizes[v6 >> 28];
  v8 = v4 + v7;
  if (v8 > v3)
  {
    return 0;
  }

  *a2 = a1[2];
  if (v7 > 1)
  {
    if (v7 != 2)
    {
      if (v7 != 3)
      {
        if (v7 != 4)
        {
          std::terminate();
        }

        *a3++ = v6;
        v10 = v5[1];
        ++v5;
        LODWORD(v6) = v10;
      }

      *a3++ = v6;
      v11 = v5[1];
      ++v5;
      LODWORD(v6) = v11;
    }

    *a3++ = v6;
    LODWORD(v6) = v5[1];
    goto LABEL_12;
  }

  if (v7)
  {
LABEL_12:
    *a3 = v6;
  }

  a1[3] = v8;
  return 1;
}

unint64_t MIDI::LegacyPacketList::write_UP<MIDI::MIDIPacketList_Deliverer::operator()(MIDI::EventList const*)::{lambda(unsigned long long,MIDI::UniversalPacket const&)#2}::operator() const(unsigned long long,MIDI::UniversalPacket const&)::{lambda(MIDI::UniversalPacket const&)#1}::operator() const(MIDI::UniversalPacket const&)::{lambda(std::span<unsigned char const,18446744073709551615ul>)#1}>(unint64_t result, unsigned int a2, uint64_t a3, uint64_t *a4)
{
  v36 = *MEMORY[0x1E69E9840];
  v6 = BYTE2(result);
  v7 = result >> 28;
  v8 = &v34;
  if (result >> 28 == 3)
  {
    v21 = WORD1(result) & 0xF;
    if (v21 > 6 || BYTE2(result) > 0x3Fu)
    {
      return result;
    }

    v22 = (result >> 20) + 3;
    v32[0] = bswap32(result);
    v32[1] = bswap32(a2);
    if (BYTE2(result) > 0x1Fu)
    {
      v9 = 0;
      p_dst = &__dst;
      if (!v21)
      {
        goto LABEL_43;
      }
    }

    else
    {
      __dst = -16;
      v9 = 1;
      p_dst = &v34;
      if (!v21)
      {
LABEL_43:
        if ((v22 & 2) != 0)
        {
          *(&__dst + v9++) = -9;
        }

        v25 = *a4;
        v11 = *(a3 + 56);
        v26 = a3 + 1088;
        v27 = *(a3 + 64);
        if (v27)
        {
          if (*v11 == v25)
          {
            v28 = *(v11 + 8);
            if (*(v28 + v11 + 10 - 1) != 247 && __dst != 240)
            {
              if (v11 + 10 + v9 + v28 <= v26)
              {
LABEL_56:
                result = v11 + v28 + 10;
                v29 = &__dst;
                if (v9 <= 1)
                {
                  if (!v9)
                  {
LABEL_80:
                    *(v11 + 8) += v9;
                    goto LABEL_81;
                  }

                  if (v9 == 1)
                  {
LABEL_79:
                    *result = *v29;
                    goto LABEL_80;
                  }

                  goto LABEL_85;
                }

                if (v9 != 2)
                {
                  if (v9 != 3)
                  {
                    if (v9 == 4)
                    {
LABEL_74:
                      *result++ = __dst;
LABEL_77:
                      v31 = *v8;
                      v30 = v8 + 1;
                      *result++ = v31;
                      goto LABEL_78;
                    }

LABEL_85:
                    result = memmove(result, &__dst, v9);
                    goto LABEL_80;
                  }

LABEL_76:
                  v8 = &__dst;
                  goto LABEL_77;
                }

LABEL_75:
                v30 = &__dst;
LABEL_78:
                *result++ = *v30;
                v29 = v30 + 1;
                goto LABEL_79;
              }

              goto LABEL_54;
            }
          }

          else
          {
            v28 = *(v11 + 8);
          }

          v11 = (v11 + v28 + 13) & 0xFFFFFFFFFFFFFFFCLL;
        }

        if (v11 + v9 + 10 <= v26)
        {
          LODWORD(v28) = 0;
          *(a3 + 64) = v27 + 1;
          *v11 = v25;
          *(v11 + 8) = 0;
          goto LABEL_56;
        }

LABEL_54:
        result = MIDI::PacketizerBase<MIDI::LegacyPacketList>::begin_new_packet(a3, v25, &__dst, v9);
LABEL_68:
        v11 = result;
LABEL_81:
        *(a3 + 56) = v11;
        return result;
      }
    }

    memcpy(p_dst, v32 + 2, v21);
    v9 += (v21 - 1) + 1;
    goto LABEL_43;
  }

  if (v7 == 2)
  {
    v15 = result & 0xE00000;
    __dst = BYTE2(result);
    v34 = BYTE1(result) & 0x7F;
    if ((result & 0xE00000) == 0xC00000)
    {
      v16 = 2;
    }

    else
    {
      v16 = 3;
    }

    if (v15 != 12582912)
    {
      v35 = result & 0x7F;
    }

    v17 = *a4;
    result = *(a3 + 56);
    v18 = a3 + 1088;
    v19 = *(a3 + 64);
    if (v19)
    {
      if (*result == v17)
      {
        v20 = *(result + 8);
        if (v6 != 240 && *(v20 + result + 10 - 1) != 247)
        {
          if (result + 10 + v16 + v20 <= v18)
          {
            goto LABEL_36;
          }

          goto LABEL_34;
        }
      }

      else
      {
        v20 = *(result + 8);
      }

      result = (result + v20 + 13) & 0xFFFFFFFFFFFFFFFCLL;
    }

    if (result + v16 + 10 <= v18)
    {
      LODWORD(v20) = 0;
      *(a3 + 64) = v19 + 1;
      *result = v17;
      *(result + 8) = 0;
LABEL_36:
      v24 = (result + v20 + 10);
      if (v15 == 12582912)
      {
        v8 = &__dst;
      }

      else
      {
        *v24 = __dst;
        v24 = (result + v20 + 11);
      }

      *v24 = *v8;
      v24[1] = v8[1];
      *(result + 8) += v16;
      goto LABEL_40;
    }

LABEL_34:
    result = MIDI::PacketizerBase<MIDI::LegacyPacketList>::begin_new_packet(a3, v17, &__dst, v16);
LABEL_40:
    *(a3 + 56) = result;
    return result;
  }

  if (v7 == 1 && BYTE2(result) >= 0xF0u && ((0x22B1uLL >> (BYTE2(result) + 16)) & 1) == 0)
  {
    v9 = MIDI::_gMessageSize[BYTE2(result) - 240];
    __dst = BYTE2(result);
    if (((0xDD40uLL >> (BYTE2(result) + 16)) & 1) == 0)
    {
      v34 = BYTE1(result) & 0x7F;
      if (BYTE2(result) == 242)
      {
        v35 = result & 0x7F;
      }
    }

    v10 = *a4;
    v11 = *(a3 + 56);
    v12 = a3 + 1088;
    v13 = *(a3 + 64);
    if (v13)
    {
      if (*v11 == v10)
      {
        v14 = *(v11 + 8);
        if (BYTE2(result) != 240 && *(v14 + v11 + 10 - 1) != 247)
        {
          if (v11 + 10 + v14 + v9 <= v12)
          {
LABEL_70:
            result = v11 + v14 + 10;
            v29 = &__dst;
            if (v9 <= 1)
            {
              if (!v9)
              {
                goto LABEL_80;
              }

              goto LABEL_79;
            }

            if (v9 != 2)
            {
              if (v9 != 3)
              {
                if (v9 == 4)
                {
                  goto LABEL_74;
                }

                goto LABEL_85;
              }

              goto LABEL_76;
            }

            goto LABEL_75;
          }

LABEL_67:
          result = MIDI::PacketizerBase<MIDI::LegacyPacketList>::begin_new_packet(a3, v10, &__dst, v9);
          goto LABEL_68;
        }
      }

      else
      {
        v14 = *(v11 + 8);
      }

      v11 = (v11 + v14 + 13) & 0xFFFFFFFFFFFFFFFCLL;
    }

    if (v11 + v9 + 10 <= v12)
    {
      LODWORD(v14) = 0;
      *(a3 + 64) = v13 + 1;
      *v11 = v10;
      *(v11 + 8) = 0;
      goto LABEL_70;
    }

    goto LABEL_67;
  }

  return result;
}

uint64_t MIDI::PacketizerBase<MIDI::LegacyPacketList>::begin_new_packet(uint64_t a1, uint64_t a2, char *a3, int64_t a4)
{
  if (*(a1 + 64))
  {
    v16 = a1 + 64;
    (**a1)(a1 + 8, &v16);
    *(a1 + 64) = 0;
    if (a4 <= 1010)
    {
      *(a1 + 64) = 1;
      v8 = a1 + 68;
      *(a1 + 68) = a2;
      *(a1 + 76) = 0;
      v9 = (a1 + 78);
      if (a4 <= 1)
      {
        if (!a4)
        {
LABEL_15:
          v13 = 0;
          goto LABEL_16;
        }

        if (a4 == 1)
        {
          goto LABEL_13;
        }
      }

      else
      {
        switch(a4)
        {
          case 2:
LABEL_10:
            v12 = *a3++;
            *v9++ = v12;
LABEL_13:
            *v9 = *a3;
            v13 = *(a1 + 76);
LABEL_16:
            *(a1 + 76) = v13 + a4;
            return v8;
          case 3:
LABEL_9:
            v11 = *a3++;
            *v9++ = v11;
            goto LABEL_10;
          case 4:
            v10 = *a3++;
            v9 = (a1 + 79);
            *(a1 + 78) = v10;
            goto LABEL_9;
        }
      }

      memmove(v9, a3, a4);
      goto LABEL_15;
    }
  }

  MIDI::LegacyPacketList::create();
  v16 = v15;
  (**a1)(a1 + 8, &v16);
  std::unique_ptr<MIDI::LegacyPacketList,MIDI::LegacyPacketListDeleter>::reset[abi:ne200100](&v15);
  v8 = a1 + 68;
  *(a1 + 56) = a1 + 68;
  *(a1 + 64) = 0;
  std::unique_ptr<MIDI::LegacyPacketList,MIDI::LegacyPacketListDeleter>::reset[abi:ne200100](&v15);
  return v8;
}

uint64_t *std::unique_ptr<MIDI::LegacyPacketList,MIDI::LegacyPacketListDeleter>::reset[abi:ne200100](uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    return MIDI::LegacyPacketListDeleter::operator()();
  }

  return result;
}

__n128 _ZZN5caulk23inplace_function_detail9rt_vtableIvJPKN4MIDI16LegacyPacketListEEEC1IZZN17AUGraphMIDINodeV332AllocateMIDIOutputEventListBlockEvEUb_E3__3EENS0_7wrapperIT_EEENUlPvSD_E0_8__invokeESD_SD_(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

__n128 _ZZN5caulk23inplace_function_detail9rt_vtableIvJPKN4MIDI16LegacyPacketListEEEC1IZZN17AUGraphMIDINodeV332AllocateMIDIOutputEventListBlockEvEUb_E3__3EENS0_7wrapperIT_EEENUlPvSD_E_8__invokeESD_SD_(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t _ZZN5caulk23inplace_function_detail9rt_vtableIvJPKN4MIDI16LegacyPacketListEEEC1IZZN17AUGraphMIDINodeV332AllocateMIDIOutputEventListBlockEvEUb_E3__3EENS0_7wrapperIT_EEENUlPvOS5_E_8__invokeESD_SE_(uint64_t result, unsigned int **a2)
{
  v2 = *a2;
  if (**a2)
  {
    v3 = result;
    v4 = 0;
    v5 = (v2 + 1);
    do
    {
      result = (*(**(**v3 + 176) + 16))();
      v5 = (v5 + 10 + *(v5 + 8) + 3) & 0xFFFFFFFFFFFFFFFCLL;
      ++v4;
    }

    while (v4 < *v2);
  }

  return result;
}

void AUGraphMIDINodeV3::~AUGraphMIDINodeV3(const void ***this)
{
  AUGraphMIDINodeV3::~AUGraphMIDINodeV3(this);

  JUMPOUT(0x1BFAF5800);
}

{
  *this = &unk_1F384BF90;
  AUGraphMIDINodeV3::SetMIDIOutputEventListBlock(this, 0);
  std::unique_ptr<AVAEBlock<int({block_pointer})(long long,unsigned char,MIDIEventList const*)>>::reset[abi:ne200100](this + 23, 0);
  std::unique_ptr<AVAEBlock<int({block_pointer})(long long,unsigned char,long,unsigned char const*)>>::reset[abi:ne200100](this + 22, 0);

  AUGraphNodeBaseV3::~AUGraphNodeBaseV3(this);
}

void AUGraphSourceNodeV3::AllocateInputBlock(AUGraphSourceNodeV3 *this)
{
  v1 = *(*(this + 3) + 176);
  if (v1)
  {
    v1 = *v1;
  }

  v2 = MEMORY[0x1E69E9820];
  v3 = 3221225472;
  v4 = ___ZN19AUGraphSourceNodeV318AllocateInputBlockEv_block_invoke;
  v5 = &unk_1E7EF5540;
  v6 = v1;
  v7 = this;
  operator new();
}

uint64_t ___ZN19AUGraphSourceNodeV318AllocateInputBlockEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  result = (*(*(a1 + 32) + 16))();
  atomic_store(result, (v1 + 160));
  return result;
}

void AUGraphSourceNodeV3::~AUGraphSourceNodeV3(const void ***this)
{
  AUGraphNodeBaseV3::~AUGraphNodeBaseV3(this);

  JUMPOUT(0x1BFAF5800);
}

void AUGraphMultiBusNode::AllocateInputBlock(const void ***this)
{
  if (!((*this)[38])(this))
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = ___ZL19CopyInnerInputBlockP17AUGraphNodeBaseV3_block_invoke;
    aBlock[3] = &__block_descriptor_40_e106_i44__0_I8r__AudioTimeStamp_dQdQ_SMPTETime_ssIIIssss_II_16I24q28__AudioBufferList_I_1_AudioBuffer_II_v___36l;
    aBlock[4] = this;
    _Block_copy(aBlock);
    operator new();
  }
}

uint64_t ___ZN19AUGraphMultiBusNode18AllocateInputBlockEv_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v7 = *(a1 + 40);
  result = caulk::concurrent::details::lf_read_sync_write_impl::begin_access((v7 + 216));
  if (*(v7 + result + 224))
  {
    v9 = *(v7 + 24 * result + 232);
    if (a5 >= (*(v7 + 24 * result + 240) - v9) >> 3)
    {
      std::vector<AUGraphNodeBaseV3 *>::__throw_out_of_range[abi:ne200100]();
    }

    v10 = *(v9 + 8 * a5);
    if (caulk::pooled_semaphore_mutex::try_lock(v10))
    {
      v11 = (*(*(a1 + 32) + 16))();
      caulk::pooled_semaphore_mutex::_unlock(v10);
    }

    else
    {
      v11 = 4294956433;
      atomic_store(0xFFFFD591, (*(a1 + 40) + 160));
    }

    caulk::concurrent::details::lf_read_sync_write_impl::end_access((v7 + 216));
    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1BA635578(_Unwind_Exception *a1)
{
  caulk::pooled_semaphore_mutex::_unlock(v1);
  caulk::concurrent::details::lf_read_sync_write_impl::end_access((v2 + 216));
  _Unwind_Resume(a1);
}

uint64_t AUGraphMultiBusNode::ConnectInput(os_unfair_lock_s *a1, int a2, unsigned int a3, uint64_t *a4)
{
  v8 = &a1[54];
  result = caulk::concurrent::details::lf_read_sync_write_impl::begin_access(&a1[54]);
  v10 = a1 + 56;
  if ((*(&a1[56]._os_unfair_lock_opaque + result) & 1) == 0)
  {
    goto LABEL_19;
  }

  v18 = a2;
  v19 = a4;
  v11 = a1 + 58;
  v12 = *&a1[6 * result + 60]._os_unfair_lock_opaque - *&a1[6 * result + 58]._os_unfair_lock_opaque;
  caulk::concurrent::details::lf_read_sync_write_impl::end_access(v8);
  if (a3 >= (v12 >> 3))
  {
    v20[0] = v8;
    v20[1] = 0;
    v20[2] = &a1[55];
    v21 = 1;
    os_unfair_lock_lock(a1 + 55);
    v22 = caulk::concurrent::details::lf_read_sync_write_impl::begin_mutate(v8);
    v23 = v22 == 0;
    v13 = caulk::concurrent::lf_read_synchronized_write<std::vector<caulk::pooled_semaphore_mutex *>>::mutator::copy_previous(v20);
    if (a3 >= ((v13[1] - *v13) >> 3))
    {
      operator new();
    }

    caulk::concurrent::lf_read_synchronized_write<std::vector<caulk::pooled_semaphore_mutex *>>::mutator::~mutator(v20);
    v10 = a1 + 56;
    v11 = a1 + 58;
  }

  result = caulk::concurrent::details::lf_read_sync_write_impl::begin_access(v8);
  if (*(&v10->_os_unfair_lock_opaque + result))
  {
    v14 = *&v11[6 * result]._os_unfair_lock_opaque;
    if (a3 >= ((*&v11[6 * result + 2]._os_unfair_lock_opaque - v14) >> 3))
    {
      std::vector<AUGraphNodeBaseV3 *>::__throw_out_of_range[abi:ne200100]();
    }

    v15 = *(v14 + 8 * a3);
    v16 = *v19;
    if (*v19)
    {
      std::lock[abi:ne200100]<caulk::pooled_semaphore_mutex,caulk::pooled_semaphore_mutex>((v16 + 156), *(v14 + 8 * a3));
      if (v18)
      {
        (*(*&a1->_os_unfair_lock_opaque + 312))(a1);
      }

      AUGraphNodeBase::ConnectInput(a1, v18, a3, v19);
      caulk::pooled_semaphore_mutex::_unlock(v15);
      v17 = (v16 + 156);
    }

    else
    {
      caulk::pooled_semaphore_mutex::_lock(*(v14 + 8 * a3));
      if (v18)
      {
        (*(*&a1->_os_unfair_lock_opaque + 312))(a1);
      }

      AUGraphNodeBase::ConnectInput(a1, v18, a3, v19);
      v17 = v15;
    }

    caulk::pooled_semaphore_mutex::_unlock(v17);

    return caulk::concurrent::details::lf_read_sync_write_impl::end_access(v8);
  }

  else
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t *caulk::concurrent::lf_read_synchronized_write<std::vector<caulk::pooled_semaphore_mutex *>>::mutator::copy_previous(uint64_t *result)
{
  v1 = *result;
  v2 = *(result + 8);
  if (*(*result + v2 + 8))
  {
    v3 = result;
    v4 = v1 + 24 * v2;
    v6 = *(v4 + 16);
    v5 = *(v4 + 24);
    v7 = v5 - v6;
    if (v5 != v6)
    {
      if (!((v7 >> 3) >> 61))
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<AUGraphNodeBaseV3 *>>(v7 >> 3);
      }

      std::vector<AUGraphNodeBaseV3 *>::__throw_length_error[abi:ne200100]();
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

uint64_t caulk::concurrent::lf_read_synchronized_write<std::vector<caulk::pooled_semaphore_mutex *>>::mutator::~mutator(uint64_t a1)
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

char *AUGraphMultiBusNode::DisconnectNode(char *result, int a2, unsigned int a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = 72;
  if (a2 == 1)
  {
    v3 = 48;
  }

  v4 = &result[v3];
  v5 = *&result[v3];
  v6 = *(v4 + 1);
  if (v5 != v6)
  {
    v8 = v6 - v5;
    if (v8 > a3)
    {
      v9 = 192;
      if (a2 == 1)
      {
        v9 = 168;
      }

      v10 = &result[v9];
      if (v8 != (*&result[v9 + 8] - *&result[v9]) >> 2)
      {
        if (AVAudioEngineLogCategory(void)::once != -1)
        {
          dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
        }

        v11 = *AVAudioEngineLogCategory(void)::category;
        if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
        {
          *buf = 136316418;
          v19 = "AVAEInternal.h";
          v20 = 1024;
          v21 = 71;
          v22 = 2080;
          v23 = "AVAEGraphNode.mm";
          v24 = 1024;
          v25 = 1728;
          v26 = 2080;
          v27 = "DisconnectNode";
          v28 = 2080;
          v29 = "nodeBussesVec.size() == nodeVec.size()";
          _os_log_impl(&dword_1BA5AC000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
        }

        result = [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "nodeBussesVec.size() == nodeVec.size()"}];
        v5 = *v4;
        v8 = (*(v4 + 1) - *v4) >> 3;
      }

      if (v8 <= a3)
      {
        std::vector<AUGraphNodeBaseV3 *>::__throw_out_of_range[abi:ne200100]();
      }

      v5[a3] = 0;
      v12 = *(v10 + 1);
      if (a3 >= ((v12 - *v10) >> 2))
      {
        std::vector<AUGraphNodeBaseV3 *>::__throw_out_of_range[abi:ne200100]();
      }

      *(*v10 + 4 * a3) = -1;
      v13 = *v4;
      v14 = *(v4 + 1);
      if (*v4 != v14)
      {
        v15 = v12 - 4;
        v16 = (v14 - 8);
        do
        {
          if (*v16)
          {
            break;
          }

          *(v4 + 1) = v16;
          *(v10 + 1) = v15;
          v15 -= 4;
        }

        while (v16-- != v13);
      }
    }
  }

  return result;
}

void *AUGraphMultiBusNode::DisconnectNode(void *result, int a2, uint64_t a3, uint64_t a4, int a5)
{
  v8 = result;
  v35 = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v9 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v24 = "AVAEInternal.h";
      v25 = 1024;
      v26 = 71;
      v27 = 2080;
      v28 = "AVAEGraphNode.mm";
      v29 = 1024;
      v30 = 1691;
      v31 = 2080;
      v32 = "DisconnectNode";
      v33 = 2080;
      v34 = "inNode != nil";
      _os_log_impl(&dword_1BA5AC000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    result = [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "inNode != nil"}];
  }

  if (a2 == 1)
  {
    v11 = v8 + 6;
    v10 = v8[6];
    v13 = v8 + 7;
    v12 = v8[7];
    if (v10 == v12)
    {
      return result;
    }

    v14 = 21;
  }

  else
  {
    v11 = v8 + 9;
    v10 = v8[9];
    v13 = v8 + 10;
    v12 = v8[10];
    if (v10 == v12)
    {
      return result;
    }

    v14 = 24;
  }

  v15 = &v8[v14];
  v16 = (v8[v14 + 1] - v8[v14]) >> 2;
  if (v16 != v12 - v10)
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v17 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v24 = "AVAEInternal.h";
      v25 = 1024;
      v26 = 71;
      v27 = 2080;
      v28 = "AVAEGraphNode.mm";
      v29 = 1024;
      v30 = 1698;
      v31 = 2080;
      v32 = "DisconnectNode";
      v33 = 2080;
      v34 = "nodeBussesVec.size() == nodeVec.size()";
      _os_log_impl(&dword_1BA5AC000, v17, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    result = [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "nodeBussesVec.size() == nodeVec.size()"}];
    v12 = *v13;
    v10 = *v11;
    v16 = (*v13 - *v11) >> 3;
  }

  if (v12 != v10)
  {
    v18 = 0;
    v19 = 1;
    while (v10[v18] != a4 || *(*v15 + 4 * v18) != a5)
    {
      v18 = v19;
      if (v16 <= v19++)
      {
        goto LABEL_25;
      }
    }

    v10[v18] = 0;
    *(*v15 + 4 * v18) = -1;
    v10 = *v11;
    v12 = *v13;
  }

LABEL_25:
  if (v10 != v12)
  {
    v21 = v12 - 1;
    do
    {
      if (*v21)
      {
        break;
      }

      *v13 = v21;
      v15[1] -= 4;
    }

    while (v21-- != v10);
  }

  return result;
}

void AUGraphMultiBusNode::AddNode(uint64_t a1, int a2, int a3, uint64_t a4, int a5)
{
  v36 = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v10 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      *&buf[4] = "AVAEInternal.h";
      v26 = 1024;
      v27 = 71;
      v28 = 2080;
      v29 = "AVAEGraphNode.mm";
      v30 = 1024;
      v31 = 1661;
      v32 = 2080;
      v33 = "AddNode";
      v34 = 2080;
      v35 = "inNode != nil";
      _os_log_impl(&dword_1BA5AC000, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "inNode != nil"}];
  }

  v11 = 72;
  if (a2 == 1)
  {
    v11 = 48;
  }

  for (i = (a1 + v11); ; std::vector<AUGraphNodeBaseV3 *>::push_back[abi:ne200100](i, buf))
  {
    v13 = (i[1] - *i) >> 3;
    if (v13 > a3)
    {
      break;
    }

    *buf = 0;
  }

  if (v13 <= a3)
  {
    std::vector<AUGraphNodeBaseV3 *>::__throw_out_of_range[abi:ne200100]();
  }

  *(*i + 8 * a3) = a4;
  v14 = 192;
  if (a2 == 1)
  {
    v14 = 168;
  }

  v15 = a1 + v14;
  v16 = *(a1 + v14);
  v17 = *(a1 + v14 + 8);
  v18 = v17 - v16;
  for (j = (v17 - v16) >> 2; j <= a3; j = (v17 - v16) >> 2)
  {
    v20 = *(v15 + 16);
    if (v17 >= v20)
    {
      v21 = j + 1;
      if ((j + 1) >> 62)
      {
        std::vector<AUGraphNodeBaseV3 *>::__throw_length_error[abi:ne200100]();
      }

      v22 = v20 - v16;
      if (v22 >> 1 > v21)
      {
        v21 = v22 >> 1;
      }

      if (v22 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v23 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v23 = v21;
      }

      if (v23)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<EExtAudioGraphNodeState>>(v23);
      }

      *(4 * j) = -1;
      v17 = (4 * j + 4);
      memcpy(0, v16, v18);
      v24 = *v15;
      *v15 = 0;
      *(v15 + 8) = v17;
      *(v15 + 16) = 0;
      if (v24)
      {
        operator delete(v24);
        v16 = *v15;
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      *v17 = -1;
      v17 += 4;
    }

    *(v15 + 8) = v17;
    v18 = v17 - v16;
  }

  if (j <= a3)
  {
    std::vector<AUGraphNodeBaseV3 *>::__throw_out_of_range[abi:ne200100]();
  }

  *&v16[4 * a3] = a5;
}

uint64_t AUGraphMultiBusNode::GetBusForConnectionPoint(uint64_t *a1, int a2, uint64_t a3, unsigned int *a4)
{
  v29 = *MEMORY[0x1E69E9840];
  *a4 = -1;
  if (a2 == 1)
  {
    v7 = a1 + 6;
    v6 = a1[6];
    v9 = a1 + 7;
    v8 = a1[7];
    if (v6 != v8)
    {
      v10 = 21;
      goto LABEL_6;
    }

    return 0;
  }

  v7 = a1 + 9;
  v6 = a1[9];
  v9 = a1 + 10;
  v8 = a1[10];
  if (v6 == v8)
  {
    return 0;
  }

  v10 = 24;
LABEL_6:
  v11 = &a1[v10];
  v12 = (a1[v10 + 1] - a1[v10]) >> 2;
  if (v12 != (v8 - v6) >> 3)
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v13 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v18 = "AVAEInternal.h";
      v19 = 1024;
      v20 = 71;
      v21 = 2080;
      v22 = "AVAEGraphNode.mm";
      v23 = 1024;
      v24 = 1645;
      v25 = 2080;
      v26 = "GetBusForConnectionPoint";
      v27 = 2080;
      v28 = "nodeBussesVec.size() == nodeVec.size()";
      _os_log_impl(&dword_1BA5AC000, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "nodeBussesVec.size() == nodeVec.size()"}];
    v8 = *v9;
    v6 = *v7;
    v12 = (*v9 - *v7) >> 3;
  }

  if (v8 == v6)
  {
    return 0;
  }

  v14 = 0;
  v15 = 0;
  while (*a3 != *(v6 + 8 * v14) || *(a3 + 8) != *(*v11 + 4 * v14))
  {
    v14 = ++v15;
    if (v12 <= v15)
    {
      return 0;
    }
  }

  *a4 = v15;
  return 1;
}

uint64_t AUGraphMultiBusNode::GetConnectionPoint(uint64_t a1, int a2, unsigned int a3, uint64_t *a4)
{
  v29 = *MEMORY[0x1E69E9840];
  *a4 = 0;
  a4[1] = 0;
  v4 = 72;
  if (a2 == 1)
  {
    v4 = 48;
  }

  if (*(a1 + v4) == *(a1 + v4 + 8))
  {
    return 0;
  }

  result = (*(*a1 + 24))(a1);
  if (result)
  {
    v10 = result;
    v11 = 192;
    if (a2 == 1)
    {
      v11 = 168;
    }

    v12 = (a1 + v11);
    v13 = *(a1 + v11);
    v14 = (v12[1] - v13) >> 2;
    if (v14 < a3 + 1)
    {
      if (AVAudioEngineLogCategory(void)::once != -1)
      {
        dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
      }

      v15 = *AVAudioEngineLogCategory(void)::category;
      if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316418;
        v18 = "AVAEInternal.h";
        v19 = 1024;
        v20 = 71;
        v21 = 2080;
        v22 = "AVAEGraphNode.mm";
        v23 = 1024;
        v24 = 1627;
        v25 = 2080;
        v26 = "GetConnectionPoint";
        v27 = 2080;
        v28 = "nodeBussesVec.size() >= (inBus + 1)";
        _os_log_impl(&dword_1BA5AC000, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
      }

      [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "nodeBussesVec.size() >= (inBus + 1)"}];
      v13 = *v12;
      v14 = (v12[1] - *v12) >> 2;
    }

    if (v14 <= a3)
    {
      std::vector<AUGraphNodeBaseV3 *>::__throw_out_of_range[abi:ne200100]();
    }

    v16 = *(v13 + 4 * a3);
    *a4 = v10;
    *(a4 + 2) = v16;
    return 1;
  }

  return result;
}

uint64_t AUGraphMultiBusNode::GetConnection(uint64_t a1, int a2, unsigned int a3, _OWORD *a4)
{
  v31 = *MEMORY[0x1E69E9840];
  *a4 = 0u;
  a4[1] = 0u;
  v4 = 8;
  if (a2 == 1)
  {
    v4 = 24;
  }

  v5 = 72;
  if (a2 == 1)
  {
    v5 = 48;
  }

  *&a4[a2 == 1] = a1;
  *(a4 + v4) = a3;
  if (*(a1 + v5) == *(a1 + v5 + 8))
  {
    return 0;
  }

  result = (*(*a1 + 24))(a1);
  if (result)
  {
    v11 = result;
    v12 = 192;
    if (a2 == 1)
    {
      v12 = 168;
    }

    v13 = (a1 + v12);
    v14 = *(a1 + v12);
    v15 = (v13[1] - v14) >> 2;
    if (v15 < a3 + 1)
    {
      if (AVAudioEngineLogCategory(void)::once != -1)
      {
        dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
      }

      v16 = *AVAudioEngineLogCategory(void)::category;
      if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316418;
        v20 = "AVAEInternal.h";
        v21 = 1024;
        v22 = 71;
        v23 = 2080;
        v24 = "AVAEGraphNode.mm";
        v25 = 1024;
        v26 = 1595;
        v27 = 2080;
        v28 = "GetConnection";
        v29 = 2080;
        v30 = "nodeBussesVec.size() >= (inBus + 1)";
        _os_log_impl(&dword_1BA5AC000, v16, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
      }

      [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "nodeBussesVec.size() >= (inBus + 1)"}];
      v14 = *v13;
      v15 = (v13[1] - *v13) >> 2;
    }

    if (v15 <= a3)
    {
      std::vector<AUGraphNodeBaseV3 *>::__throw_out_of_range[abi:ne200100]();
    }

    v17 = *(v14 + 4 * a3);
    v18 = 24;
    if (a2 == 1)
    {
      v18 = 8;
    }

    *&a4[a2 != 1] = v11;
    *(a4 + v18) = v17;
    return 1;
  }

  return result;
}

void AUGraphMultiBusNode::~AUGraphMultiBusNode(os_unfair_lock_s *this)
{
  AUGraphMultiBusNode::~AUGraphMultiBusNode(this);

  JUMPOUT(0x1BFAF5800);
}

{
  *&this->_os_unfair_lock_opaque = &unk_1F384B4F0;
  v7[0] = &this[54];
  v7[1] = 0;
  v7[2] = &this[55];
  v8 = 1;
  os_unfair_lock_lock(this + 55);
  v9 = caulk::concurrent::details::lf_read_sync_write_impl::begin_mutate(&this[54]);
  v10 = v9 == 0;
  v2 = caulk::concurrent::lf_read_synchronized_write<std::vector<caulk::pooled_semaphore_mutex *>>::mutator::copy_previous(v7);
  v3 = v2[1];
  v4 = v3 - *v2;
  if (v3 != *v2)
  {
    if (!((v4 >> 3) >> 61))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<AUGraphNodeBaseV3 *>>(v4 >> 3);
    }

    std::vector<AUGraphNodeBaseV3 *>::__throw_length_error[abi:ne200100]();
  }

  v2[1] = *v2;
  caulk::concurrent::lf_read_synchronized_write<std::vector<caulk::pooled_semaphore_mutex *>>::mutator::~mutator(v7);
  caulk::concurrent::lf_read_synchronized_write<std::vector<caulk::pooled_semaphore_mutex *>>::~lf_read_synchronized_write(&this[54]);
  v5 = *&this[48]._os_unfair_lock_opaque;
  if (v5)
  {
    *&this[50]._os_unfair_lock_opaque = v5;
    operator delete(v5);
  }

  v6 = *&this[42]._os_unfair_lock_opaque;
  if (v6)
  {
    *&this[44]._os_unfair_lock_opaque = v6;
    operator delete(v6);
  }

  AUGraphNodeBaseV3::~AUGraphNodeBaseV3(this);
}

uint64_t caulk::concurrent::lf_read_synchronized_write<std::vector<caulk::pooled_semaphore_mutex *>>::~lf_read_synchronized_write(uint64_t a1)
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

unint64_t AUGraphNodeBase::DescAsString(AUGraphNodeBase *this, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  memset(v8, 0, sizeof(v8));
  v3 = (*(*a2 + 256))(a2);
  v5 = AudioComponentDescriptionAsString(v3, v8, v4);
  result = strlen(v5);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v7 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  *(this + 23) = result;
  if (result)
  {
    result = memmove(this, v5, result);
  }

  *(this + v7) = 0;
  return result;
}

void *AUGraphNodeBase::GetValidConnections(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  result = std::__list_imp<AUGraphConnection>::clear(a3);
  v6 = 72;
  if (a2 == 1)
  {
    v6 = 48;
  }

  v7 = 80;
  if (a2 == 1)
  {
    v7 = 56;
  }

  v8 = *(a1 + v7) - *(a1 + v6);
  v11 = 0;
  v12 = -1;
  v9 = v8 >> 3;
  v13 = 0;
  v14 = -1;
  if ((v8 >> 3) >= 1)
  {
    v10 = 0;
    do
    {
      result = (*(*a1 + 32))(a1, a2, v10, &v11);
      if (result)
      {
        operator new();
      }

      v10 = (v10 + 1);
    }

    while (v9 != v10);
  }

  return result;
}

void *AUGraphNodeBase::GetValidConnectionPoints(void *a1, uint64_t *a2)
{
  result = std::__list_imp<AUGraphConnection>::clear(a2);
  v4 = (a1[10] - a1[9]) >> 3;
  v6 = 0;
  v7 = -1;
  if (v4 >= 1)
  {
    v5 = 0;
    do
    {
      result = (*(*a1 + 40))(a1, 0, v5, &v6);
      if (result)
      {
        operator new();
      }

      v5 = (v5 + 1);
    }

    while (v4 != v5);
  }

  return result;
}

void *AUGraphNodeBase::CalculateMaxFrames(AUGraphNodeBase *this, unsigned int a2, double a3)
{
  result = (*(*this + 152))(this);
  if (result)
  {
    if (a3 > 0.0 && (result = (*(**(this + 3) + 48))(*(this + 3), 0)) != 0 && (result = [result sampleRate], v7 > 0.0))
    {
      if (v7 != a3)
      {
        a2 = (vcvtpd_u64_f64(v7 * a2 / a3) & 0xFFFFFFE0) + 32;
      }
    }

    else
    {
      a2 = 0;
    }

    *(this + 9) = a2;
  }

  return result;
}

void AUGraphNodeBase::PrintNodeObject(AUGraphNodeBase *this, __sFILE *a2, const char *a3)
{
  v59 = *MEMORY[0x1E69E9840];
  v4 = (*(*this + 16))(this, a2, a3);
  v5 = v4[3];
  AUGraphNodeBase::DescAsString(__p, v5);
  if ((SBYTE7(v44) & 0x80u) == 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if (*(v4[3] + 48))
  {
    v7 = "I";
  }

  else
  {
    v7 = "U";
  }

  fprintf(a2, "\n\t node %p {%s}, '%s'\n", v5, v6, v7);
  if (SBYTE7(v44) < 0)
  {
    operator delete(__p[0]);
  }

  v8 = v4[6];
  if (((v4[7] - v8) >> 3))
  {
    fprintf(a2, "\t\t inputs = %d\n", (v4[7] - v8) >> 3);
    if (((v4[7] - v4[6]) >> 3) >= 1)
    {
      v9 = 0;
      do
      {
        v39 = 0;
        v40 = -1;
        v41 = 0;
        v42 = -1;
        (*(*v4 + 32))(v4, 1, v9, &v39);
        v49 = 0u;
        v50 = 0u;
        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        *__p = 0u;
        v44 = 0u;
        memset(&v38, 0, sizeof(v38));
        v10 = (*(*v4[3] + 72))(v4[3], v9);
        if (v10)
        {
          v11 = [v10 streamDescription];
          v12 = *(v11 + 16);
          *&v38.var0 = *v11;
          *&v38.var3 = v12;
          *&v38.var7 = *(v11 + 32);
        }

        v13 = (*(*v4[3] + 40))(v4[3]);
        v14 = (*(*v13 + 72))(v13, 1, v9);
        v17 = v40;
        v18 = v39;
        if (v39)
        {
          v19 = *(v39 + 24);
          AUGraphNodeBase::DescAsString(v36, v19);
          if (v37 >= 0)
          {
            v20 = v36;
          }

          else
          {
            v20 = v36[0];
          }
        }

        else
        {
          v19 = 0;
          v20 = "";
        }

        CAStreamBasicDescription::AsString(&v38, __p, 0x80uLL, v15, v16);
        fprintf(a2, "\t\t\t (bus%d, en%d) <- (bus%d) %p, {%s}, [%s]\n", v9, v14, v17, v19, v20, __p);
        if (v18 && v37 < 0)
        {
          operator delete(v36[0]);
        }

        ++v9;
      }

      while (v9 < ((v4[7] - v4[6]) >> 3));
    }
  }

  v21 = v4[9];
  if (((v4[10] - v21) >> 3))
  {
    fprintf(a2, "\t\t outputs = %d\n", (v4[10] - v21) >> 3);
    if (((v4[10] - v4[9]) >> 3) >= 1)
    {
      v22 = 0;
      do
      {
        v39 = 0;
        v40 = -1;
        v41 = 0;
        v42 = -1;
        (*(*v4 + 32))(v4, 0, v22, &v39);
        v57 = 0u;
        v58 = 0u;
        v55 = 0u;
        v56 = 0u;
        v53 = 0u;
        v54 = 0u;
        v51 = 0u;
        v52 = 0u;
        v49 = 0u;
        v50 = 0u;
        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        *__p = 0u;
        v44 = 0u;
        memset(&v38, 0, sizeof(v38));
        v23 = (*(*v4[3] + 48))(v4[3], v22);
        if (v23)
        {
          v24 = [v23 streamDescription];
          v25 = *(v24 + 16);
          *&v38.var0 = *v24;
          *&v38.var3 = v25;
          *&v38.var7 = *(v24 + 32);
        }

        v26 = (*(*v4[3] + 40))(v4[3]);
        v27 = (*(*v26 + 72))(v26, 0, v22);
        v30 = v42;
        v31 = v41;
        if (v41)
        {
          v32 = *(v41 + 24);
          AUGraphNodeBase::DescAsString(v34, v32);
          if (v35 >= 0)
          {
            v33 = v34;
          }

          else
          {
            v33 = v34[0];
          }
        }

        else
        {
          v32 = 0;
          v33 = "";
        }

        CAStreamBasicDescription::AsString(&v38, __p, 0x100uLL, v28, v29);
        fprintf(a2, "\t\t\t (bus%d, en%d) -> (bus%d) %p, {%s}, [%s]\n", v22, v27, v30, v32, v33, __p);
        if (v31)
        {
          if (v35 < 0)
          {
            operator delete(v34[0]);
          }
        }

        ++v22;
      }

      while (v22 < ((v4[10] - v4[9]) >> 3));
    }
  }
}

void AUGraphNodeBaseV3::AUGraphNodeBaseV3(AUGraphNodeBaseV3 *this, AVAudioNode *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  *this = &unk_1F384C7F0;
  *(this + 1) = 0;
  *(this + 2) = a2;
  v3 = objc_msgSend_impl(a2);
  *(this + 3) = v3;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  if (*(this + 2))
  {
    if (v3)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v4 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v7 = "AVAEInternal.h";
      v8 = 1024;
      v9 = 71;
      v10 = 2080;
      v11 = "AVAEGraphNode.mm";
      v12 = 1024;
      v13 = 141;
      v14 = 2080;
      v15 = "AUGraphNodeBase";
      v16 = 2080;
      v17 = "nil != _avNode";
      _os_log_impl(&dword_1BA5AC000, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "nil != _avNode"}];
    if (*(this + 3))
    {
LABEL_14:
      *this = &unk_1F384BE00;
      *(this + 6) = 0u;
      *(this + 7) = 0u;
      *(this + 8) = 0u;
      *(this + 18) = 0;
      caulk::pooled_semaphore_mutex::pooled_semaphore_mutex((this + 152));
      caulk::pooled_semaphore_mutex::pooled_semaphore_mutex((this + 156));
      *(this + 40) = 0;
      operator new();
    }
  }

  if (AVAudioEngineLogCategory(void)::once != -1)
  {
    dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
  }

  v5 = *AVAudioEngineLogCategory(void)::category;
  if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
  {
    *buf = 136316418;
    v7 = "AVAEInternal.h";
    v8 = 1024;
    v9 = 71;
    v10 = 2080;
    v11 = "AVAEGraphNode.mm";
    v12 = 1024;
    v13 = 142;
    v14 = 2080;
    v15 = "AUGraphNodeBase";
    v16 = 2080;
    v17 = "nullptr != _avNodeImpl";
    _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
  }

  [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "nullptr != _avNodeImpl"}];
  goto LABEL_14;
}

void sub_1BA637A04(_Unwind_Exception *exception_object)
{
  v3 = v1[9];
  if (v3)
  {
    v1[10] = v3;
    operator delete(v3);
  }

  v4 = v1[6];
  if (v4)
  {
    v1[7] = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN17AUGraphSinkNodeV319AllocateRenderBlockEv_block_invoke(void *a1)
{
  result = (*(a1[4] + 16))();
  v3 = a1[6];
  if (!result)
  {
    result = (*(a1[5] + 16))();
  }

  atomic_store(result, (v3 + 160));
  return result;
}

void AUGraphSinkNodeV3::~AUGraphSinkNodeV3(const void ***this)
{
  AUGraphNodeBaseV3::~AUGraphNodeBaseV3(this);

  JUMPOUT(0x1BFAF5800);
}

void sub_1BA637E88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::pair<std::unique_lock<std::recursive_mutex>,std::unique_lock<std::recursive_mutex>>::~pair(va);
  _Unwind_Resume(a1);
}

void PulseTone::PulseTone(PulseTone *this, double a2, double a3, double a4, int a5, double a6, double a7, double a8, double a9)
{
  v28 = *MEMORY[0x1E69E9840];
  *this = 0;
  *(this + 2) = 0;
  *(this + 3) = a3;
  *(this + 5) = 0;
  *(this + 9) = a2;
  *(this + 80) = 0;
  v11 = fmax(a6, 1.0);
  v12 = fmin(a8, v11);
  v13 = 0.0;
  if (v12 != 0.0)
  {
    v13 = a2 / (1000.0 / v12);
  }

  *(this + 8) = v13;
  if (a5)
  {
    v14 = a5;
  }

  else
  {
    v14 = -1;
  }

  *(this + 13) = v14;
  *(this + 14) = (a2 / (1000.0 / v11));
  if (a7 == 0.0)
  {
    v15 = 0;
  }

  else
  {
    v15 = (a2 / (1000.0 / a7));
  }

  *(this + 15) = v15;
  v16 = fmax(a9, 0.0);
  if (v16 == 0.0)
  {
    v17 = 0;
  }

  else
  {
    v17 = (a2 / (-1000.0 / v16));
  }

  *(this + 12) = v17;
  v18 = a4 * 0.05;
  v19 = __exp10f(v18);
  v20 = v19;
  if (v19 > 1.0)
  {
    if (AVAudioDeviceTestServicePulseToneLog(void)::once != -1)
    {
      dispatch_once(&AVAudioDeviceTestServicePulseToneLog(void)::once, &__block_literal_global_2858);
    }

    v21 = *AVAudioDeviceTestServicePulseToneLog(void)::category;
    if (os_log_type_enabled(*AVAudioDeviceTestServicePulseToneLog(void)::category, OS_LOG_TYPE_ERROR))
    {
      v22 = 136315650;
      v23 = "PulseTone.mm";
      v24 = 1024;
      v25 = 142;
      v26 = 2048;
      v27 = v20;
      _os_log_impl(&dword_1BA5AC000, v21, OS_LOG_TYPE_ERROR, "%25s:%-5d Playing tone above amplitude of 1.0. { amplitude=%f }", &v22, 0x1Cu);
    }
  }

  *(this + 4) = v20;
  *(this + 1) = (*(this + 8) + *(this + 14)) / a2;
}

void sub_1BA638238(_Unwind_Exception *a1)
{
  std::recursive_mutex::unlock((v2 + 96));
  std::recursive_mutex::unlock((v1 + 112));
  _Unwind_Resume(a1);
}

void sub_1BA638614(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::pair<std::unique_lock<std::recursive_mutex>,std::unique_lock<std::recursive_mutex>>::~pair(va);
  _Unwind_Resume(a1);
}

uint64_t AVAudioMixerNodeImpl::ConnectInput(AVAudioNodeImplBase *this, uint64_t a2, AVAudioNodeImplBase *a3, uint64_t a4)
{
  (*(*this + 128))(this, 0, 1, a2, 1.0);
  AVAudioNodeImplBase::ConnectInput(this, a2, a3, a4);
  return 1;
}

void AVAudioMixerNodeImpl::~AVAudioMixerNodeImpl(id *this)
{
  AVAudioUnitImpl::~AVAudioUnitImpl(this);

  JUMPOUT(0x1BFAF5800);
}

void CADeprecated::CAGuard::Locker::~Locker(CADeprecated::CAGuard::Locker *this)
{
  if (*(this + 8) == 1)
  {
    (*(**this + 24))();
  }
}

void *AVAudioClockImpl::StreamFormatListener(void *this, void *a2, OpaqueAudioComponentInstance *a3, int a4, int a5)
{
  if (a4 == 2 && !a5)
  {
    v5 = this;
    this = [(*(**this + 56))(*this 0];
    v5[1] = v6;
  }

  return this;
}

uint64_t AVAudioClockImpl::RenderCallback(AVAudioClockImpl *this, _DWORD *a2, double *a3, const AudioTimeStamp *a4, unsigned int a5, unsigned int a6, AudioBufferList *a7)
{
  if ((*a2 & 4) != 0)
  {
    atomic_store(a5, this + 96);
    v14 = caulk::concurrent::atomic_value<AudioTimeStamp,2,6>::store(this + 16, a3);
    if (*(this + 400) == 1)
    {
      v15 = *(this + 49);
      if (v15)
      {
        (*(*v15 + 80))(v15, v14);
      }
    }
  }

  else if ((*a2 & 8) != 0)
  {
    v8 = *(a3 + 14);
    if (v8)
    {
      v9 = *(this + 1);
      if (v9 > 0.0)
      {
        v19 = 1;
        v10 = *a3;
        v11 = *a3 + a5;
        v17[0] = v11;
        if ((~v8 & 3) != 0)
        {
          if ((v8 & 2) != 0)
          {
            return 0;
          }
        }

        else
        {
          if ((v8 & 4) != 0)
          {
            v18 = a3[2];
            v13 = v18 * 24000000.0;
            v12 = 7;
          }

          else
          {
            v12 = 3;
            v13 = 24000000.0;
          }

          *&v17[1] = (*(a3 + 1) + (v11 - v10) * (v13 / v9));
          v19 = v12;
        }

        caulk::concurrent::atomic_value<AudioTimeStamp,2,6>::store(this + 16, v17);
      }
    }
  }

  return 0;
}

void AVAudioClockImpl::AVAudioClockImpl(AVAudioClockImpl *this, AVAudioNodeImplBase *a2)
{
  *this = a2;
  *(this + 1) = 0;
  *(this + 16) = 0;
  *(this + 32) = 1;
  *(this + 64) = 1;
  v3 = caulk::concurrent::atomic_value<AudioTimeStamp,2,6>::store(this + 16, &CAAudioTimeStamp::kZero);
  *(this + 96) = 0;
  *(this + 49) = 0;
  *(this + 400) = 0;
  v4 = *this;
  if (*this)
  {
    v8[0] = AVAudioClockImpl::RenderCallback;
    v8[1] = this;
    (*(*v4 + 168))(v4, v8, v3);
    v5 = *this;
    v7[0] = AVAudioClockImpl::StreamFormatListener;
    v7[1] = this;
    (*(*v5 + 200))(v5, v7);
    [(*(**this + 56))(*this 0];
    *(this + 1) = v6;
  }
}

void ___ZN14MIDIPlayerImpl4stopEv_block_invoke(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(a1 + 32);

  _Block_release(v2);
}

uint64_t MIDIPlayerImpl::finishLoad(MIDIPlayerImpl *this, NSURL *a2)
{
  v61 = *MEMORY[0x1E69E9840];
  outGraph = 0;
  AUGraph = MusicSequenceGetAUGraph(this->var2, &outGraph);
  if (AUGraph)
  {
    v4 = AUGraph;
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v5 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316674;
      *&buf[4] = "AVAEInternal.h";
      v49 = 1024;
      v50 = 104;
      v51 = 2080;
      v52 = "AVMIDIPlayer.mm";
      v53 = 1024;
      v54 = 324;
      v55 = 2080;
      v56 = "finishLoad";
      v57 = 2080;
      v58 = "MusicSequenceGetAUGraph(mSequence, &graph)";
      v59 = 1024;
      v60 = v4;
      _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d [%s:%d:%s: (%s): error %d", buf, 0x3Cu);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"error %d", v4}];
  }

  v6 = outGraph;
  ioLength = 4096;
  inData = *&a2;
  outNumberOfNodes = 0;
  v7 = AUGraphOpen(outGraph);
  if (v7)
  {
    v8 = v7;
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v9 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316674;
      *&buf[4] = "AVAEInternal.h";
      v49 = 1024;
      v50 = 104;
      v51 = 2080;
      v52 = "AVMIDIPlayer.mm";
      v53 = 1024;
      v54 = 460;
      v55 = 2080;
      v56 = "SetUpGraph";
      v57 = 2080;
      v58 = "AUGraphOpen(inGraph)";
      v59 = 1024;
      v60 = v8;
      _os_log_impl(&dword_1BA5AC000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d [%s:%d:%s: (%s): error %d", buf, 0x3Cu);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"error %d", v8}];
  }

  NodeCount = AUGraphGetNodeCount(v6, &outNumberOfNodes);
  if (NodeCount)
  {
    v11 = NodeCount;
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v12 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316674;
      *&buf[4] = "AVAEInternal.h";
      v49 = 1024;
      v50 = 104;
      v51 = 2080;
      v52 = "AVMIDIPlayer.mm";
      v53 = 1024;
      v54 = 462;
      v55 = 2080;
      v56 = "SetUpGraph";
      v57 = 2080;
      v58 = "AUGraphGetNodeCount (inGraph, &nodeCount)";
      v59 = 1024;
      v60 = v11;
      _os_log_impl(&dword_1BA5AC000, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d [%s:%d:%s: (%s): error %d", buf, 0x3Cu);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"error %d", v11}];
  }

  if (outNumberOfNodes)
  {
    v13 = 0;
    while (1)
    {
      outNode = 0;
      IndNode = AUGraphGetIndNode(v6, v13, &outNode);
      if (IndNode)
      {
        v15 = IndNode;
        if (AVAudioEngineLogCategory(void)::once != -1)
        {
          dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
        }

        v16 = *AVAudioEngineLogCategory(void)::category;
        if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
        {
          *buf = 136316674;
          *&buf[4] = "AVAEInternal.h";
          v49 = 1024;
          v50 = 104;
          v51 = 2080;
          v52 = "AVMIDIPlayer.mm";
          v53 = 1024;
          v54 = 467;
          v55 = 2080;
          v56 = "SetUpGraph";
          v57 = 2080;
          v58 = "AUGraphGetIndNode(inGraph, i, &node)";
          v59 = 1024;
          v60 = v15;
          _os_log_impl(&dword_1BA5AC000, v16, OS_LOG_TYPE_ERROR, "%25s:%-5d [%s:%d:%s: (%s): error %d", buf, 0x3Cu);
        }

        [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"error %d", v15}];
      }

      outAudioUnit = 0;
      outDataSize = 0;
      outWritable = 0;
      v17 = AUGraphNodeInfo(v6, outNode, &outDescription, &outAudioUnit);
      if (v17)
      {
        v18 = v17;
        if (AVAudioEngineLogCategory(void)::once != -1)
        {
          dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
        }

        v19 = *AVAudioEngineLogCategory(void)::category;
        if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
        {
          *buf = 136316674;
          *&buf[4] = "AVAEInternal.h";
          v49 = 1024;
          v50 = 104;
          v51 = 2080;
          v52 = "AVMIDIPlayer.mm";
          v53 = 1024;
          v54 = 473;
          v55 = 2080;
          v56 = "SetUpGraph";
          v57 = 2080;
          v58 = "AUGraphNodeInfo(inGraph, node, &desc, &unit)";
          v59 = 1024;
          v60 = v18;
          _os_log_impl(&dword_1BA5AC000, v19, OS_LOG_TYPE_ERROR, "%25s:%-5d [%s:%d:%s: (%s): error %d", buf, 0x3Cu);
        }

        [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"error %d", v18}];
      }

      if (inData != 0.0 && outDescription.componentType == 1635085685 && !AudioUnitGetPropertyInfo(outAudioUnit, 0x44Cu, 0, 0, &outDataSize, &outWritable))
      {
        if (outWritable)
        {
          result = AudioUnitSetProperty(outAudioUnit, 0x44Cu, 0, 0, &inData, 8u);
          if (result)
          {
            break;
          }
        }
      }

      v21 = AudioUnitSetProperty(outAudioUnit, 0xEu, 0, 0, &ioLength, 4u);
      if (v21)
      {
        v22 = v21;
        if (AVAudioEngineLogCategory(void)::once != -1)
        {
          dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
        }

        v23 = *AVAudioEngineLogCategory(void)::category;
        if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
        {
          *buf = 136316674;
          *&buf[4] = "AVAEInternal.h";
          v49 = 1024;
          v50 = 104;
          v51 = 2080;
          v52 = "AVMIDIPlayer.mm";
          v53 = 1024;
          v54 = 497;
          v55 = 2080;
          v56 = "SetUpGraph";
          v57 = 2080;
          v58 = "AudioUnitSetProperty (unit, kAudioUnitProperty_MaximumFramesPerSlice, kAudioUnitScope_Global, 0, &numFrames, sizeof(numFrames))";
          v59 = 1024;
          v60 = v22;
          _os_log_impl(&dword_1BA5AC000, v23, OS_LOG_TYPE_ERROR, "%25s:%-5d [%s:%d:%s: (%s): error %d", buf, 0x3Cu);
        }

        [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"error %d", v22}];
      }

      if (++v13 >= outNumberOfNodes)
      {
        goto LABEL_45;
      }
    }
  }

  else
  {
LABEL_45:
    v24 = AUGraphInitialize(v6);
    if (v24)
    {
      v25 = v24;
      if (AVAudioEngineLogCategory(void)::once != -1)
      {
        dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
      }

      v26 = *AVAudioEngineLogCategory(void)::category;
      if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316674;
        *&buf[4] = "AVAEInternal.h";
        v49 = 1024;
        v50 = 104;
        v51 = 2080;
        v52 = "AVMIDIPlayer.mm";
        v53 = 1024;
        v54 = 500;
        v55 = 2080;
        v56 = "SetUpGraph";
        v57 = 2080;
        v58 = "AUGraphInitialize(inGraph)";
        v59 = 1024;
        v60 = v25;
        _os_log_impl(&dword_1BA5AC000, v26, OS_LOG_TYPE_ERROR, "%25s:%-5d [%s:%d:%s: (%s): error %d", buf, 0x3Cu);
      }

      [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"error %d", v25}];
    }

    LODWORD(outAudioUnit) = 0;
    TrackCount = MusicSequenceGetTrackCount(this->var2, &outAudioUnit);
    if (TrackCount)
    {
      v28 = TrackCount;
      if (AVAudioEngineLogCategory(void)::once != -1)
      {
        dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
      }

      v29 = *AVAudioEngineLogCategory(void)::category;
      if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316674;
        *&buf[4] = "AVAEInternal.h";
        v49 = 1024;
        v50 = 104;
        v51 = 2080;
        v52 = "AVMIDIPlayer.mm";
        v53 = 1024;
        v54 = 332;
        v55 = 2080;
        v56 = "finishLoad";
        v57 = 2080;
        v58 = "MusicSequenceGetTrackCount(mSequence, &trackCount)";
        v59 = 1024;
        v60 = v28;
        _os_log_impl(&dword_1BA5AC000, v29, OS_LOG_TYPE_ERROR, "%25s:%-5d [%s:%d:%s: (%s): error %d", buf, 0x3Cu);
      }

      [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"error %d", v28}];
    }

    if (outAudioUnit)
    {
      v30 = 0;
      v31 = 0.0;
      do
      {
        *&outDescription.componentType = 0;
        MusicSequenceGetIndTrack(this->var2, v30, &outDescription);
        inData = 0.0;
        ioLength = 8;
        Property = MusicTrackGetProperty(*&outDescription.componentType, 5u, &inData, &ioLength);
        if (Property)
        {
          v33 = Property;
          if (AVAudioEngineLogCategory(void)::once != -1)
          {
            dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
          }

          v34 = *AVAudioEngineLogCategory(void)::category;
          if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
          {
            *buf = 136316674;
            *&buf[4] = "AVAEInternal.h";
            v49 = 1024;
            v50 = 104;
            v51 = 2080;
            v52 = "AVMIDIPlayer.mm";
            v53 = 1024;
            v54 = 338;
            v55 = 2080;
            v56 = "finishLoad";
            v57 = 2080;
            v58 = "MusicTrackGetProperty(track, kSequenceTrackProperty_TrackLength, &length, &plength)";
            v59 = 1024;
            v60 = v33;
            _os_log_impl(&dword_1BA5AC000, v34, OS_LOG_TYPE_ERROR, "%25s:%-5d [%s:%d:%s: (%s): error %d", buf, 0x3Cu);
          }

          [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"error %d", v33}];
        }

        if (inData > v31)
        {
          v31 = inData;
        }

        ++v30;
      }

      while (v30 < outAudioUnit);
    }

    else
    {
      v31 = 0.0;
    }

    this->var3 = v31;
    v35 = MusicSequenceSetUserCallback(this->var2, MIDIPlayerImpl::userCallback, this);
    if (v35)
    {
      v36 = v35;
      if (AVAudioEngineLogCategory(void)::once != -1)
      {
        dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
      }

      v37 = *AVAudioEngineLogCategory(void)::category;
      if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316674;
        *&buf[4] = "AVAEInternal.h";
        v49 = 1024;
        v50 = 104;
        v51 = 2080;
        v52 = "AVMIDIPlayer.mm";
        v53 = 1024;
        v54 = 344;
        v55 = 2080;
        v56 = "finishLoad";
        v57 = 2080;
        v58 = "MusicSequenceSetUserCallback(mSequence, userCallback, this)";
        v59 = 1024;
        v60 = v36;
        _os_log_impl(&dword_1BA5AC000, v37, OS_LOG_TYPE_ERROR, "%25s:%-5d [%s:%d:%s: (%s): error %d", buf, 0x3Cu);
      }

      [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"error %d", v36}];
    }

    *buf = 0;
    result = MusicSequenceGetIndTrack(this->var2, 0, buf);
    if (!result)
    {
      *&outDescription.componentType = 0x8600000001;
      return MusicTrackNewUserEvent(*buf, v31, &outDescription);
    }
  }

  return result;
}

void MIDIPlayerImpl::userCallback(MIDIPlayerImpl *this, void *a2, OpaqueMusicSequence *a3, OpaqueMusicTrack *a4, double a5, const MusicEventUserData *a6, double a7, double a8)
{
  if (*a4 == 1 && *(a4 + 4) == 134)
  {
    var4 = this->var4;
    if (var4)
    {
      v13[6] = v8;
      v13[7] = v9;
      var1 = this->var1;
      this->var4 = 0;
      var5 = this->var5;
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = ___ZN14MIDIPlayerImpl12userCallbackEPvP19OpaqueMusicSequenceP16OpaqueMusicTrackdPK18MusicEventUserDatadd_block_invoke;
      v13[3] = &unk_1E7EF6590;
      v13[4] = var4;
      v13[5] = var1;
      dispatch_async(var5, v13);
    }
  }
}

void ___ZN14MIDIPlayerImpl12userCallbackEPvP19OpaqueMusicSequenceP16OpaqueMusicTrackdPK18MusicEventUserDatadd_block_invoke(uint64_t a1)
{
  MusicPlayerStop(*(a1 + 40));
  (*(*(a1 + 32) + 16))();
  v2 = *(a1 + 32);

  _Block_release(v2);
}

void sub_1BA63B270(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void sub_1BA63B5E4(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(exception_object);
    v3 = v2;
    __cxa_end_catch();
    JUMPOUT(0x1BA63B55CLL);
  }

  _Unwind_Resume(exception_object);
}

void AVVCKeepAliveImpl_AudioQueue::~AVVCKeepAliveImpl_AudioQueue(AVVCKeepAliveImpl_AudioQueue *this)
{
  AVVCKeepAliveImpl_AudioQueue::~AVVCKeepAliveImpl_AudioQueue(this);

  JUMPOUT(0x1BFAF5800);
}

{
  v7 = *MEMORY[0x1E69E9840];
  *this = &unk_1F3849CE8;
  if (kAVVCScope)
  {
    v1 = *kAVVCScope;
    if (!v1)
    {
      return;
    }
  }

  else
  {
    v1 = MEMORY[0x1E69E9C10];
    v2 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136315394;
    v4 = "AVVCKeepAliveImpl_AudioQueue.mm";
    v5 = 1024;
    v6 = 137;
    _os_log_impl(&dword_1BA5AC000, v1, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AVVCKeepAliveImpl_AudioQueue destroyed", &v3, 0x12u);
  }
}

OpaqueAudioQueue *AVVCKeepAliveImpl_AudioQueue::destroy(AVVCKeepAliveImpl_AudioQueue *this)
{
  v22 = *MEMORY[0x1E69E9840];
  TraceMethod::TraceMethod(v9, "_destroyKeepAliveQueue");
  v2 = *(this + 1);
  if (!v2)
  {
    goto LABEL_18;
  }

  *(this + 1) = 0;
  ElapsedTime::ElapsedTime(v16, "destroy", "_destroyKeepAliveQueue : AudioQueueStop", 0);
  v3 = AudioQueueStop(v2, 1u);
  if (v3)
  {
    if (kAVVCScope)
    {
      v4 = *kAVVCScope;
      if (!v4)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v4 = MEMORY[0x1E69E9C10];
      v5 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v11 = "AVVCKeepAliveImpl_AudioQueue.mm";
      v12 = 1024;
      v13 = 128;
      v14 = 1024;
      v15 = v3;
      _os_log_impl(&dword_1BA5AC000, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d _destroyKeepAliveQueue, AudioQueueDispose returned error : %d", buf, 0x18u);
    }
  }

LABEL_10:
  ElapsedTime::~ElapsedTime(v16);
  v2 = AudioQueueDispose(v2, 0);
  if (v2)
  {
    if (kAVVCScope)
    {
      v6 = *kAVVCScope;
      if (!v6)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v6 = MEMORY[0x1E69E9C10];
      v7 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v16 = 136315650;
      v17 = "AVVCKeepAliveImpl_AudioQueue.mm";
      v18 = 1024;
      v19 = 131;
      v20 = 1024;
      v21 = v2;
      _os_log_impl(&dword_1BA5AC000, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d _destroyKeepAliveQueue, AudioQueueDispose returned error : %d", v16, 0x18u);
    }
  }

LABEL_18:
  TraceMethod::~TraceMethod(v9);
  return v2;
}

uint64_t AVVCKeepAliveImpl_AudioQueue::stop(AVVCKeepAliveImpl_AudioQueue *this)
{
  v10 = *MEMORY[0x1E69E9840];
  TraceMethod::TraceMethod(v5, "stopKeepAliveQueue");
  if (kAVVCScope)
  {
    v2 = *kAVVCScope;
    if (!v2)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v2 = MEMORY[0x1E69E9C10];
    v3 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v7 = "AVVCKeepAliveImpl_AudioQueue.mm";
    v8 = 1024;
    v9 = 112;
    _os_log_impl(&dword_1BA5AC000, v2, OS_LOG_TYPE_DEFAULT, "%25s:%-5d About to stop keepAliveQueue", buf, 0x12u);
  }

LABEL_8:
  AVVCKeepAliveImpl_AudioQueue::keepHardwareActive(this, 0);
  TraceMethod::~TraceMethod(v5);
  return 0;
}

uint64_t AVVCKeepAliveImpl_AudioQueue::create(AudioQueueRef *this)
{
  v26 = *MEMORY[0x1E69E9840];
  ElapsedTime::ElapsedTime(v25, "create", 0, 0);
  TraceMethod::TraceMethod(v17, "createKeepAliveQueue");
  v2 = this + 1;
  if (!this[1])
  {
    if (kAVVCScope)
    {
      v4 = *kAVVCScope;
      if (!v4)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v4 = MEMORY[0x1E69E9C10];
      v5 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf.mSampleRate) = 136315394;
      *(&buf.mSampleRate + 4) = "AVVCKeepAliveImpl_AudioQueue.mm";
      LOWORD(buf.mFormatFlags) = 1024;
      *(&buf.mFormatFlags + 2) = 36;
      _os_log_impl(&dword_1BA5AC000, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Creating keepAliveQueue", &buf, 0x12u);
    }

LABEL_10:
    *&buf.mBitsPerChannel = 16;
    buf.mSampleRate = 16000.0;
    *&buf.mFormatID = xmmword_1BA6CF350;
    *&buf.mBytesPerFrame = 0x100000002;
    v6 = AudioQueueNewOutput(&buf, AQOutputCallback, this, 0, 0, 0, this + 1);
    v3 = v6;
    if (v6)
    {
      if ((v6 + 199999) > 0x61A7E)
      {
        if (kAVVCScope)
        {
          v7 = *kAVVCScope;
          if (!v7)
          {
            goto LABEL_41;
          }
        }

        else
        {
          v7 = MEMORY[0x1E69E9C10];
          v10 = MEMORY[0x1E69E9C10];
        }

        if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_40;
        }

        *v18 = 136315650;
        v19 = "AVVCKeepAliveImpl_AudioQueue.mm";
        v20 = 1024;
        v21 = 42;
        v22 = 1024;
        LODWORD(v23) = v3;
        v9 = "%25s:%-5d ERROR: createKeepAliveQueue: AudioQueueNewOutput err %{audio:4CC}d";
      }

      else
      {
        if (kAVVCScope)
        {
          v7 = *kAVVCScope;
          if (!v7)
          {
            goto LABEL_41;
          }
        }

        else
        {
          v7 = MEMORY[0x1E69E9C10];
          v8 = MEMORY[0x1E69E9C10];
        }

        if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_40;
        }

        *v18 = 136315650;
        v19 = "AVVCKeepAliveImpl_AudioQueue.mm";
        v20 = 1024;
        v21 = 42;
        v22 = 1024;
        LODWORD(v23) = v3;
        v9 = "%25s:%-5d ERROR: createKeepAliveQueue: AudioQueueNewOutput err %d";
      }

      _os_log_impl(&dword_1BA5AC000, v7, OS_LOG_TYPE_ERROR, v9, v18, 0x18u);
    }

    else
    {
      v3 = AudioQueueSetProperty(*v2, 0x63756964u, &AudioQueueProperty_KeepAliveQueueClientName, 8u);
      if (v3)
      {
        if (kAVVCScope)
        {
          v7 = *kAVVCScope;
          if (!v7)
          {
            goto LABEL_41;
          }
        }

        else
        {
          v7 = MEMORY[0x1E69E9C10];
          v11 = MEMORY[0x1E69E9C10];
        }

        if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_40;
        }

        *v18 = 136315650;
        v19 = "AVVCKeepAliveImpl_AudioQueue.mm";
        v20 = 1024;
        v21 = 49;
        v22 = 2112;
        v23 = @"AVVoiceController_KeepAliveQueue";
        v12 = "%25s:%-5d FAILED _createKeepAliveQueue : AudioQueueSetProperty(kAudioQueueProperty_ClientUID) - %@";
        v13 = v7;
        v14 = OS_LOG_TYPE_ERROR;
      }

      else
      {
        if (kAVVCScope)
        {
          v7 = *kAVVCScope;
          if (!v7)
          {
            goto LABEL_41;
          }
        }

        else
        {
          v7 = MEMORY[0x1E69E9C10];
          v15 = MEMORY[0x1E69E9C10];
        }

        if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_40;
        }

        *v18 = 136315650;
        v19 = "AVVCKeepAliveImpl_AudioQueue.mm";
        v20 = 1024;
        v21 = 51;
        v22 = 2112;
        v23 = @"AVVoiceController_KeepAliveQueue";
        v12 = "%25s:%-5d _createKeepAliveQueue : AudioQueueSetProperty(kAudioQueueProperty_ClientUID) - %@";
        v13 = v7;
        v14 = OS_LOG_TYPE_DEBUG;
      }

      _os_log_impl(&dword_1BA5AC000, v13, v14, v12, v18, 0x1Cu);
    }

LABEL_40:

    goto LABEL_41;
  }

  v3 = 0;
LABEL_41:
  TraceMethod::~TraceMethod(v17);
  ElapsedTime::~ElapsedTime(v25);
  return v3;
}

void sub_1BA63BF5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  TraceMethod::~TraceMethod(va);
  ElapsedTime::~ElapsedTime(va1);
  _Unwind_Resume(a1);
}

uint64_t AVVCRouteManager::isOutputWiredHeadset(AVVCRouteManager *this)
{
  if (IsSerializationEnabled(void)::onceToken != -1)
  {
    dispatch_once(&IsSerializationEnabled(void)::onceToken, &__block_literal_global_197);
  }

  v2 = IsSerializationEnabled(void)::enable;
  if ((IsSerializationEnabled(void)::enable & 1) == 0)
  {
    std::mutex::lock((this + 56));
  }

  v3 = [*(this + 5) isEqualToString:*MEMORY[0x1E698D6A0]];
  if ((v2 & 1) == 0)
  {
    std::mutex::unlock((this + 56));
  }

  return v3;
}

void sub_1BA63C010(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0)
  {
    std::mutex::unlock((v1 + 56));
  }

  _Unwind_Resume(exception_object);
}

uint64_t PlatformUtilities_iOS::GetProductType(PlatformUtilities_iOS *this)
{
  if (PlatformUtilities_iOS::GetProductType(void)::sCompletedCheck == 1)
  {
    return PlatformUtilities_iOS::GetProductType(void)::sType;
  }

  PlatformUtilities_iOS::GetProductType(void)::sCompletedCheck = 1;
  v2 = MGGetProductType();
  if (v2 > 2158787295)
  {
    if (v2 > 3196158496)
    {
      if (v2 > 3711192743)
      {
        if (v2 > 3885279869)
        {
          if (v2 <= 4068102501)
          {
            if (v2 > 3953847431)
            {
              if (v2 > 4055323050)
              {
                if (v2 == 4055323051)
                {
                  result = 58;
                  goto LABEL_483;
                }

                if (v2 == 4067129264)
                {
                  result = 139;
                  goto LABEL_483;
                }
              }

              else
              {
                if (v2 == 3953847432)
                {
                  result = 170;
                  goto LABEL_483;
                }

                if (v2 == 4025247511)
                {
                  result = 133;
                  goto LABEL_483;
                }
              }

              goto LABEL_482;
            }

            if (v2 == 3885279870)
            {
              result = 32;
              goto LABEL_483;
            }

            if (v2 != 3933865620)
            {
              if (v2 == 3933982784)
              {
                result = 53;
                goto LABEL_483;
              }

              goto LABEL_482;
            }

            goto LABEL_373;
          }

          if (v2 <= 4231109336)
          {
            switch(v2)
            {
              case 4068102502:
                result = 168;
                goto LABEL_483;
              case 4172444931:
                result = 132;
                goto LABEL_483;
              case 4201643249:
                result = 35;
                goto LABEL_483;
            }

            goto LABEL_482;
          }

          if (v2 > 4240173201)
          {
            if (v2 == 4240173202)
            {
              result = 2;
              goto LABEL_483;
            }

            if (v2 == 4242862982)
            {
              result = 80;
              goto LABEL_483;
            }

            goto LABEL_482;
          }

          if (v2 != 4231109337)
          {
            if (v2 == 4232256925)
            {
              result = 114;
              goto LABEL_483;
            }

            goto LABEL_482;
          }

LABEL_391:
          result = 198;
          goto LABEL_483;
        }

        if (v2 <= 3825599859)
        {
          if (v2 <= 3767261005)
          {
            switch(v2)
            {
              case 3711192744:
                result = 84;
                goto LABEL_483;
              case 3742999858:
                result = 159;
                goto LABEL_483;
              case 3743999268:
                result = 24;
                goto LABEL_483;
            }

            goto LABEL_482;
          }

          if (v2 == 3767261006)
          {
            result = 153;
            goto LABEL_483;
          }

          if (v2 != 3801472101)
          {
            if (v2 == 3819635030)
            {
              result = 160;
              goto LABEL_483;
            }

            goto LABEL_482;
          }

          goto LABEL_346;
        }

        if (v2 <= 3863625341)
        {
          switch(v2)
          {
            case 3825599860:
              result = 20;
              goto LABEL_483;
            case 3839750255:
              result = 169;
              goto LABEL_483;
            case 3856877970:
              result = 110;
              goto LABEL_483;
          }

          goto LABEL_482;
        }

        if (v2 > 3865922941)
        {
          if (v2 == 3865922942)
          {
            result = 56;
            goto LABEL_483;
          }

          if (v2 == 3867318491)
          {
            result = 162;
            goto LABEL_483;
          }

          goto LABEL_482;
        }

        if (v2 != 3863625342)
        {
          if (v2 == 3865897231)
          {
            result = 79;
            goto LABEL_483;
          }

          goto LABEL_482;
        }

        goto LABEL_392;
      }

      if (v2 > 3455223060)
      {
        if (v2 <= 3637438249)
        {
          if (v2 <= 3571532205)
          {
            if (v2 == 3455223061)
            {
              result = 83;
              goto LABEL_483;
            }

            if (v2 == 3540156652)
            {
              result = 93;
              goto LABEL_483;
            }

            v8 = 3543203160;
            goto LABEL_276;
          }

          if (v2 <= 3599094682)
          {
            if (v2 == 3571532206)
            {
              result = 151;
              goto LABEL_483;
            }

            if (v2 == 3585085679)
            {
              result = 10;
              goto LABEL_483;
            }

LABEL_482:
            result = 0;
            goto LABEL_483;
          }

          if (v2 != 3599094683)
          {
            if (v2 != 3636345305)
            {
              goto LABEL_482;
            }

            goto LABEL_355;
          }

LABEL_392:
          result = 97;
          goto LABEL_483;
        }

        if (v2 <= 3670339450)
        {
          if (v2 == 3637438250)
          {
            result = 52;
            goto LABEL_483;
          }

          if (v2 != 3645319985)
          {
            if (v2 == 3663011141)
            {
              result = 156;
              goto LABEL_483;
            }

            goto LABEL_482;
          }

          goto LABEL_400;
        }

        if (v2 > 3683904381)
        {
          if (v2 == 3683904382)
          {
            result = 137;
            goto LABEL_483;
          }

          v4 = 3707345671;
          goto LABEL_367;
        }

        if (v2 == 3670339451)
        {
          goto LABEL_373;
        }

        if (v2 != 3677894691)
        {
          goto LABEL_482;
        }

LABEL_390:
        result = 102;
        goto LABEL_483;
      }

      if (v2 > 3242623366)
      {
        if (v2 <= 3361025852)
        {
          switch(v2)
          {
            case 3242623367:
              result = 15;
              goto LABEL_483;
            case 3300281076:
              result = 54;
              goto LABEL_483;
            case 3348380076:
              result = 4;
              goto LABEL_483;
          }

          goto LABEL_482;
        }

        if (v2 <= 3402870383)
        {
          if (v2 != 3361025853)
          {
            if (v2 == 3397214291)
            {
              result = 74;
              goto LABEL_483;
            }

            goto LABEL_482;
          }

          goto LABEL_397;
        }

        if (v2 == 3402870384)
        {
          result = 70;
          goto LABEL_483;
        }

        v6 = 3417429877;
LABEL_371:
        if (v2 != v6)
        {
          goto LABEL_482;
        }

        goto LABEL_372;
      }

      if (v2 <= 3217792189)
      {
        if (v2 != 3196158497)
        {
          if (v2 == 3196805751)
          {
            result = 7;
            goto LABEL_483;
          }

          if (v2 == 3215673114)
          {
            result = 75;
            goto LABEL_483;
          }

          goto LABEL_482;
        }

        goto LABEL_355;
      }

      if (v2 == 3217792190)
      {
        goto LABEL_373;
      }

      if (v2 == 3228373941)
      {
        goto LABEL_393;
      }

      if (v2 != 3241053352)
      {
        goto LABEL_482;
      }

LABEL_405:
      result = 107;
      goto LABEL_483;
    }

    if (v2 > 2673319455)
    {
      if (v2 > 2903084587)
      {
        if (v2 <= 3054476160)
        {
          if (v2 <= 2943112656)
          {
            switch(v2)
            {
              case 2903084588:
                result = 85;
                goto LABEL_483;
              case 2940697645:
                result = 38;
                goto LABEL_483;
              case 2941181571:
                result = 41;
                goto LABEL_483;
            }
          }

          else if (v2 > 2979575959)
          {
            if (v2 == 2979575960)
            {
              result = 155;
              goto LABEL_483;
            }

            if (v2 == 3001488778)
            {
              result = 34;
              goto LABEL_483;
            }
          }

          else
          {
            if (v2 == 2943112657)
            {
              result = 149;
              goto LABEL_483;
            }

            if (v2 == 2959111092)
            {
              result = 95;
              goto LABEL_483;
            }
          }

          goto LABEL_482;
        }

        if (v2 <= 3128362814)
        {
          if (v2 == 3054476161)
          {
            goto LABEL_252;
          }

          if (v2 == 3101941570)
          {
            goto LABEL_282;
          }

          v10 = 3104290450;
LABEL_322:
          if (v2 == v10)
          {
            result = 197;
            goto LABEL_483;
          }

          goto LABEL_482;
        }

        if (v2 <= 3143587591)
        {
          if (v2 != 3128362815)
          {
            if (v2 == 3133873109)
            {
              result = 62;
              goto LABEL_483;
            }

            goto LABEL_482;
          }

LABEL_372:
          result = 196;
          goto LABEL_483;
        }

        if (v2 == 3143587592)
        {
          result = 166;
          goto LABEL_483;
        }

        v9 = 3184375231;
LABEL_336:
        if (v2 == v9)
        {
          result = 77;
          goto LABEL_483;
        }

        goto LABEL_482;
      }

      if (v2 > 2751865417)
      {
        if (v2 <= 2795618602)
        {
          switch(v2)
          {
            case 2751865418:
              result = 143;
              goto LABEL_483;
            case 2781508713:
              result = 6;
              goto LABEL_483;
            case 2793418701:
              result = 19;
              goto LABEL_483;
          }

          goto LABEL_482;
        }

        if (v2 <= 2823174121)
        {
          if (v2 == 2795618603)
          {
            result = 42;
            goto LABEL_483;
          }

          if (v2 == 2797549163)
          {
            result = 113;
            goto LABEL_483;
          }

          goto LABEL_482;
        }

        if (v2 != 2823174122)
        {
          v4 = 2880863278;
          goto LABEL_367;
        }

        goto LABEL_394;
      }

      if (v2 > 2702125346)
      {
        switch(v2)
        {
          case 2702125347:
            result = 3;
            goto LABEL_483;
          case 2722529672:
            result = 28;
            goto LABEL_483;
          case 2730762296:
            result = 112;
            goto LABEL_483;
        }

        goto LABEL_482;
      }

      if (v2 != 2673319456)
      {
        if (v2 == 2688879999)
        {
          result = 39;
          goto LABEL_483;
        }

        v7 = 2692844695;
LABEL_298:
        if (v2 == v7)
        {
          result = 199;
          goto LABEL_483;
        }

        goto LABEL_482;
      }

      goto LABEL_403;
    }

    if (v2 > 2454275342)
    {
      if (v2 > 2614323574)
      {
        if (v2 > 2625074842)
        {
          if (v2 <= 2634105756)
          {
            if (v2 == 2625074843)
            {
              result = 161;
              goto LABEL_483;
            }

            v5 = 2628394914;
LABEL_208:
            if (v2 != v5)
            {
              goto LABEL_482;
            }

LABEL_252:
            result = 101;
            goto LABEL_483;
          }

          if (v2 != 2634105757)
          {
            if (v2 == 2644487444)
            {
              result = 92;
              goto LABEL_483;
            }

            goto LABEL_482;
          }

          goto LABEL_390;
        }

        if (v2 != 2614323575)
        {
          if (v2 != 2619317134)
          {
            if (v2 != 2622433984)
            {
              goto LABEL_482;
            }

            goto LABEL_319;
          }

          goto LABEL_402;
        }

LABEL_399:
        result = 50;
        goto LABEL_483;
      }

      if (v2 > 2487868871)
      {
        if (v2 == 2487868872)
        {
          goto LABEL_405;
        }

        if (v2 != 2516717268)
        {
          if (v2 == 2566016329)
          {
            result = 94;
            goto LABEL_483;
          }

          goto LABEL_482;
        }

LABEL_403:
        result = 73;
        goto LABEL_483;
      }

      if (v2 == 2454275343)
      {
        result = 63;
        goto LABEL_483;
      }

      if (v2 != 2458172802)
      {
        v3 = 2468178735;
LABEL_187:
        if (v2 == v3)
        {
          result = 120;
          goto LABEL_483;
        }

        goto LABEL_482;
      }
    }

    else
    {
      if (v2 > 2288107368)
      {
        if (v2 <= 2336512886)
        {
          if (v2 != 2288107369)
          {
            if (v2 == 2309863438)
            {
              result = 37;
              goto LABEL_483;
            }

            if (v2 == 2311900306)
            {
              result = 14;
              goto LABEL_483;
            }

            goto LABEL_482;
          }

          goto LABEL_406;
        }

        if (v2 > 2418348557)
        {
          if (v2 == 2418348558)
          {
            result = 135;
            goto LABEL_483;
          }

          if (v2 == 2445473385)
          {
            result = 124;
            goto LABEL_483;
          }

          goto LABEL_482;
        }

        if (v2 == 2336512887)
        {
          goto LABEL_398;
        }

        if (v2 != 2385671069)
        {
          goto LABEL_482;
        }

        goto LABEL_399;
      }

      if (v2 <= 2236272847)
      {
        if (v2 != 2158787296)
        {
          if (v2 == 2159747553)
          {
            result = 26;
            goto LABEL_483;
          }

          if (v2 != 2162679683)
          {
            goto LABEL_482;
          }

          goto LABEL_401;
        }

LABEL_232:
        result = 69;
        goto LABEL_483;
      }

      if (v2 != 2236272848)
      {
        if (v2 != 2262113699)
        {
          if (v2 == 2270970153)
          {
            result = 21;
            goto LABEL_483;
          }

          goto LABEL_482;
        }

        goto LABEL_404;
      }
    }

LABEL_355:
    result = 87;
    goto LABEL_483;
  }

  if (v2 <= 1302273957)
  {
    if (v2 > 676119127)
    {
      if (v2 > 952317140)
      {
        if (v2 <= 1169082143)
        {
          if (v2 > 1085318933)
          {
            if (v2 <= 1114644380)
            {
              if (v2 == 1085318934)
              {
                result = 131;
                goto LABEL_483;
              }

              if (v2 == 1110205732)
              {
                result = 48;
                goto LABEL_483;
              }

              goto LABEL_482;
            }

            if (v2 == 1114644381)
            {
              result = 82;
              goto LABEL_483;
            }

            v4 = 1119807502;
LABEL_367:
            if (v2 == v4)
            {
              result = 51;
              goto LABEL_483;
            }

            goto LABEL_482;
          }

          if (v2 != 952317141)
          {
            if (v2 != 1036038801)
            {
              if (v2 == 1060988941)
              {
                result = 9;
                goto LABEL_483;
              }

              goto LABEL_482;
            }

            goto LABEL_290;
          }

LABEL_398:
          result = 121;
          goto LABEL_483;
        }

        if (v2 <= 1280441782)
        {
          switch(v2)
          {
            case 1169082144:
              result = 33;
              goto LABEL_483;
            case 1234705395:
              result = 125;
              goto LABEL_483;
            case 1260109173:
              result = 45;
              goto LABEL_483;
          }

          goto LABEL_482;
        }

        if (v2 > 1293446024)
        {
          if (v2 != 1293446025)
          {
            if (v2 == 1294429942)
            {
              result = 147;
              goto LABEL_483;
            }

            goto LABEL_482;
          }

          goto LABEL_389;
        }

        if (v2 != 1280441783)
        {
          if (v2 == 1280909812)
          {
            result = 152;
            goto LABEL_483;
          }

          goto LABEL_482;
        }

LABEL_396:
        result = 78;
        goto LABEL_483;
      }

      if (v2 > 776033018)
      {
        if (v2 > 851437780)
        {
          if (v2 <= 910181309)
          {
            if (v2 == 851437781)
            {
              result = 29;
              goto LABEL_483;
            }

            if (v2 == 896202454)
            {
              result = 71;
              goto LABEL_483;
            }

            goto LABEL_482;
          }

          if (v2 == 910181310)
          {
            goto LABEL_395;
          }

          v10 = 910313402;
          goto LABEL_322;
        }

        if (v2 == 776033019)
        {
          result = 57;
          goto LABEL_483;
        }

        if (v2 != 810906663)
        {
          if (v2 != 820711327)
          {
            goto LABEL_482;
          }

          goto LABEL_232;
        }

LABEL_319:
        result = 98;
        goto LABEL_483;
      }

      if (v2 <= 746003605)
      {
        if (v2 == 676119128)
        {
          result = 146;
          goto LABEL_483;
        }

        if (v2 == 689804742)
        {
          result = 36;
          goto LABEL_483;
        }

        v6 = 698697055;
        goto LABEL_371;
      }

      if (v2 == 746003606)
      {
        goto LABEL_252;
      }

      if (v2 == 749116821)
      {
        result = 165;
        goto LABEL_483;
      }

      if (v2 != 761631964)
      {
        goto LABEL_482;
      }

LABEL_394:
      result = 109;
      goto LABEL_483;
    }

    if (v2 <= 337183580)
    {
      if (v2 > 133314239)
      {
        if (v2 <= 228444037)
        {
          if (v2 == 133314240)
          {
            result = 40;
            goto LABEL_483;
          }

          if (v2 != 157833461)
          {
            if (v2 == 173258742)
            {
              result = 59;
              goto LABEL_483;
            }

            goto LABEL_482;
          }

          goto LABEL_396;
        }

        if (v2 > 262180326)
        {
          if (v2 == 262180327)
          {
            result = 123;
            goto LABEL_483;
          }

          if (v2 == 330877086)
          {
            result = 43;
            goto LABEL_483;
          }

          goto LABEL_482;
        }

        if (v2 != 228444038)
        {
          v3 = 253148925;
          goto LABEL_187;
        }

LABEL_400:
        result = 72;
        goto LABEL_483;
      }

      if (v2 <= 42878381)
      {
        switch(v2)
        {
          case 23433786:
            result = 61;
            goto LABEL_483;
          case 33245053:
            result = 68;
            goto LABEL_483;
          case 40511012:
            result = 134;
            goto LABEL_483;
        }

        goto LABEL_482;
      }

      if (v2 == 42878382)
      {
        result = 12;
        goto LABEL_483;
      }

      if (v2 != 79936591)
      {
        v9 = 88647037;
        goto LABEL_336;
      }

LABEL_404:
      result = 76;
      goto LABEL_483;
    }

    if (v2 <= 363237282)
    {
      if (v2 > 344862119)
      {
        switch(v2)
        {
          case 344862120:
            result = 115;
            goto LABEL_483;
          case 355234908:
            result = 129;
            goto LABEL_483;
          case 358923952:
            result = 126;
            goto LABEL_483;
        }

        goto LABEL_482;
      }

      if (v2 == 337183581)
      {
        result = 11;
        goto LABEL_483;
      }

      if (v2 == 340218669)
      {
        result = 111;
        goto LABEL_483;
      }

      if (v2 != 341800273)
      {
        goto LABEL_482;
      }

      goto LABEL_346;
    }

    if (v2 <= 502329936)
    {
      if (v2 != 363237283)
      {
        if (v2 == 425046865)
        {
          result = 157;
          goto LABEL_483;
        }

        if (v2 == 445396642)
        {
          result = 117;
          goto LABEL_483;
        }

        goto LABEL_482;
      }

      goto LABEL_373;
    }

    if (v2 <= 555503453)
    {
      if (v2 == 502329937)
      {
        result = 22;
        goto LABEL_483;
      }

      v4 = 551446205;
      goto LABEL_367;
    }

    if (v2 != 555503454)
    {
      if (v2 == 574536383)
      {
        result = 30;
        goto LABEL_483;
      }

      goto LABEL_482;
    }

LABEL_402:
    result = 106;
    goto LABEL_483;
  }

  if (v2 > 1733600852)
  {
    if (v2 > 2023824666)
    {
      if (v2 <= 2085054104)
      {
        if (v2 > 2078329140)
        {
          if (v2 <= 2081274471)
          {
            if (v2 == 2078329141)
            {
              result = 31;
              goto LABEL_483;
            }

            if (v2 == 2080700391)
            {
              result = 46;
              goto LABEL_483;
            }

            goto LABEL_482;
          }

          if (v2 != 2081274472)
          {
            if (v2 == 2084894489)
            {
              result = 164;
              goto LABEL_483;
            }

            goto LABEL_482;
          }

LABEL_401:
          result = 122;
          goto LABEL_483;
        }

        if (v2 == 2023824667)
        {
          goto LABEL_282;
        }

        if (v2 != 2032616841)
        {
          if (v2 == 2048538371)
          {
            result = 60;
            goto LABEL_483;
          }

          goto LABEL_482;
        }

LABEL_395:
        result = 25;
        goto LABEL_483;
      }

      if (v2 > 2103978417)
      {
        if (v2 <= 2141052861)
        {
          if (v2 != 2103978418)
          {
            if (v2 == 2132302344)
            {
              result = 148;
              goto LABEL_483;
            }

            goto LABEL_482;
          }

LABEL_389:
          result = 96;
          goto LABEL_483;
        }

        if (v2 != 2141052862)
        {
          v6 = 2144123136;
          goto LABEL_371;
        }

LABEL_373:
        result = 195;
        goto LABEL_483;
      }

      if (v2 == 2085054105)
      {
        result = 158;
        goto LABEL_483;
      }

      if (v2 != 2089455188)
      {
        v7 = 2095883268;
        goto LABEL_298;
      }

LABEL_397:
      result = 105;
      goto LABEL_483;
    }

    if (v2 > 1868379042)
    {
      if (v2 <= 1908832378)
      {
        if (v2 != 1868379043)
        {
          if (v2 == 1878257790)
          {
            result = 81;
            goto LABEL_483;
          }

          if (v2 == 1895344378)
          {
            result = 86;
            goto LABEL_483;
          }

          goto LABEL_482;
        }

        goto LABEL_282;
      }

      if (v2 > 2001966016)
      {
        if (v2 != 2001966017)
        {
          if (v2 == 2021146989)
          {
            result = 18;
            goto LABEL_483;
          }

          goto LABEL_482;
        }

        goto LABEL_346;
      }

      if (v2 != 1908832379)
      {
        if (v2 == 1990293942)
        {
          result = 140;
          goto LABEL_483;
        }

        goto LABEL_482;
      }

      goto LABEL_391;
    }

    if (v2 <= 1756509289)
    {
      if (v2 == 1733600853)
      {
        result = 128;
        goto LABEL_483;
      }

      if (v2 == 1737882206)
      {
        result = 116;
        goto LABEL_483;
      }

      v8 = 1744899922;
LABEL_276:
      if (v2 != v8)
      {
        goto LABEL_482;
      }

      goto LABEL_373;
    }

    if (v2 == 1756509290)
    {
      result = 144;
      goto LABEL_483;
    }

    if (v2 == 1770142589)
    {
      result = 163;
      goto LABEL_483;
    }

    v5 = 1834147427;
    goto LABEL_208;
  }

  if (v2 <= 1429914405)
  {
    if (v2 > 1373516432)
    {
      if (v2 > 1408738133)
      {
        if (v2 > 1415625991)
        {
          if (v2 == 1415625992)
          {
            result = 136;
            goto LABEL_483;
          }

          if (v2 == 1419435331)
          {
            result = 142;
            goto LABEL_483;
          }
        }

        else
        {
          if (v2 == 1408738134)
          {
            result = 150;
            goto LABEL_483;
          }

          if (v2 == 1412429328)
          {
            result = 65;
            goto LABEL_483;
          }
        }

        goto LABEL_482;
      }

      if (v2 != 1373516433)
      {
        if (v2 == 1380747801)
        {
          result = 127;
          goto LABEL_483;
        }

        if (v2 == 1402208364)
        {
          result = 130;
          goto LABEL_483;
        }

        goto LABEL_482;
      }

LABEL_282:
      result = 100;
      goto LABEL_483;
    }

    if (v2 <= 1353145732)
    {
      if (v2 != 1302273958)
      {
        if (v2 == 1309571158)
        {
          result = 141;
          goto LABEL_483;
        }

        if (v2 == 1325975682)
        {
          result = 67;
          goto LABEL_483;
        }

        goto LABEL_482;
      }

LABEL_406:
      result = 108;
      goto LABEL_483;
    }

    if (v2 != 1353145733)
    {
      if (v2 != 1364038516)
      {
        if (v2 == 1371389549)
        {
          result = 27;
          goto LABEL_483;
        }

        goto LABEL_482;
      }

      goto LABEL_372;
    }

LABEL_346:
    result = 88;
    goto LABEL_483;
  }

  if (v2 > 1573906121)
  {
    if (v2 > 1625227433)
    {
      if (v2 > 1701146936)
      {
        if (v2 == 1701146937)
        {
          result = 49;
          goto LABEL_483;
        }

        if (v2 == 1721691077)
        {
          result = 16;
          goto LABEL_483;
        }

        goto LABEL_482;
      }

      if (v2 != 1625227434)
      {
        if (v2 == 1644180312)
        {
          result = 145;
          goto LABEL_483;
        }

        goto LABEL_482;
      }

LABEL_393:
      result = 104;
      goto LABEL_483;
    }

    if (v2 == 1573906122)
    {
      result = 138;
      goto LABEL_483;
    }

    if (v2 == 1602181456)
    {
      result = 154;
      goto LABEL_483;
    }

    if (v2 != 1608945770)
    {
      goto LABEL_482;
    }

LABEL_290:
    result = 192;
    goto LABEL_483;
  }

  if (v2 <= 1540760352)
  {
    switch(v2)
    {
      case 1429914406:
        result = 23;
        goto LABEL_483;
      case 1434404433:
        result = 17;
        goto LABEL_483;
      case 1517755655:
        result = 171;
        goto LABEL_483;
    }

    goto LABEL_482;
  }

  if (v2 > 1554479184)
  {
    if (v2 == 1554479185)
    {
      result = 167;
      goto LABEL_483;
    }

    if (v2 == 1559256613)
    {
      result = 55;
      goto LABEL_483;
    }

    goto LABEL_482;
  }

  if (v2 == 1540760353)
  {
    result = 5;
    goto LABEL_483;
  }

  if (v2 != 1549248876)
  {
    goto LABEL_482;
  }

  result = 172;
LABEL_483:
  PlatformUtilities_iOS::GetProductType(void)::sType = result;
  return result;
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](uint64_t a1)
{
  *(a1 + 176) = 0;
  v2 = MEMORY[0x1E69E5560] + 104;
  *(a1 + 128) = MEMORY[0x1E69E5560] + 104;
  v3 = a1 + 16;
  v4 = MEMORY[0x1E69E5560] + 64;
  *(a1 + 16) = MEMORY[0x1E69E5560] + 64;
  v5 = MEMORY[0x1E69E54D8];
  v6 = *(MEMORY[0x1E69E54D8] + 24);
  v7 = *(MEMORY[0x1E69E54D8] + 16);
  *a1 = v7;
  *(a1 + *(v7 - 24)) = v6;
  *(a1 + 8) = 0;
  v8 = (a1 + *(*a1 - 24));
  std::ios_base::init(v8, (a1 + 24));
  v9 = MEMORY[0x1E69E5560] + 24;
  v8[1].__vftable = 0;
  v8[1].__fmtflags_ = -1;
  v10 = v5[5];
  v11 = v5[4];
  *(a1 + 16) = v11;
  *(v3 + *(v11 - 24)) = v10;
  v12 = v5[1];
  *a1 = v12;
  *(a1 + *(v12 - 24)) = v5[6];
  *a1 = v9;
  *(a1 + 128) = v2;
  v13 = MEMORY[0x1E69E5538] + 16;
  *(a1 + 16) = v4;
  *(a1 + 24) = v13;
  MEMORY[0x1BFAF5720](a1 + 32);
  *(a1 + 88) = 0;
  v14 = a1 + 88;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 24) = MEMORY[0x1E69E5548] + 16;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 120) = 24;
  *(a1 + 112) = a1 + 88;
  *(a1 + 40) = a1 + 88;
  *(a1 + 48) = a1 + 88;
  *(a1 + 56) = a1 + 88;
  std::string::resize((a1 + 88), 0x16uLL, 0);
  v15 = *(a1 + 111);
  if (v15 < 0)
  {
    v15 = *(a1 + 96);
  }

  *(a1 + 64) = v14;
  *(a1 + 72) = v14;
  *(a1 + 80) = v14 + v15;
  return a1;
}

void sub_1BA63DB48(_Unwind_Exception *a1)
{
  if (*(v1 + 111) < 0)
  {
    operator delete(*v4);
  }

  *(v1 + 24) = v3;
  std::locale::~locale((v1 + 32));
  std::iostream::~basic_iostream();
  MEMORY[0x1BFAF5770](v2);
  _Unwind_Resume(a1);
}

void *std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x1BFAF55F0](v20, a1);
  if (v20[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 5);
    v8 = *(v6 + 2);
    v9 = *(v6 + 36);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&__b, MEMORY[0x1E69E5318]);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&__b);
      *(v6 + 36) = v9;
    }

    v11 = a2 + a3;
    if ((v8 & 0xB0) == 0x20)
    {
      v12 = a2 + a3;
    }

    else
    {
      v12 = a2;
    }

    if (!v7)
    {
      goto LABEL_27;
    }

    v13 = *(v6 + 3);
    v14 = v13 <= a3;
    v15 = v13 - a3;
    v16 = v14 ? 0 : v15;
    if (v12 - a2 >= 1 && (*(*v7 + 96))(v7, a2, v12 - a2) != v12 - a2)
    {
      goto LABEL_27;
    }

    if (v16 >= 1)
    {
      if (v16 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v16 >= 0x17)
      {
        operator new();
      }

      v22 = v16;
      memset(&__b, v9, v16);
      *(&__b.__locale_ + v16) = 0;
      if (v22 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b.__locale_;
      }

      v18 = (*(*v7 + 96))(v7, p_b, v16);
      if (v22 < 0)
      {
        operator delete(__b.__locale_);
      }

      if (v18 != v16)
      {
        goto LABEL_27;
      }
    }

    if (v11 - v12 < 1 || (*(*v7 + 96))(v7, v12, v11 - v12) == v11 - v12)
    {
      *(v6 + 3) = 0;
    }

    else
    {
LABEL_27:
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x1BFAF5600](v20);
  return a1;
}

void sub_1BA63DE34(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x1BFAF5600](&a10, a2, a3, a4, a5, a6, a7, a8);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v17 + *(*v17 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x1BA63DE08);
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(uint64_t a1)
{
  v2 = MEMORY[0x1E69E54D8];
  v3 = *MEMORY[0x1E69E54D8];
  *a1 = *MEMORY[0x1E69E54D8];
  v4 = *(v2 + 72);
  *(a1 + *(v3 - 24)) = *(v2 + 64);
  *(a1 + 16) = v4;
  *(a1 + 24) = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 32));

  return std::iostream::~basic_iostream();
}

uint64_t *std::unique_ptr<PulseTone>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {

    JUMPOUT(0x1BFAF5800);
  }

  return result;
}

void sub_1BA63E5E8(_Unwind_Exception *a1)
{
  v3 = v1;

  _Unwind_Resume(a1);
}

id generateAudioSelfTestError(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (AVAudioDeviceTestServiceLog(void)::once != -1)
  {
    dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
  }

  v2 = *AVAudioDeviceTestServiceLog(void)::category;
  if (os_log_type_enabled(*AVAudioDeviceTestServiceLog(void)::category, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315650;
    v6 = "AVAudioDeviceTestService.mm";
    v7 = 1024;
    v8 = 163;
    v9 = 2048;
    v10 = a1;
    _os_log_impl(&dword_1BA5AC000, v2, OS_LOG_TYPE_ERROR, "%25s:%-5d error code %li", &v5, 0x1Cu);
  }

  v3 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:a1 userInfo:0];

  return v3;
}

uint64_t *std::vector<float>::vector[abi:ne200100](uint64_t *a1, uint64_t a2, __int32 *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    operator new();
  }

  return a1;
}

void sub_1BA64013C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1BA640790(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = AVAudioDeviceTestService;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

__objc2_meth_list *AVAudioDeviceTestServiceSignPost(void)
{
  p_opt_class_meths = &OBJC_PROTOCOL___Endpointer.opt_class_meths;
  {
    p_opt_class_meths = (&OBJC_PROTOCOL___Endpointer + 48);
    if (v4)
    {
      AVAudioDeviceTestServiceSignPost(void)::global = os_log_create("com.apple.avfaudio", "adtssp");
      p_opt_class_meths = (&OBJC_PROTOCOL___Endpointer + 48);
    }
  }

  v2 = p_opt_class_meths[258];

  return v2;
}

uint64_t TonePlaybackSignpostID(void)
{
  {
    v1 = AVAudioDeviceTestServiceSignPost();
    v2 = os_signpost_id_generate(v1);

    TonePlaybackSignpostID(void)::spid = v2;
  }

  return TonePlaybackSignpostID(void)::spid;
}

void sub_1BA647738(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, void *a58)
{
  _Block_object_dispose((v63 - 192), 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3457(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1BA64AC78(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, void *exc_bufa, void *a15, uint64_t a16, void *a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, void *a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, void *a60)
{
  if (a2)
  {

    _Block_object_dispose((v66 - 224), 8);
    _Block_object_dispose(&a39, 8);

    if (a2 == 2)
    {
      v68 = objc_begin_catch(a1);
      if (AVAudioDeviceTestServiceLog(void)::once != -1)
      {
        dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
      }

      v69 = *AVAudioDeviceTestServiceLog(void)::category;
      if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
      {
        v70 = generateAudioSelfTestError(-7);
        v71 = [v70 code];
        *(v66 - 224) = 136315906;
        STACK[0x224] = "AVAudioDeviceTestService.mm";
        *(v66 - 212) = 1024;
        LODWORD(STACK[0x22E]) = 838;
        *(v66 - 206) = 2112;
        STACK[0x234] = v68;
        *(v66 - 196) = 2048;
        STACK[0x23E] = v71;
        _os_log_impl(&dword_1BA5AC000, v69, OS_LOG_TYPE_ERROR, "%25s:%-5d exception (%@) with test error (%li)", (v66 - 224), 0x26u);
      }

      v72 = generateAudioSelfTestError(-7);
      (*(a19 + 16))(a19, 0, v72);

      objc_end_catch();
    }

    else
    {
      objc_begin_catch(a1);
    }

    JUMPOUT(0x1BA64A58CLL);
  }

  _Unwind_Resume(a1);
}

void *___ZL36getMSNMonitorBeginExceptionSymbolLocv_block_invoke(uint64_t a1)
{
  v2 = MediaSafetyNetLibrary();
  result = dlsym(v2, "MSNMonitorBeginException");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMSNMonitorBeginExceptionSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *MediaSafetyNetLibrary(void)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!MediaSafetyNetLibraryCore(char **)::frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = ___ZL25MediaSafetyNetLibraryCorePPc_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7EF5928;
    v6 = 0;
    MediaSafetyNetLibraryCore(char **)::frameworkLibrary = _sl_dlopen();
  }

  v0 = MediaSafetyNetLibraryCore(char **)::frameworkLibrary;
  if (!MediaSafetyNetLibraryCore(char **)::frameworkLibrary)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *MediaSafetyNetLibrary()"];
    [v0 handleFailureInFunction:v3 file:@"AVAudioDeviceTestService.mm" lineNumber:46 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

void sub_1BA64C4E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, void *a11, void *a12)
{
  _Block_object_dispose((v13 - 176), 8);

  _Unwind_Resume(a1);
}

void *___ZL34getMSNMonitorEndExceptionSymbolLocv_block_invoke(uint64_t a1)
{
  v2 = MediaSafetyNetLibrary();
  result = dlsym(v2, "MSNMonitorEndException");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMSNMonitorEndExceptionSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1BA64C838(_Unwind_Exception *a1)
{
  objc_sync_exit(v4);

  _Unwind_Resume(a1);
}

uint64_t ___ZL25MediaSafetyNetLibraryCorePPc_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  MediaSafetyNetLibraryCore(char **)::frameworkLibrary = result;
  return result;
}

void sub_1BA64CCAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  objc_sync_exit(v10);

  _Unwind_Resume(a1);
}

void sub_1BA64F3A8(_Unwind_Exception *a1)
{
  dispatch_semaphore_signal(*(v3 + 32));

  _Unwind_Resume(a1);
}

uint64_t AVAudioUnitMIDIInstrumentImpl::SendMIDIEvent(AVAudioUnitMIDIInstrumentImpl *this, int a2, int a3, int a4, uint64_t a5)
{
  v26 = *MEMORY[0x1E69E9840];
  v13[0] = a5 | a2;
  v13[1] = a3;
  v13[2] = a4;
  v9 = (*(*this + 40))(this);
  v10 = (*(*v9 + 136))(v9, 0, 0, a5, 3, v13);
  if ((v10 & 1) == 0)
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v11 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_INFO))
    {
      *buf = 136316418;
      v15 = "AVAudioUnitMIDIInstrument.mm";
      v16 = 1024;
      v17 = 49;
      v18 = 1024;
      v19 = a2;
      v20 = 1024;
      v21 = a5;
      v22 = 1024;
      v23 = a3;
      v24 = 1024;
      v25 = a4;
      _os_log_impl(&dword_1BA5AC000, v11, OS_LOG_TYPE_INFO, "%25s:%-5d Unable to send midi event status(%d), channel(%d), param1(%d), param2(%d)\n", buf, 0x2Au);
    }
  }

  return v10;
}

uint64_t AVAudioUnitMIDIInstrumentImpl::SendProgramChange(AVAudioUnitMIDIInstrumentImpl *this, int a2, int a3, int a4, uint64_t a5)
{
  v25 = *MEMORY[0x1E69E9840];
  if ((AVAudioUnitMIDIInstrumentImpl::SendMIDIEvent(this, 176, 0, a3, a5) & 1) == 0)
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v9 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v14 = "AVAEInternal.h";
      v15 = 1024;
      v16 = 71;
      v17 = 2080;
      v18 = "AVAudioUnitMIDIInstrument.mm";
      v19 = 1024;
      v20 = 66;
      v21 = 2080;
      v22 = "SendProgramChange";
      v23 = 2080;
      v24 = "true == SendMIDIEvent(kMIDIMessage_ControlChange, 0, bankMSB, 0, channel)";
      _os_log_impl(&dword_1BA5AC000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "true == SendMIDIEvent(kMIDIMessage_ControlChange, 0, bankMSB, 0, channel)"}];
  }

  if ((AVAudioUnitMIDIInstrumentImpl::SendMIDIEvent(this, 176, 31, a4, a5) & 1) == 0)
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v10 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v14 = "AVAEInternal.h";
      v15 = 1024;
      v16 = 71;
      v17 = 2080;
      v18 = "AVAudioUnitMIDIInstrument.mm";
      v19 = 1024;
      v20 = 67;
      v21 = 2080;
      v22 = "SendProgramChange";
      v23 = 2080;
      v24 = "true == SendMIDIEvent(kMIDIMessage_ControlChange, bankSelectLSBParam1, bankLSB, 0, channel)";
      _os_log_impl(&dword_1BA5AC000, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "true == SendMIDIEvent(kMIDIMessage_ControlChange, bankSelectLSBParam1, bankLSB, 0, channel)"}];
  }

  if ((AVAudioUnitMIDIInstrumentImpl::SendMIDIEvent(this, 192, a2, 0, a5) & 1) == 0)
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v11 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v14 = "AVAEInternal.h";
      v15 = 1024;
      v16 = 71;
      v17 = 2080;
      v18 = "AVAudioUnitMIDIInstrument.mm";
      v19 = 1024;
      v20 = 68;
      v21 = 2080;
      v22 = "SendProgramChange";
      v23 = 2080;
      v24 = "true == SendMIDIEvent(kMIDIMessage_PatchChange, programID, 0, 0, channel)";
      _os_log_impl(&dword_1BA5AC000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "true == SendMIDIEvent(kMIDIMessage_PatchChange, programID, 0, 0, channel)"}];
  }

  return 1;
}

void AVAudioUnitMIDIInstrumentImpl::~AVAudioUnitMIDIInstrumentImpl(id *this)
{
  AVAudioUnitImpl::~AVAudioUnitImpl(this);

  JUMPOUT(0x1BFAF5800);
}

__objc2_meth_list *gAVAudioBufferLog(void)
{
  p_opt_class_meths = &OBJC_PROTOCOL___Endpointer.opt_class_meths;
  {
    p_opt_class_meths = (&OBJC_PROTOCOL___Endpointer + 48);
    if (v2)
    {
      gAVAudioBufferLog(void)::global = os_log_create("com.apple.avfaudio", "AVAB");
      p_opt_class_meths = (&OBJC_PROTOCOL___Endpointer + 48);
    }
  }

  return p_opt_class_meths[262];
}

void sub_1BA6536CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  caulk::mach::mach_port::~mach_port(va);
  _Unwind_Resume(a1);
}

void sub_1BA653D00(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, mach_port_name_t a12, const void *a13, const void *a14, const void *a15, char a16, void *__p, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, const void *a25, __int128 buf)
{
  __cxa_free_exception(v26);
  applesauce::CF::ObjectRef<__IOSurface *>::~ObjectRef(&a25);
  applesauce::CF::ObjectRef<__IOSurface *>::~ObjectRef(&a14);
  caulk::mach::mach_port::~mach_port(&a12);
  applesauce::CF::ObjectRef<__IOSurface *>::~ObjectRef(&a13);
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    v29 = gAVAudioBufferLog();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 136315394;
      *(&buf + 4) = "AVAudioBuffer.mm";
      WORD6(buf) = 1024;
      *(&buf + 14) = 714;
      _os_log_impl(&dword_1BA5AC000, v29, OS_LOG_TYPE_ERROR, "%25s:%-5d Remote shared buffer surface creation error", &buf, 0x12u);
    }

    __cxa_end_catch();
    JUMPOUT(0x1BA653A90);
  }

  if (a16 == 1)
  {
    unilaterally_billed_shared_memory::~unilaterally_billed_shared_memory(&a15);
  }

  if (__p)
  {
    a18 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t std::optional<unilaterally_billed_shared_memory>::operator=[abi:ne200100]<unilaterally_billed_shared_memory,void>(uint64_t a1, CFTypeRef cf)
{
  if (*(a1 + 8) == 1)
  {
    v3 = *a1;
    *a1 = cf;
    if (cf)
    {
      CFRetain(cf);
    }

    if (v3)
    {
      CFRelease(v3);
    }
  }

  else
  {
    std::construct_at[abi:ne200100]<unilaterally_billed_shared_memory,unilaterally_billed_shared_memory,unilaterally_billed_shared_memory*>(a1, cf);
    *(a1 + 8) = 1;
  }

  return a1;
}

void std::__optional_storage_base<unilaterally_billed_shared_memory,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<unilaterally_billed_shared_memory,false>>(uint64_t a1, CFTypeRef cf, unsigned __int8 a3)
{
  if (*(a1 + 8) == a3)
  {
    if (*(a1 + 8))
    {
      v3 = *a1;
      *a1 = cf;
      if (cf)
      {
        CFRetain(cf);
      }

      if (v3)
      {
        CFRelease(v3);
      }
    }
  }

  else
  {
    if (*(a1 + 8))
    {
      unilaterally_billed_shared_memory::~unilaterally_billed_shared_memory(a1);
      v5 = 0;
    }

    else
    {
      v4 = std::construct_at[abi:ne200100]<unilaterally_billed_shared_memory,unilaterally_billed_shared_memory,unilaterally_billed_shared_memory*>(a1, cf);
      v5 = 1;
    }

    *(v4 + 8) = v5;
  }
}

void *std::construct_at[abi:ne200100]<unilaterally_billed_shared_memory,unilaterally_billed_shared_memory,unilaterally_billed_shared_memory*>(void *a1, CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  *a1 = cf;
  return a1;
}

void sub_1BA654550(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, const void *a10, const void *a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, __int128 buf, __int16 a20, __int16 a21, int a22, uint64_t a23, void *__p, void *a25)
{
  __cxa_free_exception(v26);
  applesauce::CF::ObjectRef<__IOSurface *>::~ObjectRef(&a10);
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    v29 = gAVAudioBufferLog();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 136315650;
      *(&buf + 4) = "AVAudioBuffer.mm";
      WORD6(buf) = 1024;
      *(&buf + 14) = 683;
      a21 = 1024;
      a22 = v25;
      _os_log_impl(&dword_1BA5AC000, v29, OS_LOG_TYPE_ERROR, "%25s:%-5d Shared buffer surface creation error. Frame capacity: %d", &buf, 0x18u);
    }

    __cxa_end_catch();
    JUMPOUT(0x1BA65430CLL);
  }

  if (a12 == 1)
  {
    unilaterally_billed_shared_memory::~unilaterally_billed_shared_memory(&a11);
  }

  if (__p)
  {
    a25 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1BA655344(_Unwind_Exception *a1)
{
  AVAudioUnitImpl::~AVAudioUnitImpl(v1);
  MEMORY[0x1BFAF5800](v1, 0x10B1C4091B91F86);
  _Unwind_Resume(a1);
}

BOOL NBandEQFilterParametersForBand::GetBypass(NBandEQFilterParametersForBand *this)
{
  v1 = *(this + 6);
  v3 = 0.0;
  (*(**(this + 2) + 128))(*(this + 2), (v1 + 1000), 0, 0, &v3);
  return v3 != 0.0;
}

float NBandEQFilterParametersForBand::GetGain(NBandEQFilterParametersForBand *this)
{
  v1 = *(this + 6);
  v3 = 0.0;
  (*(**(this + 2) + 128))(*(this + 2), (v1 + 4000), 0, 0, &v3);
  return v3;
}

float NBandEQFilterParametersForBand::GetBandwidth(NBandEQFilterParametersForBand *this)
{
  v1 = *(this + 6);
  v3 = 0.0;
  (*(**(this + 2) + 128))(*(this + 2), (v1 + 5000), 0, 0, &v3);
  return v3;
}

float NBandEQFilterParametersForBand::GetFrequency(NBandEQFilterParametersForBand *this)
{
  v1 = *(this + 6);
  v3 = 0.0;
  (*(**(this + 2) + 128))(*(this + 2), (v1 + 3000), 0, 0, &v3);
  return v3;
}

uint64_t NBandEQFilterParametersForBand::GetFilterType(NBandEQFilterParametersForBand *this)
{
  v1 = *(this + 6);
  v3 = 0.0;
  (*(**(this + 2) + 128))(*(this + 2), (v1 + 2000), 0, 0, &v3);
  return v3;
}

void AVAudioUnitEQImpl::~AVAudioUnitEQImpl(id *this)
{
  AVAudioUnitEQImpl::~AVAudioUnitEQImpl(this);

  JUMPOUT(0x1BFAF5800);
}

{
  *this = &unk_1F384B6B8;

  AVAudioUnitImpl::~AVAudioUnitImpl(this);
}

void sub_1BA655B3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  os_unfair_lock_unlock(v10 + 18);

  _Unwind_Resume(a1);
}

void AVAudioFormatImpl::setMagicCookie(id *this, NSData *a2)
{
  v4 = a2;
  if (*this != v4)
  {
    v5 = v4;
    objc_storeStrong(this, a2);
    v4 = v5;
  }
}

id AudioSessionClass(void)
{
  if (AudioSessionClass(void)::once != -1)
  {
    dispatch_once(&AudioSessionClass(void)::once, &__block_literal_global_169);
  }

  v1 = AudioSessionClass(void)::gAudioSessionClass;

  return v1;
}

Class ___ZL17AudioSessionClassv_block_invoke()
{
  result = NSClassFromString(&cfstr_Avaudiosession_0.isa);
  AudioSessionClass(void)::gAudioSessionClass = result;
  return result;
}

uint64_t AVAudioSourceNodeImpl::SetInputFormat(AVAudioSourceNodeImpl *this, unint64_t a2, AVAudioFormat *a3)
{
  *(this + 23) = a3;
  if (a3)
  {
    return AVAudioNodeImplBase::SetInputFormat(this, 0, a3);
  }

  else
  {
    return 1;
  }
}

uint64_t AVAudioSourceNodeImpl::SetOutputFormat(AVAudioNodeImplBase *this, unint64_t a2, AVAudioFormat *a3)
{
  if (*(this + 23) || (result = AVAudioNodeImplBase::SetInputFormat(this, 0, a3), result))
  {

    return AVAudioNodeImplBase::SetOutputFormat(this, 0, a3);
  }

  return result;
}

void AVAudioSourceNodeImpl::~AVAudioSourceNodeImpl(AVAudioSourceNodeImpl *this)
{
  AVAudioSourceNodeImpl::~AVAudioSourceNodeImpl(this);

  JUMPOUT(0x1BFAF5800);
}

{
  *this = &unk_1F384A698;
  (*(**(this + 21) + 64))(*(this + 21), 1, 0, 0);
  std::unique_ptr<AVAEBlock<int({block_pointer})(unsigned int *,AudioTimeStamp const*,unsigned int,long,AudioBufferList *)>>::~unique_ptr[abi:ne200100](this + 22);

  AVAudioUnitImpl::~AVAudioUnitImpl(this);
}

void AVAudioSourceNodeImpl::AVAudioSourceNodeImpl(AVAudioNodeImplBase *a1, void *a2, uint64_t a3)
{
  v4 = *MEMORY[0x1E69E9840];
  *&buf.componentType = xmmword_1BA6CF3A0;
  buf.componentFlagsMask = 0;
  AVAudioNodeImpl::AVAudioNodeImpl(a1, 0, &buf, 0);
}

void sub_1BA6580D8(_Unwind_Exception *a1)
{
  MEMORY[0x1BFAF5800](v2, 0x80C40B8603338);
  AVAudioUnitImpl::~AVAudioUnitImpl(v1);
  _Unwind_Resume(a1);
}

void ___ZN29AVVCAudioQueueRecordingEngine16handleAudioInputEP16OpaqueAudioQueueP16AudioQueueBufferPK14AudioTimeStampjPK28AudioStreamPacketDescription_block_invoke_158(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_6;
  }

  v3 = std::__shared_weak_count::lock(v2);
  if (!v3 || (v4 = *(a1 + 32)) == 0)
  {
LABEL_6:
    if (kAVVCScope)
    {
      v5 = *kAVVCScope;
      if (!v5)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v5 = MEMORY[0x1E69E9C10];
      v6 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315650;
      v8 = "AVVCAudioQueueRecordingEngine.mm";
      v9 = 1024;
      v10 = 1820;
      v11 = 2048;
      v12 = 0;
      _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d nil object encountered (engine: %p). Bailing", &v7, 0x1Cu);
    }

LABEL_13:
    if (!v3)
    {
      return;
    }

    goto LABEL_14;
  }

  (*(*v4 + 104))(v4);
LABEL_14:
  std::__shared_weak_count::__release_shared[abi:ne200100](v3);
}

void __destroy_helper_block_ea8_32c44_ZTSNSt3__18weak_ptrI19AVVCRecordingEngineEE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t __copy_helper_block_ea8_32c44_ZTSNSt3__18weak_ptrI19AVVCRecordingEngineEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t RecordEncoderInputDataProc(OpaqueAudioConverter *a1, unsigned int *a2, AudioBufferList *a3, AudioStreamPacketDescription **a4, _DWORD *a5)
{
  v37 = *MEMORY[0x1E69E9840];
  v9 = *a5;
  v10 = a5[6];
  v11 = a5[4];
  v12 = a5[3] * v10;
  v13 = v11 - v10;
  if (kAVVCScope)
  {
    v14 = *kAVVCScope;
    if (!v14)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v14 = MEMORY[0x1E69E9C10];
    v15 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v16 = *a2;
    *buf = 136316162;
    v32 = "AVVCAudioQueueRecordingEngine.mm";
    v33 = 1024;
    v34 = 1487;
    v35 = 1024;
    LODWORD(v36) = v16;
    WORD2(v36) = 1024;
    *(&v36 + 6) = v11 - v10;
    WORD5(v36) = 1024;
    HIDWORD(v36) = v12;
    _os_log_impl(&dword_1BA5AC000, v14, OS_LOG_TYPE_DEBUG, "%25s:%-5d RecordEncoderInputDataProc: ENTRY: *ioNumberDataPackets passed in: %u, packets remaining: %u, bytes already consumed: %u", buf, 0x24u);
  }

LABEL_8:
  a3->mBuffers[0].mData = (*(v9 + 8) + v12);
  a3->mBuffers[0].mDataByteSize = a5[3] * v13;
  a3->mBuffers[0].mNumberChannels = a5[2];
  if (a4)
  {
    *a4 = *(v9 + 40);
  }

  if (!v11)
  {
    if (kAVVCScope)
    {
      v18 = *kAVVCScope;
      if (!v18)
      {
LABEL_25:
        a3->mBuffers[0].mDataByteSize = 0;
        *a2 = 0;
        goto LABEL_26;
      }
    }

    else
    {
      v18 = MEMORY[0x1E69E9C10];
      v22 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v32 = "AVVCAudioQueueRecordingEngine.mm";
      v33 = 1024;
      v34 = 1497;
      _os_log_impl(&dword_1BA5AC000, v18, OS_LOG_TYPE_DEBUG, "%25s:%-5d RecordEncoderInputDataProc: End of stream -- handing back zero size buffer", buf, 0x12u);
    }

    goto LABEL_25;
  }

  if (kAVVCScope)
  {
    v17 = *kAVVCScope;
    if (!v17)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v17 = MEMORY[0x1E69E9C10];
    v19 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    mData = a3->mBuffers[0].mData;
    mDataByteSize = a3->mBuffers[0].mDataByteSize;
    *buf = 136315906;
    v32 = "AVVCAudioQueueRecordingEngine.mm";
    v33 = 1024;
    v34 = 1503;
    v35 = 2048;
    *&v36 = mData;
    WORD4(v36) = 1024;
    *(&v36 + 10) = mDataByteSize;
    _os_log_impl(&dword_1BA5AC000, v17, OS_LOG_TYPE_DEBUG, "%25s:%-5d RecordEncoderInputDataProc: Handing back ioData buffer %p of size %u", buf, 0x22u);
  }

LABEL_26:
  *a2 = v13;
  v23 = a5[6] + v13;
  a5[6] = v23;
  if (v23 > a5[4])
  {
    CAVerboseAbort("ASSERTION FAILED: packetsRead <= packetsAvailable!");
  }

  if (v11 != v10 || v11 == 0)
  {
    v25 = 0;
  }

  else
  {
    v25 = 1802723939;
  }

  if (kAVVCScope)
  {
    if ((*(kAVVCScope + 12) & 8) != 0)
    {
      v26 = *kAVVCScope;
      if (v26)
      {
        v27 = v26;
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
        {
          v28 = *a2;
          CAX4CCString::CAX4CCString(v30, v25);
          *buf = 136315906;
          v32 = "AVVCAudioQueueRecordingEngine.mm";
          v33 = 1024;
          v34 = 1514;
          v35 = 1024;
          LODWORD(v36) = v28;
          WORD2(v36) = 2080;
          *(&v36 + 6) = v30;
          _os_log_impl(&dword_1BA5AC000, v27, OS_LOG_TYPE_DEBUG, "%25s:%-5d RecordEncoderInputDataProc: EXIT: *ioNumberDataPackets passed back out: %u, status: %s", buf, 0x22u);
        }
      }
    }
  }

  return v25;
}

__CFString *engineToString(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      v3 = *(a2 + 8) + 1;
    }

    else
    {
      v3 = 0;
    }

    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(%p) streamID: %d, use_count:%ld", a1, *(a1 + 264), v3];
  }

  else
  {
    v4 = @"(0x0) use_count:0";
  }

  return v4;
}

OpaqueAudioQueue *AVVCAudioQueueRecordingEngine::getQueuePtrPropertyValue(AVVCAudioQueueRecordingEngine *this, AudioQueuePropertyID a2, void *a3, unsigned int *a4)
{
  result = *(this + 75);
  if (result)
  {
    return AudioQueueGetProperty(result, a2, a3, a4);
  }

  return result;
}

OpaqueAudioQueue *AVVCAudioQueueRecordingEngine::getQueuePropertyValueSize(AVVCAudioQueueRecordingEngine *this, AudioQueuePropertyID a2, unsigned int *a3)
{
  result = *(this + 75);
  if (result)
  {
    return AudioQueueGetPropertySize(result, a2, a3);
  }

  return result;
}

OpaqueAudioQueue *AVVCAudioQueueRecordingEngine::setQueueFloat64PropertyValue(AVVCAudioQueueRecordingEngine *this, AudioQueuePropertyID a2, double a3)
{
  inData = a3;
  result = *(this + 75);
  if (result)
  {
    return AudioQueueSetProperty(result, a2, &inData, 8u);
  }

  return result;
}

OpaqueAudioQueue *AVVCAudioQueueRecordingEngine::setQueueUInt32PropertyValue(AVVCAudioQueueRecordingEngine *this, AudioQueuePropertyID a2, int a3)
{
  inData = a3;
  result = *(this + 75);
  if (result)
  {
    return AudioQueueSetProperty(result, a2, &inData, 4u);
  }

  return result;
}

OpaqueAudioQueue *AVVCAudioQueueRecordingEngine::getQueueFloat64PropertyValue(AVVCAudioQueueRecordingEngine *this, AudioQueuePropertyID a2, double *a3)
{
  result = *(this + 75);
  if (result)
  {
    ioDataSize = 8;
    return AudioQueueGetProperty(result, a2, a3, &ioDataSize);
  }

  return result;
}

OpaqueAudioQueue *AVVCAudioQueueRecordingEngine::getQueueUInt32PropertyValue(AVVCAudioQueueRecordingEngine *this, AudioQueuePropertyID a2, unsigned int *a3)
{
  result = *(this + 75);
  if (result)
  {
    ioDataSize = 4;
    return AudioQueueGetProperty(result, a2, a3, &ioDataSize);
  }

  return result;
}

uint64_t AVVCAudioQueueRecordingEngine::resetAudioEngine(AudioQueueRef *this)
{
  v11 = *MEMORY[0x1E69E9840];
  TraceMethod::TraceMethod(v6, "resetAudioEngine");
  if (kAVVCScope)
  {
    v2 = *kAVVCScope;
    if (!v2)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v2 = MEMORY[0x1E69E9C10];
    v3 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v8 = "AVVCAudioQueueRecordingEngine.mm";
    v9 = 1024;
    v10 = 1907;
    _os_log_impl(&dword_1BA5AC000, v2, OS_LOG_TYPE_DEBUG, "%25s:%-5d doneRecording: resetting record queue", buf, 0x12u);
  }

LABEL_8:
  if (this[75])
  {
    ElapsedTime::ElapsedTime(buf, "resetAudioEngine", "resetAudioEngine:mRecordQueue: AudioQueueReset", 0);
    v4 = AudioQueueReset(this[75]);
    ElapsedTime::~ElapsedTime(buf);
  }

  else
  {
    v4 = 0;
  }

  TraceMethod::~TraceMethod(v6);
  return v4;
}

void sub_1BA658AA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  ElapsedTime::~ElapsedTime(va1);
  TraceMethod::~TraceMethod(va);
  _Unwind_Resume(a1);
}

uint64_t AVVCAudioQueueRecordingEngine::updateMeterLevels(AVVCAudioQueueRecordingEngine *this)
{
  v26 = *MEMORY[0x1E69E9840];
  if (*(this + 27) < 2)
  {
    if (kAVVCScope)
    {
      v6 = *kAVVCScope;
      if (!v6)
      {
        return 4294955515;
      }
    }

    else
    {
      v6 = MEMORY[0x1E69E9C10];
      v8 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v16 = 136315650;
      v17 = "AVVCAudioQueueRecordingEngine.mm";
      v18 = 1024;
      v19 = 1285;
      v20 = 1024;
      v21 = -11781;
      _os_log_impl(&dword_1BA5AC000, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d AVVCAudioQueueRecordingEngine::updateMeterLevels: Error! Stream has not been prepared. Error(%d)", &v16, 0x18u);
    }

    return 4294955515;
  }

  v2 = *(this + 13);
  v3 = *(this + 37);
  if (!v3)
  {
    v3 = malloc_type_calloc(*(this + 13), 8uLL, 0x100004000313F17uLL);
    *(this + 37) = v3;
  }

  if (*(this + 288) != 1 || (v4 = *(this + 75)) == 0 || !v3)
  {
    if (kAVVCScope)
    {
      v7 = *kAVVCScope;
      if (!v7)
      {
LABEL_24:
        Property = 4294955515;
        goto LABEL_25;
      }
    }

    else
    {
      v7 = MEMORY[0x1E69E9C10];
      v9 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(this + 288);
      v11 = *(this + 75) != 0;
      v12 = *(this + 37) != 0;
      v16 = 136316162;
      v17 = "AVVCAudioQueueRecordingEngine.mm";
      v18 = 1024;
      v19 = 1276;
      v20 = 1024;
      v21 = v10;
      v22 = 1024;
      v23 = v11;
      v24 = 1024;
      v25 = v12;
      _os_log_impl(&dword_1BA5AC000, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AVVCAudioQueueRecordingEngine::updateMeterLevels: Not fetching meter levels because one of them is untrue: mMeteringEnabled(%d), mRecordQueue(%d), mRecordMeters(%d)", &v16, 0x24u);
    }

    goto LABEL_24;
  }

  v16 = 8 * v2;
  Property = AudioQueueGetProperty(v4, 0x61716D64u, v3, &v16);
  if (!Property)
  {
    return Property;
  }

LABEL_25:
  if (!kAVVCScope)
  {
    v13 = MEMORY[0x1E69E9C10];
    v15 = MEMORY[0x1E69E9C10];
LABEL_31:
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v16 = 136315650;
      v17 = "AVVCAudioQueueRecordingEngine.mm";
      v18 = 1024;
      v19 = 1280;
      v20 = 1024;
      v21 = Property;
      _os_log_impl(&dword_1BA5AC000, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d AVVCAudioQueueRecordingEngine::updateMeterLevels: Error! In fetching meter levels. Sending 'no signal'. Error(%d)", &v16, 0x18u);
    }

    if (v2)
    {
      goto LABEL_28;
    }

    return Property;
  }

  v13 = *kAVVCScope;
  if (v13)
  {
    goto LABEL_31;
  }

  if (v2)
  {
LABEL_28:
    memset_pattern16(*(this + 37), &unk_1BA6CF4F0, 8 * v2);
  }

  return Property;
}

__n128 AVVCAudioQueueRecordingEngine::getRecordQueueFormat@<Q0>(__n128 *this@<X0>, __n128 *a2@<X8>)
{
  result = this[38];
  v3 = this[39];
  *a2 = result;
  a2[1] = v3;
  a2[2].n128_u64[0] = this[40].n128_u64[0];
  return result;
}

uint64_t AVVCAudioQueueRecordingEngine::destroyRecordEngine(AVVCAudioQueueRecordingEngine *this, int a2)
{
  v101 = *MEMORY[0x1E69E9840];
  v85 = 4119;
  v86 = 1;
  v87 = 0u;
  v88 = 0u;
  kdebug_trace();
  TraceMethod::TraceMethod(v84, "destroyRecordEngine");
  if (!kAVVCScope)
  {
    v4 = MEMORY[0x1E69E9C10];
    v5 = MEMORY[0x1E69E9C10];
LABEL_5:
    v6 = v4;
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
LABEL_48:

      goto LABEL_49;
    }

    std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v82, *(this + 1), *(this + 2));
    v7 = v82;
    if (v82)
    {
      std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v80, *(this + 1), *(this + 2));
      v69 = (*(*v80 + 64))(v80, 0);
      v8 = [v69 sessionState];
      v9 = "ILLEGAL";
      if (v8 > 3)
      {
        if (v8 > 5)
        {
          if (v8 == 6)
          {
            v9 = "Activating";
          }

          else if (v8 == 7)
          {
            v9 = "Active";
          }
        }

        else if (v8 == 4)
        {
          v9 = "Deactivating";
        }

        else
        {
          v9 = "Prewarming";
        }

        goto LABEL_13;
      }

      if (v8 > 1)
      {
        if (v8 == 2)
        {
          v9 = "InteruptedWhileRecording";
        }

        else
        {
          v9 = "InteruptedWhilePlaying";
        }

        goto LABEL_13;
      }

      if (v8)
      {
        if (v8 == 1)
        {
          v9 = "Inactive";
        }

        goto LABEL_13;
      }
    }

    v9 = "NotConfigured";
LABEL_13:
    std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v78, *(this + 1), *(this + 2));
    if (v78)
    {
      v10 = v79;
      if (v79)
      {
        v10 = (v79->__shared_owners_ + 1);
      }

      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(%p) streamID: %d, use_count:%ld", v78, *(v78 + 264), v10];
    }

    else
    {
      v11 = @"(0x0) use_count:0";
    }

    v12 = v11;
    std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v76, *(this + 1), *(this + 2));
    v13 = v76;
    if (v76)
    {
      std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v74, *(this + 1), *(this + 2));
      v14 = (*(*v74 + 296))(v74);
      if (v14 > 4)
      {
        v15 = "ILLEGAL";
      }

      else
      {
        v15 = off_1E7EF6310[v14];
      }
    }

    else
    {
      v15 = "unconfigured";
    }

    std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v72, *(this + 1), *(this + 2));
    if (v72)
    {
      std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v70, *(this + 1), *(this + 2));
      v16 = *(v70 + 216);
      if (v16 > 6)
      {
        v17 = "ILLEGAL";
      }

      else
      {
        v17 = off_1E7EF6338[v16];
      }

      *buf = 136316418;
      v90 = "AVVCAudioQueueRecordingEngine.mm";
      v91 = 1024;
      v92 = 1116;
      v93 = 2080;
      v94 = v9;
      v95 = 2112;
      v96 = v12;
      v97 = 2080;
      v98 = v15;
      v99 = 2080;
      v100 = v17;
      _os_log_impl(&dword_1BA5AC000, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d session state (%s), rec-engine [%@], rec-engine type (%s), stream state (%s)", buf, 0x3Au);
      if (v71)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v71);
      }
    }

    else
    {
      *buf = 136316418;
      v90 = "AVVCAudioQueueRecordingEngine.mm";
      v91 = 1024;
      v92 = 1116;
      v93 = 2080;
      v94 = v9;
      v95 = 2112;
      v96 = v12;
      v97 = 2080;
      v98 = v15;
      v99 = 2080;
      v100 = "unconfigured";
      _os_log_impl(&dword_1BA5AC000, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d session state (%s), rec-engine [%@], rec-engine type (%s), stream state (%s)", buf, 0x3Au);
    }

    if (v73)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v73);
    }

    if (v13 && v75)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v75);
    }

    if (v77)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v77);
    }

    if (v79)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v79);
    }

    if (v7)
    {

      if (v81)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v81);
      }
    }

    if (v83)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v83);
    }

    goto LABEL_48;
  }

  v4 = *kAVVCScope;
  if (v4)
  {
    goto LABEL_5;
  }

LABEL_49:
  if (kAVVCScope)
  {
    v18 = *kAVVCScope;
    if (!v18)
    {
      goto LABEL_56;
    }
  }

  else
  {
    v18 = MEMORY[0x1E69E9C10];
    v19 = MEMORY[0x1E69E9C10];
  }

  v20 = v18;
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v90 = "AVVCAudioQueueRecordingEngine.mm";
    v91 = 1024;
    v92 = 1117;
    _os_log_impl(&dword_1BA5AC000, v20, OS_LOG_TYPE_DEBUG, "%25s:%-5d Calling destroyRecordEngine", buf, 0x12u);
  }

LABEL_56:
  if (!*(this + 75))
  {
    v28 = 0;
    goto LABEL_173;
  }

  std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v82, *(this + 1), *(this + 2));
  v21 = *(this + 75);
  if (kAVVCScope)
  {
    if (*(kAVVCScope + 8))
    {
      v22 = *kAVVCScope;
      if (v22)
      {
        v23 = v22;
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          v90 = "AVVCAudioQueueRecordingEngine.mm";
          v91 = 1024;
          v92 = 1123;
          _os_log_impl(&dword_1BA5AC000, v23, OS_LOG_TYPE_DEBUG, "%25s:%-5d destroyRecordEngine: mRecordIsStopping set to true", buf, 0x12u);
        }
      }
    }
  }

  *(this + 75) = 0;
  if (a2)
  {
    *(this + 244) = 1;
    AVVCRecordingEngine::setStreamState(this, 6);
    if (kAVVCScope)
    {
      if (*(kAVVCScope + 8))
      {
        v24 = *kAVVCScope;
        if (v24)
        {
          v25 = v24;
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315394;
            v90 = "AVVCAudioQueueRecordingEngine.mm";
            v91 = 1024;
            v92 = 1132;
            _os_log_impl(&dword_1BA5AC000, v25, OS_LOG_TYPE_DEBUG, "%25s:%-5d destroyRecordEngine: about to call AudioQueueStop(..., true)", buf, 0x12u);
          }
        }
      }
    }

    ElapsedTime::ElapsedTime(buf, "destroyRecordEngine", "queue : AudioQueueStop", 0);
    v26 = AudioQueueStop(v21, 1u);
    ElapsedTime::~ElapsedTime(buf);
    if (kAVVCScope)
    {
      v27 = *kAVVCScope;
      if (!v27)
      {
        goto LABEL_82;
      }
    }

    else
    {
      v27 = MEMORY[0x1E69E9C10];
      v29 = MEMORY[0x1E69E9C10];
    }

    v30 = v27;
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v31 = " but failed";
      *buf = 136315906;
      v90 = "AVVCAudioQueueRecordingEngine.mm";
      v92 = 1140;
      v93 = 2080;
      v91 = 1024;
      if (!v26)
      {
        v31 = "";
      }

      v94 = v31;
      v95 = 1024;
      LODWORD(v96) = v26;
      _os_log_impl(&dword_1BA5AC000, v30, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AVVC stopped record queue%s (%d)", buf, 0x22u);
    }

LABEL_82:
    if (!v26)
    {
      goto LABEL_103;
    }

    if ((v26 + 199999) >= 0x61A7F)
    {
      if (kAVVCScope)
      {
        v33 = *kAVVCScope;
        if (!v33)
        {
LABEL_103:
          if (kAVVCScope)
          {
            v38 = *kAVVCScope;
            if (!v38)
            {
LABEL_110:
              AVVCRecordingEngine::doneRecording(v82);
              goto LABEL_111;
            }
          }

          else
          {
            v38 = MEMORY[0x1E69E9C10];
            v39 = MEMORY[0x1E69E9C10];
          }

          v40 = v38;
          if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v90 = "AVVCAudioQueueRecordingEngine.mm";
            v91 = 1024;
            v92 = 1144;
            _os_log_impl(&dword_1BA5AC000, v40, OS_LOG_TYPE_DEFAULT, "%25s:%-5d destroyRecordEngine:  synthesizing doneRecording", buf, 0x12u);
          }

          goto LABEL_110;
        }
      }

      else
      {
        v33 = MEMORY[0x1E69E9C10];
        v37 = MEMORY[0x1E69E9C10];
      }

      v35 = v33;
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v90 = "AVVCAudioQueueRecordingEngine.mm";
        v91 = 1024;
        v92 = 1142;
        v93 = 1024;
        LODWORD(v94) = v26;
        v36 = "%25s:%-5d ERROR: destroyRecordEngine: AudioQueueStop err %{audio:4CC}d";
        goto LABEL_101;
      }
    }

    else
    {
      if (kAVVCScope)
      {
        v32 = *kAVVCScope;
        if (!v32)
        {
          goto LABEL_103;
        }
      }

      else
      {
        v32 = MEMORY[0x1E69E9C10];
        v34 = MEMORY[0x1E69E9C10];
      }

      v35 = v32;
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v90 = "AVVCAudioQueueRecordingEngine.mm";
        v91 = 1024;
        v92 = 1142;
        v93 = 1024;
        LODWORD(v94) = v26;
        v36 = "%25s:%-5d ERROR: destroyRecordEngine: AudioQueueStop err %d";
LABEL_101:
        _os_log_impl(&dword_1BA5AC000, v35, OS_LOG_TYPE_ERROR, v36, buf, 0x18u);
      }
    }

    goto LABEL_103;
  }

  if (QueueIsRunning(v21))
  {
    CAVerboseAbort("ASSERTION FAILED: queue was running when destroyed but not asked to stop");
  }

  AVVCRecordingEngine::setStreamState(this, 3);
LABEL_111:
  AudioQueueRemovePropertyListener(v21, 0x6171726Eu, AVVCAudioQueueRecordingEngine::AudioQueueRecordPropertyListenerProc, this + 856);
  AudioQueueRemovePropertyListener(v21, 0x71637665u, AVVCAudioQueueRecordingEngine::AudioQueueRecordPropertyListenerProc, this + 856);
  v41 = *(this + 108);
  *(this + 107) = 0;
  *(this + 108) = 0;
  if (v41)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v41);
  }

  if (kAVVCScope)
  {
    v42 = *kAVVCScope;
    if (!v42)
    {
      goto LABEL_120;
    }
  }

  else
  {
    v42 = MEMORY[0x1E69E9C10];
    v43 = MEMORY[0x1E69E9C10];
  }

  v44 = v42;
  if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v90 = "AVVCAudioQueueRecordingEngine.mm";
    v91 = 1024;
    v92 = 1158;
    _os_log_impl(&dword_1BA5AC000, v44, OS_LOG_TYPE_DEFAULT, "%25s:%-5d destroyRecordEngine: about to call AudioQueueDispose(..., true)", buf, 0x12u);
  }

LABEL_120:
  ElapsedTime::ElapsedTime(buf, "destroyRecordEngine", "destroyRecordEngine: AudioQueueDispose", 0);
  v28 = AudioQueueDispose(v21, 1u);
  ElapsedTime::~ElapsedTime(buf);
  if (!v28)
  {
    goto LABEL_136;
  }

  if ((v28 + 199999) < 0x61A7F)
  {
    if (kAVVCScope)
    {
      v45 = *kAVVCScope;
      if (!v45)
      {
        goto LABEL_136;
      }
    }

    else
    {
      v45 = MEMORY[0x1E69E9C10];
      v47 = MEMORY[0x1E69E9C10];
    }

    v48 = v45;
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v90 = "AVVCAudioQueueRecordingEngine.mm";
      v91 = 1024;
      v92 = 1163;
      v93 = 1024;
      LODWORD(v94) = v28;
      v49 = "%25s:%-5d ERROR: destroyRecordEngine: AudioQueueDispose err %d";
LABEL_134:
      _os_log_impl(&dword_1BA5AC000, v48, OS_LOG_TYPE_ERROR, v49, buf, 0x18u);
      goto LABEL_135;
    }

    goto LABEL_135;
  }

  if (!kAVVCScope)
  {
    v46 = MEMORY[0x1E69E9C10];
    v50 = MEMORY[0x1E69E9C10];
LABEL_132:
    v48 = v46;
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v90 = "AVVCAudioQueueRecordingEngine.mm";
      v91 = 1024;
      v92 = 1163;
      v93 = 1024;
      LODWORD(v94) = v28;
      v49 = "%25s:%-5d ERROR: destroyRecordEngine: AudioQueueDispose err %{audio:4CC}d";
      goto LABEL_134;
    }

LABEL_135:

    goto LABEL_136;
  }

  v46 = *kAVVCScope;
  if (v46)
  {
    goto LABEL_132;
  }

LABEL_136:
  CallbackBarrier(*(*(this + 95) + 128));
  AVVCRecordingEngine::setStreamState(this, 1);
  v51 = *(this + 81);
  if (v51)
  {
    MEMORY[0x1BFAF57D0](v51, 0x20C8093837F09);
  }

  *(this + 81) = 0;
  if (kAVVCScope)
  {
    if (*(kAVVCScope + 8))
    {
      v52 = *kAVVCScope;
      if (v52)
      {
        v53 = v52;
        if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          v90 = "AVVCAudioQueueRecordingEngine.mm";
          v91 = 1024;
          v92 = 1173;
          _os_log_impl(&dword_1BA5AC000, v53, OS_LOG_TYPE_DEBUG, "%25s:%-5d destroyRecordEngine: mRecordIsStopping set to false", buf, 0x12u);
        }
      }
    }
  }

  *(this + 244) = 0;
  *(this + 165) = 0;
  *(this + 676) = 0;
  if (*(this + 96))
  {
    if (kAVVCScope)
    {
      if (*(kAVVCScope + 8))
      {
        v54 = *kAVVCScope;
        if (v54)
        {
          v55 = v54;
          if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315394;
            v90 = "AVVCAudioQueueRecordingEngine.mm";
            v91 = 1024;
            v92 = 1180;
            _os_log_impl(&dword_1BA5AC000, v55, OS_LOG_TYPE_DEBUG, "%25s:%-5d destroyRecordEngine: about to destroy audio converter", buf, 0x12u);
          }
        }
      }
    }

    v28 = AudioConverterDispose(*(this + 96));
    if (kAVVCScope)
    {
      v56 = *kAVVCScope;
      if (!v56)
      {
        goto LABEL_158;
      }
    }

    else
    {
      v56 = MEMORY[0x1E69E9C10];
      v57 = MEMORY[0x1E69E9C10];
    }

    v58 = v56;
    if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v90 = "AVVCAudioQueueRecordingEngine.mm";
      v91 = 1024;
      v92 = 1182;
      v93 = 1024;
      LODWORD(v94) = v28;
      _os_log_impl(&dword_1BA5AC000, v58, OS_LOG_TYPE_ERROR, "%25s:%-5d destroyRecordEngine: AudioConverterDispose error(%d)", buf, 0x18u);
    }
  }

LABEL_158:
  *(this + 96) = 0;
  v59 = *(this + 104);
  *(this + 104) = 0;

  v60 = *(this + 100);
  if (v60)
  {
    free(v60);
    *(this + 100) = 0;
  }

  v61 = *(this + 99);
  if (v61)
  {
    MEMORY[0x1BFAF57D0](v61, 0x1000C8077774924);
    *(this + 99) = 0;
  }

  v62 = *(this + 98);
  *(this + 98) = 0;

  if (!*(this + 103))
  {
    goto LABEL_171;
  }

  if (!kAVVCScope)
  {
    v63 = MEMORY[0x1E69E9C10];
    v64 = MEMORY[0x1E69E9C10];
    goto LABEL_167;
  }

  v63 = *kAVVCScope;
  if (v63)
  {
LABEL_167:
    v65 = v63;
    if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v90 = "AVVCAudioQueueRecordingEngine.mm";
      v91 = 1024;
      v92 = 1202;
      _os_log_impl(&dword_1BA5AC000, v65, OS_LOG_TYPE_DEBUG, "%25s:%-5d Deleting old DSPGraph...", buf, 0x12u);
    }
  }

  [*(this + 102) stop];
  [*(this + 102) detachNode:*(this + 103)];
  v66 = *(this + 103);
  *(this + 103) = 0;

LABEL_171:
  v67 = *(this + 102);
  *(this + 102) = 0;

  if (v83)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v83);
  }

LABEL_173:
  TraceMethod::~TraceMethod(v84);
  TraceWrapper::~TraceWrapper(&v85);
  return v28;
}