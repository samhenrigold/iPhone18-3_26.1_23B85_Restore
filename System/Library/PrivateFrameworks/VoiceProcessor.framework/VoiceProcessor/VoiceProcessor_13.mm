void sub_2725A742C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void VoiceProcessorV2::LoadAUDataPreset(VoiceProcessorV2 *this, const char *a2, char *a3, const char *a4)
{
  v5 = a2;
  v640 = *MEMORY[0x277D85DE8];
  v620 = this + 15881;
  TuningInSubdirs = 0;
  if (!a2)
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v7 = VPLogScope(void)::scope;
    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
    {
      v8 = (*v7 ? *v7 : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        *&buf[4] = "vpTuningHelper.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 282;
        *&buf[18] = 2080;
        *&buf[20] = "./";
        _os_log_impl(&dword_2724B4000, v8, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> LoadAUDataPreset(): Using '%s' as sub directory", buf, 0x1Cu);
      }
    }

    v9 = *(this + 1588);
    v5 = "./";
    if (v9 && ((*v620 & 1) != 0 || v620[1] == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      CALegacyLog::log(v9, 5, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpTuningHelper.cpp", 282, "LoadAUDataPreset", "LoadAUDataPreset(): Using '%s' as sub directory", "./");
    }
  }

  if (!a3)
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v10 = VPLogScope(void)::scope;
    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(4, VPLogScope(void)::scope, 0))
    {
      v11 = (*v10 ? *v10 : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        *&buf[4] = "vpTuningHelper.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 286;
        _os_log_impl(&dword_2724B4000, v11, OS_LOG_TYPE_INFO, "%25s:%-5d  <vp> LoadAUDataPreset(): <INFO> file prefix is NULL!", buf, 0x12u);
      }
    }

    v12 = *(this + 1588);
    if (v12 && ((*v620 & 1) != 0 || v620[1] == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      CALegacyLog::log(v12, 4, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpTuningHelper.cpp", 286, "LoadAUDataPreset", "LoadAUDataPreset(): <INFO> file prefix is NULL!");
    }
  }

  v629 = CFStringCreateWithCString(0, "./", 0x600u);
  v630 = 1;
  v626 = this;
  v627 = CFStringCreateWithCString(0, v5, 0x600u);
  v628 = 1;
  v621 = (this + 4688);
  v13 = *(this + 586);
  if ((v13 & 0x80000000) != 0)
  {
    VoiceProcessorV2::LoadAUDataPreset(char const*,char const*,char const*)::$_0::operator()<$_1,unsigned int,$_2>(&__str, a3, 0x626D326Eu);
    v14 = *(this + 343);
    __s.__r_.__value_.__r.__words[0] = CFStringCreateWithCString(0, "AU", 0x600u);
    __s.__r_.__value_.__s.__data_[8] = 1;
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_str = &__str;
    }

    else
    {
      p_str = __str.__r_.__value_.__r.__words[0];
    }

    v637.__r_.__value_.__r.__words[0] = CFStringCreateWithCString(0, p_str, 0x600u);
    v637.__r_.__value_.__s.__data_[8] = 1;
    *buf = &v629;
    *&buf[8] = &v627;
    *&buf[16] = &__s;
    *&buf[24] = &v637;
    TuningInSubdirs = TuningPListMgr::loadTuningInSubdirs_(v14, buf, 4, 1u);
    CACFString::~CACFString(&v637);
    CACFString::~CACFString(&__s);
    if (TuningInSubdirs)
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v16 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
      {
        v17 = (*v16 ? *v16 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "vpTuningHelper.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 398;
          _os_log_impl(&dword_2724B4000, v17, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> fail to find Beam forming AU data presets!! Disabling beam former!", buf, 0x12u);
        }
      }

      v18 = *(this + 1588);
      if (v18 && ((*v620 & 1) != 0 || v620[1] == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        CALegacyLog::log(v18, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpTuningHelper.cpp", 398, "LoadAUDataPreset", "fail to find Beam forming AU data presets!! Disabling beam former!");
      }
    }

    else
    {
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v19 = &__str;
      }

      else
      {
        v19 = __str.__r_.__value_.__r.__words[0];
      }

      v20 = TuningPListMgr::lookupPlist_(*(this + 343), v19, 1u);
      v637.__r_.__value_.__r.__words[0] = v20;
      if (v20)
      {
        CFRetain(v20);
        AUPropAndParamHelper::AddItemToAUPropsList(this + 976, 0, 0, 0, 8uLL, &v637, 0);
        CFRelease(v637.__r_.__value_.__l.__data_);
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v21 = VPLogScope(void)::scope;
        if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
        {
          v22 = (*v21 ? *v21 : MEMORY[0x277D86220]);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
          {
            v23 = __str.__r_.__value_.__r.__words[0];
            if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v23 = &__str;
            }

            *buf = 136315906;
            *&buf[4] = "vpTuningHelper.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 413;
            *&buf[18] = 2080;
            *&buf[20] = v23;
            *&buf[28] = 2080;
            *&buf[30] = "(UL-)BF";
            _os_log_impl(&dword_2724B4000, v22, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> found AU data preset: %s for %s", buf, 0x26u);
          }
        }

        v24 = *(this + 1588);
        if (v24 && ((*v620 & 1) != 0 || v620[1] == 1))
        {
          if (VPLogScope(void)::once != -1)
          {
            dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
          }

          v25 = __str.__r_.__value_.__r.__words[0];
          if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v25 = &__str;
          }

          CALegacyLog::log(v24, 5, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpTuningHelper.cpp", 413, "LoadAUDataPreset", "found AU data preset: %s for %s", v25, "(UL-)BF");
        }

        std::string::basic_string[abi:ne200100]<0>(buf, "(UL-)BF");
        __s.__r_.__value_.__r.__words[0] = buf;
        v26 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(this + 581, buf, &__s);
        std::string::operator=((v26 + 5), &__str);
        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }
      }

      else
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v27 = VPLogScope(void)::scope;
        if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
        {
          v28 = (*v27 ? *v27 : MEMORY[0x277D86220]);
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            v29 = __str.__r_.__value_.__r.__words[0];
            if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v29 = &__str;
            }

            *buf = 136315906;
            *&buf[4] = "vpTuningHelper.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 418;
            *&buf[18] = 2080;
            *&buf[20] = v29;
            *&buf[28] = 2080;
            *&buf[30] = "(UL-)BF";
            _os_log_impl(&dword_2724B4000, v28, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> : fail to load AU data preset: %s for %s! Disabling beam former!", buf, 0x26u);
          }
        }

        v30 = *(this + 1588);
        if (v30 && ((*v620 & 1) != 0 || v620[1] == 1))
        {
          if (VPLogScope(void)::once != -1)
          {
            dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
          }

          v31 = __str.__r_.__value_.__r.__words[0];
          if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v31 = &__str;
          }

          CALegacyLog::log(v30, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpTuningHelper.cpp", 418, "LoadAUDataPreset", ": fail to load AU data preset: %s for %s! Disabling beam former!", v31, "(UL-)BF");
        }
      }
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    v13 = *v621;
  }

  if ((v13 & 0x100000000) != 0)
  {
    VoiceProcessorV2::LoadAUDataPreset(char const*,char const*,char const*)::$_0::operator()<$_1,unsigned int,$_2>(&__str, a3, 0x626D6E66u);
    v32 = *(this + 343);
    __s.__r_.__value_.__r.__words[0] = CFStringCreateWithCString(0, "AU", 0x600u);
    __s.__r_.__value_.__s.__data_[8] = 1;
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v33 = &__str;
    }

    else
    {
      v33 = __str.__r_.__value_.__r.__words[0];
    }

    v637.__r_.__value_.__r.__words[0] = CFStringCreateWithCString(0, v33, 0x600u);
    v637.__r_.__value_.__s.__data_[8] = 1;
    *buf = &v629;
    *&buf[8] = &v627;
    *&buf[16] = &__s;
    *&buf[24] = &v637;
    TuningInSubdirs = TuningPListMgr::loadTuningInSubdirs_(v32, buf, 4, 1u);
    CACFString::~CACFString(&v637);
    CACFString::~CACFString(&__s);
    if (TuningInSubdirs)
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v34 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
      {
        v35 = (*v34 ? *v34 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          *&buf[4] = "vpTuningHelper.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 431;
          *&buf[18] = 2080;
          *&buf[20] = "(UL-)BeamNF";
          _os_log_impl(&dword_2724B4000, v35, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> fail to find %s data presets!! Disabling AU.", buf, 0x1Cu);
        }
      }

      v36 = *(this + 1588);
      if (v36 && ((*v620 & 1) != 0 || v620[1] == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        CALegacyLog::log(v36, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpTuningHelper.cpp", 431, "LoadAUDataPreset", "fail to find %s data presets!! Disabling AU.", "(UL-)BeamNF");
      }
    }

    else
    {
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v37 = &__str;
      }

      else
      {
        v37 = __str.__r_.__value_.__r.__words[0];
      }

      v38 = TuningPListMgr::lookupPlist_(*(this + 343), v37, 1u);
      v637.__r_.__value_.__r.__words[0] = v38;
      if (v38)
      {
        CFRetain(v38);
        AUPropAndParamHelper::AddItemToAUPropsList(this + 979, 0, 0, 0, 8uLL, &v637, 0);
        CFRelease(v637.__r_.__value_.__l.__data_);
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v39 = VPLogScope(void)::scope;
        if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
        {
          v40 = (*v39 ? *v39 : MEMORY[0x277D86220]);
          if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
          {
            v41 = __str.__r_.__value_.__r.__words[0];
            if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v41 = &__str;
            }

            *buf = 136315906;
            *&buf[4] = "vpTuningHelper.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 445;
            *&buf[18] = 2080;
            *&buf[20] = v41;
            *&buf[28] = 2080;
            *&buf[30] = "(UL-)BeamNF";
            _os_log_impl(&dword_2724B4000, v40, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> found AU data preset: %s for %s", buf, 0x26u);
          }
        }

        v42 = *(this + 1588);
        if (v42 && ((*v620 & 1) != 0 || v620[1] == 1))
        {
          if (VPLogScope(void)::once != -1)
          {
            dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
          }

          v43 = __str.__r_.__value_.__r.__words[0];
          if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v43 = &__str;
          }

          CALegacyLog::log(v42, 5, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpTuningHelper.cpp", 445, "LoadAUDataPreset", "found AU data preset: %s for %s", v43, "(UL-)BeamNF");
        }

        std::string::basic_string[abi:ne200100]<0>(buf, "(UL-)BeamNF");
        __s.__r_.__value_.__r.__words[0] = buf;
        v44 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(this + 581, buf, &__s);
        std::string::operator=((v44 + 5), &__str);
        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }
      }

      else
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v45 = VPLogScope(void)::scope;
        if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
        {
          v46 = (*v45 ? *v45 : MEMORY[0x277D86220]);
          if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
          {
            v47 = __str.__r_.__value_.__r.__words[0];
            if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v47 = &__str;
            }

            *buf = 136315906;
            *&buf[4] = "vpTuningHelper.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 449;
            *&buf[18] = 2080;
            *&buf[20] = v47;
            *&buf[28] = 2080;
            *&buf[30] = "(UL-)BeamNF";
            _os_log_impl(&dword_2724B4000, v46, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> fail to load AU data preset: %s for %s! Disabling AU!", buf, 0x26u);
          }
        }

        v48 = *(this + 1588);
        if (v48 && ((*v620 & 1) != 0 || v620[1] == 1))
        {
          if (VPLogScope(void)::once != -1)
          {
            dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
          }

          v49 = __str.__r_.__value_.__r.__words[0];
          if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v49 = &__str;
          }

          CALegacyLog::log(v48, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpTuningHelper.cpp", 449, "LoadAUDataPreset", "fail to load AU data preset: %s for %s! Disabling AU!", v49, "(UL-)BeamNF");
        }
      }
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    v13 = *v621;
  }

  if ((v13 & 0x200000000) != 0)
  {
    VoiceProcessorV2::LoadAUDataPreset(char const*,char const*,char const*)::$_0::operator()<$_1,unsigned int,$_2>(&__str, a3, 0x626E6673u);
    v50 = *(this + 343);
    __s.__r_.__value_.__r.__words[0] = CFStringCreateWithCString(0, "AU", 0x600u);
    __s.__r_.__value_.__s.__data_[8] = 1;
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v51 = &__str;
    }

    else
    {
      v51 = __str.__r_.__value_.__r.__words[0];
    }

    v637.__r_.__value_.__r.__words[0] = CFStringCreateWithCString(0, v51, 0x600u);
    v637.__r_.__value_.__s.__data_[8] = 1;
    *buf = &v629;
    *&buf[8] = &v627;
    *&buf[16] = &__s;
    *&buf[24] = &v637;
    TuningInSubdirs = TuningPListMgr::loadTuningInSubdirs_(v50, buf, 4, 2u);
    CACFString::~CACFString(&v637);
    CACFString::~CACFString(&__s);
    if (TuningInSubdirs)
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v52 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
      {
        v53 = (*v52 ? *v52 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315906;
          *&buf[4] = "vpTuningHelper.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 469;
          *&buf[18] = 2080;
          *&buf[20] = "BeamNFSel";
          *&buf[28] = 2080;
          *&buf[30] = "(UL-)BeamNFSelector";
          _os_log_impl(&dword_2724B4000, v53, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> fail to load AU data preset: %s for %s! Continuing anyway...", buf, 0x26u);
        }
      }

      v54 = *(this + 1588);
      if (v54 && ((*v620 & 1) != 0 || v620[1] == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        CALegacyLog::log(v54, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpTuningHelper.cpp", 469, "LoadAUDataPreset", "fail to load AU data preset: %s for %s! Continuing anyway...", "BeamNFSel", "(UL-)BeamNFSelector");
      }
    }

    else
    {
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v55 = &__str;
      }

      else
      {
        v55 = __str.__r_.__value_.__r.__words[0];
      }

      v56 = TuningPListMgr::lookupPlist_(*(this + 343), v55, 2u);
      __s.__r_.__value_.__r.__words[0] = v56;
      if (v56)
      {
        CFRetain(v56);
        AUPropAndParamHelper::AddItemToAUPropsList(this + 982, 0x11B2u, 0, 0, 8uLL, &__s, 1);
        CFRelease(__s.__r_.__value_.__l.__data_);
      }

      else
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v57 = VPLogScope(void)::scope;
        if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
        {
          v58 = (*v57 ? *v57 : MEMORY[0x277D86220]);
          if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315906;
            *&buf[4] = "vpTuningHelper.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 481;
            *&buf[18] = 2080;
            *&buf[20] = "BeamSystemNoiseProfile";
            *&buf[28] = 2080;
            *&buf[30] = "(UL-)BeamNFSelector";
            _os_log_impl(&dword_2724B4000, v58, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> fail to load AU data preset: %s for %s! not disabling AU!", buf, 0x26u);
          }
        }

        v59 = *(this + 1588);
        if (v59 && ((*v620 & 1) != 0 || v620[1] == 1))
        {
          if (VPLogScope(void)::once != -1)
          {
            dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
          }

          CALegacyLog::log(v59, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpTuningHelper.cpp", 481, "LoadAUDataPreset", "fail to load AU data preset: %s for %s! not disabling AU!", "BeamSystemNoiseProfile", "(UL-)BeamNFSelector");
        }
      }
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }
  }

  if (TuningInSubdirs)
  {
    (*(*this + 320))(this);
    VPChannelConfig::SetChConfig((this + 456), 2, "top or top front", 1u);
    v60 = 0;
    v61 = 0;
    v62 = 0;
    v63 = *(this + 108);
    v64 = *(this + 114);
    do
    {
      if (((1 << v60) & v63) == 0 || ((1 << v60) & v64) == 0)
      {
        v61 += ((v64 | v63) >> v60) & 1;
      }

      else
      {
        v62 |= 1 << v61++;
      }

      ++v60;
    }

    while (v60 != 6);
    *(this + 107) = v62;
  }

  v66 = *v621;
  if ((*v621 & 0x2000000000) != 0)
  {
    if ((v66 & 0x800) != 0)
    {
      v67 = 11;
    }

    else
    {
      v67 = 37;
    }
  }

  else
  {
    if ((v66 & 0x800) == 0)
    {
      goto LABEL_257;
    }

    v67 = 11;
  }

  v68 = &VoiceProcessorV2::VPUplinkIndexToSubTypeArray;
  v69 = 71;
  while (*v68 != v67)
  {
    v68 += 18;
    if (!--v69)
    {
      v70 = 0;
      goto LABEL_230;
    }
  }

  v70 = v68[1];
LABEL_230:
  VoiceProcessorV2::LoadAUDataPreset(char const*,char const*,char const*)::$_0::operator()<$_1,unsigned int,$_2>(&__str, a3, v70);
  v71 = *(this + 343);
  __s.__r_.__value_.__r.__words[0] = CFStringCreateWithCString(0, "AU", 0x600u);
  __s.__r_.__value_.__s.__data_[8] = 1;
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v72 = &__str;
  }

  else
  {
    v72 = __str.__r_.__value_.__r.__words[0];
  }

  v637.__r_.__value_.__r.__words[0] = CFStringCreateWithCString(0, v72, 0x600u);
  v637.__r_.__value_.__s.__data_[8] = 1;
  *buf = &v629;
  *&buf[8] = &v627;
  *&buf[16] = &__s;
  *&buf[24] = &v637;
  TuningInSubdirs = TuningPListMgr::loadTuningInSubdirs_(v71, buf, 4, 2u);
  CACFString::~CACFString(&v637);
  CACFString::~CACFString(&__s);
  if (TuningInSubdirs)
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v73 = VPLogScope(void)::scope;
    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
    {
      v74 = (*v73 ? *v73 : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "vpTuningHelper.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 513;
        _os_log_impl(&dword_2724B4000, v74, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> failed to find BeamItFD/TD AU data plist!\n", buf, 0x12u);
      }
    }

    v75 = *(this + 1588);
    if (v75 && ((*v620 & 1) != 0 || v620[1] == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      CALegacyLog::log(v75, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpTuningHelper.cpp", 513, "LoadAUDataPreset", "failed to find BeamItFD/TD AU data plist!\n");
    }
  }

  else
  {
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v76 = &__str;
    }

    else
    {
      v76 = __str.__r_.__value_.__r.__words[0];
    }

    v77 = TuningPListMgr::lookupPlist_(*(this + 343), v76, 2u);
    *buf = v77;
    if (v77)
    {
      CFRetain(v77);
      AUPropAndParamHelper::AddItemToAUPropsList(this + 3 * v67 + 883, 0x1216u, 0, 0, 8uLL, buf, 1);
      CFRelease(*buf);
    }
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  v66 = *v621;
LABEL_257:
  if ((v66 & 0x1000) != 0)
  {
    VoiceProcessorV2::LoadAUDataPreset(char const*,char const*,char const*)::$_0::operator()<$_1,unsigned int,$_2>(buf, a3, 0x626D7464u);
    v78 = std::string::append(buf, "-nfn", 4uLL);
    v79 = *&v78->__r_.__value_.__l.__data_;
    __str.__r_.__value_.__r.__words[2] = v78->__r_.__value_.__r.__words[2];
    *&__str.__r_.__value_.__l.__data_ = v79;
    v78->__r_.__value_.__l.__size_ = 0;
    v78->__r_.__value_.__r.__words[2] = 0;
    v78->__r_.__value_.__r.__words[0] = 0;
    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    v80 = *(this + 343);
    __s.__r_.__value_.__r.__words[0] = CFStringCreateWithCString(0, "AU", 0x600u);
    __s.__r_.__value_.__s.__data_[8] = 1;
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v81 = &__str;
    }

    else
    {
      v81 = __str.__r_.__value_.__r.__words[0];
    }

    v637.__r_.__value_.__r.__words[0] = CFStringCreateWithCString(0, v81, 0x600u);
    v637.__r_.__value_.__s.__data_[8] = 1;
    *buf = &v629;
    *&buf[8] = &v627;
    *&buf[16] = &__s;
    *&buf[24] = &v637;
    TuningInSubdirs = TuningPListMgr::loadTuningInSubdirs_(v80, buf, 4, 2u);
    CACFString::~CACFString(&v637);
    CACFString::~CACFString(&__s);
    if (TuningInSubdirs)
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v82 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
      {
        v83 = (*v82 ? *v82 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "vpTuningHelper.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 535;
          _os_log_impl(&dword_2724B4000, v83, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> failed to find NFN AU data plist!\n", buf, 0x12u);
        }
      }

      v84 = *(this + 1588);
      if (v84 && ((*v620 & 1) != 0 || v620[1] == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        CALegacyLog::log(v84, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpTuningHelper.cpp", 535, "LoadAUDataPreset", "failed to find NFN AU data plist!\n");
      }
    }

    else
    {
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v85 = &__str;
      }

      else
      {
        v85 = __str.__r_.__value_.__r.__words[0];
      }

      v86 = TuningPListMgr::lookupPlist_(*(this + 343), v85, 2u);
      *buf = v86;
      if (v86)
      {
        CFRetain(v86);
        AUPropAndParamHelper::AddItemToAUPropsList(this + 919, 0x1216u, 0, 0, 8uLL, buf, 1);
        CFRelease(*buf);
      }
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    v66 = *v621;
  }

  if ((v66 & 2) != 0)
  {
    v87 = (this + 8);
    if (*(this + 31) < 0)
    {
      v87 = *v87;
    }

    Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
    CAX4CCStringNoQuote::CAX4CCStringNoQuote(buf, 0x61756678u);
    CAX4CCStringNoQuote::CAX4CCStringNoQuote(&__str, 0x66697266u);
    CAX4CCStringNoQuote::CAX4CCStringNoQuote(&__s, 0x6170706Cu);
    v613 = v87;
    if (a3)
    {
      CFStringAppendFormat(Mutable, 0, @"%s/%s/%s/%s-%s-%s-%s.plist");
    }

    else
    {
      CFStringAppendFormat(Mutable, 0, @"%s/%s/%s/%s-%s-%s.plist");
    }

    v89 = 0;
    *buf = Mutable;
    buf[8] = 1;
    do
    {
      v90 = v89;
      v91 = dword_2727568C0[v89++];
      if ((*(v621 + ((v91 >> 3) & 0x1FFFFFF8)) >> v91))
      {
        v92 = 0;
        if (v89 <= 1)
        {
          v93 = 1;
        }

        else
        {
          v93 = v89;
        }

        v94 = 1;
        do
        {
          if ((*(this + 114) >> v92))
          {
            if (v94 == v93)
            {
              goto LABEL_304;
            }

            ++v94;
          }

          ++v92;
        }

        while (v92 != 32);
        v92 = 33;
LABEL_304:
        v95 = this + 24 * v90 + 8768;
        *(v95 + 4) = v92;
        v96 = *buf;
        if (*buf != *v95)
        {
          if (*v95 && (v95[8] & 1) != 0)
          {
            CFRelease(*v95);
            v96 = *buf;
          }

          *v95 = v96;
          v97 = buf[8];
          v95[8] = buf[8];
          if (v97 == 1 && v96)
          {
            CFRetain(v96);
          }
        }
      }
    }

    while (v89 != 4);
    CACFString::~CACFString(buf);
  }

  v98 = *(this + 1108);
  if ((v98 & 0x80000000000) != 0)
  {
    VoiceProcessorV2::LoadAUDataPreset(char const*,char const*,char const*)::$_0::operator()<$_1,unsigned int,$_2>(&__str, a3, 0x6C6B6972u);
    v99 = *(this + 343);
    __s.__r_.__value_.__r.__words[0] = CFStringCreateWithCString(0, "AU", 0x600u);
    __s.__r_.__value_.__s.__data_[8] = 1;
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v100 = &__str;
    }

    else
    {
      v100 = __str.__r_.__value_.__r.__words[0];
    }

    v637.__r_.__value_.__r.__words[0] = CFStringCreateWithCString(0, v100, 0x600u);
    v637.__r_.__value_.__s.__data_[8] = 1;
    *buf = &v629;
    *&buf[8] = &v627;
    *&buf[16] = &__s;
    *&buf[24] = &v637;
    TuningInSubdirs = TuningPListMgr::loadTuningInSubdirs_(v99, buf, 4, 2u);
    CACFString::~CACFString(&v637);
    CACFString::~CACFString(&__s);
    if (TuningInSubdirs)
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v101 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
      {
        v102 = (*v101 ? *v101 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v102, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "vpTuningHelper.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 596;
          _os_log_impl(&dword_2724B4000, v102, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> failed to find TweakaLeakIR biquad table plist, coefficients will be calculated at runtime instead\n", buf, 0x12u);
        }
      }

      v103 = *(this + 1588);
      if (v103 && ((*v620 & 1) != 0 || v620[1] == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        CALegacyLog::log(v103, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpTuningHelper.cpp", 596, "LoadAUDataPreset", "failed to find TweakaLeakIR biquad table plist, coefficients will be calculated at runtime instead\n");
      }
    }

    else
    {
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v104 = &__str;
      }

      else
      {
        v104 = __str.__r_.__value_.__r.__words[0];
      }

      v105 = TuningPListMgr::lookupPlist_(*(this + 343), v104, 2u);
      *buf = v105;
      if (v105)
      {
        CFRetain(v105);
        AUPropAndParamHelper::AddItemToAUPropsList(this + 1504, 0x22C4u, 0, 0, 8uLL, buf, 1);
        CFRelease(*buf);
      }
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    v98 = *(this + 1108);
  }

  if ((v98 & 0x100000000000000) != 0)
  {
    memset(buf, 0, 24);
    if (a3)
    {
      v106 = strlen(a3);
      std::string::append(buf, a3, v106);
      std::string::append(buf, "-", 1uLL);
    }

    std::string::append(buf, "vp-", 3uLL);
    CAX4CCStringNoQuote::CAX4CCStringNoQuote(&__s, 0x61756678u);
    v108 = strlen(v107);
    std::string::append(buf, &__s, v108);
    std::string::append(buf, "-", 1uLL);
    CAX4CCStringNoQuote::CAX4CCStringNoQuote(&__s, 0x73707033u);
    v110 = strlen(v109);
    std::string::append(buf, &__s, v110);
    std::string::append(buf, "-", 1uLL);
    CAX4CCStringNoQuote::CAX4CCStringNoQuote(&__s, 0x6170706Cu);
    v112 = strlen(v111);
    std::string::append(buf, &__s, v112);
    __str = *buf;
    v113 = *(this + 343);
    __s.__r_.__value_.__r.__words[0] = CFStringCreateWithCString(0, "AU", 0x600u);
    __s.__r_.__value_.__s.__data_[8] = 1;
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v114 = &__str;
    }

    else
    {
      v114 = __str.__r_.__value_.__r.__words[0];
    }

    v637.__r_.__value_.__r.__words[0] = CFStringCreateWithCString(0, v114, 0x600u);
    v637.__r_.__value_.__s.__data_[8] = 1;
    *buf = &v629;
    *&buf[8] = &v627;
    *&buf[16] = &__s;
    *&buf[24] = &v637;
    TuningInSubdirs = TuningPListMgr::loadTuningInSubdirs_(v113, buf, 4, 2u);
    CACFString::~CACFString(&v637);
    CACFString::~CACFString(&__s);
    if (!TuningInSubdirs)
    {
      goto LABEL_372;
    }

    VoiceProcessorV2::LoadAUDataPreset(char const*,char const*,char const*)::$_0::operator()<$_1,unsigned int,$_2>(buf, a3, 0x73707033u);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    __str = *buf;
    v115 = *(this + 343);
    __s.__r_.__value_.__r.__words[0] = CFStringCreateWithCString(0, "AU", 0x600u);
    __s.__r_.__value_.__s.__data_[8] = 1;
    v116 = (__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__str : __str.__r_.__value_.__r.__words[0];
    v637.__r_.__value_.__r.__words[0] = CFStringCreateWithCString(0, v116, 0x600u);
    v637.__r_.__value_.__s.__data_[8] = 1;
    *buf = &v629;
    *&buf[8] = &v627;
    *&buf[16] = &__s;
    *&buf[24] = &v637;
    TuningInSubdirs = TuningPListMgr::loadTuningInSubdirs_(v115, buf, 4, 2u);
    CACFString::~CACFString(&v637);
    CACFString::~CACFString(&__s);
    if (TuningInSubdirs)
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v117 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
      {
        v118 = (*v117 ? *v117 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v118, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "vpTuningHelper.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 626;
          _os_log_impl(&dword_2724B4000, v118, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> failed to find SPV3 AU data plist!\n", buf, 0x12u);
        }
      }

      v119 = *(this + 1588);
      if (v119 && ((*v620 & 1) != 0 || v620[1] == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        CALegacyLog::log(v119, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpTuningHelper.cpp", 626, "LoadAUDataPreset", "failed to find SPV3 AU data plist!\n");
      }

      *&buf[8] = 0;
      *&buf[16] = 0;
      *buf = &buf[8];
      std::string::basic_string[abi:ne200100]<0>(&__s, "vp_spp_error");
      v637.__r_.__value_.__r.__words[0] = &__s;
      v120 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(buf, &__s, &v637);
      std::string::__assign_external((v120 + 56), "failed to find SPV3 AU data plist", 0x21uLL);
      if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__s.__r_.__value_.__l.__data_);
      }
    }

    else
    {
LABEL_372:
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v121 = &__str;
      }

      else
      {
        v121 = __str.__r_.__value_.__r.__words[0];
      }

      v122 = TuningPListMgr::lookupPlist_(*(this + 343), v121, 2u);
      cf.__r_.__value_.__r.__words[0] = v122;
      if (v122)
      {
        CFRetain(v122);
        AUPropAndParamHelper::AddItemToAUPropsList(this + 1543, 0xFA03u, 0, 0, 8uLL, &cf, 1);
        CFRelease(cf.__r_.__value_.__l.__data_);
LABEL_380:
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        v98 = *(this + 1108);
        goto LABEL_383;
      }

      *&buf[8] = 0;
      *&buf[16] = 0;
      *buf = &buf[8];
      std::string::basic_string[abi:ne200100]<0>(&__s, "vp_spp_error");
      v637.__r_.__value_.__r.__words[0] = &__s;
      v123 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(buf, &__s, &v637);
      std::string::__assign_external((v123 + 56), "failed to get SPV3 plistDictionary", 0x22uLL);
      if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__s.__r_.__value_.__l.__data_);
      }
    }

    CAAudioStatisticsSendMessage(*(this + 271), *(this + 544), buf, 6);
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(*&buf[8]);
    goto LABEL_380;
  }

LABEL_383:
  if ((v98 & 0x200000000000000) == 0)
  {
    goto LABEL_423;
  }

  VoiceProcessorV2::LoadAUDataPreset(char const*,char const*,char const*)::$_2::operator()<$_1,unsigned int,$_2,char const*>(&__str, a3, 0x73707033u, "hf");
  v124 = *(this + 343);
  __s.__r_.__value_.__r.__words[0] = CFStringCreateWithCString(0, "AU", 0x600u);
  __s.__r_.__value_.__s.__data_[8] = 1;
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v125 = &__str;
  }

  else
  {
    v125 = __str.__r_.__value_.__r.__words[0];
  }

  v637.__r_.__value_.__r.__words[0] = CFStringCreateWithCString(0, v125, 0x600u);
  v637.__r_.__value_.__s.__data_[8] = 1;
  *buf = &v629;
  *&buf[8] = &v627;
  *&buf[16] = &__s;
  *&buf[24] = &v637;
  TuningInSubdirs = TuningPListMgr::loadTuningInSubdirs_(v124, buf, 4, 2u);
  CACFString::~CACFString(&v637);
  CACFString::~CACFString(&__s);
  if (TuningInSubdirs)
  {
    VoiceProcessorV2::LoadAUDataPreset(char const*,char const*,char const*)::$_3::operator()<$_1,unsigned int,$_2,char const*>(buf, a3, 0x73707033u, "hf");
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    __str = *buf;
    v126 = *(this + 343);
    __s.__r_.__value_.__r.__words[0] = CFStringCreateWithCString(0, "AU", 0x600u);
    __s.__r_.__value_.__s.__data_[8] = 1;
    v127 = (__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__str : __str.__r_.__value_.__r.__words[0];
    v637.__r_.__value_.__r.__words[0] = CFStringCreateWithCString(0, v127, 0x600u);
    v637.__r_.__value_.__s.__data_[8] = 1;
    *buf = &v629;
    *&buf[8] = &v627;
    *&buf[16] = &__s;
    *&buf[24] = &v637;
    TuningInSubdirs = TuningPListMgr::loadTuningInSubdirs_(v126, buf, 4, 2u);
    CACFString::~CACFString(&v637);
    CACFString::~CACFString(&__s);
    if (TuningInSubdirs)
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v128 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
      {
        v129 = (*v128 ? *v128 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v129, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "vpTuningHelper.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 671;
          _os_log_impl(&dword_2724B4000, v129, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> failed to find SPV3 HF AU data plist!\n", buf, 0x12u);
        }
      }

      v130 = *(this + 1588);
      if (v130 && ((*v620 & 1) != 0 || v620[1] == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        CALegacyLog::log(v130, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpTuningHelper.cpp", 671, "LoadAUDataPreset", "failed to find SPV3 HF AU data plist!\n");
      }

      *&buf[8] = 0;
      *&buf[16] = 0;
      *buf = &buf[8];
      std::string::basic_string[abi:ne200100]<0>(&__s, "vp_spp_error");
      v637.__r_.__value_.__r.__words[0] = &__s;
      v131 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(buf, &__s, &v637);
      std::string::__assign_external((v131 + 56), "failed to find SPV3 HF AU data plist", 0x24uLL);
      if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__s.__r_.__value_.__l.__data_);
      }

LABEL_419:
      CAAudioStatisticsSendMessage(*(this + 271), *(this + 544), buf, 6);
      std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(*&buf[8]);
      goto LABEL_420;
    }
  }

  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v132 = &__str;
  }

  else
  {
    v132 = __str.__r_.__value_.__r.__words[0];
  }

  v133 = TuningPListMgr::lookupPlist_(*(this + 343), v132, 2u);
  cf.__r_.__value_.__r.__words[0] = v133;
  if (!v133)
  {
    *&buf[8] = 0;
    *&buf[16] = 0;
    *buf = &buf[8];
    std::string::basic_string[abi:ne200100]<0>(&__s, "vp_spp_error");
    v637.__r_.__value_.__r.__words[0] = &__s;
    v134 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(buf, &__s, &v637);
    std::string::__assign_external((v134 + 56), "failed to get SPV3 HF plistDictionary", 0x25uLL);
    if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__s.__r_.__value_.__l.__data_);
    }

    goto LABEL_419;
  }

  CFRetain(v133);
  AUPropAndParamHelper::AddItemToAUPropsList(this + 1546, 0xFA03u, 0, 0, 8uLL, &cf, 1);
  CFRelease(cf.__r_.__value_.__l.__data_);
