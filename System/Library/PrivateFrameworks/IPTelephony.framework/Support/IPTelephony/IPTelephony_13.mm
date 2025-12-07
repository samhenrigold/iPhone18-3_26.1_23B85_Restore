void sub_1E4D0FFD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, char a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48)
{
  v50 = *(v48 - 168);
  if (v50)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v50);
  }

  ims::DisconnectInfo::~DisconnectInfo((v48 - 160));
  _Unwind_Resume(a1);
}

void IMSCallInfo::uuid(IMSCallInfo *this, uint64_t a2)
{
  *this = &unk_1F5EBEE78;
  v2 = (this + 8);
  if (*(a2 + 135) < 0)
  {
    std::string::__init_copy_ctor_external(v2, *(a2 + 112), *(a2 + 120));
  }

  else
  {
    *&v2->__r_.__value_.__l.__data_ = *(a2 + 112);
    v2->__r_.__value_.__r.__words[2] = *(a2 + 128);
  }
}

BOOL ImsUuid::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 31);
  if (v2 >= 0)
  {
    v3 = *(a1 + 31);
  }

  else
  {
    v3 = *(a1 + 16);
  }

  v4 = *(a2 + 31);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a2 + 16);
  }

  if (v3 != v4)
  {
    return 0;
  }

  v8 = *(a1 + 8);
  v6 = (a1 + 8);
  v7 = v8;
  if (v2 < 0)
  {
    v6 = v7;
  }

  v11 = *(a2 + 8);
  v9 = (a2 + 8);
  v10 = v11;
  if (v5 < 0)
  {
    v9 = v10;
  }

  return memcmp(v6, v9, v3) == 0;
}

void IMSCallManager::epsFallbackCall(IMSCallManager *this, uint64_t a2)
{
  *this = &unk_1F5EBEE78;
  v2 = (this + 8);
  if (*(a2 + 247) < 0)
  {
    std::string::__init_copy_ctor_external(v2, *(a2 + 224), *(a2 + 232));
  }

  else
  {
    *&v2->__r_.__value_.__l.__data_ = *(a2 + 224);
    v2->__r_.__value_.__r.__words[2] = *(a2 + 240);
  }
}

uint64_t IMSCallInfo::startCall(IMSCallInfo *this)
{
  if (*(this + 152) == 1)
  {
    v29 = 0;
    v30 = 0;
    IMSCallInfo::stack(this, &v29);
    if (!v29)
    {
      v10 = std::string::basic_string[abi:ne200100]<0>(&v31, "call");
      v25[0] = 0;
      v28 = 0;
      v11 = ims::debug(v10, v25);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), "Strange: how could stack be null? startCall() failed.", 53);
      *(v11 + 17) = 0;
      (*(*v11 + 64))(v11, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v11 + 17) = 0;
      if (v28 == 1 && v27 < 0)
      {
        operator delete(v26);
      }

      if (v33 < 0)
      {
        operator delete(v31);
      }

      v7 = 0;
      goto LABEL_54;
    }

    if (TelephonyRadiosGetRadioVendor() == 1 || TelephonyRadiosGetRadioVendor() == 3 && ims::AccessNetwork::isNR((v29 + 3432)))
    {
      v2 = std::string::basic_string[abi:ne200100]<0>(&v39, "call");
      v21[0] = 0;
      v24 = 0;
      v3 = ims::info(v2, v21);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "Checking UAC access barring before dialing call ", 48);
      *(v3 + 17) = 0;
      IMSCallInfo::uuid(&v31, this);
      (*(v31 + 2))(&v31, v3);
      (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v3 + 17) = 0;
      v31 = &unk_1F5EBEE78;
      if (v34 < 0)
      {
        operator delete(v32);
      }

      if (v24 == 1 && v23 < 0)
      {
        operator delete(__p);
      }

      if (v41 < 0)
      {
        operator delete(v39);
      }

      IPTelephonyManager::getCallManager(&v31);
      IMSCallManager::sendCallStatusRequest(v4, this + 136, 0, 1, *(this + 600));
      if (v32)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v32);
      }

      IPTelephonyManager::getBambiClient(&v39);
      (*(*v39 + 184))(&v31);
      v5 = v31;
      if (ims::AccessNetwork::isLTE((v31 + 3432)) || ims::AccessNetwork::isNR((v5 + 3432)))
      {
        v6 = *(this + 600);
        if (v32)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v32);
        }

        if (v40)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v40);
        }

        if ((v6 & 1) == 0)
        {
          v7 = 1;
          goto LABEL_54;
        }
      }

      else
      {
        if (v32)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v32);
        }

        if (v40)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v40);
        }
      }

      v12 = std::string::basic_string[abi:ne200100]<0>(&v31, "call");
      v17[0] = 0;
      v20 = 0;
      v13 = ims::debug(v12, v17);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), "Not waiting for UAC check ", 26);
      *(v13 + 17) = 0;
      if (*(this + 600))
      {
        v14 = "for emergency call";
      }

      else
      {
        v14 = "while on WiFi";
      }

      if (*(this + 600))
      {
        v15 = 18;
      }

      else
      {
        v15 = 13;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), v14, v15);
      *(v13 + 17) = 0;
      (*(*v13 + 64))(v13, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v13 + 17) = 0;
      if (v20 == 1 && v19 < 0)
      {
        operator delete(v18);
      }

      if (v33 < 0)
      {
        operator delete(v31);
      }
    }

    v7 = IMSCallInfo::continueCall(this);
LABEL_54:
    if (v30)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v30);
    }

    return v7;
  }

  v8 = std::string::basic_string[abi:ne200100]<0>(&v39, "call");
  v35[0] = 0;
  v38 = 0;
  v9 = ims::warn(v8, v35);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), "Not waiting to dial call ", 25);
  *(v9 + 17) = 0;
  IMSCallInfo::uuid(&v31, this);
  (*(v31 + 2))(&v31, v9);
  (*(*v9 + 64))(v9, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v9 + 17) = 0;
  v31 = &unk_1F5EBEE78;
  if (v34 < 0)
  {
    operator delete(v32);
  }

  if (v38 == 1 && v37 < 0)
  {
    operator delete(v36);
  }

  if (v41 < 0)
  {
    operator delete(v39);
  }

  return 1;
}

void sub_1E4D10688(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, char a39)
{
  v41 = *(v39 - 152);
  if (v41)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v41);
  }

  _Unwind_Resume(exception_object);
}

void IMSCallManager::sendCallStatusRequest(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a5;
  v7 = a3;
  v24 = a3;
  IPTelephonyManager::instance(&v21);
  IPTelephonyManager::sendCallStatusRequest(v21, a2, v7, 1, a4, v5);
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  v9 = std::string::basic_string[abi:ne200100]<0>(&v21, "call");
  v17[0] = 0;
  v20 = 0;
  v10 = ims::debug(v9, v17);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "Voice call ", 11);
  *(v10 + 17) = 0;
  ims::toString<UacCallStatus>(&v24, __p);
  (*(*v10 + 32))(v10, __p);
  v11 = *(v10 + 8);
  v25 = 32;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, &v25, 1);
  *(v10 + 17) = 0;
  (*(*v10 + 32))(v10, a2);
  (*(*v10 + 64))(v10, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v10 + 17) = 0;
  if (v16 < 0)
  {
    operator delete(__p[0]);
  }

  if (v20 == 1 && v19 < 0)
  {
    operator delete(v18);
  }

  if (v23 < 0)
  {
    operator delete(v21);
    if (v7)
    {
      goto LABEL_10;
    }

LABEL_14:
    pthread_mutex_lock(&ctu::Singleton<IMSMetricsManager,IMSMetricsManager,ctu::PthreadMutexGuardPolicy<IMSMetricsManager>>::sInstance);
    v13 = off_1EE2BBBC0;
    if (!off_1EE2BBBC0)
    {
      IMSMetricsManager::create_default_global();
    }

    v14 = *(&off_1EE2BBBC0 + 1);
    if (*(&off_1EE2BBBC0 + 1))
    {
      atomic_fetch_add_explicit((*(&off_1EE2BBBC0 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&ctu::Singleton<IMSMetricsManager,IMSMetricsManager,ctu::PthreadMutexGuardPolicy<IMSMetricsManager>>::sInstance);
    AnalyticsLogger::setCallActive(*(v13 + 184), 1);
    goto LABEL_22;
  }

  if (!v7)
  {
    goto LABEL_14;
  }

LABEL_10:
  if (v7 != 2)
  {
    return;
  }

  pthread_mutex_lock(&ctu::Singleton<IMSMetricsManager,IMSMetricsManager,ctu::PthreadMutexGuardPolicy<IMSMetricsManager>>::sInstance);
  v12 = off_1EE2BBBC0;
  if (!off_1EE2BBBC0)
  {
    IMSMetricsManager::create_default_global();
  }

  v14 = *(&off_1EE2BBBC0 + 1);
  if (*(&off_1EE2BBBC0 + 1))
  {
    atomic_fetch_add_explicit((*(&off_1EE2BBBC0 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<IMSMetricsManager,IMSMetricsManager,ctu::PthreadMutexGuardPolicy<IMSMetricsManager>>::sInstance);
  AnalyticsLogger::setCallActive(*(v12 + 184), 0);
LABEL_22:
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }
}

uint64_t IMSCallInfo::continueCall(IMSCallInfo *this)
{
  ims::AccessNetwork::clear(this + 624);
  v124 = 0;
  v125 = 0;
  IMSCallInfo::stack(this, &v124);
  v2 = v124;
  if (v124)
  {
    std::string::operator=(this + 26, v124 + 143);
    std::string::operator=(this + 27, v2 + 144);
    v3 = *&v2[145].__r_.__value_.__l.__data_;
    *(this + 688) = v2[145].__r_.__value_.__s.__data_[16];
    *(this + 42) = v3;
    std::string::basic_string[abi:ne200100]<0>(&v100, "call");
    v120[0] = 0;
    v123 = 0;
    v4 = ims::debug(&v100, v120);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "ANI at call start: ", 19);
    *(v4 + 17) = 0;
    LoggableString::LoggableString(__p, this + 26);
    (*(*v4 + 40))(v4, __p);
    (*(*v4 + 64))(v4, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v4 + 17) = 0;
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    if (v123 == 1 && v122 < 0)
    {
      operator delete(v121);
    }

    if (SHIBYTE(v102) < 0)
    {
      operator delete(v100);
    }
  }

  if (*(this + 152) != 1)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "call");
    v116[0] = 0;
    v119 = 0;
    v10 = ims::warn(__p, v116);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "Not waiting to dial call ", 25);
    *(v10 + 17) = 0;
    IMSCallInfo::uuid(&v100, this);
    (*(v100 + 2))(&v100, v10);
    (*(*v10 + 64))(v10, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v10 + 17) = 0;
    v100 = &unk_1F5EBEE78;
    if (SHIBYTE(v103) < 0)
    {
      operator delete(v101);
    }

    if (v119 == 1 && v118 < 0)
    {
      operator delete(v117);
    }

    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    goto LABEL_169;
  }

  *(this + 152) = 2;
  if (*(this + 77))
  {
    v111 = 0;
    v110 = 0;
    IPTelephonyManager::getBambiClient(&v110);
    v109 = 0;
    v108 = 0;
    IPTelephonyManager::getCallManager(&v108);
    v103 = 0;
    v102 = 0;
    v105 = 0u;
    v106 = 0u;
    v107 = 0u;
    v100 = &unk_1F5EBDEF8;
    v101 = &_bambiDomain;
    v104 = 0;
    v99 = 0;
    v98 = 0;
    v5 = v110;
    (*(*v110 + 184))(&v98, v110, this + 136);
    v6 = *(this + 5);
    if (!v6 || (v7 = *(this + 4), (v8 = std::__shared_weak_count::lock(v6)) == 0))
    {
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v9 = v8;
    atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    v97 = 0;
    v96 = 0;
    if (*(v98 + 4455) < 0)
    {
      std::string::__init_copy_ctor_external(__p, *(v98 + 4432), *(v98 + 4440));
    }

    else
    {
      *__p = *(v98 + 4432);
    }

    v13 = (this + 616);
    v14 = *(this + 77);
    v95 = 0;
    v94 = 0;
    v15 = std::__shared_weak_count::lock(v9);
    if (v15)
    {
      v16 = v15;
      atomic_fetch_add_explicit(&v15->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v17 = v95;
      v94 = v7;
      v95 = v16;
      if (v17)
      {
        std::__shared_weak_count::__release_weak(v17);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    }

    else
    {
      v18 = v95;
      v95 = 0;
      v94 = 0;
      if (v18)
      {
        std::__shared_weak_count::__release_weak(v18);
      }
    }

    BambiClient::initializeCallToRemoteUri(v5, __p, (v14 + 360), &v94, (*v13 + 1), **v13, &v100, &v96);
    if (v95)
    {
      std::__shared_weak_count::__release_weak(v95);
    }

    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    v19 = v96;
    if (v96)
    {
      v20 = *(v96 + 384);
      if (!v20)
      {
        goto LABEL_141;
      }

      v21 = std::__shared_weak_count::lock(v20);
      if (!v21)
      {
        goto LABEL_141;
      }

      v22 = v21;
      if (*(v19 + 376))
      {
        v23 = v96;
        v24 = *(v96 + 384);
        if (v24 && (v25 = std::__shared_weak_count::lock(v24)) != 0)
        {
          v26 = *(v23 + 376);
          v27 = v98;
          std::__shared_weak_count::__release_shared[abi:ne200100](v25);
          std::__shared_weak_count::__release_shared[abi:ne200100](v22);
          if (v26 == v27)
          {
            goto LABEL_141;
          }
        }

        else
        {
          v32 = v98;
          std::__shared_weak_count::__release_shared[abi:ne200100](v22);
          if (!v32)
          {
LABEL_141:
            v50 = v96;
            v51 = v97;
            if (v97)
            {
              atomic_fetch_add_explicit(&v97->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v52 = *(this + 21);
            *(this + 20) = v50;
            *(this + 21) = v51;
            if (v52)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v52);
            }

            v53 = v108;
            v62[0] = 0;
            v62[1] = 0;
            IMSCallManager::setEPSFallbackCall(v108, v62);
            std::unique_ptr<IMSCallInfo::DialInfo>::reset[abi:ne200100](this + 77, 0);
            pthread_mutex_lock(&ctu::Singleton<IMSMetricsManager,IMSMetricsManager,ctu::PthreadMutexGuardPolicy<IMSMetricsManager>>::sInstance);
            v54 = off_1EE2BBBC0;
            if (!off_1EE2BBBC0)
            {
              IMSMetricsManager::create_default_global();
            }

            v55 = *(&off_1EE2BBBC0 + 1);
            if (*(&off_1EE2BBBC0 + 1))
            {
              atomic_fetch_add_explicit((*(&off_1EE2BBBC0 + 1) + 8), 1uLL, memory_order_relaxed);
            }

            pthread_mutex_unlock(&ctu::Singleton<IMSMetricsManager,IMSMetricsManager,ctu::PthreadMutexGuardPolicy<IMSMetricsManager>>::sInstance);
            v56 = *(this + 21);
            v61[0] = *(this + 20);
            v61[1] = v56;
            if (v56)
            {
              atomic_fetch_add_explicit(&v56->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            IMSMetricsManager::logSessionRequestedEvent(v54, v61, *(this + 72), 1);
            if (v56)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v56);
            }

            if (v55)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v55);
            }

            IMSCallInfo::uuid(v59, this);
            if (*(this + 601))
            {
              v57 = kIMSCallStatusPulling;
            }

            else
            {
              v57 = kIMSCallStatusDialing;
            }

            (*(*v53 + 216))(v53, v59, *v57, *(this + 72), 0);
            v59[0] = &unk_1F5EBEE78;
            if ((v60 & 0x80000000) == 0)
            {
              goto LABEL_161;
            }

            v45 = v59[1];
LABEL_160:
            operator delete(v45);
LABEL_161:
            if (v97)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v97);
            }

            std::__shared_weak_count::__release_weak(v9);
            if (v99)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v99);
            }

            ImsResult::~ImsResult(&v100);
            if (v109)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v109);
            }

            if (v111)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v111);
            }

LABEL_169:
            v12 = 1;
            goto LABEL_170;
          }
        }

        std::string::basic_string[abi:ne200100]<0>(__p, "call");
        v63[0] = 0;
        v66 = 0;
        v33 = ims::warn(__p, v63);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v33 + 8), "desired stack (", 15);
        *(v33 + 17) = 0;
        (*(*v33 + 32))(v33, this + 136);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v33 + 8), ") not equal to actual stack (", 29);
        *(v33 + 17) = 0;
        v34 = v96;
        v35 = *(v96 + 384);
        if (v35)
        {
          v36 = std::__shared_weak_count::lock(v35);
          if (v36)
          {
            v37 = *(v34 + 376);
          }

          else
          {
            v37 = 0;
          }
        }

        else
        {
          v37 = 0;
          v36 = 0;
        }

        if (*(v37 + 4455) < 0)
        {
          std::string::__init_copy_ctor_external(&v85, *(v37 + 4432), *(v37 + 4440));
        }

        else
        {
          v85 = *(v37 + 4432);
        }

        (*(*v33 + 32))(v33, &v85);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v33 + 8), ")", 1);
        *(v33 + 17) = 0;
        (*(*v33 + 64))(v33, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v33 + 17) = 0;
        if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v85.__r_.__value_.__l.__data_);
        }

        if (v36)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v36);
        }

        if (v66 == 1 && v65 < 0)
        {
          operator delete(v64);
        }

        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
        }

        v46 = v96;
        v47 = *(v96 + 384);
        if (v47)
        {
          v22 = std::__shared_weak_count::lock(v47);
          if (v22)
          {
            v48 = *(v46 + 376);
          }

          else
          {
            v48 = 0;
          }
        }

        else
        {
          v48 = 0;
          v22 = 0;
        }

        if (*(v48 + 4455) < 0)
        {
          std::string::__init_copy_ctor_external(__p, *(v48 + 4432), *(v48 + 4440));
        }

        else
        {
          v49 = v48 + 4432;
          *__p = *v49;
          *&__p[16] = *(v49 + 16);
        }

        if (*(this + 159) < 0)
        {
          operator delete(*(this + 17));
        }

        *(this + 136) = *__p;
        *(this + 19) = *&__p[16];
        __p[23] = 0;
        __p[0] = 0;
        if (!v22)
        {
          goto LABEL_141;
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v22);
      goto LABEL_141;
    }

    *__p = 0x100uLL;
    *&__p[24] = 0;
    v91 = 0;
    *&__p[16] = 0;
    __s = 0u;
    memset(v93, 0, sizeof(v93));
    v86 = 0u;
    v87 = 0u;
    v88 = 0u;
    v89 = 0u;
    v85.__r_.__value_.__r.__words[0] = &unk_1F5EBDEF8;
    v85.__r_.__value_.__l.__size_ = &SessionTerminatedResultDomain::_domain;
    LODWORD(v85.__r_.__value_.__r.__words[2]) = 28;
    if (v101 == &SessionTerminatedResultDomain::_domain)
    {
      v28 = v102;
      ImsResult::~ImsResult(&v85);
      if (v28 == 28)
      {
        std::string::__assign_external(&__p[8], "SessionTerminated:OnEmergencyCall", 0x21uLL);
        v29 = kIMSCallDisconnectionReasonOnEmergencyCall;
        goto LABEL_80;
      }
    }

    else
    {
      ImsResult::~ImsResult(&v85);
    }

    if (*(v98 + 320) != 2)
    {
      goto LABEL_69;
    }

    v30 = *(v98 + 248);
    v31 = *(v98 + 256);
    if (v31)
    {
      atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
      if (*(SipUserAgent::config(v30) + 456) != 1)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v31);
        goto LABEL_69;
      }
    }

    else if ((*(SipUserAgent::config(v30) + 456) & 1) == 0)
    {
LABEL_69:
      std::string::basic_string[abi:ne200100]<0>(&v85, "call");
      v77[0] = 0;
      v80 = 0;
      v41 = ims::error(&v85, v77);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v41 + 8), "IMSCallInfo::continueCall not falling back to CS", 48);
      *(v41 + 17) = 0;
      (*(*v41 + 64))(v41, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v41 + 17) = 0;
      if (v80 == 1 && v79 < 0)
      {
        operator delete(v78);
      }

      v42 = @"kCallDisconnectionReasonUnknownError";
      if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v85.__r_.__value_.__l.__data_);
      }

      goto LABEL_81;
    }

    v38 = *(v98 + 248);
    v39 = *(v98 + 256);
    if (v39)
    {
      atomic_fetch_add_explicit(&v39->__shared_owners_, 1uLL, memory_order_relaxed);
      v40 = *(SipUserAgent::config(v38) + 912);
      std::__shared_weak_count::__release_shared[abi:ne200100](v39);
    }

    else
    {
      v40 = *(SipUserAgent::config(v38) + 912);
    }

    if (v31)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v31);
    }

    if (v40)
    {
      goto LABEL_69;
    }

    std::string::basic_string[abi:ne200100]<0>(&v85, "call");
    v81[0] = 0;
    v84 = 0;
    v43 = ims::error(&v85, v81);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v43 + 8), "IMSCallInfo::continueCall falling back to CS", 44);
    *(v43 + 17) = 0;
    (*(*v43 + 64))(v43, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v43 + 17) = 0;
    if (v84 == 1 && v83 < 0)
    {
      operator delete(v82);
    }

    if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v85.__r_.__value_.__l.__data_);
    }

    v29 = kIMSCallDisconnectionReasonRequiresCSFB;
LABEL_80:
    v42 = *v29;
LABEL_81:
    LODWORD(v91) = 4;
    __p[2] = 1;
    v67[0] = MEMORY[0x1E69E9820];
    v67[1] = 1174405120;
    v67[2] = ___ZN11IMSCallInfo12continueCallEv_block_invoke;
    v67[3] = &__block_descriptor_tmp_33;
    v67[4] = this;
    v67[5] = v108;
    v68 = v109;
    if (v109)
    {
      atomic_fetch_add_explicit(&v109->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v69 = v42;
    v70 = *__p;
    v71 = __p[2];
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v72, *&__p[8], *&__p[16]);
    }

    else
    {
      v72 = *&__p[8];
    }

    v73 = v91;
    v74 = BYTE4(v91);
    if (SHIBYTE(v93[0]) < 0)
    {
      std::string::__init_copy_ctor_external(&v75, __s, *(&__s + 1));
    }

    else
    {
      *&v75.__r_.__value_.__l.__data_ = __s;
      v75.__r_.__value_.__r.__words[2] = v93[0];
    }

    if (SHIBYTE(v93[3]) < 0)
    {
      std::string::__init_copy_ctor_external(&v76, v93[1], v93[2]);
    }

    else
    {
      v76 = *&v93[1];
    }

    ims::performBlock(v67);
    v44 = **v13;
    if (v44)
    {
      if (*(v44 + 4775) < 0)
      {
        operator delete(*(v44 + 4752));
      }

      SipUri::~SipUri((v44 + 4344));
      SipStackConfig::~SipStackConfig((v44 + 1752));
      SipRegistrationConfig::~SipRegistrationConfig((v44 + 80));
      if (*(v44 + 71) < 0)
      {
        operator delete(*(v44 + 48));
      }

      if (*(v44 + 47) < 0)
      {
        operator delete(*(v44 + 24));
      }

      if (*(v44 + 23) < 0)
      {
        operator delete(*v44);
      }

      MEMORY[0x1E69235B0](v44, 0x10B2C40F20492F8);
    }

    if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v76.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v75.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v72.__r_.__value_.__l.__data_);
    }

    if (v68)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v68);
    }

    if (SHIBYTE(v93[3]) < 0)
    {
      operator delete(v93[1]);
    }

    if (SHIBYTE(v93[0]) < 0)
    {
      operator delete(__s);
    }

    if ((__p[31] & 0x80000000) == 0)
    {
      goto LABEL_161;
    }

    v45 = *&__p[8];
    goto LABEL_160;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "call");
  v112[0] = 0;
  v115 = 0;
  v11 = ims::warn(__p, v112);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), "No dial information cached for ", 31);
  *(v11 + 17) = 0;
  IMSCallInfo::uuid(&v100, this);
  (*(v100 + 2))(&v100, v11);
  (*(*v11 + 64))(v11, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v11 + 17) = 0;
  v100 = &unk_1F5EBEE78;
  if (SHIBYTE(v103) < 0)
  {
    operator delete(v101);
  }

  if (v115 == 1 && v114 < 0)
  {
    operator delete(v113);
  }

  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  v12 = 0;
LABEL_170:
  if (v125)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v125);
  }

  return v12;
}

void sub_1E4D11A74(_Unwind_Exception *a1)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (STACK[0x258])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x258]);
  }

  std::__shared_weak_count::__release_weak(v1);
  if (STACK[0x268])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x268]);
  }

  ImsResult::~ImsResult(&STACK[0x270]);
  if (STACK[0x2D0])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x2D0]);
  }

  if (STACK[0x2E0])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x2E0]);
  }

  v5 = *(v3 - 88);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  _Unwind_Resume(a1);
}

uint64_t ims::AccessNetwork::clear(uint64_t this)
{
  if (*(this + 23) < 0)
  {
    **this = 0;
    *(this + 8) = 0;
  }

  else
  {
    *this = 0;
    *(this + 23) = 0;
  }

  if (*(this + 47) < 0)
  {
    **(this + 24) = 0;
    *(this + 32) = 0;
  }

  else
  {
    *(this + 24) = 0;
    *(this + 47) = 0;
  }

  *(this + 56) = 0;
  return this;
}

void ___ZN11IMSCallInfo12continueCallEv_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  IMSCallInfo::uuid(v9, v2);
  ims::CFString::asString(&__p, *(a1 + 56), 0x8000100);
  IMSCallManager::sendCallDisconnectionNotification(v3, v9, &__p, a1 + 64);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v9[0] = &unk_1F5EBEE78;
  if (v10 < 0)
  {
    operator delete(v9[1]);
  }

  *(v2 + 603) = 1;
  v4 = *(a1 + 40);
  v5 = *(v2 + 40);
  v6 = *(v2 + 32);
  if (!v5 || (v7 = std::__shared_weak_count::lock(v5)) == 0)
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  (*(*v4 + 224))(v4, &v6);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

void sub_1E4D11F38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

