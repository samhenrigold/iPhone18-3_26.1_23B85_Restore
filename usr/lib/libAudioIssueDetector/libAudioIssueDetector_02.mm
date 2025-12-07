uint64_t ADAM::Writer::Writer(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  *a1 = &unk_2A1DEE8D8;
  *(a1 + 8) = a2;
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 16), *a3, *(a3 + 1));
  }

  else
  {
    v6 = *a3;
    *(a1 + 32) = *(a3 + 2);
    *(a1 + 16) = v6;
  }

  *(a1 + 40) = a4;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0;
  return a1;
}

void ADAM::MediaExposureWriter::MediaExposureWriter(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = *MEMORY[0x29EDCA608];
  v3 = ADAM::Writer::Writer(a1, a2, a3, 1);
  *v3 = &unk_2A1DEDC80;
  *(v3 + 104) = 0u;
  *(v3 + 88) = 0u;
  operator new();
}

void sub_296C58574(_Unwind_Exception *a1)
{
  MEMORY[0x29C260F00](v3, 0x10F3C403C957076);
  v5 = *(v1 + 14);
  *(v1 + 14) = 0;
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  std::unique_ptr<ADAM::MediaExposureWriter::HealthKitWriterInternalState>::reset[abi:ne200100](v2, 0);
  ADAM::Writer::~Writer(v1);
  _Unwind_Resume(a1);
}

void std::vector<ADAMServerDelegate * {__weak}>::push_back[abi:ne200100](uint64_t a1, id *from)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = (v4 - *a1) >> 3;
    if ((v6 + 1) >> 61)
    {
      std::vector<ADAMAudioDataAnalysisType>::__throw_length_error[abi:ne200100]();
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

    v18 = a1;
    if (v9)
    {
      std::allocator<ADAMServerDelegate * {__weak}>::allocate_at_least[abi:ne200100](v9);
    }

    v10 = (8 * v6);
    objc_copyWeak(v10, from);
    v17 = (v10 + 1);
    v11 = *(a1 + 8);
    v12 = (v10 + *a1 - v11);
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ADAMServerDelegate * {__weak}>,ADAMServerDelegate * {__weak}*>(*a1, v11, v12);
    v13 = *a1;
    *a1 = v12;
    v14 = *(a1 + 16);
    v15 = v17;
    *(a1 + 8) = v17;
    *&v17 = v13;
    *(&v17 + 1) = v14;
    v16[0] = v13;
    v16[1] = v13;
    std::__split_buffer<ADAMServerDelegate * {__weak}>::~__split_buffer(v16);
    v5 = v15;
  }

  else
  {
    objc_copyWeak(*(a1 + 8), from);
    v5 = v4 + 8;
  }

  *(a1 + 8) = v5;
}

void std::allocator<ADAMServerDelegate * {__weak}>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ADAMServerDelegate * {__weak}>,ADAMServerDelegate * {__weak}*>(id *from, id *a2, id *to)
{
  if (from != a2)
  {
    v5 = from;
    v6 = from;
    do
    {
      objc_moveWeak(to++, v6++);
    }

    while (v6 != a2);
    do
    {
      objc_destroyWeak(v5++);
    }

    while (v5 != a2);
  }
}

uint64_t std::__split_buffer<ADAMServerDelegate * {__weak}>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
    objc_destroyWeak((i - 8));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_296C58D68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t a13)
{
  v14 = *(a13 + 40);
  *(a13 + 40) = 0;
  if (v14)
  {
    (*(*v14 + 8))(v14, a2, a3, a4, a5, a6, a7, a8);
  }

  v15 = *(a13 + 32);
  *(a13 + 32) = 0;
  if (v15)
  {
    (*(*v15 + 8))(v15, a2, a3, a4, a5, a6, a7, a8);
  }

  v16 = *a11;
  *a11 = 0;
  if (v16)
  {
    (*(*v16 + 8))(v16, a2, a3, a4, a5, a6, a7, a8);
  }

  MEMORY[0x29C260F00](a13, 0x1020C402B6F3058, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

void *std::unique_ptr<rtaid::DependencyInjection>::~unique_ptr[abi:ne200100](void *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = v2[5];
    v2[5] = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = v2[4];
    v2[4] = 0;
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    v5 = v2[3];
    v2[3] = 0;
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    MEMORY[0x29C260F00](v2, 0x1020C402B6F3058);
  }

  return a1;
}

uint64_t AudioIssueDetectorSetNodeFormat(unint64_t a1, uint64_t a2, uint64_t a3, double *a4, uint64_t a5)
{
  v5 = a5;
  if (AudioDSPAnalysisEnabled())
  {
    return RealTimeAudioIssueDetectorSetNodeFormat();
  }

  SingletonManagerInstance();

  return rtaid::Manager::SetNodeFormatWithDirectionOnDetector(a1, a2, a3, 0, a4, v5);
}

uint64_t AudioIssueDetectorRemoveNode(unint64_t a1, uint64_t a2)
{
  v28 = *MEMORY[0x29EDCA608];
  if (!AudioDSPAnalysisEnabled())
  {
    SingletonManagerInstance();
    std::mutex::lock(&SingletonManagerInstance(void)::sInstance);
    v4 = std::__hash_table<std::__hash_value_type<long long,std::shared_ptr<rtaid::Detector>>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,std::shared_ptr<rtaid::Detector>>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,std::shared_ptr<rtaid::Detector>>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,std::shared_ptr<rtaid::Detector>>>>::find<long long>(a1);
    if (v4)
    {
      v6 = v4[3];
      v5 = v4[4];
      if (v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v6)
      {
        v7 = std::__hash_table<std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>>>::find<unsigned int>((v6 + 8), a2);
        if (v7)
        {
          v8 = v7;
          {
            rtaid::get_log(void)::rtaid_os_log = os_log_create("com.apple.coreaudio", "aid");
          }

          v9 = rtaid::get_log(void)::rtaid_os_log;
          if (os_log_type_enabled(rtaid::get_log(void)::rtaid_os_log, OS_LOG_TYPE_DEFAULT))
          {
            v10 = v8[3];
            v11 = (v10 + 8);
            if (*(v10 + 31) < 0)
            {
              v11 = *v11;
            }

            v14 = 136316674;
            v15 = "Detector.cpp";
            v16 = 1024;
            v17 = 165;
            v18 = 1040;
            v19 = 15;
            v20 = 2080;
            v21 = "rtaid::Detector]";
            v22 = 2048;
            v23 = v6;
            v24 = 2080;
            v25 = v11;
            v26 = 1024;
            v27 = a2;
            _os_log_impl(&dword_296C34000, v9, OS_LOG_TYPE_DEFAULT, "[%s:%-5d %.*s:%p] Removing node %s with nodeID %d", &v14, 0x3Cu);
          }

          std::__hash_table<std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>>>::remove(&v14, (v6 + 8), v8);
          std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>,void *>>>>::~unique_ptr[abi:ne200100](&v14);
          v12 = 0;
          if (!v5)
          {
            goto LABEL_20;
          }
        }

        else
        {
          v12 = 4294967294;
          if (!v5)
          {
            goto LABEL_20;
          }
        }

        goto LABEL_19;
      }

      v12 = 0xFFFFFFFFLL;
      if (v5)
      {
LABEL_19:
        std::__shared_weak_count::__release_shared[abi:ne200100](v5);
      }
    }

    else
    {
      v12 = 0xFFFFFFFFLL;
    }

LABEL_20:
    std::mutex::unlock(&SingletonManagerInstance(void)::sInstance);
    return v12;
  }

  return MEMORY[0x2A1C5F570](a1, a2);
}

void AudioIssueDetectorSetUplinkMute(uint64_t a1)
{
  if (AudioDSPAnalysisEnabled())
  {

    MEMORY[0x2A1C5F5A8](a1);
  }

  else
  {
    SingletonManagerInstance();
    atomic_store(a1, &unk_2A18A53D4);
  }
}

void AudioIssueDetectorSetDownlinkVolume(float a1)
{
  if (AudioDSPAnalysisEnabled())
  {
    v2.n128_f32[0] = a1;

    MEMORY[0x2A1C5F580](v2);
  }

  else
  {
    SingletonManagerInstance();
    *&xmmword_2A18A53D8 = a1;
  }
}

void AudioIssueDetectorSetRouteSpecificDownlinkGainAdjustment(float a1)
{
  if (AudioDSPAnalysisEnabled())
  {
    v2.n128_f32[0] = a1;

    MEMORY[0x2A1C5F598](v2);
  }

  else
  {
    SingletonManagerInstance();
    v3 = fabsf(a1);
    if (a1 >= 0.0)
    {
      v3 = 0.0;
    }

    dword_2A18A53D0 = LODWORD(v3);
  }
}

void AudioIssueDetectorSetSmartCaseMicMute(uint64_t a1)
{
  if (AudioDSPAnalysisEnabled())
  {

    MEMORY[0x2A1C5F5A0](a1);
  }

  else
  {
    SingletonManagerInstance();
    atomic_store(a1, byte_2A18A53D5);
  }
}

uint64_t AudioIssueDetectorFlush(unint64_t a1)
{
  SingletonManagerInstance();
  std::mutex::lock(&SingletonManagerInstance(void)::sInstance);
  v2 = std::__hash_table<std::__hash_value_type<long long,std::shared_ptr<rtaid::Detector>>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,std::shared_ptr<rtaid::Detector>>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,std::shared_ptr<rtaid::Detector>>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,std::shared_ptr<rtaid::Detector>>>>::find<long long>(a1);
  if (v2)
  {
    v3 = v2;
    v4 = v2[3];
    v5 = v3[4];
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v4)
    {
      rtaid::Detector::checkAndFlushState(v4, 0);
      v6 = 0;
      if (!v5)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    v6 = 0xFFFFFFFFLL;
    if (v5)
    {
LABEL_9:
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }

  else
  {
    v6 = 0xFFFFFFFFLL;
  }

LABEL_10:
  std::mutex::unlock(&SingletonManagerInstance(void)::sInstance);
  return v6;
}

void sub_296C59480(_Unwind_Exception *a1)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  std::mutex::unlock(&SingletonManagerInstance(void)::sInstance);
  _Unwind_Resume(a1);
}

void ADAM::MicLevelWriter::~MicLevelWriter(ADAM::MicLevelWriter *this)
{
  ADAM::Writer::~Writer(this);

  JUMPOUT(0x29C260F00);
}

uint64_t ADAM::MicLevelWriter::write(uint64_t a1, float *a2)
{
  v23 = *MEMORY[0x29EDCA608];
  v4 = objc_autoreleasePoolPush();
  v5 = v4;
  if (a2)
  {
    v16 = a2[1];
    v17 = *(a1 + 88);
    v6.f64[0] = __exp10(*a2 * 0.1) * v16;
    v6.f64[1] = v16;
    v7 = vaddq_f64(v6, v17);
    *(a1 + 88) = v7;
    if (v7.f64[1] <= 0.0999998808)
    {
      objc_autoreleasePoolPop(v5);
    }

    else
    {
      log(v7.f64[0] / v7.f64[1]);
      *(a1 + 88) = 0;
      *(a1 + 96) = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      ADAM::AudioDataAnalysisManager::instance(v8);
      ADAM::AudioDataAnalysisManager::getServerDelegates(__p, 0x6D69636Cu);
      v9 = __p[0];
      v10 = __p[1];
      while (v9 != v10)
      {
        WeakRetained = objc_loadWeakRetained(v9);
        v12 = [WeakRetained isActive:1835623276];

        if (v12)
        {
          std::vector<ADAMServerDelegate * {__weak}>::push_back[abi:ne200100](&v18, v9);
        }

        ++v9;
      }

      v21[0].__loc_.__locale_ = __p;
      std::vector<ADAMServerDelegate * {__weak}>::__destroy_vector::operator()[abi:ne200100](v21);
      if (v19 != v18)
      {
        v14 = [objc_loadWeakRetained(v18) getClientName];
        v15 = v14;
        [v14 UTF8String];
        std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100](v21, "com.apple\\.([a-z]+)\\.miclevel");
      }

      __p[0] = &v18;
      std::vector<ADAMServerDelegate * {__weak}>::__destroy_vector::operator()[abi:ne200100](__p);
      objc_autoreleasePoolPop(v5);
    }

    result = *(a1 + 72);
    if (result)
    {
      *(a1 + 72) = 0;
      (*(*result + 40))(result);
      return 0;
    }
  }

  else
  {
    objc_autoreleasePoolPop(v4);
    return 1684108321;
  }

  return result;
}

void sub_296C59BA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, id location, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char *__p)
{
  __p = &a16;
  std::vector<ADAMServerDelegate * {__weak}>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

void std::basic_regex<char,std::regex_traits<char>>::~basic_regex(std::locale *this)
{
  locale = this[6].__locale_;
  if (locale)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](locale);
  }

  std::locale::~locale(this);
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)12>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x29C260B70](exception, 12);
}

void *std::__state<char>::~__state(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    a1[8] = v2;
    operator delete(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    a1[5] = v3;
    operator delete(v3);
  }

  return a1;
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)16>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x29C260B70](exception, 16);
}

__n128 std::deque<std::__state<char>>::push_back(unint64_t *a1, uint64_t a2)
{
  v4 = a1[2];
  v5 = a1[1];
  v6 = v4 - v5;
  if (v4 == v5)
  {
    v7 = 0;
  }

  else
  {
    v7 = 42 * ((v4 - v5) >> 3) - 1;
  }

  v8 = a1[4];
  v9 = a1[5] + v8;
  if (v7 == v9)
  {
    if (v8 < 0x2A)
    {
      v10 = a1[3];
      v11 = v10 - *a1;
      if (v6 < v11)
      {
        if (v10 != v4)
        {
          operator new();
        }

        operator new();
      }

      if (v10 == *a1)
      {
        v12 = 1;
      }

      else
      {
        v12 = v11 >> 2;
      }

      v18 = a1;
      std::allocator<std::__state<char> *>::allocate_at_least[abi:ne200100](v12);
    }

    a1[4] = v8 - 42;
    *&v17 = *v5;
    a1[1] = (v5 + 8);
    std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *>>::emplace_back<std::__state<char> *&>(a1, &v17);
    v5 = a1[1];
    v9 = a1[5] + a1[4];
  }

  v13 = *&v5[8 * (v9 / 0x2A)] - 4032 * (v9 / 0x2A) + 96 * v9;
  v14 = *(a2 + 16);
  *v13 = *a2;
  *(v13 + 16) = v14;
  *(v13 + 40) = 0;
  *(v13 + 48) = 0;
  *(v13 + 32) = 0;
  *(v13 + 32) = *(a2 + 32);
  *(v13 + 48) = *(a2 + 48);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(v13 + 56) = 0;
  *(v13 + 64) = 0;
  *(v13 + 72) = 0;
  result = *(a2 + 56);
  *(v13 + 56) = result;
  *(v13 + 72) = *(a2 + 72);
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  v16 = *(a2 + 80);
  *(v13 + 85) = *(a2 + 85);
  *(v13 + 80) = v16;
  ++a1[5];
  return result;
}

void sub_296C5A0B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p)
{
  operator delete(v11);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void std::deque<std::__state<char>>::pop_back(void *a1)
{
  v2 = a1[5] + a1[4] - 1;
  std::__destroy_at[abi:ne200100]<std::__state<char>,0>((*(a1[1] + 8 * (v2 / 0x2A)) - 4032 * (v2 / 0x2A) + 96 * v2));
  v4 = a1[1];
  v3 = a1[2];
  if (v3 == v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = 42 * ((v3 - v4) >> 3) - 1;
  }

  v6 = a1[4];
  v7 = a1[5] - 1;
  a1[5] = v7;
  if ((v5 - (v7 + v6)) >= 0x54)
  {
    operator delete(*(v3 - 8));
    a1[2] -= 8;
  }
}

uint64_t std::deque<std::__state<char>>::~deque[abi:ne200100](uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 == v3)
  {
    v4 = (a1 + 40);
    v10 = *(a1 + 8);
  }

  else
  {
    v4 = (a1 + 40);
    v5 = *(a1 + 32);
    v6 = &v3[v5 / 0x2A];
    v7 = *v6 + 96 * v5 + -4032 * (v5 / 0x2A);
    v8 = v3[(*(a1 + 40) + v5) / 0x2A] + 96 * *(a1 + 40) + 96 * v5 + -4032 * ((*(a1 + 40) + v5) / 0x2A);
    if (v7 != v8)
    {
      do
      {
        std::__destroy_at[abi:ne200100]<std::__state<char>,0>(v7);
        v7 += 96;
        if (v7 - *v6 == 4032)
        {
          v9 = v6[1];
          ++v6;
          v7 = v9;
        }
      }

      while (v7 != v8);
      v3 = *(a1 + 8);
      v2 = *(a1 + 16);
    }

    v10 = v2;
  }

  *v4 = 0;
  v11 = v10 - v3;
  if (v11 >= 3)
  {
    do
    {
      operator delete(*v3);
      v2 = *(a1 + 16);
      v3 = (*(a1 + 8) + 8);
      *(a1 + 8) = v3;
      v11 = v2 - v3;
    }

    while (v11 > 2);
    v10 = v2;
  }

  if (v11 == 1)
  {
    v12 = 21;
  }

  else
  {
    if (v11 != 2)
    {
      goto LABEL_17;
    }

    v12 = 42;
  }

  *(a1 + 32) = v12;
LABEL_17:
  if (v3 != v10)
  {
    do
    {
      v13 = *v3++;
      operator delete(v13);
    }

    while (v3 != v10);
    v10 = *(a1 + 8);
    v2 = *(a1 + 16);
  }

  if (v2 != v10)
  {
    *(a1 + 16) = v2 + ((v10 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *>>::emplace_front<std::__state<char> *>(const void **a1, void *a2)
{
  v4 = a1[1];
  if (v4 == *a1)
  {
    v6 = a1[2];
    v7 = a1[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::allocator<std::__state<char> *>::allocate_at_least[abi:ne200100](v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = a1[2];
    }

    a1[1] = v5;
    a1[2] = &v6[8 * v8];
  }

  else
  {
    v5 = a1[1];
  }

  *(v5 - 1) = *a2;
  a1[1] = a1[1] - 8;
}

void std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *>>::emplace_back<std::__state<char> *&>(unint64_t *a1, void *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = &v5[-*a1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*a1] >> 2;
      }

      std::allocator<std::__state<char> *>::allocate_at_least[abi:ne200100](v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = &v9[v10];
    a1[1] = &v5[8 * v7];
    a1[2] = &v9[v10];
  }

  *v4 = *a2;
  a1[2] += 8;
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)17>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x29C260B70](exception, 17);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_basic_reg_exp<char const*>(std::basic_regex<char> *this, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 != a3)
  {
    if (*a2 == 94)
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_l_anchor(this);
      ++v3;
    }

    if (v3 != a3)
    {
      do
      {
        v6 = v3;
        v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_simple_RE<char const*>(this, v3, a3);
        v3 = v7;
      }

      while (v7 != v6);
      if (v6 != a3 && v7 + 1 == a3 && *v7 == 36)
      {
        std::basic_regex<char,std::regex_traits<char>>::__push_r_anchor(this);
        ++v3;
      }
    }

    if (v3 != a3)
    {
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)15>();
    }
  }

  return v3;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  end = a1->__end_;
  v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_branch<char const*>(a1, a2, a3);
  if (v7 == a2)
  {
LABEL_8:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)15>();
  }

  v8 = v7;
  while (v8 != a3 && *v8 == 124)
  {
    v9 = a1->__end_;
    v10 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_branch<char const*>(a1, v8 + 1, a3);
    if (v10 == v8 + 1)
    {
      goto LABEL_8;
    }

    v8 = v10;
    std::basic_regex<char,std::regex_traits<char>>::__push_alternation(a1, end, v9);
  }

  return v8;
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)14>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x29C260B70](exception, 14);
}

void std::__owns_one_state<char>::~__owns_one_state(std::__owns_one_state<char> *this)
{
  first = this->__first_;
  if (first)
  {
    (first->~__node_0)(first);
  }

  JUMPOUT(0x29C260F00);
}

{
  first = this->__first_;
  if (first)
  {
    (first->~__node_0)(first);
  }
}

void std::__owns_two_states<char>::~__owns_two_states(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  std::__owns_two_states<char>::~__owns_two_states(a1);

  JUMPOUT(0x29C260F00);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_branch<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_expression<char const*>(a1, a2, a3);
  if (v6 == a2)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)15>();
  }

  do
  {
    v7 = v6;
    v6 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_expression<char const*>(a1, v6, a3);
  }

  while (v6 != v7);
  return v7;
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)15>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x29C260B70](exception, 15);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_expression<char const*>(std::basic_regex<char> *this, unsigned __int8 *a2, unsigned __int8 *a3)
{
  end = this->__end_;
  marked_count = this->__marked_count_;
  if (a2 == a3)
  {
LABEL_25:
    v11 = std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<char const*>(this, a2, a3);
    goto LABEL_26;
  }

  v8 = *a2;
  v9 = (v8 - 36);
  if (v9 > 0x3A)
  {
    goto LABEL_13;
  }

  if (((1 << (v8 - 36)) & 0x5800000080004D1) == 0)
  {
    if (v9 == 5)
    {
      if (this->__open_count_)
      {
        goto LABEL_4;
      }

      v15 = 41;
LABEL_15:
      std::basic_regex<char,std::regex_traits<char>>::__push_char(this, v15);
      v11 = a2 + 1;
      goto LABEL_38;
    }

LABEL_13:
    if ((v8 - 123) < 2)
    {
      goto LABEL_4;
    }

    v15 = *a2;
    goto LABEL_15;
  }

LABEL_4:
  v10 = a2 + 1;
  v11 = a2;
  if (a2 + 1 == a3)
  {
    goto LABEL_22;
  }

  v12 = *a2;
  if (v12 != 92)
  {
    goto LABEL_23;
  }

  v13 = *v10;
  v14 = *v10;
  if ((v13 - 36) <= 0x3A && ((1 << (v13 - 36)) & 0x5800000080004F1) != 0 || (v13 - 123) < 3)
  {
    std::basic_regex<char,std::regex_traits<char>>::__push_char(this, v14);
    v11 = a2 + 2;
    goto LABEL_38;
  }

  if ((this->__flags_ & 0x1F0) == 0x40)
  {
    v11 = std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<char const*>(this, v10, a3, 0);
  }

  else
  {
    v16 = std::basic_regex<char,std::regex_traits<char>>::__test_back_ref(this, v14);
    v17 = 2;
    if (!v16)
    {
      v17 = 0;
    }

    v11 = &a2[v17];
  }

  if (v11 == a2)
  {
LABEL_22:
    v12 = *v11;
LABEL_23:
    if (v12 == 46)
    {
      operator new();
    }

    goto LABEL_25;
  }

LABEL_26:
  if (v11 == a2 && v11 != a3)
  {
    v18 = *v11;
    switch(v18)
    {
      case '$':
        std::basic_regex<char,std::regex_traits<char>>::__push_r_anchor(this);
        break;
      case '(':
        std::basic_regex<char,std::regex_traits<char>>::__push_begin_marked_subexpression(this);
        v19 = this->__marked_count_;
        ++this->__open_count_;
        v20 = std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<char const*>(this, (v11 + 1), a3);
        if (v20 == a3 || (v11 = v20, *v20 != 41))
        {
          std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
        }

        std::basic_regex<char,std::regex_traits<char>>::__push_end_marked_subexpression(this, v19);
        --this->__open_count_;
        break;
      case '^':
        std::basic_regex<char,std::regex_traits<char>>::__push_l_anchor(this);
        break;
      default:
        goto LABEL_37;
    }

    ++v11;
  }

LABEL_37:
  if (v11 == a2)
  {
    return v11;
  }

LABEL_38:
  v21 = this->__marked_count_ + 1;

  return std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_dupl_symbol<char const*>(this, v11, a3, end, marked_count + 1, v21);
}

void std::basic_regex<char,std::regex_traits<char>>::__push_begin_marked_subexpression(std::basic_regex<char> *this)
{
  if ((this->__flags_ & 2) == 0)
  {
    operator new();
  }
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x29C260B70](exception, 6);
}

void std::basic_regex<char,std::regex_traits<char>>::__push_end_marked_subexpression(std::basic_regex<char> *this, unsigned int a2)
{
  if ((this->__flags_ & 2) == 0)
  {
    operator new();
  }
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)8>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x29C260B70](exception, 8);
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)7>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x29C260B70](exception, 7);
}

unsigned int *std::__loop<char>::__exec_split(unsigned int *result, int a2, void *a3)
{
  *a3 = -994;
  if (*(result + 52) == a2)
  {
    a3[10] = *(result + 2);
  }

  else
  {
    a3[10] = *(result + 1);
    return std::__loop<char>::__init_repeat[abi:ne200100](result, a3);
  }

  return result;
}

uint64_t std::__end_marked_subexpression<char>::__exec(uint64_t result, uint64_t a2)
{
  *a2 = -994;
  v2 = *(a2 + 32) + 24 * (*(result + 16) - 1);
  *(v2 + 8) = *(a2 + 16);
  *(v2 + 16) = 1;
  *(a2 + 80) = *(result + 8);
  return result;
}

void std::__end_marked_subexpression<char>::~__end_marked_subexpression(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x29C260F00);
}

void (__cdecl ***std::__end_marked_subexpression<char>::~__end_marked_subexpression(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

uint64_t std::__begin_marked_subexpression<char>::__exec(uint64_t result, uint64_t a2)
{
  *a2 = -994;
  *(*(a2 + 32) + 24 * (*(result + 16) - 1)) = *(a2 + 16);
  *(a2 + 80) = *(result + 8);
  return result;
}

void std::__begin_marked_subexpression<char>::~__begin_marked_subexpression(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x29C260F00);
}

void (__cdecl ***std::__begin_marked_subexpression<char>::~__begin_marked_subexpression(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

uint64_t std::__r_anchor_multiline<char>::__exec(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) && (*(a2 + 88) & 2) == 0 || *(result + 16) == 1 && ((v3 = *v2, v3 != 13) ? (v4 = v3 == 10) : (v4 = 1), v4))
  {
    *a2 = -994;
    v5 = *(result + 8);
  }

  else
  {
    v5 = 0;
    *a2 = -993;
  }

  *(a2 + 80) = v5;
  return result;
}

void std::__r_anchor_multiline<char>::~__r_anchor_multiline(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x29C260F00);
}

void (__cdecl ***std::__r_anchor_multiline<char>::~__r_anchor_multiline(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

uint64_t std::__l_anchor_multiline<char>::__exec(uint64_t result, uint64_t a2)
{
  if (*(a2 + 92) == 1)
  {
    if (*(a2 + 16) != *(a2 + 8) || (*(a2 + 88) & 1) != 0)
    {
LABEL_12:
      v4 = 0;
      *a2 = -993;
      goto LABEL_13;
    }
  }

  else
  {
    if (*(result + 16) != 1)
    {
      goto LABEL_12;
    }

    v2 = *(*(a2 + 16) - 1);
    if (v2 != 13 && v2 != 10)
    {
      goto LABEL_12;
    }
  }

  *a2 = -994;
  v4 = *(result + 8);
LABEL_13:
  *(a2 + 80) = v4;
  return result;
}

void std::__l_anchor_multiline<char>::~__l_anchor_multiline(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x29C260F00);
}

void (__cdecl ***std::__l_anchor_multiline<char>::~__l_anchor_multiline(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)5>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x29C260B70](exception, 5);
}

