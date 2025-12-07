void sub_1E4E09C38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (*(v16 - 201) < 0)
  {
    operator delete(*(v16 - 224));
  }

  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](a15);
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  _Unwind_Resume(a1);
}

void SipSession::sendLazuliInvite(uint64_t a1@<X0>, uint64_t a2@<X1>, ImsResult *a3@<X8>)
{
  v63 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 1200);
  if (!v5)
  {
    v8 = 0;
LABEL_20:
    memset(&v60[8], 0, 64);
    *&v59 = &unk_1F5EBDEF8;
    *(&v59 + 1) = &_bambiDomain;
    *v60 = 1073741826;
    v19 = ImsResult::operator<<<char [46]>(&v59, "can't send an INVITE without a lazuli session");
    v20 = ImsLogContainer::logResult(a1, v19);
    ImsResult::ImsResult(a3, v20);
    goto LABEL_21;
  }

  v7 = std::__shared_weak_count::lock(v5);
  v8 = v7;
  if (!v7 || !*(a1 + 1192))
  {
    goto LABEL_20;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  v9 = *(a2 + 23);
  if ((v9 & 0x80u) != 0)
  {
    v9 = *(a2 + 8);
  }

  if (!v9)
  {
    memset(&v60[8], 0, 64);
    *&v59 = &unk_1F5EBDEF8;
    *(&v59 + 1) = &_bambiDomain;
    *v60 = 1073741825;
    v21 = ImsResult::operator<<<char [29]>(&v59, "sendInvite: empty inviteType");
    v22 = ImsLogContainer::logResult(a1, v21);
    ImsResult::ImsResult(a3, v22);
    ImsResult::~ImsResult(&v59);
    return;
  }

  v10 = *(a1 + 240);
  v11 = *(v10 + 232);
  if (!v11)
  {
    v8 = 0;
LABEL_26:
    memset(&v60[8], 0, 64);
    *&v59 = &unk_1F5EBDEF8;
    *(&v59 + 1) = &_bambiDomain;
    *v60 = 1073741826;
    v23 = ImsResult::operator<<<char [12]>(&v59, "no sipstack");
    ImsResult::ImsResult(a3, v23);
LABEL_21:
    ImsResult::~ImsResult(&v59);
    if (!v8)
    {
      return;
    }

    goto LABEL_22;
  }

  v8 = std::__shared_weak_count::lock(v11);
  if (!v8)
  {
    goto LABEL_26;
  }

  v12 = *(v10 + 224);
  if (!v12)
  {
    goto LABEL_26;
  }

  v14 = *(v12 + 248);
  v13 = *(v12 + 256);
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v14)
  {
    v57 = 0;
    v58 = 0;
    SipDialog::createRequestInDialog(*(a1 + 240), &v57);
    v15 = *(a1 + 1231);
    if (v15 < 0)
    {
      v15 = *(a1 + 1216);
    }

    if (v15)
    {
      v16 = SipMessage::header<SipSubjectHeader>(v57, 1);
      std::string::operator=((v16 + 8), (a1 + 1208));
    }

    v17 = *(a1 + 240);
    if (*(v17 + 2647) < 0)
    {
      std::string::__init_copy_ctor_external(&v59, *(v17 + 2624), *(v17 + 2632));
    }

    else
    {
      v18 = (v17 + 2624);
      v59 = *v18;
      *v60 = *(v18 + 2);
    }

    if ((v60[7] & 0x80000000) != 0)
    {
      v25 = *(&v59 + 1);
      operator delete(v59);
      if (!v25)
      {
        goto LABEL_38;
      }
    }

    else if (!v60[7])
    {
      goto LABEL_38;
    }

    v26 = v57;
    v27 = *(a1 + 240);
    if (*(v27 + 2647) < 0)
    {
      std::string::__init_copy_ctor_external(&v59, *(v27 + 2624), *(v27 + 2632));
    }

    else
    {
      v28 = (v27 + 2624);
      v59 = *v28;
      *v60 = *(v28 + 2);
    }

    SipMessage::addHeader(v26, "MLS-Opaque-Token", &v59, 0);
    if ((v60[7] & 0x80000000) != 0)
    {
      operator delete(v59);
    }

LABEL_38:
    v29 = *(a2 + 23);
    v30 = v29;
    if ((v29 & 0x80u) != 0)
    {
      v29 = *(a2 + 8);
    }

    if (v29 != 11 || (v30 >= 0 ? (v31 = a2) : (v31 = *a2), (v32 = *v31, v33 = *(v31 + 3), v32 == 0x766E497974706D45) ? (v34 = v33 == 0x657469766E497974) : (v34 = 0), !v34))
    {
      memset(&v56, 0, sizeof(v56));
      SipSessionInterface::stack(&v59, a1);
      v35 = SipStack::prefs(v59);
      if (ImsPrefs::CarrierBased(v35))
      {
        v36 = *(a1 + 1399);
        if (v36 < 0)
        {
          v36 = *(a1 + 1384);
        }

        if (*(&v59 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v59 + 1));
        }

        if (v36)
        {
          std::string::operator=(&v56, (a1 + 1376));
          std::string::append(&v56, "Content-Type: text/plain;charset=UTF-8\n", 0x27uLL);
          std::string::append(&v56, "Content-Length: 0\n", 0x12uLL);
        }
      }

      else if (*(&v59 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v59 + 1));
      }

      memset(v60, 0, sizeof(v60));
      v59 = 0u;
      v37 = v58;
      v55[0] = v57;
      v55[1] = v58;
      if (v58)
      {
        atomic_fetch_add_explicit(&v58->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      SipSession::addBodyToInvite(&v59, a1, v55, a2, &v56);
      if (v37)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v37);
      }

      if ((*(**(&v59 + 1) + 24))(*(&v59 + 1), *v60))
      {
        v38 = ImsLogContainer::logResult(a1, &v59);
        ImsResult::ImsResult(a3, v38);
        ImsResult::~ImsResult(&v59);
        if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v56.__r_.__value_.__l.__data_);
        }

LABEL_97:
        if (v58)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v58);
        }

        goto LABEL_99;
      }

      ImsResult::~ImsResult(&v59);
      if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v56.__r_.__value_.__l.__data_);
      }
    }

    memset(v60, 0, sizeof(v60));
    v59 = 0u;
    v39 = v58;
    v54[0] = v57;
    v54[1] = v58;
    if (v58)
    {
      atomic_fetch_add_explicit(&v58->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    SipSession::sendInvite(&v59, a1, v54, a2);
    if (v39)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v39);
    }

    *(a1 + 1456) = std::chrono::steady_clock::now();
    IPTelephonyManager::getBambiClient(&v52);
    *&v56.__r_.__value_.__l.__data_ = 0uLL;
    v40 = BambiClient::callCountExcludingCall(v52, &v56);
    v41 = SipUserAgent::config(v14);
    v42 = 24;
    if (v40 > 1)
    {
      v42 = 28;
    }

    v43 = *(v41 + v42);
    if (v53)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v53);
    }

    std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v56, (a1 + 152));
    size = v56.__r_.__value_.__l.__size_;
    if (v56.__r_.__value_.__l.__size_)
    {
      atomic_fetch_add_explicit((v56.__r_.__value_.__l.__size_ + 16), 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](size);
      atomic_fetch_add_explicit(&size->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    if (v43)
    {
      v45 = *(a2 + 23);
      v46 = v45;
      if ((v45 & 0x80u) != 0)
      {
        v45 = *(a2 + 8);
      }

      if (v45 == 10)
      {
        v47 = v46 >= 0 ? a2 : *a2;
        v48 = *v47;
        v49 = *(v47 + 8);
        if (v48 == 0x69766E49646C6F48 && v49 == 25972)
        {
          if (size)
          {
            atomic_fetch_add_explicit(&size->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          }

          v62 = 0;
          operator new();
        }
      }

      if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "ResumeInvite"))
      {
        if (size)
        {
          atomic_fetch_add_explicit(&size->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        }

        v61 = 0;
        operator new();
      }
    }

    v51 = ImsLogContainer::logResult(a1, &v59);
    ImsResult::ImsResult(a3, v51);
    if (size)
    {
      std::__shared_weak_count::__release_weak(size);
      std::__shared_weak_count::__release_weak(size);
    }

    ImsResult::~ImsResult(&v59);
    goto LABEL_97;
  }

  memset(&v60[8], 0, 64);
  *&v59 = &unk_1F5EBDEF8;
  *(&v59 + 1) = &_bambiDomain;
  *v60 = 1073741826;
  v24 = ImsResult::operator<<<char [14]>(&v59, "no user agent");
  ImsResult::ImsResult(a3, v24);
  ImsResult::~ImsResult(&v59);
LABEL_99:
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

LABEL_22:
  std::__shared_weak_count::__release_shared[abi:ne200100](v8);
}

void sub_1E4E0A610(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, std::__shared_weak_count *a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  std::__function::__value_func<void ()(std::string &)>::~__value_func[abi:ne200100](v32 - 136);
  if (v31)
  {
    std::__shared_weak_count::__release_weak(v31);
    std::__shared_weak_count::__release_weak(v31);
  }

  ImsResult::~ImsResult(&__p);
  if (a23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a23);
  }

  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  _Unwind_Resume(a1);
}

void SipSession::startLocalQosTimerMO(SipSession *this)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = *(this + 30);
  if (*(v2 + 2960) != 1)
  {
    v4 = 0;
LABEL_8:
    v6 = (*(*this + 64))(this);
    (*(*this + 16))(this, v6);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "No fork for MO call to set QoS!", 31);
    *(v6 + 17) = 0;
    (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    goto LABEL_9;
  }

  v3 = *(v2 + 2944);
  v5 = *(v3 + 56);
  v4 = *(v3 + 64);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v5)
  {
    goto LABEL_8;
  }

  if ((*(*this + 304))(this, v5 + 264))
  {
    v6 = (*(*this + 64))(this);
    (*(*this + 16))(this, v6);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "local QoS is already established. Don't need to start QoS timer.", 64);
    *(v6 + 17) = 0;
    (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
LABEL_9:
    *(v6 + 17) = 0;
    goto LABEL_10;
  }

  {
    v6 = (*(*this + 64))(this);
    (*(*this + 16))(this, v6);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "local QoS is already active", 27);
    *(v6 + 17) = 0;
    (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    goto LABEL_9;
  }

  v7 = *(this + 30);
  v8 = *(v7 + 232);
  if (v8)
  {
    v9 = std::__shared_weak_count::lock(v8);
    if (v9)
    {
      v10 = *(v7 + 224);
      if (v10)
      {
        v11 = *(v10 + 248);
        v12 = *(v10 + 256);
        if (v12)
        {
          atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v11)
        {
          v13 = *(SipUserAgent::config(v11) + 16);
          std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&__p, this + 19);
          v14 = v20;
          if (v20)
          {
            atomic_fetch_add_explicit(&v20->__shared_weak_owners_, 1uLL, memory_order_relaxed);
            std::__shared_weak_count::__release_shared[abi:ne200100](v14);
            atomic_fetch_add_explicit(&v14->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          }

          if (v13 && SipPreconditions::preconditionsEnabled(*(this + 192), (v5 + 264)))
          {
            if (v14)
            {
              atomic_fetch_add_explicit(&v14->__shared_weak_owners_, 1uLL, memory_order_relaxed);
            }

            v22 = 0;
            operator new();
          }

          if (v14)
          {
            std::__shared_weak_count::__release_weak(v14);
            std::__shared_weak_count::__release_weak(v14);
          }
        }

        else
        {
          v16 = *(this + 23);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            (*(*(this + 18) + 16))(&__p, this + 144);
            v18 = v21 >= 0 ? &__p : __p;
            *buf = 141558275;
            v24 = 1752392040;
            v25 = 2081;
            v26 = v18;
            _os_log_error_impl(&dword_1E4C3F000, v16, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno user agent", buf, 0x16u);
            if (v21 < 0)
            {
              operator delete(__p);
            }
          }
        }

        if (v12)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v12);
        }

LABEL_37:
        std::__shared_weak_count::__release_shared[abi:ne200100](v9);
        goto LABEL_10;
      }
    }
  }

  else
  {
    v9 = 0;
  }

  v15 = *(this + 23);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    (*(*(this + 18) + 16))(&__p, this + 144);
    v17 = v21 >= 0 ? &__p : __p;
    *buf = 141558275;
    v24 = 1752392040;
    v25 = 2081;
    v26 = v17;
    _os_log_error_impl(&dword_1E4C3F000, v15, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno sipstack", buf, 0x16u);
    if (v21 < 0)
    {
      operator delete(__p);
    }
  }

  if (v9)
  {
    goto LABEL_37;
  }

LABEL_10:
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void sub_1E4E0AD08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::__function::__value_func<void ()(std::string &)>::~__value_func[abi:ne200100](va);
  if (v12)
  {
    std::__shared_weak_count::__release_weak(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  _Unwind_Resume(a1);
}

uint64_t ImsResult::operator<<<char [45]>(uint64_t a1, char *__s)
{
  v4 = *(a1 + 24);
  if (!v4)
  {
    operator new();
  }

  v5 = strlen(__s);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), __s, v5);
  *(v4 + 17) = 0;
  return a1;
}

uint64_t ImsResult::operator<<<char [65]>(uint64_t a1, char *__s)
{
  v4 = *(a1 + 24);
  if (!v4)
  {
    operator new();
  }

  v5 = strlen(__s);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), __s, v5);
  *(v4 + 17) = 0;
  return a1;
}

BOOL SipOfferAnswer::remoteAnswerPending(SipOfferAnswer *this)
{
  v1 = *(this + 27);
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    v4 = SipOfferAnswerExchange::remoteAnswerPending(v2);
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    return v4;
  }

  else
  {

    return SipOfferAnswerExchange::remoteAnswerPending(v2);
  }
}

uint64_t ImsResult::operator<<<char [52]>(uint64_t a1, char *__s)
{
  v4 = *(a1 + 24);
  if (!v4)
  {
    operator new();
  }

  v5 = strlen(__s);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), __s, v5);
  *(v4 + 17) = 0;
  return a1;
}

BOOL SipOfferAnswer::localAnswerPending(SipOfferAnswer *this, std::__shared_weak_count *a2)
{
  if (a2)
  {
    atomic_fetch_add_explicit(&a2->__shared_owners_, 1uLL, memory_order_relaxed);
    v4 = SipOfferAnswerExchange::localAnswerPending(this);
    std::__shared_weak_count::__release_shared[abi:ne200100](a2);
    return v4;
  }

  else
  {

    return SipOfferAnswerExchange::localAnswerPending(this);
  }
}

const void **SipMessage::header<SipPEarlyMediaHeader>(SipMessage *a1)
{
  result = SipMessage::headerWithName(a1, "P-Early-Media", 1);
  if (result)
  {
  }

  return result;
}

void ctu::SharedSynchronizable<SipSessionInterface>::execute(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (!v3 || (v5 = *a1, (v6 = std::__shared_weak_count::lock(v3)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  v8 = a1[2];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 1174405120;
  block[2] = ___ZNK3ctu20SharedSynchronizableI19SipSessionInterfaceE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &unk_1F5ED2980;
  block[5] = v5;
  v10 = v7;
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  block[4] = a2;
  dispatch_async(v8, block);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v7);
}

void ___ZN10SipSession10sendInviteENSt3__110shared_ptrI10SipRequestEERKNS0_12basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = (*(*v1 + 64))(v1);
  (*(*v1 + 16))(v1, v2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v2 + 8), "Faking local QoS notification for MO Call", 41);
  *(v2 + 17) = 0;
  (*(*v2 + 64))(v2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v2 + 17) = 0;
  v3 = 0;
  v5 = 0;
  v6 = 0;
  __p = 0;
  std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short const*,unsigned short const*>(&__p, &v3, &__p, 1);
  SipSession::handleQualityOfServiceEstablished(v1, 0xFFFFFFFFLL, 1, &__p, 1);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }
}

void sub_1E4E0B290(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SipSession::handleQualityOfServiceEstablished(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int16 **a4, uint64_t a5)
{
  v5 = a5;
  *(a1 + 1584) = a3;
  v10 = *(a1 + 1536);
  v11 = *(v10 + 96);
  v12 = *(v10 + 112);
  if (v11)
  {
    v13 = v12 == 5;
  }

  else
  {
    v13 = 0;
  }

  if (!v13)
  {
    if (v11)
    {
      v14 = 0;
    }

    else
    {
      v14 = v12 == 5;
    }

    if (!v14)
    {
      goto LABEL_13;
    }

LABEL_10:
    if (a3)
    {
      SipSession::handleLocalQoSEstablished(a1);
    }

    else
    {
      SipSession::handleRemoteQoSEstablished(a1, a2, 0, a4, v5);
    }

    v15 = *(a1 + 240);
    v16 = &__block_literal_global_2;
    goto LABEL_17;
  }

  if (SipPreconditions::preconditionsActiveInAnyFork(v10))
  {
    goto LABEL_10;
  }

LABEL_13:
  SipSession::updateBearerForPorts(a1, a2, a3, a4, v5);
  if (!SipSession::requireQosBeforeRinging(a1))
  {
    goto LABEL_18;
  }

  v15 = *(a1 + 240);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 0x40000000;
  v17[2] = ___ZN10SipSession33handleQualityOfServiceEstablishedEjbRKNSt3__16vectorItNS0_9allocatorItEEEEb_block_invoke_2;
  v17[3] = &__block_descriptor_tmp_371;
  v17[4] = a1;
  v16 = v17;
LABEL_17:
  SipDialog::performBlockOnForks(v15, v16);
LABEL_18:
  if (a3)
  {
    *(a1 + 1544) = a2;
    if ((a1 + 1552) != a4)
    {
      std::vector<unsigned short>::__assign_with_size[abi:ne200100]<unsigned short *,unsigned short *>((a1 + 1552), *a4, a4[1], a4[1] - *a4);
    }

    *(a1 + 1576) = 1;
    *(a1 + 1548) = 2;
  }
}

uint64_t SipTypedStateMachine<SipSessionState>::currentState@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 64);
  *a2 = *(result + 56);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void SipSession::sendRingingNotification(SipSession *this@<X0>, ImsResult *a2@<X8>)
{
  v31 = *MEMORY[0x1E69E9840];
  if (SipSession::confirmed(this))
  {
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v24 = &unk_1F5EBDEF8;
    v25 = &_bambiDomain;
    v26 = 1073741826;
    v4 = ImsResult::operator<<<char [53]>(&v24, "sendRingingNotification called on a confirmed dialog");
    v5 = ImsLogContainer::logResult(this, v4);
    ImsResult::ImsResult(a2, v5);
LABEL_30:
    ImsResult::~ImsResult(&v24);
    return;
  }

  if (*(*(this + 30) + 2816) == 1)
  {
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v24 = &unk_1F5EBDEF8;
    v25 = &_bambiDomain;
    v26 = 1073741825;
    v6 = ImsResult::operator<<<char [46]>(&v24, "sendRingingNotification called on a MO dialog");
    v7 = ImsLogContainer::logResult(this, v6);
    ImsResult::ImsResult(a2, v7);
    goto LABEL_30;
  }

  if ((*(this + 1496) & 1) == 0)
  {
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v24 = &unk_1F5EBDEF8;
    v25 = &_bambiDomain;
    v26 = 1073741826;
    operator new();
  }

  v22 = 0;
  v23 = 0;
  SipSession::serverInviteTransaction(this, &v22);
  v8 = v22;
  if (v22)
  {
    if ((*(*(this + 30) + 2816) & 1) == 0)
    {
      SipTimerContainer::cancelTimer((this + 264), "WaitForRingingTimer");
      std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v24, this + 19);
      v9 = v25;
      if (v25)
      {
        atomic_fetch_add_explicit(v25 + 2, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:ne200100](v9);
        atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v10 = *(this + 30);
      v11 = *(v10 + 232);
      if (v11)
      {
        v12 = std::__shared_weak_count::lock(v11);
        if (v12)
        {
          v13 = v12;
          v14 = *(v10 + 224);
          if (v14)
          {
            v16 = *(v14 + 248);
            v15 = *(v14 + 256);
            if (v15)
            {
              atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            if (v16 && *SipUserAgent::config(v16) && !std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>>>::find<std::string>(this + 34, "RingingTimer"))
            {
              v17 = (*(*this + 64))(this);
              (*(*this + 16))(this, v17);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v17 + 8), "starting ringing timer", 22);
              *(v17 + 17) = 0;
              (*(*v17 + 64))(v17, std::endl[abi:ne200100]<char,std::char_traits<char>>);
              *(v17 + 17) = 0;
              if (v9)
              {
                atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
              }

              *&v27 = 0;
              operator new();
            }

            if (v15)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v15);
            }
          }

          std::__shared_weak_count::__release_shared[abi:ne200100](v13);
        }
      }

      if (v9)
      {
        std::__shared_weak_count::__release_weak(v9);
        std::__shared_weak_count::__release_weak(v9);
      }
    }

    v21[0] = 0;
    v21[1] = 0;
    v18 = *(v8 + 272);
    if (v18)
    {
      atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
    }

    SipResponse::create(180, v21);
  }

  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v24 = &unk_1F5EBDEF8;
  v25 = &_bambiDomain;
  v26 = 1073741826;
  v19 = ImsResult::operator<<<char [54]>(&v24, "sendRingingNotification: no server INVITE transaction");
  v20 = ImsLogContainer::logResult(this, v19);
  ImsResult::ImsResult(a2, v20);
  ImsResult::~ImsResult(&v24);
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }
}

void sub_1E4E0BB20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20, ...)
{
  va_start(va, a20);
  std::__function::__value_func<void ()(std::string &)>::~__value_func[abi:ne200100](va);
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  if (v20)
  {
    std::__shared_weak_count::__release_weak(v20);
    std::__shared_weak_count::__release_weak(v20);
  }

  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a20);
  }

  _Unwind_Resume(a1);
}

void SipSession::sendResponseToInviteOrUpdateRequest(ImsResult *a1, SipSession *a2, SipResponse **a3, void *a4)
{
  v8 = *(*a4 + 264);
  v9 = *(*a4 + 272);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = SipMessage::header<SipFromHeader>(v8);
  if (v10)
  {
    v11 = SipUriHeader::tag(v10);
    if (!v9)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v11 = &ims::kEmptyString;
  if (v9)
  {
LABEL_5:
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

LABEL_6:
  v12 = *(a2 + 30);
  v13 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(v12 + 2944, v11);
  if (v12 + 2952 == v13)
  {
    v14 = 0;
    v15 = 0;
  }

  else
  {
    v15 = *(v13 + 56);
    v14 = *(v13 + 64);
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  v16 = *(*a4 + 264);
  v17 = *(*a4 + 272);
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v18 = (*(*v16 + 120))(v16);
  v19 = *(v18 + 23);
  v20 = v19;
  if ((v19 & 0x80u) != 0)
  {
    v19 = *(v18 + 8);
  }

  if (v19 != 6)
  {
    v117 = 0;
    if (!v17)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  if (v20 >= 0)
  {
    v21 = v18;
  }

  else
  {
    v21 = *v18;
  }

  v22 = *v21;
  v23 = *(v21 + 4);
  v24 = v22 == *"INVITE" && v23 == *"TE";
  v25 = v24;
  v117 = v25;
  if (v17)
  {
LABEL_29:
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

LABEL_30:
  if (v15)
  {
    v26 = *(*a4 + 264);
    v27 = *(*a4 + 272);
    if (v27)
    {
      atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "100rel");
    v28 = SipMessage::supportsOption(v26, __p);
    if (SHIBYTE(v128[0]) < 0)
    {
      operator delete(__p[0]);
    }

    if (v27)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v27);
    }

    v29 = *(*a3 + 32);
    v30 = (v29 - 200) < 0xFFFFFF9C || v28;
    v31 = (v29 - 200) <= 0x63 || v29 == 183;
    if (!v31 || !v30)
    {
      goto LABEL_81;
    }

    v32 = SipMessage::body<SipSdpBody>(*a3);
    if (v32)
    {
      v33 = *(v32 + 1);
      v34 = *(v32 + 2);
      if (v34)
      {
        atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v33)
      {
        v35 = 0;
LABEL_61:
        if (v34)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v34);
        }

        if (v35)
        {
          v40 = (*(*a2 + 64))(a2);
          (*(*a2 + 16))(a2, v40);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v40 + 8), "adding SDP ", 11);
          *(v40 + 17) = 0;
          v41 = *(v15 + 768);
          v42 = *(v15 + 776);
          if (v42)
          {
            atomic_fetch_add_explicit(&v42->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v43 = SipOfferAnswer::localAnswerPending(*(*(v41 + 216) + 16), *(*(v41 + 216) + 24));
          if (v43)
          {
            v44 = "answer";
          }

          else
          {
            v44 = "offer";
          }

          if (v43)
          {
            v45 = 6;
          }

          else
          {
            v45 = 5;
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v40 + 8), v44, v45);
          *(v40 + 17) = 0;
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v40 + 8), " to ", 4);
          *(v40 + 17) = 0;
          MEMORY[0x1E6923350](*(v40 + 8), *(*a3 + 32));
          *(v40 + 17) = 0;
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v40 + 8), " response", 9);
          *(v40 + 17) = 0;
          (*(*v40 + 64))(v40, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v40 + 17) = 0;
          if (v42)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v42);
          }

          v46 = *a3;
          v47 = a3[1];
          if (v47)
          {
            atomic_fetch_add_explicit(v47 + 1, 1uLL, memory_order_relaxed);
          }

          if (v14)
          {
            atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v48 = *(a2 + 104);
          v112 = v46;
          v113 = v14;
          if (v48)
          {
            v48 = std::__shared_weak_count::lock(v48);
          }

          v114 = v48;
          v56 = *(v15 + 768);
          v57 = *(v15 + 776);
          if (v57)
          {
            atomic_fetch_add_explicit(&v57->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v115 = v47;
          v58 = a1;
          v59 = *(v56 + 216);
          v61 = *(v59 + 16);
          v60 = *(v59 + 24);
          if (v60)
          {
            atomic_fetch_add_explicit(&v60->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v62 = *(v61 + 40);
          v63 = *(v61 + 48);
          if (v63)
          {
            atomic_fetch_add_explicit(&v63->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (v60)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v60);
          }

          if (v62)
          {
            v64 = *(v56 + 216);
            v66 = *(v64 + 16);
            v65 = *(v64 + 24);
            if (v65)
            {
              atomic_fetch_add_explicit(&v65->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v67 = *(v66 + 40);
            v68 = *(v66 + 48);
            if (v68)
            {
              atomic_fetch_add_explicit(&v68->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            if (v65)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v65);
            }

            v70 = *v67;
            v69 = v67[1];
            if (v69)
            {
              atomic_fetch_add_explicit(&v69->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v116 = v69;
            v71 = v58;
            if (v68)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v68);
            }

            v72 = v70;
          }

          else
          {
            v72 = 0;
            v116 = 0;
            v71 = v58;
          }

          v14 = v113;
          if (v63)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v63);
          }

          if (v57)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v57);
          }

          __p[0] = 0;
          __p[1] = 0;
          if (v72)
          {
            v73 = 0;
          }

          else
          {
            v73 = v117;
          }

          if (*(a2 + 1448) == 1)
          {
            v74 = v116;
            if (v73)
            {
              SipSession::localLazuliTemplateSdp(&v125, a2);
            }

            else
            {
              SipSession::localLazuliSdp(&v125, a2);
            }
          }

          else
          {
            v74 = v116;
            if (v73)
            {
              SipSession::localTemplateSdp(&v125, a2);
            }

            else
            {
              (*(*a2 + 128))(&v125, a2);
            }
          }

          v78 = v125;
          v77 = v126;
          if (v126)
          {
            atomic_fetch_add_explicit(&v126->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v79 = __p[1];
          __p[0] = v78;
          __p[1] = v77;
          if (v79)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v79);
          }

          if (v126)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v126);
          }

          if (__p[0])
          {
            v125 = 0;
            v126 = 0;
            std::allocate_shared[abi:ne200100]<SDPModel,std::allocator<SDPModel>,std::shared_ptr<SDPModel> &,0>();
          }

          v112[32] = 500;
          if (__p[1])
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](__p[1]);
          }

          if (v74)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v74);
          }

          if (v114)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v114);
          }

          if (v113)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v113);
          }

          if (v115)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v115);
          }

          memset(&v128[1], 0, 64);
          __p[0] = &unk_1F5EBDEF8;
          __p[1] = &_bambiDomain;
          LODWORD(v128[0]) = 0x40000000;
          v91 = ImsResult::operator<<<char [39]>(__p, "unable to add SDP to outgoing response");
          ImsResult::ImsResult(v71, v91);
          goto LABEL_228;
        }

        v29 = *(*a3 + 32);