void IMSCallManager::sendCallDisconnectionNotification(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "call");
  v32[0] = 0;
  v35 = 0;
  v8 = ims::debug(__p, v32);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "Sending Call Status Changed notification: disconnection for callid: ", 68);
  *(v8 + 17) = 0;
  (*(*a2 + 16))(a2, v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), ", reason = ", 11);
  *(v8 + 17) = 0;
  LoggableString::LoggableString(&v31, a3);
  (*(*v8 + 40))(v8, &v31);
  (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v8 + 17) = 0;
  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  if (v35 == 1 && v34 < 0)
  {
    operator delete(v33);
  }

  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  v29 = 0;
  v30 = 0;
  v27 = &unk_1F5EBEE78;
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v28, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v28 = *(a2 + 8);
  }

  IMSCallManager::callInfoForUuid(a1, &v27, &v29);
  v27 = &unk_1F5EBEE78;
  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  v9 = v29;
  if (!v29)
  {
    goto LABEL_19;
  }

  IMSCallInfo::stack(v29, __p);
  v10 = *__p;
  if (*&__p[8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&__p[8]);
  }

  if (v10)
  {
    memset(&v31, 0, sizeof(v31));
    IMSCallInfo::stack(v9, __p);
    if (*(*__p + 4455) < 0)
    {
      std::string::__init_copy_ctor_external(&v31, *(*__p + 4432), *(*__p + 4440));
    }

    else
    {
      v31 = *(*__p + 4432);
    }

    if (*&__p[8])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*&__p[8]);
    }

    memset(&__p[3], 0, 85);
    *__p = *a4;
    __p[2] = *(a4 + 2);
    if (*(a4 + 31) < 0)
    {
      std::string::__init_copy_ctor_external(&__p[8], *(a4 + 8), *(a4 + 16));
    }

    else
    {
      *&__p[8] = *(a4 + 8);
      *&__p[24] = *(a4 + 24);
    }

    *&__p[32] = *(a4 + 32);
    __p[36] = *(a4 + 36);
    if (*(a4 + 63) < 0)
    {
      std::string::__init_copy_ctor_external(&__p[40], *(a4 + 40), *(a4 + 48));
    }

    else
    {
      *&__p[40] = *(a4 + 40);
      *&__p[56] = *(a4 + 56);
    }

    if (*(a4 + 87) < 0)
    {
      std::string::__init_copy_ctor_external(&__p[64], *(a4 + 64), *(a4 + 72));
    }

    else
    {
      *&__p[64] = *(a4 + 64);
      *&__p[80] = *(a4 + 80);
    }

    v12 = v30;
    v21[0] = v9;
    v21[1] = v30;
    if (v30)
    {
      atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    ims::CFString::asString(&v20, @"kCallDisconnectionReasonNormal", 0x8000100);
    v13 = *(a3 + 23);
    if (v13 >= 0)
    {
      v14 = *(a3 + 23);
    }

    else
    {
      v14 = *(a3 + 8);
    }

    size = HIBYTE(v20.__r_.__value_.__r.__words[2]);
    if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v20.__r_.__value_.__l.__size_;
    }

    if (v14 == size)
    {
      if (v13 >= 0)
      {
        v16 = a3;
      }

      else
      {
        v16 = *a3;
      }

      if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v17 = &v20;
      }

      else
      {
        v17 = v20.__r_.__value_.__r.__words[0];
      }

      v18 = memcmp(v16, v17, v14) == 0;
    }

    else
    {
      v18 = 0;
    }

    __p[36] = IMSCallManager::sendCallEndRequest(a1, v21, v18);
    if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v20.__r_.__value_.__l.__data_);
    }

    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }

    v19 = IMSClientManager::delegateForStack(&v31);
    if (*(a2 + 31) < 0)
    {
      std::string::__init_copy_ctor_external(&v20, *(a2 + 8), *(a2 + 16));
    }

    else
    {
      v20 = *(a2 + 8);
    }

    (*(*v19 + 16))(v19, &v20, a3, __p);
    if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v20.__r_.__value_.__l.__data_);
    }

    if ((__p[87] & 0x80000000) != 0)
    {
      operator delete(*&__p[64]);
    }

    if ((__p[63] & 0x80000000) != 0)
    {
      operator delete(*&__p[40]);
    }

    if ((__p[31] & 0x80000000) != 0)
    {
      operator delete(*&__p[8]);
    }

    if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v31.__r_.__value_.__l.__data_);
    }
  }

  else
  {
LABEL_19:
    std::string::basic_string[abi:ne200100]<0>(__p, "call");
    v23[0] = 0;
    v26 = 0;
    v11 = ims::error(__p, v23);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), "Unable to disconnect call - unknown stack id", 44);
    *(v11 + 17) = 0;
    (*(*v11 + 64))(v11, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v11 + 17) = 0;
    if (v26 == 1 && v25 < 0)
    {
      operator delete(v24);
    }

    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    v12 = v30;
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }
}

void sub_1E4D12508(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, char a47, uint64_t a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54)
{
  ims::DisconnectInfo::~DisconnectInfo(&a18);
  if (*(v54 - 121) < 0)
  {
    operator delete(*(v54 - 144));
  }

  v56 = *(v54 - 152);
  if (v56)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v56);
  }

  _Unwind_Resume(a1);
}

void __copy_helper_block_e8_40c42_ZTSNSt3__110shared_ptrI14IMSCallManagerEE64c26_ZTSN3ims14DisconnectInfoE(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a2 + 64);
  *(a1 + 66) = *(a2 + 66);
  *(a1 + 64) = v5;
  if (*(a2 + 95) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 72), *(a2 + 72), *(a2 + 80));
  }

  else
  {
    v6 = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 72) = v6;
  }

  v7 = *(a2 + 96);
  *(a1 + 100) = *(a2 + 100);
  *(a1 + 96) = v7;
  if (*(a2 + 127) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 104), *(a2 + 104), *(a2 + 112));
  }

  else
  {
    v8 = *(a2 + 104);
    *(a1 + 120) = *(a2 + 120);
    *(a1 + 104) = v8;
  }

  if (*(a2 + 151) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 128), *(a2 + 128), *(a2 + 136));
  }

  else
  {
    v9 = *(a2 + 128);
    *(a1 + 144) = *(a2 + 144);
    *(a1 + 128) = v9;
  }
}

void sub_1E4D12748(_Unwind_Exception *exception_object)
{
  if (*(v1 + 127) < 0)
  {
    operator delete(*(v1 + 104));
  }

  if (*(v1 + 95) < 0)
  {
    operator delete(*(v1 + 72));
  }

  v3 = *(v1 + 48);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_e8_40c42_ZTSNSt3__110shared_ptrI14IMSCallManagerEE64c26_ZTSN3ims14DisconnectInfoE(uint64_t a1)
{
  if (*(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
  }

  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  v2 = *(a1 + 48);
  if (v2)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void ims::DisconnectInfo::~DisconnectInfo(void **this)
{
  if (*(this + 87) < 0)
  {
    operator delete(this[8]);
  }

  if (*(this + 63) < 0)
  {
    operator delete(this[5]);
  }

  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

void IMSCallManager::setEPSFallbackCall(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  if (v3)
  {
    IMSCallInfo::uuid(v4, v3);
    if (*(a1 + 247) < 0)
    {
      operator delete(*(a1 + 224));
    }

    *(a1 + 224) = *&v4[8];
    *(a1 + 240) = v5;
  }

  else if (*(a1 + 247) < 0)
  {
    **(a1 + 224) = 0;
    *(a1 + 232) = 0;
  }

  else
  {
    *(a1 + 224) = 0;
    *(a1 + 247) = 0;
  }
}

void IMSCallInfo::endCall(uint64_t a1, const std::string *a2)
{
  v66 = 0;
  v67 = 0;
  IPTelephonyManager::getCallManager(&v66);
  if (!*(a1 + 584))
  {
    if (!*(a1 + 160))
    {
      goto LABEL_109;
    }

    memset(&v65, 0, sizeof(v65));
    v11 = HIBYTE(a2->__r_.__value_.__r.__words[2]);
    if ((v11 & 0x80) != 0)
    {
      std::string::__init_copy_ctor_external(&v65, a2->__r_.__value_.__l.__data_, a2->__r_.__value_.__l.__size_);
      if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
      {
        if (a2->__r_.__value_.__l.__size_ != 13)
        {
          goto LABEL_50;
        }

        v16 = a2->__r_.__value_.__r.__words[0];
LABEL_37:
        v17 = v16->__r_.__value_.__r.__words[0];
        v18 = *(v16->__r_.__value_.__r.__words + 5);
        if (v17 == *"UserTriggered" && v18 == *"riggered")
        {
          v22 = *(a1 + 160);
          if (v22[69])
          {
            v23 = v22[48];
            if (v23)
            {
              v23 = std::__shared_weak_count::lock(v23);
              v24 = v23;
              if (v23)
              {
                v23 = v22[47];
              }
            }

            else
            {
              v24 = 0;
            }

            v31 = SipStack::prefs(v23);
            v32 = ImsPrefs::EmergencyAnonymousAutomaticRedial(v31);
            v33 = v32;
            if (v24)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v24);
              if (v33)
              {
LABEL_68:
                if (*(a1 + 606) != 1 || (v34 = *(*(a1 + 160) + 408)) != 0 && (SipSession::confirmed(v34) & 1) != 0)
                {
                  if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
                  {
                    v65.__r_.__value_.__l.__size_ = 22;
                    v35 = v65.__r_.__value_.__r.__words[0];
                  }

                  else
                  {
                    *(&v65.__r_.__value_.__s + 23) = 22;
                    v35 = &v65;
                  }

                  qmemcpy(v35, "EmergencyUserTriggered", 22);
                  v30 = &v35->__r_.__value_.__s.__data_[22];
LABEL_76:
                  *v30 = 0;
                  goto LABEL_77;
                }

                std::string::__assign_external(&v65, "EmergencyUserTriggeredTimeout", 0x1DuLL);
LABEL_77:
                if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
                {
                  if (a2->__r_.__value_.__l.__size_ != 13)
                  {
LABEL_92:
                    std::string::basic_string[abi:ne200100]<0>(v53, "call");
                    v49[0] = 0;
                    v52 = 0;
                    v42 = ims::debug(v53, v49);
                    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v42 + 8), "endCall: reason= ", 17);
                    *(v42 + 17) = 0;
                    LoggableString::LoggableString(&v48, a2);
                    (*(*v42 + 40))(v42, &v48);
                    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v42 + 8), " (", 2);
                    *(v42 + 17) = 0;
                    LoggableString::LoggableString(&v47, &v65);
                    (*(*v42 + 40))(v42, &v47);
                    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v42 + 8), "); confirmed= ", 14);
                    *(v42 + 17) = 0;
                    v43 = *(*(a1 + 160) + 408);
                    v44 = "false";
                    if (v43)
                    {
                      if (SipSession::confirmed(v43))
                      {
                        v44 = "true";
                        v45 = 4;
                      }

                      else
                      {
                        v45 = 5;
                      }
                    }

                    else
                    {
                      v45 = 5;
                    }

                    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v42 + 8), v44, v45);
                    *(v42 + 17) = 0;
                    (*(*v42 + 64))(v42, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                    *(v42 + 17) = 0;
                    if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v47.__r_.__value_.__l.__data_);
                    }

                    if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v48.__r_.__value_.__l.__data_);
                    }

                    if (v52 == 1 && v51 < 0)
                    {
                      operator delete(v50);
                    }

                    if (v54 < 0)
                    {
                      operator delete(v53[0]);
                    }

                    BambiCall::endWithReason(*(a1 + 160), v46);
                    ImsResult::~ImsResult(v46);
                    goto LABEL_107;
                  }

                  v36 = a2->__r_.__value_.__r.__words[0];
LABEL_83:
                  v37 = v36->__r_.__value_.__r.__words[0];
                  v38 = *(v36->__r_.__value_.__r.__words + 5);
                  if (v37 == *"UserTriggered" && v38 == *"riggered")
                  {
                    v40 = *(a1 + 160);
                    v41 = *(v40 + 1727);
                    if (v41 < 0)
                    {
                      v41 = *(v40 + 1712);
                    }

                    if (v41)
                    {
                      std::string::operator=(&v65, (v40 + 1704));
                    }
                  }

                  goto LABEL_92;
                }

                v20 = HIBYTE(a2->__r_.__value_.__r.__words[2]);
LABEL_79:
                v36 = a2;
                if (v20 != 13)
                {
                  goto LABEL_92;
                }

                goto LABEL_83;
              }
            }

            else if (v32)
            {
              goto LABEL_68;
            }
          }
        }

LABEL_41:
        if ((SHIBYTE(a2->__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          v20 = HIBYTE(a2->__r_.__value_.__r.__words[2]);
          v21 = a2;
          if (v20 != 13)
          {
            goto LABEL_79;
          }

          goto LABEL_52;
        }

LABEL_50:
        if (a2->__r_.__value_.__l.__size_ != 13)
        {
          goto LABEL_77;
        }

        v21 = a2->__r_.__value_.__r.__words[0];
LABEL_52:
        v25 = v21->__r_.__value_.__r.__words[0];
        v26 = *(v21->__r_.__value_.__r.__words + 5);
        if (v25 != *"UserTriggered" || v26 != *"riggered")
        {
          goto LABEL_77;
        }

        v28 = *(*(a1 + 160) + 408);
        if (v28)
        {
          if (SipSession::confirmed(v28))
          {
            goto LABEL_77;
          }
        }

        if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
        {
          v65.__r_.__value_.__l.__size_ = 14;
          v29 = v65.__r_.__value_.__r.__words[0];
        }

        else
        {
          *(&v65.__r_.__value_.__s + 23) = 14;
          v29 = &v65;
        }

        qmemcpy(v29, "RejectedByUser", 14);
        v30 = &v29->__r_.__value_.__s.__data_[14];
        goto LABEL_76;
      }

      v11 = HIBYTE(a2->__r_.__value_.__r.__words[2]);
    }

    else
    {
      v65 = *a2;
    }

    v16 = a2;
    if (v11 != 13)
    {
      goto LABEL_41;
    }

    goto LABEL_37;
  }

  v4 = v66;
  (*(*v66 + 200))(&v65, v66);
  v5 = v65.__r_.__value_.__r.__words[0];
  if (v65.__r_.__value_.__l.__size_)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v65.__r_.__value_.__l.__size_);
  }

  if (v5)
  {
    v6 = std::string::basic_string[abi:ne200100]<0>(&v65, "call");
    v61[0] = 0;
    v64 = 0;
    v7 = ims::debug(v6, v61);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "endCall: CallInfo ", 18);
    *(v7 + 17) = 0;
    (*(*(a1 + 104) + 16))(a1 + 104, v7);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), " is in a conference call.  Removing participant from call.", 58);
    *(v7 + 17) = 0;
    (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v7 + 17) = 0;
    if (v64 == 1 && v63 < 0)
    {
      operator delete(v62);
    }

    if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v65.__r_.__value_.__l.__data_);
    }

    (*(*v4 + 200))(&v65, v4);
    v8 = v65.__r_.__value_.__r.__words[0];
    v9 = *(a1 + 592);
    v59 = *(a1 + 584);
    v60 = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v10 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
    if (v10 < 0)
    {
      if (a2->__r_.__value_.__l.__size_ != 5)
      {
LABEL_29:
        v15 = 0;
LABEL_30:
        BambiConferenceCall::removeParticipant(v8, &v59, v15);
        if (v60)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v60);
        }

        if (v65.__r_.__value_.__l.__size_)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v65.__r_.__value_.__l.__size_);
        }

        goto LABEL_109;
      }

      a2 = a2->__r_.__value_.__r.__words[0];
    }

    else if (v10 != 5)
    {
      goto LABEL_29;
    }

    v15 = LODWORD(a2->__r_.__value_.__l.__data_) == *"SRVCC" && a2->__r_.__value_.__s.__data_[4] == str_7_10[4];
    goto LABEL_30;
  }

  v12 = std::string::basic_string[abi:ne200100]<0>(&v65, "call");
  v55[0] = 0;
  v58 = 0;
  v13 = ims::error(v12, v55);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), "endCall: CallInfo ", 18);
  *(v13 + 17) = 0;
  (*(*(a1 + 104) + 16))(a1 + 104, v13);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), " is in a conference call, but manager doesn't have one.", 55);
  *(v13 + 17) = 0;
  (*(*v13 + 64))(v13, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v13 + 17) = 0;
  if (v58 == 1 && v57 < 0)
  {
    operator delete(__p);
  }

LABEL_107:
  if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v65.__r_.__value_.__l.__data_);
  }

LABEL_109:
  if (v67)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v67);
  }
}

void sub_1E4D13038(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, char a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, int a53, __int16 a54, char a55, char a56, uint64_t a57, char a58)
{
  if (v58)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v58);
  }

  if (*(v59 - 73) < 0)
  {
    operator delete(*(v59 - 96));
  }

  v61 = *(v59 - 56);
  if (v61)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v61);
  }

  _Unwind_Resume(exception_object);
}

void IMSCallInfo::ringCall(IMSCallInfo *this)
{
  v1 = *(this + 20);
  if (v1)
  {
    v2 = BambiCall::ring(&v9, v1);
    v3 = (*(*v10 + 24))(v10, v11, v2);
    ImsResult::~ImsResult(&v9);
    if (v3)
    {
      std::string::basic_string[abi:ne200100]<0>(&v9, "call");
      v5[0] = 0;
      v8 = 0;
      v4 = ims::debug(&v9, v5);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "Couldn't send ringing notification", 34);
      *(v4 + 17) = 0;
      (*(*v4 + 64))(v4, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v4 + 17) = 0;
      if (v8 == 1 && v7 < 0)
      {
        operator delete(__p);
      }

      if (v12 < 0)
      {
        operator delete(v9);
      }
    }
  }
}

void IMSCallInfo::answerCall(void *a1, const std::string *a2)
{
  if (!a1[73])
  {
    v4 = a1[20];
    if (!v4)
    {
      return;
    }

    v23 = 0;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    *__p = 0u;
    BambiCall::answer(v4, a2, __p);
    if (!(*(*__p[1] + 24))(__p[1], v19))
    {
      goto LABEL_17;
    }

    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v11[0] = &unk_1F5EBDEF8;
    v11[1] = &_bambiDomain;
    v12 = 1073741838;
    if (__p[1] == &_bambiDomain)
    {
      v5 = v19;
      ImsResult::~ImsResult(v11);
      if (v5 == 1073741838)
      {
LABEL_17:
        ImsResult::~ImsResult(__p);
        return;
      }
    }

    else
    {
      ImsResult::~ImsResult(v11);
    }

    std::string::basic_string[abi:ne200100]<0>(v11, "call");
    v7[0] = 0;
    v10 = 0;
    v6 = ims::debug(v11, v7);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "Couldn't answer call", 20);
    *(v6 + 17) = 0;
    (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v6 + 17) = 0;
    if (v10 == 1 && v9 < 0)
    {
      operator delete(v8);
    }

    if (v13 < 0)
    {
      operator delete(v11[0]);
    }

    goto LABEL_17;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "call");
  v24[0] = 0;
  v27 = 0;
  v3 = ims::error(__p, v24);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "IMSCallManager::answerCall: call ", 33);
  *(v3 + 17) = 0;
  (*(a1[13] + 16))(a1 + 13, v3);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), " is already in a conference.", 28);
  *(v3 + 17) = 0;
  (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v3 + 17) = 0;
  if (v27 == 1 && v26 < 0)
  {
    operator delete(v25);
  }

  if (SBYTE7(v19) < 0)
  {
    operator delete(__p[0]);
  }
}

void IMSCallInfo::setActive(BambiCall **this, uint64_t a2)
{
  if (this[73])
  {
    IPTelephonyManager::getCallManager(&v4);
    (*(*v4 + 184))(v4, a2);
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }

  else
  {
    v3 = this[20];
    if (v3)
    {
      if (a2)
      {

        BambiCall::performLocalResume(v3);
      }

      else
      {

        BambiCall::performLocalHold(v3);
      }
    }
  }
}

void sub_1E4D13694(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IMSCallInfo::isActive(IMSCallInfo *this)
{
  if (*(this + 73))
  {
    v1 = std::string::basic_string[abi:ne200100]<0>(&v21, "call");
    v17[0] = 0;
    v20 = 0;
    v2 = ims::debug(v1, v17);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v2 + 8), "isActive: call is conference participant", 40);
    *(v2 + 17) = 0;
    (*(*v2 + 64))(v2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v2 + 17) = 0;
    if (v20 == 1 && v19 < 0)
    {
      operator delete(__p);
    }

    if (v23 < 0)
    {
      operator delete(v21);
    }

    v15 = 0;
    v16 = 0;
    IPTelephonyManager::getCallManager(&v21);
    (*(*v21 + 200))(&v15);
    if (v22)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v22);
    }

    if (v15 && (v3 = *(v15 + 408)) != 0 && SipSession::confirmed(v3) && (*(v15 + 480) & 0xFFFFFFFE) != 2)
    {
      v9 = std::string::basic_string[abi:ne200100]<0>(&v21, "call");
      v11[0] = 0;
      v14 = 0;
      v10 = ims::debug(v9, v11);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "isActive: conference call is confirmed or unheld", 48);
      *(v10 + 17) = 0;
      (*(*v10 + 64))(v10, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v10 + 17) = 0;
      if (v14 == 1 && v13 < 0)
      {
        operator delete(v12);
      }

      if (v23 < 0)
      {
        operator delete(v21);
      }

      v4 = 0;
    }

    else
    {
      v4 = 1;
    }

    if (v16)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    }

    if ((v4 & 1) == 0)
    {
      return 1;
    }
  }

  else
  {
    v7 = *(this + 20);
    if (v7)
    {
      v8 = *(v7 + 408);
      if (v8)
      {
        if (SipSession::confirmed(v8) && (*(*(this + 20) + 480) & 0xFFFFFFFE) != 2)
        {
          return 1;
        }
      }
    }
  }

  return 0;
}

void sub_1E4D138E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char a19, uint64_t a20, std::__shared_weak_count *a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, char a31)
{
  if (a21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a21);
  }

  _Unwind_Resume(exception_object);
}

SipSession *IMSCallInfo::isAlerting(IMSCallInfo *this)
{
  v1 = *(this + 20);
  if (!v1)
  {
    return 0;
  }

  result = *(v1 + 408);
  if (result)
  {
    return (SipSession::confirmed(result) ^ 1);
  }

  return result;
}

void IMSCallInfo::refresh(IMSCallInfo *this, BOOL a2)
{
  v2 = *(this + 20);
  if (v2)
  {
    BambiCall::handleSRVCCFailure(v3, v2, a2);
    ImsResult::~ImsResult(v3);
  }
}

void IMSCallInfo::setBasebandCallId(IMSCallInfo *this, uint64_t a2)
{
  *(this + 72) = a2;
  v3 = std::string::basic_string[abi:ne200100]<0>(&v9, "call");
  v5[0] = 0;
  v8 = 0;
  v4 = ims::debug(v3, v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "Setting basebandCallId to ", 26);
  *(v4 + 17) = 0;
  MEMORY[0x1E6923350](*(v4 + 8), a2);
  *(v4 + 17) = 0;
  (*(*v4 + 64))(v4, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v4 + 17) = 0;
  if (v8 == 1 && v7 < 0)
  {
    operator delete(__p);
  }

  if (v10 < 0)
  {
    operator delete(v9);
  }
}

void sub_1E4D13ADC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18)
{
  if (a18 == 1 && a16 < 0)
  {
    operator delete(__p);
  }

  if (*(v18 - 17) < 0)
  {
    operator delete(*(v18 - 40));
  }

  _Unwind_Resume(exception_object);
}

void ___ZN11IMSCallInfo27sendAccessBarringDisconnectEv_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v10 = 0;
  v11 = 0;
  IPTelephonyManager::getCallManager(&v10);
  v3 = v10;
  IMSCallInfo::uuid(v8, v2);
  ims::CFString::asString(&__p, *(a1 + 40), 0x8000100);
  IMSCallManager::sendCallDisconnectionNotification(v3, v8, &__p, a1 + 48);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v8[0] = &unk_1F5EBEE78;
  if (v9 < 0)
  {
    operator delete(v8[1]);
  }

  *(v2 + 603) = 1;
  v4 = *(v2 + 40);
  v5 = *(v2 + 32);
  if (!v4)
  {
    v6 = 0;
LABEL_13:
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v6 = std::__shared_weak_count::lock(v4);
  if (!v6)
  {
    goto LABEL_13;
  }

  (*(*v3 + 224))(v3, &v5);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }
}

void sub_1E4D13C3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  v26 = *(v24 - 40);
  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  _Unwind_Resume(exception_object);
}

void __copy_helper_block_e8_48c26_ZTSN3ims14DisconnectInfoE(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  *(a1 + 50) = *(a2 + 50);
  *(a1 + 48) = v4;
  if (*(a2 + 79) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 56), *(a2 + 56), *(a2 + 64));
  }

  else
  {
    v5 = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 56) = v5;
  }

  v6 = *(a2 + 80);
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 80) = v6;
  if (*(a2 + 111) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 88), *(a2 + 88), *(a2 + 96));
  }

  else
  {
    v7 = *(a2 + 88);
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 88) = v7;
  }

  if (*(a2 + 135) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 112), *(a2 + 112), *(a2 + 120));
  }

  else
  {
    v8 = *(a2 + 112);
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 112) = v8;
  }
}

