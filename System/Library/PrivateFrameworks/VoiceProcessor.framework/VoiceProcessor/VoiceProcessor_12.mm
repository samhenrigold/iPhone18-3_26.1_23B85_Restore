void sub_2725935A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void ****a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, void ***a27, uint64_t a28, uint64_t a29, void **a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *****a51)
{
  a51 = &a21;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a51);
  *(v51 - 176) = &a24;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v51 - 176));
  a21 = &a27;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a21);
  a27 = &a30;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a27);
  a30 = &a33;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a30);
  _Unwind_Resume(v52);
}

void sub_2725938D0(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x2725938D8);
  }

  __clang_call_terminate(a1);
}

uint64_t *std::ifstream::basic_ifstream(uint64_t *a1, uint64_t a2, int a3)
{
  a1[59] = 0;
  v4 = MEMORY[0x277D82858] + 64;
  a1[53] = MEMORY[0x277D82858] + 64;
  v5 = *(MEMORY[0x277D82808] + 16);
  v6 = *(MEMORY[0x277D82808] + 8);
  *a1 = v6;
  *(a1 + *(v6 - 24)) = v5;
  a1[1] = 0;
  v7 = (a1 + *(*a1 - 24));
  std::ios_base::init(v7, a1 + 2);
  v8 = MEMORY[0x277D82858] + 24;
  v7[1].__vftable = 0;
  v7[1].__fmtflags_ = -1;
  *a1 = v8;
  a1[53] = v4;
  MEMORY[0x2743CB9F0](a1 + 2);
  if (!std::filebuf::open())
  {
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 4);
  }

  return a1;
}

void sub_272593A74(_Unwind_Exception *a1)
{
  std::istream::~istream();
  MEMORY[0x2743CBE30](v1);
  _Unwind_Resume(a1);
}

void std::string::__init_with_sentinel[abi:ne200100]<std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>(std::string *this, void *a2)
{
  *&this->__r_.__value_.__l.__data_ = 0uLL;
  this->__r_.__value_.__r.__words[2] = 0;
  while (a2 && (a2[3] != a2[4] || (*(*a2 + 72))(a2) != -1))
  {
    v4 = a2[3];
    if (v4 == a2[4])
    {
      v5 = (*(*a2 + 72))(a2);
    }

    else
    {
      v5 = *v4;
    }

    std::string::push_back(this, v5);
    v6 = a2[3];
    if (v6 == a2[4])
    {
      (*(*a2 + 80))(a2);
    }

    else
    {
      a2[3] = v6 + 1;
    }
  }
}

void sub_272593BA8(void *a1)
{
  __cxa_begin_catch(a1);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  __cxa_rethrow();
}

void *std::ifstream::~ifstream(void *a1)
{
  v2 = MEMORY[0x277D82808];
  v3 = *MEMORY[0x277D82808];
  *a1 = *MEMORY[0x277D82808];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  MEMORY[0x2743CBA00](a1 + 2);
  std::istream::~istream();
  MEMORY[0x2743CBE30](a1 + 53);
  return a1;
}

void std::vector<std::__fs::filesystem::path>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (v6 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
    }

    v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    v8 = 2 * v7;
    if (2 * v7 <= v6 + 1)
    {
      v8 = v6 + 1;
    }

    if (v7 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v8;
    }

    v19.__end_cap_.__value_ = a1;
    if (v9)
    {
      std::allocator<std::string>::allocate_at_least[abi:ne200100](v9);
    }

    begin = (24 * v6);
    v19.__first_ = 0;
    v19.__begin_ = (24 * v6);
    v19.__end_ = (24 * v6);
    v19.__end_cap_.__value_ = 0;
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(begin, *a2, *(a2 + 1));
      begin = v19.__begin_;
      end = v19.__end_;
    }

    else
    {
      v12 = *a2;
      *(24 * v6 + 0x10) = *(a2 + 2);
      *&begin->__r_.__value_.__l.__data_ = v12;
      end = (24 * v6);
    }

    v19.__end_ = end + 1;
    v14 = *(a1 + 8);
    v15 = begin + *a1 - v14;
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::__fs::filesystem::path>,std::__fs::filesystem::path*>(a1, *a1, v14, v15);
    v16 = *a1;
    *a1 = v15;
    v17 = *(a1 + 16);
    v18 = v19.__end_;
    *(a1 + 8) = *&v19.__end_;
    v19.__end_ = v16;
    v19.__end_cap_.__value_ = v17;
    v19.__first_ = v16;
    v19.__begin_ = v16;
    std::__split_buffer<std::string>::~__split_buffer(&v19);
    v10 = v18;
  }

  else
  {
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(*(a1 + 8), *a2, *(a2 + 1));
    }

    else
    {
      v5 = *a2;
      *(v4 + 16) = *(a2 + 2);
      *v4 = v5;
    }

    v10 = (v4 + 24);
    *(a1 + 8) = v4 + 24;
  }

  *(a1 + 8) = v10;
}

CFTypeID applesauce::CF::make_DataRef(applesauce::CF *this, const UInt8 *a2, CFIndex a3)
{
  v4 = CFDataCreate(0, a2, a3);
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
  }

  *this = v4;
  v5 = CFGetTypeID(v4);
  result = CFDataGetTypeID();
  if (v5 != result)
  {
    v8 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v8, "Could not construct");
  }

  return result;
}

void sub_272593F2C(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  applesauce::CF::ObjectRef<__CFData const*>::~ObjectRef(v1);
  _Unwind_Resume(a1);
}

applesauce::CF::TypeRef *applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[5],applesauce::CF::DataRef &>(applesauce::CF::TypeRef *a1, char *a2, const void **a3)
{
  applesauce::CF::TypeRef::TypeRef(a1, a2);
  v5 = *a3;
  if (v5)
  {
    CFRetain(v5);
  }

  *(a1 + 1) = v5;
  return a1;
}

applesauce::CF::TypeRef *applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[7],unsigned int const&>(applesauce::CF::TypeRef *a1, char *a2, int *a3)
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

void sub_272594040(_Unwind_Exception *a1)
{
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(v1 + 1);
  applesauce::CF::TypeRef::~TypeRef(v1);
  _Unwind_Resume(a1);
}

applesauce::CF::TypeRef *applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[5],applesauce::CF::DataRef>(applesauce::CF::TypeRef *a1, char *a2, const void **a3)
{
  applesauce::CF::TypeRef::TypeRef(a1, a2);
  v5 = *a3;
  if (v5)
  {
    CFRetain(v5);
  }

  *(a1 + 1) = v5;
  return a1;
}