LABEL_81:
        v24 = v29 == 180;
        v49 = !v28;
        if (!v24)
        {
          v49 = 1;
        }

        if ((v49 & 1) == 0)
        {
          v50 = *(v15 + 768);
          v51 = *(v15 + 776);
          if (v51)
          {
            atomic_fetch_add_explicit(&v51->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v52 = *(v50 + 216);
          v53 = *(v52 + 16);
          v54 = *(v52 + 24);
          if (v54)
          {
            atomic_fetch_add_explicit(&v54->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v55 = SipOfferAnswerExchange::empty(v53);
          if (v54)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v54);
          }

          if (v51)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v51);
            if (!v55)
            {
              goto LABEL_159;
            }
          }

          else if (!v55)
          {
            goto LABEL_159;
          }

          __p[0] = 0;
          __p[1] = 0;
          SipSession::localTemplateSdp(&v125, a2);
          if (v125)
          {
            SipSession::localTemplateSdp(__p, a2);
          }

          else
          {
            (*(*a2 + 128))(__p, a2);
          }

          if (v126)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v126);
          }

          if (__p[0])
          {
            v75 = (*(*a2 + 64))(a2);
            (*(*a2 + 16))(a2, v75);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v75 + 8), "adding SDP to RINGING", 21);
            *(v75 + 17) = 0;
            (*(*v75 + 64))(v75, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            *(v75 + 17) = 0;
            v76 = *a3;
            v133[0] = __p[0];
            v133[1] = __p[1];
            if (__p[1])
            {
              atomic_fetch_add_explicit(__p[1] + 1, 1uLL, memory_order_relaxed);
            }

            SipMessage::setSdp(v76, v133);
          }

          if (__p[1])
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](__p[1]);
          }
        }

LABEL_159:
        v80 = SipMessage::body<SipSdpBody>(*a3);
        if (v80)
        {
          v81 = *(v80 + 1);
          v82 = *(v80 + 2);
          if (v82)
          {
            atomic_fetch_add_explicit(&v82->__shared_owners_, 1uLL, memory_order_relaxed);
            if (!v81)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v82);
              goto LABEL_190;
            }
          }

          else if (!v81)
          {
            goto LABEL_190;
          }

          v83 = *(*a4 + 264);
          v84 = *(*a4 + 272);
          if (v84)
          {
            atomic_fetch_add_explicit(&v84->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          hasPreconditions = SipMessage::hasPreconditions(v83);
          if (!hasPreconditions && (v117 & 1) != 0)
          {
            v86 = *(*a4 + 264);
            v87 = *(*a4 + 272);
            if (v87)
            {
              atomic_fetch_add_explicit(&v87->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v88 = SipMessage::body<SipSdpBody>(v86);
            if (v88)
            {
              v90 = *(v88 + 1);
              v89 = *(v88 + 2);
              if (v89)
              {
                atomic_fetch_add_explicit(&v89->__shared_owners_, 1uLL, memory_order_relaxed);
                std::__shared_weak_count::__release_shared[abi:ne200100](v89);
              }
            }

            else
            {
              v90 = 0;
            }

            hasPreconditions = v90 == 0;
            if (v87)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v87);
            }
          }

          if (v84)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v84);
          }

          if (v82)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v82);
            if (!hasPreconditions)
            {
              goto LABEL_190;
            }
          }

          else if (!hasPreconditions)
          {
            goto LABEL_190;
          }

          v92 = *(a2 + 192);
          v93 = *(*a4 + 272);
          v131 = *(*a4 + 264);
          v132 = v93;
          if (v93)
          {
            atomic_fetch_add_explicit(&v93->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v94 = a3[1];
          v129 = *a3;
          v130 = v94;
          if (v94)
          {
            atomic_fetch_add_explicit(&v94->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v95 = SipPreconditions::addPreconditionsToOutgoingResponse(v92, v15 + 264, &v131, &v129);
          if (v130)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v130);
          }

          if (v132)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v132);
          }

          if ((v95 & 1) == 0)
          {
            std::string::basic_string[abi:ne200100]<0>(&v125, "InternalError");
            SipSessionInterface::terminationReason(a2);
          }
        }

LABEL_190:
        *__p = 0u;
        memset(v128, 0, sizeof(v128));
        v96 = *(v15 + 768);
        v97 = *(v15 + 776);
        if (v97)
        {
          atomic_fetch_add_explicit(&v97->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v98 = a3[1];
        v124[0] = *a3;
        v124[1] = v98;
        if (v98)
        {
          atomic_fetch_add_explicit(&v98->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        SipOfferAnswer::updateWithOutgoingResponse(v96, v124, *a4 + 312, __p);
        if (v98)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v98);
        }

        if (v97)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v97);
        }

        if ((*(*__p[1] + 24))(__p[1], LODWORD(v128[0])))
        {
          SipResponse::setStatusFromImsResult(*a3, __p);
          ImsResult::ImsResult(a1, __p);
        }

        else
        {
          if (v117)
          {
            v99 = *(a2 + 30);
            v100 = *(v99 + 232);
            if (v100)
            {
              v101 = std::__shared_weak_count::lock(v100);
              if (v101)
              {
                v102 = v101;
                v103 = *(v99 + 224);
                if (v103)
                {
                  v104 = *(v103 + 248);
                  v105 = *(v103 + 256);
                  if (v105)
                  {
                    atomic_fetch_add_explicit(&v105->__shared_owners_, 1uLL, memory_order_relaxed);
                  }

                  if (v104)
                  {
                    v106 = SipUserAgent::config(v104);
                    if (SipResponseCodeMap::containsResponseCodeForMethod(v106 + 992, "INVITE", *(*a3 + 32), 0))
                    {
                      v107 = a3[1];
                      v123[0] = *a3;
                      v123[1] = v107;
                      if (v107)
                      {
                        atomic_fetch_add_explicit(&v107->__shared_owners_, 1uLL, memory_order_relaxed);
                      }

                      SipSession::addLocationToMessage(a2, v123);
                      if (v107)
                      {
                        std::__shared_weak_count::__release_shared[abi:ne200100](v107);
                      }
                    }
                  }

                  if (v105)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v105);
                  }
                }

                std::__shared_weak_count::__release_shared[abi:ne200100](v102);
              }
            }
          }

          v108 = *(a2 + 185);
          v109 = a3[1];
          v122[0] = *a3;
          v122[1] = v109;
          if (v109)
          {
            atomic_fetch_add_explicit(&v109->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          SipSessionTimer::updateFromOutgoingResponse(v108, v122);
          if (v109)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v109);
          }

          v110 = a3[1];
          v120 = *a3;
          v121 = v110;
          if (v110)
          {
            atomic_fetch_add_explicit(&v110->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v111 = a4[1];
          v118 = *a4;
          v119 = v111;
          if (v111)
          {
            atomic_fetch_add_explicit(&v111->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          (*(*a2 + 240))(a2, &v120, &v118);
          if (v119)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v119);
          }

          if (v121)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v121);
          }
        }

        goto LABEL_228;
      }
    }

    else
    {
      v34 = 0;
    }

    v38 = *(v15 + 768);
    v39 = *(v15 + 776);
    if (v39)
    {
      atomic_fetch_add_explicit(&v39->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v35 = SipOfferAnswer::localSdpPending(*(*(v38 + 216) + 16), *(*(v38 + 216) + 24));
    if (v39)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v39);
    }

    goto LABEL_61;
  }

  v36 = (*(*a2 + 56))(a2);
  (*(*a2 + 16))(a2, v36);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v36 + 8), "sendResponseToInviteOrUpdateRequest: couldn't find appropriate fork for remote tag ", 83);
  *(v36 + 17) = 0;
  ObfuscatedString::ObfuscatedString(__p, v11);
  (*(*v36 + 56))(v36, __p);
  (*(*v36 + 64))(v36, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v36 + 17) = 0;
  if (SHIBYTE(v128[3]) < 0)
  {
    operator delete(v128[1]);
  }

  if (SHIBYTE(v128[0]) < 0)
  {
    operator delete(__p[0]);
  }

  memset(&v128[1], 0, 64);
  __p[0] = &unk_1F5EBDEF8;
  __p[1] = &_bambiDomain;
  LODWORD(v128[0]) = 0x40000000;
  v37 = ImsResult::operator<<<char [20]>(__p, "missing dialog fork");
  ImsResult::ImsResult(a1, v37);
LABEL_228:
  ImsResult::~ImsResult(__p);
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }
}

void sub_1E4E0CBBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (v40)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v40);
  }

  if (v39)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v39);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v38);
  ImsResult::~ImsResult(&a32);
  if (v37)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v37);
  }

  _Unwind_Resume(a1);
}

uint64_t ImsResult::operator<<<char [56]>(uint64_t a1, char *__s)
{
  v4 = *(a1 + 24);
  if (!v4)
  {
    operator new();
  }

  v5 = strlen(__s);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), __s, v5);
  *(v4 + 17) = 0;
  return a1;
}

void SipSession::acceptInvitation(std::__shared_weak_count **this@<X0>, ImsResult *a2@<X8>)
{
  if ((this[187] & 1) == 0)
  {
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v21 = &unk_1F5EBDEF8;
    v22 = &_bambiDomain;
    LODWORD(v23) = 1073741826;
    operator new();
  }

  v4 = this[104];
  if (v4)
  {
    v5 = std::__shared_weak_count::lock(v4);
    if (v5)
    {
      v6 = this[103];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  if (*(this + 1448) == 1)
  {
    v7 = this[150];
    if (v7)
    {
      v8 = std::__shared_weak_count::lock(v7);
      v9 = v8;
      if (v8 && this[149])
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
        goto LABEL_14;
      }
    }

    else
    {
      v9 = 0;
    }

    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v21 = &unk_1F5EBDEF8;
    v22 = &_bambiDomain;
    LODWORD(v23) = 1073741826;
    v11 = ImsResult::operator<<<char [43]>(&v21, "acceptInvitation: no lazuli session object");
    v12 = ImsLogContainer::logResult(this, v11);
    ImsResult::ImsResult(a2, v12);
    ImsResult::~ImsResult(&v21);
    if (!v9)
    {
      goto LABEL_24;
    }

    v13 = v9;
    goto LABEL_23;
  }

  if (!v6)
  {
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v21 = &unk_1F5EBDEF8;
    v22 = &_bambiDomain;
    LODWORD(v23) = 1073741826;
    v14 = ImsResult::operator<<<char [33]>(&v21, "acceptInvitation: no call object");
    v15 = ImsLogContainer::logResult(this, v14);
    ImsResult::ImsResult(a2, v15);
    ImsResult::~ImsResult(&v21);
    goto LABEL_24;
  }

LABEL_14:
  v19 = 0;
  v20 = 0;
  SipSession::serverInviteTransaction(this, &v19);
  if (v19)
  {
    v18[0] = 0;
    v18[1] = 0;
    v10 = *(v19 + 272);
    if (v10)
    {
      atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
    }

    SipResponse::create(200, v18);
  }

  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v21 = &unk_1F5EBDEF8;
  v22 = &_bambiDomain;
  LODWORD(v23) = 1073741826;
  v16 = ImsResult::operator<<<char [55]>(&v21, "acceptInvitation: no current server INVITE transaction");
  v17 = ImsLogContainer::logResult(this, v16);
  ImsResult::ImsResult(a2, v17);
  ImsResult::~ImsResult(&v21);
  v13 = v20;
  if (v20)
  {
LABEL_23:
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

LABEL_24:
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

void sub_1E4E0D47C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  ImsResult::~ImsResult(&__p);
  ImsResult::~ImsResult((v35 - 152));
  v37 = *(v35 - 208);
  if (v37)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v37);
  }

  v38 = *(v35 - 176);
  if (v38)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v38);
  }

  v39 = *(v35 - 160);
  if (v39)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v39);
  }

  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  }

  _Unwind_Resume(a1);
}

uint64_t ImsResult::operator<<<char [43]>(uint64_t a1, char *__s)
{
  v4 = *(a1 + 24);
  if (!v4)
  {
    operator new();
  }

  v5 = strlen(__s);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), __s, v5);
  *(v4 + 17) = 0;
  return a1;
}

uint64_t ImsResult::operator<<<char [55]>(uint64_t a1, char *__s)
{
  v4 = *(a1 + 24);
  if (!v4)
  {
    operator new();
  }

  v5 = strlen(__s);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), __s, v5);
  *(v4 + 17) = 0;
  return a1;
}

uint64_t ImsResult::operator<<<char [66]>(uint64_t a1, char *__s)
{
  v4 = *(a1 + 24);
  if (!v4)
  {
    operator new();
  }

  v5 = strlen(__s);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), __s, v5);
  *(v4 + 17) = 0;
  return a1;
}

uint64_t ImsResult::operator<<<BambiCall *>(uint64_t a1, void *a2)
{
  v3 = *(a1 + 24);
  if (!v3)
  {
    operator new();
  }

  MEMORY[0x1E6923310](*(v3 + 8), *a2);
  *(v3 + 17) = 0;
  return a1;
}

void SipSession::handleSessionConfirmed(SipSession *this)
{
  *(this + 444) = 0;
  v11 = 0u;
  *v12 = 0u;
  block = 0;
  v14 = 0;
  BambiCallEvent::BambiCallEvent(&v11, 9, &block);
  *&v11 = &unk_1F5ED07B8;
  SipSession::fireCallEvent(this, &v11);
  v2 = *(this + 104);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = *(this + 103);
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  if (*(*(this + 30) + 2816) == 1 && *(this + 924) == 1 && v4 && *(v4 + 484) == 4)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 0x40000000;
    v10[2] = ___ZN10SipSession22handleSessionConfirmedEv_block_invoke;
    v10[3] = &__block_descriptor_tmp_125;
    v10[4] = this;
    v5 = *(this + 20);
    if (!v5 || (v6 = *(this + 19), (v7 = std::__shared_weak_count::lock(v5)) == 0))
    {
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v8 = v7;
    v9 = *(this + 21);
    block = MEMORY[0x1E69E9820];
    v14 = 1174405120;
    v15 = ___ZNK3ctu20SharedSynchronizableI19SipSessionInterfaceE15execute_wrappedEU13block_pointerFvvE_block_invoke;
    v16 = &unk_1F5ED2980;
    v18 = v6;
    v19 = v8;
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    v17 = v10;
    dispatch_async(v9, &block);
    if (v19)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v19);
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  *&v11 = &unk_1F5EC4090;
  if (v12[1])
  {
    std::__shared_weak_count::__release_weak(v12[1]);
  }
}

void sub_1E4E0DA30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a18)
  {
    std::__shared_weak_count::__release_weak(a18);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN10SipSession22handleSessionConfirmedEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = v1;
  v3 = *(v1 + 104);
  if (v3)
  {
    v4 = std::__shared_weak_count::lock(v3);
    if (v4)
    {
      v5 = *(v1 + 103);
      if (v5)
      {
        if (SipSession::confirmed(v1))
        {
          if (SipSession::terminating(v1) || (*(*v1 + 264))(v1))
          {
            v6 = (*(*v1 + 64))(v1);
            (*(*v1 + 16))(v1, v6);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "sendReInvite: don't need to re-INVITE a terminating session", 59);
            *(v6 + 17) = 0;
            (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          }

          else
          {
            if (*(v5 + 484) == 4)
            {
              SipSession::clientInviteTransaction(&v21, v1);
              if (v21)
              {
                v8 = 1;
              }

              else
              {
                SipSession::serverInviteTransaction(v1, &v23);
                v8 = v23 != 0;
                if (v24)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v24);
                }
              }

              if (v22)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v22);
              }

              if (v8)
              {
                v9 = (*(*v1 + 64))(v1);
                (*(*v1 + 16))(v1, v9);
                v10 = ImsOutStream::operator<<(v9, "sendReInvite: already have an active INVITE transaction");
                (*(*v10 + 64))(v10, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                v10[17] = 0;
              }

              else
              {
                v11 = *(v1 + 30);
                v12 = *(v11 + 2968);
                v13 = *(v11 + 2976);
                if (v13)
                {
                  atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                if (!v12)
                {
                  goto LABEL_33;
                }

                v14 = *(v12 + 768);
                v15 = *(v12 + 776);
                if (v15)
                {
                  atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                v16 = SipOfferAnswer::satisfied(v14);
                if (v15)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v15);
                }

                if (v16)
                {
                  v17 = (*(*v2 + 64))(v2);
                  (*(*v2 + 16))(v2, v17);
                  v18 = ImsOutStream::operator<<(v17, "sending re-INVITE to change media from inactive to sendrecv");
                  (*(*v18 + 64))(v18, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                  v18[17] = 0;
                  SipSession::sendInvite(v2, "SendRecvInvite", &v21);
                  ImsResult::~ImsResult(&v21);
                }

                else
                {
LABEL_33:
                  v19 = (*(*v2 + 64))(v2);
                  (*(*v2 + 16))(v2, v19);
                  v20 = ImsOutStream::operator<<(v19, "sendReInvite: offer/answer is not satisfied");
                  (*(*v20 + 64))(v20, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                  v20[17] = 0;
                }

                if (v13)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v13);
                }
              }

              goto LABEL_13;
            }

            v6 = (*(*v1 + 64))(v1);
            (*(*v1 + 16))(v1, v6);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "sendReInvite: media is no longer inactive", 41);
            *(v6 + 17) = 0;
            (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          }
        }

        else
        {
          v6 = (*(*v1 + 64))(v1);
          (*(*v1 + 16))(v1, v6);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "sendReInvite: can't re-INVITE an unconfirmed session", 52);
          *(v6 + 17) = 0;
          (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        }

        *(v6 + 17) = 0;
LABEL_13:
        std::__shared_weak_count::__release_shared[abi:ne200100](v4);
        return;
      }
    }
  }

  else
  {
    v4 = 0;
  }

  v7 = (*(*v1 + 64))(v1);
  (*(*v1 + 16))(v1, v7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "sendReInvite: no call", 21);
  *(v7 + 17) = 0;
  (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v7 + 17) = 0;
  if (v4)
  {
    goto LABEL_13;
  }
}

void sub_1E4E0E088(_Unwind_Exception *a1)
{
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

BOOL SipSession::terminating(SipSession *this)
{
  v2 = *(this + 96);
  v3 = *(this + 97);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v2)
  {
    v4 = *(this + 96);
    v5 = *(this + 97);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if ((*(*v4 + 48))(v4) == 13)
    {
      v6 = 0;
    }

    else
    {
      v7 = *(this + 96);
      v8 = *(this + 97);
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v6 = (*(*v7 + 48))(v7) > 7;
      if (v8)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      }
    }

    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }

  else
  {
    v6 = 0;
  }

  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return v6;
}

void sub_1E4E0E1E8(_Unwind_Exception *exception_object)
{
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    if (!v2)
    {
LABEL_3:
      if (!v1)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if (!v2)
  {
    goto LABEL_3;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  if (!v1)
  {
LABEL_5:
    _Unwind_Resume(exception_object);
  }

LABEL_4:
  std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  goto LABEL_5;
}

BOOL SipOfferAnswer::satisfied(SipOfferAnswer *this)
{
  v1 = *(this + 27);
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!*(v3 + 40))
  {
    v4 = 0;
    if (!v2)
    {
      return v4;
    }

    goto LABEL_5;
  }

  v4 = *(v3 + 56) != 0;
  if (v2)
  {
LABEL_5:
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return v4;
}

uint64_t SipSession::handleAck(uint64_t a1, SipMessage **a2)
{
  v4 = (*(*a1 + 64))(a1);
  (*(*a1 + 16))(a1, v4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "SipSession::handleAck", 21);
  *(v4 + 17) = 0;
  (*(*v4 + 64))(v4, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v4 + 17) = 0;
  v5 = a2[1];
  v78 = *a2;
  v79 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = SipSessionInterface::handleAck(a1, &v78);
  if (v79)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v79);
  }

  if (v6)
  {
    *(a1 + 1585) = 1;
    memset(&v77, 0, sizeof(v77));
    SipMessage::transactionId(&v77, *a2);
    v7 = 0;
    v8 = *(a1 + 240);
    if (*(v8 + 2960) != 1)
    {
      goto LABEL_38;
    }

    v9 = *(v8 + 2944);
    v10 = *(v9 + 56);
    v7 = *(v9 + 64);
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (!v10)
    {
LABEL_38:
      v33 = (*(*a1 + 56))(a1);
      (*(*a1 + 16))(a1, v33);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v33 + 8), "handleAck: dialog has no fork", 29);
      *(v33 + 17) = 0;
      (*(*v33 + 64))(v33, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v33 + 17) = 0;
      if (*(a1 + 1448) == 1)
      {
        std::string::basic_string[abi:ne200100]<0>(&__p, "InternalError");
        SipSession::logLazuliMessageSessionSetup(a1, &__p, 0x1E1u);
        if (SBYTE7(v74) < 0)
        {
          operator delete(__p);
        }
      }

      v32 = 0;
      goto LABEL_105;
    }

    v11 = *(a1 + 240);
    v12 = *(v11 + 232);
    if (v12)
    {
      v13 = std::__shared_weak_count::lock(v12);
      if (v13)
      {
        v14 = *(v11 + 224);
        if (v14)
        {
          v75 = 0;
          v76 = 0;
          SipSession::clientInviteTransaction(&v75, a1);
          v15 = v75;
          if (v75)
          {
            v16 = *(v10 + 768);
            v17 = *(v10 + 776);
            if (v17)
            {
              atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v18 = *(v16 + 216);
            v20 = *(v18 + 16);
            v19 = *(v18 + 24);
            if (v19)
            {
              atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
              std::__shared_weak_count::__release_shared[abi:ne200100](v19);
            }

            v21 = *(v15 + 335);
            if (v21 >= 0)
            {
              v22 = *(v15 + 335);
            }

            else
            {
              v22 = *(v15 + 320);
            }

            v23 = *(v20 + 95);
            v24 = v23;
            if ((v23 & 0x80u) != 0)
            {
              v23 = *(v20 + 80);
            }

            if (v22 == v23)
            {
              if (v21 >= 0)
              {
                v25 = (v15 + 312);
              }

              else
              {
                v25 = *(v15 + 312);
              }

              v28 = *(v20 + 72);
              v27 = (v20 + 72);
              v26 = v28;
              if (v24 >= 0)
              {
                v29 = v27;
              }

              else
              {
                v29 = v26;
              }

              v30 = memcmp(v25, v29, v22);
              if (v17)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v17);
              }

              if (!v30)
              {
                v31 = (*(*a1 + 64))(a1);
                (*(*a1 + 16))(a1, v31);
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v31 + 8), "handleAck: received ack for session inside client transaction, ignoring", 71);
                *(v31 + 17) = 0;
                (*(*v31 + 64))(v31, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                goto LABEL_86;
              }
            }

            else if (v17)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v17);
            }
          }

          v35 = *(v10 + 768);
          v36 = *(v10 + 776);
          if (v36)
          {
            atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v37 = SipOfferAnswer::remoteAnswerPending(v35);
          if (v36)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v36);
          }

          v38 = *a2;
          if (v37)
          {
            v39 = SipMessage::header<SipCSeqHeader>(v38);
            if (v39)
            {
              v40 = v39[15];
            }

            else
            {
              v40 = 0;
            }

            v44 = *(v10 + 768);
            v45 = *(v10 + 776);
            if (v45)
            {
              atomic_fetch_add_explicit(&v45->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v46 = *(v44 + 216);
            v48 = *(v46 + 16);
            v47 = *(v46 + 24);
            if (v47)
            {
              atomic_fetch_add_explicit(&v47->__shared_owners_, 1uLL, memory_order_relaxed);
              v49 = *(v48 + 96);
              std::__shared_weak_count::__release_shared[abi:ne200100](v47);
            }

            else
            {
              v49 = *(v48 + 96);
            }

            if (v45)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v45);
            }

            if (v40 == v49)
            {
              v50 = SipMessage::body<SipSdpBody>(*a2);
              if (!v50)
              {
                goto LABEL_110;
              }

              v52 = *(v50 + 1);
              v51 = *(v50 + 2);
              if (v51)
              {
                atomic_fetch_add_explicit(&v51->__shared_owners_, 1uLL, memory_order_relaxed);
                std::__shared_weak_count::__release_shared[abi:ne200100](v51);
              }

              if (!v52)
              {
LABEL_110:
                v65 = SipMessage::body<SipSdpBody>(*a2);
                if (!v65 || (v65[48] & 1) != 0)
                {
                  v66 = (*(*a1 + 48))(a1);
                  (*(*a1 + 16))(a1, v66);
                  v67 = ImsOutStream::operator<<(v66, "expected SDP answer in ACK.  Terminating session.");
                  (*(*v67 + 64))(v67, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                  v67[17] = 0;
                  if (*(a1 + 1448) == 1)
                  {
                    std::string::basic_string[abi:ne200100]<0>(&__p, "MissingSdp");
                    SipSession::logLazuliMessageSessionSetup(a1, &__p, 0x25Eu);
                    if (SBYTE7(v74) < 0)
                    {
                      operator delete(__p);
                    }
                  }

                  std::string::basic_string[abi:ne200100]<0>(&__p, "MissingSdp");
                  SipSession::bye(a1, &__p, 0);
                }

                if (*(a1 + 1448) == 1)
                {
                  std::string::basic_string[abi:ne200100]<0>(&__p, "InvalidSdp");
                  SipSession::logLazuliMessageSessionSetup(a1, &__p, 0x1E8u);
                  if (SBYTE7(v74) < 0)
                  {
                    operator delete(__p);
                  }
                }

                std::string::basic_string[abi:ne200100]<0>(&__p, "InvalidSdp");
                SipSession::bye(a1, &__p, 0);
              }

              v53 = *(v10 + 768);
              v54 = *(v10 + 776);
              if (v54)
              {
                atomic_fetch_add_explicit(&v54->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v55 = a2[1];
              v71 = *a2;
              v72 = v55;
              if (v55)
              {
                atomic_fetch_add_explicit(&v55->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v56 = SipStack::prefs(v14);
              SipOfferAnswer::updateWithIncomingRequest(v53, &v71, v56, &__p, &v77.__r_.__value_.__l.__data_);
              v57 = (*(**(&__p + 1) + 24))(*(&__p + 1), v74);
              ImsResult::~ImsResult(&__p);
              if (v72)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v72);
              }

              if (v54)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v54);
              }

              if (v57)
              {
                v58 = (*(*a1 + 48))(a1);
                (*(*a1 + 16))(a1, v58);
                v59 = ImsOutStream::operator<<(v58, "invalid SDP answer in ACK.  Terminating session.");
                (*(*v59 + 64))(v59, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                v59[17] = 0;
                if (*(a1 + 1448) == 1)
                {
                  std::string::basic_string[abi:ne200100]<0>(&__p, "InvalidSdp");
                  SipSession::logLazuliMessageSessionSetup(a1, &__p, 0x1E8u);
                  if (SBYTE7(v74) < 0)
                  {
                    operator delete(__p);
                  }
                }

                std::string::basic_string[abi:ne200100]<0>(&__p, "InvalidSdp");
                SipSession::bye(a1, &__p, 0);
              }

              goto LABEL_87;
            }

            v31 = (*(*a1 + 64))(a1);
            (*(*a1 + 16))(a1, v31);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v31 + 8), "handleAck: received ack for differnt CSeq, ignoring", 51);
            *(v31 + 17) = 0;
            (*(*v31 + 64))(v31, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          }

          else
          {
            v41 = SipMessage::body<SipSdpBody>(v38);
            if (!v41)
            {
              goto LABEL_87;
            }

            v43 = *(v41 + 1);
            v42 = *(v41 + 2);
            if (v42)
            {
              atomic_fetch_add_explicit(&v42->__shared_owners_, 1uLL, memory_order_relaxed);
              std::__shared_weak_count::__release_shared[abi:ne200100](v42);
            }

            if (!v43)
            {
              goto LABEL_87;
            }

            v31 = (*(*a1 + 48))(a1);
            (*(*a1 + 16))(a1, v31);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v31 + 8), "incoming ACK contains SDP, but we aren't expecting any.  Ignoring it.", 69);
            *(v31 + 17) = 0;
            (*(*v31 + 64))(v31, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          }

LABEL_86:
          *(v31 + 17) = 0;