void sub_1E4D13D74(_Unwind_Exception *exception_object)
{
  if (*(v1 + 111) < 0)
  {
    operator delete(*(v1 + 88));
  }

  if (*(v1 + 79) < 0)
  {
    operator delete(*(v1 + 56));
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_e8_48c26_ZTSN3ims14DisconnectInfoE(uint64_t a1)
{
  if (*(a1 + 135) < 0)
  {
    operator delete(*(a1 + 112));
  }

  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  if (*(a1 + 79) < 0)
  {
    v2 = *(a1 + 56);

    operator delete(v2);
  }
}

void IMSCallInfo::handleJoinedConferenceEvent(IMSCallInfo *this, BambiCallJoinedConferenceEvent *a2)
{
  v4 = *(a2 + 3);
  if (v4)
  {
    v5 = *(a2 + 2);
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v6 = std::__shared_weak_count::lock(v4);
    if (!v6)
    {
      v5 = 0;
    }

    std::__shared_weak_count::__release_weak(v4);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  if (v5 == *(this + 20))
  {
    std::string::operator=((this + 80), v5 + 22);
    v9 = std::string::basic_string[abi:ne200100]<0>(&v40, "call");
    v32[0] = 0;
    v35 = 0;
    v10 = ims::debug(v9, v32);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "Swapping call for conference participant", 40);
    *(v10 + 17) = 0;
    (*(*v10 + 64))(v10, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v10 + 17) = 0;
    if (v35 == 1 && v34 < 0)
    {
      operator delete(v33);
    }

    if (v42 < 0)
    {
      operator delete(v40);
    }

    v11 = *(a2 + 5);
    if (v11)
    {
      v12 = *(a2 + 4);
      atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v13 = std::__shared_weak_count::lock(v11);
      if (v13)
      {
        v14 = v12;
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
      v13 = 0;
    }

    *(this + 73) = v14;
    v15 = *(this + 74);
    *(this + 74) = v13;
    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    }

    if (v11)
    {
      std::__shared_weak_count::__release_weak(v11);
    }

    v16 = *(this + 5);
    if (!v16 || (v17 = *(this + 73), v18 = *(this + 4), (v19 = std::__shared_weak_count::lock(v16)) == 0))
    {
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v20 = v19;
    atomic_fetch_add_explicit(&v19->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
    v21 = std::__shared_weak_count::lock(v20);
    v22 = v21;
    if (v21)
    {
      if (v18)
      {
        v23 = v18 + 8;
      }

      else
      {
        v23 = 0;
      }

      atomic_fetch_add_explicit(&v21->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_weak(v20);
      std::__shared_weak_count::__release_shared[abi:ne200100](v22);
      atomic_fetch_add_explicit(&v22->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    else
    {
      std::__shared_weak_count::__release_weak(v20);
      v23 = 0;
    }

    *(v17 + 1104) = v23;
    v24 = *(v17 + 1112);
    *(v17 + 1112) = v22;
    if (v24)
    {
      std::__shared_weak_count::__release_weak(v24);
    }

    if (v22)
    {
      std::__shared_weak_count::__release_weak(v22);
    }

    v25 = *(this + 21);
    *(this + 20) = 0;
    *(this + 21) = 0;
    if (v25)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v25);
    }

    v40 = 0;
    v41 = 0;
    IPTelephonyManager::getCallManager(&v40);
    v26 = v40;
    IMSCallInfo::uuid(v30, this);
    (*(*v26 + 216))(v26, v30, @"kCallStatusJoined", *(this + 72), a2);
    v30[0] = &unk_1F5EBEE78;
    if (v31 < 0)
    {
      operator delete(v30[1]);
    }

    (*(*v26 + 200))(&v28, v26);
    v27 = *(v28 + 480);
    if (v29)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v29);
    }

    if (v27 == 3)
    {
      (*(*v26 + 184))(v26, 1);
    }

    if (v41)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v41);
    }
  }

  else
  {
    v7 = std::string::basic_string[abi:ne200100]<0>(&v40, "call");
    v36[0] = 0;
    v39 = 0;
    v8 = ims::debug(v7, v36);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "IMSCallInfo::handleJoinedConferenceEvent for an unknown call", 60);
    *(v8 + 17) = 0;
    (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v8 + 17) = 0;
    if (v39 == 1 && v38 < 0)
    {
      operator delete(__p);
    }

    if (v42 < 0)
    {
      operator delete(v40);
    }
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void sub_1E4D1421C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, char a38)
{
  v41 = *(v39 - 96);
  if (v41)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v41);
  }

  if (v38)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v38);
  }

  _Unwind_Resume(exception_object);
}

void IMSCallInfo::handleInputFrequencyLevelEvent(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  if (*a2)
  {
    v5 = *(v3 + 384);
    if (v5)
    {
      v8 = std::__shared_weak_count::lock(v5);
      if (v8)
      {
        v9 = *(v3 + 376);
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
        if (v9)
        {
          IPTelephonyManager::getCallManager(&v18);
          v10 = *a2;
          v11 = *(*a2 + 384);
          if (v11)
          {
            v12 = std::__shared_weak_count::lock(v11);
            if (v12)
            {
              v13 = *(v10 + 376);
            }

            else
            {
              v13 = 0;
            }
          }

          else
          {
            v13 = 0;
            v12 = 0;
          }

          if (*(v13 + 4455) < 0)
          {
            std::string::__init_copy_ctor_external(&v17, *(v13 + 4432), *(v13 + 4440));
          }

          else
          {
            v17 = *(v13 + 4432);
          }

          IMSCallInfo::uuid(v15, a1);
          IMSCallManager::sendInputFrequencyLevelUpdateNotification(v14, &v17, v15, a3);
          v15[0] = &unk_1F5EBEE78;
          if (v16 < 0)
          {
            operator delete(v15[1]);
          }

          if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v17.__r_.__value_.__l.__data_);
          }

          if (v12)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v12);
          }

          if (v19)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v19);
          }
        }
      }
    }
  }
}

void sub_1E4D14424(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  v24 = *(v22 - 40);
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  _Unwind_Resume(exception_object);
}

void IMSCallManager::sendInputFrequencyLevelUpdateNotification(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v6 = IMSClientManager::delegateForStack(a2);
  if (*(a3 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a3 + 8), *(a3 + 16));
  }

  else
  {
    __p = *(a3 + 8);
  }

  (*(*v6 + 216))(v6, &__p, a4);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1E4D1453C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void IMSCallInfo::handleOutputFrequencyLevelEvent(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  if (*a2)
  {
    v5 = *(v3 + 384);
    if (v5)
    {
      v8 = std::__shared_weak_count::lock(v5);
      if (v8)
      {
        v9 = *(v3 + 376);
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
        if (v9)
        {
          IPTelephonyManager::getCallManager(&v18);
          v10 = *a2;
          v11 = *(*a2 + 384);
          if (v11)
          {
            v12 = std::__shared_weak_count::lock(v11);
            if (v12)
            {
              v13 = *(v10 + 376);
            }

            else
            {
              v13 = 0;
            }
          }

          else
          {
            v13 = 0;
            v12 = 0;
          }

          if (*(v13 + 4455) < 0)
          {
            std::string::__init_copy_ctor_external(&v17, *(v13 + 4432), *(v13 + 4440));
          }

          else
          {
            v17 = *(v13 + 4432);
          }

          IMSCallInfo::uuid(v15, a1);
          IMSCallManager::sendOutputFrequencyLevelUpdateNotification(v14, &v17, v15, a3);
          v15[0] = &unk_1F5EBEE78;
          if (v16 < 0)
          {
            operator delete(v15[1]);
          }

          if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v17.__r_.__value_.__l.__data_);
          }

          if (v12)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v12);
          }

          if (v19)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v19);
          }
        }
      }
    }
  }
}

void sub_1E4D14698(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  v24 = *(v22 - 40);
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  _Unwind_Resume(exception_object);
}

void IMSCallManager::sendOutputFrequencyLevelUpdateNotification(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v6 = IMSClientManager::delegateForStack(a2);
  if (*(a3 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a3 + 8), *(a3 + 16));
  }

  else
  {
    __p = *(a3 + 8);
  }

  (*(*v6 + 224))(v6, &__p, a4);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1E4D147B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void IMSCallInfo::handleVocoderInfoEvent(IMSCallInfo *a1, uint64_t a2, uint64_t a3)
{
  IMSCallInfo::stack(a1, &v12);
  v6 = v12.__r_.__value_.__r.__words[0];
  if (v12.__r_.__value_.__l.__size_)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12.__r_.__value_.__l.__size_);
  }

  if (v6)
  {
    IPTelephonyManager::getCallManager(&v13);
    IMSCallInfo::stack(a1, &v10);
    if (*(v10 + 4455) < 0)
    {
      std::string::__init_copy_ctor_external(&v12, *(v10 + 4432), *(v10 + 4440));
    }

    else
    {
      v12 = *(v10 + 4432);
    }

    IMSCallInfo::uuid(v8, a1);
    v7 = IMSClientManager::delegateForStack(&v12);
    (*(*v7 + 232))(v7, a2, a3);
    v8[0] = &unk_1F5EBEE78;
    if (v9 < 0)
    {
      operator delete(v8[1]);
    }

    if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v12.__r_.__value_.__l.__data_);
    }

    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }

    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    }
  }
}

void sub_1E4D14904(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  v25 = *(v23 - 40);
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IMSCallManager::sendVocoderInfoNotification(uint64_t a1, char *a2)
{
  v2 = *(*IMSClientManager::delegateForStack(a2) + 232);

  return v2();
}

void IMSCallInfo::handleAudioStreamTokensEvent(IMSCallInfo *this, const __CFArray *a2)
{
  v10 = 0;
  v11 = 0;
  if (*(this + 135) < 0)
  {
    std::string::__init_copy_ctor_external(&v9, *(this + 14), *(this + 15));
  }

  else
  {
    v9 = *(this + 112);
  }

  ims::CFString::CFString(&v10, &v9);
  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }

  IPTelephonyManager::getCallManager(&v7);
  IMSCallInfo::stack(this, &v5);
  if (*(v5 + 4455) < 0)
  {
    std::string::__init_copy_ctor_external(&v9, *(v5 + 4432), *(v5 + 4440));
  }

  else
  {
    v9 = *(v5 + 4432);
  }

  IMSCallManager::sendAudioStreamTokensNotification(v4, &v9, v11, 0, a2);
  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  ims::CFType::~CFType(&v10);
}

void sub_1E4D14AEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  ims::CFType::~CFType((v18 - 32));
  _Unwind_Resume(a1);
}

void sub_1E4D14B40(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1E4D14B38);
}

const void **IMSCallManager::sendAudioStreamTokensNotification(int a1, char *a2, CFStringRef theString, int a4, CFTypeRef cf)
{
  v29 = *MEMORY[0x1E69E9840];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  *buffer = 0u;
  v14 = 0u;
  cfa = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  CFStringGetCString(theString, buffer, 256, 0x600u);
  v7 = IMSClientManager::delegateForStack(a2);
  std::string::basic_string[abi:ne200100]<0>(__p, buffer);
  v9 = cfa;
  if (cfa)
  {
    CFRetain(cfa);
  }

  (*(*v7 + 176))(v7, __p, &v9);
  ctu::SharedRef<__CFArray const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFArray const>::~SharedRef(&v9);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  return ctu::SharedRef<__CFArray const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFArray const>::~SharedRef(&cfa);
}

void sub_1E4D14C7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void IMSCallInfo::handleTextStreamTokenEvent(IMSCallInfo *this, const __CFNumber *a2)
{
  v10 = 0;
  v11 = 0;
  if (*(this + 135) < 0)
  {
    std::string::__init_copy_ctor_external(&v9, *(this + 14), *(this + 15));
  }

  else
  {
    v9 = *(this + 112);
  }

  ims::CFString::CFString(&v10, &v9);
  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }

  IPTelephonyManager::getCallManager(&v7);
  IMSCallInfo::stack(this, &v5);
  if (*(v5 + 4455) < 0)
  {
    std::string::__init_copy_ctor_external(&v9, *(v5 + 4432), *(v5 + 4440));
  }

  else
  {
    v9 = *(v5 + 4432);
  }

  IMSCallManager::sendTextStreamTokenNotification(v4, &v9, v11, 0, a2);
  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  ims::CFType::~CFType(&v10);
}

void sub_1E4D14DD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  ims::CFType::~CFType((v18 - 32));
  _Unwind_Resume(a1);
}

void sub_1E4D14E24(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1E4D14E1CLL);
}

const void **IMSCallManager::sendTextStreamTokenNotification(int a1, char *a2, CFStringRef theString, int a4, CFTypeRef cf)
{
  v29 = *MEMORY[0x1E69E9840];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  *buffer = 0u;
  v14 = 0u;
  cfa = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  CFStringGetCString(theString, buffer, 256, 0x600u);
  v7 = IMSClientManager::delegateForStack(a2);
  std::string::basic_string[abi:ne200100]<0>(__p, buffer);
  v9 = cfa;
  if (cfa)
  {
    CFRetain(cfa);
  }

  (*(*v7 + 184))(v7, __p, &v9);
  ctu::SharedRef<__CFNumber const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFNumber const>::~SharedRef(&v9);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  return ctu::SharedRef<__CFNumber const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFNumber const>::~SharedRef(&cfa);
}

void sub_1E4D14F60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void IMSCallInfo::handleIncomingDtmfEvent(IMSCallInfo *this, uint64_t a2)
{
  v10 = 0;
  v11 = 0;
  if (*(this + 135) < 0)
  {
    std::string::__init_copy_ctor_external(&v9, *(this + 14), *(this + 15));
  }

  else
  {
    v9 = *(this + 112);
  }

  ims::CFString::CFString(&v10, &v9);
  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }

  IPTelephonyManager::getCallManager(&v7);
  IMSCallInfo::stack(this, &v5);
  if (*(v5 + 4455) < 0)
  {
    std::string::__init_copy_ctor_external(&v9, *(v5 + 4432), *(v5 + 4440));
  }

  else
  {
    v9 = *(v5 + 4432);
  }

  IMSCallManager::sendIncomingDtmfNotification(v4, &v9, v11, a2);
  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  ims::CFType::~CFType(&v10);
}

void sub_1E4D150B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  ims::CFType::~CFType((v18 - 32));
  _Unwind_Resume(a1);
}

void sub_1E4D15104(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1E4D150FCLL);
}

void IMSCallManager::sendIncomingDtmfNotification(int a1, char *a2, CFStringRef theString, uint64_t a4)
{
  v25 = *MEMORY[0x1E69E9840];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v16 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  *buffer = 0u;
  CFStringGetCString(theString, buffer, 256, 0x600u);
  v6 = IMSClientManager::delegateForStack(a2);
  std::string::basic_string[abi:ne200100]<0>(__p, buffer);
  (*(*v6 + 192))(v6, __p, a4);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1E4D15214(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void IMSCallInfo::handleTextStreamHeldEvent(IMSCallInfo *this, uint64_t a2)
{
  memset(&v8, 0, sizeof(v8));
  IMSCallInfo::stack(this, &v5);
  if (v5[4455] < 0)
  {
    std::string::__init_copy_ctor_external(&v8, *(v5 + 554), *(v5 + 555));
  }

  else
  {
    v8 = *(v5 + 4432);
  }

  if (__p.__r_.__value_.__r.__words[0])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](__p.__r_.__value_.__l.__data_);
  }

  memset(&v7, 0, sizeof(v7));
  IMSCallInfo::uuid(&v5, this);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v7, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    v5 = &unk_1F5EBEE78;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v7 = __p;
  }

  v4 = IMSClientManager::delegateForStack(&v8);
  (*(*v4 + 136))(v4, &v7, a2);
  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }
}

void sub_1E4D15388(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  _Unwind_Resume(exception_object);
}

void IMSCallInfo::handleCallInvalidated(std::string *a1, void *a2)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "call");
  v37[0] = 0;
  v40 = 0;
  v4 = ims::debug(__p, v37);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "handleCallInvalidated", 21);
  *(v4 + 17) = 0;
  (*(*v4 + 64))(v4, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v4 + 17) = 0;
  if (v40 == 1 && v39 < 0)
  {
    operator delete(v38);
  }

  if (SBYTE7(v24) < 0)
  {
    operator delete(__p[0]);
  }

  v35 = 0;
  v36 = 0;
  IPTelephonyManager::getCallManager(&v35);
  if (a1[24].__r_.__value_.__l.__size_)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "call");
    v31[0] = 0;
    v34 = 0;
    v5 = ims::debug(__p, v31);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "Invalidated call turned into a conference participant.  Keeping CallInfo", 72);
    *(v5 + 17) = 0;
    (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v5 + 17) = 0;
    if (v34 == 1 && v33 < 0)
    {
      operator delete(v32);
    }

    if (SBYTE7(v24) < 0)
    {
      operator delete(__p[0]);
    }

    data = a1[7].__r_.__value_.__l.__data_;
    a1[6].__r_.__value_.__r.__words[2] = 0;
    a1[7].__r_.__value_.__r.__words[0] = 0;
    if (data)
    {
      goto LABEL_13;
    }

    goto LABEL_15;
  }

  if (*a2 != a1[6].__r_.__value_.__r.__words[2])
  {
    goto LABEL_15;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "call");
  v27[0] = 0;
  v30 = 0;
  v7 = ims::debug(__p, v27);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "handleCallInvalidated actually removing the call", 48);
  *(v7 + 17) = 0;
  (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v7 + 17) = 0;
  if (v30 == 1 && v29 < 0)
  {
    operator delete(v28);
  }

  if (SBYTE7(v24) < 0)
  {
    operator delete(__p[0]);
  }

  v8 = *a2;
  if (*(*a2 + 1529))
  {
    v9 = a1[25].__r_.__value_.__s.__data_[3];
  }

  else
  {
    v9 = a1[25].__r_.__value_.__s.__data_[3];
    if ((*(v8 + 1530) & 1) == 0)
    {
      if ((a1[25].__r_.__value_.__s.__data_[3] & 1) == 0)
      {
        v13 = *(v8 + 384);
        if (v13)
        {
          v13 = std::__shared_weak_count::lock(v13);
          v14 = v13;
          if (v13)
          {
            v15 = *(v8 + 376);
          }

          else
          {
            v15 = 0;
          }
        }

        else
        {
          v15 = 0;
          v14 = 0;
        }

        if (*(v15 + 4455) < 0)
        {
          std::string::__init_copy_ctor_external(__p, *(v15 + 4432), *(v15 + 4440));
        }

        else
        {
          v16 = v15 + 4432;
          *__p = *v16;
          *&v24 = *(v16 + 16);
        }

        IMSCallManager::sendCallStatusRequest(v13, __p, 2, *(*a2 + 1529), *(*a2 + 552) != 0);
        if (SBYTE7(v24) < 0)
        {
          operator delete(__p[0]);
        }

        if (v14)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v14);
        }
      }

      goto LABEL_47;
    }
  }

  if ((v9 & 1) == 0)
  {
    bzero(__p, 0x250uLL);
    BambiCallSessionTerminationBaseEvent::BambiCallSessionTerminationBaseEvent(__p, 15, 10);
    __p[0] = &unk_1F5EC4038;
    v10 = *a2;
    v11 = a2[1];
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v12 = *(&v24 + 1);
    *&v24 = v10;
    *(&v24 + 1) = v11;
    if (v12)
    {
      std::__shared_weak_count::__release_weak(v12);
    }

    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }

    IMSCallInfo::handleSessionTerminationEvent(a1, __p);
    BambiCallSessionTerminationBaseEvent::~BambiCallSessionTerminationBaseEvent(__p);
    goto LABEL_53;
  }

LABEL_47:
  v26 = 0;
  v24 = 0u;
  *v25 = 0u;
  *__p = 0u;
  std::string::basic_string[abi:ne200100]<0>(v21, "CallInvalidated");
  BambiCallNamedEvent::BambiCallNamedEvent(__p, v21);
  if (v22 < 0)
  {
    operator delete(v21[0]);
  }

  __p[0] = &unk_1F5ED0738;
  if (SHIBYTE(v26) < 0)
  {
    operator delete(v25[0]);
  }

  __p[0] = &unk_1F5EC4090;
  if (*(&v24 + 1))
  {
    std::__shared_weak_count::__release_weak(*(&v24 + 1));
  }

LABEL_53:
  v17 = v35;
  v18 = a1[1].__r_.__value_.__r.__words[2];
  size = a1[1].__r_.__value_.__l.__size_;
  if (!v18)
  {
    v20 = 0;
LABEL_58:
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v20 = std::__shared_weak_count::lock(v18);
  if (!v20)
  {
    goto LABEL_58;
  }

  (*(*v17 + 224))(v17, &size);
  data = v20;
  if (v20)
  {
LABEL_13:
    std::__shared_weak_count::__release_shared[abi:ne200100](data);
  }

LABEL_15:
  if (v36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v36);
  }
}

void sub_1E4D158C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  v26 = *(v24 - 112);
  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  _Unwind_Resume(exception_object);
}