LABEL_420:
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  v98 = *(this + 1108);
LABEL_423:
  if ((v98 & 0x400000000000000) == 0)
  {
    goto LABEL_462;
  }

  VoiceProcessorV2::LoadAUDataPreset(char const*,char const*,char const*)::$_2::operator()<$_1,unsigned int,$_2,char const*>(&__str, a3, 0x73707033u, "lf");
  v135 = *(this + 343);
  __s.__r_.__value_.__r.__words[0] = CFStringCreateWithCString(0, "AU", 0x600u);
  __s.__r_.__value_.__s.__data_[8] = 1;
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v136 = &__str;
  }

  else
  {
    v136 = __str.__r_.__value_.__r.__words[0];
  }

  v637.__r_.__value_.__r.__words[0] = CFStringCreateWithCString(0, v136, 0x600u);
  v637.__r_.__value_.__s.__data_[8] = 1;
  *buf = &v629;
  *&buf[8] = &v627;
  *&buf[16] = &__s;
  *&buf[24] = &v637;
  TuningInSubdirs = TuningPListMgr::loadTuningInSubdirs_(v135, buf, 4, 2u);
  CACFString::~CACFString(&v637);
  CACFString::~CACFString(&__s);
  if (!TuningInSubdirs)
  {
    goto LABEL_452;
  }

  VoiceProcessorV2::LoadAUDataPreset(char const*,char const*,char const*)::$_3::operator()<$_1,unsigned int,$_2,char const*>(buf, a3, 0x73707033u, "lf");
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  __str = *buf;
  v137 = *(this + 343);
  __s.__r_.__value_.__r.__words[0] = CFStringCreateWithCString(0, "AU", 0x600u);
  __s.__r_.__value_.__s.__data_[8] = 1;
  v138 = (__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__str : __str.__r_.__value_.__r.__words[0];
  v637.__r_.__value_.__r.__words[0] = CFStringCreateWithCString(0, v138, 0x600u);
  v637.__r_.__value_.__s.__data_[8] = 1;
  *buf = &v629;
  *&buf[8] = &v627;
  *&buf[16] = &__s;
  *&buf[24] = &v637;
  TuningInSubdirs = TuningPListMgr::loadTuningInSubdirs_(v137, buf, 4, 2u);
  CACFString::~CACFString(&v637);
  CACFString::~CACFString(&__s);
  if (TuningInSubdirs)
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v139 = VPLogScope(void)::scope;
    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
    {
      v140 = (*v139 ? *v139 : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v140, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "vpTuningHelper.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 716;
        _os_log_impl(&dword_2724B4000, v140, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> failed to find SPV3 LF AU data plist!\n", buf, 0x12u);
      }
    }

    v141 = *(this + 1588);
    if (v141 && ((*v620 & 1) != 0 || v620[1] == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      CALegacyLog::log(v141, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpTuningHelper.cpp", 716, "LoadAUDataPreset", "failed to find SPV3 LF AU data plist!\n");
    }

    *&buf[8] = 0;
    *&buf[16] = 0;
    *buf = &buf[8];
    std::string::basic_string[abi:ne200100]<0>(&__s, "vp_spp_error");
    v637.__r_.__value_.__r.__words[0] = &__s;
    v142 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(buf, &__s, &v637);
    std::string::__assign_external((v142 + 56), "failed to find SPV3 LF AU data plist", 0x24uLL);
    if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__s.__r_.__value_.__l.__data_);
    }
  }

  else
  {
LABEL_452:
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v143 = &__str;
    }

    else
    {
      v143 = __str.__r_.__value_.__r.__words[0];
    }

    v144 = TuningPListMgr::lookupPlist_(*(this + 343), v143, 2u);
    cf.__r_.__value_.__r.__words[0] = v144;
    if (v144)
    {
      CFRetain(v144);
      AUPropAndParamHelper::AddItemToAUPropsList(this + 1549, 0xFA03u, 0, 0, 8uLL, &cf, 1);
      CFRelease(cf.__r_.__value_.__l.__data_);
      goto LABEL_460;
    }

    *&buf[8] = 0;
    *&buf[16] = 0;
    *buf = &buf[8];
    std::string::basic_string[abi:ne200100]<0>(&__s, "vp_spp_error");
    v637.__r_.__value_.__r.__words[0] = &__s;
    v145 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(buf, &__s, &v637);
    std::string::__assign_external((v145 + 56), "failed to get SPV3 LF plistDictionary", 0x25uLL);
    if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__s.__r_.__value_.__l.__data_);
    }
  }

  CAAudioStatisticsSendMessage(*(this + 271), *(this + 544), buf, 6);
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(*&buf[8]);
LABEL_460:
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