LABEL_87:
          v60 = *(a1 + 768);
          v61 = *(a1 + 776);
          if (v61)
          {
            atomic_fetch_add_explicit(&v61->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v62 = a2[1];
          v69 = *a2;
          v70 = v62;
          if (v62)
          {
            atomic_fetch_add_explicit(&v62->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          (*(*v60 + 104))(v60, &v69);
          if (v70)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v70);
          }

          if (v61)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v61);
          }

          if (SipSession::confirmed(a1))
          {
            v63 = (*(*a1 + 64))(a1);
            (*(*a1 + 16))(a1, v63);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v63 + 8), "call confirmed, send session acknowledged", 41);
            *(v63 + 17) = 0;
            (*(*v63 + 64))(v63, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            *(v63 + 17) = 0;
            if (*(a1 + 1448) == 1)
            {
              __p = 0uLL;
              *&v74 = 0;
              SipSession::logLazuliMessageSessionSetup(a1, &__p, 0xC8u);
              if (SBYTE7(v74) < 0)
              {
                operator delete(__p);
              }
            }

            __p = 0u;
            v74 = 0u;
            v68[0] = 0;
            v68[1] = 0;
            BambiCallEvent::BambiCallEvent(&__p, 30, v68);
            SipSession::fireCallEvent(a1, &__p);
            *&__p = &unk_1F5EC4090;
            if (*(&v74 + 1))
            {
              std::__shared_weak_count::__release_weak(*(&v74 + 1));
            }
          }

          if (v76)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v76);
          }

          v32 = 1;
LABEL_104:
          std::__shared_weak_count::__release_shared[abi:ne200100](v13);
LABEL_105:
          if (v7)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v7);
          }

          if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v77.__r_.__value_.__l.__data_);
          }

          return v32;
        }
      }
    }

    else
    {
      v13 = 0;
    }

    v34 = (*(*a1 + 56))(a1);
    (*(*a1 + 16))(a1, v34);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v34 + 8), "no sipstack", 11);
    *(v34 + 17) = 0;
    (*(*v34 + 64))(v34, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    v32 = 0;
    *(v34 + 17) = 0;
    if (!v13)
    {
      goto LABEL_105;
    }

    goto LABEL_104;
  }

  if (*(a1 + 1448) == 1)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "InternalError");
    SipSession::logLazuliMessageSessionSetup(a1, &__p, 0xC8u);
    if (SBYTE7(v74) < 0)
    {
      operator delete(__p);
    }
  }

  return 0;
}

void sub_1E4E0EEF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, std::__shared_weak_count *a33)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  v37 = *(v35 - 128);
  if (v37)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v37);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  if (v33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v33);
  }

  if (*(v35 - 97) < 0)
  {
    operator delete(*(v35 - 120));
  }

  _Unwind_Resume(a1);
}

void SipSession::logLazuliMessageSessionSetup(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v24 = 0;
  v25 = 0;
  SipSessionInterface::stack(&v24, a1);
  v6 = *(a1 + 1200);
  if (v6)
  {
    v7 = std::__shared_weak_count::lock(v6);
    if (v7)
    {
      if (v24)
      {
        v8 = *(a1 + 1192);
        if (v8)
        {
          v22 = 0u;
          v23 = 0u;
          v20 = 0u;
          v21 = 0u;
          v19 = 0u;
          memset(v18, 0, sizeof(v18));
          v17 = 0u;
          v9 = *(a2 + 23);
          if ((v9 & 0x80u) != 0)
          {
            v9 = *(a2 + 8);
          }

          LOBYTE(v17) = v9 == 0;
          if (*(v8 + 1072) == 1)
          {
            v10 = ((std::chrono::steady_clock::now().__d_.__rep_ - *(a1 + 1456)) / 1000000.0);
          }

          else
          {
            LODWORD(v10) = 0;
          }

          *(&v17 + 4) = __PAIR64__(a3, v10);
          std::string::operator=(v18, a2);
          if (*(v8 + 1072))
          {
            v11 = "MO";
          }

          else
          {
            v11 = "MT";
          }

          std::string::__assign_external(&v18[1], v11);
          v12 = &v19;
          if (SBYTE7(v20) < 0)
          {
            *(&v19 + 1) = 3;
            v13 = v19;
          }

          else
          {
            BYTE7(v20) = 3;
            v13 = &v19;
          }

          *v13 = 5255760;
          v14 = *(a1 + 1351);
          if (*(a1 + 1432) == *(a1 + 1424))
          {
            if ((v14 & 0x80) != 0)
            {
              v14 = *(a1 + 1336);
            }

            if (!v14)
            {
LABEL_36:
              bzero(v16, 0xA20uLL);
              SipStackConfig::SipStackConfig(v16, (v24 + 328));
            }

            if (SBYTE7(v20) < 0)
            {
              *(&v19 + 1) = 15;
              v12 = v19;
            }

            else
            {
              BYTE7(v20) = 15;
            }

            qmemcpy(v12, "GroupChatCreate", 15);
            v15 = v12 + 15;
          }

          else
          {
            if ((v14 & 0x80) != 0)
            {
              v14 = *(a1 + 1336);
            }

            if (v14)
            {
              if (SBYTE7(v20) < 0)
              {
                *(&v19 + 1) = 14;
                v12 = v19;
              }

              else
              {
                BYTE7(v20) = 14;
              }

              qmemcpy(v12, "MLSGroupCreate", 14);
              v15 = v12 + 14;
            }

            else
            {
              if (SBYTE7(v20) < 0)
              {
                *(&v19 + 1) = 12;
                v12 = v19;
              }

              else
              {
                BYTE7(v20) = 12;
              }

              *(v12 + 2) = 1702125925;
              *v12 = *"MLSP2PCreate";
              v15 = v12 + 12;
            }
          }

          *v15 = 0;
          goto LABEL_36;
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }

  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }
}

void sub_1E4E0F4D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  pthread_mutex_unlock(&ctu::Singleton<IMSMetricsManager,IMSMetricsManager,ctu::PthreadMutexGuardPolicy<IMSMetricsManager>>::sInstance);
  SipStackConfig::~SipStackConfig(&a9);
  ims::analytics::RCSSessionSetupInfo::~RCSSessionSetupInfo((v10 - 240));
  std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  v12 = *(v10 - 88);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  _Unwind_Resume(a1);
}

void sub_1E4E0F618(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, uint64_t a5, uint64_t a6, std::__shared_weak_count *a7, ...)
{
  va_start(va, a7);
  if (a7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a7);
  }

  BambiCallTerminationReason::~BambiCallTerminationReason(va);
  _Unwind_Resume(a1);
}

void SipSession::handlePrack(void *a1, uint64_t *a2, const void ***a3)
{
  v91 = *MEMORY[0x1E69E9840];
  v6 = SipMessage::header<SipRAckHeader>(*a2);
  if (!v6)
  {
    v17 = (*(*a1 + 32))(a1);
    (*(*a1 + 16))(a1, v17);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v17 + 8), "no RAck header found in PRACK request", 37);
    *(v17 + 17) = 0;
    (*(*v17 + 64))(v17, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v17 + 17) = 0;
    v18 = a1[30];
    (*(**a2 + 120))();
    std::string::basic_string[abi:ne200100]<0>(&__p, "Missing RAck header");
    SipDialog::sendResponse(v18, v86);
    v16 = v86;
LABEL_12:
    ImsResult::~ImsResult(v16);
    if (v83 < 0)
    {
      operator delete(__p);
    }

    return;
  }

  v7 = v6;
  v8 = a1[87];
  if (!v8)
  {
    goto LABEL_10;
  }

  v9 = v6[16];
  v10 = a1 + 87;
  do
  {
    v11 = *(v8 + 32);
    v12 = v11 >= v9;
    v13 = v11 < v9;
    if (v12)
    {
      v10 = v8;
    }

    v8 = *(v8 + 8 * v13);
  }

  while (v8);
  if (v10 == a1 + 87 || v9 < *(v10 + 8))
  {
LABEL_10:
    v14 = (*(*a1 + 64))(a1);
    (*(*a1 + 16))(a1, v14);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), "no provisional response found with CSeq ", 40);
    *(v14 + 17) = 0;
    MEMORY[0x1E6923350](*(v14 + 8), v7[16]);
    *(v14 + 17) = 0;
    (*(*v14 + 64))(v14, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v14 + 17) = 0;
    v15 = a1[30];
    (*(**a2 + 120))();
    std::string::basic_string[abi:ne200100]<0>(&__p, "Invalid CSeq");
    SipDialog::sendResponse(v15, v85);
    v16 = v85;
    goto LABEL_12;
  }

  v19 = a1[30];
  if (*(v19 + 2960) != 1)
  {
    v21 = 0;
LABEL_27:
    v30 = (*(*a1 + 56))(a1);
    (*(*a1 + 16))(a1, v30);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v30 + 8), "handlePrack: MT dialog doesn't have a fork", 42);
    *(v30 + 17) = 0;
    (*(*v30 + 64))(v30, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v30 + 17) = 0;
    v31 = *a3;
    std::string::basic_string[abi:ne200100]<0>(&__p, &str_24_0);
    SipServerTransaction::sendResponse(v31, v84);
    ImsResult::~ImsResult(v84);
    if (v83 < 0)
    {
      operator delete(__p);
    }

    goto LABEL_96;
  }

  v20 = *(v19 + 2944);
  v22 = *(v20 + 56);
  v21 = *(v20 + 64);
  if (v21)
  {
    atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v22)
  {
    goto LABEL_27;
  }

  v23 = a1[30];
  v24 = *(v23 + 232);
  if (!v24)
  {
    v25 = 0;
LABEL_30:
    v32 = a1[23];
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      (*(a1[18] + 16))(&__p, a1 + 18);
      v60 = v83 >= 0 ? &__p : __p;
      *buf = 141558275;
      v88 = 1752392040;
      v89 = 2081;
      v90 = v60;
      _os_log_error_impl(&dword_1E4C3F000, v32, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno sipstack", buf, 0x16u);
      if (v83 < 0)
      {
        operator delete(__p);
      }
    }

    if (!v25)
    {
      goto LABEL_96;
    }

    goto LABEL_95;
  }

  v25 = std::__shared_weak_count::lock(v24);
  if (!v25)
  {
    goto LABEL_30;
  }

  v26 = *(v23 + 224);
  if (!v26)
  {
    goto LABEL_30;
  }

  v27 = SipMessage::body<SipSdpBody>(*a2);
  if (!v27)
  {
    goto LABEL_57;
  }

  v29 = *(v27 + 1);
  v28 = *(v27 + 2);
  if (v28)
  {
    atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
    if (!v29)
    {
      goto LABEL_58;
    }
  }

  else if (!v29)
  {
LABEL_58:
    v44 = 0;
    goto LABEL_59;
  }

  data = v22[32].__r_.__value_.__l.__data_;
  size = v22[32].__r_.__value_.__l.__size_;
  if (size)
  {
    atomic_fetch_add_explicit(&size->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v34 = a2[1];
  v78 = *a2;
  v79 = v34;
  if (v34)
  {
    atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v35 = *a3;
  v36 = SipStack::prefs(v26);
  SipOfferAnswer::updateWithIncomingRequest(data, &v78, v36, &__p, v35 + 39);
  v37 = (v81->__get_deleter)(v81, v82);
  ImsResult::~ImsResult(&__p);
  if (v79)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v79);
  }

  if (size)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](size);
  }

  if (v37)
  {
    v38 = *a3;
    std::string::basic_string[abi:ne200100]<0>(&__p, &str_24_0);
    SipServerTransaction::sendResponse(v38, v77);
    ImsResult::~ImsResult(v77);
    if (v83 < 0)
    {
      operator delete(__p);
    }

    goto LABEL_95;
  }

  v39 = a1[192];
  v40 = a2[1];
  v75 = *a2;
  v76 = v40;
  if (v40)
  {
    atomic_fetch_add_explicit(&v40->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  SipPreconditions::updateFromIncomingMessage(v39, v22 + 11, &v75);
  if (v76)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v76);
  }

  v41 = v22[32].__r_.__value_.__l.__data_;
  v42 = v22[32].__r_.__value_.__l.__size_;
  if (v42)
  {
    atomic_fetch_add_explicit(&v42->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v43 = SipOfferAnswer::localAnswerPending(*(*(v41 + 27) + 16), *(*(v41 + 27) + 24));
  if (v42)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v42);
  }

  if (!v43)
  {
LABEL_57:
    v29 = 0;
    goto LABEL_58;
  }

  SipDialogFork::createSdpToSend(&__p, v22, 0, 1);
  v44 = __p;
  v29 = v81;
  if (!__p)
  {
    v45 = (*(*a1 + 56))(a1);
    (*(*a1 + 16))(a1, v45);
    v46 = ImsOutStream::operator<<(v45, "no local SDP to send in PRACK response");
    (*(*v46 + 64))(v46, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    v46[17] = 0;
    v47 = *a3;
    std::string::basic_string[abi:ne200100]<0>(&__p, &str_24_0);
    SipServerTransaction::sendResponse(v47, v74);
    ImsResult::~ImsResult(v74);
    if (v83 < 0)
    {
      operator delete(__p);
    }

    goto LABEL_93;
  }

LABEL_59:
  v48 = v10[5];
  v49 = v10[6];
  if (v49)
  {
    atomic_fetch_add_explicit(&v49->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v50 = a2[1];
  v72 = *a2;
  v73 = v50;
  if (v50)
  {
    atomic_fetch_add_explicit(&v50->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v51 = a3[1];
  v70 = *a3;
  v71 = v51;
  if (v51)
  {
    atomic_fetch_add_explicit(&v51->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v68 = v22;
  v69 = v21;
  if (v21)
  {
    atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v66 = v44;
  v67 = v29;
  if (v29)
  {
    atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  SipPrackHandler::handlePrack(v48, &v72, &v70, &v68, &v66);
  if (v67)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v67);
  }

  if (v69)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v69);
  }

  if (v71)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v71);
  }

  if (v73)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v73);
  }

  v52 = a1[104];
  if (v52)
  {
    v53 = std::__shared_weak_count::lock(v52);
    if (v53)
    {
      v54 = v53;
      v55 = a1[103];
      if (v55)
      {
        v56 = *(v55 + 448);
        if (v56)
        {
          v57 = *(v55 + 440);
          atomic_fetch_add_explicit(&v56->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          v58 = std::__shared_weak_count::lock(v56);
          std::__shared_weak_count::__release_weak(v56);
          if (v58)
          {
            if (v57)
            {
              v59 = a2[1];
              v64 = *a2;
              v65 = v59;
              if (v59)
              {
                atomic_fetch_add_explicit(&v59->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v62 = v55;
              v63 = v54;
              atomic_fetch_add_explicit(&v54->__shared_owners_, 1uLL, memory_order_relaxed);
              (*(*v57 + 16))(v57, &v64, &v62);
              if (v63)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v63);
              }

              if (v65)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v65);
              }
            }

            std::__shared_weak_count::__release_shared[abi:ne200100](v58);
          }
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v54);
    }
  }

  if (v49)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v49);
  }

LABEL_93:
  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }

LABEL_95:
  std::__shared_weak_count::__release_shared[abi:ne200100](v25);
LABEL_96:
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }
}

void sub_1E4E0FF98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *__p, uint64_t a50, int a51, __int16 a52, char a53, char a54)
{
  if (a54 < 0)
  {
    operator delete(__p);
  }

  if (v56)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v56);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v55);
  if (v54)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v54);
  }

  _Unwind_Resume(a1);
}

void *SipMessage::header<SipRAckHeader>(uint64_t a1)
{
  v1 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>>>::find<std::string>((a1 + 72), "RAck");
  if (!v1)
  {
    return 0;
  }

  v2 = v1[5];
  if (!v2)
  {
    return 0;
  }
}

void SipSession::handleCancel(void *a1, void *a2, const std::string **a3)
{
  v33 = 0;
  v34 = 0;
  SipDialog::serverTransactionWithIdAndMethod(a1[30], &(*a3)[13], "INVITE", &v33);
  v6 = v33;
  if (v33)
  {
    v7 = a1[30];
    (*(**a2 + 120))();
    std::string::basic_string[abi:ne200100]<0>(&v30, &str_24_0);
    SipDialog::sendResponse(v7, v28);
    ImsResult::~ImsResult(v28);
    if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v30.__r_.__value_.__l.__data_);
    }

    v8 = v6[33];
    v9 = v6[34];
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v10 = (*(*v8 + 120))(v8);
    v11 = *(v10 + 23);
    v12 = v11;
    if ((v11 & 0x80u) != 0)
    {
      v11 = *(v10 + 8);
    }

    if (v11 == 6)
    {
      if (v12 >= 0)
      {
        v13 = v10;
      }

      else
      {
        v13 = *v10;
      }

      v14 = *v13;
      v15 = *(v13 + 4);
      v17 = v14 == *"INVITE" && v15 == *"TE";
      if (!v9)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v17 = 0;
      if (!v9)
      {
LABEL_27:
        if (v17)
        {
          if (*(a1 + 1780) == 1)
          {
            v20 = (*(*a1 + 32))(a1);
            (*(*a1 + 16))(a1, v20);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v20 + 8), "received CANCEL in a confirmed session. Terminating.", 52);
            *(v20 + 17) = 0;
            (*(*v20 + 64))(v20, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            *(v20 + 17) = 0;
            std::string::basic_string[abi:ne200100]<0>(&v30, "RemoteCancel");
            SipSession::bye(a1, &v30, 0);
          }

          if ((*(*v6 + 136))(v6))
          {
            v25 = (*(*a1 + 32))(a1);
            (*(*a1 + 16))(a1, v25);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v25 + 8), "received CANCEL for a completed INVITE. Terminating.", 52);
            *(v25 + 17) = 0;
            (*(*v25 + 64))(v25, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            *(v25 + 17) = 0;
            std::string::basic_string[abi:ne200100]<0>(&v30, "RemoteCancel");
            SipSession::bye(a1, &v30, 0);
          }

          v26 = a1[104];
          if (v26)
          {
            std::__shared_weak_count::lock(v26);
          }

          v27 = a1[201];
          if (v27)
          {
            (*(*v27 + 8))(v27);
          }

          operator new();
        }

        v21 = (*(*a1 + 48))(a1);
        (*(*a1 + 16))(a1, v21);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v21 + 8), "remote end tried to cancel a ", 29);
        *(v21 + 17) = 0;
        v22 = v6[33];
        v23 = v6[34];
        if (v23)
        {
          atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v24 = (*(*v22 + 120))(v22);
        LoggableString::LoggableString(&v30, v24);
        (*(*v21 + 40))(v21, &v30);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v21 + 8), " request. Ignoring", 18);
        *(v21 + 17) = 0;
        (*(*v21 + 64))(v21, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v21 + 17) = 0;
        if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v30.__r_.__value_.__l.__data_);
        }

        if (v23)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v23);
        }

        goto LABEL_45;
      }
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    goto LABEL_27;
  }

  v18 = (*(*a1 + 64))(a1);
  (*(*a1 + 16))(a1, v18);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v18 + 8), "received CANCEL for unknown transaction ", 40);
  *(v18 + 17) = 0;
  ObfuscatedString::ObfuscatedString(&v30, *a3 + 13);
  (*(*v18 + 56))(v18, &v30);
  (*(*v18 + 64))(v18, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v18 + 17) = 0;
  if (v32 < 0)
  {
    operator delete(v31);
  }

  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }

  v19 = a1[30];
  (*(**a2 + 120))();
  std::string::basic_string[abi:ne200100]<0>(&v30, &str_24_0);
  SipDialog::sendResponse(v19, v29);
  ImsResult::~ImsResult(v29);
  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }

LABEL_45:
  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  }
}

void sub_1E4E10C6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43)
{
  if (*(v44 - 105) < 0)
  {
    operator delete(*(v44 - 128));
  }

  if (a38 < 0)
  {
    operator delete(__p);
  }

  if (v43)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v43);
  }

  v46 = *(v44 - 72);
  if (v46)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v46);
  }

  _Unwind_Resume(exception_object);
}

void SipSession::handleSessionProgressResponse(SipSession *a1, uint64_t *a2)
{
  if ((SipSession::confirmed(a1) & 1) == 0)
  {
    v4 = *(a1 + 30);
    v5 = SipMessage::header<SipToHeader>(*a2);
    if (v5)
    {
      v6 = SipUriHeader::tag(v5);
    }

    else
    {
      v6 = &ims::kEmptyString;
    }

    v7 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(v4 + 2944, v6);
    if (v4 + 2952 == v7)
    {
      v9 = 0;
    }

    else
    {
      v8 = *(v7 + 56);
      v9 = *(v7 + 64);
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v8)
      {
        v10 = *(a1 + 192);
        v11 = a2[1];
        v13 = *a2;
        v14 = v11;
        if (v11)
        {
          atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        SipPreconditions::updateFromIncomingMessage(v10, v8 + 11, &v13);
        if (v14)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v14);
        }

        goto LABEL_15;
      }
    }

    v12 = (*(*a1 + 56))(a1);
    (*(*a1 + 16))(a1, v12);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v12 + 8), "no fork for 183 response", 24);
    *(v12 + 17) = 0;
    (*(*v12 + 64))(v12, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v12 + 17) = 0;
LABEL_15:
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }
  }
}

void sub_1E4E10F70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  _Unwind_Resume(exception_object);
}

void SipSession::schedulePendingInvite(std::string *a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(a2 + 368, "InviteType");
  if (a2 + 376 == v4)
  {
    v5 = &ims::kEmptyString;
  }

  else
  {
    v5 = (v4 + 56);
  }

  std::string::operator=(a1 + 73, v5);
  if ((SHIBYTE(a1[73].__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    if (a1[73].__r_.__value_.__l.__size_)
    {
LABEL_6:
      v6 = *(a1[10].__r_.__value_.__r.__words[0] + 2816);
      v7 = random();
      if (v6 == 1)
      {
        v8 = (10 * (v7 % 190) + 2100);
      }

      else
      {
        v8 = (10 * (v7 % 200));
      }

      std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&__p, &a1[6].__r_.__value_.__l.__size_);
      size = __p.__r_.__value_.__l.__size_;
      if (__p.__r_.__value_.__l.__size_)
      {
        atomic_fetch_add_explicit((__p.__r_.__value_.__l.__size_ + 16), 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:ne200100](size);
        atomic_fetch_add_explicit(&size->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v10 = (*(a1->__r_.__value_.__r.__words[0] + 64))(a1);
      (*(a1->__r_.__value_.__r.__words[0] + 16))(a1, v10);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "will re-attempt outgoing ", 25);
      *(v10 + 17) = 0;
      LoggableString::LoggableString(&__p, a1 + 73);
      (*(*v10 + 40))(v10, &__p);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), " in ", 4);
      *(v10 + 17) = 0;
      MEMORY[0x1E6923350](*(v10 + 8), v8);
      *(v10 + 17) = 0;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "ms", 2);
      *(v10 + 17) = 0;
      (*(*v10 + 64))(v10, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v10 + 17) = 0;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (size)
      {
        atomic_fetch_add_explicit(&size->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v13 = 0;
      operator new();
    }
  }

  else if (*(&a1[73].__r_.__value_.__s + 23))
  {
    goto LABEL_6;
  }

  v11 = (*(a1->__r_.__value_.__r.__words[0] + 32))(a1);
  (*(a1->__r_.__value_.__r.__words[0] + 16))(a1, v11);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), "INVITE transaction doesn't have an InviteType tag. Can't schedule a retry.", 74);
  *(v11 + 17) = 0;
  (*(*v11 + 64))(v11, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v11 + 17) = 0;
}

void sub_1E4E11360(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<void ()(std::string &)>::~__value_func[abi:ne200100](&a15);
  if (v15)
  {
    std::__shared_weak_count::__release_weak(v15);
    std::__shared_weak_count::__release_weak(v15);
  }

  _Unwind_Resume(a1);
}

void SipSession::schedulePendingReinviteForTTY(const std::string *this)
{
  v18 = *MEMORY[0x1E69E9840];
  data = this[10].__r_.__value_.__l.__data_;
  if (data[2816] != 1)
  {
    v7 = *(data + 29);
    if (v7)
    {
      v8 = std::__shared_weak_count::lock(v7);
      if (v8)
      {
        v9 = v8;
        v10 = *(data + 28);
        if (v10)
        {
          v11 = *(v10 + 248);
          v12 = *(v10 + 256);
          if (v12)
          {
            atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (v11)
          {
            v13 = *(SipUserAgent::config(v11) + 820);
            if (!v12)
            {
              goto LABEL_11;
            }
          }

          else
          {
            v13 = 0;
            if (!v12)
            {
LABEL_11:
              std::__shared_weak_count::__release_shared[abi:ne200100](v9);
              if (v13)
              {
                std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&__p, &this[6].__r_.__value_.__l.__size_);
                size = __p.__r_.__value_.__l.__size_;
                if (__p.__r_.__value_.__l.__size_)
                {
                  atomic_fetch_add_explicit((__p.__r_.__value_.__l.__size_ + 16), 1uLL, memory_order_relaxed);
                  std::__shared_weak_count::__release_shared[abi:ne200100](size);
                  atomic_fetch_add_explicit(&size->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                }

                v15 = (*(this->__r_.__value_.__r.__words[0] + 64))(this);
                (*(this->__r_.__value_.__r.__words[0] + 16))(this, v15);
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), "will attempt outgoing ", 22);
                *(v15 + 17) = 0;
                LoggableString::LoggableString(&__p, this + 73);
                (*(*v15 + 40))(v15, &__p);
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), " in ", 4);
                *(v15 + 17) = 0;
                MEMORY[0x1E6923350](*(v15 + 8), v13);
                *(v15 + 17) = 0;
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), "ms", 2);
                *(v15 + 17) = 0;
                (*(*v15 + 64))(v15, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                *(v15 + 17) = 0;
                if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__p.__r_.__value_.__l.__data_);
                }

                if (size)
                {
                  atomic_fetch_add_explicit(&size->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                }

                v17 = 0;
                operator new();
              }

              goto LABEL_20;
            }
          }

          std::__shared_weak_count::__release_shared[abi:ne200100](v12);
          goto LABEL_11;
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      }
    }

LABEL_20:
    v3 = (*(this->__r_.__value_.__r.__words[0] + 64))(this);
    (*(this->__r_.__value_.__r.__words[0] + 16))(this, v3);
    v4 = *(v3 + 8);
    v5 = "Not scheduling Reinvite for TTY, since timeout value is configured to 0";
    v6 = 71;
    goto LABEL_21;
  }

  v3 = (*(this->__r_.__value_.__r.__words[0] + 64))(this);
  (*(this->__r_.__value_.__r.__words[0] + 16))(this, v3);
  v4 = *(v3 + 8);
  v5 = "Not scheduling Reinvite for TTY for MO call";
  v6 = 43;
LABEL_21:
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v5, v6);
  *(v3 + 17) = 0;
  (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v3 + 17) = 0;
}

void sub_1E4E117A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<void ()(std::string &)>::~__value_func[abi:ne200100](&a15);
  if (v15)
  {
    std::__shared_weak_count::__release_weak(v15);
    std::__shared_weak_count::__release_weak(v15);
  }

  _Unwind_Resume(a1);
}

void SipSession::upgradeToRtt(std::string *this@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  data = this[32].__r_.__value_.__l.__data_;
  if (!data || (*(*data + 48))(data) != 7)
  {
    if (!a2)
    {
      v7 = (*(this->__r_.__value_.__r.__words[0] + 64))(this);
      (*(this->__r_.__value_.__r.__words[0] + 16))(this, v7);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "Skipping reINVITE for existing text session.", 44);
      *(v7 + 17) = 0;
      (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v7 + 17) = 0;
      *(a3 + 24) = 0u;
      *(a3 + 40) = 0u;
      *(a3 + 56) = 0u;
      *(a3 + 72) = 0u;
      *a3 = &unk_1F5EBDEF8;
      *(a3 + 8) = &_bambiDomain;
      *(a3 + 16) = 0;
      return;
    }

    v22 = 0;
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v17 = 0u;
    SipSession::sendInvite(this, "InviteTypeTTYReinvite", &v17);
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v10 = &unk_1F5EBDEF8;
    v11 = &_bambiDomain;
    v12 = 0;
    if (*(&v17 + 1) == &_bambiDomain)
    {
      v8 = v18;
      ImsResult::~ImsResult(&v10);
      if (!v8)
      {
        ImsResult::ImsResult(a3, &v17);
        ImsResult::~ImsResult(&v17);
        return;
      }
    }

    else
    {
      ImsResult::~ImsResult(&v10);
    }

    v9 = (*(this->__r_.__value_.__r.__words[0] + 48))(this);
    (*(this->__r_.__value_.__r.__words[0] + 16))(this, v9);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), "unable to send RTT re-INVITE: ", 30);
    *(v9 + 17) = 0;
    (*(v17 + 16))(&v17, v9);
    (*(*v9 + 64))(v9, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v9 + 17) = 0;
    SipSession::schedulePendingReinviteForTTY(this);
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v10 = &unk_1F5EBDEF8;
    v11 = &_bambiDomain;
    v12 = 1073741838;
    ims::result::resultWithCause(&v10, &v17, a3);
  }

  SipSession::answerRttUpgradeRequest(this, a3);
}