void IMSCallInfo::handleSessionTerminationEvent(std::string *this, BambiCallSessionTerminationBaseEvent *a2)
{
  v4 = *(a2 + 3);
  if (v4)
  {
    v5 = *(a2 + 2);
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v6 = std::__shared_weak_count::lock(v4);
    if (!v6)
    {
      v5 = 0;
    }

    std::__shared_weak_count::__release_weak(v4);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  if (v5 != this[6].__r_.__value_.__r.__words[2])
  {
    std::string::basic_string[abi:ne200100]<0>(&v231, "call");
    v340[0] = 0;
    v343 = 0;
    v7 = ims::debug(&v231, v340);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "IMSCallInfo: received ", 22);
    *(v7 + 17) = 0;
    (*(*a2 + 16))(a2, v7);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), " event for an unknown call", 26);
    *(v7 + 17) = 0;
    (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v7 + 17) = 0;
    if (v343 == 1 && v342 < 0)
    {
      operator delete(v341);
    }

    if (SBYTE7(v232) < 0)
    {
      v8 = v231;
LABEL_391:
      operator delete(v8);
      goto LABEL_392;
    }

    goto LABEL_392;
  }

  v333 = 256;
  v335 = 0;
  v336 = 0;
  v334 = 0uLL;
  v337 = 0u;
  v338 = 0u;
  v339 = 0u;
  LODWORD(v336) = IMSCallInfo::sendSessionTerminationMetric(this, a2, &v333);
  (*(*a2 + 40))(&v231, a2);
  if (SHIBYTE(v335) < 0)
  {
    operator delete(v334);
  }

  v334 = v231;
  v335 = v232;
  BYTE1(v333) = *(a2 + 146);
  this[25].__r_.__value_.__s.__data_[3] = 1;
  v332 = 0;
  v331 = 0u;
  v330 = 0u;
  v329 = 0u;
  v328 = 0u;
  v327 = 0;
  v326 = 0;
  IMSCallInfo::stack(this, &v326);
  v9 = v326;
  if (v326)
  {
    std::string::operator=(&v328, v326 + 143);
    std::string::operator=((&v329 + 8), v9 + 144);
    LOBYTE(v332) = v9[145].__r_.__value_.__s.__data_[16];
    v331 = *&v9[145].__r_.__value_.__l.__data_;
  }

  v325 = 0;
  v324 = 0;
  IPTelephonyManager::getBambiClient(&v324);
  v323 = 0;
  v322 = 0;
  IPTelephonyManager::getCallManager(&v322);
  if ((this[29].__r_.__value_.__s.__data_[0] & 1) == 0)
  {
    if ((SHIBYTE(this[26].__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      if (!this[26].__r_.__value_.__l.__size_)
      {
        goto LABEL_35;
      }
    }

    else if (!*(&this[26].__r_.__value_.__s + 23))
    {
      goto LABEL_35;
    }

    size = SHIBYTE(this[27].__r_.__value_.__r.__words[2]);
    if ((size & 0x8000000000000000) != 0)
    {
      size = this[27].__r_.__value_.__l.__size_;
    }

    if (size)
    {
      v12 = BYTE7(v329);
      if (SBYTE7(v329) < 0)
      {
        v12 = *(&v328 + 1);
      }

      if (v12)
      {
        v13 = HIBYTE(v330);
        if (v330 < 0)
        {
          v13 = v330;
        }

        if (v13)
        {
          v10 = ims::AccessNetwork::isNR(&this[26]) && ims::AccessNetwork::isLTE(&v328);
          std::string::basic_string[abi:ne200100]<0>(&v231, "call");
          v318[0] = 0;
          v321 = 0;
          v29 = ims::debug(&v231, v318);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v29 + 8), "start ANI: ", 11);
          *(v29 + 17) = 0;
          LoggableString::LoggableString(v226, this + 26);
          (*(*v29 + 40))(v29, v226);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v29 + 8), ", current ANI: ", 15);
          *(v29 + 17) = 0;
          LoggableString::LoggableString(&v317, &v328);
          (*(*v29 + 40))(v29, &v317);
          if (v10)
          {
            v30 = ": EPS Fallback happend during the call";
          }

          else
          {
            v30 = ": EPS Fallback did not happen during the call";
          }

          if (v10)
          {
            v31 = 38;
          }

          else
          {
            v31 = 45;
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v29 + 8), v30, v31);
          *(v29 + 17) = 0;
          (*(*v29 + 64))(v29, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v29 + 17) = 0;
          if (SHIBYTE(v317.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v317.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v226[0].__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v226[0].__r_.__value_.__l.__data_);
          }

          if (v321 == 1 && v320 < 0)
          {
            operator delete(v319);
          }

          if (SBYTE7(v232) < 0)
          {
            operator delete(v231);
          }

LABEL_36:
          if (v333)
          {
            v231 = 0uLL;
            *&v232 = 0;
            if (!v10)
            {
              goto LABEL_56;
            }

            goto LABEL_38;
          }

LABEL_40:
          v16 = this[6].__r_.__value_.__r.__words[2];
          if ((*(v16 + 1529) & 1) == 0 && (*(v16 + 1530) & 1) == 0)
          {
            std::string::basic_string[abi:ne200100]<0>(&v231, "call");
            v303[0] = 0;
            v306 = 0;
            v24 = ims::debug(&v231, v303);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v24 + 8), "Not sending termination event for hidden call", 45);
            *(v24 + 17) = 0;
            (*(*v24 + 64))(v24, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            *(v24 + 17) = 0;
            if (v306 == 1 && v305 < 0)
            {
              operator delete(v304);
            }

            if (SBYTE7(v232) < 0)
            {
              operator delete(v231);
            }

            v25 = v322;
            v26 = this[1].__r_.__value_.__r.__words[2];
            v302[0] = this[1].__r_.__value_.__l.__size_;
            if (!v26 || (v27 = std::__shared_weak_count::lock(v26), (v302[1] = v27) == 0))
            {
              std::__throw_bad_weak_ptr[abi:ne200100]();
            }

            v28 = v27;
            BYTE4(v336) = IMSCallManager::sendCallEndRequest(v25, v302, 0);
            std::__shared_weak_count::__release_shared[abi:ne200100](v28);
            goto LABEL_375;
          }

          memset(&v317, 0, sizeof(v317));
          v17 = *(a2 + 8);
          switch(v17)
          {
            case 0:
            case 4:
              std::string::basic_string[abi:ne200100]<0>(&v231, "call");
              v215[0] = 0;
              v218 = 0;
              v34 = ims::debug(&v231, v215);
              v35 = ImsOutStream::operator<<(v34, "I hung up with ");
              (*(*(this[6].__r_.__value_.__r.__words[2] + 1080) + 40))(this[6].__r_.__value_.__r.__words[2] + 1080, v35);
              (*(*v35 + 64))(v35, std::endl[abi:ne200100]<char,std::char_traits<char>>);
              v35[17] = 0;
              if (v218 == 1 && v217 < 0)
              {
                operator delete(v216);
              }

              if (SBYTE7(v232) < 0)
              {
                operator delete(v231);
              }

              ims::CFString::asString(&v231, @"kCallDisconnectionReasonNormal", 0x8000100);
              goto LABEL_303;
            case 1:
            case 5:
              std::string::basic_string[abi:ne200100]<0>(&v231, "call");
              v290[0] = 0;
              v293 = 0;
              v32 = ims::debug(&v231, v290);
              (*(*(this[6].__r_.__value_.__r.__words[2] + 1080) + 40))(this[6].__r_.__value_.__r.__words[2] + 1080, v32);
              v33 = ImsOutStream::operator<<(v32, " hung up");
              (*(*v33 + 64))(v33, std::endl[abi:ne200100]<char,std::char_traits<char>>);
              v33[17] = 0;
              if (v293 == 1 && v292 < 0)
              {
                operator delete(v291);
              }

              if (SBYTE7(v232) < 0)
              {
                operator delete(v231);
              }

              ims::CFString::asString(&v231, @"kCallDisconnectionReasonNormal", 0x8000100);
              goto LABEL_335;
            case 2:
              std::string::basic_string[abi:ne200100]<0>(&v231, "call");
              v278[0] = 0;
              v281 = 0;
              v96 = ims::debug(&v231, v278);
              v97 = ImsOutStream::operator<<(v96, "I rejected call from ");
              (*(*(this[6].__r_.__value_.__r.__words[2] + 1080) + 40))(this[6].__r_.__value_.__r.__words[2] + 1080, v97);
              (*(*v97 + 64))(v97, std::endl[abi:ne200100]<char,std::char_traits<char>>);
              v97[17] = 0;
              if (v281 == 1 && v280 < 0)
              {
                operator delete(v279);
              }

              if (SBYTE7(v232) < 0)
              {
                operator delete(v231);
              }

              ims::CFString::asString(&v231, @"kCallDisconnectionReasonNormal", 0x8000100);
              goto LABEL_303;
            case 3:
              std::string::basic_string[abi:ne200100]<0>(&v231, "call");
              v266[0] = 0;
              v269 = 0;
              v64 = ims::debug(&v231, v266);
              (*(*(this[6].__r_.__value_.__r.__words[2] + 1080) + 40))(this[6].__r_.__value_.__r.__words[2] + 1080, v64);
              v65 = ImsOutStream::operator<<(v64, " Rejected");
              (*(*v65 + 64))(v65, std::endl[abi:ne200100]<char,std::char_traits<char>>);
              v65[17] = 0;
              if (v269 == 1 && v268 < 0)
              {
                operator delete(v267);
              }

              if (SBYTE7(v232) < 0)
              {
                operator delete(v231);
              }

              ims::CFString::asString(&v231, @"kCallDisconnectionReasonRemoteBusy", 0x8000100);
              goto LABEL_335;
            case 6:
              std::string::basic_string[abi:ne200100]<0>(&v231, "call");
              v286[0] = 0;
              v289 = 0;
              v86 = ims::debug(&v231, v286);
              (*(*(this[6].__r_.__value_.__r.__words[2] + 1080) + 40))(this[6].__r_.__value_.__r.__words[2] + 1080, v86);
              v87 = ImsOutStream::operator<<(v86, " answered elsewhere");
              (*(*v87 + 64))(v87, std::endl[abi:ne200100]<char,std::char_traits<char>>);
              v87[17] = 0;
              if (v289 == 1 && v288 < 0)
              {
                operator delete(v287);
              }

              if (SBYTE7(v232) < 0)
              {
                operator delete(v231);
              }

              ims::CFString::asString(&v231, @"kIMSCallDisconnectionReasonAnsweredElsewhere", 0x8000100);
              goto LABEL_335;
            case 7:
              std::string::basic_string[abi:ne200100]<0>(&v231, "call");
              v282[0] = 0;
              v285 = 0;
              v88 = ims::debug(&v231, v282);
              (*(*(this[6].__r_.__value_.__r.__words[2] + 1080) + 40))(this[6].__r_.__value_.__r.__words[2] + 1080, v88);
              v89 = ImsOutStream::operator<<(v88, " not allowed as other secondary device is in use");
              (*(*v89 + 64))(v89, std::endl[abi:ne200100]<char,std::char_traits<char>>);
              v89[17] = 0;
              if (v285 == 1 && v284 < 0)
              {
                operator delete(v283);
              }

              if (SBYTE7(v232) < 0)
              {
                operator delete(v231);
              }

              ims::CFString::asString(&v231, @"kIMSCallDisconnectionReasonSecondaryDeviceAlreadyInUse", 0x8000100);
              goto LABEL_335;
            case 8:
              std::string::basic_string[abi:ne200100]<0>(&v231, "call");
              v258[0] = 0;
              v261 = 0;
              v100 = ims::debug(&v231, v258);
              (*(*(this[6].__r_.__value_.__r.__words[2] + 1080) + 40))(this[6].__r_.__value_.__r.__words[2] + 1080, v100);
              v101 = ImsOutStream::operator<<(v100, " Silent hangup completed");
              (*(*v101 + 64))(v101, std::endl[abi:ne200100]<char,std::char_traits<char>>);
              v101[17] = 0;
              if (v261 == 1 && v260 < 0)
              {
                operator delete(v259);
              }

              if (SBYTE7(v232) < 0)
              {
                operator delete(v231);
              }

              v102 = v322;
              v103 = this[1].__r_.__value_.__r.__words[2];
              v257[0] = this[1].__r_.__value_.__l.__size_;
              if (!v103 || (v104 = std::__shared_weak_count::lock(v103), (v257[1] = v104) == 0))
              {
                std::__throw_bad_weak_ptr[abi:ne200100]();
              }

              v105 = v104;
              BYTE4(v336) = IMSCallManager::sendCallEndRequest(v102, v257, 0);
              v106 = v105;
              goto LABEL_367;
            case 9:
              std::string::basic_string[abi:ne200100]<0>(&v231, "call");
              v298[0] = 0;
              v301 = 0;
              v98 = ims::debug(&v231, v298);
              (*(*(this[6].__r_.__value_.__r.__words[2] + 1080) + 40))(this[6].__r_.__value_.__r.__words[2] + 1080, v98);
              v99 = ImsOutStream::operator<<(v98, " transferred to another device");
              (*(*v99 + 64))(v99, std::endl[abi:ne200100]<char,std::char_traits<char>>);
              v99[17] = 0;
              if (v301 == 1 && v300 < 0)
              {
                operator delete(v299);
              }

              if (SBYTE7(v232) < 0)
              {
                operator delete(v231);
              }

              ims::CFString::asString(&v231, @"kIMSCallDisconnectionReasonTransferredToOtherDevice", 0x8000100);
              goto LABEL_335;
            case 11:
            case 12:
            case 13:
            case 14:
            case 29:
              if (v17 != 11 || !v10)
              {
                goto LABEL_114;
              }

              (*(*v324 + 184))(&v231);
              v18 = SipStack::prefs(v231);
              v19 = ImsPrefs::RedialOverLteIfEpsFallbackCallFailed(v18) && SLODWORD(this[25].__r_.__value_.__r.__words[1]) < 3;
              if (*(&v231 + 1))
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](*(&v231 + 1));
              }

              if (v19)
              {
                std::string::basic_string[abi:ne200100]<0>(&v231, "call");
                v274[0] = 0;
                v277 = 0;
                v36 = ims::debug(&v231, v274);
                v37 = ImsOutStream::operator<<(v36, "Network error resulting in redial over LTE with ");
                (*(*(this[6].__r_.__value_.__r.__words[2] + 1080) + 40))(this[6].__r_.__value_.__r.__words[2] + 1080, v37);
                (*(*v37 + 64))(v37, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                v37[17] = 0;
                if (v277 == 1 && v276 < 0)
                {
                  operator delete(v275);
                }

                if (SBYTE7(v232) < 0)
                {
                  operator delete(v231);
                }

                ims::CFString::asString(&v231, @"kCallDisconnectionReasonRequiresRedialOverLteOnly", 0x8000100);
              }

              else
              {
LABEL_114:
                std::string::basic_string[abi:ne200100]<0>(&v231, "call");
                v270[0] = 0;
                v273 = 0;
                v38 = ims::debug(&v231, v270);
                v39 = ImsOutStream::operator<<(v38, "Network error resulting in redial with ");
                (*(*(this[6].__r_.__value_.__r.__words[2] + 1080) + 40))(this[6].__r_.__value_.__r.__words[2] + 1080, v39);
                (*(*v39 + 64))(v39, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                v39[17] = 0;
                if (v273 == 1 && v272 < 0)
                {
                  operator delete(v271);
                }

                if (SBYTE7(v232) < 0)
                {
                  operator delete(v231);
                }

                ims::CFString::asString(&v231, @"kCallDisconnectionReasonNetworkError", 0x8000100);
              }

              goto LABEL_335;
            case 15:
              v256 = 0;
              v254 = 0u;
              v255 = 0u;
              v252 = 0u;
              v253 = 0u;
              v250 = 0u;
              v251 = 0u;
              v248 = 0u;
              v249 = 0u;
              v246 = 0u;
              v247 = 0u;
              v244 = 0u;
              v245 = 0u;
              v242 = 0u;
              v243 = 0u;
              v240 = 0u;
              v241 = 0u;
              v238 = 0u;
              v239 = 0u;
              v236 = 0u;
              v237 = 0u;
              v234 = 0u;
              v235 = 0u;
              v232 = 0u;
              v233 = 0u;
              v231 = 0u;
              SipUri::SipUri(&v231);
              std::string::basic_string[abi:ne200100]<0>(v226, "call");
              v227[0] = 0;
              v230 = 0;
              v90 = ims::debug(v226, v227);
              v91 = ImsOutStream::operator<<(v90, "Call to ");
              (*(*(this[6].__r_.__value_.__r.__words[2] + 1080) + 40))(this[6].__r_.__value_.__r.__words[2] + 1080, v91);
              v92 = ImsOutStream::operator<<(v91, " requires emergency session");
              (*(*v92 + 64))(v92, std::endl[abi:ne200100]<char,std::char_traits<char>>);
              v92[17] = 0;
              if (v230 == 1 && v229 < 0)
              {
                operator delete(v228);
              }

              if (SHIBYTE(v226[0].__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v226[0].__r_.__value_.__l.__data_);
              }

              if (v93)
              {
                v94 = v93;
                SipUri::SipUri(v226, (v93 + 592));
                SipUri::operator=(&v231, v226);
                SipUri::~SipUri(v226);
                v95 = v94[1000];
              }

              else
              {
                v95 = 0;
              }

              v126 = v322;
              v127 = this[1].__r_.__value_.__r.__words[2];
              v225[0] = this[1].__r_.__value_.__l.__size_;
              if (!v127 || (v128 = std::__shared_weak_count::lock(v127), (v225[1] = v128) == 0))
              {
                std::__throw_bad_weak_ptr[abi:ne200100]();
              }

              v129 = v128;
              BYTE4(v336) = IMSCallManager::sendCallEndRequest(v126, v225, 1);
              std::__shared_weak_count::__release_shared[abi:ne200100](v129);
              IMSCallInfo::uuid(v223, this);
              IMSCallManager::sendEmergencySessionRequiredNotification(v126, v223, &v231, v95 & 1);
              v223[0] = &unk_1F5EBEE78;
              if (v224 < 0)
              {
                operator delete(v223[1]);
              }

              SipUri::~SipUri(&v231);
              goto LABEL_372;
            case 16:
              std::string::basic_string[abi:ne200100]<0>(&v231, "call");
              v211[0] = 0;
              v214 = 0;
              v109 = ims::debug(&v231, v211);
              v110 = ImsOutStream::operator<<(v109, "Disconnected from ");
              (*(*(this[6].__r_.__value_.__r.__words[2] + 1080) + 40))(this[6].__r_.__value_.__r.__words[2] + 1080, v110);
              v111 = ImsOutStream::operator<<(v110, " due to ");
              v112 = *(a2 + 8);
              if (v112 <= 37)
              {
                v113 = (reasonStrings + 24 * v112);
              }

              else
              {
                v113 = (reasonStrings + 240);
              }

              LoggableString::LoggableString(v226, v113);
              (*(*v111 + 40))(v111, v226);
              (*(*v111 + 64))(v111, std::endl[abi:ne200100]<char,std::char_traits<char>>);
              v111[17] = 0;
              if (SHIBYTE(v226[0].__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v226[0].__r_.__value_.__l.__data_);
              }

              if (v214 == 1 && v213 < 0)
              {
                operator delete(v212);
              }

              if (SBYTE7(v232) < 0)
              {
                operator delete(v231);
              }

              ims::CFString::asString(&v231, @"kIMSCallDisconnectionReasonForbidden", 0x8000100);
              goto LABEL_335;
            case 17:
              std::string::basic_string[abi:ne200100]<0>(&v231, "call");
              v219[0] = 0;
              v222 = 0;
              v107 = ims::debug(&v231, v219);
              v108 = ImsOutStream::operator<<(v107, "INVITE timed out to ");
              (*(*(this[6].__r_.__value_.__r.__words[2] + 1080) + 40))(this[6].__r_.__value_.__r.__words[2] + 1080, v108);
              (*(*v108 + 64))(v108, std::endl[abi:ne200100]<char,std::char_traits<char>>);
              v108[17] = 0;
              if (v222 == 1 && v221 < 0)
              {
                operator delete(v220);
              }

              if (SBYTE7(v232) < 0)
              {
                operator delete(v231);
              }

              ims::CFString::asString(&v231, @"kCallDisconnectionReasonTimeout", 0x8000100);
              goto LABEL_303;
            case 19:
              std::string::basic_string[abi:ne200100]<0>(&v231, "call");
              v207[0] = 0;
              v210 = 0;
              v40 = ims::debug(&v231, v207);
              v41 = ImsOutStream::operator<<(v40, "Disconnected from ");
              (*(*(this[6].__r_.__value_.__r.__words[2] + 1080) + 40))(this[6].__r_.__value_.__r.__words[2] + 1080, v41);
              v42 = ImsOutStream::operator<<(v41, " due to ");
              v43 = *(a2 + 8);
              if (v43 <= 37)
              {
                v44 = (reasonStrings + 24 * v43);
              }

              else
              {
                v44 = (reasonStrings + 240);
              }

              LoggableString::LoggableString(v226, v44);
              (*(*v42 + 40))(v42, v226);
              (*(*v42 + 64))(v42, std::endl[abi:ne200100]<char,std::char_traits<char>>);
              v42[17] = 0;
              if (SHIBYTE(v226[0].__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v226[0].__r_.__value_.__l.__data_);
              }

              if (v210 == 1 && v209 < 0)
              {
                operator delete(v208);
              }

              if (SBYTE7(v232) < 0)
              {
                operator delete(v231);
              }

              ims::CFString::asString(&v231, @"kCallDisconnectionReasonMediaError", 0x8000100);
              goto LABEL_303;
            case 20:
              std::string::basic_string[abi:ne200100]<0>(&v231, "call");
              v203[0] = 0;
              v206 = 0;
              v66 = ims::debug(&v231, v203);
              v67 = ImsOutStream::operator<<(v66, "Disconnected from ");
              (*(*(this[6].__r_.__value_.__r.__words[2] + 1080) + 40))(this[6].__r_.__value_.__r.__words[2] + 1080, v67);
              v68 = ImsOutStream::operator<<(v67, " due to ");
              v69 = *(a2 + 8);
              if (v69 <= 37)
              {
                v70 = (reasonStrings + 24 * v69);
              }

              else
              {
                v70 = (reasonStrings + 240);
              }

              LoggableString::LoggableString(v226, v70);
              (*(*v68 + 40))(v68, v226);
              (*(*v68 + 64))(v68, std::endl[abi:ne200100]<char,std::char_traits<char>>);
              v68[17] = 0;
              if (SHIBYTE(v226[0].__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v226[0].__r_.__value_.__l.__data_);
              }

              if (v206 == 1 && v205 < 0)
              {
                operator delete(v204);
              }

              if (SBYTE7(v232) < 0)
              {
                operator delete(v231);
              }

              ims::CFString::asString(&v231, @"kCallDisconnectionReasonMediaTimeout", 0x8000100);
              goto LABEL_303;
            case 21:
              std::string::basic_string[abi:ne200100]<0>(&v231, "call");
              v199[0] = 0;
              v202 = 0;
              v114 = ims::debug(&v231, v199);
              v115 = ImsOutStream::operator<<(v114, "Disconnected from ");
              (*(*(this[6].__r_.__value_.__r.__words[2] + 1080) + 40))(this[6].__r_.__value_.__r.__words[2] + 1080, v115);
              v116 = ImsOutStream::operator<<(v115, " due to ");
              v117 = *(a2 + 8);
              if (v117 <= 37)
              {
                v118 = (reasonStrings + 24 * v117);
              }

              else
              {
                v118 = (reasonStrings + 240);
              }

              LoggableString::LoggableString(v226, v118);
              (*(*v116 + 40))(v116, v226);
              (*(*v116 + 64))(v116, std::endl[abi:ne200100]<char,std::char_traits<char>>);
              v116[17] = 0;
              if (SHIBYTE(v226[0].__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v226[0].__r_.__value_.__l.__data_);
              }

              if (v202 == 1 && v201 < 0)
              {
                operator delete(v200);
              }

              if (SBYTE7(v232) < 0)
              {
                operator delete(v231);
              }

              ims::CFString::asString(&v231, @"kCallDisconnectionReasonMediaHeartbeatTimeout", 0x8000100);
              goto LABEL_303;
            case 22:
              std::string::basic_string[abi:ne200100]<0>(&v231, "call");
              v195[0] = 0;
              v198 = 0;
              v45 = ims::debug(&v231, v195);
              v46 = ImsOutStream::operator<<(v45, "Disconnected from ");
              (*(*(this[6].__r_.__value_.__r.__words[2] + 1080) + 40))(this[6].__r_.__value_.__r.__words[2] + 1080, v46);
              v47 = ImsOutStream::operator<<(v46, " due to ");
              v48 = *(a2 + 8);
              if (v48 <= 37)
              {
                v49 = (reasonStrings + 24 * v48);
              }

              else
              {
                v49 = (reasonStrings + 240);
              }

              LoggableString::LoggableString(v226, v49);
              (*(*v47 + 40))(v47, v226);
              (*(*v47 + 64))(v47, std::endl[abi:ne200100]<char,std::char_traits<char>>);
              v47[17] = 0;
              if (SHIBYTE(v226[0].__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v226[0].__r_.__value_.__l.__data_);
              }

              if (v198 == 1 && v197 < 0)
              {
                operator delete(v196);
              }

              if (SBYTE7(v232) < 0)
              {
                operator delete(v231);
              }

              ims::CFString::asString(&v231, @"kCallDisconnectionReasonLocalSocketError", 0x8000100);
              goto LABEL_303;
            case 24:
              if (!v10)
              {
                goto LABEL_329;
              }

              (*(*v324 + 184))(&v231);
              v62 = SipStack::prefs(v231);
              v63 = ImsPrefs::RedialOverLteIfEpsFallbackCallFailed(v62) && SLODWORD(this[25].__r_.__value_.__r.__words[1]) < 3;
              if (*(&v231 + 1))
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](*(&v231 + 1));
              }

              if (v63)
              {
                std::string::basic_string[abi:ne200100]<0>(&v231, "call");
                v171[0] = 0;
                v174 = 0;
                v130 = ims::debug(&v231, v171);
                v131 = ImsOutStream::operator<<(v130, "Call to ");
                (*(*(this[6].__r_.__value_.__r.__words[2] + 1080) + 40))(this[6].__r_.__value_.__r.__words[2] + 1080, v131);
                v132 = ImsOutStream::operator<<(v131, " requires redial over LTE due to LocalQosTimeout");
                (*(*v132 + 64))(v132, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                v132[17] = 0;
                if (v174 == 1 && v173 < 0)
                {
                  operator delete(v172);
                }

                if (SBYTE7(v232) < 0)
                {
                  operator delete(v231);
                }

                ims::CFString::asString(&v231, @"kCallDisconnectionReasonRequiresRedialOverLteOnly", 0x8000100);
              }

              else
              {
LABEL_329:
                std::string::basic_string[abi:ne200100]<0>(&v231, "call");
                v167[0] = 0;
                v170 = 0;
                v133 = ims::debug(&v231, v167);
                v134 = ImsOutStream::operator<<(v133, "Disconnected from ");
                (*(*(this[6].__r_.__value_.__r.__words[2] + 1080) + 40))(this[6].__r_.__value_.__r.__words[2] + 1080, v134);
                v135 = ImsOutStream::operator<<(v134, " as in the dedault case due to LocalQosTimeout");
                (*(*v135 + 64))(v135, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                v135[17] = 0;
                if (v170 == 1 && v169 < 0)
                {
                  operator delete(v168);
                }

                if (SBYTE7(v232) < 0)
                {
                  operator delete(v231);
                }

                ims::CFString::asString(&v231, @"kCallDisconnectionReasonUnknownError", 0x8000100);
              }

              goto LABEL_335;
            case 31:
              std::string::basic_string[abi:ne200100]<0>(&v231, "call");
              v294[0] = 0;
              v297 = 0;
              v55 = ims::debug(&v231, v294);
              (*(*(this[6].__r_.__value_.__r.__words[2] + 1080) + 40))(this[6].__r_.__value_.__r.__words[2] + 1080, v55);
              v56 = ImsOutStream::operator<<(v55, " failed: we cannot support emergency calls in this location");
              (*(*v56 + 64))(v56, std::endl[abi:ne200100]<char,std::char_traits<char>>);
              v56[17] = 0;
              if (v297 == 1 && v296 < 0)
              {
                operator delete(v295);
              }

              if (SBYTE7(v232) < 0)
              {
                operator delete(v231);
              }

              ims::CFString::asString(&v231, @"kIMSCallDisconnectionReasonNoEmergencyCallLocation", 0x8000100);
              goto LABEL_335;
            case 32:
              std::string::basic_string[abi:ne200100]<0>(&v231, "call");
              v191[0] = 0;
              v194 = 0;
              v81 = ims::debug(&v231, v191);
              v82 = ImsOutStream::operator<<(v81, "Disconnected from ");
              (*(*(this[6].__r_.__value_.__r.__words[2] + 1080) + 40))(this[6].__r_.__value_.__r.__words[2] + 1080, v82);
              v83 = ImsOutStream::operator<<(v82, " due to ");
              v84 = *(a2 + 8);
              if (v84 <= 37)
              {
                v85 = (reasonStrings + 24 * v84);
              }

              else
              {
                v85 = (reasonStrings + 240);
              }

              LoggableString::LoggableString(v226, v85);
              (*(*v83 + 40))(v83, v226);
              (*(*v83 + 64))(v83, std::endl[abi:ne200100]<char,std::char_traits<char>>);
              v83[17] = 0;
              if (SHIBYTE(v226[0].__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v226[0].__r_.__value_.__l.__data_);
              }

              if (v194 == 1 && v193 < 0)
              {
                operator delete(v192);
              }

              if (SBYTE7(v232) < 0)
              {
                operator delete(v231);
              }

              ims::CFString::asString(&v231, @"kIMSCallDisconnectionReasonAudioUnit", 0x8000100);
              goto LABEL_303;
            case 33:
              std::string::basic_string[abi:ne200100]<0>(&v231, "call");
              v187[0] = 0;
              v190 = 0;
              v50 = ims::debug(&v231, v187);
              v51 = ImsOutStream::operator<<(v50, "Disconnected from ");
              (*(*(this[6].__r_.__value_.__r.__words[2] + 1080) + 40))(this[6].__r_.__value_.__r.__words[2] + 1080, v51);
              v52 = ImsOutStream::operator<<(v51, " due to ");
              v53 = *(a2 + 8);
              if (v53 <= 37)
              {
                v54 = (reasonStrings + 24 * v53);
              }

              else
              {
                v54 = (reasonStrings + 240);
              }

              LoggableString::LoggableString(v226, v54);
              (*(*v52 + 40))(v52, v226);
              (*(*v52 + 64))(v52, std::endl[abi:ne200100]<char,std::char_traits<char>>);
              v52[17] = 0;
              if (SHIBYTE(v226[0].__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v226[0].__r_.__value_.__l.__data_);
              }

              if (v190 == 1 && v189 < 0)
              {
                operator delete(v188);
              }

              if (SBYTE7(v232) < 0)
              {
                operator delete(v231);
              }

              ims::CFString::asString(&v231, @"kIMSCallDisconnectionReasonAVConferencedCrash", 0x8000100);
              goto LABEL_303;
            case 34:
              std::string::basic_string[abi:ne200100]<0>(&v231, "call");
              v262[0] = 0;
              v265 = 0;
              v124 = ims::debug(&v231, v262);
              (*(*(this[6].__r_.__value_.__r.__words[2] + 1080) + 40))(this[6].__r_.__value_.__r.__words[2] + 1080, v124);
              v125 = ImsOutStream::operator<<(v124, " Declined, locally busy.");
              (*(*v125 + 64))(v125, std::endl[abi:ne200100]<char,std::char_traits<char>>);
              v125[17] = 0;
              if (v265 == 1 && v264 < 0)
              {
                operator delete(v263);
              }

              if (SBYTE7(v232) < 0)
              {
                operator delete(v231);
              }

              ims::CFString::asString(&v231, @"kIMSCallDisconnectionReasonLocalBusy", 0x8000100);
              goto LABEL_335;
            case 35:
              std::string::basic_string[abi:ne200100]<0>(&v231, "call");
              v183[0] = 0;
              v186 = 0;
              v119 = ims::debug(&v231, v183);
              v120 = ImsOutStream::operator<<(v119, "Disconnected from ");
              (*(*(this[6].__r_.__value_.__r.__words[2] + 1080) + 40))(this[6].__r_.__value_.__r.__words[2] + 1080, v120);
              v121 = ImsOutStream::operator<<(v120, " due to ");
              v122 = *(a2 + 8);
              if (v122 <= 37)
              {
                v123 = (reasonStrings + 24 * v122);
              }

              else
              {
                v123 = (reasonStrings + 240);
              }

              LoggableString::LoggableString(v226, v123);
              (*(*v121 + 40))(v121, v226);
              (*(*v121 + 64))(v121, std::endl[abi:ne200100]<char,std::char_traits<char>>);
              v121[17] = 0;
              if (SHIBYTE(v226[0].__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v226[0].__r_.__value_.__l.__data_);
              }

              if (v186 == 1 && v185 < 0)
              {
                operator delete(v184);
              }

              if (SBYTE7(v232) < 0)
              {
                operator delete(v231);
              }

              ims::CFString::asString(&v231, @"kIMSCallDisconnectionReasonBasebandCrash", 0x8000100);
              goto LABEL_303;
            case 36:
              std::string::basic_string[abi:ne200100]<0>(&v231, "call");
              v179[0] = 0;
              v182 = 0;
              v57 = ims::debug(&v231, v179);
              v58 = ImsOutStream::operator<<(v57, "Disconnected from ");
              (*(*(this[6].__r_.__value_.__r.__words[2] + 1080) + 40))(this[6].__r_.__value_.__r.__words[2] + 1080, v58);
              v59 = ImsOutStream::operator<<(v58, " due to ");
              v60 = *(a2 + 8);
              if (v60 <= 37)
              {
                v61 = (reasonStrings + 24 * v60);
              }

              else
              {
                v61 = (reasonStrings + 240);
              }

              LoggableString::LoggableString(v226, v61);
              (*(*v59 + 40))(v59, v226);
              (*(*v59 + 64))(v59, std::endl[abi:ne200100]<char,std::char_traits<char>>);
              v59[17] = 0;
              if (SHIBYTE(v226[0].__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v226[0].__r_.__value_.__l.__data_);
              }

              if (v182 == 1 && v181 < 0)
              {
                operator delete(v180);
              }

              if (SBYTE7(v232) < 0)
              {
                operator delete(v231);
              }

              ims::CFString::asString(&v231, @"kCallDisconnectionReasonRequiresCSFB", 0x8000100);
              if (SHIBYTE(v317.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v317.__r_.__value_.__l.__data_);
              }

              *&v317.__r_.__value_.__l.__data_ = v231;
              v317.__r_.__value_.__r.__words[2] = v232;
              LOBYTE(v333) = 1;
              goto LABEL_306;
            case 37:
              std::string::basic_string[abi:ne200100]<0>(&v231, "call");
              v175[0] = 0;
              v178 = 0;
              v71 = ims::debug(&v231, v175);
              v72 = ImsOutStream::operator<<(v71, "Disconnected from ");
              (*(*(this[6].__r_.__value_.__r.__words[2] + 1080) + 40))(this[6].__r_.__value_.__r.__words[2] + 1080, v72);
              v73 = ImsOutStream::operator<<(v72, " due to ");
              v74 = *(a2 + 8);
              if (v74 <= 37)
              {
                v75 = (reasonStrings + 24 * v74);
              }

              else
              {
                v75 = (reasonStrings + 240);
              }

              LoggableString::LoggableString(v226, v75);
              (*(*v73 + 40))(v73, v226);
              (*(*v73 + 64))(v73, std::endl[abi:ne200100]<char,std::char_traits<char>>);
              v73[17] = 0;
              if (SHIBYTE(v226[0].__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v226[0].__r_.__value_.__l.__data_);
              }

              if (v178 == 1 && v177 < 0)
              {
                operator delete(v176);
              }

              if (SBYTE7(v232) < 0)
              {
                operator delete(v231);
              }

              ims::CFString::asString(&v231, @"kCallDisconnectionReasonRequiresRedial", 0x8000100);
LABEL_303:
              if (SHIBYTE(v317.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v317.__r_.__value_.__l.__data_);
              }

              *&v317.__r_.__value_.__l.__data_ = v231;
              v317.__r_.__value_.__r.__words[2] = v232;
LABEL_306:
              BYTE2(v333) = 1;
              break;
            default:
              std::string::basic_string[abi:ne200100]<0>(&v231, "call");
              v163[0] = 0;
              v166 = 0;
              v76 = ims::debug(&v231, v163);
              v77 = ImsOutStream::operator<<(v76, "Disconnected from ");
              (*(*(this[6].__r_.__value_.__r.__words[2] + 1080) + 40))(this[6].__r_.__value_.__r.__words[2] + 1080, v77);
              v78 = ImsOutStream::operator<<(v77, " due to ");
              v79 = *(a2 + 8);
              if (v79 <= 37)
              {
                v80 = (reasonStrings + 24 * v79);
              }

              else
              {
                v80 = (reasonStrings + 240);
              }

              LoggableString::LoggableString(v226, v80);
              (*(*v78 + 40))(v78, v226);
              (*(*v78 + 64))(v78, std::endl[abi:ne200100]<char,std::char_traits<char>>);
              v78[17] = 0;
              if (SHIBYTE(v226[0].__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v226[0].__r_.__value_.__l.__data_);
              }

              if (v166 == 1 && v165 < 0)
              {
                operator delete(v164);
              }

              if (SBYTE7(v232) < 0)
              {
                operator delete(v231);
              }

              ims::CFString::asString(&v231, @"kCallDisconnectionReasonUnknownError", 0x8000100);
LABEL_335:
              if (SHIBYTE(v317.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v317.__r_.__value_.__l.__data_);
              }

              *&v317.__r_.__value_.__l.__data_ = v231;
              v317.__r_.__value_.__r.__words[2] = v232;
              break;
          }

          if (*(a2 + 148) == 1 && *(this[6].__r_.__value_.__r.__words[2] + 552))
          {
            IMSCallInfo::stack(this, &v231);
            isNR = ims::AccessNetwork::isNR((v231 + 3432));
            if (*(&v231 + 1))
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](*(&v231 + 1));
            }

            if (isNR)
            {
              std::string::basic_string[abi:ne200100]<0>(&v231, "call");
              v151[0] = 0;
              v154 = 0;
              v137 = ims::debug(&v231, v151);
              v138 = ImsOutStream::operator<<(v137, "Anonymous redial requested for NR emergency call.  Doing EPS fallback instead.");
              (*(*v138 + 64))(v138, std::endl[abi:ne200100]<char,std::char_traits<char>>);
              v138[17] = 0;
              if (v154 == 1 && v153 < 0)
              {
                operator delete(v152);
              }

              if (SBYTE7(v232) < 0)
              {
                operator delete(v231);
              }
            }

            else
            {
              std::string::basic_string[abi:ne200100]<0>(&v231, "call");
              v159[0] = 0;
              v162 = 0;
              v139 = ims::debug(&v231, v159);
              v140 = ImsOutStream::operator<<(v139, "Anonymous redial is set for this call, attempting new emergency call.");
              (*(*v140 + 64))(v140, std::endl[abi:ne200100]<char,std::char_traits<char>>);
              v140[17] = 0;
              if (v162 == 1 && v161 < 0)
              {
                operator delete(v160);
              }

              if (SBYTE7(v232) < 0)
              {
                operator delete(v231);
              }

              v231 = 0uLL;
              v141 = v324;
              data = this[7].__r_.__value_.__l.__data_;
              v157 = this[6].__r_.__value_.__r.__words[2];
              v158 = data;
              if (data)
              {
                atomic_fetch_add_explicit(&data->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v155 = 0;
              v156 = 0;
              BambiClient::initializeRedial(v141, &v157, 0, &v155, &v231);
              if (v156)
              {
                std::__shared_weak_count::__release_weak(v156);
              }

              if (v158)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v158);
              }

              v143 = v231;
              if (v231)
              {
                v144 = this[6].__r_.__value_.__r.__words[2];
                v145 = *(v144 + 432);
                *(v144 + 424) = 0;
                *(v144 + 432) = 0;
                if (v145)
                {
                  std::__shared_weak_count::__release_weak(v145);
                  v143 = v231;
                }

                v146 = *(&v231 + 1);
                if (*(&v231 + 1))
                {
                  atomic_fetch_add_explicit((*(&v231 + 1) + 8), 1uLL, memory_order_relaxed);
                }

                v147 = this[7].__r_.__value_.__l.__data_;
                this[6].__r_.__value_.__r.__words[2] = v143;
                this[7].__r_.__value_.__r.__words[0] = v146;
                if (v147)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v147);
                }

                this[25].__r_.__value_.__s.__data_[6] = 1;
                this[25].__r_.__value_.__s.__data_[3] = 0;
                v106 = *(&v231 + 1);
                if (*(&v231 + 1))
                {
LABEL_367:
                  std::__shared_weak_count::__release_shared[abi:ne200100](v106);
                }

                goto LABEL_372;
              }

              if (*(&v231 + 1))
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](*(&v231 + 1));
              }
            }
          }

          v148 = v322;
          IMSCallInfo::uuid(v149, this);
          IMSCallManager::sendCallDisconnectionNotification(v148, v149, &v317, &v333);
          v149[0] = &unk_1F5EBEE78;
          if (v150 < 0)
          {
            operator delete(v149[1]);
          }

