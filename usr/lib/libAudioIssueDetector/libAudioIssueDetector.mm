uint64_t rtaid::Manager::UpdateReportingSessionsOnDetector(unint64_t a1, char **a2)
{
  std::mutex::lock(&SingletonManagerInstance(void)::sInstance);
  v4 = std::__hash_table<std::__hash_value_type<long long,std::shared_ptr<rtaid::Detector>>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,std::shared_ptr<rtaid::Detector>>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,std::shared_ptr<rtaid::Detector>>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,std::shared_ptr<rtaid::Detector>>>>::find<long long>(a1);
  if (!v4)
  {
    v16 = 0xFFFFFFFFLL;
    goto LABEL_66;
  }

  v6 = v4[3];
  v5 = v4[4];
  v42 = v6;
  v43 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    v7 = v5;
    if (v6)
    {
      goto LABEL_4;
    }

LABEL_18:
    v16 = 0xFFFFFFFFLL;
    if (!v7)
    {
      goto LABEL_66;
    }

    goto LABEL_65;
  }

  v7 = 0;
  if (!v6)
  {
    goto LABEL_18;
  }

LABEL_4:
  if ((v6 + 592) != a2)
  {
    v8 = *a2;
    v9 = a2[1];
    v10 = v9 - *a2;
    v11 = *(v6 + 608);
    v12 = *(v6 + 592);
    if (v11 - v12 < v10)
    {
      v13 = v10 >> 3;
      if (v12)
      {
        *(v6 + 600) = v12;
        operator delete(v12);
        v11 = 0;
        *(v6 + 592) = 0;
        *(v6 + 600) = 0;
        *(v6 + 608) = 0;
      }

      if (!(v13 >> 61))
      {
        v14 = v11 >> 2;
        if (v11 >> 2 <= v13)
        {
          v14 = v10 >> 3;
        }

        if (v11 >= 0x7FFFFFFFFFFFFFF8)
        {
          v15 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v15 = v14;
        }

        if (!(v15 >> 61))
        {
          operator new();
        }
      }

      std::vector<ADAMAudioDataAnalysisType>::__throw_length_error[abi:ne200100]();
    }

    v17 = *(v6 + 600);
    v18 = v17 - v12;
    if (v17 - v12 >= v10)
    {
      if (v9 != v8)
      {
        memmove(v12, v8, v10);
      }

      v21 = &v12[v10];
    }

    else
    {
      if (v17 != v12)
      {
        memmove(*(v6 + 592), v8, v17 - v12);
        v17 = *(v6 + 600);
      }

      v19 = &v8[v18];
      v20 = v9 - &v8[v18];
      if (v20)
      {
        memmove(v17, v19, v20);
      }

      v21 = &v17[v20];
    }

    *(v6 + 600) = v21;
  }

  rtaid::ConfigurationManager::DetermineConfiguration(qword_2A18A5400, v6, 0);
  v23 = qword_2A18A5400;
  if (v6 + 616 != qword_2A18A5400 + 72)
  {
    v24 = *(qword_2A18A5400 + 72);
    v25 = *(qword_2A18A5400 + 80);
    v26 = v25 - v24;
    v27 = *(v6 + 632);
    v28 = *(v6 + 616);
    if (v27 - v28 < v25 - v24)
    {
      v29 = v26 >> 1;
      if (v28)
      {
        *(v6 + 624) = v28;
        operator delete(v28);
        v27 = 0;
        *(v6 + 616) = 0;
        *(v6 + 624) = 0;
        *(v6 + 632) = 0;
      }

      if ((v29 & 0x8000000000000000) == 0)
      {
        v30 = v27 <= v29 ? v26 >> 1 : v27;
        v31 = v27 >= 0x7FFFFFFFFFFFFFFELL ? 0x7FFFFFFFFFFFFFFFLL : v30;
        if ((v31 & 0x8000000000000000) == 0)
        {
          std::allocator<AudioServiceType>::allocate_at_least[abi:ne200100](v31);
        }
      }

      std::vector<ADAMAudioDataAnalysisType>::__throw_length_error[abi:ne200100]();
    }

    v32 = *(v6 + 624);
    v33 = v32 - v28;
    if (v32 - v28 >= v26)
    {
      if (v25 != v24)
      {
        memmove(v28, v24, v25 - v24);
      }

      v36 = &v28[v26];
    }

    else
    {
      if (v32 != v28)
      {
        memmove(*(v6 + 616), v24, v32 - v28);
        v32 = *(v6 + 624);
      }

      v34 = &v24[v33];
      v35 = v25 - &v24[v33];
      if (v35)
      {
        memmove(v32, v34, v35);
      }

      v36 = &v32[v35];
    }

    *(v6 + 624) = v36;
    v23 = qword_2A18A5400;
  }

  if (*(v23 + 117) == 1)
  {
    v37 = *(v6 + 616);
    v38 = *(v6 + 624);
    v39 = 10.0;
    if (v37 != v38)
    {
      while (*v37 == 13)
      {
        if (++v37 == v38)
        {
          goto LABEL_59;
        }
      }

      if (v37 != v38)
      {
        goto LABEL_60;
      }

LABEL_59:
      v39 = 3.0;
    }

LABEL_60:
    if (*(v6 + 56) != v39)
    {
      *(v6 + 56) = v39;
      v40 = *(v6 + 24);
      if (v40)
      {
        do
        {
          rtaid::Detector::checkAndResetAnalyzers(v6, v40 + 3);
          *(v40 + 4) = (v40[5] * *(v6 + 56));
          v40 = *v40;
        }

        while (v40);
        v23 = qword_2A18A5400;
        v5 = v43;
      }
    }
  }

  rtaid::Manager::applyConfiguration(v23, v6, v22);
  rtaid::Manager::applyTelephonyResets(*(qword_2A18A5400 + 48), *(qword_2A18A5400 + 56), &v42);
  v16 = 0;
  v7 = v5;
  if (v5)
  {
LABEL_65:
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

LABEL_66:
  std::mutex::unlock(&SingletonManagerInstance(void)::sInstance);
  return v16;
}

void sub_296C35A6C(_Unwind_Exception *a1)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  std::mutex::unlock(&SingletonManagerInstance(void)::sInstance);
  _Unwind_Resume(a1);
}

uint64_t AudioDSPAnalysisEnabled(void)
{
  {
    AudioDSPAnalysisEnabled(void)::sAudioDSPAnalysisEnabled = _os_feature_enabled_impl();
  }

  return AudioDSPAnalysisEnabled(void)::sAudioDSPAnalysisEnabled;
}

void SingletonManagerInstance(void)
{
  {
    {
      _ZNSt3__111make_uniqueB8ne200100IN5rtaid19DependencyInjectionEJELi0EEENS_10unique_ptrIT_NS_14default_deleteIS4_EEEEDpOT0_(&v0);
    }
  }
}

void sub_296C35B8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<rtaid::DependencyInjection>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t AudioIssueDetectorUpdateReportingSessions(unint64_t a1, char **a2)
{
  if (AudioDSPAnalysisEnabled())
  {

    return RealTimeAudioIssueDetectorUpdateReportingSessions();
  }

  else
  {
    SingletonManagerInstance();

    return rtaid::Manager::UpdateReportingSessionsOnDetector(a1, a2);
  }
}

void rtaid::ConfigurationManager::DetermineConfiguration(rtaid::ConfigurationManager *this, rtaid::Detector *a2, char a3)
{
  v136 = *MEMORY[0x29EDCA608];
  *(this + 117) = 0;
  *(this + 28) = 0;
  *(this + 7) = *(this + 6);
  *(this + 10) = *(this + 9);
  v6 = (this + 8);
  std::__tree<ADAM::EndPointBitMask>::destroy(*(this + 1));
  *this = v6;
  *(this + 2) = 0;
  *v6 = 0;
  v7 = (this + 32);
  std::__tree<std::map<rtaid::AnalyzerType,unsigned int>>::destroy(*(this + 4));
  v128 = this;
  *(this + 3) = this + 32;
  j = this + 24;
  *v7 = 0;
  *(j + 2) = 0;
  {
    if (IsSilenceAnalyzerBypassedThroughDefaults)
    {
      qword_2A18A54A8 = 0;
      rtaid::ConfigurationManager::GetDefaultConfiguration(void)::sDefaultConfig = &qword_2A18A54A8;
      qword_2A18A54C8 = 0;
      unk_2A18A54C0 = 0;
      qword_2A18A54B0 = 0;
      qword_2A18A54B8 = &unk_2A18A54C0;
    }
  }

  if (rtaid::ConfigurationManager::GetDefaultConfiguration(void)::onceToken != -1)
  {
    dispatch_once(&rtaid::ConfigurationManager::GetDefaultConfiguration(void)::onceToken, &__block_literal_global_205);
  }

  v126 = a2;
  v127 = j;
  if (v128 != &rtaid::ConfigurationManager::GetDefaultConfiguration(void)::sDefaultConfig)
  {
    v10 = rtaid::ConfigurationManager::GetDefaultConfiguration(void)::sDefaultConfig;
    i = v128;
    if (*(v128 + 2))
    {
      v12 = *v128;
      v13 = *(v128 + 1);
      *v128 = v6;
      *(v13 + 16) = 0;
      *v6 = 0;
      v6[1] = 0;
      if (v12[1])
      {
        v14 = v12[1];
      }

      else
      {
        v14 = v12;
      }

      if (v14)
      {
        v15 = a3;
        v16 = std::__tree<rtaid::AnalyzerType>::_DetachedTreeCache::__detach_next(v14);
        if (v10 == &qword_2A18A54A8)
        {
          v10 = &qword_2A18A54A8;
        }

        else
        {
          v17 = v14;
          v18 = v10;
          do
          {
            v14 = v16;
            v19 = *(v18 + 7);
            *(v17 + 7) = v19;
            v20 = *v6;
            v21 = v6;
            v22 = v6;
            if (*v6)
            {
              do
              {
                while (1)
                {
                  v21 = v20;
                  if (v19 >= *(v20 + 7))
                  {
                    break;
                  }

                  v20 = *v20;
                  v22 = v21;
                  if (!*v21)
                  {
                    goto LABEL_18;
                  }
                }

                v20 = v20[1];
              }

              while (v20);
              v22 = v21 + 1;
            }

LABEL_18:
            std::__tree<rtaid::AnalyzerType>::__insert_node_at(v128, v21, v22, v17);
            if (v16)
            {
              v16 = std::__tree<rtaid::AnalyzerType>::_DetachedTreeCache::__detach_next(v16);
            }

            else
            {
              v16 = 0;
            }

            v23 = v18[1];
            if (v23)
            {
              do
              {
                v10 = v23;
                v23 = *v23;
              }

              while (v23);
            }

            else
            {
              do
              {
                v10 = v18[2];
                v61 = *v10 == v18;
                v18 = v10;
              }

              while (!v61);
            }

            if (!v14)
            {
              break;
            }

            v17 = v14;
            v18 = v10;
          }

          while (v10 != &qword_2A18A54A8);
        }

        std::__tree<ADAM::EndPointBitMask>::destroy(v14);
        if (v16)
        {
          v24 = v16[2];
          for (i = v128; v24; v24 = v24[2])
          {
            v16 = v24;
          }

          std::__tree<ADAM::EndPointBitMask>::destroy(v16);
        }

        else
        {
          i = v128;
        }

        a3 = v15;
      }

      else
      {
        std::__tree<ADAM::EndPointBitMask>::destroy(0);
      }
    }

    if (v10 != &qword_2A18A54A8)
    {
      operator new();
    }

    v25 = qword_2A18A54B8;
    if (*(i + 5))
    {
      v26 = *j;
      *j = v7;
      *(*v7 + 16) = 0;
      *v7 = 0;
      v7[1] = 0;
      if (v26[1])
      {
        size = v26[1];
      }

      else
      {
        size = v26;
      }

      v131.__r_.__value_.__r.__words[0] = j;
      v131.__r_.__value_.__l.__size_ = size;
      v131.__r_.__value_.__r.__words[2] = size;
      if (size)
      {
        v131.__r_.__value_.__l.__size_ = std::__tree<rtaid::AnalyzerType>::_DetachedTreeCache::__detach_next(size);
        if (v25 == &unk_2A18A54C0)
        {
          v45 = &unk_2A18A54C0;
        }

        else
        {
          do
          {
            if (size != v25)
            {
              v28 = *(v25 + 32);
              v29 = (v25 + 40);
              if (*(size + 48))
              {
                v31 = (size + 40);
                v30 = *(size + 40);
                v32 = *(size + 32);
                *(size + 32) = size + 40;
                *(v30 + 16) = 0;
                *(size + 40) = 0;
                *(size + 48) = 0;
                if (*(v32 + 8))
                {
                  v33 = *(v32 + 8);
                }

                else
                {
                  v33 = v32;
                }

                if (v33)
                {
                  v34 = std::__tree<rtaid::AnalyzerType>::_DetachedTreeCache::__detach_next(v33);
                  if (v28 == v29)
                  {
                    v36 = v33;
                  }

                  else
                  {
                    v35 = v28;
                    do
                    {
                      v36 = v34;
                      v37 = *(v35 + 28);
                      *(v33 + 28) = v37;
                      v38 = *v31;
                      v39 = (size + 40);
                      v40 = (size + 40);
                      if (*v31)
                      {
                        do
                        {
                          while (1)
                          {
                            v39 = v38;
                            if (v37 >= *(v38 + 7))
                            {
                              break;
                            }

                            v38 = *v38;
                            v40 = v39;
                            if (!*v39)
                            {
                              goto LABEL_59;
                            }
                          }

                          v38 = v38[1];
                        }

                        while (v38);
                        v40 = v39 + 1;
                      }

LABEL_59:
                      std::__tree<rtaid::AnalyzerType>::__insert_node_at((size + 32), v39, v40, v33);
                      if (v34)
                      {
                        v34 = std::__tree<rtaid::AnalyzerType>::_DetachedTreeCache::__detach_next(v34);
                      }

                      else
                      {
                        v34 = 0;
                      }

                      v41 = v35[1];
                      if (v41)
                      {
                        do
                        {
                          v28 = v41;
                          v41 = *v41;
                        }

                        while (v41);
                      }

                      else
                      {
                        do
                        {
                          v28 = v35[2];
                          v61 = *v28 == v35;
                          v35 = v28;
                        }

                        while (!v61);
                      }

                      if (!v36)
                      {
                        break;
                      }

                      v33 = v36;
                      v35 = v28;
                    }

                    while (v28 != v29);
                  }

                  std::__tree<ADAM::EndPointBitMask>::destroy(v36);
                  if (v34)
                  {
                    v42 = v34[2];
                    for (j = v127; v42; v42 = v42[2])
                    {
                      v34 = v42;
                    }

                    std::__tree<ADAM::EndPointBitMask>::destroy(v34);
                  }

                  else
                  {
                    j = v127;
                  }
                }

                else
                {
                  std::__tree<ADAM::EndPointBitMask>::destroy(0);
                  j = v127;
                }
              }

              if (v28 != v29)
              {
                operator new();
              }
            }

            leaf_high = std::__tree<std::map<rtaid::AnalyzerType,unsigned int>>::__find_leaf_high(j, &v134, (size + 32));
            std::__tree<rtaid::AnalyzerType>::__insert_node_at(j, v134, leaf_high, size);
            size = v131.__r_.__value_.__l.__size_;
            v131.__r_.__value_.__r.__words[2] = v131.__r_.__value_.__l.__size_;
            if (v131.__r_.__value_.__l.__size_)
            {
              v131.__r_.__value_.__l.__size_ = std::__tree<rtaid::AnalyzerType>::_DetachedTreeCache::__detach_next(v131.__r_.__value_.__l.__size_);
            }

            v44 = *(v25 + 8);
            if (v44)
            {
              do
              {
                v45 = v44;
                v44 = *v44;
              }

              while (v44);
            }

            else
            {
              do
              {
                v45 = *(v25 + 16);
                v61 = *v45 == v25;
                v25 = v45;
              }

              while (!v61);
            }

            if (!size)
            {
              break;
            }

            v25 = v45;
          }

          while (v45 != &unk_2A18A54C0);
        }
      }

      else
      {
        v45 = v25;
      }

      IsSilenceAnalyzerBypassedThroughDefaults = std::__tree<std::map<rtaid::AnalyzerType,unsigned int>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](&v131);
      v25 = v45;
    }

    a2 = v126;
    if (v25 != &unk_2A18A54C0)
    {
      std::__tree<std::map<rtaid::AnalyzerType,unsigned int>>::__construct_node<std::map<rtaid::AnalyzerType,unsigned int> const&>(&v131, j, (v25 + 32));
    }
  }

  v46 = *a2;
  v47 = v128;
  if ((*a2 - 3) > 1 || (a3 & 1) == 0)
  {
    v48 = *(a2 + 74);
    v49 = *(a2 + 75);
    if (v48 == v49)
    {
      v53 = *(v128 + 10);
    }

    else
    {
      do
      {
        IsSilenceAnalyzerBypassedThroughDefaults = (*(**(*(v47 + 12) + 24) + 16))(*(*(v47 + 12) + 24), *v48);
        v50 = IsSilenceAnalyzerBypassedThroughDefaults;
        v52 = *(v47 + 10);
        v51 = *(v47 + 11);
        if (v52 >= v51)
        {
          v54 = *(v47 + 9);
          v55 = v52 - v54;
          v56 = (v52 - v54) >> 1;
          if (v56 <= -2)
          {
            std::vector<ADAMAudioDataAnalysisType>::__throw_length_error[abi:ne200100]();
          }

          v57 = v51 - v54;
          if (v57 <= v56 + 1)
          {
            v58 = v56 + 1;
          }

          else
          {
            v58 = v57;
          }

          if (v57 >= 0x7FFFFFFFFFFFFFFELL)
          {
            v59 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v59 = v58;
          }

          if (v59)
          {
            std::allocator<AudioServiceType>::allocate_at_least[abi:ne200100](v59);
          }

          *(2 * v56) = v50;
          v53 = 2 * v56 + 2;
          memcpy(0, v54, v55);
          IsSilenceAnalyzerBypassedThroughDefaults = *(v128 + 9);
          *(v128 + 9) = 0;
          *(v128 + 10) = v53;
          *(v128 + 11) = 0;
          v47 = v128;
          if (IsSilenceAnalyzerBypassedThroughDefaults)
          {
            operator delete(IsSilenceAnalyzerBypassedThroughDefaults);
          }
        }

        else
        {
          *v52 = IsSilenceAnalyzerBypassedThroughDefaults;
          v53 = (v52 + 2);
        }

        *(v47 + 10) = v53;
        ++v48;
      }

      while (v48 != v49);
    }

    v60 = *(v47 + 9);
    v61 = v53 != v60 && v46 == 2;
    v62 = v61;
    *(v47 + 115) = v62;
    a2 = v126;
    if (v60 != v53)
    {
      while (1)
      {
        v63 = *v60;
        if (v63 == 13 && v46 == 2)
        {
          goto LABEL_132;
        }

        *(v47 + 115) = 0;
        if (v63 == 4)
        {
          break;
        }

        if (v63 != 2)
        {
          if (v63 == 1)
          {
            *(v47 + 112) = 1;
          }

          goto LABEL_130;
        }

        v65 = 1;
LABEL_131:
        *(v47 + 114) = v65 & 1;
LABEL_132:
        if (++v60 == v53)
        {
          goto LABEL_133;
        }
      }

      *(v47 + 113) = 1;
LABEL_130:
      v65 = *(v47 + 114);
      goto LABEL_131;
    }
  }

LABEL_133:
  if (v46 <= 6)
  {
    if (v46 != 1)
    {
      if (v46 == 3)
      {
        *(v47 + 114) = 1;
      }

      else if (v46 == 4)
      {
        rtaid::ConfigurationManager::addSiriConfiguration(v47, a2);
      }

      goto LABEL_251;
    }

    if (*(v47 + 114) == 1)
    {
      if (*(v47 + 118))
      {
        goto LABEL_251;
      }

      IsSilenceAnalyzerBypassedThroughDefaults = (*(**(*(v47 + 12) + 32) + 48))(*(*(v47 + 12) + 32));
      if (IsSilenceAnalyzerBypassedThroughDefaults)
      {
        goto LABEL_251;
      }

      rtaid::Detector::GetNodeIDs(&v134, a2);
      v66 = v135;
      __p = v134;
      if (v134 != v135)
      {
        for (k = v134; k != v66; ++k)
        {
          v68 = *k;
          v69 = *(a2 + 1);
          v70 = *(a2 + 2);
          v71 = std::__hash_table<std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>>>::find<unsigned int>(v69, v70, *k);
          if (v71)
          {
            v72 = *(v71[3] + 188) == 1;
          }

          else
          {
            v72 = 0;
          }

          v73 = std::__hash_table<std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>>>::find<unsigned int>(v69, v70, v68);
          if (v73)
          {
            v74 = v73[3];
            if (*(v74 + 31) < 0)
            {
              std::string::__init_copy_ctor_external(&v131, *(v74 + 8), *(v74 + 16));
            }

            else
            {
              v75 = *(v74 + 8);
              v131.__r_.__value_.__r.__words[2] = *(v74 + 24);
              *&v131.__r_.__value_.__l.__data_ = v75;
            }

            v132 = 1;
            v76 = HIBYTE(v131.__r_.__value_.__r.__words[2]);
            if ((v131.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v77 = &v131;
            }

            else
            {
              v77 = v131.__r_.__value_.__r.__words[0];
            }

            if ((v131.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v78 = SHIBYTE(v131.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v78 = v131.__r_.__value_.__l.__size_;
            }

            if (v78 >= 8)
            {
              v79 = v77 + v78;
              v80 = v77;
              do
              {
                v81 = memchr(v80, 66, v78 - 7);
                if (!v81)
                {
                  break;
                }

                if (*v81 == 0x646E616265736142)
                {
                  v82 = v81 != v79 && v81 - v77 != -1;
                  if (v72 != v82)
                  {
                    goto LABEL_170;
                  }

                  goto LABEL_198;
                }

                v80 = (v81 + 1);
                v78 = v79 - v80;
              }

              while (v79 - v80 > 7);
            }

            if ((v72 & 1) == 0)
            {
LABEL_198:
              a2 = v126;
LABEL_205:
              if (v76 < 0)
              {
                operator delete(v131.__r_.__value_.__l.__data_);
              }

              continue;
            }
          }

          else
          {
            v131.__r_.__value_.__s.__data_[0] = 0;
            v132 = 0;
            if ((v72 & 1) == 0)
            {
              continue;
            }
          }

          v82 = 0;
LABEL_170:
          v133[0] = 5;
          v133[1] = *k;
          std::map<rtaid::AnalyzerType,unsigned int>::map[abi:ne200100](v129, v133, 1);
          std::__tree<std::map<rtaid::AnalyzerType,unsigned int>>::__emplace_unique_key_args<std::map<rtaid::AnalyzerType,unsigned int>,std::map<rtaid::AnalyzerType,unsigned int> const&>(v127, v129, v129);
          v84 = *(v128 + 7);
          v83 = *(v128 + 8);
          if ((v82 | v72 ^ 1))
          {
            a2 = v126;
            if (v84 < v83)
            {
              *v84 = 1;
              v85 = v84 + 4;
              goto LABEL_204;
            }

            v86 = *(v128 + 6);
            v87 = v84 - v86;
            v88 = (v84 - v86) >> 2;
            v89 = v88 + 1;
            if ((v88 + 1) >> 62)
            {
              std::vector<ADAMAudioDataAnalysisType>::__throw_length_error[abi:ne200100]();
            }

            v90 = v83 - v86;
            if (v90 >> 1 > v89)
            {
              v89 = v90 >> 1;
            }

            if (v90 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v91 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v91 = v89;
            }

            if (v91)
            {
              std::allocator<rtaid::TelephonyResetDetector>::allocate_at_least[abi:ne200100](v91);
            }

            v97 = v88;
            v98 = v128;
            v99 = (4 * v88);
            v100 = &v99[-v97];
            *v99 = 1;
            v85 = v99 + 1;
          }

          else
          {
            a2 = v126;
            if (v84 < v83)
            {
              *v84 = 2;
              v85 = v84 + 4;
              goto LABEL_204;
            }

            v86 = *(v128 + 6);
            v87 = v84 - v86;
            v92 = (v84 - v86) >> 2;
            v93 = v92 + 1;
            if ((v92 + 1) >> 62)
            {
              std::vector<ADAMAudioDataAnalysisType>::__throw_length_error[abi:ne200100]();
            }

            v94 = v83 - v86;
            if (v94 >> 1 > v93)
            {
              v93 = v94 >> 1;
            }

            if (v94 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v95 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v95 = v93;
            }

            if (v95)
            {
              std::allocator<rtaid::TelephonyResetDetector>::allocate_at_least[abi:ne200100](v95);
            }

            v101 = v92;
            v98 = v128;
            v102 = (4 * v92);
            v100 = &v102[-v101];
            *v102 = 2;
            v85 = v102 + 1;
          }

          memcpy(v100, v86, v87);
          v103 = *(v98 + 6);
          *(v98 + 6) = v100;
          *(v98 + 7) = v85;
          *(v98 + 8) = 0;
          if (v103)
          {
            operator delete(v103);
          }

          a2 = v126;
LABEL_204:
          *(v128 + 7) = v85;
          std::__tree<ADAM::EndPointBitMask>::destroy(v130);
          v76 = HIBYTE(v131.__r_.__value_.__r.__words[2]);
          if (v132)
          {
            goto LABEL_205;
          }
        }
      }

      v47 = v128;
      IsSilenceAnalyzerBypassedThroughDefaults = __p;
      if (__p)
      {
        operator delete(__p);
      }

LABEL_251:
      if (*(v47 + 114) == 1)
      {
        v123 = v47;
        if (*(v47 + 118))
        {
          goto LABEL_264;
        }

        IsSilenceAnalyzerBypassedThroughDefaults = rtaid::ConfigurationManager::IsSilenceAnalyzerBypassedThroughDefaults(IsSilenceAnalyzerBypassedThroughDefaults);
        if ((IsSilenceAnalyzerBypassedThroughDefaults & 1) == 0)
        {
          LODWORD(v131.__r_.__value_.__l.__data_) = 1;
          IsSilenceAnalyzerBypassedThroughDefaults = std::__tree<rtaid::AnalyzerType>::__emplace_unique_key_args<rtaid::AnalyzerType,rtaid::AnalyzerType>(v128, 1u, &v131);
        }

        v123 = v128;
        if (((v46 < 9) & (0x10Cu >> v46)) == 0)
        {
          goto LABEL_264;
        }

        LODWORD(v131.__r_.__value_.__l.__data_) = 6;
        IsSilenceAnalyzerBypassedThroughDefaults = std::__tree<rtaid::AnalyzerType>::__emplace_unique_key_args<rtaid::AnalyzerType,rtaid::AnalyzerType>(v128, 6u, &v131);
      }

      else
      {
        if (*(v47 + 113) != 1)
        {
          v123 = v47;
          if (*(v47 + 112) == 1)
          {
            rtaid::ConfigurationManager::addSiriConfiguration(v47, a2);
          }

          goto LABEL_264;
        }

        IsSilenceAnalyzerBypassedThroughDefaults = rtaid::ConfigurationManager::IsSilenceAnalyzerBypassedThroughDefaults(IsSilenceAnalyzerBypassedThroughDefaults);
        v123 = v47;
        if (IsSilenceAnalyzerBypassedThroughDefaults & 1) != 0 || (*(v47 + 118))
        {
LABEL_264:
          v124 = v123[115];
          if (v124 == 1)
          {
            if ((rtaid::ConfigurationManager::IsSilenceAnalyzerBypassedThroughDefaults(IsSilenceAnalyzerBypassedThroughDefaults) & 1) == 0)
            {
              LODWORD(v131.__r_.__value_.__l.__data_) = 1;
              std::__tree<rtaid::AnalyzerType>::__emplace_unique_key_args<rtaid::AnalyzerType,rtaid::AnalyzerType>(v123, 1u, &v131);
              LODWORD(v131.__r_.__value_.__l.__data_) = 6;
              std::__tree<rtaid::AnalyzerType>::__emplace_unique_key_args<rtaid::AnalyzerType,rtaid::AnalyzerType>(v128, 6u, &v131);
              v123 = v128;
            }

            v124 = v123[115];
          }

          if (v46 == 2 && v124 != v123[116])
          {
            v123[116] = v124;
            v123[117] = 1;
          }

          return;
        }

        LODWORD(v131.__r_.__value_.__l.__data_) = 1;
        std::__tree<rtaid::AnalyzerType>::__emplace_unique_key_args<rtaid::AnalyzerType,rtaid::AnalyzerType>(v47, 1u, &v131);
        LODWORD(v131.__r_.__value_.__l.__data_) = 6;
        IsSilenceAnalyzerBypassedThroughDefaults = std::__tree<rtaid::AnalyzerType>::__emplace_unique_key_args<rtaid::AnalyzerType,rtaid::AnalyzerType>(v128, 6u, &v131);
      }

      v123 = v128;
      goto LABEL_264;
    }

    if ((*(v47 + 118) & 1) != 0 || ((*(**(*(v47 + 12) + 32) + 32))(*(*(v47 + 12) + 32)) & 1) == 0 && !(*(**(*(v47 + 12) + 32) + 40))(*(*(v47 + 12) + 32)) || !(*(**(*(v47 + 12) + 40) + 16))(*(*(v47 + 12) + 40)))
    {
      IsSilenceAnalyzerBypassedThroughDefaults = (*(**(*(v47 + 12) + 32) + 48))(*(*(v47 + 12) + 32));
      if (!IsSilenceAnalyzerBypassedThroughDefaults)
      {
        goto LABEL_251;
      }

      rtaid::Detector::GetNodeIDs(&v131, a2);
      v107 = *&v131.__r_.__value_.__l.__data_;
      if (v131.__r_.__value_.__r.__words[0] == v131.__r_.__value_.__l.__size_)
      {
        v111 = 1;
      }

      else
      {
        v108 = *(v126 + 1);
        v109 = *(v126 + 2);
        v110 = v131.__r_.__value_.__r.__words[0] + 4;
        while (1)
        {
          IsSilenceAnalyzerBypassedThroughDefaults = std::__hash_table<std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>>>::find<unsigned int>(v108, v109, *(v110 - 4));
          if (!IsSilenceAnalyzerBypassedThroughDefaults)
          {
            break;
          }

          v111 = *(*(IsSilenceAnalyzerBypassedThroughDefaults + 24) + 188) != 0;
          if (*(*(IsSilenceAnalyzerBypassedThroughDefaults + 24) + 188))
          {
            v112 = v110 == *(&v107 + 1);
          }

          else
          {
            v112 = 1;
          }

          v110 += 4;
          if (v112)
          {
            goto LABEL_235;
          }
        }

        v111 = 0;
      }

LABEL_235:
      v47 = v128;
      if (v107)
      {
        operator delete(v107);
      }

      a2 = v126;
      if (v111)
      {
        goto LABEL_251;
      }
    }

LABEL_238:
    LODWORD(v131.__r_.__value_.__l.__data_) = 6;
    IsSilenceAnalyzerBypassedThroughDefaults = std::__tree<rtaid::AnalyzerType>::__emplace_unique_key_args<rtaid::AnalyzerType,rtaid::AnalyzerType>(v47, 6u, &v131);
    v47 = v128;
    goto LABEL_251;
  }

  if (v46 == 7)
  {
    if (*(v47 + 114) == 1 && (*(v47 + 118) & 1) == 0)
    {
      IsSilenceAnalyzerBypassedThroughDefaults = (*(**(*(v47 + 12) + 32) + 48))(*(*(v47 + 12) + 32));
      if ((IsSilenceAnalyzerBypassedThroughDefaults & 1) == 0)
      {
        v134 = 0x300000005;
        std::map<rtaid::AnalyzerType,unsigned int>::map[abi:ne200100](&v131, &v134, 1);
        std::__tree<std::map<rtaid::AnalyzerType,unsigned int>>::__emplace_unique_key_args<std::map<rtaid::AnalyzerType,unsigned int>,std::map<rtaid::AnalyzerType,unsigned int> const&>(v127, &v131, &v131);
        v105 = *(v128 + 7);
        v104 = *(v128 + 8);
        if (v105 >= v104)
        {
          v113 = *(v128 + 6);
          v114 = v105 - v113;
          v115 = (v105 - v113) >> 2;
          v116 = v115 + 1;
          if ((v115 + 1) >> 62)
          {
            std::vector<ADAMAudioDataAnalysisType>::__throw_length_error[abi:ne200100]();
          }

          v117 = v104 - v113;
          if (v117 >> 1 > v116)
          {
            v116 = v117 >> 1;
          }

          if (v117 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v118 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v118 = v116;
          }

          if (v118)
          {
            std::allocator<rtaid::TelephonyResetDetector>::allocate_at_least[abi:ne200100](v118);
          }

          v119 = v115;
          v120 = (4 * v115);
          v121 = &v120[-v119];
          *v120 = 0;
          v106 = v120 + 1;
          memcpy(v121, v113, v114);
          v122 = *(v128 + 6);
          *(v128 + 6) = v121;
          *(v128 + 7) = v106;
          *(v128 + 8) = 0;
          if (v122)
          {
            operator delete(v122);
          }

          a2 = v126;
        }

        else
        {
          *v105 = 0;
          v106 = v105 + 4;
        }

        *(v128 + 7) = v106;
        v47 = v128;
        std::__tree<ADAM::EndPointBitMask>::destroy(v131.__r_.__value_.__l.__size_);
      }
    }

    goto LABEL_251;
  }

  if (v46 == 8)
  {
    if (*(v47 + 118))
    {
      goto LABEL_251;
    }

    IsSilenceAnalyzerBypassedThroughDefaults = (*(**(*(v47 + 12) + 32) + 32))(*(*(v47 + 12) + 32));
    if (!IsSilenceAnalyzerBypassedThroughDefaults)
    {
      goto LABEL_251;
    }

    goto LABEL_238;
  }

  if (v46 != 10)
  {
    goto LABEL_251;
  }

  if ((*(v47 + 118) & 1) == 0)
  {
    LODWORD(v131.__r_.__value_.__l.__data_) = 6;
    std::__tree<rtaid::AnalyzerType>::__emplace_unique_key_args<rtaid::AnalyzerType,rtaid::AnalyzerType>(v47, 6u, &v131);
  }
}

void std::__tree<ADAM::EndPointBitMask>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<ADAM::EndPointBitMask>::destroy(*a1);
    std::__tree<ADAM::EndPointBitMask>::destroy(a1[1]);

    operator delete(a1);
  }
}