LABEL_462:
  v146 = *v621;
  if ((*v621 & 0x10000000000000) == 0)
  {
    goto LABEL_509;
  }

  VoiceProcessorV2::LoadAUDataPreset(char const*,char const*,char const*)::$_0::operator()<$_1,unsigned int,$_2>(buf, a3, 0x6F636E73u);
  v147 = std::string::append(buf, "-fctm", 5uLL);
  v148 = *&v147->__r_.__value_.__l.__data_;
  __str.__r_.__value_.__r.__words[2] = v147->__r_.__value_.__r.__words[2];
  *&__str.__r_.__value_.__l.__data_ = v148;
  v147->__r_.__value_.__l.__size_ = 0;
  v147->__r_.__value_.__r.__words[2] = 0;
  v147->__r_.__value_.__r.__words[0] = 0;
  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  v149 = *(this + 343);
  __s.__r_.__value_.__r.__words[0] = CFStringCreateWithCString(0, "AU", 0x600u);
  __s.__r_.__value_.__s.__data_[8] = 1;
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v150 = &__str;
  }

  else
  {
    v150 = __str.__r_.__value_.__r.__words[0];
  }

  v637.__r_.__value_.__r.__words[0] = CFStringCreateWithCString(0, v150, 0x600u);
  v637.__r_.__value_.__s.__data_[8] = 1;
  *buf = &v629;
  *&buf[8] = &v627;
  *&buf[16] = &__s;
  *&buf[24] = &v637;
  TuningInSubdirs = TuningPListMgr::loadTuningInSubdirs_(v149, buf, 4, 2u);
  CACFString::~CACFString(&v637);
  CACFString::~CACFString(&__s);
  if (TuningInSubdirs)
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v151 = VPLogScope(void)::scope;
    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
    {
      v152 = (*v151 ? *v151 : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v152, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "vpTuningHelper.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 752;
        _os_log_impl(&dword_2724B4000, v152, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> failed to find fixed NS AU data plist! Bypassing NS!\n", buf, 0x12u);
      }
    }

    v153 = *(this + 1588);
    if (v153 && ((*v620 & 1) != 0 || v620[1] == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      CALegacyLog::log(v153, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpTuningHelper.cpp", 752, "LoadAUDataPreset", "failed to find fixed NS AU data plist! Bypassing NS!\n");
    }

LABEL_505:
    *buf = 1;
    AUPropAndParamHelper::AddItemToAUPropsList(v626 + 1039, 0x15u, 0, 0, 4uLL, buf, 1);
    goto LABEL_506;
  }

  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v154 = &__str;
  }

  else
  {
    v154 = __str.__r_.__value_.__r.__words[0];
  }

  v155 = TuningPListMgr::lookupPlist_(*(this + 343), v154, 2u);
  __s.__r_.__value_.__r.__words[0] = v155;
  if (!v155)
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v156 = VPLogScope(void)::scope;
    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
    {
      v157 = (*v156 ? *v156 : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v157, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "vpTuningHelper.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 763;
        _os_log_impl(&dword_2724B4000, v157, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> plist dictionary is invalid! Bypassing NS!\n", buf, 0x12u);
      }
    }

    v158 = *(this + 1588);
    if (v158 && ((*v620 & 1) != 0 || v620[1] == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      CALegacyLog::log(v158, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpTuningHelper.cpp", 763, "LoadAUDataPreset", "plist dictionary is invalid! Bypassing NS!\n");
    }

    goto LABEL_505;
  }

  CFRetain(v155);
  AUPropAndParamHelper::AddItemToAUPropsList(this + 1039, 0x11A8u, 0, 0, 8uLL, &__s, 1);
  CFRelease(__s.__r_.__value_.__l.__data_);
LABEL_506:
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  v146 = *v621;
LABEL_509:
  if ((v146 & 0x200000000000000) == 0)
  {
    goto LABEL_554;
  }

  VoiceProcessorV2::LoadAUDataPreset(char const*,char const*,char const*)::$_0::operator()<$_1,unsigned int,$_2>(&__str, a3, 0x64727662u);
  v159 = *(this + 343);
  __s.__r_.__value_.__r.__words[0] = CFStringCreateWithCString(0, "AU", 0x600u);
  __s.__r_.__value_.__s.__data_[8] = 1;
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v160 = &__str;
  }

  else
  {
    v160 = __str.__r_.__value_.__r.__words[0];
  }

  v637.__r_.__value_.__r.__words[0] = CFStringCreateWithCString(0, v160, 0x600u);
  v637.__r_.__value_.__s.__data_[8] = 1;
  *buf = &v629;
  *&buf[8] = &v627;
  *&buf[16] = &__s;
  *&buf[24] = &v637;
  TuningInSubdirs = TuningPListMgr::loadTuningInSubdirs_(v159, buf, 4, 2u);
  CACFString::~CACFString(&v637);
  CACFString::~CACFString(&__s);
  if (TuningInSubdirs)
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v161 = VPLogScope(void)::scope;
    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
    {
      v162 = (*v161 ? *v161 : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v162, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "vpTuningHelper.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 777;
        _os_log_impl(&dword_2724B4000, v162, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> failed to find reverb suppressor AU data plist! Bypassing Reverb Suppressor!\n", buf, 0x12u);
      }
    }

    v163 = *(this + 1588);
    if (v163 && ((*v620 & 1) != 0 || v620[1] == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      CALegacyLog::log(v163, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpTuningHelper.cpp", 777, "LoadAUDataPreset", "failed to find reverb suppressor AU data plist! Bypassing Reverb Suppressor!\n");
    }

LABEL_550:
    *buf = 1;
    AUPropAndParamHelper::AddItemToAUPropsList(v626 + 1054, 0x15u, 0, 0, 4uLL, buf, 1);
    goto LABEL_551;
  }

  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v164 = &__str;
  }

  else
  {
    v164 = __str.__r_.__value_.__r.__words[0];
  }

  v165 = TuningPListMgr::lookupPlist_(*(this + 343), v164, 2u);
  __s.__r_.__value_.__r.__words[0] = v165;
  if (!v165)
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v166 = VPLogScope(void)::scope;
    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
    {
      v167 = (*v166 ? *v166 : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v167, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "vpTuningHelper.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 789;
        _os_log_impl(&dword_2724B4000, v167, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> plist dictionary is invalid! Bypassing Reverb Suppressor!\n", buf, 0x12u);
      }
    }

    v168 = *(this + 1588);
    if (v168 && ((*v620 & 1) != 0 || v620[1] == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      CALegacyLog::log(v168, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpTuningHelper.cpp", 789, "LoadAUDataPreset", "plist dictionary is invalid! Bypassing Reverb Suppressor!\n");
    }

    goto LABEL_550;
  }

  CFRetain(v165);
  AUPropAndParamHelper::AddItemToAUPropsList(this + 1054, 0x13ECu, 0, 0, 8uLL, &__s, 1);
  CFRelease(__s.__r_.__value_.__l.__data_);
LABEL_551:
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  v146 = *v621;
LABEL_554:
  if ((v146 & 0x20) == 0)
  {
    goto LABEL_599;
  }

  VoiceProcessorV2::LoadAUDataPreset(char const*,char const*,char const*)::$_0::operator()<$_1,unsigned int,$_2>(&__str, a3, 0x73656E73u);
  v169 = *(this + 343);
  __s.__r_.__value_.__r.__words[0] = CFStringCreateWithCString(0, "AU", 0x600u);
  __s.__r_.__value_.__s.__data_[8] = 1;
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v170 = &__str;
  }

  else
  {
    v170 = __str.__r_.__value_.__r.__words[0];
  }

  v637.__r_.__value_.__r.__words[0] = CFStringCreateWithCString(0, v170, 0x600u);
  v637.__r_.__value_.__s.__data_[8] = 1;
  *buf = &v629;
  *&buf[8] = &v627;
  *&buf[16] = &__s;
  *&buf[24] = &v637;
  TuningInSubdirs = TuningPListMgr::loadTuningInSubdirs_(v169, buf, 4, 2u);
  CACFString::~CACFString(&v637);
  CACFString::~CACFString(&__s);
  if (TuningInSubdirs)
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v171 = VPLogScope(void)::scope;
    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
    {
      v172 = (*v171 ? *v171 : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v172, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "vpTuningHelper.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 802;
        _os_log_impl(&dword_2724B4000, v172, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> failed to find mic sense AU data plist! Bypassing Mic Sense!\n", buf, 0x12u);
      }
    }

    v173 = *(this + 1588);
    if (v173 && ((*v620 & 1) != 0 || v620[1] == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      CALegacyLog::log(v173, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpTuningHelper.cpp", 802, "LoadAUDataPreset", "failed to find mic sense AU data plist! Bypassing Mic Sense!\n");
    }

LABEL_595:
    *buf = 1;
    AUPropAndParamHelper::AddItemToAUPropsList(v626 + 898, 0x15u, 0, 0, 4uLL, buf, 1);
    goto LABEL_596;
  }

  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v174 = &__str;
  }

  else
  {
    v174 = __str.__r_.__value_.__r.__words[0];
  }

  v175 = TuningPListMgr::lookupPlist_(*(this + 343), v174, 2u);
  __s.__r_.__value_.__r.__words[0] = v175;
  if (!v175)
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v176 = VPLogScope(void)::scope;
    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
    {
      v177 = (*v176 ? *v176 : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v177, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "vpTuningHelper.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 813;
        _os_log_impl(&dword_2724B4000, v177, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> plist dictionary is invalid! Bypassing Mic Sense!\n", buf, 0x12u);
      }
    }

    v178 = *(this + 1588);
    if (v178 && ((*v620 & 1) != 0 || v620[1] == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      CALegacyLog::log(v178, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpTuningHelper.cpp", 813, "LoadAUDataPreset", "plist dictionary is invalid! Bypassing Mic Sense!\n");
    }

    goto LABEL_595;
  }

  CFRetain(v175);
  AUPropAndParamHelper::AddItemToAUPropsList(this + 898, 0x3E8u, 0, 0, 8uLL, &__s, 1);
  CFRelease(__s.__r_.__value_.__l.__data_);
LABEL_596:
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  v146 = *v621;
LABEL_599:
  if ((v146 & 0x8000000000000) == 0)
  {
    goto LABEL_661;
  }

  memset(&__str, 0, sizeof(__str));
  VoiceProcessorV2::LoadAUDataPreset(char const*,char const*,char const*)::$_0::operator()<$_1,unsigned int,$_2>(&cf, a3, 0x73656E73u);
  v179 = std::string::append(&cf, "-fctm-", 6uLL);
  v180 = *&v179->__r_.__value_.__l.__data_;
  v637.__r_.__value_.__r.__words[2] = v179->__r_.__value_.__r.__words[2];
  *&v637.__r_.__value_.__l.__data_ = v180;
  v179->__r_.__value_.__l.__size_ = 0;
  v179->__r_.__value_.__r.__words[2] = 0;
  v179->__r_.__value_.__r.__words[0] = 0;
  CAX4CCStringNoQuote::CAX4CCStringNoQuote(v633, **(this + 294));
  v181 = strlen(v633);
  v182 = std::string::append(&v637, v633, v181);
  v183 = *&v182->__r_.__value_.__l.__data_;
  __s.__r_.__value_.__r.__words[2] = v182->__r_.__value_.__r.__words[2];
  *&__s.__r_.__value_.__l.__data_ = v183;
  v182->__r_.__value_.__l.__size_ = 0;
  v182->__r_.__value_.__r.__words[2] = 0;
  v182->__r_.__value_.__r.__words[0] = 0;
  v184 = std::string::append(&__s, "-", 1uLL);
  v185 = *&v184->__r_.__value_.__l.__data_;
  *&buf[16] = *(&v184->__r_.__value_.__l + 2);
  *buf = v185;
  v184->__r_.__value_.__l.__size_ = 0;
  v184->__r_.__value_.__r.__words[2] = 0;
  v184->__r_.__value_.__r.__words[0] = 0;
  CAX4CCStringNoQuote::CAX4CCStringNoQuote(v632, **(this + 297));
  v186 = strlen(v632);
  v187 = std::string::append(buf, v632, v186);
  v188 = v187->__r_.__value_.__r.__words[0];
  v634[0] = v187->__r_.__value_.__l.__size_;
  *(v634 + 7) = *(&v187->__r_.__value_.__r.__words[1] + 7);
  v189 = HIBYTE(v187->__r_.__value_.__r.__words[2]);
  v187->__r_.__value_.__l.__size_ = 0;
  v187->__r_.__value_.__r.__words[2] = 0;
  v187->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  __str.__r_.__value_.__r.__words[0] = v188;
  __str.__r_.__value_.__l.__size_ = v634[0];
  *(&__str.__r_.__value_.__r.__words[1] + 7) = *(v634 + 7);
  *(&__str.__r_.__value_.__s + 23) = v189;
  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v637.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v637.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(cf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(cf.__r_.__value_.__l.__data_);
  }

  v190 = *(this + 343);
  __s.__r_.__value_.__r.__words[0] = CFStringCreateWithCString(0, "AU", 0x600u);
  __s.__r_.__value_.__s.__data_[8] = 1;
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v191 = &__str;
  }

  else
  {
    v191 = __str.__r_.__value_.__r.__words[0];
  }

  v637.__r_.__value_.__r.__words[0] = CFStringCreateWithCString(0, v191, 0x600u);
  v637.__r_.__value_.__s.__data_[8] = 1;
  *buf = &v629;
  *&buf[8] = &v627;
  *&buf[16] = &__s;
  *&buf[24] = &v637;
  TuningInSubdirs = TuningPListMgr::loadTuningInSubdirs_(v190, buf, 4, 2u);
  CACFString::~CACFString(&v637);
  CACFString::~CACFString(&__s);
  if (!TuningInSubdirs)
  {
    goto LABEL_638;
  }

  VoiceProcessorV2::LoadAUDataPreset(char const*,char const*,char const*)::$_0::operator()<$_1,unsigned int,$_2>(buf, a3, 0x73656E73u);
  v192 = std::string::append(buf, "-fctm", 5uLL);
  v193 = v192->__r_.__value_.__r.__words[0];
  __s.__r_.__value_.__r.__words[0] = v192->__r_.__value_.__l.__size_;
  *(__s.__r_.__value_.__r.__words + 7) = *(&v192->__r_.__value_.__r.__words[1] + 7);
  v194 = HIBYTE(v192->__r_.__value_.__r.__words[2]);
  v192->__r_.__value_.__l.__size_ = 0;
  v192->__r_.__value_.__r.__words[2] = 0;
  v192->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  __str.__r_.__value_.__r.__words[0] = v193;
  __str.__r_.__value_.__l.__size_ = __s.__r_.__value_.__r.__words[0];
  *(&__str.__r_.__value_.__r.__words[1] + 7) = *(__s.__r_.__value_.__r.__words + 7);
  *(&__str.__r_.__value_.__s + 23) = v194;
  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  v195 = *(this + 343);
  __s.__r_.__value_.__r.__words[0] = CFStringCreateWithCString(0, "AU", 0x600u);
  __s.__r_.__value_.__s.__data_[8] = 1;
  v196 = (__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__str : __str.__r_.__value_.__r.__words[0];
  v637.__r_.__value_.__r.__words[0] = CFStringCreateWithCString(0, v196, 0x600u);
  v637.__r_.__value_.__s.__data_[8] = 1;
  *buf = &v629;
  *&buf[8] = &v627;
  *&buf[16] = &__s;
  *&buf[24] = &v637;
  TuningInSubdirs = TuningPListMgr::loadTuningInSubdirs_(v195, buf, 4, 2u);
  CACFString::~CACFString(&v637);
  CACFString::~CACFString(&__s);
  if (TuningInSubdirs)
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v197 = VPLogScope(void)::scope;
    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
    {
      v198 = (*v197 ? *v197 : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v198, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "vpTuningHelper.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 840;
        _os_log_impl(&dword_2724B4000, v198, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> failed to find mic sense AU data plist! Bypassing Mic Sense!\n", buf, 0x12u);
      }
    }

    v199 = *(this + 1588);
    if (v199 && ((*v620 & 1) != 0 || v620[1] == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      CALegacyLog::log(v199, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpTuningHelper.cpp", 840, "LoadAUDataPreset", "failed to find mic sense AU data plist! Bypassing Mic Sense!\n");
    }
  }

  else
  {
LABEL_638:
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v200 = &__str;
    }

    else
    {
      v200 = __str.__r_.__value_.__r.__words[0];
    }

    v201 = TuningPListMgr::lookupPlist_(*(this + 343), v200, 2u);
    __s.__r_.__value_.__r.__words[0] = v201;
    if (v201)
    {
      CFRetain(v201);
      AUPropAndParamHelper::AddItemToAUPropsList(this + 1036, 0x3E8u, 0, 0, 8uLL, &__s, 1);
      CFRelease(__s.__r_.__value_.__l.__data_);
      goto LABEL_659;
    }

    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v202 = VPLogScope(void)::scope;
    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
    {
      v203 = (*v202 ? *v202 : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v203, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "vpTuningHelper.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 851;
        _os_log_impl(&dword_2724B4000, v203, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> plist dictionary is invalid! Bypassing Mic Sense!\n", buf, 0x12u);
      }
    }

    v204 = *(this + 1588);
    if (v204 && ((*v620 & 1) != 0 || v620[1] == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      CALegacyLog::log(v204, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpTuningHelper.cpp", 851, "LoadAUDataPreset", "plist dictionary is invalid! Bypassing Mic Sense!\n");
    }
  }

  *buf = 1;
  AUPropAndParamHelper::AddItemToAUPropsList(v626 + 1036, 0x15u, 0, 0, 4uLL, buf, 1);
LABEL_659:
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

LABEL_661:
  if ((*(this + 8870) & 8) == 0)
  {
    goto LABEL_705;
  }

  VoiceProcessorV2::LoadAUDataPreset(char const*,char const*,char const*)::$_0::operator()<$_1,unsigned int,$_2>(&__str, a3, 0x63706D31u);
  v205 = *(this + 343);
  __s.__r_.__value_.__r.__words[0] = CFStringCreateWithCString(0, "AU", 0x600u);
  __s.__r_.__value_.__s.__data_[8] = 1;
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v206 = &__str;
  }

  else
  {
    v206 = __str.__r_.__value_.__r.__words[0];
  }

  v637.__r_.__value_.__r.__words[0] = CFStringCreateWithCString(0, v206, 0x600u);
  v637.__r_.__value_.__s.__data_[8] = 1;
  *buf = &v629;
  *&buf[8] = &v627;
  *&buf[16] = &__s;
  *&buf[24] = &v637;
  TuningInSubdirs = TuningPListMgr::loadTuningInSubdirs_(v205, buf, 4, 2u);
  CACFString::~CACFString(&v637);
  CACFString::~CACFString(&__s);
  if (TuningInSubdirs)
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v207 = VPLogScope(void)::scope;
    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
    {
      v208 = (*v207 ? *v207 : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v208, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "vpTuningHelper.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 863;
        _os_log_impl(&dword_2724B4000, v208, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> failed to find cpms AU data plist! Bypassing CPMS!\n", buf, 0x12u);
      }
    }

    v209 = *(this + 1588);
    if (v209 && ((*v620 & 1) != 0 || v620[1] == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      CALegacyLog::log(v209, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpTuningHelper.cpp", 863, "LoadAUDataPreset", "failed to find cpms AU data plist! Bypassing CPMS!\n");
    }
  }

  else
  {
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v210 = &__str;
    }

    else
    {
      v210 = __str.__r_.__value_.__r.__words[0];
    }

    v211 = TuningPListMgr::lookupPlist_(*(this + 343), v210, 2u);
    __s.__r_.__value_.__r.__words[0] = v211;
    if (v211)
    {
      CFRetain(v211);
      AUPropAndParamHelper::AddItemToAUPropsList(this + 1528, 0xFA65u, 0, 0, 8uLL, &__s, 1);
      CFRelease(__s.__r_.__value_.__l.__data_);
      goto LABEL_703;
    }

    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v212 = VPLogScope(void)::scope;
    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
    {
      v213 = (*v212 ? *v212 : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v213, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "vpTuningHelper.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 874;
        _os_log_impl(&dword_2724B4000, v213, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> plist dictionary is invalid! Bypassing CPMS!\n", buf, 0x12u);
      }
    }

    v214 = *(this + 1588);
    if (v214 && ((*v620 & 1) != 0 || v620[1] == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      CALegacyLog::log(v214, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpTuningHelper.cpp", 874, "LoadAUDataPreset", "plist dictionary is invalid! Bypassing CPMS!\n");
    }
  }

  *buf = 1;
  AUPropAndParamHelper::AddItemToAUPropsList(v626 + 1528, 0x15u, 0, 0, 4uLL, buf, 1);
LABEL_703:
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

LABEL_705:
  v215 = *v621;
  if ((*v621 & 0x100000000000000) == 0)
  {
    goto LABEL_750;
  }

  VoiceProcessorV2::LoadAUDataPreset(char const*,char const*,char const*)::$_0::operator()<$_1,unsigned int,$_2>(&__str, a3, 0x6B737570u);
  v216 = *(this + 343);
  __s.__r_.__value_.__r.__words[0] = CFStringCreateWithCString(0, "AU", 0x600u);
  __s.__r_.__value_.__s.__data_[8] = 1;
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v217 = &__str;
  }

  else
  {
    v217 = __str.__r_.__value_.__r.__words[0];
  }

  v637.__r_.__value_.__r.__words[0] = CFStringCreateWithCString(0, v217, 0x600u);
  v637.__r_.__value_.__s.__data_[8] = 1;
  *buf = &v629;
  *&buf[8] = &v627;
  *&buf[16] = &__s;
  *&buf[24] = &v637;
  TuningInSubdirs = TuningPListMgr::loadTuningInSubdirs_(v216, buf, 4, 2u);
  CACFString::~CACFString(&v637);
  CACFString::~CACFString(&__s);
  if (TuningInSubdirs)
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v218 = VPLogScope(void)::scope;
    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(3, VPLogScope(void)::scope, 0))
    {
      v219 = (*v218 ? *v218 : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v219, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "vpTuningHelper.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 888;
        _os_log_impl(&dword_2724B4000, v219, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> failed to find KeystrokeSuppressor AU data plist! Bypassing KeyStrokeSuppressor!\n", buf, 0x12u);
      }
    }

    v220 = *(this + 1588);
    if (v220 && ((*v620 & 1) != 0 || v620[1] == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      CALegacyLog::log(v220, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpTuningHelper.cpp", 888, "LoadAUDataPreset", "failed to find KeystrokeSuppressor AU data plist! Bypassing KeyStrokeSuppressor!\n");
    }

LABEL_746:
    *buf = 1;
    AUPropAndParamHelper::AddItemToAUPropsList(v626 + 1051, 0x15u, 0, 0, 4uLL, buf, 1);
    goto LABEL_747;
  }

  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v221 = &__str;
  }

  else
  {
    v221 = __str.__r_.__value_.__r.__words[0];
  }

  v222 = TuningPListMgr::lookupPlist_(*(this + 343), v221, 2u);
  __s.__r_.__value_.__r.__words[0] = v222;
  if (!v222)
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v223 = VPLogScope(void)::scope;
    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
    {
      v224 = (*v223 ? *v223 : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v224, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "vpTuningHelper.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 900;
        _os_log_impl(&dword_2724B4000, v224, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> plist dictionary is invalid! Bypassing KeystrokeSuppressor!\n", buf, 0x12u);
      }
    }

    v225 = *(this + 1588);
    if (v225 && ((*v620 & 1) != 0 || v620[1] == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      CALegacyLog::log(v225, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpTuningHelper.cpp", 900, "LoadAUDataPreset", "plist dictionary is invalid! Bypassing KeystrokeSuppressor!\n");
    }

    goto LABEL_746;
  }

  CFRetain(v222);
  AUPropAndParamHelper::AddItemToAUPropsList(this + 1051, 0x3E9u, 0, 0, 8uLL, &__s, 1);
  CFRelease(__s.__r_.__value_.__l.__data_);
LABEL_747:
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  v215 = *v621;
LABEL_750:
  if ((v215 & 0x1000000000) == 0)
  {
    goto LABEL_852;
  }

  VoiceProcessorV2::LoadAUDataPreset(char const*,char const*,char const*)::$_0::operator()<$_1,unsigned int,$_2>(&__str, a3, 0x6E6E6574u);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__s, __str.__r_.__value_.__l.__data_, __str.__r_.__value_.__l.__size_);
  }

  else
  {
    __s = __str;
  }

  if (*(this + 2262) == 1)
  {
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __str.__r_.__value_.__l.__size_;
    }

    std::string::basic_string[abi:ne200100](buf, size + 5);
    if (buf[23] >= 0)
    {
      v227 = buf;
    }

    else
    {
      v227 = *buf;
    }

    if (size)
    {
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v228 = &__str;
      }

      else
      {
        v228 = __str.__r_.__value_.__r.__words[0];
      }

      memmove(v227, v228, size);
    }

    strcpy(&v227[size], "-mcsb");
    if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__s.__r_.__value_.__l.__data_);
    }

    __s = *buf;
    v229 = *(this + 343);
    v637.__r_.__value_.__r.__words[0] = CFStringCreateWithCString(0, "AU", 0x600u);
    v637.__r_.__value_.__s.__data_[8] = 1;
    if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_s = &__s;
    }

    else
    {
      p_s = __s.__r_.__value_.__r.__words[0];
    }

    cf.__r_.__value_.__r.__words[0] = CFStringCreateWithCString(0, p_s, 0x600u);
    cf.__r_.__value_.__s.__data_[8] = 1;
    *buf = &v629;
    *&buf[8] = &v627;
    *&buf[16] = &v637;
    *&buf[24] = &cf;
    TuningInSubdirs = TuningPListMgr::loadTuningInSubdirs_(v229, buf, 4, 2u);
    CACFString::~CACFString(&cf);
    CACFString::~CACFString(&v637);
    if (!TuningInSubdirs)
    {
      goto LABEL_810;
    }

    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v231 = VPLogScope(void)::scope;
    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(2, VPLogScope(void)::scope, 0))
    {
      v232 = (*v231 ? *v231 : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v232, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "vpTuningHelper.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 923;
        _os_log_impl(&dword_2724B4000, v232, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  >vp> failed to find NeuralNet AU data plist for multi channel speech bubble! Attempting to load standard AUNeuralNet data plist!", buf, 0x12u);
      }
    }

    v233 = *(this + 1588);
    if (v233 && ((*v620 & 1) != 0 || v620[1] == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      CALegacyLog::log(v233, 2, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpTuningHelper.cpp", 923, "LoadAUDataPreset", "failed to find NeuralNet AU data plist for multi channel speech bubble! Attempting to load standard AUNeuralNet data plist!");
    }

    std::string::operator=(&__s, &__str);
    v234 = *(this + 343);
    v637.__r_.__value_.__r.__words[0] = CFStringCreateWithCString(0, "AU", 0x600u);
    v637.__r_.__value_.__s.__data_[8] = 1;
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v235 = &__str;
    }

    else
    {
      v235 = __str.__r_.__value_.__r.__words[0];
    }
  }

  else
  {
    v234 = *(this + 343);
    v637.__r_.__value_.__r.__words[0] = CFStringCreateWithCString(0, "AU", 0x600u);
    v637.__r_.__value_.__s.__data_[8] = 1;
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v235 = &__str;
    }

    else
    {
      v235 = __str.__r_.__value_.__r.__words[0];
    }
  }

  cf.__r_.__value_.__r.__words[0] = CFStringCreateWithCString(0, v235, 0x600u);
  cf.__r_.__value_.__s.__data_[8] = 1;
  *buf = &v629;
  *&buf[8] = &v627;
  *&buf[16] = &v637;
  *&buf[24] = &cf;
  TuningInSubdirs = TuningPListMgr::loadTuningInSubdirs_(v234, buf, 4, 2u);
  CACFString::~CACFString(&cf);
  CACFString::~CACFString(&v637);
  if (TuningInSubdirs)
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v236 = VPLogScope(void)::scope;
    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
    {
      v237 = (*v236 ? *v236 : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v237, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "vpTuningHelper.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 937;
        _os_log_impl(&dword_2724B4000, v237, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> failed to find NeuralNet AU data plist! Bypassing AUNeuralNet!", buf, 0x12u);
      }
    }

    v238 = *(this + 1588);
    if (v238 && ((*v620 & 1) != 0 || v620[1] == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      CALegacyLog::log(v238, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpTuningHelper.cpp", 937, "LoadAUDataPreset", "failed to find NeuralNet AU data plist! Bypassing AUNeuralNet!");
    }

    goto LABEL_847;
  }

LABEL_810:
  if (*(this + 2262) == 1)
  {
    v239 = __s.__r_.__value_.__r.__words[0];
    v240 = (__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0;
    v241 = &__s;
  }

  else
  {
    v239 = __str.__r_.__value_.__r.__words[0];
    v240 = (__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0;
    v241 = &__str;
  }

  if (v240)
  {
    v242 = v239;
  }

  else
  {
    v242 = v241;
  }

  v243 = TuningPListMgr::lookupPlist_(*(this + 343), v242, 2u);
  v637.__r_.__value_.__r.__words[0] = v243;
  if (v243)
  {
    CFRetain(v243);
    AUPropAndParamHelper::AddItemToAUPropsList(this + 991, 0xE71u, 0, 0, 8uLL, &v637, 1);
    CFRelease(v637.__r_.__value_.__l.__data_);
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v244 = VPLogScope(void)::scope;
    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
    {
      v245 = (*v244 ? *v244 : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v245, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315394;
        *&buf[4] = "vpTuningHelper.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 949;
        _os_log_impl(&dword_2724B4000, v245, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> Found plist for AUNeuralNet", buf, 0x12u);
      }
    }

    v246 = *(this + 1588);
    if (v246 && ((*v620 & 1) != 0 || v620[1] == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      CALegacyLog::log(v246, 5, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpTuningHelper.cpp", 949, "LoadAUDataPreset", "Found plist for AUNeuralNet");
    }

    goto LABEL_848;
  }

  if (VPLogScope(void)::once != -1)
  {
    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
  }

  v247 = VPLogScope(void)::scope;
  if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
  {
    v248 = (*v247 ? *v247 : MEMORY[0x277D86220]);
    if (os_log_type_enabled(v248, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "vpTuningHelper.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 951;
      _os_log_impl(&dword_2724B4000, v248, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> plist dictionary is invalid! Bypassing AUNeuralNet!", buf, 0x12u);
    }
  }

  v249 = *(this + 1588);
  if (v249 && ((*v620 & 1) != 0 || v620[1] == 1))
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    CALegacyLog::log(v249, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpTuningHelper.cpp", 951, "LoadAUDataPreset", "plist dictionary is invalid! Bypassing AUNeuralNet!");
  }

LABEL_847:
  *buf = 1;
  AUPropAndParamHelper::AddItemToAUPropsList(v626 + 991, 0x15u, 0, 0, 4uLL, buf, 1);
LABEL_848:
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

LABEL_852:
  v250 = 1835361379;
  v616 = a3;
  if (*(this + 2260) & 1) != 0 || (v620[680])
  {
    v614 = 0;
    v251 = 1;
LABEL_855:
    v252 = 0;
    v615 = (v620 + 655);
    v617 = v251 ^ 1;
    while (1)
    {
      v253 = dword_27275A5E8[v252];
      if (v253 == 60)
      {
        if ((v620[687] & 1) == 0)
        {
          if ((*(this + 2262) & 1) != 0 || (*(this + 2288) != 1 ? (v254 = *v615) : (v254 = VoiceProcessorV2::GetAutomaticChatFlavor(this)), v254 == 2))
          {
            v259 = v617;
            if (*(this + 16) != 3)
            {
              v259 = 1;
            }

            if ((v259 & 1) != 0 || (*(*this + 504))(this, **(this + 294), *(this + 600), **(this + 297), *(this + 601), 0) != 1886745455 && (*(*this + 512))(this, **(this + 294), *(this + 600), **(this + 297), *(this + 601), 0) != 1886745449)
            {
              goto LABEL_981;
            }
          }

          else if ((v620[687] & 1) == 0 && (*(this + 2262) & 1) == 0)
          {
            if (*(this + 2288) == 1)
            {
              AutomaticChatFlavor = VoiceProcessorV2::GetAutomaticChatFlavor(this);
            }

            else
            {
              AutomaticChatFlavor = *v615;
            }

            v301 = v614;
            if (AutomaticChatFlavor != 1)
            {
              v301 = 0;
            }

            if (v301)
            {
              goto LABEL_981;
            }
          }
        }
      }

      else if (v253 >= 0x47)
      {
        std::__throw_out_of_range[abi:ne200100]("bitset test argument out of range");
      }

      if (((*(v621 + ((v253 >> 3) & 0x1FFFFFF8)) >> v253) & 1) == 0 || v253 == 62)
      {
        goto LABEL_981;
      }

      v255 = **(this + 297);
      if ((v255 & 0xFFFFFFF7) == 0x63637764)
      {
        if (v255 == 1667463020)
        {
          v256 = &VoiceProcessorV2::VPUplinkIndexToSubTypeArray;
          v257 = 71;
          while (*v256 != v253)
          {
            v256 += 18;
            if (!--v257)
            {
              v258 = 0;
              goto LABEL_883;
            }
          }

          v258 = v256[1];
LABEL_883:
          (*(*this + 504))(this, **(this + 294), *(this + 600), 1667463020, *(this + 601), 0);
          if (!VoiceProcessorV2::LoadContinuityCapturePresetOverrides(this, v253, v258, 0x6363776Cu, v250, v261, v262, v263, v613))
          {
            goto LABEL_981;
          }
        }

        v264 = &VoiceProcessorV2::VPUplinkIndexToSubTypeArray;
        v265 = 71;
        while (*v264 != v253)
        {
          v264 += 18;
          if (!--v265)
          {
            v266 = 0;
            goto LABEL_889;
          }
        }

        v266 = v264[1];
LABEL_889:
        (*(*this + 504))(this, **(this + 294), *(this + 600), **(this + 297), *(this + 601), 0);
        if (!VoiceProcessorV2::LoadContinuityCapturePresetOverrides(this, v253, v266, 0x63636170u, v250, v267, v268, v269, v613))
        {
          goto LABEL_981;
        }
      }

      v270 = &VoiceProcessorV2::VPUplinkIndexToSubTypeArray;
      v271 = 71;
      while (*v270 != v253)
      {
        v270 += 18;
        if (!--v271)
        {
          v272 = 0;
          goto LABEL_895;
        }
      }

      v272 = v270[1];
LABEL_895:
      v273 = (*(*this + 504))(this, **(this + 294), *(this + 600), **(this + 297), *(this + 601), 0);
      v274 = (*(*this + 512))(this, **(this + 294), *(this + 600), **(this + 297), *(this + 601), 0);
      VoiceProcessorV2::LoadAUDataPreset(char const*,char const*,char const*)::$_4::operator()<$_1,unsigned int,$_2,unsigned int,unsigned int,unsigned int>(&__str, v616, v272, v273, v274, v250, 1);
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v275 = &__str;
      }

      else
      {
        v275 = __str.__r_.__value_.__r.__words[0];
      }

      v276 = TuningPListMgr::lookupPlist_(*(this + 343), v275, 1u);
      cf.__r_.__value_.__r.__words[0] = v276;
      if (v276)
      {
        goto LABEL_899;
      }

      v282 = *(this + 343);
      __s.__r_.__value_.__r.__words[0] = CFStringCreateWithCString(0, "AU", 0x600u);
      __s.__r_.__value_.__s.__data_[8] = 1;
      v283 = (__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__str : __str.__r_.__value_.__r.__words[0];
      v637.__r_.__value_.__r.__words[0] = CFStringCreateWithCString(0, v283, 0x600u);
      v637.__r_.__value_.__s.__data_[8] = 1;
      *buf = &v629;
      *&buf[8] = &v627;
      *&buf[16] = &__s;
      *&buf[24] = &v637;
      TuningInSubdirs = TuningPListMgr::loadTuningInSubdirs_(v282, buf, 4, 1u);
      CACFString::~CACFString(&v637);
      CACFString::~CACFString(&__s);
      if (TuningInSubdirs)
      {
        break;
      }

      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v289 = &__str;
      }

      else
      {
        v289 = __str.__r_.__value_.__r.__words[0];
      }

      v276 = TuningPListMgr::lookupPlist_(*(this + 343), v289, 1u);
      cf.__r_.__value_.__r.__words[0] = v276;
      if (v276)
      {
        goto LABEL_899;
      }

LABEL_979:
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

LABEL_981:
      if (++v252 == 16)
      {
        goto LABEL_988;
      }
    }

    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v284 = VPLogScope(void)::scope;
    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
    {
      v285 = (*v284 ? *v284 : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v285, OS_LOG_TYPE_ERROR))
      {
        CAX4CCStringNoQuote::CAX4CCStringNoQuote(&__s, v250);
        v286 = &VoiceProcessorV2::VPUplinkIndexToSubTypeArray;
        v287 = 71;
        while (*v286 != v253)
        {
          v286 += 18;
          if (!--v287)
          {
            v288 = 0;
            goto LABEL_962;
          }
        }

        v288 = (v286 + 2);
LABEL_962:
        v302 = __str.__r_.__value_.__r.__words[0];
        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v302 = &__str;
        }

        *buf = 136316162;
        *&buf[4] = "vpTuningHelper.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 1102;
        *&buf[18] = 2080;
        *&buf[20] = &__s;
        *&buf[28] = 2080;
        *&buf[30] = v302;
        *&buf[38] = 2080;
        v636 = v288;
        _os_log_impl(&dword_2724B4000, v285, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> could not find '%s' override preset %s for %s!", buf, 0x30u);
      }
    }

    v303 = *(this + 1588);
    if (v303 && ((*v620 & 1) != 0 || v620[1] == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v304 = VPLogScope(void)::scope;
      CAX4CCStringNoQuote::CAX4CCStringNoQuote(buf, v250);
      v305 = &VoiceProcessorV2::VPUplinkIndexToSubTypeArray;
      v306 = 71;
      while (*v305 != v253)
      {
        v305 += 18;
        if (!--v306)
        {
          v307 = 0;
          goto LABEL_975;
        }
      }

      v307 = (v305 + 2);
LABEL_975:
      v308 = __str.__r_.__value_.__r.__words[0];
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v308 = &__str;
      }

      CALegacyLog::log(v303, 1, v304, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpTuningHelper.cpp", 1102, "LoadAUDataPreset", "could not find '%s' override preset %s for %s!", buf, v308, v307);
    }

    v276 = cf.__r_.__value_.__r.__words[0];
    if (!cf.__r_.__value_.__r.__words[0])
    {
      goto LABEL_979;
    }

LABEL_899:
    CFRetain(v276);
    AUPropAndParamHelper::AddItemToAUPropsList(this + 3 * v253 + 883, 0, 0, 0, 8uLL, &cf, 1);
    CFRelease(cf.__r_.__value_.__l.__data_);
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v277 = VPLogScope(void)::scope;
    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(4, VPLogScope(void)::scope, 0))
    {
      v278 = (*v277 ? *v277 : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v278, OS_LOG_TYPE_INFO))
      {
        CAX4CCStringNoQuote::CAX4CCStringNoQuote(&__s, v250);
        v279 = &VoiceProcessorV2::VPUplinkIndexToSubTypeArray;
        v280 = 71;
        while (*v279 != v253)
        {
          v279 += 18;
          if (!--v280)
          {
            v281 = 0;
            goto LABEL_933;
          }
        }

        v281 = (v279 + 2);
LABEL_933:
        v290 = __str.__r_.__value_.__r.__words[0];
        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v290 = &__str;
        }

        *buf = 136316162;
        *&buf[4] = "vpTuningHelper.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 1116;
        *&buf[18] = 2080;
        *&buf[20] = &__s;
        *&buf[28] = 2080;
        *&buf[30] = v290;
        *&buf[38] = 2080;
        v636 = v281;
        _os_log_impl(&dword_2724B4000, v278, OS_LOG_TYPE_INFO, "%25s:%-5d  <vp> found '%s' override preset %s for %s", buf, 0x30u);
      }
    }

    v291 = *(this + 1588);
    if (v291 && ((*v620 & 1) != 0 || v620[1] == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v292 = VPLogScope(void)::scope;
      CAX4CCStringNoQuote::CAX4CCStringNoQuote(buf, v250);
      v293 = &VoiceProcessorV2::VPUplinkIndexToSubTypeArray;
      v294 = 71;
      while (*v293 != v253)
      {
        v293 += 18;
        if (!--v294)
        {
          v295 = 0;
          goto LABEL_946;
        }
      }

      v295 = (v293 + 2);
LABEL_946:
      v296 = __str.__r_.__value_.__r.__words[0];
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v296 = &__str;
      }

      CALegacyLog::log(v291, 4, v292, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpTuningHelper.cpp", 1116, "LoadAUDataPreset", "found '%s' override preset %s for %s", buf, v296, v295);
    }

    v297 = &VoiceProcessorV2::VPUplinkIndexToSubTypeArray;
    v298 = 71;
    while (*v297 != v253)
    {
      v297 += 18;
      if (!--v298)
      {
        v299 = 0;
        goto LABEL_954;
      }
    }

    v299 = (v297 + 2);
LABEL_954:
    std::string::basic_string[abi:ne200100]<0>(buf, v299);
    __s.__r_.__value_.__r.__words[0] = buf;
    v300 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(this + 581, buf, &__s);
    std::string::operator=((v300 + 5), &__str);
    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    goto LABEL_979;
  }

  if (((*(this + 2261) & 1) != 0 || !*(this + 20) && *(this + 61) == 2) && VoiceProcessorV2::GetFarEndVoiceMixChannelCount(this) >= 2)
  {
    v251 = 0;
    v250 = 1936744803;
    v614 = 1;
    goto LABEL_855;
  }

LABEL_988:
  LOBYTE(v634[0]) = 0;
  v309 = v616;
  if (*(this + 2260) == 1)
  {
    *buf = this;
    *&buf[8] = &TuningInSubdirs;
    *&buf[16] = &v629;
    *&buf[24] = &v627;
    *&buf[32] = v634;
    v636 = &v626;
    v310 = (*(*this + 504))(this, **(this + 294), *(this + 600), **(this + 297), *(this + 601), 0x16D656463);
    v311 = (*(*this + 512))(this, **(this + 294), *(this + 600), **(this + 297), *(this + 601), 0x16D656463);
    for (i = 0; i != 7; ++i)
    {
      v313 = dword_27275A628[i];
      if (v313 >= 0x40)
      {
        std::__throw_out_of_range[abi:ne200100]("bitset test argument out of range");
      }

      if ((*(this + 1108) >> v313) & 1) != 0 && ((0x5FFFFFFFC7FFFFFFuLL >> v313))
      {
        v314 = &VoiceProcessorV2::VPDownlinkIndexToSubTypeArray;
        v315 = 64;
        while (*v314 != v313)
        {
          v314 += 18;
          if (!--v315)
          {
            v316 = 0;
            goto LABEL_998;
          }
        }

        v316 = v314[1];
LABEL_998:
        VoiceProcessorV2::LoadAUDataPreset(char const*,char const*,char const*)::$_4::operator()<$_1,unsigned int,$_2,unsigned int,unsigned int,unsigned int>(&__str, v616, v316, v310, v311, 0x6D656463u, 0);
        VoiceProcessorV2::LoadAUDataPreset(char const*,char const*,char const*)::$_10::operator()(buf, &__str, v313 | 0x100000000);
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }
      }
    }

    VoiceProcessorV2::LoadAUDataPreset(char const*,char const*,char const*)::$_4::operator()<$_1,$_7,$_2,unsigned int,unsigned int,unsigned int>(&__str, v616, 0x61787664u, v310, v311, 0);
    VoiceProcessorV2::LoadAUDataPreset(char const*,char const*,char const*)::$_10::operator()(buf, &__str, 0);
    VoiceProcessorV2::LoadAUDataPreset(char const*,char const*,char const*)::$_4::operator()<$_1,$_7,$_2,unsigned int,unsigned int,unsigned int>(&__s, v616, 0x61787675u, v310, v311, 1);
    VoiceProcessorV2::LoadAUDataPreset(char const*,char const*,char const*)::$_10::operator()(buf, &__s, 0);
    if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__s.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }
  }

  if (v620[680] == 1 && (*(this + 8865) & 0x80) != 0)
  {
    v317 = (*(*this + 504))(this, **(this + 294), *(this + 600), **(this + 297), *(this + 601), 0);
    v318 = (*(*this + 512))(this, **(this + 294), *(this + 600), **(this + 297), *(this + 601), 0);
    VoiceProcessorV2::LoadAUDataPreset(char const*,char const*,char const*)::$_4::operator()<$_1,unsigned int,$_2,unsigned int,unsigned int,unsigned int>(&__str, v616, 0x6479646Bu, v317, v318, 0x6D656463u, 0);
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v319 = &__str;
    }

    else
    {
      v319 = __str.__r_.__value_.__r.__words[0];
    }

    v320 = TuningPListMgr::lookupPlist_(*(this + 343), v319, 1u);
    cf.__r_.__value_.__r.__words[0] = v320;
    if (v320)
    {
      goto LABEL_1011;
    }

    v328 = *(this + 343);
    __s.__r_.__value_.__r.__words[0] = CFStringCreateWithCString(0, "AU", 0x600u);
    __s.__r_.__value_.__s.__data_[8] = 1;
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v329 = &__str;
    }

    else
    {
      v329 = __str.__r_.__value_.__r.__words[0];
    }

    v637.__r_.__value_.__r.__words[0] = CFStringCreateWithCString(0, v329, 0x600u);
    v637.__r_.__value_.__s.__data_[8] = 1;
    *buf = &v629;
    *&buf[8] = &v627;
    *&buf[16] = &__s;
    *&buf[24] = &v637;
    TuningInSubdirs = TuningPListMgr::loadTuningInSubdirs_(v328, buf, 4, 1u);
    CACFString::~CACFString(&v637);
    CACFString::~CACFString(&__s);
    if (TuningInSubdirs)
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v330 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(2, VPLogScope(void)::scope, 0))
      {
        v331 = (*v330 ? *v330 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v331, OS_LOG_TYPE_DEFAULT))
        {
          CAX4CCStringNoQuote::CAX4CCStringNoQuote(&__s, 0x6D656463u);
          v332 = __str.__r_.__value_.__r.__words[0];
          if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v332 = &__str;
          }

          *buf = 136316162;
          *&buf[4] = "vpTuningHelper.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 1256;
          *&buf[18] = 2080;
          *&buf[20] = &__s;
          *&buf[28] = 2080;
          *&buf[30] = v332;
          *&buf[38] = 2080;
          v636 = "(DL-)DynDucker";
          _os_log_impl(&dword_2724B4000, v331, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  >vp> could not find '%s' override preset %s for %s!", buf, 0x30u);
        }
      }

      v333 = *(this + 1588);
      if (v333 && ((*v620 & 1) != 0 || v620[1] == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v334 = VPLogScope(void)::scope;
        CAX4CCStringNoQuote::CAX4CCStringNoQuote(buf, 0x6D656463u);
        v335 = __str.__r_.__value_.__r.__words[0];
        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v335 = &__str;
        }

        CALegacyLog::log(v333, 2, v334, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpTuningHelper.cpp", 1256, "operator()", "could not find '%s' override preset %s for %s!", buf, v335, "(DL-)DynDucker");
      }
    }

    else
    {
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v336 = &__str;
      }

      else
      {
        v336 = __str.__r_.__value_.__r.__words[0];
      }

      v320 = TuningPListMgr::lookupPlist_(*(this + 343), v336, 1u);
      cf.__r_.__value_.__r.__words[0] = v320;
      if (v320)
      {
LABEL_1011:
        CFRetain(v320);
        AUPropAndParamHelper::AddItemToAUPropsList(this + 1420, 0, 0, 0, 8uLL, &cf, 1);
        CFRelease(cf.__r_.__value_.__l.__data_);
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v321 = VPLogScope(void)::scope;
        if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(4, VPLogScope(void)::scope, 0))
        {
          v322 = (*v321 ? *v321 : MEMORY[0x277D86220]);
          if (os_log_type_enabled(v322, OS_LOG_TYPE_INFO))
          {
            CAX4CCStringNoQuote::CAX4CCStringNoQuote(&__s, 0x6D656463u);
            v323 = __str.__r_.__value_.__r.__words[0];
            if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v323 = &__str;
            }

            *buf = 136316162;
            *&buf[4] = "vpTuningHelper.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 1271;
            *&buf[18] = 2080;
            *&buf[20] = &__s;
            *&buf[28] = 2080;
            *&buf[30] = v323;
            *&buf[38] = 2080;
            v636 = "(DL-)DynDucker";
            _os_log_impl(&dword_2724B4000, v322, OS_LOG_TYPE_INFO, "%25s:%-5d  <vp> found '%s' override preset %s for %s", buf, 0x30u);
          }
        }

        v324 = *(this + 1588);
        if (v324 && ((*v620 & 1) != 0 || v620[1] == 1))
        {
          if (VPLogScope(void)::once != -1)
          {
            dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
          }

          v325 = VPLogScope(void)::scope;
          CAX4CCStringNoQuote::CAX4CCStringNoQuote(buf, 0x6D656463u);
          v326 = __str.__r_.__value_.__r.__words[0];
          if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v326 = &__str;
          }

          CALegacyLog::log(v324, 4, v325, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpTuningHelper.cpp", 1271, "operator()", "found '%s' override preset %s for %s", buf, v326, "(DL-)DynDucker");
        }

        std::string::basic_string[abi:ne200100]<0>(buf, "(DL-)DynDucker");
        __s.__r_.__value_.__r.__words[0] = buf;
        v327 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(this + 576, buf, &__s);
        std::string::operator=((v327 + 5), &__str);
        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }

        LOBYTE(v634[0]) = 1;
LABEL_1076:
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        goto LABEL_1078;
      }
    }

    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v337 = VPLogScope(void)::scope;
    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(2, VPLogScope(void)::scope, 0))
    {
      v338 = (*v337 ? *v337 : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v338, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        *&buf[4] = "vpTuningHelper.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 1282;
        *&buf[18] = 2080;
        *&buf[20] = "(DL-)DynDucker";
        _os_log_impl(&dword_2724B4000, v338, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  >vp> Bypassing %s!\n", buf, 0x1Cu);
      }
    }

    v339 = *(this + 1588);
    if (v339 && ((*v620 & 1) != 0 || v620[1] == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      CALegacyLog::log(v339, 2, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpTuningHelper.cpp", 1282, "operator()", "Bypassing %s!\n", "(DL-)DynDucker");
    }

    *buf = 1;
    AUPropAndParamHelper::AddItemToAUPropsList(v626 + 1420, 0x15u, 0, 0, 4uLL, buf, 1);
    goto LABEL_1076;
  }

LABEL_1078:
  if ((*(this + 2261) & 1) == 0 && (*(this + 20) || *(this + 61) != 2) || (*(this + 8867) & 1) == 0)
  {
    goto LABEL_1153;
  }

  v340 = (*(*this + 504))(this, **(this + 294), *(this + 600), **(this + 297), *(this + 601), 0);
  v341 = (*(*this + 512))(this, **(this + 294), *(this + 600), **(this + 297), *(this + 601), 0);
  VoiceProcessorV2::LoadAUDataPreset(char const*,char const*,char const*)::$_4::operator()<$_1,unsigned int,$_2,unsigned int,unsigned int,unsigned int>(&__str, v616, 0x61787463u, v340, v341, 0x73706163u, 0);
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v342 = &__str;
  }

  else
  {
    v342 = __str.__r_.__value_.__r.__words[0];
  }

  v343 = TuningPListMgr::lookupPlist_(*(this + 343), v342, 1u);
  cf.__r_.__value_.__r.__words[0] = v343;
  if (v343)
  {
    goto LABEL_1084;
  }

  v351 = *(this + 343);
  __s.__r_.__value_.__r.__words[0] = CFStringCreateWithCString(0, "AU", 0x600u);
  __s.__r_.__value_.__s.__data_[8] = 1;
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v352 = &__str;
  }

  else
  {
    v352 = __str.__r_.__value_.__r.__words[0];
  }

  v637.__r_.__value_.__r.__words[0] = CFStringCreateWithCString(0, v352, 0x600u);
  v637.__r_.__value_.__s.__data_[8] = 1;
  *buf = &v629;
  *&buf[8] = &v627;
  *&buf[16] = &__s;
  *&buf[24] = &v637;
  TuningInSubdirs = TuningPListMgr::loadTuningInSubdirs_(v351, buf, 4, 1u);
  CACFString::~CACFString(&v637);
  CACFString::~CACFString(&__s);
  if (TuningInSubdirs)
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v353 = VPLogScope(void)::scope;
    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(2, VPLogScope(void)::scope, 0))
    {
      v354 = (*v353 ? *v353 : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v354, OS_LOG_TYPE_DEFAULT))
      {
        CAX4CCStringNoQuote::CAX4CCStringNoQuote(&__s, 0x73706163u);
        v355 = __str.__r_.__value_.__r.__words[0];
        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v355 = &__str;
        }

        *buf = 136316162;
        *&buf[4] = "vpTuningHelper.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 1316;
        *&buf[18] = 2080;
        *&buf[20] = &__s;
        *&buf[28] = 2080;
        *&buf[30] = v355;
        *&buf[38] = 2080;
        v636 = "(DL-)XTC";
        _os_log_impl(&dword_2724B4000, v354, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  >vp> could not find '%s' override preset %s for %s!", buf, 0x30u);
      }
    }

    v356 = *(this + 1588);
    if (v356 && ((*v620 & 1) != 0 || v620[1] == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v357 = VPLogScope(void)::scope;
      CAX4CCStringNoQuote::CAX4CCStringNoQuote(buf, 0x73706163u);
      v358 = __str.__r_.__value_.__r.__words[0];
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v358 = &__str;
      }

      CALegacyLog::log(v356, 2, v357, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpTuningHelper.cpp", 1316, "operator()", "could not find '%s' override preset %s for %s!", buf, v358, "(DL-)XTC");
    }

    goto LABEL_1135;
  }

  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v359 = &__str;
  }

  else
  {
    v359 = __str.__r_.__value_.__r.__words[0];
  }

  v343 = TuningPListMgr::lookupPlist_(*(this + 343), v359, 1u);
  cf.__r_.__value_.__r.__words[0] = v343;
  if (!v343)
  {
LABEL_1135:
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v360 = VPLogScope(void)::scope;
    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(2, VPLogScope(void)::scope, 0))
    {
      v361 = (*v360 ? *v360 : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v361, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        *&buf[4] = "vpTuningHelper.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 1340;
        *&buf[18] = 2080;
        *&buf[20] = "(DL-)XTC";
        _os_log_impl(&dword_2724B4000, v361, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  >vp> Bypassing %s!\n", buf, 0x1Cu);
      }
    }

    v362 = *(this + 1588);
    if (v362 && ((*v620 & 1) != 0 || v620[1] == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      CALegacyLog::log(v362, 2, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpTuningHelper.cpp", 1340, "operator()", "Bypassing %s!\n", "(DL-)XTC");
    }

    *buf = 1;
    AUPropAndParamHelper::AddItemToAUPropsList(v626 + 1447, 0x15u, 0, 0, 4uLL, buf, 1);
    goto LABEL_1151;
  }

LABEL_1084:
  CFRetain(v343);
  AUPropAndParamHelper::AddItemToAUPropsList(this + 1447, 0, 0, 0, 8uLL, &cf, 1);
  CFRelease(cf.__r_.__value_.__l.__data_);
  if (VPLogScope(void)::once != -1)
  {
    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
  }

  v344 = VPLogScope(void)::scope;
  if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(4, VPLogScope(void)::scope, 0))
  {
    v345 = (*v344 ? *v344 : MEMORY[0x277D86220]);
    if (os_log_type_enabled(v345, OS_LOG_TYPE_INFO))
    {
      CAX4CCStringNoQuote::CAX4CCStringNoQuote(&__s, 0x73706163u);
      v346 = __str.__r_.__value_.__r.__words[0];
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v346 = &__str;
      }

      *buf = 136316162;
      *&buf[4] = "vpTuningHelper.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 1331;
      *&buf[18] = 2080;
      *&buf[20] = &__s;
      *&buf[28] = 2080;
      *&buf[30] = v346;
      *&buf[38] = 2080;
      v636 = "(DL-)XTC";
      _os_log_impl(&dword_2724B4000, v345, OS_LOG_TYPE_INFO, "%25s:%-5d  <vp> found '%s' override preset %s for %s", buf, 0x30u);
    }
  }

  v347 = *(this + 1588);
  if (v347 && ((*v620 & 1) != 0 || v620[1] == 1))
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v348 = VPLogScope(void)::scope;
    CAX4CCStringNoQuote::CAX4CCStringNoQuote(buf, 0x73706163u);
    v349 = __str.__r_.__value_.__r.__words[0];
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v349 = &__str;
    }

    CALegacyLog::log(v347, 4, v348, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpTuningHelper.cpp", 1331, "operator()", "found '%s' override preset %s for %s", buf, v349, "(DL-)XTC");
  }

  std::string::basic_string[abi:ne200100]<0>(buf, "(DL-)XTC");
  __s.__r_.__value_.__r.__words[0] = buf;
  v350 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(this + 576, buf, &__s);
  std::string::operator=((v350 + 5), &__str);
  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