LABEL_372:
          if ((SHIBYTE(v317.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_375;
          }

          v23 = v317.__r_.__value_.__r.__words[0];
          goto LABEL_374;
        }
      }
    }

LABEL_35:
    v10 = 0;
    goto LABEL_36;
  }

  if (v333 != 1)
  {
    v10 = 1;
    goto LABEL_40;
  }

  v231 = 0uLL;
  *&v232 = 0;
LABEL_38:
  (*(*v324 + 184))(v226);
  v14 = SipStack::prefs(v226[0].__r_.__value_.__l.__data_);
  v15 = ImsPrefs::RedialOverLteIfEpsFallbackCallFailed(v14) && SLODWORD(this[25].__r_.__value_.__r.__words[1]) < 3;
  if (v226[0].__r_.__value_.__l.__size_)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v226[0].__r_.__value_.__l.__size_);
  }

  if (v15)
  {
    std::string::basic_string[abi:ne200100]<0>(v226, "call");
    v313[0] = 0;
    v316 = 0;
    v20 = ims::debug(v226, v313);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v20 + 8), "Call to ", 8);
    *(v20 + 17) = 0;
    (*(*(this[6].__r_.__value_.__r.__words[2] + 1080) + 40))(this[6].__r_.__value_.__r.__words[2] + 1080, v20);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v20 + 8), " requires redial over LTE", 25);
    *(v20 + 17) = 0;
    (*(*v20 + 64))(v20, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v20 + 17) = 0;
    if (v316 == 1 && v315 < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v226[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v226[0].__r_.__value_.__l.__data_);
    }

    ims::CFString::asString(v226, @"kCallDisconnectionReasonRequiresRedialOverLteOnly", 0x8000100);
    goto LABEL_62;
  }

LABEL_56:
  std::string::basic_string[abi:ne200100]<0>(v226, "call");
  v309[0] = 0;
  v312 = 0;
  v21 = ims::debug(v226, v309);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v21 + 8), "Call to ", 8);
  *(v21 + 17) = 0;
  (*(*(this[6].__r_.__value_.__r.__words[2] + 1080) + 40))(this[6].__r_.__value_.__r.__words[2] + 1080, v21);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v21 + 8), " requires CS fallback", 21);
  *(v21 + 17) = 0;
  (*(*v21 + 64))(v21, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v21 + 17) = 0;
  if (v312 == 1 && v311 < 0)
  {
    operator delete(v310);
  }

  if (SHIBYTE(v226[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v226[0].__r_.__value_.__l.__data_);
  }

  ims::CFString::asString(v226, @"kCallDisconnectionReasonRequiresCSFB", 0x8000100);
LABEL_62:
  if (SBYTE7(v232) < 0)
  {
    operator delete(v231);
  }

  v231 = *&v226[0].__r_.__value_.__l.__data_;
  *&v232 = *(&v226[0].__r_.__value_.__l + 2);
  BYTE2(v333) = 1;
  v22 = v322;
  IMSCallInfo::uuid(v307, this);
  IMSCallManager::sendCallDisconnectionNotification(v22, v307, &v231, &v333);
  v307[0] = &unk_1F5EBEE78;
  if (v308 < 0)
  {
    operator delete(v307[1]);
  }

  if (SBYTE7(v232) < 0)
  {
    v23 = v231;
LABEL_374:
    operator delete(v23);
  }

LABEL_375:
  if (v323)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v323);
  }

  if (v325)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v325);
  }

  if (v327)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v327);
  }

  if (SHIBYTE(v330) < 0)
  {
    operator delete(*(&v329 + 1));
  }

  if (SBYTE7(v329) < 0)
  {
    operator delete(v328);
  }

  if (SHIBYTE(v339) < 0)
  {
    operator delete(*(&v338 + 1));
  }

  if (SBYTE7(v338) < 0)
  {
    operator delete(v337);
  }

  if (SHIBYTE(v335) < 0)
  {
    v8 = v334;
    goto LABEL_391;
  }

LABEL_392:
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void sub_1E4D18730(_Unwind_Exception *a1)
{
  if (SLOBYTE(STACK[0xB07]) < 0)
  {
    operator delete(STACK[0xAF0]);
  }

  if (STACK[0xB48])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0xB48]);
  }

  if (STACK[0xB58])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0xB58]);
  }

  if (STACK[0xB68])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0xB68]);
  }

  ims::AccessNetwork::~AccessNetwork(&STACK[0xB70]);
  ims::DisconnectInfo::~DisconnectInfo((v2 - 208));
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(a1);
}

void sub_1E4D18FCC()
{
  if (*(v0 - 72) == 1 && *(v0 - 81) < 0)
  {
    operator delete(*(v0 - 104));
  }

  if (SLOBYTE(STACK[0x617]) < 0)
  {
    operator delete(STACK[0x600]);
  }

  JUMPOUT(0x1E4D18FB0);
}

void IMSCallInfo::handleMediaInitializedEvent(IMSCallInfo *this, BambiCallEvent *a2)
{
  IPTelephonyManager::getCallManager(&v7);
  v4 = v7;
  IMSCallInfo::uuid(v5, this);
  (*(*v4 + 216))(v4, v5, @"kCallStatusMediaInitialized", *(this + 72), a2);
  v5[0] = &unk_1F5EBEE78;
  if (v6 < 0)
  {
    operator delete(v5[1]);
  }

  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }
}

void sub_1E4D190CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

void IMSCallInfo::handleMediaActivationEvent(IMSCallInfo *this, BambiCallEvent *a2, uint64_t a3)
{
  v6 = std::string::basic_string[abi:ne200100]<0>(&v37, "call");
  v33[0] = 0;
  v36 = 0;
  v7 = ims::debug(v6, v33);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "handleMedia", 11);
  *(v7 + 17) = 0;
  if (a3)
  {
    v8 = "A";
  }

  else
  {
    v8 = "Dea";
  }

  if (a3)
  {
    v9 = 1;
  }

  else
  {
    v9 = 3;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), v8, v9);
  *(v7 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "ctivationEvent", 14);
  *(v7 + 17) = 0;
  (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v7 + 17) = 0;
  if (v36 == 1 && v35 < 0)
  {
    operator delete(__p);
  }

  if (v39 < 0)
  {
    operator delete(v37);
  }

  if (*(this + 73))
  {
    v10 = std::string::basic_string[abi:ne200100]<0>(&v37, "call");
    v29[0] = 0;
    v32 = 0;
    v11 = ims::debug(v10, v29);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), "Ignore for conference participant.", 34);
    *(v11 + 17) = 0;
    (*(*v11 + 64))(v11, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v11 + 17) = 0;
    if (v32 == 1 && v31 < 0)
    {
      operator delete(v30);
    }

    if (v39 < 0)
    {
      operator delete(v37);
    }

    return;
  }

  *(this + 604) = a3;
  v37 = 0;
  v38 = 0;
  IPTelephonyManager::getCallManager(&v37);
  v12 = *(a2 + 3);
  if (v12)
  {
    v13 = *(a2 + 2);
    atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v14 = std::__shared_weak_count::lock(v12);
    v15 = v14;
    if (v14)
    {
      v16 = v13;
    }

    else
    {
      v16 = 0;
    }

    v17 = *(this + 20);
    if (v16 != v17)
    {
      if (v14)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v14);
      }

      std::__shared_weak_count::__release_weak(v12);
      goto LABEL_40;
    }

    v18 = *(v17 + 408);
    if (v18)
    {
      v19 = SipSession::confirmed(v18);
      if (!v15)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v19 = 0;
      if (!v15)
      {
LABEL_29:
        std::__shared_weak_count::__release_weak(v12);
        if (v19)
        {
          v20 = v37;
          IMSCallInfo::uuid(v27, this);
          v21 = kIMSCallStatusMediaActive;
          if (!a3)
          {
            v21 = kIMSCallStatusMediaInactive;
          }

          (*(*v20 + 216))(v20, v27, *v21, *(this + 72), a2);
          v27[0] = &unk_1F5EBEE78;
          if (v28 < 0)
          {
            operator delete(v27[1]);
          }

          v22 = *(this + 21);
          v25 = *(this + 20);
          v26 = v22;
          if (v22)
          {
            atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          IMSCallInfo::uuid(v23, this);
          (*(*v20 + 192))(v20, &v25, a3, v23);
          v23[0] = &unk_1F5EBEE78;
          if (v24 < 0)
          {
            operator delete(v23[1]);
          }

          if (v26)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v26);
          }
        }

        goto LABEL_40;
      }
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    goto LABEL_29;
  }

LABEL_40:
  if (v38)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v38);
  }
}

void sub_1E4D194BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, char a45)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  v47 = *(v45 - 80);
  if (v47)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v47);
  }

  _Unwind_Resume(exception_object);
}

void IMSCallInfo::handleSessionConfirmedEvent(IMSCallInfo *this, BambiCallSessionConfirmedEvent *a2)
{
  v4 = *(a2 + 3);
  if (v4)
  {
    v5 = *(a2 + 2);
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v6 = std::__shared_weak_count::lock(v4);
    if (!v6)
    {
      v5 = 0;
    }

    std::__shared_weak_count::__release_weak(v4);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  if (v5 == *(this + 20))
  {
    v9 = std::string::basic_string[abi:ne200100]<0>(&v39, "call");
    v31[0] = 0;
    v34 = 0;
    v10 = ims::debug(v9, v31);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "Session confirmed with ", 23);
    *(v10 + 17) = 0;
    (*(*(v5 + 1080) + 40))(v5 + 1080, v10);
    (*(*v10 + 64))(v10, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v10 + 17) = 0;
    if (v34 == 1 && v33 < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v39.__r_.__value_.__l.__data_);
    }

    v29 = 0;
    v30 = 0;
    IPTelephonyManager::getCallManager(&v29);
    v11 = v29;
    IMSCallInfo::uuid(v27, this);
    (*(*v11 + 216))(v11, v27, @"kCallStatusMediaActive", *(this + 72), 0);
    v27[0] = &unk_1F5EBEE78;
    if (v28 < 0)
    {
      operator delete(v27[1]);
    }

    v12 = *(this + 21);
    v25 = *(this + 20);
    v26 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    IMSCallInfo::uuid(v23, this);
    (*(*v11 + 192))(v11, &v25, 1, v23);
    v23[0] = &unk_1F5EBEE78;
    if (v24 < 0)
    {
      operator delete(v23[1]);
    }

    if (v26)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v26);
    }

    IMSCallInfo::uuid(v21, this);
    (*(*v11 + 216))(v11, v21, @"kCallStatusActive", *(this + 72), a2);
    v21[0] = &unk_1F5EBEE78;
    if (v22 < 0)
    {
      operator delete(v21[1]);
    }

    v13 = *(this + 20);
    if (v13)
    {
      BambiCall::sendHoldResumeIndication(v13, (*(v13 + 120) & 0xFFFFFFFE) == 2);
    }

    if (*(this + 152) == 2 && *(this + 20))
    {
      IMSCallInfo::stack(this, &v19);
      if (*(v19 + 4455) < 0)
      {
        std::string::__init_copy_ctor_external(&v39, *(v19 + 4432), *(v19 + 4440));
      }

      else
      {
        v39 = *(v19 + 4432);
      }

      IMSCallManager::sendCallStatusRequest(v14, &v39, 1, *(*(this + 20) + 1529), *(*(this + 20) + 552) != 0);
      if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v39.__r_.__value_.__l.__data_);
      }

      if (v20)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v20);
      }

      *(this + 152) = 3;
    }

    pthread_mutex_lock(&ctu::Singleton<IMSMetricsManager,IMSMetricsManager,ctu::PthreadMutexGuardPolicy<IMSMetricsManager>>::sInstance);
    v15 = off_1EE2BBBC0;
    if (!off_1EE2BBBC0)
    {
      IMSMetricsManager::create_default_global();
    }

    v16 = *(&off_1EE2BBBC0 + 1);
    if (*(&off_1EE2BBBC0 + 1))
    {
      atomic_fetch_add_explicit((*(&off_1EE2BBBC0 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&ctu::Singleton<IMSMetricsManager,IMSMetricsManager,ctu::PthreadMutexGuardPolicy<IMSMetricsManager>>::sInstance);
    v17 = *(this + 21);
    v18[0] = *(this + 20);
    v18[1] = v17;
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    IMSMetricsManager::logSessionConfirmedEvent(v15, v18, *(this + 72), *(this + 72));
    if (v17)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v17);
    }

    if (v16)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    }

    if (v30)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v30);
    }
  }

  else
  {
    v7 = std::string::basic_string[abi:ne200100]<0>(&v39, "call");
    v35[0] = 0;
    v38 = 0;
    v8 = ims::debug(v7, v35);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "IMSCallInfo::handleSessionConfirmedEvent for an unknown call", 60);
    *(v8 + 17) = 0;
    (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v8 + 17) = 0;
    if (v38 == 1 && v37 < 0)
    {
      operator delete(v36);
    }

    if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v39.__r_.__value_.__l.__data_);
    }
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void sub_1E4D19AE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, std::__shared_weak_count *a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, char a47)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  if (a37)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a37);
  }

  if (v47)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v47);
  }

  _Unwind_Resume(exception_object);
}

void IMSCallInfo::handleSessionAcknowledgedEvent(IMSCallInfo *this, BambiCallEvent *a2)
{
  v3 = *(a2 + 3);
  if (v3)
  {
    v4 = *(a2 + 2);
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v5 = std::__shared_weak_count::lock(v3);
    if (!v5)
    {
      v4 = 0;
    }

    std::__shared_weak_count::__release_weak(v3);
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  if (v4 == *(this + 20))
  {
    v8 = std::string::basic_string[abi:ne200100]<0>(&v21, "call");
    v13[0] = 0;
    v16 = 0;
    v9 = ims::debug(v8, v13);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), "Session acknowledged with ", 26);
    *(v9 + 17) = 0;
    (*(*(v4 + 1080) + 40))(v4 + 1080, v9);
    (*(*v9 + 64))(v9, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v9 + 17) = 0;
    if (v16 == 1 && v15 < 0)
    {
      operator delete(v14);
    }

    if (v23 < 0)
    {
      operator delete(v21);
    }

    IPTelephonyManager::getCallManager(&v21);
    v10 = v21;
    IMSCallInfo::uuid(v11, this);
    (*(*v10 + 216))(v10, v11, @"kCallStatusAcknowledged", *(this + 72), 0);
    v11[0] = &unk_1F5EBEE78;
    if (v12 < 0)
    {
      operator delete(v11[1]);
    }

    if (v22)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v22);
    }
  }

  else
  {
    v6 = std::string::basic_string[abi:ne200100]<0>(&v21, "call");
    v17[0] = 0;
    v20 = 0;
    v7 = ims::debug(v6, v17);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "IMSCallInfo::handleSessionAcknowledgedEvent for an unknown call", 63);
    *(v7 + 17) = 0;
    (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v7 + 17) = 0;
    if (v20 == 1 && v19 < 0)
    {
      operator delete(__p);
    }

    if (v23 < 0)
    {
      operator delete(v21);
    }
  }

  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

void sub_1E4D19F10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, char a36)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  v39 = *(v37 - 48);
  if (v39)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v39);
  }

  if (v36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v36);
  }

  _Unwind_Resume(exception_object);
}

void IMSCallInfo::handleSessionRequestedEvent(IMSCallInfo *this, BambiCallSessionRequestedEvent *a2)
{
  v3 = *(a2 + 3);
  if (v3)
  {
    v4 = *(a2 + 2);
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v5 = std::__shared_weak_count::lock(v3);
    if (!v5)
    {
      v4 = 0;
    }

    std::__shared_weak_count::__release_weak(v3);
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  if (v4 != *(this + 20))
  {
    v6 = std::string::basic_string[abi:ne200100]<0>(v54, "call");
    v50[0] = 0;
    v53 = 0;
    v7 = ims::debug(v6, v50);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "IMSCallInfo::handleSessionRequestedEvent for an unknown call", 60);
    *(v7 + 17) = 0;
    (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v7 + 17) = 0;
    if (v53 == 1 && v52 < 0)
    {
      operator delete(v51);
    }

    if (v55 < 0)
    {
      operator delete(v54[0]);
    }

    goto LABEL_75;
  }

  v48 = 0;
  v49 = 0;
  IPTelephonyManager::getBambiClient(&v48);
  v46 = 0;
  v47 = 0;
  IPTelephonyManager::getCallManager(&v46);
  v8 = v48;
  v9 = *(this + 21);
  v45[0] = *(this + 20);
  v45[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = BambiClient::unconfirmedCallsExcludingCall(v8, 0, v45);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  if (!v10)
  {
    v37 = 0;
    v38 = 0;
    (*(*v8 + 184))(&v37, v8, this + 136);
    if (v37)
    {
      v14 = SipStack::prefs(v37);
      v15 = ImsPrefs::MaxCallCount(v14);
    }

    else
    {
      v15 = 3;
    }

    v54[0] = 0;
    v54[1] = 0;
    if (BambiClient::callCountExcludingCall(v8, v54) <= v15)
    {
      pthread_mutex_lock(&ctu::Singleton<IMSMetricsManager,IMSMetricsManager,ctu::PthreadMutexGuardPolicy<IMSMetricsManager>>::sInstance);
      v20 = off_1EE2BBBC0;
      if (!off_1EE2BBBC0)
      {
        IMSMetricsManager::create_default_global();
      }

      v21 = *(&off_1EE2BBBC0 + 1);
      if (*(&off_1EE2BBBC0 + 1))
      {
        atomic_fetch_add_explicit((*(&off_1EE2BBBC0 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      pthread_mutex_unlock(&ctu::Singleton<IMSMetricsManager,IMSMetricsManager,ctu::PthreadMutexGuardPolicy<IMSMetricsManager>>::sInstance);
      v22 = *(this + 21);
      v30[0] = *(this + 20);
      v30[1] = v22;
      if (v22)
      {
        atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      IMSMetricsManager::logSessionRequestedEvent(v20, v30, *(this + 72), 0);
      if (v22)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v22);
      }

      if (v21)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v21);
      }

      pthread_mutex_lock(&ctu::Singleton<IMSMetricsManager,IMSMetricsManager,ctu::PthreadMutexGuardPolicy<IMSMetricsManager>>::sInstance);
      v23 = off_1EE2BBBC0;
      if (!off_1EE2BBBC0)
      {
        IMSMetricsManager::create_default_global();
      }

      v24 = *(&off_1EE2BBBC0 + 1);
      if (*(&off_1EE2BBBC0 + 1))
      {
        atomic_fetch_add_explicit((*(&off_1EE2BBBC0 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      pthread_mutex_unlock(&ctu::Singleton<IMSMetricsManager,IMSMetricsManager,ctu::PthreadMutexGuardPolicy<IMSMetricsManager>>::sInstance);
      if (*(v23 + 264) == 1)
      {
        isWifi = ims::AccessNetwork::isWifi((v37 + 3432));
        if (v24)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v24);
        }

        if (!isWifi)
        {
          goto LABEL_69;
        }
      }

      else if (v24)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v24);
      }

      v26 = *(this + 5);
      v29[0] = *(this + 4);
      if (!v26 || (v27 = std::__shared_weak_count::lock(v26), (v29[1] = v27) == 0))
      {
        std::__throw_bad_weak_ptr[abi:ne200100]();
      }

      v28 = v27;
      IMSCallManager::sendIncomingCallStatusNotification(v27, v29);
      std::__shared_weak_count::__release_shared[abi:ne200100](v28);
    }

    else
    {
      v16 = std::string::basic_string[abi:ne200100]<0>(v54, "call");
      v33[0] = 0;
      v36 = 0;
      v17 = ims::info(v16, v33);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v17 + 8), "IMSCallInfo::handleSessionRequestedEvent when we already have ", 62);
      *(v17 + 17) = 0;
      v56[0] = 0;
      v56[1] = 0;
      v18 = BambiClient::callCountExcludingCall(v8, v56);
      MEMORY[0x1E6923370](*(v17 + 8), v18);
      *(v17 + 17) = 0;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v17 + 8), " calls. Declining.", 18);
      *(v17 + 17) = 0;
      (*(*v17 + 64))(v17, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v17 + 17) = 0;
      if (v36 == 1 && v35 < 0)
      {
        operator delete(v34);
      }

      if (v55 < 0)
      {
        operator delete(v54[0]);
      }

      v19 = v46;
      v31 = &unk_1F5EBEE78;
      if (*(this + 135) < 0)
      {
        std::string::__init_copy_ctor_external(&v32, *(this + 14), *(this + 15));
      }

      else
      {
        v32 = *(this + 112);
      }

      std::string::basic_string[abi:ne200100]<0>(v54, "AlreadyOnMaxCalls");
      (*(*v19 + 56))(v19, &v31, v54);
      if (v55 < 0)
      {
        operator delete(v54[0]);
      }

      v31 = &unk_1F5EBEE78;
      if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v32.__r_.__value_.__l.__data_);
      }
    }