void *std::__hash_table<std::__hash_value_type<long long,std::shared_ptr<rtaid::Detector>>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,std::shared_ptr<rtaid::Detector>>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,std::shared_ptr<rtaid::Detector>>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,std::shared_ptr<rtaid::Detector>>>>::find<long long>(unint64_t a1)
{
  if (!qword_2A18A5370)
  {
    return 0;
  }

  v1 = vcnt_s8(qword_2A18A5370);
  v1.i16[0] = vaddlv_u8(v1);
  if (v1.u32[0] > 1uLL)
  {
    v2 = a1;
    if (qword_2A18A5370 <= a1)
    {
      v2 = a1 % qword_2A18A5370;
    }
  }

  else
  {
    v2 = (qword_2A18A5370 - 1) & a1;
  }

  i = *(qword_2A18A5368 + 8 * v2);
  if (i)
  {
    for (i = *i; i; i = *i)
    {
      v4 = i[1];
      if (v4 == a1)
      {
        if (i[2] == a1)
        {
          return i;
        }
      }

      else
      {
        if (v1.u32[0] > 1uLL)
        {
          if (v4 >= qword_2A18A5370)
          {
            v4 %= qword_2A18A5370;
          }
        }

        else
        {
          v4 &= qword_2A18A5370 - 1;
        }

        if (v4 != v2)
        {
          return 0;
        }
      }
    }
  }

  return i;
}

uint64_t *std::__tree<rtaid::AnalyzerType>::__insert_node_at(uint64_t ***a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t AudioIssueDetectorSetNodeFormatWithDirection(unint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, double *a5, uint64_t a6)
{
  v6 = a6;
  v8 = a4;
  if (AudioDSPAnalysisEnabled())
  {
    return RealTimeAudioIssueDetectorSetNodeFormatWithDirection();
  }

  SingletonManagerInstance();

  return rtaid::Manager::SetNodeFormatWithDirectionOnDetector(a1, a2, a3, v8, a5, v6);
}

uint64_t rtaid::Manager::SetNodeFormatWithDirectionOnDetector(unint64_t a1, uint64_t a2, uint64_t a3, char a4, double *a5, int a6)
{
  v12 = *MEMORY[0x29EDCA608];
  std::mutex::lock(&SingletonManagerInstance(void)::sInstance);
  v7 = std::__hash_table<std::__hash_value_type<long long,std::shared_ptr<rtaid::Detector>>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,std::shared_ptr<rtaid::Detector>>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,std::shared_ptr<rtaid::Detector>>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,std::shared_ptr<rtaid::Detector>>>>::find<long long>(a1);
  if (v7)
  {
    v8 = v7[4];
    v10 = v7[3];
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v10)
    {
      std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100](v11, "[a-fA-F0-9:]{17}|[a-fA-F0-9]{12}");
    }

    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }

  std::mutex::unlock(&SingletonManagerInstance(void)::sInstance);
  return 0xFFFFFFFFLL;
}

void sub_296C380D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__pa, uint64_t a20, int a21, __int16 a22, char a23, char a24, ...)
{
  va_start(va, a24);
  if (a24 < 0)
  {
    operator delete(__pa);
  }

  std::basic_regex<char,std::regex_traits<char>>::~basic_regex(va);
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  std::mutex::unlock(&SingletonManagerInstance(void)::sInstance);
  _Unwind_Resume(a1);
}

void std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100](std::regex_traits<char> *a1, char *a2)
{
  v4 = std::regex_traits<char>::regex_traits(a1);
  v4[2].__ct_ = 0;
  *&v4[1].__col_ = 0u;
  *&v4[1].__loc_.__locale_ = 0u;
  v5 = strlen(a2);
  std::basic_regex<char,std::regex_traits<char>>::__parse<char const*>(a1, a2, &a2[v5]);
}

void sub_296C38290(_Unwind_Exception *a1)
{
  locale = v1[6].__locale_;
  if (locale)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](locale);
  }

  std::locale::~locale(v1);
  _Unwind_Resume(a1);
}

std::regex_traits<char> *__cdecl std::regex_traits<char>::regex_traits(std::regex_traits<char> *this)
{
  v2 = MEMORY[0x29C260DE0]();
  this->__ct_ = std::locale::use_facet(v2, MEMORY[0x29EDC93D0]);
  this->__col_ = std::locale::use_facet(&this->__loc_, MEMORY[0x29EDC93E8]);
  return this;
}

void sub_296C38740(_Unwind_Exception *a1)
{
  (*(*v1 + 8))(v1);
  (*(*v2 + 8))(v2);
  _Unwind_Resume(a1);
}

uint64_t AudioIssueDetectorAnalyzeBuffer(unint64_t a1, uint64_t a2, char a3, const AudioBufferList *a4, uint64_t a5, const AudioTimeStamp *a6)
{
  if (!AudioDSPAnalysisEnabled())
  {
    SingletonManagerInstance();
    if (!atomic_load(&dword_2A18A5398))
    {
      v14 = std::__hash_table<std::__hash_value_type<long long,std::shared_ptr<rtaid::Detector>>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,std::shared_ptr<rtaid::Detector>>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,std::shared_ptr<rtaid::Detector>>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,std::shared_ptr<rtaid::Detector>>>>::find<long long>(a1);
      if (!v14)
      {
        return 0xFFFFFFFFLL;
      }

      v16 = v14[3];
      v15 = v14[4];
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v16)
      {
        v17 = 0;
        if (a2 == 49 && *v16 == 3)
        {
          v17 = atomic_load(&unk_2A18A53D4);
        }

        v13 = 0;
        if ((a3 & 1) == 0 && (v17 & 1) == 0)
        {
          mNumberBuffers = a4->mNumberBuffers;
          if ((mNumberBuffers - 33) >= 0xFFFFFFE0)
          {
            p_mData = &a4->mBuffers[0].mData;
            while (*p_mData && *(p_mData - 1))
            {
              p_mData += 2;
              if (!--mNumberBuffers)
              {
                v20 = std::__hash_table<std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>>>::find<unsigned int>((v16 + 8), a2);
                if (!v20)
                {
                  v13 = 4294967294;
                  goto LABEL_22;
                }

                v21 = v20;
                v22 = v20 + 3;
                v13 = rtaid::DetectorNode::AnalyzeABL(v20[3], a6, a4, a5);
                v21[6] = *&a6->mSampleTime;
                if (v13)
                {
                  goto LABEL_22;
                }

                v23 = *(v21 + 8);
                v24 = *(v21 + 9) + a5;
                *(v21 + 9) = v24;
                if (v24 >= v23)
                {
                  *(v21 + 9) = v24 % v23;
                  rtaid::Detector::checkAndResetAnalyzers(v16, v22);
                }

                break;
              }
            }
          }

          v13 = 0;
        }
      }

      else
      {
        v13 = 0xFFFFFFFFLL;
      }

LABEL_22:
      if (v15)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v15);
      }

      return v13;
    }

    return 0;
  }

  if (a3)
  {
    return 0;
  }

  return MEMORY[0x2A1C5F550](a1, a2, a6, a4, a5);
}

void sub_296C38970(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>>>::find<unsigned int>(void *a1, unsigned int a2)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % v2;
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5)
  {
    return 0;
  }

  for (result = *v5; result; result = *result)
  {
    v7 = result[1];
    if (v7 == a2)
    {
      if (*(result + 4) == a2)
      {
        return result;
      }
    }

    else
    {
      if (v3.u32[0] > 1uLL)
      {
        if (v7 >= v2)
        {
          v7 %= v2;
        }
      }

      else
      {
        v7 &= v2 - 1;
      }

      if (v7 != v4)
      {
        return 0;
      }
    }
  }

  return result;
}

void std::__shared_weak_count::__release_shared[abi:ne200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

void rtaid::Manager::applyTelephonyResets(int *a1, int *a2, uint64_t *a3)
{
  v31 = *MEMORY[0x29EDCA608];
  if (a1 == a2)
  {
    return;
  }

  v5 = a1;
  *(&xmmword_2A18A53D8 + 4) = vdup_n_s32(0xC2F00000);
  do
  {
    v6 = *v5;
    if (*v5 == 2)
    {
      v13 = *a3;
      v12 = a3[1];
      if (v12)
      {
        atomic_fetch_add_explicit((v12 + 16), 1uLL, memory_order_relaxed);
      }

      v9 = qword_2A18A53C8;
      qword_2A18A53C0 = v13;
      qword_2A18A53C8 = v12;
      if (v9)
      {
LABEL_13:
        std::__shared_weak_count::__release_weak(v9);
      }
    }

    else if (v6 == 1)
    {
      v11 = *a3;
      v10 = a3[1];
      if (v10)
      {
        atomic_fetch_add_explicit((v10 + 16), 1uLL, memory_order_relaxed);
      }

      v9 = qword_2A18A53B8;
      qword_2A18A53B0 = v11;
      qword_2A18A53B8 = v10;
      if (v9)
      {
        goto LABEL_13;
      }
    }

    else if (!v6)
    {
      v8 = *a3;
      v7 = a3[1];
      if (v7)
      {
        atomic_fetch_add_explicit((v7 + 16), 1uLL, memory_order_relaxed);
      }

      v9 = qword_2A18A53A8;
      qword_2A18A53A0 = v8;
      qword_2A18A53A8 = v7;
      if (v9)
      {
        goto LABEL_13;
      }
    }

    ++v5;
  }

  while (v5 != a2);
  if (qword_2A18A53B8)
  {
    v14 = std::__shared_weak_count::lock(qword_2A18A53B8);
    if (v14)
    {
      v15 = v14;
      if (qword_2A18A53B0)
      {
        rtaid::Detector::ResetTelephonyRMSState(*(qword_2A18A53B0 + 24));
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    }
  }

  if (qword_2A18A53C8)
  {
    v16 = std::__shared_weak_count::lock(qword_2A18A53C8);
    if (v16)
    {
      v17 = v16;
      if (qword_2A18A53C0)
      {
        rtaid::Detector::ResetTelephonyRMSState(*(qword_2A18A53C0 + 24));
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v17);
    }
  }

  if (qword_2A18A53A8)
  {
    v18 = std::__shared_weak_count::lock(qword_2A18A53A8);
    if (v18)
    {
      v19 = v18;
      if (qword_2A18A53A0)
      {
        rtaid::Detector::ResetTelephonyRMSState(*(qword_2A18A53A0 + 24));
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v19);
    }
  }

  {
    rtaid::get_log(void)::rtaid_os_log = os_log_create("com.apple.coreaudio", "aid");
  }

  v20 = rtaid::get_log(void)::rtaid_os_log;
  if (os_log_type_enabled(rtaid::get_log(void)::rtaid_os_log, OS_LOG_TYPE_DEBUG))
  {
    v21 = 136316162;
    v22 = "Manager.cpp";
    v23 = 1024;
    v24 = 361;
    v25 = 1040;
    v26 = 14;
    v27 = 2080;
    v28 = "rtaid::Manager]";
    v29 = 2048;
    v30 = &SingletonManagerInstance(void)::sInstance;
    _os_log_impl(&dword_296C34000, v20, OS_LOG_TYPE_DEBUG, "[%s:%-5d %.*s:%p] reset all telephony detectors", &v21, 0x2Cu);
  }
}

void std::__tree<std::map<rtaid::AnalyzerType,unsigned int>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::map<rtaid::AnalyzerType,unsigned int>>::destroy(*a1);
    std::__tree<std::map<rtaid::AnalyzerType,unsigned int>>::destroy(a1[1]);
    std::__tree<ADAM::EndPointBitMask>::destroy(a1[5]);

    operator delete(a1);
  }
}

uint64_t *std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (*(v2 + 24))
      {
        break;
      }

      v3 = *(v2 + 16);
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = *(v2 + 8);
            v12 = *v11;
            *(v2 + 8) = *v11;
            v13 = v2;
            if (v12)
            {
              *(v12 + 16) = v2;
              v3 = *(v2 + 16);
              v13 = *v3;
            }

            *(v11 + 16) = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            *(v2 + 16) = v11;
            v3 = *(v11 + 16);
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = *(v2 + 16);
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            *(v2 + 16) = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

void rtaid::Manager::applyConfiguration(rtaid::Manager *this, const rtaid::Configuration *a2, rtaid::Detector *a3)
{
  v34 = this;
  v50[3] = *MEMORY[0x29EDCA608];
  {
    if (this)
    {
      rtaid::GetAnalyzerToStringMap(void)::gAnalyzerToStringMap = 0u;
      *&qword_2A18A5480 = 0u;
      dword_2A18A5490 = 1065353216;
    }
  }

  if (rtaid::GetAnalyzerToStringMap(void)::onceToken != -1)
  {
    dispatch_once(&rtaid::GetAnalyzerToStringMap(void)::onceToken, &__block_literal_global_23_1093);
  }

  rtaid::GetClientIDMap(this);
  v4 = std::__hash_table<std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>>>::find<unsigned int>(&rtaid::GetClientIDMap(void)::gClientIDMap, *a2);
  if (!v4)
  {
LABEL_69:
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  if (*(v4 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(&v36, v4[3], v4[4]);
  }

  else
  {
    v36 = *(v4 + 1);
  }

  v5 = *v34;
  if (*v34 != (v34 + 8))
  {
    v6 = vdupq_n_s64(0x55uLL);
    v35 = v6;
    do
    {
      v7 = *(v5 + 7);
      if (v7 == 7)
      {
        v6.i64[0] = *(a2 + 6);
        v8 = vorr_s8(*&vorrq_s8(v6, v35), 42);
      }

      else
      {
        if (v7 >= 7)
        {
          std::__throw_out_of_range[abi:ne200100]("bitset set argument out of range");
        }

        v8 = *(a2 + 6) | (1 << v7);
      }

      *(a2 + 6) = v8;
      for (i = *(a2 + 3); i; i = *i)
      {
        v10 = i[3];
        v11 = (v10 + 159);
        if (v7 == 7)
        {
          *(v10 + 162) = 16843009;
          *v11 = 16843009;
        }

        else
        {
          *(v11 + v7) = 1;
        }

        rtaid::DetectorNode::updateSilenceAnalyzerState(v10);
      }

      {
        rtaid::get_log(void)::rtaid_os_log = os_log_create("com.apple.coreaudio", "aid");
      }

      v12 = rtaid::get_log(void)::rtaid_os_log;
      if (os_log_type_enabled(rtaid::get_log(void)::rtaid_os_log, OS_LOG_TYPE_DEBUG))
      {
        v13 = std::__hash_table<std::__hash_value_type<rtaid::AnalyzerType,std::string>,std::__unordered_map_hasher<rtaid::AnalyzerType,std::__hash_value_type<rtaid::AnalyzerType,std::string>,std::hash<rtaid::AnalyzerType>,std::equal_to<rtaid::AnalyzerType>,true>,std::__unordered_map_equal<rtaid::AnalyzerType,std::__hash_value_type<rtaid::AnalyzerType,std::string>,std::equal_to<rtaid::AnalyzerType>,std::hash<rtaid::AnalyzerType>,true>,std::allocator<std::__hash_value_type<rtaid::AnalyzerType,std::string>>>::find<rtaid::AnalyzerType>(*(v5 + 7));
        if (!v13)
        {
          goto LABEL_69;
        }

        v14 = v13 + 3;
        if (*(v13 + 47) < 0)
        {
          v14 = *v14;
        }

        v15 = &v36;
        if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v15 = v36.__r_.__value_.__r.__words[0];
        }

        *buf = 136316674;
        v38 = "Manager.cpp";
        v39 = 1024;
        v40 = 305;
        v41 = 1040;
        v42 = 14;
        v43 = 2080;
        v44 = "rtaid::Manager]";
        v45 = 2048;
        v46 = &SingletonManagerInstance(void)::sInstance;
        v47 = 2080;
        v48 = v14;
        v49 = 2080;
        v50[0] = v15;
        _os_log_impl(&dword_296C34000, v12, OS_LOG_TYPE_DEBUG, "[%s:%-5d %.*s:%p] enabling global %s analyzer for client %s", buf, 0x40u);
      }

      v16 = v5[1];
      if (v16)
      {
        do
        {
          v17 = v16;
          v16 = *v16;
        }

        while (v16);
      }

      else
      {
        do
        {
          v17 = v5[2];
          v18 = *v17 == v5;
          v5 = v17;
        }

        while (!v18);
      }

      v5 = v17;
    }

    while (v17 != (v34 + 8));
  }

  v19 = *(v34 + 3);
  if (v19 != (v34 + 32))
  {
    do
    {
      v20 = v19[4];
      if (v20 != v19 + 5)
      {
        do
        {
          v21 = *(v20 + 7);
          v22 = std::__hash_table<std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>>>::find<unsigned int>(a2 + 1, *(v20 + 8));
          if (v22)
          {
            v23 = v22[3];
            v24 = (v23 + 152);
            if (v21 == 7)
            {
              *(v23 + 155) = 16843009;
              *v24 = 16843009;
            }

            else
            {
              *(v24 + v21) = 1;
            }

            rtaid::DetectorNode::updateSilenceAnalyzerState(v23);
          }

          {
            rtaid::get_log(void)::rtaid_os_log = os_log_create("com.apple.coreaudio", "aid");
          }

          v25 = rtaid::get_log(void)::rtaid_os_log;
          if (os_log_type_enabled(rtaid::get_log(void)::rtaid_os_log, OS_LOG_TYPE_DEBUG))
          {
            v26 = std::__hash_table<std::__hash_value_type<rtaid::AnalyzerType,std::string>,std::__unordered_map_hasher<rtaid::AnalyzerType,std::__hash_value_type<rtaid::AnalyzerType,std::string>,std::hash<rtaid::AnalyzerType>,std::equal_to<rtaid::AnalyzerType>,true>,std::__unordered_map_equal<rtaid::AnalyzerType,std::__hash_value_type<rtaid::AnalyzerType,std::string>,std::equal_to<rtaid::AnalyzerType>,std::hash<rtaid::AnalyzerType>,true>,std::allocator<std::__hash_value_type<rtaid::AnalyzerType,std::string>>>::find<rtaid::AnalyzerType>(*(v20 + 7));
            if (!v26)
            {
              goto LABEL_69;
            }

            v27 = v26 + 3;
            if (*(v26 + 47) < 0)
            {
              v27 = *v27;
            }

            v28 = *(v20 + 8);
            v29 = &v36;
            if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v29 = v36.__r_.__value_.__r.__words[0];
            }

            *buf = 136316930;
            v38 = "Manager.cpp";
            v39 = 1024;
            v40 = 312;
            v41 = 1040;
            v42 = 14;
            v43 = 2080;
            v44 = "rtaid::Manager]";
            v45 = 2048;
            v46 = &SingletonManagerInstance(void)::sInstance;
            v47 = 2080;
            v48 = v27;
            v49 = 1024;
            LODWORD(v50[0]) = v28;
            WORD2(v50[0]) = 2080;
            *(v50 + 6) = v29;
            _os_log_impl(&dword_296C34000, v25, OS_LOG_TYPE_DEBUG, "[%s:%-5d %.*s:%p] enabling node specific %s analyzer at node %d for client %s", buf, 0x46u);
          }

          v30 = v20[1];
          if (v30)
          {
            do
            {
              v31 = v30;
              v30 = *v30;
            }

            while (v30);
          }

          else
          {
            do
            {
              v31 = v20[2];
              v18 = *v31 == v20;
              v20 = v31;
            }

            while (!v18);
          }

          v20 = v31;
        }

        while (v31 != v19 + 5);
      }

      v32 = v19[1];
      if (v32)
      {
        do
        {
          v33 = v32;
          v32 = *v32;
        }

        while (v32);
      }

      else
      {
        do
        {
          v33 = v19[2];
          v18 = *v33 == v19;
          v19 = v33;
        }

        while (!v18);
      }

      v19 = v33;
    }

    while (v33 != (v34 + 32));
  }

  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
  }
}

void sub_296C394AC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t rtaid::DetectorNode::updateSilenceAnalyzerState(uint64_t this)
{
  v1 = *(this + 32);
  if (v1)
  {
    v2 = this;
    if (*(this + 160) & 1) != 0 || (*(this + 153) & 1) != 0 || (*(this + 161))
    {
      v3 = 0;
    }

    else
    {
      v3 = *(this + 154) ^ 1;
    }

    inData = v3;
    AudioUnitSetProperty(v1, 0xFA01u, 0, 0, &inData, 4u);
    if (*(v2 + 161))
    {
      v4 = 1;
    }

    else
    {
      v4 = *(v2 + 154);
    }

    v5 = v4;
    return AudioUnitSetProperty(v1, 0xFA03u, 0, 0, &v5, 4u);
  }

  return this;
}

void rtaid::GetClientIDMap(rtaid *this)
{
  {
    rtaid::GetClientIDMap(void)::gClientIDMap = 0u;
    *&qword_2A18A54E8 = 0u;
    dword_2A18A54F8 = 1065353216;
  }

  if (rtaid::GetClientIDMap(void)::onceToken != -1)
  {

    dispatch_once(&rtaid::GetClientIDMap(void)::onceToken, &__block_literal_global_1074);
  }
}

uint64_t std::__tree<rtaid::AnalyzerType>::__emplace_unique_key_args<rtaid::AnalyzerType,rtaid::AnalyzerType>(uint64_t result, unsigned int a2, _DWORD *a3)
{
  v3 = *(result + 8);
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
      v5 = *(v3 + 28);
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
      return result;
    }

    v3 = v4[1];
    if (!v3)
    {
      goto LABEL_7;
    }
  }
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_ecma_exp<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  end = a1->__end_;
  v7 = a2;
  do
  {
    v8 = v7;
    v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_term<char const*>(a1, v7, a3);
  }

  while (v7 != v8);
  if (v8 == a2)
  {
    operator new();
  }

  if (v8 != a3)
  {
    do
    {
      if (*v7 != 124)
      {
        break;
      }

      v9 = a1->__end_;
      v10 = ++v7;
      do
      {
        v11 = v7;
        v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_term<char const*>(a1, v7, a3);
      }

      while (v7 != v11);
      if (v11 == v10)
      {
        operator new();
      }

      std::basic_regex<char,std::regex_traits<char>>::__push_alternation(a1, end, v9);
    }

    while (v11 != a3);
  }

  return v7;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_term<char const*>(std::basic_regex<char> *this, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 == a3)
  {
    return a2;
  }

  v6 = *a2;
  if (v6 > 0x5B)
  {
    if (v6 == 92)
    {
      if (a2 + 1 == a3)
      {
        end = this->__end_;
        marked_count = this->__marked_count_;
        goto LABEL_38;
      }

      v11 = a2[1];
      if (v11 == 66)
      {
        v12 = 1;
      }

      else
      {
        if (v11 != 98)
        {
          goto LABEL_29;
        }

        v12 = 0;
      }

      std::basic_regex<char,std::regex_traits<char>>::__push_word_boundary(this, v12);
      return a2 + 2;
    }

    if (v6 != 94)
    {
      goto LABEL_30;
    }

    std::basic_regex<char,std::regex_traits<char>>::__push_l_anchor(this);
    return a2 + 1;
  }

  if (v6 == 36)
  {
    std::basic_regex<char,std::regex_traits<char>>::__push_r_anchor(this);
    return a2 + 1;
  }

  if (v6 != 40)
  {
    goto LABEL_30;
  }

  if (a2 + 1 == a3)
  {
    end = this->__end_;
    marked_count = this->__marked_count_;
LABEL_43:
    if (a2 + 1 == a3)
    {
      goto LABEL_99;
    }

    if (a2 + 2 != a3 && a2[1] == 63 && a2[2] == 58)
    {
      p_open_count = &this->__open_count_;
      ++this->__open_count_;
      v20 = std::basic_regex<char,std::regex_traits<char>>::__parse_ecma_exp<char const*>(this, a2 + 3, a3);
      if (v20 == a3)
      {
        goto LABEL_99;
      }

      v21 = v20;
      if (*v20 != 41)
      {
        goto LABEL_99;
      }
    }

    else
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_begin_marked_subexpression(this);
      v22 = this->__marked_count_;
      p_open_count = &this->__open_count_;
      ++this->__open_count_;
      v23 = std::basic_regex<char,std::regex_traits<char>>::__parse_ecma_exp<char const*>(this, a2 + 1, a3);
      if (v23 == a3 || (v21 = v23, *v23 != 41))
      {
LABEL_99:
        std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
      }

      std::basic_regex<char,std::regex_traits<char>>::__push_end_marked_subexpression(this, v22);
    }

    --*p_open_count;
    v24 = v21 + 1;
LABEL_56:
    result = a2;
    if (v24 == a2)
    {
      return result;
    }

    goto LABEL_96;
  }

  if (a2[1] != 63 || a2 + 2 == a3)
  {
    goto LABEL_29;
  }

  v7 = a2[2];
  if (v7 == 33)
  {
    std::regex_traits<char>::regex_traits(&v38.__traits_);
    memset(&v38.__flags_, 0, 40);
    v38.__flags_ = this->__flags_;
    v8 = std::basic_regex<char,std::regex_traits<char>>::__parse<char const*>(&v38, a2 + 3, a3);
    v15 = v38.__marked_count_;
    std::basic_regex<char,std::regex_traits<char>>::__push_lookahead(this, &v38, 1, this->__marked_count_);
    this->__marked_count_ += v15;
    if (v8 == a3 || *v8 != 41)
    {
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
    }

LABEL_28:
    std::basic_regex<char,std::regex_traits<char>>::~basic_regex(&v38.__traits_.__loc_);
    result = v8 + 1;
    if (v8 + 1 != a2)
    {
      return result;
    }

    goto LABEL_29;
  }

  if (v7 == 61)
  {
    std::regex_traits<char>::regex_traits(&v38.__traits_);
    memset(&v38.__flags_, 0, 40);
    v38.__flags_ = this->__flags_;
    v8 = std::basic_regex<char,std::regex_traits<char>>::__parse<char const*>(&v38, a2 + 3, a3);
    v9 = v38.__marked_count_;
    std::basic_regex<char,std::regex_traits<char>>::__push_lookahead(this, &v38, 0, this->__marked_count_);
    this->__marked_count_ += v9;
    if (v8 == a3 || *v8 != 41)
    {
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
    }

    goto LABEL_28;
  }

LABEL_29:
  v6 = *a2;
LABEL_30:
  end = this->__end_;
  marked_count = this->__marked_count_;
  if (v6 > 62)
  {
    v16 = (v6 - 92);
    if (v16 <= 0x21)
    {
      if (((1 << (v6 - 92)) & 0x300000006) != 0)
      {
        return a2;
      }

      if (v6 == 92)
      {
LABEL_38:
        v17 = a2 + 1;
        if (a2 + 1 == a3)
        {
          std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>();
        }

        v18 = *v17;
        if (v18 == 48)
        {
          std::basic_regex<char,std::regex_traits<char>>::__push_char(this, 0);
LABEL_95:
          v24 = a2 + 2;
          goto LABEL_96;
        }

        if ((v18 - 49) <= 8)
        {
          v25 = (v18 - 48);
          v24 = a2 + 2;
          if (a2 + 2 != a3)
          {
            while (1)
            {
              v26 = *v24;
              if ((v26 - 48) > 9)
              {
                break;
              }

              if (v25 >= 0x19999999)
              {
                goto LABEL_100;
              }

              v25 = v26 + 10 * v25 - 48;
              if (++v24 == a3)
              {
                v24 = a3;
                break;
              }
            }

            if (!v25)
            {
              goto LABEL_100;
            }
          }

          if (v25 > marked_count)
          {
LABEL_100:
            std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)4>();
          }

          std::basic_regex<char,std::regex_traits<char>>::__push_back_ref(this, v25);
          if (v24 != v17)
          {
            goto LABEL_56;
          }

          v18 = *v17;
        }

        if (v18 > 99)
        {
          if (v18 == 119)
          {
            v27 = this;
            v28 = 0;
            goto LABEL_87;
          }

          if (v18 == 115)
          {
            v35 = this;
            v36 = 0;
LABEL_93:
            started = std::basic_regex<char,std::regex_traits<char>>::__start_matching_list(v35, v36);
            v32 = started->__mask_ | 0x4000;
            goto LABEL_94;
          }

          if (v18 != 100)
          {
            goto LABEL_88;
          }

          v29 = this;
          v30 = 0;
        }

        else
        {
          if (v18 != 68)
          {
            if (v18 != 83)
            {
              if (v18 == 87)
              {
                v27 = this;
                v28 = 1;
LABEL_87:
                v33 = std::basic_regex<char,std::regex_traits<char>>::__start_matching_list(v27, v28);
                v33->__mask_ |= 0x500u;
                std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](v33, 95);
                goto LABEL_95;
              }

LABEL_88:
              v34 = std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<char const*>(this, a2 + 1, a3, 0);
              if (v34 == v17)
              {
                v24 = a2;
              }

              else
              {
                v24 = v34;
              }

              goto LABEL_56;
            }

            v35 = this;
            v36 = 1;
            goto LABEL_93;
          }

          v29 = this;
          v30 = 1;
        }

        started = std::basic_regex<char,std::regex_traits<char>>::__start_matching_list(v29, v30);
        v32 = started->__mask_ | 0x400;
LABEL_94:
        started->__mask_ = v32;
        goto LABEL_95;
      }

      if (v16 == 31)
      {
        goto LABEL_101;
      }
    }

    if (v6 == 91)
    {
      v24 = std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<char const*>(this, a2, a3);
      goto LABEL_56;
    }

    if (v6 == 63)
    {
      goto LABEL_101;
    }

    goto LABEL_83;
  }

  if (v6 > 40)
  {
    if (v6 != 41)
    {
      if (v6 == 46)
      {
        operator new();
      }

      if ((v6 - 42) < 2)
      {
LABEL_101:
        std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)11>();
      }

      goto LABEL_83;
    }

    return a2;
  }

  if (v6 == 36)
  {
    return a2;
  }

  if (v6 == 40)
  {
    goto LABEL_43;
  }

LABEL_83:
  std::basic_regex<char,std::regex_traits<char>>::__push_char(this, v6);
  v24 = a2 + 1;
