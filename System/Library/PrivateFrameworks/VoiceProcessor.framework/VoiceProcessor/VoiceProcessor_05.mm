caulk::rt_safe_memory_resource *_ZN5caulk10concurrent7details15rt_message_callIZN2vp17call_synchronizerI18VoiceProcessorBaseE4callILNS3_9call_typeE6EJRjRPfS9_PjEEENS3_11call_resultIXT_ES5_JDpT0_EE13expected_typeEDpOSE_EUlT_PKcSM_E_JRiRKSM_RA257_SL_EE10rt_cleanupD2Ev(caulk::concurrent::message **a1)
{
  v2 = *a1;
  caulk::concurrent::message::~message(*a1);
  result = *MEMORY[0x277D7F098];
  if (*MEMORY[0x277D7F098])
  {
    caulk::rt_safe_memory_resource::rt_deallocate(result, v2);
    return a1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void _ZN5caulk10concurrent7details15rt_message_callIZN2vp17call_synchronizerI18VoiceProcessorBaseE4callILNS3_9call_typeE6EJRjRPfS9_PjEEENS3_11call_resultIXT_ES5_JDpT0_EE13expected_typeEDpOSE_EUlT_PKcSM_E_JRiRKSM_RA257_SL_EED0Ev(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x2743CBFA0);
}

uint64_t VPSPISetParameter_Private(uint64_t a1, uint64_t a2, float a3)
{
  v11 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v9[0] = a3;
    caulk::concurrent::shared_spin_lock::lock(a1);
    v5 = (*(**(a1 + 8) + 56))(*(a1 + 8), a2, v9, 4);
    if (v5)
    {
      if (!*MEMORY[0x277D7F098])
      {
        __break(1u);
      }

      v6 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x277D7F098]);
      *(v6 + 16) = 0;
      *(v6 + 24) = v5;
      *(v6 + 32) = "SetProperty";
      *(v6 + 40) = "expected_call_result_t<CallType, T, ArgTypeList...> vp::call_synchronizer<VoiceProcessorBase>::call(ArgTypeList &&...) [T = VoiceProcessorBase, CallType = vp::call_type::SetProperty, ArgTypeList = <unsigned int &, float *, const unsigned int &>]";
      *v6 = &unk_2881B1BE8;
      *(v6 + 8) = 0;
      caulk::concurrent::messenger::enqueue((a1 + 16), v6);
    }

    caulk::concurrent::shared_spin_lock::unlock(a1);
    return ErrorFromOSStatus(0x100000000);
  }

  else
  {
    v8 = vp::log(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_2724B4000, v8, OS_LOG_TYPE_FAULT, "failed to set parameter due to bad reference", buf, 2u);
    }

    return 1651664230;
  }
}

void sub_272513F90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, void **__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, uint64_t a19, char *a20, char a21, uint64_t a22, uint64_t a23, uint64_t *a24, char a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, __int16 *a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, __int128 a45)
{
  if (a2)
  {
    v45 = __cxa_begin_catch(a1);
    v46 = vp::log(v45);
    if (!os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {

      __cxa_end_catch();
      JUMPOUT(0x272513EECLL);
    }

    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[10],char [10],0>(&a27, "call_name");
  }

  _Unwind_Resume(a1);
}

caulk::rt_safe_memory_resource *_ZN5caulk10concurrent7details15rt_message_callIZN2vp17call_synchronizerI18VoiceProcessorBaseE4callILNS3_9call_typeE7EJRjPfRKjEEENS3_11call_resultIXT_ES5_JDpT0_EE13expected_typeEDpOSE_EUlT_PKcSM_E_JRiRKSM_RA246_SL_EE7performEv(caulk::concurrent::message *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = a1;
  v1 = *(a1 + 4);
  v5 = *(a1 + 5);
  v6 = v1;
  v2 = vp::log(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[12],char [12],0>(v7);
  }

  return _ZN5caulk10concurrent7details15rt_message_callIZN2vp17call_synchronizerI18VoiceProcessorBaseE4callILNS3_9call_typeE6EJRjRPfS9_PjEEENS3_11call_resultIXT_ES5_JDpT0_EE13expected_typeEDpOSE_EUlT_PKcSM_E_JRiRKSM_RA257_SL_EE10rt_cleanupD2Ev(&v4);
}

void sub_272514448(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, caulk::concurrent::message *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(&a10);
  v36 = -96;
  v37 = v34;
  do
  {
    v37 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(v37) - 32;
    v36 += 32;
  }

  while (v36);
  v38 = &a21;
  v39 = -64;
  do
  {
    v38 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(v38) - 32;
    v39 += 32;
  }

  while (v39);
  v40 = &a29;
  v41 = -64;
  do
  {
    v40 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(v40) - 32;
    v41 += 32;
  }

  while (v41);
  for (i = 32; i != -32; i -= 32)
  {
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(&a33 + i);
  }

  _ZN5caulk10concurrent7details15rt_message_callIZN2vp17call_synchronizerI18VoiceProcessorBaseE4callILNS3_9call_typeE6EJRjRPfS9_PjEEENS3_11call_resultIXT_ES5_JDpT0_EE13expected_typeEDpOSE_EUlT_PKcSM_E_JRiRKSM_RA257_SL_EE10rt_cleanupD2Ev(&a9);
  _Unwind_Resume(a1);
}

void _ZN5caulk10concurrent7details15rt_message_callIZN2vp17call_synchronizerI18VoiceProcessorBaseE4callILNS3_9call_typeE7EJRjPfRKjEEENS3_11call_resultIXT_ES5_JDpT0_EE13expected_typeEDpOSE_EUlT_PKcSM_E_JRiRKSM_RA246_SL_EED0Ev(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x2743CBFA0);
}

uint64_t VPSPIGetProperty_Private(VoiceProcessorImplementation *this, uint64_t a2, void *a3, unsigned int *a4)
{
  if (this)
  {
    result = 1650553447;
    if (a3 && a4)
    {
      Property = VoiceProcessorImplementation::GetProperty(this, a2, a3, a4);

      return ErrorFromOSStatus(Property);
    }
  }

  else
  {
    v7 = vp::log(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      *v8 = 0;
      _os_log_fault_impl(&dword_2724B4000, v7, OS_LOG_TYPE_FAULT, "failed to get property due to bad reference", v8, 2u);
    }

    return 1651664230;
  }

  return result;
}

uint64_t VPSPISetProperty_Private(atomic_uint *a1, unsigned int a2, uint64_t a3, unsigned int a4)
{
  if (a1)
  {
    if (a3)
    {
      v9 = a2;
      *buf = a3;
      v7 = a4;
      v4 = vp::call_synchronizer<VoiceProcessorBase>::call<(vp::call_type)7,unsigned int &,void const*&,unsigned int &>(a1, &v9, buf, &v7);
      if (v4 >= 0x100000000)
      {
        v4 = 0x100000000;
      }

      return ErrorFromOSStatus(v4);
    }

    else
    {
      return 1650553447;
    }
  }

  else
  {
    v6 = vp::log(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_2724B4000, v6, OS_LOG_TYPE_FAULT, "failed to set property due to bad reference", buf, 2u);
    }

    return 1651664230;
  }
}

id getADASManagerClass(void)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getADASManagerClass(void)::softClass;
  v7 = getADASManagerClass(void)::softClass;
  if (!getADASManagerClass(void)::softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = ___ZL19getADASManagerClassv_block_invoke_1321;
    v3[3] = &unk_279E48E20;
    v3[4] = &v4;
    ___ZL19getADASManagerClassv_block_invoke_1321(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_272514800(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *___ZL47getADAFPreferenceKeyVolumeLimitEnabledSymbolLocv_block_invoke_1299(uint64_t a1)
{
  v2 = AudioDataAnalysisLibrary();
  result = dlsym(v2, "ADAFPreferenceKeyVolumeLimitEnabled");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getADAFPreferenceKeyVolumeLimitEnabledSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *AudioDataAnalysisLibrary()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!AudioDataAnalysisLibraryCore(char **)::frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = ___ZL28AudioDataAnalysisLibraryCorePPc_block_invoke_1316;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_279E48E40;
    v6 = 0;
    AudioDataAnalysisLibraryCore(char **)::frameworkLibrary = _sl_dlopen();
  }

  v0 = AudioDataAnalysisLibraryCore(char **)::frameworkLibrary;
  if (!AudioDataAnalysisLibraryCore(char **)::frameworkLibrary)
  {
    v0 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *AudioDataAnalysisLibrary()"];
    [v0 handleFailureInFunction:v3 file:@"vpADASManagerInterface.mm" lineNumber:20 description:{@"%s", v4[0]}];

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

void *___ZL49getADAFPreferenceKeyVolumeLimitThresholdSymbolLocv_block_invoke_1306(uint64_t a1)
{
  v2 = AudioDataAnalysisLibrary();
  result = dlsym(v2, "ADAFPreferenceKeyVolumeLimitThreshold");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getADAFPreferenceKeyVolumeLimitThresholdSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t ___ZL28AudioDataAnalysisLibraryCorePPc_block_invoke_1316(uint64_t a1)
{
  result = _sl_dlopen();
  AudioDataAnalysisLibraryCore(char **)::frameworkLibrary = result;
  return result;
}

void ___ZL19getADASManagerClassv_block_invoke_1321(uint64_t a1)
{
  AudioDataAnalysisLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("ADASManager");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getADASManagerClass(void)::softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getADASManagerClass()_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"vpADASManagerInterface.mm" lineNumber:21 description:{@"Unable to find class %s", "ADASManager"}];

    __break(1u);
  }
}

void VoiceProcessorV2::TryLoadingTuningPlists(VoiceProcessorV2 *this, const char *a2, const char *a3, const char *__s1, unsigned int a5, unsigned int a6, unsigned int a7)
{
  v63 = *MEMORY[0x277D85DE8];
  v37 = 0;
  v38 = &v37;
  v39 = 0x2000000000;
  v40 = 0;
  if (__s1 && !strcmp(__s1, "gen"))
  {
    v14 = 0;
  }

  else
  {
    v14 = *(this + 60);
  }

  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 0x40000000;
  v26 = ___ZN16VoiceProcessorV222TryLoadingTuningPlistsEPKcS1_S1_jjj_block_invoke;
  v27 = &unk_279E48E60;
  v36 = v14 & 1;
  v33 = a5;
  v34 = a6;
  v35 = a7;
  v30 = __s1;
  v31 = a2;
  v32 = a3;
  v28 = &v37;
  v29 = this;
  v15 = ___ZN16VoiceProcessorV222TryLoadingTuningPlistsEPKcS1_S1_jjj_block_invoke(v25, v62, "ulnk");
  v16 = v38[3];
  if (v16)
  {
    CACFString::operator=(this + 4568, v16);
    CFRelease(v38[3]);
    v38[3] = 0;
  }

  v17 = v26(v25, v62, "dlnk");
  v18 = v38[3];
  if (v18)
  {
    CACFString::operator=(this + 4584, v18);
    CFRelease(v38[3]);
    v38[3] = 0;
  }

  if (!(v15 | v17))
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v19 = VPLogScope(void)::scope;
    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(3, VPLogScope(void)::scope, 0))
    {
      v20 = (*v19 ? *v19 : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        CAX4CCStringNoQuote::CAX4CCStringNoQuote(v43, a5);
        CAX4CCStringNoQuote::CAX4CCStringNoQuote(v42, a6);
        CAX4CCStringNoQuote::CAX4CCStringNoQuote(v41, a7);
        v21 = (this + 8);
        if (*(this + 31) < 0)
        {
          v21 = *v21;
        }

        *buf = 136317186;
        v45 = "vpAspen_v2.cpp";
        v46 = 1024;
        v47 = 158;
        v48 = 2080;
        v49 = v43;
        v50 = 2080;
        v51 = v42;
        v52 = 2080;
        v53 = v41;
        v54 = 2080;
        v55 = v21;
        v56 = 2080;
        v57 = a2;
        v58 = 2080;
        v59 = a3;
        v60 = 2080;
        v61 = v62;
        _os_log_impl(&dword_2724B4000, v20, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> Tunings loaded successfully for %s-%s-%s! '%s/%s/%s/%s'", buf, 0x58u);
      }
    }

    v22 = *(this + 1588);
    if (v22 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v23 = VPLogScope(void)::scope;
      CAX4CCStringNoQuote::CAX4CCStringNoQuote(buf, a5);
      CAX4CCStringNoQuote::CAX4CCStringNoQuote(v43, a6);
      CAX4CCStringNoQuote::CAX4CCStringNoQuote(v42, a7);
      v24 = this + 8;
      if (*(this + 31) < 0)
      {
        v24 = *v24;
      }

      CALegacyLog::log(v22, 3, v23, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpAspen_v2.cpp", 158, "TryLoadingTuningPlists", "Tunings loaded successfully for %s-%s-%s! '%s/%s/%s/%s'", buf, v43, v42, v24, a2, a3, v62);
    }

    *(this + 4600) = 1;
  }

  _Block_object_dispose(&v37, 8);
}

void sub_272514F70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ___ZN16VoiceProcessorV222TryLoadingTuningPlistsEPKcS1_S1_jjj_block_invoke(uint64_t a1, char *a2, const char *a3)
{
  v67 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 40);
  if (*(a1 + 84) == 1)
  {
    CAX4CCStringNoQuote::CAX4CCStringNoQuote(buf, *(a1 + 72));
    CAX4CCStringNoQuote::CAX4CCStringNoQuote(__s, *(a1 + 76));
    CAX4CCStringNoQuote::CAX4CCStringNoQuote(&v66, *(a1 + 80));
    v7 = snprintf(a2, 0x40uLL, "%s-%s-%s-%s");
  }

  else
  {
    CAX4CCStringNoQuote::CAX4CCStringNoQuote(buf, *(a1 + 72));
    CAX4CCStringNoQuote::CAX4CCStringNoQuote(__s, *(a1 + 76));
    CAX4CCStringNoQuote::CAX4CCStringNoQuote(&v66, *(a1 + 80));
    v7 = snprintf(a2, 0x40uLL, "%s-%s-%s-%s-%s");
  }

  if (v7 >= 0x41)
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v8 = VPLogScope(void)::scope;
    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
    {
      v9 = (*v8 ? *v8 : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "vpAspen_v2.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 107;
        _os_log_impl(&dword_2724B4000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> snprintf error", buf, 0x12u);
      }
    }

    v10 = *(v6 + 12704);
    if (v10 && ((*(v6 + 15881) & 1) != 0 || *(v6 + 15882) == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      CALegacyLog::log(v10, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpAspen_v2.cpp", 107, "TryLoadingTuningPlists_block_invoke", "snprintf error");
    }

    return 0xFFFFFFFFLL;
  }

  std::ostringstream::basic_ostringstream[abi:ne200100](buf);
  CAX4CCStringNoQuote::CAX4CCStringNoQuote(__s, *(a1 + 72));
  v12 = strlen(__s);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(buf, __s, v12);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(buf, "-", 1);
  CAX4CCStringNoQuote::CAX4CCStringNoQuote(&v66, *(a1 + 76));
  v14 = strlen(v13);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(buf, &v66, v14);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(buf, "-", 1);
  CAX4CCStringNoQuote::CAX4CCStringNoQuote(__p, *(a1 + 80));
  v15 = strlen(__p);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(buf, __p, v15);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(buf, "-", 1);
  v16 = strlen(a3);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(buf, a3, v16);
  if (*(a1 + 84) == 1)
  {
    v18 = *(v6 + 56);
    if ((v18 & 0x100000000) != 0)
    {
      v18 = v18;
    }

    else
    {
      v18 = 0;
    }

    if (v18 < 1)
    {
      v19 = 0;
      __s[0] = 0;
    }

    else
    {
      caulk::make_string(&v66, "AID%d", v17, v18);
      *__s = v66;
      v19 = 1;
    }

    __s[24] = v19;
    v24 = __s[23];
    v25 = *__s;
    std::string::basic_string[abi:ne200100]<0>(&v66, "/");
    if (v24 >= 0)
    {
      v25 = __s;
    }

    v26 = strlen(v25);
    v27 = std::string::insert(&v66, 0, v25, v26);
    v28 = *&v27->__r_.__value_.__l.__data_;
    v61 = v27->__r_.__value_.__r.__words[2];
    *__p = v28;
    v27->__r_.__value_.__l.__size_ = 0;
    v27->__r_.__value_.__r.__words[2] = 0;
    v27->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v66.__r_.__value_.__l.__data_);
    }

    if (__s[24] != 1)
    {
      goto LABEL_36;
    }
  }

  else
  {
    v20 = *(a1 + 48);
    std::string::basic_string[abi:ne200100]<0>(__s, "-");
    v21 = strlen(v20);
    v22 = std::string::insert(__s, 0, v20, v21);
    v23 = *&v22->__r_.__value_.__l.__data_;
    v61 = v22->__r_.__value_.__r.__words[2];
    *__p = v23;
    v22->__r_.__value_.__l.__size_ = 0;
    v22->__r_.__value_.__r.__words[2] = 0;
    v22->__r_.__value_.__r.__words[0] = 0;
  }

  if ((__s[23] & 0x80000000) != 0)
  {
    operator delete(*__s);
  }

LABEL_36:
  if (VPLogScope(void)::once != -1)
  {
    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
  }

  v29 = VPLogScope(void)::scope;
  if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
  {
    v30 = (*v29 ? *v29 : MEMORY[0x277D86220]);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      v31 = SHIBYTE(v61);
      v32 = __p[0];
      std::ostringstream::str[abi:ne200100](&v66, buf);
      v33 = __p;
      if (v31 < 0)
      {
        v33 = v32;
      }

      if ((v66.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v34 = &v66;
      }

      else
      {
        v34 = v66.__r_.__value_.__r.__words[0];
      }

      *__s = 136315906;
      *&__s[4] = "vpAspen_v2.cpp";
      *&__s[12] = 1024;
      *&__s[14] = 123;
      *&__s[18] = 2080;
      *&__s[20] = v33;
      v58 = 2080;
      v59 = v34;
      _os_log_impl(&dword_2724B4000, v30, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> Trying to load tuning %s%s", __s, 0x26u);
      if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v66.__r_.__value_.__l.__data_);
      }
    }
  }

  v35 = *(v6 + 12704);
  if (v35 && ((*(v6 + 15881) & 1) != 0 || *(v6 + 15882) == 1))
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v36 = VPLogScope(void)::scope;
    v37 = SHIBYTE(v61);
    v38 = __p[0];
    std::ostringstream::str[abi:ne200100](__s, buf);
    v39 = __p;
    if (v37 < 0)
    {
      v39 = v38;
    }

    if (__s[23] >= 0)
    {
      v40 = __s;
    }

    else
    {
      v40 = *__s;
    }

    CALegacyLog::log(v35, 5, v36, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpAspen_v2.cpp", 123, "TryLoadingTuningPlists_block_invoke", "Trying to load tuning %s%s", v39, v40);
    if ((__s[23] & 0x80000000) != 0)
    {
      operator delete(*__s);
    }
  }

  Tuning = TuningPListMgr::loadTuning(*(v6 + 2744), *(a1 + 56), *(a1 + 64), a2, 0);
  if (Tuning)
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v41 = VPLogScope(void)::scope;
    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
    {
      v42 = (*v41 ? *v41 : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
      {
        *__s = 136315394;
        *&__s[4] = "vpAspen_v2.cpp";
        *&__s[12] = 1024;
        *&__s[14] = 128;
        _os_log_impl(&dword_2724B4000, v42, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> Couldn't load tuning strip", __s, 0x12u);
      }
    }

    v43 = *(v6 + 12704);
    if (v43 && ((*(v6 + 15881) & 1) != 0 || *(v6 + 15882) == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      CALegacyLog::log(v43, 5, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpAspen_v2.cpp", 128, "TryLoadingTuningPlists_block_invoke", "Couldn't load tuning strip");
    }
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = CFStringCreateWithCString(*MEMORY[0x277CBECE8], a2, 0x8000100u);
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v44 = VPLogScope(void)::scope;
    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
    {
      v45 = (*v44 ? *v44 : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
      {
        v46 = SHIBYTE(v61);
        v47 = __p[0];
        std::ostringstream::str[abi:ne200100](&v66, buf);
        v48 = __p;
        if (v46 < 0)
        {
          v48 = v47;
        }

        if ((v66.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v49 = &v66;
        }

        else
        {
          v49 = v66.__r_.__value_.__r.__words[0];
        }

        *__s = 136315906;
        *&__s[4] = "vpAspen_v2.cpp";
        *&__s[12] = 1024;
        *&__s[14] = 135;
        *&__s[18] = 2080;
        *&__s[20] = v48;
        v58 = 2080;
        v59 = v49;
        _os_log_impl(&dword_2724B4000, v45, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> Succesfully loaded tuning strip %s%s", __s, 0x26u);
        if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v66.__r_.__value_.__l.__data_);
        }
      }
    }

    v50 = *(v6 + 12704);
    if (v50 && ((*(v6 + 15881) & 1) != 0 || *(v6 + 15882) == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v51 = VPLogScope(void)::scope;
      v52 = SHIBYTE(v61);
      v53 = __p[0];
      std::ostringstream::str[abi:ne200100](__s, buf);
      v54 = __p;
      if (v52 < 0)
      {
        v54 = v53;
      }

      if (__s[23] >= 0)
      {
        v55 = __s;
      }

      else
      {
        v55 = *__s;
      }

      CALegacyLog::log(v50, 5, v51, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpAspen_v2.cpp", 135, "TryLoadingTuningPlists_block_invoke", "Succesfully loaded tuning strip %s%s", v54, v55);
      if ((__s[23] & 0x80000000) != 0)
      {
        operator delete(*__s);
      }
    }
  }

  if (SHIBYTE(v61) < 0)
  {
    operator delete(__p[0]);
  }

  *buf = *MEMORY[0x277D82828];
  *&buf[*(*buf - 24)] = *(MEMORY[0x277D82828] + 24);
  *&buf[8] = MEMORY[0x277D82878] + 16;
  if (v64 < 0)
  {
    operator delete(v63);
  }

  *&buf[8] = MEMORY[0x277D82868] + 16;
  std::locale::~locale(&buf[16]);
  std::ostream::~ostream();
  MEMORY[0x2743CBE30](&v65);
  return Tuning;
}

void sub_2725159E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, void *__p, void *a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, ...)
{
  va_start(va, a44);
  if (SHIBYTE(a29) < 0)
  {
    operator delete(a27);
  }

  std::ostringstream::~ostringstream(&a31);
  MEMORY[0x2743CBE30](va);
  _Unwind_Resume(a1);
}

uint64_t *std::ostringstream::basic_ostringstream[abi:ne200100](uint64_t *a1)
{
  a1[20] = 0;
  v2 = MEMORY[0x277D828A0] + 64;
  a1[14] = MEMORY[0x277D828A0] + 64;
  v3 = *(MEMORY[0x277D82828] + 16);
  v4 = *(MEMORY[0x277D82828] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, a1 + 1);
  v6 = MEMORY[0x277D828A0] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *a1 = v6;
  a1[14] = v2;
  std::stringbuf::basic_stringbuf[abi:ne200100]((a1 + 1), 16);
  return a1;
}

void sub_272515BE4(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  MEMORY[0x2743CBE30](v1);
  _Unwind_Resume(a1);
}

void *std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x2743CBAB0](v20, a1);
  if (v20[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 5);
    v8 = *(v6 + 2);
    v9 = *(v6 + 36);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&__b, MEMORY[0x277D82680]);
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

  MEMORY[0x2743CBAC0](v20);
  return a1;
}

void sub_272515EB4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x2743CBAC0](&a10, a2, a3, a4, a5, a6, a7, a8);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v17 + *(*v17 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x272515E88);
}

void *std::ostringstream::str[abi:ne200100](void *a1, uint64_t a2)
{
  result = std::stringbuf::view[abi:ne200100](a2 + 8);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  *(a1 + 23) = v4;
  if (v4)
  {
    result = memmove(a1, result, v4);
  }

  *(a1 + v5) = 0;
  return result;
}

uint64_t TuningPListMgr::loadTuning(const __CFString **a1, const char *a2, const char *a3, const char *a4, uint64_t a5)
{
  v5 = a5;
  v17[3] = *MEMORY[0x277D85DE8];
  v15 = CFStringCreateWithCString(0, a2, 0x600u);
  v16 = 1;
  v13 = CFStringCreateWithCString(0, a3, 0x600u);
  v14 = 1;
  v11 = CFStringCreateWithCString(0, a4, 0x600u);
  v12 = 1;
  v17[0] = &v15;
  v17[1] = &v13;
  v17[2] = &v11;
  TuningInSubdirs = TuningPListMgr::loadTuningInSubdirs_(a1, v17, 3, v5);
  CACFString::~CACFString(&v11);
  CACFString::~CACFString(&v13);
  CACFString::~CACFString(&v15);
  return TuningInSubdirs;
}

void sub_2725160E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  CACFString::~CACFString(&a9);
  CACFString::~CACFString(&a11);
  CACFString::~CACFString(va);
  _Unwind_Resume(a1);
}

uint64_t std::ostringstream::~ostringstream(uint64_t a1)
{
  v2 = MEMORY[0x277D82828];
  v3 = *MEMORY[0x277D82828];
  *a1 = *MEMORY[0x277D82828];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 8) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 16));

  return std::ostream::~ostream();
}

uint64_t std::stringbuf::view[abi:ne200100](uint64_t a1)
{
  v1 = *(a1 + 96);
  if ((v1 & 0x10) != 0)
  {
    v3 = *(a1 + 48);
    if (*(a1 + 88) < v3)
    {
      *(a1 + 88) = v3;
    }

    return *(a1 + 40);
  }

  else if ((v1 & 8) != 0)
  {
    return *(a1 + 16);
  }

  else
  {
    return 0;
  }
}

uint64_t std::stringbuf::basic_stringbuf[abi:ne200100](uint64_t a1, int a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x2743CBDC0](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x277D82878] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  std::stringbuf::__init_buf_ptrs[abi:ne200100](a1);
  return a1;
}

void sub_272516314(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void std::stringbuf::__init_buf_ptrs[abi:ne200100](uint64_t a1)
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

uint64_t GetPortCodeForTuning(int a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int (*a8)(uint64_t, uint64_t, uint64_t), unsigned int (*a9)(uint64_t, uint64_t, uint64_t), uint64_t a10, char a11)
{
  v14 = a4;
  v41 = *MEMORY[0x277D85DE8];
  if (a8(a3, a4, a5))
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v18 = VPLogScope(void)::scope;
    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
    {
      v19 = (*v18 ? *v18 : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        CAX4CCStringNoQuote::CAX4CCStringNoQuote(v32, v14);
        *buf = 136315906;
        v34 = "vpAspen_v2.cpp";
        v35 = 1024;
        v36 = 179;
        v37 = 2080;
        v38 = a10;
        v39 = 2080;
        v40 = v32;
        v20 = "%25s:%-5d a known sub port type overrode the %s port type %s";
LABEL_11:
        _os_log_impl(&dword_2724B4000, v19, OS_LOG_TYPE_DEBUG, v20, buf, 0x26u);
      }
    }
  }

  else
  {
    v14 = a2;
    if (a9(a3, a6, a5))
    {
      v23 = *(a7 + 8);
      v22 = (a7 + 8);
      v21 = v23;
      v14 = a2;
      if (v23)
      {
        v24 = v22;
        v25 = v21;
        do
        {
          v26 = *(v25 + 7);
          v27 = v26 >= a6;
          v28 = v26 < a6;
          if (v27)
          {
            v24 = v25;
          }

          v25 = v25[v28];
        }

        while (v25);
        v14 = a2;
        if (v24 != v22)
        {
          v14 = a2;
          if (*(v24 + 7) <= a6)
          {
            while (1)
            {
              while (1)
              {
                v29 = *(v21 + 7);
                if (v29 <= a6)
                {
                  break;
                }

                v21 = *v21;
                if (!v21)
                {
                  goto LABEL_26;
                }
              }

              if (v29 >= a6)
              {
                break;
              }

              v21 = v21[1];
              if (!v21)
              {
LABEL_26:
                std::__throw_out_of_range[abi:ne200100]("map::at:  key not found");
              }
            }

            v14 = *(v21 + 8);
            if (VPLogScope(void)::once != -1)
            {
              dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
            }

            v30 = VPLogScope(void)::scope;
            if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
            {
              v19 = (*v30 ? *v30 : MEMORY[0x277D86220]);
              if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
              {
                CAX4CCStringNoQuote::CAX4CCStringNoQuote(v32, v14);
                *buf = 136315906;
                v34 = "vpAspen_v2.cpp";
                v35 = 1024;
                v36 = 188;
                v37 = 2080;
                v38 = a10;
                v39 = 2080;
                v40 = v32;
                v20 = "%25s:%-5d a known port endpoint type overrode the %s port type %s";
                goto LABEL_11;
              }
            }
          }
        }
      }
    }
  }

  if ((a1 - 35) <= 0xD && (a2 == 1886216820 || a2 == 1885892706))
  {
    v14 = 1987079284;
  }

  if (a11)
  {
    return 1751676528;
  }

  else
  {
    return v14;
  }
}

uint64_t VoiceProcessorV2::GetRefPortCodeForTuning(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v21 = *MEMORY[0x277D85DE8];
  qmemcpy(v20, "pspepspettpeottphvpehvpe", sizeof(v20));
  std::map<unsigned int,unsigned int>::map[abi:ne200100](v19, v20, 3);
  v12 = *(a1 + 76);
  std::map<unsigned int,unsigned int>::map[abi:ne200100](v18, v19);
  PortCodeForTuning = GetPortCodeForTuning(v12, a2, a2, a3, a4, a5, v18, VoiceProcessorV2::portSubTypeCanOverrideRefPortType, VoiceProcessorV2::portEndpointTypeCanOverrideRefPortType, "ref", *(a1 + 2093));
  v14 = 1885433971;
  std::__tree<unsigned int>::destroy(v18[1]);
  if (PortCodeForTuning != 1885631344 && PortCodeForTuning != 1885889645)
  {
    if ((*(a1 + 2260) & ((a6 & 0x1FFFFFFFFLL) == 0x16D656463)) != 0)
    {
      v15 = 1886152047;
    }

    else
    {
      v15 = 1885892727;
    }

    if (PortCodeForTuning == 1886152047 && a4 == 1886152041)
    {
      v14 = v15;
    }

    else
    {
      v14 = PortCodeForTuning;
    }
  }

  std::__tree<unsigned int>::destroy(v19[1]);
  return v14;
}

void sub_2725168F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, void *a17)
{
  std::__tree<unsigned int>::destroy(a14);
  std::__tree<unsigned int>::destroy(a17);
  _Unwind_Resume(a1);
}

uint64_t **std::map<unsigned int,unsigned int>::map[abi:ne200100](uint64_t **a1, unsigned int *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = (a1 + 1);
  a1[2] = 0;
  *a1 = (a1 + 1);
  if (a3)
  {
    v6 = 8 * a3;
    do
    {
      std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::__emplace_hint_unique_key_args<unsigned int,std::pair<unsigned int const,unsigned int> const&>(a1, v4, *a2, a2);
      a2 += 2;
      v6 -= 8;
    }

    while (v6);
  }

  return a1;
}

uint64_t **std::map<unsigned int,unsigned int>::map[abi:ne200100](uint64_t **a1, void *a2)
{
  a1[1] = 0;
  v3 = (a1 + 1);
  a1[2] = 0;
  *a1 = (a1 + 1);
  v4 = a2 + 1;
  v5 = *a2;
  if (*a2 != a2 + 1)
  {
    do
    {
      std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::__emplace_hint_unique_key_args<unsigned int,std::pair<unsigned int const,unsigned int> const&>(a1, v3, *(v5 + 7), (v5 + 28));
      v6 = v5[1];
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
          v7 = v5[2];
          v8 = *v7 == v5;
          v5 = v7;
        }

        while (!v8);
      }

      v5 = v7;
    }

    while (v7 != v4);
  }

  return a1;
}