_BYTE *std::basic_regex<char,std::regex_traits<char>>::__parse_collating_symbol<char const*>(uint64_t a1, _BYTE *__src, _BYTE *a3, uint64_t a4)
{
  v4 = a3 - __src - 2;
  if (a3 - __src < 2)
  {
    goto LABEL_14;
  }

  v6 = __src;
  for (i = __src; ; v6 = i)
  {
    v8 = *i++;
    if (v8 == 46 && *i == 93)
    {
      break;
    }

    if (!v4)
    {
      goto LABEL_14;
    }

    --v4;
  }

  if (v6 == a3)
  {
LABEL_14:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)5>();
  }

  std::regex_traits<char>::__lookup_collatename<char const*>(&v12, a1, __src, v6);
  if (*(a4 + 23) < 0)
  {
    operator delete(*a4);
  }

  *a4 = v12;
  v9 = v13;
  *(a4 + 16) = v13;
  v10 = HIBYTE(v9);
  if ((v10 & 0x80u) != 0)
  {
    v10 = *(a4 + 8);
  }

  if (v10 - 1 >= 2)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)1>();
  }

  return v6 + 2;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_class_escape<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t *a4, uint64_t a5)
{
  if (a2 == a3)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>();
  }

  v7 = *a2;
  if (v7 > 0x61)
  {
    if (*a2 > 0x72u)
    {
      if (v7 != 115)
      {
        if (v7 != 119)
        {
          goto LABEL_26;
        }

        *(a5 + 160) |= 0x500u;
        std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](a5, 95);
        return a2 + 1;
      }

      v9 = *(a5 + 160) | 0x4000;
    }

    else
    {
      if (v7 == 98)
      {
        if (*(a4 + 23) < 0)
        {
          a4[1] = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        *a4 = 8;
        return a2 + 1;
      }

      if (v7 != 100)
      {
        goto LABEL_26;
      }

      v9 = *(a5 + 160) | 0x400;
    }

    *(a5 + 160) = v9;
    return a2 + 1;
  }

  if (*a2 <= 0x52u)
  {
    if (!*a2)
    {
      if (*(a4 + 23) < 0)
      {
        a4[1] = 1;
        a4 = *a4;
      }

      else
      {
        *(a4 + 23) = 1;
      }

      *a4 = 0;
      return a2 + 1;
    }

    if (v7 == 68)
    {
      v8 = *(a5 + 164) | 0x400;
LABEL_23:
      *(a5 + 164) = v8;
      return a2 + 1;
    }

    goto LABEL_26;
  }

  if (v7 == 83)
  {
    v8 = *(a5 + 164) | 0x4000;
    goto LABEL_23;
  }

  if (v7 == 87)
  {
    *(a5 + 164) |= 0x500u;
    v15 = 95;
    if (*(a5 + 169) == 1)
    {
      v14 = (*(**(a5 + 24) + 40))(*(a5 + 24), 95);
      v10 = a5 + 64;
      v11 = &v14;
    }

    else
    {
      if (*(a5 + 170) != 1)
      {
        std::vector<char>::push_back[abi:ne200100](a5 + 64, &v15);
        return a2 + 1;
      }

      v13 = 95;
      v10 = a5 + 64;
      v11 = &v13;
    }

    std::vector<char>::push_back[abi:ne200100](v10, v11);
    return a2 + 1;
  }

LABEL_26:

  return std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<char const*>(a1, a2, a3, a4);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t *a4)
{
  if (a2 == a3)
  {
LABEL_78:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>();
  }

  v5 = *a2;
  if (v5 > 0x65u)
  {
    if (v5 <= 0x71u)
    {
      if (v5 == 102)
      {
        if (a4)
        {
          if (*(a4 + 23) < 0)
          {
            a4[1] = 1;
            a4 = *a4;
          }

          else
          {
            *(a4 + 23) = 1;
          }

          v9 = 12;
          goto LABEL_73;
        }

        v5 = 12;
        goto LABEL_57;
      }

      if (v5 == 110)
      {
        if (a4)
        {
          if (*(a4 + 23) < 0)
          {
            a4[1] = 1;
            a4 = *a4;
          }

          else
          {
            *(a4 + 23) = 1;
          }

          v9 = 10;
          goto LABEL_73;
        }

        v5 = 10;
        goto LABEL_57;
      }
    }

    else
    {
      switch(v5)
      {
        case 'r':
          if (a4)
          {
            if (*(a4 + 23) < 0)
            {
              a4[1] = 1;
              a4 = *a4;
            }

            else
            {
              *(a4 + 23) = 1;
            }

            v9 = 13;
            goto LABEL_73;
          }

          v5 = 13;
          goto LABEL_57;
        case 't':
          if (a4)
          {
            if (*(a4 + 23) < 0)
            {
              a4[1] = 1;
              a4 = *a4;
            }

            else
            {
              *(a4 + 23) = 1;
            }

            v9 = 9;
            goto LABEL_73;
          }

          v5 = 9;
          goto LABEL_57;
        case 'v':
          if (a4)
          {
            if (*(a4 + 23) < 0)
            {
              a4[1] = 1;
              a4 = *a4;
            }

            else
            {
              *(a4 + 23) = 1;
            }

            v9 = 11;
            goto LABEL_73;
          }

          v5 = 11;
          goto LABEL_57;
      }
    }

    goto LABEL_39;
  }

  if (v5 <= 0x5Bu)
  {
    if (v5 != 34 && v5 != 47)
    {
      goto LABEL_39;
    }

LABEL_19:
    if (a4)
    {
      if (*(a4 + 23) < 0)
      {
        a4[1] = 1;
        a4 = *a4;
      }

      else
      {
        *(a4 + 23) = 1;
      }

      *a4 = v5;
      *(a4 + 1) = 0;
      return a2 + 1;
    }

    goto LABEL_57;
  }

  switch(v5)
  {
    case '\\':
      goto LABEL_19;
    case 'a':
      if (a4)
      {
        if (*(a4 + 23) < 0)
        {
          a4[1] = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        v9 = 7;
        goto LABEL_73;
      }

      v5 = 7;
LABEL_57:
      std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v5);
      return a2 + 1;
    case 'b':
      if (a4)
      {
        if (*(a4 + 23) < 0)
        {
          a4[1] = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        v9 = 8;
LABEL_73:
        *a4 = v9;
        return a2 + 1;
      }

      v5 = 8;
      goto LABEL_57;
  }

LABEL_39:
  if ((v5 & 0xFFFFFFF8) != 0x30)
  {
    goto LABEL_78;
  }

  v6 = v5 - 48;
  v7 = a2 + 1;
  if (a2 + 1 != a3 && (*v7 & 0xF8) == 0x30)
  {
    v6 = *v7 + 8 * v6 - 48;
    v7 = a2 + 2;
    if (a2 + 2 != a3)
    {
      v8 = *v7 + 8 * v6 - 48;
      if ((*v7 & 0xF8) == 0x30)
      {
        v7 = a2 + 3;
        v6 = v8;
      }
    }
  }

  if (a4)
  {
    if (*(a4 + 23) < 0)
    {
      a4[1] = 1;
      a4 = *a4;
    }

    else
    {
      *(a4 + 23) = 1;
    }

    *a4 = v6;
    *(a4 + 1) = 0;
  }

  else
  {
    std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v6);
  }

  return v7;
}

void std::__bracket_expression<char,std::regex_traits<char>>::__add_digraph[abi:ne200100](uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 169) == 1)
  {
    v5 = (*(**(a1 + 24) + 40))(*(a1 + 24), a2);
    v11 = v5 | ((*(**(a1 + 24) + 40))(*(a1 + 24), a3) << 8);
    v6 = a1 + 112;
    v7 = &v11;
  }

  else
  {
    v8 = a2 | (a3 << 8);
    if (*(a1 + 170) == 1)
    {
      v10 = v8;
      v6 = a1 + 112;
      v7 = &v10;
    }

    else
    {
      v9 = v8;
      v6 = a1 + 112;
      v7 = &v9;
    }
  }

  std::vector<std::pair<char,char>>::push_back[abi:ne200100](v6, v7);
}

void std::vector<std::pair<char,char>>::push_back[abi:ne200100](uint64_t a1, __int16 *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = v7 >> 1;
    if (v7 >> 1 <= -2)
    {
      std::vector<ADAMAudioDataAnalysisType>::__throw_length_error[abi:ne200100]();
    }

    v9 = v3 - v6;
    if (v9 <= v8 + 1)
    {
      v10 = v8 + 1;
    }

    else
    {
      v10 = v9;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      if ((v11 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v12 = (2 * v8);
    v13 = &v12[-(v7 >> 1)];
    *v12 = *a2;
    v5 = v12 + 1;
    memcpy(v13, v6, v7);
    *a1 = v13;
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

void std::regex_traits<char>::transform<std::__wrap_iter<char *>>(int a1, uint64_t a2, _BYTE *__src, _BYTE *a4)
{
  std::string::__init_with_size[abi:ne200100]<char *,char *>(__p, __src, a4, a4 - __src);
  v5 = v8;
  if ((v8 & 0x80u) == 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if ((v8 & 0x80u) != 0)
  {
    v5 = __p[1];
  }

  (*(**(a2 + 16) + 32))(*(a2 + 16), v6, v6 + v5);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_296C5BCD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::pair<std::string,std::string>::~pair(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)9>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x29C260B70](exception, 9);
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x29C260B70](exception, 3);
}

void std::basic_regex<char,std::regex_traits<char>>::__push_char(std::basic_regex<char> *this, std::basic_regex<char>::value_type __c)
{
  flags = this->__flags_;
  if ((flags & 1) == 0)
  {
    if ((flags & 8) == 0)
    {
      operator new();
    }

    operator new();
  }

  operator new();
}

void sub_296C5BF58(_Unwind_Exception *a1)
{
  std::locale::~locale(v2 + 2);
  locale = v2[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  MEMORY[0x29C260F00](v2, v1);
  _Unwind_Resume(a1);
}

uint64_t std::__match_char<char>::__exec(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) || *v2 != *(result + 16))
  {
    v3 = 0;
    *a2 = -993;
  }

  else
  {
    *a2 = -995;
    *(a2 + 16) = v2 + 1;
    v3 = *(result + 8);
  }

  *(a2 + 80) = v3;
  return result;
}

void std::__match_char<char>::~__match_char(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x29C260F00);
}

void (__cdecl ***std::__match_char<char>::~__match_char(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

uint64_t std::__match_char_collate<char,std::regex_traits<char>>::__exec(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) || *v2 != *(result + 40))
  {
    v3 = 0;
    *a2 = -993;
  }

  else
  {
    *a2 = -995;
    *(a2 + 16) = v2 + 1;
    v3 = *(result + 8);
  }

  *(a2 + 80) = v3;
  return result;
}

void std::__match_char_collate<char,std::regex_traits<char>>::~__match_char_collate(std::locale *a1)
{
  a1->__locale_ = &unk_2A1DEE280;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x29C260F00);
}

std::locale *std::__match_char_collate<char,std::regex_traits<char>>::~__match_char_collate(std::locale *a1)
{
  a1->__locale_ = &unk_2A1DEE280;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

uint64_t std::__match_char_icase<char,std::regex_traits<char>>::__exec(uint64_t result, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3 == *(a2 + 24) || (v4 = result, result = (*(**(result + 24) + 40))(*(result + 24), *v3), *(v4 + 40) != result))
  {
    v5 = 0;
    *a2 = -993;
  }

  else
  {
    *a2 = -995;
    ++*(a2 + 16);
    v5 = *(v4 + 8);
  }

  *(a2 + 80) = v5;
  return result;
}

void std::__match_char_icase<char,std::regex_traits<char>>::~__match_char_icase(std::locale *a1)
{
  a1->__locale_ = &unk_2A1DEE250;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x29C260F00);
}

std::locale *std::__match_char_icase<char,std::regex_traits<char>>::~__match_char_icase(std::locale *a1)
{
  a1->__locale_ = &unk_2A1DEE250;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t *a4)
{
  v4 = a2;
  if (a2 == a3)
  {
    return v4;
  }

  v5 = *a2;
  if (v5 > 0x71)
  {
    if (*a2 > 0x74u)
    {
      if (v5 == 117)
      {
        if (a2 + 1 == a3)
        {
          goto LABEL_97;
        }

        v8 = a2[1];
        if ((v8 & 0xF8) != 0x30 && (v8 & 0xFE) != 0x38 && (v8 | 0x20u) - 97 >= 6)
        {
          goto LABEL_97;
        }

        v4 = a2 + 2;
        if (a2 + 2 == a3)
        {
          goto LABEL_97;
        }

        v9 = *v4;
        if ((v9 & 0xF8) != 0x30 && (v9 & 0xFE) != 0x38 && (v9 | 0x20u) - 97 >= 6)
        {
          goto LABEL_97;
        }

LABEL_43:
        if (v4 + 1 == a3)
        {
          goto LABEL_97;
        }

        v10 = v4[1];
        v11 = -48;
        if ((v10 & 0xF8) != 0x30 && (v10 & 0xFE) != 0x38)
        {
          v10 |= 0x20u;
          if ((v10 - 97) >= 6u)
          {
            goto LABEL_97;
          }

          v11 = -87;
        }

        if (v4 + 2 == a3)
        {
LABEL_97:
          std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>();
        }

        v12 = v4[2];
        v13 = -48;
        if ((v12 & 0xF8) != 0x30 && (v12 & 0xFE) != 0x38)
        {
          v12 |= 0x20u;
          if ((v12 - 97) >= 6u)
          {
            goto LABEL_97;
          }

          v13 = -87;
        }

        v14 = v13 + v12 + 16 * (v11 + v10);
        if (a4)
        {
          if (*(a4 + 23) < 0)
          {
            a4[1] = 1;
            a4 = *a4;
          }

          else
          {
            *(a4 + 23) = 1;
          }

          *a4 = v14;
          *(a4 + 1) = 0;
        }

        else
        {
          std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v14);
        }

        v4 += 3;
        return v4;
      }

      if (v5 != 118)
      {
        if (v5 != 120)
        {
          goto LABEL_71;
        }

        goto LABEL_43;
      }

      if (a4)
      {
        if (*(a4 + 23) < 0)
        {
          a4[1] = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        v16 = 11;
LABEL_89:
        *a4 = v16;
        return ++v4;
      }

      v15 = 11;
      goto LABEL_76;
    }

    if (v5 == 114)
    {
      if (a4)
      {
        if (*(a4 + 23) < 0)
        {
          a4[1] = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        v16 = 13;
        goto LABEL_89;
      }

      v15 = 13;
      goto LABEL_76;
    }

    if (v5 == 116)
    {
      if (a4)
      {
        if (*(a4 + 23) < 0)
        {
          a4[1] = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        v16 = 9;
        goto LABEL_89;
      }

      v15 = 9;
LABEL_76:
      std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v15);
      return ++v4;
    }

LABEL_71:
    v15 = v5;
    if (v5 < 0 || (a1->__traits_.__ct_->__tab_[v5] & 0x500) == 0)
    {
      if (a4)
      {
        if (*(a4 + 23) < 0)
        {
          a4[1] = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        *a4 = v5;
        *(a4 + 1) = 0;
        return ++v4;
      }

      goto LABEL_76;
    }

    goto LABEL_97;
  }

  if (*a2 > 0x65u)
  {
    if (v5 == 102)
    {
      if (a4)
      {
        if (*(a4 + 23) < 0)
        {
          a4[1] = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        v16 = 12;
        goto LABEL_89;
      }

      v15 = 12;
      goto LABEL_76;
    }

    if (v5 == 110)
    {
      if (a4)
      {
        if (*(a4 + 23) < 0)
        {
          a4[1] = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        v16 = 10;
        goto LABEL_89;
      }

      v15 = 10;
      goto LABEL_76;
    }

    goto LABEL_71;
  }

  if (v5 == 48)
  {
    if (a4)
    {
      if (*(a4 + 23) < 0)
      {
        a4[1] = 1;
        a4 = *a4;
      }

      else
      {
        *(a4 + 23) = 1;
      }

      *a4 = 0;
      return ++v4;
    }

    v15 = 0;
    goto LABEL_76;
  }

  if (v5 != 99)
  {
    if (v5 == 95)
    {
      goto LABEL_97;
    }

    goto LABEL_71;
  }

  if (a2 + 1 == a3)
  {
    goto LABEL_97;
  }

  v6 = a2[1];
  if (((v6 & 0xDF) - 65) > 0x19u)
  {
    goto LABEL_97;
  }

  v7 = v6 & 0x1F;
  if (a4)
  {
    if (*(a4 + 23) < 0)
    {
      a4[1] = 1;
      a4 = *a4;
    }

    else
    {
      *(a4 + 23) = 1;
    }

    *a4 = v7;
    *(a4 + 1) = 0;
  }

  else
  {
    std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v7);
  }

  v4 += 2;
  return v4;
}

void std::regex_traits<char>::__lookup_collatename<char const*>(uint64_t a1, uint64_t a2, _BYTE *__src, _BYTE *a4)
{
  std::string::__init_with_size[abi:ne200100]<char *,char *>(&__s, __src, a4, a4 - __src);
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    if (!__s.__r_.__value_.__l.__size_)
    {
      goto LABEL_9;
    }

    p_s = __s.__r_.__value_.__r.__words[0];
  }

  else
  {
    if (!*(&__s.__r_.__value_.__s + 23))
    {
      return;
    }

    p_s = &__s;
  }

  std::__get_collation_name(&v11, p_s);
  *a1 = *&v11.__r_.__value_.__l.__data_;
  v7 = v11.__r_.__value_.__r.__words[2];
  *(a1 + 16) = *(&v11.__r_.__value_.__l + 2);
  v8 = HIBYTE(v7);
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a1 + 8);
  }

  if (v8)
  {
    goto LABEL_9;
  }

  if ((SHIBYTE(__s.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    if (__s.__r_.__value_.__l.__size_ >= 3)
    {
      goto LABEL_9;
    }
  }

  else if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) >= 3)
  {
    return;
  }

  (*(**(a2 + 16) + 32))(&v11);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  *a1 = v11;
  if ((*(a1 + 23) & 0x80000000) == 0)
  {
    v9 = *(a1 + 23);
    if (v9 != 12 && v9 != 1)
    {
      *a1 = 0;
      *(a1 + 23) = 0;
      goto LABEL_9;
    }

    goto LABEL_23;
  }

  v10 = *(a1 + 8);
  if (v10 == 1 || v10 == 12)
  {
LABEL_23:
    std::string::operator=(a1, &__s);
    goto LABEL_9;
  }

  **a1 = 0;
  *(a1 + 8) = 0;
LABEL_9:
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }
}

void sub_296C5C9B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 + 23) < 0)
  {
    operator delete(*v17);
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)1>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x29C260B70](exception, 1);
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)2>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x29C260B70](exception, 2);
}

void std::allocator<std::string>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__split_buffer<std::string>::~__split_buffer(std::__split_buffer<std::string> *this)
{
  begin = this->__begin_;
  end = this->__end_;
  if (end != begin)
  {
    do
    {
      v4 = end - 1;
      this->__end_ = end - 1;
      if (SHIBYTE(end[-1].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v4->__r_.__value_.__l.__data_);
        v4 = this->__end_;
      }

      end = v4;
    }

    while (v4 != begin);
  }

  if (this->__first_)
  {
    operator delete(this->__first_);
  }
}

void std::regex_traits<char>::transform<char *>(int a1, uint64_t a2, _BYTE *__src, _BYTE *a4)
{
  std::string::__init_with_size[abi:ne200100]<char *,char *>(__p, __src, a4, a4 - __src);
  v5 = v8;
  if ((v8 & 0x80u) == 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if ((v8 & 0x80u) != 0)
  {
    v5 = __p[1];
  }

  (*(**(a2 + 16) + 32))(*(a2 + 16), v6, v6 + v5);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_296C5CBF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::regex_traits<char>::__transform_primary<char *>(uint64_t a1, uint64_t a2, _BYTE *__src, _BYTE *a4)
{
  std::string::__init_with_size[abi:ne200100]<char *,char *>(__p, __src, a4, a4 - __src);
  v6 = v12;
  if ((v12 & 0x80u) == 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  if ((v12 & 0x80u) != 0)
  {
    v6 = __p[1];
  }

  (*(**(a2 + 16) + 32))(*(a2 + 16), v7, v7 + v6);
  v8 = *(a1 + 23);
  v9 = v8;
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a1 + 8);
  }

  if (v8 != 1)
  {
    if (v8 == 12)
    {
      if (v9 >= 0)
      {
        v10 = a1;
      }

      else
      {
        v10 = *a1;
      }

      v10[11] = v10[3];
    }

    else if (v9 < 0)
    {
      **a1 = 0;
      *(a1 + 8) = 0;
    }

    else
    {
      *a1 = 0;
      *(a1 + 23) = 0;
    }
  }

  if (v12 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_296C5CD14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::string::__init_with_size[abi:ne200100]<char *,char *>(void *__dst, _BYTE *__src, _BYTE *a3, unint64_t a4)
{
  if (a4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v4 = __dst;
  if (a4 > 0x16)
  {
    operator new();
  }

  *(__dst + 23) = a4;
  v5 = a3 - __src;
  if (a3 != __src)
  {
    __dst = memmove(__dst, __src, v5);
  }

  *(v4 + v5) = 0;
  return __dst;
}

uint64_t std::__match_any<char>::__exec(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) || !*v2)
  {
    v3 = 0;
    *a2 = -993;
  }

  else
  {
    *a2 = -995;
    *(a2 + 16) = v2 + 1;
    v3 = *(result + 8);
  }

  *(a2 + 80) = v3;
  return result;
}

void std::__match_any<char>::~__match_any(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x29C260F00);
}

void (__cdecl ***std::__match_any<char>::~__match_any(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

BOOL std::basic_regex<char,std::regex_traits<char>>::__test_back_ref(std::basic_regex<char> *this, char a2)
{
  if ((a2 & 0xF8) != 0x30 && (a2 & 0xFE) != 0x38 || a2 - 49 > 8)
  {
    return 0;
  }

  if (a2 - 48 > this->__marked_count_)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)4>();
  }

  std::basic_regex<char,std::regex_traits<char>>::__push_back_ref(this, a2 - 48);
  return 1;
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)4>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x29C260B70](exception, 4);
}

void std::basic_regex<char,std::regex_traits<char>>::__push_back_ref(std::basic_regex<char> *this, int __i)
{
  flags = this->__flags_;
  if ((flags & 1) == 0)
  {
    if ((flags & 8) == 0)
    {
      operator new();
    }

    operator new();
  }

  operator new();
}

unsigned int *std::__back_ref<char>::__exec(unsigned int *result, uint64_t a2)
{
  v2 = result[4];
  v3 = *(a2 + 32);
  if (0xAAAAAAAAAAAAAAABLL * ((*(a2 + 40) - v3) >> 3) < v2)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)4>();
  }

  v5 = v3 + 24 * (v2 - 1);
  if (*(v5 + 16) == 1 && (v6 = result, result = *v5, v7 = *(v5 + 8) - *v5, v8 = *(a2 + 16), *(a2 + 24) - v8 >= v7) && (result = memcmp(result, *(a2 + 16), v7), !result))
  {
    *a2 = -994;
    *(a2 + 16) = v8 + v7;
    v9 = *(v6 + 1);
  }

  else
  {
    v9 = 0;
    *a2 = -993;
  }

  *(a2 + 80) = v9;
  return result;
}

void std::__back_ref<char>::~__back_ref(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x29C260F00);
}

void (__cdecl ***std::__back_ref<char>::~__back_ref(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

uint64_t std::__back_ref_collate<char,std::regex_traits<char>>::__exec(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32) + 24 * (*(result + 40) - 1);
  if (*(v2 + 16) == 1)
  {
    v3 = *v2;
    v4 = *(v2 + 8) - *v2;
    v5 = *(a2 + 16);
    if (*(a2 + 24) - v5 >= v4)
    {
      if (v4 < 1)
      {
LABEL_9:
        *a2 = -994;
        *(a2 + 16) = v5 + v4;
        v6 = *(result + 8);
        goto LABEL_4;
      }

      v7 = v4;
      v8 = *(a2 + 16);
      while (1)
      {
        v10 = *v3++;
        v9 = v10;
        v11 = *v8++;
        if (v9 != v11)
        {
          break;
        }

        if (!--v7)
        {
          goto LABEL_9;
        }
      }
    }
  }

  v6 = 0;
  *a2 = -993;
LABEL_4:
  *(a2 + 80) = v6;
  return result;
}

void std::__back_ref_collate<char,std::regex_traits<char>>::~__back_ref_collate(std::locale *a1)
{
  a1->__locale_ = &unk_2A1DEE310;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x29C260F00);
}

std::locale *std::__back_ref_collate<char,std::regex_traits<char>>::~__back_ref_collate(std::locale *a1)
{
  a1->__locale_ = &unk_2A1DEE310;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

uint64_t std::__back_ref_icase<char,std::regex_traits<char>>::__exec(uint64_t result, uint64_t a2)
{
  v3 = *(a2 + 32) + 24 * (*(result + 40) - 1);
  if (*(v3 + 16) == 1)
  {
    v4 = *(v3 + 8) - *v3;
    v5 = *(a2 + 16);
    if (*(a2 + 24) - v5 >= v4)
    {
      v7 = result;
      if (v4 < 1)
      {
LABEL_10:
        *a2 = -994;
        *(a2 + 16) = v5 + v4;
        v6 = *(v7 + 8);
        goto LABEL_4;
      }

      v8 = 0;
      while (1)
      {
        v9 = (*(**(v7 + 24) + 40))(*(v7 + 24), *(*v3 + v8));
        result = (*(**(v7 + 24) + 40))(*(v7 + 24), *(*(a2 + 16) + v8));
        if (v9 != result)
        {
          break;
        }

        if (v4 == ++v8)
        {
          v5 = *(a2 + 16);
          goto LABEL_10;
        }
      }
    }
  }

  v6 = 0;
  *a2 = -993;
LABEL_4:
  *(a2 + 80) = v6;
  return result;
}

void std::__back_ref_icase<char,std::regex_traits<char>>::~__back_ref_icase(std::locale *a1)
{
  a1->__locale_ = &unk_2A1DEE2E0;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x29C260F00);
}

std::locale *std::__back_ref_icase<char,std::regex_traits<char>>::~__back_ref_icase(std::locale *a1)
{
  a1->__locale_ = &unk_2A1DEE2E0;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_simple_RE<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 != a3)
  {
    end = a1->__end_;
    marked_count = a1->__marked_count_;
    v9 = a2 + 1;
    v8 = *a2;
    if ((a2 + 1 != a3 || v8 != 36) && ((v8 - 46) > 0x2E || ((1 << (v8 - 46)) & 0x600000000001) == 0))
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v8);
LABEL_29:
      if (v9 == a3)
      {
        return v9;
      }

      v19 = a1->__marked_count_ + 1;
      v20 = *v9;
      if (v20 == 42)
      {
        std::basic_regex<char,std::regex_traits<char>>::__push_loop(a1, 0, 0xFFFFFFFFFFFFFFFFLL, end, marked_count + 1, a1->__marked_count_ + 1, 1);
        return v9 + 1;
      }

      if (v9 + 1 == a3 || v20 != 92 || v9[1] != 123)
      {
        return v9;
      }

      LODWORD(__max) = 0;
      v21 = std::basic_regex<char,std::regex_traits<char>>::__parse_DUP_COUNT<char const*>(v9 + 2, a3, &__max);
      if (v21 == v9 + 2)
      {
        goto LABEL_55;
      }

      if (v21 != a3)
      {
        v22 = v21 + 1;
        v23 = *v21;
        if (v23 == 44)
        {
          v31 = -1;
          v24 = std::basic_regex<char,std::regex_traits<char>>::__parse_DUP_COUNT<char const*>(v21 + 1, a3, &v31);
          if (v24 != a3)
          {
            v25 = v24;
            if (v24 + 1 != a3 && *v24 == 92)
            {
              v26 = v24[1];
              v27 = v26 == 125;
              if (v26 == 125)
              {
                v28 = v31;
                if (v31 == -1)
                {
                  v29 = a1;
                  v28 = -1;
                  goto LABEL_52;
                }

                if (v31 >= __max)
                {
                  v29 = a1;
LABEL_52:
                  std::basic_regex<char,std::regex_traits<char>>::__push_loop(v29, __max, v28, end, marked_count + 1, v19, 1);
                  return &v25[2 * v27];
                }

LABEL_55:
                std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)8>();
              }
            }
          }
        }

        else if (v22 != a3 && v23 == 92 && *v22 == 125)
        {
          v3 = v21 + 2;
          std::basic_regex<char,std::regex_traits<char>>::__push_loop(a1, __max, __max, end, marked_count + 1, v19, 1);
          return v3;
        }
      }

      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)7>();
    }

    v11 = std::basic_regex<char,std::regex_traits<char>>::__parse_QUOTED_CHAR<char const*>(a1, a2, a3);
    v9 = v11;
    if (v11 == v3)
    {
      if (*v11 == 46)
      {
        operator new();
      }

      v9 = std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<char const*>(a1, v3, a3);
    }

    if (v9 == v3 && v9 != a3 && v9 + 1 != a3 && *v9 == 92)
    {
      v12 = v9[1];
      if (v12 == 40)
      {
        v13 = v9 + 2;
        std::basic_regex<char,std::regex_traits<char>>::__push_begin_marked_subexpression(a1);
        v14 = a1->__marked_count_;
        do
        {
          v15 = v13;
          v16 = std::basic_regex<char,std::regex_traits<char>>::__parse_simple_RE<char const*>(a1, v13, a3);
          v13 = v16;
        }

        while (v16 != v15);
        if (v15 == a3 || v16 + 1 == a3 || *v16 != 92 || v16[1] != 41)
        {
          std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
        }

        v9 = v16 + 2;
        std::basic_regex<char,std::regex_traits<char>>::__push_end_marked_subexpression(a1, v14);
      }

      else
      {
        v17 = std::basic_regex<char,std::regex_traits<char>>::__test_back_ref(a1, v12);
        v18 = 2;
        if (!v17)
        {
          v18 = 0;
        }

        v9 += v18;
      }
    }

    if (v9 != v3)
    {
      goto LABEL_29;
    }
  }

  return v3;
}