LABEL_96:
  v37 = this->__marked_count_ + 1;

  return std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_dupl_symbol<char const*>(this, v24, a3, end, marked_count + 1, v37);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<char const*>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 != a3 && *a2 == 91)
  {
    if (a2 + 1 == a3)
    {
      goto LABEL_242;
    }

    v5 = a2[1] == 94 ? a2 + 2 : a2 + 1;
    started = std::basic_regex<char,std::regex_traits<char>>::__start_matching_list(a1, a2[1] == 94);
    if (v5 == a3)
    {
      goto LABEL_242;
    }

    v7 = started;
    if ((*(a1 + 24) & 0x1F0) != 0 && *v5 == 93)
    {
      std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](started, 93);
      ++v5;
    }

    if (v5 != a3)
    {
      v8 = (v7 + 136);
      v9 = a3 - 4;
      while (1)
      {
        v10 = v5;
        if (v5 == a3)
        {
          goto LABEL_146;
        }

        v11 = *v5;
        v10 = v5;
        if (v11 == 93)
        {
          goto LABEL_146;
        }

        v12 = 0;
        __p[0] = 0;
        __p[1] = 0;
        v94 = 0;
        v13 = 0;
        v10 = v5;
        if (v5 + 1 != a3 && v11 == 91)
        {
          v14 = v5[1];
          switch(v14)
          {
            case '.':
              v10 = std::basic_regex<char,std::regex_traits<char>>::__parse_collating_symbol<char const*>(a1, v5 + 2, a3, __p);
              v13 = HIBYTE(v94);
              v12 = __p[1];
              break;
            case ':':
              if (a3 - (v5 + 2) < 2)
              {
                goto LABEL_241;
              }

              v19 = v9 - v5;
              v16 = v5 + 2;
              for (i = v5 + 2; ; v16 = i)
              {
                v21 = *i++;
                if (v21 == 58 && *i == 93)
                {
                  break;
                }

                if (!v19)
                {
                  goto LABEL_241;
                }

                --v19;
              }

              if (v16 == a3)
              {
LABEL_241:
                std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)5>();
              }

              v27 = *(a1 + 24);
              std::string::__init_with_size[abi:ne200100]<char *,char *>(&__dst, v5 + 2, v16, v16 - (v5 + 2));
              end_high = HIBYTE(__dst.__end_);
              if (SHIBYTE(__dst.__end_) >= 0)
              {
                p_dst = &__dst;
              }

              else
              {
                p_dst = __dst.__first_;
              }

              if (SHIBYTE(__dst.__end_) < 0)
              {
                end_high = __dst.__begin_;
              }

              (*(**(a1 + 8) + 48))(*(a1 + 8), p_dst, end_high + p_dst);
              if (SHIBYTE(__dst.__end_) >= 0)
              {
                first = &__dst;
              }

              else
              {
                first = __dst.__first_;
              }

              classname = std::__get_classname(first, v27 & 1);
              if (SHIBYTE(__dst.__end_) < 0)
              {
                operator delete(__dst.__first_);
              }

              if (!classname)
              {
                std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)2>();
              }

              v32 = 0;
              *(v7 + 160) |= classname;
              goto LABEL_142;
            case '=':
              if (a3 - (v5 + 2) < 2)
              {
                goto LABEL_241;
              }

              v15 = v9 - v5;
              v16 = v5 + 2;
              for (j = v5 + 2; ; v16 = j)
              {
                v18 = *j++;
                if (v18 == 61 && *j == 93)
                {
                  break;
                }

                if (!v15)
                {
                  goto LABEL_241;
                }

                --v15;
              }

              if (v16 == a3)
              {
                goto LABEL_241;
              }

              std::regex_traits<char>::__lookup_collatename<char const*>(__src, a1, v5 + 2, v16);
              v25 = SHIBYTE(v98);
              if ((SHIBYTE(v98) & 0x8000000000000000) != 0)
              {
                v25 = __src[1];
                if (!__src[1])
                {
LABEL_243:
                  std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)1>();
                }

                v26 = __src[0];
              }

              else
              {
                if (!HIBYTE(v98))
                {
                  goto LABEL_243;
                }

                v26 = __src;
              }

              std::string::__init_with_size[abi:ne200100]<char *,char *>(&__dst, v26, v26 + v25, v25);
              (*(**(a1 + 16) + 32))(__s);
              v34 = HIBYTE(v96);
              if (v96 < 0)
              {
                v34 = __s[1];
              }

              if (v34 != 1)
              {
                if (v34 == 12)
                {
                  v35 = __s;
                  if (v96 < 0)
                  {
                    v35 = __s[0];
                  }

                  *(v35 + 11) = *(v35 + 3);
                }

                else if (SHIBYTE(v96) < 0)
                {
                  *__s[0] = 0;
                  __s[1] = 0;
                }

                else
                {
                  LOBYTE(__s[0]) = 0;
                  HIBYTE(v96) = 0;
                }
              }

              if (SHIBYTE(__dst.__end_) < 0)
              {
                operator delete(__dst.__first_);
              }

              v41 = HIBYTE(v96);
              if (v96 < 0)
              {
                v41 = __s[1];
              }

              if (v41)
              {
                v43 = *(v7 + 144);
                v42 = *(v7 + 152);
                if (v43 >= v42)
                {
                  v47 = 0xAAAAAAAAAAAAAAABLL * ((v43 - *v8) >> 3);
                  v48 = v47 + 1;
                  if (v47 + 1 > 0xAAAAAAAAAAAAAAALL)
                  {
                    std::vector<ADAMAudioDataAnalysisType>::__throw_length_error[abi:ne200100]();
                  }

                  v49 = 0xAAAAAAAAAAAAAAABLL * ((v42 - *v8) >> 3);
                  if (2 * v49 > v48)
                  {
                    v48 = 2 * v49;
                  }

                  if (v49 >= 0x555555555555555)
                  {
                    v50 = 0xAAAAAAAAAAAAAAALL;
                  }

                  else
                  {
                    v50 = v48;
                  }

                  __dst.__end_cap_.__value_ = (v7 + 136);
                  if (v50)
                  {
                    std::allocator<std::string>::allocate_at_least[abi:ne200100](v50);
                  }

                  begin = (24 * v47);
                  __dst.__first_ = 0;
                  __dst.__begin_ = (24 * v47);
                  value = 0;
                  __dst.__end_ = (24 * v47);
                  __dst.__end_cap_.__value_ = 0;
                  if (v96 < 0)
                  {
                    std::string::__init_copy_ctor_external(begin, __s[0], __s[1]);
                    begin = __dst.__begin_;
                    end = __dst.__end_;
                    value = __dst.__end_cap_.__value_;
                  }

                  else
                  {
                    v55 = *__s;
                    *(24 * v47 + 0x10) = v96;
                    *&begin->__r_.__value_.__l.__data_ = v55;
                    end = (24 * v47);
                  }

                  v52 = end + 1;
                  v57 = *(v7 + 136);
                  v58 = *(v7 + 144) - v57;
                  v59 = begin - v58;
                  memcpy(begin - v58, v57, v58);
                  v60 = *(v7 + 136);
                  *(v7 + 136) = v59;
                  *(v7 + 144) = v52;
                  v61 = *(v7 + 152);
                  *(v7 + 152) = value;
                  __dst.__end_ = v60;
                  __dst.__end_cap_.__value_ = v61;
                  __dst.__first_ = v60;
                  __dst.__begin_ = v60;
                  std::__split_buffer<std::string>::~__split_buffer(&__dst);
                }

                else
                {
                  if (SHIBYTE(v96) < 0)
                  {
                    std::string::__init_copy_ctor_external(*(v7 + 144), __s[0], __s[1]);
                  }

                  else
                  {
                    v44 = *__s;
                    *(v43 + 16) = v96;
                    *v43 = v44;
                  }

                  v52 = (v43 + 24);
                  *(v7 + 144) = v43 + 24;
                }

                *(v7 + 144) = v52;
              }

              else
              {
                v45 = HIBYTE(v98);
                if (SHIBYTE(v98) < 0)
                {
                  v45 = __src[1];
                }

                if (v45 == 2)
                {
                  v51 = __src;
                  if (SHIBYTE(v98) < 0)
                  {
                    v51 = __src[0];
                  }

                  std::__bracket_expression<char,std::regex_traits<char>>::__add_digraph[abi:ne200100](v7, *v51, *(v51 + 1));
                }

                else
                {
                  if (v45 != 1)
                  {
                    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)1>();
                  }

                  v46 = __src;
                  if (SHIBYTE(v98) < 0)
                  {
                    v46 = __src[0];
                  }

                  std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](v7, *v46);
                }
              }

              if (SHIBYTE(v96) < 0)
              {
                operator delete(__s[0]);
              }

              if (SHIBYTE(v98) < 0)
              {
                operator delete(__src[0]);
              }

              v32 = 0;
LABEL_142:
              v22 = (v16 + 2);
              v39 = v5;
              goto LABEL_143;
            default:
              v12 = 0;
              v13 = 0;
              v10 = v5;
              break;
          }
        }

        v22 = (*(a1 + 24) & 0x1F0);
        if (v13 >= 0)
        {
          v12 = v13;
        }

        if (!v12)
        {
          if ((*(a1 + 24) & 0x1B0 | 0x40) == 0x40)
          {
            v23 = *v10;
            if (v23 == 92)
            {
              if ((*(a1 + 24) & 0x1F0) != 0)
              {
                v24 = std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<char const*>(a1, v10 + 1, a3, __p);
              }

              else
              {
                v24 = std::basic_regex<char,std::regex_traits<char>>::__parse_class_escape<char const*>(a1, v10 + 1, a3, __p, v7);
              }

              v10 = v24;
              goto LABEL_76;
            }
          }

          else
          {
            LOBYTE(v23) = *v10;
          }

          if (v13 < 0)
          {
            v33 = __p[0];
            __p[1] = 1;
          }

          else
          {
            HIBYTE(v94) = 1;
            v33 = __p;
          }

          *v33 = v23;
          *(v33 + 1) = 0;
          ++v10;
        }

LABEL_76:
        if (v10 != a3)
        {
          v36 = *v10;
          if (v36 != 93)
          {
            v38 = v10 + 1;
            if (v10 + 1 != a3 && v36 == 45 && *v38 != 93)
            {
              v91[0] = 0;
              v91[1] = 0;
              v92 = 0;
              v39 = v10 + 2;
              if (v10 + 2 != a3 && *v38 == 91 && *v39 == 46)
              {
                v40 = std::basic_regex<char,std::regex_traits<char>>::__parse_collating_symbol<char const*>(a1, v10 + 3, a3, v91);
                goto LABEL_151;
              }

              if ((v22 | 0x40) == 0x40)
              {
                LODWORD(v38) = *v38;
                if (v38 == 92)
                {
                  if (v22)
                  {
                    v40 = std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<char const*>(a1, v10 + 2, a3, v91);
                  }

                  else
                  {
                    v40 = std::basic_regex<char,std::regex_traits<char>>::__parse_class_escape<char const*>(a1, v10 + 2, a3, v91, v7);
                  }

LABEL_151:
                  v39 = v40;
LABEL_152:
                  v22 = v89;
                  *v89 = *__p;
                  v90 = v94;
                  __p[1] = 0;
                  v94 = 0;
                  *v87 = *v91;
                  v88 = v92;
                  v91[0] = 0;
                  v91[1] = 0;
                  v92 = 0;
                  __p[0] = 0;
                  if (*(v7 + 170) == 1)
                  {
                    if (*(v7 + 169) == 1)
                    {
                      for (k = 0; ; ++k)
                      {
                        if ((SHIBYTE(v90) & 0x8000000000000000) != 0)
                        {
                          if (k >= v89[1])
                          {
LABEL_198:
                            for (m = 0; ; ++m)
                            {
                              if ((SHIBYTE(v88) & 0x8000000000000000) != 0)
                              {
                                if (m >= v87[1])
                                {
                                  goto LABEL_207;
                                }

                                v79 = v87[0];
                              }

                              else
                              {
                                if (m >= SHIBYTE(v88))
                                {
                                  goto LABEL_207;
                                }

                                v79 = v87;
                              }

                              v80 = (*(**(v7 + 24) + 40))(*(v7 + 24), m[v79]);
                              v81 = v87;
                              if (v88 < 0)
                              {
                                v81 = v87[0];
                              }

                              m[v81] = v80;
                            }
                          }

                          v64 = v89[0];
                        }

                        else
                        {
                          if (k >= SHIBYTE(v90))
                          {
                            goto LABEL_198;
                          }

                          v64 = v89;
                        }

                        v65 = (*(**(v7 + 24) + 40))(*(v7 + 24), k[v64]);
                        if (SHIBYTE(v90) >= 0)
                        {
                          v66 = v89;
                        }

                        else
                        {
                          v66 = v89[0];
                        }

                        k[v66] = v65;
                      }
                    }

                    v76 = 0;
                    if ((HIBYTE(v90) & 0x80) != 0)
                    {
                      goto LABEL_189;
                    }

                    while (v76 < HIBYTE(v90))
                    {
                      while (1)
                      {
                        ++v76;
                        if ((HIBYTE(v90) & 0x80) == 0)
                        {
                          break;
                        }

LABEL_189:
                        if (v76 >= v89[1])
                        {
                          goto LABEL_192;
                        }
                      }
                    }

LABEL_192:
                    v77 = 0;
                    if (v88 < 0)
                    {
                      goto LABEL_195;
                    }

                    while (v77 < HIBYTE(v88))
                    {
                      while (1)
                      {
                        ++v77;
                        if ((v88 & 0x8000000000000000) == 0)
                        {
                          break;
                        }

LABEL_195:
                        if (v77 >= v87[1])
                        {
                          goto LABEL_207;
                        }
                      }
                    }

LABEL_207:
                    v82 = HIBYTE(v90);
                    if (SHIBYTE(v90) >= 0)
                    {
                      v83 = v89;
                    }

                    else
                    {
                      v83 = v89[0];
                    }

                    if (SHIBYTE(v90) < 0)
                    {
                      v82 = v89[1];
                    }

                    std::regex_traits<char>::transform<std::__wrap_iter<char *>>(__src, v7 + 16, v83, &v82[v83]);
                    v84 = HIBYTE(v88);
                    if (v88 >= 0)
                    {
                      v85 = v87;
                    }

                    else
                    {
                      v85 = v87[0];
                    }

                    if (v88 < 0)
                    {
                      v84 = v87[1];
                    }

                    std::regex_traits<char>::transform<std::__wrap_iter<char *>>(__s, v7 + 16, v85, &v84[v85]);
                    *&__dst.__first_ = *__src;
                    __dst.__end_ = v98;
                    __src[1] = 0;
                    v98 = 0;
                    __dst.__end_cap_ = *__s;
                    v100 = v96;
                    __s[0] = 0;
                    __s[1] = 0;
                    v96 = 0;
                    __src[0] = 0;
                    std::vector<std::pair<std::string,std::string>>::push_back[abi:ne200100]((v7 + 88), &__dst);
                    if (SHIBYTE(v100) < 0)
                    {
                      operator delete(__dst.__end_cap_.__value_);
                    }

                    if (SHIBYTE(__dst.__end_) < 0)
                    {
                      operator delete(__dst.__first_);
                    }

                    if (SHIBYTE(v96) < 0)
                    {
                      operator delete(__s[0]);
                    }

                    if (SHIBYTE(v98) < 0)
                    {
                      v75 = __src[0];
LABEL_225:
                      operator delete(v75);
                    }
                  }

                  else
                  {
                    v67 = HIBYTE(v90);
                    if (SHIBYTE(v90) < 0)
                    {
                      v67 = v89[1];
                    }

                    if (v67 != 1)
                    {
                      goto LABEL_245;
                    }

                    v68 = HIBYTE(v88);
                    if (v88 < 0)
                    {
                      v68 = v87[1];
                    }

                    if (v68 != 1)
                    {
LABEL_245:
                      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)9>();
                    }

                    if (*(v7 + 169) == 1)
                    {
                      if (SHIBYTE(v90) >= 0)
                      {
                        v69 = v89;
                      }

                      else
                      {
                        v69 = v89[0];
                      }

                      v70 = (*(**(v7 + 24) + 40))(*(v7 + 24), *v69);
                      if (SHIBYTE(v90) >= 0)
                      {
                        v71 = v89;
                      }

                      else
                      {
                        v71 = v89[0];
                      }

                      *v71 = v70;
                      v72 = v87;
                      if (v88 < 0)
                      {
                        v72 = v87[0];
                      }

                      v73 = (*(**(v7 + 24) + 40))(*(v7 + 24), *v72);
                      v74 = v87;
                      if (v88 < 0)
                      {
                        v74 = v87[0];
                      }

                      *v74 = v73;
                    }

                    *&__dst.__first_ = *v89;
                    __dst.__end_ = v90;
                    v89[0] = 0;
                    v89[1] = 0;
                    v90 = 0;
                    __dst.__end_cap_ = *v87;
                    v100 = v88;
                    v87[0] = 0;
                    v87[1] = 0;
                    v88 = 0;
                    std::vector<std::pair<std::string,std::string>>::push_back[abi:ne200100]((v7 + 88), &__dst);
                    if (SHIBYTE(v100) < 0)
                    {
                      operator delete(__dst.__end_cap_.__value_);
                    }

                    if (SHIBYTE(__dst.__end_) < 0)
                    {
                      v75 = __dst.__first_;
                      goto LABEL_225;
                    }
                  }

                  if (SHIBYTE(v88) < 0)
                  {
                    operator delete(v87[0]);
                  }

                  if (SHIBYTE(v90) < 0)
                  {
                    operator delete(v89[0]);
                  }

                  if (SHIBYTE(v92) < 0)
                  {
                    operator delete(v91[0]);
                  }

                  v32 = 1;
LABEL_143:
                  if (SHIBYTE(v94) < 0)
                  {
                    operator delete(__p[0]);
                  }

                  v10 = v39;
                  if ((v32 & 1) == 0)
                  {
                    goto LABEL_147;
                  }

                  goto LABEL_146;
                }
              }

              else
              {
                LOBYTE(v38) = *v38;
              }

              HIBYTE(v92) = 1;
              LOWORD(v91[0]) = v38;
              goto LABEL_152;
            }
          }
        }

        if (SHIBYTE(v94) < 0)
        {
          if (__p[1])
          {
            if (__p[1] == 1)
            {
              v37 = __p[0];
LABEL_85:
              std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](v7, *v37);
LABEL_95:
              v32 = 1;
              v39 = v10;
              goto LABEL_143;
            }

            v37 = __p[0];
LABEL_94:
            std::__bracket_expression<char,std::regex_traits<char>>::__add_digraph[abi:ne200100](v7, *v37, v37[1]);
            goto LABEL_95;
          }

          operator delete(__p[0]);
        }

        else if (HIBYTE(v94))
        {
          v37 = __p;
          if (HIBYTE(v94) == 1)
          {
            goto LABEL_85;
          }

          goto LABEL_94;
        }

LABEL_146:
        v22 = v10;
LABEL_147:
        v62 = v22 == v5;
        v5 = v22;
        if (v62)
        {
          goto LABEL_234;
        }
      }
    }

    v22 = v5;
LABEL_234:
    if (v22 == a3)
    {
      goto LABEL_242;
    }

    if (*v22 == 45)
    {
      std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](v7, 45);
      v22 = (v22 + 1);
    }

    if (v22 == a3 || *v22 != 93)
    {
LABEL_242:
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)5>();
    }

    return v22 + 1;
  }

  return a2;
}

void sub_296C3AA3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  *(v46 + 144) = v47;
  if (a40 < 0)
  {
    operator delete(__p);
  }

  if (a46 < 0)
  {
    operator delete(a41);
  }

  if (a34 < 0)
  {
    operator delete(a29);
  }

  _Unwind_Resume(exception_object);
}

void sub_296C3ACEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale *a10)
{
  std::locale::~locale(&a9);
  a10 = v10 + 17;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a10);
  locale = v10[14].__locale_;
  if (locale)
  {
    v10[15].__locale_ = locale;
    operator delete(locale);
  }

  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&a10);
  v16 = v10[8].__locale_;
  if (v16)
  {
    v10[9].__locale_ = v16;
    operator delete(v16);
  }

  v17 = *v13;
  if (*v13)
  {
    v10[6].__locale_ = v17;
    operator delete(v17);
  }

  std::locale::~locale(v10 + 2);
  v10->__locale_ = v12;
  v18 = v10[1].__locale_;
  if (v18)
  {
    (*(*v18 + 8))(v18);
  }

  MEMORY[0x29C260F00](v10, v11);
  _Unwind_Resume(a1);
}

void std::vector<std::pair<std::string,std::string>>::push_back[abi:ne200100](void **a1, __int128 *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (v3 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 4);
    v9 = v8 + 1;
    if (v8 + 1 > 0x555555555555555)
    {
      std::vector<ADAMAudioDataAnalysisType>::__throw_length_error[abi:ne200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 4);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x2AAAAAAAAAAAAAALL)
    {
      v11 = 0x555555555555555;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (v11 <= 0x555555555555555)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v12 = 48 * v8;
    *v12 = *a2;
    *(v12 + 16) = *(a2 + 2);
    *a2 = 0uLL;
    v13 = *(a2 + 24);
    a2[1] = 0uLL;
    *(v12 + 40) = *(a2 + 5);
    a2[2] = 0uLL;
    v7 = (48 * v8 + 48);
    v14 = *a1;
    v15 = a1[1] - *a1;
    *(v12 + 24) = v13;
    v16 = (48 * v8 - v15);
    memcpy((v12 - v15), v14, v15);
    *a1 = v16;
    a1[1] = v7;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    v5 = *a2;
    *(v3 + 2) = *(a2 + 2);
    *v3 = v5;
    *(a2 + 8) = 0uLL;
    *a2 = 0;
    v6 = *(a2 + 24);
    *(v3 + 5) = *(a2 + 5);
    *(v3 + 24) = v6;
    a2[2] = 0uLL;
    *(a2 + 3) = 0;
    v7 = v3 + 48;
  }

  a1[1] = v7;
}

void std::vector<char>::push_back[abi:ne200100](uint64_t a1, char *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = &v4[-*a1];
    v8 = (v7 + 1);
    if ((v7 + 1) < 0)
    {
      std::vector<ADAMAudioDataAnalysisType>::__throw_length_error[abi:ne200100]();
    }

    v9 = v3 - v6;
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      operator new();
    }

    v11 = &v4[-*a1];
    *v7 = *a2;
    v5 = v7 + 1;
    memcpy(0, v6, v11);
    *a1 = 0;
    *(a1 + 8) = v7 + 1;
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

void std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](uint64_t a1, char a2)
{
  v7 = a2;
  if (*(a1 + 169) == 1)
  {
    v6 = (*(**(a1 + 24) + 40))(*(a1 + 24));
    v3 = a1 + 40;
    v4 = &v6;
LABEL_5:
    std::vector<char>::push_back[abi:ne200100](v3, v4);
    return;
  }

  if (*(a1 + 170) == 1)
  {
    v5 = a2;
    v3 = a1 + 40;
    v4 = &v5;
    goto LABEL_5;
  }

  std::vector<char>::push_back[abi:ne200100](a1 + 40, &v7);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_dupl_symbol<char const*>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, std::__owns_one_state<char> *__s, size_t a5, size_t a6)
{
  if (a2 == a3)
  {
    return a2;
  }

  v6 = a6;
  v7 = a5;
  v10 = a1;
  v11 = *(a1 + 24) & 0x1F0;
  v12 = *a2;
  if (v12 > 0x3E)
  {
    if (v12 == 63)
    {
      v13 = a2 + 1;
      if (v11)
      {
        v20 = 1;
      }

      else
      {
        v20 = v13 == a3;
      }

      if (!v20 && *v13 == 63)
      {
        v13 = a2 + 2;
        a5 = a5;
        a6 = a6;
        v14 = 0;
        v18 = 1;
        goto LABEL_33;
      }

      a5 = a5;
      a6 = a6;
      v14 = 0;
      v18 = 1;
      goto LABEL_45;
    }

    if (v12 != 123)
    {
      return a2;
    }

    v15 = a2 + 1;
    v16 = std::basic_regex<char,std::regex_traits<char>>::__parse_DUP_COUNT<char const*>(a2 + 1, a3, &__max);
    if (v16 != v15)
    {
      if (v16 != a3)
      {
        v17 = *v16;
        if (v17 != 44)
        {
          if (v17 == 125)
          {
            v13 = v16 + 1;
            if (!v11 && v13 != a3 && *v13 == 63)
            {
              v13 = v16 + 2;
              v14 = __max;
              a5 = v7;
              a6 = v6;
              a1 = v10;
              v18 = __max;
LABEL_33:
              v21 = __s;
              v22 = 0;
LABEL_46:
              std::basic_regex<char,std::regex_traits<char>>::__push_loop(a1, v14, v18, v21, a5, a6, v22);
              return v13;
            }

            v14 = __max;
            a5 = v7;
            a6 = v6;
            a1 = v10;
            v18 = __max;
LABEL_45:
            v21 = __s;
            v22 = 1;
            goto LABEL_46;
          }

          goto LABEL_58;
        }

        v23 = v16 + 1;
        if (v16 + 1 == a3)
        {
          goto LABEL_58;
        }

        if (*v23 == 125)
        {
          v13 = v16 + 2;
          if (!v11 && v13 != a3 && *v13 == 63)
          {
            v13 = v16 + 3;
            v14 = __max;
            a5 = v7;
            a6 = v6;
            a1 = v10;
            goto LABEL_26;
          }

          v14 = __max;
          a5 = v7;
          a6 = v6;
          a1 = v10;
LABEL_36:
          v18 = -1;
          goto LABEL_45;
        }

        v27 = -1;
        v25 = std::basic_regex<char,std::regex_traits<char>>::__parse_DUP_COUNT<char const*>(v16 + 1, a3, &v27);
        if (v25 != v23 && v25 != a3 && *v25 == 125)
        {
          v18 = v27;
          v14 = __max;
          if (v27 >= __max)
          {
            v13 = v25 + 1;
            v22 = 1;
            if (!v11 && v13 != a3)
            {
              v26 = v25[1];
              v22 = v26 != 63;
              if (v26 == 63)
              {
                v13 = v25 + 2;
              }
            }

            a5 = v7;
            a6 = v6;
            a1 = v10;
            v21 = __s;
            goto LABEL_46;
          }

          goto LABEL_58;
        }
      }

      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)7>();
    }

LABEL_58:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)8>();
  }

  if (v12 == 42)
  {
    v13 = a2 + 1;
    if (v11)
    {
      v19 = 1;
    }

    else
    {
      v19 = v13 == a3;
    }

    if (!v19 && *v13 == 63)
    {
      v13 = a2 + 2;
      a5 = a5;
      a6 = a6;
      v14 = 0;
      goto LABEL_26;
    }

    a5 = a5;
    a6 = a6;
    v14 = 0;
    goto LABEL_36;
  }

  if (v12 == 43)
  {
    v13 = a2 + 1;
    if (!v11 && v13 != a3 && *v13 == 63)
    {
      v13 = a2 + 2;
      a5 = a5;
      a6 = a6;
      v14 = 1;
LABEL_26:
      v18 = -1;
      goto LABEL_33;
    }

    a5 = a5;
    a6 = a6;
    v14 = 1;
    goto LABEL_36;
  }

  return a2;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_DUP_COUNT<char const*>(unsigned __int8 *result, unsigned __int8 *a2, int *a3)
{
  if (result != a2)
  {
    v3 = *result;
    if ((v3 & 0xF8) == 0x30 || (v3 & 0xFE) == 0x38)
    {
      v4 = v3 - 48;
      *a3 = v4;
      if (++result != a2)
      {
        do
        {
          v5 = *result;
          if ((v5 & 0xF8) != 0x30 && (v5 & 0xFE) != 0x38)
          {
            break;
          }

          if (v4 >= 214748364)
          {
            std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)8>();
          }

          v4 = v5 + 10 * v4 - 48;
          *a3 = v4;
          ++result;
        }

        while (result != a2);
      }
    }
  }

  return result;
}

uint64_t std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(uint64_t a1, std::sub_match<const char *> *a2, std::sub_match<const char *> *a3, std::vector<std::csub_match> *this, unsigned int a5)
{
  if ((a5 & 0x80) != 0)
  {
    v9 = a5 & 0xFFA;
  }

  else
  {
    v9 = a5;
  }

  v10 = *(a1 + 28);
  this[1].__begin_ = a3;
  v11 = &this[1];
  this[1].__end_ = a3;
  LOBYTE(this[1].__end_cap_.__value_) = 0;
  std::vector<std::sub_match<char const*>>::assign(this, (v10 + 1), &this[1]);
  this[2].__begin_ = a2;
  this[2].__end_ = a2;
  LOBYTE(this[2].__end_cap_.__value_) = 0;
  *&this[3].__begin_ = v11->std::pair<const char *, const char *>;
  LOBYTE(this[3].__end_cap_.__value_) = this[1].__end_cap_.__value_;
  if ((v9 & 0x800) == 0)
  {
    this[4].__end_ = a2;
  }

  LOBYTE(this[4].__begin_) = 1;
  if (!std::basic_regex<char,std::regex_traits<char>>::__match_at_start<std::allocator<std::sub_match<char const*>>>(a1, a2, a3, this, v9, (v9 & 0x800) == 0))
  {
    if (a2 == a3 || (v9 & 0x40) != 0)
    {
      goto LABEL_18;
    }

    v18 = &a2->first + 1;
    if (v18 != a3)
    {
      do
      {
        std::vector<std::sub_match<char const*>>::assign(this, 0xAAAAAAAAAAAAAAABLL * ((this->__end_ - this->__begin_) >> 3), v11);
        v19 = std::basic_regex<char,std::regex_traits<char>>::__match_at_start<std::allocator<std::sub_match<char const*>>>(a1, v18, a3, this, v9 | 0x80, 0);
        begin = this->__begin_;
        end = this->__end_;
        if (v19)
        {
          goto LABEL_8;
        }

        std::vector<std::sub_match<char const*>>::assign(this, 0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3), v11);
      }

      while (++v18 != a3);
    }

    std::vector<std::sub_match<char const*>>::assign(this, 0xAAAAAAAAAAAAAAABLL * ((this->__end_ - this->__begin_) >> 3), v11);
    if (!std::basic_regex<char,std::regex_traits<char>>::__match_at_start<std::allocator<std::sub_match<char const*>>>(a1, v18, a3, this, v9 | 0x80, 0))
    {
LABEL_18:
      result = 0;
      this->__end_ = this->__begin_;
      return result;
    }
  }

  begin = this->__begin_;
  end = this->__end_;
LABEL_8:
  if (end == begin)
  {
    v14 = v11;
  }

  else
  {
    v14 = begin;
  }

  first = v14->first;
  this[2].__end_ = v14->first;
  LOBYTE(this[2].__end_cap_.__value_) = this[2].__begin_ != first;
  second = v14->second;
  this[3].__begin_ = second;
  LOBYTE(this[3].__end_cap_.__value_) = second != this[3].__end_;
  return 1;
}

void std::vector<std::sub_match<char const*>>::assign(std::vector<std::csub_match> *this, std::vector<std::csub_match>::size_type __n, std::vector<std::csub_match>::const_reference __u)
{
  value = this->__end_cap_.__value_;
  begin = this->__begin_;
  if (0xAAAAAAAAAAAAAAABLL * ((value - begin) >> 3) < __n)
  {
    if (begin)
    {
      this->__end_ = begin;
      operator delete(begin);
      value = 0;
      this->__begin_ = 0;
      this->__end_ = 0;
      this->__end_cap_.__value_ = 0;
    }

    if (__n <= 0xAAAAAAAAAAAAAAALL)
    {
      v7 = 0xAAAAAAAAAAAAAAABLL * (value >> 3);
      v8 = 2 * v7;
      if (2 * v7 <= __n)
      {
        v8 = __n;
      }

      if (v7 >= 0x555555555555555)
      {
        v9 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v9 = v8;
      }

      std::vector<std::sub_match<char const*>>::__vallocate[abi:ne200100](this, v9);
    }

    std::vector<ADAMAudioDataAnalysisType>::__throw_length_error[abi:ne200100]();
  }

  end = this->__end_;
  v11 = 0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3);
  if (v11 >= __n)
  {
    v12 = __n;
  }

  else
  {
    v12 = 0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3);
  }

  if (v12)
  {
    v13 = __u->std::pair<const char *, const char *>;
    matched = __u->matched;
    v15 = begin;
    do
    {
      v15->std::pair<const char *, const char *> = v13;
      v15->matched = matched;
      ++v15;
      --v12;
    }

    while (v12);
  }

  if (__n <= v11)
  {
    this->__end_ = &begin[__n];
  }

  else
  {
    v16 = &end[__n - v11];
    v17 = 24 * __n - 8 * ((end - begin) >> 3);
    do
    {
      v18 = __u->std::pair<const char *, const char *>;
      *&end->matched = *&__u->matched;
      end->std::pair<const char *, const char *> = v18;
      ++end;
      v17 -= 24;
    }

    while (v17);
    this->__end_ = v16;
  }
}

void std::allocator<std::sub_match<char const*>>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<std::sub_match<char const*>>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::allocator<std::sub_match<char const*>>::allocate_at_least[abi:ne200100](a2);
  }

  std::vector<ADAMAudioDataAnalysisType>::__throw_length_error[abi:ne200100]();
}