void sub_1E4E11B70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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
  v15 = va_arg(va1, void);
  ImsResult::~ImsResult(va);
  ImsResult::~ImsResult(va1);
  _Unwind_Resume(a1);
}

void SipSession::answerRttUpgradeRequest(SipSession *this@<X0>, ImsResult *a2@<X8>)
{
  v4 = *(this + 104);
  if (v4)
  {
    v5 = std::__shared_weak_count::lock(v4);
    if (v5 && *(this + 103))
    {
      v6 = *(this + 96);
      v7 = *(this + 97);
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v8 = (*(*v6 + 48))(v6);
      v9 = this + 712;
      if (v7)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      }

      if (v8 == 7)
      {
        v25[0] = 0;
        v25[1] = 0;
        SipSession::serverInviteTransaction(this, v25);
        v10 = v25[0];
        if (v25[0])
        {
          v24[0] = 0;
          v24[1] = 0;
          (*(*this + 128))(v24, this);
          if (v24[0])
          {
            *&v26.__r_.__value_.__l.__data_ = 0uLL;
            v11 = *(v10 + 272);
            if (v11)
            {
              atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
            }

            SipResponse::create(200, &v26);
          }

          std::string::basic_string[abi:ne200100]<0>(&v26, "InternalError");
          SipSessionInterface::terminationReason(this);
        }

        (*(*v9 + 32))(this + 712, 6);
        v20 = 0u;
        *v21 = 0u;
        v22 = 0u;
        *__p_8 = 0u;
        v18[0] = &unk_1F5EBDEF8;
        v18[1] = &_bambiDomain;
        v19 = 1073741826;
        operator new();
      }

      v20 = 0u;
      *v21 = 0u;
      v22 = 0u;
      *__p_8 = 0u;
      v18[0] = &unk_1F5EBDEF8;
      v18[1] = &_bambiDomain;
      v19 = 1073741826;
      ImsResult::operator<<<char [66]>(v18, "answerRttUpgradeRequest: RTT upgrade response attempted in state ");
      v14 = (*(*v9 + 24))(this + 712);
      v15 = (*(*v9 + 16))(this + 712, v14);
      LoggableString::LoggableString(&v26, v15);
      v16 = ImsResult::operator<<<LoggableString>(v18, &v26);
      v17 = ImsLogContainer::logResult(this, v16);
      ImsResult::ImsResult(a2, v17);
      if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v26.__r_.__value_.__l.__data_);
      }

      ImsResult::~ImsResult(v18);
      goto LABEL_22;
    }
  }

  else
  {
    v5 = 0;
  }

  v20 = 0u;
  *v21 = 0u;
  v22 = 0u;
  *__p_8 = 0u;
  v18[0] = &unk_1F5EBDEF8;
  v18[1] = &_bambiDomain;
  v19 = 1073741826;
  v12 = ImsResult::operator<<<char [40]>(v18, "answerRttUpgradeRequest: no call object");
  v13 = ImsLogContainer::logResult(this, v12);
  ImsResult::ImsResult(a2, v13);
  ImsResult::~ImsResult(v18);
  if (v5)
  {
LABEL_22:
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

void sub_1E4E121F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  MEMORY[0x1E69235B0](v23, 0x10A1C407D4E1E9DLL, a3, a4, a5, a6, a7, a8);
  ImsResult::~ImsResult(va);
  v26 = *(v24 - 128);
  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  v27 = *(v24 - 112);
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  _Unwind_Resume(a1);
}

void SipSession::hangUp(SipSession *a1@<X0>, uint64_t a4@<X8>)
{
  v6 = SipSession::terminating(a1);
  v7 = *a1;
  if (v6)
  {
    v8 = (*(v7 + 64))(a1);
    (*(*a1 + 16))(a1, v8);
    v9 = *(v8 + 8);
    v10 = "hangUp: already terminating";
    v11 = 27;
  }

  else
  {
    if (!(*(v7 + 264))(a1))
    {
      v12 = *(a1 + 200);
      if (v12)
      {
        v13 = *(v12 + 120);
        if (v13)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v13);
        }

        v14 = *(v12 + 104);
        if (v14)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v14);
        }

        if (*(v12 + 95) < 0)
        {
          operator delete(*(v12 + 72));
        }

        if (*(v12 + 55) < 0)
        {
          operator delete(*(v12 + 32));
        }

        if (*(v12 + 31) < 0)
        {
          operator delete(*(v12 + 8));
        }

        MEMORY[0x1E69235B0](v12, 0x1032C40D4AF1F8FLL);
      }

      operator new();
    }

    v8 = (*(*a1 + 64))(a1);
    (*(*a1 + 16))(a1, v8);
    v9 = *(v8 + 8);
    v10 = "hangUp: already terminated";
    v11 = 26;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, v10, v11);
  *(v8 + 17) = 0;
  (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v8 + 17) = 0;
  *(a4 + 24) = 0u;
  *(a4 + 40) = 0u;
  *(a4 + 56) = 0u;
  *(a4 + 72) = 0u;
  *a4 = &unk_1F5EBDEF8;
  *(a4 + 8) = &_bambiDomain;
  *(a4 + 16) = 0;
}

void sub_1E4E128EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }

  _Unwind_Resume(exception_object);
}

void SipSession::generateResponseForInviteOrUpdateRequest(void *a1, uint64_t *a2, uint64_t *a3, SipMessage **a4)
{
  v167 = *MEMORY[0x1E69E9840];
  v8 = a1[104];
  if (v8)
  {
    v9 = std::__shared_weak_count::lock(v8);
    if (v9)
    {
      v10 = a1[103];
      if (v10)
      {
        v11 = 1;
        goto LABEL_8;
      }
    }
  }

  else
  {
    v9 = 0;
  }

  if (a1[181])
  {
    v11 = 0;
    v10 = 0;
  }

  else
  {
    v14 = (*(**a2 + 120))();
    v15 = *(v14 + 23);
    v16 = v15;
    if ((v15 & 0x80u) != 0)
    {
      v15 = *(v14 + 8);
    }

    if (v15 != 6)
    {
      goto LABEL_22;
    }

    v17 = v16 >= 0 ? v14 : *v14;
    v18 = *v17;
    v19 = *(v17 + 4);
    if (v18 != *"UPDATE" || v19 != *"TE")
    {
      goto LABEL_22;
    }

    v30 = SipMessage::body<SipSdpBody>(*a2);
    if (v30)
    {
      v32 = *(v30 + 1);
      v31 = *(v30 + 2);
      if (v31)
      {
        atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:ne200100](v31);
      }

      if (v32)
      {
LABEL_22:
        v21 = (*(*a1 + 48))(a1);
        (*(*a1 + 16))(a1, v21);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v21 + 8), "handleInviteOrUpdateRequest: no call", 36);
        *(v21 + 17) = 0;
        (*(*v21 + 64))(v21, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v21 + 17) = 0;
        std::string::basic_string[abi:ne200100]<0>(buf, "InternalError");
        SipSessionInterface::terminationReason(a1);
      }
    }

    v33 = (*(*a1 + 64))(a1);
    (*(*a1 + 16))(a1, v33);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v33 + 8), "handleInviteOrUpdateRequest: allowing empty UPDATE in headless state", 68);
    *(v33 + 17) = 0;
    (*(*v33 + 64))(v33, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    v11 = 0;
    v10 = 0;
    *(v33 + 17) = 0;
  }

LABEL_8:
  v12 = a1[150];
  if (v12)
  {
    v13 = std::__shared_weak_count::lock(v12);
    if (v13 && a1[149])
    {
      goto LABEL_46;
    }
  }

  else
  {
    v13 = 0;
  }

  if (*(a1 + 1448) == 1)
  {
    v22 = (*(**a2 + 120))();
    v23 = *(v22 + 23);
    v24 = v23;
    if ((v23 & 0x80u) != 0)
    {
      v23 = *(v22 + 8);
    }

    if (v23 != 6)
    {
      goto LABEL_35;
    }

    v25 = v24 >= 0 ? v22 : *v22;
    v26 = *v25;
    v27 = *(v25 + 4);
    if (v26 != *"UPDATE" || v27 != *"TE")
    {
      goto LABEL_35;
    }

    v34 = SipMessage::body<SipSdpBody>(*a2);
    if (v34)
    {
      v36 = *(v34 + 1);
      v35 = *(v34 + 2);
      if (v35)
      {
        atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:ne200100](v35);
      }

      if (v36)
      {
LABEL_35:
        v29 = (*(*a1 + 48))(a1);
        (*(*a1 + 16))(a1, v29);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v29 + 8), "handleInviteOrUpdateRequest: no lazuli session", 46);
        *(v29 + 17) = 0;
        (*(*v29 + 64))(v29, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v29 + 17) = 0;
        std::string::basic_string[abi:ne200100]<0>(buf, "InternalError");
        SipSessionInterface::terminationReason(a1);
      }
    }

    v37 = (*(*a1 + 64))(a1);
    (*(*a1 + 16))(a1, v37);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v37 + 8), "handleInviteOrUpdateRequest: allowing empty UPDATE in headless state", 68);
    *(v37 + 17) = 0;
    (*(*v37 + 64))(v37, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v37 + 17) = 0;
  }

LABEL_46:
  v38 = a1[30];
  v39 = SipMessage::header<SipFromHeader>(*a2);
  if (v39)
  {
    v40 = SipUriHeader::tag(v39);
  }

  else
  {
    v40 = &ims::kEmptyString;
  }

  v41 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(v38 + 2944, v40);
  if (v38 + 2952 == v41)
  {
    goto LABEL_82;
  }

  v43 = *(v41 + 56);
  v42 = *(v41 + 64);
  if (v42)
  {
    atomic_fetch_add_explicit(&v42->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v43)
  {
LABEL_82:
    v60 = (*(*a1 + 56))(a1);
    (*(*a1 + 16))(a1, v60);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v60 + 8), "handleInviteOrUpdateRequest: couldn't find appropriate fork for remote tag ", 75);
    *(v60 + 17) = 0;
    v61 = SipMessage::header<SipFromHeader>(*a2);
    if (v61)
    {
      v62 = SipUriHeader::tag(v61);
    }

    else
    {
      v62 = &ims::kEmptyString;
    }

    ObfuscatedString::ObfuscatedString(v165, v62);
    (*(*v60 + 56))(v60, v165);
    (*(*v60 + 64))(v60, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v60 + 17) = 0;
    if ((v165[47] & 0x80000000) != 0)
    {
      operator delete(*&v165[24]);
    }

    if ((v165[23] & 0x80000000) != 0)
    {
      operator delete(*v165);
    }

    std::string::basic_string[abi:ne200100]<0>(buf, "InternalError");
    SipSessionInterface::terminationReason(a1);
  }

  v44 = (*(**a2 + 120))();
  v45 = *(v44 + 23);
  v46 = v45;
  if ((v45 & 0x80u) != 0)
  {
    v45 = *(v44 + 8);
  }

  v132 = v43;
  v133 = v11;
  if (v45 == 6)
  {
    v47 = v46 >= 0 ? v44 : *v44;
    v48 = *v47;
    v49 = *(v47 + 4);
    if (v48 == *"INVITE" && v49 == *"TE")
    {
      v63 = SipSession::confirmed(a1);
      v65 = *a4;
      v64 = a4[1];
      if (v64)
      {
        atomic_fetch_add_explicit(&v64->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v135 = v63;
      v130 = v64;
      v67 = *a3;
      v66 = a3[1];
      if (v66)
      {
        atomic_fetch_add_explicit((v66 + 8), 1uLL, memory_order_relaxed);
      }

      v128 = v66;
      *v165 = 0uLL;
      SipSession::serverInviteTransaction(a1, v165);
      if (!*v165 || *v165 == v67)
      {
        SipSession::clientInviteTransaction(buf, a1);
        v72 = *buf;
        if (*&buf[8])
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
        }

        if (!v72)
        {
          v74 = 1;
LABEL_103:
          if (*&v165[8])
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](*&v165[8]);
          }

          v134 = v135 ^ 1;
          if (v128)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v128);
          }

          if (v130)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v130);
          }

          v51 = v134;
          if ((v74 & 1) == 0)
          {
            goto LABEL_242;
          }

          goto LABEL_64;
        }

        *(v65 + 32) = 491;
        v73 = (*(*a1 + 64))(a1);
        (*(*a1 + 16))(a1, v73);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v73 + 8), "received an incoming INVITE while we're waiting for a response to our INVITE", 76);
        *(v73 + 17) = 0;
        v71 = (v73 + 17);
        (*(*v73 + 64))(v73, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      }

      else
      {
        *(v65 + 32) = 500;
        v68 = random();
        v69 = SipMessage::headerWithName(v65, "Retry-After", 1);
        v70 = (*(*a1 + 64))(a1);
        (*(*a1 + 16))(a1, v70);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v70 + 8), "received an incoming INVITE while we're already processing another one", 70);
        *(v70 + 17) = 0;
        v71 = (v70 + 17);
        (*(*v70 + 64))(v70, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      }

      v74 = 0;
      *v71 = 0;
      goto LABEL_103;
    }
  }

  v134 = 0;
  v51 = 1;
LABEL_64:
  v52 = a1[185];
  v53 = a2[1];
  v163 = *a2;
  v164 = v53;
  if (v53)
  {
    atomic_fetch_add_explicit(&v53->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v54 = a4[1];
  v161 = *a4;
  v162 = v54;
  if (v54)
  {
    atomic_fetch_add_explicit(&v54->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  updated = SipSessionTimer::validateIncomingRequestAndUpdateResponse(v52, &v163, &v161);
  if (v162)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v162);
  }

  if (v164)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v164);
  }

  if (updated)
  {
    v56 = SipMessage::body<SipSdpBody>(*a2);
    if (v56 && (v56[48] & 1) == 0)
    {
      std::string::basic_string[abi:ne200100]<0>(buf, "InvalidSdp");
      SipSessionInterface::terminationReason(a1);
    }

    if (v134)
    {
      v57 = SipMessage::body<SipSdpBody>(*a2);
      if (!v57)
      {
        goto LABEL_80;
      }

      v59 = *(v57 + 1);
      v58 = *(v57 + 2);
      if (v58)
      {
        atomic_fetch_add_explicit(&v58->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:ne200100](v58);
      }

      if (!v59)
      {
LABEL_80:
        memset(&v165[24], 0, 64);
        *v165 = &unk_1F5EBDEF8;
        *&v165[8] = &_bambiDomain;
        *&v165[16] = 0x40000000;
        if (v133)
        {
          v159 = 0;
          v160 = 0;
          BambiCall::initializeMediaForMTSession(buf, v10, &v159);
        }

        else
        {
          v155 = 0uLL;
          v156 = 0uLL;
          v157 = 0uLL;
          v158 = 0uLL;
          v153[0] = &unk_1F5EBDEF8;
          v153[1] = &_bambiDomain;
          v154 = 0x40000000;
          v75 = ImsResult::operator<<<char [8]>(v153, "no call");
          ImsResult::ImsResult(buf, v75);
        }

        ImsResult::operator=(v165, buf);
        ImsResult::~ImsResult(buf);
        if (v133)
        {
          if (v160)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v160);
          }
        }

        else
        {
          ImsResult::~ImsResult(v153);
        }

        if ((*(**&v165[8] + 24))(*&v165[8], *&v165[16]))
        {
          v76 = *a4;
          v77 = a4[1];
          v152[0] = v76;
          v152[1] = v77;
          if (v77)
          {
            atomic_fetch_add_explicit(v77 + 1, 1uLL, memory_order_relaxed);
          }

          SipSession::generateTerminationResponse(a1, v165, v152);
          if (v77)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v77);
          }

          ImsResult::~ImsResult(v165);
          goto LABEL_242;
        }

        ImsResult::~ImsResult(v165);
      }
    }

    v78 = a1[30];
    v79 = *(v78 + 232);
    if (v79 && (v131 = std::__shared_weak_count::lock(v79)) != 0)
    {
      v80 = *(v78 + 224);
      if (v80)
      {
        v129 = *(v80 + 248);
        v126 = *(v78 + 224);
        v81 = *(v126 + 32);
        if (v81)
        {
          atomic_fetch_add_explicit(&v81->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v127 = v81;
        if (!v129)
        {
          v88 = a1[23];
          v86 = v131;
          if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
          {
            (*(a1[18] + 16))(v165, a1 + 18);
            v89 = v165[23] >= 0 ? v165 : *v165;
            *buf = 141558275;
            *&buf[4] = 1752392040;
            *&buf[12] = 2081;
            *&buf[14] = v89;
            _os_log_error_impl(&dword_1E4C3F000, v88, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno user agent", buf, 0x16u);
            if ((v165[23] & 0x80000000) != 0)
            {
              operator delete(*v165);
            }
          }

          goto LABEL_239;
        }

        if (v51)
        {
LABEL_161:
          v150 = 0;
          v151 = 0;
          IPTelephonyManager::getBambiClient(&v150);
          v93 = v150;
          v148 = v10;
          v149 = v9;
          v86 = v131;
          if (v9)
          {
            atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (BambiClient::callCountExcludingCall(v93, &v148) && (*(v93 + 720) & v134 & 1) != 0)
          {
            v94 = *(SipUserAgent::config(v129) + 1155);
            if (v149)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v149);
            }

            if (v94)
            {
              v95 = (*(*a1 + 64))(a1);
              (*(*a1 + 16))(a1, v95);
              v96 = ImsOutStream::operator<<(v95, "Got INVITE, but in a call and call waiting is disabled");
              (*(*v96 + 64))(v96, std::endl[abi:ne200100]<char,std::char_traits<char>>);
              v96[17] = 0;
              std::string::basic_string[abi:ne200100]<0>(buf, "CallWaitingDisabled");
              SipSessionInterface::terminationReason(a1);
            }
          }

          else if (v149)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v149);
          }

          if (v134)
          {
            v97 = a1[192];
            v98 = a2[1];
            v146 = *a2;
            v147 = v98;
            if (v98)
            {
              atomic_fetch_add_explicit((v98 + 8), 1uLL, memory_order_relaxed);
            }

            SipPreconditions::initializeMobileTerminated(v97, (a1 + 892), &v146);
            v99 = v147;
            if (!v147)
            {
              goto LABEL_182;
            }
          }

          else
          {
            if (SipSession::confirmed(a1) && *(a1 + 913) != 1)
            {
              goto LABEL_182;
            }

            v100 = a1[192];
            v101 = a2[1];
            v144 = *a2;
            v145 = v101;
            if (v101)
            {
              atomic_fetch_add_explicit((v101 + 8), 1uLL, memory_order_relaxed);
            }

            SipSession::confirmed(a1);
            SipPreconditions::updateFromIncomingMessage(v100, v132 + 11, &v144);
            v99 = v145;
            if (!v145)
            {
LABEL_182:
              memset(v165, 0, sizeof(v165));
              data = v132[32].__r_.__value_.__l.__data_;
              size = v132[32].__r_.__value_.__l.__size_;
              if (size)
              {
                atomic_fetch_add_explicit(&size->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v104 = a2[1];
              v142 = *a2;
              v143 = v104;
              if (v104)
              {
                atomic_fetch_add_explicit(&v104->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v105 = *a3;
              v106 = SipStack::prefs(v126);
              SipOfferAnswer::updateWithIncomingRequest(data, &v142, v106, v165, (v105 + 312));
              if (v143)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v143);
              }

              if (size)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](size);
              }

              if ((*(**&v165[8] + 24))(*&v165[8], *&v165[16]))
              {
                v107 = *a4;
                v108 = a4[1];
                v141[0] = v107;
                v141[1] = v108;
                if (v108)
                {
                  atomic_fetch_add_explicit(v108 + 1, 1uLL, memory_order_relaxed);
                }

                SipSession::generateTerminationResponse(a1, v165, v141);
                if (v108)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v108);
                }

LABEL_237:
                ImsResult::~ImsResult(v165);
                if (v151)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v151);
                }

LABEL_239:
                if (v127)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v127);
                }

LABEL_241:
                std::__shared_weak_count::__release_shared[abi:ne200100](v86);
                goto LABEL_242;
              }

              if (!v134)
              {
                if ((*(*a4 + 32) - 200) > 0x63)
                {
LABEL_232:
                  v124 = *(a1 + 1535);
                  if (v124 < 0)
                  {
                    v124 = a1[190];
                  }

                  if (!v124)
                  {
                    v125 = SipMessage::header<SipPBambiCallIdHeader>(*a2);
                    if (v125)
                    {
                      std::string::operator=(a1 + 63, (v125 + 64));
                    }
                  }

                  goto LABEL_237;
                }

                goto LABEL_228;
              }

              v109 = a2[1];
              v140[0] = *a2;
              v140[1] = v109;
              if (v109)
              {
                atomic_fetch_add_explicit(&v109->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              SipDialogFork::updateRouteSet(v132, v140);
              if (v109)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v109);
              }

              v111 = *(v129 + 42);
              v110 = *(v129 + 43);
              if (v110)
              {
                atomic_fetch_add_explicit(&v110->__shared_owners_, 1uLL, memory_order_relaxed);
                v112 = *(v111 + 4456);
                std::__shared_weak_count::__release_shared[abi:ne200100](v110);
                if (v112 != 1)
                {
                  goto LABEL_220;
                }
              }

              else if ((*(v111 + 4456) & 1) == 0)
              {
                goto LABEL_220;
              }

              v113 = a2[1];
              v139[0] = *a2;
              v139[1] = v113;
              if (v113)
              {
                atomic_fetch_add_explicit(&v113->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              SipSession::parseVerstatParams(a1, v139);
              if (v113)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v113);
              }

              SipSessionInterface::stack(buf, a1);
              v114 = SipStack::prefs(*buf);
              if (ImsPrefs::EnableBrandedCalling(v114))
              {
                v115 = *(a1 + 417);
                if (*&buf[8])
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
                }

                if (v115 != 1)
                {
                  goto LABEL_220;
                }

                v116 = *a2;
                v117 = a2[1];
                if (v117)
                {
                  atomic_fetch_add_explicit(&v117->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                SipSession::parseBrandedCallingHeaders(a1, v116);
                if (!v117)
                {
                  goto LABEL_220;
                }

                v118 = v117;
                goto LABEL_219;
              }

              v118 = *&buf[8];
              if (*&buf[8])
              {
LABEL_219:
                std::__shared_weak_count::__release_shared[abi:ne200100](v118);
              }

LABEL_220:
              v120 = *(v129 + 42);
              v119 = *(v129 + 43);
              if (v119)
              {
                atomic_fetch_add_explicit(&v119->__shared_owners_, 1uLL, memory_order_relaxed);
                v121 = *(v120 + 4457);
                std::__shared_weak_count::__release_shared[abi:ne200100](v119);
                if (v121 != 1)
                {
                  goto LABEL_228;
                }

LABEL_224:
                v122 = a2[1];
                v138[0] = *a2;
                v138[1] = v122;
                if (v122)
                {
                  atomic_fetch_add_explicit(&v122->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                SipSession::parseSpamHeaders(a1, v138);
                if (v122)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v122);
                }

                goto LABEL_228;
              }

              if (*(v120 + 4457))
              {
                goto LABEL_224;
              }

LABEL_228:
              v123 = a2[1];
              v136 = *a2;
              v137 = v123;
              if (v123)
              {
                atomic_fetch_add_explicit(&v123->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              SipDialogFork::handleTargetRefresh(v132, &v136);
              if (v137)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v137);
              }

              goto LABEL_232;
            }
          }

          std::__shared_weak_count::__release_shared[abi:ne200100](v99);
          goto LABEL_182;
        }

        v82 = SipMessage::body<SipSdpBody>(*a2);
        if (v82)
        {
          v83 = *(v82 + 1);
          v84 = *(v82 + 2);
          if (v84)
          {
            atomic_fetch_add_explicit(&v84->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (v83)
          {
            v85 = 0;
LABEL_156:
            if (v84)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v84);
            }

            if (v85)
            {
              v91 = (*(*a1 + 64))(a1);
              (*(*a1 + 16))(a1, v91);
              v92 = ImsOutStream::operator<<(v91, "Got an empty INVITE, trying to resume the call");
              (*(*v92 + 64))(v92, std::endl[abi:ne200100]<char,std::char_traits<char>>);
              v92[17] = 0;
              if (v133)
              {
                BambiCall::handleEmptyInvite(v10);
              }
            }

            goto LABEL_161;
          }
        }

        else
        {
          v84 = 0;
        }

        if (*(SipUserAgent::config(v129) + 816))
        {
          v85 = 1;
        }

        else
        {
          v85 = SipSession::confirmed(a1);
        }

        goto LABEL_156;
      }

      v86 = v131;
    }

    else
    {
      v86 = 0;
    }

    v87 = a1[23];
    if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
    {
      (*(a1[18] + 16))(v165, a1 + 18);
      v90 = v165[23] >= 0 ? v165 : *v165;
      *buf = 141558275;
      *&buf[4] = 1752392040;
      *&buf[12] = 2081;
      *&buf[14] = v90;
      _os_log_error_impl(&dword_1E4C3F000, v87, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno sipstack", buf, 0x16u);
      if ((v165[23] & 0x80000000) != 0)
      {
        operator delete(*v165);
      }
    }

    if (v86)
    {
      goto LABEL_241;
    }
  }

LABEL_242:
  if (v42)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v42);
  }

  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }
}

void sub_1E4E13FD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, int a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, std::__shared_weak_count *a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *__p, uint64_t a56, int a57, __int16 a58, char a59, char a60)
{
  if (v63)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v63);
  }

  ImsResult::~ImsResult(&__p);
  if (a35)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a35);
  }

  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  if (v62)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v62);
  }

  if (v61)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v61);
  }

  if (v60)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v60);
  }

  _Unwind_Resume(a1);
}

void SipSession::handleInviteOrUpdateRequest(SipSession *a1, SipMessage **a2, uint64_t *a3)
{
  v62 = *MEMORY[0x1E69E9840];
  if ((SipSession::confirmed(a1) & 1) == 0)
  {
    v5 = (*(**a2 + 120))();
    v6 = *(v5 + 23);
    v7 = v6;
    if ((v6 & 0x80u) != 0)
    {
      v6 = *(v5 + 8);
    }

    if (v6 == 6)
    {
      v8 = v7 >= 0 ? v5 : *v5;
      v9 = *v8;
      v10 = *(v8 + 4);
      if (v9 == *"INVITE" && v10 == *"TE")
      {
        v41 = *a2;
        std::string::basic_string[abi:ne200100]<0>(&block, "100rel");
        v42 = SipMessage::supportsOption(v41, &block);
        v43 = v42;
        if (v61 < 0)
        {
          operator delete(block);
          if (v43)
          {
            goto LABEL_22;
          }
        }

        else if (v42)
        {
          goto LABEL_22;
        }

        v56 = (*(*a1 + 64))(a1);
        (*(*a1 + 16))(a1, v56);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v56 + 8), "Incoming INVITE doesn't support 100rel", 38);
        *(v56 + 17) = 0;
        (*(*v56 + 64))(v56, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v56 + 17) = 0;
        *(a1 + 1781) = 0;
        goto LABEL_22;
      }
    }
  }

  v12 = (*(**a2 + 120))();
  v13 = *(v12 + 23);
  v14 = v13;
  if ((v13 & 0x80u) != 0)
  {
    v13 = *(v12 + 8);
  }

  if (v13 != 6 || (v14 >= 0 ? (v15 = v12) : (v15 = *v12), (v16 = *v15, v17 = *(v15 + 4), v16 == *"INVITE") ? (v18 = v17 == *"TE") : (v18 = 0), !v18))
  {
LABEL_22:
    v19 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>>>::find<std::string>(*a2 + 9, "Allow");
    if (v19)
    {
      v20 = v19[5];
      if (v20)
      {
        if (v21)
        {
          if (v21 + 64 != (*(a1 + 30) + 2792))
          {
            std::__tree<std::string>::__assign_multi<std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>>((*(a1 + 30) + 2792), *(v21 + 8), v21 + 9);
          }
        }
      }
    }

    v23 = *a2;
    v22 = a2[1];
    if (v22)
    {
      atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (SipSession::confirmed(a1))
    {
LABEL_74:
      if (v22)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v22);
      }

      v58[0] = 0;
      v58[1] = 0;
      v50 = a2[1];
      if (v50)
      {
        atomic_fetch_add_explicit(v50 + 1, 1uLL, memory_order_relaxed);
      }

      SipResponse::create(200, v58);
    }

    v24 = (*(*v23 + 120))(v23);
    v25 = *(v24 + 23);
    v26 = v25;
    if ((v25 & 0x80u) != 0)
    {
      v25 = *(v24 + 8);
    }

    if (v25 == 5)
    {
      if (v26 >= 0)
      {
        v36 = v24;
      }

      else
      {
        v36 = *v24;
      }

      v29 = *v36;
      v30 = *"PRACK";
      v31 = *(v36 + 4);
      v32 = SipRequest::kMethodPrack[4];
    }

    else
    {
      if (v25 != 6)
      {
        goto LABEL_74;
      }

      if (v26 >= 0)
      {
        v27 = v24;
      }

      else
      {
        v27 = *v24;
      }

      if (*v27 == *"INVITE" && *(v27 + 4) == *"TE")
      {
        goto LABEL_54;
      }

      v29 = *v27;
      v30 = *"UPDATE";
      v31 = *(v27 + 4);
      v32 = *"TE";
    }

    if (v29 != v30 || v31 != v32)
    {
      goto LABEL_74;
    }