_BYTE *std::basic_regex<char,std::regex_traits<char>>::__parse_QUOTED_CHAR<char const*>(std::basic_regex<char> *a1, _BYTE *a2, _BYTE *a3)
{
  v3 = a2;
  if (a2 != a3 && a2 + 1 != a3 && *a2 == 92)
  {
    v4 = a2[1];
    if ((v4 - 36) <= 0x3A && ((1 << (v4 - 36)) & 0x580000000000441) != 0)
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v4);
      v3 += 2;
    }
  }

  return v3;
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)11>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x29C260B70](exception, 11);
}

void std::__match_any_but_newline<char>::~__match_any_but_newline(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x29C260F00);
}

void (__cdecl ***std::__match_any_but_newline<char>::~__match_any_but_newline(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

void std::__lookahead<char,std::regex_traits<char>>::__exec(uint64_t a1, uint64_t a2)
{
  v19 = 0;
  v20 = 0;
  v21 = 0;
  memset(&v22, 0, 17);
  v23 = 0;
  v24 = 0;
  memset(&__p, 0, sizeof(__p));
  v4 = (*(a1 + 44) + 1);
  v5 = *(a2 + 16);
  v18.first = *(a2 + 24);
  v18.second = v18.first;
  v18.matched = 0;
  std::vector<std::sub_match<char const*>>::assign(&__p, v4, &v18);
  v19 = v5;
  v20 = v5;
  v21 = 0;
  v22 = v18;
  v24 = v5;
  v23 = 1;
  v6 = *(a2 + 16);
  if (v6 == *(a2 + 8))
  {
    v7 = *(a2 + 92);
  }

  else
  {
    v7 = 0;
  }

  if (*(a1 + 84) == std::basic_regex<char,std::regex_traits<char>>::__match_at_start_ecma<std::allocator<std::sub_match<char const*>>>(a1 + 16, v6, *(a2 + 24), &__p, *(a2 + 88) & 0xFBF | 0x40u, v7))
  {
    *a2 = -993;
    *(a2 + 80) = 0;
    begin = __p.__begin_;
    goto LABEL_10;
  }

  *a2 = -994;
  *(a2 + 80) = *(a1 + 8);
  begin = __p.__begin_;
  v9 = 0xAAAAAAAAAAAAAAABLL * ((__p.__end_ - __p.__begin_) >> 3);
  if (v9 < 2)
  {
LABEL_10:
    if (!begin)
    {
      return;
    }

    goto LABEL_11;
  }

  v10 = *(a1 + 80);
  v11 = *(a2 + 32);
  v12 = 2;
  v13 = 1;
  do
  {
    v14 = &begin[v13];
    v15 = v11 + 24 * (v10 + v12 - 2);
    *v15 = v14->std::pair<const char *, const char *>;
    *(v15 + 16) = v14->matched;
    v13 = v12;
  }

  while (v9 > v12++);
LABEL_11:

  operator delete(begin);
}

void sub_296C5DEFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__lookahead<char,std::regex_traits<char>>::~__lookahead(std::locale *a1)
{
  a1->__locale_ = &unk_2A1DEE1D8;
  locale = a1[8].__locale_;
  if (locale)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](locale);
  }

  std::locale::~locale(a1 + 2);
  v3 = a1[1].__locale_;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  JUMPOUT(0x29C260F00);
}

std::locale *std::__lookahead<char,std::regex_traits<char>>::~__lookahead(std::locale *a1)
{
  a1->__locale_ = &unk_2A1DEE1D8;
  locale = a1[8].__locale_;
  if (locale)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](locale);
  }

  std::locale::~locale(a1 + 2);
  v3 = a1[1].__locale_;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

uint64_t std::__word_boundary<char,std::regex_traits<char>>::__exec(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(a2 + 24);
  if (v2 == v3)
  {
    goto LABEL_17;
  }

  v4 = *(a2 + 16);
  if (v4 == v3)
  {
    if ((*(a2 + 88) & 8) == 0)
    {
      v6 = *(v4 - 1);
      goto LABEL_13;
    }

LABEL_17:
    v10 = 0;
    goto LABEL_25;
  }

  if (v4 == v2)
  {
    v5 = *(a2 + 88);
    if ((v5 & 0x80) == 0)
    {
      if ((v5 & 4) == 0)
      {
        v6 = *v4;
LABEL_13:
        if (v6 == 95 || (v6 & 0x80) == 0 && (*(*(*(result + 24) + 16) + 4 * v6) & 0x500) != 0)
        {
          v10 = 1;
          goto LABEL_25;
        }

        goto LABEL_17;
      }

      goto LABEL_17;
    }
  }

  v7 = *(v4 - 1);
  v8 = *v4;
  v9 = v7 == 95 || (v7 & 0x80) == 0 && (*(*(*(result + 24) + 16) + 4 * v7) & 0x500) != 0;
  v11 = v8 == 95 || (v8 & 0x80) == 0 && (*(*(*(result + 24) + 16) + 4 * v8) & 0x500) != 0;
  v10 = v9 != v11;
LABEL_25:
  if (*(result + 40) == v10)
  {
    v12 = 0;
    v13 = -993;
  }

  else
  {
    v12 = *(result + 8);
    v13 = -994;
  }

  *a2 = v13;
  *(a2 + 80) = v12;
  return result;
}

void std::__word_boundary<char,std::regex_traits<char>>::~__word_boundary(std::locale *a1)
{
  a1->__locale_ = &unk_2A1DEE1A8;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x29C260F00);
}

std::locale *std::__word_boundary<char,std::regex_traits<char>>::~__word_boundary(std::locale *a1)
{
  a1->__locale_ = &unk_2A1DEE1A8;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void std::__shared_ptr_pointer<std::__empty_state<char> *,std::shared_ptr<std::__empty_state<char>>::__shared_ptr_default_delete<std::__empty_state<char>,std::__empty_state<char>>,std::allocator<std::__empty_state<char>>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C260F00);
}

void (__cdecl ***std::__empty_state<char>::~__empty_state(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

CFStringRef *ADAM::copyDeviceInfo(CFStringRef *result, CFStringRef *a2)
{
  if (a2)
  {
    v3 = result;
    if (*result)
    {
      *a2 = CFStringCreateCopy(0, *result);
    }

    v4 = v3[1];
    if (v4)
    {
      a2[1] = CFStringCreateCopy(0, v4);
    }

    v5 = v3[2];
    if (v5)
    {
      a2[2] = CFStringCreateCopy(0, v5);
    }

    v6 = v3[3];
    if (v6)
    {
      a2[3] = CFStringCreateCopy(0, v6);
    }

    v7 = v3[5];
    a2[4] = v3[4];
    result = 0;
    if (v7)
    {
      result = CFDictionaryCreateCopy(0, v7);
    }

    a2[5] = result;
  }

  return result;
}

void ADAM::logDeviceInfo(uint64_t a1)
{
  v26 = *MEMORY[0x29EDCA608];
  if (ADAM::ADAMLogScope(void)::once != -1)
  {
    dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
  }

  if (ADAM::ADAMLogScope(void)::scope)
  {
    v2 = *ADAM::ADAMLogScope(void)::scope;
    if (!v2)
    {
      return;
    }
  }

  else
  {
    v2 = MEMORY[0x29EDCA988];
    v3 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = @"NULL";
    v5 = *a1;
    v6 = *(a1 + 8);
    if (!*a1)
    {
      v5 = @"NULL";
    }

    if (!v6)
    {
      v6 = @"NULL";
    }

    v7 = *(a1 + 16);
    if (!v7)
    {
      v7 = @"NULL";
    }

    if (*(a1 + 24))
    {
      v4 = *(a1 + 24);
    }

    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v10 = 136316930;
    v11 = "ADAMUtil.cpp";
    v12 = 1024;
    v13 = 138;
    v14 = 2112;
    v15 = v5;
    v16 = 2112;
    v17 = v6;
    v18 = 2112;
    v19 = v7;
    v20 = 2112;
    v21 = v4;
    v22 = 2048;
    v23 = v8;
    v24 = 2112;
    v25 = v9;
    _os_log_impl(&dword_296C34000, v2, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Device { name: %@  manufacture: %@ model: %@ UUID: %@ device flag: %0llx volume curve: %@ }", &v10, 0x4Eu);
  }
}

uint64_t ADAM::haeMeasurementEnabled(ADAM *this, char a2)
{
  v3 = this;
  ADAM::Parameters::instance(this);
  Param = ADAM::Parameters::GetParamValue<BOOL>(0xCu);
  v5 = Param;
  ADAM::Parameters::instance(Param);
  v6 = ADAM::Parameters::GetParamValue<BOOL>(3u);
  v7 = v6;
  ADAM::Parameters::instance(v6);
  v8 = ADAM::Parameters::GetParamValue<BOOL>(2u);
  if (v5 && (a2 & 1) != 0)
  {
    return 1;
  }

  else
  {
    return v8 & (v3 | v7 & v5);
  }
}

uint64_t ADAM::absoluteTimeFromCMTimeRange(ADAM *this, uint64_t a2, CMTimeRange *a3, double a4, double a5, double a6)
{
  v6 = a3;
  if (ADAM::getMachTimeBaseInfo(void)::onceToken != -1)
  {
    dispatch_once(&ADAM::getMachTimeBaseInfo(void)::onceToken, &__block_literal_global_23);
  }

  LODWORD(a6) = ADAM::getMachTimeBaseInfo(void)::timebase_info;
  return this + (a2 / v6 * 1000000000.0 * (*algn_2A1396C0C | 0x41CDCD6500000000uLL) / *&a6);
}

id ADAM::getSampleDateInterval(ADAM *this, double a2)
{
  v6 = MEMORY[0x29EDB8DB0];
  if (ADAM::getMachTimeBaseInfo(void)::onceToken != -1)
  {
    dispatch_once(&ADAM::getMachTimeBaseInfo(void)::onceToken, &__block_literal_global_23);
  }

  LODWORD(v3) = ADAM::getMachTimeBaseInfo(void)::timebase_info;
  LODWORD(v2) = *algn_2A1396C0C;
  v7 = [MEMORY[0x29EDB8DB0] date];
  [v7 timeIntervalSinceReferenceDate];
  v9 = v8;
  v10 = [MEMORY[0x29EDBA0B0] processInfo];
  [v10 systemUptime];
  v12 = v9 - v11;

  v13 = [v6 dateWithTimeIntervalSinceReferenceDate:this * v3 / v2 / 1000000000.0 + v12];
  v14 = [v13 dateByAddingTimeInterval:-a2];
  v15 = [objc_alloc(MEMORY[0x29EDB9F80]) initWithStartDate:v14 endDate:v13];

  return v15;
}

id ADAM::LocalizationUtilityGetBundle(ADAM *this)
{
  if (ADAM::LocalizationUtilityGetBundle(void)::once != -1)
  {
    dispatch_once(&ADAM::LocalizationUtilityGetBundle(void)::once, &__block_literal_global_27);
  }

  v2 = ADAM::LocalizationUtilityGetBundle(void)::_frameworkBundle;

  return v2;
}

uint64_t ___ZN4ADAM28LocalizationUtilityGetBundleEv_block_invoke()
{
  ADAM::LocalizationUtilityGetBundle(void)::_frameworkBundle = [MEMORY[0x29EDB9F48] bundleWithPath:@"/System/Library/PrivateFrameworks/AudioDataAnalysis.framework"];

  return MEMORY[0x2A1C71028]();
}

void ___ZN4ADAM23isSpeechAnalysisEnabledEv_block_invoke()
{
  if (ADAM::getDeviceClass(void)::once != -1)
  {
    dispatch_once(&ADAM::getDeviceClass(void)::once, &__block_literal_global_56);
  }

  v1 = ADAM::getDeviceClass(void)::deviceClass;
  if (([v1 isEqualToString:@"iPhone"] & 1) != 0 || objc_msgSend(v1, "isEqualToString:", @"iPod"))
  {
    if (ADAM::isXCTest(void)::once != -1)
    {
      dispatch_once(&ADAM::isXCTest(void)::once, &__block_literal_global_61);
    }

    if (ADAM::isXCTest(void)::isXCTest)
    {
      goto LABEL_11;
    }

    if (ADAM::hasEntitlementForSensorkitSiri(void)::once != -1)
    {
      dispatch_once(&ADAM::hasEntitlementForSensorkitSiri(void)::once, &__block_literal_global_74);
    }

    if (ADAM::hasEntitlementForSensorkitSiri(void)::ans)
    {
LABEL_11:
      v0 = 1;
    }

    else
    {
      if (ADAM::hasEntitlementForSensorkitTelephony(void)::once != -1)
      {
        dispatch_once(&ADAM::hasEntitlementForSensorkitTelephony(void)::once, &__block_literal_global_79);
      }

      v0 = ADAM::hasEntitlementForSensorkitTelephony(void)::ans;
    }
  }

  else
  {
    v0 = 0;
  }

  ADAM::isSpeechAnalysisEnabled(void)::ans = v0 & 1;
}

void ___ZN4ADAM35hasEntitlementForSensorkitTelephonyEv_block_invoke(ADAM *a1)
{
  v1 = ADAM::getSensorkitEntitlements(a1);
  ADAM::hasEntitlementForSensorkitTelephony(void)::ans = [v1 containsObject:@"com.apple.SensorKit.soundDetection.telephony"];
}

id ADAM::getSensorkitEntitlements(ADAM *this)
{
  if (ADAM::getSensorkitEntitlements(void)::once != -1)
  {
    dispatch_once(&ADAM::getSensorkitEntitlements(void)::once, &__block_literal_global_68);
  }

  v2 = ADAM::getSensorkitEntitlements(void)::skEntitlements;

  return v2;
}

void ___ZN4ADAM24getSensorkitEntitlementsEv_block_invoke()
{
  v23 = *MEMORY[0x29EDCA608];
  v0 = SecTaskCreateFromSelf(*MEMORY[0x29EDB8ED8]);
  if (v0)
  {
    v1 = v0;
    error = 0;
    v2 = SecTaskCopyValueForEntitlement(v0, @"com.apple.sensorkit.writer.allow", &error);
    v3 = ADAM::getSensorkitEntitlements(void)::skEntitlements;
    ADAM::getSensorkitEntitlements(void)::skEntitlements = v2;

    if (ADAM::getSensorkitEntitlements(void)::skEntitlements && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      if (ADAM::ADAMLogScope(void)::once != -1)
      {
        dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
      }

      if (ADAM::ADAMLogScope(void)::scope)
      {
        v4 = *ADAM::ADAMLogScope(void)::scope;
        if (!v4)
        {
          goto LABEL_31;
        }
      }

      else
      {
        v4 = MEMORY[0x29EDCA988];
        v11 = MEMORY[0x29EDCA988];
      }

      if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
LABEL_30:

LABEL_31:
        CFRelease(v1);
        return;
      }

      *buf = 136315650;
      v14 = "ADAMUtil.cpp";
      v15 = 1024;
      v16 = 380;
      v17 = 2112;
      v18 = ADAM::getSensorkitEntitlements(void)::skEntitlements;
      v7 = "%25s:%-5d SK entitlements %@";
      v8 = v4;
      v9 = 28;
    }

    else
    {
      if (ADAM::ADAMLogScope(void)::once != -1)
      {
        dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
      }

      if (ADAM::ADAMLogScope(void)::scope)
      {
        v4 = *ADAM::ADAMLogScope(void)::scope;
        if (!v4)
        {
          goto LABEL_31;
        }
      }

      else
      {
        v4 = MEMORY[0x29EDCA988];
        v6 = MEMORY[0x29EDCA988];
      }

      if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_30;
      }

      *buf = 136316162;
      v14 = "ADAMUtil.cpp";
      v15 = 1024;
      v16 = 378;
      v17 = 2112;
      v18 = ADAM::getSensorkitEntitlements(void)::skEntitlements;
      v19 = 2112;
      v20 = @"com.apple.sensorkit.writer.allow";
      v21 = 2112;
      v22 = error;
      v7 = "%25s:%-5d Unexpected value %@ for %@ entitlement: %@";
      v8 = v4;
      v9 = 48;
    }

    _os_log_impl(&dword_296C34000, v8, OS_LOG_TYPE_DEFAULT, v7, buf, v9);
    goto LABEL_30;
  }

  if (ADAM::ADAMLogScope(void)::once != -1)
  {
    dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
  }

  if (ADAM::ADAMLogScope(void)::scope)
  {
    v5 = *ADAM::ADAMLogScope(void)::scope;
    if (!v5)
    {
      return;
    }
  }

  else
  {
    v5 = MEMORY[0x29EDCA988];
    v10 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v14 = "ADAMUtil.cpp";
    v15 = 1024;
    v16 = 385;
    _os_log_impl(&dword_296C34000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d NULL value returned from SecTaskCreateFromSelf", buf, 0x12u);
  }
}

void ___ZN4ADAM30hasEntitlementForSensorkitSiriEv_block_invoke(ADAM *a1)
{
  v1 = ADAM::getSensorkitEntitlements(a1);
  ADAM::hasEntitlementForSensorkitSiri(void)::ans = [v1 containsObject:@"com.apple.SensorKit.soundDetection.siri"];
}

const char *___ZN4ADAM8isXCTestEv_block_invoke()
{
  v0 = [MEMORY[0x29EDBA0B0] processInfo];
  v1 = [v0 processName];
  v2 = [v1 isEqualToString:@"xctest"];

  result = getenv("XCTEST");
  if (result)
  {
    result = strcmp(result, "YES");
    v4 = result == 0;
  }

  else
  {
    v4 = 0;
  }

  ADAM::isXCTest(void)::isXCTest = (v2 | v4) & 1;
  return result;
}

uint64_t ___ZN4ADAM14getDeviceClassEv_block_invoke()
{
  ADAM::getDeviceClass(void)::deviceClass = MGGetStringAnswer();

  return MEMORY[0x2A1C71028]();
}

void ___ZN4ADAM20isProcessCorespeechdEv_block_invoke()
{
  v1 = [MEMORY[0x29EDBA0B0] processInfo];
  v0 = [v1 processName];
  ADAM::isProcessCorespeechd(void)::isCorespeechd = [v0 isEqualToString:@"corespeechd"];
}

uint64_t ___ZN5rtaid20ConfigurationManager23GetDefaultConfigurationEv_block_invoke()
{
  v2 = 0;
  std::__tree<rtaid::AnalyzerType>::__emplace_unique_key_args<rtaid::AnalyzerType,rtaid::AnalyzerType>(&rtaid::ConfigurationManager::GetDefaultConfiguration(void)::sDefaultConfig, 0, &v2);
  v1 = 4;
  return std::__tree<rtaid::AnalyzerType>::__emplace_unique_key_args<rtaid::AnalyzerType,rtaid::AnalyzerType>(&rtaid::ConfigurationManager::GetDefaultConfiguration(void)::sDefaultConfig, 4u, &v1);
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::map<rtaid::AnalyzerType,unsigned int>,void *>>>::operator()[abi:ne200100](char a1, void **a2)
{
  if (a1)
  {
    std::__tree<ADAM::EndPointBitMask>::destroy(a2[5]);
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

void *std::__tree<std::map<rtaid::AnalyzerType,unsigned int>>::__find_leaf_high(uint64_t a1, void *a2, void **a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    v6 = a3 + 1;
    v7 = *a3;
    do
    {
      while (1)
      {
        v5 = v4;
        if ((_ZNSt3__145__lexicographical_compare_three_way_slow_pathB8ne200100INS_20__map_const_iteratorINS_21__tree_const_iteratorINS_12__value_typeIN5rtaid12AnalyzerTypeEjEEPNS_11__tree_nodeIS6_PvEElEEEESC_NS_17__synth_three_wayMUlTyTyRKT_RKT0_E_EEEDTclfp3_defp_defp1_EESD_SD_SG_SG_RT1_(v7, v6, *(v4 + 32), (v4 + 40)) & 0x80) == 0)
        {
          break;
        }

        v4 = *v5;
        result = v5;
        if (!*v5)
        {
          goto LABEL_9;
        }
      }

      v4 = v5[1];
    }

    while (v4);
    result = v5 + 1;
  }

  else
  {
    result = (a1 + 8);
  }

LABEL_9:
  *a2 = v5;
  return result;
}

uint64_t std::__tree<std::map<rtaid::AnalyzerType,unsigned int>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](uint64_t a1)
{
  std::__tree<std::map<rtaid::AnalyzerType,unsigned int>>::destroy(*(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = v2[2];
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = v3[2];
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    std::__tree<std::map<rtaid::AnalyzerType,unsigned int>>::destroy(v2);
  }

  return a1;
}

void *std::__tree<rtaid::AnalyzerType>::_DetachedTreeCache::__detach_next(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    v3 = *result;
    if (*result == a1)
    {
      *result = 0;
      while (1)
      {
        v4 = result[1];
        if (!v4)
        {
          break;
        }

        do
        {
          result = v4;
          v4 = *v4;
        }

        while (v4);
      }
    }

    else
    {
      for (result[1] = 0; v3; v3 = result[1])
      {
        do
        {
          result = v3;
          v3 = *v3;
        }

        while (v3);
      }
    }
  }

  return result;
}

void std::vector<std::unique_ptr<rtaid::CaulkSPIImplementation::Message>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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

void std::__throw_bad_function_call[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x29EDC9588] + 16;
}

void rtaid::CaulkSPIImplementation::Message::~Message(rtaid::CaulkSPIImplementation::Message *this)
{
  *this = &unk_2A1DEDEE8;
  std::__function::__value_func<void ()(rtaid::IssueDictionary const&)>::~__value_func[abi:ne200100](this + 24);
  caulk::concurrent::message::~message(this);

  JUMPOUT(0x29C260F00);
}

{
  *this = &unk_2A1DEDEE8;
  std::__function::__value_func<void ()(rtaid::IssueDictionary const&)>::~__value_func[abi:ne200100](this + 24);

  caulk::concurrent::message::~message(this);
}

uint64_t std::__function::__value_func<void ()(rtaid::IssueDictionary const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t rtaid::CaulkSPIImplementation::SetMessagePerform(uint64_t result, uint64_t a2)
{
  v12[3] = *MEMORY[0x29EDCA608];
  v2 = *(result + 24);
  for (i = *(result + 32); v2 != i; ++v2)
  {
    v5 = *v2;
    std::__function::__value_func<void ()(rtaid::IssueDictionary const&)>::__value_func[abi:ne200100](v9, a2);
    std::__function::__value_func<void ()(rtaid::IssueDictionary const&)>::__value_func[abi:ne200100](v10, v9);
    v6 = v5 + 24;
    if ((v5 + 24) != v10)
    {
      v7 = v11;
      v8 = *(v5 + 48);
      if (v11 == v10)
      {
        if (v8 == v6)
        {
          (*(*v11 + 24))();
          (*(*v11 + 32))(v11);
          v11 = 0;
          (*(**(v5 + 48) + 24))(*(v5 + 48), v10);
          (*(**(v5 + 48) + 32))(*(v5 + 48));
          *(v5 + 48) = 0;
          v11 = v10;
          (*(v12[0] + 24))(v12, v5 + 24);
          (*(v12[0] + 32))(v12);
        }

        else
        {
          (*(*v11 + 24))();
          (*(*v11 + 32))(v11);
          v11 = *(v5 + 48);
        }

        *(v5 + 48) = v6;
      }

      else if (v8 == v6)
      {
        (*(*v8 + 24))(*(v5 + 48), v10);
        (*(**(v5 + 48) + 32))(*(v5 + 48));
        *(v5 + 48) = v11;
        v11 = v10;
      }

      else
      {
        v11 = *(v5 + 48);
        *(v5 + 48) = v7;
      }
    }

    std::__function::__value_func<void ()(rtaid::IssueDictionary const&)>::~__value_func[abi:ne200100](v10);
    result = std::__function::__value_func<void ()(rtaid::IssueDictionary const&)>::~__value_func[abi:ne200100](v9);
  }

  return result;
}

void sub_296C5FAB8(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__value_func<void ()(rtaid::IssueDictionary const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void rtaid::CaulkSPIImplementation::~CaulkSPIImplementation(rtaid::CaulkSPIImplementation *this)
{
  *this = &unk_2A1DEDEA0;
  v1 = this + 8;
  v2 = (this + 24);
  std::vector<std::unique_ptr<rtaid::CaulkSPIImplementation::Message>>::__destroy_vector::operator()[abi:ne200100](&v2);
  MEMORY[0x29C260A60](v1);

  JUMPOUT(0x29C260F00);
}

{
  *this = &unk_2A1DEDEA0;
  v1 = this + 8;
  v2 = (this + 24);
  std::vector<std::unique_ptr<rtaid::CaulkSPIImplementation::Message>>::__destroy_vector::operator()[abi:ne200100](&v2);
  MEMORY[0x29C260A60](v1);
}

void *___Z28AudioStatisticsLibraryLoaderv_block_invoke()
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

const void **applesauce::CF::ObjectRef<void const*>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void applesauce::CF::TypeRef::~TypeRef(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t std::unique_ptr<ADAM::Sequencer>::reset[abi:ne200100](uint64_t result)
{
  v1 = qword_2A18A5238;
  qword_2A18A5238 = result;
  if (v1)
  {
    std::thread::~thread(v1 + 1);
    std::thread::~thread(v1);

    JUMPOUT(0x29C260F00);
  }

  return result;
}

uint64_t *std::unique_ptr<ADAM::Dispatcher>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    std::__tree<std::__value_type<unsigned long long,std::vector<std::unique_ptr<ADAM::Writer>>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::vector<std::unique_ptr<ADAM::Writer>>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::vector<std::unique_ptr<ADAM::Writer>>>>>::destroy(*(v2 + 72));
    std::mutex::~mutex(v2);

    JUMPOUT(0x29C260F00);
  }

  return result;
}

uint64_t std::unique_ptr<ADAM::AnalyzerManager>::reset[abi:ne200100](uint64_t result)
{
  v1 = qword_2A18A5228;
  qword_2A18A5228 = result;
  if (v1)
  {
    v2 = v1;
    std::vector<std::unique_ptr<ADAM::AnalysisNodeBase>>::__destroy_vector::operator()[abi:ne200100](&v2);

    JUMPOUT(0x29C260F00);
  }

  return result;
}

uint64_t std::unique_ptr<ADAM::AudioDataAnalysisManager::XPCServiceState>::reset[abi:ne200100](uint64_t result)
{
  v1 = qword_2A18A5240;
  qword_2A18A5240 = result;
  if (v1)
  {
    std::mutex::~mutex((v1 + 24));

    JUMPOUT(0x29C260F00);
  }

  return result;
}

void applesauce::CF::StringRef::~StringRef(applesauce::CF::StringRef *this)
{
  if (qword_2A18A5248)
  {
    CFRelease(qword_2A18A5248);
  }
}

void std::__hash_table<std::__hash_value_type<unsigned long long,std::pair<unsigned int,std::unique_ptr<caulk::semaphore>>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::pair<unsigned int,std::unique_ptr<caulk::semaphore>>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::pair<unsigned int,std::unique_ptr<caulk::semaphore>>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::pair<unsigned int,std::unique_ptr<caulk::semaphore>>>>>::~__hash_table()
{
  v0 = qword_2A18A5170;
  if (qword_2A18A5170)
  {
    do
    {
      v1 = *v0;
      v2 = v0[4];
      v0[4] = 0;
      if (v2)
      {
        v3 = MEMORY[0x29C260AA0]();
        MEMORY[0x29C260F00](v3, 0x1000C40A517B1A3);
      }

      operator delete(v0);
      v0 = v1;
    }

    while (v1);
  }

  v4 = qword_2A18A5160;
  qword_2A18A5160 = 0;
  if (v4)
  {

    operator delete(v4);
  }
}

void std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<ADAM::ClientSessionManager>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ADAM::ClientSessionManager>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ADAM::ClientSessionManager>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<ADAM::ClientSessionManager>>>>::~__hash_table()
{
  v0 = qword_2A18A5148;
  if (qword_2A18A5148)
  {
    do
    {
      v1 = *v0;
      std::unique_ptr<ADAM::ClientSessionManager>::~unique_ptr[abi:ne200100](v0 + 3);
      operator delete(v0);
      v0 = v1;
    }

    while (v1);
  }

  v2 = ADAM::AudioDataAnalysisManager::instance(void)::gAdam;
  *&ADAM::AudioDataAnalysisManager::instance(void)::gAdam = 0;
  if (v2)
  {

    operator delete(v2);
  }
}

void std::__tree<std::__value_type<unsigned long long,std::vector<std::unique_ptr<ADAM::Writer>>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::vector<std::unique_ptr<ADAM::Writer>>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::vector<std::unique_ptr<ADAM::Writer>>>>>::destroy(char *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<unsigned long long,std::vector<std::unique_ptr<ADAM::Writer>>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::vector<std::unique_ptr<ADAM::Writer>>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::vector<std::unique_ptr<ADAM::Writer>>>>>::destroy(*a1);
    std::__tree<std::__value_type<unsigned long long,std::vector<std::unique_ptr<ADAM::Writer>>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::vector<std::unique_ptr<ADAM::Writer>>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::vector<std::unique_ptr<ADAM::Writer>>>>>::destroy(*(a1 + 1));
    v2 = (a1 + 40);
    std::vector<std::unique_ptr<ADAM::Writer>>::__destroy_vector::operator()[abi:ne200100](&v2);

    operator delete(a1);
  }
}

void ADAM::AudioDataAnalysisManager::AudioDataAnalysisManager(ADAM::AudioDataAnalysisManager *this)
{
  v1 = *MEMORY[0x29EDCA608];
  ADAM::AudioDataAnalysisManager::instance(void)::gAdam = 0u;
  *&qword_2A18A5148 = 0u;
  dword_2A18A5158 = 1065353216;
  *&qword_2A18A5160 = 0u;
  *&qword_2A18A5170 = 0u;
  dword_2A18A5180 = 1065353216;
  qword_2A18A5188 = 850045863;
  *algn_2A18A5190 = 0u;
  *&algn_2A18A5190[16] = 0u;
  *&algn_2A18A5190[32] = 0u;
  qword_2A18A51C0 = 0;
  caulk::semaphore::semaphore(&unk_2A18A51C8);
  byte_2A18A51D8 = 0;
  qword_2A18A51E0[0] = 0;
  unk_2A18A5220 = 0u;
  *&qword_2A18A5230 = 0u;
  *&qword_2A18A5240 = 0u;
  operator new();
}

void sub_296C60E58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  (*(*v11 + 8))(v11, a2, a3, a4, a5, a6, a7, a8);
  a10 = v10;
  std::vector<std::unique_ptr<ADAM::AnalysisNodeBase>>::__destroy_vector::operator()[abi:ne200100](&a10);
  v13 = MEMORY[0x29C260F00](v10, 0x10A2C40C815ADB6);
  applesauce::CF::StringRef::~StringRef(v13);
  std::unique_ptr<ADAM::AudioDataAnalysisManager::XPCServiceState>::reset[abi:ne200100](0);
  std::unique_ptr<ADAM::Sequencer>::reset[abi:ne200100](0);
  std::unique_ptr<ADAM::Dispatcher>::reset[abi:ne200100](&qword_2A18A5230, 0);
  std::unique_ptr<ADAM::AnalyzerManager>::reset[abi:ne200100](0);
  MEMORY[0x29C260AA0](&unk_2A18A51C8);
  std::mutex::~mutex(&qword_2A18A5188);
  std::__hash_table<std::__hash_value_type<unsigned long long,std::pair<unsigned int,std::unique_ptr<caulk::semaphore>>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::pair<unsigned int,std::unique_ptr<caulk::semaphore>>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::pair<unsigned int,std::unique_ptr<caulk::semaphore>>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::pair<unsigned int,std::unique_ptr<caulk::semaphore>>>>>::~__hash_table();
  std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<ADAM::ClientSessionManager>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ADAM::ClientSessionManager>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ADAM::ClientSessionManager>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<ADAM::ClientSessionManager>>>>::~__hash_table();
  _Unwind_Resume(a1);
}

uint64_t ADAM::AudioDataAnalysisManager::fetchSessionBundleIDs(unint64_t a1, std::vector<std::string> *a2)
{
  v3 = a1;
  ClientSessionMananger = ADAM::AudioDataAnalysisManager::getClientSessionMananger(&ADAM::AudioDataAnalysisManager::instance(void)::gAdam, HIDWORD(a1));
  if (!ClientSessionMananger)
  {
    return 0;
  }

  v5 = ClientSessionMananger;
  v25 = v3;
  if (*(ClientSessionMananger + 432) != 1)
  {
    return 0;
  }

  std::mutex::lock((ClientSessionMananger + 184));
  v6 = *(v5 + 152);
  if (!v6)
  {
    goto LABEL_32;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = v3;
    if (v6 <= v3)
    {
      v8 = v3 % v6;
    }
  }

  else
  {
    v8 = (v6 - 1) & v3;
  }

  v10 = *(*(v5 + 144) + 8 * v8);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_32:
    v9 = 0;
    goto LABEL_33;
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v3)
    {
      break;
    }

    if (v7.u32[0] > 1uLL)
    {
      if (v12 >= v6)
      {
        v12 %= v6;
      }
    }

    else
    {
      v12 &= v6 - 1;
    }

    if (v12 != v8)
    {
      goto LABEL_32;
    }

LABEL_19:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_32;
    }
  }

  if (*(v11 + 4) != v3)
  {
    goto LABEL_19;
  }

  v26 = &v25;
  if ((*(std::__hash_table<std::__hash_value_type<unsigned int,BOOL>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,BOOL>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,BOOL>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,BOOL>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>((v5 + 144), v3, &v26) + 20) & 1) == 0)
  {
    goto LABEL_32;
  }

  if ((v5 + 120) != a2)
  {
    v14 = *(v5 + 120);
    v13 = *(v5 + 128);
    v15 = v13 - v14;
    begin = a2->__begin_;
    if ((a2->__end_cap_.__value_ - a2->__begin_) < (v13 - v14))
    {
      v17 = 0xAAAAAAAAAAAAAAABLL * (v15 >> 3);
      std::vector<std::string>::__vdeallocate(a2);
      if (v17 <= 0xAAAAAAAAAAAAAAALL)
      {
        v18 = 0x5555555555555556 * ((a2->__end_cap_.__value_ - a2->__begin_) >> 3);
        if (v18 <= v17)
        {
          v18 = v17;
        }

        if (0xAAAAAAAAAAAAAAABLL * ((a2->__end_cap_.__value_ - a2->__begin_) >> 3) >= 0x555555555555555)
        {
          v19 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v19 = v18;
        }

        if (v19 <= 0xAAAAAAAAAAAAAAALL)
        {
          std::allocator<std::string>::allocate_at_least[abi:ne200100](v19);
        }
      }

      std::vector<ADAMAudioDataAnalysisType>::__throw_length_error[abi:ne200100]();
    }

    end = a2->__end_;
    v22 = end - begin;
    if (end - begin >= v15)
    {
      if (v14 != v13)
      {
        do
        {
          std::string::operator=(begin++, v14++);
        }

        while (v14 != v13);
        end = a2->__end_;
      }

      while (end != begin)
      {
        v24 = SHIBYTE(end[-1].__r_.__value_.__r.__words[2]);
        --end;
        if (v24 < 0)
        {
          operator delete(end->__r_.__value_.__l.__data_);
        }
      }

      a2->__end_ = begin;
    }

    else
    {
      if (end == begin)
      {
        v23 = *(v5 + 120);
      }

      else
      {
        v23 = (v14 + v22);
        do
        {
          std::string::operator=(begin++, v14++);
          v22 -= 24;
        }

        while (v22);
        end = a2->__end_;
      }

      a2->__end_ = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::string>,std::string*,std::string*,std::string*>(a2, v23, v13, end);
    }
  }

  v26 = &v25;
  *(std::__hash_table<std::__hash_value_type<unsigned int,BOOL>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,BOOL>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,BOOL>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,BOOL>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>((v5 + 144), v25, &v26) + 20) = 0;
  v9 = 1;