LABEL_69:
    if (v38)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v38);
    }

    goto LABEL_71;
  }

  v11 = std::string::basic_string[abi:ne200100]<0>(v54, "call");
  v41[0] = 0;
  v44 = 0;
  v12 = ims::info(v11, v41);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v12 + 8), "IMSCallInfo::handleSessionRequestedEvent during an existing alerting call. Declining.", 85);
  *(v12 + 17) = 0;
  (*(*v12 + 64))(v12, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v12 + 17) = 0;
  if (v44 == 1 && v43 < 0)
  {
    operator delete(__p);
  }

  if (v55 < 0)
  {
    operator delete(v54[0]);
  }

  v13 = v46;
  v39 = &unk_1F5EBEE78;
  if (*(this + 135) < 0)
  {
    std::string::__init_copy_ctor_external(&v40, *(this + 14), *(this + 15));
  }

  else
  {
    v40 = *(this + 112);
  }

  std::string::basic_string[abi:ne200100]<0>(v54, "EstablishingAnotherCall");
  (*(*v13 + 56))(v13, &v39, v54);
  if (v55 < 0)
  {
    operator delete(v54[0]);
  }

  v39 = &unk_1F5EBEE78;
  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v40.__r_.__value_.__l.__data_);
  }

LABEL_71:
  if (v47)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v47);
  }

  if (v49)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v49);
  }

LABEL_75:
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

void sub_1E4D1A670(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, char a30, uint64_t a31, std::__shared_weak_count *a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, char a49)
{
  pthread_mutex_unlock(&ctu::Singleton<IMSMetricsManager,IMSMetricsManager,ctu::PthreadMutexGuardPolicy<IMSMetricsManager>>::sInstance);
  if (a32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a32);
  }

  v52 = *(v50 - 208);
  if (v52)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v52);
  }

  v53 = *(v50 - 192);
  if (v53)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v53);
  }

  if (v49)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v49);
  }

  _Unwind_Resume(a1);
}

void IMSCallManager::sendIncomingCallStatusNotification(uint64_t a1, IMSCallInfo **a2)
{
  memset(v97, 0, sizeof(v97));
  v95 = 0u;
  v96 = 0u;
  v93 = 0u;
  v94 = 0u;
  v91 = 0u;
  v92 = 0u;
  v90 = 0u;
  memset(v89, 0, sizeof(v89));
  v2 = *a2;
  if (*a2)
  {
    v5 = *(v2 + 20);
    v4 = *(v2 + 21);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      if (v5)
      {
        v5 = *(*a2 + 20);
        v6 = *(*a2 + 21);
        memset(&__str, 0, sizeof(__str));
        if (v6)
        {
          v7 = 0;
          atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        else
        {
          v7 = 1;
        }

LABEL_14:
        BambiCall::remoteDisplayName(&__str, v5);
        if ((v7 & 1) == 0)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v6);
        }

        memset(&__s, 0, sizeof(__s));
        v10 = *(*a2 + 20);
        v11 = *(*a2 + 21);
        if (v11)
        {
          atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        BambiCall::remoteDisplayNumber(v10, &__s);
        if (v11)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v11);
        }

        v81 = 0;
        v82 = 0;
        IMSCallInfo::stack(*a2, &v81);
        if (v81)
        {
          v12 = SipStack::prefs(v81);
          if (ImsPrefs::EnableSenderName(v12))
          {
            ims::removeQuotes(&__str, &v76);
            std::string::basic_string[abi:ne200100]<0>(&v75, "\"");
            ims::unescapeString(&v76, 92, &v75, &v69);
            if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__str.__r_.__value_.__l.__data_);
            }

            __str = v69;
            *(&v69.__r_.__value_.__s + 23) = 0;
            v69.__r_.__value_.__s.__data_[0] = 0;
            if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v75.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v76.__r_.__value_.__l.__data_);
            }
          }

          else if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            *__str.__r_.__value_.__l.__data_ = 0;
            __str.__r_.__value_.__l.__size_ = 0;
          }

          else
          {
            __str.__r_.__value_.__s.__data_[0] = 0;
            *(&__str.__r_.__value_.__s + 23) = 0;
          }

          std::string::operator=(v89, &__str);
          v14 = *(*a2 + 20);
          v15 = *(*a2 + 21);
          if (v15)
          {
            atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          BambiCall::remoteDisplayNumber(v14, &v69);
          if (SHIBYTE(v89[1].__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v89[1].__r_.__value_.__l.__data_);
          }

          v89[1] = v69;
          *(&v69.__r_.__value_.__s + 23) = 0;
          v69.__r_.__value_.__s.__data_[0] = 0;
          if (v15)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v15);
          }

          v16 = *(*a2 + 20);
          v17 = *(*a2 + 21);
          if (v17)
          {
            atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          BambiCall::remoteDisplayCountryCode(&v69, v16);
          if (SBYTE7(v91) < 0)
          {
            operator delete(v90);
          }

          v90 = *&v69.__r_.__value_.__l.__data_;
          *&v91 = *(&v69.__r_.__value_.__l + 2);
          *(&v69.__r_.__value_.__s + 23) = 0;
          v69.__r_.__value_.__s.__data_[0] = 0;
          if (v17)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v17);
          }

          v18 = *(*a2 + 20);
          v19 = *(*a2 + 21);
          if (v19)
          {
            atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          std::string::operator=((&v91 + 8), v18 + 21);
          if (v19)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v19);
          }

          v20 = *(*a2 + 20);
          v21 = *(*a2 + 21);
          if (v21)
          {
            atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
            IsPrivate = BambiCall::senderIsPrivate(v20);
            std::__shared_weak_count::__release_shared[abi:ne200100](v21);
            if (IsPrivate)
            {
              goto LABEL_54;
            }
          }

          else if (BambiCall::senderIsPrivate(v20))
          {
LABEL_54:
            LOBYTE(v93) = 1;
            std::string::basic_string[abi:ne200100]<0>(&v76, "call");
            v71[0] = 0;
            v74 = 0;
            v23 = ims::debug(&v76, v71);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v23 + 8), "Incoming call ", 14);
            *(v23 + 17) = 0;
            IMSCallInfo::uuid(&v69, *a2);
            (*(v69.__r_.__value_.__r.__words[0] + 16))(&v69, v23);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v23 + 8), " from blocked number", 20);
            *(v23 + 17) = 0;
            (*(*v23 + 64))(v23, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            *(v23 + 17) = 0;
            v69.__r_.__value_.__r.__words[0] = &unk_1F5EBEE78;
            if (SHIBYTE(v70) < 0)
            {
              operator delete(v69.__r_.__value_.__l.__size_);
            }

            if (v74 == 1 && v73 < 0)
            {
              v24 = v72;
LABEL_73:
              operator delete(v24);
              goto LABEL_74;
            }

            goto LABEL_74;
          }

          std::string::basic_string[abi:ne200100]<0>(&v76, "call");
          v65[0] = 0;
          v68 = 0;
          v25 = ims::debug(&v76, v65);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v25 + 8), "Incoming call ", 14);
          *(v25 + 17) = 0;
          IMSCallInfo::uuid(&v69, *a2);
          (*(v69.__r_.__value_.__r.__words[0] + 16))(&v69, v25);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v25 + 8), " from ", 6);
          *(v25 + 17) = 0;
          if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
          {
            if (__s.__r_.__value_.__l.__size_)
            {
              std::string::__init_copy_ctor_external(&v75, __s.__r_.__value_.__l.__data_, __s.__r_.__value_.__l.__size_);
              goto LABEL_66;
            }
          }

          else if (*(&__s.__r_.__value_.__s + 23))
          {
            v75 = __s;
            goto LABEL_66;
          }

          std::string::basic_string[abi:ne200100]<0>(&v75, "Unknown number");
LABEL_66:
          (*(*v25 + 32))(v25, &v75);
          (*(*v25 + 64))(v25, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v25 + 17) = 0;
          if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v75.__r_.__value_.__l.__data_);
          }

          v69.__r_.__value_.__r.__words[0] = &unk_1F5EBEE78;
          if (SHIBYTE(v70) < 0)
          {
            operator delete(v69.__r_.__value_.__l.__size_);
          }

          if (v68 == 1 && v67 < 0)
          {
            v24 = v66;
            goto LABEL_73;
          }

LABEL_74:
          if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v76.__r_.__value_.__l.__data_);
          }

          if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(__s.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = __s.__r_.__value_.__l.__size_;
          }

          memset(&v76, 0, sizeof(v76));
          v27 = &v76;
          std::string::basic_string[abi:ne200100](&v76, size + 1);
          if ((v76.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v27 = v76.__r_.__value_.__r.__words[0];
          }

          if (size)
          {
            if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              p_s = &__s;
            }

            else
            {
              p_s = __s.__r_.__value_.__r.__words[0];
            }

            memmove(v27, p_s, size);
          }

          *(&v27->__r_.__value_.__l.__data_ + size) = 10;
          memset(&v75, 0, sizeof(v75));
          v29 = *(*a2 + 20);
          v30 = *(*a2 + 21);
          if (v30)
          {
            atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (*(v29 + 735) < 0)
          {
            std::string::__init_copy_ctor_external(&v75, *(v29 + 712), *(v29 + 720));
          }

          else
          {
            v75 = *(v29 + 712);
          }

          if (v30)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v30);
          }

          if ((v75.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v31 = HIBYTE(v75.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v31 = v75.__r_.__value_.__l.__size_;
          }

          if (v31)
          {
            if ((v75.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v32 = &v75;
            }

            else
            {
              v32 = v75.__r_.__value_.__r.__words[0];
            }

            std::string::append(&v76, v32, v31);
          }

          std::string::operator=((&v93 + 8), &v76);
          v33 = *a2;
          BYTE1(v93) = *(*a2 + 72);
          v35 = *(v33 + 20);
          v34 = *(v33 + 21);
          if (v34)
          {
            atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
            v36 = *(v35 + 408);
            if (v36)
            {
              LODWORD(v36) = *(v36 + 1664);
            }

            LOBYTE(v95) = v36 & 1;
            std::__shared_weak_count::__release_shared[abi:ne200100](v34);
            v35 = *(*a2 + 20);
            v37 = *(*a2 + 21);
            if (v37)
            {
              atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
              v38 = *(v35 + 408);
              if (v38)
              {
                LODWORD(v38) = *(v38 + 1668);
              }

              DWORD1(v95) = v38;
              std::__shared_weak_count::__release_shared[abi:ne200100](v37);
              goto LABEL_114;
            }
          }

          else
          {
            v39 = *(v35 + 408);
            if (v39)
            {
              LODWORD(v39) = *(v39 + 1664);
            }

            LOBYTE(v95) = v39 & 1;
          }

          v40 = *(v35 + 408);
          if (v40)
          {
            LODWORD(v40) = *(v40 + 1668);
          }

          DWORD1(v95) = v40;
LABEL_114:
          v41 = SipStack::prefs(v81);
          v42 = ImsPrefs::EnableBrandedCalling(v41);
          v43 = *a2;
          if (!v42)
          {
            goto LABEL_146;
          }

          v44 = *(v43 + 20);
          v45 = *(v43 + 21);
          if (v45)
          {
            atomic_fetch_add_explicit(&v45->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          BambiCall::remoteCompanyName(v44, &v69);
          v46 = HIBYTE(v69.__r_.__value_.__r.__words[2]);
          if ((v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v46 = v69.__r_.__value_.__l.__size_;
          }

          if (v46)
          {
            v48 = *(*a2 + 20);
            v47 = *(*a2 + 21);
            if (v47)
            {
              atomic_fetch_add_explicit(&v47->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v49 = *(v48 + 408);
            if (v49)
            {
              v50 = *(v49 + 1668) == 1;
              if (!v47)
              {
                goto LABEL_128;
              }

              goto LABEL_127;
            }

            v50 = 0;
            if (v47)
            {
LABEL_127:
              std::__shared_weak_count::__release_shared[abi:ne200100](v47);
            }
          }

          else
          {
            v50 = 0;
          }

LABEL_128:
          if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v69.__r_.__value_.__l.__data_);
          }

          if (v45)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v45);
          }

          v43 = *a2;
          if (v50)
          {
            v51 = *(v43 + 20);
            v52 = *(v43 + 21);
            if (v52)
            {
              atomic_fetch_add_explicit(&v52->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            BambiCall::remoteCompanyName(v51, &v69);
            if (SHIBYTE(v89[0].__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v89[0].__r_.__value_.__l.__data_);
            }

            v89[0] = v69;
            *(&v69.__r_.__value_.__s + 23) = 0;
            v69.__r_.__value_.__s.__data_[0] = 0;
            if (v52)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v52);
            }

            v53 = *(*a2 + 20);
            v54 = *(*a2 + 21);
            if (v54)
            {
              atomic_fetch_add_explicit(&v54->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            BambiCall::remoteImageUrl(v53, &v69);
            if (SHIBYTE(v97[1]) < 0)
            {
              operator delete(*(&v97[0] + 1));
            }

            *(v97 + 8) = v69;
            *(&v69.__r_.__value_.__s + 23) = 0;
            v69.__r_.__value_.__s.__data_[0] = 0;
            if (v54)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v54);
            }

            v43 = *a2;
          }

LABEL_146:
          v55 = *(v43 + 20);
          v56 = *(v43 + 21);
          if (v56)
          {
            atomic_fetch_add_explicit(&v56->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          BambiCall::spamInfo(&v69, v55);
          *(&v95 + 1) = v69.__r_.__value_.__r.__words[0];
          if (SBYTE7(v97[0]) < 0)
          {
            operator delete(v96);
          }

          v96 = *&v69.__r_.__value_.__r.__words[1];
          *&v97[0] = v70;
          HIBYTE(v70) = 0;
          v69.__r_.__value_.__s.__data_[8] = 0;
          if (v56)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v56);
          }

          memset(&v64, 0, sizeof(v64));
          if (*(v81 + 4455) < 0)
          {
            std::string::__init_copy_ctor_external(&v64, *(v81 + 554), *(v81 + 555));
          }

          else
          {
            *&v64.__r_.__value_.__l.__data_ = *(v81 + 277);
            v64.__r_.__value_.__r.__words[2] = *(v81 + 556);
          }

          std::string::basic_string[abi:ne200100]<0>(v62, "audit");
          v58[0] = 0;
          v61 = 0;
          v57 = ims::debug(v62, v58);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v57 + 8), "Creating ims::Client handle for call ", 37);
          *(v57 + 17) = 0;
          IMSCallInfo::uuid(&v69, *a2);
          (*(v69.__r_.__value_.__r.__words[0] + 16))(&v69, v57);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v57 + 8), " on stack ", 10);
          *(v57 + 17) = 0;
          (*(*v57 + 32))(v57, &v64);
          (*(*v57 + 64))(v57, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v57 + 17) = 0;
          v69.__r_.__value_.__r.__words[0] = &unk_1F5EBEE78;
          if (SHIBYTE(v70) < 0)
          {
            operator delete(v69.__r_.__value_.__l.__size_);
          }

          if (v61 == 1 && v60 < 0)
          {
            operator delete(v59);
          }

          if (v63 < 0)
          {
            operator delete(v62[0]);
          }

          IMSCallInfo::createCallHandle(*a2);
        }

        std::string::basic_string[abi:ne200100]<0>(&v69, "legacy");
        v77[0] = 0;
        v80 = 0;
        v13 = ims::warn(&v69, v77);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), "Unable to resolve sip stack for callid: ", 40);
        *(v13 + 17) = 0;
        MEMORY[0x1E6923340](*(v13 + 8), *(*a2 + 72));
        *(v13 + 17) = 0;
        (*(*v13 + 64))(v13, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v13 + 17) = 0;
        if (v80 == 1 && v79 < 0)
        {
          operator delete(v78);
        }

        if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v69.__r_.__value_.__l.__data_);
        }

        if (v82)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v82);
        }

        if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__s.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          v9 = __str.__r_.__value_.__r.__words[0];
          goto LABEL_169;
        }

        goto LABEL_170;
      }
    }

    else if (v5)
    {
      v6 = 0;
      memset(&__str, 0, sizeof(__str));
      v7 = 1;
      goto LABEL_14;
    }
  }

  std::string::basic_string[abi:ne200100]<0>(&v69, "call");
  v85[0] = 0;
  v88 = 0;
  v8 = ims::error(&v69, v85);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "sendIncomingCallStatusNotification does not have a valid callInfo", 65);
  *(v8 + 17) = 0;
  (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v8 + 17) = 0;
  if (v88 == 1 && v87 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
  {
    v9 = v69.__r_.__value_.__r.__words[0];
LABEL_169:
    operator delete(v9);
  }

LABEL_170:
  if (SHIBYTE(v97[1]) < 0)
  {
    operator delete(*(&v97[0] + 1));
  }

  if (SBYTE7(v97[0]) < 0)
  {
    operator delete(v96);
  }

  if (SHIBYTE(v94) < 0)
  {
    operator delete(*(&v93 + 1));
  }

  if (SHIBYTE(v92) < 0)
  {
    operator delete(*(&v91 + 1));
  }

  if (SBYTE7(v91) < 0)
  {
    operator delete(v90);
  }

  if (SHIBYTE(v89[1].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v89[1].__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v89[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v89[0].__r_.__value_.__l.__data_);
  }
}

void sub_1E4D1B564(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *__p, uint64_t a42, int a43, __int16 a44, char a45, char a46, void *a47, uint64_t a48, int a49, __int16 a50, char a51, char a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, std::__shared_weak_count *a61, void *a62, uint64_t a63)
{
  if (v67)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v67);
  }

  if (a46 < 0)
  {
    operator delete(__p);
  }

  if (a52 < 0)
  {
    operator delete(a47);
  }

  if (a61)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a61);
  }

  if (a65 < 0)
  {
    operator delete(a62);
  }

  if (a67 < 0)
  {
    operator delete(a66);
  }

  ims::CallIncomingInfo::~CallIncomingInfo((v68 - 240));
  _Unwind_Resume(a1);
}

void sub_1E4D1B808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a67 == 1 && a66 < 0)
  {
    operator delete(__p);
  }

  if (a35 < 0)
  {
    JUMPOUT(0x1E4D1B7F4);
  }

  JUMPOUT(0x1E4D1B7F8);
}

uint64_t IMSCallInfo::handleForceLTEFallbackEvent(uint64_t a1, char *a2)
{
  v2 = *(*(IMSClientManager::delegateForStack(a2) + 16) + 104);

  return v2();
}

void IMSCallInfo::handleHoldIndicationEvent(IMSCallInfo *this, BambiCallHoldResumeIndicationEvent *a2)
{
  if (a2)
  {
    IMSCallInfo::stack(this, &v8);
    if (*(v8 + 4455) < 0)
    {
      std::string::__init_copy_ctor_external(&v10, *(v8 + 4432), *(v8 + 4440));
    }

    else
    {
      v10 = *(v8 + 4432);
    }

    v4 = IMSClientManager::delegateForStack(&v10);
    IMSCallInfo::uuid(&v5, this);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v7, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    }

    else
    {
      v7 = __p;
    }

    (*(*v4 + 208))(v4, &v7, *(a2 + 9), *(a2 + 8));
    if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v7.__r_.__value_.__l.__data_);
    }

    v5 = &unk_1F5EBEE78;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v10.__r_.__value_.__l.__data_);
    }

    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }
  }
}

void sub_1E4D1B9D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v24 - 41) < 0)
  {
    operator delete(*(v24 - 64));
  }

  if (a24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a24);
  }

  _Unwind_Resume(exception_object);
}

void IMSCallInfo::handleResumeIndicationEvent(IMSCallInfo *this, BambiCallHoldResumeIndicationEvent *a2)
{
  if (a2)
  {
    IMSCallInfo::stack(this, &v8);
    if (*(v8 + 4455) < 0)
    {
      std::string::__init_copy_ctor_external(&v10, *(v8 + 4432), *(v8 + 4440));
    }

    else
    {
      v10 = *(v8 + 4432);
    }

    v4 = IMSClientManager::delegateForStack(&v10);
    IMSCallInfo::uuid(&v5, this);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v7, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    }

    else
    {
      v7 = __p;
    }

    (*(*v4 + 200))(v4, &v7, *(a2 + 9), *(a2 + 8));
    if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v7.__r_.__value_.__l.__data_);
    }

    v5 = &unk_1F5EBEE78;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v10.__r_.__value_.__l.__data_);
    }

    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }
  }
}

void sub_1E4D1BBA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v24 - 41) < 0)
  {
    operator delete(*(v24 - 64));
  }

  if (a24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a24);
  }

  _Unwind_Resume(exception_object);
}

void IMSCallInfo::handleSessionTerminatingEvent(std::string *this, BambiCallSessionTerminatingEvent *a2)
{
  if (this[25].__r_.__value_.__s.__data_[3] == 1)
  {
    v7 = v2;
    v8 = v3;
    IPTelephonyManager::getCallManager(&v5);
    v4 = v6;
    if (v6)
    {

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  else
  {

    IMSCallInfo::handleSessionTerminationEvent(this, a2);
  }
}

void IMSCallInfo::handleSessionTerminatedEvent(std::string *this, BambiCallSessionTerminatedEvent *a2)
{
  pthread_mutex_lock(&ctu::Singleton<IMSMetricsManager,IMSMetricsManager,ctu::PthreadMutexGuardPolicy<IMSMetricsManager>>::sInstance);
  v4 = off_1EE2BBBC0;
  if (!off_1EE2BBBC0)
  {
    IMSMetricsManager::create_default_global();
  }

  v5 = *(&off_1EE2BBBC0 + 1);
  if (*(&off_1EE2BBBC0 + 1))
  {
    atomic_fetch_add_explicit((*(&off_1EE2BBBC0 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<IMSMetricsManager,IMSMetricsManager,ctu::PthreadMutexGuardPolicy<IMSMetricsManager>>::sInstance);
  v6 = v4 + 240;
  for (i = *(v4 + 248); i != v6; i = *(i + 8))
  {
    (*(**(i + 16) + 80))(*(i + 16), a2);
  }

  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v16 = 0uLL;
  IPTelephonyManager::getCallManager(&v16);
  if ((this[25].__r_.__value_.__s.__data_[3] & 1) == 0)
  {
    v8 = v16;
    IMSCallInfo::uuid(v14, this);
    (*(*v8 + 216))(v8, v14, @"kCallStatusMediaInactive", this[3].__r_.__value_.__s.__data_[0], 0);
    v14[0] = &unk_1F5EBEE78;
    if (v15 < 0)
    {
      operator delete(v14[1]);
    }

    data = this[7].__r_.__value_.__l.__data_;
    v12 = this[6].__r_.__value_.__r.__words[2];
    v13 = data;
    if (data)
    {
      atomic_fetch_add_explicit(&data->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    IMSCallInfo::uuid(v10, this);
    (*(*v8 + 192))(v8, &v12, 0, v10);
    v10[0] = &unk_1F5EBEE78;
    if (v11 < 0)
    {
      operator delete(v10[1]);
    }

    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }

    IMSCallInfo::handleSessionTerminationEvent(this, a2);
  }

  if (*(&v16 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v16 + 1));
  }
}

void IMSCallInfo::handleMetricOnlyEvent(std::__shared_weak_count **this, BambiCallEvent *lpsrc)
{
  if ((*(lpsrc + 2) & 0xFFFFFFFE) == 0xE)
  {
    IMSCallInfo::sendSessionTerminationMetric(this, v3, 0);
    IPTelephonyManager::getCallManager(&v9);
    v4 = v9;
    v5 = this[5];
    v8[0] = this[4];
    if (!v5 || (v6 = std::__shared_weak_count::lock(v5), (v8[1] = v6) == 0))
    {
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v7 = v6;
    IMSCallManager::sendCallEndRequest(v4, v8, 0);
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }
  }
}

void sub_1E4D1C060(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(a1);
}

uint64_t IMSCallInfo::sendSessionTerminationMetric(IMSCallInfo *this, BambiCallSessionTerminationBaseEvent *a2, BOOL *a3)
{
  v6 = *(a2 + 3);
  if (v6)
  {
    v7 = *(a2 + 2);
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v8 = std::__shared_weak_count::lock(v6);
    if (!v8)
    {
      v7 = 0;
    }

    std::__shared_weak_count::__release_weak(v6);
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  if (*(a2 + 144) == 1 && (*(a2 + 145) & 1) == 0)
  {
    IMSCallInfo::stack(this, &v30);
    if (v30)
    {
      IMSCallInfo::stack(this, &v28);
      v13 = *(v28 + 248);
      v14 = *(v28 + 256);
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v15 = *(SipUserAgent::config(v13) + 456) != 1 || v7 == 0;
      if (v15 || *(v7 + 1529) != 1)
      {
        v9 = 0;
      }

      else
      {
        IMSCallInfo::stack(this, &v26);
        v16 = *(v26 + 248);
        v17 = *(v26 + 256);
        if (v17)
        {
          atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
          v18 = *(SipUserAgent::config(v16) + 912);
          std::__shared_weak_count::__release_shared[abi:ne200100](v17);
        }

        else
        {
          v18 = *(SipUserAgent::config(v16) + 912);
        }

        v9 = v18 ^ 1;
        if (v27)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v27);
        }
      }

      if (v14)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v14);
      }

      if (v29)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v29);
      }
    }

    else
    {
      v9 = 0;
    }

    if (v31)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v31);
    }
  }

  else
  {
    v9 = 0;
  }

  if (a3)
  {
    *a3 = v9 & 1;
  }

  if (v10)
  {
    v11 = v10;
    pthread_mutex_lock(&ctu::Singleton<IMSMetricsManager,IMSMetricsManager,ctu::PthreadMutexGuardPolicy<IMSMetricsManager>>::sInstance);
    v12 = off_1EE2BBBC0;
    if (!off_1EE2BBBC0)
    {
      IMSMetricsManager::create_default_global();
    }

    v19 = *(&off_1EE2BBBC0 + 1);
    if (*(&off_1EE2BBBC0 + 1))
    {
      atomic_fetch_add_explicit((*(&off_1EE2BBBC0 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&ctu::Singleton<IMSMetricsManager,IMSMetricsManager,ctu::PthreadMutexGuardPolicy<IMSMetricsManager>>::sInstance);
    v20 = v12 + 240;
    for (i = *(v12 + 248); i != v20; i = *(i + 8))
    {
      (*(**(i + 16) + 80))(*(i + 16), v11);
    }

    if (v19)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v19);
    }
  }

  pthread_mutex_lock(&ctu::Singleton<IMSMetricsManager,IMSMetricsManager,ctu::PthreadMutexGuardPolicy<IMSMetricsManager>>::sInstance);
  v22 = off_1EE2BBBC0;
  if (!off_1EE2BBBC0)
  {
    IMSMetricsManager::create_default_global();
  }

  v23 = *(&off_1EE2BBBC0 + 1);
  if (*(&off_1EE2BBBC0 + 1))
  {
    atomic_fetch_add_explicit((*(&off_1EE2BBBC0 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<IMSMetricsManager,IMSMetricsManager,ctu::PthreadMutexGuardPolicy<IMSMetricsManager>>::sInstance);
  v24 = IMSMetricsManager::logSessionTerminationEvent(v22, a2, *(this + 72), *(this + 72), v9 & 1);
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  return v24;
}

void sub_1E4D1C3C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IMSCallManager::sendCallEndRequest(uint64_t a1, uint64_t a2, char a3)
{
  memset(&v42, 0, sizeof(v42));
  IMSCallInfo::stack(*a2, &v39);
  if (*(v39 + 4455) < 0)
  {
    std::string::__init_copy_ctor_external(&v42, *(v39 + 554), *(v39 + 555));
  }

  else
  {
    v42 = *(v39 + 4432);
  }

  v6 = v40;
  if (v40)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v40);
  }

  v7 = *a2;
  v8 = *(*a2 + 160);
  v9 = *(*a2 + 168);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    v7 = *a2;
  }

  if (v8)
  {
    v11 = *(v7 + 20);
    v10 = *(v7 + 21);
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    goto LABEL_26;
  }

  v12 = *(v7 + 73);
  v13 = *(v7 + 74);
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v12)
  {
    v10 = 0;
    v11 = 0;
    goto LABEL_24;
  }

  v14 = *(*a2 + 584);
  v15 = *(*a2 + 592);
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v16 = *(v14 + 216);
  if (v16)
  {
    v11 = *(v14 + 208);
    atomic_fetch_add_explicit(&v16->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v10 = std::__shared_weak_count::lock(v16);
    if (!v10)
    {
      v11 = 0;
    }

    std::__shared_weak_count::__release_weak(v16);
    if (!v15)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v11 = 0;
    v10 = 0;
    if (!v15)
    {
      goto LABEL_24;
    }
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v15);
LABEL_24:
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

LABEL_26:
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  if (v11)
  {
    v17 = *(v11 + 1529);
    goto LABEL_38;
  }

  v18 = *a2;
  v19 = *(*a2 + 584);
  v20 = *(*a2 + 592);
  if (v20)
  {
    atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
    v18 = *a2;
  }

  if (!v19)
  {
    v17 = *(v18 + 605);
    if (!v20)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

  v21 = *(v18 + 73);
  v6 = *(v18 + 74);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    v17 = *(v21 + 1312);
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    if (!v20)
    {
      goto LABEL_38;
    }

LABEL_37:
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
    goto LABEL_38;
  }

  v17 = *(v21 + 1312);
  if (v20)
  {
    goto LABEL_37;
  }

LABEL_38:
  v22 = *a2;
  if ((*(*a2 + 608) | 4) == 4)
  {
    v23 = 0;
    if (!v10)
    {
      goto LABEL_41;
    }

    goto LABEL_40;
  }

  if (v11)
  {
    v25 = *(v11 + 552) != 0;
    if (a3)
    {
      goto LABEL_78;
    }
  }

  else
  {
    v25 = 0;
    if (a3)
    {
      goto LABEL_78;
    }
  }

  if ((v17 ^ 1))
  {
    goto LABEL_78;
  }

  v26 = *(v22 + 20);
  v27 = *(v22 + 21);
  if (v27)
  {
    atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!v26)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v27);
      goto LABEL_78;
    }

    v26 = *(*a2 + 160);
    v28 = *(*a2 + 168);
    if (v28)
    {
      v29 = 0;
      atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
      goto LABEL_58;
    }
  }

  else
  {
    if (!v26)
    {
      goto LABEL_78;
    }

    v28 = 0;
  }

  v29 = 1;