LABEL_54:
    v38 = SipMessage::header<SipPEarlyMediaHeader>(v23);
    v39 = SipMessage::header<SipFromHeader>(v23);
    if (v39)
    {
      v40 = SipUriHeader::tag(v39);
    }

    else
    {
      v40 = &ims::kEmptyString;
    }

    SipSession::processEarlyMediaHeader(a1, v38, v40);
    goto LABEL_74;
  }

  v33 = SipMessage::body<SipSdpBody>(*a2);
  if (v33)
  {
    v35 = *(v33 + 1);
    v34 = *(v33 + 2);
    if (v34)
    {
      atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v34 = 0;
    v35 = 0;
  }

  v44 = *(a1 + 104);
  if (!v44 || (v45 = std::__shared_weak_count::lock(v44)) == 0)
  {
    v48 = 0;
    if (!v34)
    {
      goto LABEL_81;
    }

    goto LABEL_70;
  }

  v46 = v45;
  v47 = *(a1 + 103);
  if (!v47)
  {
    goto LABEL_79;
  }

  v48 = 0;
  if ((*(v47 + 785) & 1) == 0 && v35)
  {
    for (i = *(v35 + 448); i != *(v35 + 456); i += 200)
    {
      if (*(i + 12) == 4)
      {
        SipSessionInterface::stack(&block, a1);
        v57 = SipStack::prefs(block);
        v48 = ImsPrefs::RTTUpgradeResponseTimeoutMilliseconds(v57) > 0;
        if (v60)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v60);
        }

        goto LABEL_80;
      }
    }

LABEL_79:
    v48 = 0;
  }

LABEL_80:
  std::__shared_weak_count::__release_shared[abi:ne200100](v46);
  if (!v34)
  {
LABEL_81:
    if (!v48)
    {
      goto LABEL_22;
    }

    goto LABEL_82;
  }

LABEL_70:
  std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  if (!v48)
  {
    goto LABEL_22;
  }

LABEL_82:
  v51 = (*(*a1 + 64))(a1);
  (*(*a1 + 16))(a1, v51);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v51 + 8), "Handling RTT upgrade request", 28);
  *(v51 + 17) = 0;
  (*(*v51 + 64))(v51, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v51 + 17) = 0;
  SipTypedStateMachine<SipSessionState>::transitionToState(a1 + 89, 7);
  v52 = *(a1 + 104);
  if (v52)
  {
    v53 = std::__shared_weak_count::lock(v52);
    if (v53)
    {
      v54 = v53;
      v55 = *(a1 + 103);
      if (v55)
      {
        BambiCall::textSessionDetected(v55);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v54);
    }
  }
}

void sub_1E4E15488(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, std::__shared_weak_count *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, std::__shared_weak_count *a39, void *__p, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  if (v48)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v48);
  }

  if (a9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a9);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v47);
  if (v46)
  {
    std::__shared_weak_count::__release_weak(v46);
    std::__shared_weak_count::__release_weak(v46);
  }

  if (v45)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v45);
  }

  if (a39)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a39);
  }

  _Unwind_Resume(a1);
}

void ___ZN10SipSession27handleInviteOrUpdateRequestENSt3__110shared_ptrIK10SipRequestEENS1_I20SipServerTransactionEE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = (*(*v1 + 64))(v1);
  (*(*v1 + 16))(v1, v2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v2 + 8), "Faking local QoS notification for MT Call", 41);
  *(v2 + 17) = 0;
  (*(*v2 + 64))(v2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v2 + 17) = 0;
  v3 = 0;
  v5 = 0;
  v6 = 0;
  __p = 0;
  std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short const*,unsigned short const*>(&__p, &v3, &__p, 1);
  SipSession::handleQualityOfServiceEstablished(v1, 0xFFFFFFFFLL, 1, &__p, 1);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }
}

void sub_1E4E15734(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL SipOfferAnswer::localSdpPending(SipOfferAnswer *this, std::__shared_weak_count *a2)
{
  if (a2)
  {
    atomic_fetch_add_explicit(&a2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (SipOfferAnswerExchange::empty(this))
  {
    v4 = 1;
    if (!a2)
    {
      return v4;
    }

    goto LABEL_7;
  }

  v4 = SipOfferAnswerExchange::localAnswerPending(this);
  if (a2)
  {
LABEL_7:
    std::__shared_weak_count::__release_shared[abi:ne200100](a2);
  }

  return v4;
}

void sub_1E4E157B8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

BambiCallTerminationReason *SipSession::generateTerminationResponse(BambiCallTerminationReason *result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = result;
    *(a3 + 128) = *(a2 + 60);
    std::string::operator=((a3 + 136), (a2 + 32));
    v5 = (*(*v4 + 64))(v4);
    (*(*v4 + 16))(v4, v5);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "Generating response from call termination reason: ", 50);
    *(v5 + 17) = 0;
    (*(*v5 + 32))(v5, a2 + 8);
    (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v5 + 17) = 0;
    v6 = *(v4 + 200);
    if (v6)
    {
      v7 = *(v6 + 120);
      if (v7)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      }

      v8 = *(v6 + 104);
      if (v8)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      }

      if (*(v6 + 95) < 0)
      {
        operator delete(*(v6 + 72));
      }

      if (*(v6 + 55) < 0)
      {
        operator delete(*(v6 + 32));
      }

      if (*(v6 + 31) < 0)
      {
        operator delete(*(v6 + 8));
      }

      MEMORY[0x1E69235B0](v6, 0x1032C40D4AF1F8FLL);
    }

    operator new();
  }

  return result;
}

void SipSession::generateTerminationResponse(BambiCallTerminationReason *a1, const ImsResult *a2, SipResponse **a3)
{
  v6 = *(a2 + 7);
  {
    SipSessionInterface::terminationReason(a1);
  }

  if (*a3)
  {
    v7 = (*(*a1 + 48))(a1);
    (*(*a1 + 16))(a1, v7);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "Unable to generate call termination reason from result, using ", 62);
    *(v7 + 17) = 0;
    (*(*a2 + 16))(a2, v7);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), " directly.", 10);
    *(v7 + 17) = 0;
    (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v7 + 17) = 0;
    v8 = *a3;

    SipResponse::setStatusFromImsResult(v8, a2);
  }
}

void sub_1E4E15BBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  BambiCallTerminationReason::~BambiCallTerminationReason(va);
  _Unwind_Resume(a1);
}

uint64_t ImsResult::operator<<<char [8]>(uint64_t a1, char *__s)
{
  v4 = *(a1 + 24);
  if (!v4)
  {
    operator new();
  }

  v5 = strlen(__s);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), __s, v5);
  *(v4 + 17) = 0;
  return a1;
}

void SipSession::parseVerstatParams(uint64_t a1, uint64_t *a2)
{
  memset(&v32, 0, sizeof(v32));
  v4 = SipMessage::header<SipPAssertedIdentityHeader>(*a2);
  if (v4)
  {
    v5 = v4;
    if (v4[9] != v4[10])
    {
      __p = 0;
      v30 = 0;
      v31 = 0;
      SipRouteSet::allParams((v4 + 8), &__p);
      SipSessionInterface::stack(&v28, a1);
      v6 = SipStack::prefs(v28.__r_.__value_.__l.__data_);
      v7 = ImsPrefs::EnableBrandedCalling(v6);
      if (v28.__r_.__value_.__l.__size_)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v28.__r_.__value_.__l.__size_);
      }

      if (v7)
      {
        ims::removeQuotes(*v5[9] + 200, &v28);
        v8 = (a1 + 1728);
        if (*(a1 + 1751) < 0)
        {
          operator delete(*v8);
        }

        *v8 = *&v28.__r_.__value_.__l.__data_;
        *(a1 + 1744) = *(&v28.__r_.__value_.__l + 2);
      }

      v9 = __p;
      v10 = v30;
      if (__p != v30)
      {
        do
        {
          v11 = *v9;
          if (*v9 && v11 + 16 != std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(v11 + 8, "verstat"))
          {
            v24 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(v11 + 8, "verstat");
            if (v11 + 16 == v24)
            {
              v25 = &ims::kEmptyString;
            }

            else
            {
              v25 = (v24 + 56);
            }

            SipSession::setVerstatValueFrom(a1, v25, "P-Asserted-Identity");
            goto LABEL_47;
          }

          ++v9;
        }

        while (v9 != v10);
      }

      memset(&v28, 0, sizeof(v28));
      SipRouteSet::allHops((v5 + 8), &v28);
      size = v28.__r_.__value_.__l.__size_;
      v12 = v28.__r_.__value_.__r.__words[0];
      if (v28.__r_.__value_.__r.__words[0] != v28.__r_.__value_.__l.__size_)
      {
        while (1)
        {
          v14 = *v12;
          if (*v12)
          {
            if ((v14 + 80) != std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(v14 + 72, "verstat"))
            {
              v26 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(v14 + 72, "verstat");
              if ((v14 + 80) == v26)
              {
                v27 = &ims::kEmptyString;
              }

              else
              {
                v27 = (v26 + 56);
              }

LABEL_45:
              SipSession::setVerstatValueFrom(a1, v27, "P-Asserted-Identity");
              if (v28.__r_.__value_.__r.__words[0])
              {
                v28.__r_.__value_.__l.__size_ = v28.__r_.__value_.__r.__words[0];
                operator delete(v28.__r_.__value_.__l.__data_);
              }

LABEL_47:
              v23 = __p;
              if (__p)
              {
                v30 = __p;
LABEL_49:
                operator delete(v23);
              }

              return;
            }

            v15 = SipUri::verstatLevel(v14);
            v16 = *(v15 + 23);
            if ((v16 & 0x80u) != 0)
            {
              v16 = *(v15 + 1);
            }

            if (v16)
            {
              v27 = SipUri::verstatLevel(v14);
              goto LABEL_45;
            }
          }

          if (++v12 == size)
          {
            v12 = v28.__r_.__value_.__r.__words[0];
            break;
          }
        }
      }

      if (v12)
      {
        v28.__r_.__value_.__l.__size_ = v12;
        operator delete(v12);
      }

      if (__p)
      {
        v30 = __p;
        operator delete(__p);
      }
    }
  }

  v17 = SipMessage::header<SipFromHeader>(*a2);
  v18 = v17;
  if (v17)
  {
    if (v17 + 80 == std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>((v17 + 72), "verstat"))
    {
      v20 = SipUri::verstatLevel((v18 + 104));
    }

    else
    {
      v19 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>((v18 + 72), "verstat");
      if (v18 + 80 == v19)
      {
        v20 = &ims::kEmptyString;
      }

      else
      {
        v20 = (v19 + 56);
      }
    }

    std::string::operator=(&v32, v20);
    v21 = HIBYTE(v32.__r_.__value_.__r.__words[2]);
    v22 = HIBYTE(v32.__r_.__value_.__r.__words[2]);
    if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v21 = v32.__r_.__value_.__l.__size_;
    }

    if (v21)
    {
      SipSession::setVerstatValueFrom(a1, &v32, "From");
      v22 = HIBYTE(v32.__r_.__value_.__r.__words[2]);
    }

    if (v22 < 0)
    {
      v23 = v32.__r_.__value_.__r.__words[0];
      goto LABEL_49;
    }
  }
}

void sub_1E4E15F74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *SipSession::parseBrandedCallingHeaders(std::string *a1, uint64_t a2)
{
  result = SipMessage::header<SipCallInfoHeader>(a2);
  if (result)
  {
    v4 = result;
    v5 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(result + 72, "purpose");
    if (v4 + 80 == v5)
    {
      v6 = &ims::kEmptyString;
    }

    else
    {
      v6 = (v5 + 56);
    }

    v7 = *(v6 + 23);
    v8 = v7;
    if ((v7 & 0x80u) != 0)
    {
      v7 = *(v6 + 1);
    }

    if (v7 == 4)
    {
      if (v8 < 0)
      {
        v6 = *v6;
      }

      if (*v6 == *"icon")
      {
        (*(*v4 + 40))(v4, a1 + 71);
        ims::chomp(a1 + 71, "<>", 3);
      }
    }

    v9 = (*(a1->__r_.__value_.__r.__words[0] + 64))(a1);
    (*(a1->__r_.__value_.__r.__words[0] + 16))(a1, v9);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), "Call-Info Branded Calling header received [imageUrl=", 52);
    *(v9 + 17) = 0;
    (*(*v9 + 32))(v9, a1 + 71);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), " companyName=", 13);
    *(v9 + 17) = 0;
    (*(*v9 + 32))(v9, a1 + 72);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), "]", 1);
    *(v9 + 17) = 0;
    result = (*(*v9 + 64))(v9, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v9 + 17) = 0;
  }

  return result;
}

void SipSession::parseSpamHeaders(uint64_t a1, uint64_t *a2)
{
  v53 = *MEMORY[0x1E69E9840];
  memset(&v48, 0, sizeof(v48));
  memset(&v47, 0, sizeof(v47));
  v4 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>>>::find<std::string>((*a2 + 72), SipHeader::kHeaderPComNameIdReputation);
  if (v4)
  {
    v5 = v4[5];
    if (v5)
    {
      if (v6)
      {
        v7 = v6;
        v8 = (*(*a1 + 64))(a1);
        (*(*a1 + 16))(a1, v8);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "P-Com SPAM header received", 26);
        *(v8 + 17) = 0;
        (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v8 + 17) = 0;
        v9 = v7 + 80;
        if (v7 + 80 != std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>((v7 + 72), "ccat"))
        {
          v10 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>((v7 + 72), "ccat");
          if (v9 == v10)
          {
            v11 = &ims::kEmptyString;
          }

          else
          {
            v11 = (v10 + 56);
          }

          std::string::operator=(&v48, v11);
        }

        if (v9 != std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>((v7 + 72), "urep"))
        {
          v12 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>((v7 + 72), "urep");
          if (v9 == v12)
          {
            v13 = &ims::kEmptyString;
          }

          else
          {
            v13 = (v12 + 56);
          }

          std::string::operator=(&v47, v13);
        }
      }
    }
  }

  v14 = SipMessage::header<SipCallInfoHeader>(*a2);
  if (v14)
  {
    v15 = (*(*a1 + 64))(a1);
    (*(*a1 + 16))(a1, v15);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), "Call-Info SPAM header received", 30);
    *(v15 + 17) = 0;
    (*(*v15 + 64))(v15, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v15 + 17) = 0;
    v16 = v14 + 80;
    if (v14 + 80 != std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>((v14 + 72), "type"))
    {
      v17 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>((v14 + 72), "type");
      if (v16 == v17)
      {
        v18 = &ims::kEmptyString;
      }

      else
      {
        v18 = (v17 + 56);
      }

      std::string::operator=(&v48, v18);
    }

    if (v16 != std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>((v14 + 72), "confidence"))
    {
      v19 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>((v14 + 72), "confidence");
      if (v16 == v19)
      {
        v20 = &ims::kEmptyString;
      }

      else
      {
        v20 = (v19 + 56);
      }

      std::string::operator=(&v47, v20);
    }
  }

  v21 = *(a1 + 240);
  v22 = *(v21 + 232);
  if (v22)
  {
    v23 = std::__shared_weak_count::lock(v22);
    if (v23)
    {
      v24 = *(v21 + 224);
      if (v24)
      {
        v26 = *(v24 + 248);
        v25 = *(v24 + 256);
        if (v25)
        {
          atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (!v26)
        {
          v37 = *(a1 + 184);
          if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
          {
            (*(*(a1 + 144) + 16))(&__p, a1 + 144);
            v38 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
            *buf = 141558275;
            v50 = 1752392040;
            v51 = 2081;
            v52 = v38;
            _os_log_error_impl(&dword_1E4C3F000, v37, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno user agent", buf, 0x16u);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }
          }

          goto LABEL_69;
        }

        size = HIBYTE(v48.__r_.__value_.__r.__words[2]);
        if ((v48.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          size = v48.__r_.__value_.__l.__size_;
        }

        if (size)
        {
          v28 = SipUserAgent::config(v26);
          *(a1 + 1672) = SpamCategoryMap::categoryForString(v28 + 1248, &v48);
          v29 = (*(*a1 + 64))(a1);
          (*(*a1 + 16))(a1, v29);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v29 + 8), "Found spam category ", 20);
          *(v29 + 17) = 0;
          (*(*v29 + 32))(v29, &v48);
          *(v29 + 17) = 0;
          ims::toString<ims::SpamCategory>((a1 + 1672), &__p);
          (*(*v29 + 32))(v29, &__p);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v29 + 8), "')", 2);
          *(v29 + 17) = 0;
          (*(*v29 + 64))(v29, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v29 + 17) = 0;
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        v30 = HIBYTE(v47.__r_.__value_.__r.__words[2]);
        if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v30 = v47.__r_.__value_.__l.__size_;
        }

        if (v30)
        {
          v31 = SipUserAgent::config(v26);
          __p.__r_.__value_.__r.__words[0] = 0;
          v32 = ims::strToLong(&v47, &__p) ? LODWORD(__p.__r_.__value_.__l.__data_) : 0;
          *(a1 + 1676) = SpamRiskMap::classifyRisk((v31 + 1272), v32);
          v33 = (*(*a1 + 64))(a1);
          (*(*a1 + 16))(a1, v33);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v33 + 8), "Found spam risk ", 16);
          *(v33 + 17) = 0;
          (*(*v33 + 32))(v33, &v47);
          *(v33 + 17) = 0;
          v34 = *(a1 + 1676) - 1;
          v35 = v34 > 2 ? "none" : off_1E876A0C0[v34];
          std::string::basic_string[abi:ne200100]<0>(&__p, v35);
          (*(*v33 + 32))(v33, &__p);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v33 + 8), "')", 2);
          *(v33 + 17) = 0;
          (*(*v33 + 64))(v33, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v33 + 17) = 0;
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        v40 = *(a1 + 240);
        v39 = *(a1 + 248);
        if (v39)
        {
          atomic_fetch_add_explicit(&v39->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v39);
          if (v40)
          {
            v40 = *(a1 + 240);
            v41 = *(a1 + 248);
            if (v41)
            {
              v42 = 0;
              atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
LABEL_64:
              SipDialog::dialogId(&__p, v40);
              v43 = (a1 + 1680);
              if (*(a1 + 1703) < 0)
              {
                operator delete(*v43);
              }

              *v43 = *&__p.__r_.__value_.__l.__data_;
              *(a1 + 1696) = *(&__p.__r_.__value_.__l + 2);
              *(&__p.__r_.__value_.__s + 23) = 0;
              __p.__r_.__value_.__s.__data_[0] = 0;
              if ((v42 & 1) == 0)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v41);
              }

              v44 = (*(*a1 + 64))(a1);
              (*(*a1 + 16))(a1, v44);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v44 + 8), "Using dialog-id ", 16);
              *(v44 + 17) = 0;
              (*(*v44 + 32))(v44, a1 + 1680);
              (*(*v44 + 64))(v44, std::endl[abi:ne200100]<char,std::char_traits<char>>);
              *(v44 + 17) = 0;
              goto LABEL_69;
            }

LABEL_63:
            v42 = 1;
            goto LABEL_64;
          }
        }

        else if (v40)
        {
          v41 = 0;
          goto LABEL_63;
        }

LABEL_69:
        if (v25)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v25);
        }

LABEL_71:
        std::__shared_weak_count::__release_shared[abi:ne200100](v23);
        goto LABEL_72;
      }
    }
  }

  else
  {
    v23 = 0;
  }

  v36 = *(a1 + 184);
  if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
  {
    (*(*(a1 + 144) + 16))(&__p, a1 + 144);
    v45 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
    *buf = 141558275;
    v50 = 1752392040;
    v51 = 2081;
    v52 = v45;
    _os_log_error_impl(&dword_1E4C3F000, v36, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno sipstack", buf, 0x16u);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  if (v23)
  {
    goto LABEL_71;
  }

LABEL_72:
  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v47.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v48.__r_.__value_.__l.__data_);
  }
}

void sub_1E4E16BC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(a1);
}

void *SipMessage::header<SipPBambiCallIdHeader>(uint64_t a1)
{
  v1 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>>>::find<std::string>((a1 + 72), "P-Bambi-Call-ID");
  if (!v1)
  {
    return 0;
  }

  v2 = v1[5];
  if (!v2)
  {
    return 0;
  }
}

void SipSession::setVerstatValueFrom(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (*(*a1 + 64))(a1);
  (*(*a1 + 16))(a1, v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "found verstat parameter '", 25);
  *(v6 + 17) = 0;
  (*(*v6 + 32))(v6, a2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "' in ", 5);
  *(v6 + 17) = 0;
  (*(*v6 + 32))(v6, a3);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), " header", 7);
  *(v6 + 17) = 0;
  (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v6 + 17) = 0;
  *(a1 + 1664) = 1;
  std::string::basic_string[abi:ne200100]<0>(v26, "TN-Validation-Passed");
  if (*(a2 + 23) >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  v8 = v27;
  v9 = v26[0];
  if (v27 >= 0)
  {
    v10 = v26;
  }

  else
  {
    v10 = v26[0];
  }

  v11 = strcasecmp(v7, v10);
  v12 = v11;
  if ((v8 & 0x80000000) == 0)
  {
    if (v11)
    {
      goto LABEL_9;
    }

LABEL_27:
    v25 = 1;
LABEL_30:
    *(a1 + 1668) = v25;
    return;
  }

  operator delete(v9);
  if (!v12)
  {
    goto LABEL_27;
  }

LABEL_9:
  std::string::basic_string[abi:ne200100]<0>(v26, "TN-Validation-Failed");
  if (*(a2 + 23) >= 0)
  {
    v13 = a2;
  }

  else
  {
    v13 = *a2;
  }

  v14 = v27;
  v15 = v26[0];
  if (v27 >= 0)
  {
    v16 = v26;
  }

  else
  {
    v16 = v26[0];
  }

  v17 = strcasecmp(v13, v16);
  v18 = v17;
  if (v14 < 0)
  {
    operator delete(v15);
    if (v18)
    {
      goto LABEL_17;
    }

    goto LABEL_29;
  }

  if (!v17)
  {
LABEL_29:
    v25 = 2;
    goto LABEL_30;
  }

LABEL_17:
  std::string::basic_string[abi:ne200100]<0>(v26, "No-TN-Validation");
  if (*(a2 + 23) >= 0)
  {
    v19 = a2;
  }

  else
  {
    v19 = *a2;
  }

  v20 = v27;
  v21 = v26[0];
  if (v27 >= 0)
  {
    v22 = v26;
  }

  else
  {
    v22 = v26[0];
  }

  v23 = strcasecmp(v19, v22);
  v24 = v23;
  if (v20 < 0)
  {
    operator delete(v21);
    if (v24)
    {
      goto LABEL_25;
    }
  }

  else if (v23)
  {
LABEL_25:
    *(a1 + 1664) = 0;
    return;
  }

  *(a1 + 1668) = 0;
}

void *SipMessage::header<SipCallInfoHeader>(uint64_t a1)
{
  v1 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>>>::find<std::string>((a1 + 72), "Call-Info");
  if (!v1)
  {
    return 0;
  }

  v2 = v1[5];
  if (!v2)
  {
    return 0;
  }
}

void *SipMessage::header<SipFromHeader>(uint64_t a1)
{
  v1 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>>>::find<std::string>((a1 + 72), "From");
  if (!v1)
  {
    return 0;
  }

  v2 = v1[5];
  if (!v2)
  {
    return 0;
  }
}

void SipSession::sendUpdate(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if ((*(*a1 + 264))(a1))
  {
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    __p[0] = &unk_1F5EBDEF8;
    __p[1] = &_bambiDomain;
    v21 = 1073741826;
    v6 = ImsResult::operator<<<char [45]>(__p, "can't send an UPDATE in a terminated session");
    v7 = ImsLogContainer::logResult(a1, v6);
    ImsResult::ImsResult(a3, v7);
    ImsResult::~ImsResult(__p);
  }

  else
  {
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    if (byte_1EE2BD497 >= 0)
    {
      v9 = &SipSession::kUpdateTypeEmergencyLocationUpdate;
    }

    else
    {
      v9 = SipSession::kUpdateTypeEmergencyLocationUpdate;
    }

    v10 = strcasecmp(v8, v9);
    v18 = 0;
    v19 = 0;
    SipDialog::createRequestInDialog(*(a1 + 240), &v18);
    if (!v10)
    {
      v11 = v19;
      v17[0] = v18;
      v17[1] = v19;
      if (v19)
      {
        atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      SipSession::addLocationToMessage(a1, v17);
      if (v11)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v11);
      }
    }

    v15 = 0;
    v16 = 0;
    v12 = v19;
    v14[0] = v18;
    v14[1] = v19;
    if (v19)
    {
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(__p, &str_24_0);
    SipSession::sendRequest(&v15, a1, v14, __p);
    if (v22 < 0)
    {
      operator delete(__p[0]);
    }

    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }

    if (v15)
    {
      __p[0] = "UpdateType";
      v13 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((v15 + 368), "UpdateType", &std::piecewise_construct, __p, &v27);
      std::string::operator=((v13 + 7), a2);
    }

    *(a3 + 24) = 0u;
    *(a3 + 40) = 0u;
    *(a3 + 56) = 0u;
    *(a3 + 72) = 0u;
    *a3 = &unk_1F5EBDEF8;
    *(a3 + 8) = &_bambiDomain;
    *(a3 + 16) = 0;
    if (v16)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    }

    if (v19)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v19);
    }
  }
}

void sub_1E4E172CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  _Unwind_Resume(exception_object);
}

void SipSession::handleSessionMovedResponse(uint64_t a1, SipSession *a2, uint64_t *a3, uint64_t a4)
{
  *(a1 + 400) = 0;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  SipUri::SipUri(a1);
  v8 = *(*a4 + 264);
  v9 = *(*a4 + 272);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = (*(*v8 + 120))(v8);
  v11 = *(v10 + 23);
  v12 = v11;
  if ((v11 & 0x80u) != 0)
  {
    v11 = *(v10 + 8);
  }

  if (v11 != 6)
  {
    v17 = 0;
    if (!v9)
    {
      goto LABEL_19;
    }

LABEL_18:
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    goto LABEL_19;
  }

  if (v12 >= 0)
  {
    v13 = v10;
  }

  else
  {
    v13 = *v10;
  }

  v14 = *v13;
  v15 = *(v13 + 4);
  v17 = v14 == *"INVITE" && v15 == *"TE";
  if (v9)
  {
    goto LABEL_18;
  }

LABEL_19:
  if (v17 && (SipSession::confirmed(a2) & 1) == 0)
  {
    v25 = 0;
    SipMessage::headerValueAsUint32(*a3, "Expires", &v25);
    v18 = SipMessage::header<SipContactHeader>(*a3);
    if (v18)
    {
      v19 = v18[9];
      if (v19)
      {
        if (v19 != v18[10])
        {
          v20 = v25;
          if (!v25)
          {
            v20 = SipParameterMap::uintParameter(v19 + 416, "expires", 0);
          }

          SipUri::operator=(a1, v19 + 8);
          memset(v24, 0, sizeof(v24));
          v22 = 0u;
          *v23 = 0u;
          v21 = time(0);
          BambiCallSessionMovedEvent::BambiCallSessionMovedEvent(&v22, (v19 + 8), v20 + v21);
          SipSession::fireCallEvent(a2, &v22);
          *&v22 = &unk_1F5ED0A18;
          SipUri::~SipUri(v24);
          *&v22 = &unk_1F5EC4090;
          if (v23[1])
          {
            std::__shared_weak_count::__release_weak(v23[1]);
          }
        }
      }
    }
  }
}

void sub_1E4E17574(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  BambiCallSessionMovedEvent::~BambiCallSessionMovedEvent(&a9);
  SipUri::~SipUri(v9);
  _Unwind_Resume(a1);
}