LABEL_1151:
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

LABEL_1153:
  if ((*(this + 4695) & 8) != 0)
  {
    VoiceProcessorV2::LoadAUDataPreset(char const*,char const*,char const*)::$_0::operator()<$_1,unsigned int,$_2>(&__str, v616, 0x6E6E6574u);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__s, __str.__r_.__value_.__l.__data_, __str.__r_.__value_.__l.__size_);
    }

    else
    {
      __s = __str;
    }

    if (*(this + 2262) == 1)
    {
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v363 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v363 = __str.__r_.__value_.__l.__size_;
      }

      std::string::basic_string[abi:ne200100](buf, v363 + 5);
      if (buf[23] >= 0)
      {
        v364 = buf;
      }

      else
      {
        v364 = *buf;
      }

      if (v363)
      {
        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v365 = &__str;
        }

        else
        {
          v365 = __str.__r_.__value_.__r.__words[0];
        }

        memmove(v364, v365, v363);
      }

      strcpy(&v364[v363], "-scsb");
      if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__s.__r_.__value_.__l.__data_);
      }

      __s = *buf;
      v366 = *(this + 343);
      v637.__r_.__value_.__r.__words[0] = CFStringCreateWithCString(0, "AU", 0x600u);
      v637.__r_.__value_.__s.__data_[8] = 1;
      if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v367 = &__s;
      }

      else
      {
        v367 = __s.__r_.__value_.__r.__words[0];
      }

      cf.__r_.__value_.__r.__words[0] = CFStringCreateWithCString(0, v367, 0x600u);
      cf.__r_.__value_.__s.__data_[8] = 1;
      *buf = &v629;
      *&buf[8] = &v627;
      *&buf[16] = &v637;
      *&buf[24] = &cf;
      TuningInSubdirs = TuningPListMgr::loadTuningInSubdirs_(v366, buf, 4, 2u);
      CACFString::~CACFString(&cf);
      CACFString::~CACFString(&v637);
      if (!TuningInSubdirs)
      {
        goto LABEL_1228;
      }

      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v368 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
      {
        v369 = (*v368 ? *v368 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v369, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "vpTuningHelper.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 1378;
          _os_log_impl(&dword_2724B4000, v369, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> failed to find NeuralNet AU data plist for single channel speech bubble! Attempting to load standard AUNeuralNet data plist!", buf, 0x12u);
        }
      }

      v370 = *(this + 1588);
      if (v370 && ((*v620 & 1) != 0 || v620[1] == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        CALegacyLog::log(v370, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpTuningHelper.cpp", 1378, "LoadAUDataPreset", "failed to find NeuralNet AU data plist for single channel speech bubble! Attempting to load standard AUNeuralNet data plist!");
      }

      std::string::operator=(&__s, &__str);
      v371 = *(this + 343);
      v637.__r_.__value_.__r.__words[0] = CFStringCreateWithCString(0, "AU", 0x600u);
      v637.__r_.__value_.__s.__data_[8] = 1;
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v372 = &__str;
      }

      else
      {
        v372 = __str.__r_.__value_.__r.__words[0];
      }
    }

    else
    {
      if ((*(*this + 640))(this))
      {
        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v373 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v373 = __str.__r_.__value_.__l.__size_;
        }

        std::string::basic_string[abi:ne200100](buf, v373 + 5);
        if (buf[23] >= 0)
        {
          v374 = buf;
        }

        else
        {
          v374 = *buf;
        }

        if (v373)
        {
          if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v375 = &__str;
          }

          else
          {
            v375 = __str.__r_.__value_.__r.__words[0];
          }

          memmove(v374, v375, v373);
        }

        strcpy(&v374[v373], "-scrc");
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        __str = *buf;
      }

      v371 = *(this + 343);
      v637.__r_.__value_.__r.__words[0] = CFStringCreateWithCString(0, "AU", 0x600u);
      v637.__r_.__value_.__s.__data_[8] = 1;
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v372 = &__str;
      }

      else
      {
        v372 = __str.__r_.__value_.__r.__words[0];
      }
    }

    cf.__r_.__value_.__r.__words[0] = CFStringCreateWithCString(0, v372, 0x600u);
    cf.__r_.__value_.__s.__data_[8] = 1;
    *buf = &v629;
    *&buf[8] = &v627;
    *&buf[16] = &v637;
    *&buf[24] = &cf;
    TuningInSubdirs = TuningPListMgr::loadTuningInSubdirs_(v371, buf, 4, 2u);
    CACFString::~CACFString(&cf);
    CACFString::~CACFString(&v637);
    if (TuningInSubdirs)
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v376 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
      {
        v377 = (*v376 ? *v376 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v377, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "vpTuningHelper.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 1396;
          _os_log_impl(&dword_2724B4000, v377, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> failed to find NeuralNet AU data plist! Bypassing AUNeuralNet!", buf, 0x12u);
        }
      }

      v378 = *(this + 1588);
      if (v378 && ((*v620 & 1) != 0 || v620[1] == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        CALegacyLog::log(v378, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpTuningHelper.cpp", 1396, "LoadAUDataPreset", "failed to find NeuralNet AU data plist! Bypassing AUNeuralNet!");
      }

      goto LABEL_1265;
    }

LABEL_1228:
    if (*(this + 2262) == 1)
    {
      v379 = __s.__r_.__value_.__r.__words[0];
      v380 = (__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0;
      v381 = &__s;
    }

    else
    {
      v379 = __str.__r_.__value_.__r.__words[0];
      v380 = (__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0;
      v381 = &__str;
    }

    if (v380)
    {
      v382 = v379;
    }

    else
    {
      v382 = v381;
    }

    v383 = TuningPListMgr::lookupPlist_(*(this + 343), v382, 2u);
    v637.__r_.__value_.__r.__words[0] = v383;
    if (v383)
    {
      CFRetain(v383);
      AUPropAndParamHelper::AddItemToAUPropsList(this + 1060, 0xE71u, 0, 0, 8uLL, &v637, 1);
      CFRelease(v637.__r_.__value_.__l.__data_);
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v384 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
      {
        v385 = (*v384 ? *v384 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v385, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          *&buf[4] = "vpTuningHelper.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 1408;
          _os_log_impl(&dword_2724B4000, v385, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> Found plist for AUNeuralNet", buf, 0x12u);
        }
      }

      v386 = *(this + 1588);
      if (v386 && ((*v620 & 1) != 0 || v620[1] == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        CALegacyLog::log(v386, 5, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpTuningHelper.cpp", 1408, "LoadAUDataPreset", "Found plist for AUNeuralNet");
      }

      goto LABEL_1266;
    }

    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v387 = VPLogScope(void)::scope;
    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
    {
      v388 = (*v387 ? *v387 : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v388, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "vpTuningHelper.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 1410;
        _os_log_impl(&dword_2724B4000, v388, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> plist dictionary is invalid! Bypassing AUNeuralNet!", buf, 0x12u);
      }
    }

    v389 = *(this + 1588);
    if (v389 && ((*v620 & 1) != 0 || v620[1] == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      CALegacyLog::log(v389, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpTuningHelper.cpp", 1410, "LoadAUDataPreset", "plist dictionary is invalid! Bypassing AUNeuralNet!");
    }

LABEL_1265:
    *buf = 1;
    AUPropAndParamHelper::AddItemToAUPropsList(v626 + 1060, 0x15u, 0, 0, 4uLL, buf, 1);
LABEL_1266:
    if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__s.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }
  }

  v390 = 0;
  v391 = "-";
  do
  {
    v392 = dword_27275A644[v390];
    v393 = &VoiceProcessorV2::VPUplinkIndexToSubTypeArray;
    v394 = 71;
    while (*v393 != v392)
    {
      v393 += 18;
      if (!--v394)
      {
        v395 = 0;
        goto LABEL_1276;
      }
    }

    v395 = v393[1];
LABEL_1276:
    if (v392 >= 0x47)
    {
      std::__throw_out_of_range[abi:ne200100]("bitset test argument out of range");
    }

    if (((*(v621 + ((v392 >> 3) & 0x1FFFFFF8)) >> v392) & 1) != 0 && v392 != 62 && *(this + 2262) == 1)
    {
      v396 = (*(*this + 504))(this, **(this + 294), *(this + 600), **(this + 297), *(this + 601), 0x16D706564);
      v397 = (*(*this + 512))(this, **(this + 294), *(this + 600), **(this + 297), *(this + 601), 0x16D706564);
      memset(&cf, 0, sizeof(cf));
      v623 = v629;
      v624 = v630;
      if (v630 == 1 && v629)
      {
        CFRetain(v629);
      }

      memset(&__str, 0, sizeof(__str));
      if (v309)
      {
        v398 = std::string::basic_string[abi:ne200100]<0>(&__s, v309);
        v399 = std::string::append(v398, v391, 1uLL);
        v400 = *&v399->__r_.__value_.__l.__data_;
        *&buf[16] = *(&v399->__r_.__value_.__l + 2);
        *buf = v400;
        v399->__r_.__value_.__l.__size_ = 0;
        v399->__r_.__value_.__r.__words[2] = 0;
        v399->__r_.__value_.__r.__words[0] = 0;
        if (buf[23] >= 0)
        {
          v401 = buf;
        }

        else
        {
          v401 = *buf;
        }

        if (buf[23] >= 0)
        {
          v402 = buf[23];
        }

        else
        {
          v402 = *&buf[8];
        }

        std::string::append(&__str, v401, v402);
        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }

        if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__s.__r_.__value_.__l.__data_);
        }
      }

      v403 = bswap32(v395);
      *v633 = v403;
      v618 = v403 - 32;
      if (v618 > 0x5E || ((v403 >> 8) - 32) > 0x5E || ((v403 << 8 >> 24) - 32) > 0x5E || ((v403 >> 24) - 32) > 0x5E)
      {
        std::to_string(&v637, v395);
      }

      else
      {
        v633[4] = 0;
        std::string::basic_string[abi:ne200100]<0>(&v637, v633);
      }

      v404 = std::string::insert(&v637, 0, "vp-aufx-", 8uLL);
      v405 = *&v404->__r_.__value_.__l.__data_;
      __s.__r_.__value_.__r.__words[2] = v404->__r_.__value_.__r.__words[2];
      *&__s.__r_.__value_.__l.__data_ = v405;
      v404->__r_.__value_.__l.__size_ = 0;
      v404->__r_.__value_.__r.__words[2] = 0;
      v404->__r_.__value_.__r.__words[0] = 0;
      v406 = std::string::append(&__s, "-appl", 5uLL);
      v407 = *&v406->__r_.__value_.__l.__data_;
      *&buf[16] = *(&v406->__r_.__value_.__l + 2);
      *buf = v407;
      v406->__r_.__value_.__l.__size_ = 0;
      v406->__r_.__value_.__r.__words[2] = 0;
      v406->__r_.__value_.__r.__words[0] = 0;
      if (buf[23] >= 0)
      {
        v408 = buf;
      }

      else
      {
        v408 = *buf;
      }

      if (buf[23] >= 0)
      {
        v409 = buf[23];
      }

      else
      {
        v409 = *&buf[8];
      }

      std::string::append(&__str, v408, v409);
      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }

      if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__s.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v637.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v637.__r_.__value_.__l.__data_);
      }

      v410 = bswap32(v396);
      if (v396)
      {
        LODWORD(v637.__r_.__value_.__l.__data_) = v410;
        if ((v410 - 32) > 0x5E || ((v410 >> 8) - 32) > 0x5E || ((v410 << 8 >> 24) - 32) > 0x5E || ((v410 >> 24) - 32) > 0x5E)
        {
          std::to_string(&__s, v396);
        }

        else
        {
          v637.__r_.__value_.__s.__data_[4] = 0;
          std::string::basic_string[abi:ne200100]<0>(&__s, &v637);
        }

        v411 = std::string::insert(&__s, 0, v391, 1uLL);
        v412 = *&v411->__r_.__value_.__l.__data_;
        *&buf[16] = *(&v411->__r_.__value_.__l + 2);
        *buf = v412;
        v411->__r_.__value_.__l.__size_ = 0;
        v411->__r_.__value_.__r.__words[2] = 0;
        v411->__r_.__value_.__r.__words[0] = 0;
        if (buf[23] >= 0)
        {
          v413 = buf;
        }

        else
        {
          v413 = *buf;
        }

        if (buf[23] >= 0)
        {
          v414 = buf[23];
        }

        else
        {
          v414 = *&buf[8];
        }

        std::string::append(&__str, v413, v414);
        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }

        if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__s.__r_.__value_.__l.__data_);
        }
      }

      v415 = bswap32(v397);
      if (v397)
      {
        LODWORD(v637.__r_.__value_.__l.__data_) = v415;
        if ((v415 - 32) > 0x5E || ((v415 >> 8) - 32) > 0x5E || ((v415 << 8 >> 24) - 32) > 0x5E || ((v415 >> 24) - 32) > 0x5E)
        {
          std::to_string(&__s, v397);
        }

        else
        {
          v637.__r_.__value_.__s.__data_[4] = 0;
          std::string::basic_string[abi:ne200100]<0>(&__s, &v637);
        }

        v416 = std::string::insert(&__s, 0, v391, 1uLL);
        v417 = *&v416->__r_.__value_.__l.__data_;
        *&buf[16] = *(&v416->__r_.__value_.__l + 2);
        *buf = v417;
        v416->__r_.__value_.__l.__size_ = 0;
        v416->__r_.__value_.__r.__words[2] = 0;
        v416->__r_.__value_.__r.__words[0] = 0;
        if (buf[23] >= 0)
        {
          v418 = buf;
        }

        else
        {
          v418 = *buf;
        }

        if (buf[23] >= 0)
        {
          v419 = buf[23];
        }

        else
        {
          v419 = *&buf[8];
        }

        std::string::append(&__str, v418, v419);
        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }

        if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__s.__r_.__value_.__l.__data_);
        }
      }

      strcpy(&v637, "mped");
      v420 = std::string::basic_string[abi:ne200100]<0>(&__s, &v637);
      v421 = std::string::insert(v420, 0, "-ulnk-", 6uLL);
      v422 = *&v421->__r_.__value_.__l.__data_;
      *&buf[16] = *(&v421->__r_.__value_.__l + 2);
      *buf = v422;
      v421->__r_.__value_.__l.__size_ = 0;
      v421->__r_.__value_.__r.__words[2] = 0;
      v421->__r_.__value_.__r.__words[0] = 0;
      if (buf[23] >= 0)
      {
        v423 = buf;
      }

      else
      {
        v423 = *buf;
      }

      if (buf[23] >= 0)
      {
        v424 = buf[23];
      }

      else
      {
        v424 = *&buf[8];
      }

      std::string::append(&__str, v423, v424);
      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }

      __val = v395;
      if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__s.__r_.__value_.__l.__data_);
      }

      v425 = v391;
      v426 = *(this + 343);
      __s.__r_.__value_.__r.__words[0] = CFStringCreateWithCString(0, "AU", 0x600u);
      __s.__r_.__value_.__s.__data_[8] = 1;
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v427 = &__str;
      }

      else
      {
        v427 = __str.__r_.__value_.__r.__words[0];
      }

      v637.__r_.__value_.__r.__words[0] = CFStringCreateWithCString(0, v427, 0x600u);
      v637.__r_.__value_.__s.__data_[8] = 1;
      *buf = &v623;
      *&buf[8] = &__s;
      *&buf[16] = &v637;
      v428 = TuningPListMgr::loadTuningInSubdirs_(v426, buf, 3, 1u);
      CACFString::~CACFString(&v637);
      CACFString::~CACFString(&__s);
      if (!v428)
      {
        std::string::operator=(&cf, &__str);
      }

      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      TuningInSubdirs = v428;
      CACFString::~CACFString(&v623);
      if (!TuningInSubdirs)
      {
        goto LABEL_1604;
      }

      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v429 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
      {
        v430 = (*v429 ? *v429 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v430, OS_LOG_TYPE_DEBUG))
        {
          *&buf[1] = v403;
          if (v618 > 0x5E || ((v403 >> 8) - 32) > 0x5E || ((v403 << 8 >> 24) - 32) > 0x5E || ((v403 >> 24) - 32) > 0x5E)
          {
            std::to_string(&__str, __val);
          }

          else
          {
            strcpy(&buf[5], "'");
            buf[0] = 39;
            std::string::basic_string[abi:ne200100]<0>(&__str, buf);
          }

          v431 = &__str;
          if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v431 = __str.__r_.__value_.__r.__words[0];
          }

          *buf = 136315650;
          *&buf[4] = "vpTuningHelper.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 1492;
          *&buf[18] = 2080;
          *&buf[20] = v431;
          _os_log_impl(&dword_2724B4000, v430, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> failed to find device specific aupreset for %s!", buf, 0x1Cu);
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }
        }
      }

      v432 = *(this + 1588);
      if (v432 && ((*v620 & 1) != 0 || v620[1] == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v433 = VPLogScope(void)::scope;
        *(&__str.__r_.__value_.__l.__data_ + 1) = v403;
        if (v618 > 0x5E || ((v403 >> 8) - 32) > 0x5E || ((v403 << 8 >> 24) - 32) > 0x5E || ((v403 >> 24) - 32) > 0x5E)
        {
          std::to_string(buf, __val);
        }

        else
        {
          *(__str.__r_.__value_.__r.__words + 5) = 39;
          __str.__r_.__value_.__s.__data_[0] = 39;
          std::string::basic_string[abi:ne200100]<0>(buf, &__str);
        }

        v434 = buf;
        if (buf[23] < 0)
        {
          v434 = *buf;
        }

        CALegacyLog::log(v432, 5, v433, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpTuningHelper.cpp", 1492, "LoadAUDataPreset", "failed to find device specific aupreset for %s!", v434);
        v391 = v425;
        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }
      }

      memset(buf, 0, 24);
      v435 = std::string::basic_string[abi:ne200100]<0>(&__s, "gen");
      v436 = std::string::append(v435, v391, 1uLL);
      v437 = *&v436->__r_.__value_.__l.__data_;
      __str.__r_.__value_.__r.__words[2] = v436->__r_.__value_.__r.__words[2];
      *&__str.__r_.__value_.__l.__data_ = v437;
      v436->__r_.__value_.__l.__size_ = 0;
      v436->__r_.__value_.__r.__words[2] = 0;
      v436->__r_.__value_.__r.__words[0] = 0;
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v438 = &__str;
      }

      else
      {
        v438 = __str.__r_.__value_.__r.__words[0];
      }

      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v439 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v439 = __str.__r_.__value_.__l.__size_;
      }

      std::string::append(buf, v438, v439);
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__s.__r_.__value_.__l.__data_);
      }

      *v633 = v403;
      if (v618 > 0x5E || ((v403 >> 8) - 32) > 0x5E || ((v403 << 8 >> 24) - 32) > 0x5E || ((v403 >> 24) - 32) > 0x5E)
      {
        std::to_string(&v637, __val);
      }

      else
      {
        v633[4] = 0;
        std::string::basic_string[abi:ne200100]<0>(&v637, v633);
      }

      v440 = std::string::insert(&v637, 0, "vp-aufx-", 8uLL);
      v441 = *&v440->__r_.__value_.__l.__data_;
      __s.__r_.__value_.__r.__words[2] = v440->__r_.__value_.__r.__words[2];
      *&__s.__r_.__value_.__l.__data_ = v441;
      v440->__r_.__value_.__l.__size_ = 0;
      v440->__r_.__value_.__r.__words[2] = 0;
      v440->__r_.__value_.__r.__words[0] = 0;
      v442 = std::string::append(&__s, "-appl", 5uLL);
      v443 = *&v442->__r_.__value_.__l.__data_;
      __str.__r_.__value_.__r.__words[2] = v442->__r_.__value_.__r.__words[2];
      *&__str.__r_.__value_.__l.__data_ = v443;
      v442->__r_.__value_.__l.__size_ = 0;
      v442->__r_.__value_.__r.__words[2] = 0;
      v442->__r_.__value_.__r.__words[0] = 0;
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v444 = &__str;
      }

      else
      {
        v444 = __str.__r_.__value_.__r.__words[0];
      }

      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v445 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v445 = __str.__r_.__value_.__l.__size_;
      }

      std::string::append(buf, v444, v445);
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__s.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v637.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v637.__r_.__value_.__l.__data_);
        if (!v396)
        {
          goto LABEL_1442;
        }
      }

      else if (!v396)
      {
        goto LABEL_1442;
      }

      LODWORD(v637.__r_.__value_.__l.__data_) = v410;
      if ((v410 - 32) > 0x5E || ((v410 >> 8) - 32) > 0x5E || ((v410 << 8 >> 24) - 32) > 0x5E || ((v410 >> 24) - 32) > 0x5E)
      {
        std::to_string(&__s, v396);
      }

      else
      {
        v637.__r_.__value_.__s.__data_[4] = 0;
        std::string::basic_string[abi:ne200100]<0>(&__s, &v637);
      }

      v446 = std::string::insert(&__s, 0, v391, 1uLL);
      v447 = *&v446->__r_.__value_.__l.__data_;
      __str.__r_.__value_.__r.__words[2] = v446->__r_.__value_.__r.__words[2];
      *&__str.__r_.__value_.__l.__data_ = v447;
      v446->__r_.__value_.__l.__size_ = 0;
      v446->__r_.__value_.__r.__words[2] = 0;
      v446->__r_.__value_.__r.__words[0] = 0;
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v448 = &__str;
      }

      else
      {
        v448 = __str.__r_.__value_.__r.__words[0];
      }

      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v449 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v449 = __str.__r_.__value_.__l.__size_;
      }

      std::string::append(buf, v448, v449);
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__s.__r_.__value_.__l.__data_);
        if (!v397)
        {
          goto LABEL_1460;
        }

        goto LABEL_1443;
      }

LABEL_1442:
      if (!v397)
      {
        goto LABEL_1460;
      }

LABEL_1443:
      LODWORD(v637.__r_.__value_.__l.__data_) = v415;
      if ((v415 - 32) > 0x5E || ((v415 >> 8) - 32) > 0x5E || ((v415 << 8 >> 24) - 32) > 0x5E || ((v415 >> 24) - 32) > 0x5E)
      {
        std::to_string(&__s, v397);
      }

      else
      {
        v637.__r_.__value_.__s.__data_[4] = 0;
        std::string::basic_string[abi:ne200100]<0>(&__s, &v637);
      }

      v450 = std::string::insert(&__s, 0, v391, 1uLL);
      v451 = *&v450->__r_.__value_.__l.__data_;
      __str.__r_.__value_.__r.__words[2] = v450->__r_.__value_.__r.__words[2];
      *&__str.__r_.__value_.__l.__data_ = v451;
      v450->__r_.__value_.__l.__size_ = 0;
      v450->__r_.__value_.__r.__words[2] = 0;
      v450->__r_.__value_.__r.__words[0] = 0;
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v452 = &__str;
      }

      else
      {
        v452 = __str.__r_.__value_.__r.__words[0];
      }

      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v453 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v453 = __str.__r_.__value_.__l.__size_;
      }

      std::string::append(buf, v452, v453);
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__s.__r_.__value_.__l.__data_);
      }