LABEL_33:
  std::mutex::unlock((v5 + 184));
  return v9;
}

void sub_296C6127C(_Unwind_Exception *a1)
{
  *(v2 + 8) = v3;
  std::mutex::unlock((v1 + 184));
  _Unwind_Resume(a1);
}

void ADAM::AudioDataAnalysisManager::getServerDelegates(uint64_t a1, unsigned int a2)
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x4812000000;
  v16 = __Block_byref_object_copy_;
  v17 = __Block_byref_object_dispose_;
  v18 = "";
  memset(v19, 0, sizeof(v19));
  v4 = qword_2A18A5240;
  std::mutex::lock((qword_2A18A5240 + 24));
  v5 = *(qword_2A18A5240 + 16);
  v6 = [MEMORY[0x29EDBA070] numberWithUnsignedInteger:a2];
  v7 = [v5 objectForKey:v6];

  v12[0] = MEMORY[0x29EDCA5F8];
  v12[1] = 3221225472;
  v12[2] = ___ZN4ADAM24AudioDataAnalysisManager18getServerDelegatesE25ADAMAudioDataAnalysisType_block_invoke;
  v12[3] = &unk_29EE52550;
  v12[4] = &v13;
  [v7 enumerateObjectsUsingBlock:v12];

  std::mutex::unlock((v4 + 24));
  v8 = v14;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  v9 = v8[6];
  v10 = v8[7];
  v20 = a1;
  v21 = 0;
  v11 = v10 - v9;
  if (v10 != v9)
  {
    if (!((v11 >> 3) >> 61))
    {
      std::allocator<ADAMServerDelegate * {__weak}>::allocate_at_least[abi:ne200100](v11 >> 3);
    }

    std::vector<ADAMAudioDataAnalysisType>::__throw_length_error[abi:ne200100]();
  }

  _Block_object_dispose(&v13, 8);
  v20 = v19;
  std::vector<ADAMServerDelegate * {__weak}>::__destroy_vector::operator()[abi:ne200100](&v20);
}

void sub_296C6146C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);

  std::mutex::unlock((v13 + 24));
  _Block_object_dispose(va, 8);
  *(v14 - 64) = v12;
  std::vector<ADAMServerDelegate * {__weak}>::__destroy_vector::operator()[abi:ne200100]((v14 - 64));
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy_(__n128 *a1, __n128 *a2)
{
  a1[3] = 0uLL;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3] = 0uLL;
  a2[4].n128_u64[0] = 0;
  return result;
}

void ___ZN4ADAM24AudioDataAnalysisManager18getServerDelegatesE25ADAMAudioDataAnalysisType_block_invoke(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 8);
  objc_initWeak(&location, a2);
  v4 = *(v2 + 56);
  v3 = *(v2 + 64);
  if (v4 >= v3)
  {
    v6 = *(v2 + 48);
    v7 = (v4 - v6) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::vector<ADAMAudioDataAnalysisType>::__throw_length_error[abi:ne200100]();
    }

    v8 = v3 - v6;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    v22 = v2 + 48;
    if (v10)
    {
      std::allocator<ADAMServerDelegate * {__weak}>::allocate_at_least[abi:ne200100](v10);
    }

    v11 = (8 * v7);
    v19 = 0;
    v20 = v11;
    *(&v21 + 1) = 0;
    objc_moveWeak(v11, &location);
    *&v21 = v11 + 1;
    v12 = *(v2 + 48);
    v13 = *(v2 + 56);
    v14 = (v11 + v12 - v13);
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ADAMServerDelegate * {__weak}>,ADAMServerDelegate * {__weak}*>(v12, v13, v14);
    v15 = *(v2 + 48);
    *(v2 + 48) = v14;
    v16 = *(v2 + 64);
    v17 = v21;
    *(v2 + 56) = v21;
    *&v21 = v15;
    *(&v21 + 1) = v16;
    v19 = v15;
    v20 = v15;
    std::__split_buffer<ADAMServerDelegate * {__weak}>::~__split_buffer(&v19);
    v5 = v17;
  }

  else
  {
    objc_moveWeak(*(v2 + 56), &location);
    v5 = v4 + 8;
  }

  *(v2 + 56) = v5;
  objc_destroyWeak(&location);
}

uint64_t **std::__tree<std::__value_type<unsigned long long,NSMutableArray * {__strong}>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,NSMutableArray * {__strong}>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,NSMutableArray * {__strong}>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(uint64_t **a1, unint64_t a2, uint64_t ***a3)
{
  v3 = a1[1];
  if (!v3)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v4 = v3;
      v5 = v3[4];
      if (v5 <= a2)
      {
        break;
      }

      v3 = *v4;
      if (!*v4)
      {
        goto LABEL_7;
      }
    }

    if (v5 >= a2)
    {
      return v4;
    }

    v3 = v4[1];
    if (!v3)
    {
      goto LABEL_7;
    }
  }
}

void std::__throw_bad_optional_access[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x29EDC9600] + 16;
}

id ADAM::get_log(ADAM *this)
{
  v2 = 0x2A18A4000uLL;
  {
    v2 = 0x2A18A4000;
    if (v5)
    {
      ADAM::get_log(void)::adam_os_log = os_log_create("com.apple.coreaudio", "adam");
      v2 = 0x2A18A4000;
    }
  }

  v3 = *(v2 + 3992);

  return v3;
}