uint64_t std::basic_regex<char,std::regex_traits<char>>::__match_at_start<std::allocator<std::sub_match<char const*>>>(uint64_t a1, const char *a2, const char *a3, uint64_t *a4, int a5, char a6)
{
  if ((*(a1 + 24) & 0x1F0) == 0)
  {

    return std::basic_regex<char,std::regex_traits<char>>::__match_at_start_ecma<std::allocator<std::sub_match<char const*>>>(a1, a2, a3, a4, a5, a6);
  }

  if (!*(a1 + 28))
  {
    memset(v123, 0, 48);
    v61 = *(a1 + 40);
    if (!v61)
    {
LABEL_186:
      std::deque<std::__state<char>>::~deque[abi:ne200100](v123);
      return v61;
    }

    *v127 = 0;
    memset(&v127[8], 0, 32);
    v128 = 0uLL;
    memset(v129, 0, 37);
    std::deque<std::__state<char>>::push_back(v123, v127);
    if (v129[0])
    {
      operator delete(v129[0]);
    }

    if (*&v127[32])
    {
      operator delete(*&v127[32]);
    }

    v118 = a4;
    v62 = *&v123[8];
    v63 = *&v123[40] + *&v123[32] - 1;
    v64 = v63 / 0x2A;
    v65 = *(*&v123[8] + 8 * (v63 / 0x2A));
    v66 = 3 * (v63 % 0x2A);
    v67 = v65 + 32 * v66;
    *v67 = 0;
    *(v67 + 8) = a2;
    *(*(v62 + 8 * v64) + 32 * v66 + 16) = a2;
    *(*(v62 + 8 * v64) + 32 * v66 + 24) = a3;
    std::vector<std::pair<unsigned long,char const*>>::resize((*(v62 + 8 * v64) + 32 * v66 + 56), *(a1 + 32));
    v122 = 0;
    v68 = 0;
    v120 = 0;
    v69 = (a3 - a2);
    v70 = *&v123[40];
    v71 = *&v123[8];
    v72 = *&v123[40] + *&v123[32] - 1;
    v73 = v72 / 0x2A;
    v74 = 3 * (v72 % 0x2A);
    *(*(*&v123[8] + 8 * v73) + 32 * v74 + 80) = v61;
    v75 = *(v71 + 8 * v73) + 32 * v74;
    v76 = a5;
    *(v75 + 88) = a5;
    *(v75 + 92) = a6;
    v77 = 0xC30C30C30C30C30DLL;
    while (1)
    {
      if ((++v68 & 0xFFF) == 0 && (v68 >> 12) >= v69)
      {
        std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)12>();
      }

      v79 = v70 + *&v123[32] - 1;
      v80 = (((v79 >> 1) * v77) >> 64) >> 4;
      v81 = *(*&v123[8] + 8 * v80) - 4032 * v80 + 96 * v79;
      v83 = (v81 + 80);
      v82 = *(v81 + 80);
      if (v82)
      {
        (*(*v82 + 16))(v82, v81);
      }

      v84 = *v81;
      if (*v81 <= -995)
      {
        switch(v84)
        {
          case -1000:
            v89 = *(v81 + 16);
            v91 = (v76 & 0x1000) == 0 || v89 == a3;
            v92 = v89 != a2 || (v76 & 0x20) == 0;
            if (!v92 || !v91)
            {
              goto LABEL_181;
            }

            v93 = &v89[-*(v81 + 8)];
            v94 = v120;
            if (v120 <= v93)
            {
              v94 = v93;
            }

            if (v122)
            {
              v93 = v94;
            }

            if (v93 == v69)
            {
              v95 = *&v123[8];
              v96 = *&v123[16];
              if (*&v123[16] == *&v123[8])
              {
                v96 = *&v123[8];
              }

              else
              {
                v97 = (((*&v123[32] >> 1) * v77) >> 64) >> 4;
                v98 = (*&v123[8] + 8 * v97);
                v99 = (*v98 - 4032 * v97 + 96 * *&v123[32]);
                v100 = v77;
                v101 = ((((*&v123[40] + *&v123[32]) >> 1) * v77) >> 64) >> 4;
                v102 = *(*&v123[8] + 8 * v101) - 4032 * v101 + 96 * (*&v123[40] + *&v123[32]);
                if (v99 != v102)
                {
                  do
                  {
                    std::__destroy_at[abi:ne200100]<std::__state<char>,0>(v99);
                    v99 += 12;
                    if ((v99 - *v98) == 4032)
                    {
                      v103 = v98[1];
                      ++v98;
                      v99 = v103;
                    }
                  }

                  while (v99 != v102);
                  v95 = *&v123[8];
                  v96 = *&v123[16];
                }

                v76 = a5;
                v77 = v100;
              }

              *&v123[40] = 0;
              v106 = (v96 - v95) >> 3;
              if (v106 >= 3)
              {
                do
                {
                  operator delete(*v95);
                  v95 = (*&v123[8] + 8);
                  *&v123[8] = v95;
                  v106 = (*&v123[16] - v95) >> 3;
                }

                while (v106 > 2);
              }

              if (v106 == 1)
              {
                v107 = 21;
LABEL_172:
                *&v123[32] = v107;
              }

              else if (v106 == 2)
              {
                v107 = 42;
                goto LABEL_172;
              }

              v122 = 1;
              v120 = (a3 - a2);
              break;
            }

            v120 = v93;
            std::deque<std::__state<char>>::pop_back(v123);
            v122 = 1;
            break;
          case -999:
            break;
          case -995:
            v85 = *&v123[32];
            v86 = *&v123[8];
            v87 = *&v123[16];
            if (!*&v123[32])
            {
              v88 = 42 * ((*&v123[16] - *&v123[8]) >> 3) - 1;
              if (*&v123[16] == *&v123[8])
              {
                v88 = 0;
              }

              if ((v88 - *&v123[40]) < 0x2A)
              {
                if (*&v123[16] - *&v123[8] < *&v123[24] - *v123)
                {
                  if (*&v123[8] != *v123)
                  {
                    operator new();
                  }

                  operator new();
                }

                if (*&v123[24] == *v123)
                {
                  v108 = 1;
                }

                else
                {
                  v108 = (*&v123[24] - *v123) >> 2;
                }

                *&v127[32] = v123;
                std::allocator<std::__state<char> *>::allocate_at_least[abi:ne200100](v108);
              }

              *&v123[32] = 42;
              *v127 = *(*&v123[16] - 8);
              *&v123[16] -= 8;
              std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *>>::emplace_front<std::__state<char> *>(v123, v127);
              v85 = *&v123[32];
              v86 = *&v123[8];
              v87 = *&v123[16];
            }

            v109 = (((v85 >> 1) * v77) >> 64) >> 4;
            v110 = (v86 + 8 * v109);
            v111 = *v110 - 4032 * v109 + 96 * v85;
            if (v87 == v86)
            {
              v112 = 0;
            }

            else
            {
              v112 = v111;
            }

            if (v112 == *v110)
            {
              v112 = *(v110 - 1) + 4032;
            }

            v113 = *(v81 + 16);
            *(v112 - 96) = *v81;
            *(v112 - 80) = v113;
            *(v112 - 56) = 0;
            *(v112 - 48) = 0;
            *(v112 - 64) = 0;
            *(v112 - 64) = *(v81 + 32);
            *(v112 - 48) = *(v81 + 48);
            *(v81 + 32) = 0;
            *(v81 + 40) = 0;
            *(v81 + 48) = 0;
            *(v112 - 40) = 0;
            *(v112 - 32) = 0;
            *(v112 - 24) = 0;
            *(v112 - 40) = *(v81 + 56);
            *(v112 - 24) = *(v81 + 72);
            *(v81 + 56) = 0;
            *(v81 + 64) = 0;
            *(v81 + 72) = 0;
            v114 = *v83;
            *(v112 - 11) = *(v81 + 85);
            *(v112 - 16) = v114;
            *&v123[32] = vaddq_s64(*&v123[32], xmmword_296C79950);
            goto LABEL_181;
          default:
            goto LABEL_189;
        }
      }

      else
      {
        if (v84 > -993)
        {
          if (v84 == -992)
          {
            v104 = *(v81 + 16);
            *v127 = *v81;
            *&v127[16] = v104;
            v128 = 0uLL;
            *&v127[32] = 0;
            std::vector<std::sub_match<char const*>>::__init_with_size[abi:ne200100]<std::sub_match<char const*>*,std::sub_match<char const*>*>(&v127[32], *(v81 + 32), *(v81 + 40), 0xAAAAAAAAAAAAAAABLL * ((*(v81 + 40) - *(v81 + 32)) >> 3));
            memset(v129, 0, 24);
            std::vector<std::pair<unsigned long,char const*>>::__init_with_size[abi:ne200100]<std::pair<unsigned long,char const*>*,std::pair<unsigned long,char const*>*>(v129, *(v81 + 56), *(v81 + 64), (*(v81 + 64) - *(v81 + 56)) >> 4);
            v105 = *v83;
            *(&v129[3] + 5) = *(v81 + 85);
            v129[3] = v105;
            (*(**(v81 + 80) + 24))(*(v81 + 80), 1, v81);
            (*(*v129[3] + 24))(v129[3], 0, v127);
            std::deque<std::__state<char>>::push_back(v123, v127);
            if (v129[0])
            {
              v129[1] = v129[0];
              operator delete(v129[0]);
            }

            if (*&v127[32])
            {
              *&v128 = *&v127[32];
              operator delete(*&v127[32]);
            }
          }

          else if (v84 != -991)
          {
LABEL_189:
            std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)16>();
          }

          goto LABEL_182;
        }

        if (v84 != -994)
        {
          if (v84 != -993)
          {
            goto LABEL_189;
          }

LABEL_181:
          std::deque<std::__state<char>>::pop_back(v123);
        }
      }

LABEL_182:
      v70 = *&v123[40];
      if (!*&v123[40])
      {
        if (v122)
        {
          v115 = *v118;
          *v115 = a2;
          *(v115 + 8) = &v120[a2];
          v61 = 1;
          *(v115 + 16) = 1;
        }

        else
        {
          v61 = 0;
        }

        goto LABEL_186;
      }
    }
  }

  v130 = 0;
  v131 = 0;
  v132 = 0;
  *v127 = 0;
  memset(&v127[8], 0, 32);
  v128 = 0u;
  memset(v129, 0, 37);
  v12 = *(a1 + 40);
  if (!v12)
  {
LABEL_94:
    v61 = 0;
    goto LABEL_95;
  }

  __x.first = a3;
  __x.second = a3;
  __x.matched = 0;
  *v123 = 0;
  memset(&v123[8], 0, 48);
  *__p = 0uLL;
  memset(v125, 0, 21);
  std::vector<std::__state<char>>::push_back[abi:ne200100](&v130, v123);
  if (__p[0])
  {
    operator delete(__p[0]);
  }

  if (*&v123[32])
  {
    operator delete(*&v123[32]);
  }

  v117 = a4;
  v13 = v131;
  *(v131 - 24) = 0;
  *(v13 - 11) = a2;
  *(v13 - 10) = a2;
  *(v13 - 9) = a3;
  std::vector<std::sub_match<char const*>>::resize((v13 - 8), *(a1 + 28), &__x);
  std::vector<std::pair<unsigned long,char const*>>::resize((v131 - 5), *(a1 + 32));
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v119 = a3;
  v121 = a2;
  v17 = (a3 - a2);
  v18 = v131;
  *(v131 - 2) = v12;
  *(v18 - 2) = a5;
  *(v18 - 4) = a6;
  do
  {
    v19 = (++v16 & 0xFFF) != 0 || (v16 >> 12) < v17;
    if (!v19)
    {
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)12>();
    }

    v21 = v18 - 2;
    v20 = *(v18 - 2);
    v22 = v18 - 12;
    if (v20)
    {
      (*(*v20 + 16))(v20, v18 - 12);
    }

    v23 = *v22;
    if (*v22 > -994)
    {
      switch(v23)
      {
        case -993:
          goto LABEL_40;
        case -992:
          v36 = *(v18 - 5);
          *v123 = *v22;
          *&v123[16] = v36;
          memset(&v123[32], 0, 24);
          std::vector<std::sub_match<char const*>>::__init_with_size[abi:ne200100]<std::sub_match<char const*>*,std::sub_match<char const*>*>(&v123[32], *(v18 - 8), *(v18 - 7), 0xAAAAAAAAAAAAAAABLL * ((*(v18 - 7) - *(v18 - 8)) >> 3));
          __p[0] = 0;
          __p[1] = 0;
          v125[0] = 0;
          std::vector<std::pair<unsigned long,char const*>>::__init_with_size[abi:ne200100]<std::pair<unsigned long,char const*>*,std::pair<unsigned long,char const*>*>(__p, *(v18 - 5), *(v18 - 4), (*(v18 - 4) - *(v18 - 5)) >> 4);
          v37 = *v21;
          *(&v125[1] + 5) = *(v18 - 11);
          v125[1] = v37;
          (*(**v21 + 24))(*v21, 1, v18 - 12);
          (*(*v125[1] + 24))(v125[1], 0, v123);
          std::vector<std::__state<char>>::push_back[abi:ne200100](&v130, v123);
          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }

          if (*&v123[32])
          {
            *&v123[40] = *&v123[32];
            operator delete(*&v123[32]);
          }

          break;
        case -991:
          break;
        default:
LABEL_188:
          std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)16>();
      }
    }

    else
    {
      if ((v23 + 995) < 2)
      {
        goto LABEL_45;
      }

      if (v23 != -1000)
      {
        goto LABEL_188;
      }

      v24 = *(v18 - 10);
      if ((a5 & 0x20) != 0 && v24 == v121 || (a5 & 0x1000) != 0 && v24 != v119)
      {
LABEL_40:
        v35 = v131 - 12;
        std::__destroy_at[abi:ne200100]<std::__state<char>,0>(v131 - 12);
        v131 = v35;
        goto LABEL_45;
      }

      v25 = &v24[-*(v18 - 11)];
      if ((v15 & (v14 >= v25)) == 0)
      {
        v26 = *(v18 - 5);
        *v127 = *v22;
        *&v127[16] = v26;
        if (v127 != v22)
        {
          v27 = *(v18 - 8);
          v28 = *(v18 - 7);
          v29 = v28 - v27;
          v30 = *(&v128 + 1);
          v31 = *&v127[32];
          if (*(&v128 + 1) - *&v127[32] < (v28 - v27))
          {
            if (*&v127[32])
            {
              *&v128 = *&v127[32];
              operator delete(*&v127[32]);
              v30 = 0;
              *&v127[32] = 0;
              v128 = 0uLL;
            }

            v32 = 0xAAAAAAAAAAAAAAABLL * (v29 >> 3);
            if (v32 <= 0xAAAAAAAAAAAAAAALL)
            {
              v33 = 0xAAAAAAAAAAAAAAABLL * (v30 >> 3);
              if (2 * v33 > v32)
              {
                v32 = 2 * v33;
              }

              if (v33 >= 0x555555555555555)
              {
                v34 = 0xAAAAAAAAAAAAAAALL;
              }

              else
              {
                v34 = v32;
              }

              if (v34 <= 0xAAAAAAAAAAAAAAALL)
              {
                std::allocator<std::sub_match<char const*>>::allocate_at_least[abi:ne200100](v34);
              }
            }

            std::vector<ADAMAudioDataAnalysisType>::__throw_length_error[abi:ne200100]();
          }

          v38 = v128;
          if (v128 - *&v127[32] >= v29)
          {
            while (v27 != v28)
            {
              *v31 = *v27;
              *(v31 + 16) = *(v27 + 16);
              v27 = (v27 + 24);
              v31 += 24;
            }
          }

          else
          {
            if (v128 != *&v127[32])
            {
              v39 = (v27 + v128 - *&v127[32]);
              do
              {
                *v31 = *v27;
                *(v31 + 16) = *(v27 + 16);
                v27 = (v27 + 24);
                v31 += 24;
              }

              while (v27 != v39);
              v27 = v39;
            }

            while (v27 != v28)
            {
              v40 = *v27;
              *(v38 + 16) = *(v27 + 2);
              *v38 = v40;
              v38 += 24;
              v27 = (v27 + 24);
            }

            v31 = v38;
          }

          *&v128 = v31;
          v41 = *(v18 - 5);
          v42 = *(v18 - 4);
          v43 = v42 - v41;
          v44 = v129[2];
          v45 = v129[0];
          if ((v129[2] - v129[0]) < (v42 - v41))
          {
            if (v129[0])
            {
              v129[1] = v129[0];
              operator delete(v129[0]);
              v44 = 0;
              memset(v129, 0, 24);
            }

            v46 = v43 >> 4;
            if (!((v43 >> 4) >> 60))
            {
              if (v44 >> 3 > v46)
              {
                v46 = v44 >> 3;
              }

              if (v44 >= 0x7FFFFFFFFFFFFFF0)
              {
                v47 = 0xFFFFFFFFFFFFFFFLL;
              }

              else
              {
                v47 = v46;
              }

              if (!(v47 >> 60))
              {
                std::allocator<std::pair<unsigned long,char const*>>::allocate_at_least[abi:ne200100](v47);
              }
            }

            std::vector<ADAMAudioDataAnalysisType>::__throw_length_error[abi:ne200100]();
          }

          v48 = v129[1];
          if ((v129[1] - v129[0]) >= v43)
          {
            while (v41 != v42)
            {
              *v45 = *v41;
              v45[1] = *(v41 + 1);
              v41 += 16;
              v45 += 2;
            }
          }

          else
          {
            if (v129[1] != v129[0])
            {
              v49 = &v41[v129[1] - v129[0]];
              do
              {
                *v45 = *v41;
                v45[1] = *(v41 + 1);
                v41 += 16;
                v45 += 2;
              }

              while (v41 != v49);
              v41 = v49;
            }

            while (v41 != v42)
            {
              *v48 = *v41;
              v48[1] = *(v41 + 1);
              v41 += 16;
              v48 += 2;
            }

            v45 = v48;
          }

          v129[1] = v45;
        }

        v50 = *v21;
        *(&v129[3] + 5) = *(v21 + 5);
        v129[3] = v50;
        v14 = v25;
      }

      v51 = v131;
      if (v14 == v17)
      {
        v52 = v130;
        while (v51 != v52)
        {
          v51 -= 12;
          std::__destroy_at[abi:ne200100]<std::__state<char>,0>(v51);
        }

        v131 = v52;
        v15 = 1;
        v14 = v17;
      }

      else
      {
        v53 = v131 - 12;
        std::__destroy_at[abi:ne200100]<std::__state<char>,0>(v131 - 12);
        v131 = v53;
        v15 = 1;
      }
    }

LABEL_45:
    v18 = v131;
  }

  while (v130 != v131);
  if ((v15 & 1) == 0)
  {
    goto LABEL_94;
  }

  v55 = *v117;
  *v55 = v121;
  *(v55 + 8) = &v14[v121];
  *(v55 + 16) = 1;
  if (v128 != *&v127[32])
  {
    v56 = 0xAAAAAAAAAAAAAAABLL * ((v128 - *&v127[32]) >> 3);
    v57 = (*&v127[32] + 16);
    v58 = 1;
    do
    {
      v59 = v55 + 24 * v58;
      *v59 = *(v57 - 1);
      v60 = *v57;
      v57 += 24;
      *(v59 + 16) = v60;
      v19 = v56 > v58++;
    }

    while (v19);
  }

  v61 = 1;
LABEL_95:
  if (v129[0])
  {
    v129[1] = v129[0];
    operator delete(v129[0]);
  }

  if (*&v127[32])
  {
    *&v128 = *&v127[32];
    operator delete(*&v127[32]);
  }

  *v127 = &v130;
  std::vector<std::__state<char>>::__destroy_vector::operator()[abi:ne200100](v127);
  return v61;
}

void sub_296C3C9EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  operator delete(v38);
  if (__p)
  {
    operator delete(__p);
  }

  std::deque<std::__state<char>>::~deque[abi:ne200100](&a17);
  _Unwind_Resume(a1);
}

uint64_t std::basic_regex<char,std::regex_traits<char>>::__match_at_start_ecma<std::allocator<std::sub_match<char const*>>>(uint64_t a1, const char *a2, const char *a3, uint64_t *a4, int a5, char a6)
{
  v41 = 0;
  v42 = 0;
  v43 = 0;
  v6 = *(a1 + 40);
  if (!v6)
  {
LABEL_29:
    v24 = 0;
    goto LABEL_30;
  }

  __x.first = a3;
  __x.second = a3;
  __x.matched = 0;
  *v36 = 0;
  memset(&v36[8], 0, 32);
  v37 = 0u;
  *__p = 0u;
  memset(v39, 0, 21);
  std::vector<std::__state<char>>::push_back[abi:ne200100](&v41, v36);
  if (__p[0])
  {
    operator delete(__p[0]);
  }

  if (*&v36[32])
  {
    operator delete(*&v36[32]);
  }

  v35 = a4;
  v13 = v42;
  *(v42 - 96) = 0;
  *(v13 - 88) = a2;
  *(v13 - 80) = a2;
  *(v13 - 72) = a3;
  std::vector<std::sub_match<char const*>>::resize((v13 - 64), *(a1 + 28), &__x);
  std::vector<std::pair<unsigned long,char const*>>::resize((v42 - 40), *(a1 + 32));
  v14 = v42;
  *(v42 - 16) = v6;
  *(v14 - 8) = a5;
  *(v14 - 4) = a6;
  v15 = 1;
  while (1)
  {
    if ((v15 & 0xFFF) == 0 && (v15 >> 12) >= a3 - a2)
    {
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)12>();
    }

    v17 = (v14 - 16);
    v16 = *(v14 - 16);
    v18 = (v14 - 96);
    if (v16)
    {
      (*(*v16 + 16))(v16, v14 - 96);
    }

    v19 = *v18;
    if (*v18 > -994)
    {
      if (v19 != -993)
      {
        if (v19 == -992)
        {
          v22 = *(v14 - 80);
          *v36 = *v18;
          *&v36[16] = v22;
          v37 = 0uLL;
          *&v36[32] = 0;
          std::vector<std::sub_match<char const*>>::__init_with_size[abi:ne200100]<std::sub_match<char const*>*,std::sub_match<char const*>*>(&v36[32], *(v14 - 64), *(v14 - 56), 0xAAAAAAAAAAAAAAABLL * ((*(v14 - 56) - *(v14 - 64)) >> 3));
          __p[0] = 0;
          __p[1] = 0;
          v39[0] = 0;
          std::vector<std::pair<unsigned long,char const*>>::__init_with_size[abi:ne200100]<std::pair<unsigned long,char const*>*,std::pair<unsigned long,char const*>*>(__p, *(v14 - 40), *(v14 - 32), (*(v14 - 32) - *(v14 - 40)) >> 4);
          v23 = *v17;
          *(&v39[1] + 5) = *(v14 - 11);
          v39[1] = v23;
          (*(**v17 + 24))(*v17, 1, v14 - 96);
          (*(*v39[1] + 24))(v39[1], 0, v36);
          std::vector<std::__state<char>>::push_back[abi:ne200100](&v41, v36);
          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }

          if (*&v36[32])
          {
            *&v37 = *&v36[32];
            operator delete(*&v36[32]);
          }
        }

        else if (v19 != -991)
        {
LABEL_36:
          std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)16>();
        }

        goto LABEL_28;
      }

      goto LABEL_23;
    }

    if ((v19 + 995) >= 2)
    {
      break;
    }

LABEL_28:
    v14 = v42;
    ++v15;
    if (v41 == v42)
    {
      goto LABEL_29;
    }
  }

  if (v19 != -1000)
  {
    goto LABEL_36;
  }

  v20 = *(v14 - 80);
  if ((a5 & 0x20) != 0 && v20 == a2 || (a5 & 0x1000) != 0 && v20 != a3)
  {
LABEL_23:
    v21 = v42 - 96;
    std::__destroy_at[abi:ne200100]<std::__state<char>,0>((v42 - 96));
    v42 = v21;
    goto LABEL_28;
  }

  v26 = *v35;
  *v26 = a2;
  *(v26 + 8) = v20;
  *(v26 + 16) = 1;
  v27 = *(v14 - 64);
  v28 = *(v14 - 56) - v27;
  if (v28)
  {
    v29 = 0xAAAAAAAAAAAAAAABLL * (v28 >> 3);
    v30 = (v27 + 16);
    v31 = 1;
    do
    {
      v32 = v26 + 24 * v31;
      *v32 = *(v30 - 1);
      v33 = *v30;
      v30 += 24;
      *(v32 + 16) = v33;
    }

    while (v29 > v31++);
  }

  v24 = 1;
LABEL_30:
  *v36 = &v41;
  std::vector<std::__state<char>>::__destroy_vector::operator()[abi:ne200100](v36);
  return v24;
}

void sub_296C3CE0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  std::__state<char>::~__state(&a11);
  a11 = v16 - 112;
  std::vector<std::__state<char>>::__destroy_vector::operator()[abi:ne200100](&a11);
  _Unwind_Resume(a1);
}

void std::vector<std::__state<char>>::push_back[abi:ne200100](unint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (v3 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 5);
    v9 = v8 + 1;
    if (v8 + 1 > 0x2AAAAAAAAAAAAAALL)
    {
      std::vector<ADAMAudioDataAnalysisType>::__throw_length_error[abi:ne200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 5);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x155555555555555)
    {
      v11 = 0x2AAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (v11 <= 0x2AAAAAAAAAAAAAALL)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v12 = 96 * v8;
    v13 = *(a2 + 16);
    *v12 = *a2;
    *(v12 + 16) = v13;
    *(v12 + 32) = *(a2 + 32);
    *(v12 + 48) = *(a2 + 48);
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(v12 + 56) = *(a2 + 56);
    *(a2 + 48) = 0;
    *(a2 + 56) = 0;
    v14 = *(a2 + 72);
    v15 = *(a2 + 80);
    *(a2 + 64) = 0;
    *(a2 + 72) = 0;
    *(v12 + 85) = *(a2 + 85);
    *(v12 + 72) = v14;
    *(v12 + 80) = v15;
    v7 = 96 * v8 + 96;
    v24 = (v12 + 96);
    v16 = *a1;
    v17 = a1[1];
    v18 = v12 + *a1 - v17;
    if (*a1 != v17)
    {
      v19 = *a1;
      v20 = v12 + *a1 - v17;
      do
      {
        v21 = *(v19 + 1);
        *v20 = *v19;
        *(v20 + 16) = v21;
        *(v20 + 40) = 0;
        *(v20 + 48) = 0;
        *(v20 + 32) = 0;
        *(v20 + 32) = *(v19 + 2);
        *(v20 + 48) = v19[6];
        v19[4] = 0;
        v19[5] = 0;
        v19[6] = 0;
        *(v20 + 56) = 0;
        *(v20 + 64) = 0;
        *(v20 + 72) = 0;
        *(v20 + 56) = *(v19 + 7);
        *(v20 + 72) = v19[9];
        v19[7] = 0;
        v19[8] = 0;
        v19[9] = 0;
        v22 = v19[10];
        *(v20 + 85) = *(v19 + 85);
        *(v20 + 80) = v22;
        v19 += 12;
        v20 += 96;
      }

      while (v19 != v17);
      do
      {
        std::__destroy_at[abi:ne200100]<std::__state<char>,0>(v16);
        v16 += 12;
      }

      while (v16 != v17);
    }

    v23 = *a1;
    *a1 = v18;
    *(a1 + 1) = v24;
    if (v23)
    {
      operator delete(v23);
    }
  }

  else
  {
    v5 = *(a2 + 16);
    *v3 = *a2;
    *(v3 + 16) = v5;
    *(v3 + 40) = 0;
    *(v3 + 48) = 0;
    *(v3 + 32) = 0;
    *(v3 + 32) = *(a2 + 32);
    *(v3 + 48) = *(a2 + 48);
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
    *(v3 + 56) = 0;
    *(v3 + 64) = 0;
    *(v3 + 72) = 0;
    *(v3 + 56) = *(a2 + 56);
    *(v3 + 72) = *(a2 + 72);
    *(a2 + 56) = 0;
    *(a2 + 64) = 0;
    *(a2 + 72) = 0;
    v6 = *(a2 + 80);
    *(v3 + 85) = *(a2 + 85);
    *(v3 + 80) = v6;
    v7 = v3 + 96;
  }

  a1[1] = v7;
}

void std::allocator<std::pair<unsigned long,char const*>>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<std::pair<unsigned long,char const*>>::resize(std::vector<std::pair<unsigned long, const char *>> *this, std::vector<std::pair<unsigned long, const char *>>::size_type __sz)
{
  begin = this->__begin_;
  end = this->__end_;
  v5 = end - this->__begin_;
  if (__sz <= v5)
  {
    if (__sz >= v5)
    {
      return;
    }

    v11 = &begin[__sz];
  }

  else
  {
    v6 = __sz - v5;
    value = this->__end_cap_.__value_;
    if (v6 > value - end)
    {
      if (!(__sz >> 60))
      {
        v8 = value - begin;
        v9 = v8 >> 3;
        if (v8 >> 3 <= __sz)
        {
          v9 = __sz;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFF0)
        {
          v10 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        std::allocator<std::pair<unsigned long,char const*>>::allocate_at_least[abi:ne200100](v10);
      }

      std::vector<ADAMAudioDataAnalysisType>::__throw_length_error[abi:ne200100]();
    }

    bzero(this->__end_, 16 * v6);
    v11 = &end[v6];
  }

  this->__end_ = v11;
}

void std::vector<std::sub_match<char const*>>::resize(std::vector<std::csub_match> *this, std::vector<std::csub_match>::size_type __sz, std::vector<std::csub_match>::const_reference __x)
{
  begin = this->__begin_;
  end = this->__end_;
  v5 = end - this->__begin_;
  v6 = 0xAAAAAAAAAAAAAAABLL * (v5 >> 3);
  v7 = __sz - v6;
  if (__sz <= v6)
  {
    if (__sz >= v6)
    {
      return;
    }

    v12 = &begin[__sz];
  }

  else
  {
    value = this->__end_cap_.__value_;
    if (0xAAAAAAAAAAAAAAABLL * ((value - end) >> 3) < v7)
    {
      if (__sz <= 0xAAAAAAAAAAAAAAALL)
      {
        v9 = 0xAAAAAAAAAAAAAAABLL * ((value - begin) >> 3);
        v10 = 0x5555555555555556 * ((value - begin) >> 3);
        if (v10 <= __sz)
        {
          v10 = __sz;
        }

        if (v9 >= 0x555555555555555)
        {
          v11 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v11 = v10;
        }

        std::allocator<std::sub_match<char const*>>::allocate_at_least[abi:ne200100](v11);
      }

      std::vector<ADAMAudioDataAnalysisType>::__throw_length_error[abi:ne200100]();
    }

    v12 = &end[v7];
    v13 = 24 * __sz - 8 * (v5 >> 3);
    do
    {
      v14 = __x->std::pair<const char *, const char *>;
      *&end->matched = *&__x->matched;
      end->std::pair<const char *, const char *> = v14;
      ++end;
      v13 -= 24;
    }

    while (v13);
  }

  this->__end_ = v12;
}

void std::vector<std::pair<unsigned long,char const*>>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::allocator<std::pair<unsigned long,char const*>>::allocate_at_least[abi:ne200100](a2);
  }

  std::vector<ADAMAudioDataAnalysisType>::__throw_length_error[abi:ne200100]();
}

uint64_t AudioIssueDetectorCreate(uint64_t a1, char **a2)
{
  v9 = *MEMORY[0x29EDCA608];
  if (!AudioDSPAnalysisEnabled())
  {
    SingletonManagerInstance();
    std::mutex::lock(&SingletonManagerInstance(void)::sInstance);
    atomic_fetch_add(&dword_2A18A5398, 1u);
    v3 = qword_2A18A5390;
    while (1)
    {
      v4 = (v3 + 1) > 1 ? v3 + 1 : 1;
      qword_2A18A5390 = v4;
      v5 = std::__hash_table<std::__hash_value_type<long long,std::shared_ptr<rtaid::Detector>>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,std::shared_ptr<rtaid::Detector>>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,std::shared_ptr<rtaid::Detector>>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,std::shared_ptr<rtaid::Detector>>>>::find<long long>(v4);
      if (!v5)
      {
        break;
      }

      v7 = v5[3];
      v6 = v5[4];
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:ne200100](v6);
        v3 = qword_2A18A5390;
        if (!v7)
        {
          break;
        }
      }

      else
      {
        v3 = v4;
        if (!v7)
        {
          break;
        }
      }
    }

    operator new();
  }

  v2 = RealTimeAudioIssueDetectorCreate();
  RealTimeAudioIssueDetectorUpdateReportingSessions();
  return v2;
}

void sub_296C3DB10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<long long,std::shared_ptr<rtaid::Detector>>,void *>>>::operator()[abi:ne200100](0, v9);
  std::unique_ptr<rtaid::Detector>::~unique_ptr[abi:ne200100](va);
  std::mutex::unlock(&SingletonManagerInstance(void)::sInstance);
  _Unwind_Resume(a1);
}

std::__shared_weak_count ***std::unique_ptr<rtaid::Detector>::~unique_ptr[abi:ne200100](std::__shared_weak_count ***a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    rtaid::Detector::~Detector(v2);
    MEMORY[0x29C260F00]();
  }

  return a1;
}