LABEL_1460:
      strcpy(&v637, "mped");
      v454 = std::string::basic_string[abi:ne200100]<0>(&__s, &v637);
      v455 = std::string::insert(v454, 0, "-ulnk-", 6uLL);
      v456 = *&v455->__r_.__value_.__l.__data_;
      __str.__r_.__value_.__r.__words[2] = v455->__r_.__value_.__r.__words[2];
      *&__str.__r_.__value_.__l.__data_ = v456;
      v455->__r_.__value_.__l.__size_ = 0;
      v455->__r_.__value_.__r.__words[2] = 0;
      v455->__r_.__value_.__r.__words[0] = 0;
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v457 = &__str;
      }

      else
      {
        v457 = __str.__r_.__value_.__r.__words[0];
      }

      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v458 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v458 = __str.__r_.__value_.__l.__size_;
      }

      std::string::append(buf, v457, v458);
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__s.__r_.__value_.__l.__data_);
      }

      if (buf[23] >= 0)
      {
        v459 = buf;
      }

      else
      {
        v459 = *buf;
      }

      Tuning = TuningPListMgr::loadTuning(*(this + 343), "Generic", "AU", v459, 1);
      if (!Tuning)
      {
        std::string::operator=(&cf, buf);
      }

      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }

      TuningInSubdirs = Tuning;
      if (Tuning)
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v461 = VPLogScope(void)::scope;
        if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
        {
          v462 = (*v461 ? *v461 : MEMORY[0x277D86220]);
          if (os_log_type_enabled(v462, OS_LOG_TYPE_DEBUG))
          {
            *&buf[1] = v403;
            if (v618 > 0x5E || ((v403 >> 8) - 32) > 0x5E || ((v403 << 8 >> 24) - 32) > 0x5E || ((v403 >> 24) - 32) > 0x5E)
            {
              std::to_string(&__str, __val);
            }

            else
            {
              strcpy(&buf[5], "'");
              buf[0] = 39;
              std::string::basic_string[abi:ne200100]<0>(&__str, buf);
            }

            v463 = &__str;
            if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v463 = __str.__r_.__value_.__r.__words[0];
            }

            *buf = 136315650;
            *&buf[4] = "vpTuningHelper.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 1495;
            *&buf[18] = 2080;
            *&buf[20] = v463;
            _os_log_impl(&dword_2724B4000, v462, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> failed to find route specific aupreset for %s!", buf, 0x1Cu);
            if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__str.__r_.__value_.__l.__data_);
            }
          }
        }

        v464 = *(this + 1588);
        if (v464 && ((*v620 & 1) != 0 || v620[1] == 1))
        {
          if (VPLogScope(void)::once != -1)
          {
            dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
          }

          v465 = VPLogScope(void)::scope;
          *(&__str.__r_.__value_.__l.__data_ + 1) = v403;
          if (v618 > 0x5E || ((v403 >> 8) - 32) > 0x5E || ((v403 << 8 >> 24) - 32) > 0x5E || ((v403 >> 24) - 32) > 0x5E)
          {
            std::to_string(buf, __val);
          }

          else
          {
            *(__str.__r_.__value_.__r.__words + 5) = 39;
            __str.__r_.__value_.__s.__data_[0] = 39;
            std::string::basic_string[abi:ne200100]<0>(buf, &__str);
          }

          v466 = buf;
          if (buf[23] < 0)
          {
            v466 = *buf;
          }

          CALegacyLog::log(v464, 5, v465, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpTuningHelper.cpp", 1495, "LoadAUDataPreset", "failed to find route specific aupreset for %s!", v466);
          if ((buf[23] & 0x80000000) != 0)
          {
            operator delete(*buf);
          }
        }

        memset(buf, 0, 24);
        v467 = std::string::basic_string[abi:ne200100]<0>(&__s, "gen");
        v468 = std::string::append(v467, v391, 1uLL);
        v469 = *&v468->__r_.__value_.__l.__data_;
        __str.__r_.__value_.__r.__words[2] = v468->__r_.__value_.__r.__words[2];
        *&__str.__r_.__value_.__l.__data_ = v469;
        v468->__r_.__value_.__l.__size_ = 0;
        v468->__r_.__value_.__r.__words[2] = 0;
        v468->__r_.__value_.__r.__words[0] = 0;
        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v470 = &__str;
        }

        else
        {
          v470 = __str.__r_.__value_.__r.__words[0];
        }

        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v471 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v471 = __str.__r_.__value_.__l.__size_;
        }

        std::string::append(buf, v470, v471);
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__s.__r_.__value_.__l.__data_);
        }

        *v633 = v403;
        if (v618 > 0x5E || ((v403 >> 8) - 32) > 0x5E || ((v403 << 8 >> 24) - 32) > 0x5E || ((v403 >> 24) - 32) > 0x5E)
        {
          std::to_string(&v637, __val);
        }

        else
        {
          v633[4] = 0;
          std::string::basic_string[abi:ne200100]<0>(&v637, v633);
        }

        v472 = std::string::insert(&v637, 0, "vp-aufx-", 8uLL);
        v473 = *&v472->__r_.__value_.__l.__data_;
        __s.__r_.__value_.__r.__words[2] = v472->__r_.__value_.__r.__words[2];
        *&__s.__r_.__value_.__l.__data_ = v473;
        v472->__r_.__value_.__l.__size_ = 0;
        v472->__r_.__value_.__r.__words[2] = 0;
        v472->__r_.__value_.__r.__words[0] = 0;
        v474 = std::string::append(&__s, "-appl", 5uLL);
        v475 = *&v474->__r_.__value_.__l.__data_;
        __str.__r_.__value_.__r.__words[2] = v474->__r_.__value_.__r.__words[2];
        *&__str.__r_.__value_.__l.__data_ = v475;
        v474->__r_.__value_.__l.__size_ = 0;
        v474->__r_.__value_.__r.__words[2] = 0;
        v474->__r_.__value_.__r.__words[0] = 0;
        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v476 = &__str;
        }

        else
        {
          v476 = __str.__r_.__value_.__r.__words[0];
        }

        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v477 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v477 = __str.__r_.__value_.__l.__size_;
        }

        std::string::append(buf, v476, v477);
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__s.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v637.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v637.__r_.__value_.__l.__data_);
        }

        strcpy(&v637, "mped");
        v478 = std::string::basic_string[abi:ne200100]<0>(&__s, &v637);
        v479 = std::string::insert(v478, 0, "-ulnk-", 6uLL);
        v480 = *&v479->__r_.__value_.__l.__data_;
        __str.__r_.__value_.__r.__words[2] = v479->__r_.__value_.__r.__words[2];
        *&__str.__r_.__value_.__l.__data_ = v480;
        v479->__r_.__value_.__l.__size_ = 0;
        v479->__r_.__value_.__r.__words[2] = 0;
        v479->__r_.__value_.__r.__words[0] = 0;
        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v481 = &__str;
        }

        else
        {
          v481 = __str.__r_.__value_.__r.__words[0];
        }

        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v482 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v482 = __str.__r_.__value_.__l.__size_;
        }

        std::string::append(buf, v481, v482);
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__s.__r_.__value_.__l.__data_);
        }

        if (buf[23] >= 0)
        {
          v483 = buf;
        }

        else
        {
          v483 = *buf;
        }

        v484 = TuningPListMgr::loadTuning(*(this + 343), "Generic", "AU", v483, 1);
        if (!v484)
        {
          std::string::operator=(&cf, buf);
        }

        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }

        TuningInSubdirs = v484;
        if (v484)
        {
          if (VPLogScope(void)::once != -1)
          {
            dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
          }

          v485 = VPLogScope(void)::scope;
          if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
          {
            v486 = (*v485 ? *v485 : MEMORY[0x277D86220]);
            if (os_log_type_enabled(v486, OS_LOG_TYPE_DEBUG))
            {
              *&buf[1] = v403;
              if (v618 > 0x5E || ((v403 >> 8) - 32) > 0x5E || ((v403 << 8 >> 24) - 32) > 0x5E || ((v403 >> 24) - 32) > 0x5E)
              {
                std::to_string(&__str, __val);
              }

              else
              {
                strcpy(&buf[5], "'");
                buf[0] = 39;
                std::string::basic_string[abi:ne200100]<0>(&__str, buf);
              }

              v487 = &__str;
              if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                v487 = __str.__r_.__value_.__r.__words[0];
              }

              *buf = 136315650;
              *&buf[4] = "vpTuningHelper.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 1500;
              *&buf[18] = 2080;
              *&buf[20] = v487;
              _os_log_impl(&dword_2724B4000, v486, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> failed to find generic aupreset for %s!", buf, 0x1Cu);
              if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__str.__r_.__value_.__l.__data_);
              }
            }
          }

          v488 = *(this + 1588);
          if (v488 && ((*v620 & 1) != 0 || v620[1] == 1))
          {
            if (VPLogScope(void)::once != -1)
            {
              dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
            }

            v489 = VPLogScope(void)::scope;
            *(&__str.__r_.__value_.__l.__data_ + 1) = v403;
            if (v618 > 0x5E || ((v403 >> 8) - 32) > 0x5E || ((v403 << 8 >> 24) - 32) > 0x5E || ((v403 >> 24) - 32) > 0x5E)
            {
              std::to_string(buf, __val);
            }

            else
            {
              *(__str.__r_.__value_.__r.__words + 5) = 39;
              __str.__r_.__value_.__s.__data_[0] = 39;
              std::string::basic_string[abi:ne200100]<0>(buf, &__str);
            }

            v490 = buf;
            if (buf[23] < 0)
            {
              v490 = *buf;
            }

            CALegacyLog::log(v488, 5, v489, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpTuningHelper.cpp", 1500, "LoadAUDataPreset", "failed to find generic aupreset for %s!", v490);
            if ((buf[23] & 0x80000000) != 0)
            {
              operator delete(*buf);
            }
          }

          if (TuningInSubdirs)
          {
            if (VPLogScope(void)::once != -1)
            {
              dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
            }

            v491 = VPLogScope(void)::scope;
            v309 = v616;
            if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
            {
              v492 = (*v491 ? *v491 : MEMORY[0x277D86220]);
              if (os_log_type_enabled(v492, OS_LOG_TYPE_ERROR))
              {
                *&buf[1] = v403;
                if (v618 > 0x5E || ((v403 >> 8) - 32) > 0x5E || ((v403 << 8 >> 24) - 32) > 0x5E || ((v403 >> 24) - 32) > 0x5E)
                {
                  std::to_string(&__str, __val);
                }

                else
                {
                  strcpy(&buf[5], "'");
                  buf[0] = 39;
                  std::string::basic_string[abi:ne200100]<0>(&__str, buf);
                }

                v508 = &__str;
                if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  v508 = __str.__r_.__value_.__r.__words[0];
                }

                *buf = 136315650;
                *&buf[4] = "vpTuningHelper.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 1507;
                *&buf[18] = 2080;
                *&buf[20] = v508;
                _os_log_impl(&dword_2724B4000, v492, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> failed to find aupreset for %s! Bypassing this AU!", buf, 0x1Cu);
                if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__str.__r_.__value_.__l.__data_);
                }
              }
            }

            v509 = *(this + 1588);
            if (v509 && ((*v620 & 1) != 0 || v620[1] == 1))
            {
              if (VPLogScope(void)::once != -1)
              {
                dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
              }

              v510 = VPLogScope(void)::scope;
              *(&__str.__r_.__value_.__l.__data_ + 1) = v403;
              if (v618 > 0x5E || ((v403 >> 8) - 32) > 0x5E || ((v403 << 8 >> 24) - 32) > 0x5E || ((v403 >> 24) - 32) > 0x5E)
              {
                std::to_string(buf, __val);
              }

              else
              {
                *(__str.__r_.__value_.__r.__words + 5) = 39;
                __str.__r_.__value_.__s.__data_[0] = 39;
                std::string::basic_string[abi:ne200100]<0>(buf, &__str);
              }

              v511 = buf;
              if (buf[23] < 0)
              {
                v511 = *buf;
              }

              CALegacyLog::log(v509, 1, v510, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpTuningHelper.cpp", 1507, "LoadAUDataPreset", "failed to find aupreset for %s! Bypassing this AU!", v511);
              if ((buf[23] & 0x80000000) != 0)
              {
                operator delete(*buf);
              }
            }

            v512 = dword_27275A644[v390];
            *buf = 1;
            AUPropAndParamHelper::AddItemToAUPropsList(v626 + 3 * v512 + 883, 0x15u, 0, 0, 4uLL, buf, 1);
LABEL_1701:
            if (SHIBYTE(cf.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(cf.__r_.__value_.__l.__data_);
            }

            goto LABEL_1703;
          }
        }
      }

LABEL_1604:
      if (SHIBYTE(cf.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v622, cf.__r_.__value_.__l.__data_, cf.__r_.__value_.__l.__size_);
      }

      else
      {
        v622 = cf;
      }

      v309 = v616;
      v493 = dword_27275A644[v390];
      if ((v622.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v494 = &v622;
      }

      else
      {
        v494 = v622.__r_.__value_.__r.__words[0];
      }

      v495 = TuningPListMgr::lookupPlist_(*(this + 343), v494, 1u);
      __s.__r_.__value_.__r.__words[0] = v495;
      if (v495)
      {
        CFRetain(v495);
        AUPropAndParamHelper::AddItemToAUPropsList(this + 3 * v493 + 883, 0, 0, 0, 8uLL, &__s, 1);
        CFRelease(__s.__r_.__value_.__l.__data_);
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v496 = VPLogScope(void)::scope;
        if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
        {
          v497 = (*v496 ? *v496 : MEMORY[0x277D86220]);
          if (os_log_type_enabled(v497, OS_LOG_TYPE_DEBUG))
          {
            *&buf[1] = v403;
            if (v618 > 0x5E || ((v403 >> 8) - 32) > 0x5E || ((v403 << 8 >> 24) - 32) > 0x5E || ((v403 >> 24) - 32) > 0x5E)
            {
              std::to_string(&__str, __val);
            }

            else
            {
              strcpy(&buf[5], "'");
              buf[0] = 39;
              std::string::basic_string[abi:ne200100]<0>(&__str, buf);
            }

            v500 = &__str;
            if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v500 = __str.__r_.__value_.__r.__words[0];
            }

            *buf = 136315650;
            *&buf[4] = "vpTuningHelper.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 1474;
            *&buf[18] = 2080;
            *&buf[20] = v500;
            _os_log_impl(&dword_2724B4000, v497, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> Found preset for %s", buf, 0x1Cu);
            if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__str.__r_.__value_.__l.__data_);
            }
          }
        }

        v501 = *(this + 1588);
        if (v501 && ((*v620 & 1) != 0 || v620[1] == 1))
        {
          if (VPLogScope(void)::once != -1)
          {
            dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
          }

          v502 = VPLogScope(void)::scope;
          *(&__str.__r_.__value_.__l.__data_ + 1) = v403;
          if (v618 > 0x5E || ((v403 >> 8) - 32) > 0x5E || ((v403 << 8 >> 24) - 32) > 0x5E || ((v403 >> 24) - 32) > 0x5E)
          {
            std::to_string(buf, __val);
          }

          else
          {
            *(__str.__r_.__value_.__r.__words + 5) = 39;
            __str.__r_.__value_.__s.__data_[0] = 39;
            std::string::basic_string[abi:ne200100]<0>(buf, &__str);
          }

          v503 = buf;
          if (buf[23] < 0)
          {
            v503 = *buf;
          }

          CALegacyLog::log(v501, 5, v502, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpTuningHelper.cpp", 1474, "operator()", "Found preset for %s", v503);
          if ((buf[23] & 0x80000000) != 0)
          {
            operator delete(*buf);
          }
        }
      }

      else
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v498 = VPLogScope(void)::scope;
        if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
        {
          v499 = (*v498 ? *v498 : MEMORY[0x277D86220]);
          if (os_log_type_enabled(v499, OS_LOG_TYPE_ERROR))
          {
            *&buf[1] = v403;
            if (v618 > 0x5E || ((v403 >> 8) - 32) > 0x5E || ((v403 << 8 >> 24) - 32) > 0x5E || ((v403 >> 24) - 32) > 0x5E)
            {
              std::to_string(&__str, __val);
            }

            else
            {
              strcpy(&buf[5], "'");
              buf[0] = 39;
              std::string::basic_string[abi:ne200100]<0>(&__str, buf);
            }

            v504 = &__str;
            if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v504 = __str.__r_.__value_.__r.__words[0];
            }

            *buf = 136315650;
            *&buf[4] = "vpTuningHelper.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 1477;
            *&buf[18] = 2080;
            *&buf[20] = v504;
            _os_log_impl(&dword_2724B4000, v499, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> plist dictionary is invalid! Bypassing %s!", buf, 0x1Cu);
            if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__str.__r_.__value_.__l.__data_);
            }
          }
        }

        v505 = *(this + 1588);
        if (v505 && ((*v620 & 1) != 0 || v620[1] == 1))
        {
          if (VPLogScope(void)::once != -1)
          {
            dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
          }

          v506 = VPLogScope(void)::scope;
          *(&__str.__r_.__value_.__l.__data_ + 1) = v403;
          if (v618 > 0x5E || ((v403 >> 8) - 32) > 0x5E || ((v403 << 8 >> 24) - 32) > 0x5E || ((v403 >> 24) - 32) > 0x5E)
          {
            std::to_string(buf, __val);
          }

          else
          {
            *(__str.__r_.__value_.__r.__words + 5) = 39;
            __str.__r_.__value_.__s.__data_[0] = 39;
            std::string::basic_string[abi:ne200100]<0>(buf, &__str);
          }

          v507 = buf;
          if (buf[23] < 0)
          {
            v507 = *buf;
          }

          CALegacyLog::log(v505, 1, v506, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpTuningHelper.cpp", 1477, "operator()", "plist dictionary is invalid! Bypassing %s!", v507);
          if ((buf[23] & 0x80000000) != 0)
          {
            operator delete(*buf);
          }
        }

        *buf = 1;
        AUPropAndParamHelper::AddItemToAUPropsList(v626 + 3 * v493 + 883, 0x15u, 0, 0, 4uLL, buf, 1);
      }

      if (SHIBYTE(v622.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v622.__r_.__value_.__l.__data_);
      }

      goto LABEL_1701;
    }

LABEL_1703:
    ++v390;
  }

  while (v390 != 3);
  if (((*(this + 2260) & 1) != 0 || v620[680] == 1) && (*(this + 8865) & 0x80) != 0 && (v634[0] & 1) == 0)
  {
    memset(buf, 0, 24);
    CAX4CCStringNoQuote::CAX4CCStringNoQuote(&__s, 0x61756678u);
    v514 = strlen(v513);
    std::string::append(buf, &__s, v514);
    std::string::append(buf, "-", 1uLL);
    CAX4CCStringNoQuote::CAX4CCStringNoQuote(&__s, 0x6479646Bu);
    v516 = strlen(v515);
    std::string::append(buf, &__s, v516);
    std::string::append(buf, "-", 1uLL);
    CAX4CCStringNoQuote::CAX4CCStringNoQuote(&__s, 0x6170706Cu);
    v518 = strlen(v517);
    std::string::append(buf, &__s, v518);
    std::string::append(buf, "-", 1uLL);
    CAX4CCStringNoQuote::CAX4CCStringNoQuote(&__s, 0x6D656463u);
    v520 = strlen(v519);
    std::string::append(buf, &__s, v520);
    __str = *buf;
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v521 = VPLogScope(void)::scope;
    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
    {
      v522 = (*v521 ? *v521 : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v522, OS_LOG_TYPE_DEBUG))
      {
        v523 = &__str;
        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v523 = __str.__r_.__value_.__r.__words[0];
        }

        *buf = 136315650;
        *&buf[4] = "vpTuningHelper.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 1522;
        *&buf[18] = 2080;
        *&buf[20] = v523;
        _os_log_impl(&dword_2724B4000, v522, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> loading media chat AUDynamicDucker preset %s", buf, 0x1Cu);
      }
    }

    v524 = *(this + 1588);
    if (v524 && ((*v620 & 1) != 0 || v620[1] == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v525 = &__str;
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v525 = __str.__r_.__value_.__r.__words[0];
      }

      CALegacyLog::log(v524, 5, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpTuningHelper.cpp", 1522, "LoadAUDataPreset", "loading media chat AUDynamicDucker preset %s", v525);
    }

    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v526 = &__str;
    }

    else
    {
      v526 = __str.__r_.__value_.__r.__words[0];
    }

    TuningInSubdirs = TuningPListMgr::loadTuning(*(this + 343), "Generic", "AU", v526, 1);
    if (TuningInSubdirs)
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v527 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
      {
        v528 = (*v527 ? *v527 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v528, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          *&buf[4] = "vpTuningHelper.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 1530;
          *&buf[18] = 1024;
          *&buf[20] = TuningInSubdirs;
          _os_log_impl(&dword_2724B4000, v528, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> failed to find AUDynamicDucker media chat  preset!(%d) Using default AUDynamicDucker tuning\n", buf, 0x18u);
        }
      }

      v529 = *(this + 1588);
      if (v529 && ((*v620 & 1) != 0 || v620[1] == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        CALegacyLog::log(v529, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpTuningHelper.cpp", 1530, "LoadAUDataPreset", "failed to find AUDynamicDucker media chat  preset!(%d) Using default AUDynamicDucker tuning\n", TuningInSubdirs);
      }
    }

    else
    {
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v530 = &__str;
      }

      else
      {
        v530 = __str.__r_.__value_.__r.__words[0];
      }

      v531 = TuningPListMgr::lookupPlist_(*(this + 343), v530, 1u);
      v637.__r_.__value_.__r.__words[0] = v531;
      if (v531)
      {
        CFRetain(v531);
        AUPropAndParamHelper::AddItemToAUPropsList(this + 1420, 0, 0, 0, 8uLL, &v637, 1);
        CFRelease(v637.__r_.__value_.__l.__data_);
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v532 = VPLogScope(void)::scope;
        if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
        {
          v533 = (*v532 ? *v532 : MEMORY[0x277D86220]);
          if (os_log_type_enabled(v533, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315394;
            *&buf[4] = "vpTuningHelper.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 1539;
            _os_log_impl(&dword_2724B4000, v533, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> found media chat preset for AUDynamicDucker\n", buf, 0x12u);
          }
        }

        v534 = *(this + 1588);
        if (v534 && ((*v620 & 1) != 0 || v620[1] == 1))
        {
          if (VPLogScope(void)::once != -1)
          {
            dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
          }

          CALegacyLog::log(v534, 5, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpTuningHelper.cpp", 1539, "LoadAUDataPreset", "found media chat preset for AUDynamicDucker\n");
        }

        std::string::basic_string[abi:ne200100]<0>(buf, "(DL-)DynDucker");
        __s.__r_.__value_.__r.__words[0] = buf;
        v535 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(this + 576, buf, &__s);
        std::string::operator=((v535 + 5), &__str);
        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }
      }

      else
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v536 = VPLogScope(void)::scope;
        if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
        {
          v537 = (*v536 ? *v536 : MEMORY[0x277D86220]);
          if (os_log_type_enabled(v537, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "vpTuningHelper.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 1544;
            _os_log_impl(&dword_2724B4000, v537, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> media chat preset dictionary is invalid! Using default AUDynamicDucker tuning!\n", buf, 0x12u);
          }
        }

        v538 = *(this + 1588);
        if (v538 && ((*v620 & 1) != 0 || v620[1] == 1))
        {
          if (VPLogScope(void)::once != -1)
          {
            dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
          }

          CALegacyLog::log(v538, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpTuningHelper.cpp", 1544, "LoadAUDataPreset", "media chat preset dictionary is invalid! Using default AUDynamicDucker tuning!\n");
        }
      }
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }
  }

  if ((*(*this + 552))(this))
  {
    v539 = 0;
    *buf = &TuningInSubdirs;
    *&buf[8] = this;
    *&buf[16] = &v629;
    *&buf[24] = &v627;
    *v632 = 0x2300000022;
    do
    {
      v540 = *&v632[v539];
      if (v540 >= 0x40)
      {
        std::__throw_out_of_range[abi:ne200100]("bitset test argument out of range");
      }

      if ((*(this + 1108) >> v540) & 1) != 0 && ((0x5FFFFFFFC7FFFFFFuLL >> v540))
      {
        v541 = &VoiceProcessorV2::VPDownlinkIndexToSubTypeArray;
        v542 = 64;
        while (*v541 != v540)
        {
          v541 += 18;
          if (!--v542)
          {
            v543 = 0;
            goto LABEL_1794;
          }
        }

        v543 = v541[1];
LABEL_1794:
        v544 = (*(*this + 504))(this, **(this + 294), *(this + 600), **(this + 297), *(this + 601), 0);
        v545 = (*(*this + 512))(this, **(this + 294), *(this + 600), **(this + 297), *(this + 601), 0);
        memset(&__str, 0, sizeof(__str));
        if (v616)
        {
          v546 = strlen(v616);
          std::string::append(&__str, v616, v546);
          std::string::append(&__str, "-", 1uLL);
        }

        std::string::append(&__str, "vp", 2uLL);
        strcpy(v633, "aufx");
        v547 = std::string::basic_string[abi:ne200100]<0>(&v637, v633);
        v548 = std::string::insert(v547, 0, "-", 1uLL);
        v549 = *&v548->__r_.__value_.__l.__data_;
        __s.__r_.__value_.__r.__words[2] = v548->__r_.__value_.__r.__words[2];
        *&__s.__r_.__value_.__l.__data_ = v549;
        v548->__r_.__value_.__l.__size_ = 0;
        v548->__r_.__value_.__r.__words[2] = 0;
        v548->__r_.__value_.__r.__words[0] = 0;
        if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v550 = &__s;
        }

        else
        {
          v550 = __s.__r_.__value_.__r.__words[0];
        }

        if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v551 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v551 = __s.__r_.__value_.__l.__size_;
        }

        std::string::append(&__str, v550, v551);
        if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__s.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v637.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v637.__r_.__value_.__l.__data_);
        }

        v552 = bswap32(v543);
        *v633 = v552;
        if ((v552 - 32) > 0x5E || ((v552 >> 8) - 32) > 0x5E || ((v552 << 8 >> 24) - 32) > 0x5E || ((v552 >> 24) - 32) > 0x5E)
        {
          std::to_string(&v637, v543);
        }

        else
        {
          v633[4] = 0;
          std::string::basic_string[abi:ne200100]<0>(&v637, v633);
        }

        v553 = std::string::insert(&v637, 0, "-", 1uLL);
        v554 = *&v553->__r_.__value_.__l.__data_;
        __s.__r_.__value_.__r.__words[2] = v553->__r_.__value_.__r.__words[2];
        *&__s.__r_.__value_.__l.__data_ = v554;
        v553->__r_.__value_.__l.__size_ = 0;
        v553->__r_.__value_.__r.__words[2] = 0;
        v553->__r_.__value_.__r.__words[0] = 0;
        if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v555 = &__s;
        }

        else
        {
          v555 = __s.__r_.__value_.__r.__words[0];
        }

        if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v556 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v556 = __s.__r_.__value_.__l.__size_;
        }

        std::string::append(&__str, v555, v556);
        if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__s.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v637.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v637.__r_.__value_.__l.__data_);
        }

        strcpy(v633, "appl");
        v557 = std::string::basic_string[abi:ne200100]<0>(&v637, v633);
        v558 = std::string::insert(v557, 0, "-", 1uLL);
        v559 = *&v558->__r_.__value_.__l.__data_;
        __s.__r_.__value_.__r.__words[2] = v558->__r_.__value_.__r.__words[2];
        *&__s.__r_.__value_.__l.__data_ = v559;
        v558->__r_.__value_.__l.__size_ = 0;
        v558->__r_.__value_.__r.__words[2] = 0;
        v558->__r_.__value_.__r.__words[0] = 0;
        if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v560 = &__s;
        }

        else
        {
          v560 = __s.__r_.__value_.__r.__words[0];
        }

        if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v561 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v561 = __s.__r_.__value_.__l.__size_;
        }

        std::string::append(&__str, v560, v561);
        if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__s.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v637.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v637.__r_.__value_.__l.__data_);
        }

        v562 = bswap32(v544);
        *v633 = v562;
        if ((v562 - 32) > 0x5E || ((v562 >> 8) - 32) > 0x5E || ((v562 << 8 >> 24) - 32) > 0x5E || ((v562 >> 24) - 32) > 0x5E)
        {
          std::to_string(&v637, v544);
        }

        else
        {
          v633[4] = 0;
          std::string::basic_string[abi:ne200100]<0>(&v637, v633);
        }

        v563 = std::string::insert(&v637, 0, "-", 1uLL);
        v564 = *&v563->__r_.__value_.__l.__data_;
        __s.__r_.__value_.__r.__words[2] = v563->__r_.__value_.__r.__words[2];
        *&__s.__r_.__value_.__l.__data_ = v564;
        v563->__r_.__value_.__l.__size_ = 0;
        v563->__r_.__value_.__r.__words[2] = 0;
        v563->__r_.__value_.__r.__words[0] = 0;
        if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v565 = &__s;
        }

        else
        {
          v565 = __s.__r_.__value_.__r.__words[0];
        }

        if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v566 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v566 = __s.__r_.__value_.__l.__size_;
        }

        std::string::append(&__str, v565, v566);
        if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__s.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v637.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v637.__r_.__value_.__l.__data_);
        }

        v567 = bswap32(v545);
        *v633 = v567;
        if ((v567 - 32) > 0x5E || ((v567 >> 8) - 32) > 0x5E || ((v567 << 8 >> 24) - 32) > 0x5E || ((v567 >> 24) - 32) > 0x5E)
        {
          std::to_string(&v637, v545);
        }

        else
        {
          v633[4] = 0;
          std::string::basic_string[abi:ne200100]<0>(&v637, v633);
        }

        v568 = std::string::insert(&v637, 0, "-", 1uLL);
        v569 = *&v568->__r_.__value_.__l.__data_;
        __s.__r_.__value_.__r.__words[2] = v568->__r_.__value_.__r.__words[2];
        *&__s.__r_.__value_.__l.__data_ = v569;
        v568->__r_.__value_.__l.__size_ = 0;
        v568->__r_.__value_.__r.__words[2] = 0;
        v568->__r_.__value_.__r.__words[0] = 0;
        if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v570 = &__s;
        }

        else
        {
          v570 = __s.__r_.__value_.__r.__words[0];
        }

        if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v571 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v571 = __s.__r_.__value_.__l.__size_;
        }

        std::string::append(&__str, v570, v571);
        if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__s.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v637.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v637.__r_.__value_.__l.__data_);
        }

        std::string::append(&__str, "-dlnk", 5uLL);
        strcpy(v633, "misc");
        v572 = std::string::basic_string[abi:ne200100]<0>(&v637, v633);
        v573 = std::string::insert(v572, 0, "-", 1uLL);
        v574 = *&v573->__r_.__value_.__l.__data_;
        __s.__r_.__value_.__r.__words[2] = v573->__r_.__value_.__r.__words[2];
        *&__s.__r_.__value_.__l.__data_ = v574;
        v573->__r_.__value_.__l.__size_ = 0;
        v573->__r_.__value_.__r.__words[2] = 0;
        v573->__r_.__value_.__r.__words[0] = 0;
        if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v575 = &__s;
        }

        else
        {
          v575 = __s.__r_.__value_.__r.__words[0];
        }

        if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v576 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v576 = __s.__r_.__value_.__l.__size_;
        }

        std::string::append(&__str, v575, v576);
        if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__s.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v637.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v637.__r_.__value_.__l.__data_);
        }

        cf = __str;
        v577 = &VoiceProcessorV2::VPDownlinkIndexToSubTypeArray;
        v578 = 64;
        while (*v577 != v540)
        {
          v577 += 18;
          if (!--v578)
          {
            v579 = 0;
            goto LABEL_1879;
          }
        }

        v579 = (v577 + 2);