uint64_t ADAM::Analyzer::MicLevelBuffer::analyze(uint64_t a1, uint64_t a2, float *a3, _OWORD *a4)
{
  v24 = *MEMORY[0x29EDCA608];
  if (!a3)
  {
    if (ADAM::Analyzer::MicLevelBuffer::isDataValid(ADAM::UnionDataPtr)const::errCnt++)
    {
LABEL_5:
      v5 = 1684108321;
      v10 = ADAM::Analyzer::MicLevelBuffer::isDataValid(ADAM::UnionDataPtr)const::errCnt;
      if (ADAM::Analyzer::MicLevelBuffer::isDataValid(ADAM::UnionDataPtr)const::errCnt > 0xBB7)
      {
        v10 = 0;
      }

      ADAM::Analyzer::MicLevelBuffer::isDataValid(ADAM::UnionDataPtr)const::errCnt = v10;
      return v5;
    }

    if (ADAM::ADAMLogScope(void)::once != -1)
    {
      dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
    }

    if (ADAM::ADAMLogScope(void)::scope)
    {
      v12 = *ADAM::ADAMLogScope(void)::scope;
      if (!*ADAM::ADAMLogScope(void)::scope)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v12 = MEMORY[0x29EDCA988];
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v16 = 136315394;
      v17 = "MicLevelBuffer.cpp";
      v18 = 1024;
      v19 = 59;
      _os_log_impl(&dword_296C34000, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d energyDB data ptr is null? (sampled every 3k)", &v16, 0x12u);
    }

    goto LABEL_5;
  }

  if (a3[1] < 0.00000011921)
  {
    if (ADAM::ADAMLogScope(void)::once != -1)
    {
      dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
    }

    v5 = 1684108321;
    if (ADAM::ADAMLogScope(void)::scope)
    {
      v11 = *ADAM::ADAMLogScope(void)::scope;
      if (!*ADAM::ADAMLogScope(void)::scope)
      {
        return v5;
      }
    }

    else
    {
      v11 = MEMORY[0x29EDCA988];
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v13 = *a3;
      v14 = a3[1];
      v16 = 136315906;
      v17 = "MicLevelBuffer.cpp";
      v18 = 1024;
      v19 = 68;
      v20 = 2048;
      v21 = v13;
      v22 = 2048;
      v23 = v14;
      _os_log_impl(&dword_296C34000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid Mic Level data { dB: %.2f, duration: %.2f}", &v16, 0x26u);
    }
  }

  else
  {
    v5 = 0;
    *(a1 + 32) = *a4;
    v6 = a4[1];
    v7 = a4[2];
    v8 = a4[4];
    *(a1 + 80) = a4[3];
    *(a1 + 96) = v8;
    *(a1 + 48) = v6;
    *(a1 + 64) = v7;
    *(a1 + 116) = *a3;
    *(a1 + 112) = 1;
  }

  return v5;
}

uint64_t ADAM::Analyzer::EnvironmentExposureBuffer::analyze(uint64_t a1, uint64_t a2, float *a3, _OWORD *a4)
{
  v32 = *MEMORY[0x29EDCA608];
  if (!a3)
  {
    if (ADAM::Analyzer::EnvironmentExposureBuffer::isDataValid(ADAM::UnionDataPtr)const::errCnt++)
    {
LABEL_18:
      v9 = 1684108321;
      v12 = ADAM::Analyzer::EnvironmentExposureBuffer::isDataValid(ADAM::UnionDataPtr)const::errCnt;
      if (ADAM::Analyzer::EnvironmentExposureBuffer::isDataValid(ADAM::UnionDataPtr)const::errCnt > 0xBB7)
      {
        v12 = 0;
      }

      ADAM::Analyzer::EnvironmentExposureBuffer::isDataValid(ADAM::UnionDataPtr)const::errCnt = v12;
      return v9;
    }

    if (ADAM::ADAMLogScope(void)::once != -1)
    {
      dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
    }

    if (ADAM::ADAMLogScope(void)::scope)
    {
      v16 = *ADAM::ADAMLogScope(void)::scope;
      if (!*ADAM::ADAMLogScope(void)::scope)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v16 = MEMORY[0x29EDCA988];
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v22 = 136315394;
      v23 = "EnvironmentExposureBuffer.cpp";
      v24 = 1024;
      v25 = 61;
      _os_log_impl(&dword_296C34000, v16, OS_LOG_TYPE_ERROR, "%25s:%-5d env spl data ptr is null? (sampled every 3k)", &v22, 0x12u);
    }

    goto LABEL_18;
  }

  v5 = *a3 >= 0.00000011921 && *a3 <= 130.0;
  if (v5 && (v6 = a3[1], v6 >= 0.00000011921) && ((v7 = a3[2], v7 >= 0.00000011921) ? (v8 = v6 <= (v7 + 0.00000011921)) : (v8 = 0), v8))
  {
    v9 = 0;
    *(a1 + 32) = *a4;
    v17 = a4[1];
    v18 = a4[2];
    v19 = a4[4];
    *(a1 + 80) = a4[3];
    *(a1 + 96) = v19;
    *(a1 + 48) = v17;
    *(a1 + 64) = v18;
    v20 = *a3;
    *(a1 + 124) = a3[2];
    *(a1 + 116) = v20;
    *(a1 + 112) = 1;
  }

  else
  {
    if (ADAM::ADAMLogScope(void)::once != -1)
    {
      dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
    }

    v9 = 1684108321;
    if (ADAM::ADAMLogScope(void)::scope)
    {
      v10 = *ADAM::ADAMLogScope(void)::scope;
      if (!*ADAM::ADAMLogScope(void)::scope)
      {
        return v9;
      }
    }

    else
    {
      v10 = MEMORY[0x29EDCA988];
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v13 = *a3;
      v14 = a3[1];
      v15 = a3[2];
      v22 = 136316162;
      v23 = "EnvironmentExposureBuffer.cpp";
      v24 = 1024;
      v25 = 74;
      v26 = 2048;
      v27 = v13;
      v28 = 2048;
      v29 = v14;
      v30 = 2048;
      v31 = v15;
      _os_log_impl(&dword_296C34000, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid EVE data { dBA: %.2f, duration: %.2f, period: %.2f}", &v22, 0x30u);
    }
  }

  return v9;
}

uint64_t ADAM::Analyzer::EnvironmentSoundClassAnalyzer::analyze(uint64_t a1, uint64_t a2, void *a3, _OWORD *a4)
{
  v21 = *MEMORY[0x29EDCA608];
  if (!a3)
  {
    if (ADAM::Analyzer::EnvironmentSoundClassAnalyzer::isDataValid(ADAM::UnionDataPtr)const::errCnt++)
    {
LABEL_9:
      v5 = 1684108321;
      v8 = ADAM::Analyzer::EnvironmentSoundClassAnalyzer::isDataValid(ADAM::UnionDataPtr)const::errCnt;
      if (ADAM::Analyzer::EnvironmentSoundClassAnalyzer::isDataValid(ADAM::UnionDataPtr)const::errCnt > 0xBB7)
      {
        v8 = 0;
      }

      ADAM::Analyzer::EnvironmentSoundClassAnalyzer::isDataValid(ADAM::UnionDataPtr)const::errCnt = v8;
      return v5;
    }

    if (ADAM::ADAMLogScope(void)::once != -1)
    {
      dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
    }

    if (ADAM::ADAMLogScope(void)::scope)
    {
      v12 = *ADAM::ADAMLogScope(void)::scope;
      if (!*ADAM::ADAMLogScope(void)::scope)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v12 = MEMORY[0x29EDCA988];
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v15 = 136315394;
      v16 = "EnvironmentExposureBuffer.cpp";
      v17 = 1024;
      v18 = 124;
      _os_log_impl(&dword_296C34000, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d env sound class data ptr is null? (sampled every 3k)", &v15, 0x12u);
    }

    goto LABEL_9;
  }

  if (*a3 < 0x11uLL)
  {
    v5 = 0;
    *(a1 + 32) = *a4;
    v9 = a4[1];
    v10 = a4[2];
    v11 = a4[4];
    *(a1 + 80) = a4[3];
    *(a1 + 96) = v11;
    *(a1 + 48) = v9;
    *(a1 + 64) = v10;
    *(a1 + 120) = *a3;
    *(a1 + 112) = 1;
  }

  else
  {
    if (ADAM::ADAMLogScope(void)::once != -1)
    {
      dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
    }

    v5 = 1684108321;
    if (ADAM::ADAMLogScope(void)::scope)
    {
      v6 = *ADAM::ADAMLogScope(void)::scope;
      if (!*ADAM::ADAMLogScope(void)::scope)
      {
        return v5;
      }
    }

    else
    {
      v6 = MEMORY[0x29EDCA988];
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v13 = *a3;
      v15 = 136315650;
      v16 = "EnvironmentExposureBuffer.cpp";
      v17 = 1024;
      v18 = 131;
      v19 = 2048;
      v20 = v13;
      _os_log_impl(&dword_296C34000, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid EnvSense Class  { ClassBitSet: %.2llu }", &v15, 0x1Cu);
    }
  }

  return v5;
}

void rtaid::Detector::checkAndFlushState(rtaid::Detector *this, int a2)
{
  v23 = *MEMORY[0x29EDCA608];
  for (i = *(this + 3); i; i = *i)
  {
    rtaid::Detector::checkAndResetAnalyzers(this, i + 3);
    *(i + 9) = 0;
    i[6] = 0;
    v5 = i[3];
    rtaid::DetectorNode::resetErrorStates(v5);
    if (a2)
    {
      *(v5 + 4) = 0;
      {
        rtaid::get_log(void)::rtaid_os_log = os_log_create("com.apple.coreaudio", "aid");
      }

      v6 = rtaid::get_log(void)::rtaid_os_log;
      if (!os_log_type_enabled(rtaid::get_log(void)::rtaid_os_log, OS_LOG_TYPE_INFO))
      {
        continue;
      }

      *buf = 136316162;
      v14 = "DetectorNode.cpp";
      v15 = 1024;
      v16 = 158;
      v17 = 1040;
      v18 = 19;
      v19 = 2080;
      v20 = "rtaid::DetectorNode]";
      v21 = 2048;
      v22 = v5;
      v7 = v6;
      v8 = "[%s:%-5d %.*s:%p] reset";
    }

    else
    {
      {
        rtaid::get_log(void)::rtaid_os_log = os_log_create("com.apple.coreaudio", "aid");
      }

      v9 = rtaid::get_log(void)::rtaid_os_log;
      if (!os_log_type_enabled(rtaid::get_log(void)::rtaid_os_log, OS_LOG_TYPE_INFO))
      {
        continue;
      }

      *buf = 136316162;
      v14 = "DetectorNode.cpp";
      v15 = 1024;
      v16 = 164;
      v17 = 1040;
      v18 = 19;
      v19 = 2080;
      v20 = "rtaid::DetectorNode]";
      v21 = 2048;
      v22 = v5;
      v7 = v9;
      v8 = "[%s:%-5d %.*s:%p] flush";
    }

    _os_log_impl(&dword_296C34000, v7, OS_LOG_TYPE_INFO, v8, buf, 0x2Cu);
  }

  if (a2)
  {
    if ((explicit & 1) == 0)
    {
      {
        rtaid::get_log(void)::rtaid_os_log = os_log_create("com.apple.coreaudio", "aid");
      }
    }

    v11 = rtaid::get_log(void)::rtaid_os_log;
    if (os_log_type_enabled(rtaid::get_log(void)::rtaid_os_log, OS_LOG_TYPE_INFO))
    {
      *buf = 136316162;
      v14 = "Detector.cpp";
      v15 = 1024;
      v16 = 103;
      v17 = 1040;
      v18 = 15;
      v19 = 2080;
      v20 = "rtaid::Detector]";
      v21 = 2048;
      v22 = this;
      v12 = "[%s:%-5d %.*s:%p] reset";
LABEL_23:
      _os_log_impl(&dword_296C34000, v11, OS_LOG_TYPE_INFO, v12, buf, 0x2Cu);
    }
  }

  else
  {
    {
      rtaid::get_log(void)::rtaid_os_log = os_log_create("com.apple.coreaudio", "aid");
    }

    v11 = rtaid::get_log(void)::rtaid_os_log;
    if (os_log_type_enabled(rtaid::get_log(void)::rtaid_os_log, OS_LOG_TYPE_INFO))
    {
      *buf = 136316162;
      v14 = "Detector.cpp";
      v15 = 1024;
      v16 = 107;
      v17 = 1040;
      v18 = 15;
      v19 = 2080;
      v20 = "rtaid::Detector]";
      v21 = 2048;
      v22 = this;
      v12 = "[%s:%-5d %.*s:%p] flush";
      goto LABEL_23;
    }
  }
}

uint64_t **rtaid::Detector::ResetTelephonyRMSState(uint64_t **this)
{
  for (; this; this = *this)
  {
    v1 = this[3];
    if ((*(v1 + 164) & 1) != 0 || *(v1 + 157) == 1)
    {
      v2 = *(v1 + 192);
      v3 = *(v1 + 200) - v2;
      if (v3)
      {
        v4 = v3 >> 2;
        v5 = *(v1 + 216);
        if (v4 <= 1)
        {
          v4 = 1;
        }

        do
        {
          *v2++ = 0;
          *v5++ = 0;
          --v4;
        }

        while (v4);
      }

      *(v1 + 244) = 0;
    }
  }

  return this;
}

void rtaid::Detector::NodeBook::~NodeBook(std::__shared_weak_count ***this)
{
  v2 = *this;
  *this = 0;
  if (v2)
  {
    rtaid::DetectorNode::~DetectorNode(v2);
    MEMORY[0x29C260F00]();
  }
}

void rtaid::DetectorNode::ConstructionSettings::~ConstructionSettings(rtaid::DetectorNode::ConstructionSettings *this)
{
  v2 = *(this + 11);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(this + 71) < 0)
  {
    operator delete(*(this + 6));
  }
}

uint64_t std::sub_match<std::__wrap_iter<char const*>>::compare[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == 1)
  {
    std::string::__init_with_size[abi:ne200100]<char *,char *>(&__dst, *a1, *(a1 + 8), *(a1 + 8) - *a1);
  }

  else
  {
    __dst = 0;
    v20 = 0;
    v21 = 0;
  }

  if (*(a2 + 16) == 1)
  {
    std::string::__init_with_size[abi:ne200100]<char *,char *>(&v16, *a2, *(a2 + 8), *(a2 + 8) - *a2);
    v3 = HIBYTE(v18);
    v5 = v16;
    v4 = v17;
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v3 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
  }

  v6 = SHIBYTE(v21);
  v7 = __dst;
  if (v21 >= 0)
  {
    v8 = HIBYTE(v21);
  }

  else
  {
    v8 = v20;
  }

  if (v21 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  if ((v3 & 0x80u) == 0)
  {
    v10 = v3;
  }

  else
  {
    v10 = v4;
  }

  if ((v3 & 0x80u) == 0)
  {
    v11 = &v16;
  }

  else
  {
    v11 = v5;
  }

  if (v10 >= v8)
  {
    v12 = v8;
  }

  else
  {
    v12 = v10;
  }

  v13 = memcmp(p_dst, v11, v12);
  if ((v3 & 0x80) != 0)
  {
    operator delete(v5);
    if ((v6 & 0x80000000) == 0)
    {
      goto LABEL_24;
    }
  }

  else if ((v6 & 0x80000000) == 0)
  {
    goto LABEL_24;
  }

  operator delete(v7);
LABEL_24:
  v14 = v10 < v8;
  if (v8 < v10)
  {
    v14 = -1;
  }

  if (v13)
  {
    return v13;
  }

  else
  {
    return v14;
  }
}

void sub_296C65F54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ADAM::SensorKitWriter::isEnabled(ADAM::SensorKitWriter *this)
{
  v2 = *(this + 11);
  v3 = *(v2 + 24);
  if (v3)
  {
    if ([v3 isMonitoring])
    {
      return 1;
    }

    v2 = *(this + 11);
  }

  result = *(v2 + 32);
  if (result)
  {

    return [result isMonitoring];
  }

  return result;
}

uint64_t ADAM::SensorKitWriter::write(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  v98 = *MEMORY[0x29EDCA608];
  if (ADAM::ADAMLogScope(void)::once != -1)
  {
    dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
  }

  if (ADAM::ADAMLogScope(void)::scope)
  {
    v6 = *ADAM::ADAMLogScope(void)::scope;
    if (!v6)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v6 = MEMORY[0x29EDCA988];
    v7 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = a2[3];
    v9 = *(a3 + 64);
    v10 = *(a1 + 72);
    v11 = *(a3 + 72);
    *buf = 136316418;
    v93 = "SensorKitWriter.mm";
    v94 = 1024;
    v95 = 270;
    v96 = 1024;
    *v97 = v8;
    *&v97[4] = 1024;
    *&v97[6] = v9;
    *&v97[10] = 2048;
    *&v97[12] = v10;
    *&v97[20] = 2048;
    *&v97[22] = v11;
    _os_log_impl(&dword_296C34000, v6, OS_LOG_TYPE_DEFAULT, "%25s:%-5d size: %u, frames: %u mSelf: %p, last batch: %lld", buf, 0x32u);
  }

LABEL_10:
  if (ADAM::isSpeechAnalysisEnabled(void)::once != -1)
  {
    dispatch_once(&ADAM::isSpeechAnalysisEnabled(void)::once, &__block_literal_global_33);
  }

  if (ADAM::isSpeechAnalysisEnabled(void)::ans == 1)
  {
    v12 = *(a1 + 88);
    v13 = *(v12 + 24);
    if (v13)
    {
      if ([v13 isMonitoring])
      {
        goto LABEL_18;
      }

      v12 = *(a1 + 88);
    }

    v14 = *(v12 + 32);
    if (v14 && [v14 isMonitoring])
    {
LABEL_18:
      context = objc_autoreleasePoolPush();
      v15 = *(*(a1 + 88) + 8);
      if (ADAM::ADAMLogScope(void)::once != -1)
      {
        dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
      }

      if (ADAM::ADAMLogScope(void)::scope)
      {
        v16 = *ADAM::ADAMLogScope(void)::scope;
        if (!v16)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v16 = MEMORY[0x29EDCA988];
        v18 = MEMORY[0x29EDCA988];
      }

      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v19 = *(a3 + 64);
        *buf = 136315650;
        v93 = "SensorKitWriter.mm";
        v94 = 1024;
        v95 = 113;
        v96 = 1024;
        *v97 = v19;
        _os_log_impl(&dword_296C34000, v16, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Allocating AVAudioPCMBuffer of %d frames", buf, 0x18u);
      }

LABEL_28:
      v20 = [objc_alloc(MEMORY[0x29EDB8020]) initWithPCMFormat:v15 frameCapacity:*(a3 + 64)];
      if (*a2)
      {
        v21 = 0;
        v22 = 0;
        do
        {
          memcpy(*([v20 mutableAudioBufferList] + v21 * 4 + 16), *&a2[v21 + 4], a2[v21 + 3]);
          v23 = a2[v21 + 3];
          *([v20 mutableAudioBufferList] + v21 * 4 + 12) = v23;
          ++v22;
          v21 += 4;
        }

        while (v22 < *a2);
      }

      [v20 setFrameLength:{objc_msgSend(v20, "frameCapacity")}];

      if (!v20)
      {
        if (ADAM::ADAMLogScope(void)::once != -1)
        {
          dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
        }

        v17 = 1684108321;
        if (ADAM::ADAMLogScope(void)::scope)
        {
          v27 = *ADAM::ADAMLogScope(void)::scope;
          if (!v27)
          {
            goto LABEL_142;
          }
        }

        else
        {
          v27 = MEMORY[0x29EDCA988];
          v49 = MEMORY[0x29EDCA988];
        }

        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v93 = "SensorKitWriter.mm";
          v94 = 1024;
          v95 = 280;
          _os_log_impl(&dword_296C34000, v27, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to create a AVAudioPCMBuffer", buf, 0x12u);
        }

        goto LABEL_142;
      }

      v25 = *(a1 + 39);
      if ((v25 & 0x8000000000000000) != 0)
      {
        v26 = *(a1 + 16);
        v25 = *(a1 + 24);
      }

      else
      {
        v26 = (a1 + 16);
      }

      v28 = 15;
      if (v25 < 0xF)
      {
        v28 = v25;
      }

      if (v25)
      {
        v29 = &v26[v28];
        v30 = v26;
        v31 = &v26[v28];
        do
        {
          if (*v30 == 84)
          {
            v32 = 1u;
            while (v32 != 15)
            {
              if (&v30[v32] == v29)
              {
                goto LABEL_53;
              }

              v33 = v30[v32];
              v34 = aTelephonyuplin[v32++];
              if (v33 != v34)
              {
                goto LABEL_45;
              }
            }

            v31 = v30;
          }

LABEL_45:
          ++v30;
        }

        while (v30 != v29);
LABEL_53:
        if (v31 != v29 && v31 == v26)
        {
          v35 = [v20 frameLength];
          v36 = [v20 format];
          [v36 sampleRate];
          v38 = v37;

          v39 = v35 / v38;
          if (v39 <= 4.0)
          {
            {
              ADAM::get_log(void)::adam_os_log = os_log_create("com.apple.coreaudio", "adam");
            }

            v61 = ADAM::get_log(void)::adam_os_log;
            if (os_log_type_enabled(ADAM::get_log(void)::adam_os_log, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136316418;
              v93 = "SensorKitWriter.mm";
              v94 = 1024;
              v95 = 290;
              v96 = 1040;
              *v97 = 21;
              *&v97[4] = 2080;
              *&v97[6] = "ADAM::SensorKitWriter]";
              *&v97[14] = 2048;
              *&v97[16] = a1;
              *&v97[24] = 2048;
              *&v97[26] = v39;
              _os_log_impl(&dword_296C34000, v61, OS_LOG_TYPE_DEFAULT, "[%s:%-5d %.*s:%p] not sending telephony audio to Speech and SoundAnalysis due to length of audio : %f", buf, 0x36u);
            }

            goto LABEL_141;
          }
        }
      }

      ADAM::Parameters::instance(v24);
      if (!ADAM::Parameters::GetParamValue<BOOL>(0xFu))
      {
LABEL_137:
        std::mutex::lock(&ADAM::Writer::getAsyncMutex(void)::sAsyncMutex);
        *(a1 + 81) = 1;
        std::mutex::unlock(&ADAM::Writer::getAsyncMutex(void)::sAsyncMutex);
        v78 = *(a1 + 88);
        v79 = *(v78 + 24);
        if (v79)
        {
          [v79 write:v20 withMetadata:a3];
          v78 = *(a1 + 88);
        }

        v80 = *(v78 + 32);
        if (v80)
        {
          [v80 write:v20 withMetadata:a3];
        }

LABEL_141:
        v17 = 0;
LABEL_142:

        objc_autoreleasePoolPop(context);
        return v17;
      }

      v40 = *(*(a1 + 88) + 8);
      if (*(a1 + 39) >= 0)
      {
        v41 = *(a1 + 39);
      }

      else
      {
        v41 = *(a1 + 24);
      }

      v42 = &v88;
      std::string::basic_string[abi:ne200100](&v88, v41 + 1);
      if ((v88.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v42 = v88.__r_.__value_.__r.__words[0];
      }

      if (v41)
      {
        if (*(a1 + 39) >= 0)
        {
          v43 = (a1 + 16);
        }

        else
        {
          v43 = *(a1 + 16);
        }

        memmove(v42, v43, v41);
      }

      *(&v42->__r_.__value_.__l.__data_ + v41) = 95;
      std::to_string(&v87, *(*(a1 + 88) + 40));
      if ((v87.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v44 = &v87;
      }

      else
      {
        v44 = v87.__r_.__value_.__r.__words[0];
      }

      if ((v87.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v87.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v87.__r_.__value_.__l.__size_;
      }

      v46 = std::string::append(&v88, v44, size);
      v47 = *&v46->__r_.__value_.__l.__data_;
      v90 = v46->__r_.__value_.__r.__words[2];
      *__p = v47;
      v46->__r_.__value_.__l.__size_ = 0;
      v46->__r_.__value_.__r.__words[2] = 0;
      v46->__r_.__value_.__r.__words[0] = 0;
      if (v90 >= 0)
      {
        v48 = __p;
      }

      else
      {
        v48 = __p[0];
      }

      v85 = v40;
      if (ADAM::isProcessCorespeechd(void)::once != -1)
      {
        dispatch_once(&ADAM::isProcessCorespeechd(void)::once, &__block_literal_global_51);
      }

      if (ADAM::isProcessCorespeechd(void)::isCorespeechd == 1)
      {
        v84 = [objc_alloc(MEMORY[0x29EDBA0F8]) initWithFormat:@"/private/var/mobile/Documents/Logs/CoreSpeech/ADAM-%s.caf", v48];
      }

      else
      {
        v50 = objc_alloc(MEMORY[0x29EDBA0F8]);
        v51 = NSTemporaryDirectory();
        v84 = [v50 initWithFormat:@"%@ADAM-%s.caf", v51, v48];
      }

      v83 = [objc_alloc(MEMORY[0x29EDB8E70]) initWithString:v84];
      v52 = MEMORY[0x29EDB8E00];
      v53 = [v85 settings];
      v54 = [v52 dictionaryWithDictionary:v53];

      [v54 setObject:&unk_2A1DF0AA0 forKey:*MEMORY[0x29EDB8000]];
      v55 = objc_alloc(MEMORY[0x29EDB8010]);
      v56 = [v85 commonFormat];
      v91 = 0;
      v57 = [v55 initForWriting:v83 settings:v54 commonFormat:v56 interleaved:1 error:&v91];
      v82 = v91;
      if (v82)
      {
        if (ADAM::ADAMLogScope(void)::once != -1)
        {
          dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
        }

        if (ADAM::ADAMLogScope(void)::scope)
        {
          v58 = *ADAM::ADAMLogScope(void)::scope;
          if (!v58)
          {
            v59 = 0;
LABEL_108:

LABEL_109:
            if (SHIBYTE(v90) < 0)
            {
              operator delete(__p[0]);
            }

            if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v87.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v88.__r_.__value_.__l.__data_);
            }

            ++*(*(a1 + 88) + 40);
            v68 = v59;
            v69 = v20;
            if (!v68)
            {
              goto LABEL_136;
            }

            __p[0] = 0;
            [v68 writeFromBuffer:v69 error:__p];
            v70 = __p[0];
            if (v70)
            {
              if (ADAM::ADAMLogScope(void)::once != -1)
              {
                dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
              }

              if (ADAM::ADAMLogScope(void)::scope)
              {
                v71 = *ADAM::ADAMLogScope(void)::scope;
                if (!v71)
                {
                  goto LABEL_135;
                }
              }

              else
              {
                v71 = MEMORY[0x29EDCA988];
                v72 = MEMORY[0x29EDCA988];
              }

              if (!os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
              {
LABEL_134:

LABEL_135:
LABEL_136:

                goto LABEL_137;
              }

              *buf = 136315650;
              v93 = "SensorKitWriter.mm";
              v94 = 1024;
              v95 = 101;
              v96 = 2112;
              *v97 = v70;
              v73 = "%25s:%-5d failed to write audio buffer: %@";
              v74 = v71;
              v75 = OS_LOG_TYPE_ERROR;
              v76 = 28;
            }

            else
            {
              if (ADAM::ADAMLogScope(void)::once != -1)
              {
                dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
              }

              if (ADAM::ADAMLogScope(void)::scope)
              {
                v71 = *ADAM::ADAMLogScope(void)::scope;
                if (!v71)
                {
                  goto LABEL_135;
                }
              }

              else
              {
                v71 = MEMORY[0x29EDCA988];
                v77 = MEMORY[0x29EDCA988];
              }

              if (!os_log_type_enabled(v71, OS_LOG_TYPE_INFO))
              {
                goto LABEL_134;
              }

              *buf = 136315906;
              v93 = "SensorKitWriter.mm";
              v94 = 1024;
              v95 = 105;
              v96 = 2112;
              *v97 = v69;
              *&v97[8] = 2112;
              *&v97[10] = v68;
              v73 = "%25s:%-5d Wrote audio buffer %@ to file %@";
              v74 = v71;
              v75 = OS_LOG_TYPE_INFO;
              v76 = 38;
            }

            _os_log_impl(&dword_296C34000, v74, v75, v73, buf, v76);
            goto LABEL_134;
          }
        }

        else
        {
          v58 = MEMORY[0x29EDCA988];
          v62 = MEMORY[0x29EDCA988];
        }

        v63 = v58;
        if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
        {
          v64 = [MEMORY[0x29EDBA070] numberWithBool:{objc_msgSend(v85, "isInterleaved")}];
          *buf = 136316162;
          v93 = "SensorKitWriter.mm";
          v94 = 1024;
          v95 = 75;
          v96 = 2112;
          *v97 = v82;
          *&v97[8] = 2112;
          *&v97[10] = v54;
          *&v97[18] = 2112;
          *&v97[20] = v64;
          _os_log_impl(&dword_296C34000, v63, OS_LOG_TYPE_ERROR, "%25s:%-5d failed to initialize output file: %@, settings: %@, format interleaved: %@", buf, 0x30u);
        }

        v59 = 0;
        v65 = v57;
      }

      else
      {
        if (ADAM::ADAMLogScope(void)::once != -1)
        {
          dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
        }

        if (ADAM::ADAMLogScope(void)::scope)
        {
          v60 = *ADAM::ADAMLogScope(void)::scope;
          if (!v60)
          {
            v59 = v57;
            goto LABEL_109;
          }
        }

        else
        {
          v60 = MEMORY[0x29EDCA988];
          v66 = MEMORY[0x29EDCA988];
        }

        v63 = v60;
        if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
        {
          v67 = [MEMORY[0x29EDBA070] numberWithBool:{objc_msgSend(v85, "isInterleaved")}];
          *buf = 136315906;
          v93 = "SensorKitWriter.mm";
          v94 = 1024;
          v95 = 81;
          v96 = 2112;
          *v97 = v84;
          *&v97[8] = 2112;
          *&v97[10] = v67;
          _os_log_impl(&dword_296C34000, v63, OS_LOG_TYPE_INFO, "%25s:%-5d Created output file: %@, format interleaved: %@", buf, 0x26u);
        }

        v65 = v63;
        v59 = v57;
      }

      v57 = v65;
      goto LABEL_108;
    }
  }

  return 0;
}

void sub_296C66C20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, void *a14, void *a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a34 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  _Unwind_Resume(a1);
}

uint64_t std::string::basic_string[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (a2 > 0x16)
  {
    operator new();
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 23) = a2;
  return a1;
}

void ___ZN4ADAM15SensorKitWriterC2EyRKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERK27AudioStreamBasicDescription_block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x29EDCA608];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = atomic_load((*(v4 + 88) + 44));
  {
    ADAM::get_log(void)::adam_os_log = os_log_create("com.apple.coreaudio", "adam");
  }

  v6 = ADAM::get_log(void)::adam_os_log;
  if (os_log_type_enabled(ADAM::get_log(void)::adam_os_log, OS_LOG_TYPE_DEBUG))
  {
    v10 = 136316418;
    v11 = "SensorKitWriter.mm";
    v12 = 1024;
    v13 = 194;
    v14 = 1040;
    v15 = 21;
    v16 = 2080;
    v17 = "ADAM::SensorKitWriter]";
    v18 = 2048;
    v19 = v4;
    v20 = 1024;
    v21 = v5;
    _os_log_impl(&dword_296C34000, v6, OS_LOG_TYPE_DEBUG, "[%s:%-5d %.*s:%p] Inside sound analysis writer's completion handler, expectedCount: %d", &v10, 0x32u);
  }

  v7 = v5;
  atomic_compare_exchange_strong((*(v4 + 88) + 44), &v7, 1u);
  if (v7 != v5)
  {
    {
      ADAM::get_log(void)::adam_os_log = os_log_create("com.apple.coreaudio", "adam");
    }

    v9 = ADAM::get_log(void)::adam_os_log;
    if (os_log_type_enabled(ADAM::get_log(void)::adam_os_log, OS_LOG_TYPE_DEBUG))
    {
      v10 = 136316162;
      v11 = "SensorKitWriter.mm";
      v12 = 1024;
      v13 = 205;
      v14 = 1040;
      v15 = 21;
      v16 = 2080;
      v17 = "ADAM::SensorKitWriter]";
      v18 = 2048;
      v19 = v4;
      _os_log_impl(&dword_296C34000, v9, OS_LOG_TYPE_DEBUG, "[%s:%-5d %.*s:%p] Calling destroy self", &v10, 0x2Cu);
    }

    goto LABEL_13;
  }

  if (v5 == 1)
  {
    {
      ADAM::get_log(void)::adam_os_log = os_log_create("com.apple.coreaudio", "adam");
    }

    v8 = ADAM::get_log(void)::adam_os_log;
    if (os_log_type_enabled(ADAM::get_log(void)::adam_os_log, OS_LOG_TYPE_DEBUG))
    {
      v10 = 136316162;
      v11 = "SensorKitWriter.mm";
      v12 = 1024;
      v13 = 199;
      v14 = 1040;
      v15 = 21;
      v16 = 2080;
      v17 = "ADAM::SensorKitWriter]";
      v18 = 2048;
      v19 = v4;
      _os_log_impl(&dword_296C34000, v8, OS_LOG_TYPE_DEBUG, "[%s:%-5d %.*s:%p] Calling destroy self", &v10, 0x2Cu);
    }

    v7 = 1;
LABEL_13:
    ADAM::SensorKitWriter::SensorKitWriter(unsigned long long,std::string const&,AudioStreamBasicDescription const&)::$_0::operator()<char const*,int>((a1 + 40), v3, "Sound Analysis", v7);
  }
}

void ___ZN4ADAM15SensorKitWriterC2EyRKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERK27AudioStreamBasicDescription_block_invoke_7(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x29EDCA608];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = atomic_load((*(v4 + 88) + 44));
  {
    ADAM::get_log(void)::adam_os_log = os_log_create("com.apple.coreaudio", "adam");
  }

  v6 = ADAM::get_log(void)::adam_os_log;
  if (os_log_type_enabled(ADAM::get_log(void)::adam_os_log, OS_LOG_TYPE_DEBUG))
  {
    v10 = 136316418;
    v11 = "SensorKitWriter.mm";
    v12 = 1024;
    v13 = 223;
    v14 = 1040;
    v15 = 21;
    v16 = 2080;
    v17 = "ADAM::SensorKitWriter]";
    v18 = 2048;
    v19 = v4;
    v20 = 1024;
    v21 = v5;
    _os_log_impl(&dword_296C34000, v6, OS_LOG_TYPE_DEBUG, "[%s:%-5d %.*s:%p] Inside speech writer's completion handler, expectedCount: %d", &v10, 0x32u);
  }

  v7 = v5;
  atomic_compare_exchange_strong((*(v4 + 88) + 44), &v7, 1u);
  if (v7 != v5)
  {
    {
      ADAM::get_log(void)::adam_os_log = os_log_create("com.apple.coreaudio", "adam");
    }

    v9 = ADAM::get_log(void)::adam_os_log;
    if (os_log_type_enabled(ADAM::get_log(void)::adam_os_log, OS_LOG_TYPE_DEBUG))
    {
      v10 = 136316162;
      v11 = "SensorKitWriter.mm";
      v12 = 1024;
      v13 = 234;
      v14 = 1040;
      v15 = 21;
      v16 = 2080;
      v17 = "ADAM::SensorKitWriter]";
      v18 = 2048;
      v19 = v4;
      _os_log_impl(&dword_296C34000, v9, OS_LOG_TYPE_DEBUG, "[%s:%-5d %.*s:%p] Calling destroy self", &v10, 0x2Cu);
    }

    goto LABEL_13;
  }

  if (v5 == 1)
  {
    {
      ADAM::get_log(void)::adam_os_log = os_log_create("com.apple.coreaudio", "adam");
    }

    v8 = ADAM::get_log(void)::adam_os_log;
    if (os_log_type_enabled(ADAM::get_log(void)::adam_os_log, OS_LOG_TYPE_DEBUG))
    {
      v10 = 136316162;
      v11 = "SensorKitWriter.mm";
      v12 = 1024;
      v13 = 228;
      v14 = 1040;
      v15 = 21;
      v16 = 2080;
      v17 = "ADAM::SensorKitWriter]";
      v18 = 2048;
      v19 = v4;
      _os_log_impl(&dword_296C34000, v8, OS_LOG_TYPE_DEBUG, "[%s:%-5d %.*s:%p] Calling destroy self", &v10, 0x2Cu);
    }

    v7 = 1;
LABEL_13:
    ADAM::SensorKitWriter::SensorKitWriter(unsigned long long,std::string const&,AudioStreamBasicDescription const&)::$_0::operator()<char const*,int>((a1 + 40), v3, "Speech Analysis", v7);
  }
}

void ADAM::SensorKitWriter::SensorKitWriter(unsigned long long,std::string const&,AudioStreamBasicDescription const&)::$_0::operator()<char const*,int>(uint64_t *a1, void *a2, uint64_t a3, int a4)
{
  v34 = *MEMORY[0x29EDCA608];
  v7 = a2;
  v8 = *a1;
  {
    ADAM::get_log(void)::adam_os_log = os_log_create("com.apple.coreaudio", "adam");
  }

  v9 = ADAM::get_log(void)::adam_os_log;
  if (os_log_type_enabled(ADAM::get_log(void)::adam_os_log, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(v8 + 88);
    v12 = *(v10 + 24);
    v11 = *(v10 + 32);
    v14 = 136317442;
    v15 = "SensorKitWriter.mm";
    v16 = 1024;
    v17 = 176;
    v18 = 1040;
    v19 = 21;
    v20 = 2080;
    v21 = "ADAM::SensorKitWriter]";
    v22 = 2048;
    v23 = v8;
    v24 = 2080;
    v25 = a3;
    v26 = 2112;
    v27 = v7;
    v28 = 2048;
    v29 = v12;
    v30 = 2048;
    v31 = v11;
    v32 = 1024;
    v33 = a4;
    _os_log_impl(&dword_296C34000, v9, OS_LOG_TYPE_DEFAULT, "[%s:%-5d %.*s:%p] %s writer completed with err: %@ SN writer: %p, Speech writer: %p, completionValue: %d", &v14, 0x5Au);
  }

  std::mutex::lock(&ADAM::Writer::getAsyncMutex(void)::sAsyncMutex);
  *(v8 + 81) = 0;
  v13 = *(v8 + 72);
  if (v13)
  {
    *(v8 + 72) = 0;
    (*(*v13 + 40))(v13);
  }

  std::mutex::unlock(&ADAM::Writer::getAsyncMutex(void)::sAsyncMutex);
}

uint64_t std::optional<CA::AudioBuffersDeprecated>::~optional(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    ExtendedAudioBufferList_Destroy();
  }

  return a1;
}

OpaqueAudioComponentInstance *rtaid::DetectorNode::resetErrorStates(rtaid::DetectorNode *this)
{
  v2 = *(this + 24);
  v3 = *(this + 25) - v2;
  if (v3)
  {
    v4 = v3 >> 2;
    v5 = *(this + 27);
    if (v4 <= 1)
    {
      v4 = 1;
    }

    do
    {
      *v2++ = 0;
      *v5++ = 0;
      --v4;
    }

    while (v4);
  }

  *(this + 61) = 0;
  result = rtaid::DetectorNode::resetSilenceAnalyzerErrorState(*(this + 4));
  *(this + 42) = 0;
  atomic_store(0, this + 408);
  return result;
}

uint64_t rtaid::get_log(rtaid *this)
{
  v1 = &rtaid::GetReporterTypeInterestedMap(void)::gReporterTypeInterestedMap;
  {
    v1 = &rtaid::GetReporterTypeInterestedMap(void)::gReporterTypeInterestedMap;
    if (v3)
    {
      rtaid::get_log(void)::rtaid_os_log = os_log_create("com.apple.coreaudio", "aid");
      v1 = &rtaid::GetReporterTypeInterestedMap(void)::gReporterTypeInterestedMap;
    }
  }

  return *(v1 + 36);
}

void rtaid::ManagerCallStateReporter::~ManagerCallStateReporter(rtaid::ManagerCallStateReporter *this)
{
  if (qword_2A18A53F0)
  {
    CFRelease(qword_2A18A53F0);
  }
}

double ADAM::Analyzer::PCMBuffer::reset(ADAM::Analyzer::PCMBuffer *this)
{
  v1 = *(this + 15);
  v2 = *v1;
  if (v2)
  {
    v3 = (v2 + 3) & 0x1FFFFFFFCLL;
    v4 = vdupq_n_s64(v2 - 1);
    v5 = xmmword_296C79960;
    v6 = xmmword_296C79970;
    v7 = v1 + 11;
    v8 = vdupq_n_s64(4uLL);
    do
    {
      v9 = vmovn_s64(vcgeq_u64(v4, v6));
      if (vuzp1_s16(v9, *v4.i8).u8[0])
      {
        *(v7 - 8) = 0;
      }

      if (vuzp1_s16(v9, *&v4).i8[2])
      {
        *(v7 - 4) = 0;
      }

      if (vuzp1_s16(*&v4, vmovn_s64(vcgeq_u64(v4, *&v5))).i32[1])
      {
        *v7 = 0;
        v7[4] = 0;
      }

      v5 = vaddq_s64(v5, v8);
      v6 = vaddq_s64(v6, v8);
      v7 += 16;
      v3 -= 4;
    }

    while (v3);
  }

  *(this + 112) = 0;
  result = 0.0;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 2) = 0u;
  return result;
}

uint64_t ADAM::Analyzer::PCMBuffer::analyze(ADAM *this, uint64_t a2, _DWORD *a3, uint64_t a4)
{
  v49[2] = *MEMORY[0x29EDCA608];
  v8 = (this + 120);
  if (*(this + 15))
  {
    goto LABEL_2;
  }

  v16 = 560100710;
  if (*(this + 192) != 1)
  {
    return v16;
  }

  ADAM::allocAudioBufferList((this + 120), this + 16, *(this + 44), *(this + 43));
  v21 = *(this + 15);
  if (ADAM::ADAMLogScope(void)::once != -1)
  {
    dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
  }

  if (v21)
  {
    if (ADAM::ADAMLogScope(void)::scope)
    {
      v22 = *ADAM::ADAMLogScope(void)::scope;
      if (!v22)
      {
        goto LABEL_2;
      }
    }

    else
    {
      v22 = MEMORY[0x29EDCA988];
      v31 = MEMORY[0x29EDCA988];
    }

    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v32 = **v8;
      v33 = *(*v8 + 2);
      v43 = 136315906;
      v44 = "PCMBuffer.cpp";
      v45 = 1024;
      v46 = 111;
      v47 = 1024;
      *v48 = v32;
      *&v48[4] = 2048;
      *&v48[6] = v33;
      _os_log_impl(&dword_296C34000, v22, OS_LOG_TYPE_DEFAULT, "%25s:%-5d PCMBuffer allocated anumBuffers: %u, buffer location: %p", &v43, 0x22u);
    }

LABEL_2:
    if (*(this + 192) == 1 && (v9 = *v8) != 0)
    {
      if (*(this + 23) == a2)
      {
        if (*v9 == *a3)
        {
          if (*v9)
          {
            v10 = 0;
            v11 = 0;
            do
            {
              memcpy((*&v9[v10 + 4] + v9[v10 + 3]), *&a3[v10 + 4], a3[v10 + 3]);
              v9 = *v8;
              (*v8)[v10 + 3] += a3[v10 + 3];
              ++v11;
              v10 += 4;
            }

            while (v11 < *v9);
          }

          v12 = *(this + 24) + a3[3] / *(this + 38);
          *(this + 24) = v12;
          if (!*(this + 5))
          {
            *(this + 5) = *(a4 + 8);
          }

          v13 = ADAM::Analyzer::PCMBuffer::analyze(unsigned long long,ADAM::UnionDataPtr,ADAM::Metadata const&)::errCnt;
          v14 = ++ADAM::Analyzer::PCMBuffer::analyze(unsigned long long,ADAM::UnionDataPtr,ADAM::Metadata const&)::errCnt;
          if (v13)
          {
            goto LABEL_72;
          }

          if (ADAM::ADAMLogScope(void)::once != -1)
          {
            dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
          }

          if (ADAM::ADAMLogScope(void)::scope)
          {
            v15 = *ADAM::ADAMLogScope(void)::scope;
            if (!v15)
            {
LABEL_71:
              v14 = ADAM::Analyzer::PCMBuffer::analyze(unsigned long long,ADAM::UnionDataPtr,ADAM::Metadata const&)::errCnt;
              v12 = *(this + 24);
LABEL_72:
              v16 = 0;
              if (v14 > 0x63)
              {
                v14 = 0;
              }

              ADAM::Analyzer::PCMBuffer::analyze(unsigned long long,ADAM::UnionDataPtr,ADAM::Metadata const&)::errCnt = v14;
              if (v12 >= *(this + 42))
              {
                v16 = 0;
                *(this + 3) = *(this + 15);
                *(this + 112) = 1;
              }

              return v16;
            }
          }

          else
          {
            v15 = MEMORY[0x29EDCA988];
            v37 = MEMORY[0x29EDCA988];
          }

          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
            v38 = *(*(this + 15) + 12);
            v39 = *(this + 24);
            v40 = *(this + 5);
            v43 = 136316418;
            v44 = "PCMBuffer.cpp";
            v45 = 1024;
            v46 = 59;
            v47 = 2048;
            *v48 = a2;
            *&v48[8] = 1024;
            *&v48[10] = v38;
            *&v48[14] = 1024;
            *&v48[16] = v39;
            LOWORD(v49[0]) = 2048;
            *(v49 + 2) = v40;
            _os_log_impl(&dword_296C34000, v15, OS_LOG_TYPE_DEBUG, "%25s:%-5d nodeID: %llx size: %u total frames: %u timestamp: %llu", &v43, 0x32u);
          }

          goto LABEL_71;
        }

        v16 = 1718444833;
        v17 = &ADAM::Analyzer::PCMBuffer::verifyInvariants(unsigned long long,AudioBufferList const*)const::errCnt;
        v30 = ADAM::Analyzer::PCMBuffer::verifyInvariants(unsigned long long,AudioBufferList const*)const::errCnt;
        v19 = ++ADAM::Analyzer::PCMBuffer::verifyInvariants(unsigned long long,AudioBufferList const*)const::errCnt;
        if (v30)
        {
          goto LABEL_42;
        }

        if (ADAM::ADAMLogScope(void)::once != -1)
        {
          dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
        }

        if (ADAM::ADAMLogScope(void)::scope)
        {
          v20 = *ADAM::ADAMLogScope(void)::scope;
          if (!v20)
          {
            goto LABEL_41;
          }
        }

        else
        {
          v20 = MEMORY[0x29EDCA988];
          v41 = MEMORY[0x29EDCA988];
        }

        if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_40;
        }

        v42 = *(this + 23);
        v43 = 136315650;
        v44 = "PCMBuffer.cpp";
        v45 = 1024;
        v46 = 91;
        v47 = 2048;
        *v48 = v42;
        v27 = "%25s:%-5d %llx: num buffers mismatch";
        goto LABEL_39;
      }

      v16 = 561017453;
      v17 = &ADAM::Analyzer::PCMBuffer::verifyInvariants(unsigned long long,AudioBufferList const*)const::errCnt;
      v23 = ADAM::Analyzer::PCMBuffer::verifyInvariants(unsigned long long,AudioBufferList const*)const::errCnt;
      v19 = ++ADAM::Analyzer::PCMBuffer::verifyInvariants(unsigned long long,AudioBufferList const*)const::errCnt;
      if (!v23)
      {
        if (ADAM::ADAMLogScope(void)::once != -1)
        {
          dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
        }

        if (ADAM::ADAMLogScope(void)::scope)
        {
          v24 = *ADAM::ADAMLogScope(void)::scope;
          if (!v24)
          {
            goto LABEL_41;
          }
        }

        else
        {
          v24 = MEMORY[0x29EDCA988];
          v35 = MEMORY[0x29EDCA988];
        }

        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          v36 = *(this + 23);
          v43 = 136316162;
          v44 = "PCMBuffer.cpp";
          v45 = 1024;
          v46 = 83;
          v47 = 2048;
          *v48 = v36;
          *&v48[8] = 2048;
          *&v48[10] = a2;
          *&v48[18] = 2048;
          v49[0] = v8;
          _os_log_impl(&dword_296C34000, v24, OS_LOG_TYPE_ERROR, "%25s:%-5d Different nodeIDs not supported by PCM buffer: %llx(c), %llx(n) ABL: %p", &v43, 0x30u);
        }

        goto LABEL_41;
      }
    }

    else
    {
      v16 = 560162407;
      v17 = &ADAM::Analyzer::PCMBuffer::verifyInvariants(unsigned long long,AudioBufferList const*)const::errCnt;
      v18 = ADAM::Analyzer::PCMBuffer::verifyInvariants(unsigned long long,AudioBufferList const*)const::errCnt;
      v19 = ++ADAM::Analyzer::PCMBuffer::verifyInvariants(unsigned long long,AudioBufferList const*)const::errCnt;
      if (!v18)
      {
        if (ADAM::ADAMLogScope(void)::once != -1)
        {
          dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
        }

        if (ADAM::ADAMLogScope(void)::scope)
        {
          v20 = *ADAM::ADAMLogScope(void)::scope;
          if (!v20)
          {
            goto LABEL_41;
          }
        }

        else
        {
          v20 = MEMORY[0x29EDCA988];
          v25 = MEMORY[0x29EDCA988];
        }

        if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
LABEL_40:

LABEL_41:
          v19 = *v17;
          goto LABEL_42;
        }

        v26 = *(this + 23);
        v43 = 136315650;
        v44 = "PCMBuffer.cpp";
        v45 = 1024;
        v46 = 75;
        v47 = 2048;
        *v48 = v26;
        v27 = "%25s:%-5d %llx: PCM Buffer not configured";
LABEL_39:
        _os_log_impl(&dword_296C34000, v20, OS_LOG_TYPE_ERROR, v27, &v43, 0x1Cu);
        goto LABEL_40;
      }
    }