uint64_t *std::vector<std::pair<unsigned long,char const*>>::__init_with_size[abi:ne200100]<std::pair<unsigned long,char const*>*,std::pair<unsigned long,char const*>*>(uint64_t *result, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::pair<unsigned long,char const*>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_296C3DBF8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<std::sub_match<char const*>>::__init_with_size[abi:ne200100]<std::sub_match<char const*>*,std::sub_match<char const*>*>(uint64_t *result, __int128 *a2, __int128 *a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::sub_match<char const*>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_296C3DC84(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__alternate<char>::__exec_split(uint64_t result, int a2, uint64_t a3)
{
  *a3 = -994;
  v3 = 8;
  if (a2)
  {
    v3 = 16;
  }

  *(a3 + 80) = *(result + v3);
  return result;
}

void std::__destroy_at[abi:ne200100]<std::__state<char>,0>(void *a1)
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
}

unsigned int *std::__loop<char>::__exec(unsigned int *result, void *a2)
{
  v2 = (a2[7] + 16 * result[10]);
  if (*a2 == -991)
  {
    v3 = *v2 + 1;
    *v2 = v3;
    v4 = *(result + 3);
    v5 = *(result + 4);
    v6 = v3 < v5;
    if (v3 < v5 && v3 >= v4)
    {
      v8 = v2[1];
      v6 = v3 < v5 && v8 != a2[2];
    }

    if (!v6 || v3 < v4)
    {
      *a2 = -994;
      if (!v6)
      {
        goto LABEL_25;
      }

LABEL_22:
      a2[10] = *(result + 1);
      return std::__loop<char>::__init_repeat[abi:ne200100](result, a2);
    }

    goto LABEL_23;
  }

  *v2 = 0;
  if (*(result + 4))
  {
    if (*(result + 3))
    {
      *a2 = -994;
      goto LABEL_22;
    }

LABEL_23:
    *a2 = -992;
    return result;
  }

  *a2 = -994;
LABEL_25:
  a2[10] = *(result + 2);
  return result;
}

unsigned int *std::__loop<char>::__init_repeat[abi:ne200100](unsigned int *result, void *a2)
{
  v2 = result[11];
  *(a2[7] + 16 * result[10] + 8) = a2[2];
  v3 = result[12];
  if (v2 != v3)
  {
    v4 = v2 - 1;
    v5 = a2[3];
    v6 = v3 - 1 - v4;
    v7 = (a2[4] + 24 * v4 + 16);
    do
    {
      *(v7 - 2) = v5;
      *(v7 - 1) = v5;
      *v7 = 0;
      v7 += 24;
      --v6;
    }

    while (v6);
  }

  return result;
}

void std::__bracket_expression<char,std::regex_traits<char>>::__exec(const std::__bracket_expression<char, std::regex_traits<char>> *this, std::__bracket_expression<char, std::regex_traits<char>>::__state *a2)
{
  current = a2->__current_;
  last = a2->__last_;
  if (current == last)
  {
    v9 = 0;
    negate = this->__negate_;
    goto LABEL_61;
  }

  if (!this->__might_have_digraph_ || current + 1 == last)
  {
    goto LABEL_38;
  }

  LOBYTE(__src) = *current;
  v6 = current[1];
  HIBYTE(__src) = current[1];
  if (this->__icase_)
  {
    LOBYTE(__src) = (this->__traits_.__ct_->do_tolower)(this->__traits_.__ct_);
    HIBYTE(__src) = (this->__traits_.__ct_->do_tolower)(this->__traits_.__ct_, v6);
  }

  *(&__s.__r_.__value_.__s + 23) = 2;
  LOWORD(__s.__r_.__value_.__l.__data_) = __src;
  __s.__r_.__value_.__s.__data_[2] = 0;
  std::__get_collation_name(&v75, &__s);
  __p = v75;
  size = HIBYTE(v75.__r_.__value_.__r.__words[2]);
  v8 = SHIBYTE(v75.__r_.__value_.__r.__words[2]);
  if ((v75.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v75.__r_.__value_.__l.__size_;
  }

  if (size)
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
    goto LABEL_14;
  }

  (*(*this->__traits_.__col_ + 32))(&v75);
  if (v8 < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  __p = v75;
  if ((SHIBYTE(v75.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (HIBYTE(v75.__r_.__value_.__r.__words[2]) != 12 && HIBYTE(v75.__r_.__value_.__r.__words[2]) != 1)
    {
      __p.__r_.__value_.__s.__data_[0] = 0;
      *(&__p.__r_.__value_.__s + 23) = 0;
      goto LABEL_9;
    }

    goto LABEL_167;
  }

  if (__p.__r_.__value_.__l.__size_ == 1 || __p.__r_.__value_.__l.__size_ == 12)
  {
LABEL_167:
    std::string::operator=(&__p, &__s);
    goto LABEL_9;
  }

  *__p.__r_.__value_.__l.__data_ = 0;
  __p.__r_.__value_.__l.__size_ = 0;
LABEL_9:
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }

LABEL_14:
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (*(&__p.__r_.__value_.__s + 23))
    {
      goto LABEL_16;
    }

LABEL_38:
    negate = 0;
    v9 = 1;
    goto LABEL_39;
  }

  v23 = __p.__r_.__value_.__l.__size_;
  operator delete(__p.__r_.__value_.__l.__data_);
  if (!v23)
  {
    goto LABEL_38;
  }

LABEL_16:
  begin = this->__digraphs_.__begin_;
  v12 = this->__digraphs_.__end_ - begin;
  if (v12)
  {
    v13 = v12 >> 1;
    if ((v12 >> 1) <= 1)
    {
      v13 = 1;
    }

    p_second = &begin->second;
    while (__src != *(p_second - 1) || HIBYTE(__src) != *p_second)
    {
      p_second += 2;
      if (!--v13)
      {
        goto LABEL_25;
      }
    }

    goto LABEL_163;
  }

LABEL_25:
  if (this->__collate_ && this->__ranges_.__begin_ != this->__ranges_.__end_)
  {
    std::regex_traits<char>::transform<char *>(&__s, &this->__traits_, &__src, &v75);
    v16 = this->__ranges_.__begin_;
    v17 = this->__ranges_.__end_ - v16;
    if (v17)
    {
      v18 = 0;
      v19 = 0xAAAAAAAAAAAAAAABLL * (v17 >> 4);
      while (std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v16, &__s) > 0 || std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__s, v16->second.__r_.__value_.__r.__words) >= 1)
      {
        ++v18;
        ++v16;
        if (v18 >= v19)
        {
          goto LABEL_32;
        }
      }

      v21 = 5;
      v20 = 1;
    }

    else
    {
LABEL_32:
      v20 = 0;
      v21 = 0;
    }

    if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__s.__r_.__value_.__l.__data_);
    }

    if (v20)
    {
      v22 = 1;
      goto LABEL_143;
    }
  }

  if (this->__equivalences_.__begin_ == this->__equivalences_.__end_)
  {
    v22 = 0;
    goto LABEL_145;
  }

  std::regex_traits<char>::__transform_primary<char *>(&__s, &this->__traits_, &__src, &v75);
  v38 = this->__equivalences_.__begin_;
  v39 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
  v40 = this->__equivalences_.__end_ - v38;
  if (v40)
  {
    v41 = 0xAAAAAAAAAAAAAAABLL * (v40 >> 3);
    if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v42 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v42 = __s.__r_.__value_.__l.__size_;
    }

    if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_s = &__s;
    }

    else
    {
      p_s = __s.__r_.__value_.__r.__words[0];
    }

    if (v41 <= 1)
    {
      v44 = 1;
    }

    else
    {
      v44 = 0xAAAAAAAAAAAAAAABLL * (v40 >> 3);
    }

    v45 = 1;
    v46 = 1;
    while (1)
    {
      v47 = HIBYTE(v38->__r_.__value_.__r.__words[2]);
      v48 = v47;
      if ((v47 & 0x80u) != 0)
      {
        v47 = v38->__r_.__value_.__l.__size_;
      }

      if (v42 == v47)
      {
        v49 = v48 >= 0 ? v38 : v38->__r_.__value_.__r.__words[0];
        if (!memcmp(p_s, v49, v42))
        {
          break;
        }
      }

      v46 = v45++ < v41;
      ++v38;
      if (!--v44)
      {
        goto LABEL_140;
      }
    }

    v22 = 1;
    v21 = 5;
    if (v39 < 0)
    {
LABEL_141:
      operator delete(__s.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v46 = 0;
LABEL_140:
    v21 = 0;
    v22 = 0;
    if (v39 < 0)
    {
      goto LABEL_141;
    }
  }

  if (!v46)
  {
LABEL_145:
    if (__src < 0)
    {
      neg_mask = this->__neg_mask_;
    }

    else
    {
      mask = this->__mask_;
      tab = this->__traits_.__ct_->__tab_;
      v69 = tab[__src];
      if (((v69 & mask) != 0 || __src == 95 && (mask & 0x80) != 0) && (SHIBYTE(__src) & 0x8000000000000000) == 0 && ((tab[SHIBYTE(__src)] & mask) != 0 || (mask & 0x80) != 0 && SHIBYTE(__src) == 95))
      {
        goto LABEL_163;
      }

      neg_mask = this->__neg_mask_;
      if ((v69 & neg_mask) != 0 || __src == 95 && (neg_mask & 0x80) != 0)
      {
LABEL_162:
        negate = v22;
LABEL_164:
        v9 = 2;
        goto LABEL_61;
      }
    }

    if ((SHIBYTE(__src) & 0x8000000000000000) == 0)
    {
      if ((this->__traits_.__ct_->__tab_[SHIBYTE(__src)] & neg_mask) == 0)
      {
        negate = 1;
        if (SHIBYTE(__src) != 95 || (neg_mask & 0x80) == 0)
        {
          goto LABEL_164;
        }
      }

      goto LABEL_162;
    }

LABEL_163:
    negate = 1;
    goto LABEL_164;
  }

LABEL_143:
  v9 = 2;
  negate = v22;
  if (v21)
  {
    goto LABEL_61;
  }

LABEL_39:
  v24 = *a2->__current_;
  v75.__r_.__value_.__s.__data_[0] = *a2->__current_;
  if (this->__icase_)
  {
    LODWORD(v24) = (this->__traits_.__ct_->do_tolower)(this->__traits_.__ct_, v24);
    v75.__r_.__value_.__s.__data_[0] = v24;
  }

  v25 = this->__chars_.__begin_;
  v26 = this->__chars_.__end_ - v25;
  if (v26)
  {
    if (v26 <= 1)
    {
      v26 = 1;
    }

    do
    {
      v27 = *v25++;
      if (v27 == v24)
      {
        goto LABEL_60;
      }
    }

    while (--v26);
  }

  v28 = this->__neg_mask_;
  if (v28 || this->__neg_chars_.__begin_ != this->__neg_chars_.__end_)
  {
    if ((v24 & 0x80000000) != 0 || (this->__traits_.__ct_->__tab_[v24] & v28) == 0)
    {
      v29 = (v24 == 95) & (v28 >> 7);
    }

    else
    {
      LOBYTE(v29) = 1;
    }

    end = this->__neg_chars_.__end_;
    v31 = memchr(this->__neg_chars_.__begin_, v24, end - this->__neg_chars_.__begin_);
    v32 = !v31 || v31 == end;
    v33 = !v32;
    if ((v29 & 1) == 0 && !v33)
    {
LABEL_60:
      negate = 1;
      goto LABEL_61;
    }
  }

  v37 = this->__ranges_.__begin_;
  v36 = this->__ranges_.__end_;
  if (v37 == v36)
  {
    goto LABEL_99;
  }

  if (this->__collate_)
  {
    std::regex_traits<char>::transform<char *>(&__s, &this->__traits_, &v75, &v75.__r_.__value_.__s.__data_[1]);
    v37 = this->__ranges_.__begin_;
    v36 = this->__ranges_.__end_;
  }

  else
  {
    *(&__s.__r_.__value_.__s + 23) = 1;
    LOWORD(__s.__r_.__value_.__l.__data_) = v24;
  }

  v50 = v36 - v37;
  if (v50)
  {
    v51 = 0;
    v52 = 0xAAAAAAAAAAAAAAABLL * (v50 >> 4);
    while (std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v37, &__s) > 0 || std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__s, v37->second.__r_.__value_.__r.__words) >= 1)
    {
      ++v51;
      ++v37;
      if (v51 >= v52)
      {
        goto LABEL_95;
      }
    }

    v53 = 1;
    negate = 1;
  }

  else
  {
LABEL_95:
    v53 = 0;
  }

  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }

  if ((v53 & 1) == 0)
  {
LABEL_99:
    if (this->__equivalences_.__begin_ == this->__equivalences_.__end_)
    {
LABEL_134:
      v65 = this->__mask_;
      if ((v75.__r_.__value_.__s.__data_[0] & 0x8000000000000000) == 0 && (this->__traits_.__ct_->__tab_[v75.__r_.__value_.__s.__data_[0]] & v65) != 0)
      {
        goto LABEL_60;
      }

      v66 = (v65 >> 7) & 1;
      if (v75.__r_.__value_.__s.__data_[0] != 95)
      {
        LOBYTE(v66) = 0;
      }

      negate |= v66;
      goto LABEL_61;
    }

    v54 = &__s;
    std::regex_traits<char>::__transform_primary<char *>(&__s, &this->__traits_, &v75, &v75.__r_.__value_.__s.__data_[1]);
    v55 = this->__equivalences_.__begin_;
    v56 = this->__equivalences_.__end_ - v55;
    if (v56)
    {
      v71 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
      v72 = v9;
      v57 = 0xAAAAAAAAAAAAAAABLL * (v56 >> 3);
      if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v58 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v58 = __s.__r_.__value_.__l.__size_;
      }

      if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v54 = __s.__r_.__value_.__r.__words[0];
      }

      if (v57 <= 1)
      {
        v59 = 1;
      }

      else
      {
        v59 = 0xAAAAAAAAAAAAAAABLL * (v56 >> 3);
      }

      v60 = 1;
      v61 = 1;
      while (1)
      {
        v62 = HIBYTE(v55->__r_.__value_.__r.__words[2]);
        v63 = v62;
        if ((v62 & 0x80u) != 0)
        {
          v62 = v55->__r_.__value_.__l.__size_;
        }

        if (v58 == v62)
        {
          v64 = v63 >= 0 ? v55 : v55->__r_.__value_.__r.__words[0];
          if (!memcmp(v54, v64, v58))
          {
            break;
          }
        }

        v61 = v60++ < v57;
        ++v55;
        if (!--v59)
        {
          goto LABEL_131;
        }
      }

      negate = 1;
LABEL_131:
      v9 = v72;
      if ((v71 & 0x80) == 0)
      {
LABEL_133:
        if (v61)
        {
          goto LABEL_61;
        }

        goto LABEL_134;
      }
    }

    else
    {
      v61 = 0;
      if ((*(&__s.__r_.__value_.__s + 23) & 0x80) == 0)
      {
        goto LABEL_133;
      }
    }

    operator delete(__s.__r_.__value_.__l.__data_);
    goto LABEL_133;
  }

LABEL_61:
  if (this->__negate_ == (negate & 1))
  {
    first = 0;
    v35 = -993;
  }

  else
  {
    a2->__current_ += v9;
    first = this->__first_;
    v35 = -995;
  }

  a2->__do_ = v35;
  a2->__node_ = first;
}

void sub_296C3E614(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, void *a2)
{
  v2 = a1[1];
  if (*(a1 + 23) >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    a1 = *a1;
    v3 = v2;
  }

  v4 = a2[1];
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  if (v5 >= v3)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  v7 = memcmp(a1, a2, v6);
  if (v7)
  {
    if ((v7 & 0x80000000) == 0)
    {
      return 1;
    }
  }

  else
  {
    if (v3 == v5)
    {
      return 0;
    }

    if (v3 >= v5)
    {
      return 1;
    }
  }

  return 255;
}

void std::vector<std::__state<char>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 12;
        std::__destroy_at[abi:ne200100]<std::__state<char>,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::__repeat_one_loop<char>::__exec(uint64_t result, uint64_t a2)
{
  *a2 = -991;
  *(a2 + 80) = *(result + 8);
  return result;
}

void std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4, char a5)
{
  v5 = a4[6];
  v6 = a4[1] - *a4;
  v7 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 3);
  v8 = *a1;
  v9 = a1[1];
  v10 = v9;
  v11 = v9 - *a1;
  v12 = 0xAAAAAAAAAAAAAAABLL * (v11 >> 3);
  v13 = v7 - v12;
  if (v7 <= v12)
  {
    if (v7 < v12)
    {
      v10 = v8 + v6;
      a1[1] = v8 + v6;
    }
  }

  else
  {
    v14 = a1[2];
    if (0xAAAAAAAAAAAAAAABLL * ((v14 - v9) >> 3) < v13)
    {
      if (v7 <= 0xAAAAAAAAAAAAAAALL)
      {
        if (0x5555555555555556 * ((v14 - v8) >> 3) > v7)
        {
          v7 = 0x5555555555555556 * ((v14 - v8) >> 3);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((v14 - v8) >> 3) >= 0x555555555555555)
        {
          v15 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v15 = v7;
        }

        if (v15 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      std::vector<ADAMAudioDataAnalysisType>::__throw_length_error[abi:ne200100]();
    }

    v16 = 8 * (v6 >> 3) - 8 * (v11 >> 3);
    do
    {
      *v10 = 0;
      *(v10 + 8) = 0;
      *(v10 + 16) = 0;
      v10 += 24;
      v16 -= 24;
    }

    while (v16);
    a1[1] = v9 + 24 * v13;
    v10 = v9 + 24 * v13;
  }

  v17 = *a1;
  if (v10 == *a1)
  {
    v20 = a2 - v5;
  }

  else
  {
    v18 = 0;
    v19 = 0;
    v20 = a2 - v5;
    v22 = *a4;
    v21 = a4[1];
    do
    {
      v23 = 0xAAAAAAAAAAAAAAABLL * ((v21 - v22) >> 3);
      v24 = (v22 + v18);
      if (v23 <= v19)
      {
        v25 = a4 + 3;
      }

      else
      {
        v25 = v24;
      }

      *(v17 + v18) = v20 + *v25;
      if (0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 3) <= v19)
      {
        v26 = a4 + 3;
      }

      else
      {
        v26 = (*a4 + v18);
      }

      *(*a1 + v18 + 8) = v20 + v26[1];
      v22 = *a4;
      v21 = a4[1];
      if (0xAAAAAAAAAAAAAAABLL * ((v21 - *a4) >> 3) <= v19)
      {
        v27 = a4 + 3;
      }

      else
      {
        v27 = (*a4 + v18);
      }

      v28 = *(v27 + 16);
      v17 = *a1;
      v29 = a1[1];
      *(*a1 + v18 + 16) = v28;
      ++v19;
      v18 += 24;
    }

    while (v19 < 0xAAAAAAAAAAAAAAABLL * ((v29 - v17) >> 3));
  }

  a1[3] = a3;
  a1[4] = a3;
  *(a1 + 40) = 0;
  v30 = v20 + a4[6];
  a1[6] = v30;
  a1[7] = v20 + a4[7];
  *(a1 + 64) = *(a4 + 64);
  a1[9] = v20 + a4[9];
  a1[10] = v20 + a4[10];
  *(a1 + 88) = *(a4 + 88);
  if ((a5 & 1) == 0)
  {
    a1[13] = v30;
  }

  *(a1 + 96) = *(a4 + 96);
}

BOOL std::regex_iterator<std::__wrap_iter<char const*>,char,std::regex_traits<char>>::operator==(const std::regex_iterator<std::__wrap_iter<const char *>, char> *this, const std::regex_iterator<std::__wrap_iter<const char *>, char> *__x)
{
  p_match = &this->__match_;
  begin = this->__match_.__matches_.__begin_;
  end = p_match->__matches_.__end_;
  v9 = &__x->__match_;
  v7 = __x->__match_.__matches_.__begin_;
  v8 = v9->__matches_.__end_;
  v10 = v8 == v7 && end == begin;
  if (end != begin && v8 != v7)
  {
    return this->__begin_.__i_ == __x->__begin_.__i_ && this->__end_.__i_ == __x->__end_.__i_ && this->__pregex_ == __x->__pregex_ && this->__flags_ == __x->__flags_ && std::sub_match<std::__wrap_iter<char const*>>::compare[abi:ne200100](begin, v7) == 0;
  }

  return v10;
}

void rtaid::Detector::checkAndResetAnalyzers(uint64_t a1, void *a2)
{
  v3 = 0;
  v4 = a1 + 416;
  v75 = *MEMORY[0x29EDCA608];
  v5 = (a1 + 364);
  v62 = (a1 + 384);
  v63 = (a1 + 364);
  do
  {
    v6 = 0;
    v7 = *a2;
    atomic_compare_exchange_strong((*a2 + 408), &v6, 1u);
    if (v6)
    {
      goto LABEL_93;
    }

    v8 = (v7 + 8);
    if (*(v7 + 31) < 0)
    {
      v8 = *v8;
    }

    strncpy((a1 + 96), v8, 0xC0uLL);
    *(a1 + 356) = v3;
    *(a1 + 360) = *(v7 + 188);
    if (v3 > 3)
    {
      if ((v3 - 5) >= 2)
      {
        if (v3 != 4 || (*(v7 + 163) & 1) == 0 && *(v7 + 156) != 1)
        {
          goto LABEL_92;
        }

        v52 = *(v7 + 168);
        if (v52)
        {
          *v5 = 0;
          v5[1] = 0;
          if (*(v7 + 168))
          {
            v53 = 0;
            do
            {
              *(v5 + v53) = *(v7 + 172 + 4 * v53);
              ++v53;
            }

            while (v53 < *(v7 + 168));
          }
        }

        if (*(v7 + 257))
        {
          strlcpy((a1 + 288), (v7 + 257), 0x40uLL);
          *(a1 + 576) = *(v7 + 404);
          *(v7 + 257) = 0u;
          *(v7 + 273) = 0u;
          *(v7 + 289) = 0u;
          *(v7 + 305) = 0u;
          *(v7 + 321) = 0u;
          *(v7 + 337) = 0u;
          *(v7 + 353) = 0u;
          *(v7 + 369) = 0u;
          *(v7 + 385) = 0u;
          *(v7 + 404) = 0;
        }

        *(v7 + 168) = 0;
        atomic_store(0, (v7 + 408));
        if (v52)
        {
          goto LABEL_83;
        }
      }

      else
      {
        if ((*(v7 + v3 + 159) & 1) == 0 && *(v7 + v3 + 152) != 1)
        {
          goto LABEL_92;
        }

        v31 = *(v7 + 244);
        if (v31)
        {
          v65 = *(v7 + 244);
          v33 = *(v7 + 192);
          v32 = *(v7 + 200);
          v64 = v32 - v33;
          if (v32 != v33)
          {
            v34 = v31;
            v35 = *(v7 + 216);
            if ((v64 >> 2) <= 1)
            {
              v36 = 1;
            }

            else
            {
              v36 = v64 >> 2;
            }

            v37 = v62;
            v38 = *(v7 + 192);
            do
            {
              v39 = *v38++;
              v40 = (v39 / v34) + 1.0e-12;
              *(v37 - 1) = log10f(v40) * 10.0;
              v41 = *v35++;
              v42 = v41 + 1.0e-12;
              *v37 = log10f(v42) * 20.0;
              v37 += 2;
              --v36;
            }

            while (v36);
          }

          v5 = v63;
          *(a1 + 372) = v64 >> 2;
          *(a1 + 364) = *(v7 + 256);
          *(a1 + 368) = *(v7 + 248);
          v31 = v65;
        }

        else
        {
          v33 = *(v7 + 192);
          v32 = *(v7 + 200);
        }

        if (v32 != v33)
        {
          v54 = (v32 - v33) >> 2;
          v55 = *(v7 + 216);
          if (v54 <= 1)
          {
            v54 = 1;
          }

          do
          {
            *v33 = 0;
            v33 += 4;
            *v55++ = 0;
            --v54;
          }

          while (v54);
        }

        *(v7 + 244) = 0;
        atomic_store(0, (v7 + 408));
        if (v31)
        {
          goto LABEL_83;
        }
      }
    }

    else
    {
      if ((v3 - 1) >= 2)
      {
        if (v3 || (*(v7 + 159) & 1) == 0 && *(v7 + 152) != 1 || (v43 = *(v7 + 32)) == 0)
        {
LABEL_92:
          atomic_store(0, (v7 + 408));
          goto LABEL_93;
        }

        v67 = 0.0;
        Parameter = AudioUnitGetParameter(v43, 4u, 0, 0, &v67);
        v45 = v67;
        if (Parameter)
        {
          v45 = 0.0;
        }

        v46 = v45;
        if (Parameter)
        {
          v47 = 0;
        }

        else
        {
          v47 = v46;
        }

        v68 = 0.0;
        v48 = AudioUnitGetParameter(v43, 5u, 0, 0, &v68);
        v49 = v68;
        if (v48)
        {
          v49 = 0.0;
        }

        v50 = v49;
        if (v48)
        {
          v50 = 0;
        }

        v26 = (v47 | v50) != 0;
        if (v47 | v50)
        {
          *(a1 + 364) = v47;
          *(a1 + 368) = v50;
        }

        v51 = *(v7 + 32);
        if (v51)
        {
          AudioUnitSetParameter(*(v7 + 32), 4u, 0, 0, 0.0, 0);
          AudioUnitSetParameter(v51, 5u, 0, 0, 0.0, 0);
        }
      }

      else
      {
        if ((*(v7 + v3 + 159) & 1) == 0 && *(v7 + v3 + 152) != 1)
        {
          goto LABEL_92;
        }

        v9 = *(v7 + 32);
        if (!v9)
        {
          goto LABEL_92;
        }

        outValue = 0.0;
        v10 = AudioUnitGetParameter(v9, 0, 0, 0, &outValue);
        v11 = outValue;
        if (v10)
        {
          v11 = 0.0;
        }

        v12 = v11;
        if (v10)
        {
          v13 = 0;
        }

        else
        {
          v13 = v12;
        }

        v70 = 0.0;
        v14 = AudioUnitGetParameter(v9, 1u, 0, 0, &v70);
        v15 = v70;
        if (v14)
        {
          v15 = 0.0;
        }

        v16 = v15;
        if (v14)
        {
          v17 = 0;
        }

        else
        {
          v17 = v16;
        }

        v71 = 0.0;
        v18 = AudioUnitGetParameter(v9, 2u, 0, 0, &v71);
        v19 = v71;
        if (v18)
        {
          v19 = 0.0;
        }

        v20 = v19;
        if (v18)
        {
          v21 = 0;
        }

        else
        {
          v21 = v20;
        }

        v72 = 0.0;
        v22 = AudioUnitGetParameter(v9, 3u, 0, 0, &v72);
        v23 = v72;
        if (v22)
        {
          v23 = 0.0;
        }

        v24 = v23;
        if (v22)
        {
          v24 = 0;
        }

        v25 = v13 | v17 | v21 | v24;
        v26 = v25 != 0;
        if (v25)
        {
          *(a1 + 364) = v13;
          *(a1 + 368) = v17;
          *(a1 + 372) = v21;
          *(a1 + 376) = v24;
          v27 = *(v7 + 80);
          *(a1 + 380) = v27;
          v73 = 0.0;
          v28 = AudioUnitGetParameter(v9, 6u, 0, 0, &v73);
          v29 = v73;
          if (v28)
          {
            v29 = 0.0;
          }

          v30 = v29;
          if (v28)
          {
            v30 = 0.0;
          }

          *(a1 + 384) = v30;
        }

        rtaid::DetectorNode::resetSilenceAnalyzerErrorState(*(v7 + 32));
      }

      atomic_store(0, (v7 + 408));
      if (v26)
      {
LABEL_83:
        v56 = *(a1 + 600);
        v57 = *(a1 + 592);
        LODWORD(v58) = 16;
        if (((v56 - v57) >> 3) < 0x10)
        {
          v58 = (v56 - v57) >> 3;
        }

        *(a1 + 352) = *a1;
        *(a1 + 412) = v58;
        if (v56 != v57)
        {
          v59 = 0;
          v60 = *(a1 + 616);
          if (v58 <= 1)
          {
            v58 = 1;
          }

          else
          {
            v58 = v58;
          }

          do
          {
            *(v4 + 8 * v59) = *(v57 + 8 * v59);
            *(v4 + 2 * v59 + 128) = *(v60 + 2 * v59);
            ++v59;
          }

          while (v58 != v59);
        }

        *(a1 + 584) = a2[3];
        memcpy(__dst, (a1 + 96), sizeof(__dst));
        v61 = *(a1 + 88);
        if (!v61)
        {
          std::__throw_bad_function_call[abi:ne200100]();
        }

        (*(*v61 + 48))(v61, __dst);
      }
    }

LABEL_93:
    ++v3;
  }

  while (v3 != 7);
  a2[3] = 0;
}

OpaqueAudioComponentInstance *rtaid::DetectorNode::resetSilenceAnalyzerErrorState(OpaqueAudioComponentInstance *this)
{
  if (this)
  {
    v1 = this;
    AudioUnitSetParameter(this, 0, 0, 0, 0.0, 0);
    AudioUnitSetParameter(v1, 1u, 0, 0, 0.0, 0);
    AudioUnitSetParameter(v1, 2u, 0, 0, 0.0, 0);
    AudioUnitSetParameter(v1, 3u, 0, 0, 0.0, 0);

    return AudioUnitSetParameter(v1, 6u, 0, 0, -1.0, 0);
  }

  return this;
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>>>::remove(uint64_t result, void *a2, void *a3)
{
  v3 = a2[1];
  v4 = a3[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  v6 = *(*a2 + 8 * v4);
  do
  {
    v7 = v6;
    v6 = *v6;
  }

  while (v6 != a3);
  if (v7 == a2 + 2)
  {
    goto LABEL_18;
  }

  v8 = v7[1];
  if (v5.u32[0] > 1uLL)
  {
    if (v8 >= *&v3)
    {
      v8 %= *&v3;
    }
  }

  else
  {
    v8 &= *&v3 - 1;
  }

  if (v8 != v4)
  {
LABEL_18:
    if (!*a3)
    {
      goto LABEL_19;
    }

    v9 = *(*a3 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v3)
      {
        v9 %= *&v3;
      }
    }

    else
    {
      v9 &= *&v3 - 1;
    }

    if (v9 != v4)
    {
LABEL_19:
      *(*a2 + 8 * v4) = 0;
    }
  }

  v10 = *a3;
  if (*a3)
  {
    v11 = *(v10 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v11 >= *&v3)
      {
        v11 %= *&v3;
      }
    }

    else
    {
      v11 &= *&v3 - 1;
    }

    if (v11 != v4)
    {
      *(*a2 + 8 * v11) = v7;
      v10 = *a3;
    }
  }

  *v7 = v10;
  *a3 = 0;
  --a2[3];
  *result = a3;
  *(result + 8) = a2;
  *(result + 16) = 1;
  *(result + 17) = 0;
  *(result + 20) = 0;
  return result;
}

char **std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>,void *>>>>::~unique_ptr[abi:ne200100](char **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<unsigned int const,rtaid::Detector::NodeBook>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

std::__shared_weak_count **std::__destroy_at[abi:ne200100]<std::pair<unsigned int const,rtaid::Detector::NodeBook>,0>(uint64_t a1)
{
  result = *(a1 + 8);
  *(a1 + 8) = 0;
  if (result)
  {
    rtaid::DetectorNode::~DetectorNode(result);

    JUMPOUT(0x29C260F00);
  }

  return result;
}

void rtaid::DetectorNode::~DetectorNode(std::__shared_weak_count **this)
{
  v19 = *MEMORY[0x29EDCA608];
  {
    rtaid::get_log(void)::rtaid_os_log = os_log_create("com.apple.coreaudio", "aid");
  }

  v2 = rtaid::get_log(void)::rtaid_os_log;
  if (os_log_type_enabled(rtaid::get_log(void)::rtaid_os_log, OS_LOG_TYPE_INFO))
  {
    v3 = this + 1;
    if (*(this + 31) < 0)
    {
      v3 = *v3;
    }

    v7 = 136316418;
    v8 = "DetectorNode.cpp";
    v9 = 1024;
    v10 = 66;
    v11 = 1040;
    v12 = 19;
    v13 = 2080;
    v14 = "rtaid::DetectorNode]";
    v15 = 2048;
    v16 = this;
    v17 = 2080;
    v18 = v3;
    _os_log_impl(&dword_296C34000, v2, OS_LOG_TYPE_INFO, "[%s:%-5d %.*s:%p] destroyed %s", &v7, 0x36u);
  }

  v4 = this[53];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = this[27];
  if (v5)
  {
    this[28] = v5;
    operator delete(v5);
  }

  v6 = this[24];
  if (v6)
  {
    this[25] = v6;
    operator delete(v6);
  }

  if (*(this + 144) == 1)
  {
    ExtendedAudioBufferList_Destroy();
  }

  rtaid::NodeFormatConverter::~NodeFormatConverter((this + 5));
  std::unique_ptr<OpaqueAudioComponentInstance,applesauce::raii::v1::detail::opaque_deletion_functor<OpaqueAudioComponentInstance*,&(AudioComponentInstanceDispose)>>::reset[abi:ne200100](this + 4, 0);
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

void sub_296C3F6EC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void rtaid::NodeFormatConverter::~NodeFormatConverter(rtaid::NodeFormatConverter *this)
{
  v13 = *MEMORY[0x29EDCA608];
  rtaid::NodeFormatConverter::disposeConverter(this);
  {
    rtaid::get_log(void)::rtaid_os_log = os_log_create("com.apple.coreaudio", "aid");
  }

  v2 = rtaid::get_log(void)::rtaid_os_log;
  if (os_log_type_enabled(rtaid::get_log(void)::rtaid_os_log, OS_LOG_TYPE_INFO))
  {
    v3 = 136316162;
    v4 = "NodeFormatConverter.cpp";
    v5 = 1024;
    v6 = 29;
    v7 = 1040;
    v8 = 26;
    v9 = 2080;
    v10 = "rtaid::NodeFormatConverter]";
    v11 = 2048;
    v12 = this;
    _os_log_impl(&dword_296C34000, v2, OS_LOG_TYPE_INFO, "[%s:%-5d %.*s:%p] destroyed", &v3, 0x2Cu);
  }
}

void sub_296C3F830(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void rtaid::NodeFormatConverter::disposeConverter(rtaid::NodeFormatConverter *this)
{
  v14 = *MEMORY[0x29EDCA608];
  v2 = *(this + 11);
  if (v2)
  {
    AudioConverterDispose(v2);
    *(this + 11) = 0;
    {
      rtaid::get_log(void)::rtaid_os_log = os_log_create("com.apple.coreaudio", "aid");
    }

    v3 = rtaid::get_log(void)::rtaid_os_log;
    if (os_log_type_enabled(rtaid::get_log(void)::rtaid_os_log, OS_LOG_TYPE_INFO))
    {
      v4 = 136316162;
      v5 = "NodeFormatConverter.cpp";
      v6 = 1024;
      v7 = 93;
      v8 = 1040;
      v9 = 26;
      v10 = 2080;
      v11 = "rtaid::NodeFormatConverter]";
      v12 = 2048;
      v13 = this;
      _os_log_impl(&dword_296C34000, v3, OS_LOG_TYPE_INFO, "[%s:%-5d %.*s:%p] AudioConverterRef has been disposed", &v4, 0x2Cu);
    }
  }
}

OpaqueAudioComponentInstance *std::unique_ptr<OpaqueAudioComponentInstance,applesauce::raii::v1::detail::opaque_deletion_functor<OpaqueAudioComponentInstance*,&(AudioComponentInstanceDispose)>>::reset[abi:ne200100](OpaqueAudioComponentInstance **a1, OpaqueAudioComponentInstance *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    return AudioComponentInstanceDispose(result);
  }

  return result;
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = __sz + 1;

  memmove(this, __s, v3);
}

uint64_t std::__shared_ptr_pointer<std::__empty_state<char> *,std::shared_ptr<std::__empty_state<char>>::__shared_ptr_default_delete<std::__empty_state<char>,std::__empty_state<char>>,std::allocator<std::__empty_state<char>>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__empty_state<char>::~__empty_state(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x29C260F00);
}

void std::__alternate<char>::~__alternate(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  std::__owns_two_states<char>::~__owns_two_states(a1);

  JUMPOUT(0x29C260F00);
}

void std::__loop<char>::~__loop(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  std::__owns_two_states<char>::~__owns_two_states(a1);

  JUMPOUT(0x29C260F00);
}

void (__cdecl ***std::__owns_two_states<char>::~__owns_two_states(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  *a1 = &unk_2A1DEE430;
  v2 = a1[2];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    (*(*v3 + 1))(v3);
  }

  return a1;
}

std::locale *std::__bracket_expression<char,std::regex_traits<char>>::~__bracket_expression(std::locale *a1)
{
  v7 = a1 + 17;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v7);
  locale = a1[14].__locale_;
  if (locale)
  {
    a1[15].__locale_ = locale;
    operator delete(locale);
  }

  v7 = a1 + 11;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v7);
  v3 = a1[8].__locale_;
  if (v3)
  {
    a1[9].__locale_ = v3;
    operator delete(v3);
  }

  v4 = a1[5].__locale_;
  if (v4)
  {
    a1[6].__locale_ = v4;
    operator delete(v4);
  }

  std::locale::~locale(a1 + 2);
  v5 = a1[1].__locale_;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  return a1;
}