LABEL_58:
  if (*(v26 + 464))
  {
    isNR = 0;
  }

  else
  {
    IMSCallInfo::stack(*a2, &v39);
    isNR = ims::AccessNetwork::isNR((v39 + 3432));
    v6 = v40;
    if (v40)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v40);
    }
  }

  if ((v29 & 1) == 0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }

  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
    if (isNR)
    {
      goto LABEL_67;
    }

LABEL_78:
    IMSCallManager::sendCallStatusRequest(v6, &v42, 2, v17 & 1, v25);
    v23 = 1;
    goto LABEL_79;
  }

  if (!isNR)
  {
    goto LABEL_78;
  }

LABEL_67:
  std::string::basic_string[abi:ne200100]<0>(&v39, "call");
  v35[0] = 0;
  v38 = 0;
  v31 = ims::warn(&v39, v35);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v31 + 8), "Not sending call status request for END due to call setup failure on NR", 71);
  *(v31 + 17) = 0;
  v32 = (*(*v31 + 64))(v31, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v31 + 17) = 0;
  if (v38 == 1 && v37 < 0)
  {
    operator delete(__p);
  }

  if (v41 < 0)
  {
    operator delete(v39);
  }

  IMSCallManager::sendCallStatusRequest(v32, &v42, 4, v17 & 1, v25);
  v33 = *(a2 + 8);
  v34[0] = *a2;
  v34[1] = v33;
  if (v33)
  {
    atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  IMSCallManager::setEPSFallbackCall(a1, v34);
  if (v33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v33);
  }

  v23 = 0;
LABEL_79:
  *(*a2 + 608) = 4;
  if (v10)
  {
LABEL_40:
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

LABEL_41:
  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v42.__r_.__value_.__l.__data_);
  }

  return v23;
}

void sub_1E4D1C898(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if ((v35 & 1) == 0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  }

  if (v33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v33);
  }

  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v32);
  }

  if (a32 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void IMSCallManager::sendEmergencySessionRequiredNotification(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = std::string::basic_string[abi:ne200100]<0>(&v32, "call");
  v28[0] = 0;
  v31 = 0;
  v9 = ims::debug(v8, v28);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), "Sending Call Status Changed notification: emergency session required for callid: ", 81);
  *(v9 + 17) = 0;
  (*(*a2 + 16))(a2, v9);
  (*(*v9 + 64))(v9, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v9 + 17) = 0;
  if (v31 == 1 && v30 < 0)
  {
    operator delete(v29);
  }

  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  v26 = 0;
  v27 = 0;
  v24 = &unk_1F5EBEE78;
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    __p = *(a2 + 8);
  }

  IMSCallManager::callInfoForUuid(a1, &v24, &v26);
  v24 = &unk_1F5EBEE78;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v10 = v26;
  if (!v26)
  {
    goto LABEL_17;
  }

  IMSCallInfo::stack(v26, &v32);
  v11 = v32.__r_.__value_.__r.__words[0];
  if (v32.__r_.__value_.__l.__size_)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v32.__r_.__value_.__l.__size_);
  }

  if (v11)
  {
    memset(&v32, 0, sizeof(v32));
    IMSCallInfo::stack(v10, &v17);
    if (*(v17 + 4455) < 0)
    {
      std::string::__init_copy_ctor_external(&v32, *(v17 + 554), *(v17 + 555));
    }

    else
    {
      v32 = *(v17 + 4432);
    }

    if (v18)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v18);
    }

    v17 = 0;
    v18 = 0;
    v19 = 0;
    SipUri::asString(a3, 1, &v17);
    v15 = IMSClientManager::delegateForStack(&v32);
    if (*(a2 + 31) < 0)
    {
      std::string::__init_copy_ctor_external(&v16, *(a2 + 8), *(a2 + 16));
    }

    else
    {
      v16 = *(a2 + 8);
    }

    (*(*v15 + 24))(v15, &v16, &v17, a4);
    if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v16.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v19) < 0)
    {
      v14 = v17;
      goto LABEL_30;
    }
  }

  else
  {
LABEL_17:
    v12 = std::string::basic_string[abi:ne200100]<0>(&v32, "call");
    v20[0] = 0;
    v23 = 0;
    v13 = ims::error(v12, v20);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), "Unable to issue emergency redial request - unknown stack id", 59);
    *(v13 + 17) = 0;
    (*(*v13 + 64))(v13, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v13 + 17) = 0;
    if (v23 == 1 && v22 < 0)
    {
      v14 = v21;
LABEL_30:
      operator delete(v14);
    }
  }

  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }
}

void sub_1E4D1CC8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, std::__shared_weak_count *a39)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (*(v39 - 57) < 0)
  {
    operator delete(*(v39 - 80));
  }

  if (a39)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a39);
  }

  _Unwind_Resume(exception_object);
}

void IMSCallInfo::handleParticipantLeftConference(uint64_t a1, uint64_t a2, char a3)
{
  std::string::basic_string[abi:ne200100]<0>(&__p, "call");
  v37[0] = 0;
  v40 = 0;
  v6 = ims::debug(&__p, v37);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "handleParticipantLeftConferenceEvent", 36);
  *(v6 + 17) = 0;
  (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v6 + 17) = 0;
  if (v40 == 1 && v39 < 0)
  {
    operator delete(v38);
  }

  if (v30.__r_.__value_.__s.__data_[15] < 0)
  {
    operator delete(__p);
  }

  v35 = 0;
  v36 = 0;
  IPTelephonyManager::getCallManager(&v35);
  if ((a3 & 1) == 0)
  {
    __p = 65792;
    v31 = 0;
    memset(&v30, 0, sizeof(v30));
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v7 = *(*a2 + 1316);
    if (v7 > 9)
    {
      if (v7 == 20)
      {
        LODWORD(v31) = 1026;
        std::string::__assign_external(&v30, "ConferenceParticipantLeft:MediaTimeout", 0x26uLL);
        v12 = v35;
        IMSCallInfo::uuid(v24, a1);
        ims::CFString::asString(&v26, @"kCallDisconnectionReasonMediaTimeout", 0x8000100);
        IMSCallManager::sendCallDisconnectionNotification(v12, v24, &v26, &__p);
        if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v26.__r_.__value_.__l.__data_);
        }

        v24[0] = &unk_1F5EBEE78;
        if ((v25 & 0x80000000) == 0)
        {
          goto LABEL_28;
        }

        v11 = v24;
      }

      else
      {
        LODWORD(v31) = 1009;
        BYTE2(__p) = 0;
        std::string::__assign_external(&v30, "ConferenceParticipantLeft:NetworkError", 0x26uLL);
        v13 = v35;
        IMSCallInfo::uuid(v22, a1);
        ims::CFString::asString(&v26, @"kCallDisconnectionReasonNetworkError", 0x8000100);
        IMSCallManager::sendCallDisconnectionNotification(v13, v22, &v26, &__p);
        if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v26.__r_.__value_.__l.__data_);
        }

        v22[0] = &unk_1F5EBEE78;
        if ((v23 & 0x80000000) == 0)
        {
          goto LABEL_28;
        }

        v11 = v22;
      }
    }

    else
    {
      if (v7 == 1)
      {
        v8 = 1008;
      }

      else
      {
        v8 = 1003;
      }

      if (v7)
      {
        v9 = v8;
      }

      else
      {
        v9 = 1007;
      }

      LODWORD(v31) = v9;
      std::string::__assign_external(&v30, "ConferenceParticipantLeft:Normal", 0x20uLL);
      v10 = v35;
      IMSCallInfo::uuid(v27, a1);
      ims::CFString::asString(&v26, @"kCallDisconnectionReasonNormal", 0x8000100);
      IMSCallManager::sendCallDisconnectionNotification(v10, v27, &v26, &__p);
      if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v26.__r_.__value_.__l.__data_);
      }

      v27[0] = &unk_1F5EBEE78;
      if ((v28 & 0x80000000) == 0)
      {
        goto LABEL_28;
      }

      v11 = v27;
    }

    operator delete(v11[1]);
LABEL_28:
    if (SHIBYTE(v34) < 0)
    {
      operator delete(*(&v33 + 1));
    }

    if (SBYTE7(v33) < 0)
    {
      operator delete(v32);
    }

    if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v30.__r_.__value_.__l.__data_);
    }
  }

  pthread_mutex_lock(&ctu::Singleton<IMSMetricsManager,IMSMetricsManager,ctu::PthreadMutexGuardPolicy<IMSMetricsManager>>::sInstance);
  v14 = off_1EE2BBBC0;
  if (!off_1EE2BBBC0)
  {
    IMSMetricsManager::create_default_global();
  }

  v15 = *(&off_1EE2BBBC0 + 1);
  if (*(&off_1EE2BBBC0 + 1))
  {
    atomic_fetch_add_explicit((*(&off_1EE2BBBC0 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<IMSMetricsManager,IMSMetricsManager,ctu::PthreadMutexGuardPolicy<IMSMetricsManager>>::sInstance);
  v16 = v14 + 240;
  for (i = *(v14 + 248); i != v16; i = *(i + 8))
  {
    (*(**(i + 16) + 104))(*(i + 16), a1 + 80);
  }

  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  v18 = v35;
  v19 = *(a1 + 40);
  v20 = *(a1 + 32);
  if (!v19)
  {
    v21 = 0;
LABEL_51:
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v21 = std::__shared_weak_count::lock(v19);
  if (!v21)
  {
    goto LABEL_51;
  }

  (*(*v18 + 224))(v18, &v20);
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  if (v36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v36);
  }
}

void sub_1E4D1D200(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  if (a31 < 0)
  {
    operator delete(__p);
  }

  if (a18 < 0)
  {
    operator delete(a13);
  }

  ims::DisconnectInfo::~DisconnectInfo(&a39);
  v46 = *(v44 - 112);
  if (v46)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v46);
  }

  _Unwind_Resume(a1);
}

void IMSCallInfo::handleSessionActivatedEvent(IMSCallInfo *this, BambiCallEvent *a2)
{
  v4 = *(a2 + 3);
  if (v4)
  {
    v5 = *(a2 + 2);
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v6 = std::__shared_weak_count::lock(v4);
    if (!v6)
    {
      v5 = 0;
    }

    std::__shared_weak_count::__release_weak(v4);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  if (v5 == *(this + 20))
  {
    v9 = std::string::basic_string[abi:ne200100]<0>(&v40, "call");
    v32[0] = 0;
    v35 = 0;
    v10 = ims::debug(v9, v32);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "Call ", 5);
    *(v10 + 17) = 0;
    (*(*(this + 13) + 16))(this + 104, v10);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), " activated", 10);
    *(v10 + 17) = 0;
    (*(*v10 + 64))(v10, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v10 + 17) = 0;
    if (v35 == 1 && v34 < 0)
    {
      operator delete(__p);
    }

    if (v41 < 0)
    {
      operator delete(v40);
    }

    v11 = *(*(this + 20) + 408);
    if (v11 && SipSession::confirmed(v11))
    {
      v12 = std::string::basic_string[abi:ne200100]<0>(&v40, "call");
      v28[0] = 0;
      v31 = 0;
      v13 = ims::debug(v12, v28);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), "Sending kIMSCallStatusActive", 28);
      *(v13 + 17) = 0;
      (*(*v13 + 64))(v13, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v13 + 17) = 0;
      if (v31 == 1 && v30 < 0)
      {
        operator delete(v29);
      }

      if (v41 < 0)
      {
        operator delete(v40);
      }

      v26 = 0;
      v27 = 0;
      IPTelephonyManager::getCallManager(&v26);
      v14 = v26;
      IMSCallInfo::uuid(v24, this);
      (*(*v14 + 216))(v14, v24, @"kCallStatusActive", *(this + 72), a2);
      v24[0] = &unk_1F5EBEE78;
      if (v25 < 0)
      {
        operator delete(v24[1]);
      }

      pthread_mutex_lock(&ctu::Singleton<IMSMetricsManager,IMSMetricsManager,ctu::PthreadMutexGuardPolicy<IMSMetricsManager>>::sInstance);
      v15 = off_1EE2BBBC0;
      if (!off_1EE2BBBC0)
      {
        IMSMetricsManager::create_default_global();
      }

      v16 = *(&off_1EE2BBBC0 + 1);
      if (*(&off_1EE2BBBC0 + 1))
      {
        atomic_fetch_add_explicit((*(&off_1EE2BBBC0 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      pthread_mutex_unlock(&ctu::Singleton<IMSMetricsManager,IMSMetricsManager,ctu::PthreadMutexGuardPolicy<IMSMetricsManager>>::sInstance);
      v17 = v15 + 240;
      for (i = *(v15 + 248); i != v17; i = *(i + 8))
      {
        (*(**(i + 16) + 96))(*(i + 16), a2, @"kCallStatusActive");
      }

      if (v16)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v16);
      }

      v19 = *(this + 21);
      v22 = *(this + 20);
      v23 = v19;
      if (v19)
      {
        atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      IMSCallInfo::uuid(v20, this);
      (*(*v14 + 192))(v14, &v22, 1, v20);
      v20[0] = &unk_1F5EBEE78;
      if (v21 < 0)
      {
        operator delete(v20[1]);
      }

      if (v23)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v23);
      }

      if (v27)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v27);
      }
    }
  }

  else
  {
    v7 = std::string::basic_string[abi:ne200100]<0>(&v40, "call");
    v36[0] = 0;
    v39 = 0;
    v8 = ims::debug(v7, v36);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "IMSCallInfo::handleSessionActivatedEvent for an unknown call", 60);
    *(v8 + 17) = 0;
    (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v8 + 17) = 0;
    if (v39 == 1 && v38 < 0)
    {
      operator delete(v37);
    }

    if (v41 < 0)
    {
      operator delete(v40);
    }
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void sub_1E4D1D86C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, std::__shared_weak_count *a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, char a47)
{
  pthread_mutex_unlock(&ctu::Singleton<IMSMetricsManager,IMSMetricsManager,ctu::PthreadMutexGuardPolicy<IMSMetricsManager>>::sInstance);
  if (a27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a27);
  }

  if (v47)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v47);
  }

  _Unwind_Resume(a1);
}

void IMSCallInfo::handleSessionHoldFailedEvent(IMSCallInfo *this, BambiCallEvent *a2)
{
  v4 = *(a2 + 3);
  if (v4)
  {
    v5 = *(a2 + 2);
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v6 = std::__shared_weak_count::lock(v4);
    if (!v6)
    {
      v5 = 0;
    }

    std::__shared_weak_count::__release_weak(v4);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  if (v5 == *(this + 20))
  {
    v9 = std::string::basic_string[abi:ne200100]<0>(&v34, "call");
    v26[0] = 0;
    v29 = 0;
    v10 = ims::debug(v9, v26);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "Call ", 5);
    *(v10 + 17) = 0;
    (*(*(this + 13) + 16))(this + 104, v10);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), " hold failed!", 13);
    *(v10 + 17) = 0;
    (*(*v10 + 64))(v10, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v10 + 17) = 0;
    if (v29 == 1 && v28 < 0)
    {
      operator delete(__p);
    }

    if (v36 < 0)
    {
      operator delete(v34);
    }

    v11 = *(*(this + 20) + 408);
    if (v11 && SipSession::confirmed(v11))
    {
      v12 = std::string::basic_string[abi:ne200100]<0>(&v34, "call");
      v22[0] = 0;
      v25 = 0;
      v13 = ims::debug(v12, v22);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), "Sending kIMSCallStatusHoldFailed", 32);
      *(v13 + 17) = 0;
      (*(*v13 + 64))(v13, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v13 + 17) = 0;
      if (v25 == 1 && v24 < 0)
      {
        operator delete(v23);
      }

      if (v36 < 0)
      {
        operator delete(v34);
      }

      v34 = 0;
      v35 = 0;
      IPTelephonyManager::getCallManager(&v34);
      v14 = v34;
      IMSCallInfo::uuid(v20, this);
      (*(*v14 + 216))(v14, v20, @"kCallStatusHoldFailed", *(this + 72), a2);
      v20[0] = &unk_1F5EBEE78;
      if (v21 < 0)
      {
        operator delete(v20[1]);
      }

      v15 = *(this + 21);
      v18 = *(this + 20);
      v19 = v15;
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      IMSCallInfo::uuid(v16, this);
      (*(*v14 + 192))(v14, &v18, 1, v16);
      v16[0] = &unk_1F5EBEE78;
      if (v17 < 0)
      {
        operator delete(v16[1]);
      }

      if (v19)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v19);
      }

      if (v35)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v35);
      }
    }
  }

  else
  {
    v7 = std::string::basic_string[abi:ne200100]<0>(&v34, "call");
    v30[0] = 0;
    v33 = 0;
    v8 = ims::debug(v7, v30);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "IMSCallInfo::handleSessionHoldFailedEvent for an unknown call", 61);
    *(v8 + 17) = 0;
    (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v8 + 17) = 0;
    if (v33 == 1 && v32 < 0)
    {
      operator delete(v31);
    }

    if (v36 < 0)
    {
      operator delete(v34);
    }
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void sub_1E4D1DDD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, char a44)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  v47 = *(v45 - 64);
  if (v47)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v47);
  }

  if (v44)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v44);
  }

  _Unwind_Resume(exception_object);
}

void IMSCallInfo::handleSessionResumeFailedEvent(IMSCallInfo *this, BambiCallEvent *a2)
{
  v4 = *(a2 + 3);
  if (v4)
  {
    v5 = *(a2 + 2);
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v6 = std::__shared_weak_count::lock(v4);
    if (!v6)
    {
      v5 = 0;
    }

    std::__shared_weak_count::__release_weak(v4);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  if (v5 == *(this + 20))
  {
    v9 = std::string::basic_string[abi:ne200100]<0>(&v34, "call");
    v26[0] = 0;
    v29 = 0;
    v10 = ims::debug(v9, v26);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "Call ", 5);
    *(v10 + 17) = 0;
    (*(*(this + 13) + 16))(this + 104, v10);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), " resume failed!", 15);
    *(v10 + 17) = 0;
    (*(*v10 + 64))(v10, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v10 + 17) = 0;
    if (v29 == 1 && v28 < 0)
    {
      operator delete(__p);
    }

    if (v36 < 0)
    {
      operator delete(v34);
    }

    v11 = *(*(this + 20) + 408);
    if (v11 && SipSession::confirmed(v11))
    {
      v12 = std::string::basic_string[abi:ne200100]<0>(&v34, "call");
      v22[0] = 0;
      v25 = 0;
      v13 = ims::debug(v12, v22);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), "Sending kIMSCallStatusResumeFailed", 34);
      *(v13 + 17) = 0;
      (*(*v13 + 64))(v13, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v13 + 17) = 0;
      if (v25 == 1 && v24 < 0)
      {
        operator delete(v23);
      }

      if (v36 < 0)
      {
        operator delete(v34);
      }

      v34 = 0;
      v35 = 0;
      IPTelephonyManager::getCallManager(&v34);
      v14 = v34;
      IMSCallInfo::uuid(v20, this);
      (*(*v14 + 216))(v14, v20, @"kCallStatusResumeFailed", *(this + 72), a2);
      v20[0] = &unk_1F5EBEE78;
      if (v21 < 0)
      {
        operator delete(v20[1]);
      }

      v15 = *(this + 21);
      v18 = *(this + 20);
      v19 = v15;
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      IMSCallInfo::uuid(v16, this);
      (*(*v14 + 192))(v14, &v18, 0, v16);
      v16[0] = &unk_1F5EBEE78;
      if (v17 < 0)
      {
        operator delete(v16[1]);
      }

      if (v19)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v19);
      }

      if (v35)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v35);
      }
    }
  }

  else
  {
    v7 = std::string::basic_string[abi:ne200100]<0>(&v34, "call");
    v30[0] = 0;
    v33 = 0;
    v8 = ims::debug(v7, v30);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "IMSCallInfo::handleSessionResumeFailedEvent for an unknown call", 63);
    *(v8 + 17) = 0;
    (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v8 + 17) = 0;
    if (v33 == 1 && v32 < 0)
    {
      operator delete(v31);
    }

    if (v36 < 0)
    {
      operator delete(v34);
    }
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void sub_1E4D1E304(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, char a44)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  v47 = *(v45 - 64);
  if (v47)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v47);
  }

  if (v44)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v44);
  }

  _Unwind_Resume(exception_object);
}

void IMSCallInfo::handleSessionLocalHeldEvent(IMSCallInfo *this, BambiCallEvent *a2)
{
  v4 = *(a2 + 3);
  if (v4)
  {
    v5 = *(a2 + 2);
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v6 = std::__shared_weak_count::lock(v4);
    if (!v6)
    {
      v5 = 0;
    }

    std::__shared_weak_count::__release_weak(v4);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  if (v5 == *(this + 20))
  {
    pthread_mutex_lock(&ctu::Singleton<IMSMetricsManager,IMSMetricsManager,ctu::PthreadMutexGuardPolicy<IMSMetricsManager>>::sInstance);
    v9 = off_1EE2BBBC0;
    if (!off_1EE2BBBC0)
    {
      IMSMetricsManager::create_default_global();
    }

    v10 = *(&off_1EE2BBBC0 + 1);
    if (*(&off_1EE2BBBC0 + 1))
    {
      atomic_fetch_add_explicit((*(&off_1EE2BBBC0 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&ctu::Singleton<IMSMetricsManager,IMSMetricsManager,ctu::PthreadMutexGuardPolicy<IMSMetricsManager>>::sInstance);
    v11 = v9 + 240;
    for (i = *(v9 + 248); i != v11; i = *(i + 8))
    {
      (*(**(i + 16) + 96))(*(i + 16), a2, @"kCallStatusInactive");
    }

    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }

    v13 = std::string::basic_string[abi:ne200100]<0>(&v38, "call");
    v30[0] = 0;
    v33 = 0;
    v14 = ims::debug(v13, v30);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), "Call ", 5);
    *(v14 + 17) = 0;
    (*(*(this + 13) + 16))(this + 104, v14);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), " deactivated", 12);
    *(v14 + 17) = 0;
    (*(*v14 + 64))(v14, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v14 + 17) = 0;
    if (v33 == 1 && v32 < 0)
    {
      operator delete(__p);
    }

    if (v39 < 0)
    {
      operator delete(v38);
    }

    v15 = *(*(this + 20) + 408);
    if (v15 && SipSession::confirmed(v15))
    {
      v16 = std::string::basic_string[abi:ne200100]<0>(&v38, "call");
      v26[0] = 0;
      v29 = 0;
      v17 = ims::debug(v16, v26);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v17 + 8), "Sending kIMSCallStatusInactive", 30);
      *(v17 + 17) = 0;
      (*(*v17 + 64))(v17, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v17 + 17) = 0;
      if (v29 == 1 && v28 < 0)
      {
        operator delete(v27);
      }

      if (v39 < 0)
      {
        operator delete(v38);
      }

      v38 = 0uLL;
      IPTelephonyManager::getCallManager(&v38);
      v18 = v38;
      IMSCallInfo::uuid(v24, this);
      (*(*v18 + 216))(v18, v24, @"kCallStatusInactive", *(this + 72), a2);
      v24[0] = &unk_1F5EBEE78;
      if (v25 < 0)
      {
        operator delete(v24[1]);
      }

      v19 = *(this + 21);
      v22 = *(this + 20);
      v23 = v19;
      if (v19)
      {
        atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      IMSCallInfo::uuid(v20, this);
      (*(*v18 + 192))(v18, &v22, 0, v20);
      v20[0] = &unk_1F5EBEE78;
      if (v21 < 0)
      {
        operator delete(v20[1]);
      }

      if (v23)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v23);
      }

      if (*(&v38 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v38 + 1));
      }
    }
  }

  else
  {
    v7 = std::string::basic_string[abi:ne200100]<0>(&v38, "call");
    v34[0] = 0;
    v37 = 0;
    v8 = ims::debug(v7, v34);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "IMSCallInfo::handleSessionLocalHeldEvent for an unknown call", 60);
    *(v8 + 17) = 0;
    (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v8 + 17) = 0;
    if (v37 == 1 && v36 < 0)
    {
      operator delete(v35);
    }

    if (v39 < 0)
    {
      operator delete(v38);
    }
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void sub_1E4D1E904(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, char a45)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  v48 = *(v46 - 88);
  if (v48)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v48);
  }

  if (v45)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v45);
  }

  _Unwind_Resume(exception_object);
}