void VoiceProcessorV2::SetupDownlinkFarEndVoiceDNNVADGraph(VoiceProcessorV2 *this, char a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5)
{
  v70[20] = *MEMORY[0x277D85DE8];
  LOBYTE(v61) = a2;
  *(this + 1108) &= ~2uLL;
  VoiceProcessorV2::ReadDefaultsOverride(@"vp_enable_far_end_voice_dnn_vad", 0, &v61, 0, a5);
  if (LOBYTE(v61) == 1)
  {
    v6 = this + 8;
    v7 = this + 8;
    if (*(this + 31) < 0)
    {
      v7 = *v6;
    }

    buf[0].__pn_.__r_.__value_.__r.__words[0] = v7;
    std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(&v67, buf);
    std::__fs::filesystem::path::path[abi:ne200100]<char [8],void>(&v66.__pn_, "Generic");
    std::__fs::filesystem::operator/[abi:ne200100](&cf, &v67, &v66);
    VoiceProcessorV2::GetVersionNameForTuning(&v64, this);
    __replacement.__pn_ = v64;
    memset(&v64, 0, sizeof(v64));
    std::__fs::filesystem::operator/[abi:ne200100](buf, &cf, &__replacement);
    memset(&__p, 0, sizeof(__p));
    std::string::append[abi:ne200100]<char const*,0>(&__p, "gen_far_end_voice_nnvad.dspg", "");
    std::__fs::filesystem::operator/[abi:ne200100](&v60, buf, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(buf[0].__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf[0].__pn_.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__replacement.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__replacement.__pn_.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(cf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(cf.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v66.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v66.__pn_.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v67.__r_.__value_.__l.__data_);
    }

    std::__fs::filesystem::__status(&v60, 0);
    if (BYTE1(v61) && BYTE1(v61) != 255)
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v17 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(4, VPLogScope(void)::scope, 0))
      {
        v18 = (*v17 ? *v17 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          v19 = &v60;
          if ((v60.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v19 = v60.__pn_.__r_.__value_.__r.__words[0];
          }

          LODWORD(buf[0].__pn_.__r_.__value_.__l.__data_) = 136315650;
          *(buf[0].__pn_.__r_.__value_.__r.__words + 4) = "vpSetupDownlinkDSPChain.cpp";
          WORD2(buf[0].__pn_.__r_.__value_.__r.__words[1]) = 1024;
          *(&buf[0].__pn_.__r_.__value_.__r.__words[1] + 6) = 248;
          WORD1(buf[0].__pn_.__r_.__value_.__r.__words[2]) = 2080;
          *(&buf[0].__pn_.__r_.__value_.__r.__words[2] + 4) = v19;
          _os_log_impl(&dword_2724B4000, v18, OS_LOG_TYPE_INFO, "%25s:%-5d  <vp> loading far end voice DNN VAD graph %s", buf, 0x1Cu);
        }
      }

      v20 = *(this + 1588);
      if (v20 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v21 = &v60;
        if ((v60.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v21 = v60.__pn_.__r_.__value_.__r.__words[0];
        }

        CALegacyLog::log(v20, 4, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpSetupDownlinkDSPChain.cpp", 248, "SetupDownlinkFarEndVoiceDNNVADGraph", "loading far end voice DNN VAD graph %s", v21);
      }

      if ((v60.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v22 = &v60;
      }

      else
      {
        v22 = v60.__pn_.__r_.__value_.__r.__words[0];
      }

      std::ifstream::basic_ifstream(buf, v22, 8);
      std::string::__init_with_sentinel[abi:ne200100]<std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>(&cf, *(&buf[1].__pn_.__r_.__value_.__r.__words[2] + *(buf[0].__pn_.__r_.__value_.__r.__words[0] - 24)));
      if ((cf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_cf = &cf;
      }

      else
      {
        p_cf = cf.__r_.__value_.__r.__words[0];
      }

      if (p_cf)
      {
        if ((cf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(cf.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = cf.__r_.__value_.__l.__size_;
        }

        v25 = CFStringCreateWithBytes(0, p_cf, size, 0x8000100u, 0);
        v67.__r_.__value_.__r.__words[0] = v25;
        if (!v25)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(exception, "Could not construct");
        }
      }

      else
      {
        v25 = 0;
      }

      v27 = *(this + 2049);
      *(this + 2049) = v25;
      v67.__r_.__value_.__r.__words[0] = v27;
      if (v27)
      {
        CFRelease(v27);
      }

      std::__fs::filesystem::path::filename[abi:ne200100](&v66, &v60);
      memset(&__replacement, 0, sizeof(__replacement));
      v28 = std::__fs::filesystem::path::replace_extension(&v66, &__replacement);
      if (SHIBYTE(v28->__pn_.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v67, v28->__pn_.__r_.__value_.__l.__data_, v28->__pn_.__r_.__value_.__l.__size_);
      }

      else
      {
        v29 = *&v28->__pn_.__r_.__value_.__l.__data_;
        v67.__r_.__value_.__r.__words[2] = v28->__pn_.__r_.__value_.__r.__words[2];
        *&v67.__r_.__value_.__l.__data_ = v29;
      }

      if (SHIBYTE(__replacement.__pn_.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__replacement.__pn_.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v66.__pn_.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v66.__pn_.__r_.__value_.__l.__data_);
      }

      if ((v67.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v30 = &v67;
      }

      else
      {
        v30 = v67.__r_.__value_.__r.__words[0];
      }

      if (v30)
      {
        if ((v67.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v31 = HIBYTE(v67.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v31 = v67.__r_.__value_.__l.__size_;
        }

        v32 = CFStringCreateWithBytes(0, v30, v31, 0x8000100u, 0);
        v66.__pn_.__r_.__value_.__r.__words[0] = v32;
        if (!v32)
        {
          v33 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v33, "Could not construct");
        }
      }

      else
      {
        v32 = 0;
      }

      v34 = *(this + 2050);
      *(this + 2050) = v32;
      v66.__pn_.__r_.__value_.__r.__words[0] = v34;
      if (v34)
      {
        CFRelease(v34);
      }

      if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v67.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(cf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(cf.__r_.__value_.__l.__data_);
      }

      buf[0].__pn_.__r_.__value_.__r.__words[0] = *MEMORY[0x277D82808];
      *(buf[0].__pn_.__r_.__value_.__r.__words + *(buf[0].__pn_.__r_.__value_.__r.__words[0] - 24)) = *(MEMORY[0x277D82808] + 24);
      MEMORY[0x2743CBA00](&buf[0].__pn_.__r_.__value_.__r.__words[2]);
      std::istream::~istream();
      MEMORY[0x2743CBE30](v70);
    }

    else
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
          v10 = &v60;
          if ((v60.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v10 = v60.__pn_.__r_.__value_.__r.__words[0];
          }

          LODWORD(buf[0].__pn_.__r_.__value_.__l.__data_) = 136315650;
          *(buf[0].__pn_.__r_.__value_.__r.__words + 4) = "vpSetupDownlinkDSPChain.cpp";
          WORD2(buf[0].__pn_.__r_.__value_.__r.__words[1]) = 1024;
          *(&buf[0].__pn_.__r_.__value_.__r.__words[1] + 6) = 255;
          WORD1(buf[0].__pn_.__r_.__value_.__r.__words[2]) = 2080;
          *(&buf[0].__pn_.__r_.__value_.__r.__words[2] + 4) = v10;
          _os_log_impl(&dword_2724B4000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> file %s does not exist", buf, 0x1Cu);
        }
      }

      v11 = *(this + 1588);
      if (v11 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v12 = &v60;
        if ((v60.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v12 = v60.__pn_.__r_.__value_.__r.__words[0];
        }

        CALegacyLog::log(v11, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpSetupDownlinkDSPChain.cpp", 255, "SetupDownlinkFarEndVoiceDNNVADGraph", "file %s does not exist", v12);
      }
    }

    v35 = this + 8;
    if (*(this + 31) < 0)
    {
      v35 = *v6;
    }

    buf[0].__pn_.__r_.__value_.__r.__words[0] = v35;
    std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(&v67, buf);
    std::__fs::filesystem::path::path[abi:ne200100]<char [8],void>(&v66.__pn_, "Generic");
    std::__fs::filesystem::operator/[abi:ne200100](&cf, &v67, &v66);
    VoiceProcessorV2::GetVersionNameForTuning(&v64, this);
    __replacement.__pn_ = v64;
    memset(&v64, 0, sizeof(v64));
    std::__fs::filesystem::operator/[abi:ne200100](buf, &cf, &__replacement);
    memset(&__p, 0, sizeof(__p));
    std::string::append[abi:ne200100]<char const*,0>(&__p, "gen_far_end_voice_nnvad.austrip", "");
    std::__fs::filesystem::operator/[abi:ne200100](&v59, buf, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(buf[0].__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf[0].__pn_.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__replacement.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__replacement.__pn_.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(cf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(cf.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v66.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v66.__pn_.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v67.__r_.__value_.__l.__data_);
    }

    std::__fs::filesystem::__status(&v59, 0);
    if (v62 && v62 != 255)
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v41 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(4, VPLogScope(void)::scope, 0))
      {
        v42 = (*v41 ? *v41 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
        {
          v43 = &v59;
          if ((v59.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v43 = v59.__pn_.__r_.__value_.__r.__words[0];
          }

          LODWORD(buf[0].__pn_.__r_.__value_.__l.__data_) = 136315650;
          *(buf[0].__pn_.__r_.__value_.__r.__words + 4) = "vpSetupDownlinkDSPChain.cpp";
          WORD2(buf[0].__pn_.__r_.__value_.__r.__words[1]) = 1024;
          *(&buf[0].__pn_.__r_.__value_.__r.__words[1] + 6) = 266;
          WORD1(buf[0].__pn_.__r_.__value_.__r.__words[2]) = 2080;
          *(&buf[0].__pn_.__r_.__value_.__r.__words[2] + 4) = v43;
          _os_log_impl(&dword_2724B4000, v42, OS_LOG_TYPE_INFO, "%25s:%-5d  <vp> loading far end voice DNN VAD AU strip %s", buf, 0x1Cu);
        }
      }

      v44 = *(this + 1588);
      if (v44 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v45 = &v59;
        if ((v59.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v45 = v59.__pn_.__r_.__value_.__r.__words[0];
        }

        CALegacyLog::log(v44, 4, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpSetupDownlinkDSPChain.cpp", 266, "SetupDownlinkFarEndVoiceDNNVADGraph", "loading far end voice DNN VAD AU strip %s", v45);
      }

      if (SHIBYTE(v59.__pn_.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&buf[0].__pn_, v59.__pn_.__r_.__value_.__l.__data_, v59.__pn_.__r_.__value_.__l.__size_);
      }

      else
      {
        buf[0] = v59;
      }

      applesauce::CF::make_DataRef(&cf, buf);
      if (SHIBYTE(buf[0].__pn_.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf[0].__pn_.__r_.__value_.__l.__data_);
      }

      applesauce::CF::make_DictionaryRef(buf, cf.__r_.__value_.__l.__data_);
      v46 = *(this + 2051);
      *(this + 2051) = buf[0].__pn_.__r_.__value_.__r.__words[0];
      buf[0].__pn_.__r_.__value_.__r.__words[0] = v46;
      if (v46)
      {
        CFRelease(v46);
      }

      if (cf.__r_.__value_.__r.__words[0])
      {
        CFRelease(cf.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v36 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
      {
        v37 = (*v36 ? *v36 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          v38 = &v59;
          if ((v59.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v38 = v59.__pn_.__r_.__value_.__r.__words[0];
          }

          LODWORD(buf[0].__pn_.__r_.__value_.__l.__data_) = 136315650;
          *(buf[0].__pn_.__r_.__value_.__r.__words + 4) = "vpSetupDownlinkDSPChain.cpp";
          WORD2(buf[0].__pn_.__r_.__value_.__r.__words[1]) = 1024;
          *(&buf[0].__pn_.__r_.__value_.__r.__words[1] + 6) = 272;
          WORD1(buf[0].__pn_.__r_.__value_.__r.__words[2]) = 2080;
          *(&buf[0].__pn_.__r_.__value_.__r.__words[2] + 4) = v38;
          _os_log_impl(&dword_2724B4000, v37, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> file %s does not exist", buf, 0x1Cu);
        }
      }

      v39 = *(this + 1588);
      if (v39 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v40 = &v59;
        if ((v59.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v40 = v59.__pn_.__r_.__value_.__r.__words[0];
        }

        CALegacyLog::log(v39, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpSetupDownlinkDSPChain.cpp", 272, "SetupDownlinkFarEndVoiceDNNVADGraph", "file %s does not exist", v40);
      }
    }

    if (*(this + 31) < 0)
    {
      v6 = *v6;
    }

    buf[0].__pn_.__r_.__value_.__r.__words[0] = v6;
    std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(&v67, buf);
    std::__fs::filesystem::path::path[abi:ne200100]<char [8],void>(&v66.__pn_, "Generic");
    std::__fs::filesystem::operator/[abi:ne200100](&cf, &v67, &v66);
    VoiceProcessorV2::GetVersionNameForTuning(&v64, this);
    __replacement.__pn_ = v64;
    memset(&v64, 0, sizeof(v64));
    std::__fs::filesystem::operator/[abi:ne200100](buf, &cf, &__replacement);
    memset(&__p, 0, sizeof(__p));
    std::string::append[abi:ne200100]<char const*,0>(&__p, "gen_far_end_voice_nnvad.propstrip", "");
    std::__fs::filesystem::operator/[abi:ne200100](&v58, buf, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(buf[0].__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf[0].__pn_.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__replacement.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__replacement.__pn_.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(cf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(cf.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v66.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v66.__pn_.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v67.__r_.__value_.__l.__data_);
    }

    std::__fs::filesystem::__status(&v58, 0);
    if (cf.__r_.__value_.__s.__data_[0] && cf.__r_.__value_.__s.__data_[0] != 255)
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v52 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(4, VPLogScope(void)::scope, 0))
      {
        v53 = (*v52 ? *v52 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
        {
          v54 = &v58;
          if ((v58.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v54 = v58.__pn_.__r_.__value_.__r.__words[0];
          }

          LODWORD(buf[0].__pn_.__r_.__value_.__l.__data_) = 136315650;
          *(buf[0].__pn_.__r_.__value_.__r.__words + 4) = "vpSetupDownlinkDSPChain.cpp";
          WORD2(buf[0].__pn_.__r_.__value_.__r.__words[1]) = 1024;
          *(&buf[0].__pn_.__r_.__value_.__r.__words[1] + 6) = 283;
          WORD1(buf[0].__pn_.__r_.__value_.__r.__words[2]) = 2080;
          *(&buf[0].__pn_.__r_.__value_.__r.__words[2] + 4) = v54;
          _os_log_impl(&dword_2724B4000, v53, OS_LOG_TYPE_INFO, "%25s:%-5d  <vp> loading far end voice DNN VAD property strip %s", buf, 0x1Cu);
        }
      }

      v55 = *(this + 1588);
      if (v55 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v56 = &v58;
        if ((v58.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v56 = v58.__pn_.__r_.__value_.__r.__words[0];
        }

        CALegacyLog::log(v55, 4, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpSetupDownlinkDSPChain.cpp", 283, "SetupDownlinkFarEndVoiceDNNVADGraph", "loading far end voice DNN VAD property strip %s", v56);
      }

      if (SHIBYTE(v58.__pn_.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&buf[0].__pn_, v58.__pn_.__r_.__value_.__l.__data_, v58.__pn_.__r_.__value_.__l.__size_);
      }

      else
      {
        buf[0] = v58;
      }

      applesauce::CF::make_DataRef(&cf, buf);
      if (SHIBYTE(buf[0].__pn_.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf[0].__pn_.__r_.__value_.__l.__data_);
      }

      applesauce::CF::make_DictionaryRef(buf, cf.__r_.__value_.__l.__data_);
      v57 = *(this + 2052);
      *(this + 2052) = buf[0].__pn_.__r_.__value_.__r.__words[0];
      buf[0].__pn_.__r_.__value_.__r.__words[0] = v57;
      if (v57)
      {
        CFRelease(v57);
      }

      if (cf.__r_.__value_.__r.__words[0])
      {
        CFRelease(cf.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v47 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
      {
        v48 = (*v47 ? *v47 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
        {
          v49 = &v58;
          if ((v58.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v49 = v58.__pn_.__r_.__value_.__r.__words[0];
          }

          LODWORD(buf[0].__pn_.__r_.__value_.__l.__data_) = 136315650;
          *(buf[0].__pn_.__r_.__value_.__r.__words + 4) = "vpSetupDownlinkDSPChain.cpp";
          WORD2(buf[0].__pn_.__r_.__value_.__r.__words[1]) = 1024;
          *(&buf[0].__pn_.__r_.__value_.__r.__words[1] + 6) = 289;
          WORD1(buf[0].__pn_.__r_.__value_.__r.__words[2]) = 2080;
          *(&buf[0].__pn_.__r_.__value_.__r.__words[2] + 4) = v49;
          _os_log_impl(&dword_2724B4000, v48, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> file %s does not exist", buf, 0x1Cu);
        }
      }

      v50 = *(this + 1588);
      if (v50 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v51 = &v58;
        if ((v58.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v51 = v58.__pn_.__r_.__value_.__r.__words[0];
        }

        CALegacyLog::log(v50, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpSetupDownlinkDSPChain.cpp", 289, "SetupDownlinkFarEndVoiceDNNVADGraph", "file %s does not exist", v51);
      }
    }

    if (*(this + 2049) && *(this + 2050) && *(this + 2051) && *(this + 2052))
    {
      *(this + 1108) |= 2uLL;
    }

    if (SHIBYTE(v58.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v58.__pn_.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v59.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v59.__pn_.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v60.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v60.__pn_.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v13 = *(this + 2049);
    *(this + 2049) = 0;
    if (v13)
    {
      CFRelease(v13);
    }

    v14 = *(this + 2050);
    *(this + 2050) = 0;
    if (v14)
    {
      CFRelease(v14);
    }

    v15 = *(this + 2051);
    *(this + 2051) = 0;
    if (v15)
    {
      CFRelease(v15);
    }

    v16 = *(this + 2052);
    *(this + 2052) = 0;
    if (v16)
    {
      CFRelease(v16);
    }
  }
}

void sub_272595174(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46, __int128 buf)
{
  if (a2)
  {
    applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(&a32);
    if (a40 < 0)
    {
      operator delete(__p);
    }

    if (a46 < 0)
    {
      operator delete(a41);
    }

    std::ifstream::~ifstream(&buf);
    __cxa_begin_catch(a1);
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v50 = CALog::LogObjIfEnabled(1, VPLogScope(void)::scope);
    if (v50)
    {
      v51 = v50;
      if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 136315394;
        *(&buf + 4) = "vpSetupDownlinkDSPChain.cpp";
        WORD6(buf) = 1024;
        *(&buf + 14) = 258;
        _os_log_impl(&dword_2724B4000, v51, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> failed to load far end voice DNN VAD graph text", &buf, 0x12u);
      }
    }

    v52 = *(v47 + 12704);
    if (v52 && ((*(v48 + 3593) & 1) != 0 || *(v48 + 3594) == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      CALegacyLog::log(v52, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpSetupDownlinkDSPChain.cpp", 258, "SetupDownlinkFarEndVoiceDNNVADGraph", "failed to load far end voice DNN VAD graph text");
    }

    __cxa_end_catch();
    JUMPOUT(0x2725947E4);
  }

  _Unwind_Resume(a1);
}

void VoiceProcessorV2::SetupUplinkBasicAUChainForHwHasVP(int8x16_t *this)
{
  v2 = this + 1024;
  v6 = this + 293;
  v7 = 0;
  std::__fill_n_BOOL[abi:ne200100]<false,std::__bitset<2ul,71ul>>(&v6);
  v4 = this[293];
  this[293] = vorrq_s8(v4, xmmword_272756330);
  if (v2[14].i32[0] && (this[141].i8[6] & 1) == 0)
  {
    v5 = v4.i64[1] | 0x50;
LABEL_8:
    this[293].i64[1] = v5;
    return;
  }

  if ((v2[11].i8[8] & 1) == 0)
  {
    if ((this[141].i8[6] & 1) != 0 || (this[143].i8[0] != 1 ? (AutomaticChatFlavor = v2[9].u32[2]) : (AutomaticChatFlavor = VoiceProcessorV2::GetAutomaticChatFlavor(this)), AutomaticChatFlavor == 2))
    {
      if ((this[1034].i8[0] & 4) != 0)
      {
        this[293].i64[0] |= 0x800000000000000uLL;
        if (this[141].i8[6] == 1)
        {
          if (VoiceProcessorV2::IsDeviceSupportingAdvancedChatFlavors(AutomaticChatFlavor))
          {
            v5 = this[293].i64[1] | 4;
            goto LABEL_8;
          }
        }
      }
    }
  }
}

void VoiceProcessorV2::SetupUplinkDNNVADGraph(VoiceProcessorV2 *this)
{
  v59[20] = *MEMORY[0x277D85DE8];
  v2 = this + 15881;
  if ((_os_feature_enabled_impl() & 1) != 0 || (*(this + 2260) & 1) != 0 || v2[680] == 1)
  {
    *(this + 586) &= ~0x2000000000000000uLL;
    v3 = this + 8;
    v4 = this + 8;
    if (*(this + 31) < 0)
    {
      v4 = *v3;
    }

    __p[0].__pn_.__r_.__value_.__r.__words[0] = v4;
    std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(&v57.__pn_, __p);
    std::__fs::filesystem::path::append[abi:ne200100]<char [8]>(&v57.__pn_, "Generic");
    VoiceProcessorV2::GetVersionNameForTuning(&__p[0].__pn_, this);
    std::__fs::filesystem::path::append[abi:ne200100]<std::string>(&v57.__pn_, __p);
    if (SHIBYTE(__p[0].__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__pn_.__r_.__value_.__l.__data_);
    }

    if (std::__fs::filesystem::path::__filename(&v57).__size_)
    {
      std::string::push_back(&v57.__pn_, 47);
    }

    std::string::append[abi:ne200100]<char const*,0>(&v57.__pn_, "nnvad.dspg", "");
    std::__fs::filesystem::__status(&v57, 0);
    if (v55 && v55 != 255)
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
          v12 = &v57;
          if ((v57.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v12 = v57.__pn_.__r_.__value_.__r.__words[0];
          }

          LODWORD(__p[0].__pn_.__r_.__value_.__l.__data_) = 136315650;
          *(__p[0].__pn_.__r_.__value_.__r.__words + 4) = "vpSetupUplinkDSPChain.cpp";
          WORD2(__p[0].__pn_.__r_.__value_.__r.__words[1]) = 1024;
          *(&__p[0].__pn_.__r_.__value_.__r.__words[1] + 6) = 51;
          WORD1(__p[0].__pn_.__r_.__value_.__r.__words[2]) = 2080;
          *(&__p[0].__pn_.__r_.__value_.__r.__words[2] + 4) = v12;
          _os_log_impl(&dword_2724B4000, v11, OS_LOG_TYPE_INFO, "%25s:%-5d  <vp> loading DNN VAD graph %s", __p, 0x1Cu);
        }
      }

      v13 = *(this + 1588);
      if (v13 && ((*v2 & 1) != 0 || v2[1] == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v14 = &v57;
        if ((v57.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v14 = v57.__pn_.__r_.__value_.__r.__words[0];
        }

        CALegacyLog::log(v13, 4, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpSetupUplinkDSPChain.cpp", 51, "SetupUplinkDNNVADGraph", "loading DNN VAD graph %s", v14);
      }

      if ((v57.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v15 = &v57;
      }

      else
      {
        v15 = v57.__pn_.__r_.__value_.__r.__words[0];
      }

      std::ifstream::basic_ifstream(__p, v15, 8);
      std::string::__init_with_sentinel[abi:ne200100]<std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>(&__replacement.__pn_, *(&__p[1].__pn_.__r_.__value_.__r.__words[2] + *(__p[0].__pn_.__r_.__value_.__r.__words[0] - 24)));
      if ((__replacement.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_replacement = &__replacement;
      }

      else
      {
        p_replacement = __replacement.__pn_.__r_.__value_.__r.__words[0];
      }

      if (p_replacement)
      {
        if ((__replacement.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(__replacement.__pn_.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = __replacement.__pn_.__r_.__value_.__l.__size_;
        }

        v18 = CFStringCreateWithBytes(0, p_replacement, size, 0x8000100u, 0);
        v53.__r_.__value_.__r.__words[0] = v18;
        if (!v18)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(exception, "Could not construct");
        }
      }

      else
      {
        v18 = 0;
      }

      v20 = *(this + 2056);
      *(this + 2056) = v18;
      v53.__r_.__value_.__r.__words[0] = v20;
      if (v20)
      {
        CFRelease(v20);
      }

      if (SHIBYTE(__replacement.__pn_.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__replacement.__pn_.__r_.__value_.__l.__data_);
      }

      __p[0].__pn_.__r_.__value_.__r.__words[0] = *MEMORY[0x277D82808];
      *(__p[0].__pn_.__r_.__value_.__r.__words + *(__p[0].__pn_.__r_.__value_.__r.__words[0] - 24)) = *(MEMORY[0x277D82808] + 24);
      MEMORY[0x2743CBA00](&__p[0].__pn_.__r_.__value_.__r.__words[2]);
      std::istream::~istream();
      MEMORY[0x2743CBE30](v59);
    }

    else
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v5 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
      {
        v6 = (*v5 ? *v5 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          v7 = &v57;
          if ((v57.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v7 = v57.__pn_.__r_.__value_.__r.__words[0];
          }

          LODWORD(__p[0].__pn_.__r_.__value_.__l.__data_) = 136315650;
          *(__p[0].__pn_.__r_.__value_.__r.__words + 4) = "vpSetupUplinkDSPChain.cpp";
          WORD2(__p[0].__pn_.__r_.__value_.__r.__words[1]) = 1024;
          *(&__p[0].__pn_.__r_.__value_.__r.__words[1] + 6) = 56;
          WORD1(__p[0].__pn_.__r_.__value_.__r.__words[2]) = 2080;
          *(&__p[0].__pn_.__r_.__value_.__r.__words[2] + 4) = v7;
          _os_log_impl(&dword_2724B4000, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> file %s does not exist", __p, 0x1Cu);
        }
      }

      v8 = *(this + 1588);
      if (v8 && ((*v2 & 1) != 0 || v2[1] == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v9 = &v57;
        if ((v57.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v9 = v57.__pn_.__r_.__value_.__r.__words[0];
        }

        CALegacyLog::log(v8, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpSetupUplinkDSPChain.cpp", 56, "SetupUplinkDNNVADGraph", "file %s does not exist", v9);
      }
    }

    if (SHIBYTE(v57.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v57.__pn_.__r_.__value_.__l.__data_);
    }

    VoiceProcessorV2::GetDNNVADAUStripFilePath(&v57.__pn_, this);
    std::__fs::filesystem::path::filename[abi:ne200100](__p, &v57);
    memset(&__replacement, 0, sizeof(__replacement));
    v21 = std::__fs::filesystem::path::replace_extension(__p, &__replacement);
    if (SHIBYTE(v21->__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v53, v21->__pn_.__r_.__value_.__l.__data_, v21->__pn_.__r_.__value_.__l.__size_);
    }

    else
    {
      v22 = *&v21->__pn_.__r_.__value_.__l.__data_;
      v53.__r_.__value_.__r.__words[2] = v21->__pn_.__r_.__value_.__r.__words[2];
      *&v53.__r_.__value_.__l.__data_ = v22;
    }

    if (SHIBYTE(__replacement.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__replacement.__pn_.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__p[0].__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__pn_.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v57.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v57.__pn_.__r_.__value_.__l.__data_);
    }

    if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v23 = &v53;
    }

    else
    {
      v23 = v53.__r_.__value_.__r.__words[0];
    }

    if (v23)
    {
      if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v24 = HIBYTE(v53.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v24 = v53.__r_.__value_.__l.__size_;
      }

      v25 = CFStringCreateWithBytes(0, v23, v24, 0x8000100u, 0);
      v54 = v25;
      if (!v25)
      {
        v26 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v26, "Could not construct");
      }
    }

    else
    {
      v25 = 0;
    }

    v27 = *(this + 2057);
    *(this + 2057) = v25;
    v54 = v27;
    if (v27)
    {
      CFRelease(v27);
    }

    if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v53.__r_.__value_.__l.__data_);
    }

    VoiceProcessorV2::GetDNNVADAUStripFilePath(&v57.__pn_, this);
    std::__fs::filesystem::__status(&v57, 0);
    if (v53.__r_.__value_.__s.__data_[0] && v53.__r_.__value_.__s.__data_[0] != 255)
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v33 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(4, VPLogScope(void)::scope, 0))
      {
        v34 = (*v33 ? *v33 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
        {
          v35 = &v57;
          if ((v57.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v35 = v57.__pn_.__r_.__value_.__r.__words[0];
          }

          LODWORD(__p[0].__pn_.__r_.__value_.__l.__data_) = 136315650;
          *(__p[0].__pn_.__r_.__value_.__r.__words + 4) = "vpSetupUplinkDSPChain.cpp";
          WORD2(__p[0].__pn_.__r_.__value_.__r.__words[1]) = 1024;
          *(&__p[0].__pn_.__r_.__value_.__r.__words[1] + 6) = 74;
          WORD1(__p[0].__pn_.__r_.__value_.__r.__words[2]) = 2080;
          *(&__p[0].__pn_.__r_.__value_.__r.__words[2] + 4) = v35;
          _os_log_impl(&dword_2724B4000, v34, OS_LOG_TYPE_INFO, "%25s:%-5d  <vp> loading DNN VAD AU strip %s", __p, 0x1Cu);
        }
      }

      v36 = *(this + 1588);
      if (v36 && ((*v2 & 1) != 0 || v2[1] == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v37 = &v57;
        if ((v57.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v37 = v57.__pn_.__r_.__value_.__r.__words[0];
        }

        CALegacyLog::log(v36, 4, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpSetupUplinkDSPChain.cpp", 74, "SetupUplinkDNNVADGraph", "loading DNN VAD AU strip %s", v37);
      }

      if (SHIBYTE(v57.__pn_.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&__p[0].__pn_, v57.__pn_.__r_.__value_.__l.__data_, v57.__pn_.__r_.__value_.__l.__size_);
      }

      else
      {
        __p[0] = v57;
      }

      applesauce::CF::make_DataRef(&__replacement, __p);
      if (SHIBYTE(__p[0].__pn_.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p[0].__pn_.__r_.__value_.__l.__data_);
      }

      applesauce::CF::make_DictionaryRef(__p, __replacement.__pn_.__r_.__value_.__l.__data_);
      v38 = *(this + 2058);
      *(this + 2058) = __p[0].__pn_.__r_.__value_.__r.__words[0];
      __p[0].__pn_.__r_.__value_.__r.__words[0] = v38;
      if (v38)
      {
        CFRelease(v38);
      }

      if (__replacement.__pn_.__r_.__value_.__r.__words[0])
      {
        CFRelease(__replacement.__pn_.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v28 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
      {
        v29 = (*v28 ? *v28 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          v30 = &v57;
          if ((v57.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v30 = v57.__pn_.__r_.__value_.__r.__words[0];
          }

          LODWORD(__p[0].__pn_.__r_.__value_.__l.__data_) = 136315650;
          *(__p[0].__pn_.__r_.__value_.__r.__words + 4) = "vpSetupUplinkDSPChain.cpp";
          WORD2(__p[0].__pn_.__r_.__value_.__r.__words[1]) = 1024;
          *(&__p[0].__pn_.__r_.__value_.__r.__words[1] + 6) = 80;
          WORD1(__p[0].__pn_.__r_.__value_.__r.__words[2]) = 2080;
          *(&__p[0].__pn_.__r_.__value_.__r.__words[2] + 4) = v30;
          _os_log_impl(&dword_2724B4000, v29, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> file %s does not exist", __p, 0x1Cu);
        }
      }

      v31 = *(this + 1588);
      if (v31 && ((*v2 & 1) != 0 || v2[1] == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v32 = &v57;
        if ((v57.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v32 = v57.__pn_.__r_.__value_.__r.__words[0];
        }

        CALegacyLog::log(v31, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpSetupUplinkDSPChain.cpp", 80, "SetupUplinkDNNVADGraph", "file %s does not exist", v32);
      }
    }

    if (SHIBYTE(v57.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v57.__pn_.__r_.__value_.__l.__data_);
    }

    if (*(this + 31) < 0)
    {
      v3 = *v3;
    }

    __p[0].__pn_.__r_.__value_.__r.__words[0] = v3;
    std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(&v57.__pn_, __p);
    std::__fs::filesystem::path::append[abi:ne200100]<char [8]>(&v57.__pn_, "Generic");
    VoiceProcessorV2::GetVersionNameForTuning(&__p[0].__pn_, this);
    std::__fs::filesystem::path::append[abi:ne200100]<std::string>(&v57.__pn_, __p);
    if (SHIBYTE(__p[0].__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__pn_.__r_.__value_.__l.__data_);
    }

    if (std::__fs::filesystem::path::__filename(&v57).__size_)
    {
      std::string::push_back(&v57.__pn_, 47);
    }

    std::string::append[abi:ne200100]<char const*,0>(&v57.__pn_, "nnvad.propstrip", "");
    std::__fs::filesystem::__status(&v57, 0);
    if (__replacement.__pn_.__r_.__value_.__s.__data_[0] && __replacement.__pn_.__r_.__value_.__s.__data_[0] != 255)
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v44 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(4, VPLogScope(void)::scope, 0))
      {
        v45 = (*v44 ? *v44 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
        {
          v46 = &v57;
          if ((v57.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v46 = v57.__pn_.__r_.__value_.__r.__words[0];
          }

          LODWORD(__p[0].__pn_.__r_.__value_.__l.__data_) = 136315650;
          *(__p[0].__pn_.__r_.__value_.__r.__words + 4) = "vpSetupUplinkDSPChain.cpp";
          WORD2(__p[0].__pn_.__r_.__value_.__r.__words[1]) = 1024;
          *(&__p[0].__pn_.__r_.__value_.__r.__words[1] + 6) = 92;
          WORD1(__p[0].__pn_.__r_.__value_.__r.__words[2]) = 2080;
          *(&__p[0].__pn_.__r_.__value_.__r.__words[2] + 4) = v46;
          _os_log_impl(&dword_2724B4000, v45, OS_LOG_TYPE_INFO, "%25s:%-5d  <vp> loading DNN VAD property strip %s", __p, 0x1Cu);
        }
      }

      v47 = *(this + 1588);
      if (v47 && ((*v2 & 1) != 0 || v2[1] == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v48 = &v57;
        if ((v57.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v48 = v57.__pn_.__r_.__value_.__r.__words[0];
        }

        CALegacyLog::log(v47, 4, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpSetupUplinkDSPChain.cpp", 92, "SetupUplinkDNNVADGraph", "loading DNN VAD property strip %s", v48);
      }

      if (SHIBYTE(v57.__pn_.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&__p[0].__pn_, v57.__pn_.__r_.__value_.__l.__data_, v57.__pn_.__r_.__value_.__l.__size_);
      }

      else
      {
        __p[0] = v57;
      }

      applesauce::CF::make_DataRef(&__replacement, __p);
      if (SHIBYTE(__p[0].__pn_.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p[0].__pn_.__r_.__value_.__l.__data_);
      }

      applesauce::CF::make_DictionaryRef(__p, __replacement.__pn_.__r_.__value_.__l.__data_);
      v49 = *(this + 2059);
      *(this + 2059) = __p[0].__pn_.__r_.__value_.__r.__words[0];
      __p[0].__pn_.__r_.__value_.__r.__words[0] = v49;
      if (v49)
      {
        CFRelease(v49);
      }

      if (__replacement.__pn_.__r_.__value_.__r.__words[0])
      {
        CFRelease(__replacement.__pn_.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v39 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
      {
        v40 = (*v39 ? *v39 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          v41 = &v57;
          if ((v57.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v41 = v57.__pn_.__r_.__value_.__r.__words[0];
          }

          LODWORD(__p[0].__pn_.__r_.__value_.__l.__data_) = 136315650;
          *(__p[0].__pn_.__r_.__value_.__r.__words + 4) = "vpSetupUplinkDSPChain.cpp";
          WORD2(__p[0].__pn_.__r_.__value_.__r.__words[1]) = 1024;
          *(&__p[0].__pn_.__r_.__value_.__r.__words[1] + 6) = 98;
          WORD1(__p[0].__pn_.__r_.__value_.__r.__words[2]) = 2080;
          *(&__p[0].__pn_.__r_.__value_.__r.__words[2] + 4) = v41;
          _os_log_impl(&dword_2724B4000, v40, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> file %s does not exist", __p, 0x1Cu);
        }
      }

      v42 = *(this + 1588);
      if (v42 && ((*v2 & 1) != 0 || v2[1] == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v43 = &v57;
        if ((v57.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v43 = v57.__pn_.__r_.__value_.__r.__words[0];
        }

        CALegacyLog::log(v42, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpSetupUplinkDSPChain.cpp", 98, "SetupUplinkDNNVADGraph", "file %s does not exist", v43);
      }
    }

    if (SHIBYTE(v57.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v57.__pn_.__r_.__value_.__l.__data_);
    }

    if (*(this + 2056) && *(this + 2057) && *(this + 2058) && *(this + 2059))
    {
      *(this + 586) |= 0x2000000000000000uLL;
    }

    else
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v50 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
      {
        v51 = (*v50 ? *v50 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
        {
          LODWORD(__p[0].__pn_.__r_.__value_.__l.__data_) = 136315394;
          *(__p[0].__pn_.__r_.__value_.__r.__words + 4) = "vpSetupUplinkDSPChain.cpp";
          WORD2(__p[0].__pn_.__r_.__value_.__r.__words[1]) = 1024;
          *(&__p[0].__pn_.__r_.__value_.__r.__words[1] + 6) = 110;
          _os_log_impl(&dword_2724B4000, v51, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> Not able to enable DNNVAD", __p, 0x12u);
        }
      }

      v52 = *(this + 1588);
      if (v52 && ((*v2 & 1) != 0 || v2[1] == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        CALegacyLog::log(v52, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpSetupUplinkDSPChain.cpp", 110, "SetupUplinkDNNVADGraph", "Not able to enable DNNVAD");
      }
    }
  }
}

void VoiceProcessorV2::SetupUplinkGMCoexMitigationGraph(VoiceProcessorV2 *this)
{
  v61 = *MEMORY[0x277D85DE8];
  v1 = *(this + 297);
  if (v1 != *(this + 298) && *v1 == 1886216809 && _os_feature_enabled_impl())
  {
    *(this + 586) &= ~0x40uLL;
    v3 = this + 8;
    v4 = this + 8;
    if (*(this + 31) < 0)
    {
      v4 = *v3;
    }

    *v58 = v4;
    std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(&pn, v58);
    VoiceProcessorV2::GetHardwareModelNameForTuning(&__replacement, this, 0);
    __p = __replacement;
    memset(&__replacement, 0, sizeof(__replacement));
    std::__fs::filesystem::operator/[abi:ne200100](v58, &pn, &__p);
    if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__pn_.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__replacement.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__replacement.__pn_.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(pn.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(pn.__r_.__value_.__l.__data_);
    }

    VoiceProcessorV2::GetVersionNameForTuning(&pn, this);
    std::__fs::filesystem::path::append[abi:ne200100]<std::string>(v58, &pn);
    if (SHIBYTE(pn.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(pn.__r_.__value_.__l.__data_);
    }

    if (std::__fs::filesystem::path::__filename(v58).__size_)
    {
      std::string::push_back(v58, 47);
    }

    std::string::append[abi:ne200100]<char const*,0>(v58, "vp-gm-coexkill.dspg", "");
    v5 = this + 12288;
    *v60 = *v58;
    *&v60[16] = *&v58[16];
    v60[24] = 1;
    std::__fs::filesystem::__status(v60, 0);
    if (v53 && v53 != 255)
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v11 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(4, VPLogScope(void)::scope, 0))
      {
        v12 = (*v11 ? *v11 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          if ((v60[24] & 1) == 0)
          {
            std::__throw_bad_optional_access[abi:ne200100]();
          }

          v13 = v60;
          if (v60[23] < 0)
          {
            v13 = *v60;
          }

          *v58 = 136315650;
          *&v58[4] = "vpSetupUplinkDSPChain.cpp";
          *&v58[12] = 1024;
          *&v58[14] = 139;
          *&v58[18] = 2080;
          *&v58[20] = v13;
          _os_log_impl(&dword_2724B4000, v12, OS_LOG_TYPE_INFO, "%25s:%-5d  <vp> loading GM Coex Mitigation graph %s", v58, 0x1Cu);
        }
      }

      v14 = *(this + 1588);
      if (v14 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        if ((v60[24] & 1) == 0)
        {
          std::__throw_bad_optional_access[abi:ne200100]();
        }

        v15 = v60;
        if (v60[23] < 0)
        {
          v15 = *v60;
        }

        CALegacyLog::log(v14, 4, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpSetupUplinkDSPChain.cpp", 139, "SetupUplinkGMCoexMitigationGraph", "loading GM Coex Mitigation graph %s", v15);
      }

      if ((v60[24] & 1) == 0)
      {
        std::__throw_bad_optional_access[abi:ne200100]();
      }

      if (v60[23] >= 0)
      {
        v16 = v60;
      }

      else
      {
        v16 = *v60;
      }

      std::ifstream::basic_ifstream(v58, v16, 8);
      std::string::__init_with_sentinel[abi:ne200100]<std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>(&pn, *&v58[*(*v58 - 24) + 40]);
      if ((pn.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v17 = &pn;
      }

      else
      {
        v17 = pn.__r_.__value_.__r.__words[0];
      }

      if (v17)
      {
        if ((pn.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(pn.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = pn.__r_.__value_.__l.__size_;
        }

        v19 = CFStringCreateWithBytes(0, v17, size, 0x8000100u, 0);
        __p.__pn_.__r_.__value_.__r.__words[0] = v19;
        if (!v19)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(exception, "Could not construct");
        }
      }

      else
      {
        v19 = 0;
      }

      v21 = *(this + 2089);
      *(this + 2089) = v19;
      __p.__pn_.__r_.__value_.__r.__words[0] = v21;
      if (v21)
      {
        CFRelease(v21);
      }

      if (SHIBYTE(pn.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(pn.__r_.__value_.__l.__data_);
      }

      *v58 = *MEMORY[0x277D82808];
      *&v58[*(*v58 - 24)] = *(MEMORY[0x277D82808] + 24);
      MEMORY[0x2743CBA00](&v58[16]);
      std::istream::~istream();
      MEMORY[0x2743CBE30](&v59);
    }

    else
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v6 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(3, VPLogScope(void)::scope, 0))
      {
        v7 = (*v6 ? *v6 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v8 = v60;
          if (v60[23] < 0)
          {
            v8 = *v60;
          }

          *v58 = 136315650;
          *&v58[4] = "vpSetupUplinkDSPChain.cpp";
          *&v58[12] = 1024;
          *&v58[14] = 144;
          *&v58[18] = 2080;
          *&v58[20] = v8;
          _os_log_impl(&dword_2724B4000, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> %s file does not exist", v58, 0x1Cu);
        }
      }

      v9 = *(this + 1588);
      if (v9 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v10 = v60;
        if (v60[23] < 0)
        {
          v10 = *v60;
        }

        CALegacyLog::log(v9, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpSetupUplinkDSPChain.cpp", 144, "SetupUplinkGMCoexMitigationGraph", "%s file does not exist", v10);
      }
    }

    if (v60[24] == 1 && (v60[23] & 0x80000000) != 0)
    {
      operator delete(*v60);
    }

    VoiceProcessorV2::GetGMCoexMitigationAUStripFilePath(v58, this);
    if (v58[24] == 1)
    {
      std::__fs::filesystem::path::filename[abi:ne200100](&__p, v58);
      memset(&__replacement, 0, sizeof(__replacement));
      v22 = std::__fs::filesystem::path::replace_extension(&__p, &__replacement);
      if (SHIBYTE(v22->__pn_.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&pn, v22->__pn_.__r_.__value_.__l.__data_, v22->__pn_.__r_.__value_.__l.__size_);
      }

      else
      {
        pn = v22->__pn_;
      }

      *v60 = pn;
      v60[24] = 1;
      if (SHIBYTE(__replacement.__pn_.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__replacement.__pn_.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__pn_.__r_.__value_.__l.__data_);
      }

      if ((v58[24] & 1) != 0 && (v58[23] & 0x80000000) != 0)
      {
        operator delete(*v58);
      }
    }

    else
    {
      v60[0] = 0;
      v60[24] = 0;
    }

    if (v60[24] == 1)
    {
      if (v60[23] >= 0)
      {
        v23 = v60;
      }

      else
      {
        v23 = *v60;
      }

      if (v23)
      {
        if (v60[23] >= 0)
        {
          v24 = v60[23];
        }

        else
        {
          v24 = *&v60[8];
        }

        v25 = CFStringCreateWithBytes(0, v23, v24, 0x8000100u, 0);
        *v58 = v25;
        if (!v25)
        {
          v26 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v26, "Could not construct");
        }
      }

      else
      {
        v25 = 0;
      }

      v27 = *(this + 2090);
      *(this + 2090) = v25;
      *v58 = v27;
      if (v27)
      {
        CFRelease(v27);
      }

      if ((v60[24] & 1) != 0 && (v60[23] & 0x80000000) != 0)
      {
        operator delete(*v60);
      }
    }

    VoiceProcessorV2::GetGMCoexMitigationAUStripFilePath(v58, this);
    if (v58[24] == 1)
    {
      std::__fs::filesystem::__status(v58, 0);
      if (v54 && v54 != 255)
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v33 = VPLogScope(void)::scope;
        if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(4, VPLogScope(void)::scope, 0))
        {
          v34 = (*v33 ? *v33 : MEMORY[0x277D86220]);
          if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
          {
            v35 = v58;
            if (v58[23] < 0)
            {
              v35 = *v58;
            }

            *v60 = 136315650;
            *&v60[4] = "vpSetupUplinkDSPChain.cpp";
            *&v60[12] = 1024;
            *&v60[14] = 170;
            *&v60[18] = 2080;
            *&v60[20] = v35;
            _os_log_impl(&dword_2724B4000, v34, OS_LOG_TYPE_INFO, "%25s:%-5d  <vp> loading GM Coex Mitigation AU strip %s", v60, 0x1Cu);
          }
        }

        v36 = *(this + 1588);
        if (v36 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
        {
          if (VPLogScope(void)::once != -1)
          {
            dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
          }

          v37 = v58;
          if (v58[23] < 0)
          {
            v37 = *v58;
          }

          CALegacyLog::log(v36, 4, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpSetupUplinkDSPChain.cpp", 170, "SetupUplinkGMCoexMitigationGraph", "loading GM Coex Mitigation AU strip %s", v37);
        }

        if ((v58[23] & 0x80000000) != 0)
        {
          std::string::__init_copy_ctor_external(v60, *v58, *&v58[8]);
        }

        else
        {
          *v60 = *v58;
          *&v60[16] = *&v58[16];
        }

        applesauce::CF::make_DataRef(&pn, v60);
        if ((v60[23] & 0x80000000) != 0)
        {
          operator delete(*v60);
        }

        applesauce::CF::make_DictionaryRef(v60, pn.__r_.__value_.__l.__data_);
        v38 = *(this + 2091);
        *(this + 2091) = *v60;
        *v60 = v38;
        if (v38)
        {
          CFRelease(v38);
        }

        if (pn.__r_.__value_.__r.__words[0])
        {
          CFRelease(pn.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v28 = VPLogScope(void)::scope;
        if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(3, VPLogScope(void)::scope, 0))
        {
          v29 = (*v28 ? *v28 : MEMORY[0x277D86220]);
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            v30 = v58;
            if (v58[23] < 0)
            {
              v30 = *v58;
            }

            *v60 = 136315650;
            *&v60[4] = "vpSetupUplinkDSPChain.cpp";
            *&v60[12] = 1024;
            *&v60[14] = 176;
            *&v60[18] = 2080;
            *&v60[20] = v30;
            _os_log_impl(&dword_2724B4000, v29, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> %s file does not exist", v60, 0x1Cu);
          }
        }

        v31 = *(this + 1588);
        if (v31 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
        {
          if (VPLogScope(void)::once != -1)
          {
            dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
          }

          v32 = v58;
          if (v58[23] < 0)
          {
            v32 = *v58;
          }

          CALegacyLog::log(v31, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpSetupUplinkDSPChain.cpp", 176, "SetupUplinkGMCoexMitigationGraph", "%s file does not exist", v32);
        }
      }
    }

    if (v58[24] == 1 && (v58[23] & 0x80000000) != 0)
    {
      operator delete(*v58);
    }

    if (*(this + 31) < 0)
    {
      v3 = *v3;
    }

    *v60 = v3;
    std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(&pn, v60);
    VoiceProcessorV2::GetHardwareModelNameForTuning(&__replacement, this, 0);
    __p = __replacement;
    memset(&__replacement, 0, sizeof(__replacement));
    std::__fs::filesystem::operator/[abi:ne200100](v60, &pn, &__p);
    if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__pn_.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__replacement.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__replacement.__pn_.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(pn.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(pn.__r_.__value_.__l.__data_);
    }

    VoiceProcessorV2::GetVersionNameForTuning(&pn, this);
    std::__fs::filesystem::path::append[abi:ne200100]<std::string>(v60, &pn);
    if (SHIBYTE(pn.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(pn.__r_.__value_.__l.__data_);
    }

    if (std::__fs::filesystem::path::__filename(v60).__size_)
    {
      std::string::push_back(v60, 47);
    }

    std::string::append[abi:ne200100]<char const*,0>(v60, "vp-gm-coexkill.propstrip", "");
    *v58 = *v60;
    *&v58[16] = *&v60[16];
    v58[24] = 1;
    std::__fs::filesystem::__status(v58, 0);
    if (v60[0] && v60[0] != 255)
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v44 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(4, VPLogScope(void)::scope, 0))
      {
        v45 = (*v44 ? *v44 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
        {
          v46 = v58;
          if (v58[23] < 0)
          {
            v46 = *v58;
          }

          *v60 = 136315650;
          *&v60[4] = "vpSetupUplinkDSPChain.cpp";
          *&v60[12] = 1024;
          *&v60[14] = 190;
          *&v60[18] = 2080;
          *&v60[20] = v46;
          _os_log_impl(&dword_2724B4000, v45, OS_LOG_TYPE_INFO, "%25s:%-5d  <vp> loading GM Coex Mitigation property strip %s", v60, 0x1Cu);
        }
      }

      v47 = *(this + 1588);
      if (v47 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v48 = v58;
        if (v58[23] < 0)
        {
          v48 = *v58;
        }

        CALegacyLog::log(v47, 4, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpSetupUplinkDSPChain.cpp", 190, "SetupUplinkGMCoexMitigationGraph", "loading GM Coex Mitigation property strip %s", v48);
      }

      if ((v58[23] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(v60, *v58, *&v58[8]);
      }

      else
      {
        *v60 = *v58;
        *&v60[16] = *&v58[16];
      }

      applesauce::CF::make_DataRef(&pn, v60);
      if ((v60[23] & 0x80000000) != 0)
      {
        operator delete(*v60);
      }

      applesauce::CF::make_DictionaryRef(v60, pn.__r_.__value_.__l.__data_);
      v49 = *(this + 2092);
      *(this + 2092) = *v60;
      *v60 = v49;
      if (v49)
      {
        CFRelease(v49);
      }

      if (pn.__r_.__value_.__r.__words[0])
      {
        CFRelease(pn.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v39 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(3, VPLogScope(void)::scope, 0))
      {
        v40 = (*v39 ? *v39 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          v41 = v58;
          if (v58[23] < 0)
          {
            v41 = *v58;
          }

          *v60 = 136315650;
          *&v60[4] = "vpSetupUplinkDSPChain.cpp";
          *&v60[12] = 1024;
          *&v60[14] = 196;
          *&v60[18] = 2080;
          *&v60[20] = v41;
          _os_log_impl(&dword_2724B4000, v40, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> %s file does not exist", v60, 0x1Cu);
        }
      }

      v42 = *(this + 1588);
      if (v42 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v43 = v58;
        if (v58[23] < 0)
        {
          v43 = *v58;
        }

        CALegacyLog::log(v42, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpSetupUplinkDSPChain.cpp", 196, "SetupUplinkGMCoexMitigationGraph", "%s file does not exist", v43);
      }
    }

    if (v58[24] == 1 && (v58[23] & 0x80000000) != 0)
    {
      operator delete(*v58);
    }

    if (*(this + 2089) && *(this + 2090) && *(this + 2091) && *(this + 2092))
    {
      *(this + 586) |= 0x40uLL;
    }

    else
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v50 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(3, VPLogScope(void)::scope, 0))
      {
        v51 = (*v50 ? *v50 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
        {
          *v58 = 136315394;
          *&v58[4] = "vpSetupUplinkDSPChain.cpp";
          *&v58[12] = 1024;
          *&v58[14] = 211;
          _os_log_impl(&dword_2724B4000, v51, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> Not able to enable GM Coex Mitigation graph", v58, 0x12u);
        }
      }

      v52 = *(this + 1588);
      if (v52 && ((v5[3593] & 1) != 0 || v5[3594] == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        CALegacyLog::log(v52, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpSetupUplinkDSPChain.cpp", 211, "SetupUplinkGMCoexMitigationGraph", "Not able to enable GM Coex Mitigation graph");
      }
    }
  }
}

void VoiceProcessorV2::SetupReferenceSignalMixer(VoiceProcessorV2 *this)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = this + 12288;
  std::__optional_destruct_base<vp::utility::Audio_Buffer_Mixer,false>::reset[abi:ne200100](this + 2008);
  v3 = *(this + 155);
  if (v3)
  {
    v4 = *(this + 125);
    if (v4)
    {
      if (**(this + 294) == 1886613611)
      {
        if ((*(this + 2260) & 1) != 0 || (*(this + 2261) & 1) != 0 || !*(this + 20) && *(this + 61) == 2)
        {
          v5 = *(this + 19);
          if ((v5 - 19) < 8 || (v5 - 31) <= 1)
          {
            vp::utility::Audio_Buffer_Mixer::Audio_Buffer_Mixer(buf, v3, *(this + 155), v4);
            std::optional<vp::utility::Audio_Buffer_Mixer>::operator=[abi:ne200100]<vp::utility::Audio_Buffer_Mixer,void>(this + 2008, buf);
            v17 = &v22;
            std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v17);
            v17 = (v21 + 2);
            std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v17);
            (*(*this + 480))(this, this + 2008, this + 2080);
          }
        }

        else if ((*(this + 19) - 23) <= 3)
        {
          vp::utility::Audio_Buffer_Mixer::Audio_Buffer_Mixer(buf, v3, *(this + 155), v4);
          v13 = 0;
          v14 = 1;
          do
          {
            v15 = v14;
            vp::utility::Audio_Buffer_Mixer::set_gain(v22, v23, v13, 1.0, 0);
            v14 = 0;
            v13 = 1;
          }

          while ((v15 & 1) != 0);
          if (*(this + 155) >= 2u)
          {
            v16 = 1;
            do
            {
              vp::utility::Audio_Buffer_Mixer::set_gain(v22, v23, v16, 1.0, v16);
              ++v16;
            }

            while (v16 < *(this + 155));
          }

          std::optional<vp::utility::Audio_Buffer_Mixer>::operator=[abi:ne200100]<vp::utility::Audio_Buffer_Mixer,void>(this + 2008, buf);
          vp::utility::Audio_Buffer_Mixer::~Audio_Buffer_Mixer(buf);
        }
      }

      else
      {
        v12 = *(this + 600);
        if ((v12 == 1781805623 || v12 == 1781740087) && v3 >= 6)
        {
          vp::utility::Audio_Buffer_Mixer::Audio_Buffer_Mixer(buf, v3, *(this + 155), v4);
          vp::utility::Audio_Buffer_Mixer::set_gain(v22, v23, 0, 1.0, 0);
          vp::utility::Audio_Buffer_Mixer::set_gain(v22, v23, 2u, 1.0, 0);
          vp::utility::Audio_Buffer_Mixer::set_gain(v22, v23, 3u, 1.0, 0);
          vp::utility::Audio_Buffer_Mixer::set_gain(v22, v23, 5u, 1.0, 0);
          vp::utility::Audio_Buffer_Mixer::set_gain(v22, v23, 0, 1.0, 1u);
          vp::utility::Audio_Buffer_Mixer::set_gain(v22, v23, 2u, 1.0, 1u);
          vp::utility::Audio_Buffer_Mixer::set_gain(v22, v23, 3u, -1.0, 1u);
          vp::utility::Audio_Buffer_Mixer::set_gain(v22, v23, 5u, -1.0, 1u);
          std::optional<vp::utility::Audio_Buffer_Mixer>::operator=[abi:ne200100]<vp::utility::Audio_Buffer_Mixer,void>(this + 2008, buf);
          v17 = &v22;
          std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v17);
          v17 = (v21 + 2);
          std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v17);
        }
      }
    }

    else
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v9 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
      {
        v10 = (*v9 ? *v9 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v19 = "vpSetupUplinkDSPChain.cpp";
          v20 = 1024;
          v21[0] = 239;
          _os_log_impl(&dword_2724B4000, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> skip reference mixer setup because reference block size is 0", buf, 0x12u);
        }
      }

      v11 = *(this + 1588);
      if (v11 && ((v2[3593] & 1) != 0 || v2[3594] == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        CALegacyLog::log(v11, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpSetupUplinkDSPChain.cpp", 239, "SetupReferenceSignalMixer", "skip reference mixer setup because reference block size is 0");
      }
    }
  }

  else
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v6 = VPLogScope(void)::scope;
    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
    {
      v7 = (*v6 ? *v6 : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v19 = "vpSetupUplinkDSPChain.cpp";
        v20 = 1024;
        v21[0] = 232;
        _os_log_impl(&dword_2724B4000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> skip reference mixer setup because reference channel count is 0", buf, 0x12u);
      }
    }

    v8 = *(this + 1588);
    if (v8 && ((v2[3593] & 1) != 0 || v2[3594] == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      CALegacyLog::log(v8, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpSetupUplinkDSPChain.cpp", 232, "SetupReferenceSignalMixer", "skip reference mixer setup because reference channel count is 0");
    }
  }
}

void std::__optional_destruct_base<vp::utility::Audio_Buffer_Mixer,false>::reset[abi:ne200100](uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v4[3] = v1;
    v4[4] = v2;
    v4[0] = (a1 + 40);
    std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](v4);
    v4[0] = (a1 + 16);
    std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](v4);
    *(a1 + 64) = 0;
  }
}

uint64_t std::optional<vp::utility::Audio_Buffer_Mixer>::operator=[abi:ne200100]<vp::utility::Audio_Buffer_Mixer,void>(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 64);
  v5 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v5;
  if (v4 == 1)
  {
    std::vector<std::vector<float>>::__vdeallocate((a1 + 16));
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 32) = *(a2 + 32);
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    std::vector<std::vector<float>>::__vdeallocate((a1 + 40));
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
    *(a2 + 56) = 0;
  }

  else
  {
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 32) = *(a2 + 32);
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
    *(a2 + 56) = 0;
    *(a1 + 64) = 1;
  }

  return a1;
}

void vp::utility::Audio_Buffer_Mixer::~Audio_Buffer_Mixer(vp::utility::Audio_Buffer_Mixer *this)
{
  v2 = (this + 40);
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = (this + 16);
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v2);
}

void VoiceProcessorV2::SetupReferenceSignalMixer(void)::$_0::operator()(uint64_t a1)
{
  std::__optional_destruct_base<vp::utility::Audio_Buffer_Mixer,false>::reset[abi:ne200100](a1 + 2008);
  vp::utility::Audio_Buffer_Mixer::Audio_Buffer_Mixer(&v5, *(a1 + 620), *(a1 + 620), *(a1 + 500));
  v2 = v5;
  if (v6 < v5)
  {
    v2 = v6;
  }

  if (v2)
  {
    for (i = 0; i < v4; ++i)
    {
      vp::utility::Audio_Buffer_Mixer::set_gain(v8[0], v8[1], i, 1.0, i);
      v4 = v5;
      if (v6 < v5)
      {
        v4 = v6;
      }
    }
  }

  std::optional<vp::utility::Audio_Buffer_Mixer>::operator=[abi:ne200100]<vp::utility::Audio_Buffer_Mixer,void>(a1 + 2008, &v5);
  v9 = v8;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v9);
  v9 = &v7;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v9);
}

void sub_272599D6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  vp::utility::Audio_Buffer_Mixer::~Audio_Buffer_Mixer(va);
  _Unwind_Resume(a1);
}

void std::vector<std::vector<float>>::__vdeallocate(uint64_t *a1)
{
  if (*a1)
  {
    std::vector<std::vector<float>>::clear[abi:ne200100](a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void VoiceProcessorV2::UpdateReferenceSignalMixerGains(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (**(a1 + 2352) == 1886613611 && ((*(a1 + 2260) & 1) != 0 || (*(a1 + 2261) & 1) != 0 || !*(a1 + 80) && *(a1 + 244) == 2))
  {
    v5 = *(a1 + 76);
    if (v5 - 19 >= 8)
    {
      v16 = v5 > 0x20;
      v25 = (1 << v5) & 0x180000020;
      if (!v16 && v25 != 0)
      {
        v27 = *(a2 + 40);
        v28 = *(a2 + 48);
        if (v27 != v28)
        {
          v29 = *(a2 + 40);
          do
          {
            v30 = *(v29 + 8) - *v29;
            if (v30 >= 1)
            {
              bzero(*v29, v30);
            }

            v29 += 24;
          }

          while (v29 != v28);
        }

        v31 = *a2;
        v32 = *(a2 + 4);
        if (*a2 >= 4u && v32 > 1)
        {
          vp::utility::Audio_Buffer_Mixer::set_gain(v27, v28, 0, 0.5, 0);
          vp::utility::Audio_Buffer_Mixer::set_gain(*(a2 + 40), *(a2 + 48), 1u, 0.5, 0);
          vp::utility::Audio_Buffer_Mixer::set_gain(*(a2 + 40), *(a2 + 48), 2u, 0.5, 1u);
          v36 = *(a2 + 40);
          v37 = *(a2 + 48);

          vp::utility::Audio_Buffer_Mixer::set_gain(v36, v37, 3u, 0.5, 1u);
        }

        else
        {
          if (v32 < v31)
          {
            v31 = *(a2 + 4);
          }

          if (v31)
          {
            for (i = 0; i < v35; ++i)
            {
              vp::utility::Audio_Buffer_Mixer::set_gain(*(a2 + 40), *(a2 + 48), i, 1.0, i);
              v35 = *a2;
              if (*(a2 + 4) < *a2)
              {
                v35 = *(a2 + 4);
              }
            }
          }
        }
      }
    }

    else
    {
      v6 = *(a1 + 2320);
      v7 = *(a3 + 4);
      v8 = *a3;
      v9 = *(a2 + 40);
      v10 = *(a2 + 48);
      if (v9 != v10)
      {
        v11 = *(a2 + 40);
        do
        {
          v12 = *(v11 + 8) - *v11;
          if (v12 >= 1)
          {
            bzero(*v11, v12);
          }

          v11 += 24;
        }

        while (v11 != v10);
      }

      v13 = v6 - 1;
      v14 = *a2;
      v15 = *(a2 + 4);
      v16 = *a2 >= 8u && v15 > 1;
      if (v16)
      {
        if (v7)
        {
          v19 = v8;
        }

        else
        {
          v19 = 1;
        }

        if (v13 < 4)
        {
          v19 = v6;
        }

        v20 = v19 - 1;
        vp::utility::Audio_Buffer_Mixer::set_gain(v9, v10, 2u, 1.0, 0);
        vp::utility::Audio_Buffer_Mixer::set_gain(*(a2 + 40), *(a2 + 48), 3u, 1.0, 0);
        if (v20 >= 2)
        {
          v21 = 0;
        }

        else
        {
          v21 = 6;
        }

        if (v20 >= 2)
        {
          v22 = 1;
        }

        else
        {
          v22 = 7;
        }

        if (v20 >= 2)
        {
          v23 = 6;
        }

        else
        {
          v23 = 0;
        }

        if (v20 < 2)
        {
          v24 = 1;
        }

        else
        {
          v24 = 7;
        }

        vp::utility::Audio_Buffer_Mixer::set_gain(*(a2 + 40), *(a2 + 48), v21, 1.0, 0);
        vp::utility::Audio_Buffer_Mixer::set_gain(*(a2 + 40), *(a2 + 48), v22, 1.0, 0);
        vp::utility::Audio_Buffer_Mixer::set_gain(*(a2 + 40), *(a2 + 48), v23, 1.0, 1u);
        vp::utility::Audio_Buffer_Mixer::set_gain(*(a2 + 40), *(a2 + 48), v24, 1.0, 1u);
        vp::utility::Audio_Buffer_Mixer::set_gain(*(a2 + 40), *(a2 + 48), 4u, 1.0, 1u);
        vp::utility::Audio_Buffer_Mixer::set_gain(*(a2 + 40), *(a2 + 48), 5u, 1.0, 1u);
      }

      else
      {
        if (v15 < v14)
        {
          v14 = *(a2 + 4);
        }

        if (v14)
        {
          for (j = 0; j < v18; ++j)
          {
            vp::utility::Audio_Buffer_Mixer::set_gain(*(a2 + 40), *(a2 + 48), j, 1.0, j);
            v18 = *a2;
            if (*(a2 + 4) < *a2)
            {
              v18 = *(a2 + 4);
            }
          }
        }
      }

      if (v13 <= 3)
      {
        *a3 = v6;
        *(a3 + 4) = 1;
      }
    }
  }
}

void VoiceProcessorV2::SetupUplinkEchoProcessingGraph(VoiceProcessorV2 *this)
{
  v104[2] = *MEMORY[0x277D85DE8];
  *(this + 586) &= ~0x10000000uLL;
  v2 = *(this + 2060);
  *(this + 2060) = 0;
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 2061);
  *(this + 2061) = 0;
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(this + 2062);
  *(this + 2062) = 0;
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(this + 2063);
  *(this + 2063) = 0;
  if (v5)
  {
    CFRelease(v5);
  }

  if (*(this + 60) == 1)
  {
    v6 = (this + 8);
    if (*(this + 31) < 0)
    {
      v6 = *v6;
    }

    buf[0].__pn_.__r_.__value_.__r.__words[0] = v6;
    std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(&v99, buf);
    if ((*(this + 60) & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    std::to_string(&v97, *(this + 14));
    v7 = std::string::insert(&v97, 0, "AID", 3uLL);
    v8 = v7->__r_.__value_.__r.__words[0];
    v101.__pn_.__r_.__value_.__r.__words[0] = v7->__r_.__value_.__l.__size_;
    *(v101.__pn_.__r_.__value_.__r.__words + 7) = *(&v7->__r_.__value_.__r.__words[1] + 7);
    v9 = HIBYTE(v7->__r_.__value_.__r.__words[2]);
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    *(&v98.__pn_.__r_.__value_.__r.__words[1] + 7) = *(v101.__pn_.__r_.__value_.__r.__words + 7);
    v98.__pn_.__r_.__value_.__r.__words[0] = v8;
    v98.__pn_.__r_.__value_.__l.__size_ = v101.__pn_.__r_.__value_.__r.__words[0];
    *(&v98.__pn_.__r_.__value_.__s + 23) = v9;
    v101.__pn_.__r_.__value_.__r.__words[0] = 0;
    *(v101.__pn_.__r_.__value_.__r.__words + 7) = 0;
    std::__fs::filesystem::operator/[abi:ne200100](&v100, &v99, &v98);
    VoiceProcessorV2::GetVersionNameForTuning(&v95.__pn_, this);
    pn = v95.__pn_;
    memset(&v95, 0, sizeof(v95));
    std::__fs::filesystem::operator/[abi:ne200100](buf, &v100, &pn);
    memset(&__p, 0, sizeof(__p));
    std::string::append[abi:ne200100]<char const*,0>(&__p, "echo_processing.dspg", "");
    std::__fs::filesystem::operator/[abi:ne200100](&v93, buf, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(buf[0].__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf[0].__pn_.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(pn.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(pn.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v100.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v100.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v98.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v98.__pn_.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v97.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v99.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    std::__fs::filesystem::path::path[abi:ne200100]<char [16],void>(&v93.__pn_, "emptyAcousticID");
  }

  v10 = this + 15881;
  std::__fs::filesystem::__status(&v93, 0);
  if (v91 && v91 != 255)
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v16 = VPLogScope(void)::scope;
    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(4, VPLogScope(void)::scope, 0))
    {
      v17 = (*v16 ? *v16 : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = &v93;
        if ((v93.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v18 = v93.__pn_.__r_.__value_.__r.__words[0];
        }

        LODWORD(buf[0].__pn_.__r_.__value_.__l.__data_) = 136315650;
        *(buf[0].__pn_.__r_.__value_.__r.__words + 4) = "vpSetupUplinkDSPChain.cpp";
        WORD2(buf[0].__pn_.__r_.__value_.__r.__words[1]) = 1024;
        *(&buf[0].__pn_.__r_.__value_.__r.__words[1] + 6) = 474;
        WORD1(buf[0].__pn_.__r_.__value_.__r.__words[2]) = 2080;
        *(&buf[0].__pn_.__r_.__value_.__r.__words[2] + 4) = v18;
        _os_log_impl(&dword_2724B4000, v17, OS_LOG_TYPE_INFO, "%25s:%-5d  <vp> loading echo processing graph %s", buf, 0x1Cu);
      }
    }

    v19 = *(this + 1588);
    if (v19 && ((*v10 & 1) != 0 || *(this + 15882) == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v20 = &v93;
      if ((v93.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v20 = v93.__pn_.__r_.__value_.__r.__words[0];
      }

      CALegacyLog::log(v19, 4, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpSetupUplinkDSPChain.cpp", 474, "SetupUplinkEchoProcessingGraph", "loading echo processing graph %s", v20);
    }

    if ((v93.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v21 = &v93;
    }

    else
    {
      v21 = v93.__pn_.__r_.__value_.__r.__words[0];
    }

    std::ifstream::basic_ifstream(buf, v21, 8);
    std::string::__init_with_sentinel[abi:ne200100]<std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>(&v100, *(&buf[1].__pn_.__r_.__value_.__r.__words[2] + *(buf[0].__pn_.__r_.__value_.__r.__words[0] - 24)));
    if ((v100.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v22 = &v100;
    }

    else
    {
      v22 = v100.__r_.__value_.__r.__words[0];
    }

    if (v22)
    {
      if ((v100.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v100.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v100.__r_.__value_.__l.__size_;
      }

      v24 = CFStringCreateWithBytes(0, v22, size, 0x8000100u, 0);
      v99.__r_.__value_.__r.__words[0] = v24;
      if (!v24)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
      }
    }

    else
    {
      v24 = 0;
    }

    v26 = *(this + 2060);
    *(this + 2060) = v24;
    v99.__r_.__value_.__r.__words[0] = v26;
    if (v26)
    {
      CFRelease(v26);
    }

    std::__fs::filesystem::path::filename[abi:ne200100](&v98, &v93);
    memset(&v97, 0, sizeof(v97));
    v27 = std::__fs::filesystem::path::replace_extension(&v98, &v97);
    if (SHIBYTE(v27->__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v99, v27->__pn_.__r_.__value_.__l.__data_, v27->__pn_.__r_.__value_.__l.__size_);
    }

    else
    {
      v28 = *&v27->__pn_.__r_.__value_.__l.__data_;
      v99.__r_.__value_.__r.__words[2] = v27->__pn_.__r_.__value_.__r.__words[2];
      *&v99.__r_.__value_.__l.__data_ = v28;
    }

    if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v97.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v98.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v98.__pn_.__r_.__value_.__l.__data_);
    }

    if ((v99.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v29 = &v99;
    }

    else
    {
      v29 = v99.__r_.__value_.__r.__words[0];
    }

    if (v29)
    {
      if ((v99.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v30 = HIBYTE(v99.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v30 = v99.__r_.__value_.__l.__size_;
      }

      v31 = CFStringCreateWithBytes(0, v29, v30, 0x8000100u, 0);
      v98.__pn_.__r_.__value_.__r.__words[0] = v31;
      if (!v31)
      {
        v32 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v32, "Could not construct");
      }
    }

    else
    {
      v31 = 0;
    }

    v33 = *(this + 2061);
    *(this + 2061) = v31;
    v98.__pn_.__r_.__value_.__r.__words[0] = v33;
    if (v33)
    {
      CFRelease(v33);
    }

    if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v99.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v100.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v100.__r_.__value_.__l.__data_);
    }

    buf[0].__pn_.__r_.__value_.__r.__words[0] = *MEMORY[0x277D82808];
    *(buf[0].__pn_.__r_.__value_.__r.__words + *(buf[0].__pn_.__r_.__value_.__r.__words[0] - 24)) = *(MEMORY[0x277D82808] + 24);
    MEMORY[0x2743CBA00](&buf[0].__pn_.__r_.__value_.__r.__words[2]);
    std::istream::~istream();
    MEMORY[0x2743CBE30](&v103);
  }

  else
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
        v13 = &v93;
        if ((v93.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v13 = v93.__pn_.__r_.__value_.__r.__words[0];
        }

        LODWORD(buf[0].__pn_.__r_.__value_.__l.__data_) = 136315650;
        *(buf[0].__pn_.__r_.__value_.__r.__words + 4) = "vpSetupUplinkDSPChain.cpp";
        WORD2(buf[0].__pn_.__r_.__value_.__r.__words[1]) = 1024;
        *(&buf[0].__pn_.__r_.__value_.__r.__words[1] + 6) = 483;
        WORD1(buf[0].__pn_.__r_.__value_.__r.__words[2]) = 2080;
        *(&buf[0].__pn_.__r_.__value_.__r.__words[2] + 4) = v13;
        _os_log_impl(&dword_2724B4000, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> file %s does not exist", buf, 0x1Cu);
      }
    }

    v14 = *(this + 1588);
    if (v14 && ((*v10 & 1) != 0 || *(this + 15882) == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v15 = &v93;
      if ((v93.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v15 = v93.__pn_.__r_.__value_.__r.__words[0];
      }

      CALegacyLog::log(v14, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpSetupUplinkDSPChain.cpp", 483, "SetupUplinkEchoProcessingGraph", "file %s does not exist", v15);
    }
  }

  if (SHIBYTE(v93.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v93.__pn_.__r_.__value_.__l.__data_);
  }

  if (*(this + 60) == 1)
  {
    v34 = *(this + 104);
    v35 = "24";
    if (v34 == 16000.0)
    {
      v35 = "16";
    }

    if (v34 == 8000.0)
    {
      v36 = "08";
    }

    else
    {
      v36 = v35;
    }

    std::string::basic_string[abi:ne200100]<0>(&v99, v36);
    v37 = std::string::insert(&v99, 0, "echo_processing_", 0x10uLL);
    v38 = *&v37->__r_.__value_.__l.__data_;
    v100.__r_.__value_.__r.__words[2] = v37->__r_.__value_.__r.__words[2];
    *&v100.__r_.__value_.__l.__data_ = v38;
    v37->__r_.__value_.__l.__size_ = 0;
    v37->__r_.__value_.__r.__words[2] = 0;
    v37->__r_.__value_.__r.__words[0] = 0;
    v39 = std::string::append(&v100, "kHz.austrip", 0xBuLL);
    v40 = *&v39->__r_.__value_.__l.__data_;
    buf[0].__pn_.__r_.__value_.__r.__words[2] = v39->__r_.__value_.__r.__words[2];
    *&buf[0].__pn_.__r_.__value_.__l.__data_ = v40;
    v39->__r_.__value_.__l.__size_ = 0;
    v39->__r_.__value_.__r.__words[2] = 0;
    v39->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v100.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v100.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v99.__r_.__value_.__l.__data_);
    }

    v41 = (this + 8);
    if (*(this + 31) < 0)
    {
      v41 = *v41;
    }

    v100.__r_.__value_.__r.__words[0] = v41;
    std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(&v98.__pn_, &v100);
    if ((*(this + 60) & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    std::to_string(&pn, *(this + 14));
    v42 = std::string::insert(&pn, 0, "AID", 3uLL);
    v43 = v42->__r_.__value_.__r.__words[0];
    v104[0] = v42->__r_.__value_.__l.__size_;
    *(v104 + 7) = *(&v42->__r_.__value_.__r.__words[1] + 7);
    v44 = HIBYTE(v42->__r_.__value_.__r.__words[2]);
    v42->__r_.__value_.__l.__size_ = 0;
    v42->__r_.__value_.__r.__words[2] = 0;
    v42->__r_.__value_.__r.__words[0] = 0;
    *(&v97.__r_.__value_.__r.__words[1] + 7) = *(v104 + 7);
    v97.__r_.__value_.__r.__words[0] = v43;
    v97.__r_.__value_.__l.__size_ = v104[0];
    *(&v97.__r_.__value_.__s + 23) = v44;
    v104[0] = 0;
    *(v104 + 7) = 0;
    std::__fs::filesystem::operator/[abi:ne200100](&v99, &v98, &v97);
    VoiceProcessorV2::GetVersionNameForTuning(&__p, this);
    v95.__pn_ = __p;
    memset(&__p, 0, sizeof(__p));
    std::__fs::filesystem::operator/[abi:ne200100](&v100, &v99, &v95);
    std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&v93.__pn_, &buf[0].__pn_);
    std::__fs::filesystem::operator/[abi:ne200100](&v101, &v100, &v93);
    if (SHIBYTE(v93.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v93.__pn_.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v100.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v100.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v95.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v95.__pn_.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v99.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v97.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(pn.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(pn.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v98.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v98.__pn_.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(buf[0].__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf[0].__pn_.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    std::__fs::filesystem::path::path[abi:ne200100]<char [16],void>(&v101.__pn_, "emptyAcousticID");
  }

  std::__fs::filesystem::__status(&v101, 0);
  if (v92 && v92 != 255)
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v50 = VPLogScope(void)::scope;
    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(4, VPLogScope(void)::scope, 0))
    {
      v51 = (*v50 ? *v50 : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
      {
        v52 = &v101;
        if ((v101.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v52 = v101.__pn_.__r_.__value_.__r.__words[0];
        }

        LODWORD(buf[0].__pn_.__r_.__value_.__l.__data_) = 136315650;
        *(buf[0].__pn_.__r_.__value_.__r.__words + 4) = "vpSetupUplinkDSPChain.cpp";
        WORD2(buf[0].__pn_.__r_.__value_.__r.__words[1]) = 1024;
        *(&buf[0].__pn_.__r_.__value_.__r.__words[1] + 6) = 497;
        WORD1(buf[0].__pn_.__r_.__value_.__r.__words[2]) = 2080;
        *(&buf[0].__pn_.__r_.__value_.__r.__words[2] + 4) = v52;
        _os_log_impl(&dword_2724B4000, v51, OS_LOG_TYPE_INFO, "%25s:%-5d  <vp> loading echo processing AU strip %s", buf, 0x1Cu);
      }
    }

    v53 = *(this + 1588);
    if (v53 && ((*v10 & 1) != 0 || *(this + 15882) == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v54 = &v101;
      if ((v101.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v54 = v101.__pn_.__r_.__value_.__r.__words[0];
      }

      CALegacyLog::log(v53, 4, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpSetupUplinkDSPChain.cpp", 497, "SetupUplinkEchoProcessingGraph", "loading echo processing AU strip %s", v54);
    }

    if (SHIBYTE(v101.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&buf[0].__pn_, v101.__pn_.__r_.__value_.__l.__data_, v101.__pn_.__r_.__value_.__l.__size_);
    }

    else
    {
      buf[0] = v101;
    }

    applesauce::CF::make_DataRef(&v100, buf);
    if (SHIBYTE(buf[0].__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf[0].__pn_.__r_.__value_.__l.__data_);
    }

    applesauce::CF::make_DictionaryRef(buf, v100.__r_.__value_.__l.__data_);
    v55 = *(this + 2062);
    *(this + 2062) = buf[0].__pn_.__r_.__value_.__r.__words[0];
    buf[0].__pn_.__r_.__value_.__r.__words[0] = v55;
    if (v55)
    {
      CFRelease(v55);
    }

    if (v100.__r_.__value_.__r.__words[0])
    {
      CFRelease(v100.__r_.__value_.__l.__data_);
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
        v47 = &v101;
        if ((v101.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v47 = v101.__pn_.__r_.__value_.__r.__words[0];
        }

        LODWORD(buf[0].__pn_.__r_.__value_.__l.__data_) = 136315650;
        *(buf[0].__pn_.__r_.__value_.__r.__words + 4) = "vpSetupUplinkDSPChain.cpp";
        WORD2(buf[0].__pn_.__r_.__value_.__r.__words[1]) = 1024;
        *(&buf[0].__pn_.__r_.__value_.__r.__words[1] + 6) = 504;
        WORD1(buf[0].__pn_.__r_.__value_.__r.__words[2]) = 2080;
        *(&buf[0].__pn_.__r_.__value_.__r.__words[2] + 4) = v47;
        _os_log_impl(&dword_2724B4000, v46, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> file %s does not exist", buf, 0x1Cu);
      }
    }

    v48 = *(this + 1588);
    if (v48 && ((*v10 & 1) != 0 || *(this + 15882) == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v49 = &v101;
      if ((v101.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v49 = v101.__pn_.__r_.__value_.__r.__words[0];
      }

      CALegacyLog::log(v48, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpSetupUplinkDSPChain.cpp", 504, "SetupUplinkEchoProcessingGraph", "file %s does not exist", v49);
    }
  }

  if (SHIBYTE(v101.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v101.__pn_.__r_.__value_.__l.__data_);
  }

  if (*(this + 60) == 1)
  {
    v56 = *(this + 104);
    v57 = "24";
    if (v56 == 16000.0)
    {
      v57 = "16";
    }

    if (v56 == 8000.0)
    {
      v58 = "08";
    }

    else
    {
      v58 = v57;
    }

    std::string::basic_string[abi:ne200100]<0>(&v99, v58);
    v59 = std::string::insert(&v99, 0, "echo_processing_", 0x10uLL);
    v60 = *&v59->__r_.__value_.__l.__data_;
    v100.__r_.__value_.__r.__words[2] = v59->__r_.__value_.__r.__words[2];
    *&v100.__r_.__value_.__l.__data_ = v60;
    v59->__r_.__value_.__l.__size_ = 0;
    v59->__r_.__value_.__r.__words[2] = 0;
    v59->__r_.__value_.__r.__words[0] = 0;
    v61 = std::string::append(&v100, "kHz.propstrip", 0xDuLL);
    v62 = *&v61->__r_.__value_.__l.__data_;
    buf[0].__pn_.__r_.__value_.__r.__words[2] = v61->__r_.__value_.__r.__words[2];
    *&buf[0].__pn_.__r_.__value_.__l.__data_ = v62;
    v61->__r_.__value_.__l.__size_ = 0;
    v61->__r_.__value_.__r.__words[2] = 0;
    v61->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v100.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v100.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v99.__r_.__value_.__l.__data_);
    }

    v63 = (this + 8);
    if (*(this + 31) < 0)
    {
      v63 = *v63;
    }

    v100.__r_.__value_.__r.__words[0] = v63;
    std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(&v98.__pn_, &v100);
    if ((*(this + 60) & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    std::to_string(&pn, *(this + 14));
    v64 = std::string::insert(&pn, 0, "AID", 3uLL);
    v65 = v64->__r_.__value_.__r.__words[0];
    v104[0] = v64->__r_.__value_.__l.__size_;
    *(v104 + 7) = *(&v64->__r_.__value_.__r.__words[1] + 7);
    v66 = HIBYTE(v64->__r_.__value_.__r.__words[2]);
    v64->__r_.__value_.__l.__size_ = 0;
    v64->__r_.__value_.__r.__words[2] = 0;
    v64->__r_.__value_.__r.__words[0] = 0;
    *(&v97.__r_.__value_.__r.__words[1] + 7) = *(v104 + 7);
    v97.__r_.__value_.__r.__words[0] = v65;
    v97.__r_.__value_.__l.__size_ = v104[0];
    *(&v97.__r_.__value_.__s + 23) = v66;
    v104[0] = 0;
    *(v104 + 7) = 0;
    std::__fs::filesystem::operator/[abi:ne200100](&v99, &v98, &v97);
    VoiceProcessorV2::GetVersionNameForTuning(&__p, this);
    v95.__pn_ = __p;
    memset(&__p, 0, sizeof(__p));
    std::__fs::filesystem::operator/[abi:ne200100](&v100, &v99, &v95);
    std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&v93.__pn_, &buf[0].__pn_);
    std::__fs::filesystem::operator/[abi:ne200100](&v101, &v100, &v93);
    if (SHIBYTE(v93.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v93.__pn_.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v100.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v100.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v95.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v95.__pn_.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v99.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v97.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(pn.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(pn.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v98.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v98.__pn_.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(buf[0].__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf[0].__pn_.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    std::__fs::filesystem::path::path[abi:ne200100]<char [16],void>(&v101.__pn_, "emptyAcousticID");
  }

  std::__fs::filesystem::__status(&v101, 0);
  if (!v100.__r_.__value_.__s.__data_[0] || v100.__r_.__value_.__s.__data_[0] == 255)
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v67 = VPLogScope(void)::scope;
    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
    {
      v68 = (*v67 ? *v67 : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
      {
        v69 = &v101;
        if ((v101.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v69 = v101.__pn_.__r_.__value_.__r.__words[0];
        }

        LODWORD(buf[0].__pn_.__r_.__value_.__l.__data_) = 136315650;
        *(buf[0].__pn_.__r_.__value_.__r.__words + 4) = "vpSetupUplinkDSPChain.cpp";
        WORD2(buf[0].__pn_.__r_.__value_.__r.__words[1]) = 1024;
        *(&buf[0].__pn_.__r_.__value_.__r.__words[1] + 6) = 531;
        WORD1(buf[0].__pn_.__r_.__value_.__r.__words[2]) = 2080;
        *(&buf[0].__pn_.__r_.__value_.__r.__words[2] + 4) = v69;
        _os_log_impl(&dword_2724B4000, v68, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> file %s does not exist", buf, 0x1Cu);
      }
    }

    v70 = *(this + 1588);
    if (v70 && ((*v10 & 1) != 0 || *(this + 15882) == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v71 = &v101;
      if ((v101.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v71 = v101.__pn_.__r_.__value_.__r.__words[0];
      }

      CALegacyLog::log(v70, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpSetupUplinkDSPChain.cpp", 531, "SetupUplinkEchoProcessingGraph", "file %s does not exist", v71);
    }

    goto LABEL_295;
  }

  if (VPLogScope(void)::once != -1)
  {
    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
  }

  v72 = VPLogScope(void)::scope;
  if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(4, VPLogScope(void)::scope, 0))
  {
    v73 = (*v72 ? *v72 : MEMORY[0x277D86220]);
    if (os_log_type_enabled(v73, OS_LOG_TYPE_INFO))
    {
      v74 = &v101;
      if ((v101.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v74 = v101.__pn_.__r_.__value_.__r.__words[0];
      }

      LODWORD(buf[0].__pn_.__r_.__value_.__l.__data_) = 136315650;
      *(buf[0].__pn_.__r_.__value_.__r.__words + 4) = "vpSetupUplinkDSPChain.cpp";
      WORD2(buf[0].__pn_.__r_.__value_.__r.__words[1]) = 1024;
      *(&buf[0].__pn_.__r_.__value_.__r.__words[1] + 6) = 518;
      WORD1(buf[0].__pn_.__r_.__value_.__r.__words[2]) = 2080;
      *(&buf[0].__pn_.__r_.__value_.__r.__words[2] + 4) = v74;
      _os_log_impl(&dword_2724B4000, v73, OS_LOG_TYPE_INFO, "%25s:%-5d  <vp> loading echo processing property strip %s", buf, 0x1Cu);
    }
  }

  v75 = *(this + 1588);
  if (v75 && ((*v10 & 1) != 0 || *(this + 15882) == 1))
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v76 = &v101;
    if ((v101.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v76 = v101.__pn_.__r_.__value_.__r.__words[0];
    }

    CALegacyLog::log(v75, 4, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpSetupUplinkDSPChain.cpp", 518, "SetupUplinkEchoProcessingGraph", "loading echo processing property strip %s", v76);
  }

  if (SHIBYTE(v101.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&buf[0].__pn_, v101.__pn_.__r_.__value_.__l.__data_, v101.__pn_.__r_.__value_.__l.__size_);
  }

  else
  {
    buf[0] = v101;
  }

  applesauce::CF::make_DataRef(&v98, buf);
  if (SHIBYTE(buf[0].__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf[0].__pn_.__r_.__value_.__l.__data_);
  }

  applesauce::CF::make_DictionaryRef(buf, v98.__pn_.__r_.__value_.__l.__data_);
  v77 = *(this + 2063);
  *(this + 2063) = buf[0].__pn_.__r_.__value_.__r.__words[0];
  buf[0].__pn_.__r_.__value_.__r.__words[0] = v77;
  if (v77)
  {
    CFRelease(v77);
  }

  v78 = this + 8;
  if ((*(this + 31) & 0x80000000) == 0)
  {
    v79 = strlen(this + 8);
    goto LABEL_270;
  }

  v78 = *v78;
  v79 = strlen(v78);
  if (v78)
  {
LABEL_270:
    v80 = CFStringCreateWithBytes(0, v78, v79, 0x8000100u, 0);
    buf[0].__pn_.__r_.__value_.__r.__words[0] = v80;
    if (!v80)
    {
      v90 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v90, "Could not construct");
    }

    goto LABEL_271;
  }

  v80 = 0;
LABEL_271:
  v81 = *(this + 2064);
  *(this + 2064) = v80;
  buf[0].__pn_.__r_.__value_.__r.__words[0] = v81;
  if (v81)
  {
    CFRelease(v81);
  }

  v82 = *(this + 16752);
  if (v82 == 1)
  {
    applesauce::CF::TypeRef::TypeRef(buf, "Value");
    v83 = *(this + 2064);
    if (v83)
    {
      CFRetain(*(this + 2064));
    }

    buf[0].__pn_.__r_.__value_.__l.__size_ = v83;
    v100.__r_.__value_.__r.__words[0] = buf;
    v100.__r_.__value_.__l.__size_ = 1;
    CFDictionaryRef = applesauce::CF::details::make_CFDictionaryRef(&v100);
  }

  else
  {
    applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[3],unsigned int const&>(buf, "ID", &kVPDSPGraphTuningDirectoryPropertyID);
    applesauce::CF::TypeRef::TypeRef(&buf[0].__pn_.__r_.__value_.__r.__words[2], "cfobject");
    v85 = *(this + 2064);
    if (v85)
    {
      CFRetain(*(this + 2064));
    }

    buf[1].__pn_.__r_.__value_.__r.__words[0] = v85;
    v99.__r_.__value_.__r.__words[0] = buf;
    v99.__r_.__value_.__l.__size_ = 2;
    CFDictionaryRef = applesauce::CF::details::make_CFDictionaryRef(&v99);
  }

  v86 = *(this + 2065);
  *(this + 2065) = CFDictionaryRef;
  if (v86)
  {
    CFRelease(v86);
  }

  if (v82)
  {
    if (buf[0].__pn_.__r_.__value_.__l.__size_)
    {
      CFRelease(buf[0].__pn_.__r_.__value_.__l.__size_);
    }

    if (buf[0].__pn_.__r_.__value_.__r.__words[0])
    {
      CFRelease(buf[0].__pn_.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    for (i = 0; i != -4; i -= 2)
    {
      v88 = *(&buf[1].__pn_.__r_.__value_.__l.__data_ + i * 8);
      if (v88)
      {
        CFRelease(v88);
      }

      v89 = buf[0].__pn_.__r_.__value_.__r.__words[i + 2];
      if (v89)
      {
        CFRelease(v89);
      }
    }
  }

  if (v98.__pn_.__r_.__value_.__r.__words[0])
  {
    CFRelease(v98.__pn_.__r_.__value_.__l.__data_);
  }

LABEL_295:
  if (SHIBYTE(v101.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v101.__pn_.__r_.__value_.__l.__data_);
  }

  if (*(this + 2060) && *(this + 2061) && *(this + 2062))
  {
    if (*(this + 2063))
    {
      *(this + 586) |= 0x10000000uLL;
    }
  }
}

void sub_27259B608(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void VoiceProcessorV2::SetupUplinkAirPodsOffloadGraph(VoiceProcessorV2 *this)
{
  v59[20] = *MEMORY[0x277D85DE8];
  *(this + 587) &= ~0x40uLL;
  v2 = this + 8;
  v3 = this + 8;
  if (*(this + 31) < 0)
  {
    v3 = *v2;
  }

  __p[0].__pn_.__r_.__value_.__r.__words[0] = v3;
  std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(&v57.__pn_, __p);
  std::__fs::filesystem::path::append[abi:ne200100]<char [8]>(&v57.__pn_, "Generic");
  VoiceProcessorV2::GetVersionNameForTuning(&__p[0].__pn_, this);
  std::__fs::filesystem::path::append[abi:ne200100]<std::string>(&v57.__pn_, __p);
  if (SHIBYTE(__p[0].__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__pn_.__r_.__value_.__l.__data_);
  }

  if (std::__fs::filesystem::path::__filename(&v57).__size_)
  {
    std::string::push_back(&v57.__pn_, 47);
  }

  std::string::append[abi:ne200100]<char const*,0>(&v57.__pn_, "uplink_echo_airpods_offload.dspg", "");
  v4 = this + 12288;
  std::__fs::filesystem::__status(&v57, 0);
  if (v55 && v55 != 255)
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
        v12 = &v57;
        if ((v57.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v12 = v57.__pn_.__r_.__value_.__r.__words[0];
        }

        LODWORD(__p[0].__pn_.__r_.__value_.__l.__data_) = 136315650;
        *(__p[0].__pn_.__r_.__value_.__r.__words + 4) = "vpSetupUplinkDSPChain.cpp";
        WORD2(__p[0].__pn_.__r_.__value_.__r.__words[1]) = 1024;
        *(&__p[0].__pn_.__r_.__value_.__r.__words[1] + 6) = 556;
        WORD1(__p[0].__pn_.__r_.__value_.__r.__words[2]) = 2080;
        *(&__p[0].__pn_.__r_.__value_.__r.__words[2] + 4) = v12;
        _os_log_impl(&dword_2724B4000, v11, OS_LOG_TYPE_INFO, "%25s:%-5d  <vp> loading offload AirPods DSP graph %s", __p, 0x1Cu);
      }
    }

    v13 = *(this + 1588);
    if (v13 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v14 = &v57;
      if ((v57.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v14 = v57.__pn_.__r_.__value_.__r.__words[0];
      }

      CALegacyLog::log(v13, 4, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpSetupUplinkDSPChain.cpp", 556, "SetupUplinkAirPodsOffloadGraph", "loading offload AirPods DSP graph %s", v14);
    }

    if ((v57.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v15 = &v57;
    }

    else
    {
      v15 = v57.__pn_.__r_.__value_.__r.__words[0];
    }

    std::ifstream::basic_ifstream(__p, v15, 8);
    std::string::__init_with_sentinel[abi:ne200100]<std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>(&__replacement.__pn_, *(&__p[1].__pn_.__r_.__value_.__r.__words[2] + *(__p[0].__pn_.__r_.__value_.__r.__words[0] - 24)));
    if ((__replacement.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_replacement = &__replacement;
    }

    else
    {
      p_replacement = __replacement.__pn_.__r_.__value_.__r.__words[0];
    }

    if (p_replacement)
    {
      if ((__replacement.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(__replacement.__pn_.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = __replacement.__pn_.__r_.__value_.__l.__size_;
      }

      v18 = CFStringCreateWithBytes(0, p_replacement, size, 0x8000100u, 0);
      v53.__r_.__value_.__r.__words[0] = v18;
      if (!v18)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
      }
    }

    else
    {
      v18 = 0;
    }

    v20 = *(this + 2083);
    *(this + 2083) = v18;
    v53.__r_.__value_.__r.__words[0] = v20;
    if (v20)
    {
      CFRelease(v20);
    }

    if (SHIBYTE(__replacement.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__replacement.__pn_.__r_.__value_.__l.__data_);
    }

    __p[0].__pn_.__r_.__value_.__r.__words[0] = *MEMORY[0x277D82808];
    *(__p[0].__pn_.__r_.__value_.__r.__words + *(__p[0].__pn_.__r_.__value_.__r.__words[0] - 24)) = *(MEMORY[0x277D82808] + 24);
    MEMORY[0x2743CBA00](&__p[0].__pn_.__r_.__value_.__r.__words[2]);
    std::istream::~istream();
    MEMORY[0x2743CBE30](v59);
  }

  else
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v5 = VPLogScope(void)::scope;
    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
    {
      v6 = (*v5 ? *v5 : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = &v57;
        if ((v57.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v7 = v57.__pn_.__r_.__value_.__r.__words[0];
        }

        LODWORD(__p[0].__pn_.__r_.__value_.__l.__data_) = 136315650;
        *(__p[0].__pn_.__r_.__value_.__r.__words + 4) = "vpSetupUplinkDSPChain.cpp";
        WORD2(__p[0].__pn_.__r_.__value_.__r.__words[1]) = 1024;
        *(&__p[0].__pn_.__r_.__value_.__r.__words[1] + 6) = 561;
        WORD1(__p[0].__pn_.__r_.__value_.__r.__words[2]) = 2080;
        *(&__p[0].__pn_.__r_.__value_.__r.__words[2] + 4) = v7;
        _os_log_impl(&dword_2724B4000, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> file %s does not exist", __p, 0x1Cu);
      }
    }

    v8 = *(this + 1588);
    if (v8 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v9 = &v57;
      if ((v57.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v9 = v57.__pn_.__r_.__value_.__r.__words[0];
      }

      CALegacyLog::log(v8, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpSetupUplinkDSPChain.cpp", 561, "SetupUplinkAirPodsOffloadGraph", "file %s does not exist", v9);
    }
  }

  if (SHIBYTE(v57.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v57.__pn_.__r_.__value_.__l.__data_);
  }

  VoiceProcessorV2::GetAirPodsOffloadAUStripFilePath(&v57.__pn_, this);
  std::__fs::filesystem::path::filename[abi:ne200100](__p, &v57);
  memset(&__replacement, 0, sizeof(__replacement));
  v21 = std::__fs::filesystem::path::replace_extension(__p, &__replacement);
  if (SHIBYTE(v21->__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v53, v21->__pn_.__r_.__value_.__l.__data_, v21->__pn_.__r_.__value_.__l.__size_);
  }

  else
  {
    v22 = *&v21->__pn_.__r_.__value_.__l.__data_;
    v53.__r_.__value_.__r.__words[2] = v21->__pn_.__r_.__value_.__r.__words[2];
    *&v53.__r_.__value_.__l.__data_ = v22;
  }

  if (SHIBYTE(__replacement.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__replacement.__pn_.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p[0].__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__pn_.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v57.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v57.__pn_.__r_.__value_.__l.__data_);
  }

  if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v23 = &v53;
  }

  else
  {
    v23 = v53.__r_.__value_.__r.__words[0];
  }

  if (v23)
  {
    if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v24 = HIBYTE(v53.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v24 = v53.__r_.__value_.__l.__size_;
    }

    v25 = CFStringCreateWithBytes(0, v23, v24, 0x8000100u, 0);
    v54 = v25;
    if (!v25)
    {
      v26 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v26, "Could not construct");
    }
  }

  else
  {
    v25 = 0;
  }

  v27 = *(this + 2084);
  *(this + 2084) = v25;
  v54 = v27;
  if (v27)
  {
    CFRelease(v27);
  }

  if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v53.__r_.__value_.__l.__data_);
  }

  VoiceProcessorV2::GetAirPodsOffloadAUStripFilePath(&v57.__pn_, this);
  std::__fs::filesystem::__status(&v57, 0);
  if (v53.__r_.__value_.__s.__data_[0] && v53.__r_.__value_.__s.__data_[0] != 255)
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v33 = VPLogScope(void)::scope;
    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(4, VPLogScope(void)::scope, 0))
    {
      v34 = (*v33 ? *v33 : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        v35 = &v57;
        if ((v57.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v35 = v57.__pn_.__r_.__value_.__r.__words[0];
        }

        LODWORD(__p[0].__pn_.__r_.__value_.__l.__data_) = 136315650;
        *(__p[0].__pn_.__r_.__value_.__r.__words + 4) = "vpSetupUplinkDSPChain.cpp";
        WORD2(__p[0].__pn_.__r_.__value_.__r.__words[1]) = 1024;
        *(&__p[0].__pn_.__r_.__value_.__r.__words[1] + 6) = 582;
        WORD1(__p[0].__pn_.__r_.__value_.__r.__words[2]) = 2080;
        *(&__p[0].__pn_.__r_.__value_.__r.__words[2] + 4) = v35;
        _os_log_impl(&dword_2724B4000, v34, OS_LOG_TYPE_INFO, "%25s:%-5d  <vp> loading offload AirPods DSP AU strip %s", __p, 0x1Cu);
      }
    }

    v36 = *(this + 1588);
    if (v36 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v37 = &v57;
      if ((v57.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v37 = v57.__pn_.__r_.__value_.__r.__words[0];
      }

      CALegacyLog::log(v36, 4, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpSetupUplinkDSPChain.cpp", 582, "SetupUplinkAirPodsOffloadGraph", "loading offload AirPods DSP AU strip %s", v37);
    }

    if (SHIBYTE(v57.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p[0].__pn_, v57.__pn_.__r_.__value_.__l.__data_, v57.__pn_.__r_.__value_.__l.__size_);
    }

    else
    {
      __p[0] = v57;
    }

    applesauce::CF::make_DataRef(&__replacement, __p);
    if (SHIBYTE(__p[0].__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__pn_.__r_.__value_.__l.__data_);
    }

    applesauce::CF::make_DictionaryRef(__p, __replacement.__pn_.__r_.__value_.__l.__data_);
    v38 = *(this + 2085);
    *(this + 2085) = __p[0].__pn_.__r_.__value_.__r.__words[0];
    __p[0].__pn_.__r_.__value_.__r.__words[0] = v38;
    if (v38)
    {
      CFRelease(v38);
    }

    if (__replacement.__pn_.__r_.__value_.__r.__words[0])
    {
      CFRelease(__replacement.__pn_.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v28 = VPLogScope(void)::scope;
    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
    {
      v29 = (*v28 ? *v28 : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v30 = &v57;
        if ((v57.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v30 = v57.__pn_.__r_.__value_.__r.__words[0];
        }

        LODWORD(__p[0].__pn_.__r_.__value_.__l.__data_) = 136315650;
        *(__p[0].__pn_.__r_.__value_.__r.__words + 4) = "vpSetupUplinkDSPChain.cpp";
        WORD2(__p[0].__pn_.__r_.__value_.__r.__words[1]) = 1024;
        *(&__p[0].__pn_.__r_.__value_.__r.__words[1] + 6) = 588;
        WORD1(__p[0].__pn_.__r_.__value_.__r.__words[2]) = 2080;
        *(&__p[0].__pn_.__r_.__value_.__r.__words[2] + 4) = v30;
        _os_log_impl(&dword_2724B4000, v29, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> file %s does not exist", __p, 0x1Cu);
      }
    }

    v31 = *(this + 1588);
    if (v31 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v32 = &v57;
      if ((v57.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v32 = v57.__pn_.__r_.__value_.__r.__words[0];
      }

      CALegacyLog::log(v31, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpSetupUplinkDSPChain.cpp", 588, "SetupUplinkAirPodsOffloadGraph", "file %s does not exist", v32);
    }
  }

  if (SHIBYTE(v57.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v57.__pn_.__r_.__value_.__l.__data_);
  }

  if (*(this + 31) < 0)
  {
    v2 = *v2;
  }

  __p[0].__pn_.__r_.__value_.__r.__words[0] = v2;
  std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(&v57.__pn_, __p);
  std::__fs::filesystem::path::append[abi:ne200100]<char [8]>(&v57.__pn_, "Generic");
  VoiceProcessorV2::GetVersionNameForTuning(&__p[0].__pn_, this);
  std::__fs::filesystem::path::append[abi:ne200100]<std::string>(&v57.__pn_, __p);
  if (SHIBYTE(__p[0].__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__pn_.__r_.__value_.__l.__data_);
  }

  if (std::__fs::filesystem::path::__filename(&v57).__size_)
  {
    std::string::push_back(&v57.__pn_, 47);
  }

  std::string::append[abi:ne200100]<char const*,0>(&v57.__pn_, "uplink_echo_airpods_offload.propstrip", "");
  std::__fs::filesystem::__status(&v57, 0);
  if (__replacement.__pn_.__r_.__value_.__s.__data_[0] && __replacement.__pn_.__r_.__value_.__s.__data_[0] != 255)
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v44 = VPLogScope(void)::scope;
    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(4, VPLogScope(void)::scope, 0))
    {
      v45 = (*v44 ? *v44 : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
      {
        v46 = &v57;
        if ((v57.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v46 = v57.__pn_.__r_.__value_.__r.__words[0];
        }

        LODWORD(__p[0].__pn_.__r_.__value_.__l.__data_) = 136315650;
        *(__p[0].__pn_.__r_.__value_.__r.__words + 4) = "vpSetupUplinkDSPChain.cpp";
        WORD2(__p[0].__pn_.__r_.__value_.__r.__words[1]) = 1024;
        *(&__p[0].__pn_.__r_.__value_.__r.__words[1] + 6) = 601;
        WORD1(__p[0].__pn_.__r_.__value_.__r.__words[2]) = 2080;
        *(&__p[0].__pn_.__r_.__value_.__r.__words[2] + 4) = v46;
        _os_log_impl(&dword_2724B4000, v45, OS_LOG_TYPE_INFO, "%25s:%-5d  <vp> loading offload AirPods DSP property strip %s", __p, 0x1Cu);
      }
    }

    v47 = *(this + 1588);
    if (v47 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v48 = &v57;
      if ((v57.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v48 = v57.__pn_.__r_.__value_.__r.__words[0];
      }

      CALegacyLog::log(v47, 4, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpSetupUplinkDSPChain.cpp", 601, "SetupUplinkAirPodsOffloadGraph", "loading offload AirPods DSP property strip %s", v48);
    }

    if (SHIBYTE(v57.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p[0].__pn_, v57.__pn_.__r_.__value_.__l.__data_, v57.__pn_.__r_.__value_.__l.__size_);
    }

    else
    {
      __p[0] = v57;
    }

    applesauce::CF::make_DataRef(&__replacement, __p);
    if (SHIBYTE(__p[0].__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__pn_.__r_.__value_.__l.__data_);
    }

    applesauce::CF::make_DictionaryRef(__p, __replacement.__pn_.__r_.__value_.__l.__data_);
    v49 = *(this + 2086);
    *(this + 2086) = __p[0].__pn_.__r_.__value_.__r.__words[0];
    __p[0].__pn_.__r_.__value_.__r.__words[0] = v49;
    if (v49)
    {
      CFRelease(v49);
    }

    if (__replacement.__pn_.__r_.__value_.__r.__words[0])
    {
      CFRelease(__replacement.__pn_.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v39 = VPLogScope(void)::scope;
    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
    {
      v40 = (*v39 ? *v39 : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        v41 = &v57;
        if ((v57.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v41 = v57.__pn_.__r_.__value_.__r.__words[0];
        }

        LODWORD(__p[0].__pn_.__r_.__value_.__l.__data_) = 136315650;
        *(__p[0].__pn_.__r_.__value_.__r.__words + 4) = "vpSetupUplinkDSPChain.cpp";
        WORD2(__p[0].__pn_.__r_.__value_.__r.__words[1]) = 1024;
        *(&__p[0].__pn_.__r_.__value_.__r.__words[1] + 6) = 607;
        WORD1(__p[0].__pn_.__r_.__value_.__r.__words[2]) = 2080;
        *(&__p[0].__pn_.__r_.__value_.__r.__words[2] + 4) = v41;
        _os_log_impl(&dword_2724B4000, v40, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> file %s does not exist", __p, 0x1Cu);
      }
    }

    v42 = *(this + 1588);
    if (v42 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v43 = &v57;
      if ((v57.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v43 = v57.__pn_.__r_.__value_.__r.__words[0];
      }

      CALegacyLog::log(v42, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpSetupUplinkDSPChain.cpp", 607, "SetupUplinkAirPodsOffloadGraph", "file %s does not exist", v43);
    }
  }

  if (SHIBYTE(v57.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v57.__pn_.__r_.__value_.__l.__data_);
  }

  if (*(this + 2083) && *(this + 2084) && *(this + 2085) && *(this + 2086))
  {
    *(this + 587) |= 0x40uLL;
  }

  else
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v50 = VPLogScope(void)::scope;
    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
    {
      v51 = (*v50 ? *v50 : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        LODWORD(__p[0].__pn_.__r_.__value_.__l.__data_) = 136315394;
        *(__p[0].__pn_.__r_.__value_.__r.__words + 4) = "vpSetupUplinkDSPChain.cpp";
        WORD2(__p[0].__pn_.__r_.__value_.__r.__words[1]) = 1024;
        *(&__p[0].__pn_.__r_.__value_.__r.__words[1] + 6) = 621;
        _os_log_impl(&dword_2724B4000, v51, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> Not able to enable offload AirPods DSP graph", __p, 0x12u);
      }
    }

    v52 = *(this + 1588);
    if (v52 && ((v4[3593] & 1) != 0 || v4[3594] == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      CALegacyLog::log(v52, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpSetupUplinkDSPChain.cpp", 621, "SetupUplinkAirPodsOffloadGraph", "Not able to enable offload AirPods DSP graph");
    }
  }
}

uint64_t GetVPSmartCoverIsAttached(BOOL *a1)
{
  v25[2] = *MEMORY[0x277D85DE8];
  v18 = 1768452981;
  if (GetVPSmartCoverIsAttached::gIOHIDEventSystemClientRef || (GetVPSmartCoverIsAttached::gIOHIDEventSystemClientRef = IOHIDEventSystemClientCreate()) != 0)
  {
    v16 = a1;
    v24[0] = @"PrimaryUsagePage";
    v2 = [MEMORY[0x277CCABB0] numberWithInt:65280];
    v24[1] = @"PrimaryUsage";
    v25[0] = v2;
    v3 = [MEMORY[0x277CCABB0] numberWithInt:41];
    v25[1] = v3;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:2];

    IOHIDEventSystemClientSetMatching();
    v4 = IOHIDEventSystemClientCopyServices(GetVPSmartCoverIsAttached::gIOHIDEventSystemClientRef);
    v5 = v4;
    if (v4)
    {
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v6 = v4;
      v7 = [(__CFArray *)v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v7)
      {
        v8 = *v20;
        while (2)
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v20 != v8)
            {
              objc_enumerationMutation(v6);
            }

            KeyboardEvent = IOHIDEventCreateKeyboardEvent();
            v11 = IOHIDServiceClientCopyEvent();
            if (!v11)
            {
              v18 = 1768452965;
LABEL_20:

              goto LABEL_21;
            }

            IntegerValue = IOHIDEventGetIntegerValue();
            v13 = IOHIDEventGetIntegerValue();
            if (IntegerValue == 65289 && v13 == 16)
            {
              v18 = 0;
              *v16 = IOHIDEventGetIntegerValue() != 0;
              goto LABEL_20;
            }
          }

          v7 = [(__CFArray *)v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
          if (v7)
          {
            continue;
          }

          break;
        }
      }

LABEL_21:
    }

    else
    {
      v18 = 1768452963;
    }
  }

  else
  {
    return 1768449395;
  }

  return v18;
}

uint64_t VPStrategyManager::GetPropertyInfo(VPStrategyManager *this, uint64_t a2, unsigned int *a3, unsigned __int8 *a4)
{
  v26 = *MEMORY[0x277D85DE8];
  if (VPStrategyMgrScope(void)::once != -1)
  {
    dispatch_once(&VPStrategyMgrScope(void)::once, &__block_literal_global_4428);
  }

  if (VPStrategyMgrScope(void)::scope)
  {
    if (*(VPStrategyMgrScope(void)::scope + 8))
    {
      v8 = *VPStrategyMgrScope(void)::scope;
      if (v8)
      {
        v9 = v8;
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          *&buf[4] = "vpStrategyManager.mm";
          v20 = 1024;
          v21 = 542;
          _os_log_impl(&dword_2724B4000, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d ================", buf, 0x12u);
        }
      }
    }
  }

  CADeprecated::CAAtomicSignaler::PersistentTryer::PersistentTryer(&v18, *(this + 25) + 320, 0);
  if (VPStrategyMgrScope(void)::once != -1)
  {
    dispatch_once(&VPStrategyMgrScope(void)::once, &__block_literal_global_4428);
  }

  if (VPStrategyMgrScope(void)::scope)
  {
    v10 = *VPStrategyMgrScope(void)::scope;
    if (!v10)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v10 = MEMORY[0x277D86220];
    v11 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    *&buf[4] = "vpStrategyManager.mm";
    v20 = 1024;
    v21 = 545;
    v22 = 1024;
    v23 = a2;
    _os_log_impl(&dword_2724B4000, v10, OS_LOG_TYPE_DEBUG, "%25s:%-5d Getting property info with ID: %u", buf, 0x18u);
  }

LABEL_18:
  if (VPStrategyMgrScope(void)::once != -1)
  {
    dispatch_once(&VPStrategyMgrScope(void)::once, &__block_literal_global_4428);
  }

  if (VPStrategyMgrScope(void)::scope)
  {
    if (*(VPStrategyMgrScope(void)::scope + 8))
    {
      v12 = *VPStrategyMgrScope(void)::scope;
      if (v12)
      {
        v13 = v12;
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          *&buf[4] = "vpStrategyManager.h";
          v20 = 1024;
          v21 = 142;
          _os_log_impl(&dword_2724B4000, v13, OS_LOG_TYPE_DEBUG, "%25s:%-5d ================", buf, 0x12u);
        }
      }
    }
  }

  CADeprecated::CAAtomicSignaler::PersistentTryer::PersistentTryer(buf, *(this + 25) + 320, 0);
  if (VPStrategyManager::CheckHasVP(*(*(this + 25) + 224)))
  {
    v14 = (*(**(*(this + 25) + 224) + 152))(*(*(this + 25) + 224), a2, a3, a4);
    atomic_fetch_add((*buf + 4), 0xFFFFFFFF);
    if (!v14)
    {
      goto LABEL_39;
    }
  }

  else
  {
    atomic_fetch_add((*buf + 4), 0xFFFFFFFF);
    v14 = 2;
  }

  if (VPStrategyMgrScope(void)::once != -1)
  {
    dispatch_once(&VPStrategyMgrScope(void)::once, &__block_literal_global_4428);
  }

  if (VPStrategyMgrScope(void)::scope)
  {
    v15 = *VPStrategyMgrScope(void)::scope;
    if (!v15)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v15 = MEMORY[0x277D86220];
    v16 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315906;
    *&buf[4] = "vpStrategyManager.mm";
    v20 = 1024;
    v21 = 547;
    v22 = 1024;
    v23 = v14;
    v24 = 2080;
    v25 = "GetPropertyInfo";
    _os_log_impl(&dword_2724B4000, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d Error code %i reported at %s", buf, 0x22u);
  }

LABEL_39:
  atomic_fetch_add((v18 + 4), 0xFFFFFFFF);
  return v14;
}

BOOL VPStrategyManager::CheckHasVP(VPStrategyManager *this)
{
  v9 = *MEMORY[0x277D85DE8];
  if (!this)
  {
    if (VPStrategyMgrScope(void)::once != -1)
    {
      dispatch_once(&VPStrategyMgrScope(void)::once, &__block_literal_global_4428);
    }

    if (VPStrategyMgrScope(void)::scope)
    {
      v2 = *VPStrategyMgrScope(void)::scope;
      if (!v2)
      {
        return this != 0;
      }
    }

    else
    {
      v2 = MEMORY[0x277D86220];
      v3 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v5 = 136315394;
      v6 = "vpStrategyManager.h";
      v7 = 1024;
      v8 = 163;
      _os_log_impl(&dword_2724B4000, v2, OS_LOG_TYPE_ERROR, "%25s:%-5d vp is nullptr!", &v5, 0x12u);
    }
  }

  return this != 0;
}

uint64_t VPStrategyManager::RemovePropertyListenerBlock(VPStrategyManager *this, uint64_t a2, uint64_t a3)
{
  v24 = *MEMORY[0x277D85DE8];
  if (VPStrategyMgrScope(void)::once != -1)
  {
    dispatch_once(&VPStrategyMgrScope(void)::once, &__block_literal_global_4428);
  }

  if (VPStrategyMgrScope(void)::scope)
  {
    if (*(VPStrategyMgrScope(void)::scope + 8))
    {
      v6 = *VPStrategyMgrScope(void)::scope;
      if (v6)
      {
        v7 = v6;
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          *&buf[4] = "vpStrategyManager.mm";
          v18 = 1024;
          v19 = 663;
          _os_log_impl(&dword_2724B4000, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d ================", buf, 0x12u);
        }
      }
    }
  }

  CADeprecated::CAAtomicSignaler::PersistentTryer::PersistentTryer(&v16, *(this + 25) + 320, 0);
  if (VPStrategyMgrScope(void)::once != -1)
  {
    dispatch_once(&VPStrategyMgrScope(void)::once, &__block_literal_global_4428);
  }

  if (VPStrategyMgrScope(void)::scope)
  {
    v8 = *VPStrategyMgrScope(void)::scope;
    if (!v8)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v8 = MEMORY[0x277D86220];
    v9 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    *&buf[4] = "vpStrategyManager.mm";
    v18 = 1024;
    v19 = 666;
    v20 = 1024;
    v21 = a2;
    _os_log_impl(&dword_2724B4000, v8, OS_LOG_TYPE_DEBUG, "%25s:%-5d Removing listener for property with ID: %u", buf, 0x18u);
  }

LABEL_18:
  if (VPStrategyMgrScope(void)::once != -1)
  {
    dispatch_once(&VPStrategyMgrScope(void)::once, &__block_literal_global_4428);
  }

  if (VPStrategyMgrScope(void)::scope)
  {
    if (*(VPStrategyMgrScope(void)::scope + 8))
    {
      v10 = *VPStrategyMgrScope(void)::scope;
      if (v10)
      {
        v11 = v10;
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          *&buf[4] = "vpStrategyManager.h";
          v18 = 1024;
          v19 = 142;
          _os_log_impl(&dword_2724B4000, v11, OS_LOG_TYPE_DEBUG, "%25s:%-5d ================", buf, 0x12u);
        }
      }
    }
  }

  CADeprecated::CAAtomicSignaler::PersistentTryer::PersistentTryer(buf, *(this + 25) + 320, 0);
  if (VPStrategyManager::CheckHasVP(*(*(this + 25) + 224)))
  {
    v12 = (*(**(*(this + 25) + 224) + 144))(*(*(this + 25) + 224), a2, a3);
    atomic_fetch_add((*buf + 4), 0xFFFFFFFF);
    if (!v12)
    {
      goto LABEL_39;
    }
  }

  else
  {
    atomic_fetch_add((*buf + 4), 0xFFFFFFFF);
    v12 = 2;
  }

  if (VPStrategyMgrScope(void)::once != -1)
  {
    dispatch_once(&VPStrategyMgrScope(void)::once, &__block_literal_global_4428);
  }

  if (VPStrategyMgrScope(void)::scope)
  {
    v13 = *VPStrategyMgrScope(void)::scope;
    if (!v13)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v13 = MEMORY[0x277D86220];
    v14 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315906;
    *&buf[4] = "vpStrategyManager.mm";
    v18 = 1024;
    v19 = 669;
    v20 = 1024;
    v21 = v12;
    v22 = 2080;
    v23 = "RemovePropertyListenerBlock";
    _os_log_impl(&dword_2724B4000, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d Error code %i reported at %s", buf, 0x22u);
  }

LABEL_39:
  atomic_fetch_add((v16 + 4), 0xFFFFFFFF);
  return v12;
}

uint64_t VPStrategyManager::AddPropertyListenerBlock(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v26 = *MEMORY[0x277D85DE8];
  v7 = a3;
  if (VPStrategyMgrScope(void)::once != -1)
  {
    dispatch_once(&VPStrategyMgrScope(void)::once, &__block_literal_global_4428);
  }

  if (VPStrategyMgrScope(void)::scope)
  {
    if (*(VPStrategyMgrScope(void)::scope + 8))
    {
      v8 = *VPStrategyMgrScope(void)::scope;
      if (v8)
      {
        v9 = v8;
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          *&buf[4] = "vpStrategyManager.mm";
          v20 = 1024;
          v21 = 650;
          _os_log_impl(&dword_2724B4000, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d ================", buf, 0x12u);
        }
      }
    }
  }

  CADeprecated::CAAtomicSignaler::PersistentTryer::PersistentTryer(&v18, *(a1 + 200) + 320, 0);
  if (VPStrategyMgrScope(void)::once != -1)
  {
    dispatch_once(&VPStrategyMgrScope(void)::once, &__block_literal_global_4428);
  }

  if (VPStrategyMgrScope(void)::scope)
  {
    v10 = *VPStrategyMgrScope(void)::scope;
    if (!v10)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v10 = MEMORY[0x277D86220];
    v11 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    *&buf[4] = "vpStrategyManager.mm";
    v20 = 1024;
    v21 = 653;
    v22 = 1024;
    v23 = a2;
    _os_log_impl(&dword_2724B4000, v10, OS_LOG_TYPE_DEBUG, "%25s:%-5d Adding listener for property with ID: %u", buf, 0x18u);
  }

LABEL_18:
  if (VPStrategyMgrScope(void)::once != -1)
  {
    dispatch_once(&VPStrategyMgrScope(void)::once, &__block_literal_global_4428);
  }

  if (VPStrategyMgrScope(void)::scope)
  {
    if (*(VPStrategyMgrScope(void)::scope + 8))
    {
      v12 = *VPStrategyMgrScope(void)::scope;
      if (v12)
      {
        v13 = v12;
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          *&buf[4] = "vpStrategyManager.h";
          v20 = 1024;
          v21 = 142;
          _os_log_impl(&dword_2724B4000, v13, OS_LOG_TYPE_DEBUG, "%25s:%-5d ================", buf, 0x12u);
        }
      }
    }
  }

  CADeprecated::CAAtomicSignaler::PersistentTryer::PersistentTryer(buf, *(a1 + 200) + 320, 0);
  if (VPStrategyManager::CheckHasVP(*(*(a1 + 200) + 224)))
  {
    v14 = (*(**(*(a1 + 200) + 224) + 136))(*(*(a1 + 200) + 224), a2, v7, a4);
    atomic_fetch_add((*buf + 4), 0xFFFFFFFF);
    if (!v14)
    {
      goto LABEL_39;
    }
  }

  else
  {
    atomic_fetch_add((*buf + 4), 0xFFFFFFFF);
    v14 = 2;
  }

  if (VPStrategyMgrScope(void)::once != -1)
  {
    dispatch_once(&VPStrategyMgrScope(void)::once, &__block_literal_global_4428);
  }

  if (VPStrategyMgrScope(void)::scope)
  {
    v15 = *VPStrategyMgrScope(void)::scope;
    if (!v15)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v15 = MEMORY[0x277D86220];
    v16 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315906;
    *&buf[4] = "vpStrategyManager.mm";
    v20 = 1024;
    v21 = 656;
    v22 = 1024;
    v23 = v14;
    v24 = 2080;
    v25 = "AddPropertyListenerBlock";
    _os_log_impl(&dword_2724B4000, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d Error code %i reported at %s", buf, 0x22u);
  }

LABEL_39:
  atomic_fetch_add((v18 + 4), 0xFFFFFFFF);

  return v14;
}

void sub_27259EEF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  atomic_fetch_add((a10 + 4), 0xFFFFFFFF);

  _Unwind_Resume(a1);
}

uint64_t VPStrategyManager::AppendReferenceSignal(VPStrategyManager *this, const AudioBufferList *a2, const AudioTimeStamp *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = *(this + 25);
  atomic_fetch_add((v6 + 324), 1u);
  if (VPStrategyManager::CheckHasVP(*(*(this + 25) + 224)) && !*(v6 + 320))
  {
    VPStrategyManager::CheckRequiredState(this, 8uLL);
    v7 = (*(**(*(this + 25) + 224) + 128))(*(*(this + 25) + 224), a2, a3);
    atomic_fetch_add((v6 + 324), 0xFFFFFFFF);
    if (!v7)
    {
      return v7;
    }
  }

  else
  {
    atomic_fetch_add((v6 + 324), 0xFFFFFFFF);
    v7 = 2;
  }

  if (VPStrategyMgrScope(void)::once != -1)
  {
    dispatch_once(&VPStrategyMgrScope(void)::once, &__block_literal_global_4428);
  }

  if (VPStrategyMgrScope(void)::scope)
  {
    v8 = *VPStrategyMgrScope(void)::scope;
    if (!v8)
    {
      return v7;
    }
  }

  else
  {
    v8 = MEMORY[0x277D86220];
    v9 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v11 = 136315906;
    v12 = "vpStrategyManager.mm";
    v13 = 1024;
    v14 = 642;
    v15 = 1024;
    v16 = v7;
    v17 = 2080;
    v18 = "AppendReferenceSignal";
    _os_log_impl(&dword_2724B4000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d Error code %i reported at %s", &v11, 0x22u);
  }

  return v7;
}

void VPStrategyManager::CheckRequiredState(unint64_t **this, unint64_t a2)
{
  v2 = a2;
  v31 = *MEMORY[0x277D85DE8];
  v3 = atomic_load(this[25]);
  if ((v3 & a2) == 0)
  {
    if (VPStrategyMgrScope(void)::once != -1)
    {
      dispatch_once(&VPStrategyMgrScope(void)::once, &__block_literal_global_4428);
    }

    if (VPStrategyMgrScope(void)::scope)
    {
      v13 = *VPStrategyMgrScope(void)::scope;
      if (!v13)
      {
        return;
      }
    }

    else
    {
      v13 = MEMORY[0x277D86220];
      v14 = MEMORY[0x277D86220];
    }

    v5 = v13;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      VPStrategyManager::StateAsString(v21, v3);
      v15 = v22;
      v16 = v21[0];
      VPStrategyManager::StateAsString(__p, v2);
      v17 = v21;
      if (v15 < 0)
      {
        v17 = v16;
      }

      if (v20 >= 0)
      {
        v18 = __p;
      }

      else
      {
        v18 = __p[0];
      }

      *buf = 136315906;
      v24 = "vpStrategyManager.h";
      v25 = 1024;
      v26 = 154;
      v27 = 2080;
      v28 = v17;
      v29 = 2080;
      v30 = v18;
      v10 = "%25s:%-5d Invalid state: %s! At this point, we require state: %s";
      v11 = v5;
      v12 = OS_LOG_TYPE_ERROR;
      goto LABEL_28;
    }

LABEL_32:

    return;
  }

  if (v3 != 8)
  {
    if (VPStrategyMgrScope(void)::once != -1)
    {
      dispatch_once(&VPStrategyMgrScope(void)::once, &__block_literal_global_4428);
    }

    if (VPStrategyMgrScope(void)::scope)
    {
      if (*(VPStrategyMgrScope(void)::scope + 8))
      {
        v4 = *VPStrategyMgrScope(void)::scope;
        if (v4)
        {
          v5 = v4;
          if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
          {
            VPStrategyManager::StateAsString(v21, v3);
            v6 = v22;
            v7 = v21[0];
            VPStrategyManager::StateAsString(__p, v2);
            v8 = v21;
            if (v6 < 0)
            {
              v8 = v7;
            }

            if (v20 >= 0)
            {
              v9 = __p;
            }

            else
            {
              v9 = __p[0];
            }

            *buf = 136315906;
            v24 = "vpStrategyManager.h";
            v25 = 1024;
            v26 = 157;
            v27 = 2080;
            v28 = v8;
            v29 = 2080;
            v30 = v9;
            v10 = "%25s:%-5d State is: %s which is an acceptable state for this point: {%s}";
            v11 = v5;
            v12 = OS_LOG_TYPE_DEBUG;
LABEL_28:
            _os_log_impl(&dword_2724B4000, v11, v12, v10, buf, 0x26u);
            if (v20 < 0)
            {
              operator delete(__p[0]);
            }

            if (v22 < 0)
            {
              operator delete(v21[0]);
            }

            goto LABEL_32;
          }

          goto LABEL_32;
        }
      }
    }
  }
}

void sub_27259F3C4(_Unwind_Exception *a1)
{
  if (v3 < 0)
  {
    operator delete(v2);
  }

  _Unwind_Resume(a1);
}

uint64_t VPStrategyManager::StateAsString(VPStrategyManager *this, int a2)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v13);
  v4 = 0;
  for (i = 0; i != 48; i += 16)
  {
    while ((*(&VPStrategyManager::StateAsString(unsigned long long)::stateNames + i) & a2) != 0)
    {
      v6 = *(&VPStrategyManager::StateAsString(unsigned long long)::stateNames + i + 8);
      if (v4)
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, " OR ", 4);
      }

      v7 = strlen(v6);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, v6, v7);
      i += 16;
      v4 = 1;
      if (i == 48)
      {
        goto LABEL_11;
      }
    }
  }

  if ((v4 & 1) == 0)
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, "*invalid*", 9);
  }

LABEL_11:
  if ((v21 & 0x10) != 0)
  {
    v9 = v20;
    if (v20 < v17)
    {
      v20 = v17;
      v9 = v17;
    }

    locale = v16[4].__locale_;
  }

  else
  {
    if ((v21 & 8) == 0)
    {
      v8 = 0;
      *(this + 23) = 0;
      goto LABEL_24;
    }

    locale = v16[1].__locale_;
    v9 = v16[3].__locale_;
  }

  v8 = v9 - locale;
  if ((v9 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v8 >= 0x17)
  {
    operator new();
  }

  *(this + 23) = v8;
  if (v8)
  {
    memmove(this, locale, v8);
  }

LABEL_24:
  *(this + v8) = 0;
  v13[0] = *MEMORY[0x277D82818];
  v11 = *(MEMORY[0x277D82818] + 72);
  *(v13 + *(v13[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v14 = v11;
  v15 = MEMORY[0x277D82878] + 16;
  if (v19 < 0)
  {
    operator delete(__p);
  }

  v15 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v16);
  std::iostream::~basic_iostream();
  return MEMORY[0x2743CBE30](&v22);
}

void sub_27259F6C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a10);
  MEMORY[0x2743CBE30](&a26);
  _Unwind_Resume(a1);
}

uint64_t *std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](uint64_t *a1)
{
  a1[22] = 0;
  v2 = MEMORY[0x277D82890] + 104;
  a1[16] = MEMORY[0x277D82890] + 104;
  v3 = a1 + 2;
  v4 = MEMORY[0x277D82890] + 64;
  a1[2] = MEMORY[0x277D82890] + 64;
  v5 = MEMORY[0x277D82818];
  v6 = *(MEMORY[0x277D82818] + 24);
  v7 = *(MEMORY[0x277D82818] + 16);
  *a1 = v7;
  *(a1 + *(v7 - 24)) = v6;
  a1[1] = 0;
  v8 = (a1 + *(*a1 - 24));
  std::ios_base::init(v8, a1 + 3);
  v9 = MEMORY[0x277D82890] + 24;
  v8[1].__vftable = 0;
  v8[1].__fmtflags_ = -1;
  v10 = v5[5];
  v11 = v5[4];
  a1[2] = v11;
  *(v3 + *(v11 - 24)) = v10;
  v12 = v5[1];
  *a1 = v12;
  *(a1 + *(v12 - 24)) = v5[6];
  *a1 = v9;
  a1[16] = v2;
  a1[2] = v4;
  std::stringbuf::basic_stringbuf[abi:ne200100]((a1 + 3), 24);
  return a1;
}

void sub_27259F968(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  MEMORY[0x2743CBE30](v1);
  _Unwind_Resume(a1);
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(uint64_t a1)
{
  v2 = MEMORY[0x277D82818];
  v3 = *MEMORY[0x277D82818];
  *a1 = *MEMORY[0x277D82818];
  v4 = *(v2 + 72);
  *(a1 + *(v3 - 24)) = *(v2 + 64);
  *(a1 + 16) = v4;
  *(a1 + 24) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 32));

  return std::iostream::~basic_iostream();
}

{
  v2 = MEMORY[0x277D82818];
  v3 = *MEMORY[0x277D82818];
  *a1 = *MEMORY[0x277D82818];
  v4 = *(v2 + 72);
  *(a1 + *(v3 - 24)) = *(v2 + 64);
  *(a1 + 16) = v4;
  *(a1 + 24) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 32));
  std::iostream::~basic_iostream();
  MEMORY[0x2743CBE30](a1 + 128);
  return a1;
}

void *VPStrategyManager::DumpState(void *this, __sFILE *a2)
{
  v2 = (this[25] + 324);
  atomic_fetch_add(v2, 1u);
  if (a2)
  {
    this = *(this[25] + 224);
    if (this)
    {
      this = (*(*this + 120))(this);
    }
  }

  atomic_fetch_add(v2, 0xFFFFFFFF);
  return this;
}

NSObject *VPStrategyManager::GetVersion(VPStrategyManager *this)
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = this + 200;
  CADeprecated::CAAtomicSignaler::PersistentTryer::PersistentTryer(&v6, *(this + 25) + 320, 0);
  v2 = *(*v1 + 224);
  if (v2)
  {
    result = (*(*v2 + 112))(v2);
  }

  else
  {
    if (VPStrategyMgrScope(void)::once != -1)
    {
      dispatch_once(&VPStrategyMgrScope(void)::once, &__block_literal_global_4428);
    }

    if (VPStrategyMgrScope(void)::scope)
    {
      result = *VPStrategyMgrScope(void)::scope;
      v4 = result;
      if (!result)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v4 = MEMORY[0x277D86220];
      v5 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v8 = "vpStrategyManager.mm";
      v9 = 1024;
      v10 = 526;
      _os_log_impl(&dword_2724B4000, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d Actually the VoiceProcessorInterface* owned by VPStrategyManager the is a nullptr, so we can only report that this VP's version is 0!", buf, 0x12u);
    }

    result = 0;
  }

LABEL_12:
  atomic_fetch_add((v6 + 4), 0xFFFFFFFF);
  return result;
}

uint64_t VPStrategyManager::GetMaxOutputPacketInfo(unint64_t **this, AudioStreamBasicDescription *a2, AudioChannelLayout *a3, unsigned int *a4, unsigned int *a5, unsigned int *a6)
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = a3;
  if (VPStrategyMgrScope(void)::once != -1)
  {
    dispatch_once(&VPStrategyMgrScope(void)::once, &__block_literal_global_4428);
  }

  if (VPStrategyMgrScope(void)::scope)
  {
    if (*(VPStrategyMgrScope(void)::scope + 8))
    {
      v11 = *VPStrategyMgrScope(void)::scope;
      if (v11)
      {
        v12 = v11;
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          v16 = "vpStrategyManager.mm";
          v17 = 1024;
          v18 = 432;
          _os_log_impl(&dword_2724B4000, v12, OS_LOG_TYPE_DEBUG, "%25s:%-5d ================", buf, 0x12u);
        }
      }
    }
  }

  return VPStrategyManager::RedirectWrapper_Initializing<AudioStreamBasicDescription &,AudioChannelLayout *,unsigned int &,unsigned int &,unsigned int &,AudioStreamBasicDescription &,AudioChannelLayout *&,unsigned int &,unsigned int &,unsigned int &>(this, VoiceProcessorInterface::GetMaxOutputPacketInfo, 0, a2, &v14, a4, a5, a6);
}

uint64_t VPStrategyManager::RedirectWrapper_Initializing<AudioStreamBasicDescription &,AudioChannelLayout *,unsigned int &,unsigned int &,unsigned int &,AudioStreamBasicDescription &,AudioChannelLayout *&,unsigned int &,unsigned int &,unsigned int &>(unint64_t **this, uint64_t (*a2)(void *, uint64_t, void, uint64_t, uint64_t, uint64_t), uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v23 = *MEMORY[0x277D85DE8];
  if (VPStrategyMgrScope(void)::once != -1)
  {
    dispatch_once(&VPStrategyMgrScope(void)::once, &__block_literal_global_4428);
  }

  if (VPStrategyMgrScope(void)::scope)
  {
    if (*(VPStrategyMgrScope(void)::scope + 8))
    {
      v16 = *VPStrategyMgrScope(void)::scope;
      if (v16)
      {
        v17 = v16;
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          *v20 = 136315394;
          *&v20[4] = "vpStrategyManager.h";
          v21 = 1024;
          v22 = 131;
          _os_log_impl(&dword_2724B4000, v17, OS_LOG_TYPE_DEBUG, "%25s:%-5d ================", v20, 0x12u);
        }
      }
    }
  }

  VPStrategyManager::CheckRequiredState(this, 4uLL);
  CADeprecated::CAAtomicSignaler::PersistentTryer::PersistentTryer(v20, (this[25] + 40), 0);
  if (VPStrategyManager::CheckHasVP(this[25][28]))
  {
    v18 = (this[25][28] + (a3 >> 1));
    if (a3)
    {
      a2 = *(*v18 + a2);
    }

    result = a2(v18, a4, *a5, a6, a7, a8);
  }

  else
  {
    result = 2;
  }

  atomic_fetch_add((*v20 + 4), 0xFFFFFFFF);
  return result;
}

uint64_t VPStrategyManager::SetMode(VPStrategyManager *this, int a2)
{
  v11 = *MEMORY[0x277D85DE8];
  if (VPStrategyMgrScope(void)::once != -1)
  {
    dispatch_once(&VPStrategyMgrScope(void)::once, &__block_literal_global_4428);
  }

  if (VPStrategyMgrScope(void)::scope)
  {
    if (*(VPStrategyMgrScope(void)::scope + 8))
    {
      v4 = *VPStrategyMgrScope(void)::scope;
      if (v4)
      {
        v5 = v4;
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
        {
          v7 = 136315394;
          v8 = "vpStrategyManager.mm";
          v9 = 1024;
          v10 = 510;
          _os_log_impl(&dword_2724B4000, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d ================", &v7, 0x12u);
        }
      }
    }
  }

  v7 = a2;
  return VPStrategyManager::SetProperty(this, 32787, &v7, 4uLL);
}

uint64_t VPStrategyManager::SetProperty(VPStrategyManager *this, int a2, CFPropertyListRef *a3, size_t a4)
{
  LODWORD(v6) = a2;
  v85 = *MEMORY[0x277D85DE8];
  if (VPStrategyMgrScope(void)::once != -1)
  {
    dispatch_once(&VPStrategyMgrScope(void)::once, &__block_literal_global_4428);
  }

  __val = v6;
  if (VPStrategyMgrScope(void)::scope)
  {
    if (*(VPStrategyMgrScope(void)::scope + 8))
    {
      v8 = *VPStrategyMgrScope(void)::scope;
      if (v8)
      {
        v9 = v8;
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          *v80 = "vpStrategyManager.mm";
          *&v80[8] = 1024;
          *&v80[10] = 564;
          _os_log_impl(&dword_2724B4000, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d ================", buf, 0x12u);
        }
      }
    }
  }

  if (VPStrategyMgrScope(void)::once != -1)
  {
    dispatch_once(&VPStrategyMgrScope(void)::once, &__block_literal_global_4428);
  }

  if (VPStrategyMgrScope(void)::scope)
  {
    v10 = *VPStrategyMgrScope(void)::scope;
    if (!v10)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v10 = MEMORY[0x277D86220];
    v11 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    *v80 = "vpStrategyManager.mm";
    *&v80[8] = 1024;
    *&v80[10] = 567;
    *&v80[14] = 1024;
    *&v80[16] = v6;
    _os_log_impl(&dword_2724B4000, v10, OS_LOG_TYPE_DEBUG, "%25s:%-5d Setting property with ID: %u", buf, 0x18u);
  }

LABEL_18:
  if (a3 && a4)
  {
    v12 = *(this + 25);
    v13 = *(v12 + 120);
    v73 = v12 + 120;
    v74 = (*(v13 + 16))();
    v14 = *(this + 25);
    atomic_fetch_add((v14 + 208), 1u);
    while (*(v14 + 212))
    {
      usleep(0x1F4u);
    }

    CADeprecated::CAAtomicSignaler::PersistentTryer::PersistentTryer(&v72, *(this + 25) + 320, 0);
    VPStrategyManager::CheckRequiredState(this, 0xEuLL);
    v6 = v6;
    v16 = *(this + 25);
    v69 = v16[28];
    if (!v69)
    {
      v70 = 0;
      goto LABEL_44;
    }

    if (VPStrategyMgrScope(void)::once != -1)
    {
      dispatch_once(&VPStrategyMgrScope(void)::once, &__block_literal_global_4428);
    }

    if (VPStrategyMgrScope(void)::scope)
    {
      v17 = *VPStrategyMgrScope(void)::scope;
      if (!v17)
      {
LABEL_43:
        v70 = (*(**(*(this + 25) + 224) + 56))(*(*(this + 25) + 224), v6, a3, a4);
        v16 = *(this + 25);
LABEL_44:
        v20 = v16 + 12;
        v21 = std::remove_if[abi:ne200100]<std::__wrap_iter<VPPropertyQueue::QueueEntry *>,VPPropertyQueue::DoErase::{lambda(std::__wrap_iter<VPPropertyQueue::QueueEntry *> &)#1}>(v16[12], v16[13], v6);
        v68 = v16[13];
        std::vector<VPPropertyQueue::QueueEntry>::erase(v16 + 12, v21, v68);
        v67 = v21;
        *buf = v6;
        v80[44] = 0;
        v82[4] = 0;
        v83 = 0;
        memset(&v80[4], 0, 33);
        if (VPPropertyItem::IsPropertyCFType(v6))
        {
          v22 = *MEMORY[0x277CBECE8];
          if (v6 == 32798)
          {
            DeepCopy = CFPropertyListCreateDeepCopy(v22, a3, 0);
          }

          else
          {
            DeepCopy = CFPropertyListCreateDeepCopy(v22, *a3, 0);
          }

          v25 = *&v80[28];
          *&v80[28] = DeepCopy;
          if (v25)
          {
            CFRelease(v25);
          }
        }

        else if (v6 == 1684305512)
        {
          if (a4 == 8)
          {
            v26 = *a3;
            if (*a3)
            {
              v26 = _Block_copy(v26);
            }

            *&v80[36] = v26;
            v80[44] = 1;
          }
        }

        else if (v6 == 1836278117)
        {
          if (a4 == 8)
          {
            v24 = *a3;
            if (*a3)
            {
              v24 = _Block_copy(v24);
            }

            *&v82[4] = v24;
            v83 = 1;
          }
        }

        else
        {
          v76 = 0;
          v77[0] = 0;
          __p = v6;
          AUPropertyItem::SetData(&__p, a4, a3);
          v27 = v77[0];
          *&v80[4] = __p;
          *&v80[12] = v76;
          AUPropertyItem::SetData(&v80[4], HIDWORD(v76), v77[0]);
          if (v27)
          {
            free(v27);
          }
        }

        v84 = v69 != 0;
        v29 = v16[13];
        v28 = v16[14];
        if (v29 >= v28)
        {
          v34 = 0xCCCCCCCCCCCCCCCDLL * ((v29 - *v20) >> 4);
          if (v34 + 1 > 0x333333333333333)
          {
            std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
          }

          v35 = 0xCCCCCCCCCCCCCCCDLL * ((v28 - *v20) >> 4);
          v36 = 2 * v35;
          if (2 * v35 <= v34 + 1)
          {
            v36 = v34 + 1;
          }

          if (v35 >= 0x199999999999999)
          {
            v37 = 0x333333333333333;
          }

          else
          {
            v37 = v36;
          }

          v78 = v16 + 12;
          if (v37)
          {
            if (v37 <= 0x333333333333333)
            {
              operator new();
            }

            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v38 = 80 * v34;
          __p = 0;
          v76 = v38;
          v77[0] = v38;
          v77[1] = 0;
          *v38 = *buf;
          *(v38 + 20) = 0;
          *(v38 + 24) = 0;
          if (v38 != buf)
          {
            v40 = *&v80[12];
            v39 = *&v80[16];
            v41 = *&v80[20];
            *(v38 + 8) = *&v80[4];
            *(v38 + 16) = v40;
            AUPropertyItem::SetData((v38 + 8), v39, v41);
          }

          *(v38 + 40) = 0;
          *(v38 + 32) = *&v80[28];
          *&v80[28] = 0;
          *(v38 + 48) = 0;
          if (v80[44] == 1)
          {
            std::__optional_storage_base<vp::Block<void({block_pointer} {__strong})(float,float)>,false>::__construct[abi:ne200100]<vp::Block<void({block_pointer} {__strong})(float,float)>>(v38 + 40, &v80[36]);
          }

          *(v38 + 56) = 0;
          *(v38 + 64) = 0;
          if (v83 == 1)
          {
            std::__optional_storage_base<vp::Block<void({block_pointer} {__strong})(float,float)>,false>::__construct[abi:ne200100]<vp::Block<void({block_pointer} {__strong})(float,float)>>(v38 + 56, &v82[4]);
          }

          *(v38 + 72) = v84;
          v77[0] = v77[0] + 80;
          v42 = v16[12];
          v43 = v16[13];
          v44 = &v76[v42 - v43];
          if (v42 != v43)
          {
            v45 = 0;
            do
            {
              v46 = v42 + v45;
              v47 = v44 + v45;
              *v47 = *(v42 + v45);
              *(v47 + 5) = 0;
              *(v47 + 3) = 0;
              if (v44 != v42)
              {
                v49 = *(v46 + 4);
                v48 = *(v46 + 5);
                v50 = *(v46 + 3);
                *(v47 + 1) = *(v46 + 1);
                *(v47 + 4) = v49;
                AUPropertyItem::SetData((v47 + 8), v48, v50);
              }

              v51 = *(v46 + 4);
              if (v51)
              {
                CFRetain(*(v46 + 4));
              }

              *(v47 + 4) = v51;
              v52 = v44 + v45;
              v52[40] = 0;
              v52[48] = 0;
              if (v46[48] == 1)
              {
                v53 = *(v42 + v45 + 40);
                if (v53)
                {
                  v53 = _Block_copy(v53);
                }

                *(v52 + 5) = v53;
                v52[48] = 1;
              }

              v52[56] = 0;
              v52[64] = 0;
              if (v46[64] == 1)
              {
                v54 = *(v42 + v45 + 56);
                if (v54)
                {
                  v54 = _Block_copy(v54);
                }

                *(v52 + 7) = v54;
                v52[64] = 1;
              }

              *(v44 + v45 + 72) = v46[72];
              v45 += 80;
            }

            while (v46 + 80 != v43);
            do
            {
              VPPropertyItem::~VPPropertyItem(v42);
              v42 = (v42 + 80);
            }

            while (v42 != v43);
          }

          v55 = v16[12];
          v16[12] = v44;
          v56 = v16[14];
          v66 = v77[0];
          *(v16 + 13) = *v77;
          v77[0] = v55;
          v77[1] = v56;
          __p = v55;
          v76 = v55;
          std::__split_buffer<VPPropertyQueue::QueueEntry>::~__split_buffer(&__p);
          v33 = v66;
        }

        else
        {
          *v29 = *buf;
          *(v29 + 20) = 0;
          *(v29 + 24) = 0;
          if (v29 != buf)
          {
            v31 = *&v80[12];
            v30 = *&v80[16];
            v32 = *&v80[20];
            *(v29 + 8) = *&v80[4];
            *(v29 + 16) = v31;
            AUPropertyItem::SetData((v29 + 8), v30, v32);
          }

          *(v29 + 40) = 0;
          *(v29 + 32) = *&v80[28];
          *&v80[28] = 0;
          *(v29 + 48) = 0;
          if (v80[44] == 1)
          {
            std::__optional_storage_base<vp::Block<void({block_pointer} {__strong})(float,float)>,false>::__construct[abi:ne200100]<vp::Block<void({block_pointer} {__strong})(float,float)>>(v29 + 40, &v80[36]);
          }

          *(v29 + 56) = 0;
          *(v29 + 64) = 0;
          if (v83 == 1)
          {
            std::__optional_storage_base<vp::Block<void({block_pointer} {__strong})(float,float)>,false>::__construct[abi:ne200100]<vp::Block<void({block_pointer} {__strong})(float,float)>>(v29 + 56, &v82[4]);
          }

          *(v29 + 72) = v84;
          v33 = v29 + 80;
          v16[13] = v29 + 80;
        }

        v16[13] = v33;
        if (v83 == 1)
        {
          v57 = *&v82[4];
          if (*&v82[4])
          {
            *&v82[4] = 0;

            v57 = *&v82[4];
          }
        }

        if (v80[44] == 1)
        {
          v58 = *&v80[36];
          if (*&v80[36])
          {
            *&v80[36] = 0;

            v58 = *&v80[36];
          }
        }

        if (*&v80[28])
        {
          CFRelease(*&v80[28]);
        }

        if (*&v80[20])
        {
          free(*&v80[20]);
        }

        if (VPStrategyMgrScope(void)::once != -1)
        {
          dispatch_once(&VPStrategyMgrScope(void)::once, &__block_literal_global_4428);
        }

        if (VPStrategyMgrScope(void)::scope)
        {
          v59 = *VPStrategyMgrScope(void)::scope;
          if (!v59)
          {
LABEL_130:
            atomic_fetch_add((v72 + 4), 0xFFFFFFFF);
            atomic_fetch_add((v14 + 208), 0xFFFFFFFF);
            if (v74 == 1)
            {
              (*(*v73 + 24))(v73);
            }

            return v70;
          }
        }

        else
        {
          v59 = MEMORY[0x277D86220];
          v60 = MEMORY[0x277D86220];
        }

        v61 = v59;
        if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
        {
          v62 = v68 == v67 ? "added" : "replaced";
          caulk::string_from_4cc(&__p, __val);
          v63 = SHIBYTE(v77[0]) >= 0 ? &__p : __p;
          v64 = 0xCCCCCCCCCCCCCCCDLL * ((v16[13] - v16[12]) >> 4);
          *buf = 136316674;
          *v80 = "vpPropertyQueue.h";
          *&v80[8] = 1024;
          *&v80[10] = 22;
          *&v80[14] = 2080;
          *&v80[16] = v62;
          *&v80[24] = 1024;
          *&v80[26] = __val;
          *&v80[30] = 2080;
          *&v80[32] = v63;
          *&v80[40] = 1024;
          *&v80[42] = v69 != 0;
          v81 = 2048;
          *v82 = v64;
          _os_log_impl(&dword_2724B4000, v61, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s property 0x%x %s, setOnVP=%d (size=%lu)", buf, 0x3Cu);
          if (SHIBYTE(v77[0]) < 0)
          {
            operator delete(__p);
          }
        }

        goto LABEL_130;
      }
    }

    else
    {
      v17 = MEMORY[0x277D86220];
      v19 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      *v80 = "vpStrategyManager.mm";
      *&v80[8] = 1024;
      *&v80[10] = 578;
      _os_log_impl(&dword_2724B4000, v17, OS_LOG_TYPE_DEBUG, "%25s:%-5d set on vp", buf, 0x12u);
    }

    v6 = v6;
    goto LABEL_43;
  }

  if (VPStrategyMgrScope(void)::once != -1)
  {
    dispatch_once(&VPStrategyMgrScope(void)::once, &__block_literal_global_4428);
  }

  v70 = 1651532146;
  if (VPStrategyMgrScope(void)::scope)
  {
    v15 = *VPStrategyMgrScope(void)::scope;
    if (!v15)
    {
      return v70;
    }
  }

  else
  {
    v15 = MEMORY[0x277D86220];
    v18 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315906;
    *v80 = "vpStrategyManager.mm";
    *&v80[8] = 1024;
    *&v80[10] = 585;
    *&v80[14] = 2048;
    *&v80[16] = a3;
    *&v80[24] = 1024;
    *&v80[26] = a4;
    _os_log_impl(&dword_2724B4000, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d bad prop data = %p, size = %u", buf, 0x22u);
  }

  return v70;
}

void sub_2725A0C50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, void *a26)
{
  if (v26)
  {
    free(v26);
  }

  std::optional<vp::Block<void({block_pointer} {__strong})(float,float)>>::~optional(v28 + 56);
  std::optional<vp::Block<void({block_pointer} {__strong})(float,float)>>::~optional(v28 + 40);
  applesauce::CF::TypeRef::~TypeRef((v28 + 32));
  if (a26)
  {
    free(a26);
    a26 = 0;
  }

  *(v28 + 8) = 0;
  *(v28 + 16) = 0;
  atomic_fetch_add((a15 + 4), 0xFFFFFFFF);
  atomic_fetch_add((v27 + 208), 0xFFFFFFFF);
  CADeprecated::CAMutex::Locker::~Locker(&a16);
  _Unwind_Resume(a1);
}

uint64_t std::remove_if[abi:ne200100]<std::__wrap_iter<VPPropertyQueue::QueueEntry *>,VPPropertyQueue::DoErase(unsigned int)::{lambda(std::__wrap_iter<VPPropertyQueue::QueueEntry *> &)#1}>(uint64_t a1, uint64_t a2, int a3)
{
  v3 = a2;
  if (a1 != a2)
  {
    v3 = a1;
    while (*v3 != a3)
    {
      v3 += 80;
      if (v3 == a2)
      {
        v3 = a2;
        break;
      }
    }

    if (v3 != a2)
    {
      for (i = v3 + 80; i != a2; i += 80)
      {
        if (*i != a3)
        {
          *v3 = *i;
          if (i != v3)
          {
            v9 = *(i + 16);
            v8 = *(i + 20);
            v10 = *(i + 24);
            *(v3 + 8) = *(i + 8);
            *(v3 + 16) = v9;
            AUPropertyItem::SetData((v3 + 8), v8, v10);
          }

          v11 = *(v3 + 32);
          *(v3 + 32) = *(i + 32);
          *(i + 32) = v11;
          std::__optional_storage_base<vp::Block<void({block_pointer} {__strong})(float,float)>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<vp::Block<void({block_pointer} {__strong})(float,float)>,false>>(v3 + 40, i + 40);
          std::__optional_storage_base<vp::Block<void({block_pointer} {__strong})(AUVoiceIOSpeechActivityEvent)>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<vp::Block<void({block_pointer} {__strong})(AUVoiceIOSpeechActivityEvent)>,false>>(v3 + 56, i + 56);
          *(v3 + 72) = *(i + 72);
          v3 += 80;
        }
      }
    }
  }

  return v3;
}

VPPropertyItem *std::vector<VPPropertyQueue::QueueEntry>::erase(void *a1, VPPropertyItem *a2, VPPropertyItem *a3)
{
  if (a3 != a2)
  {
    v5 = a1[1];
    if (a3 == v5)
    {
      v14 = a2;
    }

    else
    {
      v6 = -*a1;
      v7 = a3 + *a1;
      v8 = a2 + *a1;
      do
      {
        *&v8[v6] = *&v7[v6];
        if (v7 != v8)
        {
          v10 = *&v7[v6 + 16];
          v9 = *&v7[v6 + 20];
          v11 = *&v7[v6 + 24];
          *&v8[v6 + 8] = *&v7[v6 + 8];
          v12 = &v8[v6 + 8];
          *(v12 + 2) = v10;
          AUPropertyItem::SetData(v12, v9, v11);
        }

        v13 = *&v8[v6 + 32];
        *&v8[v6 + 32] = *&v7[v6 + 32];
        *&v7[v6 + 32] = v13;
        std::__optional_storage_base<vp::Block<void({block_pointer} {__strong})(float,float)>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<vp::Block<void({block_pointer} {__strong})(float,float)>,false>>(&v8[v6 + 40], &v7[v6 + 40]);
        std::__optional_storage_base<vp::Block<void({block_pointer} {__strong})(AUVoiceIOSpeechActivityEvent)>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<vp::Block<void({block_pointer} {__strong})(AUVoiceIOSpeechActivityEvent)>,false>>(&v8[v6 + 56], &v7[v6 + 56]);
        v8[v6 + 72] = v7[v6 + 72];
        v7 += 80;
        v8 += 80;
      }

      while (&v7[v6] != v5);
      v14 = &v8[v6];
      v5 = a1[1];
    }

    while (v5 != v14)
    {
      v5 = (v5 - 80);
      VPPropertyItem::~VPPropertyItem(v5);
    }

    a1[1] = v14;
  }

  return a2;
}

unint64_t caulk::string_from_4cc(std::string *retstr, unsigned int __val)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = bswap32(__val);
  v7 = v3;
  if ((v3 - 32) > 0x5E || ((v3 >> 8) - 32) > 0x5E || ((v3 << 8 >> 24) - 32) > 0x5E || ((v3 >> 24) - 32) > 0x5E)
  {
    return std::to_string(retstr, __val);
  }

  v8 = 39;
  v6 = 39;
  result = strlen(&v6);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  *(&retstr->__r_.__value_.__s + 23) = result;
  if (result)
  {
    result = memcpy(retstr, &v6, result);
  }

  retstr->__r_.__value_.__s.__data_[v5] = 0;
  return result;
}

void sub_2725A1088(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void VPPropertyItem::~VPPropertyItem(VPPropertyItem *this)
{
  if (*(this + 64) == 1)
  {
    v2 = *(this + 7);
    if (v2)
    {
      *(this + 7) = 0;

      v2 = *(this + 7);
    }
  }

  if (*(this + 48) == 1)
  {
    v3 = *(this + 5);
    if (v3)
    {
      *(this + 5) = 0;

      v3 = *(this + 5);
    }
  }

  v4 = *(this + 4);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(this + 3);
  if (v5)
  {
    free(v5);
    *(this + 3) = 0;
  }

  *(this + 1) = 0;
  *(this + 2) = 0;
}

uint64_t std::__split_buffer<VPPropertyQueue::QueueEntry>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 80;
    VPPropertyItem::~VPPropertyItem((i - 80));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__optional_storage_base<vp::Block<void({block_pointer} {__strong})(float,float)>,false>::__construct[abi:ne200100]<vp::Block<void({block_pointer} {__strong})(float,float)>>(uint64_t a1, void **a2)
{
  v3 = *a2;
  *a2 = 0;
  *a1 = _Block_copy(v3);

  *(a1 + 8) = 1;
}

uint64_t std::optional<vp::Block<void({block_pointer} {__strong})(float,float)>>::~optional(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    v2 = *a1;
    if (*a1)
    {
      *a1 = 0;

      v2 = *a1;
    }
  }

  return a1;
}

void std::__destroy_at[abi:ne200100]<vp::Block<void ()(float,float)>,0>(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    *a1 = 0;

    v4 = *a1;
  }

  else
  {
    v4 = 0;
  }
}

void std::__optional_storage_base<vp::Block<void({block_pointer} {__strong})(float,float)>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<vp::Block<void({block_pointer} {__strong})(float,float)>,false>>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(a2 + 8))
  {
    if (*(a1 + 8))
    {
      std::__destroy_at[abi:ne200100]<vp::Block<void ()(float,float)>,0>(a1);
      v4 = *a2;
      v6 = *a2;
      *a2 = 0;
      *a1 = _Block_copy(v4);
    }
  }

  else if (*(a1 + 8))
  {
    v5 = *a1;
    if (*a1)
    {
      *a1 = 0;

      v5 = *a1;
    }

    *(a1 + 8) = 0;
  }

  else
  {

    std::__optional_storage_base<vp::Block<void({block_pointer} {__strong})(float,float)>,false>::__construct[abi:ne200100]<vp::Block<void({block_pointer} {__strong})(float,float)>>(a1, a2);
  }
}

void std::__optional_storage_base<vp::Block<void({block_pointer} {__strong})(AUVoiceIOSpeechActivityEvent)>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<vp::Block<void({block_pointer} {__strong})(AUVoiceIOSpeechActivityEvent)>,false>>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(a2 + 8))
  {
    if (*(a1 + 8))
    {
      std::__destroy_at[abi:ne200100]<vp::Block<void ()(AUVoiceIOSpeechActivityEvent)>,0>(a1);
      v4 = *a2;
      v6 = *a2;
      *a2 = 0;
      *a1 = _Block_copy(v4);
    }
  }

  else if (*(a1 + 8))
  {
    v5 = *a1;
    if (*a1)
    {
      *a1 = 0;

      v5 = *a1;
    }

    *(a1 + 8) = 0;
  }

  else
  {

    std::__optional_storage_base<vp::Block<void({block_pointer} {__strong})(float,float)>,false>::__construct[abi:ne200100]<vp::Block<void({block_pointer} {__strong})(float,float)>>(a1, a2);
  }
}

uint64_t VPStrategyManager::SetDownLinkVolume(VPStrategyManager *this, float a2)
{
  v26 = *MEMORY[0x277D85DE8];
  if (VPStrategyMgrScope(void)::once != -1)
  {
    dispatch_once(&VPStrategyMgrScope(void)::once, &__block_literal_global_4428);
  }

  if (VPStrategyMgrScope(void)::scope)
  {
    if (*(VPStrategyMgrScope(void)::scope + 8))
    {
      v4 = *VPStrategyMgrScope(void)::scope;
      if (v4)
      {
        v5 = v4;
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          v23 = "vpStrategyManager.mm";
          v24 = 1024;
          v25 = 472;
          _os_log_impl(&dword_2724B4000, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d ================", buf, 0x12u);
        }
      }
    }
  }

  atomic_store(LODWORD(a2), (*(this + 25) + 216));
  v6 = *(this + 25);
  v7 = *(v6 + 8);
  v20 = v6 + 8;
  v21 = 0;
  v8 = (*(v7 + 32))();
  HIBYTE(v21) = v8;
  if (v8)
  {
    if (VPStrategyMgrScope(void)::once != -1)
    {
      dispatch_once(&VPStrategyMgrScope(void)::once, &__block_literal_global_4428);
    }

    if (VPStrategyMgrScope(void)::scope)
    {
      v9 = *VPStrategyMgrScope(void)::scope;
      if (!v9)
      {
LABEL_24:
        VPStrategyManager::VPSMImplementation::CommitVolumeIfInRunningState(*(this + 25));
        goto LABEL_37;
      }
    }

    else
    {
      v9 = MEMORY[0x277D86220];
      v11 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v23 = "vpStrategyManager.mm";
      v24 = 1024;
      v25 = 478;
      _os_log_impl(&dword_2724B4000, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d state lock acquired without contention", buf, 0x12u);
    }

    goto LABEL_24;
  }

  if (VPStrategyMgrScope(void)::once != -1)
  {
    dispatch_once(&VPStrategyMgrScope(void)::once, &__block_literal_global_4428);
  }

  if (!VPStrategyMgrScope(void)::scope)
  {
    v10 = MEMORY[0x277D86220];
    v12 = MEMORY[0x277D86220];
    goto LABEL_26;
  }

  v10 = *VPStrategyMgrScope(void)::scope;
  if (v10)
  {
LABEL_26:
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v23 = "vpStrategyManager.mm";
      v24 = 1024;
      v25 = 481;
      _os_log_impl(&dword_2724B4000, v10, OS_LOG_TYPE_DEBUG, "%25s:%-5d state lock not acquired; deferring", buf, 0x12u);
    }
  }

  v14 = *(this + 25);
  v13 = *(this + 26);
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v15 = dispatch_get_global_queue(0, 0);
  v16 = v15;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3321888768;
  v18[2] = ___ZN17VPStrategyManager17SetDownLinkVolumeEf_block_invoke;
  v18[3] = &__block_descriptor_48_ea8_32c64_ZTSNSt3__18weak_ptrIN17VPStrategyManager18VPSMImplementationEEE_e5_v8__0l;
  v18[4] = v14;
  v19 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  dispatch_async(v15, v18);

  if (v19)
  {
    std::__shared_weak_count::__release_weak(v19);
  }

  if (v13)
  {
    std::__shared_weak_count::__release_weak(v13);
  }

LABEL_37:
  if (v21 == 1)
  {
    (*(*v20 + 24))(v20);
  }

  return 0;
}

void sub_2725A17C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void CADeprecated::CAMutex::Tryer::~Tryer(CADeprecated::CAMutex::Tryer *this)
{
  if (*(this + 8) == 1)
  {
    (*(**this + 24))();
  }
}

void VPStrategyManager::VPSMImplementation::CommitVolumeIfInRunningState(atomic_ullong *this)
{
  v19 = *MEMORY[0x277D85DE8];
  if (VPStrategyMgrScope(void)::once != -1)
  {
    dispatch_once(&VPStrategyMgrScope(void)::once, &__block_literal_global_4428);
  }

  if (VPStrategyMgrScope(void)::scope)
  {
    if (*(VPStrategyMgrScope(void)::scope + 8))
    {
      v2 = *VPStrategyMgrScope(void)::scope;
      if (v2)
      {
        v3 = v2;
        if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          v14 = "vpStrategyManager.mm";
          v15 = 1024;
          v16 = 455;
          _os_log_impl(&dword_2724B4000, v3, OS_LOG_TYPE_DEBUG, "%25s:%-5d ================", buf, 0x12u);
        }
      }
    }
  }

  v4 = pthread_self();
  if (!pthread_equal(v4, atomic_load_explicit(this + 3, memory_order_acquire)))
  {
    if (VPStrategyMgrScope(void)::once != -1)
    {
      dispatch_once(&VPStrategyMgrScope(void)::once, &__block_literal_global_4428);
    }

    if (VPStrategyMgrScope(void)::scope)
    {
      v5 = *VPStrategyMgrScope(void)::scope;
      if (!v5)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v5 = MEMORY[0x277D86220];
      v6 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v14 = "vpStrategyManager.mm";
      v15 = 1024;
      v16 = 456;
      _os_log_impl(&dword_2724B4000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d stateMutex must be held!", buf, 0x12u);
    }
  }

LABEL_19:
  v7 = atomic_load(this);
  if (VPStrategyMgrScope(void)::once != -1)
  {
    dispatch_once(&VPStrategyMgrScope(void)::once, &__block_literal_global_4428);
  }

  if (VPStrategyMgrScope(void)::scope)
  {
    if (*(VPStrategyMgrScope(void)::scope + 8))
    {
      v8 = *VPStrategyMgrScope(void)::scope;
      if (v8)
      {
        v9 = v8;
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          VPStrategyManager::StateAsString(__p, v7);
          v10 = v12 >= 0 ? __p : __p[0];
          *buf = 136315650;
          v14 = "vpStrategyManager.mm";
          v15 = 1024;
          v16 = 458;
          v17 = 2080;
          v18 = v10;
          _os_log_impl(&dword_2724B4000, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d state = %s", buf, 0x1Cu);
          if (v12 < 0)
          {
            operator delete(__p[0]);
          }
        }
      }
    }
  }

  if (v7 == 8)
  {
    VPStrategyManager::VPSMImplementation::CommitVolume(this);
  }
}

void ___ZN17VPStrategyManager17SetDownLinkVolumeEf_block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = *(a1 + 32);
      if (v4)
      {
        if (VPStrategyMgrScope(void)::once != -1)
        {
          dispatch_once(&VPStrategyMgrScope(void)::once, &__block_literal_global_4428);
        }

        if (VPStrategyMgrScope(void)::scope)
        {
          v5 = *VPStrategyMgrScope(void)::scope;
          if (!v5)
          {
            goto LABEL_25;
          }
        }

        else
        {
          v5 = MEMORY[0x277D86220];
          v8 = MEMORY[0x277D86220];
        }

        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          v13 = "vpStrategyManager.mm";
          v14 = 1024;
          v15 = 486;
          _os_log_impl(&dword_2724B4000, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d waiting for locks asynchronously", buf, 0x12u);
        }

LABEL_25:
        v9 = (*(v4[1] + 16))(v4 + 1);
        if (VPStrategyMgrScope(void)::once != -1)
        {
          dispatch_once(&VPStrategyMgrScope(void)::once, &__block_literal_global_4428);
        }

        if (VPStrategyMgrScope(void)::scope)
        {
          v10 = *VPStrategyMgrScope(void)::scope;
          if (!v10)
          {
LABEL_34:
            VPStrategyManager::VPSMImplementation::CommitVolumeIfInRunningState(v4);
            if (v9)
            {
              (*(v4[1] + 24))(v4 + 1);
            }

            goto LABEL_36;
          }
        }

        else
        {
          v10 = MEMORY[0x277D86220];
          v11 = MEMORY[0x277D86220];
        }

        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          v13 = "vpStrategyManager.mm";
          v14 = 1024;
          v15 = 488;
          _os_log_impl(&dword_2724B4000, v10, OS_LOG_TYPE_DEBUG, "%25s:%-5d locks acquired", buf, 0x12u);
        }

        goto LABEL_34;
      }
    }
  }

  else
  {
    v3 = 0;
  }

  if (VPStrategyMgrScope(void)::once != -1)
  {
    dispatch_once(&VPStrategyMgrScope(void)::once, &__block_literal_global_4428);
  }

  if (VPStrategyMgrScope(void)::scope)
  {
    v6 = *VPStrategyMgrScope(void)::scope;
    if (!v6)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v6 = MEMORY[0x277D86220];
    v7 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v13 = "vpStrategyManager.mm";
    v14 = 1024;
    v15 = 491;
    _os_log_impl(&dword_2724B4000, v6, OS_LOG_TYPE_INFO, "%25s:%-5d vpsm already destroyed", buf, 0x12u);
  }

LABEL_19:
  if (v3)
  {
LABEL_36:
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void sub_2725A1E2C(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_ea8_32c64_ZTSNSt3__18weak_ptrIN17VPStrategyManager18VPSMImplementationEEE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t __copy_helper_block_ea8_32c64_ZTSNSt3__18weak_ptrIN17VPStrategyManager18VPSMImplementationEEE(uint64_t result, uint64_t a2)
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

void VPStrategyManager::VPSMImplementation::CommitVolume(VPStrategyManager::VPSMImplementation *this)
{
  v23 = *MEMORY[0x277D85DE8];
  if (VPStrategyMgrScope(void)::once != -1)
  {
    dispatch_once(&VPStrategyMgrScope(void)::once, &__block_literal_global_4428);
  }

  if (VPStrategyMgrScope(void)::scope)
  {
    if (*(VPStrategyMgrScope(void)::scope + 8))
    {
      v2 = *VPStrategyMgrScope(void)::scope;
      if (v2)
      {
        v3 = v2;
        if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
        {
          v15 = 136315394;
          v16 = "vpStrategyManager.h";
          v17 = 1024;
          v18 = 185;
          _os_log_impl(&dword_2724B4000, v3, OS_LOG_TYPE_DEBUG, "%25s:%-5d ================", &v15, 0x12u);
        }
      }
    }
  }

  if (!*(this + 28))
  {
    if (VPStrategyMgrScope(void)::once != -1)
    {
      dispatch_once(&VPStrategyMgrScope(void)::once, &__block_literal_global_4428);
    }

    if (VPStrategyMgrScope(void)::scope)
    {
      v7 = *VPStrategyMgrScope(void)::scope;
      if (!v7)
      {
        return;
      }
    }

    else
    {
      v7 = MEMORY[0x277D86220];
      v12 = MEMORY[0x277D86220];
    }

    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_37;
    }

    v15 = 136315394;
    v16 = "vpStrategyManager.h";
    v17 = 1024;
    v18 = 197;
    v9 = "%25s:%-5d vp is nullptr";
    v10 = v7;
    v11 = OS_LOG_TYPE_ERROR;
    goto LABEL_32;
  }

  v4 = COERCE_FLOAT(atomic_load(this + 54));
  if (v4 != -1.0)
  {
    v5 = (*(**(this + 28) + 88))(*(this + 28), v4);
    if (!v5)
    {
      return;
    }

    v6 = v5;
    if (VPStrategyMgrScope(void)::once != -1)
    {
      dispatch_once(&VPStrategyMgrScope(void)::once, &__block_literal_global_4428);
    }

    if (VPStrategyMgrScope(void)::scope)
    {
      v7 = *VPStrategyMgrScope(void)::scope;
      if (!v7)
      {
        return;
      }
    }

    else
    {
      v7 = MEMORY[0x277D86220];
      v14 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v15 = 136315906;
      v16 = "vpStrategyManager.h";
      v17 = 1024;
      v18 = 190;
      v19 = 1024;
      v20 = v6;
      v21 = 2080;
      v22 = "CommitVolume";
      v9 = "%25s:%-5d Error code %i reported at %s";
      v10 = v7;
      v11 = OS_LOG_TYPE_ERROR;
      v13 = 34;
      goto LABEL_36;
    }

LABEL_37:

    return;
  }

  if (VPStrategyMgrScope(void)::once != -1)
  {
    dispatch_once(&VPStrategyMgrScope(void)::once, &__block_literal_global_4428);
  }

  if (VPStrategyMgrScope(void)::scope)
  {
    if (*(VPStrategyMgrScope(void)::scope + 8))
    {
      v8 = *VPStrategyMgrScope(void)::scope;
      if (v8)
      {
        v7 = v8;
        if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_37;
        }

        v15 = 136315394;
        v16 = "vpStrategyManager.h";
        v17 = 1024;
        v18 = 193;
        v9 = "%25s:%-5d no volume to set now";
        v10 = v7;
        v11 = OS_LOG_TYPE_DEBUG;
LABEL_32:
        v13 = 18;
LABEL_36:
        _os_log_impl(&dword_2724B4000, v10, v11, v9, &v15, v13);
        goto LABEL_37;
      }
    }
  }
}

uint64_t VPStrategyManager::AppendSpeakerTelemetryData(VPStrategyManager *this, const AudioBufferList *a2, uint64_t a3, const AudioTimeStamp *a4)
{
  v21 = *MEMORY[0x277D85DE8];
  v8 = *(this + 25);
  atomic_fetch_add((v8 + 324), 1u);
  if (VPStrategyManager::CheckHasVP(*(*(this + 25) + 224)) && !*(v8 + 320))
  {
    VPStrategyManager::CheckRequiredState(this, 8uLL);
    v9 = (*(**(*(this + 25) + 224) + 80))(*(*(this + 25) + 224), a2, a3, a4);
    atomic_fetch_add((v8 + 324), 0xFFFFFFFF);
    if (!v9)
    {
      return v9;
    }
  }

  else
  {
    atomic_fetch_add((v8 + 324), 0xFFFFFFFF);
    v9 = 2;
  }

  if (VPStrategyMgrScope(void)::once != -1)
  {
    dispatch_once(&VPStrategyMgrScope(void)::once, &__block_literal_global_4428);
  }

  if (VPStrategyMgrScope(void)::scope)
  {
    v10 = *VPStrategyMgrScope(void)::scope;
    if (!v10)
    {
      return v9;
    }
  }

  else
  {
    v10 = MEMORY[0x277D86220];
    v11 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v13 = 136315906;
    v14 = "vpStrategyManager.mm";
    v15 = 1024;
    v16 = 633;
    v17 = 1024;
    v18 = v9;
    v19 = 2080;
    v20 = "AppendSpeakerTelemetryData";
    _os_log_impl(&dword_2724B4000, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d Error code %i reported at %s", &v13, 0x22u);
  }

  return v9;
}

uint64_t VPStrategyManager::ProcessDownlinkAudio(VPStrategyManager *this, AudioBufferList *a2, AudioBufferList *a3, AudioBufferList *a4, AudioBufferList *a5, uint64_t a6, const AudioTimeStamp *a7)
{
  v27 = *MEMORY[0x277D85DE8];
  kdebug_trace();
  v14 = *(this + 25);
  atomic_fetch_add((v14 + 324), 1u);
  if (VPStrategyManager::CheckHasVP(*(*(this + 25) + 224)) && !*(v14 + 320))
  {
    VPStrategyManager::CheckRequiredState(this, 8uLL);
    v15 = (*(**(*(this + 25) + 224) + 72))(*(*(this + 25) + 224), a2, a3, a4, a5, a6, a7);
    atomic_fetch_add((v14 + 324), 0xFFFFFFFF);
    if (!v15)
    {
      goto LABEL_13;
    }
  }

  else
  {
    atomic_fetch_add((v14 + 324), 0xFFFFFFFF);
    v15 = 2;
  }

  if (VPStrategyMgrScope(void)::once != -1)
  {
    dispatch_once(&VPStrategyMgrScope(void)::once, &__block_literal_global_4428);
  }

  if (VPStrategyMgrScope(void)::scope)
  {
    v16 = *VPStrategyMgrScope(void)::scope;
    if (!v16)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v16 = MEMORY[0x277D86220];
    v17 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    v19 = 136315906;
    v20 = "vpStrategyManager.mm";
    v21 = 1024;
    v22 = 623;
    v23 = 1024;
    v24 = v15;
    v25 = 2080;
    v26 = "ProcessDownlinkAudio";
    _os_log_impl(&dword_2724B4000, v16, OS_LOG_TYPE_ERROR, "%25s:%-5d Error code %i reported at %s", &v19, 0x22u);
  }

LABEL_13:
  kdebug_trace();
  return v15;
}

uint64_t VPStrategyManager::Process(VPStrategyManager *this, const AudioBufferList *a2, const AudioTimeStamp *a3, AudioBufferList *a4, AudioTimeStamp *a5, unsigned int *a6, void *a7, unsigned int *a8, AudioStreamPacketDescription *a9)
{
  v30 = *MEMORY[0x277D85DE8];
  kdebug_trace();
  v17 = *(this + 25);
  atomic_fetch_add((v17 + 324), 1u);
  if (VPStrategyManager::CheckHasVP(*(*(this + 25) + 224)) && !*(v17 + 320))
  {
    VPStrategyManager::CheckRequiredState(this, 8uLL);
    v18 = (*(**(*(this + 25) + 224) + 64))(*(*(this + 25) + 224), a2, a3, a4, a5, a6, a7, a8, a9);
    if (!v18)
    {
      goto LABEL_13;
    }
  }

  else
  {
    a4->mBuffers[0].mDataByteSize = 0;
    *a6 = 0;
    v18 = 2;
  }

  if (VPStrategyMgrScope(void)::once != -1)
  {
    dispatch_once(&VPStrategyMgrScope(void)::once, &__block_literal_global_4428);
  }

  if (VPStrategyMgrScope(void)::scope)
  {
    v19 = *VPStrategyMgrScope(void)::scope;
    if (!v19)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v19 = MEMORY[0x277D86220];
    v20 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315906;
    v23 = "vpStrategyManager.mm";
    v24 = 1024;
    v25 = 611;
    v26 = 1024;
    v27 = v18;
    v28 = 2080;
    v29 = "Process";
    _os_log_impl(&dword_2724B4000, v19, OS_LOG_TYPE_ERROR, "%25s:%-5d Error code %i reported at %s", buf, 0x22u);
  }

LABEL_13:
  kdebug_trace();
  atomic_fetch_add((v17 + 324), 0xFFFFFFFF);
  return v18;
}

uint64_t VPStrategyManager::GetProperty(VPStrategyManager *this, uint64_t a2, void *a3, uint64_t a4, unsigned int *a5)
{
  v28 = *MEMORY[0x277D85DE8];
  if (VPStrategyMgrScope(void)::once != -1)
  {
    dispatch_once(&VPStrategyMgrScope(void)::once, &__block_literal_global_4428);
  }

  if (VPStrategyMgrScope(void)::scope)
  {
    if (*(VPStrategyMgrScope(void)::scope + 8))
    {
      v10 = *VPStrategyMgrScope(void)::scope;
      if (v10)
      {
        v11 = v10;
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          *&buf[4] = "vpStrategyManager.mm";
          v22 = 1024;
          v23 = 553;
          _os_log_impl(&dword_2724B4000, v11, OS_LOG_TYPE_DEBUG, "%25s:%-5d ================", buf, 0x12u);
        }
      }
    }
  }

  CADeprecated::CAAtomicSignaler::PersistentTryer::PersistentTryer(&v20, *(this + 25) + 320, 0);
  if (VPStrategyMgrScope(void)::once != -1)
  {
    dispatch_once(&VPStrategyMgrScope(void)::once, &__block_literal_global_4428);
  }

  if (VPStrategyMgrScope(void)::scope)
  {
    v12 = *VPStrategyMgrScope(void)::scope;
    if (!v12)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v12 = MEMORY[0x277D86220];
    v13 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    *&buf[4] = "vpStrategyManager.mm";
    v22 = 1024;
    v23 = 556;
    v24 = 1024;
    v25 = a2;
    _os_log_impl(&dword_2724B4000, v12, OS_LOG_TYPE_DEBUG, "%25s:%-5d Getting property with ID: %u", buf, 0x18u);
  }

LABEL_18:
  if (VPStrategyMgrScope(void)::once != -1)
  {
    dispatch_once(&VPStrategyMgrScope(void)::once, &__block_literal_global_4428);
  }

  if (VPStrategyMgrScope(void)::scope)
  {
    if (*(VPStrategyMgrScope(void)::scope + 8))
    {
      v14 = *VPStrategyMgrScope(void)::scope;
      if (v14)
      {
        v15 = v14;
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          *&buf[4] = "vpStrategyManager.h";
          v22 = 1024;
          v23 = 142;
          _os_log_impl(&dword_2724B4000, v15, OS_LOG_TYPE_DEBUG, "%25s:%-5d ================", buf, 0x12u);
        }
      }
    }
  }

  CADeprecated::CAAtomicSignaler::PersistentTryer::PersistentTryer(buf, *(this + 25) + 320, 0);
  if (VPStrategyManager::CheckHasVP(*(*(this + 25) + 224)))
  {
    v16 = (*(**(*(this + 25) + 224) + 48))(*(*(this + 25) + 224), a2, a3, a4, a5);
    atomic_fetch_add((*buf + 4), 0xFFFFFFFF);
    if (!v16)
    {
      goto LABEL_39;
    }
  }

  else
  {
    atomic_fetch_add((*buf + 4), 0xFFFFFFFF);
    v16 = 2;
  }

  if (VPStrategyMgrScope(void)::once != -1)
  {
    dispatch_once(&VPStrategyMgrScope(void)::once, &__block_literal_global_4428);
  }

  if (VPStrategyMgrScope(void)::scope)
  {
    v17 = *VPStrategyMgrScope(void)::scope;
    if (!v17)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v17 = MEMORY[0x277D86220];
    v18 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315906;
    *&buf[4] = "vpStrategyManager.mm";
    v22 = 1024;
    v23 = 558;
    v24 = 1024;
    v25 = v16;
    v26 = 2080;
    v27 = "GetProperty";
    _os_log_impl(&dword_2724B4000, v17, OS_LOG_TYPE_ERROR, "%25s:%-5d Error code %i reported at %s", buf, 0x22u);
  }

LABEL_39:
  atomic_fetch_add((v20 + 4), 0xFFFFFFFF);
  return v16;
}

uint64_t VPStrategyManager::InitializeSpeakerTelemetryInput(unint64_t **this, const AudioStreamBasicDescription *a2, uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  if (VPStrategyMgrScope(void)::once != -1)
  {
    dispatch_once(&VPStrategyMgrScope(void)::once, &__block_literal_global_4428);
  }

  if (VPStrategyMgrScope(void)::scope)
  {
    if (*(VPStrategyMgrScope(void)::scope + 8))
    {
      v6 = *VPStrategyMgrScope(void)::scope;
      if (v6)
      {
        v7 = v6;
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
        {
          *v11 = 136315394;
          *&v11[4] = "vpStrategyManager.mm";
          v12 = 1024;
          v13 = 502;
          _os_log_impl(&dword_2724B4000, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d ================", v11, 0x12u);
        }
      }
    }
  }

  if (VPStrategyMgrScope(void)::once != -1)
  {
    dispatch_once(&VPStrategyMgrScope(void)::once, &__block_literal_global_4428);
  }

  if (VPStrategyMgrScope(void)::scope)
  {
    if (*(VPStrategyMgrScope(void)::scope + 8))
    {
      v8 = *VPStrategyMgrScope(void)::scope;
      if (v8)
      {
        v9 = v8;
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          *v11 = 136315394;
          *&v11[4] = "vpStrategyManager.h";
          v12 = 1024;
          v13 = 131;
          _os_log_impl(&dword_2724B4000, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d ================", v11, 0x12u);
        }
      }
    }
  }

  VPStrategyManager::CheckRequiredState(this, 4uLL);
  CADeprecated::CAAtomicSignaler::PersistentTryer::PersistentTryer(v11, (this[25] + 40), 0);
  if (VPStrategyManager::CheckHasVP(this[25][28]))
  {
    result = (*(*this[25][28] + 40))(this[25][28], a2, a3);
  }

  else
  {
    result = 2;
  }

  atomic_fetch_add((*v11 + 4), 0xFFFFFFFF);
  return result;
}

uint64_t VPStrategyManager::InitializeDownlinkProcessing(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v20 = *MEMORY[0x277D85DE8];
  v9 = a5;
  if (VPStrategyMgrScope(void)::once != -1)
  {
    dispatch_once(&VPStrategyMgrScope(void)::once, &__block_literal_global_4428);
  }

  if (VPStrategyMgrScope(void)::scope)
  {
    if (*(VPStrategyMgrScope(void)::scope + 8))
    {
      v10 = *VPStrategyMgrScope(void)::scope;
      if (v10)
      {
        v11 = v10;
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          *&buf[4] = "vpStrategyManager.mm";
          v18 = 1024;
          v19 = 441;
          _os_log_impl(&dword_2724B4000, v11, OS_LOG_TYPE_DEBUG, "%25s:%-5d ================", buf, 0x12u);
        }
      }
    }
  }

  if (VPStrategyMgrScope(void)::once != -1)
  {
    dispatch_once(&VPStrategyMgrScope(void)::once, &__block_literal_global_4428);
  }

  if (VPStrategyMgrScope(void)::scope)
  {
    if (*(VPStrategyMgrScope(void)::scope + 8))
    {
      v12 = *VPStrategyMgrScope(void)::scope;
      if (v12)
      {
        v13 = v12;
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          *&buf[4] = "vpStrategyManager.h";
          v18 = 1024;
          v19 = 131;
          _os_log_impl(&dword_2724B4000, v13, OS_LOG_TYPE_DEBUG, "%25s:%-5d ================", buf, 0x12u);
        }
      }
    }
  }

  VPStrategyManager::CheckRequiredState(a1, 4uLL);
  CADeprecated::CAAtomicSignaler::PersistentTryer::PersistentTryer(buf, *(a1 + 200) + 320, 0);
  if (VPStrategyManager::CheckHasVP(*(*(a1 + 200) + 224)))
  {
    v14 = (*(**(*(a1 + 200) + 224) + 32))(*(*(a1 + 200) + 224), a2, a3, a4, v9);
  }

  else
  {
    v14 = 2;
  }

  atomic_fetch_add((*buf + 4), 0xFFFFFFFF);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = ___ZN17VPStrategyManager28InitializeDownlinkProcessingERK27AudioStreamBasicDescriptionjS2_U13block_pointerFiP15AudioBufferListP14AudioTimeStampPjE_block_invoke;
  v16[3] = &__block_descriptor_40_e5_v8__0l;
  v16[4] = a1;
  VPStrategyManager::SetState(a1, 8uLL, v16);

  return v14;
}

void sub_2725A31A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  atomic_fetch_add((a15 + 4), 0xFFFFFFFF);

  _Unwind_Resume(a1);
}

void ___ZN17VPStrategyManager28InitializeDownlinkProcessingERK27AudioStreamBasicDescriptionjS2_U13block_pointerFiP15AudioBufferListP14AudioTimeStampPjE_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  if (VPStrategyMgrScope(void)::once != -1)
  {
    dispatch_once(&VPStrategyMgrScope(void)::once, &__block_literal_global_4428);
  }

  if (VPStrategyMgrScope(void)::scope)
  {
    v2 = *VPStrategyMgrScope(void)::scope;
    if (!v2)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v2 = MEMORY[0x277D86220];
    v3 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v4 = 136315394;
    v5 = "vpStrategyManager.mm";
    v6 = 1024;
    v7 = 446;
    _os_log_impl(&dword_2724B4000, v2, OS_LOG_TYPE_DEBUG, "%25s:%-5d updating volume", &v4, 0x12u);
  }

LABEL_10:
  VPStrategyManager::VPSMImplementation::CommitVolume(*(v1 + 200));
}

void VPStrategyManager::SetState(uint64_t a1, unint64_t a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (VPStrategyMgrScope(void)::once != -1)
  {
    dispatch_once(&VPStrategyMgrScope(void)::once, &__block_literal_global_4428);
  }

  if (VPStrategyMgrScope(void)::scope)
  {
    if (*(VPStrategyMgrScope(void)::scope + 8))
    {
      v6 = *VPStrategyMgrScope(void)::scope;
      if (v6)
      {
        v7 = v6;
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          v20 = "vpStrategyManager.h";
          v21 = 1024;
          v22 = 170;
          _os_log_impl(&dword_2724B4000, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d ================", buf, 0x12u);
        }
      }
    }
  }

  v8 = *(a1 + 200);
  v10 = *(v8 + 8);
  v9 = v8 + 8;
  v17 = v9;
  v11 = (*(v10 + 16))(v9);
  v18 = v11;
  v5[2](v5);
  atomic_store(a2, *(a1 + 200));
  if (VPStrategyMgrScope(void)::once != -1)
  {
    dispatch_once(&VPStrategyMgrScope(void)::once, &__block_literal_global_4428);
  }

  if (VPStrategyMgrScope(void)::scope)
  {
    if (*(VPStrategyMgrScope(void)::scope + 8))
    {
      v12 = *VPStrategyMgrScope(void)::scope;
      if (v12)
      {
        v13 = v12;
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          VPStrategyManager::StateAsString(__p, a2);
          v14 = v16 >= 0 ? __p : __p[0];
          *buf = 136315650;
          v20 = "vpStrategyManager.h";
          v21 = 1024;
          v22 = 174;
          v23 = 2080;
          v24 = v14;
          _os_log_impl(&dword_2724B4000, v13, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s", buf, 0x1Cu);
          if (v16 < 0)
          {
            operator delete(__p[0]);
          }
        }
      }
    }
  }

  if (v11)
  {
    (*(*v9 + 24))(v9);
  }
}

void sub_2725A3564(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  CADeprecated::CAMutex::Locker::~Locker(va);
  _Unwind_Resume(a1);
}

uint64_t VPStrategyManager::InitializeOutput(unint64_t **this, AudioStreamBasicDescription *a2, AudioChannelLayout *a3, unsigned int *a4, unsigned int *a5, unsigned int *a6)
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = a3;
  if (VPStrategyMgrScope(void)::once != -1)
  {
    dispatch_once(&VPStrategyMgrScope(void)::once, &__block_literal_global_4428);
  }

  if (VPStrategyMgrScope(void)::scope)
  {
    if (*(VPStrategyMgrScope(void)::scope + 8))
    {
      v11 = *VPStrategyMgrScope(void)::scope;
      if (v11)
      {
        v12 = v11;
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          v16 = "vpStrategyManager.mm";
          v17 = 1024;
          v18 = 423;
          _os_log_impl(&dword_2724B4000, v12, OS_LOG_TYPE_DEBUG, "%25s:%-5d ================", buf, 0x12u);
        }
      }
    }
  }

  return VPStrategyManager::RedirectWrapper_Initializing<AudioStreamBasicDescription &,AudioChannelLayout *,unsigned int &,unsigned int &,unsigned int &,AudioStreamBasicDescription &,AudioChannelLayout *&,unsigned int &,unsigned int &,unsigned int &>(this, VoiceProcessorInterface::InitializeOutput, 0, a2, &v14, a4, a5, a6);
}

uint64_t VPStrategyManager::InitializeHWInput(unint64_t **this, const AudioStreamBasicDescription *a2, const AudioChannelLayout *a3, unsigned int a4, AudioObjectID a5, unsigned int a6, unsigned int *a7, const AudioStreamBasicDescription *a8, const AudioChannelLayout *a9, uint64_t a10, unsigned int a11, unsigned int *a12)
{
  v99 = *MEMORY[0x277D85DE8];
  if (VPStrategyMgrScope(void)::once != -1)
  {
    dispatch_once(&VPStrategyMgrScope(void)::once, &__block_literal_global_4428);
  }

  if (VPStrategyMgrScope(void)::scope)
  {
    if (*(VPStrategyMgrScope(void)::scope + 8))
    {
      v13 = *VPStrategyMgrScope(void)::scope;
      if (v13)
      {
        v14 = v13;
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          v94 = "vpStrategyManager.mm";
          v95 = 1024;
          v96 = 361;
          _os_log_impl(&dword_2724B4000, v14, OS_LOG_TYPE_DEBUG, "%25s:%-5d ================", buf, 0x12u);
        }
      }
    }
  }

  VPStrategyManager::CheckRequiredState(this, 0xAuLL);
  VPStrategyManager::SetState(this, 4uLL, &__block_literal_global_13);
  v15 = this[25];
  v16 = v15[15];
  v90 = v15 + 15;
  v91 = (*(v16 + 16))();
  v17 = this[25];
  atomic_fetch_add(v17 + 52, 1u);
  while (*(v17 + 53))
  {
    usleep(0x1F4u);
  }

  for (i = 0; i != 6; ++i)
  {
    v19 = this[25];
    v20 = VPStrategyManager::InitializeHWInput(AudioStreamBasicDescription const&,AudioChannelLayout const*,unsigned int,unsigned int,unsigned int,unsigned int const*,AudioStreamBasicDescription const&,AudioChannelLayout const*,unsigned int,unsigned int,unsigned int,unsigned int const*)::propertiesToClear[i];
    v21 = std::remove_if[abi:ne200100]<std::__wrap_iter<VPPropertyQueue::QueueEntry *>,VPPropertyQueue::DoErase::{lambda(std::__wrap_iter<VPPropertyQueue::QueueEntry *> &)#1}>(v19[12], v19[13], v20);
    v22 = v19[13];
    std::vector<VPPropertyQueue::QueueEntry>::erase(v19 + 12, v21, v22);
    if (v22 == v21)
    {
      continue;
    }

    if (VPStrategyMgrScope(void)::once != -1)
    {
      dispatch_once(&VPStrategyMgrScope(void)::once, &__block_literal_global_4428);
    }

    if (VPStrategyMgrScope(void)::scope)
    {
      v23 = *VPStrategyMgrScope(void)::scope;
      if (!v23)
      {
        continue;
      }
    }

    else
    {
      v24 = MEMORY[0x277D86220];
      v25 = MEMORY[0x277D86220];
      v23 = v24;
    }

    v26 = v23;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      caulk::string_from_4cc(&v92, v20);
      v27 = &v92;
      if ((v92.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v27 = v92.__r_.__value_.__r.__words[0];
      }

      v28 = 0xCCCCCCCCCCCCCCCDLL * ((v19[13] - v19[12]) >> 4);
      *buf = 136316162;
      v94 = "vpPropertyQueue.h";
      v95 = 1024;
      v96 = 31;
      v97 = 1024;
      *v98 = v20;
      *&v98[4] = 2080;
      *&v98[6] = v27;
      *&v98[14] = 2048;
      *&v98[16] = v28;
      _os_log_impl(&dword_2724B4000, v26, OS_LOG_TYPE_DEBUG, "%25s:%-5d removed property 0x%x %s (size=%lu)", buf, 0x2Cu);
      if (SHIBYTE(v92.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v92.__r_.__value_.__l.__data_);
      }
    }
  }

  atomic_fetch_add(v17 + 52, 0xFFFFFFFF);
  if (v91 == 1)
  {
    (*(*v90 + 24))(v90);
  }

  CADeprecated::CAAtomicSignaler::PersistentTryer::PersistentTryer(&v89, (this[25] + 26), 0);
  v29 = this[25][29];
  v92.__r_.__value_.__r.__words[0] = (this[25] + 29);
  v92.__r_.__value_.__s.__data_[8] = (*(v29 + 16))();
  v30 = this[25];
  atomic_fetch_add(v30 + 80, 1u);
  while (*(v30 + 81))
  {
    usleep(0x1F4u);
  }

  v31 = 0;
  if (a6 && a7)
  {
    v31 = *a7;
  }

  v32 = 0;
  if (a11 && a12)
  {
    v32 = *a12;
  }

  v85 = v30;
  updated = VPStrategyManager::UpdateVPVersion(this, a5, v31, HIDWORD(a10), v32);
  if (updated)
  {
    if (VPStrategyMgrScope(void)::once != -1)
    {
      dispatch_once(&VPStrategyMgrScope(void)::once, &__block_literal_global_4428);
    }

    if (VPStrategyMgrScope(void)::scope)
    {
      v34 = *VPStrategyMgrScope(void)::scope;
      if (!v34)
      {
        goto LABEL_48;
      }
    }

    else
    {
      v34 = MEMORY[0x277D86220];
      v35 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v94 = "vpStrategyManager.mm";
      v95 = 1024;
      v96 = 396;
      v97 = 1024;
      *v98 = updated;
      *&v98[4] = 2080;
      *&v98[6] = "InitializeHWInput";
      _os_log_impl(&dword_2724B4000, v34, OS_LOG_TYPE_ERROR, "%25s:%-5d Error code %i reported at %s", buf, 0x22u);
    }
  }

LABEL_48:
  v84 = updated;
  v36 = this[25];
  v37 = v36[12];
  v38 = v36[13];
  if (v37 == v38)
  {
    v39 = 0;
    v42 = 0;
  }

  else
  {
    v39 = 0;
    v40 = 0;
    v41 = 0;
    do
    {
      if (*(v37 + 72))
      {
        v42 = v40;
      }

      else
      {
        v43 = (v41 - v39) >> 3;
        v44 = v43 + 1;
        if ((v43 + 1) >> 61)
        {
          std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
        }

        if (-v39 >> 2 > v44)
        {
          v44 = -v39 >> 2;
        }

        if (-v39 >= 0x7FFFFFFFFFFFFFF8)
        {
          v45 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v45 = v44;
        }

        if (v45)
        {
          if (!(v45 >> 61))
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v46 = (8 * v43);
        v47 = v40 - v39;
        v48 = (v46 - (v40 - v39));
        *v46 = v37;
        v42 = v46 + 1;
        memcpy(v48, v39, v47);
        if (v39)
        {
          operator delete(v39);
        }

        v39 = v48;
        v41 = v42;
      }

      v37 += 80;
      v40 = v42;
    }

    while (v37 != v38);
  }

  if (VPStrategyMgrScope(void)::once != -1)
  {
    dispatch_once(&VPStrategyMgrScope(void)::once, &__block_literal_global_4428);
  }

  if (VPStrategyMgrScope(void)::scope)
  {
    v49 = *VPStrategyMgrScope(void)::scope;
    if (!v49)
    {
      goto LABEL_76;
    }
  }

  else
  {
    v49 = MEMORY[0x277D86220];
    v50 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
  {
    v51 = 0xCCCCCCCCCCCCCCCDLL * ((v36[13] - v36[12]) >> 4);
    *buf = 136315906;
    v94 = "vpPropertyQueue.h";
    v95 = 1024;
    v96 = 55;
    v97 = 2048;
    *v98 = (v42 - v39) >> 3;
    *&v98[8] = 2048;
    *&v98[10] = v51;
    _os_log_impl(&dword_2724B4000, v49, OS_LOG_TYPE_DEBUG, "%25s:%-5d got %lu unset properties (size=%lu)", buf, 0x26u);
  }

LABEL_76:
  if (v42 != v39)
  {
    v52 = 0;
    v53 = (v42 - v39) >> 3;
    v54 = MEMORY[0x277D86220];
    v55 = 1;
    do
    {
      v56 = *(v39 + 8 * v52);
      if (VPStrategyMgrScope(void)::once != -1)
      {
        dispatch_once(&VPStrategyMgrScope(void)::once, &__block_literal_global_4428);
      }

      if (VPStrategyMgrScope(void)::scope)
      {
        if (*(VPStrategyMgrScope(void)::scope + 8))
        {
          v57 = *VPStrategyMgrScope(void)::scope;
          if (v57)
          {
            v58 = v57;
            if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136315394;
              v94 = "vpStrategyManager.mm";
              v95 = 1024;
              v96 = 277;
              _os_log_impl(&dword_2724B4000, v58, OS_LOG_TYPE_DEBUG, "%25s:%-5d ================", buf, 0x12u);
            }
          }
        }
      }

      if (!VPStrategyManager::CheckHasVP(this[25][28]))
      {
        goto LABEL_135;
      }

      if (!v56)
      {
        if (VPStrategyMgrScope(void)::once != -1)
        {
          dispatch_once(&VPStrategyMgrScope(void)::once, &__block_literal_global_4428);
        }

        if (!VPStrategyMgrScope(void)::scope)
        {
          v60 = v54;
          v66 = v54;
LABEL_109:
          if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v94 = "vpStrategyManager.mm";
            v95 = 1024;
            v96 = 294;
            _os_log_impl(&dword_2724B4000, v60, OS_LOG_TYPE_ERROR, "%25s:%-5d null pointer for property!", buf, 0x12u);
          }

          goto LABEL_135;
        }

        v60 = *VPStrategyMgrScope(void)::scope;
        if (v60)
        {
          goto LABEL_109;
        }

        goto LABEL_135;
      }

      if (VPStrategyMgrScope(void)::once != -1)
      {
        dispatch_once(&VPStrategyMgrScope(void)::once, &__block_literal_global_4428);
      }

      if (VPStrategyMgrScope(void)::scope)
      {
        v59 = *VPStrategyMgrScope(void)::scope;
        if (!v59)
        {
          goto LABEL_102;
        }
      }

      else
      {
        v59 = v54;
        v61 = v54;
      }

      if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
      {
        v62 = *v56;
        *buf = 136315650;
        v94 = "vpStrategyManager.mm";
        v95 = 1024;
        v96 = 284;
        v97 = 1024;
        *v98 = v62;
        _os_log_impl(&dword_2724B4000, v59, OS_LOG_TYPE_DEBUG, "%25s:%-5d setting property 0x%x", buf, 0x18u);
      }

LABEL_102:
      v63 = this[25];
      v64 = pthread_self();
      if (!pthread_equal(v64, atomic_load_explicit(v63 + 31, memory_order_acquire)))
      {
        if (VPStrategyMgrScope(void)::once != -1)
        {
          dispatch_once(&VPStrategyMgrScope(void)::once, &__block_literal_global_4428);
        }

        if (!VPStrategyMgrScope(void)::scope)
        {
          v65 = v54;
          v67 = v54;
LABEL_113:
          if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v94 = "vpStrategyManager.mm";
            v95 = 1024;
            v96 = 285;
            _os_log_impl(&dword_2724B4000, v65, OS_LOG_TYPE_ERROR, "%25s:%-5d vpLock must be held!", buf, 0x12u);
          }

          goto LABEL_116;
        }

        v65 = *VPStrategyMgrScope(void)::scope;
        if (v65)
        {
          goto LABEL_113;
        }
      }

LABEL_116:
      v68 = *v56;
      if (v68 == 1684305512)
      {
        if (*(v56 + 48) != 1)
        {
LABEL_164:
          std::__throw_bad_optional_access[abi:ne200100]();
        }

        v69 = _Block_copy(*(v56 + 5));
      }

      else if (v68 == 1836278117)
      {
        if ((v56[16] & 1) == 0)
        {
          goto LABEL_164;
        }

        v69 = _Block_copy(*(v56 + 7));
      }

      else if (VPPropertyItem::IsPropertyCFType(v68))
      {
        v69 = *(v56 + 4);
      }

      else
      {
        v69 = *(v56 + 3);
      }

      v90 = v69;
      v70 = (*(*this[25][28] + 56))();
      if (!v70)
      {
        goto LABEL_135;
      }

      if (VPStrategyMgrScope(void)::once != -1)
      {
        dispatch_once(&VPStrategyMgrScope(void)::once, &__block_literal_global_4428);
      }

      if (!VPStrategyMgrScope(void)::scope)
      {
        v71 = v54;
        v72 = v54;
LABEL_132:
        if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315906;
          v94 = "vpStrategyManager.mm";
          v95 = 1024;
          v96 = 292;
          v97 = 1024;
          *v98 = v70;
          *&v98[4] = 2080;
          *&v98[6] = "DoSetProperty";
          _os_log_impl(&dword_2724B4000, v71, OS_LOG_TYPE_ERROR, "%25s:%-5d Error code %i reported at %s", buf, 0x22u);
        }

        goto LABEL_135;
      }

      v71 = *VPStrategyMgrScope(void)::scope;
      if (v71)
      {
        goto LABEL_132;
      }

LABEL_135:
      v52 = v55;
    }

    while (v53 > v55++);
  }

  VPPropertyQueue::AssignIsSetOnVPStateForAllProperties((this[25] + 12), 1);
  if (VPStrategyManager::CheckHasVP(this[25][28]))
  {
    v74 = (*(*this[25][28] + 16))(this[25][28], a2, 0, a4, a5, a6, a7, a8, 0, a10, a11, a12);
  }

  else
  {
    v74 = 2;
  }

  v75 = v74 | v84;
  if (v75)
  {
    if (VPStrategyMgrScope(void)::once != -1)
    {
      dispatch_once(&VPStrategyMgrScope(void)::once, &__block_literal_global_4428);
    }

    if (VPStrategyMgrScope(void)::scope)
    {
      v76 = *VPStrategyMgrScope(void)::scope;
      if (!v76)
      {
        goto LABEL_149;
      }
    }

    else
    {
      v76 = MEMORY[0x277D86220];
      v77 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v94 = "vpStrategyManager.mm";
      v95 = 1024;
      v96 = 413;
      v97 = 1024;
      *v98 = v75;
      *&v98[4] = 2080;
      *&v98[6] = "InitializeHWInput";
      _os_log_impl(&dword_2724B4000, v76, OS_LOG_TYPE_ERROR, "%25s:%-5d Error code %i reported at %s", buf, 0x22u);
    }
  }

LABEL_149:
  if (VPStrategyMgrScope(void)::once != -1)
  {
    dispatch_once(&VPStrategyMgrScope(void)::once, &__block_literal_global_4428);
  }

  if (VPStrategyMgrScope(void)::scope)
  {
    v78 = *VPStrategyMgrScope(void)::scope;
    if (!v78)
    {
      goto LABEL_158;
    }
  }

  else
  {
    v78 = MEMORY[0x277D86220];
    v79 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v78, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v94 = "vpStrategyManager.mm";
    v95 = 1024;
    v96 = 415;
    _os_log_impl(&dword_2724B4000, v78, OS_LOG_TYPE_DEBUG, "%25s:%-5d Finished initializing the VP using cached data", buf, 0x12u);
  }

LABEL_158:
  if (v39)
  {
    operator delete(v39);
  }

  atomic_fetch_add(v85 + 80, 0xFFFFFFFF);
  if (v92.__r_.__value_.__s.__data_[8] == 1)
  {
    (*(*v92.__r_.__value_.__l.__data_ + 24))(v92.__r_.__value_.__r.__words[0]);
  }

  atomic_fetch_add((v89 + 4), 0xFFFFFFFF);
  return v75;
}

void sub_2725A4688(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t VPStrategyManager::UpdateVPVersion(VPStrategyManager *this, AudioObjectID a2, unsigned int a3, AudioObjectID a4, unsigned int a5)
{
  v60 = *MEMORY[0x277D85DE8];
  if (VPStrategyMgrScope(void)::once != -1)
  {
    dispatch_once(&VPStrategyMgrScope(void)::once, &__block_literal_global_4428);
  }

  if (VPStrategyMgrScope(void)::scope)
  {
    if (*(VPStrategyMgrScope(void)::scope + 8))
    {
      v10 = *VPStrategyMgrScope(void)::scope;
      if (v10)
      {
        v11 = v10;
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          *&buf[4] = "vpStrategyManager.mm";
          v55 = 1024;
          v56 = 302;
          _os_log_impl(&dword_2724B4000, v11, OS_LOG_TYPE_DEBUG, "%25s:%-5d ================", buf, 0x12u);
        }
      }
    }
  }

  v12 = *(this + 25);
  v13 = pthread_self();
  if (!pthread_equal(v13, atomic_load_explicit((v12 + 248), memory_order_acquire)))
  {
    if (VPStrategyMgrScope(void)::once != -1)
    {
      dispatch_once(&VPStrategyMgrScope(void)::once, &__block_literal_global_4428);
    }

    if (VPStrategyMgrScope(void)::scope)
    {
      v14 = *VPStrategyMgrScope(void)::scope;
      if (!v14)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v14 = MEMORY[0x277D86220];
      v15 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "vpStrategyManager.mm";
      v55 = 1024;
      v56 = 304;
      _os_log_impl(&dword_2724B4000, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d vpLock must be held!", buf, 0x12u);
    }
  }

LABEL_19:
  if (VPStrategyMgrScope(void)::once != -1)
  {
    dispatch_once(&VPStrategyMgrScope(void)::once, &__block_literal_global_4428);
  }

  if (VPStrategyMgrScope(void)::scope)
  {
    v16 = *VPStrategyMgrScope(void)::scope;
    if (!v16)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v16 = MEMORY[0x277D86220];
    v17 = MEMORY[0x277D86220];
  }

  v18 = v16;
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    CAX4CCString::CAX4CCString(v53, a3);
    CAX4CCString::CAX4CCString(v52, a5);
    *buf = 136315906;
    *&buf[4] = "vpStrategyManager.mm";
    v55 = 1024;
    v56 = 307;
    v57 = 2080;
    *v58 = v53;
    *&v58[8] = 2080;
    v59 = v52;
    _os_log_impl(&dword_2724B4000, v18, OS_LOG_TYPE_DEBUG, "%25s:%-5d ref port type %s, mic port type %s", buf, 0x26u);
  }

LABEL_28:
  if (*(this + 220) != 1 || (VoiceProcessorVersion = *(this + 54)) == 0)
  {
    VoiceProcessorVersion = GetVoiceProcessorVersion((this + 8), a2, a3, a4, a5);
  }

  v20 = *(*(this + 25) + 224);
  if (!v20)
  {
    goto LABEL_81;
  }

  v21 = (*(*v20 + 112))(v20);
  if (v21 == VoiceProcessorVersion)
  {
    goto LABEL_79;
  }

  if (VPStrategyMgrScope(void)::once != -1)
  {
    dispatch_once(&VPStrategyMgrScope(void)::once, &__block_literal_global_4428);
  }

  if (VPStrategyMgrScope(void)::scope)
  {
    v22 = *VPStrategyMgrScope(void)::scope;
    if (!v22)
    {
      goto LABEL_42;
    }
  }

  else
  {
    v22 = MEMORY[0x277D86220];
    v23 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    *&buf[4] = "vpStrategyManager.mm";
    v55 = 1024;
    v56 = 325;
    v57 = 1024;
    *v58 = v21;
    *&v58[4] = 1024;
    *&v58[6] = VoiceProcessorVersion;
    _os_log_impl(&dword_2724B4000, v22, OS_LOG_TYPE_INFO, "%25s:%-5d Switching from VoiceProcessorV%u to VoiceProcessorV%u", buf, 0x1Eu);
  }

LABEL_42:
  v24 = *(this + 25);
  v25 = *(v24 + 336);
  if (!v25)
  {
LABEL_49:
    operator new();
  }

  v26 = *(v24 + 336);
  while (1)
  {
    while (1)
    {
      v27 = v26;
      v28 = *(v26 + 32);
      if (v21 >= v28)
      {
        break;
      }

      v26 = *v27;
      if (!*v27)
      {
        goto LABEL_49;
      }
    }

    if (v28 >= v21)
    {
      break;
    }

    v26 = v27[1];
    if (!v26)
    {
      goto LABEL_49;
    }
  }

  v29 = v24 + 336;
  do
  {
    v30 = *(v25 + 32);
    v31 = v30 >= VoiceProcessorVersion;
    v32 = v30 < VoiceProcessorVersion;
    if (v31)
    {
      v29 = v25;
    }

    v25 = *(v25 + 8 * v32);
  }

  while (v25);
  if (v29 != v24 + 336 && VoiceProcessorVersion >= *(v29 + 32))
  {
    if (VPStrategyMgrScope(void)::once != -1)
    {
      dispatch_once(&VPStrategyMgrScope(void)::once, &__block_literal_global_4428);
    }

    if (VPStrategyMgrScope(void)::scope)
    {
      v33 = *VPStrategyMgrScope(void)::scope;
      if (!v33)
      {
LABEL_66:
        v35 = *(this + 25);
        v36 = *(v29 + 40);
        *(v29 + 40) = 0;
        v37 = *(v35 + 224);
        *(v35 + 224) = v36;
        if (v37)
        {
          (*(*v37 + 8))(v37);
          v35 = *(this + 25);
        }

        VPPropertyQueue::AssignIsSetOnVPStateForAllProperties((v35 + 96), 0);
        v38 = *(this + 25);
        v39 = *(v29 + 8);
        if (v39)
        {
          do
          {
            v40 = v39;
            v39 = *v39;
          }

          while (v39);
        }

        else
        {
          v41 = v29;
          do
          {
            v40 = v41[2];
            v42 = *v40 == v41;
            v41 = v40;
          }

          while (!v42);
        }

        if (v38[41] == v29)
        {
          v38[41] = v40;
        }

        v43 = v38[42];
        --v38[43];
        std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v43, v29);
        v44 = *(v29 + 40);
        *(v29 + 40) = 0;
        if (v44)
        {
          (*(*v44 + 8))(v44);
        }

        operator delete(v29);
        goto LABEL_79;
      }
    }

    else
    {
      v33 = MEMORY[0x277D86220];
      v34 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      *&buf[4] = "vpStrategyManager.mm";
      v55 = 1024;
      v56 = 329;
      v57 = 1024;
      *v58 = VoiceProcessorVersion;
      _os_log_impl(&dword_2724B4000, v33, OS_LOG_TYPE_DEBUG, "%25s:%-5d Found a previously cached VoiceProcessorV%u!", buf, 0x18u);
    }

    goto LABEL_66;
  }

LABEL_79:
  if (*(*(this + 25) + 224))
  {
    return 0;
  }

LABEL_81:
  if (VPStrategyMgrScope(void)::once != -1)
  {
    dispatch_once(&VPStrategyMgrScope(void)::once, &__block_literal_global_4428);
  }

  if (VPStrategyMgrScope(void)::scope)
  {
    v46 = *VPStrategyMgrScope(void)::scope;
    if (!v46)
    {
      goto LABEL_90;
    }
  }

  else
  {
    v46 = MEMORY[0x277D86220];
    v47 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    *&buf[4] = "vpStrategyManager.mm";
    v55 = 1024;
    v56 = 338;
    v57 = 1024;
    *v58 = VoiceProcessorVersion;
    _os_log_impl(&dword_2724B4000, v46, OS_LOG_TYPE_DEBUG, "%25s:%-5d Creating a new VoiceProcessorV%u", buf, 0x18u);
  }

LABEL_90:
  vp::create(buf, VoiceProcessorVersion, (this + 8));
  v48 = *(this + 25);
  v49 = *(v48 + 224);
  *(v48 + 224) = *buf;
  if (v49)
  {
    (*(*v49 + 8))(v49);
    v48 = *(this + 25);
  }

  VPPropertyQueue::AssignIsSetOnVPStateForAllProperties((v48 + 96), 0);
  if (VPStrategyMgrScope(void)::once != -1)
  {
    dispatch_once(&VPStrategyMgrScope(void)::once, &__block_literal_global_4428);
  }

  if (!VPStrategyMgrScope(void)::scope)
  {
    v50 = MEMORY[0x277D86220];
    v51 = MEMORY[0x277D86220];
    goto LABEL_98;
  }

  v50 = *VPStrategyMgrScope(void)::scope;
  if (v50)
  {
LABEL_98:
    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      *&buf[4] = "vpStrategyManager.mm";
      v55 = 1024;
      v56 = 341;
      v57 = 1024;
      *v58 = VoiceProcessorVersion;
      _os_log_impl(&dword_2724B4000, v50, OS_LOG_TYPE_DEBUG, "%25s:%-5d Created a new VoiceProcessorV%u", buf, 0x18u);
    }
  }

  return 2 * (*(*(this + 25) + 224) == 0);
}

void VPPropertyQueue::AssignIsSetOnVPStateForAllProperties(VPPropertyQueue *this, int a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = *this;
  v5 = *(this + 1);
  if (*this == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = 0;
    do
    {
      if (*(v4 + 72) != a2)
      {
        ++v6;
        *(v4 + 72) = a2;
      }

      v4 += 80;
    }

    while (v4 != v5);
  }

  if (VPStrategyMgrScope(void)::once != -1)
  {
    dispatch_once(&VPStrategyMgrScope(void)::once, &__block_literal_global_4428);
  }

  if (VPStrategyMgrScope(void)::scope)
  {
    v7 = *VPStrategyMgrScope(void)::scope;
    if (!v7)
    {
      return;
    }
  }

  else
  {
    v7 = MEMORY[0x277D86220];
    v8 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 0xCCCCCCCCCCCCCCCDLL * ((*(this + 1) - *this) >> 4);
    v10 = 136316162;
    v11 = "vpPropertyQueue.h";
    v12 = 1024;
    v13 = 44;
    v14 = 1024;
    v15 = a2;
    v16 = 1024;
    v17 = v6;
    v18 = 2048;
    v19 = v9;
    _os_log_impl(&dword_2724B4000, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d setOnVP set to %d. %d items flipped (size=%lu)", &v10, 0x28u);
  }
}

void VPStrategyManager::~VPStrategyManager(std::__shared_weak_count **this)
{
  VPStrategyManager::~VPStrategyManager(this);

  JUMPOUT(0x2743CBFA0);
}

{
  v17 = *MEMORY[0x277D85DE8];
  if (VPStrategyMgrScope(void)::once != -1)
  {
    dispatch_once(&VPStrategyMgrScope(void)::once, &__block_literal_global_4428);
  }

  if (VPStrategyMgrScope(void)::scope)
  {
    if (*(VPStrategyMgrScope(void)::scope + 8))
    {
      v2 = *VPStrategyMgrScope(void)::scope;
      if (v2)
      {
        v3 = v2;
        if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
        {
          v13 = 136315394;
          v14 = "vpStrategyManager.mm";
          v15 = 1024;
          v16 = 208;
          _os_log_impl(&dword_2724B4000, v3, OS_LOG_TYPE_DEBUG, "%25s:%-5d ================", &v13, 0x12u);
        }
      }
    }
  }

  if (VPStrategyMgrScope(void)::once != -1)
  {
    dispatch_once(&VPStrategyMgrScope(void)::once, &__block_literal_global_4428);
  }

  if (VPStrategyMgrScope(void)::scope)
  {
    v4 = *VPStrategyMgrScope(void)::scope;
    if (!v4)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v4 = MEMORY[0x277D86220];
    v5 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v13 = 136315394;
    v14 = "vpStrategyManager.mm";
    v15 = 1024;
    v16 = 209;
    _os_log_impl(&dword_2724B4000, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d destroyed VPStrategyManager", &v13, 0x12u);
  }

LABEL_18:
  if (_os_feature_enabled_impl())
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterRemoveObserver(DarwinNotifyCenter, this, @"AUVoiceIODuckingLevelDefault", 0);
    v7 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterRemoveObserver(v7, this, @"AUVoiceIODuckingLevelMin", 0);
    v8 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterRemoveObserver(v8, this, @"AUVoiceIODuckingLevelMid", 0);
    v9 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterRemoveObserver(v9, this, @"AUVoiceIODuckingLevelMax", 0);
    v10 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterRemoveObserver(v10, this, @"AUVoiceIOEnableAdvancedDucking", 0);
    v11 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterRemoveObserver(v11, this, @"AUVoiceIODisableAdvancedDucking", 0);
  }

  v12 = this[26];
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  vp::Context::~Context((this + 1));
}

void sub_2725A53F0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t DisableAdvancedDuckingCallBack(__CFNotificationCenter *a1, VPStrategyManager *this, const __CFString *a3, const void *a4, const __CFDictionary *a5)
{
  v8 = 0;
  v7 = 0;
  VPStrategyManager::GetProperty(this, 1868653667, &v8, 8, &v7);
  LOBYTE(v8) = 0;
  return VPStrategyManager::SetProperty(this, 1868653667, &v8, 8uLL);
}

uint64_t EnableAdvancedDuckingCallBack(__CFNotificationCenter *a1, VPStrategyManager *this, const __CFString *a3, const void *a4, const __CFDictionary *a5)
{
  v7 = 0;
  VPStrategyManager::GetProperty(this, 1868653667, &v8, 8, &v7);
  LOBYTE(v8) = 1;
  return VPStrategyManager::SetProperty(this, 1868653667, &v8, 8uLL);
}

uint64_t MaxDuckingLevelCallBack(__CFNotificationCenter *a1, VPStrategyManager *this, const __CFString *a3, const void *a4, const __CFDictionary *a5)
{
  v8 = 0;
  v7 = 0;
  VPStrategyManager::GetProperty(this, 1868653667, &v8, 8, &v7);
  HIDWORD(v8) = 30;
  return VPStrategyManager::SetProperty(this, 1868653667, &v8, 8uLL);
}

uint64_t MidDuckingLevelCallBack(__CFNotificationCenter *a1, VPStrategyManager *this, const __CFString *a3, const void *a4, const __CFDictionary *a5)
{
  v8 = 0;
  v7 = 0;
  VPStrategyManager::GetProperty(this, 1868653667, &v8, 8, &v7);
  HIDWORD(v8) = 20;
  return VPStrategyManager::SetProperty(this, 1868653667, &v8, 8uLL);
}

uint64_t MinDuckingLevelCallBack(__CFNotificationCenter *a1, VPStrategyManager *this, const __CFString *a3, const void *a4, const __CFDictionary *a5)
{
  v8 = 0;
  v7 = 0;
  VPStrategyManager::GetProperty(this, 1868653667, &v8, 8, &v7);
  HIDWORD(v8) = 10;
  return VPStrategyManager::SetProperty(this, 1868653667, &v8, 8uLL);
}

uint64_t DefaultDuckingCallBack(__CFNotificationCenter *a1, VPStrategyManager *this, const __CFString *a3, const void *a4, const __CFDictionary *a5)
{
  v8 = 0;
  v7 = 0;
  VPStrategyManager::GetProperty(this, 1868653667, &v8, 8, &v7);
  HIDWORD(v8) = 0;
  return VPStrategyManager::SetProperty(this, 1868653667, &v8, 8uLL);
}

VPStrategyManager::VPSMImplementation **std::unique_ptr<VPStrategyManager::VPSMImplementation>::~unique_ptr[abi:ne200100](VPStrategyManager::VPSMImplementation **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    VPStrategyManager::VPSMImplementation::~VPSMImplementation(v2);
    MEMORY[0x2743CBFA0]();
  }

  return a1;
}

void VPStrategyManager::VPSMImplementation::~VPSMImplementation(VPStrategyManager::VPSMImplementation *this)
{
  v8 = *MEMORY[0x277D85DE8];
  if (VPStrategyMgrScope(void)::once != -1)
  {
    dispatch_once(&VPStrategyMgrScope(void)::once, &__block_literal_global_4428);
  }

  if (VPStrategyMgrScope(void)::scope)
  {
    if (*(VPStrategyMgrScope(void)::scope + 8))
    {
      v2 = *VPStrategyMgrScope(void)::scope;
      if (v2)
      {
        v3 = v2;
        if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
        {
          *v5 = 136315394;
          *&v5[4] = "vpStrategyManager.h";
          v6 = 1024;
          v7 = 182;
          _os_log_impl(&dword_2724B4000, v3, OS_LOG_TYPE_DEBUG, "%25s:%-5d ================", v5, 0x12u);
        }
      }
    }
  }

  std::__tree<std::__value_type<unsigned int,std::unique_ptr<VoiceProcessorBase>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::unique_ptr<VoiceProcessorBase>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::unique_ptr<VoiceProcessorBase>>>>::destroy(*(this + 42));
  CADeprecated::CAMutex::~CAMutex((this + 232));
  v4 = *(this + 28);
  *(this + 28) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  CADeprecated::CAMutex::~CAMutex((this + 120));
  *v5 = this + 96;
  std::vector<VPPropertyQueue::QueueEntry>::__destroy_vector::operator()[abi:ne200100](v5);
  CADeprecated::CAMutex::~CAMutex((this + 8));
}

void std::__tree<std::__value_type<unsigned int,std::unique_ptr<VoiceProcessorBase>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::unique_ptr<VoiceProcessorBase>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::unique_ptr<VoiceProcessorBase>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<unsigned int,std::unique_ptr<VoiceProcessorBase>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::unique_ptr<VoiceProcessorBase>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::unique_ptr<VoiceProcessorBase>>>>::destroy(*a1);
    std::__tree<std::__value_type<unsigned int,std::unique_ptr<VoiceProcessorBase>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::unique_ptr<VoiceProcessorBase>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::unique_ptr<VoiceProcessorBase>>>>::destroy(a1[1]);
    v2 = a1[5];
    a1[5] = 0;
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    operator delete(a1);
  }
}

void std::vector<VPPropertyQueue::QueueEntry>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        VPPropertyItem::~VPPropertyItem((v4 - 80));
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

VPStrategyManager::VPSMImplementation *std::__shared_ptr_pointer<VPStrategyManager::VPSMImplementation *,std::shared_ptr<VPStrategyManager::VPSMImplementation>::__shared_ptr_default_delete<VPStrategyManager::VPSMImplementation,VPStrategyManager::VPSMImplementation>,std::allocator<VPStrategyManager::VPSMImplementation>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    VPStrategyManager::VPSMImplementation::~VPSMImplementation(result);

    JUMPOUT(0x2743CBFA0);
  }

  return result;
}

void std::__shared_ptr_pointer<VPStrategyManager::VPSMImplementation *,std::shared_ptr<VPStrategyManager::VPSMImplementation>::__shared_ptr_default_delete<VPStrategyManager::VPSMImplementation,VPStrategyManager::VPSMImplementation>,std::allocator<VPStrategyManager::VPSMImplementation>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743CBFA0);
}

void VPStrategyManager::VPData::~VPData(void **this)
{
  CADeprecated::CAMutex::~CAMutex((this + 3));
  v2 = this;
  std::vector<VPPropertyQueue::QueueEntry>::__destroy_vector::operator()[abi:ne200100](&v2);
}

void VoiceProcessorV2::GetAndPopulateAUTuningPreset(VoiceProcessorV2 *this, unsigned int a2, int a3, char *a4)
{
  v104 = *MEMORY[0x277D85DE8];
  v7 = this + 12288;
  v8 = 11000;
  if (a3)
  {
    v8 = 7064;
  }

  v9 = this + v8;
  v10 = 10416;
  if (a3)
  {
    v10 = 6424;
  }

  v11 = this + v10;
  v12 = *(this + 343);
  if (a3)
  {
    v13 = &VoiceProcessorV2::VPUplinkIndexToSubTypeArray;
  }

  else
  {
    v13 = &VoiceProcessorV2::VPDownlinkIndexToSubTypeArray;
  }

  if (a3)
  {
    v14 = 71;
  }

  else
  {
    v14 = 64;
  }

  v15 = v13;
  v16 = v14;
  while (*v15 != a2)
  {
    v15 += 18;
    if (!--v16)
    {
      v17 = 0;
      goto LABEL_16;
    }
  }

  v17 = (v15 + 2);
LABEL_16:
  v95 = 0;
  v18 = TuningPListMgr::lookupPlist_(v12, a4, 0);
  if (v18 && (Effect = TuningPListMgr::getEffect(v18, v19)) != 0 && (UnitByName = TuningPListMgr::getUnitByName(Effect, v17, v21)) != 0)
  {
    v24 = UnitByName;
    v83 = v9;
    AUPresetFromUnit = TuningPListMgr::getAUPresetFromUnit(UnitByName, v23);
    valuePtr = 0;
    Value = CFDictionaryGetValue(v24, @"bypass");
    if (Value && (v27 = Value, TypeID = CFNumberGetTypeID(), TypeID == CFGetTypeID(v27)))
    {
      if (CFNumberGetValue(v27, kCFNumberSInt32Type, &valuePtr))
      {
        v29 = valuePtr;
      }

      else
      {
        v29 = 0;
      }
    }

    else
    {
      v29 = 0;
    }

    v95 = v29;
    v30 = a2;
    v58 = &v11[8 * a2];
    *v58 = AUPresetFromUnit;
    if (AUPresetFromUnit)
    {
      AUPropAndParamHelper::AddItemToAUPropsList(&v83[24 * a2], 0, 0, 0, 8uLL, v58, 1);
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v59 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
      {
        v60 = (*v59 ? *v59 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
        {
          v61 = v13;
          v62 = v14;
          while (*v61 != a2)
          {
            v61 += 18;
            if (!--v62)
            {
              v63 = 0;
              goto LABEL_151;
            }
          }

          v63 = (v61 + 2);
LABEL_151:
          v79 = "(bypassed)";
          v97 = "vpTuningHelper.cpp";
          v98 = 1024;
          v99 = 36;
          valuePtr = 136315906;
          if (!v29)
          {
            v79 = "";
          }

          v100 = 2080;
          v101 = v63;
          v102 = 2080;
          v103 = v79;
          _os_log_impl(&dword_2724B4000, v60, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> found aupreset for au: %s %s", &valuePtr, 0x26u);
        }
      }

      v80 = *(this + 1588);
      if (v80 && ((v7[3593] & 1) != 0 || v7[3594] == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        while (*v13 != a2)
        {
          v13 += 18;
          if (!--v14)
          {
            v81 = 0;
            goto LABEL_163;
          }
        }

        v81 = (v13 + 2);
LABEL_163:
        v82 = "(bypassed)";
        if (!v29)
        {
          v82 = "";
        }

        CALegacyLog::log(v80, 5, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpTuningHelper.cpp", 36, "GetAndPopulateAUTuningPreset", "found aupreset for au: %s %s", v81, v82);
      }

      v9 = v83;
      goto LABEL_167;
    }

    v9 = v83;
  }

  else
  {
    *&v11[8 * a2] = 0;
    v30 = a2;
  }

  if (a2 == 6 && !a3)
  {
    while (*v13 != 6)
    {
      v13 += 18;
      if (!--v14)
      {
        v31 = 0;
        goto LABEL_77;
      }
    }

    v31 = (v13 + 2);
LABEL_77:
    snprintf(&valuePtr, 0x80uLL, "couldn't find aupreset for experimental au: %s ", v31);
    std::string::basic_string[abi:ne200100]<0>(&v94, "vpTuningHelper.cpp");
    std::to_string(&v87, 42);
    v42 = std::string::insert(&v87, 0, ":", 1uLL);
    v43 = *&v42->__r_.__value_.__l.__data_;
    v88.__r_.__value_.__r.__words[2] = v42->__r_.__value_.__r.__words[2];
    *&v88.__r_.__value_.__l.__data_ = v43;
    v42->__r_.__value_.__l.__size_ = 0;
    v42->__r_.__value_.__r.__words[2] = 0;
    v42->__r_.__value_.__r.__words[0] = 0;
    v44 = std::string::append(&v88, ":", 1uLL);
    v45 = *&v44->__r_.__value_.__l.__data_;
    v89.__r_.__value_.__r.__words[2] = v44->__r_.__value_.__r.__words[2];
    *&v89.__r_.__value_.__l.__data_ = v45;
    v44->__r_.__value_.__l.__size_ = 0;
    v44->__r_.__value_.__r.__words[2] = 0;
    v44->__r_.__value_.__r.__words[0] = 0;
    std::string::basic_string[abi:ne200100]<0>(&v84, "GetAndPopulateAUTuningPreset");
    if ((v86 & 0x80u) == 0)
    {
      v46 = &v84;
    }

    else
    {
      v46 = v84;
    }

    if ((v86 & 0x80u) == 0)
    {
      v47 = v86;
    }

    else
    {
      v47 = v85;
    }

    v48 = std::string::append(&v89, v46, v47);
    v49 = *&v48->__r_.__value_.__l.__data_;
    v90.__r_.__value_.__r.__words[2] = v48->__r_.__value_.__r.__words[2];
    *&v90.__r_.__value_.__l.__data_ = v49;
    v48->__r_.__value_.__l.__size_ = 0;
    v48->__r_.__value_.__r.__words[2] = 0;
    v48->__r_.__value_.__r.__words[0] = 0;
    v50 = std::string::append(&v90, " ", 1uLL);
    v51 = *&v50->__r_.__value_.__l.__data_;
    v91.__r_.__value_.__r.__words[2] = v50->__r_.__value_.__r.__words[2];
    *&v91.__r_.__value_.__l.__data_ = v51;
    v50->__r_.__value_.__l.__size_ = 0;
    v50->__r_.__value_.__r.__words[2] = 0;
    v50->__r_.__value_.__r.__words[0] = 0;
    v52 = strlen(&valuePtr);
    v53 = std::string::append(&v91, &valuePtr, v52);
    v54 = *&v53->__r_.__value_.__l.__data_;
    v93 = v53->__r_.__value_.__r.__words[2];
    *__p = v54;
    v53->__r_.__value_.__l.__size_ = 0;
    v53->__r_.__value_.__r.__words[2] = 0;
    v53->__r_.__value_.__r.__words[0] = 0;
    if (v93 >= 0)
    {
      v55 = __p;
    }

    else
    {
      v55 = __p[0];
    }

    if (v93 >= 0)
    {
      v56 = HIBYTE(v93);
    }

    else
    {
      v56 = __p[1];
    }

    std::string::append(&v94, v55, v56);
    if (SHIBYTE(v93) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v91.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v91.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v90.__r_.__value_.__l.__data_);
    }

    if (v86 < 0)
    {
      operator delete(v84);
    }

    if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v89.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v88.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v87.__r_.__value_.__l.__data_);
    }

    v57 = 15984;
LABEL_148:
    std::vector<std::string>::push_back[abi:ne200100](this + v57, &v94);
    if (SHIBYTE(v94.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v94.__r_.__value_.__l.__data_);
    }

    goto LABEL_167;
  }

  if (a3)
  {
    if (a2 - 1 < 3 || a2 == 63)
    {
LABEL_167:
      AUPropAndParamHelper::AddItemToAUPropsList(&v9[24 * v30], 0x15u, 0, 0, 4uLL, &v95, 1);
      return;
    }

    if (a2 == 56)
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v32 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(3, VPLogScope(void)::scope, 0))
      {
        v33 = (*v32 ? *v32 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          valuePtr = 136315650;
          v97 = "vpTuningHelper.cpp";
          v98 = 1024;
          v99 = 48;
          v100 = 2080;
          v101 = "(UL-)KeystrokeSuppressor";
          _os_log_impl(&dword_2724B4000, v33, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> couldn't find aupreset for au: %s, expected to be bypassed", &valuePtr, 0x1Cu);
        }
      }

      v34 = *(this + 1588);
      if (v34 && ((v7[3593] & 1) != 0 || v7[3594] == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        CALegacyLog::log(v34, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpTuningHelper.cpp", 48, "GetAndPopulateAUTuningPreset", "couldn't find aupreset for au: %s, expected to be bypassed", "(UL-)KeystrokeSuppressor");
      }

      goto LABEL_167;
    }
  }

  v37 = a2 != 28 && a2 != 61 && a2 != 70;
  if (!a3)
  {
    v37 = a2 != 0;
  }

  if (a2 == 1)
  {
    v38 = a3;
  }

  else
  {
    v38 = 1;
  }

  if (a2 == 24)
  {
    v39 = a3;
  }

  else
  {
    v39 = 1;
  }

  if (a2 == 6)
  {
    v40 = a3;
  }

  else
  {
    v40 = 0;
  }

  if ((v40 & 1) == 0 && v39 && v38 && v37)
  {
    while (*v13 != a2)
    {
      v13 += 18;
      if (!--v14)
      {
        v41 = 0;
        goto LABEL_120;
      }
    }

    v41 = (v13 + 2);
LABEL_120:
    snprintf(&valuePtr, 0x80uLL, "couldn't find aupreset for au: %s ", v41);
    std::string::basic_string[abi:ne200100]<0>(&v94, "vpTuningHelper.cpp");
    std::to_string(&v87, 71);
    v64 = std::string::insert(&v87, 0, ":", 1uLL);
    v65 = *&v64->__r_.__value_.__l.__data_;
    v88.__r_.__value_.__r.__words[2] = v64->__r_.__value_.__r.__words[2];
    *&v88.__r_.__value_.__l.__data_ = v65;
    v64->__r_.__value_.__l.__size_ = 0;
    v64->__r_.__value_.__r.__words[2] = 0;
    v64->__r_.__value_.__r.__words[0] = 0;
    v66 = std::string::append(&v88, ":", 1uLL);
    v67 = *&v66->__r_.__value_.__l.__data_;
    v89.__r_.__value_.__r.__words[2] = v66->__r_.__value_.__r.__words[2];
    *&v89.__r_.__value_.__l.__data_ = v67;
    v66->__r_.__value_.__l.__size_ = 0;
    v66->__r_.__value_.__r.__words[2] = 0;
    v66->__r_.__value_.__r.__words[0] = 0;
    std::string::basic_string[abi:ne200100]<0>(&v84, "GetAndPopulateAUTuningPreset");
    if ((v86 & 0x80u) == 0)
    {
      v68 = &v84;
    }

    else
    {
      v68 = v84;
    }

    if ((v86 & 0x80u) == 0)
    {
      v69 = v86;
    }

    else
    {
      v69 = v85;
    }

    v70 = std::string::append(&v89, v68, v69);
    v71 = *&v70->__r_.__value_.__l.__data_;
    v90.__r_.__value_.__r.__words[2] = v70->__r_.__value_.__r.__words[2];
    *&v90.__r_.__value_.__l.__data_ = v71;
    v70->__r_.__value_.__l.__size_ = 0;
    v70->__r_.__value_.__r.__words[2] = 0;
    v70->__r_.__value_.__r.__words[0] = 0;
    v72 = std::string::append(&v90, " ", 1uLL);
    v73 = *&v72->__r_.__value_.__l.__data_;
    v91.__r_.__value_.__r.__words[2] = v72->__r_.__value_.__r.__words[2];
    *&v91.__r_.__value_.__l.__data_ = v73;
    v72->__r_.__value_.__l.__size_ = 0;
    v72->__r_.__value_.__r.__words[2] = 0;
    v72->__r_.__value_.__r.__words[0] = 0;
    v74 = strlen(&valuePtr);
    v75 = std::string::append(&v91, &valuePtr, v74);
    v76 = *&v75->__r_.__value_.__l.__data_;
    v93 = v75->__r_.__value_.__r.__words[2];
    *__p = v76;
    v75->__r_.__value_.__l.__size_ = 0;
    v75->__r_.__value_.__r.__words[2] = 0;
    v75->__r_.__value_.__r.__words[0] = 0;
    if (v93 >= 0)
    {
      v77 = __p;
    }

    else
    {
      v77 = __p[0];
    }

    if (v93 >= 0)
    {
      v78 = HIBYTE(v93);
    }

    else
    {
      v78 = __p[1];
    }

    std::string::append(&v94, v77, v78);
    if (SHIBYTE(v93) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v91.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v91.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v90.__r_.__value_.__l.__data_);
    }

    if (v86 < 0)
    {
      operator delete(v84);
    }

    if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v89.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v88.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v87.__r_.__value_.__l.__data_);
    }

    v57 = 15984;
    if (a3)
    {
      v57 = 15960;
    }

    goto LABEL_148;
  }
}

void sub_2725A6398(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, void *__p, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  if (a44 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void VoiceProcessorV2::GetAndPopulateAuxAUTuningPreset(VoiceProcessorV2 *this, int a2, char *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = this + 12288;
  v7 = 10984;
  if (a2)
  {
    v7 = 7048;
  }

  CFStringGetCString(*(this + v7), buffer, 64, 0x600u);
  v8 = TuningPListMgr::lookupPlist_(*(this + 343), a3, 0);
  if (v8 && (Effect = TuningPListMgr::getEffect(v8, v9)) != 0 && (UnitByName = TuningPListMgr::getUnitByName(Effect, buffer, v11)) != 0 && (AUPresetFromUnit = TuningPListMgr::getAUPresetFromUnit(UnitByName, v13)) != 0)
  {
    v14 = 10928;
    if (a2)
    {
      v14 = 6992;
    }

    AUPropAndParamHelper::AddItemToAUPropsList((this + v14), 0, 0, 0, 8uLL, &AUPresetFromUnit, 1);
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v15 = VPLogScope(void)::scope;
    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
    {
      v16 = (*v15 ? *v15 : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        v23 = "vpTuningHelper.cpp";
        v24 = 1024;
        v25 = 103;
        v26 = 2080;
        v27 = buffer;
        _os_log_impl(&dword_2724B4000, v16, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> found aupreset for aux au: %s", buf, 0x1Cu);
      }
    }

    v17 = *(this + 1588);
    if (v17 && ((v6[3593] & 1) != 0 || v6[3594] == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      CALegacyLog::log(v17, 5, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpTuningHelper.cpp", 103, "GetAndPopulateAuxAUTuningPreset", "found aupreset for aux au: %s");
    }
  }

  else
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
        *buf = 136315650;
        v23 = "vpTuningHelper.cpp";
        v24 = 1024;
        v25 = 106;
        v26 = 2080;
        v27 = buffer;
        _os_log_impl(&dword_2724B4000, v19, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> couldn't find aupreset for aux au: %s", buf, 0x1Cu);
      }
    }

    v20 = *(this + 1588);
    if (v20 && ((v6[3593] & 1) != 0 || v6[3594] == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      CALegacyLog::log(v20, 5, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpTuningHelper.cpp", 106, "GetAndPopulateAuxAUTuningPreset", "couldn't find aupreset for aux au: %s");
    }
  }
}

uint64_t VoiceProcessorV2::LoadContinuityCapturePresetOverrides(VoiceProcessorV2 *this, unsigned int a2, unsigned int a3, unsigned int a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, BOOL a9)
{
  v90 = *MEMORY[0x277D85DE8];
  memset(&__str, 0, sizeof(__str));
  std::string::append(&__str, "gen-vp", 6uLL);
  strcpy(__s, "aufx");
  std::string::basic_string[abi:ne200100]<0>(&v88, __s);
  v14 = std::string::insert(&v88, 0, "-", 1uLL);
  v15 = *&v14->__r_.__value_.__l.__data_;
  *&__p[16] = *(&v14->__r_.__value_.__l + 2);
  *__p = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  if (__p[23] >= 0)
  {
    v16 = __p;
  }

  else
  {
    v16 = *__p;
  }

  if (__p[23] >= 0)
  {
    v17 = __p[23];
  }

  else
  {
    v17 = *&__p[8];
  }

  std::string::append(&__str, v16, v17);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v88.__r_.__value_.__l.__data_);
  }

  v18 = bswap32(a3);
  *__s = v18;
  if ((v18 - 32) > 0x5E || ((v18 >> 8) - 32) > 0x5E || ((v18 << 8 >> 24) - 32) > 0x5E || ((v18 >> 24) - 32) > 0x5E)
  {
    std::to_string(&v88, a3);
  }

  else
  {
    __s[4] = 0;
    std::string::basic_string[abi:ne200100]<0>(&v88, __s);
  }

  v19 = std::string::insert(&v88, 0, "-", 1uLL);
  v20 = *&v19->__r_.__value_.__l.__data_;
  *&__p[16] = *(&v19->__r_.__value_.__l + 2);
  *__p = v20;
  v19->__r_.__value_.__l.__size_ = 0;
  v19->__r_.__value_.__r.__words[2] = 0;
  v19->__r_.__value_.__r.__words[0] = 0;
  if (__p[23] >= 0)
  {
    v21 = __p;
  }

  else
  {
    v21 = *__p;
  }

  if (__p[23] >= 0)
  {
    v22 = __p[23];
  }

  else
  {
    v22 = *&__p[8];
  }

  std::string::append(&__str, v21, v22);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v88.__r_.__value_.__l.__data_);
  }

  strcpy(__s, "appl");
  std::string::basic_string[abi:ne200100]<0>(&v88, __s);
  v23 = std::string::insert(&v88, 0, "-", 1uLL);
  v24 = *&v23->__r_.__value_.__l.__data_;
  *&__p[16] = *(&v23->__r_.__value_.__l + 2);
  *__p = v24;
  v23->__r_.__value_.__l.__size_ = 0;
  v23->__r_.__value_.__r.__words[2] = 0;
  v23->__r_.__value_.__r.__words[0] = 0;
  if (__p[23] >= 0)
  {
    v25 = __p;
  }

  else
  {
    v25 = *__p;
  }

  if (__p[23] >= 0)
  {
    v26 = __p[23];
  }

  else
  {
    v26 = *&__p[8];
  }

  std::string::append(&__str, v25, v26);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v88.__r_.__value_.__l.__data_);
  }

  strcpy(__s, "evil");
  std::string::basic_string[abi:ne200100]<0>(&v88, __s);
  v27 = std::string::insert(&v88, 0, "-", 1uLL);
  v28 = *&v27->__r_.__value_.__l.__data_;
  *&__p[16] = *(&v27->__r_.__value_.__l + 2);
  *__p = v28;
  v27->__r_.__value_.__l.__size_ = 0;
  v27->__r_.__value_.__r.__words[2] = 0;
  v27->__r_.__value_.__r.__words[0] = 0;
  if (__p[23] >= 0)
  {
    v29 = __p;
  }

  else
  {
    v29 = *__p;
  }

  if (__p[23] >= 0)
  {
    v30 = __p[23];
  }

  else
  {
    v30 = *&__p[8];
  }

  std::string::append(&__str, v29, v30);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v88.__r_.__value_.__l.__data_);
  }

  v31 = bswap32(a4);
  *__s = v31;
  if ((v31 - 32) > 0x5E || ((v31 >> 8) - 32) > 0x5E || ((v31 << 8 >> 24) - 32) > 0x5E || ((v31 >> 24) - 32) > 0x5E)
  {
    std::to_string(&v88, a4);
  }

  else
  {
    __s[4] = 0;
    std::string::basic_string[abi:ne200100]<0>(&v88, __s);
  }

  v32 = std::string::insert(&v88, 0, "-", 1uLL);
  v33 = *&v32->__r_.__value_.__l.__data_;
  *&__p[16] = *(&v32->__r_.__value_.__l + 2);
  *__p = v33;
  v32->__r_.__value_.__l.__size_ = 0;
  v32->__r_.__value_.__r.__words[2] = 0;
  v32->__r_.__value_.__r.__words[0] = 0;
  if (__p[23] >= 0)
  {
    v34 = __p;
  }

  else
  {
    v34 = *__p;
  }

  if (__p[23] >= 0)
  {
    v35 = __p[23];
  }

  else
  {
    v35 = *&__p[8];
  }

  std::string::append(&__str, v34, v35);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v88.__r_.__value_.__l.__data_);
  }

  std::string::append(&__str, "-ulnk", 5uLL);
  v36 = bswap32(a5);
  *__s = v36;
  v37 = v36 - 32;
  if (v37 > 0x5E || (SBYTE1(v36) - 32) > 0x5E || (SBYTE2(v36) - 32) > 0x5E || ((v36 >> 24) - 32) > 0x5E)
  {
    std::to_string(&v88, a5);
  }

  else
  {
    __s[4] = 0;
    std::string::basic_string[abi:ne200100]<0>(&v88, __s);
  }

  v38 = std::string::insert(&v88, 0, "-", 1uLL);
  v39 = *&v38->__r_.__value_.__l.__data_;
  *&__p[16] = *(&v38->__r_.__value_.__l + 2);
  *__p = v39;
  v38->__r_.__value_.__l.__size_ = 0;
  v38->__r_.__value_.__r.__words[2] = 0;
  v38->__r_.__value_.__r.__words[0] = 0;
  if (__p[23] >= 0)
  {
    v40 = __p;
  }

  else
  {
    v40 = *__p;
  }

  if (__p[23] >= 0)
  {
    v41 = __p[23];
  }

  else
  {
    v41 = *&__p[8];
  }

  std::string::append(&__str, v40, v41);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v88.__r_.__value_.__l.__data_);
  }

  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_str = &__str;
  }

  else
  {
    p_str = __str.__r_.__value_.__r.__words[0];
  }

  v43 = TuningPListMgr::lookupPlist_(*(this + 343), p_str, 1u);
  *__s = v43;
  v44 = &unk_28133C000;
  if (v43)
  {
    LODWORD(Tuning) = 0;
    goto LABEL_84;
  }

  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v49 = &__str;
  }

  else
  {
    v49 = __str.__r_.__value_.__r.__words[0];
  }

  Tuning = TuningPListMgr::loadTuning(*(this + 343), "Generic", "AU", v49, 1);
  if (!Tuning)
  {
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v52 = &__str;
    }

    else
    {
      v52 = __str.__r_.__value_.__r.__words[0];
    }

    v43 = TuningPListMgr::lookupPlist_(*(this + 343), v52, 1u);
    *__s = v43;
    if (!v43)
    {
      goto LABEL_195;
    }

    goto LABEL_84;
  }

  if (VPLogScope(void)::once != -1)
  {
    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
  }

  v50 = VPLogScope(void)::scope;
  if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(2, VPLogScope(void)::scope, 0))
  {
    v51 = (*v50 ? *v50 : MEMORY[0x277D86220]);
    if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
    {
      *__p = v36;
      if (v37 > 0x5E || (SBYTE1(v36) - 32) > 0x5E || (SBYTE2(v36) - 32) > 0x5E || ((v36 >> 24) - 32) > 0x5E)
      {
        std::to_string(&v88, a5);
      }

      else
      {
        __p[4] = 0;
        std::string::basic_string[abi:ne200100]<0>(&v88, __p);
      }

      v69 = &VoiceProcessorV2::VPUplinkIndexToSubTypeArray;
      v70 = 71;
      while (*v69 != a2)
      {
        v69 += 18;
        if (!--v70)
        {
          v71 = 0;
          goto LABEL_166;
        }
      }

      v71 = v69 + 2;
LABEL_166:
      v72 = __str.__r_.__value_.__r.__words[0];
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v72 = &__str;
      }

      v73 = &v88;
      if ((v88.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v73 = v88.__r_.__value_.__r.__words[0];
      }

      *__p = 136316162;
      *&__p[4] = "vpTuningHelper.cpp";
      *&__p[12] = 1024;
      *&__p[14] = 250;
      *&__p[18] = 2080;
      *&__p[20] = v73;
      v84 = 2080;
      v85 = v72;
      v86 = 2080;
      v87 = v71;
      _os_log_impl(&dword_2724B4000, v51, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  >vp> could not find '%s' override preset %s for %s!", __p, 0x30u);
      if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v88.__r_.__value_.__l.__data_);
      }
    }
  }

  v74 = *(this + 1588);
  if (v74 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v81 = VPLogScope(void)::scope;
    LODWORD(v88.__r_.__value_.__l.__data_) = v36;
    if (v37 > 0x5E || (SBYTE1(v36) - 32) > 0x5E || (SBYTE2(v36) - 32) > 0x5E || ((v36 >> 24) - 32) > 0x5E)
    {
      std::to_string(__p, a5);
    }

    else
    {
      v88.__r_.__value_.__s.__data_[4] = 0;
      std::string::basic_string[abi:ne200100]<0>(__p, &v88);
    }

    v75 = &VoiceProcessorV2::VPUplinkIndexToSubTypeArray;
    v76 = 71;
    while (*v75 != a2)
    {
      v75 += 18;
      if (!--v76)
      {
        v77 = 0;
        goto LABEL_188;
      }
    }

    v77 = (v75 + 2);
LABEL_188:
    v78 = __str.__r_.__value_.__r.__words[0];
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v78 = &__str;
    }

    v79 = __p;
    if (__p[23] < 0)
    {
      v79 = *__p;
    }

    CALegacyLog::log(v74, 2, v81, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpTuningHelper.cpp", 250, "LoadContinuityCapturePresetOverrides", "could not find '%s' override preset %s for %s!", v79, v78, v77);
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }
  }

  v43 = *__s;
  v44 = &unk_28133C000;
  if (*__s)
  {
LABEL_84:
    CFRetain(v43);
    AUPropAndParamHelper::AddItemToAUPropsList(this + 3 * a2 + 883, 0, 0, 0, 8uLL, __s, 1);
    CFRelease(*__s);
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v46 = v44;
    v47 = v44[115];
    if (v47 && CALegacyLog::LogEnabled(4, v47, 0))
    {
      v48 = (*v47 ? *v47 : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
      {
        *__p = v36;
        if (v37 > 0x5E || (SBYTE1(v36) - 32) > 0x5E || (SBYTE2(v36) - 32) > 0x5E || ((v36 >> 24) - 32) > 0x5E)
        {
          std::to_string(&v88, a5);
        }

        else
        {
          __p[4] = 0;
          std::string::basic_string[abi:ne200100]<0>(&v88, __p);
        }

        v53 = &VoiceProcessorV2::VPUplinkIndexToSubTypeArray;
        v54 = 71;
        while (*v53 != a2)
        {
          v53 += 18;
          if (!--v54)
          {
            v55 = 0;
            goto LABEL_125;
          }
        }

        v55 = v53 + 2;
LABEL_125:
        v56 = __str.__r_.__value_.__r.__words[0];
        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v56 = &__str;
        }

        v57 = &v88;
        if ((v88.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v57 = v88.__r_.__value_.__r.__words[0];
        }

        *__p = 136316162;
        *&__p[4] = "vpTuningHelper.cpp";
        *&__p[12] = 1024;
        *&__p[14] = 263;
        *&__p[18] = 2080;
        *&__p[20] = v57;
        v84 = 2080;
        v85 = v56;
        v86 = 2080;
        v87 = v55;
        _os_log_impl(&dword_2724B4000, v48, OS_LOG_TYPE_INFO, "%25s:%-5d  <vp> found '%s' override preset %s for %s", __p, 0x30u);
        if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v88.__r_.__value_.__l.__data_);
        }
      }
    }

    v58 = *(this + 1588);
    if (v58 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v59 = v46[115];
      LODWORD(v88.__r_.__value_.__l.__data_) = v36;
      if (v37 > 0x5E || (SBYTE1(v36) - 32) > 0x5E || (SBYTE2(v36) - 32) > 0x5E || ((v36 >> 24) - 32) > 0x5E)
      {
        std::to_string(__p, a5);
      }

      else
      {
        v88.__r_.__value_.__s.__data_[4] = 0;
        std::string::basic_string[abi:ne200100]<0>(__p, &v88);
      }

      v60 = &VoiceProcessorV2::VPUplinkIndexToSubTypeArray;
      v61 = 71;
      while (*v60 != a2)
      {
        v60 += 18;
        if (!--v61)
        {
          v62 = 0;
          goto LABEL_147;
        }
      }

      v62 = (v60 + 2);
LABEL_147:
      v63 = __str.__r_.__value_.__r.__words[0];
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v63 = &__str;
      }

      v64 = __p;
      if (__p[23] < 0)
      {
        v64 = *__p;
      }

      CALegacyLog::log(v58, 4, v59, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpTuningHelper.cpp", 263, "LoadContinuityCapturePresetOverrides", "found '%s' override preset %s for %s", v64, v63, v62);
      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }
    }

    v65 = &VoiceProcessorV2::VPUplinkIndexToSubTypeArray;
    v66 = 71;
    Tuning = Tuning;
    while (*v65 != a2)
    {
      v65 += 18;
      if (!--v66)
      {
        v67 = 0;
        goto LABEL_158;
      }
    }

    v67 = (v65 + 2);
LABEL_158:
    std::string::basic_string[abi:ne200100]<0>(__p, v67);
    v88.__r_.__value_.__r.__words[0] = __p;
    v68 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(this + 581, __p, &v88);
    std::string::operator=((v68 + 5), &__str);
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }
  }

LABEL_195:
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  return Tuning;
}