LABEL_42:
    if (v19 > 0x3E7)
    {
      v19 = 0;
    }

    *v17 = v19;
    return v16;
  }

  if (ADAM::ADAMLogScope(void)::scope)
  {
    v29 = *ADAM::ADAMLogScope(void)::scope;
    if (!v29)
    {
      return v16;
    }
  }

  else
  {
    v29 = MEMORY[0x29EDCA988];
    v34 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    v43 = 136315394;
    v44 = "PCMBuffer.cpp";
    v45 = 1024;
    v46 = 107;
    _os_log_impl(&dword_296C34000, v29, OS_LOG_TYPE_ERROR, "%25s:%-5d PCMBuffer failed to allocate buffer", &v43, 0x12u);
  }

  return v16;
}

void ADAM::Analyzer::PCMBuffer::~PCMBuffer(ADAM::Analyzer::PCMBuffer *this, AudioBufferList **a2)
{
  *this = &unk_2A1DEE578;
  v3 = *(this + 15);
  v2 = (this + 120);
  if (v3)
  {
    ADAM::releaseAudioBufferList(v2, a2);
  }

  JUMPOUT(0x29C260F00);
}

{
  *this = &unk_2A1DEE578;
  v3 = *(this + 15);
  v2 = (this + 120);
  if (v3)
  {
    ADAM::releaseAudioBufferList(v2, a2);
  }
}

double ADAM::Analyzer::LoudnessAnalyzer::reset(ADAM::Analyzer::LoudnessAnalyzer *this)
{
  *(this + 112) = 0;
  result = 0.0;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 24) = 0;
  *(this + 116) = 0u;
  *(this + 132) = 0u;
  *(this + 148) = 0u;
  *(this + 164) = 0u;
  *(this + 45) = 0;
  return result;
}

uint64_t ADAM::Analyzer::LoudnessAnalyzer::analyze(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v33 = *MEMORY[0x29EDCA608];
  if (!a3)
  {
    v8 = ADAM::Analyzer::LoudnessAnalyzer::isDataValid(ADAM::UnionDataPtr)const::errCnt;
    v9 = ++ADAM::Analyzer::LoudnessAnalyzer::isDataValid(ADAM::UnionDataPtr)const::errCnt;
    if (v8)
    {
LABEL_31:
      v6 = 1684108321;
      if (v9 > 0xBB7)
      {
        v9 = 0;
      }

      ADAM::Analyzer::LoudnessAnalyzer::isDataValid(ADAM::UnionDataPtr)const::errCnt = v9;
      return v6;
    }

    if (ADAM::ADAMLogScope(void)::once != -1)
    {
      dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
    }

    if (ADAM::ADAMLogScope(void)::scope)
    {
      v10 = *ADAM::ADAMLogScope(void)::scope;
      if (!v10)
      {
LABEL_30:
        v9 = ADAM::Analyzer::LoudnessAnalyzer::isDataValid(ADAM::UnionDataPtr)const::errCnt;
        goto LABEL_31;
      }
    }

    else
    {
      v10 = MEMORY[0x29EDCA988];
      v21 = MEMORY[0x29EDCA988];
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v26 = "LoudnessAnalyzer.cpp";
      v27 = 1024;
      v28 = 114;
      _os_log_impl(&dword_296C34000, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d HAE SPL data ptr is null? (sampled every 3k)", buf, 0x12u);
    }

    goto LABEL_30;
  }

  v5 = *a3 >= 0.0 && *a3 < 130.0;
  if (v5 && *(a3 + 16) >= 0.0)
  {
    *(a1 + 32) = *a4;
    v15 = a4[1];
    v16 = a4[2];
    v17 = a4[4];
    *(a1 + 80) = a4[3];
    *(a1 + 96) = v17;
    *(a1 + 48) = v15;
    *(a1 + 64) = v16;
    v24 = *(a3 + 16);
    v18.f64[0] = __exp10(*a3 * 0.1) * v24;
    v18.f64[1] = v24;
    v23 = vaddq_f64(v18, *(a1 + 136));
    *(a1 + 136) = v23;
    v19.f64[0] = __exp10(*(a3 + 4) * 0.1) * v24;
    v19.f64[1] = v24;
    *(a1 + 152) = vaddq_f64(v19, *(a1 + 152));
    v20.f64[0] = __exp10(*(a3 + 8) * 0.1) * v24;
    v20.f64[1] = v24;
    *(a1 + 168) = vaddq_f64(v20, *(a1 + 168));
    *(a1 + 128) = *(a3 + 12);
    if (v23.f64[1] >= *(a1 + 184))
    {
      ADAM::Analyzer::LoudnessAnalyzer::popDose(a1);
      v6 = 0;
      *(a1 + 112) = 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    if (ADAM::ADAMLogScope(void)::once != -1)
    {
      dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
    }

    v6 = 1684108321;
    if (ADAM::ADAMLogScope(void)::scope)
    {
      v7 = *ADAM::ADAMLogScope(void)::scope;
      if (!v7)
      {
        return v6;
      }
    }

    else
    {
      v7 = MEMORY[0x29EDCA988];
      v11 = MEMORY[0x29EDCA988];
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v12 = *a3;
      v13 = *(a3 + 16);
      *buf = 136315906;
      v26 = "LoudnessAnalyzer.cpp";
      v27 = 1024;
      v28 = 124;
      v29 = 2048;
      v30 = v12;
      v31 = 2048;
      v32 = v13;
      _os_log_impl(&dword_296C34000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid HAE data { dBA: %.2f, duration: %.2f }", buf, 0x26u);
    }
  }

  return v6;
}

float ADAM::Analyzer::LoudnessAnalyzer::popDose(ADAM::Analyzer::LoudnessAnalyzer *this)
{
  v2 = log(*(this + 17) / *(this + 18));
  *(this + 17) = 0;
  *(this + 18) = 0;
  *&v2 = v2 * 10.0 / 2.30258509;
  *(this + 29) = LODWORD(v2);
  v3 = log(*(this + 19) / *(this + 20));
  *(this + 19) = 0;
  *(this + 20) = 0;
  *&v3 = v3 * 10.0 / 2.30258509;
  *(this + 30) = LODWORD(v3);
  v4 = *(this + 22);
  v5 = log(*(this + 21) / v4);
  *(this + 21) = 0;
  *(this + 22) = 0;
  *&v5 = v5 * 10.0 / 2.30258509;
  *(this + 31) = LODWORD(v5);
  result = v4;
  *(this + 33) = result;
  return result;
}

void ADAM::Analyzer::LoudnessAnalyzer::flush(ADAM::Analyzer::LoudnessAnalyzer *this)
{
  v8 = *MEMORY[0x29EDCA608];
  if (*(this + 18) > 0.0)
  {
    ADAM::Analyzer::LoudnessAnalyzer::popDose(this);
    *(this + 112) = 1;
    *(this + 13) = 1;
    if (ADAM::ADAMLogScope(void)::once != -1)
    {
      dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
    }

    if (ADAM::ADAMLogScope(void)::scope)
    {
      v2 = *ADAM::ADAMLogScope(void)::scope;
      if (!v2)
      {
        return;
      }
    }

    else
    {
      v2 = MEMORY[0x29EDCA988];
      v3 = MEMORY[0x29EDCA988];
    }

    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v4 = 136315394;
      v5 = "LoudnessAnalyzer.cpp";
      v6 = 1024;
      v7 = 90;
      _os_log_impl(&dword_296C34000, v2, OS_LOG_TYPE_INFO, "%25s:%-5d LoudnessAnalyzer needs to be flushed", &v4, 0x12u);
    }
  }
}

void *ADAM::BoolParamInfo::BoolParamInfo(void *a1, uint64_t a2, unsigned __int8 a3, __int128 *a4)
{
  v6[4] = *MEMORY[0x29EDCA608];
  v6[1] = a3;
  v6[0] = std::__any_imp::_SmallHandler<BOOL>::__handle[abi:ne200100];
  ADAM::Parameters::ParamInfo::ParamInfo(a1, a2, v6, a4);
  std::any::reset[abi:ne200100](v6);
  *a1 = &unk_2A1DEE608;
  return a1;
}

void sub_296C6B1AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::any::reset[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *ADAM::FloatParamInfo::FloatParamInfo(void *a1, uint64_t a2, float a3, __int128 *a4)
{
  v6[4] = *MEMORY[0x29EDCA608];
  v6[1] = LODWORD(a3);
  v6[0] = std::__any_imp::_SmallHandler<float>::__handle[abi:ne200100];
  ADAM::Parameters::ParamInfo::ParamInfo(a1, a2, v6, a4);
  std::any::reset[abi:ne200100](v6);
  *a1 = &unk_2A1DEE638;
  return a1;
}

void sub_296C6B260(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::any::reset[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::default_delete<ADAM::BoolParamInfo>::operator()[abi:ne200100](uint64_t result)
{
  if (result)
  {
    v1 = result;
    *result = &unk_2A1DEE620;
    if (*(result + 103) < 0)
    {
      operator delete(*(result + 80));
    }

    std::any::reset[abi:ne200100]((v1 + 48));
    std::any::reset[abi:ne200100]((v1 + 16));

    JUMPOUT(0x29C260F00);
  }

  return result;
}

uint64_t ADAM::Parameters::ReadDefaults(ADAM::Parameters *this)
{
  result = CFPreferencesAppSynchronize(@"com.apple.coreaudio");
  v4 = *this;
  v3 = *(this + 1);
  while (v4 != v3)
  {
    v5 = *v4;
    v4 += 2;
    result = (**v5)(v5);
  }

  return result;
}

void std::vector<std::shared_ptr<ADAM::Parameters::ParamInfo>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        if (v6)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v6);
        }

        v4 -= 16;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void ADAM::Parameters::SettingsChanged(ADAM::Parameters *this, __CFNotificationCenter **a2, void *a3, const __CFString *a4, void *a5, const __CFDictionary *a6)
{
  v20 = *MEMORY[0x29EDCA608];
  v15 = a3;
  v6 = [v15 isEqualToString:*MEMORY[0x29EDBFAB8]];
  if (!v6)
  {
    ADAM::Parameters::instance(v6);
    ADAM::Parameters::ReadDefaults(&ADAM::Parameters::instance(void)::gParams);
    goto LABEL_20;
  }

  ADAM::Parameters::instance(v6);
  v7 = objc_alloc_init(MEMORY[0x29EDBFAC8]);
  v8 = [v7 getPreferenceFor:@"_ADAFPreferenceKeyConnectedWiredDeviceIsHeadphone"];

  if (ADAM::ADAMLogScope(void)::once != -1)
  {
    dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
  }

  if (!ADAM::ADAMLogScope(void)::scope)
  {
    v9 = MEMORY[0x29EDCA988];
    v10 = MEMORY[0x29EDCA988];
    goto LABEL_9;
  }

  v9 = *ADAM::ADAMLogScope(void)::scope;
  if (v9)
  {
LABEL_9:
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      *&buf[4] = "ADAMParameters.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 162;
      v18 = 2112;
      v19 = v8;
      _os_log_impl(&dword_296C34000, v9, OS_LOG_TYPE_INFO, "%25s:%-5d ADAM re-loading wired device status is headphone: %@", buf, 0x1Cu);
    }
  }

  if (v8)
  {
    v11 = [v8 BOOLValue];
  }

  else
  {
    v11 = 1;
  }

  v12 = *(ADAM::Parameters::instance(void)::gParams + 192);
  v13 = (v12 + 16);
  v16[1] = v11;
  v16[0] = std::__any_imp::_SmallHandler<BOOL>::__handle[abi:ne200100];
  if (v16 != (v12 + 16))
  {
    v14 = *v13;
    if (*v13)
    {
      *buf = 0;
      *&buf[8] = 0;
      v14(2, v12 + 16, buf, 0, 0);
      v16[0](2, v16, v13, 0, 0);
      (*buf)(2, buf, v16, 0, 0);
      std::any::reset[abi:ne200100](buf);
    }

    else
    {
      *(v12 + 24) = v11;
      *(v12 + 16) = std::__any_imp::_SmallHandler<BOOL>::__handle[abi:ne200100];
      v16[0] = 0;
    }
  }

  std::any::reset[abi:ne200100](v16);

LABEL_20:
}

uint64_t (**std::any::reset[abi:ne200100](uint64_t (**result)(void, void, void, void, void)))(void, void, void, void, void)
{
  if (*result)
  {
    return (*result)(0, result, 0, 0, 0);
  }

  return result;
}

void std::__shared_ptr_pointer<ADAM::FloatParamInfo  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C260F00);
}

uint64_t ADAM::Parameters::ParamInfo::ParamInfo(uint64_t a1, uint64_t a2, void (**a3)(uint64_t, void, uint64_t, void, void), __int128 *a4)
{
  *a1 = &unk_2A1DEE620;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  if (*a3)
  {
    (*a3)(1, a3, a1 + 16, 0, 0);
  }

  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  if (*a3)
  {
    (*a3)(1, a3, a1 + 48, 0, 0);
  }

  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 80), *a4, *(a4 + 1));
  }

  else
  {
    v7 = *a4;
    *(a1 + 96) = *(a4 + 2);
    *(a1 + 80) = v7;
  }

  return a1;
}

void sub_296C6B7E0(_Unwind_Exception *a1)
{
  std::any::reset[abi:ne200100](v2);
  std::any::reset[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

void ADAM::FloatParamInfo::ReadDefaultsValue(CFStringRef *this)
{
  v21 = *MEMORY[0x29EDCA608];
  v2 = CFPreferencesCopyAppValue(this[1], @"com.apple.coreaudio");
  valuePtr = 0.0;
  if (!v2)
  {
    goto LABEL_12;
  }

  v3 = v2;
  v4 = CFGetTypeID(v2);
  if (v4 == CFBooleanGetTypeID())
  {
    valuePtr = CFBooleanGetValue(v3);
LABEL_6:
    v5 = valuePtr;
    CFRelease(v3);
    v6 = v5;
    v7 = 1;
LABEL_7:
    *&buffer[12] = 0;
    *&buffer[8] = v6;
    *buffer = std::__any_imp::_SmallHandler<float>::__handle[abi:ne200100];
    goto LABEL_15;
  }

  if (v4 == CFNumberGetTypeID())
  {
    CFNumberGetValue(v3, kCFNumberDoubleType, &valuePtr);
    goto LABEL_6;
  }

  if (v4 != CFStringGetTypeID())
  {
    CFRelease(v3);
LABEL_12:
    v7 = 0;
    goto LABEL_13;
  }

  v20 = 0u;
  memset(buffer, 0, sizeof(buffer));
  CFStringGetCString(v3, buffer, 64, 0x600u);
  v7 = sscanf(buffer, "%lf", &valuePtr) == 1;
  v8 = valuePtr;
  CFRelease(v3);
  if (v7)
  {
    v6 = v8;
    goto LABEL_7;
  }

LABEL_13:
  v9 = this[6];
  *buffer = 0;
  *&buffer[8] = 0;
  if (v9)
  {
    (v9)(1, this + 6, buffer, 0, 0);
  }

LABEL_15:
  std::any::operator=[abi:ne200100](this + 2, buffer);
  std::any::reset[abi:ne200100](buffer);
  if (ADAM::ADAMLogScope(void)::once != -1)
  {
    dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
  }

  if (ADAM::ADAMLogScope(void)::scope)
  {
    v10 = *ADAM::ADAMLogScope(void)::scope;
    if (!v10)
    {
      return;
    }
  }

  else
  {
    v10 = MEMORY[0x29EDCA988];
    v11 = MEMORY[0x29EDCA988];
  }

  v12 = v10;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = this[1];
    v14 = std::any_cast[abi:ne200100]<float>(this + 2);
    if (!v14)
    {
      std::__throw_bad_any_cast[abi:ne200100]();
    }

    v15 = *v14;
    v16 = "valid";
    if (!v7)
    {
      v16 = "invalid";
    }

    v17 = this + 10;
    if (*(this + 103) < 0)
    {
      v17 = *v17;
    }

    *buffer = 136316418;
    *&buffer[4] = "ADAMParameters.cpp";
    *&buffer[12] = 1024;
    *&buffer[14] = 41;
    *&buffer[18] = 2112;
    *&buffer[20] = v13;
    *&buffer[28] = 2048;
    *&buffer[30] = v15;
    *&buffer[38] = 2080;
    *&buffer[40] = v16;
    LOWORD(v20) = 2080;
    *(&v20 + 2) = v17;
    _os_log_impl(&dword_296C34000, v12, OS_LOG_TYPE_DEFAULT, "%25s:%-5d ADAM Parameter: {'%@', %.2f, %s} %s", buffer, 0x3Au);
  }
}

unint64_t *std::any::operator=[abi:ne200100](unint64_t *a1, void (**a2)(uint64_t))
{
  v4[8] = *MEMORY[0x29EDCA608];
  v4[0] = 0;
  v4[1] = 0;
  if (*a2)
  {
    (*a2)(1);
  }

  if (v4 != a1 && *a1 != 0)
  {
    (*a1)(2, a1, v4, 0, 0);
  }

  std::any::reset[abi:ne200100](v4);
  return a1;
}

void sub_296C6BC2C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void std::__shared_ptr_pointer<ADAM::BoolParamInfo  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C260F00);
}

void ADAM::BoolParamInfo::ReadDefaultsValue(ADAM::BoolParamInfo *this)
{
  v24 = *MEMORY[0x29EDCA608];
  v2 = CFPreferencesCopyAppValue(*(this + 1), @"com.apple.coreaudio");
  valuePtr = 0;
  if (!v2)
  {
    goto LABEL_15;
  }

  v3 = v2;
  v4 = CFGetTypeID(v2);
  if (v4 == CFBooleanGetTypeID())
  {
    v5 = CFBooleanGetValue(v3) == 0;
    goto LABEL_6;
  }

  if (v4 == CFNumberGetTypeID())
  {
    CFNumberGetValue(v3, kCFNumberIntType, &valuePtr);
    v5 = valuePtr == 0;
LABEL_6:
    v6 = !v5;
    goto LABEL_9;
  }

  if (v4 == CFStringGetTypeID())
  {
    v23 = 0u;
    memset(buffer, 0, sizeof(buffer));
    CFStringGetCString(v3, buffer, 64, 0x600u);
    if (sscanf(buffer, "%d", &valuePtr) == 1)
    {
      v6 = valuePtr != 0;
      CFRelease(v3);
      goto LABEL_10;
    }

    v17 = buffer[0];
    if (buffer[0])
    {
      v18 = &buffer[1];
      do
      {
        *(v18 - 1) = __tolower(v17);
        v19 = *v18++;
        v17 = v19;
      }

      while (v19);
    }

    if (!(*buffer ^ 0x6F6E | buffer[2]) || (*buffer == 1936482662 ? (v20 = *&buffer[4] == 101) : (v20 = 0), v20))
    {
      v6 = 0;
    }

    else
    {
      if (*buffer != 7562617 && *buffer ^ 0x65757274 | buffer[4])
      {
        CFRelease(v3);
        goto LABEL_15;
      }

      v6 = 1;
    }

LABEL_9:
    CFRelease(v3);
LABEL_10:
    *&buffer[8] = v6;
    *buffer = std::__any_imp::_SmallHandler<BOOL>::__handle[abi:ne200100];
    v7 = 1;
    goto LABEL_18;
  }

  CFRelease(v3);
LABEL_15:
  v8 = *(this + 6);
  *buffer = 0;
  *&buffer[8] = 0;
  if (v8)
  {
    v8(1, this + 48, buffer, 0, 0);
  }

  v7 = 0;
LABEL_18:
  std::any::operator=[abi:ne200100](this + 2, buffer);
  std::any::reset[abi:ne200100](buffer);
  if (ADAM::ADAMLogScope(void)::once != -1)
  {
    dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
  }

  if (ADAM::ADAMLogScope(void)::scope)
  {
    v9 = *ADAM::ADAMLogScope(void)::scope;
    if (!v9)
    {
      return;
    }
  }

  else
  {
    v9 = MEMORY[0x29EDCA988];
    v10 = MEMORY[0x29EDCA988];
  }

  v11 = v9;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(this + 1);
    v13 = std::any_cast[abi:ne200100]<BOOL>(this + 2);
    if (!v13)
    {
      std::__throw_bad_any_cast[abi:ne200100]();
    }

    if (*v13)
    {
      v14 = "true";
    }

    else
    {
      v14 = "false";
    }

    v15 = "valid";
    if (!v7)
    {
      v15 = "invalid";
    }

    v16 = (this + 80);
    if (*(this + 103) < 0)
    {
      v16 = *v16;
    }

    *buffer = 136316418;
    *&buffer[4] = "ADAMParameters.cpp";
    *&buffer[12] = 1024;
    *&buffer[14] = 30;
    *&buffer[18] = 2112;
    *&buffer[20] = v12;
    *&buffer[28] = 2080;
    *&buffer[30] = v14;
    *&buffer[38] = 2080;
    *&buffer[40] = v15;
    LOWORD(v23) = 2080;
    *(&v23 + 2) = v16;
    _os_log_impl(&dword_296C34000, v11, OS_LOG_TYPE_DEFAULT, "%25s:%-5d ADAM Parameter: {'%@', %s, %s} %s", buffer, 0x3Au);
  }
}

void sub_296C6CC64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::vector<std::shared_ptr<ADAM::Parameters::ParamInfo>>::__destroy_vector::operator()[abi:ne200100](&__p);
  v16 = 248;
  while (1)
  {
    v17 = *(&a15 + v16);
    if (v17)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v17);
    }

    v16 -= 16;
    if (v16 == -8)
    {
      _Unwind_Resume(a1);
    }
  }
}

float ADAM::Parameters::GetHAELiveUIAccumulationPeriodInSec(ADAM::Parameters *this)
{
  v12 = *MEMORY[0x29EDCA608];
  Param = ADAM::Parameters::GetParamValue<float>(9u);
  if (Param <= 0.0 || Param > 10.0)
  {
    if (ADAM::ADAMLogScope(void)::once != -1)
    {
      dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
    }

    if (ADAM::ADAMLogScope(void)::scope)
    {
      v3 = *ADAM::ADAMLogScope(void)::scope;
      if (!v3)
      {
        return 1.0;
      }
    }

    else
    {
      v3 = MEMORY[0x29EDCA988];
      v4 = MEMORY[0x29EDCA988];
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v6 = 136315650;
      v7 = "ADAMParameters.cpp";
      v8 = 1024;
      v9 = 152;
      v10 = 2048;
      v11 = Param;
      _os_log_impl(&dword_296C34000, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid Accumulation Period in Seconds for HAE: %.2f, default to 1.0s", &v6, 0x1Cu);
    }

    return 1.0;
  }

  return Param;
}

void ADAM::BufferNodeDescriptorBase::~BufferNodeDescriptorBase(void **this)
{
  *this = &unk_2A1DEEA98;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x29C260F00);
}