LABEL_1879:
        std::string::basic_string[abi:ne200100]<0>(&__str, v579);
        VoiceProcessorV2::LoadAUDataPreset(char const*,char const*,char const*)::$_13::operator()(buf, &cf, &__str, this + 3 * v540 + 1375);
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(cf.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(cf.__r_.__value_.__l.__data_);
        }
      }

      v539 += 4;
    }

    while (v539 != 8);
    v580 = (*(*this + 504))(this, **(this + 294), *(this + 600), **(this + 297), *(this + 601), 0);
    v581 = (*(*this + 512))(this, **(this + 294), *(this + 600), **(this + 297), *(this + 601), 0);
    memset(&__str, 0, sizeof(__str));
    if (v616)
    {
      v582 = strlen(v616);
      std::string::append(&__str, v616, v582);
      std::string::append(&__str, "-", 1uLL);
    }

    std::string::append(&__str, "vp", 2uLL);
    strcpy(v633, "aufx");
    v583 = std::string::basic_string[abi:ne200100]<0>(&v637, v633);
    v584 = std::string::insert(v583, 0, "-", 1uLL);
    v585 = *&v584->__r_.__value_.__l.__data_;
    __s.__r_.__value_.__r.__words[2] = v584->__r_.__value_.__r.__words[2];
    *&__s.__r_.__value_.__l.__data_ = v585;
    v584->__r_.__value_.__l.__size_ = 0;
    v584->__r_.__value_.__r.__words[2] = 0;
    v584->__r_.__value_.__r.__words[0] = 0;
    if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v586 = &__s;
    }

    else
    {
      v586 = __s.__r_.__value_.__r.__words[0];
    }

    if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v587 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v587 = __s.__r_.__value_.__l.__size_;
    }

    std::string::append(&__str, v586, v587);
    if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__s.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v637.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v637.__r_.__value_.__l.__data_);
    }

    strcpy(v633, "axvd");
    v588 = std::string::basic_string[abi:ne200100]<0>(&v637, v633);
    v589 = std::string::insert(v588, 0, "-", 1uLL);
    v590 = *&v589->__r_.__value_.__l.__data_;
    __s.__r_.__value_.__r.__words[2] = v589->__r_.__value_.__r.__words[2];
    *&__s.__r_.__value_.__l.__data_ = v590;
    v589->__r_.__value_.__l.__size_ = 0;
    v589->__r_.__value_.__r.__words[2] = 0;
    v589->__r_.__value_.__r.__words[0] = 0;
    if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v591 = &__s;
    }

    else
    {
      v591 = __s.__r_.__value_.__r.__words[0];
    }

    if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v592 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v592 = __s.__r_.__value_.__l.__size_;
    }

    std::string::append(&__str, v591, v592);
    if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__s.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v637.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v637.__r_.__value_.__l.__data_);
    }

    strcpy(v633, "appl");
    v593 = std::string::basic_string[abi:ne200100]<0>(&v637, v633);
    v594 = std::string::insert(v593, 0, "-", 1uLL);
    v595 = *&v594->__r_.__value_.__l.__data_;
    __s.__r_.__value_.__r.__words[2] = v594->__r_.__value_.__r.__words[2];
    *&__s.__r_.__value_.__l.__data_ = v595;
    v594->__r_.__value_.__l.__size_ = 0;
    v594->__r_.__value_.__r.__words[2] = 0;
    v594->__r_.__value_.__r.__words[0] = 0;
    if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v596 = &__s;
    }

    else
    {
      v596 = __s.__r_.__value_.__r.__words[0];
    }

    if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v597 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v597 = __s.__r_.__value_.__l.__size_;
    }

    std::string::append(&__str, v596, v597);
    if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__s.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v637.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v637.__r_.__value_.__l.__data_);
    }

    v598 = bswap32(v580);
    *v633 = v598;
    if ((v598 - 32) > 0x5E || ((v598 >> 8) - 32) > 0x5E || ((v598 << 8 >> 24) - 32) > 0x5E || ((v598 >> 24) - 32) > 0x5E)
    {
      std::to_string(&v637, v580);
    }

    else
    {
      v633[4] = 0;
      std::string::basic_string[abi:ne200100]<0>(&v637, v633);
    }

    v599 = std::string::insert(&v637, 0, "-", 1uLL);
    v600 = *&v599->__r_.__value_.__l.__data_;
    __s.__r_.__value_.__r.__words[2] = v599->__r_.__value_.__r.__words[2];
    *&__s.__r_.__value_.__l.__data_ = v600;
    v599->__r_.__value_.__l.__size_ = 0;
    v599->__r_.__value_.__r.__words[2] = 0;
    v599->__r_.__value_.__r.__words[0] = 0;
    if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v601 = &__s;
    }

    else
    {
      v601 = __s.__r_.__value_.__r.__words[0];
    }

    if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v602 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v602 = __s.__r_.__value_.__l.__size_;
    }

    std::string::append(&__str, v601, v602);
    if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__s.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v637.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v637.__r_.__value_.__l.__data_);
    }

    v603 = bswap32(v581);
    *v633 = v603;
    if ((v603 - 32) > 0x5E || ((v603 >> 8) - 32) > 0x5E || ((v603 << 8 >> 24) - 32) > 0x5E || ((v603 >> 24) - 32) > 0x5E)
    {
      std::to_string(&v637, v581);
    }

    else
    {
      v633[4] = 0;
      std::string::basic_string[abi:ne200100]<0>(&v637, v633);
    }

    v604 = std::string::insert(&v637, 0, "-", 1uLL);
    v605 = *&v604->__r_.__value_.__l.__data_;
    __s.__r_.__value_.__r.__words[2] = v604->__r_.__value_.__r.__words[2];
    *&__s.__r_.__value_.__l.__data_ = v605;
    v604->__r_.__value_.__l.__size_ = 0;
    v604->__r_.__value_.__r.__words[2] = 0;
    v604->__r_.__value_.__r.__words[0] = 0;
    if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v606 = &__s;
    }

    else
    {
      v606 = __s.__r_.__value_.__r.__words[0];
    }

    if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v607 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v607 = __s.__r_.__value_.__l.__size_;
    }

    std::string::append(&__str, v606, v607);
    if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__s.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v637.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v637.__r_.__value_.__l.__data_);
    }

    std::string::append(&__str, "-dlnk", 5uLL);
    strcpy(v633, "misc");
    v608 = std::string::basic_string[abi:ne200100]<0>(&v637, v633);
    v609 = std::string::insert(v608, 0, "-", 1uLL);
    v610 = *&v609->__r_.__value_.__l.__data_;
    __s.__r_.__value_.__r.__words[2] = v609->__r_.__value_.__r.__words[2];
    *&__s.__r_.__value_.__l.__data_ = v610;
    v609->__r_.__value_.__l.__size_ = 0;
    v609->__r_.__value_.__r.__words[2] = 0;
    v609->__r_.__value_.__r.__words[0] = 0;
    if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v611 = &__s;
    }

    else
    {
      v611 = __s.__r_.__value_.__r.__words[0];
    }

    if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v612 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v612 = __s.__r_.__value_.__l.__size_;
    }

    std::string::append(&__str, v611, v612);
    if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__s.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v637.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v637.__r_.__value_.__l.__data_);
    }

    cf = __str;
    std::string::basic_string[abi:ne200100]<0>(&__str, "(DL)-AuxVP");
    VoiceProcessorV2::LoadAUDataPreset(char const*,char const*,char const*)::$_13::operator()(buf, &cf, &__str, this + 1366);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(cf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(cf.__r_.__value_.__l.__data_);
    }
  }

  CACFString::~CACFString(&v627);
  CACFString::~CACFString(&v629);
}

void sub_2725B1584(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, ...)
{
  va_start(va, a37);
  if (*(v37 - 105) < 0)
  {
    operator delete(*(v37 - 128));
  }

  CACFString::~CACFString(&a36);
  CACFString::~CACFString(va);
  _Unwind_Resume(a1);
}

double VoiceProcessorV2::LoadAUDataPreset(char const*,char const*,char const*)::$_0::operator()<$_1,unsigned int,$_2>(std::string *a1, char *__s, unsigned int a3)
{
  v13 = *MEMORY[0x277D85DE8];
  memset(&v11, 0, sizeof(v11));
  if (__s)
  {
    v6 = strlen(__s);
    std::string::append(&v11, __s, v6);
    std::string::append(&v11, "-", 1uLL);
  }

  CAX4CCStringNoQuote::CAX4CCStringNoQuote(__sa, 0x61756678u);
  v7 = strlen(__sa);
  std::string::append(&v11, __sa, v7);
  std::string::append(&v11, "-", 1uLL);
  CAX4CCStringNoQuote::CAX4CCStringNoQuote(__sa, a3);
  v8 = strlen(__sa);
  std::string::append(&v11, __sa, v8);
  std::string::append(&v11, "-", 1uLL);
  CAX4CCStringNoQuote::CAX4CCStringNoQuote(__sa, 0x6170706Cu);
  v9 = strlen(__sa);
  std::string::append(&v11, __sa, v9);
  result = *&v11.__r_.__value_.__l.__data_;
  *a1 = v11;
  return result;
}

void sub_2725B1F14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double VoiceProcessorV2::LoadAUDataPreset(char const*,char const*,char const*)::$_2::operator()<$_1,unsigned int,$_2,char const*>(std::string *a1, char *__s, unsigned int a3, char *a4)
{
  v27 = *MEMORY[0x277D85DE8];
  memset(&v24, 0, sizeof(v24));
  if (__s)
  {
    v8 = strlen(__s);
    std::string::append(&v24, __s, v8);
    std::string::append(&v24, "-", 1uLL);
  }

  std::string::append(&v24, "vp-", 3uLL);
  CAX4CCStringNoQuote::CAX4CCStringNoQuote(__sa, 0x61756678u);
  v10 = strlen(v9);
  std::string::append(&v24, __sa, v10);
  std::string::basic_string[abi:ne200100]<0>(&v22, a4);
  v11 = std::string::insert(&v22, 0, "-", 1uLL);
  v12 = *&v11->__r_.__value_.__l.__data_;
  v23.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
  *&v23.__r_.__value_.__l.__data_ = v12;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  v13 = std::string::append(&v23, "-", 1uLL);
  v14 = *&v13->__r_.__value_.__l.__data_;
  v26 = v13->__r_.__value_.__r.__words[2];
  *__sa = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  if (v26 >= 0)
  {
    v15 = __sa;
  }

  else
  {
    v15 = *__sa;
  }

  if (v26 >= 0)
  {
    v16 = HIBYTE(v26);
  }

  else
  {
    v16 = *&__sa[8];
  }

  std::string::append(&v24, v15, v16);
  if (SHIBYTE(v26) < 0)
  {
    operator delete(*__sa);
  }

  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  CAX4CCStringNoQuote::CAX4CCStringNoQuote(__sa, a3);
  v18 = strlen(v17);
  std::string::append(&v24, __sa, v18);
  std::string::append(&v24, "-", 1uLL);
  CAX4CCStringNoQuote::CAX4CCStringNoQuote(__sa, 0x6170706Cu);
  v20 = strlen(v19);
  std::string::append(&v24, __sa, v20);
  result = *&v24.__r_.__value_.__l.__data_;
  *a1 = v24;
  return result;
}

void sub_2725B2138(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (*(v27 - 41) < 0)
  {
    operator delete(*(v27 - 64));
  }

  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

double VoiceProcessorV2::LoadAUDataPreset(char const*,char const*,char const*)::$_3::operator()<$_1,unsigned int,$_2,char const*>(std::string *a1, char *__s, unsigned int a3, char *a4)
{
  v27 = *MEMORY[0x277D85DE8];
  memset(&v24, 0, sizeof(v24));
  if (__s)
  {
    v8 = strlen(__s);
    std::string::append(&v24, __s, v8);
    std::string::append(&v24, "-", 1uLL);
  }

  CAX4CCStringNoQuote::CAX4CCStringNoQuote(__sa, 0x61756678u);
  v10 = strlen(v9);
  std::string::append(&v24, __sa, v10);
  std::string::basic_string[abi:ne200100]<0>(&v22, a4);
  v11 = std::string::insert(&v22, 0, "-", 1uLL);
  v12 = *&v11->__r_.__value_.__l.__data_;
  v23.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
  *&v23.__r_.__value_.__l.__data_ = v12;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  v13 = std::string::append(&v23, "-", 1uLL);
  v14 = *&v13->__r_.__value_.__l.__data_;
  v26 = v13->__r_.__value_.__r.__words[2];
  *__sa = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  if (v26 >= 0)
  {
    v15 = __sa;
  }

  else
  {
    v15 = *__sa;
  }

  if (v26 >= 0)
  {
    v16 = HIBYTE(v26);
  }

  else
  {
    v16 = *&__sa[8];
  }

  std::string::append(&v24, v15, v16);
  if (SHIBYTE(v26) < 0)
  {
    operator delete(*__sa);
  }

  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  CAX4CCStringNoQuote::CAX4CCStringNoQuote(__sa, a3);
  v18 = strlen(v17);
  std::string::append(&v24, __sa, v18);
  std::string::append(&v24, "-", 1uLL);
  CAX4CCStringNoQuote::CAX4CCStringNoQuote(__sa, 0x6170706Cu);
  v20 = strlen(v19);
  std::string::append(&v24, __sa, v20);
  result = *&v24.__r_.__value_.__l.__data_;
  *a1 = v24;
  return result;
}

void sub_2725B2394(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (*(v27 - 41) < 0)
  {
    operator delete(*(v27 - 64));
  }

  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

double VoiceProcessorV2::LoadAUDataPreset(char const*,char const*,char const*)::$_4::operator()<$_1,unsigned int,$_2,unsigned int,unsigned int,unsigned int>(std::string *a1, char *__s, unsigned int a3, unsigned int a4, unsigned int a5, unsigned int a6, int a7)
{
  v50 = *MEMORY[0x277D85DE8];
  memset(&v48, 0, sizeof(v48));
  if (__s)
  {
    v14 = strlen(__s);
    std::string::append(&v48, __s, v14);
    std::string::append(&v48, "-", 1uLL);
  }

  std::string::append(&v48, "vp", 2uLL);
  strcpy(__sa, "aufx");
  std::string::basic_string[abi:ne200100]<0>(&v45, __sa);
  v15 = std::string::insert(&v45, 0, "-", 1uLL);
  v16 = *&v15->__r_.__value_.__l.__data_;
  v47 = v15->__r_.__value_.__r.__words[2];
  *__p = v16;
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  if (v47 >= 0)
  {
    v17 = __p;
  }

  else
  {
    v17 = __p[0];
  }

  if (v47 >= 0)
  {
    v18 = HIBYTE(v47);
  }

  else
  {
    v18 = __p[1];
  }

  std::string::append(&v48, v17, v18);
  if (SHIBYTE(v47) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
  }

  v19 = bswap32(a3);
  *__sa = v19;
  if ((v19 - 32) > 0x5E || ((v19 >> 8) - 32) > 0x5E || ((v19 << 8 >> 24) - 32) > 0x5E || ((v19 >> 24) - 32) > 0x5E)
  {
    std::to_string(&v45, a3);
  }

  else
  {
    __sa[4] = 0;
    std::string::basic_string[abi:ne200100]<0>(&v45, __sa);
  }

  v20 = std::string::insert(&v45, 0, "-", 1uLL);
  v21 = *&v20->__r_.__value_.__l.__data_;
  v47 = v20->__r_.__value_.__r.__words[2];
  *__p = v21;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  if (v47 >= 0)
  {
    v22 = __p;
  }

  else
  {
    v22 = __p[0];
  }

  if (v47 >= 0)
  {
    v23 = HIBYTE(v47);
  }

  else
  {
    v23 = __p[1];
  }

  std::string::append(&v48, v22, v23);
  if (SHIBYTE(v47) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
  }

  strcpy(__sa, "appl");
  std::string::basic_string[abi:ne200100]<0>(&v45, __sa);
  v24 = std::string::insert(&v45, 0, "-", 1uLL);
  v25 = *&v24->__r_.__value_.__l.__data_;
  v47 = v24->__r_.__value_.__r.__words[2];
  *__p = v25;
  v24->__r_.__value_.__l.__size_ = 0;
  v24->__r_.__value_.__r.__words[2] = 0;
  v24->__r_.__value_.__r.__words[0] = 0;
  if (v47 >= 0)
  {
    v26 = __p;
  }

  else
  {
    v26 = __p[0];
  }

  if (v47 >= 0)
  {
    v27 = HIBYTE(v47);
  }

  else
  {
    v27 = __p[1];
  }

  std::string::append(&v48, v26, v27);
  if (SHIBYTE(v47) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
  }

  v28 = bswap32(a4);
  *__sa = v28;
  if ((v28 - 32) > 0x5E || ((v28 >> 8) - 32) > 0x5E || ((v28 << 8 >> 24) - 32) > 0x5E || ((v28 >> 24) - 32) > 0x5E)
  {
    std::to_string(&v45, a4);
  }

  else
  {
    __sa[4] = 0;
    std::string::basic_string[abi:ne200100]<0>(&v45, __sa);
  }

  v29 = std::string::insert(&v45, 0, "-", 1uLL);
  v30 = *&v29->__r_.__value_.__l.__data_;
  v47 = v29->__r_.__value_.__r.__words[2];
  *__p = v30;
  v29->__r_.__value_.__l.__size_ = 0;
  v29->__r_.__value_.__r.__words[2] = 0;
  v29->__r_.__value_.__r.__words[0] = 0;
  if (v47 >= 0)
  {
    v31 = __p;
  }

  else
  {
    v31 = __p[0];
  }

  if (v47 >= 0)
  {
    v32 = HIBYTE(v47);
  }

  else
  {
    v32 = __p[1];
  }

  std::string::append(&v48, v31, v32);
  if (SHIBYTE(v47) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
  }

  v33 = bswap32(a5);
  *__sa = v33;
  if ((v33 - 32) > 0x5E || ((v33 >> 8) - 32) > 0x5E || ((v33 << 8 >> 24) - 32) > 0x5E || ((v33 >> 24) - 32) > 0x5E)
  {
    std::to_string(&v45, a5);
  }

  else
  {
    __sa[4] = 0;
    std::string::basic_string[abi:ne200100]<0>(&v45, __sa);
  }

  v34 = std::string::insert(&v45, 0, "-", 1uLL);
  v35 = *&v34->__r_.__value_.__l.__data_;
  v47 = v34->__r_.__value_.__r.__words[2];
  *__p = v35;
  v34->__r_.__value_.__l.__size_ = 0;
  v34->__r_.__value_.__r.__words[2] = 0;
  v34->__r_.__value_.__r.__words[0] = 0;
  if (v47 >= 0)
  {
    v36 = __p;
  }

  else
  {
    v36 = __p[0];
  }

  if (v47 >= 0)
  {
    v37 = HIBYTE(v47);
  }

  else
  {
    v37 = __p[1];
  }

  std::string::append(&v48, v36, v37);
  if (SHIBYTE(v47) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
  }

  if (a7)
  {
    v38 = "-ulnk";
  }

  else
  {
    v38 = "-dlnk";
  }

  std::string::append(&v48, v38, 5uLL);
  v39 = bswap32(a6);
  *__sa = v39;
  if ((v39 - 32) > 0x5E || ((v39 >> 8) - 32) > 0x5E || ((v39 << 8 >> 24) - 32) > 0x5E || ((v39 >> 24) - 32) > 0x5E)
  {
    std::to_string(&v45, a6);
  }

  else
  {
    __sa[4] = 0;
    std::string::basic_string[abi:ne200100]<0>(&v45, __sa);
  }

  v40 = std::string::insert(&v45, 0, "-", 1uLL);
  v41 = *&v40->__r_.__value_.__l.__data_;
  v47 = v40->__r_.__value_.__r.__words[2];
  *__p = v41;
  v40->__r_.__value_.__l.__size_ = 0;
  v40->__r_.__value_.__r.__words[2] = 0;
  v40->__r_.__value_.__r.__words[0] = 0;
  if (v47 >= 0)
  {
    v42 = __p;
  }

  else
  {
    v42 = __p[0];
  }

  if (v47 >= 0)
  {
    v43 = HIBYTE(v47);
  }

  else
  {
    v43 = __p[1];
  }

  std::string::append(&v48, v42, v43);
  if (SHIBYTE(v47) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
  }

  result = *&v48.__r_.__value_.__l.__data_;
  *a1 = v48;
  return result;
}

void sub_2725B299C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

double VoiceProcessorV2::LoadAUDataPreset(char const*,char const*,char const*)::$_4::operator()<$_1,$_7,$_2,unsigned int,unsigned int,unsigned int>(std::string *a1, char *__s, unsigned int a3, unsigned int a4, unsigned int a5, int a6)
{
  v47 = *MEMORY[0x277D85DE8];
  memset(&v45, 0, sizeof(v45));
  if (__s)
  {
    v12 = strlen(__s);
    std::string::append(&v45, __s, v12);
    std::string::append(&v45, "-", 1uLL);
  }

  std::string::append(&v45, "vp", 2uLL);
  strcpy(__sa, "aufx");
  std::string::basic_string[abi:ne200100]<0>(&v42, __sa);
  v13 = std::string::insert(&v42, 0, "-", 1uLL);
  v14 = *&v13->__r_.__value_.__l.__data_;
  v44 = v13->__r_.__value_.__r.__words[2];
  *__p = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  if (v44 >= 0)
  {
    v15 = __p;
  }

  else
  {
    v15 = __p[0];
  }

  if (v44 >= 0)
  {
    v16 = HIBYTE(v44);
  }

  else
  {
    v16 = __p[1];
  }

  std::string::append(&v45, v15, v16);
  if (SHIBYTE(v44) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v42.__r_.__value_.__l.__data_);
  }

  v17 = bswap32(a3);
  *__sa = v17;
  if ((v17 - 32) > 0x5E || ((v17 >> 8) - 32) > 0x5E || ((v17 << 8 >> 24) - 32) > 0x5E || ((v17 >> 24) - 32) > 0x5E)
  {
    std::to_string(&v42, a3);
  }

  else
  {
    __sa[4] = 0;
    std::string::basic_string[abi:ne200100]<0>(&v42, __sa);
  }

  v18 = std::string::insert(&v42, 0, "-", 1uLL);
  v19 = *&v18->__r_.__value_.__l.__data_;
  v44 = v18->__r_.__value_.__r.__words[2];
  *__p = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  if (v44 >= 0)
  {
    v20 = __p;
  }

  else
  {
    v20 = __p[0];
  }

  if (v44 >= 0)
  {
    v21 = HIBYTE(v44);
  }

  else
  {
    v21 = __p[1];
  }

  std::string::append(&v45, v20, v21);
  if (SHIBYTE(v44) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v42.__r_.__value_.__l.__data_);
  }

  strcpy(__sa, "appl");
  std::string::basic_string[abi:ne200100]<0>(&v42, __sa);
  v22 = std::string::insert(&v42, 0, "-", 1uLL);
  v23 = *&v22->__r_.__value_.__l.__data_;
  v44 = v22->__r_.__value_.__r.__words[2];
  *__p = v23;
  v22->__r_.__value_.__l.__size_ = 0;
  v22->__r_.__value_.__r.__words[2] = 0;
  v22->__r_.__value_.__r.__words[0] = 0;
  if (v44 >= 0)
  {
    v24 = __p;
  }

  else
  {
    v24 = __p[0];
  }

  if (v44 >= 0)
  {
    v25 = HIBYTE(v44);
  }

  else
  {
    v25 = __p[1];
  }

  std::string::append(&v45, v24, v25);
  if (SHIBYTE(v44) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v42.__r_.__value_.__l.__data_);
  }

  v26 = bswap32(a4);
  *__sa = v26;
  if ((v26 - 32) > 0x5E || ((v26 >> 8) - 32) > 0x5E || ((v26 << 8 >> 24) - 32) > 0x5E || ((v26 >> 24) - 32) > 0x5E)
  {
    std::to_string(&v42, a4);
  }

  else
  {
    __sa[4] = 0;
    std::string::basic_string[abi:ne200100]<0>(&v42, __sa);
  }

  v27 = std::string::insert(&v42, 0, "-", 1uLL);
  v28 = *&v27->__r_.__value_.__l.__data_;
  v44 = v27->__r_.__value_.__r.__words[2];
  *__p = v28;
  v27->__r_.__value_.__l.__size_ = 0;
  v27->__r_.__value_.__r.__words[2] = 0;
  v27->__r_.__value_.__r.__words[0] = 0;
  if (v44 >= 0)
  {
    v29 = __p;
  }

  else
  {
    v29 = __p[0];
  }

  if (v44 >= 0)
  {
    v30 = HIBYTE(v44);
  }

  else
  {
    v30 = __p[1];
  }

  std::string::append(&v45, v29, v30);
  if (SHIBYTE(v44) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v42.__r_.__value_.__l.__data_);
  }

  v31 = bswap32(a5);
  *__sa = v31;
  if ((v31 - 32) > 0x5E || ((v31 >> 8) - 32) > 0x5E || ((v31 << 8 >> 24) - 32) > 0x5E || ((v31 >> 24) - 32) > 0x5E)
  {
    std::to_string(&v42, a5);
  }

  else
  {
    __sa[4] = 0;
    std::string::basic_string[abi:ne200100]<0>(&v42, __sa);
  }

  v32 = std::string::insert(&v42, 0, "-", 1uLL);
  v33 = *&v32->__r_.__value_.__l.__data_;
  v44 = v32->__r_.__value_.__r.__words[2];
  *__p = v33;
  v32->__r_.__value_.__l.__size_ = 0;
  v32->__r_.__value_.__r.__words[2] = 0;
  v32->__r_.__value_.__r.__words[0] = 0;
  if (v44 >= 0)
  {
    v34 = __p;
  }

  else
  {
    v34 = __p[0];
  }

  if (v44 >= 0)
  {
    v35 = HIBYTE(v44);
  }

  else
  {
    v35 = __p[1];
  }

  std::string::append(&v45, v34, v35);
  if (SHIBYTE(v44) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v42.__r_.__value_.__l.__data_);
  }

  if (a6)
  {
    v36 = "-ulnk";
  }

  else
  {
    v36 = "-dlnk";
  }

  std::string::append(&v45, v36, 5uLL);
  strcpy(__sa, "medc");
  std::string::basic_string[abi:ne200100]<0>(&v42, __sa);
  v37 = std::string::insert(&v42, 0, "-", 1uLL);
  v38 = *&v37->__r_.__value_.__l.__data_;
  v44 = v37->__r_.__value_.__r.__words[2];
  *__p = v38;
  v37->__r_.__value_.__l.__size_ = 0;
  v37->__r_.__value_.__r.__words[2] = 0;
  v37->__r_.__value_.__r.__words[0] = 0;
  if (v44 >= 0)
  {
    v39 = __p;
  }

  else
  {
    v39 = __p[0];
  }

  if (v44 >= 0)
  {
    v40 = HIBYTE(v44);
  }

  else
  {
    v40 = __p[1];
  }

  std::string::append(&v45, v39, v40);
  if (SHIBYTE(v44) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v42.__r_.__value_.__l.__data_);
  }

  result = *&v45.__r_.__value_.__l.__data_;
  *a1 = v45;
  return result;
}

void sub_2725B2F70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