uint64_t VoiceProcessorV2::portEndpointTypeCanOverrideRefPortType(VoiceProcessorV2 *this, int a2)
{
  v2 = 0;
  v3 = 0;
  do
  {
    v3 |= portEndpointTypeCanOverridePortType(unsigned int,unsigned int,std::span<unsigned int const,18446744073709551615ul>)::endpointTypesThatCanOverride[v2++] == a2;
  }

  while (v2 != 3);
  v5 = this == 1886152047 || this == 1885892706;
  return v5 & v3;
}

uint64_t **std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::__emplace_hint_unique_key_args<unsigned int,std::pair<unsigned int const,unsigned int> const&>(uint64_t **result, uint64_t *a2, unsigned int a3, uint64_t *a4)
{
  v4 = (result + 1);
  if (result + 1 == a2 || (v5 = *(a2 + 7), v5 > a3))
  {
    v6 = *a2;
    if (*result == a2)
    {
      v8 = a2;
LABEL_16:
      if (v6)
      {
        v9 = v8 + 1;
      }

      else
      {
        v9 = a2;
      }

      goto LABEL_19;
    }

    if (v6)
    {
      v7 = *a2;
      do
      {
        v8 = v7;
        v7 = v7[1];
      }

      while (v7);
    }

    else
    {
      v12 = a2;
      do
      {
        v8 = v12[2];
        v13 = *v8 == v12;
        v12 = v8;
      }

      while (v13);
    }

    if (*(v8 + 7) < a3)
    {
      goto LABEL_16;
    }

    v14 = *v4;
    if (*v4)
    {
      while (1)
      {
        while (1)
        {
          v15 = v14;
          v16 = *(v14 + 28);
          if (v16 <= a3)
          {
            break;
          }

          v14 = *v15;
          v4 = v15;
          if (!*v15)
          {
            goto LABEL_38;
          }
        }

        if (v16 >= a3)
        {
          break;
        }

        v4 = v15 + 1;
        v14 = v15[1];
        if (!v14)
        {
          goto LABEL_38;
        }
      }

LABEL_39:
      v9 = v4;
      goto LABEL_19;
    }

    goto LABEL_38;
  }

  if (v5 >= a3)
  {
    return result;
  }

  v9 = a2 + 1;
  v10 = a2[1];
  if (v10)
  {
    do
    {
      v9 = v10;
      v10 = *v10;
      v11 = v9;
    }

    while (v10);
  }

  else
  {
    v11 = a2;
    do
    {
      v17 = v11;
      v11 = v11[2];
    }

    while (*v11 != v17);
  }

  if (v11 != v4 && *(v11 + 7) <= a3)
  {
    for (i = *v4; i; i = v19[1])
    {
      while (1)
      {
        v19 = i;
        v20 = *(i + 28);
        if (v20 <= a3)
        {
          break;
        }

        i = *v19;
        v4 = v19;
        if (!*v19)
        {
          goto LABEL_38;
        }
      }

      if (v20 >= a3)
      {
        goto LABEL_39;
      }

      v4 = v19 + 1;
    }

LABEL_38:
    operator new();
  }

LABEL_19:
  if (!*v9)
  {
    goto LABEL_38;
  }

  return result;
}

uint64_t VoiceProcessorV2::GetMicPortCodeForTuning(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v18 = *MEMORY[0x277D85DE8];
  qmemcpy(v17, "pspepspettpeittphvpehvpe", sizeof(v17));
  std::map<unsigned int,unsigned int>::map[abi:ne200100](v16, v17, 3);
  v12 = *(a1 + 76);
  std::map<unsigned int,unsigned int>::map[abi:ne200100](v15, v16);
  PortCodeForTuning = GetPortCodeForTuning(v12, a4, a2, a3, a4, a5, v15, VoiceProcessorV2::portSubTypeCanOverrideMicPortType, VoiceProcessorV2::portEndpointTypeCanOverrideMicPortType, "mic", *(a1 + 2093));
  std::__tree<unsigned int>::destroy(v15[1]);
  if (a2 == 1886152047 && PortCodeForTuning == 1886152041)
  {
    if ((*(a1 + 2260) & ((a6 & 0x1FFFFFFFFLL) == 0x16D656463)) != 0)
    {
      PortCodeForTuning = 1886152041;
    }

    else
    {
      PortCodeForTuning = 1886222185;
    }
  }

  std::__tree<unsigned int>::destroy(v16[1]);
  return PortCodeForTuning;
}

void sub_272516E14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, void *a17)
{
  std::__tree<unsigned int>::destroy(a14);
  std::__tree<unsigned int>::destroy(a17);
  _Unwind_Resume(a1);
}

uint64_t VoiceProcessorV2::portEndpointTypeCanOverrideMicPortType(VoiceProcessorV2 *this, int a2, int a3)
{
  v3 = 0;
  v4 = 0;
  do
  {
    v4 |= portEndpointTypeCanOverridePortType(unsigned int,unsigned int,std::span<unsigned int const,18446744073709551615ul>)::endpointTypesThatCanOverride[v3++] == a2;
  }

  while (v3 != 3);
  return (a3 == 1886216820) & v4;
}

uint64_t VoiceProcessorV2::LoadTuningsPlists(VoiceProcessorV2 *this)
{
  v88 = *MEMORY[0x277D85DE8];
  v2 = **(this + 294);
  v3 = *(this + 600);
  v4 = **(this + 297);
  v5 = *(this + 601);
  v6 = (*(*this + 504))(this, v2, v3, v4, v5, 0);
  v67 = v4;
  v7 = (*(*this + 512))(this, v2, v3, v4, v5, 0);
  v8 = *(this + 22);
  qmemcpy(buf, "anpf80pfa6pfawpfa9pfa6pfaopfawpfawpf61pfenpf80pfe6pfewpfe9pfe6pfeopfewpfewpf61pf42pf42ovbntr42pfbwtr42pf", sizeof(buf));
  std::map<unsigned int,unsigned int>::map[abi:ne200100](&v76, buf, 13);
  v66 = this + 15881;
  while (1)
  {
    v9 = v7;
    v10 = v6;
    if (VoiceProcessorV2::GetVPVocoderTypeOrUseCaseOverrideForTuningOverride(this))
    {
      v8 = (*(*this + 488))(this);
      if ((*(this + 4600) & 1) == 0 && v78)
      {
        LODWORD(v11) = 0;
        while (1)
        {
          IsGenericRoute = VoiceProcessorV2::IsGenericRoute(this);
          VoiceProcessorV2::GetHardwareModelNameForTuning(buf, this, IsGenericRoute);
          if ((buf[23] & 0x80u) == 0)
          {
            v13 = buf;
          }

          else
          {
            v13 = *buf;
          }

          VoiceProcessorV2::GetVersionNameForTuning(&v86, this);
          v14 = SHIBYTE(v86.__r_.__value_.__r.__words[2]);
          v15 = v86.__r_.__value_.__r.__words[0];
          v16 = VoiceProcessorV2::IsGenericRoute(this);
          VoiceProcessorV2::GetDeviceCodeNameForTuning(&__p, this, v16);
          if (v14 >= 0)
          {
            v17 = &v86;
          }

          else
          {
            v17 = v15;
          }

          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p.__r_.__value_.__r.__words[0];
          }

          VoiceProcessorV2::TryLoadingTuningPlists(this, v13, v17, p_p, v10, v9, v8);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v86.__r_.__value_.__l.__data_);
          }

          if (buf[23] < 0)
          {
            operator delete(*buf);
          }

          if (v8 == *(this + 22))
          {
            break;
          }

          v19 = v77;
          if (!v77)
          {
            goto LABEL_49;
          }

          v20 = &v77;
          do
          {
            v21 = v19;
            v22 = v20;
            v23 = *(v19 + 7);
            if (v23 >= v8)
            {
              v20 = v19;
            }

            v19 = v19[v23 < v8];
          }

          while (v19);
          if (v20 == &v77)
          {
            goto LABEL_49;
          }

          if (v23 < v8)
          {
            v21 = v22;
          }

          if (v8 < *(v21 + 7))
          {
LABEL_49:
            if (VPLogScope(void)::once != -1)
            {
              dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
            }

            v31 = VPLogScope(void)::scope;
            if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(3, VPLogScope(void)::scope, 0))
            {
              v32 = (*v31 ? *v31 : MEMORY[0x277D86220]);
              if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
              {
                CAX4CCString::CAX4CCString(&v86, v8);
                *buf = 136315650;
                *&buf[4] = "vpAspen_v2.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 319;
                *&buf[18] = 2080;
                *&buf[20] = &v86;
                _os_log_impl(&dword_2724B4000, v32, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> No vocoder tuning fallback could be found for vocoder type %s", buf, 0x1Cu);
              }
            }

            v33 = *(this + 1588);
            if (v33 && ((*v66 & 1) != 0 || *(this + 15882) == 1))
            {
              if (VPLogScope(void)::once != -1)
              {
                dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
              }

              v34 = VPLogScope(void)::scope;
              CAX4CCString::CAX4CCString(buf, v8);
              CALegacyLog::log(v33, 3, v34, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpAspen_v2.cpp", 319, "LoadTuningsPlists", "No vocoder tuning fallback could be found for vocoder type %s", buf);
            }

            break;
          }

          v8 = *(v20 + 8);
          if ((*(this + 4600) & 1) == 0)
          {
            v11 = (v11 + 1);
            if (v78 > v11)
            {
              continue;
            }
          }

          break;
        }
      }
    }

    else
    {
      v24 = VoiceProcessorV2::IsGenericRoute(this);
      VoiceProcessorV2::GetHardwareModelNameForTuning(buf, this, v24);
      if ((buf[23] & 0x80u) == 0)
      {
        v25 = buf;
      }

      else
      {
        v25 = *buf;
      }

      VoiceProcessorV2::GetVersionNameForTuning(&v86, this);
      v26 = SHIBYTE(v86.__r_.__value_.__r.__words[2]);
      v27 = v86.__r_.__value_.__r.__words[0];
      v28 = VoiceProcessorV2::IsGenericRoute(this);
      VoiceProcessorV2::GetDeviceCodeNameForTuning(&__p, this, v28);
      if (v26 >= 0)
      {
        v29 = &v86;
      }

      else
      {
        v29 = v27;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v30 = &__p;
      }

      else
      {
        v30 = __p.__r_.__value_.__r.__words[0];
      }

      VoiceProcessorV2::TryLoadingTuningPlists(this, v25, v29, v30, v10, v9, v8);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v86.__r_.__value_.__l.__data_);
      }

      if (buf[23] < 0)
      {
        operator delete(*buf);
      }
    }

    if (*(this + 4600) == 1)
    {
      v39 = 0;
      *(this + 24) = v8;
      goto LABEL_146;
    }

    if (v10 == v2 && v9 == v67)
    {
      break;
    }

    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v35 = VPLogScope(void)::scope;
    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
    {
      v36 = (*v35 ? *v35 : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        CAX4CCString::CAX4CCString(&v86, v10);
        CAX4CCString::CAX4CCString(&__p, v9);
        *buf = 136315906;
        *&buf[4] = "vpAspen_v2.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 334;
        *&buf[18] = 2080;
        *&buf[20] = &v86;
        *&buf[28] = 2080;
        *&buf[30] = &__p;
        _os_log_impl(&dword_2724B4000, v36, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> no custom tuning plists found for headphone, headset or endpoint-specific device %s-%s; trying to find tunings for the original ref & mic port types...\n", buf, 0x26u);
      }
    }

    v37 = *(this + 1588);
    v6 = v2;
    v7 = v67;
    if (v37)
    {
      if ((*v66 & 1) != 0 || (v6 = v2, v7 = v67, *(this + 15882) == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v38 = VPLogScope(void)::scope;
        CAX4CCString::CAX4CCString(buf, v10);
        CAX4CCString::CAX4CCString(&v86, v9);
        CALegacyLog::log(v37, 1, v38, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpAspen_v2.cpp", 334, "LoadTuningsPlists", "no custom tuning plists found for headphone, headset or endpoint-specific device %s-%s; trying to find tunings for the original ref & mic port types...\n", buf, &v86);
        v6 = v2;
        v7 = v67;
      }
    }
  }

  *(this + 24) = v8;
  if (VoiceProcessorV2::GetVPVocoderTypeOrUseCaseOverrideForTuningOverride(this))
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v40 = VPLogScope(void)::scope;
    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
    {
      v41 = (*v40 ? *v40 : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        CAX4CCStringNoQuote::CAX4CCStringNoQuote(&v86, v2);
        CAX4CCStringNoQuote::CAX4CCStringNoQuote(&__p, v67);
        CAX4CCStringNoQuote::CAX4CCStringNoQuote(&v83, v8);
        *buf = 136316162;
        *&buf[4] = "vpAspen_v2.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 350;
        *&buf[18] = 2080;
        *&buf[20] = &v86;
        *&buf[28] = 2080;
        *&buf[30] = &__p;
        *&buf[38] = 2080;
        *&buf[40] = &v83;
        _os_log_impl(&dword_2724B4000, v41, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> NEW TUNING LOGIC <SERIOUS ERROR>: no tuning plists found. Using default paramters!!! Use case %s-%s-%s", buf, 0x30u);
      }
    }

    v42 = *(this + 1588);
    if (v42 && ((*v66 & 1) != 0 || *(this + 15882) == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v43 = VPLogScope(void)::scope;
      CAX4CCStringNoQuote::CAX4CCStringNoQuote(buf, v2);
      CAX4CCStringNoQuote::CAX4CCStringNoQuote(&v86, v67);
      CAX4CCStringNoQuote::CAX4CCStringNoQuote(&__p, v8);
      CALegacyLog::log(v42, 1, v43, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpAspen_v2.cpp", 350, "LoadTuningsPlists", "NEW TUNING LOGIC <SERIOUS ERROR>: no tuning plists found. Using default paramters!!! Use case %s-%s-%s", buf, &v86, &__p);
    }

    *&buf[8] = 0;
    *&buf[16] = 0;
    *buf = &buf[8];
    CAX4CCStringNoQuote::CAX4CCStringNoQuote(__s, v2);
    std::string::basic_string[abi:ne200100]<0>(&v74, __s);
    v44 = std::string::insert(&v74, 0, "No tuning plists found, using default paramters. Use case ", 0x3AuLL);
    v45 = *&v44->__r_.__value_.__l.__data_;
    v75.__r_.__value_.__r.__words[2] = v44->__r_.__value_.__r.__words[2];
    *&v75.__r_.__value_.__l.__data_ = v45;
    v44->__r_.__value_.__l.__size_ = 0;
    v44->__r_.__value_.__r.__words[2] = 0;
    v44->__r_.__value_.__r.__words[0] = 0;
    v46 = std::string::append(&v75, "-", 1uLL);
    v47 = *&v46->__r_.__value_.__l.__data_;
    v83.__r_.__value_.__r.__words[2] = v46->__r_.__value_.__r.__words[2];
    *&v83.__r_.__value_.__l.__data_ = v47;
    v46->__r_.__value_.__l.__size_ = 0;
    v46->__r_.__value_.__r.__words[2] = 0;
    v46->__r_.__value_.__r.__words[0] = 0;
    CAX4CCStringNoQuote::CAX4CCStringNoQuote(v81, v67);
    std::string::basic_string[abi:ne200100]<0>(v72, v81);
    if ((v73 & 0x80u) == 0)
    {
      v48 = v72;
    }

    else
    {
      v48 = v72[0];
    }

    if ((v73 & 0x80u) == 0)
    {
      v49 = v73;
    }

    else
    {
      v49 = v72[1];
    }

    v50 = std::string::append(&v83, v48, v49);
    v51 = *&v50->__r_.__value_.__l.__data_;
    __p.__r_.__value_.__r.__words[2] = v50->__r_.__value_.__r.__words[2];
    *&__p.__r_.__value_.__l.__data_ = v51;
    v50->__r_.__value_.__l.__size_ = 0;
    v50->__r_.__value_.__r.__words[2] = 0;
    v50->__r_.__value_.__r.__words[0] = 0;
    v52 = std::string::append(&__p, "-", 1uLL);
    v53 = *&v52->__r_.__value_.__l.__data_;
    v86.__r_.__value_.__r.__words[2] = v52->__r_.__value_.__r.__words[2];
    *&v86.__r_.__value_.__l.__data_ = v53;
    v52->__r_.__value_.__l.__size_ = 0;
    v52->__r_.__value_.__r.__words[2] = 0;
    v52->__r_.__value_.__r.__words[0] = 0;
    CAX4CCStringNoQuote::CAX4CCStringNoQuote(v80, v8);
    std::string::basic_string[abi:ne200100]<0>(v70, v80);
    if ((v71 & 0x80u) == 0)
    {
      v54 = v70;
    }

    else
    {
      v54 = v70[0];
    }

    if ((v71 & 0x80u) == 0)
    {
      v55 = v71;
    }

    else
    {
      v55 = v70[1];
    }

    v56 = std::string::append(&v86, v54, v55);
    v57 = v56->__r_.__value_.__r.__words[0];
    v84[0] = v56->__r_.__value_.__l.__size_;
    *(v84 + 7) = *(&v56->__r_.__value_.__r.__words[1] + 7);
    v58 = HIBYTE(v56->__r_.__value_.__r.__words[2]);
    v56->__r_.__value_.__l.__size_ = 0;
    v56->__r_.__value_.__r.__words[2] = 0;
    v56->__r_.__value_.__r.__words[0] = 0;
    std::string::basic_string[abi:ne200100]<0>(v68, "vp_tuning_setup_error");
    v79 = v68;
    v59 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(buf, v68, &v79);
    v60 = v59;
    if (*(v59 + 79) < 0)
    {
      operator delete(*(v59 + 56));
    }

    v61 = v84[0];
    *(v60 + 56) = v57;
    *(v60 + 64) = v61;
    *(v60 + 71) = *(v84 + 7);
    *(v60 + 79) = v58;
    if (v69 < 0)
    {
      operator delete(v68[0]);
    }

    if (v71 < 0)
    {
      operator delete(v70[0]);
    }

    if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v86.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v73 < 0)
    {
      operator delete(v72[0]);
    }

    if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v83.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v75.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v74.__r_.__value_.__l.__data_);
    }

    CAAudioStatisticsSendMessage(*(this + 271), *(this + 544), buf, 6);
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(*&buf[8]);
  }

  else
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v62 = VPLogScope(void)::scope;
    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(3, VPLogScope(void)::scope, 0))
    {
      v63 = (*v62 ? *v62 : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "vpAspen_v2.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 363;
        _os_log_impl(&dword_2724B4000, v63, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> No tuning plists found due to unknown vocoder type. This could be transient. Using default paramters.", buf, 0x12u);
      }
    }

    v64 = *(this + 1588);
    if (v64 && ((*v66 & 1) != 0 || v66[1] == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      CALegacyLog::log(v64, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpAspen_v2.cpp", 363, "LoadTuningsPlists", "No tuning plists found due to unknown vocoder type. This could be transient. Using default paramters.");
    }
  }

  v39 = 0xFFFFFFFFLL;
LABEL_146:
  std::__tree<unsigned int>::destroy(v77);
  return v39;
}

uint64_t VoiceProcessorV2::GetVPVocoderTypeOrUseCaseOverrideForTuningOverride(VoiceProcessorV2 *this)
{
  v22 = *MEMORY[0x277D85DE8];
  v1 = *(this + 20);
  v2 = v1;
  if (v1 - 7 >= 0xFFFFFFFE)
  {
    v8 = *(this + 19) - 1;
    if (v8 > 0x29 || (dword_272758FC8[v8] == 4 ? (v9 = v1 - 7 >= 0xFFFFFFFE) : (v9 = 0), v9))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v6 = 1718628916;
      v11 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
      {
        v12 = (*v11 ? *v11 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          CAX4CCString::CAX4CCString(v15, 0x66703234u);
          *buf = 136315650;
          v17 = "vpAspen_v2.cpp";
          v18 = 1024;
          v19 = 783;
          v20 = 2080;
          v21 = v15;
          _os_log_impl(&dword_2724B4000, v12, OS_LOG_TYPE_DEBUG, "%25s:%-5d setting use case override to %s", buf, 0x1Cu);
        }
      }

      return v6;
    }

    v10 = *(this + 19) - 1;
    if (v10 > 0x29)
    {
      return 0;
    }

    v2 = dword_272758FC8[v10];
  }

  if (v2 != 1)
  {
    return 0;
  }

  v3 = v1 > 6;
  v4 = (1 << v1) & 0x62;
  if (v3 || v4 == 0)
  {
    return 0;
  }

  v6 = 1718644321;
  v7 = *(this + 553);
  if (v7 > 1718755359)
  {
    if (v7 <= 1935764849)
    {
      if (v7 == 1718755360 || v7 == 1752309792)
      {
        return v6;
      }

      v13 = 1902341232;
    }

    else
    {
      if (v7 <= 1936029298)
      {
        if (v7 == 1935764850)
        {
          return v6;
        }

        if (v7 == 1935767394)
        {
          return 1718646625;
        }

        return 0;
      }

      if (v7 == 1936029299)
      {
        return 1718642038;
      }

      v13 = 1970037111;
    }

    if (v7 != v13)
    {
      return 0;
    }

    return 1718644325;
  }

  if (v7 <= 1700883825)
  {
    if (v7 != 880176738)
    {
      if (v7 == 880176759)
      {
        return 1718644581;
      }

      if (v7 == 880179042)
      {
        return 1718646629;
      }

      return 0;
    }

    return 1718644325;
  }

  if ((v7 - 1702261346) < 2)
  {
    return 1718644325;
  }

  if (v7 == 1700883826)
  {
    return 1718644577;
  }

  if (v7 != 1701212704)
  {
    return 0;
  }

  return v6;
}

uint64_t VoiceProcessorV2::GetVPVocoderOrUseCaseOverrideTuning4CC(VoiceProcessorV2 *this)
{
  v61 = *MEMORY[0x277D85DE8];
  v2 = *(this + 104);
  if (v2 <= 8000.0)
  {
    v3 = 1718628408;
  }

  else
  {
    v3 = 1718628662;
  }

  {
    *buf = 1718644321;
    *&buf[8] = 0x66706E6100000000;
    *&buf[16] = 1718644321;
    *&buf[24] = 0x6670366100000001;
    *&buf[32] = 1718644577;
    v30 = 0x6670396100000001;
    v31 = 0x166706F61;
    v32 = 0x66706F6100000001;
    v33 = 0x166707761;
    v34 = 0x6670776100000001;
    v35 = 1718644577;
    v36 = 0x6670303800000000;
    v37 = 0x166706F61;
    v38 = 0x6670303800000000;
    v39 = 0x166707761;
    v40 = 0x6670303800000000;
    v41 = 1718644325;
    v42 = 0x66706E6500000000;
    v43 = 1718644325;
    v44 = 0x6670366500000001;
    v45 = 1718644581;
    v46 = 0x6670396500000001;
    v47 = 0x166706F65;
    v48 = 0x66706F6500000001;
    v49 = 0x166707765;
    v50 = 0x6670776500000001;
    v51 = 1718644581;
    v52 = 0x66706E6500000000;
    v53 = 0x166706F65;
    v54 = 0x66706E6500000000;
    v55 = 0x166707765;
    v56 = 0x6670303800000000;
    *v28 = 1718628916;
    v57 = 1718628916;
    v58 = 0x72746E6200000001;
    *&v28[4] = 0x100000001;
    v59 = *v28;
    v60 = 0x7274776200000001;
    std::map<std::pair<unsigned int,std::pair<unsigned int,unsigned int>>,unsigned int>::map[abi:ne200100](buf, 18);
  }

  v4 = v2 > 8000.0;
  v5 = *(this + 554);
  VPVocoderTypeOrUseCaseOverrideForTuningOverride = VoiceProcessorV2::GetVPVocoderTypeOrUseCaseOverrideForTuningOverride(this);
  *buf = VPVocoderTypeOrUseCaseOverrideForTuningOverride;
  *&buf[4] = (v5 > 0x1F40) | (v4 << 32);
  v7 = qword_280898CE0;
  if (!qword_280898CE0)
  {
    goto LABEL_32;
  }

  v8 = &qword_280898CE0;
  do
  {
    v9 = *(v7 + 7);
    v10 = v9 == *buf;
    if (v9 < *buf)
    {
      v11 = -1;
    }

    else
    {
      v11 = 1;
    }

    if (v10)
    {
      v12 = *(v7 + 8);
      v13 = v12 == *&buf[4];
      v11 = v12 < *&buf[4] ? -1 : 1;
      if (v13)
      {
        v14 = *(v7 + 9);
        v15 = v14 == v4;
        v11 = __PAIR64__(v14, 8000.0) < LODWORD(v2) ? -1 : 1;
        if (v15)
        {
          v11 = 0;
        }
      }
    }

    v16 = v11;
    v17 = v11 & 8;
    if (v16 >= 0)
    {
      v8 = v7;
    }

    v7 = *(v7 + v17);
  }

  while (v7);
  if (v8 == &qword_280898CE0)
  {
    goto LABEL_32;
  }

  v18 = *(v8 + 7);
  v19 = v18 > *buf;
  if (v18 != *buf || (v20 = *(v8 + 8), v10 = v20 == *&buf[4], v19 = v20 > *&buf[4], !v10))
  {
    if (v19)
    {
      goto LABEL_32;
    }

    return *(v8 + 10);
  }

  if (*(v8 + 9) <= v4)
  {
    return *(v8 + 10);
  }

LABEL_32:
  if (VPLogScope(void)::once != -1)
  {
    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
  }

  v21 = v2;
  v22 = v5;
  v23 = VPLogScope(void)::scope;
  if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
  {
    v24 = (*v23 ? *v23 : MEMORY[0x277D86220]);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      CAX4CCString::CAX4CCString(v28, VPVocoderTypeOrUseCaseOverrideForTuningOverride);
      *buf = 136316162;
      *&buf[4] = "vpAspen_v2.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 842;
      *&buf[18] = 2080;
      *&buf[20] = v28;
      *&buf[28] = 2048;
      *&buf[30] = v22;
      *&buf[38] = 2048;
      v30 = *&v21;
      _os_log_impl(&dword_2724B4000, v24, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> No vocoder specific tuning list entry for vocoder type %s, vocoder sample rate = %f and hardware sample rate = %f!", buf, 0x30u);
    }
  }

  v25 = *(this + 1588);
  if (v25 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v26 = VPLogScope(void)::scope;
    CAX4CCString::CAX4CCString(buf, VPVocoderTypeOrUseCaseOverrideForTuningOverride);
    CALegacyLog::log(v25, 5, v26, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpAspen_v2.cpp", 842, "GetVPVocoderOrUseCaseOverrideTuning4CC", "No vocoder specific tuning list entry for vocoder type %s, vocoder sample rate = %f and hardware sample rate = %f!", buf, v22, v21);
  }

  return v3;
}

uint64_t std::operator<=>[abi:ne200100]<unsigned int,std::pair<unsigned int,unsigned int>,unsigned int,std::pair<unsigned int,unsigned int>>(unsigned int *a1, unsigned int *a2)
{
  v3 = *a1;
  if (*a1 < *a2)
  {
    result = 0xFFFFFFFFLL;
  }

  else
  {
    result = 1;
  }

  if (v3 == *a2)
  {
    v5 = a1[1];
    v6 = a2[1];
    result = v5 < v6 ? 0xFFFFFFFFLL : 1;
    if (v5 == v6)
    {
      v7 = a1[2];
      v8 = a2[2];
      v9 = v7 == v8;
      if (v7 < v8)
      {
        v10 = -1;
      }

      else
      {
        v10 = 1;
      }

      if (v9)
      {
        return 0;
      }

      else
      {
        return v10;
      }
    }
  }

  return result;
}

void std::map<std::pair<unsigned int,std::pair<unsigned int,unsigned int>>,unsigned int>::map[abi:ne200100](uint64_t result, uint64_t a2)
{
  qword_280898CE8 = 0;
  qword_280898CE0 = 0;
  VoiceProcessorV2::GetVPVocoderTuning4CCList(void)const::vocoderTuning4CCList = &qword_280898CE0;
  if (a2)
  {
    operator new();
  }
}

void VoiceProcessorV2::InitializeVPParams(VoiceProcessorV2 *this)
{
  v244 = *MEMORY[0x277D85DE8];
  v2 = this + 12604;
  v3 = *(this + 19);
  v234 = 0;
  v4 = *(this + 294);
  if (v4 == *(this + 295) || (v5 = *(this + 297), v5 == *(this + 298)))
  {
    v6 = 49;
    goto LABEL_6;
  }

  if (v3 == 49)
  {
    v6 = 45;
LABEL_6:
    v230 = v6;
    goto LABEL_7;
  }

  if ((v3 & 0xFFFFFFFE) == 0x32)
  {
    v6 = 46;
    goto LABEL_6;
  }

  v13 = *v4;
  v14 = *v5;
  if (v13 == 1886613611 && v14 == 1886216809)
  {
    v230 = 18;
    if ((v3 - 35) < 0xA || (v3 & 0xFFFFFFFE) == 0x2E)
    {
      goto LABEL_7;
    }

    v23 = v3 - 1;
    if ((v3 - 1) >= 0x30)
    {
      goto LABEL_753;
    }

    if (((0x90000003FFFFuLL >> v23) & 1) == 0)
    {
      if ((v3 - 31) < 2)
      {
        v6 = 27;
        goto LABEL_6;
      }

      if ((v3 - 27) >= 8)
      {
        if ((v3 - 19) < 2)
        {
          v6 = 31;
          goto LABEL_6;
        }

        if ((v3 - 21) < 6)
        {
          v6 = 38;
          goto LABEL_6;
        }
      }

      else if ((0xCFu >> (v3 - 27)))
      {
        v6 = 26;
        goto LABEL_6;
      }

LABEL_753:
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v216 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
      {
        v217 = (*v216 ? *v216 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v217, OS_LOG_TYPE_ERROR))
        {
          LODWORD(buf[0].__r_.__value_.__l.__data_) = 136315394;
          *(buf[0].__r_.__value_.__r.__words + 4) = "vpAspen_v2.cpp";
          WORD2(buf[0].__r_.__value_.__r.__words[1]) = 1024;
          *(&buf[0].__r_.__value_.__r.__words[1] + 6) = 717;
          _os_log_impl(&dword_2724B4000, v217, OS_LOG_TYPE_ERROR, "%25s:%-5d <SERIOUS ERROR> Route unknown! Aborting if defaults write not set, otherwise using default config!", buf, 0x12u);
        }
      }

      v215 = 7;
      goto LABEL_763;
    }

    v24 = &unk_2727593C4;
    goto LABEL_64;
  }

  if (v13 == 1886545251 && v14 == 1886216809)
  {
    if ((v3 - 1) < 0x12)
    {
      v6 = 13;
      goto LABEL_6;
    }

    goto LABEL_753;
  }

  v17 = *(this + 600);
  v18 = v13 == 1885892674 || v13 == 1885892727;
  if (v18 && v14 == 1886216809)
  {
    if ((v3 - 1) < 0x12)
    {
      v6 = 14;
      goto LABEL_6;
    }

    if ((v3 - 27) < 8)
    {
      v6 = 24;
      goto LABEL_6;
    }

    if ((v3 - 19) < 2)
    {
      v6 = 32;
      goto LABEL_6;
    }

    if ((v3 - 21) < 6)
    {
      v6 = 39;
      goto LABEL_6;
    }

    goto LABEL_753;
  }

  if (v13 == 1886152047 && v14 == 1886216809)
  {
    if ((v3 - 1) < 0x12)
    {
      v6 = 15;
      goto LABEL_6;
    }

    if ((v3 - 27) < 8)
    {
      v6 = 25;
      goto LABEL_6;
    }

    if ((v3 - 19) < 2)
    {
      v6 = 33;
      goto LABEL_6;
    }

    if ((v3 - 21) < 6)
    {
      v6 = 40;
      goto LABEL_6;
    }

    goto LABEL_753;
  }

  if (v13 == 1885888867 && v14 == 1886216809)
  {
    if ((v3 - 1) < 0x12)
    {
      v6 = 16;
      goto LABEL_6;
    }

    goto LABEL_753;
  }

  if (v13 == 1886613611 && v14 == 1886745449)
  {
    v23 = v3 - 19;
    if ((v3 - 19) < 0x10)
    {
      if (((0xCCFFu >> v23) & 1) == 0)
      {
        v6 = 10;
        goto LABEL_6;
      }

      v24 = &unk_272759484;
      goto LABEL_64;
    }

    v215 = 10;
LABEL_763:
    v230 = v215;
    goto LABEL_764;
  }

  if (v13 == 1885631344 && v14 == 1886216809)
  {
    v215 = 5;
    goto LABEL_763;
  }

  if (v13 == 1885889645 && v14 == 1886216809)
  {
    v215 = 6;
    goto LABEL_763;
  }

  if (v13 == 1886154613 && v14 == 1886216809)
  {
    v215 = 8;
    goto LABEL_763;
  }

  if (v14 == 1886216809)
  {
    switch(v13)
    {
      case 1886745455:
LABEL_787:
        v23 = v3 - 19;
        if ((v3 - 19) >= 0x10)
        {
          v215 = 9;
          goto LABEL_763;
        }

        if (((0xCCFFu >> v23) & 1) == 0)
        {
          v6 = 9;
          goto LABEL_6;
        }

        v24 = &unk_2727594C4;
LABEL_64:
        v6 = v24[v23];
        goto LABEL_6;
      case 1885889645:
        if (_os_feature_enabled_impl())
        {
          goto LABEL_787;
        }

        break;
      case 1885433971:
        if ((v3 - 19) >= 2)
        {
          if ((v3 - 21) >= 6)
          {
            if ((v3 - 7) < 0xC)
            {
              goto LABEL_839;
            }

            if ((v3 - 1) >= 6)
            {
              v230 = 7;
              goto LABEL_764;
            }

            if ((0x2Fu >> (v3 - 1)))
            {
LABEL_839:
              v222 = 17;
            }

            else
            {
              v222 = 7;
            }
          }

          else
          {
            v222 = 41;
          }
        }

        else
        {
          v222 = 34;
        }

        v230 = v222;
        goto LABEL_7;
    }
  }

  else
  {
    if (v13 == 1885892727 && v14 == 1886222185)
    {
      if (v17 == 1781805623)
      {
        v220 = 48;
      }

      else
      {
        v220 = 0;
      }

      if (v17 == 1781740087)
      {
        v215 = 47;
      }

      else
      {
        v215 = v220;
      }

      goto LABEL_763;
    }

    if (v13 == 1885892706 && v14 == 1886216820)
    {
      v215 = 1;
      goto LABEL_763;
    }

    if (v13 == 1886152047 && v14 == 1886152041)
    {
      v230 = 0;
      goto LABEL_764;
    }

    if (v13 == 1886745455 && v14 == 1886745449)
    {
      v23 = v3 - 19;
      if ((v3 - 19) >= 0x10)
      {
        v215 = 2;
        goto LABEL_763;
      }

      if (((0xCCFFu >> v23) & 1) == 0)
      {
        v6 = 2;
        goto LABEL_6;
      }

      v24 = &unk_272759504;
      goto LABEL_64;
    }

    if (v13 == 1886680175 && v14 == 1886680169)
    {
      v215 = 3;
      goto LABEL_763;
    }

    if (v13 == 1886614639 && v14 == 1886614633)
    {
      v215 = 4;
      goto LABEL_763;
    }
  }

  if (VPLogScope(void)::once != -1)
  {
    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
  }

  v224 = CALog::LogObjIfEnabled(2, VPLogScope(void)::scope);
  if (v224)
  {
    v225 = v224;
    if (os_log_type_enabled(v224, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf[0].__r_.__value_.__l.__data_) = 136315394;
      *(buf[0].__r_.__value_.__r.__words + 4) = "vpAspen_v2.cpp";
      WORD2(buf[0].__r_.__value_.__r.__words[1]) = 1024;
      *(&buf[0].__r_.__value_.__r.__words[1] + 6) = 707;
      _os_log_impl(&dword_2724B4000, v225, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Couldn't determine route from port type, using default route", buf, 0x12u);
    }
  }

  v230 = 7;
LABEL_764:
  if (!v3)
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v218 = VPLogScope(void)::scope;
    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
    {
      v219 = (*v218 ? *v218 : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v219, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf[0].__r_.__value_.__l.__data_) = 136315394;
        *(buf[0].__r_.__value_.__r.__words + 4) = "vpAspen_v2.cpp";
        WORD2(buf[0].__r_.__value_.__r.__words[1]) = 1024;
        *(&buf[0].__r_.__value_.__r.__words[1] + 6) = 723;
        _os_log_impl(&dword_2724B4000, v219, OS_LOG_TYPE_ERROR, "%25s:%-5d USING UNKNOWN DEVICE ROUTE", buf, 0x12u);
      }
    }

    v6 = 11;
    goto LABEL_6;
  }