void *SipMessage::header<SipContactHeader>(uint64_t a1)
{
  v1 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>>>::find<std::string>((a1 + 72), "Contact");
  if (!v1)
  {
    return 0;
  }

  v2 = v1[5];
  if (!v2)
  {
    return 0;
  }
}

void SDPSession::applyOnStreams<SipSession::handleInviteOrUpdateErrorResponse(std::shared_ptr<SipResponse const>,std::shared_ptr<SipClientTransaction>,std::shared_ptr<SipDialogFork>)::$_0>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *a1 = &unk_1F5EBDEF8;
  *(a1 + 8) = &_bambiDomain;
  *(a1 + 16) = 0;
  v3 = *(a2 + 1904);
  v4 = (a2 + 1912);
  if (v3 != (a2 + 1912))
  {
    while (1)
    {
      v7 = v3[5];
      v8 = *a3;
      std::string::basic_string[abi:ne200100]<0>(&__p, "ReInviteUpgradeFailure");
      BambiCall::activateMediaSessionIfAppropriate(v8, v7, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v16 = 0u;
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      v13 = &unk_1F5EBDEF8;
      v14 = &_bambiDomain;
      v15 = 0;
      ImsResult::operator=(a1, &v13);
      ImsResult::~ImsResult(&v13);
      v16 = 0u;
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      v13 = &unk_1F5EBDEF8;
      v14 = &_bambiDomain;
      v15 = 0;
      if (*(a1 + 8) != &_bambiDomain)
      {
        break;
      }

      v9 = *(a1 + 16);
      ImsResult::~ImsResult(&v13);
      if (!v9)
      {
        v10 = v3[1];
        if (v10)
        {
          do
          {
            v11 = v10;
            v10 = *v10;
          }

          while (v10);
        }

        else
        {
          do
          {
            v11 = v3[2];
            v12 = *v11 == v3;
            v3 = v11;
          }

          while (!v12);
        }

        v3 = v11;
        if (v11 != v4)
        {
          continue;
        }
      }

      return;
    }

    ImsResult::~ImsResult(&v13);
  }
}

void sub_1E4E177F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  ImsResult::~ImsResult(&a9);
  ImsResult::~ImsResult(v25);
  _Unwind_Resume(a1);
}

void SipSession::handleInviteResponseToCancel(void *a1, uint64_t *a2, uint64_t *a3)
{
  v23 = 0;
  *&v24.__r_.__value_.__r.__words[1] = 0u;
  v30 = 0;
  v28 = 0u;
  v29 = 0u;
  *&v26[16] = 0u;
  v27 = 0u;
  v25 = 0u;
  *v26 = 0u;
  *(&v24.__r_.__value_.__s + 23) = 13;
  qmemcpy(&v24, "InternalError", 13);
  *&v26[12] = 0xA000001F4;
  v4 = *a2;
  if ((*(*a2 + 128) - 200) <= 0x63)
  {
    v5 = a3[1];
    v21 = *a3;
    v22 = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      v4 = *a2;
    }

    v6 = a2[1];
    v19 = v4;
    v20 = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    SipSessionInterface::addAckRetransmitHandlerForClientTransaction(a1, &v21, &v19, 0);
    if (v20)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v20);
    }

    if (v22)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v22);
    }
  }

  v7 = a1[200];
  if (v7)
  {
    LODWORD(v23) = *v7;
    std::string::operator=(&v24, (v7 + 8));
    std::string::operator=(&v25, (v7 + 32));
    v8 = *(v7 + 56);
    *&v26[16] = *(v7 + 64);
    *&v26[8] = v8;
    std::string::operator=(&v26[24], (v7 + 72));
    v10 = *(v7 + 96);
    v9 = *(v7 + 104);
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
    }

    v11 = *(&v28 + 1);
    *&v28 = v10;
    *(&v28 + 1) = v9;
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }

    v13 = *(v7 + 112);
    v12 = *(v7 + 120);
    if (v12)
    {
      atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
    }

    v14 = *(&v29 + 1);
    *&v29 = v13;
    *(&v29 + 1) = v12;
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    }

    v15 = *(v7 + 128);
    *(&v30 + 3) = *(v7 + 131);
    LODWORD(v30) = v15;
  }

  v16 = 0;
  v17 = 0;
  (*(*a1 + 120))(v18, a1, &v23, 0, &v16);
  ImsResult::~ImsResult(v18);
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  if (*(&v29 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v29 + 1));
  }

  if (*(&v28 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v28 + 1));
  }

  if (SHIBYTE(v27) < 0)
  {
    operator delete(*&v26[24]);
  }

  if ((v26[7] & 0x80000000) != 0)
  {
    operator delete(v25);
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }
}

void sub_1E4E17A58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24, uint64_t a25, std::__shared_weak_count *a26, ...)
{
  va_start(va, a26);
  if (a24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a24);
  }

  if (a26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a26);
  }

  BambiCallTerminationReason::~BambiCallTerminationReason(va);
  _Unwind_Resume(a1);
}

void *SipMessage::header<SipPEarlyMediaHeader>(uint64_t a1)
{
  v1 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>>>::find<std::string>((a1 + 72), "P-Early-Media");
  if (!v1)
  {
    return 0;
  }

  v2 = v1[5];
  if (!v2)
  {
    return 0;
  }
}

void SipSession::processEarlyMediaHeader(uint64_t a1, uint64_t a2, std::string *a3)
{
  if (!a2)
  {
    return;
  }

  v6 = (*(*a1 + 64))(a1);
  (*(*a1 + 16))(a1, v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "Processing early media header", 29);
  *(v6 + 17) = 0;
  (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v6 + 17) = 0;
  v7 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(a2 + 64, "sendrecv");
  if (a2 + 72 != v7)
  {
    v8 = 1;
LABEL_13:
    v16 = 2;
    goto LABEL_14;
  }

  v9 = v7;
  if (v7 != std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(a2 + 64, "sendonly"))
  {
    v8 = 3;
    goto LABEL_13;
  }

  if (v9 == std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(a2 + 64, "inactive"))
  {
    return;
  }

  v10 = *(a1 + 832);
  if (v10 && (v11 = std::__shared_weak_count::lock(v10)) != 0)
  {
    v12 = v11;
    v13 = *(a1 + 824);
    if (!v13)
    {
      goto LABEL_59;
    }

    v14 = *(v13 + 384);
    if (v14)
    {
      v14 = std::__shared_weak_count::lock(v14);
      v15 = v14;
      if (v14)
      {
        v14 = *(v13 + 376);
      }
    }

    else
    {
      v15 = 0;
    }

    v28 = SipStack::prefs(v14);
    v29 = ImsPrefs::EnforceEarlyMediaInactiveDirection(v28);
    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    }

    if (v29)
    {
      v16 = 2;
    }

    else
    {
LABEL_59:
      v16 = 1;
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    v8 = 4;
  }

  else
  {
    v8 = 4;
    v16 = 1;
  }

LABEL_14:
  v17 = *(a1 + 832);
  if (v17)
  {
    v18 = std::__shared_weak_count::lock(v17);
    if (v18)
    {
      v19 = *(a1 + 824);
      if (v19)
      {
        if (v8 == 3)
        {
          v20 = 2;
        }

        else
        {
          v20 = v8;
        }

        *(v19 + 488) = v20;
      }
    }
  }

  else
  {
    v18 = 0;
  }

  v21 = *(a1 + 240);
  v22 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(v21 + 2944, a3);
  if (v21 + 2952 == v22)
  {
    v24 = 0;
LABEL_29:
    v25 = (*(*a1 + 56))(a1);
    (*(*a1 + 16))(a1, v25);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v25 + 8), "processEarlyMediaHeader: Fork not found. Fork tag: ", 51);
    *(v25 + 17) = 0;
    ObfuscatedString::ObfuscatedString(&v30, a3);
    (*(*v25 + 56))(v25, &v30);
    if (v32 < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v30.__r_.__value_.__l.__data_);
    }

    goto LABEL_35;
  }

  v23 = *(v22 + 56);
  v24 = *(v22 + 64);
  if (v24)
  {
    atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v23)
  {
    goto LABEL_29;
  }

  if (v8 == 3)
  {
    v8 = 2;
  }

  *(v23 + 984) = v8;
LABEL_35:
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  if (*(a1 + 1500) != v16)
  {
    v26 = (*(*a1 + 64))(a1);
    (*(*a1 + 16))(a1, v26);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v26 + 8), "Setting early media support level to: ", 38);
    *(v26 + 17) = 0;
    if (v16 == 1)
    {
      v27 = "kEarlyMediaSupportInactive";
    }

    else
    {
      v27 = "kEarlyMediaSupportEnforced";
    }

    std::string::basic_string[abi:ne200100]<0>(&v35, v27);
    LoggableString::LoggableString(&v30, &v35);
    (*(*v26 + 40))(v26, &v30);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v26 + 8), " was: ", 6);
    *(v26 + 17) = 0;
    std::string::basic_string[abi:ne200100]<0>(&v33, off_1E876A0D8[*(a1 + 1500)]);
    LoggableString::LoggableString(&v34, &v33);
    (*(*v26 + 40))(v26, &v34);
    (*(*v26 + 64))(v26, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v26 + 17) = 0;
    if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v34.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v33.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v30.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v35.__r_.__value_.__l.__data_);
    }

    *(a1 + 1500) = v16;
  }

  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }
}

void sub_1E4E18034(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  _Unwind_Resume(a1);
}

uint64_t SipSession::handleInviteOrUpdateResponse(std::__shared_weak_count *a1, uint64_t *a2, uint64_t *a3)
{
  v285 = *MEMORY[0x1E69E9840];
  v6 = a1[10].__vftable;
  v7 = SipMessage::header<SipToHeader>(*a2);
  v8 = &ims::kEmptyString;
  if (v7)
  {
    v8 = SipUriHeader::tag(v7);
  }

  v9 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(&v6[73].__get_deleter, v8);
  if (&v6[73].__on_zero_shared_weak == v9)
  {
    v10 = 0;
LABEL_26:
    v24 = (a1->__vftable[1].__on_zero_shared)(a1);
    (a1->__on_zero_shared)(a1, v24);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v24 + 8), "handleInviteOrUpdateResponse: no fork with remote tag ", 54);
    *(v24 + 17) = 0;
    v25 = SipMessage::header<SipToHeader>(*a2);
    if (v25)
    {
      v26 = SipUriHeader::tag(v25);
    }

    else
    {
      v26 = &ims::kEmptyString;
    }

    ObfuscatedString::ObfuscatedString(&v251, v26);
    (*(*v24 + 56))(v24, &v251);
    (*(*v24 + 64))(v24, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v24 + 17) = 0;
    if (SHIBYTE(v253) < 0)
    {
      operator delete(*(&v252 + 1));
    }

    if (SBYTE7(v252) < 0)
    {
      operator delete(v251);
    }

    if (LOBYTE(a1[60].__shared_owners_) == 1)
    {
      v27 = *a2;
      if (*(*a2 + 159) < 0)
      {
        std::string::__init_copy_ctor_external(&v251, *(v27 + 136), *(v27 + 144));
        v27 = *a2;
      }

      else
      {
        v251 = *(v27 + 136);
        *&v252 = *(v27 + 152);
      }

      SipSession::logLazuliMessageSessionSetup(a1, &v251, *(v27 + 128));
      if (SBYTE7(v252) < 0)
      {
        operator delete(v251);
      }
    }

    goto LABEL_211;
  }

  v11 = *(v9 + 56);
  v10 = *(v9 + 64);
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v11)
  {
    goto LABEL_26;
  }

  data = v11[32].__r_.__value_.__l.__data_;
  size = v11[32].__r_.__value_.__l.__size_;
  if (size)
  {
    atomic_fetch_add_explicit((size + 8), 1uLL, memory_order_relaxed);
  }

  v14 = *(*a3 + 264);
  v15 = *(*a3 + 272);
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v234 = size;
  v16 = (*(*v14 + 120))(v14);
  v17 = *(v16 + 23);
  v18 = v17;
  if ((v17 & 0x80u) != 0)
  {
    v17 = *(v16 + 8);
  }

  if (v17 != 6)
  {
    v23 = 0;
    if (!v15)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

  if (v18 >= 0)
  {
    v19 = v16;
  }

  else
  {
    v19 = *v16;
  }

  v20 = *v19;
  v21 = *(v19 + 4);
  v23 = v20 == *"INVITE" && v21 == *"TE";
  if (v15)
  {
LABEL_37:
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

LABEL_38:
  if (!v23)
  {
    goto LABEL_75;
  }

  if ((*(*a2 + 128) - 200) <= 0xFFFFFF9B)
  {
    v28 = *a3;
    v29 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(*a3 + 368, "InviteType");
    v30 = &ims::kEmptyString;
    if (v28 + 376 != v29)
    {
      v30 = (v29 + 56);
    }

    v31 = *(v30 + 23);
    v32 = v31;
    if ((v31 & 0x80u) != 0)
    {
      v31 = *(v30 + 1);
    }

    if (v31 != 10)
    {
      goto LABEL_51;
    }

    if (v32 < 0)
    {
      v30 = *v30;
    }

    v33 = *v30;
    v34 = *(v30 + 4);
    if (v33 == 0x69766E49646C6F48 && v34 == 25972)
    {
      v44 = "HoldTimer";
    }

    else
    {
LABEL_51:
      v36 = *a3;
      v37 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(*a3 + 368, "InviteType");
      v38 = &ims::kEmptyString;
      if (v36 + 376 != v37)
      {
        v38 = (v37 + 56);
      }

      v39 = *(v38 + 23);
      v40 = v39;
      if ((v39 & 0x80u) != 0)
      {
        v39 = *(v38 + 1);
      }

      if (v39 != 12)
      {
        goto LABEL_70;
      }

      if (v40 < 0)
      {
        v38 = *v38;
      }

      v41 = *v38;
      v42 = *(v38 + 2);
      if (v41 != 0x6E49656D75736552 || v42 != 1702127990)
      {
        goto LABEL_70;
      }

      v44 = "ResumeTimer";
    }

    SipTimerContainer::cancelTimer(&a1[11], v44);
  }

LABEL_70:
  if ((SipSession::confirmed(a1) & 1) == 0)
  {
    if (SipSession::emergency(a1))
    {
      if ((*(*a2 + 128) - 300) >= 0xFFFFFF39)
      {
        SipSessionInterface::stack(&v251, a1);
        SipTimerContainer::cancelTimer((*(v251 + 4512) + 5072), &kEmergencySessionSetupTimer);
        if (*(&v251 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v251 + 1));
        }
      }
    }
  }

LABEL_75:
  v45 = a2[1];
  v235 = *a2;
  if (*(*a2 + 128) < 0x12Cu)
  {
    if (v45)
    {
      atomic_fetch_add_explicit(&v45->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v54 = *(*a3 + 264);
    v55 = *(*a3 + 272);
    if (v55)
    {
      atomic_fetch_add_explicit(&v55->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v56 = (*(*v54 + 120))(v54);
    if ((SipSession::confirmed(a1) & 1) == 0)
    {
      v57 = *(v235 + 128);
      if ((v57 - 180) > 9)
      {
        if ((v57 - 200) > 0x63)
        {
          goto LABEL_234;
        }

        v62 = *(v56 + 23);
        v63 = v62;
        if ((v62 & 0x80u) != 0)
        {
          v62 = *(v56 + 8);
        }

        if (v62 != 6)
        {
          if (v62 != 5)
          {
            goto LABEL_234;
          }

          if (v63 >= 0)
          {
            v64 = v56;
          }

          else
          {
            v64 = *v56;
          }

          v65 = *v64;
          v66 = *"PRACK";
          v67 = *(v64 + 4);
          v68 = SipRequest::kMethodPrack[4];
          goto LABEL_219;
        }

        if (v63 >= 0)
        {
          v60 = v56;
        }

        else
        {
          v60 = *v56;
        }

        v61 = "UPDATE";
LABEL_218:
        v65 = *v60;
        v66 = *v61;
        v67 = *(v60 + 4);
        v68 = *(v61 + 2);
LABEL_219:
        if (v65 == v66 && v67 == v68)
        {
          v110 = SipMessage::header<SipPEarlyMediaHeader>(v235);
          v111 = SipMessage::header<SipToHeader>(v235);
          if (v111)
          {
            v112 = SipUriHeader::tag(v111);
          }

          else
          {
            v112 = &ims::kEmptyString;
          }

          SipSession::processEarlyMediaHeader(a1, v110, v112);
        }

        goto LABEL_234;
      }

      v58 = *(v56 + 23);
      v59 = v58;
      if ((v58 & 0x80u) != 0)
      {
        v58 = *(v56 + 8);
      }

      if (v58 == 6)
      {
        if (v59 >= 0)
        {
          v60 = v56;
        }

        else
        {
          v60 = *v56;
        }

        v61 = "INVITE";
        goto LABEL_218;
      }
    }

LABEL_234:
    if (v55)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v55);
    }

    if (v45)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v45);
    }

    *buf = 0;
    *&buf[8] = 0;
    SipSessionInterface::stack(buf, a1);
    if (*buf)
    {
      if (*(*buf + 2817) == 1)
      {
        v115 = SipMessage::header<SipContactHeader>(*a2);
        if (v115)
        {
          v116 = v115[9];
          if (v116)
          {
            if (v116 != v115[10] && SipUri::isValidUri((v116 + 8)))
            {
              v117 = a1[10].__vftable;
              std::string::basic_string[abi:ne200100]<0>(&v251, "+g.gsma.rcs.isbot");
              LOBYTE(v117[67].~__shared_weak_count_0) = v116 + 432 != std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(v116 + 424, &v251);
              if (SBYTE7(v252) < 0)
              {
                operator delete(v251);
              }

              SipUri::operator=(&a1[10].__vftable[48].__on_zero_shared, v116 + 8);
            }
          }
        }
      }
    }

    if (*&buf[8])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
    }

    v118 = a2[1];
    v248 = *a2;
    v249 = v118;
    if (v118)
    {
      atomic_fetch_add_explicit(&v118->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v119 = *a3;
    shared_owners = a1[10].__shared_owners_;
    v246 = a1[10].__vftable;
    v247 = shared_owners;
    if (shared_owners)
    {
      atomic_fetch_add_explicit(&shared_owners->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    SipOfferAnswer::updateWithIncomingResponse(data, &v248, (v119 + 312), &v251);
    v121 = (*(**(&v251 + 1) + 24))(*(&v251 + 1), v252);
    ImsResult::~ImsResult(&v251);
    if (v247)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v247);
    }

    if (v249)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v249);
    }

    v122 = a2[1];
    v244 = *a2;
    v245 = v122;
    if (v122)
    {
      atomic_fetch_add_explicit(&v122->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    SipDialogFork::handleTargetRefresh(v11, &v244);
    if (v245)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v245);
    }

    if (v23)
    {
      v123 = *a2;
      if ((*(*a2 + 128) - 200) <= 0x63)
      {
        v124 = a3[1];
        v242 = *a3;
        v243 = v124;
        if (v124)
        {
          atomic_fetch_add_explicit(&v124->__shared_owners_, 1uLL, memory_order_relaxed);
          v123 = *a2;
        }

        v125 = a2[1];
        v240 = v123;
        v241 = v125;
        if (v125)
        {
          atomic_fetch_add_explicit(&v125->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v126 = SipOfferAnswer::localAnswerPending(*(*(data + 27) + 16), *(*(data + 27) + 24));
        SipSessionInterface::addAckRetransmitHandlerForClientTransaction(a1, &v242, &v240, v126);
        if (v241)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v241);
        }

        if (v243)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v243);
        }
      }
    }

    if (v121)
    {
      if (*(*a2 + 128) - 200) >= 0x64 || !v23 || (SipSession::confirmed(a1))
      {
        *&v259 = 0;
        v257 = 0u;
        v258 = 0u;
        v255 = 0u;
        v256 = 0u;
        v253 = 0u;
        v254 = 0u;
        v251 = 0u;
        v252 = 0u;
        std::string::basic_string[abi:ne200100]<0>(buf, "InvalidSdp");
        SipSessionInterface::terminationReason(a1);
      }

      if (LOBYTE(a1[60].__shared_owners_) == 1)
      {
        v132 = qword_1EE2BD560;
        if (qword_1EE2BD560)
        {
          v133 = &qword_1EE2BD560;
          do
          {
            v134 = *(v132 + 32);
            v135 = v134 >= 0x25E;
            v136 = v134 < 0x25E;
            if (v135)
            {
              v133 = v132;
            }

            v132 = *(v132 + 8 * v136);
          }

          while (v132);
          v137 = &ims::kEmptyString;
          if (v133 != &qword_1EE2BD560)
          {
            v138 = *(v133 + 8);
            v139 = (v133 + 5);
            if (v138 <= 0x25E)
            {
              v137 = v139;
            }
          }
        }

        else
        {
          v137 = &ims::kEmptyString;
        }

        SipSession::logLazuliMessageSessionSetup(a1, v137, 0x25Eu);
      }

      std::string::basic_string[abi:ne200100]<0>(&v251, "ReceivedRejectSdp");
      SipSession::bye(a1, &v251, 0);
    }

    shared_weak_owners = a1[61].__shared_weak_owners_;
    v128 = a2[1];
    v239[0] = *a2;
    v239[1] = v128;
    if (v128)
    {
      atomic_fetch_add_explicit(&v128->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v107 = v234;
    SipSessionTimer::updateFromIncomingResponse(shared_weak_owners, v239);
    if (v128)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v128);
    }

    if (!SipSession::confirmed(a1) || BYTE1(a1[38].__vftable) == 1)
    {
      v129 = a1[64].__vftable;
      v130 = a2[1];
      v237 = *a2;
      v238 = v130;
      if (v130)
      {
        atomic_fetch_add_explicit(&v130->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      SipSession::confirmed(a1);
      SipPreconditions::updateFromIncomingMessage(v129, v11 + 11, &v237);
      if (v238)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v238);
      }
    }

    if (v23 && (SipSession::confirmed(a1) & 1) == 0 && *(*a2 + 128) == 183)
    {
      SipSession::startLocalQosTimerMO(a1);
    }

    if (SipResponse::requiresPrack(*a2))
    {
      v131 = (a1->__vftable[1].__get_deleter)(a1);
      (a1->__on_zero_shared)(a1, v131);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v131 + 8), "waiting for PRACK to complete before sending precondition update", 64);
      *(v131 + 17) = 0;
      (*(*v131 + 64))(v131, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v131 + 17) = 0;
    }

    else if (!v23 || (*(*a2 + 128) - 200) >= 0xFFFFFF9C)
    {
      SipDialogFork::sendPreconditionUpdate(v236, v11, 1);
      ImsResult::~ImsResult(v236);
    }

    if (v234)
    {
      goto LABEL_210;
    }

    goto LABEL_211;
  }

  v46 = a2[1];
  if (v45)
  {
    atomic_fetch_add_explicit(&v45->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v48 = *a3;
  v47 = a3[1];
  if (v47)
  {
    atomic_fetch_add_explicit(&v47->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v49 = *(v48 + 264);
  v50 = *(v48 + 272);
  if (v50)
  {
    atomic_fetch_add_explicit(&v50->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v232 = v49;
  v233 = v50;
  v51 = SipMessage::body<SipSdpBody>(v49);
  if (v51)
  {
    v52 = *(v51 + 1);
    v53 = *(v51 + 2);
    if (v53)
    {
      atomic_fetch_add_explicit(&v53->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!v52)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v53);
        goto LABEL_122;
      }
    }

    else if (!v52)
    {
      goto LABEL_122;
    }

    v69 = v11[32].__r_.__value_.__l.__data_;
    v70 = v11[32].__r_.__value_.__l.__size_;
    if (v70)
    {
      atomic_fetch_add_explicit(&v70->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v71 = SipOfferAnswer::remoteAnswerPending(v69);
    if (v70)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v70);
    }

    if (v53)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v53);
      if (!v71)
      {
        goto LABEL_122;
      }
    }

    else if (!v71)
    {
      goto LABEL_122;
    }

    v72 = (a1->__vftable[1].__get_deleter)(a1);
    (a1->__on_zero_shared)(a1, v72);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v72 + 8), "reverting offer/answer state after failed session renegotiation", 63);
    *(v72 + 17) = 0;
    (*(*v72 + 64))(v72, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v72 + 17) = 0;
    v73 = v11[32].__r_.__value_.__l.__data_;
    v74 = v11[32].__r_.__value_.__l.__size_;
    if (v74)
    {
      atomic_fetch_add_explicit((v74 + 8), 1uLL, memory_order_relaxed);
    }

    SipOfferAnswer::revert(v73);
  }