{
  *this = &unk_2A1DEEA98;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

_DWORD *ADAM::BufferNodePCM::pop(_DWORD *this)
{
  if (this[44])
  {
    atomic_fetch_add(this + 44, 0xFFFFFFFF);
    this[43] = (this[43] + 1) % this[47];
  }

  return this;
}

uint64_t ADAM::BufferNodePCM::read(uint64_t a1, int *a2, _OWORD *a3)
{
  v31 = *MEMORY[0x29EDCA608];
  v5 = *(a1 + 160);
  if (*a2 == *v5)
  {
    if (*(a1 + 176))
    {
      v7 = *(a1 + 172);
      v8 = (v7 + 1) % *(a1 + 188);
      v9 = *(a1 + 232);
      if (*a2)
      {
        v10 = 0;
        v11 = 0;
        v12 = (*(a1 + 216) * *(v9 + 80 * v7 + 64));
        do
        {
          memcpy(*&a2[v10 + 4], (*&v5[v10 + 4] + *(a1 + 184) * v7), v12);
          a2[v10 + 3] = v12;
          ++v11;
          v5 = *(a1 + 160);
          v10 += 4;
        }

        while (v11 < *v5);
        v9 = *(a1 + 232);
      }

      v13 = 0;
      v14 = (v9 + 80 * v7);
      *a3 = *v14;
      v15 = v14[1];
      v16 = v14[2];
      v17 = v14[4];
      a3[3] = v14[3];
      a3[4] = v17;
      a3[1] = v15;
      a3[2] = v16;
      *(a1 + 172) = v8;
      atomic_fetch_add((a1 + 176), 0xFFFFFFFF);
    }

    else
    {
      return 1701670945;
    }
  }

  else
  {
    if (ADAM::ADAMLogScope(void)::once != -1)
    {
      dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
    }

    v13 = 1718444833;
    if (ADAM::ADAMLogScope(void)::scope)
    {
      v18 = *ADAM::ADAMLogScope(void)::scope;
      if (!v18)
      {
        return v13;
      }
    }

    else
    {
      v18 = MEMORY[0x29EDCA988];
      v19 = MEMORY[0x29EDCA988];
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v20 = *a2;
      v21 = **(a1 + 160);
      v23 = 136315906;
      v24 = "ADAMRingBuffer.cpp";
      v25 = 1024;
      v26 = 63;
      v27 = 1024;
      v28 = v20;
      v29 = 1024;
      v30 = v21;
      _os_log_impl(&dword_296C34000, v18, OS_LOG_TYPE_ERROR, "%25s:%-5d AudioRingBuffer process error format does not match: outABL.mNumBuffers:%u expected:%u", &v23, 0x1Eu);
    }
  }

  return v13;
}

uint64_t ADAM::BufferNodePCM::process(_DWORD **a1, __int128 *a2, _OWORD *a3)
{
  v3 = a1;
  v41 = *MEMORY[0x29EDCA608];
  v31 = *a2;
  v32 = *(a2 + 2);
  v4 = v31;
  if (v31 != *a1[20])
  {
    v8 = ADAM::AudioRingBuffer::write(AudioBufferList const&,ADAM::Metadata const&)::errCnt;
    v9 = ++ADAM::AudioRingBuffer::write(AudioBufferList const&,ADAM::Metadata const&)::errCnt;
    if (v8)
    {
LABEL_30:
      if (v9 > 0xFFE)
      {
        v9 = 0;
      }

      ADAM::AudioRingBuffer::write(AudioBufferList const&,ADAM::Metadata const&)::errCnt = v9;
      return 1718444833;
    }

    if (ADAM::ADAMLogScope(void)::once != -1)
    {
      dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
    }

    if (ADAM::ADAMLogScope(void)::scope)
    {
      v10 = *ADAM::ADAMLogScope(void)::scope;
      if (!v10)
      {
LABEL_29:
        v9 = ADAM::AudioRingBuffer::write(AudioBufferList const&,ADAM::Metadata const&)::errCnt;
        goto LABEL_30;
      }
    }

    else
    {
      v10 = MEMORY[0x29EDCA988];
      v27 = MEMORY[0x29EDCA988];
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v28 = *v3[20];
      *buf = 136315906;
      v34 = "ADAMRingBuffer.cpp";
      v35 = 1024;
      v36 = 32;
      v37 = 1024;
      v38 = v31;
      v39 = 1024;
      v40 = v28;
      _os_log_impl(&dword_296C34000, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d AudioRingBuffer process error format does not match: inABL.mNumBuffers:%u expected:%u", buf, 0x1Eu);
    }

    goto LABEL_29;
  }

  if (HIDWORD(v31) > *(a1 + 46))
  {
    v5 = ADAM::AudioRingBuffer::write(AudioBufferList const&,ADAM::Metadata const&)::errCnt;
    v6 = ++ADAM::AudioRingBuffer::write(AudioBufferList const&,ADAM::Metadata const&)::errCnt;
    if (v5)
    {
LABEL_38:
      if (v6 > 0xFFE)
      {
        v6 = 0;
      }

      ADAM::AudioRingBuffer::write(AudioBufferList const&,ADAM::Metadata const&)::errCnt = v6;
      return 1819436833;
    }

    if (ADAM::ADAMLogScope(void)::once != -1)
    {
      dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
    }

    if (ADAM::ADAMLogScope(void)::scope)
    {
      v7 = *ADAM::ADAMLogScope(void)::scope;
      if (!v7)
      {
LABEL_37:
        v6 = ADAM::AudioRingBuffer::write(AudioBufferList const&,ADAM::Metadata const&)::errCnt;
        goto LABEL_38;
      }
    }

    else
    {
      v7 = MEMORY[0x29EDCA988];
      v29 = MEMORY[0x29EDCA988];
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v30 = *(v3 + 46);
      *buf = 136315906;
      v34 = "ADAMRingBuffer.cpp";
      v35 = 1024;
      v36 = 37;
      v37 = 1024;
      v38 = HIDWORD(v31);
      v39 = 1024;
      v40 = v30;
      _os_log_impl(&dword_296C34000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d AudioRingBuffer process error incoming size: %u, blksz: %u", buf, 0x1Eu);
    }

    goto LABEL_37;
  }

  v11 = *(a1 + 42);
  v12 = *(a1 + 47);
  if (*(a1 + 44) == v12)
  {
    return 1718971425;
  }

  v15 = (v11 + 1) % v12;
  if (v31)
  {
    v16 = &v32;
    v17 = 4;
    do
    {
      a1 = memcpy((*&v3[20][v17] + (*(v3 + 46) * v11)), *v16, *(v16 - 1));
      v16 += 2;
      v17 += 4;
      --v4;
    }

    while (v4);
  }

  v18 = &v3[29][20 * v11];
  *v18 = *a3;
  v19 = a3[1];
  v20 = a3[2];
  v21 = a3[4];
  v18[3] = a3[3];
  v18[4] = v21;
  v18[1] = v19;
  v18[2] = v20;
  *(v3 + 42) = v15;
  atomic_fetch_add(v3 + 44, 1u);
  v22 = &v3[4][6 * *(v3 + 14)];
  *(v22 + 8) = v3[2];
  *(v22 + 16) = 4;
  ADAM::AudioDataAnalysisManager::instance(a1);
  v23 = qword_2A18A51E0[0];
  atomic_store(qword_2A18A51E0[0], v22);
  v24 = v23;
  atomic_compare_exchange_strong(qword_2A18A51E0, &v24, v22);
  if (v24 != v23)
  {
    v25 = v24;
    do
    {
      atomic_store(v24, v22);
      atomic_compare_exchange_strong(qword_2A18A51E0, &v25, v22);
      v26 = v25 == v24;
      v24 = v25;
    }

    while (!v26);
  }

  caulk::semaphore::signal(&unk_2A18A51C8);
  result = 0;
  *(v3 + 14) = (*(v3 + 14) + 1) % *(v3 + 7);
  return result;
}

void ADAM::BufferNodePCM::reset(ADAM::BufferNodePCM *this)
{
  v14 = *MEMORY[0x29EDCA608];
  if (!atomic_load(this + 44))
  {
LABEL_5:
    *(this + 42) = 0;
    *(this + 43) = 0;
    *(this + 44) = 0;
    return;
  }

  v3 = -50500;
  while (1)
  {
    v3 += 500;
    if (!v3)
    {
      break;
    }

    usleep(0x1F4u);
    if (!atomic_load(this + 44))
    {
      goto LABEL_5;
    }
  }

  if (ADAM::ADAMLogScope(void)::once != -1)
  {
    dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
  }

  if (ADAM::ADAMLogScope(void)::scope)
  {
    v5 = *ADAM::ADAMLogScope(void)::scope;
    if (!v5)
    {
      return;
    }
  }

  else
  {
    v5 = MEMORY[0x29EDCA988];
    v6 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v7 = *(this + 2);
    v8 = 136315650;
    v9 = "ADAMBufferNodes.cpp";
    v10 = 1024;
    v11 = 46;
    v12 = 2048;
    v13 = v7;
    _os_log_impl(&dword_296C34000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d Session: %llx Failed to flush ring buffer, Timedout", &v8, 0x1Cu);
  }
}

void ADAM::BufferNodeDescriptorPCM::~BufferNodeDescriptorPCM(void **this)
{
  *this = &unk_2A1DEEA98;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x29C260F00);
}

{
  *this = &unk_2A1DEEA98;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

uint64_t AudioDataAnalysisManagerReset(ADAM::AudioDataAnalysisManager *a1)
{
  ADAM::AudioDataAnalysisManager::instance(a1);
  ClientSessionMananger = ADAM::AudioDataAnalysisManager::getClientSessionMananger(&ADAM::AudioDataAnalysisManager::instance(void)::gAdam, a1);
  if (!ClientSessionMananger)
  {
    return 561211748;
  }

  v3 = ClientSessionMananger;
  for (i = *(ClientSessionMananger + 32); i; i = *i)
  {
    (*(*i[3] + 8))(i[3]);
  }

  v5 = *(v3 + 120);
  v6 = *(v3 + 128);
  while (v6 != v5)
  {
    v7 = *(v6 - 1);
    v6 -= 3;
    if (v7 < 0)
    {
      operator delete(*v6);
    }
  }

  result = 0;
  *(v3 + 128) = v5;
  return result;
}

uint64_t AudioDataAnalysisManagerUpdateReportingSessions(ADAM::AudioDataAnalysisManager *a1, uint64_t **a2)
{
  ADAM::AudioDataAnalysisManager::instance(a1);
  ClientSessionMananger = ADAM::AudioDataAnalysisManager::getClientSessionMananger(&ADAM::AudioDataAnalysisManager::instance(void)::gAdam, a1);
  if (!ClientSessionMananger)
  {
    return 561211748;
  }

  ADAM::ClientSessionManager::updateReportingSessions(ClientSessionMananger, a2);
  return 0;
}

uint64_t AudioDataAnalysisManagerCreateNodeSPL(ADAM::AudioDataAnalysisManager *a1, unsigned int a2, void *a3)
{
  ADAM::AudioDataAnalysisManager::instance(a1);
  ClientSessionMananger = ADAM::AudioDataAnalysisManager::getClientSessionMananger(&ADAM::AudioDataAnalysisManager::instance(void)::gAdam, a1);
  if (!ClientSessionMananger)
  {
    return 561211748;
  }

  if (!std::__hash_table<std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>>>::find<unsigned int>((ClientSessionMananger + 16), a2))
  {
    operator new();
  }

  return 1852400673;
}

uint64_t AudioDataAnalysisManagerCreateNodeMicLevel(ADAM::AudioDataAnalysisManager *a1, unsigned int a2, void *a3)
{
  ADAM::AudioDataAnalysisManager::instance(a1);
  ClientSessionMananger = ADAM::AudioDataAnalysisManager::getClientSessionMananger(&ADAM::AudioDataAnalysisManager::instance(void)::gAdam, a1);
  if (!ClientSessionMananger)
  {
    return 561211748;
  }

  if (!std::__hash_table<std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>>>::find<unsigned int>((ClientSessionMananger + 16), a2))
  {
    operator new();
  }

  return 1852400673;
}

uint64_t AudioDataAnalysisManagerRemoveNode(ADAM::AudioDataAnalysisManager *a1, unsigned int a2)
{
  ADAM::AudioDataAnalysisManager::instance(a1);
  if (byte_2A18A51D8 != 1)
  {
    return 1634625825;
  }

  ClientSessionMananger = ADAM::AudioDataAnalysisManager::getClientSessionMananger(&ADAM::AudioDataAnalysisManager::instance(void)::gAdam, a1);
  if (!ClientSessionMananger)
  {
    return 561211748;
  }

  v5 = ClientSessionMananger;
  if (!std::__hash_table<std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>>>::find<unsigned int>((ClientSessionMananger + 16), a2))
  {
    return 1852400673;
  }

  std::__hash_table<std::__hash_value_type<unsigned int,std::unique_ptr<ADAM::BufferNodeBase>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<ADAM::BufferNodeBase>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<ADAM::BufferNodeBase>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unique_ptr<ADAM::BufferNodeBase>>>>::__erase_unique<unsigned int>((v5 + 16), a2);
  return 0;
}

uint64_t AudioDataAnalysisManagerProcessSPL(unint64_t a1, unsigned int a2, _OWORD *a3, float a4, float a5, float a6, float a7, float a8)
{
  v31 = *MEMORY[0x29EDCA608];
  v16 = 1634625825;
  ADAM::AudioDataAnalysisManager::instance(a1);
  if (byte_2A18A51D8 == 1)
  {
    ADAM::session_lock_exclusive::session_lock_exclusive_flag::session_lock_exclusive_flag(buf);
    if (buf[0] == 1)
    {
      v17 = std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<ADAM::ClientSessionManager>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ADAM::ClientSessionManager>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ADAM::ClientSessionManager>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<ADAM::ClientSessionManager>>>>::find<unsigned long long>(&ADAM::AudioDataAnalysisManager::instance(void)::gAdam, a1);
      if (v17 && (v18 = *(v17 + 3)) != 0)
      {
        ADAM::session_lock_exclusive::shared_cnt(v17);
        atomic_fetch_add_explicit(&ADAM::session_lock_exclusive::shared_cnt(void)::_c, 0xFFFFFFFF, memory_order_relaxed);
        if (*(v18 + 432) == 1)
        {
          v19 = std::__hash_table<std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>>>::find<unsigned int>((v18 + 16), a2);
          if (v19)
          {
            v20 = a3[1];
            *buf = *a3;
            *&buf[16] = v20;
            v21 = a3[3];
            v28 = a3[2];
            v29 = v21;
            v30 = xmmword_296C79980;
            *v26 = a4;
            *&v26[1] = a5;
            *&v26[2] = a6;
            *&v26[3] = a7;
            *&v26[4] = a8;
            return (*(*v19[3] + 16))(v19[3], v26, buf);
          }

          else
          {
            return 1852400673;
          }
        }
      }

      else
      {
        v16 = 561211748;
        ADAM::session_lock_exclusive::shared_cnt(v17);
        atomic_fetch_add_explicit(&ADAM::session_lock_exclusive::shared_cnt(void)::_c, 0xFFFFFFFF, memory_order_relaxed);
      }
    }

    else
    {
      if (ADAM::ADAMLogScope(void)::once != -1)
      {
        dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
      }

      v16 = 1835102241;
      if (ADAM::ADAMLogScope(void)::scope)
      {
        v22 = *ADAM::ADAMLogScope(void)::scope;
        if (!v22)
        {
          return v16;
        }
      }

      else
      {
        v22 = MEMORY[0x29EDCA988];
        v23 = MEMORY[0x29EDCA988];
      }

      v24 = v22;
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        *&buf[4] = "AudioDataAnalysisManager.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 318;
        *&buf[18] = 2048;
        *&buf[20] = a2 | (a1 << 32);
        _os_log_impl(&dword_296C34000, v24, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Session %llx, Map is mutating", buf, 0x1Cu);
      }
    }
  }

  return v16;
}

void sub_296C6E638(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 buf, __int16 a14, __int16 a15, __int128 a16, uint64_t a17)
{
  if (a2)
  {
    v20 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      v21 = ADAM::AudioDataAnalysisManager::processSPL(unsigned long long,unsigned int,float,float,float,float,float,AudioTimeStamp const&)::errCnt;
      v22 = ++ADAM::AudioDataAnalysisManager::processSPL(unsigned long long,unsigned int,float,float,float,float,float,AudioTimeStamp const&)::errCnt;
      if (!v21)
      {
        v23 = v20;
        if (ADAM::ADAMLogScope(void)::once != -1)
        {
          dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
        }

        v24 = CALog::LogObjIfEnabled(ADAM::ADAMLogScope(void)::scope);
        v25 = v24;
        if (v24)
        {
          v26 = v24;
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            v27 = (*(*v23 + 16))(v23);
            LODWORD(buf) = 136316162;
            *(&buf + 4) = "AudioDataAnalysisManager.cpp";
            WORD6(buf) = 1024;
            *(&buf + 14) = 322;
            a15 = 2048;
            WORD2(a16) = 2048;
            *(&a16 + 6) = v18 | (v17 << 32);
            HIWORD(a16) = 2080;
            a17 = v27;
            _os_log_impl(&dword_296C34000, v26, OS_LOG_TYPE_ERROR, "%25s:%-5d Exception %p, session %llx, %s", &buf, 0x30u);
          }
        }

        v22 = ADAM::AudioDataAnalysisManager::processSPL(unsigned long long,unsigned int,float,float,float,float,float,AudioTimeStamp const&)::errCnt;
      }

      if (v22 > 0xBB7)
      {
        v22 = 0;
      }

      ADAM::AudioDataAnalysisManager::processSPL(unsigned long long,unsigned int,float,float,float,float,float,AudioTimeStamp const&)::errCnt = v22;
      __cxa_end_catch();
    }

    else
    {
      v28 = ADAM::AudioDataAnalysisManager::processSPL(unsigned long long,unsigned int,float,float,float,float,float,AudioTimeStamp const&)::errCnt;
      v29 = ++ADAM::AudioDataAnalysisManager::processSPL(unsigned long long,unsigned int,float,float,float,float,float,AudioTimeStamp const&)::errCnt;
      if (!v28)
      {
        if (ADAM::ADAMLogScope(void)::once != -1)
        {
          dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
        }

        v30 = CALog::LogObjIfEnabled(ADAM::ADAMLogScope(void)::scope);
        v31 = v30;
        if (v30)
        {
          v32 = v30;
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            *(&buf + 4) = "AudioDataAnalysisManager.cpp";
            WORD6(buf) = 1024;
            LODWORD(buf) = 136315906;
            *(&buf + 14) = 324;
            a15 = 2048;
            WORD2(a16) = 2048;
            *(&a16 + 6) = v18 | (v17 << 32);
            _os_log_impl(&dword_296C34000, v32, OS_LOG_TYPE_ERROR, "%25s:%-5d Exception %p, session %llx", &buf, 0x26u);
          }
        }

        v29 = ADAM::AudioDataAnalysisManager::processSPL(unsigned long long,unsigned int,float,float,float,float,float,AudioTimeStamp const&)::errCnt;
      }

      if (v29 > 0xBB7)
      {
        v29 = 0;
      }

      ADAM::AudioDataAnalysisManager::processSPL(unsigned long long,unsigned int,float,float,float,float,float,AudioTimeStamp const&)::errCnt = v29;
      __cxa_end_catch();
    }

    JUMPOUT(0x296C6E5CCLL);
  }

  _Unwind_Resume(a1);
}

uint64_t AudioDataAnalysisManagerProcessMicLevel(unint64_t a1, unsigned int a2, _OWORD *a3, float a4, float a5)
{
  v25 = *MEMORY[0x29EDCA608];
  v10 = 1634625825;
  ADAM::AudioDataAnalysisManager::instance(a1);
  if (byte_2A18A51D8 == 1)
  {
    ADAM::session_lock_exclusive::session_lock_exclusive_flag::session_lock_exclusive_flag(buf);
    if (buf[0] == 1)
    {
      v11 = std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<ADAM::ClientSessionManager>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ADAM::ClientSessionManager>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ADAM::ClientSessionManager>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<ADAM::ClientSessionManager>>>>::find<unsigned long long>(&ADAM::AudioDataAnalysisManager::instance(void)::gAdam, a1);
      if (v11 && (v12 = *(v11 + 3)) != 0)
      {
        ADAM::session_lock_exclusive::shared_cnt(v11);
        atomic_fetch_add_explicit(&ADAM::session_lock_exclusive::shared_cnt(void)::_c, 0xFFFFFFFF, memory_order_relaxed);
        if (*(v12 + 432) == 1)
        {
          if (std::__hash_table<std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>>>::find<unsigned int>((v12 + 16), a2))
          {
            v13 = a3[1];
            *buf = *a3;
            *&buf[16] = v13;
            v14 = a3[3];
            v22 = a3[2];
            v23 = v14;
            v24 = xmmword_296C79980;
            *v20 = a4;
            *&v20[1] = a5;
            v15 = std::__hash_table<std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>>>::find<unsigned int>((v12 + 16), a2);
            if (!v15)
            {
              std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
            }

            return (*(*v15[3] + 16))(v15[3], v20, buf);
          }

          else
          {
            return 1852400673;
          }
        }
      }

      else
      {
        v10 = 561211748;
        ADAM::session_lock_exclusive::shared_cnt(v11);
        atomic_fetch_add_explicit(&ADAM::session_lock_exclusive::shared_cnt(void)::_c, 0xFFFFFFFF, memory_order_relaxed);
      }
    }

    else
    {
      if (ADAM::ADAMLogScope(void)::once != -1)
      {
        dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
      }

      v10 = 1835102241;
      if (ADAM::ADAMLogScope(void)::scope)
      {
        v16 = *ADAM::ADAMLogScope(void)::scope;
        if (!v16)
        {
          return v10;
        }
      }

      else
      {
        v16 = MEMORY[0x29EDCA988];
        v17 = MEMORY[0x29EDCA988];
      }

      v18 = v16;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        *&buf[4] = "AudioDataAnalysisManager.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 417;
        *&buf[18] = 2048;
        *&buf[20] = a2 | (a1 << 32);
        _os_log_impl(&dword_296C34000, v18, OS_LOG_TYPE_DEFAULT, "%25s:%-5d MicLevel Session %llx, Map is mutating", buf, 0x1Cu);
      }
    }
  }

  return v10;
}

void sub_296C6EB04(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 buf, __int16 a12, __int16 a13, __int128 a14, uint64_t a15)
{
  if (a2)
  {
    v18 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      v19 = ADAM::AudioDataAnalysisManager::processMicLevel(unsigned long long,unsigned int,float,float,AudioTimeStamp const&)::errCnt;
      v20 = ++ADAM::AudioDataAnalysisManager::processMicLevel(unsigned long long,unsigned int,float,float,AudioTimeStamp const&)::errCnt;
      if (!v19)
      {
        v21 = v18;
        if (ADAM::ADAMLogScope(void)::once != -1)
        {
          dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
        }

        v22 = CALog::LogObjIfEnabled(ADAM::ADAMLogScope(void)::scope);
        v23 = v22;
        if (v22)
        {
          v24 = v22;
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            v25 = (*(*v21 + 16))(v21);
            LODWORD(buf) = 136316162;
            *(&buf + 4) = "AudioDataAnalysisManager.cpp";
            WORD6(buf) = 1024;
            *(&buf + 14) = 421;
            a13 = 2048;
            WORD2(a14) = 2048;
            *(&a14 + 6) = v16 | (v15 << 32);
            HIWORD(a14) = 2080;
            a15 = v25;
            _os_log_impl(&dword_296C34000, v24, OS_LOG_TYPE_ERROR, "%25s:%-5d MicLevel Exception %p, session %llx, %s", &buf, 0x30u);
          }
        }

        v20 = ADAM::AudioDataAnalysisManager::processMicLevel(unsigned long long,unsigned int,float,float,AudioTimeStamp const&)::errCnt;
      }

      if (v20 > 0xBB7)
      {
        v20 = 0;
      }

      ADAM::AudioDataAnalysisManager::processMicLevel(unsigned long long,unsigned int,float,float,AudioTimeStamp const&)::errCnt = v20;
      __cxa_end_catch();
    }

    else
    {
      v26 = ADAM::AudioDataAnalysisManager::processMicLevel(unsigned long long,unsigned int,float,float,AudioTimeStamp const&)::errCnt;
      v27 = ++ADAM::AudioDataAnalysisManager::processMicLevel(unsigned long long,unsigned int,float,float,AudioTimeStamp const&)::errCnt;
      if (!v26)
      {
        if (ADAM::ADAMLogScope(void)::once != -1)
        {
          dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
        }

        v28 = CALog::LogObjIfEnabled(ADAM::ADAMLogScope(void)::scope);
        v29 = v28;
        if (v28)
        {
          v30 = v28;
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            *(&buf + 4) = "AudioDataAnalysisManager.cpp";
            WORD6(buf) = 1024;
            LODWORD(buf) = 136315906;
            *(&buf + 14) = 423;
            a13 = 2048;
            WORD2(a14) = 2048;
            *(&a14 + 6) = v16 | (v15 << 32);
            _os_log_impl(&dword_296C34000, v30, OS_LOG_TYPE_ERROR, "%25s:%-5d MicLevel Exception %p, session %llx", &buf, 0x26u);
          }
        }

        v27 = ADAM::AudioDataAnalysisManager::processMicLevel(unsigned long long,unsigned int,float,float,AudioTimeStamp const&)::errCnt;
      }

      if (v27 > 0xBB7)
      {
        v27 = 0;
      }

      ADAM::AudioDataAnalysisManager::processMicLevel(unsigned long long,unsigned int,float,float,AudioTimeStamp const&)::errCnt = v27;
      __cxa_end_catch();
    }

    JUMPOUT(0x296C6EA90);
  }

  _Unwind_Resume(a1);
}

uint64_t AudioDataAnalysisManagerSetDeviceInfo(ADAM::AudioDataAnalysisManager *a1, uint64_t a2)
{
  v38 = *MEMORY[0x29EDCA608];
  ADAM::AudioDataAnalysisManager::instance(a1);
  ClientSessionMananger = ADAM::AudioDataAnalysisManager::getClientSessionMananger(&ADAM::AudioDataAnalysisManager::instance(void)::gAdam, a1);
  if (!ClientSessionMananger)
  {
    return 561211748;
  }

  v5 = 561017453;
  if (*a2)
  {
    v6 = ClientSessionMananger;
    ADAM::releaseADAMDeviceInfo(ClientSessionMananger + 248);
    ADAM::copyDeviceInfo(a2, (v6 + 248));
    ADAM::logDeviceInfo(v6 + 248);
    v7 = objc_autoreleasePoolPush();
    v8 = *(v6 + 248);
    if (v8)
    {
      if ((*(v6 + 280) & 4) != 0)
      {
        Copy = @"Codec";
      }

      else
      {
        Copy = CFStringCreateCopy(0, v8);
        if (!Copy)
        {
          goto LABEL_32;
        }
      }

      v11 = *(v6 + 272);
      if (v11)
      {
        v12 = [v11 copy];
      }

      else
      {
        v12 = &stru_2A1DEEE38;
      }

      v14 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:*(v6 + 280) & 2];
      v15 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:*(a2 + 32) & 0x10];
      v17 = *(v6 + 288);
      if (v17)
      {
        v18 = CFDictionaryCreateCopy(0, v17);
        v19 = [(__CFDictionary *)v18 objectForKey:@"ScalarVolume74"];
        v20 = v19;
        if (v19)
        {
          [v19 floatValue];
          v22 = v21;
        }

        else
        {
          v22 = -1.0;
        }

        v24 = [(__CFDictionary *)v18 objectForKey:@"ScalarVolume80"];
        v25 = v24;
        if (v24)
        {
          [v24 floatValue];
          v23 = v26;
        }

        else
        {
          v23 = -1.0;
        }
      }

      else
      {
        v18 = 0;
        v22 = -1.0;
        v23 = -1.0;
      }

      v27 = MEMORY[0x29EDB8DC0];
      *&v16 = v22;
      v28 = [MEMORY[0x29EDBA070] numberWithFloat:v16];
      *&v29 = v23;
      v30 = [MEMORY[0x29EDBA070] numberWithFloat:v29];
      v31 = [v27 dictionaryWithObjectsAndKeys:{Copy, *MEMORY[0x29EDC1500], v14, *MEMORY[0x29EDC1510], v15, *MEMORY[0x29EDC1508], v12, *MEMORY[0x29EDC14F8], v28, *MEMORY[0x29EDC1518], v30, *MEMORY[0x29EDC1520], 0}];

      v32 = [MEMORY[0x29EDC1528] sharedInstance];
      [v32 deviceSessionCreated:v31 SessionID:*(v6 + 8)];

      v5 = 0;
      goto LABEL_32;
    }

    Copy = 0;
LABEL_32:

    objc_autoreleasePoolPop(v7);
    return v5;
  }

  if (ADAM::ADAMLogScope(void)::once != -1)
  {
    dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
  }

  if (ADAM::ADAMLogScope(void)::scope)
  {
    v10 = *ADAM::ADAMLogScope(void)::scope;
    if (!v10)
    {
      return v5;
    }
  }

  else
  {
    v10 = MEMORY[0x29EDCA988];
    v13 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v35 = "ADAMClientSessionManager.cpp";
    v36 = 1024;
    v37 = 121;
    _os_log_impl(&dword_296C34000, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d Device name invalid", buf, 0x12u);
  }

  return v5;
}