LABEL_7:
  *(this + 11) = 0x766F6963766F3234;
  v7 = *(this + 20);
  if ((v7 - 5) > 1)
  {
    if (v7 == 8)
    {
      goto LABEL_93;
    }

    if (v7 == 4)
    {
      *(this + 22) = 1986998836;
      if (v2[3964])
      {
        goto LABEL_14;
      }

      if ((*(this + 2262) & 1) != 0 || (*(this + 2288) != 1 ? (AutomaticChatFlavor = *(v2 + 983)) : (AutomaticChatFlavor = VoiceProcessorV2::GetAutomaticChatFlavor(this)), AutomaticChatFlavor == 2))
      {
        v10 = 1986622319;
      }

      else
      {
        if (v2[3964] & 1) != 0 || (*(this + 2262))
        {
          goto LABEL_14;
        }

        v25 = *(this + 2288) == 1 ? VoiceProcessorV2::GetAutomaticChatFlavor(this) : *(v2 + 983);
        if (v25 != 1)
        {
          goto LABEL_14;
        }

        v10 = 1986884451;
      }

LABEL_13:
      *(this + 22) = v10;
LABEL_14:
      *(this + 23) = 1987012963;
      goto LABEL_93;
    }

    if (v7 != 1)
    {
      goto LABEL_49;
    }

LABEL_18:
    if (*(this + 104) <= 8000.0)
    {
      v11 = 1718628408;
    }

    else
    {
      v11 = 1718628662;
    }

    *(this + 22) = v11;
    *(this + 23) = 1987012963;
    goto LABEL_93;
  }

  v8 = *(this + 19) - 1;
  if (v8 <= 0x29 && dword_272758FC8[v8] == 1)
  {
    goto LABEL_18;
  }

  v9 = *(this + 19) - 1;
  if (v9 > 0x29 || dword_272758FC8[v9] == 4)
  {
    v10 = 1986998836;
    goto LABEL_13;
  }

  v19 = *(this + 19) - 1;
  if (v19 > 0x29)
  {
    goto LABEL_47;
  }

  if (dword_272758FC8[v19] == 8)
  {
    goto LABEL_93;
  }

  if ((v7 - 5) <= 1)
  {
LABEL_47:
    v20 = *(this + 19) - 1;
    if (v20 > 0x29)
    {
LABEL_58:
      *(this + 11) = vdup_n_s32(0x6D697363u);
      goto LABEL_93;
    }

    v7 = dword_272758FC8[v20];
  }

LABEL_49:
  if (v7 != 2 && (v7 || !(*(*this + 496))(this)))
  {
    goto LABEL_58;
  }

  if ((v3 - 35) < 0xE || v3 == 5)
  {
    goto LABEL_53;
  }

  v26 = 0;
  LOBYTE(v27) = 0;
  v28 = **(this + 294);
  do
  {
    v29 = *&aWphpbphposupot[v26] == v28 && *&aWphpbphposupot[v26 + 24] == **(this + 297);
    v27 = v29 | v27 & 1;
    v26 += 4;
  }

  while (v26 != 24);
  if (v27)
  {
    goto LABEL_53;
  }

  v21 = 0x7669646376693234;
  if (v28 > 1885892673)
  {
    if (v28 > 1886545250)
    {
      if (v28 == 1886745455)
      {
        goto LABEL_53;
      }

      v30 = 1886545251;
    }

    else
    {
      if (v28 == 1885892674)
      {
        goto LABEL_53;
      }

      v30 = 1886154613;
    }

LABEL_779:
    if (v28 != v30)
    {
      goto LABEL_54;
    }

    goto LABEL_53;
  }

  if (v28 > 1885888866)
  {
    if (v28 == 1885888867)
    {
      goto LABEL_53;
    }

    v30 = 1885889645;
    goto LABEL_779;
  }

  if (v28 != 1885433971)
  {
    v30 = 1885631344;
    goto LABEL_779;
  }

LABEL_53:
  v21 = 0x766F6963766F3234;
LABEL_54:
  *(this + 11) = v21;
  if (v2[3964])
  {
    goto LABEL_93;
  }

  if ((*(this + 2262) & 1) != 0 || (*(this + 2288) != 1 ? (v22 = *(v2 + 983)) : (v22 = VoiceProcessorV2::GetAutomaticChatFlavor(this)), v22 == 2))
  {
    v31 = 1986622319;
LABEL_92:
    *(this + 22) = v31;
    goto LABEL_93;
  }

  if ((v2[3964] & 1) == 0 && (*(this + 2262) & 1) == 0)
  {
    v214 = *(this + 2288) == 1 ? VoiceProcessorV2::GetAutomaticChatFlavor(this) : *(v2 + 983);
    if (v214 == 1)
    {
      v31 = 1986884451;
      goto LABEL_92;
    }
  }