LABEL_122:
  v75 = *(v235 + 128);
  if (v75 == 302)
  {
    *buf = v235;
    *&buf[8] = v46;
    if (v46)
    {
      atomic_fetch_add_explicit(&v46->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v277.__r_.__value_.__r.__words[0] = v48;
    v277.__r_.__value_.__l.__size_ = v47;
    if (v47)
    {
      atomic_fetch_add_explicit(&v47->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    SipSession::handleSessionMovedResponse(&v251, a1, buf, &v277);
    SipUri::~SipUri(&v251);
LABEL_188:
    if (v47)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v47);
    }

    v89 = v46;
    if (v46)
    {
      goto LABEL_191;
    }

    goto LABEL_192;
  }

  if (v75 == 422)
  {
    if (v46)
    {
      atomic_fetch_add_explicit(&v46->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v47)
    {
      atomic_fetch_add_explicit(&v47->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v76 = *(v48 + 264);
    v77 = *(v48 + 272);
    if (v77)
    {
      atomic_fetch_add_explicit(&v77->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v78 = (*(*v76 + 120))(v76);
    v79 = *(v78 + 23);
    v80 = v79;
    if ((v79 & 0x80u) != 0)
    {
      v79 = *(v78 + 8);
    }

    if (v79 == 6)
    {
      if (v80 >= 0)
      {
        v81 = v78;
      }

      else
      {
        v81 = *v78;
      }

      v82 = *v81;
      v83 = *(v81 + 4);
      v85 = v82 == *"INVITE" && v83 == *"TE";
    }

    else
    {
      v85 = 0;
    }

    if (v77)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v77);
    }

    if (v85 && (SipSession::confirmed(a1) & 1) == 0)
    {
      v252 = 0u;
      v253 = 0u;
      v251 = 0u;
      *buf = v235;
      *&buf[8] = v46;
      if (v46)
      {
        atomic_fetch_add_explicit(&v46->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      BambiCallSessionIntervalTooSmallEvent::BambiCallSessionIntervalTooSmallEvent(&v251, buf);
    }

    v95 = a1[61].__shared_weak_owners_;
    *buf = v235;
    *&buf[8] = v46;
    if (v46)
    {
      atomic_fetch_add_explicit(&v46->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v277.__r_.__value_.__r.__words[0] = v48;
    v277.__r_.__value_.__l.__size_ = v47;
    if (v47)
    {
      atomic_fetch_add_explicit(&v47->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v96 = SipSessionTimer::handleIntervalTooSmallResponse(v95, buf, &v277);
    if (v277.__r_.__value_.__l.__size_)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v277.__r_.__value_.__l.__size_);
    }

    if (*&buf[8])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
    }

    if (v96)
    {
      v97 = v48 + 376;
      if (v85)
      {
        v98 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(v48 + 368, "InviteType");
        if (v97 == v98)
        {
          v99 = &ims::kEmptyString;
        }

        else
        {
          v99 = (v98 + 56);
        }

        SipSession::sendInvite(a1, v99, &v251);
      }

      else
      {
        v101 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(v48 + 368, "UpdateType");
        if (v97 == v101)
        {
          v102 = &ims::kEmptyString;
        }

        else
        {
          v102 = (v101 + 56);
        }

        SipSession::sendUpdate(a1, v102, &v251);
      }

      ImsResult::~ImsResult(&v251);
    }

    goto LABEL_188;
  }

  v86 = a1[10].__vftable;
  on_zero_shared_weak = v86[5].__on_zero_shared_weak;
  if (on_zero_shared_weak)
  {
    v88 = std::__shared_weak_count::lock(on_zero_shared_weak);
    v89 = v88;
    if (v88)
    {
      get_deleter = v86[5].__get_deleter;
      if (get_deleter)
      {
        v91 = *(get_deleter + 32);
        v230 = *(get_deleter + 31);
        if (v91)
        {
          atomic_fetch_add_explicit(&v91->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v228 = v91;
        v229 = v88;
        if (!v230)
        {
          v113 = a1[7].__shared_weak_owners_;
          if (os_log_type_enabled(v113, OS_LOG_TYPE_ERROR))
          {
            v226 = v47;
            (a1[6].__on_zero_shared)(&v251);
            if ((SBYTE7(v252) & 0x80u) == 0)
            {
              v114 = &v251;
            }

            else
            {
              v114 = v251;
            }

            *buf = 141558275;
            *&buf[4] = 1752392040;
            *&buf[12] = 2081;
            *&buf[14] = v114;
            _os_log_error_impl(&dword_1E4C3F000, v113, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno user agent", buf, 0x16u);
            if (SBYTE7(v252) < 0)
            {
              operator delete(v251);
            }

LABEL_435:
            v47 = v226;
          }

LABEL_436:
          if (v228)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v228);
          }

          v89 = v229;
          goto LABEL_191;
        }

        if (*(v235 + 128) == 301)
        {
          v92 = a1[34].__shared_weak_owners_;
          if (v92)
          {
            v93 = std::__shared_weak_count::lock(v92);
            if (v93)
            {
              v94 = a1[34].__shared_owners_;
LABEL_358:
              v276 = 0;
              v274 = 0u;
              v275 = 0u;
              v272 = 0u;
              v273 = 0u;
              v270 = 0u;
              v271 = 0u;
              v268 = 0u;
              v269 = 0u;
              v266 = 0u;
              v267 = 0u;
              v264 = 0u;
              v265 = 0u;
              v262 = 0u;
              v263 = 0u;
              v260 = 0u;
              v261 = 0u;
              v258 = 0u;
              v259 = 0u;
              v256 = 0u;
              v257 = 0u;
              v254 = 0u;
              v255 = 0u;
              v252 = 0u;
              v253 = 0u;
              v251 = 0u;
              *buf = v235;
              *&buf[8] = v46;
              if (v46)
              {
                atomic_fetch_add_explicit(&v46->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v277.__r_.__value_.__r.__words[0] = v48;
              v277.__r_.__value_.__l.__size_ = v47;
              if (v47)
              {
                atomic_fetch_add_explicit(&v47->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              SipSession::handleSessionMovedResponse(&v251, a1, buf, &v277);
              if (v47)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v47);
              }

              if (v46)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v46);
              }

              if (v94 && (*(*v94 + 80))(v94) && SipUri::isValidUri(&v251))
              {
                v162 = HIBYTE(v258);
                if (v258 < 0)
                {
                  v162 = v258;
                }

                if (v162)
                {
                  v163 = (a1->__vftable[1].__get_deleter)(a1);
                  (a1->__on_zero_shared)(a1, v163);
                  v164 = ImsOutStream::operator<<(v163, "Updating conference server URI to ");
                  (*(v251 + 40))(&v251, v164);
                  (*(*v164 + 64))(v164, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                  v164[17] = 0;
                  v165 = SipUserAgent::config(v230);
                  SipUri::operator=((v165 + 48), &v251);
                }
              }

              SipUri::~SipUri(&v251);
              if (!v93)
              {
                goto LABEL_436;
              }

              v144 = v93;
              goto LABEL_375;
            }
          }

          else
          {
            v93 = 0;
          }

          v94 = 0;
          goto LABEL_358;
        }

        SipSessionInterface::stack(&v251, a1);
        if (*(v251 + 2775) == 1 && (SipSession::confirmed(a1) & 1) == 0 && *(v235 + 128) == 486 && (v140 = (*(*v232 + 120))(v232), std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v140, "INVITE")))
        {
          v141 = SipMessage::body<SipCallWaitingInfoBody>(v232);
          if (v141)
          {
            v142 = v141[96];
          }

          else
          {
            v142 = 0;
          }

          if (*(&v251 + 1))
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](*(&v251 + 1));
          }

          if ((v142 & 1) == 0)
          {
            v199 = (a1->__vftable[1].__get_deleter)(a1);
            (a1->__on_zero_shared)(a1, v199);
            v200 = ImsOutStream::operator<<(v199, "Faking network based call waiting");
            (*(*v200 + 64))(v200, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            v200[17] = 0;
            v201 = a1[34].__shared_weak_owners_;
            if (!v201)
            {
              goto LABEL_436;
            }

            v202 = std::__shared_weak_count::lock(v201);
            if (!v202)
            {
              goto LABEL_436;
            }

            v203 = v202;
            v226 = v47;
            v204 = a1[34].__shared_owners_;
            if (v204)
            {
              BambiCall::fakeNetworkBasedCallWaiting(v204);
            }

            std::__shared_weak_count::__release_shared[abi:ne200100](v203);
            goto LABEL_435;
          }
        }

        else if (*(&v251 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v251 + 1));
        }

        if (*(v235 + 128) == 491)
        {
          if (!SipSession::confirmed(a1))
          {
            goto LABEL_436;
          }

          v143 = (*(*v232 + 120))(v232);
          if (!std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v143, "INVITE"))
          {
            goto LABEL_436;
          }

          if (v47)
          {
            atomic_fetch_add_explicit(&v47->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          SipSession::schedulePendingInvite(a1, v48);
          if (!v47)
          {
            goto LABEL_436;
          }

          v144 = v47;
          goto LABEL_375;
        }

        if (a1[10].__vftable[74].~__shared_weak_count > 1)
        {
          v146 = (*(*v232 + 120))(v232);
          if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v146, "UPDATE"))
          {
            v147 = SipUserAgent::config(v230);
            if (SipResponseCodeMap::containsResponseCodeForMethod(v147 + 824, "UPDATE", *(v235 + 128), 0))
            {
              v148 = (a1->__on_zero_shared_weak)(a1);
              (a1->__on_zero_shared)(a1, v148);
              v149 = ImsOutStream::operator<<(v148, "killing fork, but not terminating call");
              (*(*v149 + 64))(v149, std::endl[abi:ne200100]<char,std::char_traits<char>>);
              v149[17] = 0;
              v150 = *(v235 + 128);
              if (v150 == 481 || v150 == 408)
              {
                v151 = a1[10].__vftable;
                *buf = v11;
                *&buf[8] = v10;
                if (v10)
                {
                  atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                std::string::basic_string[abi:ne200100]<0>(&v251, "Received 481 response to UPDATE");
                SipDialog::terminateForkWithBye(v151, buf, &v251);
                if (SBYTE7(v252) < 0)
                {
                  operator delete(v251);
                }

                v144 = *&buf[8];
                if (!*&buf[8])
                {
                  goto LABEL_436;
                }
              }

              else
              {
                v205 = a1[10].__vftable;
                if (v10)
                {
                  atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                SipDialog::removeForkWithRemoteTag(v205, v11 + 11);
                if (!v10)
                {
                  goto LABEL_436;
                }

                v144 = v10;
              }

LABEL_375:
              std::__shared_weak_count::__release_shared[abi:ne200100](v144);
              goto LABEL_436;
            }
          }
        }

        v152 = (*(*v232 + 120))(v232);
        v153 = *(v152 + 23);
        v154 = v153;
        if ((v153 & 0x80u) != 0)
        {
          v153 = *(v152 + 8);
        }

        if (v153 == 6)
        {
          v155 = v154 >= 0 ? v152 : *v152;
          v156 = *v155;
          v157 = *(v155 + 4);
          if (v156 == *"UPDATE" && v157 == *"TE")
          {
            v251 = 0uLL;
            *&v252 = 0;
            v195 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(v48 + 368, "UpdateType");
            v196 = &ims::kEmptyString;
            if (v48 + 376 != v195)
            {
              v196 = (v195 + 56);
            }

            if (*(v196 + 23) < 0)
            {
              std::string::__init_copy_ctor_external(&v251, *v196, *(v196 + 1));
            }

            else
            {
              v251 = *v196;
              *&v252 = *(v196 + 2);
            }

            if (ims::caseInsensitiveStringCompare(&v251, &SipSession::kUpdateTypeEmergencyLocationUpdate))
            {
              v197 = (a1->__vftable[1].__get_deleter)(a1);
              (a1->__on_zero_shared)(a1, v197);
              v198 = ImsOutStream::operator<<(v197, "ignoring emergency location update error response");
              (*(*v198 + 64))(v198, std::endl[abi:ne200100]<char,std::char_traits<char>>);
              v198[17] = 0;
              if (SBYTE7(v252) < 0)
              {
                operator delete(v251);
              }

              goto LABEL_436;
            }

            if (SBYTE7(v252) < 0)
            {
              operator delete(v251);
            }
          }
        }

        v159 = v48 + 376;
        if (v48 + 376 != std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(v48 + 368, "SessionRefresh") && *(SipUserAgent::config(v230) + 1152) == 1)
        {
          v160 = (a1->__vftable[1].__get_deleter)(a1);
          (a1->__on_zero_shared)(a1, v160);
          v161 = ImsOutStream::operator<<(v160, "ignoring session refresh error response");
          (*(*v161 + 64))(v161, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          v161[17] = 0;
          goto LABEL_436;
        }

        v278 = 0u;
        v279 = 0u;
        v166 = SipUserAgent::config(v230);
        *&v278 = &unk_1F5EF3C38;
        std::map<std::string,std::set<unsigned int>>::map[abi:ne200100](&v278 + 1, v166 + 1096);
        if ((*(SipUserAgent::config(v230) + 915) & 1) == 0)
        {
          v251 = 0uLL;
          *&v252 = 0;
          ims::detail::to_string_impl<unsigned int,std::integral_constant<BOOL,false>>::operator()();
        }

        v167 = a1[34].__shared_weak_owners_;
        if (!v167)
        {
          v168 = 0;
LABEL_390:
          if (SipSession::confirmed(a1))
          {
            goto LABEL_396;
          }

          v174 = *(v48 + 264);
          v175 = *(v48 + 272);
          if (v175)
          {
            atomic_fetch_add_explicit(&v175->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v176 = (*(*v174 + 120))(v174);
          v177 = std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v176, "INVITE");
          if (v175)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v175);
          }

          if (!v177)
          {
LABEL_396:
            v178 = (a1->__vftable[1].__get_deleter)(a1);
            (a1->__on_zero_shared)(a1, v178);
            v179 = ImsOutStream::operator<<(v178, "ending session due to ");
            MEMORY[0x1E6923350](*(v179 + 8), *(v235 + 128));
            *(v179 + 17) = 0;
            v180 = ImsOutStream::operator<<(v179, " response to ");
            v181 = *(v48 + 264);
            v182 = *(v48 + 272);
            if (v182)
            {
              atomic_fetch_add_explicit(&v182->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v183 = (*(*v181 + 120))(v181);
            LoggableString::LoggableString(&v251, v183);
            (*(*v180 + 40))(v180, &v251);
            v184 = ImsOutStream::operator<<(v180, " request");
            (*(*v184 + 64))(v184, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            v184[17] = 0;
            if (SBYTE7(v252) < 0)
            {
              operator delete(v251);
            }

            if (v182)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v182);
            }

            *&v267 = 0;
            v265 = 0u;
            v266 = 0u;
            v263 = 0u;
            v264 = 0u;
            v261 = 0u;
            v262 = 0u;
            v259 = 0u;
            v260 = 0u;
            v257 = 0u;
            v258 = 0u;
            v255 = 0u;
            v256 = 0u;
            v253 = 0u;
            v254 = 0u;
            v251 = 0u;
            v252 = 0u;
            std::ostringstream::basic_ostringstream[abi:ne200100](&v251);
            v185 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v251, "Remote end rejected ", 20);
            v186 = *(v48 + 264);
            v187 = *(v48 + 272);
            if (v187)
            {
              atomic_fetch_add_explicit(&v187->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v188 = (*(*v186 + 120))(v186);
            v189 = *(v188 + 23);
            if (v189 >= 0)
            {
              v190 = v188;
            }

            else
            {
              v190 = *v188;
            }

            if (v189 >= 0)
            {
              v191 = *(v188 + 23);
            }

            else
            {
              v191 = *(v188 + 8);
            }

            v192 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v185, v190, v191);
            v193 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v192, " request ", 9);
            v194 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v193, " with response ", 15);
            MEMORY[0x1E6923350](v194, *(v235 + 128));
            if (v187)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v187);
            }

            v284 = 0;
            v282 = 0u;
            v283 = 0u;
            memset(v281, 0, sizeof(v281));
            memset(buf, 0, sizeof(buf));
            std::string::basic_string[abi:ne200100]<0>(&v277, "NetworkError");
            SipSessionInterface::terminationReason(a1);
          }

          if (!v168)
          {
            goto LABEL_415;
          }

          goto LABEL_414;
        }

        v168 = std::__shared_weak_count::lock(v167);
        if (!v168)
        {
          goto LABEL_390;
        }

        v231 = a1[34].__shared_owners_;
        if (!v231)
        {
          goto LABEL_390;
        }

        if (!SipSession::confirmed(a1))
        {
          goto LABEL_390;
        }

        v169 = SipMessage::body<SipSdpBody>(v232);
        if (!v169)
        {
          goto LABEL_390;
        }

        v227 = v47;
        v170 = *(v169 + 1);
        v171 = *(v169 + 2);
        if (v171)
        {
          atomic_fetch_add_explicit(&v171->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v170 && (v172 = (*(*v232 + 120))(v232), std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v172, "INVITE")))
        {
          IPTelephonyManager::getBambiClient(buf);
          v251 = 0uLL;
          v173 = BambiClient::callCountExcludingCall(*buf, &v251) == 1;
          if (*&buf[8])
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
          }
        }

        else
        {
          v173 = 0;
        }

        if (v171)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v171);
          if (!v173)
          {
            goto LABEL_464;
          }
        }

        else if (!v173)
        {
LABEL_464:
          v47 = v227;
          goto LABEL_390;
        }

        v206 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(v48 + 368, "InviteType");
        if (v159 == v206)
        {
          v207 = &ims::kEmptyString;
        }

        else
        {
          v207 = (v206 + 56);
        }

        if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v207, "HoldInvite"))
        {
          v208 = 1;
        }

        else
        {
          v209 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(v48 + 368, "InviteType");
          if (v159 == v209)
          {
            v210 = &ims::kEmptyString;
          }

          else
          {
            v210 = (v209 + 56);
          }

          v208 = std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v210, "ResumeInvite");
        }

        std::string::basic_string[abi:ne200100]<0>(&v251, "INVITE");
        v211 = SipResponseCodeMap::containsResponseCodeForMethod(&v278, &v251, *(v235 + 128), 0);
        if (SBYTE7(v252) < 0)
        {
          operator delete(v251);
        }

        if (v211)
        {
          v212 = a1->__vftable[1].__get_deleter;
          if (v208)
          {
            v213 = (v212)(a1);
            (a1->__on_zero_shared)(a1, v213);
            v214 = ImsOutStream::operator<<(v213, "received ");
            MEMORY[0x1E6923350](*(v214 + 8), *(v235 + 128));
            *(v214 + 17) = 0;
            v215 = ImsOutStream::operator<<(v214, " response to hold/resume reINVITE; falling back to original call setup");
            (*(*v215 + 64))(v215, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            v215[17] = 0;
            v216 = SipMessage::body<SipSdpBody>(v232);
            v217 = v216;
            if (v216)
            {
              v218 = *(v216 + 1);
              v219 = *(v217 + 2);
              if (v219)
              {
                atomic_fetch_add_explicit(&v219->__shared_owners_, 1uLL, memory_order_relaxed);
              }
            }

            else
            {
              v218 = 0;
              v219 = 0;
            }

            isHeld = SDPModel::isHeld(v218);
            if (v219)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v219);
            }

            if (isHeld)
            {
              BambiCall::localHoldFailed(v231);
            }

            else
            {
              BambiCall::localResumeFailed(v231);
            }
          }

          else
          {
            v220 = (v212)(a1);
            (a1->__on_zero_shared)(a1, v220);
            v221 = ImsOutStream::operator<<(v220, "received ");
            MEMORY[0x1E6923350](*(v221 + 8), *(v235 + 128));
            *(v221 + 17) = 0;
            v222 = ImsOutStream::operator<<(v221, " to reINVITE; fall back to original call setup");
            (*(*v222 + 64))(v222, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            v222[17] = 0;
            v223 = *(v231 + 24);
            v224 = *(v231 + 25);
            if (v224)
            {
              atomic_fetch_add_explicit(&v224->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            *buf = v231;
            *&buf[8] = v168;
            atomic_fetch_add_explicit(&v168->__shared_owners_, 1uLL, memory_order_relaxed);
            SDPSession::applyOnStreams<SipSession::handleInviteOrUpdateErrorResponse(std::shared_ptr<SipResponse const>,std::shared_ptr<SipClientTransaction>,std::shared_ptr<SipDialogFork>)::$_0>(&v251, v223, buf);
            ImsResult::~ImsResult(&v251);
            std::__shared_weak_count::__release_shared[abi:ne200100](v168);
            if (v224)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v224);
            }
          }

          v47 = v227;
LABEL_414:
          std::__shared_weak_count::__release_shared[abi:ne200100](v168);
LABEL_415:
          *&v278 = &unk_1F5EF3C38;
          std::__tree<std::__value_type<std::string,std::set<unsigned int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<unsigned int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<unsigned int>>>>::destroy(&v278 + 8, v279);
          goto LABEL_436;
        }

        goto LABEL_464;
      }
    }
  }

  else
  {
    v89 = 0;
  }

  v100 = a1[7].__shared_weak_owners_;
  if (os_log_type_enabled(v100, OS_LOG_TYPE_ERROR))
  {
    (a1[6].__on_zero_shared)(&v251);
    if ((SBYTE7(v252) & 0x80u) == 0)
    {
      v145 = &v251;
    }

    else
    {
      v145 = v251;
    }

    *buf = 141558275;
    *&buf[4] = 1752392040;
    *&buf[12] = 2081;
    *&buf[14] = v145;
    _os_log_error_impl(&dword_1E4C3F000, v100, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno sipstack", buf, 0x16u);
    if (SBYTE7(v252) < 0)
    {
      operator delete(v251);
    }

    if (v89)
    {
      goto LABEL_191;
    }
  }

  else if (v89)
  {
LABEL_191:
    std::__shared_weak_count::__release_shared[abi:ne200100](v89);
  }

LABEL_192:
  if (v233)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v233);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  if (v47)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v47);
  }

  if (v46)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v46);
  }

  v103 = a1[10].__vftable;
  v104 = std::__shared_weak_count::lock(v103[5].__on_zero_shared_weak);
  if (*(v103[5].__get_deleter + 2817) == 1)
  {
    v105 = *a2;
    if (*(*a2 + 159) < 0)
    {
      std::string::__init_copy_ctor_external(&v251, *(v105 + 136), *(v105 + 144));
      v105 = *a2;
    }

    else
    {
      v251 = *(v105 + 136);
      *&v252 = *(v105 + 152);
    }

    SipSession::logLazuliMessageSessionSetup(a1, &v251, *(v105 + 128));
    if (SBYTE7(v252) < 0)
    {
      operator delete(v251);
    }

    bzero(&v251, 0x250uLL);
    *buf = &unk_1F5EBDEF8;
    *&buf[8] = &_bambiDomain;
    *&buf[16] = 0;
    *&buf[24] = 0;
    memset(v281, 0, 56);
    BambiCallSessionTerminationBaseEvent::BambiCallSessionTerminationBaseEvent(&v251, 15, buf);
    *&v251 = &unk_1F5EC4038;
    ImsResult::~ImsResult(buf);
    LODWORD(v262) = *(*a2 + 128);
    SipUri::operator=((&v262 + 8), &a1[10].__vftable[6]);
    v106 = a2[1];
    v250[0] = *a2;
    v250[1] = v106;
    if (v106)
    {
      atomic_fetch_add_explicit((v106 + 8), 1uLL, memory_order_relaxed);
    }

    BambiCallSessionTerminationBaseEvent::setResponse(&v251, v250);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v104);
  v107 = v234;
  if (v234)
  {
LABEL_210:
    std::__shared_weak_count::__release_shared[abi:ne200100](v107);
  }

LABEL_211:
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  return 1;
}

void sub_1E4E1A648(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, std::__shared_weak_count *a13, std::__shared_weak_count *a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, std::__shared_weak_count *a18)
{
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  STACK[0x4B0] = a11;
  std::__tree<std::__value_type<std::string,std::set<unsigned int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<unsigned int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<unsigned int>>>>::destroy(&STACK[0x4B8], STACK[0x4C0]);
  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  _Unwind_Resume(a1);
}

void SipSession::handleBye(std::__shared_weak_count *a1, SipMessage **a2, uint64_t *a3)
{
  if (SipSession::established(a1))
  {
    v5 = a1[10].__vftable;
    (*(**a2 + 120))();
    std::string::basic_string[abi:ne200100]<0>(__p, &str_24_0);
    SipDialog::sendResponse(v5, v23);
    ImsResult::~ImsResult(v23);
    if (v22 < 0)
    {
      operator delete(__p[0]);
    }

    shared_weak_owners = a1[34].__shared_weak_owners_;
    if (shared_weak_owners && (v7 = std::__shared_weak_count::lock(shared_weak_owners)) != 0)
    {
      v8 = v7;
      shared_owners = a1[34].__shared_owners_;
      bzero(__p, 0x250uLL);
      v10 = 0;
      v19 = shared_owners;
      v20 = v8;
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    else
    {
      bzero(__p, 0x250uLL);
      v8 = 0;
      v19 = 0;
      v20 = 0;
      v10 = 1;
    }

    BambiCallSessionTerminatedEvent::BambiCallSessionTerminatedEvent(__p, &v19);
    if (v20)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v20);
    }

    v11 = a2[1];
    v17 = *a2;
    v18 = v11;
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    SipSessionInterface::stack(&v15, a1);
    BambiCallSessionTerminationBaseEvent::setReasonFromIncomingByeOrCancelRequest(__p, &v17, v15 + 319);
    if (v16)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    }

    if (v18)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v18);
    }

    v12 = *a2;
    v13 = a2[1];
    v14[0] = v12;
    v14[1] = v13;
    if (v13)
    {
      atomic_fetch_add_explicit(v13 + 1, 1uLL, memory_order_relaxed);
    }

    BambiCallSessionTerminationBaseEvent::setReferrerFromIncomingByeRequest(__p, v14);
    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }

    SipSession::terminateWithEvent(a1, __p, 13);
    BambiCallSessionTerminationBaseEvent::~BambiCallSessionTerminationBaseEvent(__p);
    if ((v10 & 1) == 0)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }
}

void sub_1E4E1AEB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  BambiCallSessionTerminationBaseEvent::~BambiCallSessionTerminationBaseEvent(va);
  if ((v18 & 1) == 0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  _Unwind_Resume(a1);
}

void sub_1E4E1AF08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  JUMPOUT(0x1E4E1AEF4);
}

void sub_1E4E1AF1C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1E4E1AF00);
}

uint64_t SipSession::established(SipSession *this)
{
  v2 = *(this + 96);
  v3 = *(this + 97);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v2)
  {
    v6 = 0;
    if (!v3)
    {
      return v6;
    }

    goto LABEL_9;
  }

  v4 = *(this + 96);
  v5 = *(this + 97);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = (*(*v4 + 136))(v4);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  if (v3)
  {
LABEL_9:
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return v6;
}

void sub_1E4E1AFE0(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void SipSession::handleOptions(void *a1, uint64_t *a2, uint64_t *a3)
{
  v7 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  v6[1] = 0;
  v3 = a2[1];
  v4 = *a2;
  v5 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  SipResponse::create(200, v6);
}

void sub_1E4E1B674(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26, ...)
{
  va_start(va, a26);
  if (a26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a26);
  }

  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }

  SipUri::~SipUri(va);
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  v31 = *(v29 - 152);
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  v32 = *(v29 - 120);
  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v32);
  }

  _Unwind_Resume(a1);
}

void sub_1E4E1B758()
{
  if (!*(v0 - 136))
  {
    JUMPOUT(0x1E4E1B750);
  }

  JUMPOUT(0x1E4E1B74CLL);
}

void SipSession::handleInfo(std::__shared_weak_count *a1, uint64_t *a2, uint64_t *a3)
{
  v16 = 0;
  v17 = 0;
  SipSessionInterface::stack(&v16, a1);
  if (v16 && *(v16 + 2817) == 1)
  {
    v5 = *(v16 + 31);
    v6 = *(v16 + 32);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v5)
    {
      v7 = *(v5 + 264);
      v8 = *(v5 + 272);
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v9 = a2[1];
      v14 = *a2;
      v15 = v9;
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v10 = a3[1];
      v12 = *a3;
      v13 = v10;
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*v7 + 40))(v7, &v14, &v12);
      if (v13)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v13);
      }

      if (v15)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v15);
      }

      if (v8)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      }
    }

    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
      LODWORD(v6) = 0;
    }
  }

  else
  {
    LODWORD(v6) = 1;
  }

  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  if (v6)
  {
    v16 = 0;
    v17 = 0;
    v11 = a2[1];
    if (v11)
    {
      atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    }

    SipResponse::create(200, &v16);
  }
}

void sub_1E4E1B9DC(_Unwind_Exception *a1)
{
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  v6 = *(v4 - 56);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  _Unwind_Resume(a1);
}

void sub_1E4E1BA70()
{
  if (!*(v0 - 104))
  {
    JUMPOUT(0x1E4E1BA68);
  }

  JUMPOUT(0x1E4E1BA64);
}

uint64_t SipSession::handleRequest(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v6 = (*(*a1 + 64))(a1);
  (*(*a1 + 16))(a1, v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "handling ", 9);
  *(v6 + 17) = 0;
  v7 = (*(**a2 + 120))();
  LoggableString::LoggableString(__p, v7);
  (*(*v6 + 40))(v6, __p);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), " request in state ", 18);
  *(v6 + 17) = 0;
  v8 = (*(*(a1 + 712) + 24))(a1 + 712);
  v9 = (*(*(a1 + 712) + 16))(a1 + 712, v8);
  LoggableString::LoggableString(&v41, v9);
  (*(*v6 + 40))(v6, &v41);
  (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v6 + 17) = 0;
  if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v41.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  v10 = SipMessage::header<SipFromHeader>(*a2);
  if (v10)
  {
    v11 = SipUriHeader::tag(v10);
  }

  else
  {
    v11 = &ims::kEmptyString;
  }

  std::string::operator=((a1 + 1640), v11);
  v12 = (*(**a2 + 120))();
  v13 = *(v12 + 23);
  v14 = v13;
  if ((v13 & 0x80u) != 0)
  {
    v13 = *(v12 + 8);
  }

  if (v13 != 6 || (v14 >= 0 ? (v15 = v12) : (v15 = *v12), (v16 = *v15, v17 = *(v15 + 4), v16 == *"INVITE") ? (v18 = v17 == *"TE") : (v18 = 0), !v18 || !*(a1 + 1464)))
  {
    v19 = *(a1 + 768);
    v20 = *(a1 + 776);
    if (v20)
    {
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v20);
      if (!v19)
      {
        goto LABEL_37;
      }

      v21 = *(a1 + 776);
      v19 = *(a1 + 768);
      if (v21)
      {
        v22 = 0;
        atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
        goto LABEL_25;
      }
    }

    else
    {
      if (!v19)
      {
        goto LABEL_37;
      }

      v21 = 0;
    }

    v22 = 1;
LABEL_25:
    v23 = a2[1];
    v34 = *a2;
    v35 = v23;
    if (v23)
    {
      atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v24 = a3[1];
    v32 = *a3;
    v33 = v24;
    if (v24)
    {
      atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v25 = (*(*v19 + 88))(v19, &v34, &v32);
    if (v33)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v33);
    }

    if (v35)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v35);
    }

    if ((v22 & 1) == 0)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v21);
    }

    if (v25)
    {
      return 1;
    }

LABEL_37:
    *&v41.__r_.__value_.__l.__data_ = 0uLL;
    v27 = a2[1];
    if (v27)
    {
      atomic_fetch_add_explicit((v27 + 8), 1uLL, memory_order_relaxed);
    }

    SipResponse::create(405, &v41);
  }

  v29 = *(a1 + 1472);
  v38 = *(a1 + 1464);
  v39 = v29;
  if (v29)
  {
    atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v30 = a3[1];
  v36 = *a3;
  v37 = v30;
  if (v30)
  {
    atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*a1 + 240))(__p, a1, &v38, &v36);
  v31 = (*(*__p[0].__r_.__value_.__l.__size_ + 24))(__p[0].__r_.__value_.__l.__size_, LODWORD(__p[0].__r_.__value_.__r.__words[2]));
  ImsResult::~ImsResult(__p);
  if (v37)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v37);
  }

  v26 = v31 ^ 1u;
  if (v39)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v39);
  }

  return v26;
}

void sub_1E4E1BFD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20, uint64_t a21, std::__shared_weak_count *a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  ImsResult::~ImsResult(&__p);
  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a20);
  }

  if (a22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a22);
  }

  _Unwind_Resume(a1);
}