uint64_t AudioDataAnalysisManagerRegisterDeviceInfo(ADAM::AudioDataAnalysisManager *a1, uint64_t a2)
{
  v32 = *MEMORY[0x29EDCA608];
  ADAM::AudioDataAnalysisManager::instance(a1);
  if (ADAM::AudioDataAnalysisManager::getClientSessionMananger(&ADAM::AudioDataAnalysisManager::instance(void)::gAdam, a1))
  {
    v4 = [MEMORY[0x29EDC1528] sharedInstance];
    v5 = [v4 isUSBCPort];
    v6 = 561017453;

    if (v5)
    {
      if (*a2)
      {
        v7 = *(a2 + 24);
        if (ADAM::ADAMLogScope(void)::once != -1)
        {
          dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
        }

        if (v7)
        {
          if (ADAM::ADAMLogScope(void)::scope)
          {
            v8 = *ADAM::ADAMLogScope(void)::scope;
            if (!v8)
            {
              goto LABEL_32;
            }
          }

          else
          {
            v8 = MEMORY[0x29EDCA988];
            v11 = MEMORY[0x29EDCA988];
          }

          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
          {
            v12 = *a2;
            v13 = *(a2 + 24);
            *buf = 136315906;
            v25 = "ADAMClientSessionManager.cpp";
            v26 = 1024;
            v27 = 203;
            v28 = 2112;
            v29 = v12;
            v30 = 2112;
            v31 = v13;
            _os_log_impl(&dword_296C34000, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Device { name: %@  UUID: %@ }", buf, 0x26u);
          }

LABEL_32:
          v14 = objc_autoreleasePoolPush();
          if (*a2)
          {
            if ((*(a2 + 32) & 4) != 0)
            {
              Copy = @"Codec";
            }

            else
            {
              Copy = CFStringCreateCopy(0, *a2);
              if (!Copy)
              {
                goto LABEL_43;
              }
            }

            v17 = CFStringCreateCopy(0, *(a2 + 24));
            v18 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:*(a2 + 32) & 2];
            v19 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:*(a2 + 32) & 0x10];
            v20 = [MEMORY[0x29EDB8DC0] dictionaryWithObjectsAndKeys:{Copy, *MEMORY[0x29EDC1500], v18, *MEMORY[0x29EDC1510], v19, *MEMORY[0x29EDC1508], v17, *MEMORY[0x29EDC14F8], 0}];
            v21 = [MEMORY[0x29EDC1528] sharedInstance];
            [v21 registerDevice:v20];

            v6 = 0;
          }

          else
          {
            Copy = 0;
          }

LABEL_43:

          objc_autoreleasePoolPop(v14);
          return v6;
        }

        if (ADAM::ADAMLogScope(void)::scope)
        {
          v9 = *ADAM::ADAMLogScope(void)::scope;
          if (!v9)
          {
            return v6;
          }
        }

        else
        {
          v9 = MEMORY[0x29EDCA988];
          v22 = MEMORY[0x29EDCA988];
        }

        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v25 = "ADAMClientSessionManager.cpp";
          v26 = 1024;
          v27 = 199;
          _os_log_impl(&dword_296C34000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d Device UID invalid", buf, 0x12u);
        }
      }

      else
      {
        if (ADAM::ADAMLogScope(void)::once != -1)
        {
          dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
        }

        if (ADAM::ADAMLogScope(void)::scope)
        {
          v9 = *ADAM::ADAMLogScope(void)::scope;
          if (!v9)
          {
            return v6;
          }
        }

        else
        {
          v9 = MEMORY[0x29EDCA988];
          v16 = MEMORY[0x29EDCA988];
        }

        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v25 = "ADAMClientSessionManager.cpp";
          v26 = 1024;
          v27 = 193;
          _os_log_impl(&dword_296C34000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d Device name invalid", buf, 0x12u);
        }
      }
    }

    else
    {
      if (ADAM::ADAMLogScope(void)::once != -1)
      {
        dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
      }

      if (ADAM::ADAMLogScope(void)::scope)
      {
        v9 = *ADAM::ADAMLogScope(void)::scope;
        if (!v9)
        {
          return v6;
        }
      }

      else
      {
        v9 = MEMORY[0x29EDCA988];
        v10 = MEMORY[0x29EDCA988];
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v25 = "ADAMClientSessionManager.cpp";
        v26 = 1024;
        v27 = 187;
        _os_log_impl(&dword_296C34000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d Registration is only for USBC devices", buf, 0x12u);
      }
    }

    return v6;
  }

  return 561211748;
}

uint64_t AudioDataAnalysisManagerSetDeviceConnectionState(ADAM::AudioDataAnalysisManager *a1, uint64_t a2, uint64_t a3)
{
  v27 = *MEMORY[0x29EDCA608];
  ADAM::AudioDataAnalysisManager::instance(a1);
  if (!ADAM::AudioDataAnalysisManager::getClientSessionMananger(&ADAM::AudioDataAnalysisManager::instance(void)::gAdam, a1))
  {
    return 561211748;
  }

  if (*(a2 + 24))
  {
    v6 = [MEMORY[0x29EDC1528] sharedInstance];
    if ([v6 isUSBCPort])
    {
      v7 = *(a2 + 32);

      if ((v7 & 2) != 0)
      {
        if (ADAM::ADAMLogScope(void)::once != -1)
        {
          dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
        }

        if (ADAM::ADAMLogScope(void)::scope)
        {
          v8 = *ADAM::ADAMLogScope(void)::scope;
          if (!v8)
          {
LABEL_27:
            v15 = objc_autoreleasePoolPush();
            Copy = CFStringCreateCopy(0, *(a2 + 24));
            v17 = [MEMORY[0x29EDC1528] sharedInstance];
            [v17 setDeviceConnectionState:Copy isConnected:a3];

            objc_autoreleasePoolPop(v15);
            return 0;
          }
        }

        else
        {
          v8 = MEMORY[0x29EDCA988];
          v12 = MEMORY[0x29EDCA988];
        }

        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v13 = "disconnected";
          v20 = "ADAMClientSessionManager.cpp";
          v21 = 1024;
          v14 = *(a2 + 24);
          v19 = 136315906;
          if (a3)
          {
            v13 = "connected";
          }

          v22 = 242;
          v23 = 2112;
          v24 = v14;
          v25 = 2080;
          v26 = v13;
          _os_log_impl(&dword_296C34000, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Device { UUID: %@ is %s}", &v19, 0x26u);
        }

        goto LABEL_27;
      }
    }

    else
    {
    }

    return 0;
  }

  if (ADAM::ADAMLogScope(void)::once != -1)
  {
    dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
  }

  v9 = 561017453;
  if (ADAM::ADAMLogScope(void)::scope)
  {
    v10 = *ADAM::ADAMLogScope(void)::scope;
    if (!v10)
    {
      return v9;
    }
  }

  else
  {
    v10 = MEMORY[0x29EDCA988];
    v11 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v19 = 136315394;
    v20 = "ADAMClientSessionManager.cpp";
    v21 = 1024;
    v22 = 235;
    _os_log_impl(&dword_296C34000, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d Device UID invalid", &v19, 0x12u);
  }

  return v9;
}

uint64_t AudioDataAnalysisManagerStartServices(ADAM::AudioDataAnalysisManager *a1)
{
  ADAM::AudioDataAnalysisManager::instance(a1);
  ADAM::AudioDataAnalysisManager::initialize(v1);
  return 0;
}

uint64_t AudioDataAnalysisManagerConnectedWiredDeviceIsHeadphone(ADAM::AudioDataAnalysisManager *a1, void *a2)
{
  if (a1)
  {
    ADAM::AudioDataAnalysisManager::instance(a1);
    v4 = objc_autoreleasePoolPush();
    if (a2)
    {
      v5 = a2;
    }

    v6 = [MEMORY[0x29EDC1530] connectedWiredDeviceIsHeadphoneWithUUID:a2];

    objc_autoreleasePoolPop(v4);
    *a1 = v6;
  }

  return 0;
}

uint64_t AudioDataAnalysisManagerSetApplicationBundleID(ADAM::AudioDataAnalysisManager *a1, const void *a2)
{
  ADAM::AudioDataAnalysisManager::instance(a1);
  if (a2)
  {
    CFRetain(a2);
    v3 = CFGetTypeID(a2);
    if (v3 != CFStringGetTypeID())
    {
      CFRelease(a2);
      a2 = 0;
    }
  }

  v4 = qword_2A18A5248;
  qword_2A18A5248 = a2;
  if (v4)
  {
    CFRelease(v4);
  }

  return 0;
}

uint64_t std::__split_buffer<std::unique_ptr<ADAM::AnalysisNodeBase>>::~__split_buffer(uint64_t a1)
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

void std::vector<std::unique_ptr<ADAM::AnalysisNodeBase>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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

void ADAM::AnalyzerManager::releaseData(ADAM::AnalyzerManager *this, const ADAM::BufferNodeDescriptorBase *a2)
{
  v3 = *(this + 3);
  if (v3)
  {
    if (!*(a2 + 10))
    {
      v4 = *v3;
      if (v4)
      {
        v5 = 0;
        v6 = 4;
        do
        {
          if (*&v3[v6])
          {
            free(*&v3[v6]);
            v3 = *(this + 3);
            v4 = *v3;
          }

          ++v5;
          v6 += 4;
        }

        while (v5 < v4);
      }
    }

    free(v3);
  }

  *(this + 3) = 0;
}

void ADAM::AudioBufferWriter::~AudioBufferWriter(ADAM::AudioBufferWriter *this)
{
  ADAM::AudioBufferWriter::~AudioBufferWriter(this);

  JUMPOUT(0x29C260F00);
}

{
  v21 = *MEMORY[0x29EDCA608];
  *this = &unk_2A1DEE778;
  v2 = (*(**(this + 11) + 56))(*(this + 11));
  v3 = strlen(v2);
  if (v3 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v4 = v3;
  if (v3 >= 0x17)
  {
    operator new();
  }

  v12 = v3;
  if (v3)
  {
    memmove(&__dst, v2, v3);
  }

  *(&__dst + v4) = 0;
  v5 = *(this + 11);
  *(this + 11) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  if (ADAM::ADAMLogScope(void)::once != -1)
  {
    dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
  }

  if (ADAM::ADAMLogScope(void)::scope)
  {
    v6 = *ADAM::ADAMLogScope(void)::scope;
    if (!v6)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v6 = MEMORY[0x29EDCA988];
    v7 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v8 = *(this + 1);
    p_dst = &__dst;
    if (v12 < 0)
    {
      p_dst = __dst;
    }

    *buf = 136315906;
    v14 = "FileWriter.cpp";
    v15 = 1024;
    v16 = 44;
    v17 = 2048;
    v18 = v8;
    v19 = 2080;
    v20 = p_dst;
    _os_log_impl(&dword_296C34000, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d Session %llx: AudioBufferWriter destroyed: %s", buf, 0x26u);
  }

LABEL_20:
  if (v12 < 0)
  {
    operator delete(__dst);
  }

  v10 = *(this + 11);
  *(this + 11) = 0;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  ADAM::Writer::~Writer(this);
}

void sub_296C6FEDC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t ADAM::AudioBufferWriter::write(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = *MEMORY[0x29EDCA608];
  v5 = (*(**(a1 + 88) + 24))(*(a1 + 88), *(a3 + 64), a2, 1);
  if (ADAM::ADAMLogScope(void)::once != -1)
  {
    dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
  }

  if (ADAM::ADAMLogScope(void)::scope)
  {
    v6 = *ADAM::ADAMLogScope(void)::scope;
    if (!v6)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v6 = MEMORY[0x29EDCA988];
    v7 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v8 = *(a1 + 8);
    v9 = (a1 + 16);
    if (*(a1 + 39) < 0)
    {
      v9 = *v9;
    }

    v10 = *(a1 + 96) * *(a3 + 64);
    v13 = 136316418;
    v14 = "FileWriter.cpp";
    v15 = 1024;
    v16 = 35;
    v17 = 2048;
    v18 = v8;
    v19 = 2080;
    v20 = v9;
    v21 = 1024;
    v22 = v10;
    v23 = 1024;
    v24 = v5;
    _os_log_impl(&dword_296C34000, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d Session %llx: AudioBufferWriter [%s] wrote %u bytes; err: %d", &v13, 0x32u);
  }

LABEL_12:
  v11 = *(a1 + 72);
  if (v11)
  {
    *(a1 + 72) = 0;
    (*(*v11 + 40))(v11);
  }

  return 0;
}

void ADAM::BinaryFileWriter::~BinaryFileWriter(ADAM::BinaryFileWriter *this)
{
  ADAM::BinaryFileWriter::~BinaryFileWriter(this);

  JUMPOUT(0x29C260F00);
}

{
  *this = &unk_2A1DEE7B8;
  v2 = this + 120;
  v3 = (this + 112);
  if (!std::filebuf::close())
  {
    std::ios_base::clear((v3 + *(*v3 - 24)), *(v3 + *(*v3 - 24) + 32) | 4);
  }

  v4 = MEMORY[0x29EDC9520];
  v5 = *MEMORY[0x29EDC9520];
  *(this + 14) = *MEMORY[0x29EDC9520];
  *(v3 + *(v5 - 24)) = *(v4 + 24);
  MEMORY[0x29C260C20](v2);
  std::ostream::~ostream();
  MEMORY[0x29C260E40](this + 528);
  if (*(this + 111) < 0)
  {
    operator delete(*(this + 11));
  }

  ADAM::Writer::~Writer(this);
}

uint64_t ADAM::BinaryFileWriter::write(uint64_t a1, uint64_t a2, uint64_t a3)
{
  std::ostream::write();
  v4 = *(a1 + 72);
  if (v4)
  {
    *(a1 + 72) = 0;
    (*(*v4 + 40))(v4);
  }

  return 0;
}

void ADAM::CsvFileWriter::~CsvFileWriter(ADAM::CsvFileWriter *this)
{
  ADAM::CsvFileWriter::~CsvFileWriter(this);

  JUMPOUT(0x29C260F00);
}

{
  *this = &unk_2A1DEE7F8;
  v2 = this + 120;
  v3 = (this + 112);
  if (!std::filebuf::close())
  {
    std::ios_base::clear((v3 + *(*v3 - 24)), *(v3 + *(*v3 - 24) + 32) | 4);
  }

  v4 = MEMORY[0x29EDC9520];
  v5 = *MEMORY[0x29EDC9520];
  *(this + 14) = *MEMORY[0x29EDC9520];
  *(v3 + *(v5 - 24)) = *(v4 + 24);
  MEMORY[0x29C260C20](v2);
  std::ostream::~ostream();
  MEMORY[0x29C260E40](this + 528);
  if (*(this + 111) < 0)
  {
    operator delete(*(this + 11));
  }

  ADAM::Writer::~Writer(this);
}

uint64_t ADAM::CsvFileWriter::write(uint64_t a1, float *a2)
{
  v34 = *MEMORY[0x29EDCA608];
  v4 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, ", ", 2);
  v5 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, ", ", 2);
  v6 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, ", ", 2);
  v7 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, ", ", 2);
  v8 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "\n", 1);
  v9 = ADAM::CsvFileWriter::write(ADAM::UnionDataPtr,ADAM::Metadata const&)::errCnt;
  v10 = ++ADAM::CsvFileWriter::write(ADAM::UnionDataPtr,ADAM::Metadata const&)::errCnt;
  if (!v9)
  {
    if (ADAM::ADAMLogScope(void)::once != -1)
    {
      dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
    }

    if (ADAM::ADAMLogScope(void)::scope)
    {
      v11 = *ADAM::ADAMLogScope(void)::scope;
      if (!v11)
      {
LABEL_11:
        v10 = ADAM::CsvFileWriter::write(ADAM::UnionDataPtr,ADAM::Metadata const&)::errCnt;
        goto LABEL_12;
      }
    }

    else
    {
      v11 = MEMORY[0x29EDCA988];
      v12 = MEMORY[0x29EDCA988];
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v13 = *a2;
      v14 = a2[1];
      v15 = a2[2];
      v16 = a2[3];
      v17 = a2[4];
      v20 = 136316674;
      v21 = "FileWriter.cpp";
      v22 = 1024;
      v23 = 86;
      v24 = 2048;
      v25 = v13;
      v26 = 2048;
      v27 = v14;
      v28 = 2048;
      v29 = v15;
      v30 = 2048;
      v31 = v16;
      v32 = 2048;
      v33 = v17;
      _os_log_impl(&dword_296C34000, v11, OS_LOG_TYPE_INFO, "%25s:%-5d dBA/dBC/LKFS/VolumeGain/Duration: %f, %f, %f, %f, %f", &v20, 0x44u);
    }

    goto LABEL_11;
  }

LABEL_12:
  if (v10 > 0x63)
  {
    v10 = 0;
  }

  ADAM::CsvFileWriter::write(ADAM::UnionDataPtr,ADAM::Metadata const&)::errCnt = v10;
  v18 = *(a1 + 72);
  if (v18)
  {
    *(a1 + 72) = 0;
    (*(*v18 + 40))(v18);
  }

  return 0;
}

void ADAM::HAENotificationFileWriter::~HAENotificationFileWriter(ADAM::HAENotificationFileWriter *this)
{
  ADAM::HAENotificationFileWriter::~HAENotificationFileWriter(this);

  JUMPOUT(0x29C260F00);
}

{
  *this = &unk_2A1DEE838;
  v2 = this + 120;
  v3 = (this + 112);
  if (!std::filebuf::close())
  {
    std::ios_base::clear((v3 + *(*v3 - 24)), *(v3 + *(*v3 - 24) + 32) | 4);
  }

  v4 = MEMORY[0x29EDC9520];
  v5 = *MEMORY[0x29EDC9520];
  *(this + 14) = *MEMORY[0x29EDC9520];
  *(v3 + *(v5 - 24)) = *(v4 + 24);
  MEMORY[0x29C260C20](v2);
  std::ostream::~ostream();
  MEMORY[0x29C260E40](this + 528);
  if (*(this + 111) < 0)
  {
    operator delete(*(this + 11));
  }

  ADAM::Writer::~Writer(this);
}

uint64_t ADAM::HAENotificationFileWriter::write(uint64_t a1, float *a2)
{
  v3 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, " ", 1);
  v4 = std::ostream::operator<<();
  std::ios_base::getloc((v4 + *(*v4 - 24)));
  v5 = std::locale::use_facet(&v8, MEMORY[0x29EDC93D0]);
  (v5->__vftable[2].~facet_0)(v5, 10);
  std::locale::~locale(&v8);
  std::ostream::put();
  std::ostream::flush();
  v6 = *(a1 + 72);
  if (v6)
  {
    *(a1 + 72) = 0;
    (*(*v6 + 40))(v6);
  }

  return 0;
}

void *___Z16NewAudioCapturer20AudioCapturerOptionsPKcS1_jPK27AudioStreamBasicDescriptionRS3__block_invoke()
{
  result = dlopen("/usr/local/lib/libAudioDiagnostics.dylib", 5);
  if (result)
  {
    result = dlsym(result, "NewAudioCapturerImpl");
    if (result)
    {
      NewAudioCapturer(AudioCapturerOptions,char const*,char const*,unsigned int,AudioStreamBasicDescription const*,AudioStreamBasicDescription const&)::sImplFunction = result;
    }
  }

  return result;
}

uint64_t *std::ofstream::basic_ofstream(uint64_t *a1, uint64_t *a2, int a3)
{
  a1[58] = 0;
  v4 = MEMORY[0x29EDC9560] + 64;
  a1[52] = MEMORY[0x29EDC9560] + 64;
  v5 = *(MEMORY[0x29EDC9520] + 16);
  v6 = *(MEMORY[0x29EDC9520] + 8);
  *a1 = v6;
  *(a1 + *(v6 - 24)) = v5;
  v7 = (a1 + *(*a1 - 24));
  std::ios_base::init(v7, a1 + 1);
  v8 = MEMORY[0x29EDC9560] + 24;
  v7[1].__vftable = 0;
  v7[1].__fmtflags_ = -1;
  *a1 = v8;
  a1[52] = v4;
  MEMORY[0x29C260C10](a1 + 1);
  if (!std::filebuf::open())
  {
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 4);
  }

  return a1;
}

void sub_296C70ADC(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  MEMORY[0x29C260E40](v1);
  _Unwind_Resume(a1);
}

uint64_t ADAM::HAENotificationFileWriter::HAENotificationFileWriter(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v19 = *MEMORY[0x29EDCA608];
  v5 = ADAM::Writer::Writer(a1, a2, a3, 0);
  *v5 = &unk_2A1DEE838;
  v6 = v5 + 11;
  std::operator+<char>();
  v7 = std::string::append(__p, ".txt", 4uLL);
  v8 = *&v7->__r_.__value_.__l.__data_;
  v6[2] = v7->__r_.__value_.__r.__words[2];
  *v6 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SBYTE3(v16) < 0)
  {
    operator delete(*__p);
  }

  std::ofstream::basic_ofstream((a1 + 112), v6, 16);
  if (ADAM::ADAMLogScope(void)::once != -1)
  {
    dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
  }

  if (ADAM::ADAMLogScope(void)::scope)
  {
    v9 = *ADAM::ADAMLogScope(void)::scope;
    if (!v9)
    {
      return a1;
    }
  }

  else
  {
    v9 = MEMORY[0x29EDCA988];
    v10 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    if (*(a1 + 111) < 0)
    {
      v6 = *v6;
    }

    *__p = 136315906;
    *&__p[4] = "FileWriter.cpp";
    v13 = 1024;
    v14 = 98;
    v15 = 2048;
    v16 = a2;
    v17 = 2080;
    v18 = v6;
    _os_log_impl(&dword_296C34000, v9, OS_LOG_TYPE_INFO, "%25s:%-5d Session %llx: Created HAE Notification File Writer: %s", __p, 0x26u);
  }

  return a1;
}

void ADAM::AnalysisFrameworkWriter::~AnalysisFrameworkWriter(ADAM::AnalysisFrameworkWriter *this)
{
  ADAM::AnalysisFrameworkWriter::~AnalysisFrameworkWriter(this);

  JUMPOUT(0x29C260F00);
}

{
  *this = &unk_2A1DEE898;
  v2 = *(this + 11);
  if (v2 && (ADAM::releaseADAMDeviceInfo(v2), v3 = *(this + 11), *(this + 11) = 0, v3))
  {
    MEMORY[0x29C260F00](v3, 0x1060C4045DA4F00);
    v4 = *(this + 11);
    *(this + 11) = 0;
    if (v4)
    {
      MEMORY[0x29C260F00](v4, 0x1060C4045DA4F00);
    }
  }

  else
  {
    *(this + 11) = 0;
  }

  ADAM::Writer::~Writer(this);
}

uint64_t ADAM::AnalysisFrameworkWriter::write(uint64_t a1, float *a2, uint64_t a3)
{
  v53 = *MEMORY[0x29EDCA608];
  if (!*(a1 + 88))
  {
    operator new();
  }

  if (a2)
  {
    v6 = ADAM::haeMeasurementEnabled(*(a1 + 96), *(a1 + 97));
    if (v6)
    {
      v7 = ADAM::AnalysisFrameworkWriter::writeMediaSPLDataToDelegates(ADAM::SPLData const*,ADAM::Metadata const&)::errCnt;
      v8 = ++ADAM::AnalysisFrameworkWriter::writeMediaSPLDataToDelegates(ADAM::SPLData const*,ADAM::Metadata const&)::errCnt;
      if (v7)
      {
        goto LABEL_16;
      }

      if (ADAM::ADAMLogScope(void)::once != -1)
      {
        dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
      }

      if (ADAM::ADAMLogScope(void)::scope)
      {
        v6 = *ADAM::ADAMLogScope(void)::scope;
        v9 = v6;
        if (!v6)
        {
LABEL_15:
          v8 = ADAM::AnalysisFrameworkWriter::writeMediaSPLDataToDelegates(ADAM::SPLData const*,ADAM::Metadata const&)::errCnt;
LABEL_16:
          if (v8 > 0x1D)
          {
            v8 = 0;
          }

          ADAM::AnalysisFrameworkWriter::writeMediaSPLDataToDelegates(ADAM::SPLData const*,ADAM::Metadata const&)::errCnt = v8;
          v43 = 0;
          v44 = 0;
          v45 = 0;
          ADAM::AudioDataAnalysisManager::instance(v6);
          ADAM::AudioDataAnalysisManager::getServerDelegates(&v50, 0x68616574u);
          p_isa = &v50->isa;
          v13 = v51;
          while (p_isa != v13)
          {
            WeakRetained = objc_loadWeakRetained(p_isa);
            v15 = [WeakRetained isActive:1751213428];

            if (v15)
            {
              std::vector<ADAMServerDelegate * {__weak}>::push_back[abi:ne200100](&v43, p_isa);
            }

            ++p_isa;
          }

          v16 = ADAM::AnalysisFrameworkWriter::getClientDelegates(ADAMAudioDataAnalysisType)const::errCnt;
          v17 = ++ADAM::AnalysisFrameworkWriter::getClientDelegates(ADAMAudioDataAnalysisType)const::errCnt;
          if (v16)
          {
            goto LABEL_34;
          }

          if (ADAM::ADAMLogScope(void)::once != -1)
          {
            dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
          }

          if (ADAM::ADAMLogScope(void)::scope)
          {
            v18 = *ADAM::ADAMLogScope(void)::scope;
            if (!v18)
            {
LABEL_33:
              v17 = ADAM::AnalysisFrameworkWriter::getClientDelegates(ADAMAudioDataAnalysisType)const::errCnt;
LABEL_34:
              if (v17 > 0x1D)
              {
                v17 = 0;
              }

              ADAM::AnalysisFrameworkWriter::getClientDelegates(ADAMAudioDataAnalysisType)const::errCnt = v17;
              *buf = &v50;
              std::vector<ADAMServerDelegate * {__weak}>::__destroy_vector::operator()[abi:ne200100](buf);
              v50 = @"_ADAFMetadataKeyIsLoud";
              *&v24 = *a2;
              v25 = [MEMORY[0x29EDBA070] numberWithBool:{*a2 >= 85.0, v24}];
              v26 = v25;
              v27 = *(*(a1 + 88) + 24);
              if (!v27)
              {
                v27 = @"nil";
              }

              *buf = v25;
              *&buf[8] = v27;
              v51 = @"_ADAFMetadataKeyDeviceID";
              v52 = @"_ADAFMetadataKeyHAEDataForGauge";
              v28 = MEMORY[0x29EDBA070];
              v29 = a2[4];
              {
                if (v41)
                {
                  ADAM::Parameters::instance(v41);
                }
              }
              v30 = ;
              *&buf[16] = v30;
              v31 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:buf forKeys:&v50 count:3];

              v32 = objc_alloc(MEMORY[0x29EDBFAC0]);
              v33 = [MEMORY[0x29EDBA070] numberWithDouble:*a2];
              v34 = ADAM::getSampleDateInterval(*(a3 + 8), a2[4]);
              v35 = [v32 initAudioSampleWithType:1751213428 data:v33 dateInterval:v34 metadata:v31];

              v36 = v43;
              v37 = v44;
              while (v36 != v37)
              {
                v38 = objc_loadWeakRetained(v36);
                [v38 sendAudioSample:v35];

                ++v36;
              }

              v46 = &v43;
              std::vector<ADAMServerDelegate * {__weak}>::__destroy_vector::operator()[abi:ne200100](&v46);
              goto LABEL_43;
            }
          }

          else
          {
            v18 = MEMORY[0x29EDCA988];
            v19 = MEMORY[0x29EDCA988];
          }

          v20 = v18;
          if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
          {
            v21 = [ADAFUtil stringFromDataType:1751213428];
            v22 = v21;
            v23 = [v21 UTF8String];
            *buf = 136315906;
            *&buf[4] = "AnalysisFrameworkWriter.mm";
            *&buf[12] = 1024;
            *&buf[14] = 87;
            *&buf[18] = 2080;
            *&buf[20] = v23;
            v48 = 2048;
            v49 = v44 - v43;
            _os_log_impl(&dword_296C34000, v20, OS_LOG_TYPE_INFO, "%25s:%-5d number of delegates for %s : %lu", buf, 0x26u);
          }

          goto LABEL_33;
        }
      }

      else
      {
        v9 = MEMORY[0x29EDCA988];
        v10 = MEMORY[0x29EDCA988];
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *&v11 = *a2;
        *buf = 136315906;
        *&buf[4] = "AnalysisFrameworkWriter.mm";
        *&buf[12] = 1024;
        *&buf[14] = 54;
        *&buf[18] = 2080;
        *&buf[20] = "writeMediaSPLDataToDelegates";
        v48 = 2048;
        v49 = v11;
        _os_log_impl(&dword_296C34000, v9, OS_LOG_TYPE_INFO, "%25s:%-5d %s : %.2f", buf, 0x26u);
      }

      goto LABEL_15;
    }
  }

LABEL_43:
  v39 = *(a1 + 72);
  if (v39)
  {
    *(a1 + 72) = 0;
    (*(*v39 + 40))(v39);
  }

  return 0;
}