void IMSCallInfo::handleRingingEvent(std::__shared_weak_count **this, BambiCallProvisionalResponseEvent *a2)
{
  v4 = *(a2 + 3);
  if (v4)
  {
    v5 = *(a2 + 2);
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v6 = std::__shared_weak_count::lock(v4);
    if (!v6)
    {
      v5 = 0;
    }

    std::__shared_weak_count::__release_weak(v4);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  if (v5 == this[20])
  {
    IPTelephonyManager::getCallManager(&v20);
    v9 = v20;
    IMSCallInfo::uuid(v14, this);
    (*(*v9 + 216))(v9, v14, @"kCallStatusRinging", *(this + 72), a2);
    v14[0] = &unk_1F5EBEE78;
    if (v15 < 0)
    {
      operator delete(v14[1]);
    }

    if (v21)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v21);
    }

    pthread_mutex_lock(&ctu::Singleton<IMSMetricsManager,IMSMetricsManager,ctu::PthreadMutexGuardPolicy<IMSMetricsManager>>::sInstance);
    v10 = off_1EE2BBBC0;
    if (!off_1EE2BBBC0)
    {
      IMSMetricsManager::create_default_global();
    }

    v11 = *(&off_1EE2BBBC0 + 1);
    if (*(&off_1EE2BBBC0 + 1))
    {
      atomic_fetch_add_explicit((*(&off_1EE2BBBC0 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&ctu::Singleton<IMSMetricsManager,IMSMetricsManager,ctu::PthreadMutexGuardPolicy<IMSMetricsManager>>::sInstance);
    v12 = this[21];
    v13[0] = this[20];
    v13[1] = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    IMSMetricsManager::logRingingEvent(v10, v13, *(this + 72), *(this + 72));
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }

    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }
  }

  else
  {
    v7 = std::string::basic_string[abi:ne200100]<0>(&v20, "call");
    v16[0] = 0;
    v19 = 0;
    v8 = ims::debug(v7, v16);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "IMSCallInfo::handleRingingEvent for an unknown call", 51);
    *(v8 + 17) = 0;
    (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v8 + 17) = 0;
    if (v19 == 1 && v18 < 0)
    {
      operator delete(__p);
    }

    if (v22 < 0)
    {
      operator delete(v20);
    }
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void sub_1E4D1ECE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, char a28)
{
  pthread_mutex_unlock(&ctu::Singleton<IMSMetricsManager,IMSMetricsManager,ctu::PthreadMutexGuardPolicy<IMSMetricsManager>>::sInstance);
  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }

  _Unwind_Resume(a1);
}

void IMSCallInfo::handleLRBTEvent(IMSCallInfo *this, BambiCallEvent *a2, int a3)
{
  v6 = *(a2 + 3);
  if (v6)
  {
    v7 = *(a2 + 2);
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v8 = std::__shared_weak_count::lock(v6);
    if (!v8)
    {
      v7 = 0;
    }

    std::__shared_weak_count::__release_weak(v6);
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  if (v7 == *(this + 20))
  {
    IPTelephonyManager::getCallManager(&v19);
    v11 = v19;
    IMSCallInfo::uuid(v13, this);
    v12 = kIMSCallStatusPlayLRBT;
    if (!a3)
    {
      v12 = kIMSCallStatusStopLRBT;
    }

    (*(*v11 + 216))(v11, v13, *v12, *(this + 72), a2);
    v13[0] = &unk_1F5EBEE78;
    if (v14 < 0)
    {
      operator delete(v13[1]);
    }

    if (v20)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v20);
    }
  }

  else
  {
    v9 = std::string::basic_string[abi:ne200100]<0>(&v19, "call");
    v15[0] = 0;
    v18 = 0;
    v10 = ims::debug(v9, v15);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "IMSCallInfo::handleRingingEvent for an unknown call", 51);
    *(v10 + 17) = 0;
    (*(*v10 + 64))(v10, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v10 + 17) = 0;
    if (v18 == 1 && v17 < 0)
    {
      operator delete(__p);
    }

    if (v21 < 0)
    {
      operator delete(v19);
    }
  }

  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }
}

void sub_1E4D1EF98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, char a25)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  v28 = *(v26 - 64);
  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }

  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  _Unwind_Resume(exception_object);
}

void IMSCallInfo::handleTextMediaDetectedEvent(IMSCallInfo *this, BambiCallEvent *a2)
{
  v4 = *(a2 + 3);
  if (v4)
  {
    v5 = *(a2 + 2);
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v6 = std::__shared_weak_count::lock(v4);
    if (!v6)
    {
      v5 = 0;
    }

    std::__shared_weak_count::__release_weak(v4);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  if (v5 == *(this + 20))
  {
    IPTelephonyManager::getCallManager(&v16);
    v9 = v16;
    IMSCallInfo::uuid(v10, this);
    (*(*v9 + 216))(v9, v10, @"kIMSCallStatusTextMediaDetected", *(this + 72), a2);
    v10[0] = &unk_1F5EBEE78;
    if (v11 < 0)
    {
      operator delete(v10[1]);
    }

    if (v17)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v17);
    }
  }

  else
  {
    v7 = std::string::basic_string[abi:ne200100]<0>(&v16, "call");
    v12[0] = 0;
    v15 = 0;
    v8 = ims::debug(v7, v12);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "IMSCallInfo::handleTextMediaDetectedEvent for an unknown call", 61);
    *(v8 + 17) = 0;
    (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v8 + 17) = 0;
    if (v15 == 1 && v14 < 0)
    {
      operator delete(__p);
    }

    if (v18 < 0)
    {
      operator delete(v16);
    }
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void sub_1E4D1F200(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, char a25)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  v28 = *(v26 - 64);
  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }

  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  _Unwind_Resume(exception_object);
}

void IMSCallInfo::handleTextMediaDeactivatedEvent(IMSCallInfo *this, BambiCallEvent *a2)
{
  v4 = *(a2 + 3);
  if (v4)
  {
    v5 = *(a2 + 2);
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v6 = std::__shared_weak_count::lock(v4);
    if (!v6)
    {
      v5 = 0;
    }

    std::__shared_weak_count::__release_weak(v4);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  if (v5 == *(this + 20))
  {
    IPTelephonyManager::getCallManager(&v16);
    v9 = v16;
    IMSCallInfo::uuid(v10, this);
    (*(*v9 + 216))(v9, v10, @"kIMSCallStatusTextMediaDeactivated", *(this + 72), a2);
    v10[0] = &unk_1F5EBEE78;
    if (v11 < 0)
    {
      operator delete(v10[1]);
    }

    if (v17)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v17);
    }
  }

  else
  {
    v7 = std::string::basic_string[abi:ne200100]<0>(&v16, "call");
    v12[0] = 0;
    v15 = 0;
    v8 = ims::debug(v7, v12);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "IMSCallInfo::handleTextMediaDeactivatedEvent for an unknown call", 64);
    *(v8 + 17) = 0;
    (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v8 + 17) = 0;
    if (v15 == 1 && v14 < 0)
    {
      operator delete(__p);
    }

    if (v18 < 0)
    {
      operator delete(v16);
    }
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void sub_1E4D1F468(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, char a25)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  v28 = *(v26 - 64);
  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }

  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  _Unwind_Resume(exception_object);
}

void IMSCallInfo::handleSessionProgressEvent(IMSCallInfo *this, BambiCallProvisionalResponseEvent *a2)
{
  v4 = *(a2 + 3);
  if (v4)
  {
    v5 = *(a2 + 2);
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v6 = std::__shared_weak_count::lock(v4);
    if (!v6)
    {
      v5 = 0;
    }

    std::__shared_weak_count::__release_weak(v4);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  if (v5 == *(this + 20))
  {
    pthread_mutex_lock(&ctu::Singleton<IMSMetricsManager,IMSMetricsManager,ctu::PthreadMutexGuardPolicy<IMSMetricsManager>>::sInstance);
    v9 = off_1EE2BBBC0;
    if (!off_1EE2BBBC0)
    {
      IMSMetricsManager::create_default_global();
    }

    v10 = *(&off_1EE2BBBC0 + 1);
    if (*(&off_1EE2BBBC0 + 1))
    {
      atomic_fetch_add_explicit((*(&off_1EE2BBBC0 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&ctu::Singleton<IMSMetricsManager,IMSMetricsManager,ctu::PthreadMutexGuardPolicy<IMSMetricsManager>>::sInstance);
    v11 = *(a2 + 5);
    v17[0] = *(a2 + 4);
    v17[1] = v11;
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v12 = *(this + 21);
    v16[0] = *(this + 20);
    v16[1] = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    IMSMetricsManager::logSessionProgress(v9, v17, v16, *(this + 72));
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }

    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }

    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }

    IPTelephonyManager::getCallManager(&v22);
    v13 = v22;
    IMSCallInfo::uuid(v14, this);
    (*(*v13 + 216))(v13, v14, @"kCallStatusInProgress", *(this + 72), a2);
    v14[0] = &unk_1F5EBEE78;
    if (v15 < 0)
    {
      operator delete(v14[1]);
    }

    if (v23)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v23);
    }
  }

  else
  {
    v7 = std::string::basic_string[abi:ne200100]<0>(&v22, "call");
    v18[0] = 0;
    v21 = 0;
    v8 = ims::debug(v7, v18);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "IMSCallInfo::handleInProgressEvent for an unknown call", 54);
    *(v8 + 17) = 0;
    (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v8 + 17) = 0;
    if (v21 == 1 && v20 < 0)
    {
      operator delete(__p);
    }

    if (v24 < 0)
    {
      operator delete(v22);
    }
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void sub_1E4D1F7AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, char a30)
{
  pthread_mutex_unlock(&ctu::Singleton<IMSMetricsManager,IMSMetricsManager,ctu::PthreadMutexGuardPolicy<IMSMetricsManager>>::sInstance);
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  _Unwind_Resume(a1);
}

void IMSCallInfo::handleTryingEvent(IMSCallInfo *this, BambiCallEvent *a2)
{
  v4 = *(a2 + 3);
  if (v4)
  {
    v5 = *(a2 + 2);
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v6 = std::__shared_weak_count::lock(v4);
    if (!v6)
    {
      v5 = 0;
    }

    std::__shared_weak_count::__release_weak(v4);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  if (v5 == *(this + 20))
  {
    IPTelephonyManager::getCallManager(&v16);
    v9 = v16;
    IMSCallInfo::uuid(v10, this);
    (*(*v9 + 216))(v9, v10, @"kCallStatusTrying", *(this + 72), a2);
    v10[0] = &unk_1F5EBEE78;
    if (v11 < 0)
    {
      operator delete(v10[1]);
    }

    if (v17)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v17);
    }
  }

  else
  {
    v7 = std::string::basic_string[abi:ne200100]<0>(&v16, "call");
    v12[0] = 0;
    v15 = 0;
    v8 = ims::debug(v7, v12);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "IMSCallInfo::handleTryingEvent for an unknown call", 50);
    *(v8 + 17) = 0;
    (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v8 + 17) = 0;
    if (v15 == 1 && v14 < 0)
    {
      operator delete(__p);
    }

    if (v18 < 0)
    {
      operator delete(v16);
    }
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void sub_1E4D1FA68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, char a25)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  v28 = *(v26 - 64);
  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }

  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  _Unwind_Resume(exception_object);
}

void IMSCallInfo::handlePreconditionsSatisfiedEvent(IMSCallInfo *this, BambiCallPreconditionsSatisfiedEvent *a2)
{
  IPTelephonyManager::getCallManager(&v3);
  v2 = v4;
  if (v4)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void IMSCallInfo::handleUnprocessedEvent(IMSCallInfo *this, BambiCallEvent *a2)
{
  IPTelephonyManager::getCallManager(&v3);
  v2 = v4;
  if (v4)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void IMSCallInfo::logIncomingPrack(uint64_t a1, uint64_t *a2)
{
  pthread_mutex_lock(&ctu::Singleton<IMSMetricsManager,IMSMetricsManager,ctu::PthreadMutexGuardPolicy<IMSMetricsManager>>::sInstance);
  v4 = off_1EE2BBBC0;
  if (!off_1EE2BBBC0)
  {
    IMSMetricsManager::create_default_global();
  }

  v5 = *(&off_1EE2BBBC0 + 1);
  if (*(&off_1EE2BBBC0 + 1))
  {
    atomic_fetch_add_explicit((*(&off_1EE2BBBC0 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<IMSMetricsManager,IMSMetricsManager,ctu::PthreadMutexGuardPolicy<IMSMetricsManager>>::sInstance);
  v6 = *a2;
  v7 = a2[1];
  v10[0] = v6;
  v10[1] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = *(a1 + 168);
  v9[0] = *(a1 + 160);
  v9[1] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  IMSMetricsManager::logIncomingPrack(v4, v10, v9, *(a1 + 72));
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  if (v5)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

void IMSCallInfo::logPrackResponse(uint64_t a1, uint64_t *a2)
{
  pthread_mutex_lock(&ctu::Singleton<IMSMetricsManager,IMSMetricsManager,ctu::PthreadMutexGuardPolicy<IMSMetricsManager>>::sInstance);
  v4 = off_1EE2BBBC0;
  if (!off_1EE2BBBC0)
  {
    IMSMetricsManager::create_default_global();
  }

  v5 = *(&off_1EE2BBBC0 + 1);
  if (*(&off_1EE2BBBC0 + 1))
  {
    atomic_fetch_add_explicit((*(&off_1EE2BBBC0 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<IMSMetricsManager,IMSMetricsManager,ctu::PthreadMutexGuardPolicy<IMSMetricsManager>>::sInstance);
  v6 = *a2;
  v7 = a2[1];
  v10[0] = v6;
  v10[1] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = *(a1 + 168);
  v9[0] = *(a1 + 160);
  v9[1] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  IMSMetricsManager::logPrackResponse(v4, v10, v9, *(a1 + 72));
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  if (v5)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

void sub_1E4D20070(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (*(v26 - 41) < 0)
  {
    operator delete(*(v26 - 64));
  }

  if (a24 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x1E69235B0](v24, v25, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

uint64_t IMSCallInfo::isEmergency(IMSCallInfo *this)
{
  if (*(this + 600))
  {
    goto LABEL_4;
  }

  v2 = *(this + 20);
  if (!v2)
  {
    goto LABEL_11;
  }

  if (v2[69])
  {
LABEL_4:
    v3 = 1;
    return v3 & 1;
  }

  v4 = v2[48];
  if (!v4 || (v5 = std::__shared_weak_count::lock(v4)) == 0)
  {
LABEL_11:
    v3 = 0;
    return v3 & 1;
  }

  v6 = v5;
  if (v2[47])
  {
    v7 = *(this + 20);
    v8 = *(v7 + 384);
    if (v8 && (v9 = std::__shared_weak_count::lock(v8)) != 0)
    {
      v3 = *(*(v7 + 376) + 296);
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }

    else
    {
      v3 = MEMORY[0x128];
    }
  }

  else
  {
    v3 = 0;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  return v3 & 1;
}

void IMSCallManager::IMSCallManager(IMSCallManager *this)
{
  *this = &unk_1F5EC7088;
  *(this + 1) = &unk_1F5EF7C00;
  ims::SharedLoggable<IMSCallManager>::SharedLoggable(this + 2, "call.mgr");
  *this = &unk_1F5EC6BD8;
  *(this + 1) = &unk_1F5EC6CD0;
  *(this + 2) = &unk_1F5EC6E08;
  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 12) = 0;
  *(this + 10) = 0;
  *(this + 11) = this + 96;
  *(this + 15) = 0;
  *(this + 13) = 0;
  *(this + 14) = this + 120;
  *(this + 19) = 0;
  *(this + 20) = 0;
  *(this + 18) = 0;
  *(this + 16) = 0;
  *(this + 17) = this + 144;
  *(this + 21) = 0;
  *(this + 22) = 0;
  *(this + 23) = &unk_1F5EBEE78;
  *(this + 24) = 0;
  *(this + 25) = 0;
  *(this + 26) = 0;
  *(this + 27) = &unk_1F5EBEE78;
  *(this + 28) = 0;
  *(this + 62) = 0;
  *(this + 29) = 0;
  *(this + 30) = 0;
  *(this + 40) = 0;
  *(this + 18) = 0u;
  *(this + 19) = 0u;
  *(this + 16) = 0u;
  *(this + 17) = 0u;
}

void *ims::SharedLoggable<IMSCallManager>::SharedLoggable(void *a1, NSObject *a2)
{
  v5 = a2;
  ims::getQueue(&object);
  ctu::SharedLoggable<IMSCallManager,ctu::OsLogLogger>::SharedLoggable<char const(&)[22],char const*&>(a1 + 1, &object, "com.apple.ipTelephony", &v5);
  if (object)
  {
    dispatch_release(object);
  }

  *a1 = &unk_1F5EC70B8;
  return a1;
}

void sub_1E4D20384(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, dispatch_object_t object)
{
  if (object)
  {
    dispatch_release(object);
  }

  _Unwind_Resume(exception_object);
}

void IMSCallManager::~IMSCallManager(IMSCallManager *this)
{
  *this = &unk_1F5EC6BD8;
  *(this + 1) = &unk_1F5EC6CD0;
  *(this + 2) = &unk_1F5EC6E08;
  if (*(this + 327) < 0)
  {
    operator delete(*(this + 38));
  }

  if (*(this + 303) < 0)
  {
    operator delete(*(this + 35));
  }

  if (*(this + 279) < 0)
  {
    operator delete(*(this + 32));
  }

  *(this + 27) = &unk_1F5EBEE78;
  if (*(this + 247) < 0)
  {
    operator delete(*(this + 28));
  }

  *(this + 23) = &unk_1F5EBEE78;
  if (*(this + 215) < 0)
  {
    operator delete(*(this + 24));
  }

  v2 = *(this + 22);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(this + 21);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  std::__tree<std::__value_type<std::string,LazuliInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,LazuliInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,LazuliInfo>>>::destroy(this + 136, *(this + 18));
  std::__tree<std::__value_type<std::string,LazuliInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,LazuliInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,LazuliInfo>>>::destroy(this + 112, *(this + 15));
  std::__tree<std::__value_type<std::string,LazuliInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,LazuliInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,LazuliInfo>>>::destroy(this + 88, *(this + 12));
  v4 = (this + 64);
  std::vector<std::shared_ptr<IMSCallInfo>>::__destroy_vector::operator()[abi:ne200100](&v4);
  MEMORY[0x1E69225A0](this + 56);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(this + 3);
}

{
  IMSCallManager::~IMSCallManager(this);

  JUMPOUT(0x1E69235B0);
}

void non-virtual thunk toIMSCallManager::~IMSCallManager(IMSCallManager *this)
{
  IMSCallManager::~IMSCallManager((this - 8));
}

{
  IMSCallManager::~IMSCallManager((this - 16));
}

{
  IMSCallManager::~IMSCallManager((this - 8));

  JUMPOUT(0x1E69235B0);
}

{
  IMSCallManager::~IMSCallManager((this - 16));

  JUMPOUT(0x1E69235B0);
}

uint64_t IMSCallManager::dumpState(IMSCallManager *this, ImsOutStream *a2)
{
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "----- Active Lazuli Sessions (", 30);
  *(a2 + 17) = 0;
  MEMORY[0x1E6923370](*(a2 + 1), *(this + 13));
  *(a2 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), ") -----", 7);
  *(a2 + 17) = 0;
  (*(*a2 + 64))(a2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(a2 + 17) = 0;
  v4 = *(this + 11);
  if (v4 != (this + 96))
  {
    do
    {
      LazuliSession::logSession(*(v4 + 10), a2);
      v5 = *(v4 + 1);
      if (v5)
      {
        do
        {
          v6 = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        do
        {
          v6 = *(v4 + 2);
          v7 = *v6 == v4;
          v4 = v6;
        }

        while (!v7);
      }

      v4 = v6;
    }

    while (v6 != (this + 96));
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "----- Store-And-Forward Lazuli Sessions (", 41);
  *(a2 + 17) = 0;
  MEMORY[0x1E6923370](*(a2 + 1), *(this + 16));
  *(a2 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), ") -----", 7);
  *(a2 + 17) = 0;
  (*(*a2 + 64))(a2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(a2 + 17) = 0;
  v8 = *(this + 14);
  if (v8 != (this + 120))
  {
    do
    {
      LazuliSession::logSession(*(v8 + 10), a2);
      v9 = *(v8 + 1);
      if (v9)
      {
        do
        {
          v10 = v9;
          v9 = *v9;
        }

        while (v9);
      }

      else
      {
        do
        {
          v10 = *(v8 + 2);
          v7 = *v10 == v8;
          v8 = v10;
        }

        while (!v7);
      }

      v8 = v10;
    }

    while (v10 != (this + 120));
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "----- Group-Leave Lazuli Sessions (", 35);
  *(a2 + 17) = 0;
  MEMORY[0x1E6923370](*(a2 + 1), *(this + 19));
  *(a2 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), ") -----", 7);
  *(a2 + 17) = 0;
  result = (*(*a2 + 64))(a2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(a2 + 17) = 0;
  v12 = *(this + 17);
  v13 = this + 144;
  if (v12 != v13)
  {
    do
    {
      result = LazuliSession::logSession(*(v12 + 10), a2);
      v14 = *(v12 + 1);
      if (v14)
      {
        do
        {
          v15 = v14;
          v14 = *v14;
        }

        while (v14);
      }

      else
      {
        do
        {
          v15 = *(v12 + 2);
          v7 = *v15 == v12;
          v12 = v15;
        }

        while (!v7);
      }

      v12 = v15;
    }

    while (v15 != v13);
  }

  return result;
}

void IMSCallManager::delegateForIncomingCall(std::__shared_weak_count *a1, uint64_t *a2)
{
  memset(&v12[6], 0, 24);
  v4 = *a2;
  if (*a2)
  {
    v5 = *(v4 + 384);
    if (v5)
    {
      v6 = std::__shared_weak_count::lock(v5);
      if (v6)
      {
        v7 = *(v4 + 376);
        std::__shared_weak_count::__release_shared[abi:ne200100](v6);
        if (v7)
        {
          v8 = *a2;
          v9 = *(*a2 + 384);
          if (v9)
          {
            v10 = std::__shared_weak_count::lock(v9);
            if (v10)
            {
              v11 = *(v8 + 376);
            }

            else
            {
              v11 = 0;
            }
          }

          else
          {
            v11 = 0;
            v10 = 0;
          }

          if (*(v11 + 4455) < 0)
          {
            std::string::__init_copy_ctor_external(&v13, *(v11 + 4432), *(v11 + 4440));
          }

          else
          {
            v13 = *(v11 + 4432);
          }

          *&v12[6] = v13;
          *(&v13.__r_.__value_.__s + 23) = 0;
          v13.__r_.__value_.__s.__data_[0] = 0;
          if (v10)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v10);
          }
        }
      }
    }
  }

  v12[4] = 0;
  v12[5] = 0;
  ImsUuid::generate(v12);
  operator new();
}

void sub_1E4D20AD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::shared_ptr<IMSCallInfo>>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v7 = (v3 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      std::vector<bambi::XmlParserNamespace>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - *a1;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if (!(v10 >> 60))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v11 = 16 * v7;
    v12 = *a2;
    *(16 * v7) = *a2;
    if (*(&v12 + 1))
    {
      atomic_fetch_add_explicit((*(&v12 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v6 = (v11 + 16);
    v13 = *a1;
    v14 = *(a1 + 8) - *a1;
    v15 = v11 - v14;
    memcpy((v11 - v14), *a1, v14);
    *a1 = v15;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    v5 = *(a2 + 1);
    *v3 = *a2;
    v3[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    v6 = v3 + 2;
  }

  *(a1 + 8) = v6;
}

void IMSCallManager::getInfoForActiveCall(IMSCallManager *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = 65280;
  *(a2 + 16) = 0;
  v3 = a2 + 16;
  *(a2 + 8) = &unk_1F5EBEE78;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  v4 = *(this + 8);
  v5 = *(this + 9);
  if (v5 == v4)
  {
    return;
  }

  v7 = 0;
  v8 = 0;
  while (1)
  {
    v9 = *(v4 + v7);
    if (v9)
    {
      break;
    }

LABEL_7:
    ++v8;
    v7 += 16;
    if (v8 >= (v5 - v4) >> 4)
    {
      return;
    }
  }

  isActive = IMSCallInfo::isActive(v9);
  v4 = *(this + 8);
  v11 = *(v4 + v7);
  if ((isActive & 1) == 0 && (*(v11 + 604) & 1) == 0)
  {
    v5 = *(this + 9);
    goto LABEL_7;
  }

  v12 = *(v4 + v7 + 8);
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v11)
  {
    IMSCallInfo::uuid(v13, v11);
    if (*(a2 + 39) < 0)
    {
      operator delete(*v3);
    }

    *v3 = *&v13[8];
    *(v3 + 16) = v14;
    *(a2 + 1) = *(v11 + 72);
    *a2 = IMSCallInfo::isEmergency(v11);
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }
}