void VoiceProcessorV2::LoadAUDataPreset(char const*,char const*,char const*)::$_10::operator()(uint64_t *a1, const std::string *a2, uint64_t a3)
{
  v84 = *MEMORY[0x277D85DE8];
  v6 = *a1;
  __p = 0;
  v77 = 0;
  v78 = 0;
  v7 = HIBYTE(a2->__r_.__value_.__r.__words[2]);
  if ((a3 & 0x100000000) != 0)
  {
    v8 = 0;
    v9 = a2->__r_.__value_.__r.__words[0];
  }

  else
  {
    v9 = a2->__r_.__value_.__r.__words[0];
    size = a2->__r_.__value_.__l.__size_;
    if (v7 >= 0)
    {
      v11 = a2;
    }

    else
    {
      v11 = a2->__r_.__value_.__r.__words[0];
    }

    if (v7 >= 0)
    {
      size = HIBYTE(a2->__r_.__value_.__r.__words[2]);
    }

    if (size >= 6)
    {
      v12 = v11 + size;
      v13 = v11;
      do
      {
        v14 = memchr(v13, 45, size - 5);
        if (!v14)
        {
          break;
        }

        if (*v14 == 1852597293 && *(v14 + 2) == 11627)
        {
          if (v14 != v12 && v14 - v11 != -1)
          {
            v8 = 0;
            HIBYTE(v78) = 10;
            LOWORD(v77) = 20566;
            __p = *"(DL)-AuxVP";
            goto LABEL_21;
          }

          break;
        }

        v13 = (v14 + 1);
        size = v12 - v13;
      }

      while (v12 - v13 >= 6);
    }

    HIBYTE(v78) = 10;
    LOWORD(v77) = 20566;
    __p = *"(UL)-AuxVP";
    v8 = 1;
  }

LABEL_21:
  if (v7 >= 0)
  {
    v16 = a2;
  }

  else
  {
    v16 = v9;
  }

  v17 = TuningPListMgr::lookupPlist_(*(v6 + 2744), v16, 1u);
  cf = v17;
  if (v17)
  {
    goto LABEL_111;
  }

  v18 = *(v6 + 2744);
  v72 = *(a1 + 1);
  v82 = CFStringCreateWithCString(0, "AU", 0x600u);
  v83 = 1;
  if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v19 = a2;
  }

  else
  {
    v19 = a2->__r_.__value_.__r.__words[0];
  }

  v73 = CFStringCreateWithCString(0, v19, 0x600u);
  v74 = 1;
  *buf = v72;
  *&buf[16] = &v82;
  *&buf[24] = &v73;
  *a1[1] = TuningPListMgr::loadTuningInSubdirs_(v18, buf, 4, 1u);
  CACFString::~CACFString(&v73);
  CACFString::~CACFString(&v82);
  if (*a1[1])
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v20 = VPLogScope(void)::scope;
    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(2, VPLogScope(void)::scope, 0))
    {
      v21 = (*v20 ? *v20 : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        CAX4CCStringNoQuote::CAX4CCStringNoQuote(&v82, 0x6D656463u);
        if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v22 = a2;
        }

        else
        {
          v22 = a2->__r_.__value_.__r.__words[0];
        }

        if ((a3 & 0x100000000) != 0)
        {
          v23 = &VoiceProcessorV2::VPDownlinkIndexToSubTypeArray;
          if (v8)
          {
            v23 = &VoiceProcessorV2::VPUplinkIndexToSubTypeArray;
          }

          v24 = 64;
          if (v8)
          {
            v24 = 71;
          }

          while (*v23 != a3)
          {
            v23 += 18;
            if (!--v24)
            {
              p_p = 0;
              goto LABEL_88;
            }
          }

          p_p = v23 + 2;
        }

        else
        {
          p_p = &__p;
          if (v78 < 0)
          {
            p_p = __p;
          }
        }

LABEL_88:
        *buf = 136316162;
        *&buf[4] = "vpTuningHelper.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 1155;
        *&buf[18] = 2080;
        *&buf[20] = &v82;
        *&buf[28] = 2080;
        *&buf[30] = v22;
        v80 = 2080;
        v81 = p_p;
        _os_log_impl(&dword_2724B4000, v21, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  >vp> could not find '%s' override preset %s for %s!", buf, 0x30u);
      }
    }

    v37 = *(v6 + 12704);
    if (v37 && ((*(v6 + 15881) & 1) != 0 || *(v6 + 15882) == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v38 = VPLogScope(void)::scope;
      CAX4CCStringNoQuote::CAX4CCStringNoQuote(buf, 0x6D656463u);
      if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v39 = a2;
      }

      else
      {
        v39 = a2->__r_.__value_.__r.__words[0];
      }

      if ((a3 & 0x100000000) != 0)
      {
        v40 = &VoiceProcessorV2::VPDownlinkIndexToSubTypeArray;
        if (v8)
        {
          v40 = &VoiceProcessorV2::VPUplinkIndexToSubTypeArray;
        }

        v41 = 64;
        if (v8)
        {
          v41 = 71;
        }

        while (*v40 != a3)
        {
          v40 += 18;
          if (!--v41)
          {
            v42 = 0;
            goto LABEL_109;
          }
        }

        v42 = (v40 + 2);
      }

      else
      {
        v42 = &__p;
        if (v78 < 0)
        {
          v42 = __p;
        }
      }

LABEL_109:
      CALegacyLog::log(v37, 2, v38, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpTuningHelper.cpp", 1155, "operator()", "could not find '%s' override preset %s for %s!", buf, v39, v42);
    }

    v17 = cf;
    if (cf)
    {
      goto LABEL_111;
    }
  }

  else
  {
    if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v26 = a2;
    }

    else
    {
      v26 = a2->__r_.__value_.__r.__words[0];
    }

    v17 = TuningPListMgr::lookupPlist_(*(v6 + 2744), v26, 1u);
    cf = v17;
    if (v17)
    {
LABEL_111:
      CFRetain(v17);
      v43 = 10928;
      if (v8)
      {
        v43 = 6992;
      }

      v44 = (v6 + v43);
      if ((a3 & 0x100000000) != 0)
      {
        v45 = (v6 + 24 * a3 + 11000);
      }

      else
      {
        v45 = v44;
      }

      AUPropAndParamHelper::AddItemToAUPropsList(v45, 0, 0, 0, 8uLL, &cf, 1);
      CFRelease(cf);
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v46 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(4, VPLogScope(void)::scope, 0))
      {
        v47 = (*v46 ? *v46 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
        {
          CAX4CCStringNoQuote::CAX4CCStringNoQuote(&v82, 0x6D656463u);
          if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v48 = a2;
          }

          else
          {
            v48 = a2->__r_.__value_.__r.__words[0];
          }

          if ((a3 & 0x100000000) != 0)
          {
            v49 = &VoiceProcessorV2::VPDownlinkIndexToSubTypeArray;
            if (v8)
            {
              v49 = &VoiceProcessorV2::VPUplinkIndexToSubTypeArray;
            }

            v50 = 64;
            if (v8)
            {
              v50 = 71;
            }

            while (*v49 != a3)
            {
              v49 += 18;
              if (!--v50)
              {
                v51 = 0;
                goto LABEL_139;
              }
            }

            v51 = v49 + 2;
          }

          else
          {
            v51 = &__p;
            if (v78 < 0)
            {
              v51 = __p;
            }
          }

LABEL_139:
          *buf = 136316162;
          *&buf[4] = "vpTuningHelper.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 1171;
          *&buf[18] = 2080;
          *&buf[20] = &v82;
          *&buf[28] = 2080;
          *&buf[30] = v48;
          v80 = 2080;
          v81 = v51;
          _os_log_impl(&dword_2724B4000, v47, OS_LOG_TYPE_INFO, "%25s:%-5d  <vp> found '%s' override preset %s for %s", buf, 0x30u);
        }
      }

      v52 = *(v6 + 12704);
      if (v52 && ((*(v6 + 15881) & 1) != 0 || *(v6 + 15882) == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v53 = VPLogScope(void)::scope;
        CAX4CCStringNoQuote::CAX4CCStringNoQuote(buf, 0x6D656463u);
        if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v54 = a2;
        }

        else
        {
          v54 = a2->__r_.__value_.__r.__words[0];
        }

        if ((a3 & 0x100000000) != 0)
        {
          v55 = &VoiceProcessorV2::VPDownlinkIndexToSubTypeArray;
          if (v8)
          {
            v55 = &VoiceProcessorV2::VPUplinkIndexToSubTypeArray;
          }

          v56 = 64;
          if (v8)
          {
            v56 = 71;
          }

          while (*v55 != a3)
          {
            v55 += 18;
            if (!--v56)
            {
              v57 = 0;
              goto LABEL_160;
            }
          }

          v57 = (v55 + 2);
        }

        else
        {
          v57 = &__p;
          if (v78 < 0)
          {
            v57 = __p;
          }
        }

LABEL_160:
        CALegacyLog::log(v52, 4, v53, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpTuningHelper.cpp", 1171, "operator()", "found '%s' override preset %s for %s", buf, v54, v57);
      }

      if (v8)
      {
        v58 = 4648;
      }

      else
      {
        v58 = 4608;
      }

      if ((a3 & 0x100000000) != 0)
      {
        v59 = &VoiceProcessorV2::VPDownlinkIndexToSubTypeArray;
        if (v8)
        {
          v59 = &VoiceProcessorV2::VPUplinkIndexToSubTypeArray;
        }

        v60 = 64;
        if (v8)
        {
          v60 = 71;
        }

        while (*v59 != a3)
        {
          v59 += 18;
          if (!--v60)
          {
            v61 = 0;
            goto LABEL_176;
          }
        }

        v61 = (v59 + 2);
      }

      else if (v78 >= 0)
      {
        v61 = &__p;
      }

      else
      {
        v61 = __p;
      }

LABEL_176:
      std::string::basic_string[abi:ne200100]<0>(buf, v61);
      v82 = buf;
      v62 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((v6 + v58), buf, &v82);
      std::string::operator=((v62 + 5), a2);
      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }

      if ((a3 & 0x100000000) != 0 && a3 == 15)
      {
        *a1[4] = 1;
      }

      goto LABEL_181;
    }
  }

  if ((a3 & 0x100000000) != 0)
  {
    if (a3 == 15)
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v27 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(4, VPLogScope(void)::scope, 0))
      {
        v28 = (*v27 ? *v27 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
        {
          v29 = &VoiceProcessorV2::VPDownlinkIndexToSubTypeArray;
          if (v8)
          {
            v29 = &VoiceProcessorV2::VPUplinkIndexToSubTypeArray;
          }

          v30 = 64;
          if (v8)
          {
            v30 = 71;
          }

          while (*v29 != 15)
          {
            v29 += 18;
            if (!--v30)
            {
              v31 = 0;
              goto LABEL_185;
            }
          }

          v31 = v29 + 2;
LABEL_185:
          *buf = 136315650;
          *&buf[4] = "vpTuningHelper.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 1189;
          *&buf[18] = 2080;
          *&buf[20] = v31;
          _os_log_impl(&dword_2724B4000, v28, OS_LOG_TYPE_INFO, "%25s:%-5d  <vp> Could not find route specific preset for %s...VP will try loading global preset next", buf, 0x1Cu);
        }
      }

      v63 = *(v6 + 12704);
      if (v63 && ((*(v6 + 15881) & 1) != 0 || *(v6 + 15882) == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v64 = &VoiceProcessorV2::VPDownlinkIndexToSubTypeArray;
        if (v8)
        {
          v64 = &VoiceProcessorV2::VPUplinkIndexToSubTypeArray;
        }

        v65 = 64;
        if (v8)
        {
          v65 = 71;
        }

        while (*v64 != 15)
        {
          v64 += 18;
          if (!--v65)
          {
            v66 = 0;
            goto LABEL_199;
          }
        }

        v66 = (v64 + 2);
LABEL_199:
        CALegacyLog::log(v63, 4, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpTuningHelper.cpp", 1189, "operator()", "Could not find route specific preset for %s...VP will try loading global preset next", v66);
      }
    }

    else
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v32 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(2, VPLogScope(void)::scope, 0))
      {
        v33 = (*v32 ? *v32 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          v34 = &VoiceProcessorV2::VPDownlinkIndexToSubTypeArray;
          if (v8)
          {
            v34 = &VoiceProcessorV2::VPUplinkIndexToSubTypeArray;
          }

          v35 = 64;
          if (v8)
          {
            v35 = 71;
          }

          while (*v34 != a3)
          {
            v34 += 18;
            if (!--v35)
            {
              v36 = 0;
              goto LABEL_201;
            }
          }

          v36 = v34 + 2;
LABEL_201:
          *buf = 136315650;
          *&buf[4] = "vpTuningHelper.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 1184;
          *&buf[18] = 2080;
          *&buf[20] = v36;
          _os_log_impl(&dword_2724B4000, v33, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  >vp> Bypassing %s!\n", buf, 0x1Cu);
        }
      }

      v67 = *(v6 + 12704);
      if (v67 && ((*(v6 + 15881) & 1) != 0 || *(v6 + 15882) == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v68 = &VoiceProcessorV2::VPDownlinkIndexToSubTypeArray;
        if (v8)
        {
          v68 = &VoiceProcessorV2::VPUplinkIndexToSubTypeArray;
        }

        v69 = 64;
        if (v8)
        {
          v69 = 71;
        }

        while (*v68 != a3)
        {
          v68 += 18;
          if (!--v69)
          {
            v70 = 0;
            goto LABEL_215;
          }
        }

        v70 = (v68 + 2);
LABEL_215:
        CALegacyLog::log(v67, 2, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpTuningHelper.cpp", 1184, "operator()", "Bypassing %s!\n", v70);
      }

      v71 = *a1[5];
      *buf = 1;
      AUPropAndParamHelper::AddItemToAUPropsList((v71 + 24 * a3 + 11000), 0x15u, 0, 0, 4uLL, buf, 1);
    }
  }

LABEL_181:
  if (SHIBYTE(v78) < 0)
  {
    operator delete(__p);
  }
}

void sub_2725B3BFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void VoiceProcessorV2::LoadAUDataPreset(char const*,char const*,char const*)::$_13::operator()(uint64_t a1, const std::string *a2, uint64_t a3, void *a4)
{
  v54 = *MEMORY[0x277D85DE8];
  v8 = *(a1 + 8);
  v9 = *(v8 + 2744);
  v46 = *(a1 + 16);
  v52 = CFStringCreateWithCString(0, "AU", 0x600u);
  v53 = 1;
  if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v10 = a2;
  }

  else
  {
    v10 = a2->__r_.__value_.__r.__words[0];
  }

  cf = CFStringCreateWithCString(0, v10, 0x600u);
  v48 = 1;
  *buf = v46;
  *&buf[16] = &v52;
  *&buf[24] = &cf;
  **a1 = TuningPListMgr::loadTuningInSubdirs_(v9, buf, 4, 1u);
  CACFString::~CACFString(&cf);
  CACFString::~CACFString(&v52);
  if (**a1)
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v11 = VPLogScope(void)::scope;
    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
    {
      v12 = (*v11 ? *v11 : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        CAX4CCStringNoQuote::CAX4CCStringNoQuote(&v52, *(v8 + 96));
        if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v13 = a2;
        }

        else
        {
          v13 = a2->__r_.__value_.__r.__words[0];
        }

        if (*(a3 + 23) >= 0)
        {
          v14 = a3;
        }

        else
        {
          v14 = *a3;
        }

        *buf = 136316162;
        *&buf[4] = "vpTuningHelper.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 1559;
        *&buf[18] = 2080;
        *&buf[20] = &v52;
        *&buf[28] = 2080;
        *&buf[30] = v13;
        v50 = 2080;
        v51 = v14;
        _os_log_impl(&dword_2724B4000, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> could not find '%s' override preset %s for %s!", buf, 0x30u);
      }
    }

    v15 = *(v8 + 12704);
    if (v15 && ((*(v8 + 15881) & 1) != 0 || *(v8 + 15882) == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v16 = VPLogScope(void)::scope;
      CAX4CCStringNoQuote::CAX4CCStringNoQuote(buf, *(v8 + 96));
      if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v17 = a2;
      }

      else
      {
        v17 = a2->__r_.__value_.__r.__words[0];
      }

      if (*(a3 + 23) >= 0)
      {
        v18 = a3;
      }

      else
      {
        v18 = *a3;
      }

      CALegacyLog::log(v15, 1, v16, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpTuningHelper.cpp", 1559, "operator()", "could not find '%s' override preset %s for %s!", buf, v17, v18);
    }
  }

  else
  {
    if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v19 = a2;
    }

    else
    {
      v19 = a2->__r_.__value_.__r.__words[0];
    }

    v20 = TuningPListMgr::lookupPlist_(*(v8 + 2744), v19, 1u);
    cf = v20;
    if (v20)
    {
      CFRetain(v20);
      AUPropAndParamHelper::AddItemToAUPropsList(a4, 0, 0, 0, 8uLL, &cf, 1);
      CFRelease(cf);
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v21 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(4, VPLogScope(void)::scope, 0))
      {
        v22 = (*v21 ? *v21 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          CAX4CCStringNoQuote::CAX4CCStringNoQuote(&v52, *(v8 + 96));
          if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v23 = a2;
          }

          else
          {
            v23 = a2->__r_.__value_.__r.__words[0];
          }

          if (*(a3 + 23) >= 0)
          {
            v24 = a3;
          }

          else
          {
            v24 = *a3;
          }

          *buf = 136316162;
          *&buf[4] = "vpTuningHelper.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 1568;
          *&buf[18] = 2080;
          *&buf[20] = &v52;
          *&buf[28] = 2080;
          *&buf[30] = v23;
          v50 = 2080;
          v51 = v24;
          _os_log_impl(&dword_2724B4000, v22, OS_LOG_TYPE_INFO, "%25s:%-5d  <vp> found '%s' override preset %s for %s", buf, 0x30u);
        }
      }

      v25 = *(v8 + 12704);
      if (v25 && ((*(v8 + 15881) & 1) != 0 || *(v8 + 15882) == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v26 = VPLogScope(void)::scope;
        CAX4CCStringNoQuote::CAX4CCStringNoQuote(buf, *(v8 + 96));
        if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v27 = a2;
        }

        else
        {
          v27 = a2->__r_.__value_.__r.__words[0];
        }

        if (*(a3 + 23) >= 0)
        {
          v28 = a3;
        }

        else
        {
          v28 = *a3;
        }

        CALegacyLog::log(v25, 4, v26, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpTuningHelper.cpp", 1568, "operator()", "found '%s' override preset %s for %s", buf, v27, v28);
      }

      v29 = std::__string_hash<char>::operator()[abi:ne200100](a3);
      v30 = v29;
      v31 = *(v8 + 4616);
      if (!*&v31)
      {
        goto LABEL_107;
      }

      v32 = vcnt_s8(v31);
      v32.i16[0] = vaddlv_u8(v32);
      v33 = v32.u32[0];
      if (v32.u32[0] > 1uLL)
      {
        v34 = v29;
        if (v29 >= *&v31)
        {
          v34 = v29 % *&v31;
        }
      }

      else
      {
        v34 = (*&v31 - 1) & v29;
      }

      v43 = *(*(v8 + 4608) + 8 * v34);
      if (!v43 || (v44 = *v43) == 0)
      {
LABEL_107:
        operator new();
      }

      while (1)
      {
        v45 = v44[1];
        if (v45 == v30)
        {
          if (std::equal_to<std::string>::operator()[abi:ne200100](v44 + 2, a3))
          {
            std::string::operator=((v44 + 5), a2);
            return;
          }
        }

        else
        {
          if (v33 > 1)
          {
            if (v45 >= *&v31)
            {
              v45 %= *&v31;
            }
          }

          else
          {
            v45 &= *&v31 - 1;
          }

          if (v45 != v34)
          {
            goto LABEL_107;
          }
        }

        v44 = *v44;
        if (!v44)
        {
          goto LABEL_107;
        }
      }
    }

    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v35 = VPLogScope(void)::scope;
    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(4, VPLogScope(void)::scope, 0))
    {
      v36 = (*v35 ? *v35 : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
      {
        CAX4CCStringNoQuote::CAX4CCStringNoQuote(&v52, *(v8 + 96));
        if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v37 = a2;
        }

        else
        {
          v37 = a2->__r_.__value_.__r.__words[0];
        }

        if (*(a3 + 23) >= 0)
        {
          v38 = a3;
        }

        else
        {
          v38 = *a3;
        }

        *buf = 136316162;
        *&buf[4] = "vpTuningHelper.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 1574;
        *&buf[18] = 2080;
        *&buf[20] = &v52;
        *&buf[28] = 2080;
        *&buf[30] = v37;
        v50 = 2080;
        v51 = v38;
        _os_log_impl(&dword_2724B4000, v36, OS_LOG_TYPE_INFO, "%25s:%-5d  <vp> Not found '%s' override preset %s for %s", buf, 0x30u);
      }
    }

    v39 = *(v8 + 12704);
    if (v39 && ((*(v8 + 15881) & 1) != 0 || *(v8 + 15882) == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v40 = VPLogScope(void)::scope;
      CAX4CCStringNoQuote::CAX4CCStringNoQuote(buf, *(v8 + 96));
      if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v41 = a2;
      }

      else
      {
        v41 = a2->__r_.__value_.__r.__words[0];
      }

      if (*(a3 + 23) >= 0)
      {
        v42 = a3;
      }

      else
      {
        v42 = *a3;
      }

      CALegacyLog::log(v39, 4, v40, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpTuningHelper.cpp", 1574, "operator()", "Not found '%s' override preset %s for %s", buf, v41, v42);
    }
  }
}

void sub_2725B4538(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void StartVPWirelessChargingMatStateListener()
{
  if (!gNotifyDispatchQueue)
  {
    v0 = dispatch_queue_create("vpWirelessChargingNotificationQueue", 0);
    v1 = gNotifyDispatchQueue;
    gNotifyDispatchQueue = v0;

    if (!gNotifyDispatchQueue)
    {
      __assert_rtn("StartVPWirelessChargingMatStateListener", "vpWirelessCharging.mm", 54, "gNotifyDispatchQueue != nil");
    }

    atomic_store(__StartVPWirelessChargingMatStateListener_block_invoke(), gWirelessChargingMatIsAttached);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __StartVPWirelessChargingMatStateListener_block_invoke_6;
    handler[3] = &unk_279E4A040;
    v4 = &__block_literal_global_4725;
    if (notify_register_dispatch("com.apple.system.powersources.source", &gNotifyToken, gNotifyDispatchQueue, handler))
    {
      v2 = gNotifyDispatchQueue;
      gNotifyDispatchQueue = 0;

      gNotifyToken = 0;
      atomic_store(0, gWirelessChargingMatIsAttached);
    }
  }
}

uint64_t __StartVPWirelessChargingMatStateListener_block_invoke()
{
  v12 = *MEMORY[0x277D85DE8];
  v0 = IOPSCopyExternalPowerAdapterDetails();
  v1 = v0;
  if (v0)
  {
    v2 = [(__CFDictionary *)v0 objectForKey:@"IsWireless"];
    if ([v2 BOOLValue])
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      if (VPLogScope(void)::scope)
      {
        v3 = *VPLogScope(void)::scope;
        if (!v3)
        {
LABEL_22:
          v4 = 1;
LABEL_23:

          goto LABEL_24;
        }
      }

      else
      {
        v3 = MEMORY[0x277D86220];
        v6 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        v8 = 136315394;
        v9 = "vpWirelessCharging.mm";
        v10 = 1024;
        v11 = 61;
        _os_log_impl(&dword_2724B4000, v3, OS_LOG_TYPE_INFO, "%25s:%-5d wireless charging mat is attached", &v8, 0x12u);
      }

      goto LABEL_22;
    }
  }

  if (VPLogScope(void)::once != -1)
  {
    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
  }

  if (!VPLogScope(void)::scope)
  {
    v2 = MEMORY[0x277D86220];
    v5 = MEMORY[0x277D86220];
    goto LABEL_15;
  }

  v2 = *VPLogScope(void)::scope;
  if (v2)
  {
LABEL_15:
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v8 = 136315394;
      v9 = "vpWirelessCharging.mm";
      v10 = 1024;
      v11 = 66;
      _os_log_impl(&dword_2724B4000, v2, OS_LOG_TYPE_INFO, "%25s:%-5d wireless charging mat is not attached", &v8, 0x12u);
    }

    v4 = 0;
    goto LABEL_23;
  }

  v4 = 0;
LABEL_24:

  return v4;
}

uint64_t __StartVPWirelessChargingMatStateListener_block_invoke_6(uint64_t result, int a2)
{
  v9 = *MEMORY[0x277D85DE8];
  if (gNotifyToken == a2)
  {
    v2 = result;
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    if (VPLogScope(void)::scope)
    {
      v3 = *VPLogScope(void)::scope;
      if (!v3)
      {
LABEL_11:
        result = (*(*(v2 + 32) + 16))();
        atomic_store(result, gWirelessChargingMatIsAttached);
        return result;
      }
    }

    else
    {
      v3 = MEMORY[0x277D86220];
      v4 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v5 = 136315394;
      v6 = "vpWirelessCharging.mm";
      v7 = 1024;
      v8 = 74;
      _os_log_impl(&dword_2724B4000, v3, OS_LOG_TYPE_INFO, "%25s:%-5d wireless charging mat state changed", &v5, 0x12u);
    }

    goto LABEL_11;
  }

  return result;
}

void StopVPWirelessChargingMatStateListener()
{
  if (!notify_cancel(gNotifyToken))
  {
    v0 = gNotifyDispatchQueue;
    gNotifyDispatchQueue = 0;

    gNotifyToken = 0;
  }
}

void CADeprecated::AudioRingBuffer::~AudioRingBuffer(CADeprecated::AudioRingBuffer *this)
{
  CADeprecated::AudioRingBuffer::~AudioRingBuffer(this);

  JUMPOUT(0x2743CBFA0);
}

{
  *this = &unk_2881B2460;
  CADeprecated::AudioRingBuffer::Deallocate(this);
  v2 = *(this + 12);
  *(this + 12) = 0;
  if (v2)
  {
    MEMORY[0x2743CBFA0](v2, 0x1080C404ACF7207);
  }

  v3 = *(this + 11);
  *(this + 11) = 0;
  if (v3)
  {
    MEMORY[0x2743CBFA0](v3, 0x1080C404ACF7207);
  }
}

OpaqueAudioConverter *CADeprecated::AudioRingBuffer::Deallocate(CADeprecated::AudioRingBuffer *this)
{
  v2 = *(this + 13);
  if (v2)
  {
    free(v2);
    *(this + 13) = 0;
  }

  *(this + 28) = 0;
  *(this + 15) = 0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  result = *(this + 16);
  if (result)
  {
    result = AudioConverterDispose(result);
    *(this + 16) = 0;
  }

  return result;
}

uint64_t CADeprecated::AudioRingBuffer::ConvertAndStore(uint64_t this, int a2, const AudioBufferList *a3, int a4, UInt32 inNumberPCMFrames)
{
  if (inNumberPCMFrames)
  {
    v6 = *(this + 96);
    mNumberBuffers = v6->mNumberBuffers;
    if (mNumberBuffers)
    {
      v8 = *(this + 72) * inNumberPCMFrames;
      p_mData = &v6->mBuffers[0].mData;
      v10 = &a3->mBuffers[0].mData;
      do
      {
        v11 = *v10;
        v10 += 2;
        *p_mData = &v11[a4];
        *(p_mData - 1) = v8;
        p_mData += 2;
        --mNumberBuffers;
      }

      while (mNumberBuffers);
    }

    v12 = *(this + 88);
    v13 = v12->mNumberBuffers;
    if (v13)
    {
      v14 = *(this + 32) * inNumberPCMFrames;
      v15 = *(this + 104);
      v16 = &v12->mBuffers[0].mData;
      do
      {
        v17 = *v15++;
        *v16 = (v17 + a2);
        *(v16 - 1) = v14;
        v16 += 2;
        --v13;
      }

      while (v13);
    }

    return AudioConverterConvertComplexBuffer(*(this + 128), inNumberPCMFrames, v6, v12);
  }

  return this;
}

uint64_t CADeprecated::AudioRingBuffer::CheckTimeBounds(CADeprecated::AudioRingBuffer *this, uint64_t a2, uint64_t a3)
{
  v3 = *(this + 226);
  v4 = this + 24 * (v3 & 0x1F);
  v5 = 8;
  while (1)
  {
    v6 = *(v4 + 17);
    v7 = *(v4 + 18);
    if (*(v4 + 38) == v3)
    {
      break;
    }

    if (!--v5)
    {
      return 4;
    }
  }

  if (v7 > a2)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  if (v7 >= a3)
  {
    v9 = 0;
  }

  if (v6 >= a3)
  {
    v10 = -2;
  }

  else
  {
    v10 = -1;
  }

  if (v7 >= a3)
  {
    v11 = v10;
  }

  else
  {
    v11 = 3;
  }

  if (v6 > a2)
  {
    return v11;
  }

  else
  {
    return v9;
  }
}

uint64_t CADeprecated::AudioRingBuffer::Fetch(const void ***this, AudioBufferList *a2, unsigned int a3, uint64_t a4)
{
  v8 = a4 + a3;
  result = CADeprecated::AudioRingBuffer::CheckTimeBounds(this, a4, v8);
  if (!result)
  {
    if (a3)
    {
      v10 = this[13];
      v11 = *(this + 29);
      v12 = *(this + 30);
      v13 = ((((a4 % v12) >> 63) & v12) + a4 % v12) * v11;
      v14 = ((((v8 % v12) >> 63) & v12) + v8 % v12) * v11;
      v15 = v14 - v13;
      if (v14 <= v13)
      {
        if (a2->mNumberBuffers >= 1)
        {
          v43 = v14;
          v44 = a2;
          v29 = *(this + 31) - v13;
          v30 = v13;
          v31 = v29;
          v32 = a2->mNumberBuffers + 1;
          p_mData = &a2->mBuffers[0].mData;
          v34 = this[13];
          while (v29 <= *(p_mData - 1))
          {
            v36 = *p_mData;
            p_mData += 2;
            v35 = v36;
            v37 = *v34++;
            memcpy(v35, (v37 + v30), v29);
            if (--v32 <= 1)
            {
              a2 = v44;
              if (v44->mNumberBuffers < 1)
              {
                goto LABEL_29;
              }

              v15 = v29 + v43;
              v38 = v44->mNumberBuffers + 1;
              v39 = &v44->mBuffers[0].mData;
              while (v15 <= *(v39 - 1))
              {
                v41 = *v39;
                v39 += 2;
                v40 = v41;
                v42 = *v10++;
                memcpy(&v40[v31], v42, v43);
                if (--v38 <= 1)
                {
                  goto LABEL_10;
                }
              }

              return 5;
            }
          }

          return 5;
        }
      }

      else if (a2->mNumberBuffers >= 1)
      {
        v16 = v13;
        v17 = a2->mNumberBuffers + 1;
        v18 = &a2->mBuffers[0].mData;
        while (v15 <= *(v18 - 1))
        {
          v20 = *v18;
          v18 += 2;
          v19 = v20;
          v21 = *v10++;
          memcpy(v19, (v21 + v16), v15);
          if (--v17 <= 1)
          {
            goto LABEL_10;
          }
        }

        return 5;
      }
    }

    else
    {
      v15 = 0;
LABEL_10:
      mNumberBuffers = a2->mNumberBuffers;
      if (mNumberBuffers >= 1)
      {
        v23 = 0;
        v24 = vdupq_n_s64(mNumberBuffers - 1);
        v25 = (mNumberBuffers + 3) & 0xFFFFFFFC;
        v26 = &a2[1].mBuffers[0].mData + 1;
        do
        {
          v27 = vdupq_n_s64(v23);
          v28 = vmovn_s64(vcgeq_u64(v24, vorrq_s8(v27, xmmword_2727564E0)));
          if (vuzp1_s16(v28, *v24.i8).u8[0])
          {
            *(v26 - 8) = v15;
          }

          if (vuzp1_s16(v28, *&v24).i8[2])
          {
            *(v26 - 4) = v15;
          }

          if (vuzp1_s16(*&v24, vmovn_s64(vcgeq_u64(v24, vorrq_s8(v27, xmmword_2727564D0)))).i32[1])
          {
            *v26 = v15;
            v26[4] = v15;
          }

          v23 += 4;
          v26 += 16;
        }

        while (v25 != v23);
      }
    }

LABEL_29:

    return CADeprecated::AudioRingBuffer::CheckTimeBounds(this, a4, v8);
  }

  return result;
}