LABEL_93:
  if (VPLogScope(void)::once != -1)
  {
    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
  }

  v32 = VPLogScope(void)::scope;
  if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
  {
    v33 = (*v32 ? *v32 : MEMORY[0x277D86220]);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
    {
      CAX4CCString::CAX4CCString(&cf, *(this + 22));
      LODWORD(buf[0].__r_.__value_.__l.__data_) = 136315650;
      *(buf[0].__r_.__value_.__r.__words + 4) = "vpAspen_v2.cpp";
      WORD2(buf[0].__r_.__value_.__r.__words[1]) = 1024;
      *(&buf[0].__r_.__value_.__r.__words[1] + 6) = 1150;
      WORD1(buf[0].__r_.__value_.__r.__words[2]) = 2080;
      *(&buf[0].__r_.__value_.__r.__words[2] + 4) = &cf;
      _os_log_impl(&dword_2724B4000, v33, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> SetVPUseCase: chat category is set to = %s", buf, 0x1Cu);
    }
  }

  v34 = *(this + 1588);
  if (v34 && ((v2[3277] & 1) != 0 || v2[3278] == 1))
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v35 = VPLogScope(void)::scope;
    CAX4CCString::CAX4CCString(buf, *(this + 22));
    CALegacyLog::log(v34, 5, v35, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpAspen_v2.cpp", 1150, "SetVPUseCase", "SetVPUseCase: chat category is set to = %s", buf);
  }

  if (VPLogScope(void)::once != -1)
  {
    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
  }

  v36 = VPLogScope(void)::scope;
  if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
  {
    v37 = (*v36 ? *v36 : MEMORY[0x277D86220]);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
    {
      CAX4CCString::CAX4CCString(&cf, *(this + 23));
      LODWORD(buf[0].__r_.__value_.__l.__data_) = 136315650;
      *(buf[0].__r_.__value_.__r.__words + 4) = "vpAspen_v2.cpp";
      WORD2(buf[0].__r_.__value_.__r.__words[1]) = 1024;
      *(&buf[0].__r_.__value_.__r.__words[1] + 6) = 1152;
      WORD1(buf[0].__r_.__value_.__r.__words[2]) = 2080;
      *(&buf[0].__r_.__value_.__r.__words[2] + 4) = &cf;
      _os_log_impl(&dword_2724B4000, v37, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> SetVPUseCase: main chat category is set to = %s", buf, 0x1Cu);
    }
  }

  v38 = *(this + 1588);
  if (v38 && ((v2[3277] & 1) != 0 || v2[3278] == 1))
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v39 = VPLogScope(void)::scope;
    CAX4CCString::CAX4CCString(buf, *(this + 23));
    CALegacyLog::log(v38, 5, v39, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpAspen_v2.cpp", 1152, "SetVPUseCase", "SetVPUseCase: main chat category is set to = %s", buf);
  }

  *(this + 1684) = 1;
  *(this + 102) = 0;
  if (*(this + 487) == 1)
  {
    v40 = *(this + 155);
    if (v40)
    {
      v41 = 0;
      do
      {
        v41 = (2 * v41) | 1;
        --v40;
      }

      while (v40);
      *(this + 102) = v41;
    }
  }

  VPChannelConfig::SetChConfig((this + 432), 1, "main", 0);
  VPChannelConfig::SetChConfig((this + 456), 1, "main", 0);
  v42 = 0;
  v43 = 0;
  v44 = 0;
  v45 = *(this + 114);
  v46 = *(this + 108);
  do
  {
    if (((1 << v42) & v45) == 0 || ((1 << v42) & v46) == 0)
    {
      v43 += ((v46 | v45) >> v42) & 1;
    }

    else
    {
      v44 |= 1 << v43++;
    }

    ++v42;
  }

  while (v42 != 32);
  *(this + 107) = v44;
  v234 = 0;
  AppIntegerValue = CACFPreferencesGetAppIntegerValue(@"BuiltInMicDataSource", @"com.apple.audio.virtualaudio", &v234);
  if (v234)
  {
    v49 = AppIntegerValue;
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v50 = VPLogScope(void)::scope;
    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
    {
      v51 = (*v50 ? *v50 : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
      {
        LODWORD(buf[0].__r_.__value_.__l.__data_) = 136315650;
        *(buf[0].__r_.__value_.__r.__words + 4) = "vpAspen_v2.cpp";
        WORD2(buf[0].__r_.__value_.__r.__words[1]) = 1024;
        *(&buf[0].__r_.__value_.__r.__words[1] + 6) = 889;
        WORD1(buf[0].__r_.__value_.__r.__words[2]) = 1024;
        HIDWORD(buf[0].__r_.__value_.__r.__words[2]) = v49;
        _os_log_impl(&dword_2724B4000, v51, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> initializevpparams: VAD-BuiltInMicDataSource = %i", buf, 0x18u);
      }
    }

    v52 = *(this + 1588);
    if (v52 && ((v2[3277] & 1) != 0 || v2[3278] == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      CALegacyLog::log(v52, 5, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpAspen_v2.cpp", 889, "InitializeVPParams", "initializevpparams: VAD-BuiltInMicDataSource = %i", v49);
    }
  }

  v234 = 0;
  v53 = CACFPreferencesGetAppIntegerValue(@"BuiltInMicSelection", @"com.apple.audio.virtualaudio", &v234);
  if (v234)
  {
    v54 = v53;
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v55 = VPLogScope(void)::scope;
    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
    {
      v56 = (*v55 ? *v55 : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
      {
        LODWORD(buf[0].__r_.__value_.__l.__data_) = 136315650;
        *(buf[0].__r_.__value_.__r.__words + 4) = "vpAspen_v2.cpp";
        WORD2(buf[0].__r_.__value_.__r.__words[1]) = 1024;
        *(&buf[0].__r_.__value_.__r.__words[1] + 6) = 895;
        WORD1(buf[0].__r_.__value_.__r.__words[2]) = 1024;
        HIDWORD(buf[0].__r_.__value_.__r.__words[2]) = v54;
        _os_log_impl(&dword_2724B4000, v56, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> initializevpparams: VAD-BuiltInMicSelection = 0x%x", buf, 0x18u);
      }
    }

    v57 = *(this + 1588);
    if (v57 && ((v2[3277] & 1) != 0 || v2[3278] == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      CALegacyLog::log(v57, 5, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpAspen_v2.cpp", 895, "InitializeVPParams", "initializevpparams: VAD-BuiltInMicSelection = 0x%x", v54);
    }
  }

  VoiceProcessorV2::VPEchoProcessingParams::Reset((this + 4384));
  ReferenceSignalInternally = VoiceProcessorV2::ShouldGenerateReferenceSignalInternally(this);
  *(this + 1135) = ReferenceSignalInternally;
  if ((ReferenceSignalInternally & 1) == 0 && *v2 == 1)
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v59 = VPLogScope(void)::scope;
    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(4, VPLogScope(void)::scope, 0))
    {
      v60 = (*v59 ? *v59 : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf[0].__r_.__value_.__l.__data_) = 136315394;
        *(buf[0].__r_.__value_.__r.__words + 4) = "vpAspen_v2.cpp";
        WORD2(buf[0].__r_.__value_.__r.__words[1]) = 1024;
        *(&buf[0].__r_.__value_.__r.__words[1] + 6) = 913;
        _os_log_impl(&dword_2724B4000, v60, OS_LOG_TYPE_INFO, "%25s:%-5d  <vp> dl mix fmt & hw ref fmt were out-of-sync..re-setting while using external ref", buf, 0x12u);
      }
    }

    v61 = *(this + 1588);
    if (v61 && ((v2[3277] & 1) != 0 || v2[3278] == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      CALegacyLog::log(v61, 4, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpAspen_v2.cpp", 913, "InitializeVPParams", "dl mix fmt & hw ref fmt were out-of-sync..re-setting while using external ref");
    }

    *v2 = 0;
  }

  if (*(this + 294) != *(this + 295) && *(this + 297) != *(this + 298))
  {
    if (v3)
    {
      if ((*(*this + 528))(this))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v62 = VPLogScope(void)::scope;
        if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(3, VPLogScope(void)::scope, 0))
        {
          v63 = (*v62 ? *v62 : MEMORY[0x277D86220]);
          if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(buf[0].__r_.__value_.__l.__data_) = 136315394;
            *(buf[0].__r_.__value_.__r.__words + 4) = "vpAspen_v2.cpp";
            WORD2(buf[0].__r_.__value_.__r.__words[1]) = 1024;
            *(&buf[0].__r_.__value_.__r.__words[1] + 6) = 929;
            _os_log_impl(&dword_2724B4000, v63, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> Tuning loading is bypassed for this device", buf, 0x12u);
          }
        }

        v64 = *(this + 1588);
        if (v64 && ((v2[3277] & 1) != 0 || v2[3278] == 1))
        {
          if (VPLogScope(void)::once != -1)
          {
            dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
          }

          CALegacyLog::log(v64, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpAspen_v2.cpp", 929, "InitializeVPParams", "Tuning loading is bypassed for this device");
        }
      }

      else
      {
        (*(*this + 520))(this);
      }
    }

    else
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v65 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
      {
        v66 = (*v65 ? *v65 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
        {
          LODWORD(buf[0].__r_.__value_.__l.__data_) = 136315394;
          *(buf[0].__r_.__value_.__r.__words + 4) = "vpAspen_v2.cpp";
          WORD2(buf[0].__r_.__value_.__r.__words[1]) = 1024;
          *(&buf[0].__r_.__value_.__r.__words[1] + 6) = 925;
          _os_log_impl(&dword_2724B4000, v66, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> Hey I just met you, and this is crazy, but here's my component 'Audio - DSP Software', so file a radar maybe.", buf, 0x12u);
        }
      }

      v67 = *(this + 1588);
      if (v67 && ((v2[3277] & 1) != 0 || v2[3278] == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        CALegacyLog::log(v67, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpAspen_v2.cpp", 925, "InitializeVPParams", "Hey I just met you, and this is crazy, but here's my component 'Audio - DSP Software', so file a radar maybe.");
      }

      VoiceProcessorV2::TryLoadingTuningPlists(this, "Generic", "VPV3", "gen", 0x6576696Cu, 0x76696C65u, 0x666F756Cu);
    }

    (*(*this + 320))(this);
    (*(*this + 408))(this);
    (*(*this + 472))(this);
    VoiceProcessorV2::DispatchVPRouteSetup(this, v230, v3);
    HIBYTE(v240) = 0;
    LODWORD(v231.__r_.__value_.__l.__data_) = -1;
    VoiceProcessorV2::ReadDefaultsOverride(@"vp_mode", 3, &v231, &v240 + 1, v68);
    if (HIBYTE(v240))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v70 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
      {
        v71 = (*v70 ? *v70 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v71, OS_LOG_TYPE_DEBUG))
        {
          v72 = *(this + 20);
          LODWORD(buf[0].__r_.__value_.__l.__data_) = 136315906;
          *(buf[0].__r_.__value_.__r.__words + 4) = "vpDebug_DefaultsOverride.cpp";
          WORD2(buf[0].__r_.__value_.__r.__words[1]) = 1024;
          *(&buf[0].__r_.__value_.__r.__words[1] + 6) = 146;
          WORD1(buf[0].__r_.__value_.__r.__words[2]) = 1024;
          HIDWORD(buf[0].__r_.__value_.__r.__words[2]) = v231.__r_.__value_.__l.__data_;
          LOWORD(buf[1].__r_.__value_.__l.__data_) = 1024;
          *&buf[1].__r_.__value_.__s.__data_[2] = v72;
          _os_log_impl(&dword_2724B4000, v71, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> DEFAULTS OVERRIDE: vp mode %i (was %i)", buf, 0x1Eu);
        }
      }

      v73 = *(this + 1588);
      if (v73 && ((v2[3277] & 1) != 0 || v2[3278] == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        CALegacyLog::log(v73, 5, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpDebug_DefaultsOverride.cpp", 146, "ApplyDebugModeDefaultsOverrides", "DEFAULTS OVERRIDE: vp mode %i (was %i)", LODWORD(v231.__r_.__value_.__l.__data_), *(this + 20));
      }

      (*(*this + 96))(this, LODWORD(v231.__r_.__value_.__l.__data_));
    }

    v240 = 0;
    VoiceProcessorV2::ReadDefaultsOverride(@"vp_disable_gating", 0, &v240, &v240 + 1, v69);
    if (HIBYTE(v240))
    {
      *(this + 1684) = v240 == 0;
    }

    VoiceProcessorV2::ReadAndApplyDefaultsOverride(this, @"vp_bypass", 0, this + 120, v74);
    VoiceProcessorV2::ReadAndApplyDefaultsOverride(this, @"vp_clear_ref", 0, this + 3970, v75);
    VoiceProcessorV2::ReadAndApplyDefaultsOverride(this, @"vp_mute_output", 0, this + 522, v76);
    VoiceProcessorV2::ReadAndApplyDefaultsOverride(this, @"vp_mute_downlink_voice", 0, (this + 2090), v77);
    VoiceProcessorV2::ReadAndApplyDefaultsOverride(this, @"vp_disable_vp", 0, (this + 2091), v78);
    VoiceProcessorV2::ReadAndApplyDefaultsOverride(this, @"vp_hw_has_vp", 0, (this + 2093), v79);
    VoiceProcessorV2::ReadAndApplyDefaultsOverride(this, @"vp_vocoder_sample_rate", 2, this + 554, v80);
    VoiceProcessorV2::ReadAndApplyDefaultsOverride(this, @"vp_vocoder_type_int", 1, this + 553, v81);
    VoiceProcessorV2::ReadAndApplyDefaultsOverride(this, @"vp_uplink_proto", 1, this + 3168, v82);
    VoiceProcessorV2::ReadAndApplyDefaultsOverride(this, @"vp_downlink_proto", 1, this + 3169, v83);
    HIBYTE(v240) = 0;
    v239 = 0;
    VoiceProcessorV2::ReadDefaultsOverride(@"vp_beam_direction", 1, &v239, &v240 + 1, v84);
    if (HIBYTE(v240))
    {
      v86 = v239;
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v87 = VPLogScope(void)::scope;
      if (v86 > 1)
      {
        if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
        {
          v95 = (*v87 ? *v87 : MEMORY[0x277D86220]);
          if (os_log_type_enabled(v95, OS_LOG_TYPE_DEBUG))
          {
            LODWORD(buf[0].__r_.__value_.__l.__data_) = 136315394;
            *(buf[0].__r_.__value_.__r.__words + 4) = "vpDebug_DefaultsOverride.cpp";
            WORD2(buf[0].__r_.__value_.__r.__words[1]) = 1024;
            *(&buf[0].__r_.__value_.__r.__words[1] + 6) = 182;
            _os_log_impl(&dword_2724B4000, v95, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> DEFAULTS OVERRIDE: beam former directio unsupported", buf, 0x12u);
          }
        }

        v96 = *(this + 1588);
        if (v96 && ((v2[3277] & 1) != 0 || v2[3278] == 1))
        {
          if (VPLogScope(void)::once != -1)
          {
            dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
          }

          CALegacyLog::log(v96, 5, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpDebug_DefaultsOverride.cpp", 182, "ApplyDebugModeDefaultsOverrides", "DEFAULTS OVERRIDE: beam former directio unsupported");
        }
      }

      else
      {
        if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
        {
          v88 = (*v87 ? *v87 : MEMORY[0x277D86220]);
          if (os_log_type_enabled(v88, OS_LOG_TYPE_DEBUG))
          {
            v89 = "top back mic";
            *(buf[0].__r_.__value_.__r.__words + 4) = "vpDebug_DefaultsOverride.cpp";
            v90 = *(this + 688);
            if (v239)
            {
              v91 = "top back mic";
            }

            else
            {
              v91 = "top front mic";
            }

            LODWORD(buf[0].__r_.__value_.__l.__data_) = 136315906;
            WORD2(buf[0].__r_.__value_.__r.__words[1]) = 1024;
            if (!v90)
            {
              v89 = "top front mic";
            }

            *(&buf[0].__r_.__value_.__r.__words[1] + 6) = 178;
            WORD1(buf[0].__r_.__value_.__r.__words[2]) = 2080;
            *(&buf[0].__r_.__value_.__r.__words[2] + 4) = v91;
            WORD2(buf[1].__r_.__value_.__r.__words[0]) = 2080;
            *(buf[1].__r_.__value_.__r.__words + 6) = v89;
            _os_log_impl(&dword_2724B4000, v88, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> DEFAULTS OVERRIDE:beam former direction = %s (was %s)", buf, 0x26u);
          }
        }

        v92 = *(this + 1588);
        if (v92 && ((v2[3277] & 1) != 0 || v2[3278] == 1))
        {
          if (VPLogScope(void)::once != -1)
          {
            dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
          }

          v93 = "top back mic";
          if (v239)
          {
            v94 = "top back mic";
          }

          else
          {
            v94 = "top front mic";
          }

          if (!*(this + 688))
          {
            v93 = "top front mic";
          }

          CALegacyLog::log(v92, 5, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpDebug_DefaultsOverride.cpp", 178, "ApplyDebugModeDefaultsOverrides", "DEFAULTS OVERRIDE:beam former direction = %s (was %s)", v94, v93);
        }

        *(this + 688) = v239;
      }
    }

    v238 = 0;
    HIBYTE(v240) = 0;
    VoiceProcessorV2::ReadDefaultsOverride(@"vp_mic_selector_mode", 1, &v238, &v240 + 1, v85);
    if (HIBYTE(v240))
    {
      if (v238 < 5)
      {
        AUPropAndParamHelper::AddItemToAUParamList(this + 680, 0, v238);
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v101 = VPLogScope(void)::scope;
        if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
        {
          v102 = (*v101 ? *v101 : MEMORY[0x277D86220]);
          if (os_log_type_enabled(v102, OS_LOG_TYPE_DEBUG))
          {
            LODWORD(buf[0].__r_.__value_.__l.__data_) = 136315650;
            *(buf[0].__r_.__value_.__r.__words + 4) = "vpDebug_DefaultsOverride.cpp";
            WORD2(buf[0].__r_.__value_.__r.__words[1]) = 1024;
            *(&buf[0].__r_.__value_.__r.__words[1] + 6) = 194;
            WORD1(buf[0].__r_.__value_.__r.__words[2]) = 1024;
            HIDWORD(buf[0].__r_.__value_.__r.__words[2]) = v238;
            _os_log_impl(&dword_2724B4000, v102, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> InitializeVPParams: MicSelector mode override = %d", buf, 0x18u);
          }
        }

        v103 = *(this + 1588);
        if (v103 && ((v2[3277] & 1) != 0 || v2[3278] == 1))
        {
          if (VPLogScope(void)::once != -1)
          {
            dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
          }

          CALegacyLog::log(v103, 5, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpDebug_DefaultsOverride.cpp", 194, "ApplyDebugModeDefaultsOverrides", "InitializeVPParams: MicSelector mode override = %d", v238);
        }
      }

      else
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v98 = VPLogScope(void)::scope;
        if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
        {
          v99 = (*v98 ? *v98 : MEMORY[0x277D86220]);
          if (os_log_type_enabled(v99, OS_LOG_TYPE_DEBUG))
          {
            LODWORD(buf[0].__r_.__value_.__l.__data_) = 136315650;
            *(buf[0].__r_.__value_.__r.__words + 4) = "vpDebug_DefaultsOverride.cpp";
            WORD2(buf[0].__r_.__value_.__r.__words[1]) = 1024;
            *(&buf[0].__r_.__value_.__r.__words[1] + 6) = 191;
            WORD1(buf[0].__r_.__value_.__r.__words[2]) = 1024;
            HIDWORD(buf[0].__r_.__value_.__r.__words[2]) = v238;
            _os_log_impl(&dword_2724B4000, v99, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> InitializeVPParams: MicSelector mode override, invalid mode = %d, using default mode", buf, 0x18u);
          }
        }

        v100 = *(this + 1588);
        if (v100 && ((v2[3277] & 1) != 0 || v2[3278] == 1))
        {
          if (VPLogScope(void)::once != -1)
          {
            dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
          }

          CALegacyLog::log(v100, 5, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpDebug_DefaultsOverride.cpp", 191, "ApplyDebugModeDefaultsOverrides", "InitializeVPParams: MicSelector mode override, invalid mode = %d, using default mode", v238);
        }
      }
    }

    v237 = 0;
    HIBYTE(v240) = 0;
    VoiceProcessorV2::ReadDefaultsOverride(@"vp_agc_calibration_mode", 0, &v237, &v240 + 1, v97);
    if (HIBYTE(v240))
    {
      LOBYTE(v105) = v237;
      AUPropAndParamHelper::AddItemToAUParamList(this + 785, 41, v105);
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v106 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
      {
        v107 = (*v106 ? *v106 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v107, OS_LOG_TYPE_DEBUG))
        {
          LODWORD(buf[0].__r_.__value_.__l.__data_) = 136315650;
          *(buf[0].__r_.__value_.__r.__words + 4) = "vpDebug_DefaultsOverride.cpp";
          WORD2(buf[0].__r_.__value_.__r.__words[1]) = 1024;
          *(&buf[0].__r_.__value_.__r.__words[1] + 6) = 204;
          WORD1(buf[0].__r_.__value_.__r.__words[2]) = 1024;
          HIDWORD(buf[0].__r_.__value_.__r.__words[2]) = v237;
          _os_log_impl(&dword_2724B4000, v107, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> InitializeVPParams: AGC calibration mode override = %d", buf, 0x18u);
        }
      }

      v108 = *(this + 1588);
      if (v108 && ((v2[3277] & 1) != 0 || v2[3278] == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        CALegacyLog::log(v108, 5, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpDebug_DefaultsOverride.cpp", 204, "ApplyDebugModeDefaultsOverrides", "InitializeVPParams: AGC calibration mode override = %d", v237);
      }
    }

    VoiceProcessorV2::ReadAndApplyDefaultsOverride(this, @"vp_downlink_mix_gain", 2, this + 1121, v104);
    HIBYTE(v240) = 0;
    v236 = 0.0;
    VoiceProcessorV2::ReadDefaultsOverride(@"vp_downlink_enable_softclipi", 1, &v236, &v240 + 1, v109);
    if (HIBYTE(v240))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v111 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
      {
        v112 = (*v111 ? *v111 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v112, OS_LOG_TYPE_DEBUG))
        {
          v113 = "NO";
          *(buf[0].__r_.__value_.__r.__words + 4) = "vpDebug_DefaultsOverride.cpp";
          v114 = *(this + 1108);
          if (LODWORD(v236))
          {
            v115 = "NO";
          }

          else
          {
            v115 = "YES";
          }

          LODWORD(buf[0].__r_.__value_.__l.__data_) = 136315906;
          WORD2(buf[0].__r_.__value_.__r.__words[1]) = 1024;
          if ((v114 & 0x1000000000) != 0)
          {
            v113 = "YES";
          }

          *(&buf[0].__r_.__value_.__r.__words[1] + 6) = 215;
          WORD1(buf[0].__r_.__value_.__r.__words[2]) = 2080;
          *(&buf[0].__r_.__value_.__r.__words[2] + 4) = v115;
          WORD2(buf[1].__r_.__value_.__r.__words[0]) = 2080;
          *(buf[1].__r_.__value_.__r.__words + 6) = v113;
          _os_log_impl(&dword_2724B4000, v112, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> DEFAULTS OVERRIDE: enable downlink SCi %s (was %s)", buf, 0x26u);
        }
      }

      v116 = *(this + 1588);
      if (v116 && ((v2[3277] & 1) != 0 || v2[3278] == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v117 = "NO";
        if (LODWORD(v236))
        {
          v118 = "NO";
        }

        else
        {
          v118 = "YES";
        }

        if ((*(this + 1108) & 0x1000000000) != 0)
        {
          v117 = "YES";
        }

        CALegacyLog::log(v116, 5, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpDebug_DefaultsOverride.cpp", 215, "ApplyDebugModeDefaultsOverrides", "DEFAULTS OVERRIDE: enable downlink SCi %s (was %s)", v118, v117);
      }

      *(this + 1108) |= 0x1000000000uLL;
    }

    HIBYTE(v240) = 0;
    v235 = 0;
    VoiceProcessorV2::ReadDefaultsOverride(@"vp_downlink_enable_softclip", 1, &v235, &v240 + 1, v110);
    if (HIBYTE(v240))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v120 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
      {
        v121 = (*v120 ? *v120 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v121, OS_LOG_TYPE_DEBUG))
        {
          v122 = "NO";
          *(buf[0].__r_.__value_.__r.__words + 4) = "vpDebug_DefaultsOverride.cpp";
          v123 = *(this + 1108);
          if (v235)
          {
            v124 = "NO";
          }

          else
          {
            v124 = "YES";
          }

          LODWORD(buf[0].__r_.__value_.__l.__data_) = 136315906;
          WORD2(buf[0].__r_.__value_.__r.__words[1]) = 1024;
          if ((v123 & 0x4000000000000000) != 0)
          {
            v122 = "YES";
          }

          *(&buf[0].__r_.__value_.__r.__words[1] + 6) = 225;
          WORD1(buf[0].__r_.__value_.__r.__words[2]) = 2080;
          *(&buf[0].__r_.__value_.__r.__words[2] + 4) = v124;
          WORD2(buf[1].__r_.__value_.__r.__words[0]) = 2080;
          *(buf[1].__r_.__value_.__r.__words + 6) = v122;
          _os_log_impl(&dword_2724B4000, v121, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> DEFAULTS OVERRIDE: enable downlink SC %s (was %s)", buf, 0x26u);
        }
      }

      v125 = *(this + 1588);
      if (v125 && ((v2[3277] & 1) != 0 || v2[3278] == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v126 = "NO";
        if (v235)
        {
          v127 = "NO";
        }

        else
        {
          v127 = "YES";
        }

        if ((*(this + 1108) & 0x4000000000000000) != 0)
        {
          v126 = "YES";
        }

        CALegacyLog::log(v125, 5, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpDebug_DefaultsOverride.cpp", 225, "ApplyDebugModeDefaultsOverrides", "DEFAULTS OVERRIDE: enable downlink SC %s (was %s)", v127, v126);
      }

      *(this + 1108) |= 0x4000000000000000uLL;
    }

    HIBYTE(v240) = 0;
    cf.__r_.__value_.__r.__words[0] = 0;
    VoiceProcessorV2::ReadDefaultsOverride(@"vp_mic_trim_gains", 4, &cf, &v240 + 1, v119);
    if (!HIBYTE(v240))
    {
      goto LABEL_446;
    }

    v128 = cf.__r_.__value_.__r.__words[0];
    if (cf.__r_.__value_.__r.__words[0])
    {
      CFRetain(cf.__r_.__value_.__l.__data_);
      valuePtr[0] = v128;
      v129 = CFGetTypeID(v128);
      if (v129 != CFArrayGetTypeID())
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
      }

      v130 = valuePtr[0];
      if (valuePtr[0])
      {
        TypeID = CFArrayGetTypeID();
        if (TypeID == CFGetTypeID(v130))
        {
          Count = CFArrayGetCount(v130);
          memset(buf, 0, 24);
          std::vector<float>::reserve(buf, Count);
          if (Count <= 0)
          {
            size = buf[0].__r_.__value_.__l.__size_;
            v136 = buf[0].__r_.__value_.__r.__words[0];
            v134 = buf[0].__r_.__value_.__r.__words[2];
LABEL_409:
            *&v145 = size;
            *(&v145 + 1) = v134;
            v229 = v145;
            v144 = 1;
          }

          else
          {
            v133 = 0;
            *&v229 = Count & 0x7FFFFFFF;
            v134 = buf[0].__r_.__value_.__r.__words[2];
            size = buf[0].__r_.__value_.__l.__size_;
            v136 = buf[0].__r_.__value_.__r.__words[0];
            while (1)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(v130, v133);
              v138 = applesauce::CF::convert_as<float,0>(ValueAtIndex);
              if (!(v138 >> 32))
              {
                break;
              }

              v139 = v138;
              if (size >= v134)
              {
                v140 = size - v136;
                v141 = (size - v136) >> 2;
                v142 = v141 + 1;
                if ((v141 + 1) >> 62)
                {
                  buf[0].__r_.__value_.__l.__size_ = size;
                  buf[0].__r_.__value_.__r.__words[2] = v134;
                  buf[0].__r_.__value_.__r.__words[0] = v136;
                  std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
                }

                if ((v134 - v136) >> 1 > v142)
                {
                  v142 = (v134 - v136) >> 1;
                }

                if (v134 - v136 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v143 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v143 = v142;
                }

                if (v143)
                {
                  std::allocator<float>::allocate_at_least[abi:ne200100](v143);
                }

                v134 = 0;
                *(4 * v141) = v139;
                size = (4 * v141 + 4);
                memcpy(0, v136, v140);
                if (v136)
                {
                  operator delete(v136);
                }

                v136 = 0;
              }

              else
              {
                *size = v138;
                size += 4;
              }

              if (v229 == ++v133)
              {
                goto LABEL_409;
              }
            }

            buf[0].__r_.__value_.__r.__words[2] = v134;
            buf[0].__r_.__value_.__r.__words[0] = v136;
            if (v136)
            {
              buf[0].__r_.__value_.__l.__size_ = v136;
              operator delete(v136);
              v136 = 0;
            }

            v144 = 0;
          }
        }

        else
        {
          v136 = 0;
          v144 = 0;
        }

        if (valuePtr[0])
        {
          CFRelease(valuePtr[0]);
        }

        if (v144)
        {
          v228 = v144;
          v146 = v2;
          v147 = (this + 2104);
          v148 = *(this + 263);
          if (v148)
          {
            *(this + 264) = v148;
            operator delete(v148);
            *v147 = 0;
            *(this + 264) = 0;
            *(this + 265) = 0;
          }

          *(this + 263) = v136;
          *(this + 132) = v229;
          if (v229 != v136)
          {
            v149 = 0;
            do
            {
              if (VPLogScope(void)::once != -1)
              {
                dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
              }

              v150 = VPLogScope(void)::scope;
              if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
              {
                v151 = (*v150 ? *v150 : MEMORY[0x277D86220]);
                if (os_log_type_enabled(v151, OS_LOG_TYPE_DEBUG))
                {
                  v152 = *(*v147 + 4 * v149);
                  LODWORD(buf[0].__r_.__value_.__l.__data_) = 136315906;
                  *(buf[0].__r_.__value_.__r.__words + 4) = "vpDebug_DefaultsOverride.cpp";
                  WORD2(buf[0].__r_.__value_.__r.__words[1]) = 1024;
                  *(&buf[0].__r_.__value_.__r.__words[1] + 6) = 238;
                  WORD1(buf[0].__r_.__value_.__r.__words[2]) = 2048;
                  *(&buf[0].__r_.__value_.__r.__words[2] + 4) = v149;
                  WORD2(buf[1].__r_.__value_.__r.__words[0]) = 2048;
                  *(buf[1].__r_.__value_.__r.__words + 6) = v152;
                  _os_log_impl(&dword_2724B4000, v151, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> DEFAULTS OVERRIDE: mic trim gain(ch-%lu) = %f dB", buf, 0x26u);
                }
              }

              v153 = *(this + 1588);
              if (v153 && ((v146[3277] & 1) != 0 || v146[3278] == 1))
              {
                if (VPLogScope(void)::once != -1)
                {
                  dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                }

                CALegacyLog::log(v153, 5, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpDebug_DefaultsOverride.cpp", 238, "ApplyDebugModeDefaultsOverrides", "DEFAULTS OVERRIDE: mic trim gain(ch-%lu) = %f dB", v149, *(*v147 + 4 * v149));
              }

              ++v149;
            }

            while (v149 < (*(this + 264) - *(this + 263)) >> 2);
          }

          v2 = v146;
          if (v146[3277])
          {
            VoiceProcessorV2::PListWriteMicTrimGainParameters(this, this + 263);
            v144 = v228;
            v136 = 0;
          }

          else
          {
            v136 = 0;
            v144 = v228;
          }
        }

        if (cf.__r_.__value_.__r.__words[0])
        {
          CFRelease(cf.__r_.__value_.__l.__data_);
        }

        cf.__r_.__value_.__r.__words[0] = 0;
        if (v136)
        {
          v154 = v144;
        }

        else
        {
          v154 = 0;
        }

        if (v154 == 1)
        {
          operator delete(v136);
        }

LABEL_446:
        if (*(this + 2093) == 1)
        {
          (*(*this + 328))(this);
          *(this + 587) |= 2uLL;
          (*(*this + 416))(this);
          atomic_store(0x3F800000u, this + 567);
          *(this + 568) = 0;
        }

        (*(*this + 456))(this);
        (*(*this + 448))(this);
        if ((v2[3964] & 1) == 0 && (*(this + 2262) & 1) == 0)
        {
          v155 = *(this + 2288) == 1 ? VoiceProcessorV2::GetAutomaticChatFlavor(this) : *(v2 + 983);
          if (v155 == 1)
          {
            (*(*this + 464))(this);
          }
        }

        if ((*(*this + 112))(this) >= 7)
        {
          v156 = **(this + 294);
          v2[3956] = v156 == 1886614639;
          if (*(this + 2260))
          {
            v157 = 1;
          }

          else
          {
            v157 = v2[3957] | (v156 == 1886614639);
          }

          (*(*this + 440))(this, v157 & 1);
        }

        if ((*(this + 19) - 1) <= 0x21 && *(this + 2261) == 1)
        {
          (*(*this + 432))(this);
        }

        if ((*(this + 2260) & 1) == 0)
        {
          OutputPortProductIDForPME = VoiceProcessorV2::GetOutputPortProductIDForPME(this);
          if (OutputPortProductIDForPME >= 0x200A && OutputPortProductIDForPME != 8208)
          {
            *(this + 1108) |= 0x200000000000uLL;
          }
        }

        v159 = **(this + 294) - 1885892674;
        if (v159 > 0x35 || ((1 << v159) & 0x20000100000001) == 0 || (v2[3557] & 1) != 0)
        {
LABEL_496:
          if ((v2[3557] & 1) == 0)
          {
            (*(*this + 560))(this);
          }

          v173 = *(this + 278);
          if (v173)
          {
            VoiceProcessorV2::ApplyCustomTelephonyDSPOverrides(this, v173, 1);
          }

          v174 = *(this + 279);
          if (v174)
          {
            VoiceProcessorV2::ApplyCustomTelephonyDSPOverrides(this, v174, 0);
          }

          if (*(this + 2091) == 1)
          {
            buf[0].__r_.__value_.__r.__words[0] = this + 4688;
            LODWORD(buf[0].__r_.__value_.__r.__words[1]) = 0;
            std::__fill_n_BOOL[abi:ne200100]<false,std::__bitset<2ul,71ul>>(buf);
            *(this + 1108) |= 0x28000000uLL;
          }

          if (v230 <= 9 && ((1 << v230) & 0x360) != 0)
          {
            AUPropAndParamHelper::AddItemToAUParamList(this + 877, 3, 0.0);
            AUPropAndParamHelper::AddItemToAUParamList(this + 877, 4, 0.0);
            AUPropAndParamHelper::AddItemToAUParamList(this + 877, 5, 0.0);
            AUPropAndParamHelper::AddItemToAUParamList(this + 877, 6, 0.0);
            AUPropAndParamHelper::AddItemToAUParamList(this + 877, 7, 0.0);
            AUPropAndParamHelper::AddItemToAUParamList(this + 877, 8, 0.0);
            AUPropAndParamHelper::AddItemToAUParamList(this + 877, 9, 0.0);
            AUPropAndParamHelper::AddItemToAUParamList(this + 877, 10, 0.0);
            AUPropAndParamHelper::AddItemToAUParamList(this + 877, 11, 0.0);
          }

          if ((*(this + 20) - 5) <= 1)
          {
            v175 = *(this + 586);
            if ((v175 & 0x20000000000000) != 0 && (*(this + 4710) & 0x20) != 0 && *(this + 402))
            {
              AUPropAndParamHelper::AddItemToAUParamList(this + 749, 0, -18.0);
              if (VPLogScope(void)::once != -1)
              {
                dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
              }

              v176 = VPLogScope(void)::scope;
              if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
              {
                v177 = (*v176 ? *v176 : MEMORY[0x277D86220]);
                if (os_log_type_enabled(v177, OS_LOG_TYPE_DEBUG))
                {
                  LODWORD(buf[0].__r_.__value_.__l.__data_) = 136315906;
                  *(buf[0].__r_.__value_.__r.__words + 4) = "VoiceProcessor_v2.cpp";
                  WORD2(buf[0].__r_.__value_.__r.__words[1]) = 1024;
                  *(&buf[0].__r_.__value_.__r.__words[1] + 6) = 2877;
                  WORD1(buf[0].__r_.__value_.__r.__words[2]) = 2048;
                  *(&buf[0].__r_.__value_.__r.__words[2] + 4) = 0xC032000000000000;
                  WORD2(buf[1].__r_.__value_.__r.__words[0]) = 2080;
                  *(buf[1].__r_.__value_.__r.__words + 6) = "(UL-)OCNS";
                  _os_log_impl(&dword_2724B4000, v177, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> override noise suppression level to %f for %s AU", buf, 0x26u);
                }
              }

              v178 = *(this + 1588);
              if (v178 && ((v2[3277] & 1) != 0 || v2[3278] == 1))
              {
                if (VPLogScope(void)::once != -1)
                {
                  dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                }

                CALegacyLog::log(v178, 5, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v2.cpp", 2877, "ApplyNSTuningOverride", "override noise suppression level to %f for %s AU", -18.0, "(UL-)OCNS");
              }
            }

            else if ((v175 & 0x40000000000000) != 0 && (*(this + 4710) & 0x40) != 0 && *(this + 403))
            {
              AUPropAndParamHelper::AddItemToAUParamList(this + 752, 0, -18.0);
              if (VPLogScope(void)::once != -1)
              {
                dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
              }

              v179 = VPLogScope(void)::scope;
              if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
              {
                v180 = (*v179 ? *v179 : MEMORY[0x277D86220]);
                if (os_log_type_enabled(v180, OS_LOG_TYPE_DEBUG))
                {
                  LODWORD(buf[0].__r_.__value_.__l.__data_) = 136315906;
                  *(buf[0].__r_.__value_.__r.__words + 4) = "VoiceProcessor_v2.cpp";
                  WORD2(buf[0].__r_.__value_.__r.__words[1]) = 1024;
                  *(&buf[0].__r_.__value_.__r.__words[1] + 6) = 2882;
                  WORD1(buf[0].__r_.__value_.__r.__words[2]) = 2048;
                  *(&buf[0].__r_.__value_.__r.__words[2] + 4) = 0xC032000000000000;
                  WORD2(buf[1].__r_.__value_.__r.__words[0]) = 2080;
                  *(buf[1].__r_.__value_.__r.__words + 6) = "(UL-)OCNSV4";
                  _os_log_impl(&dword_2724B4000, v180, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> override noise suppression level to %f for %s AU", buf, 0x26u);
                }
              }

              v181 = *(this + 1588);
              if (v181 && ((v2[3277] & 1) != 0 || v2[3278] == 1))
              {
                if (VPLogScope(void)::once != -1)
                {
                  dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                }

                CALegacyLog::log(v181, 5, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v2.cpp", 2882, "ApplyNSTuningOverride", "override noise suppression level to %f for %s AU", -18.0, "(UL-)OCNSV4");
              }
            }

            else if ((v175 & 0x80000000000000) != 0 && (*(this + 4710) & 0x80) != 0 && *(this + 404))
            {
              AUPropAndParamHelper::AddItemToAUParamList(this + 755, 1, -24.0);
              if (VPLogScope(void)::once != -1)
              {
                dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
              }

              v182 = VPLogScope(void)::scope;
              if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
              {
                v183 = (*v182 ? *v182 : MEMORY[0x277D86220]);
                if (os_log_type_enabled(v183, OS_LOG_TYPE_DEBUG))
                {
                  LODWORD(buf[0].__r_.__value_.__l.__data_) = 136315906;
                  *(buf[0].__r_.__value_.__r.__words + 4) = "VoiceProcessor_v2.cpp";
                  WORD2(buf[0].__r_.__value_.__r.__words[1]) = 1024;
                  *(&buf[0].__r_.__value_.__r.__words[1] + 6) = 2889;
                  WORD1(buf[0].__r_.__value_.__r.__words[2]) = 2048;
                  *(&buf[0].__r_.__value_.__r.__words[2] + 4) = 0xC038000000000000;
                  WORD2(buf[1].__r_.__value_.__r.__words[0]) = 2080;
                  *(buf[1].__r_.__value_.__r.__words + 6) = "(UL-)MagDiffNSV4";
                  _os_log_impl(&dword_2724B4000, v183, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> override noise suppression level to %f for %s AU", buf, 0x26u);
                }
              }

              v184 = *(this + 1588);
              if (v184 && ((v2[3277] & 1) != 0 || v2[3278] == 1))
              {
                if (VPLogScope(void)::once != -1)
                {
                  dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                }

                CALegacyLog::log(v184, 5, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v2.cpp", 2889, "ApplyNSTuningOverride", "override noise suppression level to %f for %s AU", -24.0, "(UL-)MagDiffNSV4");
              }
            }
          }

          v162 = (this + 4688);
          v185 = *(this + 19);
          if ((*(this + 4694) & 0x80) == 0 || v185 - 6 >= 0xD && (v185 > 4 || ((1 << v185) & 0x16) == 0) || (v186 = **(this + 294), v186 != 1886545251) && v186 != 1885888867)
          {
LABEL_622:
            if ((v185 - 6 < 0xD || v185 <= 4 && ((1 << v185) & 0x16) != 0) && **(this + 297) == 1886216809)
            {
              *(this + 587) |= 8uLL;
            }

            if (*(this + 2261) == 1 && VoiceProcessorV2::GetFarEndVoiceMixChannelCount(this) > 1 || !*(this + 20) && *(this + 61) == 2)
            {
              *(this + 586) &= 0xFFFFFFFFF3FFFFFFLL;
              v199 = *(this + 1108);
              *(this + 1108) = v199 & 0xFFFFFFFFFFFFFFBFLL;
              if ((*(this + 19) - 19) <= 7)
              {
                if (**(this + 294) == 1886613611 && (*(this + 2260) & 1) == 0)
                {
                  v200 = v199 & 0xFFFFFFFFFEFFFFBFLL | 0x1000000;
                }

                else
                {
                  v200 = v199 & 0xFFFFFFFFFEFFFFBFLL;
                }

                *(this + 1108) = v200;
              }
            }

            if ((*(this + 2260) & 1) != 0 || v2[3957] == 1)
            {
              *v162 &= 0xFFFFFFFFF3DFFFFFLL;
            }

            if (*(this + 4600) == 1)
            {
              CFStringGetCString(*(this + 571), buf, 128, 0x600u);
              for (i = 0; i != 71; ++i)
              {
                if (((*(v162 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8)) >> i) & 1) != 0 && i != 62)
                {
                  VoiceProcessorV2::GetAndPopulateAUTuningPreset(this, i, 1, buf);
                }
              }

              VoiceProcessorV2::GetAndPopulateAuxAUTuningPreset(this, 1, buf);
              CFStringGetCString(*(this + 573), buf, 128, 0x600u);
              for (j = 0; j != 64; ++j)
              {
                if ((*(this + 1108) >> j) & 1) != 0 && ((0x5FFFFFFFC7FFFFFFuLL >> j))
                {
                  VoiceProcessorV2::GetAndPopulateAUTuningPreset(this, j, 0, buf);
                }
              }

              VoiceProcessorV2::GetAndPopulateAuxAUTuningPreset(this, 0, buf);
            }

            (*(*this + 544))(this, *(this + 600));
            IsGenericRoute = VoiceProcessorV2::IsGenericRoute(this);
            VoiceProcessorV2::GetHardwareModelNameForTuning(&cf, this, IsGenericRoute);
            VoiceProcessorV2::GetRouteSpecificGenericTuningSubDir(buf, this);
            if (buf[1].__r_.__value_.__s.__data_[0] == 1)
            {
              if (SHIBYTE(buf[0].__r_.__value_.__r.__words[2]) < 0)
              {
                std::string::__init_copy_ctor_external(&v231, buf[0].__r_.__value_.__l.__data_, buf[0].__r_.__value_.__l.__size_);
              }

              else
              {
                v231 = buf[0];
              }

              v204 = std::string::insert(&v231, 0, "/", 1uLL);
              v205 = *&v204->__r_.__value_.__l.__data_;
              v233 = v204->__r_.__value_.__r.__words[2];
              *valuePtr = v205;
              v204->__r_.__value_.__l.__size_ = 0;
              v204->__r_.__value_.__r.__words[2] = 0;
              v204->__r_.__value_.__r.__words[0] = 0;
              if (v233 >= 0)
              {
                v206 = valuePtr;
              }

              else
              {
                v206 = valuePtr[0];
              }

              if (v233 >= 0)
              {
                v207 = HIBYTE(v233);
              }

              else
              {
                v207 = valuePtr[1];
              }

              std::string::append(&cf, v206, v207);
              if (SHIBYTE(v233) < 0)
              {
                operator delete(valuePtr[0]);
              }

              if (SHIBYTE(v231.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v231.__r_.__value_.__l.__data_);
              }

              if ((buf[1].__r_.__value_.__s.__data_[0] & 1) != 0 && SHIBYTE(buf[0].__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(buf[0].__r_.__value_.__l.__data_);
              }
            }

            v208 = VoiceProcessorV2::IsGenericRoute(this);
            VoiceProcessorV2::GetDeviceCodeNameForTuning(buf, this, v208);
            v210 = SHIBYTE(buf[0].__r_.__value_.__r.__words[2]);
            if (SHIBYTE(buf[0].__r_.__value_.__r.__words[2]) < 0)
            {
              if (buf[0].__r_.__value_.__l.__size_)
              {
                v211 = buf[0].__r_.__value_.__r.__words[0];
                goto LABEL_675;
              }
            }

            else if (*(&buf[0].__r_.__value_.__s + 23))
            {
              v211 = buf;
LABEL_675:
              if (strcmp(v211, "gen"))
              {
                if ((cf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  p_cf = &cf;
                }

                else
                {
                  p_cf = cf.__r_.__value_.__r.__words[0];
                }

                if (v210 >= 0)
                {
                  v213 = buf;
                }

                else
                {
                  v213 = buf[0].__r_.__value_.__r.__words[0];
                }

                if (*(this + 60) != 1)
                {
                  goto LABEL_698;
                }

LABEL_691:
                v213 = 0;
                goto LABEL_698;
              }

              if ((cf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                p_cf = &cf;
              }

              else
              {
                p_cf = cf.__r_.__value_.__r.__words[0];
              }

              if (v210 >= 0)
              {
                v213 = buf;
              }

              else
              {
                v213 = buf[0].__r_.__value_.__r.__words[0];
              }

LABEL_698:
              VoiceProcessorV2::LoadAUDataPreset(this, p_cf, v213, v209);
              if (SHIBYTE(buf[0].__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(buf[0].__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(cf.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(cf.__r_.__value_.__l.__data_);
              }

              return;
            }

            if ((cf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              p_cf = &cf;
            }

            else
            {
              p_cf = cf.__r_.__value_.__r.__words[0];
            }

            if ((buf[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v213 = buf;
            }

            else
            {
              v213 = buf[0].__r_.__value_.__r.__words[0];
            }

            if (*(this + 60))
            {
              goto LABEL_691;
            }

            goto LABEL_698;
          }

          v231.__r_.__value_.__s.__data_[0] = 0;
          LODWORD(v187) = GetVPSmartCoverIsAttached(&v231);
          if (!v187)
          {
            v191 = v231.__r_.__value_.__s.__data_[0];
            if (v2[3277] == 1)
            {
              if (*(this + 1906))
              {
                buf[0].__r_.__value_.__r.__words[0] = 0;
                VoiceProcessorV2::PListCopyDictionaryForWrite(this, buf);
                v192 = buf[0].__r_.__value_.__r.__words[0];
                if (buf[0].__r_.__value_.__r.__words[0])
                {
                  LODWORD(valuePtr[0]) = v191;
                  VPGetPropsPListStringForKey(&cf, 58);
                  WriteItemToDictionary(buf, &cf.__r_.__value_.__l.__data_, 1, 4uLL, valuePtr);
                  if (cf.__r_.__value_.__r.__words[0])
                  {
                    CFRelease(cf.__r_.__value_.__l.__data_);
                  }

                  CFRelease(v192);
                }
              }
            }

            if (v191)
            {
              if (VPLogScope(void)::once != -1)
              {
                dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
              }

              v193 = VPLogScope(void)::scope;
              if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(3, VPLogScope(void)::scope, 0))
              {
                v194 = (*v193 ? *v193 : MEMORY[0x277D86220]);
                if (os_log_type_enabled(v194, OS_LOG_TYPE_DEFAULT))
                {
                  LODWORD(buf[0].__r_.__value_.__l.__data_) = 136315394;
                  *(buf[0].__r_.__value_.__r.__words + 4) = "VoiceProcessor_v2.cpp";
                  WORD2(buf[0].__r_.__value_.__r.__words[1]) = 1024;
                  *(&buf[0].__r_.__value_.__r.__words[1] + 6) = 2928;
                  _os_log_impl(&dword_2724B4000, v194, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> smart cover case detected", buf, 0x12u);
                }
              }

              v195 = *(this + 1588);
              if (v195 && ((v2[3277] & 1) != 0 || v2[3278] == 1))
              {
                if (VPLogScope(void)::once != -1)
                {
                  dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                }

                CALegacyLog::log(v195, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v2.cpp", 2928, "ApplyNSSmartCoverOverride", "smart cover case detected");
              }

              AUPropAndParamHelper::AddItemToAUParamList(this + 755, 0, 1.0);
              if (VPLogScope(void)::once != -1)
              {
                dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
              }

              v196 = VPLogScope(void)::scope;
              if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(3, VPLogScope(void)::scope, 0))
              {
                v197 = (*v196 ? *v196 : MEMORY[0x277D86220]);
                if (os_log_type_enabled(v197, OS_LOG_TYPE_DEFAULT))
                {
                  LODWORD(buf[0].__r_.__value_.__l.__data_) = 136315906;
                  *(buf[0].__r_.__value_.__r.__words + 4) = "VoiceProcessor_v2.cpp";
                  WORD2(buf[0].__r_.__value_.__r.__words[1]) = 1024;
                  *(&buf[0].__r_.__value_.__r.__words[1] + 6) = 2936;
                  WORD1(buf[0].__r_.__value_.__r.__words[2]) = 1024;
                  HIDWORD(buf[0].__r_.__value_.__r.__words[2]) = 1;
                  LOWORD(buf[1].__r_.__value_.__l.__data_) = 2080;
                  *(buf[1].__r_.__value_.__r.__words + 2) = "(UL-)MagDiffNSV4";
                  _os_log_impl(&dword_2724B4000, v197, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> override noise suppression mode to %u for %s AU", buf, 0x22u);
                }
              }

              v198 = *(this + 1588);
              if (v198 && ((v2[3277] & 1) != 0 || v2[3278] == 1))
              {
                if (VPLogScope(void)::once != -1)
                {
                  dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                }

                CALegacyLog::log(v198, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v2.cpp", 2936, "ApplyNSSmartCoverOverride", "override noise suppression mode to %u for %s AU", 1, "(UL-)MagDiffNSV4");
              }
            }

            goto LABEL_621;
          }

          if (VPLogScope(void)::once != -1)
          {
            dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
          }

          v188 = VPLogScope(void)::scope;
          if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
          {
            v189 = (*v188 ? *v188 : MEMORY[0x277D86220]);
            if (os_log_type_enabled(v189, OS_LOG_TYPE_ERROR))
            {
              CAX4CCString::CAX4CCString(&cf, v187);
              LODWORD(buf[0].__r_.__value_.__l.__data_) = 136315650;
              *(buf[0].__r_.__value_.__r.__words + 4) = "VoiceProcessor_v2.cpp";
              WORD2(buf[0].__r_.__value_.__r.__words[1]) = 1024;
              *(&buf[0].__r_.__value_.__r.__words[1] + 6) = 2940;
              WORD1(buf[0].__r_.__value_.__r.__words[2]) = 2080;
              *(&buf[0].__r_.__value_.__r.__words[2] + 4) = &cf;
              _os_log_impl(&dword_2724B4000, v189, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> couldn't query smart cover state: error = %s", buf, 0x1Cu);
            }
          }

          v161 = *(this + 1588);
          if (!v161 || (v2[3277] & 1) == 0 && v2[3278] != 1)
          {
LABEL_621:
            v185 = *(this + 19);
            goto LABEL_622;
          }

          if (VPLogScope(void)::once == -1)
          {
LABEL_580:
            v190 = VPLogScope(void)::scope;
            CAX4CCString::CAX4CCString(buf, v187);
            CALegacyLog::log(v161, 1, v190, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v2.cpp", 2940, "ApplyNSSmartCoverOverride", "couldn't query smart cover state: error = %s", buf);
            goto LABEL_621;
          }

LABEL_814:
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
          goto LABEL_580;
        }

        if (!getADASManagerClass())
        {
          v170 = 0;
          goto LABEL_484;
        }

        v160 = objc_autoreleasePoolPush();
        v161 = objc_alloc_init(getADASManagerClass());
        cf.__r_.__value_.__r.__words[0] = 0;
        cf.__r_.__value_.__l.__size_ = &cf;
        cf.__r_.__value_.__r.__words[2] = 0x2020000000;
        v162 = getADAFPreferenceKeyVolumeLimitEnabledSymbolLoc(void)::ptr;
        v242 = getADAFPreferenceKeyVolumeLimitEnabledSymbolLoc(void)::ptr;
        if (!getADAFPreferenceKeyVolumeLimitEnabledSymbolLoc(void)::ptr)
        {
          buf[0].__r_.__value_.__r.__words[0] = MEMORY[0x277D85DD0];
          buf[0].__r_.__value_.__l.__size_ = 3221225472;
          buf[0].__r_.__value_.__r.__words[2] = ___ZL47getADAFPreferenceKeyVolumeLimitEnabledSymbolLocv_block_invoke_1299;
          buf[1].__r_.__value_.__r.__words[0] = &unk_279E48E20;
          buf[1].__r_.__value_.__l.__size_ = &cf;
          v163 = AudioDataAnalysisLibrary();
          v164 = dlsym(v163, "ADAFPreferenceKeyVolumeLimitEnabled");
          *(*(buf[1].__r_.__value_.__l.__size_ + 8) + 24) = v164;
          getADAFPreferenceKeyVolumeLimitEnabledSymbolLoc(void)::ptr = *(*(buf[1].__r_.__value_.__l.__size_ + 8) + 24);
          v162 = *(cf.__r_.__value_.__l.__size_ + 24);
        }

        _Block_object_dispose(&cf, 8);
        if (v162)
        {
          v162 = [v161 getPreferenceFor:*v162];
          if (![v162 BOOLValue])
          {
            v170 = 0;
LABEL_483:

            objc_autoreleasePoolPop(v160);
LABEL_484:
            if (VPLogScope(void)::once != -1)
            {
              dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
            }

            if (VPLogScope(void)::scope)
            {
              v171 = *VPLogScope(void)::scope;
              if (!v171)
              {
LABEL_493:
                *(this + 586) = v170;
                if (*(this + 20) == 3 && v170)
                {
                  *(this + 1108) |= 0x4400000000000uLL;
                  (*(*this + 520))(this);
                }

                goto LABEL_496;
              }
            }

            else
            {
              v171 = MEMORY[0x277D86220];
              v172 = MEMORY[0x277D86220];
            }

            if (os_log_type_enabled(v171, OS_LOG_TYPE_INFO))
            {
              LODWORD(buf[0].__r_.__value_.__l.__data_) = 136315650;
              *(buf[0].__r_.__value_.__r.__words + 4) = "vpADASManagerInterface.mm";
              WORD2(buf[0].__r_.__value_.__r.__words[1]) = 1024;
              *(&buf[0].__r_.__value_.__r.__words[1] + 6) = 53;
              WORD1(buf[0].__r_.__value_.__r.__words[2]) = 1024;
              HIDWORD(buf[0].__r_.__value_.__r.__words[2]) = v170;
              _os_log_impl(&dword_2724B4000, v171, OS_LOG_TYPE_INFO, "%25s:%-5d [VolumeLimit] SPL Target Settings SPL: %u", buf, 0x18u);
            }

            goto LABEL_493;
          }

          cf.__r_.__value_.__r.__words[0] = 0;
          cf.__r_.__value_.__l.__size_ = &cf;
          cf.__r_.__value_.__r.__words[2] = 0x2020000000;
          v165 = getADAFPreferenceKeyVolumeLimitThresholdSymbolLoc(void)::ptr;
          v242 = getADAFPreferenceKeyVolumeLimitThresholdSymbolLoc(void)::ptr;
          if (!getADAFPreferenceKeyVolumeLimitThresholdSymbolLoc(void)::ptr)
          {
            buf[0].__r_.__value_.__r.__words[0] = MEMORY[0x277D85DD0];
            buf[0].__r_.__value_.__l.__size_ = 3221225472;
            buf[0].__r_.__value_.__r.__words[2] = ___ZL49getADAFPreferenceKeyVolumeLimitThresholdSymbolLocv_block_invoke_1306;
            buf[1].__r_.__value_.__r.__words[0] = &unk_279E48E20;
            buf[1].__r_.__value_.__l.__size_ = &cf;
            v166 = AudioDataAnalysisLibrary();
            v167 = dlsym(v166, "ADAFPreferenceKeyVolumeLimitThreshold");
            *(*(buf[1].__r_.__value_.__l.__size_ + 8) + 24) = v167;
            getADAFPreferenceKeyVolumeLimitThresholdSymbolLoc(void)::ptr = *(*(buf[1].__r_.__value_.__l.__size_ + 8) + 24);
            v165 = *(cf.__r_.__value_.__l.__size_ + 24);
          }

          _Block_object_dispose(&cf, 8);
          if (v165)
          {
            v168 = *v165;
            v169 = [v161 getPreferenceFor:v168];

            if (v169)
            {
              v170 = [v169 intValue];
              v162 = v169;
            }

            else
            {
              v162 = 0;
              v170 = 100;
            }

            goto LABEL_483;
          }

          v187 = [MEMORY[0x277CCA890] currentHandler];
          v223 = [MEMORY[0x277CCACA8] stringWithUTF8String:"const ADAFPreferenceKey getADAFPreferenceKeyVolumeLimitThreshold()"];
          [v187 handleFailureInFunction:v223 file:@"vpADASManagerInterface.mm" lineNumber:23 description:{@"%s", dlerror()}];
        }

        else
        {
          v187 = [MEMORY[0x277CCA890] currentHandler];
          v221 = [MEMORY[0x277CCACA8] stringWithUTF8String:"const ADAFPreferenceKey getADAFPreferenceKeyVolumeLimitEnabled()"];
          [v187 handleFailureInFunction:v221 file:@"vpADASManagerInterface.mm" lineNumber:22 description:{@"%s", dlerror()}];
        }

        __break(1u);
        goto LABEL_814;
      }
    }

    else
    {
      valuePtr[0] = 0;
    }

    v226 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v226, "Could not construct");
  }
}

void sub_27251C488(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *__p, uint64_t a43, int a44, __int16 a45, char a46, char a47, char a48)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void VoiceProcessorV2::GetAndPrintPortSubtype(AudioObjectID inObjectID, unsigned int *a2, unsigned int *a3)
{
  GetAndPrintPortTypeProperty(0x6F757470u, a2, inObjectID, 0x70737562u, "sub", a3);
  v4 = *a3;
  if (*a3 <= 1647718501)
  {
    if (v4 > 1633759843)
    {
      if (v4 == 1633759844)
      {
        return;
      }

      v6 = 1634231920;
    }

    else
    {
      if (v4 == 1214329654)
      {
        return;
      }

      v6 = 1214394677;
    }

    goto LABEL_15;
  }

  if (v4 > 1781740086)
  {
    if (v4 == 1781740087)
    {
      return;
    }

    v6 = 1781805623;
LABEL_15:
    if (v4 == v6)
    {
      return;
    }

    goto LABEL_16;
  }

  if ((v4 - 1647718502) >= 2 && v4 != 1752709424)
  {
LABEL_16:
    *a3 = 0;
  }
}

uint64_t VoiceProcessorV2::ApplyPortSubtypeTuningOverride(VoiceProcessorV2 *this, unsigned int a2)
{
  v47 = *MEMORY[0x277D85DE8];
  if (!(*(*this + 536))(this, **(this + 294), *(this + 600), **(this + 297)))
  {
    return 0;
  }

  if (VPLogScope(void)::once != -1)
  {
    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
  }

  v4 = VPLogScope(void)::scope;
  if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
  {
    v5 = (*v4 ? *v4 : MEMORY[0x277D86220]);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      CAX4CCStringNoQuote::CAX4CCStringNoQuote(v43, *(this + 600));
      LODWORD(buf[0]) = 136315650;
      *(buf + 4) = "vpAspen_v2.cpp";
      WORD6(buf[0]) = 1024;
      *(buf + 14) = 1196;
      WORD1(buf[1]) = 2080;
      *(&buf[1] + 4) = v43;
      _os_log_impl(&dword_2724B4000, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> known headphones with HW EQ AU preset override detected %s", buf, 0x1Cu);
    }
  }

  v36 = this + 12288;
  v6 = *(this + 1588);
  if (v6 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v7 = VPLogScope(void)::scope;
    CAX4CCStringNoQuote::CAX4CCStringNoQuote(buf, *(this + 600));
    CALegacyLog::log(v6, 5, v7, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpAspen_v2.cpp", 1196, "ApplyPortSubtypeTuningOverride", "known headphones with HW EQ AU preset override detected %s", buf);
  }

  memset(buf, 0, 255);
  if (*(this + 79) <= 0x5DC0)
  {
    TuningInSubdirs = 0;
    v9 = (this + 8);
    v10 = 3;
    v11 = 8000;
    do
    {
      if (v11 >= *(this + 79))
      {
        if (a2)
        {
          CAX4CCStringNoQuote::CAX4CCStringNoQuote(v43, a2);
          v12 = v43;
        }

        else
        {
          v12 = "gen";
        }

        snprintf(buf, 0xFFuLL, "%s_%u%s", v12, v11, "Hz");
        v41 = CFStringCreateWithCString(0, buf, 0x600u);
        v42 = 1;
        v13 = *(this + 343);
        cf = CFStringCreateWithCString(0, "Generic", 0x600u);
        v40 = 1;
        v37 = CFStringCreateWithCString(0, "Headphones", 0x600u);
        v38 = 1;
        *v43 = &cf;
        *&v43[8] = &v37;
        *&v43[16] = &v41;
        TuningInSubdirs = TuningPListMgr::loadTuningInSubdirs_(v13, v43, 3, 1u);
        CACFString::~CACFString(&v37);
        CACFString::~CACFString(&cf);
        if (!TuningInSubdirs)
        {
          CACFString::~CACFString(&v41);
          goto LABEL_48;
        }

        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v14 = VPLogScope(void)::scope;
        if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
        {
          v15 = (*v14 ? *v14 : MEMORY[0x277D86220]);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            v16 = this + 8;
            if (*(this + 31) < 0)
            {
              v16 = *v9;
            }

            *v43 = 136315906;
            *&v43[4] = "vpAspen_v2.cpp";
            *&v43[12] = 1024;
            *&v43[14] = 1214;
            *&v43[18] = 2080;
            *&v43[20] = v16;
            v44 = 2080;
            v45 = buf;
            _os_log_impl(&dword_2724B4000, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> : failed to find Headphone EQ aupreset: %s/Generic/Headphones/%s", v43, 0x26u);
          }
        }

        v17 = *(this + 1588);
        if (v17 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
        {
          if (VPLogScope(void)::once != -1)
          {
            dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
          }

          v18 = this + 8;
          if (*(this + 31) < 0)
          {
            v18 = *v9;
          }

          CALegacyLog::log(v17, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpAspen_v2.cpp", 1214, "ApplyPortSubtypeTuningOverride", ": failed to find Headphone EQ aupreset: %s/Generic/Headphones/%s", v18, buf);
        }

        CACFString::~CACFString(&v41);
      }

      v11 += 8000;
      --v10;
    }

    while (v10);
    if (TuningInSubdirs)
    {
      goto LABEL_49;
    }
  }

LABEL_48:
  if (*(this + 79) < 0x5DC1)
  {
LABEL_74:
    v27 = TuningPListMgr::lookupPlist_(*(this + 343), buf, 1u);
    cf = v27;
    if (v27)
    {
      CFRetain(v27);
      AUPropAndParamHelper::AddItemToAUPropsList(this + 1474, 0, 0, 0, 8uLL, &cf, 1);
      CFRelease(cf);
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v28 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
      {
        v29 = (*v28 ? *v28 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
        {
          *v43 = 136315906;
          *&v43[4] = "vpAspen_v2.cpp";
          *&v43[12] = 1024;
          *&v43[14] = 1245;
          *&v43[18] = 2080;
          *&v43[20] = buf;
          v44 = 2080;
          v45 = "(DL-)HwEQ";
          _os_log_impl(&dword_2724B4000, v29, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> found Headphone EQ aupreset:%s for %s", v43, 0x26u);
        }
      }

      v30 = *(this + 1588);
      if (v30 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        CALegacyLog::log(v30, 5, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpAspen_v2.cpp", 1245, "ApplyPortSubtypeTuningOverride", "found Headphone EQ aupreset:%s for %s", buf, "(DL-)HwEQ");
      }

      std::string::basic_string[abi:ne200100]<0>(v43, "(DL-)HwEQ");
      v41 = v43;
      v31 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(this + 576, v43, &v41);
      std::string::__assign_external((v31 + 5), buf);
      if ((v43[23] & 0x80000000) != 0)
      {
        operator delete(*v43);
      }
    }

    else
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v32 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
      {
        v33 = (*v32 ? *v32 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          *v43 = 136315906;
          *&v43[4] = "vpAspen_v2.cpp";
          *&v43[12] = 1024;
          *&v43[14] = 1249;
          *&v43[18] = 2080;
          *&v43[20] = buf;
          v44 = 2080;
          v45 = "(DL-)HwEQ";
          _os_log_impl(&dword_2724B4000, v33, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> : failed to load Headphone EQ tuning aupreset:%s for %s", v43, 0x26u);
        }
      }

      v34 = *(this + 1588);
      if (v34 && ((v36[3593] & 1) != 0 || v36[3594] == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        CALegacyLog::log(v34, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpAspen_v2.cpp", 1249, "ApplyPortSubtypeTuningOverride", ": failed to load Headphone EQ tuning aupreset:%s for %s", buf, "(DL-)HwEQ");
      }
    }

    return 0;
  }

LABEL_49:
  if (a2)
  {
    CAX4CCStringNoQuote::CAX4CCStringNoQuote(v43, a2);
    v19 = v43;
  }

  else
  {
    v19 = "gen";
  }

  snprintf(buf, 0xFFuLL, "%s", v19);
  v41 = CFStringCreateWithCString(0, buf, 0x600u);
  v42 = 1;
  v20 = *(this + 343);
  cf = CFStringCreateWithCString(0, "Generic", 0x600u);
  v40 = 1;
  v37 = CFStringCreateWithCString(0, "Headphones", 0x600u);
  v38 = 1;
  *v43 = &cf;
  *&v43[8] = &v37;
  *&v43[16] = &v41;
  v21 = TuningPListMgr::loadTuningInSubdirs_(v20, v43, 3, 1u);
  CACFString::~CACFString(&v37);
  CACFString::~CACFString(&cf);
  if (!v21)
  {
    CACFString::~CACFString(&v41);
    goto LABEL_74;
  }

  if (VPLogScope(void)::once != -1)
  {
    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
  }

  v22 = VPLogScope(void)::scope;
  if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
  {
    v23 = (*v22 ? *v22 : MEMORY[0x277D86220]);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = (this + 8);
      if (*(this + 31) < 0)
      {
        v24 = *v24;
      }

      *v43 = 136315906;
      *&v43[4] = "vpAspen_v2.cpp";
      *&v43[12] = 1024;
      *&v43[14] = 1231;
      *&v43[18] = 2080;
      *&v43[20] = v24;
      v44 = 2080;
      v45 = buf;
      _os_log_impl(&dword_2724B4000, v23, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> : failed to find Headphone EQ aupreset: %s/Generic/Headphones/%s", v43, 0x26u);
    }
  }

  v25 = *(this + 1588);
  if (v25 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v26 = this + 8;
    if (*(this + 31) < 0)
    {
      v26 = *v26;
    }

    CALegacyLog::log(v25, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpAspen_v2.cpp", 1231, "ApplyPortSubtypeTuningOverride", ": failed to find Headphone EQ aupreset: %s/Generic/Headphones/%s", v26, buf);
  }

  CACFString::~CACFString(&v41);
  return v21;
}

void *VoiceProcessorV2::ApplyPortTypeOverride(void *this)
{
  v1 = this[294];
  if (v1 != this[295])
  {
    v2 = this[297];
    if (v2 != this[298])
    {
      if (*v2 == 1886222185)
      {
        if (*v1 == 1886745455)
        {
          *v2 = 1886745449;
        }
      }

      else if (*v2 == 1886745449)
      {
        v3 = *v1;
        if (*v1 == 1885892706 || v3 == 1886152047 || v3 == 1885892727)
        {
          *v1 = 1886745455;
        }
      }
    }
  }

  return this;
}

uint64_t VoiceProcessorV2::GetAutomaticChatFlavor(VoiceProcessorV2 *this)
{
  if (*(this + 297) == *(this + 298))
  {
    return 0;
  }

  if (*(this + 294) == *(this + 295))
  {
    return 0;
  }

  if (VoiceProcessorV2::IsRefPortOwningDeviceBluetoothAppleProduct(this))
  {
    v2 = *(this + 4152) != 0;
    v3 = 1;
  }

  else
  {
    v2 = 0;
    v3 = 0;
  }

  v5 = *(this + 600) >> 1 == 823859251;
  v6 = "ibmpcerp";
  v7 = 320;
  while (1)
  {
    if (*v6 != **(this + 297) || *(v6 + 1) != **(this + 294))
    {
      goto LABEL_22;
    }

    v8 = *(v6 + 9);
    if (v8 == v3 && v8 != 0)
    {
      break;
    }

    if (v8 == v3)
    {
      goto LABEL_18;
    }

LABEL_22:
    v6 += 16;
    v7 -= 16;
    if (!v7)
    {
      return 0;
    }
  }

  if (*(v6 + 8) != v2)
  {
    goto LABEL_22;
  }

LABEL_18:
  v10 = *(v6 + 11);
  if (v10 == v5)
  {
    if (v6[11])
    {
      v10 = *(v6 + 10);
    }
  }

  if (v10 != v5)
  {
    goto LABEL_22;
  }

  return *(v6 + 3);
}

uint64_t GetVPProductFamilyType(int a1)
{
  v12 = *MEMORY[0x277D85DE8];
  if ((a1 - 1) < 0x44)
  {
    return *&aWphpbphposupot[4 * (a1 - 1) + 48];
  }

  if (VPLogScope(void)::once != -1)
  {
    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
  }

  v2 = VPLogScope(void)::scope;
  if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
  {
    v3 = *v2;
    if (!*v2)
    {
      v3 = MEMORY[0x277D86220];
    }

    v4 = v3;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315394;
      v9 = "vpBaseAspen.mm";
      v10 = 1024;
      v11 = 263;
      _os_log_impl(&dword_2724B4000, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d _vp: <SERIOUS ERROR> Hardware unknown! default config!", &v8, 0x12u);
    }

    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }
  }

  v5 = VPLogScope(void)::scope;
  if (VPLogScope(void)::scope)
  {
    result = CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0);
    if (!result)
    {
      return result;
    }

    v6 = *v5;
    if (!*v5)
    {
      v6 = MEMORY[0x277D86220];
    }

    v7 = v6;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315394;
      v9 = "vpBaseAspen.mm";
      v10 = 1024;
      v11 = 266;
      _os_log_impl(&dword_2724B4000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d Hey I just met you, and this is crazy, but here's my component 'Audio - DSP', so file a radar maybe.", &v8, 0x12u);
    }
  }

  return 0;
}

void GetAndPrintPortTypeProperty(AudioObjectPropertyScope a1, int a2, AudioObjectID inObjectID, AudioObjectPropertySelector a4, const char *a5, unsigned int *a6)
{
  v55 = *MEMORY[0x277D85DE8];
  inAddress.mSelector = 1684104048;
  inAddress.mScope = a1;
  inAddress.mElement = 0;
  outData = 0;
  ioDataSize = 8;
  if (!AudioObjectGetPropertyData(inObjectID, &inAddress, 0, 0, &ioDataSize, &outData) && ioDataSize == 8)
  {
    Count = CFArrayGetCount(outData);
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v9 = VPLogScope(void)::scope;
    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
    {
      v10 = *v9;
      if (!*v9)
      {
        v10 = MEMORY[0x277D86220];
      }

      v11 = v10;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v12 = "REF";
        *buf = 136316162;
        v48 = "vpBaseAspen.mm";
        if (a1 == 1768845428)
        {
          v12 = "MIC";
        }

        v49 = 1024;
        v50 = 500;
        *v52 = v12;
        v13 = "input";
        v51 = 2080;
        *&v52[8] = 1024;
        *&v52[10] = Count;
        if (a1 != 1768845428)
        {
          v13 = "output";
        }

        v53 = 2080;
        v54 = v13;
        _os_log_impl(&dword_2724B4000, v11, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s device has %d active %s ports", buf, 0x2Cu);
      }
    }

    if (Count >= 1)
    {
      v14 = 0;
      v15 = MEMORY[0x277D86220];
      v16 = &dword_2724B4000;
      while (1)
      {
        valuePtr = 0;
        ValueAtIndex = CFArrayGetValueAtIndex(outData, v14);
        if (ValueAtIndex)
        {
          CFNumberGetValue(ValueAtIndex, kCFNumberIntType, &valuePtr);
          if (VPLogScope(void)::once != -1)
          {
            dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
          }

          v18 = VPLogScope(void)::scope;
          if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
          {
            v19 = *v18;
            if (!*v18)
            {
              v19 = v15;
            }

            v20 = v19;
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136315650;
              v48 = "vpBaseAspen.mm";
              v49 = 1024;
              v50 = 508;
              v51 = 1024;
              *v52 = valuePtr;
              _os_log_impl(v16, v20, OS_LOG_TYPE_DEBUG, "%25s:%-5d current port ID = %d", buf, 0x18u);
            }
          }
        }

        *&v41.mSelector = 0x676C6F6270747970;
        v41.mElement = 0;
        v40 = 0;
        ioDataSize = 4;
        if (!AudioObjectGetPropertyData(valuePtr, &v41, 0, 0, &ioDataSize, &v40) && ioDataSize == 4)
        {
          if (VPLogScope(void)::once != -1)
          {
            dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
          }

          v22 = VPLogScope(void)::scope;
          if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
          {
            v23 = *v22;
            if (!*v22)
            {
              v23 = v15;
            }

            v24 = v23;
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
            {
              v25 = v15;
              v26 = v16;
              v27 = valuePtr;
              CAX4CCString::CAX4CCString(v46, v40);
              *buf = 136315906;
              v48 = "vpBaseAspen.mm";
              v49 = 1024;
              v50 = 520;
              v51 = 1024;
              *v52 = v27;
              *&v52[4] = 2080;
              *&v52[6] = v46;
              v16 = v26;
              _os_log_impl(v26, v24, OS_LOG_TYPE_DEBUG, "%25s:%-5d port type for port id %d is %s", buf, 0x22u);
              v15 = v25;
            }
          }

          if (v40 == a2)
          {
            break;
          }
        }

        if (Count == ++v14)
        {
          goto LABEL_69;
        }
      }

      v39.mSelector = a4;
      *&v39.mScope = 1735159650;
      ioDataSize = 4;
      if (AudioObjectGetPropertyData(valuePtr, &v39, 0, 0, &ioDataSize, a6))
      {
        v28 = 0;
      }

      else
      {
        v28 = ioDataSize == 4;
      }

      v29 = v28;
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v30 = VPLogScope(void)::scope;
      if (v29)
      {
        if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
        {
          v31 = *v30;
          if (!*v30)
          {
            v31 = v15;
          }

          v32 = v31;
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
          {
            v33 = valuePtr;
            CAX4CCString::CAX4CCString(v46, *a6);
            *buf = 136316162;
            v48 = "vpBaseAspen.mm";
            v49 = 1024;
            v50 = 531;
            v51 = 2080;
            *v52 = a5;
            *&v52[8] = 1024;
            *&v52[10] = v33;
            v53 = 2080;
            v54 = v46;
            _os_log_impl(&dword_2724B4000, v32, OS_LOG_TYPE_DEBUG, "%25s:%-5d port %s type for port id %d is %s", buf, 0x2Cu);
          }
        }
      }

      else
      {
        if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
        {
          v34 = *v30;
          if (!*v30)
          {
            v34 = v15;
          }

          v35 = v34;
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315906;
            v48 = "vpBaseAspen.mm";
            v49 = 1024;
            v50 = 534;
            v51 = 2080;
            *v52 = a5;
            *&v52[8] = 1024;
            *&v52[10] = valuePtr;
            _os_log_impl(&dword_2724B4000, v35, OS_LOG_TYPE_DEBUG, "%25s:%-5d port %s type for port id %d was not found!", buf, 0x22u);
          }
        }

        *a6 = 0;
      }
    }
  }

LABEL_69:
  if (outData)
  {
    CFRelease(outData);
  }
}

void sub_27251E30C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, std::__shared_weak_count *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::weak_ptr<VoiceProcessor::CFNotificationDelegate>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::weak_ptr<VoiceProcessor::CFNotificationDelegate>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  std::mutex::unlock((v16 + 24));
  std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  std::__shared_weak_count::__release_weak(v13);
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  if (v13)
  {
    std::__shared_weak_count::__release_weak(v13);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  _Unwind_Resume(a1);
}

void VoiceProcessor::CFNotificationDelegate::CFNotificationHandler::sharedInstance(VoiceProcessor::CFNotificationDelegate::CFNotificationHandler *this)
{
  if (!VoiceProcessor::CFNotificationDelegate::CFNotificationHandler::sharedInstance(void)::sWeakNotificationInstance || (v2 = std::__shared_weak_count::lock(VoiceProcessor::CFNotificationDelegate::CFNotificationHandler::sharedInstance(void)::sWeakNotificationInstance)) == 0 || !VoiceProcessor::CFNotificationDelegate::CFNotificationHandler::sharedInstance(void)::sWeakNotificationInstance)
  {
    operator new();
  }

  *this = VoiceProcessor::CFNotificationDelegate::CFNotificationHandler::sharedInstance(void)::sWeakNotificationInstance;
  *(this + 1) = v2;
}

void sub_27251E570(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<VoiceProcessor::CFNotificationDelegate::CFNotificationHandler>::~unique_ptr[abi:ne200100](va);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(a1);
}

char **std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::weak_ptr<VoiceProcessor::CFNotificationDelegate>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::weak_ptr<VoiceProcessor::CFNotificationDelegate>>,void *>>>>::~unique_ptr[abi:ne200100](char **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::weak_ptr<VoiceProcessor::CFNotificationDelegate>>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::weak_ptr<VoiceProcessor::CFNotificationDelegate>>,0>(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  if (*(a1 + 23) < 0)
  {
    v3 = *a1;

    operator delete(v3);
  }
}

void VoiceProcessor::cfNotificationCallback(VoiceProcessor *this, __CFNotificationCenter *a2, const __CFString *a3, const __CFString *a4, const void *a5, const __CFDictionary *a6)
{
  VoiceProcessor::CFNotificationDelegate::CFNotificationHandler::sharedInstance(&v25);
  if (!a3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  v8 = v25;
  CFRetain(a3);
  cf = a3;
  v9 = CFGetTypeID(a3);
  if (v9 != CFStringGetTypeID())
  {
    v21 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v21, "Could not construct");
  }

  applesauce::CF::convert_to<std::string,0>(__p, cf);
  std::mutex::lock((v8 + 24));
  if (*(v8 + 88) == 1)
  {
    v10 = std::__tree<std::__value_type<std::string,std::weak_ptr<VoiceProcessor::CFNotificationDelegate>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::weak_ptr<VoiceProcessor::CFNotificationDelegate>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::weak_ptr<VoiceProcessor::CFNotificationDelegate>>>>::find<std::string>(v8, __p);
    if (v8 + 8 != v10)
    {
      v11 = v10;
      v12 = *(v10 + 64);
      if (v12)
      {
        v13 = std::__shared_weak_count::lock(v12);
        if (v13)
        {
          v14 = v13;
          v15 = *(v11 + 56);
          if (v15)
          {
            v16 = v15[1];
            if (v16)
            {
              v17 = *v15;
              atomic_fetch_add_explicit(&v16->__shared_weak_owners_, 1uLL, memory_order_relaxed);
              v18 = std::__shared_weak_count::lock(v16);
              std::__shared_weak_count::__release_weak(v16);
              if (v18)
              {
                if (v17)
                {
                  v27 = a5;
                  v19 = *(v17 + 64);
                  if (!v19)
                  {
                    std::__throw_bad_function_call[abi:ne200100]();
                  }

                  (*(*v19 + 48))(v19, &v27);
                }

                std::__shared_weak_count::__release_shared[abi:ne200100](v18);
              }
            }
          }

          std::__shared_weak_count::__release_shared[abi:ne200100](v14);
        }
      }
    }
  }

  std::mutex::unlock((v8 + 24));
  if (v24 < 0)
  {
    operator delete(__p[0]);
  }

  CFRelease(cf);
  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }
}

void sub_27251E830(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, std::__shared_weak_count *a18)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  std::mutex::unlock((v18 + 24));
  if (a16 < 0)
  {
    operator delete(__p);
  }

  applesauce::CF::StringRef::~StringRef(&a10);
  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__tree<std::__value_type<std::string,std::weak_ptr<VoiceProcessor::CFNotificationDelegate>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::weak_ptr<VoiceProcessor::CFNotificationDelegate>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::weak_ptr<VoiceProcessor::CFNotificationDelegate>>>>::find<std::string>(uint64_t a1, void *a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v5 = a1 + 8;
  do
  {
    v6 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((v3 + 32), a2);
    if ((v6 & 0x80u) == 0)
    {
      v5 = v3;
    }

    v3 = *(v3 + ((v6 >> 4) & 8));
  }

  while (v3);
  if (v5 == v2 || (std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, (v5 + 32)) & 0x80) != 0)
  {
    return v2;
  }

  return v5;
}

VoiceProcessor::CFNotificationDelegate::CFNotificationHandler **std::unique_ptr<VoiceProcessor::CFNotificationDelegate::CFNotificationHandler>::~unique_ptr[abi:ne200100](VoiceProcessor::CFNotificationDelegate::CFNotificationHandler **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    VoiceProcessor::CFNotificationDelegate::CFNotificationHandler::~CFNotificationHandler(v2);
    MEMORY[0x2743CBFA0]();
  }

  return a1;
}

void VoiceProcessor::CFNotificationDelegate::CFNotificationHandler::~CFNotificationHandler(VoiceProcessor::CFNotificationDelegate::CFNotificationHandler *this)
{
  std::mutex::lock((this + 24));
  *(this + 88) = 0;
  std::mutex::unlock((this + 24));
  std::mutex::~mutex((this + 24));
  std::__tree<std::__value_type<std::string,std::weak_ptr<VoiceProcessor::CFNotificationDelegate>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::weak_ptr<VoiceProcessor::CFNotificationDelegate>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::weak_ptr<VoiceProcessor::CFNotificationDelegate>>>>::destroy(*(this + 1));
}

void std::__tree<std::__value_type<std::string,std::weak_ptr<VoiceProcessor::CFNotificationDelegate>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::weak_ptr<VoiceProcessor::CFNotificationDelegate>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::weak_ptr<VoiceProcessor::CFNotificationDelegate>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,std::weak_ptr<VoiceProcessor::CFNotificationDelegate>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::weak_ptr<VoiceProcessor::CFNotificationDelegate>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::weak_ptr<VoiceProcessor::CFNotificationDelegate>>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string,std::weak_ptr<VoiceProcessor::CFNotificationDelegate>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::weak_ptr<VoiceProcessor::CFNotificationDelegate>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::weak_ptr<VoiceProcessor::CFNotificationDelegate>>>>::destroy(a1[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::weak_ptr<VoiceProcessor::CFNotificationDelegate>>,0>((a1 + 4));

    operator delete(a1);
  }
}

VoiceProcessor::CFNotificationDelegate::CFNotificationHandler *std::__shared_ptr_pointer<VoiceProcessor::CFNotificationDelegate::CFNotificationHandler *,std::shared_ptr<VoiceProcessor::CFNotificationDelegate::CFNotificationHandler>::__shared_ptr_default_delete<VoiceProcessor::CFNotificationDelegate::CFNotificationHandler,VoiceProcessor::CFNotificationDelegate::CFNotificationHandler>,std::allocator<VoiceProcessor::CFNotificationDelegate::CFNotificationHandler>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    VoiceProcessor::CFNotificationDelegate::CFNotificationHandler::~CFNotificationHandler(result);

    JUMPOUT(0x2743CBFA0);
  }

  return result;
}

void std::__shared_ptr_pointer<VoiceProcessor::CFNotificationDelegate::CFNotificationHandler *,std::shared_ptr<VoiceProcessor::CFNotificationDelegate::CFNotificationHandler>::__shared_ptr_default_delete<VoiceProcessor::CFNotificationDelegate::CFNotificationHandler,VoiceProcessor::CFNotificationDelegate::CFNotificationHandler>,std::allocator<VoiceProcessor::CFNotificationDelegate::CFNotificationHandler>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743CBFA0);
}

void ***std::unique_ptr<VoiceProcessor::CFNotificationDelegate>::~unique_ptr[abi:ne200100](void ***a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    VoiceProcessor::CFNotificationDelegate::~CFNotificationDelegate(v2);
    MEMORY[0x2743CBFA0]();
  }

  return a1;
}

void VoiceProcessor::CFNotificationDelegate::~CFNotificationDelegate(void **this)
{
  VoiceProcessor::CFNotificationDelegate::shutdown(this);
  v2 = this[11];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::__function::__value_func<void ()(__CFDictionary const*)>::~__value_func[abi:ne200100]((this + 5));
  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }

  v3 = this[1];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }
}

void VoiceProcessor::CFNotificationDelegate::shutdown(VoiceProcessor::CFNotificationDelegate *this)
{
  VoiceProcessor::CFNotificationDelegate::CFNotificationHandler::sharedInstance(&v17);
  v2 = v17;
  std::mutex::lock((v17 + 24));
  v3 = std::__tree<std::__value_type<std::string,std::weak_ptr<VoiceProcessor::CFNotificationDelegate>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::weak_ptr<VoiceProcessor::CFNotificationDelegate>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::weak_ptr<VoiceProcessor::CFNotificationDelegate>>>>::find<std::string>(v2, this + 2);
  if (v2 + 1 != v3)
  {
    v4 = v3;
    LocalCenter = CFNotificationCenterGetLocalCenter();
    v6 = *(this + 39);
    if (v6 >= 0)
    {
      v7 = this + 16;
    }

    else
    {
      v7 = *(this + 2);
    }

    if (v7)
    {
      if (v6 >= 0)
      {
        v8 = *(this + 39);
      }

      else
      {
        v8 = *(this + 3);
      }

      v9 = CFStringCreateWithBytes(0, v7, v8, 0x8000100u, 0);
      cf = v9;
      if (!v9)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
      }
    }

    else
    {
      v9 = 0;
      cf = 0;
    }

    CFNotificationCenterRemoveObserver(LocalCenter, v2, v9, 0);
    if (cf)
    {
      CFRelease(cf);
    }

    v11 = v4[1];
    if (v11)
    {
      do
      {
        v12 = v11;
        v11 = *v11;
      }

      while (v11);
    }

    else
    {
      v13 = v4;
      do
      {
        v12 = v13[2];
        v14 = *v12 == v13;
        v13 = v12;
      }

      while (!v14);
    }

    if (*v2 == v4)
    {
      *v2 = v12;
    }

    v15 = v2[1];
    v2[2] = (v2[2] - 1);
    std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v15, v4);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::weak_ptr<VoiceProcessor::CFNotificationDelegate>>,0>((v4 + 4));
    operator delete(v4);
  }

  if (!v2[2])
  {
    *(v2 + 88) = 0;
  }

  std::mutex::unlock((v2 + 3));
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  VoiceProcessor::CFNotificationDelegate::CFNotificationHandler::sharedInstance(&v17);
  v16 = v17;
  std::mutex::lock((v17 + 24));
  *(v16 + 88) = 0;
  std::mutex::unlock((v16 + 24));
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }
}

void sub_27251ED20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, uint64_t a5, uint64_t a6, std::__shared_weak_count *a7, ...)
{
  va_start(va, a7);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  std::mutex::unlock((v7 + 24));
  if (a7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a7);
  }

  _Unwind_Resume(a1);
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

void **std::__shared_ptr_pointer<VoiceProcessor::CFNotificationDelegate *,std::shared_ptr<VoiceProcessor::CFNotificationDelegate>::__shared_ptr_default_delete<VoiceProcessor::CFNotificationDelegate,VoiceProcessor::CFNotificationDelegate>,std::allocator<VoiceProcessor::CFNotificationDelegate>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    VoiceProcessor::CFNotificationDelegate::~CFNotificationDelegate(result);

    JUMPOUT(0x2743CBFA0);
  }

  return result;
}

void std::__shared_ptr_pointer<VoiceProcessor::CFNotificationDelegate *,std::shared_ptr<VoiceProcessor::CFNotificationDelegate>::__shared_ptr_default_delete<VoiceProcessor::CFNotificationDelegate,VoiceProcessor::CFNotificationDelegate>,std::allocator<VoiceProcessor::CFNotificationDelegate>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743CBFA0);
}

CFTypeID applesauce::CF::details::at_to<applesauce::CF::DictionaryRef>(void *a1, CFArrayRef theArray, unint64_t a3)
{
  if (!theArray || CFArrayGetCount(theArray) <= a3 || (ValueAtIndex = CFArrayGetValueAtIndex(theArray, a3), (v7 = ValueAtIndex) == 0))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::not_found(exception);
  }

  CFRetain(ValueAtIndex);
  *a1 = v7;
  v8 = CFGetTypeID(v7);
  result = CFDictionaryGetTypeID();
  if (v8 != result)
  {
    v11 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v11, "Could not construct");
  }

  return result;
}

void sub_27251F268(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  applesauce::CF::ObjectRef<__CFDictionary const*>::~ObjectRef(v1);
  _Unwind_Resume(a1);
}

const void *applesauce::CF::details::at_key<char const(&)[7]>(const __CFDictionary *a1, char *__s)
{
  v4 = strlen(__s);
  v5 = CFStringCreateWithBytes(0, __s, v4, 0x8000100u, 0);
  cf = v5;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  Value = CFDictionaryGetValue(a1, v5);
  CFRelease(cf);
  return Value;
}

void sub_27251F394(void *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x27251F344);
}

float applesauce::CF::convert_to<float,0>(const __CFNumber *a1)
{
  v1 = applesauce::CF::convert_as<float,0>(a1);
  if (!(v1 >> 32))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::convert_error(exception);
  }

  return *&v1;
}

const __CFNumber *applesauce::CF::convert_as<float,0>(const __CFNumber *result)
{
  if (result)
  {
    v1 = result;
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(v1))
    {
      switch(CFNumberGetType(v1))
      {
        case kCFNumberSInt8Type:
          LOBYTE(valuePtr) = 0;
          Value = CFNumberGetValue(v1, kCFNumberSInt8Type, &valuePtr);
          goto LABEL_24;
        case kCFNumberSInt16Type:
          LOWORD(valuePtr) = 0;
          Value = CFNumberGetValue(v1, kCFNumberSInt16Type, &valuePtr);
          goto LABEL_19;
        case kCFNumberSInt32Type:
          LODWORD(valuePtr) = 0;
          Value = CFNumberGetValue(v1, kCFNumberSInt32Type, &valuePtr);
          goto LABEL_29;
        case kCFNumberSInt64Type:
          valuePtr = 0.0;
          Value = CFNumberGetValue(v1, kCFNumberSInt64Type, &valuePtr);
          goto LABEL_27;
        case kCFNumberFloat32Type:
          LODWORD(valuePtr) = 0;
          Value = CFNumberGetValue(v1, kCFNumberFloat32Type, &valuePtr);
          goto LABEL_11;
        case kCFNumberFloat64Type:
          valuePtr = 0.0;
          Value = CFNumberGetValue(v1, kCFNumberFloat64Type, &valuePtr);
          goto LABEL_21;
        case kCFNumberCharType:
          LOBYTE(valuePtr) = 0;
          Value = CFNumberGetValue(v1, kCFNumberCharType, &valuePtr);
LABEL_24:
          v6 = SLOBYTE(valuePtr);
          goto LABEL_25;
        case kCFNumberShortType:
          LOWORD(valuePtr) = 0;
          Value = CFNumberGetValue(v1, kCFNumberShortType, &valuePtr);
LABEL_19:
          v6 = SLOWORD(valuePtr);
LABEL_25:
          v7 = v6;
          goto LABEL_30;
        case kCFNumberIntType:
          LODWORD(valuePtr) = 0;
          Value = CFNumberGetValue(v1, kCFNumberIntType, &valuePtr);
LABEL_29:
          v7 = SLODWORD(valuePtr);
          goto LABEL_30;
        case kCFNumberLongType:
          valuePtr = 0.0;
          Value = CFNumberGetValue(v1, kCFNumberLongType, &valuePtr);
          goto LABEL_27;
        case kCFNumberLongLongType:
          valuePtr = 0.0;
          Value = CFNumberGetValue(v1, kCFNumberLongLongType, &valuePtr);
          goto LABEL_27;
        case kCFNumberFloatType:
          LODWORD(valuePtr) = 0;
          Value = CFNumberGetValue(v1, kCFNumberFloatType, &valuePtr);
LABEL_11:
          v5 = LODWORD(valuePtr);
          goto LABEL_31;
        case kCFNumberDoubleType:
          valuePtr = 0.0;
          Value = CFNumberGetValue(v1, kCFNumberDoubleType, &valuePtr);
          goto LABEL_21;
        case kCFNumberCFIndexType:
          valuePtr = 0.0;
          Value = CFNumberGetValue(v1, kCFNumberCFIndexType, &valuePtr);
          goto LABEL_27;
        case kCFNumberNSIntegerType:
          valuePtr = 0.0;
          Value = CFNumberGetValue(v1, kCFNumberNSIntegerType, &valuePtr);
LABEL_27:
          v7 = *&valuePtr;
          goto LABEL_30;
        case kCFNumberCGFloatType:
          valuePtr = 0.0;
          Value = CFNumberGetValue(v1, kCFNumberCGFloatType, &valuePtr);
LABEL_21:
          v7 = valuePtr;
LABEL_30:
          v5 = LODWORD(v7);
LABEL_31:
          v8 = v5 | 0x100000000;
          if (!Value)
          {
            v8 = 0;
          }

          v9 = v8 & 0x100000000;
          break;
        default:
          v9 = 0;
          LODWORD(v8) = 0;
          break;
      }

      return (v8 | v9);
    }

    else
    {
      v4 = CFBooleanGetTypeID();
      if (v4 == CFGetTypeID(v1))
      {
        return (COERCE_UNSIGNED_INT(CFBooleanGetValue(v1)) | 0x100000000);
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t applesauce::CF::convert_to<unsigned int,0>(const __CFNumber *a1)
{
  result = applesauce::CF::convert_as<unsigned int,0>(a1);
  if ((result & 0x100000000) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::convert_error(exception);
  }

  return result;
}

void sub_27251F840(_Unwind_Exception *a1)
{
  if (*(v1 + 79) < 0)
  {
    operator delete(*v4);
  }

  if (*(v1 + 55) < 0)
  {
    operator delete(*v3);
  }

  applesauce::CF::StringRef::~StringRef(v2);
  _Unwind_Resume(a1);
}

BOOL std::__fs::filesystem::operator==[abi:ne200100](const std::__fs::filesystem::path *a1, std::__fs::filesystem::path::__string_view a2)
{
  v2 = *(a2.__data_ + 1);
  if (*(a2.__data_ + 23) >= 0)
  {
    a2.__size_ = *(a2.__data_ + 23);
  }

  else
  {
    a2.__data_ = *a2.__data_;
    a2.__size_ = v2;
  }

  return std::__fs::filesystem::path::__compare(a1, a2) == 0;
}

BOOL applesauce::CF::operator==(unint64_t cf1, unint64_t a2)
{
  result = (cf1 | a2) == 0;
  if (cf1)
  {
    if (a2)
    {
      return CFEqual(cf1, a2) != 0;
    }
  }

  return result;
}

uint64_t vp::Context::operator=(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  *(a1 + 8) = v5;
  if (v5)
  {
    CFRetain(v5);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  *(a1 + 16) = *(a2 + 16);
  std::string::operator=((a1 + 24), (a2 + 24));
  std::string::operator=((a1 + 48), (a2 + 48));
  std::string::operator=((a1 + 72), (a2 + 72));
  *(a1 + 96) = *(a2 + 96);
  std::string::operator=((a1 + 104), (a2 + 104));
  v6 = *(a2 + 153);
  v7 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v7;
  *(a1 + 153) = v6;
  v8 = *(a1 + 176);
  v9 = *(a2 + 176);
  *(a1 + 176) = v9;
  if (v9)
  {
    CFRetain(v9);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  *(a1 + 184) = *(a2 + 184);
  return a1;
}

std::string *std::__fs::filesystem::path::assign[abi:ne200100]<char const*>(uint64_t a1, std::string **a2)
{
  if (*(a1 + 23) < 0)
  {
    **a1 = 0;
    *(a1 + 8) = 0;
  }

  else
  {
    *a1 = 0;
    *(a1 + 23) = 0;
  }

  v2 = *a2;
  v3 = (v2 - 1);
  do
  {
    v4 = v3->__r_.__value_.__s.__data_[1];
    v3 = (v3 + 1);
  }

  while (v4);
  return std::string::append[abi:ne200100]<char const*,0>(a1, v2, v3);
}

uint64_t applesauce::gestalt::query_as<int,0>(uint64_t a1)
{
  v1 = MGCopyAnswerWithError();
  v2 = v1;
  if (v1)
  {
    v3 = applesauce::CF::convert_as<int,0>(v1);
    CFRelease(v2);
  }

  else
  {
    v3 = 0;
  }

  return v3 & 0xFFFFFFFFFFLL;
}

uint64_t applesauce::gestalt::query_as<BOOL,0>(uint64_t a1)
{
  v1 = MGCopyAnswerWithError();
  v2 = v1;
  if (v1)
  {
    v3 = applesauce::CF::convert_as<BOOL,0>(v1);
    v4 = v3;
    v5 = HIBYTE(v3);
    CFRelease(v2);
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  return v4 | (v5 << 8);
}

uint64_t applesauce::CF::convert_as<int,0>(const __CFNumber *a1)
{
  TypeID = CFNumberGetTypeID();
  if (TypeID == CFGetTypeID(a1))
  {
    switch(CFNumberGetType(a1))
    {
      case kCFNumberSInt8Type:
        LOBYTE(valuePtr) = 0;
        Value = CFNumberGetValue(a1, kCFNumberSInt8Type, &valuePtr);
        goto LABEL_26;
      case kCFNumberSInt16Type:
        LOWORD(valuePtr) = 0;
        v10 = CFNumberGetValue(a1, kCFNumberSInt16Type, &valuePtr);
        goto LABEL_19;
      case kCFNumberSInt32Type:
        LODWORD(valuePtr) = 0;
        v8 = CFNumberGetValue(a1, kCFNumberSInt32Type, &valuePtr);
        goto LABEL_34;
      case kCFNumberSInt64Type:
        valuePtr = 0.0;
        v8 = CFNumberGetValue(a1, kCFNumberSInt64Type, &valuePtr);
        goto LABEL_34;
      case kCFNumberFloat32Type:
        LODWORD(valuePtr) = 0;
        v8 = CFNumberGetValue(a1, kCFNumberFloat32Type, &valuePtr);
        goto LABEL_11;
      case kCFNumberFloat64Type:
        valuePtr = 0.0;
        v8 = CFNumberGetValue(a1, kCFNumberFloat64Type, &valuePtr);
        goto LABEL_23;
      case kCFNumberCharType:
        LOBYTE(valuePtr) = 0;
        Value = CFNumberGetValue(a1, kCFNumberCharType, &valuePtr);
LABEL_26:
        LOBYTE(v11) = LOBYTE(valuePtr);
        if (!Value)
        {
          LOBYTE(v11) = 0;
        }

        v12 = SLOBYTE(valuePtr) < 0 && Value != 0;
        v13.i64[0] = Value != 0;
        v13.i64[1] = v12 << 63 >> 63;
        break;
      case kCFNumberShortType:
        LOWORD(valuePtr) = 0;
        v10 = CFNumberGetValue(a1, kCFNumberShortType, &valuePtr);
LABEL_19:
        if (v10)
        {
          v11 = SLOWORD(valuePtr) & 0xFFFFFFFFLL | 0x100000000;
        }

        else
        {
          v11 = 0;
        }

        goto LABEL_37;
      case kCFNumberIntType:
        LODWORD(valuePtr) = 0;
        v8 = CFNumberGetValue(a1, kCFNumberIntType, &valuePtr);
        goto LABEL_34;
      case kCFNumberLongType:
        valuePtr = 0.0;
        v8 = CFNumberGetValue(a1, kCFNumberLongType, &valuePtr);
        goto LABEL_34;
      case kCFNumberLongLongType:
        valuePtr = 0.0;
        v8 = CFNumberGetValue(a1, kCFNumberLongLongType, &valuePtr);
        goto LABEL_34;
      case kCFNumberFloatType:
        LODWORD(valuePtr) = 0;
        v8 = CFNumberGetValue(a1, kCFNumberFloatType, &valuePtr);
LABEL_11:
        v9 = *&valuePtr;
        goto LABEL_35;
      case kCFNumberDoubleType:
        valuePtr = 0.0;
        v8 = CFNumberGetValue(a1, kCFNumberDoubleType, &valuePtr);
        goto LABEL_23;
      case kCFNumberCFIndexType:
        valuePtr = 0.0;
        v8 = CFNumberGetValue(a1, kCFNumberCFIndexType, &valuePtr);
        goto LABEL_34;
      case kCFNumberNSIntegerType:
        valuePtr = 0.0;
        v8 = CFNumberGetValue(a1, kCFNumberNSIntegerType, &valuePtr);
LABEL_34:
        v9 = LODWORD(valuePtr);
        goto LABEL_35;
      case kCFNumberCGFloatType:
        valuePtr = 0.0;
        v8 = CFNumberGetValue(a1, kCFNumberCGFloatType, &valuePtr);
LABEL_23:
        v9 = valuePtr;
LABEL_35:
        v11 = v9 | 0x100000000;
        if (!v8)
        {
          v11 = 0;
        }

LABEL_37:
        v13 = vshlq_u64(vdupq_n_s64(v11), xmmword_2727562B0);
        break;
      default:
        LOBYTE(v11) = 0;
        v13 = 0uLL;
        break;
    }

    v14 = vandq_s8(vshlq_u64(v13, xmmword_2727562C0), xmmword_2727562D0);
    v7 = v14.i64[0] | v11 | v14.i64[1];
  }

  else
  {
    v4 = CFBooleanGetTypeID();
    if (v4 == CFGetTypeID(a1))
    {
      v5 = CFBooleanGetValue(a1);
      v6 = 0x100000000;
    }

    else
    {
      v5 = 0;
      v6 = 0;
    }

    v7 = v6 | v5;
  }

  return v7 & 0xFFFFFFFFFFLL;
}

VPContext *VPContextCreate(uint64_t a1)
{
  v1 = [VPContext allocWithZone:a1];

  return [(VPContext *)v1 init];
}

uint64_t applesauce::CF::make_DataRef(CFDataRef *a1, uint64_t a2)
{
  v12[4] = *MEMORY[0x277D85DE8];
  if (*(a2 + 23) >= 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = *a2;
  }

  v4 = fopen(v3, "rb");
  v10[0] = &unk_2881B7E70;
  v10[1] = MEMORY[0x277D85E28];
  v10[3] = v10;
  __stream = v4;
  v12[3] = v12;
  std::__function::__func<int (*)(__sFILE *),std::allocator<int (*)(__sFILE *)>,int ()(__sFILE *)>::__clone(v10, v12);
  std::__function::__value_func<int ()(__sFILE *)>::~__value_func[abi:ne200100](v10);
  if (!__stream)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  fseek(__stream, 0, 2);
  v5 = MEMORY[0x2743CC420](__stream);
  if (v5)
  {
    if ((v5 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
  }

  fseek(__stream, 0, 0);
  fread(0, 1uLL, 0, __stream);
  v6 = CFDataCreate(0, 0, 0);
  *a1 = v6;
  if (!v6)
  {
    v9 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v9, "Could not construct");
  }

  std::unique_ptr<__sFILE,std::function<int ()(__sFILE*)>>::reset[abi:ne200100](&__stream);
  return std::__function::__value_func<int ()(__sFILE *)>::~__value_func[abi:ne200100](v12);
}

void sub_272521538(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  applesauce::CF::ObjectRef<__CFData const*>::~ObjectRef(v10);
  if (v11)
  {
    operator delete(v11);
  }

  std::unique_ptr<__sFILE,std::function<int ()(__sFILE*)>>::reset[abi:ne200100](va);
  std::__function::__value_func<int ()(__sFILE *)>::~__value_func[abi:ne200100](v9);
  _Unwind_Resume(a1);
}

CFTypeID applesauce::CF::make_DictionaryRef(applesauce::CF *this, const applesauce::CF::DataRef *a2)
{
  if (!a2)
  {
    goto LABEL_10;
  }

  v3 = CFPropertyListCreateWithData(0, a2, 0, 0, 0);
  if (!v3)
  {
    result = CFDictionaryGetTypeID();
    if (!result)
    {
      *this = 0;
      return result;
    }

LABEL_10:
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
  }

  v4 = v3;
  v5 = CFGetTypeID(v3);
  if (v5 != CFDictionaryGetTypeID())
  {
    CFRelease(v4);
    goto LABEL_10;
  }

  *this = v4;
  v6 = CFGetTypeID(v4);
  result = CFDictionaryGetTypeID();
  if (v6 != result)
  {
    v8 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v8, "Could not construct");
  }

  return result;
}

void sub_272521694(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  applesauce::CF::ObjectRef<__CFDictionary const*>::~ObjectRef(v1);
  _Unwind_Resume(a1);
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
  *a2 = &unk_2881B7E70;
  a2[1] = v2;
  return result;
}

id anonymous namespace::log(_anonymous_namespace_ *this)
{
  {
  }

  return v2;
}

uint64_t ___ZN12_GLOBAL__N_13logEv_block_invoke()
{

  return MEMORY[0x2821F96F8]();
}

_anonymous_namespace_ *vp::GetRequestedChatFlavorForBundleID(vp *this, const applesauce::CF::StringRef *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  if (!this)
    v4 = {;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v9[0]) = 0;
      v5 = "AUVoiceIO can't get requested ChatFlavor for null bundleID";
      v6 = v4;
      v7 = 2;
      goto LABEL_9;
    }

LABEL_6:

    return 0;
  }

  v2 = AVAUVoiceIOGetPreferredChatFlavorForBundleID();
  v3 = v2;
  if (v2 >= 3)
    v4 = {;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v9[0] = 67109120;
      v9[1] = v3;
      v5 = "Unknown AVAUVoiceIOChatFlavor - %d. Return Default VP chat flavor instead";
      v6 = v4;
      v7 = 8;
LABEL_9:
      _os_log_error_impl(&dword_2724B4000, v6, OS_LOG_TYPE_ERROR, v5, v9, v7);
      goto LABEL_6;
    }

    goto LABEL_6;
  }

  return v3;
}

void sub_272521A70(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void vp::SetActiveChatFlavorForBundleID(_anonymous_namespace_ *a1, uint64_t a2)
{
  if (a2)
  {
    AVAUVoiceIOSetActiveChatFlavorForBundleID();
  }

  else
    v2 = {;
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *v3 = 0;
      _os_log_error_impl(&dword_2724B4000, v2, OS_LOG_TYPE_ERROR, "AUVoiceIO can't set active ChatFlavor  for null bundleID", v3, 2u);
    }
  }
}

void vp::SetSupportedChatFlavorsForBundleID(vp *this, const applesauce::CF::ArrayRef *a2, const applesauce::CF::StringRef *a3)
{
  if (a2)
  {
    AVAUVoiceIOSetSupportedChatFlavorsForBundleID();
  }

  else
    v3 = {;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *v4 = 0;
      _os_log_error_impl(&dword_2724B4000, v3, OS_LOG_TYPE_ERROR, "AUVoiceIO can't set suported ChatFlavors for null bundleID", v4, 2u);
    }
  }
}

uint64_t vp::IsAutomaticChatFlavorEnabledForBundleID(vp *this, const applesauce::CF::StringRef *a2)
{
  if (*this)
  {
    result = isAutomaticMicModeFeatureFlagOn();
    if (result)
    {
      return AVAUVoiceIOIsAutoChatFlavorEnabledForBundleID();
    }
  }

  else
    v3 = {;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *v4 = 0;
      _os_log_error_impl(&dword_2724B4000, v3, OS_LOG_TYPE_ERROR, "AUVoiceIO can't get automaic chat flavor update for null bundleID", v4, 2u);
    }

    return 0;
  }

  return result;
}

void VoiceProcessorV2::ReadDefaultsOverride(const __CFString *this, const __CFString *a2, float *a3, char *a4, unsigned __int8 *a5)
{
  v7 = a2;
  CFRetain(@"com.apple.coreaudio");
  CFPreferencesAppSynchronize(@"com.apple.coreaudio");
  v20[0] = 0;
  CFRetain(@"com.apple.coreaudio");
  if (v7 <= 1)
  {
    if (v7)
    {
      goto LABEL_19;
    }

    AppBooleanValue = CACFPreferencesGetAppBooleanValue(this, v20, v9);
    v14 = v20[0];
    if (a3 && v20[0])
    {
      *a3 = AppBooleanValue;
      if (!a4)
      {
        return;
      }

      goto LABEL_25;
    }

LABEL_24:
    if (!a4)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    v15 = CFPreferencesCopyAppValue(this, @"com.apple.coreaudio");
    v17 = CASmartPreferences::InterpretFloat(v15, v20, v16);
    if (v15)
    {
      CFRelease(v15);
    }

    v14 = v20[0];
    if (a3 && v20[0])
    {
      v18 = v17;
      *a3 = v18;
      if (!a4)
      {
        return;
      }

      goto LABEL_25;
    }

    goto LABEL_24;
  }

  if (v7 == 3)
  {
LABEL_19:
    AppIntegerValue = CACFPreferencesGetAppIntegerValue(this, @"com.apple.coreaudio", v20);
    v14 = v20[0];
    if (a3 && v20[0])
    {
      *a3 = AppIntegerValue;
      if (!a4)
      {
        return;
      }

      goto LABEL_25;
    }

    goto LABEL_24;
  }

  v10 = CFPreferencesCopyAppValue(this, @"com.apple.coreaudio");
  if (!v10 || (v11 = v10, v12 = CFGetTypeID(v10), v12 != CFArrayGetTypeID()))
  {
    v14 = 0;
    goto LABEL_24;
  }

  if (a3)
  {
    *a3 = v11;
  }

  else
  {
    CFRelease(v11);
  }

  v14 = 1;
  if (a4)
  {
LABEL_25:
    *a4 = v14;
  }
}

void VoiceProcessorV2::ReadAndApplyDefaultsOverride(VoiceProcessorV2 *this, const __CFString *a2, int a3, float *a4, unsigned __int8 *a5)
{
  v51 = *MEMORY[0x277D85DE8];
  v41 = 0;
  if (a4)
  {
    v8 = this + 12288;
    if (a3 == 2)
    {
      v40 = 0.0;
      VoiceProcessorV2::ReadDefaultsOverride(a2, 2, &v40, &v41, a5);
      if (v41)
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v18 = VPLogScope(void)::scope;
        if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
        {
          v19 = (*v18 ? *v18 : MEMORY[0x277D86220]);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
          {
            SystemEncoding = CFStringGetSystemEncoding();
            CStringPtr = CFStringGetCStringPtr(a2, SystemEncoding);
            v22 = *a4;
            *buf = 136316162;
            v43 = "vpDebug_DefaultsOverride.cpp";
            v44 = 1024;
            v45 = 124;
            v46 = 2080;
            v47 = CStringPtr;
            v48 = 2048;
            *v49 = v22;
            *&v49[8] = 2048;
            v50 = v40;
            _os_log_impl(&dword_2724B4000, v19, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> DEFAULTS OVERRIDE (%s): %f -> %f", buf, 0x30u);
          }
        }

        v23 = *(this + 1588);
        if (v23 && ((v8[3593] & 1) != 0 || v8[3594] == 1))
        {
          if (VPLogScope(void)::once != -1)
          {
            dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
          }

          v24 = VPLogScope(void)::scope;
          v25 = CFStringGetSystemEncoding();
          v26 = CFStringGetCStringPtr(a2, v25);
          CALegacyLog::log(v23, 5, v24, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpDebug_DefaultsOverride.cpp", 124, "ReadAndApplyDefaultsOverride", "DEFAULTS OVERRIDE (%s): %f -> %f", v26, *a4, v40);
        }

        *a4 = v40;
      }
    }

    else if (a3 == 1)
    {
      v40 = 0.0;
      VoiceProcessorV2::ReadDefaultsOverride(a2, 1, &v40, &v41, a5);
      if (v41)
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v9 = VPLogScope(void)::scope;
        if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
        {
          v10 = (*v9 ? *v9 : MEMORY[0x277D86220]);
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
          {
            v11 = CFStringGetSystemEncoding();
            v12 = CFStringGetCStringPtr(a2, v11);
            v13 = *a4;
            *buf = 136316162;
            v43 = "vpDebug_DefaultsOverride.cpp";
            v44 = 1024;
            v45 = 108;
            v46 = 2080;
            v47 = v12;
            v48 = 1024;
            *v49 = v13;
            *&v49[4] = 1024;
            *&v49[6] = v40;
            _os_log_impl(&dword_2724B4000, v10, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> DEFAULTS OVERRIDE (%s): %d -> %d", buf, 0x28u);
          }
        }

        v14 = *(this + 1588);
        if (v14 && ((v8[3593] & 1) != 0 || v8[3594] == 1))
        {
          if (VPLogScope(void)::once != -1)
          {
            dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
          }

          v15 = VPLogScope(void)::scope;
          v16 = CFStringGetSystemEncoding();
          v17 = CFStringGetCStringPtr(a2, v16);
          CALegacyLog::log(v14, 5, v15, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpDebug_DefaultsOverride.cpp", 108, "ReadAndApplyDefaultsOverride", "DEFAULTS OVERRIDE (%s): %d -> %d", v17, *a4, LODWORD(v40));
        }

        *a4 = v40;
      }
    }

    else
    {
      LOBYTE(v40) = 0;
      VoiceProcessorV2::ReadDefaultsOverride(a2, 0, &v40, &v41, a5);
      if (v41)
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v27 = VPLogScope(void)::scope;
        if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
        {
          v28 = (*v27 ? *v27 : MEMORY[0x277D86220]);
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
          {
            v29 = CFStringGetSystemEncoding();
            v30 = CFStringGetCStringPtr(a2, v29);
            v31 = *a4;
            v32 = "TRUE";
            v43 = "vpDebug_DefaultsOverride.cpp";
            v44 = 1024;
            if (v31)
            {
              v33 = "TRUE";
            }

            else
            {
              v33 = "FALSE";
            }

            *buf = 136316162;
            v45 = 100;
            if (!LOBYTE(v40))
            {
              v32 = "FALSE";
            }

            v46 = 2080;
            v47 = v30;
            v48 = 2080;
            *v49 = v33;
            *&v49[8] = 2080;
            v50 = *&v32;
            _os_log_impl(&dword_2724B4000, v28, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> DEFAULTS OVERRIDE (%s): %s -> %s", buf, 0x30u);
          }
        }

        v34 = *(this + 1588);
        if (v34 && ((v8[3593] & 1) != 0 || v8[3594] == 1))
        {
          if (VPLogScope(void)::once != -1)
          {
            dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
          }

          v35 = VPLogScope(void)::scope;
          v36 = CFStringGetSystemEncoding();
          v37 = CFStringGetCStringPtr(a2, v36);
          v38 = "TRUE";
          if (*a4)
          {
            v39 = "TRUE";
          }

          else
          {
            v39 = "FALSE";
          }

          if (!LOBYTE(v40))
          {
            v38 = "FALSE";
          }

          CALegacyLog::log(v34, 5, v35, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpDebug_DefaultsOverride.cpp", 100, "ReadAndApplyDefaultsOverride", "DEFAULTS OVERRIDE (%s): %s -> %s", v37, v39, v38);
        }

        *a4 = LOBYTE(v40);
      }
    }
  }
}

void std::vector<float>::reserve(void *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 2)
  {
    if (!(a2 >> 62))
    {
      std::allocator<float>::allocate_at_least[abi:ne200100](a2);
    }

    std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
  }
}

void VoiceProcessorV2::OpenSignalInjectionFiles(VoiceProcessorV2 *this, int a2)
{
  v160[2] = *MEMORY[0x277D85DE8];
  memset(&__p, 0, sizeof(__p));
  memset(&v153, 0, sizeof(v153));
  memset(&v152, 0, sizeof(v152));
  std::string::append[abi:ne200100]<char const*,0>(&v152, "/tmp/", "");
  v3 = 0;
  v4 = 0;
  v139 = this + 15336;
  v140 = this + 15536;
  do
  {
    v5 = 1 << v3;
    if (((1 << v3) & *(this + 3832)) == 0 && (v5 & *(this + 3882)) == 0)
    {
      goto LABEL_263;
    }

    if (a2)
    {
      if (v3 > 0xB || ((1 << v3) & 0xC07) == 0)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v6 = *(this + 1135);
      if (v6 == 1)
      {
        if (v3 < 4 || (v3 & 0xE) == 0xA)
        {
LABEL_15:
          if (((1 << v3) & *(this + 3832)) == 0)
          {
            goto LABEL_263;
          }

          inExtAudioFile = 0;
          VoiceProcessorV2::GetSignalInjectionOrAdditionClientFormatForIndex(&v150, this, v3);
          CAX4CCStringNoQuote::CAX4CCStringNoQuote(v158, **(this + 294));
          std::string::basic_string[abi:ne200100]<0>(&v144, v158);
          v7 = std::string::insert(&v144, 0, "vp.inject.", 0xAuLL);
          v8 = *&v7->__r_.__value_.__l.__data_;
          v145.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
          *&v145.__r_.__value_.__l.__data_ = v8;
          v7->__r_.__value_.__l.__size_ = 0;
          v7->__r_.__value_.__r.__words[2] = 0;
          v7->__r_.__value_.__r.__words[0] = 0;
          v9 = std::string::append(&v145, ".", 1uLL);
          v10 = *&v9->__r_.__value_.__l.__data_;
          v146.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
          *&v146.__r_.__value_.__l.__data_ = v10;
          v9->__r_.__value_.__l.__size_ = 0;
          v9->__r_.__value_.__r.__words[2] = 0;
          v9->__r_.__value_.__r.__words[0] = 0;
          CAX4CCStringNoQuote::CAX4CCStringNoQuote(__s, **(this + 297));
          v12 = strlen(v11);
          v13 = std::string::append(&v146, __s, v12);
          v14 = *&v13->__r_.__value_.__l.__data_;
          v159.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
          *&v159.__r_.__value_.__l.__data_ = v14;
          v13->__r_.__value_.__l.__size_ = 0;
          v13->__r_.__value_.__r.__words[2] = 0;
          v13->__r_.__value_.__r.__words[0] = 0;
          v15 = std::string::append(&v159, ".", 1uLL);
          v16 = *&v15->__r_.__value_.__l.__data_;
          v147.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
          *&v147.__r_.__value_.__l.__data_ = v16;
          v15->__r_.__value_.__l.__size_ = 0;
          v15->__r_.__value_.__r.__words[2] = 0;
          v15->__r_.__value_.__r.__words[0] = 0;
          v17 = 12;
          v18 = &kVPInjectionAndAdditionFileIndexToCodeArray;
          while (v3 != *v18)
          {
            v18 += 4;
            if (!--v17)
            {
              v19 = "badinjectionfile";
              goto LABEL_21;
            }
          }

          v19 = *(v18 + 1);
LABEL_21:
          std::string::basic_string[abi:ne200100]<0>(v142, v19);
          if ((v143 & 0x80u) == 0)
          {
            v20 = v142;
          }

          else
          {
            v20 = v142[0];
          }

          if ((v143 & 0x80u) == 0)
          {
            v21 = v143;
          }

          else
          {
            v21 = v142[1];
          }

          v22 = std::string::append(&v147, v20, v21);
          v23 = *&v22->__r_.__value_.__l.__data_;
          v148.__r_.__value_.__r.__words[2] = v22->__r_.__value_.__r.__words[2];
          *&v148.__r_.__value_.__l.__data_ = v23;
          v22->__r_.__value_.__l.__size_ = 0;
          v22->__r_.__value_.__r.__words[2] = 0;
          v22->__r_.__value_.__r.__words[0] = 0;
          v24 = std::string::append(&v148, ".wav", 4uLL);
          v25 = v24->__r_.__value_.__r.__words[0];
          v160[0] = v24->__r_.__value_.__l.__size_;
          *(v160 + 7) = *(&v24->__r_.__value_.__r.__words[1] + 7);
          v26 = HIBYTE(v24->__r_.__value_.__r.__words[2]);
          v24->__r_.__value_.__l.__size_ = 0;
          v24->__r_.__value_.__r.__words[2] = 0;
          v24->__r_.__value_.__r.__words[0] = 0;
          ioNumberFrames.__pn_.__r_.__value_.__r.__words[0] = v25;
          *(&ioNumberFrames.__pn_.__r_.__value_.__r.__words[1] + 7) = *(v160 + 7);
          ioNumberFrames.__pn_.__r_.__value_.__l.__size_ = v160[0];
          *(&ioNumberFrames.__pn_.__r_.__value_.__s + 23) = v26;
          v160[0] = 0;
          *(v160 + 7) = 0;
          std::__fs::filesystem::operator/[abi:ne200100](buf, &v152, &ioNumberFrames);
          if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__pn_.__r_.__value_.__l.__data_);
          }

          __p = *buf;
          buf[23] = 0;
          buf[0] = 0;
          if (SHIBYTE(ioNumberFrames.__pn_.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(ioNumberFrames.__pn_.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v148.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v148.__r_.__value_.__l.__data_);
          }

          if (v143 < 0)
          {
            operator delete(v142[0]);
          }

          if (SHIBYTE(v147.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v147.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v159.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v159.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v146.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v146.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v145.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v145.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v144.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v144.__r_.__value_.__l.__data_);
          }

          if (VPLogScope(void)::once != -1)
          {
            dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
          }

          v27 = VPLogScope(void)::scope;
          if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
          {
            v28 = (*v27 ? *v27 : MEMORY[0x277D86220]);
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
            {
              p_p = &__p;
              if ((__p.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                p_p = __p.__pn_.__r_.__value_.__r.__words[0];
              }

              *buf = 136315650;
              *&buf[4] = "vpDebug_FileInjection.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 263;
              *&buf[18] = 2080;
              *&buf[20] = p_p;
              _os_log_impl(&dword_2724B4000, v28, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> opening route-specific injection file %s", buf, 0x1Cu);
            }
          }

          v30 = *(this + 1588);
          if (v30 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
          {
            if (VPLogScope(void)::once != -1)
            {
              dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
            }

            v31 = &__p;
            if ((__p.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v31 = __p.__pn_.__r_.__value_.__r.__words[0];
            }

            CALegacyLog::log(v30, 5, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpDebug_FileInjection.cpp", 263, "OpenSignalInjectionFiles", "opening route-specific injection file %s", v31);
          }

          vp::Audio_File::open_for_reading(buf, &__p, &v150);
          v32 = inExtAudioFile;
          inExtAudioFile = *buf;
          *buf = v32;
          vp::Audio_File::~Audio_File(buf);
          if (!inExtAudioFile)
          {
            if (VPLogScope(void)::once != -1)
            {
              dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
            }

            v33 = VPLogScope(void)::scope;
            if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
            {
              v34 = (*v33 ? *v33 : MEMORY[0x277D86220]);
              if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
              {
                v35 = &__p;
                if ((__p.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  v35 = __p.__pn_.__r_.__value_.__r.__words[0];
                }

                *buf = 136315650;
                *&buf[4] = "vpDebug_FileInjection.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 266;
                *&buf[18] = 2080;
                *&buf[20] = v35;
                _os_log_impl(&dword_2724B4000, v34, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> error opening injection file %s", buf, 0x1Cu);
              }
            }

            v36 = *(this + 1588);
            if (v36 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
            {
              if (VPLogScope(void)::once != -1)
              {
                dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
              }

              v37 = &__p;
              if ((__p.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                v37 = __p.__pn_.__r_.__value_.__r.__words[0];
              }

              CALegacyLog::log(v36, 5, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpDebug_FileInjection.cpp", 266, "OpenSignalInjectionFiles", "error opening injection file %s", v37);
            }

            if (!inExtAudioFile)
            {
              v38 = 12;
              v39 = &kVPInjectionAndAdditionFileIndexToCodeArray;
              while (v3 != *v39)
              {
                v39 += 4;
                if (!--v38)
                {
                  v40 = "badinjectionfile";
                  goto LABEL_90;
                }
              }

              v40 = *(v39 + 1);
LABEL_90:
              std::string::basic_string[abi:ne200100]<0>(&v147, v40);
              v41 = std::string::insert(&v147, 0, "vp.inject.", 0xAuLL);
              v42 = *&v41->__r_.__value_.__l.__data_;
              v148.__r_.__value_.__r.__words[2] = v41->__r_.__value_.__r.__words[2];
              *&v148.__r_.__value_.__l.__data_ = v42;
              v41->__r_.__value_.__l.__size_ = 0;
              v41->__r_.__value_.__r.__words[2] = 0;
              v41->__r_.__value_.__r.__words[0] = 0;
              v43 = std::string::append(&v148, ".wav", 4uLL);
              v44 = v43->__r_.__value_.__r.__words[0];
              v159.__r_.__value_.__r.__words[0] = v43->__r_.__value_.__l.__size_;
              *(v159.__r_.__value_.__r.__words + 7) = *(&v43->__r_.__value_.__r.__words[1] + 7);
              v45 = HIBYTE(v43->__r_.__value_.__r.__words[2]);
              v43->__r_.__value_.__l.__size_ = 0;
              v43->__r_.__value_.__r.__words[2] = 0;
              v43->__r_.__value_.__r.__words[0] = 0;
              ioNumberFrames.__pn_.__r_.__value_.__r.__words[0] = v44;
              *(&ioNumberFrames.__pn_.__r_.__value_.__r.__words[1] + 7) = *(v159.__r_.__value_.__r.__words + 7);
              ioNumberFrames.__pn_.__r_.__value_.__l.__size_ = v159.__r_.__value_.__r.__words[0];
              *(&ioNumberFrames.__pn_.__r_.__value_.__s + 23) = v45;
              std::__fs::filesystem::operator/[abi:ne200100](buf, &v152, &ioNumberFrames);
              if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__pn_.__r_.__value_.__l.__data_);
              }

              __p = *buf;
              buf[23] = 0;
              buf[0] = 0;
              if (SHIBYTE(ioNumberFrames.__pn_.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(ioNumberFrames.__pn_.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v148.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v148.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v147.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v147.__r_.__value_.__l.__data_);
              }

              if (VPLogScope(void)::once != -1)
              {
                dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
              }

              v46 = VPLogScope(void)::scope;
              if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
              {
                v47 = (*v46 ? *v46 : MEMORY[0x277D86220]);
                if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
                {
                  v48 = &__p;
                  if ((__p.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                  {
                    v48 = __p.__pn_.__r_.__value_.__r.__words[0];
                  }

                  *buf = 136315650;
                  *&buf[4] = "vpDebug_FileInjection.cpp";
                  *&buf[12] = 1024;
                  *&buf[14] = 286;
                  *&buf[18] = 2080;
                  *&buf[20] = v48;
                  _os_log_impl(&dword_2724B4000, v47, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> opening generic injection file %s", buf, 0x1Cu);
                }
              }

              v49 = *(this + 1588);
              if (v49 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
              {
                if (VPLogScope(void)::once != -1)
                {
                  dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                }

                v50 = &__p;
                if ((__p.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  v50 = __p.__pn_.__r_.__value_.__r.__words[0];
                }

                CALegacyLog::log(v49, 5, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpDebug_FileInjection.cpp", 286, "OpenSignalInjectionFiles", "opening generic injection file %s", v50);
              }

              vp::Audio_File::open_for_reading(buf, &__p, &v150);
              v51 = inExtAudioFile;
              inExtAudioFile = *buf;
              *buf = v51;
              vp::Audio_File::~Audio_File(buf);
              if (!inExtAudioFile)
              {
                if (VPLogScope(void)::once != -1)
                {
                  dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                }

                v52 = VPLogScope(void)::scope;
                if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
                {
                  v53 = (*v52 ? *v52 : MEMORY[0x277D86220]);
                  if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
                  {
                    v54 = &__p;
                    if ((__p.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                    {
                      v54 = __p.__pn_.__r_.__value_.__r.__words[0];
                    }

                    *buf = 136315650;
                    *&buf[4] = "vpDebug_FileInjection.cpp";
                    *&buf[12] = 1024;
                    *&buf[14] = 289;
                    *&buf[18] = 2080;
                    *&buf[20] = v54;
                    _os_log_impl(&dword_2724B4000, v53, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> error opening injection file %s", buf, 0x1Cu);
                  }
                }

                v55 = *(this + 1588);
                if (v55 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
                {
                  if (VPLogScope(void)::once != -1)
                  {
                    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                  }

                  v56 = &__p;
                  if ((__p.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                  {
                    v56 = __p.__pn_.__r_.__value_.__r.__words[0];
                  }

                  CALegacyLog::log(v55, 5, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpDebug_FileInjection.cpp", 289, "OpenSignalInjectionFiles", "error opening injection file %s", v56);
                }

                if (!inExtAudioFile)
                {
                  v57 = 12;
                  v58 = &kVPInjectionAndAdditionFileIndexToCodeArray;
                  while (v3 != *v58)
                  {
                    v58 += 4;
                    if (!--v57)
                    {
                      v59 = "badinjectionfile";
                      goto LABEL_143;
                    }
                  }

                  v59 = *(v58 + 1);
LABEL_143:
                  std::string::basic_string[abi:ne200100]<0>(&v147, v59);
                  v60 = std::string::insert(&v147, 0, "iiii.000.", 9uLL);
                  v61 = *&v60->__r_.__value_.__l.__data_;
                  v148.__r_.__value_.__r.__words[2] = v60->__r_.__value_.__r.__words[2];
                  *&v148.__r_.__value_.__l.__data_ = v61;
                  v60->__r_.__value_.__l.__size_ = 0;
                  v60->__r_.__value_.__r.__words[2] = 0;
                  v60->__r_.__value_.__r.__words[0] = 0;
                  v62 = std::string::append(&v148, ".wav", 4uLL);
                  v63 = v62->__r_.__value_.__r.__words[0];
                  v159.__r_.__value_.__r.__words[0] = v62->__r_.__value_.__l.__size_;
                  *(v159.__r_.__value_.__r.__words + 7) = *(&v62->__r_.__value_.__r.__words[1] + 7);
                  v64 = HIBYTE(v62->__r_.__value_.__r.__words[2]);
                  v62->__r_.__value_.__l.__size_ = 0;
                  v62->__r_.__value_.__r.__words[2] = 0;
                  v62->__r_.__value_.__r.__words[0] = 0;
                  ioNumberFrames.__pn_.__r_.__value_.__r.__words[0] = v63;
                  *(&ioNumberFrames.__pn_.__r_.__value_.__r.__words[1] + 7) = *(v159.__r_.__value_.__r.__words + 7);
                  ioNumberFrames.__pn_.__r_.__value_.__l.__size_ = v159.__r_.__value_.__r.__words[0];
                  *(&ioNumberFrames.__pn_.__r_.__value_.__s + 23) = v64;
                  std::__fs::filesystem::operator/[abi:ne200100](buf, &v152, &ioNumberFrames);
                  if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(__p.__pn_.__r_.__value_.__l.__data_);
                  }

                  __p = *buf;
                  buf[23] = 0;
                  buf[0] = 0;
                  if (SHIBYTE(ioNumberFrames.__pn_.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(ioNumberFrames.__pn_.__r_.__value_.__l.__data_);
                  }

                  if (SHIBYTE(v148.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v148.__r_.__value_.__l.__data_);
                  }

                  if (SHIBYTE(v147.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v147.__r_.__value_.__l.__data_);
                  }

                  if (VPLogScope(void)::once != -1)
                  {
                    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                  }

                  v65 = VPLogScope(void)::scope;
                  if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
                  {
                    v66 = (*v65 ? *v65 : MEMORY[0x277D86220]);
                    if (os_log_type_enabled(v66, OS_LOG_TYPE_DEBUG))
                    {
                      v67 = &__p;
                      if ((__p.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                      {
                        v67 = __p.__pn_.__r_.__value_.__r.__words[0];
                      }

                      *buf = 136315650;
                      *&buf[4] = "vpDebug_FileInjection.cpp";
                      *&buf[12] = 1024;
                      *&buf[14] = 310;
                      *&buf[18] = 2080;
                      *&buf[20] = v67;
                      _os_log_impl(&dword_2724B4000, v66, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> opening injection file %s", buf, 0x1Cu);
                    }
                  }

                  v68 = *(this + 1588);
                  if (v68 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
                  {
                    if (VPLogScope(void)::once != -1)
                    {
                      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                    }

                    v69 = &__p;
                    if ((__p.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                    {
                      v69 = __p.__pn_.__r_.__value_.__r.__words[0];
                    }

                    CALegacyLog::log(v68, 5, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpDebug_FileInjection.cpp", 310, "OpenSignalInjectionFiles", "opening injection file %s", v69);
                  }

                  vp::Audio_File::open_for_reading(buf, &__p, &v150);
                  v70 = inExtAudioFile;
                  inExtAudioFile = *buf;
                  *buf = v70;
                  vp::Audio_File::~Audio_File(buf);
                  if (!inExtAudioFile)
                  {
                    if (VPLogScope(void)::once != -1)
                    {
                      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                    }

                    v71 = VPLogScope(void)::scope;
                    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
                    {
                      v72 = (*v71 ? *v71 : MEMORY[0x277D86220]);
                      if (os_log_type_enabled(v72, OS_LOG_TYPE_DEBUG))
                      {
                        v73 = &__p;
                        if ((__p.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                        {
                          v73 = __p.__pn_.__r_.__value_.__r.__words[0];
                        }

                        *buf = 136315650;
                        *&buf[4] = "vpDebug_FileInjection.cpp";
                        *&buf[12] = 1024;
                        *&buf[14] = 313;
                        *&buf[18] = 2080;
                        *&buf[20] = v73;
                        _os_log_impl(&dword_2724B4000, v72, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> error opening injection file %s", buf, 0x1Cu);
                      }
                    }

                    v74 = *(this + 1588);
                    if (v74 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
                    {
                      if (VPLogScope(void)::once != -1)
                      {
                        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                      }

                      v75 = &__p;
                      if ((__p.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                      {
                        v75 = __p.__pn_.__r_.__value_.__r.__words[0];
                      }

                      CALegacyLog::log(v74, 5, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpDebug_FileInjection.cpp", 313, "OpenSignalInjectionFiles", "error opening injection file %s", v75);
                    }

                    if (!inExtAudioFile)
                    {
                      if (VPLogScope(void)::once != -1)
                      {
                        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                      }

                      v133 = VPLogScope(void)::scope;
                      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
                      {
                        v134 = (*v133 ? *v133 : MEMORY[0x277D86220]);
                        if (os_log_type_enabled(v134, OS_LOG_TYPE_ERROR))
                        {
                          v135 = &__p;
                          if ((__p.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                          {
                            v135 = __p.__pn_.__r_.__value_.__r.__words[0];
                          }

                          *buf = 136315906;
                          *&buf[4] = "vpDebug_FileInjection.cpp";
                          *&buf[12] = 1024;
                          *&buf[14] = 341;
                          *&buf[18] = 1024;
                          *&buf[20] = v4;
                          *&buf[24] = 2080;
                          *&buf[26] = v135;
                          _os_log_impl(&dword_2724B4000, v134, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> error %d opening injection file %s, will use original (not injected) signal", buf, 0x22u);
                        }
                      }

                      v136 = *(this + 1588);
                      if (v136 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
                      {
                        if (VPLogScope(void)::once != -1)
                        {
                          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                        }

                        v137 = &__p;
                        if ((__p.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                        {
                          v137 = __p.__pn_.__r_.__value_.__r.__words[0];
                        }

                        CALegacyLog::log(v136, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpDebug_FileInjection.cpp", 341, "OpenSignalInjectionFiles", "error %d opening injection file %s, will use original (not injected) signal", v4, v137);
                      }

                      v138 = &v139[16 * v3];
                      if (*v138)
                      {
                        myFreeABLDynamic(&v139[16 * v3]);
                        *v138 = 0;
                      }

                      *(v138 + 1) = 0;
                      goto LABEL_262;
                    }
                  }
                }
              }
            }
          }

          vp::Audio_File::get_property<CA::StreamDescription,(decltype(nullptr))0>(buf, &inExtAudioFile);
          caulk::expected<CA::StreamDescription,int>::value(buf);
          v76 = *buf;
          v77 = vp::Audio_File::get_property<long long,(decltype(nullptr))0>(&inExtAudioFile);
          v78 = &v139[16 * v3];
          if (v79)
          {
            if (v150.mSampleRate == v76)
            {
              if (HIDWORD(v77))
              {
                if (v77 <= 0)
                {
                  LODWORD(v77) = 0;
                }

                else
                {
                  LODWORD(v77) = -1;
                }
              }

LABEL_219:
              *(v78 + 3) = v77;
              if (!v4)
              {
LABEL_220:
                v85 = *(v78 + 3);
                if (v85)
                {
                  LODWORD(ioNumberFrames.__pn_.__r_.__value_.__l.__data_) = *(v78 + 3);
                  myAllocABLDynamic(&v150, v85, v78);
                  v4 = ExtAudioFileRead(inExtAudioFile, &ioNumberFrames, *v78);
                  if (v4 || *(v78 + 3) != LODWORD(ioNumberFrames.__pn_.__r_.__value_.__l.__data_))
                  {
                    if (VPLogScope(void)::once != -1)
                    {
                      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                    }

                    v86 = VPLogScope(void)::scope;
                    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
                    {
                      v87 = (*v86 ? *v86 : MEMORY[0x277D86220]);
                      if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
                      {
                        v88 = &__p;
                        if ((__p.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                        {
                          v88 = __p.__pn_.__r_.__value_.__r.__words[0];
                        }

                        v89 = *(v78 + 3);
                        *buf = 136316418;
                        *&buf[4] = "vpDebug_FileInjection.cpp";
                        *&buf[12] = 1024;
                        *&buf[14] = 335;
                        *&buf[18] = 2080;
                        *&buf[20] = v88;
                        *&buf[28] = 1024;
                        *&buf[30] = v4;
                        *&buf[34] = 1024;
                        *&buf[36] = v89;
                        LOWORD(mSampleRate) = 1024;
                        *(&mSampleRate + 2) = ioNumberFrames.__pn_.__r_.__value_.__l.__data_;
                        _os_log_impl(&dword_2724B4000, v87, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> error reading file %s [err=%d, frames to read=%u, num frames read=%d]", buf, 0x2Eu);
                      }
                    }

                    v90 = *(this + 1588);
                    if (v90 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
                    {
                      if (VPLogScope(void)::once != -1)
                      {
                        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                      }

                      v91 = &__p;
                      if ((__p.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                      {
                        v91 = __p.__pn_.__r_.__value_.__r.__words[0];
                      }

                      CALegacyLog::log(v90, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpDebug_FileInjection.cpp", 335, "OpenSignalInjectionFiles", "error reading file %s [err=%d, frames to read=%u, num frames read=%d]", v91, v4, *(v78 + 3), LODWORD(ioNumberFrames.__pn_.__r_.__value_.__l.__data_));
                    }

                    *(v78 + 3) = ioNumberFrames.__pn_.__r_.__value_.__l.__data_;
                  }

                  goto LABEL_262;
                }
              }

LABEL_243:
              if (VPLogScope(void)::once != -1)
              {
                dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
              }

              v92 = VPLogScope(void)::scope;
              if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
              {
                v93 = (*v92 ? *v92 : MEMORY[0x277D86220]);
                if (os_log_type_enabled(v93, OS_LOG_TYPE_DEBUG))
                {
                  v94 = &__p;
                  if ((__p.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                  {
                    v94 = __p.__pn_.__r_.__value_.__r.__words[0];
                  }

                  v95 = *(v78 + 3);
                  *buf = 136316162;
                  *&buf[4] = "vpDebug_FileInjection.cpp";
                  *&buf[12] = 1024;
                  *&buf[14] = 339;
                  *&buf[18] = 1024;
                  *&buf[20] = v4;
                  *&buf[24] = 2080;
                  *&buf[26] = v94;
                  *&buf[34] = 1024;
                  *&buf[36] = v95;
                  _os_log_impl(&dword_2724B4000, v93, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> error %d getting length of injection file %s, length %d", buf, 0x28u);
                }
              }

              v96 = *(this + 1588);
              if (v96 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
              {
                if (VPLogScope(void)::once != -1)
                {
                  dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                }

                v97 = &__p;
                if ((__p.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  v97 = __p.__pn_.__r_.__value_.__r.__words[0];
                }

                CALegacyLog::log(v96, 5, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpDebug_FileInjection.cpp", 339, "OpenSignalInjectionFiles", "error %d getting length of injection file %s, length %d", v4, v97, *(v78 + 3));
              }

LABEL_262:
              vp::Audio_File::~Audio_File(&inExtAudioFile);
LABEL_263:
              if ((v5 & *(this + 3882)) == 0)
              {
                goto LABEL_373;
              }

              VoiceProcessorV2::GetSignalInjectionOrAdditionClientFormatForIndex(&v150, this, v3);
              v98 = 12;
              v99 = &kVPInjectionAndAdditionFileIndexToCodeArray;
              while (v3 != *v99)
              {
                v99 += 4;
                if (!--v98)
                {
                  v100 = "badinjectionfile";
                  goto LABEL_269;
                }
              }

              v100 = *(v99 + 1);
LABEL_269:
              std::string::basic_string[abi:ne200100]<0>(&v147, v100);
              v101 = std::string::insert(&v147, 0, "aaaa.000.", 9uLL);
              v102 = *&v101->__r_.__value_.__l.__data_;
              v148.__r_.__value_.__r.__words[2] = v101->__r_.__value_.__r.__words[2];
              *&v148.__r_.__value_.__l.__data_ = v102;
              v101->__r_.__value_.__l.__size_ = 0;
              v101->__r_.__value_.__r.__words[2] = 0;
              v101->__r_.__value_.__r.__words[0] = 0;
              v103 = std::string::append(&v148, ".wav", 4uLL);
              v104 = v103->__r_.__value_.__r.__words[0];
              v159.__r_.__value_.__r.__words[0] = v103->__r_.__value_.__l.__size_;
              *(v159.__r_.__value_.__r.__words + 7) = *(&v103->__r_.__value_.__r.__words[1] + 7);
              v105 = HIBYTE(v103->__r_.__value_.__r.__words[2]);
              v103->__r_.__value_.__l.__size_ = 0;
              v103->__r_.__value_.__r.__words[2] = 0;
              v103->__r_.__value_.__r.__words[0] = 0;
              ioNumberFrames.__pn_.__r_.__value_.__r.__words[0] = v104;
              *(&ioNumberFrames.__pn_.__r_.__value_.__r.__words[1] + 7) = *(v159.__r_.__value_.__r.__words + 7);
              ioNumberFrames.__pn_.__r_.__value_.__l.__size_ = v159.__r_.__value_.__r.__words[0];
              *(&ioNumberFrames.__pn_.__r_.__value_.__s + 23) = v105;
              std::__fs::filesystem::operator/[abi:ne200100](buf, &v152, &ioNumberFrames);
              if (SHIBYTE(v153.__pn_.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v153.__pn_.__r_.__value_.__l.__data_);
              }

              v153 = *buf;
              buf[23] = 0;
              buf[0] = 0;
              if (SHIBYTE(ioNumberFrames.__pn_.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(ioNumberFrames.__pn_.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v148.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v148.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v147.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v147.__r_.__value_.__l.__data_);
              }

              if (VPLogScope(void)::once != -1)
              {
                dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
              }

              v106 = VPLogScope(void)::scope;
              if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
              {
                v107 = (*v106 ? *v106 : MEMORY[0x277D86220]);
                if (os_log_type_enabled(v107, OS_LOG_TYPE_DEBUG))
                {
                  v108 = &v153;
                  if ((v153.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                  {
                    v108 = v153.__pn_.__r_.__value_.__r.__words[0];
                  }

                  *buf = 136315650;
                  *&buf[4] = "vpDebug_FileInjection.cpp";
                  *&buf[12] = 1024;
                  *&buf[14] = 367;
                  *&buf[18] = 2080;
                  *&buf[20] = v108;
                  _os_log_impl(&dword_2724B4000, v107, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> opening addition file %s", buf, 0x1Cu);
                }
              }

              v109 = *(this + 1588);
              if (v109 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
              {
                if (VPLogScope(void)::once != -1)
                {
                  dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                }

                v110 = &v153;
                if ((v153.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  v110 = v153.__pn_.__r_.__value_.__r.__words[0];
                }

                CALegacyLog::log(v109, 5, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpDebug_FileInjection.cpp", 367, "OpenSignalInjectionFiles", "opening addition file %s", v110);
              }

              vp::Audio_File::open_for_reading(&ioNumberFrames, &v153, &v150);
              if (!ioNumberFrames.__pn_.__r_.__value_.__r.__words[0])
              {
                if (VPLogScope(void)::once != -1)
                {
                  dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                }

                v115 = VPLogScope(void)::scope;
                if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
                {
                  v116 = (*v115 ? *v115 : MEMORY[0x277D86220]);
                  if (os_log_type_enabled(v116, OS_LOG_TYPE_ERROR))
                  {
                    v117 = &v153;
                    if ((v153.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                    {
                      v117 = v153.__pn_.__r_.__value_.__r.__words[0];
                    }

                    *buf = 136315906;
                    *&buf[4] = "vpDebug_FileInjection.cpp";
                    *&buf[12] = 1024;
                    *&buf[14] = 394;
                    *&buf[18] = 1024;
                    *&buf[20] = v4;
                    *&buf[24] = 2080;
                    *&buf[26] = v117;
                    _os_log_impl(&dword_2724B4000, v116, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> error-%d opening addition file %s, will use original (not added) signal", buf, 0x22u);
                  }
                }

                v118 = *(this + 1588);
                if (v118 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
                {
                  if (VPLogScope(void)::once != -1)
                  {
                    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                  }

                  v119 = &v153;
                  if ((v153.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                  {
                    v119 = v153.__pn_.__r_.__value_.__r.__words[0];
                  }

                  CALegacyLog::log(v118, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpDebug_FileInjection.cpp", 394, "OpenSignalInjectionFiles", "error-%d opening addition file %s, will use original (not added) signal", v4, v119);
                }

                v120 = &v140[16 * v3];
                if (*v120)
                {
                  myFreeABLDynamic(&v140[16 * v3]);
                  *v120 = 0;
                }

                *(v120 + 1) = 0;
                goto LABEL_372;
              }

              vp::Audio_File::get_property<CA::StreamDescription,(decltype(nullptr))0>(buf, &ioNumberFrames);
              caulk::expected<CA::StreamDescription,int>::value(buf);
              v111 = *buf;
              v112 = vp::Audio_File::get_property<long long,(decltype(nullptr))0>(&ioNumberFrames);
              v113 = &v140[16 * v3];
              if (v114)
              {
                if (v150.mSampleRate == v111)
                {
                  if (HIDWORD(v112))
                  {
                    if (v112 <= 0)
                    {
                      LODWORD(v112) = 0;
                    }

                    else
                    {
                      LODWORD(v112) = -1;
                    }
                  }

LABEL_347:
                  *(v113 + 3) = v112;
                  if (!v4)
                  {
LABEL_348:
                    v126 = *(v113 + 3);
                    if (v126)
                    {
                      LODWORD(v148.__r_.__value_.__l.__data_) = *(v113 + 3);
                      myAllocABLDynamic(&v150, v126, v113);
                      v4 = ExtAudioFileRead(ioNumberFrames.__pn_.__r_.__value_.__l.__data_, &v148, *v113);
                      if (v4 || *(v113 + 3) != LODWORD(v148.__r_.__value_.__l.__data_))
                      {
                        if (VPLogScope(void)::once != -1)
                        {
                          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                        }

                        v127 = VPLogScope(void)::scope;
                        if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
                        {
                          v128 = (*v127 ? *v127 : MEMORY[0x277D86220]);
                          if (os_log_type_enabled(v128, OS_LOG_TYPE_ERROR))
                          {
                            v129 = &v153;
                            if ((v153.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                            {
                              v129 = v153.__pn_.__r_.__value_.__r.__words[0];
                            }

                            v130 = *(v113 + 3);
                            *buf = 136316418;
                            *&buf[4] = "vpDebug_FileInjection.cpp";
                            *&buf[12] = 1024;
                            *&buf[14] = 389;
                            *&buf[18] = 2080;
                            *&buf[20] = v129;
                            *&buf[28] = 1024;
                            *&buf[30] = v4;
                            *&buf[34] = 1024;
                            *&buf[36] = v130;
                            LOWORD(mSampleRate) = 1024;
                            *(&mSampleRate + 2) = v148.__r_.__value_.__l.__data_;
                            _os_log_impl(&dword_2724B4000, v128, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> error reading file %s [err=%d, frames to read=%u, num frames read=%d]", buf, 0x2Eu);
                          }
                        }

                        v131 = *(this + 1588);
                        if (v131 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
                        {
                          if (VPLogScope(void)::once != -1)
                          {
                            dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                          }

                          v132 = &v153;
                          if ((v153.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                          {
                            v132 = v153.__pn_.__r_.__value_.__r.__words[0];
                          }

                          CALegacyLog::log(v131, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpDebug_FileInjection.cpp", 389, "OpenSignalInjectionFiles", "error reading file %s [err=%d, frames to read=%u, num frames read=%d]", v132, v4, *(v113 + 3), LODWORD(v148.__r_.__value_.__l.__data_));
                        }

                        *(v113 + 3) = v148.__r_.__value_.__l.__data_;
                      }
                    }

                    else
                    {
                      v4 = 0;
                    }
                  }

LABEL_372:
                  vp::Audio_File::~Audio_File(&ioNumberFrames);
                  goto LABEL_373;
                }
              }

              else
              {
                v112 = 0;
                if (v150.mSampleRate == v111)
                {
                  goto LABEL_347;
                }
              }

              *(v113 + 3) = vcvtmd_u64_f64(v150.mSampleRate * v112 / v111);
              if (VPLogScope(void)::once != -1)
              {
                dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
              }

              v121 = VPLogScope(void)::scope;
              if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
              {
                v122 = (*v121 ? *v121 : MEMORY[0x277D86220]);
                if (os_log_type_enabled(v122, OS_LOG_TYPE_DEBUG))
                {
                  v123 = &v153;
                  if ((v153.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                  {
                    v123 = v153.__pn_.__r_.__value_.__r.__words[0];
                  }

                  *buf = 136316162;
                  *&buf[4] = "vpDebug_FileInjection.cpp";
                  *&buf[12] = 1024;
                  *&buf[14] = 378;
                  *&buf[18] = 2080;
                  *&buf[20] = v123;
                  *&buf[28] = 2048;
                  *&buf[30] = v111;
                  *&buf[38] = 2048;
                  mSampleRate = v150.mSampleRate;
                  _os_log_impl(&dword_2724B4000, v122, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> addition file %s format (%.0f Hz) is not as expected (%.0f Hz), will use SRC!", buf, 0x30u);
                }
              }

              v124 = *(this + 1588);
              if (v124 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
              {
                if (VPLogScope(void)::once != -1)
                {
                  dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                }

                v125 = &v153;
                if ((v153.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  v125 = v153.__pn_.__r_.__value_.__r.__words[0];
                }

                CALegacyLog::log(v124, 5, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpDebug_FileInjection.cpp", 378, "OpenSignalInjectionFiles", "addition file %s format (%.0f Hz) is not as expected (%.0f Hz), will use SRC!", v125, v111, v150.mSampleRate);
              }

              if (!v4)
              {
                goto LABEL_348;
              }

              goto LABEL_372;
            }
          }

          else
          {
            v77 = 0;
            if (v150.mSampleRate == v76)
            {
              goto LABEL_219;
            }
          }

          *(v78 + 3) = vcvtmd_u64_f64(v150.mSampleRate * v77 / v76);
          if (VPLogScope(void)::once != -1)
          {
            dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
          }

          v80 = VPLogScope(void)::scope;
          if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
          {
            v81 = (*v80 ? *v80 : MEMORY[0x277D86220]);
            if (os_log_type_enabled(v81, OS_LOG_TYPE_DEBUG))
            {
              v82 = &__p;
              if ((__p.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                v82 = __p.__pn_.__r_.__value_.__r.__words[0];
              }

              *buf = 136316162;
              *&buf[4] = "vpDebug_FileInjection.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 324;
              *&buf[18] = 2080;
              *&buf[20] = v82;
              *&buf[28] = 2048;
              *&buf[30] = v76;
              *&buf[38] = 2048;
              mSampleRate = v150.mSampleRate;
              _os_log_impl(&dword_2724B4000, v81, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> injection file %s format (%.0f Hz) is not as expected (%.0f Hz), will use SRC!", buf, 0x30u);
            }
          }

          v83 = *(this + 1588);
          if (v83 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
          {
            if (VPLogScope(void)::once != -1)
            {
              dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
            }

            v84 = &__p;
            if ((__p.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v84 = __p.__pn_.__r_.__value_.__r.__words[0];
            }

            CALegacyLog::log(v83, 5, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpDebug_FileInjection.cpp", 324, "OpenSignalInjectionFiles", "injection file %s format (%.0f Hz) is not as expected (%.0f Hz), will use SRC!", v84, v76, v150.mSampleRate);
          }

          if (!v4)
          {
            goto LABEL_220;
          }

          goto LABEL_243;
        }
      }

      else if (v6 || v3 <= 0xB && ((1 << v3) & 0xC07) != 0)
      {
        goto LABEL_15;
      }
    }

LABEL_373:
    ++v3;
  }

  while (v3 != 12);
  if (SHIBYTE(v152.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v152.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v153.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v153.__pn_.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__pn_.__r_.__value_.__l.__data_);
  }
}

void sub_2725241C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, void *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51, uint64_t a52, void *__p, uint64_t a54, int a55, __int16 a56, char a57, char a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a58 < 0)
  {
    operator delete(__p);
  }

  if (a51 < 0)
  {
    operator delete(a46);
  }

  if (a44 < 0)
  {
    operator delete(a39);
  }

  vp::Audio_File::~Audio_File(&a64);
  if (a66 < 0)
  {
    operator delete(a65);
  }

  if (a68 < 0)
  {
    operator delete(a67);
  }

  if (a70 < 0)
  {
    operator delete(a69);
  }

  _Unwind_Resume(a1);
}

uint64_t VoiceProcessorV2::GetSignalInjectionOrAdditionClientFormatForIndex(uint64_t this, uint64_t a2, uint64_t a3)
{
  if (a3 <= 5)
  {
    if (a3 <= 2)
    {
      if ((a3 - 1) >= 2)
      {
        if (!a3)
        {
          v3 = *(a2 + 232);
          *this = *(a2 + 216);
          *(this + 16) = v3;
          v4 = *(a2 + 248);
LABEL_20:
          *(this + 32) = v4;
          return this;
        }

        goto LABEL_30;
      }

      goto LABEL_16;
    }

    if (a3 == 3)
    {
      v10 = *(a2 + 608);
      *this = *(a2 + 592);
      *(this + 16) = v10;
      v4 = *(a2 + 624);
      goto LABEL_20;
    }

    if (a3 == 4)
    {
      v6 = (a2 + 632);
      v7 = *(a2 + 664);
    }

    else
    {
      v6 = (a2 + 712);
      v7 = *(a2 + 744);
    }

LABEL_23:
    *(this + 32) = v7;
    v12 = v6[1];
    *this = *v6;
    *(this + 16) = v12;
    return this;
  }

  if (a3 <= 8)
  {
    if (a3 == 6)
    {
      v9 = *(a2 + 768);
      *this = *(a2 + 752);
      *(this + 16) = v9;
      v4 = *(a2 + 784);
      goto LABEL_20;
    }

    if (a3 != 7)
    {
      v5 = *(a2 + 848);
      *this = *(a2 + 832);
      *(this + 16) = v5;
      v4 = *(a2 + 864);
      goto LABEL_20;
    }

    v6 = (a2 + 792);
    v7 = *(a2 + 824);
    goto LABEL_23;
  }

  if (a3 == 9)
  {
    v11 = *(a2 + 1008);
    *this = *(a2 + 992);
    *(this + 16) = v11;
    v4 = *(a2 + 1024);
    goto LABEL_20;
  }

  if (a3 != 10)
  {
    if (a3 != 11)
    {
LABEL_30:
      *(this + 32) = 0;
      *this = 0u;
      *(this + 16) = 0u;
      return this;
    }

LABEL_16:
    v8 = *(a2 + 352);
    *this = *(a2 + 336);
    *(this + 16) = v8;
    v4 = *(a2 + 368);
    goto LABEL_20;
  }

  v13 = *(a2 + 348);
  v14 = *(a2 + 364);
  v15 = *(a2 + 368);
  if (v14 >= 2)
  {
    v16 = 2;
  }

  else
  {
    v16 = *(a2 + 364);
  }

  if ((v13 & 0x20) != 0)
  {
    v14 = 1;
    goto LABEL_32;
  }

  if (v14)
  {
LABEL_32:
    v17 = *(a2 + 360) / v14;
    goto LABEL_33;
  }

  v17 = (v15 + 7) >> 3;
LABEL_33:
  if ((v13 & 0x20) != 0)
  {
    v18 = 1;
  }

  else
  {
    v18 = v16;
  }

  v19 = v17 * v18;
  *this = *(a2 + 336);
  *(this + 8) = *(a2 + 344);
  *(this + 12) = v13;
  *(this + 16) = v19;
  *(this + 20) = 1;
  *(this + 24) = v19;
  *(this + 28) = v16;
  *(this + 32) = v15;
  return this;
}

void vp::Audio_File::get_property<CA::StreamDescription,(decltype(nullptr))0>(uint64_t a1, ExtAudioFileRef *a2)
{
  v10 = 0;
  *v8 = 0u;
  v9 = 0u;
  v7 = 40;
  vp::Audio_File::get_property(&v5, a2, 0x66666D74u, v8, &v7);
  if (v6)
  {
    v3 = v9;
    *a1 = *v8;
    *(a1 + 16) = v3;
    *(a1 + 32) = v10;
    v4 = 1;
  }

  else
  {
    v4 = 0;
    *a1 = v5;
  }

  *(a1 + 40) = v4;
}

uint64_t caulk::expected<CA::StreamDescription,int>::value(uint64_t result)
{
  if (*(result + 40) != 1)
  {
    v1 = result;
    exception = __cxa_allocate_exception(0x10uLL);
    v3 = *v1;
    *exception = &unk_2881C1110;
    exception[2] = v3;
  }

  return result;
}

unint64_t vp::Audio_File::get_property<long long,(decltype(nullptr))0>(ExtAudioFileRef *a1)
{
  *v7 = 0;
  v6 = 8;
  vp::Audio_File::get_property(&v4, a1, 0x2366726Du, v7, &v6);
  v1 = *v7 & 0xFFFFFFFF00000000;
  if (v5)
  {
    v2 = v7[0];
  }

  else
  {
    v2 = v4;
  }

  if (!v5)
  {
    v1 = 0;
  }

  return v1 | v2;
}

void caulk::bad_expected_access<int>::~bad_expected_access(std::exception *a1)
{
  std::exception::~exception(a1);

  JUMPOUT(0x2743CBFA0);
}

void VoiceProcessorV2::InjectionOrAdditionFilesCopyPreInjectionABL(VoiceProcessorV2 *this, AudioBufferList *a2, const AudioBufferList *a3)
{
  v4 = *this;
  if (v4 != a2->mNumberBuffers)
  {
    v11 = 1;
    if (!v4)
    {
      return;
    }

    goto LABEL_11;
  }

  if (v4)
  {
    v5 = 0;
    p_mDataByteSize = &a2->mBuffers[0].mDataByteSize;
    v7 = (this + 12);
    while (1)
    {
      v9 = *v7;
      v7 += 4;
      v8 = v9;
      v10 = *p_mDataByteSize;
      p_mDataByteSize += 4;
      if (v8 < v10)
      {
        break;
      }

      if (v4 == ++v5)
      {
        LODWORD(v5) = *this;
        break;
      }
    }
  }

  else
  {
    LODWORD(v5) = 0;
  }

  v11 = v5 != v4;
  if (v4)
  {
LABEL_11:
    v12 = 0;
    v13 = (this + 16);
    p_mData = &a2->mBuffers[0].mData;
    do
    {
      if (!v11 && *p_mData && (v15 = *(p_mData - 1), v15))
      {
        memcpy(*v13, *p_mData, v15);
      }

      else
      {
        bzero(*v13, *(v13 - 1));
      }

      ++v12;
      v13 += 2;
      p_mData += 2;
    }

    while (v12 < *this);
  }
}

uint64_t VoiceProcessorV2::InjectionFilesReadSignal(uint64_t this, uint64_t a2, unsigned int a3, AudioBufferList *a4)
{
  v7 = this;
  v8 = 1 << a2;
  v9 = this + 16 * a2;
  if (((1 << a2) & *(this + 15328)) != 0)
  {
    v10 = *(v9 + 15336);
    if (v10)
    {
      v11 = *v10;
      if (*v10 == a4->mNumberBuffers)
      {
        this = VoiceProcessorV2::GetSignalInjectionOrAdditionClientFormatForIndex(v51, this, a2);
        v12 = v52;
        v13 = v52 * a3;
        if (a4->mBuffers[0].mDataByteSize >= v13)
        {
          v50 = a3;
          v49 = v9;
          v14 = v9 + 15336;
          v15 = *(v9 + 15344);
          v16 = *(v9 + 15348);
          if (v15 >= v16)
          {
            v15 = 0;
            *(v9 + 15344) = 0;
          }

          v17 = v15 * v12;
          v18 = (v16 - v15) * v12;
          v19 = (v13 - v18);
          if (v13 <= v18)
          {
            if (v11)
            {
              v23 = 0;
              v24 = 16;
              do
              {
                this = memcpy(*(&a4->mNumberBuffers + v24), (*(*v14 + v24) + v17), v13);
                ++v23;
                v24 += 16;
              }

              while (v23 < a4->mNumberBuffers);
              v15 = *(v14 + 8);
            }

            a3 = v50;
            v22 = v15 + v50;
          }

          else
          {
            v48 = v12;
            if (v11)
            {
              v20 = 0;
              v21 = 16;
              do
              {
                memcpy(*(&a4->mNumberBuffers + v21), (*(*v14 + v21) + v17), v18);
                this = memcpy((*(&a4->mNumberBuffers + v21) + v18), *(*v14 + v21), v19);
                ++v20;
                v21 += 16;
              }

              while (v20 < a4->mNumberBuffers);
            }

            a3 = v50;
            if (!v48)
            {
              goto LABEL_38;
            }

            v22 = v19 / v48;
          }

          *(v14 + 8) = v22;
          v9 = v49;
        }
      }
    }
  }

  if ((v8 & *(v7 + 15528)) != 0)
  {
    v25 = *(v9 + 15536);
    if (v25)
    {
      v26 = *v25;
      if (*v25 == a4->mNumberBuffers)
      {
        this = VoiceProcessorV2::GetSignalInjectionOrAdditionClientFormatForIndex(v51, v7, a2);
        v27 = v52;
        v28 = v52 * a3;
        if (a4->mBuffers[0].mDataByteSize >= v52 * a3)
        {
          v29 = v9 + 15536;
          v30 = *(v9 + 15544);
          v31 = *(v9 + 15548);
          if (v30 >= v31)
          {
            v30 = 0;
            *(v9 + 15544) = 0;
          }

          v32 = v31 - v30;
          v33 = v28 - v32 * v27;
          if (v28 <= v32 * v27)
          {
            if (v26)
            {
              v40 = 0;
              v41 = v30;
              v42 = 16;
              do
              {
                this = MEMORY[0x2743CCD80](*(*v29 + v42) + 4 * v41, 1, *(&a4->mNumberBuffers + v42), 1, *(&a4->mNumberBuffers + v42), 1, a3);
                ++v40;
                v42 += 16;
              }

              while (v40 < a4->mNumberBuffers);
              v30 = *(v29 + 8);
            }

            v39 = v30 + a3;
            goto LABEL_36;
          }

          if (v26)
          {
            v34 = a3;
            v35 = 0;
            v36 = v34 - v32;
            v37 = 16;
            v38 = v30;
            do
            {
              MEMORY[0x2743CCD80](*(*v29 + v37) + 4 * v38, 1, *(&a4->mNumberBuffers + v37), 1, *(&a4->mNumberBuffers + v37), 1, v32);
              this = MEMORY[0x2743CCD80](*(*v29 + v37) + 4 * *(v29 + 8), 1, *(&a4->mNumberBuffers + v37) + 4 * v32, 1, *(&a4->mNumberBuffers + v37), 1, v36);
              ++v35;
              v37 += 16;
            }

            while (v35 < a4->mNumberBuffers);
          }

          if (v27)
          {
            v39 = v33 / v27;
LABEL_36:
            *(v29 + 8) = v39;
            return this;
          }

LABEL_38:
          v43 = CAVerboseAbort();
          return VoiceProcessorV2::SaveFilesWriteSignal(v43, v44, v45, v46, v47);
        }
      }
    }
  }

  return this;
}

uint64_t VoiceProcessorV2::SaveFilesWriteSignal(uint64_t this, unsigned int a2, const AudioTimeStamp *a3, const AudioBufferList *a4, AudioTimeStamp *a5)
{
  if (!*(this + 12720))
  {
    return this;
  }

  v9 = this;
  v10 = a2;
  this = VoiceProcessorV2::QuerySaveFileAtIndexthroughFileSavingKey(this, a2);
  if (!this)
  {
    return this;
  }

  this = VoiceProcessorV2::SignalIsInFrequencyDomain(v9, v10);
  if (this)
  {
    v33 = 0;
    v31 = 0u;
    v32 = 0u;
    this = VoiceProcessorV2::GetSignalSaveFileFormatForIndex(&v31, v9, v10, 0.0, v11);
    mNumberBuffers = HIDWORD(v32);
    if (HIDWORD(v32) != (*(*(v9 + 1764) + 24 * v10 + 8) - *(*(v9 + 1764) + 24 * v10)) >> 3)
    {
      return this;
    }

    v13 = v9 + 14136;
    v14 = *(v9 + v10 + 1767);
    if (!v14 || *(v9 + 129) < a3)
    {
      return this;
    }

    v30[0] = a3;
    v29 = a5;
    v15 = *v14;
    if (a4->mNumberBuffers < HIDWORD(v32))
    {
      mNumberBuffers = a4->mNumberBuffers;
    }

    if (v15 < mNumberBuffers)
    {
      mNumberBuffers = v15;
    }

    if (mNumberBuffers)
    {
      v16 = 0;
      v17 = 8 * mNumberBuffers;
      v18 = 16;
      do
      {
        v19 = *(&a4->mNumberBuffers + v18) + 4 * v30[0];
        *&v30[1] = *(&a4->mNumberBuffers + v18);
        *&v30[3] = v19;
        v20 = v13;
        this = VPTimeFreqConverter::Synthesize(*(*(*(v9 + 1764) + 24 * v10) + v16), &v30[1], *(*&v13[8 * v10] + v18));
        v13 = v20;
        v16 += 8;
        v18 += 16;
      }

      while (v17 != v16);
    }

    v21 = *(v9 + v10 + 1628);
    if (!v21)
    {
      return this;
    }

    this = vp::Audio_Capture::write_async(&v30[1], v21, *&v13[8 * v10], v30[0], &v29->mSampleTime);
    v22 = LOBYTE(v30[2]);
    v23 = v30[1];
  }

  else
  {
    v24 = *(v9 + v10 + 1628);
    if (!v24)
    {
      return this;
    }

    this = vp::Audio_Capture::write_async(&v31, v24, a4, a3, &a5->mSampleTime);
    v22 = BYTE4(v31);
    v23 = v31;
  }

  if (v22)
  {
    v23 = 0;
  }

  if ((__rbit32(v22) & 0x80000000) == 0)
  {
    v25 = &kVPSaveFileIndexToCodeArray_v2;
    v26 = 136;
    v27 = "badsavefile";
    while (*v25 != a2)
    {
      v25 += 4;
      if (!--v26)
      {
        goto LABEL_26;
      }
    }

    v27 = *(v25 + 1);
LABEL_26:
    if (a2 > 3)
    {
      v28 = 21.003;
    }

    else
    {
      v28 = flt_272756890[v10];
    }

    return VoiceProcessorV2::LogIOError(v9, v28, *(v9 + 3148), *(v9 + 3149), 0.0, "err-%d writing %s", v23, v27);
  }

  return this;
}

BOOL VoiceProcessorV2::QuerySaveFileAtIndexthroughFileSavingKey(VoiceProcessorV2 *this, unint64_t a2)
{
  v2 = a2 - 70;
  if (a2 - 70 <= 0x2D)
  {
    if (((1 << v2) & 0x181801F) != 0)
    {
LABEL_12:
      v6 = *(this + 3180) == 0;
      return !v6;
    }

    if (((1 << v2) & 0x380000000000) != 0)
    {
LABEL_4:
      v3 = *(this + 3180);
      return v3 > 0x10 || (v3 & 0xFFFFFFFC) == 4;
    }
  }

  if (a2 > 0x3D)
  {
    goto LABEL_4;
  }

  if (((1 << a2) & 0x201E020000000003) != 0)
  {
    goto LABEL_12;
  }

  if (((1 << a2) & 0x40000000010) == 0)
  {
    if (a2 != 47)
    {
      goto LABEL_4;
    }

    v9 = *(this + 3180);
    if (v9 <= 0xD && v9 - 3 > 4)
    {
      return 0;
    }

    v6 = *(this + 250) == 0;
    return !v6;
  }

  v7 = *(this + 3180);
  return v7 > 0xA || v7 - 2 < 6;
}

uint64_t VoiceProcessorV2::SignalIsInFrequencyDomain(VoiceProcessorV2 *this, unint64_t a2)
{
  v2 = 1;
  if (a2 - 95 > 0x28 || ((1 << (a2 - 95)) & 0x1FC0001FDBDLL) == 0)
  {
    if (a2 <= 0x27)
    {
      if (((1 << a2) & 0x700FFC0C00) != 0)
      {
        return v2 & 1;
      }

      if (a2 == 39 && (*(this + 2091) & 1) == 0)
      {
        v2 = *(this + 2093) ^ 1;
        return v2 & 1;
      }
    }

    v2 = 0;
  }

  return v2 & 1;
}

uint64_t VoiceProcessorV2::GetSignalSaveFileFormatForIndex(uint64_t this, VoiceProcessorV2 *a2, uint64_t a3, double a4, double a5)
{
  v5 = this;
  switch(a3)
  {
    case 0:
      v20 = *(a2 + 38);
      *this = *(a2 + 37);
      *(this + 16) = v20;
      v7 = *(a2 + 78);
      goto LABEL_7;
    case 1:
      v11 = a2 + 632;
      v12 = *(a2 + 83);
      goto LABEL_37;
    case 2:
      v11 = a2 + 712;
      v12 = *(a2 + 93);
      goto LABEL_37;
    case 3:
      v19 = *(a2 + 48);
      *this = *(a2 + 47);
      *(this + 16) = v19;
      v7 = *(a2 + 98);
      goto LABEL_7;
    case 4:
      v11 = a2 + 792;
      v12 = *(a2 + 103);
      goto LABEL_37;
    case 5:
    case 76:
      v16 = *(a2 + 53);
      *this = *(a2 + 52);
      *(this + 16) = v16;
      v7 = *(a2 + 108);
      goto LABEL_7;
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 18:
    case 19:
    case 20:
    case 21:
    case 22:
    case 23:
    case 24:
    case 25:
    case 26:
    case 27:
    case 77:
    case 78:
    case 79:
    case 80:
    case 101:
    case 102:
    case 103:
    case 104:
    case 105:
    case 106:
    case 116:
    case 126:
      v8 = *(a2 + 104);
      goto LABEL_4;
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:
    case 17:
    case 28:
    case 29:
    case 30:
    case 31:
    case 32:
    case 33:
    case 34:
    case 35:
    case 36:
    case 37:
    case 38:
    case 39:
    case 40:
    case 42:
    case 43:
    case 44:
    case 45:
    case 46:
    case 81:
    case 82:
    case 83:
    case 84:
    case 95:
    case 96:
    case 97:
    case 98:
    case 99:
    case 100:
    case 112:
    case 124:
    case 129:
    case 130:
    case 131:
    case 132:
    case 135:
      v6 = *(a2 + 58);
      *this = *(a2 + 57);
      *(this + 16) = v6;
      v7 = *(a2 + 118);
      goto LABEL_7;
    case 47:
    case 48:
      v11 = a2 + 952;
      v12 = *(a2 + 123);
      goto LABEL_37;
    case 49:
      v27 = *(a2 + 63);
      *this = *(a2 + 62);
      *(this + 16) = v27;
      v7 = *(a2 + 128);
      goto LABEL_7;
    case 50:
    case 57:
    case 60:
    case 65:
    case 69:
    case 70:
    case 86:
    case 117:
    case 119:
    case 121:
    case 127:
      v10 = *(a2 + 22);
      *this = *(a2 + 21);
      *(this + 16) = v10;
      v7 = *(a2 + 46);
      goto LABEL_7;
    case 51:
      v18 = *(a2 + 232);
      *this = *(a2 + 216);
      *(this + 16) = v18;
      v7 = *(a2 + 31);
LABEL_7:
      *(this + 32) = v7;
      return this;
    case 53:
      v13 = *(a2 + 42);
      if (*(a2 + 2260) == 1)
      {
        v14 = *(a2 + 91);
      }

      else
      {
        v14 = 1;
      }

      this = VoiceProcessorV2::GetDynamicsDSPChannelCount(a2);
      goto LABEL_19;
    case 54:
    case 87:
    case 88:
    case 89:
    case 90:
    case 118:
    case 125:
      v11 = a2 + 296;
      v12 = *(a2 + 41);
      goto LABEL_37;
    case 55:
    case 91:
    case 120:
    case 122:
    case 123:
      v13 = *(a2 + 42);
      if (*(a2 + 2260) == 1)
      {
        v14 = *(a2 + 91);
      }

      else
      {
        v14 = 1;
      }

      this = VoiceProcessorV2::GetFarEndVoiceMixChannelCount(a2);
LABEL_19:
      if (v14 <= this)
      {
        v15 = this;
      }

      else
      {
        v15 = v14;
      }

      *v5 = v13;
      goto LABEL_23;
    case 56:
    case 64:
      v17 = *(a2 + 42);
      this = VoiceProcessorV2::GetDynamicsDSPChannelCount(a2);
      *v5 = v17;
      *(v5 + 8) = xmmword_272756340;
      *(v5 + 24) = 4;
      *(v5 + 28) = this;
      goto LABEL_24;
    case 58:
    case 59:
    case 66:
    case 67:
    case 128:
      v15 = *(a2 + 1081);
      if (v15 <= 1)
      {
        v15 = 1;
      }

      *this = *(a2 + 42);
LABEL_23:
      *(v5 + 8) = xmmword_272756340;
      *(v5 + 24) = 4;
      *(v5 + 28) = v15;
LABEL_24:
      *(v5 + 32) = 32;
      return this;
    case 61:
    case 62:
    case 63:
    case 113:
    case 114:
    case 115:
      v8 = *(a2 + 42);
      goto LABEL_4;
    case 68:
    case 71:
      v11 = a2 + 1496;
      v12 = *(a2 + 191);
LABEL_37:
      *(this + 32) = v12;
      v21 = *(v11 + 1);
      *this = *v11;
      *(this + 16) = v21;
      return this;
    case 85:
      v22 = *(a2 + 87);
      v23 = *(a2 + 91);
      v24 = *(a2 + 46);
      if (v23 >= 2)
      {
        v25 = 2;
      }

      else
      {
        v25 = *(a2 + 91);
      }

      if ((v22 & 0x20) != 0)
      {
        v23 = 1;
      }

      else if (!v23)
      {
        v26 = (v24 + 7) >> 3;
        goto LABEL_53;
      }

      v26 = *(a2 + 90) / v23;
LABEL_53:
      if ((v22 & 0x20) != 0)
      {
        v28 = 1;
      }

      else
      {
        v28 = v25;
      }

      v29 = v26 * v28;
      *this = *(a2 + 42);
      *(this + 8) = *(a2 + 86);
      *(this + 12) = v22;
      *(this + 16) = v29;
      *(this + 20) = 1;
      *(this + 24) = v29;
      *(this + 28) = v25;
      *(this + 32) = v24;
      return this;
    case 92:
      LODWORD(a5) = *(a2 + 129);
      v8 = (*(a2 + 104) + *(a2 + 104)) / *&a5;
LABEL_4:
      *this = v8;
      *(this + 8) = xmmword_272756340;
      v9 = xmmword_272756350;
      goto LABEL_5;
    case 107:
    case 108:
    case 109:
    case 110:
      *this = *(a2 + 104);
      *(this + 8) = xmmword_272756340;
      v9 = xmmword_272756500;
      goto LABEL_5;
    case 111:
      *this = *(a2 + 104);
      *(this + 8) = xmmword_272756340;
      v9 = xmmword_272756360;
      goto LABEL_5;
    case 133:
    case 134:
      *this = *(a2 + 104);
      *(this + 8) = xmmword_272756340;
      v9 = xmmword_272756370;
LABEL_5:
      *(this + 24) = v9;
      return this;
    default:
      *(this + 32) = 0;
      *this = 0u;
      *(this + 16) = 0u;
      return this;
  }
}