void std::__bracket_expression<char,std::regex_traits<char>>::~__bracket_expression(std::locale *a1)
{
  std::__bracket_expression<char,std::regex_traits<char>>::~__bracket_expression(a1);

  JUMPOUT(0x29C260F00);
}

void std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::string>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 48;
        std::__destroy_at[abi:ne200100]<std::pair<std::string,std::string>,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string,std::string>,0>(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t AudioIssueDetectorInitialize(unint64_t a1)
{
  v97 = *MEMORY[0x29EDCA608];
  if (AudioDSPAnalysisEnabled())
  {
    RealTimeAudioIssueDetectorInitialize();
  }

  SingletonManagerInstance();
  std::mutex::lock(&SingletonManagerInstance(void)::sInstance);
  v2 = std::__hash_table<std::__hash_value_type<long long,std::shared_ptr<rtaid::Detector>>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,std::shared_ptr<rtaid::Detector>>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,std::shared_ptr<rtaid::Detector>>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,std::shared_ptr<rtaid::Detector>>>>::find<long long>(a1);
  if (!v2)
  {
    v13 = 0xFFFFFFFFLL;
    goto LABEL_224;
  }

  v3 = *(v2 + 3);
  v4 = *(v2 + 4);
  v85 = v3;
  v86 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v3)
  {
    v13 = 0xFFFFFFFFLL;
    if (v4)
    {
      goto LABEL_223;
    }

    goto LABEL_224;
  }

  rtaid::GetClientIDMap(v2);
  v5 = std::__hash_table<std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>>>::find<unsigned int>(&rtaid::GetClientIDMap(void)::gClientIDMap, *v3);
  if (!v5)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v6 = v5 + 3;
  if (*(v5 + 47) < 0)
  {
    v6 = *v6;
  }

  v7 = &rtaid::GetReporterTypeInterestedMap(void)::gReporterTypeInterestedMap;
  {
    rtaid::get_log(void)::rtaid_os_log = os_log_create("com.apple.coreaudio", "aid");
  }

  v8 = rtaid::get_log(void)::rtaid_os_log;
  if (os_log_type_enabled(rtaid::get_log(void)::rtaid_os_log, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    *&buf[4] = "Manager.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 103;
    *&buf[18] = 2080;
    *&buf[20] = v6;
    _os_log_impl(&dword_296C34000, v8, OS_LOG_TYPE_DEBUG, "%s:%-5d initialize called on %s's detector", buf, 0x1Cu);
  }

  v9 = v85;
  rtaid::ConfigurationManager::DetermineConfiguration(qword_2A18A5400, v85, 1);
  rtaid::Manager::applyConfiguration(qword_2A18A5400, v85, v10);
  rtaid::Manager::applyTelephonyResets(*(qword_2A18A5400 + 48), *(qword_2A18A5400 + 56), &v85);
  *buf = &unk_2A1DEEC58;
  *&buf[8] = &SingletonManagerInstance(void)::sInstance;
  *&buf[24] = buf;
  v12 = (v9 + 88);
  v11 = *(v9 + 11);
  *(v9 + 11) = 0;
  if (v11 == (v9 + 64))
  {
    (*(*v11 + 32))(v11);
  }

  else if (v11)
  {
    (*(*v11 + 40))(v11);
  }

  v14 = *&buf[24];
  if (*&buf[24])
  {
    if (*&buf[24] == buf)
    {
      *v12 = v9 + 64;
      (*(*v14 + 24))(v14, v9 + 64);
      goto LABEL_25;
    }

    *v12 = *&buf[24];
    v12 = &buf[24];
  }

  *v12 = 0;
LABEL_25:
  std::__function::__value_func<void ()(rtaid::IssueDictionary)>::~__value_func[abi:ne200100](buf);
  v15 = (v9 + 24);
  while (1)
  {
    v15 = *v15;
    if (!v15)
    {
      break;
    }

    for (i = 0; i != 7; ++i)
    {
      v17 = v15[3];
      *(v17 + i + 159) = (*(v9 + 6) >> i) & 1;
      rtaid::DetectorNode::updateSilenceAnalyzerState(v17);
    }

    v18 = v15[3];
    rtaid::NodeFormatConverter::disposeConverter((v18 + 40));
    if (*(v18 + 40) != *(v18 + 80))
    {
      goto LABEL_108;
    }

    v19 = *(v18 + 48);
    if (v19 != *(v18 + 88))
    {
      goto LABEL_108;
    }

    if (*(v18 + 56) != *(v18 + 96))
    {
      goto LABEL_108;
    }

    if (*(v18 + 60) != *(v18 + 100))
    {
      goto LABEL_108;
    }

    v20 = *(v18 + 68);
    if (v20 != *(v18 + 108))
    {
      goto LABEL_108;
    }

    v21 = *(v18 + 72);
    if (v21 != *(v18 + 112))
    {
      goto LABEL_108;
    }

    v22 = *(v18 + 52);
    if (v19 != 1819304813)
    {
      if (v22 == *(v18 + 92))
      {
        goto LABEL_45;
      }

      goto LABEL_108;
    }

    v23 = v22 & 0x7FFFFFFF;
    if ((v22 & 0x7FFFFFFF) == 0)
    {
      v23 = *(v18 + 52);
    }

    v24 = *(v18 + 64);
    if (v24)
    {
      if ((v22 & 0x20) != 0)
      {
        v25 = 1;
      }

      else
      {
        v25 = *(v18 + 68);
      }

      if (v25)
      {
        v24 = 8 * (v24 / v25);
        v26 = v24 == v21;
        goto LABEL_53;
      }

      v24 = 0;
    }

    v26 = v21 == 0;
LABEL_53:
    v31 = v26;
    v32 = v23 & 0xFFFFFFBF;
    if (v31)
    {
      v32 |= 8u;
    }

    if ((v21 & 7) == 0 && v24 == v21)
    {
      v32 &= 0xFFFFFFAF;
    }

    if (v32)
    {
      v32 &= 0xFFFFFFBB;
    }

    if ((v32 & 8) != 0 && v21 <= 8)
    {
      v32 &= 2u;
    }

    if (v20 == 1)
    {
      v32 &= ~0x20u;
    }

    if (!v32)
    {
      v32 = 0x80000000;
    }

    v35 = *(v18 + 92);
    v36 = v35 & 0x7FFFFFFF;
    if ((v35 & 0x7FFFFFFF) == 0)
    {
      v36 = *(v18 + 92);
    }

    v37 = *(v18 + 104);
    if (v37)
    {
      if ((v35 & 0x20) != 0)
      {
        v38 = 1;
      }

      else
      {
        v38 = *(v18 + 68);
      }

      if (v38)
      {
        v37 = 8 * (v37 / v38);
        v39 = v37 == v21;
        goto LABEL_85;
      }

      v37 = 0;
    }

    v39 = v21 == 0;
LABEL_85:
    v40 = v39;
    v41 = v36 & 0xFFFFFFBF;
    if (v40)
    {
      v41 |= 8u;
    }

    v42 = (v21 & 7) == 0 && v37 == v21;
    v43 = v41 & 0xFFFFFFAF;
    if (!v42)
    {
      v43 = v41;
    }

    if (v43)
    {
      v43 &= 0xFFFFFFBB;
    }

    v44 = (v43 & 8) == 0 || v21 > 8;
    v45 = v43 & 2;
    if (v44)
    {
      v45 = v43;
    }

    if (v20 == 1)
    {
      v46 = v45 & 0xFFFFFFDF;
    }

    else
    {
      v46 = v45;
    }

    if (!v46)
    {
      v46 = 0x80000000;
    }

    if (v32 == v46)
    {
LABEL_45:
      {
        *(v7 + 36) = os_log_create("com.apple.coreaudio", "aid");
      }

      v27 = *(v7 + 36);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        CA::StreamDescription::AsString(&__p, (v18 + 40), v28, v29);
        p_p = &__p;
        if (v90 < 0)
        {
          p_p = *&__p.componentType;
        }

        *buf = 136316418;
        *&buf[4] = "NodeFormatConverter.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 81;
        *&buf[18] = 1040;
        *&buf[20] = 26;
        *&buf[24] = 2080;
        *&buf[26] = "rtaid::NodeFormatConverter]";
        *&buf[34] = 2048;
        *&buf[36] = v18 + 40;
        v93 = 2080;
        v94 = p_p;
        _os_log_impl(&dword_296C34000, v27, OS_LOG_TYPE_DEFAULT, "[%s:%-5d %.*s:%p] AudioConverterNew wasn't needed since incoming and outgoing format are equivalent: %s", buf, 0x36u);
        if (v90 < 0)
        {
          operator delete(*&__p.componentType);
        }
      }

      goto LABEL_142;
    }

LABEL_108:
    AudioConverterNew((v18 + 40), (v18 + 80), (v18 + 128));
    v47 = *(v18 + 128);
    if (v47)
    {
      {
        *(v7 + 36) = os_log_create("com.apple.coreaudio", "aid");
      }

      v49 = *(v7 + 36);
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
      {
        CA::StreamDescription::AsString(&__p, (v18 + 40), v50, v51);
        if (v90 >= 0)
        {
          v54 = &__p;
        }

        else
        {
          v54 = *&__p.componentType;
        }

        CA::StreamDescription::AsString(outInstance, (v18 + 80), v52, v53);
        v55 = outInstance;
        if (v88 < 0)
        {
          v55 = outInstance[0];
        }

        *buf = 136316674;
        *&buf[4] = "NodeFormatConverter.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 62;
        *&buf[18] = 1040;
        *&buf[20] = 26;
        *&buf[24] = 2080;
        *&buf[26] = "rtaid::NodeFormatConverter]";
        *&buf[34] = 2048;
        *&buf[36] = v18 + 40;
        v93 = 2080;
        v94 = v54;
        v95 = 2080;
        v96 = v55;
        _os_log_impl(&dword_296C34000, v49, OS_LOG_TYPE_DEFAULT, "[%s:%-5d %.*s:%p] AudioConverterNew succeeded with incoming format %s and outgoing format %s", buf, 0x40u);
        if (v88 < 0)
        {
          operator delete(outInstance[0]);
        }

        if (v90 < 0)
        {
          operator delete(*&__p.componentType);
        }

        v7 = &rtaid::GetReporterTypeInterestedMap(void)::gReporterTypeInterestedMap;
      }

      if (*(v18 + 120) != 1)
      {
        goto LABEL_142;
      }

      __p.componentType = 1;
      v13 = AudioConverterSetProperty(*(v18 + 128), 0x646D6978u, 4u, &__p);
      if (!v13)
      {
        {
          *(v7 + 36) = os_log_create("com.apple.coreaudio", "aid");
        }

        v65 = *(v7 + 36);
        if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316162;
          *&buf[4] = "NodeFormatConverter.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 74;
          *&buf[18] = 1040;
          *&buf[20] = 26;
          *&buf[24] = 2080;
          *&buf[26] = "rtaid::NodeFormatConverter]";
          *&buf[34] = 2048;
          *&buf[36] = v18 + 40;
          _os_log_impl(&dword_296C34000, v65, OS_LOG_TYPE_DEFAULT, "[%s:%-5d %.*s:%p] AudioConverterSetProperty for downmixing set successfully", buf, 0x2Cu);
        }

LABEL_142:
        if (*(v18 + 128))
        {
          v66 = ExtendedAudioBufferList_CreateWithFormat();
          v67 = v66;
          v68 = *(v18 + 88);
          if ((v68 == 1885564203 || v68 == 1819304813) && (*(v18 + 92) & 0x20) != 0)
          {
            if (!v66)
            {
LABEL_225:
              exception = __cxa_allocate_exception(0x10uLL);
              std::logic_error::logic_error(exception, "ExtendedAudioBufferList_CreateWithFormat failed");
            }
          }

          else if (!v66)
          {
            goto LABEL_225;
          }

          ExtendedAudioBufferList_Prepare();
          if (*(v18 + 144) != 1)
          {
            *(v18 + 144) = 1;
          }

          *(v18 + 136) = v67;
          ExtendedAudioBufferList_Destroy();
        }

        if ((*(v18 + 159) & 1) != 0 || (*(v18 + 152) & 1) != 0 || (*(v18 + 160) & 1) != 0 || (*(v18 + 153) & 1) != 0 || (*(v18 + 161) & 1) != 0 || *(v18 + 154) == 1)
        {
          {
            *(v7 + 36) = os_log_create("com.apple.coreaudio", "aid");
          }

          v69 = *(v7 + 36);
          if (os_log_type_enabled(v69, OS_LOG_TYPE_INFO))
          {
            *buf = 136316162;
            *&buf[4] = "DetectorNode.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 77;
            *&buf[18] = 1040;
            *&buf[20] = 19;
            *&buf[24] = 2080;
            *&buf[26] = "rtaid::DetectorNode]";
            *&buf[34] = 2048;
            *&buf[36] = v18;
            _os_log_impl(&dword_296C34000, v69, OS_LOG_TYPE_INFO, "[%s:%-5d %.*s:%p] adding silenceNonFiniteAnalyzer", buf, 0x2Cu);
          }

          __p.componentFlagsMask = 0;
          *&__p.componentType = *"xfuaalislppa";
          Next = AudioComponentFindNext(0, &__p);
          outInstance[0] = 0;
          v71 = AudioComponentInstanceNew(Next, outInstance);
          if (outInstance[0])
          {
            std::unique_ptr<OpaqueAudioComponentInstance,applesauce::raii::v1::detail::opaque_deletion_functor<OpaqueAudioComponentInstance*,&(AudioComponentInstanceDispose)>>::reset[abi:ne200100]((v18 + 32), outInstance[0]);
            v72 = *(v18 + 96);
            *buf = *(v18 + 80);
            *&buf[16] = v72;
            *&buf[32] = *(v18 + 112);
            AudioUnitSetProperty(outInstance[0], 8u, 1u, 0, buf, 0x28u);
            AudioUnitSetProperty(outInstance[0], 8u, 2u, 0, buf, 0x28u);
            AudioUnitSetProperty(outInstance[0], 0xEu, 0, 0, v18, 4u);
            v13 = AudioUnitInitialize(outInstance[0]);
            if (v13)
            {
              std::unique_ptr<OpaqueAudioComponentInstance,applesauce::raii::v1::detail::opaque_deletion_functor<OpaqueAudioComponentInstance*,&(AudioComponentInstanceDispose)>>::reset[abi:ne200100]((v18 + 32), 0);
            }

            else
            {
              if ((*(v18 + 160) & 1) == 0 && (*(v18 + 153) & 1) == 0 && (*(v18 + 161) & 1) == 0 && (*(v18 + 154) & 1) == 0)
              {
                inData = 1;
                AudioUnitSetProperty(outInstance[0], 0xFA01u, 0, 0, &inData, 4u);
              }

              if ((*(v18 + 161) & 1) != 0 || *(v18 + 154) == 1)
              {
                inData = 1;
                AudioUnitSetProperty(outInstance[0], 0xFA03u, 0, 0, &inData, 4u);
              }

              if (*(v18 + 48) == 1819304813 && *(v18 + 60) == 1)
              {
                v73 = *(v18 + 64);
                if (v73 == *(v18 + 56))
                {
                  v74 = *(v18 + 72);
                  if (v73 >= v74 >> 3)
                  {
                    v75 = *(v18 + 68);
                    if (v75)
                    {
                      v76 = *(v18 + 52);
                      if ((v76 & 0x20) != 0 || (v26 = v73 == v73 / v75 * v75, v73 /= v75, v26))
                      {
                        if ((*(v18 + 52) & 7) == 4 && 8 * v73 == v74)
                        {
                          v77 = (v76 >> 7) & 0x3F;
                          if ((v77 != 24 || v73 != 4) && !v77 && v73 == 2)
                          {
                            inData = 1;
                            AudioUnitSetProperty(outInstance[0], 0xFA02u, 0, 0, &inData, 4u);
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }

          else
          {
            v13 = v71;
          }
        }

        else
        {
          std::unique_ptr<OpaqueAudioComponentInstance,applesauce::raii::v1::detail::opaque_deletion_functor<OpaqueAudioComponentInstance*,&(AudioComponentInstanceDispose)>>::reset[abi:ne200100]((v18 + 32), 0);
          v13 = 0;
        }

        goto LABEL_189;
      }

      {
        *(v7 + 36) = os_log_create("com.apple.coreaudio", "aid");
      }

      v57 = *(v7 + 36);
      if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316418;
        *&buf[4] = "NodeFormatConverter.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 70;
        *&buf[18] = 1040;
        *&buf[20] = 26;
        *&buf[24] = 2080;
        *&buf[26] = "rtaid::NodeFormatConverter]";
        *&buf[34] = 2048;
        *&buf[36] = v18 + 40;
        v93 = 1024;
        LODWORD(v94) = v13;
        _os_log_impl(&dword_296C34000, v57, OS_LOG_TYPE_ERROR, "[%s:%-5d %.*s:%p] AudioConverterSetProperty for downmixing failed with error : %d", buf, 0x32u);
      }
    }

    else
    {
      {
        *(v7 + 36) = os_log_create("com.apple.coreaudio", "aid");
      }

      v58 = *(v7 + 36);
      if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
      {
        CA::StreamDescription::AsString(&__p, (v18 + 40), v59, v60);
        if (v90 >= 0)
        {
          v63 = &__p;
        }

        else
        {
          v63 = *&__p.componentType;
        }

        CA::StreamDescription::AsString(outInstance, (v18 + 80), v61, v62);
        v64 = outInstance;
        if (v88 < 0)
        {
          v64 = outInstance[0];
        }

        *buf = 136316674;
        *&buf[4] = "NodeFormatConverter.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 57;
        *&buf[18] = 1040;
        *&buf[20] = 26;
        *&buf[24] = 2080;
        *&buf[26] = "rtaid::NodeFormatConverter]";
        *&buf[34] = 2048;
        *&buf[36] = v18 + 40;
        v93 = 2080;
        v94 = v63;
        v95 = 2080;
        v96 = v64;
        _os_log_impl(&dword_296C34000, v58, OS_LOG_TYPE_ERROR, "[%s:%-5d %.*s:%p] AudioConverterNew failed with incoming format %s and outgoing format %s", buf, 0x40u);
        if (v88 < 0)
        {
          operator delete(outInstance[0]);
        }

        if (v90 < 0)
        {
          operator delete(*&__p.componentType);
        }

        v13 = 4294967293;
        v7 = &rtaid::GetReporterTypeInterestedMap(void)::gReporterTypeInterestedMap;
      }

      else
      {
        v13 = 4294967293;
      }
    }

LABEL_189:
    if (**(v18 + 416) == 1)
    {
      if (*(v18 + 108) >= 4u)
      {
        v78 = 4;
      }

      else
      {
        v78 = *(v18 + 108);
      }
    }

    else
    {
      v78 = 1;
    }

    {
      *(v7 + 36) = os_log_create("com.apple.coreaudio", "aid");
    }

    v79 = *(v7 + 36);
    if (os_log_type_enabled(v79, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136316418;
      *&buf[4] = "DetectorNode.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 141;
      *&buf[18] = 1040;
      *&buf[20] = 19;
      *&buf[24] = 2080;
      *&buf[26] = "rtaid::DetectorNode]";
      *&buf[34] = 2048;
      *&buf[36] = v18;
      v93 = 1024;
      LODWORD(v94) = v78;
      _os_log_impl(&dword_296C34000, v79, OS_LOG_TYPE_DEBUG, "[%s:%-5d %.*s:%p] rms analysis setup for %d channels", buf, 0x32u);
    }

    std::vector<float>::resize((v18 + 192), v78);
    std::vector<float>::resize((v18 + 216), v78);
    v80 = *(v18 + 40) * 0.5;
    *(v18 + 240) = (*(v18 + 92) & 0x20) == 0;
    *(v18 + 252) = v80;
    *(v18 + 4) = v13 == 0;
    {
      *(v7 + 36) = os_log_create("com.apple.coreaudio", "aid");
    }

    v81 = *(v7 + 36);
    if (os_log_type_enabled(v81, OS_LOG_TYPE_INFO))
    {
      *buf = 136316418;
      *&buf[4] = "DetectorNode.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 150;
      *&buf[18] = 1040;
      *&buf[20] = 19;
      *&buf[24] = 2080;
      *&buf[26] = "rtaid::DetectorNode]";
      *&buf[34] = 2048;
      *&buf[36] = v18;
      v93 = 1024;
      LODWORD(v94) = v13;
      _os_log_impl(&dword_296C34000, v81, OS_LOG_TYPE_INFO, "[%s:%-5d %.*s:%p] initialized with err = %d", buf, 0x32u);
    }

    if (v13)
    {
      goto LABEL_219;
    }
  }

  v13 = 0;
LABEL_219:
  {
    *(v7 + 36) = os_log_create("com.apple.coreaudio", "aid");
  }

  v82 = *(v7 + 36);
  if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136316418;
    *&buf[4] = "Detector.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 56;
    *&buf[18] = 1040;
    *&buf[20] = 15;
    *&buf[24] = 2080;
    *&buf[26] = "rtaid::Detector]";
    *&buf[34] = 2048;
    *&buf[36] = v9;
    v93 = 1024;
    LODWORD(v94) = v13;
    _os_log_impl(&dword_296C34000, v82, OS_LOG_TYPE_DEFAULT, "[%s:%-5d %.*s:%p] initialized with error = %d", buf, 0x32u);
  }

  v4 = v86;
  if (v86)
  {
LABEL_223:
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

LABEL_224:
  std::mutex::unlock(&SingletonManagerInstance(void)::sInstance);
  return v13;
}

void sub_296C41004(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__value_func<void ()(rtaid::IssueDictionary)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<rtaid::Manager::InitializeDetector(long long)::$_0,std::allocator<rtaid::Manager::InitializeDetector(long long)::$_0>,void ()(rtaid::IssueDictionary)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A1DEEC58;
  a2[1] = v2;
  return result;
}

void caulk::make_string(caulk *this@<X0>, uint64_t a2@<X8>, ...)
{
  va_start(va, a2);
  v4 = vsnprintf(0, 0, this, va);
  if (v4 <= 0)
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    std::string::resize(a2, (v4 + 1), 0);
    v5 = *(a2 + 23);
    if (v5 >= 0)
    {
      v6 = a2;
    }

    else
    {
      v6 = *a2;
    }

    if (v5 >= 0)
    {
      v7 = *(a2 + 23);
    }

    else
    {
      v7 = *(a2 + 8);
    }

    v8 = vsnprintf(v6, v7, this, va);
    std::string::resize(a2, v8, 0);
  }
}

void CA::StreamDescription::AsString(CA::StreamDescription *this, void *a2, double a3, int8x8_t a4)
{
  v59 = *MEMORY[0x29EDCA608];
  v6 = *(a2 + 2);
  if (v6 == 1718773105)
  {
    caulk::make_string("%2u ch, %6.0f Hz, 'freq'", this, *(a2 + 7), *a2);
    return;
  }

  if (v6 != 1819304813)
  {
    goto LABEL_19;
  }

  if (*(a2 + 5) != 1)
  {
    goto LABEL_19;
  }

  v7 = *(a2 + 6);
  if (v7 != *(a2 + 4))
  {
    goto LABEL_19;
  }

  v8 = *(a2 + 8);
  if (v7 < v8 >> 3)
  {
    goto LABEL_19;
  }

  v9 = *(a2 + 7);
  if (!v9)
  {
    goto LABEL_19;
  }

  v10 = *(a2 + 3);
  if ((v10 & 0x20) == 0)
  {
    v15 = v7 == v7 / v9 * v9;
    v7 /= v9;
    if (!v15)
    {
      goto LABEL_19;
    }
  }

  if ((v10 & 2) != 0 || 8 * v7 != v8)
  {
    goto LABEL_19;
  }

  if (v10)
  {
    if ((v10 & 0x1F84) == 0)
    {
      if (v7 == 4)
      {
        v12 = 1;
        goto LABEL_163;
      }

      v15 = v7 == 8;
      v53 = v7 == 8;
      if (v15)
      {
        v12 = 4 * v53;
        goto LABEL_163;
      }
    }

LABEL_19:
    v13 = *(a2 + 7);
    v14 = *a2;
    if (v13)
    {
      v15 = 0;
    }

    else
    {
      v15 = v6 == 0;
    }

    if (v15 && v14 == 0.0)
    {
      caulk::make_string("%2u ch, %6.0f Hz", this, 0, *a2);
      return;
    }

    a4.i32[0] = bswap32(v6);
    v16 = vzip1_s8(a4, *&v14);
    v17.i64[0] = 0x1F0000001FLL;
    v17.i64[1] = 0x1F0000001FLL;
    v18.i64[0] = 0x5F0000005FLL;
    v18.i64[1] = 0x5F0000005FLL;
    *(&v58.__r_.__value_.__s + 23) = 4;
    LODWORD(v58.__r_.__value_.__l.__data_) = vuzp1_s8(vbsl_s8(vmovn_s32(vcgtq_u32(v18, vsraq_n_s32(v17, vshlq_n_s32(vmovl_u16(v16), 0x18uLL), 0x18uLL))), v16, 0x2E002E002E002ELL), *&v14).u32[0];
    v58.__r_.__value_.__s.__data_[4] = 0;
    caulk::make_string("%2u ch, %6.0f Hz, %s (0x%08X) ", &v56, v13, *&v14, &v58, *(a2 + 3));
    if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v58.__r_.__value_.__l.__data_);
    }

    v19 = *(a2 + 2);
    if (v19 <= 1819304812)
    {
      if (v19 != 1634492771 && v19 != 1634497332 && v19 != 1718378851)
      {
LABEL_70:
        caulk::make_string("%u bits/channel, %u bytes/packet, %u frames/packet, %u bytes/frame", &v58, *(a2 + 8), *(a2 + 4), *(a2 + 5), *(a2 + 6));
        if ((v56.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v31 = &v56;
        }

        else
        {
          v31 = v56.__r_.__value_.__r.__words[0];
        }

        if ((v56.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v56.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v56.__r_.__value_.__l.__size_;
        }

LABEL_62:
        v33 = std::string::insert(&v58, 0, v31, size);
        v34 = *&v33->__r_.__value_.__l.__data_;
        *(this + 2) = *(&v33->__r_.__value_.__l + 2);
        *this = v34;
        v33->__r_.__value_.__l.__size_ = 0;
        v33->__r_.__value_.__r.__words[2] = 0;
        v33->__r_.__value_.__r.__words[0] = 0;
        if ((SHIBYTE(v58.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_65;
        }

        v35 = v58.__r_.__value_.__r.__words[0];
LABEL_64:
        operator delete(v35);
LABEL_65:
        if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v56.__r_.__value_.__l.__data_);
        }

        return;
      }

LABEL_45:
      v28 = *(a2 + 3);
      if ((v28 - 1) < 4 || !v28 && (v19 == 1634497332 || v19 == 1936487278 || v19 == 1936487267))
      {
        caulk::make_string("from %u-bit source, ", &v58, CA::StreamDescription::AsString(void)const::kSourceBits[v28]);
        if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v29 = &v58;
        }

        else
        {
          v29 = v58.__r_.__value_.__r.__words[0];
        }

        if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v30 = HIBYTE(v58.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v30 = v58.__r_.__value_.__l.__size_;
        }

        std::string::append(&v56, v29, v30);
        if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v58.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        std::string::append(&v56, "from UNKNOWN source bit depth, ", 0x1FuLL);
      }

      caulk::make_string("%u frames/packet", &v58, *(a2 + 5));
      if ((v56.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v31 = &v56;
      }

      else
      {
        v31 = v56.__r_.__value_.__r.__words[0];
      }

      if ((v56.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v56.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v56.__r_.__value_.__l.__size_;
      }

      goto LABEL_62;
    }

    if (v19 == 1936487278 || v19 == 1936487267)
    {
      goto LABEL_45;
    }

    if (v19 != 1819304813)
    {
      goto LABEL_70;
    }

    v20 = *(a2 + 3);
    v21 = *(a2 + 6);
    v22 = v20 & 0x20;
    v23 = "";
    if (!v21)
    {
      goto LABEL_37;
    }

    if ((v20 & 0x20) != 0)
    {
      v24 = 1;
    }

    else
    {
      v24 = *(a2 + 7);
      if (!v24)
      {
        v22 = 0;
LABEL_37:
        v25 = " signed";
        if ((v20 & 4) == 0)
        {
          v25 = " unsigned";
        }

        if (v20)
        {
          v26 = "float";
        }

        else
        {
          v26 = "integer";
        }

        if (v20)
        {
          v27 = "";
        }

        else
        {
          v27 = v25;
        }

LABEL_102:
        v58.__r_.__value_.__s.__data_[0] = 0;
        if (v22)
        {
          v40 = ", deinterleaved";
        }

        else
        {
          v40 = "";
        }

        v37 = "";
        v41 = "";
        goto LABEL_106;
      }
    }

    v36 = v21 / v24;
    if (v21 / v24 < 2)
    {
      v39 = " signed";
      if ((v20 & 4) == 0)
      {
        v39 = " unsigned";
      }

      if (v20)
      {
        v26 = "float";
      }

      else
      {
        v26 = "integer";
      }

      if (v20)
      {
        v27 = "";
      }

      else
      {
        v27 = v39;
      }

      if (v24 > v21)
      {
        goto LABEL_102;
      }

      v36 = 1;
      v37 = "";
    }

    else
    {
      if ((v20 & 2) != 0)
      {
        v37 = " big-endian";
      }

      else
      {
        v37 = " little-endian";
      }

      v38 = " unsigned";
      if ((v20 & 4) != 0)
      {
        v38 = " signed";
      }

      if (v20)
      {
        v26 = "float";
      }

      else
      {
        v26 = "integer";
      }

      if (v20)
      {
        v27 = "";
      }

      else
      {
        v27 = v38;
      }
    }

    v42 = *(a2 + 7);
    if ((v20 & 0x20) != 0)
    {
      v43 = 1;
    }

    else
    {
      v43 = *(a2 + 7);
    }

    if (v43)
    {
      v43 = 8 * (v21 / v43);
    }

    if (v43 == *(a2 + 8))
    {
      v58.__r_.__value_.__s.__data_[0] = 0;
    }

    else
    {
      if ((v20 & 8) != 0)
      {
        v44 = "";
      }

      else
      {
        v44 = "un";
      }

      snprintf(&v58, 0x20uLL, "%spacked in %u bytes", v44, v36);
      v21 = *(a2 + 6);
      v20 = *(a2 + 3);
      if (!v21)
      {
        v45 = 0;
        v22 = *(a2 + 3) & 0x20;
        goto LABEL_128;
      }

      v42 = *(a2 + 7);
      v22 = *(a2 + 3) & 0x20;
    }

    if (v22)
    {
      v45 = 1;
    }

    else
    {
      v45 = v42;
    }

    if (v45)
    {
      v45 = 8 * (v21 / v45);
    }

LABEL_128:
    v46 = *(a2 + 8);
    v47 = " high-aligned";
    if ((v20 & 0x10) == 0)
    {
      v47 = " low-aligned";
    }

    if ((v46 & 7) == 0 && v45 == v46)
    {
      v41 = "";
    }

    else
    {
      v41 = v47;
    }

    if (v22)
    {
      v40 = ", deinterleaved";
    }

    else
    {
      v40 = "";
    }

    if (v58.__r_.__value_.__s.__data_[0])
    {
      v23 = ", ";
LABEL_141:
      if (((v20 >> 7) & 0x3F) != 0)
      {
        snprintf(__str, 0x14uLL, "%u.%u");
      }

      else
      {
        snprintf(__str, 0x14uLL, "%u");
      }

      caulk::make_string("%s-bit%s%s %s%s%s%s%s", &v55, __str, v37, v27, v26, v23, &v58, v41, v40);
      if ((v56.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v49 = &v56;
      }

      else
      {
        v49 = v56.__r_.__value_.__r.__words[0];
      }

      if ((v56.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v50 = HIBYTE(v56.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v50 = v56.__r_.__value_.__l.__size_;
      }

      v51 = std::string::insert(&v55, 0, v49, v50);
      v52 = *&v51->__r_.__value_.__l.__data_;
      *(this + 2) = *(&v51->__r_.__value_.__l + 2);
      *this = v52;
      v51->__r_.__value_.__l.__size_ = 0;
      v51->__r_.__value_.__r.__words[2] = 0;
      v51->__r_.__value_.__r.__words[0] = 0;
      if ((SHIBYTE(v55.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_65;
      }

      v35 = v55.__r_.__value_.__r.__words[0];
      goto LABEL_64;
    }

LABEL_106:
    if (*v41)
    {
      v23 = ", ";
    }

    goto LABEL_141;
  }

  if ((v10 & 4) == 0)
  {
    goto LABEL_19;
  }

  v11 = (v10 >> 7) & 0x3F;
  if (v11 != 24 || v7 != 4)
  {
    if (!v11 && v7 == 4)
    {
      v12 = 5;
      goto LABEL_163;
    }

    if (!v11 && v7 == 2)
    {
      v12 = 2;
      goto LABEL_163;
    }

    goto LABEL_19;
  }

  v12 = 3;
LABEL_163:
  if ((v10 & 0x20) != 0)
  {
    v54 = ", deinterleaved";
  }

  else
  {
    v54 = ", interleaved";
  }

  if (v9 == 1)
  {
    v54 = "";
  }

  caulk::make_string("%2u ch, %6.0f Hz, %s%s", this, v9, *a2, *(&off_29EE525E0 + v12), v54);
}

void sub_296C418E8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void std::vector<float>::resize(char **a1, unint64_t a2)
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

    v11 = (v3 + 4 * a2);
  }

  else
  {
    v6 = a2 - v5;
    v7 = a1[2];
    if (v6 > (v7 - v4) >> 2)
    {
      if (!(a2 >> 62))
      {
        v8 = &v7[-v3];
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

        if (!(v10 >> 62))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      std::vector<ADAMAudioDataAnalysisType>::__throw_length_error[abi:ne200100]();
    }

    bzero(a1[1], 4 * v6);
    v11 = &v4[4 * v6];
  }

  a1[1] = v11;
}

uint64_t rtaid::DetectorNode::AnalyzeABL(rtaid::DetectorNode *this, const AudioTimeStamp *a2, const AudioBufferList *a3, unsigned int a4)
{
  v79 = *MEMORY[0x29EDCA608];
  if (*(this + 42) > 3u)
  {
    return 0;
  }

  v6 = 0;
  atomic_compare_exchange_strong(this + 408, &v6, 1u);
  if (v6)
  {
    v41 = *(this + 42);
    v4 = 4294967292;
    if (v41 <= 3)
    {
      *(this + 42) = v41 + 1;
      *(this + v41 + 43) = -4;
    }

    return v4;
  }

  if (*(this + 4) != 1 || (v7 = a4, v8 = *&a2->mRateScalar, *&inTimeStamp.mSampleTime = *&a2->mSampleTime, *&inTimeStamp.mRateScalar = v8, v9 = *&a2->mSMPTETime.mHours, *&inTimeStamp.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes, *&inTimeStamp.mSMPTETime.mHours = v9, !a4))
  {
    v4 = 0;
    goto LABEL_54;
  }

  v11 = 0;
  v50 = this + 172;
  p_mData = &a3->mBuffers[0].mData;
  while (1)
  {
    if (v7 >= 0x400)
    {
      v12 = 1024;
    }

    else
    {
      v12 = v7;
    }

    mNumberBuffers = a3->mNumberBuffers;
    MEMORY[0x2A1C7C4A8]();
    v15 = &v50 - v14;
    bzero(&v50 - v14, v16 + 24);
    *v15 = mNumberBuffers;
    if (mNumberBuffers)
    {
      v17 = *(this + 16);
      v18 = v17 * v12;
      v19 = (v11 * v17);
      v20 = v15 + 16;
      v21 = p_mData;
      while (1)
      {
        v22 = *(v21 - 1);
        *(v20 - 2) = *(v21 - 2);
        *(v20 - 1) = v18;
        *v20 = *v21 + v19;
        if (v18 > v22)
        {
          break;
        }

        v21 += 2;
        v20 += 2;
        if (!--mNumberBuffers)
        {
          goto LABEL_14;
        }
      }

      v43 = *(this + 42);
      v4 = 4294967246;
      if (v43 < 4)
      {
        goto LABEL_57;
      }

      goto LABEL_54;
    }

LABEL_14:
    v23 = *(this + 16);
    if (v23)
    {
      break;
    }

LABEL_21:
    if ((*(this + 164) & 1) != 0 || (*(this + 157) & 1) != 0 || (*(this + 165) & 1) != 0 || *(this + 158) == 1)
    {
      if (*(this + 25) != *(this + 24))
      {
        v28 = 0;
        v29 = *(v15 + 2);
        v30 = v15 + 8;
        do
        {
          __C = 0.0;
          v31 = v15 + 8;
          v32 = v29;
          if ((*(this + 240) & 1) == 0)
          {
            v32 = *(v30 + 1);
            v31 = v30;
          }

          vDSP_svesq(v32, *v31, &__C, v12);
          *(*(this + 24) + 4 * v28) = __C + *(*(this + 24) + 4 * v28);
          v54 = 0.0;
          v33 = v15 + 8;
          v34 = v29;
          if ((*(this + 240) & 1) == 0)
          {
            v34 = *(v30 + 1);
            v33 = v30;
          }

          vDSP_maxmgv(v34, *v33, &v54, v12);
          v35.n128_f32[0] = v54;
          v36 = *(this + 27);
          if (v54 > *(v36 + 4 * v28))
          {
            *(v36 + 4 * v28) = v54;
          }

          if (!v28)
          {
            if ((*(**(*(this + 52) + 32) + 48))(*(*(this + 52) + 32), v35) && v54 >= 0.95 && (v53 = 0.0, vDSP_sve(*(v15 + 2), *(v15 + 2), &v53, v12), ((v53 * v53) / __C) >= 0.95))
            {
              v37 = *(this + 62) + v12;
              *(this + 62) = v37;
              if ((*(this + 256) & 1) == 0 && *(this + 63) - 1 < v37)
              {
                *(this + 256) = 1;
              }
            }

            else
            {
              *(this + 256) = 0;
              *(this + 62) = 0;
            }
          }

          ++v29;
          ++v28;
          v30 += 16;
        }

        while (v28 < (*(this + 25) - *(this + 24)) >> 2);
      }

      *(this + 61) += v12;
    }

    v38 = *(this + 4);
    if (v38)
    {
      v39 = AudioUnitProcess(v38, 0, &inTimeStamp, v12, v15);
      v4 = v39;
      if (v39)
      {
        v40 = *(this + 42);
        if (v40 <= 3)
        {
          *(this + 42) = v40 + 1;
          *&v50[4 * v40] = v39;
        }
      }
    }

    else
    {
      v4 = 0;
    }

    v11 += v12;
    inTimeStamp.mSampleTime = inTimeStamp.mSampleTime + v12;
    v7 -= v12;
    if (!v7)
    {
      goto LABEL_54;
    }
  }

  v24 = *(this + 17);
  v25 = *(v24 + 48);
  if (*(v24 + 48))
  {
    v26 = 4 * *this;
    v27 = (v24 + 60);
    do
    {
      *v27 = v26 * *(v27 - 1);
      v27 += 4;
      --v25;
    }

    while (v25);
  }

  v4 = AudioConverterConvertComplexBuffer(v23, v12, v15, (v24 + 48));
  if (!v4)
  {
    if (*(this + 16))
    {
      v15 = (*(this + 17) + 48);
    }

    goto LABEL_21;
  }

  {
    rtaid::get_log(void)::rtaid_os_log = os_log_create("com.apple.coreaudio", "aid");
  }

  v44 = rtaid::get_log(void)::rtaid_os_log;
  if (os_log_type_enabled(rtaid::get_log(void)::rtaid_os_log, OS_LOG_TYPE_ERROR))
  {
    v45 = (this + 8);
    if (*(this + 31) < 0)
    {
      v45 = *v45;
    }

    v46 = *(v15 + 3);
    v47 = *v15;
    v48 = *(v24 + 60);
    v49 = *(v24 + 48);
    __C = 4.8162e-34;
    v56 = "DetectorNode.cpp";
    v57 = 1024;
    v58 = 517;
    v59 = 1040;
    v60 = 19;
    v61 = 2080;
    v62 = "rtaid::DetectorNode]";
    v63 = 2048;
    v64 = this;
    v65 = 1024;
    v66 = v4;
    v67 = 2080;
    v68 = v45;
    v69 = 1024;
    v70 = v12;
    v71 = 1024;
    v72 = v46;
    v73 = 1024;
    v74 = v47;
    v75 = 1024;
    v76 = v48;
    v77 = 1024;
    v78 = v49;
    _os_log_impl(&dword_296C34000, v44, OS_LOG_TYPE_ERROR, "[%s:%-5d %.*s:%p] Caught converter error (%d) at %s, %d frames (%d %d) vs (%d %d)\n", &__C, 0x5Au);
  }

  v43 = *(this + 42);
  if (v43 <= 3)
  {
LABEL_57:
    *(this + 42) = v43 + 1;
    *&v50[4 * v43] = v4;
  }

LABEL_54:
  atomic_store(0, this + 408);
  return v4;
}

uint64_t rtaid::AudioStatisticsSPIImplementation::GetAudioServiceType(rtaid::AudioStatisticsSPIImplementation *this, uint64_t a2)
{
  if (AudioStatisticsLibraryLoader(void)::once != -1)
  {
    dispatch_once(&AudioStatisticsLibraryLoader(void)::once, &__block_literal_global_218);
  }

  if (AudioStatisticsLibraryLoader(void)::libSym)
  {
    return AudioStatisticsLibraryLoader(void)::libSym(a2);
  }

  else
  {
    return 0xFFFFLL;
  }
}

uint64_t std::__function::__func<rtaid::Manager::InitializeDetector(long long)::$_0,std::allocator<rtaid::Manager::InitializeDetector(long long)::$_0>,void ()(rtaid::IssueDictionary)>::operator()(uint64_t a1, const void *a2)
{
  __dst[62] = *MEMORY[0x29EDCA608];
  memcpy(__dst, a2, 0x1F0uLL);
  v6 = *(a1 + 8);
  if (*(v6 + 208) == 1)
  {
    result = [*(v6 + 200) isConnected];
  }

  else
  {
    result = 1;
  }

  if (HIDWORD(__dst[32]) != 5)
  {
    goto LABEL_19;
  }

  if (*(v6 + 176) < 1.0)
  {
    return result;
  }

  if (LODWORD(__dst[32]) == 7)
  {
    if (__dst[0] == 0x6374756F2D6F6972 && *(__dst + 5) == 0x746E65696C637475)
    {
      goto LABEL_10;
    }
  }

  else if (LODWORD(__dst[32]) == 1 && !LOBYTE(__dst[33]) && __dst[0] == 0x646E616265736142)
  {
LABEL_10:
    v8 = *(&__dst[35] + 1);
    *(v6 + 180) = HIDWORD(__dst[35]);
    *(v6 + 188) = __dst[36];
    goto LABEL_16;
  }

  *(v6 + 184) = HIDWORD(__dst[35]);
  *(v6 + 192) = __dst[36];
  v8 = *(v6 + 180);
LABEL_16:
  if (v8 == -120.0)
  {
    return result;
  }

  v4.n128_u32[0] = *(v6 + 184);
  v5.n128_u32[0] = -1024458752;
  if (v4.n128_f32[0] == -120.0)
  {
    return result;
  }

  HIDWORD(__dst[35]) = *(v6 + 184);
  *&__dst[36] = v8;
  HIDWORD(__dst[36]) = *(v6 + 192);
  LODWORD(__dst[37]) = *(v6 + 188);
  v3.n128_u64[0] = vdup_n_s32(0xC2F00000);
  *(v6 + 180) = v3.n128_u64[0];
LABEL_19:
  v10 = atomic_load((v6 + 172));
  v11 = 1;
  atomic_compare_exchange_strong((v6 + 173), &v11, v11);
  v12 = v11 == 1;
  if (HIDWORD(__dst[32]) == 1)
  {
    if (LOBYTE(__dst[33]))
    {
      v15 = 0;
    }

    else
    {
      v15 = v11 == 1;
    }

    if (!v15)
    {
      v16 = 0;
      v17 = LODWORD(__dst[32]) == 3;
      v18 = LODWORD(__dst[32]) == 4;
      v19 = BYTE4(__dst[39]);
      if (BYTE4(__dst[39]))
      {
        v20 = LODWORD(__dst[32]) == 2;
      }

      else
      {
        v20 = 0;
      }

      v21 = v20;
      if (BYTE4(__dst[39]) && ((v18 ^ v17) & 1) == 0)
      {
        v16 = 0;
        v22 = &__dst[56];
        do
        {
          v24 = *v22++;
          v23 = v24;
          if (LODWORD(__dst[32]) != 2 || v23 != 13)
          {
            v21 = 0;
            LOBYTE(v17) = (v23 == 2) | v17;
            LOBYTE(v18) = (v23 == 1) | v18;
            v16 |= v23 == 4;
          }

          --v19;
        }

        while (v19);
      }

      v4.n128_u32[0] = HIDWORD(__dst[35]);
      v3.n128_f32[0] = HIDWORD(__dst[33]) / *(&__dst[35] + 1);
      v5.n128_f32[0] = HIDWORD(__dst[34]) / *(&__dst[35] + 1);
      if (v21)
      {
        if (v3.n128_f32[0] > 0.0)
        {
          return (*(**(*(v6 + 224) + 32) + 24))(*(*(v6 + 224) + 32), __dst, v3, v4, v5);
        }

        if (v5.n128_f32[0] > 0.0 || LODWORD(__dst[35]) != 0)
        {
          return (*(**(*(v6 + 224) + 32) + 24))(*(*(v6 + 224) + 32), __dst, v3, v4, v5);
        }
      }

      else if (v17)
      {
        if (result)
        {
          v5.n128_u32[0] = __dst[34];
          if (((v12 | v10) & 1) == 0 || (LODWORD(__dst[32]) != 1 || LOBYTE(__dst[33]) != 1 || __dst[0] != 0x646E616265736142) && (LODWORD(__dst[32]) != 2 || LOBYTE(__dst[33]) != 1 || (__dst[0] == 0x2D20505344657250 ? (v26 = __dst[1] == 0x707974205B207B20) : (v26 = 0), v26 ? (v27 = *(&__dst[1] + 7) == 0x6E6C7570203A6570) : (v27 = 0), !v27)))
          {
            if ((LODWORD(__dst[32]) - 1) <= 1 && LOBYTE(__dst[33]) == 1)
            {
              v4.n128_u32[0] = 5.0;
              if (v3.n128_f32[0] > 5.0)
              {
                return (*(**(*(v6 + 224) + 32) + 24))(*(*(v6 + 224) + 32), __dst, v3, v4, v5);
              }
            }

            else
            {
              v4.n128_f32[0] = LODWORD(__dst[34]) / *(&__dst[35] + 1);
              v5.n128_u32[0] = 5.0;
              if (v3.n128_f32[0] > 5.0 || v4.n128_f32[0] > 5.0)
              {
                return (*(**(*(v6 + 224) + 32) + 24))(*(*(v6 + 224) + 32), __dst, v3, v4, v5);
              }
            }
          }
        }
      }

      else if (v18)
      {
        v4.n128_u32[0] = 1034147594;
        if (v3.n128_f32[0] > 0.08)
        {
          return (*(**(*(v6 + 224) + 32) + 24))(*(*(v6 + 224) + 32), __dst, v3, v4, v5);
        }

        if (v5.n128_f32[0] > 0.08 || LODWORD(__dst[35]) > 5)
        {
          return (*(**(*(v6 + 224) + 32) + 24))(*(*(v6 + 224) + 32), __dst, v3, v4, v5);
        }
      }

      else if (v16)
      {
        v4.n128_u32[0] = 9.0;
        if (v3.n128_f32[0] > 9.0 || v5.n128_f32[0] > 9.0)
        {
          return (*(**(*(v6 + 224) + 32) + 24))(*(*(v6 + 224) + 32), __dst, v3, v4, v5);
        }
      }
    }
  }

  else
  {
    if (HIDWORD(__dst[32]) != 5)
    {
      return (*(**(*(v6 + 224) + 32) + 24))(*(*(v6 + 224) + 32), __dst, v3, v4, v5);
    }

    v4.n128_u32[0] = HIDWORD(__dst[35]);
    v5.n128_u32[0] = __dst[36];
    v13 = *&__dst[36] > -60.0;
    v14 = *(&__dst[35] + 1) < (-30.0 - *(v6 + 168)) && *&__dst[36] > -60.0;
    v3.n128_u32[0] = -1038090240;
    if (*&__dst[36] >= -40.0)
    {
      v13 = 0;
    }

    if (v14 || v13)
    {
      return (*(**(*(v6 + 224) + 32) + 24))(*(*(v6 + 224) + 32), __dst, v3, v4, v5);
    }
  }

  return result;
}

void sub_296C42458(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t rtaid::CaulkSPIImplementation::EnqueueIssueDict(uint64_t result, const void *a2)
{
  v2 = result;
  v3 = 16;
  while (1)
  {
    v4 = atomic_load((result + 48));
    v5 = v4;
    atomic_compare_exchange_strong((result + 48), &v5, (v4 + 1) & 0xF);
    if (v5 != v4)
    {
      atomic_load((result + 48));
      goto LABEL_6;
    }

    v6 = 0;
    atomic_compare_exchange_strong((*(*(result + 24) + 8 * v4) + 552), &v6, 1u);
    if (!v6)
    {
      break;
    }

LABEL_6:
    if (!--v3)
    {
      return result;
    }
  }

  memcpy((*(*(result + 24) + 8 * v4) + 56), a2, 0x1F0uLL);
  v7 = *(*(v2 + 24) + 8 * v4);

  return MEMORY[0x2A1C6AB40](v2 + 8, v7);
}

uint64_t rtaid::CaulkSPIImplementation::Message::perform(rtaid::CaulkSPIImplementation::Message *this)
{
  v5 = *MEMORY[0x29EDCA608];
  memcpy(__dst, this + 56, sizeof(__dst));
  v2 = *(this + 6);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  result = (*(*v2 + 48))(v2, __dst);
  atomic_store(0, this + 552);
  return result;
}

void std::__function::__func<rtaid::Manager::Manager(std::unique_ptr<rtaid::DependencyInjection> &&)::$_0,std::allocator<std::unique_ptr<rtaid::DependencyInjection> &&>,void ()(rtaid::IssueDictionary const&)>::operator()(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  v3[0] = *(a1 + 16);
  v3[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  rtaid::HandleAudioIssue(a2, v3, *(a1 + 8));
  if (v2)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void sub_296C4263C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void *std::string::basic_string[abi:ne200100]<0>(void *a1, char *__s)
{
  v4 = strlen(__s);
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
    memmove(a1, __s, v4);
  }

  *(a1 + v5) = 0;
  return a1;
}

void rtaid::HandleAudioIssue(uint64_t a1, uint64_t *a2, float a3)
{
  v238 = *MEMORY[0x29EDCA608];
  if (*a2)
  {
    v6 = a3;
    v4 = a2;
    v3 = a1;
    std::string::basic_string[abi:ne200100]<0>(&__str, "Unknown");
    v5 = 0x2A18A4000uLL;
    {
      goto LABEL_3;
    }
  }

  else
  {
    _os_assert_log();
    _os_crash();
    __break(1u);
  }

  if (v204)
  {
    rtaid::GetClientIDMap(v204);
    *(v5 + 3976) = &rtaid::GetClientIDMap(void)::gClientIDMap;
  }

LABEL_3:
  v7 = std::__hash_table<std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>>>::find<unsigned int>(*(v5 + 3976), *(v3 + 256));
  if (v7)
  {
    std::string::operator=(&__str, v7 + 1);
  }

  std::string::basic_string[abi:ne200100]<0>(&v208, "Generic");
  {
    if (v205)
    {
      rtaid::GetClientUseCaseMap(v205);
      rtaid::HandleAudioIssue(rtaid::IssueDictionary const&,std::shared_ptr<rtaid::DependencyInjection>,float)::clientUseCaseMap = &rtaid::GetClientUseCaseMap(void)::gClientUseCaseMap;
    }
  }

  v8 = *(v3 + 316);
  if (*(v3 + 316))
  {
    v9 = std::__hash_table<std::__hash_value_type<AudioServiceType,std::string>,std::__unordered_map_hasher<AudioServiceType,std::__hash_value_type<AudioServiceType,std::string>,std::hash<AudioServiceType>,std::equal_to<AudioServiceType>,true>,std::__unordered_map_equal<AudioServiceType,std::__hash_value_type<AudioServiceType,std::string>,std::equal_to<AudioServiceType>,std::hash<AudioServiceType>,true>,std::allocator<std::__hash_value_type<AudioServiceType,std::string>>>::find<AudioServiceType>(rtaid::HandleAudioIssue(rtaid::IssueDictionary const&,std::shared_ptr<rtaid::DependencyInjection>,float)::clientUseCaseMap, *(v3 + 448));
    if (v9)
    {
      std::string::operator=(&v208, v9 + 1);
      v8 = *(v3 + 316);
    }

    if (v8 >= 2)
    {
      v10 = (v3 + 450);
      for (i = 1; i < v8; ++i)
      {
        v12 = *v10++;
        v13 = std::__hash_table<std::__hash_value_type<AudioServiceType,std::string>,std::__unordered_map_hasher<AudioServiceType,std::__hash_value_type<AudioServiceType,std::string>,std::hash<AudioServiceType>,std::equal_to<AudioServiceType>,true>,std::__unordered_map_equal<AudioServiceType,std::__hash_value_type<AudioServiceType,std::string>,std::equal_to<AudioServiceType>,std::hash<AudioServiceType>,true>,std::allocator<std::__hash_value_type<AudioServiceType,std::string>>>::find<AudioServiceType>(rtaid::HandleAudioIssue(rtaid::IssueDictionary const&,std::shared_ptr<rtaid::DependencyInjection>,float)::clientUseCaseMap, v12);
        if (v13)
        {
          v16 = v13[3];
          v14 = v13 + 3;
          v15 = v16;
          v17 = *(v14 + 23);
          if (v17 >= 0)
          {
            v18 = v14;
          }

          else
          {
            v18 = v15;
          }

          if (v17 >= 0)
          {
            v19 = *(v14 + 23);
          }

          else
          {
            v19 = v14[1];
          }

          std::string::append(&v208, v18, v19);
          v8 = *(v3 + 316);
        }
      }
    }
  }

  {
    if (v206)
    {
      rtaid::GetReporterTypeInterestedMap(v206);
    }
  }

  v20 = *(v3 + 316);
  if (*(v3 + 316))
  {
    v21 = 0;
    v22 = rtaid::GetReporterTypeInterestedMap(void)::gReporterTypeInterestedMap;
    v23 = vcnt_s8(*(&rtaid::GetReporterTypeInterestedMap(void)::gReporterTypeInterestedMap + 8));
    v23.i16[0] = vaddlv_u8(v23);
    v24 = WORD4(rtaid::GetReporterTypeInterestedMap(void)::gReporterTypeInterestedMap);
    v25 = *(&rtaid::GetReporterTypeInterestedMap(void)::gReporterTypeInterestedMap + 1) + 0xFFFFLL;
    v26 = *(&rtaid::GetReporterTypeInterestedMap(void)::gReporterTypeInterestedMap + 1) - 1;
    v27 = *(v3 + 260);
    do
    {
      v207[v21] = *(v3 + 320 + 8 * v21);
      if (*(&v22 + 1))
      {
        v28 = *(v3 + 448 + 2 * v21);
        if (v23.u32[0] > 1uLL)
        {
          v29 = *(v3 + 448 + 2 * v21);
          if (*(&v22 + 1) <= v28)
          {
            v29 = v28 % v24;
          }
        }

        else
        {
          v29 = v25 & v28;
        }

        v30 = *(v22 + 8 * v29);
        if (v30)
        {
          while (1)
          {
            v30 = *v30;
            if (!v30)
            {
              break;
            }

            v31 = v30[1];
            if (v31 == v28)
            {
              if (*(v30 + 8) == v28)
              {
                v32 = v30[3];
                v33 = v30[4];
                if (v32 != v33)
                {
                  while (*v32 != v27)
                  {
                    v32 = (v32 + 4);
                    if (v32 == v33)
                    {
                      goto LABEL_44;
                    }
                  }
                }

                if (v32 == v33)
                {
LABEL_44:
                  v207[v21] = 0;
                }

                break;
              }
            }

            else
            {
              if (v23.u32[0] > 1uLL)
              {
                if (v31 >= *(&v22 + 1))
                {
                  v31 %= *(&v22 + 1);
                }
              }

              else
              {
                v31 &= v26;
              }

              if (v31 != v29)
              {
                break;
              }
            }
          }
        }
      }

      ++v21;
    }

    while (v21 != v20);
  }

  else
  {
    v27 = *(v3 + 260);
  }

  if (v27 <= 3)
  {
    if ((v27 - 1) < 2)
    {
      v34 = *v4;
      v35 = *(v3 + 284);
      if (v20)
      {
        v36 = (v3 + 448);
        while (1)
        {
          v37 = *v36++;
          if (v37 != 13)
          {
            break;
          }

          if (!--v20)
          {
            if (*v34 != 1)
            {
              goto LABEL_145;
            }

            *&buf[8] = 0;
            *&buf[16] = 0;
            *buf = &buf[8];
            std::string::basic_string[abi:ne200100]<0>(&__p, "issue_type");
            v222.__r_.__value_.__r.__words[0] = &__p;
            v38 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(buf, &__p, &v222);
            if (*(v38 + 79) < 0)
            {
              v38[8] = 7;
              v39 = v38[7];
            }

            else
            {
              v39 = (v38 + 7);
              *(v38 + 79) = 7;
            }

            strcpy(v39, "Silence");
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            std::string::basic_string[abi:ne200100]<0>(&__p, "rtaid_client");
            v222.__r_.__value_.__r.__words[0] = &__p;
            v164 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(buf, &__p, &v222);
            std::string::operator=((v164 + 7), &__str);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            std::to_string(&__p, *(v3 + 488));
            std::string::basic_string[abi:ne200100]<0>(&v222, "issue_detected_sample_time");
            v220.__r_.__value_.__r.__words[0] = &v222;
            v165 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(buf, &v222, &v220);
            v166 = v165;
            if (*(v165 + 79) < 0)
            {
              operator delete(v165[7]);
            }

            *(v166 + 7) = __p;
            *(&__p.__r_.__value_.__s + 23) = 0;
            __p.__r_.__value_.__s.__data_[0] = 0;
            if (SHIBYTE(v222.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v222.__r_.__value_.__l.__data_);
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }
            }

            std::string::basic_string[abi:ne200100]<0>(&__p, "node");
            v222.__r_.__value_.__r.__words[0] = &__p;
            v167 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(buf, &__p, &v222);
            std::string::__assign_external((v167 + 7), v3);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            std::to_string(&__p, *(v3 + 268));
            std::string::basic_string[abi:ne200100]<0>(&v222, "all_channel_silence_samples");
            v220.__r_.__value_.__r.__words[0] = &v222;
            v168 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(buf, &v222, &v220);
            v169 = v168;
            if (*(v168 + 79) < 0)
            {
              operator delete(v168[7]);
            }

            *(v169 + 7) = __p;
            *(&__p.__r_.__value_.__s + 23) = 0;
            __p.__r_.__value_.__s.__data_[0] = 0;
            if (SHIBYTE(v222.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v222.__r_.__value_.__l.__data_);
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }
            }

            std::to_string(&__p, *(v3 + 272));
            std::string::basic_string[abi:ne200100]<0>(&v222, "any_channel_silence_samples");
            v220.__r_.__value_.__r.__words[0] = &v222;
            v170 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(buf, &v222, &v220);
            v171 = v170;
            if (*(v170 + 79) < 0)
            {
              operator delete(v170[7]);
            }

            *(v171 + 7) = __p;
            *(&__p.__r_.__value_.__s + 23) = 0;
            __p.__r_.__value_.__s.__data_[0] = 0;
            if (SHIBYTE(v222.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v222.__r_.__value_.__l.__data_);
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }
            }

            std::to_string(&__p, *(v3 + 276));
            std::string::basic_string[abi:ne200100]<0>(&v222, "leading_silence_samples");
            v220.__r_.__value_.__r.__words[0] = &v222;
            v172 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(buf, &v222, &v220);
            v173 = v172;
            if (*(v172 + 79) < 0)
            {
              operator delete(v172[7]);
            }

            *(v173 + 7) = __p;
            *(&__p.__r_.__value_.__s + 23) = 0;
            __p.__r_.__value_.__s.__data_[0] = 0;
            if (SHIBYTE(v222.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v222.__r_.__value_.__l.__data_);
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }
            }

            std::to_string(&__p, *(v3 + 280));
            std::string::basic_string[abi:ne200100]<0>(&v222, "mid_stream_silence_samples");
            v220.__r_.__value_.__r.__words[0] = &v222;
            v174 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(buf, &v222, &v220);
            v175 = v174;
            if (*(v174 + 79) < 0)
            {
              operator delete(v174[7]);
            }

            *(v175 + 7) = __p;
            *(&__p.__r_.__value_.__s + 23) = 0;
            __p.__r_.__value_.__s.__data_[0] = 0;
            if (SHIBYTE(v222.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v222.__r_.__value_.__l.__data_);
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }
            }

            std::to_string(&__p, *(v3 + 268) / v35);
            std::string::basic_string[abi:ne200100]<0>(&v222, "all_channel_silence_seconds");
            v220.__r_.__value_.__r.__words[0] = &v222;
            v176 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(buf, &v222, &v220);
            v177 = v176;
            if (*(v176 + 79) < 0)
            {
              operator delete(v176[7]);
            }

            *(v177 + 7) = __p;
            *(&__p.__r_.__value_.__s + 23) = 0;
            __p.__r_.__value_.__s.__data_[0] = 0;
            if (SHIBYTE(v222.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v222.__r_.__value_.__l.__data_);
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }
            }

            std::to_string(&__p, *(v3 + 272) / v35);
            std::string::basic_string[abi:ne200100]<0>(&v222, "any_channel_silence_seconds");
            v220.__r_.__value_.__r.__words[0] = &v222;
            v178 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(buf, &v222, &v220);
            v179 = v178;
            if (*(v178 + 79) < 0)
            {
              operator delete(v178[7]);
            }

            *(v179 + 7) = __p;
            *(&__p.__r_.__value_.__s + 23) = 0;
            __p.__r_.__value_.__s.__data_[0] = 0;
            if (SHIBYTE(v222.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v222.__r_.__value_.__l.__data_);
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }
            }

            std::to_string(&__p, *(v3 + 276) / v35);
            std::string::basic_string[abi:ne200100]<0>(&v222, "leading_silence_seconds");
            v220.__r_.__value_.__r.__words[0] = &v222;
            v180 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(buf, &v222, &v220);
            v181 = v180;
            if (*(v180 + 79) < 0)
            {
              operator delete(v180[7]);
            }

            *(v181 + 7) = __p;
            *(&__p.__r_.__value_.__s + 23) = 0;
            __p.__r_.__value_.__s.__data_[0] = 0;
            if (SHIBYTE(v222.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v222.__r_.__value_.__l.__data_);
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }
            }

            std::to_string(&__p, *(v3 + 280) / v35);
            std::string::basic_string[abi:ne200100]<0>(&v222, "mid_stream_silence_seconds");
            v220.__r_.__value_.__r.__words[0] = &v222;
            v182 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(buf, &v222, &v220);
            v183 = v182;
            if (*(v182 + 79) < 0)
            {
              operator delete(v182[7]);
            }

            *(v183 + 7) = __p;
            *(&__p.__r_.__value_.__s + 23) = 0;
            __p.__r_.__value_.__s.__data_[0] = 0;
            if (SHIBYTE(v222.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v222.__r_.__value_.__l.__data_);
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }
            }

            std::to_string(&__p, *(v3 + 288));
            std::string::basic_string[abi:ne200100]<0>(&v222, "mid_stream_silence_sample_time");
            v220.__r_.__value_.__r.__words[0] = &v222;
            v184 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(buf, &v222, &v220);
            v185 = v184;
            if (*(v184 + 79) < 0)
            {
              operator delete(v184[7]);
            }

            *(v185 + 7) = __p;
            *(&__p.__r_.__value_.__s + 23) = 0;
            __p.__r_.__value_.__s.__data_[0] = 0;
            if (SHIBYTE(v222.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v222.__r_.__value_.__l.__data_);
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }
            }

            v86 = *(**(v34 + 24) + 24);
            goto LABEL_144;
          }
        }
      }

      *&buf[8] = 0;
      *&buf[16] = 0;
      *buf = &buf[8];
      std::string::basic_string[abi:ne200100]<0>(&__p, "issue_type");
      v222.__r_.__value_.__r.__words[0] = &__p;
      v43 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(buf, &__p, &v222);
      if (*(v43 + 79) < 0)
      {
        v43[8] = 7;
        v44 = v43[7];
      }

      else
      {
        v44 = (v43 + 7);
        *(v43 + 79) = 7;
      }

      strcpy(v44, "Silence");
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      std::string::basic_string[abi:ne200100]<0>(&__p, "rtaid_client");
      v222.__r_.__value_.__r.__words[0] = &__p;
      v64 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(buf, &__p, &v222);
      std::string::operator=((v64 + 7), &__str);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      std::to_string(&__p, *(v3 + 488));
      std::string::basic_string[abi:ne200100]<0>(&v222, "issue_detected_sample_time");
      v220.__r_.__value_.__r.__words[0] = &v222;
      v65 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(buf, &v222, &v220);
      v66 = v65;
      if (*(v65 + 79) < 0)
      {
        operator delete(v65[7]);
      }

      *(v66 + 7) = __p;
      *(&__p.__r_.__value_.__s + 23) = 0;
      __p.__r_.__value_.__s.__data_[0] = 0;
      if (SHIBYTE(v222.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v222.__r_.__value_.__l.__data_);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      std::string::basic_string[abi:ne200100]<0>(&__p, "node");
      v222.__r_.__value_.__r.__words[0] = &__p;
      v67 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(buf, &__p, &v222);
      std::string::__assign_external((v67 + 7), v3);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      std::to_string(&__p, *(v3 + 268));
      std::string::basic_string[abi:ne200100]<0>(&v222, "all_channel_silence_samples");
      v220.__r_.__value_.__r.__words[0] = &v222;
      v68 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(buf, &v222, &v220);
      v69 = v68;
      if (*(v68 + 79) < 0)
      {
        operator delete(v68[7]);
      }

      *(v69 + 7) = __p;
      *(&__p.__r_.__value_.__s + 23) = 0;
      __p.__r_.__value_.__s.__data_[0] = 0;
      if (SHIBYTE(v222.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v222.__r_.__value_.__l.__data_);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      std::to_string(&__p, *(v3 + 272));
      std::string::basic_string[abi:ne200100]<0>(&v222, "any_channel_silence_samples");
      v220.__r_.__value_.__r.__words[0] = &v222;
      v70 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(buf, &v222, &v220);
      v71 = v70;
      if (*(v70 + 79) < 0)
      {
        operator delete(v70[7]);
      }

      *(v71 + 7) = __p;
      *(&__p.__r_.__value_.__s + 23) = 0;
      __p.__r_.__value_.__s.__data_[0] = 0;
      if (SHIBYTE(v222.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v222.__r_.__value_.__l.__data_);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      std::to_string(&__p, *(v3 + 276));
      std::string::basic_string[abi:ne200100]<0>(&v222, "leading_silence_samples");
      v220.__r_.__value_.__r.__words[0] = &v222;
      v72 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(buf, &v222, &v220);
      v73 = v72;
      if (*(v72 + 79) < 0)
      {
        operator delete(v72[7]);
      }

      *(v73 + 7) = __p;
      *(&__p.__r_.__value_.__s + 23) = 0;
      __p.__r_.__value_.__s.__data_[0] = 0;
      if (SHIBYTE(v222.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v222.__r_.__value_.__l.__data_);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      std::to_string(&__p, *(v3 + 280));
      std::string::basic_string[abi:ne200100]<0>(&v222, "mid_stream_silence_samples");
      v220.__r_.__value_.__r.__words[0] = &v222;
      v74 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(buf, &v222, &v220);
      v75 = v74;
      if (*(v74 + 79) < 0)
      {
        operator delete(v74[7]);
      }

      *(v75 + 7) = __p;
      *(&__p.__r_.__value_.__s + 23) = 0;
      __p.__r_.__value_.__s.__data_[0] = 0;
      if (SHIBYTE(v222.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v222.__r_.__value_.__l.__data_);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      std::to_string(&__p, *(v3 + 268) / v35);
      std::string::basic_string[abi:ne200100]<0>(&v222, "all_channel_silence_seconds");
      v220.__r_.__value_.__r.__words[0] = &v222;
      v76 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(buf, &v222, &v220);
      v77 = v76;
      if (*(v76 + 79) < 0)
      {
        operator delete(v76[7]);
      }

      *(v77 + 7) = __p;
      *(&__p.__r_.__value_.__s + 23) = 0;
      __p.__r_.__value_.__s.__data_[0] = 0;
      if (SHIBYTE(v222.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v222.__r_.__value_.__l.__data_);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      std::to_string(&__p, *(v3 + 272) / v35);
      std::string::basic_string[abi:ne200100]<0>(&v222, "any_channel_silence_seconds");
      v220.__r_.__value_.__r.__words[0] = &v222;
      v78 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(buf, &v222, &v220);
      v79 = v78;
      if (*(v78 + 79) < 0)
      {
        operator delete(v78[7]);
      }

      *(v79 + 7) = __p;
      *(&__p.__r_.__value_.__s + 23) = 0;
      __p.__r_.__value_.__s.__data_[0] = 0;
      if (SHIBYTE(v222.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v222.__r_.__value_.__l.__data_);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      std::to_string(&__p, *(v3 + 276) / v35);
      std::string::basic_string[abi:ne200100]<0>(&v222, "leading_silence_seconds");
      v220.__r_.__value_.__r.__words[0] = &v222;
      v80 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(buf, &v222, &v220);
      v81 = v80;
      if (*(v80 + 79) < 0)
      {
        operator delete(v80[7]);
      }

      *(v81 + 7) = __p;
      *(&__p.__r_.__value_.__s + 23) = 0;
      __p.__r_.__value_.__s.__data_[0] = 0;
      if (SHIBYTE(v222.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v222.__r_.__value_.__l.__data_);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      std::to_string(&__p, *(v3 + 280) / v35);
      std::string::basic_string[abi:ne200100]<0>(&v222, "mid_stream_silence_seconds");
      v220.__r_.__value_.__r.__words[0] = &v222;
      v82 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(buf, &v222, &v220);
      v83 = v82;
      if (*(v82 + 79) < 0)
      {
        operator delete(v82[7]);
      }

      *(v83 + 7) = __p;
      *(&__p.__r_.__value_.__s + 23) = 0;
      __p.__r_.__value_.__s.__data_[0] = 0;
      if (SHIBYTE(v222.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v222.__r_.__value_.__l.__data_);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      std::to_string(&__p, *(v3 + 288));
      std::string::basic_string[abi:ne200100]<0>(&v222, "mid_stream_silence_sample_time");
      v220.__r_.__value_.__r.__words[0] = &v222;
      v84 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(buf, &v222, &v220);
      v85 = v84;
      if (*(v84 + 79) < 0)
      {
        operator delete(v84[7]);
      }

      *(v85 + 7) = __p;
      *(&__p.__r_.__value_.__s + 23) = 0;
      __p.__r_.__value_.__s.__data_[0] = 0;
      if (SHIBYTE(v222.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v222.__r_.__value_.__l.__data_);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      v86 = *(**(v34 + 24) + 24);
LABEL_144:
      v86();
      std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(*&buf[8]);
LABEL_145:
      {
        rtaid::get_log(void)::rtaid_os_log = os_log_create("com.apple.coreaudio", "aid");
      }

      v60 = rtaid::get_log(void)::rtaid_os_log;
      if (os_log_type_enabled(rtaid::get_log(void)::rtaid_os_log, OS_LOG_TYPE_DEFAULT))
      {
        v87 = &v208;
        if ((v208.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v87 = v208.__r_.__value_.__r.__words[0];
        }

        p_str = &__str;
        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          p_str = __str.__r_.__value_.__r.__words[0];
        }

        v89 = *(v3 + 488);
        v90 = (*(v3 + 268) / v35);
        v91 = (*(v3 + 272) / v35);
        v92 = (*(v3 + 276) / v35);
        v93 = *(v3 + 280);
        *buf = 136317698;
        v94 = *(v3 + 288);
        *&buf[4] = "IssueReporting.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 297;
        *&buf[18] = 2080;
        *&buf[20] = v87;
        v226 = 2080;
        v227 = p_str;
        v228 = 2080;
        v229 = v3;
        v230 = 2048;
        v231 = v89;
        v232 = 2048;
        *v233 = v90;
        *&v233[8] = 2048;
        v234 = v91;
        *v235 = 2048;
        *&v235[2] = v92;
        *&v235[10] = 2048;
        *&v235[12] = (v93 / v35);
        v236 = 2048;
        v237 = v94;
        v50 = "%s:%-5d RTAID [ use_case=%s issue_type=Silence clientID=%s node=%s issue_detected_sample_time=%f ] -- [ all_channel_silence_seconds=%f any_channel_silence_seconds=%f leading_silence_seconds=%f mid_stream_silence_seconds=%f mid_stream_silence_sampleTime=%f ]";
LABEL_152:
        v51 = v60;
        v52 = OS_LOG_TYPE_DEFAULT;
        v53 = 108;
        goto LABEL_153;
      }

      goto LABEL_360;
    }

    if (!v27)
    {
      v40 = *v4;
      *&__p.__r_.__value_.__r.__words[1] = 0uLL;
      __p.__r_.__value_.__r.__words[0] = &__p.__r_.__value_.__l.__size_;
      std::string::basic_string[abi:ne200100]<0>(buf, "issue_type");
      v222.__r_.__value_.__r.__words[0] = buf;
      v41 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&__p, buf, &v222);
      if (*(v41 + 79) < 0)
      {
        v41[8] = 9;
        v42 = v41[7];
      }

      else
      {
        v42 = (v41 + 7);
        *(v41 + 79) = 9;
      }

      strcpy(v42, "NonFinite");
      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }

      std::string::basic_string[abi:ne200100]<0>(buf, "rtaid_client");
      v222.__r_.__value_.__r.__words[0] = buf;
      v139 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&__p, buf, &v222);
      std::string::operator=((v139 + 7), &__str);
      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }

      std::to_string(buf, *(v3 + 488));
      std::string::basic_string[abi:ne200100]<0>(&v222, "issue_detected_sample_time");
      v220.__r_.__value_.__r.__words[0] = &v222;
      v140 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&__p, &v222, &v220);
      v141 = v140;
      if (*(v140 + 79) < 0)
      {
        operator delete(v140[7]);
      }

      *(v141 + 7) = *buf;
      v141[9] = *&buf[16];
      buf[23] = 0;
      buf[0] = 0;
      if (SHIBYTE(v222.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v222.__r_.__value_.__l.__data_);
        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }
      }

      std::string::basic_string[abi:ne200100]<0>(buf, "node");
      v222.__r_.__value_.__r.__words[0] = buf;
      v142 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&__p, buf, &v222);
      std::string::__assign_external((v142 + 7), v3);
      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }

      std::to_string(buf, *(v3 + 268));
      std::string::basic_string[abi:ne200100]<0>(&v222, "nan_frames");
      v220.__r_.__value_.__r.__words[0] = &v222;
      v143 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&__p, &v222, &v220);
      v144 = v143;
      if (*(v143 + 79) < 0)
      {
        operator delete(v143[7]);
      }

      *(v144 + 7) = *buf;
      v144[9] = *&buf[16];
      buf[23] = 0;
      buf[0] = 0;
      if (SHIBYTE(v222.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v222.__r_.__value_.__l.__data_);
        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }
      }

      std::to_string(buf, *(v3 + 272));
      std::string::basic_string[abi:ne200100]<0>(&v222, "inf_frames");
      v220.__r_.__value_.__r.__words[0] = &v222;
      v145 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&__p, &v222, &v220);
      v146 = v145;
      if (*(v145 + 79) < 0)
      {
        operator delete(v145[7]);
      }

      *(v146 + 7) = *buf;
      v146[9] = *&buf[16];
      buf[23] = 0;
      buf[0] = 0;
      if (SHIBYTE(v222.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v222.__r_.__value_.__l.__data_);
        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }
      }

      (*(**(v40 + 24) + 24))(*(v40 + 24), v207, *(v3 + 316), &__p, 11, 7);
      {
        rtaid::get_log(void)::rtaid_os_log = os_log_create("com.apple.coreaudio", "aid");
      }

      v147 = rtaid::get_log(void)::rtaid_os_log;
      if (!os_log_type_enabled(rtaid::get_log(void)::rtaid_os_log, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_359;
      }

      v148 = &v208;
      if ((v208.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v148 = v208.__r_.__value_.__r.__words[0];
      }

      v149 = &__str;
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v149 = __str.__r_.__value_.__r.__words[0];
      }

      v150 = *(v3 + 488);
      v151 = *(v3 + 268);
      v152 = *(v3 + 272);
      *buf = 136316930;
      *&buf[4] = "IssueReporting.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 240;
      *&buf[18] = 2080;
      *&buf[20] = v148;
      v226 = 2080;
      v227 = v149;
      v228 = 2080;
      v229 = v3;
      v230 = 2048;
      v231 = v150;
      v232 = 1024;
      *v233 = v151;
      *&v233[4] = 1024;
      *&v233[6] = v152;
      v136 = "%s:%-5d RTAID [ use_case=%s issue_type=NonFinites clientID=%s node=%s issue_detected_sample_time=%f ] -- [ nan_frames=%d inf_frames=%d ]";
      v137 = v147;
      v138 = 70;
LABEL_358:
      _os_log_impl(&dword_296C34000, v137, OS_LOG_TYPE_DEFAULT, v136, buf, v138);
LABEL_359:
      std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(__p.__r_.__value_.__l.__size_);
      goto LABEL_360;
    }

LABEL_68:
    {
      rtaid::get_log(void)::rtaid_os_log = os_log_create("com.apple.coreaudio", "aid");
    }

    v48 = rtaid::get_log(void)::rtaid_os_log;
    if (os_log_type_enabled(rtaid::get_log(void)::rtaid_os_log, OS_LOG_TYPE_ERROR))
    {
      v49 = *(v3 + 260);
      *buf = 136315650;
      *&buf[4] = "IssueReporting.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 573;
      *&buf[18] = 1024;
      *&buf[20] = v49;
      v50 = "%s:%-5d Invalid analyzer type: %d";
      v51 = v48;
      v52 = OS_LOG_TYPE_ERROR;
      v53 = 24;
LABEL_153:
      _os_log_impl(&dword_296C34000, v51, v52, v50, buf, v53);
      goto LABEL_360;
    }

    goto LABEL_360;
  }

  if (v27 == 4)
  {
    v45 = *v4;
    *&__p.__r_.__value_.__r.__words[1] = 0uLL;
    __p.__r_.__value_.__r.__words[0] = &__p.__r_.__value_.__l.__size_;
    std::string::basic_string[abi:ne200100]<0>(buf, "issue_type");
    v222.__r_.__value_.__r.__words[0] = buf;
    v46 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&__p, buf, &v222);
    if (*(v46 + 79) < 0)
    {
      v46[8] = 7;
      v47 = v46[7];
    }

    else
    {
      v47 = (v46 + 7);
      *(v46 + 79) = 7;
    }

    strcpy(v47, "RTError");
    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    std::string::basic_string[abi:ne200100]<0>(buf, "rtaid_client");
    v222.__r_.__value_.__r.__words[0] = buf;
    v95 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&__p, buf, &v222);
    std::string::operator=((v95 + 7), &__str);
    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    std::to_string(buf, *(v3 + 488));
    std::string::basic_string[abi:ne200100]<0>(&v222, "issue_detected_sample_time");
    v220.__r_.__value_.__r.__words[0] = &v222;
    v96 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&__p, &v222, &v220);
    v97 = v96;
    if (*(v96 + 79) < 0)
    {
      operator delete(v96[7]);
    }

    *(v97 + 7) = *buf;
    v97[9] = *&buf[16];
    buf[23] = 0;
    buf[0] = 0;
    if (SHIBYTE(v222.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v222.__r_.__value_.__l.__data_);
      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }
    }

    std::string::basic_string[abi:ne200100]<0>(buf, "node");
    v222.__r_.__value_.__r.__words[0] = buf;
    v98 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&__p, buf, &v222);
    std::string::__assign_external((v98 + 7), v3);
    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    std::to_string(&v215, *(v3 + 268));
    v99 = std::string::insert(&v215, 0, " {", 2uLL);
    v100 = *&v99->__r_.__value_.__l.__data_;
    v216.__r_.__value_.__r.__words[2] = v99->__r_.__value_.__r.__words[2];
    *&v216.__r_.__value_.__l.__data_ = v100;
    v99->__r_.__value_.__l.__size_ = 0;
    v99->__r_.__value_.__r.__words[2] = 0;
    v99->__r_.__value_.__r.__words[0] = 0;
    v101 = std::string::append(&v216, ", ", 2uLL);
    v102 = *&v101->__r_.__value_.__l.__data_;
    v217.__r_.__value_.__r.__words[2] = v101->__r_.__value_.__r.__words[2];
    *&v217.__r_.__value_.__l.__data_ = v102;
    v101->__r_.__value_.__l.__size_ = 0;
    v101->__r_.__value_.__r.__words[2] = 0;
    v101->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v214, *(v3 + 272));
    if ((v214.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v103 = &v214;
    }

    else
    {
      v103 = v214.__r_.__value_.__r.__words[0];
    }

    if ((v214.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v214.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v214.__r_.__value_.__l.__size_;
    }

    v105 = std::string::append(&v217, v103, size);
    v106 = *&v105->__r_.__value_.__l.__data_;
    v218.__r_.__value_.__r.__words[2] = v105->__r_.__value_.__r.__words[2];
    *&v218.__r_.__value_.__l.__data_ = v106;
    v105->__r_.__value_.__l.__size_ = 0;
    v105->__r_.__value_.__r.__words[2] = 0;
    v105->__r_.__value_.__r.__words[0] = 0;
    v107 = std::string::append(&v218, ", ", 2uLL);
    v108 = *&v107->__r_.__value_.__l.__data_;
    v219.__r_.__value_.__r.__words[2] = v107->__r_.__value_.__r.__words[2];
    *&v219.__r_.__value_.__l.__data_ = v108;
    v107->__r_.__value_.__l.__size_ = 0;
    v107->__r_.__value_.__r.__words[2] = 0;
    v107->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v213, *(v3 + 276));
    if ((v213.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v109 = &v213;
    }

    else
    {
      v109 = v213.__r_.__value_.__r.__words[0];
    }

    if ((v213.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v110 = HIBYTE(v213.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v110 = v213.__r_.__value_.__l.__size_;
    }

    v111 = std::string::append(&v219, v109, v110);
    v112 = *&v111->__r_.__value_.__l.__data_;
    v220.__r_.__value_.__r.__words[2] = v111->__r_.__value_.__r.__words[2];
    *&v220.__r_.__value_.__l.__data_ = v112;
    v111->__r_.__value_.__l.__size_ = 0;
    v111->__r_.__value_.__r.__words[2] = 0;
    v111->__r_.__value_.__r.__words[0] = 0;
    v113 = std::string::append(&v220, ", ", 2uLL);
    v114 = *&v113->__r_.__value_.__l.__data_;
    v222.__r_.__value_.__r.__words[2] = v113->__r_.__value_.__r.__words[2];
    *&v222.__r_.__value_.__l.__data_ = v114;
    v113->__r_.__value_.__l.__size_ = 0;
    v113->__r_.__value_.__r.__words[2] = 0;
    v113->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v212, *(v3 + 280));
    if ((v212.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v115 = &v212;
    }

    else
    {
      v115 = v212.__r_.__value_.__r.__words[0];
    }

    if ((v212.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v116 = HIBYTE(v212.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v116 = v212.__r_.__value_.__l.__size_;
    }

    v117 = std::string::append(&v222, v115, v116);
    v118 = *&v117->__r_.__value_.__l.__data_;
    *&buf[16] = *(&v117->__r_.__value_.__l + 2);
    *buf = v118;
    v117->__r_.__value_.__l.__size_ = 0;
    v117->__r_.__value_.__r.__words[2] = 0;
    v117->__r_.__value_.__r.__words[0] = 0;
    v119 = std::string::append(buf, "}", 1uLL);
    v120 = v119->__r_.__value_.__r.__words[0];
    v224[0] = v119->__r_.__value_.__l.__size_;
    *(v224 + 7) = *(&v119->__r_.__value_.__r.__words[1] + 7);
    v121 = HIBYTE(v119->__r_.__value_.__r.__words[2]);
    v119->__r_.__value_.__l.__size_ = 0;
    v119->__r_.__value_.__r.__words[2] = 0;
    v119->__r_.__value_.__r.__words[0] = 0;
    std::string::basic_string[abi:ne200100]<0>(v210, "rt_errors");
    v221 = v210;
    v122 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&__p, v210, &v221);
    v123 = v122;
    if (*(v122 + 79) < 0)
    {
      operator delete(v122[7]);
    }

    v124 = v224[0];
    v123[7] = v120;
    v123[8] = v124;
    *(v123 + 71) = *(v224 + 7);
    *(v123 + 79) = v121;
    if (v211 < 0)
    {
      operator delete(v210[0]);
    }

    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    if (SHIBYTE(v212.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v212.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v222.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v222.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v220.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v220.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v213.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v213.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v219.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v219.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v218.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v218.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v214.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v214.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v217.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v217.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v216.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v216.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v215.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v215.__r_.__value_.__l.__data_);
    }

    (*(**(v45 + 24) + 24))(*(v45 + 24), v207, *(v3 + 316), &__p, 11, 7);
    v125 = *(v3 + 480);
    if (v125)
    {
      {
        rtaid::get_log(void)::rtaid_os_log = os_log_create("com.apple.coreaudio", "aid");
      }

      v127 = rtaid::get_log(void)::rtaid_os_log;
      if (!os_log_type_enabled(rtaid::get_log(void)::rtaid_os_log, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_359;
      }

      v128 = &v208;
      if ((v208.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v128 = v208.__r_.__value_.__r.__words[0];
      }

      v129 = &__str;
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v129 = __str.__r_.__value_.__r.__words[0];
      }

      v130 = *(v3 + 488);
      v131 = *(v3 + 268);
      v132 = *(v3 + 272);
      v133 = *(v3 + 276);
      v134 = *(v3 + 280);
      v135 = *(v3 + 480);
      *buf = 136317954;
      *&buf[4] = "IssueReporting.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 321;
      *&buf[18] = 2080;
      *&buf[20] = v128;
      v226 = 2080;
      v227 = v129;
      v228 = 2080;
      v229 = v3;
      v230 = 2048;
      v231 = v130;
      v232 = 1024;
      *v233 = v131;
      *&v233[4] = 1024;
      *&v233[6] = v132;
      LOWORD(v234) = 1024;
      *(&v234 + 2) = v133;
      HIWORD(v234) = 1024;
      *v235 = v134;
      *&v235[4] = 2080;
      *&v235[6] = v3 + 192;
      *&v235[14] = 1024;
      *&v235[16] = v135;
      v136 = "%s:%-5d RTAID [ use_case=%s issue_type=RTError clientID=%s node=%s issue_detected_sample_time=%f ] -- [ error1=%d error2=%d error3=%d error4=%d ] -- [file name = %s : line number = %d]";
      v137 = v127;
      v138 = 98;
    }

    else
    {
      {
        rtaid::get_log(void)::rtaid_os_log = os_log_create("com.apple.coreaudio", "aid");
      }

      v153 = rtaid::get_log(void)::rtaid_os_log;
      if (!os_log_type_enabled(rtaid::get_log(void)::rtaid_os_log, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_359;
      }

      v154 = &v208;
      if ((v208.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v154 = v208.__r_.__value_.__r.__words[0];
      }

      v155 = &__str;
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v155 = __str.__r_.__value_.__r.__words[0];
      }

      v156 = *(v3 + 488);
      v157 = *(v3 + 268);
      v158 = *(v3 + 272);
      v159 = *(v3 + 276);
      v160 = *(v3 + 280);
      *buf = 136317442;
      *&buf[4] = "IssueReporting.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 325;
      *&buf[18] = 2080;
      *&buf[20] = v154;
      v226 = 2080;
      v227 = v155;
      v228 = 2080;
      v229 = v3;
      v230 = 2048;
      v231 = v156;
      v232 = 1024;
      *v233 = v157;
      *&v233[4] = 1024;
      *&v233[6] = v158;
      LOWORD(v234) = 1024;
      *(&v234 + 2) = v159;
      HIWORD(v234) = 1024;
      *v235 = v160;
      v136 = "%s:%-5d RTAID [ use_case=%s issue_type=RTError clientID=%s node=%s issue_detected_sample_time=%f ] -- [ error1=%d error2=%d error3=%d error4=%d ]";
      v137 = v153;
      v138 = 82;
    }

    goto LABEL_358;
  }

  if (v27 != 5)
  {
    if (v27 == 6)
    {
      rtaid::handleRMSIssue(v3, v207, *v4, &__str, &v208.__r_.__value_.__l.__data_);
      goto LABEL_360;
    }

    goto LABEL_68;
  }

  v54 = *(v3 + 284);
  v55 = *(v3 + 288);
  v56 = *(v3 + 292);
  v57 = *(v3 + 296);
  if (v54 < (-30.0 - v6) && v54 < ((v55 + -3.0) - v6) && v55 > -40.0)
  {
    v161 = *v4;
    *&__p.__r_.__value_.__r.__words[1] = 0uLL;
    __p.__r_.__value_.__r.__words[0] = &__p.__r_.__value_.__l.__size_;
    std::string::basic_string[abi:ne200100]<0>(buf, "issue_type");
    v222.__r_.__value_.__r.__words[0] = buf;
    v162 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&__p, buf, &v222);
    if (*(v162 + 79) < 0)
    {
      v162[8] = 6;
      v163 = v162[7];
    }

    else
    {
      v163 = (v162 + 7);
      *(v162 + 79) = 6;
    }

    strcpy(v163, "LowRMS");
    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    std::string::basic_string[abi:ne200100]<0>(buf, "rtaid_client");
    v222.__r_.__value_.__r.__words[0] = buf;
    v186 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&__p, buf, &v222);
    std::string::operator=((v186 + 7), &__str);
    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    std::to_string(buf, *(v3 + 488));
    std::string::basic_string[abi:ne200100]<0>(&v222, "issue_detected_sample_time");
    v220.__r_.__value_.__r.__words[0] = &v222;
    v187 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&__p, &v222, &v220);
    v188 = v187;
    if (*(v187 + 79) < 0)
    {
      operator delete(v187[7]);
    }

    *(v188 + 7) = *buf;
    v188[9] = *&buf[16];
    buf[23] = 0;
    buf[0] = 0;
    if (SHIBYTE(v222.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v222.__r_.__value_.__l.__data_);
      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }
    }

    std::string::basic_string[abi:ne200100]<0>(buf, "node");
    v222.__r_.__value_.__r.__words[0] = buf;
    v189 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&__p, buf, &v222);
    std::string::__assign_external((v189 + 7), v3);
    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    std::to_string(buf, v55);
    std::string::basic_string[abi:ne200100]<0>(&v222, "dl_input_rms");
    v220.__r_.__value_.__r.__words[0] = &v222;
    v190 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&__p, &v222, &v220);
    v191 = v190;
    if (*(v190 + 79) < 0)
    {
      operator delete(v190[7]);
    }

    *(v191 + 7) = *buf;
    v191[9] = *&buf[16];
    buf[23] = 0;
    buf[0] = 0;
    if (SHIBYTE(v222.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v222.__r_.__value_.__l.__data_);
      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }
    }

    std::to_string(buf, v57);
    std::string::basic_string[abi:ne200100]<0>(&v222, "dl_input_peak");
    v220.__r_.__value_.__r.__words[0] = &v222;
    v192 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&__p, &v222, &v220);
    v193 = v192;
    if (*(v192 + 79) < 0)
    {
      operator delete(v192[7]);
    }

    *(v193 + 7) = *buf;
    v193[9] = *&buf[16];
    buf[23] = 0;
    buf[0] = 0;
    if (SHIBYTE(v222.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v222.__r_.__value_.__l.__data_);
      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }
    }

    std::to_string(buf, v54);
    std::string::basic_string[abi:ne200100]<0>(&v222, "dl_output_rms");
    v220.__r_.__value_.__r.__words[0] = &v222;
    v194 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&__p, &v222, &v220);
    v195 = v194;
    if (*(v194 + 79) < 0)
    {
      operator delete(v194[7]);
    }

    *(v195 + 7) = *buf;
    v195[9] = *&buf[16];
    buf[23] = 0;
    buf[0] = 0;
    if (SHIBYTE(v222.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v222.__r_.__value_.__l.__data_);
      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }
    }

    std::to_string(buf, v56);
    std::string::basic_string[abi:ne200100]<0>(&v222, "dl_output_peak");
    v220.__r_.__value_.__r.__words[0] = &v222;
    v196 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&__p, &v222, &v220);
    v197 = v196;
    if (*(v196 + 79) < 0)
    {
      operator delete(v196[7]);
    }

    *(v197 + 7) = *buf;
    v197[9] = *&buf[16];
    buf[23] = 0;
    buf[0] = 0;
    if (SHIBYTE(v222.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v222.__r_.__value_.__l.__data_);
      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }
    }

    std::to_string(buf, v6);
    std::string::basic_string[abi:ne200100]<0>(&v222, "dl_adjustment");
    v220.__r_.__value_.__r.__words[0] = &v222;
    v198 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&__p, &v222, &v220);
    v199 = v198;
    if (*(v198 + 79) < 0)
    {
      operator delete(v198[7]);
    }

    *(v199 + 7) = *buf;
    v199[9] = *&buf[16];
    buf[23] = 0;
    buf[0] = 0;
    if (SHIBYTE(v222.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v222.__r_.__value_.__l.__data_);
      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }
    }

    (*(**(v161 + 24) + 24))(*(v161 + 24), v207, *(v3 + 316), &__p, 11, 7);
    {
      rtaid::get_log(void)::rtaid_os_log = os_log_create("com.apple.coreaudio", "aid");
    }

    v200 = rtaid::get_log(void)::rtaid_os_log;
    if (!os_log_type_enabled(rtaid::get_log(void)::rtaid_os_log, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_359;
    }

    v201 = &v208;
    if ((v208.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v201 = v208.__r_.__value_.__r.__words[0];
    }

    v202 = &__str;
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v202 = __str.__r_.__value_.__r.__words[0];
    }

    v203 = *(v3 + 488);
    *buf = 136317698;
    *&buf[4] = "IssueReporting.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 357;
    *&buf[18] = 2080;
    *&buf[20] = v201;
    v226 = 2080;
    v227 = v202;
    v228 = 2080;
    v229 = v3;
    v230 = 2048;
    v231 = v203;
    v232 = 2048;
    *v233 = v55;
    *&v233[8] = 2048;
    v234 = v57;
    *v235 = 2048;
    *&v235[2] = v54;
    *&v235[10] = 2048;
    *&v235[12] = v56;
    v236 = 2048;
    v237 = v6;
    v136 = "%s:%-5d RTAID [ use_case=%s issue_type=RMS Telephony Chain clientID=%s node=%s issue_detected_sample_time=%f ] -- [ DLInputRMS=%f DLInputPeak=%f DLOutputRMS=%f DLOutputPeak=%f DLAdjustment=%f ]";
    v137 = v200;
    v138 = 108;
    goto LABEL_358;
  }

  {
    rtaid::get_log(void)::rtaid_os_log = os_log_create("com.apple.coreaudio", "aid");
  }

  v60 = rtaid::get_log(void)::rtaid_os_log;
  if (os_log_type_enabled(rtaid::get_log(void)::rtaid_os_log, OS_LOG_TYPE_DEFAULT))
  {
    v61 = &v208;
    if ((v208.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v61 = v208.__r_.__value_.__r.__words[0];
    }

    v62 = &__str;
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v62 = __str.__r_.__value_.__r.__words[0];
    }

    v63 = *(v3 + 488);
    *buf = 136317698;
    *&buf[4] = "IssueReporting.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 362;
    *&buf[18] = 2080;
    *&buf[20] = v61;
    v226 = 2080;
    v227 = v62;
    v228 = 2080;
    v229 = v3;
    v230 = 2048;
    v231 = v63;
    v232 = 2048;
    *v233 = v55;
    *&v233[8] = 2048;
    v234 = v57;
    *v235 = 2048;
    *&v235[2] = v54;
    *&v235[10] = 2048;
    *&v235[12] = v56;
    v236 = 2048;
    v237 = v6;
    v50 = "%s:%-5d RTAID [ use_case=%s issue_type=RMS Telephony Chain clientID=%s node=%s issue_detected_sample_time=%f ] -- [ DLInputRMS=%f DLInputPeak=%f DLOutputRMS=%f DLOutputPeak=%f DLAdjustment=%f ]";
    goto LABEL_152;
  }

LABEL_360:
  if (SHIBYTE(v208.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v208.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }
}