void BlockBuffer::Alloc(BlockBuffer *this, const unsigned int *a2)
{
  *(this + 4) = 0;
  *this = malloc_type_malloc(8 * *(this + 2), 0x2004093837F09uLL);
  if (*(this + 2))
  {
    v4 = 0;
    v5 = (4 * *(this + 3));
    do
    {
      v6 = malloc_type_malloc((16 * a2[v4]) | 8, 0x10800404ACF7207uLL);
      *(*this + 8 * v4) = v6;
      v7 = a2[v4];
      *v6 = v7;
      if (v7)
      {
        v8 = v6;
        v9 = 0;
        v10 = v6 + 4;
        do
        {
          *(v10 - 2) = 1;
          *(v10 - 1) = v5;
          v11 = malloc_type_malloc(v5, 0x2365AC71uLL);
          v12 = v11;
          if (v5)
          {
            if (!v11)
            {
              exception = __cxa_allocate_exception(8uLL);
              v14 = std::bad_alloc::bad_alloc(exception);
            }
          }

          bzero(v11, v5);
          *v10 = v12;
          v10 += 2;
          ++v9;
        }

        while (v9 < *v8);
      }

      ++v4;
    }

    while (v4 < *(this + 2));
  }
}

void BlockBuffer::Free(BlockBuffer *this)
{
  v2 = *this;
  if (v2)
  {
    if (*(this + 2))
    {
      v3 = 0;
      do
      {
        v4 = *(*this + 8 * v3);
        if (*v4)
        {
          v5 = 0;
          v6 = 4;
          do
          {
            free(*&v4[v6]);
            ++v5;
            v6 += 4;
          }

          while (v5 < *v4);
        }

        free(v4);
        ++v3;
      }

      while (v3 < *(this + 2));
      v2 = *this;
    }

    free(v2);
    *this = 0;
  }
}

unsigned int *BlockProcessor::Process(unsigned int *this, unsigned int a2, const AudioBufferList **a3, AudioBufferList **a4)
{
  v5 = this;
  v6 = 0;
  v7 = this[3];
  do
  {
    v8 = v5[4];
    while (v8 == v7)
    {
      this = (*(v5 + 6))(*(v5 + 7), v7, *v5, *(v5 + 3));
      v8 = 0;
      v5[4] = 0;
      v5[10] = 0;
      if (this)
      {
        return this;
      }
    }

    v9 = v5[2];
    v31 = v6;
    v32 = a2;
    v30 = v5[3] - v8;
    if (v30 >= a2)
    {
      v10 = a2;
    }

    else
    {
      v10 = v5[3] - v8;
    }

    v11 = (4 * v6);
    v33 = v10;
    if (v9)
    {
      v12 = 0;
      v13 = 4 * v8;
      v14 = 4 * v10;
      do
      {
        v15 = *(*v5 + 8 * v12);
        if (*v15)
        {
          v16 = 0;
          v17 = a3[v12];
          v18 = 4;
          do
          {
            this = memcpy((*&v15[v18] + v13), (*(&v17->mNumberBuffers + v18 * 4) + v11), v14);
            ++v16;
            v18 += 4;
          }

          while (v16 < *v15);
          v9 = v5[2];
        }

        ++v12;
      }

      while (v12 < v9);
      v8 = v5[4];
      v10 = v33;
    }

    v5[4] = v8 + v10;
    v19 = v5[10];
    v20 = v5[8];
    v21 = v5[9] - v19;
    if (v21 >= v10)
    {
      v21 = v10;
    }

    if (v20)
    {
      v22 = 0;
      v23 = 4 * v19;
      v29 = v21;
      v24 = 4 * v21;
      do
      {
        v25 = *(*(v5 + 3) + 8 * v22);
        if (*v25)
        {
          v26 = 0;
          v27 = a4[v22];
          v28 = 4;
          do
          {
            this = memcpy((*(&v27->mNumberBuffers + v28 * 4) + v11), (*&v25[v28] + v23), v24);
            ++v26;
            v28 += 4;
          }

          while (v26 < *v25);
          v20 = v5[8];
        }

        ++v22;
      }

      while (v22 < v20);
      v19 = v5[10];
      v10 = v33;
      v21 = v29;
    }

    v5[10] = v19 + v21;
    a2 = v32 - v10;
    v6 = v10 + v31;
  }

  while (v32 > v30);
  return this;
}

std::runtime_error *std::overflow_error::overflow_error[abi:ne200100](std::runtime_error *a1, const char *a2)
{
  result = std::runtime_error::runtime_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828F0] + 16);
  return result;
}

void *CAAudioChannelLayout::RefCountedLayout::operator new(CAAudioChannelLayout::RefCountedLayout *this)
{
  result = malloc_type_malloc(this + 16, 0x72B6561FuLL);
  if (!result)
  {
    exception = __cxa_allocate_exception(8uLL);
    v3 = std::bad_alloc::bad_alloc(exception);
  }

  return result;
}

uint64_t CAReferenceCounted::releaseObject(uint64_t this)
{
  if (this)
  {
    return (*(*this + 8))();
  }

  return this;
}

atomic_uint **CAAudioChannelLayout::operator=(atomic_uint **a1, atomic_uint *a2)
{
  v4 = *a1;
  if (!v4)
  {
    goto LABEL_5;
  }

  if (v4 + 4 != a2)
  {
    if (atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v4 + 16))(v4);
    }

LABEL_5:
    if (a2)
    {
      if (((20 * a2[2]) & 0xFFFFFFFF00000000) != 0)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::overflow_error::overflow_error[abi:ne200100](exception, "arithmetic multiplication overflow");
      }

      else
      {
        v5 = 20 * a2[2];
        v6 = v5 + 12;
        if (v5 < 0xFFFFFFF4)
        {
          v7 = CAAudioChannelLayout::RefCountedLayout::operator new((v5 + 12));
          v7[2] = 1;
          v7[3] = v6;
          *v7 = &unk_2881B2480;
          bzero(v7 + 4, v6);
          memcpy(v7 + 4, a2, v6);
LABEL_10:
          *a1 = v7;
          return a1;
        }

        exception = __cxa_allocate_exception(0x10uLL);
        std::overflow_error::overflow_error[abi:ne200100](exception, "arithmetic addition overflow");
      }
    }

    v7 = CAAudioChannelLayout::RefCountedLayout::operator new(0xC);
    *v7 = &unk_2881B2480;
    *(v7 + 1) = 0xC00000001;
    *(v7 + 2) = 0;
    v7[6] = 0;
    goto LABEL_10;
  }

  return a1;
}

void CAAudioChannelLayout::~CAAudioChannelLayout(atomic_uint **this)
{
  v2 = *this;
  if (v2)
  {
    if (atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v2 + 16))(v2);
    }

    *this = 0;
  }
}

CFDictionaryRef applesauce::CF::details::make_CFDictionaryRef<std::string,std::string>(const UInt8 **a1)
{
  v11 = 0;
  v12 = 0;
  v13 = 0;
  std::vector<applesauce::CF::TypeRefPair>::reserve(&v11, a1[2]);
  v4 = *a1;
  v2 = a1 + 1;
  v3 = v4;
  if (v4 != v2)
  {
    v5 = v12;
    do
    {
      if (v5 >= v13)
      {
        v5 = std::vector<applesauce::CF::TypeRefPair>::__emplace_back_slow_path<std::string const&,std::string const&>(&v11, v3 + 32, (v3 + 56));
      }

      else
      {
        applesauce::CF::TypeRefPair::TypeRefPair<std::string const&,std::string const&>(v5, v3 + 32, (v3 + 56));
        v5 += 2;
      }

      v12 = v5;
      v6 = *(v3 + 1);
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
          v7 = *(v3 + 2);
          v8 = *v7 == v3;
          v3 = v7;
        }

        while (!v8);
      }

      v3 = v7;
    }

    while (v7 != v2);
  }

  CFDictionaryRef = applesauce::CF::details::make_CFDictionaryRef(&v11);
  v14 = &v11;
  std::vector<applesauce::CF::TypeRefPair>::__destroy_vector::operator()[abi:ne200100](&v14);
  return CFDictionaryRef;
}

void sub_2725B5640(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<applesauce::CF::TypeRefPair>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void *___Z28AudioStatisticsLibraryLoaderv_block_invoke_4786()
{
  result = dlopen("/usr/lib/libAudioStatistics.dylib", 1);
  if (result)
  {
    v1 = result;
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(result, "CreateSharedCAReportingClient");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientCreateReporterID");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientCreateReporterIDFromSessionID");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientCreatePerformanceReporterID");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientStartReporter");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientStopReporter");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientSetAudioServiceType");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientGetAudioServiceType");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientSetConfiguration");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientCopyConfiguration");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientSendMessage");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientSendSingleMessage");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientDestroyReporterID");
    result = dlsym(v1, "CAReportingClientRequestMessage");
    AudioStatisticsLibraryLoader(void)::libSym = result;
  }

  return result;
}

void *std::vector<applesauce::CF::TypeRefPair>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      std::allocator<applesauce::CF::TypeRefPair>::allocate_at_least[abi:ne200100](a2);
    }

    std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

CFStringRef *applesauce::CF::TypeRefPair::TypeRefPair<std::string const&,std::string const&>(CFStringRef *a1, const UInt8 *a2, uint64_t a3)
{
  v5 = *(a2 + 1);
  if (*(a2 + 23) >= 0)
  {
    v6 = a2[23];
  }

  else
  {
    a2 = *a2;
    v6 = v5;
  }

  v7 = CFStringCreateWithBytes(0, a2, v6, 0x8000100u, 0);
  *a1 = v7;
  if (!v7)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  v8 = *(a3 + 23);
  if (v8 >= 0)
  {
    v9 = a3;
  }

  else
  {
    v9 = *a3;
  }

  if (v8 >= 0)
  {
    v10 = *(a3 + 23);
  }

  else
  {
    v10 = *(a3 + 8);
  }

  v11 = CFStringCreateWithBytes(0, v9, v10, 0x8000100u, 0);
  a1[1] = v11;
  if (!v11)
  {
    v14 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v14, "Could not construct");
  }

  return a1;
}

void sub_2725B59A8(_Unwind_Exception *a1)
{
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(v1 + 1);
  applesauce::CF::TypeRef::~TypeRef(v1);
  _Unwind_Resume(a1);
}

uint64_t std::vector<applesauce::CF::TypeRefPair>::__emplace_back_slow_path<std::string const&,std::string const&>(uint64_t a1, const UInt8 *a2, uint64_t a3)
{
  v3 = (*(a1 + 8) - *a1) >> 4;
  v4 = v3 + 1;
  if ((v3 + 1) >> 60)
  {
    std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
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
  applesauce::CF::TypeRefPair::TypeRefPair<std::string const&,std::string const&>((16 * v3), a2, a3);
  v16 = (16 * v3 + 16);
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

void sub_2725B5AFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<applesauce::CF::TypeRefPair>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void CAAudioStatisticsSendMessage(uint64_t *a1, unsigned int a2, const UInt8 **a3, uint64_t a4)
{
  if (a2)
  {
    v7 = a2;
    do
    {
      if (*a1)
      {
        v8 = applesauce::CF::details::make_CFDictionaryRef<std::string,std::string>(a3);
        v9 = *a1;
        if (AudioStatisticsLibraryLoader(void)::once != -1)
        {
          dispatch_once(&AudioStatisticsLibraryLoader(void)::once, &__block_literal_global_4781);
        }

        if (AudioStatisticsLibraryLoader(void)::libSym)
        {
          AudioStatisticsLibraryLoader(void)::libSym(v9, v8, 8, a4);
        }

        CFRelease(v8);
      }

      ++a1;
      --v7;
    }

    while (v7);
  }

  else
  {
    v10 = applesauce::CF::details::make_CFDictionaryRef<std::string,std::string>(a3);
    if (AudioStatisticsLibraryLoader(void)::once != -1)
    {
      dispatch_once(&AudioStatisticsLibraryLoader(void)::once, &__block_literal_global_4781);
    }

    if (AudioStatisticsLibraryLoader(void)::libSym)
    {
      AudioStatisticsLibraryLoader(void)::libSym(v10, 8, a4);
    }

    CFRelease(v10);
  }
}

void sub_2725B5C84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  applesauce::CF::DictionaryRef::~DictionaryRef(va);
  _Unwind_Resume(a1);
}

uint64_t CADeprecated::CABufferList::AllocateBuffers(uint64_t this, unsigned int a2)
{
  if (*(this + 36) < a2)
  {
    operator new[]();
  }

  return this;
}

uint64_t CACFDictionary::GetFloat32(uint64_t this, const __CFString *a2, float *a3)
{
  if (this)
  {
    this = CFDictionaryGetValue(this, a2);
    if (this)
    {
      v4 = this;
      v5 = CFGetTypeID(this);
      if (v5 == CFNumberGetTypeID())
      {
        CFNumberGetValue(v4, kCFNumberFloat32Type, a3);
        return 1;
      }

      else
      {
        return 0;
      }
    }
  }

  return this;
}

void CASmartPreferences::instance(CASmartPreferences *this)
{
  {
    if (v1)
    {
      CASmartPreferences::CASmartPreferences(v1);
    }
  }
}

void CASmartPreferences::CASmartPreferences(CASmartPreferences *this)
{
  CASmartPreferences::instance(void)::global = 850045863;
  unk_28133C0D8 = 0u;
  unk_28133C0E8 = 0u;
  unk_28133C0F8 = 0u;
  qword_28133C108 = 0;
  qword_28133C110 = CFSetCreateMutable(0, 0, MEMORY[0x277CBF158]);
  global_queue = dispatch_get_global_queue(0, 0);
  *&qword_28133C118 = 0u;
  *&qword_28133C128 = 0u;
  qword_28133C130 = dispatch_source_create(MEMORY[0x277D85D30], 1uLL, 0, global_queue);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 0x40000000;
  handler[2] = ___ZN18CASmartPreferencesC2Ev_block_invoke;
  handler[3] = &__block_descriptor_tmp_4855;
  handler[4] = &CASmartPreferences::instance(void)::global;
  dispatch_source_set_event_handler(qword_28133C130, handler);
  dispatch_resume(qword_28133C130);
}

void ___ZN18CASmartPreferencesC2Ev_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  std::mutex::lock(v1);
  CFSetApplyFunction(*(v1 + 64), SynchronizePrefDomain, 0);
  v2 = *(v1 + 72);
  v3 = *(v1 + 80);
  while (v2 != v3)
  {
    CASmartPreferences::Pref::Load(v2);
    v2 += 6;
  }

  std::mutex::unlock(v1);
}

CFPropertyListRef CASmartPreferences::Pref::Load(CFStringRef *this)
{
  result = CFPreferencesCopyAppValue(*this, this[1]);
  if (result)
  {
    v4 = result;
    v3 = this[5];
    if (!v3)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    return (*(v3->isa + 6))(v3, &v4);
  }

  return result;
}

double CASmartPreferences::InterpretFloat(const __CFString *this, _BYTE *a2, BOOL *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  valuePtr = 0.0;
  *a2 = 0;
  if (this)
  {
    v5 = CFGetTypeID(this);
    if (v5 == CFBooleanGetTypeID())
    {
      valuePtr = CFBooleanGetValue(this);
LABEL_6:
      *a2 = 1;
      return valuePtr;
    }

    if (v5 == CFNumberGetTypeID())
    {
      CFNumberGetValue(this, kCFNumberDoubleType, &valuePtr);
      goto LABEL_6;
    }

    if (v5 == CFStringGetTypeID())
    {
      CFStringGetCString(this, buffer, 64, 0x600u);
      if (sscanf(buffer, "%lf", &valuePtr) == 1)
      {
        goto LABEL_6;
      }
    }
  }

  return valuePtr;
}

uint64_t CACFPreferencesGetAppIntegerValue(const __CFString *a1, const __CFString *a2, BOOL *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = CFPreferencesCopyAppValue(a1, a2);
  v5 = v4;
  valuePtr = 0;
  if (a3)
  {
    *a3 = 0;
  }

  if (v4)
  {
    v6 = CFGetTypeID(v4);
    if (v6 == CFBooleanGetTypeID())
    {
      valuePtr = CFBooleanGetValue(v5);
    }

    else if (v6 == CFNumberGetTypeID())
    {
      CFNumberGetValue(v5, kCFNumberIntType, &valuePtr);
    }

    else if (v6 != CFStringGetTypeID() || (CFStringGetCString(v5, buffer, 64, 0x600u), sscanf(buffer, "%d", &valuePtr) != 1))
    {
LABEL_13:
      v7 = valuePtr;
      CFRelease(v5);
      return v7;
    }

    if (a3)
    {
      *a3 = 1;
    }

    goto LABEL_13;
  }

  return 0;
}

BOOL CACFPreferencesGetAppBooleanValue(const __CFString *a1, const __CFString *a2, BOOL *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = CFPreferencesCopyAppValue(a1, @"com.apple.coreaudio");
  v5 = v4;
  valuePtr = 0;
  if (a2)
  {
    LOBYTE(a2->isa) = 0;
  }

  if (!v4)
  {
    return 0;
  }

  v6 = CFGetTypeID(v4);
  if (v6 == CFBooleanGetTypeID())
  {
    Value = CFBooleanGetValue(v5);
    if (!a2)
    {
      goto LABEL_17;
    }

    goto LABEL_10;
  }

  if (v6 == CFNumberGetTypeID())
  {
    CFNumberGetValue(v5, kCFNumberIntType, &valuePtr);
    Value = valuePtr != 0;
    if (a2)
    {
LABEL_10:
      LOBYTE(a2->isa) = 1;
    }
  }

  else
  {
    if (v6 != CFStringGetTypeID())
    {
      Value = 0;
      goto LABEL_17;
    }

    CFStringGetCString(v5, buffer, 64, 0x600u);
    if (sscanf(buffer, "%d", &valuePtr) == 1)
    {
      if (a2)
      {
        LOBYTE(a2->isa) = 1;
      }

      Value = valuePtr != 0;
      goto LABEL_17;
    }

    v9 = buffer[0];
    if (buffer[0])
    {
      v10 = &buffer[1];
      do
      {
        *(v10 - 1) = __tolower(v9);
        v11 = *v10++;
        v9 = v11;
      }

      while (v11);
    }

    if (*buffer ^ 0x6F6E | buffer[2])
    {
      if (*buffer != 1936482662 || v15 != 101)
      {
        if (*buffer == 7562617 || !(*buffer ^ 0x65757274 | v15))
        {
          Value = 1;
          if (a2)
          {
            LOBYTE(a2->isa) = 1;
          }
        }

        else
        {
          Value = valuePtr;
        }

        goto LABEL_17;
      }
    }

    Value = 0;
    if (a2)
    {
      goto LABEL_10;
    }
  }

LABEL_17:
  CFRelease(v5);
  return Value != 0;
}

void CASmartPreferences::_RegisterFirstHandler(const void *a1, const void *a2, uint64_t a3)
{
  std::mutex::lock(&CASmartPreferences::instance(void)::global);
  v7 = qword_28133C118;
  v6 = qword_28133C120;
  while (v7 != v6)
  {
    if (CFEqual(a1, *v7) && CFEqual(a2, v7[1]))
    {
      goto LABEL_29;
    }

    v7 += 6;
  }

  CFRetain(a1);
  CFRetain(a2);
  v8 = qword_28133C120;
  if (qword_28133C120 >= qword_28133C128)
  {
    v10 = 0xAAAAAAAAAAAAAAABLL * ((qword_28133C120 - qword_28133C118) >> 4);
    if (v10 + 1 > 0x555555555555555)
    {
      std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
    }

    v11 = 0x5555555555555556 * ((qword_28133C128 - qword_28133C118) >> 4);
    if (v11 <= v10 + 1)
    {
      v11 = v10 + 1;
    }

    if (0xAAAAAAAAAAAAAAABLL * ((qword_28133C128 - qword_28133C118) >> 4) >= 0x2AAAAAAAAAAAAAALL)
    {
      v12 = 0x555555555555555;
    }

    else
    {
      v12 = v11;
    }

    v28 = &qword_28133C118;
    if (v12)
    {
      if (v12 <= 0x555555555555555)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v25 = 0;
    v26 = (16 * ((qword_28133C120 - qword_28133C118) >> 4));
    std::construct_at[abi:ne200100]<CASmartPreferences::Pref,__CFString const*&,__CFString const*&,std::function<BOOL ()(void const*)> &,CASmartPreferences::Pref*>(v26, a1, a2, a3);
    v14 = qword_28133C118;
    v13 = qword_28133C120;
    v15 = 48 * v10 - (qword_28133C120 - qword_28133C118);
    v27 = (v26 + 6);
    if (qword_28133C120 == qword_28133C118)
    {
LABEL_27:
      v22 = qword_28133C118;
      qword_28133C118 = v15;
      v23 = qword_28133C128;
      v24 = v27;
      *&qword_28133C120 = v27;
      *&v27 = v22;
      *(&v27 + 1) = v23;
      v25 = v22;
      v26 = v22;
      std::__split_buffer<CASmartPreferences::Pref>::~__split_buffer(&v25);
      v9 = v24;
      goto LABEL_28;
    }

    v16 = &v26[-2 * ((qword_28133C120 - qword_28133C118) >> 4) + 5];
    v17 = qword_28133C118 + 40;
    v18 = v15;
    while (1)
    {
      *(v16 - 5) = *(v17 - 40);
      v19 = *v17;
      if (*v17)
      {
        if (v17 - 24 == v19)
        {
          *v16 = v16 - 3;
          (*(**v17 + 24))();
          goto LABEL_25;
        }

        *v16 = v19;
        v20 = v17;
      }

      else
      {
        v20 = (v18 + 40);
      }

      *v20 = 0;
LABEL_25:
      v18 += 48;
      v16 += 6;
      v21 = v17 + 8;
      v17 += 48;
      if (v21 == v13)
      {
        do
        {
          std::__function::__value_func<BOOL ()(void const*)>::~__value_func[abi:ne200100](v14 + 16);
          v14 += 48;
        }

        while (v14 != v13);
        goto LABEL_27;
      }
    }
  }

  std::construct_at[abi:ne200100]<CASmartPreferences::Pref,__CFString const*&,__CFString const*&,std::function<BOOL ()(void const*)> &,CASmartPreferences::Pref*>(qword_28133C120, a1, a2, a3);
  v9 = v8 + 48;
  qword_28133C120 = v8 + 48;
LABEL_28:
  qword_28133C120 = v9;
  CFSetAddValue(qword_28133C110, a2);
  CASmartPreferences::Pref::Load((qword_28133C120 - 48));
LABEL_29:
  std::mutex::unlock(&CASmartPreferences::instance(void)::global);
}

void sub_2725B67B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<CASmartPreferences::Pref>::~__split_buffer(va);
  std::mutex::unlock(&CASmartPreferences::instance(void)::global);
  _Unwind_Resume(a1);
}

void *std::construct_at[abi:ne200100]<CASmartPreferences::Pref,__CFString const*&,__CFString const*&,std::function<BOOL ()(void const*)> &,CASmartPreferences::Pref*>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *MEMORY[0x277D85DE8];
  std::__function::__value_func<BOOL ()(void const*)>::__value_func[abi:ne200100](v8, a4);
  *a1 = a2;
  a1[1] = a3;
  std::__function::__value_func<BOOL ()(void const*)>::__value_func[abi:ne200100]((a1 + 2), v8);
  std::__function::__value_func<BOOL ()(void const*)>::~__value_func[abi:ne200100](v8);
  return a1;
}

void sub_2725B6878(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<BOOL ()(void const*)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__split_buffer<CASmartPreferences::Pref>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 48;
    std::__function::__value_func<BOOL ()(void const*)>::~__value_func[abi:ne200100](i - 32);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__function::__value_func<BOOL ()(void const*)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<void ()(int)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(int)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__func<void CASmartPreferences::AddHandler<int>(__CFString const*,__CFString const*,int (*)(void const*,BOOL &),std::function<void ()(int)>)::{lambda(void const*)#1},std::allocator<void CASmartPreferences::AddHandler<int>(__CFString const*,__CFString const*,int (*)(void const*,BOOL &),std::function<void ()(int)>)::{lambda(void const*)#1}>,BOOL ()(void const*)>::operator()(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v8 = 0;
  v4 = (*(a1 + 8))(v3, &v8);
  v5 = 0;
  if (v8 == 1)
  {
    v9 = v4;
    v6 = *(a1 + 40);
    if (!v6)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*v6 + 48))(v6, &v9);
    v5 = v8;
  }

  return v5 & 1;
}

void std::__function::__func<void CASmartPreferences::AddHandler<int>(__CFString const*,__CFString const*,int (*)(void const*,BOOL &),std::function<void ()(int)>)::{lambda(void const*)#1},std::allocator<void CASmartPreferences::AddHandler<int>(__CFString const*,__CFString const*,int (*)(void const*,BOOL &),std::function<void ()(int)>)::{lambda(void const*)#1}>,BOOL ()(void const*)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()(int)>::~__value_func[abi:ne200100](a1 + 16);

  operator delete(a1);
}

uint64_t std::__function::__func<void CASmartPreferences::AddHandler<int>(__CFString const*,__CFString const*,int (*)(void const*,BOOL &),std::function<void ()(int)>)::{lambda(void const*)#1},std::allocator<void CASmartPreferences::AddHandler<int>(__CFString const*,__CFString const*,int (*)(void const*,BOOL &),std::function<void ()(int)>)::{lambda(void const*)#1}>,BOOL ()(void const*)>::__clone(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_2881B24E0;
  a2[1] = v2;
  return std::__function::__value_func<void ()(int)>::__value_func[abi:ne200100]((a2 + 2), a1 + 16);
}

void std::__function::__func<void CASmartPreferences::AddHandler<int>(__CFString const*,__CFString const*,int (*)(void const*,BOOL &),std::function<void ()(int)>)::{lambda(void const*)#1},std::allocator<void CASmartPreferences::AddHandler<int>(__CFString const*,__CFString const*,int (*)(void const*,BOOL &),std::function<void ()(int)>)::{lambda(void const*)#1}>,BOOL ()(void const*)>::~__func(void *a1)
{
  *a1 = &unk_2881B24E0;
  std::__function::__value_func<void ()(int)>::~__value_func[abi:ne200100]((a1 + 2));

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void CASmartPreferences::AddHandler<int>(__CFString const*,__CFString const*,int (*)(void const*,BOOL &),std::function<void ()(int)>)::{lambda(void const*)#1},std::allocator<void CASmartPreferences::AddHandler<int>(__CFString const*,__CFString const*,int (*)(void const*,BOOL &),std::function<void ()(int)>)::{lambda(void const*)#1}>,BOOL ()(void const*)>::~__func(void *a1)
{
  *a1 = &unk_2881B24E0;
  std::__function::__value_func<void ()(int)>::~__value_func[abi:ne200100]((a1 + 2));
  return a1;
}

uint64_t PrefValueToPriority(const __CFString *a1, BOOL *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  valuePtr = -1;
  v4 = CFGetTypeID(a1);
  if (v4 == CFNumberGetTypeID())
  {
    CFNumberGetValue(a1, kCFNumberIntType, &valuePtr);
    v5 = valuePtr + 3;
  }

  else
  {
    if (v4 != CFStringGetTypeID())
    {
      goto LABEL_22;
    }

    if (CFEqual(a1, @"error"))
    {
      v5 = 1;
      goto LABEL_23;
    }

    if (CFEqual(a1, @"warning"))
    {
      v5 = 2;
      goto LABEL_23;
    }

    if (CFEqual(a1, @"note") || CFEqual(a1, @"notice"))
    {
      v5 = 3;
      goto LABEL_23;
    }

    if (CFEqual(a1, @"info"))
    {
      v5 = 4;
      goto LABEL_23;
    }

    if (CFEqual(a1, @"details"))
    {
      v5 = 5;
      goto LABEL_23;
    }

    if (CFEqual(a1, @"minutiae"))
    {
      v5 = 6;
      goto LABEL_23;
    }

    if (CFEqual(a1, @"spew"))
    {
      v5 = 7;
      goto LABEL_23;
    }

    if (!CFStringGetCString(a1, buffer, 64, 0x8000100u))
    {
LABEL_22:
      v5 = -1;
      goto LABEL_23;
    }

    v9 = 0;
    v6 = sscanf(buffer, "%d", &v9);
    v5 = v9 + 3;
    if (v6 != 1)
    {
      v5 = -1;
    }
  }

LABEL_23:
  *a2 = v5 > 0;
  return v5 & ~(v5 >> 31);
}

uint64_t std::__function::__func<CALegacyLog::Scope::init(unsigned long long,char const*,__CFString const*,__CFString const*,unsigned int)::$_0,std::allocator<CALegacyLog::Scope::init(unsigned long long,char const*,__CFString const*,__CFString const*,unsigned int)::$_0>,void ()(int)>::operator()(uint64_t result, int *a2)
{
  v2 = *a2;
  v3 = *(result + 8);
  if (*a2 >= 5)
  {
    v4 = 5;
  }

  else
  {
    v4 = *a2;
  }

  if ((*(v3 + 48) & 0x20) != 0)
  {
    v2 = v4;
  }

  *(v3 + 8) = v2;
  return result;
}

uint64_t std::__function::__func<CALegacyLog::Scope::init(unsigned long long,char const*,__CFString const*,__CFString const*,unsigned int)::$_0,std::allocator<CALegacyLog::Scope::init(unsigned long long,char const*,__CFString const*,__CFString const*,unsigned int)::$_0>,void ()(int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2881B2528;
  a2[1] = v2;
  return result;
}