uint64_t SipSession::handleResponse(SipSession *a1, uint64_t *a2, void *a3)
{
  v189[5] = *MEMORY[0x1E69E9840];
  v6 = SipMessage::header<SipToHeader>(*a2);
  if (v6)
  {
    v7 = SipUriHeader::tag(v6);
  }

  else
  {
    v7 = &ims::kEmptyString;
  }

  std::string::operator=((a1 + 1640), v7);
  v8 = a2[1];
  v177[0] = *a2;
  v177[1] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = a3[1];
  v176[0] = *a3;
  v176[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = SipSessionInterface::handleResponse(a1, v177, v176);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  if (!v10)
  {
    v11 = (*(*a1 + 64))(a1);
    (*(*a1 + 16))(a1, v11);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), "handling ", 9);
    *(v11 + 17) = 0;
    MEMORY[0x1E6923350](*(v11 + 8), *(*a2 + 128));
    *(v11 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), " response to ", 13);
    *(v11 + 17) = 0;
    v12 = *(*a3 + 264);
    v13 = *(*a3 + 272);
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v14 = (*(*v12 + 120))(v12);
    LoggableString::LoggableString(&__str, v14);
    (*(*v11 + 40))(v11, &__str);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), " request in state ", 18);
    *(v11 + 17) = 0;
    v15 = (*(*(a1 + 89) + 24))(a1 + 712);
    v16 = (*(*(a1 + 89) + 16))(a1 + 712, v15);
    LoggableString::LoggableString(&__p, v16);
    (*(*v11 + 40))(v11, &__p);
    (*(*v11 + 64))(v11, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v11 + 17) = 0;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }

    v17 = *(a1 + 30);
    v18 = SipMessage::header<SipToHeader>(*a2);
    if (v18)
    {
      v19 = SipUriHeader::tag(v18);
    }

    else
    {
      v19 = &ims::kEmptyString;
    }

    v20 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(v17 + 2944, v19);
    if (v17 + 2952 == v20)
    {
      v21 = 0;
      v22 = 0;
    }

    else
    {
      v22 = *(v20 + 56);
      v21 = *(v20 + 64);
      if (v21)
      {
        atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
      }
    }

    v23 = *(*a3 + 264);
    v24 = *(*a3 + 272);
    if (v24)
    {
      atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v25 = (*(*v23 + 120))(v23);
    v26 = *(v25 + 23);
    v27 = v26;
    if ((v26 & 0x80u) != 0)
    {
      v26 = *(v25 + 8);
    }

    if (v26 == 5)
    {
      if (v27 >= 0)
      {
        v28 = v25;
      }

      else
      {
        v28 = *v25;
      }

      v29 = *v28;
      v30 = *(v28 + 4);
      v32 = v29 == *"PRACK" && v30 == SipRequest::kMethodPrack[4];
      if (!v24)
      {
LABEL_46:
        if (v32)
        {
          if ((*(*a2 + 128) - 200) <= 0x63)
          {
            if (!v22)
            {
              goto LABEL_310;
            }

            v33 = SipMessage::body<SipSdpBody>(*a2);
            if (!v33)
            {
              goto LABEL_310;
            }

            v35 = *(v33 + 1);
            v34 = *(v33 + 2);
            if (v34)
            {
              atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
              std::__shared_weak_count::__release_shared[abi:ne200100](v34);
            }

            if (!v35)
            {
              goto LABEL_310;
            }

            data = v22[32].__r_.__value_.__l.__data_;
            size = v22[32].__r_.__value_.__l.__size_;
            if (size)
            {
              atomic_fetch_add_explicit(&size->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v38 = a2[1];
            v173 = *a2;
            v174 = v38;
            if (v38)
            {
              atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v39 = *a3;
            v40 = *(a1 + 31);
            v171 = *(a1 + 30);
            v172 = v40;
            if (v40)
            {
              atomic_fetch_add_explicit(&v40->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            SipOfferAnswer::updateWithIncomingResponse(data, &v173, (v39 + 312), &__str);
            v41 = (*(*__str.__r_.__value_.__l.__size_ + 24))(__str.__r_.__value_.__l.__size_, LODWORD(__str.__r_.__value_.__r.__words[2]));
            ImsResult::~ImsResult(&__str);
            if (v172)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v172);
            }

            if (v174)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v174);
            }

            if (size)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](size);
            }

            if (v41)
            {
              std::string::basic_string[abi:ne200100]<0>(&__str, "InvalidSdp");
              SipSession::hangUp(a1, &__str);
            }

            if (SipSession::confirmed(a1) && *(a1 + 913) != 1)
            {
              goto LABEL_310;
            }

            v71 = *(a1 + 192);
            v72 = a2[1];
            v169 = *a2;
            v170 = v72;
            if (v72)
            {
              atomic_fetch_add_explicit((v72 + 8), 1uLL, memory_order_relaxed);
            }

            SipSession::confirmed(a1);
            SipPreconditions::updateFromIncomingMessage(v71, v22 + 11, &v169);
            v73 = v170;
            if (!v170)
            {
              goto LABEL_310;
            }

            goto LABEL_309;
          }

          v52 = *(a1 + 104);
          if (v52)
          {
            v53 = std::__shared_weak_count::lock(v52);
            if (v53)
            {
              v54 = v53;
              v55 = *(a1 + 103);
              if (v55)
              {
                v56 = *(v55 + 448);
                if (v56)
                {
                  v57 = *(v55 + 440);
                  atomic_fetch_add_explicit(&v56->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                  v58 = std::__shared_weak_count::lock(v56);
                  std::__shared_weak_count::__release_weak(v56);
                  if (v58)
                  {
                    if (v57)
                    {
                      v59 = a2[1];
                      v167 = *a2;
                      v168 = v59;
                      if (v59)
                      {
                        atomic_fetch_add_explicit(&v59->__shared_owners_, 1uLL, memory_order_relaxed);
                      }

                      v165 = v55;
                      v166 = v54;
                      atomic_fetch_add_explicit(&v54->__shared_owners_, 1uLL, memory_order_relaxed);
                      (*(*v57 + 24))(v57, &v167, &v165);
                      if (v166)
                      {
                        std::__shared_weak_count::__release_shared[abi:ne200100](v166);
                      }

                      if (v168)
                      {
                        std::__shared_weak_count::__release_shared[abi:ne200100](v168);
                      }
                    }

                    std::__shared_weak_count::__release_shared[abi:ne200100](v58);
                  }
                }
              }

              std::__shared_weak_count::__release_shared[abi:ne200100](v54);
            }
          }

          std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&__str, a1 + 19);
          v60 = __str.__r_.__value_.__l.__size_;
          if (__str.__r_.__value_.__l.__size_)
          {
            atomic_fetch_add_explicit((__str.__r_.__value_.__l.__size_ + 16), 1uLL, memory_order_relaxed);
            std::__shared_weak_count::__release_shared[abi:ne200100](v60);
            atomic_fetch_add_explicit(&v60->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          }

          v61 = *(a1 + 30);
          v62 = *(v61 + 232);
          if (v62 && (v63 = std::__shared_weak_count::lock(v62)) != 0)
          {
            v64 = v63;
            v65 = *(v61 + 224);
            if (v65)
            {
              v66 = *(v65 + 248);
              v67 = *(v65 + 256);
              if (v67)
              {
                atomic_fetch_add_explicit(&v67->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              if (v66)
              {
                v68 = *(SipUserAgent::config(v66) + 860);
              }

              else
              {
                v68 = 0;
              }

              if (v67)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v67);
              }
            }

            else
            {
              v68 = 0;
            }

            std::__shared_weak_count::__release_shared[abi:ne200100](v64);
          }

          else
          {
            v68 = 0;
          }

          v96 = *(*a3 + 264);
          v97 = *(*a3 + 272);
          if (v97)
          {
            atomic_fetch_add_explicit(&v97->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v98 = SipMessage::body<SipSdpBody>(v96);
          if (v98)
          {
            v100 = *(v98 + 1);
            v99 = *(v98 + 2);
            if (v99)
            {
              atomic_fetch_add_explicit(&v99->__shared_owners_, 1uLL, memory_order_relaxed);
              if (v100)
              {
                v101 = 1;
              }

              else
              {
                v101 = v68 == 0;
              }

              v102 = v101;
              std::__shared_weak_count::__release_shared[abi:ne200100](v99);
              goto LABEL_191;
            }
          }

          else
          {
            v100 = 0;
          }

          if (v100)
          {
            v103 = 1;
          }

          else
          {
            v103 = v68 == 0;
          }

          v102 = v103;
LABEL_191:
          if (v97)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v97);
          }

          v104 = *(*a2 + 128);
          if ((v102 & 1) == 0)
          {
            *(a1 + 444) = v104;
            if (v60)
            {
              atomic_fetch_add_explicit(&v60->__shared_weak_owners_, 1uLL, memory_order_relaxed);
            }

            v189[4] = 0;
            operator new();
          }

          if (v104 == 481)
          {
            SipSessionInterface::stack(&__str, a1);
            v105 = SipStack::prefs(__str.__r_.__value_.__l.__data_);
            v106 = ImsPrefs::RemoveForkOnTransactionDoesNotExist(v105);
            if (__str.__r_.__value_.__l.__size_)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](__str.__r_.__value_.__l.__size_);
            }

            if (v106)
            {
              v107 = *(a1 + 30);
              if (v21)
              {
                atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              if (v22)
              {
                SipDialog::removeForkWithRemoteTag(v107, v22 + 11);
              }

              if (v21)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v21);
              }

              goto LABEL_209;
            }

            v104 = *(*a2 + 128);
          }

          SipSession::handlePrackErrorResponse(a1, v104);
LABEL_209:
          if (v60)
          {
            std::__shared_weak_count::__release_weak(v60);
            std::__shared_weak_count::__release_weak(v60);
          }

          goto LABEL_310;
        }

        v42 = *(*a3 + 264);
        v43 = *(*a3 + 272);
        if (v43)
        {
          atomic_fetch_add_explicit(&v43->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v44 = (*(*v42 + 120))(v42);
        v45 = *(v44 + 23);
        v46 = v45;
        if ((v45 & 0x80u) != 0)
        {
          v45 = *(v44 + 8);
        }

        if (v45 == 6)
        {
          if (v46 >= 0)
          {
            v47 = v44;
          }

          else
          {
            v47 = *v44;
          }

          v48 = *v47;
          v49 = *(v47 + 4);
          v51 = v48 == *"INVITE" && v49 == *"TE";
          if (!v43)
          {
LABEL_108:
            if (!v51)
            {
              goto LABEL_140;
            }

            memset(&__str, 0, sizeof(__str));
            if (!SipMessage::headerValueAsString(*a2, "MLS-Opaque-Token"))
            {
              goto LABEL_130;
            }

            v69 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
            if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v69 = __str.__r_.__value_.__l.__size_;
            }

            if (!v69)
            {
LABEL_130:
              if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__str.__r_.__value_.__l.__data_);
              }

              v79 = SipMessage::header<SipContactHeader>(*a2);
              if (v79)
              {
                v80 = v79[9] == v79[10] ? 0 : v79[9];
                if (*(a1 + 1448) == 1 && v80 && (SipUri::matches((v80 + 8), (*(a1 + 30) + 240)) & 1) == 0)
                {
                  v81 = (*(*a1 + 64))(a1);
                  (*(*a1 + 16))(a1, v81);
                  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v81 + 8), "Updating URI for dialog from remote", 35);
                  *(v81 + 17) = 0;
                  (*(*v81 + 64))(v81, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                  *(v81 + 17) = 0;
                  SipDialog::updateRemoteUri(*(a1 + 30), (v80 + 8));
                }
              }

LABEL_140:
              v82 = *(a1 + 96);
              v83 = *(a1 + 97);
              if (v83)
              {
                atomic_fetch_add_explicit(&v83->__shared_owners_, 1uLL, memory_order_relaxed);
                std::__shared_weak_count::__release_shared[abi:ne200100](v83);
                if (!v82)
                {
                  goto LABEL_157;
                }

                v84 = *(a1 + 97);
                v82 = *(a1 + 96);
                if (v84)
                {
                  v85 = 0;
                  atomic_fetch_add_explicit(&v84->__shared_owners_, 1uLL, memory_order_relaxed);
LABEL_147:
                  v86 = a2[1];
                  v163 = *a2;
                  v164 = v86;
                  if (v86)
                  {
                    atomic_fetch_add_explicit(&v86->__shared_owners_, 1uLL, memory_order_relaxed);
                  }

                  v87 = a3[1];
                  v161 = *a3;
                  v162 = v87;
                  if (v87)
                  {
                    atomic_fetch_add_explicit(&v87->__shared_owners_, 1uLL, memory_order_relaxed);
                  }

                  (*(*v82 + 96))(v82, &v163, &v161);
                  if (v162)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v162);
                  }

                  if (v164)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v164);
                  }

                  if ((v85 & 1) == 0)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v84);
                  }

LABEL_157:
                  {
LABEL_310:
                    if (v21)
                    {
                      std::__shared_weak_count::__release_shared[abi:ne200100](v21);
                    }

                    return 1;
                  }

                  v89 = v88;
                  v90 = a3[1];
                  if (v90)
                  {
                    atomic_fetch_add_explicit(&v90->__shared_owners_, 1uLL, memory_order_relaxed);
                  }

                  v92 = *a2;
                  v91 = a2[1];
                  if (v91)
                  {
                    atomic_fetch_add_explicit(&v91->__shared_owners_, 1uLL, memory_order_relaxed);
                  }

                  if (v90)
                  {
                    atomic_fetch_add_explicit(&v90->__shared_owners_, 1uLL, memory_order_relaxed);
                  }

                  if (!SipResponse::requiresPrack(v92))
                  {
                    goto LABEL_303;
                  }

                  v93 = *(a1 + 30);
                  v94 = SipMessage::header<SipToHeader>(v92);
                  if (v94)
                  {
                    v95 = SipUriHeader::tag(v94);
                  }

                  else
                  {
                    v95 = &ims::kEmptyString;
                  }

                  v108 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(v93 + 2944, v95);
                  if (v93 + 2952 == v108)
                  {
                    v110 = 0;
                  }

                  else
                  {
                    v109 = *(v108 + 56);
                    v110 = *(v108 + 64);
                    if (v110)
                    {
                      atomic_fetch_add_explicit(&v110->__shared_owners_, 1uLL, memory_order_relaxed);
                    }

                    if (v109)
                    {
                      v111 = SipMessage::header<SipRSeqHeader>(v92);
                      if (v111)
                      {
                        v160 = v111[15];
                      }

                      else
                      {
                        v160 = 0;
                      }

                      v115 = v89 + 312;
                      v116 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(v109 + 784, v115);
                      if (v109 + 792 != v116)
                      {
                        v117 = *(v116 + 56);
                        if (v117)
                        {
                          if (v160 <= v117)
                          {
                            v119 = (*(*a1 + 64))(a1);
                            (*(*a1 + 16))(a1, v119);
                            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v119 + 8), "ignoring duplicate response rseq=", 33);
                            *(v119 + 17) = 0;
                            MEMORY[0x1E6923350](*(v119 + 8), v160);
                            *(v119 + 17) = 0;
                            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v119 + 8), ", cseq=", 7);
                            *(v119 + 17) = 0;
                            v123 = SipMessage::header<SipCSeqHeader>(v92);
                            if (v123)
                            {
                              v124 = v123[15];
                            }

                            else
                            {
                              v124 = 0;
                            }

                            MEMORY[0x1E6923350](*(v119 + 8), v124);
                            *(v119 + 17) = 0;
                            (*(*v119 + 64))(v119, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                            goto LABEL_270;
                          }

                          v118 = v117 + 1;
                          if (v160 > v118)
                          {
                            v119 = (*(*a1 + 64))(a1);
                            (*(*a1 + 16))(a1, v119);
                            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v119 + 8), "received out-of-order response (rseq=", 37);
                            *(v119 + 17) = 0;
                            MEMORY[0x1E6923350](*(v119 + 8), v160);
                            *(v119 + 17) = 0;
                            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v119 + 8), ", expecting ", 12);
                            *(v119 + 17) = 0;
                            MEMORY[0x1E6923350](*(v119 + 8), v118);
                            *(v119 + 17) = 0;
                            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v119 + 8), ")", 1);
                            *(v119 + 17) = 0;
                            (*(*v119 + 64))(v119, std::endl[abi:ne200100]<char,std::char_traits<char>>);
LABEL_270:
                            *(v119 + 17) = 0;
LABEL_301:
                            if (v110)
                            {
                              std::__shared_weak_count::__release_shared[abi:ne200100](v110);
                            }

LABEL_303:
                            if (v90)
                            {
                              std::__shared_weak_count::__release_shared[abi:ne200100](v90);
                            }

                            if (v91)
                            {
                              std::__shared_weak_count::__release_shared[abi:ne200100](v91);
                            }

                            if (!v90)
                            {
                              goto LABEL_310;
                            }

                            v73 = v90;
LABEL_309:
                            std::__shared_weak_count::__release_shared[abi:ne200100](v73);
                            goto LABEL_310;
                          }
                        }
                      }

                      v159 = v115;
                      *&__p.__r_.__value_.__l.__data_ = 0uLL;
                      SipDialog::createRequestInDialog(*(a1 + 30), &__p);
                      v120 = __p.__r_.__value_.__r.__words[0];
                      v121 = SipMessageEncodingMap::headerPrototypeWithName(*(__p.__r_.__value_.__r.__words[0] + 120), "RAck");
                      if (v121)
                      {
                        if (v121)
                        {
                          v122 = (*(*v121 + 32))(v121);
                          if (v122)
                          {
                            v121 = SipMessage::addHeader(v120, v122, 0);
                            if (v121)
                            {
                            }
                          }

                          else
                          {
                            v121 = 0;
                          }
                        }
                      }

                      v187[0] = v92;
                      v187[1] = v91;
                      if (v91)
                      {
                        atomic_fetch_add_explicit(&v91->__shared_owners_, 1uLL, memory_order_relaxed);
                      }

                      v125 = SipRAckHeader::fromResponse(v121, v187);
                      if (v91)
                      {
                        std::__shared_weak_count::__release_shared[abi:ne200100](v91);
                      }

                      if ((v125 & 1) == 0)
                      {
                        v134 = (*(*a1 + 32))(a1);
                        (*(*a1 + 16))(a1, v134);
                        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v134 + 8), "unable to initialize PRACK from response (missing RSeq or CSeq)", 63);
                        *(v134 + 17) = 0;
                        (*(*v134 + 64))(v134, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                        *(v134 + 17) = 0;
LABEL_299:
                        if (__p.__r_.__value_.__l.__size_)
                        {
                          std::__shared_weak_count::__release_shared[abi:ne200100](__p.__r_.__value_.__l.__size_);
                        }

                        goto LABEL_301;
                      }

                      v158 = v110;
                      v126 = *(v109 + 768);
                      v127 = *(v109 + 776);
                      if (v127)
                      {
                        atomic_fetch_add_explicit(&v127->__shared_owners_, 1uLL, memory_order_relaxed);
                      }

                      v128 = SipOfferAnswer::localAnswerPending(*(*(v126 + 216) + 16), *(*(v126 + 216) + 24));
                      if (v127)
                      {
                        std::__shared_weak_count::__release_shared[abi:ne200100](v127);
                      }

                      if (v128)
                      {
                        v110 = v158;
                        v129 = (*(*a1 + 64))(a1);
                        (*(*a1 + 16))(a1, v129);
                        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v129 + 8), "we need to send an SDP answer", 29);
                        *(v129 + 17) = 0;
                        (*(*v129 + 64))(v129, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                        *(v129 + 17) = 0;
                        (*(*a1 + 128))(&__str, a1);
                        v130 = __str.__r_.__value_.__r.__words[0];
                        if (__str.__r_.__value_.__l.__size_)
                        {
                          std::__shared_weak_count::__release_shared[abi:ne200100](__str.__r_.__value_.__l.__size_);
                        }

                        if (v130)
                        {
                          (*(*a1 + 128))(&v185, a1);
                          operator new();
                        }

                        v141 = (*(*a1 + 56))(a1);
                        (*(*a1 + 16))(a1, v141);
                        v140 = ImsOutStream::operator<<(v141, "no local SDP available");
                        (*(*v140 + 64))(v140, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                      }

                      else
                      {
                        v110 = v158;
                        if (SipPreconditions::needToSendUpdateInFork(*(a1 + 192), (v109 + 264)))
                        {
                          if (*(a1 + 914) == 1)
                          {
                            v135 = *(v109 + 768);
                            v136 = *(v109 + 776);
                            if (v136)
                            {
                              atomic_fetch_add_explicit(&v136->__shared_owners_, 1uLL, memory_order_relaxed);
                            }

                            v137 = SipOfferAnswer::localSdpPending(*(*(v135 + 216) + 16), *(*(v135 + 216) + 24));
                            if (v136)
                            {
                              std::__shared_weak_count::__release_shared[abi:ne200100](v136);
                            }

                            v138 = *(*a1 + 64);
                            if (!v137)
                            {
                              v110 = v158;
                              v155 = v138(a1);
                              (*(*a1 + 16))(a1, v155);
                              v156 = ImsOutStream::operator<<(v155, "need to update preconditions, so let's send it in our PRACK");
                              (*(*v156 + 64))(v156, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                              v156[17] = 0;
                              SipDialogFork::createSdpOffer(v109, "PRACK", SipSession::kUpdateTypePreconditions, &__str);
                              v131 = __str.__r_.__value_.__l.__size_;
                              if (__str.__r_.__value_.__r.__words[0])
                              {
                                v157 = *&__str.__r_.__value_.__l.__data_;
                                v132 = (*(*a1 + 64))(a1);
                                (*(*a1 + 16))(a1, v132);
                                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v132 + 8), "adding SDP to prack", 19);
                                *(v132 + 17) = 0;
                                (*(*v132 + 64))(v132, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                                *(v132 + 17) = 0;
                                v133 = __p.__r_.__value_.__r.__words[0];
                                v186 = v157;
                                if (v131)
                                {
                                  atomic_fetch_add_explicit(&v131->__shared_owners_, 1uLL, memory_order_relaxed);
                                }

                                SipMessage::setSdp(v133, &v186);
                              }

                              goto LABEL_274;
                            }

                            v110 = v158;
                            v139 = v138(a1);
                            (*(*a1 + 16))(a1, v139);
                            v140 = ImsOutStream::operator<<(v139, "need to update preconditions, but we already have an outstanding offer");
                            (*(*v140 + 64))(v140, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                          }

                          else
                          {
                            v142 = (*(*a1 + 64))(a1);
                            (*(*a1 + 16))(a1, v142);
                            v140 = ImsOutStream::operator<<(v142, "sending preconditions in PRACK is not enabled");
                            (*(*v140 + 64))(v140, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                          }
                        }

                        else
                        {
                          v140 = (*(*a1 + 64))(a1);
                          (*(*a1 + 16))(a1, v140);
                          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v140 + 8), "We neither have a local SDP answer pending nor do we need to update preconditions.", 82);
                          *(v140 + 17) = 0;
                          (*(*v140 + 64))(v140, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                        }
                      }

                      v131 = 0;
                      *(v140 + 17) = 0;
LABEL_274:
                      v143 = (*(*a1 + 64))(a1);
                      (*(*a1 + 16))(a1, v143);
                      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v143 + 8), "PRACK doesn't need SDP", 22);
                      *(v143 + 17) = 0;
                      (*(*v143 + 64))(v143, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                      *(v143 + 17) = 0;
                      v183 = 0;
                      v184 = 0;
                      v144 = __p.__r_.__value_.__l.__size_;
                      v182 = *&__p.__r_.__value_.__l.__data_;
                      if (__p.__r_.__value_.__l.__size_)
                      {
                        atomic_fetch_add_explicit((__p.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
                      }

                      v145 = SipMessage::header<SipToHeader>(v92);
                      if (v145)
                      {
                        v146 = SipUriHeader::tag(v145);
                      }

                      else
                      {
                        v146 = &ims::kEmptyString;
                      }

                      SipSession::sendRequest(&v183, a1, &v182, v146);
                      if (v144)
                      {
                        std::__shared_weak_count::__release_shared[abi:ne200100](v144);
                      }

                      v147 = v183;
                      if (v183)
                      {
                        v148 = SipMessage::body<SipSdpBody>(__p.__r_.__value_.__l.__data_);
                        if (v148)
                        {
                          v150 = *(v148 + 1);
                          v149 = *(v148 + 2);
                          if (v149)
                          {
                            atomic_fetch_add_explicit(&v149->__shared_owners_, 1uLL, memory_order_relaxed);
                            std::__shared_weak_count::__release_shared[abi:ne200100](v149);
                          }

                          if (v150)
                          {
                            v151 = *(v109 + 768);
                            v152 = *(v109 + 776);
                            if (v152)
                            {
                              atomic_fetch_add_explicit(&v152->__shared_owners_, 1uLL, memory_order_relaxed);
                            }

                            v153 = __p.__r_.__value_.__l.__size_;
                            v178 = *&__p.__r_.__value_.__l.__data_;
                            if (__p.__r_.__value_.__l.__size_)
                            {
                              atomic_fetch_add_explicit((__p.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
                            }

                            SipOfferAnswer::updateWithOutgoingRequest(v151, &v178, v147 + 312, &__str);
                            ImsResult::~ImsResult(&__str);
                            if (v153)
                            {
                              std::__shared_weak_count::__release_shared[abi:ne200100](v153);
                            }

                            if (v152)
                            {
                              std::__shared_weak_count::__release_shared[abi:ne200100](v152);
                            }
                          }
                        }

                        v189[0] = v159;
                        *(std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((v109 + 784), v159, &std::piecewise_construct, v189, &v188) + 14) = v160;
                      }

                      if (v184)
                      {
                        std::__shared_weak_count::__release_shared[abi:ne200100](v184);
                      }

                      if (v131)
                      {
                        std::__shared_weak_count::__release_shared[abi:ne200100](v131);
                      }

                      goto LABEL_299;
                    }
                  }

                  v112 = (*(*a1 + 56))(a1);
                  (*(*a1 + 16))(a1, v112);
                  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v112 + 8), "sendPrack: no fork with remote tag ", 35);
                  *(v112 + 17) = 0;
                  v113 = SipMessage::header<SipToHeader>(v92);
                  if (v113)
                  {
                    v114 = SipUriHeader::tag(v113);
                  }

                  else
                  {
                    v114 = &ims::kEmptyString;
                  }

                  ObfuscatedString::ObfuscatedString(&__str, v114);
                  (*(*v112 + 56))(v112, &__str);
                  (*(*v112 + 64))(v112, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                  *(v112 + 17) = 0;
                  if (v181 < 0)
                  {
                    operator delete(v180);
                  }

                  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(__str.__r_.__value_.__l.__data_);
                  }

                  goto LABEL_301;
                }
              }

              else
              {
                if (!v82)
                {
                  goto LABEL_157;
                }

                v84 = 0;
              }

              v85 = 1;
              goto LABEL_147;
            }

            v70 = *(a1 + 30);
            if (*(v70 + 2647) < 0)
            {
              std::string::__init_copy_ctor_external(&__p, *(v70 + 2624), *(v70 + 2632));
            }

            else
            {
              __p = *(v70 + 2624);
            }

            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              v76 = __p.__r_.__value_.__l.__size_;
              operator delete(__p.__r_.__value_.__l.__data_);
              if (v76)
              {
                goto LABEL_126;
              }
            }

            else if (*(&__p.__r_.__value_.__s + 23))
            {
LABEL_126:
              v74 = (*(*a1 + 64))(a1);
              (*(*a1 + 16))(a1, v74);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v74 + 8), "Overriding MLS opaque token with server response value", 54);
              *(v74 + 17) = 0;
              v75 = (v74 + 17);
              (*(*v74 + 64))(v74, std::endl[abi:ne200100]<char,std::char_traits<char>>);
LABEL_129:
              *v75 = 0;
              std::string::operator=((*(a1 + 30) + 2624), &__str);
              goto LABEL_130;
            }

            v77 = (*(*a1 + 64))(a1);
            (*(*a1 + 16))(a1, v77);
            v78 = ImsOutStream::operator<<(v77, "Updating MLS opaque token value from server response");
            (*(*v78 + 64))(v78, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            v75 = (v78 + 17);
            goto LABEL_129;
          }
        }

        else
        {
          v51 = 0;
          if (!v43)
          {
            goto LABEL_108;
          }
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v43);
        goto LABEL_108;
      }
    }

    else
    {
      v32 = 0;
      if (!v24)
      {
        goto LABEL_46;
      }
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
    goto LABEL_46;
  }

  return 1;
}